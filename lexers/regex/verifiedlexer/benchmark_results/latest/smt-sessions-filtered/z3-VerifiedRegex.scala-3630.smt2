; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207560 () Bool)

(assert start!207560)

(declare-fun b!2133081 () Bool)

(declare-fun b_free!62381 () Bool)

(declare-fun b_next!63085 () Bool)

(assert (=> b!2133081 (= b_free!62381 (not b_next!63085))))

(declare-fun tp!656701 () Bool)

(declare-fun b_and!171961 () Bool)

(assert (=> b!2133081 (= tp!656701 b_and!171961)))

(declare-fun b!2133058 () Bool)

(declare-fun b_free!62383 () Bool)

(declare-fun b_next!63087 () Bool)

(assert (=> b!2133058 (= b_free!62383 (not b_next!63087))))

(declare-fun tp!656710 () Bool)

(declare-fun b_and!171963 () Bool)

(assert (=> b!2133058 (= tp!656710 b_and!171963)))

(declare-fun b!2133071 () Bool)

(declare-fun b_free!62385 () Bool)

(declare-fun b_next!63089 () Bool)

(assert (=> b!2133071 (= b_free!62385 (not b_next!63089))))

(declare-fun tp!656706 () Bool)

(declare-fun b_and!171965 () Bool)

(assert (=> b!2133071 (= tp!656706 b_and!171965)))

(declare-fun b!2133054 () Bool)

(declare-fun b_free!62387 () Bool)

(declare-fun b_next!63091 () Bool)

(assert (=> b!2133054 (= b_free!62387 (not b_next!63091))))

(declare-fun tp!656707 () Bool)

(declare-fun b_and!171967 () Bool)

(assert (=> b!2133054 (= tp!656707 b_and!171967)))

(declare-fun b!2133078 () Bool)

(declare-fun b_free!62389 () Bool)

(declare-fun b_next!63093 () Bool)

(assert (=> b!2133078 (= b_free!62389 (not b_next!63093))))

(declare-fun tp!656722 () Bool)

(declare-fun b_and!171969 () Bool)

(assert (=> b!2133078 (= tp!656722 b_and!171969)))

(declare-fun b!2133080 () Bool)

(declare-fun b_free!62391 () Bool)

(declare-fun b_next!63095 () Bool)

(assert (=> b!2133080 (= b_free!62391 (not b_next!63095))))

(declare-fun tp!656716 () Bool)

(declare-fun b_and!171971 () Bool)

(assert (=> b!2133080 (= tp!656716 b_and!171971)))

(declare-fun b!2133068 () Bool)

(assert (=> b!2133068 true))

(declare-fun bs!444280 () Bool)

(declare-fun b!2133050 () Bool)

(assert (= bs!444280 (and b!2133050 b!2133068)))

(declare-fun lambda!79307 () Int)

(declare-fun lambda!79306 () Int)

(assert (=> bs!444280 (not (= lambda!79307 lambda!79306))))

(assert (=> b!2133050 true))

(declare-fun b!2133042 () Bool)

(declare-fun e!1360945 () Bool)

(declare-datatypes ((C!11600 0))(
  ( (C!11601 (val!6786 Int)) )
))
(declare-datatypes ((Regex!5727 0))(
  ( (ElementMatch!5727 (c!340251 C!11600)) (Concat!10029 (regOne!11966 Regex!5727) (regTwo!11966 Regex!5727)) (EmptyExpr!5727) (Star!5727 (reg!6056 Regex!5727)) (EmptyLang!5727) (Union!5727 (regOne!11967 Regex!5727) (regTwo!11967 Regex!5727)) )
))
(declare-datatypes ((List!24136 0))(
  ( (Nil!24052) (Cons!24052 (h!29453 Regex!5727) (t!196664 List!24136)) )
))
(declare-datatypes ((Context!2594 0))(
  ( (Context!2595 (exprs!1797 List!24136)) )
))
(declare-datatypes ((List!24137 0))(
  ( (Nil!24053) (Cons!24053 (h!29454 C!11600) (t!196665 List!24137)) )
))
(declare-datatypes ((IArray!15735 0))(
  ( (IArray!15736 (innerList!7925 List!24137)) )
))
(declare-datatypes ((Conc!7865 0))(
  ( (Node!7865 (left!18541 Conc!7865) (right!18871 Conc!7865) (csize!15960 Int) (cheight!8076 Int)) (Leaf!11496 (xs!10807 IArray!15735) (csize!15961 Int)) (Empty!7865) )
))
(declare-datatypes ((BalanceConc!15492 0))(
  ( (BalanceConc!15493 (c!340252 Conc!7865)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((StackFrame!146 0))(
  ( (StackFrame!147 (z!5801 (InoxSet Context!2594)) (from!2687 Int) (lastNullablePos!374 Int) (res!921872 Int) (totalInput!3030 BalanceConc!15492)) )
))
(declare-datatypes ((List!24138 0))(
  ( (Nil!24054) (Cons!24054 (h!29455 StackFrame!146) (t!196666 List!24138)) )
))
(declare-fun stack!8 () List!24138)

(declare-fun e!1360971 () Bool)

(declare-fun tp!656712 () Bool)

(declare-fun inv!31702 (StackFrame!146) Bool)

(assert (=> b!2133042 (= e!1360971 (and (inv!31702 (h!29455 stack!8)) e!1360945 tp!656712))))

(declare-fun b!2133043 () Bool)

(declare-fun e!1360973 () Bool)

(declare-fun e!1360962 () Bool)

(assert (=> b!2133043 (= e!1360973 e!1360962)))

(declare-fun b!2133044 () Bool)

(declare-fun e!1360951 () Bool)

(declare-fun e!1360964 () Bool)

(assert (=> b!2133044 (= e!1360951 e!1360964)))

(declare-fun b!2133045 () Bool)

(declare-fun e!1360969 () Int)

(declare-fun lastNullablePos!123 () Int)

(assert (=> b!2133045 (= e!1360969 lastNullablePos!123)))

(declare-fun lt!796781 () Int)

(declare-fun e!1360972 () Bool)

(declare-fun from!1043 () Int)

(declare-fun lt!796775 () Int)

(declare-fun b!2133046 () Bool)

(assert (=> b!2133046 (= e!1360972 (or (< (+ 1 from!1043) 0) (> (+ 1 from!1043) lt!796775) (and (>= lt!796781 (- 1)) (< lt!796781 (+ 1 from!1043)))))))

(declare-datatypes ((tuple3!3184 0))(
  ( (tuple3!3185 (_1!13967 Regex!5727) (_2!13967 Context!2594) (_3!2062 C!11600)) )
))
(declare-datatypes ((tuple2!23810 0))(
  ( (tuple2!23811 (_1!13968 tuple3!3184) (_2!13968 (InoxSet Context!2594))) )
))
(declare-datatypes ((List!24139 0))(
  ( (Nil!24055) (Cons!24055 (h!29456 tuple2!23810) (t!196667 List!24139)) )
))
(declare-datatypes ((tuple2!23812 0))(
  ( (tuple2!23813 (_1!13969 Context!2594) (_2!13969 C!11600)) )
))
(declare-datatypes ((tuple2!23814 0))(
  ( (tuple2!23815 (_1!13970 tuple2!23812) (_2!13970 (InoxSet Context!2594))) )
))
(declare-datatypes ((List!24140 0))(
  ( (Nil!24056) (Cons!24056 (h!29457 tuple2!23814) (t!196668 List!24140)) )
))
(declare-datatypes ((Hashable!2537 0))(
  ( (HashableExt!2536 (__x!16045 Int)) )
))
(declare-datatypes ((Hashable!2538 0))(
  ( (HashableExt!2537 (__x!16046 Int)) )
))
(declare-datatypes ((array!8919 0))(
  ( (array!8920 (arr!3971 (Array (_ BitVec 32) (_ BitVec 64))) (size!18813 (_ BitVec 32))) )
))
(declare-datatypes ((array!8921 0))(
  ( (array!8922 (arr!3972 (Array (_ BitVec 32) List!24140)) (size!18814 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5246 0))(
  ( (LongMapFixedSize!5247 (defaultEntry!2988 Int) (mask!6802 (_ BitVec 32)) (extraKeys!2871 (_ BitVec 32)) (zeroValue!2881 List!24140) (minValue!2881 List!24140) (_size!5297 (_ BitVec 32)) (_keys!2920 array!8919) (_values!2903 array!8921) (_vacant!2684 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10317 0))(
  ( (Cell!10318 (v!28611 LongMapFixedSize!5246)) )
))
(declare-datatypes ((MutLongMap!2623 0))(
  ( (LongMap!2623 (underlying!5441 Cell!10317)) (MutLongMapExt!2622 (__x!16047 Int)) )
))
(declare-datatypes ((Cell!10319 0))(
  ( (Cell!10320 (v!28612 MutLongMap!2623)) )
))
(declare-datatypes ((MutableMap!2537 0))(
  ( (MutableMapExt!2536 (__x!16048 Int)) (HashMap!2537 (underlying!5442 Cell!10319) (hashF!4460 Hashable!2537) (_size!5298 (_ BitVec 32)) (defaultValue!2699 Int)) )
))
(declare-datatypes ((CacheUp!1758 0))(
  ( (CacheUp!1759 (cache!2918 MutableMap!2537)) )
))
(declare-datatypes ((array!8923 0))(
  ( (array!8924 (arr!3973 (Array (_ BitVec 32) List!24139)) (size!18815 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5248 0))(
  ( (LongMapFixedSize!5249 (defaultEntry!2989 Int) (mask!6803 (_ BitVec 32)) (extraKeys!2872 (_ BitVec 32)) (zeroValue!2882 List!24139) (minValue!2882 List!24139) (_size!5299 (_ BitVec 32)) (_keys!2921 array!8919) (_values!2904 array!8923) (_vacant!2685 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10321 0))(
  ( (Cell!10322 (v!28613 LongMapFixedSize!5248)) )
))
(declare-datatypes ((MutLongMap!2624 0))(
  ( (LongMap!2624 (underlying!5443 Cell!10321)) (MutLongMapExt!2623 (__x!16049 Int)) )
))
(declare-datatypes ((Cell!10323 0))(
  ( (Cell!10324 (v!28614 MutLongMap!2624)) )
))
(declare-datatypes ((MutableMap!2538 0))(
  ( (MutableMapExt!2537 (__x!16050 Int)) (HashMap!2538 (underlying!5444 Cell!10323) (hashF!4461 Hashable!2538) (_size!5300 (_ BitVec 32)) (defaultValue!2700 Int)) )
))
(declare-datatypes ((CacheDown!1740 0))(
  ( (CacheDown!1741 (cache!2919 MutableMap!2538)) )
))
(declare-datatypes ((tuple3!3186 0))(
  ( (tuple3!3187 (_1!13971 (InoxSet Context!2594)) (_2!13971 CacheUp!1758) (_3!2063 CacheDown!1740)) )
))
(declare-fun lt!796779 () tuple3!3186)

(declare-fun lt!796782 () Int)

(declare-fun totalInput!851 () BalanceConc!15492)

(declare-fun furthestNullablePosition!42 ((InoxSet Context!2594) Int BalanceConc!15492 Int Int) Int)

(assert (=> b!2133046 (= lt!796782 (furthestNullablePosition!42 (_1!13971 lt!796779) (+ 1 from!1043) totalInput!851 lt!796775 lt!796781))))

(assert (=> b!2133046 (= lt!796781 e!1360969)))

(declare-fun c!340250 () Bool)

(declare-fun nullableZipper!108 ((InoxSet Context!2594)) Bool)

(assert (=> b!2133046 (= c!340250 (nullableZipper!108 (_1!13971 lt!796779)))))

(declare-fun cacheDown!1098 () CacheDown!1740)

(declare-fun z!3839 () (InoxSet Context!2594))

(declare-fun cacheUp!979 () CacheUp!1758)

(declare-fun derivationStepZipperMem!32 ((InoxSet Context!2594) C!11600 CacheUp!1758 CacheDown!1740) tuple3!3186)

(declare-fun apply!5931 (BalanceConc!15492 Int) C!11600)

(assert (=> b!2133046 (= lt!796779 (derivationStepZipperMem!32 z!3839 (apply!5931 totalInput!851 from!1043) cacheUp!979 cacheDown!1098))))

(declare-fun b!2133047 () Bool)

(declare-fun e!1360952 () Bool)

(assert (=> b!2133047 (= e!1360952 e!1360973)))

(declare-fun b!2133048 () Bool)

(declare-fun e!1360954 () Bool)

(declare-fun tp!656700 () Bool)

(assert (=> b!2133048 (= e!1360954 tp!656700)))

(declare-fun b!2133049 () Bool)

(declare-fun res!921861 () Bool)

(assert (=> b!2133049 (=> res!921861 e!1360972)))

(declare-fun totalInputSize!296 () Int)

(assert (=> b!2133049 (= res!921861 (= from!1043 totalInputSize!296))))

(declare-fun res!921870 () Bool)

(declare-fun e!1360961 () Bool)

(assert (=> b!2133050 (=> (not res!921870) (not e!1360961))))

(declare-fun forall!4919 (List!24138 Int) Bool)

(assert (=> b!2133050 (= res!921870 (forall!4919 stack!8 lambda!79307))))

(declare-fun b!2133051 () Bool)

(assert (=> b!2133051 (= e!1360961 (not e!1360972))))

(declare-fun res!921867 () Bool)

(assert (=> b!2133051 (=> res!921867 e!1360972)))

(declare-datatypes ((tuple3!3188 0))(
  ( (tuple3!3189 (_1!13972 (InoxSet Context!2594)) (_2!13972 Int) (_3!2064 Int)) )
))
(declare-datatypes ((tuple2!23816 0))(
  ( (tuple2!23817 (_1!13973 tuple3!3188) (_2!13973 Int)) )
))
(declare-datatypes ((List!24141 0))(
  ( (Nil!24057) (Cons!24057 (h!29458 tuple2!23816) (t!196669 List!24141)) )
))
(declare-datatypes ((array!8925 0))(
  ( (array!8926 (arr!3974 (Array (_ BitVec 32) List!24141)) (size!18816 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5250 0))(
  ( (LongMapFixedSize!5251 (defaultEntry!2990 Int) (mask!6804 (_ BitVec 32)) (extraKeys!2873 (_ BitVec 32)) (zeroValue!2883 List!24141) (minValue!2883 List!24141) (_size!5301 (_ BitVec 32)) (_keys!2922 array!8919) (_values!2905 array!8925) (_vacant!2686 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10325 0))(
  ( (Cell!10326 (v!28615 LongMapFixedSize!5250)) )
))
(declare-datatypes ((MutLongMap!2625 0))(
  ( (LongMap!2625 (underlying!5445 Cell!10325)) (MutLongMapExt!2624 (__x!16051 Int)) )
))
(declare-datatypes ((Cell!10327 0))(
  ( (Cell!10328 (v!28616 MutLongMap!2625)) )
))
(declare-datatypes ((Hashable!2539 0))(
  ( (HashableExt!2538 (__x!16052 Int)) )
))
(declare-datatypes ((MutableMap!2539 0))(
  ( (MutableMapExt!2538 (__x!16053 Int)) (HashMap!2539 (underlying!5446 Cell!10327) (hashF!4462 Hashable!2539) (_size!5302 (_ BitVec 32)) (defaultValue!2701 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!700 0))(
  ( (CacheFurthestNullable!701 (cache!2920 MutableMap!2539) (totalInput!3031 BalanceConc!15492)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!700)

(get-info :version)

(declare-datatypes ((Option!4901 0))(
  ( (None!4900) (Some!4900 (v!28617 Int)) )
))
(declare-fun get!7374 (CacheFurthestNullable!700 (InoxSet Context!2594) Int Int) Option!4901)

(assert (=> b!2133051 (= res!921867 ((_ is Some!4900) (get!7374 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123)))))

(assert (=> b!2133051 (forall!4919 stack!8 lambda!79306)))

(declare-fun b!2133052 () Bool)

(declare-fun e!1360957 () Bool)

(declare-fun e!1360967 () Bool)

(assert (=> b!2133052 (= e!1360957 e!1360967)))

(declare-fun res!921866 () Bool)

(assert (=> b!2133052 (=> (not res!921866) (not e!1360967))))

(assert (=> b!2133052 (= res!921866 (and (= totalInputSize!296 lt!796775) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun size!18817 (BalanceConc!15492) Int)

(assert (=> b!2133052 (= lt!796775 (size!18817 totalInput!851))))

(declare-fun b!2133053 () Bool)

(declare-fun e!1360977 () Bool)

(declare-fun e!1360960 () Bool)

(assert (=> b!2133053 (= e!1360977 e!1360960)))

(declare-fun e!1360946 () Bool)

(declare-fun tp!656705 () Bool)

(declare-fun tp!656723 () Bool)

(declare-fun array_inv!2840 (array!8919) Bool)

(declare-fun array_inv!2841 (array!8925) Bool)

(assert (=> b!2133054 (= e!1360962 (and tp!656707 tp!656705 tp!656723 (array_inv!2840 (_keys!2922 (v!28615 (underlying!5445 (v!28616 (underlying!5446 (cache!2920 cacheFurthestNullable!114))))))) (array_inv!2841 (_values!2905 (v!28615 (underlying!5445 (v!28616 (underlying!5446 (cache!2920 cacheFurthestNullable!114))))))) e!1360946))))

(declare-fun b!2133055 () Bool)

(declare-fun e!1360948 () Bool)

(assert (=> b!2133055 (= e!1360964 e!1360948)))

(declare-fun b!2133056 () Bool)

(declare-fun e!1360970 () Bool)

(assert (=> b!2133056 (= e!1360960 e!1360970)))

(declare-fun b!2133057 () Bool)

(declare-fun e!1360959 () Bool)

(declare-fun tp!656726 () Bool)

(declare-fun inv!31703 (Conc!7865) Bool)

(assert (=> b!2133057 (= e!1360959 (and (inv!31703 (c!340252 (totalInput!3031 cacheFurthestNullable!114))) tp!656726))))

(declare-fun e!1360965 () Bool)

(declare-fun tp!656709 () Bool)

(declare-fun tp!656713 () Bool)

(declare-fun array_inv!2842 (array!8921) Bool)

(assert (=> b!2133058 (= e!1360948 (and tp!656710 tp!656713 tp!656709 (array_inv!2840 (_keys!2920 (v!28611 (underlying!5441 (v!28612 (underlying!5442 (cache!2918 cacheUp!979))))))) (array_inv!2842 (_values!2903 (v!28611 (underlying!5441 (v!28612 (underlying!5442 (cache!2918 cacheUp!979))))))) e!1360965))))

(declare-fun setIsEmpty!15828 () Bool)

(declare-fun setRes!15828 () Bool)

(assert (=> setIsEmpty!15828 setRes!15828))

(declare-fun b!2133059 () Bool)

(declare-fun e!1360955 () Bool)

(declare-fun e!1360953 () Bool)

(assert (=> b!2133059 (= e!1360955 e!1360953)))

(declare-fun mapNonEmpty!12646 () Bool)

(declare-fun mapRes!12646 () Bool)

(declare-fun tp!656720 () Bool)

(declare-fun tp!656715 () Bool)

(assert (=> mapNonEmpty!12646 (= mapRes!12646 (and tp!656720 tp!656715))))

(declare-fun mapValue!12648 () List!24140)

(declare-fun mapRest!12648 () (Array (_ BitVec 32) List!24140))

(declare-fun mapKey!12648 () (_ BitVec 32))

(assert (=> mapNonEmpty!12646 (= (arr!3972 (_values!2903 (v!28611 (underlying!5441 (v!28612 (underlying!5442 (cache!2918 cacheUp!979))))))) (store mapRest!12648 mapKey!12648 mapValue!12648))))

(declare-fun mapIsEmpty!12646 () Bool)

(assert (=> mapIsEmpty!12646 mapRes!12646))

(declare-fun b!2133060 () Bool)

(declare-fun res!921863 () Bool)

(assert (=> b!2133060 (=> (not res!921863) (not e!1360967))))

(declare-fun valid!2055 (CacheFurthestNullable!700) Bool)

(assert (=> b!2133060 (= res!921863 (valid!2055 cacheFurthestNullable!114))))

(declare-fun res!921865 () Bool)

(assert (=> start!207560 (=> (not res!921865) (not e!1360957))))

(assert (=> start!207560 (= res!921865 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!207560 e!1360957))

(declare-fun e!1360974 () Bool)

(declare-fun inv!31704 (CacheFurthestNullable!700) Bool)

(assert (=> start!207560 (and (inv!31704 cacheFurthestNullable!114) e!1360974)))

(assert (=> start!207560 true))

(declare-fun inv!31705 (CacheDown!1740) Bool)

(assert (=> start!207560 (and (inv!31705 cacheDown!1098) e!1360955)))

(declare-fun e!1360947 () Bool)

(declare-fun inv!31706 (CacheUp!1758) Bool)

(assert (=> start!207560 (and (inv!31706 cacheUp!979) e!1360947)))

(declare-fun condSetEmpty!15828 () Bool)

(assert (=> start!207560 (= condSetEmpty!15828 (= z!3839 ((as const (Array Context!2594 Bool)) false)))))

(declare-fun setRes!15829 () Bool)

(assert (=> start!207560 setRes!15829))

(declare-fun e!1360980 () Bool)

(declare-fun inv!31707 (BalanceConc!15492) Bool)

(assert (=> start!207560 (and (inv!31707 totalInput!851) e!1360980)))

(assert (=> start!207560 e!1360971))

(declare-fun b!2133061 () Bool)

(declare-fun e!1360981 () Bool)

(assert (=> b!2133061 (= e!1360974 (and e!1360981 (inv!31707 (totalInput!3031 cacheFurthestNullable!114)) e!1360959))))

(declare-fun b!2133062 () Bool)

(declare-fun e!1360975 () Bool)

(assert (=> b!2133062 (= e!1360947 e!1360975)))

(declare-fun b!2133063 () Bool)

(declare-fun e!1360968 () Bool)

(declare-fun tp!656728 () Bool)

(assert (=> b!2133063 (= e!1360968 (and (inv!31703 (c!340252 (totalInput!3030 (h!29455 stack!8)))) tp!656728))))

(declare-fun mapNonEmpty!12647 () Bool)

(declare-fun mapRes!12648 () Bool)

(declare-fun tp!656718 () Bool)

(declare-fun tp!656721 () Bool)

(assert (=> mapNonEmpty!12647 (= mapRes!12648 (and tp!656718 tp!656721))))

(declare-fun mapKey!12646 () (_ BitVec 32))

(declare-fun mapValue!12646 () List!24139)

(declare-fun mapRest!12647 () (Array (_ BitVec 32) List!24139))

(assert (=> mapNonEmpty!12647 (= (arr!3973 (_values!2904 (v!28613 (underlying!5443 (v!28614 (underlying!5444 (cache!2919 cacheDown!1098))))))) (store mapRest!12647 mapKey!12646 mapValue!12646))))

(declare-fun b!2133064 () Bool)

(declare-fun res!921869 () Bool)

(assert (=> b!2133064 (=> (not res!921869) (not e!1360967))))

(declare-fun valid!2056 (CacheUp!1758) Bool)

(assert (=> b!2133064 (= res!921869 (valid!2056 cacheUp!979))))

(declare-fun b!2133065 () Bool)

(declare-fun res!921860 () Bool)

(assert (=> b!2133065 (=> (not res!921860) (not e!1360967))))

(declare-fun valid!2057 (CacheDown!1740) Bool)

(assert (=> b!2133065 (= res!921860 (valid!2057 cacheDown!1098))))

(declare-fun b!2133066 () Bool)

(assert (=> b!2133066 (= e!1360969 from!1043)))

(declare-fun b!2133067 () Bool)

(declare-fun e!1360966 () Bool)

(declare-fun lt!796780 () MutLongMap!2623)

(assert (=> b!2133067 (= e!1360966 (and e!1360951 ((_ is LongMap!2623) lt!796780)))))

(assert (=> b!2133067 (= lt!796780 (v!28612 (underlying!5442 (cache!2918 cacheUp!979))))))

(assert (=> b!2133068 (= e!1360967 e!1360961)))

(declare-fun res!921859 () Bool)

(assert (=> b!2133068 (=> (not res!921859) (not e!1360961))))

(assert (=> b!2133068 (= res!921859 (forall!4919 stack!8 lambda!79306))))

(declare-fun lt!796776 () Int)

(assert (=> b!2133068 (= lt!796776 (furthestNullablePosition!42 z!3839 from!1043 totalInput!851 lt!796775 lastNullablePos!123))))

(declare-fun b!2133069 () Bool)

(declare-fun res!921871 () Bool)

(assert (=> b!2133069 (=> (not res!921871) (not e!1360967))))

(assert (=> b!2133069 (= res!921871 (= (totalInput!3031 cacheFurthestNullable!114) totalInput!851))))

(declare-fun tp!656702 () Bool)

(declare-fun setNonEmpty!15828 () Bool)

(declare-fun setElem!15828 () Context!2594)

(declare-fun inv!31708 (Context!2594) Bool)

(assert (=> setNonEmpty!15828 (= setRes!15828 (and tp!656702 (inv!31708 setElem!15828) e!1360954))))

(declare-fun setRest!15828 () (InoxSet Context!2594))

(assert (=> setNonEmpty!15828 (= (z!5801 (h!29455 stack!8)) ((_ map or) (store ((as const (Array Context!2594 Bool)) false) setElem!15828 true) setRest!15828))))

(declare-fun b!2133070 () Bool)

(assert (=> b!2133070 (= e!1360945 (and setRes!15828 (inv!31707 (totalInput!3030 (h!29455 stack!8))) e!1360968))))

(declare-fun condSetEmpty!15829 () Bool)

(assert (=> b!2133070 (= condSetEmpty!15829 (= (z!5801 (h!29455 stack!8)) ((as const (Array Context!2594 Bool)) false)))))

(assert (=> b!2133071 (= e!1360975 (and e!1360966 tp!656706))))

(declare-fun b!2133072 () Bool)

(declare-fun tp!656711 () Bool)

(assert (=> b!2133072 (= e!1360980 (and (inv!31703 (c!340252 totalInput!851)) tp!656711))))

(declare-fun b!2133073 () Bool)

(declare-fun e!1360976 () Bool)

(declare-fun tp!656714 () Bool)

(assert (=> b!2133073 (= e!1360976 (and tp!656714 mapRes!12648))))

(declare-fun condMapEmpty!12647 () Bool)

(declare-fun mapDefault!12646 () List!24139)

(assert (=> b!2133073 (= condMapEmpty!12647 (= (arr!3973 (_values!2904 (v!28613 (underlying!5443 (v!28614 (underlying!5444 (cache!2919 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!24139)) mapDefault!12646)))))

(declare-fun mapNonEmpty!12648 () Bool)

(declare-fun mapRes!12647 () Bool)

(declare-fun tp!656719 () Bool)

(declare-fun tp!656708 () Bool)

(assert (=> mapNonEmpty!12648 (= mapRes!12647 (and tp!656719 tp!656708))))

(declare-fun mapValue!12647 () List!24141)

(declare-fun mapKey!12647 () (_ BitVec 32))

(declare-fun mapRest!12646 () (Array (_ BitVec 32) List!24141))

(assert (=> mapNonEmpty!12648 (= (arr!3974 (_values!2905 (v!28615 (underlying!5445 (v!28616 (underlying!5446 (cache!2920 cacheFurthestNullable!114))))))) (store mapRest!12646 mapKey!12647 mapValue!12647))))

(declare-fun b!2133074 () Bool)

(declare-fun e!1360950 () Bool)

(assert (=> b!2133074 (= e!1360950 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun e!1360949 () Bool)

(declare-fun tp!656727 () Bool)

(declare-fun setNonEmpty!15829 () Bool)

(declare-fun setElem!15829 () Context!2594)

(assert (=> setNonEmpty!15829 (= setRes!15829 (and tp!656727 (inv!31708 setElem!15829) e!1360949))))

(declare-fun setRest!15829 () (InoxSet Context!2594))

(assert (=> setNonEmpty!15829 (= z!3839 ((_ map or) (store ((as const (Array Context!2594 Bool)) false) setElem!15829 true) setRest!15829))))

(declare-fun setIsEmpty!15829 () Bool)

(assert (=> setIsEmpty!15829 setRes!15829))

(declare-fun mapIsEmpty!12647 () Bool)

(assert (=> mapIsEmpty!12647 mapRes!12647))

(declare-fun b!2133075 () Bool)

(declare-fun e!1360958 () Bool)

(declare-fun lt!796778 () MutLongMap!2624)

(assert (=> b!2133075 (= e!1360958 (and e!1360977 ((_ is LongMap!2624) lt!796778)))))

(assert (=> b!2133075 (= lt!796778 (v!28614 (underlying!5444 (cache!2919 cacheDown!1098))))))

(declare-fun b!2133076 () Bool)

(declare-fun res!921868 () Bool)

(assert (=> b!2133076 (=> res!921868 e!1360972)))

(declare-fun lostCauseZipper!81 ((InoxSet Context!2594)) Bool)

(assert (=> b!2133076 (= res!921868 (lostCauseZipper!81 z!3839))))

(declare-fun b!2133077 () Bool)

(declare-fun tp!656725 () Bool)

(assert (=> b!2133077 (= e!1360965 (and tp!656725 mapRes!12646))))

(declare-fun condMapEmpty!12646 () Bool)

(declare-fun mapDefault!12647 () List!24140)

(assert (=> b!2133077 (= condMapEmpty!12646 (= (arr!3972 (_values!2903 (v!28611 (underlying!5441 (v!28612 (underlying!5442 (cache!2918 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!24140)) mapDefault!12647)))))

(declare-fun tp!656704 () Bool)

(declare-fun tp!656703 () Bool)

(declare-fun array_inv!2843 (array!8923) Bool)

(assert (=> b!2133078 (= e!1360970 (and tp!656722 tp!656703 tp!656704 (array_inv!2840 (_keys!2921 (v!28613 (underlying!5443 (v!28614 (underlying!5444 (cache!2919 cacheDown!1098))))))) (array_inv!2843 (_values!2904 (v!28613 (underlying!5443 (v!28614 (underlying!5444 (cache!2919 cacheDown!1098))))))) e!1360976))))

(declare-fun b!2133079 () Bool)

(declare-fun tp!656717 () Bool)

(assert (=> b!2133079 (= e!1360946 (and tp!656717 mapRes!12647))))

(declare-fun condMapEmpty!12648 () Bool)

(declare-fun mapDefault!12648 () List!24141)

(assert (=> b!2133079 (= condMapEmpty!12648 (= (arr!3974 (_values!2905 (v!28615 (underlying!5445 (v!28616 (underlying!5446 (cache!2920 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!24141)) mapDefault!12648)))))

(assert (=> b!2133080 (= e!1360953 (and e!1360958 tp!656716))))

(declare-fun e!1360956 () Bool)

(assert (=> b!2133081 (= e!1360981 (and e!1360956 tp!656701))))

(declare-fun mapIsEmpty!12648 () Bool)

(assert (=> mapIsEmpty!12648 mapRes!12648))

(declare-fun b!2133082 () Bool)

(declare-fun lt!796777 () MutLongMap!2625)

(assert (=> b!2133082 (= e!1360956 (and e!1360952 ((_ is LongMap!2625) lt!796777)))))

(assert (=> b!2133082 (= lt!796777 (v!28616 (underlying!5446 (cache!2920 cacheFurthestNullable!114))))))

(declare-fun b!2133083 () Bool)

(declare-fun tp!656724 () Bool)

(assert (=> b!2133083 (= e!1360949 tp!656724)))

(declare-fun b!2133084 () Bool)

(declare-fun res!921864 () Bool)

(assert (=> b!2133084 (=> (not res!921864) (not e!1360967))))

(assert (=> b!2133084 (= res!921864 e!1360950)))

(declare-fun res!921862 () Bool)

(assert (=> b!2133084 (=> res!921862 e!1360950)))

(assert (=> b!2133084 (= res!921862 (not (nullableZipper!108 z!3839)))))

(assert (= (and start!207560 res!921865) b!2133052))

(assert (= (and b!2133052 res!921866) b!2133084))

(assert (= (and b!2133084 (not res!921862)) b!2133074))

(assert (= (and b!2133084 res!921864) b!2133064))

(assert (= (and b!2133064 res!921869) b!2133065))

(assert (= (and b!2133065 res!921860) b!2133060))

(assert (= (and b!2133060 res!921863) b!2133069))

(assert (= (and b!2133069 res!921871) b!2133068))

(assert (= (and b!2133068 res!921859) b!2133050))

(assert (= (and b!2133050 res!921870) b!2133051))

(assert (= (and b!2133051 (not res!921867)) b!2133049))

(assert (= (and b!2133049 (not res!921861)) b!2133076))

(assert (= (and b!2133076 (not res!921868)) b!2133046))

(assert (= (and b!2133046 c!340250) b!2133066))

(assert (= (and b!2133046 (not c!340250)) b!2133045))

(assert (= (and b!2133079 condMapEmpty!12648) mapIsEmpty!12647))

(assert (= (and b!2133079 (not condMapEmpty!12648)) mapNonEmpty!12648))

(assert (= b!2133054 b!2133079))

(assert (= b!2133043 b!2133054))

(assert (= b!2133047 b!2133043))

(assert (= (and b!2133082 ((_ is LongMap!2625) (v!28616 (underlying!5446 (cache!2920 cacheFurthestNullable!114))))) b!2133047))

(assert (= b!2133081 b!2133082))

(assert (= (and b!2133061 ((_ is HashMap!2539) (cache!2920 cacheFurthestNullable!114))) b!2133081))

(assert (= b!2133061 b!2133057))

(assert (= start!207560 b!2133061))

(assert (= (and b!2133073 condMapEmpty!12647) mapIsEmpty!12648))

(assert (= (and b!2133073 (not condMapEmpty!12647)) mapNonEmpty!12647))

(assert (= b!2133078 b!2133073))

(assert (= b!2133056 b!2133078))

(assert (= b!2133053 b!2133056))

(assert (= (and b!2133075 ((_ is LongMap!2624) (v!28614 (underlying!5444 (cache!2919 cacheDown!1098))))) b!2133053))

(assert (= b!2133080 b!2133075))

(assert (= (and b!2133059 ((_ is HashMap!2538) (cache!2919 cacheDown!1098))) b!2133080))

(assert (= start!207560 b!2133059))

(assert (= (and b!2133077 condMapEmpty!12646) mapIsEmpty!12646))

(assert (= (and b!2133077 (not condMapEmpty!12646)) mapNonEmpty!12646))

(assert (= b!2133058 b!2133077))

(assert (= b!2133055 b!2133058))

(assert (= b!2133044 b!2133055))

(assert (= (and b!2133067 ((_ is LongMap!2623) (v!28612 (underlying!5442 (cache!2918 cacheUp!979))))) b!2133044))

(assert (= b!2133071 b!2133067))

(assert (= (and b!2133062 ((_ is HashMap!2537) (cache!2918 cacheUp!979))) b!2133071))

(assert (= start!207560 b!2133062))

(assert (= (and start!207560 condSetEmpty!15828) setIsEmpty!15829))

(assert (= (and start!207560 (not condSetEmpty!15828)) setNonEmpty!15829))

(assert (= setNonEmpty!15829 b!2133083))

(assert (= start!207560 b!2133072))

(assert (= (and b!2133070 condSetEmpty!15829) setIsEmpty!15828))

(assert (= (and b!2133070 (not condSetEmpty!15829)) setNonEmpty!15828))

(assert (= setNonEmpty!15828 b!2133048))

(assert (= b!2133070 b!2133063))

(assert (= b!2133042 b!2133070))

(assert (= (and start!207560 ((_ is Cons!24054) stack!8)) b!2133042))

(declare-fun m!2581942 () Bool)

(assert (=> mapNonEmpty!12648 m!2581942))

(declare-fun m!2581944 () Bool)

(assert (=> start!207560 m!2581944))

(declare-fun m!2581946 () Bool)

(assert (=> start!207560 m!2581946))

(declare-fun m!2581948 () Bool)

(assert (=> start!207560 m!2581948))

(declare-fun m!2581950 () Bool)

(assert (=> start!207560 m!2581950))

(declare-fun m!2581952 () Bool)

(assert (=> b!2133078 m!2581952))

(declare-fun m!2581954 () Bool)

(assert (=> b!2133078 m!2581954))

(declare-fun m!2581956 () Bool)

(assert (=> b!2133046 m!2581956))

(declare-fun m!2581958 () Bool)

(assert (=> b!2133046 m!2581958))

(declare-fun m!2581960 () Bool)

(assert (=> b!2133046 m!2581960))

(assert (=> b!2133046 m!2581960))

(declare-fun m!2581962 () Bool)

(assert (=> b!2133046 m!2581962))

(declare-fun m!2581964 () Bool)

(assert (=> b!2133060 m!2581964))

(declare-fun m!2581966 () Bool)

(assert (=> b!2133050 m!2581966))

(declare-fun m!2581968 () Bool)

(assert (=> b!2133051 m!2581968))

(declare-fun m!2581970 () Bool)

(assert (=> b!2133051 m!2581970))

(declare-fun m!2581972 () Bool)

(assert (=> b!2133057 m!2581972))

(declare-fun m!2581974 () Bool)

(assert (=> b!2133076 m!2581974))

(declare-fun m!2581976 () Bool)

(assert (=> b!2133054 m!2581976))

(declare-fun m!2581978 () Bool)

(assert (=> b!2133054 m!2581978))

(declare-fun m!2581980 () Bool)

(assert (=> b!2133063 m!2581980))

(declare-fun m!2581982 () Bool)

(assert (=> b!2133070 m!2581982))

(declare-fun m!2581984 () Bool)

(assert (=> b!2133065 m!2581984))

(declare-fun m!2581986 () Bool)

(assert (=> setNonEmpty!15828 m!2581986))

(declare-fun m!2581988 () Bool)

(assert (=> b!2133061 m!2581988))

(declare-fun m!2581990 () Bool)

(assert (=> b!2133064 m!2581990))

(declare-fun m!2581992 () Bool)

(assert (=> mapNonEmpty!12646 m!2581992))

(assert (=> b!2133068 m!2581970))

(declare-fun m!2581994 () Bool)

(assert (=> b!2133068 m!2581994))

(declare-fun m!2581996 () Bool)

(assert (=> b!2133042 m!2581996))

(declare-fun m!2581998 () Bool)

(assert (=> b!2133052 m!2581998))

(declare-fun m!2582000 () Bool)

(assert (=> b!2133072 m!2582000))

(declare-fun m!2582002 () Bool)

(assert (=> mapNonEmpty!12647 m!2582002))

(declare-fun m!2582004 () Bool)

(assert (=> setNonEmpty!15829 m!2582004))

(declare-fun m!2582006 () Bool)

(assert (=> b!2133058 m!2582006))

(declare-fun m!2582008 () Bool)

(assert (=> b!2133058 m!2582008))

(declare-fun m!2582010 () Bool)

(assert (=> b!2133084 m!2582010))

(check-sat (not setNonEmpty!15829) (not b!2133061) (not b!2133060) (not b!2133078) b_and!171965 (not b!2133052) (not b!2133084) (not b!2133077) (not b!2133046) (not b!2133064) (not b_next!63091) (not start!207560) (not setNonEmpty!15828) (not b!2133048) (not b!2133073) b_and!171969 (not b!2133065) (not b_next!63087) b_and!171961 (not mapNonEmpty!12647) (not b!2133079) (not b!2133068) (not b_next!63093) (not b!2133072) (not mapNonEmpty!12648) b_and!171971 (not b!2133063) (not b_next!63095) (not b_next!63085) (not b!2133076) (not b!2133058) (not b!2133083) (not b!2133051) (not b!2133057) (not mapNonEmpty!12646) (not b!2133054) b_and!171967 (not b!2133070) (not b!2133050) b_and!171963 (not b_next!63089) (not b!2133042))
(check-sat (not b_next!63091) b_and!171969 (not b_next!63093) b_and!171971 (not b_next!63095) b_and!171965 (not b_next!63085) b_and!171967 (not b_next!63087) b_and!171961 b_and!171963 (not b_next!63089))
