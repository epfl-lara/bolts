; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!496832 () Bool)

(assert start!496832)

(declare-fun b!4807459 () Bool)

(declare-fun b_free!129963 () Bool)

(declare-fun b_next!130753 () Bool)

(assert (=> b!4807459 (= b_free!129963 (not b_next!130753))))

(declare-fun tp!1359475 () Bool)

(declare-fun b_and!341729 () Bool)

(assert (=> b!4807459 (= tp!1359475 b_and!341729)))

(declare-fun b!4807452 () Bool)

(declare-fun b_free!129965 () Bool)

(declare-fun b_next!130755 () Bool)

(assert (=> b!4807452 (= b_free!129965 (not b_next!130755))))

(declare-fun tp!1359470 () Bool)

(declare-fun b_and!341731 () Bool)

(assert (=> b!4807452 (= tp!1359470 b_and!341731)))

(declare-fun bs!1159925 () Bool)

(declare-fun b!4807457 () Bool)

(declare-fun b!4807461 () Bool)

(assert (= bs!1159925 (and b!4807457 b!4807461)))

(declare-fun lambda!233507 () Int)

(declare-fun lambda!233506 () Int)

(assert (=> bs!1159925 (= lambda!233507 lambda!233506)))

(declare-fun b!4807450 () Bool)

(declare-fun e!3002748 () Bool)

(declare-fun e!3002742 () Bool)

(assert (=> b!4807450 (= e!3002748 e!3002742)))

(declare-fun b!4807451 () Bool)

(declare-fun e!3002751 () Bool)

(declare-fun e!3002743 () Bool)

(declare-datatypes ((K!16029 0))(
  ( (K!16030 (val!21129 Int)) )
))
(declare-datatypes ((array!18376 0))(
  ( (array!18377 (arr!8195 (Array (_ BitVec 32) (_ BitVec 64))) (size!36441 (_ BitVec 32))) )
))
(declare-datatypes ((V!16275 0))(
  ( (V!16276 (val!21130 Int)) )
))
(declare-datatypes ((tuple2!57212 0))(
  ( (tuple2!57213 (_1!31900 K!16029) (_2!31900 V!16275)) )
))
(declare-datatypes ((List!54559 0))(
  ( (Nil!54435) (Cons!54435 (h!60867 tuple2!57212) (t!362021 List!54559)) )
))
(declare-datatypes ((array!18378 0))(
  ( (array!18379 (arr!8196 (Array (_ BitVec 32) List!54559)) (size!36442 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10010 0))(
  ( (LongMapFixedSize!10011 (defaultEntry!5423 Int) (mask!14978 (_ BitVec 32)) (extraKeys!5280 (_ BitVec 32)) (zeroValue!5293 List!54559) (minValue!5293 List!54559) (_size!10035 (_ BitVec 32)) (_keys!5347 array!18376) (_values!5318 array!18378) (_vacant!5070 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19785 0))(
  ( (Cell!19786 (v!48670 LongMapFixedSize!10010)) )
))
(declare-datatypes ((MutLongMap!5005 0))(
  ( (LongMap!5005 (underlying!10217 Cell!19785)) (MutLongMapExt!5004 (__x!33113 Int)) )
))
(declare-fun lt!1960513 () MutLongMap!5005)

(get-info :version)

(assert (=> b!4807451 (= e!3002751 (and e!3002743 ((_ is LongMap!5005) lt!1960513)))))

(declare-datatypes ((Hashable!7016 0))(
  ( (HashableExt!7015 (__x!33114 Int)) )
))
(declare-datatypes ((Cell!19787 0))(
  ( (Cell!19788 (v!48671 MutLongMap!5005)) )
))
(declare-datatypes ((MutableMap!4889 0))(
  ( (MutableMapExt!4888 (__x!33115 Int)) (HashMap!4889 (underlying!10218 Cell!19787) (hashF!13284 Hashable!7016) (_size!10036 (_ BitVec 32)) (defaultValue!5060 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4889)

(assert (=> b!4807451 (= lt!1960513 (v!48671 (underlying!10218 thiss!41921)))))

(declare-fun e!3002747 () Bool)

(assert (=> b!4807452 (= e!3002747 (and e!3002751 tp!1359470))))

(declare-fun b!4807453 () Bool)

(declare-fun res!2045207 () Bool)

(declare-fun e!3002749 () Bool)

(assert (=> b!4807453 (=> (not res!2045207) (not e!3002749))))

(declare-fun valid!4019 (MutableMap!4889) Bool)

(assert (=> b!4807453 (= res!2045207 (valid!4019 thiss!41921))))

(declare-fun b!4807454 () Bool)

(assert (=> b!4807454 false))

(declare-datatypes ((tuple2!57214 0))(
  ( (tuple2!57215 (_1!31901 (_ BitVec 64)) (_2!31901 List!54559)) )
))
(declare-datatypes ((List!54560 0))(
  ( (Nil!54436) (Cons!54436 (h!60868 tuple2!57214) (t!362022 List!54560)) )
))
(declare-datatypes ((ListLongMap!5513 0))(
  ( (ListLongMap!5514 (toList!7064 List!54560)) )
))
(declare-fun lt!1960516 () ListLongMap!5513)

(declare-fun lt!1960509 () (_ BitVec 64))

(declare-fun lt!1960510 () List!54559)

(declare-datatypes ((Unit!141317 0))(
  ( (Unit!141318) )
))
(declare-fun lt!1960507 () Unit!141317)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!963 (List!54560 (_ BitVec 64) List!54559) Unit!141317)

(assert (=> b!4807454 (= lt!1960507 (lemmaGetValueByKeyImpliesContainsTuple!963 (toList!7064 lt!1960516) lt!1960509 lt!1960510))))

(declare-datatypes ((Option!13247 0))(
  ( (None!13246) (Some!13246 (v!48672 List!54559)) )
))
(declare-fun isDefined!10386 (Option!13247) Bool)

(declare-fun getValueByKey!2444 (List!54560 (_ BitVec 64)) Option!13247)

(assert (=> b!4807454 (isDefined!10386 (getValueByKey!2444 (toList!7064 lt!1960516) lt!1960509))))

(declare-fun lt!1960511 () Unit!141317)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2232 (List!54560 (_ BitVec 64)) Unit!141317)

(assert (=> b!4807454 (= lt!1960511 (lemmaContainsKeyImpliesGetValueByKeyDefined!2232 (toList!7064 lt!1960516) lt!1960509))))

(declare-fun containsKey!4099 (List!54560 (_ BitVec 64)) Bool)

(assert (=> b!4807454 (containsKey!4099 (toList!7064 lt!1960516) lt!1960509)))

(declare-fun lt!1960515 () Unit!141317)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!234 (List!54560 (_ BitVec 64)) Unit!141317)

(assert (=> b!4807454 (= lt!1960515 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!234 (toList!7064 lt!1960516) lt!1960509))))

(declare-fun e!3002744 () Unit!141317)

(declare-fun Unit!141319 () Unit!141317)

(assert (=> b!4807454 (= e!3002744 Unit!141319)))

(declare-fun b!4807455 () Bool)

(assert (=> b!4807455 (= e!3002743 e!3002748)))

(declare-fun b!4807456 () Bool)

(declare-fun e!3002746 () Unit!141317)

(declare-fun Unit!141320 () Unit!141317)

(assert (=> b!4807456 (= e!3002746 Unit!141320)))

(declare-fun forall!12376 (List!54560 Int) Bool)

(declare-fun map!12342 (MutLongMap!5005) ListLongMap!5513)

(assert (=> b!4807457 (= e!3002749 (not (forall!12376 (toList!7064 (map!12342 (v!48671 (underlying!10218 thiss!41921)))) lambda!233507)))))

(declare-fun lt!1960512 () Unit!141317)

(assert (=> b!4807457 (= lt!1960512 e!3002746)))

(declare-fun c!819375 () Bool)

(declare-fun contains!18103 (MutLongMap!5005 (_ BitVec 64)) Bool)

(assert (=> b!4807457 (= c!819375 (contains!18103 (v!48671 (underlying!10218 thiss!41921)) lt!1960509))))

(declare-fun key!1652 () K!16029)

(declare-fun hash!5085 (Hashable!7016 K!16029) (_ BitVec 64))

(assert (=> b!4807457 (= lt!1960509 (hash!5085 (hashF!13284 thiss!41921) key!1652))))

(declare-fun res!2045206 () Bool)

(assert (=> start!496832 (=> (not res!2045206) (not e!3002749))))

(assert (=> start!496832 (= res!2045206 ((_ is HashMap!4889) thiss!41921))))

(assert (=> start!496832 e!3002749))

(assert (=> start!496832 e!3002747))

(declare-fun tp_is_empty!33867 () Bool)

(assert (=> start!496832 tp_is_empty!33867))

(declare-fun b!4807458 () Bool)

(declare-fun Unit!141321 () Unit!141317)

(assert (=> b!4807458 (= e!3002744 Unit!141321)))

(declare-fun mapNonEmpty!22157 () Bool)

(declare-fun mapRes!22157 () Bool)

(declare-fun tp!1359471 () Bool)

(declare-fun tp!1359476 () Bool)

(assert (=> mapNonEmpty!22157 (= mapRes!22157 (and tp!1359471 tp!1359476))))

(declare-fun mapKey!22157 () (_ BitVec 32))

(declare-fun mapRest!22157 () (Array (_ BitVec 32) List!54559))

(declare-fun mapValue!22157 () List!54559)

(assert (=> mapNonEmpty!22157 (= (arr!8196 (_values!5318 (v!48670 (underlying!10217 (v!48671 (underlying!10218 thiss!41921)))))) (store mapRest!22157 mapKey!22157 mapValue!22157))))

(declare-fun tp!1359473 () Bool)

(declare-fun tp!1359472 () Bool)

(declare-fun e!3002750 () Bool)

(declare-fun array_inv!5905 (array!18376) Bool)

(declare-fun array_inv!5906 (array!18378) Bool)

(assert (=> b!4807459 (= e!3002742 (and tp!1359475 tp!1359472 tp!1359473 (array_inv!5905 (_keys!5347 (v!48670 (underlying!10217 (v!48671 (underlying!10218 thiss!41921)))))) (array_inv!5906 (_values!5318 (v!48670 (underlying!10217 (v!48671 (underlying!10218 thiss!41921)))))) e!3002750))))

(declare-fun b!4807460 () Bool)

(declare-fun tp!1359474 () Bool)

(assert (=> b!4807460 (= e!3002750 (and tp!1359474 mapRes!22157))))

(declare-fun condMapEmpty!22157 () Bool)

(declare-fun mapDefault!22157 () List!54559)

(assert (=> b!4807460 (= condMapEmpty!22157 (= (arr!8196 (_values!5318 (v!48670 (underlying!10217 (v!48671 (underlying!10218 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54559)) mapDefault!22157)))))

(declare-fun lt!1960514 () tuple2!57214)

(declare-fun forallContained!4235 (List!54560 Int tuple2!57214) Unit!141317)

(assert (=> b!4807461 (= e!3002746 (forallContained!4235 (toList!7064 lt!1960516) lambda!233506 lt!1960514))))

(assert (=> b!4807461 (= lt!1960516 (map!12342 (v!48671 (underlying!10218 thiss!41921))))))

(declare-fun apply!13088 (MutLongMap!5005 (_ BitVec 64)) List!54559)

(assert (=> b!4807461 (= lt!1960510 (apply!13088 (v!48671 (underlying!10218 thiss!41921)) lt!1960509))))

(assert (=> b!4807461 (= lt!1960514 (tuple2!57215 lt!1960509 lt!1960510))))

(declare-fun c!819374 () Bool)

(declare-fun contains!18104 (List!54560 tuple2!57214) Bool)

(assert (=> b!4807461 (= c!819374 (not (contains!18104 (toList!7064 lt!1960516) lt!1960514)))))

(declare-fun lt!1960508 () Unit!141317)

(assert (=> b!4807461 (= lt!1960508 e!3002744)))

(declare-fun mapIsEmpty!22157 () Bool)

(assert (=> mapIsEmpty!22157 mapRes!22157))

(assert (= (and start!496832 res!2045206) b!4807453))

(assert (= (and b!4807453 res!2045207) b!4807457))

(assert (= (and b!4807457 c!819375) b!4807461))

(assert (= (and b!4807457 (not c!819375)) b!4807456))

(assert (= (and b!4807461 c!819374) b!4807454))

(assert (= (and b!4807461 (not c!819374)) b!4807458))

(assert (= (and b!4807460 condMapEmpty!22157) mapIsEmpty!22157))

(assert (= (and b!4807460 (not condMapEmpty!22157)) mapNonEmpty!22157))

(assert (= b!4807459 b!4807460))

(assert (= b!4807450 b!4807459))

(assert (= b!4807455 b!4807450))

(assert (= (and b!4807451 ((_ is LongMap!5005) (v!48671 (underlying!10218 thiss!41921)))) b!4807455))

(assert (= b!4807452 b!4807451))

(assert (= (and start!496832 ((_ is HashMap!4889) thiss!41921)) b!4807452))

(declare-fun m!5793650 () Bool)

(assert (=> b!4807453 m!5793650))

(declare-fun m!5793652 () Bool)

(assert (=> b!4807457 m!5793652))

(declare-fun m!5793654 () Bool)

(assert (=> b!4807457 m!5793654))

(declare-fun m!5793656 () Bool)

(assert (=> b!4807457 m!5793656))

(declare-fun m!5793658 () Bool)

(assert (=> b!4807457 m!5793658))

(declare-fun m!5793660 () Bool)

(assert (=> b!4807461 m!5793660))

(assert (=> b!4807461 m!5793652))

(declare-fun m!5793662 () Bool)

(assert (=> b!4807461 m!5793662))

(declare-fun m!5793664 () Bool)

(assert (=> b!4807461 m!5793664))

(declare-fun m!5793666 () Bool)

(assert (=> mapNonEmpty!22157 m!5793666))

(declare-fun m!5793668 () Bool)

(assert (=> b!4807454 m!5793668))

(declare-fun m!5793670 () Bool)

(assert (=> b!4807454 m!5793670))

(declare-fun m!5793672 () Bool)

(assert (=> b!4807454 m!5793672))

(declare-fun m!5793674 () Bool)

(assert (=> b!4807454 m!5793674))

(assert (=> b!4807454 m!5793668))

(declare-fun m!5793676 () Bool)

(assert (=> b!4807454 m!5793676))

(declare-fun m!5793678 () Bool)

(assert (=> b!4807454 m!5793678))

(declare-fun m!5793680 () Bool)

(assert (=> b!4807459 m!5793680))

(declare-fun m!5793682 () Bool)

(assert (=> b!4807459 m!5793682))

(check-sat (not b!4807453) b_and!341731 (not b!4807460) (not b!4807461) (not b!4807459) (not b!4807454) tp_is_empty!33867 (not b_next!130753) (not b!4807457) b_and!341729 (not b_next!130755) (not mapNonEmpty!22157))
(check-sat b_and!341729 b_and!341731 (not b_next!130753) (not b_next!130755))
(get-model)

(declare-fun d!1539915 () Bool)

(declare-fun res!2045212 () Bool)

(declare-fun e!3002756 () Bool)

(assert (=> d!1539915 (=> res!2045212 e!3002756)))

(assert (=> d!1539915 (= res!2045212 ((_ is Nil!54436) (toList!7064 (map!12342 (v!48671 (underlying!10218 thiss!41921))))))))

(assert (=> d!1539915 (= (forall!12376 (toList!7064 (map!12342 (v!48671 (underlying!10218 thiss!41921)))) lambda!233507) e!3002756)))

(declare-fun b!4807466 () Bool)

(declare-fun e!3002757 () Bool)

(assert (=> b!4807466 (= e!3002756 e!3002757)))

(declare-fun res!2045213 () Bool)

(assert (=> b!4807466 (=> (not res!2045213) (not e!3002757))))

(declare-fun dynLambda!22118 (Int tuple2!57214) Bool)

(assert (=> b!4807466 (= res!2045213 (dynLambda!22118 lambda!233507 (h!60868 (toList!7064 (map!12342 (v!48671 (underlying!10218 thiss!41921)))))))))

(declare-fun b!4807467 () Bool)

(assert (=> b!4807467 (= e!3002757 (forall!12376 (t!362022 (toList!7064 (map!12342 (v!48671 (underlying!10218 thiss!41921))))) lambda!233507))))

(assert (= (and d!1539915 (not res!2045212)) b!4807466))

(assert (= (and b!4807466 res!2045213) b!4807467))

(declare-fun b_lambda!188137 () Bool)

(assert (=> (not b_lambda!188137) (not b!4807466)))

(declare-fun m!5793684 () Bool)

(assert (=> b!4807466 m!5793684))

(declare-fun m!5793686 () Bool)

(assert (=> b!4807467 m!5793686))

(assert (=> b!4807457 d!1539915))

(declare-fun d!1539917 () Bool)

(declare-fun map!12343 (LongMapFixedSize!10010) ListLongMap!5513)

(assert (=> d!1539917 (= (map!12342 (v!48671 (underlying!10218 thiss!41921))) (map!12343 (v!48670 (underlying!10217 (v!48671 (underlying!10218 thiss!41921))))))))

(declare-fun bs!1159926 () Bool)

(assert (= bs!1159926 d!1539917))

(declare-fun m!5793688 () Bool)

(assert (=> bs!1159926 m!5793688))

(assert (=> b!4807457 d!1539917))

(declare-fun d!1539919 () Bool)

(declare-fun lt!1960519 () Bool)

(declare-fun contains!18105 (ListLongMap!5513 (_ BitVec 64)) Bool)

(assert (=> d!1539919 (= lt!1960519 (contains!18105 (map!12342 (v!48671 (underlying!10218 thiss!41921))) lt!1960509))))

(declare-fun contains!18106 (LongMapFixedSize!10010 (_ BitVec 64)) Bool)

(assert (=> d!1539919 (= lt!1960519 (contains!18106 (v!48670 (underlying!10217 (v!48671 (underlying!10218 thiss!41921)))) lt!1960509))))

(declare-fun valid!4020 (MutLongMap!5005) Bool)

(assert (=> d!1539919 (valid!4020 (v!48671 (underlying!10218 thiss!41921)))))

(assert (=> d!1539919 (= (contains!18103 (v!48671 (underlying!10218 thiss!41921)) lt!1960509) lt!1960519)))

(declare-fun bs!1159927 () Bool)

(assert (= bs!1159927 d!1539919))

(assert (=> bs!1159927 m!5793652))

(assert (=> bs!1159927 m!5793652))

(declare-fun m!5793690 () Bool)

(assert (=> bs!1159927 m!5793690))

(declare-fun m!5793692 () Bool)

(assert (=> bs!1159927 m!5793692))

(declare-fun m!5793694 () Bool)

(assert (=> bs!1159927 m!5793694))

(assert (=> b!4807457 d!1539919))

(declare-fun d!1539921 () Bool)

(declare-fun hash!5086 (Hashable!7016 K!16029) (_ BitVec 64))

(assert (=> d!1539921 (= (hash!5085 (hashF!13284 thiss!41921) key!1652) (hash!5086 (hashF!13284 thiss!41921) key!1652))))

(declare-fun bs!1159928 () Bool)

(assert (= bs!1159928 d!1539921))

(declare-fun m!5793696 () Bool)

(assert (=> bs!1159928 m!5793696))

(assert (=> b!4807457 d!1539921))

(declare-fun d!1539923 () Bool)

(assert (=> d!1539923 (dynLambda!22118 lambda!233506 lt!1960514)))

(declare-fun lt!1960522 () Unit!141317)

(declare-fun choose!34812 (List!54560 Int tuple2!57214) Unit!141317)

(assert (=> d!1539923 (= lt!1960522 (choose!34812 (toList!7064 lt!1960516) lambda!233506 lt!1960514))))

(declare-fun e!3002760 () Bool)

(assert (=> d!1539923 e!3002760))

(declare-fun res!2045216 () Bool)

(assert (=> d!1539923 (=> (not res!2045216) (not e!3002760))))

(assert (=> d!1539923 (= res!2045216 (forall!12376 (toList!7064 lt!1960516) lambda!233506))))

(assert (=> d!1539923 (= (forallContained!4235 (toList!7064 lt!1960516) lambda!233506 lt!1960514) lt!1960522)))

(declare-fun b!4807470 () Bool)

(assert (=> b!4807470 (= e!3002760 (contains!18104 (toList!7064 lt!1960516) lt!1960514))))

(assert (= (and d!1539923 res!2045216) b!4807470))

(declare-fun b_lambda!188139 () Bool)

(assert (=> (not b_lambda!188139) (not d!1539923)))

(declare-fun m!5793698 () Bool)

(assert (=> d!1539923 m!5793698))

(declare-fun m!5793700 () Bool)

(assert (=> d!1539923 m!5793700))

(declare-fun m!5793702 () Bool)

(assert (=> d!1539923 m!5793702))

(assert (=> b!4807470 m!5793664))

(assert (=> b!4807461 d!1539923))

(assert (=> b!4807461 d!1539917))

(declare-fun d!1539925 () Bool)

(declare-fun e!3002763 () Bool)

(assert (=> d!1539925 e!3002763))

(declare-fun c!819378 () Bool)

(assert (=> d!1539925 (= c!819378 (contains!18103 (v!48671 (underlying!10218 thiss!41921)) lt!1960509))))

(declare-fun lt!1960525 () List!54559)

(declare-fun apply!13089 (LongMapFixedSize!10010 (_ BitVec 64)) List!54559)

(assert (=> d!1539925 (= lt!1960525 (apply!13089 (v!48670 (underlying!10217 (v!48671 (underlying!10218 thiss!41921)))) lt!1960509))))

(assert (=> d!1539925 (valid!4020 (v!48671 (underlying!10218 thiss!41921)))))

(assert (=> d!1539925 (= (apply!13088 (v!48671 (underlying!10218 thiss!41921)) lt!1960509) lt!1960525)))

(declare-fun b!4807475 () Bool)

(declare-fun get!18621 (Option!13247) List!54559)

(assert (=> b!4807475 (= e!3002763 (= lt!1960525 (get!18621 (getValueByKey!2444 (toList!7064 (map!12342 (v!48671 (underlying!10218 thiss!41921)))) lt!1960509))))))

(declare-fun b!4807476 () Bool)

(declare-fun dynLambda!22119 (Int (_ BitVec 64)) List!54559)

(assert (=> b!4807476 (= e!3002763 (= lt!1960525 (dynLambda!22119 (defaultEntry!5423 (v!48670 (underlying!10217 (v!48671 (underlying!10218 thiss!41921))))) lt!1960509)))))

(assert (=> b!4807476 ((_ is LongMap!5005) (v!48671 (underlying!10218 thiss!41921)))))

(assert (= (and d!1539925 c!819378) b!4807475))

(assert (= (and d!1539925 (not c!819378)) b!4807476))

(declare-fun b_lambda!188141 () Bool)

(assert (=> (not b_lambda!188141) (not b!4807476)))

(declare-fun t!362024 () Bool)

(declare-fun tb!257515 () Bool)

(assert (=> (and b!4807459 (= (defaultEntry!5423 (v!48670 (underlying!10217 (v!48671 (underlying!10218 thiss!41921))))) (defaultEntry!5423 (v!48670 (underlying!10217 (v!48671 (underlying!10218 thiss!41921)))))) t!362024) tb!257515))

(assert (=> b!4807476 t!362024))

(declare-fun result!319558 () Bool)

(declare-fun b_and!341733 () Bool)

(assert (= b_and!341729 (and (=> t!362024 result!319558) b_and!341733)))

(assert (=> d!1539925 m!5793656))

(declare-fun m!5793704 () Bool)

(assert (=> d!1539925 m!5793704))

(assert (=> d!1539925 m!5793694))

(assert (=> b!4807475 m!5793652))

(declare-fun m!5793706 () Bool)

(assert (=> b!4807475 m!5793706))

(assert (=> b!4807475 m!5793706))

(declare-fun m!5793708 () Bool)

(assert (=> b!4807475 m!5793708))

(declare-fun m!5793710 () Bool)

(assert (=> b!4807476 m!5793710))

(assert (=> b!4807461 d!1539925))

(declare-fun d!1539927 () Bool)

(declare-fun lt!1960528 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9767 (List!54560) (InoxSet tuple2!57214))

(assert (=> d!1539927 (= lt!1960528 (select (content!9767 (toList!7064 lt!1960516)) lt!1960514))))

(declare-fun e!3002768 () Bool)

(assert (=> d!1539927 (= lt!1960528 e!3002768)))

(declare-fun res!2045222 () Bool)

(assert (=> d!1539927 (=> (not res!2045222) (not e!3002768))))

(assert (=> d!1539927 (= res!2045222 ((_ is Cons!54436) (toList!7064 lt!1960516)))))

(assert (=> d!1539927 (= (contains!18104 (toList!7064 lt!1960516) lt!1960514) lt!1960528)))

(declare-fun b!4807481 () Bool)

(declare-fun e!3002769 () Bool)

(assert (=> b!4807481 (= e!3002768 e!3002769)))

(declare-fun res!2045221 () Bool)

(assert (=> b!4807481 (=> res!2045221 e!3002769)))

(assert (=> b!4807481 (= res!2045221 (= (h!60868 (toList!7064 lt!1960516)) lt!1960514))))

(declare-fun b!4807482 () Bool)

(assert (=> b!4807482 (= e!3002769 (contains!18104 (t!362022 (toList!7064 lt!1960516)) lt!1960514))))

(assert (= (and d!1539927 res!2045222) b!4807481))

(assert (= (and b!4807481 (not res!2045221)) b!4807482))

(declare-fun m!5793712 () Bool)

(assert (=> d!1539927 m!5793712))

(declare-fun m!5793714 () Bool)

(assert (=> d!1539927 m!5793714))

(declare-fun m!5793716 () Bool)

(assert (=> b!4807482 m!5793716))

(assert (=> b!4807461 d!1539927))

(declare-fun bs!1159929 () Bool)

(declare-fun b!4807487 () Bool)

(assert (= bs!1159929 (and b!4807487 b!4807461)))

(declare-fun lambda!233510 () Int)

(assert (=> bs!1159929 (= lambda!233510 lambda!233506)))

(declare-fun bs!1159930 () Bool)

(assert (= bs!1159930 (and b!4807487 b!4807457)))

(assert (=> bs!1159930 (= lambda!233510 lambda!233507)))

(declare-fun d!1539929 () Bool)

(declare-fun res!2045227 () Bool)

(declare-fun e!3002772 () Bool)

(assert (=> d!1539929 (=> (not res!2045227) (not e!3002772))))

(assert (=> d!1539929 (= res!2045227 (valid!4020 (v!48671 (underlying!10218 thiss!41921))))))

(assert (=> d!1539929 (= (valid!4019 thiss!41921) e!3002772)))

(declare-fun res!2045228 () Bool)

(assert (=> b!4807487 (=> (not res!2045228) (not e!3002772))))

(assert (=> b!4807487 (= res!2045228 (forall!12376 (toList!7064 (map!12342 (v!48671 (underlying!10218 thiss!41921)))) lambda!233510))))

(declare-fun b!4807488 () Bool)

(declare-fun allKeysSameHashInMap!2392 (ListLongMap!5513 Hashable!7016) Bool)

(assert (=> b!4807488 (= e!3002772 (allKeysSameHashInMap!2392 (map!12342 (v!48671 (underlying!10218 thiss!41921))) (hashF!13284 thiss!41921)))))

(assert (= (and d!1539929 res!2045227) b!4807487))

(assert (= (and b!4807487 res!2045228) b!4807488))

(assert (=> d!1539929 m!5793694))

(assert (=> b!4807487 m!5793652))

(declare-fun m!5793718 () Bool)

(assert (=> b!4807487 m!5793718))

(assert (=> b!4807488 m!5793652))

(assert (=> b!4807488 m!5793652))

(declare-fun m!5793720 () Bool)

(assert (=> b!4807488 m!5793720))

(assert (=> b!4807453 d!1539929))

(declare-fun d!1539931 () Bool)

(assert (=> d!1539931 (= (array_inv!5905 (_keys!5347 (v!48670 (underlying!10217 (v!48671 (underlying!10218 thiss!41921)))))) (bvsge (size!36441 (_keys!5347 (v!48670 (underlying!10217 (v!48671 (underlying!10218 thiss!41921)))))) #b00000000000000000000000000000000))))

(assert (=> b!4807459 d!1539931))

(declare-fun d!1539933 () Bool)

(assert (=> d!1539933 (= (array_inv!5906 (_values!5318 (v!48670 (underlying!10217 (v!48671 (underlying!10218 thiss!41921)))))) (bvsge (size!36442 (_values!5318 (v!48670 (underlying!10217 (v!48671 (underlying!10218 thiss!41921)))))) #b00000000000000000000000000000000))))

(assert (=> b!4807459 d!1539933))

(declare-fun d!1539935 () Bool)

(declare-fun res!2045233 () Bool)

(declare-fun e!3002777 () Bool)

(assert (=> d!1539935 (=> res!2045233 e!3002777)))

(assert (=> d!1539935 (= res!2045233 (and ((_ is Cons!54436) (toList!7064 lt!1960516)) (= (_1!31901 (h!60868 (toList!7064 lt!1960516))) lt!1960509)))))

(assert (=> d!1539935 (= (containsKey!4099 (toList!7064 lt!1960516) lt!1960509) e!3002777)))

(declare-fun b!4807493 () Bool)

(declare-fun e!3002778 () Bool)

(assert (=> b!4807493 (= e!3002777 e!3002778)))

(declare-fun res!2045234 () Bool)

(assert (=> b!4807493 (=> (not res!2045234) (not e!3002778))))

(assert (=> b!4807493 (= res!2045234 (and (or (not ((_ is Cons!54436) (toList!7064 lt!1960516))) (bvsle (_1!31901 (h!60868 (toList!7064 lt!1960516))) lt!1960509)) ((_ is Cons!54436) (toList!7064 lt!1960516)) (bvslt (_1!31901 (h!60868 (toList!7064 lt!1960516))) lt!1960509)))))

(declare-fun b!4807494 () Bool)

(assert (=> b!4807494 (= e!3002778 (containsKey!4099 (t!362022 (toList!7064 lt!1960516)) lt!1960509))))

(assert (= (and d!1539935 (not res!2045233)) b!4807493))

(assert (= (and b!4807493 res!2045234) b!4807494))

(declare-fun m!5793722 () Bool)

(assert (=> b!4807494 m!5793722))

(assert (=> b!4807454 d!1539935))

(declare-fun d!1539937 () Bool)

(assert (=> d!1539937 (containsKey!4099 (toList!7064 lt!1960516) lt!1960509)))

(declare-fun lt!1960531 () Unit!141317)

(declare-fun choose!34813 (List!54560 (_ BitVec 64)) Unit!141317)

(assert (=> d!1539937 (= lt!1960531 (choose!34813 (toList!7064 lt!1960516) lt!1960509))))

(declare-fun e!3002781 () Bool)

(assert (=> d!1539937 e!3002781))

(declare-fun res!2045237 () Bool)

(assert (=> d!1539937 (=> (not res!2045237) (not e!3002781))))

(declare-fun isStrictlySorted!920 (List!54560) Bool)

(assert (=> d!1539937 (= res!2045237 (isStrictlySorted!920 (toList!7064 lt!1960516)))))

(assert (=> d!1539937 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!234 (toList!7064 lt!1960516) lt!1960509) lt!1960531)))

(declare-fun b!4807497 () Bool)

(assert (=> b!4807497 (= e!3002781 (isDefined!10386 (getValueByKey!2444 (toList!7064 lt!1960516) lt!1960509)))))

(assert (= (and d!1539937 res!2045237) b!4807497))

(assert (=> d!1539937 m!5793672))

(declare-fun m!5793724 () Bool)

(assert (=> d!1539937 m!5793724))

(declare-fun m!5793726 () Bool)

(assert (=> d!1539937 m!5793726))

(assert (=> b!4807497 m!5793668))

(assert (=> b!4807497 m!5793668))

(assert (=> b!4807497 m!5793676))

(assert (=> b!4807454 d!1539937))

(declare-fun d!1539939 () Bool)

(declare-fun isEmpty!29538 (Option!13247) Bool)

(assert (=> d!1539939 (= (isDefined!10386 (getValueByKey!2444 (toList!7064 lt!1960516) lt!1960509)) (not (isEmpty!29538 (getValueByKey!2444 (toList!7064 lt!1960516) lt!1960509))))))

(declare-fun bs!1159931 () Bool)

(assert (= bs!1159931 d!1539939))

(assert (=> bs!1159931 m!5793668))

(declare-fun m!5793728 () Bool)

(assert (=> bs!1159931 m!5793728))

(assert (=> b!4807454 d!1539939))

(declare-fun d!1539941 () Bool)

(assert (=> d!1539941 (contains!18104 (toList!7064 lt!1960516) (tuple2!57215 lt!1960509 lt!1960510))))

(declare-fun lt!1960534 () Unit!141317)

(declare-fun choose!34814 (List!54560 (_ BitVec 64) List!54559) Unit!141317)

(assert (=> d!1539941 (= lt!1960534 (choose!34814 (toList!7064 lt!1960516) lt!1960509 lt!1960510))))

(declare-fun e!3002784 () Bool)

(assert (=> d!1539941 e!3002784))

(declare-fun res!2045240 () Bool)

(assert (=> d!1539941 (=> (not res!2045240) (not e!3002784))))

(assert (=> d!1539941 (= res!2045240 (isStrictlySorted!920 (toList!7064 lt!1960516)))))

(assert (=> d!1539941 (= (lemmaGetValueByKeyImpliesContainsTuple!963 (toList!7064 lt!1960516) lt!1960509 lt!1960510) lt!1960534)))

(declare-fun b!4807500 () Bool)

(assert (=> b!4807500 (= e!3002784 (= (getValueByKey!2444 (toList!7064 lt!1960516) lt!1960509) (Some!13246 lt!1960510)))))

(assert (= (and d!1539941 res!2045240) b!4807500))

(declare-fun m!5793730 () Bool)

(assert (=> d!1539941 m!5793730))

(declare-fun m!5793732 () Bool)

(assert (=> d!1539941 m!5793732))

(assert (=> d!1539941 m!5793726))

(assert (=> b!4807500 m!5793668))

(assert (=> b!4807454 d!1539941))

(declare-fun d!1539943 () Bool)

(assert (=> d!1539943 (isDefined!10386 (getValueByKey!2444 (toList!7064 lt!1960516) lt!1960509))))

(declare-fun lt!1960537 () Unit!141317)

(declare-fun choose!34815 (List!54560 (_ BitVec 64)) Unit!141317)

(assert (=> d!1539943 (= lt!1960537 (choose!34815 (toList!7064 lt!1960516) lt!1960509))))

(declare-fun e!3002787 () Bool)

(assert (=> d!1539943 e!3002787))

(declare-fun res!2045243 () Bool)

(assert (=> d!1539943 (=> (not res!2045243) (not e!3002787))))

(assert (=> d!1539943 (= res!2045243 (isStrictlySorted!920 (toList!7064 lt!1960516)))))

(assert (=> d!1539943 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2232 (toList!7064 lt!1960516) lt!1960509) lt!1960537)))

(declare-fun b!4807503 () Bool)

(assert (=> b!4807503 (= e!3002787 (containsKey!4099 (toList!7064 lt!1960516) lt!1960509))))

(assert (= (and d!1539943 res!2045243) b!4807503))

(assert (=> d!1539943 m!5793668))

(assert (=> d!1539943 m!5793668))

(assert (=> d!1539943 m!5793676))

(declare-fun m!5793734 () Bool)

(assert (=> d!1539943 m!5793734))

(assert (=> d!1539943 m!5793726))

(assert (=> b!4807503 m!5793672))

(assert (=> b!4807454 d!1539943))

(declare-fun d!1539945 () Bool)

(declare-fun c!819383 () Bool)

(assert (=> d!1539945 (= c!819383 (and ((_ is Cons!54436) (toList!7064 lt!1960516)) (= (_1!31901 (h!60868 (toList!7064 lt!1960516))) lt!1960509)))))

(declare-fun e!3002792 () Option!13247)

(assert (=> d!1539945 (= (getValueByKey!2444 (toList!7064 lt!1960516) lt!1960509) e!3002792)))

(declare-fun b!4807512 () Bool)

(assert (=> b!4807512 (= e!3002792 (Some!13246 (_2!31901 (h!60868 (toList!7064 lt!1960516)))))))

(declare-fun b!4807515 () Bool)

(declare-fun e!3002793 () Option!13247)

(assert (=> b!4807515 (= e!3002793 None!13246)))

(declare-fun b!4807514 () Bool)

(assert (=> b!4807514 (= e!3002793 (getValueByKey!2444 (t!362022 (toList!7064 lt!1960516)) lt!1960509))))

(declare-fun b!4807513 () Bool)

(assert (=> b!4807513 (= e!3002792 e!3002793)))

(declare-fun c!819384 () Bool)

(assert (=> b!4807513 (= c!819384 (and ((_ is Cons!54436) (toList!7064 lt!1960516)) (not (= (_1!31901 (h!60868 (toList!7064 lt!1960516))) lt!1960509))))))

(assert (= (and d!1539945 c!819383) b!4807512))

(assert (= (and d!1539945 (not c!819383)) b!4807513))

(assert (= (and b!4807513 c!819384) b!4807514))

(assert (= (and b!4807513 (not c!819384)) b!4807515))

(declare-fun m!5793736 () Bool)

(assert (=> b!4807514 m!5793736))

(assert (=> b!4807454 d!1539945))

(declare-fun e!3002796 () Bool)

(declare-fun tp_is_empty!33869 () Bool)

(declare-fun tp!1359479 () Bool)

(declare-fun b!4807520 () Bool)

(assert (=> b!4807520 (= e!3002796 (and tp_is_empty!33867 tp_is_empty!33869 tp!1359479))))

(assert (=> b!4807460 (= tp!1359474 e!3002796)))

(assert (= (and b!4807460 ((_ is Cons!54435) mapDefault!22157)) b!4807520))

(declare-fun tp!1359480 () Bool)

(declare-fun b!4807521 () Bool)

(declare-fun e!3002797 () Bool)

(assert (=> b!4807521 (= e!3002797 (and tp_is_empty!33867 tp_is_empty!33869 tp!1359480))))

(assert (=> b!4807459 (= tp!1359472 e!3002797)))

(assert (= (and b!4807459 ((_ is Cons!54435) (zeroValue!5293 (v!48670 (underlying!10217 (v!48671 (underlying!10218 thiss!41921))))))) b!4807521))

(declare-fun e!3002798 () Bool)

(declare-fun b!4807522 () Bool)

(declare-fun tp!1359481 () Bool)

(assert (=> b!4807522 (= e!3002798 (and tp_is_empty!33867 tp_is_empty!33869 tp!1359481))))

(assert (=> b!4807459 (= tp!1359473 e!3002798)))

(assert (= (and b!4807459 ((_ is Cons!54435) (minValue!5293 (v!48670 (underlying!10217 (v!48671 (underlying!10218 thiss!41921))))))) b!4807522))

(declare-fun condMapEmpty!22160 () Bool)

(declare-fun mapDefault!22160 () List!54559)

(assert (=> mapNonEmpty!22157 (= condMapEmpty!22160 (= mapRest!22157 ((as const (Array (_ BitVec 32) List!54559)) mapDefault!22160)))))

(declare-fun e!3002803 () Bool)

(declare-fun mapRes!22160 () Bool)

(assert (=> mapNonEmpty!22157 (= tp!1359471 (and e!3002803 mapRes!22160))))

(declare-fun tp!1359488 () Bool)

(declare-fun b!4807530 () Bool)

(assert (=> b!4807530 (= e!3002803 (and tp_is_empty!33867 tp_is_empty!33869 tp!1359488))))

(declare-fun b!4807529 () Bool)

(declare-fun tp!1359490 () Bool)

(declare-fun e!3002804 () Bool)

(assert (=> b!4807529 (= e!3002804 (and tp_is_empty!33867 tp_is_empty!33869 tp!1359490))))

(declare-fun mapNonEmpty!22160 () Bool)

(declare-fun tp!1359489 () Bool)

(assert (=> mapNonEmpty!22160 (= mapRes!22160 (and tp!1359489 e!3002804))))

(declare-fun mapRest!22160 () (Array (_ BitVec 32) List!54559))

(declare-fun mapValue!22160 () List!54559)

(declare-fun mapKey!22160 () (_ BitVec 32))

(assert (=> mapNonEmpty!22160 (= mapRest!22157 (store mapRest!22160 mapKey!22160 mapValue!22160))))

(declare-fun mapIsEmpty!22160 () Bool)

(assert (=> mapIsEmpty!22160 mapRes!22160))

(assert (= (and mapNonEmpty!22157 condMapEmpty!22160) mapIsEmpty!22160))

(assert (= (and mapNonEmpty!22157 (not condMapEmpty!22160)) mapNonEmpty!22160))

(assert (= (and mapNonEmpty!22160 ((_ is Cons!54435) mapValue!22160)) b!4807529))

(assert (= (and mapNonEmpty!22157 ((_ is Cons!54435) mapDefault!22160)) b!4807530))

(declare-fun m!5793738 () Bool)

(assert (=> mapNonEmpty!22160 m!5793738))

(declare-fun e!3002805 () Bool)

(declare-fun b!4807531 () Bool)

(declare-fun tp!1359491 () Bool)

(assert (=> b!4807531 (= e!3002805 (and tp_is_empty!33867 tp_is_empty!33869 tp!1359491))))

(assert (=> mapNonEmpty!22157 (= tp!1359476 e!3002805)))

(assert (= (and mapNonEmpty!22157 ((_ is Cons!54435) mapValue!22157)) b!4807531))

(declare-fun b_lambda!188143 () Bool)

(assert (= b_lambda!188137 (or b!4807457 b_lambda!188143)))

(declare-fun bs!1159932 () Bool)

(declare-fun d!1539947 () Bool)

(assert (= bs!1159932 (and d!1539947 b!4807457)))

(declare-fun noDuplicateKeys!2379 (List!54559) Bool)

(assert (=> bs!1159932 (= (dynLambda!22118 lambda!233507 (h!60868 (toList!7064 (map!12342 (v!48671 (underlying!10218 thiss!41921)))))) (noDuplicateKeys!2379 (_2!31901 (h!60868 (toList!7064 (map!12342 (v!48671 (underlying!10218 thiss!41921))))))))))

(declare-fun m!5793740 () Bool)

(assert (=> bs!1159932 m!5793740))

(assert (=> b!4807466 d!1539947))

(declare-fun b_lambda!188145 () Bool)

(assert (= b_lambda!188139 (or b!4807461 b_lambda!188145)))

(declare-fun bs!1159933 () Bool)

(declare-fun d!1539949 () Bool)

(assert (= bs!1159933 (and d!1539949 b!4807461)))

(assert (=> bs!1159933 (= (dynLambda!22118 lambda!233506 lt!1960514) (noDuplicateKeys!2379 (_2!31901 lt!1960514)))))

(declare-fun m!5793742 () Bool)

(assert (=> bs!1159933 m!5793742))

(assert (=> d!1539923 d!1539949))

(declare-fun b_lambda!188147 () Bool)

(assert (= b_lambda!188141 (or (and b!4807459 b_free!129963) b_lambda!188147)))

(check-sat (not b!4807520) (not d!1539923) (not b!4807521) (not b!4807522) (not b!4807529) (not b!4807494) (not b!4807470) tp_is_empty!33869 b_and!341731 (not b!4807530) (not d!1539921) (not bs!1159933) (not d!1539937) (not b_lambda!188147) tp_is_empty!33867 (not b_next!130753) (not mapNonEmpty!22160) (not b!4807482) (not b!4807497) (not d!1539939) b_and!341733 (not d!1539925) (not b!4807531) (not b!4807500) (not d!1539927) (not b!4807475) (not b_next!130755) (not b!4807467) (not tb!257515) (not d!1539943) (not d!1539919) (not b!4807503) (not b!4807487) (not b!4807488) (not b_lambda!188143) (not b_lambda!188145) (not bs!1159932) (not d!1539941) (not b!4807514) (not d!1539929) (not d!1539917))
(check-sat b_and!341733 b_and!341731 (not b_next!130753) (not b_next!130755))
