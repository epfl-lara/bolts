; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!415516 () Bool)

(assert start!415516)

(declare-fun b!4318425 () Bool)

(declare-fun b_free!128923 () Bool)

(declare-fun b_next!129627 () Bool)

(assert (=> b!4318425 (= b_free!128923 (not b_next!129627))))

(declare-fun tp!1326590 () Bool)

(declare-fun b_and!340433 () Bool)

(assert (=> b!4318425 (= tp!1326590 b_and!340433)))

(declare-fun b!4318424 () Bool)

(declare-fun b_free!128925 () Bool)

(declare-fun b_next!129629 () Bool)

(assert (=> b!4318424 (= b_free!128925 (not b_next!129629))))

(declare-fun tp!1326591 () Bool)

(declare-fun b_and!340435 () Bool)

(assert (=> b!4318424 (= tp!1326591 b_and!340435)))

(declare-fun b!4318422 () Bool)

(declare-fun e!2686579 () Bool)

(declare-fun e!2686573 () Bool)

(assert (=> b!4318422 (= e!2686579 e!2686573)))

(declare-fun res!1769839 () Bool)

(assert (=> b!4318422 (=> (not res!1769839) (not e!2686573))))

(declare-fun lt!1537166 () (_ BitVec 64))

(declare-datatypes ((K!9599 0))(
  ( (K!9600 (val!15937 Int)) )
))
(declare-datatypes ((V!9801 0))(
  ( (V!9802 (val!15938 Int)) )
))
(declare-datatypes ((tuple2!47104 0))(
  ( (tuple2!47105 (_1!26836 K!9599) (_2!26836 V!9801)) )
))
(declare-datatypes ((List!48476 0))(
  ( (Nil!48352) (Cons!48352 (h!53808 tuple2!47104) (t!355341 List!48476)) )
))
(declare-fun lt!1537171 () List!48476)

(declare-datatypes ((array!17176 0))(
  ( (array!17177 (arr!7667 (Array (_ BitVec 32) (_ BitVec 64))) (size!35706 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4657 0))(
  ( (HashableExt!4656 (__x!30248 Int)) )
))
(declare-datatypes ((array!17178 0))(
  ( (array!17179 (arr!7668 (Array (_ BitVec 32) List!48476)) (size!35707 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9482 0))(
  ( (LongMapFixedSize!9483 (defaultEntry!5126 Int) (mask!13340 (_ BitVec 32)) (extraKeys!4990 (_ BitVec 32)) (zeroValue!5000 List!48476) (minValue!5000 List!48476) (_size!9525 (_ BitVec 32)) (_keys!5041 array!17176) (_values!5022 array!17178) (_vacant!4802 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18773 0))(
  ( (Cell!18774 (v!42685 LongMapFixedSize!9482)) )
))
(declare-datatypes ((MutLongMap!4741 0))(
  ( (LongMap!4741 (underlying!9711 Cell!18773)) (MutLongMapExt!4740 (__x!30249 Int)) )
))
(declare-datatypes ((Cell!18775 0))(
  ( (Cell!18776 (v!42686 MutLongMap!4741)) )
))
(declare-datatypes ((MutableMap!4647 0))(
  ( (MutableMapExt!4646 (__x!30250 Int)) (HashMap!4647 (underlying!9712 Cell!18775) (hashF!6879 Hashable!4657) (_size!9526 (_ BitVec 32)) (defaultValue!4818 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4647)

(declare-datatypes ((tuple2!47106 0))(
  ( (tuple2!47107 (_1!26837 Bool) (_2!26837 MutLongMap!4741)) )
))
(declare-fun update!515 (MutLongMap!4741 (_ BitVec 64) List!48476) tuple2!47106)

(assert (=> b!4318422 (= res!1769839 (_1!26837 (update!515 (v!42686 (underlying!9712 thiss!42308)) lt!1537166 lt!1537171)))))

(declare-fun lt!1537170 () List!48476)

(declare-fun v!9179 () V!9801)

(declare-fun key!2048 () K!9599)

(assert (=> b!4318422 (= lt!1537171 (Cons!48352 (tuple2!47105 key!2048 v!9179) lt!1537170))))

(declare-fun e!2686569 () List!48476)

(assert (=> b!4318422 (= lt!1537170 e!2686569)))

(declare-fun c!734238 () Bool)

(declare-fun contains!10385 (MutLongMap!4741 (_ BitVec 64)) Bool)

(assert (=> b!4318422 (= c!734238 (contains!10385 (v!42686 (underlying!9712 thiss!42308)) lt!1537166))))

(declare-fun hash!1147 (Hashable!4657 K!9599) (_ BitVec 64))

(assert (=> b!4318422 (= lt!1537166 (hash!1147 (hashF!6879 thiss!42308) key!2048))))

(declare-fun b!4318423 () Bool)

(declare-fun e!2686578 () Bool)

(declare-fun tp!1326594 () Bool)

(declare-fun mapRes!21135 () Bool)

(assert (=> b!4318423 (= e!2686578 (and tp!1326594 mapRes!21135))))

(declare-fun condMapEmpty!21135 () Bool)

(declare-fun mapDefault!21135 () List!48476)

(assert (=> b!4318423 (= condMapEmpty!21135 (= (arr!7668 (_values!5022 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48476)) mapDefault!21135)))))

(declare-fun mapIsEmpty!21135 () Bool)

(assert (=> mapIsEmpty!21135 mapRes!21135))

(declare-fun tp!1326592 () Bool)

(declare-fun tp!1326595 () Bool)

(declare-fun e!2686580 () Bool)

(declare-fun array_inv!5517 (array!17176) Bool)

(declare-fun array_inv!5518 (array!17178) Bool)

(assert (=> b!4318425 (= e!2686580 (and tp!1326590 tp!1326592 tp!1326595 (array_inv!5517 (_keys!5041 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308)))))) (array_inv!5518 (_values!5022 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308)))))) e!2686578))))

(declare-fun b!4318426 () Bool)

(declare-fun e!2686570 () Bool)

(declare-fun e!2686574 () Bool)

(declare-fun lt!1537173 () MutLongMap!4741)

(get-info :version)

(assert (=> b!4318426 (= e!2686570 (and e!2686574 ((_ is LongMap!4741) lt!1537173)))))

(assert (=> b!4318426 (= lt!1537173 (v!42686 (underlying!9712 thiss!42308)))))

(declare-fun b!4318427 () Bool)

(declare-fun res!1769838 () Bool)

(declare-fun e!2686581 () Bool)

(assert (=> b!4318427 (=> (not res!1769838) (not e!2686581))))

(declare-datatypes ((tuple2!47108 0))(
  ( (tuple2!47109 (_1!26838 (_ BitVec 64)) (_2!26838 List!48476)) )
))
(declare-datatypes ((List!48477 0))(
  ( (Nil!48353) (Cons!48353 (h!53809 tuple2!47108) (t!355342 List!48477)) )
))
(declare-datatypes ((ListLongMap!1149 0))(
  ( (ListLongMap!1150 (toList!2534 List!48477)) )
))
(declare-fun lt!1537172 () ListLongMap!1149)

(declare-fun allKeysSameHashInMap!380 (ListLongMap!1149 Hashable!4657) Bool)

(assert (=> b!4318427 (= res!1769838 (allKeysSameHashInMap!380 lt!1537172 (hashF!6879 thiss!42308)))))

(declare-fun b!4318428 () Bool)

(declare-fun e!2686575 () Bool)

(assert (=> b!4318428 (= e!2686575 e!2686579)))

(declare-fun res!1769836 () Bool)

(assert (=> b!4318428 (=> (not res!1769836) (not e!2686579))))

(declare-fun contains!10386 (MutableMap!4647 K!9599) Bool)

(assert (=> b!4318428 (= res!1769836 (not (contains!10386 thiss!42308 key!2048)))))

(declare-fun map!10376 (MutLongMap!4741) ListLongMap!1149)

(assert (=> b!4318428 (= lt!1537172 (map!10376 (v!42686 (underlying!9712 thiss!42308))))))

(declare-datatypes ((ListMap!1813 0))(
  ( (ListMap!1814 (toList!2535 List!48476)) )
))
(declare-fun lt!1537165 () ListMap!1813)

(declare-fun map!10377 (MutableMap!4647) ListMap!1813)

(assert (=> b!4318428 (= lt!1537165 (map!10377 thiss!42308))))

(declare-fun b!4318429 () Bool)

(declare-fun e!2686571 () Bool)

(assert (=> b!4318429 (= e!2686574 e!2686571)))

(declare-fun b!4318430 () Bool)

(declare-fun noDuplicateKeys!258 (List!48476) Bool)

(assert (=> b!4318430 (= e!2686581 (not (noDuplicateKeys!258 lt!1537171)))))

(declare-fun b!4318431 () Bool)

(declare-datatypes ((Unit!67626 0))(
  ( (Unit!67627) )
))
(declare-fun e!2686577 () Unit!67626)

(declare-fun lt!1537167 () Unit!67626)

(assert (=> b!4318431 (= e!2686577 lt!1537167)))

(declare-fun lt!1537169 () Unit!67626)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!219 (List!48477 (_ BitVec 64) List!48476 Hashable!4657) Unit!67626)

(assert (=> b!4318431 (= lt!1537169 (lemmaInLongMapAllKeySameHashThenForTuple!219 (toList!2534 lt!1537172) lt!1537166 lt!1537170 (hashF!6879 thiss!42308)))))

(declare-fun allKeysSameHash!234 (List!48476 (_ BitVec 64) Hashable!4657) Bool)

(assert (=> b!4318431 (allKeysSameHash!234 lt!1537170 lt!1537166 (hashF!6879 thiss!42308))))

(declare-fun lemmaRemovePairForKeyPreservesHash!210 (List!48476 K!9599 (_ BitVec 64) Hashable!4657) Unit!67626)

(assert (=> b!4318431 (= lt!1537167 (lemmaRemovePairForKeyPreservesHash!210 lt!1537170 key!2048 lt!1537166 (hashF!6879 thiss!42308)))))

(declare-fun removePairForKey!257 (List!48476 K!9599) List!48476)

(assert (=> b!4318431 (allKeysSameHash!234 (removePairForKey!257 lt!1537170 key!2048) lt!1537166 (hashF!6879 thiss!42308))))

(declare-fun b!4318432 () Bool)

(declare-fun apply!11122 (MutLongMap!4741 (_ BitVec 64)) List!48476)

(assert (=> b!4318432 (= e!2686569 (apply!11122 (v!42686 (underlying!9712 thiss!42308)) lt!1537166))))

(declare-fun b!4318433 () Bool)

(declare-fun Unit!67628 () Unit!67626)

(assert (=> b!4318433 (= e!2686577 Unit!67628)))

(declare-fun mapNonEmpty!21135 () Bool)

(declare-fun tp!1326589 () Bool)

(declare-fun tp!1326593 () Bool)

(assert (=> mapNonEmpty!21135 (= mapRes!21135 (and tp!1326589 tp!1326593))))

(declare-fun mapRest!21135 () (Array (_ BitVec 32) List!48476))

(declare-fun mapKey!21135 () (_ BitVec 32))

(declare-fun mapValue!21135 () List!48476)

(assert (=> mapNonEmpty!21135 (= (arr!7668 (_values!5022 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308)))))) (store mapRest!21135 mapKey!21135 mapValue!21135))))

(declare-fun res!1769835 () Bool)

(assert (=> start!415516 (=> (not res!1769835) (not e!2686575))))

(assert (=> start!415516 (= res!1769835 ((_ is HashMap!4647) thiss!42308))))

(assert (=> start!415516 e!2686575))

(declare-fun e!2686572 () Bool)

(assert (=> start!415516 e!2686572))

(declare-fun tp_is_empty!24061 () Bool)

(assert (=> start!415516 tp_is_empty!24061))

(declare-fun tp_is_empty!24063 () Bool)

(assert (=> start!415516 tp_is_empty!24063))

(assert (=> b!4318424 (= e!2686572 (and e!2686570 tp!1326591))))

(declare-fun b!4318434 () Bool)

(assert (=> b!4318434 (= e!2686571 e!2686580)))

(declare-fun b!4318435 () Bool)

(assert (=> b!4318435 (= e!2686573 e!2686581)))

(declare-fun res!1769837 () Bool)

(assert (=> b!4318435 (=> (not res!1769837) (not e!2686581))))

(declare-fun lambda!133615 () Int)

(declare-fun forall!8797 (List!48477 Int) Bool)

(assert (=> b!4318435 (= res!1769837 (forall!8797 (toList!2534 lt!1537172) lambda!133615))))

(declare-fun lt!1537168 () Unit!67626)

(assert (=> b!4318435 (= lt!1537168 e!2686577)))

(declare-fun c!734237 () Bool)

(declare-fun isEmpty!28104 (List!48476) Bool)

(assert (=> b!4318435 (= c!734237 (not (isEmpty!28104 lt!1537170)))))

(declare-fun b!4318436 () Bool)

(declare-fun res!1769840 () Bool)

(assert (=> b!4318436 (=> (not res!1769840) (not e!2686575))))

(declare-fun valid!3749 (MutableMap!4647) Bool)

(assert (=> b!4318436 (= res!1769840 (valid!3749 thiss!42308))))

(declare-fun b!4318437 () Bool)

(assert (=> b!4318437 (= e!2686569 Nil!48352)))

(assert (= (and start!415516 res!1769835) b!4318436))

(assert (= (and b!4318436 res!1769840) b!4318428))

(assert (= (and b!4318428 res!1769836) b!4318422))

(assert (= (and b!4318422 c!734238) b!4318432))

(assert (= (and b!4318422 (not c!734238)) b!4318437))

(assert (= (and b!4318422 res!1769839) b!4318435))

(assert (= (and b!4318435 c!734237) b!4318431))

(assert (= (and b!4318435 (not c!734237)) b!4318433))

(assert (= (and b!4318435 res!1769837) b!4318427))

(assert (= (and b!4318427 res!1769838) b!4318430))

(assert (= (and b!4318423 condMapEmpty!21135) mapIsEmpty!21135))

(assert (= (and b!4318423 (not condMapEmpty!21135)) mapNonEmpty!21135))

(assert (= b!4318425 b!4318423))

(assert (= b!4318434 b!4318425))

(assert (= b!4318429 b!4318434))

(assert (= (and b!4318426 ((_ is LongMap!4741) (v!42686 (underlying!9712 thiss!42308)))) b!4318429))

(assert (= b!4318424 b!4318426))

(assert (= (and start!415516 ((_ is HashMap!4647) thiss!42308)) b!4318424))

(declare-fun m!4912005 () Bool)

(assert (=> b!4318427 m!4912005))

(declare-fun m!4912007 () Bool)

(assert (=> mapNonEmpty!21135 m!4912007))

(declare-fun m!4912009 () Bool)

(assert (=> b!4318422 m!4912009))

(declare-fun m!4912011 () Bool)

(assert (=> b!4318422 m!4912011))

(declare-fun m!4912013 () Bool)

(assert (=> b!4318422 m!4912013))

(declare-fun m!4912015 () Bool)

(assert (=> b!4318430 m!4912015))

(declare-fun m!4912017 () Bool)

(assert (=> b!4318435 m!4912017))

(declare-fun m!4912019 () Bool)

(assert (=> b!4318435 m!4912019))

(declare-fun m!4912021 () Bool)

(assert (=> b!4318428 m!4912021))

(declare-fun m!4912023 () Bool)

(assert (=> b!4318428 m!4912023))

(declare-fun m!4912025 () Bool)

(assert (=> b!4318428 m!4912025))

(declare-fun m!4912027 () Bool)

(assert (=> b!4318432 m!4912027))

(declare-fun m!4912029 () Bool)

(assert (=> b!4318431 m!4912029))

(declare-fun m!4912031 () Bool)

(assert (=> b!4318431 m!4912031))

(declare-fun m!4912033 () Bool)

(assert (=> b!4318431 m!4912033))

(declare-fun m!4912035 () Bool)

(assert (=> b!4318431 m!4912035))

(assert (=> b!4318431 m!4912031))

(declare-fun m!4912037 () Bool)

(assert (=> b!4318431 m!4912037))

(declare-fun m!4912039 () Bool)

(assert (=> b!4318425 m!4912039))

(declare-fun m!4912041 () Bool)

(assert (=> b!4318425 m!4912041))

(declare-fun m!4912043 () Bool)

(assert (=> b!4318436 m!4912043))

(check-sat tp_is_empty!24061 (not b!4318430) (not b!4318425) (not b!4318428) (not b!4318432) (not b_next!129629) (not b!4318422) (not b!4318427) b_and!340435 b_and!340433 (not b!4318435) (not b!4318423) tp_is_empty!24063 (not b!4318436) (not b!4318431) (not b_next!129627) (not mapNonEmpty!21135))
(check-sat b_and!340433 b_and!340435 (not b_next!129629) (not b_next!129627))
(get-model)

(declare-fun d!1269675 () Bool)

(assert (=> d!1269675 (= (array_inv!5517 (_keys!5041 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308)))))) (bvsge (size!35706 (_keys!5041 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4318425 d!1269675))

(declare-fun d!1269677 () Bool)

(assert (=> d!1269677 (= (array_inv!5518 (_values!5022 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308)))))) (bvsge (size!35707 (_values!5022 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4318425 d!1269677))

(declare-fun d!1269679 () Bool)

(declare-fun res!1769845 () Bool)

(declare-fun e!2686586 () Bool)

(assert (=> d!1269679 (=> res!1769845 e!2686586)))

(assert (=> d!1269679 (= res!1769845 ((_ is Nil!48353) (toList!2534 lt!1537172)))))

(assert (=> d!1269679 (= (forall!8797 (toList!2534 lt!1537172) lambda!133615) e!2686586)))

(declare-fun b!4318442 () Bool)

(declare-fun e!2686587 () Bool)

(assert (=> b!4318442 (= e!2686586 e!2686587)))

(declare-fun res!1769846 () Bool)

(assert (=> b!4318442 (=> (not res!1769846) (not e!2686587))))

(declare-fun dynLambda!20496 (Int tuple2!47108) Bool)

(assert (=> b!4318442 (= res!1769846 (dynLambda!20496 lambda!133615 (h!53809 (toList!2534 lt!1537172))))))

(declare-fun b!4318443 () Bool)

(assert (=> b!4318443 (= e!2686587 (forall!8797 (t!355342 (toList!2534 lt!1537172)) lambda!133615))))

(assert (= (and d!1269679 (not res!1769845)) b!4318442))

(assert (= (and b!4318442 res!1769846) b!4318443))

(declare-fun b_lambda!127011 () Bool)

(assert (=> (not b_lambda!127011) (not b!4318442)))

(declare-fun m!4912045 () Bool)

(assert (=> b!4318442 m!4912045))

(declare-fun m!4912047 () Bool)

(assert (=> b!4318443 m!4912047))

(assert (=> b!4318435 d!1269679))

(declare-fun d!1269681 () Bool)

(assert (=> d!1269681 (= (isEmpty!28104 lt!1537170) ((_ is Nil!48352) lt!1537170))))

(assert (=> b!4318435 d!1269681))

(declare-fun d!1269683 () Bool)

(assert (=> d!1269683 true))

(assert (=> d!1269683 true))

(declare-fun lambda!133618 () Int)

(declare-fun forall!8798 (List!48476 Int) Bool)

(assert (=> d!1269683 (= (allKeysSameHash!234 (removePairForKey!257 lt!1537170 key!2048) lt!1537166 (hashF!6879 thiss!42308)) (forall!8798 (removePairForKey!257 lt!1537170 key!2048) lambda!133618))))

(declare-fun bs!606029 () Bool)

(assert (= bs!606029 d!1269683))

(assert (=> bs!606029 m!4912031))

(declare-fun m!4912049 () Bool)

(assert (=> bs!606029 m!4912049))

(assert (=> b!4318431 d!1269683))

(declare-fun b!4318459 () Bool)

(declare-fun e!2686593 () List!48476)

(assert (=> b!4318459 (= e!2686593 Nil!48352)))

(declare-fun b!4318457 () Bool)

(declare-fun e!2686592 () List!48476)

(assert (=> b!4318457 (= e!2686592 e!2686593)))

(declare-fun c!734244 () Bool)

(assert (=> b!4318457 (= c!734244 ((_ is Cons!48352) lt!1537170))))

(declare-fun b!4318456 () Bool)

(assert (=> b!4318456 (= e!2686592 (t!355341 lt!1537170))))

(declare-fun b!4318458 () Bool)

(assert (=> b!4318458 (= e!2686593 (Cons!48352 (h!53808 lt!1537170) (removePairForKey!257 (t!355341 lt!1537170) key!2048)))))

(declare-fun d!1269685 () Bool)

(declare-fun lt!1537176 () List!48476)

(declare-fun containsKey!390 (List!48476 K!9599) Bool)

(assert (=> d!1269685 (not (containsKey!390 lt!1537176 key!2048))))

(assert (=> d!1269685 (= lt!1537176 e!2686592)))

(declare-fun c!734243 () Bool)

(assert (=> d!1269685 (= c!734243 (and ((_ is Cons!48352) lt!1537170) (= (_1!26836 (h!53808 lt!1537170)) key!2048)))))

(assert (=> d!1269685 (noDuplicateKeys!258 lt!1537170)))

(assert (=> d!1269685 (= (removePairForKey!257 lt!1537170 key!2048) lt!1537176)))

(assert (= (and d!1269685 c!734243) b!4318456))

(assert (= (and d!1269685 (not c!734243)) b!4318457))

(assert (= (and b!4318457 c!734244) b!4318458))

(assert (= (and b!4318457 (not c!734244)) b!4318459))

(declare-fun m!4912051 () Bool)

(assert (=> b!4318458 m!4912051))

(declare-fun m!4912053 () Bool)

(assert (=> d!1269685 m!4912053))

(declare-fun m!4912055 () Bool)

(assert (=> d!1269685 m!4912055))

(assert (=> b!4318431 d!1269685))

(declare-fun bs!606030 () Bool)

(declare-fun d!1269687 () Bool)

(assert (= bs!606030 (and d!1269687 d!1269683)))

(declare-fun lambda!133619 () Int)

(assert (=> bs!606030 (= lambda!133619 lambda!133618)))

(assert (=> d!1269687 true))

(assert (=> d!1269687 true))

(assert (=> d!1269687 (= (allKeysSameHash!234 lt!1537170 lt!1537166 (hashF!6879 thiss!42308)) (forall!8798 lt!1537170 lambda!133619))))

(declare-fun bs!606031 () Bool)

(assert (= bs!606031 d!1269687))

(declare-fun m!4912057 () Bool)

(assert (=> bs!606031 m!4912057))

(assert (=> b!4318431 d!1269687))

(declare-fun bs!606032 () Bool)

(declare-fun d!1269689 () Bool)

(assert (= bs!606032 (and d!1269689 b!4318435)))

(declare-fun lambda!133622 () Int)

(assert (=> bs!606032 (not (= lambda!133622 lambda!133615))))

(assert (=> d!1269689 true))

(assert (=> d!1269689 (allKeysSameHash!234 lt!1537170 lt!1537166 (hashF!6879 thiss!42308))))

(declare-fun lt!1537179 () Unit!67626)

(declare-fun choose!26356 (List!48477 (_ BitVec 64) List!48476 Hashable!4657) Unit!67626)

(assert (=> d!1269689 (= lt!1537179 (choose!26356 (toList!2534 lt!1537172) lt!1537166 lt!1537170 (hashF!6879 thiss!42308)))))

(assert (=> d!1269689 (forall!8797 (toList!2534 lt!1537172) lambda!133622)))

(assert (=> d!1269689 (= (lemmaInLongMapAllKeySameHashThenForTuple!219 (toList!2534 lt!1537172) lt!1537166 lt!1537170 (hashF!6879 thiss!42308)) lt!1537179)))

(declare-fun bs!606033 () Bool)

(assert (= bs!606033 d!1269689))

(assert (=> bs!606033 m!4912035))

(declare-fun m!4912059 () Bool)

(assert (=> bs!606033 m!4912059))

(declare-fun m!4912061 () Bool)

(assert (=> bs!606033 m!4912061))

(assert (=> b!4318431 d!1269689))

(declare-fun d!1269691 () Bool)

(assert (=> d!1269691 (allKeysSameHash!234 (removePairForKey!257 lt!1537170 key!2048) lt!1537166 (hashF!6879 thiss!42308))))

(declare-fun lt!1537182 () Unit!67626)

(declare-fun choose!26357 (List!48476 K!9599 (_ BitVec 64) Hashable!4657) Unit!67626)

(assert (=> d!1269691 (= lt!1537182 (choose!26357 lt!1537170 key!2048 lt!1537166 (hashF!6879 thiss!42308)))))

(assert (=> d!1269691 (noDuplicateKeys!258 lt!1537170)))

(assert (=> d!1269691 (= (lemmaRemovePairForKeyPreservesHash!210 lt!1537170 key!2048 lt!1537166 (hashF!6879 thiss!42308)) lt!1537182)))

(declare-fun bs!606034 () Bool)

(assert (= bs!606034 d!1269691))

(assert (=> bs!606034 m!4912031))

(assert (=> bs!606034 m!4912031))

(assert (=> bs!606034 m!4912033))

(declare-fun m!4912063 () Bool)

(assert (=> bs!606034 m!4912063))

(assert (=> bs!606034 m!4912055))

(assert (=> b!4318431 d!1269691))

(declare-fun bs!606035 () Bool)

(declare-fun b!4318466 () Bool)

(assert (= bs!606035 (and b!4318466 b!4318435)))

(declare-fun lambda!133625 () Int)

(assert (=> bs!606035 (= lambda!133625 lambda!133615)))

(declare-fun bs!606036 () Bool)

(assert (= bs!606036 (and b!4318466 d!1269689)))

(assert (=> bs!606036 (not (= lambda!133625 lambda!133622))))

(declare-fun d!1269693 () Bool)

(declare-fun res!1769851 () Bool)

(declare-fun e!2686596 () Bool)

(assert (=> d!1269693 (=> (not res!1769851) (not e!2686596))))

(declare-fun valid!3750 (MutLongMap!4741) Bool)

(assert (=> d!1269693 (= res!1769851 (valid!3750 (v!42686 (underlying!9712 thiss!42308))))))

(assert (=> d!1269693 (= (valid!3749 thiss!42308) e!2686596)))

(declare-fun res!1769852 () Bool)

(assert (=> b!4318466 (=> (not res!1769852) (not e!2686596))))

(assert (=> b!4318466 (= res!1769852 (forall!8797 (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308)))) lambda!133625))))

(declare-fun b!4318467 () Bool)

(assert (=> b!4318467 (= e!2686596 (allKeysSameHashInMap!380 (map!10376 (v!42686 (underlying!9712 thiss!42308))) (hashF!6879 thiss!42308)))))

(assert (= (and d!1269693 res!1769851) b!4318466))

(assert (= (and b!4318466 res!1769852) b!4318467))

(declare-fun m!4912065 () Bool)

(assert (=> d!1269693 m!4912065))

(assert (=> b!4318466 m!4912023))

(declare-fun m!4912067 () Bool)

(assert (=> b!4318466 m!4912067))

(assert (=> b!4318467 m!4912023))

(assert (=> b!4318467 m!4912023))

(declare-fun m!4912069 () Bool)

(assert (=> b!4318467 m!4912069))

(assert (=> b!4318436 d!1269693))

(declare-fun b!4318486 () Bool)

(declare-fun e!2686608 () tuple2!47106)

(declare-fun lt!1537194 () tuple2!47106)

(assert (=> b!4318486 (= e!2686608 (tuple2!47107 false (_2!26837 lt!1537194)))))

(declare-fun b!4318487 () Bool)

(declare-fun res!1769860 () Bool)

(declare-fun e!2686611 () Bool)

(assert (=> b!4318487 (=> (not res!1769860) (not e!2686611))))

(declare-fun lt!1537193 () tuple2!47106)

(assert (=> b!4318487 (= res!1769860 (valid!3750 (_2!26837 lt!1537193)))))

(declare-fun bm!298986 () Bool)

(declare-fun call!298992 () ListLongMap!1149)

(assert (=> bm!298986 (= call!298992 (map!10376 (v!42686 (underlying!9712 thiss!42308))))))

(declare-fun bm!298987 () Bool)

(declare-fun call!298991 () ListLongMap!1149)

(assert (=> bm!298987 (= call!298991 (map!10376 (_2!26837 lt!1537193)))))

(declare-fun b!4318488 () Bool)

(declare-fun e!2686607 () Bool)

(assert (=> b!4318488 (= e!2686607 (= call!298991 call!298992))))

(declare-fun b!4318489 () Bool)

(declare-fun e!2686609 () Bool)

(assert (=> b!4318489 (= e!2686607 e!2686609)))

(declare-fun res!1769861 () Bool)

(declare-fun contains!10387 (ListLongMap!1149 (_ BitVec 64)) Bool)

(assert (=> b!4318489 (= res!1769861 (contains!10387 call!298991 lt!1537166))))

(assert (=> b!4318489 (=> (not res!1769861) (not e!2686609))))

(declare-fun b!4318490 () Bool)

(declare-fun e!2686610 () tuple2!47106)

(declare-fun lt!1537192 () tuple2!47106)

(assert (=> b!4318490 (= e!2686610 (tuple2!47107 (_1!26837 lt!1537192) (_2!26837 lt!1537192)))))

(declare-fun repack!80 (MutLongMap!4741) tuple2!47106)

(assert (=> b!4318490 (= lt!1537192 (repack!80 (v!42686 (underlying!9712 thiss!42308))))))

(declare-fun b!4318491 () Bool)

(assert (=> b!4318491 (= e!2686611 e!2686607)))

(declare-fun c!734253 () Bool)

(assert (=> b!4318491 (= c!734253 (_1!26837 lt!1537193))))

(declare-fun b!4318493 () Bool)

(declare-fun +!321 (ListLongMap!1149 tuple2!47108) ListLongMap!1149)

(assert (=> b!4318493 (= e!2686609 (= call!298991 (+!321 call!298992 (tuple2!47109 lt!1537166 lt!1537171))))))

(declare-fun b!4318494 () Bool)

(declare-datatypes ((tuple2!47110 0))(
  ( (tuple2!47111 (_1!26839 Bool) (_2!26839 LongMapFixedSize!9482)) )
))
(declare-fun lt!1537191 () tuple2!47110)

(assert (=> b!4318494 (= e!2686608 (tuple2!47107 (_1!26839 lt!1537191) (LongMap!4741 (Cell!18774 (_2!26839 lt!1537191)))))))

(declare-fun update!516 (LongMapFixedSize!9482 (_ BitVec 64) List!48476) tuple2!47110)

(assert (=> b!4318494 (= lt!1537191 (update!516 (v!42685 (underlying!9711 (_2!26837 lt!1537194))) lt!1537166 lt!1537171))))

(declare-fun d!1269695 () Bool)

(assert (=> d!1269695 e!2686611))

(declare-fun res!1769859 () Bool)

(assert (=> d!1269695 (=> (not res!1769859) (not e!2686611))))

(assert (=> d!1269695 (= res!1769859 ((_ is LongMap!4741) (_2!26837 lt!1537193)))))

(assert (=> d!1269695 (= lt!1537193 e!2686608)))

(declare-fun c!734251 () Bool)

(assert (=> d!1269695 (= c!734251 (_1!26837 lt!1537194))))

(assert (=> d!1269695 (= lt!1537194 e!2686610)))

(declare-fun c!734252 () Bool)

(declare-fun imbalanced!76 (MutLongMap!4741) Bool)

(assert (=> d!1269695 (= c!734252 (imbalanced!76 (v!42686 (underlying!9712 thiss!42308))))))

(assert (=> d!1269695 (valid!3750 (v!42686 (underlying!9712 thiss!42308)))))

(assert (=> d!1269695 (= (update!515 (v!42686 (underlying!9712 thiss!42308)) lt!1537166 lt!1537171) lt!1537193)))

(declare-fun b!4318492 () Bool)

(assert (=> b!4318492 (= e!2686610 (tuple2!47107 true (v!42686 (underlying!9712 thiss!42308))))))

(assert (= (and d!1269695 c!734252) b!4318490))

(assert (= (and d!1269695 (not c!734252)) b!4318492))

(assert (= (and d!1269695 c!734251) b!4318494))

(assert (= (and d!1269695 (not c!734251)) b!4318486))

(assert (= (and d!1269695 res!1769859) b!4318487))

(assert (= (and b!4318487 res!1769860) b!4318491))

(assert (= (and b!4318491 c!734253) b!4318489))

(assert (= (and b!4318491 (not c!734253)) b!4318488))

(assert (= (and b!4318489 res!1769861) b!4318493))

(assert (= (or b!4318489 b!4318493 b!4318488) bm!298987))

(assert (= (or b!4318493 b!4318488) bm!298986))

(declare-fun m!4912071 () Bool)

(assert (=> b!4318494 m!4912071))

(declare-fun m!4912073 () Bool)

(assert (=> b!4318490 m!4912073))

(declare-fun m!4912075 () Bool)

(assert (=> d!1269695 m!4912075))

(assert (=> d!1269695 m!4912065))

(declare-fun m!4912077 () Bool)

(assert (=> bm!298987 m!4912077))

(assert (=> bm!298986 m!4912023))

(declare-fun m!4912079 () Bool)

(assert (=> b!4318493 m!4912079))

(declare-fun m!4912081 () Bool)

(assert (=> b!4318489 m!4912081))

(declare-fun m!4912083 () Bool)

(assert (=> b!4318487 m!4912083))

(assert (=> b!4318422 d!1269695))

(declare-fun d!1269697 () Bool)

(declare-fun lt!1537197 () Bool)

(assert (=> d!1269697 (= lt!1537197 (contains!10387 (map!10376 (v!42686 (underlying!9712 thiss!42308))) lt!1537166))))

(declare-fun contains!10388 (LongMapFixedSize!9482 (_ BitVec 64)) Bool)

(assert (=> d!1269697 (= lt!1537197 (contains!10388 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308)))) lt!1537166))))

(assert (=> d!1269697 (valid!3750 (v!42686 (underlying!9712 thiss!42308)))))

(assert (=> d!1269697 (= (contains!10385 (v!42686 (underlying!9712 thiss!42308)) lt!1537166) lt!1537197)))

(declare-fun bs!606037 () Bool)

(assert (= bs!606037 d!1269697))

(assert (=> bs!606037 m!4912023))

(assert (=> bs!606037 m!4912023))

(declare-fun m!4912085 () Bool)

(assert (=> bs!606037 m!4912085))

(declare-fun m!4912087 () Bool)

(assert (=> bs!606037 m!4912087))

(assert (=> bs!606037 m!4912065))

(assert (=> b!4318422 d!1269697))

(declare-fun d!1269699 () Bool)

(declare-fun hash!1150 (Hashable!4657 K!9599) (_ BitVec 64))

(assert (=> d!1269699 (= (hash!1147 (hashF!6879 thiss!42308) key!2048) (hash!1150 (hashF!6879 thiss!42308) key!2048))))

(declare-fun bs!606038 () Bool)

(assert (= bs!606038 d!1269699))

(declare-fun m!4912089 () Bool)

(assert (=> bs!606038 m!4912089))

(assert (=> b!4318422 d!1269699))

(declare-fun d!1269701 () Bool)

(declare-fun e!2686614 () Bool)

(assert (=> d!1269701 e!2686614))

(declare-fun c!734256 () Bool)

(assert (=> d!1269701 (= c!734256 (contains!10385 (v!42686 (underlying!9712 thiss!42308)) lt!1537166))))

(declare-fun lt!1537200 () List!48476)

(declare-fun apply!11123 (LongMapFixedSize!9482 (_ BitVec 64)) List!48476)

(assert (=> d!1269701 (= lt!1537200 (apply!11123 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308)))) lt!1537166))))

(assert (=> d!1269701 (valid!3750 (v!42686 (underlying!9712 thiss!42308)))))

(assert (=> d!1269701 (= (apply!11122 (v!42686 (underlying!9712 thiss!42308)) lt!1537166) lt!1537200)))

(declare-fun b!4318499 () Bool)

(declare-datatypes ((Option!10290 0))(
  ( (None!10289) (Some!10289 (v!42691 List!48476)) )
))
(declare-fun get!15663 (Option!10290) List!48476)

(declare-fun getValueByKey!291 (List!48477 (_ BitVec 64)) Option!10290)

(assert (=> b!4318499 (= e!2686614 (= lt!1537200 (get!15663 (getValueByKey!291 (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308)))) lt!1537166))))))

(declare-fun b!4318500 () Bool)

(declare-fun dynLambda!20497 (Int (_ BitVec 64)) List!48476)

(assert (=> b!4318500 (= e!2686614 (= lt!1537200 (dynLambda!20497 (defaultEntry!5126 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) lt!1537166)))))

(assert (=> b!4318500 ((_ is LongMap!4741) (v!42686 (underlying!9712 thiss!42308)))))

(assert (= (and d!1269701 c!734256) b!4318499))

(assert (= (and d!1269701 (not c!734256)) b!4318500))

(declare-fun b_lambda!127013 () Bool)

(assert (=> (not b_lambda!127013) (not b!4318500)))

(declare-fun t!355344 () Bool)

(declare-fun tb!257351 () Bool)

(assert (=> (and b!4318425 (= (defaultEntry!5126 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (defaultEntry!5126 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308)))))) t!355344) tb!257351))

(assert (=> b!4318500 t!355344))

(declare-fun result!314848 () Bool)

(declare-fun b_and!340437 () Bool)

(assert (= b_and!340433 (and (=> t!355344 result!314848) b_and!340437)))

(assert (=> d!1269701 m!4912011))

(declare-fun m!4912091 () Bool)

(assert (=> d!1269701 m!4912091))

(assert (=> d!1269701 m!4912065))

(assert (=> b!4318499 m!4912023))

(declare-fun m!4912093 () Bool)

(assert (=> b!4318499 m!4912093))

(assert (=> b!4318499 m!4912093))

(declare-fun m!4912095 () Bool)

(assert (=> b!4318499 m!4912095))

(declare-fun m!4912097 () Bool)

(assert (=> b!4318500 m!4912097))

(assert (=> b!4318432 d!1269701))

(declare-fun bs!606039 () Bool)

(declare-fun d!1269703 () Bool)

(assert (= bs!606039 (and d!1269703 b!4318435)))

(declare-fun lambda!133628 () Int)

(assert (=> bs!606039 (not (= lambda!133628 lambda!133615))))

(declare-fun bs!606040 () Bool)

(assert (= bs!606040 (and d!1269703 d!1269689)))

(assert (=> bs!606040 (= lambda!133628 lambda!133622)))

(declare-fun bs!606041 () Bool)

(assert (= bs!606041 (and d!1269703 b!4318466)))

(assert (=> bs!606041 (not (= lambda!133628 lambda!133625))))

(assert (=> d!1269703 true))

(assert (=> d!1269703 (= (allKeysSameHashInMap!380 lt!1537172 (hashF!6879 thiss!42308)) (forall!8797 (toList!2534 lt!1537172) lambda!133628))))

(declare-fun bs!606042 () Bool)

(assert (= bs!606042 d!1269703))

(declare-fun m!4912099 () Bool)

(assert (=> bs!606042 m!4912099))

(assert (=> b!4318427 d!1269703))

(declare-fun bs!606043 () Bool)

(declare-fun b!4318527 () Bool)

(assert (= bs!606043 (and b!4318527 b!4318435)))

(declare-fun lambda!133631 () Int)

(assert (=> bs!606043 (= lambda!133631 lambda!133615)))

(declare-fun bs!606044 () Bool)

(assert (= bs!606044 (and b!4318527 d!1269689)))

(assert (=> bs!606044 (not (= lambda!133631 lambda!133622))))

(declare-fun bs!606045 () Bool)

(assert (= bs!606045 (and b!4318527 b!4318466)))

(assert (=> bs!606045 (= lambda!133631 lambda!133625)))

(declare-fun bs!606046 () Bool)

(assert (= bs!606046 (and b!4318527 d!1269703)))

(assert (=> bs!606046 (not (= lambda!133631 lambda!133628))))

(declare-fun bm!299000 () Bool)

(declare-fun call!299007 () ListLongMap!1149)

(assert (=> bm!299000 (= call!299007 (map!10376 (v!42686 (underlying!9712 thiss!42308))))))

(declare-fun bm!299001 () Bool)

(declare-fun call!299009 () (_ BitVec 64))

(assert (=> bm!299001 (= call!299009 (hash!1147 (hashF!6879 thiss!42308) key!2048))))

(declare-fun b!4318523 () Bool)

(declare-fun e!2686630 () Unit!67626)

(declare-fun Unit!67629 () Unit!67626)

(assert (=> b!4318523 (= e!2686630 Unit!67629)))

(declare-fun b!4318524 () Bool)

(declare-fun e!2686631 () Bool)

(declare-fun call!299010 () Bool)

(assert (=> b!4318524 (= e!2686631 call!299010)))

(declare-fun b!4318525 () Bool)

(assert (=> b!4318525 false))

(declare-fun lt!1537245 () Unit!67626)

(declare-fun lt!1537255 () Unit!67626)

(assert (=> b!4318525 (= lt!1537245 lt!1537255)))

(declare-fun lt!1537253 () ListLongMap!1149)

(declare-fun contains!10389 (ListMap!1813 K!9599) Bool)

(declare-fun extractMap!364 (List!48477) ListMap!1813)

(assert (=> b!4318525 (contains!10389 (extractMap!364 (toList!2534 lt!1537253)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!158 (ListLongMap!1149 K!9599 Hashable!4657) Unit!67626)

(assert (=> b!4318525 (= lt!1537255 (lemmaInLongMapThenInGenericMap!158 lt!1537253 key!2048 (hashF!6879 thiss!42308)))))

(assert (=> b!4318525 (= lt!1537253 call!299007)))

(declare-fun e!2686632 () Unit!67626)

(declare-fun Unit!67630 () Unit!67626)

(assert (=> b!4318525 (= e!2686632 Unit!67630)))

(declare-fun d!1269705 () Bool)

(declare-fun lt!1537252 () Bool)

(assert (=> d!1269705 (= lt!1537252 (contains!10389 (map!10377 thiss!42308) key!2048))))

(declare-fun e!2686629 () Bool)

(assert (=> d!1269705 (= lt!1537252 e!2686629)))

(declare-fun res!1769869 () Bool)

(assert (=> d!1269705 (=> (not res!1769869) (not e!2686629))))

(declare-fun lt!1537248 () (_ BitVec 64))

(assert (=> d!1269705 (= res!1769869 (contains!10385 (v!42686 (underlying!9712 thiss!42308)) lt!1537248))))

(declare-fun lt!1537241 () Unit!67626)

(declare-fun e!2686634 () Unit!67626)

(assert (=> d!1269705 (= lt!1537241 e!2686634)))

(declare-fun c!734268 () Bool)

(assert (=> d!1269705 (= c!734268 (contains!10389 (extractMap!364 (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308))))) key!2048))))

(declare-fun lt!1537254 () Unit!67626)

(declare-fun e!2686633 () Unit!67626)

(assert (=> d!1269705 (= lt!1537254 e!2686633)))

(declare-fun c!734265 () Bool)

(assert (=> d!1269705 (= c!734265 (contains!10385 (v!42686 (underlying!9712 thiss!42308)) lt!1537248))))

(assert (=> d!1269705 (= lt!1537248 (hash!1147 (hashF!6879 thiss!42308) key!2048))))

(assert (=> d!1269705 (valid!3749 thiss!42308)))

(assert (=> d!1269705 (= (contains!10386 thiss!42308 key!2048) lt!1537252)))

(declare-fun b!4318526 () Bool)

(declare-fun Unit!67631 () Unit!67626)

(assert (=> b!4318526 (= e!2686633 Unit!67631)))

(declare-fun forallContained!1526 (List!48477 Int tuple2!47108) Unit!67626)

(assert (=> b!4318527 (= e!2686633 (forallContained!1526 (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308)))) lambda!133631 (tuple2!47109 lt!1537248 (apply!11122 (v!42686 (underlying!9712 thiss!42308)) lt!1537248))))))

(declare-fun c!734267 () Bool)

(declare-fun contains!10390 (List!48477 tuple2!47108) Bool)

(assert (=> b!4318527 (= c!734267 (not (contains!10390 (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308)))) (tuple2!47109 lt!1537248 (apply!11122 (v!42686 (underlying!9712 thiss!42308)) lt!1537248)))))))

(declare-fun lt!1537242 () Unit!67626)

(assert (=> b!4318527 (= lt!1537242 e!2686630)))

(declare-fun b!4318528 () Bool)

(assert (=> b!4318528 (= e!2686634 e!2686632)))

(declare-fun res!1769870 () Bool)

(declare-fun call!299005 () Bool)

(assert (=> b!4318528 (= res!1769870 call!299005)))

(assert (=> b!4318528 (=> (not res!1769870) (not e!2686631))))

(declare-fun c!734266 () Bool)

(assert (=> b!4318528 (= c!734266 e!2686631)))

(declare-fun lt!1537260 () ListLongMap!1149)

(declare-fun call!299006 () List!48476)

(declare-fun bm!299002 () Bool)

(declare-fun apply!11124 (ListLongMap!1149 (_ BitVec 64)) List!48476)

(assert (=> bm!299002 (= call!299006 (apply!11124 (ite c!734268 lt!1537260 call!299007) call!299009))))

(declare-fun b!4318529 () Bool)

(declare-datatypes ((Option!10291 0))(
  ( (None!10290) (Some!10290 (v!42692 tuple2!47104)) )
))
(declare-fun isDefined!7591 (Option!10291) Bool)

(declare-fun getPair!158 (List!48476 K!9599) Option!10291)

(assert (=> b!4318529 (= e!2686629 (isDefined!7591 (getPair!158 (apply!11122 (v!42686 (underlying!9712 thiss!42308)) lt!1537248) key!2048)))))

(declare-fun bm!299003 () Bool)

(declare-fun call!299008 () Option!10291)

(assert (=> bm!299003 (= call!299008 (getPair!158 call!299006 key!2048))))

(declare-fun b!4318530 () Bool)

(declare-fun Unit!67632 () Unit!67626)

(assert (=> b!4318530 (= e!2686632 Unit!67632)))

(declare-fun b!4318531 () Bool)

(declare-fun lt!1537256 () Unit!67626)

(assert (=> b!4318531 (= e!2686634 lt!1537256)))

(assert (=> b!4318531 (= lt!1537260 call!299007)))

(declare-fun lemmaInGenericMapThenInLongMap!158 (ListLongMap!1149 K!9599 Hashable!4657) Unit!67626)

(assert (=> b!4318531 (= lt!1537256 (lemmaInGenericMapThenInLongMap!158 lt!1537260 key!2048 (hashF!6879 thiss!42308)))))

(declare-fun res!1769868 () Bool)

(assert (=> b!4318531 (= res!1769868 call!299005)))

(declare-fun e!2686635 () Bool)

(assert (=> b!4318531 (=> (not res!1769868) (not e!2686635))))

(assert (=> b!4318531 e!2686635))

(declare-fun b!4318532 () Bool)

(assert (=> b!4318532 false))

(declare-fun lt!1537249 () Unit!67626)

(declare-fun lt!1537259 () Unit!67626)

(assert (=> b!4318532 (= lt!1537249 lt!1537259)))

(declare-fun lt!1537250 () List!48477)

(declare-fun lt!1537257 () List!48476)

(assert (=> b!4318532 (contains!10390 lt!1537250 (tuple2!47109 lt!1537248 lt!1537257))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!170 (List!48477 (_ BitVec 64) List!48476) Unit!67626)

(assert (=> b!4318532 (= lt!1537259 (lemmaGetValueByKeyImpliesContainsTuple!170 lt!1537250 lt!1537248 lt!1537257))))

(assert (=> b!4318532 (= lt!1537257 (apply!11122 (v!42686 (underlying!9712 thiss!42308)) lt!1537248))))

(assert (=> b!4318532 (= lt!1537250 (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308)))))))

(declare-fun lt!1537244 () Unit!67626)

(declare-fun lt!1537243 () Unit!67626)

(assert (=> b!4318532 (= lt!1537244 lt!1537243)))

(declare-fun lt!1537251 () List!48477)

(declare-fun isDefined!7592 (Option!10290) Bool)

(assert (=> b!4318532 (isDefined!7592 (getValueByKey!291 lt!1537251 lt!1537248))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!210 (List!48477 (_ BitVec 64)) Unit!67626)

(assert (=> b!4318532 (= lt!1537243 (lemmaContainsKeyImpliesGetValueByKeyDefined!210 lt!1537251 lt!1537248))))

(assert (=> b!4318532 (= lt!1537251 (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308)))))))

(declare-fun lt!1537247 () Unit!67626)

(declare-fun lt!1537258 () Unit!67626)

(assert (=> b!4318532 (= lt!1537247 lt!1537258)))

(declare-fun lt!1537246 () List!48477)

(declare-fun containsKey!391 (List!48477 (_ BitVec 64)) Bool)

(assert (=> b!4318532 (containsKey!391 lt!1537246 lt!1537248)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!159 (List!48477 (_ BitVec 64)) Unit!67626)

(assert (=> b!4318532 (= lt!1537258 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!159 lt!1537246 lt!1537248))))

(assert (=> b!4318532 (= lt!1537246 (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308)))))))

(declare-fun Unit!67633 () Unit!67626)

(assert (=> b!4318532 (= e!2686630 Unit!67633)))

(declare-fun bm!299004 () Bool)

(assert (=> bm!299004 (= call!299005 (contains!10387 (ite c!734268 lt!1537260 call!299007) call!299009))))

(declare-fun bm!299005 () Bool)

(assert (=> bm!299005 (= call!299010 (isDefined!7591 call!299008))))

(declare-fun b!4318533 () Bool)

(assert (=> b!4318533 (= e!2686635 call!299010)))

(assert (= (and d!1269705 c!734265) b!4318527))

(assert (= (and d!1269705 (not c!734265)) b!4318526))

(assert (= (and b!4318527 c!734267) b!4318532))

(assert (= (and b!4318527 (not c!734267)) b!4318523))

(assert (= (and d!1269705 c!734268) b!4318531))

(assert (= (and d!1269705 (not c!734268)) b!4318528))

(assert (= (and b!4318531 res!1769868) b!4318533))

(assert (= (and b!4318528 res!1769870) b!4318524))

(assert (= (and b!4318528 c!734266) b!4318525))

(assert (= (and b!4318528 (not c!734266)) b!4318530))

(assert (= (or b!4318531 b!4318533 b!4318528 b!4318524) bm!299001))

(assert (= (or b!4318531 b!4318528 b!4318524 b!4318525) bm!299000))

(assert (= (or b!4318533 b!4318524) bm!299002))

(assert (= (or b!4318531 b!4318528) bm!299004))

(assert (= (or b!4318533 b!4318524) bm!299003))

(assert (= (or b!4318533 b!4318524) bm!299005))

(assert (= (and d!1269705 res!1769869) b!4318529))

(declare-fun m!4912101 () Bool)

(assert (=> b!4318529 m!4912101))

(assert (=> b!4318529 m!4912101))

(declare-fun m!4912103 () Bool)

(assert (=> b!4318529 m!4912103))

(assert (=> b!4318529 m!4912103))

(declare-fun m!4912105 () Bool)

(assert (=> b!4318529 m!4912105))

(declare-fun m!4912107 () Bool)

(assert (=> b!4318532 m!4912107))

(declare-fun m!4912109 () Bool)

(assert (=> b!4318532 m!4912109))

(assert (=> b!4318532 m!4912109))

(declare-fun m!4912111 () Bool)

(assert (=> b!4318532 m!4912111))

(declare-fun m!4912113 () Bool)

(assert (=> b!4318532 m!4912113))

(declare-fun m!4912115 () Bool)

(assert (=> b!4318532 m!4912115))

(assert (=> b!4318532 m!4912101))

(declare-fun m!4912117 () Bool)

(assert (=> b!4318532 m!4912117))

(declare-fun m!4912119 () Bool)

(assert (=> b!4318532 m!4912119))

(assert (=> b!4318532 m!4912023))

(declare-fun m!4912121 () Bool)

(assert (=> bm!299002 m!4912121))

(assert (=> d!1269705 m!4912025))

(declare-fun m!4912123 () Bool)

(assert (=> d!1269705 m!4912123))

(assert (=> d!1269705 m!4912043))

(declare-fun m!4912125 () Bool)

(assert (=> d!1269705 m!4912125))

(declare-fun m!4912127 () Bool)

(assert (=> d!1269705 m!4912127))

(assert (=> d!1269705 m!4912025))

(assert (=> d!1269705 m!4912013))

(assert (=> d!1269705 m!4912125))

(declare-fun m!4912129 () Bool)

(assert (=> d!1269705 m!4912129))

(assert (=> d!1269705 m!4912023))

(assert (=> bm!299000 m!4912023))

(declare-fun m!4912131 () Bool)

(assert (=> bm!299004 m!4912131))

(declare-fun m!4912133 () Bool)

(assert (=> b!4318525 m!4912133))

(assert (=> b!4318525 m!4912133))

(declare-fun m!4912135 () Bool)

(assert (=> b!4318525 m!4912135))

(declare-fun m!4912137 () Bool)

(assert (=> b!4318525 m!4912137))

(declare-fun m!4912139 () Bool)

(assert (=> b!4318531 m!4912139))

(assert (=> bm!299001 m!4912013))

(assert (=> b!4318527 m!4912023))

(assert (=> b!4318527 m!4912101))

(declare-fun m!4912141 () Bool)

(assert (=> b!4318527 m!4912141))

(declare-fun m!4912143 () Bool)

(assert (=> b!4318527 m!4912143))

(declare-fun m!4912145 () Bool)

(assert (=> bm!299005 m!4912145))

(declare-fun m!4912147 () Bool)

(assert (=> bm!299003 m!4912147))

(assert (=> b!4318428 d!1269705))

(declare-fun d!1269707 () Bool)

(declare-fun map!10378 (LongMapFixedSize!9482) ListLongMap!1149)

(assert (=> d!1269707 (= (map!10376 (v!42686 (underlying!9712 thiss!42308))) (map!10378 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))))))

(declare-fun bs!606047 () Bool)

(assert (= bs!606047 d!1269707))

(declare-fun m!4912149 () Bool)

(assert (=> bs!606047 m!4912149))

(assert (=> b!4318428 d!1269707))

(declare-fun d!1269709 () Bool)

(declare-fun lt!1537263 () ListMap!1813)

(declare-fun invariantList!597 (List!48476) Bool)

(assert (=> d!1269709 (invariantList!597 (toList!2535 lt!1537263))))

(assert (=> d!1269709 (= lt!1537263 (extractMap!364 (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308))))))))

(assert (=> d!1269709 (valid!3749 thiss!42308)))

(assert (=> d!1269709 (= (map!10377 thiss!42308) lt!1537263)))

(declare-fun bs!606048 () Bool)

(assert (= bs!606048 d!1269709))

(declare-fun m!4912151 () Bool)

(assert (=> bs!606048 m!4912151))

(assert (=> bs!606048 m!4912023))

(assert (=> bs!606048 m!4912125))

(assert (=> bs!606048 m!4912043))

(assert (=> b!4318428 d!1269709))

(declare-fun d!1269711 () Bool)

(declare-fun res!1769875 () Bool)

(declare-fun e!2686640 () Bool)

(assert (=> d!1269711 (=> res!1769875 e!2686640)))

(assert (=> d!1269711 (= res!1769875 (not ((_ is Cons!48352) lt!1537171)))))

(assert (=> d!1269711 (= (noDuplicateKeys!258 lt!1537171) e!2686640)))

(declare-fun b!4318538 () Bool)

(declare-fun e!2686641 () Bool)

(assert (=> b!4318538 (= e!2686640 e!2686641)))

(declare-fun res!1769876 () Bool)

(assert (=> b!4318538 (=> (not res!1769876) (not e!2686641))))

(assert (=> b!4318538 (= res!1769876 (not (containsKey!390 (t!355341 lt!1537171) (_1!26836 (h!53808 lt!1537171)))))))

(declare-fun b!4318539 () Bool)

(assert (=> b!4318539 (= e!2686641 (noDuplicateKeys!258 (t!355341 lt!1537171)))))

(assert (= (and d!1269711 (not res!1769875)) b!4318538))

(assert (= (and b!4318538 res!1769876) b!4318539))

(declare-fun m!4912153 () Bool)

(assert (=> b!4318538 m!4912153))

(declare-fun m!4912155 () Bool)

(assert (=> b!4318539 m!4912155))

(assert (=> b!4318430 d!1269711))

(declare-fun b!4318544 () Bool)

(declare-fun tp!1326598 () Bool)

(declare-fun e!2686644 () Bool)

(assert (=> b!4318544 (= e!2686644 (and tp_is_empty!24061 tp_is_empty!24063 tp!1326598))))

(assert (=> b!4318425 (= tp!1326592 e!2686644)))

(assert (= (and b!4318425 ((_ is Cons!48352) (zeroValue!5000 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))))) b!4318544))

(declare-fun b!4318545 () Bool)

(declare-fun tp!1326599 () Bool)

(declare-fun e!2686645 () Bool)

(assert (=> b!4318545 (= e!2686645 (and tp_is_empty!24061 tp_is_empty!24063 tp!1326599))))

(assert (=> b!4318425 (= tp!1326595 e!2686645)))

(assert (= (and b!4318425 ((_ is Cons!48352) (minValue!5000 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))))) b!4318545))

(declare-fun e!2686646 () Bool)

(declare-fun tp!1326600 () Bool)

(declare-fun b!4318546 () Bool)

(assert (=> b!4318546 (= e!2686646 (and tp_is_empty!24061 tp_is_empty!24063 tp!1326600))))

(assert (=> b!4318423 (= tp!1326594 e!2686646)))

(assert (= (and b!4318423 ((_ is Cons!48352) mapDefault!21135)) b!4318546))

(declare-fun b!4318554 () Bool)

(declare-fun tp!1326607 () Bool)

(declare-fun e!2686652 () Bool)

(assert (=> b!4318554 (= e!2686652 (and tp_is_empty!24061 tp_is_empty!24063 tp!1326607))))

(declare-fun b!4318553 () Bool)

(declare-fun tp!1326608 () Bool)

(declare-fun e!2686651 () Bool)

(assert (=> b!4318553 (= e!2686651 (and tp_is_empty!24061 tp_is_empty!24063 tp!1326608))))

(declare-fun condMapEmpty!21138 () Bool)

(declare-fun mapDefault!21138 () List!48476)

(assert (=> mapNonEmpty!21135 (= condMapEmpty!21138 (= mapRest!21135 ((as const (Array (_ BitVec 32) List!48476)) mapDefault!21138)))))

(declare-fun mapRes!21138 () Bool)

(assert (=> mapNonEmpty!21135 (= tp!1326589 (and e!2686652 mapRes!21138))))

(declare-fun mapIsEmpty!21138 () Bool)

(assert (=> mapIsEmpty!21138 mapRes!21138))

(declare-fun mapNonEmpty!21138 () Bool)

(declare-fun tp!1326609 () Bool)

(assert (=> mapNonEmpty!21138 (= mapRes!21138 (and tp!1326609 e!2686651))))

(declare-fun mapKey!21138 () (_ BitVec 32))

(declare-fun mapRest!21138 () (Array (_ BitVec 32) List!48476))

(declare-fun mapValue!21138 () List!48476)

(assert (=> mapNonEmpty!21138 (= mapRest!21135 (store mapRest!21138 mapKey!21138 mapValue!21138))))

(assert (= (and mapNonEmpty!21135 condMapEmpty!21138) mapIsEmpty!21138))

(assert (= (and mapNonEmpty!21135 (not condMapEmpty!21138)) mapNonEmpty!21138))

(assert (= (and mapNonEmpty!21138 ((_ is Cons!48352) mapValue!21138)) b!4318553))

(assert (= (and mapNonEmpty!21135 ((_ is Cons!48352) mapDefault!21138)) b!4318554))

(declare-fun m!4912157 () Bool)

(assert (=> mapNonEmpty!21138 m!4912157))

(declare-fun e!2686653 () Bool)

(declare-fun b!4318555 () Bool)

(declare-fun tp!1326610 () Bool)

(assert (=> b!4318555 (= e!2686653 (and tp_is_empty!24061 tp_is_empty!24063 tp!1326610))))

(assert (=> mapNonEmpty!21135 (= tp!1326593 e!2686653)))

(assert (= (and mapNonEmpty!21135 ((_ is Cons!48352) mapValue!21135)) b!4318555))

(declare-fun b_lambda!127015 () Bool)

(assert (= b_lambda!127013 (or (and b!4318425 b_free!128923) b_lambda!127015)))

(declare-fun b_lambda!127017 () Bool)

(assert (= b_lambda!127011 (or b!4318435 b_lambda!127017)))

(declare-fun bs!606049 () Bool)

(declare-fun d!1269713 () Bool)

(assert (= bs!606049 (and d!1269713 b!4318435)))

(assert (=> bs!606049 (= (dynLambda!20496 lambda!133615 (h!53809 (toList!2534 lt!1537172))) (noDuplicateKeys!258 (_2!26838 (h!53809 (toList!2534 lt!1537172)))))))

(declare-fun m!4912159 () Bool)

(assert (=> bs!606049 m!4912159))

(assert (=> b!4318442 d!1269713))

(check-sat (not bm!298986) (not b!4318489) (not b!4318531) (not b!4318499) tp_is_empty!24063 (not d!1269683) (not d!1269689) (not bm!299000) (not bm!299004) (not b!4318544) (not b!4318487) tp_is_empty!24061 (not b!4318553) (not d!1269705) (not d!1269703) (not tb!257351) (not d!1269691) (not b!4318467) (not b!4318554) (not d!1269697) (not d!1269699) (not b!4318466) (not bm!299005) (not b!4318490) (not d!1269687) (not b!4318539) (not b!4318494) (not d!1269685) (not b!4318546) (not b_next!129629) (not b!4318538) (not b!4318545) (not b!4318458) (not d!1269701) (not b!4318529) (not b_lambda!127015) (not b!4318527) (not d!1269707) (not bm!298987) (not b!4318532) (not bm!299001) (not mapNonEmpty!21138) (not bm!299002) (not b!4318555) (not b_lambda!127017) b_and!340435 (not b!4318443) (not d!1269709) (not b!4318493) b_and!340437 (not bs!606049) (not b_next!129627) (not d!1269693) (not bm!299003) (not b!4318525) (not d!1269695))
(check-sat b_and!340437 b_and!340435 (not b_next!129629) (not b_next!129627))
(get-model)

(declare-fun b!4318559 () Bool)

(declare-fun e!2686655 () List!48476)

(assert (=> b!4318559 (= e!2686655 Nil!48352)))

(declare-fun b!4318557 () Bool)

(declare-fun e!2686654 () List!48476)

(assert (=> b!4318557 (= e!2686654 e!2686655)))

(declare-fun c!734270 () Bool)

(assert (=> b!4318557 (= c!734270 ((_ is Cons!48352) (t!355341 lt!1537170)))))

(declare-fun b!4318556 () Bool)

(assert (=> b!4318556 (= e!2686654 (t!355341 (t!355341 lt!1537170)))))

(declare-fun b!4318558 () Bool)

(assert (=> b!4318558 (= e!2686655 (Cons!48352 (h!53808 (t!355341 lt!1537170)) (removePairForKey!257 (t!355341 (t!355341 lt!1537170)) key!2048)))))

(declare-fun d!1269715 () Bool)

(declare-fun lt!1537264 () List!48476)

(assert (=> d!1269715 (not (containsKey!390 lt!1537264 key!2048))))

(assert (=> d!1269715 (= lt!1537264 e!2686654)))

(declare-fun c!734269 () Bool)

(assert (=> d!1269715 (= c!734269 (and ((_ is Cons!48352) (t!355341 lt!1537170)) (= (_1!26836 (h!53808 (t!355341 lt!1537170))) key!2048)))))

(assert (=> d!1269715 (noDuplicateKeys!258 (t!355341 lt!1537170))))

(assert (=> d!1269715 (= (removePairForKey!257 (t!355341 lt!1537170) key!2048) lt!1537264)))

(assert (= (and d!1269715 c!734269) b!4318556))

(assert (= (and d!1269715 (not c!734269)) b!4318557))

(assert (= (and b!4318557 c!734270) b!4318558))

(assert (= (and b!4318557 (not c!734270)) b!4318559))

(declare-fun m!4912161 () Bool)

(assert (=> b!4318558 m!4912161))

(declare-fun m!4912163 () Bool)

(assert (=> d!1269715 m!4912163))

(declare-fun m!4912165 () Bool)

(assert (=> d!1269715 m!4912165))

(assert (=> b!4318458 d!1269715))

(declare-fun d!1269717 () Bool)

(declare-fun res!1769877 () Bool)

(declare-fun e!2686656 () Bool)

(assert (=> d!1269717 (=> res!1769877 e!2686656)))

(assert (=> d!1269717 (= res!1769877 (not ((_ is Cons!48352) (t!355341 lt!1537171))))))

(assert (=> d!1269717 (= (noDuplicateKeys!258 (t!355341 lt!1537171)) e!2686656)))

(declare-fun b!4318560 () Bool)

(declare-fun e!2686657 () Bool)

(assert (=> b!4318560 (= e!2686656 e!2686657)))

(declare-fun res!1769878 () Bool)

(assert (=> b!4318560 (=> (not res!1769878) (not e!2686657))))

(assert (=> b!4318560 (= res!1769878 (not (containsKey!390 (t!355341 (t!355341 lt!1537171)) (_1!26836 (h!53808 (t!355341 lt!1537171))))))))

(declare-fun b!4318561 () Bool)

(assert (=> b!4318561 (= e!2686657 (noDuplicateKeys!258 (t!355341 (t!355341 lt!1537171))))))

(assert (= (and d!1269717 (not res!1769877)) b!4318560))

(assert (= (and b!4318560 res!1769878) b!4318561))

(declare-fun m!4912167 () Bool)

(assert (=> b!4318560 m!4912167))

(declare-fun m!4912169 () Bool)

(assert (=> b!4318561 m!4912169))

(assert (=> b!4318539 d!1269717))

(declare-fun b!4318580 () Bool)

(declare-datatypes ((List!48478 0))(
  ( (Nil!48354) (Cons!48354 (h!53811 K!9599) (t!355347 List!48478)) )
))
(declare-fun e!2686674 () List!48478)

(declare-fun keys!16159 (ListMap!1813) List!48478)

(assert (=> b!4318580 (= e!2686674 (keys!16159 (extractMap!364 (toList!2534 lt!1537253))))))

(declare-fun b!4318581 () Bool)

(declare-fun e!2686673 () Bool)

(declare-fun contains!10391 (List!48478 K!9599) Bool)

(assert (=> b!4318581 (= e!2686673 (contains!10391 (keys!16159 (extractMap!364 (toList!2534 lt!1537253))) key!2048))))

(declare-fun b!4318582 () Bool)

(declare-fun e!2686672 () Unit!67626)

(declare-fun Unit!67634 () Unit!67626)

(assert (=> b!4318582 (= e!2686672 Unit!67634)))

(declare-fun b!4318583 () Bool)

(assert (=> b!4318583 false))

(declare-fun lt!1537287 () Unit!67626)

(declare-fun lt!1537284 () Unit!67626)

(assert (=> b!4318583 (= lt!1537287 lt!1537284)))

(declare-fun containsKey!392 (List!48476 K!9599) Bool)

(assert (=> b!4318583 (containsKey!392 (toList!2535 (extractMap!364 (toList!2534 lt!1537253))) key!2048)))

(declare-fun lemmaInGetKeysListThenContainsKey!51 (List!48476 K!9599) Unit!67626)

(assert (=> b!4318583 (= lt!1537284 (lemmaInGetKeysListThenContainsKey!51 (toList!2535 (extractMap!364 (toList!2534 lt!1537253))) key!2048))))

(declare-fun Unit!67635 () Unit!67626)

(assert (=> b!4318583 (= e!2686672 Unit!67635)))

(declare-fun b!4318584 () Bool)

(declare-fun e!2686670 () Bool)

(assert (=> b!4318584 (= e!2686670 e!2686673)))

(declare-fun res!1769887 () Bool)

(assert (=> b!4318584 (=> (not res!1769887) (not e!2686673))))

(declare-datatypes ((Option!10292 0))(
  ( (None!10291) (Some!10291 (v!42699 V!9801)) )
))
(declare-fun isDefined!7593 (Option!10292) Bool)

(declare-fun getValueByKey!292 (List!48476 K!9599) Option!10292)

(assert (=> b!4318584 (= res!1769887 (isDefined!7593 (getValueByKey!292 (toList!2535 (extractMap!364 (toList!2534 lt!1537253))) key!2048)))))

(declare-fun b!4318585 () Bool)

(declare-fun e!2686675 () Unit!67626)

(declare-fun lt!1537283 () Unit!67626)

(assert (=> b!4318585 (= e!2686675 lt!1537283)))

(declare-fun lt!1537286 () Unit!67626)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!211 (List!48476 K!9599) Unit!67626)

(assert (=> b!4318585 (= lt!1537286 (lemmaContainsKeyImpliesGetValueByKeyDefined!211 (toList!2535 (extractMap!364 (toList!2534 lt!1537253))) key!2048))))

(assert (=> b!4318585 (isDefined!7593 (getValueByKey!292 (toList!2535 (extractMap!364 (toList!2534 lt!1537253))) key!2048))))

(declare-fun lt!1537288 () Unit!67626)

(assert (=> b!4318585 (= lt!1537288 lt!1537286)))

(declare-fun lemmaInListThenGetKeysListContains!51 (List!48476 K!9599) Unit!67626)

(assert (=> b!4318585 (= lt!1537283 (lemmaInListThenGetKeysListContains!51 (toList!2535 (extractMap!364 (toList!2534 lt!1537253))) key!2048))))

(declare-fun call!299013 () Bool)

(assert (=> b!4318585 call!299013))

(declare-fun bm!299008 () Bool)

(assert (=> bm!299008 (= call!299013 (contains!10391 e!2686674 key!2048))))

(declare-fun c!734278 () Bool)

(declare-fun c!734279 () Bool)

(assert (=> bm!299008 (= c!734278 c!734279)))

(declare-fun d!1269719 () Bool)

(assert (=> d!1269719 e!2686670))

(declare-fun res!1769886 () Bool)

(assert (=> d!1269719 (=> res!1769886 e!2686670)))

(declare-fun e!2686671 () Bool)

(assert (=> d!1269719 (= res!1769886 e!2686671)))

(declare-fun res!1769885 () Bool)

(assert (=> d!1269719 (=> (not res!1769885) (not e!2686671))))

(declare-fun lt!1537281 () Bool)

(assert (=> d!1269719 (= res!1769885 (not lt!1537281))))

(declare-fun lt!1537285 () Bool)

(assert (=> d!1269719 (= lt!1537281 lt!1537285)))

(declare-fun lt!1537282 () Unit!67626)

(assert (=> d!1269719 (= lt!1537282 e!2686675)))

(assert (=> d!1269719 (= c!734279 lt!1537285)))

(assert (=> d!1269719 (= lt!1537285 (containsKey!392 (toList!2535 (extractMap!364 (toList!2534 lt!1537253))) key!2048))))

(assert (=> d!1269719 (= (contains!10389 (extractMap!364 (toList!2534 lt!1537253)) key!2048) lt!1537281)))

(declare-fun b!4318586 () Bool)

(assert (=> b!4318586 (= e!2686671 (not (contains!10391 (keys!16159 (extractMap!364 (toList!2534 lt!1537253))) key!2048)))))

(declare-fun b!4318587 () Bool)

(declare-fun getKeysList!54 (List!48476) List!48478)

(assert (=> b!4318587 (= e!2686674 (getKeysList!54 (toList!2535 (extractMap!364 (toList!2534 lt!1537253)))))))

(declare-fun b!4318588 () Bool)

(assert (=> b!4318588 (= e!2686675 e!2686672)))

(declare-fun c!734277 () Bool)

(assert (=> b!4318588 (= c!734277 call!299013)))

(assert (= (and d!1269719 c!734279) b!4318585))

(assert (= (and d!1269719 (not c!734279)) b!4318588))

(assert (= (and b!4318588 c!734277) b!4318583))

(assert (= (and b!4318588 (not c!734277)) b!4318582))

(assert (= (or b!4318585 b!4318588) bm!299008))

(assert (= (and bm!299008 c!734278) b!4318587))

(assert (= (and bm!299008 (not c!734278)) b!4318580))

(assert (= (and d!1269719 res!1769885) b!4318586))

(assert (= (and d!1269719 (not res!1769886)) b!4318584))

(assert (= (and b!4318584 res!1769887) b!4318581))

(declare-fun m!4912171 () Bool)

(assert (=> b!4318585 m!4912171))

(declare-fun m!4912173 () Bool)

(assert (=> b!4318585 m!4912173))

(assert (=> b!4318585 m!4912173))

(declare-fun m!4912175 () Bool)

(assert (=> b!4318585 m!4912175))

(declare-fun m!4912177 () Bool)

(assert (=> b!4318585 m!4912177))

(declare-fun m!4912179 () Bool)

(assert (=> bm!299008 m!4912179))

(assert (=> b!4318581 m!4912133))

(declare-fun m!4912181 () Bool)

(assert (=> b!4318581 m!4912181))

(assert (=> b!4318581 m!4912181))

(declare-fun m!4912183 () Bool)

(assert (=> b!4318581 m!4912183))

(declare-fun m!4912185 () Bool)

(assert (=> b!4318583 m!4912185))

(declare-fun m!4912187 () Bool)

(assert (=> b!4318583 m!4912187))

(assert (=> d!1269719 m!4912185))

(declare-fun m!4912189 () Bool)

(assert (=> b!4318587 m!4912189))

(assert (=> b!4318580 m!4912133))

(assert (=> b!4318580 m!4912181))

(assert (=> b!4318586 m!4912133))

(assert (=> b!4318586 m!4912181))

(assert (=> b!4318586 m!4912181))

(assert (=> b!4318586 m!4912183))

(assert (=> b!4318584 m!4912173))

(assert (=> b!4318584 m!4912173))

(assert (=> b!4318584 m!4912175))

(assert (=> b!4318525 d!1269719))

(declare-fun bs!606050 () Bool)

(declare-fun d!1269721 () Bool)

(assert (= bs!606050 (and d!1269721 b!4318466)))

(declare-fun lambda!133634 () Int)

(assert (=> bs!606050 (= lambda!133634 lambda!133625)))

(declare-fun bs!606051 () Bool)

(assert (= bs!606051 (and d!1269721 d!1269689)))

(assert (=> bs!606051 (not (= lambda!133634 lambda!133622))))

(declare-fun bs!606052 () Bool)

(assert (= bs!606052 (and d!1269721 b!4318435)))

(assert (=> bs!606052 (= lambda!133634 lambda!133615)))

(declare-fun bs!606053 () Bool)

(assert (= bs!606053 (and d!1269721 b!4318527)))

(assert (=> bs!606053 (= lambda!133634 lambda!133631)))

(declare-fun bs!606054 () Bool)

(assert (= bs!606054 (and d!1269721 d!1269703)))

(assert (=> bs!606054 (not (= lambda!133634 lambda!133628))))

(declare-fun lt!1537291 () ListMap!1813)

(assert (=> d!1269721 (invariantList!597 (toList!2535 lt!1537291))))

(declare-fun e!2686678 () ListMap!1813)

(assert (=> d!1269721 (= lt!1537291 e!2686678)))

(declare-fun c!734282 () Bool)

(assert (=> d!1269721 (= c!734282 ((_ is Cons!48353) (toList!2534 lt!1537253)))))

(assert (=> d!1269721 (forall!8797 (toList!2534 lt!1537253) lambda!133634)))

(assert (=> d!1269721 (= (extractMap!364 (toList!2534 lt!1537253)) lt!1537291)))

(declare-fun b!4318593 () Bool)

(declare-fun addToMapMapFromBucket!49 (List!48476 ListMap!1813) ListMap!1813)

(assert (=> b!4318593 (= e!2686678 (addToMapMapFromBucket!49 (_2!26838 (h!53809 (toList!2534 lt!1537253))) (extractMap!364 (t!355342 (toList!2534 lt!1537253)))))))

(declare-fun b!4318594 () Bool)

(assert (=> b!4318594 (= e!2686678 (ListMap!1814 Nil!48352))))

(assert (= (and d!1269721 c!734282) b!4318593))

(assert (= (and d!1269721 (not c!734282)) b!4318594))

(declare-fun m!4912191 () Bool)

(assert (=> d!1269721 m!4912191))

(declare-fun m!4912193 () Bool)

(assert (=> d!1269721 m!4912193))

(declare-fun m!4912195 () Bool)

(assert (=> b!4318593 m!4912195))

(assert (=> b!4318593 m!4912195))

(declare-fun m!4912197 () Bool)

(assert (=> b!4318593 m!4912197))

(assert (=> b!4318525 d!1269721))

(declare-fun bs!606055 () Bool)

(declare-fun d!1269723 () Bool)

(assert (= bs!606055 (and d!1269723 b!4318466)))

(declare-fun lambda!133637 () Int)

(assert (=> bs!606055 (= lambda!133637 lambda!133625)))

(declare-fun bs!606056 () Bool)

(assert (= bs!606056 (and d!1269723 d!1269689)))

(assert (=> bs!606056 (not (= lambda!133637 lambda!133622))))

(declare-fun bs!606057 () Bool)

(assert (= bs!606057 (and d!1269723 b!4318435)))

(assert (=> bs!606057 (= lambda!133637 lambda!133615)))

(declare-fun bs!606058 () Bool)

(assert (= bs!606058 (and d!1269723 b!4318527)))

(assert (=> bs!606058 (= lambda!133637 lambda!133631)))

(declare-fun bs!606059 () Bool)

(assert (= bs!606059 (and d!1269723 d!1269721)))

(assert (=> bs!606059 (= lambda!133637 lambda!133634)))

(declare-fun bs!606060 () Bool)

(assert (= bs!606060 (and d!1269723 d!1269703)))

(assert (=> bs!606060 (not (= lambda!133637 lambda!133628))))

(assert (=> d!1269723 (contains!10389 (extractMap!364 (toList!2534 lt!1537253)) key!2048)))

(declare-fun lt!1537294 () Unit!67626)

(declare-fun choose!26358 (ListLongMap!1149 K!9599 Hashable!4657) Unit!67626)

(assert (=> d!1269723 (= lt!1537294 (choose!26358 lt!1537253 key!2048 (hashF!6879 thiss!42308)))))

(assert (=> d!1269723 (forall!8797 (toList!2534 lt!1537253) lambda!133637)))

(assert (=> d!1269723 (= (lemmaInLongMapThenInGenericMap!158 lt!1537253 key!2048 (hashF!6879 thiss!42308)) lt!1537294)))

(declare-fun bs!606061 () Bool)

(assert (= bs!606061 d!1269723))

(assert (=> bs!606061 m!4912133))

(assert (=> bs!606061 m!4912133))

(assert (=> bs!606061 m!4912135))

(declare-fun m!4912199 () Bool)

(assert (=> bs!606061 m!4912199))

(declare-fun m!4912201 () Bool)

(assert (=> bs!606061 m!4912201))

(assert (=> b!4318525 d!1269723))

(declare-fun d!1269725 () Bool)

(declare-fun res!1769892 () Bool)

(declare-fun e!2686683 () Bool)

(assert (=> d!1269725 (=> res!1769892 e!2686683)))

(assert (=> d!1269725 (= res!1769892 (and ((_ is Cons!48352) (t!355341 lt!1537171)) (= (_1!26836 (h!53808 (t!355341 lt!1537171))) (_1!26836 (h!53808 lt!1537171)))))))

(assert (=> d!1269725 (= (containsKey!390 (t!355341 lt!1537171) (_1!26836 (h!53808 lt!1537171))) e!2686683)))

(declare-fun b!4318599 () Bool)

(declare-fun e!2686684 () Bool)

(assert (=> b!4318599 (= e!2686683 e!2686684)))

(declare-fun res!1769893 () Bool)

(assert (=> b!4318599 (=> (not res!1769893) (not e!2686684))))

(assert (=> b!4318599 (= res!1769893 ((_ is Cons!48352) (t!355341 lt!1537171)))))

(declare-fun b!4318600 () Bool)

(assert (=> b!4318600 (= e!2686684 (containsKey!390 (t!355341 (t!355341 lt!1537171)) (_1!26836 (h!53808 lt!1537171))))))

(assert (= (and d!1269725 (not res!1769892)) b!4318599))

(assert (= (and b!4318599 res!1769893) b!4318600))

(declare-fun m!4912203 () Bool)

(assert (=> b!4318600 m!4912203))

(assert (=> b!4318538 d!1269725))

(assert (=> d!1269691 d!1269683))

(assert (=> d!1269691 d!1269685))

(declare-fun d!1269727 () Bool)

(assert (=> d!1269727 (allKeysSameHash!234 (removePairForKey!257 lt!1537170 key!2048) lt!1537166 (hashF!6879 thiss!42308))))

(assert (=> d!1269727 true))

(declare-fun _$20!125 () Unit!67626)

(assert (=> d!1269727 (= (choose!26357 lt!1537170 key!2048 lt!1537166 (hashF!6879 thiss!42308)) _$20!125)))

(declare-fun bs!606062 () Bool)

(assert (= bs!606062 d!1269727))

(assert (=> bs!606062 m!4912031))

(assert (=> bs!606062 m!4912031))

(assert (=> bs!606062 m!4912033))

(assert (=> d!1269691 d!1269727))

(declare-fun d!1269729 () Bool)

(declare-fun res!1769894 () Bool)

(declare-fun e!2686685 () Bool)

(assert (=> d!1269729 (=> res!1769894 e!2686685)))

(assert (=> d!1269729 (= res!1769894 (not ((_ is Cons!48352) lt!1537170)))))

(assert (=> d!1269729 (= (noDuplicateKeys!258 lt!1537170) e!2686685)))

(declare-fun b!4318601 () Bool)

(declare-fun e!2686686 () Bool)

(assert (=> b!4318601 (= e!2686685 e!2686686)))

(declare-fun res!1769895 () Bool)

(assert (=> b!4318601 (=> (not res!1769895) (not e!2686686))))

(assert (=> b!4318601 (= res!1769895 (not (containsKey!390 (t!355341 lt!1537170) (_1!26836 (h!53808 lt!1537170)))))))

(declare-fun b!4318602 () Bool)

(assert (=> b!4318602 (= e!2686686 (noDuplicateKeys!258 (t!355341 lt!1537170)))))

(assert (= (and d!1269729 (not res!1769894)) b!4318601))

(assert (= (and b!4318601 res!1769895) b!4318602))

(declare-fun m!4912205 () Bool)

(assert (=> b!4318601 m!4912205))

(assert (=> b!4318602 m!4912165))

(assert (=> d!1269691 d!1269729))

(assert (=> bm!299001 d!1269699))

(declare-fun d!1269731 () Bool)

(declare-fun valid!3751 (LongMapFixedSize!9482) Bool)

(assert (=> d!1269731 (= (valid!3750 (_2!26837 lt!1537193)) (valid!3751 (v!42685 (underlying!9711 (_2!26837 lt!1537193)))))))

(declare-fun bs!606063 () Bool)

(assert (= bs!606063 d!1269731))

(declare-fun m!4912207 () Bool)

(assert (=> bs!606063 m!4912207))

(assert (=> b!4318487 d!1269731))

(assert (=> bm!299000 d!1269707))

(assert (=> d!1269689 d!1269687))

(declare-fun d!1269733 () Bool)

(assert (=> d!1269733 (allKeysSameHash!234 lt!1537170 lt!1537166 (hashF!6879 thiss!42308))))

(assert (=> d!1269733 true))

(declare-fun _$19!980 () Unit!67626)

(assert (=> d!1269733 (= (choose!26356 (toList!2534 lt!1537172) lt!1537166 lt!1537170 (hashF!6879 thiss!42308)) _$19!980)))

(declare-fun bs!606064 () Bool)

(assert (= bs!606064 d!1269733))

(assert (=> bs!606064 m!4912035))

(assert (=> d!1269689 d!1269733))

(declare-fun d!1269735 () Bool)

(declare-fun res!1769896 () Bool)

(declare-fun e!2686687 () Bool)

(assert (=> d!1269735 (=> res!1769896 e!2686687)))

(assert (=> d!1269735 (= res!1769896 ((_ is Nil!48353) (toList!2534 lt!1537172)))))

(assert (=> d!1269735 (= (forall!8797 (toList!2534 lt!1537172) lambda!133622) e!2686687)))

(declare-fun b!4318603 () Bool)

(declare-fun e!2686688 () Bool)

(assert (=> b!4318603 (= e!2686687 e!2686688)))

(declare-fun res!1769897 () Bool)

(assert (=> b!4318603 (=> (not res!1769897) (not e!2686688))))

(assert (=> b!4318603 (= res!1769897 (dynLambda!20496 lambda!133622 (h!53809 (toList!2534 lt!1537172))))))

(declare-fun b!4318604 () Bool)

(assert (=> b!4318604 (= e!2686688 (forall!8797 (t!355342 (toList!2534 lt!1537172)) lambda!133622))))

(assert (= (and d!1269735 (not res!1769896)) b!4318603))

(assert (= (and b!4318603 res!1769897) b!4318604))

(declare-fun b_lambda!127019 () Bool)

(assert (=> (not b_lambda!127019) (not b!4318603)))

(declare-fun m!4912209 () Bool)

(assert (=> b!4318603 m!4912209))

(declare-fun m!4912211 () Bool)

(assert (=> b!4318604 m!4912211))

(assert (=> d!1269689 d!1269735))

(declare-fun d!1269737 () Bool)

(declare-fun res!1769898 () Bool)

(declare-fun e!2686689 () Bool)

(assert (=> d!1269737 (=> res!1769898 e!2686689)))

(assert (=> d!1269737 (= res!1769898 ((_ is Nil!48353) (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308))))))))

(assert (=> d!1269737 (= (forall!8797 (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308)))) lambda!133625) e!2686689)))

(declare-fun b!4318605 () Bool)

(declare-fun e!2686690 () Bool)

(assert (=> b!4318605 (= e!2686689 e!2686690)))

(declare-fun res!1769899 () Bool)

(assert (=> b!4318605 (=> (not res!1769899) (not e!2686690))))

(assert (=> b!4318605 (= res!1769899 (dynLambda!20496 lambda!133625 (h!53809 (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308)))))))))

(declare-fun b!4318606 () Bool)

(assert (=> b!4318606 (= e!2686690 (forall!8797 (t!355342 (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308))))) lambda!133625))))

(assert (= (and d!1269737 (not res!1769898)) b!4318605))

(assert (= (and b!4318605 res!1769899) b!4318606))

(declare-fun b_lambda!127021 () Bool)

(assert (=> (not b_lambda!127021) (not b!4318605)))

(declare-fun m!4912213 () Bool)

(assert (=> b!4318605 m!4912213))

(declare-fun m!4912215 () Bool)

(assert (=> b!4318606 m!4912215))

(assert (=> b!4318466 d!1269737))

(assert (=> b!4318466 d!1269707))

(declare-fun b!4318623 () Bool)

(declare-fun e!2686702 () Option!10291)

(assert (=> b!4318623 (= e!2686702 None!10290)))

(declare-fun b!4318625 () Bool)

(declare-fun e!2686705 () Bool)

(assert (=> b!4318625 (= e!2686705 (not (containsKey!390 call!299006 key!2048)))))

(declare-fun b!4318626 () Bool)

(declare-fun e!2686703 () Option!10291)

(assert (=> b!4318626 (= e!2686703 (Some!10290 (h!53808 call!299006)))))

(declare-fun b!4318627 () Bool)

(declare-fun res!1769909 () Bool)

(declare-fun e!2686701 () Bool)

(assert (=> b!4318627 (=> (not res!1769909) (not e!2686701))))

(declare-fun lt!1537297 () Option!10291)

(declare-fun get!15664 (Option!10291) tuple2!47104)

(assert (=> b!4318627 (= res!1769909 (= (_1!26836 (get!15664 lt!1537297)) key!2048))))

(declare-fun b!4318628 () Bool)

(assert (=> b!4318628 (= e!2686702 (getPair!158 (t!355341 call!299006) key!2048))))

(declare-fun b!4318624 () Bool)

(declare-fun contains!10392 (List!48476 tuple2!47104) Bool)

(assert (=> b!4318624 (= e!2686701 (contains!10392 call!299006 (get!15664 lt!1537297)))))

(declare-fun d!1269739 () Bool)

(declare-fun e!2686704 () Bool)

(assert (=> d!1269739 e!2686704))

(declare-fun res!1769908 () Bool)

(assert (=> d!1269739 (=> res!1769908 e!2686704)))

(assert (=> d!1269739 (= res!1769908 e!2686705)))

(declare-fun res!1769910 () Bool)

(assert (=> d!1269739 (=> (not res!1769910) (not e!2686705))))

(declare-fun isEmpty!28105 (Option!10291) Bool)

(assert (=> d!1269739 (= res!1769910 (isEmpty!28105 lt!1537297))))

(assert (=> d!1269739 (= lt!1537297 e!2686703)))

(declare-fun c!734288 () Bool)

(assert (=> d!1269739 (= c!734288 (and ((_ is Cons!48352) call!299006) (= (_1!26836 (h!53808 call!299006)) key!2048)))))

(assert (=> d!1269739 (noDuplicateKeys!258 call!299006)))

(assert (=> d!1269739 (= (getPair!158 call!299006 key!2048) lt!1537297)))

(declare-fun b!4318629 () Bool)

(assert (=> b!4318629 (= e!2686704 e!2686701)))

(declare-fun res!1769911 () Bool)

(assert (=> b!4318629 (=> (not res!1769911) (not e!2686701))))

(assert (=> b!4318629 (= res!1769911 (isDefined!7591 lt!1537297))))

(declare-fun b!4318630 () Bool)

(assert (=> b!4318630 (= e!2686703 e!2686702)))

(declare-fun c!734287 () Bool)

(assert (=> b!4318630 (= c!734287 ((_ is Cons!48352) call!299006))))

(assert (= (and d!1269739 c!734288) b!4318626))

(assert (= (and d!1269739 (not c!734288)) b!4318630))

(assert (= (and b!4318630 c!734287) b!4318628))

(assert (= (and b!4318630 (not c!734287)) b!4318623))

(assert (= (and d!1269739 res!1769910) b!4318625))

(assert (= (and d!1269739 (not res!1769908)) b!4318629))

(assert (= (and b!4318629 res!1769911) b!4318627))

(assert (= (and b!4318627 res!1769909) b!4318624))

(declare-fun m!4912217 () Bool)

(assert (=> d!1269739 m!4912217))

(declare-fun m!4912219 () Bool)

(assert (=> d!1269739 m!4912219))

(declare-fun m!4912221 () Bool)

(assert (=> b!4318627 m!4912221))

(declare-fun m!4912223 () Bool)

(assert (=> b!4318628 m!4912223))

(assert (=> b!4318624 m!4912221))

(assert (=> b!4318624 m!4912221))

(declare-fun m!4912225 () Bool)

(assert (=> b!4318624 m!4912225))

(declare-fun m!4912227 () Bool)

(assert (=> b!4318629 m!4912227))

(declare-fun m!4912229 () Bool)

(assert (=> b!4318625 m!4912229))

(assert (=> bm!299003 d!1269739))

(declare-fun d!1269741 () Bool)

(assert (=> d!1269741 (= (valid!3750 (v!42686 (underlying!9712 thiss!42308))) (valid!3751 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))))))

(declare-fun bs!606065 () Bool)

(assert (= bs!606065 d!1269741))

(declare-fun m!4912231 () Bool)

(assert (=> bs!606065 m!4912231))

(assert (=> d!1269693 d!1269741))

(declare-fun bs!606066 () Bool)

(declare-fun d!1269743 () Bool)

(assert (= bs!606066 (and d!1269743 b!4318466)))

(declare-fun lambda!133638 () Int)

(assert (=> bs!606066 (not (= lambda!133638 lambda!133625))))

(declare-fun bs!606067 () Bool)

(assert (= bs!606067 (and d!1269743 d!1269689)))

(assert (=> bs!606067 (= lambda!133638 lambda!133622)))

(declare-fun bs!606068 () Bool)

(assert (= bs!606068 (and d!1269743 d!1269723)))

(assert (=> bs!606068 (not (= lambda!133638 lambda!133637))))

(declare-fun bs!606069 () Bool)

(assert (= bs!606069 (and d!1269743 b!4318435)))

(assert (=> bs!606069 (not (= lambda!133638 lambda!133615))))

(declare-fun bs!606070 () Bool)

(assert (= bs!606070 (and d!1269743 b!4318527)))

(assert (=> bs!606070 (not (= lambda!133638 lambda!133631))))

(declare-fun bs!606071 () Bool)

(assert (= bs!606071 (and d!1269743 d!1269721)))

(assert (=> bs!606071 (not (= lambda!133638 lambda!133634))))

(declare-fun bs!606072 () Bool)

(assert (= bs!606072 (and d!1269743 d!1269703)))

(assert (=> bs!606072 (= lambda!133638 lambda!133628)))

(assert (=> d!1269743 true))

(assert (=> d!1269743 (= (allKeysSameHashInMap!380 (map!10376 (v!42686 (underlying!9712 thiss!42308))) (hashF!6879 thiss!42308)) (forall!8797 (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308)))) lambda!133638))))

(declare-fun bs!606073 () Bool)

(assert (= bs!606073 d!1269743))

(declare-fun m!4912233 () Bool)

(assert (=> bs!606073 m!4912233))

(assert (=> b!4318467 d!1269743))

(assert (=> b!4318467 d!1269707))

(declare-fun d!1269745 () Bool)

(assert (=> d!1269745 (= (isDefined!7591 (getPair!158 (apply!11122 (v!42686 (underlying!9712 thiss!42308)) lt!1537248) key!2048)) (not (isEmpty!28105 (getPair!158 (apply!11122 (v!42686 (underlying!9712 thiss!42308)) lt!1537248) key!2048))))))

(declare-fun bs!606074 () Bool)

(assert (= bs!606074 d!1269745))

(assert (=> bs!606074 m!4912103))

(declare-fun m!4912235 () Bool)

(assert (=> bs!606074 m!4912235))

(assert (=> b!4318529 d!1269745))

(declare-fun b!4318631 () Bool)

(declare-fun e!2686707 () Option!10291)

(assert (=> b!4318631 (= e!2686707 None!10290)))

(declare-fun b!4318633 () Bool)

(declare-fun e!2686710 () Bool)

(assert (=> b!4318633 (= e!2686710 (not (containsKey!390 (apply!11122 (v!42686 (underlying!9712 thiss!42308)) lt!1537248) key!2048)))))

(declare-fun b!4318634 () Bool)

(declare-fun e!2686708 () Option!10291)

(assert (=> b!4318634 (= e!2686708 (Some!10290 (h!53808 (apply!11122 (v!42686 (underlying!9712 thiss!42308)) lt!1537248))))))

(declare-fun b!4318635 () Bool)

(declare-fun res!1769913 () Bool)

(declare-fun e!2686706 () Bool)

(assert (=> b!4318635 (=> (not res!1769913) (not e!2686706))))

(declare-fun lt!1537298 () Option!10291)

(assert (=> b!4318635 (= res!1769913 (= (_1!26836 (get!15664 lt!1537298)) key!2048))))

(declare-fun b!4318636 () Bool)

(assert (=> b!4318636 (= e!2686707 (getPair!158 (t!355341 (apply!11122 (v!42686 (underlying!9712 thiss!42308)) lt!1537248)) key!2048))))

(declare-fun b!4318632 () Bool)

(assert (=> b!4318632 (= e!2686706 (contains!10392 (apply!11122 (v!42686 (underlying!9712 thiss!42308)) lt!1537248) (get!15664 lt!1537298)))))

(declare-fun d!1269747 () Bool)

(declare-fun e!2686709 () Bool)

(assert (=> d!1269747 e!2686709))

(declare-fun res!1769912 () Bool)

(assert (=> d!1269747 (=> res!1769912 e!2686709)))

(assert (=> d!1269747 (= res!1769912 e!2686710)))

(declare-fun res!1769914 () Bool)

(assert (=> d!1269747 (=> (not res!1769914) (not e!2686710))))

(assert (=> d!1269747 (= res!1769914 (isEmpty!28105 lt!1537298))))

(assert (=> d!1269747 (= lt!1537298 e!2686708)))

(declare-fun c!734290 () Bool)

(assert (=> d!1269747 (= c!734290 (and ((_ is Cons!48352) (apply!11122 (v!42686 (underlying!9712 thiss!42308)) lt!1537248)) (= (_1!26836 (h!53808 (apply!11122 (v!42686 (underlying!9712 thiss!42308)) lt!1537248))) key!2048)))))

(assert (=> d!1269747 (noDuplicateKeys!258 (apply!11122 (v!42686 (underlying!9712 thiss!42308)) lt!1537248))))

(assert (=> d!1269747 (= (getPair!158 (apply!11122 (v!42686 (underlying!9712 thiss!42308)) lt!1537248) key!2048) lt!1537298)))

(declare-fun b!4318637 () Bool)

(assert (=> b!4318637 (= e!2686709 e!2686706)))

(declare-fun res!1769915 () Bool)

(assert (=> b!4318637 (=> (not res!1769915) (not e!2686706))))

(assert (=> b!4318637 (= res!1769915 (isDefined!7591 lt!1537298))))

(declare-fun b!4318638 () Bool)

(assert (=> b!4318638 (= e!2686708 e!2686707)))

(declare-fun c!734289 () Bool)

(assert (=> b!4318638 (= c!734289 ((_ is Cons!48352) (apply!11122 (v!42686 (underlying!9712 thiss!42308)) lt!1537248)))))

(assert (= (and d!1269747 c!734290) b!4318634))

(assert (= (and d!1269747 (not c!734290)) b!4318638))

(assert (= (and b!4318638 c!734289) b!4318636))

(assert (= (and b!4318638 (not c!734289)) b!4318631))

(assert (= (and d!1269747 res!1769914) b!4318633))

(assert (= (and d!1269747 (not res!1769912)) b!4318637))

(assert (= (and b!4318637 res!1769915) b!4318635))

(assert (= (and b!4318635 res!1769913) b!4318632))

(declare-fun m!4912237 () Bool)

(assert (=> d!1269747 m!4912237))

(assert (=> d!1269747 m!4912101))

(declare-fun m!4912239 () Bool)

(assert (=> d!1269747 m!4912239))

(declare-fun m!4912241 () Bool)

(assert (=> b!4318635 m!4912241))

(declare-fun m!4912243 () Bool)

(assert (=> b!4318636 m!4912243))

(assert (=> b!4318632 m!4912241))

(assert (=> b!4318632 m!4912101))

(assert (=> b!4318632 m!4912241))

(declare-fun m!4912245 () Bool)

(assert (=> b!4318632 m!4912245))

(declare-fun m!4912247 () Bool)

(assert (=> b!4318637 m!4912247))

(assert (=> b!4318633 m!4912101))

(declare-fun m!4912249 () Bool)

(assert (=> b!4318633 m!4912249))

(assert (=> b!4318529 d!1269747))

(declare-fun d!1269749 () Bool)

(declare-fun e!2686711 () Bool)

(assert (=> d!1269749 e!2686711))

(declare-fun c!734291 () Bool)

(assert (=> d!1269749 (= c!734291 (contains!10385 (v!42686 (underlying!9712 thiss!42308)) lt!1537248))))

(declare-fun lt!1537299 () List!48476)

(assert (=> d!1269749 (= lt!1537299 (apply!11123 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308)))) lt!1537248))))

(assert (=> d!1269749 (valid!3750 (v!42686 (underlying!9712 thiss!42308)))))

(assert (=> d!1269749 (= (apply!11122 (v!42686 (underlying!9712 thiss!42308)) lt!1537248) lt!1537299)))

(declare-fun b!4318639 () Bool)

(assert (=> b!4318639 (= e!2686711 (= lt!1537299 (get!15663 (getValueByKey!291 (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308)))) lt!1537248))))))

(declare-fun b!4318640 () Bool)

(assert (=> b!4318640 (= e!2686711 (= lt!1537299 (dynLambda!20497 (defaultEntry!5126 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) lt!1537248)))))

(assert (=> b!4318640 ((_ is LongMap!4741) (v!42686 (underlying!9712 thiss!42308)))))

(assert (= (and d!1269749 c!734291) b!4318639))

(assert (= (and d!1269749 (not c!734291)) b!4318640))

(declare-fun b_lambda!127023 () Bool)

(assert (=> (not b_lambda!127023) (not b!4318640)))

(declare-fun t!355346 () Bool)

(declare-fun tb!257353 () Bool)

(assert (=> (and b!4318425 (= (defaultEntry!5126 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (defaultEntry!5126 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308)))))) t!355346) tb!257353))

(assert (=> b!4318640 t!355346))

(declare-fun result!314854 () Bool)

(declare-fun b_and!340439 () Bool)

(assert (= b_and!340437 (and (=> t!355346 result!314854) b_and!340439)))

(assert (=> d!1269749 m!4912127))

(declare-fun m!4912251 () Bool)

(assert (=> d!1269749 m!4912251))

(assert (=> d!1269749 m!4912065))

(assert (=> b!4318639 m!4912023))

(declare-fun m!4912253 () Bool)

(assert (=> b!4318639 m!4912253))

(assert (=> b!4318639 m!4912253))

(declare-fun m!4912255 () Bool)

(assert (=> b!4318639 m!4912255))

(declare-fun m!4912257 () Bool)

(assert (=> b!4318640 m!4912257))

(assert (=> b!4318529 d!1269749))

(declare-fun d!1269751 () Bool)

(assert (=> d!1269751 (= (apply!11124 (ite c!734268 lt!1537260 call!299007) call!299009) (get!15663 (getValueByKey!291 (toList!2534 (ite c!734268 lt!1537260 call!299007)) call!299009)))))

(declare-fun bs!606075 () Bool)

(assert (= bs!606075 d!1269751))

(declare-fun m!4912259 () Bool)

(assert (=> bs!606075 m!4912259))

(assert (=> bs!606075 m!4912259))

(declare-fun m!4912261 () Bool)

(assert (=> bs!606075 m!4912261))

(assert (=> bm!299002 d!1269751))

(declare-fun d!1269753 () Bool)

(declare-fun res!1769920 () Bool)

(declare-fun e!2686716 () Bool)

(assert (=> d!1269753 (=> res!1769920 e!2686716)))

(assert (=> d!1269753 (= res!1769920 ((_ is Nil!48352) (removePairForKey!257 lt!1537170 key!2048)))))

(assert (=> d!1269753 (= (forall!8798 (removePairForKey!257 lt!1537170 key!2048) lambda!133618) e!2686716)))

(declare-fun b!4318645 () Bool)

(declare-fun e!2686717 () Bool)

(assert (=> b!4318645 (= e!2686716 e!2686717)))

(declare-fun res!1769921 () Bool)

(assert (=> b!4318645 (=> (not res!1769921) (not e!2686717))))

(declare-fun dynLambda!20498 (Int tuple2!47104) Bool)

(assert (=> b!4318645 (= res!1769921 (dynLambda!20498 lambda!133618 (h!53808 (removePairForKey!257 lt!1537170 key!2048))))))

(declare-fun b!4318646 () Bool)

(assert (=> b!4318646 (= e!2686717 (forall!8798 (t!355341 (removePairForKey!257 lt!1537170 key!2048)) lambda!133618))))

(assert (= (and d!1269753 (not res!1769920)) b!4318645))

(assert (= (and b!4318645 res!1769921) b!4318646))

(declare-fun b_lambda!127025 () Bool)

(assert (=> (not b_lambda!127025) (not b!4318645)))

(declare-fun m!4912263 () Bool)

(assert (=> b!4318645 m!4912263))

(declare-fun m!4912265 () Bool)

(assert (=> b!4318646 m!4912265))

(assert (=> d!1269683 d!1269753))

(assert (=> d!1269705 d!1269699))

(declare-fun b!4318647 () Bool)

(declare-fun e!2686722 () List!48478)

(assert (=> b!4318647 (= e!2686722 (keys!16159 (map!10377 thiss!42308)))))

(declare-fun b!4318648 () Bool)

(declare-fun e!2686721 () Bool)

(assert (=> b!4318648 (= e!2686721 (contains!10391 (keys!16159 (map!10377 thiss!42308)) key!2048))))

(declare-fun b!4318649 () Bool)

(declare-fun e!2686720 () Unit!67626)

(declare-fun Unit!67636 () Unit!67626)

(assert (=> b!4318649 (= e!2686720 Unit!67636)))

(declare-fun b!4318650 () Bool)

(assert (=> b!4318650 false))

(declare-fun lt!1537306 () Unit!67626)

(declare-fun lt!1537303 () Unit!67626)

(assert (=> b!4318650 (= lt!1537306 lt!1537303)))

(assert (=> b!4318650 (containsKey!392 (toList!2535 (map!10377 thiss!42308)) key!2048)))

(assert (=> b!4318650 (= lt!1537303 (lemmaInGetKeysListThenContainsKey!51 (toList!2535 (map!10377 thiss!42308)) key!2048))))

(declare-fun Unit!67637 () Unit!67626)

(assert (=> b!4318650 (= e!2686720 Unit!67637)))

(declare-fun b!4318651 () Bool)

(declare-fun e!2686718 () Bool)

(assert (=> b!4318651 (= e!2686718 e!2686721)))

(declare-fun res!1769924 () Bool)

(assert (=> b!4318651 (=> (not res!1769924) (not e!2686721))))

(assert (=> b!4318651 (= res!1769924 (isDefined!7593 (getValueByKey!292 (toList!2535 (map!10377 thiss!42308)) key!2048)))))

(declare-fun b!4318652 () Bool)

(declare-fun e!2686723 () Unit!67626)

(declare-fun lt!1537302 () Unit!67626)

(assert (=> b!4318652 (= e!2686723 lt!1537302)))

(declare-fun lt!1537305 () Unit!67626)

(assert (=> b!4318652 (= lt!1537305 (lemmaContainsKeyImpliesGetValueByKeyDefined!211 (toList!2535 (map!10377 thiss!42308)) key!2048))))

(assert (=> b!4318652 (isDefined!7593 (getValueByKey!292 (toList!2535 (map!10377 thiss!42308)) key!2048))))

(declare-fun lt!1537307 () Unit!67626)

(assert (=> b!4318652 (= lt!1537307 lt!1537305)))

(assert (=> b!4318652 (= lt!1537302 (lemmaInListThenGetKeysListContains!51 (toList!2535 (map!10377 thiss!42308)) key!2048))))

(declare-fun call!299014 () Bool)

(assert (=> b!4318652 call!299014))

(declare-fun bm!299009 () Bool)

(assert (=> bm!299009 (= call!299014 (contains!10391 e!2686722 key!2048))))

(declare-fun c!734293 () Bool)

(declare-fun c!734294 () Bool)

(assert (=> bm!299009 (= c!734293 c!734294)))

(declare-fun d!1269755 () Bool)

(assert (=> d!1269755 e!2686718))

(declare-fun res!1769923 () Bool)

(assert (=> d!1269755 (=> res!1769923 e!2686718)))

(declare-fun e!2686719 () Bool)

(assert (=> d!1269755 (= res!1769923 e!2686719)))

(declare-fun res!1769922 () Bool)

(assert (=> d!1269755 (=> (not res!1769922) (not e!2686719))))

(declare-fun lt!1537300 () Bool)

(assert (=> d!1269755 (= res!1769922 (not lt!1537300))))

(declare-fun lt!1537304 () Bool)

(assert (=> d!1269755 (= lt!1537300 lt!1537304)))

(declare-fun lt!1537301 () Unit!67626)

(assert (=> d!1269755 (= lt!1537301 e!2686723)))

(assert (=> d!1269755 (= c!734294 lt!1537304)))

(assert (=> d!1269755 (= lt!1537304 (containsKey!392 (toList!2535 (map!10377 thiss!42308)) key!2048))))

(assert (=> d!1269755 (= (contains!10389 (map!10377 thiss!42308) key!2048) lt!1537300)))

(declare-fun b!4318653 () Bool)

(assert (=> b!4318653 (= e!2686719 (not (contains!10391 (keys!16159 (map!10377 thiss!42308)) key!2048)))))

(declare-fun b!4318654 () Bool)

(assert (=> b!4318654 (= e!2686722 (getKeysList!54 (toList!2535 (map!10377 thiss!42308))))))

(declare-fun b!4318655 () Bool)

(assert (=> b!4318655 (= e!2686723 e!2686720)))

(declare-fun c!734292 () Bool)

(assert (=> b!4318655 (= c!734292 call!299014)))

(assert (= (and d!1269755 c!734294) b!4318652))

(assert (= (and d!1269755 (not c!734294)) b!4318655))

(assert (= (and b!4318655 c!734292) b!4318650))

(assert (= (and b!4318655 (not c!734292)) b!4318649))

(assert (= (or b!4318652 b!4318655) bm!299009))

(assert (= (and bm!299009 c!734293) b!4318654))

(assert (= (and bm!299009 (not c!734293)) b!4318647))

(assert (= (and d!1269755 res!1769922) b!4318653))

(assert (= (and d!1269755 (not res!1769923)) b!4318651))

(assert (= (and b!4318651 res!1769924) b!4318648))

(declare-fun m!4912267 () Bool)

(assert (=> b!4318652 m!4912267))

(declare-fun m!4912269 () Bool)

(assert (=> b!4318652 m!4912269))

(assert (=> b!4318652 m!4912269))

(declare-fun m!4912271 () Bool)

(assert (=> b!4318652 m!4912271))

(declare-fun m!4912273 () Bool)

(assert (=> b!4318652 m!4912273))

(declare-fun m!4912275 () Bool)

(assert (=> bm!299009 m!4912275))

(assert (=> b!4318648 m!4912025))

(declare-fun m!4912277 () Bool)

(assert (=> b!4318648 m!4912277))

(assert (=> b!4318648 m!4912277))

(declare-fun m!4912279 () Bool)

(assert (=> b!4318648 m!4912279))

(declare-fun m!4912281 () Bool)

(assert (=> b!4318650 m!4912281))

(declare-fun m!4912283 () Bool)

(assert (=> b!4318650 m!4912283))

(assert (=> d!1269755 m!4912281))

(declare-fun m!4912285 () Bool)

(assert (=> b!4318654 m!4912285))

(assert (=> b!4318647 m!4912025))

(assert (=> b!4318647 m!4912277))

(assert (=> b!4318653 m!4912025))

(assert (=> b!4318653 m!4912277))

(assert (=> b!4318653 m!4912277))

(assert (=> b!4318653 m!4912279))

(assert (=> b!4318651 m!4912269))

(assert (=> b!4318651 m!4912269))

(assert (=> b!4318651 m!4912271))

(assert (=> d!1269705 d!1269755))

(declare-fun b!4318656 () Bool)

(declare-fun e!2686728 () List!48478)

(assert (=> b!4318656 (= e!2686728 (keys!16159 (extractMap!364 (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308)))))))))

(declare-fun b!4318657 () Bool)

(declare-fun e!2686727 () Bool)

(assert (=> b!4318657 (= e!2686727 (contains!10391 (keys!16159 (extractMap!364 (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308)))))) key!2048))))

(declare-fun b!4318658 () Bool)

(declare-fun e!2686726 () Unit!67626)

(declare-fun Unit!67638 () Unit!67626)

(assert (=> b!4318658 (= e!2686726 Unit!67638)))

(declare-fun b!4318659 () Bool)

(assert (=> b!4318659 false))

(declare-fun lt!1537314 () Unit!67626)

(declare-fun lt!1537311 () Unit!67626)

(assert (=> b!4318659 (= lt!1537314 lt!1537311)))

(assert (=> b!4318659 (containsKey!392 (toList!2535 (extractMap!364 (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308)))))) key!2048)))

(assert (=> b!4318659 (= lt!1537311 (lemmaInGetKeysListThenContainsKey!51 (toList!2535 (extractMap!364 (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308)))))) key!2048))))

(declare-fun Unit!67639 () Unit!67626)

(assert (=> b!4318659 (= e!2686726 Unit!67639)))

(declare-fun b!4318660 () Bool)

(declare-fun e!2686724 () Bool)

(assert (=> b!4318660 (= e!2686724 e!2686727)))

(declare-fun res!1769927 () Bool)

(assert (=> b!4318660 (=> (not res!1769927) (not e!2686727))))

(assert (=> b!4318660 (= res!1769927 (isDefined!7593 (getValueByKey!292 (toList!2535 (extractMap!364 (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308)))))) key!2048)))))

(declare-fun b!4318661 () Bool)

(declare-fun e!2686729 () Unit!67626)

(declare-fun lt!1537310 () Unit!67626)

(assert (=> b!4318661 (= e!2686729 lt!1537310)))

(declare-fun lt!1537313 () Unit!67626)

(assert (=> b!4318661 (= lt!1537313 (lemmaContainsKeyImpliesGetValueByKeyDefined!211 (toList!2535 (extractMap!364 (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308)))))) key!2048))))

(assert (=> b!4318661 (isDefined!7593 (getValueByKey!292 (toList!2535 (extractMap!364 (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308)))))) key!2048))))

(declare-fun lt!1537315 () Unit!67626)

(assert (=> b!4318661 (= lt!1537315 lt!1537313)))

(assert (=> b!4318661 (= lt!1537310 (lemmaInListThenGetKeysListContains!51 (toList!2535 (extractMap!364 (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308)))))) key!2048))))

(declare-fun call!299015 () Bool)

(assert (=> b!4318661 call!299015))

(declare-fun bm!299010 () Bool)

(assert (=> bm!299010 (= call!299015 (contains!10391 e!2686728 key!2048))))

(declare-fun c!734296 () Bool)

(declare-fun c!734297 () Bool)

(assert (=> bm!299010 (= c!734296 c!734297)))

(declare-fun d!1269757 () Bool)

(assert (=> d!1269757 e!2686724))

(declare-fun res!1769926 () Bool)

(assert (=> d!1269757 (=> res!1769926 e!2686724)))

(declare-fun e!2686725 () Bool)

(assert (=> d!1269757 (= res!1769926 e!2686725)))

(declare-fun res!1769925 () Bool)

(assert (=> d!1269757 (=> (not res!1769925) (not e!2686725))))

(declare-fun lt!1537308 () Bool)

(assert (=> d!1269757 (= res!1769925 (not lt!1537308))))

(declare-fun lt!1537312 () Bool)

(assert (=> d!1269757 (= lt!1537308 lt!1537312)))

(declare-fun lt!1537309 () Unit!67626)

(assert (=> d!1269757 (= lt!1537309 e!2686729)))

(assert (=> d!1269757 (= c!734297 lt!1537312)))

(assert (=> d!1269757 (= lt!1537312 (containsKey!392 (toList!2535 (extractMap!364 (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308)))))) key!2048))))

(assert (=> d!1269757 (= (contains!10389 (extractMap!364 (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308))))) key!2048) lt!1537308)))

(declare-fun b!4318662 () Bool)

(assert (=> b!4318662 (= e!2686725 (not (contains!10391 (keys!16159 (extractMap!364 (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308)))))) key!2048)))))

(declare-fun b!4318663 () Bool)

(assert (=> b!4318663 (= e!2686728 (getKeysList!54 (toList!2535 (extractMap!364 (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308))))))))))

(declare-fun b!4318664 () Bool)

(assert (=> b!4318664 (= e!2686729 e!2686726)))

(declare-fun c!734295 () Bool)

(assert (=> b!4318664 (= c!734295 call!299015)))

(assert (= (and d!1269757 c!734297) b!4318661))

(assert (= (and d!1269757 (not c!734297)) b!4318664))

(assert (= (and b!4318664 c!734295) b!4318659))

(assert (= (and b!4318664 (not c!734295)) b!4318658))

(assert (= (or b!4318661 b!4318664) bm!299010))

(assert (= (and bm!299010 c!734296) b!4318663))

(assert (= (and bm!299010 (not c!734296)) b!4318656))

(assert (= (and d!1269757 res!1769925) b!4318662))

(assert (= (and d!1269757 (not res!1769926)) b!4318660))

(assert (= (and b!4318660 res!1769927) b!4318657))

(declare-fun m!4912287 () Bool)

(assert (=> b!4318661 m!4912287))

(declare-fun m!4912289 () Bool)

(assert (=> b!4318661 m!4912289))

(assert (=> b!4318661 m!4912289))

(declare-fun m!4912291 () Bool)

(assert (=> b!4318661 m!4912291))

(declare-fun m!4912293 () Bool)

(assert (=> b!4318661 m!4912293))

(declare-fun m!4912295 () Bool)

(assert (=> bm!299010 m!4912295))

(assert (=> b!4318657 m!4912125))

(declare-fun m!4912297 () Bool)

(assert (=> b!4318657 m!4912297))

(assert (=> b!4318657 m!4912297))

(declare-fun m!4912299 () Bool)

(assert (=> b!4318657 m!4912299))

(declare-fun m!4912301 () Bool)

(assert (=> b!4318659 m!4912301))

(declare-fun m!4912303 () Bool)

(assert (=> b!4318659 m!4912303))

(assert (=> d!1269757 m!4912301))

(declare-fun m!4912305 () Bool)

(assert (=> b!4318663 m!4912305))

(assert (=> b!4318656 m!4912125))

(assert (=> b!4318656 m!4912297))

(assert (=> b!4318662 m!4912125))

(assert (=> b!4318662 m!4912297))

(assert (=> b!4318662 m!4912297))

(assert (=> b!4318662 m!4912299))

(assert (=> b!4318660 m!4912289))

(assert (=> b!4318660 m!4912289))

(assert (=> b!4318660 m!4912291))

(assert (=> d!1269705 d!1269757))

(assert (=> d!1269705 d!1269693))

(assert (=> d!1269705 d!1269709))

(declare-fun d!1269759 () Bool)

(declare-fun lt!1537316 () Bool)

(assert (=> d!1269759 (= lt!1537316 (contains!10387 (map!10376 (v!42686 (underlying!9712 thiss!42308))) lt!1537248))))

(assert (=> d!1269759 (= lt!1537316 (contains!10388 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308)))) lt!1537248))))

(assert (=> d!1269759 (valid!3750 (v!42686 (underlying!9712 thiss!42308)))))

(assert (=> d!1269759 (= (contains!10385 (v!42686 (underlying!9712 thiss!42308)) lt!1537248) lt!1537316)))

(declare-fun bs!606076 () Bool)

(assert (= bs!606076 d!1269759))

(assert (=> bs!606076 m!4912023))

(assert (=> bs!606076 m!4912023))

(declare-fun m!4912307 () Bool)

(assert (=> bs!606076 m!4912307))

(declare-fun m!4912309 () Bool)

(assert (=> bs!606076 m!4912309))

(assert (=> bs!606076 m!4912065))

(assert (=> d!1269705 d!1269759))

(declare-fun bs!606077 () Bool)

(declare-fun d!1269761 () Bool)

(assert (= bs!606077 (and d!1269761 d!1269689)))

(declare-fun lambda!133639 () Int)

(assert (=> bs!606077 (not (= lambda!133639 lambda!133622))))

(declare-fun bs!606078 () Bool)

(assert (= bs!606078 (and d!1269761 d!1269723)))

(assert (=> bs!606078 (= lambda!133639 lambda!133637)))

(declare-fun bs!606079 () Bool)

(assert (= bs!606079 (and d!1269761 b!4318435)))

(assert (=> bs!606079 (= lambda!133639 lambda!133615)))

(declare-fun bs!606080 () Bool)

(assert (= bs!606080 (and d!1269761 b!4318527)))

(assert (=> bs!606080 (= lambda!133639 lambda!133631)))

(declare-fun bs!606081 () Bool)

(assert (= bs!606081 (and d!1269761 d!1269721)))

(assert (=> bs!606081 (= lambda!133639 lambda!133634)))

(declare-fun bs!606082 () Bool)

(assert (= bs!606082 (and d!1269761 d!1269703)))

(assert (=> bs!606082 (not (= lambda!133639 lambda!133628))))

(declare-fun bs!606083 () Bool)

(assert (= bs!606083 (and d!1269761 d!1269743)))

(assert (=> bs!606083 (not (= lambda!133639 lambda!133638))))

(declare-fun bs!606084 () Bool)

(assert (= bs!606084 (and d!1269761 b!4318466)))

(assert (=> bs!606084 (= lambda!133639 lambda!133625)))

(declare-fun lt!1537317 () ListMap!1813)

(assert (=> d!1269761 (invariantList!597 (toList!2535 lt!1537317))))

(declare-fun e!2686730 () ListMap!1813)

(assert (=> d!1269761 (= lt!1537317 e!2686730)))

(declare-fun c!734298 () Bool)

(assert (=> d!1269761 (= c!734298 ((_ is Cons!48353) (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308))))))))

(assert (=> d!1269761 (forall!8797 (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308)))) lambda!133639)))

(assert (=> d!1269761 (= (extractMap!364 (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308))))) lt!1537317)))

(declare-fun b!4318665 () Bool)

(assert (=> b!4318665 (= e!2686730 (addToMapMapFromBucket!49 (_2!26838 (h!53809 (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308)))))) (extractMap!364 (t!355342 (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308))))))))))

(declare-fun b!4318666 () Bool)

(assert (=> b!4318666 (= e!2686730 (ListMap!1814 Nil!48352))))

(assert (= (and d!1269761 c!734298) b!4318665))

(assert (= (and d!1269761 (not c!734298)) b!4318666))

(declare-fun m!4912311 () Bool)

(assert (=> d!1269761 m!4912311))

(declare-fun m!4912313 () Bool)

(assert (=> d!1269761 m!4912313))

(declare-fun m!4912315 () Bool)

(assert (=> b!4318665 m!4912315))

(assert (=> b!4318665 m!4912315))

(declare-fun m!4912317 () Bool)

(assert (=> b!4318665 m!4912317))

(assert (=> d!1269705 d!1269761))

(assert (=> d!1269705 d!1269707))

(declare-fun d!1269763 () Bool)

(declare-fun getCurrentListMap!22 (array!17176 array!17178 (_ BitVec 32) (_ BitVec 32) List!48476 List!48476 (_ BitVec 32) Int) ListLongMap!1149)

(assert (=> d!1269763 (= (map!10378 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (getCurrentListMap!22 (_keys!5041 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (_values!5022 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (mask!13340 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (extraKeys!4990 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (zeroValue!5000 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (minValue!5000 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5126 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308)))))))))

(declare-fun bs!606085 () Bool)

(assert (= bs!606085 d!1269763))

(declare-fun m!4912319 () Bool)

(assert (=> bs!606085 m!4912319))

(assert (=> d!1269707 d!1269763))

(declare-fun d!1269765 () Bool)

(declare-fun res!1769928 () Bool)

(declare-fun e!2686731 () Bool)

(assert (=> d!1269765 (=> res!1769928 e!2686731)))

(assert (=> d!1269765 (= res!1769928 (not ((_ is Cons!48352) (_2!26838 (h!53809 (toList!2534 lt!1537172))))))))

(assert (=> d!1269765 (= (noDuplicateKeys!258 (_2!26838 (h!53809 (toList!2534 lt!1537172)))) e!2686731)))

(declare-fun b!4318667 () Bool)

(declare-fun e!2686732 () Bool)

(assert (=> b!4318667 (= e!2686731 e!2686732)))

(declare-fun res!1769929 () Bool)

(assert (=> b!4318667 (=> (not res!1769929) (not e!2686732))))

(assert (=> b!4318667 (= res!1769929 (not (containsKey!390 (t!355341 (_2!26838 (h!53809 (toList!2534 lt!1537172)))) (_1!26836 (h!53808 (_2!26838 (h!53809 (toList!2534 lt!1537172))))))))))

(declare-fun b!4318668 () Bool)

(assert (=> b!4318668 (= e!2686732 (noDuplicateKeys!258 (t!355341 (_2!26838 (h!53809 (toList!2534 lt!1537172))))))))

(assert (= (and d!1269765 (not res!1769928)) b!4318667))

(assert (= (and b!4318667 res!1769929) b!4318668))

(declare-fun m!4912321 () Bool)

(assert (=> b!4318667 m!4912321))

(declare-fun m!4912323 () Bool)

(assert (=> b!4318668 m!4912323))

(assert (=> bs!606049 d!1269765))

(declare-fun d!1269767 () Bool)

(assert (=> d!1269767 (dynLambda!20496 lambda!133631 (tuple2!47109 lt!1537248 (apply!11122 (v!42686 (underlying!9712 thiss!42308)) lt!1537248)))))

(declare-fun lt!1537320 () Unit!67626)

(declare-fun choose!26359 (List!48477 Int tuple2!47108) Unit!67626)

(assert (=> d!1269767 (= lt!1537320 (choose!26359 (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308)))) lambda!133631 (tuple2!47109 lt!1537248 (apply!11122 (v!42686 (underlying!9712 thiss!42308)) lt!1537248))))))

(declare-fun e!2686735 () Bool)

(assert (=> d!1269767 e!2686735))

(declare-fun res!1769932 () Bool)

(assert (=> d!1269767 (=> (not res!1769932) (not e!2686735))))

(assert (=> d!1269767 (= res!1769932 (forall!8797 (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308)))) lambda!133631))))

(assert (=> d!1269767 (= (forallContained!1526 (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308)))) lambda!133631 (tuple2!47109 lt!1537248 (apply!11122 (v!42686 (underlying!9712 thiss!42308)) lt!1537248))) lt!1537320)))

(declare-fun b!4318671 () Bool)

(assert (=> b!4318671 (= e!2686735 (contains!10390 (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308)))) (tuple2!47109 lt!1537248 (apply!11122 (v!42686 (underlying!9712 thiss!42308)) lt!1537248))))))

(assert (= (and d!1269767 res!1769932) b!4318671))

(declare-fun b_lambda!127027 () Bool)

(assert (=> (not b_lambda!127027) (not d!1269767)))

(declare-fun m!4912325 () Bool)

(assert (=> d!1269767 m!4912325))

(declare-fun m!4912327 () Bool)

(assert (=> d!1269767 m!4912327))

(declare-fun m!4912329 () Bool)

(assert (=> d!1269767 m!4912329))

(assert (=> b!4318671 m!4912143))

(assert (=> b!4318527 d!1269767))

(assert (=> b!4318527 d!1269707))

(assert (=> b!4318527 d!1269749))

(declare-fun d!1269769 () Bool)

(declare-fun lt!1537323 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7566 (List!48477) (InoxSet tuple2!47108))

(assert (=> d!1269769 (= lt!1537323 (select (content!7566 (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308))))) (tuple2!47109 lt!1537248 (apply!11122 (v!42686 (underlying!9712 thiss!42308)) lt!1537248))))))

(declare-fun e!2686740 () Bool)

(assert (=> d!1269769 (= lt!1537323 e!2686740)))

(declare-fun res!1769938 () Bool)

(assert (=> d!1269769 (=> (not res!1769938) (not e!2686740))))

(assert (=> d!1269769 (= res!1769938 ((_ is Cons!48353) (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308))))))))

(assert (=> d!1269769 (= (contains!10390 (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308)))) (tuple2!47109 lt!1537248 (apply!11122 (v!42686 (underlying!9712 thiss!42308)) lt!1537248))) lt!1537323)))

(declare-fun b!4318676 () Bool)

(declare-fun e!2686741 () Bool)

(assert (=> b!4318676 (= e!2686740 e!2686741)))

(declare-fun res!1769937 () Bool)

(assert (=> b!4318676 (=> res!1769937 e!2686741)))

(assert (=> b!4318676 (= res!1769937 (= (h!53809 (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308))))) (tuple2!47109 lt!1537248 (apply!11122 (v!42686 (underlying!9712 thiss!42308)) lt!1537248))))))

(declare-fun b!4318677 () Bool)

(assert (=> b!4318677 (= e!2686741 (contains!10390 (t!355342 (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308))))) (tuple2!47109 lt!1537248 (apply!11122 (v!42686 (underlying!9712 thiss!42308)) lt!1537248))))))

(assert (= (and d!1269769 res!1769938) b!4318676))

(assert (= (and b!4318676 (not res!1769937)) b!4318677))

(declare-fun m!4912331 () Bool)

(assert (=> d!1269769 m!4912331))

(declare-fun m!4912333 () Bool)

(assert (=> d!1269769 m!4912333))

(declare-fun m!4912335 () Bool)

(assert (=> b!4318677 m!4912335))

(assert (=> b!4318527 d!1269769))

(declare-fun d!1269771 () Bool)

(declare-fun choose!26360 (Hashable!4657 K!9599) (_ BitVec 64))

(assert (=> d!1269771 (= (hash!1150 (hashF!6879 thiss!42308) key!2048) (choose!26360 (hashF!6879 thiss!42308) key!2048))))

(declare-fun bs!606086 () Bool)

(assert (= bs!606086 d!1269771))

(declare-fun m!4912337 () Bool)

(assert (=> bs!606086 m!4912337))

(assert (=> d!1269699 d!1269771))

(declare-fun d!1269773 () Bool)

(declare-fun noDuplicatedKeys!101 (List!48476) Bool)

(assert (=> d!1269773 (= (invariantList!597 (toList!2535 lt!1537263)) (noDuplicatedKeys!101 (toList!2535 lt!1537263)))))

(declare-fun bs!606087 () Bool)

(assert (= bs!606087 d!1269773))

(declare-fun m!4912339 () Bool)

(assert (=> bs!606087 m!4912339))

(assert (=> d!1269709 d!1269773))

(assert (=> d!1269709 d!1269761))

(assert (=> d!1269709 d!1269707))

(assert (=> d!1269709 d!1269693))

(declare-fun d!1269775 () Bool)

(assert (=> d!1269775 (= (isDefined!7591 call!299008) (not (isEmpty!28105 call!299008)))))

(declare-fun bs!606088 () Bool)

(assert (= bs!606088 d!1269775))

(declare-fun m!4912341 () Bool)

(assert (=> bs!606088 m!4912341))

(assert (=> bm!299005 d!1269775))

(assert (=> d!1269701 d!1269697))

(declare-fun bm!299019 () Bool)

(declare-fun call!299024 () List!48476)

(declare-fun call!299027 () List!48476)

(assert (=> bm!299019 (= call!299024 call!299027)))

(declare-fun b!4318714 () Bool)

(declare-fun e!2686769 () Bool)

(declare-fun e!2686764 () Bool)

(assert (=> b!4318714 (= e!2686769 e!2686764)))

(declare-fun c!734319 () Bool)

(assert (=> b!4318714 (= c!734319 (= lt!1537166 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4318715 () Bool)

(declare-datatypes ((SeekEntryResult!19 0))(
  ( (Found!19 (index!1455 (_ BitVec 32))) (Undefined!19) (MissingZero!19 (index!1456 (_ BitVec 32))) (MissingVacant!19 (index!1457 (_ BitVec 32))) (Intermediate!19 (undefined!100 Bool) (index!1458 (_ BitVec 32)) (x!749526 (_ BitVec 32))) )
))
(declare-fun lt!1537351 () SeekEntryResult!19)

(declare-fun e!2686766 () Bool)

(assert (=> b!4318715 (= e!2686766 (= call!299024 (select (arr!7668 (_values!5022 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308)))))) (index!1455 lt!1537351))))))

(declare-fun b!4318716 () Bool)

(declare-fun e!2686771 () List!48476)

(assert (=> b!4318716 (= e!2686771 (dynLambda!20497 (defaultEntry!5126 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) lt!1537166))))

(declare-fun b!4318717 () Bool)

(declare-fun e!2686770 () Bool)

(assert (=> b!4318717 (= e!2686769 e!2686770)))

(declare-fun res!1769949 () Bool)

(assert (=> b!4318717 (= res!1769949 (not (= (bvand (extraKeys!4990 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!4318717 (=> (not res!1769949) (not e!2686770))))

(declare-fun d!1269777 () Bool)

(declare-fun e!2686773 () Bool)

(assert (=> d!1269777 e!2686773))

(declare-fun c!734316 () Bool)

(assert (=> d!1269777 (= c!734316 (contains!10388 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308)))) lt!1537166))))

(declare-fun lt!1537355 () List!48476)

(declare-fun e!2686774 () List!48476)

(assert (=> d!1269777 (= lt!1537355 e!2686774)))

(declare-fun c!734314 () Bool)

(assert (=> d!1269777 (= c!734314 (= lt!1537166 (bvneg lt!1537166)))))

(assert (=> d!1269777 (valid!3751 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308)))))))

(assert (=> d!1269777 (= (apply!11123 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308)))) lt!1537166) lt!1537355)))

(declare-fun b!4318718 () Bool)

(assert (=> b!4318718 (= e!2686773 (= lt!1537355 (dynLambda!20497 (defaultEntry!5126 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) lt!1537166)))))

(declare-fun b!4318719 () Bool)

(declare-fun e!2686767 () List!48476)

(assert (=> b!4318719 (= e!2686774 e!2686767)))

(declare-fun c!734317 () Bool)

(assert (=> b!4318719 (= c!734317 (and (= lt!1537166 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!4990 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun bm!299020 () Bool)

(declare-fun call!299026 () ListLongMap!1149)

(declare-fun call!299025 () ListLongMap!1149)

(assert (=> bm!299020 (= call!299026 call!299025)))

(declare-fun b!4318720 () Bool)

(declare-fun e!2686768 () List!48476)

(assert (=> b!4318720 (= e!2686768 (dynLambda!20497 (defaultEntry!5126 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) lt!1537166))))

(declare-fun b!4318721 () Bool)

(assert (=> b!4318721 (= e!2686771 (minValue!5000 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))))))

(declare-fun b!4318722 () Bool)

(declare-fun e!2686765 () Bool)

(declare-fun lt!1537354 () SeekEntryResult!19)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!4318722 (= e!2686765 (inRange!0 (index!1455 lt!1537354) (mask!13340 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308)))))))))

(declare-fun c!734318 () Bool)

(declare-fun bm!299021 () Bool)

(assert (=> bm!299021 (= call!299027 (apply!11124 (ite c!734318 call!299025 call!299026) lt!1537166))))

(declare-fun b!4318723 () Bool)

(assert (=> b!4318723 (= e!2686774 e!2686768)))

(declare-fun seekEntry!0 ((_ BitVec 64) array!17176 (_ BitVec 32)) SeekEntryResult!19)

(assert (=> b!4318723 (= lt!1537351 (seekEntry!0 lt!1537166 (_keys!5041 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (mask!13340 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308)))))))))

(declare-fun lt!1537352 () Unit!67626)

(declare-fun lemmaSeekEntryGivesInRangeIndex!9 (array!17176 array!17178 (_ BitVec 32) (_ BitVec 32) List!48476 List!48476 (_ BitVec 64)) Unit!67626)

(assert (=> b!4318723 (= lt!1537352 (lemmaSeekEntryGivesInRangeIndex!9 (_keys!5041 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (_values!5022 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (mask!13340 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (extraKeys!4990 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (zeroValue!5000 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (minValue!5000 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) lt!1537166))))

(assert (=> b!4318723 (= lt!1537354 (seekEntry!0 lt!1537166 (_keys!5041 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (mask!13340 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308)))))))))

(declare-fun res!1769948 () Bool)

(assert (=> b!4318723 (= res!1769948 (not ((_ is Found!19) lt!1537354)))))

(assert (=> b!4318723 (=> res!1769948 e!2686765)))

(assert (=> b!4318723 e!2686765))

(declare-fun lt!1537347 () Unit!67626)

(assert (=> b!4318723 (= lt!1537347 lt!1537352)))

(declare-fun c!734313 () Bool)

(assert (=> b!4318723 (= c!734313 ((_ is Found!19) lt!1537351))))

(declare-fun b!4318724 () Bool)

(declare-fun lt!1537353 () Unit!67626)

(declare-fun lt!1537348 () Unit!67626)

(assert (=> b!4318724 (= lt!1537353 lt!1537348)))

(assert (=> b!4318724 e!2686769))

(assert (=> b!4318724 (= c!734318 (= lt!1537166 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lemmaKeyInListMapThenSameValueInArray!9 (array!17176 array!17178 (_ BitVec 32) (_ BitVec 32) List!48476 List!48476 (_ BitVec 64) (_ BitVec 32) Int) Unit!67626)

(assert (=> b!4318724 (= lt!1537348 (lemmaKeyInListMapThenSameValueInArray!9 (_keys!5041 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (_values!5022 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (mask!13340 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (extraKeys!4990 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (zeroValue!5000 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (minValue!5000 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) lt!1537166 (index!1455 lt!1537351) (defaultEntry!5126 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308)))))))))

(declare-fun lt!1537350 () Unit!67626)

(declare-fun lt!1537346 () Unit!67626)

(assert (=> b!4318724 (= lt!1537350 lt!1537346)))

(assert (=> b!4318724 (contains!10387 (getCurrentListMap!22 (_keys!5041 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (_values!5022 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (mask!13340 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (extraKeys!4990 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (zeroValue!5000 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (minValue!5000 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5126 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308)))))) (select (arr!7667 (_keys!5041 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308)))))) (index!1455 lt!1537351)))))

(declare-fun lemmaValidKeyInArrayIsInListMap!12 (array!17176 array!17178 (_ BitVec 32) (_ BitVec 32) List!48476 List!48476 (_ BitVec 32) Int) Unit!67626)

(assert (=> b!4318724 (= lt!1537346 (lemmaValidKeyInArrayIsInListMap!12 (_keys!5041 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (_values!5022 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (mask!13340 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (extraKeys!4990 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (zeroValue!5000 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (minValue!5000 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (index!1455 lt!1537351) (defaultEntry!5126 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308)))))))))

(declare-fun lt!1537356 () Unit!67626)

(declare-fun lt!1537349 () Unit!67626)

(assert (=> b!4318724 (= lt!1537356 lt!1537349)))

(declare-fun arrayContainsKey!0 (array!17176 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!4318724 (arrayContainsKey!0 (_keys!5041 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) lt!1537166 #b00000000000000000000000000000000)))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17176 (_ BitVec 64) (_ BitVec 32)) Unit!67626)

(assert (=> b!4318724 (= lt!1537349 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5041 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) lt!1537166 (index!1455 lt!1537351)))))

(assert (=> b!4318724 (= e!2686768 (select (arr!7668 (_values!5022 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308)))))) (index!1455 lt!1537351)))))

(declare-fun b!4318725 () Bool)

(declare-fun res!1769950 () Bool)

(declare-fun e!2686772 () Bool)

(assert (=> b!4318725 (=> (not res!1769950) (not e!2686772))))

(assert (=> b!4318725 (= res!1769950 (not (= (bvand (extraKeys!4990 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!4318725 (= e!2686764 e!2686772)))

(declare-fun b!4318726 () Bool)

(assert (=> b!4318726 (= e!2686773 (= lt!1537355 (get!15663 (getValueByKey!291 (toList!2534 (map!10378 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308)))))) lt!1537166))))))

(declare-fun bm!299022 () Bool)

(assert (=> bm!299022 (= call!299025 (getCurrentListMap!22 (_keys!5041 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (_values!5022 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (mask!13340 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (extraKeys!4990 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (zeroValue!5000 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (minValue!5000 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5126 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308)))))))))

(declare-fun b!4318727 () Bool)

(assert (=> b!4318727 (= e!2686770 (= call!299027 (zeroValue!5000 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308)))))))))

(declare-fun b!4318728 () Bool)

(declare-fun res!1769947 () Bool)

(assert (=> b!4318728 (=> (not res!1769947) (not e!2686766))))

(assert (=> b!4318728 (= res!1769947 (arrayContainsKey!0 (_keys!5041 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) lt!1537166 #b00000000000000000000000000000000))))

(assert (=> b!4318728 (= e!2686764 e!2686766)))

(declare-fun b!4318729 () Bool)

(declare-fun c!734315 () Bool)

(assert (=> b!4318729 (= c!734315 (and (= lt!1537166 #b1000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!4990 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!4318729 (= e!2686767 e!2686771)))

(declare-fun b!4318730 () Bool)

(assert (=> b!4318730 (= e!2686767 (zeroValue!5000 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))))))

(declare-fun b!4318731 () Bool)

(assert (=> b!4318731 (= e!2686772 (= call!299024 (minValue!5000 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308)))))))))

(assert (= (and d!1269777 c!734314) b!4318719))

(assert (= (and d!1269777 (not c!734314)) b!4318723))

(assert (= (and b!4318719 c!734317) b!4318730))

(assert (= (and b!4318719 (not c!734317)) b!4318729))

(assert (= (and b!4318729 c!734315) b!4318721))

(assert (= (and b!4318729 (not c!734315)) b!4318716))

(assert (= (and b!4318723 (not res!1769948)) b!4318722))

(assert (= (and b!4318723 c!734313) b!4318724))

(assert (= (and b!4318723 (not c!734313)) b!4318720))

(assert (= (and b!4318724 c!734318) b!4318717))

(assert (= (and b!4318724 (not c!734318)) b!4318714))

(assert (= (and b!4318717 res!1769949) b!4318727))

(assert (= (and b!4318714 c!734319) b!4318725))

(assert (= (and b!4318714 (not c!734319)) b!4318728))

(assert (= (and b!4318725 res!1769950) b!4318731))

(assert (= (and b!4318728 res!1769947) b!4318715))

(assert (= (or b!4318731 b!4318715) bm!299020))

(assert (= (or b!4318731 b!4318715) bm!299019))

(assert (= (or b!4318727 bm!299020) bm!299022))

(assert (= (or b!4318727 bm!299019) bm!299021))

(assert (= (and d!1269777 c!734316) b!4318726))

(assert (= (and d!1269777 (not c!734316)) b!4318718))

(declare-fun b_lambda!127029 () Bool)

(assert (=> (not b_lambda!127029) (not b!4318716)))

(assert (=> b!4318716 t!355344))

(declare-fun b_and!340441 () Bool)

(assert (= b_and!340439 (and (=> t!355344 result!314848) b_and!340441)))

(declare-fun b_lambda!127031 () Bool)

(assert (=> (not b_lambda!127031) (not b!4318718)))

(assert (=> b!4318718 t!355344))

(declare-fun b_and!340443 () Bool)

(assert (= b_and!340441 (and (=> t!355344 result!314848) b_and!340443)))

(declare-fun b_lambda!127033 () Bool)

(assert (=> (not b_lambda!127033) (not b!4318720)))

(assert (=> b!4318720 t!355344))

(declare-fun b_and!340445 () Bool)

(assert (= b_and!340443 (and (=> t!355344 result!314848) b_and!340445)))

(assert (=> b!4318716 m!4912097))

(assert (=> b!4318720 m!4912097))

(declare-fun m!4912343 () Bool)

(assert (=> b!4318722 m!4912343))

(declare-fun m!4912345 () Bool)

(assert (=> b!4318723 m!4912345))

(declare-fun m!4912347 () Bool)

(assert (=> b!4318723 m!4912347))

(declare-fun m!4912349 () Bool)

(assert (=> b!4318715 m!4912349))

(declare-fun m!4912351 () Bool)

(assert (=> b!4318724 m!4912351))

(declare-fun m!4912353 () Bool)

(assert (=> b!4318724 m!4912353))

(assert (=> b!4318724 m!4912319))

(assert (=> b!4318724 m!4912351))

(declare-fun m!4912355 () Bool)

(assert (=> b!4318724 m!4912355))

(declare-fun m!4912357 () Bool)

(assert (=> b!4318724 m!4912357))

(declare-fun m!4912359 () Bool)

(assert (=> b!4318724 m!4912359))

(declare-fun m!4912361 () Bool)

(assert (=> b!4318724 m!4912361))

(assert (=> b!4318724 m!4912319))

(assert (=> b!4318724 m!4912349))

(assert (=> b!4318718 m!4912097))

(assert (=> bm!299022 m!4912319))

(assert (=> b!4318726 m!4912149))

(declare-fun m!4912363 () Bool)

(assert (=> b!4318726 m!4912363))

(assert (=> b!4318726 m!4912363))

(declare-fun m!4912365 () Bool)

(assert (=> b!4318726 m!4912365))

(assert (=> d!1269777 m!4912087))

(assert (=> d!1269777 m!4912231))

(assert (=> b!4318728 m!4912357))

(declare-fun m!4912367 () Bool)

(assert (=> bm!299021 m!4912367))

(assert (=> d!1269701 d!1269777))

(assert (=> d!1269701 d!1269741))

(declare-fun d!1269779 () Bool)

(declare-fun e!2686779 () Bool)

(assert (=> d!1269779 e!2686779))

(declare-fun res!1769953 () Bool)

(assert (=> d!1269779 (=> res!1769953 e!2686779)))

(declare-fun lt!1537365 () Bool)

(assert (=> d!1269779 (= res!1769953 (not lt!1537365))))

(declare-fun lt!1537366 () Bool)

(assert (=> d!1269779 (= lt!1537365 lt!1537366)))

(declare-fun lt!1537367 () Unit!67626)

(declare-fun e!2686780 () Unit!67626)

(assert (=> d!1269779 (= lt!1537367 e!2686780)))

(declare-fun c!734322 () Bool)

(assert (=> d!1269779 (= c!734322 lt!1537366)))

(assert (=> d!1269779 (= lt!1537366 (containsKey!391 (toList!2534 (ite c!734268 lt!1537260 call!299007)) call!299009))))

(assert (=> d!1269779 (= (contains!10387 (ite c!734268 lt!1537260 call!299007) call!299009) lt!1537365)))

(declare-fun b!4318738 () Bool)

(declare-fun lt!1537368 () Unit!67626)

(assert (=> b!4318738 (= e!2686780 lt!1537368)))

(assert (=> b!4318738 (= lt!1537368 (lemmaContainsKeyImpliesGetValueByKeyDefined!210 (toList!2534 (ite c!734268 lt!1537260 call!299007)) call!299009))))

(assert (=> b!4318738 (isDefined!7592 (getValueByKey!291 (toList!2534 (ite c!734268 lt!1537260 call!299007)) call!299009))))

(declare-fun b!4318739 () Bool)

(declare-fun Unit!67640 () Unit!67626)

(assert (=> b!4318739 (= e!2686780 Unit!67640)))

(declare-fun b!4318740 () Bool)

(assert (=> b!4318740 (= e!2686779 (isDefined!7592 (getValueByKey!291 (toList!2534 (ite c!734268 lt!1537260 call!299007)) call!299009)))))

(assert (= (and d!1269779 c!734322) b!4318738))

(assert (= (and d!1269779 (not c!734322)) b!4318739))

(assert (= (and d!1269779 (not res!1769953)) b!4318740))

(declare-fun m!4912369 () Bool)

(assert (=> d!1269779 m!4912369))

(declare-fun m!4912371 () Bool)

(assert (=> b!4318738 m!4912371))

(assert (=> b!4318738 m!4912259))

(assert (=> b!4318738 m!4912259))

(declare-fun m!4912373 () Bool)

(assert (=> b!4318738 m!4912373))

(assert (=> b!4318740 m!4912259))

(assert (=> b!4318740 m!4912259))

(assert (=> b!4318740 m!4912373))

(assert (=> bm!299004 d!1269779))

(declare-fun d!1269781 () Bool)

(declare-fun e!2686783 () Bool)

(assert (=> d!1269781 e!2686783))

(declare-fun res!1769959 () Bool)

(assert (=> d!1269781 (=> (not res!1769959) (not e!2686783))))

(declare-fun lt!1537380 () ListLongMap!1149)

(assert (=> d!1269781 (= res!1769959 (contains!10387 lt!1537380 (_1!26838 (tuple2!47109 lt!1537166 lt!1537171))))))

(declare-fun lt!1537379 () List!48477)

(assert (=> d!1269781 (= lt!1537380 (ListLongMap!1150 lt!1537379))))

(declare-fun lt!1537377 () Unit!67626)

(declare-fun lt!1537378 () Unit!67626)

(assert (=> d!1269781 (= lt!1537377 lt!1537378)))

(assert (=> d!1269781 (= (getValueByKey!291 lt!1537379 (_1!26838 (tuple2!47109 lt!1537166 lt!1537171))) (Some!10289 (_2!26838 (tuple2!47109 lt!1537166 lt!1537171))))))

(declare-fun lemmaContainsTupThenGetReturnValue!92 (List!48477 (_ BitVec 64) List!48476) Unit!67626)

(assert (=> d!1269781 (= lt!1537378 (lemmaContainsTupThenGetReturnValue!92 lt!1537379 (_1!26838 (tuple2!47109 lt!1537166 lt!1537171)) (_2!26838 (tuple2!47109 lt!1537166 lt!1537171))))))

(declare-fun insertStrictlySorted!52 (List!48477 (_ BitVec 64) List!48476) List!48477)

(assert (=> d!1269781 (= lt!1537379 (insertStrictlySorted!52 (toList!2534 call!298992) (_1!26838 (tuple2!47109 lt!1537166 lt!1537171)) (_2!26838 (tuple2!47109 lt!1537166 lt!1537171))))))

(assert (=> d!1269781 (= (+!321 call!298992 (tuple2!47109 lt!1537166 lt!1537171)) lt!1537380)))

(declare-fun b!4318745 () Bool)

(declare-fun res!1769958 () Bool)

(assert (=> b!4318745 (=> (not res!1769958) (not e!2686783))))

(assert (=> b!4318745 (= res!1769958 (= (getValueByKey!291 (toList!2534 lt!1537380) (_1!26838 (tuple2!47109 lt!1537166 lt!1537171))) (Some!10289 (_2!26838 (tuple2!47109 lt!1537166 lt!1537171)))))))

(declare-fun b!4318746 () Bool)

(assert (=> b!4318746 (= e!2686783 (contains!10390 (toList!2534 lt!1537380) (tuple2!47109 lt!1537166 lt!1537171)))))

(assert (= (and d!1269781 res!1769959) b!4318745))

(assert (= (and b!4318745 res!1769958) b!4318746))

(declare-fun m!4912375 () Bool)

(assert (=> d!1269781 m!4912375))

(declare-fun m!4912377 () Bool)

(assert (=> d!1269781 m!4912377))

(declare-fun m!4912379 () Bool)

(assert (=> d!1269781 m!4912379))

(declare-fun m!4912381 () Bool)

(assert (=> d!1269781 m!4912381))

(declare-fun m!4912383 () Bool)

(assert (=> b!4318745 m!4912383))

(declare-fun m!4912385 () Bool)

(assert (=> b!4318746 m!4912385))

(assert (=> b!4318493 d!1269781))

(declare-fun d!1269783 () Bool)

(declare-fun res!1769960 () Bool)

(declare-fun e!2686784 () Bool)

(assert (=> d!1269783 (=> res!1769960 e!2686784)))

(assert (=> d!1269783 (= res!1769960 (and ((_ is Cons!48352) lt!1537176) (= (_1!26836 (h!53808 lt!1537176)) key!2048)))))

(assert (=> d!1269783 (= (containsKey!390 lt!1537176 key!2048) e!2686784)))

(declare-fun b!4318747 () Bool)

(declare-fun e!2686785 () Bool)

(assert (=> b!4318747 (= e!2686784 e!2686785)))

(declare-fun res!1769961 () Bool)

(assert (=> b!4318747 (=> (not res!1769961) (not e!2686785))))

(assert (=> b!4318747 (= res!1769961 ((_ is Cons!48352) lt!1537176))))

(declare-fun b!4318748 () Bool)

(assert (=> b!4318748 (= e!2686785 (containsKey!390 (t!355341 lt!1537176) key!2048))))

(assert (= (and d!1269783 (not res!1769960)) b!4318747))

(assert (= (and b!4318747 res!1769961) b!4318748))

(declare-fun m!4912387 () Bool)

(assert (=> b!4318748 m!4912387))

(assert (=> d!1269685 d!1269783))

(assert (=> d!1269685 d!1269729))

(declare-fun d!1269785 () Bool)

(declare-fun res!1769966 () Bool)

(declare-fun e!2686790 () Bool)

(assert (=> d!1269785 (=> res!1769966 e!2686790)))

(assert (=> d!1269785 (= res!1769966 (and ((_ is Cons!48353) lt!1537246) (= (_1!26838 (h!53809 lt!1537246)) lt!1537248)))))

(assert (=> d!1269785 (= (containsKey!391 lt!1537246 lt!1537248) e!2686790)))

(declare-fun b!4318753 () Bool)

(declare-fun e!2686791 () Bool)

(assert (=> b!4318753 (= e!2686790 e!2686791)))

(declare-fun res!1769967 () Bool)

(assert (=> b!4318753 (=> (not res!1769967) (not e!2686791))))

(assert (=> b!4318753 (= res!1769967 (and (or (not ((_ is Cons!48353) lt!1537246)) (bvsle (_1!26838 (h!53809 lt!1537246)) lt!1537248)) ((_ is Cons!48353) lt!1537246) (bvslt (_1!26838 (h!53809 lt!1537246)) lt!1537248)))))

(declare-fun b!4318754 () Bool)

(assert (=> b!4318754 (= e!2686791 (containsKey!391 (t!355342 lt!1537246) lt!1537248))))

(assert (= (and d!1269785 (not res!1769966)) b!4318753))

(assert (= (and b!4318753 res!1769967) b!4318754))

(declare-fun m!4912389 () Bool)

(assert (=> b!4318754 m!4912389))

(assert (=> b!4318532 d!1269785))

(declare-fun d!1269787 () Bool)

(assert (=> d!1269787 (containsKey!391 lt!1537246 lt!1537248)))

(declare-fun lt!1537383 () Unit!67626)

(declare-fun choose!26361 (List!48477 (_ BitVec 64)) Unit!67626)

(assert (=> d!1269787 (= lt!1537383 (choose!26361 lt!1537246 lt!1537248))))

(declare-fun e!2686794 () Bool)

(assert (=> d!1269787 e!2686794))

(declare-fun res!1769970 () Bool)

(assert (=> d!1269787 (=> (not res!1769970) (not e!2686794))))

(declare-fun isStrictlySorted!19 (List!48477) Bool)

(assert (=> d!1269787 (= res!1769970 (isStrictlySorted!19 lt!1537246))))

(assert (=> d!1269787 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!159 lt!1537246 lt!1537248) lt!1537383)))

(declare-fun b!4318757 () Bool)

(assert (=> b!4318757 (= e!2686794 (isDefined!7592 (getValueByKey!291 lt!1537246 lt!1537248)))))

(assert (= (and d!1269787 res!1769970) b!4318757))

(assert (=> d!1269787 m!4912113))

(declare-fun m!4912391 () Bool)

(assert (=> d!1269787 m!4912391))

(declare-fun m!4912393 () Bool)

(assert (=> d!1269787 m!4912393))

(declare-fun m!4912395 () Bool)

(assert (=> b!4318757 m!4912395))

(assert (=> b!4318757 m!4912395))

(declare-fun m!4912397 () Bool)

(assert (=> b!4318757 m!4912397))

(assert (=> b!4318532 d!1269787))

(assert (=> b!4318532 d!1269749))

(declare-fun d!1269789 () Bool)

(declare-fun isEmpty!28106 (Option!10290) Bool)

(assert (=> d!1269789 (= (isDefined!7592 (getValueByKey!291 lt!1537251 lt!1537248)) (not (isEmpty!28106 (getValueByKey!291 lt!1537251 lt!1537248))))))

(declare-fun bs!606089 () Bool)

(assert (= bs!606089 d!1269789))

(assert (=> bs!606089 m!4912109))

(declare-fun m!4912399 () Bool)

(assert (=> bs!606089 m!4912399))

(assert (=> b!4318532 d!1269789))

(declare-fun b!4318766 () Bool)

(declare-fun e!2686799 () Option!10290)

(assert (=> b!4318766 (= e!2686799 (Some!10289 (_2!26838 (h!53809 lt!1537251))))))

(declare-fun b!4318767 () Bool)

(declare-fun e!2686800 () Option!10290)

(assert (=> b!4318767 (= e!2686799 e!2686800)))

(declare-fun c!734328 () Bool)

(assert (=> b!4318767 (= c!734328 (and ((_ is Cons!48353) lt!1537251) (not (= (_1!26838 (h!53809 lt!1537251)) lt!1537248))))))

(declare-fun b!4318768 () Bool)

(assert (=> b!4318768 (= e!2686800 (getValueByKey!291 (t!355342 lt!1537251) lt!1537248))))

(declare-fun d!1269791 () Bool)

(declare-fun c!734327 () Bool)

(assert (=> d!1269791 (= c!734327 (and ((_ is Cons!48353) lt!1537251) (= (_1!26838 (h!53809 lt!1537251)) lt!1537248)))))

(assert (=> d!1269791 (= (getValueByKey!291 lt!1537251 lt!1537248) e!2686799)))

(declare-fun b!4318769 () Bool)

(assert (=> b!4318769 (= e!2686800 None!10289)))

(assert (= (and d!1269791 c!734327) b!4318766))

(assert (= (and d!1269791 (not c!734327)) b!4318767))

(assert (= (and b!4318767 c!734328) b!4318768))

(assert (= (and b!4318767 (not c!734328)) b!4318769))

(declare-fun m!4912401 () Bool)

(assert (=> b!4318768 m!4912401))

(assert (=> b!4318532 d!1269791))

(declare-fun d!1269793 () Bool)

(assert (=> d!1269793 (contains!10390 lt!1537250 (tuple2!47109 lt!1537248 lt!1537257))))

(declare-fun lt!1537386 () Unit!67626)

(declare-fun choose!26362 (List!48477 (_ BitVec 64) List!48476) Unit!67626)

(assert (=> d!1269793 (= lt!1537386 (choose!26362 lt!1537250 lt!1537248 lt!1537257))))

(declare-fun e!2686803 () Bool)

(assert (=> d!1269793 e!2686803))

(declare-fun res!1769973 () Bool)

(assert (=> d!1269793 (=> (not res!1769973) (not e!2686803))))

(assert (=> d!1269793 (= res!1769973 (isStrictlySorted!19 lt!1537250))))

(assert (=> d!1269793 (= (lemmaGetValueByKeyImpliesContainsTuple!170 lt!1537250 lt!1537248 lt!1537257) lt!1537386)))

(declare-fun b!4318772 () Bool)

(assert (=> b!4318772 (= e!2686803 (= (getValueByKey!291 lt!1537250 lt!1537248) (Some!10289 lt!1537257)))))

(assert (= (and d!1269793 res!1769973) b!4318772))

(assert (=> d!1269793 m!4912115))

(declare-fun m!4912403 () Bool)

(assert (=> d!1269793 m!4912403))

(declare-fun m!4912405 () Bool)

(assert (=> d!1269793 m!4912405))

(declare-fun m!4912407 () Bool)

(assert (=> b!4318772 m!4912407))

(assert (=> b!4318532 d!1269793))

(assert (=> b!4318532 d!1269707))

(declare-fun d!1269795 () Bool)

(declare-fun lt!1537387 () Bool)

(assert (=> d!1269795 (= lt!1537387 (select (content!7566 lt!1537250) (tuple2!47109 lt!1537248 lt!1537257)))))

(declare-fun e!2686804 () Bool)

(assert (=> d!1269795 (= lt!1537387 e!2686804)))

(declare-fun res!1769975 () Bool)

(assert (=> d!1269795 (=> (not res!1769975) (not e!2686804))))

(assert (=> d!1269795 (= res!1769975 ((_ is Cons!48353) lt!1537250))))

(assert (=> d!1269795 (= (contains!10390 lt!1537250 (tuple2!47109 lt!1537248 lt!1537257)) lt!1537387)))

(declare-fun b!4318773 () Bool)

(declare-fun e!2686805 () Bool)

(assert (=> b!4318773 (= e!2686804 e!2686805)))

(declare-fun res!1769974 () Bool)

(assert (=> b!4318773 (=> res!1769974 e!2686805)))

(assert (=> b!4318773 (= res!1769974 (= (h!53809 lt!1537250) (tuple2!47109 lt!1537248 lt!1537257)))))

(declare-fun b!4318774 () Bool)

(assert (=> b!4318774 (= e!2686805 (contains!10390 (t!355342 lt!1537250) (tuple2!47109 lt!1537248 lt!1537257)))))

(assert (= (and d!1269795 res!1769975) b!4318773))

(assert (= (and b!4318773 (not res!1769974)) b!4318774))

(declare-fun m!4912409 () Bool)

(assert (=> d!1269795 m!4912409))

(declare-fun m!4912411 () Bool)

(assert (=> d!1269795 m!4912411))

(declare-fun m!4912413 () Bool)

(assert (=> b!4318774 m!4912413))

(assert (=> b!4318532 d!1269795))

(declare-fun d!1269797 () Bool)

(assert (=> d!1269797 (isDefined!7592 (getValueByKey!291 lt!1537251 lt!1537248))))

(declare-fun lt!1537390 () Unit!67626)

(declare-fun choose!26363 (List!48477 (_ BitVec 64)) Unit!67626)

(assert (=> d!1269797 (= lt!1537390 (choose!26363 lt!1537251 lt!1537248))))

(declare-fun e!2686808 () Bool)

(assert (=> d!1269797 e!2686808))

(declare-fun res!1769978 () Bool)

(assert (=> d!1269797 (=> (not res!1769978) (not e!2686808))))

(assert (=> d!1269797 (= res!1769978 (isStrictlySorted!19 lt!1537251))))

(assert (=> d!1269797 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!210 lt!1537251 lt!1537248) lt!1537390)))

(declare-fun b!4318777 () Bool)

(assert (=> b!4318777 (= e!2686808 (containsKey!391 lt!1537251 lt!1537248))))

(assert (= (and d!1269797 res!1769978) b!4318777))

(assert (=> d!1269797 m!4912109))

(assert (=> d!1269797 m!4912109))

(assert (=> d!1269797 m!4912111))

(declare-fun m!4912415 () Bool)

(assert (=> d!1269797 m!4912415))

(declare-fun m!4912417 () Bool)

(assert (=> d!1269797 m!4912417))

(declare-fun m!4912419 () Bool)

(assert (=> b!4318777 m!4912419))

(assert (=> b!4318532 d!1269797))

(declare-fun d!1269799 () Bool)

(declare-fun e!2686809 () Bool)

(assert (=> d!1269799 e!2686809))

(declare-fun res!1769979 () Bool)

(assert (=> d!1269799 (=> res!1769979 e!2686809)))

(declare-fun lt!1537391 () Bool)

(assert (=> d!1269799 (= res!1769979 (not lt!1537391))))

(declare-fun lt!1537392 () Bool)

(assert (=> d!1269799 (= lt!1537391 lt!1537392)))

(declare-fun lt!1537393 () Unit!67626)

(declare-fun e!2686810 () Unit!67626)

(assert (=> d!1269799 (= lt!1537393 e!2686810)))

(declare-fun c!734329 () Bool)

(assert (=> d!1269799 (= c!734329 lt!1537392)))

(assert (=> d!1269799 (= lt!1537392 (containsKey!391 (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308)))) lt!1537166))))

(assert (=> d!1269799 (= (contains!10387 (map!10376 (v!42686 (underlying!9712 thiss!42308))) lt!1537166) lt!1537391)))

(declare-fun b!4318778 () Bool)

(declare-fun lt!1537394 () Unit!67626)

(assert (=> b!4318778 (= e!2686810 lt!1537394)))

(assert (=> b!4318778 (= lt!1537394 (lemmaContainsKeyImpliesGetValueByKeyDefined!210 (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308)))) lt!1537166))))

(assert (=> b!4318778 (isDefined!7592 (getValueByKey!291 (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308)))) lt!1537166))))

(declare-fun b!4318779 () Bool)

(declare-fun Unit!67641 () Unit!67626)

(assert (=> b!4318779 (= e!2686810 Unit!67641)))

(declare-fun b!4318780 () Bool)

(assert (=> b!4318780 (= e!2686809 (isDefined!7592 (getValueByKey!291 (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308)))) lt!1537166)))))

(assert (= (and d!1269799 c!734329) b!4318778))

(assert (= (and d!1269799 (not c!734329)) b!4318779))

(assert (= (and d!1269799 (not res!1769979)) b!4318780))

(declare-fun m!4912421 () Bool)

(assert (=> d!1269799 m!4912421))

(declare-fun m!4912423 () Bool)

(assert (=> b!4318778 m!4912423))

(assert (=> b!4318778 m!4912093))

(assert (=> b!4318778 m!4912093))

(declare-fun m!4912425 () Bool)

(assert (=> b!4318778 m!4912425))

(assert (=> b!4318780 m!4912093))

(assert (=> b!4318780 m!4912093))

(assert (=> b!4318780 m!4912425))

(assert (=> d!1269697 d!1269799))

(assert (=> d!1269697 d!1269707))

(declare-fun b!4318801 () Bool)

(declare-fun e!2686821 () Bool)

(declare-fun call!299036 () Bool)

(assert (=> b!4318801 (= e!2686821 call!299036)))

(declare-fun b!4318802 () Bool)

(declare-fun e!2686824 () Bool)

(assert (=> b!4318802 (= e!2686824 (not (= (bvand (extraKeys!4990 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!299029 () Bool)

(declare-fun call!299034 () ListLongMap!1149)

(assert (=> bm!299029 (= call!299034 (getCurrentListMap!22 (_keys!5041 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (_values!5022 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (mask!13340 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (extraKeys!4990 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (zeroValue!5000 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (minValue!5000 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5126 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308)))))))))

(declare-fun lt!1537439 () SeekEntryResult!19)

(declare-fun bm!299030 () Bool)

(declare-fun call!299035 () Bool)

(declare-fun c!734343 () Bool)

(assert (=> bm!299030 (= call!299035 (contains!10387 call!299034 (ite c!734343 (select (arr!7667 (_keys!5041 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308)))))) (index!1455 lt!1537439)) lt!1537166)))))

(declare-fun b!4318803 () Bool)

(declare-fun e!2686822 () Unit!67626)

(declare-fun Unit!67642 () Unit!67626)

(assert (=> b!4318803 (= e!2686822 Unit!67642)))

(declare-fun b!4318804 () Bool)

(declare-fun e!2686823 () Bool)

(assert (=> b!4318804 (= e!2686823 false)))

(declare-fun c!734340 () Bool)

(assert (=> b!4318804 (= c!734340 call!299035)))

(declare-fun lt!1537429 () Unit!67626)

(assert (=> b!4318804 (= lt!1537429 e!2686822)))

(declare-fun b!4318805 () Bool)

(assert (=> b!4318805 (= e!2686823 true)))

(declare-fun lt!1537426 () Unit!67626)

(assert (=> b!4318805 (= lt!1537426 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5041 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) lt!1537166 (index!1455 lt!1537439)))))

(assert (=> b!4318805 call!299036))

(declare-fun lt!1537430 () Unit!67626)

(assert (=> b!4318805 (= lt!1537430 lt!1537426)))

(declare-fun lt!1537431 () Unit!67626)

(assert (=> b!4318805 (= lt!1537431 (lemmaValidKeyInArrayIsInListMap!12 (_keys!5041 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (_values!5022 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (mask!13340 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (extraKeys!4990 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (zeroValue!5000 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (minValue!5000 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (index!1455 lt!1537439) (defaultEntry!5126 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308)))))))))

(assert (=> b!4318805 call!299035))

(declare-fun lt!1537434 () Unit!67626)

(assert (=> b!4318805 (= lt!1537434 lt!1537431)))

(declare-fun bm!299031 () Bool)

(assert (=> bm!299031 (= call!299036 (arrayContainsKey!0 (_keys!5041 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) lt!1537166 #b00000000000000000000000000000000))))

(declare-fun b!4318806 () Bool)

(declare-fun e!2686825 () Bool)

(assert (=> b!4318806 (= e!2686825 e!2686824)))

(declare-fun c!734342 () Bool)

(assert (=> b!4318806 (= c!734342 (= lt!1537166 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4318807 () Bool)

(assert (=> b!4318807 (= e!2686825 (not (= (bvand (extraKeys!4990 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!4318808 () Bool)

(assert (=> b!4318808 (= c!734343 ((_ is Found!19) lt!1537439))))

(assert (=> b!4318808 (= lt!1537439 (seekEntry!0 lt!1537166 (_keys!5041 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (mask!13340 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308)))))))))

(assert (=> b!4318808 (= e!2686824 e!2686823)))

(declare-fun b!4318809 () Bool)

(assert (=> b!4318809 (= e!2686821 (ite (= lt!1537166 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!4990 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4990 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!4318810 () Bool)

(assert (=> b!4318810 false))

(declare-fun lt!1537436 () Unit!67626)

(declare-fun lt!1537428 () Unit!67626)

(assert (=> b!4318810 (= lt!1537436 lt!1537428)))

(declare-fun lt!1537432 () SeekEntryResult!19)

(declare-fun lt!1537438 () (_ BitVec 32))

(assert (=> b!4318810 (and ((_ is Found!19) lt!1537432) (= (index!1455 lt!1537432) lt!1537438))))

(assert (=> b!4318810 (= lt!1537432 (seekEntry!0 lt!1537166 (_keys!5041 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (mask!13340 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308)))))))))

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!17176 (_ BitVec 32)) Unit!67626)

(assert (=> b!4318810 (= lt!1537428 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 lt!1537166 lt!1537438 (_keys!5041 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (mask!13340 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308)))))))))

(declare-fun lt!1537433 () Unit!67626)

(declare-fun lt!1537435 () Unit!67626)

(assert (=> b!4318810 (= lt!1537433 lt!1537435)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17176 (_ BitVec 32)) Bool)

(assert (=> b!4318810 (arrayForallSeekEntryOrOpenFound!0 lt!1537438 (_keys!5041 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (mask!13340 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!17176 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!67626)

(assert (=> b!4318810 (= lt!1537435 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!5041 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (mask!13340 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) #b00000000000000000000000000000000 lt!1537438))))

(declare-fun arrayScanForKey!0 (array!17176 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!4318810 (= lt!1537438 (arrayScanForKey!0 (_keys!5041 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) lt!1537166 #b00000000000000000000000000000000))))

(declare-fun lt!1537437 () Unit!67626)

(declare-fun lt!1537427 () Unit!67626)

(assert (=> b!4318810 (= lt!1537437 lt!1537427)))

(assert (=> b!4318810 e!2686821))

(declare-fun c!734344 () Bool)

(assert (=> b!4318810 (= c!734344 (and (not (= lt!1537166 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!1537166 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lemmaKeyInListMapIsInArray!15 (array!17176 array!17178 (_ BitVec 32) (_ BitVec 32) List!48476 List!48476 (_ BitVec 64) Int) Unit!67626)

(assert (=> b!4318810 (= lt!1537427 (lemmaKeyInListMapIsInArray!15 (_keys!5041 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (_values!5022 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (mask!13340 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (extraKeys!4990 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (zeroValue!5000 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (minValue!5000 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) lt!1537166 (defaultEntry!5126 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308)))))))))

(declare-fun Unit!67643 () Unit!67626)

(assert (=> b!4318810 (= e!2686822 Unit!67643)))

(declare-fun d!1269801 () Bool)

(declare-fun lt!1537425 () Bool)

(assert (=> d!1269801 (= lt!1537425 (contains!10387 (map!10378 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) lt!1537166))))

(assert (=> d!1269801 (= lt!1537425 e!2686825)))

(declare-fun c!734341 () Bool)

(assert (=> d!1269801 (= c!734341 (= lt!1537166 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!1269801 (valid!3751 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308)))))))

(assert (=> d!1269801 (= (contains!10388 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308)))) lt!1537166) lt!1537425)))

(assert (= (and d!1269801 c!734341) b!4318807))

(assert (= (and d!1269801 (not c!734341)) b!4318806))

(assert (= (and b!4318806 c!734342) b!4318802))

(assert (= (and b!4318806 (not c!734342)) b!4318808))

(assert (= (and b!4318808 c!734343) b!4318805))

(assert (= (and b!4318808 (not c!734343)) b!4318804))

(assert (= (and b!4318804 c!734340) b!4318810))

(assert (= (and b!4318804 (not c!734340)) b!4318803))

(assert (= (and b!4318810 c!734344) b!4318801))

(assert (= (and b!4318810 (not c!734344)) b!4318809))

(assert (= (or b!4318805 b!4318801) bm!299031))

(assert (= (or b!4318805 b!4318804) bm!299029))

(assert (= (or b!4318805 b!4318804) bm!299030))

(assert (=> bm!299031 m!4912357))

(assert (=> bm!299029 m!4912319))

(declare-fun m!4912427 () Bool)

(assert (=> b!4318805 m!4912427))

(declare-fun m!4912429 () Bool)

(assert (=> b!4318805 m!4912429))

(declare-fun m!4912431 () Bool)

(assert (=> bm!299030 m!4912431))

(declare-fun m!4912433 () Bool)

(assert (=> bm!299030 m!4912433))

(assert (=> d!1269801 m!4912149))

(assert (=> d!1269801 m!4912149))

(declare-fun m!4912435 () Bool)

(assert (=> d!1269801 m!4912435))

(assert (=> d!1269801 m!4912231))

(declare-fun m!4912437 () Bool)

(assert (=> b!4318810 m!4912437))

(assert (=> b!4318810 m!4912345))

(declare-fun m!4912439 () Bool)

(assert (=> b!4318810 m!4912439))

(declare-fun m!4912441 () Bool)

(assert (=> b!4318810 m!4912441))

(declare-fun m!4912443 () Bool)

(assert (=> b!4318810 m!4912443))

(declare-fun m!4912445 () Bool)

(assert (=> b!4318810 m!4912445))

(assert (=> b!4318808 m!4912345))

(assert (=> d!1269697 d!1269801))

(assert (=> d!1269697 d!1269741))

(declare-fun bm!299080 () Bool)

(declare-fun call!299108 () Bool)

(declare-fun call!299094 () Bool)

(assert (=> bm!299080 (= call!299108 call!299094)))

(declare-fun b!4318891 () Bool)

(declare-fun e!2686876 () Bool)

(declare-fun call!299105 () Bool)

(assert (=> b!4318891 (= e!2686876 (not call!299105))))

(declare-fun b!4318892 () Bool)

(declare-fun res!1770012 () Bool)

(declare-fun call!299088 () Bool)

(assert (=> b!4318892 (= res!1770012 call!299088)))

(declare-fun e!2686884 () Bool)

(assert (=> b!4318892 (=> (not res!1770012) (not e!2686884))))

(declare-fun b!4318893 () Bool)

(declare-fun e!2686881 () Unit!67626)

(declare-fun Unit!67644 () Unit!67626)

(assert (=> b!4318893 (= e!2686881 Unit!67644)))

(declare-fun lt!1537515 () Unit!67626)

(declare-fun call!299091 () Unit!67626)

(assert (=> b!4318893 (= lt!1537515 call!299091)))

(declare-fun lt!1537514 () SeekEntryResult!19)

(declare-fun call!299100 () SeekEntryResult!19)

(assert (=> b!4318893 (= lt!1537514 call!299100)))

(declare-fun c!734381 () Bool)

(assert (=> b!4318893 (= c!734381 ((_ is MissingZero!19) lt!1537514))))

(declare-fun e!2686875 () Bool)

(assert (=> b!4318893 e!2686875))

(declare-fun lt!1537512 () Unit!67626)

(assert (=> b!4318893 (= lt!1537512 lt!1537515)))

(assert (=> b!4318893 false))

(declare-fun bm!299081 () Bool)

(declare-fun call!299101 () Bool)

(assert (=> bm!299081 (= call!299101 call!299108)))

(declare-fun b!4318894 () Bool)

(declare-fun c!734375 () Bool)

(assert (=> b!4318894 (= c!734375 ((_ is MissingVacant!19) lt!1537514))))

(declare-fun e!2686873 () Bool)

(assert (=> b!4318894 (= e!2686875 e!2686873)))

(declare-fun b!4318895 () Bool)

(declare-fun res!1770018 () Bool)

(assert (=> b!4318895 (=> (not res!1770018) (not e!2686876))))

(assert (=> b!4318895 (= res!1770018 call!299101)))

(assert (=> b!4318895 (= e!2686875 e!2686876)))

(declare-fun b!4318896 () Bool)

(declare-fun res!1770014 () Bool)

(declare-fun e!2686870 () Bool)

(assert (=> b!4318896 (=> (not res!1770014) (not e!2686870))))

(declare-fun lt!1537497 () SeekEntryResult!19)

(assert (=> b!4318896 (= res!1770014 (= (select (arr!7667 (_keys!5041 (v!42685 (underlying!9711 (_2!26837 lt!1537194))))) (index!1456 lt!1537497)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4318897 () Bool)

(declare-fun e!2686887 () Bool)

(declare-fun e!2686877 () Bool)

(assert (=> b!4318897 (= e!2686887 e!2686877)))

(declare-fun res!1770021 () Bool)

(declare-fun call!299085 () Bool)

(assert (=> b!4318897 (= res!1770021 call!299085)))

(assert (=> b!4318897 (=> (not res!1770021) (not e!2686877))))

(declare-fun bm!299082 () Bool)

(declare-fun call!299089 () Bool)

(declare-fun call!299086 () Bool)

(assert (=> bm!299082 (= call!299089 call!299086)))

(declare-fun bm!299083 () Bool)

(declare-fun c!734372 () Bool)

(declare-fun c!734373 () Bool)

(assert (=> bm!299083 (= c!734372 c!734373)))

(declare-fun call!299097 () Bool)

(declare-fun e!2686882 () ListLongMap!1149)

(declare-fun lt!1537507 () SeekEntryResult!19)

(assert (=> bm!299083 (= call!299097 (contains!10387 e!2686882 (ite c!734373 lt!1537166 (select (arr!7667 (_keys!5041 (v!42685 (underlying!9711 (_2!26837 lt!1537194))))) (index!1455 lt!1537507)))))))

(declare-fun b!4318898 () Bool)

(declare-fun e!2686868 () tuple2!47110)

(declare-fun e!2686872 () tuple2!47110)

(assert (=> b!4318898 (= e!2686868 e!2686872)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17176 (_ BitVec 32)) SeekEntryResult!19)

(assert (=> b!4318898 (= lt!1537507 (seekEntryOrOpen!0 lt!1537166 (_keys!5041 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (mask!13340 (v!42685 (underlying!9711 (_2!26837 lt!1537194))))))))

(assert (=> b!4318898 (= c!734373 ((_ is Undefined!19) lt!1537507))))

(declare-fun b!4318899 () Bool)

(declare-fun res!1770008 () Bool)

(assert (=> b!4318899 (= res!1770008 call!299108)))

(declare-fun e!2686871 () Bool)

(assert (=> b!4318899 (=> (not res!1770008) (not e!2686871))))

(declare-fun bm!299084 () Bool)

(assert (=> bm!299084 (= call!299085 call!299088)))

(declare-fun call!299087 () ListLongMap!1149)

(declare-fun c!734376 () Bool)

(declare-fun c!734371 () Bool)

(declare-fun call!299090 () ListLongMap!1149)

(declare-fun bm!299085 () Bool)

(declare-fun call!299093 () ListLongMap!1149)

(declare-fun call!299102 () ListLongMap!1149)

(assert (=> bm!299085 (= call!299090 (+!321 (ite c!734376 (ite c!734371 call!299102 call!299087) call!299093) (ite c!734376 (ite c!734371 (tuple2!47109 #b0000000000000000000000000000000000000000000000000000000000000000 lt!1537171) (tuple2!47109 #b1000000000000000000000000000000000000000000000000000000000000000 lt!1537171)) (tuple2!47109 lt!1537166 lt!1537171))))))

(declare-fun bm!299086 () Bool)

(declare-fun call!299092 () ListLongMap!1149)

(assert (=> bm!299086 (= call!299093 call!299092)))

(declare-fun b!4318900 () Bool)

(declare-fun e!2686874 () Bool)

(declare-fun e!2686880 () Bool)

(assert (=> b!4318900 (= e!2686874 e!2686880)))

(declare-fun res!1770010 () Bool)

(declare-fun call!299099 () ListLongMap!1149)

(assert (=> b!4318900 (= res!1770010 (contains!10387 call!299099 lt!1537166))))

(assert (=> b!4318900 (=> (not res!1770010) (not e!2686880))))

(declare-fun bm!299087 () Bool)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!9 (array!17176 array!17178 (_ BitVec 32) (_ BitVec 32) List!48476 List!48476 (_ BitVec 64) Int) Unit!67626)

(assert (=> bm!299087 (= call!299091 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!9 (_keys!5041 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (_values!5022 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (mask!13340 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (extraKeys!4990 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (zeroValue!5000 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (minValue!5000 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) lt!1537166 (defaultEntry!5126 (v!42685 (underlying!9711 (_2!26837 lt!1537194))))))))

(declare-fun b!4318901 () Bool)

(declare-fun lt!1537520 () Unit!67626)

(declare-fun lt!1537504 () Unit!67626)

(assert (=> b!4318901 (= lt!1537520 lt!1537504)))

(assert (=> b!4318901 call!299097))

(declare-fun lt!1537511 () array!17178)

(assert (=> b!4318901 (= lt!1537504 (lemmaValidKeyInArrayIsInListMap!12 (_keys!5041 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) lt!1537511 (mask!13340 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (extraKeys!4990 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (zeroValue!5000 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (minValue!5000 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (index!1455 lt!1537507) (defaultEntry!5126 (v!42685 (underlying!9711 (_2!26837 lt!1537194))))))))

(assert (=> b!4318901 (= lt!1537511 (array!17179 (store (arr!7668 (_values!5022 (v!42685 (underlying!9711 (_2!26837 lt!1537194))))) (index!1455 lt!1537507) lt!1537171) (size!35707 (_values!5022 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))))))))

(declare-fun lt!1537499 () Unit!67626)

(declare-fun lt!1537517 () Unit!67626)

(assert (=> b!4318901 (= lt!1537499 lt!1537517)))

(declare-fun call!299104 () ListLongMap!1149)

(assert (=> b!4318901 (= call!299090 call!299104)))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!9 (array!17176 array!17178 (_ BitVec 32) (_ BitVec 32) List!48476 List!48476 (_ BitVec 32) (_ BitVec 64) List!48476 Int) Unit!67626)

(assert (=> b!4318901 (= lt!1537517 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!9 (_keys!5041 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (_values!5022 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (mask!13340 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (extraKeys!4990 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (zeroValue!5000 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (minValue!5000 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (index!1455 lt!1537507) lt!1537166 lt!1537171 (defaultEntry!5126 (v!42685 (underlying!9711 (_2!26837 lt!1537194))))))))

(declare-fun lt!1537505 () Unit!67626)

(assert (=> b!4318901 (= lt!1537505 e!2686881)))

(declare-fun c!734380 () Bool)

(assert (=> b!4318901 (= c!734380 (contains!10387 call!299093 lt!1537166))))

(declare-fun e!2686879 () tuple2!47110)

(assert (=> b!4318901 (= e!2686879 (tuple2!47111 true (LongMapFixedSize!9483 (defaultEntry!5126 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (mask!13340 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (extraKeys!4990 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (zeroValue!5000 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (minValue!5000 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (_size!9525 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (_keys!5041 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (array!17179 (store (arr!7668 (_values!5022 (v!42685 (underlying!9711 (_2!26837 lt!1537194))))) (index!1455 lt!1537507) lt!1537171) (size!35707 (_values!5022 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))))) (_vacant!4802 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))))))))

(declare-fun bm!299088 () Bool)

(declare-fun call!299095 () SeekEntryResult!19)

(assert (=> bm!299088 (= call!299095 (seekEntryOrOpen!0 lt!1537166 (_keys!5041 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (mask!13340 (v!42685 (underlying!9711 (_2!26837 lt!1537194))))))))

(declare-fun lt!1537502 () SeekEntryResult!19)

(declare-fun c!734383 () Bool)

(declare-fun lt!1537510 () SeekEntryResult!19)

(declare-fun bm!299089 () Bool)

(declare-fun c!734382 () Bool)

(assert (=> bm!299089 (= call!299094 (inRange!0 (ite c!734373 (ite c!734383 (index!1455 lt!1537510) (ite c!734382 (index!1456 lt!1537497) (index!1457 lt!1537497))) (ite c!734380 (index!1455 lt!1537502) (ite c!734381 (index!1456 lt!1537514) (index!1457 lt!1537514)))) (mask!13340 (v!42685 (underlying!9711 (_2!26837 lt!1537194))))))))

(declare-fun b!4318902 () Bool)

(declare-fun e!2686885 () Bool)

(assert (=> b!4318902 (= e!2686885 e!2686874)))

(declare-fun c!734374 () Bool)

(declare-fun lt!1537501 () tuple2!47110)

(assert (=> b!4318902 (= c!734374 (_1!26839 lt!1537501))))

(declare-fun b!4318903 () Bool)

(assert (=> b!4318903 (= e!2686870 (not call!299089))))

(declare-fun b!4318904 () Bool)

(declare-fun lt!1537500 () Unit!67626)

(declare-fun lt!1537495 () Unit!67626)

(assert (=> b!4318904 (= lt!1537500 lt!1537495)))

(declare-fun call!299106 () ListLongMap!1149)

(assert (=> b!4318904 (= call!299106 call!299102)))

(declare-fun lt!1537496 () (_ BitVec 32))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!9 (array!17176 array!17178 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) List!48476 List!48476 List!48476 Int) Unit!67626)

(assert (=> b!4318904 (= lt!1537495 (lemmaChangeLongMinValueKeyThenAddPairToListMap!9 (_keys!5041 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (_values!5022 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (mask!13340 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (extraKeys!4990 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) lt!1537496 (zeroValue!5000 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (minValue!5000 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) lt!1537171 (defaultEntry!5126 (v!42685 (underlying!9711 (_2!26837 lt!1537194))))))))

(assert (=> b!4318904 (= lt!1537496 (bvor (extraKeys!4990 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) #b00000000000000000000000000000010))))

(declare-fun e!2686888 () tuple2!47110)

(assert (=> b!4318904 (= e!2686888 (tuple2!47111 true (LongMapFixedSize!9483 (defaultEntry!5126 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (mask!13340 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (bvor (extraKeys!4990 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) #b00000000000000000000000000000010) (zeroValue!5000 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) lt!1537171 (_size!9525 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (_keys!5041 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (_values!5022 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (_vacant!4802 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))))))))

(declare-fun bm!299090 () Bool)

(assert (=> bm!299090 (= call!299100 call!299095)))

(declare-fun b!4318905 () Bool)

(assert (=> b!4318905 (= e!2686868 e!2686888)))

(assert (=> b!4318905 (= c!734371 (= lt!1537166 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4318906 () Bool)

(declare-fun e!2686886 () tuple2!47110)

(declare-fun lt!1537513 () tuple2!47110)

(assert (=> b!4318906 (= e!2686886 (tuple2!47111 (_1!26839 lt!1537513) (_2!26839 lt!1537513)))))

(declare-fun call!299096 () tuple2!47110)

(assert (=> b!4318906 (= lt!1537513 call!299096)))

(declare-fun bm!299091 () Bool)

(declare-fun c!734377 () Bool)

(declare-fun updateHelperNewKey!9 (LongMapFixedSize!9482 (_ BitVec 64) List!48476 (_ BitVec 32)) tuple2!47110)

(assert (=> bm!299091 (= call!299096 (updateHelperNewKey!9 (v!42685 (underlying!9711 (_2!26837 lt!1537194))) lt!1537166 lt!1537171 (ite c!734377 (index!1457 lt!1537507) (index!1456 lt!1537507))))))

(declare-fun b!4318907 () Bool)

(declare-fun res!1770016 () Bool)

(assert (=> b!4318907 (= res!1770016 (= (select (arr!7667 (_keys!5041 (v!42685 (underlying!9711 (_2!26837 lt!1537194))))) (index!1457 lt!1537514)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!2686878 () Bool)

(assert (=> b!4318907 (=> (not res!1770016) (not e!2686878))))

(declare-fun b!4318908 () Bool)

(declare-fun call!299107 () ListLongMap!1149)

(assert (=> b!4318908 (= e!2686874 (= call!299099 call!299107))))

(declare-fun b!4318909 () Bool)

(assert (=> b!4318909 (= e!2686886 e!2686879)))

(declare-fun c!734379 () Bool)

(assert (=> b!4318909 (= c!734379 ((_ is MissingZero!19) lt!1537507))))

(declare-fun bm!299092 () Bool)

(assert (=> bm!299092 (= call!299088 call!299094)))

(declare-fun b!4318910 () Bool)

(declare-fun res!1770017 () Bool)

(assert (=> b!4318910 (= res!1770017 (= (select (arr!7667 (_keys!5041 (v!42685 (underlying!9711 (_2!26837 lt!1537194))))) (index!1457 lt!1537497)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!4318910 (=> (not res!1770017) (not e!2686877))))

(declare-fun b!4318911 () Bool)

(declare-fun lt!1537494 () tuple2!47110)

(assert (=> b!4318911 (= lt!1537494 call!299096)))

(assert (=> b!4318911 (= e!2686879 (tuple2!47111 (_1!26839 lt!1537494) (_2!26839 lt!1537494)))))

(declare-fun b!4318912 () Bool)

(assert (=> b!4318912 (= e!2686882 (getCurrentListMap!22 (_keys!5041 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) lt!1537511 (mask!13340 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (extraKeys!4990 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (zeroValue!5000 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (minValue!5000 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) #b00000000000000000000000000000000 (defaultEntry!5126 (v!42685 (underlying!9711 (_2!26837 lt!1537194))))))))

(declare-fun b!4318913 () Bool)

(declare-fun e!2686883 () Unit!67626)

(declare-fun lt!1537516 () Unit!67626)

(assert (=> b!4318913 (= e!2686883 lt!1537516)))

(assert (=> b!4318913 (= lt!1537516 call!299091)))

(declare-fun call!299103 () SeekEntryResult!19)

(assert (=> b!4318913 (= lt!1537497 call!299103)))

(assert (=> b!4318913 (= c!734382 ((_ is MissingZero!19) lt!1537497))))

(declare-fun e!2686869 () Bool)

(assert (=> b!4318913 e!2686869))

(declare-fun bm!299093 () Bool)

(assert (=> bm!299093 (= call!299107 (map!10378 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))))))

(declare-fun b!4318914 () Bool)

(assert (=> b!4318914 (= e!2686873 e!2686878)))

(declare-fun res!1770013 () Bool)

(assert (=> b!4318914 (= res!1770013 call!299101)))

(assert (=> b!4318914 (=> (not res!1770013) (not e!2686878))))

(declare-fun bm!299094 () Bool)

(assert (=> bm!299094 (= call!299087 call!299104)))

(declare-fun b!4318915 () Bool)

(assert (=> b!4318915 (= e!2686882 call!299093)))

(declare-fun b!4318916 () Bool)

(declare-fun Unit!67645 () Unit!67626)

(assert (=> b!4318916 (= e!2686883 Unit!67645)))

(declare-fun lt!1537503 () Unit!67626)

(declare-fun call!299098 () Unit!67626)

(assert (=> b!4318916 (= lt!1537503 call!299098)))

(assert (=> b!4318916 (= lt!1537510 call!299103)))

(declare-fun res!1770019 () Bool)

(assert (=> b!4318916 (= res!1770019 ((_ is Found!19) lt!1537510))))

(assert (=> b!4318916 (=> (not res!1770019) (not e!2686884))))

(assert (=> b!4318916 e!2686884))

(declare-fun lt!1537519 () Unit!67626)

(assert (=> b!4318916 (= lt!1537519 lt!1537503)))

(assert (=> b!4318916 false))

(declare-fun bm!299095 () Bool)

(assert (=> bm!299095 (= call!299092 (getCurrentListMap!22 (_keys!5041 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (_values!5022 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (mask!13340 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (ite c!734376 (ite c!734371 (extraKeys!4990 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) lt!1537496) (extraKeys!4990 (v!42685 (underlying!9711 (_2!26837 lt!1537194))))) (zeroValue!5000 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (ite c!734376 (ite c!734371 (minValue!5000 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) lt!1537171) (minValue!5000 (v!42685 (underlying!9711 (_2!26837 lt!1537194))))) #b00000000000000000000000000000000 (defaultEntry!5126 (v!42685 (underlying!9711 (_2!26837 lt!1537194))))))))

(declare-fun bm!299096 () Bool)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!9 (array!17176 array!17178 (_ BitVec 32) (_ BitVec 32) List!48476 List!48476 (_ BitVec 64) Int) Unit!67626)

(assert (=> bm!299096 (= call!299098 (lemmaInListMapThenSeekEntryOrOpenFindsIt!9 (_keys!5041 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (_values!5022 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (mask!13340 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (extraKeys!4990 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (zeroValue!5000 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (minValue!5000 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) lt!1537166 (defaultEntry!5126 (v!42685 (underlying!9711 (_2!26837 lt!1537194))))))))

(declare-fun b!4318917 () Bool)

(declare-fun res!1770020 () Bool)

(assert (=> b!4318917 (=> (not res!1770020) (not e!2686870))))

(assert (=> b!4318917 (= res!1770020 call!299085)))

(assert (=> b!4318917 (= e!2686869 e!2686870)))

(declare-fun bm!299097 () Bool)

(assert (=> bm!299097 (= call!299102 call!299092)))

(declare-fun b!4318918 () Bool)

(declare-fun res!1770015 () Bool)

(assert (=> b!4318918 (=> (not res!1770015) (not e!2686876))))

(assert (=> b!4318918 (= res!1770015 (= (select (arr!7667 (_keys!5041 (v!42685 (underlying!9711 (_2!26837 lt!1537194))))) (index!1456 lt!1537514)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4318919 () Bool)

(declare-fun lt!1537509 () Unit!67626)

(assert (=> b!4318919 (= lt!1537509 e!2686883)))

(assert (=> b!4318919 (= c!734383 call!299097)))

(assert (=> b!4318919 (= e!2686872 (tuple2!47111 false (v!42685 (underlying!9711 (_2!26837 lt!1537194)))))))

(declare-fun bm!299098 () Bool)

(assert (=> bm!299098 (= call!299086 (arrayContainsKey!0 (_keys!5041 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) lt!1537166 #b00000000000000000000000000000000))))

(declare-fun bm!299099 () Bool)

(assert (=> bm!299099 (= call!299106 call!299090)))

(declare-fun b!4318920 () Bool)

(assert (=> b!4318920 (= e!2686887 ((_ is Undefined!19) lt!1537497))))

(declare-fun b!4318921 () Bool)

(assert (=> b!4318921 (= c!734377 ((_ is MissingVacant!19) lt!1537507))))

(assert (=> b!4318921 (= e!2686872 e!2686886)))

(declare-fun b!4318922 () Bool)

(assert (=> b!4318922 (= e!2686877 (not call!299089))))

(declare-fun b!4318923 () Bool)

(declare-fun lt!1537508 () Unit!67626)

(assert (=> b!4318923 (= e!2686881 lt!1537508)))

(assert (=> b!4318923 (= lt!1537508 call!299098)))

(assert (=> b!4318923 (= lt!1537502 call!299100)))

(declare-fun res!1770011 () Bool)

(assert (=> b!4318923 (= res!1770011 ((_ is Found!19) lt!1537502))))

(assert (=> b!4318923 (=> (not res!1770011) (not e!2686871))))

(assert (=> b!4318923 e!2686871))

(declare-fun b!4318924 () Bool)

(assert (=> b!4318924 (= e!2686884 (= (select (arr!7667 (_keys!5041 (v!42685 (underlying!9711 (_2!26837 lt!1537194))))) (index!1455 lt!1537510)) lt!1537166))))

(declare-fun b!4318925 () Bool)

(assert (=> b!4318925 (= e!2686871 (= (select (arr!7667 (_keys!5041 (v!42685 (underlying!9711 (_2!26837 lt!1537194))))) (index!1455 lt!1537502)) lt!1537166))))

(declare-fun bm!299100 () Bool)

(assert (=> bm!299100 (= call!299105 call!299086)))

(declare-fun bm!299101 () Bool)

(assert (=> bm!299101 (= call!299099 (map!10378 (_2!26839 lt!1537501)))))

(declare-fun b!4318926 () Bool)

(declare-fun lt!1537498 () Unit!67626)

(declare-fun lt!1537506 () Unit!67626)

(assert (=> b!4318926 (= lt!1537498 lt!1537506)))

(assert (=> b!4318926 (= call!299106 call!299087)))

(declare-fun lt!1537518 () (_ BitVec 32))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!9 (array!17176 array!17178 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) List!48476 List!48476 List!48476 Int) Unit!67626)

(assert (=> b!4318926 (= lt!1537506 (lemmaChangeZeroKeyThenAddPairToListMap!9 (_keys!5041 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (_values!5022 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (mask!13340 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (extraKeys!4990 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) lt!1537518 (zeroValue!5000 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) lt!1537171 (minValue!5000 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (defaultEntry!5126 (v!42685 (underlying!9711 (_2!26837 lt!1537194))))))))

(assert (=> b!4318926 (= lt!1537518 (bvor (extraKeys!4990 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) #b00000000000000000000000000000001))))

(assert (=> b!4318926 (= e!2686888 (tuple2!47111 true (LongMapFixedSize!9483 (defaultEntry!5126 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (mask!13340 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (bvor (extraKeys!4990 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) #b00000000000000000000000000000001) lt!1537171 (minValue!5000 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (_size!9525 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (_keys!5041 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (_values!5022 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (_vacant!4802 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))))))))

(declare-fun b!4318927 () Bool)

(assert (=> b!4318927 (= e!2686878 (not call!299105))))

(declare-fun b!4318928 () Bool)

(assert (=> b!4318928 (= e!2686880 (= call!299099 (+!321 call!299107 (tuple2!47109 lt!1537166 lt!1537171))))))

(declare-fun b!4318929 () Bool)

(assert (=> b!4318929 (= e!2686873 ((_ is Undefined!19) lt!1537514))))

(declare-fun bm!299102 () Bool)

(assert (=> bm!299102 (= call!299103 call!299095)))

(declare-fun b!4318930 () Bool)

(declare-fun c!734378 () Bool)

(assert (=> b!4318930 (= c!734378 ((_ is MissingVacant!19) lt!1537497))))

(assert (=> b!4318930 (= e!2686869 e!2686887)))

(declare-fun d!1269803 () Bool)

(assert (=> d!1269803 e!2686885))

(declare-fun res!1770009 () Bool)

(assert (=> d!1269803 (=> (not res!1770009) (not e!2686885))))

(assert (=> d!1269803 (= res!1770009 (valid!3751 (_2!26839 lt!1537501)))))

(assert (=> d!1269803 (= lt!1537501 e!2686868)))

(assert (=> d!1269803 (= c!734376 (= lt!1537166 (bvneg lt!1537166)))))

(assert (=> d!1269803 (valid!3751 (v!42685 (underlying!9711 (_2!26837 lt!1537194))))))

(assert (=> d!1269803 (= (update!516 (v!42685 (underlying!9711 (_2!26837 lt!1537194))) lt!1537166 lt!1537171) lt!1537501)))

(declare-fun bm!299103 () Bool)

(assert (=> bm!299103 (= call!299104 (getCurrentListMap!22 (_keys!5041 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (ite c!734376 (_values!5022 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (array!17179 (store (arr!7668 (_values!5022 (v!42685 (underlying!9711 (_2!26837 lt!1537194))))) (index!1455 lt!1537507) lt!1537171) (size!35707 (_values!5022 (v!42685 (underlying!9711 (_2!26837 lt!1537194))))))) (mask!13340 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) (ite (and c!734376 c!734371) lt!1537518 (extraKeys!4990 (v!42685 (underlying!9711 (_2!26837 lt!1537194))))) (ite (and c!734376 c!734371) lt!1537171 (zeroValue!5000 (v!42685 (underlying!9711 (_2!26837 lt!1537194))))) (minValue!5000 (v!42685 (underlying!9711 (_2!26837 lt!1537194)))) #b00000000000000000000000000000000 (defaultEntry!5126 (v!42685 (underlying!9711 (_2!26837 lt!1537194))))))))

(assert (= (and d!1269803 c!734376) b!4318905))

(assert (= (and d!1269803 (not c!734376)) b!4318898))

(assert (= (and b!4318905 c!734371) b!4318926))

(assert (= (and b!4318905 (not c!734371)) b!4318904))

(assert (= (or b!4318926 b!4318904) bm!299094))

(assert (= (or b!4318926 b!4318904) bm!299097))

(assert (= (or b!4318926 b!4318904) bm!299099))

(assert (= (and b!4318898 c!734373) b!4318919))

(assert (= (and b!4318898 (not c!734373)) b!4318921))

(assert (= (and b!4318919 c!734383) b!4318916))

(assert (= (and b!4318919 (not c!734383)) b!4318913))

(assert (= (and b!4318916 res!1770019) b!4318892))

(assert (= (and b!4318892 res!1770012) b!4318924))

(assert (= (and b!4318913 c!734382) b!4318917))

(assert (= (and b!4318913 (not c!734382)) b!4318930))

(assert (= (and b!4318917 res!1770020) b!4318896))

(assert (= (and b!4318896 res!1770014) b!4318903))

(assert (= (and b!4318930 c!734378) b!4318897))

(assert (= (and b!4318930 (not c!734378)) b!4318920))

(assert (= (and b!4318897 res!1770021) b!4318910))

(assert (= (and b!4318910 res!1770017) b!4318922))

(assert (= (or b!4318903 b!4318922) bm!299082))

(assert (= (or b!4318917 b!4318897) bm!299084))

(assert (= (or b!4318892 bm!299084) bm!299092))

(assert (= (or b!4318916 b!4318913) bm!299102))

(assert (= (and b!4318921 c!734377) b!4318906))

(assert (= (and b!4318921 (not c!734377)) b!4318909))

(assert (= (and b!4318909 c!734379) b!4318911))

(assert (= (and b!4318909 (not c!734379)) b!4318901))

(assert (= (and b!4318901 c!734380) b!4318923))

(assert (= (and b!4318901 (not c!734380)) b!4318893))

(assert (= (and b!4318923 res!1770011) b!4318899))

(assert (= (and b!4318899 res!1770008) b!4318925))

(assert (= (and b!4318893 c!734381) b!4318895))

(assert (= (and b!4318893 (not c!734381)) b!4318894))

(assert (= (and b!4318895 res!1770018) b!4318918))

(assert (= (and b!4318918 res!1770015) b!4318891))

(assert (= (and b!4318894 c!734375) b!4318914))

(assert (= (and b!4318894 (not c!734375)) b!4318929))

(assert (= (and b!4318914 res!1770013) b!4318907))

(assert (= (and b!4318907 res!1770016) b!4318927))

(assert (= (or b!4318891 b!4318927) bm!299100))

(assert (= (or b!4318895 b!4318914) bm!299081))

(assert (= (or b!4318899 bm!299081) bm!299080))

(assert (= (or b!4318923 b!4318893) bm!299090))

(assert (= (or b!4318906 b!4318911) bm!299091))

(assert (= (or bm!299102 bm!299090) bm!299088))

(assert (= (or b!4318916 b!4318923) bm!299096))

(assert (= (or bm!299092 bm!299080) bm!299089))

(assert (= (or bm!299082 bm!299100) bm!299098))

(assert (= (or b!4318913 b!4318893) bm!299087))

(assert (= (or b!4318919 b!4318901) bm!299086))

(assert (= (or b!4318919 b!4318901) bm!299083))

(assert (= (and bm!299083 c!734372) b!4318915))

(assert (= (and bm!299083 (not c!734372)) b!4318912))

(assert (= (or bm!299097 bm!299086) bm!299095))

(assert (= (or bm!299094 b!4318901) bm!299103))

(assert (= (or bm!299099 b!4318901) bm!299085))

(assert (= (and d!1269803 res!1770009) b!4318902))

(assert (= (and b!4318902 c!734374) b!4318900))

(assert (= (and b!4318902 (not c!734374)) b!4318908))

(assert (= (and b!4318900 res!1770010) b!4318928))

(assert (= (or b!4318928 b!4318908) bm!299093))

(assert (= (or b!4318900 b!4318928 b!4318908) bm!299101))

(declare-fun m!4912447 () Bool)

(assert (=> b!4318896 m!4912447))

(declare-fun m!4912449 () Bool)

(assert (=> b!4318912 m!4912449))

(declare-fun m!4912451 () Bool)

(assert (=> b!4318918 m!4912451))

(declare-fun m!4912453 () Bool)

(assert (=> bm!299095 m!4912453))

(declare-fun m!4912455 () Bool)

(assert (=> b!4318904 m!4912455))

(declare-fun m!4912457 () Bool)

(assert (=> bm!299101 m!4912457))

(declare-fun m!4912459 () Bool)

(assert (=> b!4318907 m!4912459))

(declare-fun m!4912461 () Bool)

(assert (=> b!4318900 m!4912461))

(declare-fun m!4912463 () Bool)

(assert (=> bm!299088 m!4912463))

(declare-fun m!4912465 () Bool)

(assert (=> bm!299093 m!4912465))

(declare-fun m!4912467 () Bool)

(assert (=> b!4318925 m!4912467))

(declare-fun m!4912469 () Bool)

(assert (=> bm!299087 m!4912469))

(declare-fun m!4912471 () Bool)

(assert (=> b!4318901 m!4912471))

(declare-fun m!4912473 () Bool)

(assert (=> b!4318901 m!4912473))

(declare-fun m!4912475 () Bool)

(assert (=> b!4318901 m!4912475))

(declare-fun m!4912477 () Bool)

(assert (=> b!4318901 m!4912477))

(declare-fun m!4912479 () Bool)

(assert (=> bm!299085 m!4912479))

(declare-fun m!4912481 () Bool)

(assert (=> b!4318928 m!4912481))

(declare-fun m!4912483 () Bool)

(assert (=> bm!299096 m!4912483))

(declare-fun m!4912485 () Bool)

(assert (=> b!4318910 m!4912485))

(declare-fun m!4912487 () Bool)

(assert (=> bm!299091 m!4912487))

(assert (=> b!4318898 m!4912463))

(assert (=> bm!299103 m!4912473))

(declare-fun m!4912489 () Bool)

(assert (=> bm!299103 m!4912489))

(declare-fun m!4912491 () Bool)

(assert (=> bm!299089 m!4912491))

(declare-fun m!4912493 () Bool)

(assert (=> b!4318926 m!4912493))

(declare-fun m!4912495 () Bool)

(assert (=> bm!299083 m!4912495))

(declare-fun m!4912497 () Bool)

(assert (=> bm!299083 m!4912497))

(declare-fun m!4912499 () Bool)

(assert (=> bm!299098 m!4912499))

(declare-fun m!4912501 () Bool)

(assert (=> b!4318924 m!4912501))

(declare-fun m!4912503 () Bool)

(assert (=> d!1269803 m!4912503))

(declare-fun m!4912505 () Bool)

(assert (=> d!1269803 m!4912505))

(assert (=> b!4318494 d!1269803))

(declare-fun bs!606090 () Bool)

(declare-fun d!1269805 () Bool)

(assert (= bs!606090 (and d!1269805 d!1269761)))

(declare-fun lambda!133642 () Int)

(assert (=> bs!606090 (= lambda!133642 lambda!133639)))

(declare-fun bs!606091 () Bool)

(assert (= bs!606091 (and d!1269805 d!1269689)))

(assert (=> bs!606091 (not (= lambda!133642 lambda!133622))))

(declare-fun bs!606092 () Bool)

(assert (= bs!606092 (and d!1269805 d!1269723)))

(assert (=> bs!606092 (= lambda!133642 lambda!133637)))

(declare-fun bs!606093 () Bool)

(assert (= bs!606093 (and d!1269805 b!4318435)))

(assert (=> bs!606093 (= lambda!133642 lambda!133615)))

(declare-fun bs!606094 () Bool)

(assert (= bs!606094 (and d!1269805 b!4318527)))

(assert (=> bs!606094 (= lambda!133642 lambda!133631)))

(declare-fun bs!606095 () Bool)

(assert (= bs!606095 (and d!1269805 d!1269721)))

(assert (=> bs!606095 (= lambda!133642 lambda!133634)))

(declare-fun bs!606096 () Bool)

(assert (= bs!606096 (and d!1269805 d!1269703)))

(assert (=> bs!606096 (not (= lambda!133642 lambda!133628))))

(declare-fun bs!606097 () Bool)

(assert (= bs!606097 (and d!1269805 d!1269743)))

(assert (=> bs!606097 (not (= lambda!133642 lambda!133638))))

(declare-fun bs!606098 () Bool)

(assert (= bs!606098 (and d!1269805 b!4318466)))

(assert (=> bs!606098 (= lambda!133642 lambda!133625)))

(declare-fun e!2686891 () Bool)

(assert (=> d!1269805 e!2686891))

(declare-fun res!1770024 () Bool)

(assert (=> d!1269805 (=> (not res!1770024) (not e!2686891))))

(assert (=> d!1269805 (= res!1770024 (contains!10387 lt!1537260 (hash!1147 (hashF!6879 thiss!42308) key!2048)))))

(declare-fun lt!1537523 () Unit!67626)

(declare-fun choose!26364 (ListLongMap!1149 K!9599 Hashable!4657) Unit!67626)

(assert (=> d!1269805 (= lt!1537523 (choose!26364 lt!1537260 key!2048 (hashF!6879 thiss!42308)))))

(assert (=> d!1269805 (forall!8797 (toList!2534 lt!1537260) lambda!133642)))

(assert (=> d!1269805 (= (lemmaInGenericMapThenInLongMap!158 lt!1537260 key!2048 (hashF!6879 thiss!42308)) lt!1537523)))

(declare-fun b!4318933 () Bool)

(assert (=> b!4318933 (= e!2686891 (isDefined!7591 (getPair!158 (apply!11124 lt!1537260 (hash!1147 (hashF!6879 thiss!42308) key!2048)) key!2048)))))

(assert (= (and d!1269805 res!1770024) b!4318933))

(assert (=> d!1269805 m!4912013))

(assert (=> d!1269805 m!4912013))

(declare-fun m!4912507 () Bool)

(assert (=> d!1269805 m!4912507))

(declare-fun m!4912509 () Bool)

(assert (=> d!1269805 m!4912509))

(declare-fun m!4912511 () Bool)

(assert (=> d!1269805 m!4912511))

(assert (=> b!4318933 m!4912013))

(assert (=> b!4318933 m!4912013))

(declare-fun m!4912513 () Bool)

(assert (=> b!4318933 m!4912513))

(assert (=> b!4318933 m!4912513))

(declare-fun m!4912515 () Bool)

(assert (=> b!4318933 m!4912515))

(assert (=> b!4318933 m!4912515))

(declare-fun m!4912517 () Bool)

(assert (=> b!4318933 m!4912517))

(assert (=> b!4318531 d!1269805))

(declare-fun d!1269807 () Bool)

(assert (=> d!1269807 (= (get!15663 (getValueByKey!291 (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308)))) lt!1537166)) (v!42691 (getValueByKey!291 (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308)))) lt!1537166)))))

(assert (=> b!4318499 d!1269807))

(declare-fun b!4318934 () Bool)

(declare-fun e!2686892 () Option!10290)

(assert (=> b!4318934 (= e!2686892 (Some!10289 (_2!26838 (h!53809 (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308))))))))))

(declare-fun b!4318935 () Bool)

(declare-fun e!2686893 () Option!10290)

(assert (=> b!4318935 (= e!2686892 e!2686893)))

(declare-fun c!734385 () Bool)

(assert (=> b!4318935 (= c!734385 (and ((_ is Cons!48353) (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308))))) (not (= (_1!26838 (h!53809 (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308)))))) lt!1537166))))))

(declare-fun b!4318936 () Bool)

(assert (=> b!4318936 (= e!2686893 (getValueByKey!291 (t!355342 (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308))))) lt!1537166))))

(declare-fun d!1269809 () Bool)

(declare-fun c!734384 () Bool)

(assert (=> d!1269809 (= c!734384 (and ((_ is Cons!48353) (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308))))) (= (_1!26838 (h!53809 (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308)))))) lt!1537166)))))

(assert (=> d!1269809 (= (getValueByKey!291 (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308)))) lt!1537166) e!2686892)))

(declare-fun b!4318937 () Bool)

(assert (=> b!4318937 (= e!2686893 None!10289)))

(assert (= (and d!1269809 c!734384) b!4318934))

(assert (= (and d!1269809 (not c!734384)) b!4318935))

(assert (= (and b!4318935 c!734385) b!4318936))

(assert (= (and b!4318935 (not c!734385)) b!4318937))

(declare-fun m!4912519 () Bool)

(assert (=> b!4318936 m!4912519))

(assert (=> b!4318499 d!1269809))

(assert (=> b!4318499 d!1269707))

(declare-fun d!1269811 () Bool)

(declare-fun res!1770025 () Bool)

(declare-fun e!2686894 () Bool)

(assert (=> d!1269811 (=> res!1770025 e!2686894)))

(assert (=> d!1269811 (= res!1770025 ((_ is Nil!48353) (toList!2534 lt!1537172)))))

(assert (=> d!1269811 (= (forall!8797 (toList!2534 lt!1537172) lambda!133628) e!2686894)))

(declare-fun b!4318938 () Bool)

(declare-fun e!2686895 () Bool)

(assert (=> b!4318938 (= e!2686894 e!2686895)))

(declare-fun res!1770026 () Bool)

(assert (=> b!4318938 (=> (not res!1770026) (not e!2686895))))

(assert (=> b!4318938 (= res!1770026 (dynLambda!20496 lambda!133628 (h!53809 (toList!2534 lt!1537172))))))

(declare-fun b!4318939 () Bool)

(assert (=> b!4318939 (= e!2686895 (forall!8797 (t!355342 (toList!2534 lt!1537172)) lambda!133628))))

(assert (= (and d!1269811 (not res!1770025)) b!4318938))

(assert (= (and b!4318938 res!1770026) b!4318939))

(declare-fun b_lambda!127035 () Bool)

(assert (=> (not b_lambda!127035) (not b!4318938)))

(declare-fun m!4912521 () Bool)

(assert (=> b!4318938 m!4912521))

(declare-fun m!4912523 () Bool)

(assert (=> b!4318939 m!4912523))

(assert (=> d!1269703 d!1269811))

(declare-fun d!1269813 () Bool)

(declare-fun res!1770027 () Bool)

(declare-fun e!2686896 () Bool)

(assert (=> d!1269813 (=> res!1770027 e!2686896)))

(assert (=> d!1269813 (= res!1770027 ((_ is Nil!48353) (t!355342 (toList!2534 lt!1537172))))))

(assert (=> d!1269813 (= (forall!8797 (t!355342 (toList!2534 lt!1537172)) lambda!133615) e!2686896)))

(declare-fun b!4318940 () Bool)

(declare-fun e!2686897 () Bool)

(assert (=> b!4318940 (= e!2686896 e!2686897)))

(declare-fun res!1770028 () Bool)

(assert (=> b!4318940 (=> (not res!1770028) (not e!2686897))))

(assert (=> b!4318940 (= res!1770028 (dynLambda!20496 lambda!133615 (h!53809 (t!355342 (toList!2534 lt!1537172)))))))

(declare-fun b!4318941 () Bool)

(assert (=> b!4318941 (= e!2686897 (forall!8797 (t!355342 (t!355342 (toList!2534 lt!1537172))) lambda!133615))))

(assert (= (and d!1269813 (not res!1770027)) b!4318940))

(assert (= (and b!4318940 res!1770028) b!4318941))

(declare-fun b_lambda!127037 () Bool)

(assert (=> (not b_lambda!127037) (not b!4318940)))

(declare-fun m!4912525 () Bool)

(assert (=> b!4318940 m!4912525))

(declare-fun m!4912527 () Bool)

(assert (=> b!4318941 m!4912527))

(assert (=> b!4318443 d!1269813))

(assert (=> bm!298986 d!1269707))

(declare-fun d!1269815 () Bool)

(assert (=> d!1269815 (= (map!10376 (_2!26837 lt!1537193)) (map!10378 (v!42685 (underlying!9711 (_2!26837 lt!1537193)))))))

(declare-fun bs!606099 () Bool)

(assert (= bs!606099 d!1269815))

(declare-fun m!4912529 () Bool)

(assert (=> bs!606099 m!4912529))

(assert (=> bm!298987 d!1269815))

(declare-fun d!1269817 () Bool)

(assert (=> d!1269817 (= (imbalanced!76 (v!42686 (underlying!9712 thiss!42308))) (or (bvsgt (bvmul #b00000000000000000000000000000010 (bvadd (_size!9525 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (_vacant!4802 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))))) (mask!13340 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308)))))) (bvsgt (_vacant!4802 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (_size!9525 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))))))))

(assert (=> d!1269695 d!1269817))

(assert (=> d!1269695 d!1269741))

(declare-fun d!1269819 () Bool)

(declare-fun e!2686898 () Bool)

(assert (=> d!1269819 e!2686898))

(declare-fun res!1770029 () Bool)

(assert (=> d!1269819 (=> res!1770029 e!2686898)))

(declare-fun lt!1537524 () Bool)

(assert (=> d!1269819 (= res!1770029 (not lt!1537524))))

(declare-fun lt!1537525 () Bool)

(assert (=> d!1269819 (= lt!1537524 lt!1537525)))

(declare-fun lt!1537526 () Unit!67626)

(declare-fun e!2686899 () Unit!67626)

(assert (=> d!1269819 (= lt!1537526 e!2686899)))

(declare-fun c!734386 () Bool)

(assert (=> d!1269819 (= c!734386 lt!1537525)))

(assert (=> d!1269819 (= lt!1537525 (containsKey!391 (toList!2534 call!298991) lt!1537166))))

(assert (=> d!1269819 (= (contains!10387 call!298991 lt!1537166) lt!1537524)))

(declare-fun b!4318942 () Bool)

(declare-fun lt!1537527 () Unit!67626)

(assert (=> b!4318942 (= e!2686899 lt!1537527)))

(assert (=> b!4318942 (= lt!1537527 (lemmaContainsKeyImpliesGetValueByKeyDefined!210 (toList!2534 call!298991) lt!1537166))))

(assert (=> b!4318942 (isDefined!7592 (getValueByKey!291 (toList!2534 call!298991) lt!1537166))))

(declare-fun b!4318943 () Bool)

(declare-fun Unit!67646 () Unit!67626)

(assert (=> b!4318943 (= e!2686899 Unit!67646)))

(declare-fun b!4318944 () Bool)

(assert (=> b!4318944 (= e!2686898 (isDefined!7592 (getValueByKey!291 (toList!2534 call!298991) lt!1537166)))))

(assert (= (and d!1269819 c!734386) b!4318942))

(assert (= (and d!1269819 (not c!734386)) b!4318943))

(assert (= (and d!1269819 (not res!1770029)) b!4318944))

(declare-fun m!4912531 () Bool)

(assert (=> d!1269819 m!4912531))

(declare-fun m!4912533 () Bool)

(assert (=> b!4318942 m!4912533))

(declare-fun m!4912535 () Bool)

(assert (=> b!4318942 m!4912535))

(assert (=> b!4318942 m!4912535))

(declare-fun m!4912537 () Bool)

(assert (=> b!4318942 m!4912537))

(assert (=> b!4318944 m!4912535))

(assert (=> b!4318944 m!4912535))

(assert (=> b!4318944 m!4912537))

(assert (=> b!4318489 d!1269819))

(declare-fun d!1269821 () Bool)

(declare-fun res!1770030 () Bool)

(declare-fun e!2686900 () Bool)

(assert (=> d!1269821 (=> res!1770030 e!2686900)))

(assert (=> d!1269821 (= res!1770030 ((_ is Nil!48352) lt!1537170))))

(assert (=> d!1269821 (= (forall!8798 lt!1537170 lambda!133619) e!2686900)))

(declare-fun b!4318945 () Bool)

(declare-fun e!2686901 () Bool)

(assert (=> b!4318945 (= e!2686900 e!2686901)))

(declare-fun res!1770031 () Bool)

(assert (=> b!4318945 (=> (not res!1770031) (not e!2686901))))

(assert (=> b!4318945 (= res!1770031 (dynLambda!20498 lambda!133619 (h!53808 lt!1537170)))))

(declare-fun b!4318946 () Bool)

(assert (=> b!4318946 (= e!2686901 (forall!8798 (t!355341 lt!1537170) lambda!133619))))

(assert (= (and d!1269821 (not res!1770030)) b!4318945))

(assert (= (and b!4318945 res!1770031) b!4318946))

(declare-fun b_lambda!127039 () Bool)

(assert (=> (not b_lambda!127039) (not b!4318945)))

(declare-fun m!4912539 () Bool)

(assert (=> b!4318945 m!4912539))

(declare-fun m!4912541 () Bool)

(assert (=> b!4318946 m!4912541))

(assert (=> d!1269687 d!1269821))

(declare-fun b!4318967 () Bool)

(declare-datatypes ((tuple3!5502 0))(
  ( (tuple3!5503 (_1!26840 Bool) (_2!26840 Cell!18773) (_3!3284 MutLongMap!4741)) )
))
(declare-fun e!2686917 () tuple3!5502)

(declare-datatypes ((tuple2!47112 0))(
  ( (tuple2!47113 (_1!26841 Bool) (_2!26841 Cell!18773)) )
))
(declare-fun lt!1537551 () tuple2!47112)

(assert (=> b!4318967 (= e!2686917 (tuple3!5503 false (_2!26841 lt!1537551) (v!42686 (underlying!9712 thiss!42308))))))

(declare-fun b!4318968 () Bool)

(declare-fun e!2686918 () tuple2!47112)

(declare-fun lt!1537554 () tuple2!47110)

(assert (=> b!4318968 (= e!2686918 (tuple2!47113 (_1!26839 lt!1537554) (Cell!18774 (_2!26839 lt!1537554))))))

(declare-fun call!299118 () tuple2!47110)

(assert (=> b!4318968 (= lt!1537554 call!299118)))

(declare-fun d!1269823 () Bool)

(declare-fun e!2686919 () Bool)

(assert (=> d!1269823 e!2686919))

(declare-fun res!1770037 () Bool)

(assert (=> d!1269823 (=> (not res!1770037) (not e!2686919))))

(declare-fun lt!1537557 () tuple2!47106)

(assert (=> d!1269823 (= res!1770037 ((_ is LongMap!4741) (_2!26837 lt!1537557)))))

(declare-fun lt!1537552 () tuple3!5502)

(assert (=> d!1269823 (= lt!1537557 (tuple2!47107 (_1!26840 lt!1537552) (_3!3284 lt!1537552)))))

(assert (=> d!1269823 (= lt!1537552 e!2686917)))

(declare-fun c!734397 () Bool)

(assert (=> d!1269823 (= c!734397 (not (_1!26841 lt!1537551)))))

(declare-fun e!2686914 () tuple2!47112)

(assert (=> d!1269823 (= lt!1537551 e!2686914)))

(declare-fun c!734398 () Bool)

(assert (=> d!1269823 (= c!734398 (and (not (= (bvand (extraKeys!4990 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4990 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!1537549 () Cell!18773)

(declare-fun lt!1537556 () (_ BitVec 32))

(declare-fun getNewLongMapFixedSize!25 ((_ BitVec 32) Int) LongMapFixedSize!9482)

(assert (=> d!1269823 (= lt!1537549 (Cell!18774 (getNewLongMapFixedSize!25 lt!1537556 (defaultEntry!5126 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))))))))

(declare-fun computeNewMask!11 (MutLongMap!4741 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!1269823 (= lt!1537556 (computeNewMask!11 (v!42686 (underlying!9712 thiss!42308)) (mask!13340 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (_vacant!4802 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (_size!9525 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308)))))))))

(assert (=> d!1269823 (valid!3750 (v!42686 (underlying!9712 thiss!42308)))))

(assert (=> d!1269823 (= (repack!80 (v!42686 (underlying!9712 thiss!42308))) lt!1537557)))

(declare-fun b!4318969 () Bool)

(declare-fun lt!1537553 () tuple2!47110)

(declare-fun lt!1537548 () tuple2!47110)

(assert (=> b!4318969 (= e!2686914 (tuple2!47113 (and (_1!26839 lt!1537553) (_1!26839 lt!1537548)) (Cell!18774 (_2!26839 lt!1537548))))))

(declare-fun call!299120 () LongMapFixedSize!9482)

(assert (=> b!4318969 (= lt!1537553 (update!516 call!299120 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5000 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308)))))))))

(declare-fun call!299117 () tuple2!47110)

(assert (=> b!4318969 (= lt!1537548 call!299117)))

(declare-fun b!4318970 () Bool)

(declare-fun c!734396 () Bool)

(assert (=> b!4318970 (= c!734396 (and (not (= (bvand (extraKeys!4990 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4990 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!2686916 () tuple2!47112)

(assert (=> b!4318970 (= e!2686916 e!2686918)))

(declare-fun b!4318971 () Bool)

(assert (=> b!4318971 (= e!2686914 e!2686916)))

(declare-fun c!734395 () Bool)

(assert (=> b!4318971 (= c!734395 (and (not (= (bvand (extraKeys!4990 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4990 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!4318972 () Bool)

(declare-fun e!2686915 () Bool)

(assert (=> b!4318972 (= e!2686919 e!2686915)))

(declare-fun res!1770036 () Bool)

(assert (=> b!4318972 (=> res!1770036 e!2686915)))

(assert (=> b!4318972 (= res!1770036 (= (_1!26837 lt!1537557) false))))

(declare-fun bm!299112 () Bool)

(declare-fun call!299119 () LongMapFixedSize!9482)

(assert (=> bm!299112 (= call!299117 (update!516 (ite c!734398 (_2!26839 lt!1537553) call!299119) (ite c!734398 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!734395 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!734398 (minValue!5000 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (ite c!734395 (zeroValue!5000 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) (minValue!5000 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308)))))))))))

(declare-fun b!4318973 () Bool)

(declare-fun lt!1537550 () tuple2!47110)

(assert (=> b!4318973 (= e!2686917 (ite (_1!26839 lt!1537550) (tuple3!5503 true (underlying!9711 (v!42686 (underlying!9712 thiss!42308))) (LongMap!4741 (Cell!18774 (_2!26839 lt!1537550)))) (tuple3!5503 false (Cell!18774 (_2!26839 lt!1537550)) (v!42686 (underlying!9712 thiss!42308)))))))

(declare-fun repackFrom!11 (MutLongMap!4741 LongMapFixedSize!9482 (_ BitVec 32)) tuple2!47110)

(assert (=> b!4318973 (= lt!1537550 (repackFrom!11 (v!42686 (underlying!9712 thiss!42308)) (v!42685 (_2!26841 lt!1537551)) (bvsub (size!35706 (_keys!5041 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308)))))) #b00000000000000000000000000000001)))))

(declare-fun b!4318974 () Bool)

(assert (=> b!4318974 (= e!2686918 (tuple2!47113 true lt!1537549))))

(declare-fun bm!299113 () Bool)

(assert (=> bm!299113 (= call!299118 call!299117)))

(declare-fun b!4318975 () Bool)

(assert (=> b!4318975 (= e!2686915 (= (map!10376 (_2!26837 lt!1537557)) (map!10376 (v!42686 (underlying!9712 thiss!42308)))))))

(declare-fun bm!299114 () Bool)

(assert (=> bm!299114 (= call!299120 (getNewLongMapFixedSize!25 lt!1537556 (defaultEntry!5126 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308)))))))))

(declare-fun b!4318976 () Bool)

(declare-fun lt!1537555 () tuple2!47110)

(assert (=> b!4318976 (= lt!1537555 call!299118)))

(assert (=> b!4318976 (= e!2686916 (tuple2!47113 (_1!26839 lt!1537555) (Cell!18774 (_2!26839 lt!1537555))))))

(declare-fun bm!299115 () Bool)

(assert (=> bm!299115 (= call!299119 call!299120)))

(assert (= (and d!1269823 c!734398) b!4318969))

(assert (= (and d!1269823 (not c!734398)) b!4318971))

(assert (= (and b!4318971 c!734395) b!4318976))

(assert (= (and b!4318971 (not c!734395)) b!4318970))

(assert (= (and b!4318970 c!734396) b!4318968))

(assert (= (and b!4318970 (not c!734396)) b!4318974))

(assert (= (or b!4318976 b!4318968) bm!299115))

(assert (= (or b!4318976 b!4318968) bm!299113))

(assert (= (or b!4318969 bm!299115) bm!299114))

(assert (= (or b!4318969 bm!299113) bm!299112))

(assert (= (and d!1269823 c!734397) b!4318967))

(assert (= (and d!1269823 (not c!734397)) b!4318973))

(assert (= (and d!1269823 res!1770037) b!4318972))

(assert (= (and b!4318972 (not res!1770036)) b!4318975))

(declare-fun m!4912543 () Bool)

(assert (=> b!4318975 m!4912543))

(assert (=> b!4318975 m!4912023))

(declare-fun m!4912545 () Bool)

(assert (=> b!4318973 m!4912545))

(declare-fun m!4912547 () Bool)

(assert (=> b!4318969 m!4912547))

(declare-fun m!4912549 () Bool)

(assert (=> d!1269823 m!4912549))

(declare-fun m!4912551 () Bool)

(assert (=> d!1269823 m!4912551))

(assert (=> d!1269823 m!4912065))

(declare-fun m!4912553 () Bool)

(assert (=> bm!299112 m!4912553))

(assert (=> bm!299114 m!4912549))

(assert (=> b!4318490 d!1269823))

(declare-fun e!2686920 () Bool)

(declare-fun b!4318977 () Bool)

(declare-fun tp!1326611 () Bool)

(assert (=> b!4318977 (= e!2686920 (and tp_is_empty!24061 tp_is_empty!24063 tp!1326611))))

(assert (=> b!4318553 (= tp!1326608 e!2686920)))

(assert (= (and b!4318553 ((_ is Cons!48352) (t!355341 mapValue!21138))) b!4318977))

(declare-fun tp!1326612 () Bool)

(declare-fun b!4318979 () Bool)

(declare-fun e!2686922 () Bool)

(assert (=> b!4318979 (= e!2686922 (and tp_is_empty!24061 tp_is_empty!24063 tp!1326612))))

(declare-fun e!2686921 () Bool)

(declare-fun b!4318978 () Bool)

(declare-fun tp!1326613 () Bool)

(assert (=> b!4318978 (= e!2686921 (and tp_is_empty!24061 tp_is_empty!24063 tp!1326613))))

(declare-fun condMapEmpty!21139 () Bool)

(declare-fun mapDefault!21139 () List!48476)

(assert (=> mapNonEmpty!21138 (= condMapEmpty!21139 (= mapRest!21138 ((as const (Array (_ BitVec 32) List!48476)) mapDefault!21139)))))

(declare-fun mapRes!21139 () Bool)

(assert (=> mapNonEmpty!21138 (= tp!1326609 (and e!2686922 mapRes!21139))))

(declare-fun mapIsEmpty!21139 () Bool)

(assert (=> mapIsEmpty!21139 mapRes!21139))

(declare-fun mapNonEmpty!21139 () Bool)

(declare-fun tp!1326614 () Bool)

(assert (=> mapNonEmpty!21139 (= mapRes!21139 (and tp!1326614 e!2686921))))

(declare-fun mapValue!21139 () List!48476)

(declare-fun mapKey!21139 () (_ BitVec 32))

(declare-fun mapRest!21139 () (Array (_ BitVec 32) List!48476))

(assert (=> mapNonEmpty!21139 (= mapRest!21138 (store mapRest!21139 mapKey!21139 mapValue!21139))))

(assert (= (and mapNonEmpty!21138 condMapEmpty!21139) mapIsEmpty!21139))

(assert (= (and mapNonEmpty!21138 (not condMapEmpty!21139)) mapNonEmpty!21139))

(assert (= (and mapNonEmpty!21139 ((_ is Cons!48352) mapValue!21139)) b!4318978))

(assert (= (and mapNonEmpty!21138 ((_ is Cons!48352) mapDefault!21139)) b!4318979))

(declare-fun m!4912555 () Bool)

(assert (=> mapNonEmpty!21139 m!4912555))

(declare-fun e!2686923 () Bool)

(declare-fun b!4318980 () Bool)

(declare-fun tp!1326615 () Bool)

(assert (=> b!4318980 (= e!2686923 (and tp_is_empty!24061 tp_is_empty!24063 tp!1326615))))

(assert (=> b!4318546 (= tp!1326600 e!2686923)))

(assert (= (and b!4318546 ((_ is Cons!48352) (t!355341 mapDefault!21135))) b!4318980))

(declare-fun tp!1326616 () Bool)

(declare-fun e!2686924 () Bool)

(declare-fun b!4318981 () Bool)

(assert (=> b!4318981 (= e!2686924 (and tp_is_empty!24061 tp_is_empty!24063 tp!1326616))))

(assert (=> tb!257351 (= result!314848 e!2686924)))

(assert (= (and tb!257351 ((_ is Cons!48352) (dynLambda!20497 (defaultEntry!5126 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308))))) lt!1537166))) b!4318981))

(declare-fun e!2686925 () Bool)

(declare-fun b!4318982 () Bool)

(declare-fun tp!1326617 () Bool)

(assert (=> b!4318982 (= e!2686925 (and tp_is_empty!24061 tp_is_empty!24063 tp!1326617))))

(assert (=> b!4318544 (= tp!1326598 e!2686925)))

(assert (= (and b!4318544 ((_ is Cons!48352) (t!355341 (zeroValue!5000 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308)))))))) b!4318982))

(declare-fun b!4318983 () Bool)

(declare-fun tp!1326618 () Bool)

(declare-fun e!2686926 () Bool)

(assert (=> b!4318983 (= e!2686926 (and tp_is_empty!24061 tp_is_empty!24063 tp!1326618))))

(assert (=> b!4318554 (= tp!1326607 e!2686926)))

(assert (= (and b!4318554 ((_ is Cons!48352) (t!355341 mapDefault!21138))) b!4318983))

(declare-fun b!4318984 () Bool)

(declare-fun tp!1326619 () Bool)

(declare-fun e!2686927 () Bool)

(assert (=> b!4318984 (= e!2686927 (and tp_is_empty!24061 tp_is_empty!24063 tp!1326619))))

(assert (=> b!4318555 (= tp!1326610 e!2686927)))

(assert (= (and b!4318555 ((_ is Cons!48352) (t!355341 mapValue!21135))) b!4318984))

(declare-fun b!4318985 () Bool)

(declare-fun tp!1326620 () Bool)

(declare-fun e!2686928 () Bool)

(assert (=> b!4318985 (= e!2686928 (and tp_is_empty!24061 tp_is_empty!24063 tp!1326620))))

(assert (=> b!4318545 (= tp!1326599 e!2686928)))

(assert (= (and b!4318545 ((_ is Cons!48352) (t!355341 (minValue!5000 (v!42685 (underlying!9711 (v!42686 (underlying!9712 thiss!42308)))))))) b!4318985))

(declare-fun b_lambda!127041 () Bool)

(assert (= b_lambda!127021 (or b!4318466 b_lambda!127041)))

(declare-fun bs!606100 () Bool)

(declare-fun d!1269825 () Bool)

(assert (= bs!606100 (and d!1269825 b!4318466)))

(assert (=> bs!606100 (= (dynLambda!20496 lambda!133625 (h!53809 (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308)))))) (noDuplicateKeys!258 (_2!26838 (h!53809 (toList!2534 (map!10376 (v!42686 (underlying!9712 thiss!42308))))))))))

(declare-fun m!4912557 () Bool)

(assert (=> bs!606100 m!4912557))

(assert (=> b!4318605 d!1269825))

(declare-fun b_lambda!127043 () Bool)

(assert (= b_lambda!127029 (or (and b!4318425 b_free!128923) b_lambda!127043)))

(declare-fun b_lambda!127045 () Bool)

(assert (= b_lambda!127023 (or (and b!4318425 b_free!128923) b_lambda!127045)))

(declare-fun b_lambda!127047 () Bool)

(assert (= b_lambda!127027 (or b!4318527 b_lambda!127047)))

(declare-fun bs!606101 () Bool)

(declare-fun d!1269827 () Bool)

(assert (= bs!606101 (and d!1269827 b!4318527)))

(assert (=> bs!606101 (= (dynLambda!20496 lambda!133631 (tuple2!47109 lt!1537248 (apply!11122 (v!42686 (underlying!9712 thiss!42308)) lt!1537248))) (noDuplicateKeys!258 (_2!26838 (tuple2!47109 lt!1537248 (apply!11122 (v!42686 (underlying!9712 thiss!42308)) lt!1537248)))))))

(declare-fun m!4912559 () Bool)

(assert (=> bs!606101 m!4912559))

(assert (=> d!1269767 d!1269827))

(declare-fun b_lambda!127049 () Bool)

(assert (= b_lambda!127033 (or (and b!4318425 b_free!128923) b_lambda!127049)))

(declare-fun b_lambda!127051 () Bool)

(assert (= b_lambda!127035 (or d!1269703 b_lambda!127051)))

(declare-fun bs!606102 () Bool)

(declare-fun d!1269829 () Bool)

(assert (= bs!606102 (and d!1269829 d!1269703)))

(assert (=> bs!606102 (= (dynLambda!20496 lambda!133628 (h!53809 (toList!2534 lt!1537172))) (allKeysSameHash!234 (_2!26838 (h!53809 (toList!2534 lt!1537172))) (_1!26838 (h!53809 (toList!2534 lt!1537172))) (hashF!6879 thiss!42308)))))

(declare-fun m!4912561 () Bool)

(assert (=> bs!606102 m!4912561))

(assert (=> b!4318938 d!1269829))

(declare-fun b_lambda!127053 () Bool)

(assert (= b_lambda!127019 (or d!1269689 b_lambda!127053)))

(declare-fun bs!606103 () Bool)

(declare-fun d!1269831 () Bool)

(assert (= bs!606103 (and d!1269831 d!1269689)))

(assert (=> bs!606103 (= (dynLambda!20496 lambda!133622 (h!53809 (toList!2534 lt!1537172))) (allKeysSameHash!234 (_2!26838 (h!53809 (toList!2534 lt!1537172))) (_1!26838 (h!53809 (toList!2534 lt!1537172))) (hashF!6879 thiss!42308)))))

(assert (=> bs!606103 m!4912561))

(assert (=> b!4318603 d!1269831))

(declare-fun b_lambda!127055 () Bool)

(assert (= b_lambda!127037 (or b!4318435 b_lambda!127055)))

(declare-fun bs!606104 () Bool)

(declare-fun d!1269833 () Bool)

(assert (= bs!606104 (and d!1269833 b!4318435)))

(assert (=> bs!606104 (= (dynLambda!20496 lambda!133615 (h!53809 (t!355342 (toList!2534 lt!1537172)))) (noDuplicateKeys!258 (_2!26838 (h!53809 (t!355342 (toList!2534 lt!1537172))))))))

(declare-fun m!4912563 () Bool)

(assert (=> bs!606104 m!4912563))

(assert (=> b!4318940 d!1269833))

(declare-fun b_lambda!127057 () Bool)

(assert (= b_lambda!127031 (or (and b!4318425 b_free!128923) b_lambda!127057)))

(declare-fun b_lambda!127059 () Bool)

(assert (= b_lambda!127039 (or d!1269687 b_lambda!127059)))

(declare-fun bs!606105 () Bool)

(declare-fun d!1269835 () Bool)

(assert (= bs!606105 (and d!1269835 d!1269687)))

(assert (=> bs!606105 (= (dynLambda!20498 lambda!133619 (h!53808 lt!1537170)) (= (hash!1147 (hashF!6879 thiss!42308) (_1!26836 (h!53808 lt!1537170))) lt!1537166))))

(declare-fun m!4912565 () Bool)

(assert (=> bs!606105 m!4912565))

(assert (=> b!4318945 d!1269835))

(declare-fun b_lambda!127061 () Bool)

(assert (= b_lambda!127025 (or d!1269683 b_lambda!127061)))

(declare-fun bs!606106 () Bool)

(declare-fun d!1269837 () Bool)

(assert (= bs!606106 (and d!1269837 d!1269683)))

(assert (=> bs!606106 (= (dynLambda!20498 lambda!133618 (h!53808 (removePairForKey!257 lt!1537170 key!2048))) (= (hash!1147 (hashF!6879 thiss!42308) (_1!26836 (h!53808 (removePairForKey!257 lt!1537170 key!2048)))) lt!1537166))))

(declare-fun m!4912567 () Bool)

(assert (=> bs!606106 m!4912567))

(assert (=> b!4318645 d!1269837))

(check-sat (not bs!606101) (not d!1269815) (not d!1269819) (not b!4318901) (not bs!606102) (not d!1269757) tp_is_empty!24061 (not d!1269761) (not bm!299096) (not bm!299093) (not bs!606106) (not b!4318912) (not b!4318778) (not d!1269763) (not b!4318653) (not mapNonEmpty!21139) (not d!1269797) (not bm!299114) (not b!4318738) (not bm!299088) (not b!4318646) (not b!4318660) (not b!4318636) (not b!4318633) (not d!1269759) (not b!4318748) (not b!4318984) (not b!4318677) (not d!1269743) (not d!1269779) (not d!1269727) (not b!4318627) (not d!1269805) (not b!4318768) (not d!1269769) (not bs!606100) (not b!4318583) (not b!4318585) (not b!4318661) (not b!4318975) (not b!4318977) (not b!4318973) (not b!4318647) (not d!1269731) (not b!4318581) (not b!4318657) (not d!1269775) (not b!4318728) (not bm!299009) (not b!4318668) (not b!4318651) (not b!4318724) (not d!1269741) (not b!4318985) (not bm!299010) (not b!4318898) (not d!1269789) (not d!1269787) (not b!4318933) (not bm!299098) (not d!1269773) (not d!1269801) (not b!4318808) (not b!4318665) (not b!4318650) (not b!4318780) (not bm!299091) (not b!4318754) (not b_lambda!127057) (not b!4318606) (not b_lambda!127055) (not b!4318944) (not b!4318926) (not b!4318601) (not bm!299030) (not b!4318663) (not d!1269803) (not bs!606103) (not b!4318584) (not b!4318654) (not b_next!129629) (not b_lambda!127053) (not d!1269799) (not bm!299029) (not b!4318774) (not b!4318979) (not b!4318723) (not b!4318969) (not b!4318558) (not b_lambda!127015) (not d!1269793) (not b_lambda!127049) (not b_lambda!127041) (not bs!606105) (not bm!299021) (not b!4318637) (not d!1269795) (not b!4318936) (not b!4318587) (not b!4318981) (not b!4318904) (not b!4318624) (not d!1269777) tp_is_empty!24063 (not b!4318946) (not b!4318745) (not b!4318757) (not b!4318942) (not bm!299101) (not b!4318667) (not b!4318561) (not d!1269745) (not b!4318632) (not d!1269767) (not d!1269747) (not b!4318639) (not b_lambda!127059) (not b!4318635) (not b_lambda!127043) (not b!4318600) (not b!4318978) (not b!4318648) (not d!1269723) (not b!4318805) (not b!4318983) (not b!4318671) (not b!4318659) (not b!4318900) (not b!4318939) (not b!4318722) (not b!4318602) (not b!4318560) (not d!1269715) (not d!1269721) (not b!4318980) (not b!4318593) (not bm!299095) (not b!4318726) (not b_lambda!127045) (not b_lambda!127017) (not bs!606104) (not d!1269771) (not b!4318746) (not bm!299022) (not b!4318586) (not b!4318628) (not d!1269719) (not bm!299112) b_and!340435 (not b!4318982) (not b!4318625) (not b!4318662) (not bm!299083) (not b!4318810) b_and!340445 (not d!1269739) (not b!4318604) (not d!1269823) (not bm!299008) (not b!4318941) (not b!4318652) (not b!4318656) (not b!4318772) (not bm!299087) (not b!4318629) (not bm!299031) (not bm!299103) (not d!1269751) (not b!4318777) (not b!4318740) (not b_lambda!127051) (not b_lambda!127047) (not d!1269755) (not b_next!129627) (not tb!257353) (not b!4318928) (not bm!299089) (not bm!299085) (not b_lambda!127061) (not b!4318580) (not d!1269749) (not d!1269733) (not d!1269781))
(check-sat b_and!340445 b_and!340435 (not b_next!129629) (not b_next!129627))
