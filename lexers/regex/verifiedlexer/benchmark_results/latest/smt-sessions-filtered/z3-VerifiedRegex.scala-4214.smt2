; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!228324 () Bool)

(assert start!228324)

(declare-fun b!2314446 () Bool)

(declare-fun b_free!70125 () Bool)

(declare-fun b_next!70829 () Bool)

(assert (=> b!2314446 (= b_free!70125 (not b_next!70829))))

(declare-fun tp!735052 () Bool)

(declare-fun b_and!185025 () Bool)

(assert (=> b!2314446 (= tp!735052 b_and!185025)))

(declare-fun b!2314444 () Bool)

(declare-fun b_free!70127 () Bool)

(declare-fun b_next!70831 () Bool)

(assert (=> b!2314444 (= b_free!70127 (not b_next!70831))))

(declare-fun tp!735038 () Bool)

(declare-fun b_and!185027 () Bool)

(assert (=> b!2314444 (= tp!735038 b_and!185027)))

(declare-fun b!2314455 () Bool)

(declare-fun b_free!70129 () Bool)

(declare-fun b_next!70833 () Bool)

(assert (=> b!2314455 (= b_free!70129 (not b_next!70833))))

(declare-fun tp!735050 () Bool)

(declare-fun b_and!185029 () Bool)

(assert (=> b!2314455 (= tp!735050 b_and!185029)))

(declare-fun b!2314454 () Bool)

(declare-fun b_free!70131 () Bool)

(declare-fun b_next!70835 () Bool)

(assert (=> b!2314454 (= b_free!70131 (not b_next!70835))))

(declare-fun tp!735043 () Bool)

(declare-fun b_and!185031 () Bool)

(assert (=> b!2314454 (= tp!735043 b_and!185031)))

(declare-fun b!2314441 () Bool)

(declare-fun e!1483759 () Bool)

(declare-fun from!1022 () Int)

(declare-fun lt!858071 () Int)

(assert (=> b!2314441 (= e!1483759 (or (< (+ 1 from!1022) 0) (> (+ 1 from!1022) lt!858071)))))

(declare-datatypes ((C!13724 0))(
  ( (C!13725 (val!7918 Int)) )
))
(declare-datatypes ((List!27691 0))(
  ( (Nil!27593) (Cons!27593 (h!32994 C!13724) (t!207291 List!27691)) )
))
(declare-datatypes ((IArray!18031 0))(
  ( (IArray!18032 (innerList!9073 List!27691)) )
))
(declare-datatypes ((Conc!9013 0))(
  ( (Node!9013 (left!20915 Conc!9013) (right!21245 Conc!9013) (csize!18256 Int) (cheight!9224 Int)) (Leaf!13228 (xs!11955 IArray!18031) (csize!18257 Int)) (Empty!9013) )
))
(declare-datatypes ((BalanceConc!17758 0))(
  ( (BalanceConc!17759 (c!366844 Conc!9013)) )
))
(declare-fun totalInput!830 () BalanceConc!17758)

(declare-datatypes ((array!11226 0))(
  ( (array!11227 (arr!4980 (Array (_ BitVec 32) (_ BitVec 64))) (size!21808 (_ BitVec 32))) )
))
(declare-datatypes ((Regex!6783 0))(
  ( (ElementMatch!6783 (c!366845 C!13724)) (Concat!11371 (regOne!14078 Regex!6783) (regTwo!14078 Regex!6783)) (EmptyExpr!6783) (Star!6783 (reg!7112 Regex!6783)) (EmptyLang!6783) (Union!6783 (regOne!14079 Regex!6783) (regTwo!14079 Regex!6783)) )
))
(declare-datatypes ((List!27692 0))(
  ( (Nil!27594) (Cons!27594 (h!32995 Regex!6783) (t!207292 List!27692)) )
))
(declare-datatypes ((Context!4210 0))(
  ( (Context!4211 (exprs!2605 List!27692)) )
))
(declare-datatypes ((tuple3!4122 0))(
  ( (tuple3!4123 (_1!16303 Regex!6783) (_2!16303 Context!4210) (_3!2531 C!13724)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!27544 0))(
  ( (tuple2!27545 (_1!16304 tuple3!4122) (_2!16304 (InoxSet Context!4210))) )
))
(declare-datatypes ((List!27693 0))(
  ( (Nil!27595) (Cons!27595 (h!32996 tuple2!27544) (t!207293 List!27693)) )
))
(declare-datatypes ((array!11228 0))(
  ( (array!11229 (arr!4981 (Array (_ BitVec 32) List!27693)) (size!21809 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6404 0))(
  ( (LongMapFixedSize!6405 (defaultEntry!3567 Int) (mask!7965 (_ BitVec 32)) (extraKeys!3450 (_ BitVec 32)) (zeroValue!3460 List!27693) (minValue!3460 List!27693) (_size!6451 (_ BitVec 32)) (_keys!3499 array!11226) (_values!3482 array!11228) (_vacant!3263 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12625 0))(
  ( (Cell!12626 (v!30644 LongMapFixedSize!6404)) )
))
(declare-datatypes ((Hashable!3112 0))(
  ( (HashableExt!3111 (__x!18308 Int)) )
))
(declare-datatypes ((MutLongMap!3202 0))(
  ( (LongMap!3202 (underlying!6609 Cell!12625)) (MutLongMapExt!3201 (__x!18309 Int)) )
))
(declare-datatypes ((Cell!12627 0))(
  ( (Cell!12628 (v!30645 MutLongMap!3202)) )
))
(declare-datatypes ((MutableMap!3112 0))(
  ( (MutableMapExt!3111 (__x!18310 Int)) (HashMap!3112 (underlying!6610 Cell!12627) (hashF!5035 Hashable!3112) (_size!6452 (_ BitVec 32)) (defaultValue!3274 Int)) )
))
(declare-datatypes ((CacheDown!2172 0))(
  ( (CacheDown!2173 (cache!3491 MutableMap!3112)) )
))
(declare-fun cacheDown!1084 () CacheDown!2172)

(declare-datatypes ((tuple2!27546 0))(
  ( (tuple2!27547 (_1!16305 Context!4210) (_2!16305 C!13724)) )
))
(declare-datatypes ((tuple2!27548 0))(
  ( (tuple2!27549 (_1!16306 tuple2!27546) (_2!16306 (InoxSet Context!4210))) )
))
(declare-datatypes ((List!27694 0))(
  ( (Nil!27596) (Cons!27596 (h!32997 tuple2!27548) (t!207294 List!27694)) )
))
(declare-datatypes ((array!11230 0))(
  ( (array!11231 (arr!4982 (Array (_ BitVec 32) List!27694)) (size!21810 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6406 0))(
  ( (LongMapFixedSize!6407 (defaultEntry!3568 Int) (mask!7966 (_ BitVec 32)) (extraKeys!3451 (_ BitVec 32)) (zeroValue!3461 List!27694) (minValue!3461 List!27694) (_size!6453 (_ BitVec 32)) (_keys!3500 array!11226) (_values!3483 array!11230) (_vacant!3264 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12629 0))(
  ( (Cell!12630 (v!30646 LongMapFixedSize!6406)) )
))
(declare-datatypes ((Hashable!3113 0))(
  ( (HashableExt!3112 (__x!18311 Int)) )
))
(declare-datatypes ((MutLongMap!3203 0))(
  ( (LongMap!3203 (underlying!6611 Cell!12629)) (MutLongMapExt!3202 (__x!18312 Int)) )
))
(declare-datatypes ((Cell!12631 0))(
  ( (Cell!12632 (v!30647 MutLongMap!3203)) )
))
(declare-datatypes ((MutableMap!3113 0))(
  ( (MutableMapExt!3112 (__x!18313 Int)) (HashMap!3113 (underlying!6612 Cell!12631) (hashF!5036 Hashable!3113) (_size!6454 (_ BitVec 32)) (defaultValue!3275 Int)) )
))
(declare-datatypes ((CacheUp!2068 0))(
  ( (CacheUp!2069 (cache!3492 MutableMap!3113)) )
))
(declare-fun cacheUp!965 () CacheUp!2068)

(declare-fun z!3800 () (InoxSet Context!4210))

(declare-datatypes ((tuple3!4124 0))(
  ( (tuple3!4125 (_1!16307 (InoxSet Context!4210)) (_2!16307 CacheUp!2068) (_3!2532 CacheDown!2172)) )
))
(declare-fun lt!858070 () tuple3!4124)

(declare-fun derivationStepZipperMem!68 ((InoxSet Context!4210) C!13724 CacheUp!2068 CacheDown!2172) tuple3!4124)

(declare-fun apply!6683 (BalanceConc!17758 Int) C!13724)

(assert (=> b!2314441 (= lt!858070 (derivationStepZipperMem!68 z!3800 (apply!6683 totalInput!830 from!1022) cacheUp!965 cacheDown!1084))))

(declare-fun b!2314442 () Bool)

(declare-fun res!989004 () Bool)

(assert (=> b!2314442 (=> (not res!989004) (not e!1483759))))

(declare-fun lostCauseZipper!406 ((InoxSet Context!4210)) Bool)

(assert (=> b!2314442 (= res!989004 (not (lostCauseZipper!406 z!3800)))))

(declare-fun b!2314443 () Bool)

(declare-fun e!1483765 () Bool)

(declare-fun tp!735051 () Bool)

(assert (=> b!2314443 (= e!1483765 tp!735051)))

(declare-fun mapNonEmpty!14986 () Bool)

(declare-fun mapRes!14986 () Bool)

(declare-fun tp!735049 () Bool)

(declare-fun tp!735054 () Bool)

(assert (=> mapNonEmpty!14986 (= mapRes!14986 (and tp!735049 tp!735054))))

(declare-fun mapValue!14987 () List!27693)

(declare-fun mapKey!14986 () (_ BitVec 32))

(declare-fun mapRest!14987 () (Array (_ BitVec 32) List!27693))

(assert (=> mapNonEmpty!14986 (= (arr!4981 (_values!3482 (v!30644 (underlying!6609 (v!30645 (underlying!6610 (cache!3491 cacheDown!1084))))))) (store mapRest!14987 mapKey!14986 mapValue!14987))))

(declare-fun e!1483762 () Bool)

(declare-fun e!1483754 () Bool)

(assert (=> b!2314444 (= e!1483762 (and e!1483754 tp!735038))))

(declare-fun b!2314445 () Bool)

(declare-fun e!1483761 () Bool)

(declare-fun tp!735045 () Bool)

(assert (=> b!2314445 (= e!1483761 (and tp!735045 mapRes!14986))))

(declare-fun condMapEmpty!14987 () Bool)

(declare-fun mapDefault!14986 () List!27693)

(assert (=> b!2314445 (= condMapEmpty!14987 (= (arr!4981 (_values!3482 (v!30644 (underlying!6609 (v!30645 (underlying!6610 (cache!3491 cacheDown!1084))))))) ((as const (Array (_ BitVec 32) List!27693)) mapDefault!14986)))))

(declare-fun res!989005 () Bool)

(declare-fun e!1483763 () Bool)

(assert (=> start!228324 (=> (not res!989005) (not e!1483763))))

(assert (=> start!228324 (= res!989005 (>= from!1022 0))))

(assert (=> start!228324 e!1483763))

(declare-fun e!1483752 () Bool)

(declare-fun inv!37365 (BalanceConc!17758) Bool)

(assert (=> start!228324 (and (inv!37365 totalInput!830) e!1483752)))

(assert (=> start!228324 true))

(declare-fun e!1483749 () Bool)

(declare-fun inv!37366 (CacheDown!2172) Bool)

(assert (=> start!228324 (and (inv!37366 cacheDown!1084) e!1483749)))

(declare-fun e!1483757 () Bool)

(declare-fun inv!37367 (CacheUp!2068) Bool)

(assert (=> start!228324 (and (inv!37367 cacheUp!965) e!1483757)))

(declare-fun condSetEmpty!20851 () Bool)

(assert (=> start!228324 (= condSetEmpty!20851 (= z!3800 ((as const (Array Context!4210 Bool)) false)))))

(declare-fun setRes!20851 () Bool)

(assert (=> start!228324 setRes!20851))

(declare-fun e!1483751 () Bool)

(declare-fun tp!735040 () Bool)

(declare-fun e!1483756 () Bool)

(declare-fun tp!735042 () Bool)

(declare-fun array_inv!3580 (array!11226) Bool)

(declare-fun array_inv!3581 (array!11230) Bool)

(assert (=> b!2314446 (= e!1483756 (and tp!735052 tp!735042 tp!735040 (array_inv!3580 (_keys!3500 (v!30646 (underlying!6611 (v!30647 (underlying!6612 (cache!3492 cacheUp!965))))))) (array_inv!3581 (_values!3483 (v!30646 (underlying!6611 (v!30647 (underlying!6612 (cache!3492 cacheUp!965))))))) e!1483751))))

(declare-fun b!2314447 () Bool)

(declare-fun e!1483764 () Bool)

(assert (=> b!2314447 (= e!1483757 e!1483764)))

(declare-fun b!2314448 () Bool)

(assert (=> b!2314448 (= e!1483749 e!1483762)))

(declare-fun setIsEmpty!20851 () Bool)

(assert (=> setIsEmpty!20851 setRes!20851))

(declare-fun b!2314449 () Bool)

(declare-fun e!1483760 () Bool)

(declare-fun e!1483753 () Bool)

(declare-fun lt!858069 () MutLongMap!3203)

(get-info :version)

(assert (=> b!2314449 (= e!1483760 (and e!1483753 ((_ is LongMap!3203) lt!858069)))))

(assert (=> b!2314449 (= lt!858069 (v!30647 (underlying!6612 (cache!3492 cacheUp!965))))))

(declare-fun setNonEmpty!20851 () Bool)

(declare-fun setElem!20851 () Context!4210)

(declare-fun tp!735053 () Bool)

(declare-fun inv!37368 (Context!4210) Bool)

(assert (=> setNonEmpty!20851 (= setRes!20851 (and tp!735053 (inv!37368 setElem!20851) e!1483765))))

(declare-fun setRest!20851 () (InoxSet Context!4210))

(assert (=> setNonEmpty!20851 (= z!3800 ((_ map or) (store ((as const (Array Context!4210 Bool)) false) setElem!20851 true) setRest!20851))))

(declare-fun b!2314450 () Bool)

(declare-fun e!1483750 () Bool)

(declare-fun e!1483755 () Bool)

(assert (=> b!2314450 (= e!1483750 e!1483755)))

(declare-fun b!2314451 () Bool)

(declare-fun e!1483758 () Bool)

(declare-fun lt!858068 () MutLongMap!3202)

(assert (=> b!2314451 (= e!1483754 (and e!1483758 ((_ is LongMap!3202) lt!858068)))))

(assert (=> b!2314451 (= lt!858068 (v!30645 (underlying!6610 (cache!3491 cacheDown!1084))))))

(declare-fun b!2314452 () Bool)

(declare-fun tp!735039 () Bool)

(declare-fun inv!37369 (Conc!9013) Bool)

(assert (=> b!2314452 (= e!1483752 (and (inv!37369 (c!366844 totalInput!830)) tp!735039))))

(declare-fun mapIsEmpty!14986 () Bool)

(assert (=> mapIsEmpty!14986 mapRes!14986))

(declare-fun b!2314453 () Bool)

(declare-fun tp!735044 () Bool)

(declare-fun mapRes!14987 () Bool)

(assert (=> b!2314453 (= e!1483751 (and tp!735044 mapRes!14987))))

(declare-fun condMapEmpty!14986 () Bool)

(declare-fun mapDefault!14987 () List!27694)

(assert (=> b!2314453 (= condMapEmpty!14986 (= (arr!4982 (_values!3483 (v!30646 (underlying!6611 (v!30647 (underlying!6612 (cache!3492 cacheUp!965))))))) ((as const (Array (_ BitVec 32) List!27694)) mapDefault!14987)))))

(declare-fun tp!735041 () Bool)

(declare-fun tp!735047 () Bool)

(declare-fun array_inv!3582 (array!11228) Bool)

(assert (=> b!2314454 (= e!1483755 (and tp!735043 tp!735047 tp!735041 (array_inv!3580 (_keys!3499 (v!30644 (underlying!6609 (v!30645 (underlying!6610 (cache!3491 cacheDown!1084))))))) (array_inv!3582 (_values!3482 (v!30644 (underlying!6609 (v!30645 (underlying!6610 (cache!3491 cacheDown!1084))))))) e!1483761))))

(assert (=> b!2314455 (= e!1483764 (and e!1483760 tp!735050))))

(declare-fun mapIsEmpty!14987 () Bool)

(assert (=> mapIsEmpty!14987 mapRes!14987))

(declare-fun b!2314456 () Bool)

(declare-fun e!1483768 () Bool)

(assert (=> b!2314456 (= e!1483768 e!1483756)))

(declare-fun mapNonEmpty!14987 () Bool)

(declare-fun tp!735046 () Bool)

(declare-fun tp!735048 () Bool)

(assert (=> mapNonEmpty!14987 (= mapRes!14987 (and tp!735046 tp!735048))))

(declare-fun mapValue!14986 () List!27694)

(declare-fun mapKey!14987 () (_ BitVec 32))

(declare-fun mapRest!14986 () (Array (_ BitVec 32) List!27694))

(assert (=> mapNonEmpty!14987 (= (arr!4982 (_values!3483 (v!30646 (underlying!6611 (v!30647 (underlying!6612 (cache!3492 cacheUp!965))))))) (store mapRest!14986 mapKey!14987 mapValue!14986))))

(declare-fun b!2314457 () Bool)

(assert (=> b!2314457 (= e!1483753 e!1483768)))

(declare-fun b!2314458 () Bool)

(assert (=> b!2314458 (= e!1483763 e!1483759)))

(declare-fun res!989003 () Bool)

(assert (=> b!2314458 (=> (not res!989003) (not e!1483759))))

(declare-fun totalInputSize!275 () Int)

(assert (=> b!2314458 (= res!989003 (and (<= from!1022 lt!858071) (= totalInputSize!275 lt!858071) (not (= from!1022 totalInputSize!275))))))

(declare-fun size!21811 (BalanceConc!17758) Int)

(assert (=> b!2314458 (= lt!858071 (size!21811 totalInput!830))))

(declare-fun b!2314459 () Bool)

(assert (=> b!2314459 (= e!1483758 e!1483750)))

(assert (= (and start!228324 res!989005) b!2314458))

(assert (= (and b!2314458 res!989003) b!2314442))

(assert (= (and b!2314442 res!989004) b!2314441))

(assert (= start!228324 b!2314452))

(assert (= (and b!2314445 condMapEmpty!14987) mapIsEmpty!14986))

(assert (= (and b!2314445 (not condMapEmpty!14987)) mapNonEmpty!14986))

(assert (= b!2314454 b!2314445))

(assert (= b!2314450 b!2314454))

(assert (= b!2314459 b!2314450))

(assert (= (and b!2314451 ((_ is LongMap!3202) (v!30645 (underlying!6610 (cache!3491 cacheDown!1084))))) b!2314459))

(assert (= b!2314444 b!2314451))

(assert (= (and b!2314448 ((_ is HashMap!3112) (cache!3491 cacheDown!1084))) b!2314444))

(assert (= start!228324 b!2314448))

(assert (= (and b!2314453 condMapEmpty!14986) mapIsEmpty!14987))

(assert (= (and b!2314453 (not condMapEmpty!14986)) mapNonEmpty!14987))

(assert (= b!2314446 b!2314453))

(assert (= b!2314456 b!2314446))

(assert (= b!2314457 b!2314456))

(assert (= (and b!2314449 ((_ is LongMap!3203) (v!30647 (underlying!6612 (cache!3492 cacheUp!965))))) b!2314457))

(assert (= b!2314455 b!2314449))

(assert (= (and b!2314447 ((_ is HashMap!3113) (cache!3492 cacheUp!965))) b!2314455))

(assert (= start!228324 b!2314447))

(assert (= (and start!228324 condSetEmpty!20851) setIsEmpty!20851))

(assert (= (and start!228324 (not condSetEmpty!20851)) setNonEmpty!20851))

(assert (= setNonEmpty!20851 b!2314443))

(declare-fun m!2741391 () Bool)

(assert (=> b!2314454 m!2741391))

(declare-fun m!2741393 () Bool)

(assert (=> b!2314454 m!2741393))

(declare-fun m!2741395 () Bool)

(assert (=> b!2314446 m!2741395))

(declare-fun m!2741397 () Bool)

(assert (=> b!2314446 m!2741397))

(declare-fun m!2741399 () Bool)

(assert (=> b!2314458 m!2741399))

(declare-fun m!2741401 () Bool)

(assert (=> b!2314442 m!2741401))

(declare-fun m!2741403 () Bool)

(assert (=> b!2314441 m!2741403))

(assert (=> b!2314441 m!2741403))

(declare-fun m!2741405 () Bool)

(assert (=> b!2314441 m!2741405))

(declare-fun m!2741407 () Bool)

(assert (=> setNonEmpty!20851 m!2741407))

(declare-fun m!2741409 () Bool)

(assert (=> mapNonEmpty!14987 m!2741409))

(declare-fun m!2741411 () Bool)

(assert (=> mapNonEmpty!14986 m!2741411))

(declare-fun m!2741413 () Bool)

(assert (=> b!2314452 m!2741413))

(declare-fun m!2741415 () Bool)

(assert (=> start!228324 m!2741415))

(declare-fun m!2741417 () Bool)

(assert (=> start!228324 m!2741417))

(declare-fun m!2741419 () Bool)

(assert (=> start!228324 m!2741419))

(check-sat (not b!2314454) (not start!228324) (not b_next!70833) (not b!2314458) b_and!185031 b_and!185029 (not b!2314443) (not b!2314445) (not b!2314442) (not b!2314453) (not b!2314446) (not b!2314452) (not setNonEmpty!20851) (not b_next!70829) (not b_next!70835) (not mapNonEmpty!14986) (not b_next!70831) (not mapNonEmpty!14987) b_and!185025 b_and!185027 (not b!2314441))
(check-sat (not b_next!70833) (not b_next!70829) b_and!185031 b_and!185029 (not b_next!70835) (not b_next!70831) b_and!185025 b_and!185027)
