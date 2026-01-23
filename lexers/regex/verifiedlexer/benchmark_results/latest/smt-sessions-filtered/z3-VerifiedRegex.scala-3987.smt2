; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217066 () Bool)

(assert start!217066)

(declare-fun b!2224467 () Bool)

(declare-fun b_free!64473 () Bool)

(declare-fun b_next!65177 () Bool)

(assert (=> b!2224467 (= b_free!64473 (not b_next!65177))))

(declare-fun tp!694436 () Bool)

(declare-fun b_and!174461 () Bool)

(assert (=> b!2224467 (= tp!694436 b_and!174461)))

(declare-fun b!2224464 () Bool)

(declare-fun b_free!64475 () Bool)

(declare-fun b_next!65179 () Bool)

(assert (=> b!2224464 (= b_free!64475 (not b_next!65179))))

(declare-fun tp!694439 () Bool)

(declare-fun b_and!174463 () Bool)

(assert (=> b!2224464 (= tp!694439 b_and!174463)))

(declare-fun res!954163 () Bool)

(declare-fun e!1421344 () Bool)

(assert (=> start!217066 (=> (not res!954163) (not e!1421344))))

(declare-datatypes ((C!12876 0))(
  ( (C!12877 (val!7486 Int)) )
))
(declare-datatypes ((Regex!6365 0))(
  ( (ElementMatch!6365 (c!355140 C!12876)) (Concat!10703 (regOne!13242 Regex!6365) (regTwo!13242 Regex!6365)) (EmptyExpr!6365) (Star!6365 (reg!6694 Regex!6365)) (EmptyLang!6365) (Union!6365 (regOne!13243 Regex!6365) (regTwo!13243 Regex!6365)) )
))
(declare-datatypes ((List!26196 0))(
  ( (Nil!26102) (Cons!26102 (h!31503 Regex!6365) (t!199608 List!26196)) )
))
(declare-datatypes ((Context!3826 0))(
  ( (Context!3827 (exprs!2413 List!26196)) )
))
(declare-datatypes ((tuple2!25360 0))(
  ( (tuple2!25361 (_1!15064 Context!3826) (_2!15064 C!12876)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25362 0))(
  ( (tuple2!25363 (_1!15065 tuple2!25360) (_2!15065 (InoxSet Context!3826))) )
))
(declare-datatypes ((List!26197 0))(
  ( (Nil!26103) (Cons!26103 (h!31504 tuple2!25362) (t!199609 List!26197)) )
))
(declare-datatypes ((array!10320 0))(
  ( (array!10321 (arr!4593 (Array (_ BitVec 32) (_ BitVec 64))) (size!20374 (_ BitVec 32))) )
))
(declare-datatypes ((array!10322 0))(
  ( (array!10323 (arr!4594 (Array (_ BitVec 32) List!26197)) (size!20375 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6006 0))(
  ( (LongMapFixedSize!6007 (defaultEntry!3368 Int) (mask!7539 (_ BitVec 32)) (extraKeys!3251 (_ BitVec 32)) (zeroValue!3261 List!26197) (minValue!3261 List!26197) (_size!6053 (_ BitVec 32)) (_keys!3300 array!10320) (_values!3283 array!10322) (_vacant!3064 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11829 0))(
  ( (Cell!11830 (v!29666 LongMapFixedSize!6006)) )
))
(declare-datatypes ((MutLongMap!3003 0))(
  ( (LongMap!3003 (underlying!6207 Cell!11829)) (MutLongMapExt!3002 (__x!17235 Int)) )
))
(declare-datatypes ((Cell!11831 0))(
  ( (Cell!11832 (v!29667 MutLongMap!3003)) )
))
(declare-datatypes ((Hashable!2913 0))(
  ( (HashableExt!2912 (__x!17236 Int)) )
))
(declare-datatypes ((MutableMap!2913 0))(
  ( (MutableMapExt!2912 (__x!17237 Int)) (HashMap!2913 (underlying!6208 Cell!11831) (hashF!4836 Hashable!2913) (_size!6054 (_ BitVec 32)) (defaultValue!3075 Int)) )
))
(declare-datatypes ((CacheUp!1948 0))(
  ( (CacheUp!1949 (cache!3294 MutableMap!2913)) )
))
(declare-fun thiss!28682 () CacheUp!1948)

(declare-fun validCacheMapUp!279 (MutableMap!2913) Bool)

(assert (=> start!217066 (= res!954163 (validCacheMapUp!279 (cache!3294 thiss!28682)))))

(assert (=> start!217066 e!1421344))

(declare-fun e!1421339 () Bool)

(declare-fun inv!35440 (CacheUp!1948) Bool)

(assert (=> start!217066 (and (inv!35440 thiss!28682) e!1421339)))

(declare-fun condSetEmpty!19721 () Bool)

(declare-fun res!14206 () (InoxSet Context!3826))

(assert (=> start!217066 (= condSetEmpty!19721 (= res!14206 ((as const (Array Context!3826 Bool)) false)))))

(declare-fun setRes!19721 () Bool)

(assert (=> start!217066 setRes!19721))

(declare-fun ctx!44 () Context!3826)

(declare-fun e!1421342 () Bool)

(declare-fun inv!35441 (Context!3826) Bool)

(assert (=> start!217066 (and (inv!35441 ctx!44) e!1421342)))

(declare-fun tp_is_empty!9955 () Bool)

(assert (=> start!217066 tp_is_empty!9955))

(declare-fun b!2224457 () Bool)

(declare-fun e!1421338 () Bool)

(assert (=> b!2224457 (= e!1421339 e!1421338)))

(declare-fun mapIsEmpty!14166 () Bool)

(declare-fun mapRes!14166 () Bool)

(assert (=> mapIsEmpty!14166 mapRes!14166))

(declare-fun b!2224458 () Bool)

(declare-fun e!1421348 () Bool)

(declare-fun tp!694441 () Bool)

(assert (=> b!2224458 (= e!1421348 (and tp!694441 mapRes!14166))))

(declare-fun condMapEmpty!14166 () Bool)

(declare-fun mapDefault!14166 () List!26197)

(assert (=> b!2224458 (= condMapEmpty!14166 (= (arr!4594 (_values!3283 (v!29666 (underlying!6207 (v!29667 (underlying!6208 (cache!3294 thiss!28682))))))) ((as const (Array (_ BitVec 32) List!26197)) mapDefault!14166)))))

(declare-fun b!2224459 () Bool)

(declare-fun e!1421345 () Bool)

(declare-fun valid!2306 (MutableMap!2913) Bool)

(assert (=> b!2224459 (= e!1421345 (valid!2306 (cache!3294 thiss!28682)))))

(declare-fun e!1421343 () Bool)

(declare-fun tp!694437 () Bool)

(declare-fun setElem!19721 () Context!3826)

(declare-fun setNonEmpty!19721 () Bool)

(assert (=> setNonEmpty!19721 (= setRes!19721 (and tp!694437 (inv!35441 setElem!19721) e!1421343))))

(declare-fun setRest!19721 () (InoxSet Context!3826))

(assert (=> setNonEmpty!19721 (= res!14206 ((_ map or) (store ((as const (Array Context!3826 Bool)) false) setElem!19721 true) setRest!19721))))

(declare-fun b!2224460 () Bool)

(declare-fun e!1421340 () Bool)

(declare-fun e!1421349 () Bool)

(declare-fun lt!829395 () MutLongMap!3003)

(get-info :version)

(assert (=> b!2224460 (= e!1421340 (and e!1421349 ((_ is LongMap!3003) lt!829395)))))

(assert (=> b!2224460 (= lt!829395 (v!29667 (underlying!6208 (cache!3294 thiss!28682))))))

(declare-fun b!2224461 () Bool)

(assert (=> b!2224461 (= e!1421344 (not e!1421345))))

(declare-fun res!954164 () Bool)

(assert (=> b!2224461 (=> res!954164 e!1421345)))

(assert (=> b!2224461 (= res!954164 (not ((_ is HashMap!2913) (cache!3294 thiss!28682))))))

(declare-fun lambda!84084 () Int)

(declare-fun lt!829397 () tuple2!25360)

(declare-fun forall!5323 (List!26197 Int) Bool)

(declare-datatypes ((ListMap!773 0))(
  ( (ListMap!774 (toList!1309 List!26197)) )
))
(declare-fun map!5313 (MutableMap!2913) ListMap!773)

(declare-datatypes ((tuple2!25364 0))(
  ( (tuple2!25365 (_1!15066 Bool) (_2!15066 MutableMap!2913)) )
))
(declare-fun update!124 (MutableMap!2913 tuple2!25360 (InoxSet Context!3826)) tuple2!25364)

(assert (=> b!2224461 (forall!5323 (toList!1309 (map!5313 (_2!15066 (update!124 (cache!3294 thiss!28682) lt!829397 res!14206)))) lambda!84084)))

(declare-datatypes ((Unit!39074 0))(
  ( (Unit!39075) )
))
(declare-fun lt!829396 () Unit!39074)

(declare-fun lemmaUpdatePreservesForallPairs!15 (MutableMap!2913 tuple2!25360 (InoxSet Context!3826) Int) Unit!39074)

(assert (=> b!2224461 (= lt!829396 (lemmaUpdatePreservesForallPairs!15 (cache!3294 thiss!28682) lt!829397 res!14206 lambda!84084))))

(declare-fun a!962 () C!12876)

(assert (=> b!2224461 (= lt!829397 (tuple2!25361 ctx!44 a!962))))

(declare-fun b!2224462 () Bool)

(declare-fun tp!694443 () Bool)

(assert (=> b!2224462 (= e!1421343 tp!694443)))

(declare-fun b!2224463 () Bool)

(declare-fun e!1421346 () Bool)

(assert (=> b!2224463 (= e!1421349 e!1421346)))

(declare-fun setIsEmpty!19721 () Bool)

(assert (=> setIsEmpty!19721 setRes!19721))

(assert (=> b!2224464 (= e!1421338 (and e!1421340 tp!694439))))

(declare-fun mapNonEmpty!14166 () Bool)

(declare-fun tp!694435 () Bool)

(declare-fun tp!694438 () Bool)

(assert (=> mapNonEmpty!14166 (= mapRes!14166 (and tp!694435 tp!694438))))

(declare-fun mapKey!14166 () (_ BitVec 32))

(declare-fun mapValue!14166 () List!26197)

(declare-fun mapRest!14166 () (Array (_ BitVec 32) List!26197))

(assert (=> mapNonEmpty!14166 (= (arr!4594 (_values!3283 (v!29666 (underlying!6207 (v!29667 (underlying!6208 (cache!3294 thiss!28682))))))) (store mapRest!14166 mapKey!14166 mapValue!14166))))

(declare-fun b!2224465 () Bool)

(declare-fun tp!694434 () Bool)

(assert (=> b!2224465 (= e!1421342 tp!694434)))

(declare-fun b!2224466 () Bool)

(declare-fun res!954162 () Bool)

(assert (=> b!2224466 (=> (not res!954162) (not e!1421344))))

(declare-fun derivationStepZipperUp!30 (Context!3826 C!12876) (InoxSet Context!3826))

(assert (=> b!2224466 (= res!954162 (= res!14206 (derivationStepZipperUp!30 ctx!44 a!962)))))

(declare-fun tp!694442 () Bool)

(declare-fun tp!694440 () Bool)

(declare-fun e!1421341 () Bool)

(declare-fun array_inv!3297 (array!10320) Bool)

(declare-fun array_inv!3298 (array!10322) Bool)

(assert (=> b!2224467 (= e!1421341 (and tp!694436 tp!694440 tp!694442 (array_inv!3297 (_keys!3300 (v!29666 (underlying!6207 (v!29667 (underlying!6208 (cache!3294 thiss!28682))))))) (array_inv!3298 (_values!3283 (v!29666 (underlying!6207 (v!29667 (underlying!6208 (cache!3294 thiss!28682))))))) e!1421348))))

(declare-fun b!2224468 () Bool)

(assert (=> b!2224468 (= e!1421346 e!1421341)))

(assert (= (and start!217066 res!954163) b!2224466))

(assert (= (and b!2224466 res!954162) b!2224461))

(assert (= (and b!2224461 (not res!954164)) b!2224459))

(assert (= (and b!2224458 condMapEmpty!14166) mapIsEmpty!14166))

(assert (= (and b!2224458 (not condMapEmpty!14166)) mapNonEmpty!14166))

(assert (= b!2224467 b!2224458))

(assert (= b!2224468 b!2224467))

(assert (= b!2224463 b!2224468))

(assert (= (and b!2224460 ((_ is LongMap!3003) (v!29667 (underlying!6208 (cache!3294 thiss!28682))))) b!2224463))

(assert (= b!2224464 b!2224460))

(assert (= (and b!2224457 ((_ is HashMap!2913) (cache!3294 thiss!28682))) b!2224464))

(assert (= start!217066 b!2224457))

(assert (= (and start!217066 condSetEmpty!19721) setIsEmpty!19721))

(assert (= (and start!217066 (not condSetEmpty!19721)) setNonEmpty!19721))

(assert (= setNonEmpty!19721 b!2224462))

(assert (= start!217066 b!2224465))

(declare-fun m!2664387 () Bool)

(assert (=> b!2224466 m!2664387))

(declare-fun m!2664389 () Bool)

(assert (=> mapNonEmpty!14166 m!2664389))

(declare-fun m!2664391 () Bool)

(assert (=> b!2224459 m!2664391))

(declare-fun m!2664393 () Bool)

(assert (=> b!2224467 m!2664393))

(declare-fun m!2664395 () Bool)

(assert (=> b!2224467 m!2664395))

(declare-fun m!2664397 () Bool)

(assert (=> start!217066 m!2664397))

(declare-fun m!2664399 () Bool)

(assert (=> start!217066 m!2664399))

(declare-fun m!2664401 () Bool)

(assert (=> start!217066 m!2664401))

(declare-fun m!2664403 () Bool)

(assert (=> b!2224461 m!2664403))

(declare-fun m!2664405 () Bool)

(assert (=> b!2224461 m!2664405))

(declare-fun m!2664407 () Bool)

(assert (=> b!2224461 m!2664407))

(declare-fun m!2664409 () Bool)

(assert (=> b!2224461 m!2664409))

(declare-fun m!2664411 () Bool)

(assert (=> setNonEmpty!19721 m!2664411))

(check-sat (not b!2224466) b_and!174461 (not b!2224461) (not b_next!65179) (not b!2224465) tp_is_empty!9955 (not b!2224458) (not mapNonEmpty!14166) (not b!2224462) (not start!217066) (not b!2224467) (not setNonEmpty!19721) (not b_next!65177) (not b!2224459) b_and!174463)
(check-sat b_and!174463 b_and!174461 (not b_next!65179) (not b_next!65177))
(get-model)

(declare-fun d!664408 () Bool)

(declare-fun lambda!84087 () Int)

(declare-fun forall!5324 (List!26196 Int) Bool)

(assert (=> d!664408 (= (inv!35441 setElem!19721) (forall!5324 (exprs!2413 setElem!19721) lambda!84087))))

(declare-fun bs!453477 () Bool)

(assert (= bs!453477 d!664408))

(declare-fun m!2664413 () Bool)

(assert (=> bs!453477 m!2664413))

(assert (=> setNonEmpty!19721 d!664408))

(declare-fun d!664410 () Bool)

(assert (=> d!664410 (= (array_inv!3297 (_keys!3300 (v!29666 (underlying!6207 (v!29667 (underlying!6208 (cache!3294 thiss!28682))))))) (bvsge (size!20374 (_keys!3300 (v!29666 (underlying!6207 (v!29667 (underlying!6208 (cache!3294 thiss!28682))))))) #b00000000000000000000000000000000))))

(assert (=> b!2224467 d!664410))

(declare-fun d!664412 () Bool)

(assert (=> d!664412 (= (array_inv!3298 (_values!3283 (v!29666 (underlying!6207 (v!29667 (underlying!6208 (cache!3294 thiss!28682))))))) (bvsge (size!20375 (_values!3283 (v!29666 (underlying!6207 (v!29667 (underlying!6208 (cache!3294 thiss!28682))))))) #b00000000000000000000000000000000))))

(assert (=> b!2224467 d!664412))

(declare-fun d!664414 () Bool)

(declare-fun res!954169 () Bool)

(declare-fun e!1421352 () Bool)

(assert (=> d!664414 (=> (not res!954169) (not e!1421352))))

(declare-fun valid!2307 (MutLongMap!3003) Bool)

(assert (=> d!664414 (= res!954169 (valid!2307 (v!29667 (underlying!6208 (cache!3294 thiss!28682)))))))

(assert (=> d!664414 (= (valid!2306 (cache!3294 thiss!28682)) e!1421352)))

(declare-fun b!2224473 () Bool)

(declare-fun res!954170 () Bool)

(assert (=> b!2224473 (=> (not res!954170) (not e!1421352))))

(declare-fun lambda!84090 () Int)

(declare-datatypes ((tuple2!25366 0))(
  ( (tuple2!25367 (_1!15067 (_ BitVec 64)) (_2!15067 List!26197)) )
))
(declare-datatypes ((List!26198 0))(
  ( (Nil!26104) (Cons!26104 (h!31505 tuple2!25366) (t!199610 List!26198)) )
))
(declare-fun forall!5325 (List!26198 Int) Bool)

(declare-datatypes ((ListLongMap!299 0))(
  ( (ListLongMap!300 (toList!1310 List!26198)) )
))
(declare-fun map!5314 (MutLongMap!3003) ListLongMap!299)

(assert (=> b!2224473 (= res!954170 (forall!5325 (toList!1310 (map!5314 (v!29667 (underlying!6208 (cache!3294 thiss!28682))))) lambda!84090))))

(declare-fun b!2224474 () Bool)

(declare-fun allKeysSameHashInMap!96 (ListLongMap!299 Hashable!2913) Bool)

(assert (=> b!2224474 (= e!1421352 (allKeysSameHashInMap!96 (map!5314 (v!29667 (underlying!6208 (cache!3294 thiss!28682)))) (hashF!4836 (cache!3294 thiss!28682))))))

(assert (= (and d!664414 res!954169) b!2224473))

(assert (= (and b!2224473 res!954170) b!2224474))

(declare-fun m!2664415 () Bool)

(assert (=> d!664414 m!2664415))

(declare-fun m!2664417 () Bool)

(assert (=> b!2224473 m!2664417))

(declare-fun m!2664419 () Bool)

(assert (=> b!2224473 m!2664419))

(assert (=> b!2224474 m!2664417))

(assert (=> b!2224474 m!2664417))

(declare-fun m!2664421 () Bool)

(assert (=> b!2224474 m!2664421))

(assert (=> b!2224459 d!664414))

(declare-fun bs!453478 () Bool)

(declare-fun b!2224480 () Bool)

(assert (= bs!453478 (and b!2224480 b!2224461)))

(declare-fun lambda!84093 () Int)

(assert (=> bs!453478 (= lambda!84093 lambda!84084)))

(declare-fun d!664416 () Bool)

(declare-fun res!954175 () Bool)

(declare-fun e!1421355 () Bool)

(assert (=> d!664416 (=> (not res!954175) (not e!1421355))))

(assert (=> d!664416 (= res!954175 (valid!2306 (cache!3294 thiss!28682)))))

(assert (=> d!664416 (= (validCacheMapUp!279 (cache!3294 thiss!28682)) e!1421355)))

(declare-fun b!2224479 () Bool)

(declare-fun res!954176 () Bool)

(assert (=> b!2224479 (=> (not res!954176) (not e!1421355))))

(declare-fun invariantList!351 (List!26197) Bool)

(assert (=> b!2224479 (= res!954176 (invariantList!351 (toList!1309 (map!5313 (cache!3294 thiss!28682)))))))

(assert (=> b!2224480 (= e!1421355 (forall!5323 (toList!1309 (map!5313 (cache!3294 thiss!28682))) lambda!84093))))

(assert (= (and d!664416 res!954175) b!2224479))

(assert (= (and b!2224479 res!954176) b!2224480))

(assert (=> d!664416 m!2664391))

(declare-fun m!2664424 () Bool)

(assert (=> b!2224479 m!2664424))

(declare-fun m!2664426 () Bool)

(assert (=> b!2224479 m!2664426))

(assert (=> b!2224480 m!2664424))

(declare-fun m!2664428 () Bool)

(assert (=> b!2224480 m!2664428))

(assert (=> start!217066 d!664416))

(declare-fun d!664418 () Bool)

(declare-fun res!954179 () Bool)

(declare-fun e!1421358 () Bool)

(assert (=> d!664418 (=> (not res!954179) (not e!1421358))))

(assert (=> d!664418 (= res!954179 ((_ is HashMap!2913) (cache!3294 thiss!28682)))))

(assert (=> d!664418 (= (inv!35440 thiss!28682) e!1421358)))

(declare-fun b!2224483 () Bool)

(assert (=> b!2224483 (= e!1421358 (validCacheMapUp!279 (cache!3294 thiss!28682)))))

(assert (= (and d!664418 res!954179) b!2224483))

(assert (=> b!2224483 m!2664397))

(assert (=> start!217066 d!664418))

(declare-fun bs!453479 () Bool)

(declare-fun d!664420 () Bool)

(assert (= bs!453479 (and d!664420 d!664408)))

(declare-fun lambda!84094 () Int)

(assert (=> bs!453479 (= lambda!84094 lambda!84087)))

(assert (=> d!664420 (= (inv!35441 ctx!44) (forall!5324 (exprs!2413 ctx!44) lambda!84094))))

(declare-fun bs!453480 () Bool)

(assert (= bs!453480 d!664420))

(declare-fun m!2664430 () Bool)

(assert (=> bs!453480 m!2664430))

(assert (=> start!217066 d!664420))

(declare-fun b!2224494 () Bool)

(declare-fun e!1421365 () Bool)

(declare-fun nullable!1735 (Regex!6365) Bool)

(assert (=> b!2224494 (= e!1421365 (nullable!1735 (h!31503 (exprs!2413 ctx!44))))))

(declare-fun b!2224495 () Bool)

(declare-fun e!1421366 () (InoxSet Context!3826))

(assert (=> b!2224495 (= e!1421366 ((as const (Array Context!3826 Bool)) false))))

(declare-fun d!664422 () Bool)

(declare-fun c!355146 () Bool)

(assert (=> d!664422 (= c!355146 e!1421365)))

(declare-fun res!954182 () Bool)

(assert (=> d!664422 (=> (not res!954182) (not e!1421365))))

(assert (=> d!664422 (= res!954182 ((_ is Cons!26102) (exprs!2413 ctx!44)))))

(declare-fun e!1421367 () (InoxSet Context!3826))

(assert (=> d!664422 (= (derivationStepZipperUp!30 ctx!44 a!962) e!1421367)))

(declare-fun b!2224496 () Bool)

(declare-fun call!132969 () (InoxSet Context!3826))

(assert (=> b!2224496 (= e!1421366 call!132969)))

(declare-fun b!2224497 () Bool)

(assert (=> b!2224497 (= e!1421367 ((_ map or) call!132969 (derivationStepZipperUp!30 (Context!3827 (t!199608 (exprs!2413 ctx!44))) a!962)))))

(declare-fun b!2224498 () Bool)

(assert (=> b!2224498 (= e!1421367 e!1421366)))

(declare-fun c!355145 () Bool)

(assert (=> b!2224498 (= c!355145 ((_ is Cons!26102) (exprs!2413 ctx!44)))))

(declare-fun bm!132964 () Bool)

(declare-fun derivationStepZipperDown!26 (Regex!6365 Context!3826 C!12876) (InoxSet Context!3826))

(assert (=> bm!132964 (= call!132969 (derivationStepZipperDown!26 (h!31503 (exprs!2413 ctx!44)) (Context!3827 (t!199608 (exprs!2413 ctx!44))) a!962))))

(assert (= (and d!664422 res!954182) b!2224494))

(assert (= (and d!664422 c!355146) b!2224497))

(assert (= (and d!664422 (not c!355146)) b!2224498))

(assert (= (and b!2224498 c!355145) b!2224496))

(assert (= (and b!2224498 (not c!355145)) b!2224495))

(assert (= (or b!2224497 b!2224496) bm!132964))

(declare-fun m!2664432 () Bool)

(assert (=> b!2224494 m!2664432))

(declare-fun m!2664434 () Bool)

(assert (=> b!2224497 m!2664434))

(declare-fun m!2664436 () Bool)

(assert (=> bm!132964 m!2664436))

(assert (=> b!2224466 d!664422))

(declare-fun d!664424 () Bool)

(declare-fun res!954187 () Bool)

(declare-fun e!1421372 () Bool)

(assert (=> d!664424 (=> res!954187 e!1421372)))

(assert (=> d!664424 (= res!954187 ((_ is Nil!26103) (toList!1309 (map!5313 (_2!15066 (update!124 (cache!3294 thiss!28682) lt!829397 res!14206))))))))

(assert (=> d!664424 (= (forall!5323 (toList!1309 (map!5313 (_2!15066 (update!124 (cache!3294 thiss!28682) lt!829397 res!14206)))) lambda!84084) e!1421372)))

(declare-fun b!2224503 () Bool)

(declare-fun e!1421373 () Bool)

(assert (=> b!2224503 (= e!1421372 e!1421373)))

(declare-fun res!954188 () Bool)

(assert (=> b!2224503 (=> (not res!954188) (not e!1421373))))

(declare-fun dynLambda!11515 (Int tuple2!25362) Bool)

(assert (=> b!2224503 (= res!954188 (dynLambda!11515 lambda!84084 (h!31504 (toList!1309 (map!5313 (_2!15066 (update!124 (cache!3294 thiss!28682) lt!829397 res!14206)))))))))

(declare-fun b!2224504 () Bool)

(assert (=> b!2224504 (= e!1421373 (forall!5323 (t!199609 (toList!1309 (map!5313 (_2!15066 (update!124 (cache!3294 thiss!28682) lt!829397 res!14206))))) lambda!84084))))

(assert (= (and d!664424 (not res!954187)) b!2224503))

(assert (= (and b!2224503 res!954188) b!2224504))

(declare-fun b_lambda!71617 () Bool)

(assert (=> (not b_lambda!71617) (not b!2224503)))

(declare-fun m!2664438 () Bool)

(assert (=> b!2224503 m!2664438))

(declare-fun m!2664440 () Bool)

(assert (=> b!2224504 m!2664440))

(assert (=> b!2224461 d!664424))

(declare-fun d!664426 () Bool)

(declare-fun lt!829400 () ListMap!773)

(assert (=> d!664426 (invariantList!351 (toList!1309 lt!829400))))

(declare-fun extractMap!97 (List!26198) ListMap!773)

(assert (=> d!664426 (= lt!829400 (extractMap!97 (toList!1310 (map!5314 (v!29667 (underlying!6208 (_2!15066 (update!124 (cache!3294 thiss!28682) lt!829397 res!14206))))))))))

(assert (=> d!664426 (valid!2306 (_2!15066 (update!124 (cache!3294 thiss!28682) lt!829397 res!14206)))))

(assert (=> d!664426 (= (map!5313 (_2!15066 (update!124 (cache!3294 thiss!28682) lt!829397 res!14206))) lt!829400)))

(declare-fun bs!453481 () Bool)

(assert (= bs!453481 d!664426))

(declare-fun m!2664442 () Bool)

(assert (=> bs!453481 m!2664442))

(declare-fun m!2664444 () Bool)

(assert (=> bs!453481 m!2664444))

(declare-fun m!2664446 () Bool)

(assert (=> bs!453481 m!2664446))

(declare-fun m!2664448 () Bool)

(assert (=> bs!453481 m!2664448))

(assert (=> b!2224461 d!664426))

(declare-fun bs!453482 () Bool)

(declare-fun b!2224550 () Bool)

(assert (= bs!453482 (and b!2224550 b!2224473)))

(declare-fun lambda!84103 () Int)

(assert (=> bs!453482 (= lambda!84103 lambda!84090)))

(declare-fun bs!453483 () Bool)

(declare-fun b!2224549 () Bool)

(assert (= bs!453483 (and b!2224549 b!2224473)))

(declare-fun lambda!84104 () Int)

(assert (=> bs!453483 (= lambda!84104 lambda!84090)))

(declare-fun bs!453484 () Bool)

(assert (= bs!453484 (and b!2224549 b!2224550)))

(assert (=> bs!453484 (= lambda!84104 lambda!84103)))

(declare-fun e!1421399 () ListMap!773)

(declare-fun call!133058 () ListMap!773)

(declare-fun b!2224543 () Bool)

(declare-fun +!49 (ListMap!773 tuple2!25362) ListMap!773)

(assert (=> b!2224543 (= e!1421399 (+!49 call!133058 (tuple2!25363 lt!829397 res!14206)))))

(declare-fun b!2224544 () Bool)

(declare-fun call!133062 () ListMap!773)

(declare-fun lt!829514 () ListMap!773)

(assert (=> b!2224544 (= call!133062 lt!829514)))

(declare-fun lt!829543 () Unit!39074)

(declare-fun Unit!39076 () Unit!39074)

(assert (=> b!2224544 (= lt!829543 Unit!39076)))

(declare-fun call!133057 () Bool)

(assert (=> b!2224544 call!133057))

(declare-fun e!1421401 () Unit!39074)

(declare-fun Unit!39077 () Unit!39074)

(assert (=> b!2224544 (= e!1421401 Unit!39077)))

(declare-fun call!133055 () Bool)

(declare-fun lt!829534 () (_ BitVec 64))

(declare-fun lt!829516 () List!26197)

(declare-fun lt!829556 () (_ BitVec 64))

(declare-fun bm!133027 () Bool)

(declare-fun c!355163 () Bool)

(declare-fun lt!829533 () List!26197)

(declare-fun allKeysSameHash!31 (List!26197 (_ BitVec 64) Hashable!2913) Bool)

(assert (=> bm!133027 (= call!133055 (allKeysSameHash!31 (ite c!355163 lt!829516 lt!829533) (ite c!355163 lt!829534 lt!829556) (hashF!4836 (cache!3294 thiss!28682))))))

(declare-fun call!133050 () ListMap!773)

(declare-fun call!133037 () ListMap!773)

(declare-fun call!133042 () Bool)

(declare-fun bm!133028 () Bool)

(declare-fun eq!48 (ListMap!773 ListMap!773) Bool)

(assert (=> bm!133028 (= call!133042 (eq!48 (ite c!355163 call!133062 call!133037) call!133050))))

(declare-fun b!2224545 () Bool)

(declare-datatypes ((tuple2!25368 0))(
  ( (tuple2!25369 (_1!15068 Bool) (_2!15068 MutLongMap!3003)) )
))
(declare-fun lt!829551 () tuple2!25368)

(declare-fun e!1421396 () tuple2!25364)

(declare-fun lt!829549 () MutableMap!2913)

(declare-datatypes ((tuple2!25370 0))(
  ( (tuple2!25371 (_1!15069 Unit!39074) (_2!15069 MutableMap!2913)) )
))
(declare-fun Unit!39078 () Unit!39074)

(declare-fun Unit!39079 () Unit!39074)

(assert (=> b!2224545 (= e!1421396 (tuple2!25365 (_1!15068 lt!829551) (_2!15069 (ite (_1!15068 lt!829551) (tuple2!25371 Unit!39078 (HashMap!2913 (Cell!11832 (_2!15068 lt!829551)) (hashF!4836 (cache!3294 thiss!28682)) (bvadd (_size!6054 (cache!3294 thiss!28682)) #b00000000000000000000000000000001) (defaultValue!3075 (cache!3294 thiss!28682)))) (tuple2!25371 Unit!39079 lt!829549)))))))

(declare-fun call!133040 () (_ BitVec 64))

(assert (=> b!2224545 (= lt!829556 call!133040)))

(declare-fun c!355162 () Bool)

(declare-fun contains!4359 (MutLongMap!3003 (_ BitVec 64)) Bool)

(assert (=> b!2224545 (= c!355162 (contains!4359 (v!29667 (underlying!6208 (cache!3294 thiss!28682))) lt!829556))))

(declare-fun e!1421405 () List!26197)

(assert (=> b!2224545 (= lt!829533 e!1421405)))

(declare-fun lt!829528 () List!26197)

(assert (=> b!2224545 (= lt!829528 (Cons!26103 (tuple2!25363 lt!829397 res!14206) lt!829533))))

(declare-fun call!133049 () tuple2!25368)

(assert (=> b!2224545 (= lt!829551 call!133049)))

(assert (=> b!2224545 (= lt!829549 (HashMap!2913 (Cell!11832 (_2!15068 lt!829551)) (hashF!4836 (cache!3294 thiss!28682)) (_size!6054 (cache!3294 thiss!28682)) (defaultValue!3075 (cache!3294 thiss!28682))))))

(declare-fun c!355166 () Bool)

(assert (=> b!2224545 (= c!355166 (_1!15068 lt!829551))))

(declare-fun lt!829555 () Unit!39074)

(declare-fun e!1421404 () Unit!39074)

(assert (=> b!2224545 (= lt!829555 e!1421404)))

(declare-fun b!2224546 () Bool)

(declare-fun res!954201 () Bool)

(declare-fun e!1421402 () Bool)

(assert (=> b!2224546 (=> (not res!954201) (not e!1421402))))

(declare-fun lt!829515 () tuple2!25364)

(assert (=> b!2224546 (= res!954201 (valid!2306 (_2!15066 lt!829515)))))

(declare-fun bm!133029 () Bool)

(declare-fun lt!829529 () tuple2!25368)

(declare-fun call!133048 () ListLongMap!299)

(assert (=> bm!133029 (= call!133048 (map!5314 (ite c!355163 (_2!15068 lt!829529) (_2!15068 lt!829551))))))

(declare-fun bm!133030 () Bool)

(declare-fun hash!567 (Hashable!2913 tuple2!25360) (_ BitVec 64))

(assert (=> bm!133030 (= call!133040 (hash!567 (hashF!4836 (cache!3294 thiss!28682)) lt!829397))))

(declare-fun b!2224547 () Bool)

(declare-fun e!1421406 () Unit!39074)

(declare-fun Unit!39080 () Unit!39074)

(assert (=> b!2224547 (= e!1421406 Unit!39080)))

(declare-fun lt!829560 () MutableMap!2913)

(declare-fun b!2224548 () Bool)

(declare-fun Unit!39081 () Unit!39074)

(declare-fun Unit!39082 () Unit!39074)

(assert (=> b!2224548 (= e!1421396 (tuple2!25365 (_1!15068 lt!829529) (_2!15069 (ite false (tuple2!25371 Unit!39081 (HashMap!2913 (Cell!11832 (_2!15068 lt!829529)) (hashF!4836 (cache!3294 thiss!28682)) (bvadd (_size!6054 (cache!3294 thiss!28682)) #b00000000000000000000000000000001) (defaultValue!3075 (cache!3294 thiss!28682)))) (tuple2!25371 Unit!39082 lt!829560)))))))

(assert (=> b!2224548 (= lt!829534 call!133040)))

(declare-fun call!133035 () List!26197)

(assert (=> b!2224548 (= lt!829516 call!133035)))

(declare-fun lt!829526 () List!26197)

(declare-fun call!133056 () List!26197)

(assert (=> b!2224548 (= lt!829526 (Cons!26103 (tuple2!25363 lt!829397 res!14206) call!133056))))

(assert (=> b!2224548 (= lt!829529 call!133049)))

(assert (=> b!2224548 (= lt!829560 (HashMap!2913 (Cell!11832 (_2!15068 lt!829529)) (hashF!4836 (cache!3294 thiss!28682)) (_size!6054 (cache!3294 thiss!28682)) (defaultValue!3075 (cache!3294 thiss!28682))))))

(declare-fun c!355167 () Bool)

(assert (=> b!2224548 (= c!355167 (_1!15068 lt!829529))))

(declare-fun lt!829532 () Unit!39074)

(assert (=> b!2224548 (= lt!829532 e!1421401)))

(declare-fun lt!829552 () ListLongMap!299)

(declare-fun bm!133031 () Bool)

(declare-fun call!133032 () Unit!39074)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!27 (List!26198 (_ BitVec 64) List!26197 Hashable!2913) Unit!39074)

(assert (=> bm!133031 (= call!133032 (lemmaInLongMapAllKeySameHashThenForTuple!27 (toList!1310 lt!829552) (ite c!355163 lt!829534 lt!829556) (ite c!355163 lt!829516 lt!829533) (hashF!4836 (cache!3294 thiss!28682))))))

(declare-fun call!133043 () Bool)

(assert (=> b!2224549 call!133043))

(declare-fun lt!829531 () Unit!39074)

(declare-fun Unit!39083 () Unit!39074)

(assert (=> b!2224549 (= lt!829531 Unit!39083)))

(declare-fun contains!4360 (ListMap!773 tuple2!25360) Bool)

(assert (=> b!2224549 (contains!4360 call!133050 lt!829397)))

(declare-fun lt!829521 () Unit!39074)

(declare-fun lt!829557 () Unit!39074)

(assert (=> b!2224549 (= lt!829521 lt!829557)))

(declare-fun call!133053 () Bool)

(declare-fun lt!829540 () ListMap!773)

(assert (=> b!2224549 (= call!133053 (contains!4360 lt!829540 lt!829397))))

(declare-fun call!133047 () Unit!39074)

(assert (=> b!2224549 (= lt!829557 call!133047)))

(assert (=> b!2224549 (= lt!829540 call!133050)))

(declare-fun lt!829563 () ListMap!773)

(assert (=> b!2224549 (= lt!829563 call!133037)))

(declare-fun lt!829524 () Unit!39074)

(declare-fun Unit!39084 () Unit!39074)

(assert (=> b!2224549 (= lt!829524 Unit!39084)))

(assert (=> b!2224549 call!133042))

(declare-fun lt!829537 () Unit!39074)

(declare-fun Unit!39085 () Unit!39074)

(assert (=> b!2224549 (= lt!829537 Unit!39085)))

(declare-fun call!133060 () Bool)

(assert (=> b!2224549 call!133060))

(declare-fun lt!829541 () Unit!39074)

(declare-fun Unit!39086 () Unit!39074)

(assert (=> b!2224549 (= lt!829541 Unit!39086)))

(declare-fun call!133052 () Bool)

(assert (=> b!2224549 call!133052))

(declare-fun lt!829527 () Unit!39074)

(declare-fun lt!829547 () Unit!39074)

(assert (=> b!2224549 (= lt!829527 lt!829547)))

(declare-fun call!133051 () Bool)

(assert (=> b!2224549 call!133051))

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!8 (ListLongMap!299 (_ BitVec 64) List!26197 tuple2!25360 (InoxSet Context!3826) Hashable!2913) Unit!39074)

(assert (=> b!2224549 (= lt!829547 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!8 lt!829552 lt!829556 lt!829528 lt!829397 res!14206 (hashF!4836 (cache!3294 thiss!28682))))))

(declare-fun lt!829523 () Unit!39074)

(declare-fun lt!829559 () Unit!39074)

(assert (=> b!2224549 (= lt!829523 lt!829559)))

(declare-fun e!1421398 () Bool)

(assert (=> b!2224549 e!1421398))

(declare-fun res!954199 () Bool)

(assert (=> b!2224549 (=> (not res!954199) (not e!1421398))))

(declare-fun call!133061 () Bool)

(assert (=> b!2224549 (= res!954199 call!133061)))

(declare-fun lt!829525 () ListLongMap!299)

(declare-fun call!133046 () ListLongMap!299)

(assert (=> b!2224549 (= lt!829525 call!133046)))

(declare-fun call!133044 () Unit!39074)

(assert (=> b!2224549 (= lt!829559 call!133044)))

(declare-fun lt!829539 () Unit!39074)

(assert (=> b!2224549 (= lt!829539 e!1421406)))

(declare-fun c!355164 () Bool)

(declare-fun isEmpty!14879 (List!26197) Bool)

(assert (=> b!2224549 (= c!355164 (not (isEmpty!14879 lt!829533)))))

(declare-fun Unit!39087 () Unit!39074)

(assert (=> b!2224549 (= e!1421404 Unit!39087)))

(declare-fun bm!133032 () Bool)

(assert (=> bm!133032 (= call!133050 (+!49 lt!829514 (tuple2!25363 lt!829397 res!14206)))))

(declare-fun bm!133033 () Bool)

(declare-fun apply!6461 (MutLongMap!3003 (_ BitVec 64)) List!26197)

(assert (=> bm!133033 (= call!133035 (apply!6461 (v!29667 (underlying!6208 (cache!3294 thiss!28682))) (ite c!355163 lt!829534 lt!829556)))))

(declare-fun bm!133034 () Bool)

(declare-fun call!133033 () ListMap!773)

(declare-fun call!133038 () ListMap!773)

(assert (=> bm!133034 (= call!133051 (eq!48 call!133033 call!133038))))

(assert (=> b!2224550 call!133042))

(declare-fun lt!829545 () Unit!39074)

(declare-fun Unit!39088 () Unit!39074)

(assert (=> b!2224550 (= lt!829545 Unit!39088)))

(assert (=> b!2224550 call!133060))

(declare-fun lt!829544 () Unit!39074)

(declare-fun Unit!39089 () Unit!39074)

(assert (=> b!2224550 (= lt!829544 Unit!39089)))

(assert (=> b!2224550 call!133052))

(declare-fun lt!829554 () Unit!39074)

(declare-fun lt!829535 () Unit!39074)

(assert (=> b!2224550 (= lt!829554 lt!829535)))

(assert (=> b!2224550 (= call!133053 call!133043)))

(assert (=> b!2224550 (= lt!829535 call!133047)))

(declare-fun lt!829512 () ListMap!773)

(assert (=> b!2224550 (= lt!829512 call!133050)))

(declare-fun lt!829553 () ListMap!773)

(assert (=> b!2224550 (= lt!829553 call!133062)))

(declare-fun lt!829558 () Unit!39074)

(declare-fun lt!829561 () Unit!39074)

(assert (=> b!2224550 (= lt!829558 lt!829561)))

(assert (=> b!2224550 call!133051))

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!8 (ListLongMap!299 (_ BitVec 64) List!26197 tuple2!25360 (InoxSet Context!3826) Hashable!2913) Unit!39074)

(assert (=> b!2224550 (= lt!829561 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!8 lt!829552 lt!829534 lt!829526 lt!829397 res!14206 (hashF!4836 (cache!3294 thiss!28682))))))

(declare-fun lt!829565 () Unit!39074)

(declare-fun lt!829564 () Unit!39074)

(assert (=> b!2224550 (= lt!829565 lt!829564)))

(declare-fun e!1421397 () Bool)

(assert (=> b!2224550 e!1421397))

(declare-fun res!954203 () Bool)

(assert (=> b!2224550 (=> (not res!954203) (not e!1421397))))

(assert (=> b!2224550 (= res!954203 call!133061)))

(declare-fun lt!829513 () ListLongMap!299)

(assert (=> b!2224550 (= lt!829513 call!133046)))

(assert (=> b!2224550 (= lt!829564 call!133044)))

(declare-fun lt!829536 () Unit!39074)

(declare-fun Unit!39090 () Unit!39074)

(assert (=> b!2224550 (= lt!829536 Unit!39090)))

(declare-fun noDuplicateKeys!33 (List!26197) Bool)

(assert (=> b!2224550 (noDuplicateKeys!33 lt!829526)))

(declare-fun lt!829548 () Unit!39074)

(declare-fun Unit!39091 () Unit!39074)

(assert (=> b!2224550 (= lt!829548 Unit!39091)))

(declare-fun containsKey!69 (List!26197 tuple2!25360) Bool)

(assert (=> b!2224550 (not (containsKey!69 call!133056 lt!829397))))

(declare-fun lt!829538 () Unit!39074)

(declare-fun Unit!39092 () Unit!39074)

(assert (=> b!2224550 (= lt!829538 Unit!39092)))

(declare-fun lt!829550 () Unit!39074)

(declare-fun lt!829517 () Unit!39074)

(assert (=> b!2224550 (= lt!829550 lt!829517)))

(assert (=> b!2224550 (noDuplicateKeys!33 call!133056)))

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!27 (List!26197 tuple2!25360) Unit!39074)

(assert (=> b!2224550 (= lt!829517 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!27 lt!829516 lt!829397))))

(declare-fun lt!829519 () Unit!39074)

(declare-fun lt!829546 () Unit!39074)

(assert (=> b!2224550 (= lt!829519 lt!829546)))

(declare-fun call!133045 () Bool)

(assert (=> b!2224550 call!133045))

(declare-fun call!133039 () Unit!39074)

(assert (=> b!2224550 (= lt!829546 call!133039)))

(declare-fun lt!829518 () Unit!39074)

(declare-fun lt!829520 () Unit!39074)

(assert (=> b!2224550 (= lt!829518 lt!829520)))

(assert (=> b!2224550 call!133055))

(assert (=> b!2224550 (= lt!829520 call!133032)))

(declare-fun Unit!39093 () Unit!39074)

(assert (=> b!2224550 (= e!1421401 Unit!39093)))

(declare-fun b!2224551 () Bool)

(declare-fun e!1421400 () Bool)

(declare-fun e!1421403 () Bool)

(assert (=> b!2224551 (= e!1421400 e!1421403)))

(declare-fun res!954200 () Bool)

(declare-fun call!133054 () ListMap!773)

(assert (=> b!2224551 (= res!954200 (contains!4360 call!133054 lt!829397))))

(assert (=> b!2224551 (=> (not res!954200) (not e!1421403))))

(declare-fun bm!133035 () Bool)

(assert (=> bm!133035 (= call!133061 (forall!5325 (ite c!355163 (toList!1310 lt!829513) (toList!1310 lt!829525)) (ite c!355163 lambda!84103 lambda!84104)))))

(declare-fun call!133034 () ListMap!773)

(declare-fun bm!133036 () Bool)

(assert (=> bm!133036 (= call!133034 (map!5313 (ite c!355163 lt!829560 lt!829549)))))

(declare-fun bm!133037 () Bool)

(assert (=> bm!133037 (= call!133053 (contains!4360 (ite c!355163 lt!829553 lt!829563) lt!829397))))

(declare-fun bm!133038 () Bool)

(declare-fun call!133036 () ListMap!773)

(assert (=> bm!133038 (= call!133038 (+!49 call!133036 (tuple2!25363 lt!829397 res!14206)))))

(declare-fun b!2224552 () Bool)

(declare-fun call!133041 () Bool)

(assert (=> b!2224552 (= e!1421398 call!133041)))

(declare-fun b!2224553 () Bool)

(assert (=> b!2224553 (= e!1421399 call!133058)))

(declare-fun bm!133039 () Bool)

(declare-fun update!125 (MutLongMap!3003 (_ BitVec 64) List!26197) tuple2!25368)

(assert (=> bm!133039 (= call!133049 (update!125 (v!29667 (underlying!6208 (cache!3294 thiss!28682))) (ite c!355163 lt!829534 lt!829556) (ite c!355163 lt!829526 lt!829528)))))

(declare-fun bm!133040 () Bool)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!27 (ListLongMap!299 (_ BitVec 64) List!26197 Hashable!2913) Unit!39074)

(assert (=> bm!133040 (= call!133044 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!27 lt!829552 (ite c!355163 lt!829534 lt!829556) (ite c!355163 lt!829526 lt!829528) (hashF!4836 (cache!3294 thiss!28682))))))

(declare-fun b!2224554 () Bool)

(assert (=> b!2224554 (= call!133037 lt!829514)))

(declare-fun lt!829562 () Unit!39074)

(declare-fun Unit!39094 () Unit!39074)

(assert (=> b!2224554 (= lt!829562 Unit!39094)))

(assert (=> b!2224554 call!133057))

(declare-fun Unit!39095 () Unit!39074)

(assert (=> b!2224554 (= e!1421404 Unit!39095)))

(declare-fun b!2224555 () Bool)

(declare-fun call!133059 () Bool)

(assert (=> b!2224555 (= e!1421400 call!133059)))

(declare-fun b!2224556 () Bool)

(declare-fun lt!829530 () Unit!39074)

(assert (=> b!2224556 (= e!1421406 lt!829530)))

(declare-fun lt!829522 () Unit!39074)

(assert (=> b!2224556 (= lt!829522 call!133032)))

(assert (=> b!2224556 call!133055))

(declare-fun lt!829542 () Unit!39074)

(assert (=> b!2224556 (= lt!829542 lt!829522)))

(assert (=> b!2224556 (= lt!829530 call!133039)))

(assert (=> b!2224556 call!133045))

(declare-fun d!664428 () Bool)

(assert (=> d!664428 e!1421402))

(declare-fun res!954202 () Bool)

(assert (=> d!664428 (=> (not res!954202) (not e!1421402))))

(assert (=> d!664428 (= res!954202 ((_ is HashMap!2913) (_2!15066 lt!829515)))))

(declare-fun lt!829511 () tuple2!25364)

(assert (=> d!664428 (= lt!829515 (tuple2!25365 (_1!15066 lt!829511) (_2!15066 lt!829511)))))

(assert (=> d!664428 (= lt!829511 e!1421396)))

(declare-fun contains!4361 (MutableMap!2913 tuple2!25360) Bool)

(assert (=> d!664428 (= c!355163 (contains!4361 (cache!3294 thiss!28682) lt!829397))))

(assert (=> d!664428 (= lt!829552 (map!5314 (v!29667 (underlying!6208 (cache!3294 thiss!28682)))))))

(assert (=> d!664428 (= lt!829514 (map!5313 (cache!3294 thiss!28682)))))

(assert (=> d!664428 (valid!2306 (cache!3294 thiss!28682))))

(assert (=> d!664428 (= (update!124 (cache!3294 thiss!28682) lt!829397 res!14206) lt!829515)))

(declare-fun b!2224557 () Bool)

(assert (=> b!2224557 (= e!1421397 call!133041)))

(declare-fun bm!133041 () Bool)

(assert (=> bm!133041 (= call!133062 call!133034)))

(declare-fun bm!133042 () Bool)

(declare-fun lemmaRemovePairForKeyPreservesHash!27 (List!26197 tuple2!25360 (_ BitVec 64) Hashable!2913) Unit!39074)

(assert (=> bm!133042 (= call!133039 (lemmaRemovePairForKeyPreservesHash!27 (ite c!355163 lt!829516 lt!829533) lt!829397 (ite c!355163 lt!829534 lt!829556) (hashF!4836 (cache!3294 thiss!28682))))))

(declare-fun bm!133043 () Bool)

(assert (=> bm!133043 (= call!133037 call!133034)))

(declare-fun bm!133044 () Bool)

(declare-fun removePairForKey!27 (List!26197 tuple2!25360) List!26197)

(assert (=> bm!133044 (= call!133056 (removePairForKey!27 (ite c!355163 lt!829516 lt!829533) lt!829397))))

(declare-fun bm!133045 () Bool)

(declare-fun lemmaEquivalentThenSameContains!8 (ListMap!773 ListMap!773 tuple2!25360) Unit!39074)

(assert (=> bm!133045 (= call!133047 (lemmaEquivalentThenSameContains!8 (ite c!355163 lt!829553 lt!829563) (ite c!355163 lt!829512 lt!829540) lt!829397))))

(declare-fun bm!133046 () Bool)

(declare-fun +!50 (ListLongMap!299 tuple2!25366) ListLongMap!299)

(assert (=> bm!133046 (= call!133046 (+!50 lt!829552 (ite c!355163 (tuple2!25367 lt!829534 lt!829526) (tuple2!25367 lt!829556 lt!829528))))))

(declare-fun b!2224558 () Bool)

(assert (=> b!2224558 (= e!1421402 e!1421400)))

(declare-fun c!355165 () Bool)

(assert (=> b!2224558 (= c!355165 (_1!15066 lt!829515))))

(declare-fun bm!133047 () Bool)

(assert (=> bm!133047 (= call!133059 (eq!48 call!133054 e!1421399))))

(declare-fun c!355161 () Bool)

(assert (=> bm!133047 (= c!355161 c!355165)))

(declare-fun bm!133048 () Bool)

(assert (=> bm!133048 (= call!133052 (forall!5325 (toList!1310 call!133048) (ite c!355163 lambda!84103 lambda!84104)))))

(declare-fun b!2224559 () Bool)

(assert (=> b!2224559 (= e!1421405 call!133035)))

(declare-fun bm!133049 () Bool)

(assert (=> bm!133049 (= call!133041 (allKeysSameHashInMap!96 (ite c!355163 lt!829513 lt!829525) (hashF!4836 (cache!3294 thiss!28682))))))

(declare-fun b!2224560 () Bool)

(assert (=> b!2224560 (= e!1421403 call!133059)))

(declare-fun bm!133050 () Bool)

(assert (=> bm!133050 (= call!133060 (allKeysSameHashInMap!96 call!133048 (hashF!4836 (cache!3294 thiss!28682))))))

(declare-fun bm!133051 () Bool)

(assert (=> bm!133051 (= call!133045 (allKeysSameHash!31 call!133056 (ite c!355163 lt!829534 lt!829556) (hashF!4836 (cache!3294 thiss!28682))))))

(declare-fun bm!133052 () Bool)

(assert (=> bm!133052 (= call!133036 (extractMap!97 (toList!1310 lt!829552)))))

(declare-fun bm!133053 () Bool)

(assert (=> bm!133053 (= call!133054 (map!5313 (_2!15066 lt!829515)))))

(declare-fun bm!133054 () Bool)

(assert (=> bm!133054 (= call!133058 (map!5313 (cache!3294 thiss!28682)))))

(declare-fun bm!133055 () Bool)

(assert (=> bm!133055 (= call!133057 (valid!2306 (ite c!355163 lt!829560 lt!829549)))))

(declare-fun bm!133056 () Bool)

(assert (=> bm!133056 (= call!133043 (contains!4360 (ite c!355163 lt!829512 call!133037) lt!829397))))

(declare-fun b!2224561 () Bool)

(assert (=> b!2224561 (= e!1421405 Nil!26103)))

(declare-fun bm!133057 () Bool)

(assert (=> bm!133057 (= call!133033 (extractMap!97 (toList!1310 call!133046)))))

(assert (= (and d!664428 c!355163) b!2224548))

(assert (= (and d!664428 (not c!355163)) b!2224545))

(assert (= (and b!2224548 c!355167) b!2224550))

(assert (= (and b!2224548 (not c!355167)) b!2224544))

(assert (= (and b!2224550 res!954203) b!2224557))

(assert (= (or b!2224550 b!2224544) bm!133041))

(assert (= (and b!2224545 c!355162) b!2224559))

(assert (= (and b!2224545 (not c!355162)) b!2224561))

(assert (= (and b!2224545 c!355166) b!2224549))

(assert (= (and b!2224545 (not c!355166)) b!2224554))

(assert (= (and b!2224549 c!355164) b!2224556))

(assert (= (and b!2224549 (not c!355164)) b!2224547))

(assert (= (and b!2224549 res!954199) b!2224552))

(assert (= (or b!2224549 b!2224554) bm!133043))

(assert (= (or b!2224557 b!2224552) bm!133049))

(assert (= (or b!2224548 b!2224559) bm!133033))

(assert (= (or b!2224550 b!2224556) bm!133031))

(assert (= (or b!2224550 b!2224556) bm!133042))

(assert (= (or b!2224544 b!2224554) bm!133055))

(assert (= (or b!2224550 b!2224549) bm!133035))

(assert (= (or b!2224548 b!2224545) bm!133039))

(assert (= (or bm!133041 bm!133043) bm!133036))

(assert (= (or b!2224550 b!2224549) bm!133046))

(assert (= (or b!2224550 b!2224549) bm!133056))

(assert (= (or b!2224548 b!2224545) bm!133030))

(assert (= (or b!2224550 b!2224548 b!2224556) bm!133044))

(assert (= (or b!2224550 b!2224549) bm!133040))

(assert (= (or b!2224550 b!2224549) bm!133037))

(assert (= (or b!2224550 b!2224549) bm!133052))

(assert (= (or b!2224550 b!2224556) bm!133027))

(assert (= (or b!2224550 b!2224549) bm!133032))

(assert (= (or b!2224550 b!2224549) bm!133029))

(assert (= (or b!2224550 b!2224549) bm!133045))

(assert (= (or b!2224550 b!2224549) bm!133050))

(assert (= (or b!2224550 b!2224549) bm!133028))

(assert (= (or b!2224550 b!2224549) bm!133038))

(assert (= (or b!2224550 b!2224549) bm!133048))

(assert (= (or b!2224550 b!2224549) bm!133057))

(assert (= (or b!2224550 b!2224556) bm!133051))

(assert (= (or b!2224550 b!2224549) bm!133034))

(assert (= (and d!664428 res!954202) b!2224546))

(assert (= (and b!2224546 res!954201) b!2224558))

(assert (= (and b!2224558 c!355165) b!2224551))

(assert (= (and b!2224558 (not c!355165)) b!2224555))

(assert (= (and b!2224551 res!954200) b!2224560))

(assert (= (or b!2224560 b!2224555) bm!133054))

(assert (= (or b!2224551 b!2224560 b!2224555) bm!133053))

(assert (= (or b!2224560 b!2224555) bm!133047))

(assert (= (and bm!133047 c!355161) b!2224543))

(assert (= (and bm!133047 (not c!355161)) b!2224553))

(declare-fun m!2664450 () Bool)

(assert (=> bm!133051 m!2664450))

(declare-fun m!2664452 () Bool)

(assert (=> b!2224545 m!2664452))

(declare-fun m!2664454 () Bool)

(assert (=> bm!133033 m!2664454))

(assert (=> bm!133054 m!2664424))

(declare-fun m!2664456 () Bool)

(assert (=> bm!133056 m!2664456))

(declare-fun m!2664458 () Bool)

(assert (=> b!2224551 m!2664458))

(declare-fun m!2664460 () Bool)

(assert (=> bm!133057 m!2664460))

(declare-fun m!2664462 () Bool)

(assert (=> bm!133050 m!2664462))

(declare-fun m!2664464 () Bool)

(assert (=> d!664428 m!2664464))

(assert (=> d!664428 m!2664417))

(assert (=> d!664428 m!2664424))

(assert (=> d!664428 m!2664391))

(declare-fun m!2664466 () Bool)

(assert (=> bm!133030 m!2664466))

(declare-fun m!2664468 () Bool)

(assert (=> bm!133038 m!2664468))

(declare-fun m!2664470 () Bool)

(assert (=> bm!133053 m!2664470))

(declare-fun m!2664472 () Bool)

(assert (=> bm!133036 m!2664472))

(declare-fun m!2664474 () Bool)

(assert (=> bm!133055 m!2664474))

(declare-fun m!2664476 () Bool)

(assert (=> bm!133047 m!2664476))

(declare-fun m!2664478 () Bool)

(assert (=> bm!133042 m!2664478))

(declare-fun m!2664480 () Bool)

(assert (=> bm!133034 m!2664480))

(declare-fun m!2664482 () Bool)

(assert (=> bm!133032 m!2664482))

(declare-fun m!2664484 () Bool)

(assert (=> bm!133052 m!2664484))

(declare-fun m!2664486 () Bool)

(assert (=> bm!133046 m!2664486))

(declare-fun m!2664488 () Bool)

(assert (=> b!2224550 m!2664488))

(declare-fun m!2664490 () Bool)

(assert (=> b!2224550 m!2664490))

(declare-fun m!2664492 () Bool)

(assert (=> b!2224550 m!2664492))

(declare-fun m!2664494 () Bool)

(assert (=> b!2224550 m!2664494))

(declare-fun m!2664496 () Bool)

(assert (=> b!2224550 m!2664496))

(declare-fun m!2664498 () Bool)

(assert (=> bm!133040 m!2664498))

(declare-fun m!2664500 () Bool)

(assert (=> b!2224546 m!2664500))

(declare-fun m!2664502 () Bool)

(assert (=> bm!133044 m!2664502))

(declare-fun m!2664504 () Bool)

(assert (=> bm!133031 m!2664504))

(declare-fun m!2664506 () Bool)

(assert (=> bm!133035 m!2664506))

(declare-fun m!2664508 () Bool)

(assert (=> b!2224543 m!2664508))

(declare-fun m!2664510 () Bool)

(assert (=> bm!133037 m!2664510))

(declare-fun m!2664512 () Bool)

(assert (=> bm!133027 m!2664512))

(declare-fun m!2664514 () Bool)

(assert (=> b!2224549 m!2664514))

(declare-fun m!2664516 () Bool)

(assert (=> b!2224549 m!2664516))

(declare-fun m!2664518 () Bool)

(assert (=> b!2224549 m!2664518))

(declare-fun m!2664520 () Bool)

(assert (=> b!2224549 m!2664520))

(declare-fun m!2664522 () Bool)

(assert (=> bm!133028 m!2664522))

(declare-fun m!2664524 () Bool)

(assert (=> bm!133048 m!2664524))

(declare-fun m!2664526 () Bool)

(assert (=> bm!133029 m!2664526))

(declare-fun m!2664528 () Bool)

(assert (=> bm!133049 m!2664528))

(declare-fun m!2664530 () Bool)

(assert (=> bm!133045 m!2664530))

(declare-fun m!2664532 () Bool)

(assert (=> bm!133039 m!2664532))

(assert (=> b!2224461 d!664428))

(declare-fun d!664430 () Bool)

(declare-fun e!1421409 () Bool)

(assert (=> d!664430 e!1421409))

(declare-fun res!954206 () Bool)

(assert (=> d!664430 (=> (not res!954206) (not e!1421409))))

(assert (=> d!664430 (= res!954206 (and (or (not ((_ is HashMap!2913) (cache!3294 thiss!28682))) ((_ is HashMap!2913) (cache!3294 thiss!28682))) ((_ is HashMap!2913) (cache!3294 thiss!28682))))))

(declare-fun lt!829579 () Unit!39074)

(declare-fun choose!13109 (MutableMap!2913 tuple2!25360 (InoxSet Context!3826) Int) Unit!39074)

(assert (=> d!664430 (= lt!829579 (choose!13109 (cache!3294 thiss!28682) lt!829397 res!14206 lambda!84084))))

(assert (=> d!664430 (valid!2306 (cache!3294 thiss!28682))))

(assert (=> d!664430 (= (lemmaUpdatePreservesForallPairs!15 (cache!3294 thiss!28682) lt!829397 res!14206 lambda!84084) lt!829579)))

(declare-fun b!2224564 () Bool)

(declare-fun lt!829578 () MutableMap!2913)

(assert (=> b!2224564 (= e!1421409 (forall!5323 (toList!1309 (map!5313 lt!829578)) lambda!84084))))

(assert (=> b!2224564 ((_ is HashMap!2913) lt!829578)))

(declare-fun lt!829580 () MutableMap!2913)

(assert (=> b!2224564 (= lt!829578 lt!829580)))

(assert (=> b!2224564 ((_ is HashMap!2913) lt!829580)))

(declare-fun lt!829583 () MutableMap!2913)

(assert (=> b!2224564 (= lt!829580 lt!829583)))

(assert (=> b!2224564 ((_ is HashMap!2913) lt!829583)))

(declare-fun lt!829581 () tuple2!25364)

(assert (=> b!2224564 (= lt!829583 (_2!15066 lt!829581))))

(assert (=> b!2224564 ((_ is HashMap!2913) (_2!15066 lt!829581))))

(declare-fun lt!829582 () tuple2!25364)

(assert (=> b!2224564 (= lt!829581 lt!829582)))

(assert (=> b!2224564 ((_ is HashMap!2913) (_2!15066 lt!829582))))

(assert (=> b!2224564 (= lt!829582 (update!124 (cache!3294 thiss!28682) lt!829397 res!14206))))

(assert (= (and d!664430 res!954206) b!2224564))

(declare-fun m!2664534 () Bool)

(assert (=> d!664430 m!2664534))

(assert (=> d!664430 m!2664391))

(declare-fun m!2664536 () Bool)

(assert (=> b!2224564 m!2664536))

(declare-fun m!2664538 () Bool)

(assert (=> b!2224564 m!2664538))

(assert (=> b!2224564 m!2664403))

(assert (=> b!2224461 d!664430))

(declare-fun condSetEmpty!19724 () Bool)

(assert (=> setNonEmpty!19721 (= condSetEmpty!19724 (= setRest!19721 ((as const (Array Context!3826 Bool)) false)))))

(declare-fun setRes!19724 () Bool)

(assert (=> setNonEmpty!19721 (= tp!694437 setRes!19724)))

(declare-fun setIsEmpty!19724 () Bool)

(assert (=> setIsEmpty!19724 setRes!19724))

(declare-fun setElem!19724 () Context!3826)

(declare-fun tp!694449 () Bool)

(declare-fun setNonEmpty!19724 () Bool)

(declare-fun e!1421412 () Bool)

(assert (=> setNonEmpty!19724 (= setRes!19724 (and tp!694449 (inv!35441 setElem!19724) e!1421412))))

(declare-fun setRest!19724 () (InoxSet Context!3826))

(assert (=> setNonEmpty!19724 (= setRest!19721 ((_ map or) (store ((as const (Array Context!3826 Bool)) false) setElem!19724 true) setRest!19724))))

(declare-fun b!2224569 () Bool)

(declare-fun tp!694448 () Bool)

(assert (=> b!2224569 (= e!1421412 tp!694448)))

(assert (= (and setNonEmpty!19721 condSetEmpty!19724) setIsEmpty!19724))

(assert (= (and setNonEmpty!19721 (not condSetEmpty!19724)) setNonEmpty!19724))

(assert (= setNonEmpty!19724 b!2224569))

(declare-fun m!2664540 () Bool)

(assert (=> setNonEmpty!19724 m!2664540))

(declare-fun setRes!19727 () Bool)

(declare-fun tp!694459 () Bool)

(declare-fun setElem!19727 () Context!3826)

(declare-fun e!1421420 () Bool)

(declare-fun setNonEmpty!19727 () Bool)

(assert (=> setNonEmpty!19727 (= setRes!19727 (and tp!694459 (inv!35441 setElem!19727) e!1421420))))

(declare-fun setRest!19727 () (InoxSet Context!3826))

(assert (=> setNonEmpty!19727 (= (_2!15065 (h!31504 (zeroValue!3261 (v!29666 (underlying!6207 (v!29667 (underlying!6208 (cache!3294 thiss!28682)))))))) ((_ map or) (store ((as const (Array Context!3826 Bool)) false) setElem!19727 true) setRest!19727))))

(declare-fun b!2224578 () Bool)

(declare-fun e!1421421 () Bool)

(declare-fun tp!694461 () Bool)

(assert (=> b!2224578 (= e!1421421 tp!694461)))

(declare-fun b!2224579 () Bool)

(declare-fun tp!694458 () Bool)

(assert (=> b!2224579 (= e!1421420 tp!694458)))

(declare-fun setIsEmpty!19727 () Bool)

(assert (=> setIsEmpty!19727 setRes!19727))

(declare-fun e!1421419 () Bool)

(declare-fun tp!694460 () Bool)

(declare-fun b!2224580 () Bool)

(assert (=> b!2224580 (= e!1421419 (and (inv!35441 (_1!15064 (_1!15065 (h!31504 (zeroValue!3261 (v!29666 (underlying!6207 (v!29667 (underlying!6208 (cache!3294 thiss!28682)))))))))) e!1421421 tp_is_empty!9955 setRes!19727 tp!694460))))

(declare-fun condSetEmpty!19727 () Bool)

(assert (=> b!2224580 (= condSetEmpty!19727 (= (_2!15065 (h!31504 (zeroValue!3261 (v!29666 (underlying!6207 (v!29667 (underlying!6208 (cache!3294 thiss!28682)))))))) ((as const (Array Context!3826 Bool)) false)))))

(assert (=> b!2224467 (= tp!694440 e!1421419)))

(assert (= b!2224580 b!2224578))

(assert (= (and b!2224580 condSetEmpty!19727) setIsEmpty!19727))

(assert (= (and b!2224580 (not condSetEmpty!19727)) setNonEmpty!19727))

(assert (= setNonEmpty!19727 b!2224579))

(assert (= (and b!2224467 ((_ is Cons!26103) (zeroValue!3261 (v!29666 (underlying!6207 (v!29667 (underlying!6208 (cache!3294 thiss!28682)))))))) b!2224580))

(declare-fun m!2664542 () Bool)

(assert (=> setNonEmpty!19727 m!2664542))

(declare-fun m!2664544 () Bool)

(assert (=> b!2224580 m!2664544))

(declare-fun setRes!19728 () Bool)

(declare-fun setNonEmpty!19728 () Bool)

(declare-fun e!1421423 () Bool)

(declare-fun tp!694463 () Bool)

(declare-fun setElem!19728 () Context!3826)

(assert (=> setNonEmpty!19728 (= setRes!19728 (and tp!694463 (inv!35441 setElem!19728) e!1421423))))

(declare-fun setRest!19728 () (InoxSet Context!3826))

(assert (=> setNonEmpty!19728 (= (_2!15065 (h!31504 (minValue!3261 (v!29666 (underlying!6207 (v!29667 (underlying!6208 (cache!3294 thiss!28682)))))))) ((_ map or) (store ((as const (Array Context!3826 Bool)) false) setElem!19728 true) setRest!19728))))

(declare-fun b!2224581 () Bool)

(declare-fun e!1421424 () Bool)

(declare-fun tp!694465 () Bool)

(assert (=> b!2224581 (= e!1421424 tp!694465)))

(declare-fun b!2224582 () Bool)

(declare-fun tp!694462 () Bool)

(assert (=> b!2224582 (= e!1421423 tp!694462)))

(declare-fun setIsEmpty!19728 () Bool)

(assert (=> setIsEmpty!19728 setRes!19728))

(declare-fun b!2224583 () Bool)

(declare-fun e!1421422 () Bool)

(declare-fun tp!694464 () Bool)

(assert (=> b!2224583 (= e!1421422 (and (inv!35441 (_1!15064 (_1!15065 (h!31504 (minValue!3261 (v!29666 (underlying!6207 (v!29667 (underlying!6208 (cache!3294 thiss!28682)))))))))) e!1421424 tp_is_empty!9955 setRes!19728 tp!694464))))

(declare-fun condSetEmpty!19728 () Bool)

(assert (=> b!2224583 (= condSetEmpty!19728 (= (_2!15065 (h!31504 (minValue!3261 (v!29666 (underlying!6207 (v!29667 (underlying!6208 (cache!3294 thiss!28682)))))))) ((as const (Array Context!3826 Bool)) false)))))

(assert (=> b!2224467 (= tp!694442 e!1421422)))

(assert (= b!2224583 b!2224581))

(assert (= (and b!2224583 condSetEmpty!19728) setIsEmpty!19728))

(assert (= (and b!2224583 (not condSetEmpty!19728)) setNonEmpty!19728))

(assert (= setNonEmpty!19728 b!2224582))

(assert (= (and b!2224467 ((_ is Cons!26103) (minValue!3261 (v!29666 (underlying!6207 (v!29667 (underlying!6208 (cache!3294 thiss!28682)))))))) b!2224583))

(declare-fun m!2664546 () Bool)

(assert (=> setNonEmpty!19728 m!2664546))

(declare-fun m!2664548 () Bool)

(assert (=> b!2224583 m!2664548))

(declare-fun e!1421426 () Bool)

(declare-fun setElem!19729 () Context!3826)

(declare-fun setNonEmpty!19729 () Bool)

(declare-fun setRes!19729 () Bool)

(declare-fun tp!694467 () Bool)

(assert (=> setNonEmpty!19729 (= setRes!19729 (and tp!694467 (inv!35441 setElem!19729) e!1421426))))

(declare-fun setRest!19729 () (InoxSet Context!3826))

(assert (=> setNonEmpty!19729 (= (_2!15065 (h!31504 mapDefault!14166)) ((_ map or) (store ((as const (Array Context!3826 Bool)) false) setElem!19729 true) setRest!19729))))

(declare-fun b!2224584 () Bool)

(declare-fun e!1421427 () Bool)

(declare-fun tp!694469 () Bool)

(assert (=> b!2224584 (= e!1421427 tp!694469)))

(declare-fun b!2224585 () Bool)

(declare-fun tp!694466 () Bool)

(assert (=> b!2224585 (= e!1421426 tp!694466)))

(declare-fun setIsEmpty!19729 () Bool)

(assert (=> setIsEmpty!19729 setRes!19729))

(declare-fun e!1421425 () Bool)

(declare-fun tp!694468 () Bool)

(declare-fun b!2224586 () Bool)

(assert (=> b!2224586 (= e!1421425 (and (inv!35441 (_1!15064 (_1!15065 (h!31504 mapDefault!14166)))) e!1421427 tp_is_empty!9955 setRes!19729 tp!694468))))

(declare-fun condSetEmpty!19729 () Bool)

(assert (=> b!2224586 (= condSetEmpty!19729 (= (_2!15065 (h!31504 mapDefault!14166)) ((as const (Array Context!3826 Bool)) false)))))

(assert (=> b!2224458 (= tp!694441 e!1421425)))

(assert (= b!2224586 b!2224584))

(assert (= (and b!2224586 condSetEmpty!19729) setIsEmpty!19729))

(assert (= (and b!2224586 (not condSetEmpty!19729)) setNonEmpty!19729))

(assert (= setNonEmpty!19729 b!2224585))

(assert (= (and b!2224458 ((_ is Cons!26103) mapDefault!14166)) b!2224586))

(declare-fun m!2664550 () Bool)

(assert (=> setNonEmpty!19729 m!2664550))

(declare-fun m!2664552 () Bool)

(assert (=> b!2224586 m!2664552))

(declare-fun b!2224591 () Bool)

(declare-fun e!1421430 () Bool)

(declare-fun tp!694474 () Bool)

(declare-fun tp!694475 () Bool)

(assert (=> b!2224591 (= e!1421430 (and tp!694474 tp!694475))))

(assert (=> b!2224462 (= tp!694443 e!1421430)))

(assert (= (and b!2224462 ((_ is Cons!26102) (exprs!2413 setElem!19721))) b!2224591))

(declare-fun b!2224592 () Bool)

(declare-fun e!1421431 () Bool)

(declare-fun tp!694476 () Bool)

(declare-fun tp!694477 () Bool)

(assert (=> b!2224592 (= e!1421431 (and tp!694476 tp!694477))))

(assert (=> b!2224465 (= tp!694434 e!1421431)))

(assert (= (and b!2224465 ((_ is Cons!26102) (exprs!2413 ctx!44))) b!2224592))

(declare-fun mapNonEmpty!14169 () Bool)

(declare-fun mapRes!14169 () Bool)

(declare-fun tp!694497 () Bool)

(declare-fun e!1421446 () Bool)

(assert (=> mapNonEmpty!14169 (= mapRes!14169 (and tp!694497 e!1421446))))

(declare-fun mapValue!14169 () List!26197)

(declare-fun mapRest!14169 () (Array (_ BitVec 32) List!26197))

(declare-fun mapKey!14169 () (_ BitVec 32))

(assert (=> mapNonEmpty!14169 (= mapRest!14166 (store mapRest!14169 mapKey!14169 mapValue!14169))))

(declare-fun setIsEmpty!19734 () Bool)

(declare-fun setRes!19735 () Bool)

(assert (=> setIsEmpty!19734 setRes!19735))

(declare-fun mapIsEmpty!14169 () Bool)

(assert (=> mapIsEmpty!14169 mapRes!14169))

(declare-fun e!1421448 () Bool)

(declare-fun setRes!19734 () Bool)

(declare-fun setElem!19735 () Context!3826)

(declare-fun tp!694503 () Bool)

(declare-fun setNonEmpty!19734 () Bool)

(assert (=> setNonEmpty!19734 (= setRes!19734 (and tp!694503 (inv!35441 setElem!19735) e!1421448))))

(declare-fun setRest!19734 () (InoxSet Context!3826))

(assert (=> setNonEmpty!19734 (= (_2!15065 (h!31504 mapValue!14169)) ((_ map or) (store ((as const (Array Context!3826 Bool)) false) setElem!19735 true) setRest!19734))))

(declare-fun tp!694496 () Bool)

(declare-fun b!2224607 () Bool)

(declare-fun e!1421447 () Bool)

(assert (=> b!2224607 (= e!1421446 (and (inv!35441 (_1!15064 (_1!15065 (h!31504 mapValue!14169)))) e!1421447 tp_is_empty!9955 setRes!19734 tp!694496))))

(declare-fun condSetEmpty!19734 () Bool)

(assert (=> b!2224607 (= condSetEmpty!19734 (= (_2!15065 (h!31504 mapValue!14169)) ((as const (Array Context!3826 Bool)) false)))))

(declare-fun b!2224608 () Bool)

(declare-fun tp!694499 () Bool)

(assert (=> b!2224608 (= e!1421447 tp!694499)))

(declare-fun e!1421444 () Bool)

(declare-fun e!1421445 () Bool)

(declare-fun b!2224609 () Bool)

(declare-fun tp!694500 () Bool)

(declare-fun mapDefault!14169 () List!26197)

(assert (=> b!2224609 (= e!1421445 (and (inv!35441 (_1!15064 (_1!15065 (h!31504 mapDefault!14169)))) e!1421444 tp_is_empty!9955 setRes!19735 tp!694500))))

(declare-fun condSetEmpty!19735 () Bool)

(assert (=> b!2224609 (= condSetEmpty!19735 (= (_2!15065 (h!31504 mapDefault!14169)) ((as const (Array Context!3826 Bool)) false)))))

(declare-fun setNonEmpty!19735 () Bool)

(declare-fun setElem!19734 () Context!3826)

(declare-fun e!1421449 () Bool)

(declare-fun tp!694502 () Bool)

(assert (=> setNonEmpty!19735 (= setRes!19735 (and tp!694502 (inv!35441 setElem!19734) e!1421449))))

(declare-fun setRest!19735 () (InoxSet Context!3826))

(assert (=> setNonEmpty!19735 (= (_2!15065 (h!31504 mapDefault!14169)) ((_ map or) (store ((as const (Array Context!3826 Bool)) false) setElem!19734 true) setRest!19735))))

(declare-fun b!2224610 () Bool)

(declare-fun tp!694504 () Bool)

(assert (=> b!2224610 (= e!1421444 tp!694504)))

(declare-fun b!2224611 () Bool)

(declare-fun tp!694501 () Bool)

(assert (=> b!2224611 (= e!1421449 tp!694501)))

(declare-fun condMapEmpty!14169 () Bool)

(assert (=> mapNonEmpty!14166 (= condMapEmpty!14169 (= mapRest!14166 ((as const (Array (_ BitVec 32) List!26197)) mapDefault!14169)))))

(assert (=> mapNonEmpty!14166 (= tp!694435 (and e!1421445 mapRes!14169))))

(declare-fun b!2224612 () Bool)

(declare-fun tp!694498 () Bool)

(assert (=> b!2224612 (= e!1421448 tp!694498)))

(declare-fun setIsEmpty!19735 () Bool)

(assert (=> setIsEmpty!19735 setRes!19734))

(assert (= (and mapNonEmpty!14166 condMapEmpty!14169) mapIsEmpty!14169))

(assert (= (and mapNonEmpty!14166 (not condMapEmpty!14169)) mapNonEmpty!14169))

(assert (= b!2224607 b!2224608))

(assert (= (and b!2224607 condSetEmpty!19734) setIsEmpty!19735))

(assert (= (and b!2224607 (not condSetEmpty!19734)) setNonEmpty!19734))

(assert (= setNonEmpty!19734 b!2224612))

(assert (= (and mapNonEmpty!14169 ((_ is Cons!26103) mapValue!14169)) b!2224607))

(assert (= b!2224609 b!2224610))

(assert (= (and b!2224609 condSetEmpty!19735) setIsEmpty!19734))

(assert (= (and b!2224609 (not condSetEmpty!19735)) setNonEmpty!19735))

(assert (= setNonEmpty!19735 b!2224611))

(assert (= (and mapNonEmpty!14166 ((_ is Cons!26103) mapDefault!14169)) b!2224609))

(declare-fun m!2664554 () Bool)

(assert (=> b!2224607 m!2664554))

(declare-fun m!2664556 () Bool)

(assert (=> setNonEmpty!19735 m!2664556))

(declare-fun m!2664558 () Bool)

(assert (=> setNonEmpty!19734 m!2664558))

(declare-fun m!2664560 () Bool)

(assert (=> b!2224609 m!2664560))

(declare-fun m!2664562 () Bool)

(assert (=> mapNonEmpty!14169 m!2664562))

(declare-fun setElem!19736 () Context!3826)

(declare-fun setRes!19736 () Bool)

(declare-fun tp!694506 () Bool)

(declare-fun setNonEmpty!19736 () Bool)

(declare-fun e!1421451 () Bool)

(assert (=> setNonEmpty!19736 (= setRes!19736 (and tp!694506 (inv!35441 setElem!19736) e!1421451))))

(declare-fun setRest!19736 () (InoxSet Context!3826))

(assert (=> setNonEmpty!19736 (= (_2!15065 (h!31504 mapValue!14166)) ((_ map or) (store ((as const (Array Context!3826 Bool)) false) setElem!19736 true) setRest!19736))))

(declare-fun b!2224613 () Bool)

(declare-fun e!1421452 () Bool)

(declare-fun tp!694508 () Bool)

(assert (=> b!2224613 (= e!1421452 tp!694508)))

(declare-fun b!2224614 () Bool)

(declare-fun tp!694505 () Bool)

(assert (=> b!2224614 (= e!1421451 tp!694505)))

(declare-fun setIsEmpty!19736 () Bool)

(assert (=> setIsEmpty!19736 setRes!19736))

(declare-fun e!1421450 () Bool)

(declare-fun tp!694507 () Bool)

(declare-fun b!2224615 () Bool)

(assert (=> b!2224615 (= e!1421450 (and (inv!35441 (_1!15064 (_1!15065 (h!31504 mapValue!14166)))) e!1421452 tp_is_empty!9955 setRes!19736 tp!694507))))

(declare-fun condSetEmpty!19736 () Bool)

(assert (=> b!2224615 (= condSetEmpty!19736 (= (_2!15065 (h!31504 mapValue!14166)) ((as const (Array Context!3826 Bool)) false)))))

(assert (=> mapNonEmpty!14166 (= tp!694438 e!1421450)))

(assert (= b!2224615 b!2224613))

(assert (= (and b!2224615 condSetEmpty!19736) setIsEmpty!19736))

(assert (= (and b!2224615 (not condSetEmpty!19736)) setNonEmpty!19736))

(assert (= setNonEmpty!19736 b!2224614))

(assert (= (and mapNonEmpty!14166 ((_ is Cons!26103) mapValue!14166)) b!2224615))

(declare-fun m!2664564 () Bool)

(assert (=> setNonEmpty!19736 m!2664564))

(declare-fun m!2664566 () Bool)

(assert (=> b!2224615 m!2664566))

(declare-fun b_lambda!71619 () Bool)

(assert (= b_lambda!71617 (or b!2224461 b_lambda!71619)))

(declare-fun bs!453485 () Bool)

(declare-fun d!664432 () Bool)

(assert (= bs!453485 (and d!664432 b!2224461)))

(assert (=> bs!453485 (= (dynLambda!11515 lambda!84084 (h!31504 (toList!1309 (map!5313 (_2!15066 (update!124 (cache!3294 thiss!28682) lt!829397 res!14206)))))) (= (_2!15065 (h!31504 (toList!1309 (map!5313 (_2!15066 (update!124 (cache!3294 thiss!28682) lt!829397 res!14206)))))) (derivationStepZipperUp!30 (_1!15064 (_1!15065 (h!31504 (toList!1309 (map!5313 (_2!15066 (update!124 (cache!3294 thiss!28682) lt!829397 res!14206))))))) (_2!15064 (_1!15065 (h!31504 (toList!1309 (map!5313 (_2!15066 (update!124 (cache!3294 thiss!28682) lt!829397 res!14206))))))))))))

(declare-fun m!2664568 () Bool)

(assert (=> bs!453485 m!2664568))

(assert (=> b!2224503 d!664432))

(check-sat (not d!664420) (not setNonEmpty!19728) (not bm!133032) (not bm!133029) (not b!2224608) (not bm!133056) (not bm!133040) (not bm!133055) b_and!174461 (not b!2224549) (not b!2224543) (not b!2224611) (not b!2224551) (not bm!133036) (not b!2224585) (not bm!133053) (not bm!133047) (not bm!133037) (not bm!133039) (not bm!133045) (not b_next!65179) (not d!664416) (not bm!133030) (not d!664428) (not b!2224615) (not setNonEmpty!19735) (not bs!453485) (not bm!133046) (not b!2224483) (not d!664430) (not setNonEmpty!19727) (not bm!132964) (not bm!133057) (not b_lambda!71619) (not b!2224494) (not b!2224584) (not b!2224569) (not setNonEmpty!19729) (not b!2224609) (not bm!133033) (not b!2224474) (not b!2224580) tp_is_empty!9955 (not b!2224613) (not bm!133038) (not bm!133049) (not d!664408) (not bm!133052) (not b!2224612) (not b!2224545) (not mapNonEmpty!14169) (not setNonEmpty!19736) (not bm!133028) (not b!2224564) (not bm!133034) (not b!2224610) (not bm!133027) (not b!2224479) (not b!2224480) (not b!2224504) (not b!2224614) (not bm!133050) (not b!2224586) (not d!664426) (not b!2224497) (not b!2224582) (not b!2224591) (not setNonEmpty!19724) (not b!2224581) (not b!2224578) (not b!2224546) (not bm!133042) (not bm!133035) (not bm!133044) (not setNonEmpty!19734) (not b_next!65177) (not b!2224550) (not d!664414) (not b!2224473) (not bm!133031) (not bm!133051) (not bm!133054) (not b!2224592) (not bm!133048) (not b!2224583) (not b!2224607) b_and!174463 (not b!2224579))
(check-sat b_and!174463 b_and!174461 (not b_next!65179) (not b_next!65177))
