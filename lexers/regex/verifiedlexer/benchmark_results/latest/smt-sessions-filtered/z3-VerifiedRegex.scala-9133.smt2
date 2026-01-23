; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!487640 () Bool)

(assert start!487640)

(declare-fun b!4766632 () Bool)

(declare-fun b_free!129643 () Bool)

(declare-fun b_next!130433 () Bool)

(assert (=> b!4766632 (= b_free!129643 (not b_next!130433))))

(declare-fun tp!1355472 () Bool)

(declare-fun b_and!341349 () Bool)

(assert (=> b!4766632 (= tp!1355472 b_and!341349)))

(declare-fun b!4766637 () Bool)

(declare-fun b_free!129645 () Bool)

(declare-fun b_next!130435 () Bool)

(assert (=> b!4766637 (= b_free!129645 (not b_next!130435))))

(declare-fun tp!1355471 () Bool)

(declare-fun b_and!341351 () Bool)

(assert (=> b!4766637 (= tp!1355471 b_and!341351)))

(declare-fun b!4766626 () Bool)

(declare-datatypes ((Unit!138219 0))(
  ( (Unit!138220) )
))
(declare-fun e!2975178 () Unit!138219)

(declare-fun Unit!138221 () Unit!138219)

(assert (=> b!4766626 (= e!2975178 Unit!138221)))

(declare-fun lt!1929436 () Unit!138219)

(declare-datatypes ((K!14954 0))(
  ( (K!14955 (val!20269 Int)) )
))
(declare-datatypes ((V!15200 0))(
  ( (V!15201 (val!20270 Int)) )
))
(declare-datatypes ((tuple2!55522 0))(
  ( (tuple2!55523 (_1!31055 K!14954) (_2!31055 V!15200)) )
))
(declare-datatypes ((List!53605 0))(
  ( (Nil!53481) (Cons!53481 (h!59893 tuple2!55522) (t!361025 List!53605)) )
))
(declare-datatypes ((tuple2!55524 0))(
  ( (tuple2!55525 (_1!31056 (_ BitVec 64)) (_2!31056 List!53605)) )
))
(declare-datatypes ((List!53606 0))(
  ( (Nil!53482) (Cons!53482 (h!59894 tuple2!55524) (t!361026 List!53606)) )
))
(declare-datatypes ((ListLongMap!4683 0))(
  ( (ListLongMap!4684 (toList!6285 List!53606)) )
))
(declare-fun lt!1929448 () ListLongMap!4683)

(declare-fun lt!1929434 () (_ BitVec 64))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1984 (List!53606 (_ BitVec 64)) Unit!138219)

(assert (=> b!4766626 (= lt!1929436 (lemmaContainsKeyImpliesGetValueByKeyDefined!1984 (toList!6285 lt!1929448) lt!1929434))))

(declare-datatypes ((Option!12666 0))(
  ( (None!12665) (Some!12665 (v!47646 List!53605)) )
))
(declare-fun isDefined!9834 (Option!12666) Bool)

(declare-fun getValueByKey!2175 (List!53606 (_ BitVec 64)) Option!12666)

(assert (=> b!4766626 (isDefined!9834 (getValueByKey!2175 (toList!6285 lt!1929448) lt!1929434))))

(declare-fun lt!1929432 () List!53605)

(declare-fun lt!1929446 () Unit!138219)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!928 (List!53606 (_ BitVec 64) List!53605) Unit!138219)

(assert (=> b!4766626 (= lt!1929446 (lemmaGetValueByKeyImpliesContainsTuple!928 (toList!6285 lt!1929448) lt!1929434 lt!1929432))))

(assert (=> b!4766626 false))

(declare-fun mapIsEmpty!21854 () Bool)

(declare-fun mapRes!21854 () Bool)

(assert (=> mapIsEmpty!21854 mapRes!21854))

(declare-fun key!1776 () K!14954)

(declare-fun b!4766627 () Bool)

(declare-fun e!2975177 () Bool)

(declare-datatypes ((Option!12667 0))(
  ( (None!12666) (Some!12666 (v!47647 tuple2!55522)) )
))
(declare-fun lt!1929447 () Option!12667)

(declare-fun get!18028 (Option!12667) tuple2!55522)

(declare-datatypes ((Option!12668 0))(
  ( (None!12667) (Some!12667 (v!47648 V!15200)) )
))
(declare-fun get!18029 (Option!12668) V!15200)

(declare-fun getValueByKey!2176 (List!53605 K!14954) Option!12668)

(declare-datatypes ((ListMap!5781 0))(
  ( (ListMap!5782 (toList!6286 List!53605)) )
))
(declare-fun extractMap!2143 (List!53606) ListMap!5781)

(assert (=> b!4766627 (= e!2975177 (= (_2!31055 (get!18028 lt!1929447)) (get!18029 (getValueByKey!2176 (toList!6286 (extractMap!2143 (toList!6285 lt!1929448))) key!1776))))))

(declare-fun b!4766628 () Bool)

(declare-fun e!2975171 () Bool)

(assert (=> b!4766628 (= e!2975171 (not true))))

(assert (=> b!4766628 e!2975177))

(declare-fun res!2021616 () Bool)

(assert (=> b!4766628 (=> (not res!2021616) (not e!2975177))))

(declare-fun isDefined!9835 (Option!12667) Bool)

(assert (=> b!4766628 (= res!2021616 (isDefined!9835 lt!1929447))))

(declare-fun lt!1929441 () List!53605)

(declare-fun getPair!644 (List!53605 K!14954) Option!12667)

(assert (=> b!4766628 (= lt!1929447 (getPair!644 lt!1929441 key!1776))))

(declare-fun lambda!224359 () Int)

(declare-fun lt!1929440 () tuple2!55524)

(declare-fun lt!1929438 () Unit!138219)

(declare-fun forallContained!3860 (List!53606 Int tuple2!55524) Unit!138219)

(assert (=> b!4766628 (= lt!1929438 (forallContained!3860 (toList!6285 lt!1929448) lambda!224359 lt!1929440))))

(declare-datatypes ((array!18016 0))(
  ( (array!18017 (arr!8035 (Array (_ BitVec 32) (_ BitVec 64))) (size!36265 (_ BitVec 32))) )
))
(declare-datatypes ((array!18018 0))(
  ( (array!18019 (arr!8036 (Array (_ BitVec 32) List!53605)) (size!36266 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!6586 0))(
  ( (HashableExt!6585 (__x!32523 Int)) )
))
(declare-datatypes ((LongMapFixedSize!9850 0))(
  ( (LongMapFixedSize!9851 (defaultEntry!5343 Int) (mask!14683 (_ BitVec 32)) (extraKeys!5200 (_ BitVec 32)) (zeroValue!5213 List!53605) (minValue!5213 List!53605) (_size!9875 (_ BitVec 32)) (_keys!5267 array!18016) (_values!5238 array!18018) (_vacant!4990 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19465 0))(
  ( (Cell!19466 (v!47649 LongMapFixedSize!9850)) )
))
(declare-datatypes ((MutLongMap!4925 0))(
  ( (LongMap!4925 (underlying!10057 Cell!19465)) (MutLongMapExt!4924 (__x!32524 Int)) )
))
(declare-datatypes ((Cell!19467 0))(
  ( (Cell!19468 (v!47650 MutLongMap!4925)) )
))
(declare-datatypes ((MutableMap!4809 0))(
  ( (MutableMapExt!4808 (__x!32525 Int)) (HashMap!4809 (underlying!10058 Cell!19467) (hashF!12429 Hashable!6586) (_size!9876 (_ BitVec 32)) (defaultValue!4980 Int)) )
))
(declare-fun thiss!42052 () MutableMap!4809)

(declare-fun lt!1929444 () Unit!138219)

(declare-fun lemmaInGenMapThenGetPairDefined!427 (ListLongMap!4683 K!14954 Hashable!6586) Unit!138219)

(assert (=> b!4766628 (= lt!1929444 (lemmaInGenMapThenGetPairDefined!427 lt!1929448 key!1776 (hashF!12429 thiss!42052)))))

(declare-fun lt!1929435 () Unit!138219)

(assert (=> b!4766628 (= lt!1929435 (forallContained!3860 (toList!6285 lt!1929448) lambda!224359 lt!1929440))))

(declare-fun contains!16826 (List!53606 tuple2!55524) Bool)

(assert (=> b!4766628 (contains!16826 (toList!6285 lt!1929448) lt!1929440)))

(assert (=> b!4766628 (= lt!1929440 (tuple2!55525 lt!1929434 lt!1929441))))

(declare-fun lt!1929439 () Unit!138219)

(declare-fun lemmaGetValueImpliesTupleContained!436 (ListLongMap!4683 (_ BitVec 64) List!53605) Unit!138219)

(assert (=> b!4766628 (= lt!1929439 (lemmaGetValueImpliesTupleContained!436 lt!1929448 lt!1929434 lt!1929441))))

(declare-fun apply!12624 (ListLongMap!4683 (_ BitVec 64)) List!53605)

(assert (=> b!4766628 (= lt!1929441 (apply!12624 lt!1929448 lt!1929434))))

(declare-fun contains!16827 (ListLongMap!4683 (_ BitVec 64)) Bool)

(assert (=> b!4766628 (contains!16827 lt!1929448 lt!1929434)))

(declare-fun lt!1929445 () Unit!138219)

(declare-fun lemmaInGenMapThenLongMapContainsHash!837 (ListLongMap!4683 K!14954 Hashable!6586) Unit!138219)

(assert (=> b!4766628 (= lt!1929445 (lemmaInGenMapThenLongMapContainsHash!837 lt!1929448 key!1776 (hashF!12429 thiss!42052)))))

(declare-fun lt!1929433 () Unit!138219)

(declare-fun lemmaGetPairGetSameValueAsMap!59 (ListLongMap!4683 K!14954 V!15200 Hashable!6586) Unit!138219)

(assert (=> b!4766628 (= lt!1929433 (lemmaGetPairGetSameValueAsMap!59 lt!1929448 key!1776 (_2!31055 (get!18028 (getPair!644 lt!1929432 key!1776))) (hashF!12429 thiss!42052)))))

(declare-fun lt!1929437 () Unit!138219)

(declare-fun lt!1929443 () tuple2!55524)

(assert (=> b!4766628 (= lt!1929437 (forallContained!3860 (toList!6285 lt!1929448) lambda!224359 lt!1929443))))

(declare-fun lt!1929442 () Unit!138219)

(assert (=> b!4766628 (= lt!1929442 e!2975178)))

(declare-fun c!813064 () Bool)

(assert (=> b!4766628 (= c!813064 (not (contains!16826 (toList!6285 lt!1929448) lt!1929443)))))

(assert (=> b!4766628 (= lt!1929443 (tuple2!55525 lt!1929434 lt!1929432))))

(declare-fun apply!12625 (MutLongMap!4925 (_ BitVec 64)) List!53605)

(assert (=> b!4766628 (= lt!1929432 (apply!12625 (v!47650 (underlying!10058 thiss!42052)) lt!1929434))))

(declare-fun map!11983 (MutLongMap!4925) ListLongMap!4683)

(assert (=> b!4766628 (= lt!1929448 (map!11983 (v!47650 (underlying!10058 thiss!42052))))))

(declare-fun hash!4568 (Hashable!6586 K!14954) (_ BitVec 64))

(assert (=> b!4766628 (= lt!1929434 (hash!4568 (hashF!12429 thiss!42052) key!1776))))

(declare-fun b!4766629 () Bool)

(declare-fun e!2975176 () Bool)

(declare-fun e!2975170 () Bool)

(assert (=> b!4766629 (= e!2975176 e!2975170)))

(declare-fun b!4766631 () Bool)

(declare-fun e!2975169 () Bool)

(declare-fun lt!1929449 () MutLongMap!4925)

(get-info :version)

(assert (=> b!4766631 (= e!2975169 (and e!2975176 ((_ is LongMap!4925) lt!1929449)))))

(assert (=> b!4766631 (= lt!1929449 (v!47650 (underlying!10058 thiss!42052)))))

(declare-fun tp!1355468 () Bool)

(declare-fun e!2975175 () Bool)

(declare-fun e!2975172 () Bool)

(declare-fun tp!1355470 () Bool)

(declare-fun array_inv!5781 (array!18016) Bool)

(declare-fun array_inv!5782 (array!18018) Bool)

(assert (=> b!4766632 (= e!2975172 (and tp!1355472 tp!1355470 tp!1355468 (array_inv!5781 (_keys!5267 (v!47649 (underlying!10057 (v!47650 (underlying!10058 thiss!42052)))))) (array_inv!5782 (_values!5238 (v!47649 (underlying!10057 (v!47650 (underlying!10058 thiss!42052)))))) e!2975175))))

(declare-fun b!4766633 () Bool)

(declare-fun res!2021615 () Bool)

(assert (=> b!4766633 (=> (not res!2021615) (not e!2975171))))

(declare-fun valid!3925 (MutableMap!4809) Bool)

(assert (=> b!4766633 (= res!2021615 (valid!3925 thiss!42052))))

(declare-fun b!4766634 () Bool)

(declare-fun tp!1355467 () Bool)

(assert (=> b!4766634 (= e!2975175 (and tp!1355467 mapRes!21854))))

(declare-fun condMapEmpty!21854 () Bool)

(declare-fun mapDefault!21854 () List!53605)

(assert (=> b!4766634 (= condMapEmpty!21854 (= (arr!8036 (_values!5238 (v!47649 (underlying!10057 (v!47650 (underlying!10058 thiss!42052)))))) ((as const (Array (_ BitVec 32) List!53605)) mapDefault!21854)))))

(declare-fun mapNonEmpty!21854 () Bool)

(declare-fun tp!1355466 () Bool)

(declare-fun tp!1355469 () Bool)

(assert (=> mapNonEmpty!21854 (= mapRes!21854 (and tp!1355466 tp!1355469))))

(declare-fun mapKey!21854 () (_ BitVec 32))

(declare-fun mapRest!21854 () (Array (_ BitVec 32) List!53605))

(declare-fun mapValue!21854 () List!53605)

(assert (=> mapNonEmpty!21854 (= (arr!8036 (_values!5238 (v!47649 (underlying!10057 (v!47650 (underlying!10058 thiss!42052)))))) (store mapRest!21854 mapKey!21854 mapValue!21854))))

(declare-fun b!4766635 () Bool)

(declare-fun Unit!138222 () Unit!138219)

(assert (=> b!4766635 (= e!2975178 Unit!138222)))

(declare-fun b!4766636 () Bool)

(assert (=> b!4766636 (= e!2975170 e!2975172)))

(declare-fun e!2975174 () Bool)

(assert (=> b!4766637 (= e!2975174 (and e!2975169 tp!1355471))))

(declare-fun b!4766630 () Bool)

(declare-fun res!2021617 () Bool)

(assert (=> b!4766630 (=> (not res!2021617) (not e!2975171))))

(declare-fun contains!16828 (MutableMap!4809 K!14954) Bool)

(assert (=> b!4766630 (= res!2021617 (contains!16828 thiss!42052 key!1776))))

(declare-fun res!2021614 () Bool)

(assert (=> start!487640 (=> (not res!2021614) (not e!2975171))))

(assert (=> start!487640 (= res!2021614 ((_ is HashMap!4809) thiss!42052))))

(assert (=> start!487640 e!2975171))

(assert (=> start!487640 e!2975174))

(declare-fun tp_is_empty!32443 () Bool)

(assert (=> start!487640 tp_is_empty!32443))

(assert (= (and start!487640 res!2021614) b!4766633))

(assert (= (and b!4766633 res!2021615) b!4766630))

(assert (= (and b!4766630 res!2021617) b!4766628))

(assert (= (and b!4766628 c!813064) b!4766626))

(assert (= (and b!4766628 (not c!813064)) b!4766635))

(assert (= (and b!4766628 res!2021616) b!4766627))

(assert (= (and b!4766634 condMapEmpty!21854) mapIsEmpty!21854))

(assert (= (and b!4766634 (not condMapEmpty!21854)) mapNonEmpty!21854))

(assert (= b!4766632 b!4766634))

(assert (= b!4766636 b!4766632))

(assert (= b!4766629 b!4766636))

(assert (= (and b!4766631 ((_ is LongMap!4925) (v!47650 (underlying!10058 thiss!42052)))) b!4766629))

(assert (= b!4766637 b!4766631))

(assert (= (and start!487640 ((_ is HashMap!4809) thiss!42052)) b!4766637))

(declare-fun m!5737440 () Bool)

(assert (=> b!4766630 m!5737440))

(declare-fun m!5737442 () Bool)

(assert (=> b!4766633 m!5737442))

(declare-fun m!5737444 () Bool)

(assert (=> b!4766632 m!5737444))

(declare-fun m!5737446 () Bool)

(assert (=> b!4766632 m!5737446))

(declare-fun m!5737448 () Bool)

(assert (=> b!4766627 m!5737448))

(declare-fun m!5737450 () Bool)

(assert (=> b!4766627 m!5737450))

(declare-fun m!5737452 () Bool)

(assert (=> b!4766627 m!5737452))

(assert (=> b!4766627 m!5737452))

(declare-fun m!5737454 () Bool)

(assert (=> b!4766627 m!5737454))

(declare-fun m!5737456 () Bool)

(assert (=> b!4766628 m!5737456))

(declare-fun m!5737458 () Bool)

(assert (=> b!4766628 m!5737458))

(declare-fun m!5737460 () Bool)

(assert (=> b!4766628 m!5737460))

(declare-fun m!5737462 () Bool)

(assert (=> b!4766628 m!5737462))

(declare-fun m!5737464 () Bool)

(assert (=> b!4766628 m!5737464))

(declare-fun m!5737466 () Bool)

(assert (=> b!4766628 m!5737466))

(declare-fun m!5737468 () Bool)

(assert (=> b!4766628 m!5737468))

(declare-fun m!5737470 () Bool)

(assert (=> b!4766628 m!5737470))

(declare-fun m!5737472 () Bool)

(assert (=> b!4766628 m!5737472))

(declare-fun m!5737474 () Bool)

(assert (=> b!4766628 m!5737474))

(declare-fun m!5737476 () Bool)

(assert (=> b!4766628 m!5737476))

(declare-fun m!5737478 () Bool)

(assert (=> b!4766628 m!5737478))

(declare-fun m!5737480 () Bool)

(assert (=> b!4766628 m!5737480))

(declare-fun m!5737482 () Bool)

(assert (=> b!4766628 m!5737482))

(assert (=> b!4766628 m!5737458))

(declare-fun m!5737484 () Bool)

(assert (=> b!4766628 m!5737484))

(assert (=> b!4766628 m!5737456))

(declare-fun m!5737486 () Bool)

(assert (=> b!4766628 m!5737486))

(declare-fun m!5737488 () Bool)

(assert (=> b!4766628 m!5737488))

(declare-fun m!5737490 () Bool)

(assert (=> mapNonEmpty!21854 m!5737490))

(declare-fun m!5737492 () Bool)

(assert (=> b!4766626 m!5737492))

(declare-fun m!5737494 () Bool)

(assert (=> b!4766626 m!5737494))

(assert (=> b!4766626 m!5737494))

(declare-fun m!5737496 () Bool)

(assert (=> b!4766626 m!5737496))

(declare-fun m!5737498 () Bool)

(assert (=> b!4766626 m!5737498))

(check-sat (not b!4766627) (not b!4766634) b_and!341351 (not b!4766633) (not b!4766628) (not b!4766630) (not mapNonEmpty!21854) (not b!4766626) (not b!4766632) b_and!341349 tp_is_empty!32443 (not b_next!130435) (not b_next!130433))
(check-sat b_and!341351 b_and!341349 (not b_next!130435) (not b_next!130433))
