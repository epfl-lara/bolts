; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208214 () Bool)

(assert start!208214)

(declare-fun b!2146719 () Bool)

(declare-fun b_free!63325 () Bool)

(declare-fun b_next!64029 () Bool)

(assert (=> b!2146719 (= b_free!63325 (not b_next!64029))))

(declare-fun tp!665829 () Bool)

(declare-fun b_and!172909 () Bool)

(assert (=> b!2146719 (= tp!665829 b_and!172909)))

(declare-fun b!2146711 () Bool)

(declare-fun b_free!63327 () Bool)

(declare-fun b_next!64031 () Bool)

(assert (=> b!2146711 (= b_free!63327 (not b_next!64031))))

(declare-fun tp!665823 () Bool)

(declare-fun b_and!172911 () Bool)

(assert (=> b!2146711 (= tp!665823 b_and!172911)))

(declare-fun e!1372161 () Bool)

(declare-fun e!1372173 () Bool)

(assert (=> b!2146711 (= e!1372161 (and e!1372173 tp!665823))))

(declare-fun b!2146712 () Bool)

(declare-fun e!1372169 () Bool)

(declare-fun tp!665830 () Bool)

(declare-fun mapRes!13466 () Bool)

(assert (=> b!2146712 (= e!1372169 (and tp!665830 mapRes!13466))))

(declare-fun condMapEmpty!13466 () Bool)

(declare-datatypes ((array!9547 0))(
  ( (array!9548 (arr!4264 (Array (_ BitVec 32) (_ BitVec 64))) (size!19178 (_ BitVec 32))) )
))
(declare-datatypes ((C!11764 0))(
  ( (C!11765 (val!6868 Int)) )
))
(declare-datatypes ((Regex!5809 0))(
  ( (ElementMatch!5809 (c!340824 C!11764)) (Concat!10111 (regOne!12130 Regex!5809) (regTwo!12130 Regex!5809)) (EmptyExpr!5809) (Star!5809 (reg!6138 Regex!5809)) (EmptyLang!5809) (Union!5809 (regOne!12131 Regex!5809) (regTwo!12131 Regex!5809)) )
))
(declare-datatypes ((List!24582 0))(
  ( (Nil!24498) (Cons!24498 (h!29899 Regex!5809) (t!197114 List!24582)) )
))
(declare-datatypes ((Context!2758 0))(
  ( (Context!2759 (exprs!1879 List!24582)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3550 0))(
  ( (tuple3!3551 (_1!14429 (InoxSet Context!2758)) (_2!14429 Int) (_3!2245 Int)) )
))
(declare-datatypes ((tuple2!24368 0))(
  ( (tuple2!24369 (_1!14430 tuple3!3550) (_2!14430 Int)) )
))
(declare-datatypes ((List!24583 0))(
  ( (Nil!24499) (Cons!24499 (h!29900 tuple2!24368) (t!197115 List!24583)) )
))
(declare-datatypes ((array!9549 0))(
  ( (array!9550 (arr!4265 (Array (_ BitVec 32) List!24583)) (size!19179 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5668 0))(
  ( (LongMapFixedSize!5669 (defaultEntry!3199 Int) (mask!7054 (_ BitVec 32)) (extraKeys!3082 (_ BitVec 32)) (zeroValue!3092 List!24583) (minValue!3092 List!24583) (_size!5719 (_ BitVec 32)) (_keys!3131 array!9547) (_values!3114 array!9549) (_vacant!2895 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11161 0))(
  ( (Cell!11162 (v!29090 LongMapFixedSize!5668)) )
))
(declare-datatypes ((MutLongMap!2834 0))(
  ( (LongMap!2834 (underlying!5863 Cell!11161)) (MutLongMapExt!2833 (__x!16678 Int)) )
))
(declare-datatypes ((Cell!11163 0))(
  ( (Cell!11164 (v!29091 MutLongMap!2834)) )
))
(declare-datatypes ((List!24584 0))(
  ( (Nil!24500) (Cons!24500 (h!29901 C!11764) (t!197116 List!24584)) )
))
(declare-datatypes ((IArray!15895 0))(
  ( (IArray!15896 (innerList!8005 List!24584)) )
))
(declare-datatypes ((Conc!7945 0))(
  ( (Node!7945 (left!18816 Conc!7945) (right!19146 Conc!7945) (csize!16120 Int) (cheight!8156 Int)) (Leaf!11617 (xs!10887 IArray!15895) (csize!16121 Int)) (Empty!7945) )
))
(declare-datatypes ((Hashable!2748 0))(
  ( (HashableExt!2747 (__x!16679 Int)) )
))
(declare-datatypes ((MutableMap!2748 0))(
  ( (MutableMapExt!2747 (__x!16680 Int)) (HashMap!2748 (underlying!5864 Cell!11163) (hashF!4671 Hashable!2748) (_size!5720 (_ BitVec 32)) (defaultValue!2910 Int)) )
))
(declare-datatypes ((BalanceConc!15652 0))(
  ( (BalanceConc!15653 (c!340825 Conc!7945)) )
))
(declare-datatypes ((CacheFurthestNullable!854 0))(
  ( (CacheFurthestNullable!855 (cache!3129 MutableMap!2748) (totalInput!3185 BalanceConc!15652)) )
))
(declare-fun thiss!29173 () CacheFurthestNullable!854)

(declare-fun mapDefault!13466 () List!24583)

(assert (=> b!2146712 (= condMapEmpty!13466 (= (arr!4265 (_values!3114 (v!29090 (underlying!5863 (v!29091 (underlying!5864 (cache!3129 thiss!29173))))))) ((as const (Array (_ BitVec 32) List!24583)) mapDefault!13466)))))

(declare-fun mapIsEmpty!13466 () Bool)

(assert (=> mapIsEmpty!13466 mapRes!13466))

(declare-fun b!2146713 () Bool)

(declare-fun res!926155 () Bool)

(declare-fun e!1372164 () Bool)

(assert (=> b!2146713 (=> (not res!926155) (not e!1372164))))

(declare-fun validCacheMapFurthestNullable!114 (MutableMap!2748 BalanceConc!15652) Bool)

(assert (=> b!2146713 (= res!926155 (validCacheMapFurthestNullable!114 (cache!3129 thiss!29173) (totalInput!3185 thiss!29173)))))

(declare-fun b!2146714 () Bool)

(declare-fun e!1372175 () Bool)

(declare-fun tp!665824 () Bool)

(declare-fun inv!32224 (Conc!7945) Bool)

(assert (=> b!2146714 (= e!1372175 (and (inv!32224 (c!340825 (totalInput!3185 thiss!29173))) tp!665824))))

(declare-fun b!2146715 () Bool)

(declare-fun e!1372174 () Bool)

(declare-fun e!1372165 () Bool)

(assert (=> b!2146715 (= e!1372174 e!1372165)))

(declare-fun res!926154 () Bool)

(assert (=> b!2146715 (=> (not res!926154) (not e!1372165))))

(declare-fun from!960 () Int)

(declare-fun lt!799168 () Int)

(assert (=> b!2146715 (= res!926154 (<= from!960 lt!799168))))

(declare-fun size!19180 (BalanceConc!15652) Int)

(assert (=> b!2146715 (= lt!799168 (size!19180 (totalInput!3185 thiss!29173)))))

(declare-fun b!2146716 () Bool)

(declare-fun e!1372168 () Bool)

(declare-fun inv!32225 (BalanceConc!15652) Bool)

(assert (=> b!2146716 (= e!1372168 (and e!1372161 (inv!32225 (totalInput!3185 thiss!29173)) e!1372175))))

(declare-fun z!526 () (InoxSet Context!2758))

(declare-fun b!2146717 () Bool)

(declare-fun lt!799167 () tuple3!3550)

(declare-fun lastNullablePos!99 () Int)

(declare-fun furthestNullablePosition!95 ((InoxSet Context!2758) Int BalanceConc!15652 Int Int) Int)

(declare-fun apply!5986 (MutableMap!2748 tuple3!3550) Int)

(assert (=> b!2146717 (= e!1372165 (= (furthestNullablePosition!95 z!526 from!960 (totalInput!3185 thiss!29173) lt!799168 lastNullablePos!99) (apply!5986 (cache!3129 thiss!29173) lt!799167)))))

(declare-fun b!2146718 () Bool)

(declare-fun e!1372166 () Bool)

(declare-fun e!1372167 () Bool)

(assert (=> b!2146718 (= e!1372166 e!1372167)))

(declare-fun tp!665822 () Bool)

(declare-fun tp!665826 () Bool)

(declare-fun e!1372171 () Bool)

(declare-fun array_inv!3050 (array!9547) Bool)

(declare-fun array_inv!3051 (array!9549) Bool)

(assert (=> b!2146719 (= e!1372171 (and tp!665829 tp!665826 tp!665822 (array_inv!3050 (_keys!3131 (v!29090 (underlying!5863 (v!29091 (underlying!5864 (cache!3129 thiss!29173))))))) (array_inv!3051 (_values!3114 (v!29090 (underlying!5863 (v!29091 (underlying!5864 (cache!3129 thiss!29173))))))) e!1372169))))

(declare-fun b!2146720 () Bool)

(declare-fun e!1372163 () Bool)

(declare-fun tp!665831 () Bool)

(assert (=> b!2146720 (= e!1372163 tp!665831)))

(declare-fun b!2146721 () Bool)

(declare-fun e!1372170 () Bool)

(declare-fun e!1372172 () Bool)

(assert (=> b!2146721 (= e!1372170 (not e!1372172))))

(declare-fun res!926158 () Bool)

(assert (=> b!2146721 (=> res!926158 e!1372172)))

(get-info :version)

(assert (=> b!2146721 (= res!926158 (not ((_ is HashMap!2748) (cache!3129 thiss!29173))))))

(assert (=> b!2146721 e!1372174))

(declare-fun res!926153 () Bool)

(assert (=> b!2146721 (=> (not res!926153) (not e!1372174))))

(assert (=> b!2146721 (= res!926153 (>= from!960 0))))

(declare-datatypes ((Unit!37731 0))(
  ( (Unit!37732) )
))
(declare-fun lt!799169 () Unit!37731)

(declare-fun lemmaIfInCacheThenValid!8 (CacheFurthestNullable!854 (InoxSet Context!2758) Int Int BalanceConc!15652) Unit!37731)

(assert (=> b!2146721 (= lt!799169 (lemmaIfInCacheThenValid!8 thiss!29173 z!526 from!960 lastNullablePos!99 (totalInput!3185 thiss!29173)))))

(declare-fun b!2146722 () Bool)

(assert (=> b!2146722 (= e!1372164 e!1372170)))

(declare-fun res!926157 () Bool)

(assert (=> b!2146722 (=> (not res!926157) (not e!1372170))))

(declare-fun contains!4159 (MutableMap!2748 tuple3!3550) Bool)

(assert (=> b!2146722 (= res!926157 (contains!4159 (cache!3129 thiss!29173) lt!799167))))

(assert (=> b!2146722 (= lt!799167 (tuple3!3551 z!526 from!960 lastNullablePos!99))))

(declare-fun res!926159 () Bool)

(assert (=> start!208214 (=> (not res!926159) (not e!1372164))))

(assert (=> start!208214 (= res!926159 (and (>= lastNullablePos!99 (- 1)) (< lastNullablePos!99 from!960)))))

(assert (=> start!208214 e!1372164))

(assert (=> start!208214 true))

(declare-fun condSetEmpty!16831 () Bool)

(assert (=> start!208214 (= condSetEmpty!16831 (= z!526 ((as const (Array Context!2758 Bool)) false)))))

(declare-fun setRes!16831 () Bool)

(assert (=> start!208214 setRes!16831))

(declare-fun inv!32226 (CacheFurthestNullable!854) Bool)

(assert (=> start!208214 (and (inv!32226 thiss!29173) e!1372168)))

(declare-fun b!2146723 () Bool)

(declare-fun res!926160 () Bool)

(assert (=> b!2146723 (=> (not res!926160) (not e!1372164))))

(declare-fun e!1372176 () Bool)

(assert (=> b!2146723 (= res!926160 e!1372176)))

(declare-fun res!926156 () Bool)

(assert (=> b!2146723 (=> res!926156 e!1372176)))

(declare-fun nullableZipper!159 ((InoxSet Context!2758)) Bool)

(assert (=> b!2146723 (= res!926156 (not (nullableZipper!159 z!526)))))

(declare-fun b!2146724 () Bool)

(declare-fun valid!2206 (MutableMap!2748) Bool)

(assert (=> b!2146724 (= e!1372172 (valid!2206 (cache!3129 thiss!29173)))))

(declare-fun mapNonEmpty!13466 () Bool)

(declare-fun tp!665827 () Bool)

(declare-fun tp!665825 () Bool)

(assert (=> mapNonEmpty!13466 (= mapRes!13466 (and tp!665827 tp!665825))))

(declare-fun mapRest!13466 () (Array (_ BitVec 32) List!24583))

(declare-fun mapValue!13466 () List!24583)

(declare-fun mapKey!13466 () (_ BitVec 32))

(assert (=> mapNonEmpty!13466 (= (arr!4265 (_values!3114 (v!29090 (underlying!5863 (v!29091 (underlying!5864 (cache!3129 thiss!29173))))))) (store mapRest!13466 mapKey!13466 mapValue!13466))))

(declare-fun setIsEmpty!16831 () Bool)

(assert (=> setIsEmpty!16831 setRes!16831))

(declare-fun b!2146725 () Bool)

(assert (=> b!2146725 (= e!1372167 e!1372171)))

(declare-fun b!2146726 () Bool)

(declare-fun lt!799170 () MutLongMap!2834)

(assert (=> b!2146726 (= e!1372173 (and e!1372166 ((_ is LongMap!2834) lt!799170)))))

(assert (=> b!2146726 (= lt!799170 (v!29091 (underlying!5864 (cache!3129 thiss!29173))))))

(declare-fun setNonEmpty!16831 () Bool)

(declare-fun tp!665828 () Bool)

(declare-fun setElem!16831 () Context!2758)

(declare-fun inv!32227 (Context!2758) Bool)

(assert (=> setNonEmpty!16831 (= setRes!16831 (and tp!665828 (inv!32227 setElem!16831) e!1372163))))

(declare-fun setRest!16831 () (InoxSet Context!2758))

(assert (=> setNonEmpty!16831 (= z!526 ((_ map or) (store ((as const (Array Context!2758 Bool)) false) setElem!16831 true) setRest!16831))))

(declare-fun b!2146727 () Bool)

(assert (=> b!2146727 (= e!1372176 (= lastNullablePos!99 (- from!960 1)))))

(assert (= (and start!208214 res!926159) b!2146723))

(assert (= (and b!2146723 (not res!926156)) b!2146727))

(assert (= (and b!2146723 res!926160) b!2146713))

(assert (= (and b!2146713 res!926155) b!2146722))

(assert (= (and b!2146722 res!926157) b!2146721))

(assert (= (and b!2146721 res!926153) b!2146715))

(assert (= (and b!2146715 res!926154) b!2146717))

(assert (= (and b!2146721 (not res!926158)) b!2146724))

(assert (= (and start!208214 condSetEmpty!16831) setIsEmpty!16831))

(assert (= (and start!208214 (not condSetEmpty!16831)) setNonEmpty!16831))

(assert (= setNonEmpty!16831 b!2146720))

(assert (= (and b!2146712 condMapEmpty!13466) mapIsEmpty!13466))

(assert (= (and b!2146712 (not condMapEmpty!13466)) mapNonEmpty!13466))

(assert (= b!2146719 b!2146712))

(assert (= b!2146725 b!2146719))

(assert (= b!2146718 b!2146725))

(assert (= (and b!2146726 ((_ is LongMap!2834) (v!29091 (underlying!5864 (cache!3129 thiss!29173))))) b!2146718))

(assert (= b!2146711 b!2146726))

(assert (= (and b!2146716 ((_ is HashMap!2748) (cache!3129 thiss!29173))) b!2146711))

(assert (= b!2146716 b!2146714))

(assert (= start!208214 b!2146716))

(declare-fun m!2590240 () Bool)

(assert (=> b!2146714 m!2590240))

(declare-fun m!2590242 () Bool)

(assert (=> b!2146723 m!2590242))

(declare-fun m!2590244 () Bool)

(assert (=> b!2146721 m!2590244))

(declare-fun m!2590246 () Bool)

(assert (=> b!2146716 m!2590246))

(declare-fun m!2590248 () Bool)

(assert (=> b!2146722 m!2590248))

(declare-fun m!2590250 () Bool)

(assert (=> b!2146715 m!2590250))

(declare-fun m!2590252 () Bool)

(assert (=> start!208214 m!2590252))

(declare-fun m!2590254 () Bool)

(assert (=> b!2146719 m!2590254))

(declare-fun m!2590256 () Bool)

(assert (=> b!2146719 m!2590256))

(declare-fun m!2590258 () Bool)

(assert (=> b!2146724 m!2590258))

(declare-fun m!2590260 () Bool)

(assert (=> b!2146717 m!2590260))

(declare-fun m!2590262 () Bool)

(assert (=> b!2146717 m!2590262))

(declare-fun m!2590264 () Bool)

(assert (=> b!2146713 m!2590264))

(declare-fun m!2590266 () Bool)

(assert (=> mapNonEmpty!13466 m!2590266))

(declare-fun m!2590268 () Bool)

(assert (=> setNonEmpty!16831 m!2590268))

(check-sat b_and!172911 b_and!172909 (not b!2146723) (not b!2146716) (not start!208214) (not setNonEmpty!16831) (not b_next!64031) (not b!2146719) (not b!2146714) (not b!2146712) (not b!2146720) (not b!2146717) (not b!2146721) (not b!2146713) (not b!2146724) (not b_next!64029) (not mapNonEmpty!13466) (not b!2146722) (not b!2146715))
(check-sat b_and!172911 b_and!172909 (not b_next!64031) (not b_next!64029))
(get-model)

(declare-fun d!645286 () Bool)

(declare-fun res!926165 () Bool)

(declare-fun e!1372179 () Bool)

(assert (=> d!645286 (=> (not res!926165) (not e!1372179))))

(declare-fun valid!2207 (MutLongMap!2834) Bool)

(assert (=> d!645286 (= res!926165 (valid!2207 (v!29091 (underlying!5864 (cache!3129 thiss!29173)))))))

(assert (=> d!645286 (= (valid!2206 (cache!3129 thiss!29173)) e!1372179)))

(declare-fun b!2146732 () Bool)

(declare-fun res!926166 () Bool)

(assert (=> b!2146732 (=> (not res!926166) (not e!1372179))))

(declare-fun lambda!80619 () Int)

(declare-datatypes ((tuple2!24370 0))(
  ( (tuple2!24371 (_1!14431 (_ BitVec 64)) (_2!14431 List!24583)) )
))
(declare-datatypes ((List!24585 0))(
  ( (Nil!24501) (Cons!24501 (h!29902 tuple2!24370) (t!197119 List!24585)) )
))
(declare-fun forall!5000 (List!24585 Int) Bool)

(declare-datatypes ((ListLongMap!237 0))(
  ( (ListLongMap!238 (toList!1086 List!24585)) )
))
(declare-fun map!4917 (MutLongMap!2834) ListLongMap!237)

(assert (=> b!2146732 (= res!926166 (forall!5000 (toList!1086 (map!4917 (v!29091 (underlying!5864 (cache!3129 thiss!29173))))) lambda!80619))))

(declare-fun b!2146733 () Bool)

(declare-fun allKeysSameHashInMap!80 (ListLongMap!237 Hashable!2748) Bool)

(assert (=> b!2146733 (= e!1372179 (allKeysSameHashInMap!80 (map!4917 (v!29091 (underlying!5864 (cache!3129 thiss!29173)))) (hashF!4671 (cache!3129 thiss!29173))))))

(assert (= (and d!645286 res!926165) b!2146732))

(assert (= (and b!2146732 res!926166) b!2146733))

(declare-fun m!2590270 () Bool)

(assert (=> d!645286 m!2590270))

(declare-fun m!2590272 () Bool)

(assert (=> b!2146732 m!2590272))

(declare-fun m!2590274 () Bool)

(assert (=> b!2146732 m!2590274))

(assert (=> b!2146733 m!2590272))

(assert (=> b!2146733 m!2590272))

(declare-fun m!2590276 () Bool)

(assert (=> b!2146733 m!2590276))

(assert (=> b!2146724 d!645286))

(declare-fun b!2146739 () Bool)

(assert (=> b!2146739 true))

(declare-fun d!645288 () Bool)

(declare-fun res!926171 () Bool)

(declare-fun e!1372182 () Bool)

(assert (=> d!645288 (=> (not res!926171) (not e!1372182))))

(assert (=> d!645288 (= res!926171 (valid!2206 (cache!3129 thiss!29173)))))

(assert (=> d!645288 (= (validCacheMapFurthestNullable!114 (cache!3129 thiss!29173) (totalInput!3185 thiss!29173)) e!1372182)))

(declare-fun b!2146738 () Bool)

(declare-fun res!926172 () Bool)

(assert (=> b!2146738 (=> (not res!926172) (not e!1372182))))

(declare-fun invariantList!312 (List!24583) Bool)

(declare-datatypes ((ListMap!673 0))(
  ( (ListMap!674 (toList!1087 List!24583)) )
))
(declare-fun map!4918 (MutableMap!2748) ListMap!673)

(assert (=> b!2146738 (= res!926172 (invariantList!312 (toList!1087 (map!4918 (cache!3129 thiss!29173)))))))

(declare-fun lambda!80622 () Int)

(declare-fun forall!5001 (List!24583 Int) Bool)

(assert (=> b!2146739 (= e!1372182 (forall!5001 (toList!1087 (map!4918 (cache!3129 thiss!29173))) lambda!80622))))

(assert (= (and d!645288 res!926171) b!2146738))

(assert (= (and b!2146738 res!926172) b!2146739))

(assert (=> d!645288 m!2590258))

(declare-fun m!2590279 () Bool)

(assert (=> b!2146738 m!2590279))

(declare-fun m!2590281 () Bool)

(assert (=> b!2146738 m!2590281))

(assert (=> b!2146739 m!2590279))

(declare-fun m!2590283 () Bool)

(assert (=> b!2146739 m!2590283))

(assert (=> b!2146713 d!645288))

(declare-fun d!645290 () Bool)

(declare-fun lambda!80625 () Int)

(declare-fun exists!720 ((InoxSet Context!2758) Int) Bool)

(assert (=> d!645290 (= (nullableZipper!159 z!526) (exists!720 z!526 lambda!80625))))

(declare-fun bs!445451 () Bool)

(assert (= bs!445451 d!645290))

(declare-fun m!2590285 () Bool)

(assert (=> bs!445451 m!2590285))

(assert (=> b!2146723 d!645290))

(declare-fun bs!445452 () Bool)

(declare-fun b!2146766 () Bool)

(assert (= bs!445452 (and b!2146766 b!2146732)))

(declare-fun lambda!80628 () Int)

(assert (=> bs!445452 (= lambda!80628 lambda!80619)))

(declare-fun bm!128866 () Bool)

(declare-fun call!128871 () ListLongMap!237)

(assert (=> bm!128866 (= call!128871 (map!4917 (v!29091 (underlying!5864 (cache!3129 thiss!29173)))))))

(declare-fun b!2146764 () Bool)

(declare-fun e!1372201 () Bool)

(declare-fun call!128876 () Bool)

(assert (=> b!2146764 (= e!1372201 call!128876)))

(declare-fun b!2146765 () Bool)

(assert (=> b!2146765 false))

(declare-fun lt!799212 () Unit!37731)

(declare-fun lt!799228 () Unit!37731)

(assert (=> b!2146765 (= lt!799212 lt!799228)))

(declare-fun lt!799219 () ListLongMap!237)

(declare-fun contains!4160 (ListMap!673 tuple3!3550) Bool)

(declare-fun extractMap!70 (List!24585) ListMap!673)

(assert (=> b!2146765 (contains!4160 (extractMap!70 (toList!1086 lt!799219)) lt!799167)))

(declare-fun lemmaInLongMapThenInGenericMap!7 (ListLongMap!237 tuple3!3550 Hashable!2748) Unit!37731)

(assert (=> b!2146765 (= lt!799228 (lemmaInLongMapThenInGenericMap!7 lt!799219 lt!799167 (hashF!4671 (cache!3129 thiss!29173))))))

(assert (=> b!2146765 (= lt!799219 call!128871)))

(declare-fun e!1372200 () Unit!37731)

(declare-fun Unit!37733 () Unit!37731)

(assert (=> b!2146765 (= e!1372200 Unit!37733)))

(declare-fun e!1372197 () Unit!37731)

(declare-fun lt!799216 () (_ BitVec 64))

(declare-fun forallContained!754 (List!24585 Int tuple2!24370) Unit!37731)

(declare-fun apply!5987 (MutLongMap!2834 (_ BitVec 64)) List!24583)

(assert (=> b!2146766 (= e!1372197 (forallContained!754 (toList!1086 (map!4917 (v!29091 (underlying!5864 (cache!3129 thiss!29173))))) lambda!80628 (tuple2!24371 lt!799216 (apply!5987 (v!29091 (underlying!5864 (cache!3129 thiss!29173))) lt!799216))))))

(declare-fun c!340836 () Bool)

(declare-fun contains!4161 (List!24585 tuple2!24370) Bool)

(assert (=> b!2146766 (= c!340836 (not (contains!4161 (toList!1086 (map!4917 (v!29091 (underlying!5864 (cache!3129 thiss!29173))))) (tuple2!24371 lt!799216 (apply!5987 (v!29091 (underlying!5864 (cache!3129 thiss!29173))) lt!799216)))))))

(declare-fun lt!799223 () Unit!37731)

(declare-fun e!1372202 () Unit!37731)

(assert (=> b!2146766 (= lt!799223 e!1372202)))

(declare-fun b!2146767 () Bool)

(declare-fun e!1372203 () Unit!37731)

(declare-fun lt!799224 () Unit!37731)

(assert (=> b!2146767 (= e!1372203 lt!799224)))

(declare-fun lt!799217 () ListLongMap!237)

(assert (=> b!2146767 (= lt!799217 call!128871)))

(declare-fun lemmaInGenericMapThenInLongMap!7 (ListLongMap!237 tuple3!3550 Hashable!2748) Unit!37731)

(assert (=> b!2146767 (= lt!799224 (lemmaInGenericMapThenInLongMap!7 lt!799217 lt!799167 (hashF!4671 (cache!3129 thiss!29173))))))

(declare-fun res!926181 () Bool)

(declare-fun call!128873 () Bool)

(assert (=> b!2146767 (= res!926181 call!128873)))

(declare-fun e!1372199 () Bool)

(assert (=> b!2146767 (=> (not res!926181) (not e!1372199))))

(assert (=> b!2146767 e!1372199))

(declare-fun b!2146768 () Bool)

(declare-fun Unit!37734 () Unit!37731)

(assert (=> b!2146768 (= e!1372200 Unit!37734)))

(declare-fun b!2146769 () Bool)

(assert (=> b!2146769 false))

(declare-fun lt!799215 () Unit!37731)

(declare-fun lt!799225 () Unit!37731)

(assert (=> b!2146769 (= lt!799215 lt!799225)))

(declare-fun lt!799222 () List!24585)

(declare-fun lt!799230 () List!24583)

(assert (=> b!2146769 (contains!4161 lt!799222 (tuple2!24371 lt!799216 lt!799230))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!8 (List!24585 (_ BitVec 64) List!24583) Unit!37731)

(assert (=> b!2146769 (= lt!799225 (lemmaGetValueByKeyImpliesContainsTuple!8 lt!799222 lt!799216 lt!799230))))

(assert (=> b!2146769 (= lt!799230 (apply!5987 (v!29091 (underlying!5864 (cache!3129 thiss!29173))) lt!799216))))

(assert (=> b!2146769 (= lt!799222 (toList!1086 (map!4917 (v!29091 (underlying!5864 (cache!3129 thiss!29173))))))))

(declare-fun lt!799229 () Unit!37731)

(declare-fun lt!799211 () Unit!37731)

(assert (=> b!2146769 (= lt!799229 lt!799211)))

(declare-fun lt!799221 () List!24585)

(declare-datatypes ((Option!4958 0))(
  ( (None!4957) (Some!4957 (v!29092 List!24583)) )
))
(declare-fun isDefined!4079 (Option!4958) Bool)

(declare-fun getValueByKey!35 (List!24585 (_ BitVec 64)) Option!4958)

(assert (=> b!2146769 (isDefined!4079 (getValueByKey!35 lt!799221 lt!799216))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!24 (List!24585 (_ BitVec 64)) Unit!37731)

(assert (=> b!2146769 (= lt!799211 (lemmaContainsKeyImpliesGetValueByKeyDefined!24 lt!799221 lt!799216))))

(assert (=> b!2146769 (= lt!799221 (toList!1086 (map!4917 (v!29091 (underlying!5864 (cache!3129 thiss!29173))))))))

(declare-fun lt!799227 () Unit!37731)

(declare-fun lt!799214 () Unit!37731)

(assert (=> b!2146769 (= lt!799227 lt!799214)))

(declare-fun lt!799226 () List!24585)

(declare-fun containsKey!43 (List!24585 (_ BitVec 64)) Bool)

(assert (=> b!2146769 (containsKey!43 lt!799226 lt!799216)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!8 (List!24585 (_ BitVec 64)) Unit!37731)

(assert (=> b!2146769 (= lt!799214 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!8 lt!799226 lt!799216))))

(assert (=> b!2146769 (= lt!799226 (toList!1086 (map!4917 (v!29091 (underlying!5864 (cache!3129 thiss!29173))))))))

(declare-fun Unit!37735 () Unit!37731)

(assert (=> b!2146769 (= e!1372202 Unit!37735)))

(declare-fun bm!128868 () Bool)

(declare-datatypes ((Option!4959 0))(
  ( (None!4958) (Some!4958 (v!29093 tuple2!24368)) )
))
(declare-fun call!128872 () Option!4959)

(declare-fun call!128875 () List!24583)

(declare-fun getPair!7 (List!24583 tuple3!3550) Option!4959)

(assert (=> bm!128868 (= call!128872 (getPair!7 call!128875 lt!799167))))

(declare-fun bm!128869 () Bool)

(declare-fun isDefined!4080 (Option!4959) Bool)

(assert (=> bm!128869 (= call!128876 (isDefined!4080 call!128872))))

(declare-fun e!1372198 () Bool)

(declare-fun b!2146770 () Bool)

(assert (=> b!2146770 (= e!1372198 (isDefined!4080 (getPair!7 (apply!5987 (v!29091 (underlying!5864 (cache!3129 thiss!29173))) lt!799216) lt!799167)))))

(declare-fun b!2146771 () Bool)

(declare-fun Unit!37736 () Unit!37731)

(assert (=> b!2146771 (= e!1372197 Unit!37736)))

(declare-fun bm!128870 () Bool)

(declare-fun call!128874 () (_ BitVec 64))

(declare-fun c!340839 () Bool)

(declare-fun apply!5988 (ListLongMap!237 (_ BitVec 64)) List!24583)

(assert (=> bm!128870 (= call!128875 (apply!5988 (ite c!340839 lt!799217 call!128871) call!128874))))

(declare-fun bm!128871 () Bool)

(declare-fun hash!542 (Hashable!2748 tuple3!3550) (_ BitVec 64))

(assert (=> bm!128871 (= call!128874 (hash!542 (hashF!4671 (cache!3129 thiss!29173)) lt!799167))))

(declare-fun b!2146772 () Bool)

(assert (=> b!2146772 (= e!1372199 call!128876)))

(declare-fun b!2146773 () Bool)

(declare-fun Unit!37737 () Unit!37731)

(assert (=> b!2146773 (= e!1372202 Unit!37737)))

(declare-fun b!2146774 () Bool)

(assert (=> b!2146774 (= e!1372203 e!1372200)))

(declare-fun res!926179 () Bool)

(assert (=> b!2146774 (= res!926179 call!128873)))

(assert (=> b!2146774 (=> (not res!926179) (not e!1372201))))

(declare-fun c!340837 () Bool)

(assert (=> b!2146774 (= c!340837 e!1372201)))

(declare-fun bm!128867 () Bool)

(declare-fun contains!4162 (ListLongMap!237 (_ BitVec 64)) Bool)

(assert (=> bm!128867 (= call!128873 (contains!4162 (ite c!340839 lt!799217 call!128871) call!128874))))

(declare-fun d!645292 () Bool)

(declare-fun lt!799220 () Bool)

(assert (=> d!645292 (= lt!799220 (contains!4160 (map!4918 (cache!3129 thiss!29173)) lt!799167))))

(assert (=> d!645292 (= lt!799220 e!1372198)))

(declare-fun res!926180 () Bool)

(assert (=> d!645292 (=> (not res!926180) (not e!1372198))))

(declare-fun contains!4163 (MutLongMap!2834 (_ BitVec 64)) Bool)

(assert (=> d!645292 (= res!926180 (contains!4163 (v!29091 (underlying!5864 (cache!3129 thiss!29173))) lt!799216))))

(declare-fun lt!799213 () Unit!37731)

(assert (=> d!645292 (= lt!799213 e!1372203)))

(assert (=> d!645292 (= c!340839 (contains!4160 (extractMap!70 (toList!1086 (map!4917 (v!29091 (underlying!5864 (cache!3129 thiss!29173)))))) lt!799167))))

(declare-fun lt!799218 () Unit!37731)

(assert (=> d!645292 (= lt!799218 e!1372197)))

(declare-fun c!340838 () Bool)

(assert (=> d!645292 (= c!340838 (contains!4163 (v!29091 (underlying!5864 (cache!3129 thiss!29173))) lt!799216))))

(assert (=> d!645292 (= lt!799216 (hash!542 (hashF!4671 (cache!3129 thiss!29173)) lt!799167))))

(assert (=> d!645292 (valid!2206 (cache!3129 thiss!29173))))

(assert (=> d!645292 (= (contains!4159 (cache!3129 thiss!29173) lt!799167) lt!799220)))

(assert (= (and d!645292 c!340838) b!2146766))

(assert (= (and d!645292 (not c!340838)) b!2146771))

(assert (= (and b!2146766 c!340836) b!2146769))

(assert (= (and b!2146766 (not c!340836)) b!2146773))

(assert (= (and d!645292 c!340839) b!2146767))

(assert (= (and d!645292 (not c!340839)) b!2146774))

(assert (= (and b!2146767 res!926181) b!2146772))

(assert (= (and b!2146774 res!926179) b!2146764))

(assert (= (and b!2146774 c!340837) b!2146765))

(assert (= (and b!2146774 (not c!340837)) b!2146768))

(assert (= (or b!2146767 b!2146774 b!2146764 b!2146765) bm!128866))

(assert (= (or b!2146767 b!2146772 b!2146774 b!2146764) bm!128871))

(assert (= (or b!2146772 b!2146764) bm!128870))

(assert (= (or b!2146767 b!2146774) bm!128867))

(assert (= (or b!2146772 b!2146764) bm!128868))

(assert (= (or b!2146772 b!2146764) bm!128869))

(assert (= (and d!645292 res!926180) b!2146770))

(declare-fun m!2590287 () Bool)

(assert (=> bm!128870 m!2590287))

(declare-fun m!2590289 () Bool)

(assert (=> b!2146767 m!2590289))

(declare-fun m!2590291 () Bool)

(assert (=> bm!128871 m!2590291))

(declare-fun m!2590293 () Bool)

(assert (=> bm!128868 m!2590293))

(declare-fun m!2590295 () Bool)

(assert (=> d!645292 m!2590295))

(declare-fun m!2590297 () Bool)

(assert (=> d!645292 m!2590297))

(assert (=> d!645292 m!2590272))

(assert (=> d!645292 m!2590258))

(assert (=> d!645292 m!2590279))

(declare-fun m!2590299 () Bool)

(assert (=> d!645292 m!2590299))

(assert (=> d!645292 m!2590279))

(assert (=> d!645292 m!2590297))

(declare-fun m!2590301 () Bool)

(assert (=> d!645292 m!2590301))

(assert (=> d!645292 m!2590291))

(declare-fun m!2590303 () Bool)

(assert (=> b!2146770 m!2590303))

(assert (=> b!2146770 m!2590303))

(declare-fun m!2590305 () Bool)

(assert (=> b!2146770 m!2590305))

(assert (=> b!2146770 m!2590305))

(declare-fun m!2590307 () Bool)

(assert (=> b!2146770 m!2590307))

(assert (=> b!2146766 m!2590272))

(assert (=> b!2146766 m!2590303))

(declare-fun m!2590309 () Bool)

(assert (=> b!2146766 m!2590309))

(declare-fun m!2590311 () Bool)

(assert (=> b!2146766 m!2590311))

(declare-fun m!2590313 () Bool)

(assert (=> bm!128867 m!2590313))

(declare-fun m!2590315 () Bool)

(assert (=> b!2146765 m!2590315))

(assert (=> b!2146765 m!2590315))

(declare-fun m!2590317 () Bool)

(assert (=> b!2146765 m!2590317))

(declare-fun m!2590319 () Bool)

(assert (=> b!2146765 m!2590319))

(declare-fun m!2590321 () Bool)

(assert (=> bm!128869 m!2590321))

(declare-fun m!2590323 () Bool)

(assert (=> b!2146769 m!2590323))

(declare-fun m!2590325 () Bool)

(assert (=> b!2146769 m!2590325))

(declare-fun m!2590327 () Bool)

(assert (=> b!2146769 m!2590327))

(declare-fun m!2590329 () Bool)

(assert (=> b!2146769 m!2590329))

(declare-fun m!2590331 () Bool)

(assert (=> b!2146769 m!2590331))

(assert (=> b!2146769 m!2590303))

(declare-fun m!2590333 () Bool)

(assert (=> b!2146769 m!2590333))

(assert (=> b!2146769 m!2590323))

(declare-fun m!2590335 () Bool)

(assert (=> b!2146769 m!2590335))

(assert (=> b!2146769 m!2590272))

(assert (=> bm!128866 m!2590272))

(assert (=> b!2146722 d!645292))

(declare-fun d!645294 () Bool)

(declare-fun e!1372208 () Bool)

(assert (=> d!645294 e!1372208))

(declare-fun res!926188 () Bool)

(assert (=> d!645294 (=> res!926188 e!1372208)))

(assert (=> d!645294 (= res!926188 (not (contains!4159 (cache!3129 thiss!29173) (tuple3!3551 z!526 from!960 lastNullablePos!99))))))

(declare-fun lt!799233 () Unit!37731)

(declare-fun choose!12698 (CacheFurthestNullable!854 (InoxSet Context!2758) Int Int BalanceConc!15652) Unit!37731)

(assert (=> d!645294 (= lt!799233 (choose!12698 thiss!29173 z!526 from!960 lastNullablePos!99 (totalInput!3185 thiss!29173)))))

(assert (=> d!645294 (= (totalInput!3185 thiss!29173) (totalInput!3185 thiss!29173))))

(assert (=> d!645294 (= (lemmaIfInCacheThenValid!8 thiss!29173 z!526 from!960 lastNullablePos!99 (totalInput!3185 thiss!29173)) lt!799233)))

(declare-fun b!2146781 () Bool)

(declare-fun e!1372209 () Bool)

(assert (=> b!2146781 (= e!1372208 e!1372209)))

(declare-fun res!926189 () Bool)

(assert (=> b!2146781 (=> (not res!926189) (not e!1372209))))

(assert (=> b!2146781 (= res!926189 (>= from!960 0))))

(declare-fun b!2146782 () Bool)

(declare-fun res!926190 () Bool)

(assert (=> b!2146782 (=> (not res!926190) (not e!1372209))))

(assert (=> b!2146782 (= res!926190 (<= from!960 (size!19180 (totalInput!3185 thiss!29173))))))

(declare-fun b!2146783 () Bool)

(assert (=> b!2146783 (= e!1372209 (= (furthestNullablePosition!95 z!526 from!960 (totalInput!3185 thiss!29173) (size!19180 (totalInput!3185 thiss!29173)) lastNullablePos!99) (apply!5986 (cache!3129 thiss!29173) (tuple3!3551 z!526 from!960 lastNullablePos!99))))))

(assert (= (and d!645294 (not res!926188)) b!2146781))

(assert (= (and b!2146781 res!926189) b!2146782))

(assert (= (and b!2146782 res!926190) b!2146783))

(declare-fun m!2590337 () Bool)

(assert (=> d!645294 m!2590337))

(declare-fun m!2590339 () Bool)

(assert (=> d!645294 m!2590339))

(assert (=> b!2146782 m!2590250))

(assert (=> b!2146783 m!2590250))

(assert (=> b!2146783 m!2590250))

(declare-fun m!2590341 () Bool)

(assert (=> b!2146783 m!2590341))

(declare-fun m!2590343 () Bool)

(assert (=> b!2146783 m!2590343))

(assert (=> b!2146721 d!645294))

(declare-fun d!645296 () Bool)

(assert (=> d!645296 (= (array_inv!3050 (_keys!3131 (v!29090 (underlying!5863 (v!29091 (underlying!5864 (cache!3129 thiss!29173))))))) (bvsge (size!19178 (_keys!3131 (v!29090 (underlying!5863 (v!29091 (underlying!5864 (cache!3129 thiss!29173))))))) #b00000000000000000000000000000000))))

(assert (=> b!2146719 d!645296))

(declare-fun d!645298 () Bool)

(assert (=> d!645298 (= (array_inv!3051 (_values!3114 (v!29090 (underlying!5863 (v!29091 (underlying!5864 (cache!3129 thiss!29173))))))) (bvsge (size!19179 (_values!3114 (v!29090 (underlying!5863 (v!29091 (underlying!5864 (cache!3129 thiss!29173))))))) #b00000000000000000000000000000000))))

(assert (=> b!2146719 d!645298))

(declare-fun d!645300 () Bool)

(declare-fun lambda!80631 () Int)

(declare-fun forall!5002 (List!24582 Int) Bool)

(assert (=> d!645300 (= (inv!32227 setElem!16831) (forall!5002 (exprs!1879 setElem!16831) lambda!80631))))

(declare-fun bs!445453 () Bool)

(assert (= bs!445453 d!645300))

(declare-fun m!2590345 () Bool)

(assert (=> bs!445453 m!2590345))

(assert (=> setNonEmpty!16831 d!645300))

(declare-fun d!645302 () Bool)

(declare-fun lt!799239 () Int)

(assert (=> d!645302 (and (>= lt!799239 (- 1)) (< lt!799239 lt!799168) (>= lt!799239 lastNullablePos!99) (or (= lt!799239 lastNullablePos!99) (>= lt!799239 from!960)))))

(declare-fun e!1372216 () Int)

(assert (=> d!645302 (= lt!799239 e!1372216)))

(declare-fun c!340844 () Bool)

(declare-fun e!1372218 () Bool)

(assert (=> d!645302 (= c!340844 e!1372218)))

(declare-fun res!926193 () Bool)

(assert (=> d!645302 (=> res!926193 e!1372218)))

(assert (=> d!645302 (= res!926193 (= from!960 lt!799168))))

(assert (=> d!645302 (and (>= from!960 0) (<= from!960 lt!799168))))

(assert (=> d!645302 (= (furthestNullablePosition!95 z!526 from!960 (totalInput!3185 thiss!29173) lt!799168 lastNullablePos!99) lt!799239)))

(declare-fun b!2146794 () Bool)

(declare-fun lostCauseZipper!134 ((InoxSet Context!2758)) Bool)

(assert (=> b!2146794 (= e!1372218 (lostCauseZipper!134 z!526))))

(declare-fun b!2146795 () Bool)

(declare-fun e!1372217 () Int)

(assert (=> b!2146795 (= e!1372217 from!960)))

(declare-fun b!2146796 () Bool)

(assert (=> b!2146796 (= e!1372216 lastNullablePos!99)))

(declare-fun b!2146797 () Bool)

(assert (=> b!2146797 (= e!1372217 lastNullablePos!99)))

(declare-fun lt!799238 () (InoxSet Context!2758))

(declare-fun b!2146798 () Bool)

(assert (=> b!2146798 (= e!1372216 (furthestNullablePosition!95 lt!799238 (+ from!960 1) (totalInput!3185 thiss!29173) lt!799168 e!1372217))))

(declare-fun derivationStepZipper!101 ((InoxSet Context!2758) C!11764) (InoxSet Context!2758))

(declare-fun apply!5989 (BalanceConc!15652 Int) C!11764)

(assert (=> b!2146798 (= lt!799238 (derivationStepZipper!101 z!526 (apply!5989 (totalInput!3185 thiss!29173) from!960)))))

(declare-fun c!340845 () Bool)

(assert (=> b!2146798 (= c!340845 (nullableZipper!159 lt!799238))))

(assert (= (and d!645302 (not res!926193)) b!2146794))

(assert (= (and d!645302 c!340844) b!2146796))

(assert (= (and d!645302 (not c!340844)) b!2146798))

(assert (= (and b!2146798 c!340845) b!2146795))

(assert (= (and b!2146798 (not c!340845)) b!2146797))

(declare-fun m!2590347 () Bool)

(assert (=> b!2146794 m!2590347))

(declare-fun m!2590349 () Bool)

(assert (=> b!2146798 m!2590349))

(declare-fun m!2590351 () Bool)

(assert (=> b!2146798 m!2590351))

(assert (=> b!2146798 m!2590351))

(declare-fun m!2590353 () Bool)

(assert (=> b!2146798 m!2590353))

(declare-fun m!2590355 () Bool)

(assert (=> b!2146798 m!2590355))

(assert (=> b!2146717 d!645302))

(declare-fun bs!445454 () Bool)

(declare-fun b!2146813 () Bool)

(assert (= bs!445454 (and b!2146813 b!2146732)))

(declare-fun lambda!80638 () Int)

(assert (=> bs!445454 (= lambda!80638 lambda!80619)))

(declare-fun bs!445455 () Bool)

(assert (= bs!445455 (and b!2146813 b!2146766)))

(assert (=> bs!445455 (= lambda!80638 lambda!80628)))

(declare-fun e!1372226 () Bool)

(declare-fun lt!799309 () Int)

(declare-fun b!2146811 () Bool)

(declare-fun dynLambda!11383 (Int tuple3!3550) Int)

(assert (=> b!2146811 (= e!1372226 (= lt!799309 (dynLambda!11383 (defaultValue!2910 (cache!3129 thiss!29173)) lt!799167)))))

(declare-fun b!2146812 () Bool)

(declare-fun e!1372227 () Unit!37731)

(declare-fun Unit!37738 () Unit!37731)

(assert (=> b!2146812 (= e!1372227 Unit!37738)))

(declare-fun lt!799326 () (_ BitVec 64))

(declare-fun e!1372225 () Int)

(declare-fun get!7472 (Option!4959) tuple2!24368)

(assert (=> b!2146813 (= e!1372225 (_2!14430 (get!7472 (getPair!7 (apply!5987 (v!29091 (underlying!5864 (cache!3129 thiss!29173))) lt!799326) lt!799167))))))

(assert (=> b!2146813 (= lt!799326 (hash!542 (hashF!4671 (cache!3129 thiss!29173)) lt!799167))))

(declare-fun c!340852 () Bool)

(assert (=> b!2146813 (= c!340852 (not (contains!4161 (toList!1086 (map!4917 (v!29091 (underlying!5864 (cache!3129 thiss!29173))))) (tuple2!24371 lt!799326 (apply!5987 (v!29091 (underlying!5864 (cache!3129 thiss!29173))) lt!799326)))))))

(declare-fun lt!799310 () Unit!37731)

(assert (=> b!2146813 (= lt!799310 e!1372227)))

(declare-fun lt!799320 () Unit!37731)

(assert (=> b!2146813 (= lt!799320 (forallContained!754 (toList!1086 (map!4917 (v!29091 (underlying!5864 (cache!3129 thiss!29173))))) lambda!80638 (tuple2!24371 lt!799326 (apply!5987 (v!29091 (underlying!5864 (cache!3129 thiss!29173))) lt!799326))))))

(declare-fun lt!799304 () ListLongMap!237)

(assert (=> b!2146813 (= lt!799304 (map!4917 (v!29091 (underlying!5864 (cache!3129 thiss!29173)))))))

(declare-fun lt!799314 () Unit!37731)

(declare-fun lemmaGetPairGetSameValueAsMap!2 (ListLongMap!237 tuple3!3550 Int Hashable!2748) Unit!37731)

(assert (=> b!2146813 (= lt!799314 (lemmaGetPairGetSameValueAsMap!2 lt!799304 lt!799167 (_2!14430 (get!7472 (getPair!7 (apply!5987 (v!29091 (underlying!5864 (cache!3129 thiss!29173))) lt!799326) lt!799167))) (hashF!4671 (cache!3129 thiss!29173))))))

(declare-fun lt!799306 () Unit!37731)

(declare-fun lemmaInGenMapThenLongMapContainsHash!2 (ListLongMap!237 tuple3!3550 Hashable!2748) Unit!37731)

(assert (=> b!2146813 (= lt!799306 (lemmaInGenMapThenLongMapContainsHash!2 lt!799304 lt!799167 (hashF!4671 (cache!3129 thiss!29173))))))

(assert (=> b!2146813 (contains!4162 lt!799304 (hash!542 (hashF!4671 (cache!3129 thiss!29173)) lt!799167))))

(declare-fun lt!799315 () Unit!37731)

(assert (=> b!2146813 (= lt!799315 lt!799306)))

(declare-fun lt!799322 () (_ BitVec 64))

(assert (=> b!2146813 (= lt!799322 (hash!542 (hashF!4671 (cache!3129 thiss!29173)) lt!799167))))

(declare-fun lt!799327 () List!24583)

(assert (=> b!2146813 (= lt!799327 (apply!5988 lt!799304 (hash!542 (hashF!4671 (cache!3129 thiss!29173)) lt!799167)))))

(declare-fun lt!799318 () Unit!37731)

(declare-fun lemmaGetValueImpliesTupleContained!3 (ListLongMap!237 (_ BitVec 64) List!24583) Unit!37731)

(assert (=> b!2146813 (= lt!799318 (lemmaGetValueImpliesTupleContained!3 lt!799304 lt!799322 lt!799327))))

(assert (=> b!2146813 (contains!4161 (toList!1086 lt!799304) (tuple2!24371 lt!799322 lt!799327))))

(declare-fun lt!799307 () Unit!37731)

(assert (=> b!2146813 (= lt!799307 lt!799318)))

(declare-fun lt!799313 () Unit!37731)

(assert (=> b!2146813 (= lt!799313 (forallContained!754 (toList!1086 lt!799304) lambda!80638 (tuple2!24371 (hash!542 (hashF!4671 (cache!3129 thiss!29173)) lt!799167) (apply!5988 lt!799304 (hash!542 (hashF!4671 (cache!3129 thiss!29173)) lt!799167)))))))

(declare-fun lt!799319 () Unit!37731)

(declare-fun lemmaInGenMapThenGetPairDefined!2 (ListLongMap!237 tuple3!3550 Hashable!2748) Unit!37731)

(assert (=> b!2146813 (= lt!799319 (lemmaInGenMapThenGetPairDefined!2 lt!799304 lt!799167 (hashF!4671 (cache!3129 thiss!29173))))))

(declare-fun lt!799324 () Unit!37731)

(assert (=> b!2146813 (= lt!799324 (lemmaInGenMapThenLongMapContainsHash!2 lt!799304 lt!799167 (hashF!4671 (cache!3129 thiss!29173))))))

(declare-fun lt!799308 () Unit!37731)

(assert (=> b!2146813 (= lt!799308 lt!799324)))

(declare-fun lt!799328 () (_ BitVec 64))

(assert (=> b!2146813 (= lt!799328 (hash!542 (hashF!4671 (cache!3129 thiss!29173)) lt!799167))))

(declare-fun lt!799305 () List!24583)

(assert (=> b!2146813 (= lt!799305 (apply!5988 lt!799304 (hash!542 (hashF!4671 (cache!3129 thiss!29173)) lt!799167)))))

(declare-fun lt!799303 () Unit!37731)

(assert (=> b!2146813 (= lt!799303 (lemmaGetValueImpliesTupleContained!3 lt!799304 lt!799328 lt!799305))))

(assert (=> b!2146813 (contains!4161 (toList!1086 lt!799304) (tuple2!24371 lt!799328 lt!799305))))

(declare-fun lt!799325 () Unit!37731)

(assert (=> b!2146813 (= lt!799325 lt!799303)))

(declare-fun lt!799317 () Unit!37731)

(assert (=> b!2146813 (= lt!799317 (forallContained!754 (toList!1086 lt!799304) lambda!80638 (tuple2!24371 (hash!542 (hashF!4671 (cache!3129 thiss!29173)) lt!799167) (apply!5988 lt!799304 (hash!542 (hashF!4671 (cache!3129 thiss!29173)) lt!799167)))))))

(assert (=> b!2146813 (isDefined!4080 (getPair!7 (apply!5988 lt!799304 (hash!542 (hashF!4671 (cache!3129 thiss!29173)) lt!799167)) lt!799167))))

(declare-fun lt!799321 () Unit!37731)

(assert (=> b!2146813 (= lt!799321 lt!799319)))

(declare-datatypes ((Option!4960 0))(
  ( (None!4959) (Some!4959 (v!29094 Int)) )
))
(declare-fun get!7473 (Option!4960) Int)

(declare-fun getValueByKey!36 (List!24583 tuple3!3550) Option!4960)

(assert (=> b!2146813 (= (_2!14430 (get!7472 (getPair!7 (apply!5988 lt!799304 (hash!542 (hashF!4671 (cache!3129 thiss!29173)) lt!799167)) lt!799167))) (get!7473 (getValueByKey!36 (toList!1087 (extractMap!70 (toList!1086 lt!799304))) lt!799167)))))

(declare-fun lt!799316 () Unit!37731)

(assert (=> b!2146813 (= lt!799316 lt!799314)))

(declare-fun b!2146814 () Bool)

(assert (=> b!2146814 false))

(declare-fun lt!799311 () Unit!37731)

(declare-fun lt!799300 () Unit!37731)

(assert (=> b!2146814 (= lt!799311 lt!799300)))

(declare-fun lt!799323 () List!24585)

(declare-fun lt!799329 () List!24583)

(assert (=> b!2146814 (contains!4161 lt!799323 (tuple2!24371 lt!799326 lt!799329))))

(assert (=> b!2146814 (= lt!799300 (lemmaGetValueByKeyImpliesContainsTuple!8 lt!799323 lt!799326 lt!799329))))

(assert (=> b!2146814 (= lt!799329 (apply!5987 (v!29091 (underlying!5864 (cache!3129 thiss!29173))) lt!799326))))

(assert (=> b!2146814 (= lt!799323 (toList!1086 (map!4917 (v!29091 (underlying!5864 (cache!3129 thiss!29173))))))))

(declare-fun lt!799301 () Unit!37731)

(declare-fun lt!799302 () Unit!37731)

(assert (=> b!2146814 (= lt!799301 lt!799302)))

(declare-fun lt!799312 () List!24585)

(assert (=> b!2146814 (isDefined!4079 (getValueByKey!35 lt!799312 lt!799326))))

(assert (=> b!2146814 (= lt!799302 (lemmaContainsKeyImpliesGetValueByKeyDefined!24 lt!799312 lt!799326))))

(assert (=> b!2146814 (= lt!799312 (toList!1086 (map!4917 (v!29091 (underlying!5864 (cache!3129 thiss!29173))))))))

(declare-fun Unit!37739 () Unit!37731)

(assert (=> b!2146814 (= e!1372227 Unit!37739)))

(declare-fun d!645304 () Bool)

(assert (=> d!645304 e!1372226))

(declare-fun c!340853 () Bool)

(assert (=> d!645304 (= c!340853 (contains!4159 (cache!3129 thiss!29173) lt!799167))))

(assert (=> d!645304 (= lt!799309 e!1372225)))

(declare-fun c!340854 () Bool)

(assert (=> d!645304 (= c!340854 (not (contains!4159 (cache!3129 thiss!29173) lt!799167)))))

(assert (=> d!645304 (valid!2206 (cache!3129 thiss!29173))))

(assert (=> d!645304 (= (apply!5986 (cache!3129 thiss!29173) lt!799167) lt!799309)))

(declare-fun b!2146815 () Bool)

(assert (=> b!2146815 (= e!1372225 (dynLambda!11383 (defaultValue!2910 (cache!3129 thiss!29173)) lt!799167))))

(declare-fun b!2146816 () Bool)

(assert (=> b!2146816 (= e!1372226 (= lt!799309 (get!7473 (getValueByKey!36 (toList!1087 (map!4918 (cache!3129 thiss!29173))) lt!799167))))))

(assert (= (and d!645304 c!340854) b!2146815))

(assert (= (and d!645304 (not c!340854)) b!2146813))

(assert (= (and b!2146813 c!340852) b!2146814))

(assert (= (and b!2146813 (not c!340852)) b!2146812))

(assert (= (and d!645304 c!340853) b!2146816))

(assert (= (and d!645304 (not c!340853)) b!2146811))

(declare-fun b_lambda!70745 () Bool)

(assert (=> (not b_lambda!70745) (not b!2146811)))

(declare-fun t!197118 () Bool)

(declare-fun tb!132285 () Bool)

(assert (=> (and b!2146711 (= (defaultValue!2910 (cache!3129 thiss!29173)) (defaultValue!2910 (cache!3129 thiss!29173))) t!197118) tb!132285))

(declare-fun result!159178 () Bool)

(assert (=> tb!132285 (= result!159178 true)))

(assert (=> b!2146811 t!197118))

(declare-fun b_and!172913 () Bool)

(assert (= b_and!172911 (and (=> t!197118 result!159178) b_and!172913)))

(declare-fun b_lambda!70747 () Bool)

(assert (=> (not b_lambda!70747) (not b!2146815)))

(assert (=> b!2146815 t!197118))

(declare-fun b_and!172915 () Bool)

(assert (= b_and!172913 (and (=> t!197118 result!159178) b_and!172915)))

(declare-fun m!2590357 () Bool)

(assert (=> b!2146813 m!2590357))

(declare-fun m!2590359 () Bool)

(assert (=> b!2146813 m!2590359))

(declare-fun m!2590361 () Bool)

(assert (=> b!2146813 m!2590361))

(declare-fun m!2590363 () Bool)

(assert (=> b!2146813 m!2590363))

(declare-fun m!2590365 () Bool)

(assert (=> b!2146813 m!2590365))

(assert (=> b!2146813 m!2590291))

(declare-fun m!2590367 () Bool)

(assert (=> b!2146813 m!2590367))

(declare-fun m!2590369 () Bool)

(assert (=> b!2146813 m!2590369))

(assert (=> b!2146813 m!2590359))

(declare-fun m!2590371 () Bool)

(assert (=> b!2146813 m!2590371))

(assert (=> b!2146813 m!2590291))

(assert (=> b!2146813 m!2590272))

(declare-fun m!2590373 () Bool)

(assert (=> b!2146813 m!2590373))

(assert (=> b!2146813 m!2590291))

(declare-fun m!2590375 () Bool)

(assert (=> b!2146813 m!2590375))

(declare-fun m!2590377 () Bool)

(assert (=> b!2146813 m!2590377))

(declare-fun m!2590379 () Bool)

(assert (=> b!2146813 m!2590379))

(declare-fun m!2590381 () Bool)

(assert (=> b!2146813 m!2590381))

(declare-fun m!2590383 () Bool)

(assert (=> b!2146813 m!2590383))

(assert (=> b!2146813 m!2590373))

(assert (=> b!2146813 m!2590363))

(declare-fun m!2590385 () Bool)

(assert (=> b!2146813 m!2590385))

(declare-fun m!2590387 () Bool)

(assert (=> b!2146813 m!2590387))

(declare-fun m!2590389 () Bool)

(assert (=> b!2146813 m!2590389))

(assert (=> b!2146813 m!2590367))

(assert (=> b!2146813 m!2590359))

(assert (=> b!2146813 m!2590389))

(declare-fun m!2590391 () Bool)

(assert (=> b!2146813 m!2590391))

(declare-fun m!2590393 () Bool)

(assert (=> b!2146813 m!2590393))

(assert (=> b!2146813 m!2590387))

(declare-fun m!2590395 () Bool)

(assert (=> b!2146813 m!2590395))

(declare-fun m!2590397 () Bool)

(assert (=> b!2146813 m!2590397))

(declare-fun m!2590399 () Bool)

(assert (=> b!2146815 m!2590399))

(assert (=> b!2146816 m!2590279))

(declare-fun m!2590401 () Bool)

(assert (=> b!2146816 m!2590401))

(assert (=> b!2146816 m!2590401))

(declare-fun m!2590403 () Bool)

(assert (=> b!2146816 m!2590403))

(assert (=> b!2146811 m!2590399))

(declare-fun m!2590405 () Bool)

(assert (=> b!2146814 m!2590405))

(declare-fun m!2590407 () Bool)

(assert (=> b!2146814 m!2590407))

(assert (=> b!2146814 m!2590272))

(assert (=> b!2146814 m!2590373))

(declare-fun m!2590409 () Bool)

(assert (=> b!2146814 m!2590409))

(assert (=> b!2146814 m!2590405))

(declare-fun m!2590411 () Bool)

(assert (=> b!2146814 m!2590411))

(declare-fun m!2590413 () Bool)

(assert (=> b!2146814 m!2590413))

(assert (=> d!645304 m!2590248))

(assert (=> d!645304 m!2590258))

(assert (=> b!2146717 d!645304))

(declare-fun d!645306 () Bool)

(declare-fun isBalanced!2466 (Conc!7945) Bool)

(assert (=> d!645306 (= (inv!32225 (totalInput!3185 thiss!29173)) (isBalanced!2466 (c!340825 (totalInput!3185 thiss!29173))))))

(declare-fun bs!445456 () Bool)

(assert (= bs!445456 d!645306))

(declare-fun m!2590415 () Bool)

(assert (=> bs!445456 m!2590415))

(assert (=> b!2146716 d!645306))

(declare-fun d!645308 () Bool)

(declare-fun res!926196 () Bool)

(declare-fun e!1372230 () Bool)

(assert (=> d!645308 (=> (not res!926196) (not e!1372230))))

(assert (=> d!645308 (= res!926196 ((_ is HashMap!2748) (cache!3129 thiss!29173)))))

(assert (=> d!645308 (= (inv!32226 thiss!29173) e!1372230)))

(declare-fun b!2146819 () Bool)

(assert (=> b!2146819 (= e!1372230 (validCacheMapFurthestNullable!114 (cache!3129 thiss!29173) (totalInput!3185 thiss!29173)))))

(assert (= (and d!645308 res!926196) b!2146819))

(assert (=> b!2146819 m!2590264))

(assert (=> start!208214 d!645308))

(declare-fun d!645310 () Bool)

(declare-fun lt!799332 () Int)

(declare-fun size!19181 (List!24584) Int)

(declare-fun list!9556 (BalanceConc!15652) List!24584)

(assert (=> d!645310 (= lt!799332 (size!19181 (list!9556 (totalInput!3185 thiss!29173))))))

(declare-fun size!19182 (Conc!7945) Int)

(assert (=> d!645310 (= lt!799332 (size!19182 (c!340825 (totalInput!3185 thiss!29173))))))

(assert (=> d!645310 (= (size!19180 (totalInput!3185 thiss!29173)) lt!799332)))

(declare-fun bs!445457 () Bool)

(assert (= bs!445457 d!645310))

(declare-fun m!2590417 () Bool)

(assert (=> bs!445457 m!2590417))

(assert (=> bs!445457 m!2590417))

(declare-fun m!2590419 () Bool)

(assert (=> bs!445457 m!2590419))

(declare-fun m!2590421 () Bool)

(assert (=> bs!445457 m!2590421))

(assert (=> b!2146715 d!645310))

(declare-fun d!645312 () Bool)

(declare-fun c!340857 () Bool)

(assert (=> d!645312 (= c!340857 ((_ is Node!7945) (c!340825 (totalInput!3185 thiss!29173))))))

(declare-fun e!1372235 () Bool)

(assert (=> d!645312 (= (inv!32224 (c!340825 (totalInput!3185 thiss!29173))) e!1372235)))

(declare-fun b!2146826 () Bool)

(declare-fun inv!32228 (Conc!7945) Bool)

(assert (=> b!2146826 (= e!1372235 (inv!32228 (c!340825 (totalInput!3185 thiss!29173))))))

(declare-fun b!2146827 () Bool)

(declare-fun e!1372236 () Bool)

(assert (=> b!2146827 (= e!1372235 e!1372236)))

(declare-fun res!926199 () Bool)

(assert (=> b!2146827 (= res!926199 (not ((_ is Leaf!11617) (c!340825 (totalInput!3185 thiss!29173)))))))

(assert (=> b!2146827 (=> res!926199 e!1372236)))

(declare-fun b!2146828 () Bool)

(declare-fun inv!32229 (Conc!7945) Bool)

(assert (=> b!2146828 (= e!1372236 (inv!32229 (c!340825 (totalInput!3185 thiss!29173))))))

(assert (= (and d!645312 c!340857) b!2146826))

(assert (= (and d!645312 (not c!340857)) b!2146827))

(assert (= (and b!2146827 (not res!926199)) b!2146828))

(declare-fun m!2590423 () Bool)

(assert (=> b!2146826 m!2590423))

(declare-fun m!2590425 () Bool)

(assert (=> b!2146828 m!2590425))

(assert (=> b!2146714 d!645312))

(declare-fun condSetEmpty!16834 () Bool)

(assert (=> setNonEmpty!16831 (= condSetEmpty!16834 (= setRest!16831 ((as const (Array Context!2758 Bool)) false)))))

(declare-fun setRes!16834 () Bool)

(assert (=> setNonEmpty!16831 (= tp!665828 setRes!16834)))

(declare-fun setIsEmpty!16834 () Bool)

(assert (=> setIsEmpty!16834 setRes!16834))

(declare-fun tp!665837 () Bool)

(declare-fun e!1372239 () Bool)

(declare-fun setElem!16834 () Context!2758)

(declare-fun setNonEmpty!16834 () Bool)

(assert (=> setNonEmpty!16834 (= setRes!16834 (and tp!665837 (inv!32227 setElem!16834) e!1372239))))

(declare-fun setRest!16834 () (InoxSet Context!2758))

(assert (=> setNonEmpty!16834 (= setRest!16831 ((_ map or) (store ((as const (Array Context!2758 Bool)) false) setElem!16834 true) setRest!16834))))

(declare-fun b!2146833 () Bool)

(declare-fun tp!665836 () Bool)

(assert (=> b!2146833 (= e!1372239 tp!665836)))

(assert (= (and setNonEmpty!16831 condSetEmpty!16834) setIsEmpty!16834))

(assert (= (and setNonEmpty!16831 (not condSetEmpty!16834)) setNonEmpty!16834))

(assert (= setNonEmpty!16834 b!2146833))

(declare-fun m!2590427 () Bool)

(assert (=> setNonEmpty!16834 m!2590427))

(declare-fun setIsEmpty!16837 () Bool)

(declare-fun setRes!16837 () Bool)

(assert (=> setIsEmpty!16837 setRes!16837))

(declare-fun b!2146840 () Bool)

(declare-fun e!1372244 () Bool)

(declare-fun tp!665844 () Bool)

(assert (=> b!2146840 (= e!1372244 (and setRes!16837 tp!665844))))

(declare-fun condSetEmpty!16837 () Bool)

(assert (=> b!2146840 (= condSetEmpty!16837 (= (_1!14429 (_1!14430 (h!29900 mapDefault!13466))) ((as const (Array Context!2758 Bool)) false)))))

(declare-fun setNonEmpty!16837 () Bool)

(declare-fun setElem!16837 () Context!2758)

(declare-fun tp!665845 () Bool)

(declare-fun e!1372245 () Bool)

(assert (=> setNonEmpty!16837 (= setRes!16837 (and tp!665845 (inv!32227 setElem!16837) e!1372245))))

(declare-fun setRest!16837 () (InoxSet Context!2758))

(assert (=> setNonEmpty!16837 (= (_1!14429 (_1!14430 (h!29900 mapDefault!13466))) ((_ map or) (store ((as const (Array Context!2758 Bool)) false) setElem!16837 true) setRest!16837))))

(declare-fun b!2146841 () Bool)

(declare-fun tp!665846 () Bool)

(assert (=> b!2146841 (= e!1372245 tp!665846)))

(assert (=> b!2146712 (= tp!665830 e!1372244)))

(assert (= (and b!2146840 condSetEmpty!16837) setIsEmpty!16837))

(assert (= (and b!2146840 (not condSetEmpty!16837)) setNonEmpty!16837))

(assert (= setNonEmpty!16837 b!2146841))

(assert (= (and b!2146712 ((_ is Cons!24499) mapDefault!13466)) b!2146840))

(declare-fun m!2590429 () Bool)

(assert (=> setNonEmpty!16837 m!2590429))

(declare-fun b!2146846 () Bool)

(declare-fun e!1372248 () Bool)

(declare-fun tp!665851 () Bool)

(declare-fun tp!665852 () Bool)

(assert (=> b!2146846 (= e!1372248 (and tp!665851 tp!665852))))

(assert (=> b!2146720 (= tp!665831 e!1372248)))

(assert (= (and b!2146720 ((_ is Cons!24498) (exprs!1879 setElem!16831))) b!2146846))

(declare-fun b!2146857 () Bool)

(declare-fun e!1372260 () Bool)

(declare-fun setRes!16843 () Bool)

(declare-fun tp!665871 () Bool)

(assert (=> b!2146857 (= e!1372260 (and setRes!16843 tp!665871))))

(declare-fun condSetEmpty!16843 () Bool)

(declare-fun mapValue!13469 () List!24583)

(assert (=> b!2146857 (= condSetEmpty!16843 (= (_1!14429 (_1!14430 (h!29900 mapValue!13469))) ((as const (Array Context!2758 Bool)) false)))))

(declare-fun setNonEmpty!16842 () Bool)

(declare-fun setElem!16843 () Context!2758)

(declare-fun e!1372258 () Bool)

(declare-fun tp!665868 () Bool)

(assert (=> setNonEmpty!16842 (= setRes!16843 (and tp!665868 (inv!32227 setElem!16843) e!1372258))))

(declare-fun setRest!16843 () (InoxSet Context!2758))

(assert (=> setNonEmpty!16842 (= (_1!14429 (_1!14430 (h!29900 mapValue!13469))) ((_ map or) (store ((as const (Array Context!2758 Bool)) false) setElem!16843 true) setRest!16843))))

(declare-fun b!2146858 () Bool)

(declare-fun e!1372259 () Bool)

(declare-fun tp!665870 () Bool)

(assert (=> b!2146858 (= e!1372259 tp!665870)))

(declare-fun setIsEmpty!16842 () Bool)

(declare-fun setRes!16842 () Bool)

(assert (=> setIsEmpty!16842 setRes!16842))

(declare-fun setIsEmpty!16843 () Bool)

(assert (=> setIsEmpty!16843 setRes!16843))

(declare-fun b!2146859 () Bool)

(declare-fun tp!665869 () Bool)

(assert (=> b!2146859 (= e!1372258 tp!665869)))

(declare-fun mapNonEmpty!13469 () Bool)

(declare-fun mapRes!13469 () Bool)

(declare-fun tp!665872 () Bool)

(assert (=> mapNonEmpty!13469 (= mapRes!13469 (and tp!665872 e!1372260))))

(declare-fun mapRest!13469 () (Array (_ BitVec 32) List!24583))

(declare-fun mapKey!13469 () (_ BitVec 32))

(assert (=> mapNonEmpty!13469 (= mapRest!13466 (store mapRest!13469 mapKey!13469 mapValue!13469))))

(declare-fun b!2146860 () Bool)

(declare-fun e!1372257 () Bool)

(declare-fun tp!665873 () Bool)

(assert (=> b!2146860 (= e!1372257 (and setRes!16842 tp!665873))))

(declare-fun condSetEmpty!16842 () Bool)

(declare-fun mapDefault!13469 () List!24583)

(assert (=> b!2146860 (= condSetEmpty!16842 (= (_1!14429 (_1!14430 (h!29900 mapDefault!13469))) ((as const (Array Context!2758 Bool)) false)))))

(declare-fun setElem!16842 () Context!2758)

(declare-fun setNonEmpty!16843 () Bool)

(declare-fun tp!665867 () Bool)

(assert (=> setNonEmpty!16843 (= setRes!16842 (and tp!665867 (inv!32227 setElem!16842) e!1372259))))

(declare-fun setRest!16842 () (InoxSet Context!2758))

(assert (=> setNonEmpty!16843 (= (_1!14429 (_1!14430 (h!29900 mapDefault!13469))) ((_ map or) (store ((as const (Array Context!2758 Bool)) false) setElem!16842 true) setRest!16842))))

(declare-fun mapIsEmpty!13469 () Bool)

(assert (=> mapIsEmpty!13469 mapRes!13469))

(declare-fun condMapEmpty!13469 () Bool)

(assert (=> mapNonEmpty!13466 (= condMapEmpty!13469 (= mapRest!13466 ((as const (Array (_ BitVec 32) List!24583)) mapDefault!13469)))))

(assert (=> mapNonEmpty!13466 (= tp!665827 (and e!1372257 mapRes!13469))))

(assert (= (and mapNonEmpty!13466 condMapEmpty!13469) mapIsEmpty!13469))

(assert (= (and mapNonEmpty!13466 (not condMapEmpty!13469)) mapNonEmpty!13469))

(assert (= (and b!2146857 condSetEmpty!16843) setIsEmpty!16843))

(assert (= (and b!2146857 (not condSetEmpty!16843)) setNonEmpty!16842))

(assert (= setNonEmpty!16842 b!2146859))

(assert (= (and mapNonEmpty!13469 ((_ is Cons!24499) mapValue!13469)) b!2146857))

(assert (= (and b!2146860 condSetEmpty!16842) setIsEmpty!16842))

(assert (= (and b!2146860 (not condSetEmpty!16842)) setNonEmpty!16843))

(assert (= setNonEmpty!16843 b!2146858))

(assert (= (and mapNonEmpty!13466 ((_ is Cons!24499) mapDefault!13469)) b!2146860))

(declare-fun m!2590431 () Bool)

(assert (=> setNonEmpty!16842 m!2590431))

(declare-fun m!2590433 () Bool)

(assert (=> mapNonEmpty!13469 m!2590433))

(declare-fun m!2590435 () Bool)

(assert (=> setNonEmpty!16843 m!2590435))

(declare-fun setIsEmpty!16844 () Bool)

(declare-fun setRes!16844 () Bool)

(assert (=> setIsEmpty!16844 setRes!16844))

(declare-fun b!2146861 () Bool)

(declare-fun e!1372261 () Bool)

(declare-fun tp!665874 () Bool)

(assert (=> b!2146861 (= e!1372261 (and setRes!16844 tp!665874))))

(declare-fun condSetEmpty!16844 () Bool)

(assert (=> b!2146861 (= condSetEmpty!16844 (= (_1!14429 (_1!14430 (h!29900 mapValue!13466))) ((as const (Array Context!2758 Bool)) false)))))

(declare-fun e!1372262 () Bool)

(declare-fun tp!665875 () Bool)

(declare-fun setNonEmpty!16844 () Bool)

(declare-fun setElem!16844 () Context!2758)

(assert (=> setNonEmpty!16844 (= setRes!16844 (and tp!665875 (inv!32227 setElem!16844) e!1372262))))

(declare-fun setRest!16844 () (InoxSet Context!2758))

(assert (=> setNonEmpty!16844 (= (_1!14429 (_1!14430 (h!29900 mapValue!13466))) ((_ map or) (store ((as const (Array Context!2758 Bool)) false) setElem!16844 true) setRest!16844))))

(declare-fun b!2146862 () Bool)

(declare-fun tp!665876 () Bool)

(assert (=> b!2146862 (= e!1372262 tp!665876)))

(assert (=> mapNonEmpty!13466 (= tp!665825 e!1372261)))

(assert (= (and b!2146861 condSetEmpty!16844) setIsEmpty!16844))

(assert (= (and b!2146861 (not condSetEmpty!16844)) setNonEmpty!16844))

(assert (= setNonEmpty!16844 b!2146862))

(assert (= (and mapNonEmpty!13466 ((_ is Cons!24499) mapValue!13466)) b!2146861))

(declare-fun m!2590437 () Bool)

(assert (=> setNonEmpty!16844 m!2590437))

(declare-fun e!1372267 () Bool)

(declare-fun tp!665884 () Bool)

(declare-fun b!2146871 () Bool)

(declare-fun tp!665885 () Bool)

(assert (=> b!2146871 (= e!1372267 (and (inv!32224 (left!18816 (c!340825 (totalInput!3185 thiss!29173)))) tp!665885 (inv!32224 (right!19146 (c!340825 (totalInput!3185 thiss!29173)))) tp!665884))))

(declare-fun b!2146873 () Bool)

(declare-fun e!1372268 () Bool)

(declare-fun tp!665883 () Bool)

(assert (=> b!2146873 (= e!1372268 tp!665883)))

(declare-fun b!2146872 () Bool)

(declare-fun inv!32230 (IArray!15895) Bool)

(assert (=> b!2146872 (= e!1372267 (and (inv!32230 (xs!10887 (c!340825 (totalInput!3185 thiss!29173)))) e!1372268))))

(assert (=> b!2146714 (= tp!665824 (and (inv!32224 (c!340825 (totalInput!3185 thiss!29173))) e!1372267))))

(assert (= (and b!2146714 ((_ is Node!7945) (c!340825 (totalInput!3185 thiss!29173)))) b!2146871))

(assert (= b!2146872 b!2146873))

(assert (= (and b!2146714 ((_ is Leaf!11617) (c!340825 (totalInput!3185 thiss!29173)))) b!2146872))

(declare-fun m!2590439 () Bool)

(assert (=> b!2146871 m!2590439))

(declare-fun m!2590441 () Bool)

(assert (=> b!2146871 m!2590441))

(declare-fun m!2590443 () Bool)

(assert (=> b!2146872 m!2590443))

(assert (=> b!2146714 m!2590240))

(declare-fun setIsEmpty!16845 () Bool)

(declare-fun setRes!16845 () Bool)

(assert (=> setIsEmpty!16845 setRes!16845))

(declare-fun b!2146874 () Bool)

(declare-fun e!1372269 () Bool)

(declare-fun tp!665886 () Bool)

(assert (=> b!2146874 (= e!1372269 (and setRes!16845 tp!665886))))

(declare-fun condSetEmpty!16845 () Bool)

(assert (=> b!2146874 (= condSetEmpty!16845 (= (_1!14429 (_1!14430 (h!29900 (zeroValue!3092 (v!29090 (underlying!5863 (v!29091 (underlying!5864 (cache!3129 thiss!29173))))))))) ((as const (Array Context!2758 Bool)) false)))))

(declare-fun tp!665887 () Bool)

(declare-fun e!1372270 () Bool)

(declare-fun setNonEmpty!16845 () Bool)

(declare-fun setElem!16845 () Context!2758)

(assert (=> setNonEmpty!16845 (= setRes!16845 (and tp!665887 (inv!32227 setElem!16845) e!1372270))))

(declare-fun setRest!16845 () (InoxSet Context!2758))

(assert (=> setNonEmpty!16845 (= (_1!14429 (_1!14430 (h!29900 (zeroValue!3092 (v!29090 (underlying!5863 (v!29091 (underlying!5864 (cache!3129 thiss!29173))))))))) ((_ map or) (store ((as const (Array Context!2758 Bool)) false) setElem!16845 true) setRest!16845))))

(declare-fun b!2146875 () Bool)

(declare-fun tp!665888 () Bool)

(assert (=> b!2146875 (= e!1372270 tp!665888)))

(assert (=> b!2146719 (= tp!665826 e!1372269)))

(assert (= (and b!2146874 condSetEmpty!16845) setIsEmpty!16845))

(assert (= (and b!2146874 (not condSetEmpty!16845)) setNonEmpty!16845))

(assert (= setNonEmpty!16845 b!2146875))

(assert (= (and b!2146719 ((_ is Cons!24499) (zeroValue!3092 (v!29090 (underlying!5863 (v!29091 (underlying!5864 (cache!3129 thiss!29173)))))))) b!2146874))

(declare-fun m!2590445 () Bool)

(assert (=> setNonEmpty!16845 m!2590445))

(declare-fun setIsEmpty!16846 () Bool)

(declare-fun setRes!16846 () Bool)

(assert (=> setIsEmpty!16846 setRes!16846))

(declare-fun b!2146876 () Bool)

(declare-fun e!1372271 () Bool)

(declare-fun tp!665889 () Bool)

(assert (=> b!2146876 (= e!1372271 (and setRes!16846 tp!665889))))

(declare-fun condSetEmpty!16846 () Bool)

(assert (=> b!2146876 (= condSetEmpty!16846 (= (_1!14429 (_1!14430 (h!29900 (minValue!3092 (v!29090 (underlying!5863 (v!29091 (underlying!5864 (cache!3129 thiss!29173))))))))) ((as const (Array Context!2758 Bool)) false)))))

(declare-fun tp!665890 () Bool)

(declare-fun e!1372272 () Bool)

(declare-fun setElem!16846 () Context!2758)

(declare-fun setNonEmpty!16846 () Bool)

(assert (=> setNonEmpty!16846 (= setRes!16846 (and tp!665890 (inv!32227 setElem!16846) e!1372272))))

(declare-fun setRest!16846 () (InoxSet Context!2758))

(assert (=> setNonEmpty!16846 (= (_1!14429 (_1!14430 (h!29900 (minValue!3092 (v!29090 (underlying!5863 (v!29091 (underlying!5864 (cache!3129 thiss!29173))))))))) ((_ map or) (store ((as const (Array Context!2758 Bool)) false) setElem!16846 true) setRest!16846))))

(declare-fun b!2146877 () Bool)

(declare-fun tp!665891 () Bool)

(assert (=> b!2146877 (= e!1372272 tp!665891)))

(assert (=> b!2146719 (= tp!665822 e!1372271)))

(assert (= (and b!2146876 condSetEmpty!16846) setIsEmpty!16846))

(assert (= (and b!2146876 (not condSetEmpty!16846)) setNonEmpty!16846))

(assert (= setNonEmpty!16846 b!2146877))

(assert (= (and b!2146719 ((_ is Cons!24499) (minValue!3092 (v!29090 (underlying!5863 (v!29091 (underlying!5864 (cache!3129 thiss!29173)))))))) b!2146876))

(declare-fun m!2590447 () Bool)

(assert (=> setNonEmpty!16846 m!2590447))

(declare-fun b_lambda!70749 () Bool)

(assert (= b_lambda!70747 (or (and b!2146711 b_free!63327) b_lambda!70749)))

(declare-fun b_lambda!70751 () Bool)

(assert (= b_lambda!70745 (or (and b!2146711 b_free!63327) b_lambda!70751)))

(check-sat (not setNonEmpty!16846) (not d!645294) (not b!2146861) (not b!2146871) (not d!645304) (not bm!128867) (not b!2146798) (not b!2146877) (not b!2146875) (not b!2146766) (not b!2146739) (not b!2146813) (not b!2146794) (not d!645288) (not bm!128871) (not b!2146816) (not bm!128870) (not setNonEmpty!16837) (not setNonEmpty!16842) (not b!2146770) (not b!2146733) (not b!2146826) b_and!172909 (not b!2146738) (not d!645290) (not setNonEmpty!16834) (not b!2146876) (not b_lambda!70749) (not setNonEmpty!16843) (not b!2146833) (not b!2146840) (not b!2146782) (not bm!128866) (not bm!128868) (not b!2146732) (not setNonEmpty!16844) (not mapNonEmpty!13469) (not b!2146874) (not b!2146769) (not d!645306) b_and!172915 (not b!2146814) (not b!2146828) (not setNonEmpty!16845) (not b!2146857) (not b!2146872) (not b_next!64029) (not b!2146783) (not d!645310) (not b!2146862) (not b!2146767) (not b!2146765) (not d!645286) (not b_lambda!70751) (not b!2146846) (not b!2146841) (not d!645300) (not b!2146873) (not d!645292) (not b_next!64031) (not b!2146859) (not b!2146860) (not bm!128869) (not b!2146858) (not b!2146819) (not b!2146714))
(check-sat b_and!172915 b_and!172909 (not b_next!64031) (not b_next!64029))
