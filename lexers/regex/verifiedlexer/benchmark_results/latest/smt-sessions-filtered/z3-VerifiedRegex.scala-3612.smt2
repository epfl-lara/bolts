; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207488 () Bool)

(assert start!207488)

(declare-fun b!2128449 () Bool)

(declare-fun b_free!61949 () Bool)

(declare-fun b_next!62653 () Bool)

(assert (=> b!2128449 (= b_free!61949 (not b_next!62653))))

(declare-fun tp!653586 () Bool)

(declare-fun b_and!171529 () Bool)

(assert (=> b!2128449 (= tp!653586 b_and!171529)))

(declare-fun b!2128450 () Bool)

(declare-fun b_free!61951 () Bool)

(declare-fun b_next!62655 () Bool)

(assert (=> b!2128450 (= b_free!61951 (not b_next!62655))))

(declare-fun tp!653593 () Bool)

(declare-fun b_and!171531 () Bool)

(assert (=> b!2128450 (= tp!653593 b_and!171531)))

(declare-fun b!2128415 () Bool)

(declare-fun b_free!61953 () Bool)

(declare-fun b_next!62657 () Bool)

(assert (=> b!2128415 (= b_free!61953 (not b_next!62657))))

(declare-fun tp!653588 () Bool)

(declare-fun b_and!171533 () Bool)

(assert (=> b!2128415 (= tp!653588 b_and!171533)))

(declare-fun b!2128418 () Bool)

(declare-fun b_free!61955 () Bool)

(declare-fun b_next!62659 () Bool)

(assert (=> b!2128418 (= b_free!61955 (not b_next!62659))))

(declare-fun tp!653587 () Bool)

(declare-fun b_and!171535 () Bool)

(assert (=> b!2128418 (= tp!653587 b_and!171535)))

(declare-fun b!2128430 () Bool)

(declare-fun b_free!61957 () Bool)

(declare-fun b_next!62661 () Bool)

(assert (=> b!2128430 (= b_free!61957 (not b_next!62661))))

(declare-fun tp!653596 () Bool)

(declare-fun b_and!171537 () Bool)

(assert (=> b!2128430 (= tp!653596 b_and!171537)))

(declare-fun b!2128431 () Bool)

(declare-fun b_free!61959 () Bool)

(declare-fun b_next!62663 () Bool)

(assert (=> b!2128431 (= b_free!61959 (not b_next!62663))))

(declare-fun tp!653582 () Bool)

(declare-fun b_and!171539 () Bool)

(assert (=> b!2128431 (= tp!653582 b_and!171539)))

(declare-fun b!2128443 () Bool)

(assert (=> b!2128443 true))

(declare-fun bs!444204 () Bool)

(declare-fun b!2128436 () Bool)

(assert (= bs!444204 (and b!2128436 b!2128443)))

(declare-fun lambda!78993 () Int)

(declare-fun lambda!78992 () Int)

(assert (=> bs!444204 (not (= lambda!78993 lambda!78992))))

(assert (=> b!2128436 true))

(declare-fun tp!653571 () Bool)

(declare-fun e!1357001 () Bool)

(declare-datatypes ((C!11528 0))(
  ( (C!11529 (val!6750 Int)) )
))
(declare-datatypes ((Regex!5691 0))(
  ( (ElementMatch!5691 (c!340143 C!11528)) (Concat!9993 (regOne!11894 Regex!5691) (regTwo!11894 Regex!5691)) (EmptyExpr!5691) (Star!5691 (reg!6020 Regex!5691)) (EmptyLang!5691) (Union!5691 (regOne!11895 Regex!5691) (regTwo!11895 Regex!5691)) )
))
(declare-datatypes ((List!23930 0))(
  ( (Nil!23846) (Cons!23846 (h!29247 Regex!5691) (t!196458 List!23930)) )
))
(declare-datatypes ((Context!2522 0))(
  ( (Context!2523 (exprs!1761 List!23930)) )
))
(declare-datatypes ((tuple3!3030 0))(
  ( (tuple3!3031 (_1!13755 Regex!5691) (_2!13755 Context!2522) (_3!1985 C!11528)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!23540 0))(
  ( (tuple2!23541 (_1!13756 tuple3!3030) (_2!13756 (InoxSet Context!2522))) )
))
(declare-datatypes ((List!23931 0))(
  ( (Nil!23847) (Cons!23847 (h!29248 tuple2!23540) (t!196459 List!23931)) )
))
(declare-datatypes ((Hashable!2436 0))(
  ( (HashableExt!2435 (__x!15742 Int)) )
))
(declare-datatypes ((array!8645 0))(
  ( (array!8646 (arr!3834 (Array (_ BitVec 32) (_ BitVec 64))) (size!18653 (_ BitVec 32))) )
))
(declare-datatypes ((array!8647 0))(
  ( (array!8648 (arr!3835 (Array (_ BitVec 32) List!23931)) (size!18654 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5044 0))(
  ( (LongMapFixedSize!5045 (defaultEntry!2887 Int) (mask!6683 (_ BitVec 32)) (extraKeys!2770 (_ BitVec 32)) (zeroValue!2780 List!23931) (minValue!2780 List!23931) (_size!5095 (_ BitVec 32)) (_keys!2819 array!8645) (_values!2802 array!8647) (_vacant!2583 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9913 0))(
  ( (Cell!9914 (v!28386 LongMapFixedSize!5044)) )
))
(declare-datatypes ((MutLongMap!2522 0))(
  ( (LongMap!2522 (underlying!5239 Cell!9913)) (MutLongMapExt!2521 (__x!15743 Int)) )
))
(declare-datatypes ((Cell!9915 0))(
  ( (Cell!9916 (v!28387 MutLongMap!2522)) )
))
(declare-datatypes ((MutableMap!2436 0))(
  ( (MutableMapExt!2435 (__x!15744 Int)) (HashMap!2436 (underlying!5240 Cell!9915) (hashF!4359 Hashable!2436) (_size!5096 (_ BitVec 32)) (defaultValue!2598 Int)) )
))
(declare-datatypes ((CacheDown!1676 0))(
  ( (CacheDown!1677 (cache!2817 MutableMap!2436)) )
))
(declare-fun cacheDown!1098 () CacheDown!1676)

(declare-fun e!1356980 () Bool)

(declare-fun tp!653580 () Bool)

(declare-fun array_inv!2742 (array!8645) Bool)

(declare-fun array_inv!2743 (array!8647) Bool)

(assert (=> b!2128415 (= e!1356980 (and tp!653588 tp!653580 tp!653571 (array_inv!2742 (_keys!2819 (v!28386 (underlying!5239 (v!28387 (underlying!5240 (cache!2817 cacheDown!1098))))))) (array_inv!2743 (_values!2802 (v!28386 (underlying!5239 (v!28387 (underlying!5240 (cache!2817 cacheDown!1098))))))) e!1357001))))

(declare-fun b!2128416 () Bool)

(declare-fun res!920443 () Bool)

(declare-fun e!1356976 () Bool)

(assert (=> b!2128416 (=> (not res!920443) (not e!1356976))))

(declare-datatypes ((tuple2!23542 0))(
  ( (tuple2!23543 (_1!13757 Context!2522) (_2!13757 C!11528)) )
))
(declare-datatypes ((tuple2!23544 0))(
  ( (tuple2!23545 (_1!13758 tuple2!23542) (_2!13758 (InoxSet Context!2522))) )
))
(declare-datatypes ((List!23932 0))(
  ( (Nil!23848) (Cons!23848 (h!29249 tuple2!23544) (t!196460 List!23932)) )
))
(declare-datatypes ((array!8649 0))(
  ( (array!8650 (arr!3836 (Array (_ BitVec 32) List!23932)) (size!18655 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5046 0))(
  ( (LongMapFixedSize!5047 (defaultEntry!2888 Int) (mask!6684 (_ BitVec 32)) (extraKeys!2771 (_ BitVec 32)) (zeroValue!2781 List!23932) (minValue!2781 List!23932) (_size!5097 (_ BitVec 32)) (_keys!2820 array!8645) (_values!2803 array!8649) (_vacant!2584 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9917 0))(
  ( (Cell!9918 (v!28388 LongMapFixedSize!5046)) )
))
(declare-datatypes ((MutLongMap!2523 0))(
  ( (LongMap!2523 (underlying!5241 Cell!9917)) (MutLongMapExt!2522 (__x!15745 Int)) )
))
(declare-datatypes ((Cell!9919 0))(
  ( (Cell!9920 (v!28389 MutLongMap!2523)) )
))
(declare-datatypes ((Hashable!2437 0))(
  ( (HashableExt!2436 (__x!15746 Int)) )
))
(declare-datatypes ((MutableMap!2437 0))(
  ( (MutableMapExt!2436 (__x!15747 Int)) (HashMap!2437 (underlying!5242 Cell!9919) (hashF!4360 Hashable!2437) (_size!5098 (_ BitVec 32)) (defaultValue!2599 Int)) )
))
(declare-datatypes ((CacheUp!1690 0))(
  ( (CacheUp!1691 (cache!2818 MutableMap!2437)) )
))
(declare-fun cacheUp!979 () CacheUp!1690)

(declare-fun valid!1987 (CacheUp!1690) Bool)

(assert (=> b!2128416 (= res!920443 (valid!1987 cacheUp!979))))

(declare-fun b!2128417 () Bool)

(declare-fun e!1356989 () Bool)

(assert (=> b!2128417 (= e!1356989 e!1356976)))

(declare-fun res!920440 () Bool)

(assert (=> b!2128417 (=> (not res!920440) (not e!1356976))))

(declare-fun totalInputSize!296 () Int)

(declare-fun lastNullablePos!123 () Int)

(declare-fun lt!796108 () Int)

(declare-fun from!1043 () Int)

(assert (=> b!2128417 (= res!920440 (and (= totalInputSize!296 lt!796108) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-datatypes ((List!23933 0))(
  ( (Nil!23849) (Cons!23849 (h!29250 C!11528) (t!196461 List!23933)) )
))
(declare-datatypes ((IArray!15663 0))(
  ( (IArray!15664 (innerList!7889 List!23933)) )
))
(declare-datatypes ((Conc!7829 0))(
  ( (Node!7829 (left!18415 Conc!7829) (right!18745 Conc!7829) (csize!15888 Int) (cheight!8040 Int)) (Leaf!11442 (xs!10771 IArray!15663) (csize!15889 Int)) (Empty!7829) )
))
(declare-datatypes ((BalanceConc!15420 0))(
  ( (BalanceConc!15421 (c!340144 Conc!7829)) )
))
(declare-fun totalInput!851 () BalanceConc!15420)

(declare-fun size!18656 (BalanceConc!15420) Int)

(assert (=> b!2128417 (= lt!796108 (size!18656 totalInput!851))))

(declare-fun mapIsEmpty!12322 () Bool)

(declare-fun mapRes!12322 () Bool)

(assert (=> mapIsEmpty!12322 mapRes!12322))

(declare-fun tp!653591 () Bool)

(declare-datatypes ((tuple3!3032 0))(
  ( (tuple3!3033 (_1!13759 (InoxSet Context!2522)) (_2!13759 Int) (_3!1986 Int)) )
))
(declare-datatypes ((tuple2!23546 0))(
  ( (tuple2!23547 (_1!13760 tuple3!3032) (_2!13760 Int)) )
))
(declare-datatypes ((List!23934 0))(
  ( (Nil!23850) (Cons!23850 (h!29251 tuple2!23546) (t!196462 List!23934)) )
))
(declare-datatypes ((array!8651 0))(
  ( (array!8652 (arr!3837 (Array (_ BitVec 32) List!23934)) (size!18657 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5048 0))(
  ( (LongMapFixedSize!5049 (defaultEntry!2889 Int) (mask!6685 (_ BitVec 32)) (extraKeys!2772 (_ BitVec 32)) (zeroValue!2782 List!23934) (minValue!2782 List!23934) (_size!5099 (_ BitVec 32)) (_keys!2821 array!8645) (_values!2804 array!8651) (_vacant!2585 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9921 0))(
  ( (Cell!9922 (v!28390 LongMapFixedSize!5048)) )
))
(declare-datatypes ((MutLongMap!2524 0))(
  ( (LongMap!2524 (underlying!5243 Cell!9921)) (MutLongMapExt!2523 (__x!15748 Int)) )
))
(declare-datatypes ((Cell!9923 0))(
  ( (Cell!9924 (v!28391 MutLongMap!2524)) )
))
(declare-datatypes ((Hashable!2438 0))(
  ( (HashableExt!2437 (__x!15749 Int)) )
))
(declare-datatypes ((MutableMap!2438 0))(
  ( (MutableMapExt!2437 (__x!15750 Int)) (HashMap!2438 (underlying!5244 Cell!9923) (hashF!4361 Hashable!2438) (_size!5100 (_ BitVec 32)) (defaultValue!2600 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!630 0))(
  ( (CacheFurthestNullable!631 (cache!2819 MutableMap!2438) (totalInput!2962 BalanceConc!15420)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!630)

(declare-fun e!1356971 () Bool)

(declare-fun tp!653577 () Bool)

(declare-fun e!1356996 () Bool)

(declare-fun array_inv!2744 (array!8651) Bool)

(assert (=> b!2128418 (= e!1356971 (and tp!653587 tp!653591 tp!653577 (array_inv!2742 (_keys!2821 (v!28390 (underlying!5243 (v!28391 (underlying!5244 (cache!2819 cacheFurthestNullable!114))))))) (array_inv!2744 (_values!2804 (v!28390 (underlying!5243 (v!28391 (underlying!5244 (cache!2819 cacheFurthestNullable!114))))))) e!1356996))))

(declare-fun b!2128419 () Bool)

(declare-fun tp!653590 () Bool)

(declare-fun mapRes!12324 () Bool)

(assert (=> b!2128419 (= e!1357001 (and tp!653590 mapRes!12324))))

(declare-fun condMapEmpty!12323 () Bool)

(declare-fun mapDefault!12324 () List!23931)

(assert (=> b!2128419 (= condMapEmpty!12323 (= (arr!3835 (_values!2802 (v!28386 (underlying!5239 (v!28387 (underlying!5240 (cache!2817 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!23931)) mapDefault!12324)))))

(declare-fun b!2128420 () Bool)

(declare-fun e!1356984 () Bool)

(declare-fun e!1357000 () Bool)

(declare-fun tp!653594 () Bool)

(declare-datatypes ((StackFrame!80 0))(
  ( (StackFrame!81 (z!5768 (InoxSet Context!2522)) (from!2654 Int) (lastNullablePos!341 Int) (res!920447 Int) (totalInput!2963 BalanceConc!15420)) )
))
(declare-datatypes ((List!23935 0))(
  ( (Nil!23851) (Cons!23851 (h!29252 StackFrame!80) (t!196463 List!23935)) )
))
(declare-fun stack!8 () List!23935)

(declare-fun inv!31459 (StackFrame!80) Bool)

(assert (=> b!2128420 (= e!1356984 (and (inv!31459 (h!29252 stack!8)) e!1357000 tp!653594))))

(declare-fun mapNonEmpty!12322 () Bool)

(declare-fun tp!653578 () Bool)

(declare-fun tp!653589 () Bool)

(assert (=> mapNonEmpty!12322 (= mapRes!12324 (and tp!653578 tp!653589))))

(declare-fun mapRest!12322 () (Array (_ BitVec 32) List!23931))

(declare-fun mapKey!12323 () (_ BitVec 32))

(declare-fun mapValue!12324 () List!23931)

(assert (=> mapNonEmpty!12322 (= (arr!3835 (_values!2802 (v!28386 (underlying!5239 (v!28387 (underlying!5240 (cache!2817 cacheDown!1098))))))) (store mapRest!12322 mapKey!12323 mapValue!12324))))

(declare-fun b!2128421 () Bool)

(declare-fun res!920439 () Bool)

(assert (=> b!2128421 (=> (not res!920439) (not e!1356976))))

(declare-fun e!1356985 () Bool)

(assert (=> b!2128421 (= res!920439 e!1356985)))

(declare-fun res!920438 () Bool)

(assert (=> b!2128421 (=> res!920438 e!1356985)))

(declare-fun z!3839 () (InoxSet Context!2522))

(declare-fun nullableZipper!82 ((InoxSet Context!2522)) Bool)

(assert (=> b!2128421 (= res!920438 (not (nullableZipper!82 z!3839)))))

(declare-fun b!2128422 () Bool)

(declare-fun e!1356994 () Bool)

(assert (=> b!2128422 (= e!1356994 e!1356971)))

(declare-fun res!920444 () Bool)

(assert (=> start!207488 (=> (not res!920444) (not e!1356989))))

(assert (=> start!207488 (= res!920444 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!207488 e!1356989))

(declare-fun e!1356992 () Bool)

(declare-fun inv!31460 (CacheFurthestNullable!630) Bool)

(assert (=> start!207488 (and (inv!31460 cacheFurthestNullable!114) e!1356992)))

(assert (=> start!207488 true))

(declare-fun e!1356995 () Bool)

(declare-fun inv!31461 (CacheDown!1676) Bool)

(assert (=> start!207488 (and (inv!31461 cacheDown!1098) e!1356995)))

(declare-fun e!1356969 () Bool)

(declare-fun inv!31462 (CacheUp!1690) Bool)

(assert (=> start!207488 (and (inv!31462 cacheUp!979) e!1356969)))

(declare-fun condSetEmpty!15613 () Bool)

(assert (=> start!207488 (= condSetEmpty!15613 (= z!3839 ((as const (Array Context!2522 Bool)) false)))))

(declare-fun setRes!15612 () Bool)

(assert (=> start!207488 setRes!15612))

(declare-fun e!1356987 () Bool)

(declare-fun inv!31463 (BalanceConc!15420) Bool)

(assert (=> start!207488 (and (inv!31463 totalInput!851) e!1356987)))

(assert (=> start!207488 e!1356984))

(declare-fun e!1356972 () Bool)

(declare-fun setNonEmpty!15612 () Bool)

(declare-fun setElem!15612 () Context!2522)

(declare-fun tp!653574 () Bool)

(declare-fun inv!31464 (Context!2522) Bool)

(assert (=> setNonEmpty!15612 (= setRes!15612 (and tp!653574 (inv!31464 setElem!15612) e!1356972))))

(declare-fun setRest!15613 () (InoxSet Context!2522))

(assert (=> setNonEmpty!15612 (= z!3839 ((_ map or) (store ((as const (Array Context!2522 Bool)) false) setElem!15612 true) setRest!15613))))

(declare-fun b!2128423 () Bool)

(declare-fun e!1356991 () Bool)

(assert (=> b!2128423 (= e!1356969 e!1356991)))

(declare-fun b!2128424 () Bool)

(declare-fun tp!653581 () Bool)

(declare-fun inv!31465 (Conc!7829) Bool)

(assert (=> b!2128424 (= e!1356987 (and (inv!31465 (c!340144 totalInput!851)) tp!653581))))

(declare-fun b!2128425 () Bool)

(declare-fun e!1356979 () Bool)

(declare-fun e!1356977 () Bool)

(assert (=> b!2128425 (= e!1356979 e!1356977)))

(declare-fun mapIsEmpty!12323 () Bool)

(assert (=> mapIsEmpty!12323 mapRes!12324))

(declare-fun setIsEmpty!15612 () Bool)

(assert (=> setIsEmpty!15612 setRes!15612))

(declare-fun b!2128426 () Bool)

(declare-fun tp!653576 () Bool)

(assert (=> b!2128426 (= e!1356972 tp!653576)))

(declare-fun setIsEmpty!15613 () Bool)

(declare-fun setRes!15613 () Bool)

(assert (=> setIsEmpty!15613 setRes!15613))

(declare-fun mapNonEmpty!12323 () Bool)

(declare-fun mapRes!12323 () Bool)

(declare-fun tp!653595 () Bool)

(declare-fun tp!653575 () Bool)

(assert (=> mapNonEmpty!12323 (= mapRes!12323 (and tp!653595 tp!653575))))

(declare-fun mapRest!12324 () (Array (_ BitVec 32) List!23932))

(declare-fun mapKey!12324 () (_ BitVec 32))

(declare-fun mapValue!12322 () List!23932)

(assert (=> mapNonEmpty!12323 (= (arr!3836 (_values!2803 (v!28388 (underlying!5241 (v!28389 (underlying!5242 (cache!2818 cacheUp!979))))))) (store mapRest!12324 mapKey!12324 mapValue!12322))))

(declare-fun e!1356998 () Bool)

(declare-fun setNonEmpty!15613 () Bool)

(declare-fun setElem!15613 () Context!2522)

(declare-fun tp!653568 () Bool)

(assert (=> setNonEmpty!15613 (= setRes!15613 (and tp!653568 (inv!31464 setElem!15613) e!1356998))))

(declare-fun setRest!15612 () (InoxSet Context!2522))

(assert (=> setNonEmpty!15613 (= (z!5768 (h!29252 stack!8)) ((_ map or) (store ((as const (Array Context!2522 Bool)) false) setElem!15613 true) setRest!15612))))

(declare-fun mapIsEmpty!12324 () Bool)

(assert (=> mapIsEmpty!12324 mapRes!12323))

(declare-fun b!2128427 () Bool)

(declare-fun e!1356990 () Bool)

(declare-fun tp!653592 () Bool)

(assert (=> b!2128427 (= e!1356990 (and (inv!31465 (c!340144 (totalInput!2962 cacheFurthestNullable!114))) tp!653592))))

(declare-fun b!2128428 () Bool)

(declare-fun res!920437 () Bool)

(assert (=> b!2128428 (=> (not res!920437) (not e!1356976))))

(declare-fun valid!1988 (CacheFurthestNullable!630) Bool)

(assert (=> b!2128428 (= res!920437 (valid!1988 cacheFurthestNullable!114))))

(declare-fun b!2128429 () Bool)

(declare-fun e!1357003 () Bool)

(declare-fun e!1356973 () Bool)

(assert (=> b!2128429 (= e!1357003 e!1356973)))

(declare-fun e!1356988 () Bool)

(assert (=> b!2128430 (= e!1356991 (and e!1356988 tp!653596))))

(declare-fun e!1356983 () Bool)

(declare-fun e!1356999 () Bool)

(assert (=> b!2128431 (= e!1356983 (and e!1356999 tp!653582))))

(declare-fun b!2128432 () Bool)

(declare-fun e!1356978 () Bool)

(declare-fun e!1356982 () Bool)

(declare-fun lt!796110 () MutLongMap!2524)

(get-info :version)

(assert (=> b!2128432 (= e!1356978 (and e!1356982 ((_ is LongMap!2524) lt!796110)))))

(assert (=> b!2128432 (= lt!796110 (v!28391 (underlying!5244 (cache!2819 cacheFurthestNullable!114))))))

(declare-fun b!2128433 () Bool)

(declare-fun e!1357002 () Bool)

(assert (=> b!2128433 (= e!1356992 (and e!1357002 (inv!31463 (totalInput!2962 cacheFurthestNullable!114)) e!1356990))))

(declare-fun b!2128434 () Bool)

(declare-fun e!1356970 () Bool)

(declare-fun tp!653579 () Bool)

(assert (=> b!2128434 (= e!1356970 (and (inv!31465 (c!340144 (totalInput!2963 (h!29252 stack!8)))) tp!653579))))

(declare-fun b!2128435 () Bool)

(declare-fun res!920441 () Bool)

(assert (=> b!2128435 (=> (not res!920441) (not e!1356976))))

(assert (=> b!2128435 (= res!920441 (= (totalInput!2962 cacheFurthestNullable!114) totalInput!851))))

(declare-fun res!920442 () Bool)

(declare-fun e!1356981 () Bool)

(assert (=> b!2128436 (=> (not res!920442) (not e!1356981))))

(declare-fun forall!4891 (List!23935 Int) Bool)

(assert (=> b!2128436 (= res!920442 (forall!4891 stack!8 lambda!78993))))

(declare-fun b!2128437 () Bool)

(declare-fun e!1356993 () Bool)

(assert (=> b!2128437 (= e!1356977 e!1356993)))

(declare-fun b!2128438 () Bool)

(assert (=> b!2128438 (= e!1356973 e!1356980)))

(declare-fun b!2128439 () Bool)

(assert (=> b!2128439 (= e!1356982 e!1356994)))

(declare-fun b!2128440 () Bool)

(declare-fun tp!653585 () Bool)

(assert (=> b!2128440 (= e!1356998 tp!653585)))

(declare-fun b!2128441 () Bool)

(assert (=> b!2128441 (= e!1357000 (and setRes!15613 (inv!31463 (totalInput!2963 (h!29252 stack!8))) e!1356970))))

(declare-fun condSetEmpty!15612 () Bool)

(assert (=> b!2128441 (= condSetEmpty!15612 (= (z!5768 (h!29252 stack!8)) ((as const (Array Context!2522 Bool)) false)))))

(declare-fun b!2128442 () Bool)

(declare-fun res!920446 () Bool)

(assert (=> b!2128442 (=> (not res!920446) (not e!1356976))))

(declare-fun valid!1989 (CacheDown!1676) Bool)

(assert (=> b!2128442 (= res!920446 (valid!1989 cacheDown!1098))))

(assert (=> b!2128443 (= e!1356976 e!1356981)))

(declare-fun res!920445 () Bool)

(assert (=> b!2128443 (=> (not res!920445) (not e!1356981))))

(assert (=> b!2128443 (= res!920445 (forall!4891 stack!8 lambda!78992))))

(declare-fun lt!796105 () Int)

(declare-fun furthestNullablePosition!20 ((InoxSet Context!2522) Int BalanceConc!15420 Int Int) Int)

(assert (=> b!2128443 (= lt!796105 (furthestNullablePosition!20 z!3839 from!1043 totalInput!851 lt!796108 lastNullablePos!123))))

(declare-fun b!2128444 () Bool)

(declare-fun lt!796109 () MutLongMap!2522)

(assert (=> b!2128444 (= e!1356999 (and e!1357003 ((_ is LongMap!2522) lt!796109)))))

(assert (=> b!2128444 (= lt!796109 (v!28387 (underlying!5240 (cache!2817 cacheDown!1098))))))

(declare-fun b!2128445 () Bool)

(declare-fun tp!653573 () Bool)

(assert (=> b!2128445 (= e!1356996 (and tp!653573 mapRes!12322))))

(declare-fun condMapEmpty!12322 () Bool)

(declare-fun mapDefault!12323 () List!23934)

(assert (=> b!2128445 (= condMapEmpty!12322 (= (arr!3837 (_values!2804 (v!28390 (underlying!5243 (v!28391 (underlying!5244 (cache!2819 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!23934)) mapDefault!12323)))))

(declare-fun b!2128446 () Bool)

(declare-fun e!1356986 () Bool)

(declare-fun tp!653570 () Bool)

(assert (=> b!2128446 (= e!1356986 (and tp!653570 mapRes!12323))))

(declare-fun condMapEmpty!12324 () Bool)

(declare-fun mapDefault!12322 () List!23932)

(assert (=> b!2128446 (= condMapEmpty!12324 (= (arr!3836 (_values!2803 (v!28388 (underlying!5241 (v!28389 (underlying!5242 (cache!2818 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!23932)) mapDefault!12322)))))

(declare-fun b!2128447 () Bool)

(declare-fun lt!796107 () MutLongMap!2523)

(assert (=> b!2128447 (= e!1356988 (and e!1356979 ((_ is LongMap!2523) lt!796107)))))

(assert (=> b!2128447 (= lt!796107 (v!28389 (underlying!5242 (cache!2818 cacheUp!979))))))

(declare-fun b!2128448 () Bool)

(assert (=> b!2128448 (= e!1356985 (= lastNullablePos!123 (- from!1043 1)))))

(assert (=> b!2128449 (= e!1357002 (and e!1356978 tp!653586))))

(declare-fun tp!653584 () Bool)

(declare-fun tp!653569 () Bool)

(declare-fun array_inv!2745 (array!8649) Bool)

(assert (=> b!2128450 (= e!1356993 (and tp!653593 tp!653584 tp!653569 (array_inv!2742 (_keys!2820 (v!28388 (underlying!5241 (v!28389 (underlying!5242 (cache!2818 cacheUp!979))))))) (array_inv!2745 (_values!2803 (v!28388 (underlying!5241 (v!28389 (underlying!5242 (cache!2818 cacheUp!979))))))) e!1356986))))

(declare-fun mapNonEmpty!12324 () Bool)

(declare-fun tp!653572 () Bool)

(declare-fun tp!653583 () Bool)

(assert (=> mapNonEmpty!12324 (= mapRes!12322 (and tp!653572 tp!653583))))

(declare-fun mapKey!12322 () (_ BitVec 32))

(declare-fun mapValue!12323 () List!23934)

(declare-fun mapRest!12323 () (Array (_ BitVec 32) List!23934))

(assert (=> mapNonEmpty!12324 (= (arr!3837 (_values!2804 (v!28390 (underlying!5243 (v!28391 (underlying!5244 (cache!2819 cacheFurthestNullable!114))))))) (store mapRest!12323 mapKey!12322 mapValue!12323))))

(declare-fun b!2128451 () Bool)

(assert (=> b!2128451 (= e!1356995 e!1356983)))

(declare-fun b!2128452 () Bool)

(assert (=> b!2128452 (= e!1356981 (not true))))

(declare-datatypes ((Option!4878 0))(
  ( (None!4877) (Some!4877 (v!28392 Int)) )
))
(declare-fun lt!796106 () Option!4878)

(declare-fun get!7333 (CacheFurthestNullable!630 (InoxSet Context!2522) Int Int) Option!4878)

(assert (=> b!2128452 (= lt!796106 (get!7333 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123))))

(assert (=> b!2128452 (forall!4891 stack!8 lambda!78992)))

(assert (= (and start!207488 res!920444) b!2128417))

(assert (= (and b!2128417 res!920440) b!2128421))

(assert (= (and b!2128421 (not res!920438)) b!2128448))

(assert (= (and b!2128421 res!920439) b!2128416))

(assert (= (and b!2128416 res!920443) b!2128442))

(assert (= (and b!2128442 res!920446) b!2128428))

(assert (= (and b!2128428 res!920437) b!2128435))

(assert (= (and b!2128435 res!920441) b!2128443))

(assert (= (and b!2128443 res!920445) b!2128436))

(assert (= (and b!2128436 res!920442) b!2128452))

(assert (= (and b!2128445 condMapEmpty!12322) mapIsEmpty!12322))

(assert (= (and b!2128445 (not condMapEmpty!12322)) mapNonEmpty!12324))

(assert (= b!2128418 b!2128445))

(assert (= b!2128422 b!2128418))

(assert (= b!2128439 b!2128422))

(assert (= (and b!2128432 ((_ is LongMap!2524) (v!28391 (underlying!5244 (cache!2819 cacheFurthestNullable!114))))) b!2128439))

(assert (= b!2128449 b!2128432))

(assert (= (and b!2128433 ((_ is HashMap!2438) (cache!2819 cacheFurthestNullable!114))) b!2128449))

(assert (= b!2128433 b!2128427))

(assert (= start!207488 b!2128433))

(assert (= (and b!2128419 condMapEmpty!12323) mapIsEmpty!12323))

(assert (= (and b!2128419 (not condMapEmpty!12323)) mapNonEmpty!12322))

(assert (= b!2128415 b!2128419))

(assert (= b!2128438 b!2128415))

(assert (= b!2128429 b!2128438))

(assert (= (and b!2128444 ((_ is LongMap!2522) (v!28387 (underlying!5240 (cache!2817 cacheDown!1098))))) b!2128429))

(assert (= b!2128431 b!2128444))

(assert (= (and b!2128451 ((_ is HashMap!2436) (cache!2817 cacheDown!1098))) b!2128431))

(assert (= start!207488 b!2128451))

(assert (= (and b!2128446 condMapEmpty!12324) mapIsEmpty!12324))

(assert (= (and b!2128446 (not condMapEmpty!12324)) mapNonEmpty!12323))

(assert (= b!2128450 b!2128446))

(assert (= b!2128437 b!2128450))

(assert (= b!2128425 b!2128437))

(assert (= (and b!2128447 ((_ is LongMap!2523) (v!28389 (underlying!5242 (cache!2818 cacheUp!979))))) b!2128425))

(assert (= b!2128430 b!2128447))

(assert (= (and b!2128423 ((_ is HashMap!2437) (cache!2818 cacheUp!979))) b!2128430))

(assert (= start!207488 b!2128423))

(assert (= (and start!207488 condSetEmpty!15613) setIsEmpty!15612))

(assert (= (and start!207488 (not condSetEmpty!15613)) setNonEmpty!15612))

(assert (= setNonEmpty!15612 b!2128426))

(assert (= start!207488 b!2128424))

(assert (= (and b!2128441 condSetEmpty!15612) setIsEmpty!15613))

(assert (= (and b!2128441 (not condSetEmpty!15612)) setNonEmpty!15613))

(assert (= setNonEmpty!15613 b!2128440))

(assert (= b!2128441 b!2128434))

(assert (= b!2128420 b!2128441))

(assert (= (and start!207488 ((_ is Cons!23851) stack!8)) b!2128420))

(declare-fun m!2579592 () Bool)

(assert (=> start!207488 m!2579592))

(declare-fun m!2579594 () Bool)

(assert (=> start!207488 m!2579594))

(declare-fun m!2579596 () Bool)

(assert (=> start!207488 m!2579596))

(declare-fun m!2579598 () Bool)

(assert (=> start!207488 m!2579598))

(declare-fun m!2579600 () Bool)

(assert (=> b!2128436 m!2579600))

(declare-fun m!2579602 () Bool)

(assert (=> b!2128452 m!2579602))

(declare-fun m!2579604 () Bool)

(assert (=> b!2128452 m!2579604))

(declare-fun m!2579606 () Bool)

(assert (=> mapNonEmpty!12323 m!2579606))

(declare-fun m!2579608 () Bool)

(assert (=> b!2128417 m!2579608))

(declare-fun m!2579610 () Bool)

(assert (=> setNonEmpty!15613 m!2579610))

(declare-fun m!2579612 () Bool)

(assert (=> b!2128418 m!2579612))

(declare-fun m!2579614 () Bool)

(assert (=> b!2128418 m!2579614))

(assert (=> b!2128443 m!2579604))

(declare-fun m!2579616 () Bool)

(assert (=> b!2128443 m!2579616))

(declare-fun m!2579618 () Bool)

(assert (=> b!2128427 m!2579618))

(declare-fun m!2579620 () Bool)

(assert (=> b!2128434 m!2579620))

(declare-fun m!2579622 () Bool)

(assert (=> b!2128420 m!2579622))

(declare-fun m!2579624 () Bool)

(assert (=> b!2128442 m!2579624))

(declare-fun m!2579626 () Bool)

(assert (=> b!2128416 m!2579626))

(declare-fun m!2579628 () Bool)

(assert (=> mapNonEmpty!12324 m!2579628))

(declare-fun m!2579630 () Bool)

(assert (=> b!2128415 m!2579630))

(declare-fun m!2579632 () Bool)

(assert (=> b!2128415 m!2579632))

(declare-fun m!2579634 () Bool)

(assert (=> b!2128421 m!2579634))

(declare-fun m!2579636 () Bool)

(assert (=> b!2128441 m!2579636))

(declare-fun m!2579638 () Bool)

(assert (=> b!2128433 m!2579638))

(declare-fun m!2579640 () Bool)

(assert (=> b!2128424 m!2579640))

(declare-fun m!2579642 () Bool)

(assert (=> mapNonEmpty!12322 m!2579642))

(declare-fun m!2579644 () Bool)

(assert (=> b!2128450 m!2579644))

(declare-fun m!2579646 () Bool)

(assert (=> b!2128450 m!2579646))

(declare-fun m!2579648 () Bool)

(assert (=> setNonEmpty!15612 m!2579648))

(declare-fun m!2579650 () Bool)

(assert (=> b!2128428 m!2579650))

(check-sat (not b!2128446) (not b_next!62659) (not b!2128420) (not b!2128436) (not b!2128445) (not b_next!62661) (not mapNonEmpty!12322) (not b!2128427) b_and!171535 (not b!2128426) (not b!2128415) b_and!171537 (not b!2128442) b_and!171531 (not b!2128441) (not b_next!62657) (not b_next!62655) b_and!171529 (not b!2128418) (not setNonEmpty!15613) (not b!2128434) (not b_next!62653) (not b!2128424) (not b!2128440) (not b!2128417) (not start!207488) (not b!2128450) (not mapNonEmpty!12323) (not b_next!62663) (not b!2128452) (not b!2128419) (not b!2128433) (not b!2128421) (not b!2128416) b_and!171539 (not b!2128428) (not b!2128443) (not setNonEmpty!15612) (not mapNonEmpty!12324) b_and!171533)
(check-sat (not b_next!62657) (not b_next!62659) (not b_next!62661) (not b_next!62653) (not b_next!62663) b_and!171535 b_and!171539 b_and!171537 b_and!171533 b_and!171531 (not b_next!62655) b_and!171529)
