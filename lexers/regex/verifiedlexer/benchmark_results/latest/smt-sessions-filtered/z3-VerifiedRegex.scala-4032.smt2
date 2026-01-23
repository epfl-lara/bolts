; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217878 () Bool)

(assert start!217878)

(declare-fun b!2235529 () Bool)

(declare-fun b_free!64833 () Bool)

(declare-fun b_next!65537 () Bool)

(assert (=> b!2235529 (= b_free!64833 (not b_next!65537))))

(declare-fun tp!702468 () Bool)

(declare-fun b_and!174821 () Bool)

(assert (=> b!2235529 (= tp!702468 b_and!174821)))

(declare-fun b!2235524 () Bool)

(declare-fun b_free!64835 () Bool)

(declare-fun b_next!65539 () Bool)

(assert (=> b!2235524 (= b_free!64835 (not b_next!65539))))

(declare-fun tp!702477 () Bool)

(declare-fun b_and!174823 () Bool)

(assert (=> b!2235524 (= tp!702477 b_and!174823)))

(declare-fun e!1428771 () Bool)

(declare-datatypes ((C!13056 0))(
  ( (C!13057 (val!7576 Int)) )
))
(declare-datatypes ((Regex!6455 0))(
  ( (ElementMatch!6455 (c!356309 C!13056)) (Concat!10793 (regOne!13422 Regex!6455) (regTwo!13422 Regex!6455)) (EmptyExpr!6455) (Star!6455 (reg!6784 Regex!6455)) (EmptyLang!6455) (Union!6455 (regOne!13423 Regex!6455) (regTwo!13423 Regex!6455)) )
))
(declare-datatypes ((List!26387 0))(
  ( (Nil!26293) (Cons!26293 (h!31694 Regex!6455) (t!199807 List!26387)) )
))
(declare-datatypes ((Context!4006 0))(
  ( (Context!4007 (exprs!2503 List!26387)) )
))
(declare-datatypes ((tuple3!3982 0))(
  ( (tuple3!3983 (_1!15301 Regex!6455) (_2!15301 Context!4006) (_3!2461 C!13056)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25680 0))(
  ( (tuple2!25681 (_1!15302 tuple3!3982) (_2!15302 (InoxSet Context!4006))) )
))
(declare-datatypes ((List!26388 0))(
  ( (Nil!26294) (Cons!26294 (h!31695 tuple2!25680) (t!199808 List!26388)) )
))
(declare-datatypes ((array!10746 0))(
  ( (array!10747 (arr!4773 (Array (_ BitVec 32) (_ BitVec 64))) (size!20554 (_ BitVec 32))) )
))
(declare-datatypes ((array!10748 0))(
  ( (array!10749 (arr!4774 (Array (_ BitVec 32) List!26388)) (size!20555 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6186 0))(
  ( (LongMapFixedSize!6187 (defaultEntry!3458 Int) (mask!7674 (_ BitVec 32)) (extraKeys!3341 (_ BitVec 32)) (zeroValue!3351 List!26388) (minValue!3351 List!26388) (_size!6233 (_ BitVec 32)) (_keys!3390 array!10746) (_values!3373 array!10748) (_vacant!3154 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12189 0))(
  ( (Cell!12190 (v!29895 LongMapFixedSize!6186)) )
))
(declare-datatypes ((MutLongMap!3093 0))(
  ( (LongMap!3093 (underlying!6387 Cell!12189)) (MutLongMapExt!3092 (__x!17505 Int)) )
))
(declare-datatypes ((Cell!12191 0))(
  ( (Cell!12192 (v!29896 MutLongMap!3093)) )
))
(declare-datatypes ((Hashable!3003 0))(
  ( (HashableExt!3002 (__x!17506 Int)) )
))
(declare-datatypes ((MutableMap!3003 0))(
  ( (MutableMapExt!3002 (__x!17507 Int)) (HashMap!3003 (underlying!6388 Cell!12191) (hashF!4926 Hashable!3003) (_size!6234 (_ BitVec 32)) (defaultValue!3165 Int)) )
))
(declare-datatypes ((CacheDown!2052 0))(
  ( (CacheDown!2053 (cache!3384 MutableMap!3003)) )
))
(declare-fun thiss!28822 () CacheDown!2052)

(declare-fun e!1428773 () Bool)

(declare-fun tp!702474 () Bool)

(declare-fun tp!702471 () Bool)

(declare-fun array_inv!3425 (array!10746) Bool)

(declare-fun array_inv!3426 (array!10748) Bool)

(assert (=> b!2235524 (= e!1428771 (and tp!702477 tp!702474 tp!702471 (array_inv!3425 (_keys!3390 (v!29895 (underlying!6387 (v!29896 (underlying!6388 (cache!3384 thiss!28822))))))) (array_inv!3426 (_values!3373 (v!29895 (underlying!6387 (v!29896 (underlying!6388 (cache!3384 thiss!28822))))))) e!1428773))))

(declare-fun mapIsEmpty!14540 () Bool)

(declare-fun mapRes!14540 () Bool)

(assert (=> mapIsEmpty!14540 mapRes!14540))

(declare-fun mapNonEmpty!14540 () Bool)

(declare-fun tp!702466 () Bool)

(declare-fun tp!702467 () Bool)

(assert (=> mapNonEmpty!14540 (= mapRes!14540 (and tp!702466 tp!702467))))

(declare-fun mapKey!14540 () (_ BitVec 32))

(declare-fun mapValue!14540 () List!26388)

(declare-fun mapRest!14540 () (Array (_ BitVec 32) List!26388))

(assert (=> mapNonEmpty!14540 (= (arr!4774 (_values!3373 (v!29895 (underlying!6387 (v!29896 (underlying!6388 (cache!3384 thiss!28822))))))) (store mapRest!14540 mapKey!14540 mapValue!14540))))

(declare-fun b!2235525 () Bool)

(declare-fun e!1428781 () Bool)

(declare-fun tp!702469 () Bool)

(assert (=> b!2235525 (= e!1428781 tp!702469)))

(declare-fun b!2235526 () Bool)

(declare-fun res!956602 () Bool)

(declare-fun e!1428782 () Bool)

(assert (=> b!2235526 (=> (not res!956602) (not e!1428782))))

(declare-fun r!4773 () Regex!6455)

(declare-fun validRegex!2420 (Regex!6455) Bool)

(assert (=> b!2235526 (= res!956602 (validRegex!2420 r!4773))))

(declare-fun b!2235527 () Bool)

(declare-fun res!956601 () Bool)

(assert (=> b!2235527 (=> (not res!956601) (not e!1428782))))

(declare-fun res!14291 () (InoxSet Context!4006))

(declare-fun ctx!56 () Context!4006)

(declare-fun a!1010 () C!13056)

(declare-fun derivationStepZipperDown!66 (Regex!6455 Context!4006 C!13056) (InoxSet Context!4006))

(assert (=> b!2235527 (= res!956601 (= res!14291 (derivationStepZipperDown!66 r!4773 ctx!56 a!1010)))))

(declare-fun b!2235528 () Bool)

(declare-fun tp_is_empty!10135 () Bool)

(assert (=> b!2235528 (= e!1428781 tp_is_empty!10135)))

(declare-fun b!2235530 () Bool)

(declare-fun e!1428776 () Bool)

(declare-fun tp!702470 () Bool)

(assert (=> b!2235530 (= e!1428776 tp!702470)))

(declare-fun b!2235531 () Bool)

(declare-fun tp!702472 () Bool)

(declare-fun tp!702476 () Bool)

(assert (=> b!2235531 (= e!1428781 (and tp!702472 tp!702476))))

(declare-fun b!2235532 () Bool)

(declare-datatypes ((tuple2!25682 0))(
  ( (tuple2!25683 (_1!15303 Bool) (_2!15303 MutableMap!3003)) )
))
(declare-fun lt!831412 () tuple2!25682)

(declare-fun validCacheMapDown!306 (MutableMap!3003) Bool)

(assert (=> b!2235532 (= e!1428782 (not (validCacheMapDown!306 (_2!15303 lt!831412))))))

(declare-fun lambda!84461 () Int)

(declare-fun forall!5395 (List!26388 Int) Bool)

(declare-datatypes ((ListMap!831 0))(
  ( (ListMap!832 (toList!1349 List!26388)) )
))
(declare-fun map!5398 (MutableMap!3003) ListMap!831)

(assert (=> b!2235532 (forall!5395 (toList!1349 (map!5398 (_2!15303 lt!831412))) lambda!84461)))

(declare-fun lt!831414 () tuple3!3982)

(declare-fun update!147 (MutableMap!3003 tuple3!3982 (InoxSet Context!4006)) tuple2!25682)

(assert (=> b!2235532 (= lt!831412 (update!147 (cache!3384 thiss!28822) lt!831414 res!14291))))

(declare-datatypes ((Unit!39228 0))(
  ( (Unit!39229) )
))
(declare-fun lt!831411 () Unit!39228)

(declare-fun lemmaUpdatePreservesForallPairs!24 (MutableMap!3003 tuple3!3982 (InoxSet Context!4006) Int) Unit!39228)

(assert (=> b!2235532 (= lt!831411 (lemmaUpdatePreservesForallPairs!24 (cache!3384 thiss!28822) lt!831414 res!14291 lambda!84461))))

(assert (=> b!2235532 (= lt!831414 (tuple3!3983 r!4773 ctx!56 a!1010))))

(declare-fun b!2235533 () Bool)

(declare-fun e!1428778 () Bool)

(declare-fun e!1428780 () Bool)

(declare-fun lt!831413 () MutLongMap!3093)

(get-info :version)

(assert (=> b!2235533 (= e!1428778 (and e!1428780 ((_ is LongMap!3093) lt!831413)))))

(assert (=> b!2235533 (= lt!831413 (v!29896 (underlying!6388 (cache!3384 thiss!28822))))))

(declare-fun b!2235534 () Bool)

(declare-fun e!1428772 () Bool)

(declare-fun tp!702479 () Bool)

(assert (=> b!2235534 (= e!1428772 tp!702479)))

(declare-fun b!2235535 () Bool)

(declare-fun tp!702475 () Bool)

(assert (=> b!2235535 (= e!1428773 (and tp!702475 mapRes!14540))))

(declare-fun condMapEmpty!14540 () Bool)

(declare-fun mapDefault!14540 () List!26388)

(assert (=> b!2235535 (= condMapEmpty!14540 (= (arr!4774 (_values!3373 (v!29895 (underlying!6387 (v!29896 (underlying!6388 (cache!3384 thiss!28822))))))) ((as const (Array (_ BitVec 32) List!26388)) mapDefault!14540)))))

(declare-fun e!1428775 () Bool)

(assert (=> b!2235529 (= e!1428775 (and e!1428778 tp!702468))))

(declare-fun res!956603 () Bool)

(assert (=> start!217878 (=> (not res!956603) (not e!1428782))))

(assert (=> start!217878 (= res!956603 (validCacheMapDown!306 (cache!3384 thiss!28822)))))

(assert (=> start!217878 e!1428782))

(assert (=> start!217878 tp_is_empty!10135))

(declare-fun condSetEmpty!20350 () Bool)

(assert (=> start!217878 (= condSetEmpty!20350 (= res!14291 ((as const (Array Context!4006 Bool)) false)))))

(declare-fun setRes!20350 () Bool)

(assert (=> start!217878 setRes!20350))

(declare-fun inv!35714 (Context!4006) Bool)

(assert (=> start!217878 (and (inv!35714 ctx!56) e!1428772)))

(assert (=> start!217878 e!1428781))

(declare-fun e!1428777 () Bool)

(declare-fun inv!35715 (CacheDown!2052) Bool)

(assert (=> start!217878 (and (inv!35715 thiss!28822) e!1428777)))

(declare-fun b!2235536 () Bool)

(declare-fun e!1428779 () Bool)

(assert (=> b!2235536 (= e!1428779 e!1428771)))

(declare-fun b!2235537 () Bool)

(declare-fun tp!702480 () Bool)

(declare-fun tp!702473 () Bool)

(assert (=> b!2235537 (= e!1428781 (and tp!702480 tp!702473))))

(declare-fun b!2235538 () Bool)

(assert (=> b!2235538 (= e!1428777 e!1428775)))

(declare-fun b!2235539 () Bool)

(assert (=> b!2235539 (= e!1428780 e!1428779)))

(declare-fun setIsEmpty!20350 () Bool)

(assert (=> setIsEmpty!20350 setRes!20350))

(declare-fun setNonEmpty!20350 () Bool)

(declare-fun tp!702478 () Bool)

(declare-fun setElem!20350 () Context!4006)

(assert (=> setNonEmpty!20350 (= setRes!20350 (and tp!702478 (inv!35714 setElem!20350) e!1428776))))

(declare-fun setRest!20350 () (InoxSet Context!4006))

(assert (=> setNonEmpty!20350 (= res!14291 ((_ map or) (store ((as const (Array Context!4006 Bool)) false) setElem!20350 true) setRest!20350))))

(assert (= (and start!217878 res!956603) b!2235526))

(assert (= (and b!2235526 res!956602) b!2235527))

(assert (= (and b!2235527 res!956601) b!2235532))

(assert (= (and start!217878 condSetEmpty!20350) setIsEmpty!20350))

(assert (= (and start!217878 (not condSetEmpty!20350)) setNonEmpty!20350))

(assert (= setNonEmpty!20350 b!2235530))

(assert (= start!217878 b!2235534))

(assert (= (and start!217878 ((_ is ElementMatch!6455) r!4773)) b!2235528))

(assert (= (and start!217878 ((_ is Concat!10793) r!4773)) b!2235531))

(assert (= (and start!217878 ((_ is Star!6455) r!4773)) b!2235525))

(assert (= (and start!217878 ((_ is Union!6455) r!4773)) b!2235537))

(assert (= (and b!2235535 condMapEmpty!14540) mapIsEmpty!14540))

(assert (= (and b!2235535 (not condMapEmpty!14540)) mapNonEmpty!14540))

(assert (= b!2235524 b!2235535))

(assert (= b!2235536 b!2235524))

(assert (= b!2235539 b!2235536))

(assert (= (and b!2235533 ((_ is LongMap!3093) (v!29896 (underlying!6388 (cache!3384 thiss!28822))))) b!2235539))

(assert (= b!2235529 b!2235533))

(assert (= (and b!2235538 ((_ is HashMap!3003) (cache!3384 thiss!28822))) b!2235529))

(assert (= start!217878 b!2235538))

(declare-fun m!2669732 () Bool)

(assert (=> setNonEmpty!20350 m!2669732))

(declare-fun m!2669734 () Bool)

(assert (=> b!2235524 m!2669734))

(declare-fun m!2669736 () Bool)

(assert (=> b!2235524 m!2669736))

(declare-fun m!2669738 () Bool)

(assert (=> b!2235527 m!2669738))

(declare-fun m!2669740 () Bool)

(assert (=> b!2235526 m!2669740))

(declare-fun m!2669742 () Bool)

(assert (=> b!2235532 m!2669742))

(declare-fun m!2669744 () Bool)

(assert (=> b!2235532 m!2669744))

(declare-fun m!2669746 () Bool)

(assert (=> b!2235532 m!2669746))

(declare-fun m!2669748 () Bool)

(assert (=> b!2235532 m!2669748))

(declare-fun m!2669750 () Bool)

(assert (=> b!2235532 m!2669750))

(declare-fun m!2669752 () Bool)

(assert (=> start!217878 m!2669752))

(declare-fun m!2669754 () Bool)

(assert (=> start!217878 m!2669754))

(declare-fun m!2669756 () Bool)

(assert (=> start!217878 m!2669756))

(declare-fun m!2669758 () Bool)

(assert (=> mapNonEmpty!14540 m!2669758))

(check-sat (not setNonEmpty!20350) (not b!2235535) (not b_next!65539) b_and!174821 (not b!2235530) (not b!2235532) b_and!174823 (not start!217878) (not b!2235526) (not b!2235534) (not b!2235525) (not b!2235531) (not b!2235524) (not mapNonEmpty!14540) (not b_next!65537) tp_is_empty!10135 (not b!2235537) (not b!2235527))
(check-sat b_and!174823 b_and!174821 (not b_next!65537) (not b_next!65539))
(get-model)

(declare-fun d!665401 () Bool)

(declare-fun lambda!84464 () Int)

(declare-fun forall!5396 (List!26387 Int) Bool)

(assert (=> d!665401 (= (inv!35714 setElem!20350) (forall!5396 (exprs!2503 setElem!20350) lambda!84464))))

(declare-fun bs!454191 () Bool)

(assert (= bs!454191 d!665401))

(declare-fun m!2669760 () Bool)

(assert (=> bs!454191 m!2669760))

(assert (=> setNonEmpty!20350 d!665401))

(declare-fun bs!454192 () Bool)

(declare-fun b!2235547 () Bool)

(assert (= bs!454192 (and b!2235547 b!2235532)))

(declare-fun lambda!84467 () Int)

(assert (=> bs!454192 (= lambda!84467 lambda!84461)))

(declare-fun d!665403 () Bool)

(declare-fun res!956610 () Bool)

(declare-fun e!1428787 () Bool)

(assert (=> d!665403 (=> (not res!956610) (not e!1428787))))

(declare-fun valid!2339 (MutableMap!3003) Bool)

(assert (=> d!665403 (= res!956610 (valid!2339 (cache!3384 thiss!28822)))))

(assert (=> d!665403 (= (validCacheMapDown!306 (cache!3384 thiss!28822)) e!1428787)))

(declare-fun b!2235546 () Bool)

(declare-fun res!956611 () Bool)

(assert (=> b!2235546 (=> (not res!956611) (not e!1428787))))

(declare-fun invariantList!370 (List!26388) Bool)

(assert (=> b!2235546 (= res!956611 (invariantList!370 (toList!1349 (map!5398 (cache!3384 thiss!28822)))))))

(assert (=> b!2235547 (= e!1428787 (forall!5395 (toList!1349 (map!5398 (cache!3384 thiss!28822))) lambda!84467))))

(assert (= (and d!665403 res!956610) b!2235546))

(assert (= (and b!2235546 res!956611) b!2235547))

(declare-fun m!2669763 () Bool)

(assert (=> d!665403 m!2669763))

(declare-fun m!2669765 () Bool)

(assert (=> b!2235546 m!2669765))

(declare-fun m!2669767 () Bool)

(assert (=> b!2235546 m!2669767))

(assert (=> b!2235547 m!2669765))

(declare-fun m!2669769 () Bool)

(assert (=> b!2235547 m!2669769))

(assert (=> start!217878 d!665403))

(declare-fun bs!454193 () Bool)

(declare-fun d!665405 () Bool)

(assert (= bs!454193 (and d!665405 d!665401)))

(declare-fun lambda!84468 () Int)

(assert (=> bs!454193 (= lambda!84468 lambda!84464)))

(assert (=> d!665405 (= (inv!35714 ctx!56) (forall!5396 (exprs!2503 ctx!56) lambda!84468))))

(declare-fun bs!454194 () Bool)

(assert (= bs!454194 d!665405))

(declare-fun m!2669771 () Bool)

(assert (=> bs!454194 m!2669771))

(assert (=> start!217878 d!665405))

(declare-fun d!665407 () Bool)

(declare-fun res!956614 () Bool)

(declare-fun e!1428790 () Bool)

(assert (=> d!665407 (=> (not res!956614) (not e!1428790))))

(assert (=> d!665407 (= res!956614 ((_ is HashMap!3003) (cache!3384 thiss!28822)))))

(assert (=> d!665407 (= (inv!35715 thiss!28822) e!1428790)))

(declare-fun b!2235550 () Bool)

(assert (=> b!2235550 (= e!1428790 (validCacheMapDown!306 (cache!3384 thiss!28822)))))

(assert (= (and d!665407 res!956614) b!2235550))

(assert (=> b!2235550 m!2669752))

(assert (=> start!217878 d!665407))

(declare-fun b!2235569 () Bool)

(declare-fun e!1428811 () Bool)

(declare-fun e!1428807 () Bool)

(assert (=> b!2235569 (= e!1428811 e!1428807)))

(declare-fun res!956628 () Bool)

(assert (=> b!2235569 (=> (not res!956628) (not e!1428807))))

(declare-fun call!134663 () Bool)

(assert (=> b!2235569 (= res!956628 call!134663)))

(declare-fun b!2235570 () Bool)

(declare-fun e!1428809 () Bool)

(declare-fun call!134662 () Bool)

(assert (=> b!2235570 (= e!1428809 call!134662)))

(declare-fun b!2235571 () Bool)

(declare-fun e!1428808 () Bool)

(declare-fun e!1428810 () Bool)

(assert (=> b!2235571 (= e!1428808 e!1428810)))

(declare-fun res!956625 () Bool)

(declare-fun nullable!1781 (Regex!6455) Bool)

(assert (=> b!2235571 (= res!956625 (not (nullable!1781 (reg!6784 r!4773))))))

(assert (=> b!2235571 (=> (not res!956625) (not e!1428810))))

(declare-fun b!2235572 () Bool)

(declare-fun res!956627 () Bool)

(assert (=> b!2235572 (=> res!956627 e!1428811)))

(assert (=> b!2235572 (= res!956627 (not ((_ is Concat!10793) r!4773)))))

(declare-fun e!1428805 () Bool)

(assert (=> b!2235572 (= e!1428805 e!1428811)))

(declare-fun d!665409 () Bool)

(declare-fun res!956629 () Bool)

(declare-fun e!1428806 () Bool)

(assert (=> d!665409 (=> res!956629 e!1428806)))

(assert (=> d!665409 (= res!956629 ((_ is ElementMatch!6455) r!4773))))

(assert (=> d!665409 (= (validRegex!2420 r!4773) e!1428806)))

(declare-fun bm!134657 () Bool)

(declare-fun call!134664 () Bool)

(assert (=> bm!134657 (= call!134662 call!134664)))

(declare-fun b!2235573 () Bool)

(assert (=> b!2235573 (= e!1428807 call!134662)))

(declare-fun b!2235574 () Bool)

(assert (=> b!2235574 (= e!1428810 call!134664)))

(declare-fun b!2235575 () Bool)

(declare-fun res!956626 () Bool)

(assert (=> b!2235575 (=> (not res!956626) (not e!1428809))))

(assert (=> b!2235575 (= res!956626 call!134663)))

(assert (=> b!2235575 (= e!1428805 e!1428809)))

(declare-fun c!356315 () Bool)

(declare-fun c!356314 () Bool)

(declare-fun bm!134658 () Bool)

(assert (=> bm!134658 (= call!134664 (validRegex!2420 (ite c!356315 (reg!6784 r!4773) (ite c!356314 (regTwo!13423 r!4773) (regTwo!13422 r!4773)))))))

(declare-fun b!2235576 () Bool)

(assert (=> b!2235576 (= e!1428808 e!1428805)))

(assert (=> b!2235576 (= c!356314 ((_ is Union!6455) r!4773))))

(declare-fun b!2235577 () Bool)

(assert (=> b!2235577 (= e!1428806 e!1428808)))

(assert (=> b!2235577 (= c!356315 ((_ is Star!6455) r!4773))))

(declare-fun bm!134659 () Bool)

(assert (=> bm!134659 (= call!134663 (validRegex!2420 (ite c!356314 (regOne!13423 r!4773) (regOne!13422 r!4773))))))

(assert (= (and d!665409 (not res!956629)) b!2235577))

(assert (= (and b!2235577 c!356315) b!2235571))

(assert (= (and b!2235577 (not c!356315)) b!2235576))

(assert (= (and b!2235571 res!956625) b!2235574))

(assert (= (and b!2235576 c!356314) b!2235575))

(assert (= (and b!2235576 (not c!356314)) b!2235572))

(assert (= (and b!2235575 res!956626) b!2235570))

(assert (= (and b!2235572 (not res!956627)) b!2235569))

(assert (= (and b!2235569 res!956628) b!2235573))

(assert (= (or b!2235570 b!2235573) bm!134657))

(assert (= (or b!2235575 b!2235569) bm!134659))

(assert (= (or b!2235574 bm!134657) bm!134658))

(declare-fun m!2669773 () Bool)

(assert (=> b!2235571 m!2669773))

(declare-fun m!2669775 () Bool)

(assert (=> bm!134658 m!2669775))

(declare-fun m!2669777 () Bool)

(assert (=> bm!134659 m!2669777))

(assert (=> b!2235526 d!665409))

(declare-fun d!665411 () Bool)

(assert (=> d!665411 (= (array_inv!3425 (_keys!3390 (v!29895 (underlying!6387 (v!29896 (underlying!6388 (cache!3384 thiss!28822))))))) (bvsge (size!20554 (_keys!3390 (v!29895 (underlying!6387 (v!29896 (underlying!6388 (cache!3384 thiss!28822))))))) #b00000000000000000000000000000000))))

(assert (=> b!2235524 d!665411))

(declare-fun d!665413 () Bool)

(assert (=> d!665413 (= (array_inv!3426 (_values!3373 (v!29895 (underlying!6387 (v!29896 (underlying!6388 (cache!3384 thiss!28822))))))) (bvsge (size!20555 (_values!3373 (v!29895 (underlying!6387 (v!29896 (underlying!6388 (cache!3384 thiss!28822))))))) #b00000000000000000000000000000000))))

(assert (=> b!2235524 d!665413))

(declare-fun d!665415 () Bool)

(declare-fun res!956634 () Bool)

(declare-fun e!1428816 () Bool)

(assert (=> d!665415 (=> res!956634 e!1428816)))

(assert (=> d!665415 (= res!956634 ((_ is Nil!26294) (toList!1349 (map!5398 (_2!15303 lt!831412)))))))

(assert (=> d!665415 (= (forall!5395 (toList!1349 (map!5398 (_2!15303 lt!831412))) lambda!84461) e!1428816)))

(declare-fun b!2235582 () Bool)

(declare-fun e!1428817 () Bool)

(assert (=> b!2235582 (= e!1428816 e!1428817)))

(declare-fun res!956635 () Bool)

(assert (=> b!2235582 (=> (not res!956635) (not e!1428817))))

(declare-fun dynLambda!11529 (Int tuple2!25680) Bool)

(assert (=> b!2235582 (= res!956635 (dynLambda!11529 lambda!84461 (h!31695 (toList!1349 (map!5398 (_2!15303 lt!831412))))))))

(declare-fun b!2235583 () Bool)

(assert (=> b!2235583 (= e!1428817 (forall!5395 (t!199808 (toList!1349 (map!5398 (_2!15303 lt!831412)))) lambda!84461))))

(assert (= (and d!665415 (not res!956634)) b!2235582))

(assert (= (and b!2235582 res!956635) b!2235583))

(declare-fun b_lambda!71685 () Bool)

(assert (=> (not b_lambda!71685) (not b!2235582)))

(declare-fun m!2669779 () Bool)

(assert (=> b!2235582 m!2669779))

(declare-fun m!2669781 () Bool)

(assert (=> b!2235583 m!2669781))

(assert (=> b!2235532 d!665415))

(declare-fun bs!454195 () Bool)

(declare-fun b!2235585 () Bool)

(assert (= bs!454195 (and b!2235585 b!2235532)))

(declare-fun lambda!84469 () Int)

(assert (=> bs!454195 (= lambda!84469 lambda!84461)))

(declare-fun bs!454196 () Bool)

(assert (= bs!454196 (and b!2235585 b!2235547)))

(assert (=> bs!454196 (= lambda!84469 lambda!84467)))

(declare-fun d!665417 () Bool)

(declare-fun res!956636 () Bool)

(declare-fun e!1428818 () Bool)

(assert (=> d!665417 (=> (not res!956636) (not e!1428818))))

(assert (=> d!665417 (= res!956636 (valid!2339 (_2!15303 lt!831412)))))

(assert (=> d!665417 (= (validCacheMapDown!306 (_2!15303 lt!831412)) e!1428818)))

(declare-fun b!2235584 () Bool)

(declare-fun res!956637 () Bool)

(assert (=> b!2235584 (=> (not res!956637) (not e!1428818))))

(assert (=> b!2235584 (= res!956637 (invariantList!370 (toList!1349 (map!5398 (_2!15303 lt!831412)))))))

(assert (=> b!2235585 (= e!1428818 (forall!5395 (toList!1349 (map!5398 (_2!15303 lt!831412))) lambda!84469))))

(assert (= (and d!665417 res!956636) b!2235584))

(assert (= (and b!2235584 res!956637) b!2235585))

(declare-fun m!2669783 () Bool)

(assert (=> d!665417 m!2669783))

(assert (=> b!2235584 m!2669750))

(declare-fun m!2669785 () Bool)

(assert (=> b!2235584 m!2669785))

(assert (=> b!2235585 m!2669750))

(declare-fun m!2669787 () Bool)

(assert (=> b!2235585 m!2669787))

(assert (=> b!2235532 d!665417))

(declare-fun bs!454197 () Bool)

(declare-fun b!2235628 () Bool)

(declare-fun b!2235632 () Bool)

(assert (= bs!454197 (and b!2235628 b!2235632)))

(declare-fun lambda!84479 () Int)

(declare-fun lambda!84478 () Int)

(assert (=> bs!454197 (= lambda!84479 lambda!84478)))

(declare-fun bm!134722 () Bool)

(declare-fun call!134733 () Bool)

(declare-fun lt!831534 () ListMap!831)

(declare-fun c!356332 () Bool)

(declare-fun lt!831525 () ListMap!831)

(declare-fun contains!4377 (ListMap!831 tuple3!3982) Bool)

(assert (=> bm!134722 (= call!134733 (contains!4377 (ite c!356332 lt!831525 lt!831534) lt!831414))))

(declare-fun bm!134723 () Bool)

(declare-fun call!134744 () Bool)

(declare-datatypes ((tuple2!25684 0))(
  ( (tuple2!25685 (_1!15304 (_ BitVec 64)) (_2!15304 List!26388)) )
))
(declare-datatypes ((List!26389 0))(
  ( (Nil!26295) (Cons!26295 (h!31696 tuple2!25684) (t!199809 List!26389)) )
))
(declare-datatypes ((ListLongMap!321 0))(
  ( (ListLongMap!322 (toList!1350 List!26389)) )
))
(declare-fun call!134736 () ListLongMap!321)

(declare-fun forall!5397 (List!26389 Int) Bool)

(assert (=> bm!134723 (= call!134744 (forall!5397 (toList!1350 call!134736) (ite c!356332 lambda!84478 lambda!84479)))))

(declare-fun b!2235624 () Bool)

(declare-fun call!134746 () ListMap!831)

(declare-fun lt!831577 () ListMap!831)

(assert (=> b!2235624 (= call!134746 lt!831577)))

(declare-fun lt!831559 () Unit!39228)

(declare-fun Unit!39230 () Unit!39228)

(assert (=> b!2235624 (= lt!831559 Unit!39230)))

(declare-fun call!134754 () Bool)

(assert (=> b!2235624 call!134754))

(declare-fun e!1428841 () Unit!39228)

(declare-fun Unit!39231 () Unit!39228)

(assert (=> b!2235624 (= e!1428841 Unit!39231)))

(declare-fun b!2235625 () Bool)

(declare-fun e!1428846 () Bool)

(declare-fun call!134757 () Bool)

(assert (=> b!2235625 (= e!1428846 call!134757)))

(declare-fun call!134739 () ListMap!831)

(declare-fun call!134728 () ListMap!831)

(declare-fun bm!134724 () Bool)

(declare-fun +!61 (ListMap!831 tuple2!25680) ListMap!831)

(assert (=> bm!134724 (= call!134728 (+!61 call!134739 (tuple2!25681 lt!831414 res!14291)))))

(declare-fun b!2235626 () Bool)

(declare-fun e!1428842 () List!26388)

(declare-fun call!134751 () List!26388)

(assert (=> b!2235626 (= e!1428842 call!134751)))

(declare-fun bm!134725 () Bool)

(declare-fun call!134738 () ListMap!831)

(assert (=> bm!134725 (= call!134746 call!134738)))

(declare-fun call!134742 () Unit!39228)

(declare-fun bm!134726 () Bool)

(declare-fun lt!831567 () ListMap!831)

(declare-fun lt!831541 () ListMap!831)

(declare-fun lemmaEquivalentThenSameContains!14 (ListMap!831 ListMap!831 tuple3!3982) Unit!39228)

(assert (=> bm!134726 (= call!134742 (lemmaEquivalentThenSameContains!14 (ite c!356332 lt!831567 lt!831541) (ite c!356332 lt!831525 lt!831534) lt!831414))))

(declare-fun call!134748 () ListMap!831)

(declare-fun b!2235627 () Bool)

(declare-fun e!1428847 () ListMap!831)

(assert (=> b!2235627 (= e!1428847 (+!61 call!134748 (tuple2!25681 lt!831414 res!14291)))))

(declare-fun bm!134727 () Bool)

(declare-fun call!134727 () ListMap!831)

(assert (=> bm!134727 (= call!134727 call!134738)))

(declare-fun lt!831546 () List!26388)

(declare-fun lt!831547 () ListLongMap!321)

(declare-fun lt!831576 () (_ BitVec 64))

(declare-fun lt!831544 () List!26388)

(declare-fun call!134735 () ListLongMap!321)

(declare-fun bm!134728 () Bool)

(declare-fun lt!831564 () (_ BitVec 64))

(declare-fun +!62 (ListLongMap!321 tuple2!25684) ListLongMap!321)

(assert (=> bm!134728 (= call!134735 (+!62 lt!831547 (ite c!356332 (tuple2!25685 lt!831564 lt!831546) (tuple2!25685 lt!831576 lt!831544))))))

(assert (=> b!2235628 (contains!4377 call!134727 lt!831414)))

(declare-fun lt!831550 () Unit!39228)

(declare-fun Unit!39232 () Unit!39228)

(assert (=> b!2235628 (= lt!831550 Unit!39232)))

(declare-fun call!134729 () ListMap!831)

(assert (=> b!2235628 (contains!4377 call!134729 lt!831414)))

(declare-fun lt!831553 () Unit!39228)

(declare-fun lt!831533 () Unit!39228)

(assert (=> b!2235628 (= lt!831553 lt!831533)))

(declare-fun call!134749 () Bool)

(assert (=> b!2235628 (= call!134749 call!134733)))

(assert (=> b!2235628 (= lt!831533 call!134742)))

(assert (=> b!2235628 (= lt!831534 call!134729)))

(assert (=> b!2235628 (= lt!831541 call!134727)))

(declare-fun lt!831566 () Unit!39228)

(declare-fun Unit!39233 () Unit!39228)

(assert (=> b!2235628 (= lt!831566 Unit!39233)))

(declare-fun call!134756 () Bool)

(assert (=> b!2235628 call!134756))

(declare-fun lt!831531 () Unit!39228)

(declare-fun Unit!39234 () Unit!39228)

(assert (=> b!2235628 (= lt!831531 Unit!39234)))

(declare-fun call!134747 () Bool)

(assert (=> b!2235628 call!134747))

(declare-fun lt!831572 () Unit!39228)

(declare-fun Unit!39235 () Unit!39228)

(assert (=> b!2235628 (= lt!831572 Unit!39235)))

(assert (=> b!2235628 call!134744))

(declare-fun lt!831535 () Unit!39228)

(declare-fun lt!831554 () Unit!39228)

(assert (=> b!2235628 (= lt!831535 lt!831554)))

(declare-fun call!134734 () Bool)

(assert (=> b!2235628 call!134734))

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!14 (ListLongMap!321 (_ BitVec 64) List!26388 tuple3!3982 (InoxSet Context!4006) Hashable!3003) Unit!39228)

(assert (=> b!2235628 (= lt!831554 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!14 lt!831547 lt!831576 lt!831544 lt!831414 res!14291 (hashF!4926 (cache!3384 thiss!28822))))))

(declare-fun lt!831551 () Unit!39228)

(declare-fun lt!831540 () Unit!39228)

(assert (=> b!2235628 (= lt!831551 lt!831540)))

(assert (=> b!2235628 e!1428846))

(declare-fun res!956650 () Bool)

(assert (=> b!2235628 (=> (not res!956650) (not e!1428846))))

(declare-fun call!134752 () Bool)

(assert (=> b!2235628 (= res!956650 call!134752)))

(declare-fun lt!831563 () ListLongMap!321)

(assert (=> b!2235628 (= lt!831563 call!134735)))

(declare-fun call!134740 () Unit!39228)

(assert (=> b!2235628 (= lt!831540 call!134740)))

(declare-fun lt!831539 () Unit!39228)

(declare-fun e!1428851 () Unit!39228)

(assert (=> b!2235628 (= lt!831539 e!1428851)))

(declare-fun c!356331 () Bool)

(declare-fun lt!831565 () List!26388)

(declare-fun isEmpty!14905 (List!26388) Bool)

(assert (=> b!2235628 (= c!356331 (not (isEmpty!14905 lt!831565)))))

(declare-fun e!1428843 () Unit!39228)

(declare-fun Unit!39236 () Unit!39228)

(assert (=> b!2235628 (= e!1428843 Unit!39236)))

(declare-fun bm!134729 () Bool)

(declare-fun call!134737 () Bool)

(declare-fun call!134750 () ListMap!831)

(declare-fun eq!54 (ListMap!831 ListMap!831) Bool)

(assert (=> bm!134729 (= call!134737 (eq!54 call!134750 e!1428847))))

(declare-fun c!356330 () Bool)

(declare-fun c!356336 () Bool)

(assert (=> bm!134729 (= c!356330 c!356336)))

(declare-datatypes ((tuple2!25686 0))(
  ( (tuple2!25687 (_1!15305 Bool) (_2!15305 MutLongMap!3093)) )
))
(declare-fun call!134745 () tuple2!25686)

(declare-fun bm!134730 () Bool)

(declare-fun update!148 (MutLongMap!3093 (_ BitVec 64) List!26388) tuple2!25686)

(assert (=> bm!134730 (= call!134745 (update!148 (v!29896 (underlying!6388 (cache!3384 thiss!28822))) (ite c!356332 lt!831564 lt!831576) (ite c!356332 lt!831546 lt!831544)))))

(declare-fun bm!134731 () Bool)

(assert (=> bm!134731 (= call!134748 (map!5398 (cache!3384 thiss!28822)))))

(declare-fun b!2235629 () Bool)

(declare-fun Unit!39237 () Unit!39228)

(assert (=> b!2235629 (= e!1428851 Unit!39237)))

(declare-fun lt!831556 () tuple2!25686)

(declare-fun b!2235630 () Bool)

(declare-fun lt!831545 () MutableMap!3003)

(declare-fun e!1428850 () tuple2!25682)

(declare-datatypes ((tuple2!25688 0))(
  ( (tuple2!25689 (_1!15306 Unit!39228) (_2!15306 MutableMap!3003)) )
))
(declare-fun Unit!39238 () Unit!39228)

(declare-fun Unit!39239 () Unit!39228)

(assert (=> b!2235630 (= e!1428850 (tuple2!25683 (_1!15305 lt!831556) (_2!15306 (ite (_1!15305 lt!831556) (tuple2!25689 Unit!39238 (HashMap!3003 (Cell!12192 (_2!15305 lt!831556)) (hashF!4926 (cache!3384 thiss!28822)) (bvadd (_size!6234 (cache!3384 thiss!28822)) #b00000000000000000000000000000001) (defaultValue!3165 (cache!3384 thiss!28822)))) (tuple2!25689 Unit!39239 lt!831545)))))))

(declare-fun call!134730 () (_ BitVec 64))

(assert (=> b!2235630 (= lt!831576 call!134730)))

(declare-fun c!356334 () Bool)

(declare-fun contains!4378 (MutLongMap!3093 (_ BitVec 64)) Bool)

(assert (=> b!2235630 (= c!356334 (contains!4378 (v!29896 (underlying!6388 (cache!3384 thiss!28822))) lt!831576))))

(assert (=> b!2235630 (= lt!831565 e!1428842)))

(assert (=> b!2235630 (= lt!831544 (Cons!26294 (tuple2!25681 lt!831414 res!14291) lt!831565))))

(assert (=> b!2235630 (= lt!831556 call!134745)))

(assert (=> b!2235630 (= lt!831545 (HashMap!3003 (Cell!12192 (_2!15305 lt!831556)) (hashF!4926 (cache!3384 thiss!28822)) (_size!6234 (cache!3384 thiss!28822)) (defaultValue!3165 (cache!3384 thiss!28822))))))

(declare-fun c!356335 () Bool)

(assert (=> b!2235630 (= c!356335 (_1!15305 lt!831556))))

(declare-fun lt!831573 () Unit!39228)

(assert (=> b!2235630 (= lt!831573 e!1428843)))

(declare-fun bm!134732 () Bool)

(declare-fun lt!831529 () tuple2!25682)

(assert (=> bm!134732 (= call!134750 (map!5398 (_2!15303 lt!831529)))))

(declare-fun b!2235631 () Bool)

(assert (=> b!2235631 (= e!1428847 call!134748)))

(assert (=> b!2235632 call!134756))

(declare-fun lt!831562 () Unit!39228)

(declare-fun Unit!39240 () Unit!39228)

(assert (=> b!2235632 (= lt!831562 Unit!39240)))

(assert (=> b!2235632 call!134747))

(declare-fun lt!831561 () Unit!39228)

(declare-fun Unit!39241 () Unit!39228)

(assert (=> b!2235632 (= lt!831561 Unit!39241)))

(assert (=> b!2235632 call!134744))

(declare-fun lt!831530 () Unit!39228)

(declare-fun lt!831552 () Unit!39228)

(assert (=> b!2235632 (= lt!831530 lt!831552)))

(assert (=> b!2235632 (= call!134749 call!134733)))

(assert (=> b!2235632 (= lt!831552 call!134742)))

(assert (=> b!2235632 (= lt!831525 call!134729)))

(assert (=> b!2235632 (= lt!831567 call!134746)))

(declare-fun lt!831528 () Unit!39228)

(declare-fun lt!831578 () Unit!39228)

(assert (=> b!2235632 (= lt!831528 lt!831578)))

(assert (=> b!2235632 call!134734))

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!14 (ListLongMap!321 (_ BitVec 64) List!26388 tuple3!3982 (InoxSet Context!4006) Hashable!3003) Unit!39228)

(assert (=> b!2235632 (= lt!831578 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!14 lt!831547 lt!831564 lt!831546 lt!831414 res!14291 (hashF!4926 (cache!3384 thiss!28822))))))

(declare-fun lt!831569 () Unit!39228)

(declare-fun lt!831538 () Unit!39228)

(assert (=> b!2235632 (= lt!831569 lt!831538)))

(declare-fun e!1428849 () Bool)

(assert (=> b!2235632 e!1428849))

(declare-fun res!956648 () Bool)

(assert (=> b!2235632 (=> (not res!956648) (not e!1428849))))

(assert (=> b!2235632 (= res!956648 call!134752)))

(declare-fun lt!831557 () ListLongMap!321)

(assert (=> b!2235632 (= lt!831557 call!134735)))

(assert (=> b!2235632 (= lt!831538 call!134740)))

(declare-fun lt!831555 () Unit!39228)

(declare-fun Unit!39242 () Unit!39228)

(assert (=> b!2235632 (= lt!831555 Unit!39242)))

(declare-fun noDuplicateKeys!39 (List!26388) Bool)

(assert (=> b!2235632 (noDuplicateKeys!39 lt!831546)))

(declare-fun lt!831526 () Unit!39228)

(declare-fun Unit!39243 () Unit!39228)

(assert (=> b!2235632 (= lt!831526 Unit!39243)))

(declare-fun call!134741 () List!26388)

(declare-fun containsKey!75 (List!26388 tuple3!3982) Bool)

(assert (=> b!2235632 (not (containsKey!75 call!134741 lt!831414))))

(declare-fun lt!831558 () Unit!39228)

(declare-fun Unit!39244 () Unit!39228)

(assert (=> b!2235632 (= lt!831558 Unit!39244)))

(declare-fun lt!831532 () Unit!39228)

(declare-fun lt!831570 () Unit!39228)

(assert (=> b!2235632 (= lt!831532 lt!831570)))

(assert (=> b!2235632 (noDuplicateKeys!39 call!134741)))

(declare-fun lt!831560 () List!26388)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!33 (List!26388 tuple3!3982) Unit!39228)

(assert (=> b!2235632 (= lt!831570 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!33 lt!831560 lt!831414))))

(declare-fun lt!831527 () Unit!39228)

(declare-fun lt!831537 () Unit!39228)

(assert (=> b!2235632 (= lt!831527 lt!831537)))

(declare-fun call!134753 () Bool)

(assert (=> b!2235632 call!134753))

(declare-fun call!134743 () Unit!39228)

(assert (=> b!2235632 (= lt!831537 call!134743)))

(declare-fun lt!831571 () Unit!39228)

(declare-fun lt!831548 () Unit!39228)

(assert (=> b!2235632 (= lt!831571 lt!831548)))

(declare-fun call!134731 () Bool)

(assert (=> b!2235632 call!134731))

(declare-fun call!134755 () Unit!39228)

(assert (=> b!2235632 (= lt!831548 call!134755)))

(declare-fun Unit!39245 () Unit!39228)

(assert (=> b!2235632 (= e!1428841 Unit!39245)))

(declare-fun b!2235633 () Bool)

(assert (=> b!2235633 (= e!1428842 Nil!26294)))

(declare-fun b!2235634 () Bool)

(assert (=> b!2235634 (= e!1428849 call!134757)))

(declare-fun bm!134733 () Bool)

(declare-fun allKeysSameHashInMap!107 (ListLongMap!321 Hashable!3003) Bool)

(assert (=> bm!134733 (= call!134757 (allKeysSameHashInMap!107 (ite c!356332 lt!831557 lt!831563) (hashF!4926 (cache!3384 thiss!28822))))))

(declare-fun lt!831536 () tuple2!25686)

(declare-fun bm!134734 () Bool)

(declare-fun map!5399 (MutLongMap!3093) ListLongMap!321)

(assert (=> bm!134734 (= call!134736 (map!5399 (ite c!356332 (_2!15305 lt!831536) (_2!15305 lt!831556))))))

(declare-fun d!665419 () Bool)

(declare-fun e!1428848 () Bool)

(assert (=> d!665419 e!1428848))

(declare-fun res!956651 () Bool)

(assert (=> d!665419 (=> (not res!956651) (not e!1428848))))

(assert (=> d!665419 (= res!956651 ((_ is HashMap!3003) (_2!15303 lt!831529)))))

(declare-fun lt!831568 () tuple2!25682)

(assert (=> d!665419 (= lt!831529 (tuple2!25683 (_1!15303 lt!831568) (_2!15303 lt!831568)))))

(assert (=> d!665419 (= lt!831568 e!1428850)))

(declare-fun contains!4379 (MutableMap!3003 tuple3!3982) Bool)

(assert (=> d!665419 (= c!356332 (contains!4379 (cache!3384 thiss!28822) lt!831414))))

(assert (=> d!665419 (= lt!831547 (map!5399 (v!29896 (underlying!6388 (cache!3384 thiss!28822)))))))

(assert (=> d!665419 (= lt!831577 (map!5398 (cache!3384 thiss!28822)))))

(assert (=> d!665419 (valid!2339 (cache!3384 thiss!28822))))

(assert (=> d!665419 (= (update!147 (cache!3384 thiss!28822) lt!831414 res!14291) lt!831529)))

(declare-fun b!2235635 () Bool)

(declare-fun lt!831542 () Unit!39228)

(assert (=> b!2235635 (= e!1428851 lt!831542)))

(declare-fun lt!831575 () Unit!39228)

(assert (=> b!2235635 (= lt!831575 call!134755)))

(assert (=> b!2235635 call!134731))

(declare-fun lt!831549 () Unit!39228)

(assert (=> b!2235635 (= lt!831549 lt!831575)))

(assert (=> b!2235635 (= lt!831542 call!134743)))

(assert (=> b!2235635 call!134753))

(declare-fun b!2235636 () Bool)

(declare-fun e!1428845 () Bool)

(assert (=> b!2235636 (= e!1428845 call!134737)))

(declare-fun bm!134735 () Bool)

(assert (=> bm!134735 (= call!134756 (eq!54 (ite c!356332 call!134746 call!134727) call!134729))))

(declare-fun bm!134736 () Bool)

(assert (=> bm!134736 (= call!134747 (allKeysSameHashInMap!107 call!134736 (hashF!4926 (cache!3384 thiss!28822))))))

(declare-fun bm!134737 () Bool)

(assert (=> bm!134737 (= call!134729 (+!61 lt!831577 (tuple2!25681 lt!831414 res!14291)))))

(declare-fun bm!134738 () Bool)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!33 (List!26389 (_ BitVec 64) List!26388 Hashable!3003) Unit!39228)

(assert (=> bm!134738 (= call!134755 (lemmaInLongMapAllKeySameHashThenForTuple!33 (toList!1350 lt!831547) (ite c!356332 lt!831564 lt!831576) (ite c!356332 lt!831560 lt!831565) (hashF!4926 (cache!3384 thiss!28822))))))

(declare-fun bm!134739 () Bool)

(declare-fun extractMap!106 (List!26389) ListMap!831)

(assert (=> bm!134739 (= call!134739 (extractMap!106 (toList!1350 lt!831547)))))

(declare-fun b!2235637 () Bool)

(assert (=> b!2235637 (= call!134727 lt!831577)))

(declare-fun lt!831579 () Unit!39228)

(declare-fun Unit!39246 () Unit!39228)

(assert (=> b!2235637 (= lt!831579 Unit!39246)))

(assert (=> b!2235637 call!134754))

(declare-fun Unit!39247 () Unit!39228)

(assert (=> b!2235637 (= e!1428843 Unit!39247)))

(declare-fun bm!134740 () Bool)

(declare-fun call!134732 () ListMap!831)

(assert (=> bm!134740 (= call!134732 (extractMap!106 (toList!1350 call!134735)))))

(declare-fun b!2235638 () Bool)

(declare-fun e!1428844 () Bool)

(assert (=> b!2235638 (= e!1428844 e!1428845)))

(declare-fun res!956649 () Bool)

(assert (=> b!2235638 (= res!956649 (contains!4377 call!134750 lt!831414))))

(assert (=> b!2235638 (=> (not res!956649) (not e!1428845))))

(declare-fun bm!134741 () Bool)

(declare-fun apply!6467 (MutLongMap!3093 (_ BitVec 64)) List!26388)

(assert (=> bm!134741 (= call!134751 (apply!6467 (v!29896 (underlying!6388 (cache!3384 thiss!28822))) (ite c!356332 lt!831564 lt!831576)))))

(declare-fun bm!134742 () Bool)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!33 (ListLongMap!321 (_ BitVec 64) List!26388 Hashable!3003) Unit!39228)

(assert (=> bm!134742 (= call!134740 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!33 lt!831547 (ite c!356332 lt!831564 lt!831576) (ite c!356332 lt!831546 lt!831544) (hashF!4926 (cache!3384 thiss!28822))))))

(declare-fun bm!134743 () Bool)

(assert (=> bm!134743 (= call!134734 (eq!54 call!134732 call!134728))))

(declare-fun lt!831543 () MutableMap!3003)

(declare-fun bm!134744 () Bool)

(assert (=> bm!134744 (= call!134754 (valid!2339 (ite c!356332 lt!831543 lt!831545)))))

(declare-fun bm!134745 () Bool)

(assert (=> bm!134745 (= call!134749 (contains!4377 (ite c!356332 lt!831567 lt!831541) lt!831414))))

(declare-fun b!2235639 () Bool)

(assert (=> b!2235639 (= e!1428848 e!1428844)))

(assert (=> b!2235639 (= c!356336 (_1!15303 lt!831529))))

(declare-fun bm!134746 () Bool)

(declare-fun hash!573 (Hashable!3003 tuple3!3982) (_ BitVec 64))

(assert (=> bm!134746 (= call!134730 (hash!573 (hashF!4926 (cache!3384 thiss!28822)) lt!831414))))

(declare-fun b!2235640 () Bool)

(declare-fun res!956652 () Bool)

(assert (=> b!2235640 (=> (not res!956652) (not e!1428848))))

(assert (=> b!2235640 (= res!956652 (valid!2339 (_2!15303 lt!831529)))))

(declare-fun bm!134747 () Bool)

(declare-fun allKeysSameHash!37 (List!26388 (_ BitVec 64) Hashable!3003) Bool)

(assert (=> bm!134747 (= call!134731 (allKeysSameHash!37 (ite c!356332 lt!831560 lt!831565) (ite c!356332 lt!831564 lt!831576) (hashF!4926 (cache!3384 thiss!28822))))))

(declare-fun bm!134748 () Bool)

(declare-fun removePairForKey!33 (List!26388 tuple3!3982) List!26388)

(assert (=> bm!134748 (= call!134741 (removePairForKey!33 (ite c!356332 lt!831560 lt!831565) lt!831414))))

(declare-fun bm!134749 () Bool)

(assert (=> bm!134749 (= call!134753 (allKeysSameHash!37 call!134741 (ite c!356332 lt!831564 lt!831576) (hashF!4926 (cache!3384 thiss!28822))))))

(declare-fun b!2235641 () Bool)

(declare-fun Unit!39248 () Unit!39228)

(declare-fun Unit!39249 () Unit!39228)

(assert (=> b!2235641 (= e!1428850 (tuple2!25683 (_1!15305 lt!831536) (_2!15306 (ite false (tuple2!25689 Unit!39248 (HashMap!3003 (Cell!12192 (_2!15305 lt!831536)) (hashF!4926 (cache!3384 thiss!28822)) (bvadd (_size!6234 (cache!3384 thiss!28822)) #b00000000000000000000000000000001) (defaultValue!3165 (cache!3384 thiss!28822)))) (tuple2!25689 Unit!39249 lt!831543)))))))

(assert (=> b!2235641 (= lt!831564 call!134730)))

(assert (=> b!2235641 (= lt!831560 call!134751)))

(assert (=> b!2235641 (= lt!831546 (Cons!26294 (tuple2!25681 lt!831414 res!14291) call!134741))))

(assert (=> b!2235641 (= lt!831536 call!134745)))

(assert (=> b!2235641 (= lt!831543 (HashMap!3003 (Cell!12192 (_2!15305 lt!831536)) (hashF!4926 (cache!3384 thiss!28822)) (_size!6234 (cache!3384 thiss!28822)) (defaultValue!3165 (cache!3384 thiss!28822))))))

(declare-fun c!356333 () Bool)

(assert (=> b!2235641 (= c!356333 (_1!15305 lt!831536))))

(declare-fun lt!831574 () Unit!39228)

(assert (=> b!2235641 (= lt!831574 e!1428841)))

(declare-fun b!2235642 () Bool)

(assert (=> b!2235642 (= e!1428844 call!134737)))

(declare-fun bm!134750 () Bool)

(declare-fun lemmaRemovePairForKeyPreservesHash!33 (List!26388 tuple3!3982 (_ BitVec 64) Hashable!3003) Unit!39228)

(assert (=> bm!134750 (= call!134743 (lemmaRemovePairForKeyPreservesHash!33 (ite c!356332 lt!831560 lt!831565) lt!831414 (ite c!356332 lt!831564 lt!831576) (hashF!4926 (cache!3384 thiss!28822))))))

(declare-fun bm!134751 () Bool)

(assert (=> bm!134751 (= call!134752 (forall!5397 (ite c!356332 (toList!1350 lt!831557) (toList!1350 lt!831563)) (ite c!356332 lambda!84478 lambda!84479)))))

(declare-fun bm!134752 () Bool)

(assert (=> bm!134752 (= call!134738 (map!5398 (ite c!356332 lt!831543 lt!831545)))))

(assert (= (and d!665419 c!356332) b!2235641))

(assert (= (and d!665419 (not c!356332)) b!2235630))

(assert (= (and b!2235641 c!356333) b!2235632))

(assert (= (and b!2235641 (not c!356333)) b!2235624))

(assert (= (and b!2235632 res!956648) b!2235634))

(assert (= (or b!2235632 b!2235624) bm!134725))

(assert (= (and b!2235630 c!356334) b!2235626))

(assert (= (and b!2235630 (not c!356334)) b!2235633))

(assert (= (and b!2235630 c!356335) b!2235628))

(assert (= (and b!2235630 (not c!356335)) b!2235637))

(assert (= (and b!2235628 c!356331) b!2235635))

(assert (= (and b!2235628 (not c!356331)) b!2235629))

(assert (= (and b!2235628 res!956650) b!2235625))

(assert (= (or b!2235628 b!2235637) bm!134727))

(assert (= (or b!2235632 b!2235628) bm!134751))

(assert (= (or b!2235632 b!2235628) bm!134734))

(assert (= (or b!2235632 b!2235628) bm!134722))

(assert (= (or b!2235632 b!2235628) bm!134728))

(assert (= (or b!2235641 b!2235630) bm!134730))

(assert (= (or b!2235632 b!2235635) bm!134738))

(assert (= (or b!2235634 b!2235625) bm!134733))

(assert (= (or bm!134725 bm!134727) bm!134752))

(assert (= (or b!2235632 b!2235628) bm!134737))

(assert (= (or b!2235632 b!2235635) bm!134750))

(assert (= (or b!2235632 b!2235628) bm!134745))

(assert (= (or b!2235632 b!2235628) bm!134742))

(assert (= (or b!2235632 b!2235628) bm!134739))

(assert (= (or b!2235624 b!2235637) bm!134744))

(assert (= (or b!2235641 b!2235626) bm!134741))

(assert (= (or b!2235641 b!2235632 b!2235635) bm!134748))

(assert (= (or b!2235641 b!2235630) bm!134746))

(assert (= (or b!2235632 b!2235628) bm!134726))

(assert (= (or b!2235632 b!2235635) bm!134747))

(assert (= (or b!2235632 b!2235635) bm!134749))

(assert (= (or b!2235632 b!2235628) bm!134736))

(assert (= (or b!2235632 b!2235628) bm!134740))

(assert (= (or b!2235632 b!2235628) bm!134735))

(assert (= (or b!2235632 b!2235628) bm!134724))

(assert (= (or b!2235632 b!2235628) bm!134723))

(assert (= (or b!2235632 b!2235628) bm!134743))

(assert (= (and d!665419 res!956651) b!2235640))

(assert (= (and b!2235640 res!956652) b!2235639))

(assert (= (and b!2235639 c!356336) b!2235638))

(assert (= (and b!2235639 (not c!356336)) b!2235642))

(assert (= (and b!2235638 res!956649) b!2235636))

(assert (= (or b!2235638 b!2235636 b!2235642) bm!134732))

(assert (= (or b!2235636 b!2235642) bm!134731))

(assert (= (or b!2235636 b!2235642) bm!134729))

(assert (= (and bm!134729 c!356330) b!2235627))

(assert (= (and bm!134729 (not c!356330)) b!2235631))

(declare-fun m!2669789 () Bool)

(assert (=> bm!134743 m!2669789))

(declare-fun m!2669791 () Bool)

(assert (=> bm!134736 m!2669791))

(declare-fun m!2669793 () Bool)

(assert (=> bm!134752 m!2669793))

(declare-fun m!2669795 () Bool)

(assert (=> b!2235627 m!2669795))

(declare-fun m!2669797 () Bool)

(assert (=> bm!134723 m!2669797))

(declare-fun m!2669799 () Bool)

(assert (=> bm!134735 m!2669799))

(declare-fun m!2669801 () Bool)

(assert (=> bm!134746 m!2669801))

(declare-fun m!2669803 () Bool)

(assert (=> d!665419 m!2669803))

(declare-fun m!2669805 () Bool)

(assert (=> d!665419 m!2669805))

(assert (=> d!665419 m!2669765))

(assert (=> d!665419 m!2669763))

(declare-fun m!2669807 () Bool)

(assert (=> bm!134728 m!2669807))

(declare-fun m!2669809 () Bool)

(assert (=> bm!134734 m!2669809))

(declare-fun m!2669811 () Bool)

(assert (=> bm!134730 m!2669811))

(declare-fun m!2669813 () Bool)

(assert (=> bm!134747 m!2669813))

(declare-fun m!2669815 () Bool)

(assert (=> b!2235640 m!2669815))

(declare-fun m!2669817 () Bool)

(assert (=> bm!134737 m!2669817))

(declare-fun m!2669819 () Bool)

(assert (=> bm!134749 m!2669819))

(declare-fun m!2669821 () Bool)

(assert (=> bm!134726 m!2669821))

(declare-fun m!2669823 () Bool)

(assert (=> bm!134739 m!2669823))

(declare-fun m!2669825 () Bool)

(assert (=> b!2235638 m!2669825))

(declare-fun m!2669827 () Bool)

(assert (=> bm!134750 m!2669827))

(declare-fun m!2669829 () Bool)

(assert (=> b!2235630 m!2669829))

(declare-fun m!2669831 () Bool)

(assert (=> bm!134748 m!2669831))

(declare-fun m!2669833 () Bool)

(assert (=> b!2235628 m!2669833))

(declare-fun m!2669835 () Bool)

(assert (=> b!2235628 m!2669835))

(declare-fun m!2669837 () Bool)

(assert (=> b!2235628 m!2669837))

(declare-fun m!2669839 () Bool)

(assert (=> b!2235628 m!2669839))

(declare-fun m!2669841 () Bool)

(assert (=> bm!134745 m!2669841))

(declare-fun m!2669843 () Bool)

(assert (=> bm!134744 m!2669843))

(declare-fun m!2669845 () Bool)

(assert (=> bm!134733 m!2669845))

(declare-fun m!2669847 () Bool)

(assert (=> bm!134738 m!2669847))

(declare-fun m!2669849 () Bool)

(assert (=> bm!134722 m!2669849))

(declare-fun m!2669851 () Bool)

(assert (=> bm!134740 m!2669851))

(declare-fun m!2669853 () Bool)

(assert (=> bm!134729 m!2669853))

(declare-fun m!2669855 () Bool)

(assert (=> b!2235632 m!2669855))

(declare-fun m!2669857 () Bool)

(assert (=> b!2235632 m!2669857))

(declare-fun m!2669859 () Bool)

(assert (=> b!2235632 m!2669859))

(declare-fun m!2669861 () Bool)

(assert (=> b!2235632 m!2669861))

(declare-fun m!2669863 () Bool)

(assert (=> b!2235632 m!2669863))

(assert (=> bm!134731 m!2669765))

(declare-fun m!2669865 () Bool)

(assert (=> bm!134751 m!2669865))

(declare-fun m!2669867 () Bool)

(assert (=> bm!134732 m!2669867))

(declare-fun m!2669869 () Bool)

(assert (=> bm!134724 m!2669869))

(declare-fun m!2669871 () Bool)

(assert (=> bm!134741 m!2669871))

(declare-fun m!2669873 () Bool)

(assert (=> bm!134742 m!2669873))

(assert (=> b!2235532 d!665419))

(declare-fun d!665421 () Bool)

(declare-fun lt!831582 () ListMap!831)

(assert (=> d!665421 (invariantList!370 (toList!1349 lt!831582))))

(assert (=> d!665421 (= lt!831582 (extractMap!106 (toList!1350 (map!5399 (v!29896 (underlying!6388 (_2!15303 lt!831412)))))))))

(assert (=> d!665421 (valid!2339 (_2!15303 lt!831412))))

(assert (=> d!665421 (= (map!5398 (_2!15303 lt!831412)) lt!831582)))

(declare-fun bs!454198 () Bool)

(assert (= bs!454198 d!665421))

(declare-fun m!2669875 () Bool)

(assert (=> bs!454198 m!2669875))

(declare-fun m!2669877 () Bool)

(assert (=> bs!454198 m!2669877))

(declare-fun m!2669879 () Bool)

(assert (=> bs!454198 m!2669879))

(assert (=> bs!454198 m!2669783))

(assert (=> b!2235532 d!665421))

(declare-fun d!665423 () Bool)

(declare-fun e!1428854 () Bool)

(assert (=> d!665423 e!1428854))

(declare-fun res!956655 () Bool)

(assert (=> d!665423 (=> (not res!956655) (not e!1428854))))

(assert (=> d!665423 (= res!956655 (and (or (not ((_ is HashMap!3003) (cache!3384 thiss!28822))) ((_ is HashMap!3003) (cache!3384 thiss!28822))) ((_ is HashMap!3003) (cache!3384 thiss!28822))))))

(declare-fun lt!831596 () Unit!39228)

(declare-fun choose!13137 (MutableMap!3003 tuple3!3982 (InoxSet Context!4006) Int) Unit!39228)

(assert (=> d!665423 (= lt!831596 (choose!13137 (cache!3384 thiss!28822) lt!831414 res!14291 lambda!84461))))

(assert (=> d!665423 (valid!2339 (cache!3384 thiss!28822))))

(assert (=> d!665423 (= (lemmaUpdatePreservesForallPairs!24 (cache!3384 thiss!28822) lt!831414 res!14291 lambda!84461) lt!831596)))

(declare-fun b!2235645 () Bool)

(declare-fun lt!831598 () MutableMap!3003)

(assert (=> b!2235645 (= e!1428854 (forall!5395 (toList!1349 (map!5398 lt!831598)) lambda!84461))))

(assert (=> b!2235645 ((_ is HashMap!3003) lt!831598)))

(declare-fun lt!831599 () MutableMap!3003)

(assert (=> b!2235645 (= lt!831598 lt!831599)))

(assert (=> b!2235645 ((_ is HashMap!3003) lt!831599)))

(declare-fun lt!831595 () MutableMap!3003)

(assert (=> b!2235645 (= lt!831599 lt!831595)))

(assert (=> b!2235645 ((_ is HashMap!3003) lt!831595)))

(declare-fun lt!831597 () tuple2!25682)

(assert (=> b!2235645 (= lt!831595 (_2!15303 lt!831597))))

(assert (=> b!2235645 ((_ is HashMap!3003) (_2!15303 lt!831597))))

(declare-fun lt!831600 () tuple2!25682)

(assert (=> b!2235645 (= lt!831597 lt!831600)))

(assert (=> b!2235645 ((_ is HashMap!3003) (_2!15303 lt!831600))))

(assert (=> b!2235645 (= lt!831600 (update!147 (cache!3384 thiss!28822) lt!831414 res!14291))))

(assert (= (and d!665423 res!956655) b!2235645))

(declare-fun m!2669881 () Bool)

(assert (=> d!665423 m!2669881))

(assert (=> d!665423 m!2669763))

(declare-fun m!2669883 () Bool)

(assert (=> b!2235645 m!2669883))

(declare-fun m!2669885 () Bool)

(assert (=> b!2235645 m!2669885))

(assert (=> b!2235645 m!2669746))

(assert (=> b!2235532 d!665423))

(declare-fun call!134770 () List!26387)

(declare-fun call!134772 () (InoxSet Context!4006))

(declare-fun c!356348 () Bool)

(declare-fun bm!134765 () Bool)

(assert (=> bm!134765 (= call!134772 (derivationStepZipperDown!66 (ite c!356348 (regOne!13423 r!4773) (regOne!13422 r!4773)) (ite c!356348 ctx!56 (Context!4007 call!134770)) a!1010))))

(declare-fun b!2235668 () Bool)

(declare-fun e!1428872 () Bool)

(assert (=> b!2235668 (= e!1428872 (nullable!1781 (regOne!13422 r!4773)))))

(declare-fun d!665425 () Bool)

(declare-fun c!356347 () Bool)

(assert (=> d!665425 (= c!356347 (and ((_ is ElementMatch!6455) r!4773) (= (c!356309 r!4773) a!1010)))))

(declare-fun e!1428869 () (InoxSet Context!4006))

(assert (=> d!665425 (= (derivationStepZipperDown!66 r!4773 ctx!56 a!1010) e!1428869)))

(declare-fun b!2235669 () Bool)

(assert (=> b!2235669 (= e!1428869 (store ((as const (Array Context!4006 Bool)) false) ctx!56 true))))

(declare-fun b!2235670 () Bool)

(declare-fun e!1428868 () (InoxSet Context!4006))

(declare-fun call!134775 () (InoxSet Context!4006))

(assert (=> b!2235670 (= e!1428868 ((_ map or) call!134772 call!134775))))

(declare-fun b!2235671 () Bool)

(declare-fun e!1428867 () (InoxSet Context!4006))

(declare-fun call!134771 () (InoxSet Context!4006))

(assert (=> b!2235671 (= e!1428867 call!134771)))

(declare-fun c!356350 () Bool)

(declare-fun c!356351 () Bool)

(declare-fun bm!134766 () Bool)

(declare-fun $colon$colon!530 (List!26387 Regex!6455) List!26387)

(assert (=> bm!134766 (= call!134770 ($colon$colon!530 (exprs!2503 ctx!56) (ite (or c!356350 c!356351) (regTwo!13422 r!4773) r!4773)))))

(declare-fun bm!134767 () Bool)

(assert (=> bm!134767 (= call!134771 call!134775)))

(declare-fun b!2235672 () Bool)

(assert (=> b!2235672 (= e!1428868 e!1428867)))

(assert (=> b!2235672 (= c!356351 ((_ is Concat!10793) r!4773))))

(declare-fun bm!134768 () Bool)

(declare-fun call!134774 () (InoxSet Context!4006))

(assert (=> bm!134768 (= call!134775 call!134774)))

(declare-fun b!2235673 () Bool)

(declare-fun c!356349 () Bool)

(assert (=> b!2235673 (= c!356349 ((_ is Star!6455) r!4773))))

(declare-fun e!1428871 () (InoxSet Context!4006))

(assert (=> b!2235673 (= e!1428867 e!1428871)))

(declare-fun b!2235674 () Bool)

(assert (=> b!2235674 (= e!1428871 ((as const (Array Context!4006 Bool)) false))))

(declare-fun b!2235675 () Bool)

(declare-fun e!1428870 () (InoxSet Context!4006))

(assert (=> b!2235675 (= e!1428869 e!1428870)))

(assert (=> b!2235675 (= c!356348 ((_ is Union!6455) r!4773))))

(declare-fun b!2235676 () Bool)

(assert (=> b!2235676 (= e!1428870 ((_ map or) call!134772 call!134774))))

(declare-fun bm!134769 () Bool)

(declare-fun call!134773 () List!26387)

(assert (=> bm!134769 (= call!134774 (derivationStepZipperDown!66 (ite c!356348 (regTwo!13423 r!4773) (ite c!356350 (regTwo!13422 r!4773) (ite c!356351 (regOne!13422 r!4773) (reg!6784 r!4773)))) (ite (or c!356348 c!356350) ctx!56 (Context!4007 call!134773)) a!1010))))

(declare-fun b!2235677 () Bool)

(assert (=> b!2235677 (= e!1428871 call!134771)))

(declare-fun b!2235678 () Bool)

(assert (=> b!2235678 (= c!356350 e!1428872)))

(declare-fun res!956658 () Bool)

(assert (=> b!2235678 (=> (not res!956658) (not e!1428872))))

(assert (=> b!2235678 (= res!956658 ((_ is Concat!10793) r!4773))))

(assert (=> b!2235678 (= e!1428870 e!1428868)))

(declare-fun bm!134770 () Bool)

(assert (=> bm!134770 (= call!134773 call!134770)))

(assert (= (and d!665425 c!356347) b!2235669))

(assert (= (and d!665425 (not c!356347)) b!2235675))

(assert (= (and b!2235675 c!356348) b!2235676))

(assert (= (and b!2235675 (not c!356348)) b!2235678))

(assert (= (and b!2235678 res!956658) b!2235668))

(assert (= (and b!2235678 c!356350) b!2235670))

(assert (= (and b!2235678 (not c!356350)) b!2235672))

(assert (= (and b!2235672 c!356351) b!2235671))

(assert (= (and b!2235672 (not c!356351)) b!2235673))

(assert (= (and b!2235673 c!356349) b!2235677))

(assert (= (and b!2235673 (not c!356349)) b!2235674))

(assert (= (or b!2235671 b!2235677) bm!134770))

(assert (= (or b!2235671 b!2235677) bm!134767))

(assert (= (or b!2235670 bm!134767) bm!134768))

(assert (= (or b!2235670 bm!134770) bm!134766))

(assert (= (or b!2235676 bm!134768) bm!134769))

(assert (= (or b!2235676 b!2235670) bm!134765))

(declare-fun m!2669887 () Bool)

(assert (=> bm!134765 m!2669887))

(declare-fun m!2669889 () Bool)

(assert (=> bm!134766 m!2669889))

(declare-fun m!2669891 () Bool)

(assert (=> b!2235668 m!2669891))

(declare-fun m!2669893 () Bool)

(assert (=> b!2235669 m!2669893))

(declare-fun m!2669895 () Bool)

(assert (=> bm!134769 m!2669895))

(assert (=> b!2235527 d!665425))

(declare-fun b!2235683 () Bool)

(declare-fun e!1428875 () Bool)

(declare-fun tp!702485 () Bool)

(declare-fun tp!702486 () Bool)

(assert (=> b!2235683 (= e!1428875 (and tp!702485 tp!702486))))

(assert (=> b!2235530 (= tp!702470 e!1428875)))

(assert (= (and b!2235530 ((_ is Cons!26293) (exprs!2503 setElem!20350))) b!2235683))

(declare-fun b!2235695 () Bool)

(declare-fun e!1428878 () Bool)

(declare-fun tp!702498 () Bool)

(declare-fun tp!702499 () Bool)

(assert (=> b!2235695 (= e!1428878 (and tp!702498 tp!702499))))

(assert (=> b!2235525 (= tp!702469 e!1428878)))

(declare-fun b!2235696 () Bool)

(declare-fun tp!702497 () Bool)

(assert (=> b!2235696 (= e!1428878 tp!702497)))

(declare-fun b!2235694 () Bool)

(assert (=> b!2235694 (= e!1428878 tp_is_empty!10135)))

(declare-fun b!2235697 () Bool)

(declare-fun tp!702500 () Bool)

(declare-fun tp!702501 () Bool)

(assert (=> b!2235697 (= e!1428878 (and tp!702500 tp!702501))))

(assert (= (and b!2235525 ((_ is ElementMatch!6455) (reg!6784 r!4773))) b!2235694))

(assert (= (and b!2235525 ((_ is Concat!10793) (reg!6784 r!4773))) b!2235695))

(assert (= (and b!2235525 ((_ is Star!6455) (reg!6784 r!4773))) b!2235696))

(assert (= (and b!2235525 ((_ is Union!6455) (reg!6784 r!4773))) b!2235697))

(declare-fun condSetEmpty!20353 () Bool)

(assert (=> setNonEmpty!20350 (= condSetEmpty!20353 (= setRest!20350 ((as const (Array Context!4006 Bool)) false)))))

(declare-fun setRes!20353 () Bool)

(assert (=> setNonEmpty!20350 (= tp!702478 setRes!20353)))

(declare-fun setIsEmpty!20353 () Bool)

(assert (=> setIsEmpty!20353 setRes!20353))

(declare-fun setNonEmpty!20353 () Bool)

(declare-fun setElem!20353 () Context!4006)

(declare-fun e!1428881 () Bool)

(declare-fun tp!702506 () Bool)

(assert (=> setNonEmpty!20353 (= setRes!20353 (and tp!702506 (inv!35714 setElem!20353) e!1428881))))

(declare-fun setRest!20353 () (InoxSet Context!4006))

(assert (=> setNonEmpty!20353 (= setRest!20350 ((_ map or) (store ((as const (Array Context!4006 Bool)) false) setElem!20353 true) setRest!20353))))

(declare-fun b!2235702 () Bool)

(declare-fun tp!702507 () Bool)

(assert (=> b!2235702 (= e!1428881 tp!702507)))

(assert (= (and setNonEmpty!20350 condSetEmpty!20353) setIsEmpty!20353))

(assert (= (and setNonEmpty!20350 (not condSetEmpty!20353)) setNonEmpty!20353))

(assert (= setNonEmpty!20353 b!2235702))

(declare-fun m!2669897 () Bool)

(assert (=> setNonEmpty!20353 m!2669897))

(declare-fun b!2235717 () Bool)

(declare-fun e!1428899 () Bool)

(declare-fun tp!702536 () Bool)

(assert (=> b!2235717 (= e!1428899 tp!702536)))

(declare-fun setIsEmpty!20358 () Bool)

(declare-fun setRes!20358 () Bool)

(assert (=> setIsEmpty!20358 setRes!20358))

(declare-fun condMapEmpty!14543 () Bool)

(declare-fun mapDefault!14543 () List!26388)

(assert (=> mapNonEmpty!14540 (= condMapEmpty!14543 (= mapRest!14540 ((as const (Array (_ BitVec 32) List!26388)) mapDefault!14543)))))

(declare-fun e!1428895 () Bool)

(declare-fun mapRes!14543 () Bool)

(assert (=> mapNonEmpty!14540 (= tp!702466 (and e!1428895 mapRes!14543))))

(declare-fun mapIsEmpty!14543 () Bool)

(assert (=> mapIsEmpty!14543 mapRes!14543))

(declare-fun setIsEmpty!20359 () Bool)

(declare-fun setRes!20359 () Bool)

(assert (=> setIsEmpty!20359 setRes!20359))

(declare-fun mapNonEmpty!14543 () Bool)

(declare-fun tp!702540 () Bool)

(declare-fun e!1428896 () Bool)

(assert (=> mapNonEmpty!14543 (= mapRes!14543 (and tp!702540 e!1428896))))

(declare-fun mapRest!14543 () (Array (_ BitVec 32) List!26388))

(declare-fun mapKey!14543 () (_ BitVec 32))

(declare-fun mapValue!14543 () List!26388)

(assert (=> mapNonEmpty!14543 (= mapRest!14540 (store mapRest!14543 mapKey!14543 mapValue!14543))))

(declare-fun b!2235718 () Bool)

(declare-fun e!1428897 () Bool)

(declare-fun tp!702539 () Bool)

(assert (=> b!2235718 (= e!1428897 tp!702539)))

(declare-fun tp!702537 () Bool)

(declare-fun tp!702533 () Bool)

(declare-fun e!1428894 () Bool)

(declare-fun b!2235719 () Bool)

(assert (=> b!2235719 (= e!1428896 (and tp!702537 (inv!35714 (_2!15301 (_1!15302 (h!31695 mapValue!14543)))) e!1428894 tp_is_empty!10135 setRes!20358 tp!702533))))

(declare-fun condSetEmpty!20359 () Bool)

(assert (=> b!2235719 (= condSetEmpty!20359 (= (_2!15302 (h!31695 mapValue!14543)) ((as const (Array Context!4006 Bool)) false)))))

(declare-fun b!2235720 () Bool)

(declare-fun tp!702532 () Bool)

(assert (=> b!2235720 (= e!1428894 tp!702532)))

(declare-fun setNonEmpty!20358 () Bool)

(declare-fun setElem!20358 () Context!4006)

(declare-fun tp!702531 () Bool)

(assert (=> setNonEmpty!20358 (= setRes!20359 (and tp!702531 (inv!35714 setElem!20358) e!1428897))))

(declare-fun setRest!20358 () (InoxSet Context!4006))

(assert (=> setNonEmpty!20358 (= (_2!15302 (h!31695 mapDefault!14543)) ((_ map or) (store ((as const (Array Context!4006 Bool)) false) setElem!20358 true) setRest!20358))))

(declare-fun b!2235721 () Bool)

(declare-fun e!1428898 () Bool)

(declare-fun tp!702534 () Bool)

(assert (=> b!2235721 (= e!1428898 tp!702534)))

(declare-fun setElem!20359 () Context!4006)

(declare-fun tp!702538 () Bool)

(declare-fun setNonEmpty!20359 () Bool)

(assert (=> setNonEmpty!20359 (= setRes!20358 (and tp!702538 (inv!35714 setElem!20359) e!1428898))))

(declare-fun setRest!20359 () (InoxSet Context!4006))

(assert (=> setNonEmpty!20359 (= (_2!15302 (h!31695 mapValue!14543)) ((_ map or) (store ((as const (Array Context!4006 Bool)) false) setElem!20359 true) setRest!20359))))

(declare-fun b!2235722 () Bool)

(declare-fun tp!702530 () Bool)

(declare-fun tp!702535 () Bool)

(assert (=> b!2235722 (= e!1428895 (and tp!702535 (inv!35714 (_2!15301 (_1!15302 (h!31695 mapDefault!14543)))) e!1428899 tp_is_empty!10135 setRes!20359 tp!702530))))

(declare-fun condSetEmpty!20358 () Bool)

(assert (=> b!2235722 (= condSetEmpty!20358 (= (_2!15302 (h!31695 mapDefault!14543)) ((as const (Array Context!4006 Bool)) false)))))

(assert (= (and mapNonEmpty!14540 condMapEmpty!14543) mapIsEmpty!14543))

(assert (= (and mapNonEmpty!14540 (not condMapEmpty!14543)) mapNonEmpty!14543))

(assert (= b!2235719 b!2235720))

(assert (= (and b!2235719 condSetEmpty!20359) setIsEmpty!20358))

(assert (= (and b!2235719 (not condSetEmpty!20359)) setNonEmpty!20359))

(assert (= setNonEmpty!20359 b!2235721))

(assert (= (and mapNonEmpty!14543 ((_ is Cons!26294) mapValue!14543)) b!2235719))

(assert (= b!2235722 b!2235717))

(assert (= (and b!2235722 condSetEmpty!20358) setIsEmpty!20359))

(assert (= (and b!2235722 (not condSetEmpty!20358)) setNonEmpty!20358))

(assert (= setNonEmpty!20358 b!2235718))

(assert (= (and mapNonEmpty!14540 ((_ is Cons!26294) mapDefault!14543)) b!2235722))

(declare-fun m!2669899 () Bool)

(assert (=> mapNonEmpty!14543 m!2669899))

(declare-fun m!2669901 () Bool)

(assert (=> setNonEmpty!20358 m!2669901))

(declare-fun m!2669903 () Bool)

(assert (=> setNonEmpty!20359 m!2669903))

(declare-fun m!2669905 () Bool)

(assert (=> b!2235719 m!2669905))

(declare-fun m!2669907 () Bool)

(assert (=> b!2235722 m!2669907))

(declare-fun e!1428906 () Bool)

(assert (=> mapNonEmpty!14540 (= tp!702467 e!1428906)))

(declare-fun setIsEmpty!20362 () Bool)

(declare-fun setRes!20362 () Bool)

(assert (=> setIsEmpty!20362 setRes!20362))

(declare-fun tp!702552 () Bool)

(declare-fun b!2235731 () Bool)

(declare-fun e!1428907 () Bool)

(declare-fun tp!702551 () Bool)

(assert (=> b!2235731 (= e!1428906 (and tp!702552 (inv!35714 (_2!15301 (_1!15302 (h!31695 mapValue!14540)))) e!1428907 tp_is_empty!10135 setRes!20362 tp!702551))))

(declare-fun condSetEmpty!20362 () Bool)

(assert (=> b!2235731 (= condSetEmpty!20362 (= (_2!15302 (h!31695 mapValue!14540)) ((as const (Array Context!4006 Bool)) false)))))

(declare-fun b!2235732 () Bool)

(declare-fun tp!702553 () Bool)

(assert (=> b!2235732 (= e!1428907 tp!702553)))

(declare-fun b!2235733 () Bool)

(declare-fun e!1428908 () Bool)

(declare-fun tp!702554 () Bool)

(assert (=> b!2235733 (= e!1428908 tp!702554)))

(declare-fun tp!702555 () Bool)

(declare-fun setNonEmpty!20362 () Bool)

(declare-fun setElem!20362 () Context!4006)

(assert (=> setNonEmpty!20362 (= setRes!20362 (and tp!702555 (inv!35714 setElem!20362) e!1428908))))

(declare-fun setRest!20362 () (InoxSet Context!4006))

(assert (=> setNonEmpty!20362 (= (_2!15302 (h!31695 mapValue!14540)) ((_ map or) (store ((as const (Array Context!4006 Bool)) false) setElem!20362 true) setRest!20362))))

(assert (= b!2235731 b!2235732))

(assert (= (and b!2235731 condSetEmpty!20362) setIsEmpty!20362))

(assert (= (and b!2235731 (not condSetEmpty!20362)) setNonEmpty!20362))

(assert (= setNonEmpty!20362 b!2235733))

(assert (= (and mapNonEmpty!14540 ((_ is Cons!26294) mapValue!14540)) b!2235731))

(declare-fun m!2669909 () Bool)

(assert (=> b!2235731 m!2669909))

(declare-fun m!2669911 () Bool)

(assert (=> setNonEmpty!20362 m!2669911))

(declare-fun e!1428909 () Bool)

(assert (=> b!2235535 (= tp!702475 e!1428909)))

(declare-fun setIsEmpty!20363 () Bool)

(declare-fun setRes!20363 () Bool)

(assert (=> setIsEmpty!20363 setRes!20363))

(declare-fun e!1428910 () Bool)

(declare-fun tp!702556 () Bool)

(declare-fun b!2235734 () Bool)

(declare-fun tp!702557 () Bool)

(assert (=> b!2235734 (= e!1428909 (and tp!702557 (inv!35714 (_2!15301 (_1!15302 (h!31695 mapDefault!14540)))) e!1428910 tp_is_empty!10135 setRes!20363 tp!702556))))

(declare-fun condSetEmpty!20363 () Bool)

(assert (=> b!2235734 (= condSetEmpty!20363 (= (_2!15302 (h!31695 mapDefault!14540)) ((as const (Array Context!4006 Bool)) false)))))

(declare-fun b!2235735 () Bool)

(declare-fun tp!702558 () Bool)

(assert (=> b!2235735 (= e!1428910 tp!702558)))

(declare-fun b!2235736 () Bool)

(declare-fun e!1428911 () Bool)

(declare-fun tp!702559 () Bool)

(assert (=> b!2235736 (= e!1428911 tp!702559)))

(declare-fun setNonEmpty!20363 () Bool)

(declare-fun setElem!20363 () Context!4006)

(declare-fun tp!702560 () Bool)

(assert (=> setNonEmpty!20363 (= setRes!20363 (and tp!702560 (inv!35714 setElem!20363) e!1428911))))

(declare-fun setRest!20363 () (InoxSet Context!4006))

(assert (=> setNonEmpty!20363 (= (_2!15302 (h!31695 mapDefault!14540)) ((_ map or) (store ((as const (Array Context!4006 Bool)) false) setElem!20363 true) setRest!20363))))

(assert (= b!2235734 b!2235735))

(assert (= (and b!2235734 condSetEmpty!20363) setIsEmpty!20363))

(assert (= (and b!2235734 (not condSetEmpty!20363)) setNonEmpty!20363))

(assert (= setNonEmpty!20363 b!2235736))

(assert (= (and b!2235535 ((_ is Cons!26294) mapDefault!14540)) b!2235734))

(declare-fun m!2669913 () Bool)

(assert (=> b!2235734 m!2669913))

(declare-fun m!2669915 () Bool)

(assert (=> setNonEmpty!20363 m!2669915))

(declare-fun b!2235738 () Bool)

(declare-fun e!1428912 () Bool)

(declare-fun tp!702562 () Bool)

(declare-fun tp!702563 () Bool)

(assert (=> b!2235738 (= e!1428912 (and tp!702562 tp!702563))))

(assert (=> b!2235537 (= tp!702480 e!1428912)))

(declare-fun b!2235739 () Bool)

(declare-fun tp!702561 () Bool)

(assert (=> b!2235739 (= e!1428912 tp!702561)))

(declare-fun b!2235737 () Bool)

(assert (=> b!2235737 (= e!1428912 tp_is_empty!10135)))

(declare-fun b!2235740 () Bool)

(declare-fun tp!702564 () Bool)

(declare-fun tp!702565 () Bool)

(assert (=> b!2235740 (= e!1428912 (and tp!702564 tp!702565))))

(assert (= (and b!2235537 ((_ is ElementMatch!6455) (regOne!13423 r!4773))) b!2235737))

(assert (= (and b!2235537 ((_ is Concat!10793) (regOne!13423 r!4773))) b!2235738))

(assert (= (and b!2235537 ((_ is Star!6455) (regOne!13423 r!4773))) b!2235739))

(assert (= (and b!2235537 ((_ is Union!6455) (regOne!13423 r!4773))) b!2235740))

(declare-fun b!2235742 () Bool)

(declare-fun e!1428913 () Bool)

(declare-fun tp!702567 () Bool)

(declare-fun tp!702568 () Bool)

(assert (=> b!2235742 (= e!1428913 (and tp!702567 tp!702568))))

(assert (=> b!2235537 (= tp!702473 e!1428913)))

(declare-fun b!2235743 () Bool)

(declare-fun tp!702566 () Bool)

(assert (=> b!2235743 (= e!1428913 tp!702566)))

(declare-fun b!2235741 () Bool)

(assert (=> b!2235741 (= e!1428913 tp_is_empty!10135)))

(declare-fun b!2235744 () Bool)

(declare-fun tp!702569 () Bool)

(declare-fun tp!702570 () Bool)

(assert (=> b!2235744 (= e!1428913 (and tp!702569 tp!702570))))

(assert (= (and b!2235537 ((_ is ElementMatch!6455) (regTwo!13423 r!4773))) b!2235741))

(assert (= (and b!2235537 ((_ is Concat!10793) (regTwo!13423 r!4773))) b!2235742))

(assert (= (and b!2235537 ((_ is Star!6455) (regTwo!13423 r!4773))) b!2235743))

(assert (= (and b!2235537 ((_ is Union!6455) (regTwo!13423 r!4773))) b!2235744))

(declare-fun b!2235746 () Bool)

(declare-fun e!1428914 () Bool)

(declare-fun tp!702572 () Bool)

(declare-fun tp!702573 () Bool)

(assert (=> b!2235746 (= e!1428914 (and tp!702572 tp!702573))))

(assert (=> b!2235531 (= tp!702472 e!1428914)))

(declare-fun b!2235747 () Bool)

(declare-fun tp!702571 () Bool)

(assert (=> b!2235747 (= e!1428914 tp!702571)))

(declare-fun b!2235745 () Bool)

(assert (=> b!2235745 (= e!1428914 tp_is_empty!10135)))

(declare-fun b!2235748 () Bool)

(declare-fun tp!702574 () Bool)

(declare-fun tp!702575 () Bool)

(assert (=> b!2235748 (= e!1428914 (and tp!702574 tp!702575))))

(assert (= (and b!2235531 ((_ is ElementMatch!6455) (regOne!13422 r!4773))) b!2235745))

(assert (= (and b!2235531 ((_ is Concat!10793) (regOne!13422 r!4773))) b!2235746))

(assert (= (and b!2235531 ((_ is Star!6455) (regOne!13422 r!4773))) b!2235747))

(assert (= (and b!2235531 ((_ is Union!6455) (regOne!13422 r!4773))) b!2235748))

(declare-fun b!2235750 () Bool)

(declare-fun e!1428915 () Bool)

(declare-fun tp!702577 () Bool)

(declare-fun tp!702578 () Bool)

(assert (=> b!2235750 (= e!1428915 (and tp!702577 tp!702578))))

(assert (=> b!2235531 (= tp!702476 e!1428915)))

(declare-fun b!2235751 () Bool)

(declare-fun tp!702576 () Bool)

(assert (=> b!2235751 (= e!1428915 tp!702576)))

(declare-fun b!2235749 () Bool)

(assert (=> b!2235749 (= e!1428915 tp_is_empty!10135)))

(declare-fun b!2235752 () Bool)

(declare-fun tp!702579 () Bool)

(declare-fun tp!702580 () Bool)

(assert (=> b!2235752 (= e!1428915 (and tp!702579 tp!702580))))

(assert (= (and b!2235531 ((_ is ElementMatch!6455) (regTwo!13422 r!4773))) b!2235749))

(assert (= (and b!2235531 ((_ is Concat!10793) (regTwo!13422 r!4773))) b!2235750))

(assert (= (and b!2235531 ((_ is Star!6455) (regTwo!13422 r!4773))) b!2235751))

(assert (= (and b!2235531 ((_ is Union!6455) (regTwo!13422 r!4773))) b!2235752))

(declare-fun e!1428916 () Bool)

(assert (=> b!2235524 (= tp!702474 e!1428916)))

(declare-fun setIsEmpty!20364 () Bool)

(declare-fun setRes!20364 () Bool)

(assert (=> setIsEmpty!20364 setRes!20364))

(declare-fun tp!702581 () Bool)

(declare-fun e!1428917 () Bool)

(declare-fun tp!702582 () Bool)

(declare-fun b!2235753 () Bool)

(assert (=> b!2235753 (= e!1428916 (and tp!702582 (inv!35714 (_2!15301 (_1!15302 (h!31695 (zeroValue!3351 (v!29895 (underlying!6387 (v!29896 (underlying!6388 (cache!3384 thiss!28822)))))))))) e!1428917 tp_is_empty!10135 setRes!20364 tp!702581))))

(declare-fun condSetEmpty!20364 () Bool)

(assert (=> b!2235753 (= condSetEmpty!20364 (= (_2!15302 (h!31695 (zeroValue!3351 (v!29895 (underlying!6387 (v!29896 (underlying!6388 (cache!3384 thiss!28822)))))))) ((as const (Array Context!4006 Bool)) false)))))

(declare-fun b!2235754 () Bool)

(declare-fun tp!702583 () Bool)

(assert (=> b!2235754 (= e!1428917 tp!702583)))

(declare-fun b!2235755 () Bool)

(declare-fun e!1428918 () Bool)

(declare-fun tp!702584 () Bool)

(assert (=> b!2235755 (= e!1428918 tp!702584)))

(declare-fun tp!702585 () Bool)

(declare-fun setNonEmpty!20364 () Bool)

(declare-fun setElem!20364 () Context!4006)

(assert (=> setNonEmpty!20364 (= setRes!20364 (and tp!702585 (inv!35714 setElem!20364) e!1428918))))

(declare-fun setRest!20364 () (InoxSet Context!4006))

(assert (=> setNonEmpty!20364 (= (_2!15302 (h!31695 (zeroValue!3351 (v!29895 (underlying!6387 (v!29896 (underlying!6388 (cache!3384 thiss!28822)))))))) ((_ map or) (store ((as const (Array Context!4006 Bool)) false) setElem!20364 true) setRest!20364))))

(assert (= b!2235753 b!2235754))

(assert (= (and b!2235753 condSetEmpty!20364) setIsEmpty!20364))

(assert (= (and b!2235753 (not condSetEmpty!20364)) setNonEmpty!20364))

(assert (= setNonEmpty!20364 b!2235755))

(assert (= (and b!2235524 ((_ is Cons!26294) (zeroValue!3351 (v!29895 (underlying!6387 (v!29896 (underlying!6388 (cache!3384 thiss!28822)))))))) b!2235753))

(declare-fun m!2669917 () Bool)

(assert (=> b!2235753 m!2669917))

(declare-fun m!2669919 () Bool)

(assert (=> setNonEmpty!20364 m!2669919))

(declare-fun e!1428919 () Bool)

(assert (=> b!2235524 (= tp!702471 e!1428919)))

(declare-fun setIsEmpty!20365 () Bool)

(declare-fun setRes!20365 () Bool)

(assert (=> setIsEmpty!20365 setRes!20365))

(declare-fun tp!702587 () Bool)

(declare-fun e!1428920 () Bool)

(declare-fun tp!702586 () Bool)

(declare-fun b!2235756 () Bool)

(assert (=> b!2235756 (= e!1428919 (and tp!702587 (inv!35714 (_2!15301 (_1!15302 (h!31695 (minValue!3351 (v!29895 (underlying!6387 (v!29896 (underlying!6388 (cache!3384 thiss!28822)))))))))) e!1428920 tp_is_empty!10135 setRes!20365 tp!702586))))

(declare-fun condSetEmpty!20365 () Bool)

(assert (=> b!2235756 (= condSetEmpty!20365 (= (_2!15302 (h!31695 (minValue!3351 (v!29895 (underlying!6387 (v!29896 (underlying!6388 (cache!3384 thiss!28822)))))))) ((as const (Array Context!4006 Bool)) false)))))

(declare-fun b!2235757 () Bool)

(declare-fun tp!702588 () Bool)

(assert (=> b!2235757 (= e!1428920 tp!702588)))

(declare-fun b!2235758 () Bool)

(declare-fun e!1428921 () Bool)

(declare-fun tp!702589 () Bool)

(assert (=> b!2235758 (= e!1428921 tp!702589)))

(declare-fun setNonEmpty!20365 () Bool)

(declare-fun tp!702590 () Bool)

(declare-fun setElem!20365 () Context!4006)

(assert (=> setNonEmpty!20365 (= setRes!20365 (and tp!702590 (inv!35714 setElem!20365) e!1428921))))

(declare-fun setRest!20365 () (InoxSet Context!4006))

(assert (=> setNonEmpty!20365 (= (_2!15302 (h!31695 (minValue!3351 (v!29895 (underlying!6387 (v!29896 (underlying!6388 (cache!3384 thiss!28822)))))))) ((_ map or) (store ((as const (Array Context!4006 Bool)) false) setElem!20365 true) setRest!20365))))

(assert (= b!2235756 b!2235757))

(assert (= (and b!2235756 condSetEmpty!20365) setIsEmpty!20365))

(assert (= (and b!2235756 (not condSetEmpty!20365)) setNonEmpty!20365))

(assert (= setNonEmpty!20365 b!2235758))

(assert (= (and b!2235524 ((_ is Cons!26294) (minValue!3351 (v!29895 (underlying!6387 (v!29896 (underlying!6388 (cache!3384 thiss!28822)))))))) b!2235756))

(declare-fun m!2669921 () Bool)

(assert (=> b!2235756 m!2669921))

(declare-fun m!2669923 () Bool)

(assert (=> setNonEmpty!20365 m!2669923))

(declare-fun b!2235759 () Bool)

(declare-fun e!1428922 () Bool)

(declare-fun tp!702591 () Bool)

(declare-fun tp!702592 () Bool)

(assert (=> b!2235759 (= e!1428922 (and tp!702591 tp!702592))))

(assert (=> b!2235534 (= tp!702479 e!1428922)))

(assert (= (and b!2235534 ((_ is Cons!26293) (exprs!2503 ctx!56))) b!2235759))

(declare-fun b_lambda!71687 () Bool)

(assert (= b_lambda!71685 (or b!2235532 b_lambda!71687)))

(declare-fun bs!454199 () Bool)

(declare-fun d!665427 () Bool)

(assert (= bs!454199 (and d!665427 b!2235532)))

(declare-fun res!956659 () Bool)

(declare-fun e!1428923 () Bool)

(assert (=> bs!454199 (=> (not res!956659) (not e!1428923))))

(assert (=> bs!454199 (= res!956659 (validRegex!2420 (_1!15301 (_1!15302 (h!31695 (toList!1349 (map!5398 (_2!15303 lt!831412))))))))))

(assert (=> bs!454199 (= (dynLambda!11529 lambda!84461 (h!31695 (toList!1349 (map!5398 (_2!15303 lt!831412))))) e!1428923)))

(declare-fun b!2235760 () Bool)

(assert (=> b!2235760 (= e!1428923 (= (_2!15302 (h!31695 (toList!1349 (map!5398 (_2!15303 lt!831412))))) (derivationStepZipperDown!66 (_1!15301 (_1!15302 (h!31695 (toList!1349 (map!5398 (_2!15303 lt!831412)))))) (_2!15301 (_1!15302 (h!31695 (toList!1349 (map!5398 (_2!15303 lt!831412)))))) (_3!2461 (_1!15302 (h!31695 (toList!1349 (map!5398 (_2!15303 lt!831412)))))))))))

(assert (= (and bs!454199 res!956659) b!2235760))

(declare-fun m!2669925 () Bool)

(assert (=> bs!454199 m!2669925))

(declare-fun m!2669927 () Bool)

(assert (=> b!2235760 m!2669927))

(assert (=> b!2235582 d!665427))

(check-sat (not b!2235744) (not d!665403) (not b!2235550) (not b!2235695) (not d!665401) (not d!665417) (not b!2235571) (not setNonEmpty!20365) (not bm!134766) (not bm!134735) (not bm!134723) (not b!2235752) (not b!2235731) (not setNonEmpty!20364) (not b!2235746) (not b!2235736) (not b!2235718) (not b!2235739) (not bm!134730) (not b!2235751) (not b!2235747) (not setNonEmpty!20363) (not b!2235733) (not bm!134731) (not b!2235742) (not b_next!65539) (not b!2235627) (not b!2235632) (not mapNonEmpty!14543) (not d!665421) (not bm!134749) (not b!2235628) (not b!2235721) (not setNonEmpty!20359) b_and!174821 (not b!2235754) (not bm!134737) (not b!2235546) (not bm!134743) (not bm!134751) (not b!2235638) (not b!2235748) (not b_next!65537) tp_is_empty!10135 (not b!2235732) (not b!2235583) (not b!2235702) (not bm!134739) (not b_lambda!71687) (not d!665405) (not b!2235758) (not bm!134740) (not b!2235630) (not b!2235683) (not bm!134658) (not b!2235753) (not b!2235757) (not b!2235585) (not bm!134734) b_and!174823 (not bm!134738) (not bm!134728) (not b!2235547) (not bm!134745) (not bm!134769) (not b!2235759) (not setNonEmpty!20353) (not bm!134732) (not b!2235668) (not bs!454199) (not bm!134741) (not bm!134726) (not setNonEmpty!20358) (not bm!134659) (not b!2235743) (not b!2235719) (not b!2235755) (not b!2235740) (not b!2235738) (not bm!134729) (not bm!134748) (not b!2235697) (not bm!134747) (not b!2235584) (not d!665419) (not setNonEmpty!20362) (not bm!134750) (not bm!134733) (not bm!134722) (not bm!134744) (not bm!134724) (not b!2235640) (not b!2235756) (not b!2235696) (not b!2235735) (not bm!134765) (not bm!134746) (not b!2235645) (not bm!134736) (not bm!134752) (not b!2235760) (not d!665423) (not b!2235734) (not b!2235720) (not b!2235722) (not bm!134742) (not b!2235750) (not b!2235717))
(check-sat b_and!174823 b_and!174821 (not b_next!65537) (not b_next!65539))
