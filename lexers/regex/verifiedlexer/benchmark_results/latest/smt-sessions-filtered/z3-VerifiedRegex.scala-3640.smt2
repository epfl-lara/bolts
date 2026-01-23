; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207600 () Bool)

(assert start!207600)

(declare-fun b!2135756 () Bool)

(declare-fun b_free!62621 () Bool)

(declare-fun b_next!63325 () Bool)

(assert (=> b!2135756 (= b_free!62621 (not b_next!63325))))

(declare-fun tp!658445 () Bool)

(declare-fun b_and!172201 () Bool)

(assert (=> b!2135756 (= tp!658445 b_and!172201)))

(declare-fun b!2135770 () Bool)

(declare-fun b_free!62623 () Bool)

(declare-fun b_next!63327 () Bool)

(assert (=> b!2135770 (= b_free!62623 (not b_next!63327))))

(declare-fun tp!658441 () Bool)

(declare-fun b_and!172203 () Bool)

(assert (=> b!2135770 (= tp!658441 b_and!172203)))

(declare-fun b!2135795 () Bool)

(declare-fun b_free!62625 () Bool)

(declare-fun b_next!63329 () Bool)

(assert (=> b!2135795 (= b_free!62625 (not b_next!63329))))

(declare-fun tp!658464 () Bool)

(declare-fun b_and!172205 () Bool)

(assert (=> b!2135795 (= tp!658464 b_and!172205)))

(declare-fun b!2135760 () Bool)

(declare-fun b_free!62627 () Bool)

(declare-fun b_next!63331 () Bool)

(assert (=> b!2135760 (= b_free!62627 (not b_next!63331))))

(declare-fun tp!658449 () Bool)

(declare-fun b_and!172207 () Bool)

(assert (=> b!2135760 (= tp!658449 b_and!172207)))

(declare-fun b!2135759 () Bool)

(declare-fun b_free!62629 () Bool)

(declare-fun b_next!63333 () Bool)

(assert (=> b!2135759 (= b_free!62629 (not b_next!63333))))

(declare-fun tp!658451 () Bool)

(declare-fun b_and!172209 () Bool)

(assert (=> b!2135759 (= tp!658451 b_and!172209)))

(declare-fun b!2135786 () Bool)

(declare-fun b_free!62631 () Bool)

(declare-fun b_next!63335 () Bool)

(assert (=> b!2135786 (= b_free!62631 (not b_next!63335))))

(declare-fun tp!658459 () Bool)

(declare-fun b_and!172211 () Bool)

(assert (=> b!2135786 (= tp!658459 b_and!172211)))

(declare-fun b!2135757 () Bool)

(assert (=> b!2135757 true))

(declare-fun bs!444326 () Bool)

(declare-fun b!2135762 () Bool)

(assert (= bs!444326 (and b!2135762 b!2135757)))

(declare-fun lambda!79514 () Int)

(declare-fun lambda!79513 () Int)

(assert (=> bs!444326 (not (= lambda!79514 lambda!79513))))

(assert (=> b!2135762 true))

(declare-fun bs!444327 () Bool)

(declare-fun b!2135755 () Bool)

(assert (= bs!444327 (and b!2135755 b!2135757)))

(declare-fun lt!797207 () Int)

(declare-fun lt!797212 () Int)

(declare-fun lambda!79515 () Int)

(assert (=> bs!444327 (= (= lt!797207 lt!797212) (= lambda!79515 lambda!79513))))

(declare-fun bs!444328 () Bool)

(assert (= bs!444328 (and b!2135755 b!2135762)))

(assert (=> bs!444328 (not (= lambda!79515 lambda!79514))))

(assert (=> b!2135755 true))

(declare-fun e!1363253 () Bool)

(assert (=> b!2135755 (= e!1363253 true)))

(declare-datatypes ((C!11640 0))(
  ( (C!11641 (val!6806 Int)) )
))
(declare-datatypes ((Regex!5747 0))(
  ( (ElementMatch!5747 (c!340339 C!11640)) (Concat!10049 (regOne!12006 Regex!5747) (regTwo!12006 Regex!5747)) (EmptyExpr!5747) (Star!5747 (reg!6076 Regex!5747)) (EmptyLang!5747) (Union!5747 (regOne!12007 Regex!5747) (regTwo!12007 Regex!5747)) )
))
(declare-datatypes ((List!24248 0))(
  ( (Nil!24164) (Cons!24164 (h!29565 Regex!5747) (t!196776 List!24248)) )
))
(declare-datatypes ((Context!2634 0))(
  ( (Context!2635 (exprs!1817 List!24248)) )
))
(declare-datatypes ((List!24249 0))(
  ( (Nil!24165) (Cons!24165 (h!29566 C!11640) (t!196777 List!24249)) )
))
(declare-datatypes ((IArray!15775 0))(
  ( (IArray!15776 (innerList!7945 List!24249)) )
))
(declare-datatypes ((Conc!7885 0))(
  ( (Node!7885 (left!18611 Conc!7885) (right!18941 Conc!7885) (csize!16000 Int) (cheight!8096 Int)) (Leaf!11526 (xs!10827 IArray!15775) (csize!16001 Int)) (Empty!7885) )
))
(declare-datatypes ((BalanceConc!15532 0))(
  ( (BalanceConc!15533 (c!340340 Conc!7885)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((StackFrame!180 0))(
  ( (StackFrame!181 (z!5818 (InoxSet Context!2634)) (from!2704 Int) (lastNullablePos!391 Int) (res!922747 Int) (totalInput!3067 BalanceConc!15532)) )
))
(declare-datatypes ((List!24250 0))(
  ( (Nil!24166) (Cons!24166 (h!29567 StackFrame!180) (t!196778 List!24250)) )
))
(declare-fun stack!8 () List!24250)

(declare-fun forall!4933 (List!24250 Int) Bool)

(assert (=> b!2135755 (forall!4933 stack!8 lambda!79515)))

(declare-datatypes ((Unit!37653 0))(
  ( (Unit!37654) )
))
(declare-fun lt!797213 () Unit!37653)

(declare-fun lemmaStackPreservesForEqualRes!13 (List!24250 Int Int) Unit!37653)

(assert (=> b!2135755 (= lt!797213 (lemmaStackPreservesForEqualRes!13 stack!8 lt!797212 lt!797207))))

(assert (=> b!2135755 (forall!4933 stack!8 lambda!79513)))

(declare-fun e!1363246 () Bool)

(declare-fun e!1363235 () Bool)

(assert (=> b!2135756 (= e!1363246 (and e!1363235 tp!658445))))

(declare-fun e!1363254 () Bool)

(declare-fun e!1363236 () Bool)

(assert (=> b!2135757 (= e!1363254 e!1363236)))

(declare-fun res!922745 () Bool)

(assert (=> b!2135757 (=> (not res!922745) (not e!1363236))))

(assert (=> b!2135757 (= res!922745 (forall!4933 stack!8 lambda!79513))))

(declare-fun lt!797209 () Int)

(declare-fun lastNullablePos!123 () Int)

(declare-fun z!3839 () (InoxSet Context!2634))

(declare-fun from!1043 () Int)

(declare-fun totalInput!851 () BalanceConc!15532)

(declare-fun furthestNullablePosition!56 ((InoxSet Context!2634) Int BalanceConc!15532 Int Int) Int)

(assert (=> b!2135757 (= lt!797212 (furthestNullablePosition!56 z!3839 from!1043 totalInput!851 lt!797209 lastNullablePos!123))))

(declare-fun b!2135758 () Bool)

(declare-fun res!922733 () Bool)

(assert (=> b!2135758 (=> (not res!922733) (not e!1363254))))

(declare-datatypes ((tuple3!3280 0))(
  ( (tuple3!3281 (_1!14088 (InoxSet Context!2634)) (_2!14088 Int) (_3!2110 Int)) )
))
(declare-datatypes ((tuple2!23956 0))(
  ( (tuple2!23957 (_1!14089 tuple3!3280) (_2!14089 Int)) )
))
(declare-datatypes ((List!24251 0))(
  ( (Nil!24167) (Cons!24167 (h!29568 tuple2!23956) (t!196779 List!24251)) )
))
(declare-datatypes ((array!9069 0))(
  ( (array!9070 (arr!4046 (Array (_ BitVec 32) (_ BitVec 64))) (size!18901 (_ BitVec 32))) )
))
(declare-datatypes ((array!9071 0))(
  ( (array!9072 (arr!4047 (Array (_ BitVec 32) List!24251)) (size!18902 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5356 0))(
  ( (LongMapFixedSize!5357 (defaultEntry!3043 Int) (mask!6867 (_ BitVec 32)) (extraKeys!2926 (_ BitVec 32)) (zeroValue!2936 List!24251) (minValue!2936 List!24251) (_size!5407 (_ BitVec 32)) (_keys!2975 array!9069) (_values!2958 array!9071) (_vacant!2739 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10537 0))(
  ( (Cell!10538 (v!28733 LongMapFixedSize!5356)) )
))
(declare-datatypes ((MutLongMap!2678 0))(
  ( (LongMap!2678 (underlying!5551 Cell!10537)) (MutLongMapExt!2677 (__x!16210 Int)) )
))
(declare-datatypes ((Cell!10539 0))(
  ( (Cell!10540 (v!28734 MutLongMap!2678)) )
))
(declare-datatypes ((Hashable!2592 0))(
  ( (HashableExt!2591 (__x!16211 Int)) )
))
(declare-datatypes ((MutableMap!2592 0))(
  ( (MutableMapExt!2591 (__x!16212 Int)) (HashMap!2592 (underlying!5552 Cell!10539) (hashF!4515 Hashable!2592) (_size!5408 (_ BitVec 32)) (defaultValue!2754 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!740 0))(
  ( (CacheFurthestNullable!741 (cache!2973 MutableMap!2592) (totalInput!3068 BalanceConc!15532)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!740)

(assert (=> b!2135758 (= res!922733 (= (totalInput!3068 cacheFurthestNullable!114) totalInput!851))))

(declare-fun e!1363258 () Bool)

(declare-fun e!1363240 () Bool)

(assert (=> b!2135760 (= e!1363258 (and e!1363240 tp!658449))))

(declare-fun b!2135761 () Bool)

(declare-fun e!1363229 () Bool)

(declare-fun tp!658463 () Bool)

(declare-fun inv!31828 (Conc!7885) Bool)

(assert (=> b!2135761 (= e!1363229 (and (inv!31828 (c!340340 totalInput!851)) tp!658463))))

(declare-fun res!922738 () Bool)

(assert (=> b!2135762 (=> (not res!922738) (not e!1363236))))

(assert (=> b!2135762 (= res!922738 (forall!4933 stack!8 lambda!79514))))

(declare-fun mapNonEmpty!12826 () Bool)

(declare-fun mapRes!12826 () Bool)

(declare-fun tp!658453 () Bool)

(declare-fun tp!658448 () Bool)

(assert (=> mapNonEmpty!12826 (= mapRes!12826 (and tp!658453 tp!658448))))

(declare-datatypes ((tuple3!3282 0))(
  ( (tuple3!3283 (_1!14090 Regex!5747) (_2!14090 Context!2634) (_3!2111 C!11640)) )
))
(declare-datatypes ((tuple2!23958 0))(
  ( (tuple2!23959 (_1!14091 tuple3!3282) (_2!14091 (InoxSet Context!2634))) )
))
(declare-datatypes ((List!24252 0))(
  ( (Nil!24168) (Cons!24168 (h!29569 tuple2!23958) (t!196780 List!24252)) )
))
(declare-fun mapValue!12827 () List!24252)

(declare-fun mapKey!12826 () (_ BitVec 32))

(declare-fun mapRest!12827 () (Array (_ BitVec 32) List!24252))

(declare-datatypes ((Hashable!2593 0))(
  ( (HashableExt!2592 (__x!16213 Int)) )
))
(declare-datatypes ((array!9073 0))(
  ( (array!9074 (arr!4048 (Array (_ BitVec 32) List!24252)) (size!18903 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5358 0))(
  ( (LongMapFixedSize!5359 (defaultEntry!3044 Int) (mask!6868 (_ BitVec 32)) (extraKeys!2927 (_ BitVec 32)) (zeroValue!2937 List!24252) (minValue!2937 List!24252) (_size!5409 (_ BitVec 32)) (_keys!2976 array!9069) (_values!2959 array!9073) (_vacant!2740 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10541 0))(
  ( (Cell!10542 (v!28735 LongMapFixedSize!5358)) )
))
(declare-datatypes ((MutLongMap!2679 0))(
  ( (LongMap!2679 (underlying!5553 Cell!10541)) (MutLongMapExt!2678 (__x!16214 Int)) )
))
(declare-datatypes ((Cell!10543 0))(
  ( (Cell!10544 (v!28736 MutLongMap!2679)) )
))
(declare-datatypes ((MutableMap!2593 0))(
  ( (MutableMapExt!2592 (__x!16215 Int)) (HashMap!2593 (underlying!5554 Cell!10543) (hashF!4516 Hashable!2593) (_size!5410 (_ BitVec 32)) (defaultValue!2755 Int)) )
))
(declare-datatypes ((CacheDown!1774 0))(
  ( (CacheDown!1775 (cache!2974 MutableMap!2593)) )
))
(declare-fun cacheDown!1098 () CacheDown!1774)

(assert (=> mapNonEmpty!12826 (= (arr!4048 (_values!2959 (v!28735 (underlying!5553 (v!28736 (underlying!5554 (cache!2974 cacheDown!1098))))))) (store mapRest!12827 mapKey!12826 mapValue!12827))))

(declare-fun b!2135763 () Bool)

(declare-fun e!1363226 () Bool)

(declare-fun tp!658462 () Bool)

(declare-fun mapRes!12827 () Bool)

(assert (=> b!2135763 (= e!1363226 (and tp!658462 mapRes!12827))))

(declare-fun condMapEmpty!12826 () Bool)

(declare-datatypes ((tuple2!23960 0))(
  ( (tuple2!23961 (_1!14092 Context!2634) (_2!14092 C!11640)) )
))
(declare-datatypes ((tuple2!23962 0))(
  ( (tuple2!23963 (_1!14093 tuple2!23960) (_2!14093 (InoxSet Context!2634))) )
))
(declare-datatypes ((List!24253 0))(
  ( (Nil!24169) (Cons!24169 (h!29570 tuple2!23962) (t!196781 List!24253)) )
))
(declare-datatypes ((array!9075 0))(
  ( (array!9076 (arr!4049 (Array (_ BitVec 32) List!24253)) (size!18904 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5360 0))(
  ( (LongMapFixedSize!5361 (defaultEntry!3045 Int) (mask!6869 (_ BitVec 32)) (extraKeys!2928 (_ BitVec 32)) (zeroValue!2938 List!24253) (minValue!2938 List!24253) (_size!5411 (_ BitVec 32)) (_keys!2977 array!9069) (_values!2960 array!9075) (_vacant!2741 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10545 0))(
  ( (Cell!10546 (v!28737 LongMapFixedSize!5360)) )
))
(declare-datatypes ((MutLongMap!2680 0))(
  ( (LongMap!2680 (underlying!5555 Cell!10545)) (MutLongMapExt!2679 (__x!16216 Int)) )
))
(declare-datatypes ((Cell!10547 0))(
  ( (Cell!10548 (v!28738 MutLongMap!2680)) )
))
(declare-datatypes ((Hashable!2594 0))(
  ( (HashableExt!2593 (__x!16217 Int)) )
))
(declare-datatypes ((MutableMap!2594 0))(
  ( (MutableMapExt!2593 (__x!16218 Int)) (HashMap!2594 (underlying!5556 Cell!10547) (hashF!4517 Hashable!2594) (_size!5412 (_ BitVec 32)) (defaultValue!2756 Int)) )
))
(declare-datatypes ((CacheUp!1794 0))(
  ( (CacheUp!1795 (cache!2975 MutableMap!2594)) )
))
(declare-fun cacheUp!979 () CacheUp!1794)

(declare-fun mapDefault!12827 () List!24253)

(assert (=> b!2135763 (= condMapEmpty!12826 (= (arr!4049 (_values!2960 (v!28737 (underlying!5555 (v!28738 (underlying!5556 (cache!2975 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!24253)) mapDefault!12827)))))

(declare-fun b!2135764 () Bool)

(declare-fun e!1363232 () Bool)

(declare-fun e!1363233 () Bool)

(assert (=> b!2135764 (= e!1363232 e!1363233)))

(declare-fun setIsEmpty!15948 () Bool)

(declare-fun setRes!15948 () Bool)

(assert (=> setIsEmpty!15948 setRes!15948))

(declare-fun b!2135765 () Bool)

(declare-fun e!1363234 () Bool)

(declare-fun e!1363230 () Bool)

(declare-fun lt!797211 () MutLongMap!2678)

(get-info :version)

(assert (=> b!2135765 (= e!1363234 (and e!1363230 ((_ is LongMap!2678) lt!797211)))))

(assert (=> b!2135765 (= lt!797211 (v!28734 (underlying!5552 (cache!2973 cacheFurthestNullable!114))))))

(declare-fun b!2135766 () Bool)

(declare-fun res!922740 () Bool)

(assert (=> b!2135766 (=> (not res!922740) (not e!1363254))))

(declare-fun valid!2096 (CacheUp!1794) Bool)

(assert (=> b!2135766 (= res!922740 (valid!2096 cacheUp!979))))

(declare-fun mapIsEmpty!12826 () Bool)

(assert (=> mapIsEmpty!12826 mapRes!12827))

(declare-fun b!2135767 () Bool)

(declare-fun e!1363228 () Bool)

(assert (=> b!2135767 (= e!1363228 e!1363253)))

(declare-fun res!922741 () Bool)

(assert (=> b!2135767 (=> res!922741 e!1363253)))

(assert (=> b!2135767 (= res!922741 (not (= lt!797212 lt!797207)))))

(declare-fun e!1363256 () Int)

(declare-datatypes ((tuple3!3284 0))(
  ( (tuple3!3285 (_1!14094 (InoxSet Context!2634)) (_2!14094 CacheUp!1794) (_3!2112 CacheDown!1774)) )
))
(declare-fun lt!797210 () tuple3!3284)

(assert (=> b!2135767 (= lt!797207 (furthestNullablePosition!56 (_1!14094 lt!797210) (+ 1 from!1043) totalInput!851 lt!797209 e!1363256))))

(declare-fun c!340338 () Bool)

(declare-fun nullableZipper!121 ((InoxSet Context!2634)) Bool)

(assert (=> b!2135767 (= c!340338 (nullableZipper!121 (_1!14094 lt!797210)))))

(declare-fun derivationStepZipperMem!43 ((InoxSet Context!2634) C!11640 CacheUp!1794 CacheDown!1774) tuple3!3284)

(declare-fun apply!5942 (BalanceConc!15532 Int) C!11640)

(assert (=> b!2135767 (= lt!797210 (derivationStepZipperMem!43 z!3839 (apply!5942 totalInput!851 from!1043) cacheUp!979 cacheDown!1098))))

(declare-fun b!2135768 () Bool)

(assert (=> b!2135768 (= e!1363236 (not e!1363228))))

(declare-fun res!922744 () Bool)

(assert (=> b!2135768 (=> res!922744 e!1363228)))

(declare-datatypes ((Option!4913 0))(
  ( (None!4912) (Some!4912 (v!28739 Int)) )
))
(declare-fun get!7396 (CacheFurthestNullable!740 (InoxSet Context!2634) Int Int) Option!4913)

(assert (=> b!2135768 (= res!922744 ((_ is Some!4912) (get!7396 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123)))))

(assert (=> b!2135768 (forall!4933 stack!8 lambda!79513)))

(declare-fun b!2135769 () Bool)

(declare-fun e!1363244 () Bool)

(assert (=> b!2135769 (= e!1363233 e!1363244)))

(declare-fun e!1363245 () Bool)

(declare-fun tp!658456 () Bool)

(declare-fun tp!658467 () Bool)

(declare-fun array_inv!2893 (array!9069) Bool)

(declare-fun array_inv!2894 (array!9075) Bool)

(assert (=> b!2135770 (= e!1363245 (and tp!658441 tp!658467 tp!658456 (array_inv!2893 (_keys!2977 (v!28737 (underlying!5555 (v!28738 (underlying!5556 (cache!2975 cacheUp!979))))))) (array_inv!2894 (_values!2960 (v!28737 (underlying!5555 (v!28738 (underlying!5556 (cache!2975 cacheUp!979))))))) e!1363226))))

(declare-fun b!2135771 () Bool)

(declare-fun e!1363251 () Bool)

(assert (=> b!2135771 (= e!1363251 e!1363245)))

(declare-fun mapIsEmpty!12827 () Bool)

(assert (=> mapIsEmpty!12827 mapRes!12826))

(declare-fun b!2135772 () Bool)

(assert (=> b!2135772 (= e!1363256 lastNullablePos!123)))

(declare-fun b!2135773 () Bool)

(declare-fun res!922742 () Bool)

(assert (=> b!2135773 (=> res!922742 e!1363228)))

(declare-fun totalInputSize!296 () Int)

(assert (=> b!2135773 (= res!922742 (= from!1043 totalInputSize!296))))

(declare-fun e!1363231 () Bool)

(declare-fun e!1363259 () Bool)

(declare-fun tp!658460 () Bool)

(declare-fun b!2135774 () Bool)

(declare-fun inv!31829 (StackFrame!180) Bool)

(assert (=> b!2135774 (= e!1363259 (and (inv!31829 (h!29567 stack!8)) e!1363231 tp!658460))))

(declare-fun b!2135775 () Bool)

(declare-fun e!1363257 () Bool)

(assert (=> b!2135775 (= e!1363257 e!1363258)))

(declare-fun b!2135776 () Bool)

(declare-fun res!922743 () Bool)

(assert (=> b!2135776 (=> (not res!922743) (not e!1363254))))

(declare-fun valid!2097 (CacheFurthestNullable!740) Bool)

(assert (=> b!2135776 (= res!922743 (valid!2097 cacheFurthestNullable!114))))

(declare-fun b!2135777 () Bool)

(declare-fun e!1363261 () Bool)

(declare-fun e!1363237 () Bool)

(assert (=> b!2135777 (= e!1363261 e!1363237)))

(declare-fun b!2135778 () Bool)

(declare-fun e!1363241 () Bool)

(declare-fun tp!658446 () Bool)

(assert (=> b!2135778 (= e!1363241 tp!658446)))

(declare-fun b!2135779 () Bool)

(declare-fun res!922737 () Bool)

(assert (=> b!2135779 (=> res!922737 e!1363228)))

(declare-fun lostCauseZipper!97 ((InoxSet Context!2634)) Bool)

(assert (=> b!2135779 (= res!922737 (lostCauseZipper!97 z!3839))))

(declare-fun setIsEmpty!15949 () Bool)

(declare-fun setRes!15949 () Bool)

(assert (=> setIsEmpty!15949 setRes!15949))

(declare-fun tp!658440 () Bool)

(declare-fun e!1363249 () Bool)

(declare-fun tp!658442 () Bool)

(declare-fun array_inv!2895 (array!9071) Bool)

(assert (=> b!2135759 (= e!1363237 (and tp!658451 tp!658440 tp!658442 (array_inv!2893 (_keys!2975 (v!28733 (underlying!5551 (v!28734 (underlying!5552 (cache!2973 cacheFurthestNullable!114))))))) (array_inv!2895 (_values!2958 (v!28733 (underlying!5551 (v!28734 (underlying!5552 (cache!2973 cacheFurthestNullable!114))))))) e!1363249))))

(declare-fun res!922739 () Bool)

(declare-fun e!1363250 () Bool)

(assert (=> start!207600 (=> (not res!922739) (not e!1363250))))

(assert (=> start!207600 (= res!922739 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!207600 e!1363250))

(declare-fun e!1363255 () Bool)

(declare-fun inv!31830 (CacheFurthestNullable!740) Bool)

(assert (=> start!207600 (and (inv!31830 cacheFurthestNullable!114) e!1363255)))

(assert (=> start!207600 true))

(declare-fun inv!31831 (CacheDown!1774) Bool)

(assert (=> start!207600 (and (inv!31831 cacheDown!1098) e!1363257)))

(declare-fun e!1363252 () Bool)

(declare-fun inv!31832 (CacheUp!1794) Bool)

(assert (=> start!207600 (and (inv!31832 cacheUp!979) e!1363252)))

(declare-fun condSetEmpty!15948 () Bool)

(assert (=> start!207600 (= condSetEmpty!15948 (= z!3839 ((as const (Array Context!2634 Bool)) false)))))

(assert (=> start!207600 setRes!15948))

(declare-fun inv!31833 (BalanceConc!15532) Bool)

(assert (=> start!207600 (and (inv!31833 totalInput!851) e!1363229)))

(assert (=> start!207600 e!1363259))

(declare-fun b!2135780 () Bool)

(declare-fun e!1363247 () Bool)

(declare-fun lt!797208 () MutLongMap!2680)

(assert (=> b!2135780 (= e!1363235 (and e!1363247 ((_ is LongMap!2680) lt!797208)))))

(assert (=> b!2135780 (= lt!797208 (v!28738 (underlying!5556 (cache!2975 cacheUp!979))))))

(declare-fun b!2135781 () Bool)

(declare-fun e!1363239 () Bool)

(declare-fun tp!658452 () Bool)

(assert (=> b!2135781 (= e!1363239 tp!658452)))

(declare-fun b!2135782 () Bool)

(declare-fun e!1363224 () Bool)

(assert (=> b!2135782 (= e!1363231 (and setRes!15949 (inv!31833 (totalInput!3067 (h!29567 stack!8))) e!1363224))))

(declare-fun condSetEmpty!15949 () Bool)

(assert (=> b!2135782 (= condSetEmpty!15949 (= (z!5818 (h!29567 stack!8)) ((as const (Array Context!2634 Bool)) false)))))

(declare-fun mapNonEmpty!12827 () Bool)

(declare-fun tp!658468 () Bool)

(declare-fun tp!658444 () Bool)

(assert (=> mapNonEmpty!12827 (= mapRes!12827 (and tp!658468 tp!658444))))

(declare-fun mapValue!12828 () List!24253)

(declare-fun mapKey!12827 () (_ BitVec 32))

(declare-fun mapRest!12826 () (Array (_ BitVec 32) List!24253))

(assert (=> mapNonEmpty!12827 (= (arr!4049 (_values!2960 (v!28737 (underlying!5555 (v!28738 (underlying!5556 (cache!2975 cacheUp!979))))))) (store mapRest!12826 mapKey!12827 mapValue!12828))))

(declare-fun mapIsEmpty!12828 () Bool)

(declare-fun mapRes!12828 () Bool)

(assert (=> mapIsEmpty!12828 mapRes!12828))

(declare-fun b!2135783 () Bool)

(declare-fun tp!658458 () Bool)

(assert (=> b!2135783 (= e!1363224 (and (inv!31828 (c!340340 (totalInput!3067 (h!29567 stack!8)))) tp!658458))))

(declare-fun b!2135784 () Bool)

(assert (=> b!2135784 (= e!1363256 from!1043)))

(declare-fun b!2135785 () Bool)

(declare-fun e!1363238 () Bool)

(declare-fun tp!658443 () Bool)

(assert (=> b!2135785 (= e!1363238 (and (inv!31828 (c!340340 (totalInput!3068 cacheFurthestNullable!114))) tp!658443))))

(declare-fun e!1363227 () Bool)

(assert (=> b!2135786 (= e!1363227 (and e!1363234 tp!658459))))

(declare-fun mapNonEmpty!12828 () Bool)

(declare-fun tp!658466 () Bool)

(declare-fun tp!658454 () Bool)

(assert (=> mapNonEmpty!12828 (= mapRes!12828 (and tp!658466 tp!658454))))

(declare-fun mapValue!12826 () List!24251)

(declare-fun mapKey!12828 () (_ BitVec 32))

(declare-fun mapRest!12828 () (Array (_ BitVec 32) List!24251))

(assert (=> mapNonEmpty!12828 (= (arr!4047 (_values!2958 (v!28733 (underlying!5551 (v!28734 (underlying!5552 (cache!2973 cacheFurthestNullable!114))))))) (store mapRest!12828 mapKey!12828 mapValue!12826))))

(declare-fun b!2135787 () Bool)

(declare-fun tp!658447 () Bool)

(assert (=> b!2135787 (= e!1363249 (and tp!658447 mapRes!12828))))

(declare-fun condMapEmpty!12828 () Bool)

(declare-fun mapDefault!12826 () List!24251)

(assert (=> b!2135787 (= condMapEmpty!12828 (= (arr!4047 (_values!2958 (v!28733 (underlying!5551 (v!28734 (underlying!5552 (cache!2973 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!24251)) mapDefault!12826)))))

(declare-fun setNonEmpty!15948 () Bool)

(declare-fun setElem!15949 () Context!2634)

(declare-fun tp!658465 () Bool)

(declare-fun inv!31834 (Context!2634) Bool)

(assert (=> setNonEmpty!15948 (= setRes!15948 (and tp!658465 (inv!31834 setElem!15949) e!1363239))))

(declare-fun setRest!15949 () (InoxSet Context!2634))

(assert (=> setNonEmpty!15948 (= z!3839 ((_ map or) (store ((as const (Array Context!2634 Bool)) false) setElem!15949 true) setRest!15949))))

(declare-fun b!2135788 () Bool)

(declare-fun e!1363248 () Bool)

(assert (=> b!2135788 (= e!1363248 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun b!2135789 () Bool)

(assert (=> b!2135789 (= e!1363247 e!1363251)))

(declare-fun b!2135790 () Bool)

(assert (=> b!2135790 (= e!1363250 e!1363254)))

(declare-fun res!922736 () Bool)

(assert (=> b!2135790 (=> (not res!922736) (not e!1363254))))

(assert (=> b!2135790 (= res!922736 (and (= totalInputSize!296 lt!797209) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun size!18905 (BalanceConc!15532) Int)

(assert (=> b!2135790 (= lt!797209 (size!18905 totalInput!851))))

(declare-fun b!2135791 () Bool)

(assert (=> b!2135791 (= e!1363230 e!1363261)))

(declare-fun b!2135792 () Bool)

(assert (=> b!2135792 (= e!1363255 (and e!1363227 (inv!31833 (totalInput!3068 cacheFurthestNullable!114)) e!1363238))))

(declare-fun b!2135793 () Bool)

(declare-fun res!922734 () Bool)

(assert (=> b!2135793 (=> (not res!922734) (not e!1363254))))

(assert (=> b!2135793 (= res!922734 e!1363248)))

(declare-fun res!922735 () Bool)

(assert (=> b!2135793 (=> res!922735 e!1363248)))

(assert (=> b!2135793 (= res!922735 (not (nullableZipper!121 z!3839)))))

(declare-fun b!2135794 () Bool)

(assert (=> b!2135794 (= e!1363252 e!1363246)))

(declare-fun tp!658450 () Bool)

(declare-fun tp!658455 () Bool)

(declare-fun e!1363243 () Bool)

(declare-fun array_inv!2896 (array!9073) Bool)

(assert (=> b!2135795 (= e!1363244 (and tp!658464 tp!658450 tp!658455 (array_inv!2893 (_keys!2976 (v!28735 (underlying!5553 (v!28736 (underlying!5554 (cache!2974 cacheDown!1098))))))) (array_inv!2896 (_values!2959 (v!28735 (underlying!5553 (v!28736 (underlying!5554 (cache!2974 cacheDown!1098))))))) e!1363243))))

(declare-fun b!2135796 () Bool)

(declare-fun res!922746 () Bool)

(assert (=> b!2135796 (=> (not res!922746) (not e!1363254))))

(declare-fun valid!2098 (CacheDown!1774) Bool)

(assert (=> b!2135796 (= res!922746 (valid!2098 cacheDown!1098))))

(declare-fun b!2135797 () Bool)

(declare-fun tp!658457 () Bool)

(assert (=> b!2135797 (= e!1363243 (and tp!658457 mapRes!12826))))

(declare-fun condMapEmpty!12827 () Bool)

(declare-fun mapDefault!12828 () List!24252)

(assert (=> b!2135797 (= condMapEmpty!12827 (= (arr!4048 (_values!2959 (v!28735 (underlying!5553 (v!28736 (underlying!5554 (cache!2974 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!24252)) mapDefault!12828)))))

(declare-fun setElem!15948 () Context!2634)

(declare-fun tp!658461 () Bool)

(declare-fun setNonEmpty!15949 () Bool)

(assert (=> setNonEmpty!15949 (= setRes!15949 (and tp!658461 (inv!31834 setElem!15948) e!1363241))))

(declare-fun setRest!15948 () (InoxSet Context!2634))

(assert (=> setNonEmpty!15949 (= (z!5818 (h!29567 stack!8)) ((_ map or) (store ((as const (Array Context!2634 Bool)) false) setElem!15948 true) setRest!15948))))

(declare-fun b!2135798 () Bool)

(declare-fun lt!797214 () MutLongMap!2679)

(assert (=> b!2135798 (= e!1363240 (and e!1363232 ((_ is LongMap!2679) lt!797214)))))

(assert (=> b!2135798 (= lt!797214 (v!28736 (underlying!5554 (cache!2974 cacheDown!1098))))))

(assert (= (and start!207600 res!922739) b!2135790))

(assert (= (and b!2135790 res!922736) b!2135793))

(assert (= (and b!2135793 (not res!922735)) b!2135788))

(assert (= (and b!2135793 res!922734) b!2135766))

(assert (= (and b!2135766 res!922740) b!2135796))

(assert (= (and b!2135796 res!922746) b!2135776))

(assert (= (and b!2135776 res!922743) b!2135758))

(assert (= (and b!2135758 res!922733) b!2135757))

(assert (= (and b!2135757 res!922745) b!2135762))

(assert (= (and b!2135762 res!922738) b!2135768))

(assert (= (and b!2135768 (not res!922744)) b!2135773))

(assert (= (and b!2135773 (not res!922742)) b!2135779))

(assert (= (and b!2135779 (not res!922737)) b!2135767))

(assert (= (and b!2135767 c!340338) b!2135784))

(assert (= (and b!2135767 (not c!340338)) b!2135772))

(assert (= (and b!2135767 (not res!922741)) b!2135755))

(assert (= (and b!2135787 condMapEmpty!12828) mapIsEmpty!12828))

(assert (= (and b!2135787 (not condMapEmpty!12828)) mapNonEmpty!12828))

(assert (= b!2135759 b!2135787))

(assert (= b!2135777 b!2135759))

(assert (= b!2135791 b!2135777))

(assert (= (and b!2135765 ((_ is LongMap!2678) (v!28734 (underlying!5552 (cache!2973 cacheFurthestNullable!114))))) b!2135791))

(assert (= b!2135786 b!2135765))

(assert (= (and b!2135792 ((_ is HashMap!2592) (cache!2973 cacheFurthestNullable!114))) b!2135786))

(assert (= b!2135792 b!2135785))

(assert (= start!207600 b!2135792))

(assert (= (and b!2135797 condMapEmpty!12827) mapIsEmpty!12827))

(assert (= (and b!2135797 (not condMapEmpty!12827)) mapNonEmpty!12826))

(assert (= b!2135795 b!2135797))

(assert (= b!2135769 b!2135795))

(assert (= b!2135764 b!2135769))

(assert (= (and b!2135798 ((_ is LongMap!2679) (v!28736 (underlying!5554 (cache!2974 cacheDown!1098))))) b!2135764))

(assert (= b!2135760 b!2135798))

(assert (= (and b!2135775 ((_ is HashMap!2593) (cache!2974 cacheDown!1098))) b!2135760))

(assert (= start!207600 b!2135775))

(assert (= (and b!2135763 condMapEmpty!12826) mapIsEmpty!12826))

(assert (= (and b!2135763 (not condMapEmpty!12826)) mapNonEmpty!12827))

(assert (= b!2135770 b!2135763))

(assert (= b!2135771 b!2135770))

(assert (= b!2135789 b!2135771))

(assert (= (and b!2135780 ((_ is LongMap!2680) (v!28738 (underlying!5556 (cache!2975 cacheUp!979))))) b!2135789))

(assert (= b!2135756 b!2135780))

(assert (= (and b!2135794 ((_ is HashMap!2594) (cache!2975 cacheUp!979))) b!2135756))

(assert (= start!207600 b!2135794))

(assert (= (and start!207600 condSetEmpty!15948) setIsEmpty!15948))

(assert (= (and start!207600 (not condSetEmpty!15948)) setNonEmpty!15948))

(assert (= setNonEmpty!15948 b!2135781))

(assert (= start!207600 b!2135761))

(assert (= (and b!2135782 condSetEmpty!15949) setIsEmpty!15949))

(assert (= (and b!2135782 (not condSetEmpty!15949)) setNonEmpty!15949))

(assert (= setNonEmpty!15949 b!2135778))

(assert (= b!2135782 b!2135783))

(assert (= b!2135774 b!2135782))

(assert (= (and start!207600 ((_ is Cons!24166) stack!8)) b!2135774))

(declare-fun m!2583362 () Bool)

(assert (=> b!2135755 m!2583362))

(declare-fun m!2583364 () Bool)

(assert (=> b!2135755 m!2583364))

(declare-fun m!2583366 () Bool)

(assert (=> b!2135755 m!2583366))

(declare-fun m!2583368 () Bool)

(assert (=> b!2135779 m!2583368))

(declare-fun m!2583370 () Bool)

(assert (=> start!207600 m!2583370))

(declare-fun m!2583372 () Bool)

(assert (=> start!207600 m!2583372))

(declare-fun m!2583374 () Bool)

(assert (=> start!207600 m!2583374))

(declare-fun m!2583376 () Bool)

(assert (=> start!207600 m!2583376))

(declare-fun m!2583378 () Bool)

(assert (=> setNonEmpty!15949 m!2583378))

(declare-fun m!2583380 () Bool)

(assert (=> mapNonEmpty!12827 m!2583380))

(declare-fun m!2583382 () Bool)

(assert (=> mapNonEmpty!12826 m!2583382))

(declare-fun m!2583384 () Bool)

(assert (=> b!2135782 m!2583384))

(declare-fun m!2583386 () Bool)

(assert (=> b!2135770 m!2583386))

(declare-fun m!2583388 () Bool)

(assert (=> b!2135770 m!2583388))

(declare-fun m!2583390 () Bool)

(assert (=> b!2135785 m!2583390))

(declare-fun m!2583392 () Bool)

(assert (=> b!2135793 m!2583392))

(declare-fun m!2583394 () Bool)

(assert (=> b!2135776 m!2583394))

(declare-fun m!2583396 () Bool)

(assert (=> setNonEmpty!15948 m!2583396))

(declare-fun m!2583398 () Bool)

(assert (=> b!2135759 m!2583398))

(declare-fun m!2583400 () Bool)

(assert (=> b!2135759 m!2583400))

(declare-fun m!2583402 () Bool)

(assert (=> b!2135790 m!2583402))

(declare-fun m!2583404 () Bool)

(assert (=> b!2135766 m!2583404))

(declare-fun m!2583406 () Bool)

(assert (=> mapNonEmpty!12828 m!2583406))

(declare-fun m!2583408 () Bool)

(assert (=> b!2135783 m!2583408))

(declare-fun m!2583410 () Bool)

(assert (=> b!2135767 m!2583410))

(declare-fun m!2583412 () Bool)

(assert (=> b!2135767 m!2583412))

(declare-fun m!2583414 () Bool)

(assert (=> b!2135767 m!2583414))

(assert (=> b!2135767 m!2583414))

(declare-fun m!2583416 () Bool)

(assert (=> b!2135767 m!2583416))

(declare-fun m!2583418 () Bool)

(assert (=> b!2135762 m!2583418))

(declare-fun m!2583420 () Bool)

(assert (=> b!2135761 m!2583420))

(declare-fun m!2583422 () Bool)

(assert (=> b!2135795 m!2583422))

(declare-fun m!2583424 () Bool)

(assert (=> b!2135795 m!2583424))

(declare-fun m!2583426 () Bool)

(assert (=> b!2135796 m!2583426))

(declare-fun m!2583428 () Bool)

(assert (=> b!2135792 m!2583428))

(declare-fun m!2583430 () Bool)

(assert (=> b!2135768 m!2583430))

(assert (=> b!2135768 m!2583366))

(declare-fun m!2583432 () Bool)

(assert (=> b!2135774 m!2583432))

(assert (=> b!2135757 m!2583366))

(declare-fun m!2583434 () Bool)

(assert (=> b!2135757 m!2583434))

(check-sat b_and!172207 (not setNonEmpty!15948) (not b!2135795) (not b!2135766) (not b!2135782) (not b!2135768) (not b!2135761) (not b!2135779) (not b!2135781) (not b!2135755) (not mapNonEmpty!12826) (not b!2135787) (not b!2135757) (not b!2135785) b_and!172211 (not b!2135762) (not b!2135774) (not b!2135790) (not mapNonEmpty!12828) (not b!2135759) (not b!2135792) (not setNonEmpty!15949) (not b_next!63329) (not b!2135763) (not b!2135797) (not b_next!63325) (not b_next!63331) (not b!2135796) b_and!172209 (not b_next!63333) (not b!2135778) (not b_next!63335) b_and!172201 (not mapNonEmpty!12827) (not b!2135793) (not b!2135767) b_and!172203 b_and!172205 (not b_next!63327) (not b!2135776) (not start!207600) (not b!2135770) (not b!2135783))
(check-sat b_and!172207 b_and!172211 (not b_next!63329) b_and!172209 (not b_next!63327) (not b_next!63325) (not b_next!63331) (not b_next!63333) (not b_next!63335) b_and!172201 b_and!172203 b_and!172205)
