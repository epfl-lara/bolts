; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!188752 () Bool)

(assert start!188752)

(declare-fun b!1885248 () Bool)

(declare-fun b_free!52405 () Bool)

(declare-fun b_next!53109 () Bool)

(assert (=> b!1885248 (= b_free!52405 (not b_next!53109))))

(declare-fun tp!537122 () Bool)

(declare-fun b_and!145195 () Bool)

(assert (=> b!1885248 (= tp!537122 b_and!145195)))

(declare-fun b!1885263 () Bool)

(declare-fun b_free!52407 () Bool)

(declare-fun b_next!53111 () Bool)

(assert (=> b!1885263 (= b_free!52407 (not b_next!53111))))

(declare-fun tp!537118 () Bool)

(declare-fun b_and!145197 () Bool)

(assert (=> b!1885263 (= tp!537118 b_and!145197)))

(declare-fun b!1885250 () Bool)

(declare-fun b_free!52409 () Bool)

(declare-fun b_next!53113 () Bool)

(assert (=> b!1885250 (= b_free!52409 (not b_next!53113))))

(declare-fun tp!537107 () Bool)

(declare-fun b_and!145199 () Bool)

(assert (=> b!1885250 (= tp!537107 b_and!145199)))

(declare-fun b!1885254 () Bool)

(declare-fun b_free!52411 () Bool)

(declare-fun b_next!53115 () Bool)

(assert (=> b!1885254 (= b_free!52411 (not b_next!53115))))

(declare-fun tp!537112 () Bool)

(declare-fun b_and!145201 () Bool)

(assert (=> b!1885254 (= tp!537112 b_and!145201)))

(declare-fun tp!537121 () Bool)

(declare-fun e!1202654 () Bool)

(declare-fun tp!537110 () Bool)

(declare-fun e!1202656 () Bool)

(declare-datatypes ((C!10428 0))(
  ( (C!10429 (val!6102 Int)) )
))
(declare-datatypes ((Regex!5133 0))(
  ( (ElementMatch!5133 (c!308007 C!10428)) (Concat!8986 (regOne!10778 Regex!5133) (regTwo!10778 Regex!5133)) (EmptyExpr!5133) (Star!5133 (reg!5462 Regex!5133)) (EmptyLang!5133) (Union!5133 (regOne!10779 Regex!5133) (regTwo!10779 Regex!5133)) )
))
(declare-datatypes ((List!21043 0))(
  ( (Nil!20961) (Cons!20961 (h!26362 Regex!5133) (t!175042 List!21043)) )
))
(declare-datatypes ((Context!1974 0))(
  ( (Context!1975 (exprs!1487 List!21043)) )
))
(declare-datatypes ((tuple3!1980 0))(
  ( (tuple3!1981 (_1!11456 Regex!5133) (_2!11456 Context!1974) (_3!1454 C!10428)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!20004 0))(
  ( (tuple2!20005 (_1!11457 tuple3!1980) (_2!11457 (InoxSet Context!1974))) )
))
(declare-datatypes ((array!6752 0))(
  ( (array!6753 (arr!2997 (Array (_ BitVec 32) (_ BitVec 64))) (size!16649 (_ BitVec 32))) )
))
(declare-datatypes ((List!21044 0))(
  ( (Nil!20962) (Cons!20962 (h!26363 tuple2!20004) (t!175043 List!21044)) )
))
(declare-datatypes ((array!6754 0))(
  ( (array!6755 (arr!2998 (Array (_ BitVec 32) List!21044)) (size!16650 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3914 0))(
  ( (LongMapFixedSize!3915 (defaultEntry!2322 Int) (mask!5789 (_ BitVec 32)) (extraKeys!2205 (_ BitVec 32)) (zeroValue!2215 List!21044) (minValue!2215 List!21044) (_size!3965 (_ BitVec 32)) (_keys!2254 array!6752) (_values!2237 array!6754) (_vacant!2018 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7653 0))(
  ( (Cell!7654 (v!26231 LongMapFixedSize!3914)) )
))
(declare-datatypes ((MutLongMap!1957 0))(
  ( (LongMap!1957 (underlying!4107 Cell!7653)) (MutLongMapExt!1956 (__x!13174 Int)) )
))
(declare-datatypes ((Hashable!1871 0))(
  ( (HashableExt!1870 (__x!13175 Int)) )
))
(declare-datatypes ((Cell!7655 0))(
  ( (Cell!7656 (v!26232 MutLongMap!1957)) )
))
(declare-datatypes ((MutableMap!1871 0))(
  ( (MutableMapExt!1870 (__x!13176 Int)) (HashMap!1871 (underlying!4108 Cell!7655) (hashF!3794 Hashable!1871) (_size!3966 (_ BitVec 32)) (defaultValue!2033 Int)) )
))
(declare-datatypes ((CacheDown!1166 0))(
  ( (CacheDown!1167 (cache!2252 MutableMap!1871)) )
))
(declare-fun cacheDown!779 () CacheDown!1166)

(declare-fun array_inv!2150 (array!6752) Bool)

(declare-fun array_inv!2151 (array!6754) Bool)

(assert (=> b!1885248 (= e!1202656 (and tp!537122 tp!537121 tp!537110 (array_inv!2150 (_keys!2254 (v!26231 (underlying!4107 (v!26232 (underlying!4108 (cache!2252 cacheDown!779))))))) (array_inv!2151 (_values!2237 (v!26231 (underlying!4107 (v!26232 (underlying!4108 (cache!2252 cacheDown!779))))))) e!1202654))))

(declare-fun b!1885249 () Bool)

(declare-fun e!1202664 () Bool)

(declare-datatypes ((List!21045 0))(
  ( (Nil!20963) (Cons!20963 (h!26364 C!10428) (t!175044 List!21045)) )
))
(declare-datatypes ((IArray!13943 0))(
  ( (IArray!13944 (innerList!7029 List!21045)) )
))
(declare-datatypes ((Conc!6969 0))(
  ( (Node!6969 (left!16848 Conc!6969) (right!17178 Conc!6969) (csize!14168 Int) (cheight!7180 Int)) (Leaf!10253 (xs!9859 IArray!13943) (csize!14169 Int)) (Empty!6969) )
))
(declare-datatypes ((BalanceConc!13754 0))(
  ( (BalanceConc!13755 (c!308008 Conc!6969)) )
))
(declare-fun input!3724 () BalanceConc!13754)

(declare-fun tp!537111 () Bool)

(declare-fun inv!27926 (Conc!6969) Bool)

(assert (=> b!1885249 (= e!1202664 (and (inv!27926 (c!308008 input!3724)) tp!537111))))

(declare-fun e!1202658 () Bool)

(declare-fun tp!537113 () Bool)

(declare-fun tp!537117 () Bool)

(declare-fun e!1202665 () Bool)

(declare-datatypes ((tuple2!20006 0))(
  ( (tuple2!20007 (_1!11458 Context!1974) (_2!11458 C!10428)) )
))
(declare-datatypes ((tuple2!20008 0))(
  ( (tuple2!20009 (_1!11459 tuple2!20006) (_2!11459 (InoxSet Context!1974))) )
))
(declare-datatypes ((List!21046 0))(
  ( (Nil!20964) (Cons!20964 (h!26365 tuple2!20008) (t!175045 List!21046)) )
))
(declare-datatypes ((array!6756 0))(
  ( (array!6757 (arr!2999 (Array (_ BitVec 32) List!21046)) (size!16651 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3916 0))(
  ( (LongMapFixedSize!3917 (defaultEntry!2323 Int) (mask!5790 (_ BitVec 32)) (extraKeys!2206 (_ BitVec 32)) (zeroValue!2216 List!21046) (minValue!2216 List!21046) (_size!3967 (_ BitVec 32)) (_keys!2255 array!6752) (_values!2238 array!6756) (_vacant!2019 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7657 0))(
  ( (Cell!7658 (v!26233 LongMapFixedSize!3916)) )
))
(declare-datatypes ((MutLongMap!1958 0))(
  ( (LongMap!1958 (underlying!4109 Cell!7657)) (MutLongMapExt!1957 (__x!13177 Int)) )
))
(declare-datatypes ((Cell!7659 0))(
  ( (Cell!7660 (v!26234 MutLongMap!1958)) )
))
(declare-datatypes ((Hashable!1872 0))(
  ( (HashableExt!1871 (__x!13178 Int)) )
))
(declare-datatypes ((MutableMap!1872 0))(
  ( (MutableMapExt!1871 (__x!13179 Int)) (HashMap!1872 (underlying!4110 Cell!7659) (hashF!3795 Hashable!1872) (_size!3968 (_ BitVec 32)) (defaultValue!2034 Int)) )
))
(declare-datatypes ((CacheUp!1170 0))(
  ( (CacheUp!1171 (cache!2253 MutableMap!1872)) )
))
(declare-fun cacheUp!766 () CacheUp!1170)

(declare-fun array_inv!2152 (array!6756) Bool)

(assert (=> b!1885250 (= e!1202658 (and tp!537107 tp!537113 tp!537117 (array_inv!2150 (_keys!2255 (v!26233 (underlying!4109 (v!26234 (underlying!4110 (cache!2253 cacheUp!766))))))) (array_inv!2152 (_values!2238 (v!26233 (underlying!4109 (v!26234 (underlying!4110 (cache!2253 cacheUp!766))))))) e!1202665))))

(declare-fun mapIsEmpty!9070 () Bool)

(declare-fun mapRes!9071 () Bool)

(assert (=> mapIsEmpty!9070 mapRes!9071))

(declare-fun setIsEmpty!11674 () Bool)

(declare-fun setRes!11674 () Bool)

(assert (=> setIsEmpty!11674 setRes!11674))

(declare-fun b!1885251 () Bool)

(declare-fun e!1202667 () Bool)

(declare-fun e!1202653 () Bool)

(assert (=> b!1885251 (= e!1202667 e!1202653)))

(declare-fun b!1885252 () Bool)

(declare-fun e!1202659 () Bool)

(declare-fun e!1202666 () Bool)

(assert (=> b!1885252 (= e!1202659 e!1202666)))

(declare-fun mapNonEmpty!9070 () Bool)

(declare-fun tp!537116 () Bool)

(declare-fun tp!537108 () Bool)

(assert (=> mapNonEmpty!9070 (= mapRes!9071 (and tp!537116 tp!537108))))

(declare-fun mapKey!9071 () (_ BitVec 32))

(declare-fun mapRest!9071 () (Array (_ BitVec 32) List!21046))

(declare-fun mapValue!9070 () List!21046)

(assert (=> mapNonEmpty!9070 (= (arr!2999 (_values!2238 (v!26233 (underlying!4109 (v!26234 (underlying!4110 (cache!2253 cacheUp!766))))))) (store mapRest!9071 mapKey!9071 mapValue!9070))))

(declare-fun b!1885253 () Bool)

(declare-fun e!1202657 () Bool)

(declare-fun e!1202663 () Bool)

(assert (=> b!1885253 (= e!1202657 e!1202663)))

(declare-fun res!841620 () Bool)

(assert (=> b!1885253 (=> (not res!841620) (not e!1202663))))

(declare-fun i!1815 () Int)

(declare-fun lt!723304 () Int)

(assert (=> b!1885253 (= res!841620 (and (<= i!1815 lt!723304) (not (= i!1815 lt!723304))))))

(declare-fun size!16652 (BalanceConc!13754) Int)

(assert (=> b!1885253 (= lt!723304 (size!16652 input!3724))))

(declare-fun mapNonEmpty!9071 () Bool)

(declare-fun mapRes!9070 () Bool)

(declare-fun tp!537120 () Bool)

(declare-fun tp!537114 () Bool)

(assert (=> mapNonEmpty!9071 (= mapRes!9070 (and tp!537120 tp!537114))))

(declare-fun mapValue!9071 () List!21044)

(declare-fun mapKey!9070 () (_ BitVec 32))

(declare-fun mapRest!9070 () (Array (_ BitVec 32) List!21044))

(assert (=> mapNonEmpty!9071 (= (arr!2998 (_values!2237 (v!26231 (underlying!4107 (v!26232 (underlying!4108 (cache!2252 cacheDown!779))))))) (store mapRest!9070 mapKey!9070 mapValue!9071))))

(declare-fun e!1202652 () Bool)

(declare-fun e!1202662 () Bool)

(assert (=> b!1885254 (= e!1202652 (and e!1202662 tp!537112))))

(declare-fun res!841619 () Bool)

(assert (=> start!188752 (=> (not res!841619) (not e!1202657))))

(assert (=> start!188752 (= res!841619 (>= i!1815 0))))

(assert (=> start!188752 e!1202657))

(assert (=> start!188752 true))

(declare-fun e!1202651 () Bool)

(declare-fun inv!27927 (CacheUp!1170) Bool)

(assert (=> start!188752 (and (inv!27927 cacheUp!766) e!1202651)))

(declare-fun inv!27928 (CacheDown!1166) Bool)

(assert (=> start!188752 (and (inv!27928 cacheDown!779) e!1202667)))

(declare-fun condSetEmpty!11674 () Bool)

(declare-fun z!580 () (InoxSet Context!1974))

(assert (=> start!188752 (= condSetEmpty!11674 (= z!580 ((as const (Array Context!1974 Bool)) false)))))

(assert (=> start!188752 setRes!11674))

(declare-fun inv!27929 (BalanceConc!13754) Bool)

(assert (=> start!188752 (and (inv!27929 input!3724) e!1202664)))

(declare-fun b!1885255 () Bool)

(declare-fun e!1202668 () Bool)

(assert (=> b!1885255 (= e!1202668 e!1202658)))

(declare-fun e!1202660 () Bool)

(declare-fun setNonEmpty!11674 () Bool)

(declare-fun tp!537119 () Bool)

(declare-fun setElem!11674 () Context!1974)

(declare-fun inv!27930 (Context!1974) Bool)

(assert (=> setNonEmpty!11674 (= setRes!11674 (and tp!537119 (inv!27930 setElem!11674) e!1202660))))

(declare-fun setRest!11674 () (InoxSet Context!1974))

(assert (=> setNonEmpty!11674 (= z!580 ((_ map or) (store ((as const (Array Context!1974 Bool)) false) setElem!11674 true) setRest!11674))))

(declare-fun b!1885256 () Bool)

(declare-fun tp!537123 () Bool)

(assert (=> b!1885256 (= e!1202665 (and tp!537123 mapRes!9071))))

(declare-fun condMapEmpty!9071 () Bool)

(declare-fun mapDefault!9070 () List!21046)

(assert (=> b!1885256 (= condMapEmpty!9071 (= (arr!2999 (_values!2238 (v!26233 (underlying!4109 (v!26234 (underlying!4110 (cache!2253 cacheUp!766))))))) ((as const (Array (_ BitVec 32) List!21046)) mapDefault!9070)))))

(declare-fun b!1885257 () Bool)

(declare-fun tp!537109 () Bool)

(assert (=> b!1885257 (= e!1202660 tp!537109)))

(declare-fun b!1885258 () Bool)

(declare-fun e!1202669 () Bool)

(assert (=> b!1885258 (= e!1202669 e!1202668)))

(declare-fun b!1885259 () Bool)

(assert (=> b!1885259 (= e!1202666 e!1202656)))

(declare-fun b!1885260 () Bool)

(declare-fun e!1202650 () Bool)

(declare-fun lt!723306 () MutLongMap!1957)

(get-info :version)

(assert (=> b!1885260 (= e!1202650 (and e!1202659 ((_ is LongMap!1957) lt!723306)))))

(assert (=> b!1885260 (= lt!723306 (v!26232 (underlying!4108 (cache!2252 cacheDown!779))))))

(declare-fun mapIsEmpty!9071 () Bool)

(assert (=> mapIsEmpty!9071 mapRes!9070))

(declare-fun b!1885261 () Bool)

(declare-fun tp!537115 () Bool)

(assert (=> b!1885261 (= e!1202654 (and tp!537115 mapRes!9070))))

(declare-fun condMapEmpty!9070 () Bool)

(declare-fun mapDefault!9071 () List!21044)

(assert (=> b!1885261 (= condMapEmpty!9070 (= (arr!2998 (_values!2237 (v!26231 (underlying!4107 (v!26232 (underlying!4108 (cache!2252 cacheDown!779))))))) ((as const (Array (_ BitVec 32) List!21044)) mapDefault!9071)))))

(declare-fun b!1885262 () Bool)

(assert (=> b!1885262 (= e!1202651 e!1202652)))

(assert (=> b!1885263 (= e!1202653 (and e!1202650 tp!537118))))

(declare-fun b!1885264 () Bool)

(assert (=> b!1885264 (= e!1202663 (or (< (+ 1 i!1815) 0) (> (+ 1 i!1815) lt!723304)))))

(declare-datatypes ((tuple3!1982 0))(
  ( (tuple3!1983 (_1!11460 (InoxSet Context!1974)) (_2!11460 CacheUp!1170) (_3!1455 CacheDown!1166)) )
))
(declare-fun lt!723307 () tuple3!1982)

(declare-fun derivationStepZipperMem!7 ((InoxSet Context!1974) C!10428 CacheUp!1170 CacheDown!1166) tuple3!1982)

(declare-fun apply!5541 (BalanceConc!13754 Int) C!10428)

(assert (=> b!1885264 (= lt!723307 (derivationStepZipperMem!7 z!580 (apply!5541 input!3724 i!1815) cacheUp!766 cacheDown!779))))

(declare-fun b!1885265 () Bool)

(declare-fun lt!723305 () MutLongMap!1958)

(assert (=> b!1885265 (= e!1202662 (and e!1202669 ((_ is LongMap!1958) lt!723305)))))

(assert (=> b!1885265 (= lt!723305 (v!26234 (underlying!4110 (cache!2253 cacheUp!766))))))

(assert (= (and start!188752 res!841619) b!1885253))

(assert (= (and b!1885253 res!841620) b!1885264))

(assert (= (and b!1885256 condMapEmpty!9071) mapIsEmpty!9070))

(assert (= (and b!1885256 (not condMapEmpty!9071)) mapNonEmpty!9070))

(assert (= b!1885250 b!1885256))

(assert (= b!1885255 b!1885250))

(assert (= b!1885258 b!1885255))

(assert (= (and b!1885265 ((_ is LongMap!1958) (v!26234 (underlying!4110 (cache!2253 cacheUp!766))))) b!1885258))

(assert (= b!1885254 b!1885265))

(assert (= (and b!1885262 ((_ is HashMap!1872) (cache!2253 cacheUp!766))) b!1885254))

(assert (= start!188752 b!1885262))

(assert (= (and b!1885261 condMapEmpty!9070) mapIsEmpty!9071))

(assert (= (and b!1885261 (not condMapEmpty!9070)) mapNonEmpty!9071))

(assert (= b!1885248 b!1885261))

(assert (= b!1885259 b!1885248))

(assert (= b!1885252 b!1885259))

(assert (= (and b!1885260 ((_ is LongMap!1957) (v!26232 (underlying!4108 (cache!2252 cacheDown!779))))) b!1885252))

(assert (= b!1885263 b!1885260))

(assert (= (and b!1885251 ((_ is HashMap!1871) (cache!2252 cacheDown!779))) b!1885263))

(assert (= start!188752 b!1885251))

(assert (= (and start!188752 condSetEmpty!11674) setIsEmpty!11674))

(assert (= (and start!188752 (not condSetEmpty!11674)) setNonEmpty!11674))

(assert (= setNonEmpty!11674 b!1885257))

(assert (= start!188752 b!1885249))

(declare-fun m!2318289 () Bool)

(assert (=> b!1885253 m!2318289))

(declare-fun m!2318291 () Bool)

(assert (=> mapNonEmpty!9070 m!2318291))

(declare-fun m!2318293 () Bool)

(assert (=> b!1885248 m!2318293))

(declare-fun m!2318295 () Bool)

(assert (=> b!1885248 m!2318295))

(declare-fun m!2318297 () Bool)

(assert (=> b!1885250 m!2318297))

(declare-fun m!2318299 () Bool)

(assert (=> b!1885250 m!2318299))

(declare-fun m!2318301 () Bool)

(assert (=> start!188752 m!2318301))

(declare-fun m!2318303 () Bool)

(assert (=> start!188752 m!2318303))

(declare-fun m!2318305 () Bool)

(assert (=> start!188752 m!2318305))

(declare-fun m!2318307 () Bool)

(assert (=> b!1885264 m!2318307))

(assert (=> b!1885264 m!2318307))

(declare-fun m!2318309 () Bool)

(assert (=> b!1885264 m!2318309))

(declare-fun m!2318311 () Bool)

(assert (=> mapNonEmpty!9071 m!2318311))

(declare-fun m!2318313 () Bool)

(assert (=> setNonEmpty!11674 m!2318313))

(declare-fun m!2318315 () Bool)

(assert (=> b!1885249 m!2318315))

(check-sat (not b_next!53115) (not b_next!53113) (not mapNonEmpty!9070) b_and!145201 (not b!1885264) (not b!1885256) (not b!1885248) (not b!1885253) (not start!188752) b_and!145199 (not b_next!53111) (not b_next!53109) b_and!145195 b_and!145197 (not setNonEmpty!11674) (not b!1885261) (not b!1885257) (not b!1885249) (not b!1885250) (not mapNonEmpty!9071))
(check-sat (not b_next!53115) (not b_next!53113) b_and!145201 b_and!145199 (not b_next!53111) (not b_next!53109) b_and!145195 b_and!145197)
