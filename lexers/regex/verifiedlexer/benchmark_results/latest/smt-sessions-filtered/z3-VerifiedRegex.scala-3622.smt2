; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207528 () Bool)

(assert start!207528)

(declare-fun b!2130958 () Bool)

(declare-fun b_free!62189 () Bool)

(declare-fun b_next!62893 () Bool)

(assert (=> b!2130958 (= b_free!62189 (not b_next!62893))))

(declare-fun tp!655331 () Bool)

(declare-fun b_and!171769 () Bool)

(assert (=> b!2130958 (= tp!655331 b_and!171769)))

(declare-fun b!2130957 () Bool)

(declare-fun b_free!62191 () Bool)

(declare-fun b_next!62895 () Bool)

(assert (=> b!2130957 (= b_free!62191 (not b_next!62895))))

(declare-fun tp!655319 () Bool)

(declare-fun b_and!171771 () Bool)

(assert (=> b!2130957 (= tp!655319 b_and!171771)))

(declare-fun b!2130965 () Bool)

(declare-fun b_free!62193 () Bool)

(declare-fun b_next!62897 () Bool)

(assert (=> b!2130965 (= b_free!62193 (not b_next!62897))))

(declare-fun tp!655313 () Bool)

(declare-fun b_and!171773 () Bool)

(assert (=> b!2130965 (= tp!655313 b_and!171773)))

(declare-fun b!2130955 () Bool)

(declare-fun b_free!62195 () Bool)

(declare-fun b_next!62899 () Bool)

(assert (=> b!2130955 (= b_free!62195 (not b_next!62899))))

(declare-fun tp!655333 () Bool)

(declare-fun b_and!171775 () Bool)

(assert (=> b!2130955 (= tp!655333 b_and!171775)))

(declare-fun b!2130980 () Bool)

(declare-fun b_free!62197 () Bool)

(declare-fun b_next!62901 () Bool)

(assert (=> b!2130980 (= b_free!62197 (not b_next!62901))))

(declare-fun tp!655323 () Bool)

(declare-fun b_and!171777 () Bool)

(assert (=> b!2130980 (= tp!655323 b_and!171777)))

(declare-fun b!2130972 () Bool)

(declare-fun b_free!62199 () Bool)

(declare-fun b_next!62903 () Bool)

(assert (=> b!2130972 (= b_free!62199 (not b_next!62903))))

(declare-fun tp!655318 () Bool)

(declare-fun b_and!171779 () Bool)

(assert (=> b!2130972 (= tp!655318 b_and!171779)))

(declare-fun b!2130950 () Bool)

(assert (=> b!2130950 true))

(declare-fun bs!444248 () Bool)

(declare-fun b!2130969 () Bool)

(assert (= bs!444248 (and b!2130969 b!2130950)))

(declare-fun lambda!79179 () Int)

(declare-fun lambda!79178 () Int)

(assert (=> bs!444248 (not (= lambda!79179 lambda!79178))))

(assert (=> b!2130969 true))

(declare-fun b!2130940 () Bool)

(declare-fun e!1359178 () Bool)

(declare-fun e!1359198 () Bool)

(assert (=> b!2130940 (= e!1359178 e!1359198)))

(declare-fun res!921225 () Bool)

(assert (=> b!2130940 (=> (not res!921225) (not e!1359198))))

(declare-fun totalInputSize!296 () Int)

(declare-fun lt!796445 () Int)

(declare-fun from!1043 () Int)

(declare-fun lastNullablePos!123 () Int)

(assert (=> b!2130940 (= res!921225 (and (= totalInputSize!296 lt!796445) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-datatypes ((C!11568 0))(
  ( (C!11569 (val!6770 Int)) )
))
(declare-datatypes ((List!24045 0))(
  ( (Nil!23961) (Cons!23961 (h!29362 C!11568) (t!196573 List!24045)) )
))
(declare-datatypes ((IArray!15703 0))(
  ( (IArray!15704 (innerList!7909 List!24045)) )
))
(declare-datatypes ((Conc!7849 0))(
  ( (Node!7849 (left!18485 Conc!7849) (right!18815 Conc!7849) (csize!15928 Int) (cheight!8060 Int)) (Leaf!11472 (xs!10791 IArray!15703) (csize!15929 Int)) (Empty!7849) )
))
(declare-datatypes ((BalanceConc!15460 0))(
  ( (BalanceConc!15461 (c!340183 Conc!7849)) )
))
(declare-fun totalInput!851 () BalanceConc!15460)

(declare-fun size!18742 (BalanceConc!15460) Int)

(assert (=> b!2130940 (= lt!796445 (size!18742 totalInput!851))))

(declare-fun tp!655329 () Bool)

(declare-fun e!1359194 () Bool)

(declare-fun b!2130941 () Bool)

(declare-fun e!1359208 () Bool)

(declare-datatypes ((Regex!5711 0))(
  ( (ElementMatch!5711 (c!340184 C!11568)) (Concat!10013 (regOne!11934 Regex!5711) (regTwo!11934 Regex!5711)) (EmptyExpr!5711) (Star!5711 (reg!6040 Regex!5711)) (EmptyLang!5711) (Union!5711 (regOne!11935 Regex!5711) (regTwo!11935 Regex!5711)) )
))
(declare-datatypes ((List!24046 0))(
  ( (Nil!23962) (Cons!23962 (h!29363 Regex!5711) (t!196574 List!24046)) )
))
(declare-datatypes ((Context!2562 0))(
  ( (Context!2563 (exprs!1781 List!24046)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((StackFrame!116 0))(
  ( (StackFrame!117 (z!5786 (InoxSet Context!2562)) (from!2672 Int) (lastNullablePos!359 Int) (res!921233 Int) (totalInput!2999 BalanceConc!15460)) )
))
(declare-datatypes ((List!24047 0))(
  ( (Nil!23963) (Cons!23963 (h!29364 StackFrame!116) (t!196575 List!24047)) )
))
(declare-fun stack!8 () List!24047)

(declare-fun inv!31591 (StackFrame!116) Bool)

(assert (=> b!2130941 (= e!1359194 (and (inv!31591 (h!29364 stack!8)) e!1359208 tp!655329))))

(declare-fun b!2130942 () Bool)

(declare-fun e!1359192 () Bool)

(declare-fun tp!655310 () Bool)

(declare-fun mapRes!12503 () Bool)

(assert (=> b!2130942 (= e!1359192 (and tp!655310 mapRes!12503))))

(declare-fun condMapEmpty!12503 () Bool)

(declare-datatypes ((tuple3!3104 0))(
  ( (tuple3!3105 (_1!13869 Regex!5711) (_2!13869 Context!2562) (_3!2022 C!11568)) )
))
(declare-datatypes ((tuple2!23694 0))(
  ( (tuple2!23695 (_1!13870 tuple3!3104) (_2!13870 (InoxSet Context!2562))) )
))
(declare-datatypes ((List!24048 0))(
  ( (Nil!23964) (Cons!23964 (h!29365 tuple2!23694) (t!196576 List!24048)) )
))
(declare-datatypes ((Hashable!2493 0))(
  ( (HashableExt!2492 (__x!15913 Int)) )
))
(declare-datatypes ((array!8799 0))(
  ( (array!8800 (arr!3911 (Array (_ BitVec 32) (_ BitVec 64))) (size!18743 (_ BitVec 32))) )
))
(declare-datatypes ((array!8801 0))(
  ( (array!8802 (arr!3912 (Array (_ BitVec 32) List!24048)) (size!18744 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5158 0))(
  ( (LongMapFixedSize!5159 (defaultEntry!2944 Int) (mask!6750 (_ BitVec 32)) (extraKeys!2827 (_ BitVec 32)) (zeroValue!2837 List!24048) (minValue!2837 List!24048) (_size!5209 (_ BitVec 32)) (_keys!2876 array!8799) (_values!2859 array!8801) (_vacant!2640 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10141 0))(
  ( (Cell!10142 (v!28514 LongMapFixedSize!5158)) )
))
(declare-datatypes ((MutLongMap!2579 0))(
  ( (LongMap!2579 (underlying!5353 Cell!10141)) (MutLongMapExt!2578 (__x!15914 Int)) )
))
(declare-datatypes ((Cell!10143 0))(
  ( (Cell!10144 (v!28515 MutLongMap!2579)) )
))
(declare-datatypes ((MutableMap!2493 0))(
  ( (MutableMapExt!2492 (__x!15915 Int)) (HashMap!2493 (underlying!5354 Cell!10143) (hashF!4416 Hashable!2493) (_size!5210 (_ BitVec 32)) (defaultValue!2655 Int)) )
))
(declare-datatypes ((CacheDown!1712 0))(
  ( (CacheDown!1713 (cache!2874 MutableMap!2493)) )
))
(declare-fun cacheDown!1098 () CacheDown!1712)

(declare-fun mapDefault!12503 () List!24048)

(assert (=> b!2130942 (= condMapEmpty!12503 (= (arr!3912 (_values!2859 (v!28514 (underlying!5353 (v!28515 (underlying!5354 (cache!2874 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!24048)) mapDefault!12503)))))

(declare-fun b!2130943 () Bool)

(declare-fun res!921228 () Bool)

(assert (=> b!2130943 (=> (not res!921228) (not e!1359198))))

(declare-fun valid!2025 (CacheDown!1712) Bool)

(assert (=> b!2130943 (= res!921228 (valid!2025 cacheDown!1098))))

(declare-fun mapIsEmpty!12502 () Bool)

(declare-fun mapRes!12502 () Bool)

(assert (=> mapIsEmpty!12502 mapRes!12502))

(declare-fun b!2130944 () Bool)

(declare-fun e!1359195 () Bool)

(declare-fun tp!655326 () Bool)

(assert (=> b!2130944 (= e!1359195 tp!655326)))

(declare-fun b!2130945 () Bool)

(declare-fun e!1359205 () Bool)

(declare-fun e!1359186 () Bool)

(assert (=> b!2130945 (= e!1359205 e!1359186)))

(declare-fun b!2130946 () Bool)

(declare-fun e!1359203 () Bool)

(assert (=> b!2130946 (= e!1359203 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun mapIsEmpty!12503 () Bool)

(declare-fun mapRes!12504 () Bool)

(assert (=> mapIsEmpty!12503 mapRes!12504))

(declare-fun setIsEmpty!15732 () Bool)

(declare-fun setRes!15733 () Bool)

(assert (=> setIsEmpty!15732 setRes!15733))

(declare-fun b!2130947 () Bool)

(declare-fun e!1359201 () Bool)

(declare-fun e!1359196 () Bool)

(assert (=> b!2130947 (= e!1359201 e!1359196)))

(declare-fun b!2130948 () Bool)

(declare-fun e!1359187 () Bool)

(declare-fun tp!655336 () Bool)

(assert (=> b!2130948 (= e!1359187 tp!655336)))

(declare-fun b!2130949 () Bool)

(declare-fun e!1359184 () Bool)

(declare-datatypes ((tuple3!3106 0))(
  ( (tuple3!3107 (_1!13871 (InoxSet Context!2562)) (_2!13871 Int) (_3!2023 Int)) )
))
(declare-datatypes ((tuple2!23696 0))(
  ( (tuple2!23697 (_1!13872 tuple3!3106) (_2!13872 Int)) )
))
(declare-datatypes ((List!24049 0))(
  ( (Nil!23965) (Cons!23965 (h!29366 tuple2!23696) (t!196577 List!24049)) )
))
(declare-datatypes ((array!8803 0))(
  ( (array!8804 (arr!3913 (Array (_ BitVec 32) List!24049)) (size!18745 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5160 0))(
  ( (LongMapFixedSize!5161 (defaultEntry!2945 Int) (mask!6751 (_ BitVec 32)) (extraKeys!2828 (_ BitVec 32)) (zeroValue!2838 List!24049) (minValue!2838 List!24049) (_size!5211 (_ BitVec 32)) (_keys!2877 array!8799) (_values!2860 array!8803) (_vacant!2641 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10145 0))(
  ( (Cell!10146 (v!28516 LongMapFixedSize!5160)) )
))
(declare-datatypes ((MutLongMap!2580 0))(
  ( (LongMap!2580 (underlying!5355 Cell!10145)) (MutLongMapExt!2579 (__x!15916 Int)) )
))
(declare-fun lt!796442 () MutLongMap!2580)

(get-info :version)

(assert (=> b!2130949 (= e!1359184 (and e!1359205 ((_ is LongMap!2580) lt!796442)))))

(declare-datatypes ((Cell!10147 0))(
  ( (Cell!10148 (v!28517 MutLongMap!2580)) )
))
(declare-datatypes ((Hashable!2494 0))(
  ( (HashableExt!2493 (__x!15917 Int)) )
))
(declare-datatypes ((MutableMap!2494 0))(
  ( (MutableMapExt!2493 (__x!15918 Int)) (HashMap!2494 (underlying!5356 Cell!10147) (hashF!4417 Hashable!2494) (_size!5212 (_ BitVec 32)) (defaultValue!2656 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!668 0))(
  ( (CacheFurthestNullable!669 (cache!2875 MutableMap!2494) (totalInput!3000 BalanceConc!15460)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!668)

(assert (=> b!2130949 (= lt!796442 (v!28517 (underlying!5356 (cache!2875 cacheFurthestNullable!114))))))

(declare-fun e!1359176 () Bool)

(assert (=> b!2130950 (= e!1359198 e!1359176)))

(declare-fun res!921221 () Bool)

(assert (=> b!2130950 (=> (not res!921221) (not e!1359176))))

(declare-fun forall!4906 (List!24047 Int) Bool)

(assert (=> b!2130950 (= res!921221 (forall!4906 stack!8 lambda!79178))))

(declare-fun lt!796444 () Int)

(declare-fun z!3839 () (InoxSet Context!2562))

(declare-fun furthestNullablePosition!32 ((InoxSet Context!2562) Int BalanceConc!15460 Int Int) Int)

(assert (=> b!2130950 (= lt!796444 (furthestNullablePosition!32 z!3839 from!1043 totalInput!851 lt!796445 lastNullablePos!123))))

(declare-fun b!2130951 () Bool)

(declare-fun e!1359179 () Bool)

(assert (=> b!2130951 (= e!1359179 e!1359201)))

(declare-fun b!2130952 () Bool)

(declare-fun e!1359182 () Bool)

(declare-fun tp!655328 () Bool)

(assert (=> b!2130952 (= e!1359182 (and tp!655328 mapRes!12502))))

(declare-fun condMapEmpty!12504 () Bool)

(declare-fun mapDefault!12504 () List!24049)

(assert (=> b!2130952 (= condMapEmpty!12504 (= (arr!3913 (_values!2860 (v!28516 (underlying!5355 (v!28517 (underlying!5356 (cache!2875 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!24049)) mapDefault!12504)))))

(declare-fun b!2130953 () Bool)

(declare-fun res!921229 () Bool)

(assert (=> b!2130953 (=> (not res!921229) (not e!1359198))))

(assert (=> b!2130953 (= res!921229 (= (totalInput!3000 cacheFurthestNullable!114) totalInput!851))))

(declare-fun b!2130954 () Bool)

(declare-fun res!921226 () Bool)

(declare-fun e!1359193 () Bool)

(assert (=> b!2130954 (=> res!921226 e!1359193)))

(declare-fun lostCauseZipper!72 ((InoxSet Context!2562)) Bool)

(assert (=> b!2130954 (= res!921226 (lostCauseZipper!72 z!3839))))

(declare-fun e!1359204 () Bool)

(declare-fun tp!655314 () Bool)

(declare-datatypes ((tuple2!23698 0))(
  ( (tuple2!23699 (_1!13873 Context!2562) (_2!13873 C!11568)) )
))
(declare-datatypes ((tuple2!23700 0))(
  ( (tuple2!23701 (_1!13874 tuple2!23698) (_2!13874 (InoxSet Context!2562))) )
))
(declare-datatypes ((List!24050 0))(
  ( (Nil!23966) (Cons!23966 (h!29367 tuple2!23700) (t!196578 List!24050)) )
))
(declare-datatypes ((array!8805 0))(
  ( (array!8806 (arr!3914 (Array (_ BitVec 32) List!24050)) (size!18746 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5162 0))(
  ( (LongMapFixedSize!5163 (defaultEntry!2946 Int) (mask!6752 (_ BitVec 32)) (extraKeys!2829 (_ BitVec 32)) (zeroValue!2839 List!24050) (minValue!2839 List!24050) (_size!5213 (_ BitVec 32)) (_keys!2878 array!8799) (_values!2861 array!8805) (_vacant!2642 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10149 0))(
  ( (Cell!10150 (v!28518 LongMapFixedSize!5162)) )
))
(declare-datatypes ((MutLongMap!2581 0))(
  ( (LongMap!2581 (underlying!5357 Cell!10149)) (MutLongMapExt!2580 (__x!15919 Int)) )
))
(declare-datatypes ((Cell!10151 0))(
  ( (Cell!10152 (v!28519 MutLongMap!2581)) )
))
(declare-datatypes ((Hashable!2495 0))(
  ( (HashableExt!2494 (__x!15920 Int)) )
))
(declare-datatypes ((MutableMap!2495 0))(
  ( (MutableMapExt!2494 (__x!15921 Int)) (HashMap!2495 (underlying!5358 Cell!10151) (hashF!4418 Hashable!2495) (_size!5214 (_ BitVec 32)) (defaultValue!2657 Int)) )
))
(declare-datatypes ((CacheUp!1730 0))(
  ( (CacheUp!1731 (cache!2876 MutableMap!2495)) )
))
(declare-fun cacheUp!979 () CacheUp!1730)

(declare-fun tp!655317 () Bool)

(declare-fun array_inv!2795 (array!8799) Bool)

(declare-fun array_inv!2796 (array!8805) Bool)

(assert (=> b!2130955 (= e!1359196 (and tp!655333 tp!655317 tp!655314 (array_inv!2795 (_keys!2878 (v!28518 (underlying!5357 (v!28519 (underlying!5358 (cache!2876 cacheUp!979))))))) (array_inv!2796 (_values!2861 (v!28518 (underlying!5357 (v!28519 (underlying!5358 (cache!2876 cacheUp!979))))))) e!1359204))))

(declare-fun b!2130956 () Bool)

(declare-fun tp!655335 () Bool)

(assert (=> b!2130956 (= e!1359204 (and tp!655335 mapRes!12504))))

(declare-fun condMapEmpty!12502 () Bool)

(declare-fun mapDefault!12502 () List!24050)

(assert (=> b!2130956 (= condMapEmpty!12502 (= (arr!3914 (_values!2861 (v!28518 (underlying!5357 (v!28519 (underlying!5358 (cache!2876 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!24050)) mapDefault!12502)))))

(declare-fun e!1359180 () Bool)

(declare-fun e!1359206 () Bool)

(assert (=> b!2130957 (= e!1359180 (and e!1359206 tp!655319))))

(declare-fun res!921222 () Bool)

(assert (=> start!207528 (=> (not res!921222) (not e!1359178))))

(assert (=> start!207528 (= res!921222 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!207528 e!1359178))

(declare-fun e!1359191 () Bool)

(declare-fun inv!31592 (CacheFurthestNullable!668) Bool)

(assert (=> start!207528 (and (inv!31592 cacheFurthestNullable!114) e!1359191)))

(assert (=> start!207528 true))

(declare-fun e!1359177 () Bool)

(declare-fun inv!31593 (CacheDown!1712) Bool)

(assert (=> start!207528 (and (inv!31593 cacheDown!1098) e!1359177)))

(declare-fun e!1359190 () Bool)

(declare-fun inv!31594 (CacheUp!1730) Bool)

(assert (=> start!207528 (and (inv!31594 cacheUp!979) e!1359190)))

(declare-fun condSetEmpty!15732 () Bool)

(assert (=> start!207528 (= condSetEmpty!15732 (= z!3839 ((as const (Array Context!2562 Bool)) false)))))

(assert (=> start!207528 setRes!15733))

(declare-fun e!1359199 () Bool)

(declare-fun inv!31595 (BalanceConc!15460) Bool)

(assert (=> start!207528 (and (inv!31595 totalInput!851) e!1359199)))

(assert (=> start!207528 e!1359194))

(declare-fun tp!655309 () Bool)

(declare-fun setNonEmpty!15732 () Bool)

(declare-fun setElem!15733 () Context!2562)

(declare-fun inv!31596 (Context!2562) Bool)

(assert (=> setNonEmpty!15732 (= setRes!15733 (and tp!655309 (inv!31596 setElem!15733) e!1359187))))

(declare-fun setRest!15733 () (InoxSet Context!2562))

(assert (=> setNonEmpty!15732 (= z!3839 ((_ map or) (store ((as const (Array Context!2562 Bool)) false) setElem!15733 true) setRest!15733))))

(declare-fun e!1359188 () Bool)

(declare-fun e!1359207 () Bool)

(assert (=> b!2130958 (= e!1359188 (and e!1359207 tp!655331))))

(declare-fun b!2130959 () Bool)

(assert (=> b!2130959 (= e!1359193 (and (>= (+ 1 from!1043) 0) (<= (+ 1 from!1043) lt!796445)))))

(declare-fun lt!796446 () Bool)

(declare-fun nullableZipper!95 ((InoxSet Context!2562)) Bool)

(declare-datatypes ((tuple3!3108 0))(
  ( (tuple3!3109 (_1!13875 (InoxSet Context!2562)) (_2!13875 CacheUp!1730) (_3!2024 CacheDown!1712)) )
))
(declare-fun derivationStepZipperMem!22 ((InoxSet Context!2562) C!11568 CacheUp!1730 CacheDown!1712) tuple3!3108)

(declare-fun apply!5921 (BalanceConc!15460 Int) C!11568)

(assert (=> b!2130959 (= lt!796446 (nullableZipper!95 (_1!13875 (derivationStepZipperMem!22 z!3839 (apply!5921 totalInput!851 from!1043) cacheUp!979 cacheDown!1098))))))

(declare-fun b!2130960 () Bool)

(assert (=> b!2130960 (= e!1359176 (not e!1359193))))

(declare-fun res!921232 () Bool)

(assert (=> b!2130960 (=> res!921232 e!1359193)))

(declare-datatypes ((Option!4892 0))(
  ( (None!4891) (Some!4891 (v!28520 Int)) )
))
(declare-fun get!7357 (CacheFurthestNullable!668 (InoxSet Context!2562) Int Int) Option!4892)

(assert (=> b!2130960 (= res!921232 ((_ is Some!4891) (get!7357 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123)))))

(assert (=> b!2130960 (forall!4906 stack!8 lambda!79178)))

(declare-fun b!2130961 () Bool)

(declare-fun lt!796441 () MutLongMap!2581)

(assert (=> b!2130961 (= e!1359206 (and e!1359179 ((_ is LongMap!2581) lt!796441)))))

(assert (=> b!2130961 (= lt!796441 (v!28519 (underlying!5358 (cache!2876 cacheUp!979))))))

(declare-fun b!2130962 () Bool)

(declare-fun e!1359189 () Bool)

(declare-fun e!1359200 () Bool)

(assert (=> b!2130962 (= e!1359189 e!1359200)))

(declare-fun mapNonEmpty!12502 () Bool)

(declare-fun tp!655316 () Bool)

(declare-fun tp!655330 () Bool)

(assert (=> mapNonEmpty!12502 (= mapRes!12504 (and tp!655316 tp!655330))))

(declare-fun mapRest!12504 () (Array (_ BitVec 32) List!24050))

(declare-fun mapValue!12502 () List!24050)

(declare-fun mapKey!12502 () (_ BitVec 32))

(assert (=> mapNonEmpty!12502 (= (arr!3914 (_values!2861 (v!28518 (underlying!5357 (v!28519 (underlying!5358 (cache!2876 cacheUp!979))))))) (store mapRest!12504 mapKey!12502 mapValue!12502))))

(declare-fun setIsEmpty!15733 () Bool)

(declare-fun setRes!15732 () Bool)

(assert (=> setIsEmpty!15733 setRes!15732))

(declare-fun setElem!15732 () Context!2562)

(declare-fun setNonEmpty!15733 () Bool)

(declare-fun tp!655315 () Bool)

(assert (=> setNonEmpty!15733 (= setRes!15732 (and tp!655315 (inv!31596 setElem!15732) e!1359195))))

(declare-fun setRest!15732 () (InoxSet Context!2562))

(assert (=> setNonEmpty!15733 (= (z!5786 (h!29364 stack!8)) ((_ map or) (store ((as const (Array Context!2562 Bool)) false) setElem!15732 true) setRest!15732))))

(declare-fun mapNonEmpty!12503 () Bool)

(declare-fun tp!655321 () Bool)

(declare-fun tp!655332 () Bool)

(assert (=> mapNonEmpty!12503 (= mapRes!12503 (and tp!655321 tp!655332))))

(declare-fun mapRest!12503 () (Array (_ BitVec 32) List!24048))

(declare-fun mapKey!12504 () (_ BitVec 32))

(declare-fun mapValue!12504 () List!24048)

(assert (=> mapNonEmpty!12503 (= (arr!3912 (_values!2859 (v!28514 (underlying!5353 (v!28515 (underlying!5354 (cache!2874 cacheDown!1098))))))) (store mapRest!12503 mapKey!12504 mapValue!12504))))

(declare-fun b!2130963 () Bool)

(declare-fun res!921230 () Bool)

(assert (=> b!2130963 (=> (not res!921230) (not e!1359198))))

(declare-fun valid!2026 (CacheFurthestNullable!668) Bool)

(assert (=> b!2130963 (= res!921230 (valid!2026 cacheFurthestNullable!114))))

(declare-fun mapNonEmpty!12504 () Bool)

(declare-fun tp!655322 () Bool)

(declare-fun tp!655308 () Bool)

(assert (=> mapNonEmpty!12504 (= mapRes!12502 (and tp!655322 tp!655308))))

(declare-fun mapRest!12502 () (Array (_ BitVec 32) List!24049))

(declare-fun mapValue!12503 () List!24049)

(declare-fun mapKey!12503 () (_ BitVec 32))

(assert (=> mapNonEmpty!12504 (= (arr!3913 (_values!2860 (v!28516 (underlying!5355 (v!28517 (underlying!5356 (cache!2875 cacheFurthestNullable!114))))))) (store mapRest!12502 mapKey!12503 mapValue!12503))))

(declare-fun b!2130964 () Bool)

(declare-fun e!1359210 () Bool)

(declare-fun lt!796443 () MutLongMap!2579)

(assert (=> b!2130964 (= e!1359207 (and e!1359210 ((_ is LongMap!2579) lt!796443)))))

(assert (=> b!2130964 (= lt!796443 (v!28515 (underlying!5354 (cache!2874 cacheDown!1098))))))

(declare-fun tp!655312 () Bool)

(declare-fun tp!655327 () Bool)

(declare-fun array_inv!2797 (array!8801) Bool)

(assert (=> b!2130965 (= e!1359200 (and tp!655313 tp!655327 tp!655312 (array_inv!2795 (_keys!2876 (v!28514 (underlying!5353 (v!28515 (underlying!5354 (cache!2874 cacheDown!1098))))))) (array_inv!2797 (_values!2859 (v!28514 (underlying!5353 (v!28515 (underlying!5354 (cache!2874 cacheDown!1098))))))) e!1359192))))

(declare-fun b!2130966 () Bool)

(assert (=> b!2130966 (= e!1359177 e!1359188)))

(declare-fun b!2130967 () Bool)

(declare-fun res!921227 () Bool)

(assert (=> b!2130967 (=> res!921227 e!1359193)))

(assert (=> b!2130967 (= res!921227 (= from!1043 totalInputSize!296))))

(declare-fun b!2130968 () Bool)

(declare-fun e!1359181 () Bool)

(declare-fun tp!655320 () Bool)

(declare-fun inv!31597 (Conc!7849) Bool)

(assert (=> b!2130968 (= e!1359181 (and (inv!31597 (c!340183 (totalInput!2999 (h!29364 stack!8)))) tp!655320))))

(declare-fun res!921231 () Bool)

(assert (=> b!2130969 (=> (not res!921231) (not e!1359176))))

(assert (=> b!2130969 (= res!921231 (forall!4906 stack!8 lambda!79179))))

(declare-fun b!2130970 () Bool)

(assert (=> b!2130970 (= e!1359210 e!1359189)))

(declare-fun b!2130971 () Bool)

(assert (=> b!2130971 (= e!1359208 (and setRes!15732 (inv!31595 (totalInput!2999 (h!29364 stack!8))) e!1359181))))

(declare-fun condSetEmpty!15733 () Bool)

(assert (=> b!2130971 (= condSetEmpty!15733 (= (z!5786 (h!29364 stack!8)) ((as const (Array Context!2562 Bool)) false)))))

(declare-fun e!1359185 () Bool)

(declare-fun tp!655325 () Bool)

(declare-fun tp!655324 () Bool)

(declare-fun array_inv!2798 (array!8803) Bool)

(assert (=> b!2130972 (= e!1359185 (and tp!655318 tp!655325 tp!655324 (array_inv!2795 (_keys!2877 (v!28516 (underlying!5355 (v!28517 (underlying!5356 (cache!2875 cacheFurthestNullable!114))))))) (array_inv!2798 (_values!2860 (v!28516 (underlying!5355 (v!28517 (underlying!5356 (cache!2875 cacheFurthestNullable!114))))))) e!1359182))))

(declare-fun b!2130973 () Bool)

(declare-fun e!1359202 () Bool)

(declare-fun tp!655311 () Bool)

(assert (=> b!2130973 (= e!1359202 (and (inv!31597 (c!340183 (totalInput!3000 cacheFurthestNullable!114))) tp!655311))))

(declare-fun b!2130974 () Bool)

(declare-fun res!921224 () Bool)

(assert (=> b!2130974 (=> (not res!921224) (not e!1359198))))

(assert (=> b!2130974 (= res!921224 e!1359203)))

(declare-fun res!921223 () Bool)

(assert (=> b!2130974 (=> res!921223 e!1359203)))

(assert (=> b!2130974 (= res!921223 (not (nullableZipper!95 z!3839)))))

(declare-fun b!2130975 () Bool)

(declare-fun e!1359183 () Bool)

(assert (=> b!2130975 (= e!1359191 (and e!1359183 (inv!31595 (totalInput!3000 cacheFurthestNullable!114)) e!1359202))))

(declare-fun b!2130976 () Bool)

(assert (=> b!2130976 (= e!1359186 e!1359185)))

(declare-fun b!2130977 () Bool)

(declare-fun res!921220 () Bool)

(assert (=> b!2130977 (=> (not res!921220) (not e!1359198))))

(declare-fun valid!2027 (CacheUp!1730) Bool)

(assert (=> b!2130977 (= res!921220 (valid!2027 cacheUp!979))))

(declare-fun b!2130978 () Bool)

(declare-fun tp!655334 () Bool)

(assert (=> b!2130978 (= e!1359199 (and (inv!31597 (c!340183 totalInput!851)) tp!655334))))

(declare-fun mapIsEmpty!12504 () Bool)

(assert (=> mapIsEmpty!12504 mapRes!12503))

(declare-fun b!2130979 () Bool)

(assert (=> b!2130979 (= e!1359190 e!1359180)))

(assert (=> b!2130980 (= e!1359183 (and e!1359184 tp!655323))))

(assert (= (and start!207528 res!921222) b!2130940))

(assert (= (and b!2130940 res!921225) b!2130974))

(assert (= (and b!2130974 (not res!921223)) b!2130946))

(assert (= (and b!2130974 res!921224) b!2130977))

(assert (= (and b!2130977 res!921220) b!2130943))

(assert (= (and b!2130943 res!921228) b!2130963))

(assert (= (and b!2130963 res!921230) b!2130953))

(assert (= (and b!2130953 res!921229) b!2130950))

(assert (= (and b!2130950 res!921221) b!2130969))

(assert (= (and b!2130969 res!921231) b!2130960))

(assert (= (and b!2130960 (not res!921232)) b!2130967))

(assert (= (and b!2130967 (not res!921227)) b!2130954))

(assert (= (and b!2130954 (not res!921226)) b!2130959))

(assert (= (and b!2130952 condMapEmpty!12504) mapIsEmpty!12502))

(assert (= (and b!2130952 (not condMapEmpty!12504)) mapNonEmpty!12504))

(assert (= b!2130972 b!2130952))

(assert (= b!2130976 b!2130972))

(assert (= b!2130945 b!2130976))

(assert (= (and b!2130949 ((_ is LongMap!2580) (v!28517 (underlying!5356 (cache!2875 cacheFurthestNullable!114))))) b!2130945))

(assert (= b!2130980 b!2130949))

(assert (= (and b!2130975 ((_ is HashMap!2494) (cache!2875 cacheFurthestNullable!114))) b!2130980))

(assert (= b!2130975 b!2130973))

(assert (= start!207528 b!2130975))

(assert (= (and b!2130942 condMapEmpty!12503) mapIsEmpty!12504))

(assert (= (and b!2130942 (not condMapEmpty!12503)) mapNonEmpty!12503))

(assert (= b!2130965 b!2130942))

(assert (= b!2130962 b!2130965))

(assert (= b!2130970 b!2130962))

(assert (= (and b!2130964 ((_ is LongMap!2579) (v!28515 (underlying!5354 (cache!2874 cacheDown!1098))))) b!2130970))

(assert (= b!2130958 b!2130964))

(assert (= (and b!2130966 ((_ is HashMap!2493) (cache!2874 cacheDown!1098))) b!2130958))

(assert (= start!207528 b!2130966))

(assert (= (and b!2130956 condMapEmpty!12502) mapIsEmpty!12503))

(assert (= (and b!2130956 (not condMapEmpty!12502)) mapNonEmpty!12502))

(assert (= b!2130955 b!2130956))

(assert (= b!2130947 b!2130955))

(assert (= b!2130951 b!2130947))

(assert (= (and b!2130961 ((_ is LongMap!2581) (v!28519 (underlying!5358 (cache!2876 cacheUp!979))))) b!2130951))

(assert (= b!2130957 b!2130961))

(assert (= (and b!2130979 ((_ is HashMap!2495) (cache!2876 cacheUp!979))) b!2130957))

(assert (= start!207528 b!2130979))

(assert (= (and start!207528 condSetEmpty!15732) setIsEmpty!15732))

(assert (= (and start!207528 (not condSetEmpty!15732)) setNonEmpty!15732))

(assert (= setNonEmpty!15732 b!2130948))

(assert (= start!207528 b!2130978))

(assert (= (and b!2130971 condSetEmpty!15733) setIsEmpty!15733))

(assert (= (and b!2130971 (not condSetEmpty!15733)) setNonEmpty!15733))

(assert (= setNonEmpty!15733 b!2130944))

(assert (= b!2130971 b!2130968))

(assert (= b!2130941 b!2130971))

(assert (= (and start!207528 ((_ is Cons!23963) stack!8)) b!2130941))

(declare-fun m!2580836 () Bool)

(assert (=> setNonEmpty!15733 m!2580836))

(declare-fun m!2580838 () Bool)

(assert (=> b!2130971 m!2580838))

(declare-fun m!2580840 () Bool)

(assert (=> b!2130963 m!2580840))

(declare-fun m!2580842 () Bool)

(assert (=> b!2130969 m!2580842))

(declare-fun m!2580844 () Bool)

(assert (=> b!2130968 m!2580844))

(declare-fun m!2580846 () Bool)

(assert (=> start!207528 m!2580846))

(declare-fun m!2580848 () Bool)

(assert (=> start!207528 m!2580848))

(declare-fun m!2580850 () Bool)

(assert (=> start!207528 m!2580850))

(declare-fun m!2580852 () Bool)

(assert (=> start!207528 m!2580852))

(declare-fun m!2580854 () Bool)

(assert (=> b!2130977 m!2580854))

(declare-fun m!2580856 () Bool)

(assert (=> b!2130943 m!2580856))

(declare-fun m!2580858 () Bool)

(assert (=> b!2130972 m!2580858))

(declare-fun m!2580860 () Bool)

(assert (=> b!2130972 m!2580860))

(declare-fun m!2580862 () Bool)

(assert (=> b!2130959 m!2580862))

(assert (=> b!2130959 m!2580862))

(declare-fun m!2580864 () Bool)

(assert (=> b!2130959 m!2580864))

(declare-fun m!2580866 () Bool)

(assert (=> b!2130959 m!2580866))

(declare-fun m!2580868 () Bool)

(assert (=> b!2130978 m!2580868))

(declare-fun m!2580870 () Bool)

(assert (=> b!2130941 m!2580870))

(declare-fun m!2580872 () Bool)

(assert (=> b!2130940 m!2580872))

(declare-fun m!2580874 () Bool)

(assert (=> b!2130950 m!2580874))

(declare-fun m!2580876 () Bool)

(assert (=> b!2130950 m!2580876))

(declare-fun m!2580878 () Bool)

(assert (=> b!2130965 m!2580878))

(declare-fun m!2580880 () Bool)

(assert (=> b!2130965 m!2580880))

(declare-fun m!2580882 () Bool)

(assert (=> b!2130955 m!2580882))

(declare-fun m!2580884 () Bool)

(assert (=> b!2130955 m!2580884))

(declare-fun m!2580886 () Bool)

(assert (=> b!2130960 m!2580886))

(assert (=> b!2130960 m!2580874))

(declare-fun m!2580888 () Bool)

(assert (=> mapNonEmpty!12502 m!2580888))

(declare-fun m!2580890 () Bool)

(assert (=> b!2130973 m!2580890))

(declare-fun m!2580892 () Bool)

(assert (=> b!2130975 m!2580892))

(declare-fun m!2580894 () Bool)

(assert (=> b!2130974 m!2580894))

(declare-fun m!2580896 () Bool)

(assert (=> mapNonEmpty!12504 m!2580896))

(declare-fun m!2580898 () Bool)

(assert (=> setNonEmpty!15732 m!2580898))

(declare-fun m!2580900 () Bool)

(assert (=> mapNonEmpty!12503 m!2580900))

(declare-fun m!2580902 () Bool)

(assert (=> b!2130954 m!2580902))

(check-sat b_and!171769 (not b!2130973) (not b!2130944) (not b!2130954) (not b!2130960) b_and!171773 (not b!2130968) (not b_next!62895) (not mapNonEmpty!12503) b_and!171777 (not mapNonEmpty!12504) (not b!2130974) (not b!2130952) (not b!2130971) (not b!2130941) (not b_next!62903) (not b_next!62897) (not b!2130948) (not setNonEmpty!15732) (not start!207528) (not b!2130950) (not b_next!62893) (not b!2130955) b_and!171775 (not b!2130972) b_and!171779 (not mapNonEmpty!12502) (not b!2130959) (not b!2130965) (not b!2130977) (not b_next!62901) b_and!171771 (not b!2130975) (not b!2130943) (not b!2130942) (not b!2130940) (not b_next!62899) (not b!2130978) (not b!2130963) (not b!2130956) (not b!2130969) (not setNonEmpty!15733))
(check-sat b_and!171769 (not b_next!62893) b_and!171773 b_and!171775 b_and!171779 (not b_next!62899) (not b_next!62895) b_and!171777 (not b_next!62903) (not b_next!62897) (not b_next!62901) b_and!171771)
