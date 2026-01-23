; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!206922 () Bool)

(assert start!206922)

(declare-fun b!2119945 () Bool)

(declare-fun b_free!61517 () Bool)

(declare-fun b_next!62221 () Bool)

(assert (=> b!2119945 (= b_free!61517 (not b_next!62221))))

(declare-fun tp!648365 () Bool)

(declare-fun b_and!171097 () Bool)

(assert (=> b!2119945 (= tp!648365 b_and!171097)))

(declare-fun b!2119935 () Bool)

(declare-fun b_free!61519 () Bool)

(declare-fun b_next!62223 () Bool)

(assert (=> b!2119935 (= b_free!61519 (not b_next!62223))))

(declare-fun tp!648367 () Bool)

(declare-fun b_and!171099 () Bool)

(assert (=> b!2119935 (= tp!648367 b_and!171099)))

(declare-fun b!2119918 () Bool)

(declare-fun b_free!61521 () Bool)

(declare-fun b_next!62225 () Bool)

(assert (=> b!2119918 (= b_free!61521 (not b_next!62225))))

(declare-fun tp!648375 () Bool)

(declare-fun b_and!171101 () Bool)

(assert (=> b!2119918 (= tp!648375 b_and!171101)))

(declare-fun b!2119942 () Bool)

(declare-fun b_free!61523 () Bool)

(declare-fun b_next!62227 () Bool)

(assert (=> b!2119942 (= b_free!61523 (not b_next!62227))))

(declare-fun tp!648360 () Bool)

(declare-fun b_and!171103 () Bool)

(assert (=> b!2119942 (= tp!648360 b_and!171103)))

(declare-fun b!2119924 () Bool)

(declare-fun b_free!61525 () Bool)

(declare-fun b_next!62229 () Bool)

(assert (=> b!2119924 (= b_free!61525 (not b_next!62229))))

(declare-fun tp!648371 () Bool)

(declare-fun b_and!171105 () Bool)

(assert (=> b!2119924 (= tp!648371 b_and!171105)))

(declare-fun b!2119923 () Bool)

(declare-fun b_free!61527 () Bool)

(declare-fun b_next!62231 () Bool)

(assert (=> b!2119923 (= b_free!61527 (not b_next!62231))))

(declare-fun tp!648357 () Bool)

(declare-fun b_and!171107 () Bool)

(assert (=> b!2119923 (= tp!648357 b_and!171107)))

(declare-fun b!2119934 () Bool)

(assert (=> b!2119934 true))

(declare-fun tp!648368 () Bool)

(declare-fun e!1349837 () Bool)

(declare-fun tp!648356 () Bool)

(declare-datatypes ((C!11456 0))(
  ( (C!11457 (val!6714 Int)) )
))
(declare-datatypes ((Regex!5655 0))(
  ( (ElementMatch!5655 (c!339657 C!11456)) (Concat!9957 (regOne!11822 Regex!5655) (regTwo!11822 Regex!5655)) (EmptyExpr!5655) (Star!5655 (reg!5984 Regex!5655)) (EmptyLang!5655) (Union!5655 (regOne!11823 Regex!5655) (regTwo!11823 Regex!5655)) )
))
(declare-datatypes ((List!23733 0))(
  ( (Nil!23649) (Cons!23649 (h!29050 Regex!5655) (t!196249 List!23733)) )
))
(declare-datatypes ((Context!2450 0))(
  ( (Context!2451 (exprs!1725 List!23733)) )
))
(declare-datatypes ((tuple3!2856 0))(
  ( (tuple3!2857 (_1!13508 Regex!5655) (_2!13508 Context!2450) (_3!1898 C!11456)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!23220 0))(
  ( (tuple2!23221 (_1!13509 tuple3!2856) (_2!13509 (InoxSet Context!2450))) )
))
(declare-datatypes ((List!23734 0))(
  ( (Nil!23650) (Cons!23650 (h!29051 tuple2!23220) (t!196250 List!23734)) )
))
(declare-datatypes ((array!8341 0))(
  ( (array!8342 (arr!3702 (Array (_ BitVec 32) (_ BitVec 64))) (size!18479 (_ BitVec 32))) )
))
(declare-datatypes ((array!8343 0))(
  ( (array!8344 (arr!3703 (Array (_ BitVec 32) List!23734)) (size!18480 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4852 0))(
  ( (LongMapFixedSize!4853 (defaultEntry!2791 Int) (mask!6569 (_ BitVec 32)) (extraKeys!2674 (_ BitVec 32)) (zeroValue!2684 List!23734) (minValue!2684 List!23734) (_size!4903 (_ BitVec 32)) (_keys!2723 array!8341) (_values!2706 array!8343) (_vacant!2487 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9529 0))(
  ( (Cell!9530 (v!28183 LongMapFixedSize!4852)) )
))
(declare-datatypes ((MutLongMap!2426 0))(
  ( (LongMap!2426 (underlying!5047 Cell!9529)) (MutLongMapExt!2425 (__x!15454 Int)) )
))
(declare-datatypes ((Cell!9531 0))(
  ( (Cell!9532 (v!28184 MutLongMap!2426)) )
))
(declare-datatypes ((Hashable!2340 0))(
  ( (HashableExt!2339 (__x!15455 Int)) )
))
(declare-datatypes ((MutableMap!2340 0))(
  ( (MutableMapExt!2339 (__x!15456 Int)) (HashMap!2340 (underlying!5048 Cell!9531) (hashF!4263 Hashable!2340) (_size!4904 (_ BitVec 32)) (defaultValue!2502 Int)) )
))
(declare-datatypes ((CacheDown!1606 0))(
  ( (CacheDown!1607 (cache!2721 MutableMap!2340)) )
))
(declare-fun cacheDown!1110 () CacheDown!1606)

(declare-fun e!1349839 () Bool)

(declare-fun array_inv!2656 (array!8341) Bool)

(declare-fun array_inv!2657 (array!8343) Bool)

(assert (=> b!2119918 (= e!1349839 (and tp!648375 tp!648368 tp!648356 (array_inv!2656 (_keys!2723 (v!28183 (underlying!5047 (v!28184 (underlying!5048 (cache!2721 cacheDown!1110))))))) (array_inv!2657 (_values!2706 (v!28183 (underlying!5047 (v!28184 (underlying!5048 (cache!2721 cacheDown!1110))))))) e!1349837))))

(declare-fun b!2119919 () Bool)

(declare-fun e!1349846 () Bool)

(declare-datatypes ((List!23735 0))(
  ( (Nil!23651) (Cons!23651 (h!29052 C!11456) (t!196251 List!23735)) )
))
(declare-datatypes ((IArray!15593 0))(
  ( (IArray!15594 (innerList!7854 List!23735)) )
))
(declare-datatypes ((Conc!7794 0))(
  ( (Node!7794 (left!18302 Conc!7794) (right!18632 Conc!7794) (csize!15818 Int) (cheight!8005 Int)) (Leaf!11389 (xs!10736 IArray!15593) (csize!15819 Int)) (Empty!7794) )
))
(declare-datatypes ((BalanceConc!15350 0))(
  ( (BalanceConc!15351 (c!339658 Conc!7794)) )
))
(declare-fun input!5507 () BalanceConc!15350)

(declare-fun tp!648361 () Bool)

(declare-fun inv!31242 (Conc!7794) Bool)

(assert (=> b!2119919 (= e!1349846 (and (inv!31242 (c!339658 input!5507)) tp!648361))))

(declare-fun mapNonEmpty!11714 () Bool)

(declare-fun mapRes!11716 () Bool)

(declare-fun tp!648358 () Bool)

(declare-fun tp!648372 () Bool)

(assert (=> mapNonEmpty!11714 (= mapRes!11716 (and tp!648358 tp!648372))))

(declare-fun mapRest!11715 () (Array (_ BitVec 32) List!23734))

(declare-fun mapKey!11716 () (_ BitVec 32))

(declare-fun mapValue!11714 () List!23734)

(assert (=> mapNonEmpty!11714 (= (arr!3703 (_values!2706 (v!28183 (underlying!5047 (v!28184 (underlying!5048 (cache!2721 cacheDown!1110))))))) (store mapRest!11715 mapKey!11716 mapValue!11714))))

(declare-fun b!2119920 () Bool)

(declare-fun res!918796 () Bool)

(declare-fun e!1349856 () Bool)

(assert (=> b!2119920 (=> (not res!918796) (not e!1349856))))

(declare-datatypes ((tuple2!23222 0))(
  ( (tuple2!23223 (_1!13510 Context!2450) (_2!13510 C!11456)) )
))
(declare-datatypes ((tuple2!23224 0))(
  ( (tuple2!23225 (_1!13511 tuple2!23222) (_2!13511 (InoxSet Context!2450))) )
))
(declare-datatypes ((List!23736 0))(
  ( (Nil!23652) (Cons!23652 (h!29053 tuple2!23224) (t!196252 List!23736)) )
))
(declare-datatypes ((array!8345 0))(
  ( (array!8346 (arr!3704 (Array (_ BitVec 32) List!23736)) (size!18481 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4854 0))(
  ( (LongMapFixedSize!4855 (defaultEntry!2792 Int) (mask!6570 (_ BitVec 32)) (extraKeys!2675 (_ BitVec 32)) (zeroValue!2685 List!23736) (minValue!2685 List!23736) (_size!4905 (_ BitVec 32)) (_keys!2724 array!8341) (_values!2707 array!8345) (_vacant!2488 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9533 0))(
  ( (Cell!9534 (v!28185 LongMapFixedSize!4854)) )
))
(declare-datatypes ((Hashable!2341 0))(
  ( (HashableExt!2340 (__x!15457 Int)) )
))
(declare-datatypes ((MutLongMap!2427 0))(
  ( (LongMap!2427 (underlying!5049 Cell!9533)) (MutLongMapExt!2426 (__x!15458 Int)) )
))
(declare-datatypes ((Cell!9535 0))(
  ( (Cell!9536 (v!28186 MutLongMap!2427)) )
))
(declare-datatypes ((MutableMap!2341 0))(
  ( (MutableMapExt!2340 (__x!15459 Int)) (HashMap!2341 (underlying!5050 Cell!9535) (hashF!4264 Hashable!2341) (_size!4906 (_ BitVec 32)) (defaultValue!2503 Int)) )
))
(declare-datatypes ((CacheUp!1618 0))(
  ( (CacheUp!1619 (cache!2722 MutableMap!2341)) )
))
(declare-fun cacheUp!991 () CacheUp!1618)

(declare-fun valid!1913 (CacheUp!1618) Bool)

(assert (=> b!2119920 (= res!918796 (valid!1913 cacheUp!991))))

(declare-fun b!2119921 () Bool)

(declare-fun e!1349849 () Bool)

(declare-fun e!1349855 () Bool)

(assert (=> b!2119921 (= e!1349849 e!1349855)))

(declare-fun e!1349835 () Bool)

(declare-datatypes ((Hashable!2342 0))(
  ( (HashableExt!2341 (__x!15460 Int)) )
))
(declare-datatypes ((tuple3!2858 0))(
  ( (tuple3!2859 (_1!13512 (InoxSet Context!2450)) (_2!13512 Int) (_3!1899 Int)) )
))
(declare-datatypes ((tuple2!23226 0))(
  ( (tuple2!23227 (_1!13513 tuple3!2858) (_2!13513 Int)) )
))
(declare-datatypes ((List!23737 0))(
  ( (Nil!23653) (Cons!23653 (h!29054 tuple2!23226) (t!196253 List!23737)) )
))
(declare-datatypes ((array!8347 0))(
  ( (array!8348 (arr!3705 (Array (_ BitVec 32) List!23737)) (size!18482 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4856 0))(
  ( (LongMapFixedSize!4857 (defaultEntry!2793 Int) (mask!6571 (_ BitVec 32)) (extraKeys!2676 (_ BitVec 32)) (zeroValue!2686 List!23737) (minValue!2686 List!23737) (_size!4907 (_ BitVec 32)) (_keys!2725 array!8341) (_values!2708 array!8347) (_vacant!2489 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9537 0))(
  ( (Cell!9538 (v!28187 LongMapFixedSize!4856)) )
))
(declare-datatypes ((MutLongMap!2428 0))(
  ( (LongMap!2428 (underlying!5051 Cell!9537)) (MutLongMapExt!2427 (__x!15461 Int)) )
))
(declare-datatypes ((Cell!9539 0))(
  ( (Cell!9540 (v!28188 MutLongMap!2428)) )
))
(declare-datatypes ((MutableMap!2342 0))(
  ( (MutableMapExt!2341 (__x!15462 Int)) (HashMap!2342 (underlying!5052 Cell!9539) (hashF!4265 Hashable!2342) (_size!4908 (_ BitVec 32)) (defaultValue!2504 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!580 0))(
  ( (CacheFurthestNullable!581 (cache!2723 MutableMap!2342) (totalInput!2889 BalanceConc!15350)) )
))
(declare-fun cacheFurthestNullable!130 () CacheFurthestNullable!580)

(declare-fun e!1349854 () Bool)

(declare-fun e!1349836 () Bool)

(declare-fun b!2119922 () Bool)

(declare-fun inv!31243 (BalanceConc!15350) Bool)

(assert (=> b!2119922 (= e!1349835 (and e!1349836 (inv!31243 (totalInput!2889 cacheFurthestNullable!130)) e!1349854))))

(declare-fun e!1349838 () Bool)

(assert (=> b!2119924 (= e!1349836 (and e!1349838 tp!648371))))

(declare-fun b!2119925 () Bool)

(declare-fun e!1349834 () Bool)

(declare-fun e!1349848 () Bool)

(assert (=> b!2119925 (= e!1349834 e!1349848)))

(declare-fun mapNonEmpty!11715 () Bool)

(declare-fun mapRes!11714 () Bool)

(declare-fun tp!648379 () Bool)

(declare-fun tp!648359 () Bool)

(assert (=> mapNonEmpty!11715 (= mapRes!11714 (and tp!648379 tp!648359))))

(declare-fun mapValue!11715 () List!23736)

(declare-fun mapRest!11714 () (Array (_ BitVec 32) List!23736))

(declare-fun mapKey!11714 () (_ BitVec 32))

(assert (=> mapNonEmpty!11715 (= (arr!3704 (_values!2707 (v!28185 (underlying!5049 (v!28186 (underlying!5050 (cache!2722 cacheUp!991))))))) (store mapRest!11714 mapKey!11714 mapValue!11715))))

(declare-fun b!2119926 () Bool)

(declare-fun res!918797 () Bool)

(assert (=> b!2119926 (=> (not res!918797) (not e!1349856))))

(declare-fun totalInput!886 () BalanceConc!15350)

(assert (=> b!2119926 (= res!918797 (= (totalInput!2889 cacheFurthestNullable!130) totalInput!886))))

(declare-fun mapIsEmpty!11714 () Bool)

(declare-fun mapRes!11715 () Bool)

(assert (=> mapIsEmpty!11714 mapRes!11715))

(declare-fun mapIsEmpty!11715 () Bool)

(assert (=> mapIsEmpty!11715 mapRes!11714))

(declare-fun mapNonEmpty!11716 () Bool)

(declare-fun tp!648362 () Bool)

(declare-fun tp!648373 () Bool)

(assert (=> mapNonEmpty!11716 (= mapRes!11715 (and tp!648362 tp!648373))))

(declare-fun mapKey!11715 () (_ BitVec 32))

(declare-fun mapRest!11716 () (Array (_ BitVec 32) List!23737))

(declare-fun mapValue!11716 () List!23737)

(assert (=> mapNonEmpty!11716 (= (arr!3705 (_values!2708 (v!28187 (underlying!5051 (v!28188 (underlying!5052 (cache!2723 cacheFurthestNullable!130))))))) (store mapRest!11716 mapKey!11715 mapValue!11716))))

(declare-fun b!2119927 () Bool)

(declare-fun e!1349860 () Bool)

(declare-fun tp!648363 () Bool)

(assert (=> b!2119927 (= e!1349860 (and tp!648363 mapRes!11715))))

(declare-fun condMapEmpty!11715 () Bool)

(declare-fun mapDefault!11716 () List!23737)

(assert (=> b!2119927 (= condMapEmpty!11715 (= (arr!3705 (_values!2708 (v!28187 (underlying!5051 (v!28188 (underlying!5052 (cache!2723 cacheFurthestNullable!130))))))) ((as const (Array (_ BitVec 32) List!23737)) mapDefault!11716)))))

(declare-fun b!2119928 () Bool)

(declare-fun e!1349833 () Bool)

(declare-fun lt!794605 () MutLongMap!2426)

(get-info :version)

(assert (=> b!2119928 (= e!1349833 (and e!1349849 ((_ is LongMap!2426) lt!794605)))))

(assert (=> b!2119928 (= lt!794605 (v!28184 (underlying!5048 (cache!2721 cacheDown!1110))))))

(declare-fun b!2119929 () Bool)

(assert (=> b!2119929 (= e!1349855 e!1349839)))

(declare-fun b!2119930 () Bool)

(declare-fun res!918800 () Bool)

(assert (=> b!2119930 (=> (not res!918800) (not e!1349856))))

(declare-fun valid!1914 (CacheDown!1606) Bool)

(assert (=> b!2119930 (= res!918800 (valid!1914 cacheDown!1110))))

(declare-fun setIsEmpty!14632 () Bool)

(declare-fun setRes!14632 () Bool)

(assert (=> setIsEmpty!14632 setRes!14632))

(declare-fun b!2119931 () Bool)

(declare-fun e!1349858 () Bool)

(declare-fun e!1349832 () Bool)

(declare-fun lt!794607 () MutLongMap!2427)

(assert (=> b!2119931 (= e!1349858 (and e!1349832 ((_ is LongMap!2427) lt!794607)))))

(assert (=> b!2119931 (= lt!794607 (v!28186 (underlying!5050 (cache!2722 cacheUp!991))))))

(declare-fun b!2119932 () Bool)

(declare-fun e!1349841 () Bool)

(declare-fun e!1349852 () Bool)

(assert (=> b!2119932 (= e!1349841 e!1349852)))

(declare-fun b!2119933 () Bool)

(declare-fun e!1349861 () Bool)

(assert (=> b!2119933 (= e!1349832 e!1349861)))

(declare-fun e!1349850 () Bool)

(declare-fun lambda!78456 () Int)

(declare-datatypes ((StackFrame!24 0))(
  ( (StackFrame!25 (z!5710 (InoxSet Context!2450)) (from!2610 Int) (lastNullablePos!297 Int) (res!918802 Int) (totalInput!2890 BalanceConc!15350)) )
))
(declare-datatypes ((List!23738 0))(
  ( (Nil!23654) (Cons!23654 (h!29055 StackFrame!24) (t!196254 List!23738)) )
))
(declare-fun forall!4855 (List!23738 Int) Bool)

(assert (=> b!2119934 (= e!1349850 (not (forall!4855 Nil!23654 lambda!78456)))))

(declare-fun lt!794601 () Int)

(declare-fun lt!794604 () Int)

(declare-fun lt!794606 () Int)

(declare-fun lt!794603 () Int)

(declare-fun z!3883 () (InoxSet Context!2450))

(declare-fun furthestNullablePosition!6 ((InoxSet Context!2450) Int BalanceConc!15350 Int Int) Int)

(assert (=> b!2119934 (= lt!794604 (furthestNullablePosition!6 z!3883 lt!794603 totalInput!886 lt!794601 lt!794606))))

(declare-fun tp!648376 () Bool)

(declare-fun e!1349844 () Bool)

(declare-fun e!1349857 () Bool)

(declare-fun tp!648370 () Bool)

(declare-fun array_inv!2658 (array!8345) Bool)

(assert (=> b!2119935 (= e!1349857 (and tp!648367 tp!648376 tp!648370 (array_inv!2656 (_keys!2724 (v!28185 (underlying!5049 (v!28186 (underlying!5050 (cache!2722 cacheUp!991))))))) (array_inv!2658 (_values!2707 (v!28185 (underlying!5049 (v!28186 (underlying!5050 (cache!2722 cacheUp!991))))))) e!1349844))))

(declare-fun res!918799 () Bool)

(assert (=> start!206922 (=> (not res!918799) (not e!1349856))))

(declare-fun isSuffix!613 (List!23735 List!23735) Bool)

(declare-fun list!9519 (BalanceConc!15350) List!23735)

(assert (=> start!206922 (= res!918799 (isSuffix!613 (list!9519 input!5507) (list!9519 totalInput!886)))))

(assert (=> start!206922 e!1349856))

(declare-fun inv!31244 (CacheFurthestNullable!580) Bool)

(assert (=> start!206922 (and (inv!31244 cacheFurthestNullable!130) e!1349835)))

(declare-fun condSetEmpty!14632 () Bool)

(assert (=> start!206922 (= condSetEmpty!14632 (= z!3883 ((as const (Array Context!2450 Bool)) false)))))

(assert (=> start!206922 setRes!14632))

(assert (=> start!206922 (and (inv!31243 input!5507) e!1349846)))

(declare-fun inv!31245 (CacheDown!1606) Bool)

(assert (=> start!206922 (and (inv!31245 cacheDown!1110) e!1349841)))

(declare-fun inv!31246 (CacheUp!1618) Bool)

(assert (=> start!206922 (and (inv!31246 cacheUp!991) e!1349834)))

(declare-fun e!1349842 () Bool)

(assert (=> start!206922 (and (inv!31243 totalInput!886) e!1349842)))

(declare-fun tp!648377 () Bool)

(declare-fun e!1349845 () Bool)

(declare-fun tp!648380 () Bool)

(declare-fun array_inv!2659 (array!8347) Bool)

(assert (=> b!2119923 (= e!1349845 (and tp!648357 tp!648380 tp!648377 (array_inv!2656 (_keys!2725 (v!28187 (underlying!5051 (v!28188 (underlying!5052 (cache!2723 cacheFurthestNullable!130))))))) (array_inv!2659 (_values!2708 (v!28187 (underlying!5051 (v!28188 (underlying!5052 (cache!2723 cacheFurthestNullable!130))))))) e!1349860))))

(declare-fun b!2119936 () Bool)

(assert (=> b!2119936 (= e!1349861 e!1349857)))

(declare-fun b!2119937 () Bool)

(declare-fun res!918801 () Bool)

(assert (=> b!2119937 (=> (not res!918801) (not e!1349856))))

(declare-fun valid!1915 (CacheFurthestNullable!580) Bool)

(assert (=> b!2119937 (= res!918801 (valid!1915 cacheFurthestNullable!130))))

(declare-fun b!2119938 () Bool)

(declare-fun e!1349840 () Bool)

(declare-fun e!1349859 () Bool)

(assert (=> b!2119938 (= e!1349840 e!1349859)))

(declare-fun b!2119939 () Bool)

(declare-fun tp!648366 () Bool)

(assert (=> b!2119939 (= e!1349854 (and (inv!31242 (c!339658 (totalInput!2889 cacheFurthestNullable!130))) tp!648366))))

(declare-fun b!2119940 () Bool)

(declare-fun e!1349853 () Bool)

(declare-fun tp!648374 () Bool)

(assert (=> b!2119940 (= e!1349853 tp!648374)))

(declare-fun setNonEmpty!14632 () Bool)

(declare-fun setElem!14632 () Context!2450)

(declare-fun tp!648355 () Bool)

(declare-fun inv!31247 (Context!2450) Bool)

(assert (=> setNonEmpty!14632 (= setRes!14632 (and tp!648355 (inv!31247 setElem!14632) e!1349853))))

(declare-fun setRest!14632 () (InoxSet Context!2450))

(assert (=> setNonEmpty!14632 (= z!3883 ((_ map or) (store ((as const (Array Context!2450 Bool)) false) setElem!14632 true) setRest!14632))))

(declare-fun mapIsEmpty!11716 () Bool)

(assert (=> mapIsEmpty!11716 mapRes!11716))

(declare-fun b!2119941 () Bool)

(declare-fun lt!794600 () MutLongMap!2428)

(assert (=> b!2119941 (= e!1349838 (and e!1349840 ((_ is LongMap!2428) lt!794600)))))

(assert (=> b!2119941 (= lt!794600 (v!28188 (underlying!5052 (cache!2723 cacheFurthestNullable!130))))))

(assert (=> b!2119942 (= e!1349852 (and e!1349833 tp!648360))))

(declare-fun b!2119943 () Bool)

(declare-fun tp!648364 () Bool)

(assert (=> b!2119943 (= e!1349842 (and (inv!31242 (c!339658 totalInput!886)) tp!648364))))

(declare-fun b!2119944 () Bool)

(assert (=> b!2119944 (= e!1349856 e!1349850)))

(declare-fun res!918798 () Bool)

(assert (=> b!2119944 (=> (not res!918798) (not e!1349850))))

(declare-fun lt!794602 () Bool)

(assert (=> b!2119944 (= res!918798 (and (>= lt!794603 0) (<= lt!794603 lt!794601) (>= lt!794606 (- 1)) (< lt!794606 lt!794603) (or (not lt!794602) (= lt!794606 (- lt!794603 1)))))))

(assert (=> b!2119944 (= lt!794606 (ite lt!794602 (- lt!794603 1) (- 1)))))

(declare-fun nullableZipper!59 ((InoxSet Context!2450)) Bool)

(assert (=> b!2119944 (= lt!794602 (nullableZipper!59 z!3883))))

(declare-fun size!18483 (BalanceConc!15350) Int)

(assert (=> b!2119944 (= lt!794603 (- lt!794601 (size!18483 input!5507)))))

(assert (=> b!2119944 (= lt!794601 (size!18483 totalInput!886))))

(assert (=> b!2119945 (= e!1349848 (and e!1349858 tp!648365))))

(declare-fun b!2119946 () Bool)

(declare-fun tp!648369 () Bool)

(assert (=> b!2119946 (= e!1349844 (and tp!648369 mapRes!11714))))

(declare-fun condMapEmpty!11714 () Bool)

(declare-fun mapDefault!11714 () List!23736)

(assert (=> b!2119946 (= condMapEmpty!11714 (= (arr!3704 (_values!2707 (v!28185 (underlying!5049 (v!28186 (underlying!5050 (cache!2722 cacheUp!991))))))) ((as const (Array (_ BitVec 32) List!23736)) mapDefault!11714)))))

(declare-fun b!2119947 () Bool)

(assert (=> b!2119947 (= e!1349859 e!1349845)))

(declare-fun b!2119948 () Bool)

(declare-fun tp!648378 () Bool)

(assert (=> b!2119948 (= e!1349837 (and tp!648378 mapRes!11716))))

(declare-fun condMapEmpty!11716 () Bool)

(declare-fun mapDefault!11715 () List!23734)

(assert (=> b!2119948 (= condMapEmpty!11716 (= (arr!3703 (_values!2706 (v!28183 (underlying!5047 (v!28184 (underlying!5048 (cache!2721 cacheDown!1110))))))) ((as const (Array (_ BitVec 32) List!23734)) mapDefault!11715)))))

(assert (= (and start!206922 res!918799) b!2119920))

(assert (= (and b!2119920 res!918796) b!2119930))

(assert (= (and b!2119930 res!918800) b!2119937))

(assert (= (and b!2119937 res!918801) b!2119926))

(assert (= (and b!2119926 res!918797) b!2119944))

(assert (= (and b!2119944 res!918798) b!2119934))

(assert (= (and b!2119927 condMapEmpty!11715) mapIsEmpty!11714))

(assert (= (and b!2119927 (not condMapEmpty!11715)) mapNonEmpty!11716))

(assert (= b!2119923 b!2119927))

(assert (= b!2119947 b!2119923))

(assert (= b!2119938 b!2119947))

(assert (= (and b!2119941 ((_ is LongMap!2428) (v!28188 (underlying!5052 (cache!2723 cacheFurthestNullable!130))))) b!2119938))

(assert (= b!2119924 b!2119941))

(assert (= (and b!2119922 ((_ is HashMap!2342) (cache!2723 cacheFurthestNullable!130))) b!2119924))

(assert (= b!2119922 b!2119939))

(assert (= start!206922 b!2119922))

(assert (= (and start!206922 condSetEmpty!14632) setIsEmpty!14632))

(assert (= (and start!206922 (not condSetEmpty!14632)) setNonEmpty!14632))

(assert (= setNonEmpty!14632 b!2119940))

(assert (= start!206922 b!2119919))

(assert (= (and b!2119948 condMapEmpty!11716) mapIsEmpty!11716))

(assert (= (and b!2119948 (not condMapEmpty!11716)) mapNonEmpty!11714))

(assert (= b!2119918 b!2119948))

(assert (= b!2119929 b!2119918))

(assert (= b!2119921 b!2119929))

(assert (= (and b!2119928 ((_ is LongMap!2426) (v!28184 (underlying!5048 (cache!2721 cacheDown!1110))))) b!2119921))

(assert (= b!2119942 b!2119928))

(assert (= (and b!2119932 ((_ is HashMap!2340) (cache!2721 cacheDown!1110))) b!2119942))

(assert (= start!206922 b!2119932))

(assert (= (and b!2119946 condMapEmpty!11714) mapIsEmpty!11715))

(assert (= (and b!2119946 (not condMapEmpty!11714)) mapNonEmpty!11715))

(assert (= b!2119935 b!2119946))

(assert (= b!2119936 b!2119935))

(assert (= b!2119933 b!2119936))

(assert (= (and b!2119931 ((_ is LongMap!2427) (v!28186 (underlying!5050 (cache!2722 cacheUp!991))))) b!2119933))

(assert (= b!2119945 b!2119931))

(assert (= (and b!2119925 ((_ is HashMap!2341) (cache!2722 cacheUp!991))) b!2119945))

(assert (= start!206922 b!2119925))

(assert (= start!206922 b!2119943))

(declare-fun m!2574351 () Bool)

(assert (=> b!2119935 m!2574351))

(declare-fun m!2574353 () Bool)

(assert (=> b!2119935 m!2574353))

(declare-fun m!2574355 () Bool)

(assert (=> b!2119920 m!2574355))

(declare-fun m!2574357 () Bool)

(assert (=> b!2119922 m!2574357))

(declare-fun m!2574359 () Bool)

(assert (=> b!2119923 m!2574359))

(declare-fun m!2574361 () Bool)

(assert (=> b!2119923 m!2574361))

(declare-fun m!2574363 () Bool)

(assert (=> mapNonEmpty!11716 m!2574363))

(declare-fun m!2574365 () Bool)

(assert (=> b!2119930 m!2574365))

(declare-fun m!2574367 () Bool)

(assert (=> b!2119937 m!2574367))

(declare-fun m!2574369 () Bool)

(assert (=> b!2119919 m!2574369))

(declare-fun m!2574371 () Bool)

(assert (=> start!206922 m!2574371))

(declare-fun m!2574373 () Bool)

(assert (=> start!206922 m!2574373))

(declare-fun m!2574375 () Bool)

(assert (=> start!206922 m!2574375))

(declare-fun m!2574377 () Bool)

(assert (=> start!206922 m!2574377))

(declare-fun m!2574379 () Bool)

(assert (=> start!206922 m!2574379))

(declare-fun m!2574381 () Bool)

(assert (=> start!206922 m!2574381))

(assert (=> start!206922 m!2574377))

(assert (=> start!206922 m!2574371))

(declare-fun m!2574383 () Bool)

(assert (=> start!206922 m!2574383))

(declare-fun m!2574385 () Bool)

(assert (=> start!206922 m!2574385))

(declare-fun m!2574387 () Bool)

(assert (=> b!2119943 m!2574387))

(declare-fun m!2574389 () Bool)

(assert (=> b!2119944 m!2574389))

(declare-fun m!2574391 () Bool)

(assert (=> b!2119944 m!2574391))

(declare-fun m!2574393 () Bool)

(assert (=> b!2119944 m!2574393))

(declare-fun m!2574395 () Bool)

(assert (=> mapNonEmpty!11715 m!2574395))

(declare-fun m!2574397 () Bool)

(assert (=> mapNonEmpty!11714 m!2574397))

(declare-fun m!2574399 () Bool)

(assert (=> setNonEmpty!14632 m!2574399))

(declare-fun m!2574401 () Bool)

(assert (=> b!2119918 m!2574401))

(declare-fun m!2574403 () Bool)

(assert (=> b!2119918 m!2574403))

(declare-fun m!2574405 () Bool)

(assert (=> b!2119939 m!2574405))

(declare-fun m!2574407 () Bool)

(assert (=> b!2119934 m!2574407))

(declare-fun m!2574409 () Bool)

(assert (=> b!2119934 m!2574409))

(check-sat b_and!171107 (not b!2119922) (not b_next!62231) (not b_next!62223) (not b!2119919) b_and!171103 (not start!206922) (not b_next!62221) (not b!2119937) (not mapNonEmpty!11714) (not b!2119944) (not mapNonEmpty!11716) (not b!2119935) b_and!171101 (not setNonEmpty!14632) (not b!2119940) (not b!2119948) (not b!2119918) (not b!2119923) b_and!171097 (not mapNonEmpty!11715) (not b_next!62229) (not b!2119943) (not b!2119934) (not b!2119920) b_and!171105 (not b_next!62225) b_and!171099 (not b!2119946) (not b!2119939) (not b!2119927) (not b!2119930) (not b_next!62227))
(check-sat b_and!171101 b_and!171107 (not b_next!62231) (not b_next!62223) b_and!171097 (not b_next!62229) b_and!171103 (not b_next!62221) (not b_next!62227) b_and!171105 (not b_next!62225) b_and!171099)
(get-model)

(declare-fun d!643269 () Bool)

(declare-fun lambda!78459 () Int)

(declare-fun exists!689 ((InoxSet Context!2450) Int) Bool)

(assert (=> d!643269 (= (nullableZipper!59 z!3883) (exists!689 z!3883 lambda!78459))))

(declare-fun bs!442646 () Bool)

(assert (= bs!442646 d!643269))

(declare-fun m!2574411 () Bool)

(assert (=> bs!442646 m!2574411))

(assert (=> b!2119944 d!643269))

(declare-fun d!643271 () Bool)

(declare-fun lt!794610 () Int)

(declare-fun size!18484 (List!23735) Int)

(assert (=> d!643271 (= lt!794610 (size!18484 (list!9519 input!5507)))))

(declare-fun size!18485 (Conc!7794) Int)

(assert (=> d!643271 (= lt!794610 (size!18485 (c!339658 input!5507)))))

(assert (=> d!643271 (= (size!18483 input!5507) lt!794610)))

(declare-fun bs!442647 () Bool)

(assert (= bs!442647 d!643271))

(assert (=> bs!442647 m!2574377))

(assert (=> bs!442647 m!2574377))

(declare-fun m!2574413 () Bool)

(assert (=> bs!442647 m!2574413))

(declare-fun m!2574415 () Bool)

(assert (=> bs!442647 m!2574415))

(assert (=> b!2119944 d!643271))

(declare-fun d!643273 () Bool)

(declare-fun lt!794611 () Int)

(assert (=> d!643273 (= lt!794611 (size!18484 (list!9519 totalInput!886)))))

(assert (=> d!643273 (= lt!794611 (size!18485 (c!339658 totalInput!886)))))

(assert (=> d!643273 (= (size!18483 totalInput!886) lt!794611)))

(declare-fun bs!442648 () Bool)

(assert (= bs!442648 d!643273))

(assert (=> bs!442648 m!2574371))

(assert (=> bs!442648 m!2574371))

(declare-fun m!2574417 () Bool)

(assert (=> bs!442648 m!2574417))

(declare-fun m!2574419 () Bool)

(assert (=> bs!442648 m!2574419))

(assert (=> b!2119944 d!643273))

(declare-fun d!643275 () Bool)

(declare-fun validCacheMapUp!241 (MutableMap!2341) Bool)

(assert (=> d!643275 (= (valid!1913 cacheUp!991) (validCacheMapUp!241 (cache!2722 cacheUp!991)))))

(declare-fun bs!442649 () Bool)

(assert (= bs!442649 d!643275))

(declare-fun m!2574421 () Bool)

(assert (=> bs!442649 m!2574421))

(assert (=> b!2119920 d!643275))

(declare-fun d!643277 () Bool)

(declare-fun c!339663 () Bool)

(assert (=> d!643277 (= c!339663 ((_ is Node!7794) (c!339658 totalInput!886)))))

(declare-fun e!1349866 () Bool)

(assert (=> d!643277 (= (inv!31242 (c!339658 totalInput!886)) e!1349866)))

(declare-fun b!2119957 () Bool)

(declare-fun inv!31248 (Conc!7794) Bool)

(assert (=> b!2119957 (= e!1349866 (inv!31248 (c!339658 totalInput!886)))))

(declare-fun b!2119958 () Bool)

(declare-fun e!1349867 () Bool)

(assert (=> b!2119958 (= e!1349866 e!1349867)))

(declare-fun res!918805 () Bool)

(assert (=> b!2119958 (= res!918805 (not ((_ is Leaf!11389) (c!339658 totalInput!886))))))

(assert (=> b!2119958 (=> res!918805 e!1349867)))

(declare-fun b!2119959 () Bool)

(declare-fun inv!31249 (Conc!7794) Bool)

(assert (=> b!2119959 (= e!1349867 (inv!31249 (c!339658 totalInput!886)))))

(assert (= (and d!643277 c!339663) b!2119957))

(assert (= (and d!643277 (not c!339663)) b!2119958))

(assert (= (and b!2119958 (not res!918805)) b!2119959))

(declare-fun m!2574423 () Bool)

(assert (=> b!2119957 m!2574423))

(declare-fun m!2574425 () Bool)

(assert (=> b!2119959 m!2574425))

(assert (=> b!2119943 d!643277))

(declare-fun d!643279 () Bool)

(declare-fun c!339664 () Bool)

(assert (=> d!643279 (= c!339664 ((_ is Node!7794) (c!339658 input!5507)))))

(declare-fun e!1349868 () Bool)

(assert (=> d!643279 (= (inv!31242 (c!339658 input!5507)) e!1349868)))

(declare-fun b!2119960 () Bool)

(assert (=> b!2119960 (= e!1349868 (inv!31248 (c!339658 input!5507)))))

(declare-fun b!2119961 () Bool)

(declare-fun e!1349869 () Bool)

(assert (=> b!2119961 (= e!1349868 e!1349869)))

(declare-fun res!918806 () Bool)

(assert (=> b!2119961 (= res!918806 (not ((_ is Leaf!11389) (c!339658 input!5507))))))

(assert (=> b!2119961 (=> res!918806 e!1349869)))

(declare-fun b!2119962 () Bool)

(assert (=> b!2119962 (= e!1349869 (inv!31249 (c!339658 input!5507)))))

(assert (= (and d!643279 c!339664) b!2119960))

(assert (= (and d!643279 (not c!339664)) b!2119961))

(assert (= (and b!2119961 (not res!918806)) b!2119962))

(declare-fun m!2574427 () Bool)

(assert (=> b!2119960 m!2574427))

(declare-fun m!2574429 () Bool)

(assert (=> b!2119962 m!2574429))

(assert (=> b!2119919 d!643279))

(declare-fun d!643281 () Bool)

(declare-fun res!918811 () Bool)

(declare-fun e!1349874 () Bool)

(assert (=> d!643281 (=> res!918811 e!1349874)))

(assert (=> d!643281 (= res!918811 ((_ is Nil!23654) Nil!23654))))

(assert (=> d!643281 (= (forall!4855 Nil!23654 lambda!78456) e!1349874)))

(declare-fun b!2119967 () Bool)

(declare-fun e!1349875 () Bool)

(assert (=> b!2119967 (= e!1349874 e!1349875)))

(declare-fun res!918812 () Bool)

(assert (=> b!2119967 (=> (not res!918812) (not e!1349875))))

(declare-fun dynLambda!11304 (Int StackFrame!24) Bool)

(assert (=> b!2119967 (= res!918812 (dynLambda!11304 lambda!78456 (h!29055 Nil!23654)))))

(declare-fun b!2119968 () Bool)

(assert (=> b!2119968 (= e!1349875 (forall!4855 (t!196254 Nil!23654) lambda!78456))))

(assert (= (and d!643281 (not res!918811)) b!2119967))

(assert (= (and b!2119967 res!918812) b!2119968))

(declare-fun b_lambda!70445 () Bool)

(assert (=> (not b_lambda!70445) (not b!2119967)))

(declare-fun m!2574431 () Bool)

(assert (=> b!2119967 m!2574431))

(declare-fun m!2574433 () Bool)

(assert (=> b!2119968 m!2574433))

(assert (=> b!2119934 d!643281))

(declare-fun e!1349882 () Int)

(declare-fun e!1349883 () Int)

(declare-fun lt!794616 () (InoxSet Context!2450))

(declare-fun b!2119979 () Bool)

(assert (=> b!2119979 (= e!1349883 (furthestNullablePosition!6 lt!794616 (+ lt!794603 1) totalInput!886 lt!794601 e!1349882))))

(declare-fun derivationStepZipper!85 ((InoxSet Context!2450) C!11456) (InoxSet Context!2450))

(declare-fun apply!5907 (BalanceConc!15350 Int) C!11456)

(assert (=> b!2119979 (= lt!794616 (derivationStepZipper!85 z!3883 (apply!5907 totalInput!886 lt!794603)))))

(declare-fun c!339670 () Bool)

(assert (=> b!2119979 (= c!339670 (nullableZipper!59 lt!794616))))

(declare-fun b!2119980 () Bool)

(assert (=> b!2119980 (= e!1349882 lt!794603)))

(declare-fun b!2119981 () Bool)

(declare-fun e!1349884 () Bool)

(declare-fun lostCauseZipper!53 ((InoxSet Context!2450)) Bool)

(assert (=> b!2119981 (= e!1349884 (lostCauseZipper!53 z!3883))))

(declare-fun b!2119982 () Bool)

(assert (=> b!2119982 (= e!1349883 lt!794606)))

(declare-fun lt!794617 () Int)

(declare-fun d!643283 () Bool)

(assert (=> d!643283 (and (>= lt!794617 (- 1)) (< lt!794617 lt!794601) (>= lt!794617 lt!794606) (or (= lt!794617 lt!794606) (>= lt!794617 lt!794603)))))

(assert (=> d!643283 (= lt!794617 e!1349883)))

(declare-fun c!339669 () Bool)

(assert (=> d!643283 (= c!339669 e!1349884)))

(declare-fun res!918815 () Bool)

(assert (=> d!643283 (=> res!918815 e!1349884)))

(assert (=> d!643283 (= res!918815 (= lt!794603 lt!794601))))

(assert (=> d!643283 (and (>= lt!794603 0) (<= lt!794603 lt!794601))))

(assert (=> d!643283 (= (furthestNullablePosition!6 z!3883 lt!794603 totalInput!886 lt!794601 lt!794606) lt!794617)))

(declare-fun b!2119983 () Bool)

(assert (=> b!2119983 (= e!1349882 lt!794606)))

(assert (= (and d!643283 (not res!918815)) b!2119981))

(assert (= (and d!643283 c!339669) b!2119982))

(assert (= (and d!643283 (not c!339669)) b!2119979))

(assert (= (and b!2119979 c!339670) b!2119980))

(assert (= (and b!2119979 (not c!339670)) b!2119983))

(declare-fun m!2574435 () Bool)

(assert (=> b!2119979 m!2574435))

(declare-fun m!2574437 () Bool)

(assert (=> b!2119979 m!2574437))

(assert (=> b!2119979 m!2574437))

(declare-fun m!2574439 () Bool)

(assert (=> b!2119979 m!2574439))

(declare-fun m!2574441 () Bool)

(assert (=> b!2119979 m!2574441))

(declare-fun m!2574443 () Bool)

(assert (=> b!2119981 m!2574443))

(assert (=> b!2119934 d!643283))

(declare-fun d!643285 () Bool)

(assert (=> d!643285 (= (array_inv!2656 (_keys!2724 (v!28185 (underlying!5049 (v!28186 (underlying!5050 (cache!2722 cacheUp!991))))))) (bvsge (size!18479 (_keys!2724 (v!28185 (underlying!5049 (v!28186 (underlying!5050 (cache!2722 cacheUp!991))))))) #b00000000000000000000000000000000))))

(assert (=> b!2119935 d!643285))

(declare-fun d!643287 () Bool)

(assert (=> d!643287 (= (array_inv!2658 (_values!2707 (v!28185 (underlying!5049 (v!28186 (underlying!5050 (cache!2722 cacheUp!991))))))) (bvsge (size!18481 (_values!2707 (v!28185 (underlying!5049 (v!28186 (underlying!5050 (cache!2722 cacheUp!991))))))) #b00000000000000000000000000000000))))

(assert (=> b!2119935 d!643287))

(declare-fun d!643289 () Bool)

(assert (=> d!643289 (= (array_inv!2656 (_keys!2723 (v!28183 (underlying!5047 (v!28184 (underlying!5048 (cache!2721 cacheDown!1110))))))) (bvsge (size!18479 (_keys!2723 (v!28183 (underlying!5047 (v!28184 (underlying!5048 (cache!2721 cacheDown!1110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2119918 d!643289))

(declare-fun d!643291 () Bool)

(assert (=> d!643291 (= (array_inv!2657 (_values!2706 (v!28183 (underlying!5047 (v!28184 (underlying!5048 (cache!2721 cacheDown!1110))))))) (bvsge (size!18480 (_values!2706 (v!28183 (underlying!5047 (v!28184 (underlying!5048 (cache!2721 cacheDown!1110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2119918 d!643291))

(declare-fun d!643293 () Bool)

(declare-fun list!9520 (Conc!7794) List!23735)

(assert (=> d!643293 (= (list!9519 input!5507) (list!9520 (c!339658 input!5507)))))

(declare-fun bs!442650 () Bool)

(assert (= bs!442650 d!643293))

(declare-fun m!2574445 () Bool)

(assert (=> bs!442650 m!2574445))

(assert (=> start!206922 d!643293))

(declare-fun d!643295 () Bool)

(declare-fun isBalanced!2445 (Conc!7794) Bool)

(assert (=> d!643295 (= (inv!31243 totalInput!886) (isBalanced!2445 (c!339658 totalInput!886)))))

(declare-fun bs!442651 () Bool)

(assert (= bs!442651 d!643295))

(declare-fun m!2574447 () Bool)

(assert (=> bs!442651 m!2574447))

(assert (=> start!206922 d!643295))

(declare-fun d!643297 () Bool)

(assert (=> d!643297 (= (inv!31243 input!5507) (isBalanced!2445 (c!339658 input!5507)))))

(declare-fun bs!442652 () Bool)

(assert (= bs!442652 d!643297))

(declare-fun m!2574449 () Bool)

(assert (=> bs!442652 m!2574449))

(assert (=> start!206922 d!643297))

(declare-fun d!643299 () Bool)

(assert (=> d!643299 (= (list!9519 totalInput!886) (list!9520 (c!339658 totalInput!886)))))

(declare-fun bs!442653 () Bool)

(assert (= bs!442653 d!643299))

(declare-fun m!2574451 () Bool)

(assert (=> bs!442653 m!2574451))

(assert (=> start!206922 d!643299))

(declare-fun d!643301 () Bool)

(declare-fun res!918818 () Bool)

(declare-fun e!1349887 () Bool)

(assert (=> d!643301 (=> (not res!918818) (not e!1349887))))

(assert (=> d!643301 (= res!918818 ((_ is HashMap!2341) (cache!2722 cacheUp!991)))))

(assert (=> d!643301 (= (inv!31246 cacheUp!991) e!1349887)))

(declare-fun b!2119986 () Bool)

(assert (=> b!2119986 (= e!1349887 (validCacheMapUp!241 (cache!2722 cacheUp!991)))))

(assert (= (and d!643301 res!918818) b!2119986))

(assert (=> b!2119986 m!2574421))

(assert (=> start!206922 d!643301))

(declare-fun d!643303 () Bool)

(declare-fun res!918821 () Bool)

(declare-fun e!1349890 () Bool)

(assert (=> d!643303 (=> (not res!918821) (not e!1349890))))

(assert (=> d!643303 (= res!918821 ((_ is HashMap!2340) (cache!2721 cacheDown!1110)))))

(assert (=> d!643303 (= (inv!31245 cacheDown!1110) e!1349890)))

(declare-fun b!2119989 () Bool)

(declare-fun validCacheMapDown!239 (MutableMap!2340) Bool)

(assert (=> b!2119989 (= e!1349890 (validCacheMapDown!239 (cache!2721 cacheDown!1110)))))

(assert (= (and d!643303 res!918821) b!2119989))

(declare-fun m!2574453 () Bool)

(assert (=> b!2119989 m!2574453))

(assert (=> start!206922 d!643303))

(declare-fun d!643305 () Bool)

(declare-fun res!918824 () Bool)

(declare-fun e!1349893 () Bool)

(assert (=> d!643305 (=> (not res!918824) (not e!1349893))))

(assert (=> d!643305 (= res!918824 ((_ is HashMap!2342) (cache!2723 cacheFurthestNullable!130)))))

(assert (=> d!643305 (= (inv!31244 cacheFurthestNullable!130) e!1349893)))

(declare-fun b!2119992 () Bool)

(declare-fun validCacheMapFurthestNullable!91 (MutableMap!2342 BalanceConc!15350) Bool)

(assert (=> b!2119992 (= e!1349893 (validCacheMapFurthestNullable!91 (cache!2723 cacheFurthestNullable!130) (totalInput!2889 cacheFurthestNullable!130)))))

(assert (= (and d!643305 res!918824) b!2119992))

(declare-fun m!2574455 () Bool)

(assert (=> b!2119992 m!2574455))

(assert (=> start!206922 d!643305))

(declare-fun d!643307 () Bool)

(declare-fun e!1349896 () Bool)

(assert (=> d!643307 e!1349896))

(declare-fun res!918827 () Bool)

(assert (=> d!643307 (=> res!918827 e!1349896)))

(declare-fun lt!794620 () Bool)

(assert (=> d!643307 (= res!918827 (not lt!794620))))

(declare-fun drop!1180 (List!23735 Int) List!23735)

(assert (=> d!643307 (= lt!794620 (= (list!9519 input!5507) (drop!1180 (list!9519 totalInput!886) (- (size!18484 (list!9519 totalInput!886)) (size!18484 (list!9519 input!5507))))))))

(assert (=> d!643307 (= (isSuffix!613 (list!9519 input!5507) (list!9519 totalInput!886)) lt!794620)))

(declare-fun b!2119995 () Bool)

(assert (=> b!2119995 (= e!1349896 (>= (size!18484 (list!9519 totalInput!886)) (size!18484 (list!9519 input!5507))))))

(assert (= (and d!643307 (not res!918827)) b!2119995))

(assert (=> d!643307 m!2574371))

(assert (=> d!643307 m!2574417))

(assert (=> d!643307 m!2574377))

(assert (=> d!643307 m!2574413))

(assert (=> d!643307 m!2574371))

(declare-fun m!2574457 () Bool)

(assert (=> d!643307 m!2574457))

(assert (=> b!2119995 m!2574371))

(assert (=> b!2119995 m!2574417))

(assert (=> b!2119995 m!2574377))

(assert (=> b!2119995 m!2574413))

(assert (=> start!206922 d!643307))

(declare-fun d!643309 () Bool)

(declare-fun lambda!78462 () Int)

(declare-fun forall!4856 (List!23733 Int) Bool)

(assert (=> d!643309 (= (inv!31247 setElem!14632) (forall!4856 (exprs!1725 setElem!14632) lambda!78462))))

(declare-fun bs!442654 () Bool)

(assert (= bs!442654 d!643309))

(declare-fun m!2574459 () Bool)

(assert (=> bs!442654 m!2574459))

(assert (=> setNonEmpty!14632 d!643309))

(declare-fun d!643311 () Bool)

(assert (=> d!643311 (= (valid!1914 cacheDown!1110) (validCacheMapDown!239 (cache!2721 cacheDown!1110)))))

(declare-fun bs!442655 () Bool)

(assert (= bs!442655 d!643311))

(assert (=> bs!442655 m!2574453))

(assert (=> b!2119930 d!643311))

(declare-fun d!643313 () Bool)

(assert (=> d!643313 (= (array_inv!2656 (_keys!2725 (v!28187 (underlying!5051 (v!28188 (underlying!5052 (cache!2723 cacheFurthestNullable!130))))))) (bvsge (size!18479 (_keys!2725 (v!28187 (underlying!5051 (v!28188 (underlying!5052 (cache!2723 cacheFurthestNullable!130))))))) #b00000000000000000000000000000000))))

(assert (=> b!2119923 d!643313))

(declare-fun d!643315 () Bool)

(assert (=> d!643315 (= (array_inv!2659 (_values!2708 (v!28187 (underlying!5051 (v!28188 (underlying!5052 (cache!2723 cacheFurthestNullable!130))))))) (bvsge (size!18482 (_values!2708 (v!28187 (underlying!5051 (v!28188 (underlying!5052 (cache!2723 cacheFurthestNullable!130))))))) #b00000000000000000000000000000000))))

(assert (=> b!2119923 d!643315))

(declare-fun d!643317 () Bool)

(assert (=> d!643317 (= (inv!31243 (totalInput!2889 cacheFurthestNullable!130)) (isBalanced!2445 (c!339658 (totalInput!2889 cacheFurthestNullable!130))))))

(declare-fun bs!442656 () Bool)

(assert (= bs!442656 d!643317))

(declare-fun m!2574461 () Bool)

(assert (=> bs!442656 m!2574461))

(assert (=> b!2119922 d!643317))

(declare-fun d!643319 () Bool)

(declare-fun c!339671 () Bool)

(assert (=> d!643319 (= c!339671 ((_ is Node!7794) (c!339658 (totalInput!2889 cacheFurthestNullable!130))))))

(declare-fun e!1349897 () Bool)

(assert (=> d!643319 (= (inv!31242 (c!339658 (totalInput!2889 cacheFurthestNullable!130))) e!1349897)))

(declare-fun b!2119996 () Bool)

(assert (=> b!2119996 (= e!1349897 (inv!31248 (c!339658 (totalInput!2889 cacheFurthestNullable!130))))))

(declare-fun b!2119997 () Bool)

(declare-fun e!1349898 () Bool)

(assert (=> b!2119997 (= e!1349897 e!1349898)))

(declare-fun res!918828 () Bool)

(assert (=> b!2119997 (= res!918828 (not ((_ is Leaf!11389) (c!339658 (totalInput!2889 cacheFurthestNullable!130)))))))

(assert (=> b!2119997 (=> res!918828 e!1349898)))

(declare-fun b!2119998 () Bool)

(assert (=> b!2119998 (= e!1349898 (inv!31249 (c!339658 (totalInput!2889 cacheFurthestNullable!130))))))

(assert (= (and d!643319 c!339671) b!2119996))

(assert (= (and d!643319 (not c!339671)) b!2119997))

(assert (= (and b!2119997 (not res!918828)) b!2119998))

(declare-fun m!2574463 () Bool)

(assert (=> b!2119996 m!2574463))

(declare-fun m!2574465 () Bool)

(assert (=> b!2119998 m!2574465))

(assert (=> b!2119939 d!643319))

(declare-fun d!643321 () Bool)

(assert (=> d!643321 (= (valid!1915 cacheFurthestNullable!130) (validCacheMapFurthestNullable!91 (cache!2723 cacheFurthestNullable!130) (totalInput!2889 cacheFurthestNullable!130)))))

(declare-fun bs!442657 () Bool)

(assert (= bs!442657 d!643321))

(assert (=> bs!442657 m!2574455))

(assert (=> b!2119937 d!643321))

(declare-fun setIsEmpty!14637 () Bool)

(declare-fun setRes!14637 () Bool)

(assert (=> setIsEmpty!14637 setRes!14637))

(declare-fun condMapEmpty!11719 () Bool)

(declare-fun mapDefault!11719 () List!23737)

(assert (=> mapNonEmpty!11716 (= condMapEmpty!11719 (= mapRest!11716 ((as const (Array (_ BitVec 32) List!23737)) mapDefault!11719)))))

(declare-fun e!1349908 () Bool)

(declare-fun mapRes!11719 () Bool)

(assert (=> mapNonEmpty!11716 (= tp!648362 (and e!1349908 mapRes!11719))))

(declare-fun mapIsEmpty!11719 () Bool)

(assert (=> mapIsEmpty!11719 mapRes!11719))

(declare-fun setIsEmpty!14638 () Bool)

(declare-fun setRes!14638 () Bool)

(assert (=> setIsEmpty!14638 setRes!14638))

(declare-fun b!2120009 () Bool)

(declare-fun e!1349907 () Bool)

(declare-fun tp!648400 () Bool)

(assert (=> b!2120009 (= e!1349907 (and setRes!14637 tp!648400))))

(declare-fun condSetEmpty!14638 () Bool)

(declare-fun mapValue!11719 () List!23737)

(assert (=> b!2120009 (= condSetEmpty!14638 (= (_1!13512 (_1!13513 (h!29054 mapValue!11719))) ((as const (Array Context!2450 Bool)) false)))))

(declare-fun mapNonEmpty!11719 () Bool)

(declare-fun tp!648397 () Bool)

(assert (=> mapNonEmpty!11719 (= mapRes!11719 (and tp!648397 e!1349907))))

(declare-fun mapKey!11719 () (_ BitVec 32))

(declare-fun mapRest!11719 () (Array (_ BitVec 32) List!23737))

(assert (=> mapNonEmpty!11719 (= mapRest!11716 (store mapRest!11719 mapKey!11719 mapValue!11719))))

(declare-fun b!2120010 () Bool)

(declare-fun e!1349909 () Bool)

(declare-fun tp!648395 () Bool)

(assert (=> b!2120010 (= e!1349909 tp!648395)))

(declare-fun b!2120011 () Bool)

(declare-fun e!1349910 () Bool)

(declare-fun tp!648398 () Bool)

(assert (=> b!2120011 (= e!1349910 tp!648398)))

(declare-fun setElem!14638 () Context!2450)

(declare-fun setNonEmpty!14637 () Bool)

(declare-fun tp!648401 () Bool)

(assert (=> setNonEmpty!14637 (= setRes!14638 (and tp!648401 (inv!31247 setElem!14638) e!1349909))))

(declare-fun setRest!14638 () (InoxSet Context!2450))

(assert (=> setNonEmpty!14637 (= (_1!13512 (_1!13513 (h!29054 mapDefault!11719))) ((_ map or) (store ((as const (Array Context!2450 Bool)) false) setElem!14638 true) setRest!14638))))

(declare-fun setNonEmpty!14638 () Bool)

(declare-fun tp!648396 () Bool)

(declare-fun setElem!14637 () Context!2450)

(assert (=> setNonEmpty!14638 (= setRes!14637 (and tp!648396 (inv!31247 setElem!14637) e!1349910))))

(declare-fun setRest!14637 () (InoxSet Context!2450))

(assert (=> setNonEmpty!14638 (= (_1!13512 (_1!13513 (h!29054 mapValue!11719))) ((_ map or) (store ((as const (Array Context!2450 Bool)) false) setElem!14637 true) setRest!14637))))

(declare-fun b!2120012 () Bool)

(declare-fun tp!648399 () Bool)

(assert (=> b!2120012 (= e!1349908 (and setRes!14638 tp!648399))))

(declare-fun condSetEmpty!14637 () Bool)

(assert (=> b!2120012 (= condSetEmpty!14637 (= (_1!13512 (_1!13513 (h!29054 mapDefault!11719))) ((as const (Array Context!2450 Bool)) false)))))

(assert (= (and mapNonEmpty!11716 condMapEmpty!11719) mapIsEmpty!11719))

(assert (= (and mapNonEmpty!11716 (not condMapEmpty!11719)) mapNonEmpty!11719))

(assert (= (and b!2120009 condSetEmpty!14638) setIsEmpty!14637))

(assert (= (and b!2120009 (not condSetEmpty!14638)) setNonEmpty!14638))

(assert (= setNonEmpty!14638 b!2120011))

(assert (= (and mapNonEmpty!11719 ((_ is Cons!23653) mapValue!11719)) b!2120009))

(assert (= (and b!2120012 condSetEmpty!14637) setIsEmpty!14638))

(assert (= (and b!2120012 (not condSetEmpty!14637)) setNonEmpty!14637))

(assert (= setNonEmpty!14637 b!2120010))

(assert (= (and mapNonEmpty!11716 ((_ is Cons!23653) mapDefault!11719)) b!2120012))

(declare-fun m!2574467 () Bool)

(assert (=> mapNonEmpty!11719 m!2574467))

(declare-fun m!2574469 () Bool)

(assert (=> setNonEmpty!14637 m!2574469))

(declare-fun m!2574471 () Bool)

(assert (=> setNonEmpty!14638 m!2574471))

(declare-fun setIsEmpty!14641 () Bool)

(declare-fun setRes!14641 () Bool)

(assert (=> setIsEmpty!14641 setRes!14641))

(declare-fun setElem!14641 () Context!2450)

(declare-fun e!1349915 () Bool)

(declare-fun setNonEmpty!14641 () Bool)

(declare-fun tp!648409 () Bool)

(assert (=> setNonEmpty!14641 (= setRes!14641 (and tp!648409 (inv!31247 setElem!14641) e!1349915))))

(declare-fun setRest!14641 () (InoxSet Context!2450))

(assert (=> setNonEmpty!14641 (= (_1!13512 (_1!13513 (h!29054 mapValue!11716))) ((_ map or) (store ((as const (Array Context!2450 Bool)) false) setElem!14641 true) setRest!14641))))

(declare-fun b!2120019 () Bool)

(declare-fun e!1349916 () Bool)

(declare-fun tp!648408 () Bool)

(assert (=> b!2120019 (= e!1349916 (and setRes!14641 tp!648408))))

(declare-fun condSetEmpty!14641 () Bool)

(assert (=> b!2120019 (= condSetEmpty!14641 (= (_1!13512 (_1!13513 (h!29054 mapValue!11716))) ((as const (Array Context!2450 Bool)) false)))))

(assert (=> mapNonEmpty!11716 (= tp!648373 e!1349916)))

(declare-fun b!2120020 () Bool)

(declare-fun tp!648410 () Bool)

(assert (=> b!2120020 (= e!1349915 tp!648410)))

(assert (= (and b!2120019 condSetEmpty!14641) setIsEmpty!14641))

(assert (= (and b!2120019 (not condSetEmpty!14641)) setNonEmpty!14641))

(assert (= setNonEmpty!14641 b!2120020))

(assert (= (and mapNonEmpty!11716 ((_ is Cons!23653) mapValue!11716)) b!2120019))

(declare-fun m!2574473 () Bool)

(assert (=> setNonEmpty!14641 m!2574473))

(declare-fun b!2120035 () Bool)

(declare-fun e!1349929 () Bool)

(declare-fun tp!648442 () Bool)

(assert (=> b!2120035 (= e!1349929 tp!648442)))

(declare-fun condMapEmpty!11722 () Bool)

(declare-fun mapDefault!11722 () List!23734)

(assert (=> mapNonEmpty!11714 (= condMapEmpty!11722 (= mapRest!11715 ((as const (Array (_ BitVec 32) List!23734)) mapDefault!11722)))))

(declare-fun e!1349931 () Bool)

(declare-fun mapRes!11722 () Bool)

(assert (=> mapNonEmpty!11714 (= tp!648358 (and e!1349931 mapRes!11722))))

(declare-fun b!2120036 () Bool)

(declare-fun e!1349933 () Bool)

(declare-fun tp!648433 () Bool)

(assert (=> b!2120036 (= e!1349933 tp!648433)))

(declare-fun setRes!14647 () Bool)

(declare-fun tp!648436 () Bool)

(declare-fun setNonEmpty!14646 () Bool)

(declare-fun setElem!14646 () Context!2450)

(assert (=> setNonEmpty!14646 (= setRes!14647 (and tp!648436 (inv!31247 setElem!14646) e!1349933))))

(declare-fun setRest!14647 () (InoxSet Context!2450))

(assert (=> setNonEmpty!14646 (= (_2!13509 (h!29051 mapDefault!11722)) ((_ map or) (store ((as const (Array Context!2450 Bool)) false) setElem!14646 true) setRest!14647))))

(declare-fun b!2120037 () Bool)

(declare-fun e!1349932 () Bool)

(declare-fun tp!648434 () Bool)

(assert (=> b!2120037 (= e!1349932 tp!648434)))

(declare-fun setIsEmpty!14646 () Bool)

(assert (=> setIsEmpty!14646 setRes!14647))

(declare-fun mapValue!11722 () List!23734)

(declare-fun b!2120038 () Bool)

(declare-fun tp!648441 () Bool)

(declare-fun e!1349930 () Bool)

(declare-fun e!1349934 () Bool)

(declare-fun setRes!14646 () Bool)

(declare-fun tp_is_empty!9483 () Bool)

(declare-fun tp!648440 () Bool)

(assert (=> b!2120038 (= e!1349934 (and tp!648441 (inv!31247 (_2!13508 (_1!13509 (h!29051 mapValue!11722)))) e!1349930 tp_is_empty!9483 setRes!14646 tp!648440))))

(declare-fun condSetEmpty!14646 () Bool)

(assert (=> b!2120038 (= condSetEmpty!14646 (= (_2!13509 (h!29051 mapValue!11722)) ((as const (Array Context!2450 Bool)) false)))))

(declare-fun setElem!14647 () Context!2450)

(declare-fun tp!648435 () Bool)

(declare-fun setNonEmpty!14647 () Bool)

(assert (=> setNonEmpty!14647 (= setRes!14646 (and tp!648435 (inv!31247 setElem!14647) e!1349932))))

(declare-fun setRest!14646 () (InoxSet Context!2450))

(assert (=> setNonEmpty!14647 (= (_2!13509 (h!29051 mapValue!11722)) ((_ map or) (store ((as const (Array Context!2450 Bool)) false) setElem!14647 true) setRest!14646))))

(declare-fun b!2120039 () Bool)

(declare-fun tp!648439 () Bool)

(assert (=> b!2120039 (= e!1349930 tp!648439)))

(declare-fun tp!648437 () Bool)

(declare-fun tp!648438 () Bool)

(declare-fun b!2120040 () Bool)

(assert (=> b!2120040 (= e!1349931 (and tp!648437 (inv!31247 (_2!13508 (_1!13509 (h!29051 mapDefault!11722)))) e!1349929 tp_is_empty!9483 setRes!14647 tp!648438))))

(declare-fun condSetEmpty!14647 () Bool)

(assert (=> b!2120040 (= condSetEmpty!14647 (= (_2!13509 (h!29051 mapDefault!11722)) ((as const (Array Context!2450 Bool)) false)))))

(declare-fun mapNonEmpty!11722 () Bool)

(declare-fun tp!648443 () Bool)

(assert (=> mapNonEmpty!11722 (= mapRes!11722 (and tp!648443 e!1349934))))

(declare-fun mapKey!11722 () (_ BitVec 32))

(declare-fun mapRest!11722 () (Array (_ BitVec 32) List!23734))

(assert (=> mapNonEmpty!11722 (= mapRest!11715 (store mapRest!11722 mapKey!11722 mapValue!11722))))

(declare-fun mapIsEmpty!11722 () Bool)

(assert (=> mapIsEmpty!11722 mapRes!11722))

(declare-fun setIsEmpty!14647 () Bool)

(assert (=> setIsEmpty!14647 setRes!14646))

(assert (= (and mapNonEmpty!11714 condMapEmpty!11722) mapIsEmpty!11722))

(assert (= (and mapNonEmpty!11714 (not condMapEmpty!11722)) mapNonEmpty!11722))

(assert (= b!2120038 b!2120039))

(assert (= (and b!2120038 condSetEmpty!14646) setIsEmpty!14647))

(assert (= (and b!2120038 (not condSetEmpty!14646)) setNonEmpty!14647))

(assert (= setNonEmpty!14647 b!2120037))

(assert (= (and mapNonEmpty!11722 ((_ is Cons!23650) mapValue!11722)) b!2120038))

(assert (= b!2120040 b!2120035))

(assert (= (and b!2120040 condSetEmpty!14647) setIsEmpty!14646))

(assert (= (and b!2120040 (not condSetEmpty!14647)) setNonEmpty!14646))

(assert (= setNonEmpty!14646 b!2120036))

(assert (= (and mapNonEmpty!11714 ((_ is Cons!23650) mapDefault!11722)) b!2120040))

(declare-fun m!2574475 () Bool)

(assert (=> setNonEmpty!14647 m!2574475))

(declare-fun m!2574477 () Bool)

(assert (=> b!2120040 m!2574477))

(declare-fun m!2574479 () Bool)

(assert (=> b!2120038 m!2574479))

(declare-fun m!2574481 () Bool)

(assert (=> mapNonEmpty!11722 m!2574481))

(declare-fun m!2574483 () Bool)

(assert (=> setNonEmpty!14646 m!2574483))

(declare-fun b!2120050 () Bool)

(declare-fun setRes!14650 () Bool)

(declare-fun tp!648456 () Bool)

(declare-fun e!1349943 () Bool)

(declare-fun tp!648455 () Bool)

(declare-fun e!1349942 () Bool)

(assert (=> b!2120050 (= e!1349942 (and tp!648456 (inv!31247 (_2!13508 (_1!13509 (h!29051 mapValue!11714)))) e!1349943 tp_is_empty!9483 setRes!14650 tp!648455))))

(declare-fun condSetEmpty!14650 () Bool)

(assert (=> b!2120050 (= condSetEmpty!14650 (= (_2!13509 (h!29051 mapValue!11714)) ((as const (Array Context!2450 Bool)) false)))))

(declare-fun b!2120051 () Bool)

(declare-fun e!1349941 () Bool)

(declare-fun tp!648454 () Bool)

(assert (=> b!2120051 (= e!1349941 tp!648454)))

(declare-fun setNonEmpty!14650 () Bool)

(declare-fun tp!648458 () Bool)

(declare-fun setElem!14650 () Context!2450)

(assert (=> setNonEmpty!14650 (= setRes!14650 (and tp!648458 (inv!31247 setElem!14650) e!1349941))))

(declare-fun setRest!14650 () (InoxSet Context!2450))

(assert (=> setNonEmpty!14650 (= (_2!13509 (h!29051 mapValue!11714)) ((_ map or) (store ((as const (Array Context!2450 Bool)) false) setElem!14650 true) setRest!14650))))

(declare-fun setIsEmpty!14650 () Bool)

(assert (=> setIsEmpty!14650 setRes!14650))

(assert (=> mapNonEmpty!11714 (= tp!648372 e!1349942)))

(declare-fun b!2120049 () Bool)

(declare-fun tp!648457 () Bool)

(assert (=> b!2120049 (= e!1349943 tp!648457)))

(assert (= b!2120050 b!2120049))

(assert (= (and b!2120050 condSetEmpty!14650) setIsEmpty!14650))

(assert (= (and b!2120050 (not condSetEmpty!14650)) setNonEmpty!14650))

(assert (= setNonEmpty!14650 b!2120051))

(assert (= (and mapNonEmpty!11714 ((_ is Cons!23650) mapValue!11714)) b!2120050))

(declare-fun m!2574485 () Bool)

(assert (=> b!2120050 m!2574485))

(declare-fun m!2574487 () Bool)

(assert (=> setNonEmpty!14650 m!2574487))

(declare-fun tp!648466 () Bool)

(declare-fun tp!648465 () Bool)

(declare-fun e!1349949 () Bool)

(declare-fun b!2120060 () Bool)

(assert (=> b!2120060 (= e!1349949 (and (inv!31242 (left!18302 (c!339658 totalInput!886))) tp!648466 (inv!31242 (right!18632 (c!339658 totalInput!886))) tp!648465))))

(declare-fun b!2120062 () Bool)

(declare-fun e!1349948 () Bool)

(declare-fun tp!648467 () Bool)

(assert (=> b!2120062 (= e!1349948 tp!648467)))

(declare-fun b!2120061 () Bool)

(declare-fun inv!31250 (IArray!15593) Bool)

(assert (=> b!2120061 (= e!1349949 (and (inv!31250 (xs!10736 (c!339658 totalInput!886))) e!1349948))))

(assert (=> b!2119943 (= tp!648364 (and (inv!31242 (c!339658 totalInput!886)) e!1349949))))

(assert (= (and b!2119943 ((_ is Node!7794) (c!339658 totalInput!886))) b!2120060))

(assert (= b!2120061 b!2120062))

(assert (= (and b!2119943 ((_ is Leaf!11389) (c!339658 totalInput!886))) b!2120061))

(declare-fun m!2574489 () Bool)

(assert (=> b!2120060 m!2574489))

(declare-fun m!2574491 () Bool)

(assert (=> b!2120060 m!2574491))

(declare-fun m!2574493 () Bool)

(assert (=> b!2120061 m!2574493))

(assert (=> b!2119943 m!2574387))

(declare-fun e!1349951 () Bool)

(declare-fun tp!648468 () Bool)

(declare-fun tp!648469 () Bool)

(declare-fun b!2120063 () Bool)

(assert (=> b!2120063 (= e!1349951 (and (inv!31242 (left!18302 (c!339658 input!5507))) tp!648469 (inv!31242 (right!18632 (c!339658 input!5507))) tp!648468))))

(declare-fun b!2120065 () Bool)

(declare-fun e!1349950 () Bool)

(declare-fun tp!648470 () Bool)

(assert (=> b!2120065 (= e!1349950 tp!648470)))

(declare-fun b!2120064 () Bool)

(assert (=> b!2120064 (= e!1349951 (and (inv!31250 (xs!10736 (c!339658 input!5507))) e!1349950))))

(assert (=> b!2119919 (= tp!648361 (and (inv!31242 (c!339658 input!5507)) e!1349951))))

(assert (= (and b!2119919 ((_ is Node!7794) (c!339658 input!5507))) b!2120063))

(assert (= b!2120064 b!2120065))

(assert (= (and b!2119919 ((_ is Leaf!11389) (c!339658 input!5507))) b!2120064))

(declare-fun m!2574495 () Bool)

(assert (=> b!2120063 m!2574495))

(declare-fun m!2574497 () Bool)

(assert (=> b!2120063 m!2574497))

(declare-fun m!2574499 () Bool)

(assert (=> b!2120064 m!2574499))

(assert (=> b!2119919 m!2574369))

(declare-fun b!2120074 () Bool)

(declare-fun e!1349959 () Bool)

(declare-fun tp!648482 () Bool)

(assert (=> b!2120074 (= e!1349959 tp!648482)))

(declare-fun e!1349958 () Bool)

(assert (=> b!2119935 (= tp!648376 e!1349958)))

(declare-fun setNonEmpty!14653 () Bool)

(declare-fun e!1349960 () Bool)

(declare-fun setRes!14653 () Bool)

(declare-fun tp!648480 () Bool)

(declare-fun setElem!14653 () Context!2450)

(assert (=> setNonEmpty!14653 (= setRes!14653 (and tp!648480 (inv!31247 setElem!14653) e!1349960))))

(declare-fun setRest!14653 () (InoxSet Context!2450))

(assert (=> setNonEmpty!14653 (= (_2!13511 (h!29053 (zeroValue!2685 (v!28185 (underlying!5049 (v!28186 (underlying!5050 (cache!2722 cacheUp!991)))))))) ((_ map or) (store ((as const (Array Context!2450 Bool)) false) setElem!14653 true) setRest!14653))))

(declare-fun b!2120075 () Bool)

(declare-fun tp!648481 () Bool)

(assert (=> b!2120075 (= e!1349960 tp!648481)))

(declare-fun tp!648479 () Bool)

(declare-fun b!2120076 () Bool)

(assert (=> b!2120076 (= e!1349958 (and (inv!31247 (_1!13510 (_1!13511 (h!29053 (zeroValue!2685 (v!28185 (underlying!5049 (v!28186 (underlying!5050 (cache!2722 cacheUp!991)))))))))) e!1349959 tp_is_empty!9483 setRes!14653 tp!648479))))

(declare-fun condSetEmpty!14653 () Bool)

(assert (=> b!2120076 (= condSetEmpty!14653 (= (_2!13511 (h!29053 (zeroValue!2685 (v!28185 (underlying!5049 (v!28186 (underlying!5050 (cache!2722 cacheUp!991)))))))) ((as const (Array Context!2450 Bool)) false)))))

(declare-fun setIsEmpty!14653 () Bool)

(assert (=> setIsEmpty!14653 setRes!14653))

(assert (= b!2120076 b!2120074))

(assert (= (and b!2120076 condSetEmpty!14653) setIsEmpty!14653))

(assert (= (and b!2120076 (not condSetEmpty!14653)) setNonEmpty!14653))

(assert (= setNonEmpty!14653 b!2120075))

(assert (= (and b!2119935 ((_ is Cons!23652) (zeroValue!2685 (v!28185 (underlying!5049 (v!28186 (underlying!5050 (cache!2722 cacheUp!991)))))))) b!2120076))

(declare-fun m!2574501 () Bool)

(assert (=> setNonEmpty!14653 m!2574501))

(declare-fun m!2574503 () Bool)

(assert (=> b!2120076 m!2574503))

(declare-fun b!2120077 () Bool)

(declare-fun e!1349962 () Bool)

(declare-fun tp!648486 () Bool)

(assert (=> b!2120077 (= e!1349962 tp!648486)))

(declare-fun e!1349961 () Bool)

(assert (=> b!2119935 (= tp!648370 e!1349961)))

(declare-fun tp!648484 () Bool)

(declare-fun setRes!14654 () Bool)

(declare-fun setNonEmpty!14654 () Bool)

(declare-fun e!1349963 () Bool)

(declare-fun setElem!14654 () Context!2450)

(assert (=> setNonEmpty!14654 (= setRes!14654 (and tp!648484 (inv!31247 setElem!14654) e!1349963))))

(declare-fun setRest!14654 () (InoxSet Context!2450))

(assert (=> setNonEmpty!14654 (= (_2!13511 (h!29053 (minValue!2685 (v!28185 (underlying!5049 (v!28186 (underlying!5050 (cache!2722 cacheUp!991)))))))) ((_ map or) (store ((as const (Array Context!2450 Bool)) false) setElem!14654 true) setRest!14654))))

(declare-fun b!2120078 () Bool)

(declare-fun tp!648485 () Bool)

(assert (=> b!2120078 (= e!1349963 tp!648485)))

(declare-fun b!2120079 () Bool)

(declare-fun tp!648483 () Bool)

(assert (=> b!2120079 (= e!1349961 (and (inv!31247 (_1!13510 (_1!13511 (h!29053 (minValue!2685 (v!28185 (underlying!5049 (v!28186 (underlying!5050 (cache!2722 cacheUp!991)))))))))) e!1349962 tp_is_empty!9483 setRes!14654 tp!648483))))

(declare-fun condSetEmpty!14654 () Bool)

(assert (=> b!2120079 (= condSetEmpty!14654 (= (_2!13511 (h!29053 (minValue!2685 (v!28185 (underlying!5049 (v!28186 (underlying!5050 (cache!2722 cacheUp!991)))))))) ((as const (Array Context!2450 Bool)) false)))))

(declare-fun setIsEmpty!14654 () Bool)

(assert (=> setIsEmpty!14654 setRes!14654))

(assert (= b!2120079 b!2120077))

(assert (= (and b!2120079 condSetEmpty!14654) setIsEmpty!14654))

(assert (= (and b!2120079 (not condSetEmpty!14654)) setNonEmpty!14654))

(assert (= setNonEmpty!14654 b!2120078))

(assert (= (and b!2119935 ((_ is Cons!23652) (minValue!2685 (v!28185 (underlying!5049 (v!28186 (underlying!5050 (cache!2722 cacheUp!991)))))))) b!2120079))

(declare-fun m!2574505 () Bool)

(assert (=> setNonEmpty!14654 m!2574505))

(declare-fun m!2574507 () Bool)

(assert (=> b!2120079 m!2574507))

(declare-fun e!1349965 () Bool)

(declare-fun setRes!14655 () Bool)

(declare-fun e!1349966 () Bool)

(declare-fun tp!648488 () Bool)

(declare-fun tp!648489 () Bool)

(declare-fun b!2120081 () Bool)

(assert (=> b!2120081 (= e!1349965 (and tp!648489 (inv!31247 (_2!13508 (_1!13509 (h!29051 (zeroValue!2684 (v!28183 (underlying!5047 (v!28184 (underlying!5048 (cache!2721 cacheDown!1110)))))))))) e!1349966 tp_is_empty!9483 setRes!14655 tp!648488))))

(declare-fun condSetEmpty!14655 () Bool)

(assert (=> b!2120081 (= condSetEmpty!14655 (= (_2!13509 (h!29051 (zeroValue!2684 (v!28183 (underlying!5047 (v!28184 (underlying!5048 (cache!2721 cacheDown!1110)))))))) ((as const (Array Context!2450 Bool)) false)))))

(declare-fun b!2120082 () Bool)

(declare-fun e!1349964 () Bool)

(declare-fun tp!648487 () Bool)

(assert (=> b!2120082 (= e!1349964 tp!648487)))

(declare-fun setElem!14655 () Context!2450)

(declare-fun tp!648491 () Bool)

(declare-fun setNonEmpty!14655 () Bool)

(assert (=> setNonEmpty!14655 (= setRes!14655 (and tp!648491 (inv!31247 setElem!14655) e!1349964))))

(declare-fun setRest!14655 () (InoxSet Context!2450))

(assert (=> setNonEmpty!14655 (= (_2!13509 (h!29051 (zeroValue!2684 (v!28183 (underlying!5047 (v!28184 (underlying!5048 (cache!2721 cacheDown!1110)))))))) ((_ map or) (store ((as const (Array Context!2450 Bool)) false) setElem!14655 true) setRest!14655))))

(declare-fun setIsEmpty!14655 () Bool)

(assert (=> setIsEmpty!14655 setRes!14655))

(assert (=> b!2119918 (= tp!648368 e!1349965)))

(declare-fun b!2120080 () Bool)

(declare-fun tp!648490 () Bool)

(assert (=> b!2120080 (= e!1349966 tp!648490)))

(assert (= b!2120081 b!2120080))

(assert (= (and b!2120081 condSetEmpty!14655) setIsEmpty!14655))

(assert (= (and b!2120081 (not condSetEmpty!14655)) setNonEmpty!14655))

(assert (= setNonEmpty!14655 b!2120082))

(assert (= (and b!2119918 ((_ is Cons!23650) (zeroValue!2684 (v!28183 (underlying!5047 (v!28184 (underlying!5048 (cache!2721 cacheDown!1110)))))))) b!2120081))

(declare-fun m!2574509 () Bool)

(assert (=> b!2120081 m!2574509))

(declare-fun m!2574511 () Bool)

(assert (=> setNonEmpty!14655 m!2574511))

(declare-fun e!1349968 () Bool)

(declare-fun e!1349969 () Bool)

(declare-fun tp!648494 () Bool)

(declare-fun b!2120084 () Bool)

(declare-fun tp!648493 () Bool)

(declare-fun setRes!14656 () Bool)

(assert (=> b!2120084 (= e!1349968 (and tp!648494 (inv!31247 (_2!13508 (_1!13509 (h!29051 (minValue!2684 (v!28183 (underlying!5047 (v!28184 (underlying!5048 (cache!2721 cacheDown!1110)))))))))) e!1349969 tp_is_empty!9483 setRes!14656 tp!648493))))

(declare-fun condSetEmpty!14656 () Bool)

(assert (=> b!2120084 (= condSetEmpty!14656 (= (_2!13509 (h!29051 (minValue!2684 (v!28183 (underlying!5047 (v!28184 (underlying!5048 (cache!2721 cacheDown!1110)))))))) ((as const (Array Context!2450 Bool)) false)))))

(declare-fun b!2120085 () Bool)

(declare-fun e!1349967 () Bool)

(declare-fun tp!648492 () Bool)

(assert (=> b!2120085 (= e!1349967 tp!648492)))

(declare-fun setNonEmpty!14656 () Bool)

(declare-fun tp!648496 () Bool)

(declare-fun setElem!14656 () Context!2450)

(assert (=> setNonEmpty!14656 (= setRes!14656 (and tp!648496 (inv!31247 setElem!14656) e!1349967))))

(declare-fun setRest!14656 () (InoxSet Context!2450))

(assert (=> setNonEmpty!14656 (= (_2!13509 (h!29051 (minValue!2684 (v!28183 (underlying!5047 (v!28184 (underlying!5048 (cache!2721 cacheDown!1110)))))))) ((_ map or) (store ((as const (Array Context!2450 Bool)) false) setElem!14656 true) setRest!14656))))

(declare-fun setIsEmpty!14656 () Bool)

(assert (=> setIsEmpty!14656 setRes!14656))

(assert (=> b!2119918 (= tp!648356 e!1349968)))

(declare-fun b!2120083 () Bool)

(declare-fun tp!648495 () Bool)

(assert (=> b!2120083 (= e!1349969 tp!648495)))

(assert (= b!2120084 b!2120083))

(assert (= (and b!2120084 condSetEmpty!14656) setIsEmpty!14656))

(assert (= (and b!2120084 (not condSetEmpty!14656)) setNonEmpty!14656))

(assert (= setNonEmpty!14656 b!2120085))

(assert (= (and b!2119918 ((_ is Cons!23650) (minValue!2684 (v!28183 (underlying!5047 (v!28184 (underlying!5048 (cache!2721 cacheDown!1110)))))))) b!2120084))

(declare-fun m!2574513 () Bool)

(assert (=> b!2120084 m!2574513))

(declare-fun m!2574515 () Bool)

(assert (=> setNonEmpty!14656 m!2574515))

(declare-fun mapIsEmpty!11725 () Bool)

(declare-fun mapRes!11725 () Bool)

(assert (=> mapIsEmpty!11725 mapRes!11725))

(declare-fun b!2120100 () Bool)

(declare-fun e!1349987 () Bool)

(declare-fun tp!648523 () Bool)

(assert (=> b!2120100 (= e!1349987 tp!648523)))

(declare-fun setIsEmpty!14661 () Bool)

(declare-fun setRes!14662 () Bool)

(assert (=> setIsEmpty!14661 setRes!14662))

(declare-fun setIsEmpty!14662 () Bool)

(declare-fun setRes!14661 () Bool)

(assert (=> setIsEmpty!14662 setRes!14661))

(declare-fun setNonEmpty!14661 () Bool)

(declare-fun tp!648520 () Bool)

(declare-fun setElem!14662 () Context!2450)

(declare-fun e!1349984 () Bool)

(assert (=> setNonEmpty!14661 (= setRes!14661 (and tp!648520 (inv!31247 setElem!14662) e!1349984))))

(declare-fun mapValue!11725 () List!23736)

(declare-fun setRest!14661 () (InoxSet Context!2450))

(assert (=> setNonEmpty!14661 (= (_2!13511 (h!29053 mapValue!11725)) ((_ map or) (store ((as const (Array Context!2450 Bool)) false) setElem!14662 true) setRest!14661))))

(declare-fun b!2120102 () Bool)

(declare-fun e!1349985 () Bool)

(declare-fun tp!648521 () Bool)

(assert (=> b!2120102 (= e!1349985 tp!648521)))

(declare-fun b!2120103 () Bool)

(declare-fun e!1349982 () Bool)

(declare-fun tp!648517 () Bool)

(assert (=> b!2120103 (= e!1349982 tp!648517)))

(declare-fun b!2120104 () Bool)

(declare-fun tp!648516 () Bool)

(assert (=> b!2120104 (= e!1349984 tp!648516)))

(declare-fun b!2120105 () Bool)

(declare-fun tp!648522 () Bool)

(declare-fun e!1349986 () Bool)

(assert (=> b!2120105 (= e!1349986 (and (inv!31247 (_1!13510 (_1!13511 (h!29053 mapValue!11725)))) e!1349982 tp_is_empty!9483 setRes!14661 tp!648522))))

(declare-fun condSetEmpty!14662 () Bool)

(assert (=> b!2120105 (= condSetEmpty!14662 (= (_2!13511 (h!29053 mapValue!11725)) ((as const (Array Context!2450 Bool)) false)))))

(declare-fun setElem!14661 () Context!2450)

(declare-fun setNonEmpty!14662 () Bool)

(declare-fun tp!648518 () Bool)

(assert (=> setNonEmpty!14662 (= setRes!14662 (and tp!648518 (inv!31247 setElem!14661) e!1349987))))

(declare-fun mapDefault!11725 () List!23736)

(declare-fun setRest!14662 () (InoxSet Context!2450))

(assert (=> setNonEmpty!14662 (= (_2!13511 (h!29053 mapDefault!11725)) ((_ map or) (store ((as const (Array Context!2450 Bool)) false) setElem!14661 true) setRest!14662))))

(declare-fun mapNonEmpty!11725 () Bool)

(declare-fun tp!648515 () Bool)

(assert (=> mapNonEmpty!11725 (= mapRes!11725 (and tp!648515 e!1349986))))

(declare-fun mapRest!11725 () (Array (_ BitVec 32) List!23736))

(declare-fun mapKey!11725 () (_ BitVec 32))

(assert (=> mapNonEmpty!11725 (= mapRest!11714 (store mapRest!11725 mapKey!11725 mapValue!11725))))

(declare-fun condMapEmpty!11725 () Bool)

(assert (=> mapNonEmpty!11715 (= condMapEmpty!11725 (= mapRest!11714 ((as const (Array (_ BitVec 32) List!23736)) mapDefault!11725)))))

(declare-fun e!1349983 () Bool)

(assert (=> mapNonEmpty!11715 (= tp!648379 (and e!1349983 mapRes!11725))))

(declare-fun tp!648519 () Bool)

(declare-fun b!2120101 () Bool)

(assert (=> b!2120101 (= e!1349983 (and (inv!31247 (_1!13510 (_1!13511 (h!29053 mapDefault!11725)))) e!1349985 tp_is_empty!9483 setRes!14662 tp!648519))))

(declare-fun condSetEmpty!14661 () Bool)

(assert (=> b!2120101 (= condSetEmpty!14661 (= (_2!13511 (h!29053 mapDefault!11725)) ((as const (Array Context!2450 Bool)) false)))))

(assert (= (and mapNonEmpty!11715 condMapEmpty!11725) mapIsEmpty!11725))

(assert (= (and mapNonEmpty!11715 (not condMapEmpty!11725)) mapNonEmpty!11725))

(assert (= b!2120105 b!2120103))

(assert (= (and b!2120105 condSetEmpty!14662) setIsEmpty!14662))

(assert (= (and b!2120105 (not condSetEmpty!14662)) setNonEmpty!14661))

(assert (= setNonEmpty!14661 b!2120104))

(assert (= (and mapNonEmpty!11725 ((_ is Cons!23652) mapValue!11725)) b!2120105))

(assert (= b!2120101 b!2120102))

(assert (= (and b!2120101 condSetEmpty!14661) setIsEmpty!14661))

(assert (= (and b!2120101 (not condSetEmpty!14661)) setNonEmpty!14662))

(assert (= setNonEmpty!14662 b!2120100))

(assert (= (and mapNonEmpty!11715 ((_ is Cons!23652) mapDefault!11725)) b!2120101))

(declare-fun m!2574517 () Bool)

(assert (=> b!2120105 m!2574517))

(declare-fun m!2574519 () Bool)

(assert (=> mapNonEmpty!11725 m!2574519))

(declare-fun m!2574521 () Bool)

(assert (=> setNonEmpty!14662 m!2574521))

(declare-fun m!2574523 () Bool)

(assert (=> setNonEmpty!14661 m!2574523))

(declare-fun m!2574525 () Bool)

(assert (=> b!2120101 m!2574525))

(declare-fun b!2120106 () Bool)

(declare-fun e!1349989 () Bool)

(declare-fun tp!648527 () Bool)

(assert (=> b!2120106 (= e!1349989 tp!648527)))

(declare-fun e!1349988 () Bool)

(assert (=> mapNonEmpty!11715 (= tp!648359 e!1349988)))

(declare-fun setElem!14663 () Context!2450)

(declare-fun setNonEmpty!14663 () Bool)

(declare-fun setRes!14663 () Bool)

(declare-fun tp!648525 () Bool)

(declare-fun e!1349990 () Bool)

(assert (=> setNonEmpty!14663 (= setRes!14663 (and tp!648525 (inv!31247 setElem!14663) e!1349990))))

(declare-fun setRest!14663 () (InoxSet Context!2450))

(assert (=> setNonEmpty!14663 (= (_2!13511 (h!29053 mapValue!11715)) ((_ map or) (store ((as const (Array Context!2450 Bool)) false) setElem!14663 true) setRest!14663))))

(declare-fun b!2120107 () Bool)

(declare-fun tp!648526 () Bool)

(assert (=> b!2120107 (= e!1349990 tp!648526)))

(declare-fun b!2120108 () Bool)

(declare-fun tp!648524 () Bool)

(assert (=> b!2120108 (= e!1349988 (and (inv!31247 (_1!13510 (_1!13511 (h!29053 mapValue!11715)))) e!1349989 tp_is_empty!9483 setRes!14663 tp!648524))))

(declare-fun condSetEmpty!14663 () Bool)

(assert (=> b!2120108 (= condSetEmpty!14663 (= (_2!13511 (h!29053 mapValue!11715)) ((as const (Array Context!2450 Bool)) false)))))

(declare-fun setIsEmpty!14663 () Bool)

(assert (=> setIsEmpty!14663 setRes!14663))

(assert (= b!2120108 b!2120106))

(assert (= (and b!2120108 condSetEmpty!14663) setIsEmpty!14663))

(assert (= (and b!2120108 (not condSetEmpty!14663)) setNonEmpty!14663))

(assert (= setNonEmpty!14663 b!2120107))

(assert (= (and mapNonEmpty!11715 ((_ is Cons!23652) mapValue!11715)) b!2120108))

(declare-fun m!2574527 () Bool)

(assert (=> setNonEmpty!14663 m!2574527))

(declare-fun m!2574529 () Bool)

(assert (=> b!2120108 m!2574529))

(declare-fun condSetEmpty!14666 () Bool)

(assert (=> setNonEmpty!14632 (= condSetEmpty!14666 (= setRest!14632 ((as const (Array Context!2450 Bool)) false)))))

(declare-fun setRes!14666 () Bool)

(assert (=> setNonEmpty!14632 (= tp!648355 setRes!14666)))

(declare-fun setIsEmpty!14666 () Bool)

(assert (=> setIsEmpty!14666 setRes!14666))

(declare-fun tp!648533 () Bool)

(declare-fun e!1349993 () Bool)

(declare-fun setNonEmpty!14666 () Bool)

(declare-fun setElem!14666 () Context!2450)

(assert (=> setNonEmpty!14666 (= setRes!14666 (and tp!648533 (inv!31247 setElem!14666) e!1349993))))

(declare-fun setRest!14666 () (InoxSet Context!2450))

(assert (=> setNonEmpty!14666 (= setRest!14632 ((_ map or) (store ((as const (Array Context!2450 Bool)) false) setElem!14666 true) setRest!14666))))

(declare-fun b!2120113 () Bool)

(declare-fun tp!648532 () Bool)

(assert (=> b!2120113 (= e!1349993 tp!648532)))

(assert (= (and setNonEmpty!14632 condSetEmpty!14666) setIsEmpty!14666))

(assert (= (and setNonEmpty!14632 (not condSetEmpty!14666)) setNonEmpty!14666))

(assert (= setNonEmpty!14666 b!2120113))

(declare-fun m!2574531 () Bool)

(assert (=> setNonEmpty!14666 m!2574531))

(declare-fun e!1349995 () Bool)

(declare-fun setRes!14667 () Bool)

(declare-fun tp!648535 () Bool)

(declare-fun e!1349996 () Bool)

(declare-fun tp!648536 () Bool)

(declare-fun b!2120115 () Bool)

(assert (=> b!2120115 (= e!1349995 (and tp!648536 (inv!31247 (_2!13508 (_1!13509 (h!29051 mapDefault!11715)))) e!1349996 tp_is_empty!9483 setRes!14667 tp!648535))))

(declare-fun condSetEmpty!14667 () Bool)

(assert (=> b!2120115 (= condSetEmpty!14667 (= (_2!13509 (h!29051 mapDefault!11715)) ((as const (Array Context!2450 Bool)) false)))))

(declare-fun b!2120116 () Bool)

(declare-fun e!1349994 () Bool)

(declare-fun tp!648534 () Bool)

(assert (=> b!2120116 (= e!1349994 tp!648534)))

(declare-fun setNonEmpty!14667 () Bool)

(declare-fun setElem!14667 () Context!2450)

(declare-fun tp!648538 () Bool)

(assert (=> setNonEmpty!14667 (= setRes!14667 (and tp!648538 (inv!31247 setElem!14667) e!1349994))))

(declare-fun setRest!14667 () (InoxSet Context!2450))

(assert (=> setNonEmpty!14667 (= (_2!13509 (h!29051 mapDefault!11715)) ((_ map or) (store ((as const (Array Context!2450 Bool)) false) setElem!14667 true) setRest!14667))))

(declare-fun setIsEmpty!14667 () Bool)

(assert (=> setIsEmpty!14667 setRes!14667))

(assert (=> b!2119948 (= tp!648378 e!1349995)))

(declare-fun b!2120114 () Bool)

(declare-fun tp!648537 () Bool)

(assert (=> b!2120114 (= e!1349996 tp!648537)))

(assert (= b!2120115 b!2120114))

(assert (= (and b!2120115 condSetEmpty!14667) setIsEmpty!14667))

(assert (= (and b!2120115 (not condSetEmpty!14667)) setNonEmpty!14667))

(assert (= setNonEmpty!14667 b!2120116))

(assert (= (and b!2119948 ((_ is Cons!23650) mapDefault!11715)) b!2120115))

(declare-fun m!2574533 () Bool)

(assert (=> b!2120115 m!2574533))

(declare-fun m!2574535 () Bool)

(assert (=> setNonEmpty!14667 m!2574535))

(declare-fun setIsEmpty!14668 () Bool)

(declare-fun setRes!14668 () Bool)

(assert (=> setIsEmpty!14668 setRes!14668))

(declare-fun setElem!14668 () Context!2450)

(declare-fun tp!648540 () Bool)

(declare-fun e!1349997 () Bool)

(declare-fun setNonEmpty!14668 () Bool)

(assert (=> setNonEmpty!14668 (= setRes!14668 (and tp!648540 (inv!31247 setElem!14668) e!1349997))))

(declare-fun setRest!14668 () (InoxSet Context!2450))

(assert (=> setNonEmpty!14668 (= (_1!13512 (_1!13513 (h!29054 (zeroValue!2686 (v!28187 (underlying!5051 (v!28188 (underlying!5052 (cache!2723 cacheFurthestNullable!130))))))))) ((_ map or) (store ((as const (Array Context!2450 Bool)) false) setElem!14668 true) setRest!14668))))

(declare-fun b!2120117 () Bool)

(declare-fun e!1349998 () Bool)

(declare-fun tp!648539 () Bool)

(assert (=> b!2120117 (= e!1349998 (and setRes!14668 tp!648539))))

(declare-fun condSetEmpty!14668 () Bool)

(assert (=> b!2120117 (= condSetEmpty!14668 (= (_1!13512 (_1!13513 (h!29054 (zeroValue!2686 (v!28187 (underlying!5051 (v!28188 (underlying!5052 (cache!2723 cacheFurthestNullable!130))))))))) ((as const (Array Context!2450 Bool)) false)))))

(assert (=> b!2119923 (= tp!648380 e!1349998)))

(declare-fun b!2120118 () Bool)

(declare-fun tp!648541 () Bool)

(assert (=> b!2120118 (= e!1349997 tp!648541)))

(assert (= (and b!2120117 condSetEmpty!14668) setIsEmpty!14668))

(assert (= (and b!2120117 (not condSetEmpty!14668)) setNonEmpty!14668))

(assert (= setNonEmpty!14668 b!2120118))

(assert (= (and b!2119923 ((_ is Cons!23653) (zeroValue!2686 (v!28187 (underlying!5051 (v!28188 (underlying!5052 (cache!2723 cacheFurthestNullable!130)))))))) b!2120117))

(declare-fun m!2574537 () Bool)

(assert (=> setNonEmpty!14668 m!2574537))

(declare-fun setIsEmpty!14669 () Bool)

(declare-fun setRes!14669 () Bool)

(assert (=> setIsEmpty!14669 setRes!14669))

(declare-fun setElem!14669 () Context!2450)

(declare-fun tp!648543 () Bool)

(declare-fun e!1349999 () Bool)

(declare-fun setNonEmpty!14669 () Bool)

(assert (=> setNonEmpty!14669 (= setRes!14669 (and tp!648543 (inv!31247 setElem!14669) e!1349999))))

(declare-fun setRest!14669 () (InoxSet Context!2450))

(assert (=> setNonEmpty!14669 (= (_1!13512 (_1!13513 (h!29054 (minValue!2686 (v!28187 (underlying!5051 (v!28188 (underlying!5052 (cache!2723 cacheFurthestNullable!130))))))))) ((_ map or) (store ((as const (Array Context!2450 Bool)) false) setElem!14669 true) setRest!14669))))

(declare-fun b!2120119 () Bool)

(declare-fun e!1350000 () Bool)

(declare-fun tp!648542 () Bool)

(assert (=> b!2120119 (= e!1350000 (and setRes!14669 tp!648542))))

(declare-fun condSetEmpty!14669 () Bool)

(assert (=> b!2120119 (= condSetEmpty!14669 (= (_1!13512 (_1!13513 (h!29054 (minValue!2686 (v!28187 (underlying!5051 (v!28188 (underlying!5052 (cache!2723 cacheFurthestNullable!130))))))))) ((as const (Array Context!2450 Bool)) false)))))

(assert (=> b!2119923 (= tp!648377 e!1350000)))

(declare-fun b!2120120 () Bool)

(declare-fun tp!648544 () Bool)

(assert (=> b!2120120 (= e!1349999 tp!648544)))

(assert (= (and b!2120119 condSetEmpty!14669) setIsEmpty!14669))

(assert (= (and b!2120119 (not condSetEmpty!14669)) setNonEmpty!14669))

(assert (= setNonEmpty!14669 b!2120120))

(assert (= (and b!2119923 ((_ is Cons!23653) (minValue!2686 (v!28187 (underlying!5051 (v!28188 (underlying!5052 (cache!2723 cacheFurthestNullable!130)))))))) b!2120119))

(declare-fun m!2574539 () Bool)

(assert (=> setNonEmpty!14669 m!2574539))

(declare-fun b!2120125 () Bool)

(declare-fun e!1350003 () Bool)

(declare-fun tp!648549 () Bool)

(declare-fun tp!648550 () Bool)

(assert (=> b!2120125 (= e!1350003 (and tp!648549 tp!648550))))

(assert (=> b!2119940 (= tp!648374 e!1350003)))

(assert (= (and b!2119940 ((_ is Cons!23649) (exprs!1725 setElem!14632))) b!2120125))

(declare-fun b!2120126 () Bool)

(declare-fun tp!648551 () Bool)

(declare-fun e!1350005 () Bool)

(declare-fun tp!648552 () Bool)

(assert (=> b!2120126 (= e!1350005 (and (inv!31242 (left!18302 (c!339658 (totalInput!2889 cacheFurthestNullable!130)))) tp!648552 (inv!31242 (right!18632 (c!339658 (totalInput!2889 cacheFurthestNullable!130)))) tp!648551))))

(declare-fun b!2120128 () Bool)

(declare-fun e!1350004 () Bool)

(declare-fun tp!648553 () Bool)

(assert (=> b!2120128 (= e!1350004 tp!648553)))

(declare-fun b!2120127 () Bool)

(assert (=> b!2120127 (= e!1350005 (and (inv!31250 (xs!10736 (c!339658 (totalInput!2889 cacheFurthestNullable!130)))) e!1350004))))

(assert (=> b!2119939 (= tp!648366 (and (inv!31242 (c!339658 (totalInput!2889 cacheFurthestNullable!130))) e!1350005))))

(assert (= (and b!2119939 ((_ is Node!7794) (c!339658 (totalInput!2889 cacheFurthestNullable!130)))) b!2120126))

(assert (= b!2120127 b!2120128))

(assert (= (and b!2119939 ((_ is Leaf!11389) (c!339658 (totalInput!2889 cacheFurthestNullable!130)))) b!2120127))

(declare-fun m!2574541 () Bool)

(assert (=> b!2120126 m!2574541))

(declare-fun m!2574543 () Bool)

(assert (=> b!2120126 m!2574543))

(declare-fun m!2574545 () Bool)

(assert (=> b!2120127 m!2574545))

(assert (=> b!2119939 m!2574405))

(declare-fun setIsEmpty!14670 () Bool)

(declare-fun setRes!14670 () Bool)

(assert (=> setIsEmpty!14670 setRes!14670))

(declare-fun setElem!14670 () Context!2450)

(declare-fun e!1350006 () Bool)

(declare-fun setNonEmpty!14670 () Bool)

(declare-fun tp!648555 () Bool)

(assert (=> setNonEmpty!14670 (= setRes!14670 (and tp!648555 (inv!31247 setElem!14670) e!1350006))))

(declare-fun setRest!14670 () (InoxSet Context!2450))

(assert (=> setNonEmpty!14670 (= (_1!13512 (_1!13513 (h!29054 mapDefault!11716))) ((_ map or) (store ((as const (Array Context!2450 Bool)) false) setElem!14670 true) setRest!14670))))

(declare-fun b!2120129 () Bool)

(declare-fun e!1350007 () Bool)

(declare-fun tp!648554 () Bool)

(assert (=> b!2120129 (= e!1350007 (and setRes!14670 tp!648554))))

(declare-fun condSetEmpty!14670 () Bool)

(assert (=> b!2120129 (= condSetEmpty!14670 (= (_1!13512 (_1!13513 (h!29054 mapDefault!11716))) ((as const (Array Context!2450 Bool)) false)))))

(assert (=> b!2119927 (= tp!648363 e!1350007)))

(declare-fun b!2120130 () Bool)

(declare-fun tp!648556 () Bool)

(assert (=> b!2120130 (= e!1350006 tp!648556)))

(assert (= (and b!2120129 condSetEmpty!14670) setIsEmpty!14670))

(assert (= (and b!2120129 (not condSetEmpty!14670)) setNonEmpty!14670))

(assert (= setNonEmpty!14670 b!2120130))

(assert (= (and b!2119927 ((_ is Cons!23653) mapDefault!11716)) b!2120129))

(declare-fun m!2574547 () Bool)

(assert (=> setNonEmpty!14670 m!2574547))

(declare-fun b!2120131 () Bool)

(declare-fun e!1350009 () Bool)

(declare-fun tp!648560 () Bool)

(assert (=> b!2120131 (= e!1350009 tp!648560)))

(declare-fun e!1350008 () Bool)

(assert (=> b!2119946 (= tp!648369 e!1350008)))

(declare-fun setElem!14671 () Context!2450)

(declare-fun e!1350010 () Bool)

(declare-fun tp!648558 () Bool)

(declare-fun setRes!14671 () Bool)

(declare-fun setNonEmpty!14671 () Bool)

(assert (=> setNonEmpty!14671 (= setRes!14671 (and tp!648558 (inv!31247 setElem!14671) e!1350010))))

(declare-fun setRest!14671 () (InoxSet Context!2450))

(assert (=> setNonEmpty!14671 (= (_2!13511 (h!29053 mapDefault!11714)) ((_ map or) (store ((as const (Array Context!2450 Bool)) false) setElem!14671 true) setRest!14671))))

(declare-fun b!2120132 () Bool)

(declare-fun tp!648559 () Bool)

(assert (=> b!2120132 (= e!1350010 tp!648559)))

(declare-fun b!2120133 () Bool)

(declare-fun tp!648557 () Bool)

(assert (=> b!2120133 (= e!1350008 (and (inv!31247 (_1!13510 (_1!13511 (h!29053 mapDefault!11714)))) e!1350009 tp_is_empty!9483 setRes!14671 tp!648557))))

(declare-fun condSetEmpty!14671 () Bool)

(assert (=> b!2120133 (= condSetEmpty!14671 (= (_2!13511 (h!29053 mapDefault!11714)) ((as const (Array Context!2450 Bool)) false)))))

(declare-fun setIsEmpty!14671 () Bool)

(assert (=> setIsEmpty!14671 setRes!14671))

(assert (= b!2120133 b!2120131))

(assert (= (and b!2120133 condSetEmpty!14671) setIsEmpty!14671))

(assert (= (and b!2120133 (not condSetEmpty!14671)) setNonEmpty!14671))

(assert (= setNonEmpty!14671 b!2120132))

(assert (= (and b!2119946 ((_ is Cons!23652) mapDefault!11714)) b!2120133))

(declare-fun m!2574549 () Bool)

(assert (=> setNonEmpty!14671 m!2574549))

(declare-fun m!2574551 () Bool)

(assert (=> b!2120133 m!2574551))

(declare-fun b_lambda!70447 () Bool)

(assert (= b_lambda!70445 (or b!2119934 b_lambda!70447)))

(declare-fun bs!442658 () Bool)

(declare-fun d!643323 () Bool)

(assert (= bs!442658 (and d!643323 b!2119934)))

(assert (=> bs!442658 (= (dynLambda!11304 lambda!78456 (h!29055 Nil!23654)) (= (res!918802 (h!29055 Nil!23654)) lt!794604))))

(assert (=> b!2119967 d!643323))

(check-sat (not setNonEmpty!14671) (not b!2120079) (not b!2120085) (not b!2120103) (not d!643295) (not b!2120083) (not d!643275) b_and!171101 (not mapNonEmpty!11722) (not setNonEmpty!14638) (not d!643273) (not b!2120019) (not b!2119996) (not b!2120125) (not b!2119998) b_and!171107 (not b!2120077) (not setNonEmpty!14656) (not b!2120010) (not mapNonEmpty!11719) (not setNonEmpty!14655) (not b!2120101) (not b!2120012) (not b!2120106) (not setNonEmpty!14669) (not b!2120051) (not setNonEmpty!14670) (not d!643321) (not b!2120113) (not b!2120078) (not b!2120118) (not b_next!62231) (not setNonEmpty!14641) (not d!643297) (not b_next!62223) (not b!2120049) (not b!2119960) (not b!2120060) (not setNonEmpty!14653) (not setNonEmpty!14663) (not b!2119995) b_and!171097 (not b!2120116) (not b!2120038) (not b!2120119) (not setNonEmpty!14646) (not setNonEmpty!14647) (not b!2120114) (not b!2119919) (not b!2119992) (not b_next!62229) (not d!643309) (not b!2120100) (not b!2119943) (not setNonEmpty!14654) (not setNonEmpty!14637) (not setNonEmpty!14650) (not b!2120104) (not d!643307) (not setNonEmpty!14662) b_and!171103 (not b!2120107) (not b!2120130) (not b!2120081) (not b!2120039) (not b!2120020) (not b!2120040) (not b!2120074) (not b!2120063) (not setNonEmpty!14661) (not b!2120011) (not b!2119957) b_and!171105 tp_is_empty!9483 (not b!2120102) (not b_next!62225) b_and!171099 (not b!2119986) (not b!2120105) (not b!2120117) (not b!2120062) (not b!2120120) (not d!643269) (not b_next!62221) (not setNonEmpty!14668) (not b!2120131) (not b!2120064) (not b!2120009) (not d!643317) (not d!643271) (not b!2119962) (not b!2119959) (not b!2120076) (not setNonEmpty!14667) (not b!2120132) (not b!2120082) (not d!643299) (not b!2120133) (not b!2119981) (not b!2119989) (not d!643311) (not b!2120126) (not b_lambda!70447) (not b!2120080) (not b!2120108) (not b!2119979) (not b!2120050) (not b!2120084) (not b!2120037) (not b!2120129) (not mapNonEmpty!11725) (not d!643293) (not b!2120065) (not setNonEmpty!14666) (not b!2119968) (not b!2120061) (not b!2119939) (not b!2120036) (not b!2120128) (not b!2120127) (not b!2120035) (not b!2120115) (not b!2120075) (not b_next!62227))
(check-sat b_and!171101 b_and!171107 (not b_next!62231) (not b_next!62223) b_and!171097 (not b_next!62229) b_and!171103 (not b_next!62221) (not b_next!62227) b_and!171105 (not b_next!62225) b_and!171099)
