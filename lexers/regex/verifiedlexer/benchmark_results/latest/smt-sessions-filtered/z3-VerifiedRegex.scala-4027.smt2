; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217786 () Bool)

(assert start!217786)

(declare-fun b!2234301 () Bool)

(declare-fun b_free!64793 () Bool)

(declare-fun b_next!65497 () Bool)

(assert (=> b!2234301 (= b_free!64793 (not b_next!65497))))

(declare-fun tp!701576 () Bool)

(declare-fun b_and!174781 () Bool)

(assert (=> b!2234301 (= tp!701576 b_and!174781)))

(declare-fun b!2234311 () Bool)

(declare-fun b_free!64795 () Bool)

(declare-fun b_next!65499 () Bool)

(assert (=> b!2234311 (= b_free!64795 (not b_next!65499))))

(declare-fun tp!701581 () Bool)

(declare-fun b_and!174783 () Bool)

(assert (=> b!2234311 (= tp!701581 b_and!174783)))

(declare-fun b!2234296 () Bool)

(declare-fun e!1427955 () Bool)

(declare-fun tp!701571 () Bool)

(declare-fun tp!701570 () Bool)

(assert (=> b!2234296 (= e!1427955 (and tp!701571 tp!701570))))

(declare-fun mapNonEmpty!14498 () Bool)

(declare-fun mapRes!14498 () Bool)

(declare-fun tp!701580 () Bool)

(declare-fun tp!701575 () Bool)

(assert (=> mapNonEmpty!14498 (= mapRes!14498 (and tp!701580 tp!701575))))

(declare-fun mapKey!14498 () (_ BitVec 32))

(declare-datatypes ((C!13036 0))(
  ( (C!13037 (val!7566 Int)) )
))
(declare-datatypes ((Regex!6445 0))(
  ( (ElementMatch!6445 (c!356194 C!13036)) (Concat!10783 (regOne!13402 Regex!6445) (regTwo!13402 Regex!6445)) (EmptyExpr!6445) (Star!6445 (reg!6774 Regex!6445)) (EmptyLang!6445) (Union!6445 (regOne!13403 Regex!6445) (regTwo!13403 Regex!6445)) )
))
(declare-datatypes ((List!26364 0))(
  ( (Nil!26270) (Cons!26270 (h!31671 Regex!6445) (t!199784 List!26364)) )
))
(declare-datatypes ((Context!3986 0))(
  ( (Context!3987 (exprs!2493 List!26364)) )
))
(declare-datatypes ((tuple3!3962 0))(
  ( (tuple3!3963 (_1!15274 Regex!6445) (_2!15274 Context!3986) (_3!2451 C!13036)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25646 0))(
  ( (tuple2!25647 (_1!15275 tuple3!3962) (_2!15275 (InoxSet Context!3986))) )
))
(declare-datatypes ((List!26365 0))(
  ( (Nil!26271) (Cons!26271 (h!31672 tuple2!25646) (t!199785 List!26365)) )
))
(declare-fun mapRest!14498 () (Array (_ BitVec 32) List!26365))

(declare-fun mapValue!14498 () List!26365)

(declare-datatypes ((array!10698 0))(
  ( (array!10699 (arr!4753 (Array (_ BitVec 32) (_ BitVec 64))) (size!20534 (_ BitVec 32))) )
))
(declare-datatypes ((array!10700 0))(
  ( (array!10701 (arr!4754 (Array (_ BitVec 32) List!26365)) (size!20535 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6166 0))(
  ( (LongMapFixedSize!6167 (defaultEntry!3448 Int) (mask!7659 (_ BitVec 32)) (extraKeys!3331 (_ BitVec 32)) (zeroValue!3341 List!26365) (minValue!3341 List!26365) (_size!6213 (_ BitVec 32)) (_keys!3380 array!10698) (_values!3363 array!10700) (_vacant!3144 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12149 0))(
  ( (Cell!12150 (v!29873 LongMapFixedSize!6166)) )
))
(declare-datatypes ((MutLongMap!3083 0))(
  ( (LongMap!3083 (underlying!6367 Cell!12149)) (MutLongMapExt!3082 (__x!17475 Int)) )
))
(declare-datatypes ((Cell!12151 0))(
  ( (Cell!12152 (v!29874 MutLongMap!3083)) )
))
(declare-datatypes ((Hashable!2993 0))(
  ( (HashableExt!2992 (__x!17476 Int)) )
))
(declare-datatypes ((MutableMap!2993 0))(
  ( (MutableMapExt!2992 (__x!17477 Int)) (HashMap!2993 (underlying!6368 Cell!12151) (hashF!4916 Hashable!2993) (_size!6214 (_ BitVec 32)) (defaultValue!3155 Int)) )
))
(declare-datatypes ((CacheDown!2032 0))(
  ( (CacheDown!2033 (cache!3374 MutableMap!2993)) )
))
(declare-fun thiss!28822 () CacheDown!2032)

(assert (=> mapNonEmpty!14498 (= (arr!4754 (_values!3363 (v!29873 (underlying!6367 (v!29874 (underlying!6368 (cache!3374 thiss!28822))))))) (store mapRest!14498 mapKey!14498 mapValue!14498))))

(declare-fun setIsEmpty!20260 () Bool)

(declare-fun setRes!20260 () Bool)

(assert (=> setIsEmpty!20260 setRes!20260))

(declare-fun b!2234297 () Bool)

(declare-fun tp!701569 () Bool)

(assert (=> b!2234297 (= e!1427955 tp!701569)))

(declare-fun b!2234298 () Bool)

(declare-fun res!956297 () Bool)

(declare-fun e!1427952 () Bool)

(assert (=> b!2234298 (=> (not res!956297) (not e!1427952))))

(declare-fun a!1010 () C!13036)

(declare-fun res!14291 () (InoxSet Context!3986))

(declare-fun ctx!56 () Context!3986)

(declare-fun r!4773 () Regex!6445)

(declare-fun derivationStepZipperDown!58 (Regex!6445 Context!3986 C!13036) (InoxSet Context!3986))

(assert (=> b!2234298 (= res!956297 (= res!14291 (derivationStepZipperDown!58 r!4773 ctx!56 a!1010)))))

(declare-fun b!2234299 () Bool)

(declare-fun e!1427959 () Bool)

(declare-fun tp!701568 () Bool)

(assert (=> b!2234299 (= e!1427959 tp!701568)))

(declare-fun b!2234300 () Bool)

(declare-datatypes ((tuple2!25648 0))(
  ( (tuple2!25649 (_1!15276 Bool) (_2!15276 MutableMap!2993)) )
))
(declare-fun lt!831175 () tuple2!25648)

(get-info :version)

(assert (=> b!2234300 (= e!1427952 (not ((_ is HashMap!2993) (_2!15276 lt!831175))))))

(declare-fun lambda!84399 () Int)

(declare-fun forall!5380 (List!26365 Int) Bool)

(declare-datatypes ((ListMap!815 0))(
  ( (ListMap!816 (toList!1338 List!26365)) )
))
(declare-fun map!5382 (MutableMap!2993) ListMap!815)

(assert (=> b!2234300 (forall!5380 (toList!1338 (map!5382 (_2!15276 lt!831175))) lambda!84399)))

(declare-fun lt!831176 () tuple3!3962)

(declare-fun update!144 (MutableMap!2993 tuple3!3962 (InoxSet Context!3986)) tuple2!25648)

(assert (=> b!2234300 (= lt!831175 (update!144 (cache!3374 thiss!28822) lt!831176 res!14291))))

(declare-datatypes ((Unit!39204 0))(
  ( (Unit!39205) )
))
(declare-fun lt!831174 () Unit!39204)

(declare-fun lemmaUpdatePreservesForallPairs!22 (MutableMap!2993 tuple3!3962 (InoxSet Context!3986) Int) Unit!39204)

(assert (=> b!2234300 (= lt!831174 (lemmaUpdatePreservesForallPairs!22 (cache!3374 thiss!28822) lt!831176 res!14291 lambda!84399))))

(assert (=> b!2234300 (= lt!831176 (tuple3!3963 r!4773 ctx!56 a!1010))))

(declare-fun res!956299 () Bool)

(assert (=> start!217786 (=> (not res!956299) (not e!1427952))))

(declare-fun validCacheMapDown!299 (MutableMap!2993) Bool)

(assert (=> start!217786 (= res!956299 (validCacheMapDown!299 (cache!3374 thiss!28822)))))

(assert (=> start!217786 e!1427952))

(declare-fun tp_is_empty!10115 () Bool)

(assert (=> start!217786 tp_is_empty!10115))

(declare-fun condSetEmpty!20260 () Bool)

(assert (=> start!217786 (= condSetEmpty!20260 (= res!14291 ((as const (Array Context!3986 Bool)) false)))))

(assert (=> start!217786 setRes!20260))

(declare-fun e!1427950 () Bool)

(declare-fun inv!35683 (Context!3986) Bool)

(assert (=> start!217786 (and (inv!35683 ctx!56) e!1427950)))

(assert (=> start!217786 e!1427955))

(declare-fun e!1427960 () Bool)

(declare-fun inv!35684 (CacheDown!2032) Bool)

(assert (=> start!217786 (and (inv!35684 thiss!28822) e!1427960)))

(declare-fun e!1427958 () Bool)

(declare-fun e!1427953 () Bool)

(assert (=> b!2234301 (= e!1427958 (and e!1427953 tp!701576))))

(declare-fun b!2234302 () Bool)

(declare-fun tp!701579 () Bool)

(assert (=> b!2234302 (= e!1427950 tp!701579)))

(declare-fun b!2234303 () Bool)

(declare-fun e!1427951 () Bool)

(declare-fun tp!701577 () Bool)

(assert (=> b!2234303 (= e!1427951 (and tp!701577 mapRes!14498))))

(declare-fun condMapEmpty!14498 () Bool)

(declare-fun mapDefault!14498 () List!26365)

(assert (=> b!2234303 (= condMapEmpty!14498 (= (arr!4754 (_values!3363 (v!29873 (underlying!6367 (v!29874 (underlying!6368 (cache!3374 thiss!28822))))))) ((as const (Array (_ BitVec 32) List!26365)) mapDefault!14498)))))

(declare-fun b!2234304 () Bool)

(declare-fun e!1427954 () Bool)

(declare-fun e!1427956 () Bool)

(assert (=> b!2234304 (= e!1427954 e!1427956)))

(declare-fun b!2234305 () Bool)

(declare-fun e!1427957 () Bool)

(assert (=> b!2234305 (= e!1427956 e!1427957)))

(declare-fun b!2234306 () Bool)

(declare-fun tp!701578 () Bool)

(declare-fun tp!701572 () Bool)

(assert (=> b!2234306 (= e!1427955 (and tp!701578 tp!701572))))

(declare-fun b!2234307 () Bool)

(declare-fun res!956298 () Bool)

(assert (=> b!2234307 (=> (not res!956298) (not e!1427952))))

(declare-fun validRegex!2411 (Regex!6445) Bool)

(assert (=> b!2234307 (= res!956298 (validRegex!2411 r!4773))))

(declare-fun mapIsEmpty!14498 () Bool)

(assert (=> mapIsEmpty!14498 mapRes!14498))

(declare-fun b!2234308 () Bool)

(assert (=> b!2234308 (= e!1427955 tp_is_empty!10115)))

(declare-fun b!2234309 () Bool)

(declare-fun lt!831177 () MutLongMap!3083)

(assert (=> b!2234309 (= e!1427953 (and e!1427954 ((_ is LongMap!3083) lt!831177)))))

(assert (=> b!2234309 (= lt!831177 (v!29874 (underlying!6368 (cache!3374 thiss!28822))))))

(declare-fun setNonEmpty!20260 () Bool)

(declare-fun tp!701573 () Bool)

(declare-fun setElem!20260 () Context!3986)

(assert (=> setNonEmpty!20260 (= setRes!20260 (and tp!701573 (inv!35683 setElem!20260) e!1427959))))

(declare-fun setRest!20260 () (InoxSet Context!3986))

(assert (=> setNonEmpty!20260 (= res!14291 ((_ map or) (store ((as const (Array Context!3986 Bool)) false) setElem!20260 true) setRest!20260))))

(declare-fun b!2234310 () Bool)

(assert (=> b!2234310 (= e!1427960 e!1427958)))

(declare-fun tp!701574 () Bool)

(declare-fun tp!701582 () Bool)

(declare-fun array_inv!3411 (array!10698) Bool)

(declare-fun array_inv!3412 (array!10700) Bool)

(assert (=> b!2234311 (= e!1427957 (and tp!701581 tp!701582 tp!701574 (array_inv!3411 (_keys!3380 (v!29873 (underlying!6367 (v!29874 (underlying!6368 (cache!3374 thiss!28822))))))) (array_inv!3412 (_values!3363 (v!29873 (underlying!6367 (v!29874 (underlying!6368 (cache!3374 thiss!28822))))))) e!1427951))))

(assert (= (and start!217786 res!956299) b!2234307))

(assert (= (and b!2234307 res!956298) b!2234298))

(assert (= (and b!2234298 res!956297) b!2234300))

(assert (= (and start!217786 condSetEmpty!20260) setIsEmpty!20260))

(assert (= (and start!217786 (not condSetEmpty!20260)) setNonEmpty!20260))

(assert (= setNonEmpty!20260 b!2234299))

(assert (= start!217786 b!2234302))

(assert (= (and start!217786 ((_ is ElementMatch!6445) r!4773)) b!2234308))

(assert (= (and start!217786 ((_ is Concat!10783) r!4773)) b!2234296))

(assert (= (and start!217786 ((_ is Star!6445) r!4773)) b!2234297))

(assert (= (and start!217786 ((_ is Union!6445) r!4773)) b!2234306))

(assert (= (and b!2234303 condMapEmpty!14498) mapIsEmpty!14498))

(assert (= (and b!2234303 (not condMapEmpty!14498)) mapNonEmpty!14498))

(assert (= b!2234311 b!2234303))

(assert (= b!2234305 b!2234311))

(assert (= b!2234304 b!2234305))

(assert (= (and b!2234309 ((_ is LongMap!3083) (v!29874 (underlying!6368 (cache!3374 thiss!28822))))) b!2234304))

(assert (= b!2234301 b!2234309))

(assert (= (and b!2234310 ((_ is HashMap!2993) (cache!3374 thiss!28822))) b!2234301))

(assert (= start!217786 b!2234310))

(declare-fun m!2669146 () Bool)

(assert (=> b!2234311 m!2669146))

(declare-fun m!2669148 () Bool)

(assert (=> b!2234311 m!2669148))

(declare-fun m!2669150 () Bool)

(assert (=> b!2234307 m!2669150))

(declare-fun m!2669152 () Bool)

(assert (=> b!2234300 m!2669152))

(declare-fun m!2669154 () Bool)

(assert (=> b!2234300 m!2669154))

(declare-fun m!2669156 () Bool)

(assert (=> b!2234300 m!2669156))

(declare-fun m!2669158 () Bool)

(assert (=> b!2234300 m!2669158))

(declare-fun m!2669160 () Bool)

(assert (=> start!217786 m!2669160))

(declare-fun m!2669162 () Bool)

(assert (=> start!217786 m!2669162))

(declare-fun m!2669164 () Bool)

(assert (=> start!217786 m!2669164))

(declare-fun m!2669166 () Bool)

(assert (=> mapNonEmpty!14498 m!2669166))

(declare-fun m!2669168 () Bool)

(assert (=> setNonEmpty!20260 m!2669168))

(declare-fun m!2669170 () Bool)

(assert (=> b!2234298 m!2669170))

(check-sat tp_is_empty!10115 (not start!217786) b_and!174781 (not mapNonEmpty!14498) (not b!2234307) (not setNonEmpty!20260) (not b!2234297) (not b!2234311) (not b!2234306) (not b!2234300) (not b!2234299) b_and!174783 (not b!2234303) (not b!2234296) (not b!2234298) (not b!2234302) (not b_next!65497) (not b_next!65499))
(check-sat b_and!174783 b_and!174781 (not b_next!65497) (not b_next!65499))
(get-model)

(declare-fun b!2234330 () Bool)

(declare-fun e!1427981 () Bool)

(declare-fun e!1427976 () Bool)

(assert (=> b!2234330 (= e!1427981 e!1427976)))

(declare-fun res!956313 () Bool)

(declare-fun nullable!1777 (Regex!6445) Bool)

(assert (=> b!2234330 (= res!956313 (not (nullable!1777 (reg!6774 r!4773))))))

(assert (=> b!2234330 (=> (not res!956313) (not e!1427976))))

(declare-fun b!2234331 () Bool)

(declare-fun res!956310 () Bool)

(declare-fun e!1427978 () Bool)

(assert (=> b!2234331 (=> res!956310 e!1427978)))

(assert (=> b!2234331 (= res!956310 (not ((_ is Concat!10783) r!4773)))))

(declare-fun e!1427977 () Bool)

(assert (=> b!2234331 (= e!1427977 e!1427978)))

(declare-fun b!2234332 () Bool)

(declare-fun e!1427975 () Bool)

(declare-fun call!134462 () Bool)

(assert (=> b!2234332 (= e!1427975 call!134462)))

(declare-fun d!665312 () Bool)

(declare-fun res!956314 () Bool)

(declare-fun e!1427979 () Bool)

(assert (=> d!665312 (=> res!956314 e!1427979)))

(assert (=> d!665312 (= res!956314 ((_ is ElementMatch!6445) r!4773))))

(assert (=> d!665312 (= (validRegex!2411 r!4773) e!1427979)))

(declare-fun bm!134456 () Bool)

(declare-fun c!356200 () Bool)

(assert (=> bm!134456 (= call!134462 (validRegex!2411 (ite c!356200 (regTwo!13403 r!4773) (regTwo!13402 r!4773))))))

(declare-fun b!2234333 () Bool)

(declare-fun call!134463 () Bool)

(assert (=> b!2234333 (= e!1427976 call!134463)))

(declare-fun b!2234334 () Bool)

(declare-fun e!1427980 () Bool)

(assert (=> b!2234334 (= e!1427978 e!1427980)))

(declare-fun res!956311 () Bool)

(assert (=> b!2234334 (=> (not res!956311) (not e!1427980))))

(declare-fun call!134461 () Bool)

(assert (=> b!2234334 (= res!956311 call!134461)))

(declare-fun b!2234335 () Bool)

(assert (=> b!2234335 (= e!1427979 e!1427981)))

(declare-fun c!356199 () Bool)

(assert (=> b!2234335 (= c!356199 ((_ is Star!6445) r!4773))))

(declare-fun b!2234336 () Bool)

(declare-fun res!956312 () Bool)

(assert (=> b!2234336 (=> (not res!956312) (not e!1427975))))

(assert (=> b!2234336 (= res!956312 call!134461)))

(assert (=> b!2234336 (= e!1427977 e!1427975)))

(declare-fun bm!134457 () Bool)

(assert (=> bm!134457 (= call!134461 call!134463)))

(declare-fun b!2234337 () Bool)

(assert (=> b!2234337 (= e!1427981 e!1427977)))

(assert (=> b!2234337 (= c!356200 ((_ is Union!6445) r!4773))))

(declare-fun bm!134458 () Bool)

(assert (=> bm!134458 (= call!134463 (validRegex!2411 (ite c!356199 (reg!6774 r!4773) (ite c!356200 (regOne!13403 r!4773) (regOne!13402 r!4773)))))))

(declare-fun b!2234338 () Bool)

(assert (=> b!2234338 (= e!1427980 call!134462)))

(assert (= (and d!665312 (not res!956314)) b!2234335))

(assert (= (and b!2234335 c!356199) b!2234330))

(assert (= (and b!2234335 (not c!356199)) b!2234337))

(assert (= (and b!2234330 res!956313) b!2234333))

(assert (= (and b!2234337 c!356200) b!2234336))

(assert (= (and b!2234337 (not c!356200)) b!2234331))

(assert (= (and b!2234336 res!956312) b!2234332))

(assert (= (and b!2234331 (not res!956310)) b!2234334))

(assert (= (and b!2234334 res!956311) b!2234338))

(assert (= (or b!2234332 b!2234338) bm!134456))

(assert (= (or b!2234336 b!2234334) bm!134457))

(assert (= (or b!2234333 bm!134457) bm!134458))

(declare-fun m!2669172 () Bool)

(assert (=> b!2234330 m!2669172))

(declare-fun m!2669174 () Bool)

(assert (=> bm!134456 m!2669174))

(declare-fun m!2669176 () Bool)

(assert (=> bm!134458 m!2669176))

(assert (=> b!2234307 d!665312))

(declare-fun bs!454162 () Bool)

(declare-fun b!2234346 () Bool)

(assert (= bs!454162 (and b!2234346 b!2234300)))

(declare-fun lambda!84402 () Int)

(assert (=> bs!454162 (= lambda!84402 lambda!84399)))

(declare-fun d!665314 () Bool)

(declare-fun res!956321 () Bool)

(declare-fun e!1427986 () Bool)

(assert (=> d!665314 (=> (not res!956321) (not e!1427986))))

(declare-fun valid!2330 (MutableMap!2993) Bool)

(assert (=> d!665314 (= res!956321 (valid!2330 (cache!3374 thiss!28822)))))

(assert (=> d!665314 (= (validCacheMapDown!299 (cache!3374 thiss!28822)) e!1427986)))

(declare-fun b!2234345 () Bool)

(declare-fun res!956322 () Bool)

(assert (=> b!2234345 (=> (not res!956322) (not e!1427986))))

(declare-fun invariantList!366 (List!26365) Bool)

(assert (=> b!2234345 (= res!956322 (invariantList!366 (toList!1338 (map!5382 (cache!3374 thiss!28822)))))))

(assert (=> b!2234346 (= e!1427986 (forall!5380 (toList!1338 (map!5382 (cache!3374 thiss!28822))) lambda!84402))))

(assert (= (and d!665314 res!956321) b!2234345))

(assert (= (and b!2234345 res!956322) b!2234346))

(declare-fun m!2669179 () Bool)

(assert (=> d!665314 m!2669179))

(declare-fun m!2669181 () Bool)

(assert (=> b!2234345 m!2669181))

(declare-fun m!2669183 () Bool)

(assert (=> b!2234345 m!2669183))

(assert (=> b!2234346 m!2669181))

(declare-fun m!2669185 () Bool)

(assert (=> b!2234346 m!2669185))

(assert (=> start!217786 d!665314))

(declare-fun d!665316 () Bool)

(declare-fun lambda!84405 () Int)

(declare-fun forall!5381 (List!26364 Int) Bool)

(assert (=> d!665316 (= (inv!35683 ctx!56) (forall!5381 (exprs!2493 ctx!56) lambda!84405))))

(declare-fun bs!454163 () Bool)

(assert (= bs!454163 d!665316))

(declare-fun m!2669187 () Bool)

(assert (=> bs!454163 m!2669187))

(assert (=> start!217786 d!665316))

(declare-fun d!665318 () Bool)

(declare-fun res!956325 () Bool)

(declare-fun e!1427989 () Bool)

(assert (=> d!665318 (=> (not res!956325) (not e!1427989))))

(assert (=> d!665318 (= res!956325 ((_ is HashMap!2993) (cache!3374 thiss!28822)))))

(assert (=> d!665318 (= (inv!35684 thiss!28822) e!1427989)))

(declare-fun b!2234349 () Bool)

(assert (=> b!2234349 (= e!1427989 (validCacheMapDown!299 (cache!3374 thiss!28822)))))

(assert (= (and d!665318 res!956325) b!2234349))

(assert (=> b!2234349 m!2669160))

(assert (=> start!217786 d!665318))

(declare-fun d!665320 () Bool)

(assert (=> d!665320 (= (array_inv!3411 (_keys!3380 (v!29873 (underlying!6367 (v!29874 (underlying!6368 (cache!3374 thiss!28822))))))) (bvsge (size!20534 (_keys!3380 (v!29873 (underlying!6367 (v!29874 (underlying!6368 (cache!3374 thiss!28822))))))) #b00000000000000000000000000000000))))

(assert (=> b!2234311 d!665320))

(declare-fun d!665322 () Bool)

(assert (=> d!665322 (= (array_inv!3412 (_values!3363 (v!29873 (underlying!6367 (v!29874 (underlying!6368 (cache!3374 thiss!28822))))))) (bvsge (size!20535 (_values!3363 (v!29873 (underlying!6367 (v!29874 (underlying!6368 (cache!3374 thiss!28822))))))) #b00000000000000000000000000000000))))

(assert (=> b!2234311 d!665322))

(declare-fun bm!134471 () Bool)

(declare-fun call!134481 () (InoxSet Context!3986))

(declare-fun call!134478 () (InoxSet Context!3986))

(assert (=> bm!134471 (= call!134481 call!134478)))

(declare-fun b!2234372 () Bool)

(declare-fun e!1428006 () (InoxSet Context!3986))

(assert (=> b!2234372 (= e!1428006 (store ((as const (Array Context!3986 Bool)) false) ctx!56 true))))

(declare-fun b!2234373 () Bool)

(declare-fun c!356213 () Bool)

(declare-fun e!1428002 () Bool)

(assert (=> b!2234373 (= c!356213 e!1428002)))

(declare-fun res!956328 () Bool)

(assert (=> b!2234373 (=> (not res!956328) (not e!1428002))))

(assert (=> b!2234373 (= res!956328 ((_ is Concat!10783) r!4773))))

(declare-fun e!1428004 () (InoxSet Context!3986))

(declare-fun e!1428005 () (InoxSet Context!3986))

(assert (=> b!2234373 (= e!1428004 e!1428005)))

(declare-fun b!2234374 () Bool)

(assert (=> b!2234374 (= e!1428006 e!1428004)))

(declare-fun c!356211 () Bool)

(assert (=> b!2234374 (= c!356211 ((_ is Union!6445) r!4773))))

(declare-fun b!2234375 () Bool)

(declare-fun call!134480 () (InoxSet Context!3986))

(declare-fun call!134477 () (InoxSet Context!3986))

(assert (=> b!2234375 (= e!1428004 ((_ map or) call!134480 call!134477))))

(declare-fun bm!134472 () Bool)

(assert (=> bm!134472 (= call!134478 call!134480)))

(declare-fun b!2234376 () Bool)

(declare-fun e!1428007 () (InoxSet Context!3986))

(assert (=> b!2234376 (= e!1428007 call!134481)))

(declare-fun b!2234378 () Bool)

(declare-fun c!356215 () Bool)

(assert (=> b!2234378 (= c!356215 ((_ is Star!6445) r!4773))))

(declare-fun e!1428003 () (InoxSet Context!3986))

(assert (=> b!2234378 (= e!1428007 e!1428003)))

(declare-fun bm!134473 () Bool)

(declare-fun call!134476 () List!26364)

(assert (=> bm!134473 (= call!134477 (derivationStepZipperDown!58 (ite c!356211 (regTwo!13403 r!4773) (regOne!13402 r!4773)) (ite c!356211 ctx!56 (Context!3987 call!134476)) a!1010))))

(declare-fun b!2234379 () Bool)

(assert (=> b!2234379 (= e!1428003 call!134481)))

(declare-fun d!665324 () Bool)

(declare-fun c!356214 () Bool)

(assert (=> d!665324 (= c!356214 (and ((_ is ElementMatch!6445) r!4773) (= (c!356194 r!4773) a!1010)))))

(assert (=> d!665324 (= (derivationStepZipperDown!58 r!4773 ctx!56 a!1010) e!1428006)))

(declare-fun b!2234377 () Bool)

(assert (=> b!2234377 (= e!1428003 ((as const (Array Context!3986 Bool)) false))))

(declare-fun b!2234380 () Bool)

(assert (=> b!2234380 (= e!1428005 e!1428007)))

(declare-fun c!356212 () Bool)

(assert (=> b!2234380 (= c!356212 ((_ is Concat!10783) r!4773))))

(declare-fun bm!134474 () Bool)

(declare-fun call!134479 () List!26364)

(assert (=> bm!134474 (= call!134479 call!134476)))

(declare-fun bm!134475 () Bool)

(declare-fun $colon$colon!526 (List!26364 Regex!6445) List!26364)

(assert (=> bm!134475 (= call!134476 ($colon$colon!526 (exprs!2493 ctx!56) (ite (or c!356213 c!356212) (regTwo!13402 r!4773) r!4773)))))

(declare-fun b!2234381 () Bool)

(assert (=> b!2234381 (= e!1428002 (nullable!1777 (regOne!13402 r!4773)))))

(declare-fun bm!134476 () Bool)

(assert (=> bm!134476 (= call!134480 (derivationStepZipperDown!58 (ite c!356211 (regOne!13403 r!4773) (ite c!356213 (regTwo!13402 r!4773) (ite c!356212 (regOne!13402 r!4773) (reg!6774 r!4773)))) (ite (or c!356211 c!356213) ctx!56 (Context!3987 call!134479)) a!1010))))

(declare-fun b!2234382 () Bool)

(assert (=> b!2234382 (= e!1428005 ((_ map or) call!134477 call!134478))))

(assert (= (and d!665324 c!356214) b!2234372))

(assert (= (and d!665324 (not c!356214)) b!2234374))

(assert (= (and b!2234374 c!356211) b!2234375))

(assert (= (and b!2234374 (not c!356211)) b!2234373))

(assert (= (and b!2234373 res!956328) b!2234381))

(assert (= (and b!2234373 c!356213) b!2234382))

(assert (= (and b!2234373 (not c!356213)) b!2234380))

(assert (= (and b!2234380 c!356212) b!2234376))

(assert (= (and b!2234380 (not c!356212)) b!2234378))

(assert (= (and b!2234378 c!356215) b!2234379))

(assert (= (and b!2234378 (not c!356215)) b!2234377))

(assert (= (or b!2234376 b!2234379) bm!134474))

(assert (= (or b!2234376 b!2234379) bm!134471))

(assert (= (or b!2234382 bm!134471) bm!134472))

(assert (= (or b!2234382 bm!134474) bm!134475))

(assert (= (or b!2234375 b!2234382) bm!134473))

(assert (= (or b!2234375 bm!134472) bm!134476))

(declare-fun m!2669189 () Bool)

(assert (=> b!2234372 m!2669189))

(declare-fun m!2669191 () Bool)

(assert (=> bm!134475 m!2669191))

(declare-fun m!2669193 () Bool)

(assert (=> bm!134476 m!2669193))

(declare-fun m!2669195 () Bool)

(assert (=> b!2234381 m!2669195))

(declare-fun m!2669197 () Bool)

(assert (=> bm!134473 m!2669197))

(assert (=> b!2234298 d!665324))

(declare-fun bs!454164 () Bool)

(declare-fun d!665326 () Bool)

(assert (= bs!454164 (and d!665326 d!665316)))

(declare-fun lambda!84406 () Int)

(assert (=> bs!454164 (= lambda!84406 lambda!84405)))

(assert (=> d!665326 (= (inv!35683 setElem!20260) (forall!5381 (exprs!2493 setElem!20260) lambda!84406))))

(declare-fun bs!454165 () Bool)

(assert (= bs!454165 d!665326))

(declare-fun m!2669199 () Bool)

(assert (=> bs!454165 m!2669199))

(assert (=> setNonEmpty!20260 d!665326))

(declare-fun d!665328 () Bool)

(declare-fun res!956333 () Bool)

(declare-fun e!1428012 () Bool)

(assert (=> d!665328 (=> res!956333 e!1428012)))

(assert (=> d!665328 (= res!956333 ((_ is Nil!26271) (toList!1338 (map!5382 (_2!15276 lt!831175)))))))

(assert (=> d!665328 (= (forall!5380 (toList!1338 (map!5382 (_2!15276 lt!831175))) lambda!84399) e!1428012)))

(declare-fun b!2234387 () Bool)

(declare-fun e!1428013 () Bool)

(assert (=> b!2234387 (= e!1428012 e!1428013)))

(declare-fun res!956334 () Bool)

(assert (=> b!2234387 (=> (not res!956334) (not e!1428013))))

(declare-fun dynLambda!11527 (Int tuple2!25646) Bool)

(assert (=> b!2234387 (= res!956334 (dynLambda!11527 lambda!84399 (h!31672 (toList!1338 (map!5382 (_2!15276 lt!831175))))))))

(declare-fun b!2234388 () Bool)

(assert (=> b!2234388 (= e!1428013 (forall!5380 (t!199785 (toList!1338 (map!5382 (_2!15276 lt!831175)))) lambda!84399))))

(assert (= (and d!665328 (not res!956333)) b!2234387))

(assert (= (and b!2234387 res!956334) b!2234388))

(declare-fun b_lambda!71677 () Bool)

(assert (=> (not b_lambda!71677) (not b!2234387)))

(declare-fun m!2669201 () Bool)

(assert (=> b!2234387 m!2669201))

(declare-fun m!2669203 () Bool)

(assert (=> b!2234388 m!2669203))

(assert (=> b!2234300 d!665328))

(declare-fun d!665330 () Bool)

(declare-fun lt!831180 () ListMap!815)

(assert (=> d!665330 (invariantList!366 (toList!1338 lt!831180))))

(declare-datatypes ((tuple2!25650 0))(
  ( (tuple2!25651 (_1!15277 (_ BitVec 64)) (_2!15277 List!26365)) )
))
(declare-datatypes ((List!26366 0))(
  ( (Nil!26272) (Cons!26272 (h!31673 tuple2!25650) (t!199786 List!26366)) )
))
(declare-fun extractMap!104 (List!26366) ListMap!815)

(declare-datatypes ((ListLongMap!315 0))(
  ( (ListLongMap!316 (toList!1339 List!26366)) )
))
(declare-fun map!5383 (MutLongMap!3083) ListLongMap!315)

(assert (=> d!665330 (= lt!831180 (extractMap!104 (toList!1339 (map!5383 (v!29874 (underlying!6368 (_2!15276 lt!831175)))))))))

(assert (=> d!665330 (valid!2330 (_2!15276 lt!831175))))

(assert (=> d!665330 (= (map!5382 (_2!15276 lt!831175)) lt!831180)))

(declare-fun bs!454166 () Bool)

(assert (= bs!454166 d!665330))

(declare-fun m!2669205 () Bool)

(assert (=> bs!454166 m!2669205))

(declare-fun m!2669207 () Bool)

(assert (=> bs!454166 m!2669207))

(declare-fun m!2669209 () Bool)

(assert (=> bs!454166 m!2669209))

(declare-fun m!2669211 () Bool)

(assert (=> bs!454166 m!2669211))

(assert (=> b!2234300 d!665330))

(declare-fun bs!454167 () Bool)

(declare-fun b!2234435 () Bool)

(declare-fun b!2234431 () Bool)

(assert (= bs!454167 (and b!2234435 b!2234431)))

(declare-fun lambda!84416 () Int)

(declare-fun lambda!84415 () Int)

(assert (=> bs!454167 (= lambda!84416 lambda!84415)))

(declare-fun lt!831341 () ListLongMap!315)

(declare-fun call!134563 () Bool)

(declare-fun c!356231 () Bool)

(declare-fun bm!134539 () Bool)

(declare-fun lt!831310 () ListLongMap!315)

(declare-fun forall!5382 (List!26366 Int) Bool)

(assert (=> bm!134539 (= call!134563 (forall!5382 (ite c!356231 (toList!1339 lt!831341) (toList!1339 lt!831310)) (ite c!356231 lambda!84415 lambda!84416)))))

(declare-fun lt!831330 () (_ BitVec 64))

(declare-fun lt!831326 () (_ BitVec 64))

(declare-fun call!134556 () List!26365)

(declare-fun bm!134540 () Bool)

(declare-fun apply!6466 (MutLongMap!3083 (_ BitVec 64)) List!26365)

(assert (=> bm!134540 (= call!134556 (apply!6466 (v!29874 (underlying!6368 (cache!3374 thiss!28822))) (ite c!356231 lt!831326 lt!831330)))))

(declare-fun bm!134541 () Bool)

(declare-fun lt!831307 () MutableMap!2993)

(declare-fun lt!831299 () MutableMap!2993)

(declare-fun call!134554 () ListMap!815)

(assert (=> bm!134541 (= call!134554 (map!5382 (ite c!356231 lt!831299 lt!831307)))))

(declare-fun call!134557 () Bool)

(declare-fun bm!134542 () Bool)

(assert (=> bm!134542 (= call!134557 (valid!2330 (ite c!356231 lt!831299 lt!831307)))))

(declare-fun bm!134543 () Bool)

(declare-fun call!134562 () ListLongMap!315)

(declare-fun call!134549 () Bool)

(assert (=> bm!134543 (= call!134549 (forall!5382 (toList!1339 call!134562) (ite c!356231 lambda!84415 lambda!84416)))))

(declare-fun bm!134544 () Bool)

(declare-fun call!134564 () ListMap!815)

(declare-fun call!134548 () Bool)

(declare-fun e!1428041 () ListMap!815)

(declare-fun call!134561 () ListMap!815)

(declare-fun c!356232 () Bool)

(declare-fun eq!53 (ListMap!815 ListMap!815) Bool)

(assert (=> bm!134544 (= call!134548 (eq!53 (ite c!356232 call!134561 call!134564) e!1428041))))

(declare-fun c!356235 () Bool)

(assert (=> bm!134544 (= c!356235 c!356232)))

(declare-fun bm!134545 () Bool)

(declare-fun lt!831315 () tuple2!25648)

(assert (=> bm!134545 (= call!134564 (map!5382 (ite c!356232 (cache!3374 thiss!28822) (_2!15276 lt!831315))))))

(declare-fun lt!831318 () ListMap!815)

(declare-fun lt!831331 () ListMap!815)

(declare-fun bm!134546 () Bool)

(declare-fun call!134552 () Unit!39204)

(declare-fun lt!831329 () ListMap!815)

(declare-fun lt!831293 () ListMap!815)

(declare-fun lemmaEquivalentThenSameContains!13 (ListMap!815 ListMap!815 tuple3!3962) Unit!39204)

(assert (=> bm!134546 (= call!134552 (lemmaEquivalentThenSameContains!13 (ite c!356231 lt!831318 lt!831293) (ite c!356231 lt!831331 lt!831329) lt!831176))))

(declare-fun b!2234427 () Bool)

(declare-fun e!1428038 () List!26365)

(assert (=> b!2234427 (= e!1428038 call!134556)))

(declare-fun b!2234428 () Bool)

(declare-fun e!1428043 () Bool)

(declare-fun call!134559 () Bool)

(assert (=> b!2234428 (= e!1428043 call!134559)))

(declare-fun b!2234429 () Bool)

(declare-fun e!1428036 () Bool)

(assert (=> b!2234429 (= e!1428036 call!134559)))

(declare-fun b!2234430 () Bool)

(declare-fun call!134551 () ListMap!815)

(declare-fun lt!831321 () ListMap!815)

(assert (=> b!2234430 (= call!134551 lt!831321)))

(declare-fun lt!831342 () Unit!39204)

(declare-fun Unit!39206 () Unit!39204)

(assert (=> b!2234430 (= lt!831342 Unit!39206)))

(assert (=> b!2234430 call!134557))

(declare-fun e!1428039 () Unit!39204)

(declare-fun Unit!39207 () Unit!39204)

(assert (=> b!2234430 (= e!1428039 Unit!39207)))

(declare-fun lt!831308 () List!26365)

(declare-fun call!134573 () Unit!39204)

(declare-fun bm!134547 () Bool)

(declare-fun lt!831303 () List!26365)

(declare-fun lemmaRemovePairForKeyPreservesHash!32 (List!26365 tuple3!3962 (_ BitVec 64) Hashable!2993) Unit!39204)

(assert (=> bm!134547 (= call!134573 (lemmaRemovePairForKeyPreservesHash!32 (ite c!356231 lt!831303 lt!831308) lt!831176 (ite c!356231 lt!831326 lt!831330) (hashF!4916 (cache!3374 thiss!28822))))))

(declare-fun bm!134548 () Bool)

(declare-fun call!134569 () ListMap!815)

(declare-fun +!59 (ListMap!815 tuple2!25646) ListMap!815)

(assert (=> bm!134548 (= call!134569 (+!59 lt!831321 (tuple2!25647 lt!831176 res!14291)))))

(declare-fun call!134544 () Unit!39204)

(declare-fun lt!831311 () ListLongMap!315)

(declare-fun bm!134549 () Bool)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!32 (List!26366 (_ BitVec 64) List!26365 Hashable!2993) Unit!39204)

(assert (=> bm!134549 (= call!134544 (lemmaInLongMapAllKeySameHashThenForTuple!32 (toList!1339 lt!831311) (ite c!356231 lt!831326 lt!831330) (ite c!356231 lt!831303 lt!831308) (hashF!4916 (cache!3374 thiss!28822))))))

(declare-fun call!134565 () Bool)

(assert (=> b!2234431 call!134565))

(declare-fun lt!831332 () Unit!39204)

(declare-fun Unit!39208 () Unit!39204)

(assert (=> b!2234431 (= lt!831332 Unit!39208)))

(declare-fun call!134553 () Bool)

(assert (=> b!2234431 call!134553))

(declare-fun lt!831335 () Unit!39204)

(declare-fun Unit!39209 () Unit!39204)

(assert (=> b!2234431 (= lt!831335 Unit!39209)))

(assert (=> b!2234431 call!134549))

(declare-fun lt!831340 () Unit!39204)

(declare-fun lt!831316 () Unit!39204)

(assert (=> b!2234431 (= lt!831340 lt!831316)))

(declare-fun call!134546 () Bool)

(declare-fun call!134571 () Bool)

(assert (=> b!2234431 (= call!134546 call!134571)))

(assert (=> b!2234431 (= lt!831316 call!134552)))

(assert (=> b!2234431 (= lt!831331 call!134569)))

(assert (=> b!2234431 (= lt!831318 call!134551)))

(declare-fun lt!831327 () Unit!39204)

(declare-fun lt!831296 () Unit!39204)

(assert (=> b!2234431 (= lt!831327 lt!831296)))

(declare-fun call!134545 () Bool)

(assert (=> b!2234431 call!134545))

(declare-fun lt!831344 () List!26365)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!13 (ListLongMap!315 (_ BitVec 64) List!26365 tuple3!3962 (InoxSet Context!3986) Hashable!2993) Unit!39204)

(assert (=> b!2234431 (= lt!831296 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!13 lt!831311 lt!831326 lt!831344 lt!831176 res!14291 (hashF!4916 (cache!3374 thiss!28822))))))

(declare-fun lt!831297 () Unit!39204)

(declare-fun lt!831314 () Unit!39204)

(assert (=> b!2234431 (= lt!831297 lt!831314)))

(assert (=> b!2234431 e!1428036))

(declare-fun res!956348 () Bool)

(assert (=> b!2234431 (=> (not res!956348) (not e!1428036))))

(assert (=> b!2234431 (= res!956348 call!134563)))

(declare-fun call!134568 () ListLongMap!315)

(assert (=> b!2234431 (= lt!831341 call!134568)))

(declare-fun call!134550 () Unit!39204)

(assert (=> b!2234431 (= lt!831314 call!134550)))

(declare-fun lt!831338 () Unit!39204)

(declare-fun Unit!39210 () Unit!39204)

(assert (=> b!2234431 (= lt!831338 Unit!39210)))

(declare-fun noDuplicateKeys!38 (List!26365) Bool)

(assert (=> b!2234431 (noDuplicateKeys!38 lt!831344)))

(declare-fun lt!831319 () Unit!39204)

(declare-fun Unit!39211 () Unit!39204)

(assert (=> b!2234431 (= lt!831319 Unit!39211)))

(declare-fun call!134547 () List!26365)

(declare-fun containsKey!74 (List!26365 tuple3!3962) Bool)

(assert (=> b!2234431 (not (containsKey!74 call!134547 lt!831176))))

(declare-fun lt!831302 () Unit!39204)

(declare-fun Unit!39212 () Unit!39204)

(assert (=> b!2234431 (= lt!831302 Unit!39212)))

(declare-fun lt!831328 () Unit!39204)

(declare-fun lt!831292 () Unit!39204)

(assert (=> b!2234431 (= lt!831328 lt!831292)))

(assert (=> b!2234431 (noDuplicateKeys!38 call!134547)))

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!32 (List!26365 tuple3!3962) Unit!39204)

(assert (=> b!2234431 (= lt!831292 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!32 lt!831303 lt!831176))))

(declare-fun lt!831312 () Unit!39204)

(declare-fun lt!831337 () Unit!39204)

(assert (=> b!2234431 (= lt!831312 lt!831337)))

(declare-fun call!134572 () Bool)

(assert (=> b!2234431 call!134572))

(assert (=> b!2234431 (= lt!831337 call!134573)))

(declare-fun lt!831294 () Unit!39204)

(declare-fun lt!831309 () Unit!39204)

(assert (=> b!2234431 (= lt!831294 lt!831309)))

(declare-fun call!134566 () Bool)

(assert (=> b!2234431 call!134566))

(assert (=> b!2234431 (= lt!831309 call!134544)))

(declare-fun Unit!39213 () Unit!39204)

(assert (=> b!2234431 (= e!1428039 Unit!39213)))

(declare-fun bm!134550 () Bool)

(assert (=> bm!134550 (= call!134561 (map!5382 (ite c!356232 (_2!15276 lt!831315) (cache!3374 thiss!28822))))))

(declare-fun bm!134551 () Bool)

(declare-fun call!134555 () ListMap!815)

(assert (=> bm!134551 (= call!134555 call!134554)))

(declare-fun b!2234432 () Bool)

(assert (=> b!2234432 (= e!1428041 call!134561)))

(declare-fun lt!831345 () List!26365)

(declare-datatypes ((tuple2!25652 0))(
  ( (tuple2!25653 (_1!15278 Bool) (_2!15278 MutLongMap!3083)) )
))
(declare-fun call!134560 () tuple2!25652)

(declare-fun bm!134552 () Bool)

(declare-fun update!145 (MutLongMap!3083 (_ BitVec 64) List!26365) tuple2!25652)

(assert (=> bm!134552 (= call!134560 (update!145 (v!29874 (underlying!6368 (cache!3374 thiss!28822))) (ite c!356231 lt!831326 lt!831330) (ite c!356231 lt!831344 lt!831345)))))

(declare-fun b!2234433 () Bool)

(declare-fun e!1428040 () Unit!39204)

(declare-fun lt!831339 () Unit!39204)

(assert (=> b!2234433 (= e!1428040 lt!831339)))

(declare-fun lt!831313 () Unit!39204)

(assert (=> b!2234433 (= lt!831313 call!134544)))

(assert (=> b!2234433 call!134566))

(declare-fun lt!831343 () Unit!39204)

(assert (=> b!2234433 (= lt!831343 lt!831313)))

(assert (=> b!2234433 (= lt!831339 call!134573)))

(assert (=> b!2234433 call!134572))

(declare-fun b!2234434 () Bool)

(assert (=> b!2234434 (= call!134555 lt!831321)))

(declare-fun lt!831320 () Unit!39204)

(declare-fun Unit!39214 () Unit!39204)

(assert (=> b!2234434 (= lt!831320 Unit!39214)))

(assert (=> b!2234434 call!134557))

(declare-fun e!1428045 () Unit!39204)

(declare-fun Unit!39215 () Unit!39204)

(assert (=> b!2234434 (= e!1428045 Unit!39215)))

(declare-fun bm!134553 () Bool)

(assert (=> bm!134553 (= call!134551 call!134554)))

(declare-fun d!665332 () Bool)

(declare-fun e!1428037 () Bool)

(assert (=> d!665332 e!1428037))

(declare-fun res!956345 () Bool)

(assert (=> d!665332 (=> (not res!956345) (not e!1428037))))

(assert (=> d!665332 (= res!956345 ((_ is HashMap!2993) (_2!15276 lt!831315)))))

(declare-fun lt!831291 () tuple2!25648)

(assert (=> d!665332 (= lt!831315 (tuple2!25649 (_1!15276 lt!831291) (_2!15276 lt!831291)))))

(declare-fun e!1428042 () tuple2!25648)

(assert (=> d!665332 (= lt!831291 e!1428042)))

(declare-fun contains!4374 (MutableMap!2993 tuple3!3962) Bool)

(assert (=> d!665332 (= c!356231 (contains!4374 (cache!3374 thiss!28822) lt!831176))))

(assert (=> d!665332 (= lt!831311 (map!5383 (v!29874 (underlying!6368 (cache!3374 thiss!28822)))))))

(assert (=> d!665332 (= lt!831321 (map!5382 (cache!3374 thiss!28822)))))

(assert (=> d!665332 (valid!2330 (cache!3374 thiss!28822))))

(assert (=> d!665332 (= (update!144 (cache!3374 thiss!28822) lt!831176 res!14291) lt!831315)))

(declare-fun bm!134554 () Bool)

(declare-fun allKeysSameHashInMap!104 (ListLongMap!315 Hashable!2993) Bool)

(assert (=> bm!134554 (= call!134559 (allKeysSameHashInMap!104 (ite c!356231 lt!831341 lt!831310) (hashF!4916 (cache!3374 thiss!28822))))))

(assert (=> b!2234435 call!134571))

(declare-fun lt!831305 () Unit!39204)

(declare-fun Unit!39216 () Unit!39204)

(assert (=> b!2234435 (= lt!831305 Unit!39216)))

(declare-fun contains!4375 (ListMap!815 tuple3!3962) Bool)

(assert (=> b!2234435 (contains!4375 call!134569 lt!831176)))

(declare-fun lt!831322 () Unit!39204)

(declare-fun lt!831334 () Unit!39204)

(assert (=> b!2234435 (= lt!831322 lt!831334)))

(assert (=> b!2234435 (= call!134546 (contains!4375 lt!831329 lt!831176))))

(assert (=> b!2234435 (= lt!831334 call!134552)))

(assert (=> b!2234435 (= lt!831329 call!134569)))

(assert (=> b!2234435 (= lt!831293 call!134555)))

(declare-fun lt!831295 () Unit!39204)

(declare-fun Unit!39217 () Unit!39204)

(assert (=> b!2234435 (= lt!831295 Unit!39217)))

(assert (=> b!2234435 call!134565))

(declare-fun lt!831300 () Unit!39204)

(declare-fun Unit!39218 () Unit!39204)

(assert (=> b!2234435 (= lt!831300 Unit!39218)))

(assert (=> b!2234435 call!134553))

(declare-fun lt!831298 () Unit!39204)

(declare-fun Unit!39219 () Unit!39204)

(assert (=> b!2234435 (= lt!831298 Unit!39219)))

(assert (=> b!2234435 call!134549))

(declare-fun lt!831333 () Unit!39204)

(declare-fun lt!831306 () Unit!39204)

(assert (=> b!2234435 (= lt!831333 lt!831306)))

(assert (=> b!2234435 call!134545))

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!13 (ListLongMap!315 (_ BitVec 64) List!26365 tuple3!3962 (InoxSet Context!3986) Hashable!2993) Unit!39204)

(assert (=> b!2234435 (= lt!831306 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!13 lt!831311 lt!831330 lt!831345 lt!831176 res!14291 (hashF!4916 (cache!3374 thiss!28822))))))

(declare-fun lt!831336 () Unit!39204)

(declare-fun lt!831325 () Unit!39204)

(assert (=> b!2234435 (= lt!831336 lt!831325)))

(assert (=> b!2234435 e!1428043))

(declare-fun res!956349 () Bool)

(assert (=> b!2234435 (=> (not res!956349) (not e!1428043))))

(assert (=> b!2234435 (= res!956349 call!134563)))

(assert (=> b!2234435 (= lt!831310 call!134568)))

(assert (=> b!2234435 (= lt!831325 call!134550)))

(declare-fun lt!831304 () Unit!39204)

(assert (=> b!2234435 (= lt!831304 e!1428040)))

(declare-fun c!356233 () Bool)

(declare-fun isEmpty!14904 (List!26365) Bool)

(assert (=> b!2234435 (= c!356233 (not (isEmpty!14904 lt!831308)))))

(declare-fun Unit!39220 () Unit!39204)

(assert (=> b!2234435 (= e!1428045 Unit!39220)))

(declare-fun b!2234436 () Bool)

(declare-fun res!956346 () Bool)

(assert (=> b!2234436 (=> (not res!956346) (not e!1428037))))

(assert (=> b!2234436 (= res!956346 (valid!2330 (_2!15276 lt!831315)))))

(declare-fun bm!134555 () Bool)

(assert (=> bm!134555 (= call!134565 (eq!53 (ite c!356231 call!134551 call!134555) call!134569))))

(declare-fun bm!134556 () Bool)

(declare-fun +!60 (ListLongMap!315 tuple2!25650) ListLongMap!315)

(assert (=> bm!134556 (= call!134568 (+!60 lt!831311 (ite c!356231 (tuple2!25651 lt!831326 lt!831344) (tuple2!25651 lt!831330 lt!831345))))))

(declare-fun b!2234437 () Bool)

(declare-fun e!1428044 () Bool)

(assert (=> b!2234437 (= e!1428044 call!134548)))

(declare-fun bm!134557 () Bool)

(declare-fun call!134567 () ListMap!815)

(declare-fun call!134574 () ListMap!815)

(assert (=> bm!134557 (= call!134567 (+!59 call!134574 (tuple2!25647 lt!831176 res!14291)))))

(declare-fun b!2234438 () Bool)

(declare-fun Unit!39221 () Unit!39204)

(assert (=> b!2234438 (= e!1428040 Unit!39221)))

(declare-fun b!2234439 () Bool)

(declare-fun e!1428046 () Bool)

(assert (=> b!2234439 (= e!1428046 call!134548)))

(declare-fun b!2234440 () Bool)

(assert (=> b!2234440 (= e!1428038 Nil!26271)))

(declare-fun b!2234441 () Bool)

(assert (=> b!2234441 (= e!1428041 (+!59 call!134564 (tuple2!25647 lt!831176 res!14291)))))

(declare-fun lt!831301 () tuple2!25652)

(declare-fun bm!134558 () Bool)

(declare-fun lt!831323 () tuple2!25652)

(assert (=> bm!134558 (= call!134562 (map!5383 (ite c!356231 (_2!15278 lt!831301) (_2!15278 lt!831323))))))

(declare-fun b!2234442 () Bool)

(declare-datatypes ((tuple2!25654 0))(
  ( (tuple2!25655 (_1!15279 Unit!39204) (_2!15279 MutableMap!2993)) )
))
(declare-fun Unit!39222 () Unit!39204)

(declare-fun Unit!39223 () Unit!39204)

(assert (=> b!2234442 (= e!1428042 (tuple2!25649 (_1!15278 lt!831323) (_2!15279 (ite (_1!15278 lt!831323) (tuple2!25655 Unit!39222 (HashMap!2993 (Cell!12152 (_2!15278 lt!831323)) (hashF!4916 (cache!3374 thiss!28822)) (bvadd (_size!6214 (cache!3374 thiss!28822)) #b00000000000000000000000000000001) (defaultValue!3155 (cache!3374 thiss!28822)))) (tuple2!25655 Unit!39223 lt!831307)))))))

(declare-fun call!134558 () (_ BitVec 64))

(assert (=> b!2234442 (= lt!831330 call!134558)))

(declare-fun c!356230 () Bool)

(declare-fun contains!4376 (MutLongMap!3083 (_ BitVec 64)) Bool)

(assert (=> b!2234442 (= c!356230 (contains!4376 (v!29874 (underlying!6368 (cache!3374 thiss!28822))) lt!831330))))

(assert (=> b!2234442 (= lt!831308 e!1428038)))

(assert (=> b!2234442 (= lt!831345 (Cons!26271 (tuple2!25647 lt!831176 res!14291) lt!831308))))

(assert (=> b!2234442 (= lt!831323 call!134560)))

(assert (=> b!2234442 (= lt!831307 (HashMap!2993 (Cell!12152 (_2!15278 lt!831323)) (hashF!4916 (cache!3374 thiss!28822)) (_size!6214 (cache!3374 thiss!28822)) (defaultValue!3155 (cache!3374 thiss!28822))))))

(declare-fun c!356236 () Bool)

(assert (=> b!2234442 (= c!356236 (_1!15278 lt!831323))))

(declare-fun lt!831324 () Unit!39204)

(assert (=> b!2234442 (= lt!831324 e!1428045)))

(declare-fun bm!134559 () Bool)

(declare-fun call!134570 () ListMap!815)

(assert (=> bm!134559 (= call!134570 (extractMap!104 (toList!1339 call!134568)))))

(declare-fun bm!134560 () Bool)

(assert (=> bm!134560 (= call!134574 (extractMap!104 (toList!1339 lt!831311)))))

(declare-fun bm!134561 () Bool)

(declare-fun hash!572 (Hashable!2993 tuple3!3962) (_ BitVec 64))

(assert (=> bm!134561 (= call!134558 (hash!572 (hashF!4916 (cache!3374 thiss!28822)) lt!831176))))

(declare-fun bm!134562 () Bool)

(assert (=> bm!134562 (= call!134571 (contains!4375 (ite c!356231 lt!831331 call!134555) lt!831176))))

(declare-fun bm!134563 () Bool)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!32 (ListLongMap!315 (_ BitVec 64) List!26365 Hashable!2993) Unit!39204)

(assert (=> bm!134563 (= call!134550 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!32 lt!831311 (ite c!356231 lt!831326 lt!831330) (ite c!356231 lt!831344 lt!831345) (hashF!4916 (cache!3374 thiss!28822))))))

(declare-fun bm!134564 () Bool)

(declare-fun allKeysSameHash!36 (List!26365 (_ BitVec 64) Hashable!2993) Bool)

(assert (=> bm!134564 (= call!134566 (allKeysSameHash!36 (ite c!356231 lt!831303 lt!831308) (ite c!356231 lt!831326 lt!831330) (hashF!4916 (cache!3374 thiss!28822))))))

(declare-fun bm!134565 () Bool)

(assert (=> bm!134565 (= call!134546 (contains!4375 (ite c!356231 lt!831318 lt!831293) lt!831176))))

(declare-fun bm!134566 () Bool)

(assert (=> bm!134566 (= call!134545 (eq!53 call!134570 call!134567))))

(declare-fun bm!134567 () Bool)

(assert (=> bm!134567 (= call!134572 (allKeysSameHash!36 call!134547 (ite c!356231 lt!831326 lt!831330) (hashF!4916 (cache!3374 thiss!28822))))))

(declare-fun bm!134568 () Bool)

(declare-fun removePairForKey!32 (List!26365 tuple3!3962) List!26365)

(assert (=> bm!134568 (= call!134547 (removePairForKey!32 (ite c!356231 lt!831303 lt!831308) lt!831176))))

(declare-fun bm!134569 () Bool)

(assert (=> bm!134569 (= call!134553 (allKeysSameHashInMap!104 call!134562 (hashF!4916 (cache!3374 thiss!28822))))))

(declare-fun b!2234443 () Bool)

(assert (=> b!2234443 (= e!1428044 e!1428046)))

(declare-fun res!956347 () Bool)

(assert (=> b!2234443 (= res!956347 (contains!4375 call!134561 lt!831176))))

(assert (=> b!2234443 (=> (not res!956347) (not e!1428046))))

(declare-fun b!2234444 () Bool)

(declare-fun Unit!39224 () Unit!39204)

(declare-fun Unit!39225 () Unit!39204)

(assert (=> b!2234444 (= e!1428042 (tuple2!25649 (_1!15278 lt!831301) (_2!15279 (ite false (tuple2!25655 Unit!39224 (HashMap!2993 (Cell!12152 (_2!15278 lt!831301)) (hashF!4916 (cache!3374 thiss!28822)) (bvadd (_size!6214 (cache!3374 thiss!28822)) #b00000000000000000000000000000001) (defaultValue!3155 (cache!3374 thiss!28822)))) (tuple2!25655 Unit!39225 lt!831299)))))))

(assert (=> b!2234444 (= lt!831326 call!134558)))

(assert (=> b!2234444 (= lt!831303 call!134556)))

(assert (=> b!2234444 (= lt!831344 (Cons!26271 (tuple2!25647 lt!831176 res!14291) call!134547))))

(assert (=> b!2234444 (= lt!831301 call!134560)))

(assert (=> b!2234444 (= lt!831299 (HashMap!2993 (Cell!12152 (_2!15278 lt!831301)) (hashF!4916 (cache!3374 thiss!28822)) (_size!6214 (cache!3374 thiss!28822)) (defaultValue!3155 (cache!3374 thiss!28822))))))

(declare-fun c!356234 () Bool)

(assert (=> b!2234444 (= c!356234 (_1!15278 lt!831301))))

(declare-fun lt!831317 () Unit!39204)

(assert (=> b!2234444 (= lt!831317 e!1428039)))

(declare-fun b!2234445 () Bool)

(assert (=> b!2234445 (= e!1428037 e!1428044)))

(assert (=> b!2234445 (= c!356232 (_1!15276 lt!831315))))

(assert (= (and d!665332 c!356231) b!2234444))

(assert (= (and d!665332 (not c!356231)) b!2234442))

(assert (= (and b!2234444 c!356234) b!2234431))

(assert (= (and b!2234444 (not c!356234)) b!2234430))

(assert (= (and b!2234431 res!956348) b!2234429))

(assert (= (or b!2234431 b!2234430) bm!134553))

(assert (= (and b!2234442 c!356230) b!2234427))

(assert (= (and b!2234442 (not c!356230)) b!2234440))

(assert (= (and b!2234442 c!356236) b!2234435))

(assert (= (and b!2234442 (not c!356236)) b!2234434))

(assert (= (and b!2234435 c!356233) b!2234433))

(assert (= (and b!2234435 (not c!356233)) b!2234438))

(assert (= (and b!2234435 res!956349) b!2234428))

(assert (= (or b!2234435 b!2234434) bm!134551))

(assert (= (or b!2234431 b!2234435) bm!134563))

(assert (= (or b!2234430 b!2234434) bm!134542))

(assert (= (or b!2234431 b!2234435) bm!134560))

(assert (= (or b!2234431 b!2234433) bm!134547))

(assert (= (or b!2234431 b!2234433) bm!134549))

(assert (= (or b!2234429 b!2234428) bm!134554))

(assert (= (or b!2234431 b!2234435) bm!134548))

(assert (= (or bm!134553 bm!134551) bm!134541))

(assert (= (or b!2234444 b!2234442) bm!134561))

(assert (= (or b!2234431 b!2234435) bm!134539))

(assert (= (or b!2234444 b!2234442) bm!134552))

(assert (= (or b!2234431 b!2234435) bm!134565))

(assert (= (or b!2234444 b!2234427) bm!134540))

(assert (= (or b!2234431 b!2234433) bm!134564))

(assert (= (or b!2234431 b!2234435) bm!134546))

(assert (= (or b!2234431 b!2234435) bm!134558))

(assert (= (or b!2234431 b!2234444 b!2234433) bm!134568))

(assert (= (or b!2234431 b!2234435) bm!134556))

(assert (= (or b!2234431 b!2234435) bm!134562))

(assert (= (or b!2234431 b!2234435) bm!134557))

(assert (= (or b!2234431 b!2234435) bm!134569))

(assert (= (or b!2234431 b!2234435) bm!134555))

(assert (= (or b!2234431 b!2234433) bm!134567))

(assert (= (or b!2234431 b!2234435) bm!134543))

(assert (= (or b!2234431 b!2234435) bm!134559))

(assert (= (or b!2234431 b!2234435) bm!134566))

(assert (= (and d!665332 res!956345) b!2234436))

(assert (= (and b!2234436 res!956346) b!2234445))

(assert (= (and b!2234445 c!356232) b!2234443))

(assert (= (and b!2234445 (not c!356232)) b!2234437))

(assert (= (and b!2234443 res!956347) b!2234439))

(assert (= (or b!2234439 b!2234437) bm!134545))

(assert (= (or b!2234443 b!2234439 b!2234437) bm!134550))

(assert (= (or b!2234439 b!2234437) bm!134544))

(assert (= (and bm!134544 c!356235) b!2234441))

(assert (= (and bm!134544 (not c!356235)) b!2234432))

(declare-fun m!2669213 () Bool)

(assert (=> bm!134561 m!2669213))

(declare-fun m!2669215 () Bool)

(assert (=> bm!134544 m!2669215))

(declare-fun m!2669217 () Bool)

(assert (=> bm!134558 m!2669217))

(declare-fun m!2669219 () Bool)

(assert (=> bm!134546 m!2669219))

(declare-fun m!2669221 () Bool)

(assert (=> bm!134557 m!2669221))

(declare-fun m!2669223 () Bool)

(assert (=> bm!134554 m!2669223))

(declare-fun m!2669225 () Bool)

(assert (=> bm!134548 m!2669225))

(declare-fun m!2669227 () Bool)

(assert (=> bm!134555 m!2669227))

(declare-fun m!2669229 () Bool)

(assert (=> bm!134539 m!2669229))

(declare-fun m!2669231 () Bool)

(assert (=> b!2234436 m!2669231))

(declare-fun m!2669233 () Bool)

(assert (=> bm!134559 m!2669233))

(declare-fun m!2669235 () Bool)

(assert (=> bm!134550 m!2669235))

(declare-fun m!2669237 () Bool)

(assert (=> bm!134541 m!2669237))

(declare-fun m!2669239 () Bool)

(assert (=> bm!134540 m!2669239))

(declare-fun m!2669241 () Bool)

(assert (=> b!2234441 m!2669241))

(declare-fun m!2669243 () Bool)

(assert (=> bm!134552 m!2669243))

(declare-fun m!2669245 () Bool)

(assert (=> bm!134556 m!2669245))

(declare-fun m!2669247 () Bool)

(assert (=> bm!134565 m!2669247))

(declare-fun m!2669249 () Bool)

(assert (=> b!2234435 m!2669249))

(declare-fun m!2669251 () Bool)

(assert (=> b!2234435 m!2669251))

(declare-fun m!2669253 () Bool)

(assert (=> b!2234435 m!2669253))

(declare-fun m!2669255 () Bool)

(assert (=> b!2234435 m!2669255))

(declare-fun m!2669257 () Bool)

(assert (=> bm!134567 m!2669257))

(declare-fun m!2669259 () Bool)

(assert (=> bm!134569 m!2669259))

(declare-fun m!2669261 () Bool)

(assert (=> b!2234443 m!2669261))

(declare-fun m!2669263 () Bool)

(assert (=> b!2234442 m!2669263))

(declare-fun m!2669265 () Bool)

(assert (=> d!665332 m!2669265))

(declare-fun m!2669267 () Bool)

(assert (=> d!665332 m!2669267))

(assert (=> d!665332 m!2669181))

(assert (=> d!665332 m!2669179))

(declare-fun m!2669269 () Bool)

(assert (=> bm!134563 m!2669269))

(declare-fun m!2669271 () Bool)

(assert (=> bm!134560 m!2669271))

(declare-fun m!2669273 () Bool)

(assert (=> bm!134564 m!2669273))

(declare-fun m!2669275 () Bool)

(assert (=> bm!134568 m!2669275))

(declare-fun m!2669277 () Bool)

(assert (=> b!2234431 m!2669277))

(declare-fun m!2669279 () Bool)

(assert (=> b!2234431 m!2669279))

(declare-fun m!2669281 () Bool)

(assert (=> b!2234431 m!2669281))

(declare-fun m!2669283 () Bool)

(assert (=> b!2234431 m!2669283))

(declare-fun m!2669285 () Bool)

(assert (=> b!2234431 m!2669285))

(declare-fun m!2669287 () Bool)

(assert (=> bm!134543 m!2669287))

(declare-fun m!2669289 () Bool)

(assert (=> bm!134562 m!2669289))

(declare-fun m!2669291 () Bool)

(assert (=> bm!134549 m!2669291))

(declare-fun m!2669293 () Bool)

(assert (=> bm!134566 m!2669293))

(declare-fun m!2669295 () Bool)

(assert (=> bm!134545 m!2669295))

(declare-fun m!2669297 () Bool)

(assert (=> bm!134542 m!2669297))

(declare-fun m!2669299 () Bool)

(assert (=> bm!134547 m!2669299))

(assert (=> b!2234300 d!665332))

(declare-fun d!665334 () Bool)

(declare-fun e!1428049 () Bool)

(assert (=> d!665334 e!1428049))

(declare-fun res!956352 () Bool)

(assert (=> d!665334 (=> (not res!956352) (not e!1428049))))

(assert (=> d!665334 (= res!956352 (and (or (not ((_ is HashMap!2993) (cache!3374 thiss!28822))) ((_ is HashMap!2993) (cache!3374 thiss!28822))) ((_ is HashMap!2993) (cache!3374 thiss!28822))))))

(declare-fun lt!831358 () Unit!39204)

(declare-fun choose!13136 (MutableMap!2993 tuple3!3962 (InoxSet Context!3986) Int) Unit!39204)

(assert (=> d!665334 (= lt!831358 (choose!13136 (cache!3374 thiss!28822) lt!831176 res!14291 lambda!84399))))

(assert (=> d!665334 (valid!2330 (cache!3374 thiss!28822))))

(assert (=> d!665334 (= (lemmaUpdatePreservesForallPairs!22 (cache!3374 thiss!28822) lt!831176 res!14291 lambda!84399) lt!831358)))

(declare-fun b!2234448 () Bool)

(declare-fun lt!831359 () MutableMap!2993)

(assert (=> b!2234448 (= e!1428049 (forall!5380 (toList!1338 (map!5382 lt!831359)) lambda!84399))))

(assert (=> b!2234448 ((_ is HashMap!2993) lt!831359)))

(declare-fun lt!831360 () MutableMap!2993)

(assert (=> b!2234448 (= lt!831359 lt!831360)))

(assert (=> b!2234448 ((_ is HashMap!2993) lt!831360)))

(declare-fun lt!831362 () MutableMap!2993)

(assert (=> b!2234448 (= lt!831360 lt!831362)))

(assert (=> b!2234448 ((_ is HashMap!2993) lt!831362)))

(declare-fun lt!831363 () tuple2!25648)

(assert (=> b!2234448 (= lt!831362 (_2!15276 lt!831363))))

(assert (=> b!2234448 ((_ is HashMap!2993) (_2!15276 lt!831363))))

(declare-fun lt!831361 () tuple2!25648)

(assert (=> b!2234448 (= lt!831363 lt!831361)))

(assert (=> b!2234448 ((_ is HashMap!2993) (_2!15276 lt!831361))))

(assert (=> b!2234448 (= lt!831361 (update!144 (cache!3374 thiss!28822) lt!831176 res!14291))))

(assert (= (and d!665334 res!956352) b!2234448))

(declare-fun m!2669301 () Bool)

(assert (=> d!665334 m!2669301))

(assert (=> d!665334 m!2669179))

(declare-fun m!2669303 () Bool)

(assert (=> b!2234448 m!2669303))

(declare-fun m!2669305 () Bool)

(assert (=> b!2234448 m!2669305))

(assert (=> b!2234448 m!2669156))

(assert (=> b!2234300 d!665334))

(declare-fun b!2234459 () Bool)

(declare-fun e!1428052 () Bool)

(assert (=> b!2234459 (= e!1428052 tp_is_empty!10115)))

(declare-fun b!2234461 () Bool)

(declare-fun tp!701593 () Bool)

(assert (=> b!2234461 (= e!1428052 tp!701593)))

(assert (=> b!2234306 (= tp!701578 e!1428052)))

(declare-fun b!2234460 () Bool)

(declare-fun tp!701597 () Bool)

(declare-fun tp!701596 () Bool)

(assert (=> b!2234460 (= e!1428052 (and tp!701597 tp!701596))))

(declare-fun b!2234462 () Bool)

(declare-fun tp!701594 () Bool)

(declare-fun tp!701595 () Bool)

(assert (=> b!2234462 (= e!1428052 (and tp!701594 tp!701595))))

(assert (= (and b!2234306 ((_ is ElementMatch!6445) (regOne!13403 r!4773))) b!2234459))

(assert (= (and b!2234306 ((_ is Concat!10783) (regOne!13403 r!4773))) b!2234460))

(assert (= (and b!2234306 ((_ is Star!6445) (regOne!13403 r!4773))) b!2234461))

(assert (= (and b!2234306 ((_ is Union!6445) (regOne!13403 r!4773))) b!2234462))

(declare-fun b!2234463 () Bool)

(declare-fun e!1428053 () Bool)

(assert (=> b!2234463 (= e!1428053 tp_is_empty!10115)))

(declare-fun b!2234465 () Bool)

(declare-fun tp!701598 () Bool)

(assert (=> b!2234465 (= e!1428053 tp!701598)))

(assert (=> b!2234306 (= tp!701572 e!1428053)))

(declare-fun b!2234464 () Bool)

(declare-fun tp!701602 () Bool)

(declare-fun tp!701601 () Bool)

(assert (=> b!2234464 (= e!1428053 (and tp!701602 tp!701601))))

(declare-fun b!2234466 () Bool)

(declare-fun tp!701599 () Bool)

(declare-fun tp!701600 () Bool)

(assert (=> b!2234466 (= e!1428053 (and tp!701599 tp!701600))))

(assert (= (and b!2234306 ((_ is ElementMatch!6445) (regTwo!13403 r!4773))) b!2234463))

(assert (= (and b!2234306 ((_ is Concat!10783) (regTwo!13403 r!4773))) b!2234464))

(assert (= (and b!2234306 ((_ is Star!6445) (regTwo!13403 r!4773))) b!2234465))

(assert (= (and b!2234306 ((_ is Union!6445) (regTwo!13403 r!4773))) b!2234466))

(declare-fun b!2234467 () Bool)

(declare-fun e!1428054 () Bool)

(assert (=> b!2234467 (= e!1428054 tp_is_empty!10115)))

(declare-fun b!2234469 () Bool)

(declare-fun tp!701603 () Bool)

(assert (=> b!2234469 (= e!1428054 tp!701603)))

(assert (=> b!2234297 (= tp!701569 e!1428054)))

(declare-fun b!2234468 () Bool)

(declare-fun tp!701607 () Bool)

(declare-fun tp!701606 () Bool)

(assert (=> b!2234468 (= e!1428054 (and tp!701607 tp!701606))))

(declare-fun b!2234470 () Bool)

(declare-fun tp!701604 () Bool)

(declare-fun tp!701605 () Bool)

(assert (=> b!2234470 (= e!1428054 (and tp!701604 tp!701605))))

(assert (= (and b!2234297 ((_ is ElementMatch!6445) (reg!6774 r!4773))) b!2234467))

(assert (= (and b!2234297 ((_ is Concat!10783) (reg!6774 r!4773))) b!2234468))

(assert (= (and b!2234297 ((_ is Star!6445) (reg!6774 r!4773))) b!2234469))

(assert (= (and b!2234297 ((_ is Union!6445) (reg!6774 r!4773))) b!2234470))

(declare-fun setIsEmpty!20263 () Bool)

(declare-fun setRes!20263 () Bool)

(assert (=> setIsEmpty!20263 setRes!20263))

(declare-fun tp!701620 () Bool)

(declare-fun setNonEmpty!20263 () Bool)

(declare-fun setElem!20263 () Context!3986)

(declare-fun e!1428063 () Bool)

(assert (=> setNonEmpty!20263 (= setRes!20263 (and tp!701620 (inv!35683 setElem!20263) e!1428063))))

(declare-fun setRest!20263 () (InoxSet Context!3986))

(assert (=> setNonEmpty!20263 (= (_2!15275 (h!31672 (zeroValue!3341 (v!29873 (underlying!6367 (v!29874 (underlying!6368 (cache!3374 thiss!28822)))))))) ((_ map or) (store ((as const (Array Context!3986 Bool)) false) setElem!20263 true) setRest!20263))))

(declare-fun b!2234479 () Bool)

(declare-fun tp!701621 () Bool)

(assert (=> b!2234479 (= e!1428063 tp!701621)))

(declare-fun b!2234480 () Bool)

(declare-fun e!1428061 () Bool)

(declare-fun tp!701619 () Bool)

(assert (=> b!2234480 (= e!1428061 tp!701619)))

(declare-fun e!1428062 () Bool)

(assert (=> b!2234311 (= tp!701582 e!1428062)))

(declare-fun b!2234481 () Bool)

(declare-fun tp!701622 () Bool)

(declare-fun tp!701618 () Bool)

(assert (=> b!2234481 (= e!1428062 (and tp!701622 (inv!35683 (_2!15274 (_1!15275 (h!31672 (zeroValue!3341 (v!29873 (underlying!6367 (v!29874 (underlying!6368 (cache!3374 thiss!28822)))))))))) e!1428061 tp_is_empty!10115 setRes!20263 tp!701618))))

(declare-fun condSetEmpty!20263 () Bool)

(assert (=> b!2234481 (= condSetEmpty!20263 (= (_2!15275 (h!31672 (zeroValue!3341 (v!29873 (underlying!6367 (v!29874 (underlying!6368 (cache!3374 thiss!28822)))))))) ((as const (Array Context!3986 Bool)) false)))))

(assert (= b!2234481 b!2234480))

(assert (= (and b!2234481 condSetEmpty!20263) setIsEmpty!20263))

(assert (= (and b!2234481 (not condSetEmpty!20263)) setNonEmpty!20263))

(assert (= setNonEmpty!20263 b!2234479))

(assert (= (and b!2234311 ((_ is Cons!26271) (zeroValue!3341 (v!29873 (underlying!6367 (v!29874 (underlying!6368 (cache!3374 thiss!28822)))))))) b!2234481))

(declare-fun m!2669307 () Bool)

(assert (=> setNonEmpty!20263 m!2669307))

(declare-fun m!2669309 () Bool)

(assert (=> b!2234481 m!2669309))

(declare-fun setIsEmpty!20264 () Bool)

(declare-fun setRes!20264 () Bool)

(assert (=> setIsEmpty!20264 setRes!20264))

(declare-fun setElem!20264 () Context!3986)

(declare-fun tp!701625 () Bool)

(declare-fun e!1428066 () Bool)

(declare-fun setNonEmpty!20264 () Bool)

(assert (=> setNonEmpty!20264 (= setRes!20264 (and tp!701625 (inv!35683 setElem!20264) e!1428066))))

(declare-fun setRest!20264 () (InoxSet Context!3986))

(assert (=> setNonEmpty!20264 (= (_2!15275 (h!31672 (minValue!3341 (v!29873 (underlying!6367 (v!29874 (underlying!6368 (cache!3374 thiss!28822)))))))) ((_ map or) (store ((as const (Array Context!3986 Bool)) false) setElem!20264 true) setRest!20264))))

(declare-fun b!2234482 () Bool)

(declare-fun tp!701626 () Bool)

(assert (=> b!2234482 (= e!1428066 tp!701626)))

(declare-fun b!2234483 () Bool)

(declare-fun e!1428064 () Bool)

(declare-fun tp!701624 () Bool)

(assert (=> b!2234483 (= e!1428064 tp!701624)))

(declare-fun e!1428065 () Bool)

(assert (=> b!2234311 (= tp!701574 e!1428065)))

(declare-fun tp!701627 () Bool)

(declare-fun tp!701623 () Bool)

(declare-fun b!2234484 () Bool)

(assert (=> b!2234484 (= e!1428065 (and tp!701627 (inv!35683 (_2!15274 (_1!15275 (h!31672 (minValue!3341 (v!29873 (underlying!6367 (v!29874 (underlying!6368 (cache!3374 thiss!28822)))))))))) e!1428064 tp_is_empty!10115 setRes!20264 tp!701623))))

(declare-fun condSetEmpty!20264 () Bool)

(assert (=> b!2234484 (= condSetEmpty!20264 (= (_2!15275 (h!31672 (minValue!3341 (v!29873 (underlying!6367 (v!29874 (underlying!6368 (cache!3374 thiss!28822)))))))) ((as const (Array Context!3986 Bool)) false)))))

(assert (= b!2234484 b!2234483))

(assert (= (and b!2234484 condSetEmpty!20264) setIsEmpty!20264))

(assert (= (and b!2234484 (not condSetEmpty!20264)) setNonEmpty!20264))

(assert (= setNonEmpty!20264 b!2234482))

(assert (= (and b!2234311 ((_ is Cons!26271) (minValue!3341 (v!29873 (underlying!6367 (v!29874 (underlying!6368 (cache!3374 thiss!28822)))))))) b!2234484))

(declare-fun m!2669311 () Bool)

(assert (=> setNonEmpty!20264 m!2669311))

(declare-fun m!2669313 () Bool)

(assert (=> b!2234484 m!2669313))

(declare-fun b!2234489 () Bool)

(declare-fun e!1428069 () Bool)

(declare-fun tp!701632 () Bool)

(declare-fun tp!701633 () Bool)

(assert (=> b!2234489 (= e!1428069 (and tp!701632 tp!701633))))

(assert (=> b!2234302 (= tp!701579 e!1428069)))

(assert (= (and b!2234302 ((_ is Cons!26270) (exprs!2493 ctx!56))) b!2234489))

(declare-fun setIsEmpty!20265 () Bool)

(declare-fun setRes!20265 () Bool)

(assert (=> setIsEmpty!20265 setRes!20265))

(declare-fun tp!701636 () Bool)

(declare-fun e!1428072 () Bool)

(declare-fun setNonEmpty!20265 () Bool)

(declare-fun setElem!20265 () Context!3986)

(assert (=> setNonEmpty!20265 (= setRes!20265 (and tp!701636 (inv!35683 setElem!20265) e!1428072))))

(declare-fun setRest!20265 () (InoxSet Context!3986))

(assert (=> setNonEmpty!20265 (= (_2!15275 (h!31672 mapDefault!14498)) ((_ map or) (store ((as const (Array Context!3986 Bool)) false) setElem!20265 true) setRest!20265))))

(declare-fun b!2234490 () Bool)

(declare-fun tp!701637 () Bool)

(assert (=> b!2234490 (= e!1428072 tp!701637)))

(declare-fun b!2234491 () Bool)

(declare-fun e!1428070 () Bool)

(declare-fun tp!701635 () Bool)

(assert (=> b!2234491 (= e!1428070 tp!701635)))

(declare-fun e!1428071 () Bool)

(assert (=> b!2234303 (= tp!701577 e!1428071)))

(declare-fun tp!701638 () Bool)

(declare-fun tp!701634 () Bool)

(declare-fun b!2234492 () Bool)

(assert (=> b!2234492 (= e!1428071 (and tp!701638 (inv!35683 (_2!15274 (_1!15275 (h!31672 mapDefault!14498)))) e!1428070 tp_is_empty!10115 setRes!20265 tp!701634))))

(declare-fun condSetEmpty!20265 () Bool)

(assert (=> b!2234492 (= condSetEmpty!20265 (= (_2!15275 (h!31672 mapDefault!14498)) ((as const (Array Context!3986 Bool)) false)))))

(assert (= b!2234492 b!2234491))

(assert (= (and b!2234492 condSetEmpty!20265) setIsEmpty!20265))

(assert (= (and b!2234492 (not condSetEmpty!20265)) setNonEmpty!20265))

(assert (= setNonEmpty!20265 b!2234490))

(assert (= (and b!2234303 ((_ is Cons!26271) mapDefault!14498)) b!2234492))

(declare-fun m!2669315 () Bool)

(assert (=> setNonEmpty!20265 m!2669315))

(declare-fun m!2669317 () Bool)

(assert (=> b!2234492 m!2669317))

(declare-fun b!2234493 () Bool)

(declare-fun e!1428073 () Bool)

(declare-fun tp!701639 () Bool)

(declare-fun tp!701640 () Bool)

(assert (=> b!2234493 (= e!1428073 (and tp!701639 tp!701640))))

(assert (=> b!2234299 (= tp!701568 e!1428073)))

(assert (= (and b!2234299 ((_ is Cons!26270) (exprs!2493 setElem!20260))) b!2234493))

(declare-fun b!2234494 () Bool)

(declare-fun e!1428074 () Bool)

(assert (=> b!2234494 (= e!1428074 tp_is_empty!10115)))

(declare-fun b!2234496 () Bool)

(declare-fun tp!701641 () Bool)

(assert (=> b!2234496 (= e!1428074 tp!701641)))

(assert (=> b!2234296 (= tp!701571 e!1428074)))

(declare-fun b!2234495 () Bool)

(declare-fun tp!701645 () Bool)

(declare-fun tp!701644 () Bool)

(assert (=> b!2234495 (= e!1428074 (and tp!701645 tp!701644))))

(declare-fun b!2234497 () Bool)

(declare-fun tp!701642 () Bool)

(declare-fun tp!701643 () Bool)

(assert (=> b!2234497 (= e!1428074 (and tp!701642 tp!701643))))

(assert (= (and b!2234296 ((_ is ElementMatch!6445) (regOne!13402 r!4773))) b!2234494))

(assert (= (and b!2234296 ((_ is Concat!10783) (regOne!13402 r!4773))) b!2234495))

(assert (= (and b!2234296 ((_ is Star!6445) (regOne!13402 r!4773))) b!2234496))

(assert (= (and b!2234296 ((_ is Union!6445) (regOne!13402 r!4773))) b!2234497))

(declare-fun b!2234498 () Bool)

(declare-fun e!1428075 () Bool)

(assert (=> b!2234498 (= e!1428075 tp_is_empty!10115)))

(declare-fun b!2234500 () Bool)

(declare-fun tp!701646 () Bool)

(assert (=> b!2234500 (= e!1428075 tp!701646)))

(assert (=> b!2234296 (= tp!701570 e!1428075)))

(declare-fun b!2234499 () Bool)

(declare-fun tp!701650 () Bool)

(declare-fun tp!701649 () Bool)

(assert (=> b!2234499 (= e!1428075 (and tp!701650 tp!701649))))

(declare-fun b!2234501 () Bool)

(declare-fun tp!701647 () Bool)

(declare-fun tp!701648 () Bool)

(assert (=> b!2234501 (= e!1428075 (and tp!701647 tp!701648))))

(assert (= (and b!2234296 ((_ is ElementMatch!6445) (regTwo!13402 r!4773))) b!2234498))

(assert (= (and b!2234296 ((_ is Concat!10783) (regTwo!13402 r!4773))) b!2234499))

(assert (= (and b!2234296 ((_ is Star!6445) (regTwo!13402 r!4773))) b!2234500))

(assert (= (and b!2234296 ((_ is Union!6445) (regTwo!13402 r!4773))) b!2234501))

(declare-fun condMapEmpty!14501 () Bool)

(declare-fun mapDefault!14501 () List!26365)

(assert (=> mapNonEmpty!14498 (= condMapEmpty!14501 (= mapRest!14498 ((as const (Array (_ BitVec 32) List!26365)) mapDefault!14501)))))

(declare-fun e!1428092 () Bool)

(declare-fun mapRes!14501 () Bool)

(assert (=> mapNonEmpty!14498 (= tp!701580 (and e!1428092 mapRes!14501))))

(declare-fun setNonEmpty!20270 () Bool)

(declare-fun setRes!20270 () Bool)

(declare-fun setElem!20271 () Context!3986)

(declare-fun tp!701681 () Bool)

(declare-fun e!1428088 () Bool)

(assert (=> setNonEmpty!20270 (= setRes!20270 (and tp!701681 (inv!35683 setElem!20271) e!1428088))))

(declare-fun setRest!20270 () (InoxSet Context!3986))

(assert (=> setNonEmpty!20270 (= (_2!15275 (h!31672 mapDefault!14501)) ((_ map or) (store ((as const (Array Context!3986 Bool)) false) setElem!20271 true) setRest!20270))))

(declare-fun mapNonEmpty!14501 () Bool)

(declare-fun tp!701680 () Bool)

(declare-fun e!1428090 () Bool)

(assert (=> mapNonEmpty!14501 (= mapRes!14501 (and tp!701680 e!1428090))))

(declare-fun mapValue!14501 () List!26365)

(declare-fun mapKey!14501 () (_ BitVec 32))

(declare-fun mapRest!14501 () (Array (_ BitVec 32) List!26365))

(assert (=> mapNonEmpty!14501 (= mapRest!14498 (store mapRest!14501 mapKey!14501 mapValue!14501))))

(declare-fun b!2234516 () Bool)

(declare-fun tp!701675 () Bool)

(assert (=> b!2234516 (= e!1428088 tp!701675)))

(declare-fun b!2234517 () Bool)

(declare-fun e!1428089 () Bool)

(declare-fun tp!701676 () Bool)

(assert (=> b!2234517 (= e!1428089 tp!701676)))

(declare-fun setIsEmpty!20270 () Bool)

(assert (=> setIsEmpty!20270 setRes!20270))

(declare-fun b!2234518 () Bool)

(declare-fun e!1428093 () Bool)

(declare-fun tp!701678 () Bool)

(assert (=> b!2234518 (= e!1428093 tp!701678)))

(declare-fun tp!701683 () Bool)

(declare-fun e!1428091 () Bool)

(declare-fun tp!701682 () Bool)

(declare-fun b!2234519 () Bool)

(assert (=> b!2234519 (= e!1428092 (and tp!701683 (inv!35683 (_2!15274 (_1!15275 (h!31672 mapDefault!14501)))) e!1428091 tp_is_empty!10115 setRes!20270 tp!701682))))

(declare-fun condSetEmpty!20270 () Bool)

(assert (=> b!2234519 (= condSetEmpty!20270 (= (_2!15275 (h!31672 mapDefault!14501)) ((as const (Array Context!3986 Bool)) false)))))

(declare-fun setIsEmpty!20271 () Bool)

(declare-fun setRes!20271 () Bool)

(assert (=> setIsEmpty!20271 setRes!20271))

(declare-fun b!2234520 () Bool)

(declare-fun tp!701677 () Bool)

(declare-fun tp!701673 () Bool)

(assert (=> b!2234520 (= e!1428090 (and tp!701677 (inv!35683 (_2!15274 (_1!15275 (h!31672 mapValue!14501)))) e!1428089 tp_is_empty!10115 setRes!20271 tp!701673))))

(declare-fun condSetEmpty!20271 () Bool)

(assert (=> b!2234520 (= condSetEmpty!20271 (= (_2!15275 (h!31672 mapValue!14501)) ((as const (Array Context!3986 Bool)) false)))))

(declare-fun b!2234521 () Bool)

(declare-fun tp!701674 () Bool)

(assert (=> b!2234521 (= e!1428091 tp!701674)))

(declare-fun mapIsEmpty!14501 () Bool)

(assert (=> mapIsEmpty!14501 mapRes!14501))

(declare-fun tp!701679 () Bool)

(declare-fun setNonEmpty!20271 () Bool)

(declare-fun setElem!20270 () Context!3986)

(assert (=> setNonEmpty!20271 (= setRes!20271 (and tp!701679 (inv!35683 setElem!20270) e!1428093))))

(declare-fun setRest!20271 () (InoxSet Context!3986))

(assert (=> setNonEmpty!20271 (= (_2!15275 (h!31672 mapValue!14501)) ((_ map or) (store ((as const (Array Context!3986 Bool)) false) setElem!20270 true) setRest!20271))))

(assert (= (and mapNonEmpty!14498 condMapEmpty!14501) mapIsEmpty!14501))

(assert (= (and mapNonEmpty!14498 (not condMapEmpty!14501)) mapNonEmpty!14501))

(assert (= b!2234520 b!2234517))

(assert (= (and b!2234520 condSetEmpty!20271) setIsEmpty!20271))

(assert (= (and b!2234520 (not condSetEmpty!20271)) setNonEmpty!20271))

(assert (= setNonEmpty!20271 b!2234518))

(assert (= (and mapNonEmpty!14501 ((_ is Cons!26271) mapValue!14501)) b!2234520))

(assert (= b!2234519 b!2234521))

(assert (= (and b!2234519 condSetEmpty!20270) setIsEmpty!20270))

(assert (= (and b!2234519 (not condSetEmpty!20270)) setNonEmpty!20270))

(assert (= setNonEmpty!20270 b!2234516))

(assert (= (and mapNonEmpty!14498 ((_ is Cons!26271) mapDefault!14501)) b!2234519))

(declare-fun m!2669319 () Bool)

(assert (=> setNonEmpty!20271 m!2669319))

(declare-fun m!2669321 () Bool)

(assert (=> b!2234520 m!2669321))

(declare-fun m!2669323 () Bool)

(assert (=> mapNonEmpty!14501 m!2669323))

(declare-fun m!2669325 () Bool)

(assert (=> b!2234519 m!2669325))

(declare-fun m!2669327 () Bool)

(assert (=> setNonEmpty!20270 m!2669327))

(declare-fun setIsEmpty!20272 () Bool)

(declare-fun setRes!20272 () Bool)

(assert (=> setIsEmpty!20272 setRes!20272))

(declare-fun tp!701686 () Bool)

(declare-fun e!1428096 () Bool)

(declare-fun setNonEmpty!20272 () Bool)

(declare-fun setElem!20272 () Context!3986)

(assert (=> setNonEmpty!20272 (= setRes!20272 (and tp!701686 (inv!35683 setElem!20272) e!1428096))))

(declare-fun setRest!20272 () (InoxSet Context!3986))

(assert (=> setNonEmpty!20272 (= (_2!15275 (h!31672 mapValue!14498)) ((_ map or) (store ((as const (Array Context!3986 Bool)) false) setElem!20272 true) setRest!20272))))

(declare-fun b!2234522 () Bool)

(declare-fun tp!701687 () Bool)

(assert (=> b!2234522 (= e!1428096 tp!701687)))

(declare-fun b!2234523 () Bool)

(declare-fun e!1428094 () Bool)

(declare-fun tp!701685 () Bool)

(assert (=> b!2234523 (= e!1428094 tp!701685)))

(declare-fun e!1428095 () Bool)

(assert (=> mapNonEmpty!14498 (= tp!701575 e!1428095)))

(declare-fun tp!701688 () Bool)

(declare-fun b!2234524 () Bool)

(declare-fun tp!701684 () Bool)

(assert (=> b!2234524 (= e!1428095 (and tp!701688 (inv!35683 (_2!15274 (_1!15275 (h!31672 mapValue!14498)))) e!1428094 tp_is_empty!10115 setRes!20272 tp!701684))))

(declare-fun condSetEmpty!20272 () Bool)

(assert (=> b!2234524 (= condSetEmpty!20272 (= (_2!15275 (h!31672 mapValue!14498)) ((as const (Array Context!3986 Bool)) false)))))

(assert (= b!2234524 b!2234523))

(assert (= (and b!2234524 condSetEmpty!20272) setIsEmpty!20272))

(assert (= (and b!2234524 (not condSetEmpty!20272)) setNonEmpty!20272))

(assert (= setNonEmpty!20272 b!2234522))

(assert (= (and mapNonEmpty!14498 ((_ is Cons!26271) mapValue!14498)) b!2234524))

(declare-fun m!2669329 () Bool)

(assert (=> setNonEmpty!20272 m!2669329))

(declare-fun m!2669331 () Bool)

(assert (=> b!2234524 m!2669331))

(declare-fun condSetEmpty!20275 () Bool)

(assert (=> setNonEmpty!20260 (= condSetEmpty!20275 (= setRest!20260 ((as const (Array Context!3986 Bool)) false)))))

(declare-fun setRes!20275 () Bool)

(assert (=> setNonEmpty!20260 (= tp!701573 setRes!20275)))

(declare-fun setIsEmpty!20275 () Bool)

(assert (=> setIsEmpty!20275 setRes!20275))

(declare-fun setNonEmpty!20275 () Bool)

(declare-fun tp!701694 () Bool)

(declare-fun e!1428099 () Bool)

(declare-fun setElem!20275 () Context!3986)

(assert (=> setNonEmpty!20275 (= setRes!20275 (and tp!701694 (inv!35683 setElem!20275) e!1428099))))

(declare-fun setRest!20275 () (InoxSet Context!3986))

(assert (=> setNonEmpty!20275 (= setRest!20260 ((_ map or) (store ((as const (Array Context!3986 Bool)) false) setElem!20275 true) setRest!20275))))

(declare-fun b!2234529 () Bool)

(declare-fun tp!701693 () Bool)

(assert (=> b!2234529 (= e!1428099 tp!701693)))

(assert (= (and setNonEmpty!20260 condSetEmpty!20275) setIsEmpty!20275))

(assert (= (and setNonEmpty!20260 (not condSetEmpty!20275)) setNonEmpty!20275))

(assert (= setNonEmpty!20275 b!2234529))

(declare-fun m!2669333 () Bool)

(assert (=> setNonEmpty!20275 m!2669333))

(declare-fun b_lambda!71679 () Bool)

(assert (= b_lambda!71677 (or b!2234300 b_lambda!71679)))

(declare-fun bs!454168 () Bool)

(declare-fun d!665336 () Bool)

(assert (= bs!454168 (and d!665336 b!2234300)))

(declare-fun res!956353 () Bool)

(declare-fun e!1428100 () Bool)

(assert (=> bs!454168 (=> (not res!956353) (not e!1428100))))

(assert (=> bs!454168 (= res!956353 (validRegex!2411 (_1!15274 (_1!15275 (h!31672 (toList!1338 (map!5382 (_2!15276 lt!831175))))))))))

(assert (=> bs!454168 (= (dynLambda!11527 lambda!84399 (h!31672 (toList!1338 (map!5382 (_2!15276 lt!831175))))) e!1428100)))

(declare-fun b!2234530 () Bool)

(assert (=> b!2234530 (= e!1428100 (= (_2!15275 (h!31672 (toList!1338 (map!5382 (_2!15276 lt!831175))))) (derivationStepZipperDown!58 (_1!15274 (_1!15275 (h!31672 (toList!1338 (map!5382 (_2!15276 lt!831175)))))) (_2!15274 (_1!15275 (h!31672 (toList!1338 (map!5382 (_2!15276 lt!831175)))))) (_3!2451 (_1!15275 (h!31672 (toList!1338 (map!5382 (_2!15276 lt!831175)))))))))))

(assert (= (and bs!454168 res!956353) b!2234530))

(declare-fun m!2669335 () Bool)

(assert (=> bs!454168 m!2669335))

(declare-fun m!2669337 () Bool)

(assert (=> b!2234530 m!2669337))

(assert (=> b!2234387 d!665336))

(check-sat (not b!2234517) (not b!2234496) (not bm!134556) (not b!2234489) (not d!665332) tp_is_empty!10115 (not bm!134554) (not bm!134546) (not bm!134545) (not bm!134544) (not b!2234381) (not b!2234464) (not d!665314) (not mapNonEmpty!14501) (not b!2234465) (not b!2234522) (not b!2234516) (not b!2234470) (not b!2234524) (not b!2234346) (not bm!134475) (not b!2234529) (not bm!134560) (not b!2234495) (not b!2234518) (not b!2234436) (not bm!134549) b_and!174781 (not bm!134540) (not b!2234492) (not bm!134563) (not b!2234443) (not bm!134458) (not b!2234491) (not b!2234497) (not b!2234448) (not bm!134539) (not bm!134548) (not bm!134541) (not bm!134547) (not b!2234490) (not b!2234530) (not bm!134456) (not bm!134476) (not b!2234499) (not b!2234500) (not b!2234462) (not b!2234493) (not b!2234431) (not bm!134565) (not setNonEmpty!20264) (not bm!134552) (not bm!134559) (not b!2234345) (not setNonEmpty!20265) (not d!665334) (not bs!454168) (not b!2234435) (not d!665330) (not setNonEmpty!20272) (not bm!134566) (not b!2234469) (not bm!134558) (not b_next!65497) (not b!2234441) (not b_lambda!71679) (not b_next!65499) (not b!2234460) (not bm!134569) (not b!2234501) (not b!2234519) (not bm!134543) (not b!2234466) (not b!2234468) (not b!2234521) (not setNonEmpty!20275) (not b!2234349) (not b!2234461) (not b!2234484) (not d!665316) (not setNonEmpty!20270) (not b!2234330) (not bm!134561) (not bm!134557) (not b!2234520) (not b!2234483) (not setNonEmpty!20263) (not bm!134564) (not b!2234388) (not bm!134550) (not bm!134473) (not b!2234480) (not b!2234481) (not b!2234482) (not b!2234442) (not bm!134562) b_and!174783 (not bm!134555) (not d!665326) (not bm!134567) (not b!2234523) (not b!2234479) (not bm!134568) (not setNonEmpty!20271) (not bm!134542))
(check-sat b_and!174783 b_and!174781 (not b_next!65497) (not b_next!65499))
