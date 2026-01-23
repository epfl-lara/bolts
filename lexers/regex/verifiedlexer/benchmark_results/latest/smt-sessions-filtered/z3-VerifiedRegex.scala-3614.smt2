; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207496 () Bool)

(assert start!207496)

(declare-fun b!2128930 () Bool)

(declare-fun b_free!61997 () Bool)

(declare-fun b_next!62701 () Bool)

(assert (=> b!2128930 (= b_free!61997 (not b_next!62701))))

(declare-fun tp!653936 () Bool)

(declare-fun b_and!171577 () Bool)

(assert (=> b!2128930 (= tp!653936 b_and!171577)))

(declare-fun b!2128926 () Bool)

(declare-fun b_free!61999 () Bool)

(declare-fun b_next!62703 () Bool)

(assert (=> b!2128926 (= b_free!61999 (not b_next!62703))))

(declare-fun tp!653941 () Bool)

(declare-fun b_and!171579 () Bool)

(assert (=> b!2128926 (= tp!653941 b_and!171579)))

(declare-fun b!2128922 () Bool)

(declare-fun b_free!62001 () Bool)

(declare-fun b_next!62705 () Bool)

(assert (=> b!2128922 (= b_free!62001 (not b_next!62705))))

(declare-fun tp!653940 () Bool)

(declare-fun b_and!171581 () Bool)

(assert (=> b!2128922 (= tp!653940 b_and!171581)))

(declare-fun b!2128901 () Bool)

(declare-fun b_free!62003 () Bool)

(declare-fun b_next!62707 () Bool)

(assert (=> b!2128901 (= b_free!62003 (not b_next!62707))))

(declare-fun tp!653937 () Bool)

(declare-fun b_and!171583 () Bool)

(assert (=> b!2128901 (= tp!653937 b_and!171583)))

(declare-fun b!2128913 () Bool)

(declare-fun b_free!62005 () Bool)

(declare-fun b_next!62709 () Bool)

(assert (=> b!2128913 (= b_free!62005 (not b_next!62709))))

(declare-fun tp!653925 () Bool)

(declare-fun b_and!171585 () Bool)

(assert (=> b!2128913 (= tp!653925 b_and!171585)))

(declare-fun b!2128895 () Bool)

(declare-fun b_free!62007 () Bool)

(declare-fun b_next!62711 () Bool)

(assert (=> b!2128895 (= b_free!62007 (not b_next!62711))))

(declare-fun tp!653917 () Bool)

(declare-fun b_and!171587 () Bool)

(assert (=> b!2128895 (= tp!653917 b_and!171587)))

(declare-fun b!2128920 () Bool)

(assert (=> b!2128920 true))

(declare-fun bs!444212 () Bool)

(declare-fun b!2128896 () Bool)

(assert (= bs!444212 (and b!2128896 b!2128920)))

(declare-fun lambda!79025 () Int)

(declare-fun lambda!79024 () Int)

(assert (=> bs!444212 (not (= lambda!79025 lambda!79024))))

(assert (=> b!2128896 true))

(declare-fun mapNonEmpty!12358 () Bool)

(declare-fun mapRes!12358 () Bool)

(declare-fun tp!653931 () Bool)

(declare-fun tp!653926 () Bool)

(assert (=> mapNonEmpty!12358 (= mapRes!12358 (and tp!653931 tp!653926))))

(declare-datatypes ((C!11536 0))(
  ( (C!11537 (val!6754 Int)) )
))
(declare-datatypes ((Regex!5695 0))(
  ( (ElementMatch!5695 (c!340151 C!11536)) (Concat!9997 (regOne!11902 Regex!5695) (regTwo!11902 Regex!5695)) (EmptyExpr!5695) (Star!5695 (reg!6024 Regex!5695)) (EmptyLang!5695) (Union!5695 (regOne!11903 Regex!5695) (regTwo!11903 Regex!5695)) )
))
(declare-datatypes ((List!23953 0))(
  ( (Nil!23869) (Cons!23869 (h!29270 Regex!5695) (t!196481 List!23953)) )
))
(declare-datatypes ((Context!2530 0))(
  ( (Context!2531 (exprs!1765 List!23953)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3044 0))(
  ( (tuple3!3045 (_1!13777 (InoxSet Context!2530)) (_2!13777 Int) (_3!1992 Int)) )
))
(declare-datatypes ((tuple2!23570 0))(
  ( (tuple2!23571 (_1!13778 tuple3!3044) (_2!13778 Int)) )
))
(declare-datatypes ((List!23954 0))(
  ( (Nil!23870) (Cons!23870 (h!29271 tuple2!23570) (t!196482 List!23954)) )
))
(declare-datatypes ((array!8675 0))(
  ( (array!8676 (arr!3849 (Array (_ BitVec 32) (_ BitVec 64))) (size!18671 (_ BitVec 32))) )
))
(declare-datatypes ((array!8677 0))(
  ( (array!8678 (arr!3850 (Array (_ BitVec 32) List!23954)) (size!18672 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5066 0))(
  ( (LongMapFixedSize!5067 (defaultEntry!2898 Int) (mask!6696 (_ BitVec 32)) (extraKeys!2781 (_ BitVec 32)) (zeroValue!2791 List!23954) (minValue!2791 List!23954) (_size!5117 (_ BitVec 32)) (_keys!2830 array!8675) (_values!2813 array!8677) (_vacant!2594 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9957 0))(
  ( (Cell!9958 (v!28411 LongMapFixedSize!5066)) )
))
(declare-datatypes ((List!23955 0))(
  ( (Nil!23871) (Cons!23871 (h!29272 C!11536) (t!196483 List!23955)) )
))
(declare-datatypes ((IArray!15671 0))(
  ( (IArray!15672 (innerList!7893 List!23955)) )
))
(declare-datatypes ((Conc!7833 0))(
  ( (Node!7833 (left!18429 Conc!7833) (right!18759 Conc!7833) (csize!15896 Int) (cheight!8044 Int)) (Leaf!11448 (xs!10775 IArray!15671) (csize!15897 Int)) (Empty!7833) )
))
(declare-datatypes ((MutLongMap!2533 0))(
  ( (LongMap!2533 (underlying!5261 Cell!9957)) (MutLongMapExt!2532 (__x!15775 Int)) )
))
(declare-datatypes ((Cell!9959 0))(
  ( (Cell!9960 (v!28412 MutLongMap!2533)) )
))
(declare-datatypes ((Hashable!2447 0))(
  ( (HashableExt!2446 (__x!15776 Int)) )
))
(declare-datatypes ((MutableMap!2447 0))(
  ( (MutableMapExt!2446 (__x!15777 Int)) (HashMap!2447 (underlying!5262 Cell!9959) (hashF!4370 Hashable!2447) (_size!5118 (_ BitVec 32)) (defaultValue!2609 Int)) )
))
(declare-datatypes ((BalanceConc!15428 0))(
  ( (BalanceConc!15429 (c!340152 Conc!7833)) )
))
(declare-datatypes ((CacheFurthestNullable!636 0))(
  ( (CacheFurthestNullable!637 (cache!2828 MutableMap!2447) (totalInput!2969 BalanceConc!15428)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!636)

(declare-fun mapRest!12360 () (Array (_ BitVec 32) List!23954))

(declare-fun mapKey!12360 () (_ BitVec 32))

(declare-fun mapValue!12359 () List!23954)

(assert (=> mapNonEmpty!12358 (= (arr!3850 (_values!2813 (v!28411 (underlying!5261 (v!28412 (underlying!5262 (cache!2828 cacheFurthestNullable!114))))))) (store mapRest!12360 mapKey!12360 mapValue!12359))))

(declare-fun b!2128893 () Bool)

(declare-fun e!1357420 () Bool)

(declare-fun e!1357433 () Bool)

(assert (=> b!2128893 (= e!1357420 e!1357433)))

(declare-fun b!2128894 () Bool)

(declare-fun e!1357427 () Bool)

(declare-datatypes ((StackFrame!88 0))(
  ( (StackFrame!89 (z!5772 (InoxSet Context!2530)) (from!2658 Int) (lastNullablePos!345 Int) (res!920577 Int) (totalInput!2970 BalanceConc!15428)) )
))
(declare-datatypes ((List!23956 0))(
  ( (Nil!23872) (Cons!23872 (h!29273 StackFrame!88) (t!196484 List!23956)) )
))
(declare-fun stack!8 () List!23956)

(declare-fun tp!653934 () Bool)

(declare-fun inv!31487 (Conc!7833) Bool)

(assert (=> b!2128894 (= e!1357427 (and (inv!31487 (c!340152 (totalInput!2970 (h!29273 stack!8)))) tp!653934))))

(declare-fun tp!653930 () Bool)

(declare-fun e!1357425 () Bool)

(declare-fun tp!653919 () Bool)

(declare-fun e!1357409 () Bool)

(declare-fun array_inv!2752 (array!8675) Bool)

(declare-fun array_inv!2753 (array!8677) Bool)

(assert (=> b!2128895 (= e!1357425 (and tp!653917 tp!653930 tp!653919 (array_inv!2752 (_keys!2830 (v!28411 (underlying!5261 (v!28412 (underlying!5262 (cache!2828 cacheFurthestNullable!114))))))) (array_inv!2753 (_values!2813 (v!28411 (underlying!5261 (v!28412 (underlying!5262 (cache!2828 cacheFurthestNullable!114))))))) e!1357409))))

(declare-fun res!920568 () Bool)

(declare-fun e!1357421 () Bool)

(assert (=> b!2128896 (=> (not res!920568) (not e!1357421))))

(declare-fun forall!4894 (List!23956 Int) Bool)

(assert (=> b!2128896 (= res!920568 (forall!4894 stack!8 lambda!79025))))

(declare-fun b!2128897 () Bool)

(declare-fun e!1357407 () Bool)

(declare-fun e!1357424 () Bool)

(assert (=> b!2128897 (= e!1357407 e!1357424)))

(declare-fun b!2128898 () Bool)

(declare-fun res!920574 () Bool)

(declare-fun e!1357406 () Bool)

(assert (=> b!2128898 (=> (not res!920574) (not e!1357406))))

(declare-fun e!1357429 () Bool)

(assert (=> b!2128898 (= res!920574 e!1357429)))

(declare-fun res!920570 () Bool)

(assert (=> b!2128898 (=> res!920570 e!1357429)))

(declare-fun z!3839 () (InoxSet Context!2530))

(declare-fun nullableZipper!85 ((InoxSet Context!2530)) Bool)

(assert (=> b!2128898 (= res!920570 (not (nullableZipper!85 z!3839)))))

(declare-fun b!2128899 () Bool)

(declare-fun e!1357416 () Bool)

(declare-fun tp!653942 () Bool)

(assert (=> b!2128899 (= e!1357416 (and (inv!31487 (c!340152 (totalInput!2969 cacheFurthestNullable!114))) tp!653942))))

(declare-fun b!2128900 () Bool)

(declare-fun e!1357434 () Bool)

(declare-fun totalInput!851 () BalanceConc!15428)

(declare-fun tp!653918 () Bool)

(assert (=> b!2128900 (= e!1357434 (and (inv!31487 (c!340152 totalInput!851)) tp!653918))))

(declare-fun e!1357403 () Bool)

(declare-fun e!1357426 () Bool)

(assert (=> b!2128901 (= e!1357403 (and e!1357426 tp!653937))))

(declare-fun b!2128902 () Bool)

(declare-fun e!1357423 () Bool)

(declare-fun tp!653920 () Bool)

(assert (=> b!2128902 (= e!1357423 tp!653920)))

(declare-fun res!920576 () Bool)

(declare-fun e!1357411 () Bool)

(assert (=> start!207496 (=> (not res!920576) (not e!1357411))))

(declare-fun from!1043 () Int)

(declare-fun totalInputSize!296 () Int)

(assert (=> start!207496 (= res!920576 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!207496 e!1357411))

(declare-fun e!1357430 () Bool)

(declare-fun inv!31488 (CacheFurthestNullable!636) Bool)

(assert (=> start!207496 (and (inv!31488 cacheFurthestNullable!114) e!1357430)))

(assert (=> start!207496 true))

(declare-datatypes ((tuple3!3046 0))(
  ( (tuple3!3047 (_1!13779 Regex!5695) (_2!13779 Context!2530) (_3!1993 C!11536)) )
))
(declare-datatypes ((tuple2!23572 0))(
  ( (tuple2!23573 (_1!13780 tuple3!3046) (_2!13780 (InoxSet Context!2530))) )
))
(declare-datatypes ((List!23957 0))(
  ( (Nil!23873) (Cons!23873 (h!29274 tuple2!23572) (t!196485 List!23957)) )
))
(declare-datatypes ((Hashable!2448 0))(
  ( (HashableExt!2447 (__x!15778 Int)) )
))
(declare-datatypes ((array!8679 0))(
  ( (array!8680 (arr!3851 (Array (_ BitVec 32) List!23957)) (size!18673 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5068 0))(
  ( (LongMapFixedSize!5069 (defaultEntry!2899 Int) (mask!6697 (_ BitVec 32)) (extraKeys!2782 (_ BitVec 32)) (zeroValue!2792 List!23957) (minValue!2792 List!23957) (_size!5119 (_ BitVec 32)) (_keys!2831 array!8675) (_values!2814 array!8679) (_vacant!2595 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9961 0))(
  ( (Cell!9962 (v!28413 LongMapFixedSize!5068)) )
))
(declare-datatypes ((MutLongMap!2534 0))(
  ( (LongMap!2534 (underlying!5263 Cell!9961)) (MutLongMapExt!2533 (__x!15779 Int)) )
))
(declare-datatypes ((Cell!9963 0))(
  ( (Cell!9964 (v!28414 MutLongMap!2534)) )
))
(declare-datatypes ((MutableMap!2448 0))(
  ( (MutableMapExt!2447 (__x!15780 Int)) (HashMap!2448 (underlying!5264 Cell!9963) (hashF!4371 Hashable!2448) (_size!5120 (_ BitVec 32)) (defaultValue!2610 Int)) )
))
(declare-datatypes ((CacheDown!1684 0))(
  ( (CacheDown!1685 (cache!2829 MutableMap!2448)) )
))
(declare-fun cacheDown!1098 () CacheDown!1684)

(declare-fun e!1357402 () Bool)

(declare-fun inv!31489 (CacheDown!1684) Bool)

(assert (=> start!207496 (and (inv!31489 cacheDown!1098) e!1357402)))

(declare-datatypes ((tuple2!23574 0))(
  ( (tuple2!23575 (_1!13781 Context!2530) (_2!13781 C!11536)) )
))
(declare-datatypes ((tuple2!23576 0))(
  ( (tuple2!23577 (_1!13782 tuple2!23574) (_2!13782 (InoxSet Context!2530))) )
))
(declare-datatypes ((List!23958 0))(
  ( (Nil!23874) (Cons!23874 (h!29275 tuple2!23576) (t!196486 List!23958)) )
))
(declare-datatypes ((array!8681 0))(
  ( (array!8682 (arr!3852 (Array (_ BitVec 32) List!23958)) (size!18674 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5070 0))(
  ( (LongMapFixedSize!5071 (defaultEntry!2900 Int) (mask!6698 (_ BitVec 32)) (extraKeys!2783 (_ BitVec 32)) (zeroValue!2793 List!23958) (minValue!2793 List!23958) (_size!5121 (_ BitVec 32)) (_keys!2832 array!8675) (_values!2815 array!8681) (_vacant!2596 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9965 0))(
  ( (Cell!9966 (v!28415 LongMapFixedSize!5070)) )
))
(declare-datatypes ((MutLongMap!2535 0))(
  ( (LongMap!2535 (underlying!5265 Cell!9965)) (MutLongMapExt!2534 (__x!15781 Int)) )
))
(declare-datatypes ((Cell!9967 0))(
  ( (Cell!9968 (v!28416 MutLongMap!2535)) )
))
(declare-datatypes ((Hashable!2449 0))(
  ( (HashableExt!2448 (__x!15782 Int)) )
))
(declare-datatypes ((MutableMap!2449 0))(
  ( (MutableMapExt!2448 (__x!15783 Int)) (HashMap!2449 (underlying!5266 Cell!9967) (hashF!4372 Hashable!2449) (_size!5122 (_ BitVec 32)) (defaultValue!2611 Int)) )
))
(declare-datatypes ((CacheUp!1698 0))(
  ( (CacheUp!1699 (cache!2830 MutableMap!2449)) )
))
(declare-fun cacheUp!979 () CacheUp!1698)

(declare-fun e!1357401 () Bool)

(declare-fun inv!31490 (CacheUp!1698) Bool)

(assert (=> start!207496 (and (inv!31490 cacheUp!979) e!1357401)))

(declare-fun condSetEmpty!15636 () Bool)

(assert (=> start!207496 (= condSetEmpty!15636 (= z!3839 ((as const (Array Context!2530 Bool)) false)))))

(declare-fun setRes!15636 () Bool)

(assert (=> start!207496 setRes!15636))

(declare-fun inv!31491 (BalanceConc!15428) Bool)

(assert (=> start!207496 (and (inv!31491 totalInput!851) e!1357434)))

(declare-fun e!1357422 () Bool)

(assert (=> start!207496 e!1357422))

(declare-fun b!2128903 () Bool)

(declare-fun res!920569 () Bool)

(assert (=> b!2128903 (=> (not res!920569) (not e!1357406))))

(assert (=> b!2128903 (= res!920569 (= (totalInput!2969 cacheFurthestNullable!114) totalInput!851))))

(declare-fun setIsEmpty!15636 () Bool)

(assert (=> setIsEmpty!15636 setRes!15636))

(declare-fun mapNonEmpty!12359 () Bool)

(declare-fun mapRes!12359 () Bool)

(declare-fun tp!653924 () Bool)

(declare-fun tp!653944 () Bool)

(assert (=> mapNonEmpty!12359 (= mapRes!12359 (and tp!653924 tp!653944))))

(declare-fun mapRest!12359 () (Array (_ BitVec 32) List!23957))

(declare-fun mapKey!12358 () (_ BitVec 32))

(declare-fun mapValue!12360 () List!23957)

(assert (=> mapNonEmpty!12359 (= (arr!3851 (_values!2814 (v!28413 (underlying!5263 (v!28414 (underlying!5264 (cache!2829 cacheDown!1098))))))) (store mapRest!12359 mapKey!12358 mapValue!12360))))

(declare-fun b!2128904 () Bool)

(declare-fun lastNullablePos!123 () Int)

(assert (=> b!2128904 (= e!1357429 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun e!1357435 () Bool)

(declare-fun tp!653933 () Bool)

(declare-fun b!2128905 () Bool)

(declare-fun inv!31492 (StackFrame!88) Bool)

(assert (=> b!2128905 (= e!1357422 (and (inv!31492 (h!29273 stack!8)) e!1357435 tp!653933))))

(declare-fun b!2128906 () Bool)

(declare-fun e!1357404 () Bool)

(declare-fun lt!796177 () MutLongMap!2533)

(get-info :version)

(assert (=> b!2128906 (= e!1357404 (and e!1357420 ((_ is LongMap!2533) lt!796177)))))

(assert (=> b!2128906 (= lt!796177 (v!28412 (underlying!5262 (cache!2828 cacheFurthestNullable!114))))))

(declare-fun setIsEmpty!15637 () Bool)

(declare-fun setRes!15637 () Bool)

(assert (=> setIsEmpty!15637 setRes!15637))

(declare-fun b!2128907 () Bool)

(declare-fun e!1357419 () Bool)

(assert (=> b!2128907 (= e!1357424 e!1357419)))

(declare-fun b!2128908 () Bool)

(declare-fun e!1357413 () Bool)

(assert (=> b!2128908 (= e!1357401 e!1357413)))

(declare-fun b!2128909 () Bool)

(declare-fun e!1357415 () Bool)

(declare-fun tp!653939 () Bool)

(assert (=> b!2128909 (= e!1357415 (and tp!653939 mapRes!12359))))

(declare-fun condMapEmpty!12360 () Bool)

(declare-fun mapDefault!12359 () List!23957)

(assert (=> b!2128909 (= condMapEmpty!12360 (= (arr!3851 (_values!2814 (v!28413 (underlying!5263 (v!28414 (underlying!5264 (cache!2829 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!23957)) mapDefault!12359)))))

(declare-fun b!2128910 () Bool)

(declare-fun e!1357418 () Bool)

(declare-fun e!1357410 () Bool)

(assert (=> b!2128910 (= e!1357418 e!1357410)))

(declare-fun b!2128911 () Bool)

(assert (=> b!2128911 (= e!1357411 e!1357406)))

(declare-fun res!920575 () Bool)

(assert (=> b!2128911 (=> (not res!920575) (not e!1357406))))

(declare-fun lt!796180 () Int)

(assert (=> b!2128911 (= res!920575 (and (= totalInputSize!296 lt!796180) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun size!18675 (BalanceConc!15428) Int)

(assert (=> b!2128911 (= lt!796180 (size!18675 totalInput!851))))

(declare-fun b!2128912 () Bool)

(declare-fun tp!653928 () Bool)

(assert (=> b!2128912 (= e!1357409 (and tp!653928 mapRes!12358))))

(declare-fun condMapEmpty!12358 () Bool)

(declare-fun mapDefault!12358 () List!23954)

(assert (=> b!2128912 (= condMapEmpty!12358 (= (arr!3850 (_values!2813 (v!28411 (underlying!5261 (v!28412 (underlying!5262 (cache!2828 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!23954)) mapDefault!12358)))))

(declare-fun e!1357431 () Bool)

(declare-fun tp!653916 () Bool)

(declare-fun tp!653923 () Bool)

(declare-fun e!1357405 () Bool)

(declare-fun array_inv!2754 (array!8681) Bool)

(assert (=> b!2128913 (= e!1357431 (and tp!653925 tp!653923 tp!653916 (array_inv!2752 (_keys!2832 (v!28415 (underlying!5265 (v!28416 (underlying!5266 (cache!2830 cacheUp!979))))))) (array_inv!2754 (_values!2815 (v!28415 (underlying!5265 (v!28416 (underlying!5266 (cache!2830 cacheUp!979))))))) e!1357405))))

(declare-fun b!2128914 () Bool)

(assert (=> b!2128914 (= e!1357435 (and setRes!15637 (inv!31491 (totalInput!2970 (h!29273 stack!8))) e!1357427))))

(declare-fun condSetEmpty!15637 () Bool)

(assert (=> b!2128914 (= condSetEmpty!15637 (= (z!5772 (h!29273 stack!8)) ((as const (Array Context!2530 Bool)) false)))))

(declare-fun b!2128915 () Bool)

(assert (=> b!2128915 (= e!1357410 e!1357431)))

(declare-fun b!2128916 () Bool)

(assert (=> b!2128916 (= e!1357421 (not true))))

(declare-datatypes ((Option!4881 0))(
  ( (None!4880) (Some!4880 (v!28417 Int)) )
))
(declare-fun lt!796181 () Option!4881)

(declare-fun get!7338 (CacheFurthestNullable!636 (InoxSet Context!2530) Int Int) Option!4881)

(assert (=> b!2128916 (= lt!796181 (get!7338 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123))))

(assert (=> b!2128916 (forall!4894 stack!8 lambda!79024)))

(declare-fun mapIsEmpty!12358 () Bool)

(assert (=> mapIsEmpty!12358 mapRes!12359))

(declare-fun b!2128917 () Bool)

(assert (=> b!2128917 (= e!1357433 e!1357425)))

(declare-fun b!2128918 () Bool)

(declare-fun res!920572 () Bool)

(assert (=> b!2128918 (=> (not res!920572) (not e!1357406))))

(declare-fun valid!1997 (CacheFurthestNullable!636) Bool)

(assert (=> b!2128918 (= res!920572 (valid!1997 cacheFurthestNullable!114))))

(declare-fun b!2128919 () Bool)

(declare-fun e!1357408 () Bool)

(declare-fun lt!796182 () MutLongMap!2535)

(assert (=> b!2128919 (= e!1357408 (and e!1357418 ((_ is LongMap!2535) lt!796182)))))

(assert (=> b!2128919 (= lt!796182 (v!28416 (underlying!5266 (cache!2830 cacheUp!979))))))

(declare-fun setNonEmpty!15636 () Bool)

(declare-fun tp!653929 () Bool)

(declare-fun setElem!15637 () Context!2530)

(declare-fun inv!31493 (Context!2530) Bool)

(assert (=> setNonEmpty!15636 (= setRes!15637 (and tp!653929 (inv!31493 setElem!15637) e!1357423))))

(declare-fun setRest!15636 () (InoxSet Context!2530))

(assert (=> setNonEmpty!15636 (= (z!5772 (h!29273 stack!8)) ((_ map or) (store ((as const (Array Context!2530 Bool)) false) setElem!15637 true) setRest!15636))))

(assert (=> b!2128920 (= e!1357406 e!1357421)))

(declare-fun res!920567 () Bool)

(assert (=> b!2128920 (=> (not res!920567) (not e!1357421))))

(assert (=> b!2128920 (= res!920567 (forall!4894 stack!8 lambda!79024))))

(declare-fun lt!796179 () Int)

(declare-fun furthestNullablePosition!23 ((InoxSet Context!2530) Int BalanceConc!15428 Int Int) Int)

(assert (=> b!2128920 (= lt!796179 (furthestNullablePosition!23 z!3839 from!1043 totalInput!851 lt!796180 lastNullablePos!123))))

(declare-fun b!2128921 () Bool)

(assert (=> b!2128921 (= e!1357402 e!1357403)))

(declare-fun mapIsEmpty!12359 () Bool)

(assert (=> mapIsEmpty!12359 mapRes!12358))

(declare-fun tp!653922 () Bool)

(declare-fun tp!653935 () Bool)

(declare-fun array_inv!2755 (array!8679) Bool)

(assert (=> b!2128922 (= e!1357419 (and tp!653940 tp!653935 tp!653922 (array_inv!2752 (_keys!2831 (v!28413 (underlying!5263 (v!28414 (underlying!5264 (cache!2829 cacheDown!1098))))))) (array_inv!2755 (_values!2814 (v!28413 (underlying!5263 (v!28414 (underlying!5264 (cache!2829 cacheDown!1098))))))) e!1357415))))

(declare-fun mapNonEmpty!12360 () Bool)

(declare-fun mapRes!12360 () Bool)

(declare-fun tp!653932 () Bool)

(declare-fun tp!653938 () Bool)

(assert (=> mapNonEmpty!12360 (= mapRes!12360 (and tp!653932 tp!653938))))

(declare-fun mapValue!12358 () List!23958)

(declare-fun mapKey!12359 () (_ BitVec 32))

(declare-fun mapRest!12358 () (Array (_ BitVec 32) List!23958))

(assert (=> mapNonEmpty!12360 (= (arr!3852 (_values!2815 (v!28415 (underlying!5265 (v!28416 (underlying!5266 (cache!2830 cacheUp!979))))))) (store mapRest!12358 mapKey!12359 mapValue!12358))))

(declare-fun setNonEmpty!15637 () Bool)

(declare-fun setElem!15636 () Context!2530)

(declare-fun tp!653943 () Bool)

(declare-fun e!1357428 () Bool)

(assert (=> setNonEmpty!15637 (= setRes!15636 (and tp!653943 (inv!31493 setElem!15636) e!1357428))))

(declare-fun setRest!15637 () (InoxSet Context!2530))

(assert (=> setNonEmpty!15637 (= z!3839 ((_ map or) (store ((as const (Array Context!2530 Bool)) false) setElem!15636 true) setRest!15637))))

(declare-fun b!2128923 () Bool)

(declare-fun res!920573 () Bool)

(assert (=> b!2128923 (=> (not res!920573) (not e!1357406))))

(declare-fun valid!1998 (CacheUp!1698) Bool)

(assert (=> b!2128923 (= res!920573 (valid!1998 cacheUp!979))))

(declare-fun b!2128924 () Bool)

(declare-fun tp!653927 () Bool)

(assert (=> b!2128924 (= e!1357428 tp!653927)))

(declare-fun b!2128925 () Bool)

(declare-fun res!920571 () Bool)

(assert (=> b!2128925 (=> (not res!920571) (not e!1357406))))

(declare-fun valid!1999 (CacheDown!1684) Bool)

(assert (=> b!2128925 (= res!920571 (valid!1999 cacheDown!1098))))

(declare-fun e!1357412 () Bool)

(assert (=> b!2128926 (= e!1357412 (and e!1357404 tp!653941))))

(declare-fun b!2128927 () Bool)

(declare-fun tp!653921 () Bool)

(assert (=> b!2128927 (= e!1357405 (and tp!653921 mapRes!12360))))

(declare-fun condMapEmpty!12359 () Bool)

(declare-fun mapDefault!12360 () List!23958)

(assert (=> b!2128927 (= condMapEmpty!12359 (= (arr!3852 (_values!2815 (v!28415 (underlying!5265 (v!28416 (underlying!5266 (cache!2830 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!23958)) mapDefault!12360)))))

(declare-fun b!2128928 () Bool)

(declare-fun lt!796178 () MutLongMap!2534)

(assert (=> b!2128928 (= e!1357426 (and e!1357407 ((_ is LongMap!2534) lt!796178)))))

(assert (=> b!2128928 (= lt!796178 (v!28414 (underlying!5264 (cache!2829 cacheDown!1098))))))

(declare-fun mapIsEmpty!12360 () Bool)

(assert (=> mapIsEmpty!12360 mapRes!12360))

(declare-fun b!2128929 () Bool)

(assert (=> b!2128929 (= e!1357430 (and e!1357412 (inv!31491 (totalInput!2969 cacheFurthestNullable!114)) e!1357416))))

(assert (=> b!2128930 (= e!1357413 (and e!1357408 tp!653936))))

(assert (= (and start!207496 res!920576) b!2128911))

(assert (= (and b!2128911 res!920575) b!2128898))

(assert (= (and b!2128898 (not res!920570)) b!2128904))

(assert (= (and b!2128898 res!920574) b!2128923))

(assert (= (and b!2128923 res!920573) b!2128925))

(assert (= (and b!2128925 res!920571) b!2128918))

(assert (= (and b!2128918 res!920572) b!2128903))

(assert (= (and b!2128903 res!920569) b!2128920))

(assert (= (and b!2128920 res!920567) b!2128896))

(assert (= (and b!2128896 res!920568) b!2128916))

(assert (= (and b!2128912 condMapEmpty!12358) mapIsEmpty!12359))

(assert (= (and b!2128912 (not condMapEmpty!12358)) mapNonEmpty!12358))

(assert (= b!2128895 b!2128912))

(assert (= b!2128917 b!2128895))

(assert (= b!2128893 b!2128917))

(assert (= (and b!2128906 ((_ is LongMap!2533) (v!28412 (underlying!5262 (cache!2828 cacheFurthestNullable!114))))) b!2128893))

(assert (= b!2128926 b!2128906))

(assert (= (and b!2128929 ((_ is HashMap!2447) (cache!2828 cacheFurthestNullable!114))) b!2128926))

(assert (= b!2128929 b!2128899))

(assert (= start!207496 b!2128929))

(assert (= (and b!2128909 condMapEmpty!12360) mapIsEmpty!12358))

(assert (= (and b!2128909 (not condMapEmpty!12360)) mapNonEmpty!12359))

(assert (= b!2128922 b!2128909))

(assert (= b!2128907 b!2128922))

(assert (= b!2128897 b!2128907))

(assert (= (and b!2128928 ((_ is LongMap!2534) (v!28414 (underlying!5264 (cache!2829 cacheDown!1098))))) b!2128897))

(assert (= b!2128901 b!2128928))

(assert (= (and b!2128921 ((_ is HashMap!2448) (cache!2829 cacheDown!1098))) b!2128901))

(assert (= start!207496 b!2128921))

(assert (= (and b!2128927 condMapEmpty!12359) mapIsEmpty!12360))

(assert (= (and b!2128927 (not condMapEmpty!12359)) mapNonEmpty!12360))

(assert (= b!2128913 b!2128927))

(assert (= b!2128915 b!2128913))

(assert (= b!2128910 b!2128915))

(assert (= (and b!2128919 ((_ is LongMap!2535) (v!28416 (underlying!5266 (cache!2830 cacheUp!979))))) b!2128910))

(assert (= b!2128930 b!2128919))

(assert (= (and b!2128908 ((_ is HashMap!2449) (cache!2830 cacheUp!979))) b!2128930))

(assert (= start!207496 b!2128908))

(assert (= (and start!207496 condSetEmpty!15636) setIsEmpty!15636))

(assert (= (and start!207496 (not condSetEmpty!15636)) setNonEmpty!15637))

(assert (= setNonEmpty!15637 b!2128924))

(assert (= start!207496 b!2128900))

(assert (= (and b!2128914 condSetEmpty!15637) setIsEmpty!15637))

(assert (= (and b!2128914 (not condSetEmpty!15637)) setNonEmpty!15636))

(assert (= setNonEmpty!15636 b!2128902))

(assert (= b!2128914 b!2128894))

(assert (= b!2128905 b!2128914))

(assert (= (and start!207496 ((_ is Cons!23872) stack!8)) b!2128905))

(declare-fun m!2579832 () Bool)

(assert (=> b!2128913 m!2579832))

(declare-fun m!2579834 () Bool)

(assert (=> b!2128913 m!2579834))

(declare-fun m!2579836 () Bool)

(assert (=> b!2128923 m!2579836))

(declare-fun m!2579838 () Bool)

(assert (=> b!2128895 m!2579838))

(declare-fun m!2579840 () Bool)

(assert (=> b!2128895 m!2579840))

(declare-fun m!2579842 () Bool)

(assert (=> setNonEmpty!15637 m!2579842))

(declare-fun m!2579844 () Bool)

(assert (=> b!2128914 m!2579844))

(declare-fun m!2579846 () Bool)

(assert (=> b!2128899 m!2579846))

(declare-fun m!2579848 () Bool)

(assert (=> b!2128905 m!2579848))

(declare-fun m!2579850 () Bool)

(assert (=> mapNonEmpty!12359 m!2579850))

(declare-fun m!2579852 () Bool)

(assert (=> b!2128911 m!2579852))

(declare-fun m!2579854 () Bool)

(assert (=> b!2128916 m!2579854))

(declare-fun m!2579856 () Bool)

(assert (=> b!2128916 m!2579856))

(assert (=> b!2128920 m!2579856))

(declare-fun m!2579858 () Bool)

(assert (=> b!2128920 m!2579858))

(declare-fun m!2579860 () Bool)

(assert (=> b!2128925 m!2579860))

(declare-fun m!2579862 () Bool)

(assert (=> b!2128900 m!2579862))

(declare-fun m!2579864 () Bool)

(assert (=> mapNonEmpty!12358 m!2579864))

(declare-fun m!2579866 () Bool)

(assert (=> b!2128896 m!2579866))

(declare-fun m!2579868 () Bool)

(assert (=> b!2128929 m!2579868))

(declare-fun m!2579870 () Bool)

(assert (=> mapNonEmpty!12360 m!2579870))

(declare-fun m!2579872 () Bool)

(assert (=> b!2128918 m!2579872))

(declare-fun m!2579874 () Bool)

(assert (=> b!2128894 m!2579874))

(declare-fun m!2579876 () Bool)

(assert (=> b!2128922 m!2579876))

(declare-fun m!2579878 () Bool)

(assert (=> b!2128922 m!2579878))

(declare-fun m!2579880 () Bool)

(assert (=> setNonEmpty!15636 m!2579880))

(declare-fun m!2579882 () Bool)

(assert (=> start!207496 m!2579882))

(declare-fun m!2579884 () Bool)

(assert (=> start!207496 m!2579884))

(declare-fun m!2579886 () Bool)

(assert (=> start!207496 m!2579886))

(declare-fun m!2579888 () Bool)

(assert (=> start!207496 m!2579888))

(declare-fun m!2579890 () Bool)

(assert (=> b!2128898 m!2579890))

(check-sat (not b_next!62709) (not b!2128902) (not b!2128914) (not b!2128909) (not b!2128895) (not setNonEmpty!15636) (not mapNonEmpty!12359) (not mapNonEmpty!12358) (not b!2128898) (not b!2128905) (not b!2128900) b_and!171583 (not b!2128912) (not b!2128894) b_and!171585 (not b!2128923) (not b_next!62711) b_and!171577 (not b_next!62705) (not mapNonEmpty!12360) (not b!2128899) (not b!2128922) (not b!2128918) (not b!2128920) (not b!2128896) (not b!2128913) (not setNonEmpty!15637) (not b!2128925) b_and!171581 (not start!207496) (not b!2128916) (not b_next!62703) b_and!171579 (not b!2128927) b_and!171587 (not b_next!62707) (not b!2128911) (not b!2128924) (not b_next!62701) (not b!2128929))
(check-sat (not b_next!62709) (not b_next!62705) b_and!171581 b_and!171583 (not b_next!62701) b_and!171585 (not b_next!62711) b_and!171577 (not b_next!62703) b_and!171579 b_and!171587 (not b_next!62707))
