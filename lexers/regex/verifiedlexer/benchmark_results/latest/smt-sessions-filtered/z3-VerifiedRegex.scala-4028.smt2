; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217812 () Bool)

(assert start!217812)

(declare-fun b!2234622 () Bool)

(declare-fun b_free!64801 () Bool)

(declare-fun b_next!65505 () Bool)

(assert (=> b!2234622 (= b_free!64801 (not b_next!65505))))

(declare-fun tp!701772 () Bool)

(declare-fun b_and!174789 () Bool)

(assert (=> b!2234622 (= tp!701772 b_and!174789)))

(declare-fun b!2234612 () Bool)

(declare-fun b_free!64803 () Bool)

(declare-fun b_next!65507 () Bool)

(assert (=> b!2234612 (= b_free!64803 (not b_next!65507))))

(declare-fun tp!701783 () Bool)

(declare-fun b_and!174791 () Bool)

(assert (=> b!2234612 (= tp!701783 b_and!174791)))

(declare-fun b!2234611 () Bool)

(declare-fun res!956370 () Bool)

(declare-fun e!1428169 () Bool)

(assert (=> b!2234611 (=> (not res!956370) (not e!1428169))))

(declare-datatypes ((C!13040 0))(
  ( (C!13041 (val!7568 Int)) )
))
(declare-fun a!1010 () C!13040)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6447 0))(
  ( (ElementMatch!6447 (c!356238 C!13040)) (Concat!10785 (regOne!13406 Regex!6447) (regTwo!13406 Regex!6447)) (EmptyExpr!6447) (Star!6447 (reg!6776 Regex!6447)) (EmptyLang!6447) (Union!6447 (regOne!13407 Regex!6447) (regTwo!13407 Regex!6447)) )
))
(declare-datatypes ((List!26369 0))(
  ( (Nil!26275) (Cons!26275 (h!31676 Regex!6447) (t!199789 List!26369)) )
))
(declare-datatypes ((Context!3990 0))(
  ( (Context!3991 (exprs!2495 List!26369)) )
))
(declare-fun res!14291 () (InoxSet Context!3990))

(declare-fun ctx!56 () Context!3990)

(declare-fun r!4773 () Regex!6447)

(declare-fun derivationStepZipperDown!59 (Regex!6447 Context!3990 C!13040) (InoxSet Context!3990))

(assert (=> b!2234611 (= res!956370 (= res!14291 (derivationStepZipperDown!59 r!4773 ctx!56 a!1010)))))

(declare-fun tp!701777 () Bool)

(declare-fun e!1428164 () Bool)

(declare-fun e!1428163 () Bool)

(declare-datatypes ((tuple3!3966 0))(
  ( (tuple3!3967 (_1!15282 Regex!6447) (_2!15282 Context!3990) (_3!2453 C!13040)) )
))
(declare-datatypes ((tuple2!25658 0))(
  ( (tuple2!25659 (_1!15283 tuple3!3966) (_2!15283 (InoxSet Context!3990))) )
))
(declare-datatypes ((List!26370 0))(
  ( (Nil!26276) (Cons!26276 (h!31677 tuple2!25658) (t!199790 List!26370)) )
))
(declare-datatypes ((array!10708 0))(
  ( (array!10709 (arr!4757 (Array (_ BitVec 32) (_ BitVec 64))) (size!20538 (_ BitVec 32))) )
))
(declare-datatypes ((array!10710 0))(
  ( (array!10711 (arr!4758 (Array (_ BitVec 32) List!26370)) (size!20539 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6170 0))(
  ( (LongMapFixedSize!6171 (defaultEntry!3450 Int) (mask!7662 (_ BitVec 32)) (extraKeys!3333 (_ BitVec 32)) (zeroValue!3343 List!26370) (minValue!3343 List!26370) (_size!6217 (_ BitVec 32)) (_keys!3382 array!10708) (_values!3365 array!10710) (_vacant!3146 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12157 0))(
  ( (Cell!12158 (v!29879 LongMapFixedSize!6170)) )
))
(declare-datatypes ((MutLongMap!3085 0))(
  ( (LongMap!3085 (underlying!6371 Cell!12157)) (MutLongMapExt!3084 (__x!17481 Int)) )
))
(declare-datatypes ((Cell!12159 0))(
  ( (Cell!12160 (v!29880 MutLongMap!3085)) )
))
(declare-datatypes ((Hashable!2995 0))(
  ( (HashableExt!2994 (__x!17482 Int)) )
))
(declare-datatypes ((MutableMap!2995 0))(
  ( (MutableMapExt!2994 (__x!17483 Int)) (HashMap!2995 (underlying!6372 Cell!12159) (hashF!4918 Hashable!2995) (_size!6218 (_ BitVec 32)) (defaultValue!3157 Int)) )
))
(declare-datatypes ((CacheDown!2036 0))(
  ( (CacheDown!2037 (cache!3376 MutableMap!2995)) )
))
(declare-fun thiss!28822 () CacheDown!2036)

(declare-fun tp!701782 () Bool)

(declare-fun array_inv!3413 (array!10708) Bool)

(declare-fun array_inv!3414 (array!10710) Bool)

(assert (=> b!2234612 (= e!1428163 (and tp!701783 tp!701782 tp!701777 (array_inv!3413 (_keys!3382 (v!29879 (underlying!6371 (v!29880 (underlying!6372 (cache!3376 thiss!28822))))))) (array_inv!3414 (_values!3365 (v!29879 (underlying!6371 (v!29880 (underlying!6372 (cache!3376 thiss!28822))))))) e!1428164))))

(declare-fun b!2234613 () Bool)

(declare-fun e!1428170 () Bool)

(declare-fun tp!701771 () Bool)

(declare-fun tp!701780 () Bool)

(assert (=> b!2234613 (= e!1428170 (and tp!701771 tp!701780))))

(declare-fun setIsEmpty!20281 () Bool)

(declare-fun setRes!20281 () Bool)

(assert (=> setIsEmpty!20281 setRes!20281))

(declare-fun mapNonEmpty!14507 () Bool)

(declare-fun mapRes!14507 () Bool)

(declare-fun tp!701781 () Bool)

(declare-fun tp!701774 () Bool)

(assert (=> mapNonEmpty!14507 (= mapRes!14507 (and tp!701781 tp!701774))))

(declare-fun mapRest!14507 () (Array (_ BitVec 32) List!26370))

(declare-fun mapKey!14507 () (_ BitVec 32))

(declare-fun mapValue!14507 () List!26370)

(assert (=> mapNonEmpty!14507 (= (arr!4758 (_values!3365 (v!29879 (underlying!6371 (v!29880 (underlying!6372 (cache!3376 thiss!28822))))))) (store mapRest!14507 mapKey!14507 mapValue!14507))))

(declare-fun b!2234614 () Bool)

(declare-fun e!1428168 () Bool)

(assert (=> b!2234614 (= e!1428168 e!1428163)))

(declare-fun b!2234615 () Bool)

(declare-fun e!1428171 () Bool)

(declare-fun tp!701776 () Bool)

(assert (=> b!2234615 (= e!1428171 tp!701776)))

(declare-fun b!2234616 () Bool)

(get-info :version)

(assert (=> b!2234616 (= e!1428169 (not ((_ is HashMap!2995) (cache!3376 thiss!28822))))))

(declare-fun b!2234617 () Bool)

(declare-fun e!1428165 () Bool)

(declare-fun e!1428162 () Bool)

(declare-fun lt!831369 () MutLongMap!3085)

(assert (=> b!2234617 (= e!1428165 (and e!1428162 ((_ is LongMap!3085) lt!831369)))))

(assert (=> b!2234617 (= lt!831369 (v!29880 (underlying!6372 (cache!3376 thiss!28822))))))

(declare-fun b!2234618 () Bool)

(declare-fun tp_is_empty!10119 () Bool)

(assert (=> b!2234618 (= e!1428170 tp_is_empty!10119)))

(declare-fun b!2234619 () Bool)

(declare-fun tp!701773 () Bool)

(assert (=> b!2234619 (= e!1428170 tp!701773)))

(declare-fun b!2234620 () Bool)

(declare-fun tp!701775 () Bool)

(declare-fun tp!701778 () Bool)

(assert (=> b!2234620 (= e!1428170 (and tp!701775 tp!701778))))

(declare-fun res!956369 () Bool)

(assert (=> start!217812 (=> (not res!956369) (not e!1428169))))

(declare-fun validCacheMapDown!300 (MutableMap!2995) Bool)

(assert (=> start!217812 (= res!956369 (validCacheMapDown!300 (cache!3376 thiss!28822)))))

(assert (=> start!217812 e!1428169))

(assert (=> start!217812 tp_is_empty!10119))

(declare-fun condSetEmpty!20281 () Bool)

(assert (=> start!217812 (= condSetEmpty!20281 (= res!14291 ((as const (Array Context!3990 Bool)) false)))))

(assert (=> start!217812 setRes!20281))

(declare-fun e!1428161 () Bool)

(declare-fun inv!35688 (Context!3990) Bool)

(assert (=> start!217812 (and (inv!35688 ctx!56) e!1428161)))

(assert (=> start!217812 e!1428170))

(declare-fun e!1428166 () Bool)

(declare-fun inv!35689 (CacheDown!2036) Bool)

(assert (=> start!217812 (and (inv!35689 thiss!28822) e!1428166)))

(declare-fun b!2234621 () Bool)

(assert (=> b!2234621 (= e!1428162 e!1428168)))

(declare-fun e!1428167 () Bool)

(assert (=> b!2234622 (= e!1428167 (and e!1428165 tp!701772))))

(declare-fun setNonEmpty!20281 () Bool)

(declare-fun tp!701784 () Bool)

(declare-fun setElem!20281 () Context!3990)

(assert (=> setNonEmpty!20281 (= setRes!20281 (and tp!701784 (inv!35688 setElem!20281) e!1428171))))

(declare-fun setRest!20281 () (InoxSet Context!3990))

(assert (=> setNonEmpty!20281 (= res!14291 ((_ map or) (store ((as const (Array Context!3990 Bool)) false) setElem!20281 true) setRest!20281))))

(declare-fun b!2234623 () Bool)

(assert (=> b!2234623 (= e!1428166 e!1428167)))

(declare-fun b!2234624 () Bool)

(declare-fun tp!701779 () Bool)

(assert (=> b!2234624 (= e!1428164 (and tp!701779 mapRes!14507))))

(declare-fun condMapEmpty!14507 () Bool)

(declare-fun mapDefault!14507 () List!26370)

(assert (=> b!2234624 (= condMapEmpty!14507 (= (arr!4758 (_values!3365 (v!29879 (underlying!6371 (v!29880 (underlying!6372 (cache!3376 thiss!28822))))))) ((as const (Array (_ BitVec 32) List!26370)) mapDefault!14507)))))

(declare-fun b!2234625 () Bool)

(declare-fun res!956371 () Bool)

(assert (=> b!2234625 (=> (not res!956371) (not e!1428169))))

(declare-fun validRegex!2413 (Regex!6447) Bool)

(assert (=> b!2234625 (= res!956371 (validRegex!2413 r!4773))))

(declare-fun mapIsEmpty!14507 () Bool)

(assert (=> mapIsEmpty!14507 mapRes!14507))

(declare-fun b!2234626 () Bool)

(declare-fun tp!701770 () Bool)

(assert (=> b!2234626 (= e!1428161 tp!701770)))

(assert (= (and start!217812 res!956369) b!2234625))

(assert (= (and b!2234625 res!956371) b!2234611))

(assert (= (and b!2234611 res!956370) b!2234616))

(assert (= (and start!217812 condSetEmpty!20281) setIsEmpty!20281))

(assert (= (and start!217812 (not condSetEmpty!20281)) setNonEmpty!20281))

(assert (= setNonEmpty!20281 b!2234615))

(assert (= start!217812 b!2234626))

(assert (= (and start!217812 ((_ is ElementMatch!6447) r!4773)) b!2234618))

(assert (= (and start!217812 ((_ is Concat!10785) r!4773)) b!2234613))

(assert (= (and start!217812 ((_ is Star!6447) r!4773)) b!2234619))

(assert (= (and start!217812 ((_ is Union!6447) r!4773)) b!2234620))

(assert (= (and b!2234624 condMapEmpty!14507) mapIsEmpty!14507))

(assert (= (and b!2234624 (not condMapEmpty!14507)) mapNonEmpty!14507))

(assert (= b!2234612 b!2234624))

(assert (= b!2234614 b!2234612))

(assert (= b!2234621 b!2234614))

(assert (= (and b!2234617 ((_ is LongMap!3085) (v!29880 (underlying!6372 (cache!3376 thiss!28822))))) b!2234621))

(assert (= b!2234622 b!2234617))

(assert (= (and b!2234623 ((_ is HashMap!2995) (cache!3376 thiss!28822))) b!2234622))

(assert (= start!217812 b!2234623))

(declare-fun m!2669357 () Bool)

(assert (=> b!2234612 m!2669357))

(declare-fun m!2669359 () Bool)

(assert (=> b!2234612 m!2669359))

(declare-fun m!2669361 () Bool)

(assert (=> mapNonEmpty!14507 m!2669361))

(declare-fun m!2669363 () Bool)

(assert (=> start!217812 m!2669363))

(declare-fun m!2669365 () Bool)

(assert (=> start!217812 m!2669365))

(declare-fun m!2669367 () Bool)

(assert (=> start!217812 m!2669367))

(declare-fun m!2669369 () Bool)

(assert (=> b!2234611 m!2669369))

(declare-fun m!2669371 () Bool)

(assert (=> setNonEmpty!20281 m!2669371))

(declare-fun m!2669373 () Bool)

(assert (=> b!2234625 m!2669373))

(check-sat (not b!2234619) (not b!2234612) (not b!2234613) (not b!2234626) (not b!2234611) (not b_next!65507) (not b_next!65505) b_and!174789 tp_is_empty!10119 (not b!2234620) b_and!174791 (not start!217812) (not mapNonEmpty!14507) (not setNonEmpty!20281) (not b!2234624) (not b!2234615) (not b!2234625))
(check-sat b_and!174791 b_and!174789 (not b_next!65505) (not b_next!65507))
(get-model)

(declare-fun d!665339 () Bool)

(declare-fun res!956378 () Bool)

(declare-fun e!1428177 () Bool)

(assert (=> d!665339 (=> (not res!956378) (not e!1428177))))

(declare-fun valid!2331 (MutableMap!2995) Bool)

(assert (=> d!665339 (= res!956378 (valid!2331 (cache!3376 thiss!28822)))))

(assert (=> d!665339 (= (validCacheMapDown!300 (cache!3376 thiss!28822)) e!1428177)))

(declare-fun b!2234633 () Bool)

(declare-fun res!956379 () Bool)

(assert (=> b!2234633 (=> (not res!956379) (not e!1428177))))

(declare-fun invariantList!367 (List!26370) Bool)

(declare-datatypes ((ListMap!817 0))(
  ( (ListMap!818 (toList!1340 List!26370)) )
))
(declare-fun map!5385 (MutableMap!2995) ListMap!817)

(assert (=> b!2234633 (= res!956379 (invariantList!367 (toList!1340 (map!5385 (cache!3376 thiss!28822)))))))

(declare-fun b!2234634 () Bool)

(declare-fun lambda!84419 () Int)

(declare-fun forall!5383 (List!26370 Int) Bool)

(assert (=> b!2234634 (= e!1428177 (forall!5383 (toList!1340 (map!5385 (cache!3376 thiss!28822))) lambda!84419))))

(assert (= (and d!665339 res!956378) b!2234633))

(assert (= (and b!2234633 res!956379) b!2234634))

(declare-fun m!2669376 () Bool)

(assert (=> d!665339 m!2669376))

(declare-fun m!2669378 () Bool)

(assert (=> b!2234633 m!2669378))

(declare-fun m!2669380 () Bool)

(assert (=> b!2234633 m!2669380))

(assert (=> b!2234634 m!2669378))

(declare-fun m!2669382 () Bool)

(assert (=> b!2234634 m!2669382))

(assert (=> start!217812 d!665339))

(declare-fun d!665341 () Bool)

(declare-fun lambda!84422 () Int)

(declare-fun forall!5384 (List!26369 Int) Bool)

(assert (=> d!665341 (= (inv!35688 ctx!56) (forall!5384 (exprs!2495 ctx!56) lambda!84422))))

(declare-fun bs!454171 () Bool)

(assert (= bs!454171 d!665341))

(declare-fun m!2669384 () Bool)

(assert (=> bs!454171 m!2669384))

(assert (=> start!217812 d!665341))

(declare-fun d!665343 () Bool)

(declare-fun res!956382 () Bool)

(declare-fun e!1428180 () Bool)

(assert (=> d!665343 (=> (not res!956382) (not e!1428180))))

(assert (=> d!665343 (= res!956382 ((_ is HashMap!2995) (cache!3376 thiss!28822)))))

(assert (=> d!665343 (= (inv!35689 thiss!28822) e!1428180)))

(declare-fun b!2234637 () Bool)

(assert (=> b!2234637 (= e!1428180 (validCacheMapDown!300 (cache!3376 thiss!28822)))))

(assert (= (and d!665343 res!956382) b!2234637))

(assert (=> b!2234637 m!2669363))

(assert (=> start!217812 d!665343))

(declare-fun bs!454172 () Bool)

(declare-fun d!665345 () Bool)

(assert (= bs!454172 (and d!665345 d!665341)))

(declare-fun lambda!84423 () Int)

(assert (=> bs!454172 (= lambda!84423 lambda!84422)))

(assert (=> d!665345 (= (inv!35688 setElem!20281) (forall!5384 (exprs!2495 setElem!20281) lambda!84423))))

(declare-fun bs!454173 () Bool)

(assert (= bs!454173 d!665345))

(declare-fun m!2669386 () Bool)

(assert (=> bs!454173 m!2669386))

(assert (=> setNonEmpty!20281 d!665345))

(declare-fun d!665347 () Bool)

(assert (=> d!665347 (= (array_inv!3413 (_keys!3382 (v!29879 (underlying!6371 (v!29880 (underlying!6372 (cache!3376 thiss!28822))))))) (bvsge (size!20538 (_keys!3382 (v!29879 (underlying!6371 (v!29880 (underlying!6372 (cache!3376 thiss!28822))))))) #b00000000000000000000000000000000))))

(assert (=> b!2234612 d!665347))

(declare-fun d!665349 () Bool)

(assert (=> d!665349 (= (array_inv!3414 (_values!3365 (v!29879 (underlying!6371 (v!29880 (underlying!6372 (cache!3376 thiss!28822))))))) (bvsge (size!20539 (_values!3365 (v!29879 (underlying!6371 (v!29880 (underlying!6372 (cache!3376 thiss!28822))))))) #b00000000000000000000000000000000))))

(assert (=> b!2234612 d!665349))

(declare-fun c!356243 () Bool)

(declare-fun call!134582 () Bool)

(declare-fun c!356244 () Bool)

(declare-fun bm!134576 () Bool)

(assert (=> bm!134576 (= call!134582 (validRegex!2413 (ite c!356243 (reg!6776 r!4773) (ite c!356244 (regTwo!13407 r!4773) (regTwo!13406 r!4773)))))))

(declare-fun b!2234656 () Bool)

(declare-fun e!1428201 () Bool)

(assert (=> b!2234656 (= e!1428201 call!134582)))

(declare-fun b!2234657 () Bool)

(declare-fun e!1428200 () Bool)

(declare-fun e!1428197 () Bool)

(assert (=> b!2234657 (= e!1428200 e!1428197)))

(declare-fun res!956396 () Bool)

(assert (=> b!2234657 (=> (not res!956396) (not e!1428197))))

(declare-fun call!134581 () Bool)

(assert (=> b!2234657 (= res!956396 call!134581)))

(declare-fun bm!134577 () Bool)

(declare-fun call!134583 () Bool)

(assert (=> bm!134577 (= call!134583 call!134582)))

(declare-fun b!2234658 () Bool)

(declare-fun e!1428198 () Bool)

(assert (=> b!2234658 (= e!1428198 e!1428201)))

(declare-fun res!956397 () Bool)

(declare-fun nullable!1778 (Regex!6447) Bool)

(assert (=> b!2234658 (= res!956397 (not (nullable!1778 (reg!6776 r!4773))))))

(assert (=> b!2234658 (=> (not res!956397) (not e!1428201))))

(declare-fun b!2234659 () Bool)

(declare-fun e!1428196 () Bool)

(assert (=> b!2234659 (= e!1428196 e!1428198)))

(assert (=> b!2234659 (= c!356243 ((_ is Star!6447) r!4773))))

(declare-fun b!2234660 () Bool)

(assert (=> b!2234660 (= e!1428197 call!134583)))

(declare-fun d!665351 () Bool)

(declare-fun res!956393 () Bool)

(assert (=> d!665351 (=> res!956393 e!1428196)))

(assert (=> d!665351 (= res!956393 ((_ is ElementMatch!6447) r!4773))))

(assert (=> d!665351 (= (validRegex!2413 r!4773) e!1428196)))

(declare-fun bm!134578 () Bool)

(assert (=> bm!134578 (= call!134581 (validRegex!2413 (ite c!356244 (regOne!13407 r!4773) (regOne!13406 r!4773))))))

(declare-fun b!2234661 () Bool)

(declare-fun e!1428199 () Bool)

(assert (=> b!2234661 (= e!1428199 call!134583)))

(declare-fun b!2234662 () Bool)

(declare-fun res!956394 () Bool)

(assert (=> b!2234662 (=> (not res!956394) (not e!1428199))))

(assert (=> b!2234662 (= res!956394 call!134581)))

(declare-fun e!1428195 () Bool)

(assert (=> b!2234662 (= e!1428195 e!1428199)))

(declare-fun b!2234663 () Bool)

(assert (=> b!2234663 (= e!1428198 e!1428195)))

(assert (=> b!2234663 (= c!356244 ((_ is Union!6447) r!4773))))

(declare-fun b!2234664 () Bool)

(declare-fun res!956395 () Bool)

(assert (=> b!2234664 (=> res!956395 e!1428200)))

(assert (=> b!2234664 (= res!956395 (not ((_ is Concat!10785) r!4773)))))

(assert (=> b!2234664 (= e!1428195 e!1428200)))

(assert (= (and d!665351 (not res!956393)) b!2234659))

(assert (= (and b!2234659 c!356243) b!2234658))

(assert (= (and b!2234659 (not c!356243)) b!2234663))

(assert (= (and b!2234658 res!956397) b!2234656))

(assert (= (and b!2234663 c!356244) b!2234662))

(assert (= (and b!2234663 (not c!356244)) b!2234664))

(assert (= (and b!2234662 res!956394) b!2234661))

(assert (= (and b!2234664 (not res!956395)) b!2234657))

(assert (= (and b!2234657 res!956396) b!2234660))

(assert (= (or b!2234661 b!2234660) bm!134577))

(assert (= (or b!2234662 b!2234657) bm!134578))

(assert (= (or b!2234656 bm!134577) bm!134576))

(declare-fun m!2669388 () Bool)

(assert (=> bm!134576 m!2669388))

(declare-fun m!2669390 () Bool)

(assert (=> b!2234658 m!2669390))

(declare-fun m!2669392 () Bool)

(assert (=> bm!134578 m!2669392))

(assert (=> b!2234625 d!665351))

(declare-fun bm!134591 () Bool)

(declare-fun call!134600 () (InoxSet Context!3990))

(declare-fun call!134596 () (InoxSet Context!3990))

(assert (=> bm!134591 (= call!134600 call!134596)))

(declare-fun b!2234687 () Bool)

(declare-fun e!1428216 () (InoxSet Context!3990))

(assert (=> b!2234687 (= e!1428216 ((as const (Array Context!3990 Bool)) false))))

(declare-fun c!356257 () Bool)

(declare-fun c!356255 () Bool)

(declare-fun c!356258 () Bool)

(declare-fun call!134601 () List!26369)

(declare-fun call!134598 () (InoxSet Context!3990))

(declare-fun bm!134593 () Bool)

(assert (=> bm!134593 (= call!134598 (derivationStepZipperDown!59 (ite c!356257 (regOne!13407 r!4773) (ite c!356258 (regTwo!13406 r!4773) (ite c!356255 (regOne!13406 r!4773) (reg!6776 r!4773)))) (ite (or c!356257 c!356258) ctx!56 (Context!3991 call!134601)) a!1010))))

(declare-fun bm!134594 () Bool)

(declare-fun call!134597 () List!26369)

(declare-fun $colon$colon!527 (List!26369 Regex!6447) List!26369)

(assert (=> bm!134594 (= call!134597 ($colon$colon!527 (exprs!2495 ctx!56) (ite (or c!356258 c!356255) (regTwo!13406 r!4773) r!4773)))))

(declare-fun b!2234688 () Bool)

(declare-fun e!1428217 () Bool)

(assert (=> b!2234688 (= c!356258 e!1428217)))

(declare-fun res!956400 () Bool)

(assert (=> b!2234688 (=> (not res!956400) (not e!1428217))))

(assert (=> b!2234688 (= res!956400 ((_ is Concat!10785) r!4773))))

(declare-fun e!1428215 () (InoxSet Context!3990))

(declare-fun e!1428214 () (InoxSet Context!3990))

(assert (=> b!2234688 (= e!1428215 e!1428214)))

(declare-fun b!2234689 () Bool)

(declare-fun e!1428218 () (InoxSet Context!3990))

(assert (=> b!2234689 (= e!1428218 call!134600)))

(declare-fun b!2234690 () Bool)

(declare-fun e!1428219 () (InoxSet Context!3990))

(assert (=> b!2234690 (= e!1428219 (store ((as const (Array Context!3990 Bool)) false) ctx!56 true))))

(declare-fun b!2234691 () Bool)

(declare-fun c!356259 () Bool)

(assert (=> b!2234691 (= c!356259 ((_ is Star!6447) r!4773))))

(assert (=> b!2234691 (= e!1428218 e!1428216)))

(declare-fun b!2234692 () Bool)

(assert (=> b!2234692 (= e!1428214 e!1428218)))

(assert (=> b!2234692 (= c!356255 ((_ is Concat!10785) r!4773))))

(declare-fun call!134599 () (InoxSet Context!3990))

(declare-fun bm!134595 () Bool)

(assert (=> bm!134595 (= call!134599 (derivationStepZipperDown!59 (ite c!356257 (regTwo!13407 r!4773) (regOne!13406 r!4773)) (ite c!356257 ctx!56 (Context!3991 call!134597)) a!1010))))

(declare-fun b!2234693 () Bool)

(assert (=> b!2234693 (= e!1428217 (nullable!1778 (regOne!13406 r!4773)))))

(declare-fun d!665353 () Bool)

(declare-fun c!356256 () Bool)

(assert (=> d!665353 (= c!356256 (and ((_ is ElementMatch!6447) r!4773) (= (c!356238 r!4773) a!1010)))))

(assert (=> d!665353 (= (derivationStepZipperDown!59 r!4773 ctx!56 a!1010) e!1428219)))

(declare-fun bm!134592 () Bool)

(assert (=> bm!134592 (= call!134596 call!134598)))

(declare-fun b!2234694 () Bool)

(assert (=> b!2234694 (= e!1428219 e!1428215)))

(assert (=> b!2234694 (= c!356257 ((_ is Union!6447) r!4773))))

(declare-fun b!2234695 () Bool)

(assert (=> b!2234695 (= e!1428215 ((_ map or) call!134598 call!134599))))

(declare-fun bm!134596 () Bool)

(assert (=> bm!134596 (= call!134601 call!134597)))

(declare-fun b!2234696 () Bool)

(assert (=> b!2234696 (= e!1428214 ((_ map or) call!134599 call!134596))))

(declare-fun b!2234697 () Bool)

(assert (=> b!2234697 (= e!1428216 call!134600)))

(assert (= (and d!665353 c!356256) b!2234690))

(assert (= (and d!665353 (not c!356256)) b!2234694))

(assert (= (and b!2234694 c!356257) b!2234695))

(assert (= (and b!2234694 (not c!356257)) b!2234688))

(assert (= (and b!2234688 res!956400) b!2234693))

(assert (= (and b!2234688 c!356258) b!2234696))

(assert (= (and b!2234688 (not c!356258)) b!2234692))

(assert (= (and b!2234692 c!356255) b!2234689))

(assert (= (and b!2234692 (not c!356255)) b!2234691))

(assert (= (and b!2234691 c!356259) b!2234697))

(assert (= (and b!2234691 (not c!356259)) b!2234687))

(assert (= (or b!2234689 b!2234697) bm!134596))

(assert (= (or b!2234689 b!2234697) bm!134591))

(assert (= (or b!2234696 bm!134591) bm!134592))

(assert (= (or b!2234696 bm!134596) bm!134594))

(assert (= (or b!2234695 b!2234696) bm!134595))

(assert (= (or b!2234695 bm!134592) bm!134593))

(declare-fun m!2669394 () Bool)

(assert (=> b!2234693 m!2669394))

(declare-fun m!2669396 () Bool)

(assert (=> bm!134594 m!2669396))

(declare-fun m!2669398 () Bool)

(assert (=> bm!134593 m!2669398))

(declare-fun m!2669400 () Bool)

(assert (=> b!2234690 m!2669400))

(declare-fun m!2669402 () Bool)

(assert (=> bm!134595 m!2669402))

(assert (=> b!2234611 d!665353))

(declare-fun b!2234711 () Bool)

(declare-fun e!1428222 () Bool)

(declare-fun tp!701797 () Bool)

(declare-fun tp!701799 () Bool)

(assert (=> b!2234711 (= e!1428222 (and tp!701797 tp!701799))))

(assert (=> b!2234619 (= tp!701773 e!1428222)))

(declare-fun b!2234710 () Bool)

(declare-fun tp!701795 () Bool)

(assert (=> b!2234710 (= e!1428222 tp!701795)))

(declare-fun b!2234709 () Bool)

(declare-fun tp!701798 () Bool)

(declare-fun tp!701796 () Bool)

(assert (=> b!2234709 (= e!1428222 (and tp!701798 tp!701796))))

(declare-fun b!2234708 () Bool)

(assert (=> b!2234708 (= e!1428222 tp_is_empty!10119)))

(assert (= (and b!2234619 ((_ is ElementMatch!6447) (reg!6776 r!4773))) b!2234708))

(assert (= (and b!2234619 ((_ is Concat!10785) (reg!6776 r!4773))) b!2234709))

(assert (= (and b!2234619 ((_ is Star!6447) (reg!6776 r!4773))) b!2234710))

(assert (= (and b!2234619 ((_ is Union!6447) (reg!6776 r!4773))) b!2234711))

(declare-fun tp!701824 () Bool)

(declare-fun e!1428240 () Bool)

(declare-fun setNonEmpty!20286 () Bool)

(declare-fun setElem!20287 () Context!3990)

(declare-fun setRes!20287 () Bool)

(assert (=> setNonEmpty!20286 (= setRes!20287 (and tp!701824 (inv!35688 setElem!20287) e!1428240))))

(declare-fun mapValue!14510 () List!26370)

(declare-fun setRest!20287 () (InoxSet Context!3990))

(assert (=> setNonEmpty!20286 (= (_2!15283 (h!31677 mapValue!14510)) ((_ map or) (store ((as const (Array Context!3990 Bool)) false) setElem!20287 true) setRest!20287))))

(declare-fun tp!701832 () Bool)

(declare-fun e!1428237 () Bool)

(declare-fun b!2234726 () Bool)

(declare-fun tp!701827 () Bool)

(declare-fun e!1428236 () Bool)

(assert (=> b!2234726 (= e!1428236 (and tp!701832 (inv!35688 (_2!15282 (_1!15283 (h!31677 mapValue!14510)))) e!1428237 tp_is_empty!10119 setRes!20287 tp!701827))))

(declare-fun condSetEmpty!20286 () Bool)

(assert (=> b!2234726 (= condSetEmpty!20286 (= (_2!15283 (h!31677 mapValue!14510)) ((as const (Array Context!3990 Bool)) false)))))

(declare-fun condMapEmpty!14510 () Bool)

(declare-fun mapDefault!14510 () List!26370)

(assert (=> mapNonEmpty!14507 (= condMapEmpty!14510 (= mapRest!14507 ((as const (Array (_ BitVec 32) List!26370)) mapDefault!14510)))))

(declare-fun e!1428238 () Bool)

(declare-fun mapRes!14510 () Bool)

(assert (=> mapNonEmpty!14507 (= tp!701781 (and e!1428238 mapRes!14510))))

(declare-fun b!2234727 () Bool)

(declare-fun tp!701831 () Bool)

(assert (=> b!2234727 (= e!1428240 tp!701831)))

(declare-fun e!1428235 () Bool)

(declare-fun tp!701829 () Bool)

(declare-fun setRes!20286 () Bool)

(declare-fun tp!701825 () Bool)

(declare-fun b!2234728 () Bool)

(assert (=> b!2234728 (= e!1428238 (and tp!701829 (inv!35688 (_2!15282 (_1!15283 (h!31677 mapDefault!14510)))) e!1428235 tp_is_empty!10119 setRes!20286 tp!701825))))

(declare-fun condSetEmpty!20287 () Bool)

(assert (=> b!2234728 (= condSetEmpty!20287 (= (_2!15283 (h!31677 mapDefault!14510)) ((as const (Array Context!3990 Bool)) false)))))

(declare-fun e!1428239 () Bool)

(declare-fun tp!701823 () Bool)

(declare-fun setElem!20286 () Context!3990)

(declare-fun setNonEmpty!20287 () Bool)

(assert (=> setNonEmpty!20287 (= setRes!20286 (and tp!701823 (inv!35688 setElem!20286) e!1428239))))

(declare-fun setRest!20286 () (InoxSet Context!3990))

(assert (=> setNonEmpty!20287 (= (_2!15283 (h!31677 mapDefault!14510)) ((_ map or) (store ((as const (Array Context!3990 Bool)) false) setElem!20286 true) setRest!20286))))

(declare-fun mapNonEmpty!14510 () Bool)

(declare-fun tp!701822 () Bool)

(assert (=> mapNonEmpty!14510 (= mapRes!14510 (and tp!701822 e!1428236))))

(declare-fun mapKey!14510 () (_ BitVec 32))

(declare-fun mapRest!14510 () (Array (_ BitVec 32) List!26370))

(assert (=> mapNonEmpty!14510 (= mapRest!14507 (store mapRest!14510 mapKey!14510 mapValue!14510))))

(declare-fun b!2234729 () Bool)

(declare-fun tp!701828 () Bool)

(assert (=> b!2234729 (= e!1428239 tp!701828)))

(declare-fun b!2234730 () Bool)

(declare-fun tp!701830 () Bool)

(assert (=> b!2234730 (= e!1428237 tp!701830)))

(declare-fun mapIsEmpty!14510 () Bool)

(assert (=> mapIsEmpty!14510 mapRes!14510))

(declare-fun b!2234731 () Bool)

(declare-fun tp!701826 () Bool)

(assert (=> b!2234731 (= e!1428235 tp!701826)))

(declare-fun setIsEmpty!20286 () Bool)

(assert (=> setIsEmpty!20286 setRes!20286))

(declare-fun setIsEmpty!20287 () Bool)

(assert (=> setIsEmpty!20287 setRes!20287))

(assert (= (and mapNonEmpty!14507 condMapEmpty!14510) mapIsEmpty!14510))

(assert (= (and mapNonEmpty!14507 (not condMapEmpty!14510)) mapNonEmpty!14510))

(assert (= b!2234726 b!2234730))

(assert (= (and b!2234726 condSetEmpty!20286) setIsEmpty!20287))

(assert (= (and b!2234726 (not condSetEmpty!20286)) setNonEmpty!20286))

(assert (= setNonEmpty!20286 b!2234727))

(assert (= (and mapNonEmpty!14510 ((_ is Cons!26276) mapValue!14510)) b!2234726))

(assert (= b!2234728 b!2234731))

(assert (= (and b!2234728 condSetEmpty!20287) setIsEmpty!20286))

(assert (= (and b!2234728 (not condSetEmpty!20287)) setNonEmpty!20287))

(assert (= setNonEmpty!20287 b!2234729))

(assert (= (and mapNonEmpty!14507 ((_ is Cons!26276) mapDefault!14510)) b!2234728))

(declare-fun m!2669404 () Bool)

(assert (=> b!2234726 m!2669404))

(declare-fun m!2669406 () Bool)

(assert (=> setNonEmpty!20287 m!2669406))

(declare-fun m!2669408 () Bool)

(assert (=> b!2234728 m!2669408))

(declare-fun m!2669410 () Bool)

(assert (=> setNonEmpty!20286 m!2669410))

(declare-fun m!2669412 () Bool)

(assert (=> mapNonEmpty!14510 m!2669412))

(declare-fun b!2234740 () Bool)

(declare-fun e!1428247 () Bool)

(declare-fun tp!701843 () Bool)

(assert (=> b!2234740 (= e!1428247 tp!701843)))

(declare-fun setElem!20290 () Context!3990)

(declare-fun tp!701847 () Bool)

(declare-fun e!1428249 () Bool)

(declare-fun setRes!20290 () Bool)

(declare-fun setNonEmpty!20290 () Bool)

(assert (=> setNonEmpty!20290 (= setRes!20290 (and tp!701847 (inv!35688 setElem!20290) e!1428249))))

(declare-fun setRest!20290 () (InoxSet Context!3990))

(assert (=> setNonEmpty!20290 (= (_2!15283 (h!31677 mapValue!14507)) ((_ map or) (store ((as const (Array Context!3990 Bool)) false) setElem!20290 true) setRest!20290))))

(declare-fun setIsEmpty!20290 () Bool)

(assert (=> setIsEmpty!20290 setRes!20290))

(declare-fun e!1428248 () Bool)

(assert (=> mapNonEmpty!14507 (= tp!701774 e!1428248)))

(declare-fun tp!701844 () Bool)

(declare-fun tp!701845 () Bool)

(declare-fun b!2234741 () Bool)

(assert (=> b!2234741 (= e!1428248 (and tp!701845 (inv!35688 (_2!15282 (_1!15283 (h!31677 mapValue!14507)))) e!1428247 tp_is_empty!10119 setRes!20290 tp!701844))))

(declare-fun condSetEmpty!20290 () Bool)

(assert (=> b!2234741 (= condSetEmpty!20290 (= (_2!15283 (h!31677 mapValue!14507)) ((as const (Array Context!3990 Bool)) false)))))

(declare-fun b!2234742 () Bool)

(declare-fun tp!701846 () Bool)

(assert (=> b!2234742 (= e!1428249 tp!701846)))

(assert (= b!2234741 b!2234740))

(assert (= (and b!2234741 condSetEmpty!20290) setIsEmpty!20290))

(assert (= (and b!2234741 (not condSetEmpty!20290)) setNonEmpty!20290))

(assert (= setNonEmpty!20290 b!2234742))

(assert (= (and mapNonEmpty!14507 ((_ is Cons!26276) mapValue!14507)) b!2234741))

(declare-fun m!2669414 () Bool)

(assert (=> setNonEmpty!20290 m!2669414))

(declare-fun m!2669416 () Bool)

(assert (=> b!2234741 m!2669416))

(declare-fun condSetEmpty!20293 () Bool)

(assert (=> setNonEmpty!20281 (= condSetEmpty!20293 (= setRest!20281 ((as const (Array Context!3990 Bool)) false)))))

(declare-fun setRes!20293 () Bool)

(assert (=> setNonEmpty!20281 (= tp!701784 setRes!20293)))

(declare-fun setIsEmpty!20293 () Bool)

(assert (=> setIsEmpty!20293 setRes!20293))

(declare-fun setElem!20293 () Context!3990)

(declare-fun tp!701852 () Bool)

(declare-fun e!1428252 () Bool)

(declare-fun setNonEmpty!20293 () Bool)

(assert (=> setNonEmpty!20293 (= setRes!20293 (and tp!701852 (inv!35688 setElem!20293) e!1428252))))

(declare-fun setRest!20293 () (InoxSet Context!3990))

(assert (=> setNonEmpty!20293 (= setRest!20281 ((_ map or) (store ((as const (Array Context!3990 Bool)) false) setElem!20293 true) setRest!20293))))

(declare-fun b!2234747 () Bool)

(declare-fun tp!701853 () Bool)

(assert (=> b!2234747 (= e!1428252 tp!701853)))

(assert (= (and setNonEmpty!20281 condSetEmpty!20293) setIsEmpty!20293))

(assert (= (and setNonEmpty!20281 (not condSetEmpty!20293)) setNonEmpty!20293))

(assert (= setNonEmpty!20293 b!2234747))

(declare-fun m!2669418 () Bool)

(assert (=> setNonEmpty!20293 m!2669418))

(declare-fun b!2234752 () Bool)

(declare-fun e!1428255 () Bool)

(declare-fun tp!701858 () Bool)

(declare-fun tp!701859 () Bool)

(assert (=> b!2234752 (= e!1428255 (and tp!701858 tp!701859))))

(assert (=> b!2234626 (= tp!701770 e!1428255)))

(assert (= (and b!2234626 ((_ is Cons!26275) (exprs!2495 ctx!56))) b!2234752))

(declare-fun b!2234756 () Bool)

(declare-fun e!1428256 () Bool)

(declare-fun tp!701862 () Bool)

(declare-fun tp!701864 () Bool)

(assert (=> b!2234756 (= e!1428256 (and tp!701862 tp!701864))))

(assert (=> b!2234613 (= tp!701771 e!1428256)))

(declare-fun b!2234755 () Bool)

(declare-fun tp!701860 () Bool)

(assert (=> b!2234755 (= e!1428256 tp!701860)))

(declare-fun b!2234754 () Bool)

(declare-fun tp!701863 () Bool)

(declare-fun tp!701861 () Bool)

(assert (=> b!2234754 (= e!1428256 (and tp!701863 tp!701861))))

(declare-fun b!2234753 () Bool)

(assert (=> b!2234753 (= e!1428256 tp_is_empty!10119)))

(assert (= (and b!2234613 ((_ is ElementMatch!6447) (regOne!13406 r!4773))) b!2234753))

(assert (= (and b!2234613 ((_ is Concat!10785) (regOne!13406 r!4773))) b!2234754))

(assert (= (and b!2234613 ((_ is Star!6447) (regOne!13406 r!4773))) b!2234755))

(assert (= (and b!2234613 ((_ is Union!6447) (regOne!13406 r!4773))) b!2234756))

(declare-fun b!2234760 () Bool)

(declare-fun e!1428257 () Bool)

(declare-fun tp!701867 () Bool)

(declare-fun tp!701869 () Bool)

(assert (=> b!2234760 (= e!1428257 (and tp!701867 tp!701869))))

(assert (=> b!2234613 (= tp!701780 e!1428257)))

(declare-fun b!2234759 () Bool)

(declare-fun tp!701865 () Bool)

(assert (=> b!2234759 (= e!1428257 tp!701865)))

(declare-fun b!2234758 () Bool)

(declare-fun tp!701868 () Bool)

(declare-fun tp!701866 () Bool)

(assert (=> b!2234758 (= e!1428257 (and tp!701868 tp!701866))))

(declare-fun b!2234757 () Bool)

(assert (=> b!2234757 (= e!1428257 tp_is_empty!10119)))

(assert (= (and b!2234613 ((_ is ElementMatch!6447) (regTwo!13406 r!4773))) b!2234757))

(assert (= (and b!2234613 ((_ is Concat!10785) (regTwo!13406 r!4773))) b!2234758))

(assert (= (and b!2234613 ((_ is Star!6447) (regTwo!13406 r!4773))) b!2234759))

(assert (= (and b!2234613 ((_ is Union!6447) (regTwo!13406 r!4773))) b!2234760))

(declare-fun b!2234761 () Bool)

(declare-fun e!1428258 () Bool)

(declare-fun tp!701870 () Bool)

(assert (=> b!2234761 (= e!1428258 tp!701870)))

(declare-fun e!1428260 () Bool)

(declare-fun tp!701874 () Bool)

(declare-fun setNonEmpty!20294 () Bool)

(declare-fun setRes!20294 () Bool)

(declare-fun setElem!20294 () Context!3990)

(assert (=> setNonEmpty!20294 (= setRes!20294 (and tp!701874 (inv!35688 setElem!20294) e!1428260))))

(declare-fun setRest!20294 () (InoxSet Context!3990))

(assert (=> setNonEmpty!20294 (= (_2!15283 (h!31677 (zeroValue!3343 (v!29879 (underlying!6371 (v!29880 (underlying!6372 (cache!3376 thiss!28822)))))))) ((_ map or) (store ((as const (Array Context!3990 Bool)) false) setElem!20294 true) setRest!20294))))

(declare-fun setIsEmpty!20294 () Bool)

(assert (=> setIsEmpty!20294 setRes!20294))

(declare-fun e!1428259 () Bool)

(assert (=> b!2234612 (= tp!701782 e!1428259)))

(declare-fun tp!701872 () Bool)

(declare-fun b!2234762 () Bool)

(declare-fun tp!701871 () Bool)

(assert (=> b!2234762 (= e!1428259 (and tp!701872 (inv!35688 (_2!15282 (_1!15283 (h!31677 (zeroValue!3343 (v!29879 (underlying!6371 (v!29880 (underlying!6372 (cache!3376 thiss!28822)))))))))) e!1428258 tp_is_empty!10119 setRes!20294 tp!701871))))

(declare-fun condSetEmpty!20294 () Bool)

(assert (=> b!2234762 (= condSetEmpty!20294 (= (_2!15283 (h!31677 (zeroValue!3343 (v!29879 (underlying!6371 (v!29880 (underlying!6372 (cache!3376 thiss!28822)))))))) ((as const (Array Context!3990 Bool)) false)))))

(declare-fun b!2234763 () Bool)

(declare-fun tp!701873 () Bool)

(assert (=> b!2234763 (= e!1428260 tp!701873)))

(assert (= b!2234762 b!2234761))

(assert (= (and b!2234762 condSetEmpty!20294) setIsEmpty!20294))

(assert (= (and b!2234762 (not condSetEmpty!20294)) setNonEmpty!20294))

(assert (= setNonEmpty!20294 b!2234763))

(assert (= (and b!2234612 ((_ is Cons!26276) (zeroValue!3343 (v!29879 (underlying!6371 (v!29880 (underlying!6372 (cache!3376 thiss!28822)))))))) b!2234762))

(declare-fun m!2669420 () Bool)

(assert (=> setNonEmpty!20294 m!2669420))

(declare-fun m!2669422 () Bool)

(assert (=> b!2234762 m!2669422))

(declare-fun b!2234764 () Bool)

(declare-fun e!1428261 () Bool)

(declare-fun tp!701875 () Bool)

(assert (=> b!2234764 (= e!1428261 tp!701875)))

(declare-fun setNonEmpty!20295 () Bool)

(declare-fun tp!701879 () Bool)

(declare-fun e!1428263 () Bool)

(declare-fun setRes!20295 () Bool)

(declare-fun setElem!20295 () Context!3990)

(assert (=> setNonEmpty!20295 (= setRes!20295 (and tp!701879 (inv!35688 setElem!20295) e!1428263))))

(declare-fun setRest!20295 () (InoxSet Context!3990))

(assert (=> setNonEmpty!20295 (= (_2!15283 (h!31677 (minValue!3343 (v!29879 (underlying!6371 (v!29880 (underlying!6372 (cache!3376 thiss!28822)))))))) ((_ map or) (store ((as const (Array Context!3990 Bool)) false) setElem!20295 true) setRest!20295))))

(declare-fun setIsEmpty!20295 () Bool)

(assert (=> setIsEmpty!20295 setRes!20295))

(declare-fun e!1428262 () Bool)

(assert (=> b!2234612 (= tp!701777 e!1428262)))

(declare-fun tp!701876 () Bool)

(declare-fun b!2234765 () Bool)

(declare-fun tp!701877 () Bool)

(assert (=> b!2234765 (= e!1428262 (and tp!701877 (inv!35688 (_2!15282 (_1!15283 (h!31677 (minValue!3343 (v!29879 (underlying!6371 (v!29880 (underlying!6372 (cache!3376 thiss!28822)))))))))) e!1428261 tp_is_empty!10119 setRes!20295 tp!701876))))

(declare-fun condSetEmpty!20295 () Bool)

(assert (=> b!2234765 (= condSetEmpty!20295 (= (_2!15283 (h!31677 (minValue!3343 (v!29879 (underlying!6371 (v!29880 (underlying!6372 (cache!3376 thiss!28822)))))))) ((as const (Array Context!3990 Bool)) false)))))

(declare-fun b!2234766 () Bool)

(declare-fun tp!701878 () Bool)

(assert (=> b!2234766 (= e!1428263 tp!701878)))

(assert (= b!2234765 b!2234764))

(assert (= (and b!2234765 condSetEmpty!20295) setIsEmpty!20295))

(assert (= (and b!2234765 (not condSetEmpty!20295)) setNonEmpty!20295))

(assert (= setNonEmpty!20295 b!2234766))

(assert (= (and b!2234612 ((_ is Cons!26276) (minValue!3343 (v!29879 (underlying!6371 (v!29880 (underlying!6372 (cache!3376 thiss!28822)))))))) b!2234765))

(declare-fun m!2669424 () Bool)

(assert (=> setNonEmpty!20295 m!2669424))

(declare-fun m!2669426 () Bool)

(assert (=> b!2234765 m!2669426))

(declare-fun b!2234767 () Bool)

(declare-fun e!1428264 () Bool)

(declare-fun tp!701880 () Bool)

(declare-fun tp!701881 () Bool)

(assert (=> b!2234767 (= e!1428264 (and tp!701880 tp!701881))))

(assert (=> b!2234615 (= tp!701776 e!1428264)))

(assert (= (and b!2234615 ((_ is Cons!26275) (exprs!2495 setElem!20281))) b!2234767))

(declare-fun b!2234771 () Bool)

(declare-fun e!1428265 () Bool)

(declare-fun tp!701884 () Bool)

(declare-fun tp!701886 () Bool)

(assert (=> b!2234771 (= e!1428265 (and tp!701884 tp!701886))))

(assert (=> b!2234620 (= tp!701775 e!1428265)))

(declare-fun b!2234770 () Bool)

(declare-fun tp!701882 () Bool)

(assert (=> b!2234770 (= e!1428265 tp!701882)))

(declare-fun b!2234769 () Bool)

(declare-fun tp!701885 () Bool)

(declare-fun tp!701883 () Bool)

(assert (=> b!2234769 (= e!1428265 (and tp!701885 tp!701883))))

(declare-fun b!2234768 () Bool)

(assert (=> b!2234768 (= e!1428265 tp_is_empty!10119)))

(assert (= (and b!2234620 ((_ is ElementMatch!6447) (regOne!13407 r!4773))) b!2234768))

(assert (= (and b!2234620 ((_ is Concat!10785) (regOne!13407 r!4773))) b!2234769))

(assert (= (and b!2234620 ((_ is Star!6447) (regOne!13407 r!4773))) b!2234770))

(assert (= (and b!2234620 ((_ is Union!6447) (regOne!13407 r!4773))) b!2234771))

(declare-fun b!2234775 () Bool)

(declare-fun e!1428266 () Bool)

(declare-fun tp!701889 () Bool)

(declare-fun tp!701891 () Bool)

(assert (=> b!2234775 (= e!1428266 (and tp!701889 tp!701891))))

(assert (=> b!2234620 (= tp!701778 e!1428266)))

(declare-fun b!2234774 () Bool)

(declare-fun tp!701887 () Bool)

(assert (=> b!2234774 (= e!1428266 tp!701887)))

(declare-fun b!2234773 () Bool)

(declare-fun tp!701890 () Bool)

(declare-fun tp!701888 () Bool)

(assert (=> b!2234773 (= e!1428266 (and tp!701890 tp!701888))))

(declare-fun b!2234772 () Bool)

(assert (=> b!2234772 (= e!1428266 tp_is_empty!10119)))

(assert (= (and b!2234620 ((_ is ElementMatch!6447) (regTwo!13407 r!4773))) b!2234772))

(assert (= (and b!2234620 ((_ is Concat!10785) (regTwo!13407 r!4773))) b!2234773))

(assert (= (and b!2234620 ((_ is Star!6447) (regTwo!13407 r!4773))) b!2234774))

(assert (= (and b!2234620 ((_ is Union!6447) (regTwo!13407 r!4773))) b!2234775))

(declare-fun b!2234776 () Bool)

(declare-fun e!1428267 () Bool)

(declare-fun tp!701892 () Bool)

(assert (=> b!2234776 (= e!1428267 tp!701892)))

(declare-fun tp!701896 () Bool)

(declare-fun setNonEmpty!20296 () Bool)

(declare-fun setElem!20296 () Context!3990)

(declare-fun e!1428269 () Bool)

(declare-fun setRes!20296 () Bool)

(assert (=> setNonEmpty!20296 (= setRes!20296 (and tp!701896 (inv!35688 setElem!20296) e!1428269))))

(declare-fun setRest!20296 () (InoxSet Context!3990))

(assert (=> setNonEmpty!20296 (= (_2!15283 (h!31677 mapDefault!14507)) ((_ map or) (store ((as const (Array Context!3990 Bool)) false) setElem!20296 true) setRest!20296))))

(declare-fun setIsEmpty!20296 () Bool)

(assert (=> setIsEmpty!20296 setRes!20296))

(declare-fun e!1428268 () Bool)

(assert (=> b!2234624 (= tp!701779 e!1428268)))

(declare-fun tp!701894 () Bool)

(declare-fun tp!701893 () Bool)

(declare-fun b!2234777 () Bool)

(assert (=> b!2234777 (= e!1428268 (and tp!701894 (inv!35688 (_2!15282 (_1!15283 (h!31677 mapDefault!14507)))) e!1428267 tp_is_empty!10119 setRes!20296 tp!701893))))

(declare-fun condSetEmpty!20296 () Bool)

(assert (=> b!2234777 (= condSetEmpty!20296 (= (_2!15283 (h!31677 mapDefault!14507)) ((as const (Array Context!3990 Bool)) false)))))

(declare-fun b!2234778 () Bool)

(declare-fun tp!701895 () Bool)

(assert (=> b!2234778 (= e!1428269 tp!701895)))

(assert (= b!2234777 b!2234776))

(assert (= (and b!2234777 condSetEmpty!20296) setIsEmpty!20296))

(assert (= (and b!2234777 (not condSetEmpty!20296)) setNonEmpty!20296))

(assert (= setNonEmpty!20296 b!2234778))

(assert (= (and b!2234624 ((_ is Cons!26276) mapDefault!14507)) b!2234777))

(declare-fun m!2669428 () Bool)

(assert (=> setNonEmpty!20296 m!2669428))

(declare-fun m!2669430 () Bool)

(assert (=> b!2234777 m!2669430))

(check-sat (not b!2234765) (not b!2234758) (not b!2234755) (not b!2234761) (not b_next!65505) (not b!2234777) (not b!2234637) (not b!2234767) (not b!2234730) (not b!2234769) (not b!2234775) (not b!2234727) (not bm!134578) (not b!2234762) (not b!2234759) b_and!174791 (not b!2234728) (not bm!134576) (not setNonEmpty!20290) (not b!2234747) (not b!2234764) (not b!2234711) (not b!2234756) (not b!2234740) (not b!2234773) (not b!2234776) (not b!2234729) (not b!2234766) (not b_next!65507) (not setNonEmpty!20295) (not b!2234771) (not d!665341) (not b!2234760) (not d!665345) (not b!2234774) (not b!2234726) (not b!2234763) b_and!174789 (not b!2234742) (not setNonEmpty!20293) tp_is_empty!10119 (not setNonEmpty!20286) (not b!2234778) (not b!2234693) (not b!2234709) (not b!2234634) (not b!2234731) (not d!665339) (not b!2234710) (not bm!134594) (not bm!134595) (not setNonEmpty!20296) (not b!2234658) (not setNonEmpty!20294) (not setNonEmpty!20287) (not b!2234770) (not b!2234752) (not b!2234754) (not bm!134593) (not b!2234633) (not b!2234741) (not mapNonEmpty!14510))
(check-sat b_and!174791 b_and!174789 (not b_next!65505) (not b_next!65507))
