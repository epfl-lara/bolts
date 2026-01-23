; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!497582 () Bool)

(assert start!497582)

(declare-fun b!4812389 () Bool)

(declare-fun b_free!130259 () Bool)

(declare-fun b_next!131049 () Bool)

(assert (=> b!4812389 (= b_free!130259 (not b_next!131049))))

(declare-fun tp!1361266 () Bool)

(declare-fun b_and!342065 () Bool)

(assert (=> b!4812389 (= tp!1361266 b_and!342065)))

(declare-fun b!4812392 () Bool)

(declare-fun b_free!130261 () Bool)

(declare-fun b_next!131051 () Bool)

(assert (=> b!4812392 (= b_free!130261 (not b_next!131051))))

(declare-fun tp!1361268 () Bool)

(declare-fun b_and!342067 () Bool)

(assert (=> b!4812392 (= tp!1361268 b_and!342067)))

(declare-fun b!4812379 () Bool)

(declare-fun res!2046891 () Bool)

(declare-fun e!3006553 () Bool)

(assert (=> b!4812379 (=> (not res!2046891) (not e!3006553))))

(declare-datatypes ((K!16214 0))(
  ( (K!16215 (val!21277 Int)) )
))
(declare-datatypes ((V!16460 0))(
  ( (V!16461 (val!21278 Int)) )
))
(declare-datatypes ((tuple2!57494 0))(
  ( (tuple2!57495 (_1!32041 K!16214) (_2!32041 V!16460)) )
))
(declare-datatypes ((List!54711 0))(
  ( (Nil!54587) (Cons!54587 (h!61019 tuple2!57494) (t!362201 List!54711)) )
))
(declare-datatypes ((tuple2!57496 0))(
  ( (tuple2!57497 (_1!32042 (_ BitVec 64)) (_2!32042 List!54711)) )
))
(declare-datatypes ((List!54712 0))(
  ( (Nil!54588) (Cons!54588 (h!61020 tuple2!57496) (t!362202 List!54712)) )
))
(declare-datatypes ((ListLongMap!5647 0))(
  ( (ListLongMap!5648 (toList!7170 List!54712)) )
))
(declare-fun lt!1963723 () ListLongMap!5647)

(declare-fun lt!1963721 () (_ BitVec 64))

(declare-fun contains!18317 (ListLongMap!5647 (_ BitVec 64)) Bool)

(assert (=> b!4812379 (= res!2046891 (contains!18317 lt!1963723 lt!1963721))))

(declare-datatypes ((Unit!141639 0))(
  ( (Unit!141640) )
))
(declare-fun e!3006548 () Unit!141639)

(declare-fun b!4812380 () Bool)

(declare-fun lt!1963719 () ListLongMap!5647)

(declare-fun lambda!233844 () Int)

(declare-fun lt!1963724 () tuple2!57496)

(declare-fun forallContained!4278 (List!54712 Int tuple2!57496) Unit!141639)

(assert (=> b!4812380 (= e!3006548 (forallContained!4278 (toList!7170 lt!1963719) lambda!233844 lt!1963724))))

(declare-datatypes ((array!18700 0))(
  ( (array!18701 (arr!8343 (Array (_ BitVec 32) (_ BitVec 64))) (size!36589 (_ BitVec 32))) )
))
(declare-datatypes ((array!18702 0))(
  ( (array!18703 (arr!8344 (Array (_ BitVec 32) List!54711)) (size!36590 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10158 0))(
  ( (LongMapFixedSize!10159 (defaultEntry!5501 Int) (mask!15099 (_ BitVec 32)) (extraKeys!5359 (_ BitVec 32)) (zeroValue!5372 List!54711) (minValue!5372 List!54711) (_size!10183 (_ BitVec 32)) (_keys!5428 array!18700) (_values!5397 array!18702) (_vacant!5144 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!20081 0))(
  ( (Cell!20082 (v!48923 LongMapFixedSize!10158)) )
))
(declare-datatypes ((MutLongMap!5079 0))(
  ( (LongMap!5079 (underlying!10365 Cell!20081)) (MutLongMapExt!5078 (__x!33335 Int)) )
))
(declare-datatypes ((Hashable!7090 0))(
  ( (HashableExt!7089 (__x!33336 Int)) )
))
(declare-datatypes ((Cell!20083 0))(
  ( (Cell!20084 (v!48924 MutLongMap!5079)) )
))
(declare-datatypes ((MutableMap!4963 0))(
  ( (MutableMapExt!4962 (__x!33337 Int)) (HashMap!4963 (underlying!10366 Cell!20083) (hashF!13367 Hashable!7090) (_size!10184 (_ BitVec 32)) (defaultValue!5134 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4963)

(declare-fun map!12456 (MutLongMap!5079) ListLongMap!5647)

(assert (=> b!4812380 (= lt!1963719 (map!12456 (v!48924 (underlying!10366 thiss!41921))))))

(declare-fun lt!1963727 () List!54711)

(declare-fun apply!13182 (MutLongMap!5079 (_ BitVec 64)) List!54711)

(assert (=> b!4812380 (= lt!1963727 (apply!13182 (v!48924 (underlying!10366 thiss!41921)) lt!1963721))))

(assert (=> b!4812380 (= lt!1963724 (tuple2!57497 lt!1963721 lt!1963727))))

(declare-fun c!820202 () Bool)

(declare-fun contains!18318 (List!54712 tuple2!57496) Bool)

(assert (=> b!4812380 (= c!820202 (not (contains!18318 (toList!7170 lt!1963719) lt!1963724)))))

(declare-fun lt!1963728 () Unit!141639)

(declare-fun e!3006554 () Unit!141639)

(assert (=> b!4812380 (= lt!1963728 e!3006554)))

(declare-fun b!4812381 () Bool)

(declare-fun Unit!141641 () Unit!141639)

(assert (=> b!4812381 (= e!3006554 Unit!141641)))

(declare-fun b!4812382 () Bool)

(declare-fun e!3006556 () Bool)

(declare-fun e!3006555 () Bool)

(assert (=> b!4812382 (= e!3006556 e!3006555)))

(declare-fun b!4812383 () Bool)

(assert (=> b!4812383 false))

(declare-fun lt!1963720 () Unit!141639)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!1011 (List!54712 (_ BitVec 64) List!54711) Unit!141639)

(assert (=> b!4812383 (= lt!1963720 (lemmaGetValueByKeyImpliesContainsTuple!1011 (toList!7170 lt!1963719) lt!1963721 lt!1963727))))

(declare-datatypes ((Option!13327 0))(
  ( (None!13326) (Some!13326 (v!48925 List!54711)) )
))
(declare-fun isDefined!10465 (Option!13327) Bool)

(declare-fun getValueByKey!2506 (List!54712 (_ BitVec 64)) Option!13327)

(assert (=> b!4812383 (isDefined!10465 (getValueByKey!2506 (toList!7170 lt!1963719) lt!1963721))))

(declare-fun lt!1963718 () Unit!141639)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2293 (List!54712 (_ BitVec 64)) Unit!141639)

(assert (=> b!4812383 (= lt!1963718 (lemmaContainsKeyImpliesGetValueByKeyDefined!2293 (toList!7170 lt!1963719) lt!1963721))))

(declare-fun containsKey!4170 (List!54712 (_ BitVec 64)) Bool)

(assert (=> b!4812383 (containsKey!4170 (toList!7170 lt!1963719) lt!1963721)))

(declare-fun lt!1963725 () Unit!141639)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!288 (List!54712 (_ BitVec 64)) Unit!141639)

(assert (=> b!4812383 (= lt!1963725 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!288 (toList!7170 lt!1963719) lt!1963721))))

(declare-fun Unit!141642 () Unit!141639)

(assert (=> b!4812383 (= e!3006554 Unit!141642)))

(declare-fun b!4812384 () Bool)

(declare-fun e!3006551 () Bool)

(declare-fun e!3006549 () Bool)

(declare-fun lt!1963722 () MutLongMap!5079)

(get-info :version)

(assert (=> b!4812384 (= e!3006551 (and e!3006549 ((_ is LongMap!5079) lt!1963722)))))

(assert (=> b!4812384 (= lt!1963722 (v!48924 (underlying!10366 thiss!41921)))))

(declare-fun b!4812385 () Bool)

(assert (=> b!4812385 (= e!3006553 false)))

(declare-fun key!1652 () K!16214)

(declare-datatypes ((Option!13328 0))(
  ( (None!13327) (Some!13327 (v!48926 tuple2!57494)) )
))
(declare-fun lt!1963717 () Option!13328)

(declare-fun getPair!969 (List!54711 K!16214) Option!13328)

(declare-fun apply!13183 (ListLongMap!5647 (_ BitVec 64)) List!54711)

(assert (=> b!4812385 (= lt!1963717 (getPair!969 (apply!13183 lt!1963723 lt!1963721) key!1652))))

(declare-fun b!4812386 () Bool)

(declare-fun e!3006557 () Bool)

(declare-fun tp!1361267 () Bool)

(declare-fun mapRes!22424 () Bool)

(assert (=> b!4812386 (= e!3006557 (and tp!1361267 mapRes!22424))))

(declare-fun condMapEmpty!22424 () Bool)

(declare-fun mapDefault!22424 () List!54711)

(assert (=> b!4812386 (= condMapEmpty!22424 (= (arr!8344 (_values!5397 (v!48923 (underlying!10365 (v!48924 (underlying!10366 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54711)) mapDefault!22424)))))

(declare-fun b!4812387 () Bool)

(declare-fun e!3006552 () Bool)

(assert (=> b!4812387 (= e!3006552 e!3006553)))

(declare-fun res!2046893 () Bool)

(assert (=> b!4812387 (=> (not res!2046893) (not e!3006553))))

(declare-datatypes ((ListMap!6587 0))(
  ( (ListMap!6588 (toList!7171 List!54711)) )
))
(declare-fun contains!18319 (ListMap!6587 K!16214) Bool)

(declare-fun extractMap!2545 (List!54712) ListMap!6587)

(assert (=> b!4812387 (= res!2046893 (not (contains!18319 (extractMap!2545 (toList!7170 lt!1963723)) key!1652)))))

(assert (=> b!4812387 (= lt!1963723 (map!12456 (v!48924 (underlying!10366 thiss!41921))))))

(declare-fun lt!1963726 () Unit!141639)

(assert (=> b!4812387 (= lt!1963726 e!3006548)))

(declare-fun c!820203 () Bool)

(declare-fun contains!18320 (MutLongMap!5079 (_ BitVec 64)) Bool)

(assert (=> b!4812387 (= c!820203 (contains!18320 (v!48924 (underlying!10366 thiss!41921)) lt!1963721))))

(declare-fun hash!5155 (Hashable!7090 K!16214) (_ BitVec 64))

(assert (=> b!4812387 (= lt!1963721 (hash!5155 (hashF!13367 thiss!41921) key!1652))))

(declare-fun b!4812388 () Bool)

(declare-fun Unit!141643 () Unit!141639)

(assert (=> b!4812388 (= e!3006548 Unit!141643)))

(declare-fun res!2046892 () Bool)

(assert (=> start!497582 (=> (not res!2046892) (not e!3006552))))

(assert (=> start!497582 (= res!2046892 ((_ is HashMap!4963) thiss!41921))))

(assert (=> start!497582 e!3006552))

(declare-fun e!3006550 () Bool)

(assert (=> start!497582 e!3006550))

(declare-fun tp_is_empty!34043 () Bool)

(assert (=> start!497582 tp_is_empty!34043))

(declare-fun tp!1361272 () Bool)

(declare-fun tp!1361270 () Bool)

(declare-fun array_inv!6027 (array!18700) Bool)

(declare-fun array_inv!6028 (array!18702) Bool)

(assert (=> b!4812389 (= e!3006555 (and tp!1361266 tp!1361270 tp!1361272 (array_inv!6027 (_keys!5428 (v!48923 (underlying!10365 (v!48924 (underlying!10366 thiss!41921)))))) (array_inv!6028 (_values!5397 (v!48923 (underlying!10365 (v!48924 (underlying!10366 thiss!41921)))))) e!3006557))))

(declare-fun b!4812390 () Bool)

(declare-fun res!2046894 () Bool)

(assert (=> b!4812390 (=> (not res!2046894) (not e!3006552))))

(declare-fun valid!4109 (MutableMap!4963) Bool)

(assert (=> b!4812390 (= res!2046894 (valid!4109 thiss!41921))))

(declare-fun mapNonEmpty!22424 () Bool)

(declare-fun tp!1361269 () Bool)

(declare-fun tp!1361271 () Bool)

(assert (=> mapNonEmpty!22424 (= mapRes!22424 (and tp!1361269 tp!1361271))))

(declare-fun mapKey!22424 () (_ BitVec 32))

(declare-fun mapValue!22424 () List!54711)

(declare-fun mapRest!22424 () (Array (_ BitVec 32) List!54711))

(assert (=> mapNonEmpty!22424 (= (arr!8344 (_values!5397 (v!48923 (underlying!10365 (v!48924 (underlying!10366 thiss!41921)))))) (store mapRest!22424 mapKey!22424 mapValue!22424))))

(declare-fun b!4812391 () Bool)

(assert (=> b!4812391 (= e!3006549 e!3006556)))

(declare-fun mapIsEmpty!22424 () Bool)

(assert (=> mapIsEmpty!22424 mapRes!22424))

(assert (=> b!4812392 (= e!3006550 (and e!3006551 tp!1361268))))

(assert (= (and start!497582 res!2046892) b!4812390))

(assert (= (and b!4812390 res!2046894) b!4812387))

(assert (= (and b!4812387 c!820203) b!4812380))

(assert (= (and b!4812387 (not c!820203)) b!4812388))

(assert (= (and b!4812380 c!820202) b!4812383))

(assert (= (and b!4812380 (not c!820202)) b!4812381))

(assert (= (and b!4812387 res!2046893) b!4812379))

(assert (= (and b!4812379 res!2046891) b!4812385))

(assert (= (and b!4812386 condMapEmpty!22424) mapIsEmpty!22424))

(assert (= (and b!4812386 (not condMapEmpty!22424)) mapNonEmpty!22424))

(assert (= b!4812389 b!4812386))

(assert (= b!4812382 b!4812389))

(assert (= b!4812391 b!4812382))

(assert (= (and b!4812384 ((_ is LongMap!5079) (v!48924 (underlying!10366 thiss!41921)))) b!4812391))

(assert (= b!4812392 b!4812384))

(assert (= (and start!497582 ((_ is HashMap!4963) thiss!41921)) b!4812392))

(declare-fun m!5797978 () Bool)

(assert (=> b!4812380 m!5797978))

(declare-fun m!5797980 () Bool)

(assert (=> b!4812380 m!5797980))

(declare-fun m!5797982 () Bool)

(assert (=> b!4812380 m!5797982))

(declare-fun m!5797984 () Bool)

(assert (=> b!4812380 m!5797984))

(declare-fun m!5797986 () Bool)

(assert (=> b!4812385 m!5797986))

(assert (=> b!4812385 m!5797986))

(declare-fun m!5797988 () Bool)

(assert (=> b!4812385 m!5797988))

(declare-fun m!5797990 () Bool)

(assert (=> b!4812390 m!5797990))

(declare-fun m!5797992 () Bool)

(assert (=> b!4812389 m!5797992))

(declare-fun m!5797994 () Bool)

(assert (=> b!4812389 m!5797994))

(declare-fun m!5797996 () Bool)

(assert (=> mapNonEmpty!22424 m!5797996))

(declare-fun m!5797998 () Bool)

(assert (=> b!4812387 m!5797998))

(declare-fun m!5798000 () Bool)

(assert (=> b!4812387 m!5798000))

(declare-fun m!5798002 () Bool)

(assert (=> b!4812387 m!5798002))

(assert (=> b!4812387 m!5797980))

(declare-fun m!5798004 () Bool)

(assert (=> b!4812387 m!5798004))

(assert (=> b!4812387 m!5798000))

(declare-fun m!5798006 () Bool)

(assert (=> b!4812383 m!5798006))

(declare-fun m!5798008 () Bool)

(assert (=> b!4812383 m!5798008))

(assert (=> b!4812383 m!5798006))

(declare-fun m!5798010 () Bool)

(assert (=> b!4812383 m!5798010))

(declare-fun m!5798012 () Bool)

(assert (=> b!4812383 m!5798012))

(declare-fun m!5798014 () Bool)

(assert (=> b!4812383 m!5798014))

(declare-fun m!5798016 () Bool)

(assert (=> b!4812383 m!5798016))

(declare-fun m!5798018 () Bool)

(assert (=> b!4812379 m!5798018))

(check-sat (not b!4812385) (not b!4812387) (not b!4812379) (not b!4812380) (not b_next!131049) b_and!342067 (not b!4812389) (not mapNonEmpty!22424) b_and!342065 (not b!4812383) (not b!4812390) (not b!4812386) (not b_next!131051) tp_is_empty!34043)
(check-sat b_and!342065 b_and!342067 (not b_next!131049) (not b_next!131051))
