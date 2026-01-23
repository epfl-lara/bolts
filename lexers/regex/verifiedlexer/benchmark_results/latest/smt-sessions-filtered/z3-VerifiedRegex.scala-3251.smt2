; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!187734 () Bool)

(assert start!187734)

(declare-fun b!1873272 () Bool)

(declare-fun b_free!52029 () Bool)

(declare-fun b_next!52733 () Bool)

(assert (=> b!1873272 (= b_free!52029 (not b_next!52733))))

(declare-fun tp!532902 () Bool)

(declare-fun b_and!144315 () Bool)

(assert (=> b!1873272 (= tp!532902 b_and!144315)))

(declare-fun b!1873267 () Bool)

(declare-fun b_free!52031 () Bool)

(declare-fun b_next!52735 () Bool)

(assert (=> b!1873267 (= b_free!52031 (not b_next!52735))))

(declare-fun tp!532884 () Bool)

(declare-fun b_and!144317 () Bool)

(assert (=> b!1873267 (= tp!532884 b_and!144317)))

(declare-fun b!1873257 () Bool)

(declare-fun b_free!52033 () Bool)

(declare-fun b_next!52737 () Bool)

(assert (=> b!1873257 (= b_free!52033 (not b_next!52737))))

(declare-fun tp!532896 () Bool)

(declare-fun b_and!144319 () Bool)

(assert (=> b!1873257 (= tp!532896 b_and!144319)))

(declare-fun b!1873276 () Bool)

(declare-fun b_free!52035 () Bool)

(declare-fun b_next!52739 () Bool)

(assert (=> b!1873276 (= b_free!52035 (not b_next!52739))))

(declare-fun tp!532888 () Bool)

(declare-fun b_and!144321 () Bool)

(assert (=> b!1873276 (= tp!532888 b_and!144321)))

(declare-fun e!1195118 () Bool)

(declare-fun e!1195131 () Bool)

(assert (=> b!1873257 (= e!1195118 (and e!1195131 tp!532896))))

(declare-fun b!1873258 () Bool)

(declare-fun e!1195132 () Bool)

(declare-fun tp_is_empty!8843 () Bool)

(assert (=> b!1873258 (= e!1195132 tp_is_empty!8843)))

(declare-fun mapIsEmpty!8954 () Bool)

(declare-fun mapRes!8954 () Bool)

(assert (=> mapIsEmpty!8954 mapRes!8954))

(declare-fun mapNonEmpty!8954 () Bool)

(declare-fun mapRes!8955 () Bool)

(declare-fun tp!532901 () Bool)

(declare-fun tp!532892 () Bool)

(assert (=> mapNonEmpty!8954 (= mapRes!8955 (and tp!532901 tp!532892))))

(declare-datatypes ((C!10300 0))(
  ( (C!10301 (val!6038 Int)) )
))
(declare-datatypes ((Regex!5075 0))(
  ( (ElementMatch!5075 (c!305353 C!10300)) (Concat!8894 (regOne!10662 Regex!5075) (regTwo!10662 Regex!5075)) (EmptyExpr!5075) (Star!5075 (reg!5404 Regex!5075)) (EmptyLang!5075) (Union!5075 (regOne!10663 Regex!5075) (regTwo!10663 Regex!5075)) )
))
(declare-datatypes ((List!20859 0))(
  ( (Nil!20777) (Cons!20777 (h!26178 Regex!5075) (t!173076 List!20859)) )
))
(declare-datatypes ((Context!1930 0))(
  ( (Context!1931 (exprs!1465 List!20859)) )
))
(declare-datatypes ((tuple3!1928 0))(
  ( (tuple3!1929 (_1!11388 Regex!5075) (_2!11388 Context!1930) (_3!1428 C!10300)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!19920 0))(
  ( (tuple2!19921 (_1!11389 tuple3!1928) (_2!11389 (InoxSet Context!1930))) )
))
(declare-datatypes ((List!20860 0))(
  ( (Nil!20778) (Cons!20778 (h!26179 tuple2!19920) (t!173077 List!20860)) )
))
(declare-fun mapValue!8955 () List!20860)

(declare-datatypes ((array!6653 0))(
  ( (array!6654 (arr!2955 (Array (_ BitVec 32) (_ BitVec 64))) (size!16497 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1843 0))(
  ( (HashableExt!1842 (__x!13022 Int)) )
))
(declare-datatypes ((array!6655 0))(
  ( (array!6656 (arr!2956 (Array (_ BitVec 32) List!20860)) (size!16498 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3858 0))(
  ( (LongMapFixedSize!3859 (defaultEntry!2294 Int) (mask!5729 (_ BitVec 32)) (extraKeys!2177 (_ BitVec 32)) (zeroValue!2187 List!20860) (minValue!2187 List!20860) (_size!3909 (_ BitVec 32)) (_keys!2226 array!6653) (_values!2209 array!6655) (_vacant!1990 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7541 0))(
  ( (Cell!7542 (v!26159 LongMapFixedSize!3858)) )
))
(declare-datatypes ((MutLongMap!1929 0))(
  ( (LongMap!1929 (underlying!4051 Cell!7541)) (MutLongMapExt!1928 (__x!13023 Int)) )
))
(declare-datatypes ((Cell!7543 0))(
  ( (Cell!7544 (v!26160 MutLongMap!1929)) )
))
(declare-datatypes ((MutableMap!1843 0))(
  ( (MutableMapExt!1842 (__x!13024 Int)) (HashMap!1843 (underlying!4052 Cell!7543) (hashF!3766 Hashable!1843) (_size!3910 (_ BitVec 32)) (defaultValue!2005 Int)) )
))
(declare-datatypes ((CacheDown!1138 0))(
  ( (CacheDown!1139 (cache!2224 MutableMap!1843)) )
))
(declare-fun cacheDown!1126 () CacheDown!1138)

(declare-fun mapKey!8954 () (_ BitVec 32))

(declare-fun mapRest!8955 () (Array (_ BitVec 32) List!20860))

(assert (=> mapNonEmpty!8954 (= (arr!2956 (_values!2209 (v!26159 (underlying!4051 (v!26160 (underlying!4052 (cache!2224 cacheDown!1126))))))) (store mapRest!8955 mapKey!8954 mapValue!8955))))

(declare-fun b!1873259 () Bool)

(declare-fun e!1195115 () Bool)

(declare-fun e!1195119 () Bool)

(assert (=> b!1873259 (= e!1195115 e!1195119)))

(declare-fun b!1873260 () Bool)

(declare-fun e!1195120 () Bool)

(declare-fun tp!532899 () Bool)

(assert (=> b!1873260 (= e!1195120 (and tp!532899 mapRes!8955))))

(declare-fun condMapEmpty!8955 () Bool)

(declare-fun mapDefault!8954 () List!20860)

(assert (=> b!1873260 (= condMapEmpty!8955 (= (arr!2956 (_values!2209 (v!26159 (underlying!4051 (v!26160 (underlying!4052 (cache!2224 cacheDown!1126))))))) ((as const (Array (_ BitVec 32) List!20860)) mapDefault!8954)))))

(declare-fun mapNonEmpty!8955 () Bool)

(declare-fun tp!532886 () Bool)

(declare-fun tp!532890 () Bool)

(assert (=> mapNonEmpty!8955 (= mapRes!8954 (and tp!532886 tp!532890))))

(declare-datatypes ((tuple2!19922 0))(
  ( (tuple2!19923 (_1!11390 Context!1930) (_2!11390 C!10300)) )
))
(declare-datatypes ((tuple2!19924 0))(
  ( (tuple2!19925 (_1!11391 tuple2!19922) (_2!11391 (InoxSet Context!1930))) )
))
(declare-datatypes ((List!20861 0))(
  ( (Nil!20779) (Cons!20779 (h!26180 tuple2!19924) (t!173078 List!20861)) )
))
(declare-datatypes ((array!6657 0))(
  ( (array!6658 (arr!2957 (Array (_ BitVec 32) List!20861)) (size!16499 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3860 0))(
  ( (LongMapFixedSize!3861 (defaultEntry!2295 Int) (mask!5730 (_ BitVec 32)) (extraKeys!2178 (_ BitVec 32)) (zeroValue!2188 List!20861) (minValue!2188 List!20861) (_size!3911 (_ BitVec 32)) (_keys!2227 array!6653) (_values!2210 array!6657) (_vacant!1991 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7545 0))(
  ( (Cell!7546 (v!26161 LongMapFixedSize!3860)) )
))
(declare-datatypes ((MutLongMap!1930 0))(
  ( (LongMap!1930 (underlying!4053 Cell!7545)) (MutLongMapExt!1929 (__x!13025 Int)) )
))
(declare-datatypes ((Cell!7547 0))(
  ( (Cell!7548 (v!26162 MutLongMap!1930)) )
))
(declare-datatypes ((Hashable!1844 0))(
  ( (HashableExt!1843 (__x!13026 Int)) )
))
(declare-datatypes ((MutableMap!1844 0))(
  ( (MutableMapExt!1843 (__x!13027 Int)) (HashMap!1844 (underlying!4054 Cell!7547) (hashF!3767 Hashable!1844) (_size!3912 (_ BitVec 32)) (defaultValue!2006 Int)) )
))
(declare-datatypes ((CacheUp!1142 0))(
  ( (CacheUp!1143 (cache!2225 MutableMap!1844)) )
))
(declare-fun cacheUp!1007 () CacheUp!1142)

(declare-fun mapKey!8955 () (_ BitVec 32))

(declare-fun mapValue!8954 () List!20861)

(declare-fun mapRest!8954 () (Array (_ BitVec 32) List!20861))

(assert (=> mapNonEmpty!8955 (= (arr!2957 (_values!2210 (v!26161 (underlying!4053 (v!26162 (underlying!4054 (cache!2225 cacheUp!1007))))))) (store mapRest!8954 mapKey!8955 mapValue!8954))))

(declare-fun b!1873262 () Bool)

(declare-fun e!1195116 () Bool)

(declare-fun e!1195126 () Bool)

(declare-fun lt!719882 () MutLongMap!1929)

(get-info :version)

(assert (=> b!1873262 (= e!1195116 (and e!1195126 ((_ is LongMap!1929) lt!719882)))))

(assert (=> b!1873262 (= lt!719882 (v!26160 (underlying!4052 (cache!2224 cacheDown!1126))))))

(declare-fun b!1873263 () Bool)

(declare-fun tp!532889 () Bool)

(assert (=> b!1873263 (= e!1195132 tp!532889)))

(declare-fun b!1873264 () Bool)

(declare-fun e!1195133 () Bool)

(declare-fun e!1195117 () Bool)

(assert (=> b!1873264 (= e!1195133 e!1195117)))

(declare-fun b!1873265 () Bool)

(assert (=> b!1873265 (= e!1195126 e!1195133)))

(declare-fun b!1873266 () Bool)

(declare-fun lt!719880 () MutLongMap!1930)

(assert (=> b!1873266 (= e!1195131 (and e!1195115 ((_ is LongMap!1930) lt!719880)))))

(assert (=> b!1873266 (= lt!719880 (v!26162 (underlying!4054 (cache!2225 cacheUp!1007))))))

(declare-fun tp!532891 () Bool)

(declare-fun tp!532887 () Bool)

(declare-fun array_inv!2127 (array!6653) Bool)

(declare-fun array_inv!2128 (array!6655) Bool)

(assert (=> b!1873267 (= e!1195117 (and tp!532884 tp!532887 tp!532891 (array_inv!2127 (_keys!2226 (v!26159 (underlying!4051 (v!26160 (underlying!4052 (cache!2224 cacheDown!1126))))))) (array_inv!2128 (_values!2209 (v!26159 (underlying!4051 (v!26160 (underlying!4052 (cache!2224 cacheDown!1126))))))) e!1195120))))

(declare-fun b!1873268 () Bool)

(declare-fun e!1195121 () Bool)

(declare-fun tp!532897 () Bool)

(assert (=> b!1873268 (= e!1195121 (and tp_is_empty!8843 tp!532897))))

(declare-fun b!1873269 () Bool)

(declare-fun e!1195123 () Bool)

(assert (=> b!1873269 (= e!1195123 (not true))))

(declare-datatypes ((tuple3!1930 0))(
  ( (tuple3!1931 (_1!11392 Bool) (_2!11392 CacheUp!1142) (_3!1429 CacheDown!1138)) )
))
(declare-fun lt!719883 () tuple3!1930)

(declare-datatypes ((List!20862 0))(
  ( (Nil!20780) (Cons!20780 (h!26181 C!10300) (t!173079 List!20862)) )
))
(declare-fun input!6045 () List!20862)

(declare-fun lt!719879 () (InoxSet Context!1930))

(declare-fun matchZipperMem!2 ((InoxSet Context!1930) List!20862 CacheUp!1142 CacheDown!1138) tuple3!1930)

(assert (=> b!1873269 (= lt!719883 (matchZipperMem!2 lt!719879 input!6045 cacheUp!1007 cacheDown!1126))))

(declare-fun r!13571 () Regex!5075)

(declare-fun matchR!2471 (Regex!5075 List!20862) Bool)

(declare-fun matchZipper!86 ((InoxSet Context!1930) List!20862) Bool)

(assert (=> b!1873269 (= (matchR!2471 r!13571 input!6045) (matchZipper!86 lt!719879 input!6045))))

(declare-datatypes ((Unit!35358 0))(
  ( (Unit!35359) )
))
(declare-fun lt!719881 () Unit!35358)

(declare-datatypes ((List!20863 0))(
  ( (Nil!20781) (Cons!20781 (h!26182 Context!1930) (t!173080 List!20863)) )
))
(declare-fun theoremZipperRegexEquiv!11 ((InoxSet Context!1930) List!20863 Regex!5075 List!20862) Unit!35358)

(declare-fun toList!1007 ((InoxSet Context!1930)) List!20863)

(assert (=> b!1873269 (= lt!719881 (theoremZipperRegexEquiv!11 lt!719879 (toList!1007 lt!719879) r!13571 input!6045))))

(declare-fun focus!246 (Regex!5075) (InoxSet Context!1930))

(assert (=> b!1873269 (= lt!719879 (focus!246 r!13571))))

(declare-fun b!1873270 () Bool)

(declare-fun tp!532900 () Bool)

(declare-fun tp!532883 () Bool)

(assert (=> b!1873270 (= e!1195132 (and tp!532900 tp!532883))))

(declare-fun b!1873271 () Bool)

(declare-fun e!1195122 () Bool)

(assert (=> b!1873271 (= e!1195119 e!1195122)))

(declare-fun res!838251 () Bool)

(assert (=> start!187734 (=> (not res!838251) (not e!1195123))))

(declare-fun validRegex!2089 (Regex!5075) Bool)

(assert (=> start!187734 (= res!838251 (validRegex!2089 r!13571))))

(assert (=> start!187734 e!1195123))

(assert (=> start!187734 e!1195132))

(declare-fun e!1195125 () Bool)

(declare-fun inv!27596 (CacheUp!1142) Bool)

(assert (=> start!187734 (and (inv!27596 cacheUp!1007) e!1195125)))

(declare-fun e!1195130 () Bool)

(declare-fun inv!27597 (CacheDown!1138) Bool)

(assert (=> start!187734 (and (inv!27597 cacheDown!1126) e!1195130)))

(assert (=> start!187734 e!1195121))

(declare-fun b!1873261 () Bool)

(declare-fun e!1195129 () Bool)

(assert (=> b!1873261 (= e!1195130 e!1195129)))

(declare-fun tp!532898 () Bool)

(declare-fun e!1195127 () Bool)

(declare-fun tp!532894 () Bool)

(declare-fun array_inv!2129 (array!6657) Bool)

(assert (=> b!1873272 (= e!1195122 (and tp!532902 tp!532894 tp!532898 (array_inv!2127 (_keys!2227 (v!26161 (underlying!4053 (v!26162 (underlying!4054 (cache!2225 cacheUp!1007))))))) (array_inv!2129 (_values!2210 (v!26161 (underlying!4053 (v!26162 (underlying!4054 (cache!2225 cacheUp!1007))))))) e!1195127))))

(declare-fun mapIsEmpty!8955 () Bool)

(assert (=> mapIsEmpty!8955 mapRes!8955))

(declare-fun b!1873273 () Bool)

(declare-fun tp!532885 () Bool)

(assert (=> b!1873273 (= e!1195127 (and tp!532885 mapRes!8954))))

(declare-fun condMapEmpty!8954 () Bool)

(declare-fun mapDefault!8955 () List!20861)

(assert (=> b!1873273 (= condMapEmpty!8954 (= (arr!2957 (_values!2210 (v!26161 (underlying!4053 (v!26162 (underlying!4054 (cache!2225 cacheUp!1007))))))) ((as const (Array (_ BitVec 32) List!20861)) mapDefault!8955)))))

(declare-fun b!1873274 () Bool)

(declare-fun tp!532895 () Bool)

(declare-fun tp!532893 () Bool)

(assert (=> b!1873274 (= e!1195132 (and tp!532895 tp!532893))))

(declare-fun b!1873275 () Bool)

(assert (=> b!1873275 (= e!1195125 e!1195118)))

(assert (=> b!1873276 (= e!1195129 (and e!1195116 tp!532888))))

(assert (= (and start!187734 res!838251) b!1873269))

(assert (= (and start!187734 ((_ is ElementMatch!5075) r!13571)) b!1873258))

(assert (= (and start!187734 ((_ is Concat!8894) r!13571)) b!1873270))

(assert (= (and start!187734 ((_ is Star!5075) r!13571)) b!1873263))

(assert (= (and start!187734 ((_ is Union!5075) r!13571)) b!1873274))

(assert (= (and b!1873273 condMapEmpty!8954) mapIsEmpty!8954))

(assert (= (and b!1873273 (not condMapEmpty!8954)) mapNonEmpty!8955))

(assert (= b!1873272 b!1873273))

(assert (= b!1873271 b!1873272))

(assert (= b!1873259 b!1873271))

(assert (= (and b!1873266 ((_ is LongMap!1930) (v!26162 (underlying!4054 (cache!2225 cacheUp!1007))))) b!1873259))

(assert (= b!1873257 b!1873266))

(assert (= (and b!1873275 ((_ is HashMap!1844) (cache!2225 cacheUp!1007))) b!1873257))

(assert (= start!187734 b!1873275))

(assert (= (and b!1873260 condMapEmpty!8955) mapIsEmpty!8955))

(assert (= (and b!1873260 (not condMapEmpty!8955)) mapNonEmpty!8954))

(assert (= b!1873267 b!1873260))

(assert (= b!1873264 b!1873267))

(assert (= b!1873265 b!1873264))

(assert (= (and b!1873262 ((_ is LongMap!1929) (v!26160 (underlying!4052 (cache!2224 cacheDown!1126))))) b!1873265))

(assert (= b!1873276 b!1873262))

(assert (= (and b!1873261 ((_ is HashMap!1843) (cache!2224 cacheDown!1126))) b!1873276))

(assert (= start!187734 b!1873261))

(assert (= (and start!187734 ((_ is Cons!20780) input!6045)) b!1873268))

(declare-fun m!2298847 () Bool)

(assert (=> mapNonEmpty!8955 m!2298847))

(declare-fun m!2298849 () Bool)

(assert (=> b!1873269 m!2298849))

(declare-fun m!2298851 () Bool)

(assert (=> b!1873269 m!2298851))

(declare-fun m!2298853 () Bool)

(assert (=> b!1873269 m!2298853))

(assert (=> b!1873269 m!2298849))

(declare-fun m!2298855 () Bool)

(assert (=> b!1873269 m!2298855))

(declare-fun m!2298857 () Bool)

(assert (=> b!1873269 m!2298857))

(declare-fun m!2298859 () Bool)

(assert (=> b!1873269 m!2298859))

(declare-fun m!2298861 () Bool)

(assert (=> b!1873272 m!2298861))

(declare-fun m!2298863 () Bool)

(assert (=> b!1873272 m!2298863))

(declare-fun m!2298865 () Bool)

(assert (=> b!1873267 m!2298865))

(declare-fun m!2298867 () Bool)

(assert (=> b!1873267 m!2298867))

(declare-fun m!2298869 () Bool)

(assert (=> mapNonEmpty!8954 m!2298869))

(declare-fun m!2298871 () Bool)

(assert (=> start!187734 m!2298871))

(declare-fun m!2298873 () Bool)

(assert (=> start!187734 m!2298873))

(declare-fun m!2298875 () Bool)

(assert (=> start!187734 m!2298875))

(check-sat b_and!144315 (not b_next!52737) (not mapNonEmpty!8955) (not start!187734) b_and!144317 (not mapNonEmpty!8954) (not b!1873263) (not b!1873270) (not b_next!52739) (not b!1873274) (not b!1873272) (not b_next!52733) tp_is_empty!8843 b_and!144319 (not b!1873269) (not b!1873267) b_and!144321 (not b!1873260) (not b!1873268) (not b_next!52735) (not b!1873273))
(check-sat (not b_next!52733) b_and!144315 (not b_next!52737) b_and!144319 b_and!144321 b_and!144317 (not b_next!52735) (not b_next!52739))
