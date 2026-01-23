; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207010 () Bool)

(assert start!207010)

(declare-fun b!2121052 () Bool)

(declare-fun b_free!61589 () Bool)

(declare-fun b_next!62293 () Bool)

(assert (=> b!2121052 (= b_free!61589 (not b_next!62293))))

(declare-fun tp!649205 () Bool)

(declare-fun b_and!171169 () Bool)

(assert (=> b!2121052 (= tp!649205 b_and!171169)))

(declare-fun b!2121050 () Bool)

(declare-fun b_free!61591 () Bool)

(declare-fun b_next!62295 () Bool)

(assert (=> b!2121050 (= b_free!61591 (not b_next!62295))))

(declare-fun tp!649206 () Bool)

(declare-fun b_and!171171 () Bool)

(assert (=> b!2121050 (= tp!649206 b_and!171171)))

(declare-fun b!2121042 () Bool)

(declare-fun b_free!61593 () Bool)

(declare-fun b_next!62297 () Bool)

(assert (=> b!2121042 (= b_free!61593 (not b_next!62297))))

(declare-fun tp!649203 () Bool)

(declare-fun b_and!171173 () Bool)

(assert (=> b!2121042 (= tp!649203 b_and!171173)))

(declare-fun b!2121055 () Bool)

(declare-fun b_free!61595 () Bool)

(declare-fun b_next!62299 () Bool)

(assert (=> b!2121055 (= b_free!61595 (not b_next!62299))))

(declare-fun tp!649188 () Bool)

(declare-fun b_and!171175 () Bool)

(assert (=> b!2121055 (= tp!649188 b_and!171175)))

(declare-fun b!2121040 () Bool)

(declare-fun b_free!61597 () Bool)

(declare-fun b_next!62301 () Bool)

(assert (=> b!2121040 (= b_free!61597 (not b_next!62301))))

(declare-fun tp!649204 () Bool)

(declare-fun b_and!171177 () Bool)

(assert (=> b!2121040 (= tp!649204 b_and!171177)))

(declare-fun b!2121051 () Bool)

(declare-fun b_free!61599 () Bool)

(declare-fun b_next!62303 () Bool)

(assert (=> b!2121051 (= b_free!61599 (not b_next!62303))))

(declare-fun tp!649192 () Bool)

(declare-fun b_and!171179 () Bool)

(assert (=> b!2121051 (= tp!649192 b_and!171179)))

(declare-fun b!2121105 () Bool)

(declare-fun e!1350899 () Bool)

(declare-fun e!1350900 () Bool)

(assert (=> b!2121105 (= e!1350899 e!1350900)))

(declare-fun b!2121106 () Bool)

(declare-fun e!1350903 () Bool)

(declare-fun e!1350907 () Bool)

(assert (=> b!2121106 (= e!1350903 e!1350907)))

(declare-fun setNonEmpty!14740 () Bool)

(declare-fun setRes!14740 () Bool)

(assert (=> setNonEmpty!14740 (= setRes!14740 true)))

(declare-datatypes ((C!11468 0))(
  ( (C!11469 (val!6720 Int)) )
))
(declare-datatypes ((Regex!5661 0))(
  ( (ElementMatch!5661 (c!339706 C!11468)) (Concat!9963 (regOne!11834 Regex!5661) (regTwo!11834 Regex!5661)) (EmptyExpr!5661) (Star!5661 (reg!5990 Regex!5661)) (EmptyLang!5661) (Union!5661 (regOne!11835 Regex!5661) (regTwo!11835 Regex!5661)) )
))
(declare-datatypes ((List!23763 0))(
  ( (Nil!23679) (Cons!23679 (h!29080 Regex!5661) (t!196279 List!23763)) )
))
(declare-datatypes ((Context!2462 0))(
  ( (Context!2463 (exprs!1731 List!23763)) )
))
(declare-datatypes ((tuple3!2878 0))(
  ( (tuple3!2879 (_1!13542 Regex!5661) (_2!13542 Context!2462) (_3!1909 C!11468)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!23266 0))(
  ( (tuple2!23267 (_1!13543 tuple3!2878) (_2!13543 (InoxSet Context!2462))) )
))
(declare-datatypes ((tuple2!23268 0))(
  ( (tuple2!23269 (_1!13544 Context!2462) (_2!13544 C!11468)) )
))
(declare-datatypes ((tuple2!23270 0))(
  ( (tuple2!23271 (_1!13545 tuple2!23268) (_2!13545 (InoxSet Context!2462))) )
))
(declare-datatypes ((List!23764 0))(
  ( (Nil!23680) (Cons!23680 (h!29081 tuple2!23270) (t!196280 List!23764)) )
))
(declare-datatypes ((List!23765 0))(
  ( (Nil!23681) (Cons!23681 (h!29082 tuple2!23266) (t!196281 List!23765)) )
))
(declare-datatypes ((array!8389 0))(
  ( (array!8390 (arr!3722 (Array (_ BitVec 32) (_ BitVec 64))) (size!18506 (_ BitVec 32))) )
))
(declare-datatypes ((array!8391 0))(
  ( (array!8392 (arr!3723 (Array (_ BitVec 32) List!23765)) (size!18507 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4880 0))(
  ( (LongMapFixedSize!4881 (defaultEntry!2805 Int) (mask!6586 (_ BitVec 32)) (extraKeys!2688 (_ BitVec 32)) (zeroValue!2698 List!23765) (minValue!2698 List!23765) (_size!4931 (_ BitVec 32)) (_keys!2737 array!8389) (_values!2720 array!8391) (_vacant!2501 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9585 0))(
  ( (Cell!9586 (v!28211 LongMapFixedSize!4880)) )
))
(declare-datatypes ((MutLongMap!2440 0))(
  ( (LongMap!2440 (underlying!5075 Cell!9585)) (MutLongMapExt!2439 (__x!15496 Int)) )
))
(declare-datatypes ((Cell!9587 0))(
  ( (Cell!9588 (v!28212 MutLongMap!2440)) )
))
(declare-datatypes ((List!23766 0))(
  ( (Nil!23682) (Cons!23682 (h!29083 C!11468) (t!196282 List!23766)) )
))
(declare-datatypes ((IArray!15603 0))(
  ( (IArray!15604 (innerList!7859 List!23766)) )
))
(declare-datatypes ((Hashable!2354 0))(
  ( (HashableExt!2353 (__x!15497 Int)) )
))
(declare-datatypes ((Hashable!2355 0))(
  ( (HashableExt!2354 (__x!15498 Int)) )
))
(declare-datatypes ((array!8393 0))(
  ( (array!8394 (arr!3724 (Array (_ BitVec 32) List!23764)) (size!18508 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4882 0))(
  ( (LongMapFixedSize!4883 (defaultEntry!2806 Int) (mask!6587 (_ BitVec 32)) (extraKeys!2689 (_ BitVec 32)) (zeroValue!2699 List!23764) (minValue!2699 List!23764) (_size!4932 (_ BitVec 32)) (_keys!2738 array!8389) (_values!2721 array!8393) (_vacant!2502 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9589 0))(
  ( (Cell!9590 (v!28213 LongMapFixedSize!4882)) )
))
(declare-datatypes ((MutLongMap!2441 0))(
  ( (LongMap!2441 (underlying!5076 Cell!9589)) (MutLongMapExt!2440 (__x!15499 Int)) )
))
(declare-datatypes ((Cell!9591 0))(
  ( (Cell!9592 (v!28214 MutLongMap!2441)) )
))
(declare-datatypes ((MutableMap!2354 0))(
  ( (MutableMapExt!2353 (__x!15500 Int)) (HashMap!2354 (underlying!5077 Cell!9591) (hashF!4277 Hashable!2355) (_size!4933 (_ BitVec 32)) (defaultValue!2516 Int)) )
))
(declare-datatypes ((CacheUp!1630 0))(
  ( (CacheUp!1631 (cache!2735 MutableMap!2354)) )
))
(declare-datatypes ((Conc!7799 0))(
  ( (Node!7799 (left!18322 Conc!7799) (right!18652 Conc!7799) (csize!15828 Int) (cheight!8010 Int)) (Leaf!11397 (xs!10741 IArray!15603) (csize!15829 Int)) (Empty!7799) )
))
(declare-datatypes ((BalanceConc!15360 0))(
  ( (BalanceConc!15361 (c!339707 Conc!7799)) )
))
(declare-datatypes ((StackFrame!34 0))(
  ( (StackFrame!35 (z!5719 (InoxSet Context!2462)) (from!2617 Int) (lastNullablePos!304 Int) (res!918975 Int) (totalInput!2899 BalanceConc!15360)) )
))
(declare-datatypes ((List!23767 0))(
  ( (Nil!23683) (Cons!23683 (h!29084 StackFrame!34) (t!196283 List!23767)) )
))
(declare-datatypes ((tuple2!23272 0))(
  ( (tuple2!23273 (_1!13546 Int) (_2!13546 List!23767)) )
))
(declare-datatypes ((MutableMap!2355 0))(
  ( (MutableMapExt!2354 (__x!15501 Int)) (HashMap!2355 (underlying!5078 Cell!9587) (hashF!4278 Hashable!2354) (_size!4934 (_ BitVec 32)) (defaultValue!2517 Int)) )
))
(declare-datatypes ((CacheDown!1616 0))(
  ( (CacheDown!1617 (cache!2736 MutableMap!2355)) )
))
(declare-datatypes ((tuple3!2880 0))(
  ( (tuple3!2881 (_1!13547 tuple2!23272) (_2!13547 CacheUp!1630) (_3!1910 CacheDown!1616)) )
))
(declare-fun lt!794774 () tuple3!2880)

(declare-fun setElem!14740 () Context!2462)

(declare-fun setRest!14740 () (InoxSet Context!2462))

(assert (=> setNonEmpty!14740 (= (z!5719 (h!29084 (_2!13546 (_1!13547 lt!794774)))) ((_ map or) (store ((as const (Array Context!2462 Bool)) false) setElem!14740 true) setRest!14740))))

(declare-fun b!2121107 () Bool)

(declare-fun e!1350896 () Bool)

(declare-fun e!1350909 () Bool)

(assert (=> b!2121107 (= e!1350896 e!1350909)))

(declare-fun setIsEmpty!14740 () Bool)

(assert (=> setIsEmpty!14740 setRes!14740))

(declare-fun b!2121108 () Bool)

(declare-fun e!1350908 () Bool)

(declare-fun mapRes!11812 () Bool)

(assert (=> b!2121108 (= e!1350908 mapRes!11812)))

(declare-fun condMapEmpty!11811 () Bool)

(declare-fun mapDefault!11812 () List!23764)

(assert (=> b!2121108 (= condMapEmpty!11811 (= (arr!3724 (_values!2721 (v!28213 (underlying!5076 (v!28214 (underlying!5077 (cache!2735 (_2!13547 lt!794774)))))))) ((as const (Array (_ BitVec 32) List!23764)) mapDefault!11812)))))

(declare-fun b!2121109 () Bool)

(declare-fun e!1350901 () Bool)

(declare-fun e!1350905 () Bool)

(assert (=> b!2121109 (= e!1350901 e!1350905)))

(declare-fun b!2121110 () Bool)

(declare-fun e!1350911 () Bool)

(assert (=> b!2121110 (= e!1350911 e!1350899)))

(declare-fun b!2121111 () Bool)

(declare-fun e!1350897 () Bool)

(assert (=> b!2121111 (= e!1350897 e!1350903)))

(declare-fun b!2121112 () Bool)

(declare-fun e!1350906 () Bool)

(assert (=> b!2121112 (= e!1350906 e!1350901)))

(declare-fun mapNonEmpty!11811 () Bool)

(assert (=> mapNonEmpty!11811 (= mapRes!11812 true)))

(declare-fun mapValue!11811 () List!23764)

(declare-fun mapKey!11812 () (_ BitVec 32))

(declare-fun mapRest!11812 () (Array (_ BitVec 32) List!23764))

(assert (=> mapNonEmpty!11811 (= (arr!3724 (_values!2721 (v!28213 (underlying!5076 (v!28214 (underlying!5077 (cache!2735 (_2!13547 lt!794774)))))))) (store mapRest!11812 mapKey!11812 mapValue!11811))))

(declare-fun b!2121067 () Bool)

(assert (=> b!2121067 (and e!1350896 e!1350897 e!1350906)))

(declare-fun mapNonEmpty!11812 () Bool)

(declare-fun mapRes!11811 () Bool)

(assert (=> mapNonEmpty!11812 (= mapRes!11811 true)))

(declare-fun mapRest!11811 () (Array (_ BitVec 32) List!23765))

(declare-fun mapKey!11811 () (_ BitVec 32))

(declare-fun mapValue!11812 () List!23765)

(assert (=> mapNonEmpty!11812 (= (arr!3723 (_values!2720 (v!28211 (underlying!5075 (v!28212 (underlying!5078 (cache!2736 (_3!1910 lt!794774)))))))) (store mapRest!11811 mapKey!11811 mapValue!11812))))

(declare-fun b!2121113 () Bool)

(declare-fun e!1350904 () Bool)

(assert (=> b!2121113 (= e!1350904 e!1350908)))

(declare-fun b!2121114 () Bool)

(declare-fun e!1350910 () Bool)

(assert (=> b!2121114 (= e!1350910 e!1350904)))

(declare-fun mapIsEmpty!11811 () Bool)

(assert (=> mapIsEmpty!11811 mapRes!11812))

(declare-fun mapIsEmpty!11812 () Bool)

(assert (=> mapIsEmpty!11812 mapRes!11811))

(declare-fun b!2121115 () Bool)

(assert (=> b!2121115 (= e!1350909 setRes!14740)))

(declare-fun condSetEmpty!14740 () Bool)

(assert (=> b!2121115 (= condSetEmpty!14740 (= (z!5719 (h!29084 (_2!13546 (_1!13547 lt!794774)))) ((as const (Array Context!2462 Bool)) false)))))

(declare-fun b!2121116 () Bool)

(declare-fun e!1350902 () Bool)

(assert (=> b!2121116 (= e!1350902 e!1350910)))

(declare-fun b!2121117 () Bool)

(declare-fun e!1350898 () Bool)

(assert (=> b!2121117 (= e!1350898 e!1350911)))

(declare-fun b!2121118 () Bool)

(declare-fun lt!794783 () MutLongMap!2441)

(get-info :version)

(assert (=> b!2121118 (= e!1350907 (and e!1350902 ((_ is LongMap!2441) lt!794783)))))

(assert (=> b!2121118 (= lt!794783 (v!28214 (underlying!5077 (cache!2735 (_2!13547 lt!794774)))))))

(declare-fun b!2121119 () Bool)

(assert (=> b!2121119 (= e!1350900 mapRes!11811)))

(declare-fun condMapEmpty!11812 () Bool)

(declare-fun mapDefault!11811 () List!23765)

(assert (=> b!2121119 (= condMapEmpty!11812 (= (arr!3723 (_values!2720 (v!28211 (underlying!5075 (v!28212 (underlying!5078 (cache!2736 (_3!1910 lt!794774)))))))) ((as const (Array (_ BitVec 32) List!23765)) mapDefault!11811)))))

(declare-fun b!2121120 () Bool)

(declare-fun lt!794782 () MutLongMap!2440)

(assert (=> b!2121120 (= e!1350905 (and e!1350898 ((_ is LongMap!2440) lt!794782)))))

(assert (=> b!2121120 (= lt!794782 (v!28212 (underlying!5078 (cache!2736 (_3!1910 lt!794774)))))))

(assert (= (and b!2121115 condSetEmpty!14740) setIsEmpty!14740))

(assert (= (and b!2121115 (not condSetEmpty!14740)) setNonEmpty!14740))

(assert (= b!2121107 b!2121115))

(assert (= (and b!2121067 ((_ is Cons!23683) (_2!13546 (_1!13547 lt!794774)))) b!2121107))

(assert (= (and b!2121108 condMapEmpty!11811) mapIsEmpty!11811))

(assert (= (and b!2121108 (not condMapEmpty!11811)) mapNonEmpty!11811))

(assert (= b!2121113 b!2121108))

(assert (= b!2121114 b!2121113))

(assert (= b!2121116 b!2121114))

(assert (= (and b!2121118 ((_ is LongMap!2441) (v!28214 (underlying!5077 (cache!2735 (_2!13547 lt!794774)))))) b!2121116))

(assert (= b!2121106 b!2121118))

(assert (= (and b!2121111 ((_ is HashMap!2354) (cache!2735 (_2!13547 lt!794774)))) b!2121106))

(assert (= b!2121067 b!2121111))

(assert (= (and b!2121119 condMapEmpty!11812) mapIsEmpty!11812))

(assert (= (and b!2121119 (not condMapEmpty!11812)) mapNonEmpty!11812))

(assert (= b!2121105 b!2121119))

(assert (= b!2121110 b!2121105))

(assert (= b!2121117 b!2121110))

(assert (= (and b!2121120 ((_ is LongMap!2440) (v!28212 (underlying!5078 (cache!2736 (_3!1910 lt!794774)))))) b!2121117))

(assert (= b!2121109 b!2121120))

(assert (= (and b!2121112 ((_ is HashMap!2355) (cache!2736 (_3!1910 lt!794774)))) b!2121109))

(assert (= b!2121067 b!2121112))

(declare-fun lambda!78508 () Int)

(declare-fun order!14611 () Int)

(declare-fun order!14609 () Int)

(declare-fun dynLambda!11311 (Int Int) Int)

(declare-fun dynLambda!11312 (Int Int) Int)

(assert (=> b!2121109 (< (dynLambda!11311 order!14609 (defaultValue!2517 (cache!2736 (_3!1910 lt!794774)))) (dynLambda!11312 order!14611 lambda!78508))))

(declare-fun order!14613 () Int)

(declare-fun dynLambda!11313 (Int Int) Int)

(assert (=> b!2121106 (< (dynLambda!11313 order!14613 (defaultValue!2516 (cache!2735 (_2!13547 lt!794774)))) (dynLambda!11312 order!14611 lambda!78508))))

(declare-fun order!14615 () Int)

(declare-fun dynLambda!11314 (Int Int) Int)

(assert (=> b!2121113 (< (dynLambda!11314 order!14615 (defaultEntry!2806 (v!28213 (underlying!5076 (v!28214 (underlying!5077 (cache!2735 (_2!13547 lt!794774)))))))) (dynLambda!11312 order!14611 lambda!78508))))

(declare-fun order!14617 () Int)

(declare-fun dynLambda!11315 (Int Int) Int)

(assert (=> b!2121105 (< (dynLambda!11315 order!14617 (defaultEntry!2805 (v!28211 (underlying!5075 (v!28212 (underlying!5078 (cache!2736 (_3!1910 lt!794774)))))))) (dynLambda!11312 order!14611 lambda!78508))))

(declare-fun m!2575023 () Bool)

(assert (=> mapNonEmpty!11811 m!2575023))

(declare-fun m!2575025 () Bool)

(assert (=> mapNonEmpty!11812 m!2575025))

(declare-fun bs!442684 () Bool)

(declare-fun b!2121048 () Bool)

(assert (= bs!442684 (and b!2121048 b!2121067)))

(declare-fun lambda!78509 () Int)

(assert (=> bs!442684 (not (= lambda!78509 lambda!78508))))

(assert (=> b!2121048 true))

(declare-fun lambda!78510 () Int)

(assert (=> b!2121067 (not (= lambda!78510 lambda!78508))))

(assert (=> bs!442684 (= lambda!78510 lambda!78509)))

(assert (=> b!2121067 true))

(declare-fun mapNonEmpty!11804 () Bool)

(declare-fun mapRes!11804 () Bool)

(declare-fun tp!649183 () Bool)

(declare-fun tp!649187 () Bool)

(assert (=> mapNonEmpty!11804 (= mapRes!11804 (and tp!649183 tp!649187))))

(declare-datatypes ((tuple3!2882 0))(
  ( (tuple3!2883 (_1!13548 (InoxSet Context!2462)) (_2!13548 Int) (_3!1911 Int)) )
))
(declare-datatypes ((tuple2!23274 0))(
  ( (tuple2!23275 (_1!13549 tuple3!2882) (_2!13549 Int)) )
))
(declare-datatypes ((List!23768 0))(
  ( (Nil!23684) (Cons!23684 (h!29085 tuple2!23274) (t!196284 List!23768)) )
))
(declare-fun mapValue!11806 () List!23768)

(declare-datatypes ((Hashable!2356 0))(
  ( (HashableExt!2355 (__x!15502 Int)) )
))
(declare-datatypes ((array!8395 0))(
  ( (array!8396 (arr!3725 (Array (_ BitVec 32) List!23768)) (size!18509 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4884 0))(
  ( (LongMapFixedSize!4885 (defaultEntry!2807 Int) (mask!6588 (_ BitVec 32)) (extraKeys!2690 (_ BitVec 32)) (zeroValue!2700 List!23768) (minValue!2700 List!23768) (_size!4935 (_ BitVec 32)) (_keys!2739 array!8389) (_values!2722 array!8395) (_vacant!2503 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9593 0))(
  ( (Cell!9594 (v!28215 LongMapFixedSize!4884)) )
))
(declare-datatypes ((MutLongMap!2442 0))(
  ( (LongMap!2442 (underlying!5079 Cell!9593)) (MutLongMapExt!2441 (__x!15503 Int)) )
))
(declare-datatypes ((Cell!9595 0))(
  ( (Cell!9596 (v!28216 MutLongMap!2442)) )
))
(declare-datatypes ((MutableMap!2356 0))(
  ( (MutableMapExt!2355 (__x!15504 Int)) (HashMap!2356 (underlying!5080 Cell!9595) (hashF!4279 Hashable!2356) (_size!4936 (_ BitVec 32)) (defaultValue!2518 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!586 0))(
  ( (CacheFurthestNullable!587 (cache!2737 MutableMap!2356) (totalInput!2900 BalanceConc!15360)) )
))
(declare-fun cacheFurthestNullable!130 () CacheFurthestNullable!586)

(declare-fun mapRest!11804 () (Array (_ BitVec 32) List!23768))

(declare-fun mapKey!11805 () (_ BitVec 32))

(assert (=> mapNonEmpty!11804 (= (arr!3725 (_values!2722 (v!28215 (underlying!5079 (v!28216 (underlying!5080 (cache!2737 cacheFurthestNullable!130))))))) (store mapRest!11804 mapKey!11805 mapValue!11806))))

(declare-fun b!2121038 () Bool)

(declare-fun e!1350851 () Bool)

(declare-fun tp!649195 () Bool)

(assert (=> b!2121038 (= e!1350851 (and tp!649195 mapRes!11804))))

(declare-fun condMapEmpty!11806 () Bool)

(declare-fun mapDefault!11804 () List!23768)

(assert (=> b!2121038 (= condMapEmpty!11806 (= (arr!3725 (_values!2722 (v!28215 (underlying!5079 (v!28216 (underlying!5080 (cache!2737 cacheFurthestNullable!130))))))) ((as const (Array (_ BitVec 32) List!23768)) mapDefault!11804)))))

(declare-fun b!2121039 () Bool)

(declare-fun res!918973 () Bool)

(declare-fun e!1350854 () Bool)

(assert (=> b!2121039 (=> (not res!918973) (not e!1350854))))

(declare-fun cacheDown!1110 () CacheDown!1616)

(declare-fun valid!1922 (CacheDown!1616) Bool)

(assert (=> b!2121039 (= res!918973 (valid!1922 cacheDown!1110))))

(declare-fun e!1350841 () Bool)

(declare-fun e!1350849 () Bool)

(assert (=> b!2121040 (= e!1350841 (and e!1350849 tp!649204))))

(declare-fun b!2121041 () Bool)

(declare-fun res!918974 () Bool)

(assert (=> b!2121041 (=> (not res!918974) (not e!1350854))))

(declare-fun valid!1923 (CacheFurthestNullable!586) Bool)

(assert (=> b!2121041 (= res!918974 (valid!1923 cacheFurthestNullable!130))))

(declare-fun e!1350860 () Bool)

(declare-fun tp!649193 () Bool)

(declare-fun e!1350863 () Bool)

(declare-fun tp!649184 () Bool)

(declare-fun array_inv!2668 (array!8389) Bool)

(declare-fun array_inv!2669 (array!8391) Bool)

(assert (=> b!2121042 (= e!1350863 (and tp!649203 tp!649184 tp!649193 (array_inv!2668 (_keys!2737 (v!28211 (underlying!5075 (v!28212 (underlying!5078 (cache!2736 cacheDown!1110))))))) (array_inv!2669 (_values!2720 (v!28211 (underlying!5075 (v!28212 (underlying!5078 (cache!2736 cacheDown!1110))))))) e!1350860))))

(declare-fun b!2121043 () Bool)

(declare-fun e!1350839 () Int)

(declare-fun lt!794775 () Int)

(assert (=> b!2121043 (= e!1350839 (- lt!794775 1))))

(declare-fun b!2121044 () Bool)

(declare-fun e!1350838 () Bool)

(declare-fun totalInput!886 () BalanceConc!15360)

(declare-fun tp!649208 () Bool)

(declare-fun inv!31275 (Conc!7799) Bool)

(assert (=> b!2121044 (= e!1350838 (and (inv!31275 (c!339707 totalInput!886)) tp!649208))))

(declare-fun res!918969 () Bool)

(assert (=> start!207010 (=> (not res!918969) (not e!1350854))))

(declare-fun input!5507 () BalanceConc!15360)

(declare-fun isSuffix!616 (List!23766 List!23766) Bool)

(declare-fun list!9524 (BalanceConc!15360) List!23766)

(assert (=> start!207010 (= res!918969 (isSuffix!616 (list!9524 input!5507) (list!9524 totalInput!886)))))

(assert (=> start!207010 e!1350854))

(declare-fun e!1350834 () Bool)

(declare-fun inv!31276 (CacheFurthestNullable!586) Bool)

(assert (=> start!207010 (and (inv!31276 cacheFurthestNullable!130) e!1350834)))

(declare-fun condSetEmpty!14737 () Bool)

(declare-fun z!3883 () (InoxSet Context!2462))

(assert (=> start!207010 (= condSetEmpty!14737 (= z!3883 ((as const (Array Context!2462 Bool)) false)))))

(declare-fun setRes!14737 () Bool)

(assert (=> start!207010 setRes!14737))

(declare-fun e!1350852 () Bool)

(declare-fun inv!31277 (BalanceConc!15360) Bool)

(assert (=> start!207010 (and (inv!31277 input!5507) e!1350852)))

(declare-fun e!1350842 () Bool)

(declare-fun inv!31278 (CacheDown!1616) Bool)

(assert (=> start!207010 (and (inv!31278 cacheDown!1110) e!1350842)))

(declare-fun cacheUp!991 () CacheUp!1630)

(declare-fun e!1350843 () Bool)

(declare-fun inv!31279 (CacheUp!1630) Bool)

(assert (=> start!207010 (and (inv!31279 cacheUp!991) e!1350843)))

(assert (=> start!207010 (and (inv!31277 totalInput!886) e!1350838)))

(declare-fun b!2121045 () Bool)

(declare-fun e!1350840 () Bool)

(declare-fun e!1350845 () Bool)

(assert (=> b!2121045 (= e!1350840 e!1350845)))

(declare-fun b!2121046 () Bool)

(assert (=> b!2121046 (= e!1350839 (- 1))))

(declare-fun b!2121047 () Bool)

(declare-fun e!1350844 () Bool)

(declare-fun e!1350853 () Bool)

(assert (=> b!2121047 (= e!1350844 e!1350853)))

(declare-fun setIsEmpty!14737 () Bool)

(assert (=> setIsEmpty!14737 setRes!14737))

(declare-fun mapIsEmpty!11804 () Bool)

(declare-fun mapRes!11806 () Bool)

(assert (=> mapIsEmpty!11804 mapRes!11806))

(declare-fun e!1350857 () Bool)

(declare-fun forall!4860 (List!23767 Int) Bool)

(assert (=> b!2121048 (= e!1350857 (forall!4860 (_2!13546 (_1!13547 lt!794774)) lambda!78509))))

(declare-fun mapIsEmpty!11805 () Bool)

(assert (=> mapIsEmpty!11805 mapRes!11804))

(declare-fun b!2121049 () Bool)

(declare-fun e!1350850 () Bool)

(assert (=> b!2121049 (= e!1350842 e!1350850)))

(declare-fun e!1350862 () Bool)

(declare-fun e!1350836 () Bool)

(assert (=> b!2121050 (= e!1350862 (and e!1350836 tp!649206))))

(declare-fun e!1350858 () Bool)

(assert (=> b!2121051 (= e!1350850 (and e!1350858 tp!649192))))

(declare-fun e!1350848 () Bool)

(declare-fun tp!649189 () Bool)

(declare-fun tp!649185 () Bool)

(declare-fun e!1350846 () Bool)

(declare-fun array_inv!2670 (array!8393) Bool)

(assert (=> b!2121052 (= e!1350848 (and tp!649205 tp!649185 tp!649189 (array_inv!2668 (_keys!2738 (v!28213 (underlying!5076 (v!28214 (underlying!5077 (cache!2735 cacheUp!991))))))) (array_inv!2670 (_values!2721 (v!28213 (underlying!5076 (v!28214 (underlying!5077 (cache!2735 cacheUp!991))))))) e!1350846))))

(declare-fun mapNonEmpty!11805 () Bool)

(declare-fun tp!649191 () Bool)

(declare-fun tp!649200 () Bool)

(assert (=> mapNonEmpty!11805 (= mapRes!11806 (and tp!649191 tp!649200))))

(declare-fun mapKey!11804 () (_ BitVec 32))

(declare-fun mapValue!11804 () List!23764)

(declare-fun mapRest!11806 () (Array (_ BitVec 32) List!23764))

(assert (=> mapNonEmpty!11805 (= (arr!3724 (_values!2721 (v!28213 (underlying!5076 (v!28214 (underlying!5077 (cache!2735 cacheUp!991))))))) (store mapRest!11806 mapKey!11804 mapValue!11804))))

(declare-fun b!2121053 () Bool)

(declare-fun e!1350856 () Bool)

(declare-fun tp!649197 () Bool)

(assert (=> b!2121053 (= e!1350856 (and (inv!31275 (c!339707 (totalInput!2900 cacheFurthestNullable!130))) tp!649197))))

(declare-fun b!2121054 () Bool)

(declare-fun res!918970 () Bool)

(assert (=> b!2121054 (=> (not res!918970) (not e!1350854))))

(declare-fun valid!1924 (CacheUp!1630) Bool)

(assert (=> b!2121054 (= res!918970 (valid!1924 cacheUp!991))))

(declare-fun tp!649201 () Bool)

(declare-fun e!1350847 () Bool)

(declare-fun tp!649186 () Bool)

(declare-fun array_inv!2671 (array!8395) Bool)

(assert (=> b!2121055 (= e!1350847 (and tp!649188 tp!649201 tp!649186 (array_inv!2668 (_keys!2739 (v!28215 (underlying!5079 (v!28216 (underlying!5080 (cache!2737 cacheFurthestNullable!130))))))) (array_inv!2671 (_values!2722 (v!28215 (underlying!5079 (v!28216 (underlying!5080 (cache!2737 cacheFurthestNullable!130))))))) e!1350851))))

(declare-fun b!2121056 () Bool)

(declare-fun e!1350861 () Bool)

(declare-fun lt!794777 () MutLongMap!2442)

(assert (=> b!2121056 (= e!1350836 (and e!1350861 ((_ is LongMap!2442) lt!794777)))))

(assert (=> b!2121056 (= lt!794777 (v!28216 (underlying!5080 (cache!2737 cacheFurthestNullable!130))))))

(declare-fun b!2121057 () Bool)

(assert (=> b!2121057 (= e!1350843 e!1350841)))

(declare-fun mapIsEmpty!11806 () Bool)

(declare-fun mapRes!11805 () Bool)

(assert (=> mapIsEmpty!11806 mapRes!11805))

(declare-fun b!2121058 () Bool)

(declare-fun e!1350833 () Bool)

(declare-fun tp!649207 () Bool)

(assert (=> b!2121058 (= e!1350833 tp!649207)))

(declare-fun b!2121059 () Bool)

(declare-fun res!918971 () Bool)

(assert (=> b!2121059 (=> (not res!918971) (not e!1350854))))

(assert (=> b!2121059 (= res!918971 (= (totalInput!2900 cacheFurthestNullable!130) totalInput!886))))

(declare-fun b!2121060 () Bool)

(declare-fun tp!649194 () Bool)

(assert (=> b!2121060 (= e!1350846 (and tp!649194 mapRes!11806))))

(declare-fun condMapEmpty!11804 () Bool)

(declare-fun mapDefault!11805 () List!23764)

(assert (=> b!2121060 (= condMapEmpty!11804 (= (arr!3724 (_values!2721 (v!28213 (underlying!5076 (v!28214 (underlying!5077 (cache!2735 cacheUp!991))))))) ((as const (Array (_ BitVec 32) List!23764)) mapDefault!11805)))))

(declare-fun b!2121061 () Bool)

(assert (=> b!2121061 (= e!1350845 e!1350863)))

(declare-fun b!2121062 () Bool)

(declare-fun e!1350855 () Bool)

(assert (=> b!2121062 (= e!1350861 e!1350855)))

(declare-fun b!2121063 () Bool)

(declare-fun tp!649196 () Bool)

(assert (=> b!2121063 (= e!1350852 (and (inv!31275 (c!339707 input!5507)) tp!649196))))

(declare-fun b!2121064 () Bool)

(assert (=> b!2121064 (= e!1350834 (and e!1350862 (inv!31277 (totalInput!2900 cacheFurthestNullable!130)) e!1350856))))

(declare-fun tp!649199 () Bool)

(declare-fun setNonEmpty!14737 () Bool)

(declare-fun setElem!14737 () Context!2462)

(declare-fun inv!31280 (Context!2462) Bool)

(assert (=> setNonEmpty!14737 (= setRes!14737 (and tp!649199 (inv!31280 setElem!14737) e!1350833))))

(declare-fun setRest!14737 () (InoxSet Context!2462))

(assert (=> setNonEmpty!14737 (= z!3883 ((_ map or) (store ((as const (Array Context!2462 Bool)) false) setElem!14737 true) setRest!14737))))

(declare-fun b!2121065 () Bool)

(declare-fun lt!794776 () MutLongMap!2440)

(assert (=> b!2121065 (= e!1350858 (and e!1350840 ((_ is LongMap!2440) lt!794776)))))

(assert (=> b!2121065 (= lt!794776 (v!28212 (underlying!5078 (cache!2736 cacheDown!1110))))))

(declare-fun b!2121066 () Bool)

(declare-fun tp!649202 () Bool)

(assert (=> b!2121066 (= e!1350860 (and tp!649202 mapRes!11805))))

(declare-fun condMapEmpty!11805 () Bool)

(declare-fun mapDefault!11806 () List!23765)

(assert (=> b!2121066 (= condMapEmpty!11805 (= (arr!3723 (_values!2720 (v!28211 (underlying!5075 (v!28212 (underlying!5078 (cache!2736 cacheDown!1110))))))) ((as const (Array (_ BitVec 32) List!23765)) mapDefault!11806)))))

(assert (=> b!2121067 (= e!1350854 (not (forall!4860 (_2!13546 (_1!13547 lt!794774)) lambda!78510)))))

(assert (=> b!2121067 e!1350857))

(declare-fun res!918972 () Bool)

(assert (=> b!2121067 (=> (not res!918972) (not e!1350857))))

(assert (=> b!2121067 (= res!918972 (forall!4860 (_2!13546 (_1!13547 lt!794774)) lambda!78508))))

(declare-fun lt!794772 () Int)

(declare-fun furthestNullablePositionStackMem!7 ((InoxSet Context!2462) Int BalanceConc!15360 Int Int List!23767 CacheUp!1630 CacheDown!1616 CacheFurthestNullable!586) tuple3!2880)

(assert (=> b!2121067 (= lt!794774 (furthestNullablePositionStackMem!7 z!3883 lt!794775 totalInput!886 lt!794772 e!1350839 Nil!23683 cacheUp!991 cacheDown!1110 cacheFurthestNullable!130))))

(declare-fun c!339705 () Bool)

(declare-fun nullableZipper!62 ((InoxSet Context!2462)) Bool)

(assert (=> b!2121067 (= c!339705 (nullableZipper!62 z!3883))))

(declare-fun size!18510 (BalanceConc!15360) Int)

(assert (=> b!2121067 (= lt!794775 (- lt!794772 (size!18510 input!5507)))))

(assert (=> b!2121067 (= lt!794772 (size!18510 totalInput!886))))

(declare-fun b!2121068 () Bool)

(assert (=> b!2121068 (= e!1350855 e!1350847)))

(declare-fun b!2121069 () Bool)

(declare-fun lt!794773 () MutLongMap!2441)

(assert (=> b!2121069 (= e!1350849 (and e!1350844 ((_ is LongMap!2441) lt!794773)))))

(assert (=> b!2121069 (= lt!794773 (v!28214 (underlying!5077 (cache!2735 cacheUp!991))))))

(declare-fun mapNonEmpty!11806 () Bool)

(declare-fun tp!649190 () Bool)

(declare-fun tp!649198 () Bool)

(assert (=> mapNonEmpty!11806 (= mapRes!11805 (and tp!649190 tp!649198))))

(declare-fun mapRest!11805 () (Array (_ BitVec 32) List!23765))

(declare-fun mapValue!11805 () List!23765)

(declare-fun mapKey!11806 () (_ BitVec 32))

(assert (=> mapNonEmpty!11806 (= (arr!3723 (_values!2720 (v!28211 (underlying!5075 (v!28212 (underlying!5078 (cache!2736 cacheDown!1110))))))) (store mapRest!11805 mapKey!11806 mapValue!11805))))

(declare-fun b!2121070 () Bool)

(assert (=> b!2121070 (= e!1350853 e!1350848)))

(assert (= (and start!207010 res!918969) b!2121054))

(assert (= (and b!2121054 res!918970) b!2121039))

(assert (= (and b!2121039 res!918973) b!2121041))

(assert (= (and b!2121041 res!918974) b!2121059))

(assert (= (and b!2121059 res!918971) b!2121067))

(assert (= (and b!2121067 c!339705) b!2121043))

(assert (= (and b!2121067 (not c!339705)) b!2121046))

(assert (= (and b!2121067 res!918972) b!2121048))

(assert (= (and b!2121038 condMapEmpty!11806) mapIsEmpty!11805))

(assert (= (and b!2121038 (not condMapEmpty!11806)) mapNonEmpty!11804))

(assert (= b!2121055 b!2121038))

(assert (= b!2121068 b!2121055))

(assert (= b!2121062 b!2121068))

(assert (= (and b!2121056 ((_ is LongMap!2442) (v!28216 (underlying!5080 (cache!2737 cacheFurthestNullable!130))))) b!2121062))

(assert (= b!2121050 b!2121056))

(assert (= (and b!2121064 ((_ is HashMap!2356) (cache!2737 cacheFurthestNullable!130))) b!2121050))

(assert (= b!2121064 b!2121053))

(assert (= start!207010 b!2121064))

(assert (= (and start!207010 condSetEmpty!14737) setIsEmpty!14737))

(assert (= (and start!207010 (not condSetEmpty!14737)) setNonEmpty!14737))

(assert (= setNonEmpty!14737 b!2121058))

(assert (= start!207010 b!2121063))

(assert (= (and b!2121066 condMapEmpty!11805) mapIsEmpty!11806))

(assert (= (and b!2121066 (not condMapEmpty!11805)) mapNonEmpty!11806))

(assert (= b!2121042 b!2121066))

(assert (= b!2121061 b!2121042))

(assert (= b!2121045 b!2121061))

(assert (= (and b!2121065 ((_ is LongMap!2440) (v!28212 (underlying!5078 (cache!2736 cacheDown!1110))))) b!2121045))

(assert (= b!2121051 b!2121065))

(assert (= (and b!2121049 ((_ is HashMap!2355) (cache!2736 cacheDown!1110))) b!2121051))

(assert (= start!207010 b!2121049))

(assert (= (and b!2121060 condMapEmpty!11804) mapIsEmpty!11804))

(assert (= (and b!2121060 (not condMapEmpty!11804)) mapNonEmpty!11805))

(assert (= b!2121052 b!2121060))

(assert (= b!2121070 b!2121052))

(assert (= b!2121047 b!2121070))

(assert (= (and b!2121069 ((_ is LongMap!2441) (v!28214 (underlying!5077 (cache!2735 cacheUp!991))))) b!2121047))

(assert (= b!2121040 b!2121069))

(assert (= (and b!2121057 ((_ is HashMap!2354) (cache!2735 cacheUp!991))) b!2121040))

(assert (= start!207010 b!2121057))

(assert (= start!207010 b!2121044))

(declare-fun m!2575027 () Bool)

(assert (=> b!2121048 m!2575027))

(declare-fun m!2575029 () Bool)

(assert (=> b!2121053 m!2575029))

(declare-fun m!2575031 () Bool)

(assert (=> b!2121039 m!2575031))

(declare-fun m!2575033 () Bool)

(assert (=> setNonEmpty!14737 m!2575033))

(declare-fun m!2575035 () Bool)

(assert (=> mapNonEmpty!11804 m!2575035))

(declare-fun m!2575037 () Bool)

(assert (=> b!2121041 m!2575037))

(declare-fun m!2575039 () Bool)

(assert (=> b!2121067 m!2575039))

(declare-fun m!2575041 () Bool)

(assert (=> b!2121067 m!2575041))

(declare-fun m!2575043 () Bool)

(assert (=> b!2121067 m!2575043))

(declare-fun m!2575045 () Bool)

(assert (=> b!2121067 m!2575045))

(declare-fun m!2575047 () Bool)

(assert (=> b!2121067 m!2575047))

(declare-fun m!2575049 () Bool)

(assert (=> b!2121067 m!2575049))

(declare-fun m!2575051 () Bool)

(assert (=> b!2121064 m!2575051))

(declare-fun m!2575053 () Bool)

(assert (=> b!2121054 m!2575053))

(declare-fun m!2575055 () Bool)

(assert (=> start!207010 m!2575055))

(declare-fun m!2575057 () Bool)

(assert (=> start!207010 m!2575057))

(declare-fun m!2575059 () Bool)

(assert (=> start!207010 m!2575059))

(declare-fun m!2575061 () Bool)

(assert (=> start!207010 m!2575061))

(declare-fun m!2575063 () Bool)

(assert (=> start!207010 m!2575063))

(declare-fun m!2575065 () Bool)

(assert (=> start!207010 m!2575065))

(assert (=> start!207010 m!2575061))

(assert (=> start!207010 m!2575055))

(declare-fun m!2575067 () Bool)

(assert (=> start!207010 m!2575067))

(declare-fun m!2575069 () Bool)

(assert (=> start!207010 m!2575069))

(declare-fun m!2575071 () Bool)

(assert (=> b!2121063 m!2575071))

(declare-fun m!2575073 () Bool)

(assert (=> b!2121052 m!2575073))

(declare-fun m!2575075 () Bool)

(assert (=> b!2121052 m!2575075))

(declare-fun m!2575077 () Bool)

(assert (=> b!2121055 m!2575077))

(declare-fun m!2575079 () Bool)

(assert (=> b!2121055 m!2575079))

(declare-fun m!2575081 () Bool)

(assert (=> mapNonEmpty!11805 m!2575081))

(declare-fun m!2575083 () Bool)

(assert (=> b!2121042 m!2575083))

(declare-fun m!2575085 () Bool)

(assert (=> b!2121042 m!2575085))

(declare-fun m!2575087 () Bool)

(assert (=> b!2121044 m!2575087))

(declare-fun m!2575089 () Bool)

(assert (=> mapNonEmpty!11806 m!2575089))

(check-sat (not b!2121067) (not b!2121038) (not b!2121058) (not b!2121039) (not b!2121053) (not mapNonEmpty!11806) (not b!2121042) b_and!171169 (not b!2121060) (not b_next!62297) (not mapNonEmpty!11811) (not b!2121052) b_and!171177 (not b!2121054) (not b_next!62299) (not start!207010) (not b!2121066) (not b_next!62303) (not b!2121105) b_and!171175 (not b!2121064) (not b!2121113) (not mapNonEmpty!11804) (not b!2121063) (not b!2121044) (not setNonEmpty!14737) (not b_next!62295) (not b!2121055) (not b_next!62301) (not b!2121041) b_and!171179 (not b!2121048) (not mapNonEmpty!11812) (not b!2121107) b_and!171173 (not mapNonEmpty!11805) (not b_next!62293) (not b!2121119) (not b!2121108) (not setNonEmpty!14740) b_and!171171)
(check-sat b_and!171177 (not b_next!62299) (not b_next!62295) b_and!171169 b_and!171171 (not b_next!62297) (not b_next!62303) b_and!171175 (not b_next!62301) b_and!171179 b_and!171173 (not b_next!62293))
