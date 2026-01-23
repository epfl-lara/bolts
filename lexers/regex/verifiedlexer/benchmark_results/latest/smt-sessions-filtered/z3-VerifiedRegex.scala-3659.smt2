; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208048 () Bool)

(assert start!208048)

(declare-fun b!2143131 () Bool)

(declare-fun b_free!63077 () Bool)

(declare-fun b_next!63781 () Bool)

(assert (=> b!2143131 (= b_free!63077 (not b_next!63781))))

(declare-fun tp!663611 () Bool)

(declare-fun b_and!172657 () Bool)

(assert (=> b!2143131 (= tp!663611 b_and!172657)))

(declare-fun b!2143146 () Bool)

(declare-fun b_free!63079 () Bool)

(declare-fun b_next!63783 () Bool)

(assert (=> b!2143146 (= b_free!63079 (not b_next!63783))))

(declare-fun tp!663629 () Bool)

(declare-fun b_and!172659 () Bool)

(assert (=> b!2143146 (= tp!663629 b_and!172659)))

(declare-fun b!2143136 () Bool)

(declare-fun b_free!63081 () Bool)

(declare-fun b_next!63785 () Bool)

(assert (=> b!2143136 (= b_free!63081 (not b_next!63785))))

(declare-fun tp!663624 () Bool)

(declare-fun b_and!172661 () Bool)

(assert (=> b!2143136 (= tp!663624 b_and!172661)))

(declare-fun b!2143133 () Bool)

(declare-fun b_free!63083 () Bool)

(declare-fun b_next!63787 () Bool)

(assert (=> b!2143133 (= b_free!63083 (not b_next!63787))))

(declare-fun tp!663623 () Bool)

(declare-fun b_and!172663 () Bool)

(assert (=> b!2143133 (= tp!663623 b_and!172663)))

(declare-fun b!2143120 () Bool)

(declare-fun b_free!63085 () Bool)

(declare-fun b_next!63789 () Bool)

(assert (=> b!2143120 (= b_free!63085 (not b_next!63789))))

(declare-fun tp!663617 () Bool)

(declare-fun b_and!172665 () Bool)

(assert (=> b!2143120 (= tp!663617 b_and!172665)))

(declare-fun b!2143127 () Bool)

(declare-fun b_free!63087 () Bool)

(declare-fun b_next!63791 () Bool)

(assert (=> b!2143127 (= b_free!63087 (not b_next!63791))))

(declare-fun tp!663614 () Bool)

(declare-fun b_and!172667 () Bool)

(assert (=> b!2143127 (= tp!663614 b_and!172667)))

(declare-fun b!2143123 () Bool)

(assert (=> b!2143123 true))

(declare-fun bs!445290 () Bool)

(declare-fun b!2143105 () Bool)

(assert (= bs!445290 (and b!2143105 b!2143123)))

(declare-fun lambda!80282 () Int)

(declare-fun lambda!80281 () Int)

(assert (=> bs!445290 (not (= lambda!80282 lambda!80281))))

(assert (=> b!2143105 true))

(declare-fun res!925024 () Bool)

(declare-fun e!1369217 () Bool)

(assert (=> b!2143105 (=> (not res!925024) (not e!1369217))))

(declare-datatypes ((C!11716 0))(
  ( (C!11717 (val!6844 Int)) )
))
(declare-datatypes ((Regex!5785 0))(
  ( (ElementMatch!5785 (c!340654 C!11716)) (Concat!10087 (regOne!12082 Regex!5785) (regTwo!12082 Regex!5785)) (EmptyExpr!5785) (Star!5785 (reg!6114 Regex!5785)) (EmptyLang!5785) (Union!5785 (regOne!12083 Regex!5785) (regTwo!12083 Regex!5785)) )
))
(declare-datatypes ((List!24463 0))(
  ( (Nil!24379) (Cons!24379 (h!29780 Regex!5785) (t!196993 List!24463)) )
))
(declare-datatypes ((Context!2710 0))(
  ( (Context!2711 (exprs!1855 List!24463)) )
))
(declare-datatypes ((List!24464 0))(
  ( (Nil!24380) (Cons!24380 (h!29781 C!11716) (t!196994 List!24464)) )
))
(declare-datatypes ((IArray!15849 0))(
  ( (IArray!15850 (innerList!7982 List!24464)) )
))
(declare-datatypes ((Conc!7922 0))(
  ( (Node!7922 (left!18743 Conc!7922) (right!19073 Conc!7922) (csize!16074 Int) (cheight!8133 Int)) (Leaf!11582 (xs!10864 IArray!15849) (csize!16075 Int)) (Empty!7922) )
))
(declare-datatypes ((BalanceConc!15606 0))(
  ( (BalanceConc!15607 (c!340655 Conc!7922)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((StackFrame!244 0))(
  ( (StackFrame!245 (z!5886 (InoxSet Context!2710)) (from!2753 Int) (lastNullablePos!440 Int) (res!925028 Int) (totalInput!3144 BalanceConc!15606)) )
))
(declare-datatypes ((List!24465 0))(
  ( (Nil!24381) (Cons!24381 (h!29782 StackFrame!244) (t!196995 List!24465)) )
))
(declare-fun stack!8 () List!24465)

(declare-fun forall!4981 (List!24465 Int) Bool)

(assert (=> b!2143105 (= res!925024 (forall!4981 stack!8 lambda!80282))))

(declare-fun b!2143106 () Bool)

(declare-fun res!925027 () Bool)

(declare-fun e!1369212 () Bool)

(assert (=> b!2143106 (=> (not res!925027) (not e!1369212))))

(declare-datatypes ((tuple3!3456 0))(
  ( (tuple3!3457 (_1!14310 Regex!5785) (_2!14310 Context!2710) (_3!2198 C!11716)) )
))
(declare-datatypes ((tuple2!24224 0))(
  ( (tuple2!24225 (_1!14311 tuple3!3456) (_2!14311 (InoxSet Context!2710))) )
))
(declare-datatypes ((List!24466 0))(
  ( (Nil!24382) (Cons!24382 (h!29783 tuple2!24224) (t!196996 List!24466)) )
))
(declare-datatypes ((Hashable!2694 0))(
  ( (HashableExt!2693 (__x!16516 Int)) )
))
(declare-datatypes ((array!9381 0))(
  ( (array!9382 (arr!4186 (Array (_ BitVec 32) (_ BitVec 64))) (size!19082 (_ BitVec 32))) )
))
(declare-datatypes ((array!9383 0))(
  ( (array!9384 (arr!4187 (Array (_ BitVec 32) List!24466)) (size!19083 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5560 0))(
  ( (LongMapFixedSize!5561 (defaultEntry!3145 Int) (mask!6988 (_ BitVec 32)) (extraKeys!3028 (_ BitVec 32)) (zeroValue!3038 List!24466) (minValue!3038 List!24466) (_size!5611 (_ BitVec 32)) (_keys!3077 array!9381) (_values!3060 array!9383) (_vacant!2841 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10945 0))(
  ( (Cell!10946 (v!28966 LongMapFixedSize!5560)) )
))
(declare-datatypes ((MutLongMap!2780 0))(
  ( (LongMap!2780 (underlying!5755 Cell!10945)) (MutLongMapExt!2779 (__x!16517 Int)) )
))
(declare-datatypes ((Cell!10947 0))(
  ( (Cell!10948 (v!28967 MutLongMap!2780)) )
))
(declare-datatypes ((MutableMap!2694 0))(
  ( (MutableMapExt!2693 (__x!16518 Int)) (HashMap!2694 (underlying!5756 Cell!10947) (hashF!4617 Hashable!2694) (_size!5612 (_ BitVec 32)) (defaultValue!2856 Int)) )
))
(declare-datatypes ((CacheDown!1844 0))(
  ( (CacheDown!1845 (cache!3075 MutableMap!2694)) )
))
(declare-fun cacheDown!1098 () CacheDown!1844)

(declare-fun valid!2170 (CacheDown!1844) Bool)

(assert (=> b!2143106 (= res!925027 (valid!2170 cacheDown!1098))))

(declare-fun b!2143107 () Bool)

(declare-fun e!1369234 () Bool)

(declare-fun e!1369221 () Bool)

(declare-datatypes ((tuple2!24226 0))(
  ( (tuple2!24227 (_1!14312 Context!2710) (_2!14312 C!11716)) )
))
(declare-datatypes ((tuple2!24228 0))(
  ( (tuple2!24229 (_1!14313 tuple2!24226) (_2!14313 (InoxSet Context!2710))) )
))
(declare-datatypes ((List!24467 0))(
  ( (Nil!24383) (Cons!24383 (h!29784 tuple2!24228) (t!196997 List!24467)) )
))
(declare-datatypes ((array!9385 0))(
  ( (array!9386 (arr!4188 (Array (_ BitVec 32) List!24467)) (size!19084 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5562 0))(
  ( (LongMapFixedSize!5563 (defaultEntry!3146 Int) (mask!6989 (_ BitVec 32)) (extraKeys!3029 (_ BitVec 32)) (zeroValue!3039 List!24467) (minValue!3039 List!24467) (_size!5613 (_ BitVec 32)) (_keys!3078 array!9381) (_values!3061 array!9385) (_vacant!2842 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10949 0))(
  ( (Cell!10950 (v!28968 LongMapFixedSize!5562)) )
))
(declare-datatypes ((MutLongMap!2781 0))(
  ( (LongMap!2781 (underlying!5757 Cell!10949)) (MutLongMapExt!2780 (__x!16519 Int)) )
))
(declare-fun lt!798440 () MutLongMap!2781)

(get-info :version)

(assert (=> b!2143107 (= e!1369234 (and e!1369221 ((_ is LongMap!2781) lt!798440)))))

(declare-datatypes ((Cell!10951 0))(
  ( (Cell!10952 (v!28969 MutLongMap!2781)) )
))
(declare-datatypes ((Hashable!2695 0))(
  ( (HashableExt!2694 (__x!16520 Int)) )
))
(declare-datatypes ((MutableMap!2695 0))(
  ( (MutableMapExt!2694 (__x!16521 Int)) (HashMap!2695 (underlying!5758 Cell!10951) (hashF!4618 Hashable!2695) (_size!5614 (_ BitVec 32)) (defaultValue!2857 Int)) )
))
(declare-datatypes ((CacheUp!1856 0))(
  ( (CacheUp!1857 (cache!3076 MutableMap!2695)) )
))
(declare-fun cacheUp!979 () CacheUp!1856)

(assert (=> b!2143107 (= lt!798440 (v!28969 (underlying!5758 (cache!3076 cacheUp!979))))))

(declare-fun mapNonEmpty!13243 () Bool)

(declare-fun mapRes!13245 () Bool)

(declare-fun tp!663613 () Bool)

(declare-fun tp!663621 () Bool)

(assert (=> mapNonEmpty!13243 (= mapRes!13245 (and tp!663613 tp!663621))))

(declare-fun mapRest!13243 () (Array (_ BitVec 32) List!24467))

(declare-fun mapValue!13243 () List!24467)

(declare-fun mapKey!13245 () (_ BitVec 32))

(assert (=> mapNonEmpty!13243 (= (arr!4188 (_values!3061 (v!28968 (underlying!5757 (v!28969 (underlying!5758 (cache!3076 cacheUp!979))))))) (store mapRest!13243 mapKey!13245 mapValue!13243))))

(declare-fun setRes!16567 () Bool)

(declare-fun setElem!16567 () Context!2710)

(declare-fun tp!663625 () Bool)

(declare-fun setNonEmpty!16566 () Bool)

(declare-fun e!1369231 () Bool)

(declare-fun inv!32090 (Context!2710) Bool)

(assert (=> setNonEmpty!16566 (= setRes!16567 (and tp!663625 (inv!32090 setElem!16567) e!1369231))))

(declare-fun z!3839 () (InoxSet Context!2710))

(declare-fun setRest!16567 () (InoxSet Context!2710))

(assert (=> setNonEmpty!16566 (= z!3839 ((_ map or) (store ((as const (Array Context!2710 Bool)) false) setElem!16567 true) setRest!16567))))

(declare-fun tp!663608 () Bool)

(declare-fun e!1369204 () Bool)

(declare-fun setElem!16566 () Context!2710)

(declare-fun setRes!16566 () Bool)

(declare-fun setNonEmpty!16567 () Bool)

(assert (=> setNonEmpty!16567 (= setRes!16566 (and tp!663608 (inv!32090 setElem!16566) e!1369204))))

(declare-fun setRest!16566 () (InoxSet Context!2710))

(assert (=> setNonEmpty!16567 (= (z!5886 (h!29782 stack!8)) ((_ map or) (store ((as const (Array Context!2710 Bool)) false) setElem!16566 true) setRest!16566))))

(declare-fun b!2143108 () Bool)

(declare-fun e!1369206 () Bool)

(declare-fun e!1369213 () Bool)

(assert (=> b!2143108 (= e!1369206 e!1369213)))

(declare-fun b!2143109 () Bool)

(declare-fun e!1369216 () Bool)

(assert (=> b!2143109 (= e!1369216 e!1369212)))

(declare-fun res!925023 () Bool)

(assert (=> b!2143109 (=> (not res!925023) (not e!1369212))))

(declare-fun lt!798438 () Int)

(declare-fun totalInputSize!296 () Int)

(declare-fun lastNullablePos!123 () Int)

(declare-fun from!1043 () Int)

(assert (=> b!2143109 (= res!925023 (and (= totalInputSize!296 lt!798438) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun totalInput!851 () BalanceConc!15606)

(declare-fun size!19085 (BalanceConc!15606) Int)

(assert (=> b!2143109 (= lt!798438 (size!19085 totalInput!851))))

(declare-datatypes ((tuple3!3458 0))(
  ( (tuple3!3459 (_1!14314 (InoxSet Context!2710)) (_2!14314 Int) (_3!2199 Int)) )
))
(declare-datatypes ((tuple2!24230 0))(
  ( (tuple2!24231 (_1!14315 tuple3!3458) (_2!14315 Int)) )
))
(declare-datatypes ((List!24468 0))(
  ( (Nil!24384) (Cons!24384 (h!29785 tuple2!24230) (t!196998 List!24468)) )
))
(declare-datatypes ((array!9387 0))(
  ( (array!9388 (arr!4189 (Array (_ BitVec 32) List!24468)) (size!19086 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5564 0))(
  ( (LongMapFixedSize!5565 (defaultEntry!3147 Int) (mask!6990 (_ BitVec 32)) (extraKeys!3030 (_ BitVec 32)) (zeroValue!3040 List!24468) (minValue!3040 List!24468) (_size!5615 (_ BitVec 32)) (_keys!3079 array!9381) (_values!3062 array!9387) (_vacant!2843 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10953 0))(
  ( (Cell!10954 (v!28970 LongMapFixedSize!5564)) )
))
(declare-datatypes ((MutLongMap!2782 0))(
  ( (LongMap!2782 (underlying!5759 Cell!10953)) (MutLongMapExt!2781 (__x!16522 Int)) )
))
(declare-datatypes ((Cell!10955 0))(
  ( (Cell!10956 (v!28971 MutLongMap!2782)) )
))
(declare-datatypes ((Hashable!2696 0))(
  ( (HashableExt!2695 (__x!16523 Int)) )
))
(declare-datatypes ((MutableMap!2696 0))(
  ( (MutableMapExt!2695 (__x!16524 Int)) (HashMap!2696 (underlying!5760 Cell!10955) (hashF!4619 Hashable!2696) (_size!5616 (_ BitVec 32)) (defaultValue!2858 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!812 0))(
  ( (CacheFurthestNullable!813 (cache!3077 MutableMap!2696) (totalInput!3145 BalanceConc!15606)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!812)

(declare-fun b!2143110 () Bool)

(declare-fun e!1369227 () Bool)

(declare-fun e!1369205 () Bool)

(declare-fun e!1369223 () Bool)

(declare-fun inv!32091 (BalanceConc!15606) Bool)

(assert (=> b!2143110 (= e!1369223 (and e!1369205 (inv!32091 (totalInput!3145 cacheFurthestNullable!114)) e!1369227))))

(declare-fun e!1369202 () Bool)

(declare-fun b!2143111 () Bool)

(declare-fun e!1369220 () Bool)

(declare-fun tp!663615 () Bool)

(declare-fun inv!32092 (StackFrame!244) Bool)

(assert (=> b!2143111 (= e!1369202 (and (inv!32092 (h!29782 stack!8)) e!1369220 tp!663615))))

(declare-fun b!2143112 () Bool)

(declare-fun res!925018 () Bool)

(declare-fun e!1369214 () Bool)

(assert (=> b!2143112 (=> res!925018 e!1369214)))

(declare-fun lt!798439 () Int)

(assert (=> b!2143112 (= res!925018 (not (= lt!798439 lastNullablePos!123)))))

(declare-fun b!2143113 () Bool)

(declare-fun e!1369230 () Bool)

(declare-fun e!1369229 () Bool)

(assert (=> b!2143113 (= e!1369230 e!1369229)))

(declare-fun b!2143114 () Bool)

(declare-fun e!1369236 () Bool)

(assert (=> b!2143114 (= e!1369229 e!1369236)))

(declare-fun b!2143115 () Bool)

(declare-fun e!1369225 () Bool)

(declare-fun tp!663631 () Bool)

(declare-fun mapRes!13244 () Bool)

(assert (=> b!2143115 (= e!1369225 (and tp!663631 mapRes!13244))))

(declare-fun condMapEmpty!13245 () Bool)

(declare-fun mapDefault!13245 () List!24468)

(assert (=> b!2143115 (= condMapEmpty!13245 (= (arr!4189 (_values!3062 (v!28970 (underlying!5759 (v!28971 (underlying!5760 (cache!3077 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!24468)) mapDefault!13245)))))

(declare-fun b!2143116 () Bool)

(declare-fun e!1369228 () Bool)

(assert (=> b!2143116 (= e!1369228 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun b!2143117 () Bool)

(declare-fun res!925021 () Bool)

(assert (=> b!2143117 (=> (not res!925021) (not e!1369212))))

(declare-fun valid!2171 (CacheUp!1856) Bool)

(assert (=> b!2143117 (= res!925021 (valid!2171 cacheUp!979))))

(declare-fun mapIsEmpty!13243 () Bool)

(assert (=> mapIsEmpty!13243 mapRes!13245))

(declare-fun b!2143118 () Bool)

(declare-fun tp!663610 () Bool)

(assert (=> b!2143118 (= e!1369231 tp!663610)))

(declare-fun mapNonEmpty!13244 () Bool)

(declare-fun mapRes!13243 () Bool)

(declare-fun tp!663616 () Bool)

(declare-fun tp!663627 () Bool)

(assert (=> mapNonEmpty!13244 (= mapRes!13243 (and tp!663616 tp!663627))))

(declare-fun mapKey!13243 () (_ BitVec 32))

(declare-fun mapRest!13244 () (Array (_ BitVec 32) List!24466))

(declare-fun mapValue!13244 () List!24466)

(assert (=> mapNonEmpty!13244 (= (arr!4187 (_values!3060 (v!28966 (underlying!5755 (v!28967 (underlying!5756 (cache!3075 cacheDown!1098))))))) (store mapRest!13244 mapKey!13243 mapValue!13244))))

(declare-fun b!2143119 () Bool)

(declare-fun res!925025 () Bool)

(assert (=> b!2143119 (=> res!925025 e!1369214)))

(declare-fun e!1369219 () Bool)

(assert (=> b!2143119 (= res!925025 e!1369219)))

(declare-fun res!925017 () Bool)

(assert (=> b!2143119 (=> (not res!925017) (not e!1369219))))

(assert (=> b!2143119 (= res!925017 (not (= from!1043 totalInputSize!296)))))

(declare-fun e!1369211 () Bool)

(declare-fun tp!663628 () Bool)

(declare-fun tp!663607 () Bool)

(declare-fun array_inv!2997 (array!9381) Bool)

(declare-fun array_inv!2998 (array!9387) Bool)

(assert (=> b!2143120 (= e!1369211 (and tp!663617 tp!663607 tp!663628 (array_inv!2997 (_keys!3079 (v!28970 (underlying!5759 (v!28971 (underlying!5760 (cache!3077 cacheFurthestNullable!114))))))) (array_inv!2998 (_values!3062 (v!28970 (underlying!5759 (v!28971 (underlying!5760 (cache!3077 cacheFurthestNullable!114))))))) e!1369225))))

(declare-fun b!2143121 () Bool)

(declare-fun tp!663619 () Bool)

(assert (=> b!2143121 (= e!1369204 tp!663619)))

(declare-fun b!2143122 () Bool)

(declare-fun e!1369201 () Bool)

(declare-fun tp!663620 () Bool)

(assert (=> b!2143122 (= e!1369201 (and tp!663620 mapRes!13245))))

(declare-fun condMapEmpty!13244 () Bool)

(declare-fun mapDefault!13243 () List!24467)

(assert (=> b!2143122 (= condMapEmpty!13244 (= (arr!4188 (_values!3061 (v!28968 (underlying!5757 (v!28969 (underlying!5758 (cache!3076 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!24467)) mapDefault!13243)))))

(assert (=> b!2143123 (= e!1369212 e!1369217)))

(declare-fun res!925014 () Bool)

(assert (=> b!2143123 (=> (not res!925014) (not e!1369217))))

(assert (=> b!2143123 (= res!925014 (forall!4981 stack!8 lambda!80281))))

(declare-fun furthestNullablePosition!83 ((InoxSet Context!2710) Int BalanceConc!15606 Int Int) Int)

(assert (=> b!2143123 (= lt!798439 (furthestNullablePosition!83 z!3839 from!1043 totalInput!851 lt!798438 lastNullablePos!123))))

(declare-fun b!2143124 () Bool)

(assert (=> b!2143124 (= e!1369217 (not e!1369214))))

(declare-fun res!925020 () Bool)

(assert (=> b!2143124 (=> res!925020 e!1369214)))

(declare-datatypes ((Option!4942 0))(
  ( (None!4941) (Some!4941 (v!28972 Int)) )
))
(declare-fun get!7445 (CacheFurthestNullable!812 (InoxSet Context!2710) Int Int) Option!4942)

(assert (=> b!2143124 (= res!925020 ((_ is Some!4941) (get!7445 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123)))))

(assert (=> b!2143124 (forall!4981 stack!8 lambda!80281)))

(declare-fun b!2143125 () Bool)

(assert (=> b!2143125 (= e!1369213 e!1369211)))

(declare-fun b!2143126 () Bool)

(declare-fun res!925016 () Bool)

(assert (=> b!2143126 (=> (not res!925016) (not e!1369212))))

(assert (=> b!2143126 (= res!925016 e!1369228)))

(declare-fun res!925015 () Bool)

(assert (=> b!2143126 (=> res!925015 e!1369228)))

(declare-fun nullableZipper!145 ((InoxSet Context!2710)) Bool)

(assert (=> b!2143126 (= res!925015 (not (nullableZipper!145 z!3839)))))

(declare-fun tp!663630 () Bool)

(declare-fun tp!663612 () Bool)

(declare-fun e!1369215 () Bool)

(declare-fun array_inv!2999 (array!9385) Bool)

(assert (=> b!2143127 (= e!1369215 (and tp!663614 tp!663630 tp!663612 (array_inv!2997 (_keys!3078 (v!28968 (underlying!5757 (v!28969 (underlying!5758 (cache!3076 cacheUp!979))))))) (array_inv!2999 (_values!3061 (v!28968 (underlying!5757 (v!28969 (underlying!5758 (cache!3076 cacheUp!979))))))) e!1369201))))

(declare-fun setIsEmpty!16566 () Bool)

(assert (=> setIsEmpty!16566 setRes!16567))

(declare-fun b!2143129 () Bool)

(declare-fun res!925022 () Bool)

(assert (=> b!2143129 (=> (not res!925022) (not e!1369212))))

(assert (=> b!2143129 (= res!925022 (= (totalInput!3145 cacheFurthestNullable!114) totalInput!851))))

(declare-fun b!2143128 () Bool)

(declare-fun e!1369232 () Bool)

(declare-fun lt!798441 () MutLongMap!2780)

(assert (=> b!2143128 (= e!1369232 (and e!1369230 ((_ is LongMap!2780) lt!798441)))))

(assert (=> b!2143128 (= lt!798441 (v!28967 (underlying!5756 (cache!3075 cacheDown!1098))))))

(declare-fun res!925019 () Bool)

(assert (=> start!208048 (=> (not res!925019) (not e!1369216))))

(assert (=> start!208048 (= res!925019 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!208048 e!1369216))

(declare-fun inv!32093 (CacheFurthestNullable!812) Bool)

(assert (=> start!208048 (and (inv!32093 cacheFurthestNullable!114) e!1369223)))

(assert (=> start!208048 true))

(declare-fun e!1369208 () Bool)

(declare-fun inv!32094 (CacheDown!1844) Bool)

(assert (=> start!208048 (and (inv!32094 cacheDown!1098) e!1369208)))

(declare-fun e!1369210 () Bool)

(declare-fun inv!32095 (CacheUp!1856) Bool)

(assert (=> start!208048 (and (inv!32095 cacheUp!979) e!1369210)))

(declare-fun condSetEmpty!16566 () Bool)

(assert (=> start!208048 (= condSetEmpty!16566 (= z!3839 ((as const (Array Context!2710 Bool)) false)))))

(assert (=> start!208048 setRes!16567))

(declare-fun e!1369224 () Bool)

(assert (=> start!208048 (and (inv!32091 totalInput!851) e!1369224)))

(assert (=> start!208048 e!1369202))

(declare-fun setIsEmpty!16567 () Bool)

(assert (=> setIsEmpty!16567 setRes!16566))

(declare-fun b!2143130 () Bool)

(declare-fun res!925026 () Bool)

(assert (=> b!2143130 (=> (not res!925026) (not e!1369212))))

(declare-fun valid!2172 (CacheFurthestNullable!812) Bool)

(assert (=> b!2143130 (= res!925026 (valid!2172 cacheFurthestNullable!114))))

(declare-fun mapNonEmpty!13245 () Bool)

(declare-fun tp!663622 () Bool)

(declare-fun tp!663633 () Bool)

(assert (=> mapNonEmpty!13245 (= mapRes!13244 (and tp!663622 tp!663633))))

(declare-fun mapRest!13245 () (Array (_ BitVec 32) List!24468))

(declare-fun mapKey!13244 () (_ BitVec 32))

(declare-fun mapValue!13245 () List!24468)

(assert (=> mapNonEmpty!13245 (= (arr!4189 (_values!3062 (v!28970 (underlying!5759 (v!28971 (underlying!5760 (cache!3077 cacheFurthestNullable!114))))))) (store mapRest!13245 mapKey!13244 mapValue!13245))))

(declare-fun tp!663609 () Bool)

(declare-fun tp!663626 () Bool)

(declare-fun e!1369200 () Bool)

(declare-fun array_inv!3000 (array!9383) Bool)

(assert (=> b!2143131 (= e!1369236 (and tp!663611 tp!663609 tp!663626 (array_inv!2997 (_keys!3077 (v!28966 (underlying!5755 (v!28967 (underlying!5756 (cache!3075 cacheDown!1098))))))) (array_inv!3000 (_values!3060 (v!28966 (underlying!5755 (v!28967 (underlying!5756 (cache!3075 cacheDown!1098))))))) e!1369200))))

(declare-fun b!2143132 () Bool)

(declare-fun e!1369222 () Bool)

(declare-fun tp!663632 () Bool)

(declare-fun inv!32096 (Conc!7922) Bool)

(assert (=> b!2143132 (= e!1369222 (and (inv!32096 (c!340655 (totalInput!3144 (h!29782 stack!8)))) tp!663632))))

(declare-fun e!1369226 () Bool)

(assert (=> b!2143133 (= e!1369226 (and e!1369234 tp!663623))))

(declare-fun b!2143134 () Bool)

(declare-fun e!1369218 () Bool)

(declare-fun lt!798437 () MutLongMap!2782)

(assert (=> b!2143134 (= e!1369218 (and e!1369206 ((_ is LongMap!2782) lt!798437)))))

(assert (=> b!2143134 (= lt!798437 (v!28971 (underlying!5760 (cache!3077 cacheFurthestNullable!114))))))

(declare-fun b!2143135 () Bool)

(declare-fun e!1369233 () Bool)

(assert (=> b!2143135 (= e!1369233 e!1369215)))

(assert (=> b!2143136 (= e!1369205 (and e!1369218 tp!663624))))

(declare-fun mapIsEmpty!13244 () Bool)

(assert (=> mapIsEmpty!13244 mapRes!13244))

(declare-fun b!2143137 () Bool)

(assert (=> b!2143137 (= e!1369220 (and setRes!16566 (inv!32091 (totalInput!3144 (h!29782 stack!8))) e!1369222))))

(declare-fun condSetEmpty!16567 () Bool)

(assert (=> b!2143137 (= condSetEmpty!16567 (= (z!5886 (h!29782 stack!8)) ((as const (Array Context!2710 Bool)) false)))))

(declare-fun b!2143138 () Bool)

(declare-fun lostCauseZipper!120 ((InoxSet Context!2710)) Bool)

(assert (=> b!2143138 (= e!1369219 (not (lostCauseZipper!120 z!3839)))))

(declare-fun b!2143139 () Bool)

(declare-fun tp!663605 () Bool)

(assert (=> b!2143139 (= e!1369227 (and (inv!32096 (c!340655 (totalInput!3145 cacheFurthestNullable!114))) tp!663605))))

(declare-fun mapIsEmpty!13245 () Bool)

(assert (=> mapIsEmpty!13245 mapRes!13243))

(declare-fun b!2143140 () Bool)

(declare-fun e!1369203 () Bool)

(assert (=> b!2143140 (= e!1369208 e!1369203)))

(declare-fun b!2143141 () Bool)

(assert (=> b!2143141 (= e!1369214 (forall!4981 stack!8 lambda!80281))))

(declare-fun b!2143142 () Bool)

(declare-fun tp!663618 () Bool)

(assert (=> b!2143142 (= e!1369224 (and (inv!32096 (c!340655 totalInput!851)) tp!663618))))

(declare-fun b!2143143 () Bool)

(assert (=> b!2143143 (= e!1369210 e!1369226)))

(declare-fun b!2143144 () Bool)

(assert (=> b!2143144 (= e!1369221 e!1369233)))

(declare-fun b!2143145 () Bool)

(declare-fun tp!663606 () Bool)

(assert (=> b!2143145 (= e!1369200 (and tp!663606 mapRes!13243))))

(declare-fun condMapEmpty!13243 () Bool)

(declare-fun mapDefault!13244 () List!24466)

(assert (=> b!2143145 (= condMapEmpty!13243 (= (arr!4187 (_values!3060 (v!28966 (underlying!5755 (v!28967 (underlying!5756 (cache!3075 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!24466)) mapDefault!13244)))))

(assert (=> b!2143146 (= e!1369203 (and e!1369232 tp!663629))))

(assert (= (and start!208048 res!925019) b!2143109))

(assert (= (and b!2143109 res!925023) b!2143126))

(assert (= (and b!2143126 (not res!925015)) b!2143116))

(assert (= (and b!2143126 res!925016) b!2143117))

(assert (= (and b!2143117 res!925021) b!2143106))

(assert (= (and b!2143106 res!925027) b!2143130))

(assert (= (and b!2143130 res!925026) b!2143129))

(assert (= (and b!2143129 res!925022) b!2143123))

(assert (= (and b!2143123 res!925014) b!2143105))

(assert (= (and b!2143105 res!925024) b!2143124))

(assert (= (and b!2143124 (not res!925020)) b!2143119))

(assert (= (and b!2143119 res!925017) b!2143138))

(assert (= (and b!2143119 (not res!925025)) b!2143112))

(assert (= (and b!2143112 (not res!925018)) b!2143141))

(assert (= (and b!2143115 condMapEmpty!13245) mapIsEmpty!13244))

(assert (= (and b!2143115 (not condMapEmpty!13245)) mapNonEmpty!13245))

(assert (= b!2143120 b!2143115))

(assert (= b!2143125 b!2143120))

(assert (= b!2143108 b!2143125))

(assert (= (and b!2143134 ((_ is LongMap!2782) (v!28971 (underlying!5760 (cache!3077 cacheFurthestNullable!114))))) b!2143108))

(assert (= b!2143136 b!2143134))

(assert (= (and b!2143110 ((_ is HashMap!2696) (cache!3077 cacheFurthestNullable!114))) b!2143136))

(assert (= b!2143110 b!2143139))

(assert (= start!208048 b!2143110))

(assert (= (and b!2143145 condMapEmpty!13243) mapIsEmpty!13245))

(assert (= (and b!2143145 (not condMapEmpty!13243)) mapNonEmpty!13244))

(assert (= b!2143131 b!2143145))

(assert (= b!2143114 b!2143131))

(assert (= b!2143113 b!2143114))

(assert (= (and b!2143128 ((_ is LongMap!2780) (v!28967 (underlying!5756 (cache!3075 cacheDown!1098))))) b!2143113))

(assert (= b!2143146 b!2143128))

(assert (= (and b!2143140 ((_ is HashMap!2694) (cache!3075 cacheDown!1098))) b!2143146))

(assert (= start!208048 b!2143140))

(assert (= (and b!2143122 condMapEmpty!13244) mapIsEmpty!13243))

(assert (= (and b!2143122 (not condMapEmpty!13244)) mapNonEmpty!13243))

(assert (= b!2143127 b!2143122))

(assert (= b!2143135 b!2143127))

(assert (= b!2143144 b!2143135))

(assert (= (and b!2143107 ((_ is LongMap!2781) (v!28969 (underlying!5758 (cache!3076 cacheUp!979))))) b!2143144))

(assert (= b!2143133 b!2143107))

(assert (= (and b!2143143 ((_ is HashMap!2695) (cache!3076 cacheUp!979))) b!2143133))

(assert (= start!208048 b!2143143))

(assert (= (and start!208048 condSetEmpty!16566) setIsEmpty!16566))

(assert (= (and start!208048 (not condSetEmpty!16566)) setNonEmpty!16566))

(assert (= setNonEmpty!16566 b!2143118))

(assert (= start!208048 b!2143142))

(assert (= (and b!2143137 condSetEmpty!16567) setIsEmpty!16567))

(assert (= (and b!2143137 (not condSetEmpty!16567)) setNonEmpty!16567))

(assert (= setNonEmpty!16567 b!2143121))

(assert (= b!2143137 b!2143132))

(assert (= b!2143111 b!2143137))

(assert (= (and start!208048 ((_ is Cons!24381) stack!8)) b!2143111))

(declare-fun m!2588125 () Bool)

(assert (=> b!2143126 m!2588125))

(declare-fun m!2588127 () Bool)

(assert (=> b!2143111 m!2588127))

(declare-fun m!2588129 () Bool)

(assert (=> b!2143139 m!2588129))

(declare-fun m!2588131 () Bool)

(assert (=> b!2143141 m!2588131))

(declare-fun m!2588133 () Bool)

(assert (=> b!2143138 m!2588133))

(declare-fun m!2588135 () Bool)

(assert (=> b!2143137 m!2588135))

(declare-fun m!2588137 () Bool)

(assert (=> b!2143130 m!2588137))

(declare-fun m!2588139 () Bool)

(assert (=> mapNonEmpty!13244 m!2588139))

(declare-fun m!2588141 () Bool)

(assert (=> b!2143109 m!2588141))

(declare-fun m!2588143 () Bool)

(assert (=> b!2143124 m!2588143))

(assert (=> b!2143124 m!2588131))

(declare-fun m!2588145 () Bool)

(assert (=> b!2143132 m!2588145))

(declare-fun m!2588147 () Bool)

(assert (=> setNonEmpty!16566 m!2588147))

(declare-fun m!2588149 () Bool)

(assert (=> b!2143127 m!2588149))

(declare-fun m!2588151 () Bool)

(assert (=> b!2143127 m!2588151))

(declare-fun m!2588153 () Bool)

(assert (=> start!208048 m!2588153))

(declare-fun m!2588155 () Bool)

(assert (=> start!208048 m!2588155))

(declare-fun m!2588157 () Bool)

(assert (=> start!208048 m!2588157))

(declare-fun m!2588159 () Bool)

(assert (=> start!208048 m!2588159))

(declare-fun m!2588161 () Bool)

(assert (=> mapNonEmpty!13243 m!2588161))

(declare-fun m!2588163 () Bool)

(assert (=> b!2143120 m!2588163))

(declare-fun m!2588165 () Bool)

(assert (=> b!2143120 m!2588165))

(declare-fun m!2588167 () Bool)

(assert (=> setNonEmpty!16567 m!2588167))

(assert (=> b!2143123 m!2588131))

(declare-fun m!2588169 () Bool)

(assert (=> b!2143123 m!2588169))

(declare-fun m!2588171 () Bool)

(assert (=> b!2143110 m!2588171))

(declare-fun m!2588173 () Bool)

(assert (=> b!2143105 m!2588173))

(declare-fun m!2588175 () Bool)

(assert (=> b!2143106 m!2588175))

(declare-fun m!2588177 () Bool)

(assert (=> mapNonEmpty!13245 m!2588177))

(declare-fun m!2588179 () Bool)

(assert (=> b!2143142 m!2588179))

(declare-fun m!2588181 () Bool)

(assert (=> b!2143131 m!2588181))

(declare-fun m!2588183 () Bool)

(assert (=> b!2143131 m!2588183))

(declare-fun m!2588185 () Bool)

(assert (=> b!2143117 m!2588185))

(check-sat (not b_next!63787) (not b_next!63783) (not mapNonEmpty!13244) (not b!2143111) (not b_next!63791) (not b!2143110) (not b!2143131) b_and!172661 (not b!2143117) (not b!2143109) (not b!2143139) (not b!2143106) (not b_next!63781) (not b_next!63785) (not b!2143120) (not b!2143122) (not b!2143124) (not b!2143142) (not b!2143145) (not b_next!63789) b_and!172659 (not b!2143123) (not b!2143127) (not b!2143132) (not b!2143137) b_and!172663 (not b!2143126) (not b!2143138) (not start!208048) (not b!2143121) b_and!172665 (not b!2143105) (not setNonEmpty!16567) (not setNonEmpty!16566) b_and!172657 (not b!2143141) b_and!172667 (not b!2143115) (not b!2143130) (not mapNonEmpty!13245) (not mapNonEmpty!13243) (not b!2143118))
(check-sat (not b_next!63787) (not b_next!63781) (not b_next!63783) (not b_next!63785) (not b_next!63791) (not b_next!63789) b_and!172665 b_and!172661 b_and!172657 b_and!172667 b_and!172659 b_and!172663)
