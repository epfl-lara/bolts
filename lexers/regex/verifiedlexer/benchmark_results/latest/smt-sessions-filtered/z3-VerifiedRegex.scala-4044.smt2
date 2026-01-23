; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!218046 () Bool)

(assert start!218046)

(declare-fun b!2237644 () Bool)

(declare-fun b_free!64929 () Bool)

(declare-fun b_next!65633 () Bool)

(assert (=> b!2237644 (= b_free!64929 (not b_next!65633))))

(declare-fun tp!704046 () Bool)

(declare-fun b_and!174925 () Bool)

(assert (=> b!2237644 (= tp!704046 b_and!174925)))

(declare-fun b!2237640 () Bool)

(declare-fun b_free!64931 () Bool)

(declare-fun b_next!65635 () Bool)

(assert (=> b!2237640 (= b_free!64931 (not b_next!65635))))

(declare-fun tp!704039 () Bool)

(declare-fun b_and!174927 () Bool)

(assert (=> b!2237640 (= tp!704039 b_and!174927)))

(declare-fun e!1430332 () Bool)

(declare-fun e!1430335 () Bool)

(assert (=> b!2237640 (= e!1430332 (and e!1430335 tp!704039))))

(declare-fun b!2237641 () Bool)

(declare-fun e!1430338 () Bool)

(assert (=> b!2237641 (= e!1430338 e!1430332)))

(declare-fun mapNonEmpty!14633 () Bool)

(declare-fun mapRes!14633 () Bool)

(declare-fun tp!704042 () Bool)

(declare-fun tp!704043 () Bool)

(assert (=> mapNonEmpty!14633 (= mapRes!14633 (and tp!704042 tp!704043))))

(declare-datatypes ((C!13104 0))(
  ( (C!13105 (val!7600 Int)) )
))
(declare-datatypes ((Regex!6479 0))(
  ( (ElementMatch!6479 (c!356492 C!13104)) (Concat!10817 (regOne!13470 Regex!6479) (regTwo!13470 Regex!6479)) (EmptyExpr!6479) (Star!6479 (reg!6808 Regex!6479)) (EmptyLang!6479) (Union!6479 (regOne!13471 Regex!6479) (regTwo!13471 Regex!6479)) )
))
(declare-datatypes ((List!26441 0))(
  ( (Nil!26347) (Cons!26347 (h!31748 Regex!6479) (t!199865 List!26441)) )
))
(declare-datatypes ((Context!4054 0))(
  ( (Context!4055 (exprs!2527 List!26441)) )
))
(declare-datatypes ((tuple3!4030 0))(
  ( (tuple3!4031 (_1!15358 Regex!6479) (_2!15358 Context!4054) (_3!2485 C!13104)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25746 0))(
  ( (tuple2!25747 (_1!15359 tuple3!4030) (_2!15359 (InoxSet Context!4054))) )
))
(declare-datatypes ((List!26442 0))(
  ( (Nil!26348) (Cons!26348 (h!31749 tuple2!25746) (t!199866 List!26442)) )
))
(declare-fun mapRest!14633 () (Array (_ BitVec 32) List!26442))

(declare-fun mapKey!14633 () (_ BitVec 32))

(declare-datatypes ((Hashable!3027 0))(
  ( (HashableExt!3026 (__x!17577 Int)) )
))
(declare-datatypes ((array!10856 0))(
  ( (array!10857 (arr!4821 (Array (_ BitVec 32) List!26442)) (size!20602 (_ BitVec 32))) )
))
(declare-datatypes ((array!10858 0))(
  ( (array!10859 (arr!4822 (Array (_ BitVec 32) (_ BitVec 64))) (size!20603 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6234 0))(
  ( (LongMapFixedSize!6235 (defaultEntry!3482 Int) (mask!7710 (_ BitVec 32)) (extraKeys!3365 (_ BitVec 32)) (zeroValue!3375 List!26442) (minValue!3375 List!26442) (_size!6281 (_ BitVec 32)) (_keys!3414 array!10858) (_values!3397 array!10856) (_vacant!3178 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12285 0))(
  ( (Cell!12286 (v!29959 LongMapFixedSize!6234)) )
))
(declare-datatypes ((MutLongMap!3117 0))(
  ( (LongMap!3117 (underlying!6435 Cell!12285)) (MutLongMapExt!3116 (__x!17578 Int)) )
))
(declare-datatypes ((Cell!12287 0))(
  ( (Cell!12288 (v!29960 MutLongMap!3117)) )
))
(declare-datatypes ((MutableMap!3027 0))(
  ( (MutableMapExt!3026 (__x!17579 Int)) (HashMap!3027 (underlying!6436 Cell!12287) (hashF!4950 Hashable!3027) (_size!6282 (_ BitVec 32)) (defaultValue!3189 Int)) )
))
(declare-datatypes ((CacheDown!2100 0))(
  ( (CacheDown!2101 (cache!3408 MutableMap!3027)) )
))
(declare-fun thiss!28743 () CacheDown!2100)

(declare-fun mapValue!14633 () List!26442)

(assert (=> mapNonEmpty!14633 (= (arr!4821 (_values!3397 (v!29959 (underlying!6435 (v!29960 (underlying!6436 (cache!3408 thiss!28743))))))) (store mapRest!14633 mapKey!14633 mapValue!14633))))

(declare-fun b!2237642 () Bool)

(declare-fun e!1430329 () Bool)

(declare-fun tp_is_empty!10179 () Bool)

(assert (=> b!2237642 (= e!1430329 tp_is_empty!10179)))

(declare-fun b!2237643 () Bool)

(declare-fun e!1430330 () Bool)

(declare-fun lt!832277 () MutLongMap!3117)

(get-info :version)

(assert (=> b!2237643 (= e!1430335 (and e!1430330 ((_ is LongMap!3117) lt!832277)))))

(assert (=> b!2237643 (= lt!832277 (v!29960 (underlying!6436 (cache!3408 thiss!28743))))))

(declare-fun b!2237645 () Bool)

(declare-fun e!1430333 () Bool)

(assert (=> b!2237645 (= e!1430330 e!1430333)))

(declare-fun b!2237646 () Bool)

(declare-fun res!957099 () Bool)

(declare-fun e!1430331 () Bool)

(assert (=> b!2237646 (=> (not res!957099) (not e!1430331))))

(assert (=> b!2237646 (= res!957099 ((_ is HashMap!3027) (cache!3408 thiss!28743)))))

(declare-fun mapIsEmpty!14633 () Bool)

(assert (=> mapIsEmpty!14633 mapRes!14633))

(declare-fun b!2237647 () Bool)

(declare-fun e!1430334 () Bool)

(declare-fun tp!704034 () Bool)

(assert (=> b!2237647 (= e!1430334 (and tp!704034 mapRes!14633))))

(declare-fun condMapEmpty!14633 () Bool)

(declare-fun mapDefault!14633 () List!26442)

(assert (=> b!2237647 (= condMapEmpty!14633 (= (arr!4821 (_values!3397 (v!29959 (underlying!6435 (v!29960 (underlying!6436 (cache!3408 thiss!28743))))))) ((as const (Array (_ BitVec 32) List!26442)) mapDefault!14633)))))

(declare-fun b!2237648 () Bool)

(declare-fun res!957100 () Bool)

(assert (=> b!2237648 (=> (not res!957100) (not e!1430331))))

(declare-fun r!4750 () Regex!6479)

(declare-fun a!970 () C!13104)

(declare-fun ctx!48 () Context!4054)

(declare-fun contains!4411 (MutableMap!3027 tuple3!4030) Bool)

(assert (=> b!2237648 (= res!957100 (contains!4411 (cache!3408 thiss!28743) (tuple3!4031 r!4750 ctx!48 a!970)))))

(declare-fun b!2237649 () Bool)

(declare-fun tp!704044 () Bool)

(assert (=> b!2237649 (= e!1430329 tp!704044)))

(declare-fun res!957098 () Bool)

(assert (=> start!218046 (=> (not res!957098) (not e!1430331))))

(declare-fun validCacheMapDown!325 (MutableMap!3027) Bool)

(assert (=> start!218046 (= res!957098 (validCacheMapDown!325 (cache!3408 thiss!28743)))))

(assert (=> start!218046 e!1430331))

(declare-fun inv!35788 (CacheDown!2100) Bool)

(assert (=> start!218046 (and (inv!35788 thiss!28743) e!1430338)))

(assert (=> start!218046 e!1430329))

(declare-fun e!1430337 () Bool)

(declare-fun inv!35789 (Context!4054) Bool)

(assert (=> start!218046 (and (inv!35789 ctx!48) e!1430337)))

(assert (=> start!218046 tp_is_empty!10179))

(declare-fun tp!704037 () Bool)

(declare-fun tp!704036 () Bool)

(declare-fun e!1430336 () Bool)

(declare-fun array_inv!3461 (array!10858) Bool)

(declare-fun array_inv!3462 (array!10856) Bool)

(assert (=> b!2237644 (= e!1430336 (and tp!704046 tp!704036 tp!704037 (array_inv!3461 (_keys!3414 (v!29959 (underlying!6435 (v!29960 (underlying!6436 (cache!3408 thiss!28743))))))) (array_inv!3462 (_values!3397 (v!29959 (underlying!6435 (v!29960 (underlying!6436 (cache!3408 thiss!28743))))))) e!1430334))))

(declare-fun b!2237650 () Bool)

(declare-fun tp!704045 () Bool)

(assert (=> b!2237650 (= e!1430337 tp!704045)))

(declare-fun b!2237651 () Bool)

(declare-fun res!957097 () Bool)

(assert (=> b!2237651 (=> (not res!957097) (not e!1430331))))

(declare-fun valid!2351 (MutableMap!3027) Bool)

(assert (=> b!2237651 (= res!957097 (valid!2351 (cache!3408 thiss!28743)))))

(declare-fun b!2237652 () Bool)

(assert (=> b!2237652 (= e!1430331 false)))

(declare-fun lt!832278 () Bool)

(declare-fun lambda!84559 () Int)

(declare-fun forall!5411 (List!26442 Int) Bool)

(declare-datatypes ((ListMap!847 0))(
  ( (ListMap!848 (toList!1363 List!26442)) )
))
(declare-fun map!5424 (MutableMap!3027) ListMap!847)

(assert (=> b!2237652 (= lt!832278 (forall!5411 (toList!1363 (map!5424 (cache!3408 thiss!28743))) lambda!84559))))

(declare-fun b!2237653 () Bool)

(assert (=> b!2237653 (= e!1430333 e!1430336)))

(declare-fun b!2237654 () Bool)

(declare-fun tp!704040 () Bool)

(declare-fun tp!704035 () Bool)

(assert (=> b!2237654 (= e!1430329 (and tp!704040 tp!704035))))

(declare-fun b!2237655 () Bool)

(declare-fun tp!704041 () Bool)

(declare-fun tp!704038 () Bool)

(assert (=> b!2237655 (= e!1430329 (and tp!704041 tp!704038))))

(assert (= (and start!218046 res!957098) b!2237648))

(assert (= (and b!2237648 res!957100) b!2237646))

(assert (= (and b!2237646 res!957099) b!2237651))

(assert (= (and b!2237651 res!957097) b!2237652))

(assert (= (and b!2237647 condMapEmpty!14633) mapIsEmpty!14633))

(assert (= (and b!2237647 (not condMapEmpty!14633)) mapNonEmpty!14633))

(assert (= b!2237644 b!2237647))

(assert (= b!2237653 b!2237644))

(assert (= b!2237645 b!2237653))

(assert (= (and b!2237643 ((_ is LongMap!3117) (v!29960 (underlying!6436 (cache!3408 thiss!28743))))) b!2237645))

(assert (= b!2237640 b!2237643))

(assert (= (and b!2237641 ((_ is HashMap!3027) (cache!3408 thiss!28743))) b!2237640))

(assert (= start!218046 b!2237641))

(assert (= (and start!218046 ((_ is ElementMatch!6479) r!4750)) b!2237642))

(assert (= (and start!218046 ((_ is Concat!10817) r!4750)) b!2237655))

(assert (= (and start!218046 ((_ is Star!6479) r!4750)) b!2237649))

(assert (= (and start!218046 ((_ is Union!6479) r!4750)) b!2237654))

(assert (= start!218046 b!2237650))

(declare-fun m!2670985 () Bool)

(assert (=> b!2237652 m!2670985))

(declare-fun m!2670987 () Bool)

(assert (=> b!2237652 m!2670987))

(declare-fun m!2670989 () Bool)

(assert (=> b!2237648 m!2670989))

(declare-fun m!2670991 () Bool)

(assert (=> b!2237644 m!2670991))

(declare-fun m!2670993 () Bool)

(assert (=> b!2237644 m!2670993))

(declare-fun m!2670995 () Bool)

(assert (=> mapNonEmpty!14633 m!2670995))

(declare-fun m!2670997 () Bool)

(assert (=> start!218046 m!2670997))

(declare-fun m!2670999 () Bool)

(assert (=> start!218046 m!2670999))

(declare-fun m!2671001 () Bool)

(assert (=> start!218046 m!2671001))

(declare-fun m!2671003 () Bool)

(assert (=> b!2237651 m!2671003))

(check-sat (not b!2237647) (not b!2237655) (not b!2237654) b_and!174925 (not b!2237649) (not b_next!65633) b_and!174927 (not b_next!65635) (not b!2237648) (not b!2237651) (not b!2237652) (not b!2237644) (not b!2237650) (not start!218046) tp_is_empty!10179 (not mapNonEmpty!14633))
(check-sat b_and!174925 b_and!174927 (not b_next!65635) (not b_next!65633))
