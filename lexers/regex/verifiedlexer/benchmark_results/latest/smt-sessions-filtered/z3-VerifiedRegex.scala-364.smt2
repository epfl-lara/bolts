; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11486 () Bool)

(assert start!11486)

(declare-fun b!111304 () Bool)

(declare-fun b_free!3453 () Bool)

(declare-fun b_next!3453 () Bool)

(assert (=> b!111304 (= b_free!3453 (not b_next!3453))))

(declare-fun tp!60007 () Bool)

(declare-fun b_and!5583 () Bool)

(assert (=> b!111304 (= tp!60007 b_and!5583)))

(declare-fun b!111307 () Bool)

(declare-fun b_free!3455 () Bool)

(declare-fun b_next!3455 () Bool)

(assert (=> b!111307 (= b_free!3455 (not b_next!3455))))

(declare-fun tp!60002 () Bool)

(declare-fun b_and!5585 () Bool)

(assert (=> b!111307 (= tp!60002 b_and!5585)))

(declare-fun b!111303 () Bool)

(declare-fun b_free!3457 () Bool)

(declare-fun b_next!3457 () Bool)

(assert (=> b!111303 (= b_free!3457 (not b_next!3457))))

(declare-fun tp!59996 () Bool)

(declare-fun b_and!5587 () Bool)

(assert (=> b!111303 (= tp!59996 b_and!5587)))

(declare-fun b!111300 () Bool)

(declare-fun b_free!3459 () Bool)

(declare-fun b_next!3459 () Bool)

(assert (=> b!111300 (= b_free!3459 (not b_next!3459))))

(declare-fun tp!59998 () Bool)

(declare-fun b_and!5589 () Bool)

(assert (=> b!111300 (= tp!59998 b_and!5589)))

(declare-fun mapIsEmpty!1213 () Bool)

(declare-fun mapRes!1214 () Bool)

(assert (=> mapIsEmpty!1213 mapRes!1214))

(declare-fun b!111295 () Bool)

(declare-fun e!62302 () Bool)

(declare-fun e!62299 () Bool)

(assert (=> b!111295 (= e!62302 e!62299)))

(declare-fun mapNonEmpty!1213 () Bool)

(declare-fun tp!60008 () Bool)

(declare-fun tp!60005 () Bool)

(assert (=> mapNonEmpty!1213 (= mapRes!1214 (and tp!60008 tp!60005))))

(declare-datatypes ((C!1808 0))(
  ( (C!1809 (val!630 Int)) )
))
(declare-datatypes ((Regex!443 0))(
  ( (ElementMatch!443 (c!26344 C!1808)) (Concat!827 (regOne!1398 Regex!443) (regTwo!1398 Regex!443)) (EmptyExpr!443) (Star!443 (reg!772 Regex!443)) (EmptyLang!443) (Union!443 (regOne!1399 Regex!443) (regTwo!1399 Regex!443)) )
))
(declare-datatypes ((List!1803 0))(
  ( (Nil!1797) (Cons!1797 (h!7194 Regex!443) (t!22280 List!1803)) )
))
(declare-datatypes ((Context!210 0))(
  ( (Context!211 (exprs!605 List!1803)) )
))
(declare-datatypes ((tuple3!326 0))(
  ( (tuple3!327 (_1!1149 Regex!443) (_2!1149 Context!210) (_3!208 C!1808)) )
))
(declare-datatypes ((Hashable!304 0))(
  ( (HashableExt!303 (__x!1849 Int)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!1882 0))(
  ( (tuple2!1883 (_1!1150 tuple3!326) (_2!1150 (InoxSet Context!210))) )
))
(declare-datatypes ((List!1804 0))(
  ( (Nil!1798) (Cons!1798 (h!7195 tuple2!1882) (t!22281 List!1804)) )
))
(declare-datatypes ((array!1070 0))(
  ( (array!1071 (arr!501 (Array (_ BitVec 32) (_ BitVec 64))) (size!1558 (_ BitVec 32))) )
))
(declare-datatypes ((array!1072 0))(
  ( (array!1073 (arr!502 (Array (_ BitVec 32) List!1804)) (size!1559 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!616 0))(
  ( (LongMapFixedSize!617 (defaultEntry!647 Int) (mask!1197 (_ BitVec 32)) (extraKeys!554 (_ BitVec 32)) (zeroValue!564 List!1804) (minValue!564 List!1804) (_size!749 (_ BitVec 32)) (_keys!599 array!1070) (_values!586 array!1072) (_vacant!369 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1221 0))(
  ( (Cell!1222 (v!13147 LongMapFixedSize!616)) )
))
(declare-datatypes ((MutLongMap!308 0))(
  ( (LongMap!308 (underlying!815 Cell!1221)) (MutLongMapExt!307 (__x!1850 Int)) )
))
(declare-datatypes ((Cell!1223 0))(
  ( (Cell!1224 (v!13148 MutLongMap!308)) )
))
(declare-datatypes ((MutableMap!304 0))(
  ( (MutableMapExt!303 (__x!1851 Int)) (HashMap!304 (underlying!816 Cell!1223) (hashF!2180 Hashable!304) (_size!750 (_ BitVec 32)) (defaultValue!453 Int)) )
))
(declare-datatypes ((CacheDown!186 0))(
  ( (CacheDown!187 (cache!755 MutableMap!304)) )
))
(declare-fun cacheDown!924 () CacheDown!186)

(declare-fun mapRest!1214 () (Array (_ BitVec 32) List!1804))

(declare-fun mapValue!1213 () List!1804)

(declare-fun mapKey!1213 () (_ BitVec 32))

(assert (=> mapNonEmpty!1213 (= (arr!502 (_values!586 (v!13147 (underlying!815 (v!13148 (underlying!816 (cache!755 cacheDown!924))))))) (store mapRest!1214 mapKey!1213 mapValue!1213))))

(declare-fun b!111296 () Bool)

(declare-fun e!62306 () Bool)

(declare-fun tp!60011 () Bool)

(declare-fun mapRes!1213 () Bool)

(assert (=> b!111296 (= e!62306 (and tp!60011 mapRes!1213))))

(declare-fun condMapEmpty!1214 () Bool)

(declare-datatypes ((tuple2!1884 0))(
  ( (tuple2!1885 (_1!1151 Context!210) (_2!1151 C!1808)) )
))
(declare-datatypes ((tuple2!1886 0))(
  ( (tuple2!1887 (_1!1152 tuple2!1884) (_2!1152 (InoxSet Context!210))) )
))
(declare-datatypes ((List!1805 0))(
  ( (Nil!1799) (Cons!1799 (h!7196 tuple2!1886) (t!22282 List!1805)) )
))
(declare-datatypes ((array!1074 0))(
  ( (array!1075 (arr!503 (Array (_ BitVec 32) List!1805)) (size!1560 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!618 0))(
  ( (LongMapFixedSize!619 (defaultEntry!648 Int) (mask!1198 (_ BitVec 32)) (extraKeys!555 (_ BitVec 32)) (zeroValue!565 List!1805) (minValue!565 List!1805) (_size!751 (_ BitVec 32)) (_keys!600 array!1070) (_values!587 array!1074) (_vacant!370 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1225 0))(
  ( (Cell!1226 (v!13149 LongMapFixedSize!618)) )
))
(declare-datatypes ((MutLongMap!309 0))(
  ( (LongMap!309 (underlying!817 Cell!1225)) (MutLongMapExt!308 (__x!1852 Int)) )
))
(declare-datatypes ((Cell!1227 0))(
  ( (Cell!1228 (v!13150 MutLongMap!309)) )
))
(declare-datatypes ((Hashable!305 0))(
  ( (HashableExt!304 (__x!1853 Int)) )
))
(declare-datatypes ((MutableMap!305 0))(
  ( (MutableMapExt!304 (__x!1854 Int)) (HashMap!305 (underlying!818 Cell!1227) (hashF!2181 Hashable!305) (_size!752 (_ BitVec 32)) (defaultValue!454 Int)) )
))
(declare-datatypes ((CacheUp!182 0))(
  ( (CacheUp!183 (cache!756 MutableMap!305)) )
))
(declare-fun cacheUp!805 () CacheUp!182)

(declare-fun mapDefault!1213 () List!1805)

(assert (=> b!111296 (= condMapEmpty!1214 (= (arr!503 (_values!587 (v!13149 (underlying!817 (v!13150 (underlying!818 (cache!756 cacheUp!805))))))) ((as const (Array (_ BitVec 32) List!1805)) mapDefault!1213)))))

(declare-fun b!111297 () Bool)

(declare-fun e!62304 () Bool)

(declare-fun e!62301 () Bool)

(assert (=> b!111297 (= e!62304 e!62301)))

(declare-fun z!674 () (InoxSet Context!210))

(declare-fun a!1201 () C!1808)

(declare-datatypes ((tuple3!328 0))(
  ( (tuple3!329 (_1!1153 (InoxSet Context!210)) (_2!1153 CacheUp!182) (_3!209 CacheDown!186)) )
))
(declare-fun choose!1498 ((InoxSet Context!210) C!1808 CacheUp!182 CacheDown!186) tuple3!328)

(declare-fun derivationStepZipperSimp!1 ((InoxSet Context!210) C!1808) (InoxSet Context!210))

(assert (=> start!11486 (not (= (_1!1153 (choose!1498 z!674 a!1201 cacheUp!805 cacheDown!924)) (derivationStepZipperSimp!1 z!674 a!1201)))))

(declare-fun condSetEmpty!1675 () Bool)

(assert (=> start!11486 (= condSetEmpty!1675 (= z!674 ((as const (Array Context!210 Bool)) false)))))

(declare-fun setRes!1675 () Bool)

(assert (=> start!11486 setRes!1675))

(declare-fun tp_is_empty!941 () Bool)

(assert (=> start!11486 tp_is_empty!941))

(declare-fun e!62308 () Bool)

(declare-fun inv!2289 (CacheUp!182) Bool)

(assert (=> start!11486 (and (inv!2289 cacheUp!805) e!62308)))

(declare-fun e!62303 () Bool)

(declare-fun inv!2290 (CacheDown!186) Bool)

(assert (=> start!11486 (and (inv!2290 cacheDown!924) e!62303)))

(declare-fun setIsEmpty!1675 () Bool)

(assert (=> setIsEmpty!1675 setRes!1675))

(declare-fun setNonEmpty!1675 () Bool)

(declare-fun setElem!1675 () Context!210)

(declare-fun tp!60010 () Bool)

(declare-fun e!62300 () Bool)

(declare-fun inv!2291 (Context!210) Bool)

(assert (=> setNonEmpty!1675 (= setRes!1675 (and tp!60010 (inv!2291 setElem!1675) e!62300))))

(declare-fun setRest!1675 () (InoxSet Context!210))

(assert (=> setNonEmpty!1675 (= z!674 ((_ map or) (store ((as const (Array Context!210 Bool)) false) setElem!1675 true) setRest!1675))))

(declare-fun b!111298 () Bool)

(declare-fun e!62296 () Bool)

(declare-fun e!62297 () Bool)

(declare-fun lt!32548 () MutLongMap!309)

(get-info :version)

(assert (=> b!111298 (= e!62296 (and e!62297 ((_ is LongMap!309) lt!32548)))))

(assert (=> b!111298 (= lt!32548 (v!13150 (underlying!818 (cache!756 cacheUp!805))))))

(declare-fun b!111299 () Bool)

(assert (=> b!111299 (= e!62297 e!62302)))

(declare-fun e!62311 () Bool)

(declare-fun tp!60000 () Bool)

(declare-fun tp!59999 () Bool)

(declare-fun array_inv!344 (array!1070) Bool)

(declare-fun array_inv!345 (array!1072) Bool)

(assert (=> b!111300 (= e!62301 (and tp!59998 tp!60000 tp!59999 (array_inv!344 (_keys!599 (v!13147 (underlying!815 (v!13148 (underlying!816 (cache!755 cacheDown!924))))))) (array_inv!345 (_values!586 (v!13147 (underlying!815 (v!13148 (underlying!816 (cache!755 cacheDown!924))))))) e!62311))))

(declare-fun b!111301 () Bool)

(declare-fun e!62298 () Bool)

(assert (=> b!111301 (= e!62308 e!62298)))

(declare-fun b!111302 () Bool)

(declare-fun tp!60006 () Bool)

(assert (=> b!111302 (= e!62300 tp!60006)))

(declare-fun e!62309 () Bool)

(declare-fun e!62307 () Bool)

(assert (=> b!111303 (= e!62309 (and e!62307 tp!59996))))

(declare-fun tp!60003 () Bool)

(declare-fun tp!59997 () Bool)

(declare-fun array_inv!346 (array!1074) Bool)

(assert (=> b!111304 (= e!62299 (and tp!60007 tp!59997 tp!60003 (array_inv!344 (_keys!600 (v!13149 (underlying!817 (v!13150 (underlying!818 (cache!756 cacheUp!805))))))) (array_inv!346 (_values!587 (v!13149 (underlying!817 (v!13150 (underlying!818 (cache!756 cacheUp!805))))))) e!62306))))

(declare-fun b!111305 () Bool)

(declare-fun e!62310 () Bool)

(declare-fun lt!32549 () MutLongMap!308)

(assert (=> b!111305 (= e!62307 (and e!62310 ((_ is LongMap!308) lt!32549)))))

(assert (=> b!111305 (= lt!32549 (v!13148 (underlying!816 (cache!755 cacheDown!924))))))

(declare-fun mapNonEmpty!1214 () Bool)

(declare-fun tp!60004 () Bool)

(declare-fun tp!60009 () Bool)

(assert (=> mapNonEmpty!1214 (= mapRes!1213 (and tp!60004 tp!60009))))

(declare-fun mapRest!1213 () (Array (_ BitVec 32) List!1805))

(declare-fun mapValue!1214 () List!1805)

(declare-fun mapKey!1214 () (_ BitVec 32))

(assert (=> mapNonEmpty!1214 (= (arr!503 (_values!587 (v!13149 (underlying!817 (v!13150 (underlying!818 (cache!756 cacheUp!805))))))) (store mapRest!1213 mapKey!1214 mapValue!1214))))

(declare-fun b!111306 () Bool)

(declare-fun tp!60001 () Bool)

(assert (=> b!111306 (= e!62311 (and tp!60001 mapRes!1214))))

(declare-fun condMapEmpty!1213 () Bool)

(declare-fun mapDefault!1214 () List!1804)

(assert (=> b!111306 (= condMapEmpty!1213 (= (arr!502 (_values!586 (v!13147 (underlying!815 (v!13148 (underlying!816 (cache!755 cacheDown!924))))))) ((as const (Array (_ BitVec 32) List!1804)) mapDefault!1214)))))

(assert (=> b!111307 (= e!62298 (and e!62296 tp!60002))))

(declare-fun b!111308 () Bool)

(assert (=> b!111308 (= e!62303 e!62309)))

(declare-fun b!111309 () Bool)

(assert (=> b!111309 (= e!62310 e!62304)))

(declare-fun mapIsEmpty!1214 () Bool)

(assert (=> mapIsEmpty!1214 mapRes!1213))

(assert (= (and start!11486 condSetEmpty!1675) setIsEmpty!1675))

(assert (= (and start!11486 (not condSetEmpty!1675)) setNonEmpty!1675))

(assert (= setNonEmpty!1675 b!111302))

(assert (= (and b!111296 condMapEmpty!1214) mapIsEmpty!1214))

(assert (= (and b!111296 (not condMapEmpty!1214)) mapNonEmpty!1214))

(assert (= b!111304 b!111296))

(assert (= b!111295 b!111304))

(assert (= b!111299 b!111295))

(assert (= (and b!111298 ((_ is LongMap!309) (v!13150 (underlying!818 (cache!756 cacheUp!805))))) b!111299))

(assert (= b!111307 b!111298))

(assert (= (and b!111301 ((_ is HashMap!305) (cache!756 cacheUp!805))) b!111307))

(assert (= start!11486 b!111301))

(assert (= (and b!111306 condMapEmpty!1213) mapIsEmpty!1213))

(assert (= (and b!111306 (not condMapEmpty!1213)) mapNonEmpty!1213))

(assert (= b!111300 b!111306))

(assert (= b!111297 b!111300))

(assert (= b!111309 b!111297))

(assert (= (and b!111305 ((_ is LongMap!308) (v!13148 (underlying!816 (cache!755 cacheDown!924))))) b!111309))

(assert (= b!111303 b!111305))

(assert (= (and b!111308 ((_ is HashMap!304) (cache!755 cacheDown!924))) b!111303))

(assert (= start!11486 b!111308))

(declare-fun m!101608 () Bool)

(assert (=> b!111304 m!101608))

(declare-fun m!101610 () Bool)

(assert (=> b!111304 m!101610))

(declare-fun m!101612 () Bool)

(assert (=> mapNonEmpty!1213 m!101612))

(declare-fun m!101614 () Bool)

(assert (=> start!11486 m!101614))

(declare-fun m!101616 () Bool)

(assert (=> start!11486 m!101616))

(declare-fun m!101618 () Bool)

(assert (=> start!11486 m!101618))

(declare-fun m!101620 () Bool)

(assert (=> start!11486 m!101620))

(declare-fun m!101622 () Bool)

(assert (=> b!111300 m!101622))

(declare-fun m!101624 () Bool)

(assert (=> b!111300 m!101624))

(declare-fun m!101626 () Bool)

(assert (=> mapNonEmpty!1214 m!101626))

(declare-fun m!101628 () Bool)

(assert (=> setNonEmpty!1675 m!101628))

(check-sat b_and!5589 (not mapNonEmpty!1214) b_and!5585 (not b_next!3457) (not b_next!3455) (not b!111304) (not b!111296) b_and!5587 (not b!111300) (not b_next!3459) (not b_next!3453) tp_is_empty!941 (not b!111302) (not start!11486) (not b!111306) b_and!5583 (not mapNonEmpty!1213) (not setNonEmpty!1675))
(check-sat b_and!5589 (not b_next!3453) b_and!5583 b_and!5585 (not b_next!3457) (not b_next!3455) b_and!5587 (not b_next!3459))
(get-model)

(declare-fun d!27973 () Bool)

(assert (=> d!27973 (= (array_inv!344 (_keys!599 (v!13147 (underlying!815 (v!13148 (underlying!816 (cache!755 cacheDown!924))))))) (bvsge (size!1558 (_keys!599 (v!13147 (underlying!815 (v!13148 (underlying!816 (cache!755 cacheDown!924))))))) #b00000000000000000000000000000000))))

(assert (=> b!111300 d!27973))

(declare-fun d!27975 () Bool)

(assert (=> d!27975 (= (array_inv!345 (_values!586 (v!13147 (underlying!815 (v!13148 (underlying!816 (cache!755 cacheDown!924))))))) (bvsge (size!1559 (_values!586 (v!13147 (underlying!815 (v!13148 (underlying!816 (cache!755 cacheDown!924))))))) #b00000000000000000000000000000000))))

(assert (=> b!111300 d!27975))

(declare-fun d!27977 () Bool)

(declare-fun choose!1499 ((InoxSet Context!210) C!1808 CacheUp!182 CacheDown!186) tuple3!328)

(assert (=> d!27977 (= (choose!1498 z!674 a!1201 cacheUp!805 cacheDown!924) (choose!1499 z!674 a!1201 cacheUp!805 cacheDown!924))))

(declare-fun bs!11385 () Bool)

(assert (= bs!11385 d!27977))

(declare-fun m!101630 () Bool)

(assert (=> bs!11385 m!101630))

(assert (=> start!11486 d!27977))

(declare-fun d!27979 () Bool)

(assert (=> d!27979 true))

(declare-fun lambda!2998 () Int)

(declare-fun lambda!2997 () Int)

(declare-fun filter!9 ((InoxSet Context!210) Int) (InoxSet Context!210))

(declare-fun flatMap!64 ((InoxSet Context!210) Int) (InoxSet Context!210))

(assert (=> d!27979 (= (derivationStepZipperSimp!1 z!674 a!1201) (filter!9 (flatMap!64 z!674 lambda!2997) lambda!2998))))

(declare-fun bs!11386 () Bool)

(assert (= bs!11386 d!27979))

(declare-fun m!101632 () Bool)

(assert (=> bs!11386 m!101632))

(assert (=> bs!11386 m!101632))

(declare-fun m!101634 () Bool)

(assert (=> bs!11386 m!101634))

(assert (=> start!11486 d!27979))

(declare-fun d!27981 () Bool)

(declare-fun res!53696 () Bool)

(declare-fun e!62315 () Bool)

(assert (=> d!27981 (=> (not res!53696) (not e!62315))))

(assert (=> d!27981 (= res!53696 ((_ is HashMap!305) (cache!756 cacheUp!805)))))

(assert (=> d!27981 (= (inv!2289 cacheUp!805) e!62315)))

(declare-fun b!111314 () Bool)

(declare-fun validCacheMapUp!26 (MutableMap!305) Bool)

(assert (=> b!111314 (= e!62315 (validCacheMapUp!26 (cache!756 cacheUp!805)))))

(assert (= (and d!27981 res!53696) b!111314))

(declare-fun m!101636 () Bool)

(assert (=> b!111314 m!101636))

(assert (=> start!11486 d!27981))

(declare-fun d!27983 () Bool)

(declare-fun res!53699 () Bool)

(declare-fun e!62318 () Bool)

(assert (=> d!27983 (=> (not res!53699) (not e!62318))))

(assert (=> d!27983 (= res!53699 ((_ is HashMap!304) (cache!755 cacheDown!924)))))

(assert (=> d!27983 (= (inv!2290 cacheDown!924) e!62318)))

(declare-fun b!111317 () Bool)

(declare-fun validCacheMapDown!29 (MutableMap!304) Bool)

(assert (=> b!111317 (= e!62318 (validCacheMapDown!29 (cache!755 cacheDown!924)))))

(assert (= (and d!27983 res!53699) b!111317))

(declare-fun m!101638 () Bool)

(assert (=> b!111317 m!101638))

(assert (=> start!11486 d!27983))

(declare-fun d!27985 () Bool)

(declare-fun lambda!3001 () Int)

(declare-fun forall!341 (List!1803 Int) Bool)

(assert (=> d!27985 (= (inv!2291 setElem!1675) (forall!341 (exprs!605 setElem!1675) lambda!3001))))

(declare-fun bs!11387 () Bool)

(assert (= bs!11387 d!27985))

(declare-fun m!101640 () Bool)

(assert (=> bs!11387 m!101640))

(assert (=> setNonEmpty!1675 d!27985))

(declare-fun d!27987 () Bool)

(assert (=> d!27987 (= (array_inv!344 (_keys!600 (v!13149 (underlying!817 (v!13150 (underlying!818 (cache!756 cacheUp!805))))))) (bvsge (size!1558 (_keys!600 (v!13149 (underlying!817 (v!13150 (underlying!818 (cache!756 cacheUp!805))))))) #b00000000000000000000000000000000))))

(assert (=> b!111304 d!27987))

(declare-fun d!27989 () Bool)

(assert (=> d!27989 (= (array_inv!346 (_values!587 (v!13149 (underlying!817 (v!13150 (underlying!818 (cache!756 cacheUp!805))))))) (bvsge (size!1560 (_values!587 (v!13149 (underlying!817 (v!13150 (underlying!818 (cache!756 cacheUp!805))))))) #b00000000000000000000000000000000))))

(assert (=> b!111304 d!27989))

(declare-fun setIsEmpty!1678 () Bool)

(declare-fun setRes!1678 () Bool)

(assert (=> setIsEmpty!1678 setRes!1678))

(declare-fun setElem!1678 () Context!210)

(declare-fun e!62326 () Bool)

(declare-fun setNonEmpty!1678 () Bool)

(declare-fun tp!60026 () Bool)

(assert (=> setNonEmpty!1678 (= setRes!1678 (and tp!60026 (inv!2291 setElem!1678) e!62326))))

(declare-fun setRest!1678 () (InoxSet Context!210))

(assert (=> setNonEmpty!1678 (= (_2!1150 (h!7195 (zeroValue!564 (v!13147 (underlying!815 (v!13148 (underlying!816 (cache!755 cacheDown!924)))))))) ((_ map or) (store ((as const (Array Context!210 Bool)) false) setElem!1678 true) setRest!1678))))

(declare-fun b!111327 () Bool)

(declare-fun tp!60022 () Bool)

(assert (=> b!111327 (= e!62326 tp!60022)))

(declare-fun b!111328 () Bool)

(declare-fun e!62325 () Bool)

(declare-fun tp!60023 () Bool)

(assert (=> b!111328 (= e!62325 tp!60023)))

(declare-fun tp!60024 () Bool)

(declare-fun e!62327 () Bool)

(declare-fun b!111326 () Bool)

(declare-fun tp!60025 () Bool)

(assert (=> b!111326 (= e!62327 (and tp!60024 (inv!2291 (_2!1149 (_1!1150 (h!7195 (zeroValue!564 (v!13147 (underlying!815 (v!13148 (underlying!816 (cache!755 cacheDown!924)))))))))) e!62325 tp_is_empty!941 setRes!1678 tp!60025))))

(declare-fun condSetEmpty!1678 () Bool)

(assert (=> b!111326 (= condSetEmpty!1678 (= (_2!1150 (h!7195 (zeroValue!564 (v!13147 (underlying!815 (v!13148 (underlying!816 (cache!755 cacheDown!924)))))))) ((as const (Array Context!210 Bool)) false)))))

(assert (=> b!111300 (= tp!60000 e!62327)))

(assert (= b!111326 b!111328))

(assert (= (and b!111326 condSetEmpty!1678) setIsEmpty!1678))

(assert (= (and b!111326 (not condSetEmpty!1678)) setNonEmpty!1678))

(assert (= setNonEmpty!1678 b!111327))

(assert (= (and b!111300 ((_ is Cons!1798) (zeroValue!564 (v!13147 (underlying!815 (v!13148 (underlying!816 (cache!755 cacheDown!924)))))))) b!111326))

(declare-fun m!101642 () Bool)

(assert (=> setNonEmpty!1678 m!101642))

(declare-fun m!101644 () Bool)

(assert (=> b!111326 m!101644))

(declare-fun setIsEmpty!1679 () Bool)

(declare-fun setRes!1679 () Bool)

(assert (=> setIsEmpty!1679 setRes!1679))

(declare-fun setNonEmpty!1679 () Bool)

(declare-fun tp!60031 () Bool)

(declare-fun e!62329 () Bool)

(declare-fun setElem!1679 () Context!210)

(assert (=> setNonEmpty!1679 (= setRes!1679 (and tp!60031 (inv!2291 setElem!1679) e!62329))))

(declare-fun setRest!1679 () (InoxSet Context!210))

(assert (=> setNonEmpty!1679 (= (_2!1150 (h!7195 (minValue!564 (v!13147 (underlying!815 (v!13148 (underlying!816 (cache!755 cacheDown!924)))))))) ((_ map or) (store ((as const (Array Context!210 Bool)) false) setElem!1679 true) setRest!1679))))

(declare-fun b!111330 () Bool)

(declare-fun tp!60027 () Bool)

(assert (=> b!111330 (= e!62329 tp!60027)))

(declare-fun b!111331 () Bool)

(declare-fun e!62328 () Bool)

(declare-fun tp!60028 () Bool)

(assert (=> b!111331 (= e!62328 tp!60028)))

(declare-fun tp!60030 () Bool)

(declare-fun tp!60029 () Bool)

(declare-fun b!111329 () Bool)

(declare-fun e!62330 () Bool)

(assert (=> b!111329 (= e!62330 (and tp!60029 (inv!2291 (_2!1149 (_1!1150 (h!7195 (minValue!564 (v!13147 (underlying!815 (v!13148 (underlying!816 (cache!755 cacheDown!924)))))))))) e!62328 tp_is_empty!941 setRes!1679 tp!60030))))

(declare-fun condSetEmpty!1679 () Bool)

(assert (=> b!111329 (= condSetEmpty!1679 (= (_2!1150 (h!7195 (minValue!564 (v!13147 (underlying!815 (v!13148 (underlying!816 (cache!755 cacheDown!924)))))))) ((as const (Array Context!210 Bool)) false)))))

(assert (=> b!111300 (= tp!59999 e!62330)))

(assert (= b!111329 b!111331))

(assert (= (and b!111329 condSetEmpty!1679) setIsEmpty!1679))

(assert (= (and b!111329 (not condSetEmpty!1679)) setNonEmpty!1679))

(assert (= setNonEmpty!1679 b!111330))

(assert (= (and b!111300 ((_ is Cons!1798) (minValue!564 (v!13147 (underlying!815 (v!13148 (underlying!816 (cache!755 cacheDown!924)))))))) b!111329))

(declare-fun m!101646 () Bool)

(assert (=> setNonEmpty!1679 m!101646))

(declare-fun m!101648 () Bool)

(assert (=> b!111329 m!101648))

(declare-fun b!111346 () Bool)

(declare-fun e!62345 () Bool)

(declare-fun tp!60055 () Bool)

(assert (=> b!111346 (= e!62345 tp!60055)))

(declare-fun b!111347 () Bool)

(declare-fun e!62344 () Bool)

(declare-fun tp!60051 () Bool)

(assert (=> b!111347 (= e!62344 tp!60051)))

(declare-fun setIsEmpty!1684 () Bool)

(declare-fun setRes!1684 () Bool)

(assert (=> setIsEmpty!1684 setRes!1684))

(declare-fun b!111348 () Bool)

(declare-fun e!62343 () Bool)

(declare-fun tp!60058 () Bool)

(assert (=> b!111348 (= e!62343 tp!60058)))

(declare-fun e!62346 () Bool)

(declare-fun setRes!1685 () Bool)

(declare-fun b!111349 () Bool)

(declare-fun mapValue!1217 () List!1805)

(declare-fun tp!60053 () Bool)

(declare-fun e!62348 () Bool)

(assert (=> b!111349 (= e!62348 (and (inv!2291 (_1!1151 (_1!1152 (h!7196 mapValue!1217)))) e!62346 tp_is_empty!941 setRes!1685 tp!60053))))

(declare-fun condSetEmpty!1685 () Bool)

(assert (=> b!111349 (= condSetEmpty!1685 (= (_2!1152 (h!7196 mapValue!1217)) ((as const (Array Context!210 Bool)) false)))))

(declare-fun condMapEmpty!1217 () Bool)

(declare-fun mapDefault!1217 () List!1805)

(assert (=> mapNonEmpty!1214 (= condMapEmpty!1217 (= mapRest!1213 ((as const (Array (_ BitVec 32) List!1805)) mapDefault!1217)))))

(declare-fun e!62347 () Bool)

(declare-fun mapRes!1217 () Bool)

(assert (=> mapNonEmpty!1214 (= tp!60004 (and e!62347 mapRes!1217))))

(declare-fun mapIsEmpty!1217 () Bool)

(assert (=> mapIsEmpty!1217 mapRes!1217))

(declare-fun setElem!1685 () Context!210)

(declare-fun tp!60054 () Bool)

(declare-fun setNonEmpty!1684 () Bool)

(assert (=> setNonEmpty!1684 (= setRes!1684 (and tp!60054 (inv!2291 setElem!1685) e!62344))))

(declare-fun setRest!1685 () (InoxSet Context!210))

(assert (=> setNonEmpty!1684 (= (_2!1152 (h!7196 mapDefault!1217)) ((_ map or) (store ((as const (Array Context!210 Bool)) false) setElem!1685 true) setRest!1685))))

(declare-fun b!111350 () Bool)

(declare-fun tp!60057 () Bool)

(assert (=> b!111350 (= e!62346 tp!60057)))

(declare-fun tp!60050 () Bool)

(declare-fun setNonEmpty!1685 () Bool)

(declare-fun setElem!1684 () Context!210)

(assert (=> setNonEmpty!1685 (= setRes!1685 (and tp!60050 (inv!2291 setElem!1684) e!62345))))

(declare-fun setRest!1684 () (InoxSet Context!210))

(assert (=> setNonEmpty!1685 (= (_2!1152 (h!7196 mapValue!1217)) ((_ map or) (store ((as const (Array Context!210 Bool)) false) setElem!1684 true) setRest!1684))))

(declare-fun mapNonEmpty!1217 () Bool)

(declare-fun tp!60056 () Bool)

(assert (=> mapNonEmpty!1217 (= mapRes!1217 (and tp!60056 e!62348))))

(declare-fun mapKey!1217 () (_ BitVec 32))

(declare-fun mapRest!1217 () (Array (_ BitVec 32) List!1805))

(assert (=> mapNonEmpty!1217 (= mapRest!1213 (store mapRest!1217 mapKey!1217 mapValue!1217))))

(declare-fun b!111351 () Bool)

(declare-fun tp!60052 () Bool)

(assert (=> b!111351 (= e!62347 (and (inv!2291 (_1!1151 (_1!1152 (h!7196 mapDefault!1217)))) e!62343 tp_is_empty!941 setRes!1684 tp!60052))))

(declare-fun condSetEmpty!1684 () Bool)

(assert (=> b!111351 (= condSetEmpty!1684 (= (_2!1152 (h!7196 mapDefault!1217)) ((as const (Array Context!210 Bool)) false)))))

(declare-fun setIsEmpty!1685 () Bool)

(assert (=> setIsEmpty!1685 setRes!1685))

(assert (= (and mapNonEmpty!1214 condMapEmpty!1217) mapIsEmpty!1217))

(assert (= (and mapNonEmpty!1214 (not condMapEmpty!1217)) mapNonEmpty!1217))

(assert (= b!111349 b!111350))

(assert (= (and b!111349 condSetEmpty!1685) setIsEmpty!1685))

(assert (= (and b!111349 (not condSetEmpty!1685)) setNonEmpty!1685))

(assert (= setNonEmpty!1685 b!111346))

(assert (= (and mapNonEmpty!1217 ((_ is Cons!1799) mapValue!1217)) b!111349))

(assert (= b!111351 b!111348))

(assert (= (and b!111351 condSetEmpty!1684) setIsEmpty!1684))

(assert (= (and b!111351 (not condSetEmpty!1684)) setNonEmpty!1684))

(assert (= setNonEmpty!1684 b!111347))

(assert (= (and mapNonEmpty!1214 ((_ is Cons!1799) mapDefault!1217)) b!111351))

(declare-fun m!101650 () Bool)

(assert (=> b!111349 m!101650))

(declare-fun m!101652 () Bool)

(assert (=> setNonEmpty!1684 m!101652))

(declare-fun m!101654 () Bool)

(assert (=> b!111351 m!101654))

(declare-fun m!101656 () Bool)

(assert (=> setNonEmpty!1685 m!101656))

(declare-fun m!101658 () Bool)

(assert (=> mapNonEmpty!1217 m!101658))

(declare-fun setIsEmpty!1688 () Bool)

(declare-fun setRes!1688 () Bool)

(assert (=> setIsEmpty!1688 setRes!1688))

(declare-fun b!111360 () Bool)

(declare-fun e!62357 () Bool)

(declare-fun tp!60070 () Bool)

(assert (=> b!111360 (= e!62357 tp!60070)))

(declare-fun e!62355 () Bool)

(declare-fun tp!60069 () Bool)

(declare-fun b!111361 () Bool)

(declare-fun e!62356 () Bool)

(assert (=> b!111361 (= e!62355 (and (inv!2291 (_1!1151 (_1!1152 (h!7196 mapValue!1214)))) e!62356 tp_is_empty!941 setRes!1688 tp!60069))))

(declare-fun condSetEmpty!1688 () Bool)

(assert (=> b!111361 (= condSetEmpty!1688 (= (_2!1152 (h!7196 mapValue!1214)) ((as const (Array Context!210 Bool)) false)))))

(assert (=> mapNonEmpty!1214 (= tp!60009 e!62355)))

(declare-fun tp!60068 () Bool)

(declare-fun setNonEmpty!1688 () Bool)

(declare-fun setElem!1688 () Context!210)

(assert (=> setNonEmpty!1688 (= setRes!1688 (and tp!60068 (inv!2291 setElem!1688) e!62357))))

(declare-fun setRest!1688 () (InoxSet Context!210))

(assert (=> setNonEmpty!1688 (= (_2!1152 (h!7196 mapValue!1214)) ((_ map or) (store ((as const (Array Context!210 Bool)) false) setElem!1688 true) setRest!1688))))

(declare-fun b!111362 () Bool)

(declare-fun tp!60067 () Bool)

(assert (=> b!111362 (= e!62356 tp!60067)))

(assert (= b!111361 b!111362))

(assert (= (and b!111361 condSetEmpty!1688) setIsEmpty!1688))

(assert (= (and b!111361 (not condSetEmpty!1688)) setNonEmpty!1688))

(assert (= setNonEmpty!1688 b!111360))

(assert (= (and mapNonEmpty!1214 ((_ is Cons!1799) mapValue!1214)) b!111361))

(declare-fun m!101660 () Bool)

(assert (=> b!111361 m!101660))

(declare-fun m!101662 () Bool)

(assert (=> setNonEmpty!1688 m!101662))

(declare-fun setIsEmpty!1689 () Bool)

(declare-fun setRes!1689 () Bool)

(assert (=> setIsEmpty!1689 setRes!1689))

(declare-fun tp!60075 () Bool)

(declare-fun e!62359 () Bool)

(declare-fun setElem!1689 () Context!210)

(declare-fun setNonEmpty!1689 () Bool)

(assert (=> setNonEmpty!1689 (= setRes!1689 (and tp!60075 (inv!2291 setElem!1689) e!62359))))

(declare-fun setRest!1689 () (InoxSet Context!210))

(assert (=> setNonEmpty!1689 (= (_2!1150 (h!7195 mapDefault!1214)) ((_ map or) (store ((as const (Array Context!210 Bool)) false) setElem!1689 true) setRest!1689))))

(declare-fun b!111364 () Bool)

(declare-fun tp!60071 () Bool)

(assert (=> b!111364 (= e!62359 tp!60071)))

(declare-fun b!111365 () Bool)

(declare-fun e!62358 () Bool)

(declare-fun tp!60072 () Bool)

(assert (=> b!111365 (= e!62358 tp!60072)))

(declare-fun e!62360 () Bool)

(declare-fun b!111363 () Bool)

(declare-fun tp!60073 () Bool)

(declare-fun tp!60074 () Bool)

(assert (=> b!111363 (= e!62360 (and tp!60073 (inv!2291 (_2!1149 (_1!1150 (h!7195 mapDefault!1214)))) e!62358 tp_is_empty!941 setRes!1689 tp!60074))))

(declare-fun condSetEmpty!1689 () Bool)

(assert (=> b!111363 (= condSetEmpty!1689 (= (_2!1150 (h!7195 mapDefault!1214)) ((as const (Array Context!210 Bool)) false)))))

(assert (=> b!111306 (= tp!60001 e!62360)))

(assert (= b!111363 b!111365))

(assert (= (and b!111363 condSetEmpty!1689) setIsEmpty!1689))

(assert (= (and b!111363 (not condSetEmpty!1689)) setNonEmpty!1689))

(assert (= setNonEmpty!1689 b!111364))

(assert (= (and b!111306 ((_ is Cons!1798) mapDefault!1214)) b!111363))

(declare-fun m!101664 () Bool)

(assert (=> setNonEmpty!1689 m!101664))

(declare-fun m!101666 () Bool)

(assert (=> b!111363 m!101666))

(declare-fun b!111370 () Bool)

(declare-fun e!62363 () Bool)

(declare-fun tp!60080 () Bool)

(declare-fun tp!60081 () Bool)

(assert (=> b!111370 (= e!62363 (and tp!60080 tp!60081))))

(assert (=> b!111302 (= tp!60006 e!62363)))

(assert (= (and b!111302 ((_ is Cons!1797) (exprs!605 setElem!1675))) b!111370))

(declare-fun condSetEmpty!1692 () Bool)

(assert (=> setNonEmpty!1675 (= condSetEmpty!1692 (= setRest!1675 ((as const (Array Context!210 Bool)) false)))))

(declare-fun setRes!1692 () Bool)

(assert (=> setNonEmpty!1675 (= tp!60010 setRes!1692)))

(declare-fun setIsEmpty!1692 () Bool)

(assert (=> setIsEmpty!1692 setRes!1692))

(declare-fun setElem!1692 () Context!210)

(declare-fun setNonEmpty!1692 () Bool)

(declare-fun e!62366 () Bool)

(declare-fun tp!60087 () Bool)

(assert (=> setNonEmpty!1692 (= setRes!1692 (and tp!60087 (inv!2291 setElem!1692) e!62366))))

(declare-fun setRest!1692 () (InoxSet Context!210))

(assert (=> setNonEmpty!1692 (= setRest!1675 ((_ map or) (store ((as const (Array Context!210 Bool)) false) setElem!1692 true) setRest!1692))))

(declare-fun b!111375 () Bool)

(declare-fun tp!60086 () Bool)

(assert (=> b!111375 (= e!62366 tp!60086)))

(assert (= (and setNonEmpty!1675 condSetEmpty!1692) setIsEmpty!1692))

(assert (= (and setNonEmpty!1675 (not condSetEmpty!1692)) setNonEmpty!1692))

(assert (= setNonEmpty!1692 b!111375))

(declare-fun m!101668 () Bool)

(assert (=> setNonEmpty!1692 m!101668))

(declare-fun mapNonEmpty!1220 () Bool)

(declare-fun mapRes!1220 () Bool)

(declare-fun tp!60113 () Bool)

(declare-fun e!62381 () Bool)

(assert (=> mapNonEmpty!1220 (= mapRes!1220 (and tp!60113 e!62381))))

(declare-fun mapKey!1220 () (_ BitVec 32))

(declare-fun mapRest!1220 () (Array (_ BitVec 32) List!1804))

(declare-fun mapValue!1220 () List!1804)

(assert (=> mapNonEmpty!1220 (= mapRest!1214 (store mapRest!1220 mapKey!1220 mapValue!1220))))

(declare-fun condMapEmpty!1220 () Bool)

(declare-fun mapDefault!1220 () List!1804)

(assert (=> mapNonEmpty!1213 (= condMapEmpty!1220 (= mapRest!1214 ((as const (Array (_ BitVec 32) List!1804)) mapDefault!1220)))))

(declare-fun e!62384 () Bool)

(assert (=> mapNonEmpty!1213 (= tp!60008 (and e!62384 mapRes!1220))))

(declare-fun b!111390 () Bool)

(declare-fun e!62383 () Bool)

(declare-fun setRes!1697 () Bool)

(declare-fun tp!60120 () Bool)

(declare-fun tp!60112 () Bool)

(assert (=> b!111390 (= e!62381 (and tp!60112 (inv!2291 (_2!1149 (_1!1150 (h!7195 mapValue!1220)))) e!62383 tp_is_empty!941 setRes!1697 tp!60120))))

(declare-fun condSetEmpty!1698 () Bool)

(assert (=> b!111390 (= condSetEmpty!1698 (= (_2!1150 (h!7195 mapValue!1220)) ((as const (Array Context!210 Bool)) false)))))

(declare-fun b!111391 () Bool)

(declare-fun e!62382 () Bool)

(declare-fun tp!60110 () Bool)

(assert (=> b!111391 (= e!62382 tp!60110)))

(declare-fun setIsEmpty!1697 () Bool)

(assert (=> setIsEmpty!1697 setRes!1697))

(declare-fun b!111392 () Bool)

(declare-fun e!62379 () Bool)

(declare-fun tp!60115 () Bool)

(assert (=> b!111392 (= e!62379 tp!60115)))

(declare-fun tp!60118 () Bool)

(declare-fun setRes!1698 () Bool)

(declare-fun b!111393 () Bool)

(declare-fun tp!60111 () Bool)

(assert (=> b!111393 (= e!62384 (and tp!60111 (inv!2291 (_2!1149 (_1!1150 (h!7195 mapDefault!1220)))) e!62379 tp_is_empty!941 setRes!1698 tp!60118))))

(declare-fun condSetEmpty!1697 () Bool)

(assert (=> b!111393 (= condSetEmpty!1697 (= (_2!1150 (h!7195 mapDefault!1220)) ((as const (Array Context!210 Bool)) false)))))

(declare-fun setNonEmpty!1697 () Bool)

(declare-fun setElem!1697 () Context!210)

(declare-fun tp!60117 () Bool)

(assert (=> setNonEmpty!1697 (= setRes!1697 (and tp!60117 (inv!2291 setElem!1697) e!62382))))

(declare-fun setRest!1697 () (InoxSet Context!210))

(assert (=> setNonEmpty!1697 (= (_2!1150 (h!7195 mapValue!1220)) ((_ map or) (store ((as const (Array Context!210 Bool)) false) setElem!1697 true) setRest!1697))))

(declare-fun b!111394 () Bool)

(declare-fun e!62380 () Bool)

(declare-fun tp!60114 () Bool)

(assert (=> b!111394 (= e!62380 tp!60114)))

(declare-fun setIsEmpty!1698 () Bool)

(assert (=> setIsEmpty!1698 setRes!1698))

(declare-fun b!111395 () Bool)

(declare-fun tp!60116 () Bool)

(assert (=> b!111395 (= e!62383 tp!60116)))

(declare-fun setElem!1698 () Context!210)

(declare-fun tp!60119 () Bool)

(declare-fun setNonEmpty!1698 () Bool)

(assert (=> setNonEmpty!1698 (= setRes!1698 (and tp!60119 (inv!2291 setElem!1698) e!62380))))

(declare-fun setRest!1698 () (InoxSet Context!210))

(assert (=> setNonEmpty!1698 (= (_2!1150 (h!7195 mapDefault!1220)) ((_ map or) (store ((as const (Array Context!210 Bool)) false) setElem!1698 true) setRest!1698))))

(declare-fun mapIsEmpty!1220 () Bool)

(assert (=> mapIsEmpty!1220 mapRes!1220))

(assert (= (and mapNonEmpty!1213 condMapEmpty!1220) mapIsEmpty!1220))

(assert (= (and mapNonEmpty!1213 (not condMapEmpty!1220)) mapNonEmpty!1220))

(assert (= b!111390 b!111395))

(assert (= (and b!111390 condSetEmpty!1698) setIsEmpty!1697))

(assert (= (and b!111390 (not condSetEmpty!1698)) setNonEmpty!1697))

(assert (= setNonEmpty!1697 b!111391))

(assert (= (and mapNonEmpty!1220 ((_ is Cons!1798) mapValue!1220)) b!111390))

(assert (= b!111393 b!111392))

(assert (= (and b!111393 condSetEmpty!1697) setIsEmpty!1698))

(assert (= (and b!111393 (not condSetEmpty!1697)) setNonEmpty!1698))

(assert (= setNonEmpty!1698 b!111394))

(assert (= (and mapNonEmpty!1213 ((_ is Cons!1798) mapDefault!1220)) b!111393))

(declare-fun m!101670 () Bool)

(assert (=> setNonEmpty!1697 m!101670))

(declare-fun m!101672 () Bool)

(assert (=> setNonEmpty!1698 m!101672))

(declare-fun m!101674 () Bool)

(assert (=> mapNonEmpty!1220 m!101674))

(declare-fun m!101676 () Bool)

(assert (=> b!111390 m!101676))

(declare-fun m!101678 () Bool)

(assert (=> b!111393 m!101678))

(declare-fun setIsEmpty!1699 () Bool)

(declare-fun setRes!1699 () Bool)

(assert (=> setIsEmpty!1699 setRes!1699))

(declare-fun setElem!1699 () Context!210)

(declare-fun setNonEmpty!1699 () Bool)

(declare-fun e!62386 () Bool)

(declare-fun tp!60125 () Bool)

(assert (=> setNonEmpty!1699 (= setRes!1699 (and tp!60125 (inv!2291 setElem!1699) e!62386))))

(declare-fun setRest!1699 () (InoxSet Context!210))

(assert (=> setNonEmpty!1699 (= (_2!1150 (h!7195 mapValue!1213)) ((_ map or) (store ((as const (Array Context!210 Bool)) false) setElem!1699 true) setRest!1699))))

(declare-fun b!111397 () Bool)

(declare-fun tp!60121 () Bool)

(assert (=> b!111397 (= e!62386 tp!60121)))

(declare-fun b!111398 () Bool)

(declare-fun e!62385 () Bool)

(declare-fun tp!60122 () Bool)

(assert (=> b!111398 (= e!62385 tp!60122)))

(declare-fun e!62387 () Bool)

(declare-fun tp!60123 () Bool)

(declare-fun tp!60124 () Bool)

(declare-fun b!111396 () Bool)

(assert (=> b!111396 (= e!62387 (and tp!60123 (inv!2291 (_2!1149 (_1!1150 (h!7195 mapValue!1213)))) e!62385 tp_is_empty!941 setRes!1699 tp!60124))))

(declare-fun condSetEmpty!1699 () Bool)

(assert (=> b!111396 (= condSetEmpty!1699 (= (_2!1150 (h!7195 mapValue!1213)) ((as const (Array Context!210 Bool)) false)))))

(assert (=> mapNonEmpty!1213 (= tp!60005 e!62387)))

(assert (= b!111396 b!111398))

(assert (= (and b!111396 condSetEmpty!1699) setIsEmpty!1699))

(assert (= (and b!111396 (not condSetEmpty!1699)) setNonEmpty!1699))

(assert (= setNonEmpty!1699 b!111397))

(assert (= (and mapNonEmpty!1213 ((_ is Cons!1798) mapValue!1213)) b!111396))

(declare-fun m!101680 () Bool)

(assert (=> setNonEmpty!1699 m!101680))

(declare-fun m!101682 () Bool)

(assert (=> b!111396 m!101682))

(declare-fun setIsEmpty!1700 () Bool)

(declare-fun setRes!1700 () Bool)

(assert (=> setIsEmpty!1700 setRes!1700))

(declare-fun b!111399 () Bool)

(declare-fun e!62390 () Bool)

(declare-fun tp!60129 () Bool)

(assert (=> b!111399 (= e!62390 tp!60129)))

(declare-fun b!111400 () Bool)

(declare-fun e!62389 () Bool)

(declare-fun tp!60128 () Bool)

(declare-fun e!62388 () Bool)

(assert (=> b!111400 (= e!62388 (and (inv!2291 (_1!1151 (_1!1152 (h!7196 (zeroValue!565 (v!13149 (underlying!817 (v!13150 (underlying!818 (cache!756 cacheUp!805)))))))))) e!62389 tp_is_empty!941 setRes!1700 tp!60128))))

(declare-fun condSetEmpty!1700 () Bool)

(assert (=> b!111400 (= condSetEmpty!1700 (= (_2!1152 (h!7196 (zeroValue!565 (v!13149 (underlying!817 (v!13150 (underlying!818 (cache!756 cacheUp!805)))))))) ((as const (Array Context!210 Bool)) false)))))

(assert (=> b!111304 (= tp!59997 e!62388)))

(declare-fun tp!60127 () Bool)

(declare-fun setNonEmpty!1700 () Bool)

(declare-fun setElem!1700 () Context!210)

(assert (=> setNonEmpty!1700 (= setRes!1700 (and tp!60127 (inv!2291 setElem!1700) e!62390))))

(declare-fun setRest!1700 () (InoxSet Context!210))

(assert (=> setNonEmpty!1700 (= (_2!1152 (h!7196 (zeroValue!565 (v!13149 (underlying!817 (v!13150 (underlying!818 (cache!756 cacheUp!805)))))))) ((_ map or) (store ((as const (Array Context!210 Bool)) false) setElem!1700 true) setRest!1700))))

(declare-fun b!111401 () Bool)

(declare-fun tp!60126 () Bool)

(assert (=> b!111401 (= e!62389 tp!60126)))

(assert (= b!111400 b!111401))

(assert (= (and b!111400 condSetEmpty!1700) setIsEmpty!1700))

(assert (= (and b!111400 (not condSetEmpty!1700)) setNonEmpty!1700))

(assert (= setNonEmpty!1700 b!111399))

(assert (= (and b!111304 ((_ is Cons!1799) (zeroValue!565 (v!13149 (underlying!817 (v!13150 (underlying!818 (cache!756 cacheUp!805)))))))) b!111400))

(declare-fun m!101684 () Bool)

(assert (=> b!111400 m!101684))

(declare-fun m!101686 () Bool)

(assert (=> setNonEmpty!1700 m!101686))

(declare-fun setIsEmpty!1701 () Bool)

(declare-fun setRes!1701 () Bool)

(assert (=> setIsEmpty!1701 setRes!1701))

(declare-fun b!111402 () Bool)

(declare-fun e!62393 () Bool)

(declare-fun tp!60133 () Bool)

(assert (=> b!111402 (= e!62393 tp!60133)))

(declare-fun b!111403 () Bool)

(declare-fun e!62391 () Bool)

(declare-fun tp!60132 () Bool)

(declare-fun e!62392 () Bool)

(assert (=> b!111403 (= e!62391 (and (inv!2291 (_1!1151 (_1!1152 (h!7196 (minValue!565 (v!13149 (underlying!817 (v!13150 (underlying!818 (cache!756 cacheUp!805)))))))))) e!62392 tp_is_empty!941 setRes!1701 tp!60132))))

(declare-fun condSetEmpty!1701 () Bool)

(assert (=> b!111403 (= condSetEmpty!1701 (= (_2!1152 (h!7196 (minValue!565 (v!13149 (underlying!817 (v!13150 (underlying!818 (cache!756 cacheUp!805)))))))) ((as const (Array Context!210 Bool)) false)))))

(assert (=> b!111304 (= tp!60003 e!62391)))

(declare-fun tp!60131 () Bool)

(declare-fun setNonEmpty!1701 () Bool)

(declare-fun setElem!1701 () Context!210)

(assert (=> setNonEmpty!1701 (= setRes!1701 (and tp!60131 (inv!2291 setElem!1701) e!62393))))

(declare-fun setRest!1701 () (InoxSet Context!210))

(assert (=> setNonEmpty!1701 (= (_2!1152 (h!7196 (minValue!565 (v!13149 (underlying!817 (v!13150 (underlying!818 (cache!756 cacheUp!805)))))))) ((_ map or) (store ((as const (Array Context!210 Bool)) false) setElem!1701 true) setRest!1701))))

(declare-fun b!111404 () Bool)

(declare-fun tp!60130 () Bool)

(assert (=> b!111404 (= e!62392 tp!60130)))

(assert (= b!111403 b!111404))

(assert (= (and b!111403 condSetEmpty!1701) setIsEmpty!1701))

(assert (= (and b!111403 (not condSetEmpty!1701)) setNonEmpty!1701))

(assert (= setNonEmpty!1701 b!111402))

(assert (= (and b!111304 ((_ is Cons!1799) (minValue!565 (v!13149 (underlying!817 (v!13150 (underlying!818 (cache!756 cacheUp!805)))))))) b!111403))

(declare-fun m!101688 () Bool)

(assert (=> b!111403 m!101688))

(declare-fun m!101690 () Bool)

(assert (=> setNonEmpty!1701 m!101690))

(declare-fun setIsEmpty!1702 () Bool)

(declare-fun setRes!1702 () Bool)

(assert (=> setIsEmpty!1702 setRes!1702))

(declare-fun b!111405 () Bool)

(declare-fun e!62396 () Bool)

(declare-fun tp!60137 () Bool)

(assert (=> b!111405 (= e!62396 tp!60137)))

(declare-fun tp!60136 () Bool)

(declare-fun e!62394 () Bool)

(declare-fun e!62395 () Bool)

(declare-fun b!111406 () Bool)

(assert (=> b!111406 (= e!62394 (and (inv!2291 (_1!1151 (_1!1152 (h!7196 mapDefault!1213)))) e!62395 tp_is_empty!941 setRes!1702 tp!60136))))

(declare-fun condSetEmpty!1702 () Bool)

(assert (=> b!111406 (= condSetEmpty!1702 (= (_2!1152 (h!7196 mapDefault!1213)) ((as const (Array Context!210 Bool)) false)))))

(assert (=> b!111296 (= tp!60011 e!62394)))

(declare-fun setElem!1702 () Context!210)

(declare-fun setNonEmpty!1702 () Bool)

(declare-fun tp!60135 () Bool)

(assert (=> setNonEmpty!1702 (= setRes!1702 (and tp!60135 (inv!2291 setElem!1702) e!62396))))

(declare-fun setRest!1702 () (InoxSet Context!210))

(assert (=> setNonEmpty!1702 (= (_2!1152 (h!7196 mapDefault!1213)) ((_ map or) (store ((as const (Array Context!210 Bool)) false) setElem!1702 true) setRest!1702))))

(declare-fun b!111407 () Bool)

(declare-fun tp!60134 () Bool)

(assert (=> b!111407 (= e!62395 tp!60134)))

(assert (= b!111406 b!111407))

(assert (= (and b!111406 condSetEmpty!1702) setIsEmpty!1702))

(assert (= (and b!111406 (not condSetEmpty!1702)) setNonEmpty!1702))

(assert (= setNonEmpty!1702 b!111405))

(assert (= (and b!111296 ((_ is Cons!1799) mapDefault!1213)) b!111406))

(declare-fun m!101692 () Bool)

(assert (=> b!111406 m!101692))

(declare-fun m!101694 () Bool)

(assert (=> setNonEmpty!1702 m!101694))

(check-sat (not d!27977) b_and!5585 (not b_next!3457) (not setNonEmpty!1702) (not b_next!3455) (not b!111396) b_and!5587 (not b!111406) (not setNonEmpty!1692) (not b!111346) (not b!111370) (not b!111362) b_and!5589 (not b!111392) (not b!111365) (not b!111326) (not b_next!3453) (not b!111360) (not setNonEmpty!1699) tp_is_empty!941 (not b!111401) (not b!111330) (not b!111394) (not b!111391) (not b!111397) (not b!111407) (not setNonEmpty!1678) (not b!111395) (not setNonEmpty!1700) b_and!5583 (not setNonEmpty!1697) (not b!111350) (not mapNonEmpty!1220) (not b!111349) (not b!111361) (not setNonEmpty!1689) (not setNonEmpty!1698) (not b!111404) (not b!111327) (not b!111328) (not b!111347) (not b!111400) (not b!111399) (not b!111348) (not b!111398) (not b!111329) (not setNonEmpty!1701) (not b!111317) (not b!111364) (not b!111375) (not b!111390) (not setNonEmpty!1679) (not setNonEmpty!1688) (not b!111363) (not setNonEmpty!1684) (not b!111351) (not b!111402) (not b!111393) (not b!111405) (not b!111331) (not b!111403) (not b!111314) (not setNonEmpty!1685) (not d!27985) (not d!27979) (not mapNonEmpty!1217) (not b_next!3459))
(check-sat b_and!5589 (not b_next!3453) b_and!5583 b_and!5585 (not b_next!3457) (not b_next!3455) b_and!5587 (not b_next!3459))
(get-model)

(declare-fun d!27991 () Bool)

(declare-fun res!53704 () Bool)

(declare-fun e!62399 () Bool)

(assert (=> d!27991 (=> (not res!53704) (not e!62399))))

(declare-fun valid!289 (MutableMap!305) Bool)

(assert (=> d!27991 (= res!53704 (valid!289 (cache!756 cacheUp!805)))))

(assert (=> d!27991 (= (validCacheMapUp!26 (cache!756 cacheUp!805)) e!62399)))

(declare-fun b!111412 () Bool)

(declare-fun res!53705 () Bool)

(assert (=> b!111412 (=> (not res!53705) (not e!62399))))

(declare-fun invariantList!29 (List!1805) Bool)

(declare-datatypes ((ListMap!81 0))(
  ( (ListMap!82 (toList!265 List!1805)) )
))
(declare-fun map!435 (MutableMap!305) ListMap!81)

(assert (=> b!111412 (= res!53705 (invariantList!29 (toList!265 (map!435 (cache!756 cacheUp!805)))))))

(declare-fun b!111413 () Bool)

(declare-fun lambda!3004 () Int)

(declare-fun forall!342 (List!1805 Int) Bool)

(assert (=> b!111413 (= e!62399 (forall!342 (toList!265 (map!435 (cache!756 cacheUp!805))) lambda!3004))))

(assert (= (and d!27991 res!53704) b!111412))

(assert (= (and b!111412 res!53705) b!111413))

(declare-fun m!101697 () Bool)

(assert (=> d!27991 m!101697))

(declare-fun m!101699 () Bool)

(assert (=> b!111412 m!101699))

(declare-fun m!101701 () Bool)

(assert (=> b!111412 m!101701))

(assert (=> b!111413 m!101699))

(declare-fun m!101703 () Bool)

(assert (=> b!111413 m!101703))

(assert (=> b!111314 d!27991))

(declare-fun bs!11388 () Bool)

(declare-fun d!27993 () Bool)

(assert (= bs!11388 (and d!27993 d!27985)))

(declare-fun lambda!3005 () Int)

(assert (=> bs!11388 (= lambda!3005 lambda!3001)))

(assert (=> d!27993 (= (inv!2291 setElem!1702) (forall!341 (exprs!605 setElem!1702) lambda!3005))))

(declare-fun bs!11389 () Bool)

(assert (= bs!11389 d!27993))

(declare-fun m!101705 () Bool)

(assert (=> bs!11389 m!101705))

(assert (=> setNonEmpty!1702 d!27993))

(declare-fun bs!11390 () Bool)

(declare-fun d!27995 () Bool)

(assert (= bs!11390 (and d!27995 d!27985)))

(declare-fun lambda!3006 () Int)

(assert (=> bs!11390 (= lambda!3006 lambda!3001)))

(declare-fun bs!11391 () Bool)

(assert (= bs!11391 (and d!27995 d!27993)))

(assert (=> bs!11391 (= lambda!3006 lambda!3005)))

(assert (=> d!27995 (= (inv!2291 (_1!1151 (_1!1152 (h!7196 (minValue!565 (v!13149 (underlying!817 (v!13150 (underlying!818 (cache!756 cacheUp!805)))))))))) (forall!341 (exprs!605 (_1!1151 (_1!1152 (h!7196 (minValue!565 (v!13149 (underlying!817 (v!13150 (underlying!818 (cache!756 cacheUp!805)))))))))) lambda!3006))))

(declare-fun bs!11392 () Bool)

(assert (= bs!11392 d!27995))

(declare-fun m!101707 () Bool)

(assert (=> bs!11392 m!101707))

(assert (=> b!111403 d!27995))

(declare-fun bs!11393 () Bool)

(declare-fun d!27997 () Bool)

(assert (= bs!11393 (and d!27997 d!27985)))

(declare-fun lambda!3007 () Int)

(assert (=> bs!11393 (= lambda!3007 lambda!3001)))

(declare-fun bs!11394 () Bool)

(assert (= bs!11394 (and d!27997 d!27993)))

(assert (=> bs!11394 (= lambda!3007 lambda!3005)))

(declare-fun bs!11395 () Bool)

(assert (= bs!11395 (and d!27997 d!27995)))

(assert (=> bs!11395 (= lambda!3007 lambda!3006)))

(assert (=> d!27997 (= (inv!2291 setElem!1701) (forall!341 (exprs!605 setElem!1701) lambda!3007))))

(declare-fun bs!11396 () Bool)

(assert (= bs!11396 d!27997))

(declare-fun m!101709 () Bool)

(assert (=> bs!11396 m!101709))

(assert (=> setNonEmpty!1701 d!27997))

(declare-fun bs!11397 () Bool)

(declare-fun d!27999 () Bool)

(assert (= bs!11397 (and d!27999 d!27985)))

(declare-fun lambda!3008 () Int)

(assert (=> bs!11397 (= lambda!3008 lambda!3001)))

(declare-fun bs!11398 () Bool)

(assert (= bs!11398 (and d!27999 d!27993)))

(assert (=> bs!11398 (= lambda!3008 lambda!3005)))

(declare-fun bs!11399 () Bool)

(assert (= bs!11399 (and d!27999 d!27995)))

(assert (=> bs!11399 (= lambda!3008 lambda!3006)))

(declare-fun bs!11400 () Bool)

(assert (= bs!11400 (and d!27999 d!27997)))

(assert (=> bs!11400 (= lambda!3008 lambda!3007)))

(assert (=> d!27999 (= (inv!2291 (_1!1151 (_1!1152 (h!7196 (zeroValue!565 (v!13149 (underlying!817 (v!13150 (underlying!818 (cache!756 cacheUp!805)))))))))) (forall!341 (exprs!605 (_1!1151 (_1!1152 (h!7196 (zeroValue!565 (v!13149 (underlying!817 (v!13150 (underlying!818 (cache!756 cacheUp!805)))))))))) lambda!3008))))

(declare-fun bs!11401 () Bool)

(assert (= bs!11401 d!27999))

(declare-fun m!101711 () Bool)

(assert (=> bs!11401 m!101711))

(assert (=> b!111400 d!27999))

(declare-fun bs!11402 () Bool)

(declare-fun d!28001 () Bool)

(assert (= bs!11402 (and d!28001 d!27997)))

(declare-fun lambda!3009 () Int)

(assert (=> bs!11402 (= lambda!3009 lambda!3007)))

(declare-fun bs!11403 () Bool)

(assert (= bs!11403 (and d!28001 d!27993)))

(assert (=> bs!11403 (= lambda!3009 lambda!3005)))

(declare-fun bs!11404 () Bool)

(assert (= bs!11404 (and d!28001 d!27995)))

(assert (=> bs!11404 (= lambda!3009 lambda!3006)))

(declare-fun bs!11405 () Bool)

(assert (= bs!11405 (and d!28001 d!27985)))

(assert (=> bs!11405 (= lambda!3009 lambda!3001)))

(declare-fun bs!11406 () Bool)

(assert (= bs!11406 (and d!28001 d!27999)))

(assert (=> bs!11406 (= lambda!3009 lambda!3008)))

(assert (=> d!28001 (= (inv!2291 setElem!1698) (forall!341 (exprs!605 setElem!1698) lambda!3009))))

(declare-fun bs!11407 () Bool)

(assert (= bs!11407 d!28001))

(declare-fun m!101713 () Bool)

(assert (=> bs!11407 m!101713))

(assert (=> setNonEmpty!1698 d!28001))

(declare-fun d!28003 () Bool)

(declare-fun res!53710 () Bool)

(declare-fun e!62404 () Bool)

(assert (=> d!28003 (=> res!53710 e!62404)))

(assert (=> d!28003 (= res!53710 ((_ is Nil!1797) (exprs!605 setElem!1675)))))

(assert (=> d!28003 (= (forall!341 (exprs!605 setElem!1675) lambda!3001) e!62404)))

(declare-fun b!111418 () Bool)

(declare-fun e!62405 () Bool)

(assert (=> b!111418 (= e!62404 e!62405)))

(declare-fun res!53711 () Bool)

(assert (=> b!111418 (=> (not res!53711) (not e!62405))))

(declare-fun dynLambda!744 (Int Regex!443) Bool)

(assert (=> b!111418 (= res!53711 (dynLambda!744 lambda!3001 (h!7194 (exprs!605 setElem!1675))))))

(declare-fun b!111419 () Bool)

(assert (=> b!111419 (= e!62405 (forall!341 (t!22280 (exprs!605 setElem!1675)) lambda!3001))))

(assert (= (and d!28003 (not res!53710)) b!111418))

(assert (= (and b!111418 res!53711) b!111419))

(declare-fun b_lambda!1701 () Bool)

(assert (=> (not b_lambda!1701) (not b!111418)))

(declare-fun m!101715 () Bool)

(assert (=> b!111418 m!101715))

(declare-fun m!101717 () Bool)

(assert (=> b!111419 m!101717))

(assert (=> d!27985 d!28003))

(declare-fun bs!11408 () Bool)

(declare-fun d!28005 () Bool)

(assert (= bs!11408 (and d!28005 d!28001)))

(declare-fun lambda!3010 () Int)

(assert (=> bs!11408 (= lambda!3010 lambda!3009)))

(declare-fun bs!11409 () Bool)

(assert (= bs!11409 (and d!28005 d!27997)))

(assert (=> bs!11409 (= lambda!3010 lambda!3007)))

(declare-fun bs!11410 () Bool)

(assert (= bs!11410 (and d!28005 d!27993)))

(assert (=> bs!11410 (= lambda!3010 lambda!3005)))

(declare-fun bs!11411 () Bool)

(assert (= bs!11411 (and d!28005 d!27995)))

(assert (=> bs!11411 (= lambda!3010 lambda!3006)))

(declare-fun bs!11412 () Bool)

(assert (= bs!11412 (and d!28005 d!27985)))

(assert (=> bs!11412 (= lambda!3010 lambda!3001)))

(declare-fun bs!11413 () Bool)

(assert (= bs!11413 (and d!28005 d!27999)))

(assert (=> bs!11413 (= lambda!3010 lambda!3008)))

(assert (=> d!28005 (= (inv!2291 (_1!1151 (_1!1152 (h!7196 mapDefault!1213)))) (forall!341 (exprs!605 (_1!1151 (_1!1152 (h!7196 mapDefault!1213)))) lambda!3010))))

(declare-fun bs!11414 () Bool)

(assert (= bs!11414 d!28005))

(declare-fun m!101719 () Bool)

(assert (=> bs!11414 m!101719))

(assert (=> b!111406 d!28005))

(declare-fun bs!11415 () Bool)

(declare-fun d!28007 () Bool)

(assert (= bs!11415 (and d!28007 d!28001)))

(declare-fun lambda!3011 () Int)

(assert (=> bs!11415 (= lambda!3011 lambda!3009)))

(declare-fun bs!11416 () Bool)

(assert (= bs!11416 (and d!28007 d!27997)))

(assert (=> bs!11416 (= lambda!3011 lambda!3007)))

(declare-fun bs!11417 () Bool)

(assert (= bs!11417 (and d!28007 d!28005)))

(assert (=> bs!11417 (= lambda!3011 lambda!3010)))

(declare-fun bs!11418 () Bool)

(assert (= bs!11418 (and d!28007 d!27993)))

(assert (=> bs!11418 (= lambda!3011 lambda!3005)))

(declare-fun bs!11419 () Bool)

(assert (= bs!11419 (and d!28007 d!27995)))

(assert (=> bs!11419 (= lambda!3011 lambda!3006)))

(declare-fun bs!11420 () Bool)

(assert (= bs!11420 (and d!28007 d!27985)))

(assert (=> bs!11420 (= lambda!3011 lambda!3001)))

(declare-fun bs!11421 () Bool)

(assert (= bs!11421 (and d!28007 d!27999)))

(assert (=> bs!11421 (= lambda!3011 lambda!3008)))

(assert (=> d!28007 (= (inv!2291 setElem!1697) (forall!341 (exprs!605 setElem!1697) lambda!3011))))

(declare-fun bs!11422 () Bool)

(assert (= bs!11422 d!28007))

(declare-fun m!101721 () Bool)

(assert (=> bs!11422 m!101721))

(assert (=> setNonEmpty!1697 d!28007))

(declare-fun bs!11423 () Bool)

(declare-fun d!28009 () Bool)

(assert (= bs!11423 (and d!28009 d!28001)))

(declare-fun lambda!3012 () Int)

(assert (=> bs!11423 (= lambda!3012 lambda!3009)))

(declare-fun bs!11424 () Bool)

(assert (= bs!11424 (and d!28009 d!27997)))

(assert (=> bs!11424 (= lambda!3012 lambda!3007)))

(declare-fun bs!11425 () Bool)

(assert (= bs!11425 (and d!28009 d!28005)))

(assert (=> bs!11425 (= lambda!3012 lambda!3010)))

(declare-fun bs!11426 () Bool)

(assert (= bs!11426 (and d!28009 d!27993)))

(assert (=> bs!11426 (= lambda!3012 lambda!3005)))

(declare-fun bs!11427 () Bool)

(assert (= bs!11427 (and d!28009 d!27995)))

(assert (=> bs!11427 (= lambda!3012 lambda!3006)))

(declare-fun bs!11428 () Bool)

(assert (= bs!11428 (and d!28009 d!28007)))

(assert (=> bs!11428 (= lambda!3012 lambda!3011)))

(declare-fun bs!11429 () Bool)

(assert (= bs!11429 (and d!28009 d!27985)))

(assert (=> bs!11429 (= lambda!3012 lambda!3001)))

(declare-fun bs!11430 () Bool)

(assert (= bs!11430 (and d!28009 d!27999)))

(assert (=> bs!11430 (= lambda!3012 lambda!3008)))

(assert (=> d!28009 (= (inv!2291 (_2!1149 (_1!1150 (h!7195 mapDefault!1214)))) (forall!341 (exprs!605 (_2!1149 (_1!1150 (h!7195 mapDefault!1214)))) lambda!3012))))

(declare-fun bs!11431 () Bool)

(assert (= bs!11431 d!28009))

(declare-fun m!101723 () Bool)

(assert (=> bs!11431 m!101723))

(assert (=> b!111363 d!28009))

(declare-fun d!28011 () Bool)

(declare-fun res!53718 () Bool)

(declare-fun e!62410 () Bool)

(assert (=> d!28011 (=> (not res!53718) (not e!62410))))

(declare-fun valid!290 (MutableMap!304) Bool)

(assert (=> d!28011 (= res!53718 (valid!290 (cache!755 cacheDown!924)))))

(assert (=> d!28011 (= (validCacheMapDown!29 (cache!755 cacheDown!924)) e!62410)))

(declare-fun b!111426 () Bool)

(declare-fun res!53719 () Bool)

(assert (=> b!111426 (=> (not res!53719) (not e!62410))))

(declare-fun invariantList!30 (List!1804) Bool)

(declare-datatypes ((ListMap!83 0))(
  ( (ListMap!84 (toList!266 List!1804)) )
))
(declare-fun map!436 (MutableMap!304) ListMap!83)

(assert (=> b!111426 (= res!53719 (invariantList!30 (toList!266 (map!436 (cache!755 cacheDown!924)))))))

(declare-fun b!111427 () Bool)

(declare-fun lambda!3015 () Int)

(declare-fun forall!343 (List!1804 Int) Bool)

(assert (=> b!111427 (= e!62410 (forall!343 (toList!266 (map!436 (cache!755 cacheDown!924))) lambda!3015))))

(assert (= (and d!28011 res!53718) b!111426))

(assert (= (and b!111426 res!53719) b!111427))

(declare-fun m!101726 () Bool)

(assert (=> d!28011 m!101726))

(declare-fun m!101728 () Bool)

(assert (=> b!111426 m!101728))

(declare-fun m!101730 () Bool)

(assert (=> b!111426 m!101730))

(assert (=> b!111427 m!101728))

(declare-fun m!101732 () Bool)

(assert (=> b!111427 m!101732))

(assert (=> b!111317 d!28011))

(declare-fun bs!11432 () Bool)

(declare-fun d!28013 () Bool)

(assert (= bs!11432 (and d!28013 d!28001)))

(declare-fun lambda!3016 () Int)

(assert (=> bs!11432 (= lambda!3016 lambda!3009)))

(declare-fun bs!11433 () Bool)

(assert (= bs!11433 (and d!28013 d!28009)))

(assert (=> bs!11433 (= lambda!3016 lambda!3012)))

(declare-fun bs!11434 () Bool)

(assert (= bs!11434 (and d!28013 d!27997)))

(assert (=> bs!11434 (= lambda!3016 lambda!3007)))

(declare-fun bs!11435 () Bool)

(assert (= bs!11435 (and d!28013 d!28005)))

(assert (=> bs!11435 (= lambda!3016 lambda!3010)))

(declare-fun bs!11436 () Bool)

(assert (= bs!11436 (and d!28013 d!27993)))

(assert (=> bs!11436 (= lambda!3016 lambda!3005)))

(declare-fun bs!11437 () Bool)

(assert (= bs!11437 (and d!28013 d!27995)))

(assert (=> bs!11437 (= lambda!3016 lambda!3006)))

(declare-fun bs!11438 () Bool)

(assert (= bs!11438 (and d!28013 d!28007)))

(assert (=> bs!11438 (= lambda!3016 lambda!3011)))

(declare-fun bs!11439 () Bool)

(assert (= bs!11439 (and d!28013 d!27985)))

(assert (=> bs!11439 (= lambda!3016 lambda!3001)))

(declare-fun bs!11440 () Bool)

(assert (= bs!11440 (and d!28013 d!27999)))

(assert (=> bs!11440 (= lambda!3016 lambda!3008)))

(assert (=> d!28013 (= (inv!2291 (_1!1151 (_1!1152 (h!7196 mapValue!1214)))) (forall!341 (exprs!605 (_1!1151 (_1!1152 (h!7196 mapValue!1214)))) lambda!3016))))

(declare-fun bs!11441 () Bool)

(assert (= bs!11441 d!28013))

(declare-fun m!101734 () Bool)

(assert (=> bs!11441 m!101734))

(assert (=> b!111361 d!28013))

(declare-fun bs!11442 () Bool)

(declare-fun d!28015 () Bool)

(assert (= bs!11442 (and d!28015 d!28001)))

(declare-fun lambda!3017 () Int)

(assert (=> bs!11442 (= lambda!3017 lambda!3009)))

(declare-fun bs!11443 () Bool)

(assert (= bs!11443 (and d!28015 d!28009)))

(assert (=> bs!11443 (= lambda!3017 lambda!3012)))

(declare-fun bs!11444 () Bool)

(assert (= bs!11444 (and d!28015 d!27997)))

(assert (=> bs!11444 (= lambda!3017 lambda!3007)))

(declare-fun bs!11445 () Bool)

(assert (= bs!11445 (and d!28015 d!28005)))

(assert (=> bs!11445 (= lambda!3017 lambda!3010)))

(declare-fun bs!11446 () Bool)

(assert (= bs!11446 (and d!28015 d!27993)))

(assert (=> bs!11446 (= lambda!3017 lambda!3005)))

(declare-fun bs!11447 () Bool)

(assert (= bs!11447 (and d!28015 d!27995)))

(assert (=> bs!11447 (= lambda!3017 lambda!3006)))

(declare-fun bs!11448 () Bool)

(assert (= bs!11448 (and d!28015 d!28007)))

(assert (=> bs!11448 (= lambda!3017 lambda!3011)))

(declare-fun bs!11449 () Bool)

(assert (= bs!11449 (and d!28015 d!28013)))

(assert (=> bs!11449 (= lambda!3017 lambda!3016)))

(declare-fun bs!11450 () Bool)

(assert (= bs!11450 (and d!28015 d!27985)))

(assert (=> bs!11450 (= lambda!3017 lambda!3001)))

(declare-fun bs!11451 () Bool)

(assert (= bs!11451 (and d!28015 d!27999)))

(assert (=> bs!11451 (= lambda!3017 lambda!3008)))

(assert (=> d!28015 (= (inv!2291 setElem!1688) (forall!341 (exprs!605 setElem!1688) lambda!3017))))

(declare-fun bs!11452 () Bool)

(assert (= bs!11452 d!28015))

(declare-fun m!101736 () Bool)

(assert (=> bs!11452 m!101736))

(assert (=> setNonEmpty!1688 d!28015))

(declare-fun bs!11453 () Bool)

(declare-fun d!28017 () Bool)

(assert (= bs!11453 (and d!28017 d!28001)))

(declare-fun lambda!3018 () Int)

(assert (=> bs!11453 (= lambda!3018 lambda!3009)))

(declare-fun bs!11454 () Bool)

(assert (= bs!11454 (and d!28017 d!28009)))

(assert (=> bs!11454 (= lambda!3018 lambda!3012)))

(declare-fun bs!11455 () Bool)

(assert (= bs!11455 (and d!28017 d!27997)))

(assert (=> bs!11455 (= lambda!3018 lambda!3007)))

(declare-fun bs!11456 () Bool)

(assert (= bs!11456 (and d!28017 d!28005)))

(assert (=> bs!11456 (= lambda!3018 lambda!3010)))

(declare-fun bs!11457 () Bool)

(assert (= bs!11457 (and d!28017 d!27993)))

(assert (=> bs!11457 (= lambda!3018 lambda!3005)))

(declare-fun bs!11458 () Bool)

(assert (= bs!11458 (and d!28017 d!27995)))

(assert (=> bs!11458 (= lambda!3018 lambda!3006)))

(declare-fun bs!11459 () Bool)

(assert (= bs!11459 (and d!28017 d!28007)))

(assert (=> bs!11459 (= lambda!3018 lambda!3011)))

(declare-fun bs!11460 () Bool)

(assert (= bs!11460 (and d!28017 d!28013)))

(assert (=> bs!11460 (= lambda!3018 lambda!3016)))

(declare-fun bs!11461 () Bool)

(assert (= bs!11461 (and d!28017 d!28015)))

(assert (=> bs!11461 (= lambda!3018 lambda!3017)))

(declare-fun bs!11462 () Bool)

(assert (= bs!11462 (and d!28017 d!27985)))

(assert (=> bs!11462 (= lambda!3018 lambda!3001)))

(declare-fun bs!11463 () Bool)

(assert (= bs!11463 (and d!28017 d!27999)))

(assert (=> bs!11463 (= lambda!3018 lambda!3008)))

(assert (=> d!28017 (= (inv!2291 (_1!1151 (_1!1152 (h!7196 mapDefault!1217)))) (forall!341 (exprs!605 (_1!1151 (_1!1152 (h!7196 mapDefault!1217)))) lambda!3018))))

(declare-fun bs!11464 () Bool)

(assert (= bs!11464 d!28017))

(declare-fun m!101738 () Bool)

(assert (=> bs!11464 m!101738))

(assert (=> b!111351 d!28017))

(declare-fun bs!11465 () Bool)

(declare-fun d!28019 () Bool)

(assert (= bs!11465 (and d!28019 d!28001)))

(declare-fun lambda!3019 () Int)

(assert (=> bs!11465 (= lambda!3019 lambda!3009)))

(declare-fun bs!11466 () Bool)

(assert (= bs!11466 (and d!28019 d!28009)))

(assert (=> bs!11466 (= lambda!3019 lambda!3012)))

(declare-fun bs!11467 () Bool)

(assert (= bs!11467 (and d!28019 d!27997)))

(assert (=> bs!11467 (= lambda!3019 lambda!3007)))

(declare-fun bs!11468 () Bool)

(assert (= bs!11468 (and d!28019 d!28005)))

(assert (=> bs!11468 (= lambda!3019 lambda!3010)))

(declare-fun bs!11469 () Bool)

(assert (= bs!11469 (and d!28019 d!27993)))

(assert (=> bs!11469 (= lambda!3019 lambda!3005)))

(declare-fun bs!11470 () Bool)

(assert (= bs!11470 (and d!28019 d!27995)))

(assert (=> bs!11470 (= lambda!3019 lambda!3006)))

(declare-fun bs!11471 () Bool)

(assert (= bs!11471 (and d!28019 d!28013)))

(assert (=> bs!11471 (= lambda!3019 lambda!3016)))

(declare-fun bs!11472 () Bool)

(assert (= bs!11472 (and d!28019 d!28015)))

(assert (=> bs!11472 (= lambda!3019 lambda!3017)))

(declare-fun bs!11473 () Bool)

(assert (= bs!11473 (and d!28019 d!27985)))

(assert (=> bs!11473 (= lambda!3019 lambda!3001)))

(declare-fun bs!11474 () Bool)

(assert (= bs!11474 (and d!28019 d!27999)))

(assert (=> bs!11474 (= lambda!3019 lambda!3008)))

(declare-fun bs!11475 () Bool)

(assert (= bs!11475 (and d!28019 d!28007)))

(assert (=> bs!11475 (= lambda!3019 lambda!3011)))

(declare-fun bs!11476 () Bool)

(assert (= bs!11476 (and d!28019 d!28017)))

(assert (=> bs!11476 (= lambda!3019 lambda!3018)))

(assert (=> d!28019 (= (inv!2291 setElem!1685) (forall!341 (exprs!605 setElem!1685) lambda!3019))))

(declare-fun bs!11477 () Bool)

(assert (= bs!11477 d!28019))

(declare-fun m!101740 () Bool)

(assert (=> bs!11477 m!101740))

(assert (=> setNonEmpty!1684 d!28019))

(declare-fun b!111462 () Bool)

(declare-fun b_free!3461 () Bool)

(declare-fun b_next!3461 () Bool)

(assert (=> b!111462 (= b_free!3461 (not b_next!3461))))

(declare-fun tp!60183 () Bool)

(declare-fun b_and!5591 () Bool)

(assert (=> b!111462 (= tp!60183 b_and!5591)))

(declare-fun b!111469 () Bool)

(declare-fun b_free!3463 () Bool)

(declare-fun b_next!3463 () Bool)

(assert (=> b!111469 (= b_free!3463 (not b_next!3463))))

(declare-fun tp!60175 () Bool)

(declare-fun b_and!5593 () Bool)

(assert (=> b!111469 (= tp!60175 b_and!5593)))

(declare-fun b!111468 () Bool)

(declare-fun b_free!3465 () Bool)

(declare-fun b_next!3465 () Bool)

(assert (=> b!111468 (= b_free!3465 (not b_next!3465))))

(declare-fun tp!60181 () Bool)

(declare-fun b_and!5595 () Bool)

(assert (=> b!111468 (= tp!60181 b_and!5595)))

(declare-fun b!111472 () Bool)

(declare-fun b_free!3467 () Bool)

(declare-fun b_next!3467 () Bool)

(assert (=> b!111472 (= b_free!3467 (not b_next!3467))))

(declare-fun tp!60179 () Bool)

(declare-fun b_and!5597 () Bool)

(assert (=> b!111472 (= tp!60179 b_and!5597)))

(declare-fun b!111458 () Bool)

(declare-fun e!62454 () Bool)

(declare-fun tp!60170 () Bool)

(declare-fun mapRes!1225 () Bool)

(assert (=> b!111458 (= e!62454 (and tp!60170 mapRes!1225))))

(declare-fun condMapEmpty!1225 () Bool)

(declare-fun res!53722 () tuple3!328)

(declare-fun mapDefault!1225 () List!1804)

(assert (=> b!111458 (= condMapEmpty!1225 (= (arr!502 (_values!586 (v!13147 (underlying!815 (v!13148 (underlying!816 (cache!755 (_3!209 res!53722)))))))) ((as const (Array (_ BitVec 32) List!1804)) mapDefault!1225)))))

(declare-fun mapIsEmpty!1225 () Bool)

(declare-fun mapRes!1226 () Bool)

(assert (=> mapIsEmpty!1225 mapRes!1226))

(declare-fun b!111459 () Bool)

(declare-fun e!62448 () Bool)

(declare-fun e!62459 () Bool)

(assert (=> b!111459 (= e!62448 e!62459)))

(declare-fun b!111460 () Bool)

(declare-fun e!62446 () Bool)

(declare-fun tp!60185 () Bool)

(assert (=> b!111460 (= e!62446 tp!60185)))

(declare-fun b!111461 () Bool)

(declare-fun e!62455 () Bool)

(declare-fun e!62452 () Bool)

(assert (=> b!111461 (= e!62455 e!62452)))

(declare-fun e!62457 () Bool)

(declare-fun e!62451 () Bool)

(assert (=> b!111462 (= e!62457 (and e!62451 tp!60183))))

(declare-fun b!111463 () Bool)

(declare-fun e!62447 () Bool)

(declare-fun tp!60176 () Bool)

(assert (=> b!111463 (= e!62447 (and tp!60176 mapRes!1226))))

(declare-fun condMapEmpty!1226 () Bool)

(declare-fun mapDefault!1226 () List!1805)

(assert (=> b!111463 (= condMapEmpty!1226 (= (arr!503 (_values!587 (v!13149 (underlying!817 (v!13150 (underlying!818 (cache!756 (_2!1153 res!53722)))))))) ((as const (Array (_ BitVec 32) List!1805)) mapDefault!1226)))))

(declare-fun b!111464 () Bool)

(declare-fun e!62458 () Bool)

(declare-fun e!62450 () Bool)

(assert (=> b!111464 (= e!62458 e!62450)))

(declare-fun b!111465 () Bool)

(declare-fun e!62449 () Bool)

(declare-fun lt!32554 () MutLongMap!308)

(assert (=> b!111465 (= e!62449 (and e!62458 ((_ is LongMap!308) lt!32554)))))

(assert (=> b!111465 (= lt!32554 (v!13148 (underlying!816 (cache!755 (_3!209 res!53722)))))))

(declare-fun mapNonEmpty!1225 () Bool)

(declare-fun tp!60174 () Bool)

(declare-fun tp!60178 () Bool)

(assert (=> mapNonEmpty!1225 (= mapRes!1226 (and tp!60174 tp!60178))))

(declare-fun mapValue!1226 () List!1805)

(declare-fun mapKey!1226 () (_ BitVec 32))

(declare-fun mapRest!1226 () (Array (_ BitVec 32) List!1805))

(assert (=> mapNonEmpty!1225 (= (arr!503 (_values!587 (v!13149 (underlying!817 (v!13150 (underlying!818 (cache!756 (_2!1153 res!53722)))))))) (store mapRest!1226 mapKey!1226 mapValue!1226))))

(declare-fun b!111466 () Bool)

(declare-fun e!62460 () Bool)

(assert (=> b!111466 (= e!62460 e!62455)))

(declare-fun b!111467 () Bool)

(declare-fun lt!32555 () MutLongMap!309)

(assert (=> b!111467 (= e!62451 (and e!62460 ((_ is LongMap!309) lt!32555)))))

(assert (=> b!111467 (= lt!32555 (v!13150 (underlying!818 (cache!756 (_2!1153 res!53722)))))))

(declare-fun e!62461 () Bool)

(declare-fun tp!60180 () Bool)

(declare-fun tp!60182 () Bool)

(assert (=> b!111468 (= e!62461 (and tp!60181 tp!60182 tp!60180 (array_inv!344 (_keys!599 (v!13147 (underlying!815 (v!13148 (underlying!816 (cache!755 (_3!209 res!53722)))))))) (array_inv!345 (_values!586 (v!13147 (underlying!815 (v!13148 (underlying!816 (cache!755 (_3!209 res!53722)))))))) e!62454))))

(declare-fun tp!60172 () Bool)

(declare-fun tp!60184 () Bool)

(assert (=> b!111469 (= e!62452 (and tp!60175 tp!60184 tp!60172 (array_inv!344 (_keys!600 (v!13149 (underlying!817 (v!13150 (underlying!818 (cache!756 (_2!1153 res!53722)))))))) (array_inv!346 (_values!587 (v!13149 (underlying!817 (v!13150 (underlying!818 (cache!756 (_2!1153 res!53722)))))))) e!62447))))

(declare-fun b!111470 () Bool)

(assert (=> b!111470 (= e!62450 e!62461)))

(declare-fun setIsEmpty!1705 () Bool)

(declare-fun setRes!1705 () Bool)

(assert (=> setIsEmpty!1705 setRes!1705))

(declare-fun b!111471 () Bool)

(declare-fun e!62453 () Bool)

(assert (=> b!111471 (= e!62453 e!62457)))

(declare-fun tp!60177 () Bool)

(declare-fun setElem!1705 () Context!210)

(declare-fun setNonEmpty!1705 () Bool)

(assert (=> setNonEmpty!1705 (= setRes!1705 (and tp!60177 (inv!2291 setElem!1705) e!62446))))

(declare-fun setRest!1705 () (InoxSet Context!210))

(assert (=> setNonEmpty!1705 (= (_1!1153 res!53722) ((_ map or) (store ((as const (Array Context!210 Bool)) false) setElem!1705 true) setRest!1705))))

(declare-fun d!28021 () Bool)

(assert (=> d!28021 (= (_1!1153 res!53722) (derivationStepZipperSimp!1 z!674 a!1201))))

(assert (=> d!28021 (and setRes!1705 (inv!2289 (_2!1153 res!53722)) e!62453 (inv!2290 (_3!209 res!53722)) e!62448)))

(declare-fun condSetEmpty!1705 () Bool)

(assert (=> d!28021 (= condSetEmpty!1705 (= (_1!1153 res!53722) ((as const (Array Context!210 Bool)) false)))))

(assert (=> d!28021 (= (choose!1499 z!674 a!1201 cacheUp!805 cacheDown!924) res!53722)))

(declare-fun mapNonEmpty!1226 () Bool)

(declare-fun tp!60171 () Bool)

(declare-fun tp!60173 () Bool)

(assert (=> mapNonEmpty!1226 (= mapRes!1225 (and tp!60171 tp!60173))))

(declare-fun mapValue!1225 () List!1804)

(declare-fun mapRest!1225 () (Array (_ BitVec 32) List!1804))

(declare-fun mapKey!1225 () (_ BitVec 32))

(assert (=> mapNonEmpty!1226 (= (arr!502 (_values!586 (v!13147 (underlying!815 (v!13148 (underlying!816 (cache!755 (_3!209 res!53722)))))))) (store mapRest!1225 mapKey!1225 mapValue!1225))))

(assert (=> b!111472 (= e!62459 (and e!62449 tp!60179))))

(declare-fun mapIsEmpty!1226 () Bool)

(assert (=> mapIsEmpty!1226 mapRes!1225))

(assert (= (and d!28021 condSetEmpty!1705) setIsEmpty!1705))

(assert (= (and d!28021 (not condSetEmpty!1705)) setNonEmpty!1705))

(assert (= setNonEmpty!1705 b!111460))

(assert (= (and b!111463 condMapEmpty!1226) mapIsEmpty!1225))

(assert (= (and b!111463 (not condMapEmpty!1226)) mapNonEmpty!1225))

(assert (= b!111469 b!111463))

(assert (= b!111461 b!111469))

(assert (= b!111466 b!111461))

(assert (= (and b!111467 ((_ is LongMap!309) (v!13150 (underlying!818 (cache!756 (_2!1153 res!53722)))))) b!111466))

(assert (= b!111462 b!111467))

(assert (= (and b!111471 ((_ is HashMap!305) (cache!756 (_2!1153 res!53722)))) b!111462))

(assert (= d!28021 b!111471))

(assert (= (and b!111458 condMapEmpty!1225) mapIsEmpty!1226))

(assert (= (and b!111458 (not condMapEmpty!1225)) mapNonEmpty!1226))

(assert (= b!111468 b!111458))

(assert (= b!111470 b!111468))

(assert (= b!111464 b!111470))

(assert (= (and b!111465 ((_ is LongMap!308) (v!13148 (underlying!816 (cache!755 (_3!209 res!53722)))))) b!111464))

(assert (= b!111472 b!111465))

(assert (= (and b!111459 ((_ is HashMap!304) (cache!755 (_3!209 res!53722)))) b!111472))

(assert (= d!28021 b!111459))

(declare-fun m!101742 () Bool)

(assert (=> mapNonEmpty!1225 m!101742))

(declare-fun m!101744 () Bool)

(assert (=> mapNonEmpty!1226 m!101744))

(declare-fun m!101746 () Bool)

(assert (=> setNonEmpty!1705 m!101746))

(assert (=> d!28021 m!101616))

(declare-fun m!101748 () Bool)

(assert (=> d!28021 m!101748))

(declare-fun m!101750 () Bool)

(assert (=> d!28021 m!101750))

(declare-fun m!101752 () Bool)

(assert (=> b!111468 m!101752))

(declare-fun m!101754 () Bool)

(assert (=> b!111468 m!101754))

(declare-fun m!101756 () Bool)

(assert (=> b!111469 m!101756))

(declare-fun m!101758 () Bool)

(assert (=> b!111469 m!101758))

(assert (=> d!27977 d!28021))

(declare-fun bs!11478 () Bool)

(declare-fun d!28023 () Bool)

(assert (= bs!11478 (and d!28023 d!28001)))

(declare-fun lambda!3020 () Int)

(assert (=> bs!11478 (= lambda!3020 lambda!3009)))

(declare-fun bs!11479 () Bool)

(assert (= bs!11479 (and d!28023 d!28009)))

(assert (=> bs!11479 (= lambda!3020 lambda!3012)))

(declare-fun bs!11480 () Bool)

(assert (= bs!11480 (and d!28023 d!27997)))

(assert (=> bs!11480 (= lambda!3020 lambda!3007)))

(declare-fun bs!11481 () Bool)

(assert (= bs!11481 (and d!28023 d!28005)))

(assert (=> bs!11481 (= lambda!3020 lambda!3010)))

(declare-fun bs!11482 () Bool)

(assert (= bs!11482 (and d!28023 d!27993)))

(assert (=> bs!11482 (= lambda!3020 lambda!3005)))

(declare-fun bs!11483 () Bool)

(assert (= bs!11483 (and d!28023 d!27995)))

(assert (=> bs!11483 (= lambda!3020 lambda!3006)))

(declare-fun bs!11484 () Bool)

(assert (= bs!11484 (and d!28023 d!28013)))

(assert (=> bs!11484 (= lambda!3020 lambda!3016)))

(declare-fun bs!11485 () Bool)

(assert (= bs!11485 (and d!28023 d!28015)))

(assert (=> bs!11485 (= lambda!3020 lambda!3017)))

(declare-fun bs!11486 () Bool)

(assert (= bs!11486 (and d!28023 d!27985)))

(assert (=> bs!11486 (= lambda!3020 lambda!3001)))

(declare-fun bs!11487 () Bool)

(assert (= bs!11487 (and d!28023 d!28019)))

(assert (=> bs!11487 (= lambda!3020 lambda!3019)))

(declare-fun bs!11488 () Bool)

(assert (= bs!11488 (and d!28023 d!27999)))

(assert (=> bs!11488 (= lambda!3020 lambda!3008)))

(declare-fun bs!11489 () Bool)

(assert (= bs!11489 (and d!28023 d!28007)))

(assert (=> bs!11489 (= lambda!3020 lambda!3011)))

(declare-fun bs!11490 () Bool)

(assert (= bs!11490 (and d!28023 d!28017)))

(assert (=> bs!11490 (= lambda!3020 lambda!3018)))

(assert (=> d!28023 (= (inv!2291 (_2!1149 (_1!1150 (h!7195 mapDefault!1220)))) (forall!341 (exprs!605 (_2!1149 (_1!1150 (h!7195 mapDefault!1220)))) lambda!3020))))

(declare-fun bs!11491 () Bool)

(assert (= bs!11491 d!28023))

(declare-fun m!101760 () Bool)

(assert (=> bs!11491 m!101760))

(assert (=> b!111393 d!28023))

(declare-fun bs!11492 () Bool)

(declare-fun d!28025 () Bool)

(assert (= bs!11492 (and d!28025 d!28001)))

(declare-fun lambda!3021 () Int)

(assert (=> bs!11492 (= lambda!3021 lambda!3009)))

(declare-fun bs!11493 () Bool)

(assert (= bs!11493 (and d!28025 d!28009)))

(assert (=> bs!11493 (= lambda!3021 lambda!3012)))

(declare-fun bs!11494 () Bool)

(assert (= bs!11494 (and d!28025 d!28023)))

(assert (=> bs!11494 (= lambda!3021 lambda!3020)))

(declare-fun bs!11495 () Bool)

(assert (= bs!11495 (and d!28025 d!27997)))

(assert (=> bs!11495 (= lambda!3021 lambda!3007)))

(declare-fun bs!11496 () Bool)

(assert (= bs!11496 (and d!28025 d!28005)))

(assert (=> bs!11496 (= lambda!3021 lambda!3010)))

(declare-fun bs!11497 () Bool)

(assert (= bs!11497 (and d!28025 d!27993)))

(assert (=> bs!11497 (= lambda!3021 lambda!3005)))

(declare-fun bs!11498 () Bool)

(assert (= bs!11498 (and d!28025 d!27995)))

(assert (=> bs!11498 (= lambda!3021 lambda!3006)))

(declare-fun bs!11499 () Bool)

(assert (= bs!11499 (and d!28025 d!28013)))

(assert (=> bs!11499 (= lambda!3021 lambda!3016)))

(declare-fun bs!11500 () Bool)

(assert (= bs!11500 (and d!28025 d!28015)))

(assert (=> bs!11500 (= lambda!3021 lambda!3017)))

(declare-fun bs!11501 () Bool)

(assert (= bs!11501 (and d!28025 d!27985)))

(assert (=> bs!11501 (= lambda!3021 lambda!3001)))

(declare-fun bs!11502 () Bool)

(assert (= bs!11502 (and d!28025 d!28019)))

(assert (=> bs!11502 (= lambda!3021 lambda!3019)))

(declare-fun bs!11503 () Bool)

(assert (= bs!11503 (and d!28025 d!27999)))

(assert (=> bs!11503 (= lambda!3021 lambda!3008)))

(declare-fun bs!11504 () Bool)

(assert (= bs!11504 (and d!28025 d!28007)))

(assert (=> bs!11504 (= lambda!3021 lambda!3011)))

(declare-fun bs!11505 () Bool)

(assert (= bs!11505 (and d!28025 d!28017)))

(assert (=> bs!11505 (= lambda!3021 lambda!3018)))

(assert (=> d!28025 (= (inv!2291 setElem!1689) (forall!341 (exprs!605 setElem!1689) lambda!3021))))

(declare-fun bs!11506 () Bool)

(assert (= bs!11506 d!28025))

(declare-fun m!101762 () Bool)

(assert (=> bs!11506 m!101762))

(assert (=> setNonEmpty!1689 d!28025))

(declare-fun bs!11507 () Bool)

(declare-fun d!28027 () Bool)

(assert (= bs!11507 (and d!28027 d!28001)))

(declare-fun lambda!3022 () Int)

(assert (=> bs!11507 (= lambda!3022 lambda!3009)))

(declare-fun bs!11508 () Bool)

(assert (= bs!11508 (and d!28027 d!28009)))

(assert (=> bs!11508 (= lambda!3022 lambda!3012)))

(declare-fun bs!11509 () Bool)

(assert (= bs!11509 (and d!28027 d!28023)))

(assert (=> bs!11509 (= lambda!3022 lambda!3020)))

(declare-fun bs!11510 () Bool)

(assert (= bs!11510 (and d!28027 d!27997)))

(assert (=> bs!11510 (= lambda!3022 lambda!3007)))

(declare-fun bs!11511 () Bool)

(assert (= bs!11511 (and d!28027 d!28005)))

(assert (=> bs!11511 (= lambda!3022 lambda!3010)))

(declare-fun bs!11512 () Bool)

(assert (= bs!11512 (and d!28027 d!27993)))

(assert (=> bs!11512 (= lambda!3022 lambda!3005)))

(declare-fun bs!11513 () Bool)

(assert (= bs!11513 (and d!28027 d!28013)))

(assert (=> bs!11513 (= lambda!3022 lambda!3016)))

(declare-fun bs!11514 () Bool)

(assert (= bs!11514 (and d!28027 d!28015)))

(assert (=> bs!11514 (= lambda!3022 lambda!3017)))

(declare-fun bs!11515 () Bool)

(assert (= bs!11515 (and d!28027 d!27985)))

(assert (=> bs!11515 (= lambda!3022 lambda!3001)))

(declare-fun bs!11516 () Bool)

(assert (= bs!11516 (and d!28027 d!28019)))

(assert (=> bs!11516 (= lambda!3022 lambda!3019)))

(declare-fun bs!11517 () Bool)

(assert (= bs!11517 (and d!28027 d!27999)))

(assert (=> bs!11517 (= lambda!3022 lambda!3008)))

(declare-fun bs!11518 () Bool)

(assert (= bs!11518 (and d!28027 d!27995)))

(assert (=> bs!11518 (= lambda!3022 lambda!3006)))

(declare-fun bs!11519 () Bool)

(assert (= bs!11519 (and d!28027 d!28025)))

(assert (=> bs!11519 (= lambda!3022 lambda!3021)))

(declare-fun bs!11520 () Bool)

(assert (= bs!11520 (and d!28027 d!28007)))

(assert (=> bs!11520 (= lambda!3022 lambda!3011)))

(declare-fun bs!11521 () Bool)

(assert (= bs!11521 (and d!28027 d!28017)))

(assert (=> bs!11521 (= lambda!3022 lambda!3018)))

(assert (=> d!28027 (= (inv!2291 setElem!1684) (forall!341 (exprs!605 setElem!1684) lambda!3022))))

(declare-fun bs!11522 () Bool)

(assert (= bs!11522 d!28027))

(declare-fun m!101764 () Bool)

(assert (=> bs!11522 m!101764))

(assert (=> setNonEmpty!1685 d!28027))

(declare-fun bs!11523 () Bool)

(declare-fun d!28029 () Bool)

(assert (= bs!11523 (and d!28029 d!28001)))

(declare-fun lambda!3023 () Int)

(assert (=> bs!11523 (= lambda!3023 lambda!3009)))

(declare-fun bs!11524 () Bool)

(assert (= bs!11524 (and d!28029 d!28009)))

(assert (=> bs!11524 (= lambda!3023 lambda!3012)))

(declare-fun bs!11525 () Bool)

(assert (= bs!11525 (and d!28029 d!28023)))

(assert (=> bs!11525 (= lambda!3023 lambda!3020)))

(declare-fun bs!11526 () Bool)

(assert (= bs!11526 (and d!28029 d!27997)))

(assert (=> bs!11526 (= lambda!3023 lambda!3007)))

(declare-fun bs!11527 () Bool)

(assert (= bs!11527 (and d!28029 d!28005)))

(assert (=> bs!11527 (= lambda!3023 lambda!3010)))

(declare-fun bs!11528 () Bool)

(assert (= bs!11528 (and d!28029 d!27993)))

(assert (=> bs!11528 (= lambda!3023 lambda!3005)))

(declare-fun bs!11529 () Bool)

(assert (= bs!11529 (and d!28029 d!28013)))

(assert (=> bs!11529 (= lambda!3023 lambda!3016)))

(declare-fun bs!11530 () Bool)

(assert (= bs!11530 (and d!28029 d!28015)))

(assert (=> bs!11530 (= lambda!3023 lambda!3017)))

(declare-fun bs!11531 () Bool)

(assert (= bs!11531 (and d!28029 d!28027)))

(assert (=> bs!11531 (= lambda!3023 lambda!3022)))

(declare-fun bs!11532 () Bool)

(assert (= bs!11532 (and d!28029 d!27985)))

(assert (=> bs!11532 (= lambda!3023 lambda!3001)))

(declare-fun bs!11533 () Bool)

(assert (= bs!11533 (and d!28029 d!28019)))

(assert (=> bs!11533 (= lambda!3023 lambda!3019)))

(declare-fun bs!11534 () Bool)

(assert (= bs!11534 (and d!28029 d!27999)))

(assert (=> bs!11534 (= lambda!3023 lambda!3008)))

(declare-fun bs!11535 () Bool)

(assert (= bs!11535 (and d!28029 d!27995)))

(assert (=> bs!11535 (= lambda!3023 lambda!3006)))

(declare-fun bs!11536 () Bool)

(assert (= bs!11536 (and d!28029 d!28025)))

(assert (=> bs!11536 (= lambda!3023 lambda!3021)))

(declare-fun bs!11537 () Bool)

(assert (= bs!11537 (and d!28029 d!28007)))

(assert (=> bs!11537 (= lambda!3023 lambda!3011)))

(declare-fun bs!11538 () Bool)

(assert (= bs!11538 (and d!28029 d!28017)))

(assert (=> bs!11538 (= lambda!3023 lambda!3018)))

(assert (=> d!28029 (= (inv!2291 setElem!1679) (forall!341 (exprs!605 setElem!1679) lambda!3023))))

(declare-fun bs!11539 () Bool)

(assert (= bs!11539 d!28029))

(declare-fun m!101766 () Bool)

(assert (=> bs!11539 m!101766))

(assert (=> setNonEmpty!1679 d!28029))

(declare-fun bs!11540 () Bool)

(declare-fun d!28031 () Bool)

(assert (= bs!11540 (and d!28031 d!28001)))

(declare-fun lambda!3024 () Int)

(assert (=> bs!11540 (= lambda!3024 lambda!3009)))

(declare-fun bs!11541 () Bool)

(assert (= bs!11541 (and d!28031 d!28009)))

(assert (=> bs!11541 (= lambda!3024 lambda!3012)))

(declare-fun bs!11542 () Bool)

(assert (= bs!11542 (and d!28031 d!28023)))

(assert (=> bs!11542 (= lambda!3024 lambda!3020)))

(declare-fun bs!11543 () Bool)

(assert (= bs!11543 (and d!28031 d!27997)))

(assert (=> bs!11543 (= lambda!3024 lambda!3007)))

(declare-fun bs!11544 () Bool)

(assert (= bs!11544 (and d!28031 d!28005)))

(assert (=> bs!11544 (= lambda!3024 lambda!3010)))

(declare-fun bs!11545 () Bool)

(assert (= bs!11545 (and d!28031 d!27993)))

(assert (=> bs!11545 (= lambda!3024 lambda!3005)))

(declare-fun bs!11546 () Bool)

(assert (= bs!11546 (and d!28031 d!28013)))

(assert (=> bs!11546 (= lambda!3024 lambda!3016)))

(declare-fun bs!11547 () Bool)

(assert (= bs!11547 (and d!28031 d!28015)))

(assert (=> bs!11547 (= lambda!3024 lambda!3017)))

(declare-fun bs!11548 () Bool)

(assert (= bs!11548 (and d!28031 d!28027)))

(assert (=> bs!11548 (= lambda!3024 lambda!3022)))

(declare-fun bs!11549 () Bool)

(assert (= bs!11549 (and d!28031 d!27985)))

(assert (=> bs!11549 (= lambda!3024 lambda!3001)))

(declare-fun bs!11550 () Bool)

(assert (= bs!11550 (and d!28031 d!28019)))

(assert (=> bs!11550 (= lambda!3024 lambda!3019)))

(declare-fun bs!11551 () Bool)

(assert (= bs!11551 (and d!28031 d!28029)))

(assert (=> bs!11551 (= lambda!3024 lambda!3023)))

(declare-fun bs!11552 () Bool)

(assert (= bs!11552 (and d!28031 d!27999)))

(assert (=> bs!11552 (= lambda!3024 lambda!3008)))

(declare-fun bs!11553 () Bool)

(assert (= bs!11553 (and d!28031 d!27995)))

(assert (=> bs!11553 (= lambda!3024 lambda!3006)))

(declare-fun bs!11554 () Bool)

(assert (= bs!11554 (and d!28031 d!28025)))

(assert (=> bs!11554 (= lambda!3024 lambda!3021)))

(declare-fun bs!11555 () Bool)

(assert (= bs!11555 (and d!28031 d!28007)))

(assert (=> bs!11555 (= lambda!3024 lambda!3011)))

(declare-fun bs!11556 () Bool)

(assert (= bs!11556 (and d!28031 d!28017)))

(assert (=> bs!11556 (= lambda!3024 lambda!3018)))

(assert (=> d!28031 (= (inv!2291 setElem!1678) (forall!341 (exprs!605 setElem!1678) lambda!3024))))

(declare-fun bs!11557 () Bool)

(assert (= bs!11557 d!28031))

(declare-fun m!101768 () Bool)

(assert (=> bs!11557 m!101768))

(assert (=> setNonEmpty!1678 d!28031))

(declare-fun bs!11558 () Bool)

(declare-fun d!28033 () Bool)

(assert (= bs!11558 (and d!28033 d!28001)))

(declare-fun lambda!3025 () Int)

(assert (=> bs!11558 (= lambda!3025 lambda!3009)))

(declare-fun bs!11559 () Bool)

(assert (= bs!11559 (and d!28033 d!28009)))

(assert (=> bs!11559 (= lambda!3025 lambda!3012)))

(declare-fun bs!11560 () Bool)

(assert (= bs!11560 (and d!28033 d!28023)))

(assert (=> bs!11560 (= lambda!3025 lambda!3020)))

(declare-fun bs!11561 () Bool)

(assert (= bs!11561 (and d!28033 d!27997)))

(assert (=> bs!11561 (= lambda!3025 lambda!3007)))

(declare-fun bs!11562 () Bool)

(assert (= bs!11562 (and d!28033 d!28005)))

(assert (=> bs!11562 (= lambda!3025 lambda!3010)))

(declare-fun bs!11563 () Bool)

(assert (= bs!11563 (and d!28033 d!27993)))

(assert (=> bs!11563 (= lambda!3025 lambda!3005)))

(declare-fun bs!11564 () Bool)

(assert (= bs!11564 (and d!28033 d!28013)))

(assert (=> bs!11564 (= lambda!3025 lambda!3016)))

(declare-fun bs!11565 () Bool)

(assert (= bs!11565 (and d!28033 d!28015)))

(assert (=> bs!11565 (= lambda!3025 lambda!3017)))

(declare-fun bs!11566 () Bool)

(assert (= bs!11566 (and d!28033 d!28027)))

(assert (=> bs!11566 (= lambda!3025 lambda!3022)))

(declare-fun bs!11567 () Bool)

(assert (= bs!11567 (and d!28033 d!27985)))

(assert (=> bs!11567 (= lambda!3025 lambda!3001)))

(declare-fun bs!11568 () Bool)

(assert (= bs!11568 (and d!28033 d!28029)))

(assert (=> bs!11568 (= lambda!3025 lambda!3023)))

(declare-fun bs!11569 () Bool)

(assert (= bs!11569 (and d!28033 d!27999)))

(assert (=> bs!11569 (= lambda!3025 lambda!3008)))

(declare-fun bs!11570 () Bool)

(assert (= bs!11570 (and d!28033 d!27995)))

(assert (=> bs!11570 (= lambda!3025 lambda!3006)))

(declare-fun bs!11571 () Bool)

(assert (= bs!11571 (and d!28033 d!28025)))

(assert (=> bs!11571 (= lambda!3025 lambda!3021)))

(declare-fun bs!11572 () Bool)

(assert (= bs!11572 (and d!28033 d!28007)))

(assert (=> bs!11572 (= lambda!3025 lambda!3011)))

(declare-fun bs!11573 () Bool)

(assert (= bs!11573 (and d!28033 d!28017)))

(assert (=> bs!11573 (= lambda!3025 lambda!3018)))

(declare-fun bs!11574 () Bool)

(assert (= bs!11574 (and d!28033 d!28031)))

(assert (=> bs!11574 (= lambda!3025 lambda!3024)))

(declare-fun bs!11575 () Bool)

(assert (= bs!11575 (and d!28033 d!28019)))

(assert (=> bs!11575 (= lambda!3025 lambda!3019)))

(assert (=> d!28033 (= (inv!2291 setElem!1692) (forall!341 (exprs!605 setElem!1692) lambda!3025))))

(declare-fun bs!11576 () Bool)

(assert (= bs!11576 d!28033))

(declare-fun m!101770 () Bool)

(assert (=> bs!11576 m!101770))

(assert (=> setNonEmpty!1692 d!28033))

(declare-fun bs!11577 () Bool)

(declare-fun d!28035 () Bool)

(assert (= bs!11577 (and d!28035 d!28001)))

(declare-fun lambda!3026 () Int)

(assert (=> bs!11577 (= lambda!3026 lambda!3009)))

(declare-fun bs!11578 () Bool)

(assert (= bs!11578 (and d!28035 d!28009)))

(assert (=> bs!11578 (= lambda!3026 lambda!3012)))

(declare-fun bs!11579 () Bool)

(assert (= bs!11579 (and d!28035 d!28023)))

(assert (=> bs!11579 (= lambda!3026 lambda!3020)))

(declare-fun bs!11580 () Bool)

(assert (= bs!11580 (and d!28035 d!27997)))

(assert (=> bs!11580 (= lambda!3026 lambda!3007)))

(declare-fun bs!11581 () Bool)

(assert (= bs!11581 (and d!28035 d!28005)))

(assert (=> bs!11581 (= lambda!3026 lambda!3010)))

(declare-fun bs!11582 () Bool)

(assert (= bs!11582 (and d!28035 d!27993)))

(assert (=> bs!11582 (= lambda!3026 lambda!3005)))

(declare-fun bs!11583 () Bool)

(assert (= bs!11583 (and d!28035 d!28013)))

(assert (=> bs!11583 (= lambda!3026 lambda!3016)))

(declare-fun bs!11584 () Bool)

(assert (= bs!11584 (and d!28035 d!28015)))

(assert (=> bs!11584 (= lambda!3026 lambda!3017)))

(declare-fun bs!11585 () Bool)

(assert (= bs!11585 (and d!28035 d!28033)))

(assert (=> bs!11585 (= lambda!3026 lambda!3025)))

(declare-fun bs!11586 () Bool)

(assert (= bs!11586 (and d!28035 d!28027)))

(assert (=> bs!11586 (= lambda!3026 lambda!3022)))

(declare-fun bs!11587 () Bool)

(assert (= bs!11587 (and d!28035 d!27985)))

(assert (=> bs!11587 (= lambda!3026 lambda!3001)))

(declare-fun bs!11588 () Bool)

(assert (= bs!11588 (and d!28035 d!28029)))

(assert (=> bs!11588 (= lambda!3026 lambda!3023)))

(declare-fun bs!11589 () Bool)

(assert (= bs!11589 (and d!28035 d!27999)))

(assert (=> bs!11589 (= lambda!3026 lambda!3008)))

(declare-fun bs!11590 () Bool)

(assert (= bs!11590 (and d!28035 d!27995)))

(assert (=> bs!11590 (= lambda!3026 lambda!3006)))

(declare-fun bs!11591 () Bool)

(assert (= bs!11591 (and d!28035 d!28025)))

(assert (=> bs!11591 (= lambda!3026 lambda!3021)))

(declare-fun bs!11592 () Bool)

(assert (= bs!11592 (and d!28035 d!28007)))

(assert (=> bs!11592 (= lambda!3026 lambda!3011)))

(declare-fun bs!11593 () Bool)

(assert (= bs!11593 (and d!28035 d!28017)))

(assert (=> bs!11593 (= lambda!3026 lambda!3018)))

(declare-fun bs!11594 () Bool)

(assert (= bs!11594 (and d!28035 d!28031)))

(assert (=> bs!11594 (= lambda!3026 lambda!3024)))

(declare-fun bs!11595 () Bool)

(assert (= bs!11595 (and d!28035 d!28019)))

(assert (=> bs!11595 (= lambda!3026 lambda!3019)))

(assert (=> d!28035 (= (inv!2291 (_2!1149 (_1!1150 (h!7195 mapValue!1220)))) (forall!341 (exprs!605 (_2!1149 (_1!1150 (h!7195 mapValue!1220)))) lambda!3026))))

(declare-fun bs!11596 () Bool)

(assert (= bs!11596 d!28035))

(declare-fun m!101772 () Bool)

(assert (=> bs!11596 m!101772))

(assert (=> b!111390 d!28035))

(declare-fun bs!11597 () Bool)

(declare-fun d!28037 () Bool)

(assert (= bs!11597 (and d!28037 d!28001)))

(declare-fun lambda!3027 () Int)

(assert (=> bs!11597 (= lambda!3027 lambda!3009)))

(declare-fun bs!11598 () Bool)

(assert (= bs!11598 (and d!28037 d!28009)))

(assert (=> bs!11598 (= lambda!3027 lambda!3012)))

(declare-fun bs!11599 () Bool)

(assert (= bs!11599 (and d!28037 d!28023)))

(assert (=> bs!11599 (= lambda!3027 lambda!3020)))

(declare-fun bs!11600 () Bool)

(assert (= bs!11600 (and d!28037 d!27997)))

(assert (=> bs!11600 (= lambda!3027 lambda!3007)))

(declare-fun bs!11601 () Bool)

(assert (= bs!11601 (and d!28037 d!28005)))

(assert (=> bs!11601 (= lambda!3027 lambda!3010)))

(declare-fun bs!11602 () Bool)

(assert (= bs!11602 (and d!28037 d!27993)))

(assert (=> bs!11602 (= lambda!3027 lambda!3005)))

(declare-fun bs!11603 () Bool)

(assert (= bs!11603 (and d!28037 d!28013)))

(assert (=> bs!11603 (= lambda!3027 lambda!3016)))

(declare-fun bs!11604 () Bool)

(assert (= bs!11604 (and d!28037 d!28015)))

(assert (=> bs!11604 (= lambda!3027 lambda!3017)))

(declare-fun bs!11605 () Bool)

(assert (= bs!11605 (and d!28037 d!28033)))

(assert (=> bs!11605 (= lambda!3027 lambda!3025)))

(declare-fun bs!11606 () Bool)

(assert (= bs!11606 (and d!28037 d!28027)))

(assert (=> bs!11606 (= lambda!3027 lambda!3022)))

(declare-fun bs!11607 () Bool)

(assert (= bs!11607 (and d!28037 d!27985)))

(assert (=> bs!11607 (= lambda!3027 lambda!3001)))

(declare-fun bs!11608 () Bool)

(assert (= bs!11608 (and d!28037 d!28029)))

(assert (=> bs!11608 (= lambda!3027 lambda!3023)))

(declare-fun bs!11609 () Bool)

(assert (= bs!11609 (and d!28037 d!27999)))

(assert (=> bs!11609 (= lambda!3027 lambda!3008)))

(declare-fun bs!11610 () Bool)

(assert (= bs!11610 (and d!28037 d!27995)))

(assert (=> bs!11610 (= lambda!3027 lambda!3006)))

(declare-fun bs!11611 () Bool)

(assert (= bs!11611 (and d!28037 d!28025)))

(assert (=> bs!11611 (= lambda!3027 lambda!3021)))

(declare-fun bs!11612 () Bool)

(assert (= bs!11612 (and d!28037 d!28007)))

(assert (=> bs!11612 (= lambda!3027 lambda!3011)))

(declare-fun bs!11613 () Bool)

(assert (= bs!11613 (and d!28037 d!28017)))

(assert (=> bs!11613 (= lambda!3027 lambda!3018)))

(declare-fun bs!11614 () Bool)

(assert (= bs!11614 (and d!28037 d!28031)))

(assert (=> bs!11614 (= lambda!3027 lambda!3024)))

(declare-fun bs!11615 () Bool)

(assert (= bs!11615 (and d!28037 d!28035)))

(assert (=> bs!11615 (= lambda!3027 lambda!3026)))

(declare-fun bs!11616 () Bool)

(assert (= bs!11616 (and d!28037 d!28019)))

(assert (=> bs!11616 (= lambda!3027 lambda!3019)))

(assert (=> d!28037 (= (inv!2291 (_1!1151 (_1!1152 (h!7196 mapValue!1217)))) (forall!341 (exprs!605 (_1!1151 (_1!1152 (h!7196 mapValue!1217)))) lambda!3027))))

(declare-fun bs!11617 () Bool)

(assert (= bs!11617 d!28037))

(declare-fun m!101774 () Bool)

(assert (=> bs!11617 m!101774))

(assert (=> b!111349 d!28037))

(declare-fun bs!11618 () Bool)

(declare-fun d!28039 () Bool)

(assert (= bs!11618 (and d!28039 d!28001)))

(declare-fun lambda!3028 () Int)

(assert (=> bs!11618 (= lambda!3028 lambda!3009)))

(declare-fun bs!11619 () Bool)

(assert (= bs!11619 (and d!28039 d!28009)))

(assert (=> bs!11619 (= lambda!3028 lambda!3012)))

(declare-fun bs!11620 () Bool)

(assert (= bs!11620 (and d!28039 d!28023)))

(assert (=> bs!11620 (= lambda!3028 lambda!3020)))

(declare-fun bs!11621 () Bool)

(assert (= bs!11621 (and d!28039 d!27997)))

(assert (=> bs!11621 (= lambda!3028 lambda!3007)))

(declare-fun bs!11622 () Bool)

(assert (= bs!11622 (and d!28039 d!28005)))

(assert (=> bs!11622 (= lambda!3028 lambda!3010)))

(declare-fun bs!11623 () Bool)

(assert (= bs!11623 (and d!28039 d!27993)))

(assert (=> bs!11623 (= lambda!3028 lambda!3005)))

(declare-fun bs!11624 () Bool)

(assert (= bs!11624 (and d!28039 d!28015)))

(assert (=> bs!11624 (= lambda!3028 lambda!3017)))

(declare-fun bs!11625 () Bool)

(assert (= bs!11625 (and d!28039 d!28033)))

(assert (=> bs!11625 (= lambda!3028 lambda!3025)))

(declare-fun bs!11626 () Bool)

(assert (= bs!11626 (and d!28039 d!28027)))

(assert (=> bs!11626 (= lambda!3028 lambda!3022)))

(declare-fun bs!11627 () Bool)

(assert (= bs!11627 (and d!28039 d!27985)))

(assert (=> bs!11627 (= lambda!3028 lambda!3001)))

(declare-fun bs!11628 () Bool)

(assert (= bs!11628 (and d!28039 d!28029)))

(assert (=> bs!11628 (= lambda!3028 lambda!3023)))

(declare-fun bs!11629 () Bool)

(assert (= bs!11629 (and d!28039 d!27999)))

(assert (=> bs!11629 (= lambda!3028 lambda!3008)))

(declare-fun bs!11630 () Bool)

(assert (= bs!11630 (and d!28039 d!27995)))

(assert (=> bs!11630 (= lambda!3028 lambda!3006)))

(declare-fun bs!11631 () Bool)

(assert (= bs!11631 (and d!28039 d!28025)))

(assert (=> bs!11631 (= lambda!3028 lambda!3021)))

(declare-fun bs!11632 () Bool)

(assert (= bs!11632 (and d!28039 d!28007)))

(assert (=> bs!11632 (= lambda!3028 lambda!3011)))

(declare-fun bs!11633 () Bool)

(assert (= bs!11633 (and d!28039 d!28017)))

(assert (=> bs!11633 (= lambda!3028 lambda!3018)))

(declare-fun bs!11634 () Bool)

(assert (= bs!11634 (and d!28039 d!28013)))

(assert (=> bs!11634 (= lambda!3028 lambda!3016)))

(declare-fun bs!11635 () Bool)

(assert (= bs!11635 (and d!28039 d!28037)))

(assert (=> bs!11635 (= lambda!3028 lambda!3027)))

(declare-fun bs!11636 () Bool)

(assert (= bs!11636 (and d!28039 d!28031)))

(assert (=> bs!11636 (= lambda!3028 lambda!3024)))

(declare-fun bs!11637 () Bool)

(assert (= bs!11637 (and d!28039 d!28035)))

(assert (=> bs!11637 (= lambda!3028 lambda!3026)))

(declare-fun bs!11638 () Bool)

(assert (= bs!11638 (and d!28039 d!28019)))

(assert (=> bs!11638 (= lambda!3028 lambda!3019)))

(assert (=> d!28039 (= (inv!2291 (_2!1149 (_1!1150 (h!7195 (minValue!564 (v!13147 (underlying!815 (v!13148 (underlying!816 (cache!755 cacheDown!924)))))))))) (forall!341 (exprs!605 (_2!1149 (_1!1150 (h!7195 (minValue!564 (v!13147 (underlying!815 (v!13148 (underlying!816 (cache!755 cacheDown!924)))))))))) lambda!3028))))

(declare-fun bs!11639 () Bool)

(assert (= bs!11639 d!28039))

(declare-fun m!101776 () Bool)

(assert (=> bs!11639 m!101776))

(assert (=> b!111329 d!28039))

(declare-fun bs!11640 () Bool)

(declare-fun d!28041 () Bool)

(assert (= bs!11640 (and d!28041 d!28001)))

(declare-fun lambda!3029 () Int)

(assert (=> bs!11640 (= lambda!3029 lambda!3009)))

(declare-fun bs!11641 () Bool)

(assert (= bs!11641 (and d!28041 d!28009)))

(assert (=> bs!11641 (= lambda!3029 lambda!3012)))

(declare-fun bs!11642 () Bool)

(assert (= bs!11642 (and d!28041 d!28023)))

(assert (=> bs!11642 (= lambda!3029 lambda!3020)))

(declare-fun bs!11643 () Bool)

(assert (= bs!11643 (and d!28041 d!27997)))

(assert (=> bs!11643 (= lambda!3029 lambda!3007)))

(declare-fun bs!11644 () Bool)

(assert (= bs!11644 (and d!28041 d!28005)))

(assert (=> bs!11644 (= lambda!3029 lambda!3010)))

(declare-fun bs!11645 () Bool)

(assert (= bs!11645 (and d!28041 d!27993)))

(assert (=> bs!11645 (= lambda!3029 lambda!3005)))

(declare-fun bs!11646 () Bool)

(assert (= bs!11646 (and d!28041 d!28015)))

(assert (=> bs!11646 (= lambda!3029 lambda!3017)))

(declare-fun bs!11647 () Bool)

(assert (= bs!11647 (and d!28041 d!28033)))

(assert (=> bs!11647 (= lambda!3029 lambda!3025)))

(declare-fun bs!11648 () Bool)

(assert (= bs!11648 (and d!28041 d!28027)))

(assert (=> bs!11648 (= lambda!3029 lambda!3022)))

(declare-fun bs!11649 () Bool)

(assert (= bs!11649 (and d!28041 d!27985)))

(assert (=> bs!11649 (= lambda!3029 lambda!3001)))

(declare-fun bs!11650 () Bool)

(assert (= bs!11650 (and d!28041 d!28029)))

(assert (=> bs!11650 (= lambda!3029 lambda!3023)))

(declare-fun bs!11651 () Bool)

(assert (= bs!11651 (and d!28041 d!28039)))

(assert (=> bs!11651 (= lambda!3029 lambda!3028)))

(declare-fun bs!11652 () Bool)

(assert (= bs!11652 (and d!28041 d!27999)))

(assert (=> bs!11652 (= lambda!3029 lambda!3008)))

(declare-fun bs!11653 () Bool)

(assert (= bs!11653 (and d!28041 d!27995)))

(assert (=> bs!11653 (= lambda!3029 lambda!3006)))

(declare-fun bs!11654 () Bool)

(assert (= bs!11654 (and d!28041 d!28025)))

(assert (=> bs!11654 (= lambda!3029 lambda!3021)))

(declare-fun bs!11655 () Bool)

(assert (= bs!11655 (and d!28041 d!28007)))

(assert (=> bs!11655 (= lambda!3029 lambda!3011)))

(declare-fun bs!11656 () Bool)

(assert (= bs!11656 (and d!28041 d!28017)))

(assert (=> bs!11656 (= lambda!3029 lambda!3018)))

(declare-fun bs!11657 () Bool)

(assert (= bs!11657 (and d!28041 d!28013)))

(assert (=> bs!11657 (= lambda!3029 lambda!3016)))

(declare-fun bs!11658 () Bool)

(assert (= bs!11658 (and d!28041 d!28037)))

(assert (=> bs!11658 (= lambda!3029 lambda!3027)))

(declare-fun bs!11659 () Bool)

(assert (= bs!11659 (and d!28041 d!28031)))

(assert (=> bs!11659 (= lambda!3029 lambda!3024)))

(declare-fun bs!11660 () Bool)

(assert (= bs!11660 (and d!28041 d!28035)))

(assert (=> bs!11660 (= lambda!3029 lambda!3026)))

(declare-fun bs!11661 () Bool)

(assert (= bs!11661 (and d!28041 d!28019)))

(assert (=> bs!11661 (= lambda!3029 lambda!3019)))

(assert (=> d!28041 (= (inv!2291 (_2!1149 (_1!1150 (h!7195 (zeroValue!564 (v!13147 (underlying!815 (v!13148 (underlying!816 (cache!755 cacheDown!924)))))))))) (forall!341 (exprs!605 (_2!1149 (_1!1150 (h!7195 (zeroValue!564 (v!13147 (underlying!815 (v!13148 (underlying!816 (cache!755 cacheDown!924)))))))))) lambda!3029))))

(declare-fun bs!11662 () Bool)

(assert (= bs!11662 d!28041))

(declare-fun m!101778 () Bool)

(assert (=> bs!11662 m!101778))

(assert (=> b!111326 d!28041))

(declare-fun d!28043 () Bool)

(declare-fun choose!1500 ((InoxSet Context!210) Int) (InoxSet Context!210))

(assert (=> d!28043 (= (filter!9 (flatMap!64 z!674 lambda!2997) lambda!2998) (choose!1500 (flatMap!64 z!674 lambda!2997) lambda!2998))))

(declare-fun bs!11663 () Bool)

(assert (= bs!11663 d!28043))

(assert (=> bs!11663 m!101632))

(declare-fun m!101780 () Bool)

(assert (=> bs!11663 m!101780))

(assert (=> d!27979 d!28043))

(declare-fun d!28045 () Bool)

(declare-fun choose!1501 ((InoxSet Context!210) Int) (InoxSet Context!210))

(assert (=> d!28045 (= (flatMap!64 z!674 lambda!2997) (choose!1501 z!674 lambda!2997))))

(declare-fun bs!11664 () Bool)

(assert (= bs!11664 d!28045))

(declare-fun m!101782 () Bool)

(assert (=> bs!11664 m!101782))

(assert (=> d!27979 d!28045))

(declare-fun bs!11665 () Bool)

(declare-fun d!28047 () Bool)

(assert (= bs!11665 (and d!28047 d!28001)))

(declare-fun lambda!3030 () Int)

(assert (=> bs!11665 (= lambda!3030 lambda!3009)))

(declare-fun bs!11666 () Bool)

(assert (= bs!11666 (and d!28047 d!28009)))

(assert (=> bs!11666 (= lambda!3030 lambda!3012)))

(declare-fun bs!11667 () Bool)

(assert (= bs!11667 (and d!28047 d!28023)))

(assert (=> bs!11667 (= lambda!3030 lambda!3020)))

(declare-fun bs!11668 () Bool)

(assert (= bs!11668 (and d!28047 d!27997)))

(assert (=> bs!11668 (= lambda!3030 lambda!3007)))

(declare-fun bs!11669 () Bool)

(assert (= bs!11669 (and d!28047 d!28005)))

(assert (=> bs!11669 (= lambda!3030 lambda!3010)))

(declare-fun bs!11670 () Bool)

(assert (= bs!11670 (and d!28047 d!27993)))

(assert (=> bs!11670 (= lambda!3030 lambda!3005)))

(declare-fun bs!11671 () Bool)

(assert (= bs!11671 (and d!28047 d!28015)))

(assert (=> bs!11671 (= lambda!3030 lambda!3017)))

(declare-fun bs!11672 () Bool)

(assert (= bs!11672 (and d!28047 d!28027)))

(assert (=> bs!11672 (= lambda!3030 lambda!3022)))

(declare-fun bs!11673 () Bool)

(assert (= bs!11673 (and d!28047 d!27985)))

(assert (=> bs!11673 (= lambda!3030 lambda!3001)))

(declare-fun bs!11674 () Bool)

(assert (= bs!11674 (and d!28047 d!28029)))

(assert (=> bs!11674 (= lambda!3030 lambda!3023)))

(declare-fun bs!11675 () Bool)

(assert (= bs!11675 (and d!28047 d!28039)))

(assert (=> bs!11675 (= lambda!3030 lambda!3028)))

(declare-fun bs!11676 () Bool)

(assert (= bs!11676 (and d!28047 d!27999)))

(assert (=> bs!11676 (= lambda!3030 lambda!3008)))

(declare-fun bs!11677 () Bool)

(assert (= bs!11677 (and d!28047 d!27995)))

(assert (=> bs!11677 (= lambda!3030 lambda!3006)))

(declare-fun bs!11678 () Bool)

(assert (= bs!11678 (and d!28047 d!28025)))

(assert (=> bs!11678 (= lambda!3030 lambda!3021)))

(declare-fun bs!11679 () Bool)

(assert (= bs!11679 (and d!28047 d!28007)))

(assert (=> bs!11679 (= lambda!3030 lambda!3011)))

(declare-fun bs!11680 () Bool)

(assert (= bs!11680 (and d!28047 d!28017)))

(assert (=> bs!11680 (= lambda!3030 lambda!3018)))

(declare-fun bs!11681 () Bool)

(assert (= bs!11681 (and d!28047 d!28013)))

(assert (=> bs!11681 (= lambda!3030 lambda!3016)))

(declare-fun bs!11682 () Bool)

(assert (= bs!11682 (and d!28047 d!28037)))

(assert (=> bs!11682 (= lambda!3030 lambda!3027)))

(declare-fun bs!11683 () Bool)

(assert (= bs!11683 (and d!28047 d!28033)))

(assert (=> bs!11683 (= lambda!3030 lambda!3025)))

(declare-fun bs!11684 () Bool)

(assert (= bs!11684 (and d!28047 d!28041)))

(assert (=> bs!11684 (= lambda!3030 lambda!3029)))

(declare-fun bs!11685 () Bool)

(assert (= bs!11685 (and d!28047 d!28031)))

(assert (=> bs!11685 (= lambda!3030 lambda!3024)))

(declare-fun bs!11686 () Bool)

(assert (= bs!11686 (and d!28047 d!28035)))

(assert (=> bs!11686 (= lambda!3030 lambda!3026)))

(declare-fun bs!11687 () Bool)

(assert (= bs!11687 (and d!28047 d!28019)))

(assert (=> bs!11687 (= lambda!3030 lambda!3019)))

(assert (=> d!28047 (= (inv!2291 setElem!1699) (forall!341 (exprs!605 setElem!1699) lambda!3030))))

(declare-fun bs!11688 () Bool)

(assert (= bs!11688 d!28047))

(declare-fun m!101784 () Bool)

(assert (=> bs!11688 m!101784))

(assert (=> setNonEmpty!1699 d!28047))

(declare-fun bs!11689 () Bool)

(declare-fun d!28049 () Bool)

(assert (= bs!11689 (and d!28049 d!28001)))

(declare-fun lambda!3031 () Int)

(assert (=> bs!11689 (= lambda!3031 lambda!3009)))

(declare-fun bs!11690 () Bool)

(assert (= bs!11690 (and d!28049 d!28023)))

(assert (=> bs!11690 (= lambda!3031 lambda!3020)))

(declare-fun bs!11691 () Bool)

(assert (= bs!11691 (and d!28049 d!27997)))

(assert (=> bs!11691 (= lambda!3031 lambda!3007)))

(declare-fun bs!11692 () Bool)

(assert (= bs!11692 (and d!28049 d!28005)))

(assert (=> bs!11692 (= lambda!3031 lambda!3010)))

(declare-fun bs!11693 () Bool)

(assert (= bs!11693 (and d!28049 d!27993)))

(assert (=> bs!11693 (= lambda!3031 lambda!3005)))

(declare-fun bs!11694 () Bool)

(assert (= bs!11694 (and d!28049 d!28015)))

(assert (=> bs!11694 (= lambda!3031 lambda!3017)))

(declare-fun bs!11695 () Bool)

(assert (= bs!11695 (and d!28049 d!28027)))

(assert (=> bs!11695 (= lambda!3031 lambda!3022)))

(declare-fun bs!11696 () Bool)

(assert (= bs!11696 (and d!28049 d!27985)))

(assert (=> bs!11696 (= lambda!3031 lambda!3001)))

(declare-fun bs!11697 () Bool)

(assert (= bs!11697 (and d!28049 d!28029)))

(assert (=> bs!11697 (= lambda!3031 lambda!3023)))

(declare-fun bs!11698 () Bool)

(assert (= bs!11698 (and d!28049 d!28039)))

(assert (=> bs!11698 (= lambda!3031 lambda!3028)))

(declare-fun bs!11699 () Bool)

(assert (= bs!11699 (and d!28049 d!27999)))

(assert (=> bs!11699 (= lambda!3031 lambda!3008)))

(declare-fun bs!11700 () Bool)

(assert (= bs!11700 (and d!28049 d!28047)))

(assert (=> bs!11700 (= lambda!3031 lambda!3030)))

(declare-fun bs!11701 () Bool)

(assert (= bs!11701 (and d!28049 d!28009)))

(assert (=> bs!11701 (= lambda!3031 lambda!3012)))

(declare-fun bs!11702 () Bool)

(assert (= bs!11702 (and d!28049 d!27995)))

(assert (=> bs!11702 (= lambda!3031 lambda!3006)))

(declare-fun bs!11703 () Bool)

(assert (= bs!11703 (and d!28049 d!28025)))

(assert (=> bs!11703 (= lambda!3031 lambda!3021)))

(declare-fun bs!11704 () Bool)

(assert (= bs!11704 (and d!28049 d!28007)))

(assert (=> bs!11704 (= lambda!3031 lambda!3011)))

(declare-fun bs!11705 () Bool)

(assert (= bs!11705 (and d!28049 d!28017)))

(assert (=> bs!11705 (= lambda!3031 lambda!3018)))

(declare-fun bs!11706 () Bool)

(assert (= bs!11706 (and d!28049 d!28013)))

(assert (=> bs!11706 (= lambda!3031 lambda!3016)))

(declare-fun bs!11707 () Bool)

(assert (= bs!11707 (and d!28049 d!28037)))

(assert (=> bs!11707 (= lambda!3031 lambda!3027)))

(declare-fun bs!11708 () Bool)

(assert (= bs!11708 (and d!28049 d!28033)))

(assert (=> bs!11708 (= lambda!3031 lambda!3025)))

(declare-fun bs!11709 () Bool)

(assert (= bs!11709 (and d!28049 d!28041)))

(assert (=> bs!11709 (= lambda!3031 lambda!3029)))

(declare-fun bs!11710 () Bool)

(assert (= bs!11710 (and d!28049 d!28031)))

(assert (=> bs!11710 (= lambda!3031 lambda!3024)))

(declare-fun bs!11711 () Bool)

(assert (= bs!11711 (and d!28049 d!28035)))

(assert (=> bs!11711 (= lambda!3031 lambda!3026)))

(declare-fun bs!11712 () Bool)

(assert (= bs!11712 (and d!28049 d!28019)))

(assert (=> bs!11712 (= lambda!3031 lambda!3019)))

(assert (=> d!28049 (= (inv!2291 setElem!1700) (forall!341 (exprs!605 setElem!1700) lambda!3031))))

(declare-fun bs!11713 () Bool)

(assert (= bs!11713 d!28049))

(declare-fun m!101786 () Bool)

(assert (=> bs!11713 m!101786))

(assert (=> setNonEmpty!1700 d!28049))

(declare-fun bs!11714 () Bool)

(declare-fun d!28051 () Bool)

(assert (= bs!11714 (and d!28051 d!28001)))

(declare-fun lambda!3032 () Int)

(assert (=> bs!11714 (= lambda!3032 lambda!3009)))

(declare-fun bs!11715 () Bool)

(assert (= bs!11715 (and d!28051 d!28023)))

(assert (=> bs!11715 (= lambda!3032 lambda!3020)))

(declare-fun bs!11716 () Bool)

(assert (= bs!11716 (and d!28051 d!28005)))

(assert (=> bs!11716 (= lambda!3032 lambda!3010)))

(declare-fun bs!11717 () Bool)

(assert (= bs!11717 (and d!28051 d!27993)))

(assert (=> bs!11717 (= lambda!3032 lambda!3005)))

(declare-fun bs!11718 () Bool)

(assert (= bs!11718 (and d!28051 d!28015)))

(assert (=> bs!11718 (= lambda!3032 lambda!3017)))

(declare-fun bs!11719 () Bool)

(assert (= bs!11719 (and d!28051 d!28027)))

(assert (=> bs!11719 (= lambda!3032 lambda!3022)))

(declare-fun bs!11720 () Bool)

(assert (= bs!11720 (and d!28051 d!27985)))

(assert (=> bs!11720 (= lambda!3032 lambda!3001)))

(declare-fun bs!11721 () Bool)

(assert (= bs!11721 (and d!28051 d!28029)))

(assert (=> bs!11721 (= lambda!3032 lambda!3023)))

(declare-fun bs!11722 () Bool)

(assert (= bs!11722 (and d!28051 d!28039)))

(assert (=> bs!11722 (= lambda!3032 lambda!3028)))

(declare-fun bs!11723 () Bool)

(assert (= bs!11723 (and d!28051 d!27999)))

(assert (=> bs!11723 (= lambda!3032 lambda!3008)))

(declare-fun bs!11724 () Bool)

(assert (= bs!11724 (and d!28051 d!28047)))

(assert (=> bs!11724 (= lambda!3032 lambda!3030)))

(declare-fun bs!11725 () Bool)

(assert (= bs!11725 (and d!28051 d!28009)))

(assert (=> bs!11725 (= lambda!3032 lambda!3012)))

(declare-fun bs!11726 () Bool)

(assert (= bs!11726 (and d!28051 d!28049)))

(assert (=> bs!11726 (= lambda!3032 lambda!3031)))

(declare-fun bs!11727 () Bool)

(assert (= bs!11727 (and d!28051 d!27997)))

(assert (=> bs!11727 (= lambda!3032 lambda!3007)))

(declare-fun bs!11728 () Bool)

(assert (= bs!11728 (and d!28051 d!27995)))

(assert (=> bs!11728 (= lambda!3032 lambda!3006)))

(declare-fun bs!11729 () Bool)

(assert (= bs!11729 (and d!28051 d!28025)))

(assert (=> bs!11729 (= lambda!3032 lambda!3021)))

(declare-fun bs!11730 () Bool)

(assert (= bs!11730 (and d!28051 d!28007)))

(assert (=> bs!11730 (= lambda!3032 lambda!3011)))

(declare-fun bs!11731 () Bool)

(assert (= bs!11731 (and d!28051 d!28017)))

(assert (=> bs!11731 (= lambda!3032 lambda!3018)))

(declare-fun bs!11732 () Bool)

(assert (= bs!11732 (and d!28051 d!28013)))

(assert (=> bs!11732 (= lambda!3032 lambda!3016)))

(declare-fun bs!11733 () Bool)

(assert (= bs!11733 (and d!28051 d!28037)))

(assert (=> bs!11733 (= lambda!3032 lambda!3027)))

(declare-fun bs!11734 () Bool)

(assert (= bs!11734 (and d!28051 d!28033)))

(assert (=> bs!11734 (= lambda!3032 lambda!3025)))

(declare-fun bs!11735 () Bool)

(assert (= bs!11735 (and d!28051 d!28041)))

(assert (=> bs!11735 (= lambda!3032 lambda!3029)))

(declare-fun bs!11736 () Bool)

(assert (= bs!11736 (and d!28051 d!28031)))

(assert (=> bs!11736 (= lambda!3032 lambda!3024)))

(declare-fun bs!11737 () Bool)

(assert (= bs!11737 (and d!28051 d!28035)))

(assert (=> bs!11737 (= lambda!3032 lambda!3026)))

(declare-fun bs!11738 () Bool)

(assert (= bs!11738 (and d!28051 d!28019)))

(assert (=> bs!11738 (= lambda!3032 lambda!3019)))

(assert (=> d!28051 (= (inv!2291 (_2!1149 (_1!1150 (h!7195 mapValue!1213)))) (forall!341 (exprs!605 (_2!1149 (_1!1150 (h!7195 mapValue!1213)))) lambda!3032))))

(declare-fun bs!11739 () Bool)

(assert (= bs!11739 d!28051))

(declare-fun m!101788 () Bool)

(assert (=> bs!11739 m!101788))

(assert (=> b!111396 d!28051))

(declare-fun condSetEmpty!1706 () Bool)

(assert (=> setNonEmpty!1702 (= condSetEmpty!1706 (= setRest!1702 ((as const (Array Context!210 Bool)) false)))))

(declare-fun setRes!1706 () Bool)

(assert (=> setNonEmpty!1702 (= tp!60135 setRes!1706)))

(declare-fun setIsEmpty!1706 () Bool)

(assert (=> setIsEmpty!1706 setRes!1706))

(declare-fun setElem!1706 () Context!210)

(declare-fun e!62462 () Bool)

(declare-fun setNonEmpty!1706 () Bool)

(declare-fun tp!60187 () Bool)

(assert (=> setNonEmpty!1706 (= setRes!1706 (and tp!60187 (inv!2291 setElem!1706) e!62462))))

(declare-fun setRest!1706 () (InoxSet Context!210))

(assert (=> setNonEmpty!1706 (= setRest!1702 ((_ map or) (store ((as const (Array Context!210 Bool)) false) setElem!1706 true) setRest!1706))))

(declare-fun b!111473 () Bool)

(declare-fun tp!60186 () Bool)

(assert (=> b!111473 (= e!62462 tp!60186)))

(assert (= (and setNonEmpty!1702 condSetEmpty!1706) setIsEmpty!1706))

(assert (= (and setNonEmpty!1702 (not condSetEmpty!1706)) setNonEmpty!1706))

(assert (= setNonEmpty!1706 b!111473))

(declare-fun m!101790 () Bool)

(assert (=> setNonEmpty!1706 m!101790))

(declare-fun setIsEmpty!1707 () Bool)

(declare-fun setRes!1707 () Bool)

(assert (=> setIsEmpty!1707 setRes!1707))

(declare-fun b!111474 () Bool)

(declare-fun e!62465 () Bool)

(declare-fun tp!60191 () Bool)

(assert (=> b!111474 (= e!62465 tp!60191)))

(declare-fun tp!60190 () Bool)

(declare-fun e!62463 () Bool)

(declare-fun b!111475 () Bool)

(declare-fun e!62464 () Bool)

(assert (=> b!111475 (= e!62463 (and (inv!2291 (_1!1151 (_1!1152 (h!7196 (t!22282 (minValue!565 (v!13149 (underlying!817 (v!13150 (underlying!818 (cache!756 cacheUp!805))))))))))) e!62464 tp_is_empty!941 setRes!1707 tp!60190))))

(declare-fun condSetEmpty!1707 () Bool)

(assert (=> b!111475 (= condSetEmpty!1707 (= (_2!1152 (h!7196 (t!22282 (minValue!565 (v!13149 (underlying!817 (v!13150 (underlying!818 (cache!756 cacheUp!805))))))))) ((as const (Array Context!210 Bool)) false)))))

(assert (=> b!111403 (= tp!60132 e!62463)))

(declare-fun tp!60189 () Bool)

(declare-fun setElem!1707 () Context!210)

(declare-fun setNonEmpty!1707 () Bool)

(assert (=> setNonEmpty!1707 (= setRes!1707 (and tp!60189 (inv!2291 setElem!1707) e!62465))))

(declare-fun setRest!1707 () (InoxSet Context!210))

(assert (=> setNonEmpty!1707 (= (_2!1152 (h!7196 (t!22282 (minValue!565 (v!13149 (underlying!817 (v!13150 (underlying!818 (cache!756 cacheUp!805))))))))) ((_ map or) (store ((as const (Array Context!210 Bool)) false) setElem!1707 true) setRest!1707))))

(declare-fun b!111476 () Bool)

(declare-fun tp!60188 () Bool)

(assert (=> b!111476 (= e!62464 tp!60188)))

(assert (= b!111475 b!111476))

(assert (= (and b!111475 condSetEmpty!1707) setIsEmpty!1707))

(assert (= (and b!111475 (not condSetEmpty!1707)) setNonEmpty!1707))

(assert (= setNonEmpty!1707 b!111474))

(assert (= (and b!111403 ((_ is Cons!1799) (t!22282 (minValue!565 (v!13149 (underlying!817 (v!13150 (underlying!818 (cache!756 cacheUp!805))))))))) b!111475))

(declare-fun m!101792 () Bool)

(assert (=> b!111475 m!101792))

(declare-fun m!101794 () Bool)

(assert (=> setNonEmpty!1707 m!101794))

(declare-fun b!111477 () Bool)

(declare-fun e!62466 () Bool)

(declare-fun tp!60192 () Bool)

(declare-fun tp!60193 () Bool)

(assert (=> b!111477 (= e!62466 (and tp!60192 tp!60193))))

(assert (=> b!111399 (= tp!60129 e!62466)))

(assert (= (and b!111399 ((_ is Cons!1797) (exprs!605 setElem!1700))) b!111477))

(declare-fun b!111478 () Bool)

(declare-fun e!62467 () Bool)

(declare-fun tp!60194 () Bool)

(declare-fun tp!60195 () Bool)

(assert (=> b!111478 (= e!62467 (and tp!60194 tp!60195))))

(assert (=> b!111362 (= tp!60067 e!62467)))

(assert (= (and b!111362 ((_ is Cons!1797) (exprs!605 (_1!1151 (_1!1152 (h!7196 mapValue!1214)))))) b!111478))

(declare-fun b!111479 () Bool)

(declare-fun e!62468 () Bool)

(declare-fun tp!60196 () Bool)

(declare-fun tp!60197 () Bool)

(assert (=> b!111479 (= e!62468 (and tp!60196 tp!60197))))

(assert (=> b!111395 (= tp!60116 e!62468)))

(assert (= (and b!111395 ((_ is Cons!1797) (exprs!605 (_2!1149 (_1!1150 (h!7195 mapValue!1220)))))) b!111479))

(declare-fun b!111480 () Bool)

(declare-fun e!62469 () Bool)

(declare-fun tp!60198 () Bool)

(declare-fun tp!60199 () Bool)

(assert (=> b!111480 (= e!62469 (and tp!60198 tp!60199))))

(assert (=> b!111405 (= tp!60137 e!62469)))

(assert (= (and b!111405 ((_ is Cons!1797) (exprs!605 setElem!1702))) b!111480))

(declare-fun b!111491 () Bool)

(declare-fun e!62472 () Bool)

(assert (=> b!111491 (= e!62472 tp_is_empty!941)))

(declare-fun b!111494 () Bool)

(declare-fun tp!60211 () Bool)

(declare-fun tp!60213 () Bool)

(assert (=> b!111494 (= e!62472 (and tp!60211 tp!60213))))

(declare-fun b!111493 () Bool)

(declare-fun tp!60214 () Bool)

(assert (=> b!111493 (= e!62472 tp!60214)))

(declare-fun b!111492 () Bool)

(declare-fun tp!60210 () Bool)

(declare-fun tp!60212 () Bool)

(assert (=> b!111492 (= e!62472 (and tp!60210 tp!60212))))

(assert (=> b!111363 (= tp!60073 e!62472)))

(assert (= (and b!111363 ((_ is ElementMatch!443) (_1!1149 (_1!1150 (h!7195 mapDefault!1214))))) b!111491))

(assert (= (and b!111363 ((_ is Concat!827) (_1!1149 (_1!1150 (h!7195 mapDefault!1214))))) b!111492))

(assert (= (and b!111363 ((_ is Star!443) (_1!1149 (_1!1150 (h!7195 mapDefault!1214))))) b!111493))

(assert (= (and b!111363 ((_ is Union!443) (_1!1149 (_1!1150 (h!7195 mapDefault!1214))))) b!111494))

(declare-fun setIsEmpty!1708 () Bool)

(declare-fun setRes!1708 () Bool)

(assert (=> setIsEmpty!1708 setRes!1708))

(declare-fun e!62474 () Bool)

(declare-fun setNonEmpty!1708 () Bool)

(declare-fun tp!60219 () Bool)

(declare-fun setElem!1708 () Context!210)

(assert (=> setNonEmpty!1708 (= setRes!1708 (and tp!60219 (inv!2291 setElem!1708) e!62474))))

(declare-fun setRest!1708 () (InoxSet Context!210))

(assert (=> setNonEmpty!1708 (= (_2!1150 (h!7195 (t!22281 mapDefault!1214))) ((_ map or) (store ((as const (Array Context!210 Bool)) false) setElem!1708 true) setRest!1708))))

(declare-fun b!111496 () Bool)

(declare-fun tp!60215 () Bool)

(assert (=> b!111496 (= e!62474 tp!60215)))

(declare-fun b!111497 () Bool)

(declare-fun e!62473 () Bool)

(declare-fun tp!60216 () Bool)

(assert (=> b!111497 (= e!62473 tp!60216)))

(declare-fun e!62475 () Bool)

(declare-fun tp!60217 () Bool)

(declare-fun tp!60218 () Bool)

(declare-fun b!111495 () Bool)

(assert (=> b!111495 (= e!62475 (and tp!60217 (inv!2291 (_2!1149 (_1!1150 (h!7195 (t!22281 mapDefault!1214))))) e!62473 tp_is_empty!941 setRes!1708 tp!60218))))

(declare-fun condSetEmpty!1708 () Bool)

(assert (=> b!111495 (= condSetEmpty!1708 (= (_2!1150 (h!7195 (t!22281 mapDefault!1214))) ((as const (Array Context!210 Bool)) false)))))

(assert (=> b!111363 (= tp!60074 e!62475)))

(assert (= b!111495 b!111497))

(assert (= (and b!111495 condSetEmpty!1708) setIsEmpty!1708))

(assert (= (and b!111495 (not condSetEmpty!1708)) setNonEmpty!1708))

(assert (= setNonEmpty!1708 b!111496))

(assert (= (and b!111363 ((_ is Cons!1798) (t!22281 mapDefault!1214))) b!111495))

(declare-fun m!101796 () Bool)

(assert (=> setNonEmpty!1708 m!101796))

(declare-fun m!101798 () Bool)

(assert (=> b!111495 m!101798))

(declare-fun setIsEmpty!1709 () Bool)

(declare-fun setRes!1709 () Bool)

(assert (=> setIsEmpty!1709 setRes!1709))

(declare-fun b!111498 () Bool)

(declare-fun e!62478 () Bool)

(declare-fun tp!60223 () Bool)

(assert (=> b!111498 (= e!62478 tp!60223)))

(declare-fun e!62477 () Bool)

(declare-fun b!111499 () Bool)

(declare-fun tp!60222 () Bool)

(declare-fun e!62476 () Bool)

(assert (=> b!111499 (= e!62476 (and (inv!2291 (_1!1151 (_1!1152 (h!7196 (t!22282 mapValue!1214))))) e!62477 tp_is_empty!941 setRes!1709 tp!60222))))

(declare-fun condSetEmpty!1709 () Bool)

(assert (=> b!111499 (= condSetEmpty!1709 (= (_2!1152 (h!7196 (t!22282 mapValue!1214))) ((as const (Array Context!210 Bool)) false)))))

(assert (=> b!111361 (= tp!60069 e!62476)))

(declare-fun setNonEmpty!1709 () Bool)

(declare-fun setElem!1709 () Context!210)

(declare-fun tp!60221 () Bool)

(assert (=> setNonEmpty!1709 (= setRes!1709 (and tp!60221 (inv!2291 setElem!1709) e!62478))))

(declare-fun setRest!1709 () (InoxSet Context!210))

(assert (=> setNonEmpty!1709 (= (_2!1152 (h!7196 (t!22282 mapValue!1214))) ((_ map or) (store ((as const (Array Context!210 Bool)) false) setElem!1709 true) setRest!1709))))

(declare-fun b!111500 () Bool)

(declare-fun tp!60220 () Bool)

(assert (=> b!111500 (= e!62477 tp!60220)))

(assert (= b!111499 b!111500))

(assert (= (and b!111499 condSetEmpty!1709) setIsEmpty!1709))

(assert (= (and b!111499 (not condSetEmpty!1709)) setNonEmpty!1709))

(assert (= setNonEmpty!1709 b!111498))

(assert (= (and b!111361 ((_ is Cons!1799) (t!22282 mapValue!1214))) b!111499))

(declare-fun m!101800 () Bool)

(assert (=> b!111499 m!101800))

(declare-fun m!101802 () Bool)

(assert (=> setNonEmpty!1709 m!101802))

(declare-fun b!111501 () Bool)

(declare-fun e!62479 () Bool)

(declare-fun tp!60224 () Bool)

(declare-fun tp!60225 () Bool)

(assert (=> b!111501 (= e!62479 (and tp!60224 tp!60225))))

(assert (=> b!111394 (= tp!60114 e!62479)))

(assert (= (and b!111394 ((_ is Cons!1797) (exprs!605 setElem!1698))) b!111501))

(declare-fun setIsEmpty!1710 () Bool)

(declare-fun setRes!1710 () Bool)

(assert (=> setIsEmpty!1710 setRes!1710))

(declare-fun b!111502 () Bool)

(declare-fun e!62482 () Bool)

(declare-fun tp!60229 () Bool)

(assert (=> b!111502 (= e!62482 tp!60229)))

(declare-fun e!62481 () Bool)

(declare-fun tp!60228 () Bool)

(declare-fun b!111503 () Bool)

(declare-fun e!62480 () Bool)

(assert (=> b!111503 (= e!62480 (and (inv!2291 (_1!1151 (_1!1152 (h!7196 (t!22282 mapDefault!1217))))) e!62481 tp_is_empty!941 setRes!1710 tp!60228))))

(declare-fun condSetEmpty!1710 () Bool)

(assert (=> b!111503 (= condSetEmpty!1710 (= (_2!1152 (h!7196 (t!22282 mapDefault!1217))) ((as const (Array Context!210 Bool)) false)))))

(assert (=> b!111351 (= tp!60052 e!62480)))

(declare-fun tp!60227 () Bool)

(declare-fun setNonEmpty!1710 () Bool)

(declare-fun setElem!1710 () Context!210)

(assert (=> setNonEmpty!1710 (= setRes!1710 (and tp!60227 (inv!2291 setElem!1710) e!62482))))

(declare-fun setRest!1710 () (InoxSet Context!210))

(assert (=> setNonEmpty!1710 (= (_2!1152 (h!7196 (t!22282 mapDefault!1217))) ((_ map or) (store ((as const (Array Context!210 Bool)) false) setElem!1710 true) setRest!1710))))

(declare-fun b!111504 () Bool)

(declare-fun tp!60226 () Bool)

(assert (=> b!111504 (= e!62481 tp!60226)))

(assert (= b!111503 b!111504))

(assert (= (and b!111503 condSetEmpty!1710) setIsEmpty!1710))

(assert (= (and b!111503 (not condSetEmpty!1710)) setNonEmpty!1710))

(assert (= setNonEmpty!1710 b!111502))

(assert (= (and b!111351 ((_ is Cons!1799) (t!22282 mapDefault!1217))) b!111503))

(declare-fun m!101804 () Bool)

(assert (=> b!111503 m!101804))

(declare-fun m!101806 () Bool)

(assert (=> setNonEmpty!1710 m!101806))

(declare-fun b!111505 () Bool)

(declare-fun e!62483 () Bool)

(declare-fun tp!60230 () Bool)

(declare-fun tp!60231 () Bool)

(assert (=> b!111505 (= e!62483 (and tp!60230 tp!60231))))

(assert (=> b!111365 (= tp!60072 e!62483)))

(assert (= (and b!111365 ((_ is Cons!1797) (exprs!605 (_2!1149 (_1!1150 (h!7195 mapDefault!1214)))))) b!111505))

(declare-fun condSetEmpty!1711 () Bool)

(assert (=> setNonEmpty!1684 (= condSetEmpty!1711 (= setRest!1685 ((as const (Array Context!210 Bool)) false)))))

(declare-fun setRes!1711 () Bool)

(assert (=> setNonEmpty!1684 (= tp!60054 setRes!1711)))

(declare-fun setIsEmpty!1711 () Bool)

(assert (=> setIsEmpty!1711 setRes!1711))

(declare-fun tp!60233 () Bool)

(declare-fun e!62484 () Bool)

(declare-fun setNonEmpty!1711 () Bool)

(declare-fun setElem!1711 () Context!210)

(assert (=> setNonEmpty!1711 (= setRes!1711 (and tp!60233 (inv!2291 setElem!1711) e!62484))))

(declare-fun setRest!1711 () (InoxSet Context!210))

(assert (=> setNonEmpty!1711 (= setRest!1685 ((_ map or) (store ((as const (Array Context!210 Bool)) false) setElem!1711 true) setRest!1711))))

(declare-fun b!111506 () Bool)

(declare-fun tp!60232 () Bool)

(assert (=> b!111506 (= e!62484 tp!60232)))

(assert (= (and setNonEmpty!1684 condSetEmpty!1711) setIsEmpty!1711))

(assert (= (and setNonEmpty!1684 (not condSetEmpty!1711)) setNonEmpty!1711))

(assert (= setNonEmpty!1711 b!111506))

(declare-fun m!101808 () Bool)

(assert (=> setNonEmpty!1711 m!101808))

(declare-fun b!111507 () Bool)

(declare-fun e!62485 () Bool)

(declare-fun tp!60234 () Bool)

(declare-fun tp!60235 () Bool)

(assert (=> b!111507 (= e!62485 (and tp!60234 tp!60235))))

(assert (=> b!111331 (= tp!60028 e!62485)))

(assert (= (and b!111331 ((_ is Cons!1797) (exprs!605 (_2!1149 (_1!1150 (h!7195 (minValue!564 (v!13147 (underlying!815 (v!13148 (underlying!816 (cache!755 cacheDown!924)))))))))))) b!111507))

(declare-fun b!111508 () Bool)

(declare-fun e!62486 () Bool)

(declare-fun tp!60236 () Bool)

(declare-fun tp!60237 () Bool)

(assert (=> b!111508 (= e!62486 (and tp!60236 tp!60237))))

(assert (=> b!111328 (= tp!60023 e!62486)))

(assert (= (and b!111328 ((_ is Cons!1797) (exprs!605 (_2!1149 (_1!1150 (h!7195 (zeroValue!564 (v!13147 (underlying!815 (v!13148 (underlying!816 (cache!755 cacheDown!924)))))))))))) b!111508))

(declare-fun b!111523 () Bool)

(declare-fun e!62503 () Bool)

(declare-fun e!62501 () Bool)

(assert (=> b!111523 (= e!62503 e!62501)))

(declare-fun b!111524 () Bool)

(declare-fun e!62502 () Bool)

(declare-fun lt!32560 () MutLongMap!309)

(assert (=> b!111524 (= e!62502 ((_ is LongMap!309) lt!32560))))

(assert (=> b!111524 (= lt!32560 (v!13150 (underlying!818 (cache!756 (_2!1153 (choose!1498 z!674 a!1201 cacheUp!805 cacheDown!924))))))))

(declare-fun b!111525 () Bool)

(declare-fun e!62499 () Bool)

(declare-fun e!62504 () Bool)

(assert (=> b!111525 (= e!62499 e!62504)))

(declare-fun b!111526 () Bool)

(declare-fun e!62500 () Bool)

(assert (=> b!111526 (= e!62500 e!62503)))

(declare-fun b!111527 () Bool)

(declare-fun lt!32561 () MutLongMap!308)

(assert (=> b!111527 (= e!62501 ((_ is LongMap!308) lt!32561))))

(assert (=> b!111527 (= lt!32561 (v!13148 (underlying!816 (cache!755 (_3!209 (choose!1498 z!674 a!1201 cacheUp!805 cacheDown!924))))))))

(declare-fun b!111528 () Bool)

(assert (=> b!111528 (= e!62504 e!62502)))

(assert (=> d!27977 (= true (and e!62499 e!62500))))

(assert (= b!111528 b!111524))

(assert (= (and b!111525 ((_ is HashMap!305) (cache!756 (_2!1153 (choose!1498 z!674 a!1201 cacheUp!805 cacheDown!924))))) b!111528))

(assert (= d!27977 b!111525))

(assert (= b!111523 b!111527))

(assert (= (and b!111526 ((_ is HashMap!304) (cache!755 (_3!209 (choose!1498 z!674 a!1201 cacheUp!805 cacheDown!924))))) b!111523))

(assert (= d!27977 b!111526))

(declare-fun b!111529 () Bool)

(declare-fun e!62505 () Bool)

(assert (=> b!111529 (= e!62505 tp_is_empty!941)))

(declare-fun b!111532 () Bool)

(declare-fun tp!60239 () Bool)

(declare-fun tp!60241 () Bool)

(assert (=> b!111532 (= e!62505 (and tp!60239 tp!60241))))

(declare-fun b!111531 () Bool)

(declare-fun tp!60242 () Bool)

(assert (=> b!111531 (= e!62505 tp!60242)))

(declare-fun b!111530 () Bool)

(declare-fun tp!60238 () Bool)

(declare-fun tp!60240 () Bool)

(assert (=> b!111530 (= e!62505 (and tp!60238 tp!60240))))

(assert (=> b!111393 (= tp!60111 e!62505)))

(assert (= (and b!111393 ((_ is ElementMatch!443) (_1!1149 (_1!1150 (h!7195 mapDefault!1220))))) b!111529))

(assert (= (and b!111393 ((_ is Concat!827) (_1!1149 (_1!1150 (h!7195 mapDefault!1220))))) b!111530))

(assert (= (and b!111393 ((_ is Star!443) (_1!1149 (_1!1150 (h!7195 mapDefault!1220))))) b!111531))

(assert (= (and b!111393 ((_ is Union!443) (_1!1149 (_1!1150 (h!7195 mapDefault!1220))))) b!111532))

(declare-fun setIsEmpty!1712 () Bool)

(declare-fun setRes!1712 () Bool)

(assert (=> setIsEmpty!1712 setRes!1712))

(declare-fun e!62507 () Bool)

(declare-fun tp!60247 () Bool)

(declare-fun setElem!1712 () Context!210)

(declare-fun setNonEmpty!1712 () Bool)

(assert (=> setNonEmpty!1712 (= setRes!1712 (and tp!60247 (inv!2291 setElem!1712) e!62507))))

(declare-fun setRest!1712 () (InoxSet Context!210))

(assert (=> setNonEmpty!1712 (= (_2!1150 (h!7195 (t!22281 mapDefault!1220))) ((_ map or) (store ((as const (Array Context!210 Bool)) false) setElem!1712 true) setRest!1712))))

(declare-fun b!111534 () Bool)

(declare-fun tp!60243 () Bool)

(assert (=> b!111534 (= e!62507 tp!60243)))

(declare-fun b!111535 () Bool)

(declare-fun e!62506 () Bool)

(declare-fun tp!60244 () Bool)

(assert (=> b!111535 (= e!62506 tp!60244)))

(declare-fun tp!60246 () Bool)

(declare-fun e!62508 () Bool)

(declare-fun tp!60245 () Bool)

(declare-fun b!111533 () Bool)

(assert (=> b!111533 (= e!62508 (and tp!60245 (inv!2291 (_2!1149 (_1!1150 (h!7195 (t!22281 mapDefault!1220))))) e!62506 tp_is_empty!941 setRes!1712 tp!60246))))

(declare-fun condSetEmpty!1712 () Bool)

(assert (=> b!111533 (= condSetEmpty!1712 (= (_2!1150 (h!7195 (t!22281 mapDefault!1220))) ((as const (Array Context!210 Bool)) false)))))

(assert (=> b!111393 (= tp!60118 e!62508)))

(assert (= b!111533 b!111535))

(assert (= (and b!111533 condSetEmpty!1712) setIsEmpty!1712))

(assert (= (and b!111533 (not condSetEmpty!1712)) setNonEmpty!1712))

(assert (= setNonEmpty!1712 b!111534))

(assert (= (and b!111393 ((_ is Cons!1798) (t!22281 mapDefault!1220))) b!111533))

(declare-fun m!101810 () Bool)

(assert (=> setNonEmpty!1712 m!101810))

(declare-fun m!101812 () Bool)

(assert (=> b!111533 m!101812))

(declare-fun condSetEmpty!1713 () Bool)

(assert (=> setNonEmpty!1685 (= condSetEmpty!1713 (= setRest!1684 ((as const (Array Context!210 Bool)) false)))))

(declare-fun setRes!1713 () Bool)

(assert (=> setNonEmpty!1685 (= tp!60050 setRes!1713)))

(declare-fun setIsEmpty!1713 () Bool)

(assert (=> setIsEmpty!1713 setRes!1713))

(declare-fun setElem!1713 () Context!210)

(declare-fun tp!60249 () Bool)

(declare-fun setNonEmpty!1713 () Bool)

(declare-fun e!62509 () Bool)

(assert (=> setNonEmpty!1713 (= setRes!1713 (and tp!60249 (inv!2291 setElem!1713) e!62509))))

(declare-fun setRest!1713 () (InoxSet Context!210))

(assert (=> setNonEmpty!1713 (= setRest!1684 ((_ map or) (store ((as const (Array Context!210 Bool)) false) setElem!1713 true) setRest!1713))))

(declare-fun b!111536 () Bool)

(declare-fun tp!60248 () Bool)

(assert (=> b!111536 (= e!62509 tp!60248)))

(assert (= (and setNonEmpty!1685 condSetEmpty!1713) setIsEmpty!1713))

(assert (= (and setNonEmpty!1685 (not condSetEmpty!1713)) setNonEmpty!1713))

(assert (= setNonEmpty!1713 b!111536))

(declare-fun m!101814 () Bool)

(assert (=> setNonEmpty!1713 m!101814))

(declare-fun condSetEmpty!1714 () Bool)

(assert (=> setNonEmpty!1692 (= condSetEmpty!1714 (= setRest!1692 ((as const (Array Context!210 Bool)) false)))))

(declare-fun setRes!1714 () Bool)

(assert (=> setNonEmpty!1692 (= tp!60087 setRes!1714)))

(declare-fun setIsEmpty!1714 () Bool)

(assert (=> setIsEmpty!1714 setRes!1714))

(declare-fun setNonEmpty!1714 () Bool)

(declare-fun e!62510 () Bool)

(declare-fun setElem!1714 () Context!210)

(declare-fun tp!60251 () Bool)

(assert (=> setNonEmpty!1714 (= setRes!1714 (and tp!60251 (inv!2291 setElem!1714) e!62510))))

(declare-fun setRest!1714 () (InoxSet Context!210))

(assert (=> setNonEmpty!1714 (= setRest!1692 ((_ map or) (store ((as const (Array Context!210 Bool)) false) setElem!1714 true) setRest!1714))))

(declare-fun b!111537 () Bool)

(declare-fun tp!60250 () Bool)

(assert (=> b!111537 (= e!62510 tp!60250)))

(assert (= (and setNonEmpty!1692 condSetEmpty!1714) setIsEmpty!1714))

(assert (= (and setNonEmpty!1692 (not condSetEmpty!1714)) setNonEmpty!1714))

(assert (= setNonEmpty!1714 b!111537))

(declare-fun m!101816 () Bool)

(assert (=> setNonEmpty!1714 m!101816))

(declare-fun b!111538 () Bool)

(declare-fun e!62511 () Bool)

(assert (=> b!111538 (= e!62511 tp_is_empty!941)))

(declare-fun b!111541 () Bool)

(declare-fun tp!60253 () Bool)

(declare-fun tp!60255 () Bool)

(assert (=> b!111541 (= e!62511 (and tp!60253 tp!60255))))

(declare-fun b!111540 () Bool)

(declare-fun tp!60256 () Bool)

(assert (=> b!111540 (= e!62511 tp!60256)))

(declare-fun b!111539 () Bool)

(declare-fun tp!60252 () Bool)

(declare-fun tp!60254 () Bool)

(assert (=> b!111539 (= e!62511 (and tp!60252 tp!60254))))

(assert (=> b!111390 (= tp!60112 e!62511)))

(assert (= (and b!111390 ((_ is ElementMatch!443) (_1!1149 (_1!1150 (h!7195 mapValue!1220))))) b!111538))

(assert (= (and b!111390 ((_ is Concat!827) (_1!1149 (_1!1150 (h!7195 mapValue!1220))))) b!111539))

(assert (= (and b!111390 ((_ is Star!443) (_1!1149 (_1!1150 (h!7195 mapValue!1220))))) b!111540))

(assert (= (and b!111390 ((_ is Union!443) (_1!1149 (_1!1150 (h!7195 mapValue!1220))))) b!111541))

(declare-fun setIsEmpty!1715 () Bool)

(declare-fun setRes!1715 () Bool)

(assert (=> setIsEmpty!1715 setRes!1715))

(declare-fun setNonEmpty!1715 () Bool)

(declare-fun setElem!1715 () Context!210)

(declare-fun e!62513 () Bool)

(declare-fun tp!60261 () Bool)

(assert (=> setNonEmpty!1715 (= setRes!1715 (and tp!60261 (inv!2291 setElem!1715) e!62513))))

(declare-fun setRest!1715 () (InoxSet Context!210))

(assert (=> setNonEmpty!1715 (= (_2!1150 (h!7195 (t!22281 mapValue!1220))) ((_ map or) (store ((as const (Array Context!210 Bool)) false) setElem!1715 true) setRest!1715))))

(declare-fun b!111543 () Bool)

(declare-fun tp!60257 () Bool)

(assert (=> b!111543 (= e!62513 tp!60257)))

(declare-fun b!111544 () Bool)

(declare-fun e!62512 () Bool)

(declare-fun tp!60258 () Bool)

(assert (=> b!111544 (= e!62512 tp!60258)))

(declare-fun e!62514 () Bool)

(declare-fun tp!60260 () Bool)

(declare-fun tp!60259 () Bool)

(declare-fun b!111542 () Bool)

(assert (=> b!111542 (= e!62514 (and tp!60259 (inv!2291 (_2!1149 (_1!1150 (h!7195 (t!22281 mapValue!1220))))) e!62512 tp_is_empty!941 setRes!1715 tp!60260))))

(declare-fun condSetEmpty!1715 () Bool)

(assert (=> b!111542 (= condSetEmpty!1715 (= (_2!1150 (h!7195 (t!22281 mapValue!1220))) ((as const (Array Context!210 Bool)) false)))))

(assert (=> b!111390 (= tp!60120 e!62514)))

(assert (= b!111542 b!111544))

(assert (= (and b!111542 condSetEmpty!1715) setIsEmpty!1715))

(assert (= (and b!111542 (not condSetEmpty!1715)) setNonEmpty!1715))

(assert (= setNonEmpty!1715 b!111543))

(assert (= (and b!111390 ((_ is Cons!1798) (t!22281 mapValue!1220))) b!111542))

(declare-fun m!101818 () Bool)

(assert (=> setNonEmpty!1715 m!101818))

(declare-fun m!101820 () Bool)

(assert (=> b!111542 m!101820))

(declare-fun setIsEmpty!1716 () Bool)

(declare-fun setRes!1716 () Bool)

(assert (=> setIsEmpty!1716 setRes!1716))

(declare-fun b!111545 () Bool)

(declare-fun e!62517 () Bool)

(declare-fun tp!60265 () Bool)

(assert (=> b!111545 (= e!62517 tp!60265)))

(declare-fun e!62516 () Bool)

(declare-fun b!111546 () Bool)

(declare-fun e!62515 () Bool)

(declare-fun tp!60264 () Bool)

(assert (=> b!111546 (= e!62515 (and (inv!2291 (_1!1151 (_1!1152 (h!7196 (t!22282 mapValue!1217))))) e!62516 tp_is_empty!941 setRes!1716 tp!60264))))

(declare-fun condSetEmpty!1716 () Bool)

(assert (=> b!111546 (= condSetEmpty!1716 (= (_2!1152 (h!7196 (t!22282 mapValue!1217))) ((as const (Array Context!210 Bool)) false)))))

(assert (=> b!111349 (= tp!60053 e!62515)))

(declare-fun setNonEmpty!1716 () Bool)

(declare-fun setElem!1716 () Context!210)

(declare-fun tp!60263 () Bool)

(assert (=> setNonEmpty!1716 (= setRes!1716 (and tp!60263 (inv!2291 setElem!1716) e!62517))))

(declare-fun setRest!1716 () (InoxSet Context!210))

(assert (=> setNonEmpty!1716 (= (_2!1152 (h!7196 (t!22282 mapValue!1217))) ((_ map or) (store ((as const (Array Context!210 Bool)) false) setElem!1716 true) setRest!1716))))

(declare-fun b!111547 () Bool)

(declare-fun tp!60262 () Bool)

(assert (=> b!111547 (= e!62516 tp!60262)))

(assert (= b!111546 b!111547))

(assert (= (and b!111546 condSetEmpty!1716) setIsEmpty!1716))

(assert (= (and b!111546 (not condSetEmpty!1716)) setNonEmpty!1716))

(assert (= setNonEmpty!1716 b!111545))

(assert (= (and b!111349 ((_ is Cons!1799) (t!22282 mapValue!1217))) b!111546))

(declare-fun m!101822 () Bool)

(assert (=> b!111546 m!101822))

(declare-fun m!101824 () Bool)

(assert (=> setNonEmpty!1716 m!101824))

(declare-fun b!111548 () Bool)

(declare-fun e!62518 () Bool)

(assert (=> b!111548 (= e!62518 tp_is_empty!941)))

(declare-fun b!111551 () Bool)

(declare-fun tp!60267 () Bool)

(declare-fun tp!60269 () Bool)

(assert (=> b!111551 (= e!62518 (and tp!60267 tp!60269))))

(declare-fun b!111550 () Bool)

(declare-fun tp!60270 () Bool)

(assert (=> b!111550 (= e!62518 tp!60270)))

(declare-fun b!111549 () Bool)

(declare-fun tp!60266 () Bool)

(declare-fun tp!60268 () Bool)

(assert (=> b!111549 (= e!62518 (and tp!60266 tp!60268))))

(assert (=> b!111329 (= tp!60029 e!62518)))

(assert (= (and b!111329 ((_ is ElementMatch!443) (_1!1149 (_1!1150 (h!7195 (minValue!564 (v!13147 (underlying!815 (v!13148 (underlying!816 (cache!755 cacheDown!924))))))))))) b!111548))

(assert (= (and b!111329 ((_ is Concat!827) (_1!1149 (_1!1150 (h!7195 (minValue!564 (v!13147 (underlying!815 (v!13148 (underlying!816 (cache!755 cacheDown!924))))))))))) b!111549))

(assert (= (and b!111329 ((_ is Star!443) (_1!1149 (_1!1150 (h!7195 (minValue!564 (v!13147 (underlying!815 (v!13148 (underlying!816 (cache!755 cacheDown!924))))))))))) b!111550))

(assert (= (and b!111329 ((_ is Union!443) (_1!1149 (_1!1150 (h!7195 (minValue!564 (v!13147 (underlying!815 (v!13148 (underlying!816 (cache!755 cacheDown!924))))))))))) b!111551))

(declare-fun setIsEmpty!1717 () Bool)

(declare-fun setRes!1717 () Bool)

(assert (=> setIsEmpty!1717 setRes!1717))

(declare-fun setElem!1717 () Context!210)

(declare-fun e!62520 () Bool)

(declare-fun tp!60275 () Bool)

(declare-fun setNonEmpty!1717 () Bool)

(assert (=> setNonEmpty!1717 (= setRes!1717 (and tp!60275 (inv!2291 setElem!1717) e!62520))))

(declare-fun setRest!1717 () (InoxSet Context!210))

(assert (=> setNonEmpty!1717 (= (_2!1150 (h!7195 (t!22281 (minValue!564 (v!13147 (underlying!815 (v!13148 (underlying!816 (cache!755 cacheDown!924))))))))) ((_ map or) (store ((as const (Array Context!210 Bool)) false) setElem!1717 true) setRest!1717))))

(declare-fun b!111553 () Bool)

(declare-fun tp!60271 () Bool)

(assert (=> b!111553 (= e!62520 tp!60271)))

(declare-fun b!111554 () Bool)

(declare-fun e!62519 () Bool)

(declare-fun tp!60272 () Bool)

(assert (=> b!111554 (= e!62519 tp!60272)))

(declare-fun tp!60274 () Bool)

(declare-fun tp!60273 () Bool)

(declare-fun b!111552 () Bool)

(declare-fun e!62521 () Bool)

(assert (=> b!111552 (= e!62521 (and tp!60273 (inv!2291 (_2!1149 (_1!1150 (h!7195 (t!22281 (minValue!564 (v!13147 (underlying!815 (v!13148 (underlying!816 (cache!755 cacheDown!924))))))))))) e!62519 tp_is_empty!941 setRes!1717 tp!60274))))

(declare-fun condSetEmpty!1717 () Bool)

(assert (=> b!111552 (= condSetEmpty!1717 (= (_2!1150 (h!7195 (t!22281 (minValue!564 (v!13147 (underlying!815 (v!13148 (underlying!816 (cache!755 cacheDown!924))))))))) ((as const (Array Context!210 Bool)) false)))))

(assert (=> b!111329 (= tp!60030 e!62521)))

(assert (= b!111552 b!111554))

(assert (= (and b!111552 condSetEmpty!1717) setIsEmpty!1717))

(assert (= (and b!111552 (not condSetEmpty!1717)) setNonEmpty!1717))

(assert (= setNonEmpty!1717 b!111553))

(assert (= (and b!111329 ((_ is Cons!1798) (t!22281 (minValue!564 (v!13147 (underlying!815 (v!13148 (underlying!816 (cache!755 cacheDown!924))))))))) b!111552))

(declare-fun m!101826 () Bool)

(assert (=> setNonEmpty!1717 m!101826))

(declare-fun m!101828 () Bool)

(assert (=> b!111552 m!101828))

(declare-fun b!111555 () Bool)

(declare-fun e!62522 () Bool)

(assert (=> b!111555 (= e!62522 tp_is_empty!941)))

(declare-fun b!111558 () Bool)

(declare-fun tp!60277 () Bool)

(declare-fun tp!60279 () Bool)

(assert (=> b!111558 (= e!62522 (and tp!60277 tp!60279))))

(declare-fun b!111557 () Bool)

(declare-fun tp!60280 () Bool)

(assert (=> b!111557 (= e!62522 tp!60280)))

(declare-fun b!111556 () Bool)

(declare-fun tp!60276 () Bool)

(declare-fun tp!60278 () Bool)

(assert (=> b!111556 (= e!62522 (and tp!60276 tp!60278))))

(assert (=> b!111326 (= tp!60024 e!62522)))

(assert (= (and b!111326 ((_ is ElementMatch!443) (_1!1149 (_1!1150 (h!7195 (zeroValue!564 (v!13147 (underlying!815 (v!13148 (underlying!816 (cache!755 cacheDown!924))))))))))) b!111555))

(assert (= (and b!111326 ((_ is Concat!827) (_1!1149 (_1!1150 (h!7195 (zeroValue!564 (v!13147 (underlying!815 (v!13148 (underlying!816 (cache!755 cacheDown!924))))))))))) b!111556))

(assert (= (and b!111326 ((_ is Star!443) (_1!1149 (_1!1150 (h!7195 (zeroValue!564 (v!13147 (underlying!815 (v!13148 (underlying!816 (cache!755 cacheDown!924))))))))))) b!111557))

(assert (= (and b!111326 ((_ is Union!443) (_1!1149 (_1!1150 (h!7195 (zeroValue!564 (v!13147 (underlying!815 (v!13148 (underlying!816 (cache!755 cacheDown!924))))))))))) b!111558))

(declare-fun setIsEmpty!1718 () Bool)

(declare-fun setRes!1718 () Bool)

(assert (=> setIsEmpty!1718 setRes!1718))

(declare-fun setNonEmpty!1718 () Bool)

(declare-fun setElem!1718 () Context!210)

(declare-fun tp!60285 () Bool)

(declare-fun e!62524 () Bool)

(assert (=> setNonEmpty!1718 (= setRes!1718 (and tp!60285 (inv!2291 setElem!1718) e!62524))))

(declare-fun setRest!1718 () (InoxSet Context!210))

(assert (=> setNonEmpty!1718 (= (_2!1150 (h!7195 (t!22281 (zeroValue!564 (v!13147 (underlying!815 (v!13148 (underlying!816 (cache!755 cacheDown!924))))))))) ((_ map or) (store ((as const (Array Context!210 Bool)) false) setElem!1718 true) setRest!1718))))

(declare-fun b!111560 () Bool)

(declare-fun tp!60281 () Bool)

(assert (=> b!111560 (= e!62524 tp!60281)))

(declare-fun b!111561 () Bool)

(declare-fun e!62523 () Bool)

(declare-fun tp!60282 () Bool)

(assert (=> b!111561 (= e!62523 tp!60282)))

(declare-fun tp!60283 () Bool)

(declare-fun b!111559 () Bool)

(declare-fun e!62525 () Bool)

(declare-fun tp!60284 () Bool)

(assert (=> b!111559 (= e!62525 (and tp!60283 (inv!2291 (_2!1149 (_1!1150 (h!7195 (t!22281 (zeroValue!564 (v!13147 (underlying!815 (v!13148 (underlying!816 (cache!755 cacheDown!924))))))))))) e!62523 tp_is_empty!941 setRes!1718 tp!60284))))

(declare-fun condSetEmpty!1718 () Bool)

(assert (=> b!111559 (= condSetEmpty!1718 (= (_2!1150 (h!7195 (t!22281 (zeroValue!564 (v!13147 (underlying!815 (v!13148 (underlying!816 (cache!755 cacheDown!924))))))))) ((as const (Array Context!210 Bool)) false)))))

(assert (=> b!111326 (= tp!60025 e!62525)))

(assert (= b!111559 b!111561))

(assert (= (and b!111559 condSetEmpty!1718) setIsEmpty!1718))

(assert (= (and b!111559 (not condSetEmpty!1718)) setNonEmpty!1718))

(assert (= setNonEmpty!1718 b!111560))

(assert (= (and b!111326 ((_ is Cons!1798) (t!22281 (zeroValue!564 (v!13147 (underlying!815 (v!13148 (underlying!816 (cache!755 cacheDown!924))))))))) b!111559))

(declare-fun m!101830 () Bool)

(assert (=> setNonEmpty!1718 m!101830))

(declare-fun m!101832 () Bool)

(assert (=> b!111559 m!101832))

(declare-fun b!111562 () Bool)

(declare-fun e!62526 () Bool)

(declare-fun tp!60286 () Bool)

(declare-fun tp!60287 () Bool)

(assert (=> b!111562 (= e!62526 (and tp!60286 tp!60287))))

(assert (=> b!111346 (= tp!60055 e!62526)))

(assert (= (and b!111346 ((_ is Cons!1797) (exprs!605 setElem!1684))) b!111562))

(declare-fun condSetEmpty!1719 () Bool)

(assert (=> setNonEmpty!1699 (= condSetEmpty!1719 (= setRest!1699 ((as const (Array Context!210 Bool)) false)))))

(declare-fun setRes!1719 () Bool)

(assert (=> setNonEmpty!1699 (= tp!60125 setRes!1719)))

(declare-fun setIsEmpty!1719 () Bool)

(assert (=> setIsEmpty!1719 setRes!1719))

(declare-fun setNonEmpty!1719 () Bool)

(declare-fun e!62527 () Bool)

(declare-fun tp!60289 () Bool)

(declare-fun setElem!1719 () Context!210)

(assert (=> setNonEmpty!1719 (= setRes!1719 (and tp!60289 (inv!2291 setElem!1719) e!62527))))

(declare-fun setRest!1719 () (InoxSet Context!210))

(assert (=> setNonEmpty!1719 (= setRest!1699 ((_ map or) (store ((as const (Array Context!210 Bool)) false) setElem!1719 true) setRest!1719))))

(declare-fun b!111563 () Bool)

(declare-fun tp!60288 () Bool)

(assert (=> b!111563 (= e!62527 tp!60288)))

(assert (= (and setNonEmpty!1699 condSetEmpty!1719) setIsEmpty!1719))

(assert (= (and setNonEmpty!1699 (not condSetEmpty!1719)) setNonEmpty!1719))

(assert (= setNonEmpty!1719 b!111563))

(declare-fun m!101834 () Bool)

(assert (=> setNonEmpty!1719 m!101834))

(declare-fun b!111564 () Bool)

(declare-fun e!62528 () Bool)

(declare-fun tp!60290 () Bool)

(declare-fun tp!60291 () Bool)

(assert (=> b!111564 (= e!62528 (and tp!60290 tp!60291))))

(assert (=> b!111401 (= tp!60126 e!62528)))

(assert (= (and b!111401 ((_ is Cons!1797) (exprs!605 (_1!1151 (_1!1152 (h!7196 (zeroValue!565 (v!13149 (underlying!817 (v!13150 (underlying!818 (cache!756 cacheUp!805)))))))))))) b!111564))

(declare-fun b!111565 () Bool)

(declare-fun e!62529 () Bool)

(declare-fun tp!60292 () Bool)

(declare-fun tp!60293 () Bool)

(assert (=> b!111565 (= e!62529 (and tp!60292 tp!60293))))

(assert (=> b!111397 (= tp!60121 e!62529)))

(assert (= (and b!111397 ((_ is Cons!1797) (exprs!605 setElem!1699))) b!111565))

(declare-fun b!111566 () Bool)

(declare-fun e!62530 () Bool)

(declare-fun tp!60294 () Bool)

(declare-fun tp!60295 () Bool)

(assert (=> b!111566 (= e!62530 (and tp!60294 tp!60295))))

(assert (=> b!111402 (= tp!60133 e!62530)))

(assert (= (and b!111402 ((_ is Cons!1797) (exprs!605 setElem!1701))) b!111566))

(declare-fun b!111567 () Bool)

(declare-fun e!62531 () Bool)

(declare-fun tp!60296 () Bool)

(declare-fun tp!60297 () Bool)

(assert (=> b!111567 (= e!62531 (and tp!60296 tp!60297))))

(assert (=> b!111407 (= tp!60134 e!62531)))

(assert (= (and b!111407 ((_ is Cons!1797) (exprs!605 (_1!1151 (_1!1152 (h!7196 mapDefault!1213)))))) b!111567))

(declare-fun condSetEmpty!1720 () Bool)

(assert (=> setNonEmpty!1701 (= condSetEmpty!1720 (= setRest!1701 ((as const (Array Context!210 Bool)) false)))))

(declare-fun setRes!1720 () Bool)

(assert (=> setNonEmpty!1701 (= tp!60131 setRes!1720)))

(declare-fun setIsEmpty!1720 () Bool)

(assert (=> setIsEmpty!1720 setRes!1720))

(declare-fun setNonEmpty!1720 () Bool)

(declare-fun tp!60299 () Bool)

(declare-fun e!62532 () Bool)

(declare-fun setElem!1720 () Context!210)

(assert (=> setNonEmpty!1720 (= setRes!1720 (and tp!60299 (inv!2291 setElem!1720) e!62532))))

(declare-fun setRest!1720 () (InoxSet Context!210))

(assert (=> setNonEmpty!1720 (= setRest!1701 ((_ map or) (store ((as const (Array Context!210 Bool)) false) setElem!1720 true) setRest!1720))))

(declare-fun b!111568 () Bool)

(declare-fun tp!60298 () Bool)

(assert (=> b!111568 (= e!62532 tp!60298)))

(assert (= (and setNonEmpty!1701 condSetEmpty!1720) setIsEmpty!1720))

(assert (= (and setNonEmpty!1701 (not condSetEmpty!1720)) setNonEmpty!1720))

(assert (= setNonEmpty!1720 b!111568))

(declare-fun m!101836 () Bool)

(assert (=> setNonEmpty!1720 m!101836))

(declare-fun setIsEmpty!1721 () Bool)

(declare-fun setRes!1721 () Bool)

(assert (=> setIsEmpty!1721 setRes!1721))

(declare-fun b!111569 () Bool)

(declare-fun e!62535 () Bool)

(declare-fun tp!60303 () Bool)

(assert (=> b!111569 (= e!62535 tp!60303)))

(declare-fun b!111570 () Bool)

(declare-fun e!62534 () Bool)

(declare-fun tp!60302 () Bool)

(declare-fun e!62533 () Bool)

(assert (=> b!111570 (= e!62533 (and (inv!2291 (_1!1151 (_1!1152 (h!7196 (t!22282 (zeroValue!565 (v!13149 (underlying!817 (v!13150 (underlying!818 (cache!756 cacheUp!805))))))))))) e!62534 tp_is_empty!941 setRes!1721 tp!60302))))

(declare-fun condSetEmpty!1721 () Bool)

(assert (=> b!111570 (= condSetEmpty!1721 (= (_2!1152 (h!7196 (t!22282 (zeroValue!565 (v!13149 (underlying!817 (v!13150 (underlying!818 (cache!756 cacheUp!805))))))))) ((as const (Array Context!210 Bool)) false)))))

(assert (=> b!111400 (= tp!60128 e!62533)))

(declare-fun tp!60301 () Bool)

(declare-fun setNonEmpty!1721 () Bool)

(declare-fun setElem!1721 () Context!210)

(assert (=> setNonEmpty!1721 (= setRes!1721 (and tp!60301 (inv!2291 setElem!1721) e!62535))))

(declare-fun setRest!1721 () (InoxSet Context!210))

(assert (=> setNonEmpty!1721 (= (_2!1152 (h!7196 (t!22282 (zeroValue!565 (v!13149 (underlying!817 (v!13150 (underlying!818 (cache!756 cacheUp!805))))))))) ((_ map or) (store ((as const (Array Context!210 Bool)) false) setElem!1721 true) setRest!1721))))

(declare-fun b!111571 () Bool)

(declare-fun tp!60300 () Bool)

(assert (=> b!111571 (= e!62534 tp!60300)))

(assert (= b!111570 b!111571))

(assert (= (and b!111570 condSetEmpty!1721) setIsEmpty!1721))

(assert (= (and b!111570 (not condSetEmpty!1721)) setNonEmpty!1721))

(assert (= setNonEmpty!1721 b!111569))

(assert (= (and b!111400 ((_ is Cons!1799) (t!22282 (zeroValue!565 (v!13149 (underlying!817 (v!13150 (underlying!818 (cache!756 cacheUp!805))))))))) b!111570))

(declare-fun m!101838 () Bool)

(assert (=> b!111570 m!101838))

(declare-fun m!101840 () Bool)

(assert (=> setNonEmpty!1721 m!101840))

(declare-fun b!111572 () Bool)

(declare-fun e!62536 () Bool)

(assert (=> b!111572 (= e!62536 tp_is_empty!941)))

(declare-fun b!111575 () Bool)

(declare-fun tp!60305 () Bool)

(declare-fun tp!60307 () Bool)

(assert (=> b!111575 (= e!62536 (and tp!60305 tp!60307))))

(declare-fun b!111574 () Bool)

(declare-fun tp!60308 () Bool)

(assert (=> b!111574 (= e!62536 tp!60308)))

(declare-fun b!111573 () Bool)

(declare-fun tp!60304 () Bool)

(declare-fun tp!60306 () Bool)

(assert (=> b!111573 (= e!62536 (and tp!60304 tp!60306))))

(assert (=> b!111370 (= tp!60080 e!62536)))

(assert (= (and b!111370 ((_ is ElementMatch!443) (h!7194 (exprs!605 setElem!1675)))) b!111572))

(assert (= (and b!111370 ((_ is Concat!827) (h!7194 (exprs!605 setElem!1675)))) b!111573))

(assert (= (and b!111370 ((_ is Star!443) (h!7194 (exprs!605 setElem!1675)))) b!111574))

(assert (= (and b!111370 ((_ is Union!443) (h!7194 (exprs!605 setElem!1675)))) b!111575))

(declare-fun b!111576 () Bool)

(declare-fun e!62537 () Bool)

(declare-fun tp!60309 () Bool)

(declare-fun tp!60310 () Bool)

(assert (=> b!111576 (= e!62537 (and tp!60309 tp!60310))))

(assert (=> b!111370 (= tp!60081 e!62537)))

(assert (= (and b!111370 ((_ is Cons!1797) (t!22280 (exprs!605 setElem!1675)))) b!111576))

(declare-fun condSetEmpty!1722 () Bool)

(assert (=> setNonEmpty!1698 (= condSetEmpty!1722 (= setRest!1698 ((as const (Array Context!210 Bool)) false)))))

(declare-fun setRes!1722 () Bool)

(assert (=> setNonEmpty!1698 (= tp!60119 setRes!1722)))

(declare-fun setIsEmpty!1722 () Bool)

(assert (=> setIsEmpty!1722 setRes!1722))

(declare-fun setNonEmpty!1722 () Bool)

(declare-fun setElem!1722 () Context!210)

(declare-fun tp!60312 () Bool)

(declare-fun e!62538 () Bool)

(assert (=> setNonEmpty!1722 (= setRes!1722 (and tp!60312 (inv!2291 setElem!1722) e!62538))))

(declare-fun setRest!1722 () (InoxSet Context!210))

(assert (=> setNonEmpty!1722 (= setRest!1698 ((_ map or) (store ((as const (Array Context!210 Bool)) false) setElem!1722 true) setRest!1722))))

(declare-fun b!111577 () Bool)

(declare-fun tp!60311 () Bool)

(assert (=> b!111577 (= e!62538 tp!60311)))

(assert (= (and setNonEmpty!1698 condSetEmpty!1722) setIsEmpty!1722))

(assert (= (and setNonEmpty!1698 (not condSetEmpty!1722)) setNonEmpty!1722))

(assert (= setNonEmpty!1722 b!111577))

(declare-fun m!101842 () Bool)

(assert (=> setNonEmpty!1722 m!101842))

(declare-fun setIsEmpty!1723 () Bool)

(declare-fun setRes!1723 () Bool)

(assert (=> setIsEmpty!1723 setRes!1723))

(declare-fun b!111578 () Bool)

(declare-fun e!62541 () Bool)

(declare-fun tp!60316 () Bool)

(assert (=> b!111578 (= e!62541 tp!60316)))

(declare-fun tp!60315 () Bool)

(declare-fun b!111579 () Bool)

(declare-fun e!62539 () Bool)

(declare-fun e!62540 () Bool)

(assert (=> b!111579 (= e!62539 (and (inv!2291 (_1!1151 (_1!1152 (h!7196 (t!22282 mapDefault!1213))))) e!62540 tp_is_empty!941 setRes!1723 tp!60315))))

(declare-fun condSetEmpty!1723 () Bool)

(assert (=> b!111579 (= condSetEmpty!1723 (= (_2!1152 (h!7196 (t!22282 mapDefault!1213))) ((as const (Array Context!210 Bool)) false)))))

(assert (=> b!111406 (= tp!60136 e!62539)))

(declare-fun tp!60314 () Bool)

(declare-fun setNonEmpty!1723 () Bool)

(declare-fun setElem!1723 () Context!210)

(assert (=> setNonEmpty!1723 (= setRes!1723 (and tp!60314 (inv!2291 setElem!1723) e!62541))))

(declare-fun setRest!1723 () (InoxSet Context!210))

(assert (=> setNonEmpty!1723 (= (_2!1152 (h!7196 (t!22282 mapDefault!1213))) ((_ map or) (store ((as const (Array Context!210 Bool)) false) setElem!1723 true) setRest!1723))))

(declare-fun b!111580 () Bool)

(declare-fun tp!60313 () Bool)

(assert (=> b!111580 (= e!62540 tp!60313)))

(assert (= b!111579 b!111580))

(assert (= (and b!111579 condSetEmpty!1723) setIsEmpty!1723))

(assert (= (and b!111579 (not condSetEmpty!1723)) setNonEmpty!1723))

(assert (= setNonEmpty!1723 b!111578))

(assert (= (and b!111406 ((_ is Cons!1799) (t!22282 mapDefault!1213))) b!111579))

(declare-fun m!101844 () Bool)

(assert (=> b!111579 m!101844))

(declare-fun m!101846 () Bool)

(assert (=> setNonEmpty!1723 m!101846))

(declare-fun condSetEmpty!1724 () Bool)

(assert (=> setNonEmpty!1697 (= condSetEmpty!1724 (= setRest!1697 ((as const (Array Context!210 Bool)) false)))))

(declare-fun setRes!1724 () Bool)

(assert (=> setNonEmpty!1697 (= tp!60117 setRes!1724)))

(declare-fun setIsEmpty!1724 () Bool)

(assert (=> setIsEmpty!1724 setRes!1724))

(declare-fun tp!60318 () Bool)

(declare-fun setElem!1724 () Context!210)

(declare-fun setNonEmpty!1724 () Bool)

(declare-fun e!62542 () Bool)

(assert (=> setNonEmpty!1724 (= setRes!1724 (and tp!60318 (inv!2291 setElem!1724) e!62542))))

(declare-fun setRest!1724 () (InoxSet Context!210))

(assert (=> setNonEmpty!1724 (= setRest!1697 ((_ map or) (store ((as const (Array Context!210 Bool)) false) setElem!1724 true) setRest!1724))))

(declare-fun b!111581 () Bool)

(declare-fun tp!60317 () Bool)

(assert (=> b!111581 (= e!62542 tp!60317)))

(assert (= (and setNonEmpty!1697 condSetEmpty!1724) setIsEmpty!1724))

(assert (= (and setNonEmpty!1697 (not condSetEmpty!1724)) setNonEmpty!1724))

(assert (= setNonEmpty!1724 b!111581))

(declare-fun m!101848 () Bool)

(assert (=> setNonEmpty!1724 m!101848))

(declare-fun b!111582 () Bool)

(declare-fun e!62545 () Bool)

(declare-fun tp!60324 () Bool)

(assert (=> b!111582 (= e!62545 tp!60324)))

(declare-fun b!111583 () Bool)

(declare-fun e!62544 () Bool)

(declare-fun tp!60320 () Bool)

(assert (=> b!111583 (= e!62544 tp!60320)))

(declare-fun setIsEmpty!1725 () Bool)

(declare-fun setRes!1725 () Bool)

(assert (=> setIsEmpty!1725 setRes!1725))

(declare-fun b!111584 () Bool)

(declare-fun e!62543 () Bool)

(declare-fun tp!60327 () Bool)

(assert (=> b!111584 (= e!62543 tp!60327)))

(declare-fun mapValue!1227 () List!1805)

(declare-fun setRes!1726 () Bool)

(declare-fun tp!60322 () Bool)

(declare-fun e!62546 () Bool)

(declare-fun e!62548 () Bool)

(declare-fun b!111585 () Bool)

(assert (=> b!111585 (= e!62548 (and (inv!2291 (_1!1151 (_1!1152 (h!7196 mapValue!1227)))) e!62546 tp_is_empty!941 setRes!1726 tp!60322))))

(declare-fun condSetEmpty!1726 () Bool)

(assert (=> b!111585 (= condSetEmpty!1726 (= (_2!1152 (h!7196 mapValue!1227)) ((as const (Array Context!210 Bool)) false)))))

(declare-fun condMapEmpty!1227 () Bool)

(declare-fun mapDefault!1227 () List!1805)

(assert (=> mapNonEmpty!1217 (= condMapEmpty!1227 (= mapRest!1217 ((as const (Array (_ BitVec 32) List!1805)) mapDefault!1227)))))

(declare-fun e!62547 () Bool)

(declare-fun mapRes!1227 () Bool)

(assert (=> mapNonEmpty!1217 (= tp!60056 (and e!62547 mapRes!1227))))

(declare-fun mapIsEmpty!1227 () Bool)

(assert (=> mapIsEmpty!1227 mapRes!1227))

(declare-fun setElem!1726 () Context!210)

(declare-fun tp!60323 () Bool)

(declare-fun setNonEmpty!1725 () Bool)

(assert (=> setNonEmpty!1725 (= setRes!1725 (and tp!60323 (inv!2291 setElem!1726) e!62544))))

(declare-fun setRest!1726 () (InoxSet Context!210))

(assert (=> setNonEmpty!1725 (= (_2!1152 (h!7196 mapDefault!1227)) ((_ map or) (store ((as const (Array Context!210 Bool)) false) setElem!1726 true) setRest!1726))))

(declare-fun b!111586 () Bool)

(declare-fun tp!60326 () Bool)

(assert (=> b!111586 (= e!62546 tp!60326)))

(declare-fun setNonEmpty!1726 () Bool)

(declare-fun setElem!1725 () Context!210)

(declare-fun tp!60319 () Bool)

(assert (=> setNonEmpty!1726 (= setRes!1726 (and tp!60319 (inv!2291 setElem!1725) e!62545))))

(declare-fun setRest!1725 () (InoxSet Context!210))

(assert (=> setNonEmpty!1726 (= (_2!1152 (h!7196 mapValue!1227)) ((_ map or) (store ((as const (Array Context!210 Bool)) false) setElem!1725 true) setRest!1725))))

(declare-fun mapNonEmpty!1227 () Bool)

(declare-fun tp!60325 () Bool)

(assert (=> mapNonEmpty!1227 (= mapRes!1227 (and tp!60325 e!62548))))

(declare-fun mapRest!1227 () (Array (_ BitVec 32) List!1805))

(declare-fun mapKey!1227 () (_ BitVec 32))

(assert (=> mapNonEmpty!1227 (= mapRest!1217 (store mapRest!1227 mapKey!1227 mapValue!1227))))

(declare-fun tp!60321 () Bool)

(declare-fun b!111587 () Bool)

(assert (=> b!111587 (= e!62547 (and (inv!2291 (_1!1151 (_1!1152 (h!7196 mapDefault!1227)))) e!62543 tp_is_empty!941 setRes!1725 tp!60321))))

(declare-fun condSetEmpty!1725 () Bool)

(assert (=> b!111587 (= condSetEmpty!1725 (= (_2!1152 (h!7196 mapDefault!1227)) ((as const (Array Context!210 Bool)) false)))))

(declare-fun setIsEmpty!1726 () Bool)

(assert (=> setIsEmpty!1726 setRes!1726))

(assert (= (and mapNonEmpty!1217 condMapEmpty!1227) mapIsEmpty!1227))

(assert (= (and mapNonEmpty!1217 (not condMapEmpty!1227)) mapNonEmpty!1227))

(assert (= b!111585 b!111586))

(assert (= (and b!111585 condSetEmpty!1726) setIsEmpty!1726))

(assert (= (and b!111585 (not condSetEmpty!1726)) setNonEmpty!1726))

(assert (= setNonEmpty!1726 b!111582))

(assert (= (and mapNonEmpty!1227 ((_ is Cons!1799) mapValue!1227)) b!111585))

(assert (= b!111587 b!111584))

(assert (= (and b!111587 condSetEmpty!1725) setIsEmpty!1725))

(assert (= (and b!111587 (not condSetEmpty!1725)) setNonEmpty!1725))

(assert (= setNonEmpty!1725 b!111583))

(assert (= (and mapNonEmpty!1217 ((_ is Cons!1799) mapDefault!1227)) b!111587))

(declare-fun m!101850 () Bool)

(assert (=> b!111585 m!101850))

(declare-fun m!101852 () Bool)

(assert (=> setNonEmpty!1725 m!101852))

(declare-fun m!101854 () Bool)

(assert (=> b!111587 m!101854))

(declare-fun m!101856 () Bool)

(assert (=> setNonEmpty!1726 m!101856))

(declare-fun m!101858 () Bool)

(assert (=> mapNonEmpty!1227 m!101858))

(declare-fun b!111588 () Bool)

(declare-fun e!62549 () Bool)

(declare-fun tp!60328 () Bool)

(declare-fun tp!60329 () Bool)

(assert (=> b!111588 (= e!62549 (and tp!60328 tp!60329))))

(assert (=> b!111364 (= tp!60071 e!62549)))

(assert (= (and b!111364 ((_ is Cons!1797) (exprs!605 setElem!1689))) b!111588))

(declare-fun condSetEmpty!1727 () Bool)

(assert (=> setNonEmpty!1688 (= condSetEmpty!1727 (= setRest!1688 ((as const (Array Context!210 Bool)) false)))))

(declare-fun setRes!1727 () Bool)

(assert (=> setNonEmpty!1688 (= tp!60068 setRes!1727)))

(declare-fun setIsEmpty!1727 () Bool)

(assert (=> setIsEmpty!1727 setRes!1727))

(declare-fun e!62550 () Bool)

(declare-fun setElem!1727 () Context!210)

(declare-fun tp!60331 () Bool)

(declare-fun setNonEmpty!1727 () Bool)

(assert (=> setNonEmpty!1727 (= setRes!1727 (and tp!60331 (inv!2291 setElem!1727) e!62550))))

(declare-fun setRest!1727 () (InoxSet Context!210))

(assert (=> setNonEmpty!1727 (= setRest!1688 ((_ map or) (store ((as const (Array Context!210 Bool)) false) setElem!1727 true) setRest!1727))))

(declare-fun b!111589 () Bool)

(declare-fun tp!60330 () Bool)

(assert (=> b!111589 (= e!62550 tp!60330)))

(assert (= (and setNonEmpty!1688 condSetEmpty!1727) setIsEmpty!1727))

(assert (= (and setNonEmpty!1688 (not condSetEmpty!1727)) setNonEmpty!1727))

(assert (= setNonEmpty!1727 b!111589))

(declare-fun m!101860 () Bool)

(assert (=> setNonEmpty!1727 m!101860))

(declare-fun b!111590 () Bool)

(declare-fun e!62551 () Bool)

(declare-fun tp!60332 () Bool)

(declare-fun tp!60333 () Bool)

(assert (=> b!111590 (= e!62551 (and tp!60332 tp!60333))))

(assert (=> b!111392 (= tp!60115 e!62551)))

(assert (= (and b!111392 ((_ is Cons!1797) (exprs!605 (_2!1149 (_1!1150 (h!7195 mapDefault!1220)))))) b!111590))

(declare-fun b!111591 () Bool)

(declare-fun e!62552 () Bool)

(declare-fun tp!60334 () Bool)

(declare-fun tp!60335 () Bool)

(assert (=> b!111591 (= e!62552 (and tp!60334 tp!60335))))

(assert (=> b!111350 (= tp!60057 e!62552)))

(assert (= (and b!111350 ((_ is Cons!1797) (exprs!605 (_1!1151 (_1!1152 (h!7196 mapValue!1217)))))) b!111591))

(declare-fun condSetEmpty!1728 () Bool)

(assert (=> setNonEmpty!1689 (= condSetEmpty!1728 (= setRest!1689 ((as const (Array Context!210 Bool)) false)))))

(declare-fun setRes!1728 () Bool)

(assert (=> setNonEmpty!1689 (= tp!60075 setRes!1728)))

(declare-fun setIsEmpty!1728 () Bool)

(assert (=> setIsEmpty!1728 setRes!1728))

(declare-fun e!62553 () Bool)

(declare-fun setNonEmpty!1728 () Bool)

(declare-fun tp!60337 () Bool)

(declare-fun setElem!1728 () Context!210)

(assert (=> setNonEmpty!1728 (= setRes!1728 (and tp!60337 (inv!2291 setElem!1728) e!62553))))

(declare-fun setRest!1728 () (InoxSet Context!210))

(assert (=> setNonEmpty!1728 (= setRest!1689 ((_ map or) (store ((as const (Array Context!210 Bool)) false) setElem!1728 true) setRest!1728))))

(declare-fun b!111592 () Bool)

(declare-fun tp!60336 () Bool)

(assert (=> b!111592 (= e!62553 tp!60336)))

(assert (= (and setNonEmpty!1689 condSetEmpty!1728) setIsEmpty!1728))

(assert (= (and setNonEmpty!1689 (not condSetEmpty!1728)) setNonEmpty!1728))

(assert (= setNonEmpty!1728 b!111592))

(declare-fun m!101862 () Bool)

(assert (=> setNonEmpty!1728 m!101862))

(declare-fun b!111593 () Bool)

(declare-fun e!62554 () Bool)

(declare-fun tp!60338 () Bool)

(declare-fun tp!60339 () Bool)

(assert (=> b!111593 (= e!62554 (and tp!60338 tp!60339))))

(assert (=> b!111360 (= tp!60070 e!62554)))

(assert (= (and b!111360 ((_ is Cons!1797) (exprs!605 setElem!1688))) b!111593))

(declare-fun b!111594 () Bool)

(declare-fun e!62555 () Bool)

(declare-fun tp!60340 () Bool)

(declare-fun tp!60341 () Bool)

(assert (=> b!111594 (= e!62555 (and tp!60340 tp!60341))))

(assert (=> b!111348 (= tp!60058 e!62555)))

(assert (= (and b!111348 ((_ is Cons!1797) (exprs!605 (_1!1151 (_1!1152 (h!7196 mapDefault!1217)))))) b!111594))

(declare-fun condSetEmpty!1729 () Bool)

(assert (=> setNonEmpty!1679 (= condSetEmpty!1729 (= setRest!1679 ((as const (Array Context!210 Bool)) false)))))

(declare-fun setRes!1729 () Bool)

(assert (=> setNonEmpty!1679 (= tp!60031 setRes!1729)))

(declare-fun setIsEmpty!1729 () Bool)

(assert (=> setIsEmpty!1729 setRes!1729))

(declare-fun tp!60343 () Bool)

(declare-fun e!62556 () Bool)

(declare-fun setElem!1729 () Context!210)

(declare-fun setNonEmpty!1729 () Bool)

(assert (=> setNonEmpty!1729 (= setRes!1729 (and tp!60343 (inv!2291 setElem!1729) e!62556))))

(declare-fun setRest!1729 () (InoxSet Context!210))

(assert (=> setNonEmpty!1729 (= setRest!1679 ((_ map or) (store ((as const (Array Context!210 Bool)) false) setElem!1729 true) setRest!1729))))

(declare-fun b!111595 () Bool)

(declare-fun tp!60342 () Bool)

(assert (=> b!111595 (= e!62556 tp!60342)))

(assert (= (and setNonEmpty!1679 condSetEmpty!1729) setIsEmpty!1729))

(assert (= (and setNonEmpty!1679 (not condSetEmpty!1729)) setNonEmpty!1729))

(assert (= setNonEmpty!1729 b!111595))

(declare-fun m!101864 () Bool)

(assert (=> setNonEmpty!1729 m!101864))

(declare-fun condSetEmpty!1730 () Bool)

(assert (=> setNonEmpty!1678 (= condSetEmpty!1730 (= setRest!1678 ((as const (Array Context!210 Bool)) false)))))

(declare-fun setRes!1730 () Bool)

(assert (=> setNonEmpty!1678 (= tp!60026 setRes!1730)))

(declare-fun setIsEmpty!1730 () Bool)

(assert (=> setIsEmpty!1730 setRes!1730))

(declare-fun e!62557 () Bool)

(declare-fun setElem!1730 () Context!210)

(declare-fun setNonEmpty!1730 () Bool)

(declare-fun tp!60345 () Bool)

(assert (=> setNonEmpty!1730 (= setRes!1730 (and tp!60345 (inv!2291 setElem!1730) e!62557))))

(declare-fun setRest!1730 () (InoxSet Context!210))

(assert (=> setNonEmpty!1730 (= setRest!1678 ((_ map or) (store ((as const (Array Context!210 Bool)) false) setElem!1730 true) setRest!1730))))

(declare-fun b!111596 () Bool)

(declare-fun tp!60344 () Bool)

(assert (=> b!111596 (= e!62557 tp!60344)))

(assert (= (and setNonEmpty!1678 condSetEmpty!1730) setIsEmpty!1730))

(assert (= (and setNonEmpty!1678 (not condSetEmpty!1730)) setNonEmpty!1730))

(assert (= setNonEmpty!1730 b!111596))

(declare-fun m!101866 () Bool)

(assert (=> setNonEmpty!1730 m!101866))

(declare-fun b!111597 () Bool)

(declare-fun e!62558 () Bool)

(declare-fun tp!60346 () Bool)

(declare-fun tp!60347 () Bool)

(assert (=> b!111597 (= e!62558 (and tp!60346 tp!60347))))

(assert (=> b!111375 (= tp!60086 e!62558)))

(assert (= (and b!111375 ((_ is Cons!1797) (exprs!605 setElem!1692))) b!111597))

(declare-fun b!111598 () Bool)

(declare-fun e!62559 () Bool)

(declare-fun tp!60348 () Bool)

(declare-fun tp!60349 () Bool)

(assert (=> b!111598 (= e!62559 (and tp!60348 tp!60349))))

(assert (=> b!111391 (= tp!60110 e!62559)))

(assert (= (and b!111391 ((_ is Cons!1797) (exprs!605 setElem!1697))) b!111598))

(declare-fun b!111599 () Bool)

(declare-fun e!62560 () Bool)

(declare-fun tp!60350 () Bool)

(declare-fun tp!60351 () Bool)

(assert (=> b!111599 (= e!62560 (and tp!60350 tp!60351))))

(assert (=> b!111330 (= tp!60027 e!62560)))

(assert (= (and b!111330 ((_ is Cons!1797) (exprs!605 setElem!1679))) b!111599))

(declare-fun b!111600 () Bool)

(declare-fun e!62561 () Bool)

(declare-fun tp!60352 () Bool)

(declare-fun tp!60353 () Bool)

(assert (=> b!111600 (= e!62561 (and tp!60352 tp!60353))))

(assert (=> b!111327 (= tp!60022 e!62561)))

(assert (= (and b!111327 ((_ is Cons!1797) (exprs!605 setElem!1678))) b!111600))

(declare-fun b!111601 () Bool)

(declare-fun e!62562 () Bool)

(declare-fun tp!60354 () Bool)

(declare-fun tp!60355 () Bool)

(assert (=> b!111601 (= e!62562 (and tp!60354 tp!60355))))

(assert (=> b!111347 (= tp!60051 e!62562)))

(assert (= (and b!111347 ((_ is Cons!1797) (exprs!605 setElem!1685))) b!111601))

(declare-fun mapNonEmpty!1228 () Bool)

(declare-fun mapRes!1228 () Bool)

(declare-fun tp!60359 () Bool)

(declare-fun e!62565 () Bool)

(assert (=> mapNonEmpty!1228 (= mapRes!1228 (and tp!60359 e!62565))))

(declare-fun mapKey!1228 () (_ BitVec 32))

(declare-fun mapRest!1228 () (Array (_ BitVec 32) List!1804))

(declare-fun mapValue!1228 () List!1804)

(assert (=> mapNonEmpty!1228 (= mapRest!1220 (store mapRest!1228 mapKey!1228 mapValue!1228))))

(declare-fun condMapEmpty!1228 () Bool)

(declare-fun mapDefault!1228 () List!1804)

(assert (=> mapNonEmpty!1220 (= condMapEmpty!1228 (= mapRest!1220 ((as const (Array (_ BitVec 32) List!1804)) mapDefault!1228)))))

(declare-fun e!62568 () Bool)

(assert (=> mapNonEmpty!1220 (= tp!60113 (and e!62568 mapRes!1228))))

(declare-fun e!62567 () Bool)

(declare-fun setRes!1731 () Bool)

(declare-fun tp!60358 () Bool)

(declare-fun b!111602 () Bool)

(declare-fun tp!60366 () Bool)

(assert (=> b!111602 (= e!62565 (and tp!60358 (inv!2291 (_2!1149 (_1!1150 (h!7195 mapValue!1228)))) e!62567 tp_is_empty!941 setRes!1731 tp!60366))))

(declare-fun condSetEmpty!1732 () Bool)

(assert (=> b!111602 (= condSetEmpty!1732 (= (_2!1150 (h!7195 mapValue!1228)) ((as const (Array Context!210 Bool)) false)))))

(declare-fun b!111603 () Bool)

(declare-fun e!62566 () Bool)

(declare-fun tp!60356 () Bool)

(assert (=> b!111603 (= e!62566 tp!60356)))

(declare-fun setIsEmpty!1731 () Bool)

(assert (=> setIsEmpty!1731 setRes!1731))

(declare-fun b!111604 () Bool)

(declare-fun e!62563 () Bool)

(declare-fun tp!60361 () Bool)

(assert (=> b!111604 (= e!62563 tp!60361)))

(declare-fun tp!60357 () Bool)

(declare-fun tp!60364 () Bool)

(declare-fun setRes!1732 () Bool)

(declare-fun b!111605 () Bool)

(assert (=> b!111605 (= e!62568 (and tp!60357 (inv!2291 (_2!1149 (_1!1150 (h!7195 mapDefault!1228)))) e!62563 tp_is_empty!941 setRes!1732 tp!60364))))

(declare-fun condSetEmpty!1731 () Bool)

(assert (=> b!111605 (= condSetEmpty!1731 (= (_2!1150 (h!7195 mapDefault!1228)) ((as const (Array Context!210 Bool)) false)))))

(declare-fun tp!60363 () Bool)

(declare-fun setElem!1731 () Context!210)

(declare-fun setNonEmpty!1731 () Bool)

(assert (=> setNonEmpty!1731 (= setRes!1731 (and tp!60363 (inv!2291 setElem!1731) e!62566))))

(declare-fun setRest!1731 () (InoxSet Context!210))

(assert (=> setNonEmpty!1731 (= (_2!1150 (h!7195 mapValue!1228)) ((_ map or) (store ((as const (Array Context!210 Bool)) false) setElem!1731 true) setRest!1731))))

(declare-fun b!111606 () Bool)

(declare-fun e!62564 () Bool)

(declare-fun tp!60360 () Bool)

(assert (=> b!111606 (= e!62564 tp!60360)))

(declare-fun setIsEmpty!1732 () Bool)

(assert (=> setIsEmpty!1732 setRes!1732))

(declare-fun b!111607 () Bool)

(declare-fun tp!60362 () Bool)

(assert (=> b!111607 (= e!62567 tp!60362)))

(declare-fun setNonEmpty!1732 () Bool)

(declare-fun setElem!1732 () Context!210)

(declare-fun tp!60365 () Bool)

(assert (=> setNonEmpty!1732 (= setRes!1732 (and tp!60365 (inv!2291 setElem!1732) e!62564))))

(declare-fun setRest!1732 () (InoxSet Context!210))

(assert (=> setNonEmpty!1732 (= (_2!1150 (h!7195 mapDefault!1228)) ((_ map or) (store ((as const (Array Context!210 Bool)) false) setElem!1732 true) setRest!1732))))

(declare-fun mapIsEmpty!1228 () Bool)

(assert (=> mapIsEmpty!1228 mapRes!1228))

(assert (= (and mapNonEmpty!1220 condMapEmpty!1228) mapIsEmpty!1228))

(assert (= (and mapNonEmpty!1220 (not condMapEmpty!1228)) mapNonEmpty!1228))

(assert (= b!111602 b!111607))

(assert (= (and b!111602 condSetEmpty!1732) setIsEmpty!1731))

(assert (= (and b!111602 (not condSetEmpty!1732)) setNonEmpty!1731))

(assert (= setNonEmpty!1731 b!111603))

(assert (= (and mapNonEmpty!1228 ((_ is Cons!1798) mapValue!1228)) b!111602))

(assert (= b!111605 b!111604))

(assert (= (and b!111605 condSetEmpty!1731) setIsEmpty!1732))

(assert (= (and b!111605 (not condSetEmpty!1731)) setNonEmpty!1732))

(assert (= setNonEmpty!1732 b!111606))

(assert (= (and mapNonEmpty!1220 ((_ is Cons!1798) mapDefault!1228)) b!111605))

(declare-fun m!101868 () Bool)

(assert (=> setNonEmpty!1731 m!101868))

(declare-fun m!101870 () Bool)

(assert (=> setNonEmpty!1732 m!101870))

(declare-fun m!101872 () Bool)

(assert (=> mapNonEmpty!1228 m!101872))

(declare-fun m!101874 () Bool)

(assert (=> b!111602 m!101874))

(declare-fun m!101876 () Bool)

(assert (=> b!111605 m!101876))

(declare-fun b!111608 () Bool)

(declare-fun e!62569 () Bool)

(declare-fun tp!60367 () Bool)

(declare-fun tp!60368 () Bool)

(assert (=> b!111608 (= e!62569 (and tp!60367 tp!60368))))

(assert (=> b!111398 (= tp!60122 e!62569)))

(assert (= (and b!111398 ((_ is Cons!1797) (exprs!605 (_2!1149 (_1!1150 (h!7195 mapValue!1213)))))) b!111608))

(declare-fun b!111609 () Bool)

(declare-fun e!62570 () Bool)

(declare-fun tp!60369 () Bool)

(declare-fun tp!60370 () Bool)

(assert (=> b!111609 (= e!62570 (and tp!60369 tp!60370))))

(assert (=> b!111404 (= tp!60130 e!62570)))

(assert (= (and b!111404 ((_ is Cons!1797) (exprs!605 (_1!1151 (_1!1152 (h!7196 (minValue!565 (v!13149 (underlying!817 (v!13150 (underlying!818 (cache!756 cacheUp!805)))))))))))) b!111609))

(declare-fun condSetEmpty!1733 () Bool)

(assert (=> setNonEmpty!1700 (= condSetEmpty!1733 (= setRest!1700 ((as const (Array Context!210 Bool)) false)))))

(declare-fun setRes!1733 () Bool)

(assert (=> setNonEmpty!1700 (= tp!60127 setRes!1733)))

(declare-fun setIsEmpty!1733 () Bool)

(assert (=> setIsEmpty!1733 setRes!1733))

(declare-fun tp!60372 () Bool)

(declare-fun setNonEmpty!1733 () Bool)

(declare-fun e!62571 () Bool)

(declare-fun setElem!1733 () Context!210)

(assert (=> setNonEmpty!1733 (= setRes!1733 (and tp!60372 (inv!2291 setElem!1733) e!62571))))

(declare-fun setRest!1733 () (InoxSet Context!210))

(assert (=> setNonEmpty!1733 (= setRest!1700 ((_ map or) (store ((as const (Array Context!210 Bool)) false) setElem!1733 true) setRest!1733))))

(declare-fun b!111610 () Bool)

(declare-fun tp!60371 () Bool)

(assert (=> b!111610 (= e!62571 tp!60371)))

(assert (= (and setNonEmpty!1700 condSetEmpty!1733) setIsEmpty!1733))

(assert (= (and setNonEmpty!1700 (not condSetEmpty!1733)) setNonEmpty!1733))

(assert (= setNonEmpty!1733 b!111610))

(declare-fun m!101878 () Bool)

(assert (=> setNonEmpty!1733 m!101878))

(declare-fun b!111611 () Bool)

(declare-fun e!62572 () Bool)

(assert (=> b!111611 (= e!62572 tp_is_empty!941)))

(declare-fun b!111614 () Bool)

(declare-fun tp!60374 () Bool)

(declare-fun tp!60376 () Bool)

(assert (=> b!111614 (= e!62572 (and tp!60374 tp!60376))))

(declare-fun b!111613 () Bool)

(declare-fun tp!60377 () Bool)

(assert (=> b!111613 (= e!62572 tp!60377)))

(declare-fun b!111612 () Bool)

(declare-fun tp!60373 () Bool)

(declare-fun tp!60375 () Bool)

(assert (=> b!111612 (= e!62572 (and tp!60373 tp!60375))))

(assert (=> b!111396 (= tp!60123 e!62572)))

(assert (= (and b!111396 ((_ is ElementMatch!443) (_1!1149 (_1!1150 (h!7195 mapValue!1213))))) b!111611))

(assert (= (and b!111396 ((_ is Concat!827) (_1!1149 (_1!1150 (h!7195 mapValue!1213))))) b!111612))

(assert (= (and b!111396 ((_ is Star!443) (_1!1149 (_1!1150 (h!7195 mapValue!1213))))) b!111613))

(assert (= (and b!111396 ((_ is Union!443) (_1!1149 (_1!1150 (h!7195 mapValue!1213))))) b!111614))

(declare-fun setIsEmpty!1734 () Bool)

(declare-fun setRes!1734 () Bool)

(assert (=> setIsEmpty!1734 setRes!1734))

(declare-fun e!62574 () Bool)

(declare-fun tp!60382 () Bool)

(declare-fun setElem!1734 () Context!210)

(declare-fun setNonEmpty!1734 () Bool)

(assert (=> setNonEmpty!1734 (= setRes!1734 (and tp!60382 (inv!2291 setElem!1734) e!62574))))

(declare-fun setRest!1734 () (InoxSet Context!210))

(assert (=> setNonEmpty!1734 (= (_2!1150 (h!7195 (t!22281 mapValue!1213))) ((_ map or) (store ((as const (Array Context!210 Bool)) false) setElem!1734 true) setRest!1734))))

(declare-fun b!111616 () Bool)

(declare-fun tp!60378 () Bool)

(assert (=> b!111616 (= e!62574 tp!60378)))

(declare-fun b!111617 () Bool)

(declare-fun e!62573 () Bool)

(declare-fun tp!60379 () Bool)

(assert (=> b!111617 (= e!62573 tp!60379)))

(declare-fun tp!60380 () Bool)

(declare-fun b!111615 () Bool)

(declare-fun e!62575 () Bool)

(declare-fun tp!60381 () Bool)

(assert (=> b!111615 (= e!62575 (and tp!60380 (inv!2291 (_2!1149 (_1!1150 (h!7195 (t!22281 mapValue!1213))))) e!62573 tp_is_empty!941 setRes!1734 tp!60381))))

(declare-fun condSetEmpty!1734 () Bool)

(assert (=> b!111615 (= condSetEmpty!1734 (= (_2!1150 (h!7195 (t!22281 mapValue!1213))) ((as const (Array Context!210 Bool)) false)))))

(assert (=> b!111396 (= tp!60124 e!62575)))

(assert (= b!111615 b!111617))

(assert (= (and b!111615 condSetEmpty!1734) setIsEmpty!1734))

(assert (= (and b!111615 (not condSetEmpty!1734)) setNonEmpty!1734))

(assert (= setNonEmpty!1734 b!111616))

(assert (= (and b!111396 ((_ is Cons!1798) (t!22281 mapValue!1213))) b!111615))

(declare-fun m!101880 () Bool)

(assert (=> setNonEmpty!1734 m!101880))

(declare-fun m!101882 () Bool)

(assert (=> b!111615 m!101882))

(declare-fun b_lambda!1703 () Bool)

(assert (= b_lambda!1701 (or d!27985 b_lambda!1703)))

(declare-fun bs!11740 () Bool)

(declare-fun d!28053 () Bool)

(assert (= bs!11740 (and d!28053 d!27985)))

(declare-fun validRegex!62 (Regex!443) Bool)

(assert (=> bs!11740 (= (dynLambda!744 lambda!3001 (h!7194 (exprs!605 setElem!1675))) (validRegex!62 (h!7194 (exprs!605 setElem!1675))))))

(declare-fun m!101884 () Bool)

(assert (=> bs!11740 m!101884))

(assert (=> b!111418 d!28053))

(check-sat (not setNonEmpty!1730) (not d!28047) (not d!28005) (not b_next!3465) (not setNonEmpty!1723) (not b!111479) (not setNonEmpty!1719) (not d!28009) (not b!111552) b_and!5589 (not d!28019) (not b!111565) (not b!111579) (not b!111606) (not b!111586) (not b_next!3453) (not b!111607) b_and!5591 (not setNonEmpty!1716) (not b!111563) (not b!111412) tp_is_empty!941 (not setNonEmpty!1711) (not b_next!3463) (not d!27997) (not setNonEmpty!1717) (not b!111427) (not b!111500) (not b!111597) (not b!111530) (not b!111557) (not d!28029) (not b!111507) (not b!111569) (not d!28031) (not mapNonEmpty!1226) (not b!111582) (not b!111426) (not b!111501) (not setNonEmpty!1715) (not b!111469) (not b!111531) (not setNonEmpty!1726) (not b!111617) (not b!111592) (not b!111508) (not b!111537) (not d!28045) (not b!111473) (not b!111477) (not b!111566) (not b!111591) (not d!28041) b_and!5593 (not setNonEmpty!1733) (not b!111583) (not b!111413) (not b!111496) (not b!111505) (not d!28051) b_and!5583 (not d!27999) (not b!111539) (not b!111571) (not b!111615) (not setNonEmpty!1706) (not d!28021) (not b!111574) (not b!111587) (not d!28015) b_and!5585 (not b!111546) (not b!111502) (not b!111549) (not b!111499) (not mapNonEmpty!1225) (not b!111605) (not b!111585) (not b!111458) (not b!111602) (not b_next!3457) (not setNonEmpty!1724) (not b!111593) (not b!111588) (not b_next!3467) (not b!111578) (not setNonEmpty!1732) (not b!111613) (not b!111551) (not d!28033) (not b!111494) (not b!111480) (not b!111547) (not b!111567) (not b!111495) (not b!111560) (not b!111463) (not setNonEmpty!1721) (not d!28017) (not b!111478) (not b!111542) (not b!111616) (not setNonEmpty!1713) (not d!27991) (not b!111468) (not d!28043) (not b!111564) (not setNonEmpty!1710) (not b!111575) (not b!111614) (not b_next!3455) (not d!28023) (not b!111533) (not b!111577) (not b!111573) (not b!111595) (not b!111460) (not b!111559) (not b!111540) (not b!111493) (not b!111568) (not b_next!3461) (not setNonEmpty!1712) (not b!111600) (not b!111476) (not b!111544) (not setNonEmpty!1705) (not d!28011) (not b!111609) (not setNonEmpty!1709) (not b!111536) (not b!111590) (not b!111603) (not d!28039) (not d!28001) (not setNonEmpty!1727) (not b!111608) (not mapNonEmpty!1227) (not setNonEmpty!1720) (not setNonEmpty!1728) (not b!111497) (not setNonEmpty!1707) (not b_lambda!1703) (not b!111576) (not b!111534) (not b!111570) (not setNonEmpty!1718) (not b!111550) (not setNonEmpty!1734) (not mapNonEmpty!1228) (not b!111596) (not b!111474) b_and!5597 (not bs!11740) (not b!111492) (not d!28037) (not b!111612) (not b!111581) (not d!27995) (not setNonEmpty!1714) (not b!111604) (not b!111543) (not b!111558) (not b!111584) (not b!111541) (not b!111545) (not b!111532) (not b!111610) (not setNonEmpty!1731) (not b!111504) (not d!28013) (not d!27993) (not b!111556) (not b!111553) (not setNonEmpty!1722) (not b!111561) (not b!111594) (not b!111599) (not b!111598) (not b!111589) (not b!111580) (not b!111535) (not b!111562) (not b!111419) (not b!111554) (not d!28007) (not setNonEmpty!1708) (not b!111506) b_and!5587 (not b!111601) (not d!28025) (not setNonEmpty!1725) b_and!5595 (not d!28035) (not d!28049) (not b!111475) (not b!111503) (not setNonEmpty!1729) (not b!111498) (not b_next!3459) (not d!28027))
(check-sat (not b_next!3465) b_and!5589 (not b_next!3463) b_and!5593 b_and!5583 b_and!5585 (not b_next!3457) (not b_next!3467) (not b_next!3455) (not b_next!3461) b_and!5597 b_and!5587 b_and!5595 (not b_next!3459) (not b_next!3453) b_and!5591)
