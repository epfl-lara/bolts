; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1918 () Bool)

(assert start!1918)

(declare-fun b!35436 () Bool)

(declare-fun b_free!481 () Bool)

(declare-fun b_next!481 () Bool)

(assert (=> b!35436 (= b_free!481 (not b_next!481))))

(declare-fun tp!24392 () Bool)

(declare-fun b_and!515 () Bool)

(assert (=> b!35436 (= tp!24392 b_and!515)))

(declare-fun b!35435 () Bool)

(declare-fun b_free!483 () Bool)

(declare-fun b_next!483 () Bool)

(assert (=> b!35435 (= b_free!483 (not b_next!483))))

(declare-fun tp!24390 () Bool)

(declare-fun b_and!517 () Bool)

(assert (=> b!35435 (= tp!24390 b_and!517)))

(declare-fun b!35431 () Bool)

(declare-fun b_free!485 () Bool)

(declare-fun b_next!485 () Bool)

(assert (=> b!35431 (= b_free!485 (not b_next!485))))

(declare-fun tp!24394 () Bool)

(declare-fun b_and!519 () Bool)

(assert (=> b!35431 (= tp!24394 b_and!519)))

(declare-fun b!35428 () Bool)

(declare-fun b_free!487 () Bool)

(declare-fun b_next!487 () Bool)

(assert (=> b!35428 (= b_free!487 (not b_next!487))))

(declare-fun tp!24389 () Bool)

(declare-fun b_and!521 () Bool)

(assert (=> b!35428 (= tp!24389 b_and!521)))

(declare-fun b!35426 () Bool)

(declare-fun e!17018 () Bool)

(declare-fun e!17007 () Bool)

(assert (=> b!35426 (= e!17018 e!17007)))

(declare-fun mapIsEmpty!300 () Bool)

(declare-fun mapRes!301 () Bool)

(assert (=> mapIsEmpty!300 mapRes!301))

(declare-fun b!35427 () Bool)

(declare-fun e!17009 () Bool)

(assert (=> b!35427 (= e!17007 e!17009)))

(declare-fun e!17015 () Bool)

(declare-fun tp!24384 () Bool)

(declare-fun tp!24382 () Bool)

(declare-datatypes ((Hashable!84 0))(
  ( (HashableExt!83 (__x!682 Int)) )
))
(declare-datatypes ((Regex!161 0))(
  ( (ElementMatch!161 (c!15450 (_ BitVec 16))) (Concat!278 (regOne!834 Regex!161) (regTwo!834 Regex!161)) (EmptyExpr!161) (Star!161 (reg!490 Regex!161)) (EmptyLang!161) (Union!161 (regOne!835 Regex!161) (regTwo!835 Regex!161)) )
))
(declare-datatypes ((List!367 0))(
  ( (Nil!365) (Cons!365 (h!5761 Regex!161) (t!15173 List!367)) )
))
(declare-datatypes ((Context!86 0))(
  ( (Context!87 (exprs!543 List!367)) )
))
(declare-datatypes ((tuple2!294 0))(
  ( (tuple2!295 (_1!201 Context!86) (_2!201 (_ BitVec 16))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!296 0))(
  ( (tuple2!297 (_1!202 tuple2!294) (_2!202 (InoxSet Context!86))) )
))
(declare-datatypes ((List!368 0))(
  ( (Nil!366) (Cons!366 (h!5762 tuple2!296) (t!15174 List!368)) )
))
(declare-datatypes ((array!290 0))(
  ( (array!291 (arr!163 (Array (_ BitVec 32) List!368)) (size!415 (_ BitVec 32))) )
))
(declare-datatypes ((array!292 0))(
  ( (array!293 (arr!164 (Array (_ BitVec 32) (_ BitVec 64))) (size!416 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!176 0))(
  ( (LongMapFixedSize!177 (defaultEntry!426 Int) (mask!770 (_ BitVec 32)) (extraKeys!334 (_ BitVec 32)) (zeroValue!344 List!368) (minValue!344 List!368) (_size!308 (_ BitVec 32)) (_keys!379 array!292) (_values!366 array!290) (_vacant!148 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!341 0))(
  ( (Cell!342 (v!12142 LongMapFixedSize!176)) )
))
(declare-datatypes ((MutLongMap!88 0))(
  ( (LongMap!88 (underlying!371 Cell!341)) (MutLongMapExt!87 (__x!683 Int)) )
))
(declare-datatypes ((Cell!343 0))(
  ( (Cell!344 (v!12143 MutLongMap!88)) )
))
(declare-datatypes ((MutableMap!84 0))(
  ( (MutableMapExt!83 (__x!684 Int)) (HashMap!84 (underlying!372 Cell!343) (hashF!1950 Hashable!84) (_size!309 (_ BitVec 32)) (defaultValue!233 Int)) )
))
(declare-datatypes ((CacheUp!72 0))(
  ( (CacheUp!73 (cache!563 MutableMap!84)) )
))
(declare-fun cacheUp!368 () CacheUp!72)

(declare-fun e!17010 () Bool)

(declare-fun array_inv!93 (array!292) Bool)

(declare-fun array_inv!94 (array!290) Bool)

(assert (=> b!35428 (= e!17010 (and tp!24389 tp!24382 tp!24384 (array_inv!93 (_keys!379 (v!12142 (underlying!371 (v!12143 (underlying!372 (cache!563 cacheUp!368))))))) (array_inv!94 (_values!366 (v!12142 (underlying!371 (v!12143 (underlying!372 (cache!563 cacheUp!368))))))) e!17015))))

(declare-fun b!35429 () Bool)

(declare-fun e!17006 () Bool)

(declare-fun e!17016 () Bool)

(assert (=> b!35429 (= e!17006 e!17016)))

(declare-fun b!35430 () Bool)

(declare-fun e!17011 () Bool)

(declare-datatypes ((Hashable!85 0))(
  ( (HashableExt!84 (__x!685 Int)) )
))
(declare-fun hashF!328 () Hashable!85)

(declare-datatypes ((String!810 0))(
  ( (String!811 (value!6358 String)) )
))
(declare-fun path!6 () String!810)

(declare-datatypes ((tuple3!100 0))(
  ( (tuple3!101 (_1!203 (InoxSet Context!86)) (_2!203 Int) (_3!54 Int)) )
))
(declare-datatypes ((tuple2!298 0))(
  ( (tuple2!299 (_1!204 tuple3!100) (_2!204 Int)) )
))
(declare-datatypes ((List!369 0))(
  ( (Nil!367) (Cons!367 (h!5763 tuple2!298) (t!15175 List!369)) )
))
(declare-datatypes ((List!370 0))(
  ( (Nil!368) (Cons!368 (h!5764 (_ BitVec 16)) (t!15176 List!370)) )
))
(declare-datatypes ((IArray!115 0))(
  ( (IArray!116 (innerList!115 List!370)) )
))
(declare-datatypes ((Conc!57 0))(
  ( (Node!57 (left!415 Conc!57) (right!745 Conc!57) (csize!344 Int) (cheight!268 Int)) (Leaf!216 (xs!2636 IArray!115) (csize!345 Int)) (Empty!57) )
))
(declare-datatypes ((BalanceConc!114 0))(
  ( (BalanceConc!115 (c!15451 Conc!57)) )
))
(declare-datatypes ((array!294 0))(
  ( (array!295 (arr!165 (Array (_ BitVec 32) List!369)) (size!417 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!178 0))(
  ( (LongMapFixedSize!179 (defaultEntry!427 Int) (mask!771 (_ BitVec 32)) (extraKeys!335 (_ BitVec 32)) (zeroValue!345 List!369) (minValue!345 List!369) (_size!310 (_ BitVec 32)) (_keys!380 array!292) (_values!367 array!294) (_vacant!149 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!345 0))(
  ( (Cell!346 (v!12144 LongMapFixedSize!178)) )
))
(declare-datatypes ((MutLongMap!89 0))(
  ( (LongMap!89 (underlying!373 Cell!345)) (MutLongMapExt!88 (__x!686 Int)) )
))
(declare-datatypes ((Cell!347 0))(
  ( (Cell!348 (v!12145 MutLongMap!89)) )
))
(declare-datatypes ((MutableMap!85 0))(
  ( (MutableMapExt!84 (__x!687 Int)) (HashMap!85 (underlying!374 Cell!347) (hashF!1951 Hashable!85) (_size!311 (_ BitVec 32)) (defaultValue!234 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!22 0))(
  ( (CacheFurthestNullable!23 (cache!564 MutableMap!85) (totalInput!1486 BalanceConc!114)) )
))
(declare-fun valid!98 (CacheFurthestNullable!22) Bool)

(declare-fun emptyFurthestNullableCache!8 (Hashable!85 BalanceConc!114 (_ BitVec 32)) CacheFurthestNullable!22)

(declare-fun openFile!0 (String!810) BalanceConc!114)

(assert (=> b!35430 (= e!17011 (not (valid!98 (emptyFurthestNullableCache!8 hashF!328 (openFile!0 path!6) #b00000000000000000000000000010000))))))

(declare-datatypes ((tuple3!102 0))(
  ( (tuple3!103 (_1!205 Regex!161) (_2!205 Context!86) (_3!55 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!300 0))(
  ( (tuple2!301 (_1!206 tuple3!102) (_2!206 (InoxSet Context!86))) )
))
(declare-datatypes ((List!371 0))(
  ( (Nil!369) (Cons!369 (h!5765 tuple2!300) (t!15177 List!371)) )
))
(declare-datatypes ((array!296 0))(
  ( (array!297 (arr!166 (Array (_ BitVec 32) List!371)) (size!418 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!180 0))(
  ( (LongMapFixedSize!181 (defaultEntry!428 Int) (mask!772 (_ BitVec 32)) (extraKeys!336 (_ BitVec 32)) (zeroValue!346 List!371) (minValue!346 List!371) (_size!312 (_ BitVec 32)) (_keys!381 array!292) (_values!368 array!296) (_vacant!150 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!349 0))(
  ( (Cell!350 (v!12146 LongMapFixedSize!180)) )
))
(declare-datatypes ((MutLongMap!90 0))(
  ( (LongMap!90 (underlying!375 Cell!349)) (MutLongMapExt!89 (__x!688 Int)) )
))
(declare-datatypes ((Cell!351 0))(
  ( (Cell!352 (v!12147 MutLongMap!90)) )
))
(declare-datatypes ((Hashable!86 0))(
  ( (HashableExt!85 (__x!689 Int)) )
))
(declare-datatypes ((MutableMap!86 0))(
  ( (MutableMapExt!85 (__x!690 Int)) (HashMap!86 (underlying!376 Cell!351) (hashF!1952 Hashable!86) (_size!313 (_ BitVec 32)) (defaultValue!235 Int)) )
))
(declare-datatypes ((CacheDown!74 0))(
  ( (CacheDown!75 (cache!565 MutableMap!86)) )
))
(declare-fun cacheDown!381 () CacheDown!74)

(declare-fun tp!24386 () Bool)

(declare-fun e!17019 () Bool)

(declare-fun tp!24388 () Bool)

(declare-fun array_inv!95 (array!296) Bool)

(assert (=> b!35431 (= e!17009 (and tp!24394 tp!24386 tp!24388 (array_inv!93 (_keys!381 (v!12146 (underlying!375 (v!12147 (underlying!376 (cache!565 cacheDown!381))))))) (array_inv!95 (_values!368 (v!12146 (underlying!375 (v!12147 (underlying!376 (cache!565 cacheDown!381))))))) e!17019))))

(declare-fun b!35432 () Bool)

(declare-fun tp!24393 () Bool)

(declare-fun mapRes!300 () Bool)

(assert (=> b!35432 (= e!17019 (and tp!24393 mapRes!300))))

(declare-fun condMapEmpty!301 () Bool)

(declare-fun mapDefault!301 () List!371)

(assert (=> b!35432 (= condMapEmpty!301 (= (arr!166 (_values!368 (v!12146 (underlying!375 (v!12147 (underlying!376 (cache!565 cacheDown!381))))))) ((as const (Array (_ BitVec 32) List!371)) mapDefault!301)))))

(declare-fun b!35433 () Bool)

(declare-fun tp!24385 () Bool)

(assert (=> b!35433 (= e!17015 (and tp!24385 mapRes!301))))

(declare-fun condMapEmpty!300 () Bool)

(declare-fun mapDefault!300 () List!368)

(assert (=> b!35433 (= condMapEmpty!300 (= (arr!163 (_values!366 (v!12142 (underlying!371 (v!12143 (underlying!372 (cache!563 cacheUp!368))))))) ((as const (Array (_ BitVec 32) List!368)) mapDefault!300)))))

(declare-fun b!35434 () Bool)

(declare-fun e!17012 () Bool)

(declare-fun e!17021 () Bool)

(assert (=> b!35434 (= e!17012 e!17021)))

(declare-fun mapNonEmpty!300 () Bool)

(declare-fun tp!24383 () Bool)

(declare-fun tp!24395 () Bool)

(assert (=> mapNonEmpty!300 (= mapRes!300 (and tp!24383 tp!24395))))

(declare-fun mapRest!301 () (Array (_ BitVec 32) List!371))

(declare-fun mapValue!300 () List!371)

(declare-fun mapKey!300 () (_ BitVec 32))

(assert (=> mapNonEmpty!300 (= (arr!166 (_values!368 (v!12146 (underlying!375 (v!12147 (underlying!376 (cache!565 cacheDown!381))))))) (store mapRest!301 mapKey!300 mapValue!300))))

(declare-fun e!17017 () Bool)

(assert (=> b!35435 (= e!17016 (and e!17017 tp!24390))))

(declare-fun e!17014 () Bool)

(assert (=> b!35436 (= e!17021 (and e!17014 tp!24392))))

(declare-fun mapIsEmpty!301 () Bool)

(assert (=> mapIsEmpty!301 mapRes!300))

(declare-fun res!27987 () Bool)

(assert (=> start!1918 (=> (not res!27987) (not e!17011))))

(declare-fun valid!99 (CacheUp!72) Bool)

(assert (=> start!1918 (= res!27987 (valid!99 cacheUp!368))))

(assert (=> start!1918 e!17011))

(declare-fun inv!672 (CacheUp!72) Bool)

(assert (=> start!1918 (and (inv!672 cacheUp!368) e!17012)))

(declare-fun inv!673 (CacheDown!74) Bool)

(assert (=> start!1918 (and (inv!673 cacheDown!381) e!17006)))

(assert (=> start!1918 true))

(declare-fun inv!669 (String!810) Bool)

(assert (=> start!1918 (inv!669 path!6)))

(declare-fun b!35437 () Bool)

(declare-fun e!17005 () Bool)

(assert (=> b!35437 (= e!17005 e!17010)))

(declare-fun b!35438 () Bool)

(declare-fun lt!2886 () MutLongMap!90)

(get-info :version)

(assert (=> b!35438 (= e!17017 (and e!17018 ((_ is LongMap!90) lt!2886)))))

(assert (=> b!35438 (= lt!2886 (v!12147 (underlying!376 (cache!565 cacheDown!381))))))

(declare-fun b!35439 () Bool)

(declare-fun e!17020 () Bool)

(declare-fun lt!2885 () MutLongMap!88)

(assert (=> b!35439 (= e!17014 (and e!17020 ((_ is LongMap!88) lt!2885)))))

(assert (=> b!35439 (= lt!2885 (v!12143 (underlying!372 (cache!563 cacheUp!368))))))

(declare-fun mapNonEmpty!301 () Bool)

(declare-fun tp!24391 () Bool)

(declare-fun tp!24387 () Bool)

(assert (=> mapNonEmpty!301 (= mapRes!301 (and tp!24391 tp!24387))))

(declare-fun mapKey!301 () (_ BitVec 32))

(declare-fun mapRest!300 () (Array (_ BitVec 32) List!368))

(declare-fun mapValue!301 () List!368)

(assert (=> mapNonEmpty!301 (= (arr!163 (_values!366 (v!12142 (underlying!371 (v!12143 (underlying!372 (cache!563 cacheUp!368))))))) (store mapRest!300 mapKey!301 mapValue!301))))

(declare-fun b!35440 () Bool)

(assert (=> b!35440 (= e!17020 e!17005)))

(declare-fun b!35441 () Bool)

(declare-fun res!27986 () Bool)

(assert (=> b!35441 (=> (not res!27986) (not e!17011))))

(declare-fun valid!100 (CacheDown!74) Bool)

(assert (=> b!35441 (= res!27986 (valid!100 cacheDown!381))))

(assert (= (and start!1918 res!27987) b!35441))

(assert (= (and b!35441 res!27986) b!35430))

(assert (= (and b!35433 condMapEmpty!300) mapIsEmpty!300))

(assert (= (and b!35433 (not condMapEmpty!300)) mapNonEmpty!301))

(assert (= b!35428 b!35433))

(assert (= b!35437 b!35428))

(assert (= b!35440 b!35437))

(assert (= (and b!35439 ((_ is LongMap!88) (v!12143 (underlying!372 (cache!563 cacheUp!368))))) b!35440))

(assert (= b!35436 b!35439))

(assert (= (and b!35434 ((_ is HashMap!84) (cache!563 cacheUp!368))) b!35436))

(assert (= start!1918 b!35434))

(assert (= (and b!35432 condMapEmpty!301) mapIsEmpty!301))

(assert (= (and b!35432 (not condMapEmpty!301)) mapNonEmpty!300))

(assert (= b!35431 b!35432))

(assert (= b!35427 b!35431))

(assert (= b!35426 b!35427))

(assert (= (and b!35438 ((_ is LongMap!90) (v!12147 (underlying!376 (cache!565 cacheDown!381))))) b!35426))

(assert (= b!35435 b!35438))

(assert (= (and b!35429 ((_ is HashMap!86) (cache!565 cacheDown!381))) b!35435))

(assert (= start!1918 b!35429))

(declare-fun m!11344 () Bool)

(assert (=> b!35431 m!11344))

(declare-fun m!11346 () Bool)

(assert (=> b!35431 m!11346))

(declare-fun m!11348 () Bool)

(assert (=> b!35428 m!11348))

(declare-fun m!11350 () Bool)

(assert (=> b!35428 m!11350))

(declare-fun m!11352 () Bool)

(assert (=> b!35430 m!11352))

(assert (=> b!35430 m!11352))

(declare-fun m!11354 () Bool)

(assert (=> b!35430 m!11354))

(assert (=> b!35430 m!11354))

(declare-fun m!11356 () Bool)

(assert (=> b!35430 m!11356))

(declare-fun m!11358 () Bool)

(assert (=> b!35441 m!11358))

(declare-fun m!11360 () Bool)

(assert (=> mapNonEmpty!300 m!11360))

(declare-fun m!11362 () Bool)

(assert (=> start!1918 m!11362))

(declare-fun m!11364 () Bool)

(assert (=> start!1918 m!11364))

(declare-fun m!11366 () Bool)

(assert (=> start!1918 m!11366))

(declare-fun m!11368 () Bool)

(assert (=> start!1918 m!11368))

(declare-fun m!11370 () Bool)

(assert (=> mapNonEmpty!301 m!11370))

(check-sat (not mapNonEmpty!301) (not b_next!483) (not mapNonEmpty!300) b_and!521 b_and!519 (not b!35431) (not b_next!485) (not b!35433) (not start!1918) (not b!35441) (not b_next!487) (not b!35428) b_and!515 (not b!35432) b_and!517 (not b!35430) (not b_next!481))
(check-sat (not b_next!483) b_and!521 b_and!519 b_and!515 (not b_next!485) (not b_next!487) (not b_next!481) b_and!517)
(get-model)

(declare-fun d!3811 () Bool)

(declare-fun validCacheMapDown!10 (MutableMap!86) Bool)

(assert (=> d!3811 (= (valid!100 cacheDown!381) (validCacheMapDown!10 (cache!565 cacheDown!381)))))

(declare-fun bs!4944 () Bool)

(assert (= bs!4944 d!3811))

(declare-fun m!11372 () Bool)

(assert (=> bs!4944 m!11372))

(assert (=> b!35441 d!3811))

(declare-fun d!3813 () Bool)

(assert (=> d!3813 (= (array_inv!93 (_keys!379 (v!12142 (underlying!371 (v!12143 (underlying!372 (cache!563 cacheUp!368))))))) (bvsge (size!416 (_keys!379 (v!12142 (underlying!371 (v!12143 (underlying!372 (cache!563 cacheUp!368))))))) #b00000000000000000000000000000000))))

(assert (=> b!35428 d!3813))

(declare-fun d!3815 () Bool)

(assert (=> d!3815 (= (array_inv!94 (_values!366 (v!12142 (underlying!371 (v!12143 (underlying!372 (cache!563 cacheUp!368))))))) (bvsge (size!415 (_values!366 (v!12142 (underlying!371 (v!12143 (underlying!372 (cache!563 cacheUp!368))))))) #b00000000000000000000000000000000))))

(assert (=> b!35428 d!3815))

(declare-fun d!3817 () Bool)

(assert (=> d!3817 (= (array_inv!93 (_keys!381 (v!12146 (underlying!375 (v!12147 (underlying!376 (cache!565 cacheDown!381))))))) (bvsge (size!416 (_keys!381 (v!12146 (underlying!375 (v!12147 (underlying!376 (cache!565 cacheDown!381))))))) #b00000000000000000000000000000000))))

(assert (=> b!35431 d!3817))

(declare-fun d!3819 () Bool)

(assert (=> d!3819 (= (array_inv!95 (_values!368 (v!12146 (underlying!375 (v!12147 (underlying!376 (cache!565 cacheDown!381))))))) (bvsge (size!418 (_values!368 (v!12146 (underlying!375 (v!12147 (underlying!376 (cache!565 cacheDown!381))))))) #b00000000000000000000000000000000))))

(assert (=> b!35431 d!3819))

(declare-fun d!3821 () Bool)

(declare-fun validCacheMapUp!8 (MutableMap!84) Bool)

(assert (=> d!3821 (= (valid!99 cacheUp!368) (validCacheMapUp!8 (cache!563 cacheUp!368)))))

(declare-fun bs!4945 () Bool)

(assert (= bs!4945 d!3821))

(declare-fun m!11374 () Bool)

(assert (=> bs!4945 m!11374))

(assert (=> start!1918 d!3821))

(declare-fun d!3823 () Bool)

(declare-fun res!27990 () Bool)

(declare-fun e!17025 () Bool)

(assert (=> d!3823 (=> (not res!27990) (not e!17025))))

(assert (=> d!3823 (= res!27990 ((_ is HashMap!84) (cache!563 cacheUp!368)))))

(assert (=> d!3823 (= (inv!672 cacheUp!368) e!17025)))

(declare-fun b!35444 () Bool)

(assert (=> b!35444 (= e!17025 (validCacheMapUp!8 (cache!563 cacheUp!368)))))

(assert (= (and d!3823 res!27990) b!35444))

(assert (=> b!35444 m!11374))

(assert (=> start!1918 d!3823))

(declare-fun d!3825 () Bool)

(declare-fun res!27993 () Bool)

(declare-fun e!17028 () Bool)

(assert (=> d!3825 (=> (not res!27993) (not e!17028))))

(assert (=> d!3825 (= res!27993 ((_ is HashMap!86) (cache!565 cacheDown!381)))))

(assert (=> d!3825 (= (inv!673 cacheDown!381) e!17028)))

(declare-fun b!35447 () Bool)

(assert (=> b!35447 (= e!17028 (validCacheMapDown!10 (cache!565 cacheDown!381)))))

(assert (= (and d!3825 res!27993) b!35447))

(assert (=> b!35447 m!11372))

(assert (=> start!1918 d!3825))

(declare-fun d!3827 () Bool)

(assert (=> d!3827 (= (inv!669 path!6) (= (mod (str.len (value!6358 path!6)) 2) 0))))

(assert (=> start!1918 d!3827))

(declare-fun d!3829 () Bool)

(declare-fun validCacheMapFurthestNullable!2 (MutableMap!85 BalanceConc!114) Bool)

(assert (=> d!3829 (= (valid!98 (emptyFurthestNullableCache!8 hashF!328 (openFile!0 path!6) #b00000000000000000000000000010000)) (validCacheMapFurthestNullable!2 (cache!564 (emptyFurthestNullableCache!8 hashF!328 (openFile!0 path!6) #b00000000000000000000000000010000)) (totalInput!1486 (emptyFurthestNullableCache!8 hashF!328 (openFile!0 path!6) #b00000000000000000000000000010000))))))

(declare-fun bs!4946 () Bool)

(assert (= bs!4946 d!3829))

(declare-fun m!11376 () Bool)

(assert (=> bs!4946 m!11376))

(assert (=> b!35430 d!3829))

(declare-fun b!35464 () Bool)

(declare-fun e!17044 () Bool)

(declare-fun lt!2898 () MutLongMap!89)

(assert (=> b!35464 (= e!17044 ((_ is LongMap!89) lt!2898))))

(assert (=> b!35464 (= lt!2898 (v!12145 (underlying!374 (cache!564 (emptyFurthestNullableCache!8 hashF!328 (openFile!0 path!6) #b00000000000000000000000000010000)))))))

(declare-fun b!35463 () Bool)

(declare-fun e!17043 () Bool)

(assert (=> b!35463 (= e!17043 e!17044)))

(declare-fun b!35462 () Bool)

(declare-fun e!17042 () Bool)

(assert (=> b!35462 (= e!17042 e!17043)))

(declare-fun d!3831 () Bool)

(assert (=> d!3831 (= true e!17042)))

(assert (= b!35463 b!35464))

(assert (= (and b!35462 ((_ is HashMap!85) (cache!564 (emptyFurthestNullableCache!8 hashF!328 (openFile!0 path!6) #b00000000000000000000000000010000)))) b!35463))

(assert (= d!3831 b!35462))

(declare-fun b!35453 () Bool)

(assert (=> b!35453 true))

(declare-fun lt!2894 () CacheFurthestNullable!22)

(assert (=> d!3831 (valid!98 lt!2894)))

(declare-fun lt!2895 () MutableMap!85)

(assert (=> d!3831 (= lt!2894 (CacheFurthestNullable!23 lt!2895 (openFile!0 path!6)))))

(declare-datatypes ((Unit!191 0))(
  ( (Unit!192) )
))
(declare-fun lt!2893 () Unit!191)

(declare-fun Unit!193 () Unit!191)

(assert (=> d!3831 (= lt!2893 Unit!193)))

(declare-fun e!17035 () Bool)

(assert (=> d!3831 (= (validCacheMapFurthestNullable!2 lt!2895 (openFile!0 path!6)) e!17035)))

(declare-fun res!27999 () Bool)

(assert (=> d!3831 (=> (not res!27999) (not e!17035))))

(declare-fun valid!101 (MutableMap!85) Bool)

(assert (=> d!3831 (= res!27999 (valid!101 lt!2895))))

(declare-fun lambda!615 () Int)

(declare-fun getEmptyHashMap!4 (Int Hashable!85 (_ BitVec 32)) MutableMap!85)

(assert (=> d!3831 (= lt!2895 (getEmptyHashMap!4 lambda!615 hashF!328 #b00000000000000000000000000010000))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!3831 (validMask!0 (bvsub #b00000000000000000000000000010000 #b00000000000000000000000000000001))))

(assert (=> d!3831 (= (emptyFurthestNullableCache!8 hashF!328 (openFile!0 path!6) #b00000000000000000000000000010000) lt!2894)))

(declare-fun b!35452 () Bool)

(declare-fun res!27998 () Bool)

(assert (=> b!35452 (=> (not res!27998) (not e!17035))))

(declare-fun invariantList!17 (List!369) Bool)

(declare-datatypes ((ListMap!35 0))(
  ( (ListMap!36 (toList!168 List!369)) )
))
(declare-fun map!206 (MutableMap!85) ListMap!35)

(assert (=> b!35452 (= res!27998 (invariantList!17 (toList!168 (map!206 lt!2895))))))

(declare-fun lambda!616 () Int)

(declare-fun forall!48 (List!369 Int) Bool)

(assert (=> b!35453 (= e!17035 (forall!48 (toList!168 (map!206 lt!2895)) lambda!616))))

(assert (= (and d!3831 res!27999) b!35452))

(assert (= (and b!35452 res!27998) b!35453))

(declare-fun m!11378 () Bool)

(assert (=> d!3831 m!11378))

(declare-fun m!11380 () Bool)

(assert (=> d!3831 m!11380))

(assert (=> d!3831 m!11352))

(declare-fun m!11382 () Bool)

(assert (=> d!3831 m!11382))

(declare-fun m!11384 () Bool)

(assert (=> d!3831 m!11384))

(declare-fun m!11386 () Bool)

(assert (=> d!3831 m!11386))

(declare-fun m!11388 () Bool)

(assert (=> b!35452 m!11388))

(declare-fun m!11390 () Bool)

(assert (=> b!35452 m!11390))

(assert (=> b!35453 m!11388))

(declare-fun m!11392 () Bool)

(assert (=> b!35453 m!11392))

(assert (=> b!35430 d!3831))

(declare-fun d!3833 () Bool)

(declare-fun choose!360 (String!810) BalanceConc!114)

(assert (=> d!3833 (= (openFile!0 path!6) (choose!360 path!6))))

(declare-fun bs!4947 () Bool)

(assert (= bs!4947 d!3833))

(declare-fun m!11394 () Bool)

(assert (=> bs!4947 m!11394))

(assert (=> b!35430 d!3833))

(declare-fun setRes!574 () Bool)

(declare-fun tp!24401 () Bool)

(declare-fun e!17052 () Bool)

(declare-fun b!35471 () Bool)

(declare-fun inv!674 (Context!86) Bool)

(assert (=> b!35471 (= e!17052 (and (inv!674 (_1!201 (_1!202 (h!5762 mapDefault!300)))) setRes!574 tp!24401))))

(declare-fun condSetEmpty!574 () Bool)

(assert (=> b!35471 (= condSetEmpty!574 (= (_2!202 (h!5762 mapDefault!300)) ((as const (Array Context!86 Bool)) false)))))

(declare-fun setIsEmpty!574 () Bool)

(assert (=> setIsEmpty!574 setRes!574))

(declare-fun setNonEmpty!574 () Bool)

(declare-fun tp!24400 () Bool)

(declare-fun setElem!574 () Context!86)

(assert (=> setNonEmpty!574 (= setRes!574 (and tp!24400 (inv!674 setElem!574)))))

(declare-fun setRest!574 () (InoxSet Context!86))

(assert (=> setNonEmpty!574 (= (_2!202 (h!5762 mapDefault!300)) ((_ map or) (store ((as const (Array Context!86 Bool)) false) setElem!574 true) setRest!574))))

(assert (=> b!35433 (= tp!24385 e!17052)))

(assert (= (and b!35471 condSetEmpty!574) setIsEmpty!574))

(assert (= (and b!35471 (not condSetEmpty!574)) setNonEmpty!574))

(assert (= (and b!35433 ((_ is Cons!366) mapDefault!300)) b!35471))

(declare-fun m!11396 () Bool)

(assert (=> b!35471 m!11396))

(declare-fun m!11398 () Bool)

(assert (=> setNonEmpty!574 m!11398))

(declare-fun setRes!575 () Bool)

(declare-fun tp!24403 () Bool)

(declare-fun e!17055 () Bool)

(declare-fun b!35472 () Bool)

(assert (=> b!35472 (= e!17055 (and (inv!674 (_1!201 (_1!202 (h!5762 (zeroValue!344 (v!12142 (underlying!371 (v!12143 (underlying!372 (cache!563 cacheUp!368)))))))))) setRes!575 tp!24403))))

(declare-fun condSetEmpty!575 () Bool)

(assert (=> b!35472 (= condSetEmpty!575 (= (_2!202 (h!5762 (zeroValue!344 (v!12142 (underlying!371 (v!12143 (underlying!372 (cache!563 cacheUp!368)))))))) ((as const (Array Context!86 Bool)) false)))))

(declare-fun setIsEmpty!575 () Bool)

(assert (=> setIsEmpty!575 setRes!575))

(declare-fun setNonEmpty!575 () Bool)

(declare-fun tp!24402 () Bool)

(declare-fun setElem!575 () Context!86)

(assert (=> setNonEmpty!575 (= setRes!575 (and tp!24402 (inv!674 setElem!575)))))

(declare-fun setRest!575 () (InoxSet Context!86))

(assert (=> setNonEmpty!575 (= (_2!202 (h!5762 (zeroValue!344 (v!12142 (underlying!371 (v!12143 (underlying!372 (cache!563 cacheUp!368)))))))) ((_ map or) (store ((as const (Array Context!86 Bool)) false) setElem!575 true) setRest!575))))

(assert (=> b!35428 (= tp!24382 e!17055)))

(assert (= (and b!35472 condSetEmpty!575) setIsEmpty!575))

(assert (= (and b!35472 (not condSetEmpty!575)) setNonEmpty!575))

(assert (= (and b!35428 ((_ is Cons!366) (zeroValue!344 (v!12142 (underlying!371 (v!12143 (underlying!372 (cache!563 cacheUp!368)))))))) b!35472))

(declare-fun m!11400 () Bool)

(assert (=> b!35472 m!11400))

(declare-fun m!11402 () Bool)

(assert (=> setNonEmpty!575 m!11402))

(declare-fun setRes!576 () Bool)

(declare-fun b!35473 () Bool)

(declare-fun tp!24405 () Bool)

(declare-fun e!17058 () Bool)

(assert (=> b!35473 (= e!17058 (and (inv!674 (_1!201 (_1!202 (h!5762 (minValue!344 (v!12142 (underlying!371 (v!12143 (underlying!372 (cache!563 cacheUp!368)))))))))) setRes!576 tp!24405))))

(declare-fun condSetEmpty!576 () Bool)

(assert (=> b!35473 (= condSetEmpty!576 (= (_2!202 (h!5762 (minValue!344 (v!12142 (underlying!371 (v!12143 (underlying!372 (cache!563 cacheUp!368)))))))) ((as const (Array Context!86 Bool)) false)))))

(declare-fun setIsEmpty!576 () Bool)

(assert (=> setIsEmpty!576 setRes!576))

(declare-fun setNonEmpty!576 () Bool)

(declare-fun tp!24404 () Bool)

(declare-fun setElem!576 () Context!86)

(assert (=> setNonEmpty!576 (= setRes!576 (and tp!24404 (inv!674 setElem!576)))))

(declare-fun setRest!576 () (InoxSet Context!86))

(assert (=> setNonEmpty!576 (= (_2!202 (h!5762 (minValue!344 (v!12142 (underlying!371 (v!12143 (underlying!372 (cache!563 cacheUp!368)))))))) ((_ map or) (store ((as const (Array Context!86 Bool)) false) setElem!576 true) setRest!576))))

(assert (=> b!35428 (= tp!24384 e!17058)))

(assert (= (and b!35473 condSetEmpty!576) setIsEmpty!576))

(assert (= (and b!35473 (not condSetEmpty!576)) setNonEmpty!576))

(assert (= (and b!35428 ((_ is Cons!366) (minValue!344 (v!12142 (underlying!371 (v!12143 (underlying!372 (cache!563 cacheUp!368)))))))) b!35473))

(declare-fun m!11404 () Bool)

(assert (=> b!35473 m!11404))

(declare-fun m!11406 () Bool)

(assert (=> setNonEmpty!576 m!11406))

(declare-fun e!17068 () Bool)

(declare-fun setRes!579 () Bool)

(declare-fun tp!24410 () Bool)

(declare-fun b!35478 () Bool)

(assert (=> b!35478 (= e!17068 (and (inv!674 (_2!205 (_1!206 (h!5765 (zeroValue!346 (v!12146 (underlying!375 (v!12147 (underlying!376 (cache!565 cacheDown!381)))))))))) setRes!579 tp!24410))))

(declare-fun condSetEmpty!579 () Bool)

(assert (=> b!35478 (= condSetEmpty!579 (= (_2!206 (h!5765 (zeroValue!346 (v!12146 (underlying!375 (v!12147 (underlying!376 (cache!565 cacheDown!381)))))))) ((as const (Array Context!86 Bool)) false)))))

(declare-fun setIsEmpty!579 () Bool)

(assert (=> setIsEmpty!579 setRes!579))

(declare-fun setNonEmpty!579 () Bool)

(declare-fun tp!24411 () Bool)

(declare-fun setElem!579 () Context!86)

(assert (=> setNonEmpty!579 (= setRes!579 (and tp!24411 (inv!674 setElem!579)))))

(declare-fun setRest!579 () (InoxSet Context!86))

(assert (=> setNonEmpty!579 (= (_2!206 (h!5765 (zeroValue!346 (v!12146 (underlying!375 (v!12147 (underlying!376 (cache!565 cacheDown!381)))))))) ((_ map or) (store ((as const (Array Context!86 Bool)) false) setElem!579 true) setRest!579))))

(assert (=> b!35431 (= tp!24386 e!17068)))

(assert (= (and b!35478 condSetEmpty!579) setIsEmpty!579))

(assert (= (and b!35478 (not condSetEmpty!579)) setNonEmpty!579))

(assert (= (and b!35431 ((_ is Cons!369) (zeroValue!346 (v!12146 (underlying!375 (v!12147 (underlying!376 (cache!565 cacheDown!381)))))))) b!35478))

(declare-fun m!11408 () Bool)

(assert (=> b!35478 m!11408))

(declare-fun m!11410 () Bool)

(assert (=> setNonEmpty!579 m!11410))

(declare-fun setRes!580 () Bool)

(declare-fun tp!24412 () Bool)

(declare-fun b!35479 () Bool)

(declare-fun e!17071 () Bool)

(assert (=> b!35479 (= e!17071 (and (inv!674 (_2!205 (_1!206 (h!5765 (minValue!346 (v!12146 (underlying!375 (v!12147 (underlying!376 (cache!565 cacheDown!381)))))))))) setRes!580 tp!24412))))

(declare-fun condSetEmpty!580 () Bool)

(assert (=> b!35479 (= condSetEmpty!580 (= (_2!206 (h!5765 (minValue!346 (v!12146 (underlying!375 (v!12147 (underlying!376 (cache!565 cacheDown!381)))))))) ((as const (Array Context!86 Bool)) false)))))

(declare-fun setIsEmpty!580 () Bool)

(assert (=> setIsEmpty!580 setRes!580))

(declare-fun setNonEmpty!580 () Bool)

(declare-fun tp!24413 () Bool)

(declare-fun setElem!580 () Context!86)

(assert (=> setNonEmpty!580 (= setRes!580 (and tp!24413 (inv!674 setElem!580)))))

(declare-fun setRest!580 () (InoxSet Context!86))

(assert (=> setNonEmpty!580 (= (_2!206 (h!5765 (minValue!346 (v!12146 (underlying!375 (v!12147 (underlying!376 (cache!565 cacheDown!381)))))))) ((_ map or) (store ((as const (Array Context!86 Bool)) false) setElem!580 true) setRest!580))))

(assert (=> b!35431 (= tp!24388 e!17071)))

(assert (= (and b!35479 condSetEmpty!580) setIsEmpty!580))

(assert (= (and b!35479 (not condSetEmpty!580)) setNonEmpty!580))

(assert (= (and b!35431 ((_ is Cons!369) (minValue!346 (v!12146 (underlying!375 (v!12147 (underlying!376 (cache!565 cacheDown!381)))))))) b!35479))

(declare-fun m!11412 () Bool)

(assert (=> b!35479 m!11412))

(declare-fun m!11414 () Bool)

(assert (=> setNonEmpty!580 m!11414))

(declare-fun setIsEmpty!585 () Bool)

(declare-fun setRes!585 () Bool)

(assert (=> setIsEmpty!585 setRes!585))

(declare-fun setRes!586 () Bool)

(declare-fun e!17087 () Bool)

(declare-fun tp!24426 () Bool)

(declare-fun b!35486 () Bool)

(declare-fun mapDefault!304 () List!368)

(assert (=> b!35486 (= e!17087 (and (inv!674 (_1!201 (_1!202 (h!5762 mapDefault!304)))) setRes!586 tp!24426))))

(declare-fun condSetEmpty!585 () Bool)

(assert (=> b!35486 (= condSetEmpty!585 (= (_2!202 (h!5762 mapDefault!304)) ((as const (Array Context!86 Bool)) false)))))

(declare-fun mapNonEmpty!304 () Bool)

(declare-fun mapRes!304 () Bool)

(declare-fun tp!24424 () Bool)

(declare-fun e!17086 () Bool)

(assert (=> mapNonEmpty!304 (= mapRes!304 (and tp!24424 e!17086))))

(declare-fun mapKey!304 () (_ BitVec 32))

(declare-fun mapValue!304 () List!368)

(declare-fun mapRest!304 () (Array (_ BitVec 32) List!368))

(assert (=> mapNonEmpty!304 (= mapRest!300 (store mapRest!304 mapKey!304 mapValue!304))))

(declare-fun mapIsEmpty!304 () Bool)

(assert (=> mapIsEmpty!304 mapRes!304))

(declare-fun setNonEmpty!585 () Bool)

(declare-fun tp!24425 () Bool)

(declare-fun setElem!586 () Context!86)

(assert (=> setNonEmpty!585 (= setRes!586 (and tp!24425 (inv!674 setElem!586)))))

(declare-fun setRest!585 () (InoxSet Context!86))

(assert (=> setNonEmpty!585 (= (_2!202 (h!5762 mapDefault!304)) ((_ map or) (store ((as const (Array Context!86 Bool)) false) setElem!586 true) setRest!585))))

(declare-fun tp!24427 () Bool)

(declare-fun b!35487 () Bool)

(assert (=> b!35487 (= e!17086 (and (inv!674 (_1!201 (_1!202 (h!5762 mapValue!304)))) setRes!585 tp!24427))))

(declare-fun condSetEmpty!586 () Bool)

(assert (=> b!35487 (= condSetEmpty!586 (= (_2!202 (h!5762 mapValue!304)) ((as const (Array Context!86 Bool)) false)))))

(declare-fun condMapEmpty!304 () Bool)

(assert (=> mapNonEmpty!301 (= condMapEmpty!304 (= mapRest!300 ((as const (Array (_ BitVec 32) List!368)) mapDefault!304)))))

(assert (=> mapNonEmpty!301 (= tp!24391 (and e!17087 mapRes!304))))

(declare-fun setIsEmpty!586 () Bool)

(assert (=> setIsEmpty!586 setRes!586))

(declare-fun setNonEmpty!586 () Bool)

(declare-fun tp!24428 () Bool)

(declare-fun setElem!585 () Context!86)

(assert (=> setNonEmpty!586 (= setRes!585 (and tp!24428 (inv!674 setElem!585)))))

(declare-fun setRest!586 () (InoxSet Context!86))

(assert (=> setNonEmpty!586 (= (_2!202 (h!5762 mapValue!304)) ((_ map or) (store ((as const (Array Context!86 Bool)) false) setElem!585 true) setRest!586))))

(assert (= (and mapNonEmpty!301 condMapEmpty!304) mapIsEmpty!304))

(assert (= (and mapNonEmpty!301 (not condMapEmpty!304)) mapNonEmpty!304))

(assert (= (and b!35487 condSetEmpty!586) setIsEmpty!585))

(assert (= (and b!35487 (not condSetEmpty!586)) setNonEmpty!586))

(assert (= (and mapNonEmpty!304 ((_ is Cons!366) mapValue!304)) b!35487))

(assert (= (and b!35486 condSetEmpty!585) setIsEmpty!586))

(assert (= (and b!35486 (not condSetEmpty!585)) setNonEmpty!585))

(assert (= (and mapNonEmpty!301 ((_ is Cons!366) mapDefault!304)) b!35486))

(declare-fun m!11416 () Bool)

(assert (=> setNonEmpty!586 m!11416))

(declare-fun m!11418 () Bool)

(assert (=> b!35487 m!11418))

(declare-fun m!11420 () Bool)

(assert (=> b!35486 m!11420))

(declare-fun m!11422 () Bool)

(assert (=> mapNonEmpty!304 m!11422))

(declare-fun m!11424 () Bool)

(assert (=> setNonEmpty!585 m!11424))

(declare-fun e!17091 () Bool)

(declare-fun b!35488 () Bool)

(declare-fun setRes!587 () Bool)

(declare-fun tp!24430 () Bool)

(assert (=> b!35488 (= e!17091 (and (inv!674 (_1!201 (_1!202 (h!5762 mapValue!301)))) setRes!587 tp!24430))))

(declare-fun condSetEmpty!587 () Bool)

(assert (=> b!35488 (= condSetEmpty!587 (= (_2!202 (h!5762 mapValue!301)) ((as const (Array Context!86 Bool)) false)))))

(declare-fun setIsEmpty!587 () Bool)

(assert (=> setIsEmpty!587 setRes!587))

(declare-fun setNonEmpty!587 () Bool)

(declare-fun tp!24429 () Bool)

(declare-fun setElem!587 () Context!86)

(assert (=> setNonEmpty!587 (= setRes!587 (and tp!24429 (inv!674 setElem!587)))))

(declare-fun setRest!587 () (InoxSet Context!86))

(assert (=> setNonEmpty!587 (= (_2!202 (h!5762 mapValue!301)) ((_ map or) (store ((as const (Array Context!86 Bool)) false) setElem!587 true) setRest!587))))

(assert (=> mapNonEmpty!301 (= tp!24387 e!17091)))

(assert (= (and b!35488 condSetEmpty!587) setIsEmpty!587))

(assert (= (and b!35488 (not condSetEmpty!587)) setNonEmpty!587))

(assert (= (and mapNonEmpty!301 ((_ is Cons!366) mapValue!301)) b!35488))

(declare-fun m!11426 () Bool)

(assert (=> b!35488 m!11426))

(declare-fun m!11428 () Bool)

(assert (=> setNonEmpty!587 m!11428))

(declare-fun b!35489 () Bool)

(declare-fun setRes!588 () Bool)

(declare-fun tp!24431 () Bool)

(declare-fun e!17095 () Bool)

(assert (=> b!35489 (= e!17095 (and (inv!674 (_2!205 (_1!206 (h!5765 mapDefault!301)))) setRes!588 tp!24431))))

(declare-fun condSetEmpty!588 () Bool)

(assert (=> b!35489 (= condSetEmpty!588 (= (_2!206 (h!5765 mapDefault!301)) ((as const (Array Context!86 Bool)) false)))))

(declare-fun setIsEmpty!588 () Bool)

(assert (=> setIsEmpty!588 setRes!588))

(declare-fun setNonEmpty!588 () Bool)

(declare-fun tp!24432 () Bool)

(declare-fun setElem!588 () Context!86)

(assert (=> setNonEmpty!588 (= setRes!588 (and tp!24432 (inv!674 setElem!588)))))

(declare-fun setRest!588 () (InoxSet Context!86))

(assert (=> setNonEmpty!588 (= (_2!206 (h!5765 mapDefault!301)) ((_ map or) (store ((as const (Array Context!86 Bool)) false) setElem!588 true) setRest!588))))

(assert (=> b!35432 (= tp!24393 e!17095)))

(assert (= (and b!35489 condSetEmpty!588) setIsEmpty!588))

(assert (= (and b!35489 (not condSetEmpty!588)) setNonEmpty!588))

(assert (= (and b!35432 ((_ is Cons!369) mapDefault!301)) b!35489))

(declare-fun m!11430 () Bool)

(assert (=> b!35489 m!11430))

(declare-fun m!11432 () Bool)

(assert (=> setNonEmpty!588 m!11432))

(declare-fun mapIsEmpty!307 () Bool)

(declare-fun mapRes!307 () Bool)

(assert (=> mapIsEmpty!307 mapRes!307))

(declare-fun condMapEmpty!307 () Bool)

(declare-fun mapDefault!307 () List!371)

(assert (=> mapNonEmpty!300 (= condMapEmpty!307 (= mapRest!301 ((as const (Array (_ BitVec 32) List!371)) mapDefault!307)))))

(declare-fun e!17111 () Bool)

(assert (=> mapNonEmpty!300 (= tp!24383 (and e!17111 mapRes!307))))

(declare-fun setRes!593 () Bool)

(declare-fun b!35496 () Bool)

(declare-fun tp!24445 () Bool)

(assert (=> b!35496 (= e!17111 (and (inv!674 (_2!205 (_1!206 (h!5765 mapDefault!307)))) setRes!593 tp!24445))))

(declare-fun condSetEmpty!593 () Bool)

(assert (=> b!35496 (= condSetEmpty!593 (= (_2!206 (h!5765 mapDefault!307)) ((as const (Array Context!86 Bool)) false)))))

(declare-fun setRes!594 () Bool)

(declare-fun tp!24447 () Bool)

(declare-fun b!35497 () Bool)

(declare-fun mapValue!307 () List!371)

(declare-fun e!17113 () Bool)

(assert (=> b!35497 (= e!17113 (and (inv!674 (_2!205 (_1!206 (h!5765 mapValue!307)))) setRes!594 tp!24447))))

(declare-fun condSetEmpty!594 () Bool)

(assert (=> b!35497 (= condSetEmpty!594 (= (_2!206 (h!5765 mapValue!307)) ((as const (Array Context!86 Bool)) false)))))

(declare-fun mapNonEmpty!307 () Bool)

(declare-fun tp!24444 () Bool)

(assert (=> mapNonEmpty!307 (= mapRes!307 (and tp!24444 e!17113))))

(declare-fun mapRest!307 () (Array (_ BitVec 32) List!371))

(declare-fun mapKey!307 () (_ BitVec 32))

(assert (=> mapNonEmpty!307 (= mapRest!301 (store mapRest!307 mapKey!307 mapValue!307))))

(declare-fun setIsEmpty!593 () Bool)

(assert (=> setIsEmpty!593 setRes!593))

(declare-fun setIsEmpty!594 () Bool)

(assert (=> setIsEmpty!594 setRes!594))

(declare-fun setNonEmpty!593 () Bool)

(declare-fun tp!24446 () Bool)

(declare-fun setElem!593 () Context!86)

(assert (=> setNonEmpty!593 (= setRes!594 (and tp!24446 (inv!674 setElem!593)))))

(declare-fun setRest!593 () (InoxSet Context!86))

(assert (=> setNonEmpty!593 (= (_2!206 (h!5765 mapValue!307)) ((_ map or) (store ((as const (Array Context!86 Bool)) false) setElem!593 true) setRest!593))))

(declare-fun setNonEmpty!594 () Bool)

(declare-fun tp!24443 () Bool)

(declare-fun setElem!594 () Context!86)

(assert (=> setNonEmpty!594 (= setRes!593 (and tp!24443 (inv!674 setElem!594)))))

(declare-fun setRest!594 () (InoxSet Context!86))

(assert (=> setNonEmpty!594 (= (_2!206 (h!5765 mapDefault!307)) ((_ map or) (store ((as const (Array Context!86 Bool)) false) setElem!594 true) setRest!594))))

(assert (= (and mapNonEmpty!300 condMapEmpty!307) mapIsEmpty!307))

(assert (= (and mapNonEmpty!300 (not condMapEmpty!307)) mapNonEmpty!307))

(assert (= (and b!35497 condSetEmpty!594) setIsEmpty!594))

(assert (= (and b!35497 (not condSetEmpty!594)) setNonEmpty!593))

(assert (= (and mapNonEmpty!307 ((_ is Cons!369) mapValue!307)) b!35497))

(assert (= (and b!35496 condSetEmpty!593) setIsEmpty!593))

(assert (= (and b!35496 (not condSetEmpty!593)) setNonEmpty!594))

(assert (= (and mapNonEmpty!300 ((_ is Cons!369) mapDefault!307)) b!35496))

(declare-fun m!11434 () Bool)

(assert (=> setNonEmpty!593 m!11434))

(declare-fun m!11436 () Bool)

(assert (=> setNonEmpty!594 m!11436))

(declare-fun m!11438 () Bool)

(assert (=> b!35496 m!11438))

(declare-fun m!11440 () Bool)

(assert (=> mapNonEmpty!307 m!11440))

(declare-fun m!11442 () Bool)

(assert (=> b!35497 m!11442))

(declare-fun b!35498 () Bool)

(declare-fun tp!24448 () Bool)

(declare-fun setRes!595 () Bool)

(declare-fun e!17116 () Bool)

(assert (=> b!35498 (= e!17116 (and (inv!674 (_2!205 (_1!206 (h!5765 mapValue!300)))) setRes!595 tp!24448))))

(declare-fun condSetEmpty!595 () Bool)

(assert (=> b!35498 (= condSetEmpty!595 (= (_2!206 (h!5765 mapValue!300)) ((as const (Array Context!86 Bool)) false)))))

(declare-fun setIsEmpty!595 () Bool)

(assert (=> setIsEmpty!595 setRes!595))

(declare-fun setNonEmpty!595 () Bool)

(declare-fun tp!24449 () Bool)

(declare-fun setElem!595 () Context!86)

(assert (=> setNonEmpty!595 (= setRes!595 (and tp!24449 (inv!674 setElem!595)))))

(declare-fun setRest!595 () (InoxSet Context!86))

(assert (=> setNonEmpty!595 (= (_2!206 (h!5765 mapValue!300)) ((_ map or) (store ((as const (Array Context!86 Bool)) false) setElem!595 true) setRest!595))))

(assert (=> mapNonEmpty!300 (= tp!24395 e!17116)))

(assert (= (and b!35498 condSetEmpty!595) setIsEmpty!595))

(assert (= (and b!35498 (not condSetEmpty!595)) setNonEmpty!595))

(assert (= (and mapNonEmpty!300 ((_ is Cons!369) mapValue!300)) b!35498))

(declare-fun m!11444 () Bool)

(assert (=> b!35498 m!11444))

(declare-fun m!11446 () Bool)

(assert (=> setNonEmpty!595 m!11446))

(check-sat (not setNonEmpty!587) (not b!35472) (not b!35489) (not d!3811) (not b!35498) (not b!35496) (not b!35478) (not setNonEmpty!588) (not setNonEmpty!595) (not setNonEmpty!586) (not b!35452) (not d!3821) (not b!35471) (not setNonEmpty!574) (not d!3831) (not setNonEmpty!593) (not b_next!483) (not setNonEmpty!579) (not setNonEmpty!575) b_and!521 (not d!3833) (not b!35497) b_and!519 b_and!515 (not mapNonEmpty!307) (not b!35487) (not b_next!485) (not b!35473) (not setNonEmpty!585) (not b!35486) b_and!517 (not setNonEmpty!594) (not b_next!481) (not mapNonEmpty!304) (not b!35488) (not b!35447) (not setNonEmpty!580) (not setNonEmpty!576) (not b!35479) (not d!3829) (not b!35453) (not b_next!487) (not b!35444))
(check-sat (not b_next!483) b_and!521 b_and!519 b_and!515 (not b_next!485) (not b_next!487) (not b_next!481) b_and!517)
