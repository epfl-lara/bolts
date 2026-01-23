; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207508 () Bool)

(assert start!207508)

(declare-fun b!2129667 () Bool)

(declare-fun b_free!62069 () Bool)

(declare-fun b_next!62773 () Bool)

(assert (=> b!2129667 (= b_free!62069 (not b_next!62773))))

(declare-fun tp!654466 () Bool)

(declare-fun b_and!171649 () Bool)

(assert (=> b!2129667 (= tp!654466 b_and!171649)))

(declare-fun b!2129668 () Bool)

(declare-fun b_free!62071 () Bool)

(declare-fun b_next!62775 () Bool)

(assert (=> b!2129668 (= b_free!62071 (not b_next!62775))))

(declare-fun tp!654464 () Bool)

(declare-fun b_and!171651 () Bool)

(assert (=> b!2129668 (= tp!654464 b_and!171651)))

(declare-fun b!2129651 () Bool)

(declare-fun b_free!62073 () Bool)

(declare-fun b_next!62777 () Bool)

(assert (=> b!2129651 (= b_free!62073 (not b_next!62777))))

(declare-fun tp!654456 () Bool)

(declare-fun b_and!171653 () Bool)

(assert (=> b!2129651 (= tp!654456 b_and!171653)))

(declare-fun b!2129669 () Bool)

(declare-fun b_free!62075 () Bool)

(declare-fun b_next!62779 () Bool)

(assert (=> b!2129669 (= b_free!62075 (not b_next!62779))))

(declare-fun tp!654460 () Bool)

(declare-fun b_and!171655 () Bool)

(assert (=> b!2129669 (= tp!654460 b_and!171655)))

(declare-fun b!2129674 () Bool)

(declare-fun b_free!62077 () Bool)

(declare-fun b_next!62781 () Bool)

(assert (=> b!2129674 (= b_free!62077 (not b_next!62781))))

(declare-fun tp!654448 () Bool)

(declare-fun b_and!171657 () Bool)

(assert (=> b!2129674 (= tp!654448 b_and!171657)))

(declare-fun b!2129673 () Bool)

(declare-fun b_free!62079 () Bool)

(declare-fun b_next!62783 () Bool)

(assert (=> b!2129673 (= b_free!62079 (not b_next!62783))))

(declare-fun tp!654451 () Bool)

(declare-fun b_and!171659 () Bool)

(assert (=> b!2129673 (= tp!654451 b_and!171659)))

(declare-fun b!2129654 () Bool)

(assert (=> b!2129654 true))

(declare-fun bs!444224 () Bool)

(declare-fun b!2129683 () Bool)

(assert (= bs!444224 (and b!2129683 b!2129654)))

(declare-fun lambda!79073 () Int)

(declare-fun lambda!79072 () Int)

(assert (=> bs!444224 (not (= lambda!79073 lambda!79072))))

(assert (=> b!2129683 true))

(declare-fun b!2129646 () Bool)

(declare-fun e!1358093 () Bool)

(declare-fun tp!654438 () Bool)

(declare-fun mapRes!12413 () Bool)

(assert (=> b!2129646 (= e!1358093 (and tp!654438 mapRes!12413))))

(declare-fun condMapEmpty!12412 () Bool)

(declare-datatypes ((C!11548 0))(
  ( (C!11549 (val!6760 Int)) )
))
(declare-datatypes ((Regex!5701 0))(
  ( (ElementMatch!5701 (c!340163 C!11548)) (Concat!10003 (regOne!11914 Regex!5701) (regTwo!11914 Regex!5701)) (EmptyExpr!5701) (Star!5701 (reg!6030 Regex!5701)) (EmptyLang!5701) (Union!5701 (regOne!11915 Regex!5701) (regTwo!11915 Regex!5701)) )
))
(declare-datatypes ((List!23988 0))(
  ( (Nil!23904) (Cons!23904 (h!29305 Regex!5701) (t!196516 List!23988)) )
))
(declare-datatypes ((Context!2542 0))(
  ( (Context!2543 (exprs!1771 List!23988)) )
))
(declare-datatypes ((tuple3!3066 0))(
  ( (tuple3!3067 (_1!13811 Regex!5701) (_2!13811 Context!2542) (_3!2003 C!11548)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!23616 0))(
  ( (tuple2!23617 (_1!13812 tuple3!3066) (_2!13812 (InoxSet Context!2542))) )
))
(declare-datatypes ((List!23989 0))(
  ( (Nil!23905) (Cons!23905 (h!29306 tuple2!23616) (t!196517 List!23989)) )
))
(declare-datatypes ((Hashable!2464 0))(
  ( (HashableExt!2463 (__x!15826 Int)) )
))
(declare-datatypes ((array!8721 0))(
  ( (array!8722 (arr!3872 (Array (_ BitVec 32) (_ BitVec 64))) (size!18697 (_ BitVec 32))) )
))
(declare-datatypes ((array!8723 0))(
  ( (array!8724 (arr!3873 (Array (_ BitVec 32) List!23989)) (size!18698 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5100 0))(
  ( (LongMapFixedSize!5101 (defaultEntry!2915 Int) (mask!6716 (_ BitVec 32)) (extraKeys!2798 (_ BitVec 32)) (zeroValue!2808 List!23989) (minValue!2808 List!23989) (_size!5151 (_ BitVec 32)) (_keys!2847 array!8721) (_values!2830 array!8723) (_vacant!2611 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10025 0))(
  ( (Cell!10026 (v!28449 LongMapFixedSize!5100)) )
))
(declare-datatypes ((MutLongMap!2550 0))(
  ( (LongMap!2550 (underlying!5295 Cell!10025)) (MutLongMapExt!2549 (__x!15827 Int)) )
))
(declare-datatypes ((Cell!10027 0))(
  ( (Cell!10028 (v!28450 MutLongMap!2550)) )
))
(declare-datatypes ((MutableMap!2464 0))(
  ( (MutableMapExt!2463 (__x!15828 Int)) (HashMap!2464 (underlying!5296 Cell!10027) (hashF!4387 Hashable!2464) (_size!5152 (_ BitVec 32)) (defaultValue!2626 Int)) )
))
(declare-datatypes ((CacheDown!1694 0))(
  ( (CacheDown!1695 (cache!2845 MutableMap!2464)) )
))
(declare-fun cacheDown!1098 () CacheDown!1694)

(declare-fun mapDefault!12413 () List!23989)

(assert (=> b!2129646 (= condMapEmpty!12412 (= (arr!3873 (_values!2830 (v!28449 (underlying!5295 (v!28450 (underlying!5296 (cache!2845 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!23989)) mapDefault!12413)))))

(declare-fun b!2129647 () Bool)

(declare-fun e!1358092 () Bool)

(declare-fun e!1358087 () Bool)

(declare-datatypes ((tuple2!23618 0))(
  ( (tuple2!23619 (_1!13813 Context!2542) (_2!13813 C!11548)) )
))
(declare-datatypes ((tuple2!23620 0))(
  ( (tuple2!23621 (_1!13814 tuple2!23618) (_2!13814 (InoxSet Context!2542))) )
))
(declare-datatypes ((List!23990 0))(
  ( (Nil!23906) (Cons!23906 (h!29307 tuple2!23620) (t!196518 List!23990)) )
))
(declare-datatypes ((array!8725 0))(
  ( (array!8726 (arr!3874 (Array (_ BitVec 32) List!23990)) (size!18699 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5102 0))(
  ( (LongMapFixedSize!5103 (defaultEntry!2916 Int) (mask!6717 (_ BitVec 32)) (extraKeys!2799 (_ BitVec 32)) (zeroValue!2809 List!23990) (minValue!2809 List!23990) (_size!5153 (_ BitVec 32)) (_keys!2848 array!8721) (_values!2831 array!8725) (_vacant!2612 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10029 0))(
  ( (Cell!10030 (v!28451 LongMapFixedSize!5102)) )
))
(declare-datatypes ((MutLongMap!2551 0))(
  ( (LongMap!2551 (underlying!5297 Cell!10029)) (MutLongMapExt!2550 (__x!15829 Int)) )
))
(declare-fun lt!796280 () MutLongMap!2551)

(get-info :version)

(assert (=> b!2129647 (= e!1358092 (and e!1358087 ((_ is LongMap!2551) lt!796280)))))

(declare-datatypes ((Cell!10031 0))(
  ( (Cell!10032 (v!28452 MutLongMap!2551)) )
))
(declare-datatypes ((Hashable!2465 0))(
  ( (HashableExt!2464 (__x!15830 Int)) )
))
(declare-datatypes ((MutableMap!2465 0))(
  ( (MutableMapExt!2464 (__x!15831 Int)) (HashMap!2465 (underlying!5298 Cell!10031) (hashF!4388 Hashable!2465) (_size!5154 (_ BitVec 32)) (defaultValue!2627 Int)) )
))
(declare-datatypes ((CacheUp!1710 0))(
  ( (CacheUp!1711 (cache!2846 MutableMap!2465)) )
))
(declare-fun cacheUp!979 () CacheUp!1710)

(assert (=> b!2129647 (= lt!796280 (v!28452 (underlying!5298 (cache!2846 cacheUp!979))))))

(declare-fun b!2129648 () Bool)

(declare-fun res!920803 () Bool)

(declare-fun e!1358107 () Bool)

(assert (=> b!2129648 (=> (not res!920803) (not e!1358107))))

(declare-datatypes ((tuple3!3068 0))(
  ( (tuple3!3069 (_1!13815 (InoxSet Context!2542)) (_2!13815 Int) (_3!2004 Int)) )
))
(declare-datatypes ((tuple2!23622 0))(
  ( (tuple2!23623 (_1!13816 tuple3!3068) (_2!13816 Int)) )
))
(declare-datatypes ((List!23991 0))(
  ( (Nil!23907) (Cons!23907 (h!29308 tuple2!23622) (t!196519 List!23991)) )
))
(declare-datatypes ((array!8727 0))(
  ( (array!8728 (arr!3875 (Array (_ BitVec 32) List!23991)) (size!18700 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5104 0))(
  ( (LongMapFixedSize!5105 (defaultEntry!2917 Int) (mask!6718 (_ BitVec 32)) (extraKeys!2800 (_ BitVec 32)) (zeroValue!2810 List!23991) (minValue!2810 List!23991) (_size!5155 (_ BitVec 32)) (_keys!2849 array!8721) (_values!2832 array!8727) (_vacant!2613 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10033 0))(
  ( (Cell!10034 (v!28453 LongMapFixedSize!5104)) )
))
(declare-datatypes ((List!23992 0))(
  ( (Nil!23908) (Cons!23908 (h!29309 C!11548) (t!196520 List!23992)) )
))
(declare-datatypes ((IArray!15683 0))(
  ( (IArray!15684 (innerList!7899 List!23992)) )
))
(declare-datatypes ((Conc!7839 0))(
  ( (Node!7839 (left!18450 Conc!7839) (right!18780 Conc!7839) (csize!15908 Int) (cheight!8050 Int)) (Leaf!11457 (xs!10781 IArray!15683) (csize!15909 Int)) (Empty!7839) )
))
(declare-datatypes ((MutLongMap!2552 0))(
  ( (LongMap!2552 (underlying!5299 Cell!10033)) (MutLongMapExt!2551 (__x!15832 Int)) )
))
(declare-datatypes ((Cell!10035 0))(
  ( (Cell!10036 (v!28454 MutLongMap!2552)) )
))
(declare-datatypes ((Hashable!2466 0))(
  ( (HashableExt!2465 (__x!15833 Int)) )
))
(declare-datatypes ((MutableMap!2466 0))(
  ( (MutableMapExt!2465 (__x!15834 Int)) (HashMap!2466 (underlying!5300 Cell!10035) (hashF!4389 Hashable!2466) (_size!5156 (_ BitVec 32)) (defaultValue!2628 Int)) )
))
(declare-datatypes ((BalanceConc!15440 0))(
  ( (BalanceConc!15441 (c!340164 Conc!7839)) )
))
(declare-datatypes ((CacheFurthestNullable!648 0))(
  ( (CacheFurthestNullable!649 (cache!2847 MutableMap!2466) (totalInput!2981 BalanceConc!15440)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!648)

(declare-fun totalInput!851 () BalanceConc!15440)

(assert (=> b!2129648 (= res!920803 (= (totalInput!2981 cacheFurthestNullable!114) totalInput!851))))

(declare-fun b!2129649 () Bool)

(declare-fun e!1358088 () Bool)

(declare-fun e!1358078 () Bool)

(assert (=> b!2129649 (= e!1358088 e!1358078)))

(declare-fun b!2129650 () Bool)

(declare-fun e!1358071 () Bool)

(declare-fun e!1358079 () Bool)

(assert (=> b!2129650 (= e!1358071 e!1358079)))

(declare-fun e!1358096 () Bool)

(declare-fun tp!654441 () Bool)

(declare-fun tp!654454 () Bool)

(declare-fun e!1358089 () Bool)

(declare-fun array_inv!2771 (array!8721) Bool)

(declare-fun array_inv!2772 (array!8727) Bool)

(assert (=> b!2129651 (= e!1358096 (and tp!654456 tp!654441 tp!654454 (array_inv!2771 (_keys!2849 (v!28453 (underlying!5299 (v!28454 (underlying!5300 (cache!2847 cacheFurthestNullable!114))))))) (array_inv!2772 (_values!2832 (v!28453 (underlying!5299 (v!28454 (underlying!5300 (cache!2847 cacheFurthestNullable!114))))))) e!1358089))))

(declare-fun res!920809 () Bool)

(declare-fun e!1358077 () Bool)

(assert (=> start!207508 (=> (not res!920809) (not e!1358077))))

(declare-fun from!1043 () Int)

(declare-fun totalInputSize!296 () Int)

(assert (=> start!207508 (= res!920809 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!207508 e!1358077))

(declare-fun e!1358080 () Bool)

(declare-fun inv!31527 (CacheFurthestNullable!648) Bool)

(assert (=> start!207508 (and (inv!31527 cacheFurthestNullable!114) e!1358080)))

(assert (=> start!207508 true))

(declare-fun inv!31528 (CacheDown!1694) Bool)

(assert (=> start!207508 (and (inv!31528 cacheDown!1098) e!1358088)))

(declare-fun e!1358105 () Bool)

(declare-fun inv!31529 (CacheUp!1710) Bool)

(assert (=> start!207508 (and (inv!31529 cacheUp!979) e!1358105)))

(declare-fun condSetEmpty!15673 () Bool)

(declare-fun z!3839 () (InoxSet Context!2542))

(assert (=> start!207508 (= condSetEmpty!15673 (= z!3839 ((as const (Array Context!2542 Bool)) false)))))

(declare-fun setRes!15672 () Bool)

(assert (=> start!207508 setRes!15672))

(declare-fun e!1358090 () Bool)

(declare-fun inv!31530 (BalanceConc!15440) Bool)

(assert (=> start!207508 (and (inv!31530 totalInput!851) e!1358090)))

(declare-fun e!1358075 () Bool)

(assert (=> start!207508 e!1358075))

(declare-fun b!2129652 () Bool)

(declare-fun e!1358102 () Bool)

(declare-fun e!1358082 () Bool)

(assert (=> b!2129652 (= e!1358102 e!1358082)))

(declare-fun b!2129653 () Bool)

(declare-fun e!1358074 () Bool)

(declare-fun tp!654445 () Bool)

(declare-fun inv!31531 (Conc!7839) Bool)

(assert (=> b!2129653 (= e!1358074 (and (inv!31531 (c!340164 (totalInput!2981 cacheFurthestNullable!114))) tp!654445))))

(declare-fun e!1358099 () Bool)

(assert (=> b!2129654 (= e!1358107 e!1358099)))

(declare-fun res!920805 () Bool)

(assert (=> b!2129654 (=> (not res!920805) (not e!1358099))))

(declare-datatypes ((StackFrame!100 0))(
  ( (StackFrame!101 (z!5778 (InoxSet Context!2542)) (from!2664 Int) (lastNullablePos!351 Int) (res!920811 Int) (totalInput!2982 BalanceConc!15440)) )
))
(declare-datatypes ((List!23993 0))(
  ( (Nil!23909) (Cons!23909 (h!29310 StackFrame!100) (t!196521 List!23993)) )
))
(declare-fun stack!8 () List!23993)

(declare-fun forall!4899 (List!23993 Int) Bool)

(assert (=> b!2129654 (= res!920805 (forall!4899 stack!8 lambda!79072))))

(declare-fun lastNullablePos!123 () Int)

(declare-fun lt!796282 () Int)

(declare-fun lt!796279 () Int)

(declare-fun furthestNullablePosition!27 ((InoxSet Context!2542) Int BalanceConc!15440 Int Int) Int)

(assert (=> b!2129654 (= lt!796282 (furthestNullablePosition!27 z!3839 from!1043 totalInput!851 lt!796279 lastNullablePos!123))))

(declare-fun b!2129655 () Bool)

(declare-fun e!1358106 () Bool)

(assert (=> b!2129655 (= e!1358106 e!1358102)))

(declare-fun mapIsEmpty!12412 () Bool)

(declare-fun mapRes!12414 () Bool)

(assert (=> mapIsEmpty!12412 mapRes!12414))

(declare-fun b!2129656 () Bool)

(assert (=> b!2129656 (= e!1358079 e!1358096)))

(declare-fun e!1358091 () Bool)

(declare-fun b!2129657 () Bool)

(assert (=> b!2129657 (= e!1358080 (and e!1358091 (inv!31530 (totalInput!2981 cacheFurthestNullable!114)) e!1358074))))

(declare-fun b!2129658 () Bool)

(declare-fun e!1358100 () Bool)

(declare-fun e!1358104 () Bool)

(assert (=> b!2129658 (= e!1358100 e!1358104)))

(declare-fun b!2129659 () Bool)

(declare-fun res!920802 () Bool)

(assert (=> b!2129659 (=> (not res!920802) (not e!1358107))))

(declare-fun valid!2009 (CacheUp!1710) Bool)

(assert (=> b!2129659 (= res!920802 (valid!2009 cacheUp!979))))

(declare-fun b!2129660 () Bool)

(declare-fun e!1358070 () Bool)

(declare-fun tp!654449 () Bool)

(assert (=> b!2129660 (= e!1358070 tp!654449)))

(declare-fun mapIsEmpty!12413 () Bool)

(assert (=> mapIsEmpty!12413 mapRes!12413))

(declare-fun b!2129661 () Bool)

(declare-fun res!920808 () Bool)

(assert (=> b!2129661 (=> (not res!920808) (not e!1358107))))

(declare-fun valid!2010 (CacheDown!1694) Bool)

(assert (=> b!2129661 (= res!920808 (valid!2010 cacheDown!1098))))

(declare-fun setRes!15673 () Bool)

(declare-fun e!1358076 () Bool)

(declare-fun b!2129662 () Bool)

(declare-fun e!1358072 () Bool)

(assert (=> b!2129662 (= e!1358072 (and setRes!15673 (inv!31530 (totalInput!2982 (h!29310 stack!8))) e!1358076))))

(declare-fun condSetEmpty!15672 () Bool)

(assert (=> b!2129662 (= condSetEmpty!15672 (= (z!5778 (h!29310 stack!8)) ((as const (Array Context!2542 Bool)) false)))))

(declare-fun b!2129663 () Bool)

(declare-fun e!1358101 () Bool)

(declare-fun tp!654452 () Bool)

(assert (=> b!2129663 (= e!1358101 (and tp!654452 mapRes!12414))))

(declare-fun condMapEmpty!12414 () Bool)

(declare-fun mapDefault!12412 () List!23990)

(assert (=> b!2129663 (= condMapEmpty!12414 (= (arr!3874 (_values!2831 (v!28451 (underlying!5297 (v!28452 (underlying!5298 (cache!2846 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!23990)) mapDefault!12412)))))

(declare-fun b!2129664 () Bool)

(declare-fun tp!654457 () Bool)

(declare-fun mapRes!12412 () Bool)

(assert (=> b!2129664 (= e!1358089 (and tp!654457 mapRes!12412))))

(declare-fun condMapEmpty!12413 () Bool)

(declare-fun mapDefault!12414 () List!23991)

(assert (=> b!2129664 (= condMapEmpty!12413 (= (arr!3875 (_values!2832 (v!28453 (underlying!5299 (v!28454 (underlying!5300 (cache!2847 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!23991)) mapDefault!12414)))))

(declare-fun b!2129665 () Bool)

(declare-fun tp!654459 () Bool)

(assert (=> b!2129665 (= e!1358090 (and (inv!31531 (c!340164 totalInput!851)) tp!654459))))

(declare-fun lt!796281 () Bool)

(declare-fun b!2129666 () Bool)

(declare-fun e!1358094 () Bool)

(assert (=> b!2129666 (= e!1358094 (or (> from!1043 lt!796279) lt!796281))))

(declare-fun e!1358073 () Bool)

(assert (=> b!2129667 (= e!1358073 (and e!1358092 tp!654466))))

(declare-fun tp!654447 () Bool)

(declare-fun tp!654439 () Bool)

(declare-fun array_inv!2773 (array!8723) Bool)

(assert (=> b!2129668 (= e!1358082 (and tp!654464 tp!654447 tp!654439 (array_inv!2771 (_keys!2847 (v!28449 (underlying!5295 (v!28450 (underlying!5296 (cache!2845 cacheDown!1098))))))) (array_inv!2773 (_values!2830 (v!28449 (underlying!5295 (v!28450 (underlying!5296 (cache!2845 cacheDown!1098))))))) e!1358093))))

(declare-fun e!1358086 () Bool)

(assert (=> b!2129669 (= e!1358078 (and e!1358086 tp!654460))))

(declare-fun b!2129670 () Bool)

(assert (=> b!2129670 (= e!1358105 e!1358073)))

(declare-fun b!2129671 () Bool)

(declare-fun tp!654458 () Bool)

(assert (=> b!2129671 (= e!1358076 (and (inv!31531 (c!340164 (totalInput!2982 (h!29310 stack!8)))) tp!654458))))

(declare-fun b!2129672 () Bool)

(assert (=> b!2129672 (= e!1358087 e!1358100)))

(declare-fun setIsEmpty!15672 () Bool)

(assert (=> setIsEmpty!15672 setRes!15672))

(declare-fun tp!654455 () Bool)

(declare-fun tp!654446 () Bool)

(declare-fun array_inv!2774 (array!8725) Bool)

(assert (=> b!2129673 (= e!1358104 (and tp!654451 tp!654446 tp!654455 (array_inv!2771 (_keys!2848 (v!28451 (underlying!5297 (v!28452 (underlying!5298 (cache!2846 cacheUp!979))))))) (array_inv!2774 (_values!2831 (v!28451 (underlying!5297 (v!28452 (underlying!5298 (cache!2846 cacheUp!979))))))) e!1358101))))

(declare-fun e!1358097 () Bool)

(assert (=> b!2129674 (= e!1358091 (and e!1358097 tp!654448))))

(declare-fun setIsEmpty!15673 () Bool)

(assert (=> setIsEmpty!15673 setRes!15673))

(declare-fun b!2129675 () Bool)

(declare-fun tp!654463 () Bool)

(declare-fun inv!31532 (StackFrame!100) Bool)

(assert (=> b!2129675 (= e!1358075 (and (inv!31532 (h!29310 stack!8)) e!1358072 tp!654463))))

(declare-fun b!2129676 () Bool)

(declare-fun lt!796284 () MutLongMap!2552)

(assert (=> b!2129676 (= e!1358097 (and e!1358071 ((_ is LongMap!2552) lt!796284)))))

(assert (=> b!2129676 (= lt!796284 (v!28454 (underlying!5300 (cache!2847 cacheFurthestNullable!114))))))

(declare-fun mapIsEmpty!12414 () Bool)

(assert (=> mapIsEmpty!12414 mapRes!12412))

(declare-fun mapNonEmpty!12412 () Bool)

(declare-fun tp!654462 () Bool)

(declare-fun tp!654443 () Bool)

(assert (=> mapNonEmpty!12412 (= mapRes!12412 (and tp!654462 tp!654443))))

(declare-fun mapKey!12412 () (_ BitVec 32))

(declare-fun mapValue!12413 () List!23991)

(declare-fun mapRest!12412 () (Array (_ BitVec 32) List!23991))

(assert (=> mapNonEmpty!12412 (= (arr!3875 (_values!2832 (v!28453 (underlying!5299 (v!28454 (underlying!5300 (cache!2847 cacheFurthestNullable!114))))))) (store mapRest!12412 mapKey!12412 mapValue!12413))))

(declare-fun mapNonEmpty!12413 () Bool)

(declare-fun tp!654440 () Bool)

(declare-fun tp!654453 () Bool)

(assert (=> mapNonEmpty!12413 (= mapRes!12413 (and tp!654440 tp!654453))))

(declare-fun mapRest!12414 () (Array (_ BitVec 32) List!23989))

(declare-fun mapValue!12414 () List!23989)

(declare-fun mapKey!12414 () (_ BitVec 32))

(assert (=> mapNonEmpty!12413 (= (arr!3873 (_values!2830 (v!28449 (underlying!5295 (v!28450 (underlying!5296 (cache!2845 cacheDown!1098))))))) (store mapRest!12414 mapKey!12414 mapValue!12414))))

(declare-fun b!2129677 () Bool)

(declare-fun e!1358103 () Bool)

(assert (=> b!2129677 (= e!1358077 e!1358103)))

(declare-fun res!920801 () Bool)

(assert (=> b!2129677 (=> (not res!920801) (not e!1358103))))

(assert (=> b!2129677 (= res!920801 (and (= totalInputSize!296 lt!796279) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun size!18701 (BalanceConc!15440) Int)

(assert (=> b!2129677 (= lt!796279 (size!18701 totalInput!851))))

(declare-fun mapNonEmpty!12414 () Bool)

(declare-fun tp!654465 () Bool)

(declare-fun tp!654444 () Bool)

(assert (=> mapNonEmpty!12414 (= mapRes!12414 (and tp!654465 tp!654444))))

(declare-fun mapKey!12413 () (_ BitVec 32))

(declare-fun mapValue!12412 () List!23990)

(declare-fun mapRest!12413 () (Array (_ BitVec 32) List!23990))

(assert (=> mapNonEmpty!12414 (= (arr!3874 (_values!2831 (v!28451 (underlying!5297 (v!28452 (underlying!5298 (cache!2846 cacheUp!979))))))) (store mapRest!12413 mapKey!12413 mapValue!12412))))

(declare-fun b!2129678 () Bool)

(declare-fun e!1358085 () Bool)

(declare-fun tp!654450 () Bool)

(assert (=> b!2129678 (= e!1358085 tp!654450)))

(declare-fun b!2129679 () Bool)

(declare-fun lt!796283 () MutLongMap!2550)

(assert (=> b!2129679 (= e!1358086 (and e!1358106 ((_ is LongMap!2550) lt!796283)))))

(assert (=> b!2129679 (= lt!796283 (v!28450 (underlying!5296 (cache!2845 cacheDown!1098))))))

(declare-fun setNonEmpty!15672 () Bool)

(declare-fun setElem!15673 () Context!2542)

(declare-fun tp!654461 () Bool)

(declare-fun inv!31533 (Context!2542) Bool)

(assert (=> setNonEmpty!15672 (= setRes!15672 (and tp!654461 (inv!31533 setElem!15673) e!1358070))))

(declare-fun setRest!15672 () (InoxSet Context!2542))

(assert (=> setNonEmpty!15672 (= z!3839 ((_ map or) (store ((as const (Array Context!2542 Bool)) false) setElem!15673 true) setRest!15672))))

(declare-fun b!2129680 () Bool)

(declare-fun e!1358084 () Bool)

(assert (=> b!2129680 (= e!1358084 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun b!2129681 () Bool)

(assert (=> b!2129681 (= e!1358103 e!1358107)))

(declare-fun res!920800 () Bool)

(assert (=> b!2129681 (=> (not res!920800) (not e!1358107))))

(assert (=> b!2129681 (= res!920800 lt!796281)))

(assert (=> b!2129681 (= lt!796281 e!1358084)))

(declare-fun res!920810 () Bool)

(assert (=> b!2129681 (=> res!920810 e!1358084)))

(declare-fun nullableZipper!88 ((InoxSet Context!2542)) Bool)

(assert (=> b!2129681 (= res!920810 (not (nullableZipper!88 z!3839)))))

(declare-fun setNonEmpty!15673 () Bool)

(declare-fun setElem!15672 () Context!2542)

(declare-fun tp!654442 () Bool)

(assert (=> setNonEmpty!15673 (= setRes!15673 (and tp!654442 (inv!31533 setElem!15672) e!1358085))))

(declare-fun setRest!15673 () (InoxSet Context!2542))

(assert (=> setNonEmpty!15673 (= (z!5778 (h!29310 stack!8)) ((_ map or) (store ((as const (Array Context!2542 Bool)) false) setElem!15672 true) setRest!15673))))

(declare-fun b!2129682 () Bool)

(assert (=> b!2129682 (= e!1358099 (not e!1358094))))

(declare-fun res!920804 () Bool)

(assert (=> b!2129682 (=> res!920804 e!1358094)))

(declare-datatypes ((Option!4885 0))(
  ( (None!4884) (Some!4884 (v!28455 Int)) )
))
(declare-fun get!7345 (CacheFurthestNullable!648 (InoxSet Context!2542) Int Int) Option!4885)

(assert (=> b!2129682 (= res!920804 ((_ is Some!4884) (get!7345 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123)))))

(assert (=> b!2129682 (forall!4899 stack!8 lambda!79072)))

(declare-fun res!920798 () Bool)

(assert (=> b!2129683 (=> (not res!920798) (not e!1358099))))

(assert (=> b!2129683 (= res!920798 (forall!4899 stack!8 lambda!79073))))

(declare-fun b!2129684 () Bool)

(declare-fun res!920806 () Bool)

(assert (=> b!2129684 (=> (not res!920806) (not e!1358107))))

(declare-fun valid!2011 (CacheFurthestNullable!648) Bool)

(assert (=> b!2129684 (= res!920806 (valid!2011 cacheFurthestNullable!114))))

(declare-fun b!2129685 () Bool)

(declare-fun e!1358081 () Bool)

(declare-fun lostCauseZipper!66 ((InoxSet Context!2542)) Bool)

(assert (=> b!2129685 (= e!1358081 (not (lostCauseZipper!66 z!3839)))))

(declare-fun b!2129686 () Bool)

(declare-fun res!920807 () Bool)

(assert (=> b!2129686 (=> res!920807 e!1358094)))

(assert (=> b!2129686 (= res!920807 e!1358081)))

(declare-fun res!920799 () Bool)

(assert (=> b!2129686 (=> (not res!920799) (not e!1358081))))

(assert (=> b!2129686 (= res!920799 (not (= from!1043 totalInputSize!296)))))

(assert (= (and start!207508 res!920809) b!2129677))

(assert (= (and b!2129677 res!920801) b!2129681))

(assert (= (and b!2129681 (not res!920810)) b!2129680))

(assert (= (and b!2129681 res!920800) b!2129659))

(assert (= (and b!2129659 res!920802) b!2129661))

(assert (= (and b!2129661 res!920808) b!2129684))

(assert (= (and b!2129684 res!920806) b!2129648))

(assert (= (and b!2129648 res!920803) b!2129654))

(assert (= (and b!2129654 res!920805) b!2129683))

(assert (= (and b!2129683 res!920798) b!2129682))

(assert (= (and b!2129682 (not res!920804)) b!2129686))

(assert (= (and b!2129686 res!920799) b!2129685))

(assert (= (and b!2129686 (not res!920807)) b!2129666))

(assert (= (and b!2129664 condMapEmpty!12413) mapIsEmpty!12414))

(assert (= (and b!2129664 (not condMapEmpty!12413)) mapNonEmpty!12412))

(assert (= b!2129651 b!2129664))

(assert (= b!2129656 b!2129651))

(assert (= b!2129650 b!2129656))

(assert (= (and b!2129676 ((_ is LongMap!2552) (v!28454 (underlying!5300 (cache!2847 cacheFurthestNullable!114))))) b!2129650))

(assert (= b!2129674 b!2129676))

(assert (= (and b!2129657 ((_ is HashMap!2466) (cache!2847 cacheFurthestNullable!114))) b!2129674))

(assert (= b!2129657 b!2129653))

(assert (= start!207508 b!2129657))

(assert (= (and b!2129646 condMapEmpty!12412) mapIsEmpty!12413))

(assert (= (and b!2129646 (not condMapEmpty!12412)) mapNonEmpty!12413))

(assert (= b!2129668 b!2129646))

(assert (= b!2129652 b!2129668))

(assert (= b!2129655 b!2129652))

(assert (= (and b!2129679 ((_ is LongMap!2550) (v!28450 (underlying!5296 (cache!2845 cacheDown!1098))))) b!2129655))

(assert (= b!2129669 b!2129679))

(assert (= (and b!2129649 ((_ is HashMap!2464) (cache!2845 cacheDown!1098))) b!2129669))

(assert (= start!207508 b!2129649))

(assert (= (and b!2129663 condMapEmpty!12414) mapIsEmpty!12412))

(assert (= (and b!2129663 (not condMapEmpty!12414)) mapNonEmpty!12414))

(assert (= b!2129673 b!2129663))

(assert (= b!2129658 b!2129673))

(assert (= b!2129672 b!2129658))

(assert (= (and b!2129647 ((_ is LongMap!2551) (v!28452 (underlying!5298 (cache!2846 cacheUp!979))))) b!2129672))

(assert (= b!2129667 b!2129647))

(assert (= (and b!2129670 ((_ is HashMap!2465) (cache!2846 cacheUp!979))) b!2129667))

(assert (= start!207508 b!2129670))

(assert (= (and start!207508 condSetEmpty!15673) setIsEmpty!15672))

(assert (= (and start!207508 (not condSetEmpty!15673)) setNonEmpty!15672))

(assert (= setNonEmpty!15672 b!2129660))

(assert (= start!207508 b!2129665))

(assert (= (and b!2129662 condSetEmpty!15672) setIsEmpty!15673))

(assert (= (and b!2129662 (not condSetEmpty!15672)) setNonEmpty!15673))

(assert (= setNonEmpty!15673 b!2129678))

(assert (= b!2129662 b!2129671))

(assert (= b!2129675 b!2129662))

(assert (= (and start!207508 ((_ is Cons!23909) stack!8)) b!2129675))

(declare-fun m!2580202 () Bool)

(assert (=> b!2129685 m!2580202))

(declare-fun m!2580204 () Bool)

(assert (=> start!207508 m!2580204))

(declare-fun m!2580206 () Bool)

(assert (=> start!207508 m!2580206))

(declare-fun m!2580208 () Bool)

(assert (=> start!207508 m!2580208))

(declare-fun m!2580210 () Bool)

(assert (=> start!207508 m!2580210))

(declare-fun m!2580212 () Bool)

(assert (=> b!2129662 m!2580212))

(declare-fun m!2580214 () Bool)

(assert (=> b!2129682 m!2580214))

(declare-fun m!2580216 () Bool)

(assert (=> b!2129682 m!2580216))

(declare-fun m!2580218 () Bool)

(assert (=> b!2129673 m!2580218))

(declare-fun m!2580220 () Bool)

(assert (=> b!2129673 m!2580220))

(declare-fun m!2580222 () Bool)

(assert (=> b!2129681 m!2580222))

(declare-fun m!2580224 () Bool)

(assert (=> b!2129657 m!2580224))

(declare-fun m!2580226 () Bool)

(assert (=> b!2129661 m!2580226))

(declare-fun m!2580228 () Bool)

(assert (=> b!2129653 m!2580228))

(declare-fun m!2580230 () Bool)

(assert (=> mapNonEmpty!12412 m!2580230))

(declare-fun m!2580232 () Bool)

(assert (=> b!2129675 m!2580232))

(declare-fun m!2580234 () Bool)

(assert (=> b!2129671 m!2580234))

(declare-fun m!2580236 () Bool)

(assert (=> b!2129683 m!2580236))

(declare-fun m!2580238 () Bool)

(assert (=> mapNonEmpty!12414 m!2580238))

(assert (=> b!2129654 m!2580216))

(declare-fun m!2580240 () Bool)

(assert (=> b!2129654 m!2580240))

(declare-fun m!2580242 () Bool)

(assert (=> setNonEmpty!15673 m!2580242))

(declare-fun m!2580244 () Bool)

(assert (=> b!2129684 m!2580244))

(declare-fun m!2580246 () Bool)

(assert (=> b!2129651 m!2580246))

(declare-fun m!2580248 () Bool)

(assert (=> b!2129651 m!2580248))

(declare-fun m!2580250 () Bool)

(assert (=> b!2129677 m!2580250))

(declare-fun m!2580252 () Bool)

(assert (=> b!2129659 m!2580252))

(declare-fun m!2580254 () Bool)

(assert (=> b!2129665 m!2580254))

(declare-fun m!2580256 () Bool)

(assert (=> setNonEmpty!15672 m!2580256))

(declare-fun m!2580258 () Bool)

(assert (=> mapNonEmpty!12413 m!2580258))

(declare-fun m!2580260 () Bool)

(assert (=> b!2129668 m!2580260))

(declare-fun m!2580262 () Bool)

(assert (=> b!2129668 m!2580262))

(check-sat (not b!2129685) (not b!2129661) (not b!2129668) (not b_next!62773) (not b!2129678) (not b_next!62783) (not b!2129677) b_and!171655 (not mapNonEmpty!12413) (not b_next!62781) b_and!171649 b_and!171651 (not start!207508) (not b!2129684) (not b!2129660) (not b!2129659) (not b!2129664) (not setNonEmpty!15672) (not b!2129651) (not b_next!62779) (not b!2129665) (not mapNonEmpty!12412) (not mapNonEmpty!12414) (not b!2129654) (not b_next!62777) (not b!2129663) (not b!2129675) (not b!2129681) b_and!171657 (not b!2129683) b_and!171653 (not setNonEmpty!15673) (not b!2129662) (not b!2129653) (not b!2129673) (not b!2129646) (not b_next!62775) (not b!2129682) b_and!171659 (not b!2129671) (not b!2129657))
(check-sat (not b_next!62779) (not b_next!62773) (not b_next!62777) b_and!171657 b_and!171653 (not b_next!62783) (not b_next!62775) b_and!171655 (not b_next!62781) b_and!171649 b_and!171651 b_and!171659)
