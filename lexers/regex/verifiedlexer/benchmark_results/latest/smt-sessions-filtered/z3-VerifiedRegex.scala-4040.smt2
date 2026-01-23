; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!218012 () Bool)

(assert start!218012)

(declare-fun b!2237224 () Bool)

(declare-fun b_free!64897 () Bool)

(declare-fun b_next!65601 () Bool)

(assert (=> b!2237224 (= b_free!64897 (not b_next!65601))))

(declare-fun tp!703629 () Bool)

(declare-fun b_and!174893 () Bool)

(assert (=> b!2237224 (= tp!703629 b_and!174893)))

(declare-fun b!2237210 () Bool)

(declare-fun b_free!64899 () Bool)

(declare-fun b_next!65603 () Bool)

(assert (=> b!2237210 (= b_free!64899 (not b_next!65603))))

(declare-fun tp!703628 () Bool)

(declare-fun b_and!174895 () Bool)

(assert (=> b!2237210 (= tp!703628 b_and!174895)))

(declare-fun mapNonEmpty!14603 () Bool)

(declare-fun mapRes!14603 () Bool)

(declare-fun tp!703630 () Bool)

(declare-fun tp!703626 () Bool)

(assert (=> mapNonEmpty!14603 (= mapRes!14603 (and tp!703630 tp!703626))))

(declare-fun mapKey!14603 () (_ BitVec 32))

(declare-datatypes ((C!13088 0))(
  ( (C!13089 (val!7592 Int)) )
))
(declare-datatypes ((Regex!6471 0))(
  ( (ElementMatch!6471 (c!356484 C!13088)) (Concat!10809 (regOne!13454 Regex!6471) (regTwo!13454 Regex!6471)) (EmptyExpr!6471) (Star!6471 (reg!6800 Regex!6471)) (EmptyLang!6471) (Union!6471 (regOne!13455 Regex!6471) (regTwo!13455 Regex!6471)) )
))
(declare-datatypes ((List!26424 0))(
  ( (Nil!26330) (Cons!26330 (h!31731 Regex!6471) (t!199848 List!26424)) )
))
(declare-datatypes ((Context!4038 0))(
  ( (Context!4039 (exprs!2519 List!26424)) )
))
(declare-datatypes ((tuple3!4014 0))(
  ( (tuple3!4015 (_1!15341 Regex!6471) (_2!15341 Context!4038) (_3!2477 C!13088)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25728 0))(
  ( (tuple2!25729 (_1!15342 tuple3!4014) (_2!15342 (InoxSet Context!4038))) )
))
(declare-datatypes ((List!26425 0))(
  ( (Nil!26331) (Cons!26331 (h!31732 tuple2!25728) (t!199849 List!26425)) )
))
(declare-fun mapRest!14603 () (Array (_ BitVec 32) List!26425))

(declare-fun mapValue!14603 () List!26425)

(declare-datatypes ((array!10820 0))(
  ( (array!10821 (arr!4805 (Array (_ BitVec 32) (_ BitVec 64))) (size!20586 (_ BitVec 32))) )
))
(declare-datatypes ((array!10822 0))(
  ( (array!10823 (arr!4806 (Array (_ BitVec 32) List!26425)) (size!20587 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6218 0))(
  ( (LongMapFixedSize!6219 (defaultEntry!3474 Int) (mask!7698 (_ BitVec 32)) (extraKeys!3357 (_ BitVec 32)) (zeroValue!3367 List!26425) (minValue!3367 List!26425) (_size!6265 (_ BitVec 32)) (_keys!3406 array!10820) (_values!3389 array!10822) (_vacant!3170 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12253 0))(
  ( (Cell!12254 (v!29942 LongMapFixedSize!6218)) )
))
(declare-datatypes ((MutLongMap!3109 0))(
  ( (LongMap!3109 (underlying!6419 Cell!12253)) (MutLongMapExt!3108 (__x!17553 Int)) )
))
(declare-datatypes ((Cell!12255 0))(
  ( (Cell!12256 (v!29943 MutLongMap!3109)) )
))
(declare-datatypes ((Hashable!3019 0))(
  ( (HashableExt!3018 (__x!17554 Int)) )
))
(declare-datatypes ((MutableMap!3019 0))(
  ( (MutableMapExt!3018 (__x!17555 Int)) (HashMap!3019 (underlying!6420 Cell!12255) (hashF!4942 Hashable!3019) (_size!6266 (_ BitVec 32)) (defaultValue!3181 Int)) )
))
(declare-datatypes ((CacheDown!2084 0))(
  ( (CacheDown!2085 (cache!3400 MutableMap!3019)) )
))
(declare-fun thiss!28797 () CacheDown!2084)

(assert (=> mapNonEmpty!14603 (= (arr!4806 (_values!3389 (v!29942 (underlying!6419 (v!29943 (underlying!6420 (cache!3400 thiss!28797))))))) (store mapRest!14603 mapKey!14603 mapValue!14603))))

(declare-fun tp!703621 () Bool)

(declare-fun e!1429981 () Bool)

(declare-fun e!1429980 () Bool)

(declare-fun tp!703632 () Bool)

(declare-fun array_inv!3453 (array!10820) Bool)

(declare-fun array_inv!3454 (array!10822) Bool)

(assert (=> b!2237210 (= e!1429980 (and tp!703628 tp!703621 tp!703632 (array_inv!3453 (_keys!3406 (v!29942 (underlying!6419 (v!29943 (underlying!6420 (cache!3400 thiss!28797))))))) (array_inv!3454 (_values!3389 (v!29942 (underlying!6419 (v!29943 (underlying!6420 (cache!3400 thiss!28797))))))) e!1429981))))

(declare-fun b!2237211 () Bool)

(declare-fun e!1429976 () Bool)

(declare-fun tp_is_empty!10167 () Bool)

(assert (=> b!2237211 (= e!1429976 tp_is_empty!10167)))

(declare-fun res!957011 () Bool)

(declare-fun e!1429977 () Bool)

(assert (=> start!218012 (=> (not res!957011) (not e!1429977))))

(declare-fun validCacheMapDown!320 (MutableMap!3019) Bool)

(assert (=> start!218012 (= res!957011 (validCacheMapDown!320 (cache!3400 thiss!28797)))))

(assert (=> start!218012 e!1429977))

(declare-fun e!1429978 () Bool)

(declare-fun inv!35766 (CacheDown!2084) Bool)

(assert (=> start!218012 (and (inv!35766 thiss!28797) e!1429978)))

(assert (=> start!218012 e!1429976))

(declare-fun ctx!52 () Context!4038)

(declare-fun e!1429984 () Bool)

(declare-fun inv!35767 (Context!4038) Bool)

(assert (=> start!218012 (and (inv!35767 ctx!52) e!1429984)))

(assert (=> start!218012 tp_is_empty!10167))

(declare-fun b!2237212 () Bool)

(declare-fun tp!703620 () Bool)

(assert (=> b!2237212 (= e!1429981 (and tp!703620 mapRes!14603))))

(declare-fun condMapEmpty!14603 () Bool)

(declare-fun mapDefault!14603 () List!26425)

(assert (=> b!2237212 (= condMapEmpty!14603 (= (arr!4806 (_values!3389 (v!29942 (underlying!6419 (v!29943 (underlying!6420 (cache!3400 thiss!28797))))))) ((as const (Array (_ BitVec 32) List!26425)) mapDefault!14603)))))

(declare-fun b!2237213 () Bool)

(declare-fun res!957014 () Bool)

(assert (=> b!2237213 (=> (not res!957014) (not e!1429977))))

(assert (=> b!2237213 (= res!957014 false)))

(declare-fun b!2237214 () Bool)

(declare-fun res!957012 () Bool)

(assert (=> b!2237214 (=> (not res!957012) (not e!1429977))))

(declare-fun r!4766 () Regex!6471)

(declare-fun validRegex!2433 (Regex!6471) Bool)

(assert (=> b!2237214 (= res!957012 (validRegex!2433 r!4766))))

(declare-fun b!2237215 () Bool)

(declare-fun a!997 () C!13088)

(declare-datatypes ((Option!5127 0))(
  ( (None!5126) (Some!5126 (v!29944 (InoxSet Context!4038))) )
))
(declare-fun get!7963 (Option!5127) (InoxSet Context!4038))

(declare-fun derivationStepZipperDown!73 (Regex!6471 Context!4038 C!13088) (InoxSet Context!4038))

(assert (=> b!2237215 (= e!1429977 (not (= (get!7963 None!5126) (derivationStepZipperDown!73 r!4766 ctx!52 a!997))))))

(declare-fun b!2237216 () Bool)

(declare-fun res!957013 () Bool)

(assert (=> b!2237216 (=> (not res!957013) (not e!1429977))))

(declare-fun contains!4408 (MutableMap!3019 tuple3!4014) Bool)

(assert (=> b!2237216 (= res!957013 (not (contains!4408 (cache!3400 thiss!28797) (tuple3!4015 r!4766 ctx!52 a!997))))))

(declare-fun b!2237217 () Bool)

(declare-fun e!1429985 () Bool)

(declare-fun e!1429986 () Bool)

(assert (=> b!2237217 (= e!1429985 e!1429986)))

(declare-fun b!2237218 () Bool)

(declare-fun e!1429979 () Bool)

(assert (=> b!2237218 (= e!1429978 e!1429979)))

(declare-fun b!2237219 () Bool)

(declare-fun tp!703631 () Bool)

(assert (=> b!2237219 (= e!1429976 tp!703631)))

(declare-fun mapIsEmpty!14603 () Bool)

(assert (=> mapIsEmpty!14603 mapRes!14603))

(declare-fun b!2237220 () Bool)

(declare-fun tp!703623 () Bool)

(declare-fun tp!703622 () Bool)

(assert (=> b!2237220 (= e!1429976 (and tp!703623 tp!703622))))

(declare-fun b!2237221 () Bool)

(assert (=> b!2237221 (= e!1429986 e!1429980)))

(declare-fun b!2237222 () Bool)

(declare-fun e!1429983 () Bool)

(declare-fun lt!832248 () MutLongMap!3109)

(get-info :version)

(assert (=> b!2237222 (= e!1429983 (and e!1429985 ((_ is LongMap!3109) lt!832248)))))

(assert (=> b!2237222 (= lt!832248 (v!29943 (underlying!6420 (cache!3400 thiss!28797))))))

(declare-fun b!2237223 () Bool)

(declare-fun tp!703625 () Bool)

(declare-fun tp!703624 () Bool)

(assert (=> b!2237223 (= e!1429976 (and tp!703625 tp!703624))))

(assert (=> b!2237224 (= e!1429979 (and e!1429983 tp!703629))))

(declare-fun b!2237225 () Bool)

(declare-fun tp!703627 () Bool)

(assert (=> b!2237225 (= e!1429984 tp!703627)))

(assert (= (and start!218012 res!957011) b!2237214))

(assert (= (and b!2237214 res!957012) b!2237216))

(assert (= (and b!2237216 res!957013) b!2237213))

(assert (= (and b!2237213 res!957014) b!2237215))

(assert (= (and b!2237212 condMapEmpty!14603) mapIsEmpty!14603))

(assert (= (and b!2237212 (not condMapEmpty!14603)) mapNonEmpty!14603))

(assert (= b!2237210 b!2237212))

(assert (= b!2237221 b!2237210))

(assert (= b!2237217 b!2237221))

(assert (= (and b!2237222 ((_ is LongMap!3109) (v!29943 (underlying!6420 (cache!3400 thiss!28797))))) b!2237217))

(assert (= b!2237224 b!2237222))

(assert (= (and b!2237218 ((_ is HashMap!3019) (cache!3400 thiss!28797))) b!2237224))

(assert (= start!218012 b!2237218))

(assert (= (and start!218012 ((_ is ElementMatch!6471) r!4766)) b!2237211))

(assert (= (and start!218012 ((_ is Concat!10809) r!4766)) b!2237220))

(assert (= (and start!218012 ((_ is Star!6471) r!4766)) b!2237219))

(assert (= (and start!218012 ((_ is Union!6471) r!4766)) b!2237223))

(assert (= start!218012 b!2237225))

(declare-fun m!2670789 () Bool)

(assert (=> b!2237216 m!2670789))

(declare-fun m!2670791 () Bool)

(assert (=> b!2237215 m!2670791))

(declare-fun m!2670793 () Bool)

(assert (=> b!2237215 m!2670793))

(declare-fun m!2670795 () Bool)

(assert (=> start!218012 m!2670795))

(declare-fun m!2670797 () Bool)

(assert (=> start!218012 m!2670797))

(declare-fun m!2670799 () Bool)

(assert (=> start!218012 m!2670799))

(declare-fun m!2670801 () Bool)

(assert (=> b!2237214 m!2670801))

(declare-fun m!2670803 () Bool)

(assert (=> b!2237210 m!2670803))

(declare-fun m!2670805 () Bool)

(assert (=> b!2237210 m!2670805))

(declare-fun m!2670807 () Bool)

(assert (=> mapNonEmpty!14603 m!2670807))

(check-sat b_and!174893 (not b!2237220) (not b_next!65603) (not b!2237210) (not b!2237219) (not b!2237225) (not b!2237216) tp_is_empty!10167 (not b!2237212) (not mapNonEmpty!14603) (not b_next!65601) (not b!2237215) (not b!2237223) b_and!174895 (not b!2237214) (not start!218012))
(check-sat b_and!174895 b_and!174893 (not b_next!65603) (not b_next!65601))
