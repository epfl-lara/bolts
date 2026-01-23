; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207612 () Bool)

(assert start!207612)

(declare-fun b!2136617 () Bool)

(declare-fun b_free!62693 () Bool)

(declare-fun b_next!63397 () Bool)

(assert (=> b!2136617 (= b_free!62693 (not b_next!63397))))

(declare-fun tp!658982 () Bool)

(declare-fun b_and!172273 () Bool)

(assert (=> b!2136617 (= tp!658982 b_and!172273)))

(declare-fun b!2136623 () Bool)

(declare-fun b_free!62695 () Bool)

(declare-fun b_next!63399 () Bool)

(assert (=> b!2136623 (= b_free!62695 (not b_next!63399))))

(declare-fun tp!658983 () Bool)

(declare-fun b_and!172275 () Bool)

(assert (=> b!2136623 (= tp!658983 b_and!172275)))

(declare-fun b!2136626 () Bool)

(declare-fun b_free!62697 () Bool)

(declare-fun b_next!63401 () Bool)

(assert (=> b!2136626 (= b_free!62697 (not b_next!63401))))

(declare-fun tp!658984 () Bool)

(declare-fun b_and!172277 () Bool)

(assert (=> b!2136626 (= tp!658984 b_and!172277)))

(declare-fun b!2136612 () Bool)

(declare-fun b_free!62699 () Bool)

(declare-fun b_next!63403 () Bool)

(assert (=> b!2136612 (= b_free!62699 (not b_next!63403))))

(declare-fun tp!658981 () Bool)

(declare-fun b_and!172279 () Bool)

(assert (=> b!2136612 (= tp!658981 b_and!172279)))

(declare-fun b!2136633 () Bool)

(declare-fun b_free!62701 () Bool)

(declare-fun b_next!63405 () Bool)

(assert (=> b!2136633 (= b_free!62701 (not b_next!63405))))

(declare-fun tp!658986 () Bool)

(declare-fun b_and!172281 () Bool)

(assert (=> b!2136633 (= tp!658986 b_and!172281)))

(declare-fun b!2136656 () Bool)

(declare-fun b_free!62703 () Bool)

(declare-fun b_next!63407 () Bool)

(assert (=> b!2136656 (= b_free!62703 (not b_next!63407))))

(declare-fun tp!658973 () Bool)

(declare-fun b_and!172283 () Bool)

(assert (=> b!2136656 (= tp!658973 b_and!172283)))

(declare-fun b!2136644 () Bool)

(assert (=> b!2136644 true))

(declare-fun bs!444350 () Bool)

(declare-fun b!2136619 () Bool)

(assert (= bs!444350 (and b!2136619 b!2136644)))

(declare-fun lambda!79628 () Int)

(declare-fun lambda!79627 () Int)

(assert (=> bs!444350 (not (= lambda!79628 lambda!79627))))

(assert (=> b!2136619 true))

(declare-fun bs!444351 () Bool)

(declare-fun b!2136639 () Bool)

(assert (= bs!444351 (and b!2136639 b!2136644)))

(declare-fun lambda!79629 () Int)

(declare-fun lt!797405 () Int)

(declare-fun lt!797400 () Int)

(assert (=> bs!444351 (= (= lt!797405 lt!797400) (= lambda!79629 lambda!79627))))

(declare-fun bs!444352 () Bool)

(assert (= bs!444352 (and b!2136639 b!2136619)))

(assert (=> bs!444352 (not (= lambda!79629 lambda!79628))))

(assert (=> b!2136639 true))

(declare-fun b!2136610 () Bool)

(declare-fun e!1363938 () Bool)

(declare-datatypes ((C!11652 0))(
  ( (C!11653 (val!6812 Int)) )
))
(declare-datatypes ((Regex!5753 0))(
  ( (ElementMatch!5753 (c!340357 C!11652)) (Concat!10055 (regOne!12018 Regex!5753) (regTwo!12018 Regex!5753)) (EmptyExpr!5753) (Star!5753 (reg!6082 Regex!5753)) (EmptyLang!5753) (Union!5753 (regOne!12019 Regex!5753) (regTwo!12019 Regex!5753)) )
))
(declare-datatypes ((List!24282 0))(
  ( (Nil!24198) (Cons!24198 (h!29599 Regex!5753) (t!196810 List!24282)) )
))
(declare-datatypes ((Context!2646 0))(
  ( (Context!2647 (exprs!1823 List!24282)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3310 0))(
  ( (tuple3!3311 (_1!14124 (InoxSet Context!2646)) (_2!14124 Int) (_3!2125 Int)) )
))
(declare-datatypes ((tuple2!23998 0))(
  ( (tuple2!23999 (_1!14125 tuple3!3310) (_2!14125 Int)) )
))
(declare-datatypes ((List!24283 0))(
  ( (Nil!24199) (Cons!24199 (h!29600 tuple2!23998) (t!196811 List!24283)) )
))
(declare-datatypes ((array!9113 0))(
  ( (array!9114 (arr!4068 (Array (_ BitVec 32) (_ BitVec 64))) (size!18926 (_ BitVec 32))) )
))
(declare-datatypes ((array!9115 0))(
  ( (array!9116 (arr!4069 (Array (_ BitVec 32) List!24283)) (size!18927 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5388 0))(
  ( (LongMapFixedSize!5389 (defaultEntry!3059 Int) (mask!6886 (_ BitVec 32)) (extraKeys!2942 (_ BitVec 32)) (zeroValue!2952 List!24283) (minValue!2952 List!24283) (_size!5439 (_ BitVec 32)) (_keys!2991 array!9113) (_values!2974 array!9115) (_vacant!2755 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10601 0))(
  ( (Cell!10602 (v!28769 LongMapFixedSize!5388)) )
))
(declare-datatypes ((List!24284 0))(
  ( (Nil!24200) (Cons!24200 (h!29601 C!11652) (t!196812 List!24284)) )
))
(declare-datatypes ((IArray!15787 0))(
  ( (IArray!15788 (innerList!7951 List!24284)) )
))
(declare-datatypes ((Conc!7891 0))(
  ( (Node!7891 (left!18632 Conc!7891) (right!18962 Conc!7891) (csize!16012 Int) (cheight!8102 Int)) (Leaf!11535 (xs!10833 IArray!15787) (csize!16013 Int)) (Empty!7891) )
))
(declare-datatypes ((MutLongMap!2694 0))(
  ( (LongMap!2694 (underlying!5583 Cell!10601)) (MutLongMapExt!2693 (__x!16258 Int)) )
))
(declare-datatypes ((Cell!10603 0))(
  ( (Cell!10604 (v!28770 MutLongMap!2694)) )
))
(declare-datatypes ((Hashable!2608 0))(
  ( (HashableExt!2607 (__x!16259 Int)) )
))
(declare-datatypes ((MutableMap!2608 0))(
  ( (MutableMapExt!2607 (__x!16260 Int)) (HashMap!2608 (underlying!5584 Cell!10603) (hashF!4531 Hashable!2608) (_size!5440 (_ BitVec 32)) (defaultValue!2770 Int)) )
))
(declare-datatypes ((BalanceConc!15544 0))(
  ( (BalanceConc!15545 (c!340358 Conc!7891)) )
))
(declare-datatypes ((CacheFurthestNullable!750 0))(
  ( (CacheFurthestNullable!751 (cache!2989 MutableMap!2608) (totalInput!3078 BalanceConc!15544)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!750)

(declare-fun tp!658967 () Bool)

(declare-fun inv!31865 (Conc!7891) Bool)

(assert (=> b!2136610 (= e!1363938 (and (inv!31865 (c!340358 (totalInput!3078 cacheFurthestNullable!114))) tp!658967))))

(declare-fun b!2136611 () Bool)

(declare-fun res!923059 () Bool)

(declare-fun e!1363942 () Bool)

(assert (=> b!2136611 (=> (not res!923059) (not e!1363942))))

(declare-fun valid!2107 (CacheFurthestNullable!750) Bool)

(assert (=> b!2136611 (= res!923059 (valid!2107 cacheFurthestNullable!114))))

(declare-fun e!1363919 () Bool)

(declare-fun e!1363931 () Bool)

(assert (=> b!2136612 (= e!1363919 (and e!1363931 tp!658981))))

(declare-fun b!2136613 () Bool)

(declare-fun e!1363946 () Bool)

(declare-datatypes ((tuple3!3312 0))(
  ( (tuple3!3313 (_1!14126 Regex!5753) (_2!14126 Context!2646) (_3!2126 C!11652)) )
))
(declare-datatypes ((tuple2!24000 0))(
  ( (tuple2!24001 (_1!14127 tuple3!3312) (_2!14127 (InoxSet Context!2646))) )
))
(declare-datatypes ((List!24285 0))(
  ( (Nil!24201) (Cons!24201 (h!29602 tuple2!24000) (t!196813 List!24285)) )
))
(declare-datatypes ((tuple2!24002 0))(
  ( (tuple2!24003 (_1!14128 Context!2646) (_2!14128 C!11652)) )
))
(declare-datatypes ((tuple2!24004 0))(
  ( (tuple2!24005 (_1!14129 tuple2!24002) (_2!14129 (InoxSet Context!2646))) )
))
(declare-datatypes ((List!24286 0))(
  ( (Nil!24202) (Cons!24202 (h!29603 tuple2!24004) (t!196814 List!24286)) )
))
(declare-datatypes ((Hashable!2609 0))(
  ( (HashableExt!2608 (__x!16261 Int)) )
))
(declare-datatypes ((Hashable!2610 0))(
  ( (HashableExt!2609 (__x!16262 Int)) )
))
(declare-datatypes ((array!9117 0))(
  ( (array!9118 (arr!4070 (Array (_ BitVec 32) List!24286)) (size!18928 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5390 0))(
  ( (LongMapFixedSize!5391 (defaultEntry!3060 Int) (mask!6887 (_ BitVec 32)) (extraKeys!2943 (_ BitVec 32)) (zeroValue!2953 List!24286) (minValue!2953 List!24286) (_size!5441 (_ BitVec 32)) (_keys!2992 array!9113) (_values!2975 array!9117) (_vacant!2756 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10605 0))(
  ( (Cell!10606 (v!28771 LongMapFixedSize!5390)) )
))
(declare-datatypes ((MutLongMap!2695 0))(
  ( (LongMap!2695 (underlying!5585 Cell!10605)) (MutLongMapExt!2694 (__x!16263 Int)) )
))
(declare-datatypes ((Cell!10607 0))(
  ( (Cell!10608 (v!28772 MutLongMap!2695)) )
))
(declare-datatypes ((MutableMap!2609 0))(
  ( (MutableMapExt!2608 (__x!16264 Int)) (HashMap!2609 (underlying!5586 Cell!10607) (hashF!4532 Hashable!2609) (_size!5442 (_ BitVec 32)) (defaultValue!2771 Int)) )
))
(declare-datatypes ((CacheUp!1804 0))(
  ( (CacheUp!1805 (cache!2990 MutableMap!2609)) )
))
(declare-datatypes ((array!9119 0))(
  ( (array!9120 (arr!4071 (Array (_ BitVec 32) List!24285)) (size!18929 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5392 0))(
  ( (LongMapFixedSize!5393 (defaultEntry!3061 Int) (mask!6888 (_ BitVec 32)) (extraKeys!2944 (_ BitVec 32)) (zeroValue!2954 List!24285) (minValue!2954 List!24285) (_size!5443 (_ BitVec 32)) (_keys!2993 array!9113) (_values!2976 array!9119) (_vacant!2757 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10609 0))(
  ( (Cell!10610 (v!28773 LongMapFixedSize!5392)) )
))
(declare-datatypes ((MutLongMap!2696 0))(
  ( (LongMap!2696 (underlying!5587 Cell!10609)) (MutLongMapExt!2695 (__x!16265 Int)) )
))
(declare-datatypes ((Cell!10611 0))(
  ( (Cell!10612 (v!28774 MutLongMap!2696)) )
))
(declare-datatypes ((MutableMap!2610 0))(
  ( (MutableMapExt!2609 (__x!16266 Int)) (HashMap!2610 (underlying!5588 Cell!10611) (hashF!4533 Hashable!2610) (_size!5444 (_ BitVec 32)) (defaultValue!2772 Int)) )
))
(declare-datatypes ((CacheDown!1786 0))(
  ( (CacheDown!1787 (cache!2991 MutableMap!2610)) )
))
(declare-datatypes ((tuple3!3314 0))(
  ( (tuple3!3315 (_1!14130 (InoxSet Context!2646)) (_2!14130 CacheUp!1804) (_3!2127 CacheDown!1786)) )
))
(declare-fun lt!797404 () tuple3!3314)

(declare-fun valid!2108 (CacheDown!1786) Bool)

(assert (=> b!2136613 (= e!1363946 (valid!2108 (_3!2127 lt!797404)))))

(declare-fun b!2136614 () Bool)

(declare-fun e!1363955 () Bool)

(declare-fun tp!658964 () Bool)

(declare-fun mapRes!12880 () Bool)

(assert (=> b!2136614 (= e!1363955 (and tp!658964 mapRes!12880))))

(declare-fun condMapEmpty!12881 () Bool)

(declare-fun cacheDown!1098 () CacheDown!1786)

(declare-fun mapDefault!12882 () List!24285)

(assert (=> b!2136614 (= condMapEmpty!12881 (= (arr!4071 (_values!2976 (v!28773 (underlying!5587 (v!28774 (underlying!5588 (cache!2991 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!24285)) mapDefault!12882)))))

(declare-fun mapIsEmpty!12880 () Bool)

(declare-fun mapRes!12881 () Bool)

(assert (=> mapIsEmpty!12880 mapRes!12881))

(declare-fun b!2136615 () Bool)

(declare-fun e!1363933 () Bool)

(declare-fun e!1363953 () Bool)

(assert (=> b!2136615 (= e!1363933 e!1363953)))

(declare-fun b!2136616 () Bool)

(declare-fun e!1363940 () Bool)

(declare-fun inv!31866 (BalanceConc!15544) Bool)

(assert (=> b!2136616 (= e!1363940 (and e!1363919 (inv!31866 (totalInput!3078 cacheFurthestNullable!114)) e!1363938))))

(declare-fun mapIsEmpty!12881 () Bool)

(declare-fun mapRes!12882 () Bool)

(assert (=> mapIsEmpty!12881 mapRes!12882))

(declare-fun e!1363921 () Bool)

(declare-fun e!1363929 () Bool)

(assert (=> b!2136617 (= e!1363921 (and e!1363929 tp!658982))))

(declare-fun setIsEmpty!15984 () Bool)

(declare-fun setRes!15985 () Bool)

(assert (=> setIsEmpty!15984 setRes!15985))

(declare-fun tp!658976 () Bool)

(declare-fun e!1363950 () Bool)

(declare-fun setRes!15984 () Bool)

(declare-fun setNonEmpty!15984 () Bool)

(declare-fun setElem!15985 () Context!2646)

(declare-fun inv!31867 (Context!2646) Bool)

(assert (=> setNonEmpty!15984 (= setRes!15984 (and tp!658976 (inv!31867 setElem!15985) e!1363950))))

(declare-fun z!3839 () (InoxSet Context!2646))

(declare-fun setRest!15985 () (InoxSet Context!2646))

(assert (=> setNonEmpty!15984 (= z!3839 ((_ map or) (store ((as const (Array Context!2646 Bool)) false) setElem!15985 true) setRest!15985))))

(declare-fun res!923068 () Bool)

(declare-fun e!1363922 () Bool)

(assert (=> start!207612 (=> (not res!923068) (not e!1363922))))

(declare-fun from!1043 () Int)

(declare-fun totalInputSize!296 () Int)

(assert (=> start!207612 (= res!923068 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!207612 e!1363922))

(declare-fun inv!31868 (CacheFurthestNullable!750) Bool)

(assert (=> start!207612 (and (inv!31868 cacheFurthestNullable!114) e!1363940)))

(assert (=> start!207612 true))

(declare-fun e!1363944 () Bool)

(declare-fun inv!31869 (CacheDown!1786) Bool)

(assert (=> start!207612 (and (inv!31869 cacheDown!1098) e!1363944)))

(declare-fun cacheUp!979 () CacheUp!1804)

(declare-fun e!1363948 () Bool)

(declare-fun inv!31870 (CacheUp!1804) Bool)

(assert (=> start!207612 (and (inv!31870 cacheUp!979) e!1363948)))

(declare-fun condSetEmpty!15984 () Bool)

(assert (=> start!207612 (= condSetEmpty!15984 (= z!3839 ((as const (Array Context!2646 Bool)) false)))))

(assert (=> start!207612 setRes!15984))

(declare-fun totalInput!851 () BalanceConc!15544)

(declare-fun e!1363954 () Bool)

(assert (=> start!207612 (and (inv!31866 totalInput!851) e!1363954)))

(declare-fun e!1363936 () Bool)

(assert (=> start!207612 e!1363936))

(declare-fun b!2136618 () Bool)

(assert (=> b!2136618 (= e!1363922 e!1363942)))

(declare-fun res!923062 () Bool)

(assert (=> b!2136618 (=> (not res!923062) (not e!1363942))))

(declare-fun lt!797401 () Int)

(declare-fun lastNullablePos!123 () Int)

(assert (=> b!2136618 (= res!923062 (and (= totalInputSize!296 lt!797401) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun size!18930 (BalanceConc!15544) Int)

(assert (=> b!2136618 (= lt!797401 (size!18930 totalInput!851))))

(declare-fun res!923069 () Bool)

(declare-fun e!1363927 () Bool)

(assert (=> b!2136619 (=> (not res!923069) (not e!1363927))))

(declare-datatypes ((StackFrame!192 0))(
  ( (StackFrame!193 (z!5824 (InoxSet Context!2646)) (from!2710 Int) (lastNullablePos!397 Int) (res!923071 Int) (totalInput!3079 BalanceConc!15544)) )
))
(declare-datatypes ((List!24287 0))(
  ( (Nil!24203) (Cons!24203 (h!29604 StackFrame!192) (t!196815 List!24287)) )
))
(declare-fun stack!8 () List!24287)

(declare-fun forall!4938 (List!24287 Int) Bool)

(assert (=> b!2136619 (= res!923069 (forall!4938 stack!8 lambda!79628))))

(declare-fun b!2136620 () Bool)

(declare-fun res!923057 () Bool)

(assert (=> b!2136620 (=> (not res!923057) (not e!1363942))))

(assert (=> b!2136620 (= res!923057 (= (totalInput!3078 cacheFurthestNullable!114) totalInput!851))))

(declare-fun b!2136621 () Bool)

(declare-fun res!923070 () Bool)

(assert (=> b!2136621 (=> (not res!923070) (not e!1363942))))

(declare-fun e!1363932 () Bool)

(assert (=> b!2136621 (= res!923070 e!1363932)))

(declare-fun res!923060 () Bool)

(assert (=> b!2136621 (=> res!923060 e!1363932)))

(declare-fun nullableZipper!125 ((InoxSet Context!2646)) Bool)

(assert (=> b!2136621 (= res!923060 (not (nullableZipper!125 z!3839)))))

(declare-fun mapIsEmpty!12882 () Bool)

(assert (=> mapIsEmpty!12882 mapRes!12880))

(declare-fun b!2136622 () Bool)

(declare-fun e!1363957 () Bool)

(assert (=> b!2136622 (= e!1363944 e!1363957)))

(declare-fun setIsEmpty!15985 () Bool)

(assert (=> setIsEmpty!15985 setRes!15984))

(declare-fun e!1363925 () Bool)

(declare-fun tp!658987 () Bool)

(declare-fun tp!658971 () Bool)

(declare-fun array_inv!2907 (array!9113) Bool)

(declare-fun array_inv!2908 (array!9119) Bool)

(assert (=> b!2136623 (= e!1363925 (and tp!658983 tp!658971 tp!658987 (array_inv!2907 (_keys!2993 (v!28773 (underlying!5587 (v!28774 (underlying!5588 (cache!2991 cacheDown!1098))))))) (array_inv!2908 (_values!2976 (v!28773 (underlying!5587 (v!28774 (underlying!5588 (cache!2991 cacheDown!1098))))))) e!1363955))))

(declare-fun b!2136624 () Bool)

(declare-fun e!1363923 () Bool)

(declare-fun tp!658974 () Bool)

(assert (=> b!2136624 (= e!1363923 (and (inv!31865 (c!340358 (totalInput!3079 (h!29604 stack!8)))) tp!658974))))

(declare-fun b!2136625 () Bool)

(assert (=> b!2136625 (= e!1363932 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun e!1363926 () Bool)

(declare-fun tp!658972 () Bool)

(declare-fun tp!658965 () Bool)

(declare-fun e!1363920 () Bool)

(declare-fun array_inv!2909 (array!9115) Bool)

(assert (=> b!2136626 (= e!1363920 (and tp!658984 tp!658972 tp!658965 (array_inv!2907 (_keys!2991 (v!28769 (underlying!5583 (v!28770 (underlying!5584 (cache!2989 cacheFurthestNullable!114))))))) (array_inv!2909 (_values!2974 (v!28769 (underlying!5583 (v!28770 (underlying!5584 (cache!2989 cacheFurthestNullable!114))))))) e!1363926))))

(declare-fun b!2136627 () Bool)

(declare-fun tp!658962 () Bool)

(assert (=> b!2136627 (= e!1363926 (and tp!658962 mapRes!12881))))

(declare-fun condMapEmpty!12880 () Bool)

(declare-fun mapDefault!12881 () List!24283)

(assert (=> b!2136627 (= condMapEmpty!12880 (= (arr!4069 (_values!2974 (v!28769 (underlying!5583 (v!28770 (underlying!5584 (cache!2989 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!24283)) mapDefault!12881)))))

(declare-fun b!2136628 () Bool)

(declare-fun e!1363935 () Bool)

(declare-fun tp!658990 () Bool)

(assert (=> b!2136628 (= e!1363935 tp!658990)))

(declare-fun b!2136629 () Bool)

(declare-fun e!1363956 () Bool)

(assert (=> b!2136629 (= e!1363927 (not e!1363956))))

(declare-fun res!923054 () Bool)

(assert (=> b!2136629 (=> res!923054 e!1363956)))

(get-info :version)

(declare-datatypes ((Option!4917 0))(
  ( (None!4916) (Some!4916 (v!28775 Int)) )
))
(declare-fun get!7403 (CacheFurthestNullable!750 (InoxSet Context!2646) Int Int) Option!4917)

(assert (=> b!2136629 (= res!923054 ((_ is Some!4916) (get!7403 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123)))))

(assert (=> b!2136629 (forall!4938 stack!8 lambda!79627)))

(declare-fun b!2136630 () Bool)

(declare-fun lt!797403 () MutLongMap!2694)

(assert (=> b!2136630 (= e!1363931 (and e!1363933 ((_ is LongMap!2694) lt!797403)))))

(assert (=> b!2136630 (= lt!797403 (v!28770 (underlying!5584 (cache!2989 cacheFurthestNullable!114))))))

(declare-fun b!2136631 () Bool)

(declare-fun e!1363941 () Bool)

(assert (=> b!2136631 (= e!1363956 e!1363941)))

(declare-fun res!923056 () Bool)

(assert (=> b!2136631 (=> res!923056 e!1363941)))

(assert (=> b!2136631 (= res!923056 (not (= lt!797400 lt!797405)))))

(declare-fun lt!797406 () Int)

(declare-fun furthestNullablePosition!61 ((InoxSet Context!2646) Int BalanceConc!15544 Int Int) Int)

(assert (=> b!2136631 (= lt!797405 (furthestNullablePosition!61 (_1!14130 lt!797404) (+ 1 from!1043) totalInput!851 lt!797401 lt!797406))))

(declare-fun lt!797397 () List!24287)

(assert (=> b!2136631 (= lt!797397 (Cons!24203 (StackFrame!193 z!3839 from!1043 lastNullablePos!123 lt!797400 totalInput!851) stack!8))))

(declare-fun lt!797396 () Bool)

(assert (=> b!2136631 (= lt!797406 (ite lt!797396 from!1043 lastNullablePos!123))))

(assert (=> b!2136631 (= lt!797396 (nullableZipper!125 (_1!14130 lt!797404)))))

(declare-fun derivationStepZipperMem!47 ((InoxSet Context!2646) C!11652 CacheUp!1804 CacheDown!1786) tuple3!3314)

(declare-fun apply!5946 (BalanceConc!15544 Int) C!11652)

(assert (=> b!2136631 (= lt!797404 (derivationStepZipperMem!47 z!3839 (apply!5946 totalInput!851 from!1043) cacheUp!979 cacheDown!1098))))

(declare-fun b!2136632 () Bool)

(declare-fun res!923061 () Bool)

(declare-fun e!1363939 () Bool)

(assert (=> b!2136632 (=> res!923061 e!1363939)))

(assert (=> b!2136632 (= res!923061 (not (forall!4938 lt!797397 lambda!79629)))))

(declare-fun e!1363924 () Bool)

(assert (=> b!2136633 (= e!1363957 (and e!1363924 tp!658986))))

(declare-fun tp!658977 () Bool)

(declare-fun setElem!15984 () Context!2646)

(declare-fun setNonEmpty!15985 () Bool)

(assert (=> setNonEmpty!15985 (= setRes!15985 (and tp!658977 (inv!31867 setElem!15984) e!1363935))))

(declare-fun setRest!15984 () (InoxSet Context!2646))

(assert (=> setNonEmpty!15985 (= (z!5824 (h!29604 stack!8)) ((_ map or) (store ((as const (Array Context!2646 Bool)) false) setElem!15984 true) setRest!15984))))

(declare-fun b!2136634 () Bool)

(declare-fun res!923065 () Bool)

(assert (=> b!2136634 (=> (not res!923065) (not e!1363942))))

(assert (=> b!2136634 (= res!923065 (valid!2108 cacheDown!1098))))

(declare-fun tp!658980 () Bool)

(declare-fun b!2136635 () Bool)

(declare-fun e!1363930 () Bool)

(declare-fun inv!31871 (StackFrame!192) Bool)

(assert (=> b!2136635 (= e!1363936 (and (inv!31871 (h!29604 stack!8)) e!1363930 tp!658980))))

(declare-fun b!2136636 () Bool)

(declare-fun e!1363952 () Bool)

(assert (=> b!2136636 (= e!1363952 e!1363925)))

(declare-fun b!2136637 () Bool)

(declare-fun tp!658968 () Bool)

(assert (=> b!2136637 (= e!1363954 (and (inv!31865 (c!340358 totalInput!851)) tp!658968))))

(declare-fun b!2136638 () Bool)

(declare-fun e!1363947 () Bool)

(declare-fun lt!797402 () MutLongMap!2696)

(assert (=> b!2136638 (= e!1363924 (and e!1363947 ((_ is LongMap!2696) lt!797402)))))

(assert (=> b!2136638 (= lt!797402 (v!28774 (underlying!5588 (cache!2991 cacheDown!1098))))))

(declare-fun mapNonEmpty!12880 () Bool)

(declare-fun tp!658985 () Bool)

(declare-fun tp!658975 () Bool)

(assert (=> mapNonEmpty!12880 (= mapRes!12882 (and tp!658985 tp!658975))))

(declare-fun mapValue!12882 () List!24286)

(declare-fun mapRest!12882 () (Array (_ BitVec 32) List!24286))

(declare-fun mapKey!12880 () (_ BitVec 32))

(assert (=> mapNonEmpty!12880 (= (arr!4070 (_values!2975 (v!28771 (underlying!5585 (v!28772 (underlying!5586 (cache!2990 cacheUp!979))))))) (store mapRest!12882 mapKey!12880 mapValue!12882))))

(assert (=> b!2136639 (= e!1363941 e!1363939)))

(declare-fun res!923058 () Bool)

(assert (=> b!2136639 (=> res!923058 e!1363939)))

(assert (=> b!2136639 (= res!923058 (not (forall!4938 stack!8 lambda!79629)))))

(assert (=> b!2136639 (forall!4938 stack!8 lambda!79629)))

(declare-datatypes ((Unit!37659 0))(
  ( (Unit!37660) )
))
(declare-fun lt!797398 () Unit!37659)

(declare-fun lemmaStackPreservesForEqualRes!16 (List!24287 Int Int) Unit!37659)

(assert (=> b!2136639 (= lt!797398 (lemmaStackPreservesForEqualRes!16 stack!8 lt!797400 lt!797405))))

(assert (=> b!2136639 (forall!4938 stack!8 lambda!79627)))

(declare-fun b!2136640 () Bool)

(declare-fun tp!658970 () Bool)

(assert (=> b!2136640 (= e!1363950 tp!658970)))

(declare-fun mapNonEmpty!12881 () Bool)

(declare-fun tp!658978 () Bool)

(declare-fun tp!658966 () Bool)

(assert (=> mapNonEmpty!12881 (= mapRes!12881 (and tp!658978 tp!658966))))

(declare-fun mapKey!12881 () (_ BitVec 32))

(declare-fun mapValue!12880 () List!24283)

(declare-fun mapRest!12880 () (Array (_ BitVec 32) List!24283))

(assert (=> mapNonEmpty!12881 (= (arr!4069 (_values!2974 (v!28769 (underlying!5583 (v!28770 (underlying!5584 (cache!2989 cacheFurthestNullable!114))))))) (store mapRest!12880 mapKey!12881 mapValue!12880))))

(declare-fun b!2136641 () Bool)

(assert (=> b!2136641 (= e!1363947 e!1363952)))

(declare-fun b!2136642 () Bool)

(declare-fun res!923052 () Bool)

(assert (=> b!2136642 (=> res!923052 e!1363939)))

(assert (=> b!2136642 (= res!923052 (or (< (+ 1 from!1043) 0) (> (+ 1 from!1043) totalInputSize!296) (< lt!797406 (- 1)) (>= lt!797406 (+ 1 from!1043)) (and lt!797396 (not (= lt!797406 from!1043)))))))

(declare-fun mapNonEmpty!12882 () Bool)

(declare-fun tp!658988 () Bool)

(declare-fun tp!658979 () Bool)

(assert (=> mapNonEmpty!12882 (= mapRes!12880 (and tp!658988 tp!658979))))

(declare-fun mapValue!12881 () List!24285)

(declare-fun mapRest!12881 () (Array (_ BitVec 32) List!24285))

(declare-fun mapKey!12882 () (_ BitVec 32))

(assert (=> mapNonEmpty!12882 (= (arr!4071 (_values!2976 (v!28773 (underlying!5587 (v!28774 (underlying!5588 (cache!2991 cacheDown!1098))))))) (store mapRest!12881 mapKey!12882 mapValue!12881))))

(declare-fun b!2136643 () Bool)

(assert (=> b!2136643 (= e!1363948 e!1363921)))

(assert (=> b!2136644 (= e!1363942 e!1363927)))

(declare-fun res!923067 () Bool)

(assert (=> b!2136644 (=> (not res!923067) (not e!1363927))))

(assert (=> b!2136644 (= res!923067 (forall!4938 stack!8 lambda!79627))))

(assert (=> b!2136644 (= lt!797400 (furthestNullablePosition!61 z!3839 from!1043 totalInput!851 lt!797401 lastNullablePos!123))))

(declare-fun b!2136645 () Bool)

(declare-fun e!1363951 () Bool)

(declare-fun e!1363945 () Bool)

(assert (=> b!2136645 (= e!1363951 e!1363945)))

(declare-fun b!2136646 () Bool)

(assert (=> b!2136646 (= e!1363930 (and setRes!15985 (inv!31866 (totalInput!3079 (h!29604 stack!8))) e!1363923))))

(declare-fun condSetEmpty!15985 () Bool)

(assert (=> b!2136646 (= condSetEmpty!15985 (= (z!5824 (h!29604 stack!8)) ((as const (Array Context!2646 Bool)) false)))))

(declare-fun b!2136647 () Bool)

(declare-fun lt!797399 () MutLongMap!2695)

(assert (=> b!2136647 (= e!1363929 (and e!1363951 ((_ is LongMap!2695) lt!797399)))))

(assert (=> b!2136647 (= lt!797399 (v!28772 (underlying!5586 (cache!2990 cacheUp!979))))))

(declare-fun b!2136648 () Bool)

(assert (=> b!2136648 (= e!1363953 e!1363920)))

(declare-fun b!2136649 () Bool)

(declare-fun e!1363949 () Bool)

(assert (=> b!2136649 (= e!1363945 e!1363949)))

(declare-fun b!2136650 () Bool)

(declare-fun e!1363928 () Bool)

(declare-fun tp!658963 () Bool)

(assert (=> b!2136650 (= e!1363928 (and tp!658963 mapRes!12882))))

(declare-fun condMapEmpty!12882 () Bool)

(declare-fun mapDefault!12880 () List!24286)

(assert (=> b!2136650 (= condMapEmpty!12882 (= (arr!4070 (_values!2975 (v!28771 (underlying!5585 (v!28772 (underlying!5586 (cache!2990 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!24286)) mapDefault!12880)))))

(declare-fun b!2136651 () Bool)

(declare-fun res!923066 () Bool)

(assert (=> b!2136651 (=> (not res!923066) (not e!1363942))))

(declare-fun valid!2109 (CacheUp!1804) Bool)

(assert (=> b!2136651 (= res!923066 (valid!2109 cacheUp!979))))

(declare-fun b!2136652 () Bool)

(declare-fun res!923055 () Bool)

(assert (=> b!2136652 (=> res!923055 e!1363956)))

(declare-fun lostCauseZipper!101 ((InoxSet Context!2646)) Bool)

(assert (=> b!2136652 (= res!923055 (lostCauseZipper!101 z!3839))))

(declare-fun b!2136653 () Bool)

(declare-fun res!923063 () Bool)

(assert (=> b!2136653 (=> res!923063 e!1363956)))

(assert (=> b!2136653 (= res!923063 (= from!1043 totalInputSize!296))))

(declare-fun b!2136654 () Bool)

(assert (=> b!2136654 (= e!1363939 e!1363946)))

(declare-fun res!923053 () Bool)

(assert (=> b!2136654 (=> (not res!923053) (not e!1363946))))

(assert (=> b!2136654 (= res!923053 (valid!2109 (_2!14130 lt!797404)))))

(declare-fun b!2136655 () Bool)

(declare-fun res!923064 () Bool)

(assert (=> b!2136655 (=> res!923064 e!1363939)))

(assert (=> b!2136655 (= res!923064 (not (forall!4938 lt!797397 lambda!79628)))))

(declare-fun tp!658989 () Bool)

(declare-fun tp!658969 () Bool)

(declare-fun array_inv!2910 (array!9117) Bool)

(assert (=> b!2136656 (= e!1363949 (and tp!658973 tp!658989 tp!658969 (array_inv!2907 (_keys!2992 (v!28771 (underlying!5585 (v!28772 (underlying!5586 (cache!2990 cacheUp!979))))))) (array_inv!2910 (_values!2975 (v!28771 (underlying!5585 (v!28772 (underlying!5586 (cache!2990 cacheUp!979))))))) e!1363928))))

(assert (= (and start!207612 res!923068) b!2136618))

(assert (= (and b!2136618 res!923062) b!2136621))

(assert (= (and b!2136621 (not res!923060)) b!2136625))

(assert (= (and b!2136621 res!923070) b!2136651))

(assert (= (and b!2136651 res!923066) b!2136634))

(assert (= (and b!2136634 res!923065) b!2136611))

(assert (= (and b!2136611 res!923059) b!2136620))

(assert (= (and b!2136620 res!923057) b!2136644))

(assert (= (and b!2136644 res!923067) b!2136619))

(assert (= (and b!2136619 res!923069) b!2136629))

(assert (= (and b!2136629 (not res!923054)) b!2136653))

(assert (= (and b!2136653 (not res!923063)) b!2136652))

(assert (= (and b!2136652 (not res!923055)) b!2136631))

(assert (= (and b!2136631 (not res!923056)) b!2136639))

(assert (= (and b!2136639 (not res!923058)) b!2136632))

(assert (= (and b!2136632 (not res!923061)) b!2136655))

(assert (= (and b!2136655 (not res!923064)) b!2136642))

(assert (= (and b!2136642 (not res!923052)) b!2136654))

(assert (= (and b!2136654 res!923053) b!2136613))

(assert (= (and b!2136627 condMapEmpty!12880) mapIsEmpty!12880))

(assert (= (and b!2136627 (not condMapEmpty!12880)) mapNonEmpty!12881))

(assert (= b!2136626 b!2136627))

(assert (= b!2136648 b!2136626))

(assert (= b!2136615 b!2136648))

(assert (= (and b!2136630 ((_ is LongMap!2694) (v!28770 (underlying!5584 (cache!2989 cacheFurthestNullable!114))))) b!2136615))

(assert (= b!2136612 b!2136630))

(assert (= (and b!2136616 ((_ is HashMap!2608) (cache!2989 cacheFurthestNullable!114))) b!2136612))

(assert (= b!2136616 b!2136610))

(assert (= start!207612 b!2136616))

(assert (= (and b!2136614 condMapEmpty!12881) mapIsEmpty!12882))

(assert (= (and b!2136614 (not condMapEmpty!12881)) mapNonEmpty!12882))

(assert (= b!2136623 b!2136614))

(assert (= b!2136636 b!2136623))

(assert (= b!2136641 b!2136636))

(assert (= (and b!2136638 ((_ is LongMap!2696) (v!28774 (underlying!5588 (cache!2991 cacheDown!1098))))) b!2136641))

(assert (= b!2136633 b!2136638))

(assert (= (and b!2136622 ((_ is HashMap!2610) (cache!2991 cacheDown!1098))) b!2136633))

(assert (= start!207612 b!2136622))

(assert (= (and b!2136650 condMapEmpty!12882) mapIsEmpty!12881))

(assert (= (and b!2136650 (not condMapEmpty!12882)) mapNonEmpty!12880))

(assert (= b!2136656 b!2136650))

(assert (= b!2136649 b!2136656))

(assert (= b!2136645 b!2136649))

(assert (= (and b!2136647 ((_ is LongMap!2695) (v!28772 (underlying!5586 (cache!2990 cacheUp!979))))) b!2136645))

(assert (= b!2136617 b!2136647))

(assert (= (and b!2136643 ((_ is HashMap!2609) (cache!2990 cacheUp!979))) b!2136617))

(assert (= start!207612 b!2136643))

(assert (= (and start!207612 condSetEmpty!15984) setIsEmpty!15985))

(assert (= (and start!207612 (not condSetEmpty!15984)) setNonEmpty!15984))

(assert (= setNonEmpty!15984 b!2136640))

(assert (= start!207612 b!2136637))

(assert (= (and b!2136646 condSetEmpty!15985) setIsEmpty!15984))

(assert (= (and b!2136646 (not condSetEmpty!15985)) setNonEmpty!15985))

(assert (= setNonEmpty!15985 b!2136628))

(assert (= b!2136646 b!2136624))

(assert (= b!2136635 b!2136646))

(assert (= (and start!207612 ((_ is Cons!24203) stack!8)) b!2136635))

(declare-fun m!2583830 () Bool)

(assert (=> b!2136623 m!2583830))

(declare-fun m!2583832 () Bool)

(assert (=> b!2136623 m!2583832))

(declare-fun m!2583834 () Bool)

(assert (=> mapNonEmpty!12880 m!2583834))

(declare-fun m!2583836 () Bool)

(assert (=> b!2136632 m!2583836))

(declare-fun m!2583838 () Bool)

(assert (=> b!2136635 m!2583838))

(declare-fun m!2583840 () Bool)

(assert (=> b!2136652 m!2583840))

(declare-fun m!2583842 () Bool)

(assert (=> b!2136656 m!2583842))

(declare-fun m!2583844 () Bool)

(assert (=> b!2136656 m!2583844))

(declare-fun m!2583846 () Bool)

(assert (=> b!2136654 m!2583846))

(declare-fun m!2583848 () Bool)

(assert (=> mapNonEmpty!12881 m!2583848))

(declare-fun m!2583850 () Bool)

(assert (=> b!2136610 m!2583850))

(declare-fun m!2583852 () Bool)

(assert (=> b!2136611 m!2583852))

(declare-fun m!2583854 () Bool)

(assert (=> b!2136646 m!2583854))

(declare-fun m!2583856 () Bool)

(assert (=> b!2136634 m!2583856))

(declare-fun m!2583858 () Bool)

(assert (=> b!2136637 m!2583858))

(declare-fun m!2583860 () Bool)

(assert (=> setNonEmpty!15985 m!2583860))

(declare-fun m!2583862 () Bool)

(assert (=> setNonEmpty!15984 m!2583862))

(declare-fun m!2583864 () Bool)

(assert (=> b!2136639 m!2583864))

(assert (=> b!2136639 m!2583864))

(declare-fun m!2583866 () Bool)

(assert (=> b!2136639 m!2583866))

(declare-fun m!2583868 () Bool)

(assert (=> b!2136639 m!2583868))

(declare-fun m!2583870 () Bool)

(assert (=> b!2136621 m!2583870))

(declare-fun m!2583872 () Bool)

(assert (=> b!2136626 m!2583872))

(declare-fun m!2583874 () Bool)

(assert (=> b!2136626 m!2583874))

(declare-fun m!2583876 () Bool)

(assert (=> b!2136629 m!2583876))

(assert (=> b!2136629 m!2583868))

(assert (=> b!2136644 m!2583868))

(declare-fun m!2583878 () Bool)

(assert (=> b!2136644 m!2583878))

(declare-fun m!2583880 () Bool)

(assert (=> b!2136631 m!2583880))

(declare-fun m!2583882 () Bool)

(assert (=> b!2136631 m!2583882))

(declare-fun m!2583884 () Bool)

(assert (=> b!2136631 m!2583884))

(assert (=> b!2136631 m!2583884))

(declare-fun m!2583886 () Bool)

(assert (=> b!2136631 m!2583886))

(declare-fun m!2583888 () Bool)

(assert (=> b!2136613 m!2583888))

(declare-fun m!2583890 () Bool)

(assert (=> b!2136651 m!2583890))

(declare-fun m!2583892 () Bool)

(assert (=> b!2136624 m!2583892))

(declare-fun m!2583894 () Bool)

(assert (=> start!207612 m!2583894))

(declare-fun m!2583896 () Bool)

(assert (=> start!207612 m!2583896))

(declare-fun m!2583898 () Bool)

(assert (=> start!207612 m!2583898))

(declare-fun m!2583900 () Bool)

(assert (=> start!207612 m!2583900))

(declare-fun m!2583902 () Bool)

(assert (=> mapNonEmpty!12882 m!2583902))

(declare-fun m!2583904 () Bool)

(assert (=> b!2136616 m!2583904))

(declare-fun m!2583906 () Bool)

(assert (=> b!2136619 m!2583906))

(declare-fun m!2583908 () Bool)

(assert (=> b!2136655 m!2583908))

(declare-fun m!2583910 () Bool)

(assert (=> b!2136618 m!2583910))

(check-sat (not mapNonEmpty!12882) (not b!2136621) (not b!2136656) (not b!2136619) (not b!2136610) (not b!2136655) (not b!2136614) (not b!2136637) (not mapNonEmpty!12881) (not b!2136624) (not b!2136631) (not b!2136640) (not start!207612) b_and!172277 b_and!172281 (not b!2136626) (not b!2136654) (not b!2136616) (not b!2136651) (not b_next!63407) (not b_next!63399) (not b_next!63397) (not b!2136635) (not b!2136650) (not b!2136634) (not b!2136628) (not b!2136627) (not b!2136611) (not setNonEmpty!15985) (not b!2136632) (not setNonEmpty!15984) (not b!2136629) b_and!172275 (not b_next!63403) (not mapNonEmpty!12880) (not b!2136618) (not b_next!63401) (not b!2136639) b_and!172273 b_and!172279 (not b!2136644) b_and!172283 (not b!2136652) (not b!2136623) (not b!2136646) (not b_next!63405) (not b!2136613))
(check-sat (not b_next!63397) b_and!172279 b_and!172283 (not b_next!63405) b_and!172277 b_and!172281 (not b_next!63407) (not b_next!63399) b_and!172275 (not b_next!63403) b_and!172273 (not b_next!63401))
(get-model)

(declare-fun b!2136673 () Bool)

(declare-fun e!1363963 () Bool)

(assert (=> b!2136673 (= e!1363963 (= (lastNullablePos!397 (h!29604 stack!8)) (- (from!2710 (h!29604 stack!8)) 1)))))

(declare-fun b!2136674 () Bool)

(declare-fun res!923086 () Bool)

(declare-fun e!1363962 () Bool)

(assert (=> b!2136674 (=> (not res!923086) (not e!1363962))))

(assert (=> b!2136674 (= res!923086 e!1363963)))

(declare-fun res!923084 () Bool)

(assert (=> b!2136674 (=> res!923084 e!1363963)))

(assert (=> b!2136674 (= res!923084 (not (nullableZipper!125 (z!5824 (h!29604 stack!8)))))))

(declare-fun b!2136675 () Bool)

(assert (=> b!2136675 (= e!1363962 (= (res!923071 (h!29604 stack!8)) (furthestNullablePosition!61 (z!5824 (h!29604 stack!8)) (from!2710 (h!29604 stack!8)) (totalInput!3079 (h!29604 stack!8)) (size!18930 (totalInput!3079 (h!29604 stack!8))) (lastNullablePos!397 (h!29604 stack!8)))))))

(declare-fun b!2136676 () Bool)

(declare-fun res!923088 () Bool)

(assert (=> b!2136676 (=> (not res!923088) (not e!1363962))))

(assert (=> b!2136676 (= res!923088 (<= (from!2710 (h!29604 stack!8)) (size!18930 (totalInput!3079 (h!29604 stack!8)))))))

(declare-fun d!644336 () Bool)

(declare-fun res!923087 () Bool)

(assert (=> d!644336 (=> (not res!923087) (not e!1363962))))

(assert (=> d!644336 (= res!923087 (>= (from!2710 (h!29604 stack!8)) 0))))

(assert (=> d!644336 (= (inv!31871 (h!29604 stack!8)) e!1363962)))

(declare-fun b!2136677 () Bool)

(declare-fun res!923085 () Bool)

(assert (=> b!2136677 (=> (not res!923085) (not e!1363962))))

(assert (=> b!2136677 (= res!923085 (= (size!18930 (totalInput!3079 (h!29604 stack!8))) (size!18930 (totalInput!3079 (h!29604 stack!8)))))))

(declare-fun b!2136678 () Bool)

(declare-fun res!923089 () Bool)

(assert (=> b!2136678 (=> (not res!923089) (not e!1363962))))

(assert (=> b!2136678 (= res!923089 (and (>= (lastNullablePos!397 (h!29604 stack!8)) (- 1)) (< (lastNullablePos!397 (h!29604 stack!8)) (from!2710 (h!29604 stack!8)))))))

(assert (= (and d!644336 res!923087) b!2136676))

(assert (= (and b!2136676 res!923088) b!2136677))

(assert (= (and b!2136677 res!923085) b!2136678))

(assert (= (and b!2136678 res!923089) b!2136674))

(assert (= (and b!2136674 (not res!923084)) b!2136673))

(assert (= (and b!2136674 res!923086) b!2136675))

(declare-fun m!2583912 () Bool)

(assert (=> b!2136674 m!2583912))

(declare-fun m!2583914 () Bool)

(assert (=> b!2136675 m!2583914))

(assert (=> b!2136675 m!2583914))

(declare-fun m!2583916 () Bool)

(assert (=> b!2136675 m!2583916))

(assert (=> b!2136676 m!2583914))

(assert (=> b!2136677 m!2583914))

(assert (=> b!2136635 d!644336))

(declare-fun d!644338 () Bool)

(declare-fun lambda!79632 () Int)

(declare-fun forall!4939 (List!24282 Int) Bool)

(assert (=> d!644338 (= (inv!31867 setElem!15985) (forall!4939 (exprs!1823 setElem!15985) lambda!79632))))

(declare-fun bs!444353 () Bool)

(assert (= bs!444353 d!644338))

(declare-fun m!2583918 () Bool)

(assert (=> bs!444353 m!2583918))

(assert (=> setNonEmpty!15984 d!644338))

(declare-fun d!644340 () Bool)

(declare-fun validCacheMapUp!251 (MutableMap!2609) Bool)

(assert (=> d!644340 (= (valid!2109 (_2!14130 lt!797404)) (validCacheMapUp!251 (cache!2990 (_2!14130 lt!797404))))))

(declare-fun bs!444354 () Bool)

(assert (= bs!444354 d!644340))

(declare-fun m!2583920 () Bool)

(assert (=> bs!444354 m!2583920))

(assert (=> b!2136654 d!644340))

(declare-fun d!644342 () Bool)

(declare-fun lt!797409 () Int)

(declare-fun size!18931 (List!24284) Int)

(declare-fun list!9543 (BalanceConc!15544) List!24284)

(assert (=> d!644342 (= lt!797409 (size!18931 (list!9543 totalInput!851)))))

(declare-fun size!18932 (Conc!7891) Int)

(assert (=> d!644342 (= lt!797409 (size!18932 (c!340358 totalInput!851)))))

(assert (=> d!644342 (= (size!18930 totalInput!851) lt!797409)))

(declare-fun bs!444355 () Bool)

(assert (= bs!444355 d!644342))

(declare-fun m!2583922 () Bool)

(assert (=> bs!444355 m!2583922))

(assert (=> bs!444355 m!2583922))

(declare-fun m!2583924 () Bool)

(assert (=> bs!444355 m!2583924))

(declare-fun m!2583926 () Bool)

(assert (=> bs!444355 m!2583926))

(assert (=> b!2136618 d!644342))

(declare-fun d!644344 () Bool)

(declare-fun res!923094 () Bool)

(declare-fun e!1363968 () Bool)

(assert (=> d!644344 (=> res!923094 e!1363968)))

(assert (=> d!644344 (= res!923094 ((_ is Nil!24203) lt!797397))))

(assert (=> d!644344 (= (forall!4938 lt!797397 lambda!79628) e!1363968)))

(declare-fun b!2136683 () Bool)

(declare-fun e!1363969 () Bool)

(assert (=> b!2136683 (= e!1363968 e!1363969)))

(declare-fun res!923095 () Bool)

(assert (=> b!2136683 (=> (not res!923095) (not e!1363969))))

(declare-fun dynLambda!11366 (Int StackFrame!192) Bool)

(assert (=> b!2136683 (= res!923095 (dynLambda!11366 lambda!79628 (h!29604 lt!797397)))))

(declare-fun b!2136684 () Bool)

(assert (=> b!2136684 (= e!1363969 (forall!4938 (t!196815 lt!797397) lambda!79628))))

(assert (= (and d!644344 (not res!923094)) b!2136683))

(assert (= (and b!2136683 res!923095) b!2136684))

(declare-fun b_lambda!70573 () Bool)

(assert (=> (not b_lambda!70573) (not b!2136683)))

(declare-fun m!2583928 () Bool)

(assert (=> b!2136683 m!2583928))

(declare-fun m!2583930 () Bool)

(assert (=> b!2136684 m!2583930))

(assert (=> b!2136655 d!644344))

(declare-fun d!644346 () Bool)

(declare-fun c!340361 () Bool)

(assert (=> d!644346 (= c!340361 ((_ is Node!7891) (c!340358 totalInput!851)))))

(declare-fun e!1363974 () Bool)

(assert (=> d!644346 (= (inv!31865 (c!340358 totalInput!851)) e!1363974)))

(declare-fun b!2136691 () Bool)

(declare-fun inv!31872 (Conc!7891) Bool)

(assert (=> b!2136691 (= e!1363974 (inv!31872 (c!340358 totalInput!851)))))

(declare-fun b!2136692 () Bool)

(declare-fun e!1363975 () Bool)

(assert (=> b!2136692 (= e!1363974 e!1363975)))

(declare-fun res!923098 () Bool)

(assert (=> b!2136692 (= res!923098 (not ((_ is Leaf!11535) (c!340358 totalInput!851))))))

(assert (=> b!2136692 (=> res!923098 e!1363975)))

(declare-fun b!2136693 () Bool)

(declare-fun inv!31873 (Conc!7891) Bool)

(assert (=> b!2136693 (= e!1363975 (inv!31873 (c!340358 totalInput!851)))))

(assert (= (and d!644346 c!340361) b!2136691))

(assert (= (and d!644346 (not c!340361)) b!2136692))

(assert (= (and b!2136692 (not res!923098)) b!2136693))

(declare-fun m!2583932 () Bool)

(assert (=> b!2136691 m!2583932))

(declare-fun m!2583934 () Bool)

(assert (=> b!2136693 m!2583934))

(assert (=> b!2136637 d!644346))

(declare-fun d!644348 () Bool)

(declare-fun res!923099 () Bool)

(declare-fun e!1363976 () Bool)

(assert (=> d!644348 (=> res!923099 e!1363976)))

(assert (=> d!644348 (= res!923099 ((_ is Nil!24203) stack!8))))

(assert (=> d!644348 (= (forall!4938 stack!8 lambda!79628) e!1363976)))

(declare-fun b!2136694 () Bool)

(declare-fun e!1363977 () Bool)

(assert (=> b!2136694 (= e!1363976 e!1363977)))

(declare-fun res!923100 () Bool)

(assert (=> b!2136694 (=> (not res!923100) (not e!1363977))))

(assert (=> b!2136694 (= res!923100 (dynLambda!11366 lambda!79628 (h!29604 stack!8)))))

(declare-fun b!2136695 () Bool)

(assert (=> b!2136695 (= e!1363977 (forall!4938 (t!196815 stack!8) lambda!79628))))

(assert (= (and d!644348 (not res!923099)) b!2136694))

(assert (= (and b!2136694 res!923100) b!2136695))

(declare-fun b_lambda!70575 () Bool)

(assert (=> (not b_lambda!70575) (not b!2136694)))

(declare-fun m!2583936 () Bool)

(assert (=> b!2136694 m!2583936))

(declare-fun m!2583938 () Bool)

(assert (=> b!2136695 m!2583938))

(assert (=> b!2136619 d!644348))

(declare-fun d!644350 () Bool)

(assert (=> d!644350 (= (array_inv!2907 (_keys!2992 (v!28771 (underlying!5585 (v!28772 (underlying!5586 (cache!2990 cacheUp!979))))))) (bvsge (size!18926 (_keys!2992 (v!28771 (underlying!5585 (v!28772 (underlying!5586 (cache!2990 cacheUp!979))))))) #b00000000000000000000000000000000))))

(assert (=> b!2136656 d!644350))

(declare-fun d!644352 () Bool)

(assert (=> d!644352 (= (array_inv!2910 (_values!2975 (v!28771 (underlying!5585 (v!28772 (underlying!5586 (cache!2990 cacheUp!979))))))) (bvsge (size!18928 (_values!2975 (v!28771 (underlying!5585 (v!28772 (underlying!5586 (cache!2990 cacheUp!979))))))) #b00000000000000000000000000000000))))

(assert (=> b!2136656 d!644352))

(declare-fun d!644354 () Bool)

(declare-fun lambda!79635 () Int)

(declare-fun exists!701 ((InoxSet Context!2646) Int) Bool)

(assert (=> d!644354 (= (nullableZipper!125 z!3839) (exists!701 z!3839 lambda!79635))))

(declare-fun bs!444356 () Bool)

(assert (= bs!444356 d!644354))

(declare-fun m!2583940 () Bool)

(assert (=> bs!444356 m!2583940))

(assert (=> b!2136621 d!644354))

(declare-fun lt!797415 () Int)

(declare-fun d!644356 () Bool)

(assert (=> d!644356 (and (>= lt!797415 (- 1)) (< lt!797415 lt!797401) (>= lt!797415 lt!797406) (or (= lt!797415 lt!797406) (>= lt!797415 (+ 1 from!1043))))))

(declare-fun e!1363986 () Int)

(assert (=> d!644356 (= lt!797415 e!1363986)))

(declare-fun c!340368 () Bool)

(declare-fun e!1363985 () Bool)

(assert (=> d!644356 (= c!340368 e!1363985)))

(declare-fun res!923103 () Bool)

(assert (=> d!644356 (=> res!923103 e!1363985)))

(assert (=> d!644356 (= res!923103 (= (+ 1 from!1043) lt!797401))))

(assert (=> d!644356 (and (>= (+ 1 from!1043) 0) (<= (+ 1 from!1043) lt!797401))))

(assert (=> d!644356 (= (furthestNullablePosition!61 (_1!14130 lt!797404) (+ 1 from!1043) totalInput!851 lt!797401 lt!797406) lt!797415)))

(declare-fun b!2136706 () Bool)

(assert (=> b!2136706 (= e!1363986 lt!797406)))

(declare-fun e!1363984 () Int)

(declare-fun lt!797414 () (InoxSet Context!2646))

(declare-fun b!2136707 () Bool)

(assert (=> b!2136707 (= e!1363986 (furthestNullablePosition!61 lt!797414 (+ 1 from!1043 1) totalInput!851 lt!797401 e!1363984))))

(declare-fun derivationStepZipper!90 ((InoxSet Context!2646) C!11652) (InoxSet Context!2646))

(assert (=> b!2136707 (= lt!797414 (derivationStepZipper!90 (_1!14130 lt!797404) (apply!5946 totalInput!851 (+ 1 from!1043))))))

(declare-fun c!340369 () Bool)

(assert (=> b!2136707 (= c!340369 (nullableZipper!125 lt!797414))))

(declare-fun b!2136708 () Bool)

(assert (=> b!2136708 (= e!1363985 (lostCauseZipper!101 (_1!14130 lt!797404)))))

(declare-fun b!2136709 () Bool)

(assert (=> b!2136709 (= e!1363984 (+ 1 from!1043))))

(declare-fun b!2136710 () Bool)

(assert (=> b!2136710 (= e!1363984 lt!797406)))

(assert (= (and d!644356 (not res!923103)) b!2136708))

(assert (= (and d!644356 c!340368) b!2136706))

(assert (= (and d!644356 (not c!340368)) b!2136707))

(assert (= (and b!2136707 c!340369) b!2136709))

(assert (= (and b!2136707 (not c!340369)) b!2136710))

(declare-fun m!2583942 () Bool)

(assert (=> b!2136707 m!2583942))

(declare-fun m!2583944 () Bool)

(assert (=> b!2136707 m!2583944))

(assert (=> b!2136707 m!2583944))

(declare-fun m!2583946 () Bool)

(assert (=> b!2136707 m!2583946))

(declare-fun m!2583948 () Bool)

(assert (=> b!2136707 m!2583948))

(declare-fun m!2583950 () Bool)

(assert (=> b!2136708 m!2583950))

(assert (=> b!2136631 d!644356))

(declare-fun bs!444357 () Bool)

(declare-fun d!644358 () Bool)

(assert (= bs!444357 (and d!644358 d!644354)))

(declare-fun lambda!79636 () Int)

(assert (=> bs!444357 (= lambda!79636 lambda!79635)))

(assert (=> d!644358 (= (nullableZipper!125 (_1!14130 lt!797404)) (exists!701 (_1!14130 lt!797404) lambda!79636))))

(declare-fun bs!444358 () Bool)

(assert (= bs!444358 d!644358))

(declare-fun m!2583952 () Bool)

(assert (=> bs!444358 m!2583952))

(assert (=> b!2136631 d!644358))

(declare-fun d!644360 () Bool)

(declare-fun e!1363989 () Bool)

(assert (=> d!644360 e!1363989))

(declare-fun res!923108 () Bool)

(assert (=> d!644360 (=> (not res!923108) (not e!1363989))))

(declare-fun lt!797418 () tuple3!3314)

(assert (=> d!644360 (= res!923108 (= (_1!14130 lt!797418) (derivationStepZipper!90 z!3839 (apply!5946 totalInput!851 from!1043))))))

(declare-fun choose!12676 ((InoxSet Context!2646) C!11652 CacheUp!1804 CacheDown!1786) tuple3!3314)

(assert (=> d!644360 (= lt!797418 (choose!12676 z!3839 (apply!5946 totalInput!851 from!1043) cacheUp!979 cacheDown!1098))))

(assert (=> d!644360 (= (derivationStepZipperMem!47 z!3839 (apply!5946 totalInput!851 from!1043) cacheUp!979 cacheDown!1098) lt!797418)))

(declare-fun b!2136715 () Bool)

(declare-fun res!923109 () Bool)

(assert (=> b!2136715 (=> (not res!923109) (not e!1363989))))

(assert (=> b!2136715 (= res!923109 (valid!2109 (_2!14130 lt!797418)))))

(declare-fun b!2136716 () Bool)

(assert (=> b!2136716 (= e!1363989 (valid!2108 (_3!2127 lt!797418)))))

(assert (= (and d!644360 res!923108) b!2136715))

(assert (= (and b!2136715 res!923109) b!2136716))

(assert (=> d!644360 m!2583884))

(declare-fun m!2583954 () Bool)

(assert (=> d!644360 m!2583954))

(assert (=> d!644360 m!2583884))

(declare-fun m!2583956 () Bool)

(assert (=> d!644360 m!2583956))

(declare-fun m!2583958 () Bool)

(assert (=> b!2136715 m!2583958))

(declare-fun m!2583960 () Bool)

(assert (=> b!2136716 m!2583960))

(assert (=> b!2136631 d!644360))

(declare-fun d!644362 () Bool)

(declare-fun lt!797421 () C!11652)

(declare-fun apply!5947 (List!24284 Int) C!11652)

(assert (=> d!644362 (= lt!797421 (apply!5947 (list!9543 totalInput!851) from!1043))))

(declare-fun apply!5948 (Conc!7891 Int) C!11652)

(assert (=> d!644362 (= lt!797421 (apply!5948 (c!340358 totalInput!851) from!1043))))

(declare-fun e!1363992 () Bool)

(assert (=> d!644362 e!1363992))

(declare-fun res!923112 () Bool)

(assert (=> d!644362 (=> (not res!923112) (not e!1363992))))

(assert (=> d!644362 (= res!923112 (<= 0 from!1043))))

(assert (=> d!644362 (= (apply!5946 totalInput!851 from!1043) lt!797421)))

(declare-fun b!2136719 () Bool)

(assert (=> b!2136719 (= e!1363992 (< from!1043 (size!18930 totalInput!851)))))

(assert (= (and d!644362 res!923112) b!2136719))

(assert (=> d!644362 m!2583922))

(assert (=> d!644362 m!2583922))

(declare-fun m!2583962 () Bool)

(assert (=> d!644362 m!2583962))

(declare-fun m!2583964 () Bool)

(assert (=> d!644362 m!2583964))

(assert (=> b!2136719 m!2583910))

(assert (=> b!2136631 d!644362))

(declare-fun d!644364 () Bool)

(declare-fun res!923113 () Bool)

(declare-fun e!1363993 () Bool)

(assert (=> d!644364 (=> res!923113 e!1363993)))

(assert (=> d!644364 (= res!923113 ((_ is Nil!24203) lt!797397))))

(assert (=> d!644364 (= (forall!4938 lt!797397 lambda!79629) e!1363993)))

(declare-fun b!2136720 () Bool)

(declare-fun e!1363994 () Bool)

(assert (=> b!2136720 (= e!1363993 e!1363994)))

(declare-fun res!923114 () Bool)

(assert (=> b!2136720 (=> (not res!923114) (not e!1363994))))

(assert (=> b!2136720 (= res!923114 (dynLambda!11366 lambda!79629 (h!29604 lt!797397)))))

(declare-fun b!2136721 () Bool)

(assert (=> b!2136721 (= e!1363994 (forall!4938 (t!196815 lt!797397) lambda!79629))))

(assert (= (and d!644364 (not res!923113)) b!2136720))

(assert (= (and b!2136720 res!923114) b!2136721))

(declare-fun b_lambda!70577 () Bool)

(assert (=> (not b_lambda!70577) (not b!2136720)))

(declare-fun m!2583966 () Bool)

(assert (=> b!2136720 m!2583966))

(declare-fun m!2583968 () Bool)

(assert (=> b!2136721 m!2583968))

(assert (=> b!2136632 d!644364))

(declare-fun d!644366 () Bool)

(declare-fun isBalanced!2455 (Conc!7891) Bool)

(assert (=> d!644366 (= (inv!31866 (totalInput!3078 cacheFurthestNullable!114)) (isBalanced!2455 (c!340358 (totalInput!3078 cacheFurthestNullable!114))))))

(declare-fun bs!444359 () Bool)

(assert (= bs!444359 d!644366))

(declare-fun m!2583970 () Bool)

(assert (=> bs!444359 m!2583970))

(assert (=> b!2136616 d!644366))

(declare-fun d!644368 () Bool)

(assert (=> d!644368 (= (valid!2109 cacheUp!979) (validCacheMapUp!251 (cache!2990 cacheUp!979)))))

(declare-fun bs!444360 () Bool)

(assert (= bs!444360 d!644368))

(declare-fun m!2583972 () Bool)

(assert (=> bs!444360 m!2583972))

(assert (=> b!2136651 d!644368))

(declare-fun bs!444361 () Bool)

(declare-fun d!644370 () Bool)

(assert (= bs!444361 (and d!644370 d!644338)))

(declare-fun lambda!79637 () Int)

(assert (=> bs!444361 (= lambda!79637 lambda!79632)))

(assert (=> d!644370 (= (inv!31867 setElem!15984) (forall!4939 (exprs!1823 setElem!15984) lambda!79637))))

(declare-fun bs!444362 () Bool)

(assert (= bs!444362 d!644370))

(declare-fun m!2583974 () Bool)

(assert (=> bs!444362 m!2583974))

(assert (=> setNonEmpty!15985 d!644370))

(declare-fun bs!444363 () Bool)

(declare-fun d!644372 () Bool)

(assert (= bs!444363 (and d!644372 d!644354)))

(declare-fun lambda!79650 () Int)

(assert (=> bs!444363 (not (= lambda!79650 lambda!79635))))

(declare-fun bs!444364 () Bool)

(assert (= bs!444364 (and d!644372 d!644358)))

(assert (=> bs!444364 (not (= lambda!79650 lambda!79636))))

(declare-fun bs!444365 () Bool)

(declare-fun b!2136726 () Bool)

(assert (= bs!444365 (and b!2136726 d!644354)))

(declare-fun lambda!79651 () Int)

(assert (=> bs!444365 (not (= lambda!79651 lambda!79635))))

(declare-fun bs!444366 () Bool)

(assert (= bs!444366 (and b!2136726 d!644358)))

(assert (=> bs!444366 (not (= lambda!79651 lambda!79636))))

(declare-fun bs!444367 () Bool)

(assert (= bs!444367 (and b!2136726 d!644372)))

(assert (=> bs!444367 (not (= lambda!79651 lambda!79650))))

(declare-fun bs!444368 () Bool)

(declare-fun b!2136727 () Bool)

(assert (= bs!444368 (and b!2136727 d!644354)))

(declare-fun lambda!79652 () Int)

(assert (=> bs!444368 (not (= lambda!79652 lambda!79635))))

(declare-fun bs!444369 () Bool)

(assert (= bs!444369 (and b!2136727 d!644358)))

(assert (=> bs!444369 (not (= lambda!79652 lambda!79636))))

(declare-fun bs!444370 () Bool)

(assert (= bs!444370 (and b!2136727 d!644372)))

(assert (=> bs!444370 (not (= lambda!79652 lambda!79650))))

(declare-fun bs!444371 () Bool)

(assert (= bs!444371 (and b!2136727 b!2136726)))

(assert (=> bs!444371 (= lambda!79652 lambda!79651)))

(declare-fun e!1364001 () Unit!37659)

(declare-fun Unit!37661 () Unit!37659)

(assert (=> b!2136726 (= e!1364001 Unit!37661)))

(declare-datatypes ((List!24288 0))(
  ( (Nil!24204) (Cons!24204 (h!29605 Context!2646) (t!196816 List!24288)) )
))
(declare-fun lt!797439 () List!24288)

(declare-fun call!128788 () List!24288)

(assert (=> b!2136726 (= lt!797439 call!128788)))

(declare-fun lt!797445 () Unit!37659)

(declare-fun lemmaNotForallThenExists!16 (List!24288 Int) Unit!37659)

(assert (=> b!2136726 (= lt!797445 (lemmaNotForallThenExists!16 lt!797439 lambda!79650))))

(declare-fun call!128789 () Bool)

(assert (=> b!2136726 call!128789))

(declare-fun lt!797440 () Unit!37659)

(assert (=> b!2136726 (= lt!797440 lt!797445)))

(declare-fun Unit!37662 () Unit!37659)

(assert (=> b!2136727 (= e!1364001 Unit!37662)))

(declare-fun lt!797444 () List!24288)

(assert (=> b!2136727 (= lt!797444 call!128788)))

(declare-fun lt!797443 () Unit!37659)

(declare-fun lemmaForallThenNotExists!16 (List!24288 Int) Unit!37659)

(assert (=> b!2136727 (= lt!797443 (lemmaForallThenNotExists!16 lt!797444 lambda!79650))))

(assert (=> b!2136727 (not call!128789)))

(declare-fun lt!797442 () Unit!37659)

(assert (=> b!2136727 (= lt!797442 lt!797443)))

(declare-fun c!340380 () Bool)

(declare-fun bm!128783 () Bool)

(declare-fun exists!702 (List!24288 Int) Bool)

(assert (=> bm!128783 (= call!128789 (exists!702 (ite c!340380 lt!797439 lt!797444) (ite c!340380 lambda!79651 lambda!79652)))))

(declare-fun lt!797441 () Bool)

(declare-datatypes ((Option!4918 0))(
  ( (None!4917) (Some!4917 (v!28776 List!24284)) )
))
(declare-fun isEmpty!14320 (Option!4918) Bool)

(declare-fun getLanguageWitness!101 ((InoxSet Context!2646)) Option!4918)

(assert (=> d!644372 (= lt!797441 (isEmpty!14320 (getLanguageWitness!101 z!3839)))))

(declare-fun forall!4940 ((InoxSet Context!2646) Int) Bool)

(assert (=> d!644372 (= lt!797441 (forall!4940 z!3839 lambda!79650))))

(declare-fun lt!797438 () Unit!37659)

(assert (=> d!644372 (= lt!797438 e!1364001)))

(assert (=> d!644372 (= c!340380 (not (forall!4940 z!3839 lambda!79650)))))

(assert (=> d!644372 (= (lostCauseZipper!101 z!3839) lt!797441)))

(declare-fun bm!128784 () Bool)

(declare-fun toList!1073 ((InoxSet Context!2646)) List!24288)

(assert (=> bm!128784 (= call!128788 (toList!1073 z!3839))))

(assert (= (and d!644372 c!340380) b!2136726))

(assert (= (and d!644372 (not c!340380)) b!2136727))

(assert (= (or b!2136726 b!2136727) bm!128783))

(assert (= (or b!2136726 b!2136727) bm!128784))

(declare-fun m!2583976 () Bool)

(assert (=> b!2136726 m!2583976))

(declare-fun m!2583978 () Bool)

(assert (=> bm!128783 m!2583978))

(declare-fun m!2583980 () Bool)

(assert (=> b!2136727 m!2583980))

(declare-fun m!2583982 () Bool)

(assert (=> bm!128784 m!2583982))

(declare-fun m!2583984 () Bool)

(assert (=> d!644372 m!2583984))

(assert (=> d!644372 m!2583984))

(declare-fun m!2583986 () Bool)

(assert (=> d!644372 m!2583986))

(declare-fun m!2583988 () Bool)

(assert (=> d!644372 m!2583988))

(assert (=> d!644372 m!2583988))

(assert (=> b!2136652 d!644372))

(declare-fun d!644374 () Bool)

(declare-fun validCacheMapDown!249 (MutableMap!2610) Bool)

(assert (=> d!644374 (= (valid!2108 cacheDown!1098) (validCacheMapDown!249 (cache!2991 cacheDown!1098)))))

(declare-fun bs!444372 () Bool)

(assert (= bs!444372 d!644374))

(declare-fun m!2583990 () Bool)

(assert (=> bs!444372 m!2583990))

(assert (=> b!2136634 d!644374))

(declare-fun d!644376 () Bool)

(declare-fun c!340381 () Bool)

(assert (=> d!644376 (= c!340381 ((_ is Node!7891) (c!340358 (totalInput!3078 cacheFurthestNullable!114))))))

(declare-fun e!1364002 () Bool)

(assert (=> d!644376 (= (inv!31865 (c!340358 (totalInput!3078 cacheFurthestNullable!114))) e!1364002)))

(declare-fun b!2136728 () Bool)

(assert (=> b!2136728 (= e!1364002 (inv!31872 (c!340358 (totalInput!3078 cacheFurthestNullable!114))))))

(declare-fun b!2136729 () Bool)

(declare-fun e!1364003 () Bool)

(assert (=> b!2136729 (= e!1364002 e!1364003)))

(declare-fun res!923115 () Bool)

(assert (=> b!2136729 (= res!923115 (not ((_ is Leaf!11535) (c!340358 (totalInput!3078 cacheFurthestNullable!114)))))))

(assert (=> b!2136729 (=> res!923115 e!1364003)))

(declare-fun b!2136730 () Bool)

(assert (=> b!2136730 (= e!1364003 (inv!31873 (c!340358 (totalInput!3078 cacheFurthestNullable!114))))))

(assert (= (and d!644376 c!340381) b!2136728))

(assert (= (and d!644376 (not c!340381)) b!2136729))

(assert (= (and b!2136729 (not res!923115)) b!2136730))

(declare-fun m!2583992 () Bool)

(assert (=> b!2136728 m!2583992))

(declare-fun m!2583994 () Bool)

(assert (=> b!2136730 m!2583994))

(assert (=> b!2136610 d!644376))

(declare-fun d!644378 () Bool)

(assert (=> d!644378 (= (array_inv!2907 (_keys!2991 (v!28769 (underlying!5583 (v!28770 (underlying!5584 (cache!2989 cacheFurthestNullable!114))))))) (bvsge (size!18926 (_keys!2991 (v!28769 (underlying!5583 (v!28770 (underlying!5584 (cache!2989 cacheFurthestNullable!114))))))) #b00000000000000000000000000000000))))

(assert (=> b!2136626 d!644378))

(declare-fun d!644380 () Bool)

(assert (=> d!644380 (= (array_inv!2909 (_values!2974 (v!28769 (underlying!5583 (v!28770 (underlying!5584 (cache!2989 cacheFurthestNullable!114))))))) (bvsge (size!18927 (_values!2974 (v!28769 (underlying!5583 (v!28770 (underlying!5584 (cache!2989 cacheFurthestNullable!114))))))) #b00000000000000000000000000000000))))

(assert (=> b!2136626 d!644380))

(declare-fun d!644382 () Bool)

(declare-fun validCacheMapFurthestNullable!101 (MutableMap!2608 BalanceConc!15544) Bool)

(assert (=> d!644382 (= (valid!2107 cacheFurthestNullable!114) (validCacheMapFurthestNullable!101 (cache!2989 cacheFurthestNullable!114) (totalInput!3078 cacheFurthestNullable!114)))))

(declare-fun bs!444373 () Bool)

(assert (= bs!444373 d!644382))

(declare-fun m!2583996 () Bool)

(assert (=> bs!444373 m!2583996))

(assert (=> b!2136611 d!644382))

(declare-fun d!644384 () Bool)

(declare-fun res!923116 () Bool)

(declare-fun e!1364004 () Bool)

(assert (=> d!644384 (=> res!923116 e!1364004)))

(assert (=> d!644384 (= res!923116 ((_ is Nil!24203) stack!8))))

(assert (=> d!644384 (= (forall!4938 stack!8 lambda!79627) e!1364004)))

(declare-fun b!2136731 () Bool)

(declare-fun e!1364005 () Bool)

(assert (=> b!2136731 (= e!1364004 e!1364005)))

(declare-fun res!923117 () Bool)

(assert (=> b!2136731 (=> (not res!923117) (not e!1364005))))

(assert (=> b!2136731 (= res!923117 (dynLambda!11366 lambda!79627 (h!29604 stack!8)))))

(declare-fun b!2136732 () Bool)

(assert (=> b!2136732 (= e!1364005 (forall!4938 (t!196815 stack!8) lambda!79627))))

(assert (= (and d!644384 (not res!923116)) b!2136731))

(assert (= (and b!2136731 res!923117) b!2136732))

(declare-fun b_lambda!70579 () Bool)

(assert (=> (not b_lambda!70579) (not b!2136731)))

(declare-fun m!2583998 () Bool)

(assert (=> b!2136731 m!2583998))

(declare-fun m!2584000 () Bool)

(assert (=> b!2136732 m!2584000))

(assert (=> b!2136644 d!644384))

(declare-fun lt!797447 () Int)

(declare-fun d!644386 () Bool)

(assert (=> d!644386 (and (>= lt!797447 (- 1)) (< lt!797447 lt!797401) (>= lt!797447 lastNullablePos!123) (or (= lt!797447 lastNullablePos!123) (>= lt!797447 from!1043)))))

(declare-fun e!1364008 () Int)

(assert (=> d!644386 (= lt!797447 e!1364008)))

(declare-fun c!340382 () Bool)

(declare-fun e!1364007 () Bool)

(assert (=> d!644386 (= c!340382 e!1364007)))

(declare-fun res!923118 () Bool)

(assert (=> d!644386 (=> res!923118 e!1364007)))

(assert (=> d!644386 (= res!923118 (= from!1043 lt!797401))))

(assert (=> d!644386 (and (>= from!1043 0) (<= from!1043 lt!797401))))

(assert (=> d!644386 (= (furthestNullablePosition!61 z!3839 from!1043 totalInput!851 lt!797401 lastNullablePos!123) lt!797447)))

(declare-fun b!2136733 () Bool)

(assert (=> b!2136733 (= e!1364008 lastNullablePos!123)))

(declare-fun lt!797446 () (InoxSet Context!2646))

(declare-fun b!2136734 () Bool)

(declare-fun e!1364006 () Int)

(assert (=> b!2136734 (= e!1364008 (furthestNullablePosition!61 lt!797446 (+ from!1043 1) totalInput!851 lt!797401 e!1364006))))

(assert (=> b!2136734 (= lt!797446 (derivationStepZipper!90 z!3839 (apply!5946 totalInput!851 from!1043)))))

(declare-fun c!340383 () Bool)

(assert (=> b!2136734 (= c!340383 (nullableZipper!125 lt!797446))))

(declare-fun b!2136735 () Bool)

(assert (=> b!2136735 (= e!1364007 (lostCauseZipper!101 z!3839))))

(declare-fun b!2136736 () Bool)

(assert (=> b!2136736 (= e!1364006 from!1043)))

(declare-fun b!2136737 () Bool)

(assert (=> b!2136737 (= e!1364006 lastNullablePos!123)))

(assert (= (and d!644386 (not res!923118)) b!2136735))

(assert (= (and d!644386 c!340382) b!2136733))

(assert (= (and d!644386 (not c!340382)) b!2136734))

(assert (= (and b!2136734 c!340383) b!2136736))

(assert (= (and b!2136734 (not c!340383)) b!2136737))

(declare-fun m!2584002 () Bool)

(assert (=> b!2136734 m!2584002))

(assert (=> b!2136734 m!2583884))

(assert (=> b!2136734 m!2583884))

(assert (=> b!2136734 m!2583954))

(declare-fun m!2584004 () Bool)

(assert (=> b!2136734 m!2584004))

(assert (=> b!2136735 m!2583840))

(assert (=> b!2136644 d!644386))

(declare-fun d!644388 () Bool)

(declare-fun res!923121 () Bool)

(declare-fun e!1364011 () Bool)

(assert (=> d!644388 (=> (not res!923121) (not e!1364011))))

(assert (=> d!644388 (= res!923121 ((_ is HashMap!2608) (cache!2989 cacheFurthestNullable!114)))))

(assert (=> d!644388 (= (inv!31868 cacheFurthestNullable!114) e!1364011)))

(declare-fun b!2136740 () Bool)

(assert (=> b!2136740 (= e!1364011 (validCacheMapFurthestNullable!101 (cache!2989 cacheFurthestNullable!114) (totalInput!3078 cacheFurthestNullable!114)))))

(assert (= (and d!644388 res!923121) b!2136740))

(assert (=> b!2136740 m!2583996))

(assert (=> start!207612 d!644388))

(declare-fun d!644390 () Bool)

(declare-fun res!923124 () Bool)

(declare-fun e!1364014 () Bool)

(assert (=> d!644390 (=> (not res!923124) (not e!1364014))))

(assert (=> d!644390 (= res!923124 ((_ is HashMap!2610) (cache!2991 cacheDown!1098)))))

(assert (=> d!644390 (= (inv!31869 cacheDown!1098) e!1364014)))

(declare-fun b!2136743 () Bool)

(assert (=> b!2136743 (= e!1364014 (validCacheMapDown!249 (cache!2991 cacheDown!1098)))))

(assert (= (and d!644390 res!923124) b!2136743))

(assert (=> b!2136743 m!2583990))

(assert (=> start!207612 d!644390))

(declare-fun d!644392 () Bool)

(declare-fun res!923127 () Bool)

(declare-fun e!1364017 () Bool)

(assert (=> d!644392 (=> (not res!923127) (not e!1364017))))

(assert (=> d!644392 (= res!923127 ((_ is HashMap!2609) (cache!2990 cacheUp!979)))))

(assert (=> d!644392 (= (inv!31870 cacheUp!979) e!1364017)))

(declare-fun b!2136746 () Bool)

(assert (=> b!2136746 (= e!1364017 (validCacheMapUp!251 (cache!2990 cacheUp!979)))))

(assert (= (and d!644392 res!923127) b!2136746))

(assert (=> b!2136746 m!2583972))

(assert (=> start!207612 d!644392))

(declare-fun d!644394 () Bool)

(assert (=> d!644394 (= (inv!31866 totalInput!851) (isBalanced!2455 (c!340358 totalInput!851)))))

(declare-fun bs!444374 () Bool)

(assert (= bs!444374 d!644394))

(declare-fun m!2584006 () Bool)

(assert (=> bs!444374 m!2584006))

(assert (=> start!207612 d!644394))

(declare-fun d!644396 () Bool)

(assert (=> d!644396 (= (valid!2108 (_3!2127 lt!797404)) (validCacheMapDown!249 (cache!2991 (_3!2127 lt!797404))))))

(declare-fun bs!444375 () Bool)

(assert (= bs!444375 d!644396))

(declare-fun m!2584008 () Bool)

(assert (=> bs!444375 m!2584008))

(assert (=> b!2136613 d!644396))

(declare-fun d!644398 () Bool)

(assert (=> d!644398 (= (inv!31866 (totalInput!3079 (h!29604 stack!8))) (isBalanced!2455 (c!340358 (totalInput!3079 (h!29604 stack!8)))))))

(declare-fun bs!444376 () Bool)

(assert (= bs!444376 d!644398))

(declare-fun m!2584010 () Bool)

(assert (=> bs!444376 m!2584010))

(assert (=> b!2136646 d!644398))

(declare-fun d!644400 () Bool)

(declare-fun e!1364020 () Bool)

(assert (=> d!644400 e!1364020))

(declare-fun res!923130 () Bool)

(assert (=> d!644400 (=> res!923130 e!1364020)))

(declare-fun lt!797450 () Option!4917)

(declare-fun isEmpty!14321 (Option!4917) Bool)

(assert (=> d!644400 (= res!923130 (isEmpty!14321 lt!797450))))

(declare-fun choose!12677 (CacheFurthestNullable!750 (InoxSet Context!2646) Int Int) Option!4917)

(assert (=> d!644400 (= lt!797450 (choose!12677 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123))))

(assert (=> d!644400 (and (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043))))

(assert (=> d!644400 (= (get!7403 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123) lt!797450)))

(declare-fun b!2136749 () Bool)

(declare-fun get!7404 (Option!4917) Int)

(assert (=> b!2136749 (= e!1364020 (= (get!7404 lt!797450) (furthestNullablePosition!61 z!3839 from!1043 (totalInput!3078 cacheFurthestNullable!114) (size!18930 (totalInput!3078 cacheFurthestNullable!114)) lastNullablePos!123)))))

(assert (= (and d!644400 (not res!923130)) b!2136749))

(declare-fun m!2584012 () Bool)

(assert (=> d!644400 m!2584012))

(declare-fun m!2584014 () Bool)

(assert (=> d!644400 m!2584014))

(declare-fun m!2584016 () Bool)

(assert (=> b!2136749 m!2584016))

(declare-fun m!2584018 () Bool)

(assert (=> b!2136749 m!2584018))

(assert (=> b!2136749 m!2584018))

(declare-fun m!2584020 () Bool)

(assert (=> b!2136749 m!2584020))

(assert (=> b!2136629 d!644400))

(assert (=> b!2136629 d!644384))

(declare-fun d!644402 () Bool)

(declare-fun res!923131 () Bool)

(declare-fun e!1364021 () Bool)

(assert (=> d!644402 (=> res!923131 e!1364021)))

(assert (=> d!644402 (= res!923131 ((_ is Nil!24203) stack!8))))

(assert (=> d!644402 (= (forall!4938 stack!8 lambda!79629) e!1364021)))

(declare-fun b!2136750 () Bool)

(declare-fun e!1364022 () Bool)

(assert (=> b!2136750 (= e!1364021 e!1364022)))

(declare-fun res!923132 () Bool)

(assert (=> b!2136750 (=> (not res!923132) (not e!1364022))))

(assert (=> b!2136750 (= res!923132 (dynLambda!11366 lambda!79629 (h!29604 stack!8)))))

(declare-fun b!2136751 () Bool)

(assert (=> b!2136751 (= e!1364022 (forall!4938 (t!196815 stack!8) lambda!79629))))

(assert (= (and d!644402 (not res!923131)) b!2136750))

(assert (= (and b!2136750 res!923132) b!2136751))

(declare-fun b_lambda!70581 () Bool)

(assert (=> (not b_lambda!70581) (not b!2136750)))

(declare-fun m!2584022 () Bool)

(assert (=> b!2136750 m!2584022))

(declare-fun m!2584024 () Bool)

(assert (=> b!2136751 m!2584024))

(assert (=> b!2136639 d!644402))

(declare-fun bs!444377 () Bool)

(declare-fun d!644404 () Bool)

(assert (= bs!444377 (and d!644404 b!2136644)))

(declare-fun lambda!79657 () Int)

(assert (=> bs!444377 (= lambda!79657 lambda!79627)))

(declare-fun bs!444378 () Bool)

(assert (= bs!444378 (and d!644404 b!2136619)))

(assert (=> bs!444378 (not (= lambda!79657 lambda!79628))))

(declare-fun bs!444379 () Bool)

(assert (= bs!444379 (and d!644404 b!2136639)))

(assert (=> bs!444379 (= (= lt!797400 lt!797405) (= lambda!79657 lambda!79629))))

(assert (=> d!644404 true))

(declare-fun lambda!79658 () Int)

(assert (=> bs!444377 (= (= lt!797405 lt!797400) (= lambda!79658 lambda!79627))))

(assert (=> bs!444378 (not (= lambda!79658 lambda!79628))))

(assert (=> bs!444379 (= lambda!79658 lambda!79629)))

(declare-fun bs!444380 () Bool)

(assert (= bs!444380 d!644404))

(assert (=> bs!444380 (= (= lt!797405 lt!797400) (= lambda!79658 lambda!79657))))

(assert (=> d!644404 true))

(assert (=> d!644404 (forall!4938 stack!8 lambda!79658)))

(declare-fun lt!797453 () Unit!37659)

(declare-fun choose!12678 (List!24287 Int Int) Unit!37659)

(assert (=> d!644404 (= lt!797453 (choose!12678 stack!8 lt!797400 lt!797405))))

(assert (=> d!644404 (forall!4938 stack!8 lambda!79657)))

(assert (=> d!644404 (= (lemmaStackPreservesForEqualRes!16 stack!8 lt!797400 lt!797405) lt!797453)))

(declare-fun m!2584026 () Bool)

(assert (=> bs!444380 m!2584026))

(declare-fun m!2584028 () Bool)

(assert (=> bs!444380 m!2584028))

(declare-fun m!2584030 () Bool)

(assert (=> bs!444380 m!2584030))

(assert (=> b!2136639 d!644404))

(assert (=> b!2136639 d!644384))

(declare-fun d!644406 () Bool)

(assert (=> d!644406 (= (array_inv!2907 (_keys!2993 (v!28773 (underlying!5587 (v!28774 (underlying!5588 (cache!2991 cacheDown!1098))))))) (bvsge (size!18926 (_keys!2993 (v!28773 (underlying!5587 (v!28774 (underlying!5588 (cache!2991 cacheDown!1098))))))) #b00000000000000000000000000000000))))

(assert (=> b!2136623 d!644406))

(declare-fun d!644408 () Bool)

(assert (=> d!644408 (= (array_inv!2908 (_values!2976 (v!28773 (underlying!5587 (v!28774 (underlying!5588 (cache!2991 cacheDown!1098))))))) (bvsge (size!18929 (_values!2976 (v!28773 (underlying!5587 (v!28774 (underlying!5588 (cache!2991 cacheDown!1098))))))) #b00000000000000000000000000000000))))

(assert (=> b!2136623 d!644408))

(declare-fun d!644410 () Bool)

(declare-fun c!340384 () Bool)

(assert (=> d!644410 (= c!340384 ((_ is Node!7891) (c!340358 (totalInput!3079 (h!29604 stack!8)))))))

(declare-fun e!1364023 () Bool)

(assert (=> d!644410 (= (inv!31865 (c!340358 (totalInput!3079 (h!29604 stack!8)))) e!1364023)))

(declare-fun b!2136752 () Bool)

(assert (=> b!2136752 (= e!1364023 (inv!31872 (c!340358 (totalInput!3079 (h!29604 stack!8)))))))

(declare-fun b!2136753 () Bool)

(declare-fun e!1364024 () Bool)

(assert (=> b!2136753 (= e!1364023 e!1364024)))

(declare-fun res!923133 () Bool)

(assert (=> b!2136753 (= res!923133 (not ((_ is Leaf!11535) (c!340358 (totalInput!3079 (h!29604 stack!8))))))))

(assert (=> b!2136753 (=> res!923133 e!1364024)))

(declare-fun b!2136754 () Bool)

(assert (=> b!2136754 (= e!1364024 (inv!31873 (c!340358 (totalInput!3079 (h!29604 stack!8)))))))

(assert (= (and d!644410 c!340384) b!2136752))

(assert (= (and d!644410 (not c!340384)) b!2136753))

(assert (= (and b!2136753 (not res!923133)) b!2136754))

(declare-fun m!2584032 () Bool)

(assert (=> b!2136752 m!2584032))

(declare-fun m!2584034 () Bool)

(assert (=> b!2136754 m!2584034))

(assert (=> b!2136624 d!644410))

(declare-fun tp!658998 () Bool)

(declare-fun tp!658999 () Bool)

(declare-fun b!2136763 () Bool)

(declare-fun e!1364029 () Bool)

(assert (=> b!2136763 (= e!1364029 (and (inv!31865 (left!18632 (c!340358 (totalInput!3078 cacheFurthestNullable!114)))) tp!658998 (inv!31865 (right!18962 (c!340358 (totalInput!3078 cacheFurthestNullable!114)))) tp!658999))))

(declare-fun b!2136765 () Bool)

(declare-fun e!1364030 () Bool)

(declare-fun tp!658997 () Bool)

(assert (=> b!2136765 (= e!1364030 tp!658997)))

(declare-fun b!2136764 () Bool)

(declare-fun inv!31874 (IArray!15787) Bool)

(assert (=> b!2136764 (= e!1364029 (and (inv!31874 (xs!10833 (c!340358 (totalInput!3078 cacheFurthestNullable!114)))) e!1364030))))

(assert (=> b!2136610 (= tp!658967 (and (inv!31865 (c!340358 (totalInput!3078 cacheFurthestNullable!114))) e!1364029))))

(assert (= (and b!2136610 ((_ is Node!7891) (c!340358 (totalInput!3078 cacheFurthestNullable!114)))) b!2136763))

(assert (= b!2136764 b!2136765))

(assert (= (and b!2136610 ((_ is Leaf!11535) (c!340358 (totalInput!3078 cacheFurthestNullable!114)))) b!2136764))

(declare-fun m!2584036 () Bool)

(assert (=> b!2136763 m!2584036))

(declare-fun m!2584038 () Bool)

(assert (=> b!2136763 m!2584038))

(declare-fun m!2584040 () Bool)

(assert (=> b!2136764 m!2584040))

(assert (=> b!2136610 m!2583850))

(declare-fun setIsEmpty!15988 () Bool)

(declare-fun setRes!15988 () Bool)

(assert (=> setIsEmpty!15988 setRes!15988))

(declare-fun e!1364040 () Bool)

(declare-fun e!1364039 () Bool)

(declare-fun b!2136776 () Bool)

(assert (=> b!2136776 (= e!1364039 (and setRes!15988 (inv!31866 (totalInput!3079 (h!29604 (t!196815 stack!8)))) e!1364040))))

(declare-fun condSetEmpty!15988 () Bool)

(assert (=> b!2136776 (= condSetEmpty!15988 (= (z!5824 (h!29604 (t!196815 stack!8))) ((as const (Array Context!2646 Bool)) false)))))

(declare-fun b!2136777 () Bool)

(declare-fun e!1364042 () Bool)

(declare-fun tp!659011 () Bool)

(assert (=> b!2136777 (= e!1364042 tp!659011)))

(declare-fun e!1364041 () Bool)

(assert (=> b!2136635 (= tp!658980 e!1364041)))

(declare-fun b!2136778 () Bool)

(declare-fun tp!659010 () Bool)

(assert (=> b!2136778 (= e!1364040 (and (inv!31865 (c!340358 (totalInput!3079 (h!29604 (t!196815 stack!8))))) tp!659010))))

(declare-fun setNonEmpty!15988 () Bool)

(declare-fun setElem!15988 () Context!2646)

(declare-fun tp!659009 () Bool)

(assert (=> setNonEmpty!15988 (= setRes!15988 (and tp!659009 (inv!31867 setElem!15988) e!1364042))))

(declare-fun setRest!15988 () (InoxSet Context!2646))

(assert (=> setNonEmpty!15988 (= (z!5824 (h!29604 (t!196815 stack!8))) ((_ map or) (store ((as const (Array Context!2646 Bool)) false) setElem!15988 true) setRest!15988))))

(declare-fun b!2136779 () Bool)

(declare-fun tp!659008 () Bool)

(assert (=> b!2136779 (= e!1364041 (and (inv!31871 (h!29604 (t!196815 stack!8))) e!1364039 tp!659008))))

(assert (= (and b!2136776 condSetEmpty!15988) setIsEmpty!15988))

(assert (= (and b!2136776 (not condSetEmpty!15988)) setNonEmpty!15988))

(assert (= setNonEmpty!15988 b!2136777))

(assert (= b!2136776 b!2136778))

(assert (= b!2136779 b!2136776))

(assert (= (and b!2136635 ((_ is Cons!24203) (t!196815 stack!8))) b!2136779))

(declare-fun m!2584042 () Bool)

(assert (=> b!2136776 m!2584042))

(declare-fun m!2584044 () Bool)

(assert (=> b!2136778 m!2584044))

(declare-fun m!2584046 () Bool)

(assert (=> setNonEmpty!15988 m!2584046))

(declare-fun m!2584048 () Bool)

(assert (=> b!2136779 m!2584048))

(declare-fun condSetEmpty!15991 () Bool)

(assert (=> setNonEmpty!15984 (= condSetEmpty!15991 (= setRest!15985 ((as const (Array Context!2646 Bool)) false)))))

(declare-fun setRes!15991 () Bool)

(assert (=> setNonEmpty!15984 (= tp!658976 setRes!15991)))

(declare-fun setIsEmpty!15991 () Bool)

(assert (=> setIsEmpty!15991 setRes!15991))

(declare-fun tp!659017 () Bool)

(declare-fun setElem!15991 () Context!2646)

(declare-fun e!1364045 () Bool)

(declare-fun setNonEmpty!15991 () Bool)

(assert (=> setNonEmpty!15991 (= setRes!15991 (and tp!659017 (inv!31867 setElem!15991) e!1364045))))

(declare-fun setRest!15991 () (InoxSet Context!2646))

(assert (=> setNonEmpty!15991 (= setRest!15985 ((_ map or) (store ((as const (Array Context!2646 Bool)) false) setElem!15991 true) setRest!15991))))

(declare-fun b!2136784 () Bool)

(declare-fun tp!659016 () Bool)

(assert (=> b!2136784 (= e!1364045 tp!659016)))

(assert (= (and setNonEmpty!15984 condSetEmpty!15991) setIsEmpty!15991))

(assert (= (and setNonEmpty!15984 (not condSetEmpty!15991)) setNonEmpty!15991))

(assert (= setNonEmpty!15991 b!2136784))

(declare-fun m!2584050 () Bool)

(assert (=> setNonEmpty!15991 m!2584050))

(declare-fun setIsEmpty!15994 () Bool)

(declare-fun setRes!15994 () Bool)

(assert (=> setIsEmpty!15994 setRes!15994))

(declare-fun b!2136792 () Bool)

(declare-fun e!1364050 () Bool)

(declare-fun tp!659024 () Bool)

(assert (=> b!2136792 (= e!1364050 tp!659024)))

(declare-fun e!1364051 () Bool)

(assert (=> b!2136626 (= tp!658972 e!1364051)))

(declare-fun b!2136791 () Bool)

(declare-fun tp!659025 () Bool)

(assert (=> b!2136791 (= e!1364051 (and setRes!15994 tp!659025))))

(declare-fun condSetEmpty!15994 () Bool)

(assert (=> b!2136791 (= condSetEmpty!15994 (= (_1!14124 (_1!14125 (h!29600 (zeroValue!2952 (v!28769 (underlying!5583 (v!28770 (underlying!5584 (cache!2989 cacheFurthestNullable!114))))))))) ((as const (Array Context!2646 Bool)) false)))))

(declare-fun setElem!15994 () Context!2646)

(declare-fun tp!659026 () Bool)

(declare-fun setNonEmpty!15994 () Bool)

(assert (=> setNonEmpty!15994 (= setRes!15994 (and tp!659026 (inv!31867 setElem!15994) e!1364050))))

(declare-fun setRest!15994 () (InoxSet Context!2646))

(assert (=> setNonEmpty!15994 (= (_1!14124 (_1!14125 (h!29600 (zeroValue!2952 (v!28769 (underlying!5583 (v!28770 (underlying!5584 (cache!2989 cacheFurthestNullable!114))))))))) ((_ map or) (store ((as const (Array Context!2646 Bool)) false) setElem!15994 true) setRest!15994))))

(assert (= (and b!2136791 condSetEmpty!15994) setIsEmpty!15994))

(assert (= (and b!2136791 (not condSetEmpty!15994)) setNonEmpty!15994))

(assert (= setNonEmpty!15994 b!2136792))

(assert (= (and b!2136626 ((_ is Cons!24199) (zeroValue!2952 (v!28769 (underlying!5583 (v!28770 (underlying!5584 (cache!2989 cacheFurthestNullable!114)))))))) b!2136791))

(declare-fun m!2584052 () Bool)

(assert (=> setNonEmpty!15994 m!2584052))

(declare-fun setIsEmpty!15995 () Bool)

(declare-fun setRes!15995 () Bool)

(assert (=> setIsEmpty!15995 setRes!15995))

(declare-fun b!2136794 () Bool)

(declare-fun e!1364052 () Bool)

(declare-fun tp!659027 () Bool)

(assert (=> b!2136794 (= e!1364052 tp!659027)))

(declare-fun e!1364053 () Bool)

(assert (=> b!2136626 (= tp!658965 e!1364053)))

(declare-fun b!2136793 () Bool)

(declare-fun tp!659028 () Bool)

(assert (=> b!2136793 (= e!1364053 (and setRes!15995 tp!659028))))

(declare-fun condSetEmpty!15995 () Bool)

(assert (=> b!2136793 (= condSetEmpty!15995 (= (_1!14124 (_1!14125 (h!29600 (minValue!2952 (v!28769 (underlying!5583 (v!28770 (underlying!5584 (cache!2989 cacheFurthestNullable!114))))))))) ((as const (Array Context!2646 Bool)) false)))))

(declare-fun setNonEmpty!15995 () Bool)

(declare-fun setElem!15995 () Context!2646)

(declare-fun tp!659029 () Bool)

(assert (=> setNonEmpty!15995 (= setRes!15995 (and tp!659029 (inv!31867 setElem!15995) e!1364052))))

(declare-fun setRest!15995 () (InoxSet Context!2646))

(assert (=> setNonEmpty!15995 (= (_1!14124 (_1!14125 (h!29600 (minValue!2952 (v!28769 (underlying!5583 (v!28770 (underlying!5584 (cache!2989 cacheFurthestNullable!114))))))))) ((_ map or) (store ((as const (Array Context!2646 Bool)) false) setElem!15995 true) setRest!15995))))

(assert (= (and b!2136793 condSetEmpty!15995) setIsEmpty!15995))

(assert (= (and b!2136793 (not condSetEmpty!15995)) setNonEmpty!15995))

(assert (= setNonEmpty!15995 b!2136794))

(assert (= (and b!2136626 ((_ is Cons!24199) (minValue!2952 (v!28769 (underlying!5583 (v!28770 (underlying!5584 (cache!2989 cacheFurthestNullable!114)))))))) b!2136793))

(declare-fun m!2584054 () Bool)

(assert (=> setNonEmpty!15995 m!2584054))

(declare-fun setIsEmpty!15996 () Bool)

(declare-fun setRes!15996 () Bool)

(assert (=> setIsEmpty!15996 setRes!15996))

(declare-fun b!2136796 () Bool)

(declare-fun e!1364054 () Bool)

(declare-fun tp!659030 () Bool)

(assert (=> b!2136796 (= e!1364054 tp!659030)))

(declare-fun e!1364055 () Bool)

(assert (=> b!2136627 (= tp!658962 e!1364055)))

(declare-fun b!2136795 () Bool)

(declare-fun tp!659031 () Bool)

(assert (=> b!2136795 (= e!1364055 (and setRes!15996 tp!659031))))

(declare-fun condSetEmpty!15996 () Bool)

(assert (=> b!2136795 (= condSetEmpty!15996 (= (_1!14124 (_1!14125 (h!29600 mapDefault!12881))) ((as const (Array Context!2646 Bool)) false)))))

(declare-fun tp!659032 () Bool)

(declare-fun setElem!15996 () Context!2646)

(declare-fun setNonEmpty!15996 () Bool)

(assert (=> setNonEmpty!15996 (= setRes!15996 (and tp!659032 (inv!31867 setElem!15996) e!1364054))))

(declare-fun setRest!15996 () (InoxSet Context!2646))

(assert (=> setNonEmpty!15996 (= (_1!14124 (_1!14125 (h!29600 mapDefault!12881))) ((_ map or) (store ((as const (Array Context!2646 Bool)) false) setElem!15996 true) setRest!15996))))

(assert (= (and b!2136795 condSetEmpty!15996) setIsEmpty!15996))

(assert (= (and b!2136795 (not condSetEmpty!15996)) setNonEmpty!15996))

(assert (= setNonEmpty!15996 b!2136796))

(assert (= (and b!2136627 ((_ is Cons!24199) mapDefault!12881)) b!2136795))

(declare-fun m!2584056 () Bool)

(assert (=> setNonEmpty!15996 m!2584056))

(declare-fun tp!659034 () Bool)

(declare-fun tp!659035 () Bool)

(declare-fun e!1364056 () Bool)

(declare-fun b!2136797 () Bool)

(assert (=> b!2136797 (= e!1364056 (and (inv!31865 (left!18632 (c!340358 totalInput!851))) tp!659034 (inv!31865 (right!18962 (c!340358 totalInput!851))) tp!659035))))

(declare-fun b!2136799 () Bool)

(declare-fun e!1364057 () Bool)

(declare-fun tp!659033 () Bool)

(assert (=> b!2136799 (= e!1364057 tp!659033)))

(declare-fun b!2136798 () Bool)

(assert (=> b!2136798 (= e!1364056 (and (inv!31874 (xs!10833 (c!340358 totalInput!851))) e!1364057))))

(assert (=> b!2136637 (= tp!658968 (and (inv!31865 (c!340358 totalInput!851)) e!1364056))))

(assert (= (and b!2136637 ((_ is Node!7891) (c!340358 totalInput!851))) b!2136797))

(assert (= b!2136798 b!2136799))

(assert (= (and b!2136637 ((_ is Leaf!11535) (c!340358 totalInput!851))) b!2136798))

(declare-fun m!2584058 () Bool)

(assert (=> b!2136797 m!2584058))

(declare-fun m!2584060 () Bool)

(assert (=> b!2136797 m!2584060))

(declare-fun m!2584062 () Bool)

(assert (=> b!2136798 m!2584062))

(assert (=> b!2136637 m!2583858))

(declare-fun e!1364065 () Bool)

(declare-fun setElem!15999 () Context!2646)

(declare-fun setRes!15999 () Bool)

(declare-fun tp!659045 () Bool)

(declare-fun setNonEmpty!15999 () Bool)

(assert (=> setNonEmpty!15999 (= setRes!15999 (and tp!659045 (inv!31867 setElem!15999) e!1364065))))

(declare-fun setRest!15999 () (InoxSet Context!2646))

(assert (=> setNonEmpty!15999 (= (_2!14129 (h!29603 (zeroValue!2953 (v!28771 (underlying!5585 (v!28772 (underlying!5586 (cache!2990 cacheUp!979)))))))) ((_ map or) (store ((as const (Array Context!2646 Bool)) false) setElem!15999 true) setRest!15999))))

(declare-fun setIsEmpty!15999 () Bool)

(assert (=> setIsEmpty!15999 setRes!15999))

(declare-fun b!2136809 () Bool)

(declare-fun e!1364064 () Bool)

(declare-fun tp!659047 () Bool)

(assert (=> b!2136809 (= e!1364064 tp!659047)))

(declare-fun b!2136810 () Bool)

(declare-fun tp!659046 () Bool)

(assert (=> b!2136810 (= e!1364065 tp!659046)))

(declare-fun e!1364066 () Bool)

(assert (=> b!2136656 (= tp!658989 e!1364066)))

(declare-fun tp!659044 () Bool)

(declare-fun b!2136808 () Bool)

(declare-fun tp_is_empty!9503 () Bool)

(assert (=> b!2136808 (= e!1364066 (and (inv!31867 (_1!14128 (_1!14129 (h!29603 (zeroValue!2953 (v!28771 (underlying!5585 (v!28772 (underlying!5586 (cache!2990 cacheUp!979)))))))))) e!1364064 tp_is_empty!9503 setRes!15999 tp!659044))))

(declare-fun condSetEmpty!15999 () Bool)

(assert (=> b!2136808 (= condSetEmpty!15999 (= (_2!14129 (h!29603 (zeroValue!2953 (v!28771 (underlying!5585 (v!28772 (underlying!5586 (cache!2990 cacheUp!979)))))))) ((as const (Array Context!2646 Bool)) false)))))

(assert (= b!2136808 b!2136809))

(assert (= (and b!2136808 condSetEmpty!15999) setIsEmpty!15999))

(assert (= (and b!2136808 (not condSetEmpty!15999)) setNonEmpty!15999))

(assert (= setNonEmpty!15999 b!2136810))

(assert (= (and b!2136656 ((_ is Cons!24202) (zeroValue!2953 (v!28771 (underlying!5585 (v!28772 (underlying!5586 (cache!2990 cacheUp!979)))))))) b!2136808))

(declare-fun m!2584064 () Bool)

(assert (=> setNonEmpty!15999 m!2584064))

(declare-fun m!2584066 () Bool)

(assert (=> b!2136808 m!2584066))

(declare-fun tp!659049 () Bool)

(declare-fun setElem!16000 () Context!2646)

(declare-fun setNonEmpty!16000 () Bool)

(declare-fun e!1364068 () Bool)

(declare-fun setRes!16000 () Bool)

(assert (=> setNonEmpty!16000 (= setRes!16000 (and tp!659049 (inv!31867 setElem!16000) e!1364068))))

(declare-fun setRest!16000 () (InoxSet Context!2646))

(assert (=> setNonEmpty!16000 (= (_2!14129 (h!29603 (minValue!2953 (v!28771 (underlying!5585 (v!28772 (underlying!5586 (cache!2990 cacheUp!979)))))))) ((_ map or) (store ((as const (Array Context!2646 Bool)) false) setElem!16000 true) setRest!16000))))

(declare-fun setIsEmpty!16000 () Bool)

(assert (=> setIsEmpty!16000 setRes!16000))

(declare-fun b!2136812 () Bool)

(declare-fun e!1364067 () Bool)

(declare-fun tp!659051 () Bool)

(assert (=> b!2136812 (= e!1364067 tp!659051)))

(declare-fun b!2136813 () Bool)

(declare-fun tp!659050 () Bool)

(assert (=> b!2136813 (= e!1364068 tp!659050)))

(declare-fun e!1364069 () Bool)

(assert (=> b!2136656 (= tp!658969 e!1364069)))

(declare-fun tp!659048 () Bool)

(declare-fun b!2136811 () Bool)

(assert (=> b!2136811 (= e!1364069 (and (inv!31867 (_1!14128 (_1!14129 (h!29603 (minValue!2953 (v!28771 (underlying!5585 (v!28772 (underlying!5586 (cache!2990 cacheUp!979)))))))))) e!1364067 tp_is_empty!9503 setRes!16000 tp!659048))))

(declare-fun condSetEmpty!16000 () Bool)

(assert (=> b!2136811 (= condSetEmpty!16000 (= (_2!14129 (h!29603 (minValue!2953 (v!28771 (underlying!5585 (v!28772 (underlying!5586 (cache!2990 cacheUp!979)))))))) ((as const (Array Context!2646 Bool)) false)))))

(assert (= b!2136811 b!2136812))

(assert (= (and b!2136811 condSetEmpty!16000) setIsEmpty!16000))

(assert (= (and b!2136811 (not condSetEmpty!16000)) setNonEmpty!16000))

(assert (= setNonEmpty!16000 b!2136813))

(assert (= (and b!2136656 ((_ is Cons!24202) (minValue!2953 (v!28771 (underlying!5585 (v!28772 (underlying!5586 (cache!2990 cacheUp!979)))))))) b!2136811))

(declare-fun m!2584068 () Bool)

(assert (=> setNonEmpty!16000 m!2584068))

(declare-fun m!2584070 () Bool)

(assert (=> b!2136811 m!2584070))

(declare-fun b!2136818 () Bool)

(declare-fun e!1364072 () Bool)

(declare-fun tp!659056 () Bool)

(declare-fun tp!659057 () Bool)

(assert (=> b!2136818 (= e!1364072 (and tp!659056 tp!659057))))

(assert (=> b!2136628 (= tp!658990 e!1364072)))

(assert (= (and b!2136628 ((_ is Cons!24198) (exprs!1823 setElem!15984))) b!2136818))

(declare-fun b!2136827 () Bool)

(declare-fun e!1364081 () Bool)

(declare-fun tp!659071 () Bool)

(assert (=> b!2136827 (= e!1364081 tp!659071)))

(declare-fun setIsEmpty!16003 () Bool)

(declare-fun setRes!16003 () Bool)

(assert (=> setIsEmpty!16003 setRes!16003))

(declare-fun b!2136828 () Bool)

(declare-fun e!1364079 () Bool)

(declare-fun tp!659070 () Bool)

(assert (=> b!2136828 (= e!1364079 tp!659070)))

(declare-fun e!1364080 () Bool)

(assert (=> b!2136614 (= tp!658964 e!1364080)))

(declare-fun b!2136829 () Bool)

(declare-fun tp!659069 () Bool)

(declare-fun tp!659068 () Bool)

(assert (=> b!2136829 (= e!1364080 (and tp!659068 (inv!31867 (_2!14126 (_1!14127 (h!29602 mapDefault!12882)))) e!1364081 tp_is_empty!9503 setRes!16003 tp!659069))))

(declare-fun condSetEmpty!16003 () Bool)

(assert (=> b!2136829 (= condSetEmpty!16003 (= (_2!14127 (h!29602 mapDefault!12882)) ((as const (Array Context!2646 Bool)) false)))))

(declare-fun setElem!16003 () Context!2646)

(declare-fun tp!659072 () Bool)

(declare-fun setNonEmpty!16003 () Bool)

(assert (=> setNonEmpty!16003 (= setRes!16003 (and tp!659072 (inv!31867 setElem!16003) e!1364079))))

(declare-fun setRest!16003 () (InoxSet Context!2646))

(assert (=> setNonEmpty!16003 (= (_2!14127 (h!29602 mapDefault!12882)) ((_ map or) (store ((as const (Array Context!2646 Bool)) false) setElem!16003 true) setRest!16003))))

(assert (= b!2136829 b!2136827))

(assert (= (and b!2136829 condSetEmpty!16003) setIsEmpty!16003))

(assert (= (and b!2136829 (not condSetEmpty!16003)) setNonEmpty!16003))

(assert (= setNonEmpty!16003 b!2136828))

(assert (= (and b!2136614 ((_ is Cons!24201) mapDefault!12882)) b!2136829))

(declare-fun m!2584072 () Bool)

(assert (=> b!2136829 m!2584072))

(declare-fun m!2584074 () Bool)

(assert (=> setNonEmpty!16003 m!2584074))

(declare-fun setIsEmpty!16008 () Bool)

(declare-fun setRes!16008 () Bool)

(assert (=> setIsEmpty!16008 setRes!16008))

(declare-fun condMapEmpty!12885 () Bool)

(declare-fun mapDefault!12885 () List!24286)

(assert (=> mapNonEmpty!12880 (= condMapEmpty!12885 (= mapRest!12882 ((as const (Array (_ BitVec 32) List!24286)) mapDefault!12885)))))

(declare-fun e!1364098 () Bool)

(declare-fun mapRes!12885 () Bool)

(assert (=> mapNonEmpty!12880 (= tp!658985 (and e!1364098 mapRes!12885))))

(declare-fun e!1364097 () Bool)

(declare-fun setRes!16009 () Bool)

(declare-fun tp!659092 () Bool)

(declare-fun b!2136844 () Bool)

(declare-fun mapValue!12885 () List!24286)

(declare-fun e!1364096 () Bool)

(assert (=> b!2136844 (= e!1364097 (and (inv!31867 (_1!14128 (_1!14129 (h!29603 mapValue!12885)))) e!1364096 tp_is_empty!9503 setRes!16009 tp!659092))))

(declare-fun condSetEmpty!16008 () Bool)

(assert (=> b!2136844 (= condSetEmpty!16008 (= (_2!14129 (h!29603 mapValue!12885)) ((as const (Array Context!2646 Bool)) false)))))

(declare-fun setNonEmpty!16008 () Bool)

(declare-fun e!1364094 () Bool)

(declare-fun tp!659099 () Bool)

(declare-fun setElem!16008 () Context!2646)

(assert (=> setNonEmpty!16008 (= setRes!16008 (and tp!659099 (inv!31867 setElem!16008) e!1364094))))

(declare-fun setRest!16009 () (InoxSet Context!2646))

(assert (=> setNonEmpty!16008 (= (_2!14129 (h!29603 mapDefault!12885)) ((_ map or) (store ((as const (Array Context!2646 Bool)) false) setElem!16008 true) setRest!16009))))

(declare-fun mapIsEmpty!12885 () Bool)

(assert (=> mapIsEmpty!12885 mapRes!12885))

(declare-fun mapNonEmpty!12885 () Bool)

(declare-fun tp!659095 () Bool)

(assert (=> mapNonEmpty!12885 (= mapRes!12885 (and tp!659095 e!1364097))))

(declare-fun mapKey!12885 () (_ BitVec 32))

(declare-fun mapRest!12885 () (Array (_ BitVec 32) List!24286))

(assert (=> mapNonEmpty!12885 (= mapRest!12882 (store mapRest!12885 mapKey!12885 mapValue!12885))))

(declare-fun e!1364095 () Bool)

(declare-fun setElem!16009 () Context!2646)

(declare-fun tp!659093 () Bool)

(declare-fun setNonEmpty!16009 () Bool)

(assert (=> setNonEmpty!16009 (= setRes!16009 (and tp!659093 (inv!31867 setElem!16009) e!1364095))))

(declare-fun setRest!16008 () (InoxSet Context!2646))

(assert (=> setNonEmpty!16009 (= (_2!14129 (h!29603 mapValue!12885)) ((_ map or) (store ((as const (Array Context!2646 Bool)) false) setElem!16009 true) setRest!16008))))

(declare-fun setIsEmpty!16009 () Bool)

(assert (=> setIsEmpty!16009 setRes!16009))

(declare-fun b!2136845 () Bool)

(declare-fun tp!659096 () Bool)

(assert (=> b!2136845 (= e!1364095 tp!659096)))

(declare-fun b!2136846 () Bool)

(declare-fun tp!659094 () Bool)

(assert (=> b!2136846 (= e!1364094 tp!659094)))

(declare-fun b!2136847 () Bool)

(declare-fun e!1364099 () Bool)

(declare-fun tp!659091 () Bool)

(assert (=> b!2136847 (= e!1364098 (and (inv!31867 (_1!14128 (_1!14129 (h!29603 mapDefault!12885)))) e!1364099 tp_is_empty!9503 setRes!16008 tp!659091))))

(declare-fun condSetEmpty!16009 () Bool)

(assert (=> b!2136847 (= condSetEmpty!16009 (= (_2!14129 (h!29603 mapDefault!12885)) ((as const (Array Context!2646 Bool)) false)))))

(declare-fun b!2136848 () Bool)

(declare-fun tp!659097 () Bool)

(assert (=> b!2136848 (= e!1364099 tp!659097)))

(declare-fun b!2136849 () Bool)

(declare-fun tp!659098 () Bool)

(assert (=> b!2136849 (= e!1364096 tp!659098)))

(assert (= (and mapNonEmpty!12880 condMapEmpty!12885) mapIsEmpty!12885))

(assert (= (and mapNonEmpty!12880 (not condMapEmpty!12885)) mapNonEmpty!12885))

(assert (= b!2136844 b!2136849))

(assert (= (and b!2136844 condSetEmpty!16008) setIsEmpty!16009))

(assert (= (and b!2136844 (not condSetEmpty!16008)) setNonEmpty!16009))

(assert (= setNonEmpty!16009 b!2136845))

(assert (= (and mapNonEmpty!12885 ((_ is Cons!24202) mapValue!12885)) b!2136844))

(assert (= b!2136847 b!2136848))

(assert (= (and b!2136847 condSetEmpty!16009) setIsEmpty!16008))

(assert (= (and b!2136847 (not condSetEmpty!16009)) setNonEmpty!16008))

(assert (= setNonEmpty!16008 b!2136846))

(assert (= (and mapNonEmpty!12880 ((_ is Cons!24202) mapDefault!12885)) b!2136847))

(declare-fun m!2584076 () Bool)

(assert (=> b!2136847 m!2584076))

(declare-fun m!2584078 () Bool)

(assert (=> setNonEmpty!16009 m!2584078))

(declare-fun m!2584080 () Bool)

(assert (=> setNonEmpty!16008 m!2584080))

(declare-fun m!2584082 () Bool)

(assert (=> b!2136844 m!2584082))

(declare-fun m!2584084 () Bool)

(assert (=> mapNonEmpty!12885 m!2584084))

(declare-fun e!1364101 () Bool)

(declare-fun setRes!16010 () Bool)

(declare-fun tp!659101 () Bool)

(declare-fun setNonEmpty!16010 () Bool)

(declare-fun setElem!16010 () Context!2646)

(assert (=> setNonEmpty!16010 (= setRes!16010 (and tp!659101 (inv!31867 setElem!16010) e!1364101))))

(declare-fun setRest!16010 () (InoxSet Context!2646))

(assert (=> setNonEmpty!16010 (= (_2!14129 (h!29603 mapValue!12882)) ((_ map or) (store ((as const (Array Context!2646 Bool)) false) setElem!16010 true) setRest!16010))))

(declare-fun setIsEmpty!16010 () Bool)

(assert (=> setIsEmpty!16010 setRes!16010))

(declare-fun b!2136851 () Bool)

(declare-fun e!1364100 () Bool)

(declare-fun tp!659103 () Bool)

(assert (=> b!2136851 (= e!1364100 tp!659103)))

(declare-fun b!2136852 () Bool)

(declare-fun tp!659102 () Bool)

(assert (=> b!2136852 (= e!1364101 tp!659102)))

(declare-fun e!1364102 () Bool)

(assert (=> mapNonEmpty!12880 (= tp!658975 e!1364102)))

(declare-fun tp!659100 () Bool)

(declare-fun b!2136850 () Bool)

(assert (=> b!2136850 (= e!1364102 (and (inv!31867 (_1!14128 (_1!14129 (h!29603 mapValue!12882)))) e!1364100 tp_is_empty!9503 setRes!16010 tp!659100))))

(declare-fun condSetEmpty!16010 () Bool)

(assert (=> b!2136850 (= condSetEmpty!16010 (= (_2!14129 (h!29603 mapValue!12882)) ((as const (Array Context!2646 Bool)) false)))))

(assert (= b!2136850 b!2136851))

(assert (= (and b!2136850 condSetEmpty!16010) setIsEmpty!16010))

(assert (= (and b!2136850 (not condSetEmpty!16010)) setNonEmpty!16010))

(assert (= setNonEmpty!16010 b!2136852))

(assert (= (and mapNonEmpty!12880 ((_ is Cons!24202) mapValue!12882)) b!2136850))

(declare-fun m!2584086 () Bool)

(assert (=> setNonEmpty!16010 m!2584086))

(declare-fun m!2584088 () Bool)

(assert (=> b!2136850 m!2584088))

(declare-fun b!2136853 () Bool)

(declare-fun e!1364103 () Bool)

(declare-fun tp!659104 () Bool)

(declare-fun tp!659105 () Bool)

(assert (=> b!2136853 (= e!1364103 (and tp!659104 tp!659105))))

(assert (=> b!2136640 (= tp!658970 e!1364103)))

(assert (= (and b!2136640 ((_ is Cons!24198) (exprs!1823 setElem!15985))) b!2136853))

(declare-fun b!2136864 () Bool)

(declare-fun e!1364115 () Bool)

(declare-fun tp!659124 () Bool)

(assert (=> b!2136864 (= e!1364115 tp!659124)))

(declare-fun mapIsEmpty!12888 () Bool)

(declare-fun mapRes!12888 () Bool)

(assert (=> mapIsEmpty!12888 mapRes!12888))

(declare-fun b!2136865 () Bool)

(declare-fun e!1364113 () Bool)

(declare-fun setRes!16015 () Bool)

(declare-fun tp!659126 () Bool)

(assert (=> b!2136865 (= e!1364113 (and setRes!16015 tp!659126))))

(declare-fun condSetEmpty!16015 () Bool)

(declare-fun mapValue!12888 () List!24283)

(assert (=> b!2136865 (= condSetEmpty!16015 (= (_1!14124 (_1!14125 (h!29600 mapValue!12888))) ((as const (Array Context!2646 Bool)) false)))))

(declare-fun b!2136866 () Bool)

(declare-fun e!1364112 () Bool)

(declare-fun setRes!16016 () Bool)

(declare-fun tp!659121 () Bool)

(assert (=> b!2136866 (= e!1364112 (and setRes!16016 tp!659121))))

(declare-fun condSetEmpty!16016 () Bool)

(declare-fun mapDefault!12888 () List!24283)

(assert (=> b!2136866 (= condSetEmpty!16016 (= (_1!14124 (_1!14125 (h!29600 mapDefault!12888))) ((as const (Array Context!2646 Bool)) false)))))

(declare-fun setIsEmpty!16015 () Bool)

(assert (=> setIsEmpty!16015 setRes!16015))

(declare-fun setElem!16016 () Context!2646)

(declare-fun setNonEmpty!16015 () Bool)

(declare-fun tp!659122 () Bool)

(declare-fun e!1364114 () Bool)

(assert (=> setNonEmpty!16015 (= setRes!16016 (and tp!659122 (inv!31867 setElem!16016) e!1364114))))

(declare-fun setRest!16016 () (InoxSet Context!2646))

(assert (=> setNonEmpty!16015 (= (_1!14124 (_1!14125 (h!29600 mapDefault!12888))) ((_ map or) (store ((as const (Array Context!2646 Bool)) false) setElem!16016 true) setRest!16016))))

(declare-fun setNonEmpty!16016 () Bool)

(declare-fun tp!659123 () Bool)

(declare-fun setElem!16015 () Context!2646)

(assert (=> setNonEmpty!16016 (= setRes!16015 (and tp!659123 (inv!31867 setElem!16015) e!1364115))))

(declare-fun setRest!16015 () (InoxSet Context!2646))

(assert (=> setNonEmpty!16016 (= (_1!14124 (_1!14125 (h!29600 mapValue!12888))) ((_ map or) (store ((as const (Array Context!2646 Bool)) false) setElem!16015 true) setRest!16015))))

(declare-fun mapNonEmpty!12888 () Bool)

(declare-fun tp!659120 () Bool)

(assert (=> mapNonEmpty!12888 (= mapRes!12888 (and tp!659120 e!1364113))))

(declare-fun mapKey!12888 () (_ BitVec 32))

(declare-fun mapRest!12888 () (Array (_ BitVec 32) List!24283))

(assert (=> mapNonEmpty!12888 (= mapRest!12880 (store mapRest!12888 mapKey!12888 mapValue!12888))))

(declare-fun condMapEmpty!12888 () Bool)

(assert (=> mapNonEmpty!12881 (= condMapEmpty!12888 (= mapRest!12880 ((as const (Array (_ BitVec 32) List!24283)) mapDefault!12888)))))

(assert (=> mapNonEmpty!12881 (= tp!658978 (and e!1364112 mapRes!12888))))

(declare-fun setIsEmpty!16016 () Bool)

(assert (=> setIsEmpty!16016 setRes!16016))

(declare-fun b!2136867 () Bool)

(declare-fun tp!659125 () Bool)

(assert (=> b!2136867 (= e!1364114 tp!659125)))

(assert (= (and mapNonEmpty!12881 condMapEmpty!12888) mapIsEmpty!12888))

(assert (= (and mapNonEmpty!12881 (not condMapEmpty!12888)) mapNonEmpty!12888))

(assert (= (and b!2136865 condSetEmpty!16015) setIsEmpty!16015))

(assert (= (and b!2136865 (not condSetEmpty!16015)) setNonEmpty!16016))

(assert (= setNonEmpty!16016 b!2136864))

(assert (= (and mapNonEmpty!12888 ((_ is Cons!24199) mapValue!12888)) b!2136865))

(assert (= (and b!2136866 condSetEmpty!16016) setIsEmpty!16016))

(assert (= (and b!2136866 (not condSetEmpty!16016)) setNonEmpty!16015))

(assert (= setNonEmpty!16015 b!2136867))

(assert (= (and mapNonEmpty!12881 ((_ is Cons!24199) mapDefault!12888)) b!2136866))

(declare-fun m!2584090 () Bool)

(assert (=> setNonEmpty!16015 m!2584090))

(declare-fun m!2584092 () Bool)

(assert (=> setNonEmpty!16016 m!2584092))

(declare-fun m!2584094 () Bool)

(assert (=> mapNonEmpty!12888 m!2584094))

(declare-fun setIsEmpty!16017 () Bool)

(declare-fun setRes!16017 () Bool)

(assert (=> setIsEmpty!16017 setRes!16017))

(declare-fun b!2136869 () Bool)

(declare-fun e!1364116 () Bool)

(declare-fun tp!659127 () Bool)

(assert (=> b!2136869 (= e!1364116 tp!659127)))

(declare-fun e!1364117 () Bool)

(assert (=> mapNonEmpty!12881 (= tp!658966 e!1364117)))

(declare-fun b!2136868 () Bool)

(declare-fun tp!659128 () Bool)

(assert (=> b!2136868 (= e!1364117 (and setRes!16017 tp!659128))))

(declare-fun condSetEmpty!16017 () Bool)

(assert (=> b!2136868 (= condSetEmpty!16017 (= (_1!14124 (_1!14125 (h!29600 mapValue!12880))) ((as const (Array Context!2646 Bool)) false)))))

(declare-fun setNonEmpty!16017 () Bool)

(declare-fun setElem!16017 () Context!2646)

(declare-fun tp!659129 () Bool)

(assert (=> setNonEmpty!16017 (= setRes!16017 (and tp!659129 (inv!31867 setElem!16017) e!1364116))))

(declare-fun setRest!16017 () (InoxSet Context!2646))

(assert (=> setNonEmpty!16017 (= (_1!14124 (_1!14125 (h!29600 mapValue!12880))) ((_ map or) (store ((as const (Array Context!2646 Bool)) false) setElem!16017 true) setRest!16017))))

(assert (= (and b!2136868 condSetEmpty!16017) setIsEmpty!16017))

(assert (= (and b!2136868 (not condSetEmpty!16017)) setNonEmpty!16017))

(assert (= setNonEmpty!16017 b!2136869))

(assert (= (and mapNonEmpty!12881 ((_ is Cons!24199) mapValue!12880)) b!2136868))

(declare-fun m!2584096 () Bool)

(assert (=> setNonEmpty!16017 m!2584096))

(declare-fun setRes!16018 () Bool)

(declare-fun setNonEmpty!16018 () Bool)

(declare-fun setElem!16018 () Context!2646)

(declare-fun e!1364119 () Bool)

(declare-fun tp!659131 () Bool)

(assert (=> setNonEmpty!16018 (= setRes!16018 (and tp!659131 (inv!31867 setElem!16018) e!1364119))))

(declare-fun setRest!16018 () (InoxSet Context!2646))

(assert (=> setNonEmpty!16018 (= (_2!14129 (h!29603 mapDefault!12880)) ((_ map or) (store ((as const (Array Context!2646 Bool)) false) setElem!16018 true) setRest!16018))))

(declare-fun setIsEmpty!16018 () Bool)

(assert (=> setIsEmpty!16018 setRes!16018))

(declare-fun b!2136871 () Bool)

(declare-fun e!1364118 () Bool)

(declare-fun tp!659133 () Bool)

(assert (=> b!2136871 (= e!1364118 tp!659133)))

(declare-fun b!2136872 () Bool)

(declare-fun tp!659132 () Bool)

(assert (=> b!2136872 (= e!1364119 tp!659132)))

(declare-fun e!1364120 () Bool)

(assert (=> b!2136650 (= tp!658963 e!1364120)))

(declare-fun tp!659130 () Bool)

(declare-fun b!2136870 () Bool)

(assert (=> b!2136870 (= e!1364120 (and (inv!31867 (_1!14128 (_1!14129 (h!29603 mapDefault!12880)))) e!1364118 tp_is_empty!9503 setRes!16018 tp!659130))))

(declare-fun condSetEmpty!16018 () Bool)

(assert (=> b!2136870 (= condSetEmpty!16018 (= (_2!14129 (h!29603 mapDefault!12880)) ((as const (Array Context!2646 Bool)) false)))))

(assert (= b!2136870 b!2136871))

(assert (= (and b!2136870 condSetEmpty!16018) setIsEmpty!16018))

(assert (= (and b!2136870 (not condSetEmpty!16018)) setNonEmpty!16018))

(assert (= setNonEmpty!16018 b!2136872))

(assert (= (and b!2136650 ((_ is Cons!24202) mapDefault!12880)) b!2136870))

(declare-fun m!2584098 () Bool)

(assert (=> setNonEmpty!16018 m!2584098))

(declare-fun m!2584100 () Bool)

(assert (=> b!2136870 m!2584100))

(declare-fun b!2136873 () Bool)

(declare-fun e!1364123 () Bool)

(declare-fun tp!659137 () Bool)

(assert (=> b!2136873 (= e!1364123 tp!659137)))

(declare-fun setIsEmpty!16019 () Bool)

(declare-fun setRes!16019 () Bool)

(assert (=> setIsEmpty!16019 setRes!16019))

(declare-fun b!2136874 () Bool)

(declare-fun e!1364121 () Bool)

(declare-fun tp!659136 () Bool)

(assert (=> b!2136874 (= e!1364121 tp!659136)))

(declare-fun e!1364122 () Bool)

(assert (=> b!2136623 (= tp!658971 e!1364122)))

(declare-fun tp!659135 () Bool)

(declare-fun tp!659134 () Bool)

(declare-fun b!2136875 () Bool)

(assert (=> b!2136875 (= e!1364122 (and tp!659134 (inv!31867 (_2!14126 (_1!14127 (h!29602 (zeroValue!2954 (v!28773 (underlying!5587 (v!28774 (underlying!5588 (cache!2991 cacheDown!1098)))))))))) e!1364123 tp_is_empty!9503 setRes!16019 tp!659135))))

(declare-fun condSetEmpty!16019 () Bool)

(assert (=> b!2136875 (= condSetEmpty!16019 (= (_2!14127 (h!29602 (zeroValue!2954 (v!28773 (underlying!5587 (v!28774 (underlying!5588 (cache!2991 cacheDown!1098)))))))) ((as const (Array Context!2646 Bool)) false)))))

(declare-fun setElem!16019 () Context!2646)

(declare-fun setNonEmpty!16019 () Bool)

(declare-fun tp!659138 () Bool)

(assert (=> setNonEmpty!16019 (= setRes!16019 (and tp!659138 (inv!31867 setElem!16019) e!1364121))))

(declare-fun setRest!16019 () (InoxSet Context!2646))

(assert (=> setNonEmpty!16019 (= (_2!14127 (h!29602 (zeroValue!2954 (v!28773 (underlying!5587 (v!28774 (underlying!5588 (cache!2991 cacheDown!1098)))))))) ((_ map or) (store ((as const (Array Context!2646 Bool)) false) setElem!16019 true) setRest!16019))))

(assert (= b!2136875 b!2136873))

(assert (= (and b!2136875 condSetEmpty!16019) setIsEmpty!16019))

(assert (= (and b!2136875 (not condSetEmpty!16019)) setNonEmpty!16019))

(assert (= setNonEmpty!16019 b!2136874))

(assert (= (and b!2136623 ((_ is Cons!24201) (zeroValue!2954 (v!28773 (underlying!5587 (v!28774 (underlying!5588 (cache!2991 cacheDown!1098)))))))) b!2136875))

(declare-fun m!2584102 () Bool)

(assert (=> b!2136875 m!2584102))

(declare-fun m!2584104 () Bool)

(assert (=> setNonEmpty!16019 m!2584104))

(declare-fun b!2136876 () Bool)

(declare-fun e!1364126 () Bool)

(declare-fun tp!659142 () Bool)

(assert (=> b!2136876 (= e!1364126 tp!659142)))

(declare-fun setIsEmpty!16020 () Bool)

(declare-fun setRes!16020 () Bool)

(assert (=> setIsEmpty!16020 setRes!16020))

(declare-fun b!2136877 () Bool)

(declare-fun e!1364124 () Bool)

(declare-fun tp!659141 () Bool)

(assert (=> b!2136877 (= e!1364124 tp!659141)))

(declare-fun e!1364125 () Bool)

(assert (=> b!2136623 (= tp!658987 e!1364125)))

(declare-fun tp!659140 () Bool)

(declare-fun b!2136878 () Bool)

(declare-fun tp!659139 () Bool)

(assert (=> b!2136878 (= e!1364125 (and tp!659139 (inv!31867 (_2!14126 (_1!14127 (h!29602 (minValue!2954 (v!28773 (underlying!5587 (v!28774 (underlying!5588 (cache!2991 cacheDown!1098)))))))))) e!1364126 tp_is_empty!9503 setRes!16020 tp!659140))))

(declare-fun condSetEmpty!16020 () Bool)

(assert (=> b!2136878 (= condSetEmpty!16020 (= (_2!14127 (h!29602 (minValue!2954 (v!28773 (underlying!5587 (v!28774 (underlying!5588 (cache!2991 cacheDown!1098)))))))) ((as const (Array Context!2646 Bool)) false)))))

(declare-fun setElem!16020 () Context!2646)

(declare-fun setNonEmpty!16020 () Bool)

(declare-fun tp!659143 () Bool)

(assert (=> setNonEmpty!16020 (= setRes!16020 (and tp!659143 (inv!31867 setElem!16020) e!1364124))))

(declare-fun setRest!16020 () (InoxSet Context!2646))

(assert (=> setNonEmpty!16020 (= (_2!14127 (h!29602 (minValue!2954 (v!28773 (underlying!5587 (v!28774 (underlying!5588 (cache!2991 cacheDown!1098)))))))) ((_ map or) (store ((as const (Array Context!2646 Bool)) false) setElem!16020 true) setRest!16020))))

(assert (= b!2136878 b!2136876))

(assert (= (and b!2136878 condSetEmpty!16020) setIsEmpty!16020))

(assert (= (and b!2136878 (not condSetEmpty!16020)) setNonEmpty!16020))

(assert (= setNonEmpty!16020 b!2136877))

(assert (= (and b!2136623 ((_ is Cons!24201) (minValue!2954 (v!28773 (underlying!5587 (v!28774 (underlying!5588 (cache!2991 cacheDown!1098)))))))) b!2136878))

(declare-fun m!2584106 () Bool)

(assert (=> b!2136878 m!2584106))

(declare-fun m!2584108 () Bool)

(assert (=> setNonEmpty!16020 m!2584108))

(declare-fun condSetEmpty!16021 () Bool)

(assert (=> setNonEmpty!15985 (= condSetEmpty!16021 (= setRest!15984 ((as const (Array Context!2646 Bool)) false)))))

(declare-fun setRes!16021 () Bool)

(assert (=> setNonEmpty!15985 (= tp!658977 setRes!16021)))

(declare-fun setIsEmpty!16021 () Bool)

(assert (=> setIsEmpty!16021 setRes!16021))

(declare-fun e!1364127 () Bool)

(declare-fun setNonEmpty!16021 () Bool)

(declare-fun setElem!16021 () Context!2646)

(declare-fun tp!659145 () Bool)

(assert (=> setNonEmpty!16021 (= setRes!16021 (and tp!659145 (inv!31867 setElem!16021) e!1364127))))

(declare-fun setRest!16021 () (InoxSet Context!2646))

(assert (=> setNonEmpty!16021 (= setRest!15984 ((_ map or) (store ((as const (Array Context!2646 Bool)) false) setElem!16021 true) setRest!16021))))

(declare-fun b!2136879 () Bool)

(declare-fun tp!659144 () Bool)

(assert (=> b!2136879 (= e!1364127 tp!659144)))

(assert (= (and setNonEmpty!15985 condSetEmpty!16021) setIsEmpty!16021))

(assert (= (and setNonEmpty!15985 (not condSetEmpty!16021)) setNonEmpty!16021))

(assert (= setNonEmpty!16021 b!2136879))

(declare-fun m!2584110 () Bool)

(assert (=> setNonEmpty!16021 m!2584110))

(declare-fun tp!659148 () Bool)

(declare-fun e!1364128 () Bool)

(declare-fun b!2136880 () Bool)

(declare-fun tp!659147 () Bool)

(assert (=> b!2136880 (= e!1364128 (and (inv!31865 (left!18632 (c!340358 (totalInput!3079 (h!29604 stack!8))))) tp!659147 (inv!31865 (right!18962 (c!340358 (totalInput!3079 (h!29604 stack!8))))) tp!659148))))

(declare-fun b!2136882 () Bool)

(declare-fun e!1364129 () Bool)

(declare-fun tp!659146 () Bool)

(assert (=> b!2136882 (= e!1364129 tp!659146)))

(declare-fun b!2136881 () Bool)

(assert (=> b!2136881 (= e!1364128 (and (inv!31874 (xs!10833 (c!340358 (totalInput!3079 (h!29604 stack!8))))) e!1364129))))

(assert (=> b!2136624 (= tp!658974 (and (inv!31865 (c!340358 (totalInput!3079 (h!29604 stack!8)))) e!1364128))))

(assert (= (and b!2136624 ((_ is Node!7891) (c!340358 (totalInput!3079 (h!29604 stack!8))))) b!2136880))

(assert (= b!2136881 b!2136882))

(assert (= (and b!2136624 ((_ is Leaf!11535) (c!340358 (totalInput!3079 (h!29604 stack!8))))) b!2136881))

(declare-fun m!2584112 () Bool)

(assert (=> b!2136880 m!2584112))

(declare-fun m!2584114 () Bool)

(assert (=> b!2136880 m!2584114))

(declare-fun m!2584116 () Bool)

(assert (=> b!2136881 m!2584116))

(assert (=> b!2136624 m!2583892))

(declare-fun b!2136897 () Bool)

(declare-fun e!1364143 () Bool)

(declare-fun tp!659180 () Bool)

(assert (=> b!2136897 (= e!1364143 tp!659180)))

(declare-fun b!2136898 () Bool)

(declare-fun e!1364142 () Bool)

(declare-fun tp!659174 () Bool)

(assert (=> b!2136898 (= e!1364142 tp!659174)))

(declare-fun setIsEmpty!16026 () Bool)

(declare-fun setRes!16027 () Bool)

(assert (=> setIsEmpty!16026 setRes!16027))

(declare-fun b!2136900 () Bool)

(declare-fun e!1364144 () Bool)

(declare-fun tp!659175 () Bool)

(assert (=> b!2136900 (= e!1364144 tp!659175)))

(declare-fun tp!659176 () Bool)

(declare-fun e!1364147 () Bool)

(declare-fun tp!659171 () Bool)

(declare-fun b!2136901 () Bool)

(declare-fun mapValue!12891 () List!24285)

(declare-fun e!1364146 () Bool)

(assert (=> b!2136901 (= e!1364147 (and tp!659176 (inv!31867 (_2!14126 (_1!14127 (h!29602 mapValue!12891)))) e!1364146 tp_is_empty!9503 setRes!16027 tp!659171))))

(declare-fun condSetEmpty!16027 () Bool)

(assert (=> b!2136901 (= condSetEmpty!16027 (= (_2!14127 (h!29602 mapValue!12891)) ((as const (Array Context!2646 Bool)) false)))))

(declare-fun setElem!16027 () Context!2646)

(declare-fun tp!659172 () Bool)

(declare-fun setNonEmpty!16026 () Bool)

(assert (=> setNonEmpty!16026 (= setRes!16027 (and tp!659172 (inv!31867 setElem!16027) e!1364144))))

(declare-fun setRest!16026 () (InoxSet Context!2646))

(assert (=> setNonEmpty!16026 (= (_2!14127 (h!29602 mapValue!12891)) ((_ map or) (store ((as const (Array Context!2646 Bool)) false) setElem!16027 true) setRest!16026))))

(declare-fun mapNonEmpty!12891 () Bool)

(declare-fun mapRes!12891 () Bool)

(declare-fun tp!659179 () Bool)

(assert (=> mapNonEmpty!12891 (= mapRes!12891 (and tp!659179 e!1364147))))

(declare-fun mapKey!12891 () (_ BitVec 32))

(declare-fun mapRest!12891 () (Array (_ BitVec 32) List!24285))

(assert (=> mapNonEmpty!12891 (= mapRest!12881 (store mapRest!12891 mapKey!12891 mapValue!12891))))

(declare-fun b!2136902 () Bool)

(declare-fun mapDefault!12891 () List!24285)

(declare-fun e!1364145 () Bool)

(declare-fun setRes!16026 () Bool)

(declare-fun tp!659173 () Bool)

(declare-fun tp!659181 () Bool)

(assert (=> b!2136902 (= e!1364145 (and tp!659181 (inv!31867 (_2!14126 (_1!14127 (h!29602 mapDefault!12891)))) e!1364143 tp_is_empty!9503 setRes!16026 tp!659173))))

(declare-fun condSetEmpty!16026 () Bool)

(assert (=> b!2136902 (= condSetEmpty!16026 (= (_2!14127 (h!29602 mapDefault!12891)) ((as const (Array Context!2646 Bool)) false)))))

(declare-fun mapIsEmpty!12891 () Bool)

(assert (=> mapIsEmpty!12891 mapRes!12891))

(declare-fun setIsEmpty!16027 () Bool)

(assert (=> setIsEmpty!16027 setRes!16026))

(declare-fun setNonEmpty!16027 () Bool)

(declare-fun setElem!16026 () Context!2646)

(declare-fun tp!659178 () Bool)

(assert (=> setNonEmpty!16027 (= setRes!16026 (and tp!659178 (inv!31867 setElem!16026) e!1364142))))

(declare-fun setRest!16027 () (InoxSet Context!2646))

(assert (=> setNonEmpty!16027 (= (_2!14127 (h!29602 mapDefault!12891)) ((_ map or) (store ((as const (Array Context!2646 Bool)) false) setElem!16026 true) setRest!16027))))

(declare-fun condMapEmpty!12891 () Bool)

(assert (=> mapNonEmpty!12882 (= condMapEmpty!12891 (= mapRest!12881 ((as const (Array (_ BitVec 32) List!24285)) mapDefault!12891)))))

(assert (=> mapNonEmpty!12882 (= tp!658988 (and e!1364145 mapRes!12891))))

(declare-fun b!2136899 () Bool)

(declare-fun tp!659177 () Bool)

(assert (=> b!2136899 (= e!1364146 tp!659177)))

(assert (= (and mapNonEmpty!12882 condMapEmpty!12891) mapIsEmpty!12891))

(assert (= (and mapNonEmpty!12882 (not condMapEmpty!12891)) mapNonEmpty!12891))

(assert (= b!2136901 b!2136899))

(assert (= (and b!2136901 condSetEmpty!16027) setIsEmpty!16026))

(assert (= (and b!2136901 (not condSetEmpty!16027)) setNonEmpty!16026))

(assert (= setNonEmpty!16026 b!2136900))

(assert (= (and mapNonEmpty!12891 ((_ is Cons!24201) mapValue!12891)) b!2136901))

(assert (= b!2136902 b!2136897))

(assert (= (and b!2136902 condSetEmpty!16026) setIsEmpty!16027))

(assert (= (and b!2136902 (not condSetEmpty!16026)) setNonEmpty!16027))

(assert (= setNonEmpty!16027 b!2136898))

(assert (= (and mapNonEmpty!12882 ((_ is Cons!24201) mapDefault!12891)) b!2136902))

(declare-fun m!2584118 () Bool)

(assert (=> mapNonEmpty!12891 m!2584118))

(declare-fun m!2584120 () Bool)

(assert (=> setNonEmpty!16027 m!2584120))

(declare-fun m!2584122 () Bool)

(assert (=> setNonEmpty!16026 m!2584122))

(declare-fun m!2584124 () Bool)

(assert (=> b!2136902 m!2584124))

(declare-fun m!2584126 () Bool)

(assert (=> b!2136901 m!2584126))

(declare-fun b!2136903 () Bool)

(declare-fun e!1364150 () Bool)

(declare-fun tp!659185 () Bool)

(assert (=> b!2136903 (= e!1364150 tp!659185)))

(declare-fun setIsEmpty!16028 () Bool)

(declare-fun setRes!16028 () Bool)

(assert (=> setIsEmpty!16028 setRes!16028))

(declare-fun b!2136904 () Bool)

(declare-fun e!1364148 () Bool)

(declare-fun tp!659184 () Bool)

(assert (=> b!2136904 (= e!1364148 tp!659184)))

(declare-fun e!1364149 () Bool)

(assert (=> mapNonEmpty!12882 (= tp!658979 e!1364149)))

(declare-fun tp!659183 () Bool)

(declare-fun b!2136905 () Bool)

(declare-fun tp!659182 () Bool)

(assert (=> b!2136905 (= e!1364149 (and tp!659182 (inv!31867 (_2!14126 (_1!14127 (h!29602 mapValue!12881)))) e!1364150 tp_is_empty!9503 setRes!16028 tp!659183))))

(declare-fun condSetEmpty!16028 () Bool)

(assert (=> b!2136905 (= condSetEmpty!16028 (= (_2!14127 (h!29602 mapValue!12881)) ((as const (Array Context!2646 Bool)) false)))))

(declare-fun setNonEmpty!16028 () Bool)

(declare-fun setElem!16028 () Context!2646)

(declare-fun tp!659186 () Bool)

(assert (=> setNonEmpty!16028 (= setRes!16028 (and tp!659186 (inv!31867 setElem!16028) e!1364148))))

(declare-fun setRest!16028 () (InoxSet Context!2646))

(assert (=> setNonEmpty!16028 (= (_2!14127 (h!29602 mapValue!12881)) ((_ map or) (store ((as const (Array Context!2646 Bool)) false) setElem!16028 true) setRest!16028))))

(assert (= b!2136905 b!2136903))

(assert (= (and b!2136905 condSetEmpty!16028) setIsEmpty!16028))

(assert (= (and b!2136905 (not condSetEmpty!16028)) setNonEmpty!16028))

(assert (= setNonEmpty!16028 b!2136904))

(assert (= (and mapNonEmpty!12882 ((_ is Cons!24201) mapValue!12881)) b!2136905))

(declare-fun m!2584128 () Bool)

(assert (=> b!2136905 m!2584128))

(declare-fun m!2584130 () Bool)

(assert (=> setNonEmpty!16028 m!2584130))

(declare-fun b_lambda!70583 () Bool)

(assert (= b_lambda!70577 (or b!2136639 b_lambda!70583)))

(declare-fun bs!444381 () Bool)

(declare-fun d!644412 () Bool)

(assert (= bs!444381 (and d!644412 b!2136639)))

(assert (=> bs!444381 (= (dynLambda!11366 lambda!79629 (h!29604 lt!797397)) (= (res!923071 (h!29604 lt!797397)) lt!797405))))

(assert (=> b!2136720 d!644412))

(declare-fun b_lambda!70585 () Bool)

(assert (= b_lambda!70581 (or b!2136639 b_lambda!70585)))

(declare-fun bs!444382 () Bool)

(declare-fun d!644414 () Bool)

(assert (= bs!444382 (and d!644414 b!2136639)))

(assert (=> bs!444382 (= (dynLambda!11366 lambda!79629 (h!29604 stack!8)) (= (res!923071 (h!29604 stack!8)) lt!797405))))

(assert (=> b!2136750 d!644414))

(declare-fun b_lambda!70587 () Bool)

(assert (= b_lambda!70575 (or b!2136619 b_lambda!70587)))

(declare-fun bs!444383 () Bool)

(declare-fun d!644416 () Bool)

(assert (= bs!444383 (and d!644416 b!2136619)))

(assert (=> bs!444383 (= (dynLambda!11366 lambda!79628 (h!29604 stack!8)) (= (totalInput!3079 (h!29604 stack!8)) totalInput!851))))

(assert (=> b!2136694 d!644416))

(declare-fun b_lambda!70589 () Bool)

(assert (= b_lambda!70573 (or b!2136619 b_lambda!70589)))

(declare-fun bs!444384 () Bool)

(declare-fun d!644418 () Bool)

(assert (= bs!444384 (and d!644418 b!2136619)))

(assert (=> bs!444384 (= (dynLambda!11366 lambda!79628 (h!29604 lt!797397)) (= (totalInput!3079 (h!29604 lt!797397)) totalInput!851))))

(assert (=> b!2136683 d!644418))

(declare-fun b_lambda!70591 () Bool)

(assert (= b_lambda!70579 (or b!2136644 b_lambda!70591)))

(declare-fun bs!444385 () Bool)

(declare-fun d!644420 () Bool)

(assert (= bs!444385 (and d!644420 b!2136644)))

(assert (=> bs!444385 (= (dynLambda!11366 lambda!79627 (h!29604 stack!8)) (= (res!923071 (h!29604 stack!8)) lt!797400))))

(assert (=> b!2136731 d!644420))

(check-sat (not b!2136901) (not b!2136624) (not b!2136684) (not b!2136751) (not b!2136778) (not b!2136813) (not b!2136794) (not b!2136866) (not b_lambda!70585) (not setNonEmpty!16009) (not b!2136903) (not b!2136765) (not b!2136727) (not d!644340) (not setNonEmpty!16010) (not b!2136740) (not b!2136796) (not bm!128784) (not b!2136849) (not b!2136865) (not b!2136793) (not b!2136809) (not d!644366) (not b_lambda!70589) (not b!2136691) b_and!172277 (not b!2136844) (not d!644382) b_and!172281 (not setNonEmpty!16003) (not setNonEmpty!16008) (not b!2136743) (not b!2136897) (not bm!128783) (not b!2136797) (not b!2136871) (not b!2136870) (not setNonEmpty!16019) (not setNonEmpty!16028) (not b!2136677) (not b_lambda!70587) (not mapNonEmpty!12891) (not b!2136708) (not b!2136749) (not d!644342) (not setNonEmpty!16020) (not setNonEmpty!15999) (not b!2136715) (not b!2136735) (not b!2136777) (not b!2136881) (not b!2136728) (not d!644398) (not setNonEmpty!15988) (not b!2136752) (not b_next!63407) (not b_next!63399) (not setNonEmpty!16015) (not b!2136876) (not b!2136898) (not d!644354) (not b!2136674) (not setNonEmpty!16000) (not b!2136848) (not b!2136875) (not b!2136812) (not b!2136902) (not b_next!63397) (not b!2136850) (not b_lambda!70583) (not d!644370) (not b!2136878) (not d!644338) (not d!644404) (not b!2136791) (not b!2136695) (not setNonEmpty!16027) (not b!2136798) (not d!644394) (not setNonEmpty!15991) (not b!2136867) (not b!2136900) (not b!2136852) (not b!2136764) (not b!2136799) (not b!2136818) (not b!2136716) (not b!2136795) b_and!172275 (not b_next!63403) (not b!2136734) (not b!2136746) (not setNonEmpty!16021) (not b!2136610) (not b!2136877) (not b!2136827) (not d!644360) (not setNonEmpty!16017) (not b!2136845) (not b!2136882) (not d!644400) (not b!2136869) (not b!2136808) (not setNonEmpty!16016) (not b!2136851) (not b!2136776) (not b!2136868) (not d!644368) (not b!2136828) (not mapNonEmpty!12885) (not b!2136904) (not b!2136721) (not b!2136829) b_and!172273 (not b!2136853) (not b!2136707) (not b!2136726) (not b!2136874) (not b!2136905) (not b_next!63401) (not setNonEmpty!16018) b_and!172279 (not b!2136811) (not d!644374) (not setNonEmpty!15994) (not b!2136880) (not mapNonEmpty!12888) (not d!644362) (not b_lambda!70591) (not b!2136730) (not setNonEmpty!15995) (not b!2136637) (not b!2136810) (not b!2136754) (not d!644372) b_and!172283 (not d!644396) (not b!2136873) (not setNonEmpty!16026) (not b!2136676) (not b_next!63405) (not b!2136899) (not b!2136879) (not b!2136693) (not b!2136732) (not b!2136719) (not b!2136763) (not b!2136779) (not b!2136872) tp_is_empty!9503 (not b!2136846) (not b!2136864) (not d!644358) (not b!2136675) (not b!2136784) (not b!2136847) (not b!2136792) (not setNonEmpty!15996))
(check-sat (not b_next!63397) b_and!172279 b_and!172283 (not b_next!63405) b_and!172277 b_and!172281 (not b_next!63407) (not b_next!63399) b_and!172275 (not b_next!63403) b_and!172273 (not b_next!63401))
