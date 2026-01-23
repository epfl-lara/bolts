; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!218192 () Bool)

(assert start!218192)

(declare-fun b!2239548 () Bool)

(declare-fun b_free!65001 () Bool)

(declare-fun b_next!65705 () Bool)

(assert (=> b!2239548 (= b_free!65001 (not b_next!65705))))

(declare-fun tp!705369 () Bool)

(declare-fun b_and!175013 () Bool)

(assert (=> b!2239548 (= tp!705369 b_and!175013)))

(declare-fun b!2239547 () Bool)

(declare-fun b_free!65003 () Bool)

(declare-fun b_next!65707 () Bool)

(assert (=> b!2239547 (= b_free!65003 (not b_next!65707))))

(declare-fun tp!705368 () Bool)

(declare-fun b_and!175015 () Bool)

(assert (=> b!2239547 (= tp!705368 b_and!175015)))

(declare-fun b!2239538 () Bool)

(declare-fun e!1431749 () Bool)

(declare-fun tp!705363 () Bool)

(declare-fun tp!705365 () Bool)

(assert (=> b!2239538 (= e!1431749 (and tp!705363 tp!705365))))

(declare-fun b!2239539 () Bool)

(declare-fun tp!705366 () Bool)

(assert (=> b!2239539 (= e!1431749 tp!705366)))

(declare-fun b!2239540 () Bool)

(declare-fun e!1431740 () Bool)

(declare-fun tp!705371 () Bool)

(declare-fun mapRes!14705 () Bool)

(assert (=> b!2239540 (= e!1431740 (and tp!705371 mapRes!14705))))

(declare-fun condMapEmpty!14705 () Bool)

(declare-datatypes ((C!13140 0))(
  ( (C!13141 (val!7618 Int)) )
))
(declare-datatypes ((Regex!6497 0))(
  ( (ElementMatch!6497 (c!356706 C!13140)) (Concat!10835 (regOne!13506 Regex!6497) (regTwo!13506 Regex!6497)) (EmptyExpr!6497) (Star!6497 (reg!6826 Regex!6497)) (EmptyLang!6497) (Union!6497 (regOne!13507 Regex!6497) (regTwo!13507 Regex!6497)) )
))
(declare-datatypes ((List!26483 0))(
  ( (Nil!26389) (Cons!26389 (h!31790 Regex!6497) (t!199915 List!26483)) )
))
(declare-datatypes ((Context!4090 0))(
  ( (Context!4091 (exprs!2545 List!26483)) )
))
(declare-datatypes ((tuple3!4066 0))(
  ( (tuple3!4067 (_1!15400 Regex!6497) (_2!15400 Context!4090) (_3!2503 C!13140)) )
))
(declare-datatypes ((Hashable!3045 0))(
  ( (HashableExt!3044 (__x!17631 Int)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25794 0))(
  ( (tuple2!25795 (_1!15401 tuple3!4066) (_2!15401 (InoxSet Context!4090))) )
))
(declare-datatypes ((List!26484 0))(
  ( (Nil!26390) (Cons!26390 (h!31791 tuple2!25794) (t!199916 List!26484)) )
))
(declare-datatypes ((array!10940 0))(
  ( (array!10941 (arr!4857 (Array (_ BitVec 32) List!26484)) (size!20638 (_ BitVec 32))) )
))
(declare-datatypes ((array!10942 0))(
  ( (array!10943 (arr!4858 (Array (_ BitVec 32) (_ BitVec 64))) (size!20639 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6270 0))(
  ( (LongMapFixedSize!6271 (defaultEntry!3500 Int) (mask!7737 (_ BitVec 32)) (extraKeys!3383 (_ BitVec 32)) (zeroValue!3393 List!26484) (minValue!3393 List!26484) (_size!6317 (_ BitVec 32)) (_keys!3432 array!10942) (_values!3415 array!10940) (_vacant!3196 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12357 0))(
  ( (Cell!12358 (v!30011 LongMapFixedSize!6270)) )
))
(declare-datatypes ((MutLongMap!3135 0))(
  ( (LongMap!3135 (underlying!6471 Cell!12357)) (MutLongMapExt!3134 (__x!17632 Int)) )
))
(declare-datatypes ((Cell!12359 0))(
  ( (Cell!12360 (v!30012 MutLongMap!3135)) )
))
(declare-datatypes ((MutableMap!3045 0))(
  ( (MutableMapExt!3044 (__x!17633 Int)) (HashMap!3045 (underlying!6472 Cell!12359) (hashF!4968 Hashable!3045) (_size!6318 (_ BitVec 32)) (defaultValue!3207 Int)) )
))
(declare-datatypes ((CacheDown!2136 0))(
  ( (CacheDown!2137 (cache!3426 MutableMap!3045)) )
))
(declare-fun thiss!28743 () CacheDown!2136)

(declare-fun mapDefault!14705 () List!26484)

(assert (=> b!2239540 (= condMapEmpty!14705 (= (arr!4857 (_values!3415 (v!30011 (underlying!6471 (v!30012 (underlying!6472 (cache!3426 thiss!28743))))))) ((as const (Array (_ BitVec 32) List!26484)) mapDefault!14705)))))

(declare-fun mapIsEmpty!14705 () Bool)

(assert (=> mapIsEmpty!14705 mapRes!14705))

(declare-fun b!2239541 () Bool)

(declare-fun res!957505 () Bool)

(declare-fun e!1431744 () Bool)

(assert (=> b!2239541 (=> (not res!957505) (not e!1431744))))

(declare-fun ctx!48 () Context!4090)

(declare-fun r!4750 () Regex!6497)

(declare-fun a!970 () C!13140)

(declare-fun contains!4447 (MutableMap!3045 tuple3!4066) Bool)

(assert (=> b!2239541 (= res!957505 (contains!4447 (cache!3426 thiss!28743) (tuple3!4067 r!4750 ctx!48 a!970)))))

(declare-fun b!2239542 () Bool)

(declare-fun e!1431748 () Bool)

(declare-fun e!1431745 () Bool)

(assert (=> b!2239542 (= e!1431748 e!1431745)))

(declare-fun res!957506 () Bool)

(assert (=> start!218192 (=> (not res!957506) (not e!1431744))))

(declare-fun validCacheMapDown!339 (MutableMap!3045) Bool)

(assert (=> start!218192 (= res!957506 (validCacheMapDown!339 (cache!3426 thiss!28743)))))

(assert (=> start!218192 e!1431744))

(declare-fun inv!35843 (CacheDown!2136) Bool)

(assert (=> start!218192 (and (inv!35843 thiss!28743) e!1431748)))

(assert (=> start!218192 e!1431749))

(declare-fun e!1431742 () Bool)

(declare-fun inv!35844 (Context!4090) Bool)

(assert (=> start!218192 (and (inv!35844 ctx!48) e!1431742)))

(declare-fun tp_is_empty!10215 () Bool)

(assert (=> start!218192 tp_is_empty!10215))

(declare-fun b!2239543 () Bool)

(declare-fun tp!705372 () Bool)

(assert (=> b!2239543 (= e!1431742 tp!705372)))

(declare-fun b!2239544 () Bool)

(declare-fun tp!705370 () Bool)

(declare-fun tp!705364 () Bool)

(assert (=> b!2239544 (= e!1431749 (and tp!705370 tp!705364))))

(declare-fun b!2239545 () Bool)

(assert (=> b!2239545 (= e!1431749 tp_is_empty!10215)))

(declare-fun mapNonEmpty!14705 () Bool)

(declare-fun tp!705367 () Bool)

(declare-fun tp!705361 () Bool)

(assert (=> mapNonEmpty!14705 (= mapRes!14705 (and tp!705367 tp!705361))))

(declare-fun mapRest!14705 () (Array (_ BitVec 32) List!26484))

(declare-fun mapValue!14705 () List!26484)

(declare-fun mapKey!14705 () (_ BitVec 32))

(assert (=> mapNonEmpty!14705 (= (arr!4857 (_values!3415 (v!30011 (underlying!6471 (v!30012 (underlying!6472 (cache!3426 thiss!28743))))))) (store mapRest!14705 mapKey!14705 mapValue!14705))))

(declare-fun b!2239546 () Bool)

(declare-fun e!1431747 () Bool)

(declare-fun e!1431746 () Bool)

(assert (=> b!2239546 (= e!1431747 e!1431746)))

(declare-fun e!1431750 () Bool)

(assert (=> b!2239547 (= e!1431745 (and e!1431750 tp!705368))))

(declare-fun tp!705360 () Bool)

(declare-fun tp!705362 () Bool)

(declare-fun array_inv!3487 (array!10942) Bool)

(declare-fun array_inv!3488 (array!10940) Bool)

(assert (=> b!2239548 (= e!1431746 (and tp!705369 tp!705360 tp!705362 (array_inv!3487 (_keys!3432 (v!30011 (underlying!6471 (v!30012 (underlying!6472 (cache!3426 thiss!28743))))))) (array_inv!3488 (_values!3415 (v!30011 (underlying!6471 (v!30012 (underlying!6472 (cache!3426 thiss!28743))))))) e!1431740))))

(declare-fun b!2239549 () Bool)

(declare-fun e!1431743 () Bool)

(declare-fun lt!833310 () MutLongMap!3135)

(get-info :version)

(assert (=> b!2239549 (= e!1431750 (and e!1431743 ((_ is LongMap!3135) lt!833310)))))

(assert (=> b!2239549 (= lt!833310 (v!30012 (underlying!6472 (cache!3426 thiss!28743))))))

(declare-fun b!2239550 () Bool)

(assert (=> b!2239550 (= e!1431744 (not ((_ is HashMap!3045) (cache!3426 thiss!28743))))))

(declare-fun b!2239551 () Bool)

(assert (=> b!2239551 (= e!1431743 e!1431747)))

(assert (= (and start!218192 res!957506) b!2239541))

(assert (= (and b!2239541 res!957505) b!2239550))

(assert (= (and b!2239540 condMapEmpty!14705) mapIsEmpty!14705))

(assert (= (and b!2239540 (not condMapEmpty!14705)) mapNonEmpty!14705))

(assert (= b!2239548 b!2239540))

(assert (= b!2239546 b!2239548))

(assert (= b!2239551 b!2239546))

(assert (= (and b!2239549 ((_ is LongMap!3135) (v!30012 (underlying!6472 (cache!3426 thiss!28743))))) b!2239551))

(assert (= b!2239547 b!2239549))

(assert (= (and b!2239542 ((_ is HashMap!3045) (cache!3426 thiss!28743))) b!2239547))

(assert (= start!218192 b!2239542))

(assert (= (and start!218192 ((_ is ElementMatch!6497) r!4750)) b!2239545))

(assert (= (and start!218192 ((_ is Concat!10835) r!4750)) b!2239538))

(assert (= (and start!218192 ((_ is Star!6497) r!4750)) b!2239539))

(assert (= (and start!218192 ((_ is Union!6497) r!4750)) b!2239544))

(assert (= start!218192 b!2239543))

(declare-fun m!2672229 () Bool)

(assert (=> b!2239541 m!2672229))

(declare-fun m!2672231 () Bool)

(assert (=> start!218192 m!2672231))

(declare-fun m!2672233 () Bool)

(assert (=> start!218192 m!2672233))

(declare-fun m!2672235 () Bool)

(assert (=> start!218192 m!2672235))

(declare-fun m!2672237 () Bool)

(assert (=> mapNonEmpty!14705 m!2672237))

(declare-fun m!2672239 () Bool)

(assert (=> b!2239548 m!2672239))

(declare-fun m!2672241 () Bool)

(assert (=> b!2239548 m!2672241))

(check-sat b_and!175013 (not b!2239540) (not b!2239539) tp_is_empty!10215 (not b!2239548) (not b!2239544) (not b!2239538) (not b_next!65707) b_and!175015 (not start!218192) (not b_next!65705) (not mapNonEmpty!14705) (not b!2239543) (not b!2239541))
(check-sat b_and!175013 b_and!175015 (not b_next!65707) (not b_next!65705))
(get-model)

(declare-fun b!2239574 () Bool)

(declare-fun e!1431765 () Bool)

(declare-fun lt!833361 () (_ BitVec 64))

(declare-datatypes ((Option!5144 0))(
  ( (None!5143) (Some!5143 (v!30013 tuple2!25794)) )
))
(declare-fun isDefined!4152 (Option!5144) Bool)

(declare-fun getPair!37 (List!26484 tuple3!4066) Option!5144)

(declare-fun apply!6505 (MutLongMap!3135 (_ BitVec 64)) List!26484)

(assert (=> b!2239574 (= e!1431765 (isDefined!4152 (getPair!37 (apply!6505 (v!30012 (underlying!6472 (cache!3426 thiss!28743))) lt!833361) (tuple3!4067 r!4750 ctx!48 a!970))))))

(declare-fun bm!135131 () Bool)

(declare-datatypes ((tuple2!25796 0))(
  ( (tuple2!25797 (_1!15402 (_ BitVec 64)) (_2!15402 List!26484)) )
))
(declare-datatypes ((List!26485 0))(
  ( (Nil!26391) (Cons!26391 (h!31792 tuple2!25796) (t!199917 List!26485)) )
))
(declare-datatypes ((ListLongMap!345 0))(
  ( (ListLongMap!346 (toList!1376 List!26485)) )
))
(declare-fun call!135138 () ListLongMap!345)

(declare-fun map!5446 (MutLongMap!3135) ListLongMap!345)

(assert (=> bm!135131 (= call!135138 (map!5446 (v!30012 (underlying!6472 (cache!3426 thiss!28743)))))))

(declare-fun d!665670 () Bool)

(declare-fun lt!833355 () Bool)

(declare-datatypes ((ListMap!861 0))(
  ( (ListMap!862 (toList!1377 List!26484)) )
))
(declare-fun contains!4448 (ListMap!861 tuple3!4066) Bool)

(declare-fun map!5447 (MutableMap!3045) ListMap!861)

(assert (=> d!665670 (= lt!833355 (contains!4448 (map!5447 (cache!3426 thiss!28743)) (tuple3!4067 r!4750 ctx!48 a!970)))))

(assert (=> d!665670 (= lt!833355 e!1431765)))

(declare-fun res!957513 () Bool)

(assert (=> d!665670 (=> (not res!957513) (not e!1431765))))

(declare-fun contains!4449 (MutLongMap!3135 (_ BitVec 64)) Bool)

(assert (=> d!665670 (= res!957513 (contains!4449 (v!30012 (underlying!6472 (cache!3426 thiss!28743))) lt!833361))))

(declare-datatypes ((Unit!39356 0))(
  ( (Unit!39357) )
))
(declare-fun lt!833352 () Unit!39356)

(declare-fun e!1431768 () Unit!39356)

(assert (=> d!665670 (= lt!833352 e!1431768)))

(declare-fun c!356717 () Bool)

(declare-fun extractMap!117 (List!26485) ListMap!861)

(assert (=> d!665670 (= c!356717 (contains!4448 (extractMap!117 (toList!1376 (map!5446 (v!30012 (underlying!6472 (cache!3426 thiss!28743)))))) (tuple3!4067 r!4750 ctx!48 a!970)))))

(declare-fun lt!833369 () Unit!39356)

(declare-fun e!1431769 () Unit!39356)

(assert (=> d!665670 (= lt!833369 e!1431769)))

(declare-fun c!356715 () Bool)

(assert (=> d!665670 (= c!356715 (contains!4449 (v!30012 (underlying!6472 (cache!3426 thiss!28743))) lt!833361))))

(declare-fun hash!584 (Hashable!3045 tuple3!4066) (_ BitVec 64))

(assert (=> d!665670 (= lt!833361 (hash!584 (hashF!4968 (cache!3426 thiss!28743)) (tuple3!4067 r!4750 ctx!48 a!970)))))

(declare-fun valid!2361 (MutableMap!3045) Bool)

(assert (=> d!665670 (valid!2361 (cache!3426 thiss!28743))))

(assert (=> d!665670 (= (contains!4447 (cache!3426 thiss!28743) (tuple3!4067 r!4750 ctx!48 a!970)) lt!833355)))

(declare-fun bm!135132 () Bool)

(declare-fun call!135136 () (_ BitVec 64))

(assert (=> bm!135132 (= call!135136 (hash!584 (hashF!4968 (cache!3426 thiss!28743)) (tuple3!4067 r!4750 ctx!48 a!970)))))

(declare-fun b!2239575 () Bool)

(declare-fun e!1431770 () Unit!39356)

(assert (=> b!2239575 (= e!1431768 e!1431770)))

(declare-fun res!957514 () Bool)

(declare-fun call!135137 () Bool)

(assert (=> b!2239575 (= res!957514 call!135137)))

(declare-fun e!1431771 () Bool)

(assert (=> b!2239575 (=> (not res!957514) (not e!1431771))))

(declare-fun c!356716 () Bool)

(assert (=> b!2239575 (= c!356716 e!1431771)))

(declare-fun b!2239576 () Bool)

(assert (=> b!2239576 false))

(declare-fun lt!833351 () Unit!39356)

(declare-fun lt!833360 () Unit!39356)

(assert (=> b!2239576 (= lt!833351 lt!833360)))

(declare-fun lt!833358 () ListLongMap!345)

(assert (=> b!2239576 (contains!4448 (extractMap!117 (toList!1376 lt!833358)) (tuple3!4067 r!4750 ctx!48 a!970))))

(declare-fun lemmaInLongMapThenInGenericMap!37 (ListLongMap!345 tuple3!4066 Hashable!3045) Unit!39356)

(assert (=> b!2239576 (= lt!833360 (lemmaInLongMapThenInGenericMap!37 lt!833358 (tuple3!4067 r!4750 ctx!48 a!970) (hashF!4968 (cache!3426 thiss!28743))))))

(assert (=> b!2239576 (= lt!833358 call!135138)))

(declare-fun Unit!39358 () Unit!39356)

(assert (=> b!2239576 (= e!1431770 Unit!39358)))

(declare-fun bm!135133 () Bool)

(declare-fun call!135140 () Bool)

(declare-fun call!135139 () Option!5144)

(assert (=> bm!135133 (= call!135140 (isDefined!4152 call!135139))))

(declare-fun bm!135134 () Bool)

(declare-fun lt!833367 () ListLongMap!345)

(declare-fun call!135141 () List!26484)

(declare-fun apply!6506 (ListLongMap!345 (_ BitVec 64)) List!26484)

(assert (=> bm!135134 (= call!135141 (apply!6506 (ite c!356717 lt!833367 call!135138) call!135136))))

(declare-fun b!2239577 () Bool)

(declare-fun Unit!39359 () Unit!39356)

(assert (=> b!2239577 (= e!1431769 Unit!39359)))

(declare-fun b!2239578 () Bool)

(declare-fun Unit!39360 () Unit!39356)

(assert (=> b!2239578 (= e!1431770 Unit!39360)))

(declare-fun b!2239579 () Bool)

(assert (=> b!2239579 false))

(declare-fun lt!833366 () Unit!39356)

(declare-fun lt!833365 () Unit!39356)

(assert (=> b!2239579 (= lt!833366 lt!833365)))

(declare-fun lt!833362 () List!26485)

(declare-fun lt!833363 () List!26484)

(declare-fun contains!4450 (List!26485 tuple2!25796) Bool)

(assert (=> b!2239579 (contains!4450 lt!833362 (tuple2!25797 lt!833361 lt!833363))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!38 (List!26485 (_ BitVec 64) List!26484) Unit!39356)

(assert (=> b!2239579 (= lt!833365 (lemmaGetValueByKeyImpliesContainsTuple!38 lt!833362 lt!833361 lt!833363))))

(assert (=> b!2239579 (= lt!833363 (apply!6505 (v!30012 (underlying!6472 (cache!3426 thiss!28743))) lt!833361))))

(assert (=> b!2239579 (= lt!833362 (toList!1376 (map!5446 (v!30012 (underlying!6472 (cache!3426 thiss!28743))))))))

(declare-fun lt!833354 () Unit!39356)

(declare-fun lt!833368 () Unit!39356)

(assert (=> b!2239579 (= lt!833354 lt!833368)))

(declare-fun lt!833370 () List!26485)

(declare-datatypes ((Option!5145 0))(
  ( (None!5144) (Some!5144 (v!30014 List!26484)) )
))
(declare-fun isDefined!4153 (Option!5145) Bool)

(declare-fun getValueByKey!87 (List!26485 (_ BitVec 64)) Option!5145)

(assert (=> b!2239579 (isDefined!4153 (getValueByKey!87 lt!833370 lt!833361))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!55 (List!26485 (_ BitVec 64)) Unit!39356)

(assert (=> b!2239579 (= lt!833368 (lemmaContainsKeyImpliesGetValueByKeyDefined!55 lt!833370 lt!833361))))

(assert (=> b!2239579 (= lt!833370 (toList!1376 (map!5446 (v!30012 (underlying!6472 (cache!3426 thiss!28743))))))))

(declare-fun lt!833356 () Unit!39356)

(declare-fun lt!833364 () Unit!39356)

(assert (=> b!2239579 (= lt!833356 lt!833364)))

(declare-fun lt!833353 () List!26485)

(declare-fun containsKey!86 (List!26485 (_ BitVec 64)) Bool)

(assert (=> b!2239579 (containsKey!86 lt!833353 lt!833361)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!38 (List!26485 (_ BitVec 64)) Unit!39356)

(assert (=> b!2239579 (= lt!833364 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!38 lt!833353 lt!833361))))

(assert (=> b!2239579 (= lt!833353 (toList!1376 (map!5446 (v!30012 (underlying!6472 (cache!3426 thiss!28743))))))))

(declare-fun e!1431766 () Unit!39356)

(declare-fun Unit!39361 () Unit!39356)

(assert (=> b!2239579 (= e!1431766 Unit!39361)))

(declare-fun b!2239580 () Bool)

(declare-fun e!1431767 () Bool)

(assert (=> b!2239580 (= e!1431767 call!135140)))

(declare-fun b!2239581 () Bool)

(declare-fun lt!833359 () Unit!39356)

(assert (=> b!2239581 (= e!1431768 lt!833359)))

(assert (=> b!2239581 (= lt!833367 call!135138)))

(declare-fun lemmaInGenericMapThenInLongMap!37 (ListLongMap!345 tuple3!4066 Hashable!3045) Unit!39356)

(assert (=> b!2239581 (= lt!833359 (lemmaInGenericMapThenInLongMap!37 lt!833367 (tuple3!4067 r!4750 ctx!48 a!970) (hashF!4968 (cache!3426 thiss!28743))))))

(declare-fun res!957515 () Bool)

(assert (=> b!2239581 (= res!957515 call!135137)))

(assert (=> b!2239581 (=> (not res!957515) (not e!1431767))))

(assert (=> b!2239581 e!1431767))

(declare-fun b!2239582 () Bool)

(assert (=> b!2239582 (= e!1431771 call!135140)))

(declare-fun b!2239583 () Bool)

(declare-fun Unit!39362 () Unit!39356)

(assert (=> b!2239583 (= e!1431766 Unit!39362)))

(declare-fun bm!135135 () Bool)

(assert (=> bm!135135 (= call!135139 (getPair!37 call!135141 (tuple3!4067 r!4750 ctx!48 a!970)))))

(declare-fun bm!135136 () Bool)

(declare-fun contains!4451 (ListLongMap!345 (_ BitVec 64)) Bool)

(assert (=> bm!135136 (= call!135137 (contains!4451 (ite c!356717 lt!833367 call!135138) call!135136))))

(declare-fun lambda!84683 () Int)

(declare-fun b!2239584 () Bool)

(declare-fun forallContained!784 (List!26485 Int tuple2!25796) Unit!39356)

(assert (=> b!2239584 (= e!1431769 (forallContained!784 (toList!1376 (map!5446 (v!30012 (underlying!6472 (cache!3426 thiss!28743))))) lambda!84683 (tuple2!25797 lt!833361 (apply!6505 (v!30012 (underlying!6472 (cache!3426 thiss!28743))) lt!833361))))))

(declare-fun c!356718 () Bool)

(assert (=> b!2239584 (= c!356718 (not (contains!4450 (toList!1376 (map!5446 (v!30012 (underlying!6472 (cache!3426 thiss!28743))))) (tuple2!25797 lt!833361 (apply!6505 (v!30012 (underlying!6472 (cache!3426 thiss!28743))) lt!833361)))))))

(declare-fun lt!833357 () Unit!39356)

(assert (=> b!2239584 (= lt!833357 e!1431766)))

(assert (= (and d!665670 c!356715) b!2239584))

(assert (= (and d!665670 (not c!356715)) b!2239577))

(assert (= (and b!2239584 c!356718) b!2239579))

(assert (= (and b!2239584 (not c!356718)) b!2239583))

(assert (= (and d!665670 c!356717) b!2239581))

(assert (= (and d!665670 (not c!356717)) b!2239575))

(assert (= (and b!2239581 res!957515) b!2239580))

(assert (= (and b!2239575 res!957514) b!2239582))

(assert (= (and b!2239575 c!356716) b!2239576))

(assert (= (and b!2239575 (not c!356716)) b!2239578))

(assert (= (or b!2239581 b!2239575 b!2239582 b!2239576) bm!135131))

(assert (= (or b!2239581 b!2239580 b!2239575 b!2239582) bm!135132))

(assert (= (or b!2239581 b!2239575) bm!135136))

(assert (= (or b!2239580 b!2239582) bm!135134))

(assert (= (or b!2239580 b!2239582) bm!135135))

(assert (= (or b!2239580 b!2239582) bm!135133))

(assert (= (and d!665670 res!957513) b!2239574))

(declare-fun m!2672243 () Bool)

(assert (=> bm!135136 m!2672243))

(declare-fun m!2672245 () Bool)

(assert (=> bm!135134 m!2672245))

(declare-fun m!2672247 () Bool)

(assert (=> b!2239581 m!2672247))

(declare-fun m!2672249 () Bool)

(assert (=> b!2239574 m!2672249))

(assert (=> b!2239574 m!2672249))

(declare-fun m!2672251 () Bool)

(assert (=> b!2239574 m!2672251))

(assert (=> b!2239574 m!2672251))

(declare-fun m!2672253 () Bool)

(assert (=> b!2239574 m!2672253))

(declare-fun m!2672255 () Bool)

(assert (=> bm!135132 m!2672255))

(declare-fun m!2672257 () Bool)

(assert (=> b!2239579 m!2672257))

(declare-fun m!2672259 () Bool)

(assert (=> b!2239579 m!2672259))

(declare-fun m!2672261 () Bool)

(assert (=> b!2239579 m!2672261))

(declare-fun m!2672263 () Bool)

(assert (=> b!2239579 m!2672263))

(assert (=> b!2239579 m!2672263))

(declare-fun m!2672265 () Bool)

(assert (=> b!2239579 m!2672265))

(declare-fun m!2672267 () Bool)

(assert (=> b!2239579 m!2672267))

(assert (=> b!2239579 m!2672249))

(declare-fun m!2672269 () Bool)

(assert (=> b!2239579 m!2672269))

(declare-fun m!2672271 () Bool)

(assert (=> b!2239579 m!2672271))

(declare-fun m!2672273 () Bool)

(assert (=> bm!135135 m!2672273))

(declare-fun m!2672275 () Bool)

(assert (=> b!2239576 m!2672275))

(assert (=> b!2239576 m!2672275))

(declare-fun m!2672277 () Bool)

(assert (=> b!2239576 m!2672277))

(declare-fun m!2672279 () Bool)

(assert (=> b!2239576 m!2672279))

(assert (=> bm!135131 m!2672257))

(declare-fun m!2672281 () Bool)

(assert (=> d!665670 m!2672281))

(declare-fun m!2672283 () Bool)

(assert (=> d!665670 m!2672283))

(declare-fun m!2672285 () Bool)

(assert (=> d!665670 m!2672285))

(assert (=> d!665670 m!2672283))

(assert (=> d!665670 m!2672255))

(declare-fun m!2672287 () Bool)

(assert (=> d!665670 m!2672287))

(declare-fun m!2672289 () Bool)

(assert (=> d!665670 m!2672289))

(assert (=> d!665670 m!2672287))

(assert (=> d!665670 m!2672257))

(declare-fun m!2672291 () Bool)

(assert (=> d!665670 m!2672291))

(declare-fun m!2672293 () Bool)

(assert (=> bm!135133 m!2672293))

(assert (=> b!2239584 m!2672257))

(assert (=> b!2239584 m!2672249))

(declare-fun m!2672295 () Bool)

(assert (=> b!2239584 m!2672295))

(declare-fun m!2672297 () Bool)

(assert (=> b!2239584 m!2672297))

(assert (=> b!2239541 d!665670))

(declare-fun d!665672 () Bool)

(declare-fun res!957522 () Bool)

(declare-fun e!1431776 () Bool)

(assert (=> d!665672 (=> (not res!957522) (not e!1431776))))

(assert (=> d!665672 (= res!957522 (valid!2361 (cache!3426 thiss!28743)))))

(assert (=> d!665672 (= (validCacheMapDown!339 (cache!3426 thiss!28743)) e!1431776)))

(declare-fun b!2239591 () Bool)

(declare-fun res!957523 () Bool)

(assert (=> b!2239591 (=> (not res!957523) (not e!1431776))))

(declare-fun invariantList!383 (List!26484) Bool)

(assert (=> b!2239591 (= res!957523 (invariantList!383 (toList!1377 (map!5447 (cache!3426 thiss!28743)))))))

(declare-fun b!2239592 () Bool)

(declare-fun lambda!84686 () Int)

(declare-fun forall!5427 (List!26484 Int) Bool)

(assert (=> b!2239592 (= e!1431776 (forall!5427 (toList!1377 (map!5447 (cache!3426 thiss!28743))) lambda!84686))))

(assert (= (and d!665672 res!957522) b!2239591))

(assert (= (and b!2239591 res!957523) b!2239592))

(assert (=> d!665672 m!2672291))

(assert (=> b!2239591 m!2672283))

(declare-fun m!2672300 () Bool)

(assert (=> b!2239591 m!2672300))

(assert (=> b!2239592 m!2672283))

(declare-fun m!2672302 () Bool)

(assert (=> b!2239592 m!2672302))

(assert (=> start!218192 d!665672))

(declare-fun d!665674 () Bool)

(declare-fun res!957526 () Bool)

(declare-fun e!1431779 () Bool)

(assert (=> d!665674 (=> (not res!957526) (not e!1431779))))

(assert (=> d!665674 (= res!957526 ((_ is HashMap!3045) (cache!3426 thiss!28743)))))

(assert (=> d!665674 (= (inv!35843 thiss!28743) e!1431779)))

(declare-fun b!2239595 () Bool)

(assert (=> b!2239595 (= e!1431779 (validCacheMapDown!339 (cache!3426 thiss!28743)))))

(assert (= (and d!665674 res!957526) b!2239595))

(assert (=> b!2239595 m!2672231))

(assert (=> start!218192 d!665674))

(declare-fun d!665676 () Bool)

(declare-fun lambda!84689 () Int)

(declare-fun forall!5428 (List!26483 Int) Bool)

(assert (=> d!665676 (= (inv!35844 ctx!48) (forall!5428 (exprs!2545 ctx!48) lambda!84689))))

(declare-fun bs!454281 () Bool)

(assert (= bs!454281 d!665676))

(declare-fun m!2672304 () Bool)

(assert (=> bs!454281 m!2672304))

(assert (=> start!218192 d!665676))

(declare-fun d!665678 () Bool)

(assert (=> d!665678 (= (array_inv!3487 (_keys!3432 (v!30011 (underlying!6471 (v!30012 (underlying!6472 (cache!3426 thiss!28743))))))) (bvsge (size!20639 (_keys!3432 (v!30011 (underlying!6471 (v!30012 (underlying!6472 (cache!3426 thiss!28743))))))) #b00000000000000000000000000000000))))

(assert (=> b!2239548 d!665678))

(declare-fun d!665680 () Bool)

(assert (=> d!665680 (= (array_inv!3488 (_values!3415 (v!30011 (underlying!6471 (v!30012 (underlying!6472 (cache!3426 thiss!28743))))))) (bvsge (size!20638 (_values!3415 (v!30011 (underlying!6471 (v!30012 (underlying!6472 (cache!3426 thiss!28743))))))) #b00000000000000000000000000000000))))

(assert (=> b!2239548 d!665680))

(declare-fun b!2239606 () Bool)

(declare-fun e!1431782 () Bool)

(assert (=> b!2239606 (= e!1431782 tp_is_empty!10215)))

(declare-fun b!2239608 () Bool)

(declare-fun tp!705387 () Bool)

(assert (=> b!2239608 (= e!1431782 tp!705387)))

(declare-fun b!2239609 () Bool)

(declare-fun tp!705384 () Bool)

(declare-fun tp!705383 () Bool)

(assert (=> b!2239609 (= e!1431782 (and tp!705384 tp!705383))))

(declare-fun b!2239607 () Bool)

(declare-fun tp!705386 () Bool)

(declare-fun tp!705385 () Bool)

(assert (=> b!2239607 (= e!1431782 (and tp!705386 tp!705385))))

(assert (=> b!2239538 (= tp!705363 e!1431782)))

(assert (= (and b!2239538 ((_ is ElementMatch!6497) (regOne!13506 r!4750))) b!2239606))

(assert (= (and b!2239538 ((_ is Concat!10835) (regOne!13506 r!4750))) b!2239607))

(assert (= (and b!2239538 ((_ is Star!6497) (regOne!13506 r!4750))) b!2239608))

(assert (= (and b!2239538 ((_ is Union!6497) (regOne!13506 r!4750))) b!2239609))

(declare-fun b!2239610 () Bool)

(declare-fun e!1431783 () Bool)

(assert (=> b!2239610 (= e!1431783 tp_is_empty!10215)))

(declare-fun b!2239612 () Bool)

(declare-fun tp!705392 () Bool)

(assert (=> b!2239612 (= e!1431783 tp!705392)))

(declare-fun b!2239613 () Bool)

(declare-fun tp!705389 () Bool)

(declare-fun tp!705388 () Bool)

(assert (=> b!2239613 (= e!1431783 (and tp!705389 tp!705388))))

(declare-fun b!2239611 () Bool)

(declare-fun tp!705391 () Bool)

(declare-fun tp!705390 () Bool)

(assert (=> b!2239611 (= e!1431783 (and tp!705391 tp!705390))))

(assert (=> b!2239538 (= tp!705365 e!1431783)))

(assert (= (and b!2239538 ((_ is ElementMatch!6497) (regTwo!13506 r!4750))) b!2239610))

(assert (= (and b!2239538 ((_ is Concat!10835) (regTwo!13506 r!4750))) b!2239611))

(assert (= (and b!2239538 ((_ is Star!6497) (regTwo!13506 r!4750))) b!2239612))

(assert (= (and b!2239538 ((_ is Union!6497) (regTwo!13506 r!4750))) b!2239613))

(declare-fun b!2239618 () Bool)

(declare-fun e!1431786 () Bool)

(declare-fun tp!705397 () Bool)

(declare-fun tp!705398 () Bool)

(assert (=> b!2239618 (= e!1431786 (and tp!705397 tp!705398))))

(assert (=> b!2239543 (= tp!705372 e!1431786)))

(assert (= (and b!2239543 ((_ is Cons!26389) (exprs!2545 ctx!48))) b!2239618))

(declare-fun b!2239619 () Bool)

(declare-fun e!1431787 () Bool)

(assert (=> b!2239619 (= e!1431787 tp_is_empty!10215)))

(declare-fun b!2239621 () Bool)

(declare-fun tp!705403 () Bool)

(assert (=> b!2239621 (= e!1431787 tp!705403)))

(declare-fun b!2239622 () Bool)

(declare-fun tp!705400 () Bool)

(declare-fun tp!705399 () Bool)

(assert (=> b!2239622 (= e!1431787 (and tp!705400 tp!705399))))

(declare-fun b!2239620 () Bool)

(declare-fun tp!705402 () Bool)

(declare-fun tp!705401 () Bool)

(assert (=> b!2239620 (= e!1431787 (and tp!705402 tp!705401))))

(assert (=> b!2239539 (= tp!705366 e!1431787)))

(assert (= (and b!2239539 ((_ is ElementMatch!6497) (reg!6826 r!4750))) b!2239619))

(assert (= (and b!2239539 ((_ is Concat!10835) (reg!6826 r!4750))) b!2239620))

(assert (= (and b!2239539 ((_ is Star!6497) (reg!6826 r!4750))) b!2239621))

(assert (= (and b!2239539 ((_ is Union!6497) (reg!6826 r!4750))) b!2239622))

(declare-fun e!1431795 () Bool)

(assert (=> b!2239548 (= tp!705360 e!1431795)))

(declare-fun setIsEmpty!20518 () Bool)

(declare-fun setRes!20518 () Bool)

(assert (=> setIsEmpty!20518 setRes!20518))

(declare-fun b!2239631 () Bool)

(declare-fun e!1431794 () Bool)

(declare-fun tp!705418 () Bool)

(assert (=> b!2239631 (= e!1431794 tp!705418)))

(declare-fun b!2239632 () Bool)

(declare-fun e!1431796 () Bool)

(declare-fun tp!705414 () Bool)

(assert (=> b!2239632 (= e!1431796 tp!705414)))

(declare-fun b!2239633 () Bool)

(declare-fun tp!705415 () Bool)

(declare-fun tp!705417 () Bool)

(assert (=> b!2239633 (= e!1431795 (and tp!705415 (inv!35844 (_2!15400 (_1!15401 (h!31791 (zeroValue!3393 (v!30011 (underlying!6471 (v!30012 (underlying!6472 (cache!3426 thiss!28743)))))))))) e!1431794 tp_is_empty!10215 setRes!20518 tp!705417))))

(declare-fun condSetEmpty!20518 () Bool)

(assert (=> b!2239633 (= condSetEmpty!20518 (= (_2!15401 (h!31791 (zeroValue!3393 (v!30011 (underlying!6471 (v!30012 (underlying!6472 (cache!3426 thiss!28743)))))))) ((as const (Array Context!4090 Bool)) false)))))

(declare-fun tp!705416 () Bool)

(declare-fun setElem!20518 () Context!4090)

(declare-fun setNonEmpty!20518 () Bool)

(assert (=> setNonEmpty!20518 (= setRes!20518 (and tp!705416 (inv!35844 setElem!20518) e!1431796))))

(declare-fun setRest!20518 () (InoxSet Context!4090))

(assert (=> setNonEmpty!20518 (= (_2!15401 (h!31791 (zeroValue!3393 (v!30011 (underlying!6471 (v!30012 (underlying!6472 (cache!3426 thiss!28743)))))))) ((_ map or) (store ((as const (Array Context!4090 Bool)) false) setElem!20518 true) setRest!20518))))

(assert (= b!2239633 b!2239631))

(assert (= (and b!2239633 condSetEmpty!20518) setIsEmpty!20518))

(assert (= (and b!2239633 (not condSetEmpty!20518)) setNonEmpty!20518))

(assert (= setNonEmpty!20518 b!2239632))

(assert (= (and b!2239548 ((_ is Cons!26390) (zeroValue!3393 (v!30011 (underlying!6471 (v!30012 (underlying!6472 (cache!3426 thiss!28743)))))))) b!2239633))

(declare-fun m!2672306 () Bool)

(assert (=> b!2239633 m!2672306))

(declare-fun m!2672308 () Bool)

(assert (=> setNonEmpty!20518 m!2672308))

(declare-fun e!1431798 () Bool)

(assert (=> b!2239548 (= tp!705362 e!1431798)))

(declare-fun setIsEmpty!20519 () Bool)

(declare-fun setRes!20519 () Bool)

(assert (=> setIsEmpty!20519 setRes!20519))

(declare-fun b!2239634 () Bool)

(declare-fun e!1431797 () Bool)

(declare-fun tp!705423 () Bool)

(assert (=> b!2239634 (= e!1431797 tp!705423)))

(declare-fun b!2239635 () Bool)

(declare-fun e!1431799 () Bool)

(declare-fun tp!705419 () Bool)

(assert (=> b!2239635 (= e!1431799 tp!705419)))

(declare-fun b!2239636 () Bool)

(declare-fun tp!705422 () Bool)

(declare-fun tp!705420 () Bool)

(assert (=> b!2239636 (= e!1431798 (and tp!705420 (inv!35844 (_2!15400 (_1!15401 (h!31791 (minValue!3393 (v!30011 (underlying!6471 (v!30012 (underlying!6472 (cache!3426 thiss!28743)))))))))) e!1431797 tp_is_empty!10215 setRes!20519 tp!705422))))

(declare-fun condSetEmpty!20519 () Bool)

(assert (=> b!2239636 (= condSetEmpty!20519 (= (_2!15401 (h!31791 (minValue!3393 (v!30011 (underlying!6471 (v!30012 (underlying!6472 (cache!3426 thiss!28743)))))))) ((as const (Array Context!4090 Bool)) false)))))

(declare-fun tp!705421 () Bool)

(declare-fun setElem!20519 () Context!4090)

(declare-fun setNonEmpty!20519 () Bool)

(assert (=> setNonEmpty!20519 (= setRes!20519 (and tp!705421 (inv!35844 setElem!20519) e!1431799))))

(declare-fun setRest!20519 () (InoxSet Context!4090))

(assert (=> setNonEmpty!20519 (= (_2!15401 (h!31791 (minValue!3393 (v!30011 (underlying!6471 (v!30012 (underlying!6472 (cache!3426 thiss!28743)))))))) ((_ map or) (store ((as const (Array Context!4090 Bool)) false) setElem!20519 true) setRest!20519))))

(assert (= b!2239636 b!2239634))

(assert (= (and b!2239636 condSetEmpty!20519) setIsEmpty!20519))

(assert (= (and b!2239636 (not condSetEmpty!20519)) setNonEmpty!20519))

(assert (= setNonEmpty!20519 b!2239635))

(assert (= (and b!2239548 ((_ is Cons!26390) (minValue!3393 (v!30011 (underlying!6471 (v!30012 (underlying!6472 (cache!3426 thiss!28743)))))))) b!2239636))

(declare-fun m!2672310 () Bool)

(assert (=> b!2239636 m!2672310))

(declare-fun m!2672312 () Bool)

(assert (=> setNonEmpty!20519 m!2672312))

(declare-fun b!2239637 () Bool)

(declare-fun e!1431800 () Bool)

(assert (=> b!2239637 (= e!1431800 tp_is_empty!10215)))

(declare-fun b!2239639 () Bool)

(declare-fun tp!705428 () Bool)

(assert (=> b!2239639 (= e!1431800 tp!705428)))

(declare-fun b!2239640 () Bool)

(declare-fun tp!705425 () Bool)

(declare-fun tp!705424 () Bool)

(assert (=> b!2239640 (= e!1431800 (and tp!705425 tp!705424))))

(declare-fun b!2239638 () Bool)

(declare-fun tp!705427 () Bool)

(declare-fun tp!705426 () Bool)

(assert (=> b!2239638 (= e!1431800 (and tp!705427 tp!705426))))

(assert (=> b!2239544 (= tp!705370 e!1431800)))

(assert (= (and b!2239544 ((_ is ElementMatch!6497) (regOne!13507 r!4750))) b!2239637))

(assert (= (and b!2239544 ((_ is Concat!10835) (regOne!13507 r!4750))) b!2239638))

(assert (= (and b!2239544 ((_ is Star!6497) (regOne!13507 r!4750))) b!2239639))

(assert (= (and b!2239544 ((_ is Union!6497) (regOne!13507 r!4750))) b!2239640))

(declare-fun b!2239641 () Bool)

(declare-fun e!1431801 () Bool)

(assert (=> b!2239641 (= e!1431801 tp_is_empty!10215)))

(declare-fun b!2239643 () Bool)

(declare-fun tp!705433 () Bool)

(assert (=> b!2239643 (= e!1431801 tp!705433)))

(declare-fun b!2239644 () Bool)

(declare-fun tp!705430 () Bool)

(declare-fun tp!705429 () Bool)

(assert (=> b!2239644 (= e!1431801 (and tp!705430 tp!705429))))

(declare-fun b!2239642 () Bool)

(declare-fun tp!705432 () Bool)

(declare-fun tp!705431 () Bool)

(assert (=> b!2239642 (= e!1431801 (and tp!705432 tp!705431))))

(assert (=> b!2239544 (= tp!705364 e!1431801)))

(assert (= (and b!2239544 ((_ is ElementMatch!6497) (regTwo!13507 r!4750))) b!2239641))

(assert (= (and b!2239544 ((_ is Concat!10835) (regTwo!13507 r!4750))) b!2239642))

(assert (= (and b!2239544 ((_ is Star!6497) (regTwo!13507 r!4750))) b!2239643))

(assert (= (and b!2239544 ((_ is Union!6497) (regTwo!13507 r!4750))) b!2239644))

(declare-fun e!1431803 () Bool)

(assert (=> b!2239540 (= tp!705371 e!1431803)))

(declare-fun setIsEmpty!20520 () Bool)

(declare-fun setRes!20520 () Bool)

(assert (=> setIsEmpty!20520 setRes!20520))

(declare-fun b!2239645 () Bool)

(declare-fun e!1431802 () Bool)

(declare-fun tp!705438 () Bool)

(assert (=> b!2239645 (= e!1431802 tp!705438)))

(declare-fun b!2239646 () Bool)

(declare-fun e!1431804 () Bool)

(declare-fun tp!705434 () Bool)

(assert (=> b!2239646 (= e!1431804 tp!705434)))

(declare-fun tp!705435 () Bool)

(declare-fun tp!705437 () Bool)

(declare-fun b!2239647 () Bool)

(assert (=> b!2239647 (= e!1431803 (and tp!705435 (inv!35844 (_2!15400 (_1!15401 (h!31791 mapDefault!14705)))) e!1431802 tp_is_empty!10215 setRes!20520 tp!705437))))

(declare-fun condSetEmpty!20520 () Bool)

(assert (=> b!2239647 (= condSetEmpty!20520 (= (_2!15401 (h!31791 mapDefault!14705)) ((as const (Array Context!4090 Bool)) false)))))

(declare-fun setElem!20520 () Context!4090)

(declare-fun tp!705436 () Bool)

(declare-fun setNonEmpty!20520 () Bool)

(assert (=> setNonEmpty!20520 (= setRes!20520 (and tp!705436 (inv!35844 setElem!20520) e!1431804))))

(declare-fun setRest!20520 () (InoxSet Context!4090))

(assert (=> setNonEmpty!20520 (= (_2!15401 (h!31791 mapDefault!14705)) ((_ map or) (store ((as const (Array Context!4090 Bool)) false) setElem!20520 true) setRest!20520))))

(assert (= b!2239647 b!2239645))

(assert (= (and b!2239647 condSetEmpty!20520) setIsEmpty!20520))

(assert (= (and b!2239647 (not condSetEmpty!20520)) setNonEmpty!20520))

(assert (= setNonEmpty!20520 b!2239646))

(assert (= (and b!2239540 ((_ is Cons!26390) mapDefault!14705)) b!2239647))

(declare-fun m!2672314 () Bool)

(assert (=> b!2239647 m!2672314))

(declare-fun m!2672316 () Bool)

(assert (=> setNonEmpty!20520 m!2672316))

(declare-fun mapNonEmpty!14708 () Bool)

(declare-fun mapRes!14708 () Bool)

(declare-fun tp!705464 () Bool)

(declare-fun e!1431822 () Bool)

(assert (=> mapNonEmpty!14708 (= mapRes!14708 (and tp!705464 e!1431822))))

(declare-fun mapKey!14708 () (_ BitVec 32))

(declare-fun mapValue!14708 () List!26484)

(declare-fun mapRest!14708 () (Array (_ BitVec 32) List!26484))

(assert (=> mapNonEmpty!14708 (= mapRest!14705 (store mapRest!14708 mapKey!14708 mapValue!14708))))

(declare-fun mapIsEmpty!14708 () Bool)

(assert (=> mapIsEmpty!14708 mapRes!14708))

(declare-fun e!1431817 () Bool)

(declare-fun setElem!20525 () Context!4090)

(declare-fun tp!705470 () Bool)

(declare-fun setRes!20526 () Bool)

(declare-fun setNonEmpty!20525 () Bool)

(assert (=> setNonEmpty!20525 (= setRes!20526 (and tp!705470 (inv!35844 setElem!20525) e!1431817))))

(declare-fun mapDefault!14708 () List!26484)

(declare-fun setRest!20525 () (InoxSet Context!4090))

(assert (=> setNonEmpty!20525 (= (_2!15401 (h!31791 mapDefault!14708)) ((_ map or) (store ((as const (Array Context!4090 Bool)) false) setElem!20525 true) setRest!20525))))

(declare-fun b!2239662 () Bool)

(declare-fun e!1431821 () Bool)

(declare-fun tp!705467 () Bool)

(assert (=> b!2239662 (= e!1431821 tp!705467)))

(declare-fun setNonEmpty!20526 () Bool)

(declare-fun tp!705468 () Bool)

(declare-fun e!1431819 () Bool)

(declare-fun setRes!20525 () Bool)

(declare-fun setElem!20526 () Context!4090)

(assert (=> setNonEmpty!20526 (= setRes!20525 (and tp!705468 (inv!35844 setElem!20526) e!1431819))))

(declare-fun setRest!20526 () (InoxSet Context!4090))

(assert (=> setNonEmpty!20526 (= (_2!15401 (h!31791 mapValue!14708)) ((_ map or) (store ((as const (Array Context!4090 Bool)) false) setElem!20526 true) setRest!20526))))

(declare-fun e!1431818 () Bool)

(declare-fun tp!705466 () Bool)

(declare-fun tp!705462 () Bool)

(declare-fun b!2239663 () Bool)

(assert (=> b!2239663 (= e!1431818 (and tp!705466 (inv!35844 (_2!15400 (_1!15401 (h!31791 mapDefault!14708)))) e!1431821 tp_is_empty!10215 setRes!20526 tp!705462))))

(declare-fun condSetEmpty!20526 () Bool)

(assert (=> b!2239663 (= condSetEmpty!20526 (= (_2!15401 (h!31791 mapDefault!14708)) ((as const (Array Context!4090 Bool)) false)))))

(declare-fun setIsEmpty!20525 () Bool)

(assert (=> setIsEmpty!20525 setRes!20525))

(declare-fun b!2239664 () Bool)

(declare-fun tp!705461 () Bool)

(assert (=> b!2239664 (= e!1431819 tp!705461)))

(declare-fun tp!705465 () Bool)

(declare-fun tp!705463 () Bool)

(declare-fun b!2239665 () Bool)

(declare-fun e!1431820 () Bool)

(assert (=> b!2239665 (= e!1431822 (and tp!705465 (inv!35844 (_2!15400 (_1!15401 (h!31791 mapValue!14708)))) e!1431820 tp_is_empty!10215 setRes!20525 tp!705463))))

(declare-fun condSetEmpty!20525 () Bool)

(assert (=> b!2239665 (= condSetEmpty!20525 (= (_2!15401 (h!31791 mapValue!14708)) ((as const (Array Context!4090 Bool)) false)))))

(declare-fun setIsEmpty!20526 () Bool)

(assert (=> setIsEmpty!20526 setRes!20526))

(declare-fun condMapEmpty!14708 () Bool)

(assert (=> mapNonEmpty!14705 (= condMapEmpty!14708 (= mapRest!14705 ((as const (Array (_ BitVec 32) List!26484)) mapDefault!14708)))))

(assert (=> mapNonEmpty!14705 (= tp!705367 (and e!1431818 mapRes!14708))))

(declare-fun b!2239666 () Bool)

(declare-fun tp!705469 () Bool)

(assert (=> b!2239666 (= e!1431817 tp!705469)))

(declare-fun b!2239667 () Bool)

(declare-fun tp!705471 () Bool)

(assert (=> b!2239667 (= e!1431820 tp!705471)))

(assert (= (and mapNonEmpty!14705 condMapEmpty!14708) mapIsEmpty!14708))

(assert (= (and mapNonEmpty!14705 (not condMapEmpty!14708)) mapNonEmpty!14708))

(assert (= b!2239665 b!2239667))

(assert (= (and b!2239665 condSetEmpty!20525) setIsEmpty!20525))

(assert (= (and b!2239665 (not condSetEmpty!20525)) setNonEmpty!20526))

(assert (= setNonEmpty!20526 b!2239664))

(assert (= (and mapNonEmpty!14708 ((_ is Cons!26390) mapValue!14708)) b!2239665))

(assert (= b!2239663 b!2239662))

(assert (= (and b!2239663 condSetEmpty!20526) setIsEmpty!20526))

(assert (= (and b!2239663 (not condSetEmpty!20526)) setNonEmpty!20525))

(assert (= setNonEmpty!20525 b!2239666))

(assert (= (and mapNonEmpty!14705 ((_ is Cons!26390) mapDefault!14708)) b!2239663))

(declare-fun m!2672318 () Bool)

(assert (=> b!2239665 m!2672318))

(declare-fun m!2672320 () Bool)

(assert (=> setNonEmpty!20525 m!2672320))

(declare-fun m!2672322 () Bool)

(assert (=> setNonEmpty!20526 m!2672322))

(declare-fun m!2672324 () Bool)

(assert (=> mapNonEmpty!14708 m!2672324))

(declare-fun m!2672326 () Bool)

(assert (=> b!2239663 m!2672326))

(declare-fun e!1431824 () Bool)

(assert (=> mapNonEmpty!14705 (= tp!705361 e!1431824)))

(declare-fun setIsEmpty!20527 () Bool)

(declare-fun setRes!20527 () Bool)

(assert (=> setIsEmpty!20527 setRes!20527))

(declare-fun b!2239668 () Bool)

(declare-fun e!1431823 () Bool)

(declare-fun tp!705476 () Bool)

(assert (=> b!2239668 (= e!1431823 tp!705476)))

(declare-fun b!2239669 () Bool)

(declare-fun e!1431825 () Bool)

(declare-fun tp!705472 () Bool)

(assert (=> b!2239669 (= e!1431825 tp!705472)))

(declare-fun tp!705473 () Bool)

(declare-fun b!2239670 () Bool)

(declare-fun tp!705475 () Bool)

(assert (=> b!2239670 (= e!1431824 (and tp!705473 (inv!35844 (_2!15400 (_1!15401 (h!31791 mapValue!14705)))) e!1431823 tp_is_empty!10215 setRes!20527 tp!705475))))

(declare-fun condSetEmpty!20527 () Bool)

(assert (=> b!2239670 (= condSetEmpty!20527 (= (_2!15401 (h!31791 mapValue!14705)) ((as const (Array Context!4090 Bool)) false)))))

(declare-fun setNonEmpty!20527 () Bool)

(declare-fun tp!705474 () Bool)

(declare-fun setElem!20527 () Context!4090)

(assert (=> setNonEmpty!20527 (= setRes!20527 (and tp!705474 (inv!35844 setElem!20527) e!1431825))))

(declare-fun setRest!20527 () (InoxSet Context!4090))

(assert (=> setNonEmpty!20527 (= (_2!15401 (h!31791 mapValue!14705)) ((_ map or) (store ((as const (Array Context!4090 Bool)) false) setElem!20527 true) setRest!20527))))

(assert (= b!2239670 b!2239668))

(assert (= (and b!2239670 condSetEmpty!20527) setIsEmpty!20527))

(assert (= (and b!2239670 (not condSetEmpty!20527)) setNonEmpty!20527))

(assert (= setNonEmpty!20527 b!2239669))

(assert (= (and mapNonEmpty!14705 ((_ is Cons!26390) mapValue!14705)) b!2239670))

(declare-fun m!2672328 () Bool)

(assert (=> b!2239670 m!2672328))

(declare-fun m!2672330 () Bool)

(assert (=> setNonEmpty!20527 m!2672330))

(check-sat b_and!175013 (not b!2239584) (not b!2239611) (not b!2239647) (not b_next!65707) (not b!2239581) (not b_next!65705) (not b!2239609) (not b!2239612) (not d!665676) (not b!2239662) (not b!2239645) (not b!2239607) (not b!2239635) (not setNonEmpty!20527) (not setNonEmpty!20520) (not setNonEmpty!20518) (not b!2239633) (not b!2239666) (not b!2239620) (not b!2239592) (not setNonEmpty!20525) (not b!2239574) tp_is_empty!10215 (not b!2239621) (not b!2239669) (not b!2239613) (not bm!135135) (not b!2239663) (not b!2239579) (not b!2239595) (not b!2239667) (not b!2239618) (not b!2239665) (not b!2239591) (not b!2239668) (not b!2239644) (not b!2239631) (not bm!135132) (not d!665672) (not b!2239632) (not mapNonEmpty!14708) (not b!2239608) (not bm!135131) (not d!665670) (not b!2239664) (not setNonEmpty!20526) (not setNonEmpty!20519) (not b!2239576) (not b!2239670) b_and!175015 (not b!2239639) (not bm!135134) (not b!2239643) (not bm!135136) (not b!2239622) (not b!2239634) (not b!2239636) (not b!2239646) (not b!2239638) (not b!2239640) (not b!2239642) (not bm!135133))
(check-sat b_and!175013 b_and!175015 (not b_next!65707) (not b_next!65705))
