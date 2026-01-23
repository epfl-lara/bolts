; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!218104 () Bool)

(assert start!218104)

(declare-fun b!2238440 () Bool)

(declare-fun b_free!64961 () Bool)

(declare-fun b_next!65665 () Bool)

(assert (=> b!2238440 (= b_free!64961 (not b_next!65665))))

(declare-fun tp!704560 () Bool)

(declare-fun b_and!174965 () Bool)

(assert (=> b!2238440 (= tp!704560 b_and!174965)))

(declare-fun b!2238431 () Bool)

(declare-fun b_free!64963 () Bool)

(declare-fun b_next!65667 () Bool)

(assert (=> b!2238431 (= b_free!64963 (not b_next!65667))))

(declare-fun tp!704555 () Bool)

(declare-fun b_and!174967 () Bool)

(assert (=> b!2238431 (= tp!704555 b_and!174967)))

(declare-fun b!2238430 () Bool)

(declare-fun e!1430969 () Bool)

(declare-fun e!1430958 () Bool)

(assert (=> b!2238430 (= e!1430969 e!1430958)))

(declare-fun res!957284 () Bool)

(assert (=> b!2238430 (=> (not res!957284) (not e!1430958))))

(declare-datatypes ((C!13120 0))(
  ( (C!13121 (val!7608 Int)) )
))
(declare-datatypes ((Regex!6487 0))(
  ( (ElementMatch!6487 (c!356584 C!13120)) (Concat!10825 (regOne!13486 Regex!6487) (regTwo!13486 Regex!6487)) (EmptyExpr!6487) (Star!6487 (reg!6816 Regex!6487)) (EmptyLang!6487) (Union!6487 (regOne!13487 Regex!6487) (regTwo!13487 Regex!6487)) )
))
(declare-datatypes ((List!26459 0))(
  ( (Nil!26365) (Cons!26365 (h!31766 Regex!6487) (t!199887 List!26459)) )
))
(declare-datatypes ((Context!4070 0))(
  ( (Context!4071 (exprs!2535 List!26459)) )
))
(declare-datatypes ((tuple3!4046 0))(
  ( (tuple3!4047 (_1!15376 Regex!6487) (_2!15376 Context!4070) (_3!2493 C!13120)) )
))
(declare-datatypes ((Hashable!3035 0))(
  ( (HashableExt!3034 (__x!17601 Int)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25766 0))(
  ( (tuple2!25767 (_1!15377 tuple3!4046) (_2!15377 (InoxSet Context!4070))) )
))
(declare-datatypes ((List!26460 0))(
  ( (Nil!26366) (Cons!26366 (h!31767 tuple2!25766) (t!199888 List!26460)) )
))
(declare-datatypes ((array!10892 0))(
  ( (array!10893 (arr!4837 (Array (_ BitVec 32) List!26460)) (size!20618 (_ BitVec 32))) )
))
(declare-datatypes ((array!10894 0))(
  ( (array!10895 (arr!4838 (Array (_ BitVec 32) (_ BitVec 64))) (size!20619 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6250 0))(
  ( (LongMapFixedSize!6251 (defaultEntry!3490 Int) (mask!7722 (_ BitVec 32)) (extraKeys!3373 (_ BitVec 32)) (zeroValue!3383 List!26460) (minValue!3383 List!26460) (_size!6297 (_ BitVec 32)) (_keys!3422 array!10894) (_values!3405 array!10892) (_vacant!3186 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12317 0))(
  ( (Cell!12318 (v!29981 LongMapFixedSize!6250)) )
))
(declare-datatypes ((MutLongMap!3125 0))(
  ( (LongMap!3125 (underlying!6451 Cell!12317)) (MutLongMapExt!3124 (__x!17602 Int)) )
))
(declare-datatypes ((Cell!12319 0))(
  ( (Cell!12320 (v!29982 MutLongMap!3125)) )
))
(declare-datatypes ((MutableMap!3035 0))(
  ( (MutableMapExt!3034 (__x!17603 Int)) (HashMap!3035 (underlying!6452 Cell!12319) (hashF!4958 Hashable!3035) (_size!6298 (_ BitVec 32)) (defaultValue!3197 Int)) )
))
(declare-datatypes ((CacheDown!2116 0))(
  ( (CacheDown!2117 (cache!3416 MutableMap!3035)) )
))
(declare-fun thiss!28743 () CacheDown!2116)

(declare-fun lt!832792 () tuple3!4046)

(declare-fun contains!4425 (MutableMap!3035 tuple3!4046) Bool)

(assert (=> b!2238430 (= res!957284 (contains!4425 (cache!3416 thiss!28743) lt!832792))))

(declare-fun ctx!48 () Context!4070)

(declare-fun r!4750 () Regex!6487)

(declare-fun a!970 () C!13120)

(assert (=> b!2238430 (= lt!832792 (tuple3!4047 r!4750 ctx!48 a!970))))

(declare-fun e!1430960 () Bool)

(declare-fun e!1430957 () Bool)

(assert (=> b!2238431 (= e!1430960 (and e!1430957 tp!704555))))

(declare-fun b!2238432 () Bool)

(declare-fun e!1430963 () Bool)

(assert (=> b!2238432 (= e!1430963 e!1430960)))

(declare-fun b!2238433 () Bool)

(declare-fun e!1430967 () Bool)

(get-info :version)

(assert (=> b!2238433 (= e!1430967 ((_ is HashMap!3035) (cache!3416 thiss!28743)))))

(declare-fun res!957282 () Bool)

(assert (=> start!218104 (=> (not res!957282) (not e!1430969))))

(declare-fun validCacheMapDown!332 (MutableMap!3035) Bool)

(assert (=> start!218104 (= res!957282 (validCacheMapDown!332 (cache!3416 thiss!28743)))))

(assert (=> start!218104 e!1430969))

(declare-fun inv!35814 (CacheDown!2116) Bool)

(assert (=> start!218104 (and (inv!35814 thiss!28743) e!1430963)))

(declare-fun e!1430962 () Bool)

(declare-fun inv!35815 (Context!4070) Bool)

(assert (=> start!218104 (and (inv!35815 ctx!48) e!1430962)))

(declare-fun e!1430964 () Bool)

(assert (=> start!218104 e!1430964))

(declare-fun tp_is_empty!10195 () Bool)

(assert (=> start!218104 tp_is_empty!10195))

(declare-fun b!2238434 () Bool)

(assert (=> b!2238434 (= e!1430964 tp_is_empty!10195)))

(declare-fun mapNonEmpty!14663 () Bool)

(declare-fun mapRes!14663 () Bool)

(declare-fun tp!704554 () Bool)

(declare-fun tp!704563 () Bool)

(assert (=> mapNonEmpty!14663 (= mapRes!14663 (and tp!704554 tp!704563))))

(declare-fun mapValue!14663 () List!26460)

(declare-fun mapRest!14663 () (Array (_ BitVec 32) List!26460))

(declare-fun mapKey!14663 () (_ BitVec 32))

(assert (=> mapNonEmpty!14663 (= (arr!4837 (_values!3405 (v!29981 (underlying!6451 (v!29982 (underlying!6452 (cache!3416 thiss!28743))))))) (store mapRest!14663 mapKey!14663 mapValue!14663))))

(declare-fun b!2238435 () Bool)

(declare-fun e!1430968 () Bool)

(declare-fun lt!832800 () MutLongMap!3125)

(assert (=> b!2238435 (= e!1430957 (and e!1430968 ((_ is LongMap!3125) lt!832800)))))

(assert (=> b!2238435 (= lt!832800 (v!29982 (underlying!6452 (cache!3416 thiss!28743))))))

(declare-fun b!2238436 () Bool)

(declare-fun e!1430959 () Bool)

(declare-fun e!1430961 () Bool)

(assert (=> b!2238436 (= e!1430959 e!1430961)))

(declare-fun b!2238437 () Bool)

(declare-fun e!1430965 () Bool)

(declare-fun apply!6494 (MutableMap!3035 tuple3!4046) (InoxSet Context!4070))

(declare-fun derivationStepZipperDown!77 (Regex!6487 Context!4070 C!13120) (InoxSet Context!4070))

(assert (=> b!2238437 (= e!1430965 (= (apply!6494 (cache!3416 thiss!28743) lt!832792) (derivationStepZipperDown!77 (_1!15376 lt!832792) (_2!15376 lt!832792) (_3!2493 lt!832792))))))

(declare-fun lt!832798 () (InoxSet Context!4070))

(assert (=> b!2238437 (= lt!832798 (apply!6494 (cache!3416 thiss!28743) lt!832792))))

(declare-fun lt!832799 () (InoxSet Context!4070))

(assert (=> b!2238437 (= lt!832799 (apply!6494 (cache!3416 thiss!28743) lt!832792))))

(declare-fun lt!832794 () (InoxSet Context!4070))

(assert (=> b!2238437 (= lt!832794 (apply!6494 (cache!3416 thiss!28743) lt!832792))))

(declare-fun lt!832796 () tuple3!4046)

(assert (=> b!2238437 (= lt!832796 lt!832792)))

(declare-fun b!2238438 () Bool)

(assert (=> b!2238438 (= e!1430958 (not e!1430967))))

(declare-fun res!957281 () Bool)

(assert (=> b!2238438 (=> res!957281 e!1430967)))

(declare-fun validRegex!2441 (Regex!6487) Bool)

(assert (=> b!2238438 (= res!957281 (not (validRegex!2441 r!4750)))))

(assert (=> b!2238438 e!1430965))

(declare-fun res!957283 () Bool)

(assert (=> b!2238438 (=> (not res!957283) (not e!1430965))))

(assert (=> b!2238438 (= res!957283 (validRegex!2441 (_1!15376 lt!832792)))))

(declare-fun lt!832795 () (InoxSet Context!4070))

(assert (=> b!2238438 (= lt!832795 (apply!6494 (cache!3416 thiss!28743) lt!832792))))

(declare-fun lt!832793 () tuple2!25766)

(assert (=> b!2238438 (= lt!832793 (tuple2!25767 lt!832792 (apply!6494 (cache!3416 thiss!28743) lt!832792)))))

(declare-datatypes ((Unit!39324 0))(
  ( (Unit!39325) )
))
(declare-fun lt!832797 () Unit!39324)

(declare-fun lambda!84618 () Int)

(declare-fun lemmaForallPairsThenForLookup!30 (MutableMap!3035 tuple3!4046 Int) Unit!39324)

(assert (=> b!2238438 (= lt!832797 (lemmaForallPairsThenForLookup!30 (cache!3416 thiss!28743) lt!832792 lambda!84618))))

(declare-fun b!2238439 () Bool)

(declare-fun e!1430970 () Bool)

(declare-fun tp!704566 () Bool)

(assert (=> b!2238439 (= e!1430970 (and tp!704566 mapRes!14663))))

(declare-fun condMapEmpty!14663 () Bool)

(declare-fun mapDefault!14663 () List!26460)

(assert (=> b!2238439 (= condMapEmpty!14663 (= (arr!4837 (_values!3405 (v!29981 (underlying!6451 (v!29982 (underlying!6452 (cache!3416 thiss!28743))))))) ((as const (Array (_ BitVec 32) List!26460)) mapDefault!14663)))))

(declare-fun tp!704558 () Bool)

(declare-fun tp!704562 () Bool)

(declare-fun array_inv!3475 (array!10894) Bool)

(declare-fun array_inv!3476 (array!10892) Bool)

(assert (=> b!2238440 (= e!1430961 (and tp!704560 tp!704562 tp!704558 (array_inv!3475 (_keys!3422 (v!29981 (underlying!6451 (v!29982 (underlying!6452 (cache!3416 thiss!28743))))))) (array_inv!3476 (_values!3405 (v!29981 (underlying!6451 (v!29982 (underlying!6452 (cache!3416 thiss!28743))))))) e!1430970))))

(declare-fun b!2238441 () Bool)

(declare-fun tp!704559 () Bool)

(assert (=> b!2238441 (= e!1430964 tp!704559)))

(declare-fun b!2238442 () Bool)

(declare-fun tp!704556 () Bool)

(declare-fun tp!704565 () Bool)

(assert (=> b!2238442 (= e!1430964 (and tp!704556 tp!704565))))

(declare-fun b!2238443 () Bool)

(assert (=> b!2238443 (= e!1430968 e!1430959)))

(declare-fun mapIsEmpty!14663 () Bool)

(assert (=> mapIsEmpty!14663 mapRes!14663))

(declare-fun b!2238444 () Bool)

(declare-fun tp!704561 () Bool)

(declare-fun tp!704564 () Bool)

(assert (=> b!2238444 (= e!1430964 (and tp!704561 tp!704564))))

(declare-fun b!2238445 () Bool)

(declare-fun tp!704557 () Bool)

(assert (=> b!2238445 (= e!1430962 tp!704557)))

(assert (= (and start!218104 res!957282) b!2238430))

(assert (= (and b!2238430 res!957284) b!2238438))

(assert (= (and b!2238438 res!957283) b!2238437))

(assert (= (and b!2238438 (not res!957281)) b!2238433))

(assert (= (and b!2238439 condMapEmpty!14663) mapIsEmpty!14663))

(assert (= (and b!2238439 (not condMapEmpty!14663)) mapNonEmpty!14663))

(assert (= b!2238440 b!2238439))

(assert (= b!2238436 b!2238440))

(assert (= b!2238443 b!2238436))

(assert (= (and b!2238435 ((_ is LongMap!3125) (v!29982 (underlying!6452 (cache!3416 thiss!28743))))) b!2238443))

(assert (= b!2238431 b!2238435))

(assert (= (and b!2238432 ((_ is HashMap!3035) (cache!3416 thiss!28743))) b!2238431))

(assert (= start!218104 b!2238432))

(assert (= start!218104 b!2238445))

(assert (= (and start!218104 ((_ is ElementMatch!6487) r!4750)) b!2238434))

(assert (= (and start!218104 ((_ is Concat!10825) r!4750)) b!2238442))

(assert (= (and start!218104 ((_ is Star!6487) r!4750)) b!2238441))

(assert (= (and start!218104 ((_ is Union!6487) r!4750)) b!2238444))

(declare-fun m!2671511 () Bool)

(assert (=> start!218104 m!2671511))

(declare-fun m!2671513 () Bool)

(assert (=> start!218104 m!2671513))

(declare-fun m!2671515 () Bool)

(assert (=> start!218104 m!2671515))

(declare-fun m!2671517 () Bool)

(assert (=> b!2238437 m!2671517))

(declare-fun m!2671519 () Bool)

(assert (=> b!2238437 m!2671519))

(declare-fun m!2671521 () Bool)

(assert (=> b!2238438 m!2671521))

(declare-fun m!2671523 () Bool)

(assert (=> b!2238438 m!2671523))

(assert (=> b!2238438 m!2671517))

(declare-fun m!2671525 () Bool)

(assert (=> b!2238438 m!2671525))

(declare-fun m!2671527 () Bool)

(assert (=> mapNonEmpty!14663 m!2671527))

(declare-fun m!2671529 () Bool)

(assert (=> b!2238430 m!2671529))

(declare-fun m!2671531 () Bool)

(assert (=> b!2238440 m!2671531))

(declare-fun m!2671533 () Bool)

(assert (=> b!2238440 m!2671533))

(check-sat (not b!2238438) (not b!2238442) (not b_next!65665) (not start!218104) (not b!2238440) (not b!2238439) (not mapNonEmpty!14663) (not b!2238445) b_and!174967 (not b_next!65667) (not b!2238437) (not b!2238441) (not b!2238444) tp_is_empty!10195 b_and!174965 (not b!2238430))
(check-sat b_and!174965 b_and!174967 (not b_next!65667) (not b_next!65665))
(get-model)

(declare-fun bs!454256 () Bool)

(declare-fun b!2238453 () Bool)

(assert (= bs!454256 (and b!2238453 b!2238438)))

(declare-fun lambda!84621 () Int)

(assert (=> bs!454256 (= lambda!84621 lambda!84618)))

(declare-fun d!665589 () Bool)

(declare-fun res!957291 () Bool)

(declare-fun e!1430975 () Bool)

(assert (=> d!665589 (=> (not res!957291) (not e!1430975))))

(declare-fun valid!2355 (MutableMap!3035) Bool)

(assert (=> d!665589 (= res!957291 (valid!2355 (cache!3416 thiss!28743)))))

(assert (=> d!665589 (= (validCacheMapDown!332 (cache!3416 thiss!28743)) e!1430975)))

(declare-fun b!2238452 () Bool)

(declare-fun res!957292 () Bool)

(assert (=> b!2238452 (=> (not res!957292) (not e!1430975))))

(declare-fun invariantList!379 (List!26460) Bool)

(declare-datatypes ((ListMap!853 0))(
  ( (ListMap!854 (toList!1368 List!26460)) )
))
(declare-fun map!5433 (MutableMap!3035) ListMap!853)

(assert (=> b!2238452 (= res!957292 (invariantList!379 (toList!1368 (map!5433 (cache!3416 thiss!28743)))))))

(declare-fun forall!5417 (List!26460 Int) Bool)

(assert (=> b!2238453 (= e!1430975 (forall!5417 (toList!1368 (map!5433 (cache!3416 thiss!28743))) lambda!84621))))

(assert (= (and d!665589 res!957291) b!2238452))

(assert (= (and b!2238452 res!957292) b!2238453))

(declare-fun m!2671536 () Bool)

(assert (=> d!665589 m!2671536))

(declare-fun m!2671538 () Bool)

(assert (=> b!2238452 m!2671538))

(declare-fun m!2671540 () Bool)

(assert (=> b!2238452 m!2671540))

(assert (=> b!2238453 m!2671538))

(declare-fun m!2671542 () Bool)

(assert (=> b!2238453 m!2671542))

(assert (=> start!218104 d!665589))

(declare-fun d!665591 () Bool)

(declare-fun res!957295 () Bool)

(declare-fun e!1430978 () Bool)

(assert (=> d!665591 (=> (not res!957295) (not e!1430978))))

(assert (=> d!665591 (= res!957295 ((_ is HashMap!3035) (cache!3416 thiss!28743)))))

(assert (=> d!665591 (= (inv!35814 thiss!28743) e!1430978)))

(declare-fun b!2238456 () Bool)

(assert (=> b!2238456 (= e!1430978 (validCacheMapDown!332 (cache!3416 thiss!28743)))))

(assert (= (and d!665591 res!957295) b!2238456))

(assert (=> b!2238456 m!2671511))

(assert (=> start!218104 d!665591))

(declare-fun d!665593 () Bool)

(declare-fun lambda!84624 () Int)

(declare-fun forall!5418 (List!26459 Int) Bool)

(assert (=> d!665593 (= (inv!35815 ctx!48) (forall!5418 (exprs!2535 ctx!48) lambda!84624))))

(declare-fun bs!454257 () Bool)

(assert (= bs!454257 d!665593))

(declare-fun m!2671544 () Bool)

(assert (=> bs!454257 m!2671544))

(assert (=> start!218104 d!665593))

(declare-fun d!665595 () Bool)

(assert (=> d!665595 (= (array_inv!3475 (_keys!3422 (v!29981 (underlying!6451 (v!29982 (underlying!6452 (cache!3416 thiss!28743))))))) (bvsge (size!20619 (_keys!3422 (v!29981 (underlying!6451 (v!29982 (underlying!6452 (cache!3416 thiss!28743))))))) #b00000000000000000000000000000000))))

(assert (=> b!2238440 d!665595))

(declare-fun d!665597 () Bool)

(assert (=> d!665597 (= (array_inv!3476 (_values!3405 (v!29981 (underlying!6451 (v!29982 (underlying!6452 (cache!3416 thiss!28743))))))) (bvsge (size!20618 (_values!3405 (v!29981 (underlying!6451 (v!29982 (underlying!6452 (cache!3416 thiss!28743))))))) #b00000000000000000000000000000000))))

(assert (=> b!2238440 d!665597))

(declare-fun b!2238479 () Bool)

(declare-fun lambda!84627 () Int)

(declare-fun lt!832855 () (_ BitVec 64))

(declare-fun e!1430994 () Unit!39324)

(declare-datatypes ((tuple2!25768 0))(
  ( (tuple2!25769 (_1!15378 (_ BitVec 64)) (_2!15378 List!26460)) )
))
(declare-datatypes ((List!26461 0))(
  ( (Nil!26367) (Cons!26367 (h!31768 tuple2!25768) (t!199891 List!26461)) )
))
(declare-fun forallContained!780 (List!26461 Int tuple2!25768) Unit!39324)

(declare-datatypes ((ListLongMap!337 0))(
  ( (ListLongMap!338 (toList!1369 List!26461)) )
))
(declare-fun map!5434 (MutLongMap!3125) ListLongMap!337)

(declare-fun apply!6495 (MutLongMap!3125 (_ BitVec 64)) List!26460)

(assert (=> b!2238479 (= e!1430994 (forallContained!780 (toList!1369 (map!5434 (v!29982 (underlying!6452 (cache!3416 thiss!28743))))) lambda!84627 (tuple2!25769 lt!832855 (apply!6495 (v!29982 (underlying!6452 (cache!3416 thiss!28743))) lt!832855))))))

(declare-fun c!356596 () Bool)

(declare-fun contains!4426 (List!26461 tuple2!25768) Bool)

(assert (=> b!2238479 (= c!356596 (not (contains!4426 (toList!1369 (map!5434 (v!29982 (underlying!6452 (cache!3416 thiss!28743))))) (tuple2!25769 lt!832855 (apply!6495 (v!29982 (underlying!6452 (cache!3416 thiss!28743))) lt!832855)))))))

(declare-fun lt!832852 () Unit!39324)

(declare-fun e!1430998 () Unit!39324)

(assert (=> b!2238479 (= lt!832852 e!1430998)))

(declare-fun bm!134999 () Bool)

(declare-fun call!135007 () ListLongMap!337)

(assert (=> bm!134999 (= call!135007 (map!5434 (v!29982 (underlying!6452 (cache!3416 thiss!28743)))))))

(declare-fun b!2238480 () Bool)

(declare-fun e!1430999 () Unit!39324)

(declare-fun lt!832842 () Unit!39324)

(assert (=> b!2238480 (= e!1430999 lt!832842)))

(declare-fun lt!832858 () ListLongMap!337)

(assert (=> b!2238480 (= lt!832858 call!135007)))

(declare-fun lemmaInGenericMapThenInLongMap!33 (ListLongMap!337 tuple3!4046 Hashable!3035) Unit!39324)

(assert (=> b!2238480 (= lt!832842 (lemmaInGenericMapThenInLongMap!33 lt!832858 lt!832792 (hashF!4958 (cache!3416 thiss!28743))))))

(declare-fun res!957302 () Bool)

(declare-fun call!135008 () Bool)

(assert (=> b!2238480 (= res!957302 call!135008)))

(declare-fun e!1430997 () Bool)

(assert (=> b!2238480 (=> (not res!957302) (not e!1430997))))

(assert (=> b!2238480 e!1430997))

(declare-fun bm!135000 () Bool)

(declare-fun c!356594 () Bool)

(declare-fun call!135004 () List!26460)

(declare-fun call!135006 () (_ BitVec 64))

(declare-fun apply!6496 (ListLongMap!337 (_ BitVec 64)) List!26460)

(assert (=> bm!135000 (= call!135004 (apply!6496 (ite c!356594 lt!832858 call!135007) call!135006))))

(declare-fun bm!135001 () Bool)

(declare-fun call!135005 () Bool)

(declare-datatypes ((Option!5134 0))(
  ( (None!5133) (Some!5133 (v!29983 tuple2!25766)) )
))
(declare-fun call!135009 () Option!5134)

(declare-fun isDefined!4144 (Option!5134) Bool)

(assert (=> bm!135001 (= call!135005 (isDefined!4144 call!135009))))

(declare-fun bm!135002 () Bool)

(declare-fun hash!580 (Hashable!3035 tuple3!4046) (_ BitVec 64))

(assert (=> bm!135002 (= call!135006 (hash!580 (hashF!4958 (cache!3416 thiss!28743)) lt!832792))))

(declare-fun b!2238481 () Bool)

(declare-fun e!1430996 () Bool)

(assert (=> b!2238481 (= e!1430996 call!135005)))

(declare-fun b!2238482 () Bool)

(declare-fun e!1430993 () Unit!39324)

(declare-fun Unit!39326 () Unit!39324)

(assert (=> b!2238482 (= e!1430993 Unit!39326)))

(declare-fun b!2238483 () Bool)

(assert (=> b!2238483 false))

(declare-fun lt!832849 () Unit!39324)

(declare-fun lt!832848 () Unit!39324)

(assert (=> b!2238483 (= lt!832849 lt!832848)))

(declare-fun lt!832854 () List!26461)

(declare-fun lt!832843 () List!26460)

(assert (=> b!2238483 (contains!4426 lt!832854 (tuple2!25769 lt!832855 lt!832843))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!34 (List!26461 (_ BitVec 64) List!26460) Unit!39324)

(assert (=> b!2238483 (= lt!832848 (lemmaGetValueByKeyImpliesContainsTuple!34 lt!832854 lt!832855 lt!832843))))

(assert (=> b!2238483 (= lt!832843 (apply!6495 (v!29982 (underlying!6452 (cache!3416 thiss!28743))) lt!832855))))

(assert (=> b!2238483 (= lt!832854 (toList!1369 (map!5434 (v!29982 (underlying!6452 (cache!3416 thiss!28743))))))))

(declare-fun lt!832853 () Unit!39324)

(declare-fun lt!832844 () Unit!39324)

(assert (=> b!2238483 (= lt!832853 lt!832844)))

(declare-fun lt!832847 () List!26461)

(declare-datatypes ((Option!5135 0))(
  ( (None!5134) (Some!5134 (v!29984 List!26460)) )
))
(declare-fun isDefined!4145 (Option!5135) Bool)

(declare-fun getValueByKey!81 (List!26461 (_ BitVec 64)) Option!5135)

(assert (=> b!2238483 (isDefined!4145 (getValueByKey!81 lt!832847 lt!832855))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!51 (List!26461 (_ BitVec 64)) Unit!39324)

(assert (=> b!2238483 (= lt!832844 (lemmaContainsKeyImpliesGetValueByKeyDefined!51 lt!832847 lt!832855))))

(assert (=> b!2238483 (= lt!832847 (toList!1369 (map!5434 (v!29982 (underlying!6452 (cache!3416 thiss!28743))))))))

(declare-fun lt!832845 () Unit!39324)

(declare-fun lt!832859 () Unit!39324)

(assert (=> b!2238483 (= lt!832845 lt!832859)))

(declare-fun lt!832860 () List!26461)

(declare-fun containsKey!82 (List!26461 (_ BitVec 64)) Bool)

(assert (=> b!2238483 (containsKey!82 lt!832860 lt!832855)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!34 (List!26461 (_ BitVec 64)) Unit!39324)

(assert (=> b!2238483 (= lt!832859 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!34 lt!832860 lt!832855))))

(assert (=> b!2238483 (= lt!832860 (toList!1369 (map!5434 (v!29982 (underlying!6452 (cache!3416 thiss!28743))))))))

(declare-fun Unit!39327 () Unit!39324)

(assert (=> b!2238483 (= e!1430998 Unit!39327)))

(declare-fun b!2238485 () Bool)

(assert (=> b!2238485 (= e!1430997 call!135005)))

(declare-fun b!2238486 () Bool)

(assert (=> b!2238486 (= e!1430999 e!1430993)))

(declare-fun res!957304 () Bool)

(assert (=> b!2238486 (= res!957304 call!135008)))

(assert (=> b!2238486 (=> (not res!957304) (not e!1430996))))

(declare-fun c!356593 () Bool)

(assert (=> b!2238486 (= c!356593 e!1430996)))

(declare-fun b!2238487 () Bool)

(declare-fun Unit!39328 () Unit!39324)

(assert (=> b!2238487 (= e!1430998 Unit!39328)))

(declare-fun bm!135003 () Bool)

(declare-fun getPair!33 (List!26460 tuple3!4046) Option!5134)

(assert (=> bm!135003 (= call!135009 (getPair!33 call!135004 lt!832792))))

(declare-fun b!2238488 () Bool)

(declare-fun Unit!39329 () Unit!39324)

(assert (=> b!2238488 (= e!1430994 Unit!39329)))

(declare-fun d!665599 () Bool)

(declare-fun lt!832841 () Bool)

(declare-fun contains!4427 (ListMap!853 tuple3!4046) Bool)

(assert (=> d!665599 (= lt!832841 (contains!4427 (map!5433 (cache!3416 thiss!28743)) lt!832792))))

(declare-fun e!1430995 () Bool)

(assert (=> d!665599 (= lt!832841 e!1430995)))

(declare-fun res!957303 () Bool)

(assert (=> d!665599 (=> (not res!957303) (not e!1430995))))

(declare-fun contains!4428 (MutLongMap!3125 (_ BitVec 64)) Bool)

(assert (=> d!665599 (= res!957303 (contains!4428 (v!29982 (underlying!6452 (cache!3416 thiss!28743))) lt!832855))))

(declare-fun lt!832846 () Unit!39324)

(assert (=> d!665599 (= lt!832846 e!1430999)))

(declare-fun extractMap!113 (List!26461) ListMap!853)

(assert (=> d!665599 (= c!356594 (contains!4427 (extractMap!113 (toList!1369 (map!5434 (v!29982 (underlying!6452 (cache!3416 thiss!28743)))))) lt!832792))))

(declare-fun lt!832850 () Unit!39324)

(assert (=> d!665599 (= lt!832850 e!1430994)))

(declare-fun c!356595 () Bool)

(assert (=> d!665599 (= c!356595 (contains!4428 (v!29982 (underlying!6452 (cache!3416 thiss!28743))) lt!832855))))

(assert (=> d!665599 (= lt!832855 (hash!580 (hashF!4958 (cache!3416 thiss!28743)) lt!832792))))

(assert (=> d!665599 (valid!2355 (cache!3416 thiss!28743))))

(assert (=> d!665599 (= (contains!4425 (cache!3416 thiss!28743) lt!832792) lt!832841)))

(declare-fun b!2238484 () Bool)

(assert (=> b!2238484 false))

(declare-fun lt!832857 () Unit!39324)

(declare-fun lt!832856 () Unit!39324)

(assert (=> b!2238484 (= lt!832857 lt!832856)))

(declare-fun lt!832851 () ListLongMap!337)

(assert (=> b!2238484 (contains!4427 (extractMap!113 (toList!1369 lt!832851)) lt!832792)))

(declare-fun lemmaInLongMapThenInGenericMap!33 (ListLongMap!337 tuple3!4046 Hashable!3035) Unit!39324)

(assert (=> b!2238484 (= lt!832856 (lemmaInLongMapThenInGenericMap!33 lt!832851 lt!832792 (hashF!4958 (cache!3416 thiss!28743))))))

(assert (=> b!2238484 (= lt!832851 call!135007)))

(declare-fun Unit!39330 () Unit!39324)

(assert (=> b!2238484 (= e!1430993 Unit!39330)))

(declare-fun bm!135004 () Bool)

(declare-fun contains!4429 (ListLongMap!337 (_ BitVec 64)) Bool)

(assert (=> bm!135004 (= call!135008 (contains!4429 (ite c!356594 lt!832858 call!135007) call!135006))))

(declare-fun b!2238489 () Bool)

(assert (=> b!2238489 (= e!1430995 (isDefined!4144 (getPair!33 (apply!6495 (v!29982 (underlying!6452 (cache!3416 thiss!28743))) lt!832855) lt!832792)))))

(assert (= (and d!665599 c!356595) b!2238479))

(assert (= (and d!665599 (not c!356595)) b!2238488))

(assert (= (and b!2238479 c!356596) b!2238483))

(assert (= (and b!2238479 (not c!356596)) b!2238487))

(assert (= (and d!665599 c!356594) b!2238480))

(assert (= (and d!665599 (not c!356594)) b!2238486))

(assert (= (and b!2238480 res!957302) b!2238485))

(assert (= (and b!2238486 res!957304) b!2238481))

(assert (= (and b!2238486 c!356593) b!2238484))

(assert (= (and b!2238486 (not c!356593)) b!2238482))

(assert (= (or b!2238480 b!2238485 b!2238486 b!2238481) bm!135002))

(assert (= (or b!2238480 b!2238486 b!2238481 b!2238484) bm!134999))

(assert (= (or b!2238480 b!2238486) bm!135004))

(assert (= (or b!2238485 b!2238481) bm!135000))

(assert (= (or b!2238485 b!2238481) bm!135003))

(assert (= (or b!2238485 b!2238481) bm!135001))

(assert (= (and d!665599 res!957303) b!2238489))

(declare-fun m!2671546 () Bool)

(assert (=> bm!135004 m!2671546))

(declare-fun m!2671548 () Bool)

(assert (=> bm!135003 m!2671548))

(declare-fun m!2671550 () Bool)

(assert (=> d!665599 m!2671550))

(declare-fun m!2671552 () Bool)

(assert (=> d!665599 m!2671552))

(assert (=> d!665599 m!2671536))

(declare-fun m!2671554 () Bool)

(assert (=> d!665599 m!2671554))

(assert (=> d!665599 m!2671538))

(declare-fun m!2671556 () Bool)

(assert (=> d!665599 m!2671556))

(assert (=> d!665599 m!2671552))

(declare-fun m!2671558 () Bool)

(assert (=> d!665599 m!2671558))

(assert (=> d!665599 m!2671538))

(declare-fun m!2671560 () Bool)

(assert (=> d!665599 m!2671560))

(declare-fun m!2671562 () Bool)

(assert (=> b!2238484 m!2671562))

(assert (=> b!2238484 m!2671562))

(declare-fun m!2671564 () Bool)

(assert (=> b!2238484 m!2671564))

(declare-fun m!2671566 () Bool)

(assert (=> b!2238484 m!2671566))

(assert (=> b!2238479 m!2671554))

(declare-fun m!2671568 () Bool)

(assert (=> b!2238479 m!2671568))

(declare-fun m!2671570 () Bool)

(assert (=> b!2238479 m!2671570))

(declare-fun m!2671572 () Bool)

(assert (=> b!2238479 m!2671572))

(assert (=> bm!134999 m!2671554))

(declare-fun m!2671574 () Bool)

(assert (=> bm!135001 m!2671574))

(declare-fun m!2671576 () Bool)

(assert (=> b!2238480 m!2671576))

(assert (=> b!2238489 m!2671568))

(assert (=> b!2238489 m!2671568))

(declare-fun m!2671578 () Bool)

(assert (=> b!2238489 m!2671578))

(assert (=> b!2238489 m!2671578))

(declare-fun m!2671580 () Bool)

(assert (=> b!2238489 m!2671580))

(declare-fun m!2671582 () Bool)

(assert (=> bm!135000 m!2671582))

(assert (=> b!2238483 m!2671554))

(declare-fun m!2671584 () Bool)

(assert (=> b!2238483 m!2671584))

(declare-fun m!2671586 () Bool)

(assert (=> b!2238483 m!2671586))

(declare-fun m!2671588 () Bool)

(assert (=> b!2238483 m!2671588))

(declare-fun m!2671590 () Bool)

(assert (=> b!2238483 m!2671590))

(declare-fun m!2671592 () Bool)

(assert (=> b!2238483 m!2671592))

(assert (=> b!2238483 m!2671568))

(declare-fun m!2671594 () Bool)

(assert (=> b!2238483 m!2671594))

(assert (=> b!2238483 m!2671586))

(declare-fun m!2671596 () Bool)

(assert (=> b!2238483 m!2671596))

(assert (=> bm!135002 m!2671550))

(assert (=> b!2238430 d!665599))

(declare-fun b!2238508 () Bool)

(declare-fun res!957316 () Bool)

(declare-fun e!1431014 () Bool)

(assert (=> b!2238508 (=> res!957316 e!1431014)))

(assert (=> b!2238508 (= res!957316 (not ((_ is Concat!10825) r!4750)))))

(declare-fun e!1431019 () Bool)

(assert (=> b!2238508 (= e!1431019 e!1431014)))

(declare-fun b!2238509 () Bool)

(declare-fun e!1431016 () Bool)

(assert (=> b!2238509 (= e!1431016 e!1431019)))

(declare-fun c!356602 () Bool)

(assert (=> b!2238509 (= c!356602 ((_ is Union!6487) r!4750))))

(declare-fun b!2238510 () Bool)

(declare-fun e!1431017 () Bool)

(declare-fun call!135018 () Bool)

(assert (=> b!2238510 (= e!1431017 call!135018)))

(declare-fun bm!135011 () Bool)

(declare-fun c!356601 () Bool)

(assert (=> bm!135011 (= call!135018 (validRegex!2441 (ite c!356601 (reg!6816 r!4750) (ite c!356602 (regTwo!13487 r!4750) (regTwo!13486 r!4750)))))))

(declare-fun b!2238511 () Bool)

(declare-fun e!1431015 () Bool)

(assert (=> b!2238511 (= e!1431015 e!1431016)))

(assert (=> b!2238511 (= c!356601 ((_ is Star!6487) r!4750))))

(declare-fun b!2238512 () Bool)

(declare-fun e!1431020 () Bool)

(assert (=> b!2238512 (= e!1431014 e!1431020)))

(declare-fun res!957319 () Bool)

(assert (=> b!2238512 (=> (not res!957319) (not e!1431020))))

(declare-fun call!135017 () Bool)

(assert (=> b!2238512 (= res!957319 call!135017)))

(declare-fun bm!135012 () Bool)

(assert (=> bm!135012 (= call!135017 (validRegex!2441 (ite c!356602 (regOne!13487 r!4750) (regOne!13486 r!4750))))))

(declare-fun b!2238513 () Bool)

(declare-fun res!957315 () Bool)

(declare-fun e!1431018 () Bool)

(assert (=> b!2238513 (=> (not res!957315) (not e!1431018))))

(assert (=> b!2238513 (= res!957315 call!135017)))

(assert (=> b!2238513 (= e!1431019 e!1431018)))

(declare-fun b!2238514 () Bool)

(assert (=> b!2238514 (= e!1431016 e!1431017)))

(declare-fun res!957317 () Bool)

(declare-fun nullable!1788 (Regex!6487) Bool)

(assert (=> b!2238514 (= res!957317 (not (nullable!1788 (reg!6816 r!4750))))))

(assert (=> b!2238514 (=> (not res!957317) (not e!1431017))))

(declare-fun b!2238515 () Bool)

(declare-fun call!135016 () Bool)

(assert (=> b!2238515 (= e!1431018 call!135016)))

(declare-fun bm!135013 () Bool)

(assert (=> bm!135013 (= call!135016 call!135018)))

(declare-fun d!665601 () Bool)

(declare-fun res!957318 () Bool)

(assert (=> d!665601 (=> res!957318 e!1431015)))

(assert (=> d!665601 (= res!957318 ((_ is ElementMatch!6487) r!4750))))

(assert (=> d!665601 (= (validRegex!2441 r!4750) e!1431015)))

(declare-fun b!2238516 () Bool)

(assert (=> b!2238516 (= e!1431020 call!135016)))

(assert (= (and d!665601 (not res!957318)) b!2238511))

(assert (= (and b!2238511 c!356601) b!2238514))

(assert (= (and b!2238511 (not c!356601)) b!2238509))

(assert (= (and b!2238514 res!957317) b!2238510))

(assert (= (and b!2238509 c!356602) b!2238513))

(assert (= (and b!2238509 (not c!356602)) b!2238508))

(assert (= (and b!2238513 res!957315) b!2238515))

(assert (= (and b!2238508 (not res!957316)) b!2238512))

(assert (= (and b!2238512 res!957319) b!2238516))

(assert (= (or b!2238513 b!2238512) bm!135012))

(assert (= (or b!2238515 b!2238516) bm!135013))

(assert (= (or b!2238510 bm!135013) bm!135011))

(declare-fun m!2671598 () Bool)

(assert (=> bm!135011 m!2671598))

(declare-fun m!2671600 () Bool)

(assert (=> bm!135012 m!2671600))

(declare-fun m!2671602 () Bool)

(assert (=> b!2238514 m!2671602))

(assert (=> b!2238438 d!665601))

(declare-fun b!2238517 () Bool)

(declare-fun res!957321 () Bool)

(declare-fun e!1431021 () Bool)

(assert (=> b!2238517 (=> res!957321 e!1431021)))

(assert (=> b!2238517 (= res!957321 (not ((_ is Concat!10825) (_1!15376 lt!832792))))))

(declare-fun e!1431026 () Bool)

(assert (=> b!2238517 (= e!1431026 e!1431021)))

(declare-fun b!2238518 () Bool)

(declare-fun e!1431023 () Bool)

(assert (=> b!2238518 (= e!1431023 e!1431026)))

(declare-fun c!356604 () Bool)

(assert (=> b!2238518 (= c!356604 ((_ is Union!6487) (_1!15376 lt!832792)))))

(declare-fun b!2238519 () Bool)

(declare-fun e!1431024 () Bool)

(declare-fun call!135021 () Bool)

(assert (=> b!2238519 (= e!1431024 call!135021)))

(declare-fun c!356603 () Bool)

(declare-fun bm!135014 () Bool)

(assert (=> bm!135014 (= call!135021 (validRegex!2441 (ite c!356603 (reg!6816 (_1!15376 lt!832792)) (ite c!356604 (regTwo!13487 (_1!15376 lt!832792)) (regTwo!13486 (_1!15376 lt!832792))))))))

(declare-fun b!2238520 () Bool)

(declare-fun e!1431022 () Bool)

(assert (=> b!2238520 (= e!1431022 e!1431023)))

(assert (=> b!2238520 (= c!356603 ((_ is Star!6487) (_1!15376 lt!832792)))))

(declare-fun b!2238521 () Bool)

(declare-fun e!1431027 () Bool)

(assert (=> b!2238521 (= e!1431021 e!1431027)))

(declare-fun res!957324 () Bool)

(assert (=> b!2238521 (=> (not res!957324) (not e!1431027))))

(declare-fun call!135020 () Bool)

(assert (=> b!2238521 (= res!957324 call!135020)))

(declare-fun bm!135015 () Bool)

(assert (=> bm!135015 (= call!135020 (validRegex!2441 (ite c!356604 (regOne!13487 (_1!15376 lt!832792)) (regOne!13486 (_1!15376 lt!832792)))))))

(declare-fun b!2238522 () Bool)

(declare-fun res!957320 () Bool)

(declare-fun e!1431025 () Bool)

(assert (=> b!2238522 (=> (not res!957320) (not e!1431025))))

(assert (=> b!2238522 (= res!957320 call!135020)))

(assert (=> b!2238522 (= e!1431026 e!1431025)))

(declare-fun b!2238523 () Bool)

(assert (=> b!2238523 (= e!1431023 e!1431024)))

(declare-fun res!957322 () Bool)

(assert (=> b!2238523 (= res!957322 (not (nullable!1788 (reg!6816 (_1!15376 lt!832792)))))))

(assert (=> b!2238523 (=> (not res!957322) (not e!1431024))))

(declare-fun b!2238524 () Bool)

(declare-fun call!135019 () Bool)

(assert (=> b!2238524 (= e!1431025 call!135019)))

(declare-fun bm!135016 () Bool)

(assert (=> bm!135016 (= call!135019 call!135021)))

(declare-fun d!665603 () Bool)

(declare-fun res!957323 () Bool)

(assert (=> d!665603 (=> res!957323 e!1431022)))

(assert (=> d!665603 (= res!957323 ((_ is ElementMatch!6487) (_1!15376 lt!832792)))))

(assert (=> d!665603 (= (validRegex!2441 (_1!15376 lt!832792)) e!1431022)))

(declare-fun b!2238525 () Bool)

(assert (=> b!2238525 (= e!1431027 call!135019)))

(assert (= (and d!665603 (not res!957323)) b!2238520))

(assert (= (and b!2238520 c!356603) b!2238523))

(assert (= (and b!2238520 (not c!356603)) b!2238518))

(assert (= (and b!2238523 res!957322) b!2238519))

(assert (= (and b!2238518 c!356604) b!2238522))

(assert (= (and b!2238518 (not c!356604)) b!2238517))

(assert (= (and b!2238522 res!957320) b!2238524))

(assert (= (and b!2238517 (not res!957321)) b!2238521))

(assert (= (and b!2238521 res!957324) b!2238525))

(assert (= (or b!2238522 b!2238521) bm!135015))

(assert (= (or b!2238524 b!2238525) bm!135016))

(assert (= (or b!2238519 bm!135016) bm!135014))

(declare-fun m!2671604 () Bool)

(assert (=> bm!135014 m!2671604))

(declare-fun m!2671606 () Bool)

(assert (=> bm!135015 m!2671606))

(declare-fun m!2671608 () Bool)

(assert (=> b!2238523 m!2671608))

(assert (=> b!2238438 d!665603))

(declare-fun bs!454258 () Bool)

(declare-fun b!2238542 () Bool)

(assert (= bs!454258 (and b!2238542 b!2238479)))

(declare-fun lambda!84634 () Int)

(assert (=> bs!454258 (= lambda!84634 lambda!84627)))

(declare-fun b!2238538 () Bool)

(declare-fun lt!832940 () (InoxSet Context!4070))

(declare-fun e!1431034 () Bool)

(declare-fun dynLambda!11536 (Int tuple3!4046) (InoxSet Context!4070))

(assert (=> b!2238538 (= e!1431034 (= lt!832940 (dynLambda!11536 (defaultValue!3197 (cache!3416 thiss!28743)) lt!832792)))))

(declare-fun b!2238539 () Bool)

(declare-fun e!1431036 () Unit!39324)

(declare-fun Unit!39331 () Unit!39324)

(assert (=> b!2238539 (= e!1431036 Unit!39331)))

(declare-fun b!2238540 () Bool)

(declare-fun e!1431035 () (InoxSet Context!4070))

(assert (=> b!2238540 (= e!1431035 (dynLambda!11536 (defaultValue!3197 (cache!3416 thiss!28743)) lt!832792))))

(declare-fun b!2238541 () Bool)

(assert (=> b!2238541 false))

(declare-fun lt!832923 () Unit!39324)

(declare-fun lt!832949 () Unit!39324)

(assert (=> b!2238541 (= lt!832923 lt!832949)))

(declare-fun lt!832942 () List!26461)

(declare-fun lt!832935 () (_ BitVec 64))

(declare-fun lt!832945 () List!26460)

(assert (=> b!2238541 (contains!4426 lt!832942 (tuple2!25769 lt!832935 lt!832945))))

(assert (=> b!2238541 (= lt!832949 (lemmaGetValueByKeyImpliesContainsTuple!34 lt!832942 lt!832935 lt!832945))))

(assert (=> b!2238541 (= lt!832945 (apply!6495 (v!29982 (underlying!6452 (cache!3416 thiss!28743))) lt!832935))))

(assert (=> b!2238541 (= lt!832942 (toList!1369 (map!5434 (v!29982 (underlying!6452 (cache!3416 thiss!28743))))))))

(declare-fun lt!832943 () Unit!39324)

(declare-fun lt!832927 () Unit!39324)

(assert (=> b!2238541 (= lt!832943 lt!832927)))

(declare-fun lt!832936 () List!26461)

(assert (=> b!2238541 (isDefined!4145 (getValueByKey!81 lt!832936 lt!832935))))

(assert (=> b!2238541 (= lt!832927 (lemmaContainsKeyImpliesGetValueByKeyDefined!51 lt!832936 lt!832935))))

(assert (=> b!2238541 (= lt!832936 (toList!1369 (map!5434 (v!29982 (underlying!6452 (cache!3416 thiss!28743))))))))

(declare-fun Unit!39332 () Unit!39324)

(assert (=> b!2238541 (= e!1431036 Unit!39332)))

(declare-fun get!7976 (Option!5134) tuple2!25766)

(assert (=> b!2238542 (= e!1431035 (_2!15377 (get!7976 (getPair!33 (apply!6495 (v!29982 (underlying!6452 (cache!3416 thiss!28743))) lt!832935) lt!832792))))))

(assert (=> b!2238542 (= lt!832935 (hash!580 (hashF!4958 (cache!3416 thiss!28743)) lt!832792))))

(declare-fun c!356612 () Bool)

(assert (=> b!2238542 (= c!356612 (not (contains!4426 (toList!1369 (map!5434 (v!29982 (underlying!6452 (cache!3416 thiss!28743))))) (tuple2!25769 lt!832935 (apply!6495 (v!29982 (underlying!6452 (cache!3416 thiss!28743))) lt!832935)))))))

(declare-fun lt!832932 () Unit!39324)

(assert (=> b!2238542 (= lt!832932 e!1431036)))

(declare-fun lt!832922 () Unit!39324)

(assert (=> b!2238542 (= lt!832922 (forallContained!780 (toList!1369 (map!5434 (v!29982 (underlying!6452 (cache!3416 thiss!28743))))) lambda!84634 (tuple2!25769 lt!832935 (apply!6495 (v!29982 (underlying!6452 (cache!3416 thiss!28743))) lt!832935))))))

(declare-fun lt!832929 () ListLongMap!337)

(assert (=> b!2238542 (= lt!832929 (map!5434 (v!29982 (underlying!6452 (cache!3416 thiss!28743)))))))

(declare-fun lt!832928 () Unit!39324)

(declare-fun lemmaGetPairGetSameValueAsMap!21 (ListLongMap!337 tuple3!4046 (InoxSet Context!4070) Hashable!3035) Unit!39324)

(assert (=> b!2238542 (= lt!832928 (lemmaGetPairGetSameValueAsMap!21 lt!832929 lt!832792 (_2!15377 (get!7976 (getPair!33 (apply!6495 (v!29982 (underlying!6452 (cache!3416 thiss!28743))) lt!832935) lt!832792))) (hashF!4958 (cache!3416 thiss!28743))))))

(declare-fun lt!832931 () Unit!39324)

(declare-fun lemmaInGenMapThenLongMapContainsHash!21 (ListLongMap!337 tuple3!4046 Hashable!3035) Unit!39324)

(assert (=> b!2238542 (= lt!832931 (lemmaInGenMapThenLongMapContainsHash!21 lt!832929 lt!832792 (hashF!4958 (cache!3416 thiss!28743))))))

(assert (=> b!2238542 (contains!4429 lt!832929 (hash!580 (hashF!4958 (cache!3416 thiss!28743)) lt!832792))))

(declare-fun lt!832948 () Unit!39324)

(assert (=> b!2238542 (= lt!832948 lt!832931)))

(declare-fun lt!832944 () (_ BitVec 64))

(assert (=> b!2238542 (= lt!832944 (hash!580 (hashF!4958 (cache!3416 thiss!28743)) lt!832792))))

(declare-fun lt!832937 () List!26460)

(assert (=> b!2238542 (= lt!832937 (apply!6496 lt!832929 (hash!580 (hashF!4958 (cache!3416 thiss!28743)) lt!832792)))))

(declare-fun lt!832926 () Unit!39324)

(declare-fun lemmaGetValueImpliesTupleContained!22 (ListLongMap!337 (_ BitVec 64) List!26460) Unit!39324)

(assert (=> b!2238542 (= lt!832926 (lemmaGetValueImpliesTupleContained!22 lt!832929 lt!832944 lt!832937))))

(assert (=> b!2238542 (contains!4426 (toList!1369 lt!832929) (tuple2!25769 lt!832944 lt!832937))))

(declare-fun lt!832950 () Unit!39324)

(assert (=> b!2238542 (= lt!832950 lt!832926)))

(declare-fun lt!832925 () Unit!39324)

(assert (=> b!2238542 (= lt!832925 (forallContained!780 (toList!1369 lt!832929) lambda!84634 (tuple2!25769 (hash!580 (hashF!4958 (cache!3416 thiss!28743)) lt!832792) (apply!6496 lt!832929 (hash!580 (hashF!4958 (cache!3416 thiss!28743)) lt!832792)))))))

(declare-fun lt!832934 () Unit!39324)

(declare-fun lemmaInGenMapThenGetPairDefined!21 (ListLongMap!337 tuple3!4046 Hashable!3035) Unit!39324)

(assert (=> b!2238542 (= lt!832934 (lemmaInGenMapThenGetPairDefined!21 lt!832929 lt!832792 (hashF!4958 (cache!3416 thiss!28743))))))

(declare-fun lt!832921 () Unit!39324)

(assert (=> b!2238542 (= lt!832921 (lemmaInGenMapThenLongMapContainsHash!21 lt!832929 lt!832792 (hashF!4958 (cache!3416 thiss!28743))))))

(declare-fun lt!832941 () Unit!39324)

(assert (=> b!2238542 (= lt!832941 lt!832921)))

(declare-fun lt!832938 () (_ BitVec 64))

(assert (=> b!2238542 (= lt!832938 (hash!580 (hashF!4958 (cache!3416 thiss!28743)) lt!832792))))

(declare-fun lt!832947 () List!26460)

(assert (=> b!2238542 (= lt!832947 (apply!6496 lt!832929 (hash!580 (hashF!4958 (cache!3416 thiss!28743)) lt!832792)))))

(declare-fun lt!832930 () Unit!39324)

(assert (=> b!2238542 (= lt!832930 (lemmaGetValueImpliesTupleContained!22 lt!832929 lt!832938 lt!832947))))

(assert (=> b!2238542 (contains!4426 (toList!1369 lt!832929) (tuple2!25769 lt!832938 lt!832947))))

(declare-fun lt!832946 () Unit!39324)

(assert (=> b!2238542 (= lt!832946 lt!832930)))

(declare-fun lt!832924 () Unit!39324)

(assert (=> b!2238542 (= lt!832924 (forallContained!780 (toList!1369 lt!832929) lambda!84634 (tuple2!25769 (hash!580 (hashF!4958 (cache!3416 thiss!28743)) lt!832792) (apply!6496 lt!832929 (hash!580 (hashF!4958 (cache!3416 thiss!28743)) lt!832792)))))))

(assert (=> b!2238542 (isDefined!4144 (getPair!33 (apply!6496 lt!832929 (hash!580 (hashF!4958 (cache!3416 thiss!28743)) lt!832792)) lt!832792))))

(declare-fun lt!832939 () Unit!39324)

(assert (=> b!2238542 (= lt!832939 lt!832934)))

(declare-datatypes ((Option!5136 0))(
  ( (None!5135) (Some!5135 (v!29985 (InoxSet Context!4070))) )
))
(declare-fun get!7977 (Option!5136) (InoxSet Context!4070))

(declare-fun getValueByKey!82 (List!26460 tuple3!4046) Option!5136)

(assert (=> b!2238542 (= (_2!15377 (get!7976 (getPair!33 (apply!6496 lt!832929 (hash!580 (hashF!4958 (cache!3416 thiss!28743)) lt!832792)) lt!832792))) (get!7977 (getValueByKey!82 (toList!1368 (extractMap!113 (toList!1369 lt!832929))) lt!832792)))))

(declare-fun lt!832933 () Unit!39324)

(assert (=> b!2238542 (= lt!832933 lt!832928)))

(declare-fun b!2238543 () Bool)

(assert (=> b!2238543 (= e!1431034 (= lt!832940 (get!7977 (getValueByKey!82 (toList!1368 (map!5433 (cache!3416 thiss!28743))) lt!832792))))))

(declare-fun d!665605 () Bool)

(assert (=> d!665605 e!1431034))

(declare-fun c!356613 () Bool)

(assert (=> d!665605 (= c!356613 (contains!4425 (cache!3416 thiss!28743) lt!832792))))

(assert (=> d!665605 (= lt!832940 e!1431035)))

(declare-fun c!356611 () Bool)

(assert (=> d!665605 (= c!356611 (not (contains!4425 (cache!3416 thiss!28743) lt!832792)))))

(assert (=> d!665605 (valid!2355 (cache!3416 thiss!28743))))

(assert (=> d!665605 (= (apply!6494 (cache!3416 thiss!28743) lt!832792) lt!832940)))

(assert (= (and d!665605 c!356611) b!2238540))

(assert (= (and d!665605 (not c!356611)) b!2238542))

(assert (= (and b!2238542 c!356612) b!2238541))

(assert (= (and b!2238542 (not c!356612)) b!2238539))

(assert (= (and d!665605 c!356613) b!2238543))

(assert (= (and d!665605 (not c!356613)) b!2238538))

(declare-fun b_lambda!71729 () Bool)

(assert (=> (not b_lambda!71729) (not b!2238538)))

(declare-fun t!199890 () Bool)

(declare-fun tb!132859 () Bool)

(assert (=> (and b!2238431 (= (defaultValue!3197 (cache!3416 thiss!28743)) (defaultValue!3197 (cache!3416 thiss!28743))) t!199890) tb!132859))

(assert (=> b!2238538 t!199890))

(declare-fun result!161768 () Bool)

(declare-fun b_and!174969 () Bool)

(assert (= b_and!174967 (and (=> t!199890 result!161768) b_and!174969)))

(declare-fun b_lambda!71731 () Bool)

(assert (=> (not b_lambda!71731) (not b!2238540)))

(assert (=> b!2238540 t!199890))

(declare-fun b_and!174971 () Bool)

(assert (= b_and!174969 (and (=> t!199890 result!161768) b_and!174971)))

(declare-fun m!2671610 () Bool)

(assert (=> b!2238540 m!2671610))

(declare-fun m!2671612 () Bool)

(assert (=> b!2238541 m!2671612))

(declare-fun m!2671614 () Bool)

(assert (=> b!2238541 m!2671614))

(assert (=> b!2238541 m!2671554))

(declare-fun m!2671616 () Bool)

(assert (=> b!2238541 m!2671616))

(declare-fun m!2671618 () Bool)

(assert (=> b!2238541 m!2671618))

(declare-fun m!2671620 () Bool)

(assert (=> b!2238541 m!2671620))

(declare-fun m!2671622 () Bool)

(assert (=> b!2238541 m!2671622))

(assert (=> b!2238541 m!2671620))

(assert (=> b!2238538 m!2671610))

(assert (=> d!665605 m!2671529))

(assert (=> d!665605 m!2671536))

(declare-fun m!2671624 () Bool)

(assert (=> b!2238542 m!2671624))

(declare-fun m!2671626 () Bool)

(assert (=> b!2238542 m!2671626))

(declare-fun m!2671628 () Bool)

(assert (=> b!2238542 m!2671628))

(assert (=> b!2238542 m!2671550))

(declare-fun m!2671630 () Bool)

(assert (=> b!2238542 m!2671630))

(declare-fun m!2671632 () Bool)

(assert (=> b!2238542 m!2671632))

(declare-fun m!2671634 () Bool)

(assert (=> b!2238542 m!2671634))

(declare-fun m!2671636 () Bool)

(assert (=> b!2238542 m!2671636))

(assert (=> b!2238542 m!2671550))

(declare-fun m!2671638 () Bool)

(assert (=> b!2238542 m!2671638))

(assert (=> b!2238542 m!2671616))

(declare-fun m!2671640 () Bool)

(assert (=> b!2238542 m!2671640))

(declare-fun m!2671642 () Bool)

(assert (=> b!2238542 m!2671642))

(declare-fun m!2671644 () Bool)

(assert (=> b!2238542 m!2671644))

(declare-fun m!2671646 () Bool)

(assert (=> b!2238542 m!2671646))

(assert (=> b!2238542 m!2671642))

(declare-fun m!2671648 () Bool)

(assert (=> b!2238542 m!2671648))

(declare-fun m!2671650 () Bool)

(assert (=> b!2238542 m!2671650))

(declare-fun m!2671652 () Bool)

(assert (=> b!2238542 m!2671652))

(assert (=> b!2238542 m!2671630))

(assert (=> b!2238542 m!2671642))

(assert (=> b!2238542 m!2671550))

(declare-fun m!2671654 () Bool)

(assert (=> b!2238542 m!2671654))

(assert (=> b!2238542 m!2671554))

(declare-fun m!2671656 () Bool)

(assert (=> b!2238542 m!2671656))

(declare-fun m!2671658 () Bool)

(assert (=> b!2238542 m!2671658))

(assert (=> b!2238542 m!2671634))

(assert (=> b!2238542 m!2671640))

(declare-fun m!2671660 () Bool)

(assert (=> b!2238542 m!2671660))

(declare-fun m!2671662 () Bool)

(assert (=> b!2238542 m!2671662))

(assert (=> b!2238542 m!2671650))

(assert (=> b!2238542 m!2671616))

(assert (=> b!2238543 m!2671538))

(declare-fun m!2671664 () Bool)

(assert (=> b!2238543 m!2671664))

(assert (=> b!2238543 m!2671664))

(declare-fun m!2671666 () Bool)

(assert (=> b!2238543 m!2671666))

(assert (=> b!2238438 d!665605))

(declare-fun d!665607 () Bool)

(declare-fun dynLambda!11537 (Int tuple2!25766) Bool)

(assert (=> d!665607 (dynLambda!11537 lambda!84618 (tuple2!25767 lt!832792 (apply!6494 (cache!3416 thiss!28743) lt!832792)))))

(declare-fun lt!832953 () Unit!39324)

(declare-fun choose!13140 (MutableMap!3035 tuple3!4046 Int) Unit!39324)

(assert (=> d!665607 (= lt!832953 (choose!13140 (cache!3416 thiss!28743) lt!832792 lambda!84618))))

(assert (=> d!665607 (valid!2355 (cache!3416 thiss!28743))))

(assert (=> d!665607 (= (lemmaForallPairsThenForLookup!30 (cache!3416 thiss!28743) lt!832792 lambda!84618) lt!832953)))

(declare-fun b_lambda!71733 () Bool)

(assert (=> (not b_lambda!71733) (not d!665607)))

(declare-fun bs!454259 () Bool)

(assert (= bs!454259 d!665607))

(assert (=> bs!454259 m!2671517))

(declare-fun m!2671668 () Bool)

(assert (=> bs!454259 m!2671668))

(declare-fun m!2671670 () Bool)

(assert (=> bs!454259 m!2671670))

(assert (=> bs!454259 m!2671536))

(assert (=> b!2238438 d!665607))

(assert (=> b!2238437 d!665605))

(declare-fun b!2238566 () Bool)

(declare-fun e!1431051 () (InoxSet Context!4070))

(declare-fun e!1431049 () (InoxSet Context!4070))

(assert (=> b!2238566 (= e!1431051 e!1431049)))

(declare-fun c!356628 () Bool)

(assert (=> b!2238566 (= c!356628 ((_ is Union!6487) (_1!15376 lt!832792)))))

(declare-fun b!2238567 () Bool)

(assert (=> b!2238567 (= e!1431051 (store ((as const (Array Context!4070 Bool)) false) (_2!15376 lt!832792) true))))

(declare-fun b!2238568 () Bool)

(declare-fun e!1431050 () (InoxSet Context!4070))

(declare-fun call!135039 () (InoxSet Context!4070))

(assert (=> b!2238568 (= e!1431050 call!135039)))

(declare-fun b!2238569 () Bool)

(declare-fun e!1431053 () (InoxSet Context!4070))

(assert (=> b!2238569 (= e!1431053 e!1431050)))

(declare-fun c!356626 () Bool)

(assert (=> b!2238569 (= c!356626 ((_ is Concat!10825) (_1!15376 lt!832792)))))

(declare-fun b!2238570 () Bool)

(declare-fun call!135036 () (InoxSet Context!4070))

(declare-fun call!135034 () (InoxSet Context!4070))

(assert (=> b!2238570 (= e!1431053 ((_ map or) call!135036 call!135034))))

(declare-fun call!135037 () List!26459)

(declare-fun bm!135029 () Bool)

(assert (=> bm!135029 (= call!135036 (derivationStepZipperDown!77 (ite c!356628 (regOne!13487 (_1!15376 lt!832792)) (regOne!13486 (_1!15376 lt!832792))) (ite c!356628 (_2!15376 lt!832792) (Context!4071 call!135037)) (_3!2493 lt!832792)))))

(declare-fun b!2238571 () Bool)

(declare-fun c!356624 () Bool)

(declare-fun e!1431054 () Bool)

(assert (=> b!2238571 (= c!356624 e!1431054)))

(declare-fun res!957327 () Bool)

(assert (=> b!2238571 (=> (not res!957327) (not e!1431054))))

(assert (=> b!2238571 (= res!957327 ((_ is Concat!10825) (_1!15376 lt!832792)))))

(assert (=> b!2238571 (= e!1431049 e!1431053)))

(declare-fun b!2238572 () Bool)

(declare-fun e!1431052 () (InoxSet Context!4070))

(assert (=> b!2238572 (= e!1431052 call!135039)))

(declare-fun bm!135030 () Bool)

(declare-fun call!135035 () (InoxSet Context!4070))

(assert (=> bm!135030 (= call!135034 call!135035)))

(declare-fun b!2238573 () Bool)

(assert (=> b!2238573 (= e!1431049 ((_ map or) call!135036 call!135035))))

(declare-fun b!2238574 () Bool)

(assert (=> b!2238574 (= e!1431052 ((as const (Array Context!4070 Bool)) false))))

(declare-fun call!135038 () List!26459)

(declare-fun bm!135032 () Bool)

(assert (=> bm!135032 (= call!135035 (derivationStepZipperDown!77 (ite c!356628 (regTwo!13487 (_1!15376 lt!832792)) (ite c!356624 (regTwo!13486 (_1!15376 lt!832792)) (ite c!356626 (regOne!13486 (_1!15376 lt!832792)) (reg!6816 (_1!15376 lt!832792))))) (ite (or c!356628 c!356624) (_2!15376 lt!832792) (Context!4071 call!135038)) (_3!2493 lt!832792)))))

(declare-fun bm!135031 () Bool)

(declare-fun $colon$colon!534 (List!26459 Regex!6487) List!26459)

(assert (=> bm!135031 (= call!135037 ($colon$colon!534 (exprs!2535 (_2!15376 lt!832792)) (ite (or c!356624 c!356626) (regTwo!13486 (_1!15376 lt!832792)) (_1!15376 lt!832792))))))

(declare-fun d!665609 () Bool)

(declare-fun c!356625 () Bool)

(assert (=> d!665609 (= c!356625 (and ((_ is ElementMatch!6487) (_1!15376 lt!832792)) (= (c!356584 (_1!15376 lt!832792)) (_3!2493 lt!832792))))))

(assert (=> d!665609 (= (derivationStepZipperDown!77 (_1!15376 lt!832792) (_2!15376 lt!832792) (_3!2493 lt!832792)) e!1431051)))

(declare-fun bm!135033 () Bool)

(assert (=> bm!135033 (= call!135038 call!135037)))

(declare-fun bm!135034 () Bool)

(assert (=> bm!135034 (= call!135039 call!135034)))

(declare-fun b!2238575 () Bool)

(declare-fun c!356627 () Bool)

(assert (=> b!2238575 (= c!356627 ((_ is Star!6487) (_1!15376 lt!832792)))))

(assert (=> b!2238575 (= e!1431050 e!1431052)))

(declare-fun b!2238576 () Bool)

(assert (=> b!2238576 (= e!1431054 (nullable!1788 (regOne!13486 (_1!15376 lt!832792))))))

(assert (= (and d!665609 c!356625) b!2238567))

(assert (= (and d!665609 (not c!356625)) b!2238566))

(assert (= (and b!2238566 c!356628) b!2238573))

(assert (= (and b!2238566 (not c!356628)) b!2238571))

(assert (= (and b!2238571 res!957327) b!2238576))

(assert (= (and b!2238571 c!356624) b!2238570))

(assert (= (and b!2238571 (not c!356624)) b!2238569))

(assert (= (and b!2238569 c!356626) b!2238568))

(assert (= (and b!2238569 (not c!356626)) b!2238575))

(assert (= (and b!2238575 c!356627) b!2238572))

(assert (= (and b!2238575 (not c!356627)) b!2238574))

(assert (= (or b!2238568 b!2238572) bm!135033))

(assert (= (or b!2238568 b!2238572) bm!135034))

(assert (= (or b!2238570 bm!135034) bm!135030))

(assert (= (or b!2238570 bm!135033) bm!135031))

(assert (= (or b!2238573 bm!135030) bm!135032))

(assert (= (or b!2238573 b!2238570) bm!135029))

(declare-fun m!2671672 () Bool)

(assert (=> b!2238576 m!2671672))

(declare-fun m!2671674 () Bool)

(assert (=> bm!135031 m!2671674))

(declare-fun m!2671676 () Bool)

(assert (=> bm!135029 m!2671676))

(declare-fun m!2671678 () Bool)

(assert (=> bm!135032 m!2671678))

(declare-fun m!2671680 () Bool)

(assert (=> b!2238567 m!2671680))

(assert (=> b!2238437 d!665609))

(declare-fun b!2238590 () Bool)

(declare-fun e!1431057 () Bool)

(declare-fun tp!704581 () Bool)

(declare-fun tp!704578 () Bool)

(assert (=> b!2238590 (= e!1431057 (and tp!704581 tp!704578))))

(declare-fun b!2238588 () Bool)

(declare-fun tp!704579 () Bool)

(declare-fun tp!704577 () Bool)

(assert (=> b!2238588 (= e!1431057 (and tp!704579 tp!704577))))

(declare-fun b!2238587 () Bool)

(assert (=> b!2238587 (= e!1431057 tp_is_empty!10195)))

(declare-fun b!2238589 () Bool)

(declare-fun tp!704580 () Bool)

(assert (=> b!2238589 (= e!1431057 tp!704580)))

(assert (=> b!2238441 (= tp!704559 e!1431057)))

(assert (= (and b!2238441 ((_ is ElementMatch!6487) (reg!6816 r!4750))) b!2238587))

(assert (= (and b!2238441 ((_ is Concat!10825) (reg!6816 r!4750))) b!2238588))

(assert (= (and b!2238441 ((_ is Star!6487) (reg!6816 r!4750))) b!2238589))

(assert (= (and b!2238441 ((_ is Union!6487) (reg!6816 r!4750))) b!2238590))

(declare-fun b!2238595 () Bool)

(declare-fun e!1431060 () Bool)

(declare-fun tp!704586 () Bool)

(declare-fun tp!704587 () Bool)

(assert (=> b!2238595 (= e!1431060 (and tp!704586 tp!704587))))

(assert (=> b!2238445 (= tp!704557 e!1431060)))

(assert (= (and b!2238445 ((_ is Cons!26365) (exprs!2535 ctx!48))) b!2238595))

(declare-fun setRes!20470 () Bool)

(declare-fun e!1431067 () Bool)

(declare-fun setNonEmpty!20470 () Bool)

(declare-fun setElem!20470 () Context!4070)

(declare-fun tp!704598 () Bool)

(assert (=> setNonEmpty!20470 (= setRes!20470 (and tp!704598 (inv!35815 setElem!20470) e!1431067))))

(declare-fun setRest!20470 () (InoxSet Context!4070))

(assert (=> setNonEmpty!20470 (= (_2!15377 (h!31767 (zeroValue!3383 (v!29981 (underlying!6451 (v!29982 (underlying!6452 (cache!3416 thiss!28743)))))))) ((_ map or) (store ((as const (Array Context!4070 Bool)) false) setElem!20470 true) setRest!20470))))

(declare-fun e!1431069 () Bool)

(assert (=> b!2238440 (= tp!704562 e!1431069)))

(declare-fun b!2238604 () Bool)

(declare-fun tp!704601 () Bool)

(assert (=> b!2238604 (= e!1431067 tp!704601)))

(declare-fun setIsEmpty!20470 () Bool)

(assert (=> setIsEmpty!20470 setRes!20470))

(declare-fun b!2238605 () Bool)

(declare-fun e!1431068 () Bool)

(declare-fun tp!704599 () Bool)

(assert (=> b!2238605 (= e!1431068 tp!704599)))

(declare-fun tp!704602 () Bool)

(declare-fun b!2238606 () Bool)

(declare-fun tp!704600 () Bool)

(assert (=> b!2238606 (= e!1431069 (and tp!704600 (inv!35815 (_2!15376 (_1!15377 (h!31767 (zeroValue!3383 (v!29981 (underlying!6451 (v!29982 (underlying!6452 (cache!3416 thiss!28743)))))))))) e!1431068 tp_is_empty!10195 setRes!20470 tp!704602))))

(declare-fun condSetEmpty!20470 () Bool)

(assert (=> b!2238606 (= condSetEmpty!20470 (= (_2!15377 (h!31767 (zeroValue!3383 (v!29981 (underlying!6451 (v!29982 (underlying!6452 (cache!3416 thiss!28743)))))))) ((as const (Array Context!4070 Bool)) false)))))

(assert (= b!2238606 b!2238605))

(assert (= (and b!2238606 condSetEmpty!20470) setIsEmpty!20470))

(assert (= (and b!2238606 (not condSetEmpty!20470)) setNonEmpty!20470))

(assert (= setNonEmpty!20470 b!2238604))

(assert (= (and b!2238440 ((_ is Cons!26366) (zeroValue!3383 (v!29981 (underlying!6451 (v!29982 (underlying!6452 (cache!3416 thiss!28743)))))))) b!2238606))

(declare-fun m!2671682 () Bool)

(assert (=> setNonEmpty!20470 m!2671682))

(declare-fun m!2671684 () Bool)

(assert (=> b!2238606 m!2671684))

(declare-fun setRes!20471 () Bool)

(declare-fun setElem!20471 () Context!4070)

(declare-fun tp!704603 () Bool)

(declare-fun setNonEmpty!20471 () Bool)

(declare-fun e!1431070 () Bool)

(assert (=> setNonEmpty!20471 (= setRes!20471 (and tp!704603 (inv!35815 setElem!20471) e!1431070))))

(declare-fun setRest!20471 () (InoxSet Context!4070))

(assert (=> setNonEmpty!20471 (= (_2!15377 (h!31767 (minValue!3383 (v!29981 (underlying!6451 (v!29982 (underlying!6452 (cache!3416 thiss!28743)))))))) ((_ map or) (store ((as const (Array Context!4070 Bool)) false) setElem!20471 true) setRest!20471))))

(declare-fun e!1431072 () Bool)

(assert (=> b!2238440 (= tp!704558 e!1431072)))

(declare-fun b!2238607 () Bool)

(declare-fun tp!704606 () Bool)

(assert (=> b!2238607 (= e!1431070 tp!704606)))

(declare-fun setIsEmpty!20471 () Bool)

(assert (=> setIsEmpty!20471 setRes!20471))

(declare-fun b!2238608 () Bool)

(declare-fun e!1431071 () Bool)

(declare-fun tp!704604 () Bool)

(assert (=> b!2238608 (= e!1431071 tp!704604)))

(declare-fun b!2238609 () Bool)

(declare-fun tp!704605 () Bool)

(declare-fun tp!704607 () Bool)

(assert (=> b!2238609 (= e!1431072 (and tp!704605 (inv!35815 (_2!15376 (_1!15377 (h!31767 (minValue!3383 (v!29981 (underlying!6451 (v!29982 (underlying!6452 (cache!3416 thiss!28743)))))))))) e!1431071 tp_is_empty!10195 setRes!20471 tp!704607))))

(declare-fun condSetEmpty!20471 () Bool)

(assert (=> b!2238609 (= condSetEmpty!20471 (= (_2!15377 (h!31767 (minValue!3383 (v!29981 (underlying!6451 (v!29982 (underlying!6452 (cache!3416 thiss!28743)))))))) ((as const (Array Context!4070 Bool)) false)))))

(assert (= b!2238609 b!2238608))

(assert (= (and b!2238609 condSetEmpty!20471) setIsEmpty!20471))

(assert (= (and b!2238609 (not condSetEmpty!20471)) setNonEmpty!20471))

(assert (= setNonEmpty!20471 b!2238607))

(assert (= (and b!2238440 ((_ is Cons!26366) (minValue!3383 (v!29981 (underlying!6451 (v!29982 (underlying!6452 (cache!3416 thiss!28743)))))))) b!2238609))

(declare-fun m!2671686 () Bool)

(assert (=> setNonEmpty!20471 m!2671686))

(declare-fun m!2671688 () Bool)

(assert (=> b!2238609 m!2671688))

(declare-fun b!2238613 () Bool)

(declare-fun e!1431073 () Bool)

(declare-fun tp!704612 () Bool)

(declare-fun tp!704609 () Bool)

(assert (=> b!2238613 (= e!1431073 (and tp!704612 tp!704609))))

(declare-fun b!2238611 () Bool)

(declare-fun tp!704610 () Bool)

(declare-fun tp!704608 () Bool)

(assert (=> b!2238611 (= e!1431073 (and tp!704610 tp!704608))))

(declare-fun b!2238610 () Bool)

(assert (=> b!2238610 (= e!1431073 tp_is_empty!10195)))

(declare-fun b!2238612 () Bool)

(declare-fun tp!704611 () Bool)

(assert (=> b!2238612 (= e!1431073 tp!704611)))

(assert (=> b!2238444 (= tp!704561 e!1431073)))

(assert (= (and b!2238444 ((_ is ElementMatch!6487) (regOne!13487 r!4750))) b!2238610))

(assert (= (and b!2238444 ((_ is Concat!10825) (regOne!13487 r!4750))) b!2238611))

(assert (= (and b!2238444 ((_ is Star!6487) (regOne!13487 r!4750))) b!2238612))

(assert (= (and b!2238444 ((_ is Union!6487) (regOne!13487 r!4750))) b!2238613))

(declare-fun b!2238617 () Bool)

(declare-fun e!1431074 () Bool)

(declare-fun tp!704617 () Bool)

(declare-fun tp!704614 () Bool)

(assert (=> b!2238617 (= e!1431074 (and tp!704617 tp!704614))))

(declare-fun b!2238615 () Bool)

(declare-fun tp!704615 () Bool)

(declare-fun tp!704613 () Bool)

(assert (=> b!2238615 (= e!1431074 (and tp!704615 tp!704613))))

(declare-fun b!2238614 () Bool)

(assert (=> b!2238614 (= e!1431074 tp_is_empty!10195)))

(declare-fun b!2238616 () Bool)

(declare-fun tp!704616 () Bool)

(assert (=> b!2238616 (= e!1431074 tp!704616)))

(assert (=> b!2238444 (= tp!704564 e!1431074)))

(assert (= (and b!2238444 ((_ is ElementMatch!6487) (regTwo!13487 r!4750))) b!2238614))

(assert (= (and b!2238444 ((_ is Concat!10825) (regTwo!13487 r!4750))) b!2238615))

(assert (= (and b!2238444 ((_ is Star!6487) (regTwo!13487 r!4750))) b!2238616))

(assert (= (and b!2238444 ((_ is Union!6487) (regTwo!13487 r!4750))) b!2238617))

(declare-fun tp!704646 () Bool)

(declare-fun setRes!20476 () Bool)

(declare-fun e!1431090 () Bool)

(declare-fun setNonEmpty!20476 () Bool)

(declare-fun setElem!20477 () Context!4070)

(assert (=> setNonEmpty!20476 (= setRes!20476 (and tp!704646 (inv!35815 setElem!20477) e!1431090))))

(declare-fun mapValue!14666 () List!26460)

(declare-fun setRest!20476 () (InoxSet Context!4070))

(assert (=> setNonEmpty!20476 (= (_2!15377 (h!31767 mapValue!14666)) ((_ map or) (store ((as const (Array Context!4070 Bool)) false) setElem!20477 true) setRest!20476))))

(declare-fun setIsEmpty!20476 () Bool)

(declare-fun setRes!20477 () Bool)

(assert (=> setIsEmpty!20476 setRes!20477))

(declare-fun b!2238632 () Bool)

(declare-fun e!1431088 () Bool)

(declare-fun tp!704641 () Bool)

(assert (=> b!2238632 (= e!1431088 tp!704641)))

(declare-fun b!2238633 () Bool)

(declare-fun e!1431092 () Bool)

(declare-fun tp!704647 () Bool)

(assert (=> b!2238633 (= e!1431092 tp!704647)))

(declare-fun b!2238634 () Bool)

(declare-fun e!1431089 () Bool)

(declare-fun tp!704642 () Bool)

(assert (=> b!2238634 (= e!1431089 tp!704642)))

(declare-fun condMapEmpty!14666 () Bool)

(declare-fun mapDefault!14666 () List!26460)

(assert (=> mapNonEmpty!14663 (= condMapEmpty!14666 (= mapRest!14663 ((as const (Array (_ BitVec 32) List!26460)) mapDefault!14666)))))

(declare-fun e!1431091 () Bool)

(declare-fun mapRes!14666 () Bool)

(assert (=> mapNonEmpty!14663 (= tp!704554 (and e!1431091 mapRes!14666))))

(declare-fun tp!704649 () Bool)

(declare-fun tp!704645 () Bool)

(declare-fun b!2238635 () Bool)

(assert (=> b!2238635 (= e!1431091 (and tp!704645 (inv!35815 (_2!15376 (_1!15377 (h!31767 mapDefault!14666)))) e!1431092 tp_is_empty!10195 setRes!20477 tp!704649))))

(declare-fun condSetEmpty!20477 () Bool)

(assert (=> b!2238635 (= condSetEmpty!20477 (= (_2!15377 (h!31767 mapDefault!14666)) ((as const (Array Context!4070 Bool)) false)))))

(declare-fun mapIsEmpty!14666 () Bool)

(assert (=> mapIsEmpty!14666 mapRes!14666))

(declare-fun b!2238636 () Bool)

(declare-fun tp!704644 () Bool)

(assert (=> b!2238636 (= e!1431090 tp!704644)))

(declare-fun setIsEmpty!20477 () Bool)

(assert (=> setIsEmpty!20477 setRes!20476))

(declare-fun mapNonEmpty!14666 () Bool)

(declare-fun tp!704640 () Bool)

(declare-fun e!1431087 () Bool)

(assert (=> mapNonEmpty!14666 (= mapRes!14666 (and tp!704640 e!1431087))))

(declare-fun mapKey!14666 () (_ BitVec 32))

(declare-fun mapRest!14666 () (Array (_ BitVec 32) List!26460))

(assert (=> mapNonEmpty!14666 (= mapRest!14663 (store mapRest!14666 mapKey!14666 mapValue!14666))))

(declare-fun setNonEmpty!20477 () Bool)

(declare-fun tp!704650 () Bool)

(declare-fun setElem!20476 () Context!4070)

(assert (=> setNonEmpty!20477 (= setRes!20477 (and tp!704650 (inv!35815 setElem!20476) e!1431088))))

(declare-fun setRest!20477 () (InoxSet Context!4070))

(assert (=> setNonEmpty!20477 (= (_2!15377 (h!31767 mapDefault!14666)) ((_ map or) (store ((as const (Array Context!4070 Bool)) false) setElem!20476 true) setRest!20477))))

(declare-fun tp!704643 () Bool)

(declare-fun tp!704648 () Bool)

(declare-fun b!2238637 () Bool)

(assert (=> b!2238637 (= e!1431087 (and tp!704648 (inv!35815 (_2!15376 (_1!15377 (h!31767 mapValue!14666)))) e!1431089 tp_is_empty!10195 setRes!20476 tp!704643))))

(declare-fun condSetEmpty!20476 () Bool)

(assert (=> b!2238637 (= condSetEmpty!20476 (= (_2!15377 (h!31767 mapValue!14666)) ((as const (Array Context!4070 Bool)) false)))))

(assert (= (and mapNonEmpty!14663 condMapEmpty!14666) mapIsEmpty!14666))

(assert (= (and mapNonEmpty!14663 (not condMapEmpty!14666)) mapNonEmpty!14666))

(assert (= b!2238637 b!2238634))

(assert (= (and b!2238637 condSetEmpty!20476) setIsEmpty!20477))

(assert (= (and b!2238637 (not condSetEmpty!20476)) setNonEmpty!20476))

(assert (= setNonEmpty!20476 b!2238636))

(assert (= (and mapNonEmpty!14666 ((_ is Cons!26366) mapValue!14666)) b!2238637))

(assert (= b!2238635 b!2238633))

(assert (= (and b!2238635 condSetEmpty!20477) setIsEmpty!20476))

(assert (= (and b!2238635 (not condSetEmpty!20477)) setNonEmpty!20477))

(assert (= setNonEmpty!20477 b!2238632))

(assert (= (and mapNonEmpty!14663 ((_ is Cons!26366) mapDefault!14666)) b!2238635))

(declare-fun m!2671690 () Bool)

(assert (=> mapNonEmpty!14666 m!2671690))

(declare-fun m!2671692 () Bool)

(assert (=> setNonEmpty!20476 m!2671692))

(declare-fun m!2671694 () Bool)

(assert (=> b!2238637 m!2671694))

(declare-fun m!2671696 () Bool)

(assert (=> setNonEmpty!20477 m!2671696))

(declare-fun m!2671698 () Bool)

(assert (=> b!2238635 m!2671698))

(declare-fun e!1431093 () Bool)

(declare-fun tp!704651 () Bool)

(declare-fun setRes!20478 () Bool)

(declare-fun setElem!20478 () Context!4070)

(declare-fun setNonEmpty!20478 () Bool)

(assert (=> setNonEmpty!20478 (= setRes!20478 (and tp!704651 (inv!35815 setElem!20478) e!1431093))))

(declare-fun setRest!20478 () (InoxSet Context!4070))

(assert (=> setNonEmpty!20478 (= (_2!15377 (h!31767 mapValue!14663)) ((_ map or) (store ((as const (Array Context!4070 Bool)) false) setElem!20478 true) setRest!20478))))

(declare-fun e!1431095 () Bool)

(assert (=> mapNonEmpty!14663 (= tp!704563 e!1431095)))

(declare-fun b!2238638 () Bool)

(declare-fun tp!704654 () Bool)

(assert (=> b!2238638 (= e!1431093 tp!704654)))

(declare-fun setIsEmpty!20478 () Bool)

(assert (=> setIsEmpty!20478 setRes!20478))

(declare-fun b!2238639 () Bool)

(declare-fun e!1431094 () Bool)

(declare-fun tp!704652 () Bool)

(assert (=> b!2238639 (= e!1431094 tp!704652)))

(declare-fun tp!704653 () Bool)

(declare-fun tp!704655 () Bool)

(declare-fun b!2238640 () Bool)

(assert (=> b!2238640 (= e!1431095 (and tp!704653 (inv!35815 (_2!15376 (_1!15377 (h!31767 mapValue!14663)))) e!1431094 tp_is_empty!10195 setRes!20478 tp!704655))))

(declare-fun condSetEmpty!20478 () Bool)

(assert (=> b!2238640 (= condSetEmpty!20478 (= (_2!15377 (h!31767 mapValue!14663)) ((as const (Array Context!4070 Bool)) false)))))

(assert (= b!2238640 b!2238639))

(assert (= (and b!2238640 condSetEmpty!20478) setIsEmpty!20478))

(assert (= (and b!2238640 (not condSetEmpty!20478)) setNonEmpty!20478))

(assert (= setNonEmpty!20478 b!2238638))

(assert (= (and mapNonEmpty!14663 ((_ is Cons!26366) mapValue!14663)) b!2238640))

(declare-fun m!2671700 () Bool)

(assert (=> setNonEmpty!20478 m!2671700))

(declare-fun m!2671702 () Bool)

(assert (=> b!2238640 m!2671702))

(declare-fun setElem!20479 () Context!4070)

(declare-fun tp!704656 () Bool)

(declare-fun e!1431096 () Bool)

(declare-fun setNonEmpty!20479 () Bool)

(declare-fun setRes!20479 () Bool)

(assert (=> setNonEmpty!20479 (= setRes!20479 (and tp!704656 (inv!35815 setElem!20479) e!1431096))))

(declare-fun setRest!20479 () (InoxSet Context!4070))

(assert (=> setNonEmpty!20479 (= (_2!15377 (h!31767 mapDefault!14663)) ((_ map or) (store ((as const (Array Context!4070 Bool)) false) setElem!20479 true) setRest!20479))))

(declare-fun e!1431098 () Bool)

(assert (=> b!2238439 (= tp!704566 e!1431098)))

(declare-fun b!2238641 () Bool)

(declare-fun tp!704659 () Bool)

(assert (=> b!2238641 (= e!1431096 tp!704659)))

(declare-fun setIsEmpty!20479 () Bool)

(assert (=> setIsEmpty!20479 setRes!20479))

(declare-fun b!2238642 () Bool)

(declare-fun e!1431097 () Bool)

(declare-fun tp!704657 () Bool)

(assert (=> b!2238642 (= e!1431097 tp!704657)))

(declare-fun tp!704660 () Bool)

(declare-fun tp!704658 () Bool)

(declare-fun b!2238643 () Bool)

(assert (=> b!2238643 (= e!1431098 (and tp!704658 (inv!35815 (_2!15376 (_1!15377 (h!31767 mapDefault!14663)))) e!1431097 tp_is_empty!10195 setRes!20479 tp!704660))))

(declare-fun condSetEmpty!20479 () Bool)

(assert (=> b!2238643 (= condSetEmpty!20479 (= (_2!15377 (h!31767 mapDefault!14663)) ((as const (Array Context!4070 Bool)) false)))))

(assert (= b!2238643 b!2238642))

(assert (= (and b!2238643 condSetEmpty!20479) setIsEmpty!20479))

(assert (= (and b!2238643 (not condSetEmpty!20479)) setNonEmpty!20479))

(assert (= setNonEmpty!20479 b!2238641))

(assert (= (and b!2238439 ((_ is Cons!26366) mapDefault!14663)) b!2238643))

(declare-fun m!2671704 () Bool)

(assert (=> setNonEmpty!20479 m!2671704))

(declare-fun m!2671706 () Bool)

(assert (=> b!2238643 m!2671706))

(declare-fun b!2238647 () Bool)

(declare-fun e!1431099 () Bool)

(declare-fun tp!704665 () Bool)

(declare-fun tp!704662 () Bool)

(assert (=> b!2238647 (= e!1431099 (and tp!704665 tp!704662))))

(declare-fun b!2238645 () Bool)

(declare-fun tp!704663 () Bool)

(declare-fun tp!704661 () Bool)

(assert (=> b!2238645 (= e!1431099 (and tp!704663 tp!704661))))

(declare-fun b!2238644 () Bool)

(assert (=> b!2238644 (= e!1431099 tp_is_empty!10195)))

(declare-fun b!2238646 () Bool)

(declare-fun tp!704664 () Bool)

(assert (=> b!2238646 (= e!1431099 tp!704664)))

(assert (=> b!2238442 (= tp!704556 e!1431099)))

(assert (= (and b!2238442 ((_ is ElementMatch!6487) (regOne!13486 r!4750))) b!2238644))

(assert (= (and b!2238442 ((_ is Concat!10825) (regOne!13486 r!4750))) b!2238645))

(assert (= (and b!2238442 ((_ is Star!6487) (regOne!13486 r!4750))) b!2238646))

(assert (= (and b!2238442 ((_ is Union!6487) (regOne!13486 r!4750))) b!2238647))

(declare-fun b!2238651 () Bool)

(declare-fun e!1431100 () Bool)

(declare-fun tp!704670 () Bool)

(declare-fun tp!704667 () Bool)

(assert (=> b!2238651 (= e!1431100 (and tp!704670 tp!704667))))

(declare-fun b!2238649 () Bool)

(declare-fun tp!704668 () Bool)

(declare-fun tp!704666 () Bool)

(assert (=> b!2238649 (= e!1431100 (and tp!704668 tp!704666))))

(declare-fun b!2238648 () Bool)

(assert (=> b!2238648 (= e!1431100 tp_is_empty!10195)))

(declare-fun b!2238650 () Bool)

(declare-fun tp!704669 () Bool)

(assert (=> b!2238650 (= e!1431100 tp!704669)))

(assert (=> b!2238442 (= tp!704565 e!1431100)))

(assert (= (and b!2238442 ((_ is ElementMatch!6487) (regTwo!13486 r!4750))) b!2238648))

(assert (= (and b!2238442 ((_ is Concat!10825) (regTwo!13486 r!4750))) b!2238649))

(assert (= (and b!2238442 ((_ is Star!6487) (regTwo!13486 r!4750))) b!2238650))

(assert (= (and b!2238442 ((_ is Union!6487) (regTwo!13486 r!4750))) b!2238651))

(declare-fun b_lambda!71735 () Bool)

(assert (= b_lambda!71729 (or (and b!2238431 b_free!64963) b_lambda!71735)))

(declare-fun b_lambda!71737 () Bool)

(assert (= b_lambda!71731 (or (and b!2238431 b_free!64963) b_lambda!71737)))

(declare-fun b_lambda!71739 () Bool)

(assert (= b_lambda!71733 (or b!2238438 b_lambda!71739)))

(declare-fun bs!454260 () Bool)

(declare-fun d!665611 () Bool)

(assert (= bs!454260 (and d!665611 b!2238438)))

(declare-fun res!957328 () Bool)

(declare-fun e!1431101 () Bool)

(assert (=> bs!454260 (=> (not res!957328) (not e!1431101))))

(assert (=> bs!454260 (= res!957328 (validRegex!2441 (_1!15376 (_1!15377 (tuple2!25767 lt!832792 (apply!6494 (cache!3416 thiss!28743) lt!832792))))))))

(assert (=> bs!454260 (= (dynLambda!11537 lambda!84618 (tuple2!25767 lt!832792 (apply!6494 (cache!3416 thiss!28743) lt!832792))) e!1431101)))

(declare-fun b!2238652 () Bool)

(assert (=> b!2238652 (= e!1431101 (= (_2!15377 (tuple2!25767 lt!832792 (apply!6494 (cache!3416 thiss!28743) lt!832792))) (derivationStepZipperDown!77 (_1!15376 (_1!15377 (tuple2!25767 lt!832792 (apply!6494 (cache!3416 thiss!28743) lt!832792)))) (_2!15376 (_1!15377 (tuple2!25767 lt!832792 (apply!6494 (cache!3416 thiss!28743) lt!832792)))) (_3!2493 (_1!15377 (tuple2!25767 lt!832792 (apply!6494 (cache!3416 thiss!28743) lt!832792)))))))))

(assert (= (and bs!454260 res!957328) b!2238652))

(declare-fun m!2671708 () Bool)

(assert (=> bs!454260 m!2671708))

(declare-fun m!2671710 () Bool)

(assert (=> b!2238652 m!2671710))

(assert (=> d!665607 d!665611))

(check-sat (not d!665605) (not b!2238608) (not b!2238523) (not b!2238652) (not b!2238607) (not b!2238484) (not b!2238642) (not b!2238615) (not bm!135001) (not b_lambda!71737) b_and!174971 (not b!2238611) (not b!2238641) (not bm!135029) (not b!2238453) (not b!2238650) (not b_next!65667) (not b!2238595) (not bm!135002) (not b!2238541) (not mapNonEmpty!14666) (not b!2238645) (not b_lambda!71735) (not bm!134999) (not setNonEmpty!20471) (not bm!135031) (not d!665589) (not setNonEmpty!20478) (not b!2238632) (not b!2238483) (not b!2238646) (not b!2238612) (not b!2238456) (not b!2238542) (not bm!135014) (not b!2238480) (not b_next!65665) (not setNonEmpty!20479) (not d!665607) (not b!2238616) (not bs!454260) (not b!2238634) (not b!2238639) (not b!2238590) (not b!2238635) (not tb!132859) (not b!2238479) (not b!2238576) (not b!2238638) (not b!2238589) (not setNonEmpty!20476) (not b!2238588) (not b!2238637) (not b!2238543) tp_is_empty!10195 (not b!2238647) (not bm!135015) (not b!2238633) (not bm!135000) (not b!2238452) (not b!2238649) (not b!2238617) (not b!2238514) (not b!2238636) (not bm!135003) (not setNonEmpty!20470) (not b!2238604) (not b!2238643) (not b!2238489) (not setNonEmpty!20477) (not b!2238606) (not b!2238640) (not b!2238613) (not d!665599) (not bm!135032) (not bm!135011) (not bm!135012) (not b!2238605) (not d!665593) (not bm!135004) (not b!2238651) b_and!174965 (not b!2238609) (not b_lambda!71739))
(check-sat b_and!174965 b_and!174971 (not b_next!65667) (not b_next!65665))
