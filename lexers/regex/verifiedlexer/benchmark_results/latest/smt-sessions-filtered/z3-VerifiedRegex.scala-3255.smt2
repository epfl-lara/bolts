; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!187774 () Bool)

(assert start!187774)

(declare-fun b!1873746 () Bool)

(declare-fun b_free!52045 () Bool)

(declare-fun b_next!52749 () Bool)

(assert (=> b!1873746 (= b_free!52045 (not b_next!52749))))

(declare-fun tp!533255 () Bool)

(declare-fun b_and!144331 () Bool)

(assert (=> b!1873746 (= tp!533255 b_and!144331)))

(declare-fun b!1873750 () Bool)

(declare-fun b_free!52047 () Bool)

(declare-fun b_next!52751 () Bool)

(assert (=> b!1873750 (= b_free!52047 (not b_next!52751))))

(declare-fun tp!533247 () Bool)

(declare-fun b_and!144333 () Bool)

(assert (=> b!1873750 (= tp!533247 b_and!144333)))

(declare-fun b!1873741 () Bool)

(declare-fun b_free!52049 () Bool)

(declare-fun b_next!52753 () Bool)

(assert (=> b!1873741 (= b_free!52049 (not b_next!52753))))

(declare-fun tp!533257 () Bool)

(declare-fun b_and!144335 () Bool)

(assert (=> b!1873741 (= tp!533257 b_and!144335)))

(declare-fun b!1873736 () Bool)

(declare-fun b_free!52051 () Bool)

(declare-fun b_next!52755 () Bool)

(assert (=> b!1873736 (= b_free!52051 (not b_next!52755))))

(declare-fun tp!533262 () Bool)

(declare-fun b_and!144337 () Bool)

(assert (=> b!1873736 (= tp!533262 b_and!144337)))

(declare-fun b!1873735 () Bool)

(declare-fun e!1195415 () Bool)

(declare-fun tp!533248 () Bool)

(declare-fun mapRes!8966 () Bool)

(assert (=> b!1873735 (= e!1195415 (and tp!533248 mapRes!8966))))

(declare-fun condMapEmpty!8967 () Bool)

(declare-datatypes ((C!10316 0))(
  ( (C!10317 (val!6046 Int)) )
))
(declare-datatypes ((Regex!5083 0))(
  ( (ElementMatch!5083 (c!305391 C!10316)) (Concat!8902 (regOne!10678 Regex!5083) (regTwo!10678 Regex!5083)) (EmptyExpr!5083) (Star!5083 (reg!5412 Regex!5083)) (EmptyLang!5083) (Union!5083 (regOne!10679 Regex!5083) (regTwo!10679 Regex!5083)) )
))
(declare-datatypes ((List!20879 0))(
  ( (Nil!20797) (Cons!20797 (h!26198 Regex!5083) (t!173096 List!20879)) )
))
(declare-datatypes ((Context!1942 0))(
  ( (Context!1943 (exprs!1471 List!20879)) )
))
(declare-datatypes ((tuple3!1936 0))(
  ( (tuple3!1937 (_1!11398 Regex!5083) (_2!11398 Context!1942) (_3!1432 C!10316)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!19932 0))(
  ( (tuple2!19933 (_1!11399 tuple3!1936) (_2!11399 (InoxSet Context!1942))) )
))
(declare-datatypes ((List!20880 0))(
  ( (Nil!20798) (Cons!20798 (h!26199 tuple2!19932) (t!173097 List!20880)) )
))
(declare-datatypes ((array!6665 0))(
  ( (array!6666 (arr!2961 (Array (_ BitVec 32) (_ BitVec 64))) (size!16505 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1847 0))(
  ( (HashableExt!1846 (__x!13034 Int)) )
))
(declare-datatypes ((array!6667 0))(
  ( (array!6668 (arr!2962 (Array (_ BitVec 32) List!20880)) (size!16506 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3866 0))(
  ( (LongMapFixedSize!3867 (defaultEntry!2298 Int) (mask!5737 (_ BitVec 32)) (extraKeys!2181 (_ BitVec 32)) (zeroValue!2191 List!20880) (minValue!2191 List!20880) (_size!3917 (_ BitVec 32)) (_keys!2230 array!6665) (_values!2213 array!6667) (_vacant!1994 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7557 0))(
  ( (Cell!7558 (v!26167 LongMapFixedSize!3866)) )
))
(declare-datatypes ((MutLongMap!1933 0))(
  ( (LongMap!1933 (underlying!4059 Cell!7557)) (MutLongMapExt!1932 (__x!13035 Int)) )
))
(declare-datatypes ((Cell!7559 0))(
  ( (Cell!7560 (v!26168 MutLongMap!1933)) )
))
(declare-datatypes ((MutableMap!1847 0))(
  ( (MutableMapExt!1846 (__x!13036 Int)) (HashMap!1847 (underlying!4060 Cell!7559) (hashF!3770 Hashable!1847) (_size!3918 (_ BitVec 32)) (defaultValue!2009 Int)) )
))
(declare-datatypes ((CacheDown!1142 0))(
  ( (CacheDown!1143 (cache!2228 MutableMap!1847)) )
))
(declare-fun cacheDown!1126 () CacheDown!1142)

(declare-fun mapDefault!8966 () List!20880)

(assert (=> b!1873735 (= condMapEmpty!8967 (= (arr!2962 (_values!2213 (v!26167 (underlying!4059 (v!26168 (underlying!4060 (cache!2228 cacheDown!1126))))))) ((as const (Array (_ BitVec 32) List!20880)) mapDefault!8966)))))

(declare-fun e!1195410 () Bool)

(declare-fun e!1195411 () Bool)

(assert (=> b!1873736 (= e!1195410 (and e!1195411 tp!533262))))

(declare-fun b!1873737 () Bool)

(declare-fun e!1195423 () Bool)

(declare-fun e!1195424 () Bool)

(assert (=> b!1873737 (= e!1195423 e!1195424)))

(declare-datatypes ((tuple2!19934 0))(
  ( (tuple2!19935 (_1!11400 Context!1942) (_2!11400 C!10316)) )
))
(declare-datatypes ((tuple2!19936 0))(
  ( (tuple2!19937 (_1!11401 tuple2!19934) (_2!11401 (InoxSet Context!1942))) )
))
(declare-datatypes ((List!20881 0))(
  ( (Nil!20799) (Cons!20799 (h!26200 tuple2!19936) (t!173098 List!20881)) )
))
(declare-datatypes ((array!6669 0))(
  ( (array!6670 (arr!2963 (Array (_ BitVec 32) List!20881)) (size!16507 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3868 0))(
  ( (LongMapFixedSize!3869 (defaultEntry!2299 Int) (mask!5738 (_ BitVec 32)) (extraKeys!2182 (_ BitVec 32)) (zeroValue!2192 List!20881) (minValue!2192 List!20881) (_size!3919 (_ BitVec 32)) (_keys!2231 array!6665) (_values!2214 array!6669) (_vacant!1995 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7561 0))(
  ( (Cell!7562 (v!26169 LongMapFixedSize!3868)) )
))
(declare-datatypes ((MutLongMap!1934 0))(
  ( (LongMap!1934 (underlying!4061 Cell!7561)) (MutLongMapExt!1933 (__x!13037 Int)) )
))
(declare-datatypes ((Cell!7563 0))(
  ( (Cell!7564 (v!26170 MutLongMap!1934)) )
))
(declare-datatypes ((Hashable!1848 0))(
  ( (HashableExt!1847 (__x!13038 Int)) )
))
(declare-datatypes ((MutableMap!1848 0))(
  ( (MutableMapExt!1847 (__x!13039 Int)) (HashMap!1848 (underlying!4062 Cell!7563) (hashF!3771 Hashable!1848) (_size!3920 (_ BitVec 32)) (defaultValue!2010 Int)) )
))
(declare-datatypes ((CacheUp!1146 0))(
  ( (CacheUp!1147 (cache!2229 MutableMap!1848)) )
))
(declare-fun cacheUp!1007 () CacheUp!1146)

(declare-fun b!1873738 () Bool)

(declare-datatypes ((List!20882 0))(
  ( (Nil!20800) (Cons!20800 (h!26201 C!10316) (t!173099 List!20882)) )
))
(declare-fun input!6045 () List!20882)

(declare-fun lt!719934 () (InoxSet Context!1942))

(declare-fun e!1195409 () Bool)

(declare-fun lt!719933 () Bool)

(declare-datatypes ((tuple3!1938 0))(
  ( (tuple3!1939 (_1!11402 Bool) (_2!11402 CacheUp!1146) (_3!1433 CacheDown!1142)) )
))
(declare-fun matchZipperMem!4 ((InoxSet Context!1942) List!20882 CacheUp!1146 CacheDown!1142) tuple3!1938)

(assert (=> b!1873738 (= e!1195409 (not (= (_1!11402 (matchZipperMem!4 lt!719934 input!6045 cacheUp!1007 cacheDown!1126)) lt!719933)))))

(declare-fun matchZipper!88 ((InoxSet Context!1942) List!20882) Bool)

(assert (=> b!1873738 (= lt!719933 (matchZipper!88 lt!719934 input!6045))))

(declare-fun r!13571 () Regex!5083)

(declare-fun matchR!2473 (Regex!5083 List!20882) Bool)

(assert (=> b!1873738 (= lt!719933 (matchR!2473 r!13571 input!6045))))

(declare-datatypes ((Unit!35362 0))(
  ( (Unit!35363) )
))
(declare-fun lt!719935 () Unit!35362)

(declare-datatypes ((List!20883 0))(
  ( (Nil!20801) (Cons!20801 (h!26202 Context!1942) (t!173100 List!20883)) )
))
(declare-fun theoremZipperRegexEquiv!13 ((InoxSet Context!1942) List!20883 Regex!5083 List!20882) Unit!35362)

(declare-fun toList!1013 ((InoxSet Context!1942)) List!20883)

(assert (=> b!1873738 (= lt!719935 (theoremZipperRegexEquiv!13 lt!719934 (toList!1013 lt!719934) r!13571 input!6045))))

(declare-fun focus!252 (Regex!5083) (InoxSet Context!1942))

(assert (=> b!1873738 (= lt!719934 (focus!252 r!13571))))

(declare-fun b!1873739 () Bool)

(declare-fun e!1195418 () Bool)

(assert (=> b!1873739 (= e!1195418 e!1195410)))

(declare-fun mapIsEmpty!8966 () Bool)

(declare-fun mapRes!8967 () Bool)

(assert (=> mapIsEmpty!8966 mapRes!8967))

(declare-fun b!1873740 () Bool)

(declare-fun e!1195412 () Bool)

(declare-fun e!1195421 () Bool)

(declare-fun lt!719936 () MutLongMap!1933)

(get-info :version)

(assert (=> b!1873740 (= e!1195412 (and e!1195421 ((_ is LongMap!1933) lt!719936)))))

(assert (=> b!1873740 (= lt!719936 (v!26168 (underlying!4060 (cache!2228 cacheDown!1126))))))

(declare-fun mapIsEmpty!8967 () Bool)

(assert (=> mapIsEmpty!8967 mapRes!8966))

(assert (=> b!1873741 (= e!1195424 (and e!1195412 tp!533257))))

(declare-fun b!1873742 () Bool)

(declare-fun e!1195413 () Bool)

(declare-fun tp!533249 () Bool)

(assert (=> b!1873742 (= e!1195413 (and tp!533249 mapRes!8967))))

(declare-fun condMapEmpty!8966 () Bool)

(declare-fun mapDefault!8967 () List!20881)

(assert (=> b!1873742 (= condMapEmpty!8966 (= (arr!2963 (_values!2214 (v!26169 (underlying!4061 (v!26170 (underlying!4062 (cache!2229 cacheUp!1007))))))) ((as const (Array (_ BitVec 32) List!20881)) mapDefault!8967)))))

(declare-fun b!1873743 () Bool)

(declare-fun e!1195407 () Bool)

(declare-fun e!1195422 () Bool)

(assert (=> b!1873743 (= e!1195407 e!1195422)))

(declare-fun b!1873744 () Bool)

(declare-fun e!1195414 () Bool)

(declare-fun tp!533264 () Bool)

(assert (=> b!1873744 (= e!1195414 tp!533264)))

(declare-fun b!1873745 () Bool)

(declare-fun tp!533252 () Bool)

(declare-fun tp!533260 () Bool)

(assert (=> b!1873745 (= e!1195414 (and tp!533252 tp!533260))))

(declare-fun e!1195419 () Bool)

(declare-fun tp!533246 () Bool)

(declare-fun tp!533263 () Bool)

(declare-fun array_inv!2130 (array!6665) Bool)

(declare-fun array_inv!2131 (array!6667) Bool)

(assert (=> b!1873746 (= e!1195419 (and tp!533255 tp!533246 tp!533263 (array_inv!2130 (_keys!2230 (v!26167 (underlying!4059 (v!26168 (underlying!4060 (cache!2228 cacheDown!1126))))))) (array_inv!2131 (_values!2213 (v!26167 (underlying!4059 (v!26168 (underlying!4060 (cache!2228 cacheDown!1126))))))) e!1195415))))

(declare-fun b!1873747 () Bool)

(declare-fun e!1195417 () Bool)

(declare-fun lt!719937 () MutLongMap!1934)

(assert (=> b!1873747 (= e!1195411 (and e!1195417 ((_ is LongMap!1934) lt!719937)))))

(assert (=> b!1873747 (= lt!719937 (v!26170 (underlying!4062 (cache!2229 cacheUp!1007))))))

(declare-fun b!1873748 () Bool)

(declare-fun tp_is_empty!8859 () Bool)

(assert (=> b!1873748 (= e!1195414 tp_is_empty!8859)))

(declare-fun b!1873749 () Bool)

(declare-fun tp!533261 () Bool)

(declare-fun tp!533245 () Bool)

(assert (=> b!1873749 (= e!1195414 (and tp!533261 tp!533245))))

(declare-fun tp!533258 () Bool)

(declare-fun tp!533256 () Bool)

(declare-fun array_inv!2132 (array!6669) Bool)

(assert (=> b!1873750 (= e!1195422 (and tp!533247 tp!533258 tp!533256 (array_inv!2130 (_keys!2231 (v!26169 (underlying!4061 (v!26170 (underlying!4062 (cache!2229 cacheUp!1007))))))) (array_inv!2132 (_values!2214 (v!26169 (underlying!4061 (v!26170 (underlying!4062 (cache!2229 cacheUp!1007))))))) e!1195413))))

(declare-fun b!1873751 () Bool)

(declare-fun e!1195408 () Bool)

(assert (=> b!1873751 (= e!1195421 e!1195408)))

(declare-fun b!1873752 () Bool)

(assert (=> b!1873752 (= e!1195408 e!1195419)))

(declare-fun b!1873753 () Bool)

(assert (=> b!1873753 (= e!1195417 e!1195407)))

(declare-fun mapNonEmpty!8967 () Bool)

(declare-fun tp!533259 () Bool)

(declare-fun tp!533251 () Bool)

(assert (=> mapNonEmpty!8967 (= mapRes!8967 (and tp!533259 tp!533251))))

(declare-fun mapValue!8966 () List!20881)

(declare-fun mapRest!8967 () (Array (_ BitVec 32) List!20881))

(declare-fun mapKey!8966 () (_ BitVec 32))

(assert (=> mapNonEmpty!8967 (= (arr!2963 (_values!2214 (v!26169 (underlying!4061 (v!26170 (underlying!4062 (cache!2229 cacheUp!1007))))))) (store mapRest!8967 mapKey!8966 mapValue!8966))))

(declare-fun b!1873754 () Bool)

(declare-fun e!1195425 () Bool)

(declare-fun tp!533250 () Bool)

(assert (=> b!1873754 (= e!1195425 (and tp_is_empty!8859 tp!533250))))

(declare-fun res!838349 () Bool)

(assert (=> start!187774 (=> (not res!838349) (not e!1195409))))

(declare-fun validRegex!2097 (Regex!5083) Bool)

(assert (=> start!187774 (= res!838349 (validRegex!2097 r!13571))))

(assert (=> start!187774 e!1195409))

(assert (=> start!187774 e!1195414))

(declare-fun inv!27612 (CacheUp!1146) Bool)

(assert (=> start!187774 (and (inv!27612 cacheUp!1007) e!1195418)))

(declare-fun inv!27613 (CacheDown!1142) Bool)

(assert (=> start!187774 (and (inv!27613 cacheDown!1126) e!1195423)))

(assert (=> start!187774 e!1195425))

(declare-fun mapNonEmpty!8966 () Bool)

(declare-fun tp!533253 () Bool)

(declare-fun tp!533254 () Bool)

(assert (=> mapNonEmpty!8966 (= mapRes!8966 (and tp!533253 tp!533254))))

(declare-fun mapKey!8967 () (_ BitVec 32))

(declare-fun mapRest!8966 () (Array (_ BitVec 32) List!20880))

(declare-fun mapValue!8967 () List!20880)

(assert (=> mapNonEmpty!8966 (= (arr!2962 (_values!2213 (v!26167 (underlying!4059 (v!26168 (underlying!4060 (cache!2228 cacheDown!1126))))))) (store mapRest!8966 mapKey!8967 mapValue!8967))))

(assert (= (and start!187774 res!838349) b!1873738))

(assert (= (and start!187774 ((_ is ElementMatch!5083) r!13571)) b!1873748))

(assert (= (and start!187774 ((_ is Concat!8902) r!13571)) b!1873745))

(assert (= (and start!187774 ((_ is Star!5083) r!13571)) b!1873744))

(assert (= (and start!187774 ((_ is Union!5083) r!13571)) b!1873749))

(assert (= (and b!1873742 condMapEmpty!8966) mapIsEmpty!8966))

(assert (= (and b!1873742 (not condMapEmpty!8966)) mapNonEmpty!8967))

(assert (= b!1873750 b!1873742))

(assert (= b!1873743 b!1873750))

(assert (= b!1873753 b!1873743))

(assert (= (and b!1873747 ((_ is LongMap!1934) (v!26170 (underlying!4062 (cache!2229 cacheUp!1007))))) b!1873753))

(assert (= b!1873736 b!1873747))

(assert (= (and b!1873739 ((_ is HashMap!1848) (cache!2229 cacheUp!1007))) b!1873736))

(assert (= start!187774 b!1873739))

(assert (= (and b!1873735 condMapEmpty!8967) mapIsEmpty!8967))

(assert (= (and b!1873735 (not condMapEmpty!8967)) mapNonEmpty!8966))

(assert (= b!1873746 b!1873735))

(assert (= b!1873752 b!1873746))

(assert (= b!1873751 b!1873752))

(assert (= (and b!1873740 ((_ is LongMap!1933) (v!26168 (underlying!4060 (cache!2228 cacheDown!1126))))) b!1873751))

(assert (= b!1873741 b!1873740))

(assert (= (and b!1873737 ((_ is HashMap!1847) (cache!2228 cacheDown!1126))) b!1873741))

(assert (= start!187774 b!1873737))

(assert (= (and start!187774 ((_ is Cons!20800) input!6045)) b!1873754))

(declare-fun m!2299007 () Bool)

(assert (=> mapNonEmpty!8967 m!2299007))

(declare-fun m!2299009 () Bool)

(assert (=> mapNonEmpty!8966 m!2299009))

(declare-fun m!2299011 () Bool)

(assert (=> b!1873746 m!2299011))

(declare-fun m!2299013 () Bool)

(assert (=> b!1873746 m!2299013))

(declare-fun m!2299015 () Bool)

(assert (=> start!187774 m!2299015))

(declare-fun m!2299017 () Bool)

(assert (=> start!187774 m!2299017))

(declare-fun m!2299019 () Bool)

(assert (=> start!187774 m!2299019))

(declare-fun m!2299021 () Bool)

(assert (=> b!1873738 m!2299021))

(declare-fun m!2299023 () Bool)

(assert (=> b!1873738 m!2299023))

(declare-fun m!2299025 () Bool)

(assert (=> b!1873738 m!2299025))

(assert (=> b!1873738 m!2299023))

(declare-fun m!2299027 () Bool)

(assert (=> b!1873738 m!2299027))

(declare-fun m!2299029 () Bool)

(assert (=> b!1873738 m!2299029))

(declare-fun m!2299031 () Bool)

(assert (=> b!1873738 m!2299031))

(declare-fun m!2299033 () Bool)

(assert (=> b!1873750 m!2299033))

(declare-fun m!2299035 () Bool)

(assert (=> b!1873750 m!2299035))

(check-sat b_and!144337 (not mapNonEmpty!8967) (not b_next!52751) (not b_next!52749) (not b!1873750) (not b!1873735) (not b_next!52755) (not b!1873749) b_and!144335 (not b!1873754) (not b!1873745) (not start!187774) b_and!144333 (not b!1873744) (not b!1873742) (not b_next!52753) (not mapNonEmpty!8966) (not b!1873746) (not b!1873738) tp_is_empty!8859 b_and!144331)
(check-sat b_and!144337 (not b_next!52751) (not b_next!52749) (not b_next!52753) (not b_next!52755) b_and!144331 b_and!144335 b_and!144333)
(get-model)

(declare-fun d!572678 () Bool)

(assert (=> d!572678 (= (array_inv!2130 (_keys!2231 (v!26169 (underlying!4061 (v!26170 (underlying!4062 (cache!2229 cacheUp!1007))))))) (bvsge (size!16505 (_keys!2231 (v!26169 (underlying!4061 (v!26170 (underlying!4062 (cache!2229 cacheUp!1007))))))) #b00000000000000000000000000000000))))

(assert (=> b!1873750 d!572678))

(declare-fun d!572680 () Bool)

(assert (=> d!572680 (= (array_inv!2132 (_values!2214 (v!26169 (underlying!4061 (v!26170 (underlying!4062 (cache!2229 cacheUp!1007))))))) (bvsge (size!16507 (_values!2214 (v!26169 (underlying!4061 (v!26170 (underlying!4062 (cache!2229 cacheUp!1007))))))) #b00000000000000000000000000000000))))

(assert (=> b!1873750 d!572680))

(declare-fun b!1873773 () Bool)

(declare-fun e!1195442 () Bool)

(declare-fun e!1195446 () Bool)

(assert (=> b!1873773 (= e!1195442 e!1195446)))

(declare-fun res!838364 () Bool)

(assert (=> b!1873773 (=> (not res!838364) (not e!1195446))))

(declare-fun call!116141 () Bool)

(assert (=> b!1873773 (= res!838364 call!116141)))

(declare-fun bm!116136 () Bool)

(declare-fun c!305396 () Bool)

(assert (=> bm!116136 (= call!116141 (validRegex!2097 (ite c!305396 (regTwo!10679 r!13571) (regOne!10678 r!13571))))))

(declare-fun b!1873774 () Bool)

(declare-fun e!1195445 () Bool)

(declare-fun e!1195443 () Bool)

(assert (=> b!1873774 (= e!1195445 e!1195443)))

(declare-fun res!838360 () Bool)

(declare-fun nullable!1574 (Regex!5083) Bool)

(assert (=> b!1873774 (= res!838360 (not (nullable!1574 (reg!5412 r!13571))))))

(assert (=> b!1873774 (=> (not res!838360) (not e!1195443))))

(declare-fun d!572682 () Bool)

(declare-fun res!838363 () Bool)

(declare-fun e!1195440 () Bool)

(assert (=> d!572682 (=> res!838363 e!1195440)))

(assert (=> d!572682 (= res!838363 ((_ is ElementMatch!5083) r!13571))))

(assert (=> d!572682 (= (validRegex!2097 r!13571) e!1195440)))

(declare-fun b!1873775 () Bool)

(declare-fun call!116143 () Bool)

(assert (=> b!1873775 (= e!1195446 call!116143)))

(declare-fun bm!116137 () Bool)

(declare-fun c!305397 () Bool)

(declare-fun call!116142 () Bool)

(assert (=> bm!116137 (= call!116142 (validRegex!2097 (ite c!305397 (reg!5412 r!13571) (ite c!305396 (regOne!10679 r!13571) (regTwo!10678 r!13571)))))))

(declare-fun b!1873776 () Bool)

(declare-fun res!838362 () Bool)

(assert (=> b!1873776 (=> res!838362 e!1195442)))

(assert (=> b!1873776 (= res!838362 (not ((_ is Concat!8902) r!13571)))))

(declare-fun e!1195444 () Bool)

(assert (=> b!1873776 (= e!1195444 e!1195442)))

(declare-fun b!1873777 () Bool)

(assert (=> b!1873777 (= e!1195440 e!1195445)))

(assert (=> b!1873777 (= c!305397 ((_ is Star!5083) r!13571))))

(declare-fun bm!116138 () Bool)

(assert (=> bm!116138 (= call!116143 call!116142)))

(declare-fun b!1873778 () Bool)

(assert (=> b!1873778 (= e!1195443 call!116142)))

(declare-fun b!1873779 () Bool)

(assert (=> b!1873779 (= e!1195445 e!1195444)))

(assert (=> b!1873779 (= c!305396 ((_ is Union!5083) r!13571))))

(declare-fun b!1873780 () Bool)

(declare-fun res!838361 () Bool)

(declare-fun e!1195441 () Bool)

(assert (=> b!1873780 (=> (not res!838361) (not e!1195441))))

(assert (=> b!1873780 (= res!838361 call!116143)))

(assert (=> b!1873780 (= e!1195444 e!1195441)))

(declare-fun b!1873781 () Bool)

(assert (=> b!1873781 (= e!1195441 call!116141)))

(assert (= (and d!572682 (not res!838363)) b!1873777))

(assert (= (and b!1873777 c!305397) b!1873774))

(assert (= (and b!1873777 (not c!305397)) b!1873779))

(assert (= (and b!1873774 res!838360) b!1873778))

(assert (= (and b!1873779 c!305396) b!1873780))

(assert (= (and b!1873779 (not c!305396)) b!1873776))

(assert (= (and b!1873780 res!838361) b!1873781))

(assert (= (and b!1873776 (not res!838362)) b!1873773))

(assert (= (and b!1873773 res!838364) b!1873775))

(assert (= (or b!1873780 b!1873775) bm!116138))

(assert (= (or b!1873781 b!1873773) bm!116136))

(assert (= (or b!1873778 bm!116138) bm!116137))

(declare-fun m!2299037 () Bool)

(assert (=> bm!116136 m!2299037))

(declare-fun m!2299039 () Bool)

(assert (=> b!1873774 m!2299039))

(declare-fun m!2299041 () Bool)

(assert (=> bm!116137 m!2299041))

(assert (=> start!187774 d!572682))

(declare-fun d!572684 () Bool)

(declare-fun res!838367 () Bool)

(declare-fun e!1195449 () Bool)

(assert (=> d!572684 (=> (not res!838367) (not e!1195449))))

(assert (=> d!572684 (= res!838367 ((_ is HashMap!1848) (cache!2229 cacheUp!1007)))))

(assert (=> d!572684 (= (inv!27612 cacheUp!1007) e!1195449)))

(declare-fun b!1873784 () Bool)

(declare-fun validCacheMapUp!178 (MutableMap!1848) Bool)

(assert (=> b!1873784 (= e!1195449 (validCacheMapUp!178 (cache!2229 cacheUp!1007)))))

(assert (= (and d!572684 res!838367) b!1873784))

(declare-fun m!2299043 () Bool)

(assert (=> b!1873784 m!2299043))

(assert (=> start!187774 d!572684))

(declare-fun d!572686 () Bool)

(declare-fun res!838370 () Bool)

(declare-fun e!1195452 () Bool)

(assert (=> d!572686 (=> (not res!838370) (not e!1195452))))

(assert (=> d!572686 (= res!838370 ((_ is HashMap!1847) (cache!2228 cacheDown!1126)))))

(assert (=> d!572686 (= (inv!27613 cacheDown!1126) e!1195452)))

(declare-fun b!1873787 () Bool)

(declare-fun validCacheMapDown!176 (MutableMap!1847) Bool)

(assert (=> b!1873787 (= e!1195452 (validCacheMapDown!176 (cache!2228 cacheDown!1126)))))

(assert (= (and d!572686 res!838370) b!1873787))

(declare-fun m!2299045 () Bool)

(assert (=> b!1873787 m!2299045))

(assert (=> start!187774 d!572686))

(declare-fun d!572688 () Bool)

(assert (=> d!572688 (= (matchR!2473 r!13571 input!6045) (matchZipper!88 lt!719934 input!6045))))

(declare-fun lt!719940 () Unit!35362)

(declare-fun choose!11764 ((InoxSet Context!1942) List!20883 Regex!5083 List!20882) Unit!35362)

(assert (=> d!572688 (= lt!719940 (choose!11764 lt!719934 (toList!1013 lt!719934) r!13571 input!6045))))

(assert (=> d!572688 (validRegex!2097 r!13571)))

(assert (=> d!572688 (= (theoremZipperRegexEquiv!13 lt!719934 (toList!1013 lt!719934) r!13571 input!6045) lt!719940)))

(declare-fun bs!412138 () Bool)

(assert (= bs!412138 d!572688))

(assert (=> bs!412138 m!2299027))

(assert (=> bs!412138 m!2299021))

(assert (=> bs!412138 m!2299023))

(declare-fun m!2299047 () Bool)

(assert (=> bs!412138 m!2299047))

(assert (=> bs!412138 m!2299015))

(assert (=> b!1873738 d!572688))

(declare-fun d!572690 () Bool)

(declare-fun e!1195455 () Bool)

(assert (=> d!572690 e!1195455))

(declare-fun res!838373 () Bool)

(assert (=> d!572690 (=> (not res!838373) (not e!1195455))))

(declare-fun lt!719943 () List!20883)

(declare-fun noDuplicate!271 (List!20883) Bool)

(assert (=> d!572690 (= res!838373 (noDuplicate!271 lt!719943))))

(declare-fun choose!11765 ((InoxSet Context!1942)) List!20883)

(assert (=> d!572690 (= lt!719943 (choose!11765 lt!719934))))

(assert (=> d!572690 (= (toList!1013 lt!719934) lt!719943)))

(declare-fun b!1873790 () Bool)

(declare-fun content!3105 (List!20883) (InoxSet Context!1942))

(assert (=> b!1873790 (= e!1195455 (= (content!3105 lt!719943) lt!719934))))

(assert (= (and d!572690 res!838373) b!1873790))

(declare-fun m!2299049 () Bool)

(assert (=> d!572690 m!2299049))

(declare-fun m!2299051 () Bool)

(assert (=> d!572690 m!2299051))

(declare-fun m!2299053 () Bool)

(assert (=> b!1873790 m!2299053))

(assert (=> b!1873738 d!572690))

(declare-fun bm!116141 () Bool)

(declare-fun call!116146 () Bool)

(declare-fun isEmpty!12959 (List!20882) Bool)

(assert (=> bm!116141 (= call!116146 (isEmpty!12959 input!6045))))

(declare-fun b!1873819 () Bool)

(declare-fun e!1195474 () Bool)

(declare-fun e!1195476 () Bool)

(assert (=> b!1873819 (= e!1195474 e!1195476)))

(declare-fun res!838393 () Bool)

(assert (=> b!1873819 (=> (not res!838393) (not e!1195476))))

(declare-fun lt!719946 () Bool)

(assert (=> b!1873819 (= res!838393 (not lt!719946))))

(declare-fun b!1873820 () Bool)

(declare-fun e!1195470 () Bool)

(assert (=> b!1873820 (= e!1195470 (nullable!1574 r!13571))))

(declare-fun b!1873821 () Bool)

(declare-fun e!1195475 () Bool)

(assert (=> b!1873821 (= e!1195475 (= lt!719946 call!116146))))

(declare-fun b!1873822 () Bool)

(declare-fun e!1195473 () Bool)

(assert (=> b!1873822 (= e!1195475 e!1195473)))

(declare-fun c!305406 () Bool)

(assert (=> b!1873822 (= c!305406 ((_ is EmptyLang!5083) r!13571))))

(declare-fun b!1873823 () Bool)

(declare-fun e!1195471 () Bool)

(declare-fun head!4349 (List!20882) C!10316)

(assert (=> b!1873823 (= e!1195471 (not (= (head!4349 input!6045) (c!305391 r!13571))))))

(declare-fun d!572692 () Bool)

(assert (=> d!572692 e!1195475))

(declare-fun c!305404 () Bool)

(assert (=> d!572692 (= c!305404 ((_ is EmptyExpr!5083) r!13571))))

(assert (=> d!572692 (= lt!719946 e!1195470)))

(declare-fun c!305405 () Bool)

(assert (=> d!572692 (= c!305405 (isEmpty!12959 input!6045))))

(assert (=> d!572692 (validRegex!2097 r!13571)))

(assert (=> d!572692 (= (matchR!2473 r!13571 input!6045) lt!719946)))

(declare-fun b!1873824 () Bool)

(declare-fun res!838397 () Bool)

(assert (=> b!1873824 (=> res!838397 e!1195474)))

(assert (=> b!1873824 (= res!838397 (not ((_ is ElementMatch!5083) r!13571)))))

(assert (=> b!1873824 (= e!1195473 e!1195474)))

(declare-fun b!1873825 () Bool)

(declare-fun res!838396 () Bool)

(assert (=> b!1873825 (=> res!838396 e!1195474)))

(declare-fun e!1195472 () Bool)

(assert (=> b!1873825 (= res!838396 e!1195472)))

(declare-fun res!838390 () Bool)

(assert (=> b!1873825 (=> (not res!838390) (not e!1195472))))

(assert (=> b!1873825 (= res!838390 lt!719946)))

(declare-fun b!1873826 () Bool)

(assert (=> b!1873826 (= e!1195476 e!1195471)))

(declare-fun res!838395 () Bool)

(assert (=> b!1873826 (=> res!838395 e!1195471)))

(assert (=> b!1873826 (= res!838395 call!116146)))

(declare-fun b!1873827 () Bool)

(declare-fun res!838391 () Bool)

(assert (=> b!1873827 (=> (not res!838391) (not e!1195472))))

(declare-fun tail!2880 (List!20882) List!20882)

(assert (=> b!1873827 (= res!838391 (isEmpty!12959 (tail!2880 input!6045)))))

(declare-fun b!1873828 () Bool)

(declare-fun derivativeStep!1333 (Regex!5083 C!10316) Regex!5083)

(assert (=> b!1873828 (= e!1195470 (matchR!2473 (derivativeStep!1333 r!13571 (head!4349 input!6045)) (tail!2880 input!6045)))))

(declare-fun b!1873829 () Bool)

(assert (=> b!1873829 (= e!1195473 (not lt!719946))))

(declare-fun b!1873830 () Bool)

(assert (=> b!1873830 (= e!1195472 (= (head!4349 input!6045) (c!305391 r!13571)))))

(declare-fun b!1873831 () Bool)

(declare-fun res!838394 () Bool)

(assert (=> b!1873831 (=> res!838394 e!1195471)))

(assert (=> b!1873831 (= res!838394 (not (isEmpty!12959 (tail!2880 input!6045))))))

(declare-fun b!1873832 () Bool)

(declare-fun res!838392 () Bool)

(assert (=> b!1873832 (=> (not res!838392) (not e!1195472))))

(assert (=> b!1873832 (= res!838392 (not call!116146))))

(assert (= (and d!572692 c!305405) b!1873820))

(assert (= (and d!572692 (not c!305405)) b!1873828))

(assert (= (and d!572692 c!305404) b!1873821))

(assert (= (and d!572692 (not c!305404)) b!1873822))

(assert (= (and b!1873822 c!305406) b!1873829))

(assert (= (and b!1873822 (not c!305406)) b!1873824))

(assert (= (and b!1873824 (not res!838397)) b!1873825))

(assert (= (and b!1873825 res!838390) b!1873832))

(assert (= (and b!1873832 res!838392) b!1873827))

(assert (= (and b!1873827 res!838391) b!1873830))

(assert (= (and b!1873825 (not res!838396)) b!1873819))

(assert (= (and b!1873819 res!838393) b!1873826))

(assert (= (and b!1873826 (not res!838395)) b!1873831))

(assert (= (and b!1873831 (not res!838394)) b!1873823))

(assert (= (or b!1873821 b!1873826 b!1873832) bm!116141))

(declare-fun m!2299055 () Bool)

(assert (=> b!1873828 m!2299055))

(assert (=> b!1873828 m!2299055))

(declare-fun m!2299057 () Bool)

(assert (=> b!1873828 m!2299057))

(declare-fun m!2299059 () Bool)

(assert (=> b!1873828 m!2299059))

(assert (=> b!1873828 m!2299057))

(assert (=> b!1873828 m!2299059))

(declare-fun m!2299061 () Bool)

(assert (=> b!1873828 m!2299061))

(assert (=> b!1873831 m!2299059))

(assert (=> b!1873831 m!2299059))

(declare-fun m!2299063 () Bool)

(assert (=> b!1873831 m!2299063))

(assert (=> b!1873827 m!2299059))

(assert (=> b!1873827 m!2299059))

(assert (=> b!1873827 m!2299063))

(declare-fun m!2299065 () Bool)

(assert (=> d!572692 m!2299065))

(assert (=> d!572692 m!2299015))

(assert (=> b!1873823 m!2299055))

(declare-fun m!2299067 () Bool)

(assert (=> b!1873820 m!2299067))

(assert (=> b!1873830 m!2299055))

(assert (=> bm!116141 m!2299065))

(assert (=> b!1873738 d!572692))

(declare-fun d!572694 () Bool)

(declare-fun e!1195479 () Bool)

(assert (=> d!572694 e!1195479))

(declare-fun res!838401 () Bool)

(assert (=> d!572694 (=> (not res!838401) (not e!1195479))))

(assert (=> d!572694 (= res!838401 (validRegex!2097 r!13571))))

(assert (=> d!572694 (= (focus!252 r!13571) (store ((as const (Array Context!1942 Bool)) false) (Context!1943 (Cons!20797 r!13571 Nil!20797)) true))))

(declare-fun b!1873835 () Bool)

(declare-fun unfocusZipper!54 (List!20883) Regex!5083)

(assert (=> b!1873835 (= e!1195479 (= (unfocusZipper!54 (toList!1013 (store ((as const (Array Context!1942 Bool)) false) (Context!1943 (Cons!20797 r!13571 Nil!20797)) true))) r!13571))))

(assert (= (and d!572694 res!838401) b!1873835))

(assert (=> d!572694 m!2299015))

(declare-fun m!2299069 () Bool)

(assert (=> d!572694 m!2299069))

(assert (=> b!1873835 m!2299069))

(assert (=> b!1873835 m!2299069))

(declare-fun m!2299071 () Bool)

(assert (=> b!1873835 m!2299071))

(assert (=> b!1873835 m!2299071))

(declare-fun m!2299073 () Bool)

(assert (=> b!1873835 m!2299073))

(assert (=> b!1873738 d!572694))

(declare-fun d!572696 () Bool)

(declare-fun c!305409 () Bool)

(assert (=> d!572696 (= c!305409 (isEmpty!12959 input!6045))))

(declare-fun e!1195482 () Bool)

(assert (=> d!572696 (= (matchZipper!88 lt!719934 input!6045) e!1195482)))

(declare-fun b!1873840 () Bool)

(declare-fun nullableZipper!38 ((InoxSet Context!1942)) Bool)

(assert (=> b!1873840 (= e!1195482 (nullableZipper!38 lt!719934))))

(declare-fun b!1873841 () Bool)

(declare-fun derivationStepZipper!74 ((InoxSet Context!1942) C!10316) (InoxSet Context!1942))

(assert (=> b!1873841 (= e!1195482 (matchZipper!88 (derivationStepZipper!74 lt!719934 (head!4349 input!6045)) (tail!2880 input!6045)))))

(assert (= (and d!572696 c!305409) b!1873840))

(assert (= (and d!572696 (not c!305409)) b!1873841))

(assert (=> d!572696 m!2299065))

(declare-fun m!2299075 () Bool)

(assert (=> b!1873840 m!2299075))

(assert (=> b!1873841 m!2299055))

(assert (=> b!1873841 m!2299055))

(declare-fun m!2299077 () Bool)

(assert (=> b!1873841 m!2299077))

(assert (=> b!1873841 m!2299059))

(assert (=> b!1873841 m!2299077))

(assert (=> b!1873841 m!2299059))

(declare-fun m!2299079 () Bool)

(assert (=> b!1873841 m!2299079))

(assert (=> b!1873738 d!572696))

(declare-fun d!572698 () Bool)

(declare-fun lt!719953 () tuple3!1938)

(assert (=> d!572698 (= (_1!11402 lt!719953) (matchZipper!88 lt!719934 input!6045))))

(declare-fun e!1195485 () tuple3!1938)

(assert (=> d!572698 (= lt!719953 e!1195485)))

(declare-fun c!305412 () Bool)

(assert (=> d!572698 (= c!305412 (isEmpty!12959 input!6045))))

(assert (=> d!572698 (= (matchZipperMem!4 lt!719934 input!6045 cacheUp!1007 cacheDown!1126) lt!719953)))

(declare-fun b!1873846 () Bool)

(assert (=> b!1873846 (= e!1195485 (tuple3!1939 (nullableZipper!38 lt!719934) cacheUp!1007 cacheDown!1126))))

(declare-fun b!1873847 () Bool)

(declare-fun lt!719954 () tuple3!1938)

(assert (=> b!1873847 (= e!1195485 (tuple3!1939 (_1!11402 lt!719954) (_2!11402 lt!719954) (_3!1433 lt!719954)))))

(declare-datatypes ((tuple3!1940 0))(
  ( (tuple3!1941 (_1!11403 (InoxSet Context!1942)) (_2!11403 CacheUp!1146) (_3!1434 CacheDown!1142)) )
))
(declare-fun lt!719955 () tuple3!1940)

(declare-fun derivationStepZipperMem!1 ((InoxSet Context!1942) C!10316 CacheUp!1146 CacheDown!1142) tuple3!1940)

(assert (=> b!1873847 (= lt!719955 (derivationStepZipperMem!1 lt!719934 (head!4349 input!6045) cacheUp!1007 cacheDown!1126))))

(assert (=> b!1873847 (= lt!719954 (matchZipperMem!4 (_1!11403 lt!719955) (tail!2880 input!6045) (_2!11403 lt!719955) (_3!1434 lt!719955)))))

(assert (= (and d!572698 c!305412) b!1873846))

(assert (= (and d!572698 (not c!305412)) b!1873847))

(assert (=> d!572698 m!2299021))

(assert (=> d!572698 m!2299065))

(assert (=> b!1873846 m!2299075))

(assert (=> b!1873847 m!2299055))

(assert (=> b!1873847 m!2299055))

(declare-fun m!2299081 () Bool)

(assert (=> b!1873847 m!2299081))

(assert (=> b!1873847 m!2299059))

(assert (=> b!1873847 m!2299059))

(declare-fun m!2299083 () Bool)

(assert (=> b!1873847 m!2299083))

(assert (=> b!1873738 d!572698))

(declare-fun d!572700 () Bool)

(assert (=> d!572700 (= (array_inv!2130 (_keys!2230 (v!26167 (underlying!4059 (v!26168 (underlying!4060 (cache!2228 cacheDown!1126))))))) (bvsge (size!16505 (_keys!2230 (v!26167 (underlying!4059 (v!26168 (underlying!4060 (cache!2228 cacheDown!1126))))))) #b00000000000000000000000000000000))))

(assert (=> b!1873746 d!572700))

(declare-fun d!572702 () Bool)

(assert (=> d!572702 (= (array_inv!2131 (_values!2213 (v!26167 (underlying!4059 (v!26168 (underlying!4060 (cache!2228 cacheDown!1126))))))) (bvsge (size!16506 (_values!2213 (v!26167 (underlying!4059 (v!26168 (underlying!4060 (cache!2228 cacheDown!1126))))))) #b00000000000000000000000000000000))))

(assert (=> b!1873746 d!572702))

(declare-fun b!1873856 () Bool)

(declare-fun e!1195493 () Bool)

(declare-fun tp!533273 () Bool)

(assert (=> b!1873856 (= e!1195493 tp!533273)))

(declare-fun setNonEmpty!11476 () Bool)

(declare-fun setElem!11476 () Context!1942)

(declare-fun setRes!11476 () Bool)

(declare-fun tp!533274 () Bool)

(declare-fun inv!27614 (Context!1942) Bool)

(assert (=> setNonEmpty!11476 (= setRes!11476 (and tp!533274 (inv!27614 setElem!11476) e!1195493))))

(declare-fun setRest!11476 () (InoxSet Context!1942))

(assert (=> setNonEmpty!11476 (= (_2!11401 (h!26200 mapDefault!8967)) ((_ map or) (store ((as const (Array Context!1942 Bool)) false) setElem!11476 true) setRest!11476))))

(declare-fun setIsEmpty!11476 () Bool)

(assert (=> setIsEmpty!11476 setRes!11476))

(declare-fun e!1195494 () Bool)

(assert (=> b!1873742 (= tp!533249 e!1195494)))

(declare-fun b!1873857 () Bool)

(declare-fun e!1195492 () Bool)

(declare-fun tp!533275 () Bool)

(assert (=> b!1873857 (= e!1195492 tp!533275)))

(declare-fun b!1873858 () Bool)

(declare-fun tp!533276 () Bool)

(assert (=> b!1873858 (= e!1195494 (and (inv!27614 (_1!11400 (_1!11401 (h!26200 mapDefault!8967)))) e!1195492 tp_is_empty!8859 setRes!11476 tp!533276))))

(declare-fun condSetEmpty!11476 () Bool)

(assert (=> b!1873858 (= condSetEmpty!11476 (= (_2!11401 (h!26200 mapDefault!8967)) ((as const (Array Context!1942 Bool)) false)))))

(assert (= b!1873858 b!1873857))

(assert (= (and b!1873858 condSetEmpty!11476) setIsEmpty!11476))

(assert (= (and b!1873858 (not condSetEmpty!11476)) setNonEmpty!11476))

(assert (= setNonEmpty!11476 b!1873856))

(assert (= (and b!1873742 ((_ is Cons!20799) mapDefault!8967)) b!1873858))

(declare-fun m!2299085 () Bool)

(assert (=> setNonEmpty!11476 m!2299085))

(declare-fun m!2299087 () Bool)

(assert (=> b!1873858 m!2299087))

(declare-fun e!1195503 () Bool)

(assert (=> b!1873735 (= tp!533248 e!1195503)))

(declare-fun setIsEmpty!11479 () Bool)

(declare-fun setRes!11479 () Bool)

(assert (=> setIsEmpty!11479 setRes!11479))

(declare-fun b!1873867 () Bool)

(declare-fun e!1195502 () Bool)

(declare-fun tp!533287 () Bool)

(assert (=> b!1873867 (= e!1195502 tp!533287)))

(declare-fun setElem!11479 () Context!1942)

(declare-fun setNonEmpty!11479 () Bool)

(declare-fun tp!533288 () Bool)

(declare-fun e!1195501 () Bool)

(assert (=> setNonEmpty!11479 (= setRes!11479 (and tp!533288 (inv!27614 setElem!11479) e!1195501))))

(declare-fun setRest!11479 () (InoxSet Context!1942))

(assert (=> setNonEmpty!11479 (= (_2!11399 (h!26199 mapDefault!8966)) ((_ map or) (store ((as const (Array Context!1942 Bool)) false) setElem!11479 true) setRest!11479))))

(declare-fun tp!533290 () Bool)

(declare-fun b!1873868 () Bool)

(declare-fun tp!533289 () Bool)

(assert (=> b!1873868 (= e!1195503 (and tp!533290 (inv!27614 (_2!11398 (_1!11399 (h!26199 mapDefault!8966)))) e!1195502 tp_is_empty!8859 setRes!11479 tp!533289))))

(declare-fun condSetEmpty!11479 () Bool)

(assert (=> b!1873868 (= condSetEmpty!11479 (= (_2!11399 (h!26199 mapDefault!8966)) ((as const (Array Context!1942 Bool)) false)))))

(declare-fun b!1873869 () Bool)

(declare-fun tp!533291 () Bool)

(assert (=> b!1873869 (= e!1195501 tp!533291)))

(assert (= b!1873868 b!1873867))

(assert (= (and b!1873868 condSetEmpty!11479) setIsEmpty!11479))

(assert (= (and b!1873868 (not condSetEmpty!11479)) setNonEmpty!11479))

(assert (= setNonEmpty!11479 b!1873869))

(assert (= (and b!1873735 ((_ is Cons!20798) mapDefault!8966)) b!1873868))

(declare-fun m!2299089 () Bool)

(assert (=> setNonEmpty!11479 m!2299089))

(declare-fun m!2299091 () Bool)

(assert (=> b!1873868 m!2299091))

(declare-fun b!1873884 () Bool)

(declare-fun e!1195516 () Bool)

(declare-fun tp!533314 () Bool)

(assert (=> b!1873884 (= e!1195516 tp!533314)))

(declare-fun condMapEmpty!8970 () Bool)

(declare-fun mapDefault!8970 () List!20881)

(assert (=> mapNonEmpty!8967 (= condMapEmpty!8970 (= mapRest!8967 ((as const (Array (_ BitVec 32) List!20881)) mapDefault!8970)))))

(declare-fun e!1195518 () Bool)

(declare-fun mapRes!8970 () Bool)

(assert (=> mapNonEmpty!8967 (= tp!533259 (and e!1195518 mapRes!8970))))

(declare-fun b!1873885 () Bool)

(declare-fun e!1195517 () Bool)

(declare-fun tp!533318 () Bool)

(assert (=> b!1873885 (= e!1195517 tp!533318)))

(declare-fun setElem!11484 () Context!1942)

(declare-fun tp!533311 () Bool)

(declare-fun setRes!11485 () Bool)

(declare-fun e!1195521 () Bool)

(declare-fun setNonEmpty!11484 () Bool)

(assert (=> setNonEmpty!11484 (= setRes!11485 (and tp!533311 (inv!27614 setElem!11484) e!1195521))))

(declare-fun setRest!11485 () (InoxSet Context!1942))

(assert (=> setNonEmpty!11484 (= (_2!11401 (h!26200 mapDefault!8970)) ((_ map or) (store ((as const (Array Context!1942 Bool)) false) setElem!11484 true) setRest!11485))))

(declare-fun mapIsEmpty!8970 () Bool)

(assert (=> mapIsEmpty!8970 mapRes!8970))

(declare-fun e!1195519 () Bool)

(declare-fun setRes!11484 () Bool)

(declare-fun mapValue!8970 () List!20881)

(declare-fun b!1873886 () Bool)

(declare-fun tp!533310 () Bool)

(assert (=> b!1873886 (= e!1195519 (and (inv!27614 (_1!11400 (_1!11401 (h!26200 mapValue!8970)))) e!1195516 tp_is_empty!8859 setRes!11484 tp!533310))))

(declare-fun condSetEmpty!11484 () Bool)

(assert (=> b!1873886 (= condSetEmpty!11484 (= (_2!11401 (h!26200 mapValue!8970)) ((as const (Array Context!1942 Bool)) false)))))

(declare-fun b!1873887 () Bool)

(declare-fun tp!533317 () Bool)

(assert (=> b!1873887 (= e!1195521 tp!533317)))

(declare-fun setElem!11485 () Context!1942)

(declare-fun tp!533313 () Bool)

(declare-fun setNonEmpty!11485 () Bool)

(assert (=> setNonEmpty!11485 (= setRes!11484 (and tp!533313 (inv!27614 setElem!11485) e!1195517))))

(declare-fun setRest!11484 () (InoxSet Context!1942))

(assert (=> setNonEmpty!11485 (= (_2!11401 (h!26200 mapValue!8970)) ((_ map or) (store ((as const (Array Context!1942 Bool)) false) setElem!11485 true) setRest!11484))))

(declare-fun setIsEmpty!11484 () Bool)

(assert (=> setIsEmpty!11484 setRes!11484))

(declare-fun b!1873888 () Bool)

(declare-fun e!1195520 () Bool)

(declare-fun tp!533316 () Bool)

(assert (=> b!1873888 (= e!1195520 tp!533316)))

(declare-fun setIsEmpty!11485 () Bool)

(assert (=> setIsEmpty!11485 setRes!11485))

(declare-fun mapNonEmpty!8970 () Bool)

(declare-fun tp!533315 () Bool)

(assert (=> mapNonEmpty!8970 (= mapRes!8970 (and tp!533315 e!1195519))))

(declare-fun mapRest!8970 () (Array (_ BitVec 32) List!20881))

(declare-fun mapKey!8970 () (_ BitVec 32))

(assert (=> mapNonEmpty!8970 (= mapRest!8967 (store mapRest!8970 mapKey!8970 mapValue!8970))))

(declare-fun tp!533312 () Bool)

(declare-fun b!1873889 () Bool)

(assert (=> b!1873889 (= e!1195518 (and (inv!27614 (_1!11400 (_1!11401 (h!26200 mapDefault!8970)))) e!1195520 tp_is_empty!8859 setRes!11485 tp!533312))))

(declare-fun condSetEmpty!11485 () Bool)

(assert (=> b!1873889 (= condSetEmpty!11485 (= (_2!11401 (h!26200 mapDefault!8970)) ((as const (Array Context!1942 Bool)) false)))))

(assert (= (and mapNonEmpty!8967 condMapEmpty!8970) mapIsEmpty!8970))

(assert (= (and mapNonEmpty!8967 (not condMapEmpty!8970)) mapNonEmpty!8970))

(assert (= b!1873886 b!1873884))

(assert (= (and b!1873886 condSetEmpty!11484) setIsEmpty!11484))

(assert (= (and b!1873886 (not condSetEmpty!11484)) setNonEmpty!11485))

(assert (= setNonEmpty!11485 b!1873885))

(assert (= (and mapNonEmpty!8970 ((_ is Cons!20799) mapValue!8970)) b!1873886))

(assert (= b!1873889 b!1873888))

(assert (= (and b!1873889 condSetEmpty!11485) setIsEmpty!11485))

(assert (= (and b!1873889 (not condSetEmpty!11485)) setNonEmpty!11484))

(assert (= setNonEmpty!11484 b!1873887))

(assert (= (and mapNonEmpty!8967 ((_ is Cons!20799) mapDefault!8970)) b!1873889))

(declare-fun m!2299093 () Bool)

(assert (=> b!1873886 m!2299093))

(declare-fun m!2299095 () Bool)

(assert (=> setNonEmpty!11484 m!2299095))

(declare-fun m!2299097 () Bool)

(assert (=> b!1873889 m!2299097))

(declare-fun m!2299099 () Bool)

(assert (=> setNonEmpty!11485 m!2299099))

(declare-fun m!2299101 () Bool)

(assert (=> mapNonEmpty!8970 m!2299101))

(declare-fun b!1873890 () Bool)

(declare-fun e!1195523 () Bool)

(declare-fun tp!533319 () Bool)

(assert (=> b!1873890 (= e!1195523 tp!533319)))

(declare-fun setElem!11486 () Context!1942)

(declare-fun tp!533320 () Bool)

(declare-fun setNonEmpty!11486 () Bool)

(declare-fun setRes!11486 () Bool)

(assert (=> setNonEmpty!11486 (= setRes!11486 (and tp!533320 (inv!27614 setElem!11486) e!1195523))))

(declare-fun setRest!11486 () (InoxSet Context!1942))

(assert (=> setNonEmpty!11486 (= (_2!11401 (h!26200 mapValue!8966)) ((_ map or) (store ((as const (Array Context!1942 Bool)) false) setElem!11486 true) setRest!11486))))

(declare-fun setIsEmpty!11486 () Bool)

(assert (=> setIsEmpty!11486 setRes!11486))

(declare-fun e!1195524 () Bool)

(assert (=> mapNonEmpty!8967 (= tp!533251 e!1195524)))

(declare-fun b!1873891 () Bool)

(declare-fun e!1195522 () Bool)

(declare-fun tp!533321 () Bool)

(assert (=> b!1873891 (= e!1195522 tp!533321)))

(declare-fun tp!533322 () Bool)

(declare-fun b!1873892 () Bool)

(assert (=> b!1873892 (= e!1195524 (and (inv!27614 (_1!11400 (_1!11401 (h!26200 mapValue!8966)))) e!1195522 tp_is_empty!8859 setRes!11486 tp!533322))))

(declare-fun condSetEmpty!11486 () Bool)

(assert (=> b!1873892 (= condSetEmpty!11486 (= (_2!11401 (h!26200 mapValue!8966)) ((as const (Array Context!1942 Bool)) false)))))

(assert (= b!1873892 b!1873891))

(assert (= (and b!1873892 condSetEmpty!11486) setIsEmpty!11486))

(assert (= (and b!1873892 (not condSetEmpty!11486)) setNonEmpty!11486))

(assert (= setNonEmpty!11486 b!1873890))

(assert (= (and mapNonEmpty!8967 ((_ is Cons!20799) mapValue!8966)) b!1873892))

(declare-fun m!2299103 () Bool)

(assert (=> setNonEmpty!11486 m!2299103))

(declare-fun m!2299105 () Bool)

(assert (=> b!1873892 m!2299105))

(declare-fun b!1873905 () Bool)

(declare-fun e!1195527 () Bool)

(declare-fun tp!533337 () Bool)

(assert (=> b!1873905 (= e!1195527 tp!533337)))

(declare-fun b!1873903 () Bool)

(assert (=> b!1873903 (= e!1195527 tp_is_empty!8859)))

(assert (=> b!1873749 (= tp!533261 e!1195527)))

(declare-fun b!1873906 () Bool)

(declare-fun tp!533333 () Bool)

(declare-fun tp!533335 () Bool)

(assert (=> b!1873906 (= e!1195527 (and tp!533333 tp!533335))))

(declare-fun b!1873904 () Bool)

(declare-fun tp!533334 () Bool)

(declare-fun tp!533336 () Bool)

(assert (=> b!1873904 (= e!1195527 (and tp!533334 tp!533336))))

(assert (= (and b!1873749 ((_ is ElementMatch!5083) (regOne!10679 r!13571))) b!1873903))

(assert (= (and b!1873749 ((_ is Concat!8902) (regOne!10679 r!13571))) b!1873904))

(assert (= (and b!1873749 ((_ is Star!5083) (regOne!10679 r!13571))) b!1873905))

(assert (= (and b!1873749 ((_ is Union!5083) (regOne!10679 r!13571))) b!1873906))

(declare-fun b!1873909 () Bool)

(declare-fun e!1195528 () Bool)

(declare-fun tp!533342 () Bool)

(assert (=> b!1873909 (= e!1195528 tp!533342)))

(declare-fun b!1873907 () Bool)

(assert (=> b!1873907 (= e!1195528 tp_is_empty!8859)))

(assert (=> b!1873749 (= tp!533245 e!1195528)))

(declare-fun b!1873910 () Bool)

(declare-fun tp!533338 () Bool)

(declare-fun tp!533340 () Bool)

(assert (=> b!1873910 (= e!1195528 (and tp!533338 tp!533340))))

(declare-fun b!1873908 () Bool)

(declare-fun tp!533339 () Bool)

(declare-fun tp!533341 () Bool)

(assert (=> b!1873908 (= e!1195528 (and tp!533339 tp!533341))))

(assert (= (and b!1873749 ((_ is ElementMatch!5083) (regTwo!10679 r!13571))) b!1873907))

(assert (= (and b!1873749 ((_ is Concat!8902) (regTwo!10679 r!13571))) b!1873908))

(assert (= (and b!1873749 ((_ is Star!5083) (regTwo!10679 r!13571))) b!1873909))

(assert (= (and b!1873749 ((_ is Union!5083) (regTwo!10679 r!13571))) b!1873910))

(declare-fun b!1873913 () Bool)

(declare-fun e!1195529 () Bool)

(declare-fun tp!533347 () Bool)

(assert (=> b!1873913 (= e!1195529 tp!533347)))

(declare-fun b!1873911 () Bool)

(assert (=> b!1873911 (= e!1195529 tp_is_empty!8859)))

(assert (=> b!1873744 (= tp!533264 e!1195529)))

(declare-fun b!1873914 () Bool)

(declare-fun tp!533343 () Bool)

(declare-fun tp!533345 () Bool)

(assert (=> b!1873914 (= e!1195529 (and tp!533343 tp!533345))))

(declare-fun b!1873912 () Bool)

(declare-fun tp!533344 () Bool)

(declare-fun tp!533346 () Bool)

(assert (=> b!1873912 (= e!1195529 (and tp!533344 tp!533346))))

(assert (= (and b!1873744 ((_ is ElementMatch!5083) (reg!5412 r!13571))) b!1873911))

(assert (= (and b!1873744 ((_ is Concat!8902) (reg!5412 r!13571))) b!1873912))

(assert (= (and b!1873744 ((_ is Star!5083) (reg!5412 r!13571))) b!1873913))

(assert (= (and b!1873744 ((_ is Union!5083) (reg!5412 r!13571))) b!1873914))

(declare-fun b!1873919 () Bool)

(declare-fun e!1195532 () Bool)

(declare-fun tp!533350 () Bool)

(assert (=> b!1873919 (= e!1195532 (and tp_is_empty!8859 tp!533350))))

(assert (=> b!1873754 (= tp!533250 e!1195532)))

(assert (= (and b!1873754 ((_ is Cons!20800) (t!173099 input!6045))) b!1873919))

(declare-fun b!1873920 () Bool)

(declare-fun e!1195534 () Bool)

(declare-fun tp!533351 () Bool)

(assert (=> b!1873920 (= e!1195534 tp!533351)))

(declare-fun tp!533352 () Bool)

(declare-fun setElem!11487 () Context!1942)

(declare-fun setRes!11487 () Bool)

(declare-fun setNonEmpty!11487 () Bool)

(assert (=> setNonEmpty!11487 (= setRes!11487 (and tp!533352 (inv!27614 setElem!11487) e!1195534))))

(declare-fun setRest!11487 () (InoxSet Context!1942))

(assert (=> setNonEmpty!11487 (= (_2!11401 (h!26200 (zeroValue!2192 (v!26169 (underlying!4061 (v!26170 (underlying!4062 (cache!2229 cacheUp!1007)))))))) ((_ map or) (store ((as const (Array Context!1942 Bool)) false) setElem!11487 true) setRest!11487))))

(declare-fun setIsEmpty!11487 () Bool)

(assert (=> setIsEmpty!11487 setRes!11487))

(declare-fun e!1195535 () Bool)

(assert (=> b!1873750 (= tp!533258 e!1195535)))

(declare-fun b!1873921 () Bool)

(declare-fun e!1195533 () Bool)

(declare-fun tp!533353 () Bool)

(assert (=> b!1873921 (= e!1195533 tp!533353)))

(declare-fun tp!533354 () Bool)

(declare-fun b!1873922 () Bool)

(assert (=> b!1873922 (= e!1195535 (and (inv!27614 (_1!11400 (_1!11401 (h!26200 (zeroValue!2192 (v!26169 (underlying!4061 (v!26170 (underlying!4062 (cache!2229 cacheUp!1007)))))))))) e!1195533 tp_is_empty!8859 setRes!11487 tp!533354))))

(declare-fun condSetEmpty!11487 () Bool)

(assert (=> b!1873922 (= condSetEmpty!11487 (= (_2!11401 (h!26200 (zeroValue!2192 (v!26169 (underlying!4061 (v!26170 (underlying!4062 (cache!2229 cacheUp!1007)))))))) ((as const (Array Context!1942 Bool)) false)))))

(assert (= b!1873922 b!1873921))

(assert (= (and b!1873922 condSetEmpty!11487) setIsEmpty!11487))

(assert (= (and b!1873922 (not condSetEmpty!11487)) setNonEmpty!11487))

(assert (= setNonEmpty!11487 b!1873920))

(assert (= (and b!1873750 ((_ is Cons!20799) (zeroValue!2192 (v!26169 (underlying!4061 (v!26170 (underlying!4062 (cache!2229 cacheUp!1007)))))))) b!1873922))

(declare-fun m!2299107 () Bool)

(assert (=> setNonEmpty!11487 m!2299107))

(declare-fun m!2299109 () Bool)

(assert (=> b!1873922 m!2299109))

(declare-fun b!1873923 () Bool)

(declare-fun e!1195537 () Bool)

(declare-fun tp!533355 () Bool)

(assert (=> b!1873923 (= e!1195537 tp!533355)))

(declare-fun setRes!11488 () Bool)

(declare-fun tp!533356 () Bool)

(declare-fun setElem!11488 () Context!1942)

(declare-fun setNonEmpty!11488 () Bool)

(assert (=> setNonEmpty!11488 (= setRes!11488 (and tp!533356 (inv!27614 setElem!11488) e!1195537))))

(declare-fun setRest!11488 () (InoxSet Context!1942))

(assert (=> setNonEmpty!11488 (= (_2!11401 (h!26200 (minValue!2192 (v!26169 (underlying!4061 (v!26170 (underlying!4062 (cache!2229 cacheUp!1007)))))))) ((_ map or) (store ((as const (Array Context!1942 Bool)) false) setElem!11488 true) setRest!11488))))

(declare-fun setIsEmpty!11488 () Bool)

(assert (=> setIsEmpty!11488 setRes!11488))

(declare-fun e!1195538 () Bool)

(assert (=> b!1873750 (= tp!533256 e!1195538)))

(declare-fun b!1873924 () Bool)

(declare-fun e!1195536 () Bool)

(declare-fun tp!533357 () Bool)

(assert (=> b!1873924 (= e!1195536 tp!533357)))

(declare-fun tp!533358 () Bool)

(declare-fun b!1873925 () Bool)

(assert (=> b!1873925 (= e!1195538 (and (inv!27614 (_1!11400 (_1!11401 (h!26200 (minValue!2192 (v!26169 (underlying!4061 (v!26170 (underlying!4062 (cache!2229 cacheUp!1007)))))))))) e!1195536 tp_is_empty!8859 setRes!11488 tp!533358))))

(declare-fun condSetEmpty!11488 () Bool)

(assert (=> b!1873925 (= condSetEmpty!11488 (= (_2!11401 (h!26200 (minValue!2192 (v!26169 (underlying!4061 (v!26170 (underlying!4062 (cache!2229 cacheUp!1007)))))))) ((as const (Array Context!1942 Bool)) false)))))

(assert (= b!1873925 b!1873924))

(assert (= (and b!1873925 condSetEmpty!11488) setIsEmpty!11488))

(assert (= (and b!1873925 (not condSetEmpty!11488)) setNonEmpty!11488))

(assert (= setNonEmpty!11488 b!1873923))

(assert (= (and b!1873750 ((_ is Cons!20799) (minValue!2192 (v!26169 (underlying!4061 (v!26170 (underlying!4062 (cache!2229 cacheUp!1007)))))))) b!1873925))

(declare-fun m!2299111 () Bool)

(assert (=> setNonEmpty!11488 m!2299111))

(declare-fun m!2299113 () Bool)

(assert (=> b!1873925 m!2299113))

(declare-fun b!1873928 () Bool)

(declare-fun e!1195539 () Bool)

(declare-fun tp!533363 () Bool)

(assert (=> b!1873928 (= e!1195539 tp!533363)))

(declare-fun b!1873926 () Bool)

(assert (=> b!1873926 (= e!1195539 tp_is_empty!8859)))

(assert (=> b!1873745 (= tp!533252 e!1195539)))

(declare-fun b!1873929 () Bool)

(declare-fun tp!533359 () Bool)

(declare-fun tp!533361 () Bool)

(assert (=> b!1873929 (= e!1195539 (and tp!533359 tp!533361))))

(declare-fun b!1873927 () Bool)

(declare-fun tp!533360 () Bool)

(declare-fun tp!533362 () Bool)

(assert (=> b!1873927 (= e!1195539 (and tp!533360 tp!533362))))

(assert (= (and b!1873745 ((_ is ElementMatch!5083) (regOne!10678 r!13571))) b!1873926))

(assert (= (and b!1873745 ((_ is Concat!8902) (regOne!10678 r!13571))) b!1873927))

(assert (= (and b!1873745 ((_ is Star!5083) (regOne!10678 r!13571))) b!1873928))

(assert (= (and b!1873745 ((_ is Union!5083) (regOne!10678 r!13571))) b!1873929))

(declare-fun b!1873932 () Bool)

(declare-fun e!1195540 () Bool)

(declare-fun tp!533368 () Bool)

(assert (=> b!1873932 (= e!1195540 tp!533368)))

(declare-fun b!1873930 () Bool)

(assert (=> b!1873930 (= e!1195540 tp_is_empty!8859)))

(assert (=> b!1873745 (= tp!533260 e!1195540)))

(declare-fun b!1873933 () Bool)

(declare-fun tp!533364 () Bool)

(declare-fun tp!533366 () Bool)

(assert (=> b!1873933 (= e!1195540 (and tp!533364 tp!533366))))

(declare-fun b!1873931 () Bool)

(declare-fun tp!533365 () Bool)

(declare-fun tp!533367 () Bool)

(assert (=> b!1873931 (= e!1195540 (and tp!533365 tp!533367))))

(assert (= (and b!1873745 ((_ is ElementMatch!5083) (regTwo!10678 r!13571))) b!1873930))

(assert (= (and b!1873745 ((_ is Concat!8902) (regTwo!10678 r!13571))) b!1873931))

(assert (= (and b!1873745 ((_ is Star!5083) (regTwo!10678 r!13571))) b!1873932))

(assert (= (and b!1873745 ((_ is Union!5083) (regTwo!10678 r!13571))) b!1873933))

(declare-fun mapIsEmpty!8973 () Bool)

(declare-fun mapRes!8973 () Bool)

(assert (=> mapIsEmpty!8973 mapRes!8973))

(declare-fun b!1873948 () Bool)

(declare-fun e!1195557 () Bool)

(declare-fun tp!533396 () Bool)

(assert (=> b!1873948 (= e!1195557 tp!533396)))

(declare-fun b!1873949 () Bool)

(declare-fun e!1195555 () Bool)

(declare-fun tp!533391 () Bool)

(assert (=> b!1873949 (= e!1195555 tp!533391)))

(declare-fun b!1873950 () Bool)

(declare-fun e!1195558 () Bool)

(declare-fun e!1195556 () Bool)

(declare-fun setRes!11494 () Bool)

(declare-fun tp!533393 () Bool)

(declare-fun tp!533394 () Bool)

(declare-fun mapDefault!8973 () List!20880)

(assert (=> b!1873950 (= e!1195558 (and tp!533393 (inv!27614 (_2!11398 (_1!11399 (h!26199 mapDefault!8973)))) e!1195556 tp_is_empty!8859 setRes!11494 tp!533394))))

(declare-fun condSetEmpty!11494 () Bool)

(assert (=> b!1873950 (= condSetEmpty!11494 (= (_2!11399 (h!26199 mapDefault!8973)) ((as const (Array Context!1942 Bool)) false)))))

(declare-fun mapNonEmpty!8973 () Bool)

(declare-fun tp!533392 () Bool)

(declare-fun e!1195553 () Bool)

(assert (=> mapNonEmpty!8973 (= mapRes!8973 (and tp!533392 e!1195553))))

(declare-fun mapKey!8973 () (_ BitVec 32))

(declare-fun mapValue!8973 () List!20880)

(declare-fun mapRest!8973 () (Array (_ BitVec 32) List!20880))

(assert (=> mapNonEmpty!8973 (= mapRest!8966 (store mapRest!8973 mapKey!8973 mapValue!8973))))

(declare-fun setIsEmpty!11493 () Bool)

(declare-fun setRes!11493 () Bool)

(assert (=> setIsEmpty!11493 setRes!11493))

(declare-fun b!1873951 () Bool)

(declare-fun tp!533395 () Bool)

(assert (=> b!1873951 (= e!1195556 tp!533395)))

(declare-fun tp!533398 () Bool)

(declare-fun b!1873952 () Bool)

(declare-fun tp!533399 () Bool)

(declare-fun e!1195554 () Bool)

(assert (=> b!1873952 (= e!1195553 (and tp!533399 (inv!27614 (_2!11398 (_1!11399 (h!26199 mapValue!8973)))) e!1195554 tp_is_empty!8859 setRes!11493 tp!533398))))

(declare-fun condSetEmpty!11493 () Bool)

(assert (=> b!1873952 (= condSetEmpty!11493 (= (_2!11399 (h!26199 mapValue!8973)) ((as const (Array Context!1942 Bool)) false)))))

(declare-fun condMapEmpty!8973 () Bool)

(assert (=> mapNonEmpty!8966 (= condMapEmpty!8973 (= mapRest!8966 ((as const (Array (_ BitVec 32) List!20880)) mapDefault!8973)))))

(assert (=> mapNonEmpty!8966 (= tp!533253 (and e!1195558 mapRes!8973))))

(declare-fun setIsEmpty!11494 () Bool)

(assert (=> setIsEmpty!11494 setRes!11494))

(declare-fun tp!533397 () Bool)

(declare-fun setElem!11494 () Context!1942)

(declare-fun setNonEmpty!11493 () Bool)

(assert (=> setNonEmpty!11493 (= setRes!11494 (and tp!533397 (inv!27614 setElem!11494) e!1195557))))

(declare-fun setRest!11493 () (InoxSet Context!1942))

(assert (=> setNonEmpty!11493 (= (_2!11399 (h!26199 mapDefault!8973)) ((_ map or) (store ((as const (Array Context!1942 Bool)) false) setElem!11494 true) setRest!11493))))

(declare-fun tp!533400 () Bool)

(declare-fun setElem!11493 () Context!1942)

(declare-fun setNonEmpty!11494 () Bool)

(assert (=> setNonEmpty!11494 (= setRes!11493 (and tp!533400 (inv!27614 setElem!11493) e!1195555))))

(declare-fun setRest!11494 () (InoxSet Context!1942))

(assert (=> setNonEmpty!11494 (= (_2!11399 (h!26199 mapValue!8973)) ((_ map or) (store ((as const (Array Context!1942 Bool)) false) setElem!11493 true) setRest!11494))))

(declare-fun b!1873953 () Bool)

(declare-fun tp!533401 () Bool)

(assert (=> b!1873953 (= e!1195554 tp!533401)))

(assert (= (and mapNonEmpty!8966 condMapEmpty!8973) mapIsEmpty!8973))

(assert (= (and mapNonEmpty!8966 (not condMapEmpty!8973)) mapNonEmpty!8973))

(assert (= b!1873952 b!1873953))

(assert (= (and b!1873952 condSetEmpty!11493) setIsEmpty!11493))

(assert (= (and b!1873952 (not condSetEmpty!11493)) setNonEmpty!11494))

(assert (= setNonEmpty!11494 b!1873949))

(assert (= (and mapNonEmpty!8973 ((_ is Cons!20798) mapValue!8973)) b!1873952))

(assert (= b!1873950 b!1873951))

(assert (= (and b!1873950 condSetEmpty!11494) setIsEmpty!11494))

(assert (= (and b!1873950 (not condSetEmpty!11494)) setNonEmpty!11493))

(assert (= setNonEmpty!11493 b!1873948))

(assert (= (and mapNonEmpty!8966 ((_ is Cons!20798) mapDefault!8973)) b!1873950))

(declare-fun m!2299115 () Bool)

(assert (=> mapNonEmpty!8973 m!2299115))

(declare-fun m!2299117 () Bool)

(assert (=> setNonEmpty!11493 m!2299117))

(declare-fun m!2299119 () Bool)

(assert (=> b!1873950 m!2299119))

(declare-fun m!2299121 () Bool)

(assert (=> setNonEmpty!11494 m!2299121))

(declare-fun m!2299123 () Bool)

(assert (=> b!1873952 m!2299123))

(declare-fun e!1195561 () Bool)

(assert (=> mapNonEmpty!8966 (= tp!533254 e!1195561)))

(declare-fun setIsEmpty!11495 () Bool)

(declare-fun setRes!11495 () Bool)

(assert (=> setIsEmpty!11495 setRes!11495))

(declare-fun b!1873954 () Bool)

(declare-fun e!1195560 () Bool)

(declare-fun tp!533402 () Bool)

(assert (=> b!1873954 (= e!1195560 tp!533402)))

(declare-fun setNonEmpty!11495 () Bool)

(declare-fun tp!533403 () Bool)

(declare-fun setElem!11495 () Context!1942)

(declare-fun e!1195559 () Bool)

(assert (=> setNonEmpty!11495 (= setRes!11495 (and tp!533403 (inv!27614 setElem!11495) e!1195559))))

(declare-fun setRest!11495 () (InoxSet Context!1942))

(assert (=> setNonEmpty!11495 (= (_2!11399 (h!26199 mapValue!8967)) ((_ map or) (store ((as const (Array Context!1942 Bool)) false) setElem!11495 true) setRest!11495))))

(declare-fun b!1873955 () Bool)

(declare-fun tp!533404 () Bool)

(declare-fun tp!533405 () Bool)

(assert (=> b!1873955 (= e!1195561 (and tp!533405 (inv!27614 (_2!11398 (_1!11399 (h!26199 mapValue!8967)))) e!1195560 tp_is_empty!8859 setRes!11495 tp!533404))))

(declare-fun condSetEmpty!11495 () Bool)

(assert (=> b!1873955 (= condSetEmpty!11495 (= (_2!11399 (h!26199 mapValue!8967)) ((as const (Array Context!1942 Bool)) false)))))

(declare-fun b!1873956 () Bool)

(declare-fun tp!533406 () Bool)

(assert (=> b!1873956 (= e!1195559 tp!533406)))

(assert (= b!1873955 b!1873954))

(assert (= (and b!1873955 condSetEmpty!11495) setIsEmpty!11495))

(assert (= (and b!1873955 (not condSetEmpty!11495)) setNonEmpty!11495))

(assert (= setNonEmpty!11495 b!1873956))

(assert (= (and mapNonEmpty!8966 ((_ is Cons!20798) mapValue!8967)) b!1873955))

(declare-fun m!2299125 () Bool)

(assert (=> setNonEmpty!11495 m!2299125))

(declare-fun m!2299127 () Bool)

(assert (=> b!1873955 m!2299127))

(declare-fun e!1195564 () Bool)

(assert (=> b!1873746 (= tp!533246 e!1195564)))

(declare-fun setIsEmpty!11496 () Bool)

(declare-fun setRes!11496 () Bool)

(assert (=> setIsEmpty!11496 setRes!11496))

(declare-fun b!1873957 () Bool)

(declare-fun e!1195563 () Bool)

(declare-fun tp!533407 () Bool)

(assert (=> b!1873957 (= e!1195563 tp!533407)))

(declare-fun setNonEmpty!11496 () Bool)

(declare-fun setElem!11496 () Context!1942)

(declare-fun tp!533408 () Bool)

(declare-fun e!1195562 () Bool)

(assert (=> setNonEmpty!11496 (= setRes!11496 (and tp!533408 (inv!27614 setElem!11496) e!1195562))))

(declare-fun setRest!11496 () (InoxSet Context!1942))

(assert (=> setNonEmpty!11496 (= (_2!11399 (h!26199 (zeroValue!2191 (v!26167 (underlying!4059 (v!26168 (underlying!4060 (cache!2228 cacheDown!1126)))))))) ((_ map or) (store ((as const (Array Context!1942 Bool)) false) setElem!11496 true) setRest!11496))))

(declare-fun tp!533410 () Bool)

(declare-fun b!1873958 () Bool)

(declare-fun tp!533409 () Bool)

(assert (=> b!1873958 (= e!1195564 (and tp!533410 (inv!27614 (_2!11398 (_1!11399 (h!26199 (zeroValue!2191 (v!26167 (underlying!4059 (v!26168 (underlying!4060 (cache!2228 cacheDown!1126)))))))))) e!1195563 tp_is_empty!8859 setRes!11496 tp!533409))))

(declare-fun condSetEmpty!11496 () Bool)

(assert (=> b!1873958 (= condSetEmpty!11496 (= (_2!11399 (h!26199 (zeroValue!2191 (v!26167 (underlying!4059 (v!26168 (underlying!4060 (cache!2228 cacheDown!1126)))))))) ((as const (Array Context!1942 Bool)) false)))))

(declare-fun b!1873959 () Bool)

(declare-fun tp!533411 () Bool)

(assert (=> b!1873959 (= e!1195562 tp!533411)))

(assert (= b!1873958 b!1873957))

(assert (= (and b!1873958 condSetEmpty!11496) setIsEmpty!11496))

(assert (= (and b!1873958 (not condSetEmpty!11496)) setNonEmpty!11496))

(assert (= setNonEmpty!11496 b!1873959))

(assert (= (and b!1873746 ((_ is Cons!20798) (zeroValue!2191 (v!26167 (underlying!4059 (v!26168 (underlying!4060 (cache!2228 cacheDown!1126)))))))) b!1873958))

(declare-fun m!2299129 () Bool)

(assert (=> setNonEmpty!11496 m!2299129))

(declare-fun m!2299131 () Bool)

(assert (=> b!1873958 m!2299131))

(declare-fun e!1195567 () Bool)

(assert (=> b!1873746 (= tp!533263 e!1195567)))

(declare-fun setIsEmpty!11497 () Bool)

(declare-fun setRes!11497 () Bool)

(assert (=> setIsEmpty!11497 setRes!11497))

(declare-fun b!1873960 () Bool)

(declare-fun e!1195566 () Bool)

(declare-fun tp!533412 () Bool)

(assert (=> b!1873960 (= e!1195566 tp!533412)))

(declare-fun e!1195565 () Bool)

(declare-fun tp!533413 () Bool)

(declare-fun setNonEmpty!11497 () Bool)

(declare-fun setElem!11497 () Context!1942)

(assert (=> setNonEmpty!11497 (= setRes!11497 (and tp!533413 (inv!27614 setElem!11497) e!1195565))))

(declare-fun setRest!11497 () (InoxSet Context!1942))

(assert (=> setNonEmpty!11497 (= (_2!11399 (h!26199 (minValue!2191 (v!26167 (underlying!4059 (v!26168 (underlying!4060 (cache!2228 cacheDown!1126)))))))) ((_ map or) (store ((as const (Array Context!1942 Bool)) false) setElem!11497 true) setRest!11497))))

(declare-fun tp!533414 () Bool)

(declare-fun b!1873961 () Bool)

(declare-fun tp!533415 () Bool)

(assert (=> b!1873961 (= e!1195567 (and tp!533415 (inv!27614 (_2!11398 (_1!11399 (h!26199 (minValue!2191 (v!26167 (underlying!4059 (v!26168 (underlying!4060 (cache!2228 cacheDown!1126)))))))))) e!1195566 tp_is_empty!8859 setRes!11497 tp!533414))))

(declare-fun condSetEmpty!11497 () Bool)

(assert (=> b!1873961 (= condSetEmpty!11497 (= (_2!11399 (h!26199 (minValue!2191 (v!26167 (underlying!4059 (v!26168 (underlying!4060 (cache!2228 cacheDown!1126)))))))) ((as const (Array Context!1942 Bool)) false)))))

(declare-fun b!1873962 () Bool)

(declare-fun tp!533416 () Bool)

(assert (=> b!1873962 (= e!1195565 tp!533416)))

(assert (= b!1873961 b!1873960))

(assert (= (and b!1873961 condSetEmpty!11497) setIsEmpty!11497))

(assert (= (and b!1873961 (not condSetEmpty!11497)) setNonEmpty!11497))

(assert (= setNonEmpty!11497 b!1873962))

(assert (= (and b!1873746 ((_ is Cons!20798) (minValue!2191 (v!26167 (underlying!4059 (v!26168 (underlying!4060 (cache!2228 cacheDown!1126)))))))) b!1873961))

(declare-fun m!2299133 () Bool)

(assert (=> setNonEmpty!11497 m!2299133))

(declare-fun m!2299135 () Bool)

(assert (=> b!1873961 m!2299135))

(check-sat (not b_next!52753) (not b!1873951) (not setNonEmpty!11488) (not d!572688) (not b!1873868) (not b!1873910) (not setNonEmpty!11486) (not mapNonEmpty!8973) (not setNonEmpty!11476) b_and!144337 (not b!1873954) (not b!1873928) (not b!1873823) (not b!1873949) (not setNonEmpty!11479) (not b!1873953) (not b!1873886) (not b!1873929) (not b!1873919) (not b!1873774) (not b!1873931) (not b!1873856) (not b!1873950) (not setNonEmpty!11484) (not b!1873952) (not b!1873846) (not b_next!52751) (not b!1873841) (not b!1873867) (not b!1873890) (not b!1873962) (not setNonEmpty!11494) (not b!1873906) (not d!572690) (not b!1873830) (not b!1873932) (not d!572694) (not b!1873922) (not b!1873869) (not b!1873904) (not b!1873887) (not d!572692) (not b!1873912) (not b!1873957) (not b!1873885) (not b!1873908) (not b_next!52749) (not b!1873784) (not setNonEmpty!11495) (not b!1873909) (not setNonEmpty!11497) (not setNonEmpty!11487) (not setNonEmpty!11496) (not mapNonEmpty!8970) (not b!1873959) (not b!1873933) (not b!1873927) (not b!1873840) (not b!1873961) (not b_next!52755) (not d!572698) (not b!1873820) (not bm!116136) tp_is_empty!8859 (not b!1873892) b_and!144331 (not b!1873891) (not b!1873835) (not b!1873960) (not b!1873831) b_and!144335 (not setNonEmpty!11485) (not b!1873828) (not b!1873889) (not d!572696) (not b!1873847) (not b!1873888) (not b!1873956) (not b!1873914) (not b!1873827) (not bm!116141) (not b!1873787) (not b!1873923) (not b!1873948) (not b!1873858) (not b!1873955) b_and!144333 (not b!1873905) (not b!1873790) (not b!1873925) (not b!1873920) (not bm!116137) (not b!1873857) (not b!1873921) (not b!1873884) (not b!1873924) (not b!1873958) (not b!1873913) (not setNonEmpty!11493))
(check-sat b_and!144337 (not b_next!52751) (not b_next!52749) (not b_next!52753) (not b_next!52755) b_and!144331 b_and!144335 b_and!144333)
