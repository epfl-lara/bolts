; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!188650 () Bool)

(assert start!188650)

(declare-fun b!1884316 () Bool)

(declare-fun b_free!52373 () Bool)

(declare-fun b_next!53077 () Bool)

(assert (=> b!1884316 (= b_free!52373 (not b_next!53077))))

(declare-fun tp!536380 () Bool)

(declare-fun b_and!145163 () Bool)

(assert (=> b!1884316 (= tp!536380 b_and!145163)))

(declare-fun b!1884313 () Bool)

(declare-fun b_free!52375 () Bool)

(declare-fun b_next!53079 () Bool)

(assert (=> b!1884313 (= b_free!52375 (not b_next!53079))))

(declare-fun tp!536389 () Bool)

(declare-fun b_and!145165 () Bool)

(assert (=> b!1884313 (= tp!536389 b_and!145165)))

(declare-fun b!1884321 () Bool)

(declare-fun b_free!52377 () Bool)

(declare-fun b_next!53081 () Bool)

(assert (=> b!1884321 (= b_free!52377 (not b_next!53081))))

(declare-fun tp!536378 () Bool)

(declare-fun b_and!145167 () Bool)

(assert (=> b!1884321 (= tp!536378 b_and!145167)))

(declare-fun b!1884319 () Bool)

(declare-fun b_free!52379 () Bool)

(declare-fun b_next!53083 () Bool)

(assert (=> b!1884319 (= b_free!52379 (not b_next!53083))))

(declare-fun tp!536381 () Bool)

(declare-fun b_and!145169 () Bool)

(assert (=> b!1884319 (= tp!536381 b_and!145169)))

(declare-fun b!1884302 () Bool)

(declare-fun e!1201972 () Bool)

(declare-fun e!1201980 () Bool)

(assert (=> b!1884302 (= e!1201972 e!1201980)))

(declare-fun res!841430 () Bool)

(declare-fun e!1201981 () Bool)

(assert (=> start!188650 (=> (not res!841430) (not e!1201981))))

(declare-datatypes ((C!10412 0))(
  ( (C!10413 (val!6094 Int)) )
))
(declare-datatypes ((Regex!5127 0))(
  ( (ElementMatch!5127 (c!307914 C!10412)) (Concat!8980 (regOne!10766 Regex!5127) (regTwo!10766 Regex!5127)) (EmptyExpr!5127) (Star!5127 (reg!5456 Regex!5127)) (EmptyLang!5127) (Union!5127 (regOne!10767 Regex!5127) (regTwo!10767 Regex!5127)) )
))
(declare-fun r!13659 () Regex!5127)

(declare-fun validRegex!2098 (Regex!5127) Bool)

(assert (=> start!188650 (= res!841430 (validRegex!2098 r!13659))))

(assert (=> start!188650 e!1201981))

(declare-fun e!1201975 () Bool)

(assert (=> start!188650 e!1201975))

(declare-datatypes ((List!21021 0))(
  ( (Nil!20939) (Cons!20939 (h!26340 Regex!5127) (t!175018 List!21021)) )
))
(declare-datatypes ((Context!1962 0))(
  ( (Context!1963 (exprs!1481 List!21021)) )
))
(declare-datatypes ((tuple3!1966 0))(
  ( (tuple3!1967 (_1!11437 Regex!5127) (_2!11437 Context!1962) (_3!1447 C!10412)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!19980 0))(
  ( (tuple2!19981 (_1!11438 tuple3!1966) (_2!11438 (InoxSet Context!1962))) )
))
(declare-datatypes ((List!21022 0))(
  ( (Nil!20940) (Cons!20940 (h!26341 tuple2!19980) (t!175019 List!21022)) )
))
(declare-datatypes ((array!6725 0))(
  ( (array!6726 (arr!2985 (Array (_ BitVec 32) (_ BitVec 64))) (size!16630 (_ BitVec 32))) )
))
(declare-datatypes ((array!6727 0))(
  ( (array!6728 (arr!2986 (Array (_ BitVec 32) List!21022)) (size!16631 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3898 0))(
  ( (LongMapFixedSize!3899 (defaultEntry!2314 Int) (mask!5777 (_ BitVec 32)) (extraKeys!2197 (_ BitVec 32)) (zeroValue!2207 List!21022) (minValue!2207 List!21022) (_size!3949 (_ BitVec 32)) (_keys!2246 array!6725) (_values!2229 array!6727) (_vacant!2010 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7621 0))(
  ( (Cell!7622 (v!26215 LongMapFixedSize!3898)) )
))
(declare-datatypes ((MutLongMap!1949 0))(
  ( (LongMap!1949 (underlying!4091 Cell!7621)) (MutLongMapExt!1948 (__x!13150 Int)) )
))
(declare-datatypes ((Cell!7623 0))(
  ( (Cell!7624 (v!26216 MutLongMap!1949)) )
))
(declare-datatypes ((Hashable!1863 0))(
  ( (HashableExt!1862 (__x!13151 Int)) )
))
(declare-datatypes ((MutableMap!1863 0))(
  ( (MutableMapExt!1862 (__x!13152 Int)) (HashMap!1863 (underlying!4092 Cell!7623) (hashF!3786 Hashable!1863) (_size!3950 (_ BitVec 32)) (defaultValue!2025 Int)) )
))
(declare-datatypes ((CacheDown!1158 0))(
  ( (CacheDown!1159 (cache!2244 MutableMap!1863)) )
))
(declare-fun cacheDown!1134 () CacheDown!1158)

(declare-fun inv!27892 (CacheDown!1158) Bool)

(assert (=> start!188650 (and (inv!27892 cacheDown!1134) e!1201972)))

(declare-datatypes ((List!21023 0))(
  ( (Nil!20941) (Cons!20941 (h!26342 C!10412) (t!175020 List!21023)) )
))
(declare-datatypes ((IArray!13931 0))(
  ( (IArray!13932 (innerList!7023 List!21023)) )
))
(declare-datatypes ((Conc!6963 0))(
  ( (Node!6963 (left!16836 Conc!6963) (right!17166 Conc!6963) (csize!14156 Int) (cheight!7174 Int)) (Leaf!10243 (xs!9853 IArray!13931) (csize!14157 Int)) (Empty!6963) )
))
(declare-datatypes ((BalanceConc!13742 0))(
  ( (BalanceConc!13743 (c!307915 Conc!6963)) )
))
(declare-fun input!6054 () BalanceConc!13742)

(declare-fun e!1201978 () Bool)

(declare-fun inv!27893 (BalanceConc!13742) Bool)

(assert (=> start!188650 (and (inv!27893 input!6054) e!1201978)))

(declare-datatypes ((tuple2!19982 0))(
  ( (tuple2!19983 (_1!11439 Context!1962) (_2!11439 C!10412)) )
))
(declare-datatypes ((tuple2!19984 0))(
  ( (tuple2!19985 (_1!11440 tuple2!19982) (_2!11440 (InoxSet Context!1962))) )
))
(declare-datatypes ((Hashable!1864 0))(
  ( (HashableExt!1863 (__x!13153 Int)) )
))
(declare-datatypes ((List!21024 0))(
  ( (Nil!20942) (Cons!20942 (h!26343 tuple2!19984) (t!175021 List!21024)) )
))
(declare-datatypes ((array!6729 0))(
  ( (array!6730 (arr!2987 (Array (_ BitVec 32) List!21024)) (size!16632 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3900 0))(
  ( (LongMapFixedSize!3901 (defaultEntry!2315 Int) (mask!5778 (_ BitVec 32)) (extraKeys!2198 (_ BitVec 32)) (zeroValue!2208 List!21024) (minValue!2208 List!21024) (_size!3951 (_ BitVec 32)) (_keys!2247 array!6725) (_values!2230 array!6729) (_vacant!2011 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7625 0))(
  ( (Cell!7626 (v!26217 LongMapFixedSize!3900)) )
))
(declare-datatypes ((MutLongMap!1950 0))(
  ( (LongMap!1950 (underlying!4093 Cell!7625)) (MutLongMapExt!1949 (__x!13154 Int)) )
))
(declare-datatypes ((Cell!7627 0))(
  ( (Cell!7628 (v!26218 MutLongMap!1950)) )
))
(declare-datatypes ((MutableMap!1864 0))(
  ( (MutableMapExt!1863 (__x!13155 Int)) (HashMap!1864 (underlying!4094 Cell!7627) (hashF!3787 Hashable!1864) (_size!3952 (_ BitVec 32)) (defaultValue!2026 Int)) )
))
(declare-datatypes ((CacheUp!1162 0))(
  ( (CacheUp!1163 (cache!2245 MutableMap!1864)) )
))
(declare-fun cacheUp!1015 () CacheUp!1162)

(declare-fun e!1201977 () Bool)

(declare-fun inv!27894 (CacheUp!1162) Bool)

(assert (=> start!188650 (and (inv!27894 cacheUp!1015) e!1201977)))

(declare-fun mapNonEmpty!9038 () Bool)

(declare-fun mapRes!9039 () Bool)

(declare-fun tp!536388 () Bool)

(declare-fun tp!536377 () Bool)

(assert (=> mapNonEmpty!9038 (= mapRes!9039 (and tp!536388 tp!536377))))

(declare-fun mapValue!9039 () List!21024)

(declare-fun mapKey!9039 () (_ BitVec 32))

(declare-fun mapRest!9039 () (Array (_ BitVec 32) List!21024))

(assert (=> mapNonEmpty!9038 (= (arr!2987 (_values!2230 (v!26217 (underlying!4093 (v!26218 (underlying!4094 (cache!2245 cacheUp!1015))))))) (store mapRest!9039 mapKey!9039 mapValue!9039))))

(declare-fun b!1884303 () Bool)

(declare-fun e!1201969 () Bool)

(declare-fun e!1201973 () Bool)

(assert (=> b!1884303 (= e!1201969 e!1201973)))

(declare-fun mapIsEmpty!9038 () Bool)

(assert (=> mapIsEmpty!9038 mapRes!9039))

(declare-fun b!1884304 () Bool)

(declare-fun e!1201974 () Bool)

(declare-fun e!1201983 () Bool)

(assert (=> b!1884304 (= e!1201974 e!1201983)))

(declare-fun mapIsEmpty!9039 () Bool)

(declare-fun mapRes!9038 () Bool)

(assert (=> mapIsEmpty!9039 mapRes!9038))

(declare-fun b!1884305 () Bool)

(declare-fun e!1201968 () Bool)

(assert (=> b!1884305 (= e!1201983 e!1201968)))

(declare-fun b!1884306 () Bool)

(declare-fun e!1201967 () Bool)

(assert (=> b!1884306 (= e!1201967 e!1201969)))

(declare-fun b!1884307 () Bool)

(declare-fun e!1201965 () Bool)

(declare-fun lt!723161 () MutLongMap!1949)

(get-info :version)

(assert (=> b!1884307 (= e!1201965 (and e!1201974 ((_ is LongMap!1949) lt!723161)))))

(assert (=> b!1884307 (= lt!723161 (v!26216 (underlying!4092 (cache!2244 cacheDown!1134))))))

(declare-fun b!1884308 () Bool)

(declare-fun e!1201979 () Bool)

(declare-fun tp!536382 () Bool)

(assert (=> b!1884308 (= e!1201979 (and tp!536382 mapRes!9039))))

(declare-fun condMapEmpty!9039 () Bool)

(declare-fun mapDefault!9039 () List!21024)

(assert (=> b!1884308 (= condMapEmpty!9039 (= (arr!2987 (_values!2230 (v!26217 (underlying!4093 (v!26218 (underlying!4094 (cache!2245 cacheUp!1015))))))) ((as const (Array (_ BitVec 32) List!21024)) mapDefault!9039)))))

(declare-fun b!1884309 () Bool)

(declare-fun e!1201971 () Bool)

(declare-fun lt!723167 () MutLongMap!1950)

(assert (=> b!1884309 (= e!1201971 (and e!1201967 ((_ is LongMap!1950) lt!723167)))))

(assert (=> b!1884309 (= lt!723167 (v!26218 (underlying!4094 (cache!2245 cacheUp!1015))))))

(declare-fun b!1884310 () Bool)

(assert (=> b!1884310 (= e!1201981 (not true))))

(declare-fun lt!723162 () (InoxSet Context!1962))

(declare-datatypes ((tuple3!1968 0))(
  ( (tuple3!1969 (_1!11441 Bool) (_2!11441 CacheUp!1162) (_3!1448 CacheDown!1158)) )
))
(declare-fun lt!723160 () tuple3!1968)

(declare-fun matchZipperSequenceMem!2 ((InoxSet Context!1962) BalanceConc!13742 Int CacheUp!1162 CacheDown!1158) tuple3!1968)

(assert (=> b!1884310 (= lt!723160 (matchZipperSequenceMem!2 lt!723162 input!6054 0 cacheUp!1015 cacheDown!1134))))

(declare-fun lt!723165 () List!21023)

(declare-fun matchR!2474 (Regex!5127 List!21023) Bool)

(declare-fun matchZipper!92 ((InoxSet Context!1962) List!21023) Bool)

(assert (=> b!1884310 (= (matchR!2474 r!13659 lt!723165) (matchZipper!92 lt!723162 lt!723165))))

(declare-datatypes ((Unit!35462 0))(
  ( (Unit!35463) )
))
(declare-fun lt!723163 () Unit!35462)

(declare-datatypes ((List!21025 0))(
  ( (Nil!20943) (Cons!20943 (h!26344 Context!1962) (t!175022 List!21025)) )
))
(declare-fun lt!723164 () List!21025)

(declare-fun theoremZipperRegexEquiv!14 ((InoxSet Context!1962) List!21025 Regex!5127 List!21023) Unit!35462)

(assert (=> b!1884310 (= lt!723163 (theoremZipperRegexEquiv!14 lt!723162 lt!723164 r!13659 lt!723165))))

(declare-fun list!8559 (BalanceConc!13742) List!21023)

(assert (=> b!1884310 (= lt!723165 (list!8559 input!6054))))

(declare-fun toList!1014 ((InoxSet Context!1962)) List!21025)

(assert (=> b!1884310 (= lt!723164 (toList!1014 lt!723162))))

(declare-fun dropList!755 (BalanceConc!13742 Int) List!21023)

(declare-fun matchZipperSequence!18 ((InoxSet Context!1962) BalanceConc!13742 Int) Bool)

(assert (=> b!1884310 (= (matchZipper!92 lt!723162 (dropList!755 input!6054 0)) (matchZipperSequence!18 lt!723162 input!6054 0))))

(declare-fun lt!723166 () Unit!35462)

(declare-fun lemmaMatchZipperSequenceEquivalent!17 ((InoxSet Context!1962) BalanceConc!13742 Int) Unit!35462)

(assert (=> b!1884310 (= lt!723166 (lemmaMatchZipperSequenceEquivalent!17 lt!723162 input!6054 0))))

(declare-fun focus!253 (Regex!5127) (InoxSet Context!1962))

(assert (=> b!1884310 (= lt!723162 (focus!253 r!13659))))

(declare-fun b!1884311 () Bool)

(declare-fun tp!536383 () Bool)

(declare-fun tp!536387 () Bool)

(assert (=> b!1884311 (= e!1201975 (and tp!536383 tp!536387))))

(declare-fun b!1884312 () Bool)

(declare-fun tp!536393 () Bool)

(assert (=> b!1884312 (= e!1201975 tp!536393)))

(declare-fun mapNonEmpty!9039 () Bool)

(declare-fun tp!536395 () Bool)

(declare-fun tp!536392 () Bool)

(assert (=> mapNonEmpty!9039 (= mapRes!9038 (and tp!536395 tp!536392))))

(declare-fun mapRest!9038 () (Array (_ BitVec 32) List!21022))

(declare-fun mapValue!9038 () List!21022)

(declare-fun mapKey!9038 () (_ BitVec 32))

(assert (=> mapNonEmpty!9039 (= (arr!2986 (_values!2229 (v!26215 (underlying!4091 (v!26216 (underlying!4092 (cache!2244 cacheDown!1134))))))) (store mapRest!9038 mapKey!9038 mapValue!9038))))

(declare-fun tp!536379 () Bool)

(declare-fun tp!536376 () Bool)

(declare-fun array_inv!2144 (array!6725) Bool)

(declare-fun array_inv!2145 (array!6729) Bool)

(assert (=> b!1884313 (= e!1201973 (and tp!536389 tp!536379 tp!536376 (array_inv!2144 (_keys!2247 (v!26217 (underlying!4093 (v!26218 (underlying!4094 (cache!2245 cacheUp!1015))))))) (array_inv!2145 (_values!2230 (v!26217 (underlying!4093 (v!26218 (underlying!4094 (cache!2245 cacheUp!1015))))))) e!1201979))))

(declare-fun b!1884314 () Bool)

(declare-fun tp!536384 () Bool)

(declare-fun inv!27895 (Conc!6963) Bool)

(assert (=> b!1884314 (= e!1201978 (and (inv!27895 (c!307915 input!6054)) tp!536384))))

(declare-fun b!1884315 () Bool)

(declare-fun e!1201970 () Bool)

(assert (=> b!1884315 (= e!1201977 e!1201970)))

(assert (=> b!1884316 (= e!1201980 (and e!1201965 tp!536380))))

(declare-fun b!1884317 () Bool)

(declare-fun e!1201976 () Bool)

(declare-fun tp!536390 () Bool)

(assert (=> b!1884317 (= e!1201976 (and tp!536390 mapRes!9038))))

(declare-fun condMapEmpty!9038 () Bool)

(declare-fun mapDefault!9038 () List!21022)

(assert (=> b!1884317 (= condMapEmpty!9038 (= (arr!2986 (_values!2229 (v!26215 (underlying!4091 (v!26216 (underlying!4092 (cache!2244 cacheDown!1134))))))) ((as const (Array (_ BitVec 32) List!21022)) mapDefault!9038)))))

(declare-fun b!1884318 () Bool)

(declare-fun tp_is_empty!8903 () Bool)

(assert (=> b!1884318 (= e!1201975 tp_is_empty!8903)))

(assert (=> b!1884319 (= e!1201970 (and e!1201971 tp!536381))))

(declare-fun b!1884320 () Bool)

(declare-fun tp!536394 () Bool)

(declare-fun tp!536391 () Bool)

(assert (=> b!1884320 (= e!1201975 (and tp!536394 tp!536391))))

(declare-fun tp!536386 () Bool)

(declare-fun tp!536385 () Bool)

(declare-fun array_inv!2146 (array!6727) Bool)

(assert (=> b!1884321 (= e!1201968 (and tp!536378 tp!536386 tp!536385 (array_inv!2144 (_keys!2246 (v!26215 (underlying!4091 (v!26216 (underlying!4092 (cache!2244 cacheDown!1134))))))) (array_inv!2146 (_values!2229 (v!26215 (underlying!4091 (v!26216 (underlying!4092 (cache!2244 cacheDown!1134))))))) e!1201976))))

(assert (= (and start!188650 res!841430) b!1884310))

(assert (= (and start!188650 ((_ is ElementMatch!5127) r!13659)) b!1884318))

(assert (= (and start!188650 ((_ is Concat!8980) r!13659)) b!1884311))

(assert (= (and start!188650 ((_ is Star!5127) r!13659)) b!1884312))

(assert (= (and start!188650 ((_ is Union!5127) r!13659)) b!1884320))

(assert (= (and b!1884317 condMapEmpty!9038) mapIsEmpty!9039))

(assert (= (and b!1884317 (not condMapEmpty!9038)) mapNonEmpty!9039))

(assert (= b!1884321 b!1884317))

(assert (= b!1884305 b!1884321))

(assert (= b!1884304 b!1884305))

(assert (= (and b!1884307 ((_ is LongMap!1949) (v!26216 (underlying!4092 (cache!2244 cacheDown!1134))))) b!1884304))

(assert (= b!1884316 b!1884307))

(assert (= (and b!1884302 ((_ is HashMap!1863) (cache!2244 cacheDown!1134))) b!1884316))

(assert (= start!188650 b!1884302))

(assert (= start!188650 b!1884314))

(assert (= (and b!1884308 condMapEmpty!9039) mapIsEmpty!9038))

(assert (= (and b!1884308 (not condMapEmpty!9039)) mapNonEmpty!9038))

(assert (= b!1884313 b!1884308))

(assert (= b!1884303 b!1884313))

(assert (= b!1884306 b!1884303))

(assert (= (and b!1884309 ((_ is LongMap!1950) (v!26218 (underlying!4094 (cache!2245 cacheUp!1015))))) b!1884306))

(assert (= b!1884319 b!1884309))

(assert (= (and b!1884315 ((_ is HashMap!1864) (cache!2245 cacheUp!1015))) b!1884319))

(assert (= start!188650 b!1884315))

(declare-fun m!2317623 () Bool)

(assert (=> b!1884321 m!2317623))

(declare-fun m!2317625 () Bool)

(assert (=> b!1884321 m!2317625))

(declare-fun m!2317627 () Bool)

(assert (=> mapNonEmpty!9038 m!2317627))

(declare-fun m!2317629 () Bool)

(assert (=> b!1884314 m!2317629))

(declare-fun m!2317631 () Bool)

(assert (=> start!188650 m!2317631))

(declare-fun m!2317633 () Bool)

(assert (=> start!188650 m!2317633))

(declare-fun m!2317635 () Bool)

(assert (=> start!188650 m!2317635))

(declare-fun m!2317637 () Bool)

(assert (=> start!188650 m!2317637))

(declare-fun m!2317639 () Bool)

(assert (=> b!1884310 m!2317639))

(declare-fun m!2317641 () Bool)

(assert (=> b!1884310 m!2317641))

(declare-fun m!2317643 () Bool)

(assert (=> b!1884310 m!2317643))

(declare-fun m!2317645 () Bool)

(assert (=> b!1884310 m!2317645))

(declare-fun m!2317647 () Bool)

(assert (=> b!1884310 m!2317647))

(declare-fun m!2317649 () Bool)

(assert (=> b!1884310 m!2317649))

(declare-fun m!2317651 () Bool)

(assert (=> b!1884310 m!2317651))

(declare-fun m!2317653 () Bool)

(assert (=> b!1884310 m!2317653))

(declare-fun m!2317655 () Bool)

(assert (=> b!1884310 m!2317655))

(assert (=> b!1884310 m!2317645))

(declare-fun m!2317657 () Bool)

(assert (=> b!1884310 m!2317657))

(declare-fun m!2317659 () Bool)

(assert (=> b!1884310 m!2317659))

(declare-fun m!2317661 () Bool)

(assert (=> mapNonEmpty!9039 m!2317661))

(declare-fun m!2317663 () Bool)

(assert (=> b!1884313 m!2317663))

(declare-fun m!2317665 () Bool)

(assert (=> b!1884313 m!2317665))

(check-sat (not b!1884320) (not b!1884313) (not b_next!53077) (not b_next!53081) (not b!1884321) (not b!1884317) b_and!145167 (not b!1884312) b_and!145165 (not b_next!53083) (not start!188650) b_and!145163 (not mapNonEmpty!9038) (not mapNonEmpty!9039) (not b!1884308) tp_is_empty!8903 (not b!1884314) b_and!145169 (not b!1884310) (not b!1884311) (not b_next!53079))
(check-sat (not b_next!53077) (not b_next!53081) b_and!145163 b_and!145169 (not b_next!53079) b_and!145167 b_and!145165 (not b_next!53083))
