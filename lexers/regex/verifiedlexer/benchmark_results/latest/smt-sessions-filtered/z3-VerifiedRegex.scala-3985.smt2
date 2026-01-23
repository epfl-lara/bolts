; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217038 () Bool)

(assert start!217038)

(declare-fun b!2224185 () Bool)

(declare-fun b_free!64457 () Bool)

(declare-fun b_next!65161 () Bool)

(assert (=> b!2224185 (= b_free!64457 (not b_next!65161))))

(declare-fun tp!694253 () Bool)

(declare-fun b_and!174445 () Bool)

(assert (=> b!2224185 (= tp!694253 b_and!174445)))

(declare-fun b!2224189 () Bool)

(declare-fun b_free!64459 () Bool)

(declare-fun b_next!65163 () Bool)

(assert (=> b!2224189 (= b_free!64459 (not b_next!65163))))

(declare-fun tp!694257 () Bool)

(declare-fun b_and!174447 () Bool)

(assert (=> b!2224189 (= tp!694257 b_and!174447)))

(declare-fun b!2224176 () Bool)

(declare-fun res!954098 () Bool)

(declare-fun e!1421110 () Bool)

(assert (=> b!2224176 (=> (not res!954098) (not e!1421110))))

(declare-datatypes ((C!12868 0))(
  ( (C!12869 (val!7482 Int)) )
))
(declare-datatypes ((Regex!6361 0))(
  ( (ElementMatch!6361 (c!355109 C!12868)) (Concat!10699 (regOne!13234 Regex!6361) (regTwo!13234 Regex!6361)) (EmptyExpr!6361) (Star!6361 (reg!6690 Regex!6361)) (EmptyLang!6361) (Union!6361 (regOne!13235 Regex!6361) (regTwo!13235 Regex!6361)) )
))
(declare-datatypes ((List!26187 0))(
  ( (Nil!26093) (Cons!26093 (h!31494 Regex!6361) (t!199599 List!26187)) )
))
(declare-datatypes ((Context!3818 0))(
  ( (Context!3819 (exprs!2409 List!26187)) )
))
(declare-datatypes ((tuple2!25332 0))(
  ( (tuple2!25333 (_1!15050 Context!3818) (_2!15050 C!12868)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25334 0))(
  ( (tuple2!25335 (_1!15051 tuple2!25332) (_2!15051 (InoxSet Context!3818))) )
))
(declare-datatypes ((List!26188 0))(
  ( (Nil!26094) (Cons!26094 (h!31495 tuple2!25334) (t!199600 List!26188)) )
))
(declare-datatypes ((array!10302 0))(
  ( (array!10303 (arr!4585 (Array (_ BitVec 32) (_ BitVec 64))) (size!20366 (_ BitVec 32))) )
))
(declare-datatypes ((array!10304 0))(
  ( (array!10305 (arr!4586 (Array (_ BitVec 32) List!26188)) (size!20367 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5998 0))(
  ( (LongMapFixedSize!5999 (defaultEntry!3364 Int) (mask!7533 (_ BitVec 32)) (extraKeys!3247 (_ BitVec 32)) (zeroValue!3257 List!26188) (minValue!3257 List!26188) (_size!6045 (_ BitVec 32)) (_keys!3296 array!10302) (_values!3279 array!10304) (_vacant!3060 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11813 0))(
  ( (Cell!11814 (v!29656 LongMapFixedSize!5998)) )
))
(declare-datatypes ((MutLongMap!2999 0))(
  ( (LongMap!2999 (underlying!6199 Cell!11813)) (MutLongMapExt!2998 (__x!17223 Int)) )
))
(declare-datatypes ((Cell!11815 0))(
  ( (Cell!11816 (v!29657 MutLongMap!2999)) )
))
(declare-datatypes ((Hashable!2909 0))(
  ( (HashableExt!2908 (__x!17224 Int)) )
))
(declare-datatypes ((MutableMap!2909 0))(
  ( (MutableMapExt!2908 (__x!17225 Int)) (HashMap!2909 (underlying!6200 Cell!11815) (hashF!4832 Hashable!2909) (_size!6046 (_ BitVec 32)) (defaultValue!3071 Int)) )
))
(declare-datatypes ((CacheUp!1940 0))(
  ( (CacheUp!1941 (cache!3290 MutableMap!2909)) )
))
(declare-fun thiss!28682 () CacheUp!1940)

(get-info :version)

(assert (=> b!2224176 (= res!954098 ((_ is HashMap!2909) (cache!3290 thiss!28682)))))

(declare-fun b!2224177 () Bool)

(declare-fun e!1421105 () Bool)

(declare-fun e!1421101 () Bool)

(declare-fun lt!829175 () MutLongMap!2999)

(assert (=> b!2224177 (= e!1421105 (and e!1421101 ((_ is LongMap!2999) lt!829175)))))

(assert (=> b!2224177 (= lt!829175 (v!29657 (underlying!6200 (cache!3290 thiss!28682))))))

(declare-fun b!2224178 () Bool)

(declare-fun res!954095 () Bool)

(assert (=> b!2224178 (=> (not res!954095) (not e!1421110))))

(declare-fun ctx!44 () Context!3818)

(declare-fun res!14206 () (InoxSet Context!3818))

(declare-fun a!962 () C!12868)

(declare-fun derivationStepZipperUp!26 (Context!3818 C!12868) (InoxSet Context!3818))

(assert (=> b!2224178 (= res!954095 (= res!14206 (derivationStepZipperUp!26 ctx!44 a!962)))))

(declare-fun mapIsEmpty!14151 () Bool)

(declare-fun mapRes!14151 () Bool)

(assert (=> mapIsEmpty!14151 mapRes!14151))

(declare-fun b!2224179 () Bool)

(declare-fun e!1421103 () Bool)

(declare-fun e!1421102 () Bool)

(assert (=> b!2224179 (= e!1421103 e!1421102)))

(declare-fun b!2224180 () Bool)

(assert (=> b!2224180 (= e!1421101 e!1421103)))

(declare-fun b!2224181 () Bool)

(declare-fun e!1421109 () Bool)

(declare-fun tp!694255 () Bool)

(assert (=> b!2224181 (= e!1421109 (and tp!694255 mapRes!14151))))

(declare-fun condMapEmpty!14151 () Bool)

(declare-fun mapDefault!14151 () List!26188)

(assert (=> b!2224181 (= condMapEmpty!14151 (= (arr!4586 (_values!3279 (v!29656 (underlying!6199 (v!29657 (underlying!6200 (cache!3290 thiss!28682))))))) ((as const (Array (_ BitVec 32) List!26188)) mapDefault!14151)))))

(declare-fun b!2224182 () Bool)

(declare-fun res!954097 () Bool)

(assert (=> b!2224182 (=> (not res!954097) (not e!1421110))))

(declare-fun valid!2303 (MutableMap!2909) Bool)

(assert (=> b!2224182 (= res!954097 (valid!2303 (cache!3290 thiss!28682)))))

(declare-fun b!2224184 () Bool)

(declare-fun e!1421106 () Bool)

(declare-fun tp!694256 () Bool)

(assert (=> b!2224184 (= e!1421106 tp!694256)))

(declare-fun tp!694249 () Bool)

(declare-fun tp!694251 () Bool)

(declare-fun array_inv!3293 (array!10302) Bool)

(declare-fun array_inv!3294 (array!10304) Bool)

(assert (=> b!2224185 (= e!1421102 (and tp!694253 tp!694251 tp!694249 (array_inv!3293 (_keys!3296 (v!29656 (underlying!6199 (v!29657 (underlying!6200 (cache!3290 thiss!28682))))))) (array_inv!3294 (_values!3279 (v!29656 (underlying!6199 (v!29657 (underlying!6200 (cache!3290 thiss!28682))))))) e!1421109))))

(declare-fun b!2224186 () Bool)

(declare-fun e!1421108 () Bool)

(declare-fun e!1421111 () Bool)

(assert (=> b!2224186 (= e!1421108 e!1421111)))

(declare-fun b!2224187 () Bool)

(assert (=> b!2224187 (= e!1421110 false)))

(declare-fun lt!829174 () Bool)

(assert (=> b!2224187 (= lt!829174 (= res!14206 (derivationStepZipperUp!26 ctx!44 a!962)))))

(declare-fun setElem!19694 () Context!3818)

(declare-fun setNonEmpty!19694 () Bool)

(declare-fun setRes!19694 () Bool)

(declare-fun tp!694250 () Bool)

(declare-fun inv!35428 (Context!3818) Bool)

(assert (=> setNonEmpty!19694 (= setRes!19694 (and tp!694250 (inv!35428 setElem!19694) e!1421106))))

(declare-fun setRest!19694 () (InoxSet Context!3818))

(assert (=> setNonEmpty!19694 (= res!14206 ((_ map or) (store ((as const (Array Context!3818 Bool)) false) setElem!19694 true) setRest!19694))))

(declare-fun b!2224188 () Bool)

(declare-fun e!1421104 () Bool)

(declare-fun tp!694252 () Bool)

(assert (=> b!2224188 (= e!1421104 tp!694252)))

(declare-fun mapNonEmpty!14151 () Bool)

(declare-fun tp!694254 () Bool)

(declare-fun tp!694258 () Bool)

(assert (=> mapNonEmpty!14151 (= mapRes!14151 (and tp!694254 tp!694258))))

(declare-fun mapValue!14151 () List!26188)

(declare-fun mapKey!14151 () (_ BitVec 32))

(declare-fun mapRest!14151 () (Array (_ BitVec 32) List!26188))

(assert (=> mapNonEmpty!14151 (= (arr!4586 (_values!3279 (v!29656 (underlying!6199 (v!29657 (underlying!6200 (cache!3290 thiss!28682))))))) (store mapRest!14151 mapKey!14151 mapValue!14151))))

(declare-fun res!954094 () Bool)

(assert (=> start!217038 (=> (not res!954094) (not e!1421110))))

(declare-fun validCacheMapUp!276 (MutableMap!2909) Bool)

(assert (=> start!217038 (= res!954094 (validCacheMapUp!276 (cache!3290 thiss!28682)))))

(assert (=> start!217038 e!1421110))

(declare-fun inv!35429 (CacheUp!1940) Bool)

(assert (=> start!217038 (and (inv!35429 thiss!28682) e!1421108)))

(declare-fun condSetEmpty!19694 () Bool)

(assert (=> start!217038 (= condSetEmpty!19694 (= res!14206 ((as const (Array Context!3818 Bool)) false)))))

(assert (=> start!217038 setRes!19694))

(assert (=> start!217038 (and (inv!35428 ctx!44) e!1421104)))

(declare-fun tp_is_empty!9947 () Bool)

(assert (=> start!217038 tp_is_empty!9947))

(declare-fun b!2224183 () Bool)

(declare-fun res!954096 () Bool)

(assert (=> b!2224183 (=> (not res!954096) (not e!1421110))))

(declare-fun lambda!84055 () Int)

(declare-fun forall!5317 (List!26188 Int) Bool)

(declare-datatypes ((ListMap!765 0))(
  ( (ListMap!766 (toList!1304 List!26188)) )
))
(declare-fun map!5306 (MutableMap!2909) ListMap!765)

(assert (=> b!2224183 (= res!954096 (forall!5317 (toList!1304 (map!5306 (cache!3290 thiss!28682))) lambda!84055))))

(declare-fun setIsEmpty!19694 () Bool)

(assert (=> setIsEmpty!19694 setRes!19694))

(assert (=> b!2224189 (= e!1421111 (and e!1421105 tp!694257))))

(assert (= (and start!217038 res!954094) b!2224178))

(assert (= (and b!2224178 res!954095) b!2224176))

(assert (= (and b!2224176 res!954098) b!2224182))

(assert (= (and b!2224182 res!954097) b!2224183))

(assert (= (and b!2224183 res!954096) b!2224187))

(assert (= (and b!2224181 condMapEmpty!14151) mapIsEmpty!14151))

(assert (= (and b!2224181 (not condMapEmpty!14151)) mapNonEmpty!14151))

(assert (= b!2224185 b!2224181))

(assert (= b!2224179 b!2224185))

(assert (= b!2224180 b!2224179))

(assert (= (and b!2224177 ((_ is LongMap!2999) (v!29657 (underlying!6200 (cache!3290 thiss!28682))))) b!2224180))

(assert (= b!2224189 b!2224177))

(assert (= (and b!2224186 ((_ is HashMap!2909) (cache!3290 thiss!28682))) b!2224189))

(assert (= start!217038 b!2224186))

(assert (= (and start!217038 condSetEmpty!19694) setIsEmpty!19694))

(assert (= (and start!217038 (not condSetEmpty!19694)) setNonEmpty!19694))

(assert (= setNonEmpty!19694 b!2224184))

(assert (= start!217038 b!2224188))

(declare-fun m!2664138 () Bool)

(assert (=> b!2224187 m!2664138))

(declare-fun m!2664140 () Bool)

(assert (=> mapNonEmpty!14151 m!2664140))

(declare-fun m!2664142 () Bool)

(assert (=> setNonEmpty!19694 m!2664142))

(assert (=> b!2224178 m!2664138))

(declare-fun m!2664144 () Bool)

(assert (=> start!217038 m!2664144))

(declare-fun m!2664146 () Bool)

(assert (=> start!217038 m!2664146))

(declare-fun m!2664148 () Bool)

(assert (=> start!217038 m!2664148))

(declare-fun m!2664150 () Bool)

(assert (=> b!2224182 m!2664150))

(declare-fun m!2664152 () Bool)

(assert (=> b!2224183 m!2664152))

(declare-fun m!2664154 () Bool)

(assert (=> b!2224183 m!2664154))

(declare-fun m!2664156 () Bool)

(assert (=> b!2224185 m!2664156))

(declare-fun m!2664158 () Bool)

(assert (=> b!2224185 m!2664158))

(check-sat (not b!2224182) (not b!2224188) (not b!2224184) (not b!2224183) (not mapNonEmpty!14151) b_and!174447 (not start!217038) b_and!174445 (not setNonEmpty!19694) (not b!2224185) (not b!2224178) (not b_next!65163) (not b!2224187) (not b!2224181) (not b_next!65161) tp_is_empty!9947)
(check-sat b_and!174447 b_and!174445 (not b_next!65163) (not b_next!65161))
