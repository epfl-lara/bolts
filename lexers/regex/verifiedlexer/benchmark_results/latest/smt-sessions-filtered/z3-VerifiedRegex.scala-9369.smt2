; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!497286 () Bool)

(assert start!497286)

(declare-fun b!4810475 () Bool)

(declare-fun b_free!130131 () Bool)

(declare-fun b_next!130921 () Bool)

(assert (=> b!4810475 (= b_free!130131 (not b_next!130921))))

(declare-fun tp!1360487 () Bool)

(declare-fun b_and!341915 () Bool)

(assert (=> b!4810475 (= tp!1360487 b_and!341915)))

(declare-fun b!4810484 () Bool)

(declare-fun b_free!130133 () Bool)

(declare-fun b_next!130923 () Bool)

(assert (=> b!4810484 (= b_free!130133 (not b_next!130923))))

(declare-fun tp!1360489 () Bool)

(declare-fun b_and!341917 () Bool)

(assert (=> b!4810484 (= tp!1360489 b_and!341917)))

(declare-fun b!4810470 () Bool)

(declare-fun e!3005012 () Bool)

(declare-fun e!3005002 () Bool)

(assert (=> b!4810470 (= e!3005012 e!3005002)))

(declare-fun b!4810471 () Bool)

(assert (=> b!4810471 false))

(declare-datatypes ((K!16134 0))(
  ( (K!16135 (val!21213 Int)) )
))
(declare-datatypes ((V!16380 0))(
  ( (V!16381 (val!21214 Int)) )
))
(declare-datatypes ((tuple2!57376 0))(
  ( (tuple2!57377 (_1!31982 K!16134) (_2!31982 V!16380)) )
))
(declare-datatypes ((List!54649 0))(
  ( (Nil!54525) (Cons!54525 (h!60957 tuple2!57376) (t!362129 List!54649)) )
))
(declare-datatypes ((tuple2!57378 0))(
  ( (tuple2!57379 (_1!31983 (_ BitVec 64)) (_2!31983 List!54649)) )
))
(declare-datatypes ((List!54650 0))(
  ( (Nil!54526) (Cons!54526 (h!60958 tuple2!57378) (t!362130 List!54650)) )
))
(declare-datatypes ((ListLongMap!5593 0))(
  ( (ListLongMap!5594 (toList!7137 List!54650)) )
))
(declare-fun lt!1962592 () ListLongMap!5593)

(declare-datatypes ((array!18562 0))(
  ( (array!18563 (arr!8279 (Array (_ BitVec 32) (_ BitVec 64))) (size!36525 (_ BitVec 32))) )
))
(declare-datatypes ((array!18564 0))(
  ( (array!18565 (arr!8280 (Array (_ BitVec 32) List!54649)) (size!36526 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10094 0))(
  ( (LongMapFixedSize!10095 (defaultEntry!5465 Int) (mask!15041 (_ BitVec 32)) (extraKeys!5322 (_ BitVec 32)) (zeroValue!5335 List!54649) (minValue!5335 List!54649) (_size!10119 (_ BitVec 32)) (_keys!5389 array!18562) (_values!5360 array!18564) (_vacant!5112 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19953 0))(
  ( (Cell!19954 (v!48833 LongMapFixedSize!10094)) )
))
(declare-datatypes ((MutLongMap!5047 0))(
  ( (LongMap!5047 (underlying!10301 Cell!19953)) (MutLongMapExt!5046 (__x!33239 Int)) )
))
(declare-datatypes ((Hashable!7058 0))(
  ( (HashableExt!7057 (__x!33240 Int)) )
))
(declare-datatypes ((Cell!19955 0))(
  ( (Cell!19956 (v!48834 MutLongMap!5047)) )
))
(declare-datatypes ((MutableMap!4931 0))(
  ( (MutableMapExt!4930 (__x!33241 Int)) (HashMap!4931 (underlying!10302 Cell!19955) (hashF!13332 Hashable!7058) (_size!10120 (_ BitVec 32)) (defaultValue!5102 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4931)

(declare-datatypes ((Unit!141546 0))(
  ( (Unit!141547) )
))
(declare-fun lt!1962601 () Unit!141546)

(declare-fun key!1652 () K!16134)

(declare-fun lemmaInLongMapThenInGenericMap!221 (ListLongMap!5593 K!16134 Hashable!7058) Unit!141546)

(assert (=> b!4810471 (= lt!1962601 (lemmaInLongMapThenInGenericMap!221 lt!1962592 key!1652 (hashF!13332 thiss!41921)))))

(declare-fun e!3005014 () Unit!141546)

(declare-fun Unit!141548 () Unit!141546)

(assert (=> b!4810471 (= e!3005014 Unit!141548)))

(declare-fun bm!335758 () Bool)

(declare-datatypes ((Option!13308 0))(
  ( (None!13307) (Some!13307 (v!48835 tuple2!57376)) )
))
(declare-fun call!335764 () Option!13308)

(declare-fun call!335763 () List!54649)

(declare-fun getPair!968 (List!54649 K!16134) Option!13308)

(assert (=> bm!335758 (= call!335764 (getPair!968 call!335763 key!1652))))

(declare-fun b!4810472 () Bool)

(declare-fun Unit!141549 () Unit!141546)

(assert (=> b!4810472 (= e!3005014 Unit!141549)))

(declare-fun mapNonEmpty!22310 () Bool)

(declare-fun mapRes!22310 () Bool)

(declare-fun tp!1360488 () Bool)

(declare-fun tp!1360493 () Bool)

(assert (=> mapNonEmpty!22310 (= mapRes!22310 (and tp!1360488 tp!1360493))))

(declare-fun mapKey!22310 () (_ BitVec 32))

(declare-fun mapValue!22310 () List!54649)

(declare-fun mapRest!22310 () (Array (_ BitVec 32) List!54649))

(assert (=> mapNonEmpty!22310 (= (arr!8280 (_values!5360 (v!48833 (underlying!10301 (v!48834 (underlying!10302 thiss!41921)))))) (store mapRest!22310 mapKey!22310 mapValue!22310))))

(declare-fun b!4810473 () Bool)

(declare-fun e!3005011 () Bool)

(assert (=> b!4810473 (= e!3005011 e!3005012)))

(declare-fun e!3005009 () Unit!141546)

(declare-fun lt!1962594 () ListLongMap!5593)

(declare-fun lt!1962593 () tuple2!57378)

(declare-fun b!4810474 () Bool)

(declare-fun lambda!233760 () Int)

(declare-fun forallContained!4268 (List!54650 Int tuple2!57378) Unit!141546)

(assert (=> b!4810474 (= e!3005009 (forallContained!4268 (toList!7137 lt!1962594) lambda!233760 lt!1962593))))

(declare-fun map!12409 (MutLongMap!5047) ListLongMap!5593)

(assert (=> b!4810474 (= lt!1962594 (map!12409 (v!48834 (underlying!10302 thiss!41921))))))

(declare-fun lt!1962595 () List!54649)

(declare-fun lt!1962605 () (_ BitVec 64))

(declare-fun apply!13150 (MutLongMap!5047 (_ BitVec 64)) List!54649)

(assert (=> b!4810474 (= lt!1962595 (apply!13150 (v!48834 (underlying!10302 thiss!41921)) lt!1962605))))

(assert (=> b!4810474 (= lt!1962593 (tuple2!57379 lt!1962605 lt!1962595))))

(declare-fun c!819916 () Bool)

(declare-fun contains!18251 (List!54650 tuple2!57378) Bool)

(assert (=> b!4810474 (= c!819916 (not (contains!18251 (toList!7137 lt!1962594) lt!1962593)))))

(declare-fun lt!1962596 () Unit!141546)

(declare-fun e!3005005 () Unit!141546)

(assert (=> b!4810474 (= lt!1962596 e!3005005)))

(declare-fun tp!1360490 () Bool)

(declare-fun tp!1360492 () Bool)

(declare-fun e!3005013 () Bool)

(declare-fun array_inv!5977 (array!18562) Bool)

(declare-fun array_inv!5978 (array!18564) Bool)

(assert (=> b!4810475 (= e!3005002 (and tp!1360487 tp!1360492 tp!1360490 (array_inv!5977 (_keys!5389 (v!48833 (underlying!10301 (v!48834 (underlying!10302 thiss!41921)))))) (array_inv!5978 (_values!5360 (v!48833 (underlying!10301 (v!48834 (underlying!10302 thiss!41921)))))) e!3005013))))

(declare-fun b!4810476 () Bool)

(assert (=> b!4810476 false))

(declare-fun lt!1962602 () Unit!141546)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!999 (List!54650 (_ BitVec 64) List!54649) Unit!141546)

(assert (=> b!4810476 (= lt!1962602 (lemmaGetValueByKeyImpliesContainsTuple!999 (toList!7137 lt!1962594) lt!1962605 lt!1962595))))

(declare-datatypes ((Option!13309 0))(
  ( (None!13308) (Some!13308 (v!48836 List!54649)) )
))
(declare-fun isDefined!10446 (Option!13309) Bool)

(declare-fun getValueByKey!2488 (List!54650 (_ BitVec 64)) Option!13309)

(assert (=> b!4810476 (isDefined!10446 (getValueByKey!2488 (toList!7137 lt!1962594) lt!1962605))))

(declare-fun lt!1962607 () Unit!141546)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2276 (List!54650 (_ BitVec 64)) Unit!141546)

(assert (=> b!4810476 (= lt!1962607 (lemmaContainsKeyImpliesGetValueByKeyDefined!2276 (toList!7137 lt!1962594) lt!1962605))))

(declare-fun containsKey!4148 (List!54650 (_ BitVec 64)) Bool)

(assert (=> b!4810476 (containsKey!4148 (toList!7137 lt!1962594) lt!1962605)))

(declare-fun lt!1962600 () Unit!141546)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!270 (List!54650 (_ BitVec 64)) Unit!141546)

(assert (=> b!4810476 (= lt!1962600 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!270 (toList!7137 lt!1962594) lt!1962605))))

(declare-fun Unit!141550 () Unit!141546)

(assert (=> b!4810476 (= e!3005005 Unit!141550)))

(declare-fun bm!335759 () Bool)

(declare-fun call!335766 () Bool)

(declare-fun contains!18252 (ListLongMap!5593 (_ BitVec 64)) Bool)

(assert (=> bm!335759 (= call!335766 (contains!18252 lt!1962592 lt!1962605))))

(declare-fun b!4810477 () Bool)

(declare-fun e!3005006 () Bool)

(declare-fun lt!1962606 () MutLongMap!5047)

(get-info :version)

(assert (=> b!4810477 (= e!3005006 (and e!3005011 ((_ is LongMap!5047) lt!1962606)))))

(assert (=> b!4810477 (= lt!1962606 (v!48834 (underlying!10302 thiss!41921)))))

(declare-fun res!2046247 () Bool)

(declare-fun e!3005010 () Bool)

(assert (=> start!497286 (=> (not res!2046247) (not e!3005010))))

(assert (=> start!497286 (= res!2046247 ((_ is HashMap!4931) thiss!41921))))

(assert (=> start!497286 e!3005010))

(declare-fun e!3005004 () Bool)

(assert (=> start!497286 e!3005004))

(declare-fun tp_is_empty!33969 () Bool)

(assert (=> start!497286 tp_is_empty!33969))

(declare-fun b!4810478 () Bool)

(declare-fun e!3005003 () Bool)

(declare-fun isDefined!10447 (Option!13308) Bool)

(assert (=> b!4810478 (= e!3005003 (not (isDefined!10447 (getPair!968 (apply!13150 (v!48834 (underlying!10302 thiss!41921)) lt!1962605) key!1652))))))

(declare-fun b!4810479 () Bool)

(declare-fun e!3005007 () Unit!141546)

(assert (=> b!4810479 (= e!3005007 e!3005014)))

(declare-fun res!2046245 () Bool)

(assert (=> b!4810479 (= res!2046245 call!335766)))

(declare-fun e!3005015 () Bool)

(assert (=> b!4810479 (=> (not res!2046245) (not e!3005015))))

(declare-fun c!819915 () Bool)

(assert (=> b!4810479 (= c!819915 e!3005015)))

(declare-fun bm!335760 () Bool)

(declare-fun call!335765 () Bool)

(assert (=> bm!335760 (= call!335765 (isDefined!10447 call!335764))))

(declare-fun b!4810480 () Bool)

(declare-fun tp!1360491 () Bool)

(assert (=> b!4810480 (= e!3005013 (and tp!1360491 mapRes!22310))))

(declare-fun condMapEmpty!22310 () Bool)

(declare-fun mapDefault!22310 () List!54649)

(assert (=> b!4810480 (= condMapEmpty!22310 (= (arr!8280 (_values!5360 (v!48833 (underlying!10301 (v!48834 (underlying!10302 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54649)) mapDefault!22310)))))

(declare-fun b!4810481 () Bool)

(declare-fun lt!1962599 () Unit!141546)

(assert (=> b!4810481 (= e!3005007 lt!1962599)))

(declare-fun lemmaInGenericMapThenInLongMap!391 (ListLongMap!5593 K!16134 Hashable!7058) Unit!141546)

(assert (=> b!4810481 (= lt!1962599 (lemmaInGenericMapThenInLongMap!391 lt!1962592 key!1652 (hashF!13332 thiss!41921)))))

(declare-fun res!2046244 () Bool)

(assert (=> b!4810481 (= res!2046244 call!335766)))

(declare-fun e!3005008 () Bool)

(assert (=> b!4810481 (=> (not res!2046244) (not e!3005008))))

(assert (=> b!4810481 e!3005008))

(declare-fun b!4810482 () Bool)

(declare-fun Unit!141551 () Unit!141546)

(assert (=> b!4810482 (= e!3005009 Unit!141551)))

(declare-fun b!4810483 () Bool)

(assert (=> b!4810483 (= e!3005010 false)))

(declare-fun lt!1962598 () Bool)

(assert (=> b!4810483 (= lt!1962598 e!3005003)))

(declare-fun res!2046248 () Bool)

(assert (=> b!4810483 (=> res!2046248 e!3005003)))

(declare-fun lt!1962603 () Bool)

(assert (=> b!4810483 (= res!2046248 (not lt!1962603))))

(declare-fun lt!1962597 () Unit!141546)

(assert (=> b!4810483 (= lt!1962597 e!3005007)))

(declare-fun c!819917 () Bool)

(declare-datatypes ((ListMap!6575 0))(
  ( (ListMap!6576 (toList!7138 List!54649)) )
))
(declare-fun contains!18253 (ListMap!6575 K!16134) Bool)

(declare-fun extractMap!2539 (List!54650) ListMap!6575)

(assert (=> b!4810483 (= c!819917 (contains!18253 (extractMap!2539 (toList!7137 lt!1962592)) key!1652))))

(assert (=> b!4810483 (= lt!1962592 (map!12409 (v!48834 (underlying!10302 thiss!41921))))))

(declare-fun lt!1962604 () Unit!141546)

(assert (=> b!4810483 (= lt!1962604 e!3005009)))

(declare-fun c!819918 () Bool)

(assert (=> b!4810483 (= c!819918 lt!1962603)))

(declare-fun contains!18254 (MutLongMap!5047 (_ BitVec 64)) Bool)

(assert (=> b!4810483 (= lt!1962603 (contains!18254 (v!48834 (underlying!10302 thiss!41921)) lt!1962605))))

(declare-fun hash!5128 (Hashable!7058 K!16134) (_ BitVec 64))

(assert (=> b!4810483 (= lt!1962605 (hash!5128 (hashF!13332 thiss!41921) key!1652))))

(declare-fun mapIsEmpty!22310 () Bool)

(assert (=> mapIsEmpty!22310 mapRes!22310))

(declare-fun bm!335761 () Bool)

(declare-fun apply!13151 (ListLongMap!5593 (_ BitVec 64)) List!54649)

(assert (=> bm!335761 (= call!335763 (apply!13151 lt!1962592 lt!1962605))))

(assert (=> b!4810484 (= e!3005004 (and e!3005006 tp!1360489))))

(declare-fun b!4810485 () Bool)

(assert (=> b!4810485 (= e!3005008 call!335765)))

(declare-fun b!4810486 () Bool)

(declare-fun res!2046246 () Bool)

(assert (=> b!4810486 (=> (not res!2046246) (not e!3005010))))

(declare-fun valid!4073 (MutableMap!4931) Bool)

(assert (=> b!4810486 (= res!2046246 (valid!4073 thiss!41921))))

(declare-fun b!4810487 () Bool)

(declare-fun Unit!141552 () Unit!141546)

(assert (=> b!4810487 (= e!3005005 Unit!141552)))

(declare-fun b!4810488 () Bool)

(assert (=> b!4810488 (= e!3005015 call!335765)))

(assert (= (and start!497286 res!2046247) b!4810486))

(assert (= (and b!4810486 res!2046246) b!4810483))

(assert (= (and b!4810483 c!819918) b!4810474))

(assert (= (and b!4810483 (not c!819918)) b!4810482))

(assert (= (and b!4810474 c!819916) b!4810476))

(assert (= (and b!4810474 (not c!819916)) b!4810487))

(assert (= (and b!4810483 c!819917) b!4810481))

(assert (= (and b!4810483 (not c!819917)) b!4810479))

(assert (= (and b!4810481 res!2046244) b!4810485))

(assert (= (and b!4810479 res!2046245) b!4810488))

(assert (= (and b!4810479 c!819915) b!4810471))

(assert (= (and b!4810479 (not c!819915)) b!4810472))

(assert (= (or b!4810485 b!4810488) bm!335761))

(assert (= (or b!4810481 b!4810479) bm!335759))

(assert (= (or b!4810485 b!4810488) bm!335758))

(assert (= (or b!4810485 b!4810488) bm!335760))

(assert (= (and b!4810483 (not res!2046248)) b!4810478))

(assert (= (and b!4810480 condMapEmpty!22310) mapIsEmpty!22310))

(assert (= (and b!4810480 (not condMapEmpty!22310)) mapNonEmpty!22310))

(assert (= b!4810475 b!4810480))

(assert (= b!4810470 b!4810475))

(assert (= b!4810473 b!4810470))

(assert (= (and b!4810477 ((_ is LongMap!5047) (v!48834 (underlying!10302 thiss!41921)))) b!4810473))

(assert (= b!4810484 b!4810477))

(assert (= (and start!497286 ((_ is HashMap!4931) thiss!41921)) b!4810484))

(declare-fun m!5796398 () Bool)

(assert (=> b!4810471 m!5796398))

(declare-fun m!5796400 () Bool)

(assert (=> b!4810481 m!5796400))

(declare-fun m!5796402 () Bool)

(assert (=> b!4810476 m!5796402))

(declare-fun m!5796404 () Bool)

(assert (=> b!4810476 m!5796404))

(declare-fun m!5796406 () Bool)

(assert (=> b!4810476 m!5796406))

(declare-fun m!5796408 () Bool)

(assert (=> b!4810476 m!5796408))

(declare-fun m!5796410 () Bool)

(assert (=> b!4810476 m!5796410))

(assert (=> b!4810476 m!5796408))

(declare-fun m!5796412 () Bool)

(assert (=> b!4810476 m!5796412))

(declare-fun m!5796414 () Bool)

(assert (=> bm!335759 m!5796414))

(declare-fun m!5796416 () Bool)

(assert (=> bm!335760 m!5796416))

(declare-fun m!5796418 () Bool)

(assert (=> b!4810478 m!5796418))

(assert (=> b!4810478 m!5796418))

(declare-fun m!5796420 () Bool)

(assert (=> b!4810478 m!5796420))

(assert (=> b!4810478 m!5796420))

(declare-fun m!5796422 () Bool)

(assert (=> b!4810478 m!5796422))

(declare-fun m!5796424 () Bool)

(assert (=> b!4810483 m!5796424))

(declare-fun m!5796426 () Bool)

(assert (=> b!4810483 m!5796426))

(assert (=> b!4810483 m!5796424))

(declare-fun m!5796428 () Bool)

(assert (=> b!4810483 m!5796428))

(declare-fun m!5796430 () Bool)

(assert (=> b!4810483 m!5796430))

(declare-fun m!5796432 () Bool)

(assert (=> b!4810483 m!5796432))

(declare-fun m!5796434 () Bool)

(assert (=> b!4810475 m!5796434))

(declare-fun m!5796436 () Bool)

(assert (=> b!4810475 m!5796436))

(declare-fun m!5796438 () Bool)

(assert (=> mapNonEmpty!22310 m!5796438))

(declare-fun m!5796440 () Bool)

(assert (=> bm!335758 m!5796440))

(declare-fun m!5796442 () Bool)

(assert (=> bm!335761 m!5796442))

(declare-fun m!5796444 () Bool)

(assert (=> b!4810474 m!5796444))

(assert (=> b!4810474 m!5796432))

(assert (=> b!4810474 m!5796418))

(declare-fun m!5796446 () Bool)

(assert (=> b!4810474 m!5796446))

(declare-fun m!5796448 () Bool)

(assert (=> b!4810486 m!5796448))

(check-sat (not bm!335759) (not mapNonEmpty!22310) (not b!4810476) (not bm!335761) (not b!4810481) (not bm!335758) (not b!4810480) (not bm!335760) b_and!341915 tp_is_empty!33969 (not b_next!130923) (not b!4810478) (not b!4810486) (not b!4810471) (not b!4810483) (not b_next!130921) b_and!341917 (not b!4810474) (not b!4810475))
(check-sat b_and!341915 b_and!341917 (not b_next!130921) (not b_next!130923))
