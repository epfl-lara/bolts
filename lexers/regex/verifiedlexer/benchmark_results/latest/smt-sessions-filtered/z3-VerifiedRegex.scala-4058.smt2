; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!218256 () Bool)

(assert start!218256)

(declare-fun b!2240324 () Bool)

(declare-fun b_free!65041 () Bool)

(declare-fun b_next!65745 () Bool)

(assert (=> b!2240324 (= b_free!65041 (not b_next!65745))))

(declare-fun tp!706013 () Bool)

(declare-fun b_and!175053 () Bool)

(assert (=> b!2240324 (= tp!706013 b_and!175053)))

(declare-fun b!2240326 () Bool)

(declare-fun b_free!65043 () Bool)

(declare-fun b_next!65747 () Bool)

(assert (=> b!2240326 (= b_free!65043 (not b_next!65747))))

(declare-fun tp!706012 () Bool)

(declare-fun b_and!175055 () Bool)

(assert (=> b!2240326 (= tp!706012 b_and!175055)))

(declare-fun b!2240322 () Bool)

(declare-fun res!957677 () Bool)

(declare-fun e!1432326 () Bool)

(assert (=> b!2240322 (=> (not res!957677) (not e!1432326))))

(declare-datatypes ((C!13160 0))(
  ( (C!13161 (val!7628 Int)) )
))
(declare-fun a!949 () C!13160)

(declare-datatypes ((Regex!6507 0))(
  ( (ElementMatch!6507 (c!356752 C!13160)) (Concat!10845 (regOne!13526 Regex!6507) (regTwo!13526 Regex!6507)) (EmptyExpr!6507) (Star!6507 (reg!6836 Regex!6507)) (EmptyLang!6507) (Union!6507 (regOne!13527 Regex!6507) (regTwo!13527 Regex!6507)) )
))
(declare-datatypes ((List!26506 0))(
  ( (Nil!26412) (Cons!26412 (h!31813 Regex!6507) (t!199938 List!26506)) )
))
(declare-datatypes ((Context!4110 0))(
  ( (Context!4111 (exprs!2555 List!26506)) )
))
(declare-fun ctx!40 () Context!4110)

(declare-datatypes ((tuple2!25826 0))(
  ( (tuple2!25827 (_1!15423 Context!4110) (_2!15423 C!13160)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25828 0))(
  ( (tuple2!25829 (_1!15424 tuple2!25826) (_2!15424 (InoxSet Context!4110))) )
))
(declare-datatypes ((List!26507 0))(
  ( (Nil!26413) (Cons!26413 (h!31814 tuple2!25828) (t!199939 List!26507)) )
))
(declare-datatypes ((array!10986 0))(
  ( (array!10987 (arr!4877 (Array (_ BitVec 32) (_ BitVec 64))) (size!20658 (_ BitVec 32))) )
))
(declare-datatypes ((array!10988 0))(
  ( (array!10989 (arr!4878 (Array (_ BitVec 32) List!26507)) (size!20659 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6290 0))(
  ( (LongMapFixedSize!6291 (defaultEntry!3510 Int) (mask!7752 (_ BitVec 32)) (extraKeys!3393 (_ BitVec 32)) (zeroValue!3403 List!26507) (minValue!3403 List!26507) (_size!6337 (_ BitVec 32)) (_keys!3442 array!10986) (_values!3425 array!10988) (_vacant!3206 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12397 0))(
  ( (Cell!12398 (v!30037 LongMapFixedSize!6290)) )
))
(declare-datatypes ((MutLongMap!3145 0))(
  ( (LongMap!3145 (underlying!6491 Cell!12397)) (MutLongMapExt!3144 (__x!17661 Int)) )
))
(declare-datatypes ((Hashable!3055 0))(
  ( (HashableExt!3054 (__x!17662 Int)) )
))
(declare-datatypes ((Cell!12399 0))(
  ( (Cell!12400 (v!30038 MutLongMap!3145)) )
))
(declare-datatypes ((MutableMap!3055 0))(
  ( (MutableMapExt!3054 (__x!17663 Int)) (HashMap!3055 (underlying!6492 Cell!12399) (hashF!4978 Hashable!3055) (_size!6338 (_ BitVec 32)) (defaultValue!3217 Int)) )
))
(declare-datatypes ((CacheUp!1980 0))(
  ( (CacheUp!1981 (cache!3436 MutableMap!3055)) )
))
(declare-fun thiss!28657 () CacheUp!1980)

(declare-fun contains!4467 (MutableMap!3055 tuple2!25826) Bool)

(assert (=> b!2240322 (= res!957677 (contains!4467 (cache!3436 thiss!28657) (tuple2!25827 ctx!40 a!949)))))

(declare-fun b!2240323 () Bool)

(get-info :version)

(assert (=> b!2240323 (= e!1432326 (not ((_ is HashMap!3055) (cache!3436 thiss!28657))))))

(declare-datatypes ((Unit!39381 0))(
  ( (Unit!39382) )
))
(declare-fun lt!833553 () Unit!39381)

(declare-fun lemmaIfInCacheThenValid!37 (CacheUp!1980 Context!4110 C!13160) Unit!39381)

(assert (=> b!2240323 (= lt!833553 (lemmaIfInCacheThenValid!37 thiss!28657 ctx!40 a!949))))

(declare-fun e!1432332 () Bool)

(declare-fun e!1432328 () Bool)

(declare-fun tp!706007 () Bool)

(declare-fun tp!706009 () Bool)

(declare-fun array_inv!3499 (array!10986) Bool)

(declare-fun array_inv!3500 (array!10988) Bool)

(assert (=> b!2240324 (= e!1432328 (and tp!706013 tp!706007 tp!706009 (array_inv!3499 (_keys!3442 (v!30037 (underlying!6491 (v!30038 (underlying!6492 (cache!3436 thiss!28657))))))) (array_inv!3500 (_values!3425 (v!30037 (underlying!6491 (v!30038 (underlying!6492 (cache!3436 thiss!28657))))))) e!1432332))))

(declare-fun b!2240325 () Bool)

(declare-fun e!1432327 () Bool)

(declare-fun e!1432323 () Bool)

(assert (=> b!2240325 (= e!1432327 e!1432323)))

(declare-fun mapNonEmpty!14744 () Bool)

(declare-fun mapRes!14744 () Bool)

(declare-fun tp!706008 () Bool)

(declare-fun tp!706011 () Bool)

(assert (=> mapNonEmpty!14744 (= mapRes!14744 (and tp!706008 tp!706011))))

(declare-fun mapKey!14744 () (_ BitVec 32))

(declare-fun mapRest!14744 () (Array (_ BitVec 32) List!26507))

(declare-fun mapValue!14744 () List!26507)

(assert (=> mapNonEmpty!14744 (= (arr!4878 (_values!3425 (v!30037 (underlying!6491 (v!30038 (underlying!6492 (cache!3436 thiss!28657))))))) (store mapRest!14744 mapKey!14744 mapValue!14744))))

(declare-fun e!1432330 () Bool)

(declare-fun e!1432329 () Bool)

(assert (=> b!2240326 (= e!1432330 (and e!1432329 tp!706012))))

(declare-fun b!2240327 () Bool)

(declare-fun e!1432325 () Bool)

(declare-fun tp!706010 () Bool)

(assert (=> b!2240327 (= e!1432325 tp!706010)))

(declare-fun b!2240328 () Bool)

(assert (=> b!2240328 (= e!1432323 e!1432328)))

(declare-fun mapIsEmpty!14744 () Bool)

(assert (=> mapIsEmpty!14744 mapRes!14744))

(declare-fun b!2240329 () Bool)

(declare-fun tp!706014 () Bool)

(assert (=> b!2240329 (= e!1432332 (and tp!706014 mapRes!14744))))

(declare-fun condMapEmpty!14744 () Bool)

(declare-fun mapDefault!14744 () List!26507)

(assert (=> b!2240329 (= condMapEmpty!14744 (= (arr!4878 (_values!3425 (v!30037 (underlying!6491 (v!30038 (underlying!6492 (cache!3436 thiss!28657))))))) ((as const (Array (_ BitVec 32) List!26507)) mapDefault!14744)))))

(declare-fun res!957676 () Bool)

(assert (=> start!218256 (=> (not res!957676) (not e!1432326))))

(declare-fun validCacheMapUp!291 (MutableMap!3055) Bool)

(assert (=> start!218256 (= res!957676 (validCacheMapUp!291 (cache!3436 thiss!28657)))))

(assert (=> start!218256 e!1432326))

(declare-fun e!1432331 () Bool)

(declare-fun inv!35872 (CacheUp!1980) Bool)

(assert (=> start!218256 (and (inv!35872 thiss!28657) e!1432331)))

(declare-fun inv!35873 (Context!4110) Bool)

(assert (=> start!218256 (and (inv!35873 ctx!40) e!1432325)))

(declare-fun tp_is_empty!10235 () Bool)

(assert (=> start!218256 tp_is_empty!10235))

(declare-fun b!2240330 () Bool)

(declare-fun lt!833552 () MutLongMap!3145)

(assert (=> b!2240330 (= e!1432329 (and e!1432327 ((_ is LongMap!3145) lt!833552)))))

(assert (=> b!2240330 (= lt!833552 (v!30038 (underlying!6492 (cache!3436 thiss!28657))))))

(declare-fun b!2240331 () Bool)

(assert (=> b!2240331 (= e!1432331 e!1432330)))

(assert (= (and start!218256 res!957676) b!2240322))

(assert (= (and b!2240322 res!957677) b!2240323))

(assert (= (and b!2240329 condMapEmpty!14744) mapIsEmpty!14744))

(assert (= (and b!2240329 (not condMapEmpty!14744)) mapNonEmpty!14744))

(assert (= b!2240324 b!2240329))

(assert (= b!2240328 b!2240324))

(assert (= b!2240325 b!2240328))

(assert (= (and b!2240330 ((_ is LongMap!3145) (v!30038 (underlying!6492 (cache!3436 thiss!28657))))) b!2240325))

(assert (= b!2240326 b!2240330))

(assert (= (and b!2240331 ((_ is HashMap!3055) (cache!3436 thiss!28657))) b!2240326))

(assert (= start!218256 b!2240331))

(assert (= start!218256 b!2240327))

(declare-fun m!2672694 () Bool)

(assert (=> b!2240322 m!2672694))

(declare-fun m!2672696 () Bool)

(assert (=> b!2240323 m!2672696))

(declare-fun m!2672698 () Bool)

(assert (=> start!218256 m!2672698))

(declare-fun m!2672700 () Bool)

(assert (=> start!218256 m!2672700))

(declare-fun m!2672702 () Bool)

(assert (=> start!218256 m!2672702))

(declare-fun m!2672704 () Bool)

(assert (=> mapNonEmpty!14744 m!2672704))

(declare-fun m!2672706 () Bool)

(assert (=> b!2240324 m!2672706))

(declare-fun m!2672708 () Bool)

(assert (=> b!2240324 m!2672708))

(check-sat b_and!175055 (not b!2240323) (not b!2240324) (not b!2240329) (not start!218256) (not b_next!65745) (not b_next!65747) (not b!2240327) tp_is_empty!10235 (not b!2240322) b_and!175053 (not mapNonEmpty!14744))
(check-sat b_and!175053 b_and!175055 (not b_next!65747) (not b_next!65745))
(get-model)

(declare-datatypes ((Option!5150 0))(
  ( (None!5149) (Some!5149 (v!30039 tuple2!25828)) )
))
(declare-fun call!135193 () Option!5150)

(declare-fun call!135195 () List!26507)

(declare-fun bm!135185 () Bool)

(declare-fun getPair!40 (List!26507 tuple2!25826) Option!5150)

(assert (=> bm!135185 (= call!135193 (getPair!40 call!135195 (tuple2!25827 ctx!40 a!949)))))

(declare-fun lt!833611 () Bool)

(declare-fun d!665721 () Bool)

(declare-datatypes ((ListMap!867 0))(
  ( (ListMap!868 (toList!1382 List!26507)) )
))
(declare-fun contains!4468 (ListMap!867 tuple2!25826) Bool)

(declare-fun map!5457 (MutableMap!3055) ListMap!867)

(assert (=> d!665721 (= lt!833611 (contains!4468 (map!5457 (cache!3436 thiss!28657)) (tuple2!25827 ctx!40 a!949)))))

(declare-fun e!1432351 () Bool)

(assert (=> d!665721 (= lt!833611 e!1432351)))

(declare-fun res!957685 () Bool)

(assert (=> d!665721 (=> (not res!957685) (not e!1432351))))

(declare-fun lt!833602 () (_ BitVec 64))

(declare-fun contains!4469 (MutLongMap!3145 (_ BitVec 64)) Bool)

(assert (=> d!665721 (= res!957685 (contains!4469 (v!30038 (underlying!6492 (cache!3436 thiss!28657))) lt!833602))))

(declare-fun lt!833596 () Unit!39381)

(declare-fun e!1432353 () Unit!39381)

(assert (=> d!665721 (= lt!833596 e!1432353)))

(declare-fun c!356762 () Bool)

(declare-datatypes ((tuple2!25830 0))(
  ( (tuple2!25831 (_1!15425 (_ BitVec 64)) (_2!15425 List!26507)) )
))
(declare-datatypes ((List!26508 0))(
  ( (Nil!26414) (Cons!26414 (h!31815 tuple2!25830) (t!199940 List!26508)) )
))
(declare-fun extractMap!120 (List!26508) ListMap!867)

(declare-datatypes ((ListLongMap!351 0))(
  ( (ListLongMap!352 (toList!1383 List!26508)) )
))
(declare-fun map!5458 (MutLongMap!3145) ListLongMap!351)

(assert (=> d!665721 (= c!356762 (contains!4468 (extractMap!120 (toList!1383 (map!5458 (v!30038 (underlying!6492 (cache!3436 thiss!28657)))))) (tuple2!25827 ctx!40 a!949)))))

(declare-fun lt!833601 () Unit!39381)

(declare-fun e!1432347 () Unit!39381)

(assert (=> d!665721 (= lt!833601 e!1432347)))

(declare-fun c!356761 () Bool)

(assert (=> d!665721 (= c!356761 (contains!4469 (v!30038 (underlying!6492 (cache!3436 thiss!28657))) lt!833602))))

(declare-fun hash!587 (Hashable!3055 tuple2!25826) (_ BitVec 64))

(assert (=> d!665721 (= lt!833602 (hash!587 (hashF!4978 (cache!3436 thiss!28657)) (tuple2!25827 ctx!40 a!949)))))

(declare-fun valid!2366 (MutableMap!3055) Bool)

(assert (=> d!665721 (valid!2366 (cache!3436 thiss!28657))))

(assert (=> d!665721 (= (contains!4467 (cache!3436 thiss!28657) (tuple2!25827 ctx!40 a!949)) lt!833611)))

(declare-fun bm!135186 () Bool)

(declare-fun call!135190 () ListLongMap!351)

(declare-fun lt!833595 () ListLongMap!351)

(declare-fun call!135194 () (_ BitVec 64))

(declare-fun apply!6512 (ListLongMap!351 (_ BitVec 64)) List!26507)

(assert (=> bm!135186 (= call!135195 (apply!6512 (ite c!356762 lt!833595 call!135190) call!135194))))

(declare-fun bm!135187 () Bool)

(declare-fun call!135191 () Bool)

(declare-fun isDefined!4158 (Option!5150) Bool)

(assert (=> bm!135187 (= call!135191 (isDefined!4158 call!135193))))

(declare-fun bm!135188 () Bool)

(assert (=> bm!135188 (= call!135190 (map!5458 (v!30038 (underlying!6492 (cache!3436 thiss!28657)))))))

(declare-fun b!2240354 () Bool)

(declare-fun e!1432352 () Unit!39381)

(declare-fun Unit!39383 () Unit!39381)

(assert (=> b!2240354 (= e!1432352 Unit!39383)))

(declare-fun b!2240355 () Bool)

(declare-fun Unit!39384 () Unit!39381)

(assert (=> b!2240355 (= e!1432347 Unit!39384)))

(declare-fun bm!135189 () Bool)

(declare-fun call!135192 () Bool)

(declare-fun contains!4470 (ListLongMap!351 (_ BitVec 64)) Bool)

(assert (=> bm!135189 (= call!135192 (contains!4470 (ite c!356762 lt!833595 call!135190) call!135194))))

(declare-fun b!2240356 () Bool)

(declare-fun e!1432350 () Bool)

(assert (=> b!2240356 (= e!1432350 call!135191)))

(declare-fun b!2240357 () Bool)

(declare-fun lambda!84728 () Int)

(declare-fun forallContained!787 (List!26508 Int tuple2!25830) Unit!39381)

(declare-fun apply!6513 (MutLongMap!3145 (_ BitVec 64)) List!26507)

(assert (=> b!2240357 (= e!1432347 (forallContained!787 (toList!1383 (map!5458 (v!30038 (underlying!6492 (cache!3436 thiss!28657))))) lambda!84728 (tuple2!25831 lt!833602 (apply!6513 (v!30038 (underlying!6492 (cache!3436 thiss!28657))) lt!833602))))))

(declare-fun c!356764 () Bool)

(declare-fun contains!4471 (List!26508 tuple2!25830) Bool)

(assert (=> b!2240357 (= c!356764 (not (contains!4471 (toList!1383 (map!5458 (v!30038 (underlying!6492 (cache!3436 thiss!28657))))) (tuple2!25831 lt!833602 (apply!6513 (v!30038 (underlying!6492 (cache!3436 thiss!28657))) lt!833602)))))))

(declare-fun lt!833597 () Unit!39381)

(assert (=> b!2240357 (= lt!833597 e!1432352)))

(declare-fun b!2240358 () Bool)

(declare-fun e!1432349 () Bool)

(assert (=> b!2240358 (= e!1432349 call!135191)))

(declare-fun b!2240359 () Bool)

(assert (=> b!2240359 (= e!1432351 (isDefined!4158 (getPair!40 (apply!6513 (v!30038 (underlying!6492 (cache!3436 thiss!28657))) lt!833602) (tuple2!25827 ctx!40 a!949))))))

(declare-fun b!2240360 () Bool)

(assert (=> b!2240360 false))

(declare-fun lt!833612 () Unit!39381)

(declare-fun lt!833613 () Unit!39381)

(assert (=> b!2240360 (= lt!833612 lt!833613)))

(declare-fun lt!833594 () List!26508)

(declare-fun lt!833599 () List!26507)

(assert (=> b!2240360 (contains!4471 lt!833594 (tuple2!25831 lt!833602 lt!833599))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!41 (List!26508 (_ BitVec 64) List!26507) Unit!39381)

(assert (=> b!2240360 (= lt!833613 (lemmaGetValueByKeyImpliesContainsTuple!41 lt!833594 lt!833602 lt!833599))))

(assert (=> b!2240360 (= lt!833599 (apply!6513 (v!30038 (underlying!6492 (cache!3436 thiss!28657))) lt!833602))))

(assert (=> b!2240360 (= lt!833594 (toList!1383 (map!5458 (v!30038 (underlying!6492 (cache!3436 thiss!28657))))))))

(declare-fun lt!833608 () Unit!39381)

(declare-fun lt!833606 () Unit!39381)

(assert (=> b!2240360 (= lt!833608 lt!833606)))

(declare-fun lt!833609 () List!26508)

(declare-datatypes ((Option!5151 0))(
  ( (None!5150) (Some!5150 (v!30040 List!26507)) )
))
(declare-fun isDefined!4159 (Option!5151) Bool)

(declare-fun getValueByKey!90 (List!26508 (_ BitVec 64)) Option!5151)

(assert (=> b!2240360 (isDefined!4159 (getValueByKey!90 lt!833609 lt!833602))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!58 (List!26508 (_ BitVec 64)) Unit!39381)

(assert (=> b!2240360 (= lt!833606 (lemmaContainsKeyImpliesGetValueByKeyDefined!58 lt!833609 lt!833602))))

(assert (=> b!2240360 (= lt!833609 (toList!1383 (map!5458 (v!30038 (underlying!6492 (cache!3436 thiss!28657))))))))

(declare-fun lt!833600 () Unit!39381)

(declare-fun lt!833603 () Unit!39381)

(assert (=> b!2240360 (= lt!833600 lt!833603)))

(declare-fun lt!833604 () List!26508)

(declare-fun containsKey!89 (List!26508 (_ BitVec 64)) Bool)

(assert (=> b!2240360 (containsKey!89 lt!833604 lt!833602)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!41 (List!26508 (_ BitVec 64)) Unit!39381)

(assert (=> b!2240360 (= lt!833603 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!41 lt!833604 lt!833602))))

(assert (=> b!2240360 (= lt!833604 (toList!1383 (map!5458 (v!30038 (underlying!6492 (cache!3436 thiss!28657))))))))

(declare-fun Unit!39385 () Unit!39381)

(assert (=> b!2240360 (= e!1432352 Unit!39385)))

(declare-fun b!2240361 () Bool)

(declare-fun e!1432348 () Unit!39381)

(assert (=> b!2240361 (= e!1432353 e!1432348)))

(declare-fun res!957686 () Bool)

(assert (=> b!2240361 (= res!957686 call!135192)))

(assert (=> b!2240361 (=> (not res!957686) (not e!1432350))))

(declare-fun c!356763 () Bool)

(assert (=> b!2240361 (= c!356763 e!1432350)))

(declare-fun b!2240362 () Bool)

(declare-fun lt!833605 () Unit!39381)

(assert (=> b!2240362 (= e!1432353 lt!833605)))

(assert (=> b!2240362 (= lt!833595 call!135190)))

(declare-fun lemmaInGenericMapThenInLongMap!40 (ListLongMap!351 tuple2!25826 Hashable!3055) Unit!39381)

(assert (=> b!2240362 (= lt!833605 (lemmaInGenericMapThenInLongMap!40 lt!833595 (tuple2!25827 ctx!40 a!949) (hashF!4978 (cache!3436 thiss!28657))))))

(declare-fun res!957684 () Bool)

(assert (=> b!2240362 (= res!957684 call!135192)))

(assert (=> b!2240362 (=> (not res!957684) (not e!1432349))))

(assert (=> b!2240362 e!1432349))

(declare-fun bm!135190 () Bool)

(assert (=> bm!135190 (= call!135194 (hash!587 (hashF!4978 (cache!3436 thiss!28657)) (tuple2!25827 ctx!40 a!949)))))

(declare-fun b!2240363 () Bool)

(assert (=> b!2240363 false))

(declare-fun lt!833598 () Unit!39381)

(declare-fun lt!833607 () Unit!39381)

(assert (=> b!2240363 (= lt!833598 lt!833607)))

(declare-fun lt!833610 () ListLongMap!351)

(assert (=> b!2240363 (contains!4468 (extractMap!120 (toList!1383 lt!833610)) (tuple2!25827 ctx!40 a!949))))

(declare-fun lemmaInLongMapThenInGenericMap!40 (ListLongMap!351 tuple2!25826 Hashable!3055) Unit!39381)

(assert (=> b!2240363 (= lt!833607 (lemmaInLongMapThenInGenericMap!40 lt!833610 (tuple2!25827 ctx!40 a!949) (hashF!4978 (cache!3436 thiss!28657))))))

(assert (=> b!2240363 (= lt!833610 call!135190)))

(declare-fun Unit!39386 () Unit!39381)

(assert (=> b!2240363 (= e!1432348 Unit!39386)))

(declare-fun b!2240364 () Bool)

(declare-fun Unit!39387 () Unit!39381)

(assert (=> b!2240364 (= e!1432348 Unit!39387)))

(assert (= (and d!665721 c!356761) b!2240357))

(assert (= (and d!665721 (not c!356761)) b!2240355))

(assert (= (and b!2240357 c!356764) b!2240360))

(assert (= (and b!2240357 (not c!356764)) b!2240354))

(assert (= (and d!665721 c!356762) b!2240362))

(assert (= (and d!665721 (not c!356762)) b!2240361))

(assert (= (and b!2240362 res!957684) b!2240358))

(assert (= (and b!2240361 res!957686) b!2240356))

(assert (= (and b!2240361 c!356763) b!2240363))

(assert (= (and b!2240361 (not c!356763)) b!2240364))

(assert (= (or b!2240362 b!2240361 b!2240356 b!2240363) bm!135188))

(assert (= (or b!2240362 b!2240358 b!2240361 b!2240356) bm!135190))

(assert (= (or b!2240358 b!2240356) bm!135186))

(assert (= (or b!2240362 b!2240361) bm!135189))

(assert (= (or b!2240358 b!2240356) bm!135185))

(assert (= (or b!2240358 b!2240356) bm!135187))

(assert (= (and d!665721 res!957685) b!2240359))

(declare-fun m!2672710 () Bool)

(assert (=> b!2240362 m!2672710))

(declare-fun m!2672712 () Bool)

(assert (=> bm!135188 m!2672712))

(assert (=> b!2240357 m!2672712))

(declare-fun m!2672714 () Bool)

(assert (=> b!2240357 m!2672714))

(declare-fun m!2672716 () Bool)

(assert (=> b!2240357 m!2672716))

(declare-fun m!2672718 () Bool)

(assert (=> b!2240357 m!2672718))

(declare-fun m!2672720 () Bool)

(assert (=> d!665721 m!2672720))

(declare-fun m!2672722 () Bool)

(assert (=> d!665721 m!2672722))

(assert (=> d!665721 m!2672720))

(declare-fun m!2672724 () Bool)

(assert (=> d!665721 m!2672724))

(declare-fun m!2672726 () Bool)

(assert (=> d!665721 m!2672726))

(declare-fun m!2672728 () Bool)

(assert (=> d!665721 m!2672728))

(declare-fun m!2672730 () Bool)

(assert (=> d!665721 m!2672730))

(declare-fun m!2672732 () Bool)

(assert (=> d!665721 m!2672732))

(assert (=> d!665721 m!2672730))

(assert (=> d!665721 m!2672712))

(assert (=> bm!135190 m!2672724))

(declare-fun m!2672734 () Bool)

(assert (=> bm!135186 m!2672734))

(declare-fun m!2672736 () Bool)

(assert (=> bm!135185 m!2672736))

(declare-fun m!2672738 () Bool)

(assert (=> b!2240363 m!2672738))

(assert (=> b!2240363 m!2672738))

(declare-fun m!2672740 () Bool)

(assert (=> b!2240363 m!2672740))

(declare-fun m!2672742 () Bool)

(assert (=> b!2240363 m!2672742))

(declare-fun m!2672744 () Bool)

(assert (=> b!2240360 m!2672744))

(assert (=> b!2240360 m!2672714))

(declare-fun m!2672746 () Bool)

(assert (=> b!2240360 m!2672746))

(assert (=> b!2240360 m!2672712))

(declare-fun m!2672748 () Bool)

(assert (=> b!2240360 m!2672748))

(declare-fun m!2672750 () Bool)

(assert (=> b!2240360 m!2672750))

(declare-fun m!2672752 () Bool)

(assert (=> b!2240360 m!2672752))

(assert (=> b!2240360 m!2672752))

(declare-fun m!2672754 () Bool)

(assert (=> b!2240360 m!2672754))

(declare-fun m!2672756 () Bool)

(assert (=> b!2240360 m!2672756))

(declare-fun m!2672758 () Bool)

(assert (=> bm!135187 m!2672758))

(declare-fun m!2672760 () Bool)

(assert (=> bm!135189 m!2672760))

(assert (=> b!2240359 m!2672714))

(assert (=> b!2240359 m!2672714))

(declare-fun m!2672762 () Bool)

(assert (=> b!2240359 m!2672762))

(assert (=> b!2240359 m!2672762))

(declare-fun m!2672764 () Bool)

(assert (=> b!2240359 m!2672764))

(assert (=> b!2240322 d!665721))

(declare-fun d!665723 () Bool)

(assert (=> d!665723 (= (array_inv!3499 (_keys!3442 (v!30037 (underlying!6491 (v!30038 (underlying!6492 (cache!3436 thiss!28657))))))) (bvsge (size!20658 (_keys!3442 (v!30037 (underlying!6491 (v!30038 (underlying!6492 (cache!3436 thiss!28657))))))) #b00000000000000000000000000000000))))

(assert (=> b!2240324 d!665723))

(declare-fun d!665725 () Bool)

(assert (=> d!665725 (= (array_inv!3500 (_values!3425 (v!30037 (underlying!6491 (v!30038 (underlying!6492 (cache!3436 thiss!28657))))))) (bvsge (size!20659 (_values!3425 (v!30037 (underlying!6491 (v!30038 (underlying!6492 (cache!3436 thiss!28657))))))) #b00000000000000000000000000000000))))

(assert (=> b!2240324 d!665725))

(declare-fun d!665727 () Bool)

(declare-fun e!1432361 () Bool)

(assert (=> d!665727 e!1432361))

(declare-fun res!957689 () Bool)

(assert (=> d!665727 (=> res!957689 e!1432361)))

(assert (=> d!665727 (= res!957689 (not (contains!4467 (cache!3436 thiss!28657) (tuple2!25827 ctx!40 a!949))))))

(declare-fun lt!833629 () Unit!39381)

(declare-fun e!1432362 () Unit!39381)

(assert (=> d!665727 (= lt!833629 e!1432362)))

(declare-fun c!356767 () Bool)

(assert (=> d!665727 (= c!356767 (contains!4467 (cache!3436 thiss!28657) (tuple2!25827 ctx!40 a!949)))))

(assert (=> d!665727 (validCacheMapUp!291 (cache!3436 thiss!28657))))

(assert (=> d!665727 (= (lemmaIfInCacheThenValid!37 thiss!28657 ctx!40 a!949) lt!833629)))

(declare-fun b!2240371 () Bool)

(declare-fun lt!833631 () Unit!39381)

(assert (=> b!2240371 (= e!1432362 lt!833631)))

(declare-fun lt!833633 () tuple2!25826)

(assert (=> b!2240371 (= lt!833633 (tuple2!25827 ctx!40 a!949))))

(declare-fun lambda!84731 () Int)

(declare-fun lemmaForallPairsThenForLookup!33 (MutableMap!3055 tuple2!25826 Int) Unit!39381)

(assert (=> b!2240371 (= lt!833631 (lemmaForallPairsThenForLookup!33 (cache!3436 thiss!28657) lt!833633 lambda!84731))))

(declare-fun lt!833632 () tuple2!25828)

(declare-fun apply!6514 (MutableMap!3055 tuple2!25826) (InoxSet Context!4110))

(assert (=> b!2240371 (= lt!833632 (tuple2!25829 lt!833633 (apply!6514 (cache!3436 thiss!28657) lt!833633)))))

(declare-fun lt!833630 () tuple2!25826)

(assert (=> b!2240371 (= lt!833630 lt!833633)))

(declare-fun lt!833628 () (InoxSet Context!4110))

(assert (=> b!2240371 (= lt!833628 (apply!6514 (cache!3436 thiss!28657) lt!833633))))

(declare-fun lt!833634 () (InoxSet Context!4110))

(assert (=> b!2240371 (= lt!833634 (apply!6514 (cache!3436 thiss!28657) lt!833633))))

(declare-fun derivationStepZipperUp!39 (Context!4110 C!13160) (InoxSet Context!4110))

(assert (=> b!2240371 (= (apply!6514 (cache!3436 thiss!28657) lt!833633) (derivationStepZipperUp!39 (_1!15423 lt!833633) (_2!15423 lt!833633)))))

(declare-fun b!2240372 () Bool)

(declare-fun Unit!39388 () Unit!39381)

(assert (=> b!2240372 (= e!1432362 Unit!39388)))

(declare-fun b!2240373 () Bool)

(assert (=> b!2240373 (= e!1432361 (= (derivationStepZipperUp!39 ctx!40 a!949) (apply!6514 (cache!3436 thiss!28657) (tuple2!25827 ctx!40 a!949))))))

(assert (= (and d!665727 c!356767) b!2240371))

(assert (= (and d!665727 (not c!356767)) b!2240372))

(assert (= (and d!665727 (not res!957689)) b!2240373))

(assert (=> d!665727 m!2672694))

(assert (=> d!665727 m!2672698))

(declare-fun m!2672766 () Bool)

(assert (=> b!2240371 m!2672766))

(declare-fun m!2672768 () Bool)

(assert (=> b!2240371 m!2672768))

(declare-fun m!2672770 () Bool)

(assert (=> b!2240371 m!2672770))

(declare-fun m!2672772 () Bool)

(assert (=> b!2240373 m!2672772))

(declare-fun m!2672774 () Bool)

(assert (=> b!2240373 m!2672774))

(assert (=> b!2240323 d!665727))

(declare-fun bs!454299 () Bool)

(declare-fun b!2240379 () Bool)

(assert (= bs!454299 (and b!2240379 b!2240371)))

(declare-fun lambda!84734 () Int)

(assert (=> bs!454299 (= lambda!84734 lambda!84731)))

(declare-fun d!665729 () Bool)

(declare-fun res!957694 () Bool)

(declare-fun e!1432365 () Bool)

(assert (=> d!665729 (=> (not res!957694) (not e!1432365))))

(assert (=> d!665729 (= res!957694 (valid!2366 (cache!3436 thiss!28657)))))

(assert (=> d!665729 (= (validCacheMapUp!291 (cache!3436 thiss!28657)) e!1432365)))

(declare-fun b!2240378 () Bool)

(declare-fun res!957695 () Bool)

(assert (=> b!2240378 (=> (not res!957695) (not e!1432365))))

(declare-fun invariantList!386 (List!26507) Bool)

(assert (=> b!2240378 (= res!957695 (invariantList!386 (toList!1382 (map!5457 (cache!3436 thiss!28657)))))))

(declare-fun forall!5435 (List!26507 Int) Bool)

(assert (=> b!2240379 (= e!1432365 (forall!5435 (toList!1382 (map!5457 (cache!3436 thiss!28657))) lambda!84734))))

(assert (= (and d!665729 res!957694) b!2240378))

(assert (= (and b!2240378 res!957695) b!2240379))

(assert (=> d!665729 m!2672728))

(assert (=> b!2240378 m!2672720))

(declare-fun m!2672777 () Bool)

(assert (=> b!2240378 m!2672777))

(assert (=> b!2240379 m!2672720))

(declare-fun m!2672779 () Bool)

(assert (=> b!2240379 m!2672779))

(assert (=> start!218256 d!665729))

(declare-fun d!665731 () Bool)

(declare-fun res!957698 () Bool)

(declare-fun e!1432368 () Bool)

(assert (=> d!665731 (=> (not res!957698) (not e!1432368))))

(assert (=> d!665731 (= res!957698 ((_ is HashMap!3055) (cache!3436 thiss!28657)))))

(assert (=> d!665731 (= (inv!35872 thiss!28657) e!1432368)))

(declare-fun b!2240382 () Bool)

(assert (=> b!2240382 (= e!1432368 (validCacheMapUp!291 (cache!3436 thiss!28657)))))

(assert (= (and d!665731 res!957698) b!2240382))

(assert (=> b!2240382 m!2672698))

(assert (=> start!218256 d!665731))

(declare-fun d!665733 () Bool)

(declare-fun lambda!84737 () Int)

(declare-fun forall!5436 (List!26506 Int) Bool)

(assert (=> d!665733 (= (inv!35873 ctx!40) (forall!5436 (exprs!2555 ctx!40) lambda!84737))))

(declare-fun bs!454300 () Bool)

(assert (= bs!454300 d!665733))

(declare-fun m!2672781 () Bool)

(assert (=> bs!454300 m!2672781))

(assert (=> start!218256 d!665733))

(declare-fun b!2240387 () Bool)

(declare-fun e!1432371 () Bool)

(declare-fun tp!706019 () Bool)

(declare-fun tp!706020 () Bool)

(assert (=> b!2240387 (= e!1432371 (and tp!706019 tp!706020))))

(assert (=> b!2240327 (= tp!706010 e!1432371)))

(assert (= (and b!2240327 ((_ is Cons!26412) (exprs!2555 ctx!40))) b!2240387))

(declare-fun setIsEmpty!20554 () Bool)

(declare-fun setRes!20554 () Bool)

(assert (=> setIsEmpty!20554 setRes!20554))

(declare-fun b!2240396 () Bool)

(declare-fun e!1432379 () Bool)

(declare-fun tp!706031 () Bool)

(assert (=> b!2240396 (= e!1432379 tp!706031)))

(declare-fun e!1432378 () Bool)

(assert (=> b!2240324 (= tp!706007 e!1432378)))

(declare-fun e!1432380 () Bool)

(declare-fun b!2240397 () Bool)

(declare-fun tp!706032 () Bool)

(assert (=> b!2240397 (= e!1432378 (and (inv!35873 (_1!15423 (_1!15424 (h!31814 (zeroValue!3403 (v!30037 (underlying!6491 (v!30038 (underlying!6492 (cache!3436 thiss!28657)))))))))) e!1432380 tp_is_empty!10235 setRes!20554 tp!706032))))

(declare-fun condSetEmpty!20554 () Bool)

(assert (=> b!2240397 (= condSetEmpty!20554 (= (_2!15424 (h!31814 (zeroValue!3403 (v!30037 (underlying!6491 (v!30038 (underlying!6492 (cache!3436 thiss!28657)))))))) ((as const (Array Context!4110 Bool)) false)))))

(declare-fun setNonEmpty!20554 () Bool)

(declare-fun setElem!20554 () Context!4110)

(declare-fun tp!706029 () Bool)

(assert (=> setNonEmpty!20554 (= setRes!20554 (and tp!706029 (inv!35873 setElem!20554) e!1432379))))

(declare-fun setRest!20554 () (InoxSet Context!4110))

(assert (=> setNonEmpty!20554 (= (_2!15424 (h!31814 (zeroValue!3403 (v!30037 (underlying!6491 (v!30038 (underlying!6492 (cache!3436 thiss!28657)))))))) ((_ map or) (store ((as const (Array Context!4110 Bool)) false) setElem!20554 true) setRest!20554))))

(declare-fun b!2240398 () Bool)

(declare-fun tp!706030 () Bool)

(assert (=> b!2240398 (= e!1432380 tp!706030)))

(assert (= b!2240397 b!2240398))

(assert (= (and b!2240397 condSetEmpty!20554) setIsEmpty!20554))

(assert (= (and b!2240397 (not condSetEmpty!20554)) setNonEmpty!20554))

(assert (= setNonEmpty!20554 b!2240396))

(assert (= (and b!2240324 ((_ is Cons!26413) (zeroValue!3403 (v!30037 (underlying!6491 (v!30038 (underlying!6492 (cache!3436 thiss!28657)))))))) b!2240397))

(declare-fun m!2672783 () Bool)

(assert (=> b!2240397 m!2672783))

(declare-fun m!2672785 () Bool)

(assert (=> setNonEmpty!20554 m!2672785))

(declare-fun setIsEmpty!20555 () Bool)

(declare-fun setRes!20555 () Bool)

(assert (=> setIsEmpty!20555 setRes!20555))

(declare-fun b!2240399 () Bool)

(declare-fun e!1432382 () Bool)

(declare-fun tp!706035 () Bool)

(assert (=> b!2240399 (= e!1432382 tp!706035)))

(declare-fun e!1432381 () Bool)

(assert (=> b!2240324 (= tp!706009 e!1432381)))

(declare-fun e!1432383 () Bool)

(declare-fun b!2240400 () Bool)

(declare-fun tp!706036 () Bool)

(assert (=> b!2240400 (= e!1432381 (and (inv!35873 (_1!15423 (_1!15424 (h!31814 (minValue!3403 (v!30037 (underlying!6491 (v!30038 (underlying!6492 (cache!3436 thiss!28657)))))))))) e!1432383 tp_is_empty!10235 setRes!20555 tp!706036))))

(declare-fun condSetEmpty!20555 () Bool)

(assert (=> b!2240400 (= condSetEmpty!20555 (= (_2!15424 (h!31814 (minValue!3403 (v!30037 (underlying!6491 (v!30038 (underlying!6492 (cache!3436 thiss!28657)))))))) ((as const (Array Context!4110 Bool)) false)))))

(declare-fun tp!706033 () Bool)

(declare-fun setNonEmpty!20555 () Bool)

(declare-fun setElem!20555 () Context!4110)

(assert (=> setNonEmpty!20555 (= setRes!20555 (and tp!706033 (inv!35873 setElem!20555) e!1432382))))

(declare-fun setRest!20555 () (InoxSet Context!4110))

(assert (=> setNonEmpty!20555 (= (_2!15424 (h!31814 (minValue!3403 (v!30037 (underlying!6491 (v!30038 (underlying!6492 (cache!3436 thiss!28657)))))))) ((_ map or) (store ((as const (Array Context!4110 Bool)) false) setElem!20555 true) setRest!20555))))

(declare-fun b!2240401 () Bool)

(declare-fun tp!706034 () Bool)

(assert (=> b!2240401 (= e!1432383 tp!706034)))

(assert (= b!2240400 b!2240401))

(assert (= (and b!2240400 condSetEmpty!20555) setIsEmpty!20555))

(assert (= (and b!2240400 (not condSetEmpty!20555)) setNonEmpty!20555))

(assert (= setNonEmpty!20555 b!2240399))

(assert (= (and b!2240324 ((_ is Cons!26413) (minValue!3403 (v!30037 (underlying!6491 (v!30038 (underlying!6492 (cache!3436 thiss!28657)))))))) b!2240400))

(declare-fun m!2672787 () Bool)

(assert (=> b!2240400 m!2672787))

(declare-fun m!2672789 () Bool)

(assert (=> setNonEmpty!20555 m!2672789))

(declare-fun b!2240416 () Bool)

(declare-fun e!1432397 () Bool)

(declare-fun tp!706058 () Bool)

(assert (=> b!2240416 (= e!1432397 tp!706058)))

(declare-fun b!2240417 () Bool)

(declare-fun e!1432396 () Bool)

(declare-fun tp!706062 () Bool)

(assert (=> b!2240417 (= e!1432396 tp!706062)))

(declare-fun setRes!20560 () Bool)

(declare-fun tp!706057 () Bool)

(declare-fun b!2240418 () Bool)

(declare-fun e!1432398 () Bool)

(declare-fun mapValue!14747 () List!26507)

(declare-fun e!1432401 () Bool)

(assert (=> b!2240418 (= e!1432398 (and (inv!35873 (_1!15423 (_1!15424 (h!31814 mapValue!14747)))) e!1432401 tp_is_empty!10235 setRes!20560 tp!706057))))

(declare-fun condSetEmpty!20560 () Bool)

(assert (=> b!2240418 (= condSetEmpty!20560 (= (_2!15424 (h!31814 mapValue!14747)) ((as const (Array Context!4110 Bool)) false)))))

(declare-fun mapIsEmpty!14747 () Bool)

(declare-fun mapRes!14747 () Bool)

(assert (=> mapIsEmpty!14747 mapRes!14747))

(declare-fun b!2240420 () Bool)

(declare-fun tp!706056 () Bool)

(assert (=> b!2240420 (= e!1432401 tp!706056)))

(declare-fun setIsEmpty!20560 () Bool)

(assert (=> setIsEmpty!20560 setRes!20560))

(declare-fun setElem!20561 () Context!4110)

(declare-fun tp!706063 () Bool)

(declare-fun setNonEmpty!20560 () Bool)

(declare-fun e!1432399 () Bool)

(assert (=> setNonEmpty!20560 (= setRes!20560 (and tp!706063 (inv!35873 setElem!20561) e!1432399))))

(declare-fun setRest!20561 () (InoxSet Context!4110))

(assert (=> setNonEmpty!20560 (= (_2!15424 (h!31814 mapValue!14747)) ((_ map or) (store ((as const (Array Context!4110 Bool)) false) setElem!20561 true) setRest!20561))))

(declare-fun mapDefault!14747 () List!26507)

(declare-fun e!1432400 () Bool)

(declare-fun tp!706055 () Bool)

(declare-fun setRes!20561 () Bool)

(declare-fun b!2240421 () Bool)

(assert (=> b!2240421 (= e!1432400 (and (inv!35873 (_1!15423 (_1!15424 (h!31814 mapDefault!14747)))) e!1432397 tp_is_empty!10235 setRes!20561 tp!706055))))

(declare-fun condSetEmpty!20561 () Bool)

(assert (=> b!2240421 (= condSetEmpty!20561 (= (_2!15424 (h!31814 mapDefault!14747)) ((as const (Array Context!4110 Bool)) false)))))

(declare-fun mapNonEmpty!14747 () Bool)

(declare-fun tp!706059 () Bool)

(assert (=> mapNonEmpty!14747 (= mapRes!14747 (and tp!706059 e!1432398))))

(declare-fun mapKey!14747 () (_ BitVec 32))

(declare-fun mapRest!14747 () (Array (_ BitVec 32) List!26507))

(assert (=> mapNonEmpty!14747 (= mapRest!14744 (store mapRest!14747 mapKey!14747 mapValue!14747))))

(declare-fun tp!706061 () Bool)

(declare-fun setElem!20560 () Context!4110)

(declare-fun setNonEmpty!20561 () Bool)

(assert (=> setNonEmpty!20561 (= setRes!20561 (and tp!706061 (inv!35873 setElem!20560) e!1432396))))

(declare-fun setRest!20560 () (InoxSet Context!4110))

(assert (=> setNonEmpty!20561 (= (_2!15424 (h!31814 mapDefault!14747)) ((_ map or) (store ((as const (Array Context!4110 Bool)) false) setElem!20560 true) setRest!20560))))

(declare-fun setIsEmpty!20561 () Bool)

(assert (=> setIsEmpty!20561 setRes!20561))

(declare-fun condMapEmpty!14747 () Bool)

(assert (=> mapNonEmpty!14744 (= condMapEmpty!14747 (= mapRest!14744 ((as const (Array (_ BitVec 32) List!26507)) mapDefault!14747)))))

(assert (=> mapNonEmpty!14744 (= tp!706008 (and e!1432400 mapRes!14747))))

(declare-fun b!2240419 () Bool)

(declare-fun tp!706060 () Bool)

(assert (=> b!2240419 (= e!1432399 tp!706060)))

(assert (= (and mapNonEmpty!14744 condMapEmpty!14747) mapIsEmpty!14747))

(assert (= (and mapNonEmpty!14744 (not condMapEmpty!14747)) mapNonEmpty!14747))

(assert (= b!2240418 b!2240420))

(assert (= (and b!2240418 condSetEmpty!20560) setIsEmpty!20560))

(assert (= (and b!2240418 (not condSetEmpty!20560)) setNonEmpty!20560))

(assert (= setNonEmpty!20560 b!2240419))

(assert (= (and mapNonEmpty!14747 ((_ is Cons!26413) mapValue!14747)) b!2240418))

(assert (= b!2240421 b!2240416))

(assert (= (and b!2240421 condSetEmpty!20561) setIsEmpty!20561))

(assert (= (and b!2240421 (not condSetEmpty!20561)) setNonEmpty!20561))

(assert (= setNonEmpty!20561 b!2240417))

(assert (= (and mapNonEmpty!14744 ((_ is Cons!26413) mapDefault!14747)) b!2240421))

(declare-fun m!2672791 () Bool)

(assert (=> mapNonEmpty!14747 m!2672791))

(declare-fun m!2672793 () Bool)

(assert (=> setNonEmpty!20561 m!2672793))

(declare-fun m!2672795 () Bool)

(assert (=> setNonEmpty!20560 m!2672795))

(declare-fun m!2672797 () Bool)

(assert (=> b!2240418 m!2672797))

(declare-fun m!2672799 () Bool)

(assert (=> b!2240421 m!2672799))

(declare-fun setIsEmpty!20562 () Bool)

(declare-fun setRes!20562 () Bool)

(assert (=> setIsEmpty!20562 setRes!20562))

(declare-fun b!2240422 () Bool)

(declare-fun e!1432403 () Bool)

(declare-fun tp!706066 () Bool)

(assert (=> b!2240422 (= e!1432403 tp!706066)))

(declare-fun e!1432402 () Bool)

(assert (=> mapNonEmpty!14744 (= tp!706011 e!1432402)))

(declare-fun e!1432404 () Bool)

(declare-fun tp!706067 () Bool)

(declare-fun b!2240423 () Bool)

(assert (=> b!2240423 (= e!1432402 (and (inv!35873 (_1!15423 (_1!15424 (h!31814 mapValue!14744)))) e!1432404 tp_is_empty!10235 setRes!20562 tp!706067))))

(declare-fun condSetEmpty!20562 () Bool)

(assert (=> b!2240423 (= condSetEmpty!20562 (= (_2!15424 (h!31814 mapValue!14744)) ((as const (Array Context!4110 Bool)) false)))))

(declare-fun setNonEmpty!20562 () Bool)

(declare-fun tp!706064 () Bool)

(declare-fun setElem!20562 () Context!4110)

(assert (=> setNonEmpty!20562 (= setRes!20562 (and tp!706064 (inv!35873 setElem!20562) e!1432403))))

(declare-fun setRest!20562 () (InoxSet Context!4110))

(assert (=> setNonEmpty!20562 (= (_2!15424 (h!31814 mapValue!14744)) ((_ map or) (store ((as const (Array Context!4110 Bool)) false) setElem!20562 true) setRest!20562))))

(declare-fun b!2240424 () Bool)

(declare-fun tp!706065 () Bool)

(assert (=> b!2240424 (= e!1432404 tp!706065)))

(assert (= b!2240423 b!2240424))

(assert (= (and b!2240423 condSetEmpty!20562) setIsEmpty!20562))

(assert (= (and b!2240423 (not condSetEmpty!20562)) setNonEmpty!20562))

(assert (= setNonEmpty!20562 b!2240422))

(assert (= (and mapNonEmpty!14744 ((_ is Cons!26413) mapValue!14744)) b!2240423))

(declare-fun m!2672801 () Bool)

(assert (=> b!2240423 m!2672801))

(declare-fun m!2672803 () Bool)

(assert (=> setNonEmpty!20562 m!2672803))

(declare-fun setIsEmpty!20563 () Bool)

(declare-fun setRes!20563 () Bool)

(assert (=> setIsEmpty!20563 setRes!20563))

(declare-fun b!2240425 () Bool)

(declare-fun e!1432406 () Bool)

(declare-fun tp!706070 () Bool)

(assert (=> b!2240425 (= e!1432406 tp!706070)))

(declare-fun e!1432405 () Bool)

(assert (=> b!2240329 (= tp!706014 e!1432405)))

(declare-fun e!1432407 () Bool)

(declare-fun b!2240426 () Bool)

(declare-fun tp!706071 () Bool)

(assert (=> b!2240426 (= e!1432405 (and (inv!35873 (_1!15423 (_1!15424 (h!31814 mapDefault!14744)))) e!1432407 tp_is_empty!10235 setRes!20563 tp!706071))))

(declare-fun condSetEmpty!20563 () Bool)

(assert (=> b!2240426 (= condSetEmpty!20563 (= (_2!15424 (h!31814 mapDefault!14744)) ((as const (Array Context!4110 Bool)) false)))))

(declare-fun setNonEmpty!20563 () Bool)

(declare-fun setElem!20563 () Context!4110)

(declare-fun tp!706068 () Bool)

(assert (=> setNonEmpty!20563 (= setRes!20563 (and tp!706068 (inv!35873 setElem!20563) e!1432406))))

(declare-fun setRest!20563 () (InoxSet Context!4110))

(assert (=> setNonEmpty!20563 (= (_2!15424 (h!31814 mapDefault!14744)) ((_ map or) (store ((as const (Array Context!4110 Bool)) false) setElem!20563 true) setRest!20563))))

(declare-fun b!2240427 () Bool)

(declare-fun tp!706069 () Bool)

(assert (=> b!2240427 (= e!1432407 tp!706069)))

(assert (= b!2240426 b!2240427))

(assert (= (and b!2240426 condSetEmpty!20563) setIsEmpty!20563))

(assert (= (and b!2240426 (not condSetEmpty!20563)) setNonEmpty!20563))

(assert (= setNonEmpty!20563 b!2240425))

(assert (= (and b!2240329 ((_ is Cons!26413) mapDefault!14744)) b!2240426))

(declare-fun m!2672805 () Bool)

(assert (=> b!2240426 m!2672805))

(declare-fun m!2672807 () Bool)

(assert (=> setNonEmpty!20563 m!2672807))

(check-sat b_and!175055 (not bm!135190) (not d!665727) tp_is_empty!10235 (not d!665721) (not b!2240379) (not b!2240427) (not setNonEmpty!20554) (not b!2240378) (not b_next!65747) (not b!2240362) (not setNonEmpty!20563) (not d!665733) (not b!2240426) (not b!2240418) (not b!2240400) (not b!2240382) (not b!2240401) (not bm!135186) (not b!2240423) (not setNonEmpty!20555) (not b!2240399) (not mapNonEmpty!14747) (not b!2240420) (not b!2240397) (not b!2240419) (not b!2240421) (not b!2240360) (not bm!135188) (not b!2240416) (not bm!135189) (not b!2240425) (not b!2240357) (not b!2240398) (not b!2240371) (not setNonEmpty!20561) (not b!2240363) (not setNonEmpty!20562) (not b!2240417) (not b!2240396) (not b!2240359) (not b!2240373) (not bm!135187) (not b_next!65745) b_and!175053 (not setNonEmpty!20560) (not d!665729) (not b!2240422) (not b!2240424) (not b!2240387) (not bm!135185))
(check-sat b_and!175053 b_and!175055 (not b_next!65747) (not b_next!65745))
