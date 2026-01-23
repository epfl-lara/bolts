; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217636 () Bool)

(assert start!217636)

(declare-fun b!2232101 () Bool)

(declare-fun b_free!64721 () Bool)

(declare-fun b_next!65425 () Bool)

(assert (=> b!2232101 (= b_free!64721 (not b_next!65425))))

(declare-fun tp!699986 () Bool)

(declare-fun b_and!174709 () Bool)

(assert (=> b!2232101 (= tp!699986 b_and!174709)))

(declare-fun b!2232118 () Bool)

(declare-fun b_free!64723 () Bool)

(declare-fun b_next!65427 () Bool)

(assert (=> b!2232118 (= b_free!64723 (not b_next!65427))))

(declare-fun tp!699989 () Bool)

(declare-fun b_and!174711 () Bool)

(assert (=> b!2232118 (= tp!699989 b_and!174711)))

(declare-fun e!1426502 () Bool)

(declare-fun tp!699993 () Bool)

(declare-fun tp!699987 () Bool)

(declare-datatypes ((C!13000 0))(
  ( (C!13001 (val!7548 Int)) )
))
(declare-datatypes ((Regex!6427 0))(
  ( (ElementMatch!6427 (c!355955 C!13000)) (Concat!10765 (regOne!13366 Regex!6427) (regTwo!13366 Regex!6427)) (EmptyExpr!6427) (Star!6427 (reg!6756 Regex!6427)) (EmptyLang!6427) (Union!6427 (regOne!13367 Regex!6427) (regTwo!13367 Regex!6427)) )
))
(declare-datatypes ((List!26326 0))(
  ( (Nil!26232) (Cons!26232 (h!31633 Regex!6427) (t!199744 List!26326)) )
))
(declare-datatypes ((Context!3950 0))(
  ( (Context!3951 (exprs!2475 List!26326)) )
))
(declare-datatypes ((array!10616 0))(
  ( (array!10617 (arr!4717 (Array (_ BitVec 32) (_ BitVec 64))) (size!20498 (_ BitVec 32))) )
))
(declare-datatypes ((tuple3!3926 0))(
  ( (tuple3!3927 (_1!15226 Regex!6427) (_2!15226 Context!3950) (_3!2433 C!13000)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25586 0))(
  ( (tuple2!25587 (_1!15227 tuple3!3926) (_2!15227 (InoxSet Context!3950))) )
))
(declare-datatypes ((List!26327 0))(
  ( (Nil!26233) (Cons!26233 (h!31634 tuple2!25586) (t!199745 List!26327)) )
))
(declare-datatypes ((array!10618 0))(
  ( (array!10619 (arr!4718 (Array (_ BitVec 32) List!26327)) (size!20499 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6130 0))(
  ( (LongMapFixedSize!6131 (defaultEntry!3430 Int) (mask!7632 (_ BitVec 32)) (extraKeys!3313 (_ BitVec 32)) (zeroValue!3323 List!26327) (minValue!3323 List!26327) (_size!6177 (_ BitVec 32)) (_keys!3362 array!10616) (_values!3345 array!10618) (_vacant!3126 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12077 0))(
  ( (Cell!12078 (v!29828 LongMapFixedSize!6130)) )
))
(declare-datatypes ((MutLongMap!3065 0))(
  ( (LongMap!3065 (underlying!6331 Cell!12077)) (MutLongMapExt!3064 (__x!17421 Int)) )
))
(declare-datatypes ((Cell!12079 0))(
  ( (Cell!12080 (v!29829 MutLongMap!3065)) )
))
(declare-datatypes ((Hashable!2975 0))(
  ( (HashableExt!2974 (__x!17422 Int)) )
))
(declare-datatypes ((MutableMap!2975 0))(
  ( (MutableMapExt!2974 (__x!17423 Int)) (HashMap!2975 (underlying!6332 Cell!12079) (hashF!4898 Hashable!2975) (_size!6178 (_ BitVec 32)) (defaultValue!3137 Int)) )
))
(declare-datatypes ((CacheDown!1996 0))(
  ( (CacheDown!1997 (cache!3356 MutableMap!2975)) )
))
(declare-fun cacheDown!839 () CacheDown!1996)

(declare-fun e!1426504 () Bool)

(declare-fun array_inv!3385 (array!10616) Bool)

(declare-fun array_inv!3386 (array!10618) Bool)

(assert (=> b!2232101 (= e!1426504 (and tp!699986 tp!699987 tp!699993 (array_inv!3385 (_keys!3362 (v!29828 (underlying!6331 (v!29829 (underlying!6332 (cache!3356 cacheDown!839))))))) (array_inv!3386 (_values!3345 (v!29828 (underlying!6331 (v!29829 (underlying!6332 (cache!3356 cacheDown!839))))))) e!1426502))))

(declare-fun b!2232102 () Bool)

(declare-fun e!1426507 () Bool)

(declare-fun tp!699984 () Bool)

(declare-fun tp!699981 () Bool)

(assert (=> b!2232102 (= e!1426507 (and tp!699984 tp!699981))))

(declare-fun b!2232103 () Bool)

(declare-fun res!955818 () Bool)

(declare-fun e!1426510 () Bool)

(assert (=> b!2232103 (=> (not res!955818) (not e!1426510))))

(declare-fun e!1426503 () Bool)

(assert (=> b!2232103 (= res!955818 e!1426503)))

(declare-fun res!955815 () Bool)

(assert (=> b!2232103 (=> res!955815 e!1426503)))

(declare-fun expr!64 () Regex!6427)

(get-info :version)

(assert (=> b!2232103 (= res!955815 (not ((_ is Concat!10765) expr!64)))))

(declare-fun res!955817 () Bool)

(assert (=> start!217636 (=> (not res!955817) (not e!1426510))))

(declare-fun validRegex!2398 (Regex!6427) Bool)

(assert (=> start!217636 (= res!955817 (validRegex!2398 expr!64))))

(assert (=> start!217636 e!1426510))

(assert (=> start!217636 e!1426507))

(declare-fun e!1426501 () Bool)

(declare-fun inv!35626 (CacheDown!1996) Bool)

(assert (=> start!217636 (and (inv!35626 cacheDown!839) e!1426501)))

(declare-fun context!86 () Context!3950)

(declare-fun e!1426506 () Bool)

(declare-fun inv!35627 (Context!3950) Bool)

(assert (=> start!217636 (and (inv!35627 context!86) e!1426506)))

(declare-fun tp_is_empty!10079 () Bool)

(assert (=> start!217636 tp_is_empty!10079))

(declare-fun b!2232104 () Bool)

(declare-fun res!955816 () Bool)

(assert (=> b!2232104 (=> (not res!955816) (not e!1426510))))

(declare-fun a!1167 () C!13000)

(declare-datatypes ((Option!5109 0))(
  ( (None!5108) (Some!5108 (v!29830 (InoxSet Context!3950))) )
))
(declare-fun get!7927 (CacheDown!1996 Regex!6427 Context!3950 C!13000) Option!5109)

(assert (=> b!2232104 (= res!955816 (not ((_ is Some!5108) (get!7927 cacheDown!839 expr!64 context!86 a!1167))))))

(declare-fun b!2232105 () Bool)

(declare-fun e!1426511 () Bool)

(assert (=> b!2232105 (= e!1426511 e!1426504)))

(declare-fun b!2232106 () Bool)

(declare-fun tp!699982 () Bool)

(declare-fun mapRes!14428 () Bool)

(assert (=> b!2232106 (= e!1426502 (and tp!699982 mapRes!14428))))

(declare-fun condMapEmpty!14428 () Bool)

(declare-fun mapDefault!14428 () List!26327)

(assert (=> b!2232106 (= condMapEmpty!14428 (= (arr!4718 (_values!3345 (v!29828 (underlying!6331 (v!29829 (underlying!6332 (cache!3356 cacheDown!839))))))) ((as const (Array (_ BitVec 32) List!26327)) mapDefault!14428)))))

(declare-fun b!2232107 () Bool)

(declare-fun res!955819 () Bool)

(assert (=> b!2232107 (=> (not res!955819) (not e!1426510))))

(assert (=> b!2232107 (= res!955819 (and (or (not ((_ is ElementMatch!6427) expr!64)) (not (= (c!355955 expr!64) a!1167))) (not ((_ is Union!6427) expr!64))))))

(declare-fun b!2232108 () Bool)

(assert (=> b!2232108 (= e!1426507 tp_is_empty!10079)))

(declare-fun b!2232109 () Bool)

(declare-fun res!955820 () Bool)

(assert (=> b!2232109 (=> (not res!955820) (not e!1426510))))

(assert (=> b!2232109 (= res!955820 (and (not ((_ is Concat!10765) expr!64)) ((_ is Star!6427) expr!64)))))

(declare-fun b!2232110 () Bool)

(assert (=> b!2232110 (= e!1426510 (not (validRegex!2398 expr!64)))))

(declare-fun b!2232111 () Bool)

(declare-fun tp!699988 () Bool)

(declare-fun tp!699983 () Bool)

(assert (=> b!2232111 (= e!1426507 (and tp!699988 tp!699983))))

(declare-fun b!2232112 () Bool)

(declare-fun e!1426500 () Bool)

(declare-fun e!1426509 () Bool)

(declare-fun lt!830615 () MutLongMap!3065)

(assert (=> b!2232112 (= e!1426500 (and e!1426509 ((_ is LongMap!3065) lt!830615)))))

(assert (=> b!2232112 (= lt!830615 (v!29829 (underlying!6332 (cache!3356 cacheDown!839))))))

(declare-fun b!2232113 () Bool)

(declare-fun tp!699990 () Bool)

(assert (=> b!2232113 (= e!1426506 tp!699990)))

(declare-fun b!2232114 () Bool)

(declare-fun nullable!1770 (Regex!6427) Bool)

(assert (=> b!2232114 (= e!1426503 (not (nullable!1770 (regOne!13366 expr!64))))))

(declare-fun b!2232115 () Bool)

(declare-fun tp!699992 () Bool)

(assert (=> b!2232115 (= e!1426507 tp!699992)))

(declare-fun b!2232116 () Bool)

(declare-fun e!1426505 () Bool)

(assert (=> b!2232116 (= e!1426501 e!1426505)))

(declare-fun b!2232117 () Bool)

(assert (=> b!2232117 (= e!1426509 e!1426511)))

(assert (=> b!2232118 (= e!1426505 (and e!1426500 tp!699989))))

(declare-fun mapIsEmpty!14428 () Bool)

(assert (=> mapIsEmpty!14428 mapRes!14428))

(declare-fun mapNonEmpty!14428 () Bool)

(declare-fun tp!699991 () Bool)

(declare-fun tp!699985 () Bool)

(assert (=> mapNonEmpty!14428 (= mapRes!14428 (and tp!699991 tp!699985))))

(declare-fun mapValue!14428 () List!26327)

(declare-fun mapRest!14428 () (Array (_ BitVec 32) List!26327))

(declare-fun mapKey!14428 () (_ BitVec 32))

(assert (=> mapNonEmpty!14428 (= (arr!4718 (_values!3345 (v!29828 (underlying!6331 (v!29829 (underlying!6332 (cache!3356 cacheDown!839))))))) (store mapRest!14428 mapKey!14428 mapValue!14428))))

(assert (= (and start!217636 res!955817) b!2232104))

(assert (= (and b!2232104 res!955816) b!2232107))

(assert (= (and b!2232107 res!955819) b!2232103))

(assert (= (and b!2232103 (not res!955815)) b!2232114))

(assert (= (and b!2232103 res!955818) b!2232109))

(assert (= (and b!2232109 res!955820) b!2232110))

(assert (= (and start!217636 ((_ is ElementMatch!6427) expr!64)) b!2232108))

(assert (= (and start!217636 ((_ is Concat!10765) expr!64)) b!2232111))

(assert (= (and start!217636 ((_ is Star!6427) expr!64)) b!2232115))

(assert (= (and start!217636 ((_ is Union!6427) expr!64)) b!2232102))

(assert (= (and b!2232106 condMapEmpty!14428) mapIsEmpty!14428))

(assert (= (and b!2232106 (not condMapEmpty!14428)) mapNonEmpty!14428))

(assert (= b!2232101 b!2232106))

(assert (= b!2232105 b!2232101))

(assert (= b!2232117 b!2232105))

(assert (= (and b!2232112 ((_ is LongMap!3065) (v!29829 (underlying!6332 (cache!3356 cacheDown!839))))) b!2232117))

(assert (= b!2232118 b!2232112))

(assert (= (and b!2232116 ((_ is HashMap!2975) (cache!3356 cacheDown!839))) b!2232118))

(assert (= start!217636 b!2232116))

(assert (= start!217636 b!2232113))

(declare-fun m!2668085 () Bool)

(assert (=> b!2232114 m!2668085))

(declare-fun m!2668087 () Bool)

(assert (=> b!2232104 m!2668087))

(declare-fun m!2668089 () Bool)

(assert (=> mapNonEmpty!14428 m!2668089))

(declare-fun m!2668091 () Bool)

(assert (=> b!2232101 m!2668091))

(declare-fun m!2668093 () Bool)

(assert (=> b!2232101 m!2668093))

(declare-fun m!2668095 () Bool)

(assert (=> start!217636 m!2668095))

(declare-fun m!2668097 () Bool)

(assert (=> start!217636 m!2668097))

(declare-fun m!2668099 () Bool)

(assert (=> start!217636 m!2668099))

(assert (=> b!2232110 m!2668095))

(check-sat (not b!2232101) (not b_next!65425) (not b!2232106) (not b!2232104) (not b!2232102) (not b!2232111) (not start!217636) (not b!2232114) (not b!2232115) b_and!174709 tp_is_empty!10079 (not b!2232113) (not b!2232110) (not mapNonEmpty!14428) b_and!174711 (not b_next!65427))
(check-sat b_and!174711 b_and!174709 (not b_next!65425) (not b_next!65427))
