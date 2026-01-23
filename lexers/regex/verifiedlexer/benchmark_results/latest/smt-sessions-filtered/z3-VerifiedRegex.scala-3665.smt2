; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208116 () Bool)

(assert start!208116)

(declare-fun b!2144961 () Bool)

(declare-fun b_free!63221 () Bool)

(declare-fun b_next!63925 () Bool)

(assert (=> b!2144961 (= b_free!63221 (not b_next!63925))))

(declare-fun tp!664858 () Bool)

(declare-fun b_and!172801 () Bool)

(assert (=> b!2144961 (= tp!664858 b_and!172801)))

(declare-fun b!2144963 () Bool)

(declare-fun b_free!63223 () Bool)

(declare-fun b_next!63927 () Bool)

(assert (=> b!2144963 (= b_free!63223 (not b_next!63927))))

(declare-fun tp!664860 () Bool)

(declare-fun b_and!172803 () Bool)

(assert (=> b!2144963 (= tp!664860 b_and!172803)))

(declare-fun b!2144966 () Bool)

(declare-fun b_free!63225 () Bool)

(declare-fun b_next!63929 () Bool)

(assert (=> b!2144966 (= b_free!63225 (not b_next!63929))))

(declare-fun tp!664869 () Bool)

(declare-fun b_and!172805 () Bool)

(assert (=> b!2144966 (= tp!664869 b_and!172805)))

(declare-fun b!2144955 () Bool)

(declare-fun b_free!63227 () Bool)

(declare-fun b_next!63931 () Bool)

(assert (=> b!2144955 (= b_free!63227 (not b_next!63931))))

(declare-fun tp!664871 () Bool)

(declare-fun b_and!172807 () Bool)

(assert (=> b!2144955 (= tp!664871 b_and!172807)))

(declare-fun b!2144958 () Bool)

(declare-fun b_free!63229 () Bool)

(declare-fun b_next!63933 () Bool)

(assert (=> b!2144958 (= b_free!63229 (not b_next!63933))))

(declare-fun tp!664853 () Bool)

(declare-fun b_and!172809 () Bool)

(assert (=> b!2144958 (= tp!664853 b_and!172809)))

(declare-fun b!2144968 () Bool)

(declare-fun b_free!63231 () Bool)

(declare-fun b_next!63935 () Bool)

(assert (=> b!2144968 (= b_free!63231 (not b_next!63935))))

(declare-fun tp!664854 () Bool)

(declare-fun b_and!172811 () Bool)

(assert (=> b!2144968 (= tp!664854 b_and!172811)))

(declare-fun b!2144935 () Bool)

(assert (=> b!2144935 true))

(declare-fun bs!445342 () Bool)

(declare-fun b!2144957 () Bool)

(assert (= bs!445342 (and b!2144957 b!2144935)))

(declare-fun lambda!80443 () Int)

(declare-fun lambda!80442 () Int)

(assert (=> bs!445342 (not (= lambda!80443 lambda!80442))))

(assert (=> b!2144957 true))

(declare-fun b!2144933 () Bool)

(declare-fun e!1370755 () Bool)

(declare-datatypes ((C!11740 0))(
  ( (C!11741 (val!6856 Int)) )
))
(declare-datatypes ((List!24527 0))(
  ( (Nil!24443) (Cons!24443 (h!29844 C!11740) (t!197057 List!24527)) )
))
(declare-datatypes ((IArray!15871 0))(
  ( (IArray!15872 (innerList!7993 List!24527)) )
))
(declare-datatypes ((Conc!7933 0))(
  ( (Node!7933 (left!18784 Conc!7933) (right!19114 Conc!7933) (csize!16096 Int) (cheight!8144 Int)) (Leaf!11599 (xs!10875 IArray!15871) (csize!16097 Int)) (Empty!7933) )
))
(declare-datatypes ((BalanceConc!15628 0))(
  ( (BalanceConc!15629 (c!340713 Conc!7933)) )
))
(declare-fun totalInput!851 () BalanceConc!15628)

(declare-fun tp!664859 () Bool)

(declare-fun inv!32160 (Conc!7933) Bool)

(assert (=> b!2144933 (= e!1370755 (and (inv!32160 (c!340713 totalInput!851)) tp!664859))))

(declare-fun b!2144934 () Bool)

(declare-fun e!1370761 () Bool)

(declare-fun e!1370740 () Bool)

(assert (=> b!2144934 (= e!1370761 e!1370740)))

(declare-fun b!2144936 () Bool)

(declare-fun e!1370745 () Bool)

(declare-fun e!1370737 () Bool)

(assert (=> b!2144936 (= e!1370745 e!1370737)))

(declare-fun b!2144937 () Bool)

(declare-fun e!1370750 () Bool)

(declare-fun e!1370742 () Bool)

(declare-datatypes ((Regex!5797 0))(
  ( (ElementMatch!5797 (c!340714 C!11740)) (Concat!10099 (regOne!12106 Regex!5797) (regTwo!12106 Regex!5797)) (EmptyExpr!5797) (Star!5797 (reg!6126 Regex!5797)) (EmptyLang!5797) (Union!5797 (regOne!12107 Regex!5797) (regTwo!12107 Regex!5797)) )
))
(declare-datatypes ((List!24528 0))(
  ( (Nil!24444) (Cons!24444 (h!29845 Regex!5797) (t!197058 List!24528)) )
))
(declare-datatypes ((Context!2734 0))(
  ( (Context!2735 (exprs!1867 List!24528)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3504 0))(
  ( (tuple3!3505 (_1!14374 (InoxSet Context!2734)) (_2!14374 Int) (_3!2222 Int)) )
))
(declare-datatypes ((tuple2!24304 0))(
  ( (tuple2!24305 (_1!14375 tuple3!3504) (_2!14375 Int)) )
))
(declare-datatypes ((List!24529 0))(
  ( (Nil!24445) (Cons!24445 (h!29846 tuple2!24304) (t!197059 List!24529)) )
))
(declare-datatypes ((array!9471 0))(
  ( (array!9472 (arr!4229 (Array (_ BitVec 32) (_ BitVec 64))) (size!19134 (_ BitVec 32))) )
))
(declare-datatypes ((array!9473 0))(
  ( (array!9474 (arr!4230 (Array (_ BitVec 32) List!24529)) (size!19135 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5622 0))(
  ( (LongMapFixedSize!5623 (defaultEntry!3176 Int) (mask!7025 (_ BitVec 32)) (extraKeys!3059 (_ BitVec 32)) (zeroValue!3069 List!24529) (minValue!3069 List!24529) (_size!5673 (_ BitVec 32)) (_keys!3108 array!9471) (_values!3091 array!9473) (_vacant!2872 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11069 0))(
  ( (Cell!11070 (v!29036 LongMapFixedSize!5622)) )
))
(declare-datatypes ((MutLongMap!2811 0))(
  ( (LongMap!2811 (underlying!5817 Cell!11069)) (MutLongMapExt!2810 (__x!16609 Int)) )
))
(declare-fun lt!798683 () MutLongMap!2811)

(get-info :version)

(assert (=> b!2144937 (= e!1370750 (and e!1370742 ((_ is LongMap!2811) lt!798683)))))

(declare-datatypes ((Cell!11071 0))(
  ( (Cell!11072 (v!29037 MutLongMap!2811)) )
))
(declare-datatypes ((Hashable!2725 0))(
  ( (HashableExt!2724 (__x!16610 Int)) )
))
(declare-datatypes ((MutableMap!2725 0))(
  ( (MutableMapExt!2724 (__x!16611 Int)) (HashMap!2725 (underlying!5818 Cell!11071) (hashF!4648 Hashable!2725) (_size!5674 (_ BitVec 32)) (defaultValue!2887 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!832 0))(
  ( (CacheFurthestNullable!833 (cache!3106 MutableMap!2725) (totalInput!3164 BalanceConc!15628)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!832)

(assert (=> b!2144937 (= lt!798683 (v!29037 (underlying!5818 (cache!3106 cacheFurthestNullable!114))))))

(declare-fun b!2144938 () Bool)

(declare-fun res!925605 () Bool)

(declare-fun e!1370749 () Bool)

(assert (=> b!2144938 (=> res!925605 e!1370749)))

(declare-fun z!3839 () (InoxSet Context!2734))

(declare-fun lostCauseZipper!128 ((InoxSet Context!2734)) Bool)

(assert (=> b!2144938 (= res!925605 (lostCauseZipper!128 z!3839))))

(declare-fun b!2144939 () Bool)

(declare-fun e!1370743 () Bool)

(declare-fun e!1370748 () Bool)

(assert (=> b!2144939 (= e!1370743 e!1370748)))

(declare-fun b!2144940 () Bool)

(declare-fun res!925600 () Bool)

(declare-fun e!1370747 () Bool)

(assert (=> b!2144940 (=> (not res!925600) (not e!1370747))))

(declare-fun e!1370759 () Bool)

(assert (=> b!2144940 (= res!925600 e!1370759)))

(declare-fun res!925604 () Bool)

(assert (=> b!2144940 (=> res!925604 e!1370759)))

(declare-fun nullableZipper!152 ((InoxSet Context!2734)) Bool)

(assert (=> b!2144940 (= res!925604 (not (nullableZipper!152 z!3839)))))

(declare-fun b!2144941 () Bool)

(declare-fun lastNullablePos!123 () Int)

(declare-fun from!1043 () Int)

(assert (=> b!2144941 (= e!1370759 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun b!2144942 () Bool)

(declare-fun e!1370736 () Bool)

(declare-fun tp!664847 () Bool)

(declare-fun mapRes!13362 () Bool)

(assert (=> b!2144942 (= e!1370736 (and tp!664847 mapRes!13362))))

(declare-fun condMapEmpty!13360 () Bool)

(declare-datatypes ((tuple3!3506 0))(
  ( (tuple3!3507 (_1!14376 Regex!5797) (_2!14376 Context!2734) (_3!2223 C!11740)) )
))
(declare-datatypes ((tuple2!24306 0))(
  ( (tuple2!24307 (_1!14377 tuple3!3506) (_2!14377 (InoxSet Context!2734))) )
))
(declare-datatypes ((List!24530 0))(
  ( (Nil!24446) (Cons!24446 (h!29847 tuple2!24306) (t!197060 List!24530)) )
))
(declare-datatypes ((Hashable!2726 0))(
  ( (HashableExt!2725 (__x!16612 Int)) )
))
(declare-datatypes ((array!9475 0))(
  ( (array!9476 (arr!4231 (Array (_ BitVec 32) List!24530)) (size!19136 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5624 0))(
  ( (LongMapFixedSize!5625 (defaultEntry!3177 Int) (mask!7026 (_ BitVec 32)) (extraKeys!3060 (_ BitVec 32)) (zeroValue!3070 List!24530) (minValue!3070 List!24530) (_size!5675 (_ BitVec 32)) (_keys!3109 array!9471) (_values!3092 array!9475) (_vacant!2873 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11073 0))(
  ( (Cell!11074 (v!29038 LongMapFixedSize!5624)) )
))
(declare-datatypes ((MutLongMap!2812 0))(
  ( (LongMap!2812 (underlying!5819 Cell!11073)) (MutLongMapExt!2811 (__x!16613 Int)) )
))
(declare-datatypes ((Cell!11075 0))(
  ( (Cell!11076 (v!29039 MutLongMap!2812)) )
))
(declare-datatypes ((MutableMap!2726 0))(
  ( (MutableMapExt!2725 (__x!16614 Int)) (HashMap!2726 (underlying!5820 Cell!11075) (hashF!4649 Hashable!2726) (_size!5676 (_ BitVec 32)) (defaultValue!2888 Int)) )
))
(declare-datatypes ((CacheDown!1868 0))(
  ( (CacheDown!1869 (cache!3107 MutableMap!2726)) )
))
(declare-fun cacheDown!1098 () CacheDown!1868)

(declare-fun mapDefault!13361 () List!24530)

(assert (=> b!2144942 (= condMapEmpty!13360 (= (arr!4231 (_values!3092 (v!29038 (underlying!5819 (v!29039 (underlying!5820 (cache!3107 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!24530)) mapDefault!13361)))))

(declare-fun b!2144943 () Bool)

(declare-fun e!1370746 () Bool)

(declare-fun e!1370733 () Bool)

(assert (=> b!2144943 (= e!1370746 e!1370733)))

(declare-fun b!2144944 () Bool)

(declare-fun e!1370764 () Bool)

(declare-fun tp!664865 () Bool)

(assert (=> b!2144944 (= e!1370764 tp!664865)))

(declare-fun b!2144945 () Bool)

(declare-fun e!1370766 () Bool)

(assert (=> b!2144945 (= e!1370766 e!1370743)))

(declare-fun b!2144946 () Bool)

(declare-fun res!925594 () Bool)

(assert (=> b!2144946 (=> res!925594 e!1370749)))

(declare-fun totalInputSize!296 () Int)

(assert (=> b!2144946 (= res!925594 (= from!1043 totalInputSize!296))))

(declare-fun setIsEmpty!16681 () Bool)

(declare-fun setRes!16681 () Bool)

(assert (=> setIsEmpty!16681 setRes!16681))

(declare-fun setIsEmpty!16682 () Bool)

(declare-fun setRes!16682 () Bool)

(assert (=> setIsEmpty!16682 setRes!16682))

(declare-fun mapNonEmpty!13360 () Bool)

(declare-fun tp!664873 () Bool)

(declare-fun tp!664856 () Bool)

(assert (=> mapNonEmpty!13360 (= mapRes!13362 (and tp!664873 tp!664856))))

(declare-fun mapKey!13361 () (_ BitVec 32))

(declare-fun mapValue!13362 () List!24530)

(declare-fun mapRest!13360 () (Array (_ BitVec 32) List!24530))

(assert (=> mapNonEmpty!13360 (= (arr!4231 (_values!3092 (v!29038 (underlying!5819 (v!29039 (underlying!5820 (cache!3107 cacheDown!1098))))))) (store mapRest!13360 mapKey!13361 mapValue!13362))))

(declare-fun e!1370756 () Bool)

(assert (=> b!2144935 (= e!1370747 e!1370756)))

(declare-fun res!925606 () Bool)

(assert (=> b!2144935 (=> (not res!925606) (not e!1370756))))

(declare-datatypes ((StackFrame!262 0))(
  ( (StackFrame!263 (z!5900 (InoxSet Context!2734)) (from!2764 Int) (lastNullablePos!451 Int) (res!925608 Int) (totalInput!3165 BalanceConc!15628)) )
))
(declare-datatypes ((List!24531 0))(
  ( (Nil!24447) (Cons!24447 (h!29848 StackFrame!262) (t!197061 List!24531)) )
))
(declare-fun stack!8 () List!24531)

(declare-fun forall!4991 (List!24531 Int) Bool)

(assert (=> b!2144935 (= res!925606 (forall!4991 stack!8 lambda!80442))))

(declare-fun lt!798685 () Int)

(declare-fun lt!798682 () Int)

(declare-fun furthestNullablePosition!90 ((InoxSet Context!2734) Int BalanceConc!15628 Int Int) Int)

(assert (=> b!2144935 (= lt!798685 (furthestNullablePosition!90 z!3839 from!1043 totalInput!851 lt!798682 lastNullablePos!123))))

(declare-fun res!925607 () Bool)

(declare-fun e!1370762 () Bool)

(assert (=> start!208116 (=> (not res!925607) (not e!1370762))))

(assert (=> start!208116 (= res!925607 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!208116 e!1370762))

(declare-fun e!1370734 () Bool)

(declare-fun inv!32161 (CacheFurthestNullable!832) Bool)

(assert (=> start!208116 (and (inv!32161 cacheFurthestNullable!114) e!1370734)))

(assert (=> start!208116 true))

(declare-fun inv!32162 (CacheDown!1868) Bool)

(assert (=> start!208116 (and (inv!32162 cacheDown!1098) e!1370746)))

(declare-datatypes ((tuple2!24308 0))(
  ( (tuple2!24309 (_1!14378 Context!2734) (_2!14378 C!11740)) )
))
(declare-datatypes ((tuple2!24310 0))(
  ( (tuple2!24311 (_1!14379 tuple2!24308) (_2!14379 (InoxSet Context!2734))) )
))
(declare-datatypes ((List!24532 0))(
  ( (Nil!24448) (Cons!24448 (h!29849 tuple2!24310) (t!197062 List!24532)) )
))
(declare-datatypes ((array!9477 0))(
  ( (array!9478 (arr!4232 (Array (_ BitVec 32) List!24532)) (size!19137 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5626 0))(
  ( (LongMapFixedSize!5627 (defaultEntry!3178 Int) (mask!7027 (_ BitVec 32)) (extraKeys!3061 (_ BitVec 32)) (zeroValue!3071 List!24532) (minValue!3071 List!24532) (_size!5677 (_ BitVec 32)) (_keys!3110 array!9471) (_values!3093 array!9477) (_vacant!2874 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11077 0))(
  ( (Cell!11078 (v!29040 LongMapFixedSize!5626)) )
))
(declare-datatypes ((MutLongMap!2813 0))(
  ( (LongMap!2813 (underlying!5821 Cell!11077)) (MutLongMapExt!2812 (__x!16615 Int)) )
))
(declare-datatypes ((Cell!11079 0))(
  ( (Cell!11080 (v!29041 MutLongMap!2813)) )
))
(declare-datatypes ((Hashable!2727 0))(
  ( (HashableExt!2726 (__x!16616 Int)) )
))
(declare-datatypes ((MutableMap!2727 0))(
  ( (MutableMapExt!2726 (__x!16617 Int)) (HashMap!2727 (underlying!5822 Cell!11079) (hashF!4650 Hashable!2727) (_size!5678 (_ BitVec 32)) (defaultValue!2889 Int)) )
))
(declare-datatypes ((CacheUp!1874 0))(
  ( (CacheUp!1875 (cache!3108 MutableMap!2727)) )
))
(declare-fun cacheUp!979 () CacheUp!1874)

(declare-fun inv!32163 (CacheUp!1874) Bool)

(assert (=> start!208116 (and (inv!32163 cacheUp!979) e!1370745)))

(declare-fun condSetEmpty!16682 () Bool)

(assert (=> start!208116 (= condSetEmpty!16682 (= z!3839 ((as const (Array Context!2734 Bool)) false)))))

(assert (=> start!208116 setRes!16682))

(declare-fun inv!32164 (BalanceConc!15628) Bool)

(assert (=> start!208116 (and (inv!32164 totalInput!851) e!1370755)))

(declare-fun e!1370765 () Bool)

(assert (=> start!208116 e!1370765))

(declare-fun b!2144947 () Bool)

(declare-fun res!925595 () Bool)

(assert (=> b!2144947 (=> (not res!925595) (not e!1370747))))

(declare-fun valid!2191 (CacheUp!1874) Bool)

(assert (=> b!2144947 (= res!925595 (valid!2191 cacheUp!979))))

(declare-fun mapNonEmpty!13361 () Bool)

(declare-fun mapRes!13360 () Bool)

(declare-fun tp!664861 () Bool)

(declare-fun tp!664867 () Bool)

(assert (=> mapNonEmpty!13361 (= mapRes!13360 (and tp!664861 tp!664867))))

(declare-fun mapValue!13361 () List!24532)

(declare-fun mapRest!13362 () (Array (_ BitVec 32) List!24532))

(declare-fun mapKey!13362 () (_ BitVec 32))

(assert (=> mapNonEmpty!13361 (= (arr!4232 (_values!3093 (v!29040 (underlying!5821 (v!29041 (underlying!5822 (cache!3108 cacheUp!979))))))) (store mapRest!13362 mapKey!13362 mapValue!13361))))

(declare-fun b!2144948 () Bool)

(declare-fun e!1370744 () Bool)

(declare-fun tp!664845 () Bool)

(declare-fun mapRes!13361 () Bool)

(assert (=> b!2144948 (= e!1370744 (and tp!664845 mapRes!13361))))

(declare-fun condMapEmpty!13362 () Bool)

(declare-fun mapDefault!13362 () List!24529)

(assert (=> b!2144948 (= condMapEmpty!13362 (= (arr!4230 (_values!3091 (v!29036 (underlying!5817 (v!29037 (underlying!5818 (cache!3106 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!24529)) mapDefault!13362)))))

(declare-fun b!2144949 () Bool)

(declare-fun e!1370760 () Bool)

(declare-fun tp!664863 () Bool)

(assert (=> b!2144949 (= e!1370760 (and tp!664863 mapRes!13360))))

(declare-fun condMapEmpty!13361 () Bool)

(declare-fun mapDefault!13360 () List!24532)

(assert (=> b!2144949 (= condMapEmpty!13361 (= (arr!4232 (_values!3093 (v!29040 (underlying!5821 (v!29041 (underlying!5822 (cache!3108 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!24532)) mapDefault!13360)))))

(declare-fun e!1370754 () Bool)

(declare-fun b!2144950 () Bool)

(declare-fun e!1370729 () Bool)

(assert (=> b!2144950 (= e!1370734 (and e!1370754 (inv!32164 (totalInput!3164 cacheFurthestNullable!114)) e!1370729))))

(declare-fun b!2144951 () Bool)

(declare-fun e!1370752 () Int)

(assert (=> b!2144951 (= e!1370752 lastNullablePos!123)))

(declare-fun b!2144952 () Bool)

(assert (=> b!2144952 (= e!1370762 e!1370747)))

(declare-fun res!925601 () Bool)

(assert (=> b!2144952 (=> (not res!925601) (not e!1370747))))

(assert (=> b!2144952 (= res!925601 (and (= totalInputSize!296 lt!798682) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun size!19138 (BalanceConc!15628) Int)

(assert (=> b!2144952 (= lt!798682 (size!19138 totalInput!851))))

(declare-fun setNonEmpty!16681 () Bool)

(declare-fun setElem!16682 () Context!2734)

(declare-fun tp!664864 () Bool)

(declare-fun inv!32165 (Context!2734) Bool)

(assert (=> setNonEmpty!16681 (= setRes!16682 (and tp!664864 (inv!32165 setElem!16682) e!1370764))))

(declare-fun setRest!16681 () (InoxSet Context!2734))

(assert (=> setNonEmpty!16681 (= z!3839 ((_ map or) (store ((as const (Array Context!2734 Bool)) false) setElem!16682 true) setRest!16681))))

(declare-fun b!2144953 () Bool)

(declare-fun e!1370730 () Bool)

(declare-fun tp!664862 () Bool)

(assert (=> b!2144953 (= e!1370730 (and (inv!32160 (c!340713 (totalInput!3165 (h!29848 stack!8)))) tp!664862))))

(declare-fun b!2144954 () Bool)

(declare-fun res!925602 () Bool)

(assert (=> b!2144954 (=> (not res!925602) (not e!1370747))))

(declare-fun valid!2192 (CacheFurthestNullable!832) Bool)

(assert (=> b!2144954 (= res!925602 (valid!2192 cacheFurthestNullable!114))))

(declare-fun e!1370758 () Bool)

(assert (=> b!2144955 (= e!1370737 (and e!1370758 tp!664871))))

(declare-fun b!2144956 () Bool)

(declare-fun tp!664849 () Bool)

(declare-fun e!1370763 () Bool)

(declare-fun inv!32166 (StackFrame!262) Bool)

(assert (=> b!2144956 (= e!1370765 (and (inv!32166 (h!29848 stack!8)) e!1370763 tp!664849))))

(declare-fun res!925603 () Bool)

(assert (=> b!2144957 (=> (not res!925603) (not e!1370756))))

(assert (=> b!2144957 (= res!925603 (forall!4991 stack!8 lambda!80443))))

(declare-fun tp!664846 () Bool)

(declare-fun tp!664870 () Bool)

(declare-fun array_inv!3026 (array!9471) Bool)

(declare-fun array_inv!3027 (array!9475) Bool)

(assert (=> b!2144958 (= e!1370748 (and tp!664853 tp!664870 tp!664846 (array_inv!3026 (_keys!3109 (v!29038 (underlying!5819 (v!29039 (underlying!5820 (cache!3107 cacheDown!1098))))))) (array_inv!3027 (_values!3092 (v!29038 (underlying!5819 (v!29039 (underlying!5820 (cache!3107 cacheDown!1098))))))) e!1370736))))

(declare-fun b!2144959 () Bool)

(declare-fun res!925597 () Bool)

(assert (=> b!2144959 (=> (not res!925597) (not e!1370747))))

(declare-fun valid!2193 (CacheDown!1868) Bool)

(assert (=> b!2144959 (= res!925597 (valid!2193 cacheDown!1098))))

(declare-fun b!2144960 () Bool)

(declare-fun tp!664851 () Bool)

(assert (=> b!2144960 (= e!1370729 (and (inv!32160 (c!340713 (totalInput!3164 cacheFurthestNullable!114))) tp!664851))))

(declare-fun e!1370753 () Bool)

(declare-fun tp!664866 () Bool)

(declare-fun tp!664848 () Bool)

(declare-fun array_inv!3028 (array!9477) Bool)

(assert (=> b!2144961 (= e!1370753 (and tp!664858 tp!664848 tp!664866 (array_inv!3026 (_keys!3110 (v!29040 (underlying!5821 (v!29041 (underlying!5822 (cache!3108 cacheUp!979))))))) (array_inv!3028 (_values!3093 (v!29040 (underlying!5821 (v!29041 (underlying!5822 (cache!3108 cacheUp!979))))))) e!1370760))))

(declare-fun mapIsEmpty!13360 () Bool)

(assert (=> mapIsEmpty!13360 mapRes!13362))

(declare-fun b!2144962 () Bool)

(declare-fun res!925599 () Bool)

(assert (=> b!2144962 (=> (not res!925599) (not e!1370747))))

(assert (=> b!2144962 (= res!925599 (= (totalInput!3164 cacheFurthestNullable!114) totalInput!851))))

(declare-fun e!1370738 () Bool)

(assert (=> b!2144963 (= e!1370733 (and e!1370738 tp!664860))))

(declare-fun b!2144964 () Bool)

(assert (=> b!2144964 (= e!1370740 e!1370753)))

(declare-fun b!2144965 () Bool)

(declare-fun lt!798684 () MutLongMap!2813)

(assert (=> b!2144965 (= e!1370758 (and e!1370761 ((_ is LongMap!2813) lt!798684)))))

(assert (=> b!2144965 (= lt!798684 (v!29041 (underlying!5822 (cache!3108 cacheUp!979))))))

(declare-fun mapIsEmpty!13361 () Bool)

(assert (=> mapIsEmpty!13361 mapRes!13360))

(declare-fun mapIsEmpty!13362 () Bool)

(assert (=> mapIsEmpty!13362 mapRes!13361))

(declare-fun tp!664855 () Bool)

(declare-fun tp!664852 () Bool)

(declare-fun e!1370739 () Bool)

(declare-fun array_inv!3029 (array!9473) Bool)

(assert (=> b!2144966 (= e!1370739 (and tp!664869 tp!664852 tp!664855 (array_inv!3026 (_keys!3108 (v!29036 (underlying!5817 (v!29037 (underlying!5818 (cache!3106 cacheFurthestNullable!114))))))) (array_inv!3029 (_values!3091 (v!29036 (underlying!5817 (v!29037 (underlying!5818 (cache!3106 cacheFurthestNullable!114))))))) e!1370744))))

(declare-fun b!2144967 () Bool)

(assert (=> b!2144967 (= e!1370756 (not e!1370749))))

(declare-fun res!925598 () Bool)

(assert (=> b!2144967 (=> res!925598 e!1370749)))

(declare-datatypes ((Option!4950 0))(
  ( (None!4949) (Some!4949 (v!29042 Int)) )
))
(declare-fun get!7459 (CacheFurthestNullable!832 (InoxSet Context!2734) Int Int) Option!4950)

(assert (=> b!2144967 (= res!925598 ((_ is Some!4949) (get!7459 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123)))))

(assert (=> b!2144967 (forall!4991 stack!8 lambda!80442)))

(assert (=> b!2144968 (= e!1370754 (and e!1370750 tp!664854))))

(declare-fun b!2144969 () Bool)

(declare-fun e!1370735 () Bool)

(assert (=> b!2144969 (= e!1370742 e!1370735)))

(declare-fun b!2144970 () Bool)

(assert (=> b!2144970 (= e!1370735 e!1370739)))

(declare-fun b!2144971 () Bool)

(declare-fun e!1370731 () Bool)

(declare-fun tp!664868 () Bool)

(assert (=> b!2144971 (= e!1370731 tp!664868)))

(declare-fun setNonEmpty!16682 () Bool)

(declare-fun setElem!16681 () Context!2734)

(declare-fun tp!664872 () Bool)

(assert (=> setNonEmpty!16682 (= setRes!16681 (and tp!664872 (inv!32165 setElem!16681) e!1370731))))

(declare-fun setRest!16682 () (InoxSet Context!2734))

(assert (=> setNonEmpty!16682 (= (z!5900 (h!29848 stack!8)) ((_ map or) (store ((as const (Array Context!2734 Bool)) false) setElem!16681 true) setRest!16682))))

(declare-fun b!2144972 () Bool)

(declare-fun e!1370757 () Bool)

(assert (=> b!2144972 (= e!1370749 e!1370757)))

(declare-fun res!925596 () Bool)

(assert (=> b!2144972 (=> res!925596 e!1370757)))

(declare-datatypes ((tuple3!3508 0))(
  ( (tuple3!3509 (_1!14380 (InoxSet Context!2734)) (_2!14380 CacheUp!1874) (_3!2224 CacheDown!1868)) )
))
(declare-fun lt!798686 () tuple3!3508)

(assert (=> b!2144972 (= res!925596 (not (= lt!798685 (furthestNullablePosition!90 (_1!14380 lt!798686) (+ 1 from!1043) totalInput!851 lt!798682 e!1370752))))))

(declare-fun c!340712 () Bool)

(assert (=> b!2144972 (= c!340712 (nullableZipper!152 (_1!14380 lt!798686)))))

(declare-fun derivationStepZipperMem!61 ((InoxSet Context!2734) C!11740 CacheUp!1874 CacheDown!1868) tuple3!3508)

(declare-fun apply!5976 (BalanceConc!15628 Int) C!11740)

(assert (=> b!2144972 (= lt!798686 (derivationStepZipperMem!61 z!3839 (apply!5976 totalInput!851 from!1043) cacheUp!979 cacheDown!1098))))

(declare-fun mapNonEmpty!13362 () Bool)

(declare-fun tp!664857 () Bool)

(declare-fun tp!664850 () Bool)

(assert (=> mapNonEmpty!13362 (= mapRes!13361 (and tp!664857 tp!664850))))

(declare-fun mapKey!13360 () (_ BitVec 32))

(declare-fun mapRest!13361 () (Array (_ BitVec 32) List!24529))

(declare-fun mapValue!13360 () List!24529)

(assert (=> mapNonEmpty!13362 (= (arr!4230 (_values!3091 (v!29036 (underlying!5817 (v!29037 (underlying!5818 (cache!3106 cacheFurthestNullable!114))))))) (store mapRest!13361 mapKey!13360 mapValue!13360))))

(declare-fun b!2144973 () Bool)

(assert (=> b!2144973 (= e!1370757 (forall!4991 stack!8 lambda!80442))))

(assert (=> b!2144973 (forall!4991 stack!8 lambda!80442)))

(declare-fun b!2144974 () Bool)

(assert (=> b!2144974 (= e!1370752 from!1043)))

(declare-fun b!2144975 () Bool)

(assert (=> b!2144975 (= e!1370763 (and setRes!16681 (inv!32164 (totalInput!3165 (h!29848 stack!8))) e!1370730))))

(declare-fun condSetEmpty!16681 () Bool)

(assert (=> b!2144975 (= condSetEmpty!16681 (= (z!5900 (h!29848 stack!8)) ((as const (Array Context!2734 Bool)) false)))))

(declare-fun b!2144976 () Bool)

(declare-fun lt!798687 () MutLongMap!2812)

(assert (=> b!2144976 (= e!1370738 (and e!1370766 ((_ is LongMap!2812) lt!798687)))))

(assert (=> b!2144976 (= lt!798687 (v!29039 (underlying!5820 (cache!3107 cacheDown!1098))))))

(assert (= (and start!208116 res!925607) b!2144952))

(assert (= (and b!2144952 res!925601) b!2144940))

(assert (= (and b!2144940 (not res!925604)) b!2144941))

(assert (= (and b!2144940 res!925600) b!2144947))

(assert (= (and b!2144947 res!925595) b!2144959))

(assert (= (and b!2144959 res!925597) b!2144954))

(assert (= (and b!2144954 res!925602) b!2144962))

(assert (= (and b!2144962 res!925599) b!2144935))

(assert (= (and b!2144935 res!925606) b!2144957))

(assert (= (and b!2144957 res!925603) b!2144967))

(assert (= (and b!2144967 (not res!925598)) b!2144946))

(assert (= (and b!2144946 (not res!925594)) b!2144938))

(assert (= (and b!2144938 (not res!925605)) b!2144972))

(assert (= (and b!2144972 c!340712) b!2144974))

(assert (= (and b!2144972 (not c!340712)) b!2144951))

(assert (= (and b!2144972 (not res!925596)) b!2144973))

(assert (= (and b!2144948 condMapEmpty!13362) mapIsEmpty!13362))

(assert (= (and b!2144948 (not condMapEmpty!13362)) mapNonEmpty!13362))

(assert (= b!2144966 b!2144948))

(assert (= b!2144970 b!2144966))

(assert (= b!2144969 b!2144970))

(assert (= (and b!2144937 ((_ is LongMap!2811) (v!29037 (underlying!5818 (cache!3106 cacheFurthestNullable!114))))) b!2144969))

(assert (= b!2144968 b!2144937))

(assert (= (and b!2144950 ((_ is HashMap!2725) (cache!3106 cacheFurthestNullable!114))) b!2144968))

(assert (= b!2144950 b!2144960))

(assert (= start!208116 b!2144950))

(assert (= (and b!2144942 condMapEmpty!13360) mapIsEmpty!13360))

(assert (= (and b!2144942 (not condMapEmpty!13360)) mapNonEmpty!13360))

(assert (= b!2144958 b!2144942))

(assert (= b!2144939 b!2144958))

(assert (= b!2144945 b!2144939))

(assert (= (and b!2144976 ((_ is LongMap!2812) (v!29039 (underlying!5820 (cache!3107 cacheDown!1098))))) b!2144945))

(assert (= b!2144963 b!2144976))

(assert (= (and b!2144943 ((_ is HashMap!2726) (cache!3107 cacheDown!1098))) b!2144963))

(assert (= start!208116 b!2144943))

(assert (= (and b!2144949 condMapEmpty!13361) mapIsEmpty!13361))

(assert (= (and b!2144949 (not condMapEmpty!13361)) mapNonEmpty!13361))

(assert (= b!2144961 b!2144949))

(assert (= b!2144964 b!2144961))

(assert (= b!2144934 b!2144964))

(assert (= (and b!2144965 ((_ is LongMap!2813) (v!29041 (underlying!5822 (cache!3108 cacheUp!979))))) b!2144934))

(assert (= b!2144955 b!2144965))

(assert (= (and b!2144936 ((_ is HashMap!2727) (cache!3108 cacheUp!979))) b!2144955))

(assert (= start!208116 b!2144936))

(assert (= (and start!208116 condSetEmpty!16682) setIsEmpty!16682))

(assert (= (and start!208116 (not condSetEmpty!16682)) setNonEmpty!16681))

(assert (= setNonEmpty!16681 b!2144944))

(assert (= start!208116 b!2144933))

(assert (= (and b!2144975 condSetEmpty!16681) setIsEmpty!16681))

(assert (= (and b!2144975 (not condSetEmpty!16681)) setNonEmpty!16682))

(assert (= setNonEmpty!16682 b!2144971))

(assert (= b!2144975 b!2144953))

(assert (= b!2144956 b!2144975))

(assert (= (and start!208116 ((_ is Cons!24447) stack!8)) b!2144956))

(declare-fun m!2589115 () Bool)

(assert (=> mapNonEmpty!13360 m!2589115))

(declare-fun m!2589117 () Bool)

(assert (=> b!2144967 m!2589117))

(declare-fun m!2589119 () Bool)

(assert (=> b!2144967 m!2589119))

(declare-fun m!2589121 () Bool)

(assert (=> mapNonEmpty!13361 m!2589121))

(assert (=> b!2144935 m!2589119))

(declare-fun m!2589123 () Bool)

(assert (=> b!2144935 m!2589123))

(declare-fun m!2589125 () Bool)

(assert (=> b!2144961 m!2589125))

(declare-fun m!2589127 () Bool)

(assert (=> b!2144961 m!2589127))

(declare-fun m!2589129 () Bool)

(assert (=> b!2144975 m!2589129))

(declare-fun m!2589131 () Bool)

(assert (=> b!2144957 m!2589131))

(declare-fun m!2589133 () Bool)

(assert (=> b!2144972 m!2589133))

(declare-fun m!2589135 () Bool)

(assert (=> b!2144972 m!2589135))

(declare-fun m!2589137 () Bool)

(assert (=> b!2144972 m!2589137))

(assert (=> b!2144972 m!2589137))

(declare-fun m!2589139 () Bool)

(assert (=> b!2144972 m!2589139))

(declare-fun m!2589141 () Bool)

(assert (=> b!2144956 m!2589141))

(declare-fun m!2589143 () Bool)

(assert (=> start!208116 m!2589143))

(declare-fun m!2589145 () Bool)

(assert (=> start!208116 m!2589145))

(declare-fun m!2589147 () Bool)

(assert (=> start!208116 m!2589147))

(declare-fun m!2589149 () Bool)

(assert (=> start!208116 m!2589149))

(declare-fun m!2589151 () Bool)

(assert (=> b!2144933 m!2589151))

(declare-fun m!2589153 () Bool)

(assert (=> b!2144947 m!2589153))

(assert (=> b!2144973 m!2589119))

(assert (=> b!2144973 m!2589119))

(declare-fun m!2589155 () Bool)

(assert (=> mapNonEmpty!13362 m!2589155))

(declare-fun m!2589157 () Bool)

(assert (=> setNonEmpty!16681 m!2589157))

(declare-fun m!2589159 () Bool)

(assert (=> b!2144952 m!2589159))

(declare-fun m!2589161 () Bool)

(assert (=> b!2144959 m!2589161))

(declare-fun m!2589163 () Bool)

(assert (=> setNonEmpty!16682 m!2589163))

(declare-fun m!2589165 () Bool)

(assert (=> b!2144953 m!2589165))

(declare-fun m!2589167 () Bool)

(assert (=> b!2144940 m!2589167))

(declare-fun m!2589169 () Bool)

(assert (=> b!2144960 m!2589169))

(declare-fun m!2589171 () Bool)

(assert (=> b!2144958 m!2589171))

(declare-fun m!2589173 () Bool)

(assert (=> b!2144958 m!2589173))

(declare-fun m!2589175 () Bool)

(assert (=> b!2144950 m!2589175))

(declare-fun m!2589177 () Bool)

(assert (=> b!2144966 m!2589177))

(declare-fun m!2589179 () Bool)

(assert (=> b!2144966 m!2589179))

(declare-fun m!2589181 () Bool)

(assert (=> b!2144954 m!2589181))

(declare-fun m!2589183 () Bool)

(assert (=> b!2144938 m!2589183))

(check-sat (not b_next!63935) (not mapNonEmpty!13362) (not b!2144938) (not start!208116) b_and!172805 (not b!2144949) (not b!2144952) (not b!2144933) (not b!2144972) (not b!2144966) (not b!2144960) (not b!2144954) b_and!172803 (not b_next!63925) (not b!2144956) (not b!2144975) (not b!2144948) (not b_next!63929) (not b!2144942) (not b!2144958) (not b_next!63931) (not b_next!63927) (not b!2144971) (not b!2144940) (not b!2144973) (not b!2144957) (not mapNonEmpty!13360) (not b!2144967) (not setNonEmpty!16682) (not b!2144947) (not b!2144950) (not mapNonEmpty!13361) (not b!2144953) b_and!172801 (not setNonEmpty!16681) b_and!172807 (not b_next!63933) (not b!2144959) (not b!2144944) (not b!2144935) b_and!172811 b_and!172809 (not b!2144961))
(check-sat (not b_next!63925) (not b_next!63935) (not b_next!63929) (not b_next!63931) b_and!172805 (not b_next!63927) b_and!172801 b_and!172811 b_and!172809 b_and!172803 b_and!172807 (not b_next!63933))
