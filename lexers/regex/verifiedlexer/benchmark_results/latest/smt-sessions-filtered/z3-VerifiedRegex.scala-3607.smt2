; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207430 () Bool)

(assert start!207430)

(declare-fun b!2127095 () Bool)

(declare-fun b_free!61829 () Bool)

(declare-fun b_next!62533 () Bool)

(assert (=> b!2127095 (= b_free!61829 (not b_next!62533))))

(declare-fun tp!652531 () Bool)

(declare-fun b_and!171409 () Bool)

(assert (=> b!2127095 (= tp!652531 b_and!171409)))

(declare-fun b!2127077 () Bool)

(declare-fun b_free!61831 () Bool)

(declare-fun b_next!62535 () Bool)

(assert (=> b!2127077 (= b_free!61831 (not b_next!62535))))

(declare-fun tp!652553 () Bool)

(declare-fun b_and!171411 () Bool)

(assert (=> b!2127077 (= tp!652553 b_and!171411)))

(declare-fun b!2127088 () Bool)

(declare-fun b_free!61833 () Bool)

(declare-fun b_next!62537 () Bool)

(assert (=> b!2127088 (= b_free!61833 (not b_next!62537))))

(declare-fun tp!652537 () Bool)

(declare-fun b_and!171413 () Bool)

(assert (=> b!2127088 (= tp!652537 b_and!171413)))

(declare-fun b!2127068 () Bool)

(declare-fun b_free!61835 () Bool)

(declare-fun b_next!62539 () Bool)

(assert (=> b!2127068 (= b_free!61835 (not b_next!62539))))

(declare-fun tp!652539 () Bool)

(declare-fun b_and!171415 () Bool)

(assert (=> b!2127068 (= tp!652539 b_and!171415)))

(declare-fun b!2127096 () Bool)

(declare-fun b_free!61837 () Bool)

(declare-fun b_next!62541 () Bool)

(assert (=> b!2127096 (= b_free!61837 (not b_next!62541))))

(declare-fun tp!652541 () Bool)

(declare-fun b_and!171417 () Bool)

(assert (=> b!2127096 (= tp!652541 b_and!171417)))

(declare-fun b!2127073 () Bool)

(declare-fun b_free!61839 () Bool)

(declare-fun b_next!62543 () Bool)

(assert (=> b!2127073 (= b_free!61839 (not b_next!62543))))

(declare-fun tp!652545 () Bool)

(declare-fun b_and!171419 () Bool)

(assert (=> b!2127073 (= tp!652545 b_and!171419)))

(declare-fun b!2127066 () Bool)

(declare-fun e!1355784 () Bool)

(declare-datatypes ((C!11508 0))(
  ( (C!11509 (val!6740 Int)) )
))
(declare-datatypes ((List!23874 0))(
  ( (Nil!23790) (Cons!23790 (h!29191 C!11508) (t!196402 List!23874)) )
))
(declare-datatypes ((IArray!15643 0))(
  ( (IArray!15644 (innerList!7879 List!23874)) )
))
(declare-datatypes ((Conc!7819 0))(
  ( (Node!7819 (left!18384 Conc!7819) (right!18714 Conc!7819) (csize!15868 Int) (cheight!8030 Int)) (Leaf!11427 (xs!10761 IArray!15643) (csize!15869 Int)) (Empty!7819) )
))
(declare-datatypes ((BalanceConc!15400 0))(
  ( (BalanceConc!15401 (c!340110 Conc!7819)) )
))
(declare-fun totalInput!851 () BalanceConc!15400)

(declare-fun tp!652542 () Bool)

(declare-fun inv!31394 (Conc!7819) Bool)

(assert (=> b!2127066 (= e!1355784 (and (inv!31394 (c!340110 totalInput!851)) tp!652542))))

(declare-fun b!2127067 () Bool)

(declare-fun res!920099 () Bool)

(declare-fun e!1355774 () Bool)

(assert (=> b!2127067 (=> (not res!920099) (not e!1355774))))

(declare-fun totalInputSize!296 () Int)

(declare-fun size!18603 (BalanceConc!15400) Int)

(assert (=> b!2127067 (= res!920099 (= totalInputSize!296 (size!18603 totalInput!851)))))

(declare-fun mapIsEmpty!12223 () Bool)

(declare-fun mapRes!12223 () Bool)

(assert (=> mapIsEmpty!12223 mapRes!12223))

(declare-fun mapNonEmpty!12223 () Bool)

(declare-fun mapRes!12224 () Bool)

(declare-fun tp!652538 () Bool)

(declare-fun tp!652547 () Bool)

(assert (=> mapNonEmpty!12223 (= mapRes!12224 (and tp!652538 tp!652547))))

(declare-fun mapKey!12223 () (_ BitVec 32))

(declare-datatypes ((Regex!5681 0))(
  ( (ElementMatch!5681 (c!340111 C!11508)) (Concat!9983 (regOne!11874 Regex!5681) (regTwo!11874 Regex!5681)) (EmptyExpr!5681) (Star!5681 (reg!6010 Regex!5681)) (EmptyLang!5681) (Union!5681 (regOne!11875 Regex!5681) (regTwo!11875 Regex!5681)) )
))
(declare-datatypes ((List!23875 0))(
  ( (Nil!23791) (Cons!23791 (h!29192 Regex!5681) (t!196403 List!23875)) )
))
(declare-datatypes ((Context!2502 0))(
  ( (Context!2503 (exprs!1751 List!23875)) )
))
(declare-datatypes ((tuple2!23460 0))(
  ( (tuple2!23461 (_1!13695 Context!2502) (_2!13695 C!11508)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!23462 0))(
  ( (tuple2!23463 (_1!13696 tuple2!23460) (_2!13696 (InoxSet Context!2502))) )
))
(declare-datatypes ((List!23876 0))(
  ( (Nil!23792) (Cons!23792 (h!29193 tuple2!23462) (t!196404 List!23876)) )
))
(declare-fun mapValue!12224 () List!23876)

(declare-fun mapRest!12223 () (Array (_ BitVec 32) List!23876))

(declare-datatypes ((array!8561 0))(
  ( (array!8562 (arr!3794 (Array (_ BitVec 32) (_ BitVec 64))) (size!18604 (_ BitVec 32))) )
))
(declare-datatypes ((array!8563 0))(
  ( (array!8564 (arr!3795 (Array (_ BitVec 32) List!23876)) (size!18605 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4984 0))(
  ( (LongMapFixedSize!4985 (defaultEntry!2857 Int) (mask!6648 (_ BitVec 32)) (extraKeys!2740 (_ BitVec 32)) (zeroValue!2750 List!23876) (minValue!2750 List!23876) (_size!5035 (_ BitVec 32)) (_keys!2789 array!8561) (_values!2772 array!8563) (_vacant!2553 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9793 0))(
  ( (Cell!9794 (v!28324 LongMapFixedSize!4984)) )
))
(declare-datatypes ((MutLongMap!2492 0))(
  ( (LongMap!2492 (underlying!5179 Cell!9793)) (MutLongMapExt!2491 (__x!15652 Int)) )
))
(declare-datatypes ((Cell!9795 0))(
  ( (Cell!9796 (v!28325 MutLongMap!2492)) )
))
(declare-datatypes ((Hashable!2406 0))(
  ( (HashableExt!2405 (__x!15653 Int)) )
))
(declare-datatypes ((MutableMap!2406 0))(
  ( (MutableMapExt!2405 (__x!15654 Int)) (HashMap!2406 (underlying!5180 Cell!9795) (hashF!4329 Hashable!2406) (_size!5036 (_ BitVec 32)) (defaultValue!2568 Int)) )
))
(declare-datatypes ((CacheUp!1670 0))(
  ( (CacheUp!1671 (cache!2787 MutableMap!2406)) )
))
(declare-fun cacheUp!979 () CacheUp!1670)

(assert (=> mapNonEmpty!12223 (= (arr!3795 (_values!2772 (v!28324 (underlying!5179 (v!28325 (underlying!5180 (cache!2787 cacheUp!979))))))) (store mapRest!12223 mapKey!12223 mapValue!12224))))

(declare-fun e!1355797 () Bool)

(declare-fun tp!652551 () Bool)

(declare-fun e!1355799 () Bool)

(declare-fun tp!652532 () Bool)

(declare-fun array_inv!2713 (array!8561) Bool)

(declare-fun array_inv!2714 (array!8563) Bool)

(assert (=> b!2127068 (= e!1355797 (and tp!652539 tp!652532 tp!652551 (array_inv!2713 (_keys!2789 (v!28324 (underlying!5179 (v!28325 (underlying!5180 (cache!2787 cacheUp!979))))))) (array_inv!2714 (_values!2772 (v!28324 (underlying!5179 (v!28325 (underlying!5180 (cache!2787 cacheUp!979))))))) e!1355799))))

(declare-fun b!2127069 () Bool)

(declare-fun e!1355778 () Bool)

(declare-fun e!1355792 () Bool)

(assert (=> b!2127069 (= e!1355778 e!1355792)))

(declare-fun res!920101 () Bool)

(assert (=> start!207430 (=> (not res!920101) (not e!1355774))))

(declare-fun from!1043 () Int)

(assert (=> start!207430 (= res!920101 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!207430 e!1355774))

(declare-datatypes ((tuple3!2990 0))(
  ( (tuple3!2991 (_1!13697 (InoxSet Context!2502)) (_2!13697 Int) (_3!1965 Int)) )
))
(declare-datatypes ((tuple2!23464 0))(
  ( (tuple2!23465 (_1!13698 tuple3!2990) (_2!13698 Int)) )
))
(declare-datatypes ((List!23877 0))(
  ( (Nil!23793) (Cons!23793 (h!29194 tuple2!23464) (t!196405 List!23877)) )
))
(declare-datatypes ((array!8565 0))(
  ( (array!8566 (arr!3796 (Array (_ BitVec 32) List!23877)) (size!18606 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4986 0))(
  ( (LongMapFixedSize!4987 (defaultEntry!2858 Int) (mask!6649 (_ BitVec 32)) (extraKeys!2741 (_ BitVec 32)) (zeroValue!2751 List!23877) (minValue!2751 List!23877) (_size!5037 (_ BitVec 32)) (_keys!2790 array!8561) (_values!2773 array!8565) (_vacant!2554 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9797 0))(
  ( (Cell!9798 (v!28326 LongMapFixedSize!4986)) )
))
(declare-datatypes ((MutLongMap!2493 0))(
  ( (LongMap!2493 (underlying!5181 Cell!9797)) (MutLongMapExt!2492 (__x!15655 Int)) )
))
(declare-datatypes ((Cell!9799 0))(
  ( (Cell!9800 (v!28327 MutLongMap!2493)) )
))
(declare-datatypes ((Hashable!2407 0))(
  ( (HashableExt!2406 (__x!15656 Int)) )
))
(declare-datatypes ((MutableMap!2407 0))(
  ( (MutableMapExt!2406 (__x!15657 Int)) (HashMap!2407 (underlying!5182 Cell!9799) (hashF!4330 Hashable!2407) (_size!5038 (_ BitVec 32)) (defaultValue!2569 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!610 0))(
  ( (CacheFurthestNullable!611 (cache!2788 MutableMap!2407) (totalInput!2944 BalanceConc!15400)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!610)

(declare-fun e!1355785 () Bool)

(declare-fun inv!31395 (CacheFurthestNullable!610) Bool)

(assert (=> start!207430 (and (inv!31395 cacheFurthestNullable!114) e!1355785)))

(assert (=> start!207430 true))

(declare-datatypes ((tuple3!2992 0))(
  ( (tuple3!2993 (_1!13699 Regex!5681) (_2!13699 Context!2502) (_3!1966 C!11508)) )
))
(declare-datatypes ((tuple2!23466 0))(
  ( (tuple2!23467 (_1!13700 tuple3!2992) (_2!13700 (InoxSet Context!2502))) )
))
(declare-datatypes ((List!23878 0))(
  ( (Nil!23794) (Cons!23794 (h!29195 tuple2!23466) (t!196406 List!23878)) )
))
(declare-datatypes ((Hashable!2408 0))(
  ( (HashableExt!2407 (__x!15658 Int)) )
))
(declare-datatypes ((array!8567 0))(
  ( (array!8568 (arr!3797 (Array (_ BitVec 32) List!23878)) (size!18607 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4988 0))(
  ( (LongMapFixedSize!4989 (defaultEntry!2859 Int) (mask!6650 (_ BitVec 32)) (extraKeys!2742 (_ BitVec 32)) (zeroValue!2752 List!23878) (minValue!2752 List!23878) (_size!5039 (_ BitVec 32)) (_keys!2791 array!8561) (_values!2774 array!8567) (_vacant!2555 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9801 0))(
  ( (Cell!9802 (v!28328 LongMapFixedSize!4988)) )
))
(declare-datatypes ((MutLongMap!2494 0))(
  ( (LongMap!2494 (underlying!5183 Cell!9801)) (MutLongMapExt!2493 (__x!15659 Int)) )
))
(declare-datatypes ((Cell!9803 0))(
  ( (Cell!9804 (v!28329 MutLongMap!2494)) )
))
(declare-datatypes ((MutableMap!2408 0))(
  ( (MutableMapExt!2407 (__x!15660 Int)) (HashMap!2408 (underlying!5184 Cell!9803) (hashF!4331 Hashable!2408) (_size!5040 (_ BitVec 32)) (defaultValue!2570 Int)) )
))
(declare-datatypes ((CacheDown!1656 0))(
  ( (CacheDown!1657 (cache!2789 MutableMap!2408)) )
))
(declare-fun cacheDown!1098 () CacheDown!1656)

(declare-fun e!1355786 () Bool)

(declare-fun inv!31396 (CacheDown!1656) Bool)

(assert (=> start!207430 (and (inv!31396 cacheDown!1098) e!1355786)))

(declare-fun e!1355800 () Bool)

(declare-fun inv!31397 (CacheUp!1670) Bool)

(assert (=> start!207430 (and (inv!31397 cacheUp!979) e!1355800)))

(declare-fun condSetEmpty!15516 () Bool)

(declare-fun z!3839 () (InoxSet Context!2502))

(assert (=> start!207430 (= condSetEmpty!15516 (= z!3839 ((as const (Array Context!2502 Bool)) false)))))

(declare-fun setRes!15516 () Bool)

(assert (=> start!207430 setRes!15516))

(declare-fun inv!31398 (BalanceConc!15400) Bool)

(assert (=> start!207430 (and (inv!31398 totalInput!851) e!1355784)))

(declare-fun b!2127070 () Bool)

(declare-fun res!920097 () Bool)

(assert (=> b!2127070 (=> (not res!920097) (not e!1355774))))

(declare-fun valid!1962 (CacheUp!1670) Bool)

(assert (=> b!2127070 (= res!920097 (valid!1962 cacheUp!979))))

(declare-fun b!2127071 () Bool)

(declare-fun e!1355781 () Bool)

(declare-fun lastNullablePos!123 () Int)

(assert (=> b!2127071 (= e!1355781 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun b!2127072 () Bool)

(declare-fun e!1355775 () Bool)

(declare-fun tp!652550 () Bool)

(assert (=> b!2127072 (= e!1355775 tp!652550)))

(declare-fun e!1355776 () Bool)

(declare-fun e!1355796 () Bool)

(assert (=> b!2127073 (= e!1355776 (and e!1355796 tp!652545))))

(declare-fun mapNonEmpty!12224 () Bool)

(declare-fun mapRes!12225 () Bool)

(declare-fun tp!652548 () Bool)

(declare-fun tp!652534 () Bool)

(assert (=> mapNonEmpty!12224 (= mapRes!12225 (and tp!652548 tp!652534))))

(declare-fun mapKey!12224 () (_ BitVec 32))

(declare-fun mapValue!12225 () List!23877)

(declare-fun mapRest!12225 () (Array (_ BitVec 32) List!23877))

(assert (=> mapNonEmpty!12224 (= (arr!3796 (_values!2773 (v!28326 (underlying!5181 (v!28327 (underlying!5182 (cache!2788 cacheFurthestNullable!114))))))) (store mapRest!12225 mapKey!12224 mapValue!12225))))

(declare-fun b!2127074 () Bool)

(declare-fun e!1355795 () Bool)

(declare-fun lt!795943 () MutLongMap!2494)

(get-info :version)

(assert (=> b!2127074 (= e!1355796 (and e!1355795 ((_ is LongMap!2494) lt!795943)))))

(assert (=> b!2127074 (= lt!795943 (v!28329 (underlying!5184 (cache!2789 cacheDown!1098))))))

(declare-fun b!2127075 () Bool)

(declare-fun e!1355798 () Bool)

(declare-fun e!1355794 () Bool)

(assert (=> b!2127075 (= e!1355798 e!1355794)))

(declare-fun e!1355783 () Bool)

(declare-fun e!1355779 () Bool)

(declare-fun b!2127076 () Bool)

(assert (=> b!2127076 (= e!1355785 (and e!1355779 (inv!31398 (totalInput!2944 cacheFurthestNullable!114)) e!1355783))))

(declare-fun tp!652543 () Bool)

(declare-fun e!1355790 () Bool)

(declare-fun tp!652535 () Bool)

(declare-fun array_inv!2715 (array!8565) Bool)

(assert (=> b!2127077 (= e!1355792 (and tp!652553 tp!652543 tp!652535 (array_inv!2713 (_keys!2790 (v!28326 (underlying!5181 (v!28327 (underlying!5182 (cache!2788 cacheFurthestNullable!114))))))) (array_inv!2715 (_values!2773 (v!28326 (underlying!5181 (v!28327 (underlying!5182 (cache!2788 cacheFurthestNullable!114))))))) e!1355790))))

(declare-fun b!2127078 () Bool)

(assert (=> b!2127078 (= e!1355794 e!1355797)))

(declare-fun b!2127079 () Bool)

(declare-fun res!920100 () Bool)

(assert (=> b!2127079 (=> (not res!920100) (not e!1355774))))

(assert (=> b!2127079 (= res!920100 e!1355781)))

(declare-fun res!920098 () Bool)

(assert (=> b!2127079 (=> res!920098 e!1355781)))

(declare-fun nullableZipper!74 ((InoxSet Context!2502)) Bool)

(assert (=> b!2127079 (= res!920098 (not (nullableZipper!74 z!3839)))))

(declare-fun b!2127080 () Bool)

(declare-fun tp!652549 () Bool)

(assert (=> b!2127080 (= e!1355799 (and tp!652549 mapRes!12224))))

(declare-fun condMapEmpty!12224 () Bool)

(declare-fun mapDefault!12224 () List!23876)

(assert (=> b!2127080 (= condMapEmpty!12224 (= (arr!3795 (_values!2772 (v!28324 (underlying!5179 (v!28325 (underlying!5180 (cache!2787 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!23876)) mapDefault!12224)))))

(declare-fun b!2127081 () Bool)

(declare-fun e!1355780 () Bool)

(declare-fun tp!652540 () Bool)

(assert (=> b!2127081 (= e!1355780 (and tp!652540 mapRes!12223))))

(declare-fun condMapEmpty!12225 () Bool)

(declare-fun mapDefault!12223 () List!23878)

(assert (=> b!2127081 (= condMapEmpty!12225 (= (arr!3797 (_values!2774 (v!28328 (underlying!5183 (v!28329 (underlying!5184 (cache!2789 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!23878)) mapDefault!12223)))))

(declare-fun b!2127082 () Bool)

(declare-fun e!1355777 () Bool)

(declare-fun lt!795945 () MutLongMap!2492)

(assert (=> b!2127082 (= e!1355777 (and e!1355798 ((_ is LongMap!2492) lt!795945)))))

(assert (=> b!2127082 (= lt!795945 (v!28325 (underlying!5180 (cache!2787 cacheUp!979))))))

(declare-fun b!2127083 () Bool)

(declare-fun tp!652533 () Bool)

(assert (=> b!2127083 (= e!1355790 (and tp!652533 mapRes!12225))))

(declare-fun condMapEmpty!12223 () Bool)

(declare-fun mapDefault!12225 () List!23877)

(assert (=> b!2127083 (= condMapEmpty!12223 (= (arr!3796 (_values!2773 (v!28326 (underlying!5181 (v!28327 (underlying!5182 (cache!2788 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!23877)) mapDefault!12225)))))

(declare-fun mapIsEmpty!12224 () Bool)

(assert (=> mapIsEmpty!12224 mapRes!12224))

(declare-fun b!2127084 () Bool)

(declare-fun e!1355791 () Bool)

(assert (=> b!2127084 (= e!1355791 e!1355778)))

(declare-fun b!2127085 () Bool)

(declare-fun e!1355793 () Bool)

(declare-fun lt!795942 () MutLongMap!2493)

(assert (=> b!2127085 (= e!1355793 (and e!1355791 ((_ is LongMap!2493) lt!795942)))))

(assert (=> b!2127085 (= lt!795942 (v!28327 (underlying!5182 (cache!2788 cacheFurthestNullable!114))))))

(declare-fun b!2127086 () Bool)

(declare-fun res!920102 () Bool)

(assert (=> b!2127086 (=> (not res!920102) (not e!1355774))))

(declare-fun valid!1963 (CacheDown!1656) Bool)

(assert (=> b!2127086 (= res!920102 (valid!1963 cacheDown!1098))))

(declare-fun b!2127087 () Bool)

(assert (=> b!2127087 (= e!1355786 e!1355776)))

(declare-fun e!1355782 () Bool)

(assert (=> b!2127088 (= e!1355782 (and e!1355777 tp!652537))))

(declare-fun b!2127089 () Bool)

(declare-fun e!1355788 () Bool)

(declare-fun e!1355773 () Bool)

(assert (=> b!2127089 (= e!1355788 e!1355773)))

(declare-fun b!2127090 () Bool)

(assert (=> b!2127090 (= e!1355774 false)))

(declare-fun lt!795944 () Bool)

(declare-fun valid!1964 (CacheFurthestNullable!610) Bool)

(assert (=> b!2127090 (= lt!795944 (valid!1964 cacheFurthestNullable!114))))

(declare-fun setIsEmpty!15516 () Bool)

(assert (=> setIsEmpty!15516 setRes!15516))

(declare-fun mapIsEmpty!12225 () Bool)

(assert (=> mapIsEmpty!12225 mapRes!12225))

(declare-fun b!2127091 () Bool)

(assert (=> b!2127091 (= e!1355795 e!1355788)))

(declare-fun setElem!15516 () Context!2502)

(declare-fun setNonEmpty!15516 () Bool)

(declare-fun tp!652530 () Bool)

(declare-fun inv!31399 (Context!2502) Bool)

(assert (=> setNonEmpty!15516 (= setRes!15516 (and tp!652530 (inv!31399 setElem!15516) e!1355775))))

(declare-fun setRest!15516 () (InoxSet Context!2502))

(assert (=> setNonEmpty!15516 (= z!3839 ((_ map or) (store ((as const (Array Context!2502 Bool)) false) setElem!15516 true) setRest!15516))))

(declare-fun b!2127092 () Bool)

(declare-fun tp!652536 () Bool)

(assert (=> b!2127092 (= e!1355783 (and (inv!31394 (c!340110 (totalInput!2944 cacheFurthestNullable!114))) tp!652536))))

(declare-fun b!2127093 () Bool)

(assert (=> b!2127093 (= e!1355800 e!1355782)))

(declare-fun b!2127094 () Bool)

(declare-fun res!920103 () Bool)

(assert (=> b!2127094 (=> (not res!920103) (not e!1355774))))

(assert (=> b!2127094 (= res!920103 (and (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun mapNonEmpty!12225 () Bool)

(declare-fun tp!652544 () Bool)

(declare-fun tp!652546 () Bool)

(assert (=> mapNonEmpty!12225 (= mapRes!12223 (and tp!652544 tp!652546))))

(declare-fun mapRest!12224 () (Array (_ BitVec 32) List!23878))

(declare-fun mapKey!12225 () (_ BitVec 32))

(declare-fun mapValue!12223 () List!23878)

(assert (=> mapNonEmpty!12225 (= (arr!3797 (_values!2774 (v!28328 (underlying!5183 (v!28329 (underlying!5184 (cache!2789 cacheDown!1098))))))) (store mapRest!12224 mapKey!12225 mapValue!12223))))

(assert (=> b!2127095 (= e!1355779 (and e!1355793 tp!652531))))

(declare-fun tp!652552 () Bool)

(declare-fun tp!652554 () Bool)

(declare-fun array_inv!2716 (array!8567) Bool)

(assert (=> b!2127096 (= e!1355773 (and tp!652541 tp!652554 tp!652552 (array_inv!2713 (_keys!2791 (v!28328 (underlying!5183 (v!28329 (underlying!5184 (cache!2789 cacheDown!1098))))))) (array_inv!2716 (_values!2774 (v!28328 (underlying!5183 (v!28329 (underlying!5184 (cache!2789 cacheDown!1098))))))) e!1355780))))

(assert (= (and start!207430 res!920101) b!2127067))

(assert (= (and b!2127067 res!920099) b!2127094))

(assert (= (and b!2127094 res!920103) b!2127079))

(assert (= (and b!2127079 (not res!920098)) b!2127071))

(assert (= (and b!2127079 res!920100) b!2127070))

(assert (= (and b!2127070 res!920097) b!2127086))

(assert (= (and b!2127086 res!920102) b!2127090))

(assert (= (and b!2127083 condMapEmpty!12223) mapIsEmpty!12225))

(assert (= (and b!2127083 (not condMapEmpty!12223)) mapNonEmpty!12224))

(assert (= b!2127077 b!2127083))

(assert (= b!2127069 b!2127077))

(assert (= b!2127084 b!2127069))

(assert (= (and b!2127085 ((_ is LongMap!2493) (v!28327 (underlying!5182 (cache!2788 cacheFurthestNullable!114))))) b!2127084))

(assert (= b!2127095 b!2127085))

(assert (= (and b!2127076 ((_ is HashMap!2407) (cache!2788 cacheFurthestNullable!114))) b!2127095))

(assert (= b!2127076 b!2127092))

(assert (= start!207430 b!2127076))

(assert (= (and b!2127081 condMapEmpty!12225) mapIsEmpty!12223))

(assert (= (and b!2127081 (not condMapEmpty!12225)) mapNonEmpty!12225))

(assert (= b!2127096 b!2127081))

(assert (= b!2127089 b!2127096))

(assert (= b!2127091 b!2127089))

(assert (= (and b!2127074 ((_ is LongMap!2494) (v!28329 (underlying!5184 (cache!2789 cacheDown!1098))))) b!2127091))

(assert (= b!2127073 b!2127074))

(assert (= (and b!2127087 ((_ is HashMap!2408) (cache!2789 cacheDown!1098))) b!2127073))

(assert (= start!207430 b!2127087))

(assert (= (and b!2127080 condMapEmpty!12224) mapIsEmpty!12224))

(assert (= (and b!2127080 (not condMapEmpty!12224)) mapNonEmpty!12223))

(assert (= b!2127068 b!2127080))

(assert (= b!2127078 b!2127068))

(assert (= b!2127075 b!2127078))

(assert (= (and b!2127082 ((_ is LongMap!2492) (v!28325 (underlying!5180 (cache!2787 cacheUp!979))))) b!2127075))

(assert (= b!2127088 b!2127082))

(assert (= (and b!2127093 ((_ is HashMap!2406) (cache!2787 cacheUp!979))) b!2127088))

(assert (= start!207430 b!2127093))

(assert (= (and start!207430 condSetEmpty!15516) setIsEmpty!15516))

(assert (= (and start!207430 (not condSetEmpty!15516)) setNonEmpty!15516))

(assert (= setNonEmpty!15516 b!2127072))

(assert (= start!207430 b!2127066))

(declare-fun m!2578881 () Bool)

(assert (=> b!2127079 m!2578881))

(declare-fun m!2578883 () Bool)

(assert (=> b!2127066 m!2578883))

(declare-fun m!2578885 () Bool)

(assert (=> b!2127068 m!2578885))

(declare-fun m!2578887 () Bool)

(assert (=> b!2127068 m!2578887))

(declare-fun m!2578889 () Bool)

(assert (=> b!2127090 m!2578889))

(declare-fun m!2578891 () Bool)

(assert (=> b!2127086 m!2578891))

(declare-fun m!2578893 () Bool)

(assert (=> b!2127076 m!2578893))

(declare-fun m!2578895 () Bool)

(assert (=> b!2127067 m!2578895))

(declare-fun m!2578897 () Bool)

(assert (=> mapNonEmpty!12225 m!2578897))

(declare-fun m!2578899 () Bool)

(assert (=> mapNonEmpty!12223 m!2578899))

(declare-fun m!2578901 () Bool)

(assert (=> b!2127096 m!2578901))

(declare-fun m!2578903 () Bool)

(assert (=> b!2127096 m!2578903))

(declare-fun m!2578905 () Bool)

(assert (=> b!2127077 m!2578905))

(declare-fun m!2578907 () Bool)

(assert (=> b!2127077 m!2578907))

(declare-fun m!2578909 () Bool)

(assert (=> b!2127092 m!2578909))

(declare-fun m!2578911 () Bool)

(assert (=> mapNonEmpty!12224 m!2578911))

(declare-fun m!2578913 () Bool)

(assert (=> start!207430 m!2578913))

(declare-fun m!2578915 () Bool)

(assert (=> start!207430 m!2578915))

(declare-fun m!2578917 () Bool)

(assert (=> start!207430 m!2578917))

(declare-fun m!2578919 () Bool)

(assert (=> start!207430 m!2578919))

(declare-fun m!2578921 () Bool)

(assert (=> setNonEmpty!15516 m!2578921))

(declare-fun m!2578923 () Bool)

(assert (=> b!2127070 m!2578923))

(check-sat b_and!171411 b_and!171417 (not b!2127092) (not b!2127066) (not b!2127068) (not b!2127076) (not b!2127072) (not b_next!62537) b_and!171409 (not mapNonEmpty!12223) (not mapNonEmpty!12224) (not b!2127077) (not setNonEmpty!15516) (not b_next!62541) b_and!171415 b_and!171419 (not b!2127083) (not b!2127080) (not start!207430) (not b_next!62535) (not b!2127090) (not mapNonEmpty!12225) (not b_next!62539) (not b!2127067) (not b!2127096) (not b!2127086) (not b_next!62533) (not b!2127081) (not b!2127070) (not b!2127079) b_and!171413 (not b_next!62543))
(check-sat b_and!171411 b_and!171417 (not b_next!62537) b_and!171409 (not b_next!62535) (not b_next!62539) (not b_next!62533) (not b_next!62541) b_and!171415 b_and!171419 b_and!171413 (not b_next!62543))
