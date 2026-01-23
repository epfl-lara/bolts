; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207568 () Bool)

(assert start!207568)

(declare-fun b!2133607 () Bool)

(declare-fun b_free!62429 () Bool)

(declare-fun b_next!63133 () Bool)

(assert (=> b!2133607 (= b_free!62429 (not b_next!63133))))

(declare-fun tp!657061 () Bool)

(declare-fun b_and!172009 () Bool)

(assert (=> b!2133607 (= tp!657061 b_and!172009)))

(declare-fun b!2133577 () Bool)

(declare-fun b_free!62431 () Bool)

(declare-fun b_next!63135 () Bool)

(assert (=> b!2133577 (= b_free!62431 (not b_next!63135))))

(declare-fun tp!657049 () Bool)

(declare-fun b_and!172011 () Bool)

(assert (=> b!2133577 (= tp!657049 b_and!172011)))

(declare-fun b!2133591 () Bool)

(declare-fun b_free!62433 () Bool)

(declare-fun b_next!63137 () Bool)

(assert (=> b!2133591 (= b_free!62433 (not b_next!63137))))

(declare-fun tp!657072 () Bool)

(declare-fun b_and!172013 () Bool)

(assert (=> b!2133591 (= tp!657072 b_and!172013)))

(declare-fun b!2133578 () Bool)

(declare-fun b_free!62435 () Bool)

(declare-fun b_next!63139 () Bool)

(assert (=> b!2133578 (= b_free!62435 (not b_next!63139))))

(declare-fun tp!657064 () Bool)

(declare-fun b_and!172015 () Bool)

(assert (=> b!2133578 (= tp!657064 b_and!172015)))

(declare-fun b!2133590 () Bool)

(declare-fun b_free!62437 () Bool)

(declare-fun b_next!63141 () Bool)

(assert (=> b!2133590 (= b_free!62437 (not b_next!63141))))

(declare-fun tp!657055 () Bool)

(declare-fun b_and!172017 () Bool)

(assert (=> b!2133590 (= tp!657055 b_and!172017)))

(declare-fun b!2133610 () Bool)

(declare-fun b_free!62439 () Bool)

(declare-fun b_next!63143 () Bool)

(assert (=> b!2133610 (= b_free!62439 (not b_next!63143))))

(declare-fun tp!657065 () Bool)

(declare-fun b_and!172019 () Bool)

(assert (=> b!2133610 (= tp!657065 b_and!172019)))

(declare-fun b!2133586 () Bool)

(assert (=> b!2133586 true))

(declare-fun bs!444288 () Bool)

(declare-fun b!2133573 () Bool)

(assert (= bs!444288 (and b!2133573 b!2133586)))

(declare-fun lambda!79339 () Int)

(declare-fun lambda!79338 () Int)

(assert (=> bs!444288 (not (= lambda!79339 lambda!79338))))

(assert (=> b!2133573 true))

(declare-fun b!2133567 () Bool)

(declare-fun e!1361407 () Bool)

(declare-fun e!1361423 () Bool)

(assert (=> b!2133567 (= e!1361407 e!1361423)))

(declare-fun res!922028 () Bool)

(assert (=> b!2133567 (=> res!922028 e!1361423)))

(declare-fun e!1361418 () Int)

(declare-datatypes ((C!11608 0))(
  ( (C!11609 (val!6790 Int)) )
))
(declare-datatypes ((Regex!5731 0))(
  ( (ElementMatch!5731 (c!340265 C!11608)) (Concat!10033 (regOne!11974 Regex!5731) (regTwo!11974 Regex!5731)) (EmptyExpr!5731) (Star!5731 (reg!6060 Regex!5731)) (EmptyLang!5731) (Union!5731 (regOne!11975 Regex!5731) (regTwo!11975 Regex!5731)) )
))
(declare-datatypes ((List!24158 0))(
  ( (Nil!24074) (Cons!24074 (h!29475 Regex!5731) (t!196686 List!24158)) )
))
(declare-datatypes ((Context!2602 0))(
  ( (Context!2603 (exprs!1801 List!24158)) )
))
(declare-datatypes ((tuple3!3202 0))(
  ( (tuple3!3203 (_1!13989 Regex!5731) (_2!13989 Context!2602) (_3!2071 C!11608)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!23836 0))(
  ( (tuple2!23837 (_1!13990 tuple3!3202) (_2!13990 (InoxSet Context!2602))) )
))
(declare-datatypes ((List!24159 0))(
  ( (Nil!24075) (Cons!24075 (h!29476 tuple2!23836) (t!196687 List!24159)) )
))
(declare-datatypes ((tuple2!23838 0))(
  ( (tuple2!23839 (_1!13991 Context!2602) (_2!13991 C!11608)) )
))
(declare-datatypes ((tuple2!23840 0))(
  ( (tuple2!23841 (_1!13992 tuple2!23838) (_2!13992 (InoxSet Context!2602))) )
))
(declare-datatypes ((List!24160 0))(
  ( (Nil!24076) (Cons!24076 (h!29477 tuple2!23840) (t!196688 List!24160)) )
))
(declare-datatypes ((Hashable!2547 0))(
  ( (HashableExt!2546 (__x!16075 Int)) )
))
(declare-datatypes ((Hashable!2548 0))(
  ( (HashableExt!2547 (__x!16076 Int)) )
))
(declare-datatypes ((array!8947 0))(
  ( (array!8948 (arr!3985 (Array (_ BitVec 32) (_ BitVec 64))) (size!18829 (_ BitVec 32))) )
))
(declare-datatypes ((array!8949 0))(
  ( (array!8950 (arr!3986 (Array (_ BitVec 32) List!24160)) (size!18830 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5266 0))(
  ( (LongMapFixedSize!5267 (defaultEntry!2998 Int) (mask!6814 (_ BitVec 32)) (extraKeys!2881 (_ BitVec 32)) (zeroValue!2891 List!24160) (minValue!2891 List!24160) (_size!5317 (_ BitVec 32)) (_keys!2930 array!8947) (_values!2913 array!8949) (_vacant!2694 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10357 0))(
  ( (Cell!10358 (v!28633 LongMapFixedSize!5266)) )
))
(declare-datatypes ((MutLongMap!2633 0))(
  ( (LongMap!2633 (underlying!5461 Cell!10357)) (MutLongMapExt!2632 (__x!16077 Int)) )
))
(declare-datatypes ((Cell!10359 0))(
  ( (Cell!10360 (v!28634 MutLongMap!2633)) )
))
(declare-datatypes ((MutableMap!2547 0))(
  ( (MutableMapExt!2546 (__x!16078 Int)) (HashMap!2547 (underlying!5462 Cell!10359) (hashF!4470 Hashable!2547) (_size!5318 (_ BitVec 32)) (defaultValue!2709 Int)) )
))
(declare-datatypes ((CacheUp!1764 0))(
  ( (CacheUp!1765 (cache!2928 MutableMap!2547)) )
))
(declare-datatypes ((array!8951 0))(
  ( (array!8952 (arr!3987 (Array (_ BitVec 32) List!24159)) (size!18831 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5268 0))(
  ( (LongMapFixedSize!5269 (defaultEntry!2999 Int) (mask!6815 (_ BitVec 32)) (extraKeys!2882 (_ BitVec 32)) (zeroValue!2892 List!24159) (minValue!2892 List!24159) (_size!5319 (_ BitVec 32)) (_keys!2931 array!8947) (_values!2914 array!8951) (_vacant!2695 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10361 0))(
  ( (Cell!10362 (v!28635 LongMapFixedSize!5268)) )
))
(declare-datatypes ((MutLongMap!2634 0))(
  ( (LongMap!2634 (underlying!5463 Cell!10361)) (MutLongMapExt!2633 (__x!16079 Int)) )
))
(declare-datatypes ((Cell!10363 0))(
  ( (Cell!10364 (v!28636 MutLongMap!2634)) )
))
(declare-datatypes ((MutableMap!2548 0))(
  ( (MutableMapExt!2547 (__x!16080 Int)) (HashMap!2548 (underlying!5464 Cell!10363) (hashF!4471 Hashable!2548) (_size!5320 (_ BitVec 32)) (defaultValue!2710 Int)) )
))
(declare-datatypes ((CacheDown!1746 0))(
  ( (CacheDown!1747 (cache!2929 MutableMap!2548)) )
))
(declare-datatypes ((tuple3!3204 0))(
  ( (tuple3!3205 (_1!13993 (InoxSet Context!2602)) (_2!13993 CacheUp!1764) (_3!2072 CacheDown!1746)) )
))
(declare-fun lt!796868 () tuple3!3204)

(declare-fun lt!796869 () Int)

(declare-fun lt!796870 () Int)

(declare-fun from!1043 () Int)

(declare-datatypes ((List!24161 0))(
  ( (Nil!24077) (Cons!24077 (h!29478 C!11608) (t!196689 List!24161)) )
))
(declare-datatypes ((IArray!15743 0))(
  ( (IArray!15744 (innerList!7929 List!24161)) )
))
(declare-datatypes ((Conc!7869 0))(
  ( (Node!7869 (left!18555 Conc!7869) (right!18885 Conc!7869) (csize!15968 Int) (cheight!8080 Int)) (Leaf!11502 (xs!10811 IArray!15743) (csize!15969 Int)) (Empty!7869) )
))
(declare-datatypes ((BalanceConc!15500 0))(
  ( (BalanceConc!15501 (c!340266 Conc!7869)) )
))
(declare-fun totalInput!851 () BalanceConc!15500)

(declare-fun furthestNullablePosition!44 ((InoxSet Context!2602) Int BalanceConc!15500 Int Int) Int)

(assert (=> b!2133567 (= res!922028 (not (= lt!796869 (furthestNullablePosition!44 (_1!13993 lt!796868) (+ 1 from!1043) totalInput!851 lt!796870 e!1361418))))))

(declare-fun c!340264 () Bool)

(declare-fun nullableZipper!111 ((InoxSet Context!2602)) Bool)

(assert (=> b!2133567 (= c!340264 (nullableZipper!111 (_1!13993 lt!796868)))))

(declare-fun z!3839 () (InoxSet Context!2602))

(declare-fun cacheDown!1098 () CacheDown!1746)

(declare-fun cacheUp!979 () CacheUp!1764)

(declare-fun derivationStepZipperMem!34 ((InoxSet Context!2602) C!11608 CacheUp!1764 CacheDown!1746) tuple3!3204)

(declare-fun apply!5933 (BalanceConc!15500 Int) C!11608)

(assert (=> b!2133567 (= lt!796868 (derivationStepZipperMem!34 z!3839 (apply!5933 totalInput!851 from!1043) cacheUp!979 cacheDown!1098))))

(declare-fun b!2133568 () Bool)

(declare-fun e!1361389 () Bool)

(declare-fun e!1361408 () Bool)

(assert (=> b!2133568 (= e!1361389 e!1361408)))

(declare-fun b!2133569 () Bool)

(declare-fun e!1361415 () Bool)

(assert (=> b!2133569 (= e!1361415 (not e!1361407))))

(declare-fun res!922034 () Bool)

(assert (=> b!2133569 (=> res!922034 e!1361407)))

(declare-datatypes ((tuple3!3206 0))(
  ( (tuple3!3207 (_1!13994 (InoxSet Context!2602)) (_2!13994 Int) (_3!2073 Int)) )
))
(declare-datatypes ((tuple2!23842 0))(
  ( (tuple2!23843 (_1!13995 tuple3!3206) (_2!13995 Int)) )
))
(declare-datatypes ((List!24162 0))(
  ( (Nil!24078) (Cons!24078 (h!29479 tuple2!23842) (t!196690 List!24162)) )
))
(declare-datatypes ((array!8953 0))(
  ( (array!8954 (arr!3988 (Array (_ BitVec 32) List!24162)) (size!18832 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5270 0))(
  ( (LongMapFixedSize!5271 (defaultEntry!3000 Int) (mask!6816 (_ BitVec 32)) (extraKeys!2883 (_ BitVec 32)) (zeroValue!2893 List!24162) (minValue!2893 List!24162) (_size!5321 (_ BitVec 32)) (_keys!2932 array!8947) (_values!2915 array!8953) (_vacant!2696 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10365 0))(
  ( (Cell!10366 (v!28637 LongMapFixedSize!5270)) )
))
(declare-datatypes ((MutLongMap!2635 0))(
  ( (LongMap!2635 (underlying!5465 Cell!10365)) (MutLongMapExt!2634 (__x!16081 Int)) )
))
(declare-datatypes ((Cell!10367 0))(
  ( (Cell!10368 (v!28638 MutLongMap!2635)) )
))
(declare-datatypes ((Hashable!2549 0))(
  ( (HashableExt!2548 (__x!16082 Int)) )
))
(declare-datatypes ((MutableMap!2549 0))(
  ( (MutableMapExt!2548 (__x!16083 Int)) (HashMap!2549 (underlying!5466 Cell!10367) (hashF!4472 Hashable!2549) (_size!5322 (_ BitVec 32)) (defaultValue!2711 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!708 0))(
  ( (CacheFurthestNullable!709 (cache!2930 MutableMap!2549) (totalInput!3038 BalanceConc!15500)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!708)

(declare-fun lastNullablePos!123 () Int)

(get-info :version)

(declare-datatypes ((Option!4903 0))(
  ( (None!4902) (Some!4902 (v!28639 Int)) )
))
(declare-fun get!7378 (CacheFurthestNullable!708 (InoxSet Context!2602) Int Int) Option!4903)

(assert (=> b!2133569 (= res!922034 ((_ is Some!4902) (get!7378 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123)))))

(declare-datatypes ((StackFrame!154 0))(
  ( (StackFrame!155 (z!5805 (InoxSet Context!2602)) (from!2691 Int) (lastNullablePos!378 Int) (res!922038 Int) (totalInput!3039 BalanceConc!15500)) )
))
(declare-datatypes ((List!24163 0))(
  ( (Nil!24079) (Cons!24079 (h!29480 StackFrame!154) (t!196691 List!24163)) )
))
(declare-fun stack!8 () List!24163)

(declare-fun forall!4921 (List!24163 Int) Bool)

(assert (=> b!2133569 (forall!4921 stack!8 lambda!79338)))

(declare-fun b!2133570 () Bool)

(declare-fun e!1361414 () Bool)

(declare-fun tp!657056 () Bool)

(declare-fun inv!31725 (Conc!7869) Bool)

(assert (=> b!2133570 (= e!1361414 (and (inv!31725 (c!340266 totalInput!851)) tp!657056))))

(declare-fun res!922037 () Bool)

(declare-fun e!1361417 () Bool)

(assert (=> start!207568 (=> (not res!922037) (not e!1361417))))

(declare-fun totalInputSize!296 () Int)

(assert (=> start!207568 (= res!922037 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!207568 e!1361417))

(declare-fun e!1361405 () Bool)

(declare-fun inv!31726 (CacheFurthestNullable!708) Bool)

(assert (=> start!207568 (and (inv!31726 cacheFurthestNullable!114) e!1361405)))

(assert (=> start!207568 true))

(declare-fun e!1361388 () Bool)

(declare-fun inv!31727 (CacheDown!1746) Bool)

(assert (=> start!207568 (and (inv!31727 cacheDown!1098) e!1361388)))

(declare-fun e!1361392 () Bool)

(declare-fun inv!31728 (CacheUp!1764) Bool)

(assert (=> start!207568 (and (inv!31728 cacheUp!979) e!1361392)))

(declare-fun condSetEmpty!15853 () Bool)

(assert (=> start!207568 (= condSetEmpty!15853 (= z!3839 ((as const (Array Context!2602 Bool)) false)))))

(declare-fun setRes!15853 () Bool)

(assert (=> start!207568 setRes!15853))

(declare-fun inv!31729 (BalanceConc!15500) Bool)

(assert (=> start!207568 (and (inv!31729 totalInput!851) e!1361414)))

(declare-fun e!1361390 () Bool)

(assert (=> start!207568 e!1361390))

(declare-fun b!2133571 () Bool)

(declare-fun e!1361399 () Bool)

(declare-fun e!1361424 () Bool)

(assert (=> b!2133571 (= e!1361399 e!1361424)))

(declare-fun b!2133572 () Bool)

(declare-fun e!1361404 () Bool)

(assert (=> b!2133572 (= e!1361404 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun res!922029 () Bool)

(assert (=> b!2133573 (=> (not res!922029) (not e!1361415))))

(assert (=> b!2133573 (= res!922029 (forall!4921 stack!8 lambda!79339))))

(declare-fun b!2133574 () Bool)

(declare-fun e!1361421 () Bool)

(declare-fun tp!657075 () Bool)

(assert (=> b!2133574 (= e!1361421 tp!657075)))

(declare-fun b!2133575 () Bool)

(assert (=> b!2133575 (= e!1361418 from!1043)))

(declare-fun mapNonEmpty!12682 () Bool)

(declare-fun mapRes!12682 () Bool)

(declare-fun tp!657071 () Bool)

(declare-fun tp!657048 () Bool)

(assert (=> mapNonEmpty!12682 (= mapRes!12682 (and tp!657071 tp!657048))))

(declare-fun mapRest!12683 () (Array (_ BitVec 32) List!24159))

(declare-fun mapKey!12684 () (_ BitVec 32))

(declare-fun mapValue!12684 () List!24159)

(assert (=> mapNonEmpty!12682 (= (arr!3987 (_values!2914 (v!28635 (underlying!5463 (v!28636 (underlying!5464 (cache!2929 cacheDown!1098))))))) (store mapRest!12683 mapKey!12684 mapValue!12684))))

(declare-fun b!2133576 () Bool)

(declare-fun e!1361411 () Bool)

(declare-fun tp!657063 () Bool)

(assert (=> b!2133576 (= e!1361411 tp!657063)))

(declare-fun tp!657062 () Bool)

(declare-fun tp!657057 () Bool)

(declare-fun e!1361409 () Bool)

(declare-fun e!1361425 () Bool)

(declare-fun array_inv!2850 (array!8947) Bool)

(declare-fun array_inv!2851 (array!8949) Bool)

(assert (=> b!2133577 (= e!1361425 (and tp!657049 tp!657057 tp!657062 (array_inv!2850 (_keys!2930 (v!28633 (underlying!5461 (v!28634 (underlying!5462 (cache!2928 cacheUp!979))))))) (array_inv!2851 (_values!2913 (v!28633 (underlying!5461 (v!28634 (underlying!5462 (cache!2928 cacheUp!979))))))) e!1361409))))

(declare-fun e!1361416 () Bool)

(declare-fun tp!657060 () Bool)

(declare-fun tp!657070 () Bool)

(declare-fun e!1361420 () Bool)

(declare-fun array_inv!2852 (array!8953) Bool)

(assert (=> b!2133578 (= e!1361416 (and tp!657064 tp!657060 tp!657070 (array_inv!2850 (_keys!2932 (v!28637 (underlying!5465 (v!28638 (underlying!5466 (cache!2930 cacheFurthestNullable!114))))))) (array_inv!2852 (_values!2915 (v!28637 (underlying!5465 (v!28638 (underlying!5466 (cache!2930 cacheFurthestNullable!114))))))) e!1361420))))

(declare-fun b!2133579 () Bool)

(declare-fun res!922025 () Bool)

(assert (=> b!2133579 (=> res!922025 e!1361407)))

(assert (=> b!2133579 (= res!922025 (= from!1043 totalInputSize!296))))

(declare-fun b!2133580 () Bool)

(declare-fun res!922027 () Bool)

(declare-fun e!1361419 () Bool)

(assert (=> b!2133580 (=> (not res!922027) (not e!1361419))))

(assert (=> b!2133580 (= res!922027 (= (totalInput!3038 cacheFurthestNullable!114) totalInput!851))))

(declare-fun b!2133581 () Bool)

(declare-fun e!1361402 () Bool)

(declare-fun tp!657074 () Bool)

(assert (=> b!2133581 (= e!1361402 (and tp!657074 mapRes!12682))))

(declare-fun condMapEmpty!12684 () Bool)

(declare-fun mapDefault!12683 () List!24159)

(assert (=> b!2133581 (= condMapEmpty!12684 (= (arr!3987 (_values!2914 (v!28635 (underlying!5463 (v!28636 (underlying!5464 (cache!2929 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!24159)) mapDefault!12683)))))

(declare-fun mapIsEmpty!12682 () Bool)

(declare-fun mapRes!12684 () Bool)

(assert (=> mapIsEmpty!12682 mapRes!12684))

(declare-fun b!2133582 () Bool)

(declare-fun e!1361397 () Bool)

(declare-fun e!1361398 () Bool)

(declare-fun lt!796872 () MutLongMap!2634)

(assert (=> b!2133582 (= e!1361397 (and e!1361398 ((_ is LongMap!2634) lt!796872)))))

(assert (=> b!2133582 (= lt!796872 (v!28636 (underlying!5464 (cache!2929 cacheDown!1098))))))

(declare-fun mapIsEmpty!12683 () Bool)

(declare-fun mapRes!12683 () Bool)

(assert (=> mapIsEmpty!12683 mapRes!12683))

(declare-fun b!2133583 () Bool)

(assert (=> b!2133583 (= e!1361417 e!1361419)))

(declare-fun res!922031 () Bool)

(assert (=> b!2133583 (=> (not res!922031) (not e!1361419))))

(assert (=> b!2133583 (= res!922031 (and (= totalInputSize!296 lt!796870) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun size!18833 (BalanceConc!15500) Int)

(assert (=> b!2133583 (= lt!796870 (size!18833 totalInput!851))))

(declare-fun b!2133584 () Bool)

(declare-fun e!1361410 () Bool)

(declare-fun e!1361395 () Bool)

(declare-fun lt!796867 () MutLongMap!2635)

(assert (=> b!2133584 (= e!1361410 (and e!1361395 ((_ is LongMap!2635) lt!796867)))))

(assert (=> b!2133584 (= lt!796867 (v!28638 (underlying!5466 (cache!2930 cacheFurthestNullable!114))))))

(declare-fun b!2133585 () Bool)

(declare-fun tp!657066 () Bool)

(assert (=> b!2133585 (= e!1361409 (and tp!657066 mapRes!12683))))

(declare-fun condMapEmpty!12683 () Bool)

(declare-fun mapDefault!12682 () List!24160)

(assert (=> b!2133585 (= condMapEmpty!12683 (= (arr!3986 (_values!2913 (v!28633 (underlying!5461 (v!28634 (underlying!5462 (cache!2928 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!24160)) mapDefault!12682)))))

(assert (=> b!2133586 (= e!1361419 e!1361415)))

(declare-fun res!922030 () Bool)

(assert (=> b!2133586 (=> (not res!922030) (not e!1361415))))

(assert (=> b!2133586 (= res!922030 (forall!4921 stack!8 lambda!79338))))

(assert (=> b!2133586 (= lt!796869 (furthestNullablePosition!44 z!3839 from!1043 totalInput!851 lt!796870 lastNullablePos!123))))

(declare-fun b!2133587 () Bool)

(declare-fun res!922032 () Bool)

(assert (=> b!2133587 (=> (not res!922032) (not e!1361419))))

(assert (=> b!2133587 (= res!922032 e!1361404)))

(declare-fun res!922036 () Bool)

(assert (=> b!2133587 (=> res!922036 e!1361404)))

(assert (=> b!2133587 (= res!922036 (not (nullableZipper!111 z!3839)))))

(declare-fun b!2133588 () Bool)

(assert (=> b!2133588 (= e!1361398 e!1361389)))

(declare-fun b!2133589 () Bool)

(assert (=> b!2133589 (= e!1361424 e!1361425)))

(declare-fun e!1361393 () Bool)

(declare-fun e!1361412 () Bool)

(assert (=> b!2133590 (= e!1361393 (and e!1361412 tp!657055))))

(declare-fun mapNonEmpty!12683 () Bool)

(declare-fun tp!657051 () Bool)

(declare-fun tp!657052 () Bool)

(assert (=> mapNonEmpty!12683 (= mapRes!12683 (and tp!657051 tp!657052))))

(declare-fun mapValue!12682 () List!24160)

(declare-fun mapRest!12682 () (Array (_ BitVec 32) List!24160))

(declare-fun mapKey!12682 () (_ BitVec 32))

(assert (=> mapNonEmpty!12683 (= (arr!3986 (_values!2913 (v!28633 (underlying!5461 (v!28634 (underlying!5462 (cache!2928 cacheUp!979))))))) (store mapRest!12682 mapKey!12682 mapValue!12682))))

(declare-fun e!1361401 () Bool)

(assert (=> b!2133591 (= e!1361401 (and e!1361397 tp!657072))))

(declare-fun setElem!15852 () Context!2602)

(declare-fun setNonEmpty!15852 () Bool)

(declare-fun setRes!15852 () Bool)

(declare-fun tp!657073 () Bool)

(declare-fun inv!31730 (Context!2602) Bool)

(assert (=> setNonEmpty!15852 (= setRes!15852 (and tp!657073 (inv!31730 setElem!15852) e!1361421))))

(declare-fun setRest!15852 () (InoxSet Context!2602))

(assert (=> setNonEmpty!15852 (= (z!5805 (h!29480 stack!8)) ((_ map or) (store ((as const (Array Context!2602 Bool)) false) setElem!15852 true) setRest!15852))))

(declare-fun b!2133592 () Bool)

(assert (=> b!2133592 (= e!1361388 e!1361401)))

(declare-fun b!2133593 () Bool)

(assert (=> b!2133593 (= e!1361423 (<= from!1043 lt!796870))))

(declare-fun b!2133594 () Bool)

(assert (=> b!2133594 (= e!1361418 lastNullablePos!123)))

(declare-fun b!2133595 () Bool)

(declare-fun e!1361400 () Bool)

(declare-fun tp!657058 () Bool)

(assert (=> b!2133595 (= e!1361400 (and (inv!31725 (c!340266 (totalInput!3039 (h!29480 stack!8)))) tp!657058))))

(declare-fun b!2133596 () Bool)

(declare-fun res!922033 () Bool)

(assert (=> b!2133596 (=> (not res!922033) (not e!1361419))))

(declare-fun valid!2062 (CacheUp!1764) Bool)

(assert (=> b!2133596 (= res!922033 (valid!2062 cacheUp!979))))

(declare-fun e!1361394 () Bool)

(declare-fun b!2133597 () Bool)

(assert (=> b!2133597 (= e!1361394 (and setRes!15852 (inv!31729 (totalInput!3039 (h!29480 stack!8))) e!1361400))))

(declare-fun condSetEmpty!15852 () Bool)

(assert (=> b!2133597 (= condSetEmpty!15852 (= (z!5805 (h!29480 stack!8)) ((as const (Array Context!2602 Bool)) false)))))

(declare-fun mapNonEmpty!12684 () Bool)

(declare-fun tp!657054 () Bool)

(declare-fun tp!657059 () Bool)

(assert (=> mapNonEmpty!12684 (= mapRes!12684 (and tp!657054 tp!657059))))

(declare-fun mapKey!12683 () (_ BitVec 32))

(declare-fun mapValue!12683 () List!24162)

(declare-fun mapRest!12684 () (Array (_ BitVec 32) List!24162))

(assert (=> mapNonEmpty!12684 (= (arr!3988 (_values!2915 (v!28637 (underlying!5465 (v!28638 (underlying!5466 (cache!2930 cacheFurthestNullable!114))))))) (store mapRest!12684 mapKey!12683 mapValue!12683))))

(declare-fun b!2133598 () Bool)

(assert (=> b!2133598 (= e!1361392 e!1361393)))

(declare-fun b!2133599 () Bool)

(declare-fun e!1361403 () Bool)

(declare-fun e!1361413 () Bool)

(assert (=> b!2133599 (= e!1361405 (and e!1361403 (inv!31729 (totalInput!3038 cacheFurthestNullable!114)) e!1361413))))

(declare-fun b!2133600 () Bool)

(declare-fun tp!657067 () Bool)

(declare-fun inv!31731 (StackFrame!154) Bool)

(assert (=> b!2133600 (= e!1361390 (and (inv!31731 (h!29480 stack!8)) e!1361394 tp!657067))))

(declare-fun setIsEmpty!15852 () Bool)

(assert (=> setIsEmpty!15852 setRes!15853))

(declare-fun b!2133601 () Bool)

(declare-fun tp!657069 () Bool)

(assert (=> b!2133601 (= e!1361420 (and tp!657069 mapRes!12684))))

(declare-fun condMapEmpty!12682 () Bool)

(declare-fun mapDefault!12684 () List!24162)

(assert (=> b!2133601 (= condMapEmpty!12682 (= (arr!3988 (_values!2915 (v!28637 (underlying!5465 (v!28638 (underlying!5466 (cache!2930 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!24162)) mapDefault!12684)))))

(declare-fun b!2133602 () Bool)

(declare-fun tp!657050 () Bool)

(assert (=> b!2133602 (= e!1361413 (and (inv!31725 (c!340266 (totalInput!3038 cacheFurthestNullable!114))) tp!657050))))

(declare-fun mapIsEmpty!12684 () Bool)

(assert (=> mapIsEmpty!12684 mapRes!12682))

(declare-fun b!2133603 () Bool)

(declare-fun lt!796871 () MutLongMap!2633)

(assert (=> b!2133603 (= e!1361412 (and e!1361399 ((_ is LongMap!2633) lt!796871)))))

(assert (=> b!2133603 (= lt!796871 (v!28634 (underlying!5462 (cache!2928 cacheUp!979))))))

(declare-fun b!2133604 () Bool)

(declare-fun res!922035 () Bool)

(assert (=> b!2133604 (=> (not res!922035) (not e!1361419))))

(declare-fun valid!2063 (CacheFurthestNullable!708) Bool)

(assert (=> b!2133604 (= res!922035 (valid!2063 cacheFurthestNullable!114))))

(declare-fun b!2133605 () Bool)

(declare-fun e!1361396 () Bool)

(assert (=> b!2133605 (= e!1361395 e!1361396)))

(declare-fun b!2133606 () Bool)

(declare-fun res!922026 () Bool)

(assert (=> b!2133606 (=> res!922026 e!1361407)))

(declare-fun lostCauseZipper!84 ((InoxSet Context!2602)) Bool)

(assert (=> b!2133606 (= res!922026 (lostCauseZipper!84 z!3839))))

(assert (=> b!2133607 (= e!1361403 (and e!1361410 tp!657061))))

(declare-fun tp!657068 () Bool)

(declare-fun setNonEmpty!15853 () Bool)

(declare-fun setElem!15853 () Context!2602)

(assert (=> setNonEmpty!15853 (= setRes!15853 (and tp!657068 (inv!31730 setElem!15853) e!1361411))))

(declare-fun setRest!15853 () (InoxSet Context!2602))

(assert (=> setNonEmpty!15853 (= z!3839 ((_ map or) (store ((as const (Array Context!2602 Bool)) false) setElem!15853 true) setRest!15853))))

(declare-fun b!2133608 () Bool)

(declare-fun res!922024 () Bool)

(assert (=> b!2133608 (=> (not res!922024) (not e!1361419))))

(declare-fun valid!2064 (CacheDown!1746) Bool)

(assert (=> b!2133608 (= res!922024 (valid!2064 cacheDown!1098))))

(declare-fun b!2133609 () Bool)

(assert (=> b!2133609 (= e!1361396 e!1361416)))

(declare-fun setIsEmpty!15853 () Bool)

(assert (=> setIsEmpty!15853 setRes!15852))

(declare-fun tp!657076 () Bool)

(declare-fun tp!657053 () Bool)

(declare-fun array_inv!2853 (array!8951) Bool)

(assert (=> b!2133610 (= e!1361408 (and tp!657065 tp!657076 tp!657053 (array_inv!2850 (_keys!2931 (v!28635 (underlying!5463 (v!28636 (underlying!5464 (cache!2929 cacheDown!1098))))))) (array_inv!2853 (_values!2914 (v!28635 (underlying!5463 (v!28636 (underlying!5464 (cache!2929 cacheDown!1098))))))) e!1361402))))

(assert (= (and start!207568 res!922037) b!2133583))

(assert (= (and b!2133583 res!922031) b!2133587))

(assert (= (and b!2133587 (not res!922036)) b!2133572))

(assert (= (and b!2133587 res!922032) b!2133596))

(assert (= (and b!2133596 res!922033) b!2133608))

(assert (= (and b!2133608 res!922024) b!2133604))

(assert (= (and b!2133604 res!922035) b!2133580))

(assert (= (and b!2133580 res!922027) b!2133586))

(assert (= (and b!2133586 res!922030) b!2133573))

(assert (= (and b!2133573 res!922029) b!2133569))

(assert (= (and b!2133569 (not res!922034)) b!2133579))

(assert (= (and b!2133579 (not res!922025)) b!2133606))

(assert (= (and b!2133606 (not res!922026)) b!2133567))

(assert (= (and b!2133567 c!340264) b!2133575))

(assert (= (and b!2133567 (not c!340264)) b!2133594))

(assert (= (and b!2133567 (not res!922028)) b!2133593))

(assert (= (and b!2133601 condMapEmpty!12682) mapIsEmpty!12682))

(assert (= (and b!2133601 (not condMapEmpty!12682)) mapNonEmpty!12684))

(assert (= b!2133578 b!2133601))

(assert (= b!2133609 b!2133578))

(assert (= b!2133605 b!2133609))

(assert (= (and b!2133584 ((_ is LongMap!2635) (v!28638 (underlying!5466 (cache!2930 cacheFurthestNullable!114))))) b!2133605))

(assert (= b!2133607 b!2133584))

(assert (= (and b!2133599 ((_ is HashMap!2549) (cache!2930 cacheFurthestNullable!114))) b!2133607))

(assert (= b!2133599 b!2133602))

(assert (= start!207568 b!2133599))

(assert (= (and b!2133581 condMapEmpty!12684) mapIsEmpty!12684))

(assert (= (and b!2133581 (not condMapEmpty!12684)) mapNonEmpty!12682))

(assert (= b!2133610 b!2133581))

(assert (= b!2133568 b!2133610))

(assert (= b!2133588 b!2133568))

(assert (= (and b!2133582 ((_ is LongMap!2634) (v!28636 (underlying!5464 (cache!2929 cacheDown!1098))))) b!2133588))

(assert (= b!2133591 b!2133582))

(assert (= (and b!2133592 ((_ is HashMap!2548) (cache!2929 cacheDown!1098))) b!2133591))

(assert (= start!207568 b!2133592))

(assert (= (and b!2133585 condMapEmpty!12683) mapIsEmpty!12683))

(assert (= (and b!2133585 (not condMapEmpty!12683)) mapNonEmpty!12683))

(assert (= b!2133577 b!2133585))

(assert (= b!2133589 b!2133577))

(assert (= b!2133571 b!2133589))

(assert (= (and b!2133603 ((_ is LongMap!2633) (v!28634 (underlying!5462 (cache!2928 cacheUp!979))))) b!2133571))

(assert (= b!2133590 b!2133603))

(assert (= (and b!2133598 ((_ is HashMap!2547) (cache!2928 cacheUp!979))) b!2133590))

(assert (= start!207568 b!2133598))

(assert (= (and start!207568 condSetEmpty!15853) setIsEmpty!15852))

(assert (= (and start!207568 (not condSetEmpty!15853)) setNonEmpty!15853))

(assert (= setNonEmpty!15853 b!2133576))

(assert (= start!207568 b!2133570))

(assert (= (and b!2133597 condSetEmpty!15852) setIsEmpty!15853))

(assert (= (and b!2133597 (not condSetEmpty!15852)) setNonEmpty!15852))

(assert (= setNonEmpty!15852 b!2133574))

(assert (= b!2133597 b!2133595))

(assert (= b!2133600 b!2133597))

(assert (= (and start!207568 ((_ is Cons!24079) stack!8)) b!2133600))

(declare-fun m!2582222 () Bool)

(assert (=> b!2133597 m!2582222))

(declare-fun m!2582224 () Bool)

(assert (=> b!2133570 m!2582224))

(declare-fun m!2582226 () Bool)

(assert (=> b!2133610 m!2582226))

(declare-fun m!2582228 () Bool)

(assert (=> b!2133610 m!2582228))

(declare-fun m!2582230 () Bool)

(assert (=> b!2133608 m!2582230))

(declare-fun m!2582232 () Bool)

(assert (=> b!2133583 m!2582232))

(declare-fun m!2582234 () Bool)

(assert (=> b!2133587 m!2582234))

(declare-fun m!2582236 () Bool)

(assert (=> setNonEmpty!15853 m!2582236))

(declare-fun m!2582238 () Bool)

(assert (=> b!2133604 m!2582238))

(declare-fun m!2582240 () Bool)

(assert (=> setNonEmpty!15852 m!2582240))

(declare-fun m!2582242 () Bool)

(assert (=> b!2133606 m!2582242))

(declare-fun m!2582244 () Bool)

(assert (=> b!2133595 m!2582244))

(declare-fun m!2582246 () Bool)

(assert (=> start!207568 m!2582246))

(declare-fun m!2582248 () Bool)

(assert (=> start!207568 m!2582248))

(declare-fun m!2582250 () Bool)

(assert (=> start!207568 m!2582250))

(declare-fun m!2582252 () Bool)

(assert (=> start!207568 m!2582252))

(declare-fun m!2582254 () Bool)

(assert (=> mapNonEmpty!12684 m!2582254))

(declare-fun m!2582256 () Bool)

(assert (=> b!2133596 m!2582256))

(declare-fun m!2582258 () Bool)

(assert (=> b!2133578 m!2582258))

(declare-fun m!2582260 () Bool)

(assert (=> b!2133578 m!2582260))

(declare-fun m!2582262 () Bool)

(assert (=> b!2133602 m!2582262))

(declare-fun m!2582264 () Bool)

(assert (=> mapNonEmpty!12682 m!2582264))

(declare-fun m!2582266 () Bool)

(assert (=> b!2133573 m!2582266))

(declare-fun m!2582268 () Bool)

(assert (=> b!2133600 m!2582268))

(declare-fun m!2582270 () Bool)

(assert (=> b!2133567 m!2582270))

(declare-fun m!2582272 () Bool)

(assert (=> b!2133567 m!2582272))

(declare-fun m!2582274 () Bool)

(assert (=> b!2133567 m!2582274))

(assert (=> b!2133567 m!2582274))

(declare-fun m!2582276 () Bool)

(assert (=> b!2133567 m!2582276))

(declare-fun m!2582278 () Bool)

(assert (=> b!2133577 m!2582278))

(declare-fun m!2582280 () Bool)

(assert (=> b!2133577 m!2582280))

(declare-fun m!2582282 () Bool)

(assert (=> b!2133569 m!2582282))

(declare-fun m!2582284 () Bool)

(assert (=> b!2133569 m!2582284))

(declare-fun m!2582286 () Bool)

(assert (=> mapNonEmpty!12683 m!2582286))

(assert (=> b!2133586 m!2582284))

(declare-fun m!2582288 () Bool)

(assert (=> b!2133586 m!2582288))

(declare-fun m!2582290 () Bool)

(assert (=> b!2133599 m!2582290))

(check-sat b_and!172013 (not b!2133585) (not mapNonEmpty!12683) (not start!207568) (not b_next!63143) (not b!2133601) (not mapNonEmpty!12682) (not b!2133599) (not b!2133606) (not mapNonEmpty!12684) (not b_next!63141) (not setNonEmpty!15853) (not b!2133602) (not b_next!63133) b_and!172017 (not b!2133573) b_and!172015 (not b!2133583) (not b!2133576) b_and!172011 b_and!172009 (not b_next!63139) (not b!2133574) (not b!2133581) (not setNonEmpty!15852) (not b!2133569) (not b_next!63137) (not b!2133604) (not b!2133578) (not b!2133595) (not b!2133600) (not b!2133577) b_and!172019 (not b!2133586) (not b!2133570) (not b!2133610) (not b!2133567) (not b_next!63135) (not b!2133596) (not b!2133597) (not b!2133608) (not b!2133587))
(check-sat (not b_next!63141) (not b_next!63133) b_and!172017 b_and!172013 b_and!172015 (not b_next!63139) (not b_next!63137) (not b_next!63143) b_and!172019 (not b_next!63135) b_and!172011 b_and!172009)
