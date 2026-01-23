; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208052 () Bool)

(assert start!208052)

(declare-fun b!2143400 () Bool)

(declare-fun b_free!63101 () Bool)

(declare-fun b_next!63805 () Bool)

(assert (=> b!2143400 (= b_free!63101 (not b_next!63805))))

(declare-fun tp!663794 () Bool)

(declare-fun b_and!172681 () Bool)

(assert (=> b!2143400 (= tp!663794 b_and!172681)))

(declare-fun b!2143389 () Bool)

(declare-fun b_free!63103 () Bool)

(declare-fun b_next!63807 () Bool)

(assert (=> b!2143389 (= b_free!63103 (not b_next!63807))))

(declare-fun tp!663799 () Bool)

(declare-fun b_and!172683 () Bool)

(assert (=> b!2143389 (= tp!663799 b_and!172683)))

(declare-fun b!2143378 () Bool)

(declare-fun b_free!63105 () Bool)

(declare-fun b_next!63809 () Bool)

(assert (=> b!2143378 (= b_free!63105 (not b_next!63809))))

(declare-fun tp!663798 () Bool)

(declare-fun b_and!172685 () Bool)

(assert (=> b!2143378 (= tp!663798 b_and!172685)))

(declare-fun b!2143404 () Bool)

(declare-fun b_free!63107 () Bool)

(declare-fun b_next!63811 () Bool)

(assert (=> b!2143404 (= b_free!63107 (not b_next!63811))))

(declare-fun tp!663787 () Bool)

(declare-fun b_and!172687 () Bool)

(assert (=> b!2143404 (= tp!663787 b_and!172687)))

(declare-fun b!2143379 () Bool)

(declare-fun b_free!63109 () Bool)

(declare-fun b_next!63813 () Bool)

(assert (=> b!2143379 (= b_free!63109 (not b_next!63813))))

(declare-fun tp!663779 () Bool)

(declare-fun b_and!172689 () Bool)

(assert (=> b!2143379 (= tp!663779 b_and!172689)))

(declare-fun b!2143403 () Bool)

(declare-fun b_free!63111 () Bool)

(declare-fun b_next!63815 () Bool)

(assert (=> b!2143403 (= b_free!63111 (not b_next!63815))))

(declare-fun tp!663803 () Bool)

(declare-fun b_and!172691 () Bool)

(assert (=> b!2143403 (= tp!663803 b_and!172691)))

(declare-fun b!2143374 () Bool)

(assert (=> b!2143374 true))

(declare-fun bs!445294 () Bool)

(declare-fun b!2143390 () Bool)

(assert (= bs!445294 (and b!2143390 b!2143374)))

(declare-fun lambda!80306 () Int)

(declare-fun lambda!80305 () Int)

(assert (=> bs!445294 (not (= lambda!80306 lambda!80305))))

(assert (=> b!2143390 true))

(declare-fun b!2143365 () Bool)

(declare-fun e!1369453 () Bool)

(declare-fun e!1369455 () Bool)

(declare-datatypes ((C!11720 0))(
  ( (C!11721 (val!6846 Int)) )
))
(declare-datatypes ((Regex!5787 0))(
  ( (ElementMatch!5787 (c!340658 C!11720)) (Concat!10089 (regOne!12086 Regex!5787) (regTwo!12086 Regex!5787)) (EmptyExpr!5787) (Star!5787 (reg!6116 Regex!5787)) (EmptyLang!5787) (Union!5787 (regOne!12087 Regex!5787) (regTwo!12087 Regex!5787)) )
))
(declare-datatypes ((List!24474 0))(
  ( (Nil!24390) (Cons!24390 (h!29791 Regex!5787) (t!197004 List!24474)) )
))
(declare-datatypes ((Context!2714 0))(
  ( (Context!2715 (exprs!1857 List!24474)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3464 0))(
  ( (tuple3!3465 (_1!14320 (InoxSet Context!2714)) (_2!14320 Int) (_3!2202 Int)) )
))
(declare-datatypes ((tuple2!24236 0))(
  ( (tuple2!24237 (_1!14321 tuple3!3464) (_2!14321 Int)) )
))
(declare-datatypes ((List!24475 0))(
  ( (Nil!24391) (Cons!24391 (h!29792 tuple2!24236) (t!197005 List!24475)) )
))
(declare-datatypes ((array!9395 0))(
  ( (array!9396 (arr!4193 (Array (_ BitVec 32) (_ BitVec 64))) (size!19090 (_ BitVec 32))) )
))
(declare-datatypes ((array!9397 0))(
  ( (array!9398 (arr!4194 (Array (_ BitVec 32) List!24475)) (size!19091 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5570 0))(
  ( (LongMapFixedSize!5571 (defaultEntry!3150 Int) (mask!6994 (_ BitVec 32)) (extraKeys!3033 (_ BitVec 32)) (zeroValue!3043 List!24475) (minValue!3043 List!24475) (_size!5621 (_ BitVec 32)) (_keys!3082 array!9395) (_values!3065 array!9397) (_vacant!2846 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10965 0))(
  ( (Cell!10966 (v!28977 LongMapFixedSize!5570)) )
))
(declare-datatypes ((MutLongMap!2785 0))(
  ( (LongMap!2785 (underlying!5765 Cell!10965)) (MutLongMapExt!2784 (__x!16531 Int)) )
))
(declare-fun lt!798471 () MutLongMap!2785)

(get-info :version)

(assert (=> b!2143365 (= e!1369453 (and e!1369455 ((_ is LongMap!2785) lt!798471)))))

(declare-datatypes ((List!24476 0))(
  ( (Nil!24392) (Cons!24392 (h!29793 C!11720) (t!197006 List!24476)) )
))
(declare-datatypes ((IArray!15853 0))(
  ( (IArray!15854 (innerList!7984 List!24476)) )
))
(declare-datatypes ((Conc!7924 0))(
  ( (Node!7924 (left!18750 Conc!7924) (right!19080 Conc!7924) (csize!16078 Int) (cheight!8135 Int)) (Leaf!11585 (xs!10866 IArray!15853) (csize!16079 Int)) (Empty!7924) )
))
(declare-datatypes ((Cell!10967 0))(
  ( (Cell!10968 (v!28978 MutLongMap!2785)) )
))
(declare-datatypes ((Hashable!2699 0))(
  ( (HashableExt!2698 (__x!16532 Int)) )
))
(declare-datatypes ((MutableMap!2699 0))(
  ( (MutableMapExt!2698 (__x!16533 Int)) (HashMap!2699 (underlying!5766 Cell!10967) (hashF!4622 Hashable!2699) (_size!5622 (_ BitVec 32)) (defaultValue!2861 Int)) )
))
(declare-datatypes ((BalanceConc!15610 0))(
  ( (BalanceConc!15611 (c!340659 Conc!7924)) )
))
(declare-datatypes ((CacheFurthestNullable!816 0))(
  ( (CacheFurthestNullable!817 (cache!3080 MutableMap!2699) (totalInput!3148 BalanceConc!15610)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!816)

(assert (=> b!2143365 (= lt!798471 (v!28978 (underlying!5766 (cache!3080 cacheFurthestNullable!114))))))

(declare-fun b!2143366 () Bool)

(declare-fun e!1369445 () Bool)

(declare-fun e!1369457 () Bool)

(assert (=> b!2143366 (= e!1369445 e!1369457)))

(declare-fun b!2143367 () Bool)

(declare-fun e!1369443 () Bool)

(declare-fun e!1369427 () Bool)

(declare-datatypes ((tuple2!24238 0))(
  ( (tuple2!24239 (_1!14322 Context!2714) (_2!14322 C!11720)) )
))
(declare-datatypes ((tuple2!24240 0))(
  ( (tuple2!24241 (_1!14323 tuple2!24238) (_2!14323 (InoxSet Context!2714))) )
))
(declare-datatypes ((List!24477 0))(
  ( (Nil!24393) (Cons!24393 (h!29794 tuple2!24240) (t!197007 List!24477)) )
))
(declare-datatypes ((array!9399 0))(
  ( (array!9400 (arr!4195 (Array (_ BitVec 32) List!24477)) (size!19092 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5572 0))(
  ( (LongMapFixedSize!5573 (defaultEntry!3151 Int) (mask!6995 (_ BitVec 32)) (extraKeys!3034 (_ BitVec 32)) (zeroValue!3044 List!24477) (minValue!3044 List!24477) (_size!5623 (_ BitVec 32)) (_keys!3083 array!9395) (_values!3066 array!9399) (_vacant!2847 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10969 0))(
  ( (Cell!10970 (v!28979 LongMapFixedSize!5572)) )
))
(declare-datatypes ((MutLongMap!2786 0))(
  ( (LongMap!2786 (underlying!5767 Cell!10969)) (MutLongMapExt!2785 (__x!16534 Int)) )
))
(declare-fun lt!798469 () MutLongMap!2786)

(assert (=> b!2143367 (= e!1369443 (and e!1369427 ((_ is LongMap!2786) lt!798469)))))

(declare-datatypes ((Cell!10971 0))(
  ( (Cell!10972 (v!28980 MutLongMap!2786)) )
))
(declare-datatypes ((Hashable!2700 0))(
  ( (HashableExt!2699 (__x!16535 Int)) )
))
(declare-datatypes ((MutableMap!2700 0))(
  ( (MutableMapExt!2699 (__x!16536 Int)) (HashMap!2700 (underlying!5768 Cell!10971) (hashF!4623 Hashable!2700) (_size!5624 (_ BitVec 32)) (defaultValue!2862 Int)) )
))
(declare-datatypes ((CacheUp!1858 0))(
  ( (CacheUp!1859 (cache!3081 MutableMap!2700)) )
))
(declare-fun cacheUp!979 () CacheUp!1858)

(assert (=> b!2143367 (= lt!798469 (v!28980 (underlying!5768 (cache!3081 cacheUp!979))))))

(declare-fun mapNonEmpty!13261 () Bool)

(declare-fun mapRes!13263 () Bool)

(declare-fun tp!663807 () Bool)

(declare-fun tp!663806 () Bool)

(assert (=> mapNonEmpty!13261 (= mapRes!13263 (and tp!663807 tp!663806))))

(declare-fun mapRest!13262 () (Array (_ BitVec 32) List!24475))

(declare-fun mapKey!13261 () (_ BitVec 32))

(declare-fun mapValue!13262 () List!24475)

(assert (=> mapNonEmpty!13261 (= (arr!4194 (_values!3065 (v!28977 (underlying!5765 (v!28978 (underlying!5766 (cache!3080 cacheFurthestNullable!114))))))) (store mapRest!13262 mapKey!13261 mapValue!13262))))

(declare-fun b!2143368 () Bool)

(declare-fun e!1369426 () Bool)

(declare-fun lastNullablePos!123 () Int)

(declare-fun from!1043 () Int)

(assert (=> b!2143368 (= e!1369426 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun b!2143369 () Bool)

(declare-fun e!1369442 () Bool)

(declare-fun tp!663795 () Bool)

(declare-fun mapRes!13262 () Bool)

(assert (=> b!2143369 (= e!1369442 (and tp!663795 mapRes!13262))))

(declare-fun condMapEmpty!13262 () Bool)

(declare-fun mapDefault!13263 () List!24477)

(assert (=> b!2143369 (= condMapEmpty!13262 (= (arr!4195 (_values!3066 (v!28979 (underlying!5767 (v!28980 (underlying!5768 (cache!3081 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!24477)) mapDefault!13263)))))

(declare-fun b!2143370 () Bool)

(declare-fun e!1369439 () Bool)

(declare-fun tp!663797 () Bool)

(declare-fun mapRes!13261 () Bool)

(assert (=> b!2143370 (= e!1369439 (and tp!663797 mapRes!13261))))

(declare-fun condMapEmpty!13263 () Bool)

(declare-datatypes ((tuple3!3466 0))(
  ( (tuple3!3467 (_1!14324 Regex!5787) (_2!14324 Context!2714) (_3!2203 C!11720)) )
))
(declare-datatypes ((tuple2!24242 0))(
  ( (tuple2!24243 (_1!14325 tuple3!3466) (_2!14325 (InoxSet Context!2714))) )
))
(declare-datatypes ((List!24478 0))(
  ( (Nil!24394) (Cons!24394 (h!29795 tuple2!24242) (t!197008 List!24478)) )
))
(declare-datatypes ((Hashable!2701 0))(
  ( (HashableExt!2700 (__x!16537 Int)) )
))
(declare-datatypes ((array!9401 0))(
  ( (array!9402 (arr!4196 (Array (_ BitVec 32) List!24478)) (size!19093 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5574 0))(
  ( (LongMapFixedSize!5575 (defaultEntry!3152 Int) (mask!6996 (_ BitVec 32)) (extraKeys!3035 (_ BitVec 32)) (zeroValue!3045 List!24478) (minValue!3045 List!24478) (_size!5625 (_ BitVec 32)) (_keys!3084 array!9395) (_values!3067 array!9401) (_vacant!2848 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10973 0))(
  ( (Cell!10974 (v!28981 LongMapFixedSize!5574)) )
))
(declare-datatypes ((MutLongMap!2787 0))(
  ( (LongMap!2787 (underlying!5769 Cell!10973)) (MutLongMapExt!2786 (__x!16538 Int)) )
))
(declare-datatypes ((Cell!10975 0))(
  ( (Cell!10976 (v!28982 MutLongMap!2787)) )
))
(declare-datatypes ((MutableMap!2701 0))(
  ( (MutableMapExt!2700 (__x!16539 Int)) (HashMap!2701 (underlying!5770 Cell!10975) (hashF!4624 Hashable!2701) (_size!5626 (_ BitVec 32)) (defaultValue!2863 Int)) )
))
(declare-datatypes ((CacheDown!1848 0))(
  ( (CacheDown!1849 (cache!3082 MutableMap!2701)) )
))
(declare-fun cacheDown!1098 () CacheDown!1848)

(declare-fun mapDefault!13261 () List!24478)

(assert (=> b!2143370 (= condMapEmpty!13263 (= (arr!4196 (_values!3067 (v!28981 (underlying!5769 (v!28982 (underlying!5770 (cache!3082 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!24478)) mapDefault!13261)))))

(declare-fun b!2143371 () Bool)

(declare-fun e!1369450 () Bool)

(declare-fun tp!663781 () Bool)

(assert (=> b!2143371 (= e!1369450 tp!663781)))

(declare-fun setElem!16579 () Context!2714)

(declare-fun setNonEmpty!16578 () Bool)

(declare-fun tp!663784 () Bool)

(declare-fun setRes!16578 () Bool)

(declare-fun inv!32102 (Context!2714) Bool)

(assert (=> setNonEmpty!16578 (= setRes!16578 (and tp!663784 (inv!32102 setElem!16579) e!1369450))))

(declare-datatypes ((StackFrame!248 0))(
  ( (StackFrame!249 (z!5888 (InoxSet Context!2714)) (from!2755 Int) (lastNullablePos!442 Int) (res!925114 Int) (totalInput!3149 BalanceConc!15610)) )
))
(declare-datatypes ((List!24479 0))(
  ( (Nil!24395) (Cons!24395 (h!29796 StackFrame!248) (t!197009 List!24479)) )
))
(declare-fun stack!8 () List!24479)

(declare-fun setRest!16578 () (InoxSet Context!2714))

(assert (=> setNonEmpty!16578 (= (z!5888 (h!29796 stack!8)) ((_ map or) (store ((as const (Array Context!2714 Bool)) false) setElem!16579 true) setRest!16578))))

(declare-fun b!2143372 () Bool)

(declare-fun e!1369448 () Bool)

(declare-fun e!1369424 () Bool)

(assert (=> b!2143372 (= e!1369448 e!1369424)))

(declare-fun mapIsEmpty!13261 () Bool)

(assert (=> mapIsEmpty!13261 mapRes!13263))

(declare-fun mapNonEmpty!13262 () Bool)

(declare-fun tp!663785 () Bool)

(declare-fun tp!663792 () Bool)

(assert (=> mapNonEmpty!13262 (= mapRes!13261 (and tp!663785 tp!663792))))

(declare-fun mapKey!13263 () (_ BitVec 32))

(declare-fun mapValue!13261 () List!24478)

(declare-fun mapRest!13261 () (Array (_ BitVec 32) List!24478))

(assert (=> mapNonEmpty!13262 (= (arr!4196 (_values!3067 (v!28981 (underlying!5769 (v!28982 (underlying!5770 (cache!3082 cacheDown!1098))))))) (store mapRest!13261 mapKey!13263 mapValue!13261))))

(declare-fun mapNonEmpty!13263 () Bool)

(declare-fun tp!663796 () Bool)

(declare-fun tp!663800 () Bool)

(assert (=> mapNonEmpty!13263 (= mapRes!13262 (and tp!663796 tp!663800))))

(declare-fun mapKey!13262 () (_ BitVec 32))

(declare-fun mapRest!13263 () (Array (_ BitVec 32) List!24477))

(declare-fun mapValue!13263 () List!24477)

(assert (=> mapNonEmpty!13263 (= (arr!4195 (_values!3066 (v!28979 (underlying!5767 (v!28980 (underlying!5768 (cache!3081 cacheUp!979))))))) (store mapRest!13263 mapKey!13262 mapValue!13263))))

(declare-fun b!2143373 () Bool)

(declare-fun e!1369425 () Bool)

(declare-fun e!1369449 () Bool)

(assert (=> b!2143373 (= e!1369425 e!1369449)))

(declare-fun e!1369458 () Bool)

(declare-fun e!1369436 () Bool)

(assert (=> b!2143374 (= e!1369458 e!1369436)))

(declare-fun res!925108 () Bool)

(assert (=> b!2143374 (=> (not res!925108) (not e!1369436))))

(declare-fun forall!4982 (List!24479 Int) Bool)

(assert (=> b!2143374 (= res!925108 (forall!4982 stack!8 lambda!80305))))

(declare-fun lt!798468 () Int)

(declare-fun z!3839 () (InoxSet Context!2714))

(declare-fun lt!798470 () Int)

(declare-fun totalInput!851 () BalanceConc!15610)

(declare-fun furthestNullablePosition!84 ((InoxSet Context!2714) Int BalanceConc!15610 Int Int) Int)

(assert (=> b!2143374 (= lt!798468 (furthestNullablePosition!84 z!3839 from!1043 totalInput!851 lt!798470 lastNullablePos!123))))

(declare-fun b!2143375 () Bool)

(declare-fun e!1369451 () Bool)

(assert (=> b!2143375 (= e!1369424 e!1369451)))

(declare-fun tp!663788 () Bool)

(declare-fun e!1369454 () Bool)

(declare-fun b!2143376 () Bool)

(declare-fun e!1369446 () Bool)

(declare-fun inv!32103 (StackFrame!248) Bool)

(assert (=> b!2143376 (= e!1369446 (and (inv!32103 (h!29796 stack!8)) e!1369454 tp!663788))))

(declare-fun b!2143377 () Bool)

(declare-fun res!925112 () Bool)

(assert (=> b!2143377 (=> (not res!925112) (not e!1369458))))

(declare-fun valid!2174 (CacheDown!1848) Bool)

(assert (=> b!2143377 (= res!925112 (valid!2174 cacheDown!1098))))

(declare-fun tp!663802 () Bool)

(declare-fun tp!663780 () Bool)

(declare-fun array_inv!3001 (array!9395) Bool)

(declare-fun array_inv!3002 (array!9399) Bool)

(assert (=> b!2143378 (= e!1369457 (and tp!663798 tp!663780 tp!663802 (array_inv!3001 (_keys!3083 (v!28979 (underlying!5767 (v!28980 (underlying!5768 (cache!3081 cacheUp!979))))))) (array_inv!3002 (_values!3066 (v!28979 (underlying!5767 (v!28980 (underlying!5768 (cache!3081 cacheUp!979))))))) e!1369442))))

(declare-fun e!1369434 () Bool)

(assert (=> b!2143379 (= e!1369434 (and e!1369453 tp!663779))))

(declare-fun res!925113 () Bool)

(declare-fun e!1369432 () Bool)

(assert (=> start!208052 (=> (not res!925113) (not e!1369432))))

(declare-fun totalInputSize!296 () Int)

(assert (=> start!208052 (= res!925113 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!208052 e!1369432))

(declare-fun e!1369430 () Bool)

(declare-fun inv!32104 (CacheFurthestNullable!816) Bool)

(assert (=> start!208052 (and (inv!32104 cacheFurthestNullable!114) e!1369430)))

(assert (=> start!208052 true))

(declare-fun e!1369435 () Bool)

(declare-fun inv!32105 (CacheDown!1848) Bool)

(assert (=> start!208052 (and (inv!32105 cacheDown!1098) e!1369435)))

(declare-fun e!1369444 () Bool)

(declare-fun inv!32106 (CacheUp!1858) Bool)

(assert (=> start!208052 (and (inv!32106 cacheUp!979) e!1369444)))

(declare-fun condSetEmpty!16578 () Bool)

(assert (=> start!208052 (= condSetEmpty!16578 (= z!3839 ((as const (Array Context!2714 Bool)) false)))))

(declare-fun setRes!16579 () Bool)

(assert (=> start!208052 setRes!16579))

(declare-fun e!1369428 () Bool)

(declare-fun inv!32107 (BalanceConc!15610) Bool)

(assert (=> start!208052 (and (inv!32107 totalInput!851) e!1369428)))

(assert (=> start!208052 e!1369446))

(declare-fun b!2143380 () Bool)

(declare-fun e!1369452 () Bool)

(assert (=> b!2143380 (= e!1369452 (forall!4982 stack!8 lambda!80305))))

(assert (=> b!2143380 (forall!4982 stack!8 lambda!80305)))

(declare-fun b!2143381 () Bool)

(declare-fun tp!663801 () Bool)

(declare-fun inv!32108 (Conc!7924) Bool)

(assert (=> b!2143381 (= e!1369428 (and (inv!32108 (c!340659 totalInput!851)) tp!663801))))

(declare-fun setNonEmpty!16579 () Bool)

(declare-fun e!1369429 () Bool)

(declare-fun tp!663782 () Bool)

(declare-fun setElem!16578 () Context!2714)

(assert (=> setNonEmpty!16579 (= setRes!16579 (and tp!663782 (inv!32102 setElem!16578) e!1369429))))

(declare-fun setRest!16579 () (InoxSet Context!2714))

(assert (=> setNonEmpty!16579 (= z!3839 ((_ map or) (store ((as const (Array Context!2714 Bool)) false) setElem!16578 true) setRest!16579))))

(declare-fun b!2143382 () Bool)

(assert (=> b!2143382 (= e!1369432 e!1369458)))

(declare-fun res!925109 () Bool)

(assert (=> b!2143382 (=> (not res!925109) (not e!1369458))))

(assert (=> b!2143382 (= res!925109 (and (= totalInputSize!296 lt!798470) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun size!19094 (BalanceConc!15610) Int)

(assert (=> b!2143382 (= lt!798470 (size!19094 totalInput!851))))

(declare-fun mapIsEmpty!13262 () Bool)

(assert (=> mapIsEmpty!13262 mapRes!13261))

(declare-fun b!2143383 () Bool)

(declare-fun res!925110 () Bool)

(assert (=> b!2143383 (=> (not res!925110) (not e!1369458))))

(assert (=> b!2143383 (= res!925110 e!1369426)))

(declare-fun res!925111 () Bool)

(assert (=> b!2143383 (=> res!925111 e!1369426)))

(declare-fun nullableZipper!146 ((InoxSet Context!2714)) Bool)

(assert (=> b!2143383 (= res!925111 (not (nullableZipper!146 z!3839)))))

(declare-fun b!2143384 () Bool)

(declare-fun tp!663783 () Bool)

(assert (=> b!2143384 (= e!1369429 tp!663783)))

(declare-fun b!2143385 () Bool)

(declare-fun e!1369447 () Bool)

(assert (=> b!2143385 (= e!1369430 (and e!1369434 (inv!32107 (totalInput!3148 cacheFurthestNullable!114)) e!1369447))))

(declare-fun b!2143386 () Bool)

(declare-fun e!1369456 () Bool)

(declare-fun tp!663793 () Bool)

(assert (=> b!2143386 (= e!1369456 (and tp!663793 mapRes!13263))))

(declare-fun condMapEmpty!13261 () Bool)

(declare-fun mapDefault!13262 () List!24475)

(assert (=> b!2143386 (= condMapEmpty!13261 (= (arr!4194 (_values!3065 (v!28977 (underlying!5765 (v!28978 (underlying!5766 (cache!3080 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!24475)) mapDefault!13262)))))

(declare-fun b!2143387 () Bool)

(declare-fun e!1369438 () Bool)

(declare-fun lt!798467 () MutLongMap!2787)

(assert (=> b!2143387 (= e!1369438 (and e!1369448 ((_ is LongMap!2787) lt!798467)))))

(assert (=> b!2143387 (= lt!798467 (v!28982 (underlying!5770 (cache!3082 cacheDown!1098))))))

(declare-fun b!2143388 () Bool)

(declare-fun e!1369433 () Bool)

(assert (=> b!2143388 (= e!1369444 e!1369433)))

(declare-fun tp!663791 () Bool)

(declare-fun tp!663789 () Bool)

(declare-fun array_inv!3003 (array!9397) Bool)

(assert (=> b!2143389 (= e!1369449 (and tp!663799 tp!663789 tp!663791 (array_inv!3001 (_keys!3082 (v!28977 (underlying!5765 (v!28978 (underlying!5766 (cache!3080 cacheFurthestNullable!114))))))) (array_inv!3003 (_values!3065 (v!28977 (underlying!5765 (v!28978 (underlying!5766 (cache!3080 cacheFurthestNullable!114))))))) e!1369456))))

(declare-fun res!925104 () Bool)

(assert (=> b!2143390 (=> (not res!925104) (not e!1369436))))

(assert (=> b!2143390 (= res!925104 (forall!4982 stack!8 lambda!80306))))

(declare-fun b!2143391 () Bool)

(declare-fun e!1369422 () Bool)

(declare-fun lostCauseZipper!121 ((InoxSet Context!2714)) Bool)

(assert (=> b!2143391 (= e!1369422 (not (lostCauseZipper!121 z!3839)))))

(declare-fun e!1369431 () Bool)

(declare-fun b!2143392 () Bool)

(assert (=> b!2143392 (= e!1369454 (and setRes!16578 (inv!32107 (totalInput!3149 (h!29796 stack!8))) e!1369431))))

(declare-fun condSetEmpty!16579 () Bool)

(assert (=> b!2143392 (= condSetEmpty!16579 (= (z!5888 (h!29796 stack!8)) ((as const (Array Context!2714 Bool)) false)))))

(declare-fun b!2143393 () Bool)

(declare-fun res!925106 () Bool)

(assert (=> b!2143393 (=> res!925106 e!1369452)))

(assert (=> b!2143393 (= res!925106 e!1369422)))

(declare-fun res!925103 () Bool)

(assert (=> b!2143393 (=> (not res!925103) (not e!1369422))))

(assert (=> b!2143393 (= res!925103 (not (= from!1043 totalInputSize!296)))))

(declare-fun b!2143394 () Bool)

(assert (=> b!2143394 (= e!1369427 e!1369445)))

(declare-fun setIsEmpty!16578 () Bool)

(assert (=> setIsEmpty!16578 setRes!16579))

(declare-fun b!2143395 () Bool)

(assert (=> b!2143395 (= e!1369436 (not e!1369452))))

(declare-fun res!925107 () Bool)

(assert (=> b!2143395 (=> res!925107 e!1369452)))

(declare-datatypes ((Option!4943 0))(
  ( (None!4942) (Some!4942 (v!28983 Int)) )
))
(declare-fun get!7447 (CacheFurthestNullable!816 (InoxSet Context!2714) Int Int) Option!4943)

(assert (=> b!2143395 (= res!925107 ((_ is Some!4942) (get!7447 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123)))))

(assert (=> b!2143395 (forall!4982 stack!8 lambda!80305)))

(declare-fun b!2143396 () Bool)

(declare-fun e!1369441 () Bool)

(assert (=> b!2143396 (= e!1369435 e!1369441)))

(declare-fun b!2143397 () Bool)

(declare-fun res!925101 () Bool)

(assert (=> b!2143397 (=> (not res!925101) (not e!1369458))))

(declare-fun valid!2175 (CacheFurthestNullable!816) Bool)

(assert (=> b!2143397 (= res!925101 (valid!2175 cacheFurthestNullable!114))))

(declare-fun b!2143398 () Bool)

(declare-fun tp!663804 () Bool)

(assert (=> b!2143398 (= e!1369431 (and (inv!32108 (c!340659 (totalInput!3149 (h!29796 stack!8)))) tp!663804))))

(declare-fun b!2143399 () Bool)

(declare-fun res!925105 () Bool)

(assert (=> b!2143399 (=> (not res!925105) (not e!1369458))))

(assert (=> b!2143399 (= res!925105 (= (totalInput!3148 cacheFurthestNullable!114) totalInput!851))))

(assert (=> b!2143400 (= e!1369441 (and e!1369438 tp!663794))))

(declare-fun b!2143401 () Bool)

(assert (=> b!2143401 (= e!1369455 e!1369425)))

(declare-fun b!2143402 () Bool)

(declare-fun res!925102 () Bool)

(assert (=> b!2143402 (=> res!925102 e!1369452)))

(assert (=> b!2143402 (= res!925102 (not (= lt!798468 lastNullablePos!123)))))

(assert (=> b!2143403 (= e!1369433 (and e!1369443 tp!663803))))

(declare-fun setIsEmpty!16579 () Bool)

(assert (=> setIsEmpty!16579 setRes!16578))

(declare-fun tp!663786 () Bool)

(declare-fun tp!663790 () Bool)

(declare-fun array_inv!3004 (array!9401) Bool)

(assert (=> b!2143404 (= e!1369451 (and tp!663787 tp!663786 tp!663790 (array_inv!3001 (_keys!3084 (v!28981 (underlying!5769 (v!28982 (underlying!5770 (cache!3082 cacheDown!1098))))))) (array_inv!3004 (_values!3067 (v!28981 (underlying!5769 (v!28982 (underlying!5770 (cache!3082 cacheDown!1098))))))) e!1369439))))

(declare-fun b!2143405 () Bool)

(declare-fun res!925100 () Bool)

(assert (=> b!2143405 (=> (not res!925100) (not e!1369458))))

(declare-fun valid!2176 (CacheUp!1858) Bool)

(assert (=> b!2143405 (= res!925100 (valid!2176 cacheUp!979))))

(declare-fun b!2143406 () Bool)

(declare-fun tp!663805 () Bool)

(assert (=> b!2143406 (= e!1369447 (and (inv!32108 (c!340659 (totalInput!3148 cacheFurthestNullable!114))) tp!663805))))

(declare-fun mapIsEmpty!13263 () Bool)

(assert (=> mapIsEmpty!13263 mapRes!13262))

(assert (= (and start!208052 res!925113) b!2143382))

(assert (= (and b!2143382 res!925109) b!2143383))

(assert (= (and b!2143383 (not res!925111)) b!2143368))

(assert (= (and b!2143383 res!925110) b!2143405))

(assert (= (and b!2143405 res!925100) b!2143377))

(assert (= (and b!2143377 res!925112) b!2143397))

(assert (= (and b!2143397 res!925101) b!2143399))

(assert (= (and b!2143399 res!925105) b!2143374))

(assert (= (and b!2143374 res!925108) b!2143390))

(assert (= (and b!2143390 res!925104) b!2143395))

(assert (= (and b!2143395 (not res!925107)) b!2143393))

(assert (= (and b!2143393 res!925103) b!2143391))

(assert (= (and b!2143393 (not res!925106)) b!2143402))

(assert (= (and b!2143402 (not res!925102)) b!2143380))

(assert (= (and b!2143386 condMapEmpty!13261) mapIsEmpty!13261))

(assert (= (and b!2143386 (not condMapEmpty!13261)) mapNonEmpty!13261))

(assert (= b!2143389 b!2143386))

(assert (= b!2143373 b!2143389))

(assert (= b!2143401 b!2143373))

(assert (= (and b!2143365 ((_ is LongMap!2785) (v!28978 (underlying!5766 (cache!3080 cacheFurthestNullable!114))))) b!2143401))

(assert (= b!2143379 b!2143365))

(assert (= (and b!2143385 ((_ is HashMap!2699) (cache!3080 cacheFurthestNullable!114))) b!2143379))

(assert (= b!2143385 b!2143406))

(assert (= start!208052 b!2143385))

(assert (= (and b!2143370 condMapEmpty!13263) mapIsEmpty!13262))

(assert (= (and b!2143370 (not condMapEmpty!13263)) mapNonEmpty!13262))

(assert (= b!2143404 b!2143370))

(assert (= b!2143375 b!2143404))

(assert (= b!2143372 b!2143375))

(assert (= (and b!2143387 ((_ is LongMap!2787) (v!28982 (underlying!5770 (cache!3082 cacheDown!1098))))) b!2143372))

(assert (= b!2143400 b!2143387))

(assert (= (and b!2143396 ((_ is HashMap!2701) (cache!3082 cacheDown!1098))) b!2143400))

(assert (= start!208052 b!2143396))

(assert (= (and b!2143369 condMapEmpty!13262) mapIsEmpty!13263))

(assert (= (and b!2143369 (not condMapEmpty!13262)) mapNonEmpty!13263))

(assert (= b!2143378 b!2143369))

(assert (= b!2143366 b!2143378))

(assert (= b!2143394 b!2143366))

(assert (= (and b!2143367 ((_ is LongMap!2786) (v!28980 (underlying!5768 (cache!3081 cacheUp!979))))) b!2143394))

(assert (= b!2143403 b!2143367))

(assert (= (and b!2143388 ((_ is HashMap!2700) (cache!3081 cacheUp!979))) b!2143403))

(assert (= start!208052 b!2143388))

(assert (= (and start!208052 condSetEmpty!16578) setIsEmpty!16578))

(assert (= (and start!208052 (not condSetEmpty!16578)) setNonEmpty!16579))

(assert (= setNonEmpty!16579 b!2143384))

(assert (= start!208052 b!2143381))

(assert (= (and b!2143392 condSetEmpty!16579) setIsEmpty!16579))

(assert (= (and b!2143392 (not condSetEmpty!16579)) setNonEmpty!16578))

(assert (= setNonEmpty!16578 b!2143371))

(assert (= b!2143392 b!2143398))

(assert (= b!2143376 b!2143392))

(assert (= (and start!208052 ((_ is Cons!24395) stack!8)) b!2143376))

(declare-fun m!2588249 () Bool)

(assert (=> mapNonEmpty!13261 m!2588249))

(declare-fun m!2588251 () Bool)

(assert (=> b!2143390 m!2588251))

(declare-fun m!2588253 () Bool)

(assert (=> b!2143378 m!2588253))

(declare-fun m!2588255 () Bool)

(assert (=> b!2143378 m!2588255))

(declare-fun m!2588257 () Bool)

(assert (=> b!2143381 m!2588257))

(declare-fun m!2588259 () Bool)

(assert (=> b!2143404 m!2588259))

(declare-fun m!2588261 () Bool)

(assert (=> b!2143404 m!2588261))

(declare-fun m!2588263 () Bool)

(assert (=> b!2143376 m!2588263))

(declare-fun m!2588265 () Bool)

(assert (=> b!2143391 m!2588265))

(declare-fun m!2588267 () Bool)

(assert (=> setNonEmpty!16578 m!2588267))

(declare-fun m!2588269 () Bool)

(assert (=> setNonEmpty!16579 m!2588269))

(declare-fun m!2588271 () Bool)

(assert (=> start!208052 m!2588271))

(declare-fun m!2588273 () Bool)

(assert (=> start!208052 m!2588273))

(declare-fun m!2588275 () Bool)

(assert (=> start!208052 m!2588275))

(declare-fun m!2588277 () Bool)

(assert (=> start!208052 m!2588277))

(declare-fun m!2588279 () Bool)

(assert (=> mapNonEmpty!13262 m!2588279))

(declare-fun m!2588281 () Bool)

(assert (=> b!2143377 m!2588281))

(declare-fun m!2588283 () Bool)

(assert (=> b!2143395 m!2588283))

(declare-fun m!2588285 () Bool)

(assert (=> b!2143395 m!2588285))

(declare-fun m!2588287 () Bool)

(assert (=> b!2143406 m!2588287))

(declare-fun m!2588289 () Bool)

(assert (=> mapNonEmpty!13263 m!2588289))

(declare-fun m!2588291 () Bool)

(assert (=> b!2143392 m!2588291))

(declare-fun m!2588293 () Bool)

(assert (=> b!2143389 m!2588293))

(declare-fun m!2588295 () Bool)

(assert (=> b!2143389 m!2588295))

(declare-fun m!2588297 () Bool)

(assert (=> b!2143385 m!2588297))

(declare-fun m!2588299 () Bool)

(assert (=> b!2143405 m!2588299))

(declare-fun m!2588301 () Bool)

(assert (=> b!2143397 m!2588301))

(declare-fun m!2588303 () Bool)

(assert (=> b!2143383 m!2588303))

(assert (=> b!2143380 m!2588285))

(assert (=> b!2143380 m!2588285))

(declare-fun m!2588305 () Bool)

(assert (=> b!2143398 m!2588305))

(assert (=> b!2143374 m!2588285))

(declare-fun m!2588307 () Bool)

(assert (=> b!2143374 m!2588307))

(declare-fun m!2588309 () Bool)

(assert (=> b!2143382 m!2588309))

(check-sat (not b!2143380) (not b_next!63815) (not b_next!63809) (not b_next!63805) b_and!172689 (not b!2143377) (not b!2143405) (not b!2143376) (not b!2143370) (not start!208052) (not b!2143389) b_and!172687 (not b!2143374) (not b!2143386) (not b_next!63807) (not b!2143381) (not b_next!63811) (not b!2143383) (not b_next!63813) (not b!2143398) (not b!2143369) (not b!2143384) (not b!2143385) (not b!2143397) (not mapNonEmpty!13263) (not b!2143378) (not b!2143404) b_and!172685 (not b!2143391) (not b!2143406) (not setNonEmpty!16579) (not mapNonEmpty!13261) (not b!2143392) b_and!172691 (not b!2143390) (not setNonEmpty!16578) (not b!2143382) (not mapNonEmpty!13262) b_and!172681 b_and!172683 (not b!2143371) (not b!2143395))
(check-sat b_and!172687 (not b_next!63815) (not b_next!63807) (not b_next!63809) (not b_next!63811) (not b_next!63813) (not b_next!63805) b_and!172685 b_and!172689 b_and!172691 b_and!172681 b_and!172683)
