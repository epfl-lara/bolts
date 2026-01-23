; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217850 () Bool)

(assert start!217850)

(declare-fun b!2235150 () Bool)

(declare-fun b_free!64817 () Bool)

(declare-fun b_next!65521 () Bool)

(assert (=> b!2235150 (= b_free!64817 (not b_next!65521))))

(declare-fun tp!702176 () Bool)

(declare-fun b_and!174805 () Bool)

(assert (=> b!2235150 (= tp!702176 b_and!174805)))

(declare-fun b!2235147 () Bool)

(declare-fun b_free!64819 () Bool)

(declare-fun b_next!65523 () Bool)

(assert (=> b!2235147 (= b_free!64819 (not b_next!65523))))

(declare-fun tp!702174 () Bool)

(declare-fun b_and!174807 () Bool)

(assert (=> b!2235147 (= tp!702174 b_and!174807)))

(declare-fun b!2235133 () Bool)

(declare-fun res!956490 () Bool)

(declare-fun e!1428507 () Bool)

(assert (=> b!2235133 (=> (not res!956490) (not e!1428507))))

(declare-datatypes ((C!13048 0))(
  ( (C!13049 (val!7572 Int)) )
))
(declare-datatypes ((Regex!6451 0))(
  ( (ElementMatch!6451 (c!356284 C!13048)) (Concat!10789 (regOne!13414 Regex!6451) (regTwo!13414 Regex!6451)) (EmptyExpr!6451) (Star!6451 (reg!6780 Regex!6451)) (EmptyLang!6451) (Union!6451 (regOne!13415 Regex!6451) (regTwo!13415 Regex!6451)) )
))
(declare-datatypes ((List!26378 0))(
  ( (Nil!26284) (Cons!26284 (h!31685 Regex!6451) (t!199798 List!26378)) )
))
(declare-datatypes ((Context!3998 0))(
  ( (Context!3999 (exprs!2499 List!26378)) )
))
(declare-datatypes ((tuple3!3974 0))(
  ( (tuple3!3975 (_1!15291 Regex!6451) (_2!15291 Context!3998) (_3!2457 C!13048)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25668 0))(
  ( (tuple2!25669 (_1!15292 tuple3!3974) (_2!15292 (InoxSet Context!3998))) )
))
(declare-datatypes ((List!26379 0))(
  ( (Nil!26285) (Cons!26285 (h!31686 tuple2!25668) (t!199799 List!26379)) )
))
(declare-datatypes ((array!10728 0))(
  ( (array!10729 (arr!4765 (Array (_ BitVec 32) (_ BitVec 64))) (size!20546 (_ BitVec 32))) )
))
(declare-datatypes ((array!10730 0))(
  ( (array!10731 (arr!4766 (Array (_ BitVec 32) List!26379)) (size!20547 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6178 0))(
  ( (LongMapFixedSize!6179 (defaultEntry!3454 Int) (mask!7668 (_ BitVec 32)) (extraKeys!3337 (_ BitVec 32)) (zeroValue!3347 List!26379) (minValue!3347 List!26379) (_size!6225 (_ BitVec 32)) (_keys!3386 array!10728) (_values!3369 array!10730) (_vacant!3150 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12173 0))(
  ( (Cell!12174 (v!29887 LongMapFixedSize!6178)) )
))
(declare-datatypes ((MutLongMap!3089 0))(
  ( (LongMap!3089 (underlying!6379 Cell!12173)) (MutLongMapExt!3088 (__x!17493 Int)) )
))
(declare-datatypes ((Cell!12175 0))(
  ( (Cell!12176 (v!29888 MutLongMap!3089)) )
))
(declare-datatypes ((Hashable!2999 0))(
  ( (HashableExt!2998 (__x!17494 Int)) )
))
(declare-datatypes ((MutableMap!2999 0))(
  ( (MutableMapExt!2998 (__x!17495 Int)) (HashMap!2999 (underlying!6380 Cell!12175) (hashF!4922 Hashable!2999) (_size!6226 (_ BitVec 32)) (defaultValue!3161 Int)) )
))
(declare-datatypes ((CacheDown!2044 0))(
  ( (CacheDown!2045 (cache!3380 MutableMap!2999)) )
))
(declare-fun thiss!28822 () CacheDown!2044)

(get-info :version)

(assert (=> b!2235133 (= res!956490 ((_ is HashMap!2999) (cache!3380 thiss!28822)))))

(declare-fun b!2235134 () Bool)

(declare-fun e!1428511 () Bool)

(declare-fun tp!702188 () Bool)

(declare-fun tp!702187 () Bool)

(assert (=> b!2235134 (= e!1428511 (and tp!702188 tp!702187))))

(declare-fun b!2235135 () Bool)

(declare-fun res!956492 () Bool)

(assert (=> b!2235135 (=> (not res!956492) (not e!1428507))))

(declare-fun a!1010 () C!13048)

(declare-fun res!14291 () (InoxSet Context!3998))

(declare-fun ctx!56 () Context!3998)

(declare-fun r!4773 () Regex!6451)

(declare-fun derivationStepZipperDown!62 (Regex!6451 Context!3998 C!13048) (InoxSet Context!3998))

(assert (=> b!2235135 (= res!956492 (= res!14291 (derivationStepZipperDown!62 r!4773 ctx!56 a!1010)))))

(declare-fun b!2235136 () Bool)

(declare-fun tp_is_empty!10127 () Bool)

(assert (=> b!2235136 (= e!1428511 tp_is_empty!10127)))

(declare-fun b!2235137 () Bool)

(declare-fun e!1428514 () Bool)

(declare-fun e!1428508 () Bool)

(assert (=> b!2235137 (= e!1428514 e!1428508)))

(declare-fun b!2235138 () Bool)

(declare-fun e!1428517 () Bool)

(assert (=> b!2235138 (= e!1428508 e!1428517)))

(declare-fun tp!702186 () Bool)

(declare-fun setElem!20323 () Context!3998)

(declare-fun setRes!20323 () Bool)

(declare-fun e!1428516 () Bool)

(declare-fun setNonEmpty!20323 () Bool)

(declare-fun inv!35701 (Context!3998) Bool)

(assert (=> setNonEmpty!20323 (= setRes!20323 (and tp!702186 (inv!35701 setElem!20323) e!1428516))))

(declare-fun setRest!20323 () (InoxSet Context!3998))

(assert (=> setNonEmpty!20323 (= res!14291 ((_ map or) (store ((as const (Array Context!3998 Bool)) false) setElem!20323 true) setRest!20323))))

(declare-fun b!2235139 () Bool)

(declare-fun lambda!84439 () Int)

(declare-fun forall!5389 (List!26379 Int) Bool)

(declare-datatypes ((ListMap!823 0))(
  ( (ListMap!824 (toList!1344 List!26379)) )
))
(declare-fun map!5391 (MutableMap!2999) ListMap!823)

(assert (=> b!2235139 (= e!1428507 (not (forall!5389 (toList!1344 (map!5391 (cache!3380 thiss!28822))) lambda!84439)))))

(declare-fun b!2235140 () Bool)

(declare-fun e!1428512 () Bool)

(declare-fun tp!702177 () Bool)

(assert (=> b!2235140 (= e!1428512 tp!702177)))

(declare-fun b!2235141 () Bool)

(declare-fun tp!702175 () Bool)

(assert (=> b!2235141 (= e!1428516 tp!702175)))

(declare-fun b!2235143 () Bool)

(declare-fun res!956493 () Bool)

(assert (=> b!2235143 (=> (not res!956493) (not e!1428507))))

(declare-fun valid!2335 (MutableMap!2999) Bool)

(assert (=> b!2235143 (= res!956493 (valid!2335 (cache!3380 thiss!28822)))))

(declare-fun b!2235144 () Bool)

(declare-fun res!956491 () Bool)

(assert (=> b!2235144 (=> (not res!956491) (not e!1428507))))

(declare-fun validRegex!2416 (Regex!6451) Bool)

(assert (=> b!2235144 (= res!956491 (validRegex!2416 r!4773))))

(declare-fun mapIsEmpty!14525 () Bool)

(declare-fun mapRes!14525 () Bool)

(assert (=> mapIsEmpty!14525 mapRes!14525))

(declare-fun b!2235145 () Bool)

(declare-fun e!1428506 () Bool)

(declare-fun lt!831381 () MutLongMap!3089)

(assert (=> b!2235145 (= e!1428506 (and e!1428514 ((_ is LongMap!3089) lt!831381)))))

(assert (=> b!2235145 (= lt!831381 (v!29888 (underlying!6380 (cache!3380 thiss!28822))))))

(declare-fun mapNonEmpty!14525 () Bool)

(declare-fun tp!702180 () Bool)

(declare-fun tp!702185 () Bool)

(assert (=> mapNonEmpty!14525 (= mapRes!14525 (and tp!702180 tp!702185))))

(declare-fun mapValue!14525 () List!26379)

(declare-fun mapRest!14525 () (Array (_ BitVec 32) List!26379))

(declare-fun mapKey!14525 () (_ BitVec 32))

(assert (=> mapNonEmpty!14525 (= (arr!4766 (_values!3369 (v!29887 (underlying!6379 (v!29888 (underlying!6380 (cache!3380 thiss!28822))))))) (store mapRest!14525 mapKey!14525 mapValue!14525))))

(declare-fun b!2235146 () Bool)

(declare-fun e!1428515 () Bool)

(declare-fun tp!702178 () Bool)

(assert (=> b!2235146 (= e!1428515 (and tp!702178 mapRes!14525))))

(declare-fun condMapEmpty!14525 () Bool)

(declare-fun mapDefault!14525 () List!26379)

(assert (=> b!2235146 (= condMapEmpty!14525 (= (arr!4766 (_values!3369 (v!29887 (underlying!6379 (v!29888 (underlying!6380 (cache!3380 thiss!28822))))))) ((as const (Array (_ BitVec 32) List!26379)) mapDefault!14525)))))

(declare-fun e!1428510 () Bool)

(assert (=> b!2235147 (= e!1428510 (and e!1428506 tp!702174))))

(declare-fun b!2235148 () Bool)

(declare-fun tp!702182 () Bool)

(declare-fun tp!702181 () Bool)

(assert (=> b!2235148 (= e!1428511 (and tp!702182 tp!702181))))

(declare-fun setIsEmpty!20323 () Bool)

(assert (=> setIsEmpty!20323 setRes!20323))

(declare-fun b!2235149 () Bool)

(declare-fun e!1428513 () Bool)

(assert (=> b!2235149 (= e!1428513 e!1428510)))

(declare-fun tp!702179 () Bool)

(declare-fun tp!702183 () Bool)

(declare-fun array_inv!3417 (array!10728) Bool)

(declare-fun array_inv!3418 (array!10730) Bool)

(assert (=> b!2235150 (= e!1428517 (and tp!702176 tp!702183 tp!702179 (array_inv!3417 (_keys!3386 (v!29887 (underlying!6379 (v!29888 (underlying!6380 (cache!3380 thiss!28822))))))) (array_inv!3418 (_values!3369 (v!29887 (underlying!6379 (v!29888 (underlying!6380 (cache!3380 thiss!28822))))))) e!1428515))))

(declare-fun res!956489 () Bool)

(assert (=> start!217850 (=> (not res!956489) (not e!1428507))))

(declare-fun validCacheMapDown!303 (MutableMap!2999) Bool)

(assert (=> start!217850 (= res!956489 (validCacheMapDown!303 (cache!3380 thiss!28822)))))

(assert (=> start!217850 e!1428507))

(assert (=> start!217850 tp_is_empty!10127))

(declare-fun condSetEmpty!20323 () Bool)

(assert (=> start!217850 (= condSetEmpty!20323 (= res!14291 ((as const (Array Context!3998 Bool)) false)))))

(assert (=> start!217850 setRes!20323))

(assert (=> start!217850 (and (inv!35701 ctx!56) e!1428512)))

(assert (=> start!217850 e!1428511))

(declare-fun inv!35702 (CacheDown!2044) Bool)

(assert (=> start!217850 (and (inv!35702 thiss!28822) e!1428513)))

(declare-fun b!2235142 () Bool)

(declare-fun tp!702184 () Bool)

(assert (=> b!2235142 (= e!1428511 tp!702184)))

(assert (= (and start!217850 res!956489) b!2235144))

(assert (= (and b!2235144 res!956491) b!2235135))

(assert (= (and b!2235135 res!956492) b!2235133))

(assert (= (and b!2235133 res!956490) b!2235143))

(assert (= (and b!2235143 res!956493) b!2235139))

(assert (= (and start!217850 condSetEmpty!20323) setIsEmpty!20323))

(assert (= (and start!217850 (not condSetEmpty!20323)) setNonEmpty!20323))

(assert (= setNonEmpty!20323 b!2235141))

(assert (= start!217850 b!2235140))

(assert (= (and start!217850 ((_ is ElementMatch!6451) r!4773)) b!2235136))

(assert (= (and start!217850 ((_ is Concat!10789) r!4773)) b!2235148))

(assert (= (and start!217850 ((_ is Star!6451) r!4773)) b!2235142))

(assert (= (and start!217850 ((_ is Union!6451) r!4773)) b!2235134))

(assert (= (and b!2235146 condMapEmpty!14525) mapIsEmpty!14525))

(assert (= (and b!2235146 (not condMapEmpty!14525)) mapNonEmpty!14525))

(assert (= b!2235150 b!2235146))

(assert (= b!2235138 b!2235150))

(assert (= b!2235137 b!2235138))

(assert (= (and b!2235145 ((_ is LongMap!3089) (v!29888 (underlying!6380 (cache!3380 thiss!28822))))) b!2235137))

(assert (= b!2235147 b!2235145))

(assert (= (and b!2235149 ((_ is HashMap!2999) (cache!3380 thiss!28822))) b!2235147))

(assert (= start!217850 b!2235149))

(declare-fun m!2669559 () Bool)

(assert (=> setNonEmpty!20323 m!2669559))

(declare-fun m!2669561 () Bool)

(assert (=> b!2235144 m!2669561))

(declare-fun m!2669563 () Bool)

(assert (=> mapNonEmpty!14525 m!2669563))

(declare-fun m!2669565 () Bool)

(assert (=> start!217850 m!2669565))

(declare-fun m!2669567 () Bool)

(assert (=> start!217850 m!2669567))

(declare-fun m!2669569 () Bool)

(assert (=> start!217850 m!2669569))

(declare-fun m!2669571 () Bool)

(assert (=> b!2235139 m!2669571))

(declare-fun m!2669573 () Bool)

(assert (=> b!2235139 m!2669573))

(declare-fun m!2669575 () Bool)

(assert (=> b!2235150 m!2669575))

(declare-fun m!2669577 () Bool)

(assert (=> b!2235150 m!2669577))

(declare-fun m!2669579 () Bool)

(assert (=> b!2235143 m!2669579))

(declare-fun m!2669581 () Bool)

(assert (=> b!2235135 m!2669581))

(check-sat (not b!2235141) (not b!2235142) (not b!2235139) (not b!2235134) (not b!2235150) (not mapNonEmpty!14525) (not b!2235135) b_and!174805 (not b!2235144) (not start!217850) tp_is_empty!10127 (not b!2235143) (not b_next!65521) (not setNonEmpty!20323) (not b!2235140) b_and!174807 (not b_next!65523) (not b!2235148) (not b!2235146))
(check-sat b_and!174805 b_and!174807 (not b_next!65523) (not b_next!65521))
(get-model)

(declare-fun d!665375 () Bool)

(assert (=> d!665375 (= (array_inv!3417 (_keys!3386 (v!29887 (underlying!6379 (v!29888 (underlying!6380 (cache!3380 thiss!28822))))))) (bvsge (size!20546 (_keys!3386 (v!29887 (underlying!6379 (v!29888 (underlying!6380 (cache!3380 thiss!28822))))))) #b00000000000000000000000000000000))))

(assert (=> b!2235150 d!665375))

(declare-fun d!665377 () Bool)

(assert (=> d!665377 (= (array_inv!3418 (_values!3369 (v!29887 (underlying!6379 (v!29888 (underlying!6380 (cache!3380 thiss!28822))))))) (bvsge (size!20547 (_values!3369 (v!29887 (underlying!6379 (v!29888 (underlying!6380 (cache!3380 thiss!28822))))))) #b00000000000000000000000000000000))))

(assert (=> b!2235150 d!665377))

(declare-fun d!665379 () Bool)

(declare-fun res!956498 () Bool)

(declare-fun e!1428520 () Bool)

(assert (=> d!665379 (=> (not res!956498) (not e!1428520))))

(declare-fun valid!2336 (MutLongMap!3089) Bool)

(assert (=> d!665379 (= res!956498 (valid!2336 (v!29888 (underlying!6380 (cache!3380 thiss!28822)))))))

(assert (=> d!665379 (= (valid!2335 (cache!3380 thiss!28822)) e!1428520)))

(declare-fun b!2235155 () Bool)

(declare-fun res!956499 () Bool)

(assert (=> b!2235155 (=> (not res!956499) (not e!1428520))))

(declare-fun lambda!84442 () Int)

(declare-datatypes ((tuple2!25670 0))(
  ( (tuple2!25671 (_1!15293 (_ BitVec 64)) (_2!15293 List!26379)) )
))
(declare-datatypes ((List!26380 0))(
  ( (Nil!26286) (Cons!26286 (h!31687 tuple2!25670) (t!199800 List!26380)) )
))
(declare-fun forall!5390 (List!26380 Int) Bool)

(declare-datatypes ((ListLongMap!319 0))(
  ( (ListLongMap!320 (toList!1345 List!26380)) )
))
(declare-fun map!5392 (MutLongMap!3089) ListLongMap!319)

(assert (=> b!2235155 (= res!956499 (forall!5390 (toList!1345 (map!5392 (v!29888 (underlying!6380 (cache!3380 thiss!28822))))) lambda!84442))))

(declare-fun b!2235156 () Bool)

(declare-fun allKeysSameHashInMap!106 (ListLongMap!319 Hashable!2999) Bool)

(assert (=> b!2235156 (= e!1428520 (allKeysSameHashInMap!106 (map!5392 (v!29888 (underlying!6380 (cache!3380 thiss!28822)))) (hashF!4922 (cache!3380 thiss!28822))))))

(assert (= (and d!665379 res!956498) b!2235155))

(assert (= (and b!2235155 res!956499) b!2235156))

(declare-fun m!2669583 () Bool)

(assert (=> d!665379 m!2669583))

(declare-fun m!2669585 () Bool)

(assert (=> b!2235155 m!2669585))

(declare-fun m!2669587 () Bool)

(assert (=> b!2235155 m!2669587))

(assert (=> b!2235156 m!2669585))

(assert (=> b!2235156 m!2669585))

(declare-fun m!2669589 () Bool)

(assert (=> b!2235156 m!2669589))

(assert (=> b!2235143 d!665379))

(declare-fun d!665381 () Bool)

(declare-fun lambda!84445 () Int)

(declare-fun forall!5391 (List!26378 Int) Bool)

(assert (=> d!665381 (= (inv!35701 setElem!20323) (forall!5391 (exprs!2499 setElem!20323) lambda!84445))))

(declare-fun bs!454181 () Bool)

(assert (= bs!454181 d!665381))

(declare-fun m!2669591 () Bool)

(assert (=> bs!454181 m!2669591))

(assert (=> setNonEmpty!20323 d!665381))

(declare-fun b!2235175 () Bool)

(declare-fun e!1428540 () Bool)

(declare-fun call!134636 () Bool)

(assert (=> b!2235175 (= e!1428540 call!134636)))

(declare-fun call!134637 () Bool)

(declare-fun c!356289 () Bool)

(declare-fun bm!134630 () Bool)

(declare-fun c!356290 () Bool)

(assert (=> bm!134630 (= call!134637 (validRegex!2416 (ite c!356290 (reg!6780 r!4773) (ite c!356289 (regOne!13415 r!4773) (regOne!13414 r!4773)))))))

(declare-fun b!2235176 () Bool)

(declare-fun res!956511 () Bool)

(declare-fun e!1428539 () Bool)

(assert (=> b!2235176 (=> res!956511 e!1428539)))

(assert (=> b!2235176 (= res!956511 (not ((_ is Concat!10789) r!4773)))))

(declare-fun e!1428536 () Bool)

(assert (=> b!2235176 (= e!1428536 e!1428539)))

(declare-fun b!2235177 () Bool)

(declare-fun e!1428535 () Bool)

(assert (=> b!2235177 (= e!1428535 call!134636)))

(declare-fun d!665383 () Bool)

(declare-fun res!956513 () Bool)

(declare-fun e!1428538 () Bool)

(assert (=> d!665383 (=> res!956513 e!1428538)))

(assert (=> d!665383 (= res!956513 ((_ is ElementMatch!6451) r!4773))))

(assert (=> d!665383 (= (validRegex!2416 r!4773) e!1428538)))

(declare-fun bm!134631 () Bool)

(assert (=> bm!134631 (= call!134636 (validRegex!2416 (ite c!356289 (regTwo!13415 r!4773) (regTwo!13414 r!4773))))))

(declare-fun b!2235178 () Bool)

(declare-fun e!1428537 () Bool)

(assert (=> b!2235178 (= e!1428537 call!134637)))

(declare-fun b!2235179 () Bool)

(declare-fun e!1428541 () Bool)

(assert (=> b!2235179 (= e!1428541 e!1428537)))

(declare-fun res!956514 () Bool)

(declare-fun nullable!1780 (Regex!6451) Bool)

(assert (=> b!2235179 (= res!956514 (not (nullable!1780 (reg!6780 r!4773))))))

(assert (=> b!2235179 (=> (not res!956514) (not e!1428537))))

(declare-fun b!2235180 () Bool)

(assert (=> b!2235180 (= e!1428539 e!1428540)))

(declare-fun res!956512 () Bool)

(assert (=> b!2235180 (=> (not res!956512) (not e!1428540))))

(declare-fun call!134635 () Bool)

(assert (=> b!2235180 (= res!956512 call!134635)))

(declare-fun b!2235181 () Bool)

(assert (=> b!2235181 (= e!1428538 e!1428541)))

(assert (=> b!2235181 (= c!356290 ((_ is Star!6451) r!4773))))

(declare-fun b!2235182 () Bool)

(assert (=> b!2235182 (= e!1428541 e!1428536)))

(assert (=> b!2235182 (= c!356289 ((_ is Union!6451) r!4773))))

(declare-fun bm!134632 () Bool)

(assert (=> bm!134632 (= call!134635 call!134637)))

(declare-fun b!2235183 () Bool)

(declare-fun res!956510 () Bool)

(assert (=> b!2235183 (=> (not res!956510) (not e!1428535))))

(assert (=> b!2235183 (= res!956510 call!134635)))

(assert (=> b!2235183 (= e!1428536 e!1428535)))

(assert (= (and d!665383 (not res!956513)) b!2235181))

(assert (= (and b!2235181 c!356290) b!2235179))

(assert (= (and b!2235181 (not c!356290)) b!2235182))

(assert (= (and b!2235179 res!956514) b!2235178))

(assert (= (and b!2235182 c!356289) b!2235183))

(assert (= (and b!2235182 (not c!356289)) b!2235176))

(assert (= (and b!2235183 res!956510) b!2235177))

(assert (= (and b!2235176 (not res!956511)) b!2235180))

(assert (= (and b!2235180 res!956512) b!2235175))

(assert (= (or b!2235177 b!2235175) bm!134631))

(assert (= (or b!2235183 b!2235180) bm!134632))

(assert (= (or b!2235178 bm!134632) bm!134630))

(declare-fun m!2669593 () Bool)

(assert (=> bm!134630 m!2669593))

(declare-fun m!2669595 () Bool)

(assert (=> bm!134631 m!2669595))

(declare-fun m!2669597 () Bool)

(assert (=> b!2235179 m!2669597))

(assert (=> b!2235144 d!665383))

(declare-fun d!665385 () Bool)

(declare-fun res!956519 () Bool)

(declare-fun e!1428546 () Bool)

(assert (=> d!665385 (=> res!956519 e!1428546)))

(assert (=> d!665385 (= res!956519 ((_ is Nil!26285) (toList!1344 (map!5391 (cache!3380 thiss!28822)))))))

(assert (=> d!665385 (= (forall!5389 (toList!1344 (map!5391 (cache!3380 thiss!28822))) lambda!84439) e!1428546)))

(declare-fun b!2235188 () Bool)

(declare-fun e!1428547 () Bool)

(assert (=> b!2235188 (= e!1428546 e!1428547)))

(declare-fun res!956520 () Bool)

(assert (=> b!2235188 (=> (not res!956520) (not e!1428547))))

(declare-fun dynLambda!11528 (Int tuple2!25668) Bool)

(assert (=> b!2235188 (= res!956520 (dynLambda!11528 lambda!84439 (h!31686 (toList!1344 (map!5391 (cache!3380 thiss!28822))))))))

(declare-fun b!2235189 () Bool)

(assert (=> b!2235189 (= e!1428547 (forall!5389 (t!199799 (toList!1344 (map!5391 (cache!3380 thiss!28822)))) lambda!84439))))

(assert (= (and d!665385 (not res!956519)) b!2235188))

(assert (= (and b!2235188 res!956520) b!2235189))

(declare-fun b_lambda!71681 () Bool)

(assert (=> (not b_lambda!71681) (not b!2235188)))

(declare-fun m!2669599 () Bool)

(assert (=> b!2235188 m!2669599))

(declare-fun m!2669601 () Bool)

(assert (=> b!2235189 m!2669601))

(assert (=> b!2235139 d!665385))

(declare-fun d!665387 () Bool)

(declare-fun lt!831384 () ListMap!823)

(declare-fun invariantList!369 (List!26379) Bool)

(assert (=> d!665387 (invariantList!369 (toList!1344 lt!831384))))

(declare-fun extractMap!105 (List!26380) ListMap!823)

(assert (=> d!665387 (= lt!831384 (extractMap!105 (toList!1345 (map!5392 (v!29888 (underlying!6380 (cache!3380 thiss!28822)))))))))

(assert (=> d!665387 (valid!2335 (cache!3380 thiss!28822))))

(assert (=> d!665387 (= (map!5391 (cache!3380 thiss!28822)) lt!831384)))

(declare-fun bs!454182 () Bool)

(assert (= bs!454182 d!665387))

(declare-fun m!2669603 () Bool)

(assert (=> bs!454182 m!2669603))

(assert (=> bs!454182 m!2669585))

(declare-fun m!2669605 () Bool)

(assert (=> bs!454182 m!2669605))

(assert (=> bs!454182 m!2669579))

(assert (=> b!2235139 d!665387))

(declare-fun b!2235212 () Bool)

(declare-fun e!1428560 () (InoxSet Context!3998))

(declare-fun e!1428562 () (InoxSet Context!3998))

(assert (=> b!2235212 (= e!1428560 e!1428562)))

(declare-fun c!356303 () Bool)

(assert (=> b!2235212 (= c!356303 ((_ is Concat!10789) r!4773))))

(declare-fun b!2235214 () Bool)

(declare-fun e!1428565 () (InoxSet Context!3998))

(declare-fun e!1428563 () (InoxSet Context!3998))

(assert (=> b!2235214 (= e!1428565 e!1428563)))

(declare-fun c!356302 () Bool)

(assert (=> b!2235214 (= c!356302 ((_ is Union!6451) r!4773))))

(declare-fun b!2235215 () Bool)

(assert (=> b!2235215 (= e!1428565 (store ((as const (Array Context!3998 Bool)) false) ctx!56 true))))

(declare-fun call!134653 () List!26378)

(declare-fun call!134652 () (InoxSet Context!3998))

(declare-fun bm!134645 () Bool)

(assert (=> bm!134645 (= call!134652 (derivationStepZipperDown!62 (ite c!356302 (regTwo!13415 r!4773) (regOne!13414 r!4773)) (ite c!356302 ctx!56 (Context!3999 call!134653)) a!1010))))

(declare-fun bm!134646 () Bool)

(declare-fun call!134654 () (InoxSet Context!3998))

(declare-fun call!134655 () (InoxSet Context!3998))

(assert (=> bm!134646 (= call!134654 call!134655)))

(declare-fun b!2235216 () Bool)

(assert (=> b!2235216 (= e!1428560 ((_ map or) call!134652 call!134654))))

(declare-fun bm!134647 () Bool)

(declare-fun c!356301 () Bool)

(declare-fun $colon$colon!529 (List!26378 Regex!6451) List!26378)

(assert (=> bm!134647 (= call!134653 ($colon$colon!529 (exprs!2499 ctx!56) (ite (or c!356301 c!356303) (regTwo!13414 r!4773) r!4773)))))

(declare-fun bm!134648 () Bool)

(declare-fun call!134651 () List!26378)

(assert (=> bm!134648 (= call!134651 call!134653)))

(declare-fun b!2235217 () Bool)

(declare-fun c!356304 () Bool)

(assert (=> b!2235217 (= c!356304 ((_ is Star!6451) r!4773))))

(declare-fun e!1428561 () (InoxSet Context!3998))

(assert (=> b!2235217 (= e!1428562 e!1428561)))

(declare-fun b!2235218 () Bool)

(declare-fun call!134650 () (InoxSet Context!3998))

(assert (=> b!2235218 (= e!1428562 call!134650)))

(declare-fun b!2235213 () Bool)

(declare-fun e!1428564 () Bool)

(assert (=> b!2235213 (= c!356301 e!1428564)))

(declare-fun res!956523 () Bool)

(assert (=> b!2235213 (=> (not res!956523) (not e!1428564))))

(assert (=> b!2235213 (= res!956523 ((_ is Concat!10789) r!4773))))

(assert (=> b!2235213 (= e!1428563 e!1428560)))

(declare-fun d!665389 () Bool)

(declare-fun c!356305 () Bool)

(assert (=> d!665389 (= c!356305 (and ((_ is ElementMatch!6451) r!4773) (= (c!356284 r!4773) a!1010)))))

(assert (=> d!665389 (= (derivationStepZipperDown!62 r!4773 ctx!56 a!1010) e!1428565)))

(declare-fun b!2235219 () Bool)

(assert (=> b!2235219 (= e!1428561 call!134650)))

(declare-fun bm!134649 () Bool)

(assert (=> bm!134649 (= call!134655 (derivationStepZipperDown!62 (ite c!356302 (regOne!13415 r!4773) (ite c!356301 (regTwo!13414 r!4773) (ite c!356303 (regOne!13414 r!4773) (reg!6780 r!4773)))) (ite (or c!356302 c!356301) ctx!56 (Context!3999 call!134651)) a!1010))))

(declare-fun b!2235220 () Bool)

(assert (=> b!2235220 (= e!1428561 ((as const (Array Context!3998 Bool)) false))))

(declare-fun b!2235221 () Bool)

(assert (=> b!2235221 (= e!1428564 (nullable!1780 (regOne!13414 r!4773)))))

(declare-fun b!2235222 () Bool)

(assert (=> b!2235222 (= e!1428563 ((_ map or) call!134655 call!134652))))

(declare-fun bm!134650 () Bool)

(assert (=> bm!134650 (= call!134650 call!134654)))

(assert (= (and d!665389 c!356305) b!2235215))

(assert (= (and d!665389 (not c!356305)) b!2235214))

(assert (= (and b!2235214 c!356302) b!2235222))

(assert (= (and b!2235214 (not c!356302)) b!2235213))

(assert (= (and b!2235213 res!956523) b!2235221))

(assert (= (and b!2235213 c!356301) b!2235216))

(assert (= (and b!2235213 (not c!356301)) b!2235212))

(assert (= (and b!2235212 c!356303) b!2235218))

(assert (= (and b!2235212 (not c!356303)) b!2235217))

(assert (= (and b!2235217 c!356304) b!2235219))

(assert (= (and b!2235217 (not c!356304)) b!2235220))

(assert (= (or b!2235218 b!2235219) bm!134648))

(assert (= (or b!2235218 b!2235219) bm!134650))

(assert (= (or b!2235216 bm!134650) bm!134646))

(assert (= (or b!2235216 bm!134648) bm!134647))

(assert (= (or b!2235222 b!2235216) bm!134645))

(assert (= (or b!2235222 bm!134646) bm!134649))

(declare-fun m!2669607 () Bool)

(assert (=> b!2235215 m!2669607))

(declare-fun m!2669609 () Bool)

(assert (=> b!2235221 m!2669609))

(declare-fun m!2669611 () Bool)

(assert (=> bm!134645 m!2669611))

(declare-fun m!2669613 () Bool)

(assert (=> bm!134649 m!2669613))

(declare-fun m!2669615 () Bool)

(assert (=> bm!134647 m!2669615))

(assert (=> b!2235135 d!665389))

(declare-fun bs!454183 () Bool)

(declare-fun b!2235230 () Bool)

(assert (= bs!454183 (and b!2235230 b!2235139)))

(declare-fun lambda!84448 () Int)

(assert (=> bs!454183 (= lambda!84448 lambda!84439)))

(declare-fun d!665391 () Bool)

(declare-fun res!956530 () Bool)

(declare-fun e!1428570 () Bool)

(assert (=> d!665391 (=> (not res!956530) (not e!1428570))))

(assert (=> d!665391 (= res!956530 (valid!2335 (cache!3380 thiss!28822)))))

(assert (=> d!665391 (= (validCacheMapDown!303 (cache!3380 thiss!28822)) e!1428570)))

(declare-fun b!2235229 () Bool)

(declare-fun res!956531 () Bool)

(assert (=> b!2235229 (=> (not res!956531) (not e!1428570))))

(assert (=> b!2235229 (= res!956531 (invariantList!369 (toList!1344 (map!5391 (cache!3380 thiss!28822)))))))

(assert (=> b!2235230 (= e!1428570 (forall!5389 (toList!1344 (map!5391 (cache!3380 thiss!28822))) lambda!84448))))

(assert (= (and d!665391 res!956530) b!2235229))

(assert (= (and b!2235229 res!956531) b!2235230))

(assert (=> d!665391 m!2669579))

(assert (=> b!2235229 m!2669571))

(declare-fun m!2669618 () Bool)

(assert (=> b!2235229 m!2669618))

(assert (=> b!2235230 m!2669571))

(declare-fun m!2669620 () Bool)

(assert (=> b!2235230 m!2669620))

(assert (=> start!217850 d!665391))

(declare-fun bs!454184 () Bool)

(declare-fun d!665393 () Bool)

(assert (= bs!454184 (and d!665393 d!665381)))

(declare-fun lambda!84449 () Int)

(assert (=> bs!454184 (= lambda!84449 lambda!84445)))

(assert (=> d!665393 (= (inv!35701 ctx!56) (forall!5391 (exprs!2499 ctx!56) lambda!84449))))

(declare-fun bs!454185 () Bool)

(assert (= bs!454185 d!665393))

(declare-fun m!2669622 () Bool)

(assert (=> bs!454185 m!2669622))

(assert (=> start!217850 d!665393))

(declare-fun d!665395 () Bool)

(declare-fun res!956534 () Bool)

(declare-fun e!1428573 () Bool)

(assert (=> d!665395 (=> (not res!956534) (not e!1428573))))

(assert (=> d!665395 (= res!956534 ((_ is HashMap!2999) (cache!3380 thiss!28822)))))

(assert (=> d!665395 (= (inv!35702 thiss!28822) e!1428573)))

(declare-fun b!2235233 () Bool)

(assert (=> b!2235233 (= e!1428573 (validCacheMapDown!303 (cache!3380 thiss!28822)))))

(assert (= (and d!665395 res!956534) b!2235233))

(assert (=> b!2235233 m!2669565))

(assert (=> start!217850 d!665395))

(declare-fun setElem!20326 () Context!3998)

(declare-fun setNonEmpty!20326 () Bool)

(declare-fun tp!702203 () Bool)

(declare-fun e!1428580 () Bool)

(declare-fun setRes!20326 () Bool)

(assert (=> setNonEmpty!20326 (= setRes!20326 (and tp!702203 (inv!35701 setElem!20326) e!1428580))))

(declare-fun setRest!20326 () (InoxSet Context!3998))

(assert (=> setNonEmpty!20326 (= (_2!15292 (h!31686 (zeroValue!3347 (v!29887 (underlying!6379 (v!29888 (underlying!6380 (cache!3380 thiss!28822)))))))) ((_ map or) (store ((as const (Array Context!3998 Bool)) false) setElem!20326 true) setRest!20326))))

(declare-fun e!1428582 () Bool)

(assert (=> b!2235150 (= tp!702183 e!1428582)))

(declare-fun b!2235242 () Bool)

(declare-fun e!1428581 () Bool)

(declare-fun tp!702202 () Bool)

(assert (=> b!2235242 (= e!1428581 tp!702202)))

(declare-fun setIsEmpty!20326 () Bool)

(assert (=> setIsEmpty!20326 setRes!20326))

(declare-fun b!2235243 () Bool)

(declare-fun tp!702201 () Bool)

(declare-fun tp!702200 () Bool)

(assert (=> b!2235243 (= e!1428582 (and tp!702201 (inv!35701 (_2!15291 (_1!15292 (h!31686 (zeroValue!3347 (v!29887 (underlying!6379 (v!29888 (underlying!6380 (cache!3380 thiss!28822)))))))))) e!1428581 tp_is_empty!10127 setRes!20326 tp!702200))))

(declare-fun condSetEmpty!20326 () Bool)

(assert (=> b!2235243 (= condSetEmpty!20326 (= (_2!15292 (h!31686 (zeroValue!3347 (v!29887 (underlying!6379 (v!29888 (underlying!6380 (cache!3380 thiss!28822)))))))) ((as const (Array Context!3998 Bool)) false)))))

(declare-fun b!2235244 () Bool)

(declare-fun tp!702199 () Bool)

(assert (=> b!2235244 (= e!1428580 tp!702199)))

(assert (= b!2235243 b!2235242))

(assert (= (and b!2235243 condSetEmpty!20326) setIsEmpty!20326))

(assert (= (and b!2235243 (not condSetEmpty!20326)) setNonEmpty!20326))

(assert (= setNonEmpty!20326 b!2235244))

(assert (= (and b!2235150 ((_ is Cons!26285) (zeroValue!3347 (v!29887 (underlying!6379 (v!29888 (underlying!6380 (cache!3380 thiss!28822)))))))) b!2235243))

(declare-fun m!2669624 () Bool)

(assert (=> setNonEmpty!20326 m!2669624))

(declare-fun m!2669626 () Bool)

(assert (=> b!2235243 m!2669626))

(declare-fun e!1428583 () Bool)

(declare-fun setNonEmpty!20327 () Bool)

(declare-fun setRes!20327 () Bool)

(declare-fun tp!702208 () Bool)

(declare-fun setElem!20327 () Context!3998)

(assert (=> setNonEmpty!20327 (= setRes!20327 (and tp!702208 (inv!35701 setElem!20327) e!1428583))))

(declare-fun setRest!20327 () (InoxSet Context!3998))

(assert (=> setNonEmpty!20327 (= (_2!15292 (h!31686 (minValue!3347 (v!29887 (underlying!6379 (v!29888 (underlying!6380 (cache!3380 thiss!28822)))))))) ((_ map or) (store ((as const (Array Context!3998 Bool)) false) setElem!20327 true) setRest!20327))))

(declare-fun e!1428585 () Bool)

(assert (=> b!2235150 (= tp!702179 e!1428585)))

(declare-fun b!2235245 () Bool)

(declare-fun e!1428584 () Bool)

(declare-fun tp!702207 () Bool)

(assert (=> b!2235245 (= e!1428584 tp!702207)))

(declare-fun setIsEmpty!20327 () Bool)

(assert (=> setIsEmpty!20327 setRes!20327))

(declare-fun tp!702206 () Bool)

(declare-fun tp!702205 () Bool)

(declare-fun b!2235246 () Bool)

(assert (=> b!2235246 (= e!1428585 (and tp!702206 (inv!35701 (_2!15291 (_1!15292 (h!31686 (minValue!3347 (v!29887 (underlying!6379 (v!29888 (underlying!6380 (cache!3380 thiss!28822)))))))))) e!1428584 tp_is_empty!10127 setRes!20327 tp!702205))))

(declare-fun condSetEmpty!20327 () Bool)

(assert (=> b!2235246 (= condSetEmpty!20327 (= (_2!15292 (h!31686 (minValue!3347 (v!29887 (underlying!6379 (v!29888 (underlying!6380 (cache!3380 thiss!28822)))))))) ((as const (Array Context!3998 Bool)) false)))))

(declare-fun b!2235247 () Bool)

(declare-fun tp!702204 () Bool)

(assert (=> b!2235247 (= e!1428583 tp!702204)))

(assert (= b!2235246 b!2235245))

(assert (= (and b!2235246 condSetEmpty!20327) setIsEmpty!20327))

(assert (= (and b!2235246 (not condSetEmpty!20327)) setNonEmpty!20327))

(assert (= setNonEmpty!20327 b!2235247))

(assert (= (and b!2235150 ((_ is Cons!26285) (minValue!3347 (v!29887 (underlying!6379 (v!29888 (underlying!6380 (cache!3380 thiss!28822)))))))) b!2235246))

(declare-fun m!2669628 () Bool)

(assert (=> setNonEmpty!20327 m!2669628))

(declare-fun m!2669630 () Bool)

(assert (=> b!2235246 m!2669630))

(declare-fun tp!702213 () Bool)

(declare-fun setElem!20328 () Context!3998)

(declare-fun setNonEmpty!20328 () Bool)

(declare-fun e!1428586 () Bool)

(declare-fun setRes!20328 () Bool)

(assert (=> setNonEmpty!20328 (= setRes!20328 (and tp!702213 (inv!35701 setElem!20328) e!1428586))))

(declare-fun setRest!20328 () (InoxSet Context!3998))

(assert (=> setNonEmpty!20328 (= (_2!15292 (h!31686 mapDefault!14525)) ((_ map or) (store ((as const (Array Context!3998 Bool)) false) setElem!20328 true) setRest!20328))))

(declare-fun e!1428588 () Bool)

(assert (=> b!2235146 (= tp!702178 e!1428588)))

(declare-fun b!2235248 () Bool)

(declare-fun e!1428587 () Bool)

(declare-fun tp!702212 () Bool)

(assert (=> b!2235248 (= e!1428587 tp!702212)))

(declare-fun setIsEmpty!20328 () Bool)

(assert (=> setIsEmpty!20328 setRes!20328))

(declare-fun b!2235249 () Bool)

(declare-fun tp!702211 () Bool)

(declare-fun tp!702210 () Bool)

(assert (=> b!2235249 (= e!1428588 (and tp!702211 (inv!35701 (_2!15291 (_1!15292 (h!31686 mapDefault!14525)))) e!1428587 tp_is_empty!10127 setRes!20328 tp!702210))))

(declare-fun condSetEmpty!20328 () Bool)

(assert (=> b!2235249 (= condSetEmpty!20328 (= (_2!15292 (h!31686 mapDefault!14525)) ((as const (Array Context!3998 Bool)) false)))))

(declare-fun b!2235250 () Bool)

(declare-fun tp!702209 () Bool)

(assert (=> b!2235250 (= e!1428586 tp!702209)))

(assert (= b!2235249 b!2235248))

(assert (= (and b!2235249 condSetEmpty!20328) setIsEmpty!20328))

(assert (= (and b!2235249 (not condSetEmpty!20328)) setNonEmpty!20328))

(assert (= setNonEmpty!20328 b!2235250))

(assert (= (and b!2235146 ((_ is Cons!26285) mapDefault!14525)) b!2235249))

(declare-fun m!2669632 () Bool)

(assert (=> setNonEmpty!20328 m!2669632))

(declare-fun m!2669634 () Bool)

(assert (=> b!2235249 m!2669634))

(declare-fun condSetEmpty!20331 () Bool)

(assert (=> setNonEmpty!20323 (= condSetEmpty!20331 (= setRest!20323 ((as const (Array Context!3998 Bool)) false)))))

(declare-fun setRes!20331 () Bool)

(assert (=> setNonEmpty!20323 (= tp!702186 setRes!20331)))

(declare-fun setIsEmpty!20331 () Bool)

(assert (=> setIsEmpty!20331 setRes!20331))

(declare-fun e!1428591 () Bool)

(declare-fun tp!702218 () Bool)

(declare-fun setElem!20331 () Context!3998)

(declare-fun setNonEmpty!20331 () Bool)

(assert (=> setNonEmpty!20331 (= setRes!20331 (and tp!702218 (inv!35701 setElem!20331) e!1428591))))

(declare-fun setRest!20331 () (InoxSet Context!3998))

(assert (=> setNonEmpty!20331 (= setRest!20323 ((_ map or) (store ((as const (Array Context!3998 Bool)) false) setElem!20331 true) setRest!20331))))

(declare-fun b!2235255 () Bool)

(declare-fun tp!702219 () Bool)

(assert (=> b!2235255 (= e!1428591 tp!702219)))

(assert (= (and setNonEmpty!20323 condSetEmpty!20331) setIsEmpty!20331))

(assert (= (and setNonEmpty!20323 (not condSetEmpty!20331)) setNonEmpty!20331))

(assert (= setNonEmpty!20331 b!2235255))

(declare-fun m!2669636 () Bool)

(assert (=> setNonEmpty!20331 m!2669636))

(declare-fun b!2235260 () Bool)

(declare-fun e!1428594 () Bool)

(declare-fun tp!702224 () Bool)

(declare-fun tp!702225 () Bool)

(assert (=> b!2235260 (= e!1428594 (and tp!702224 tp!702225))))

(assert (=> b!2235141 (= tp!702175 e!1428594)))

(assert (= (and b!2235141 ((_ is Cons!26284) (exprs!2499 setElem!20323))) b!2235260))

(declare-fun setIsEmpty!20336 () Bool)

(declare-fun setRes!20336 () Bool)

(assert (=> setIsEmpty!20336 setRes!20336))

(declare-fun tp!702249 () Bool)

(declare-fun mapDefault!14528 () List!26379)

(declare-fun e!1428607 () Bool)

(declare-fun b!2235275 () Bool)

(declare-fun tp!702248 () Bool)

(declare-fun e!1428610 () Bool)

(assert (=> b!2235275 (= e!1428610 (and tp!702248 (inv!35701 (_2!15291 (_1!15292 (h!31686 mapDefault!14528)))) e!1428607 tp_is_empty!10127 setRes!20336 tp!702249))))

(declare-fun condSetEmpty!20337 () Bool)

(assert (=> b!2235275 (= condSetEmpty!20337 (= (_2!15292 (h!31686 mapDefault!14528)) ((as const (Array Context!3998 Bool)) false)))))

(declare-fun setElem!20337 () Context!3998)

(declare-fun setNonEmpty!20336 () Bool)

(declare-fun e!1428609 () Bool)

(declare-fun tp!702256 () Bool)

(assert (=> setNonEmpty!20336 (= setRes!20336 (and tp!702256 (inv!35701 setElem!20337) e!1428609))))

(declare-fun setRest!20337 () (InoxSet Context!3998))

(assert (=> setNonEmpty!20336 (= (_2!15292 (h!31686 mapDefault!14528)) ((_ map or) (store ((as const (Array Context!3998 Bool)) false) setElem!20337 true) setRest!20337))))

(declare-fun mapValue!14528 () List!26379)

(declare-fun tp!702251 () Bool)

(declare-fun e!1428608 () Bool)

(declare-fun b!2235276 () Bool)

(declare-fun setRes!20337 () Bool)

(declare-fun e!1428611 () Bool)

(declare-fun tp!702253 () Bool)

(assert (=> b!2235276 (= e!1428611 (and tp!702253 (inv!35701 (_2!15291 (_1!15292 (h!31686 mapValue!14528)))) e!1428608 tp_is_empty!10127 setRes!20337 tp!702251))))

(declare-fun condSetEmpty!20336 () Bool)

(assert (=> b!2235276 (= condSetEmpty!20336 (= (_2!15292 (h!31686 mapValue!14528)) ((as const (Array Context!3998 Bool)) false)))))

(declare-fun setIsEmpty!20337 () Bool)

(assert (=> setIsEmpty!20337 setRes!20337))

(declare-fun mapIsEmpty!14528 () Bool)

(declare-fun mapRes!14528 () Bool)

(assert (=> mapIsEmpty!14528 mapRes!14528))

(declare-fun mapNonEmpty!14528 () Bool)

(declare-fun tp!702258 () Bool)

(assert (=> mapNonEmpty!14528 (= mapRes!14528 (and tp!702258 e!1428611))))

(declare-fun mapRest!14528 () (Array (_ BitVec 32) List!26379))

(declare-fun mapKey!14528 () (_ BitVec 32))

(assert (=> mapNonEmpty!14528 (= mapRest!14525 (store mapRest!14528 mapKey!14528 mapValue!14528))))

(declare-fun b!2235278 () Bool)

(declare-fun tp!702252 () Bool)

(assert (=> b!2235278 (= e!1428607 tp!702252)))

(declare-fun setElem!20336 () Context!3998)

(declare-fun tp!702250 () Bool)

(declare-fun e!1428612 () Bool)

(declare-fun setNonEmpty!20337 () Bool)

(assert (=> setNonEmpty!20337 (= setRes!20337 (and tp!702250 (inv!35701 setElem!20336) e!1428612))))

(declare-fun setRest!20336 () (InoxSet Context!3998))

(assert (=> setNonEmpty!20337 (= (_2!15292 (h!31686 mapValue!14528)) ((_ map or) (store ((as const (Array Context!3998 Bool)) false) setElem!20336 true) setRest!20336))))

(declare-fun condMapEmpty!14528 () Bool)

(assert (=> mapNonEmpty!14525 (= condMapEmpty!14528 (= mapRest!14525 ((as const (Array (_ BitVec 32) List!26379)) mapDefault!14528)))))

(assert (=> mapNonEmpty!14525 (= tp!702180 (and e!1428610 mapRes!14528))))

(declare-fun b!2235277 () Bool)

(declare-fun tp!702255 () Bool)

(assert (=> b!2235277 (= e!1428612 tp!702255)))

(declare-fun b!2235279 () Bool)

(declare-fun tp!702254 () Bool)

(assert (=> b!2235279 (= e!1428608 tp!702254)))

(declare-fun b!2235280 () Bool)

(declare-fun tp!702257 () Bool)

(assert (=> b!2235280 (= e!1428609 tp!702257)))

(assert (= (and mapNonEmpty!14525 condMapEmpty!14528) mapIsEmpty!14528))

(assert (= (and mapNonEmpty!14525 (not condMapEmpty!14528)) mapNonEmpty!14528))

(assert (= b!2235276 b!2235279))

(assert (= (and b!2235276 condSetEmpty!20336) setIsEmpty!20337))

(assert (= (and b!2235276 (not condSetEmpty!20336)) setNonEmpty!20337))

(assert (= setNonEmpty!20337 b!2235277))

(assert (= (and mapNonEmpty!14528 ((_ is Cons!26285) mapValue!14528)) b!2235276))

(assert (= b!2235275 b!2235278))

(assert (= (and b!2235275 condSetEmpty!20337) setIsEmpty!20336))

(assert (= (and b!2235275 (not condSetEmpty!20337)) setNonEmpty!20336))

(assert (= setNonEmpty!20336 b!2235280))

(assert (= (and mapNonEmpty!14525 ((_ is Cons!26285) mapDefault!14528)) b!2235275))

(declare-fun m!2669638 () Bool)

(assert (=> setNonEmpty!20337 m!2669638))

(declare-fun m!2669640 () Bool)

(assert (=> b!2235276 m!2669640))

(declare-fun m!2669642 () Bool)

(assert (=> b!2235275 m!2669642))

(declare-fun m!2669644 () Bool)

(assert (=> mapNonEmpty!14528 m!2669644))

(declare-fun m!2669646 () Bool)

(assert (=> setNonEmpty!20336 m!2669646))

(declare-fun setRes!20338 () Bool)

(declare-fun e!1428613 () Bool)

(declare-fun setNonEmpty!20338 () Bool)

(declare-fun tp!702263 () Bool)

(declare-fun setElem!20338 () Context!3998)

(assert (=> setNonEmpty!20338 (= setRes!20338 (and tp!702263 (inv!35701 setElem!20338) e!1428613))))

(declare-fun setRest!20338 () (InoxSet Context!3998))

(assert (=> setNonEmpty!20338 (= (_2!15292 (h!31686 mapValue!14525)) ((_ map or) (store ((as const (Array Context!3998 Bool)) false) setElem!20338 true) setRest!20338))))

(declare-fun e!1428615 () Bool)

(assert (=> mapNonEmpty!14525 (= tp!702185 e!1428615)))

(declare-fun b!2235281 () Bool)

(declare-fun e!1428614 () Bool)

(declare-fun tp!702262 () Bool)

(assert (=> b!2235281 (= e!1428614 tp!702262)))

(declare-fun setIsEmpty!20338 () Bool)

(assert (=> setIsEmpty!20338 setRes!20338))

(declare-fun tp!702261 () Bool)

(declare-fun b!2235282 () Bool)

(declare-fun tp!702260 () Bool)

(assert (=> b!2235282 (= e!1428615 (and tp!702261 (inv!35701 (_2!15291 (_1!15292 (h!31686 mapValue!14525)))) e!1428614 tp_is_empty!10127 setRes!20338 tp!702260))))

(declare-fun condSetEmpty!20338 () Bool)

(assert (=> b!2235282 (= condSetEmpty!20338 (= (_2!15292 (h!31686 mapValue!14525)) ((as const (Array Context!3998 Bool)) false)))))

(declare-fun b!2235283 () Bool)

(declare-fun tp!702259 () Bool)

(assert (=> b!2235283 (= e!1428613 tp!702259)))

(assert (= b!2235282 b!2235281))

(assert (= (and b!2235282 condSetEmpty!20338) setIsEmpty!20338))

(assert (= (and b!2235282 (not condSetEmpty!20338)) setNonEmpty!20338))

(assert (= setNonEmpty!20338 b!2235283))

(assert (= (and mapNonEmpty!14525 ((_ is Cons!26285) mapValue!14525)) b!2235282))

(declare-fun m!2669648 () Bool)

(assert (=> setNonEmpty!20338 m!2669648))

(declare-fun m!2669650 () Bool)

(assert (=> b!2235282 m!2669650))

(declare-fun b!2235295 () Bool)

(declare-fun e!1428618 () Bool)

(declare-fun tp!702274 () Bool)

(declare-fun tp!702278 () Bool)

(assert (=> b!2235295 (= e!1428618 (and tp!702274 tp!702278))))

(assert (=> b!2235142 (= tp!702184 e!1428618)))

(declare-fun b!2235294 () Bool)

(assert (=> b!2235294 (= e!1428618 tp_is_empty!10127)))

(declare-fun b!2235297 () Bool)

(declare-fun tp!702277 () Bool)

(declare-fun tp!702276 () Bool)

(assert (=> b!2235297 (= e!1428618 (and tp!702277 tp!702276))))

(declare-fun b!2235296 () Bool)

(declare-fun tp!702275 () Bool)

(assert (=> b!2235296 (= e!1428618 tp!702275)))

(assert (= (and b!2235142 ((_ is ElementMatch!6451) (reg!6780 r!4773))) b!2235294))

(assert (= (and b!2235142 ((_ is Concat!10789) (reg!6780 r!4773))) b!2235295))

(assert (= (and b!2235142 ((_ is Star!6451) (reg!6780 r!4773))) b!2235296))

(assert (= (and b!2235142 ((_ is Union!6451) (reg!6780 r!4773))) b!2235297))

(declare-fun b!2235298 () Bool)

(declare-fun e!1428619 () Bool)

(declare-fun tp!702279 () Bool)

(declare-fun tp!702280 () Bool)

(assert (=> b!2235298 (= e!1428619 (and tp!702279 tp!702280))))

(assert (=> b!2235140 (= tp!702177 e!1428619)))

(assert (= (and b!2235140 ((_ is Cons!26284) (exprs!2499 ctx!56))) b!2235298))

(declare-fun b!2235300 () Bool)

(declare-fun e!1428620 () Bool)

(declare-fun tp!702281 () Bool)

(declare-fun tp!702285 () Bool)

(assert (=> b!2235300 (= e!1428620 (and tp!702281 tp!702285))))

(assert (=> b!2235134 (= tp!702188 e!1428620)))

(declare-fun b!2235299 () Bool)

(assert (=> b!2235299 (= e!1428620 tp_is_empty!10127)))

(declare-fun b!2235302 () Bool)

(declare-fun tp!702284 () Bool)

(declare-fun tp!702283 () Bool)

(assert (=> b!2235302 (= e!1428620 (and tp!702284 tp!702283))))

(declare-fun b!2235301 () Bool)

(declare-fun tp!702282 () Bool)

(assert (=> b!2235301 (= e!1428620 tp!702282)))

(assert (= (and b!2235134 ((_ is ElementMatch!6451) (regOne!13415 r!4773))) b!2235299))

(assert (= (and b!2235134 ((_ is Concat!10789) (regOne!13415 r!4773))) b!2235300))

(assert (= (and b!2235134 ((_ is Star!6451) (regOne!13415 r!4773))) b!2235301))

(assert (= (and b!2235134 ((_ is Union!6451) (regOne!13415 r!4773))) b!2235302))

(declare-fun b!2235304 () Bool)

(declare-fun e!1428621 () Bool)

(declare-fun tp!702286 () Bool)

(declare-fun tp!702290 () Bool)

(assert (=> b!2235304 (= e!1428621 (and tp!702286 tp!702290))))

(assert (=> b!2235134 (= tp!702187 e!1428621)))

(declare-fun b!2235303 () Bool)

(assert (=> b!2235303 (= e!1428621 tp_is_empty!10127)))

(declare-fun b!2235306 () Bool)

(declare-fun tp!702289 () Bool)

(declare-fun tp!702288 () Bool)

(assert (=> b!2235306 (= e!1428621 (and tp!702289 tp!702288))))

(declare-fun b!2235305 () Bool)

(declare-fun tp!702287 () Bool)

(assert (=> b!2235305 (= e!1428621 tp!702287)))

(assert (= (and b!2235134 ((_ is ElementMatch!6451) (regTwo!13415 r!4773))) b!2235303))

(assert (= (and b!2235134 ((_ is Concat!10789) (regTwo!13415 r!4773))) b!2235304))

(assert (= (and b!2235134 ((_ is Star!6451) (regTwo!13415 r!4773))) b!2235305))

(assert (= (and b!2235134 ((_ is Union!6451) (regTwo!13415 r!4773))) b!2235306))

(declare-fun b!2235308 () Bool)

(declare-fun e!1428622 () Bool)

(declare-fun tp!702291 () Bool)

(declare-fun tp!702295 () Bool)

(assert (=> b!2235308 (= e!1428622 (and tp!702291 tp!702295))))

(assert (=> b!2235148 (= tp!702182 e!1428622)))

(declare-fun b!2235307 () Bool)

(assert (=> b!2235307 (= e!1428622 tp_is_empty!10127)))

(declare-fun b!2235310 () Bool)

(declare-fun tp!702294 () Bool)

(declare-fun tp!702293 () Bool)

(assert (=> b!2235310 (= e!1428622 (and tp!702294 tp!702293))))

(declare-fun b!2235309 () Bool)

(declare-fun tp!702292 () Bool)

(assert (=> b!2235309 (= e!1428622 tp!702292)))

(assert (= (and b!2235148 ((_ is ElementMatch!6451) (regOne!13414 r!4773))) b!2235307))

(assert (= (and b!2235148 ((_ is Concat!10789) (regOne!13414 r!4773))) b!2235308))

(assert (= (and b!2235148 ((_ is Star!6451) (regOne!13414 r!4773))) b!2235309))

(assert (= (and b!2235148 ((_ is Union!6451) (regOne!13414 r!4773))) b!2235310))

(declare-fun b!2235312 () Bool)

(declare-fun e!1428623 () Bool)

(declare-fun tp!702296 () Bool)

(declare-fun tp!702300 () Bool)

(assert (=> b!2235312 (= e!1428623 (and tp!702296 tp!702300))))

(assert (=> b!2235148 (= tp!702181 e!1428623)))

(declare-fun b!2235311 () Bool)

(assert (=> b!2235311 (= e!1428623 tp_is_empty!10127)))

(declare-fun b!2235314 () Bool)

(declare-fun tp!702299 () Bool)

(declare-fun tp!702298 () Bool)

(assert (=> b!2235314 (= e!1428623 (and tp!702299 tp!702298))))

(declare-fun b!2235313 () Bool)

(declare-fun tp!702297 () Bool)

(assert (=> b!2235313 (= e!1428623 tp!702297)))

(assert (= (and b!2235148 ((_ is ElementMatch!6451) (regTwo!13414 r!4773))) b!2235311))

(assert (= (and b!2235148 ((_ is Concat!10789) (regTwo!13414 r!4773))) b!2235312))

(assert (= (and b!2235148 ((_ is Star!6451) (regTwo!13414 r!4773))) b!2235313))

(assert (= (and b!2235148 ((_ is Union!6451) (regTwo!13414 r!4773))) b!2235314))

(declare-fun b_lambda!71683 () Bool)

(assert (= b_lambda!71681 (or b!2235139 b_lambda!71683)))

(declare-fun bs!454186 () Bool)

(declare-fun d!665397 () Bool)

(assert (= bs!454186 (and d!665397 b!2235139)))

(declare-fun res!956535 () Bool)

(declare-fun e!1428624 () Bool)

(assert (=> bs!454186 (=> (not res!956535) (not e!1428624))))

(assert (=> bs!454186 (= res!956535 (validRegex!2416 (_1!15291 (_1!15292 (h!31686 (toList!1344 (map!5391 (cache!3380 thiss!28822))))))))))

(assert (=> bs!454186 (= (dynLambda!11528 lambda!84439 (h!31686 (toList!1344 (map!5391 (cache!3380 thiss!28822))))) e!1428624)))

(declare-fun b!2235315 () Bool)

(assert (=> b!2235315 (= e!1428624 (= (_2!15292 (h!31686 (toList!1344 (map!5391 (cache!3380 thiss!28822))))) (derivationStepZipperDown!62 (_1!15291 (_1!15292 (h!31686 (toList!1344 (map!5391 (cache!3380 thiss!28822)))))) (_2!15291 (_1!15292 (h!31686 (toList!1344 (map!5391 (cache!3380 thiss!28822)))))) (_3!2457 (_1!15292 (h!31686 (toList!1344 (map!5391 (cache!3380 thiss!28822)))))))))))

(assert (= (and bs!454186 res!956535) b!2235315))

(declare-fun m!2669652 () Bool)

(assert (=> bs!454186 m!2669652))

(declare-fun m!2669654 () Bool)

(assert (=> b!2235315 m!2669654))

(assert (=> b!2235188 d!665397))

(check-sat (not b!2235313) (not b!2235304) (not mapNonEmpty!14528) (not b!2235297) (not b!2235312) (not b!2235283) (not b!2235155) (not setNonEmpty!20336) (not setNonEmpty!20337) (not bm!134631) (not b!2235302) tp_is_empty!10127 (not b!2235305) (not bs!454186) (not b!2235309) (not b!2235255) (not setNonEmpty!20331) (not b!2235295) (not b!2235229) (not b!2235233) (not b!2235245) (not b!2235296) (not b!2235243) (not b!2235278) (not b!2235260) (not setNonEmpty!20328) (not b_next!65521) (not b!2235306) (not b!2235275) (not b!2235247) b_and!174807 (not b_next!65523) (not b!2235282) (not d!665387) (not b!2235298) (not b!2235276) (not b!2235300) (not bm!134630) (not d!665379) (not d!665391) (not b!2235248) (not b!2235281) (not b!2235230) (not b!2235301) (not bm!134649) (not b!2235277) (not b!2235179) (not d!665381) (not b!2235249) (not b!2235250) (not setNonEmpty!20326) (not b!2235246) (not b!2235156) (not b!2235244) (not b!2235189) (not b!2235310) (not b!2235314) (not setNonEmpty!20327) (not b!2235221) b_and!174805 (not setNonEmpty!20338) (not bm!134647) (not b!2235315) (not b_lambda!71683) (not b!2235279) (not b!2235308) (not b!2235242) (not b!2235280) (not d!665393) (not bm!134645))
(check-sat b_and!174805 b_and!174807 (not b_next!65523) (not b_next!65521))
