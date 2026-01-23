; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!218042 () Bool)

(assert start!218042)

(declare-fun b!2237543 () Bool)

(declare-fun b_free!64921 () Bool)

(declare-fun b_next!65625 () Bool)

(assert (=> b!2237543 (= b_free!64921 (not b_next!65625))))

(declare-fun tp!703961 () Bool)

(declare-fun b_and!174917 () Bool)

(assert (=> b!2237543 (= tp!703961 b_and!174917)))

(declare-fun b!2237540 () Bool)

(declare-fun b_free!64923 () Bool)

(declare-fun b_next!65627 () Bool)

(assert (=> b!2237540 (= b_free!64923 (not b_next!65627))))

(declare-fun tp!703962 () Bool)

(declare-fun b_and!174919 () Bool)

(assert (=> b!2237540 (= tp!703962 b_and!174919)))

(declare-fun b!2237536 () Bool)

(declare-fun e!1430262 () Bool)

(declare-fun tp!703954 () Bool)

(assert (=> b!2237536 (= e!1430262 tp!703954)))

(declare-fun setIsEmpty!20443 () Bool)

(declare-fun setRes!20443 () Bool)

(assert (=> setIsEmpty!20443 setRes!20443))

(declare-fun b!2237537 () Bool)

(declare-fun tp!703958 () Bool)

(declare-fun tp!703968 () Bool)

(assert (=> b!2237537 (= e!1430262 (and tp!703958 tp!703968))))

(declare-fun b!2237538 () Bool)

(declare-fun tp_is_empty!10175 () Bool)

(assert (=> b!2237538 (= e!1430262 tp_is_empty!10175)))

(declare-datatypes ((C!13100 0))(
  ( (C!13101 (val!7598 Int)) )
))
(declare-datatypes ((Regex!6477 0))(
  ( (ElementMatch!6477 (c!356490 C!13100)) (Concat!10815 (regOne!13466 Regex!6477) (regTwo!13466 Regex!6477)) (EmptyExpr!6477) (Star!6477 (reg!6806 Regex!6477)) (EmptyLang!6477) (Union!6477 (regOne!13467 Regex!6477) (regTwo!13467 Regex!6477)) )
))
(declare-datatypes ((List!26437 0))(
  ( (Nil!26343) (Cons!26343 (h!31744 Regex!6477) (t!199861 List!26437)) )
))
(declare-datatypes ((Context!4050 0))(
  ( (Context!4051 (exprs!2525 List!26437)) )
))
(declare-fun setElem!20443 () Context!4050)

(declare-fun tp!703952 () Bool)

(declare-fun e!1430261 () Bool)

(declare-fun setNonEmpty!20443 () Bool)

(declare-fun inv!35783 (Context!4050) Bool)

(assert (=> setNonEmpty!20443 (= setRes!20443 (and tp!703952 (inv!35783 setElem!20443) e!1430261))))

(declare-datatypes ((tuple3!4026 0))(
  ( (tuple3!4027 (_1!15354 Regex!6477) (_2!15354 Context!4050) (_3!2483 C!13100)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25742 0))(
  ( (tuple2!25743 (_1!15355 tuple3!4026) (_2!15355 (InoxSet Context!4050))) )
))
(declare-fun _$14!27 () tuple2!25742)

(declare-fun setRest!20443 () (InoxSet Context!4050))

(assert (=> setNonEmpty!20443 (= (_2!15355 _$14!27) ((_ map or) (store ((as const (Array Context!4050 Bool)) false) setElem!20443 true) setRest!20443))))

(declare-fun b!2237539 () Bool)

(declare-fun e!1430256 () Bool)

(declare-fun e!1430268 () Bool)

(assert (=> b!2237539 (= e!1430256 e!1430268)))

(declare-fun e!1430265 () Bool)

(assert (=> b!2237540 (= e!1430268 (and e!1430265 tp!703962))))

(declare-fun mapNonEmpty!14627 () Bool)

(declare-fun mapRes!14627 () Bool)

(declare-fun tp!703964 () Bool)

(declare-fun tp!703957 () Bool)

(assert (=> mapNonEmpty!14627 (= mapRes!14627 (and tp!703964 tp!703957))))

(declare-datatypes ((List!26438 0))(
  ( (Nil!26344) (Cons!26344 (h!31745 tuple2!25742) (t!199862 List!26438)) )
))
(declare-fun mapRest!14627 () (Array (_ BitVec 32) List!26438))

(declare-datatypes ((Hashable!3025 0))(
  ( (HashableExt!3024 (__x!17571 Int)) )
))
(declare-datatypes ((array!10848 0))(
  ( (array!10849 (arr!4817 (Array (_ BitVec 32) List!26438)) (size!20598 (_ BitVec 32))) )
))
(declare-datatypes ((array!10850 0))(
  ( (array!10851 (arr!4818 (Array (_ BitVec 32) (_ BitVec 64))) (size!20599 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6230 0))(
  ( (LongMapFixedSize!6231 (defaultEntry!3480 Int) (mask!7707 (_ BitVec 32)) (extraKeys!3363 (_ BitVec 32)) (zeroValue!3373 List!26438) (minValue!3373 List!26438) (_size!6277 (_ BitVec 32)) (_keys!3412 array!10850) (_values!3395 array!10848) (_vacant!3176 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12277 0))(
  ( (Cell!12278 (v!29955 LongMapFixedSize!6230)) )
))
(declare-datatypes ((MutLongMap!3115 0))(
  ( (LongMap!3115 (underlying!6431 Cell!12277)) (MutLongMapExt!3114 (__x!17572 Int)) )
))
(declare-datatypes ((Cell!12279 0))(
  ( (Cell!12280 (v!29956 MutLongMap!3115)) )
))
(declare-datatypes ((MutableMap!3025 0))(
  ( (MutableMapExt!3024 (__x!17573 Int)) (HashMap!3025 (underlying!6432 Cell!12279) (hashF!4948 Hashable!3025) (_size!6278 (_ BitVec 32)) (defaultValue!3187 Int)) )
))
(declare-datatypes ((CacheDown!2096 0))(
  ( (CacheDown!2097 (cache!3406 MutableMap!3025)) )
))
(declare-fun thiss!28743 () CacheDown!2096)

(declare-fun mapValue!14627 () List!26438)

(declare-fun mapKey!14627 () (_ BitVec 32))

(assert (=> mapNonEmpty!14627 (= (arr!4817 (_values!3395 (v!29955 (underlying!6431 (v!29956 (underlying!6432 (cache!3406 thiss!28743))))))) (store mapRest!14627 mapKey!14627 mapValue!14627))))

(declare-fun b!2237541 () Bool)

(declare-fun e!1430264 () Bool)

(declare-fun e!1430269 () Bool)

(assert (=> b!2237541 (= e!1430264 e!1430269)))

(declare-fun mapIsEmpty!14627 () Bool)

(assert (=> mapIsEmpty!14627 mapRes!14627))

(declare-fun b!2237542 () Bool)

(declare-fun res!957071 () Bool)

(declare-fun e!1430258 () Bool)

(assert (=> b!2237542 (=> (not res!957071) (not e!1430258))))

(declare-fun ctx!48 () Context!4050)

(declare-fun r!4750 () Regex!6477)

(declare-fun a!970 () C!13100)

(declare-fun contains!4409 (MutableMap!3025 tuple3!4026) Bool)

(assert (=> b!2237542 (= res!957071 (contains!4409 (cache!3406 thiss!28743) (tuple3!4027 r!4750 ctx!48 a!970)))))

(declare-fun tp!703965 () Bool)

(declare-fun tp!703967 () Bool)

(declare-fun e!1430257 () Bool)

(declare-fun array_inv!3459 (array!10850) Bool)

(declare-fun array_inv!3460 (array!10848) Bool)

(assert (=> b!2237543 (= e!1430269 (and tp!703961 tp!703967 tp!703965 (array_inv!3459 (_keys!3412 (v!29955 (underlying!6431 (v!29956 (underlying!6432 (cache!3406 thiss!28743))))))) (array_inv!3460 (_values!3395 (v!29955 (underlying!6431 (v!29956 (underlying!6432 (cache!3406 thiss!28743))))))) e!1430257))))

(declare-fun b!2237544 () Bool)

(declare-fun e!1430267 () Bool)

(assert (=> b!2237544 (= e!1430267 tp_is_empty!10175)))

(declare-fun res!957072 () Bool)

(assert (=> start!218042 (=> (not res!957072) (not e!1430258))))

(declare-fun validCacheMapDown!324 (MutableMap!3025) Bool)

(assert (=> start!218042 (= res!957072 (validCacheMapDown!324 (cache!3406 thiss!28743)))))

(assert (=> start!218042 e!1430258))

(declare-fun e!1430260 () Bool)

(assert (=> start!218042 (and (inv!35783 ctx!48) e!1430260)))

(assert (=> start!218042 e!1430267))

(assert (=> start!218042 tp_is_empty!10175))

(declare-fun inv!35784 (CacheDown!2096) Bool)

(assert (=> start!218042 (and (inv!35784 thiss!28743) e!1430256)))

(declare-fun condSetEmpty!20443 () Bool)

(assert (=> start!218042 (= condSetEmpty!20443 (= (_2!15355 _$14!27) ((as const (Array Context!4050 Bool)) false)))))

(declare-fun e!1430259 () Bool)

(assert (=> start!218042 (and e!1430262 (inv!35783 (_2!15354 (_1!15355 _$14!27))) e!1430259 tp_is_empty!10175 setRes!20443)))

(declare-fun b!2237545 () Bool)

(declare-fun e!1430266 () Bool)

(assert (=> b!2237545 (= e!1430266 e!1430264)))

(declare-fun b!2237546 () Bool)

(declare-fun tp!703949 () Bool)

(assert (=> b!2237546 (= e!1430261 tp!703949)))

(declare-fun b!2237547 () Bool)

(declare-fun tp!703959 () Bool)

(declare-fun tp!703955 () Bool)

(assert (=> b!2237547 (= e!1430267 (and tp!703959 tp!703955))))

(declare-fun b!2237548 () Bool)

(declare-fun lt!832266 () MutLongMap!3115)

(get-info :version)

(assert (=> b!2237548 (= e!1430265 (and e!1430266 ((_ is LongMap!3115) lt!832266)))))

(assert (=> b!2237548 (= lt!832266 (v!29956 (underlying!6432 (cache!3406 thiss!28743))))))

(declare-fun b!2237549 () Bool)

(declare-fun tp!703948 () Bool)

(declare-fun tp!703950 () Bool)

(assert (=> b!2237549 (= e!1430262 (and tp!703948 tp!703950))))

(declare-fun b!2237550 () Bool)

(declare-fun tp!703953 () Bool)

(declare-fun tp!703960 () Bool)

(assert (=> b!2237550 (= e!1430267 (and tp!703953 tp!703960))))

(declare-fun b!2237551 () Bool)

(declare-fun tp!703963 () Bool)

(assert (=> b!2237551 (= e!1430260 tp!703963)))

(declare-fun b!2237552 () Bool)

(assert (=> b!2237552 (= e!1430258 false)))

(declare-fun b!2237553 () Bool)

(declare-fun tp!703966 () Bool)

(assert (=> b!2237553 (= e!1430267 tp!703966)))

(declare-fun b!2237554 () Bool)

(declare-fun tp!703951 () Bool)

(assert (=> b!2237554 (= e!1430259 tp!703951)))

(declare-fun b!2237555 () Bool)

(declare-fun tp!703956 () Bool)

(assert (=> b!2237555 (= e!1430257 (and tp!703956 mapRes!14627))))

(declare-fun condMapEmpty!14627 () Bool)

(declare-fun mapDefault!14627 () List!26438)

(assert (=> b!2237555 (= condMapEmpty!14627 (= (arr!4817 (_values!3395 (v!29955 (underlying!6431 (v!29956 (underlying!6432 (cache!3406 thiss!28743))))))) ((as const (Array (_ BitVec 32) List!26438)) mapDefault!14627)))))

(assert (= (and start!218042 res!957072) b!2237542))

(assert (= (and b!2237542 res!957071) b!2237552))

(assert (= start!218042 b!2237551))

(assert (= (and start!218042 ((_ is ElementMatch!6477) r!4750)) b!2237544))

(assert (= (and start!218042 ((_ is Concat!10815) r!4750)) b!2237547))

(assert (= (and start!218042 ((_ is Star!6477) r!4750)) b!2237553))

(assert (= (and start!218042 ((_ is Union!6477) r!4750)) b!2237550))

(assert (= (and b!2237555 condMapEmpty!14627) mapIsEmpty!14627))

(assert (= (and b!2237555 (not condMapEmpty!14627)) mapNonEmpty!14627))

(assert (= b!2237543 b!2237555))

(assert (= b!2237541 b!2237543))

(assert (= b!2237545 b!2237541))

(assert (= (and b!2237548 ((_ is LongMap!3115) (v!29956 (underlying!6432 (cache!3406 thiss!28743))))) b!2237545))

(assert (= b!2237540 b!2237548))

(assert (= (and b!2237539 ((_ is HashMap!3025) (cache!3406 thiss!28743))) b!2237540))

(assert (= start!218042 b!2237539))

(assert (= (and start!218042 ((_ is ElementMatch!6477) (_1!15354 (_1!15355 _$14!27)))) b!2237538))

(assert (= (and start!218042 ((_ is Concat!10815) (_1!15354 (_1!15355 _$14!27)))) b!2237549))

(assert (= (and start!218042 ((_ is Star!6477) (_1!15354 (_1!15355 _$14!27)))) b!2237536))

(assert (= (and start!218042 ((_ is Union!6477) (_1!15354 (_1!15355 _$14!27)))) b!2237537))

(assert (= start!218042 b!2237554))

(assert (= (and start!218042 condSetEmpty!20443) setIsEmpty!20443))

(assert (= (and start!218042 (not condSetEmpty!20443)) setNonEmpty!20443))

(assert (= setNonEmpty!20443 b!2237546))

(declare-fun m!2670947 () Bool)

(assert (=> start!218042 m!2670947))

(declare-fun m!2670949 () Bool)

(assert (=> start!218042 m!2670949))

(declare-fun m!2670951 () Bool)

(assert (=> start!218042 m!2670951))

(declare-fun m!2670953 () Bool)

(assert (=> start!218042 m!2670953))

(declare-fun m!2670955 () Bool)

(assert (=> b!2237543 m!2670955))

(declare-fun m!2670957 () Bool)

(assert (=> b!2237543 m!2670957))

(declare-fun m!2670959 () Bool)

(assert (=> b!2237542 m!2670959))

(declare-fun m!2670961 () Bool)

(assert (=> mapNonEmpty!14627 m!2670961))

(declare-fun m!2670963 () Bool)

(assert (=> setNonEmpty!20443 m!2670963))

(check-sat (not b!2237543) (not mapNonEmpty!14627) (not b!2237537) (not start!218042) (not b!2237551) (not b!2237546) (not b!2237542) (not b!2237536) (not setNonEmpty!20443) (not b!2237547) tp_is_empty!10175 (not b!2237554) (not b!2237549) b_and!174919 (not b_next!65625) (not b!2237555) b_and!174917 (not b!2237550) (not b!2237553) (not b_next!65627))
(check-sat b_and!174917 b_and!174919 (not b_next!65627) (not b_next!65625))
