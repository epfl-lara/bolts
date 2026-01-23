; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!487644 () Bool)

(assert start!487644)

(declare-fun b!4766704 () Bool)

(declare-fun b_free!129651 () Bool)

(declare-fun b_next!130441 () Bool)

(assert (=> b!4766704 (= b_free!129651 (not b_next!130441))))

(declare-fun tp!1355508 () Bool)

(declare-fun b_and!341357 () Bool)

(assert (=> b!4766704 (= tp!1355508 b_and!341357)))

(declare-fun b!4766700 () Bool)

(declare-fun b_free!129653 () Bool)

(declare-fun b_next!130443 () Bool)

(assert (=> b!4766700 (= b_free!129653 (not b_next!130443))))

(declare-fun tp!1355513 () Bool)

(declare-fun b_and!341359 () Bool)

(assert (=> b!4766700 (= tp!1355513 b_and!341359)))

(declare-fun mapIsEmpty!21860 () Bool)

(declare-fun mapRes!21860 () Bool)

(assert (=> mapIsEmpty!21860 mapRes!21860))

(declare-fun b!4766698 () Bool)

(declare-fun e!2975232 () Bool)

(declare-datatypes ((K!14959 0))(
  ( (K!14960 (val!20273 Int)) )
))
(declare-datatypes ((V!15205 0))(
  ( (V!15206 (val!20274 Int)) )
))
(declare-datatypes ((tuple2!55530 0))(
  ( (tuple2!55531 (_1!31059 K!14959) (_2!31059 V!15205)) )
))
(declare-datatypes ((array!18024 0))(
  ( (array!18025 (arr!8039 (Array (_ BitVec 32) (_ BitVec 64))) (size!36269 (_ BitVec 32))) )
))
(declare-datatypes ((List!53609 0))(
  ( (Nil!53485) (Cons!53485 (h!59897 tuple2!55530) (t!361029 List!53609)) )
))
(declare-datatypes ((array!18026 0))(
  ( (array!18027 (arr!8040 (Array (_ BitVec 32) List!53609)) (size!36270 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!6588 0))(
  ( (HashableExt!6587 (__x!32529 Int)) )
))
(declare-datatypes ((LongMapFixedSize!9854 0))(
  ( (LongMapFixedSize!9855 (defaultEntry!5345 Int) (mask!14686 (_ BitVec 32)) (extraKeys!5202 (_ BitVec 32)) (zeroValue!5215 List!53609) (minValue!5215 List!53609) (_size!9879 (_ BitVec 32)) (_keys!5269 array!18024) (_values!5240 array!18026) (_vacant!4992 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19473 0))(
  ( (Cell!19474 (v!47656 LongMapFixedSize!9854)) )
))
(declare-datatypes ((MutLongMap!4927 0))(
  ( (LongMap!4927 (underlying!10061 Cell!19473)) (MutLongMapExt!4926 (__x!32530 Int)) )
))
(declare-datatypes ((Cell!19475 0))(
  ( (Cell!19476 (v!47657 MutLongMap!4927)) )
))
(declare-datatypes ((MutableMap!4811 0))(
  ( (MutableMapExt!4810 (__x!32531 Int)) (HashMap!4811 (underlying!10062 Cell!19475) (hashF!12431 Hashable!6588) (_size!9880 (_ BitVec 32)) (defaultValue!4982 Int)) )
))
(declare-fun thiss!42052 () MutableMap!4811)

(declare-fun key!1776 () K!14959)

(declare-datatypes ((Option!12672 0))(
  ( (None!12671) (Some!12671 (v!47658 V!15205)) )
))
(declare-fun isDefined!9837 (Option!12672) Bool)

(declare-fun getValueByKey!2179 (List!53609 K!14959) Option!12672)

(declare-datatypes ((ListMap!5785 0))(
  ( (ListMap!5786 (toList!6289 List!53609)) )
))
(declare-fun map!11985 (MutableMap!4811) ListMap!5785)

(assert (=> b!4766698 (= e!2975232 (not (isDefined!9837 (getValueByKey!2179 (toList!6289 (map!11985 thiss!42052)) key!1776))))))

(declare-fun e!2975234 () Bool)

(assert (=> b!4766698 e!2975234))

(declare-fun res!2021641 () Bool)

(assert (=> b!4766698 (=> (not res!2021641) (not e!2975234))))

(declare-datatypes ((Option!12673 0))(
  ( (None!12672) (Some!12672 (v!47659 tuple2!55530)) )
))
(declare-fun lt!1929545 () Option!12673)

(declare-fun isDefined!9838 (Option!12673) Bool)

(assert (=> b!4766698 (= res!2021641 (isDefined!9838 lt!1929545))))

(declare-fun lt!1929557 () List!53609)

(declare-fun getPair!645 (List!53609 K!14959) Option!12673)

(assert (=> b!4766698 (= lt!1929545 (getPair!645 lt!1929557 key!1776))))

(declare-datatypes ((tuple2!55532 0))(
  ( (tuple2!55533 (_1!31060 (_ BitVec 64)) (_2!31060 List!53609)) )
))
(declare-datatypes ((List!53610 0))(
  ( (Nil!53486) (Cons!53486 (h!59898 tuple2!55532) (t!361030 List!53610)) )
))
(declare-datatypes ((ListLongMap!4687 0))(
  ( (ListLongMap!4688 (toList!6290 List!53610)) )
))
(declare-fun lt!1929547 () ListLongMap!4687)

(declare-fun lambda!224373 () Int)

(declare-fun lt!1929543 () tuple2!55532)

(declare-datatypes ((Unit!138227 0))(
  ( (Unit!138228) )
))
(declare-fun lt!1929556 () Unit!138227)

(declare-fun forallContained!3861 (List!53610 Int tuple2!55532) Unit!138227)

(assert (=> b!4766698 (= lt!1929556 (forallContained!3861 (toList!6290 lt!1929547) lambda!224373 lt!1929543))))

(declare-fun lt!1929555 () Unit!138227)

(declare-fun lemmaInGenMapThenGetPairDefined!428 (ListLongMap!4687 K!14959 Hashable!6588) Unit!138227)

(assert (=> b!4766698 (= lt!1929555 (lemmaInGenMapThenGetPairDefined!428 lt!1929547 key!1776 (hashF!12431 thiss!42052)))))

(declare-fun lt!1929540 () Unit!138227)

(assert (=> b!4766698 (= lt!1929540 (forallContained!3861 (toList!6290 lt!1929547) lambda!224373 lt!1929543))))

(declare-fun contains!16830 (List!53610 tuple2!55532) Bool)

(assert (=> b!4766698 (contains!16830 (toList!6290 lt!1929547) lt!1929543)))

(declare-fun lt!1929541 () (_ BitVec 64))

(assert (=> b!4766698 (= lt!1929543 (tuple2!55533 lt!1929541 lt!1929557))))

(declare-fun lt!1929553 () Unit!138227)

(declare-fun lemmaGetValueImpliesTupleContained!437 (ListLongMap!4687 (_ BitVec 64) List!53609) Unit!138227)

(assert (=> b!4766698 (= lt!1929553 (lemmaGetValueImpliesTupleContained!437 lt!1929547 lt!1929541 lt!1929557))))

(declare-fun apply!12626 (ListLongMap!4687 (_ BitVec 64)) List!53609)

(assert (=> b!4766698 (= lt!1929557 (apply!12626 lt!1929547 lt!1929541))))

(declare-fun contains!16831 (ListLongMap!4687 (_ BitVec 64)) Bool)

(assert (=> b!4766698 (contains!16831 lt!1929547 lt!1929541)))

(declare-fun lt!1929546 () Unit!138227)

(declare-fun lemmaInGenMapThenLongMapContainsHash!838 (ListLongMap!4687 K!14959 Hashable!6588) Unit!138227)

(assert (=> b!4766698 (= lt!1929546 (lemmaInGenMapThenLongMapContainsHash!838 lt!1929547 key!1776 (hashF!12431 thiss!42052)))))

(declare-fun lt!1929544 () List!53609)

(declare-fun lt!1929551 () Unit!138227)

(declare-fun lemmaGetPairGetSameValueAsMap!60 (ListLongMap!4687 K!14959 V!15205 Hashable!6588) Unit!138227)

(declare-fun get!18033 (Option!12673) tuple2!55530)

(assert (=> b!4766698 (= lt!1929551 (lemmaGetPairGetSameValueAsMap!60 lt!1929547 key!1776 (_2!31059 (get!18033 (getPair!645 lt!1929544 key!1776))) (hashF!12431 thiss!42052)))))

(declare-fun lt!1929552 () tuple2!55532)

(declare-fun lt!1929554 () Unit!138227)

(assert (=> b!4766698 (= lt!1929554 (forallContained!3861 (toList!6290 lt!1929547) lambda!224373 lt!1929552))))

(declare-fun lt!1929550 () Unit!138227)

(declare-fun e!2975231 () Unit!138227)

(assert (=> b!4766698 (= lt!1929550 e!2975231)))

(declare-fun c!813070 () Bool)

(assert (=> b!4766698 (= c!813070 (not (contains!16830 (toList!6290 lt!1929547) lt!1929552)))))

(assert (=> b!4766698 (= lt!1929552 (tuple2!55533 lt!1929541 lt!1929544))))

(declare-fun apply!12627 (MutLongMap!4927 (_ BitVec 64)) List!53609)

(assert (=> b!4766698 (= lt!1929544 (apply!12627 (v!47657 (underlying!10062 thiss!42052)) lt!1929541))))

(declare-fun map!11986 (MutLongMap!4927) ListLongMap!4687)

(assert (=> b!4766698 (= lt!1929547 (map!11986 (v!47657 (underlying!10062 thiss!42052))))))

(declare-fun hash!4569 (Hashable!6588 K!14959) (_ BitVec 64))

(assert (=> b!4766698 (= lt!1929541 (hash!4569 (hashF!12431 thiss!42052) key!1776))))

(declare-fun b!4766699 () Bool)

(declare-fun e!2975233 () Bool)

(declare-fun e!2975238 () Bool)

(assert (=> b!4766699 (= e!2975233 e!2975238)))

(declare-fun e!2975237 () Bool)

(declare-fun e!2975236 () Bool)

(assert (=> b!4766700 (= e!2975237 (and e!2975236 tp!1355513))))

(declare-fun mapNonEmpty!21860 () Bool)

(declare-fun tp!1355509 () Bool)

(declare-fun tp!1355514 () Bool)

(assert (=> mapNonEmpty!21860 (= mapRes!21860 (and tp!1355509 tp!1355514))))

(declare-fun mapValue!21860 () List!53609)

(declare-fun mapRest!21860 () (Array (_ BitVec 32) List!53609))

(declare-fun mapKey!21860 () (_ BitVec 32))

(assert (=> mapNonEmpty!21860 (= (arr!8040 (_values!5240 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052)))))) (store mapRest!21860 mapKey!21860 mapValue!21860))))

(declare-fun b!4766701 () Bool)

(declare-fun res!2021639 () Bool)

(assert (=> b!4766701 (=> (not res!2021639) (not e!2975232))))

(declare-fun contains!16832 (MutableMap!4811 K!14959) Bool)

(assert (=> b!4766701 (= res!2021639 (contains!16832 thiss!42052 key!1776))))

(declare-fun b!4766702 () Bool)

(declare-fun get!18034 (Option!12672) V!15205)

(declare-fun extractMap!2145 (List!53610) ListMap!5785)

(assert (=> b!4766702 (= e!2975234 (= (_2!31059 (get!18033 lt!1929545)) (get!18034 (getValueByKey!2179 (toList!6289 (extractMap!2145 (toList!6290 lt!1929547))) key!1776))))))

(declare-fun b!4766703 () Bool)

(declare-fun e!2975235 () Bool)

(declare-fun lt!1929542 () MutLongMap!4927)

(get-info :version)

(assert (=> b!4766703 (= e!2975236 (and e!2975235 ((_ is LongMap!4927) lt!1929542)))))

(assert (=> b!4766703 (= lt!1929542 (v!47657 (underlying!10062 thiss!42052)))))

(declare-fun e!2975230 () Bool)

(declare-fun tp!1355511 () Bool)

(declare-fun tp!1355510 () Bool)

(declare-fun array_inv!5785 (array!18024) Bool)

(declare-fun array_inv!5786 (array!18026) Bool)

(assert (=> b!4766704 (= e!2975238 (and tp!1355508 tp!1355510 tp!1355511 (array_inv!5785 (_keys!5269 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052)))))) (array_inv!5786 (_values!5240 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052)))))) e!2975230))))

(declare-fun b!4766705 () Bool)

(declare-fun res!2021638 () Bool)

(assert (=> b!4766705 (=> (not res!2021638) (not e!2975232))))

(declare-fun valid!3927 (MutableMap!4811) Bool)

(assert (=> b!4766705 (= res!2021638 (valid!3927 thiss!42052))))

(declare-fun b!4766706 () Bool)

(assert (=> b!4766706 (= e!2975235 e!2975233)))

(declare-fun b!4766707 () Bool)

(declare-fun Unit!138229 () Unit!138227)

(assert (=> b!4766707 (= e!2975231 Unit!138229)))

(declare-fun res!2021640 () Bool)

(assert (=> start!487644 (=> (not res!2021640) (not e!2975232))))

(assert (=> start!487644 (= res!2021640 ((_ is HashMap!4811) thiss!42052))))

(assert (=> start!487644 e!2975232))

(assert (=> start!487644 e!2975237))

(declare-fun tp_is_empty!32447 () Bool)

(assert (=> start!487644 tp_is_empty!32447))

(declare-fun b!4766708 () Bool)

(declare-fun Unit!138230 () Unit!138227)

(assert (=> b!4766708 (= e!2975231 Unit!138230)))

(declare-fun lt!1929549 () Unit!138227)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1986 (List!53610 (_ BitVec 64)) Unit!138227)

(assert (=> b!4766708 (= lt!1929549 (lemmaContainsKeyImpliesGetValueByKeyDefined!1986 (toList!6290 lt!1929547) lt!1929541))))

(declare-datatypes ((Option!12674 0))(
  ( (None!12673) (Some!12673 (v!47660 List!53609)) )
))
(declare-fun isDefined!9839 (Option!12674) Bool)

(declare-fun getValueByKey!2180 (List!53610 (_ BitVec 64)) Option!12674)

(assert (=> b!4766708 (isDefined!9839 (getValueByKey!2180 (toList!6290 lt!1929547) lt!1929541))))

(declare-fun lt!1929548 () Unit!138227)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!930 (List!53610 (_ BitVec 64) List!53609) Unit!138227)

(assert (=> b!4766708 (= lt!1929548 (lemmaGetValueByKeyImpliesContainsTuple!930 (toList!6290 lt!1929547) lt!1929541 lt!1929544))))

(assert (=> b!4766708 false))

(declare-fun b!4766709 () Bool)

(declare-fun tp!1355512 () Bool)

(assert (=> b!4766709 (= e!2975230 (and tp!1355512 mapRes!21860))))

(declare-fun condMapEmpty!21860 () Bool)

(declare-fun mapDefault!21860 () List!53609)

(assert (=> b!4766709 (= condMapEmpty!21860 (= (arr!8040 (_values!5240 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052)))))) ((as const (Array (_ BitVec 32) List!53609)) mapDefault!21860)))))

(assert (= (and start!487644 res!2021640) b!4766705))

(assert (= (and b!4766705 res!2021638) b!4766701))

(assert (= (and b!4766701 res!2021639) b!4766698))

(assert (= (and b!4766698 c!813070) b!4766708))

(assert (= (and b!4766698 (not c!813070)) b!4766707))

(assert (= (and b!4766698 res!2021641) b!4766702))

(assert (= (and b!4766709 condMapEmpty!21860) mapIsEmpty!21860))

(assert (= (and b!4766709 (not condMapEmpty!21860)) mapNonEmpty!21860))

(assert (= b!4766704 b!4766709))

(assert (= b!4766699 b!4766704))

(assert (= b!4766706 b!4766699))

(assert (= (and b!4766703 ((_ is LongMap!4927) (v!47657 (underlying!10062 thiss!42052)))) b!4766706))

(assert (= b!4766700 b!4766703))

(assert (= (and start!487644 ((_ is HashMap!4811) thiss!42052)) b!4766700))

(declare-fun m!5737566 () Bool)

(assert (=> b!4766701 m!5737566))

(declare-fun m!5737568 () Bool)

(assert (=> mapNonEmpty!21860 m!5737568))

(declare-fun m!5737570 () Bool)

(assert (=> b!4766708 m!5737570))

(declare-fun m!5737572 () Bool)

(assert (=> b!4766708 m!5737572))

(assert (=> b!4766708 m!5737572))

(declare-fun m!5737574 () Bool)

(assert (=> b!4766708 m!5737574))

(declare-fun m!5737576 () Bool)

(assert (=> b!4766708 m!5737576))

(declare-fun m!5737578 () Bool)

(assert (=> b!4766702 m!5737578))

(declare-fun m!5737580 () Bool)

(assert (=> b!4766702 m!5737580))

(declare-fun m!5737582 () Bool)

(assert (=> b!4766702 m!5737582))

(assert (=> b!4766702 m!5737582))

(declare-fun m!5737584 () Bool)

(assert (=> b!4766702 m!5737584))

(declare-fun m!5737586 () Bool)

(assert (=> b!4766704 m!5737586))

(declare-fun m!5737588 () Bool)

(assert (=> b!4766704 m!5737588))

(declare-fun m!5737590 () Bool)

(assert (=> b!4766698 m!5737590))

(declare-fun m!5737592 () Bool)

(assert (=> b!4766698 m!5737592))

(declare-fun m!5737594 () Bool)

(assert (=> b!4766698 m!5737594))

(assert (=> b!4766698 m!5737592))

(declare-fun m!5737596 () Bool)

(assert (=> b!4766698 m!5737596))

(declare-fun m!5737598 () Bool)

(assert (=> b!4766698 m!5737598))

(declare-fun m!5737600 () Bool)

(assert (=> b!4766698 m!5737600))

(declare-fun m!5737602 () Bool)

(assert (=> b!4766698 m!5737602))

(declare-fun m!5737604 () Bool)

(assert (=> b!4766698 m!5737604))

(declare-fun m!5737606 () Bool)

(assert (=> b!4766698 m!5737606))

(declare-fun m!5737608 () Bool)

(assert (=> b!4766698 m!5737608))

(declare-fun m!5737610 () Bool)

(assert (=> b!4766698 m!5737610))

(declare-fun m!5737612 () Bool)

(assert (=> b!4766698 m!5737612))

(declare-fun m!5737614 () Bool)

(assert (=> b!4766698 m!5737614))

(declare-fun m!5737616 () Bool)

(assert (=> b!4766698 m!5737616))

(declare-fun m!5737618 () Bool)

(assert (=> b!4766698 m!5737618))

(declare-fun m!5737620 () Bool)

(assert (=> b!4766698 m!5737620))

(declare-fun m!5737622 () Bool)

(assert (=> b!4766698 m!5737622))

(assert (=> b!4766698 m!5737616))

(declare-fun m!5737624 () Bool)

(assert (=> b!4766698 m!5737624))

(declare-fun m!5737626 () Bool)

(assert (=> b!4766698 m!5737626))

(declare-fun m!5737628 () Bool)

(assert (=> b!4766698 m!5737628))

(assert (=> b!4766698 m!5737620))

(declare-fun m!5737630 () Bool)

(assert (=> b!4766705 m!5737630))

(check-sat (not b_next!130443) (not b!4766702) (not b!4766708) tp_is_empty!32447 (not b!4766698) b_and!341357 (not b!4766709) (not b!4766704) (not b!4766701) (not mapNonEmpty!21860) (not b_next!130441) b_and!341359 (not b!4766705))
(check-sat b_and!341359 b_and!341357 (not b_next!130443) (not b_next!130441))
(get-model)

(declare-fun d!1523609 () Bool)

(declare-fun e!2975241 () Bool)

(assert (=> d!1523609 e!2975241))

(declare-fun c!813073 () Bool)

(declare-fun contains!16833 (MutLongMap!4927 (_ BitVec 64)) Bool)

(assert (=> d!1523609 (= c!813073 (contains!16833 (v!47657 (underlying!10062 thiss!42052)) lt!1929541))))

(declare-fun lt!1929560 () List!53609)

(declare-fun apply!12628 (LongMapFixedSize!9854 (_ BitVec 64)) List!53609)

(assert (=> d!1523609 (= lt!1929560 (apply!12628 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052)))) lt!1929541))))

(declare-fun valid!3928 (MutLongMap!4927) Bool)

(assert (=> d!1523609 (valid!3928 (v!47657 (underlying!10062 thiss!42052)))))

(assert (=> d!1523609 (= (apply!12627 (v!47657 (underlying!10062 thiss!42052)) lt!1929541) lt!1929560)))

(declare-fun b!4766714 () Bool)

(declare-fun get!18035 (Option!12674) List!53609)

(assert (=> b!4766714 (= e!2975241 (= lt!1929560 (get!18035 (getValueByKey!2180 (toList!6290 (map!11986 (v!47657 (underlying!10062 thiss!42052)))) lt!1929541))))))

(declare-fun b!4766715 () Bool)

(declare-fun dynLambda!21950 (Int (_ BitVec 64)) List!53609)

(assert (=> b!4766715 (= e!2975241 (= lt!1929560 (dynLambda!21950 (defaultEntry!5345 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) lt!1929541)))))

(assert (=> b!4766715 ((_ is LongMap!4927) (v!47657 (underlying!10062 thiss!42052)))))

(assert (= (and d!1523609 c!813073) b!4766714))

(assert (= (and d!1523609 (not c!813073)) b!4766715))

(declare-fun b_lambda!184343 () Bool)

(assert (=> (not b_lambda!184343) (not b!4766715)))

(declare-fun t!361032 () Bool)

(declare-fun tb!257473 () Bool)

(assert (=> (and b!4766704 (= (defaultEntry!5345 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) (defaultEntry!5345 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052)))))) t!361032) tb!257473))

(assert (=> b!4766715 t!361032))

(declare-fun result!319108 () Bool)

(declare-fun b_and!341361 () Bool)

(assert (= b_and!341357 (and (=> t!361032 result!319108) b_and!341361)))

(declare-fun m!5737632 () Bool)

(assert (=> d!1523609 m!5737632))

(declare-fun m!5737634 () Bool)

(assert (=> d!1523609 m!5737634))

(declare-fun m!5737636 () Bool)

(assert (=> d!1523609 m!5737636))

(assert (=> b!4766714 m!5737600))

(declare-fun m!5737638 () Bool)

(assert (=> b!4766714 m!5737638))

(assert (=> b!4766714 m!5737638))

(declare-fun m!5737640 () Bool)

(assert (=> b!4766714 m!5737640))

(declare-fun m!5737642 () Bool)

(assert (=> b!4766715 m!5737642))

(assert (=> b!4766698 d!1523609))

(declare-fun d!1523611 () Bool)

(declare-fun lt!1929563 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9586 (List!53610) (InoxSet tuple2!55532))

(assert (=> d!1523611 (= lt!1929563 (select (content!9586 (toList!6290 lt!1929547)) lt!1929543))))

(declare-fun e!2975246 () Bool)

(assert (=> d!1523611 (= lt!1929563 e!2975246)))

(declare-fun res!2021647 () Bool)

(assert (=> d!1523611 (=> (not res!2021647) (not e!2975246))))

(assert (=> d!1523611 (= res!2021647 ((_ is Cons!53486) (toList!6290 lt!1929547)))))

(assert (=> d!1523611 (= (contains!16830 (toList!6290 lt!1929547) lt!1929543) lt!1929563)))

(declare-fun b!4766720 () Bool)

(declare-fun e!2975247 () Bool)

(assert (=> b!4766720 (= e!2975246 e!2975247)))

(declare-fun res!2021646 () Bool)

(assert (=> b!4766720 (=> res!2021646 e!2975247)))

(assert (=> b!4766720 (= res!2021646 (= (h!59898 (toList!6290 lt!1929547)) lt!1929543))))

(declare-fun b!4766721 () Bool)

(assert (=> b!4766721 (= e!2975247 (contains!16830 (t!361030 (toList!6290 lt!1929547)) lt!1929543))))

(assert (= (and d!1523611 res!2021647) b!4766720))

(assert (= (and b!4766720 (not res!2021646)) b!4766721))

(declare-fun m!5737644 () Bool)

(assert (=> d!1523611 m!5737644))

(declare-fun m!5737646 () Bool)

(assert (=> d!1523611 m!5737646))

(declare-fun m!5737648 () Bool)

(assert (=> b!4766721 m!5737648))

(assert (=> b!4766698 d!1523611))

(declare-fun d!1523613 () Bool)

(declare-fun c!813078 () Bool)

(assert (=> d!1523613 (= c!813078 (and ((_ is Cons!53485) (toList!6289 (map!11985 thiss!42052))) (= (_1!31059 (h!59897 (toList!6289 (map!11985 thiss!42052)))) key!1776)))))

(declare-fun e!2975252 () Option!12672)

(assert (=> d!1523613 (= (getValueByKey!2179 (toList!6289 (map!11985 thiss!42052)) key!1776) e!2975252)))

(declare-fun b!4766730 () Bool)

(assert (=> b!4766730 (= e!2975252 (Some!12671 (_2!31059 (h!59897 (toList!6289 (map!11985 thiss!42052))))))))

(declare-fun b!4766733 () Bool)

(declare-fun e!2975253 () Option!12672)

(assert (=> b!4766733 (= e!2975253 None!12671)))

(declare-fun b!4766731 () Bool)

(assert (=> b!4766731 (= e!2975252 e!2975253)))

(declare-fun c!813079 () Bool)

(assert (=> b!4766731 (= c!813079 (and ((_ is Cons!53485) (toList!6289 (map!11985 thiss!42052))) (not (= (_1!31059 (h!59897 (toList!6289 (map!11985 thiss!42052)))) key!1776))))))

(declare-fun b!4766732 () Bool)

(assert (=> b!4766732 (= e!2975253 (getValueByKey!2179 (t!361029 (toList!6289 (map!11985 thiss!42052))) key!1776))))

(assert (= (and d!1523613 c!813078) b!4766730))

(assert (= (and d!1523613 (not c!813078)) b!4766731))

(assert (= (and b!4766731 c!813079) b!4766732))

(assert (= (and b!4766731 (not c!813079)) b!4766733))

(declare-fun m!5737650 () Bool)

(assert (=> b!4766732 m!5737650))

(assert (=> b!4766698 d!1523613))

(declare-fun d!1523615 () Bool)

(declare-fun dynLambda!21951 (Int tuple2!55532) Bool)

(assert (=> d!1523615 (dynLambda!21951 lambda!224373 lt!1929552)))

(declare-fun lt!1929566 () Unit!138227)

(declare-fun choose!33964 (List!53610 Int tuple2!55532) Unit!138227)

(assert (=> d!1523615 (= lt!1929566 (choose!33964 (toList!6290 lt!1929547) lambda!224373 lt!1929552))))

(declare-fun e!2975256 () Bool)

(assert (=> d!1523615 e!2975256))

(declare-fun res!2021650 () Bool)

(assert (=> d!1523615 (=> (not res!2021650) (not e!2975256))))

(declare-fun forall!11875 (List!53610 Int) Bool)

(assert (=> d!1523615 (= res!2021650 (forall!11875 (toList!6290 lt!1929547) lambda!224373))))

(assert (=> d!1523615 (= (forallContained!3861 (toList!6290 lt!1929547) lambda!224373 lt!1929552) lt!1929566)))

(declare-fun b!4766736 () Bool)

(assert (=> b!4766736 (= e!2975256 (contains!16830 (toList!6290 lt!1929547) lt!1929552))))

(assert (= (and d!1523615 res!2021650) b!4766736))

(declare-fun b_lambda!184345 () Bool)

(assert (=> (not b_lambda!184345) (not d!1523615)))

(declare-fun m!5737652 () Bool)

(assert (=> d!1523615 m!5737652))

(declare-fun m!5737654 () Bool)

(assert (=> d!1523615 m!5737654))

(declare-fun m!5737656 () Bool)

(assert (=> d!1523615 m!5737656))

(assert (=> b!4766736 m!5737596))

(assert (=> b!4766698 d!1523615))

(declare-fun d!1523617 () Bool)

(declare-fun lt!1929569 () ListMap!5785)

(declare-fun invariantList!1660 (List!53609) Bool)

(assert (=> d!1523617 (invariantList!1660 (toList!6289 lt!1929569))))

(assert (=> d!1523617 (= lt!1929569 (extractMap!2145 (toList!6290 (map!11986 (v!47657 (underlying!10062 thiss!42052))))))))

(assert (=> d!1523617 (valid!3927 thiss!42052)))

(assert (=> d!1523617 (= (map!11985 thiss!42052) lt!1929569)))

(declare-fun bs!1148881 () Bool)

(assert (= bs!1148881 d!1523617))

(declare-fun m!5737658 () Bool)

(assert (=> bs!1148881 m!5737658))

(assert (=> bs!1148881 m!5737600))

(declare-fun m!5737660 () Bool)

(assert (=> bs!1148881 m!5737660))

(assert (=> bs!1148881 m!5737630))

(assert (=> b!4766698 d!1523617))

(declare-fun d!1523619 () Bool)

(declare-fun lt!1929570 () Bool)

(assert (=> d!1523619 (= lt!1929570 (select (content!9586 (toList!6290 lt!1929547)) lt!1929552))))

(declare-fun e!2975257 () Bool)

(assert (=> d!1523619 (= lt!1929570 e!2975257)))

(declare-fun res!2021652 () Bool)

(assert (=> d!1523619 (=> (not res!2021652) (not e!2975257))))

(assert (=> d!1523619 (= res!2021652 ((_ is Cons!53486) (toList!6290 lt!1929547)))))

(assert (=> d!1523619 (= (contains!16830 (toList!6290 lt!1929547) lt!1929552) lt!1929570)))

(declare-fun b!4766737 () Bool)

(declare-fun e!2975258 () Bool)

(assert (=> b!4766737 (= e!2975257 e!2975258)))

(declare-fun res!2021651 () Bool)

(assert (=> b!4766737 (=> res!2021651 e!2975258)))

(assert (=> b!4766737 (= res!2021651 (= (h!59898 (toList!6290 lt!1929547)) lt!1929552))))

(declare-fun b!4766738 () Bool)

(assert (=> b!4766738 (= e!2975258 (contains!16830 (t!361030 (toList!6290 lt!1929547)) lt!1929552))))

(assert (= (and d!1523619 res!2021652) b!4766737))

(assert (= (and b!4766737 (not res!2021651)) b!4766738))

(assert (=> d!1523619 m!5737644))

(declare-fun m!5737662 () Bool)

(assert (=> d!1523619 m!5737662))

(declare-fun m!5737664 () Bool)

(assert (=> b!4766738 m!5737664))

(assert (=> b!4766698 d!1523619))

(declare-fun d!1523621 () Bool)

(assert (=> d!1523621 (= (apply!12626 lt!1929547 lt!1929541) (get!18035 (getValueByKey!2180 (toList!6290 lt!1929547) lt!1929541)))))

(declare-fun bs!1148882 () Bool)

(assert (= bs!1148882 d!1523621))

(assert (=> bs!1148882 m!5737572))

(assert (=> bs!1148882 m!5737572))

(declare-fun m!5737666 () Bool)

(assert (=> bs!1148882 m!5737666))

(assert (=> b!4766698 d!1523621))

(declare-fun d!1523623 () Bool)

(assert (=> d!1523623 (dynLambda!21951 lambda!224373 lt!1929543)))

(declare-fun lt!1929571 () Unit!138227)

(assert (=> d!1523623 (= lt!1929571 (choose!33964 (toList!6290 lt!1929547) lambda!224373 lt!1929543))))

(declare-fun e!2975259 () Bool)

(assert (=> d!1523623 e!2975259))

(declare-fun res!2021653 () Bool)

(assert (=> d!1523623 (=> (not res!2021653) (not e!2975259))))

(assert (=> d!1523623 (= res!2021653 (forall!11875 (toList!6290 lt!1929547) lambda!224373))))

(assert (=> d!1523623 (= (forallContained!3861 (toList!6290 lt!1929547) lambda!224373 lt!1929543) lt!1929571)))

(declare-fun b!4766739 () Bool)

(assert (=> b!4766739 (= e!2975259 (contains!16830 (toList!6290 lt!1929547) lt!1929543))))

(assert (= (and d!1523623 res!2021653) b!4766739))

(declare-fun b_lambda!184347 () Bool)

(assert (=> (not b_lambda!184347) (not d!1523623)))

(declare-fun m!5737668 () Bool)

(assert (=> d!1523623 m!5737668))

(declare-fun m!5737670 () Bool)

(assert (=> d!1523623 m!5737670))

(assert (=> d!1523623 m!5737656))

(assert (=> b!4766739 m!5737612))

(assert (=> b!4766698 d!1523623))

(declare-fun d!1523625 () Bool)

(declare-fun hash!4570 (Hashable!6588 K!14959) (_ BitVec 64))

(assert (=> d!1523625 (= (hash!4569 (hashF!12431 thiss!42052) key!1776) (hash!4570 (hashF!12431 thiss!42052) key!1776))))

(declare-fun bs!1148883 () Bool)

(assert (= bs!1148883 d!1523625))

(declare-fun m!5737672 () Bool)

(assert (=> bs!1148883 m!5737672))

(assert (=> b!4766698 d!1523625))

(declare-fun d!1523627 () Bool)

(assert (=> d!1523627 (= (get!18033 (getPair!645 lt!1929544 key!1776)) (v!47659 (getPair!645 lt!1929544 key!1776)))))

(assert (=> b!4766698 d!1523627))

(declare-fun bs!1148884 () Bool)

(declare-fun d!1523629 () Bool)

(assert (= bs!1148884 (and d!1523629 b!4766698)))

(declare-fun lambda!224386 () Int)

(assert (=> bs!1148884 (= lambda!224386 lambda!224373)))

(declare-fun b!4766760 () Bool)

(declare-fun res!2021681 () Bool)

(declare-fun e!2975272 () Bool)

(assert (=> b!4766760 (=> (not res!2021681) (not e!2975272))))

(declare-fun contains!16834 (ListMap!5785 K!14959) Bool)

(assert (=> b!4766760 (= res!2021681 (contains!16834 (extractMap!2145 (toList!6290 lt!1929547)) key!1776))))

(declare-fun e!2975270 () Bool)

(declare-fun b!4766761 () Bool)

(assert (=> b!4766761 (= e!2975270 (= (_2!31059 (get!18033 (getPair!645 (apply!12626 lt!1929547 (hash!4569 (hashF!12431 thiss!42052) key!1776)) key!1776))) (get!18034 (getValueByKey!2179 (toList!6289 (extractMap!2145 (toList!6290 lt!1929547))) key!1776))))))

(declare-fun lt!1929620 () Unit!138227)

(declare-fun lt!1929610 () Unit!138227)

(assert (=> b!4766761 (= lt!1929620 lt!1929610)))

(assert (=> b!4766761 e!2975272))

(declare-fun res!2021677 () Bool)

(assert (=> b!4766761 (=> (not res!2021677) (not e!2975272))))

(assert (=> b!4766761 (= res!2021677 (forall!11875 (toList!6290 lt!1929547) lambda!224386))))

(assert (=> b!4766761 (= lt!1929610 (lemmaInGenMapThenGetPairDefined!428 lt!1929547 key!1776 (hashF!12431 thiss!42052)))))

(declare-fun e!2975273 () Bool)

(assert (=> b!4766761 e!2975273))

(declare-fun res!2021678 () Bool)

(assert (=> b!4766761 (=> (not res!2021678) (not e!2975273))))

(assert (=> b!4766761 (= res!2021678 (forall!11875 (toList!6290 lt!1929547) lambda!224386))))

(declare-fun lt!1929608 () Unit!138227)

(assert (=> b!4766761 (= lt!1929608 (forallContained!3861 (toList!6290 lt!1929547) lambda!224386 (tuple2!55533 (hash!4569 (hashF!12431 thiss!42052) key!1776) (apply!12626 lt!1929547 (hash!4569 (hashF!12431 thiss!42052) key!1776)))))))

(declare-fun lt!1929611 () Unit!138227)

(declare-fun lt!1929622 () Unit!138227)

(assert (=> b!4766761 (= lt!1929611 lt!1929622)))

(declare-fun lt!1929609 () (_ BitVec 64))

(declare-fun lt!1929619 () List!53609)

(assert (=> b!4766761 (contains!16830 (toList!6290 lt!1929547) (tuple2!55533 lt!1929609 lt!1929619))))

(assert (=> b!4766761 (= lt!1929622 (lemmaGetValueImpliesTupleContained!437 lt!1929547 lt!1929609 lt!1929619))))

(declare-fun e!2975274 () Bool)

(assert (=> b!4766761 e!2975274))

(declare-fun res!2021679 () Bool)

(assert (=> b!4766761 (=> (not res!2021679) (not e!2975274))))

(assert (=> b!4766761 (= res!2021679 (contains!16831 lt!1929547 lt!1929609))))

(assert (=> b!4766761 (= lt!1929619 (apply!12626 lt!1929547 (hash!4569 (hashF!12431 thiss!42052) key!1776)))))

(assert (=> b!4766761 (= lt!1929609 (hash!4569 (hashF!12431 thiss!42052) key!1776))))

(declare-fun lt!1929614 () Unit!138227)

(declare-fun lt!1929618 () Unit!138227)

(assert (=> b!4766761 (= lt!1929614 lt!1929618)))

(assert (=> b!4766761 (contains!16831 lt!1929547 (hash!4569 (hashF!12431 thiss!42052) key!1776))))

(assert (=> b!4766761 (= lt!1929618 (lemmaInGenMapThenLongMapContainsHash!838 lt!1929547 key!1776 (hashF!12431 thiss!42052)))))

(declare-fun b!4766762 () Bool)

(declare-fun lt!1929617 () List!53609)

(declare-fun lt!1929606 () (_ BitVec 64))

(declare-fun e!2975271 () Bool)

(assert (=> b!4766762 (= e!2975271 (= (getValueByKey!2180 (toList!6290 lt!1929547) lt!1929606) (Some!12673 lt!1929617)))))

(declare-fun b!4766763 () Bool)

(assert (=> b!4766763 (= e!2975274 (= (getValueByKey!2180 (toList!6290 lt!1929547) lt!1929609) (Some!12673 lt!1929619)))))

(declare-fun b!4766764 () Bool)

(assert (=> b!4766764 (= e!2975272 (isDefined!9838 (getPair!645 (apply!12626 lt!1929547 (hash!4569 (hashF!12431 thiss!42052) key!1776)) key!1776)))))

(declare-fun lt!1929613 () Unit!138227)

(assert (=> b!4766764 (= lt!1929613 (forallContained!3861 (toList!6290 lt!1929547) lambda!224386 (tuple2!55533 (hash!4569 (hashF!12431 thiss!42052) key!1776) (apply!12626 lt!1929547 (hash!4569 (hashF!12431 thiss!42052) key!1776)))))))

(declare-fun lt!1929621 () Unit!138227)

(declare-fun lt!1929607 () Unit!138227)

(assert (=> b!4766764 (= lt!1929621 lt!1929607)))

(assert (=> b!4766764 (contains!16830 (toList!6290 lt!1929547) (tuple2!55533 lt!1929606 lt!1929617))))

(assert (=> b!4766764 (= lt!1929607 (lemmaGetValueImpliesTupleContained!437 lt!1929547 lt!1929606 lt!1929617))))

(assert (=> b!4766764 e!2975271))

(declare-fun res!2021682 () Bool)

(assert (=> b!4766764 (=> (not res!2021682) (not e!2975271))))

(assert (=> b!4766764 (= res!2021682 (contains!16831 lt!1929547 lt!1929606))))

(assert (=> b!4766764 (= lt!1929617 (apply!12626 lt!1929547 (hash!4569 (hashF!12431 thiss!42052) key!1776)))))

(assert (=> b!4766764 (= lt!1929606 (hash!4569 (hashF!12431 thiss!42052) key!1776))))

(declare-fun lt!1929615 () Unit!138227)

(declare-fun lt!1929612 () Unit!138227)

(assert (=> b!4766764 (= lt!1929615 lt!1929612)))

(assert (=> b!4766764 (contains!16831 lt!1929547 (hash!4569 (hashF!12431 thiss!42052) key!1776))))

(assert (=> b!4766764 (= lt!1929612 (lemmaInGenMapThenLongMapContainsHash!838 lt!1929547 key!1776 (hashF!12431 thiss!42052)))))

(declare-fun b!4766765 () Bool)

(declare-fun res!2021674 () Bool)

(assert (=> b!4766765 (=> (not res!2021674) (not e!2975273))))

(declare-fun allKeysSameHashInMap!2021 (ListLongMap!4687 Hashable!6588) Bool)

(assert (=> b!4766765 (= res!2021674 (allKeysSameHashInMap!2021 lt!1929547 (hashF!12431 thiss!42052)))))

(declare-fun b!4766766 () Bool)

(declare-fun res!2021680 () Bool)

(assert (=> b!4766766 (=> (not res!2021680) (not e!2975272))))

(assert (=> b!4766766 (= res!2021680 (allKeysSameHashInMap!2021 lt!1929547 (hashF!12431 thiss!42052)))))

(assert (=> d!1523629 e!2975270))

(declare-fun res!2021675 () Bool)

(assert (=> d!1523629 (=> (not res!2021675) (not e!2975270))))

(assert (=> d!1523629 (= res!2021675 (forall!11875 (toList!6290 lt!1929547) lambda!224386))))

(declare-fun lt!1929616 () Unit!138227)

(declare-fun choose!33965 (ListLongMap!4687 K!14959 V!15205 Hashable!6588) Unit!138227)

(assert (=> d!1523629 (= lt!1929616 (choose!33965 lt!1929547 key!1776 (_2!31059 (get!18033 (getPair!645 lt!1929544 key!1776))) (hashF!12431 thiss!42052)))))

(assert (=> d!1523629 (forall!11875 (toList!6290 lt!1929547) lambda!224386)))

(assert (=> d!1523629 (= (lemmaGetPairGetSameValueAsMap!60 lt!1929547 key!1776 (_2!31059 (get!18033 (getPair!645 lt!1929544 key!1776))) (hashF!12431 thiss!42052)) lt!1929616)))

(declare-fun b!4766767 () Bool)

(declare-fun res!2021676 () Bool)

(assert (=> b!4766767 (=> (not res!2021676) (not e!2975270))))

(assert (=> b!4766767 (= res!2021676 (allKeysSameHashInMap!2021 lt!1929547 (hashF!12431 thiss!42052)))))

(declare-fun b!4766768 () Bool)

(assert (=> b!4766768 (= e!2975273 (contains!16834 (extractMap!2145 (toList!6290 lt!1929547)) key!1776))))

(declare-fun b!4766769 () Bool)

(declare-fun res!2021683 () Bool)

(assert (=> b!4766769 (=> (not res!2021683) (not e!2975270))))

(assert (=> b!4766769 (= res!2021683 (contains!16834 (extractMap!2145 (toList!6290 lt!1929547)) key!1776))))

(assert (= (and d!1523629 res!2021675) b!4766767))

(assert (= (and b!4766767 res!2021676) b!4766769))

(assert (= (and b!4766769 res!2021683) b!4766761))

(assert (= (and b!4766761 res!2021679) b!4766763))

(assert (= (and b!4766761 res!2021678) b!4766765))

(assert (= (and b!4766765 res!2021674) b!4766768))

(assert (= (and b!4766761 res!2021677) b!4766766))

(assert (= (and b!4766766 res!2021680) b!4766760))

(assert (= (and b!4766760 res!2021681) b!4766764))

(assert (= (and b!4766764 res!2021682) b!4766762))

(declare-fun m!5737674 () Bool)

(assert (=> b!4766767 m!5737674))

(declare-fun m!5737676 () Bool)

(assert (=> b!4766763 m!5737676))

(declare-fun m!5737678 () Bool)

(assert (=> d!1523629 m!5737678))

(declare-fun m!5737680 () Bool)

(assert (=> d!1523629 m!5737680))

(assert (=> d!1523629 m!5737678))

(declare-fun m!5737682 () Bool)

(assert (=> b!4766762 m!5737682))

(assert (=> b!4766766 m!5737674))

(assert (=> b!4766764 m!5737622))

(declare-fun m!5737684 () Bool)

(assert (=> b!4766764 m!5737684))

(assert (=> b!4766764 m!5737622))

(declare-fun m!5737686 () Bool)

(assert (=> b!4766764 m!5737686))

(assert (=> b!4766764 m!5737622))

(declare-fun m!5737688 () Bool)

(assert (=> b!4766764 m!5737688))

(assert (=> b!4766764 m!5737598))

(assert (=> b!4766764 m!5737684))

(declare-fun m!5737690 () Bool)

(assert (=> b!4766764 m!5737690))

(declare-fun m!5737692 () Bool)

(assert (=> b!4766764 m!5737692))

(assert (=> b!4766764 m!5737690))

(declare-fun m!5737694 () Bool)

(assert (=> b!4766764 m!5737694))

(declare-fun m!5737696 () Bool)

(assert (=> b!4766764 m!5737696))

(declare-fun m!5737698 () Bool)

(assert (=> b!4766764 m!5737698))

(assert (=> b!4766760 m!5737580))

(assert (=> b!4766760 m!5737580))

(declare-fun m!5737700 () Bool)

(assert (=> b!4766760 m!5737700))

(assert (=> b!4766769 m!5737580))

(assert (=> b!4766769 m!5737580))

(assert (=> b!4766769 m!5737700))

(assert (=> b!4766765 m!5737674))

(assert (=> b!4766761 m!5737590))

(assert (=> b!4766761 m!5737622))

(assert (=> b!4766761 m!5737684))

(assert (=> b!4766761 m!5737622))

(assert (=> b!4766761 m!5737696))

(assert (=> b!4766761 m!5737582))

(assert (=> b!4766761 m!5737584))

(assert (=> b!4766761 m!5737580))

(assert (=> b!4766761 m!5737598))

(assert (=> b!4766761 m!5737684))

(assert (=> b!4766761 m!5737690))

(assert (=> b!4766761 m!5737678))

(declare-fun m!5737702 () Bool)

(assert (=> b!4766761 m!5737702))

(assert (=> b!4766761 m!5737582))

(declare-fun m!5737704 () Bool)

(assert (=> b!4766761 m!5737704))

(declare-fun m!5737706 () Bool)

(assert (=> b!4766761 m!5737706))

(assert (=> b!4766761 m!5737678))

(assert (=> b!4766761 m!5737690))

(declare-fun m!5737708 () Bool)

(assert (=> b!4766761 m!5737708))

(assert (=> b!4766761 m!5737622))

(assert (=> b!4766761 m!5737688))

(assert (=> b!4766768 m!5737580))

(assert (=> b!4766768 m!5737580))

(assert (=> b!4766768 m!5737700))

(assert (=> b!4766698 d!1523629))

(declare-fun b!4766786 () Bool)

(declare-fun e!2975285 () Option!12673)

(assert (=> b!4766786 (= e!2975285 (Some!12672 (h!59897 lt!1929557)))))

(declare-fun b!4766787 () Bool)

(declare-fun res!2021692 () Bool)

(declare-fun e!2975289 () Bool)

(assert (=> b!4766787 (=> (not res!2021692) (not e!2975289))))

(declare-fun lt!1929625 () Option!12673)

(assert (=> b!4766787 (= res!2021692 (= (_1!31059 (get!18033 lt!1929625)) key!1776))))

(declare-fun d!1523631 () Bool)

(declare-fun e!2975288 () Bool)

(assert (=> d!1523631 e!2975288))

(declare-fun res!2021693 () Bool)

(assert (=> d!1523631 (=> res!2021693 e!2975288)))

(declare-fun e!2975287 () Bool)

(assert (=> d!1523631 (= res!2021693 e!2975287)))

(declare-fun res!2021695 () Bool)

(assert (=> d!1523631 (=> (not res!2021695) (not e!2975287))))

(declare-fun isEmpty!29278 (Option!12673) Bool)

(assert (=> d!1523631 (= res!2021695 (isEmpty!29278 lt!1929625))))

(assert (=> d!1523631 (= lt!1929625 e!2975285)))

(declare-fun c!813084 () Bool)

(assert (=> d!1523631 (= c!813084 (and ((_ is Cons!53485) lt!1929557) (= (_1!31059 (h!59897 lt!1929557)) key!1776)))))

(declare-fun noDuplicateKeys!2253 (List!53609) Bool)

(assert (=> d!1523631 (noDuplicateKeys!2253 lt!1929557)))

(assert (=> d!1523631 (= (getPair!645 lt!1929557 key!1776) lt!1929625)))

(declare-fun b!4766788 () Bool)

(declare-fun e!2975286 () Option!12673)

(assert (=> b!4766788 (= e!2975286 None!12672)))

(declare-fun b!4766789 () Bool)

(assert (=> b!4766789 (= e!2975285 e!2975286)))

(declare-fun c!813085 () Bool)

(assert (=> b!4766789 (= c!813085 ((_ is Cons!53485) lt!1929557))))

(declare-fun b!4766790 () Bool)

(declare-fun containsKey!3663 (List!53609 K!14959) Bool)

(assert (=> b!4766790 (= e!2975287 (not (containsKey!3663 lt!1929557 key!1776)))))

(declare-fun b!4766791 () Bool)

(declare-fun contains!16835 (List!53609 tuple2!55530) Bool)

(assert (=> b!4766791 (= e!2975289 (contains!16835 lt!1929557 (get!18033 lt!1929625)))))

(declare-fun b!4766792 () Bool)

(assert (=> b!4766792 (= e!2975288 e!2975289)))

(declare-fun res!2021694 () Bool)

(assert (=> b!4766792 (=> (not res!2021694) (not e!2975289))))

(assert (=> b!4766792 (= res!2021694 (isDefined!9838 lt!1929625))))

(declare-fun b!4766793 () Bool)

(assert (=> b!4766793 (= e!2975286 (getPair!645 (t!361029 lt!1929557) key!1776))))

(assert (= (and d!1523631 c!813084) b!4766786))

(assert (= (and d!1523631 (not c!813084)) b!4766789))

(assert (= (and b!4766789 c!813085) b!4766793))

(assert (= (and b!4766789 (not c!813085)) b!4766788))

(assert (= (and d!1523631 res!2021695) b!4766790))

(assert (= (and d!1523631 (not res!2021693)) b!4766792))

(assert (= (and b!4766792 res!2021694) b!4766787))

(assert (= (and b!4766787 res!2021692) b!4766791))

(declare-fun m!5737710 () Bool)

(assert (=> b!4766793 m!5737710))

(declare-fun m!5737712 () Bool)

(assert (=> b!4766791 m!5737712))

(assert (=> b!4766791 m!5737712))

(declare-fun m!5737714 () Bool)

(assert (=> b!4766791 m!5737714))

(assert (=> b!4766787 m!5737712))

(declare-fun m!5737716 () Bool)

(assert (=> b!4766790 m!5737716))

(declare-fun m!5737718 () Bool)

(assert (=> b!4766792 m!5737718))

(declare-fun m!5737720 () Bool)

(assert (=> d!1523631 m!5737720))

(declare-fun m!5737722 () Bool)

(assert (=> d!1523631 m!5737722))

(assert (=> b!4766698 d!1523631))

(declare-fun b!4766794 () Bool)

(declare-fun e!2975290 () Option!12673)

(assert (=> b!4766794 (= e!2975290 (Some!12672 (h!59897 lt!1929544)))))

(declare-fun b!4766795 () Bool)

(declare-fun res!2021696 () Bool)

(declare-fun e!2975294 () Bool)

(assert (=> b!4766795 (=> (not res!2021696) (not e!2975294))))

(declare-fun lt!1929626 () Option!12673)

(assert (=> b!4766795 (= res!2021696 (= (_1!31059 (get!18033 lt!1929626)) key!1776))))

(declare-fun d!1523633 () Bool)

(declare-fun e!2975293 () Bool)

(assert (=> d!1523633 e!2975293))

(declare-fun res!2021697 () Bool)

(assert (=> d!1523633 (=> res!2021697 e!2975293)))

(declare-fun e!2975292 () Bool)

(assert (=> d!1523633 (= res!2021697 e!2975292)))

(declare-fun res!2021699 () Bool)

(assert (=> d!1523633 (=> (not res!2021699) (not e!2975292))))

(assert (=> d!1523633 (= res!2021699 (isEmpty!29278 lt!1929626))))

(assert (=> d!1523633 (= lt!1929626 e!2975290)))

(declare-fun c!813086 () Bool)

(assert (=> d!1523633 (= c!813086 (and ((_ is Cons!53485) lt!1929544) (= (_1!31059 (h!59897 lt!1929544)) key!1776)))))

(assert (=> d!1523633 (noDuplicateKeys!2253 lt!1929544)))

(assert (=> d!1523633 (= (getPair!645 lt!1929544 key!1776) lt!1929626)))

(declare-fun b!4766796 () Bool)

(declare-fun e!2975291 () Option!12673)

(assert (=> b!4766796 (= e!2975291 None!12672)))

(declare-fun b!4766797 () Bool)

(assert (=> b!4766797 (= e!2975290 e!2975291)))

(declare-fun c!813087 () Bool)

(assert (=> b!4766797 (= c!813087 ((_ is Cons!53485) lt!1929544))))

(declare-fun b!4766798 () Bool)

(assert (=> b!4766798 (= e!2975292 (not (containsKey!3663 lt!1929544 key!1776)))))

(declare-fun b!4766799 () Bool)

(assert (=> b!4766799 (= e!2975294 (contains!16835 lt!1929544 (get!18033 lt!1929626)))))

(declare-fun b!4766800 () Bool)

(assert (=> b!4766800 (= e!2975293 e!2975294)))

(declare-fun res!2021698 () Bool)

(assert (=> b!4766800 (=> (not res!2021698) (not e!2975294))))

(assert (=> b!4766800 (= res!2021698 (isDefined!9838 lt!1929626))))

(declare-fun b!4766801 () Bool)

(assert (=> b!4766801 (= e!2975291 (getPair!645 (t!361029 lt!1929544) key!1776))))

(assert (= (and d!1523633 c!813086) b!4766794))

(assert (= (and d!1523633 (not c!813086)) b!4766797))

(assert (= (and b!4766797 c!813087) b!4766801))

(assert (= (and b!4766797 (not c!813087)) b!4766796))

(assert (= (and d!1523633 res!2021699) b!4766798))

(assert (= (and d!1523633 (not res!2021697)) b!4766800))

(assert (= (and b!4766800 res!2021698) b!4766795))

(assert (= (and b!4766795 res!2021696) b!4766799))

(declare-fun m!5737724 () Bool)

(assert (=> b!4766801 m!5737724))

(declare-fun m!5737726 () Bool)

(assert (=> b!4766799 m!5737726))

(assert (=> b!4766799 m!5737726))

(declare-fun m!5737728 () Bool)

(assert (=> b!4766799 m!5737728))

(assert (=> b!4766795 m!5737726))

(declare-fun m!5737730 () Bool)

(assert (=> b!4766798 m!5737730))

(declare-fun m!5737732 () Bool)

(assert (=> b!4766800 m!5737732))

(declare-fun m!5737734 () Bool)

(assert (=> d!1523633 m!5737734))

(declare-fun m!5737736 () Bool)

(assert (=> d!1523633 m!5737736))

(assert (=> b!4766698 d!1523633))

(declare-fun d!1523635 () Bool)

(declare-fun map!11987 (LongMapFixedSize!9854) ListLongMap!4687)

(assert (=> d!1523635 (= (map!11986 (v!47657 (underlying!10062 thiss!42052))) (map!11987 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))))))

(declare-fun bs!1148885 () Bool)

(assert (= bs!1148885 d!1523635))

(declare-fun m!5737738 () Bool)

(assert (=> bs!1148885 m!5737738))

(assert (=> b!4766698 d!1523635))

(declare-fun d!1523637 () Bool)

(assert (=> d!1523637 (contains!16830 (toList!6290 lt!1929547) (tuple2!55533 lt!1929541 lt!1929557))))

(declare-fun lt!1929629 () Unit!138227)

(declare-fun choose!33966 (ListLongMap!4687 (_ BitVec 64) List!53609) Unit!138227)

(assert (=> d!1523637 (= lt!1929629 (choose!33966 lt!1929547 lt!1929541 lt!1929557))))

(assert (=> d!1523637 (contains!16831 lt!1929547 lt!1929541)))

(assert (=> d!1523637 (= (lemmaGetValueImpliesTupleContained!437 lt!1929547 lt!1929541 lt!1929557) lt!1929629)))

(declare-fun bs!1148886 () Bool)

(assert (= bs!1148886 d!1523637))

(declare-fun m!5737740 () Bool)

(assert (=> bs!1148886 m!5737740))

(declare-fun m!5737742 () Bool)

(assert (=> bs!1148886 m!5737742))

(assert (=> bs!1148886 m!5737604))

(assert (=> b!4766698 d!1523637))

(declare-fun d!1523639 () Bool)

(declare-fun isEmpty!29279 (Option!12672) Bool)

(assert (=> d!1523639 (= (isDefined!9837 (getValueByKey!2179 (toList!6289 (map!11985 thiss!42052)) key!1776)) (not (isEmpty!29279 (getValueByKey!2179 (toList!6289 (map!11985 thiss!42052)) key!1776))))))

(declare-fun bs!1148887 () Bool)

(assert (= bs!1148887 d!1523639))

(assert (=> bs!1148887 m!5737592))

(declare-fun m!5737744 () Bool)

(assert (=> bs!1148887 m!5737744))

(assert (=> b!4766698 d!1523639))

(declare-fun d!1523641 () Bool)

(declare-fun e!2975300 () Bool)

(assert (=> d!1523641 e!2975300))

(declare-fun res!2021702 () Bool)

(assert (=> d!1523641 (=> res!2021702 e!2975300)))

(declare-fun lt!1929638 () Bool)

(assert (=> d!1523641 (= res!2021702 (not lt!1929638))))

(declare-fun lt!1929641 () Bool)

(assert (=> d!1523641 (= lt!1929638 lt!1929641)))

(declare-fun lt!1929639 () Unit!138227)

(declare-fun e!2975299 () Unit!138227)

(assert (=> d!1523641 (= lt!1929639 e!2975299)))

(declare-fun c!813090 () Bool)

(assert (=> d!1523641 (= c!813090 lt!1929641)))

(declare-fun containsKey!3664 (List!53610 (_ BitVec 64)) Bool)

(assert (=> d!1523641 (= lt!1929641 (containsKey!3664 (toList!6290 lt!1929547) lt!1929541))))

(assert (=> d!1523641 (= (contains!16831 lt!1929547 lt!1929541) lt!1929638)))

(declare-fun b!4766809 () Bool)

(declare-fun lt!1929640 () Unit!138227)

(assert (=> b!4766809 (= e!2975299 lt!1929640)))

(assert (=> b!4766809 (= lt!1929640 (lemmaContainsKeyImpliesGetValueByKeyDefined!1986 (toList!6290 lt!1929547) lt!1929541))))

(assert (=> b!4766809 (isDefined!9839 (getValueByKey!2180 (toList!6290 lt!1929547) lt!1929541))))

(declare-fun b!4766810 () Bool)

(declare-fun Unit!138231 () Unit!138227)

(assert (=> b!4766810 (= e!2975299 Unit!138231)))

(declare-fun b!4766811 () Bool)

(assert (=> b!4766811 (= e!2975300 (isDefined!9839 (getValueByKey!2180 (toList!6290 lt!1929547) lt!1929541)))))

(assert (= (and d!1523641 c!813090) b!4766809))

(assert (= (and d!1523641 (not c!813090)) b!4766810))

(assert (= (and d!1523641 (not res!2021702)) b!4766811))

(declare-fun m!5737746 () Bool)

(assert (=> d!1523641 m!5737746))

(assert (=> b!4766809 m!5737570))

(assert (=> b!4766809 m!5737572))

(assert (=> b!4766809 m!5737572))

(assert (=> b!4766809 m!5737574))

(assert (=> b!4766811 m!5737572))

(assert (=> b!4766811 m!5737572))

(assert (=> b!4766811 m!5737574))

(assert (=> b!4766698 d!1523641))

(declare-fun bs!1148888 () Bool)

(declare-fun d!1523643 () Bool)

(assert (= bs!1148888 (and d!1523643 b!4766698)))

(declare-fun lambda!224393 () Int)

(assert (=> bs!1148888 (= lambda!224393 lambda!224373)))

(declare-fun bs!1148889 () Bool)

(assert (= bs!1148889 (and d!1523643 d!1523629)))

(assert (=> bs!1148889 (= lambda!224393 lambda!224386)))

(declare-fun b!4766821 () Bool)

(declare-fun res!2021713 () Bool)

(declare-fun e!2975305 () Bool)

(assert (=> b!4766821 (=> (not res!2021713) (not e!2975305))))

(assert (=> b!4766821 (= res!2021713 (contains!16834 (extractMap!2145 (toList!6290 lt!1929547)) key!1776))))

(assert (=> d!1523643 e!2975305))

(declare-fun res!2021714 () Bool)

(assert (=> d!1523643 (=> (not res!2021714) (not e!2975305))))

(assert (=> d!1523643 (= res!2021714 (forall!11875 (toList!6290 lt!1929547) lambda!224393))))

(declare-fun lt!1929660 () Unit!138227)

(declare-fun choose!33967 (ListLongMap!4687 K!14959 Hashable!6588) Unit!138227)

(assert (=> d!1523643 (= lt!1929660 (choose!33967 lt!1929547 key!1776 (hashF!12431 thiss!42052)))))

(assert (=> d!1523643 (forall!11875 (toList!6290 lt!1929547) lambda!224393)))

(assert (=> d!1523643 (= (lemmaInGenMapThenGetPairDefined!428 lt!1929547 key!1776 (hashF!12431 thiss!42052)) lt!1929660)))

(declare-fun b!4766820 () Bool)

(declare-fun res!2021712 () Bool)

(assert (=> b!4766820 (=> (not res!2021712) (not e!2975305))))

(assert (=> b!4766820 (= res!2021712 (allKeysSameHashInMap!2021 lt!1929547 (hashF!12431 thiss!42052)))))

(declare-fun b!4766822 () Bool)

(assert (=> b!4766822 (= e!2975305 (isDefined!9838 (getPair!645 (apply!12626 lt!1929547 (hash!4569 (hashF!12431 thiss!42052) key!1776)) key!1776)))))

(declare-fun lt!1929662 () Unit!138227)

(assert (=> b!4766822 (= lt!1929662 (forallContained!3861 (toList!6290 lt!1929547) lambda!224393 (tuple2!55533 (hash!4569 (hashF!12431 thiss!42052) key!1776) (apply!12626 lt!1929547 (hash!4569 (hashF!12431 thiss!42052) key!1776)))))))

(declare-fun lt!1929665 () Unit!138227)

(declare-fun lt!1929659 () Unit!138227)

(assert (=> b!4766822 (= lt!1929665 lt!1929659)))

(declare-fun lt!1929664 () (_ BitVec 64))

(declare-fun lt!1929661 () List!53609)

(assert (=> b!4766822 (contains!16830 (toList!6290 lt!1929547) (tuple2!55533 lt!1929664 lt!1929661))))

(assert (=> b!4766822 (= lt!1929659 (lemmaGetValueImpliesTupleContained!437 lt!1929547 lt!1929664 lt!1929661))))

(declare-fun e!2975306 () Bool)

(assert (=> b!4766822 e!2975306))

(declare-fun res!2021711 () Bool)

(assert (=> b!4766822 (=> (not res!2021711) (not e!2975306))))

(assert (=> b!4766822 (= res!2021711 (contains!16831 lt!1929547 lt!1929664))))

(assert (=> b!4766822 (= lt!1929661 (apply!12626 lt!1929547 (hash!4569 (hashF!12431 thiss!42052) key!1776)))))

(assert (=> b!4766822 (= lt!1929664 (hash!4569 (hashF!12431 thiss!42052) key!1776))))

(declare-fun lt!1929663 () Unit!138227)

(declare-fun lt!1929658 () Unit!138227)

(assert (=> b!4766822 (= lt!1929663 lt!1929658)))

(assert (=> b!4766822 (contains!16831 lt!1929547 (hash!4569 (hashF!12431 thiss!42052) key!1776))))

(assert (=> b!4766822 (= lt!1929658 (lemmaInGenMapThenLongMapContainsHash!838 lt!1929547 key!1776 (hashF!12431 thiss!42052)))))

(declare-fun b!4766823 () Bool)

(assert (=> b!4766823 (= e!2975306 (= (getValueByKey!2180 (toList!6290 lt!1929547) lt!1929664) (Some!12673 lt!1929661)))))

(assert (= (and d!1523643 res!2021714) b!4766820))

(assert (= (and b!4766820 res!2021712) b!4766821))

(assert (= (and b!4766821 res!2021713) b!4766822))

(assert (= (and b!4766822 res!2021711) b!4766823))

(assert (=> b!4766820 m!5737674))

(assert (=> b!4766821 m!5737580))

(assert (=> b!4766821 m!5737580))

(assert (=> b!4766821 m!5737700))

(assert (=> b!4766822 m!5737598))

(declare-fun m!5737748 () Bool)

(assert (=> b!4766822 m!5737748))

(declare-fun m!5737750 () Bool)

(assert (=> b!4766822 m!5737750))

(assert (=> b!4766822 m!5737684))

(assert (=> b!4766822 m!5737690))

(assert (=> b!4766822 m!5737622))

(assert (=> b!4766822 m!5737684))

(declare-fun m!5737752 () Bool)

(assert (=> b!4766822 m!5737752))

(assert (=> b!4766822 m!5737690))

(assert (=> b!4766822 m!5737694))

(declare-fun m!5737754 () Bool)

(assert (=> b!4766822 m!5737754))

(assert (=> b!4766822 m!5737622))

(assert (=> b!4766822 m!5737688))

(assert (=> b!4766822 m!5737622))

(declare-fun m!5737756 () Bool)

(assert (=> d!1523643 m!5737756))

(declare-fun m!5737758 () Bool)

(assert (=> d!1523643 m!5737758))

(assert (=> d!1523643 m!5737756))

(declare-fun m!5737760 () Bool)

(assert (=> b!4766823 m!5737760))

(assert (=> b!4766698 d!1523643))

(declare-fun bs!1148890 () Bool)

(declare-fun d!1523645 () Bool)

(assert (= bs!1148890 (and d!1523645 b!4766698)))

(declare-fun lambda!224396 () Int)

(assert (=> bs!1148890 (= lambda!224396 lambda!224373)))

(declare-fun bs!1148891 () Bool)

(assert (= bs!1148891 (and d!1523645 d!1523629)))

(assert (=> bs!1148891 (= lambda!224396 lambda!224386)))

(declare-fun bs!1148892 () Bool)

(assert (= bs!1148892 (and d!1523645 d!1523643)))

(assert (=> bs!1148892 (= lambda!224396 lambda!224393)))

(assert (=> d!1523645 (contains!16831 lt!1929547 (hash!4569 (hashF!12431 thiss!42052) key!1776))))

(declare-fun lt!1929668 () Unit!138227)

(declare-fun choose!33968 (ListLongMap!4687 K!14959 Hashable!6588) Unit!138227)

(assert (=> d!1523645 (= lt!1929668 (choose!33968 lt!1929547 key!1776 (hashF!12431 thiss!42052)))))

(assert (=> d!1523645 (forall!11875 (toList!6290 lt!1929547) lambda!224396)))

(assert (=> d!1523645 (= (lemmaInGenMapThenLongMapContainsHash!838 lt!1929547 key!1776 (hashF!12431 thiss!42052)) lt!1929668)))

(declare-fun bs!1148893 () Bool)

(assert (= bs!1148893 d!1523645))

(assert (=> bs!1148893 m!5737622))

(assert (=> bs!1148893 m!5737622))

(assert (=> bs!1148893 m!5737688))

(declare-fun m!5737762 () Bool)

(assert (=> bs!1148893 m!5737762))

(declare-fun m!5737764 () Bool)

(assert (=> bs!1148893 m!5737764))

(assert (=> b!4766698 d!1523645))

(declare-fun d!1523647 () Bool)

(assert (=> d!1523647 (= (isDefined!9838 lt!1929545) (not (isEmpty!29278 lt!1929545)))))

(declare-fun bs!1148894 () Bool)

(assert (= bs!1148894 d!1523647))

(declare-fun m!5737766 () Bool)

(assert (=> bs!1148894 m!5737766))

(assert (=> b!4766698 d!1523647))

(declare-fun d!1523649 () Bool)

(assert (=> d!1523649 (isDefined!9839 (getValueByKey!2180 (toList!6290 lt!1929547) lt!1929541))))

(declare-fun lt!1929671 () Unit!138227)

(declare-fun choose!33969 (List!53610 (_ BitVec 64)) Unit!138227)

(assert (=> d!1523649 (= lt!1929671 (choose!33969 (toList!6290 lt!1929547) lt!1929541))))

(declare-fun e!2975309 () Bool)

(assert (=> d!1523649 e!2975309))

(declare-fun res!2021717 () Bool)

(assert (=> d!1523649 (=> (not res!2021717) (not e!2975309))))

(declare-fun isStrictlySorted!807 (List!53610) Bool)

(assert (=> d!1523649 (= res!2021717 (isStrictlySorted!807 (toList!6290 lt!1929547)))))

(assert (=> d!1523649 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1986 (toList!6290 lt!1929547) lt!1929541) lt!1929671)))

(declare-fun b!4766826 () Bool)

(assert (=> b!4766826 (= e!2975309 (containsKey!3664 (toList!6290 lt!1929547) lt!1929541))))

(assert (= (and d!1523649 res!2021717) b!4766826))

(assert (=> d!1523649 m!5737572))

(assert (=> d!1523649 m!5737572))

(assert (=> d!1523649 m!5737574))

(declare-fun m!5737768 () Bool)

(assert (=> d!1523649 m!5737768))

(declare-fun m!5737770 () Bool)

(assert (=> d!1523649 m!5737770))

(assert (=> b!4766826 m!5737746))

(assert (=> b!4766708 d!1523649))

(declare-fun d!1523651 () Bool)

(declare-fun isEmpty!29280 (Option!12674) Bool)

(assert (=> d!1523651 (= (isDefined!9839 (getValueByKey!2180 (toList!6290 lt!1929547) lt!1929541)) (not (isEmpty!29280 (getValueByKey!2180 (toList!6290 lt!1929547) lt!1929541))))))

(declare-fun bs!1148895 () Bool)

(assert (= bs!1148895 d!1523651))

(assert (=> bs!1148895 m!5737572))

(declare-fun m!5737772 () Bool)

(assert (=> bs!1148895 m!5737772))

(assert (=> b!4766708 d!1523651))

(declare-fun b!4766835 () Bool)

(declare-fun e!2975314 () Option!12674)

(assert (=> b!4766835 (= e!2975314 (Some!12673 (_2!31060 (h!59898 (toList!6290 lt!1929547)))))))

(declare-fun b!4766837 () Bool)

(declare-fun e!2975315 () Option!12674)

(assert (=> b!4766837 (= e!2975315 (getValueByKey!2180 (t!361030 (toList!6290 lt!1929547)) lt!1929541))))

(declare-fun d!1523653 () Bool)

(declare-fun c!813095 () Bool)

(assert (=> d!1523653 (= c!813095 (and ((_ is Cons!53486) (toList!6290 lt!1929547)) (= (_1!31060 (h!59898 (toList!6290 lt!1929547))) lt!1929541)))))

(assert (=> d!1523653 (= (getValueByKey!2180 (toList!6290 lt!1929547) lt!1929541) e!2975314)))

(declare-fun b!4766836 () Bool)

(assert (=> b!4766836 (= e!2975314 e!2975315)))

(declare-fun c!813096 () Bool)

(assert (=> b!4766836 (= c!813096 (and ((_ is Cons!53486) (toList!6290 lt!1929547)) (not (= (_1!31060 (h!59898 (toList!6290 lt!1929547))) lt!1929541))))))

(declare-fun b!4766838 () Bool)

(assert (=> b!4766838 (= e!2975315 None!12673)))

(assert (= (and d!1523653 c!813095) b!4766835))

(assert (= (and d!1523653 (not c!813095)) b!4766836))

(assert (= (and b!4766836 c!813096) b!4766837))

(assert (= (and b!4766836 (not c!813096)) b!4766838))

(declare-fun m!5737774 () Bool)

(assert (=> b!4766837 m!5737774))

(assert (=> b!4766708 d!1523653))

(declare-fun d!1523655 () Bool)

(assert (=> d!1523655 (contains!16830 (toList!6290 lt!1929547) (tuple2!55533 lt!1929541 lt!1929544))))

(declare-fun lt!1929674 () Unit!138227)

(declare-fun choose!33970 (List!53610 (_ BitVec 64) List!53609) Unit!138227)

(assert (=> d!1523655 (= lt!1929674 (choose!33970 (toList!6290 lt!1929547) lt!1929541 lt!1929544))))

(declare-fun e!2975318 () Bool)

(assert (=> d!1523655 e!2975318))

(declare-fun res!2021720 () Bool)

(assert (=> d!1523655 (=> (not res!2021720) (not e!2975318))))

(assert (=> d!1523655 (= res!2021720 (isStrictlySorted!807 (toList!6290 lt!1929547)))))

(assert (=> d!1523655 (= (lemmaGetValueByKeyImpliesContainsTuple!930 (toList!6290 lt!1929547) lt!1929541 lt!1929544) lt!1929674)))

(declare-fun b!4766841 () Bool)

(assert (=> b!4766841 (= e!2975318 (= (getValueByKey!2180 (toList!6290 lt!1929547) lt!1929541) (Some!12673 lt!1929544)))))

(assert (= (and d!1523655 res!2021720) b!4766841))

(declare-fun m!5737776 () Bool)

(assert (=> d!1523655 m!5737776))

(declare-fun m!5737778 () Bool)

(assert (=> d!1523655 m!5737778))

(assert (=> d!1523655 m!5737770))

(assert (=> b!4766841 m!5737572))

(assert (=> b!4766708 d!1523655))

(declare-fun d!1523657 () Bool)

(assert (=> d!1523657 (= (array_inv!5785 (_keys!5269 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052)))))) (bvsge (size!36269 (_keys!5269 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052)))))) #b00000000000000000000000000000000))))

(assert (=> b!4766704 d!1523657))

(declare-fun d!1523659 () Bool)

(assert (=> d!1523659 (= (array_inv!5786 (_values!5240 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052)))))) (bvsge (size!36270 (_values!5240 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052)))))) #b00000000000000000000000000000000))))

(assert (=> b!4766704 d!1523659))

(declare-fun bs!1148896 () Bool)

(declare-fun b!4766846 () Bool)

(assert (= bs!1148896 (and b!4766846 b!4766698)))

(declare-fun lambda!224399 () Int)

(assert (=> bs!1148896 (= lambda!224399 lambda!224373)))

(declare-fun bs!1148897 () Bool)

(assert (= bs!1148897 (and b!4766846 d!1523629)))

(assert (=> bs!1148897 (= lambda!224399 lambda!224386)))

(declare-fun bs!1148898 () Bool)

(assert (= bs!1148898 (and b!4766846 d!1523643)))

(assert (=> bs!1148898 (= lambda!224399 lambda!224393)))

(declare-fun bs!1148899 () Bool)

(assert (= bs!1148899 (and b!4766846 d!1523645)))

(assert (=> bs!1148899 (= lambda!224399 lambda!224396)))

(declare-fun d!1523661 () Bool)

(declare-fun res!2021725 () Bool)

(declare-fun e!2975321 () Bool)

(assert (=> d!1523661 (=> (not res!2021725) (not e!2975321))))

(assert (=> d!1523661 (= res!2021725 (valid!3928 (v!47657 (underlying!10062 thiss!42052))))))

(assert (=> d!1523661 (= (valid!3927 thiss!42052) e!2975321)))

(declare-fun res!2021726 () Bool)

(assert (=> b!4766846 (=> (not res!2021726) (not e!2975321))))

(assert (=> b!4766846 (= res!2021726 (forall!11875 (toList!6290 (map!11986 (v!47657 (underlying!10062 thiss!42052)))) lambda!224399))))

(declare-fun b!4766847 () Bool)

(assert (=> b!4766847 (= e!2975321 (allKeysSameHashInMap!2021 (map!11986 (v!47657 (underlying!10062 thiss!42052))) (hashF!12431 thiss!42052)))))

(assert (= (and d!1523661 res!2021725) b!4766846))

(assert (= (and b!4766846 res!2021726) b!4766847))

(assert (=> d!1523661 m!5737636))

(assert (=> b!4766846 m!5737600))

(declare-fun m!5737780 () Bool)

(assert (=> b!4766846 m!5737780))

(assert (=> b!4766847 m!5737600))

(assert (=> b!4766847 m!5737600))

(declare-fun m!5737782 () Bool)

(assert (=> b!4766847 m!5737782))

(assert (=> b!4766705 d!1523661))

(declare-fun bs!1148900 () Bool)

(declare-fun b!4766873 () Bool)

(assert (= bs!1148900 (and b!4766873 b!4766846)))

(declare-fun lambda!224402 () Int)

(assert (=> bs!1148900 (= lambda!224402 lambda!224399)))

(declare-fun bs!1148901 () Bool)

(assert (= bs!1148901 (and b!4766873 b!4766698)))

(assert (=> bs!1148901 (= lambda!224402 lambda!224373)))

(declare-fun bs!1148902 () Bool)

(assert (= bs!1148902 (and b!4766873 d!1523643)))

(assert (=> bs!1148902 (= lambda!224402 lambda!224393)))

(declare-fun bs!1148903 () Bool)

(assert (= bs!1148903 (and b!4766873 d!1523629)))

(assert (=> bs!1148903 (= lambda!224402 lambda!224386)))

(declare-fun bs!1148904 () Bool)

(assert (= bs!1148904 (and b!4766873 d!1523645)))

(assert (=> bs!1148904 (= lambda!224402 lambda!224396)))

(declare-fun b!4766870 () Bool)

(declare-fun e!2975336 () Unit!138227)

(declare-fun Unit!138232 () Unit!138227)

(assert (=> b!4766870 (= e!2975336 Unit!138232)))

(declare-fun b!4766871 () Bool)

(assert (=> b!4766871 false))

(declare-fun lt!1929730 () Unit!138227)

(declare-fun lt!1929727 () Unit!138227)

(assert (=> b!4766871 (= lt!1929730 lt!1929727)))

(declare-fun lt!1929724 () List!53610)

(declare-fun lt!1929722 () (_ BitVec 64))

(declare-fun lt!1929732 () List!53609)

(assert (=> b!4766871 (contains!16830 lt!1929724 (tuple2!55533 lt!1929722 lt!1929732))))

(assert (=> b!4766871 (= lt!1929727 (lemmaGetValueByKeyImpliesContainsTuple!930 lt!1929724 lt!1929722 lt!1929732))))

(assert (=> b!4766871 (= lt!1929732 (apply!12627 (v!47657 (underlying!10062 thiss!42052)) lt!1929722))))

(assert (=> b!4766871 (= lt!1929724 (toList!6290 (map!11986 (v!47657 (underlying!10062 thiss!42052)))))))

(declare-fun lt!1929716 () Unit!138227)

(declare-fun lt!1929723 () Unit!138227)

(assert (=> b!4766871 (= lt!1929716 lt!1929723)))

(declare-fun lt!1929729 () List!53610)

(assert (=> b!4766871 (isDefined!9839 (getValueByKey!2180 lt!1929729 lt!1929722))))

(assert (=> b!4766871 (= lt!1929723 (lemmaContainsKeyImpliesGetValueByKeyDefined!1986 lt!1929729 lt!1929722))))

(assert (=> b!4766871 (= lt!1929729 (toList!6290 (map!11986 (v!47657 (underlying!10062 thiss!42052)))))))

(declare-fun lt!1929718 () Unit!138227)

(declare-fun lt!1929721 () Unit!138227)

(assert (=> b!4766871 (= lt!1929718 lt!1929721)))

(declare-fun lt!1929719 () List!53610)

(assert (=> b!4766871 (containsKey!3664 lt!1929719 lt!1929722)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!202 (List!53610 (_ BitVec 64)) Unit!138227)

(assert (=> b!4766871 (= lt!1929721 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!202 lt!1929719 lt!1929722))))

(assert (=> b!4766871 (= lt!1929719 (toList!6290 (map!11986 (v!47657 (underlying!10062 thiss!42052)))))))

(declare-fun e!2975341 () Unit!138227)

(declare-fun Unit!138233 () Unit!138227)

(assert (=> b!4766871 (= e!2975341 Unit!138233)))

(declare-fun bm!334190 () Bool)

(declare-fun call!334197 () Bool)

(declare-fun call!334198 () Option!12673)

(assert (=> bm!334190 (= call!334197 (isDefined!9838 call!334198))))

(declare-fun b!4766872 () Bool)

(assert (=> b!4766872 false))

(declare-fun lt!1929720 () Unit!138227)

(declare-fun lt!1929733 () Unit!138227)

(assert (=> b!4766872 (= lt!1929720 lt!1929733)))

(declare-fun lt!1929734 () ListLongMap!4687)

(assert (=> b!4766872 (contains!16834 (extractMap!2145 (toList!6290 lt!1929734)) key!1776)))

(declare-fun lemmaInLongMapThenInGenericMap!201 (ListLongMap!4687 K!14959 Hashable!6588) Unit!138227)

(assert (=> b!4766872 (= lt!1929733 (lemmaInLongMapThenInGenericMap!201 lt!1929734 key!1776 (hashF!12431 thiss!42052)))))

(declare-fun call!334200 () ListLongMap!4687)

(assert (=> b!4766872 (= lt!1929734 call!334200)))

(declare-fun e!2975337 () Unit!138227)

(declare-fun Unit!138234 () Unit!138227)

(assert (=> b!4766872 (= e!2975337 Unit!138234)))

(declare-fun bm!334191 () Bool)

(declare-fun call!334196 () List!53609)

(assert (=> bm!334191 (= call!334198 (getPair!645 call!334196 key!1776))))

(assert (=> b!4766873 (= e!2975336 (forallContained!3861 (toList!6290 (map!11986 (v!47657 (underlying!10062 thiss!42052)))) lambda!224402 (tuple2!55533 lt!1929722 (apply!12627 (v!47657 (underlying!10062 thiss!42052)) lt!1929722))))))

(declare-fun c!813108 () Bool)

(assert (=> b!4766873 (= c!813108 (not (contains!16830 (toList!6290 (map!11986 (v!47657 (underlying!10062 thiss!42052)))) (tuple2!55533 lt!1929722 (apply!12627 (v!47657 (underlying!10062 thiss!42052)) lt!1929722)))))))

(declare-fun lt!1929731 () Unit!138227)

(assert (=> b!4766873 (= lt!1929731 e!2975341)))

(declare-fun b!4766874 () Bool)

(declare-fun Unit!138235 () Unit!138227)

(assert (=> b!4766874 (= e!2975341 Unit!138235)))

(declare-fun d!1523663 () Bool)

(declare-fun lt!1929717 () Bool)

(assert (=> d!1523663 (= lt!1929717 (contains!16834 (map!11985 thiss!42052) key!1776))))

(declare-fun e!2975342 () Bool)

(assert (=> d!1523663 (= lt!1929717 e!2975342)))

(declare-fun res!2021735 () Bool)

(assert (=> d!1523663 (=> (not res!2021735) (not e!2975342))))

(assert (=> d!1523663 (= res!2021735 (contains!16833 (v!47657 (underlying!10062 thiss!42052)) lt!1929722))))

(declare-fun lt!1929728 () Unit!138227)

(declare-fun e!2975339 () Unit!138227)

(assert (=> d!1523663 (= lt!1929728 e!2975339)))

(declare-fun c!813106 () Bool)

(assert (=> d!1523663 (= c!813106 (contains!16834 (extractMap!2145 (toList!6290 (map!11986 (v!47657 (underlying!10062 thiss!42052))))) key!1776))))

(declare-fun lt!1929725 () Unit!138227)

(assert (=> d!1523663 (= lt!1929725 e!2975336)))

(declare-fun c!813105 () Bool)

(assert (=> d!1523663 (= c!813105 (contains!16833 (v!47657 (underlying!10062 thiss!42052)) lt!1929722))))

(assert (=> d!1523663 (= lt!1929722 (hash!4569 (hashF!12431 thiss!42052) key!1776))))

(assert (=> d!1523663 (valid!3927 thiss!42052)))

(assert (=> d!1523663 (= (contains!16832 thiss!42052 key!1776) lt!1929717)))

(declare-fun b!4766875 () Bool)

(declare-fun e!2975340 () Bool)

(assert (=> b!4766875 (= e!2975340 call!334197)))

(declare-fun b!4766876 () Bool)

(assert (=> b!4766876 (= e!2975339 e!2975337)))

(declare-fun res!2021734 () Bool)

(declare-fun call!334199 () Bool)

(assert (=> b!4766876 (= res!2021734 call!334199)))

(assert (=> b!4766876 (=> (not res!2021734) (not e!2975340))))

(declare-fun c!813107 () Bool)

(assert (=> b!4766876 (= c!813107 e!2975340)))

(declare-fun bm!334192 () Bool)

(declare-fun lt!1929726 () ListLongMap!4687)

(declare-fun call!334195 () (_ BitVec 64))

(assert (=> bm!334192 (= call!334199 (contains!16831 (ite c!813106 lt!1929726 call!334200) call!334195))))

(declare-fun bm!334193 () Bool)

(assert (=> bm!334193 (= call!334200 (map!11986 (v!47657 (underlying!10062 thiss!42052))))))

(declare-fun b!4766877 () Bool)

(assert (=> b!4766877 (= e!2975342 (isDefined!9838 (getPair!645 (apply!12627 (v!47657 (underlying!10062 thiss!42052)) lt!1929722) key!1776)))))

(declare-fun bm!334194 () Bool)

(assert (=> bm!334194 (= call!334196 (apply!12626 (ite c!813106 lt!1929726 call!334200) call!334195))))

(declare-fun b!4766878 () Bool)

(declare-fun lt!1929715 () Unit!138227)

(assert (=> b!4766878 (= e!2975339 lt!1929715)))

(assert (=> b!4766878 (= lt!1929726 call!334200)))

(declare-fun lemmaInGenericMapThenInLongMap!201 (ListLongMap!4687 K!14959 Hashable!6588) Unit!138227)

(assert (=> b!4766878 (= lt!1929715 (lemmaInGenericMapThenInLongMap!201 lt!1929726 key!1776 (hashF!12431 thiss!42052)))))

(declare-fun res!2021733 () Bool)

(assert (=> b!4766878 (= res!2021733 call!334199)))

(declare-fun e!2975338 () Bool)

(assert (=> b!4766878 (=> (not res!2021733) (not e!2975338))))

(assert (=> b!4766878 e!2975338))

(declare-fun b!4766879 () Bool)

(assert (=> b!4766879 (= e!2975338 call!334197)))

(declare-fun b!4766880 () Bool)

(declare-fun Unit!138236 () Unit!138227)

(assert (=> b!4766880 (= e!2975337 Unit!138236)))

(declare-fun bm!334195 () Bool)

(assert (=> bm!334195 (= call!334195 (hash!4569 (hashF!12431 thiss!42052) key!1776))))

(assert (= (and d!1523663 c!813105) b!4766873))

(assert (= (and d!1523663 (not c!813105)) b!4766870))

(assert (= (and b!4766873 c!813108) b!4766871))

(assert (= (and b!4766873 (not c!813108)) b!4766874))

(assert (= (and d!1523663 c!813106) b!4766878))

(assert (= (and d!1523663 (not c!813106)) b!4766876))

(assert (= (and b!4766878 res!2021733) b!4766879))

(assert (= (and b!4766876 res!2021734) b!4766875))

(assert (= (and b!4766876 c!813107) b!4766872))

(assert (= (and b!4766876 (not c!813107)) b!4766880))

(assert (= (or b!4766878 b!4766879 b!4766876 b!4766875) bm!334195))

(assert (= (or b!4766878 b!4766876 b!4766875 b!4766872) bm!334193))

(assert (= (or b!4766879 b!4766875) bm!334194))

(assert (= (or b!4766878 b!4766876) bm!334192))

(assert (= (or b!4766879 b!4766875) bm!334191))

(assert (= (or b!4766879 b!4766875) bm!334190))

(assert (= (and d!1523663 res!2021735) b!4766877))

(declare-fun m!5737784 () Bool)

(assert (=> bm!334194 m!5737784))

(assert (=> bm!334193 m!5737600))

(declare-fun m!5737786 () Bool)

(assert (=> b!4766877 m!5737786))

(assert (=> b!4766877 m!5737786))

(declare-fun m!5737788 () Bool)

(assert (=> b!4766877 m!5737788))

(assert (=> b!4766877 m!5737788))

(declare-fun m!5737790 () Bool)

(assert (=> b!4766877 m!5737790))

(declare-fun m!5737792 () Bool)

(assert (=> b!4766878 m!5737792))

(declare-fun m!5737794 () Bool)

(assert (=> b!4766872 m!5737794))

(assert (=> b!4766872 m!5737794))

(declare-fun m!5737796 () Bool)

(assert (=> b!4766872 m!5737796))

(declare-fun m!5737798 () Bool)

(assert (=> b!4766872 m!5737798))

(assert (=> bm!334195 m!5737622))

(assert (=> b!4766873 m!5737600))

(assert (=> b!4766873 m!5737786))

(declare-fun m!5737800 () Bool)

(assert (=> b!4766873 m!5737800))

(declare-fun m!5737802 () Bool)

(assert (=> b!4766873 m!5737802))

(declare-fun m!5737804 () Bool)

(assert (=> bm!334192 m!5737804))

(declare-fun m!5737806 () Bool)

(assert (=> bm!334191 m!5737806))

(declare-fun m!5737808 () Bool)

(assert (=> bm!334190 m!5737808))

(assert (=> d!1523663 m!5737618))

(declare-fun m!5737810 () Bool)

(assert (=> d!1523663 m!5737810))

(declare-fun m!5737812 () Bool)

(assert (=> d!1523663 m!5737812))

(assert (=> d!1523663 m!5737660))

(assert (=> d!1523663 m!5737630))

(assert (=> d!1523663 m!5737622))

(assert (=> d!1523663 m!5737600))

(assert (=> d!1523663 m!5737660))

(declare-fun m!5737814 () Bool)

(assert (=> d!1523663 m!5737814))

(assert (=> d!1523663 m!5737618))

(assert (=> b!4766871 m!5737600))

(declare-fun m!5737816 () Bool)

(assert (=> b!4766871 m!5737816))

(declare-fun m!5737818 () Bool)

(assert (=> b!4766871 m!5737818))

(declare-fun m!5737820 () Bool)

(assert (=> b!4766871 m!5737820))

(declare-fun m!5737822 () Bool)

(assert (=> b!4766871 m!5737822))

(assert (=> b!4766871 m!5737818))

(declare-fun m!5737824 () Bool)

(assert (=> b!4766871 m!5737824))

(declare-fun m!5737826 () Bool)

(assert (=> b!4766871 m!5737826))

(declare-fun m!5737828 () Bool)

(assert (=> b!4766871 m!5737828))

(assert (=> b!4766871 m!5737786))

(assert (=> b!4766701 d!1523663))

(declare-fun d!1523665 () Bool)

(assert (=> d!1523665 (= (get!18033 lt!1929545) (v!47659 lt!1929545))))

(assert (=> b!4766702 d!1523665))

(declare-fun d!1523667 () Bool)

(assert (=> d!1523667 (= (get!18034 (getValueByKey!2179 (toList!6289 (extractMap!2145 (toList!6290 lt!1929547))) key!1776)) (v!47658 (getValueByKey!2179 (toList!6289 (extractMap!2145 (toList!6290 lt!1929547))) key!1776)))))

(assert (=> b!4766702 d!1523667))

(declare-fun d!1523669 () Bool)

(declare-fun c!813109 () Bool)

(assert (=> d!1523669 (= c!813109 (and ((_ is Cons!53485) (toList!6289 (extractMap!2145 (toList!6290 lt!1929547)))) (= (_1!31059 (h!59897 (toList!6289 (extractMap!2145 (toList!6290 lt!1929547))))) key!1776)))))

(declare-fun e!2975343 () Option!12672)

(assert (=> d!1523669 (= (getValueByKey!2179 (toList!6289 (extractMap!2145 (toList!6290 lt!1929547))) key!1776) e!2975343)))

(declare-fun b!4766881 () Bool)

(assert (=> b!4766881 (= e!2975343 (Some!12671 (_2!31059 (h!59897 (toList!6289 (extractMap!2145 (toList!6290 lt!1929547)))))))))

(declare-fun b!4766884 () Bool)

(declare-fun e!2975344 () Option!12672)

(assert (=> b!4766884 (= e!2975344 None!12671)))

(declare-fun b!4766882 () Bool)

(assert (=> b!4766882 (= e!2975343 e!2975344)))

(declare-fun c!813110 () Bool)

(assert (=> b!4766882 (= c!813110 (and ((_ is Cons!53485) (toList!6289 (extractMap!2145 (toList!6290 lt!1929547)))) (not (= (_1!31059 (h!59897 (toList!6289 (extractMap!2145 (toList!6290 lt!1929547))))) key!1776))))))

(declare-fun b!4766883 () Bool)

(assert (=> b!4766883 (= e!2975344 (getValueByKey!2179 (t!361029 (toList!6289 (extractMap!2145 (toList!6290 lt!1929547)))) key!1776))))

(assert (= (and d!1523669 c!813109) b!4766881))

(assert (= (and d!1523669 (not c!813109)) b!4766882))

(assert (= (and b!4766882 c!813110) b!4766883))

(assert (= (and b!4766882 (not c!813110)) b!4766884))

(declare-fun m!5737830 () Bool)

(assert (=> b!4766883 m!5737830))

(assert (=> b!4766702 d!1523669))

(declare-fun bs!1148905 () Bool)

(declare-fun d!1523671 () Bool)

(assert (= bs!1148905 (and d!1523671 b!4766846)))

(declare-fun lambda!224405 () Int)

(assert (=> bs!1148905 (= lambda!224405 lambda!224399)))

(declare-fun bs!1148906 () Bool)

(assert (= bs!1148906 (and d!1523671 b!4766698)))

(assert (=> bs!1148906 (= lambda!224405 lambda!224373)))

(declare-fun bs!1148907 () Bool)

(assert (= bs!1148907 (and d!1523671 d!1523643)))

(assert (=> bs!1148907 (= lambda!224405 lambda!224393)))

(declare-fun bs!1148908 () Bool)

(assert (= bs!1148908 (and d!1523671 d!1523629)))

(assert (=> bs!1148908 (= lambda!224405 lambda!224386)))

(declare-fun bs!1148909 () Bool)

(assert (= bs!1148909 (and d!1523671 b!4766873)))

(assert (=> bs!1148909 (= lambda!224405 lambda!224402)))

(declare-fun bs!1148910 () Bool)

(assert (= bs!1148910 (and d!1523671 d!1523645)))

(assert (=> bs!1148910 (= lambda!224405 lambda!224396)))

(declare-fun lt!1929737 () ListMap!5785)

(assert (=> d!1523671 (invariantList!1660 (toList!6289 lt!1929737))))

(declare-fun e!2975347 () ListMap!5785)

(assert (=> d!1523671 (= lt!1929737 e!2975347)))

(declare-fun c!813113 () Bool)

(assert (=> d!1523671 (= c!813113 ((_ is Cons!53486) (toList!6290 lt!1929547)))))

(assert (=> d!1523671 (forall!11875 (toList!6290 lt!1929547) lambda!224405)))

(assert (=> d!1523671 (= (extractMap!2145 (toList!6290 lt!1929547)) lt!1929737)))

(declare-fun b!4766889 () Bool)

(declare-fun addToMapMapFromBucket!1625 (List!53609 ListMap!5785) ListMap!5785)

(assert (=> b!4766889 (= e!2975347 (addToMapMapFromBucket!1625 (_2!31060 (h!59898 (toList!6290 lt!1929547))) (extractMap!2145 (t!361030 (toList!6290 lt!1929547)))))))

(declare-fun b!4766890 () Bool)

(assert (=> b!4766890 (= e!2975347 (ListMap!5786 Nil!53485))))

(assert (= (and d!1523671 c!813113) b!4766889))

(assert (= (and d!1523671 (not c!813113)) b!4766890))

(declare-fun m!5737832 () Bool)

(assert (=> d!1523671 m!5737832))

(declare-fun m!5737834 () Bool)

(assert (=> d!1523671 m!5737834))

(declare-fun m!5737836 () Bool)

(assert (=> b!4766889 m!5737836))

(assert (=> b!4766889 m!5737836))

(declare-fun m!5737838 () Bool)

(assert (=> b!4766889 m!5737838))

(assert (=> b!4766702 d!1523671))

(declare-fun tp!1355517 () Bool)

(declare-fun e!2975350 () Bool)

(declare-fun b!4766895 () Bool)

(declare-fun tp_is_empty!32449 () Bool)

(assert (=> b!4766895 (= e!2975350 (and tp_is_empty!32447 tp_is_empty!32449 tp!1355517))))

(assert (=> b!4766709 (= tp!1355512 e!2975350)))

(assert (= (and b!4766709 ((_ is Cons!53485) mapDefault!21860)) b!4766895))

(declare-fun b!4766896 () Bool)

(declare-fun e!2975351 () Bool)

(declare-fun tp!1355518 () Bool)

(assert (=> b!4766896 (= e!2975351 (and tp_is_empty!32447 tp_is_empty!32449 tp!1355518))))

(assert (=> b!4766704 (= tp!1355510 e!2975351)))

(assert (= (and b!4766704 ((_ is Cons!53485) (zeroValue!5215 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))))) b!4766896))

(declare-fun e!2975352 () Bool)

(declare-fun b!4766897 () Bool)

(declare-fun tp!1355519 () Bool)

(assert (=> b!4766897 (= e!2975352 (and tp_is_empty!32447 tp_is_empty!32449 tp!1355519))))

(assert (=> b!4766704 (= tp!1355511 e!2975352)))

(assert (= (and b!4766704 ((_ is Cons!53485) (minValue!5215 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))))) b!4766897))

(declare-fun mapNonEmpty!21863 () Bool)

(declare-fun mapRes!21863 () Bool)

(declare-fun tp!1355528 () Bool)

(declare-fun e!2975357 () Bool)

(assert (=> mapNonEmpty!21863 (= mapRes!21863 (and tp!1355528 e!2975357))))

(declare-fun mapKey!21863 () (_ BitVec 32))

(declare-fun mapRest!21863 () (Array (_ BitVec 32) List!53609))

(declare-fun mapValue!21863 () List!53609)

(assert (=> mapNonEmpty!21863 (= mapRest!21860 (store mapRest!21863 mapKey!21863 mapValue!21863))))

(declare-fun mapIsEmpty!21863 () Bool)

(assert (=> mapIsEmpty!21863 mapRes!21863))

(declare-fun tp!1355526 () Bool)

(declare-fun b!4766904 () Bool)

(assert (=> b!4766904 (= e!2975357 (and tp_is_empty!32447 tp_is_empty!32449 tp!1355526))))

(declare-fun b!4766905 () Bool)

(declare-fun tp!1355527 () Bool)

(declare-fun e!2975358 () Bool)

(assert (=> b!4766905 (= e!2975358 (and tp_is_empty!32447 tp_is_empty!32449 tp!1355527))))

(declare-fun condMapEmpty!21863 () Bool)

(declare-fun mapDefault!21863 () List!53609)

(assert (=> mapNonEmpty!21860 (= condMapEmpty!21863 (= mapRest!21860 ((as const (Array (_ BitVec 32) List!53609)) mapDefault!21863)))))

(assert (=> mapNonEmpty!21860 (= tp!1355509 (and e!2975358 mapRes!21863))))

(assert (= (and mapNonEmpty!21860 condMapEmpty!21863) mapIsEmpty!21863))

(assert (= (and mapNonEmpty!21860 (not condMapEmpty!21863)) mapNonEmpty!21863))

(assert (= (and mapNonEmpty!21863 ((_ is Cons!53485) mapValue!21863)) b!4766904))

(assert (= (and mapNonEmpty!21860 ((_ is Cons!53485) mapDefault!21863)) b!4766905))

(declare-fun m!5737840 () Bool)

(assert (=> mapNonEmpty!21863 m!5737840))

(declare-fun tp!1355529 () Bool)

(declare-fun e!2975359 () Bool)

(declare-fun b!4766906 () Bool)

(assert (=> b!4766906 (= e!2975359 (and tp_is_empty!32447 tp_is_empty!32449 tp!1355529))))

(assert (=> mapNonEmpty!21860 (= tp!1355514 e!2975359)))

(assert (= (and mapNonEmpty!21860 ((_ is Cons!53485) mapValue!21860)) b!4766906))

(declare-fun b_lambda!184349 () Bool)

(assert (= b_lambda!184345 (or b!4766698 b_lambda!184349)))

(declare-fun bs!1148911 () Bool)

(declare-fun d!1523673 () Bool)

(assert (= bs!1148911 (and d!1523673 b!4766698)))

(assert (=> bs!1148911 (= (dynLambda!21951 lambda!224373 lt!1929552) (noDuplicateKeys!2253 (_2!31060 lt!1929552)))))

(declare-fun m!5737842 () Bool)

(assert (=> bs!1148911 m!5737842))

(assert (=> d!1523615 d!1523673))

(declare-fun b_lambda!184351 () Bool)

(assert (= b_lambda!184343 (or (and b!4766704 b_free!129651) b_lambda!184351)))

(declare-fun b_lambda!184353 () Bool)

(assert (= b_lambda!184347 (or b!4766698 b_lambda!184353)))

(declare-fun bs!1148912 () Bool)

(declare-fun d!1523675 () Bool)

(assert (= bs!1148912 (and d!1523675 b!4766698)))

(assert (=> bs!1148912 (= (dynLambda!21951 lambda!224373 lt!1929543) (noDuplicateKeys!2253 (_2!31060 lt!1929543)))))

(declare-fun m!5737844 () Bool)

(assert (=> bs!1148912 m!5737844))

(assert (=> d!1523623 d!1523675))

(check-sat (not d!1523623) (not b!4766763) (not d!1523629) (not d!1523651) (not b!4766795) (not d!1523641) (not mapNonEmpty!21863) (not b!4766895) (not b!4766896) (not b!4766906) (not d!1523617) (not d!1523633) (not b!4766739) (not bm!334195) (not b!4766878) (not d!1523645) (not b!4766822) (not b!4766792) (not b_next!130443) (not b!4766732) (not bm!334193) (not d!1523661) (not b!4766847) (not b!4766764) (not d!1523643) (not d!1523635) (not bm!334191) (not b!4766766) (not d!1523611) (not d!1523647) tp_is_empty!32449 (not b!4766800) (not d!1523655) (not b!4766826) (not b!4766768) (not b!4766714) (not d!1523625) (not tb!257473) tp_is_empty!32447 b_and!341361 (not b!4766767) (not b!4766738) (not b!4766798) (not b!4766765) (not b!4766897) (not b_lambda!184351) (not bm!334192) (not b!4766809) (not bm!334194) (not d!1523637) (not b!4766846) (not b!4766904) (not b!4766883) (not d!1523649) (not d!1523639) (not b_next!130441) (not b!4766769) (not b!4766872) (not b!4766889) (not b!4766821) (not d!1523621) (not b!4766762) (not bs!1148912) (not b_lambda!184349) (not d!1523619) (not b!4766841) (not b_lambda!184353) (not d!1523631) (not b!4766877) (not b!4766721) (not b!4766793) (not b!4766871) (not b!4766873) (not b!4766811) (not b!4766736) b_and!341359 (not d!1523671) (not d!1523663) (not b!4766820) (not b!4766823) (not b!4766760) (not b!4766905) (not b!4766790) (not b!4766787) (not b!4766791) (not bs!1148911) (not b!4766799) (not b!4766801) (not b!4766761) (not bm!334190) (not b!4766837) (not d!1523609) (not d!1523615))
(check-sat b_and!341359 b_and!341361 (not b_next!130443) (not b_next!130441))
(get-model)

(declare-fun b!4766925 () Bool)

(declare-datatypes ((List!53611 0))(
  ( (Nil!53487) (Cons!53487 (h!59899 K!14959) (t!361035 List!53611)) )
))
(declare-fun e!2975375 () List!53611)

(declare-fun getKeysList!1006 (List!53609) List!53611)

(assert (=> b!4766925 (= e!2975375 (getKeysList!1006 (toList!6289 (extractMap!2145 (toList!6290 lt!1929547)))))))

(declare-fun bm!334198 () Bool)

(declare-fun call!334203 () Bool)

(declare-fun contains!16836 (List!53611 K!14959) Bool)

(assert (=> bm!334198 (= call!334203 (contains!16836 e!2975375 key!1776))))

(declare-fun c!813120 () Bool)

(declare-fun c!813122 () Bool)

(assert (=> bm!334198 (= c!813120 c!813122)))

(declare-fun b!4766927 () Bool)

(declare-fun e!2975372 () Unit!138227)

(declare-fun lt!1929758 () Unit!138227)

(assert (=> b!4766927 (= e!2975372 lt!1929758)))

(declare-fun lt!1929760 () Unit!138227)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1987 (List!53609 K!14959) Unit!138227)

(assert (=> b!4766927 (= lt!1929760 (lemmaContainsKeyImpliesGetValueByKeyDefined!1987 (toList!6289 (extractMap!2145 (toList!6290 lt!1929547))) key!1776))))

(assert (=> b!4766927 (isDefined!9837 (getValueByKey!2179 (toList!6289 (extractMap!2145 (toList!6290 lt!1929547))) key!1776))))

(declare-fun lt!1929755 () Unit!138227)

(assert (=> b!4766927 (= lt!1929755 lt!1929760)))

(declare-fun lemmaInListThenGetKeysListContains!1001 (List!53609 K!14959) Unit!138227)

(assert (=> b!4766927 (= lt!1929758 (lemmaInListThenGetKeysListContains!1001 (toList!6289 (extractMap!2145 (toList!6290 lt!1929547))) key!1776))))

(assert (=> b!4766927 call!334203))

(declare-fun b!4766928 () Bool)

(assert (=> b!4766928 false))

(declare-fun lt!1929754 () Unit!138227)

(declare-fun lt!1929761 () Unit!138227)

(assert (=> b!4766928 (= lt!1929754 lt!1929761)))

(declare-fun containsKey!3665 (List!53609 K!14959) Bool)

(assert (=> b!4766928 (containsKey!3665 (toList!6289 (extractMap!2145 (toList!6290 lt!1929547))) key!1776)))

(declare-fun lemmaInGetKeysListThenContainsKey!1005 (List!53609 K!14959) Unit!138227)

(assert (=> b!4766928 (= lt!1929761 (lemmaInGetKeysListThenContainsKey!1005 (toList!6289 (extractMap!2145 (toList!6290 lt!1929547))) key!1776))))

(declare-fun e!2975373 () Unit!138227)

(declare-fun Unit!138237 () Unit!138227)

(assert (=> b!4766928 (= e!2975373 Unit!138237)))

(declare-fun b!4766929 () Bool)

(declare-fun keys!19388 (ListMap!5785) List!53611)

(assert (=> b!4766929 (= e!2975375 (keys!19388 (extractMap!2145 (toList!6290 lt!1929547))))))

(declare-fun b!4766930 () Bool)

(declare-fun Unit!138238 () Unit!138227)

(assert (=> b!4766930 (= e!2975373 Unit!138238)))

(declare-fun b!4766931 () Bool)

(declare-fun e!2975376 () Bool)

(assert (=> b!4766931 (= e!2975376 (not (contains!16836 (keys!19388 (extractMap!2145 (toList!6290 lt!1929547))) key!1776)))))

(declare-fun d!1523677 () Bool)

(declare-fun e!2975377 () Bool)

(assert (=> d!1523677 e!2975377))

(declare-fun res!2021742 () Bool)

(assert (=> d!1523677 (=> res!2021742 e!2975377)))

(assert (=> d!1523677 (= res!2021742 e!2975376)))

(declare-fun res!2021743 () Bool)

(assert (=> d!1523677 (=> (not res!2021743) (not e!2975376))))

(declare-fun lt!1929757 () Bool)

(assert (=> d!1523677 (= res!2021743 (not lt!1929757))))

(declare-fun lt!1929756 () Bool)

(assert (=> d!1523677 (= lt!1929757 lt!1929756)))

(declare-fun lt!1929759 () Unit!138227)

(assert (=> d!1523677 (= lt!1929759 e!2975372)))

(assert (=> d!1523677 (= c!813122 lt!1929756)))

(assert (=> d!1523677 (= lt!1929756 (containsKey!3665 (toList!6289 (extractMap!2145 (toList!6290 lt!1929547))) key!1776))))

(assert (=> d!1523677 (= (contains!16834 (extractMap!2145 (toList!6290 lt!1929547)) key!1776) lt!1929757)))

(declare-fun b!4766926 () Bool)

(declare-fun e!2975374 () Bool)

(assert (=> b!4766926 (= e!2975377 e!2975374)))

(declare-fun res!2021744 () Bool)

(assert (=> b!4766926 (=> (not res!2021744) (not e!2975374))))

(assert (=> b!4766926 (= res!2021744 (isDefined!9837 (getValueByKey!2179 (toList!6289 (extractMap!2145 (toList!6290 lt!1929547))) key!1776)))))

(declare-fun b!4766932 () Bool)

(assert (=> b!4766932 (= e!2975372 e!2975373)))

(declare-fun c!813121 () Bool)

(assert (=> b!4766932 (= c!813121 call!334203)))

(declare-fun b!4766933 () Bool)

(assert (=> b!4766933 (= e!2975374 (contains!16836 (keys!19388 (extractMap!2145 (toList!6290 lt!1929547))) key!1776))))

(assert (= (and d!1523677 c!813122) b!4766927))

(assert (= (and d!1523677 (not c!813122)) b!4766932))

(assert (= (and b!4766932 c!813121) b!4766928))

(assert (= (and b!4766932 (not c!813121)) b!4766930))

(assert (= (or b!4766927 b!4766932) bm!334198))

(assert (= (and bm!334198 c!813120) b!4766925))

(assert (= (and bm!334198 (not c!813120)) b!4766929))

(assert (= (and d!1523677 res!2021743) b!4766931))

(assert (= (and d!1523677 (not res!2021742)) b!4766926))

(assert (= (and b!4766926 res!2021744) b!4766933))

(assert (=> b!4766926 m!5737582))

(assert (=> b!4766926 m!5737582))

(declare-fun m!5737846 () Bool)

(assert (=> b!4766926 m!5737846))

(assert (=> b!4766931 m!5737580))

(declare-fun m!5737848 () Bool)

(assert (=> b!4766931 m!5737848))

(assert (=> b!4766931 m!5737848))

(declare-fun m!5737850 () Bool)

(assert (=> b!4766931 m!5737850))

(declare-fun m!5737852 () Bool)

(assert (=> d!1523677 m!5737852))

(assert (=> b!4766929 m!5737580))

(assert (=> b!4766929 m!5737848))

(assert (=> b!4766928 m!5737852))

(declare-fun m!5737854 () Bool)

(assert (=> b!4766928 m!5737854))

(assert (=> b!4766933 m!5737580))

(assert (=> b!4766933 m!5737848))

(assert (=> b!4766933 m!5737848))

(assert (=> b!4766933 m!5737850))

(declare-fun m!5737856 () Bool)

(assert (=> bm!334198 m!5737856))

(declare-fun m!5737858 () Bool)

(assert (=> b!4766925 m!5737858))

(declare-fun m!5737860 () Bool)

(assert (=> b!4766927 m!5737860))

(assert (=> b!4766927 m!5737582))

(assert (=> b!4766927 m!5737582))

(assert (=> b!4766927 m!5737846))

(declare-fun m!5737862 () Bool)

(assert (=> b!4766927 m!5737862))

(assert (=> b!4766768 d!1523677))

(assert (=> b!4766768 d!1523671))

(declare-fun d!1523679 () Bool)

(assert (=> d!1523679 (= (apply!12626 (ite c!813106 lt!1929726 call!334200) call!334195) (get!18035 (getValueByKey!2180 (toList!6290 (ite c!813106 lt!1929726 call!334200)) call!334195)))))

(declare-fun bs!1148913 () Bool)

(assert (= bs!1148913 d!1523679))

(declare-fun m!5737864 () Bool)

(assert (=> bs!1148913 m!5737864))

(assert (=> bs!1148913 m!5737864))

(declare-fun m!5737866 () Bool)

(assert (=> bs!1148913 m!5737866))

(assert (=> bm!334194 d!1523679))

(assert (=> b!4766739 d!1523611))

(declare-fun b!4766934 () Bool)

(declare-fun e!2975378 () Option!12673)

(assert (=> b!4766934 (= e!2975378 (Some!12672 (h!59897 (t!361029 lt!1929557))))))

(declare-fun b!4766935 () Bool)

(declare-fun res!2021745 () Bool)

(declare-fun e!2975382 () Bool)

(assert (=> b!4766935 (=> (not res!2021745) (not e!2975382))))

(declare-fun lt!1929762 () Option!12673)

(assert (=> b!4766935 (= res!2021745 (= (_1!31059 (get!18033 lt!1929762)) key!1776))))

(declare-fun d!1523681 () Bool)

(declare-fun e!2975381 () Bool)

(assert (=> d!1523681 e!2975381))

(declare-fun res!2021746 () Bool)

(assert (=> d!1523681 (=> res!2021746 e!2975381)))

(declare-fun e!2975380 () Bool)

(assert (=> d!1523681 (= res!2021746 e!2975380)))

(declare-fun res!2021748 () Bool)

(assert (=> d!1523681 (=> (not res!2021748) (not e!2975380))))

(assert (=> d!1523681 (= res!2021748 (isEmpty!29278 lt!1929762))))

(assert (=> d!1523681 (= lt!1929762 e!2975378)))

(declare-fun c!813123 () Bool)

(assert (=> d!1523681 (= c!813123 (and ((_ is Cons!53485) (t!361029 lt!1929557)) (= (_1!31059 (h!59897 (t!361029 lt!1929557))) key!1776)))))

(assert (=> d!1523681 (noDuplicateKeys!2253 (t!361029 lt!1929557))))

(assert (=> d!1523681 (= (getPair!645 (t!361029 lt!1929557) key!1776) lt!1929762)))

(declare-fun b!4766936 () Bool)

(declare-fun e!2975379 () Option!12673)

(assert (=> b!4766936 (= e!2975379 None!12672)))

(declare-fun b!4766937 () Bool)

(assert (=> b!4766937 (= e!2975378 e!2975379)))

(declare-fun c!813124 () Bool)

(assert (=> b!4766937 (= c!813124 ((_ is Cons!53485) (t!361029 lt!1929557)))))

(declare-fun b!4766938 () Bool)

(assert (=> b!4766938 (= e!2975380 (not (containsKey!3663 (t!361029 lt!1929557) key!1776)))))

(declare-fun b!4766939 () Bool)

(assert (=> b!4766939 (= e!2975382 (contains!16835 (t!361029 lt!1929557) (get!18033 lt!1929762)))))

(declare-fun b!4766940 () Bool)

(assert (=> b!4766940 (= e!2975381 e!2975382)))

(declare-fun res!2021747 () Bool)

(assert (=> b!4766940 (=> (not res!2021747) (not e!2975382))))

(assert (=> b!4766940 (= res!2021747 (isDefined!9838 lt!1929762))))

(declare-fun b!4766941 () Bool)

(assert (=> b!4766941 (= e!2975379 (getPair!645 (t!361029 (t!361029 lt!1929557)) key!1776))))

(assert (= (and d!1523681 c!813123) b!4766934))

(assert (= (and d!1523681 (not c!813123)) b!4766937))

(assert (= (and b!4766937 c!813124) b!4766941))

(assert (= (and b!4766937 (not c!813124)) b!4766936))

(assert (= (and d!1523681 res!2021748) b!4766938))

(assert (= (and d!1523681 (not res!2021746)) b!4766940))

(assert (= (and b!4766940 res!2021747) b!4766935))

(assert (= (and b!4766935 res!2021745) b!4766939))

(declare-fun m!5737868 () Bool)

(assert (=> b!4766941 m!5737868))

(declare-fun m!5737870 () Bool)

(assert (=> b!4766939 m!5737870))

(assert (=> b!4766939 m!5737870))

(declare-fun m!5737872 () Bool)

(assert (=> b!4766939 m!5737872))

(assert (=> b!4766935 m!5737870))

(declare-fun m!5737874 () Bool)

(assert (=> b!4766938 m!5737874))

(declare-fun m!5737876 () Bool)

(assert (=> b!4766940 m!5737876))

(declare-fun m!5737878 () Bool)

(assert (=> d!1523681 m!5737878))

(declare-fun m!5737880 () Bool)

(assert (=> d!1523681 m!5737880))

(assert (=> b!4766793 d!1523681))

(declare-fun bs!1148914 () Bool)

(declare-fun d!1523683 () Bool)

(assert (= bs!1148914 (and d!1523683 b!4766846)))

(declare-fun lambda!224408 () Int)

(assert (=> bs!1148914 (not (= lambda!224408 lambda!224399))))

(declare-fun bs!1148915 () Bool)

(assert (= bs!1148915 (and d!1523683 d!1523671)))

(assert (=> bs!1148915 (not (= lambda!224408 lambda!224405))))

(declare-fun bs!1148916 () Bool)

(assert (= bs!1148916 (and d!1523683 b!4766698)))

(assert (=> bs!1148916 (not (= lambda!224408 lambda!224373))))

(declare-fun bs!1148917 () Bool)

(assert (= bs!1148917 (and d!1523683 d!1523643)))

(assert (=> bs!1148917 (not (= lambda!224408 lambda!224393))))

(declare-fun bs!1148918 () Bool)

(assert (= bs!1148918 (and d!1523683 d!1523629)))

(assert (=> bs!1148918 (not (= lambda!224408 lambda!224386))))

(declare-fun bs!1148919 () Bool)

(assert (= bs!1148919 (and d!1523683 b!4766873)))

(assert (=> bs!1148919 (not (= lambda!224408 lambda!224402))))

(declare-fun bs!1148920 () Bool)

(assert (= bs!1148920 (and d!1523683 d!1523645)))

(assert (=> bs!1148920 (not (= lambda!224408 lambda!224396))))

(assert (=> d!1523683 true))

(assert (=> d!1523683 (= (allKeysSameHashInMap!2021 lt!1929547 (hashF!12431 thiss!42052)) (forall!11875 (toList!6290 lt!1929547) lambda!224408))))

(declare-fun bs!1148921 () Bool)

(assert (= bs!1148921 d!1523683))

(declare-fun m!5737882 () Bool)

(assert (=> bs!1148921 m!5737882))

(assert (=> b!4766766 d!1523683))

(assert (=> bm!334193 d!1523635))

(declare-fun d!1523685 () Bool)

(declare-fun lt!1929765 () Bool)

(declare-fun content!9587 (List!53609) (InoxSet tuple2!55530))

(assert (=> d!1523685 (= lt!1929765 (select (content!9587 lt!1929557) (get!18033 lt!1929625)))))

(declare-fun e!2975387 () Bool)

(assert (=> d!1523685 (= lt!1929765 e!2975387)))

(declare-fun res!2021754 () Bool)

(assert (=> d!1523685 (=> (not res!2021754) (not e!2975387))))

(assert (=> d!1523685 (= res!2021754 ((_ is Cons!53485) lt!1929557))))

(assert (=> d!1523685 (= (contains!16835 lt!1929557 (get!18033 lt!1929625)) lt!1929765)))

(declare-fun b!4766948 () Bool)

(declare-fun e!2975388 () Bool)

(assert (=> b!4766948 (= e!2975387 e!2975388)))

(declare-fun res!2021753 () Bool)

(assert (=> b!4766948 (=> res!2021753 e!2975388)))

(assert (=> b!4766948 (= res!2021753 (= (h!59897 lt!1929557) (get!18033 lt!1929625)))))

(declare-fun b!4766949 () Bool)

(assert (=> b!4766949 (= e!2975388 (contains!16835 (t!361029 lt!1929557) (get!18033 lt!1929625)))))

(assert (= (and d!1523685 res!2021754) b!4766948))

(assert (= (and b!4766948 (not res!2021753)) b!4766949))

(declare-fun m!5737884 () Bool)

(assert (=> d!1523685 m!5737884))

(assert (=> d!1523685 m!5737712))

(declare-fun m!5737886 () Bool)

(assert (=> d!1523685 m!5737886))

(assert (=> b!4766949 m!5737712))

(declare-fun m!5737888 () Bool)

(assert (=> b!4766949 m!5737888))

(assert (=> b!4766791 d!1523685))

(declare-fun d!1523687 () Bool)

(assert (=> d!1523687 (= (get!18033 lt!1929625) (v!47659 lt!1929625))))

(assert (=> b!4766791 d!1523687))

(declare-fun d!1523689 () Bool)

(assert (=> d!1523689 (= (apply!12626 lt!1929547 (hash!4569 (hashF!12431 thiss!42052) key!1776)) (get!18035 (getValueByKey!2180 (toList!6290 lt!1929547) (hash!4569 (hashF!12431 thiss!42052) key!1776))))))

(declare-fun bs!1148922 () Bool)

(assert (= bs!1148922 d!1523689))

(assert (=> bs!1148922 m!5737622))

(declare-fun m!5737890 () Bool)

(assert (=> bs!1148922 m!5737890))

(assert (=> bs!1148922 m!5737890))

(declare-fun m!5737892 () Bool)

(assert (=> bs!1148922 m!5737892))

(assert (=> b!4766764 d!1523689))

(declare-fun d!1523691 () Bool)

(declare-fun e!2975390 () Bool)

(assert (=> d!1523691 e!2975390))

(declare-fun res!2021755 () Bool)

(assert (=> d!1523691 (=> res!2021755 e!2975390)))

(declare-fun lt!1929766 () Bool)

(assert (=> d!1523691 (= res!2021755 (not lt!1929766))))

(declare-fun lt!1929769 () Bool)

(assert (=> d!1523691 (= lt!1929766 lt!1929769)))

(declare-fun lt!1929767 () Unit!138227)

(declare-fun e!2975389 () Unit!138227)

(assert (=> d!1523691 (= lt!1929767 e!2975389)))

(declare-fun c!813125 () Bool)

(assert (=> d!1523691 (= c!813125 lt!1929769)))

(assert (=> d!1523691 (= lt!1929769 (containsKey!3664 (toList!6290 lt!1929547) lt!1929606))))

(assert (=> d!1523691 (= (contains!16831 lt!1929547 lt!1929606) lt!1929766)))

(declare-fun b!4766950 () Bool)

(declare-fun lt!1929768 () Unit!138227)

(assert (=> b!4766950 (= e!2975389 lt!1929768)))

(assert (=> b!4766950 (= lt!1929768 (lemmaContainsKeyImpliesGetValueByKeyDefined!1986 (toList!6290 lt!1929547) lt!1929606))))

(assert (=> b!4766950 (isDefined!9839 (getValueByKey!2180 (toList!6290 lt!1929547) lt!1929606))))

(declare-fun b!4766951 () Bool)

(declare-fun Unit!138239 () Unit!138227)

(assert (=> b!4766951 (= e!2975389 Unit!138239)))

(declare-fun b!4766952 () Bool)

(assert (=> b!4766952 (= e!2975390 (isDefined!9839 (getValueByKey!2180 (toList!6290 lt!1929547) lt!1929606)))))

(assert (= (and d!1523691 c!813125) b!4766950))

(assert (= (and d!1523691 (not c!813125)) b!4766951))

(assert (= (and d!1523691 (not res!2021755)) b!4766952))

(declare-fun m!5737894 () Bool)

(assert (=> d!1523691 m!5737894))

(declare-fun m!5737896 () Bool)

(assert (=> b!4766950 m!5737896))

(assert (=> b!4766950 m!5737682))

(assert (=> b!4766950 m!5737682))

(declare-fun m!5737898 () Bool)

(assert (=> b!4766950 m!5737898))

(assert (=> b!4766952 m!5737682))

(assert (=> b!4766952 m!5737682))

(assert (=> b!4766952 m!5737898))

(assert (=> b!4766764 d!1523691))

(declare-fun d!1523693 () Bool)

(declare-fun e!2975392 () Bool)

(assert (=> d!1523693 e!2975392))

(declare-fun res!2021756 () Bool)

(assert (=> d!1523693 (=> res!2021756 e!2975392)))

(declare-fun lt!1929770 () Bool)

(assert (=> d!1523693 (= res!2021756 (not lt!1929770))))

(declare-fun lt!1929773 () Bool)

(assert (=> d!1523693 (= lt!1929770 lt!1929773)))

(declare-fun lt!1929771 () Unit!138227)

(declare-fun e!2975391 () Unit!138227)

(assert (=> d!1523693 (= lt!1929771 e!2975391)))

(declare-fun c!813126 () Bool)

(assert (=> d!1523693 (= c!813126 lt!1929773)))

(assert (=> d!1523693 (= lt!1929773 (containsKey!3664 (toList!6290 lt!1929547) (hash!4569 (hashF!12431 thiss!42052) key!1776)))))

(assert (=> d!1523693 (= (contains!16831 lt!1929547 (hash!4569 (hashF!12431 thiss!42052) key!1776)) lt!1929770)))

(declare-fun b!4766953 () Bool)

(declare-fun lt!1929772 () Unit!138227)

(assert (=> b!4766953 (= e!2975391 lt!1929772)))

(assert (=> b!4766953 (= lt!1929772 (lemmaContainsKeyImpliesGetValueByKeyDefined!1986 (toList!6290 lt!1929547) (hash!4569 (hashF!12431 thiss!42052) key!1776)))))

(assert (=> b!4766953 (isDefined!9839 (getValueByKey!2180 (toList!6290 lt!1929547) (hash!4569 (hashF!12431 thiss!42052) key!1776)))))

(declare-fun b!4766954 () Bool)

(declare-fun Unit!138240 () Unit!138227)

(assert (=> b!4766954 (= e!2975391 Unit!138240)))

(declare-fun b!4766955 () Bool)

(assert (=> b!4766955 (= e!2975392 (isDefined!9839 (getValueByKey!2180 (toList!6290 lt!1929547) (hash!4569 (hashF!12431 thiss!42052) key!1776))))))

(assert (= (and d!1523693 c!813126) b!4766953))

(assert (= (and d!1523693 (not c!813126)) b!4766954))

(assert (= (and d!1523693 (not res!2021756)) b!4766955))

(assert (=> d!1523693 m!5737622))

(declare-fun m!5737900 () Bool)

(assert (=> d!1523693 m!5737900))

(assert (=> b!4766953 m!5737622))

(declare-fun m!5737902 () Bool)

(assert (=> b!4766953 m!5737902))

(assert (=> b!4766953 m!5737622))

(assert (=> b!4766953 m!5737890))

(assert (=> b!4766953 m!5737890))

(declare-fun m!5737904 () Bool)

(assert (=> b!4766953 m!5737904))

(assert (=> b!4766955 m!5737622))

(assert (=> b!4766955 m!5737890))

(assert (=> b!4766955 m!5737890))

(assert (=> b!4766955 m!5737904))

(assert (=> b!4766764 d!1523693))

(declare-fun d!1523695 () Bool)

(assert (=> d!1523695 (contains!16830 (toList!6290 lt!1929547) (tuple2!55533 lt!1929606 lt!1929617))))

(declare-fun lt!1929774 () Unit!138227)

(assert (=> d!1523695 (= lt!1929774 (choose!33966 lt!1929547 lt!1929606 lt!1929617))))

(assert (=> d!1523695 (contains!16831 lt!1929547 lt!1929606)))

(assert (=> d!1523695 (= (lemmaGetValueImpliesTupleContained!437 lt!1929547 lt!1929606 lt!1929617) lt!1929774)))

(declare-fun bs!1148923 () Bool)

(assert (= bs!1148923 d!1523695))

(assert (=> bs!1148923 m!5737698))

(declare-fun m!5737906 () Bool)

(assert (=> bs!1148923 m!5737906))

(assert (=> bs!1148923 m!5737686))

(assert (=> b!4766764 d!1523695))

(declare-fun d!1523697 () Bool)

(declare-fun lt!1929775 () Bool)

(assert (=> d!1523697 (= lt!1929775 (select (content!9586 (toList!6290 lt!1929547)) (tuple2!55533 lt!1929606 lt!1929617)))))

(declare-fun e!2975393 () Bool)

(assert (=> d!1523697 (= lt!1929775 e!2975393)))

(declare-fun res!2021758 () Bool)

(assert (=> d!1523697 (=> (not res!2021758) (not e!2975393))))

(assert (=> d!1523697 (= res!2021758 ((_ is Cons!53486) (toList!6290 lt!1929547)))))

(assert (=> d!1523697 (= (contains!16830 (toList!6290 lt!1929547) (tuple2!55533 lt!1929606 lt!1929617)) lt!1929775)))

(declare-fun b!4766956 () Bool)

(declare-fun e!2975394 () Bool)

(assert (=> b!4766956 (= e!2975393 e!2975394)))

(declare-fun res!2021757 () Bool)

(assert (=> b!4766956 (=> res!2021757 e!2975394)))

(assert (=> b!4766956 (= res!2021757 (= (h!59898 (toList!6290 lt!1929547)) (tuple2!55533 lt!1929606 lt!1929617)))))

(declare-fun b!4766957 () Bool)

(assert (=> b!4766957 (= e!2975394 (contains!16830 (t!361030 (toList!6290 lt!1929547)) (tuple2!55533 lt!1929606 lt!1929617)))))

(assert (= (and d!1523697 res!2021758) b!4766956))

(assert (= (and b!4766956 (not res!2021757)) b!4766957))

(assert (=> d!1523697 m!5737644))

(declare-fun m!5737908 () Bool)

(assert (=> d!1523697 m!5737908))

(declare-fun m!5737910 () Bool)

(assert (=> b!4766957 m!5737910))

(assert (=> b!4766764 d!1523697))

(assert (=> b!4766764 d!1523625))

(assert (=> b!4766764 d!1523645))

(declare-fun d!1523699 () Bool)

(assert (=> d!1523699 (dynLambda!21951 lambda!224386 (tuple2!55533 (hash!4569 (hashF!12431 thiss!42052) key!1776) (apply!12626 lt!1929547 (hash!4569 (hashF!12431 thiss!42052) key!1776))))))

(declare-fun lt!1929776 () Unit!138227)

(assert (=> d!1523699 (= lt!1929776 (choose!33964 (toList!6290 lt!1929547) lambda!224386 (tuple2!55533 (hash!4569 (hashF!12431 thiss!42052) key!1776) (apply!12626 lt!1929547 (hash!4569 (hashF!12431 thiss!42052) key!1776)))))))

(declare-fun e!2975395 () Bool)

(assert (=> d!1523699 e!2975395))

(declare-fun res!2021759 () Bool)

(assert (=> d!1523699 (=> (not res!2021759) (not e!2975395))))

(assert (=> d!1523699 (= res!2021759 (forall!11875 (toList!6290 lt!1929547) lambda!224386))))

(assert (=> d!1523699 (= (forallContained!3861 (toList!6290 lt!1929547) lambda!224386 (tuple2!55533 (hash!4569 (hashF!12431 thiss!42052) key!1776) (apply!12626 lt!1929547 (hash!4569 (hashF!12431 thiss!42052) key!1776)))) lt!1929776)))

(declare-fun b!4766958 () Bool)

(assert (=> b!4766958 (= e!2975395 (contains!16830 (toList!6290 lt!1929547) (tuple2!55533 (hash!4569 (hashF!12431 thiss!42052) key!1776) (apply!12626 lt!1929547 (hash!4569 (hashF!12431 thiss!42052) key!1776)))))))

(assert (= (and d!1523699 res!2021759) b!4766958))

(declare-fun b_lambda!184355 () Bool)

(assert (=> (not b_lambda!184355) (not d!1523699)))

(declare-fun m!5737912 () Bool)

(assert (=> d!1523699 m!5737912))

(declare-fun m!5737914 () Bool)

(assert (=> d!1523699 m!5737914))

(assert (=> d!1523699 m!5737678))

(declare-fun m!5737916 () Bool)

(assert (=> b!4766958 m!5737916))

(assert (=> b!4766764 d!1523699))

(declare-fun b!4766959 () Bool)

(declare-fun e!2975396 () Option!12673)

(assert (=> b!4766959 (= e!2975396 (Some!12672 (h!59897 (apply!12626 lt!1929547 (hash!4569 (hashF!12431 thiss!42052) key!1776)))))))

(declare-fun b!4766960 () Bool)

(declare-fun res!2021760 () Bool)

(declare-fun e!2975400 () Bool)

(assert (=> b!4766960 (=> (not res!2021760) (not e!2975400))))

(declare-fun lt!1929777 () Option!12673)

(assert (=> b!4766960 (= res!2021760 (= (_1!31059 (get!18033 lt!1929777)) key!1776))))

(declare-fun d!1523701 () Bool)

(declare-fun e!2975399 () Bool)

(assert (=> d!1523701 e!2975399))

(declare-fun res!2021761 () Bool)

(assert (=> d!1523701 (=> res!2021761 e!2975399)))

(declare-fun e!2975398 () Bool)

(assert (=> d!1523701 (= res!2021761 e!2975398)))

(declare-fun res!2021763 () Bool)

(assert (=> d!1523701 (=> (not res!2021763) (not e!2975398))))

(assert (=> d!1523701 (= res!2021763 (isEmpty!29278 lt!1929777))))

(assert (=> d!1523701 (= lt!1929777 e!2975396)))

(declare-fun c!813127 () Bool)

(assert (=> d!1523701 (= c!813127 (and ((_ is Cons!53485) (apply!12626 lt!1929547 (hash!4569 (hashF!12431 thiss!42052) key!1776))) (= (_1!31059 (h!59897 (apply!12626 lt!1929547 (hash!4569 (hashF!12431 thiss!42052) key!1776)))) key!1776)))))

(assert (=> d!1523701 (noDuplicateKeys!2253 (apply!12626 lt!1929547 (hash!4569 (hashF!12431 thiss!42052) key!1776)))))

(assert (=> d!1523701 (= (getPair!645 (apply!12626 lt!1929547 (hash!4569 (hashF!12431 thiss!42052) key!1776)) key!1776) lt!1929777)))

(declare-fun b!4766961 () Bool)

(declare-fun e!2975397 () Option!12673)

(assert (=> b!4766961 (= e!2975397 None!12672)))

(declare-fun b!4766962 () Bool)

(assert (=> b!4766962 (= e!2975396 e!2975397)))

(declare-fun c!813128 () Bool)

(assert (=> b!4766962 (= c!813128 ((_ is Cons!53485) (apply!12626 lt!1929547 (hash!4569 (hashF!12431 thiss!42052) key!1776))))))

(declare-fun b!4766963 () Bool)

(assert (=> b!4766963 (= e!2975398 (not (containsKey!3663 (apply!12626 lt!1929547 (hash!4569 (hashF!12431 thiss!42052) key!1776)) key!1776)))))

(declare-fun b!4766964 () Bool)

(assert (=> b!4766964 (= e!2975400 (contains!16835 (apply!12626 lt!1929547 (hash!4569 (hashF!12431 thiss!42052) key!1776)) (get!18033 lt!1929777)))))

(declare-fun b!4766965 () Bool)

(assert (=> b!4766965 (= e!2975399 e!2975400)))

(declare-fun res!2021762 () Bool)

(assert (=> b!4766965 (=> (not res!2021762) (not e!2975400))))

(assert (=> b!4766965 (= res!2021762 (isDefined!9838 lt!1929777))))

(declare-fun b!4766966 () Bool)

(assert (=> b!4766966 (= e!2975397 (getPair!645 (t!361029 (apply!12626 lt!1929547 (hash!4569 (hashF!12431 thiss!42052) key!1776))) key!1776))))

(assert (= (and d!1523701 c!813127) b!4766959))

(assert (= (and d!1523701 (not c!813127)) b!4766962))

(assert (= (and b!4766962 c!813128) b!4766966))

(assert (= (and b!4766962 (not c!813128)) b!4766961))

(assert (= (and d!1523701 res!2021763) b!4766963))

(assert (= (and d!1523701 (not res!2021761)) b!4766965))

(assert (= (and b!4766965 res!2021762) b!4766960))

(assert (= (and b!4766960 res!2021760) b!4766964))

(declare-fun m!5737918 () Bool)

(assert (=> b!4766966 m!5737918))

(declare-fun m!5737920 () Bool)

(assert (=> b!4766964 m!5737920))

(assert (=> b!4766964 m!5737684))

(assert (=> b!4766964 m!5737920))

(declare-fun m!5737922 () Bool)

(assert (=> b!4766964 m!5737922))

(assert (=> b!4766960 m!5737920))

(assert (=> b!4766963 m!5737684))

(declare-fun m!5737924 () Bool)

(assert (=> b!4766963 m!5737924))

(declare-fun m!5737926 () Bool)

(assert (=> b!4766965 m!5737926))

(declare-fun m!5737928 () Bool)

(assert (=> d!1523701 m!5737928))

(assert (=> d!1523701 m!5737684))

(declare-fun m!5737930 () Bool)

(assert (=> d!1523701 m!5737930))

(assert (=> b!4766764 d!1523701))

(declare-fun d!1523703 () Bool)

(assert (=> d!1523703 (= (isDefined!9838 (getPair!645 (apply!12626 lt!1929547 (hash!4569 (hashF!12431 thiss!42052) key!1776)) key!1776)) (not (isEmpty!29278 (getPair!645 (apply!12626 lt!1929547 (hash!4569 (hashF!12431 thiss!42052) key!1776)) key!1776))))))

(declare-fun bs!1148924 () Bool)

(assert (= bs!1148924 d!1523703))

(assert (=> bs!1148924 m!5737690))

(declare-fun m!5737932 () Bool)

(assert (=> bs!1148924 m!5737932))

(assert (=> b!4766764 d!1523703))

(declare-fun d!1523705 () Bool)

(assert (=> d!1523705 (= (isEmpty!29280 (getValueByKey!2180 (toList!6290 lt!1929547) lt!1929541)) (not ((_ is Some!12673) (getValueByKey!2180 (toList!6290 lt!1929547) lt!1929541))))))

(assert (=> d!1523651 d!1523705))

(declare-fun d!1523707 () Bool)

(declare-fun lt!1929780 () Bool)

(assert (=> d!1523707 (= lt!1929780 (contains!16831 (map!11986 (v!47657 (underlying!10062 thiss!42052))) lt!1929541))))

(declare-fun contains!16837 (LongMapFixedSize!9854 (_ BitVec 64)) Bool)

(assert (=> d!1523707 (= lt!1929780 (contains!16837 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052)))) lt!1929541))))

(assert (=> d!1523707 (valid!3928 (v!47657 (underlying!10062 thiss!42052)))))

(assert (=> d!1523707 (= (contains!16833 (v!47657 (underlying!10062 thiss!42052)) lt!1929541) lt!1929780)))

(declare-fun bs!1148925 () Bool)

(assert (= bs!1148925 d!1523707))

(assert (=> bs!1148925 m!5737600))

(assert (=> bs!1148925 m!5737600))

(declare-fun m!5737934 () Bool)

(assert (=> bs!1148925 m!5737934))

(declare-fun m!5737936 () Bool)

(assert (=> bs!1148925 m!5737936))

(assert (=> bs!1148925 m!5737636))

(assert (=> d!1523609 d!1523707))

(declare-fun b!4767003 () Bool)

(declare-fun e!2975423 () Bool)

(declare-fun e!2975431 () Bool)

(assert (=> b!4767003 (= e!2975423 e!2975431)))

(declare-fun res!2021772 () Bool)

(assert (=> b!4767003 (= res!2021772 (not (= (bvand (extraKeys!5202 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!4767003 (=> (not res!2021772) (not e!2975431))))

(declare-fun bm!334207 () Bool)

(declare-fun call!334213 () ListLongMap!4687)

(declare-fun call!334212 () ListLongMap!4687)

(assert (=> bm!334207 (= call!334213 call!334212)))

(declare-fun lt!1929805 () List!53609)

(declare-fun e!2975424 () Bool)

(declare-fun b!4767004 () Bool)

(assert (=> b!4767004 (= e!2975424 (= lt!1929805 (get!18035 (getValueByKey!2180 (toList!6290 (map!11987 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052)))))) lt!1929541))))))

(declare-fun d!1523709 () Bool)

(assert (=> d!1523709 e!2975424))

(declare-fun c!813146 () Bool)

(assert (=> d!1523709 (= c!813146 (contains!16837 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052)))) lt!1929541))))

(declare-fun e!2975428 () List!53609)

(assert (=> d!1523709 (= lt!1929805 e!2975428)))

(declare-fun c!813143 () Bool)

(assert (=> d!1523709 (= c!813143 (= lt!1929541 (bvneg lt!1929541)))))

(declare-fun valid!3929 (LongMapFixedSize!9854) Bool)

(assert (=> d!1523709 (valid!3929 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052)))))))

(assert (=> d!1523709 (= (apply!12628 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052)))) lt!1929541) lt!1929805)))

(declare-fun b!4767005 () Bool)

(declare-fun e!2975425 () List!53609)

(assert (=> b!4767005 (= e!2975425 (zeroValue!5215 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))))))

(declare-fun b!4767006 () Bool)

(declare-fun e!2975432 () Bool)

(declare-fun call!334215 () List!53609)

(assert (=> b!4767006 (= e!2975432 (= call!334215 (minValue!5215 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052)))))))))

(declare-fun b!4767007 () Bool)

(assert (=> b!4767007 (= e!2975428 e!2975425)))

(declare-fun c!813144 () Bool)

(assert (=> b!4767007 (= c!813144 (and (= lt!1929541 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5202 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!4767008 () Bool)

(declare-fun e!2975426 () List!53609)

(assert (=> b!4767008 (= e!2975426 (dynLambda!21950 (defaultEntry!5345 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) lt!1929541))))

(declare-fun b!4767009 () Bool)

(declare-fun e!2975433 () List!53609)

(assert (=> b!4767009 (= e!2975433 (dynLambda!21950 (defaultEntry!5345 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) lt!1929541))))

(declare-fun b!4767010 () Bool)

(declare-fun e!2975430 () Bool)

(assert (=> b!4767010 (= e!2975423 e!2975430)))

(declare-fun c!813145 () Bool)

(assert (=> b!4767010 (= c!813145 (= lt!1929541 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4767011 () Bool)

(declare-fun lt!1929803 () Unit!138227)

(declare-fun lt!1929812 () Unit!138227)

(assert (=> b!4767011 (= lt!1929803 lt!1929812)))

(assert (=> b!4767011 e!2975423))

(declare-fun c!813148 () Bool)

(assert (=> b!4767011 (= c!813148 (= lt!1929541 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((SeekEntryResult!26 0))(
  ( (Found!26 (index!1486 (_ BitVec 32))) (Undefined!26) (MissingZero!26 (index!1487 (_ BitVec 32))) (MissingVacant!26 (index!1488 (_ BitVec 32))) (Intermediate!26 (undefined!107 Bool) (index!1489 (_ BitVec 32)) (x!819251 (_ BitVec 32))) )
))
(declare-fun lt!1929804 () SeekEntryResult!26)

(declare-fun lemmaKeyInListMapThenSameValueInArray!14 (array!18024 array!18026 (_ BitVec 32) (_ BitVec 32) List!53609 List!53609 (_ BitVec 64) (_ BitVec 32) Int) Unit!138227)

(assert (=> b!4767011 (= lt!1929812 (lemmaKeyInListMapThenSameValueInArray!14 (_keys!5269 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) (_values!5240 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) (mask!14686 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) (extraKeys!5202 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) (zeroValue!5215 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) (minValue!5215 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) lt!1929541 (index!1486 lt!1929804) (defaultEntry!5345 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052)))))))))

(declare-fun lt!1929810 () Unit!138227)

(declare-fun lt!1929813 () Unit!138227)

(assert (=> b!4767011 (= lt!1929810 lt!1929813)))

(declare-fun getCurrentListMap!29 (array!18024 array!18026 (_ BitVec 32) (_ BitVec 32) List!53609 List!53609 (_ BitVec 32) Int) ListLongMap!4687)

(assert (=> b!4767011 (contains!16831 (getCurrentListMap!29 (_keys!5269 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) (_values!5240 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) (mask!14686 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) (extraKeys!5202 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) (zeroValue!5215 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) (minValue!5215 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) #b00000000000000000000000000000000 (defaultEntry!5345 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052)))))) (select (arr!8039 (_keys!5269 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052)))))) (index!1486 lt!1929804)))))

(declare-fun lemmaValidKeyInArrayIsInListMap!19 (array!18024 array!18026 (_ BitVec 32) (_ BitVec 32) List!53609 List!53609 (_ BitVec 32) Int) Unit!138227)

(assert (=> b!4767011 (= lt!1929813 (lemmaValidKeyInArrayIsInListMap!19 (_keys!5269 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) (_values!5240 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) (mask!14686 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) (extraKeys!5202 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) (zeroValue!5215 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) (minValue!5215 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) (index!1486 lt!1929804) (defaultEntry!5345 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052)))))))))

(declare-fun lt!1929809 () Unit!138227)

(declare-fun lt!1929811 () Unit!138227)

(assert (=> b!4767011 (= lt!1929809 lt!1929811)))

(declare-fun arrayContainsKey!0 (array!18024 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!4767011 (arrayContainsKey!0 (_keys!5269 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) lt!1929541 #b00000000000000000000000000000000)))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!18024 (_ BitVec 64) (_ BitVec 32)) Unit!138227)

(assert (=> b!4767011 (= lt!1929811 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5269 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) lt!1929541 (index!1486 lt!1929804)))))

(assert (=> b!4767011 (= e!2975433 (select (arr!8040 (_values!5240 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052)))))) (index!1486 lt!1929804)))))

(declare-fun b!4767012 () Bool)

(assert (=> b!4767012 (= e!2975424 (= lt!1929805 (dynLambda!21950 (defaultEntry!5345 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) lt!1929541)))))

(declare-fun b!4767013 () Bool)

(declare-fun c!813149 () Bool)

(assert (=> b!4767013 (= c!813149 (and (= lt!1929541 #b1000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5202 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!4767013 (= e!2975425 e!2975426)))

(declare-fun bm!334208 () Bool)

(declare-fun call!334214 () List!53609)

(assert (=> bm!334208 (= call!334214 (apply!12626 (ite c!813148 call!334212 call!334213) lt!1929541))))

(declare-fun bm!334209 () Bool)

(assert (=> bm!334209 (= call!334215 call!334214)))

(declare-fun b!4767014 () Bool)

(declare-fun res!2021774 () Bool)

(declare-fun e!2975429 () Bool)

(assert (=> b!4767014 (=> (not res!2021774) (not e!2975429))))

(assert (=> b!4767014 (= res!2021774 (arrayContainsKey!0 (_keys!5269 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) lt!1929541 #b00000000000000000000000000000000))))

(assert (=> b!4767014 (= e!2975430 e!2975429)))

(declare-fun b!4767015 () Bool)

(assert (=> b!4767015 (= e!2975426 (minValue!5215 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))))))

(declare-fun b!4767016 () Bool)

(assert (=> b!4767016 (= e!2975429 (= call!334215 (select (arr!8040 (_values!5240 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052)))))) (index!1486 lt!1929804))))))

(declare-fun b!4767017 () Bool)

(assert (=> b!4767017 (= e!2975428 e!2975433)))

(declare-fun seekEntry!0 ((_ BitVec 64) array!18024 (_ BitVec 32)) SeekEntryResult!26)

(assert (=> b!4767017 (= lt!1929804 (seekEntry!0 lt!1929541 (_keys!5269 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) (mask!14686 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052)))))))))

(declare-fun lt!1929807 () Unit!138227)

(declare-fun lemmaSeekEntryGivesInRangeIndex!14 (array!18024 array!18026 (_ BitVec 32) (_ BitVec 32) List!53609 List!53609 (_ BitVec 64)) Unit!138227)

(assert (=> b!4767017 (= lt!1929807 (lemmaSeekEntryGivesInRangeIndex!14 (_keys!5269 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) (_values!5240 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) (mask!14686 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) (extraKeys!5202 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) (zeroValue!5215 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) (minValue!5215 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) lt!1929541))))

(declare-fun lt!1929806 () SeekEntryResult!26)

(assert (=> b!4767017 (= lt!1929806 (seekEntry!0 lt!1929541 (_keys!5269 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) (mask!14686 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052)))))))))

(declare-fun res!2021775 () Bool)

(assert (=> b!4767017 (= res!2021775 (not ((_ is Found!26) lt!1929806)))))

(declare-fun e!2975427 () Bool)

(assert (=> b!4767017 (=> res!2021775 e!2975427)))

(assert (=> b!4767017 e!2975427))

(declare-fun lt!1929808 () Unit!138227)

(assert (=> b!4767017 (= lt!1929808 lt!1929807)))

(declare-fun c!813147 () Bool)

(assert (=> b!4767017 (= c!813147 ((_ is Found!26) lt!1929804))))

(declare-fun b!4767018 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!4767018 (= e!2975427 (inRange!0 (index!1486 lt!1929806) (mask!14686 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052)))))))))

(declare-fun bm!334210 () Bool)

(assert (=> bm!334210 (= call!334212 (getCurrentListMap!29 (_keys!5269 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) (_values!5240 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) (mask!14686 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) (extraKeys!5202 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) (zeroValue!5215 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) (minValue!5215 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) #b00000000000000000000000000000000 (defaultEntry!5345 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052)))))))))

(declare-fun b!4767019 () Bool)

(assert (=> b!4767019 (= e!2975431 (= call!334214 (zeroValue!5215 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052)))))))))

(declare-fun b!4767020 () Bool)

(declare-fun res!2021773 () Bool)

(assert (=> b!4767020 (=> (not res!2021773) (not e!2975432))))

(assert (=> b!4767020 (= res!2021773 (not (= (bvand (extraKeys!5202 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!4767020 (= e!2975430 e!2975432)))

(assert (= (and d!1523709 c!813143) b!4767007))

(assert (= (and d!1523709 (not c!813143)) b!4767017))

(assert (= (and b!4767007 c!813144) b!4767005))

(assert (= (and b!4767007 (not c!813144)) b!4767013))

(assert (= (and b!4767013 c!813149) b!4767015))

(assert (= (and b!4767013 (not c!813149)) b!4767008))

(assert (= (and b!4767017 (not res!2021775)) b!4767018))

(assert (= (and b!4767017 c!813147) b!4767011))

(assert (= (and b!4767017 (not c!813147)) b!4767009))

(assert (= (and b!4767011 c!813148) b!4767003))

(assert (= (and b!4767011 (not c!813148)) b!4767010))

(assert (= (and b!4767003 res!2021772) b!4767019))

(assert (= (and b!4767010 c!813145) b!4767020))

(assert (= (and b!4767010 (not c!813145)) b!4767014))

(assert (= (and b!4767020 res!2021773) b!4767006))

(assert (= (and b!4767014 res!2021774) b!4767016))

(assert (= (or b!4767006 b!4767016) bm!334207))

(assert (= (or b!4767006 b!4767016) bm!334209))

(assert (= (or b!4767019 bm!334207) bm!334210))

(assert (= (or b!4767019 bm!334209) bm!334208))

(assert (= (and d!1523709 c!813146) b!4767004))

(assert (= (and d!1523709 (not c!813146)) b!4767012))

(declare-fun b_lambda!184357 () Bool)

(assert (=> (not b_lambda!184357) (not b!4767008)))

(assert (=> b!4767008 t!361032))

(declare-fun b_and!341363 () Bool)

(assert (= b_and!341361 (and (=> t!361032 result!319108) b_and!341363)))

(declare-fun b_lambda!184359 () Bool)

(assert (=> (not b_lambda!184359) (not b!4767009)))

(assert (=> b!4767009 t!361032))

(declare-fun b_and!341365 () Bool)

(assert (= b_and!341363 (and (=> t!361032 result!319108) b_and!341365)))

(declare-fun b_lambda!184361 () Bool)

(assert (=> (not b_lambda!184361) (not b!4767012)))

(assert (=> b!4767012 t!361032))

(declare-fun b_and!341367 () Bool)

(assert (= b_and!341365 (and (=> t!361032 result!319108) b_and!341367)))

(assert (=> b!4767004 m!5737738))

(declare-fun m!5737938 () Bool)

(assert (=> b!4767004 m!5737938))

(assert (=> b!4767004 m!5737938))

(declare-fun m!5737940 () Bool)

(assert (=> b!4767004 m!5737940))

(declare-fun m!5737942 () Bool)

(assert (=> bm!334210 m!5737942))

(declare-fun m!5737944 () Bool)

(assert (=> bm!334208 m!5737944))

(assert (=> b!4767012 m!5737642))

(declare-fun m!5737946 () Bool)

(assert (=> b!4767016 m!5737946))

(assert (=> b!4767009 m!5737642))

(assert (=> d!1523709 m!5737936))

(declare-fun m!5737948 () Bool)

(assert (=> d!1523709 m!5737948))

(declare-fun m!5737950 () Bool)

(assert (=> b!4767017 m!5737950))

(declare-fun m!5737952 () Bool)

(assert (=> b!4767017 m!5737952))

(assert (=> b!4767008 m!5737642))

(declare-fun m!5737954 () Bool)

(assert (=> b!4767014 m!5737954))

(declare-fun m!5737956 () Bool)

(assert (=> b!4767018 m!5737956))

(declare-fun m!5737958 () Bool)

(assert (=> b!4767011 m!5737958))

(declare-fun m!5737960 () Bool)

(assert (=> b!4767011 m!5737960))

(assert (=> b!4767011 m!5737942))

(declare-fun m!5737962 () Bool)

(assert (=> b!4767011 m!5737962))

(declare-fun m!5737964 () Bool)

(assert (=> b!4767011 m!5737964))

(assert (=> b!4767011 m!5737942))

(assert (=> b!4767011 m!5737954))

(assert (=> b!4767011 m!5737946))

(assert (=> b!4767011 m!5737962))

(declare-fun m!5737966 () Bool)

(assert (=> b!4767011 m!5737966))

(assert (=> d!1523609 d!1523709))

(declare-fun d!1523711 () Bool)

(assert (=> d!1523711 (= (valid!3928 (v!47657 (underlying!10062 thiss!42052))) (valid!3929 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))))))

(declare-fun bs!1148926 () Bool)

(assert (= bs!1148926 d!1523711))

(assert (=> bs!1148926 m!5737948))

(assert (=> d!1523609 d!1523711))

(assert (=> d!1523661 d!1523711))

(declare-fun d!1523713 () Bool)

(declare-fun res!2021780 () Bool)

(declare-fun e!2975438 () Bool)

(assert (=> d!1523713 (=> res!2021780 e!2975438)))

(assert (=> d!1523713 (= res!2021780 ((_ is Nil!53486) (toList!6290 (map!11986 (v!47657 (underlying!10062 thiss!42052))))))))

(assert (=> d!1523713 (= (forall!11875 (toList!6290 (map!11986 (v!47657 (underlying!10062 thiss!42052)))) lambda!224399) e!2975438)))

(declare-fun b!4767025 () Bool)

(declare-fun e!2975439 () Bool)

(assert (=> b!4767025 (= e!2975438 e!2975439)))

(declare-fun res!2021781 () Bool)

(assert (=> b!4767025 (=> (not res!2021781) (not e!2975439))))

(assert (=> b!4767025 (= res!2021781 (dynLambda!21951 lambda!224399 (h!59898 (toList!6290 (map!11986 (v!47657 (underlying!10062 thiss!42052)))))))))

(declare-fun b!4767026 () Bool)

(assert (=> b!4767026 (= e!2975439 (forall!11875 (t!361030 (toList!6290 (map!11986 (v!47657 (underlying!10062 thiss!42052))))) lambda!224399))))

(assert (= (and d!1523713 (not res!2021780)) b!4767025))

(assert (= (and b!4767025 res!2021781) b!4767026))

(declare-fun b_lambda!184363 () Bool)

(assert (=> (not b_lambda!184363) (not b!4767025)))

(declare-fun m!5737968 () Bool)

(assert (=> b!4767025 m!5737968))

(declare-fun m!5737970 () Bool)

(assert (=> b!4767026 m!5737970))

(assert (=> b!4766846 d!1523713))

(assert (=> b!4766846 d!1523635))

(assert (=> bm!334195 d!1523625))

(declare-fun d!1523715 () Bool)

(declare-fun lt!1929814 () Bool)

(assert (=> d!1523715 (= lt!1929814 (select (content!9586 (t!361030 (toList!6290 lt!1929547))) lt!1929552))))

(declare-fun e!2975440 () Bool)

(assert (=> d!1523715 (= lt!1929814 e!2975440)))

(declare-fun res!2021783 () Bool)

(assert (=> d!1523715 (=> (not res!2021783) (not e!2975440))))

(assert (=> d!1523715 (= res!2021783 ((_ is Cons!53486) (t!361030 (toList!6290 lt!1929547))))))

(assert (=> d!1523715 (= (contains!16830 (t!361030 (toList!6290 lt!1929547)) lt!1929552) lt!1929814)))

(declare-fun b!4767027 () Bool)

(declare-fun e!2975441 () Bool)

(assert (=> b!4767027 (= e!2975440 e!2975441)))

(declare-fun res!2021782 () Bool)

(assert (=> b!4767027 (=> res!2021782 e!2975441)))

(assert (=> b!4767027 (= res!2021782 (= (h!59898 (t!361030 (toList!6290 lt!1929547))) lt!1929552))))

(declare-fun b!4767028 () Bool)

(assert (=> b!4767028 (= e!2975441 (contains!16830 (t!361030 (t!361030 (toList!6290 lt!1929547))) lt!1929552))))

(assert (= (and d!1523715 res!2021783) b!4767027))

(assert (= (and b!4767027 (not res!2021782)) b!4767028))

(declare-fun m!5737972 () Bool)

(assert (=> d!1523715 m!5737972))

(declare-fun m!5737974 () Bool)

(assert (=> d!1523715 m!5737974))

(declare-fun m!5737976 () Bool)

(assert (=> b!4767028 m!5737976))

(assert (=> b!4766738 d!1523715))

(declare-fun d!1523717 () Bool)

(declare-fun lt!1929815 () Bool)

(assert (=> d!1523717 (= lt!1929815 (select (content!9587 lt!1929544) (get!18033 lt!1929626)))))

(declare-fun e!2975442 () Bool)

(assert (=> d!1523717 (= lt!1929815 e!2975442)))

(declare-fun res!2021785 () Bool)

(assert (=> d!1523717 (=> (not res!2021785) (not e!2975442))))

(assert (=> d!1523717 (= res!2021785 ((_ is Cons!53485) lt!1929544))))

(assert (=> d!1523717 (= (contains!16835 lt!1929544 (get!18033 lt!1929626)) lt!1929815)))

(declare-fun b!4767029 () Bool)

(declare-fun e!2975443 () Bool)

(assert (=> b!4767029 (= e!2975442 e!2975443)))

(declare-fun res!2021784 () Bool)

(assert (=> b!4767029 (=> res!2021784 e!2975443)))

(assert (=> b!4767029 (= res!2021784 (= (h!59897 lt!1929544) (get!18033 lt!1929626)))))

(declare-fun b!4767030 () Bool)

(assert (=> b!4767030 (= e!2975443 (contains!16835 (t!361029 lt!1929544) (get!18033 lt!1929626)))))

(assert (= (and d!1523717 res!2021785) b!4767029))

(assert (= (and b!4767029 (not res!2021784)) b!4767030))

(declare-fun m!5737978 () Bool)

(assert (=> d!1523717 m!5737978))

(assert (=> d!1523717 m!5737726))

(declare-fun m!5737980 () Bool)

(assert (=> d!1523717 m!5737980))

(assert (=> b!4767030 m!5737726))

(declare-fun m!5737982 () Bool)

(assert (=> b!4767030 m!5737982))

(assert (=> b!4766799 d!1523717))

(declare-fun d!1523719 () Bool)

(assert (=> d!1523719 (= (get!18033 lt!1929626) (v!47659 lt!1929626))))

(assert (=> b!4766799 d!1523719))

(declare-fun d!1523721 () Bool)

(assert (=> d!1523721 (= (isDefined!9838 call!334198) (not (isEmpty!29278 call!334198)))))

(declare-fun bs!1148927 () Bool)

(assert (= bs!1148927 d!1523721))

(declare-fun m!5737984 () Bool)

(assert (=> bs!1148927 m!5737984))

(assert (=> bm!334190 d!1523721))

(assert (=> b!4766841 d!1523653))

(assert (=> b!4766809 d!1523649))

(assert (=> b!4766809 d!1523651))

(assert (=> b!4766809 d!1523653))

(assert (=> b!4766822 d!1523689))

(declare-fun lt!1929816 () Bool)

(declare-fun d!1523723 () Bool)

(assert (=> d!1523723 (= lt!1929816 (select (content!9586 (toList!6290 lt!1929547)) (tuple2!55533 lt!1929664 lt!1929661)))))

(declare-fun e!2975444 () Bool)

(assert (=> d!1523723 (= lt!1929816 e!2975444)))

(declare-fun res!2021787 () Bool)

(assert (=> d!1523723 (=> (not res!2021787) (not e!2975444))))

(assert (=> d!1523723 (= res!2021787 ((_ is Cons!53486) (toList!6290 lt!1929547)))))

(assert (=> d!1523723 (= (contains!16830 (toList!6290 lt!1929547) (tuple2!55533 lt!1929664 lt!1929661)) lt!1929816)))

(declare-fun b!4767031 () Bool)

(declare-fun e!2975445 () Bool)

(assert (=> b!4767031 (= e!2975444 e!2975445)))

(declare-fun res!2021786 () Bool)

(assert (=> b!4767031 (=> res!2021786 e!2975445)))

(assert (=> b!4767031 (= res!2021786 (= (h!59898 (toList!6290 lt!1929547)) (tuple2!55533 lt!1929664 lt!1929661)))))

(declare-fun b!4767032 () Bool)

(assert (=> b!4767032 (= e!2975445 (contains!16830 (t!361030 (toList!6290 lt!1929547)) (tuple2!55533 lt!1929664 lt!1929661)))))

(assert (= (and d!1523723 res!2021787) b!4767031))

(assert (= (and b!4767031 (not res!2021786)) b!4767032))

(assert (=> d!1523723 m!5737644))

(declare-fun m!5737986 () Bool)

(assert (=> d!1523723 m!5737986))

(declare-fun m!5737988 () Bool)

(assert (=> b!4767032 m!5737988))

(assert (=> b!4766822 d!1523723))

(assert (=> b!4766822 d!1523625))

(assert (=> b!4766822 d!1523645))

(assert (=> b!4766822 d!1523693))

(declare-fun d!1523725 () Bool)

(assert (=> d!1523725 (dynLambda!21951 lambda!224393 (tuple2!55533 (hash!4569 (hashF!12431 thiss!42052) key!1776) (apply!12626 lt!1929547 (hash!4569 (hashF!12431 thiss!42052) key!1776))))))

(declare-fun lt!1929817 () Unit!138227)

(assert (=> d!1523725 (= lt!1929817 (choose!33964 (toList!6290 lt!1929547) lambda!224393 (tuple2!55533 (hash!4569 (hashF!12431 thiss!42052) key!1776) (apply!12626 lt!1929547 (hash!4569 (hashF!12431 thiss!42052) key!1776)))))))

(declare-fun e!2975446 () Bool)

(assert (=> d!1523725 e!2975446))

(declare-fun res!2021788 () Bool)

(assert (=> d!1523725 (=> (not res!2021788) (not e!2975446))))

(assert (=> d!1523725 (= res!2021788 (forall!11875 (toList!6290 lt!1929547) lambda!224393))))

(assert (=> d!1523725 (= (forallContained!3861 (toList!6290 lt!1929547) lambda!224393 (tuple2!55533 (hash!4569 (hashF!12431 thiss!42052) key!1776) (apply!12626 lt!1929547 (hash!4569 (hashF!12431 thiss!42052) key!1776)))) lt!1929817)))

(declare-fun b!4767033 () Bool)

(assert (=> b!4767033 (= e!2975446 (contains!16830 (toList!6290 lt!1929547) (tuple2!55533 (hash!4569 (hashF!12431 thiss!42052) key!1776) (apply!12626 lt!1929547 (hash!4569 (hashF!12431 thiss!42052) key!1776)))))))

(assert (= (and d!1523725 res!2021788) b!4767033))

(declare-fun b_lambda!184365 () Bool)

(assert (=> (not b_lambda!184365) (not d!1523725)))

(declare-fun m!5737990 () Bool)

(assert (=> d!1523725 m!5737990))

(declare-fun m!5737992 () Bool)

(assert (=> d!1523725 m!5737992))

(assert (=> d!1523725 m!5737756))

(assert (=> b!4767033 m!5737916))

(assert (=> b!4766822 d!1523725))

(declare-fun d!1523727 () Bool)

(declare-fun e!2975448 () Bool)

(assert (=> d!1523727 e!2975448))

(declare-fun res!2021789 () Bool)

(assert (=> d!1523727 (=> res!2021789 e!2975448)))

(declare-fun lt!1929818 () Bool)

(assert (=> d!1523727 (= res!2021789 (not lt!1929818))))

(declare-fun lt!1929821 () Bool)

(assert (=> d!1523727 (= lt!1929818 lt!1929821)))

(declare-fun lt!1929819 () Unit!138227)

(declare-fun e!2975447 () Unit!138227)

(assert (=> d!1523727 (= lt!1929819 e!2975447)))

(declare-fun c!813150 () Bool)

(assert (=> d!1523727 (= c!813150 lt!1929821)))

(assert (=> d!1523727 (= lt!1929821 (containsKey!3664 (toList!6290 lt!1929547) lt!1929664))))

(assert (=> d!1523727 (= (contains!16831 lt!1929547 lt!1929664) lt!1929818)))

(declare-fun b!4767034 () Bool)

(declare-fun lt!1929820 () Unit!138227)

(assert (=> b!4767034 (= e!2975447 lt!1929820)))

(assert (=> b!4767034 (= lt!1929820 (lemmaContainsKeyImpliesGetValueByKeyDefined!1986 (toList!6290 lt!1929547) lt!1929664))))

(assert (=> b!4767034 (isDefined!9839 (getValueByKey!2180 (toList!6290 lt!1929547) lt!1929664))))

(declare-fun b!4767035 () Bool)

(declare-fun Unit!138241 () Unit!138227)

(assert (=> b!4767035 (= e!2975447 Unit!138241)))

(declare-fun b!4767036 () Bool)

(assert (=> b!4767036 (= e!2975448 (isDefined!9839 (getValueByKey!2180 (toList!6290 lt!1929547) lt!1929664)))))

(assert (= (and d!1523727 c!813150) b!4767034))

(assert (= (and d!1523727 (not c!813150)) b!4767035))

(assert (= (and d!1523727 (not res!2021789)) b!4767036))

(declare-fun m!5737994 () Bool)

(assert (=> d!1523727 m!5737994))

(declare-fun m!5737996 () Bool)

(assert (=> b!4767034 m!5737996))

(assert (=> b!4767034 m!5737760))

(assert (=> b!4767034 m!5737760))

(declare-fun m!5737998 () Bool)

(assert (=> b!4767034 m!5737998))

(assert (=> b!4767036 m!5737760))

(assert (=> b!4767036 m!5737760))

(assert (=> b!4767036 m!5737998))

(assert (=> b!4766822 d!1523727))

(declare-fun d!1523729 () Bool)

(assert (=> d!1523729 (contains!16830 (toList!6290 lt!1929547) (tuple2!55533 lt!1929664 lt!1929661))))

(declare-fun lt!1929822 () Unit!138227)

(assert (=> d!1523729 (= lt!1929822 (choose!33966 lt!1929547 lt!1929664 lt!1929661))))

(assert (=> d!1523729 (contains!16831 lt!1929547 lt!1929664)))

(assert (=> d!1523729 (= (lemmaGetValueImpliesTupleContained!437 lt!1929547 lt!1929664 lt!1929661) lt!1929822)))

(declare-fun bs!1148928 () Bool)

(assert (= bs!1148928 d!1523729))

(assert (=> bs!1148928 m!5737748))

(declare-fun m!5738000 () Bool)

(assert (=> bs!1148928 m!5738000))

(assert (=> bs!1148928 m!5737754))

(assert (=> b!4766822 d!1523729))

(assert (=> b!4766822 d!1523701))

(assert (=> b!4766822 d!1523703))

(declare-fun d!1523731 () Bool)

(declare-fun c!813151 () Bool)

(assert (=> d!1523731 (= c!813151 (and ((_ is Cons!53485) (t!361029 (toList!6289 (extractMap!2145 (toList!6290 lt!1929547))))) (= (_1!31059 (h!59897 (t!361029 (toList!6289 (extractMap!2145 (toList!6290 lt!1929547)))))) key!1776)))))

(declare-fun e!2975449 () Option!12672)

(assert (=> d!1523731 (= (getValueByKey!2179 (t!361029 (toList!6289 (extractMap!2145 (toList!6290 lt!1929547)))) key!1776) e!2975449)))

(declare-fun b!4767037 () Bool)

(assert (=> b!4767037 (= e!2975449 (Some!12671 (_2!31059 (h!59897 (t!361029 (toList!6289 (extractMap!2145 (toList!6290 lt!1929547))))))))))

(declare-fun b!4767040 () Bool)

(declare-fun e!2975450 () Option!12672)

(assert (=> b!4767040 (= e!2975450 None!12671)))

(declare-fun b!4767038 () Bool)

(assert (=> b!4767038 (= e!2975449 e!2975450)))

(declare-fun c!813152 () Bool)

(assert (=> b!4767038 (= c!813152 (and ((_ is Cons!53485) (t!361029 (toList!6289 (extractMap!2145 (toList!6290 lt!1929547))))) (not (= (_1!31059 (h!59897 (t!361029 (toList!6289 (extractMap!2145 (toList!6290 lt!1929547)))))) key!1776))))))

(declare-fun b!4767039 () Bool)

(assert (=> b!4767039 (= e!2975450 (getValueByKey!2179 (t!361029 (t!361029 (toList!6289 (extractMap!2145 (toList!6290 lt!1929547))))) key!1776))))

(assert (= (and d!1523731 c!813151) b!4767037))

(assert (= (and d!1523731 (not c!813151)) b!4767038))

(assert (= (and b!4767038 c!813152) b!4767039))

(assert (= (and b!4767038 (not c!813152)) b!4767040))

(declare-fun m!5738002 () Bool)

(assert (=> b!4767039 m!5738002))

(assert (=> b!4766883 d!1523731))

(assert (=> b!4766795 d!1523719))

(assert (=> b!4766820 d!1523683))

(declare-fun d!1523733 () Bool)

(assert (=> d!1523733 (dynLambda!21951 lambda!224373 lt!1929543)))

(assert (=> d!1523733 true))

(declare-fun _$7!2300 () Unit!138227)

(assert (=> d!1523733 (= (choose!33964 (toList!6290 lt!1929547) lambda!224373 lt!1929543) _$7!2300)))

(declare-fun b_lambda!184367 () Bool)

(assert (=> (not b_lambda!184367) (not d!1523733)))

(declare-fun bs!1148929 () Bool)

(assert (= bs!1148929 d!1523733))

(assert (=> bs!1148929 m!5737668))

(assert (=> d!1523623 d!1523733))

(declare-fun d!1523735 () Bool)

(declare-fun res!2021790 () Bool)

(declare-fun e!2975451 () Bool)

(assert (=> d!1523735 (=> res!2021790 e!2975451)))

(assert (=> d!1523735 (= res!2021790 ((_ is Nil!53486) (toList!6290 lt!1929547)))))

(assert (=> d!1523735 (= (forall!11875 (toList!6290 lt!1929547) lambda!224373) e!2975451)))

(declare-fun b!4767041 () Bool)

(declare-fun e!2975452 () Bool)

(assert (=> b!4767041 (= e!2975451 e!2975452)))

(declare-fun res!2021791 () Bool)

(assert (=> b!4767041 (=> (not res!2021791) (not e!2975452))))

(assert (=> b!4767041 (= res!2021791 (dynLambda!21951 lambda!224373 (h!59898 (toList!6290 lt!1929547))))))

(declare-fun b!4767042 () Bool)

(assert (=> b!4767042 (= e!2975452 (forall!11875 (t!361030 (toList!6290 lt!1929547)) lambda!224373))))

(assert (= (and d!1523735 (not res!2021790)) b!4767041))

(assert (= (and b!4767041 res!2021791) b!4767042))

(declare-fun b_lambda!184369 () Bool)

(assert (=> (not b_lambda!184369) (not b!4767041)))

(declare-fun m!5738004 () Bool)

(assert (=> b!4767041 m!5738004))

(declare-fun m!5738006 () Bool)

(assert (=> b!4767042 m!5738006))

(assert (=> d!1523623 d!1523735))

(declare-fun d!1523737 () Bool)

(declare-fun res!2021792 () Bool)

(declare-fun e!2975453 () Bool)

(assert (=> d!1523737 (=> res!2021792 e!2975453)))

(assert (=> d!1523737 (= res!2021792 ((_ is Nil!53486) (toList!6290 lt!1929547)))))

(assert (=> d!1523737 (= (forall!11875 (toList!6290 lt!1929547) lambda!224393) e!2975453)))

(declare-fun b!4767043 () Bool)

(declare-fun e!2975454 () Bool)

(assert (=> b!4767043 (= e!2975453 e!2975454)))

(declare-fun res!2021793 () Bool)

(assert (=> b!4767043 (=> (not res!2021793) (not e!2975454))))

(assert (=> b!4767043 (= res!2021793 (dynLambda!21951 lambda!224393 (h!59898 (toList!6290 lt!1929547))))))

(declare-fun b!4767044 () Bool)

(assert (=> b!4767044 (= e!2975454 (forall!11875 (t!361030 (toList!6290 lt!1929547)) lambda!224393))))

(assert (= (and d!1523737 (not res!2021792)) b!4767043))

(assert (= (and b!4767043 res!2021793) b!4767044))

(declare-fun b_lambda!184371 () Bool)

(assert (=> (not b_lambda!184371) (not b!4767043)))

(declare-fun m!5738008 () Bool)

(assert (=> b!4767043 m!5738008))

(declare-fun m!5738010 () Bool)

(assert (=> b!4767044 m!5738010))

(assert (=> d!1523643 d!1523737))

(declare-fun bs!1148930 () Bool)

(declare-fun d!1523739 () Bool)

(assert (= bs!1148930 (and d!1523739 b!4766846)))

(declare-fun lambda!224411 () Int)

(assert (=> bs!1148930 (= lambda!224411 lambda!224399)))

(declare-fun bs!1148931 () Bool)

(assert (= bs!1148931 (and d!1523739 d!1523671)))

(assert (=> bs!1148931 (= lambda!224411 lambda!224405)))

(declare-fun bs!1148932 () Bool)

(assert (= bs!1148932 (and d!1523739 d!1523643)))

(assert (=> bs!1148932 (= lambda!224411 lambda!224393)))

(declare-fun bs!1148933 () Bool)

(assert (= bs!1148933 (and d!1523739 d!1523629)))

(assert (=> bs!1148933 (= lambda!224411 lambda!224386)))

(declare-fun bs!1148934 () Bool)

(assert (= bs!1148934 (and d!1523739 b!4766873)))

(assert (=> bs!1148934 (= lambda!224411 lambda!224402)))

(declare-fun bs!1148935 () Bool)

(assert (= bs!1148935 (and d!1523739 d!1523645)))

(assert (=> bs!1148935 (= lambda!224411 lambda!224396)))

(declare-fun bs!1148936 () Bool)

(assert (= bs!1148936 (and d!1523739 d!1523683)))

(assert (=> bs!1148936 (not (= lambda!224411 lambda!224408))))

(declare-fun bs!1148937 () Bool)

(assert (= bs!1148937 (and d!1523739 b!4766698)))

(assert (=> bs!1148937 (= lambda!224411 lambda!224373)))

(assert (=> d!1523739 (isDefined!9838 (getPair!645 (apply!12626 lt!1929547 (hash!4569 (hashF!12431 thiss!42052) key!1776)) key!1776))))

(declare-fun lt!1929841 () Unit!138227)

(assert (=> d!1523739 (= lt!1929841 (forallContained!3861 (toList!6290 lt!1929547) lambda!224411 (tuple2!55533 (hash!4569 (hashF!12431 thiss!42052) key!1776) (apply!12626 lt!1929547 (hash!4569 (hashF!12431 thiss!42052) key!1776)))))))

(declare-fun lt!1929838 () Unit!138227)

(declare-fun lt!1929839 () Unit!138227)

(assert (=> d!1523739 (= lt!1929838 lt!1929839)))

(declare-fun lt!1929837 () (_ BitVec 64))

(declare-fun lt!1929840 () List!53609)

(assert (=> d!1523739 (contains!16830 (toList!6290 lt!1929547) (tuple2!55533 lt!1929837 lt!1929840))))

(assert (=> d!1523739 (= lt!1929839 (lemmaGetValueImpliesTupleContained!437 lt!1929547 lt!1929837 lt!1929840))))

(assert (=> d!1523739 (= lt!1929840 (apply!12626 lt!1929547 (hash!4569 (hashF!12431 thiss!42052) key!1776)))))

(assert (=> d!1523739 (= lt!1929837 (hash!4569 (hashF!12431 thiss!42052) key!1776))))

(declare-fun lt!1929842 () Unit!138227)

(declare-fun lt!1929843 () Unit!138227)

(assert (=> d!1523739 (= lt!1929842 lt!1929843)))

(assert (=> d!1523739 (contains!16831 lt!1929547 (hash!4569 (hashF!12431 thiss!42052) key!1776))))

(assert (=> d!1523739 (= lt!1929843 (lemmaInGenMapThenLongMapContainsHash!838 lt!1929547 key!1776 (hashF!12431 thiss!42052)))))

(assert (=> d!1523739 true))

(declare-fun _$25!295 () Unit!138227)

(assert (=> d!1523739 (= (choose!33967 lt!1929547 key!1776 (hashF!12431 thiss!42052)) _$25!295)))

(declare-fun bs!1148938 () Bool)

(assert (= bs!1148938 d!1523739))

(declare-fun m!5738012 () Bool)

(assert (=> bs!1148938 m!5738012))

(declare-fun m!5738014 () Bool)

(assert (=> bs!1148938 m!5738014))

(assert (=> bs!1148938 m!5737622))

(assert (=> bs!1148938 m!5737622))

(assert (=> bs!1148938 m!5737688))

(assert (=> bs!1148938 m!5737622))

(assert (=> bs!1148938 m!5737684))

(assert (=> bs!1148938 m!5737690))

(assert (=> bs!1148938 m!5737694))

(declare-fun m!5738016 () Bool)

(assert (=> bs!1148938 m!5738016))

(assert (=> bs!1148938 m!5737684))

(assert (=> bs!1148938 m!5737690))

(assert (=> bs!1148938 m!5737598))

(assert (=> d!1523643 d!1523739))

(declare-fun b!4767045 () Bool)

(declare-fun e!2975455 () Option!12674)

(assert (=> b!4767045 (= e!2975455 (Some!12673 (_2!31060 (h!59898 (toList!6290 lt!1929547)))))))

(declare-fun b!4767047 () Bool)

(declare-fun e!2975456 () Option!12674)

(assert (=> b!4767047 (= e!2975456 (getValueByKey!2180 (t!361030 (toList!6290 lt!1929547)) lt!1929606))))

(declare-fun d!1523741 () Bool)

(declare-fun c!813153 () Bool)

(assert (=> d!1523741 (= c!813153 (and ((_ is Cons!53486) (toList!6290 lt!1929547)) (= (_1!31060 (h!59898 (toList!6290 lt!1929547))) lt!1929606)))))

(assert (=> d!1523741 (= (getValueByKey!2180 (toList!6290 lt!1929547) lt!1929606) e!2975455)))

(declare-fun b!4767046 () Bool)

(assert (=> b!4767046 (= e!2975455 e!2975456)))

(declare-fun c!813154 () Bool)

(assert (=> b!4767046 (= c!813154 (and ((_ is Cons!53486) (toList!6290 lt!1929547)) (not (= (_1!31060 (h!59898 (toList!6290 lt!1929547))) lt!1929606))))))

(declare-fun b!4767048 () Bool)

(assert (=> b!4767048 (= e!2975456 None!12673)))

(assert (= (and d!1523741 c!813153) b!4767045))

(assert (= (and d!1523741 (not c!813153)) b!4767046))

(assert (= (and b!4767046 c!813154) b!4767047))

(assert (= (and b!4767046 (not c!813154)) b!4767048))

(declare-fun m!5738018 () Bool)

(assert (=> b!4767047 m!5738018))

(assert (=> b!4766762 d!1523741))

(declare-fun d!1523743 () Bool)

(declare-fun res!2021798 () Bool)

(declare-fun e!2975461 () Bool)

(assert (=> d!1523743 (=> res!2021798 e!2975461)))

(assert (=> d!1523743 (= res!2021798 (not ((_ is Cons!53485) (_2!31060 lt!1929543))))))

(assert (=> d!1523743 (= (noDuplicateKeys!2253 (_2!31060 lt!1929543)) e!2975461)))

(declare-fun b!4767053 () Bool)

(declare-fun e!2975462 () Bool)

(assert (=> b!4767053 (= e!2975461 e!2975462)))

(declare-fun res!2021799 () Bool)

(assert (=> b!4767053 (=> (not res!2021799) (not e!2975462))))

(assert (=> b!4767053 (= res!2021799 (not (containsKey!3663 (t!361029 (_2!31060 lt!1929543)) (_1!31059 (h!59897 (_2!31060 lt!1929543))))))))

(declare-fun b!4767054 () Bool)

(assert (=> b!4767054 (= e!2975462 (noDuplicateKeys!2253 (t!361029 (_2!31060 lt!1929543))))))

(assert (= (and d!1523743 (not res!2021798)) b!4767053))

(assert (= (and b!4767053 res!2021799) b!4767054))

(declare-fun m!5738020 () Bool)

(assert (=> b!4767053 m!5738020))

(declare-fun m!5738022 () Bool)

(assert (=> b!4767054 m!5738022))

(assert (=> bs!1148912 d!1523743))

(declare-fun lt!1929844 () Bool)

(declare-fun d!1523745 () Bool)

(assert (=> d!1523745 (= lt!1929844 (select (content!9586 (toList!6290 lt!1929547)) (tuple2!55533 lt!1929541 lt!1929544)))))

(declare-fun e!2975463 () Bool)

(assert (=> d!1523745 (= lt!1929844 e!2975463)))

(declare-fun res!2021801 () Bool)

(assert (=> d!1523745 (=> (not res!2021801) (not e!2975463))))

(assert (=> d!1523745 (= res!2021801 ((_ is Cons!53486) (toList!6290 lt!1929547)))))

(assert (=> d!1523745 (= (contains!16830 (toList!6290 lt!1929547) (tuple2!55533 lt!1929541 lt!1929544)) lt!1929844)))

(declare-fun b!4767055 () Bool)

(declare-fun e!2975464 () Bool)

(assert (=> b!4767055 (= e!2975463 e!2975464)))

(declare-fun res!2021800 () Bool)

(assert (=> b!4767055 (=> res!2021800 e!2975464)))

(assert (=> b!4767055 (= res!2021800 (= (h!59898 (toList!6290 lt!1929547)) (tuple2!55533 lt!1929541 lt!1929544)))))

(declare-fun b!4767056 () Bool)

(assert (=> b!4767056 (= e!2975464 (contains!16830 (t!361030 (toList!6290 lt!1929547)) (tuple2!55533 lt!1929541 lt!1929544)))))

(assert (= (and d!1523745 res!2021801) b!4767055))

(assert (= (and b!4767055 (not res!2021800)) b!4767056))

(assert (=> d!1523745 m!5737644))

(declare-fun m!5738024 () Bool)

(assert (=> d!1523745 m!5738024))

(declare-fun m!5738026 () Bool)

(assert (=> b!4767056 m!5738026))

(assert (=> d!1523655 d!1523745))

(declare-fun d!1523747 () Bool)

(assert (=> d!1523747 (contains!16830 (toList!6290 lt!1929547) (tuple2!55533 lt!1929541 lt!1929544))))

(assert (=> d!1523747 true))

(declare-fun _$14!1556 () Unit!138227)

(assert (=> d!1523747 (= (choose!33970 (toList!6290 lt!1929547) lt!1929541 lt!1929544) _$14!1556)))

(declare-fun bs!1148939 () Bool)

(assert (= bs!1148939 d!1523747))

(assert (=> bs!1148939 m!5737776))

(assert (=> d!1523655 d!1523747))

(declare-fun d!1523749 () Bool)

(declare-fun res!2021806 () Bool)

(declare-fun e!2975469 () Bool)

(assert (=> d!1523749 (=> res!2021806 e!2975469)))

(assert (=> d!1523749 (= res!2021806 (or ((_ is Nil!53486) (toList!6290 lt!1929547)) ((_ is Nil!53486) (t!361030 (toList!6290 lt!1929547)))))))

(assert (=> d!1523749 (= (isStrictlySorted!807 (toList!6290 lt!1929547)) e!2975469)))

(declare-fun b!4767061 () Bool)

(declare-fun e!2975470 () Bool)

(assert (=> b!4767061 (= e!2975469 e!2975470)))

(declare-fun res!2021807 () Bool)

(assert (=> b!4767061 (=> (not res!2021807) (not e!2975470))))

(assert (=> b!4767061 (= res!2021807 (bvslt (_1!31060 (h!59898 (toList!6290 lt!1929547))) (_1!31060 (h!59898 (t!361030 (toList!6290 lt!1929547))))))))

(declare-fun b!4767062 () Bool)

(assert (=> b!4767062 (= e!2975470 (isStrictlySorted!807 (t!361030 (toList!6290 lt!1929547))))))

(assert (= (and d!1523749 (not res!2021806)) b!4767061))

(assert (= (and b!4767061 res!2021807) b!4767062))

(declare-fun m!5738028 () Bool)

(assert (=> b!4767062 m!5738028))

(assert (=> d!1523655 d!1523749))

(assert (=> b!4766787 d!1523687))

(assert (=> b!4766760 d!1523677))

(assert (=> b!4766760 d!1523671))

(declare-fun d!1523751 () Bool)

(declare-fun c!813155 () Bool)

(assert (=> d!1523751 (= c!813155 (and ((_ is Cons!53485) (t!361029 (toList!6289 (map!11985 thiss!42052)))) (= (_1!31059 (h!59897 (t!361029 (toList!6289 (map!11985 thiss!42052))))) key!1776)))))

(declare-fun e!2975471 () Option!12672)

(assert (=> d!1523751 (= (getValueByKey!2179 (t!361029 (toList!6289 (map!11985 thiss!42052))) key!1776) e!2975471)))

(declare-fun b!4767063 () Bool)

(assert (=> b!4767063 (= e!2975471 (Some!12671 (_2!31059 (h!59897 (t!361029 (toList!6289 (map!11985 thiss!42052)))))))))

(declare-fun b!4767066 () Bool)

(declare-fun e!2975472 () Option!12672)

(assert (=> b!4767066 (= e!2975472 None!12671)))

(declare-fun b!4767064 () Bool)

(assert (=> b!4767064 (= e!2975471 e!2975472)))

(declare-fun c!813156 () Bool)

(assert (=> b!4767064 (= c!813156 (and ((_ is Cons!53485) (t!361029 (toList!6289 (map!11985 thiss!42052)))) (not (= (_1!31059 (h!59897 (t!361029 (toList!6289 (map!11985 thiss!42052))))) key!1776))))))

(declare-fun b!4767065 () Bool)

(assert (=> b!4767065 (= e!2975472 (getValueByKey!2179 (t!361029 (t!361029 (toList!6289 (map!11985 thiss!42052)))) key!1776))))

(assert (= (and d!1523751 c!813155) b!4767063))

(assert (= (and d!1523751 (not c!813155)) b!4767064))

(assert (= (and b!4767064 c!813156) b!4767065))

(assert (= (and b!4767064 (not c!813156)) b!4767066))

(declare-fun m!5738030 () Bool)

(assert (=> b!4767065 m!5738030))

(assert (=> b!4766732 d!1523751))

(declare-fun b!4767081 () Bool)

(assert (=> b!4767081 true))

(declare-fun bs!1148940 () Bool)

(declare-fun b!4767080 () Bool)

(assert (= bs!1148940 (and b!4767080 b!4767081)))

(declare-fun lambda!224441 () Int)

(declare-fun lambda!224440 () Int)

(assert (=> bs!1148940 (= lambda!224441 lambda!224440)))

(assert (=> b!4767080 true))

(declare-fun lambda!224442 () Int)

(declare-fun lt!1929906 () ListMap!5785)

(assert (=> bs!1148940 (= (= lt!1929906 (extractMap!2145 (t!361030 (toList!6290 lt!1929547)))) (= lambda!224442 lambda!224440))))

(assert (=> b!4767080 (= (= lt!1929906 (extractMap!2145 (t!361030 (toList!6290 lt!1929547)))) (= lambda!224442 lambda!224441))))

(assert (=> b!4767080 true))

(declare-fun bs!1148941 () Bool)

(declare-fun d!1523753 () Bool)

(assert (= bs!1148941 (and d!1523753 b!4767081)))

(declare-fun lambda!224443 () Int)

(declare-fun lt!1929903 () ListMap!5785)

(assert (=> bs!1148941 (= (= lt!1929903 (extractMap!2145 (t!361030 (toList!6290 lt!1929547)))) (= lambda!224443 lambda!224440))))

(declare-fun bs!1148942 () Bool)

(assert (= bs!1148942 (and d!1523753 b!4767080)))

(assert (=> bs!1148942 (= (= lt!1929903 (extractMap!2145 (t!361030 (toList!6290 lt!1929547)))) (= lambda!224443 lambda!224441))))

(assert (=> bs!1148942 (= (= lt!1929903 lt!1929906) (= lambda!224443 lambda!224442))))

(assert (=> d!1523753 true))

(declare-fun b!4767077 () Bool)

(declare-fun res!2021814 () Bool)

(declare-fun e!2975479 () Bool)

(assert (=> b!4767077 (=> (not res!2021814) (not e!2975479))))

(declare-fun forall!11876 (List!53609 Int) Bool)

(assert (=> b!4767077 (= res!2021814 (forall!11876 (toList!6289 (extractMap!2145 (t!361030 (toList!6290 lt!1929547)))) lambda!224443))))

(declare-fun b!4767078 () Bool)

(declare-fun e!2975481 () Bool)

(assert (=> b!4767078 (= e!2975481 (forall!11876 (toList!6289 (extractMap!2145 (t!361030 (toList!6290 lt!1929547)))) lambda!224442))))

(declare-fun bm!334217 () Bool)

(declare-fun call!334224 () Unit!138227)

(declare-fun lemmaContainsAllItsOwnKeys!907 (ListMap!5785) Unit!138227)

(assert (=> bm!334217 (= call!334224 (lemmaContainsAllItsOwnKeys!907 (extractMap!2145 (t!361030 (toList!6290 lt!1929547)))))))

(declare-fun e!2975480 () ListMap!5785)

(assert (=> b!4767080 (= e!2975480 lt!1929906)))

(declare-fun lt!1929905 () ListMap!5785)

(declare-fun +!2451 (ListMap!5785 tuple2!55530) ListMap!5785)

(assert (=> b!4767080 (= lt!1929905 (+!2451 (extractMap!2145 (t!361030 (toList!6290 lt!1929547))) (h!59897 (_2!31060 (h!59898 (toList!6290 lt!1929547))))))))

(assert (=> b!4767080 (= lt!1929906 (addToMapMapFromBucket!1625 (t!361029 (_2!31060 (h!59898 (toList!6290 lt!1929547)))) (+!2451 (extractMap!2145 (t!361030 (toList!6290 lt!1929547))) (h!59897 (_2!31060 (h!59898 (toList!6290 lt!1929547)))))))))

(declare-fun lt!1929888 () Unit!138227)

(assert (=> b!4767080 (= lt!1929888 call!334224)))

(assert (=> b!4767080 (forall!11876 (toList!6289 (extractMap!2145 (t!361030 (toList!6290 lt!1929547)))) lambda!224441)))

(declare-fun lt!1929896 () Unit!138227)

(assert (=> b!4767080 (= lt!1929896 lt!1929888)))

(assert (=> b!4767080 (forall!11876 (toList!6289 lt!1929905) lambda!224442)))

(declare-fun lt!1929904 () Unit!138227)

(declare-fun Unit!138242 () Unit!138227)

(assert (=> b!4767080 (= lt!1929904 Unit!138242)))

(assert (=> b!4767080 (forall!11876 (t!361029 (_2!31060 (h!59898 (toList!6290 lt!1929547)))) lambda!224442)))

(declare-fun lt!1929892 () Unit!138227)

(declare-fun Unit!138243 () Unit!138227)

(assert (=> b!4767080 (= lt!1929892 Unit!138243)))

(declare-fun lt!1929899 () Unit!138227)

(declare-fun Unit!138244 () Unit!138227)

(assert (=> b!4767080 (= lt!1929899 Unit!138244)))

(declare-fun lt!1929893 () Unit!138227)

(declare-fun forallContained!3862 (List!53609 Int tuple2!55530) Unit!138227)

(assert (=> b!4767080 (= lt!1929893 (forallContained!3862 (toList!6289 lt!1929905) lambda!224442 (h!59897 (_2!31060 (h!59898 (toList!6290 lt!1929547))))))))

(assert (=> b!4767080 (contains!16834 lt!1929905 (_1!31059 (h!59897 (_2!31060 (h!59898 (toList!6290 lt!1929547))))))))

(declare-fun lt!1929895 () Unit!138227)

(declare-fun Unit!138245 () Unit!138227)

(assert (=> b!4767080 (= lt!1929895 Unit!138245)))

(assert (=> b!4767080 (contains!16834 lt!1929906 (_1!31059 (h!59897 (_2!31060 (h!59898 (toList!6290 lt!1929547))))))))

(declare-fun lt!1929897 () Unit!138227)

(declare-fun Unit!138246 () Unit!138227)

(assert (=> b!4767080 (= lt!1929897 Unit!138246)))

(assert (=> b!4767080 (forall!11876 (_2!31060 (h!59898 (toList!6290 lt!1929547))) lambda!224442)))

(declare-fun lt!1929894 () Unit!138227)

(declare-fun Unit!138247 () Unit!138227)

(assert (=> b!4767080 (= lt!1929894 Unit!138247)))

(declare-fun call!334222 () Bool)

(assert (=> b!4767080 call!334222))

(declare-fun lt!1929901 () Unit!138227)

(declare-fun Unit!138248 () Unit!138227)

(assert (=> b!4767080 (= lt!1929901 Unit!138248)))

(declare-fun lt!1929898 () Unit!138227)

(declare-fun Unit!138249 () Unit!138227)

(assert (=> b!4767080 (= lt!1929898 Unit!138249)))

(declare-fun lt!1929887 () Unit!138227)

(declare-fun addForallContainsKeyThenBeforeAdding!906 (ListMap!5785 ListMap!5785 K!14959 V!15205) Unit!138227)

(assert (=> b!4767080 (= lt!1929887 (addForallContainsKeyThenBeforeAdding!906 (extractMap!2145 (t!361030 (toList!6290 lt!1929547))) lt!1929906 (_1!31059 (h!59897 (_2!31060 (h!59898 (toList!6290 lt!1929547))))) (_2!31059 (h!59897 (_2!31060 (h!59898 (toList!6290 lt!1929547)))))))))

(declare-fun call!334223 () Bool)

(assert (=> b!4767080 call!334223))

(declare-fun lt!1929902 () Unit!138227)

(assert (=> b!4767080 (= lt!1929902 lt!1929887)))

(assert (=> b!4767080 (forall!11876 (toList!6289 (extractMap!2145 (t!361030 (toList!6290 lt!1929547)))) lambda!224442)))

(declare-fun lt!1929890 () Unit!138227)

(declare-fun Unit!138250 () Unit!138227)

(assert (=> b!4767080 (= lt!1929890 Unit!138250)))

(declare-fun res!2021816 () Bool)

(assert (=> b!4767080 (= res!2021816 (forall!11876 (_2!31060 (h!59898 (toList!6290 lt!1929547))) lambda!224442))))

(assert (=> b!4767080 (=> (not res!2021816) (not e!2975481))))

(assert (=> b!4767080 e!2975481))

(declare-fun lt!1929889 () Unit!138227)

(declare-fun Unit!138251 () Unit!138227)

(assert (=> b!4767080 (= lt!1929889 Unit!138251)))

(declare-fun c!813159 () Bool)

(declare-fun bm!334218 () Bool)

(assert (=> bm!334218 (= call!334222 (forall!11876 (ite c!813159 (toList!6289 (extractMap!2145 (t!361030 (toList!6290 lt!1929547)))) (toList!6289 lt!1929905)) (ite c!813159 lambda!224440 lambda!224442)))))

(assert (=> d!1523753 e!2975479))

(declare-fun res!2021815 () Bool)

(assert (=> d!1523753 (=> (not res!2021815) (not e!2975479))))

(assert (=> d!1523753 (= res!2021815 (forall!11876 (_2!31060 (h!59898 (toList!6290 lt!1929547))) lambda!224443))))

(assert (=> d!1523753 (= lt!1929903 e!2975480)))

(assert (=> d!1523753 (= c!813159 ((_ is Nil!53485) (_2!31060 (h!59898 (toList!6290 lt!1929547)))))))

(assert (=> d!1523753 (noDuplicateKeys!2253 (_2!31060 (h!59898 (toList!6290 lt!1929547))))))

(assert (=> d!1523753 (= (addToMapMapFromBucket!1625 (_2!31060 (h!59898 (toList!6290 lt!1929547))) (extractMap!2145 (t!361030 (toList!6290 lt!1929547)))) lt!1929903)))

(declare-fun b!4767079 () Bool)

(assert (=> b!4767079 (= e!2975479 (invariantList!1660 (toList!6289 lt!1929903)))))

(assert (=> b!4767081 (= e!2975480 (extractMap!2145 (t!361030 (toList!6290 lt!1929547))))))

(declare-fun lt!1929891 () Unit!138227)

(assert (=> b!4767081 (= lt!1929891 call!334224)))

(assert (=> b!4767081 call!334222))

(declare-fun lt!1929900 () Unit!138227)

(assert (=> b!4767081 (= lt!1929900 lt!1929891)))

(assert (=> b!4767081 call!334223))

(declare-fun lt!1929907 () Unit!138227)

(declare-fun Unit!138252 () Unit!138227)

(assert (=> b!4767081 (= lt!1929907 Unit!138252)))

(declare-fun bm!334219 () Bool)

(assert (=> bm!334219 (= call!334223 (forall!11876 (toList!6289 (extractMap!2145 (t!361030 (toList!6290 lt!1929547)))) (ite c!813159 lambda!224440 lambda!224442)))))

(assert (= (and d!1523753 c!813159) b!4767081))

(assert (= (and d!1523753 (not c!813159)) b!4767080))

(assert (= (and b!4767080 res!2021816) b!4767078))

(assert (= (or b!4767081 b!4767080) bm!334218))

(assert (= (or b!4767081 b!4767080) bm!334219))

(assert (= (or b!4767081 b!4767080) bm!334217))

(assert (= (and d!1523753 res!2021815) b!4767077))

(assert (= (and b!4767077 res!2021814) b!4767079))

(assert (=> bm!334217 m!5737836))

(declare-fun m!5738032 () Bool)

(assert (=> bm!334217 m!5738032))

(declare-fun m!5738034 () Bool)

(assert (=> bm!334218 m!5738034))

(declare-fun m!5738036 () Bool)

(assert (=> b!4767077 m!5738036))

(declare-fun m!5738038 () Bool)

(assert (=> bm!334219 m!5738038))

(declare-fun m!5738040 () Bool)

(assert (=> d!1523753 m!5738040))

(declare-fun m!5738042 () Bool)

(assert (=> d!1523753 m!5738042))

(declare-fun m!5738044 () Bool)

(assert (=> b!4767080 m!5738044))

(assert (=> b!4767080 m!5737836))

(declare-fun m!5738046 () Bool)

(assert (=> b!4767080 m!5738046))

(declare-fun m!5738048 () Bool)

(assert (=> b!4767080 m!5738048))

(declare-fun m!5738050 () Bool)

(assert (=> b!4767080 m!5738050))

(declare-fun m!5738052 () Bool)

(assert (=> b!4767080 m!5738052))

(declare-fun m!5738054 () Bool)

(assert (=> b!4767080 m!5738054))

(declare-fun m!5738056 () Bool)

(assert (=> b!4767080 m!5738056))

(declare-fun m!5738058 () Bool)

(assert (=> b!4767080 m!5738058))

(declare-fun m!5738060 () Bool)

(assert (=> b!4767080 m!5738060))

(assert (=> b!4767080 m!5738058))

(assert (=> b!4767080 m!5738046))

(declare-fun m!5738062 () Bool)

(assert (=> b!4767080 m!5738062))

(assert (=> b!4767080 m!5737836))

(declare-fun m!5738064 () Bool)

(assert (=> b!4767080 m!5738064))

(assert (=> b!4767078 m!5738044))

(declare-fun m!5738066 () Bool)

(assert (=> b!4767079 m!5738066))

(assert (=> b!4766889 d!1523753))

(declare-fun bs!1148943 () Bool)

(declare-fun d!1523755 () Bool)

(assert (= bs!1148943 (and d!1523755 b!4766846)))

(declare-fun lambda!224444 () Int)

(assert (=> bs!1148943 (= lambda!224444 lambda!224399)))

(declare-fun bs!1148944 () Bool)

(assert (= bs!1148944 (and d!1523755 d!1523671)))

(assert (=> bs!1148944 (= lambda!224444 lambda!224405)))

(declare-fun bs!1148945 () Bool)

(assert (= bs!1148945 (and d!1523755 d!1523739)))

(assert (=> bs!1148945 (= lambda!224444 lambda!224411)))

(declare-fun bs!1148946 () Bool)

(assert (= bs!1148946 (and d!1523755 d!1523643)))

(assert (=> bs!1148946 (= lambda!224444 lambda!224393)))

(declare-fun bs!1148947 () Bool)

(assert (= bs!1148947 (and d!1523755 d!1523629)))

(assert (=> bs!1148947 (= lambda!224444 lambda!224386)))

(declare-fun bs!1148948 () Bool)

(assert (= bs!1148948 (and d!1523755 b!4766873)))

(assert (=> bs!1148948 (= lambda!224444 lambda!224402)))

(declare-fun bs!1148949 () Bool)

(assert (= bs!1148949 (and d!1523755 d!1523645)))

(assert (=> bs!1148949 (= lambda!224444 lambda!224396)))

(declare-fun bs!1148950 () Bool)

(assert (= bs!1148950 (and d!1523755 d!1523683)))

(assert (=> bs!1148950 (not (= lambda!224444 lambda!224408))))

(declare-fun bs!1148951 () Bool)

(assert (= bs!1148951 (and d!1523755 b!4766698)))

(assert (=> bs!1148951 (= lambda!224444 lambda!224373)))

(declare-fun lt!1929908 () ListMap!5785)

(assert (=> d!1523755 (invariantList!1660 (toList!6289 lt!1929908))))

(declare-fun e!2975482 () ListMap!5785)

(assert (=> d!1523755 (= lt!1929908 e!2975482)))

(declare-fun c!813160 () Bool)

(assert (=> d!1523755 (= c!813160 ((_ is Cons!53486) (t!361030 (toList!6290 lt!1929547))))))

(assert (=> d!1523755 (forall!11875 (t!361030 (toList!6290 lt!1929547)) lambda!224444)))

(assert (=> d!1523755 (= (extractMap!2145 (t!361030 (toList!6290 lt!1929547))) lt!1929908)))

(declare-fun b!4767084 () Bool)

(assert (=> b!4767084 (= e!2975482 (addToMapMapFromBucket!1625 (_2!31060 (h!59898 (t!361030 (toList!6290 lt!1929547)))) (extractMap!2145 (t!361030 (t!361030 (toList!6290 lt!1929547))))))))

(declare-fun b!4767085 () Bool)

(assert (=> b!4767085 (= e!2975482 (ListMap!5786 Nil!53485))))

(assert (= (and d!1523755 c!813160) b!4767084))

(assert (= (and d!1523755 (not c!813160)) b!4767085))

(declare-fun m!5738068 () Bool)

(assert (=> d!1523755 m!5738068))

(declare-fun m!5738070 () Bool)

(assert (=> d!1523755 m!5738070))

(declare-fun m!5738072 () Bool)

(assert (=> b!4767084 m!5738072))

(assert (=> b!4767084 m!5738072))

(declare-fun m!5738074 () Bool)

(assert (=> b!4767084 m!5738074))

(assert (=> b!4766889 d!1523755))

(declare-fun b!4767086 () Bool)

(declare-fun e!2975483 () Option!12673)

(assert (=> b!4767086 (= e!2975483 (Some!12672 (h!59897 (t!361029 lt!1929544))))))

(declare-fun b!4767087 () Bool)

(declare-fun res!2021817 () Bool)

(declare-fun e!2975487 () Bool)

(assert (=> b!4767087 (=> (not res!2021817) (not e!2975487))))

(declare-fun lt!1929909 () Option!12673)

(assert (=> b!4767087 (= res!2021817 (= (_1!31059 (get!18033 lt!1929909)) key!1776))))

(declare-fun d!1523757 () Bool)

(declare-fun e!2975486 () Bool)

(assert (=> d!1523757 e!2975486))

(declare-fun res!2021818 () Bool)

(assert (=> d!1523757 (=> res!2021818 e!2975486)))

(declare-fun e!2975485 () Bool)

(assert (=> d!1523757 (= res!2021818 e!2975485)))

(declare-fun res!2021820 () Bool)

(assert (=> d!1523757 (=> (not res!2021820) (not e!2975485))))

(assert (=> d!1523757 (= res!2021820 (isEmpty!29278 lt!1929909))))

(assert (=> d!1523757 (= lt!1929909 e!2975483)))

(declare-fun c!813161 () Bool)

(assert (=> d!1523757 (= c!813161 (and ((_ is Cons!53485) (t!361029 lt!1929544)) (= (_1!31059 (h!59897 (t!361029 lt!1929544))) key!1776)))))

(assert (=> d!1523757 (noDuplicateKeys!2253 (t!361029 lt!1929544))))

(assert (=> d!1523757 (= (getPair!645 (t!361029 lt!1929544) key!1776) lt!1929909)))

(declare-fun b!4767088 () Bool)

(declare-fun e!2975484 () Option!12673)

(assert (=> b!4767088 (= e!2975484 None!12672)))

(declare-fun b!4767089 () Bool)

(assert (=> b!4767089 (= e!2975483 e!2975484)))

(declare-fun c!813162 () Bool)

(assert (=> b!4767089 (= c!813162 ((_ is Cons!53485) (t!361029 lt!1929544)))))

(declare-fun b!4767090 () Bool)

(assert (=> b!4767090 (= e!2975485 (not (containsKey!3663 (t!361029 lt!1929544) key!1776)))))

(declare-fun b!4767091 () Bool)

(assert (=> b!4767091 (= e!2975487 (contains!16835 (t!361029 lt!1929544) (get!18033 lt!1929909)))))

(declare-fun b!4767092 () Bool)

(assert (=> b!4767092 (= e!2975486 e!2975487)))

(declare-fun res!2021819 () Bool)

(assert (=> b!4767092 (=> (not res!2021819) (not e!2975487))))

(assert (=> b!4767092 (= res!2021819 (isDefined!9838 lt!1929909))))

(declare-fun b!4767093 () Bool)

(assert (=> b!4767093 (= e!2975484 (getPair!645 (t!361029 (t!361029 lt!1929544)) key!1776))))

(assert (= (and d!1523757 c!813161) b!4767086))

(assert (= (and d!1523757 (not c!813161)) b!4767089))

(assert (= (and b!4767089 c!813162) b!4767093))

(assert (= (and b!4767089 (not c!813162)) b!4767088))

(assert (= (and d!1523757 res!2021820) b!4767090))

(assert (= (and d!1523757 (not res!2021818)) b!4767092))

(assert (= (and b!4767092 res!2021819) b!4767087))

(assert (= (and b!4767087 res!2021817) b!4767091))

(declare-fun m!5738076 () Bool)

(assert (=> b!4767093 m!5738076))

(declare-fun m!5738078 () Bool)

(assert (=> b!4767091 m!5738078))

(assert (=> b!4767091 m!5738078))

(declare-fun m!5738080 () Bool)

(assert (=> b!4767091 m!5738080))

(assert (=> b!4767087 m!5738078))

(declare-fun m!5738082 () Bool)

(assert (=> b!4767090 m!5738082))

(declare-fun m!5738084 () Bool)

(assert (=> b!4767092 m!5738084))

(declare-fun m!5738086 () Bool)

(assert (=> d!1523757 m!5738086))

(declare-fun m!5738088 () Bool)

(assert (=> d!1523757 m!5738088))

(assert (=> b!4766801 d!1523757))

(declare-fun b!4767094 () Bool)

(declare-fun e!2975488 () Option!12673)

(assert (=> b!4767094 (= e!2975488 (Some!12672 (h!59897 call!334196)))))

(declare-fun b!4767095 () Bool)

(declare-fun res!2021821 () Bool)

(declare-fun e!2975492 () Bool)

(assert (=> b!4767095 (=> (not res!2021821) (not e!2975492))))

(declare-fun lt!1929910 () Option!12673)

(assert (=> b!4767095 (= res!2021821 (= (_1!31059 (get!18033 lt!1929910)) key!1776))))

(declare-fun d!1523759 () Bool)

(declare-fun e!2975491 () Bool)

(assert (=> d!1523759 e!2975491))

(declare-fun res!2021822 () Bool)

(assert (=> d!1523759 (=> res!2021822 e!2975491)))

(declare-fun e!2975490 () Bool)

(assert (=> d!1523759 (= res!2021822 e!2975490)))

(declare-fun res!2021824 () Bool)

(assert (=> d!1523759 (=> (not res!2021824) (not e!2975490))))

(assert (=> d!1523759 (= res!2021824 (isEmpty!29278 lt!1929910))))

(assert (=> d!1523759 (= lt!1929910 e!2975488)))

(declare-fun c!813163 () Bool)

(assert (=> d!1523759 (= c!813163 (and ((_ is Cons!53485) call!334196) (= (_1!31059 (h!59897 call!334196)) key!1776)))))

(assert (=> d!1523759 (noDuplicateKeys!2253 call!334196)))

(assert (=> d!1523759 (= (getPair!645 call!334196 key!1776) lt!1929910)))

(declare-fun b!4767096 () Bool)

(declare-fun e!2975489 () Option!12673)

(assert (=> b!4767096 (= e!2975489 None!12672)))

(declare-fun b!4767097 () Bool)

(assert (=> b!4767097 (= e!2975488 e!2975489)))

(declare-fun c!813164 () Bool)

(assert (=> b!4767097 (= c!813164 ((_ is Cons!53485) call!334196))))

(declare-fun b!4767098 () Bool)

(assert (=> b!4767098 (= e!2975490 (not (containsKey!3663 call!334196 key!1776)))))

(declare-fun b!4767099 () Bool)

(assert (=> b!4767099 (= e!2975492 (contains!16835 call!334196 (get!18033 lt!1929910)))))

(declare-fun b!4767100 () Bool)

(assert (=> b!4767100 (= e!2975491 e!2975492)))

(declare-fun res!2021823 () Bool)

(assert (=> b!4767100 (=> (not res!2021823) (not e!2975492))))

(assert (=> b!4767100 (= res!2021823 (isDefined!9838 lt!1929910))))

(declare-fun b!4767101 () Bool)

(assert (=> b!4767101 (= e!2975489 (getPair!645 (t!361029 call!334196) key!1776))))

(assert (= (and d!1523759 c!813163) b!4767094))

(assert (= (and d!1523759 (not c!813163)) b!4767097))

(assert (= (and b!4767097 c!813164) b!4767101))

(assert (= (and b!4767097 (not c!813164)) b!4767096))

(assert (= (and d!1523759 res!2021824) b!4767098))

(assert (= (and d!1523759 (not res!2021822)) b!4767100))

(assert (= (and b!4767100 res!2021823) b!4767095))

(assert (= (and b!4767095 res!2021821) b!4767099))

(declare-fun m!5738090 () Bool)

(assert (=> b!4767101 m!5738090))

(declare-fun m!5738092 () Bool)

(assert (=> b!4767099 m!5738092))

(assert (=> b!4767099 m!5738092))

(declare-fun m!5738094 () Bool)

(assert (=> b!4767099 m!5738094))

(assert (=> b!4767095 m!5738092))

(declare-fun m!5738096 () Bool)

(assert (=> b!4767098 m!5738096))

(declare-fun m!5738098 () Bool)

(assert (=> b!4767100 m!5738098))

(declare-fun m!5738100 () Bool)

(assert (=> d!1523759 m!5738100))

(declare-fun m!5738102 () Bool)

(assert (=> d!1523759 m!5738102))

(assert (=> bm!334191 d!1523759))

(assert (=> b!4766811 d!1523651))

(assert (=> b!4766811 d!1523653))

(declare-fun d!1523761 () Bool)

(declare-fun res!2021829 () Bool)

(declare-fun e!2975497 () Bool)

(assert (=> d!1523761 (=> res!2021829 e!2975497)))

(assert (=> d!1523761 (= res!2021829 (and ((_ is Cons!53486) (toList!6290 lt!1929547)) (= (_1!31060 (h!59898 (toList!6290 lt!1929547))) lt!1929541)))))

(assert (=> d!1523761 (= (containsKey!3664 (toList!6290 lt!1929547) lt!1929541) e!2975497)))

(declare-fun b!4767106 () Bool)

(declare-fun e!2975498 () Bool)

(assert (=> b!4767106 (= e!2975497 e!2975498)))

(declare-fun res!2021830 () Bool)

(assert (=> b!4767106 (=> (not res!2021830) (not e!2975498))))

(assert (=> b!4767106 (= res!2021830 (and (or (not ((_ is Cons!53486) (toList!6290 lt!1929547))) (bvsle (_1!31060 (h!59898 (toList!6290 lt!1929547))) lt!1929541)) ((_ is Cons!53486) (toList!6290 lt!1929547)) (bvslt (_1!31060 (h!59898 (toList!6290 lt!1929547))) lt!1929541)))))

(declare-fun b!4767107 () Bool)

(assert (=> b!4767107 (= e!2975498 (containsKey!3664 (t!361030 (toList!6290 lt!1929547)) lt!1929541))))

(assert (= (and d!1523761 (not res!2021829)) b!4767106))

(assert (= (and b!4767106 res!2021830) b!4767107))

(declare-fun m!5738104 () Bool)

(assert (=> b!4767107 m!5738104))

(assert (=> b!4766826 d!1523761))

(declare-fun d!1523763 () Bool)

(declare-fun lt!1929911 () Bool)

(assert (=> d!1523763 (= lt!1929911 (select (content!9586 (t!361030 (toList!6290 lt!1929547))) lt!1929543))))

(declare-fun e!2975499 () Bool)

(assert (=> d!1523763 (= lt!1929911 e!2975499)))

(declare-fun res!2021832 () Bool)

(assert (=> d!1523763 (=> (not res!2021832) (not e!2975499))))

(assert (=> d!1523763 (= res!2021832 ((_ is Cons!53486) (t!361030 (toList!6290 lt!1929547))))))

(assert (=> d!1523763 (= (contains!16830 (t!361030 (toList!6290 lt!1929547)) lt!1929543) lt!1929911)))

(declare-fun b!4767108 () Bool)

(declare-fun e!2975500 () Bool)

(assert (=> b!4767108 (= e!2975499 e!2975500)))

(declare-fun res!2021831 () Bool)

(assert (=> b!4767108 (=> res!2021831 e!2975500)))

(assert (=> b!4767108 (= res!2021831 (= (h!59898 (t!361030 (toList!6290 lt!1929547))) lt!1929543))))

(declare-fun b!4767109 () Bool)

(assert (=> b!4767109 (= e!2975500 (contains!16830 (t!361030 (t!361030 (toList!6290 lt!1929547))) lt!1929543))))

(assert (= (and d!1523763 res!2021832) b!4767108))

(assert (= (and b!4767108 (not res!2021831)) b!4767109))

(assert (=> d!1523763 m!5737972))

(declare-fun m!5738106 () Bool)

(assert (=> d!1523763 m!5738106))

(declare-fun m!5738108 () Bool)

(assert (=> b!4767109 m!5738108))

(assert (=> b!4766721 d!1523763))

(declare-fun d!1523765 () Bool)

(declare-fun res!2021833 () Bool)

(declare-fun e!2975501 () Bool)

(assert (=> d!1523765 (=> res!2021833 e!2975501)))

(assert (=> d!1523765 (= res!2021833 ((_ is Nil!53486) (toList!6290 lt!1929547)))))

(assert (=> d!1523765 (= (forall!11875 (toList!6290 lt!1929547) lambda!224386) e!2975501)))

(declare-fun b!4767110 () Bool)

(declare-fun e!2975502 () Bool)

(assert (=> b!4767110 (= e!2975501 e!2975502)))

(declare-fun res!2021834 () Bool)

(assert (=> b!4767110 (=> (not res!2021834) (not e!2975502))))

(assert (=> b!4767110 (= res!2021834 (dynLambda!21951 lambda!224386 (h!59898 (toList!6290 lt!1929547))))))

(declare-fun b!4767111 () Bool)

(assert (=> b!4767111 (= e!2975502 (forall!11875 (t!361030 (toList!6290 lt!1929547)) lambda!224386))))

(assert (= (and d!1523765 (not res!2021833)) b!4767110))

(assert (= (and b!4767110 res!2021834) b!4767111))

(declare-fun b_lambda!184373 () Bool)

(assert (=> (not b_lambda!184373) (not b!4767110)))

(declare-fun m!5738110 () Bool)

(assert (=> b!4767110 m!5738110))

(declare-fun m!5738112 () Bool)

(assert (=> b!4767111 m!5738112))

(assert (=> d!1523629 d!1523765))

(declare-fun bs!1148952 () Bool)

(declare-fun d!1523767 () Bool)

(assert (= bs!1148952 (and d!1523767 b!4766846)))

(declare-fun lambda!224449 () Int)

(assert (=> bs!1148952 (= lambda!224449 lambda!224399)))

(declare-fun bs!1148953 () Bool)

(assert (= bs!1148953 (and d!1523767 d!1523671)))

(assert (=> bs!1148953 (= lambda!224449 lambda!224405)))

(declare-fun bs!1148954 () Bool)

(assert (= bs!1148954 (and d!1523767 d!1523755)))

(assert (=> bs!1148954 (= lambda!224449 lambda!224444)))

(declare-fun bs!1148955 () Bool)

(assert (= bs!1148955 (and d!1523767 d!1523739)))

(assert (=> bs!1148955 (= lambda!224449 lambda!224411)))

(declare-fun bs!1148956 () Bool)

(assert (= bs!1148956 (and d!1523767 d!1523643)))

(assert (=> bs!1148956 (= lambda!224449 lambda!224393)))

(declare-fun bs!1148957 () Bool)

(assert (= bs!1148957 (and d!1523767 d!1523629)))

(assert (=> bs!1148957 (= lambda!224449 lambda!224386)))

(declare-fun bs!1148958 () Bool)

(assert (= bs!1148958 (and d!1523767 b!4766873)))

(assert (=> bs!1148958 (= lambda!224449 lambda!224402)))

(declare-fun bs!1148959 () Bool)

(assert (= bs!1148959 (and d!1523767 d!1523645)))

(assert (=> bs!1148959 (= lambda!224449 lambda!224396)))

(declare-fun bs!1148960 () Bool)

(assert (= bs!1148960 (and d!1523767 d!1523683)))

(assert (=> bs!1148960 (not (= lambda!224449 lambda!224408))))

(declare-fun bs!1148961 () Bool)

(assert (= bs!1148961 (and d!1523767 b!4766698)))

(assert (=> bs!1148961 (= lambda!224449 lambda!224373)))

(assert (=> d!1523767 (= (_2!31059 (get!18033 (getPair!645 (apply!12626 lt!1929547 (hash!4569 (hashF!12431 thiss!42052) key!1776)) key!1776))) (get!18034 (getValueByKey!2179 (toList!6289 (extractMap!2145 (toList!6290 lt!1929547))) key!1776)))))

(declare-fun lt!1929955 () Unit!138227)

(declare-fun lt!1929957 () Unit!138227)

(assert (=> d!1523767 (= lt!1929955 lt!1929957)))

(assert (=> d!1523767 (isDefined!9838 (getPair!645 (apply!12626 lt!1929547 (hash!4569 (hashF!12431 thiss!42052) key!1776)) key!1776))))

(declare-fun lt!1929952 () Unit!138227)

(assert (=> d!1523767 (= lt!1929952 (forallContained!3861 (toList!6290 lt!1929547) lambda!224449 (tuple2!55533 (hash!4569 (hashF!12431 thiss!42052) key!1776) (apply!12626 lt!1929547 (hash!4569 (hashF!12431 thiss!42052) key!1776)))))))

(declare-fun lt!1929950 () Unit!138227)

(declare-fun lt!1929949 () Unit!138227)

(assert (=> d!1523767 (= lt!1929950 lt!1929949)))

(declare-fun lt!1929946 () (_ BitVec 64))

(declare-fun lt!1929956 () List!53609)

(assert (=> d!1523767 (contains!16830 (toList!6290 lt!1929547) (tuple2!55533 lt!1929946 lt!1929956))))

(assert (=> d!1523767 (= lt!1929949 (lemmaGetValueImpliesTupleContained!437 lt!1929547 lt!1929946 lt!1929956))))

(assert (=> d!1523767 (= lt!1929956 (apply!12626 lt!1929547 (hash!4569 (hashF!12431 thiss!42052) key!1776)))))

(assert (=> d!1523767 (= lt!1929946 (hash!4569 (hashF!12431 thiss!42052) key!1776))))

(declare-fun lt!1929945 () Unit!138227)

(declare-fun lt!1929948 () Unit!138227)

(assert (=> d!1523767 (= lt!1929945 lt!1929948)))

(assert (=> d!1523767 (contains!16831 lt!1929547 (hash!4569 (hashF!12431 thiss!42052) key!1776))))

(assert (=> d!1523767 (= lt!1929948 (lemmaInGenMapThenLongMapContainsHash!838 lt!1929547 key!1776 (hashF!12431 thiss!42052)))))

(assert (=> d!1523767 (= lt!1929957 (lemmaInGenMapThenGetPairDefined!428 lt!1929547 key!1776 (hashF!12431 thiss!42052)))))

(declare-fun lt!1929944 () Unit!138227)

(assert (=> d!1523767 (= lt!1929944 (forallContained!3861 (toList!6290 lt!1929547) lambda!224449 (tuple2!55533 (hash!4569 (hashF!12431 thiss!42052) key!1776) (apply!12626 lt!1929547 (hash!4569 (hashF!12431 thiss!42052) key!1776)))))))

(declare-fun lt!1929953 () Unit!138227)

(declare-fun lt!1929959 () Unit!138227)

(assert (=> d!1523767 (= lt!1929953 lt!1929959)))

(declare-fun lt!1929947 () (_ BitVec 64))

(declare-fun lt!1929958 () List!53609)

(assert (=> d!1523767 (contains!16830 (toList!6290 lt!1929547) (tuple2!55533 lt!1929947 lt!1929958))))

(assert (=> d!1523767 (= lt!1929959 (lemmaGetValueImpliesTupleContained!437 lt!1929547 lt!1929947 lt!1929958))))

(assert (=> d!1523767 (= lt!1929958 (apply!12626 lt!1929547 (hash!4569 (hashF!12431 thiss!42052) key!1776)))))

(assert (=> d!1523767 (= lt!1929947 (hash!4569 (hashF!12431 thiss!42052) key!1776))))

(declare-fun lt!1929951 () Unit!138227)

(declare-fun lt!1929954 () Unit!138227)

(assert (=> d!1523767 (= lt!1929951 lt!1929954)))

(assert (=> d!1523767 (contains!16831 lt!1929547 (hash!4569 (hashF!12431 thiss!42052) key!1776))))

(assert (=> d!1523767 (= lt!1929954 (lemmaInGenMapThenLongMapContainsHash!838 lt!1929547 key!1776 (hashF!12431 thiss!42052)))))

(assert (=> d!1523767 true))

(declare-fun _$7!2303 () Unit!138227)

(assert (=> d!1523767 (= (choose!33965 lt!1929547 key!1776 (_2!31059 (get!18033 (getPair!645 lt!1929544 key!1776))) (hashF!12431 thiss!42052)) _$7!2303)))

(declare-fun bs!1148962 () Bool)

(assert (= bs!1148962 d!1523767))

(assert (=> bs!1148962 m!5737684))

(assert (=> bs!1148962 m!5737690))

(declare-fun m!5738114 () Bool)

(assert (=> bs!1148962 m!5738114))

(assert (=> bs!1148962 m!5737582))

(assert (=> bs!1148962 m!5737580))

(declare-fun m!5738116 () Bool)

(assert (=> bs!1148962 m!5738116))

(assert (=> bs!1148962 m!5737582))

(assert (=> bs!1148962 m!5737584))

(assert (=> bs!1148962 m!5737690))

(assert (=> bs!1148962 m!5737708))

(assert (=> bs!1148962 m!5737598))

(assert (=> bs!1148962 m!5737622))

(assert (=> bs!1148962 m!5737688))

(assert (=> bs!1148962 m!5737690))

(assert (=> bs!1148962 m!5737694))

(declare-fun m!5738118 () Bool)

(assert (=> bs!1148962 m!5738118))

(assert (=> bs!1148962 m!5738114))

(assert (=> bs!1148962 m!5737622))

(assert (=> bs!1148962 m!5737590))

(declare-fun m!5738120 () Bool)

(assert (=> bs!1148962 m!5738120))

(assert (=> bs!1148962 m!5737622))

(assert (=> bs!1148962 m!5737684))

(declare-fun m!5738122 () Bool)

(assert (=> bs!1148962 m!5738122))

(assert (=> d!1523629 d!1523767))

(assert (=> b!4766767 d!1523683))

(declare-fun d!1523769 () Bool)

(assert (=> d!1523769 (= (isDefined!9838 (getPair!645 (apply!12627 (v!47657 (underlying!10062 thiss!42052)) lt!1929722) key!1776)) (not (isEmpty!29278 (getPair!645 (apply!12627 (v!47657 (underlying!10062 thiss!42052)) lt!1929722) key!1776))))))

(declare-fun bs!1148963 () Bool)

(assert (= bs!1148963 d!1523769))

(assert (=> bs!1148963 m!5737788))

(declare-fun m!5738124 () Bool)

(assert (=> bs!1148963 m!5738124))

(assert (=> b!4766877 d!1523769))

(declare-fun b!4767112 () Bool)

(declare-fun e!2975503 () Option!12673)

(assert (=> b!4767112 (= e!2975503 (Some!12672 (h!59897 (apply!12627 (v!47657 (underlying!10062 thiss!42052)) lt!1929722))))))

(declare-fun b!4767113 () Bool)

(declare-fun res!2021835 () Bool)

(declare-fun e!2975507 () Bool)

(assert (=> b!4767113 (=> (not res!2021835) (not e!2975507))))

(declare-fun lt!1929960 () Option!12673)

(assert (=> b!4767113 (= res!2021835 (= (_1!31059 (get!18033 lt!1929960)) key!1776))))

(declare-fun d!1523771 () Bool)

(declare-fun e!2975506 () Bool)

(assert (=> d!1523771 e!2975506))

(declare-fun res!2021836 () Bool)

(assert (=> d!1523771 (=> res!2021836 e!2975506)))

(declare-fun e!2975505 () Bool)

(assert (=> d!1523771 (= res!2021836 e!2975505)))

(declare-fun res!2021838 () Bool)

(assert (=> d!1523771 (=> (not res!2021838) (not e!2975505))))

(assert (=> d!1523771 (= res!2021838 (isEmpty!29278 lt!1929960))))

(assert (=> d!1523771 (= lt!1929960 e!2975503)))

(declare-fun c!813165 () Bool)

(assert (=> d!1523771 (= c!813165 (and ((_ is Cons!53485) (apply!12627 (v!47657 (underlying!10062 thiss!42052)) lt!1929722)) (= (_1!31059 (h!59897 (apply!12627 (v!47657 (underlying!10062 thiss!42052)) lt!1929722))) key!1776)))))

(assert (=> d!1523771 (noDuplicateKeys!2253 (apply!12627 (v!47657 (underlying!10062 thiss!42052)) lt!1929722))))

(assert (=> d!1523771 (= (getPair!645 (apply!12627 (v!47657 (underlying!10062 thiss!42052)) lt!1929722) key!1776) lt!1929960)))

(declare-fun b!4767114 () Bool)

(declare-fun e!2975504 () Option!12673)

(assert (=> b!4767114 (= e!2975504 None!12672)))

(declare-fun b!4767115 () Bool)

(assert (=> b!4767115 (= e!2975503 e!2975504)))

(declare-fun c!813166 () Bool)

(assert (=> b!4767115 (= c!813166 ((_ is Cons!53485) (apply!12627 (v!47657 (underlying!10062 thiss!42052)) lt!1929722)))))

(declare-fun b!4767116 () Bool)

(assert (=> b!4767116 (= e!2975505 (not (containsKey!3663 (apply!12627 (v!47657 (underlying!10062 thiss!42052)) lt!1929722) key!1776)))))

(declare-fun b!4767117 () Bool)

(assert (=> b!4767117 (= e!2975507 (contains!16835 (apply!12627 (v!47657 (underlying!10062 thiss!42052)) lt!1929722) (get!18033 lt!1929960)))))

(declare-fun b!4767118 () Bool)

(assert (=> b!4767118 (= e!2975506 e!2975507)))

(declare-fun res!2021837 () Bool)

(assert (=> b!4767118 (=> (not res!2021837) (not e!2975507))))

(assert (=> b!4767118 (= res!2021837 (isDefined!9838 lt!1929960))))

(declare-fun b!4767119 () Bool)

(assert (=> b!4767119 (= e!2975504 (getPair!645 (t!361029 (apply!12627 (v!47657 (underlying!10062 thiss!42052)) lt!1929722)) key!1776))))

(assert (= (and d!1523771 c!813165) b!4767112))

(assert (= (and d!1523771 (not c!813165)) b!4767115))

(assert (= (and b!4767115 c!813166) b!4767119))

(assert (= (and b!4767115 (not c!813166)) b!4767114))

(assert (= (and d!1523771 res!2021838) b!4767116))

(assert (= (and d!1523771 (not res!2021836)) b!4767118))

(assert (= (and b!4767118 res!2021837) b!4767113))

(assert (= (and b!4767113 res!2021835) b!4767117))

(declare-fun m!5738126 () Bool)

(assert (=> b!4767119 m!5738126))

(declare-fun m!5738128 () Bool)

(assert (=> b!4767117 m!5738128))

(assert (=> b!4767117 m!5737786))

(assert (=> b!4767117 m!5738128))

(declare-fun m!5738130 () Bool)

(assert (=> b!4767117 m!5738130))

(assert (=> b!4767113 m!5738128))

(assert (=> b!4767116 m!5737786))

(declare-fun m!5738132 () Bool)

(assert (=> b!4767116 m!5738132))

(declare-fun m!5738134 () Bool)

(assert (=> b!4767118 m!5738134))

(declare-fun m!5738136 () Bool)

(assert (=> d!1523771 m!5738136))

(assert (=> d!1523771 m!5737786))

(declare-fun m!5738138 () Bool)

(assert (=> d!1523771 m!5738138))

(assert (=> b!4766877 d!1523771))

(declare-fun d!1523773 () Bool)

(declare-fun e!2975508 () Bool)

(assert (=> d!1523773 e!2975508))

(declare-fun c!813167 () Bool)

(assert (=> d!1523773 (= c!813167 (contains!16833 (v!47657 (underlying!10062 thiss!42052)) lt!1929722))))

(declare-fun lt!1929961 () List!53609)

(assert (=> d!1523773 (= lt!1929961 (apply!12628 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052)))) lt!1929722))))

(assert (=> d!1523773 (valid!3928 (v!47657 (underlying!10062 thiss!42052)))))

(assert (=> d!1523773 (= (apply!12627 (v!47657 (underlying!10062 thiss!42052)) lt!1929722) lt!1929961)))

(declare-fun b!4767120 () Bool)

(assert (=> b!4767120 (= e!2975508 (= lt!1929961 (get!18035 (getValueByKey!2180 (toList!6290 (map!11986 (v!47657 (underlying!10062 thiss!42052)))) lt!1929722))))))

(declare-fun b!4767121 () Bool)

(assert (=> b!4767121 (= e!2975508 (= lt!1929961 (dynLambda!21950 (defaultEntry!5345 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) lt!1929722)))))

(assert (=> b!4767121 ((_ is LongMap!4927) (v!47657 (underlying!10062 thiss!42052)))))

(assert (= (and d!1523773 c!813167) b!4767120))

(assert (= (and d!1523773 (not c!813167)) b!4767121))

(declare-fun b_lambda!184375 () Bool)

(assert (=> (not b_lambda!184375) (not b!4767121)))

(declare-fun t!361034 () Bool)

(declare-fun tb!257475 () Bool)

(assert (=> (and b!4766704 (= (defaultEntry!5345 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) (defaultEntry!5345 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052)))))) t!361034) tb!257475))

(assert (=> b!4767121 t!361034))

(declare-fun result!319114 () Bool)

(declare-fun b_and!341369 () Bool)

(assert (= b_and!341367 (and (=> t!361034 result!319114) b_and!341369)))

(assert (=> d!1523773 m!5737812))

(declare-fun m!5738140 () Bool)

(assert (=> d!1523773 m!5738140))

(assert (=> d!1523773 m!5737636))

(assert (=> b!4767120 m!5737600))

(declare-fun m!5738142 () Bool)

(assert (=> b!4767120 m!5738142))

(assert (=> b!4767120 m!5738142))

(declare-fun m!5738144 () Bool)

(assert (=> b!4767120 m!5738144))

(declare-fun m!5738146 () Bool)

(assert (=> b!4767121 m!5738146))

(assert (=> b!4766877 d!1523773))

(declare-fun d!1523775 () Bool)

(assert (=> d!1523775 (= (isEmpty!29278 lt!1929625) (not ((_ is Some!12672) lt!1929625)))))

(assert (=> d!1523631 d!1523775))

(declare-fun d!1523777 () Bool)

(declare-fun res!2021839 () Bool)

(declare-fun e!2975509 () Bool)

(assert (=> d!1523777 (=> res!2021839 e!2975509)))

(assert (=> d!1523777 (= res!2021839 (not ((_ is Cons!53485) lt!1929557)))))

(assert (=> d!1523777 (= (noDuplicateKeys!2253 lt!1929557) e!2975509)))

(declare-fun b!4767122 () Bool)

(declare-fun e!2975510 () Bool)

(assert (=> b!4767122 (= e!2975509 e!2975510)))

(declare-fun res!2021840 () Bool)

(assert (=> b!4767122 (=> (not res!2021840) (not e!2975510))))

(assert (=> b!4767122 (= res!2021840 (not (containsKey!3663 (t!361029 lt!1929557) (_1!31059 (h!59897 lt!1929557)))))))

(declare-fun b!4767123 () Bool)

(assert (=> b!4767123 (= e!2975510 (noDuplicateKeys!2253 (t!361029 lt!1929557)))))

(assert (= (and d!1523777 (not res!2021839)) b!4767122))

(assert (= (and b!4767122 res!2021840) b!4767123))

(declare-fun m!5738148 () Bool)

(assert (=> b!4767122 m!5738148))

(assert (=> b!4767123 m!5737880))

(assert (=> d!1523631 d!1523777))

(declare-fun d!1523779 () Bool)

(assert (=> d!1523779 (= (isDefined!9838 lt!1929625) (not (isEmpty!29278 lt!1929625)))))

(declare-fun bs!1148964 () Bool)

(assert (= bs!1148964 d!1523779))

(assert (=> bs!1148964 m!5737720))

(assert (=> b!4766792 d!1523779))

(assert (=> b!4766765 d!1523683))

(declare-fun d!1523781 () Bool)

(assert (=> d!1523781 (dynLambda!21951 lambda!224373 lt!1929552)))

(assert (=> d!1523781 true))

(declare-fun _$7!2304 () Unit!138227)

(assert (=> d!1523781 (= (choose!33964 (toList!6290 lt!1929547) lambda!224373 lt!1929552) _$7!2304)))

(declare-fun b_lambda!184377 () Bool)

(assert (=> (not b_lambda!184377) (not d!1523781)))

(declare-fun bs!1148965 () Bool)

(assert (= bs!1148965 d!1523781))

(assert (=> bs!1148965 m!5737652))

(assert (=> d!1523615 d!1523781))

(assert (=> d!1523615 d!1523735))

(declare-fun d!1523783 () Bool)

(declare-fun e!2975512 () Bool)

(assert (=> d!1523783 e!2975512))

(declare-fun res!2021841 () Bool)

(assert (=> d!1523783 (=> res!2021841 e!2975512)))

(declare-fun lt!1929962 () Bool)

(assert (=> d!1523783 (= res!2021841 (not lt!1929962))))

(declare-fun lt!1929965 () Bool)

(assert (=> d!1523783 (= lt!1929962 lt!1929965)))

(declare-fun lt!1929963 () Unit!138227)

(declare-fun e!2975511 () Unit!138227)

(assert (=> d!1523783 (= lt!1929963 e!2975511)))

(declare-fun c!813168 () Bool)

(assert (=> d!1523783 (= c!813168 lt!1929965)))

(assert (=> d!1523783 (= lt!1929965 (containsKey!3664 (toList!6290 (ite c!813106 lt!1929726 call!334200)) call!334195))))

(assert (=> d!1523783 (= (contains!16831 (ite c!813106 lt!1929726 call!334200) call!334195) lt!1929962)))

(declare-fun b!4767124 () Bool)

(declare-fun lt!1929964 () Unit!138227)

(assert (=> b!4767124 (= e!2975511 lt!1929964)))

(assert (=> b!4767124 (= lt!1929964 (lemmaContainsKeyImpliesGetValueByKeyDefined!1986 (toList!6290 (ite c!813106 lt!1929726 call!334200)) call!334195))))

(assert (=> b!4767124 (isDefined!9839 (getValueByKey!2180 (toList!6290 (ite c!813106 lt!1929726 call!334200)) call!334195))))

(declare-fun b!4767125 () Bool)

(declare-fun Unit!138253 () Unit!138227)

(assert (=> b!4767125 (= e!2975511 Unit!138253)))

(declare-fun b!4767126 () Bool)

(assert (=> b!4767126 (= e!2975512 (isDefined!9839 (getValueByKey!2180 (toList!6290 (ite c!813106 lt!1929726 call!334200)) call!334195)))))

(assert (= (and d!1523783 c!813168) b!4767124))

(assert (= (and d!1523783 (not c!813168)) b!4767125))

(assert (= (and d!1523783 (not res!2021841)) b!4767126))

(declare-fun m!5738150 () Bool)

(assert (=> d!1523783 m!5738150))

(declare-fun m!5738152 () Bool)

(assert (=> b!4767124 m!5738152))

(assert (=> b!4767124 m!5737864))

(assert (=> b!4767124 m!5737864))

(declare-fun m!5738154 () Bool)

(assert (=> b!4767124 m!5738154))

(assert (=> b!4767126 m!5737864))

(assert (=> b!4767126 m!5737864))

(assert (=> b!4767126 m!5738154))

(assert (=> bm!334192 d!1523783))

(assert (=> d!1523641 d!1523761))

(declare-fun d!1523785 () Bool)

(declare-fun res!2021846 () Bool)

(declare-fun e!2975517 () Bool)

(assert (=> d!1523785 (=> res!2021846 e!2975517)))

(assert (=> d!1523785 (= res!2021846 (and ((_ is Cons!53485) lt!1929557) (= (_1!31059 (h!59897 lt!1929557)) key!1776)))))

(assert (=> d!1523785 (= (containsKey!3663 lt!1929557 key!1776) e!2975517)))

(declare-fun b!4767131 () Bool)

(declare-fun e!2975518 () Bool)

(assert (=> b!4767131 (= e!2975517 e!2975518)))

(declare-fun res!2021847 () Bool)

(assert (=> b!4767131 (=> (not res!2021847) (not e!2975518))))

(assert (=> b!4767131 (= res!2021847 ((_ is Cons!53485) lt!1929557))))

(declare-fun b!4767132 () Bool)

(assert (=> b!4767132 (= e!2975518 (containsKey!3663 (t!361029 lt!1929557) key!1776))))

(assert (= (and d!1523785 (not res!2021846)) b!4767131))

(assert (= (and b!4767131 res!2021847) b!4767132))

(assert (=> b!4767132 m!5737874))

(assert (=> b!4766790 d!1523785))

(assert (=> d!1523649 d!1523651))

(assert (=> d!1523649 d!1523653))

(declare-fun d!1523787 () Bool)

(assert (=> d!1523787 (isDefined!9839 (getValueByKey!2180 (toList!6290 lt!1929547) lt!1929541))))

(assert (=> d!1523787 true))

(declare-fun _$13!1618 () Unit!138227)

(assert (=> d!1523787 (= (choose!33969 (toList!6290 lt!1929547) lt!1929541) _$13!1618)))

(declare-fun bs!1148966 () Bool)

(assert (= bs!1148966 d!1523787))

(assert (=> bs!1148966 m!5737572))

(assert (=> bs!1148966 m!5737572))

(assert (=> bs!1148966 m!5737574))

(assert (=> d!1523649 d!1523787))

(assert (=> d!1523649 d!1523749))

(declare-fun b!4767133 () Bool)

(declare-fun e!2975522 () List!53611)

(assert (=> b!4767133 (= e!2975522 (getKeysList!1006 (toList!6289 (map!11985 thiss!42052))))))

(declare-fun bm!334220 () Bool)

(declare-fun call!334225 () Bool)

(assert (=> bm!334220 (= call!334225 (contains!16836 e!2975522 key!1776))))

(declare-fun c!813169 () Bool)

(declare-fun c!813171 () Bool)

(assert (=> bm!334220 (= c!813169 c!813171)))

(declare-fun b!4767135 () Bool)

(declare-fun e!2975519 () Unit!138227)

(declare-fun lt!1929970 () Unit!138227)

(assert (=> b!4767135 (= e!2975519 lt!1929970)))

(declare-fun lt!1929972 () Unit!138227)

(assert (=> b!4767135 (= lt!1929972 (lemmaContainsKeyImpliesGetValueByKeyDefined!1987 (toList!6289 (map!11985 thiss!42052)) key!1776))))

(assert (=> b!4767135 (isDefined!9837 (getValueByKey!2179 (toList!6289 (map!11985 thiss!42052)) key!1776))))

(declare-fun lt!1929967 () Unit!138227)

(assert (=> b!4767135 (= lt!1929967 lt!1929972)))

(assert (=> b!4767135 (= lt!1929970 (lemmaInListThenGetKeysListContains!1001 (toList!6289 (map!11985 thiss!42052)) key!1776))))

(assert (=> b!4767135 call!334225))

(declare-fun b!4767136 () Bool)

(assert (=> b!4767136 false))

(declare-fun lt!1929966 () Unit!138227)

(declare-fun lt!1929973 () Unit!138227)

(assert (=> b!4767136 (= lt!1929966 lt!1929973)))

(assert (=> b!4767136 (containsKey!3665 (toList!6289 (map!11985 thiss!42052)) key!1776)))

(assert (=> b!4767136 (= lt!1929973 (lemmaInGetKeysListThenContainsKey!1005 (toList!6289 (map!11985 thiss!42052)) key!1776))))

(declare-fun e!2975520 () Unit!138227)

(declare-fun Unit!138254 () Unit!138227)

(assert (=> b!4767136 (= e!2975520 Unit!138254)))

(declare-fun b!4767137 () Bool)

(assert (=> b!4767137 (= e!2975522 (keys!19388 (map!11985 thiss!42052)))))

(declare-fun b!4767138 () Bool)

(declare-fun Unit!138255 () Unit!138227)

(assert (=> b!4767138 (= e!2975520 Unit!138255)))

(declare-fun b!4767139 () Bool)

(declare-fun e!2975523 () Bool)

(assert (=> b!4767139 (= e!2975523 (not (contains!16836 (keys!19388 (map!11985 thiss!42052)) key!1776)))))

(declare-fun d!1523789 () Bool)

(declare-fun e!2975524 () Bool)

(assert (=> d!1523789 e!2975524))

(declare-fun res!2021848 () Bool)

(assert (=> d!1523789 (=> res!2021848 e!2975524)))

(assert (=> d!1523789 (= res!2021848 e!2975523)))

(declare-fun res!2021849 () Bool)

(assert (=> d!1523789 (=> (not res!2021849) (not e!2975523))))

(declare-fun lt!1929969 () Bool)

(assert (=> d!1523789 (= res!2021849 (not lt!1929969))))

(declare-fun lt!1929968 () Bool)

(assert (=> d!1523789 (= lt!1929969 lt!1929968)))

(declare-fun lt!1929971 () Unit!138227)

(assert (=> d!1523789 (= lt!1929971 e!2975519)))

(assert (=> d!1523789 (= c!813171 lt!1929968)))

(assert (=> d!1523789 (= lt!1929968 (containsKey!3665 (toList!6289 (map!11985 thiss!42052)) key!1776))))

(assert (=> d!1523789 (= (contains!16834 (map!11985 thiss!42052) key!1776) lt!1929969)))

(declare-fun b!4767134 () Bool)

(declare-fun e!2975521 () Bool)

(assert (=> b!4767134 (= e!2975524 e!2975521)))

(declare-fun res!2021850 () Bool)

(assert (=> b!4767134 (=> (not res!2021850) (not e!2975521))))

(assert (=> b!4767134 (= res!2021850 (isDefined!9837 (getValueByKey!2179 (toList!6289 (map!11985 thiss!42052)) key!1776)))))

(declare-fun b!4767140 () Bool)

(assert (=> b!4767140 (= e!2975519 e!2975520)))

(declare-fun c!813170 () Bool)

(assert (=> b!4767140 (= c!813170 call!334225)))

(declare-fun b!4767141 () Bool)

(assert (=> b!4767141 (= e!2975521 (contains!16836 (keys!19388 (map!11985 thiss!42052)) key!1776))))

(assert (= (and d!1523789 c!813171) b!4767135))

(assert (= (and d!1523789 (not c!813171)) b!4767140))

(assert (= (and b!4767140 c!813170) b!4767136))

(assert (= (and b!4767140 (not c!813170)) b!4767138))

(assert (= (or b!4767135 b!4767140) bm!334220))

(assert (= (and bm!334220 c!813169) b!4767133))

(assert (= (and bm!334220 (not c!813169)) b!4767137))

(assert (= (and d!1523789 res!2021849) b!4767139))

(assert (= (and d!1523789 (not res!2021848)) b!4767134))

(assert (= (and b!4767134 res!2021850) b!4767141))

(assert (=> b!4767134 m!5737592))

(assert (=> b!4767134 m!5737592))

(assert (=> b!4767134 m!5737594))

(assert (=> b!4767139 m!5737618))

(declare-fun m!5738156 () Bool)

(assert (=> b!4767139 m!5738156))

(assert (=> b!4767139 m!5738156))

(declare-fun m!5738158 () Bool)

(assert (=> b!4767139 m!5738158))

(declare-fun m!5738160 () Bool)

(assert (=> d!1523789 m!5738160))

(assert (=> b!4767137 m!5737618))

(assert (=> b!4767137 m!5738156))

(assert (=> b!4767136 m!5738160))

(declare-fun m!5738162 () Bool)

(assert (=> b!4767136 m!5738162))

(assert (=> b!4767141 m!5737618))

(assert (=> b!4767141 m!5738156))

(assert (=> b!4767141 m!5738156))

(assert (=> b!4767141 m!5738158))

(declare-fun m!5738164 () Bool)

(assert (=> bm!334220 m!5738164))

(declare-fun m!5738166 () Bool)

(assert (=> b!4767133 m!5738166))

(declare-fun m!5738168 () Bool)

(assert (=> b!4767135 m!5738168))

(assert (=> b!4767135 m!5737592))

(assert (=> b!4767135 m!5737592))

(assert (=> b!4767135 m!5737594))

(declare-fun m!5738170 () Bool)

(assert (=> b!4767135 m!5738170))

(assert (=> d!1523663 d!1523789))

(assert (=> d!1523663 d!1523635))

(assert (=> d!1523663 d!1523617))

(assert (=> d!1523663 d!1523661))

(declare-fun d!1523791 () Bool)

(declare-fun lt!1929974 () Bool)

(assert (=> d!1523791 (= lt!1929974 (contains!16831 (map!11986 (v!47657 (underlying!10062 thiss!42052))) lt!1929722))))

(assert (=> d!1523791 (= lt!1929974 (contains!16837 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052)))) lt!1929722))))

(assert (=> d!1523791 (valid!3928 (v!47657 (underlying!10062 thiss!42052)))))

(assert (=> d!1523791 (= (contains!16833 (v!47657 (underlying!10062 thiss!42052)) lt!1929722) lt!1929974)))

(declare-fun bs!1148967 () Bool)

(assert (= bs!1148967 d!1523791))

(assert (=> bs!1148967 m!5737600))

(assert (=> bs!1148967 m!5737600))

(declare-fun m!5738172 () Bool)

(assert (=> bs!1148967 m!5738172))

(declare-fun m!5738174 () Bool)

(assert (=> bs!1148967 m!5738174))

(assert (=> bs!1148967 m!5737636))

(assert (=> d!1523663 d!1523791))

(assert (=> d!1523663 d!1523625))

(declare-fun b!4767142 () Bool)

(declare-fun e!2975528 () List!53611)

(assert (=> b!4767142 (= e!2975528 (getKeysList!1006 (toList!6289 (extractMap!2145 (toList!6290 (map!11986 (v!47657 (underlying!10062 thiss!42052))))))))))

(declare-fun bm!334221 () Bool)

(declare-fun call!334226 () Bool)

(assert (=> bm!334221 (= call!334226 (contains!16836 e!2975528 key!1776))))

(declare-fun c!813172 () Bool)

(declare-fun c!813174 () Bool)

(assert (=> bm!334221 (= c!813172 c!813174)))

(declare-fun b!4767144 () Bool)

(declare-fun e!2975525 () Unit!138227)

(declare-fun lt!1929979 () Unit!138227)

(assert (=> b!4767144 (= e!2975525 lt!1929979)))

(declare-fun lt!1929981 () Unit!138227)

(assert (=> b!4767144 (= lt!1929981 (lemmaContainsKeyImpliesGetValueByKeyDefined!1987 (toList!6289 (extractMap!2145 (toList!6290 (map!11986 (v!47657 (underlying!10062 thiss!42052)))))) key!1776))))

(assert (=> b!4767144 (isDefined!9837 (getValueByKey!2179 (toList!6289 (extractMap!2145 (toList!6290 (map!11986 (v!47657 (underlying!10062 thiss!42052)))))) key!1776))))

(declare-fun lt!1929976 () Unit!138227)

(assert (=> b!4767144 (= lt!1929976 lt!1929981)))

(assert (=> b!4767144 (= lt!1929979 (lemmaInListThenGetKeysListContains!1001 (toList!6289 (extractMap!2145 (toList!6290 (map!11986 (v!47657 (underlying!10062 thiss!42052)))))) key!1776))))

(assert (=> b!4767144 call!334226))

(declare-fun b!4767145 () Bool)

(assert (=> b!4767145 false))

(declare-fun lt!1929975 () Unit!138227)

(declare-fun lt!1929982 () Unit!138227)

(assert (=> b!4767145 (= lt!1929975 lt!1929982)))

(assert (=> b!4767145 (containsKey!3665 (toList!6289 (extractMap!2145 (toList!6290 (map!11986 (v!47657 (underlying!10062 thiss!42052)))))) key!1776)))

(assert (=> b!4767145 (= lt!1929982 (lemmaInGetKeysListThenContainsKey!1005 (toList!6289 (extractMap!2145 (toList!6290 (map!11986 (v!47657 (underlying!10062 thiss!42052)))))) key!1776))))

(declare-fun e!2975526 () Unit!138227)

(declare-fun Unit!138256 () Unit!138227)

(assert (=> b!4767145 (= e!2975526 Unit!138256)))

(declare-fun b!4767146 () Bool)

(assert (=> b!4767146 (= e!2975528 (keys!19388 (extractMap!2145 (toList!6290 (map!11986 (v!47657 (underlying!10062 thiss!42052)))))))))

(declare-fun b!4767147 () Bool)

(declare-fun Unit!138257 () Unit!138227)

(assert (=> b!4767147 (= e!2975526 Unit!138257)))

(declare-fun b!4767148 () Bool)

(declare-fun e!2975529 () Bool)

(assert (=> b!4767148 (= e!2975529 (not (contains!16836 (keys!19388 (extractMap!2145 (toList!6290 (map!11986 (v!47657 (underlying!10062 thiss!42052)))))) key!1776)))))

(declare-fun d!1523793 () Bool)

(declare-fun e!2975530 () Bool)

(assert (=> d!1523793 e!2975530))

(declare-fun res!2021851 () Bool)

(assert (=> d!1523793 (=> res!2021851 e!2975530)))

(assert (=> d!1523793 (= res!2021851 e!2975529)))

(declare-fun res!2021852 () Bool)

(assert (=> d!1523793 (=> (not res!2021852) (not e!2975529))))

(declare-fun lt!1929978 () Bool)

(assert (=> d!1523793 (= res!2021852 (not lt!1929978))))

(declare-fun lt!1929977 () Bool)

(assert (=> d!1523793 (= lt!1929978 lt!1929977)))

(declare-fun lt!1929980 () Unit!138227)

(assert (=> d!1523793 (= lt!1929980 e!2975525)))

(assert (=> d!1523793 (= c!813174 lt!1929977)))

(assert (=> d!1523793 (= lt!1929977 (containsKey!3665 (toList!6289 (extractMap!2145 (toList!6290 (map!11986 (v!47657 (underlying!10062 thiss!42052)))))) key!1776))))

(assert (=> d!1523793 (= (contains!16834 (extractMap!2145 (toList!6290 (map!11986 (v!47657 (underlying!10062 thiss!42052))))) key!1776) lt!1929978)))

(declare-fun b!4767143 () Bool)

(declare-fun e!2975527 () Bool)

(assert (=> b!4767143 (= e!2975530 e!2975527)))

(declare-fun res!2021853 () Bool)

(assert (=> b!4767143 (=> (not res!2021853) (not e!2975527))))

(assert (=> b!4767143 (= res!2021853 (isDefined!9837 (getValueByKey!2179 (toList!6289 (extractMap!2145 (toList!6290 (map!11986 (v!47657 (underlying!10062 thiss!42052)))))) key!1776)))))

(declare-fun b!4767149 () Bool)

(assert (=> b!4767149 (= e!2975525 e!2975526)))

(declare-fun c!813173 () Bool)

(assert (=> b!4767149 (= c!813173 call!334226)))

(declare-fun b!4767150 () Bool)

(assert (=> b!4767150 (= e!2975527 (contains!16836 (keys!19388 (extractMap!2145 (toList!6290 (map!11986 (v!47657 (underlying!10062 thiss!42052)))))) key!1776))))

(assert (= (and d!1523793 c!813174) b!4767144))

(assert (= (and d!1523793 (not c!813174)) b!4767149))

(assert (= (and b!4767149 c!813173) b!4767145))

(assert (= (and b!4767149 (not c!813173)) b!4767147))

(assert (= (or b!4767144 b!4767149) bm!334221))

(assert (= (and bm!334221 c!813172) b!4767142))

(assert (= (and bm!334221 (not c!813172)) b!4767146))

(assert (= (and d!1523793 res!2021852) b!4767148))

(assert (= (and d!1523793 (not res!2021851)) b!4767143))

(assert (= (and b!4767143 res!2021853) b!4767150))

(declare-fun m!5738176 () Bool)

(assert (=> b!4767143 m!5738176))

(assert (=> b!4767143 m!5738176))

(declare-fun m!5738178 () Bool)

(assert (=> b!4767143 m!5738178))

(assert (=> b!4767148 m!5737660))

(declare-fun m!5738180 () Bool)

(assert (=> b!4767148 m!5738180))

(assert (=> b!4767148 m!5738180))

(declare-fun m!5738182 () Bool)

(assert (=> b!4767148 m!5738182))

(declare-fun m!5738184 () Bool)

(assert (=> d!1523793 m!5738184))

(assert (=> b!4767146 m!5737660))

(assert (=> b!4767146 m!5738180))

(assert (=> b!4767145 m!5738184))

(declare-fun m!5738186 () Bool)

(assert (=> b!4767145 m!5738186))

(assert (=> b!4767150 m!5737660))

(assert (=> b!4767150 m!5738180))

(assert (=> b!4767150 m!5738180))

(assert (=> b!4767150 m!5738182))

(declare-fun m!5738188 () Bool)

(assert (=> bm!334221 m!5738188))

(declare-fun m!5738190 () Bool)

(assert (=> b!4767142 m!5738190))

(declare-fun m!5738192 () Bool)

(assert (=> b!4767144 m!5738192))

(assert (=> b!4767144 m!5738176))

(assert (=> b!4767144 m!5738176))

(assert (=> b!4767144 m!5738178))

(declare-fun m!5738194 () Bool)

(assert (=> b!4767144 m!5738194))

(assert (=> d!1523663 d!1523793))

(declare-fun bs!1148968 () Bool)

(declare-fun d!1523795 () Bool)

(assert (= bs!1148968 (and d!1523795 b!4766846)))

(declare-fun lambda!224450 () Int)

(assert (=> bs!1148968 (= lambda!224450 lambda!224399)))

(declare-fun bs!1148969 () Bool)

(assert (= bs!1148969 (and d!1523795 d!1523767)))

(assert (=> bs!1148969 (= lambda!224450 lambda!224449)))

(declare-fun bs!1148970 () Bool)

(assert (= bs!1148970 (and d!1523795 d!1523671)))

(assert (=> bs!1148970 (= lambda!224450 lambda!224405)))

(declare-fun bs!1148971 () Bool)

(assert (= bs!1148971 (and d!1523795 d!1523755)))

(assert (=> bs!1148971 (= lambda!224450 lambda!224444)))

(declare-fun bs!1148972 () Bool)

(assert (= bs!1148972 (and d!1523795 d!1523739)))

(assert (=> bs!1148972 (= lambda!224450 lambda!224411)))

(declare-fun bs!1148973 () Bool)

(assert (= bs!1148973 (and d!1523795 d!1523643)))

(assert (=> bs!1148973 (= lambda!224450 lambda!224393)))

(declare-fun bs!1148974 () Bool)

(assert (= bs!1148974 (and d!1523795 d!1523629)))

(assert (=> bs!1148974 (= lambda!224450 lambda!224386)))

(declare-fun bs!1148975 () Bool)

(assert (= bs!1148975 (and d!1523795 b!4766873)))

(assert (=> bs!1148975 (= lambda!224450 lambda!224402)))

(declare-fun bs!1148976 () Bool)

(assert (= bs!1148976 (and d!1523795 d!1523645)))

(assert (=> bs!1148976 (= lambda!224450 lambda!224396)))

(declare-fun bs!1148977 () Bool)

(assert (= bs!1148977 (and d!1523795 d!1523683)))

(assert (=> bs!1148977 (not (= lambda!224450 lambda!224408))))

(declare-fun bs!1148978 () Bool)

(assert (= bs!1148978 (and d!1523795 b!4766698)))

(assert (=> bs!1148978 (= lambda!224450 lambda!224373)))

(declare-fun lt!1929983 () ListMap!5785)

(assert (=> d!1523795 (invariantList!1660 (toList!6289 lt!1929983))))

(declare-fun e!2975531 () ListMap!5785)

(assert (=> d!1523795 (= lt!1929983 e!2975531)))

(declare-fun c!813175 () Bool)

(assert (=> d!1523795 (= c!813175 ((_ is Cons!53486) (toList!6290 (map!11986 (v!47657 (underlying!10062 thiss!42052))))))))

(assert (=> d!1523795 (forall!11875 (toList!6290 (map!11986 (v!47657 (underlying!10062 thiss!42052)))) lambda!224450)))

(assert (=> d!1523795 (= (extractMap!2145 (toList!6290 (map!11986 (v!47657 (underlying!10062 thiss!42052))))) lt!1929983)))

(declare-fun b!4767151 () Bool)

(assert (=> b!4767151 (= e!2975531 (addToMapMapFromBucket!1625 (_2!31060 (h!59898 (toList!6290 (map!11986 (v!47657 (underlying!10062 thiss!42052)))))) (extractMap!2145 (t!361030 (toList!6290 (map!11986 (v!47657 (underlying!10062 thiss!42052))))))))))

(declare-fun b!4767152 () Bool)

(assert (=> b!4767152 (= e!2975531 (ListMap!5786 Nil!53485))))

(assert (= (and d!1523795 c!813175) b!4767151))

(assert (= (and d!1523795 (not c!813175)) b!4767152))

(declare-fun m!5738196 () Bool)

(assert (=> d!1523795 m!5738196))

(declare-fun m!5738198 () Bool)

(assert (=> d!1523795 m!5738198))

(declare-fun m!5738200 () Bool)

(assert (=> b!4767151 m!5738200))

(assert (=> b!4767151 m!5738200))

(declare-fun m!5738202 () Bool)

(assert (=> b!4767151 m!5738202))

(assert (=> d!1523663 d!1523795))

(declare-fun bs!1148979 () Bool)

(declare-fun d!1523797 () Bool)

(assert (= bs!1148979 (and d!1523797 b!4766846)))

(declare-fun lambda!224451 () Int)

(assert (=> bs!1148979 (not (= lambda!224451 lambda!224399))))

(declare-fun bs!1148980 () Bool)

(assert (= bs!1148980 (and d!1523797 d!1523767)))

(assert (=> bs!1148980 (not (= lambda!224451 lambda!224449))))

(declare-fun bs!1148981 () Bool)

(assert (= bs!1148981 (and d!1523797 d!1523671)))

(assert (=> bs!1148981 (not (= lambda!224451 lambda!224405))))

(declare-fun bs!1148982 () Bool)

(assert (= bs!1148982 (and d!1523797 d!1523755)))

(assert (=> bs!1148982 (not (= lambda!224451 lambda!224444))))

(declare-fun bs!1148983 () Bool)

(assert (= bs!1148983 (and d!1523797 d!1523739)))

(assert (=> bs!1148983 (not (= lambda!224451 lambda!224411))))

(declare-fun bs!1148984 () Bool)

(assert (= bs!1148984 (and d!1523797 d!1523643)))

(assert (=> bs!1148984 (not (= lambda!224451 lambda!224393))))

(declare-fun bs!1148985 () Bool)

(assert (= bs!1148985 (and d!1523797 d!1523629)))

(assert (=> bs!1148985 (not (= lambda!224451 lambda!224386))))

(declare-fun bs!1148986 () Bool)

(assert (= bs!1148986 (and d!1523797 b!4766873)))

(assert (=> bs!1148986 (not (= lambda!224451 lambda!224402))))

(declare-fun bs!1148987 () Bool)

(assert (= bs!1148987 (and d!1523797 d!1523645)))

(assert (=> bs!1148987 (not (= lambda!224451 lambda!224396))))

(declare-fun bs!1148988 () Bool)

(assert (= bs!1148988 (and d!1523797 d!1523795)))

(assert (=> bs!1148988 (not (= lambda!224451 lambda!224450))))

(declare-fun bs!1148989 () Bool)

(assert (= bs!1148989 (and d!1523797 d!1523683)))

(assert (=> bs!1148989 (= lambda!224451 lambda!224408)))

(declare-fun bs!1148990 () Bool)

(assert (= bs!1148990 (and d!1523797 b!4766698)))

(assert (=> bs!1148990 (not (= lambda!224451 lambda!224373))))

(assert (=> d!1523797 true))

(assert (=> d!1523797 (= (allKeysSameHashInMap!2021 (map!11986 (v!47657 (underlying!10062 thiss!42052))) (hashF!12431 thiss!42052)) (forall!11875 (toList!6290 (map!11986 (v!47657 (underlying!10062 thiss!42052)))) lambda!224451))))

(declare-fun bs!1148991 () Bool)

(assert (= bs!1148991 d!1523797))

(declare-fun m!5738204 () Bool)

(assert (=> bs!1148991 m!5738204))

(assert (=> b!4766847 d!1523797))

(assert (=> b!4766847 d!1523635))

(declare-fun d!1523799 () Bool)

(declare-fun c!813178 () Bool)

(assert (=> d!1523799 (= c!813178 ((_ is Nil!53486) (toList!6290 lt!1929547)))))

(declare-fun e!2975534 () (InoxSet tuple2!55532))

(assert (=> d!1523799 (= (content!9586 (toList!6290 lt!1929547)) e!2975534)))

(declare-fun b!4767157 () Bool)

(assert (=> b!4767157 (= e!2975534 ((as const (Array tuple2!55532 Bool)) false))))

(declare-fun b!4767158 () Bool)

(assert (=> b!4767158 (= e!2975534 ((_ map or) (store ((as const (Array tuple2!55532 Bool)) false) (h!59898 (toList!6290 lt!1929547)) true) (content!9586 (t!361030 (toList!6290 lt!1929547)))))))

(assert (= (and d!1523799 c!813178) b!4767157))

(assert (= (and d!1523799 (not c!813178)) b!4767158))

(declare-fun m!5738206 () Bool)

(assert (=> b!4767158 m!5738206))

(assert (=> b!4767158 m!5737972))

(assert (=> d!1523611 d!1523799))

(declare-fun d!1523801 () Bool)

(declare-fun noDuplicatedKeys!406 (List!53609) Bool)

(assert (=> d!1523801 (= (invariantList!1660 (toList!6289 lt!1929569)) (noDuplicatedKeys!406 (toList!6289 lt!1929569)))))

(declare-fun bs!1148992 () Bool)

(assert (= bs!1148992 d!1523801))

(declare-fun m!5738208 () Bool)

(assert (=> bs!1148992 m!5738208))

(assert (=> d!1523617 d!1523801))

(assert (=> d!1523617 d!1523795))

(assert (=> d!1523617 d!1523635))

(assert (=> d!1523617 d!1523661))

(assert (=> b!4766769 d!1523677))

(assert (=> b!4766769 d!1523671))

(declare-fun bs!1148993 () Bool)

(declare-fun d!1523803 () Bool)

(assert (= bs!1148993 (and d!1523803 b!4766846)))

(declare-fun lambda!224454 () Int)

(assert (=> bs!1148993 (= lambda!224454 lambda!224399)))

(declare-fun bs!1148994 () Bool)

(assert (= bs!1148994 (and d!1523803 d!1523767)))

(assert (=> bs!1148994 (= lambda!224454 lambda!224449)))

(declare-fun bs!1148995 () Bool)

(assert (= bs!1148995 (and d!1523803 d!1523671)))

(assert (=> bs!1148995 (= lambda!224454 lambda!224405)))

(declare-fun bs!1148996 () Bool)

(assert (= bs!1148996 (and d!1523803 d!1523797)))

(assert (=> bs!1148996 (not (= lambda!224454 lambda!224451))))

(declare-fun bs!1148997 () Bool)

(assert (= bs!1148997 (and d!1523803 d!1523755)))

(assert (=> bs!1148997 (= lambda!224454 lambda!224444)))

(declare-fun bs!1148998 () Bool)

(assert (= bs!1148998 (and d!1523803 d!1523739)))

(assert (=> bs!1148998 (= lambda!224454 lambda!224411)))

(declare-fun bs!1148999 () Bool)

(assert (= bs!1148999 (and d!1523803 d!1523643)))

(assert (=> bs!1148999 (= lambda!224454 lambda!224393)))

(declare-fun bs!1149000 () Bool)

(assert (= bs!1149000 (and d!1523803 d!1523629)))

(assert (=> bs!1149000 (= lambda!224454 lambda!224386)))

(declare-fun bs!1149001 () Bool)

(assert (= bs!1149001 (and d!1523803 b!4766873)))

(assert (=> bs!1149001 (= lambda!224454 lambda!224402)))

(declare-fun bs!1149002 () Bool)

(assert (= bs!1149002 (and d!1523803 d!1523645)))

(assert (=> bs!1149002 (= lambda!224454 lambda!224396)))

(declare-fun bs!1149003 () Bool)

(assert (= bs!1149003 (and d!1523803 d!1523795)))

(assert (=> bs!1149003 (= lambda!224454 lambda!224450)))

(declare-fun bs!1149004 () Bool)

(assert (= bs!1149004 (and d!1523803 d!1523683)))

(assert (=> bs!1149004 (not (= lambda!224454 lambda!224408))))

(declare-fun bs!1149005 () Bool)

(assert (= bs!1149005 (and d!1523803 b!4766698)))

(assert (=> bs!1149005 (= lambda!224454 lambda!224373)))

(declare-fun e!2975537 () Bool)

(assert (=> d!1523803 e!2975537))

(declare-fun res!2021856 () Bool)

(assert (=> d!1523803 (=> (not res!2021856) (not e!2975537))))

(assert (=> d!1523803 (= res!2021856 (contains!16831 lt!1929726 (hash!4569 (hashF!12431 thiss!42052) key!1776)))))

(declare-fun lt!1929986 () Unit!138227)

(declare-fun choose!33971 (ListLongMap!4687 K!14959 Hashable!6588) Unit!138227)

(assert (=> d!1523803 (= lt!1929986 (choose!33971 lt!1929726 key!1776 (hashF!12431 thiss!42052)))))

(assert (=> d!1523803 (forall!11875 (toList!6290 lt!1929726) lambda!224454)))

(assert (=> d!1523803 (= (lemmaInGenericMapThenInLongMap!201 lt!1929726 key!1776 (hashF!12431 thiss!42052)) lt!1929986)))

(declare-fun b!4767161 () Bool)

(assert (=> b!4767161 (= e!2975537 (isDefined!9838 (getPair!645 (apply!12626 lt!1929726 (hash!4569 (hashF!12431 thiss!42052) key!1776)) key!1776)))))

(assert (= (and d!1523803 res!2021856) b!4767161))

(assert (=> d!1523803 m!5737622))

(assert (=> d!1523803 m!5737622))

(declare-fun m!5738210 () Bool)

(assert (=> d!1523803 m!5738210))

(declare-fun m!5738212 () Bool)

(assert (=> d!1523803 m!5738212))

(declare-fun m!5738214 () Bool)

(assert (=> d!1523803 m!5738214))

(assert (=> b!4767161 m!5737622))

(assert (=> b!4767161 m!5737622))

(declare-fun m!5738216 () Bool)

(assert (=> b!4767161 m!5738216))

(assert (=> b!4767161 m!5738216))

(declare-fun m!5738218 () Bool)

(assert (=> b!4767161 m!5738218))

(assert (=> b!4767161 m!5738218))

(declare-fun m!5738220 () Bool)

(assert (=> b!4767161 m!5738220))

(assert (=> b!4766878 d!1523803))

(declare-fun d!1523805 () Bool)

(declare-fun res!2021857 () Bool)

(declare-fun e!2975538 () Bool)

(assert (=> d!1523805 (=> res!2021857 e!2975538)))

(assert (=> d!1523805 (= res!2021857 (not ((_ is Cons!53485) (_2!31060 lt!1929552))))))

(assert (=> d!1523805 (= (noDuplicateKeys!2253 (_2!31060 lt!1929552)) e!2975538)))

(declare-fun b!4767162 () Bool)

(declare-fun e!2975539 () Bool)

(assert (=> b!4767162 (= e!2975538 e!2975539)))

(declare-fun res!2021858 () Bool)

(assert (=> b!4767162 (=> (not res!2021858) (not e!2975539))))

(assert (=> b!4767162 (= res!2021858 (not (containsKey!3663 (t!361029 (_2!31060 lt!1929552)) (_1!31059 (h!59897 (_2!31060 lt!1929552))))))))

(declare-fun b!4767163 () Bool)

(assert (=> b!4767163 (= e!2975539 (noDuplicateKeys!2253 (t!361029 (_2!31060 lt!1929552))))))

(assert (= (and d!1523805 (not res!2021857)) b!4767162))

(assert (= (and b!4767162 res!2021858) b!4767163))

(declare-fun m!5738222 () Bool)

(assert (=> b!4767162 m!5738222))

(declare-fun m!5738224 () Bool)

(assert (=> b!4767163 m!5738224))

(assert (=> bs!1148911 d!1523805))

(declare-fun d!1523807 () Bool)

(declare-fun res!2021859 () Bool)

(declare-fun e!2975540 () Bool)

(assert (=> d!1523807 (=> res!2021859 e!2975540)))

(assert (=> d!1523807 (= res!2021859 (and ((_ is Cons!53485) lt!1929544) (= (_1!31059 (h!59897 lt!1929544)) key!1776)))))

(assert (=> d!1523807 (= (containsKey!3663 lt!1929544 key!1776) e!2975540)))

(declare-fun b!4767164 () Bool)

(declare-fun e!2975541 () Bool)

(assert (=> b!4767164 (= e!2975540 e!2975541)))

(declare-fun res!2021860 () Bool)

(assert (=> b!4767164 (=> (not res!2021860) (not e!2975541))))

(assert (=> b!4767164 (= res!2021860 ((_ is Cons!53485) lt!1929544))))

(declare-fun b!4767165 () Bool)

(assert (=> b!4767165 (= e!2975541 (containsKey!3663 (t!361029 lt!1929544) key!1776))))

(assert (= (and d!1523807 (not res!2021859)) b!4767164))

(assert (= (and b!4767164 res!2021860) b!4767165))

(assert (=> b!4767165 m!5738082))

(assert (=> b!4766798 d!1523807))

(declare-fun d!1523809 () Bool)

(declare-fun res!2021861 () Bool)

(declare-fun e!2975542 () Bool)

(assert (=> d!1523809 (=> res!2021861 e!2975542)))

(assert (=> d!1523809 (= res!2021861 (and ((_ is Cons!53486) lt!1929719) (= (_1!31060 (h!59898 lt!1929719)) lt!1929722)))))

(assert (=> d!1523809 (= (containsKey!3664 lt!1929719 lt!1929722) e!2975542)))

(declare-fun b!4767166 () Bool)

(declare-fun e!2975543 () Bool)

(assert (=> b!4767166 (= e!2975542 e!2975543)))

(declare-fun res!2021862 () Bool)

(assert (=> b!4767166 (=> (not res!2021862) (not e!2975543))))

(assert (=> b!4767166 (= res!2021862 (and (or (not ((_ is Cons!53486) lt!1929719)) (bvsle (_1!31060 (h!59898 lt!1929719)) lt!1929722)) ((_ is Cons!53486) lt!1929719) (bvslt (_1!31060 (h!59898 lt!1929719)) lt!1929722)))))

(declare-fun b!4767167 () Bool)

(assert (=> b!4767167 (= e!2975543 (containsKey!3664 (t!361030 lt!1929719) lt!1929722))))

(assert (= (and d!1523809 (not res!2021861)) b!4767166))

(assert (= (and b!4767166 res!2021862) b!4767167))

(declare-fun m!5738226 () Bool)

(assert (=> b!4767167 m!5738226))

(assert (=> b!4766871 d!1523809))

(declare-fun d!1523811 () Bool)

(assert (=> d!1523811 (containsKey!3664 lt!1929719 lt!1929722)))

(declare-fun lt!1929989 () Unit!138227)

(declare-fun choose!33972 (List!53610 (_ BitVec 64)) Unit!138227)

(assert (=> d!1523811 (= lt!1929989 (choose!33972 lt!1929719 lt!1929722))))

(declare-fun e!2975546 () Bool)

(assert (=> d!1523811 e!2975546))

(declare-fun res!2021865 () Bool)

(assert (=> d!1523811 (=> (not res!2021865) (not e!2975546))))

(assert (=> d!1523811 (= res!2021865 (isStrictlySorted!807 lt!1929719))))

(assert (=> d!1523811 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!202 lt!1929719 lt!1929722) lt!1929989)))

(declare-fun b!4767170 () Bool)

(assert (=> b!4767170 (= e!2975546 (isDefined!9839 (getValueByKey!2180 lt!1929719 lt!1929722)))))

(assert (= (and d!1523811 res!2021865) b!4767170))

(assert (=> d!1523811 m!5737820))

(declare-fun m!5738228 () Bool)

(assert (=> d!1523811 m!5738228))

(declare-fun m!5738230 () Bool)

(assert (=> d!1523811 m!5738230))

(declare-fun m!5738232 () Bool)

(assert (=> b!4767170 m!5738232))

(assert (=> b!4767170 m!5738232))

(declare-fun m!5738234 () Bool)

(assert (=> b!4767170 m!5738234))

(assert (=> b!4766871 d!1523811))

(declare-fun d!1523813 () Bool)

(assert (=> d!1523813 (contains!16830 lt!1929724 (tuple2!55533 lt!1929722 lt!1929732))))

(declare-fun lt!1929990 () Unit!138227)

(assert (=> d!1523813 (= lt!1929990 (choose!33970 lt!1929724 lt!1929722 lt!1929732))))

(declare-fun e!2975547 () Bool)

(assert (=> d!1523813 e!2975547))

(declare-fun res!2021866 () Bool)

(assert (=> d!1523813 (=> (not res!2021866) (not e!2975547))))

(assert (=> d!1523813 (= res!2021866 (isStrictlySorted!807 lt!1929724))))

(assert (=> d!1523813 (= (lemmaGetValueByKeyImpliesContainsTuple!930 lt!1929724 lt!1929722 lt!1929732) lt!1929990)))

(declare-fun b!4767171 () Bool)

(assert (=> b!4767171 (= e!2975547 (= (getValueByKey!2180 lt!1929724 lt!1929722) (Some!12673 lt!1929732)))))

(assert (= (and d!1523813 res!2021866) b!4767171))

(assert (=> d!1523813 m!5737826))

(declare-fun m!5738236 () Bool)

(assert (=> d!1523813 m!5738236))

(declare-fun m!5738238 () Bool)

(assert (=> d!1523813 m!5738238))

(declare-fun m!5738240 () Bool)

(assert (=> b!4767171 m!5738240))

(assert (=> b!4766871 d!1523813))

(declare-fun d!1523815 () Bool)

(assert (=> d!1523815 (isDefined!9839 (getValueByKey!2180 lt!1929729 lt!1929722))))

(declare-fun lt!1929991 () Unit!138227)

(assert (=> d!1523815 (= lt!1929991 (choose!33969 lt!1929729 lt!1929722))))

(declare-fun e!2975548 () Bool)

(assert (=> d!1523815 e!2975548))

(declare-fun res!2021867 () Bool)

(assert (=> d!1523815 (=> (not res!2021867) (not e!2975548))))

(assert (=> d!1523815 (= res!2021867 (isStrictlySorted!807 lt!1929729))))

(assert (=> d!1523815 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1986 lt!1929729 lt!1929722) lt!1929991)))

(declare-fun b!4767172 () Bool)

(assert (=> b!4767172 (= e!2975548 (containsKey!3664 lt!1929729 lt!1929722))))

(assert (= (and d!1523815 res!2021867) b!4767172))

(assert (=> d!1523815 m!5737818))

(assert (=> d!1523815 m!5737818))

(assert (=> d!1523815 m!5737824))

(declare-fun m!5738242 () Bool)

(assert (=> d!1523815 m!5738242))

(declare-fun m!5738244 () Bool)

(assert (=> d!1523815 m!5738244))

(declare-fun m!5738246 () Bool)

(assert (=> b!4767172 m!5738246))

(assert (=> b!4766871 d!1523815))

(assert (=> b!4766871 d!1523635))

(declare-fun b!4767173 () Bool)

(declare-fun e!2975549 () Option!12674)

(assert (=> b!4767173 (= e!2975549 (Some!12673 (_2!31060 (h!59898 lt!1929729))))))

(declare-fun b!4767175 () Bool)

(declare-fun e!2975550 () Option!12674)

(assert (=> b!4767175 (= e!2975550 (getValueByKey!2180 (t!361030 lt!1929729) lt!1929722))))

(declare-fun d!1523817 () Bool)

(declare-fun c!813179 () Bool)

(assert (=> d!1523817 (= c!813179 (and ((_ is Cons!53486) lt!1929729) (= (_1!31060 (h!59898 lt!1929729)) lt!1929722)))))

(assert (=> d!1523817 (= (getValueByKey!2180 lt!1929729 lt!1929722) e!2975549)))

(declare-fun b!4767174 () Bool)

(assert (=> b!4767174 (= e!2975549 e!2975550)))

(declare-fun c!813180 () Bool)

(assert (=> b!4767174 (= c!813180 (and ((_ is Cons!53486) lt!1929729) (not (= (_1!31060 (h!59898 lt!1929729)) lt!1929722))))))

(declare-fun b!4767176 () Bool)

(assert (=> b!4767176 (= e!2975550 None!12673)))

(assert (= (and d!1523817 c!813179) b!4767173))

(assert (= (and d!1523817 (not c!813179)) b!4767174))

(assert (= (and b!4767174 c!813180) b!4767175))

(assert (= (and b!4767174 (not c!813180)) b!4767176))

(declare-fun m!5738248 () Bool)

(assert (=> b!4767175 m!5738248))

(assert (=> b!4766871 d!1523817))

(assert (=> b!4766871 d!1523773))

(declare-fun d!1523819 () Bool)

(assert (=> d!1523819 (= (isDefined!9839 (getValueByKey!2180 lt!1929729 lt!1929722)) (not (isEmpty!29280 (getValueByKey!2180 lt!1929729 lt!1929722))))))

(declare-fun bs!1149006 () Bool)

(assert (= bs!1149006 d!1523819))

(assert (=> bs!1149006 m!5737818))

(declare-fun m!5738250 () Bool)

(assert (=> bs!1149006 m!5738250))

(assert (=> b!4766871 d!1523819))

(declare-fun lt!1929992 () Bool)

(declare-fun d!1523821 () Bool)

(assert (=> d!1523821 (= lt!1929992 (select (content!9586 lt!1929724) (tuple2!55533 lt!1929722 lt!1929732)))))

(declare-fun e!2975551 () Bool)

(assert (=> d!1523821 (= lt!1929992 e!2975551)))

(declare-fun res!2021869 () Bool)

(assert (=> d!1523821 (=> (not res!2021869) (not e!2975551))))

(assert (=> d!1523821 (= res!2021869 ((_ is Cons!53486) lt!1929724))))

(assert (=> d!1523821 (= (contains!16830 lt!1929724 (tuple2!55533 lt!1929722 lt!1929732)) lt!1929992)))

(declare-fun b!4767177 () Bool)

(declare-fun e!2975552 () Bool)

(assert (=> b!4767177 (= e!2975551 e!2975552)))

(declare-fun res!2021868 () Bool)

(assert (=> b!4767177 (=> res!2021868 e!2975552)))

(assert (=> b!4767177 (= res!2021868 (= (h!59898 lt!1929724) (tuple2!55533 lt!1929722 lt!1929732)))))

(declare-fun b!4767178 () Bool)

(assert (=> b!4767178 (= e!2975552 (contains!16830 (t!361030 lt!1929724) (tuple2!55533 lt!1929722 lt!1929732)))))

(assert (= (and d!1523821 res!2021869) b!4767177))

(assert (= (and b!4767177 (not res!2021868)) b!4767178))

(declare-fun m!5738252 () Bool)

(assert (=> d!1523821 m!5738252))

(declare-fun m!5738254 () Bool)

(assert (=> d!1523821 m!5738254))

(declare-fun m!5738256 () Bool)

(assert (=> b!4767178 m!5738256))

(assert (=> b!4766871 d!1523821))

(declare-fun b!4767179 () Bool)

(declare-fun e!2975553 () Option!12674)

(assert (=> b!4767179 (= e!2975553 (Some!12673 (_2!31060 (h!59898 (t!361030 (toList!6290 lt!1929547))))))))

(declare-fun b!4767181 () Bool)

(declare-fun e!2975554 () Option!12674)

(assert (=> b!4767181 (= e!2975554 (getValueByKey!2180 (t!361030 (t!361030 (toList!6290 lt!1929547))) lt!1929541))))

(declare-fun d!1523823 () Bool)

(declare-fun c!813181 () Bool)

(assert (=> d!1523823 (= c!813181 (and ((_ is Cons!53486) (t!361030 (toList!6290 lt!1929547))) (= (_1!31060 (h!59898 (t!361030 (toList!6290 lt!1929547)))) lt!1929541)))))

(assert (=> d!1523823 (= (getValueByKey!2180 (t!361030 (toList!6290 lt!1929547)) lt!1929541) e!2975553)))

(declare-fun b!4767180 () Bool)

(assert (=> b!4767180 (= e!2975553 e!2975554)))

(declare-fun c!813182 () Bool)

(assert (=> b!4767180 (= c!813182 (and ((_ is Cons!53486) (t!361030 (toList!6290 lt!1929547))) (not (= (_1!31060 (h!59898 (t!361030 (toList!6290 lt!1929547)))) lt!1929541))))))

(declare-fun b!4767182 () Bool)

(assert (=> b!4767182 (= e!2975554 None!12673)))

(assert (= (and d!1523823 c!813181) b!4767179))

(assert (= (and d!1523823 (not c!813181)) b!4767180))

(assert (= (and b!4767180 c!813182) b!4767181))

(assert (= (and b!4767180 (not c!813182)) b!4767182))

(declare-fun m!5738258 () Bool)

(assert (=> b!4767181 m!5738258))

(assert (=> b!4766837 d!1523823))

(declare-fun d!1523825 () Bool)

(assert (=> d!1523825 (= (isEmpty!29279 (getValueByKey!2179 (toList!6289 (map!11985 thiss!42052)) key!1776)) (not ((_ is Some!12671) (getValueByKey!2179 (toList!6289 (map!11985 thiss!42052)) key!1776))))))

(assert (=> d!1523639 d!1523825))

(declare-fun b!4767183 () Bool)

(declare-fun e!2975555 () Option!12674)

(assert (=> b!4767183 (= e!2975555 (Some!12673 (_2!31060 (h!59898 (toList!6290 lt!1929547)))))))

(declare-fun b!4767185 () Bool)

(declare-fun e!2975556 () Option!12674)

(assert (=> b!4767185 (= e!2975556 (getValueByKey!2180 (t!361030 (toList!6290 lt!1929547)) lt!1929664))))

(declare-fun d!1523827 () Bool)

(declare-fun c!813183 () Bool)

(assert (=> d!1523827 (= c!813183 (and ((_ is Cons!53486) (toList!6290 lt!1929547)) (= (_1!31060 (h!59898 (toList!6290 lt!1929547))) lt!1929664)))))

(assert (=> d!1523827 (= (getValueByKey!2180 (toList!6290 lt!1929547) lt!1929664) e!2975555)))

(declare-fun b!4767184 () Bool)

(assert (=> b!4767184 (= e!2975555 e!2975556)))

(declare-fun c!813184 () Bool)

(assert (=> b!4767184 (= c!813184 (and ((_ is Cons!53486) (toList!6290 lt!1929547)) (not (= (_1!31060 (h!59898 (toList!6290 lt!1929547))) lt!1929664))))))

(declare-fun b!4767186 () Bool)

(assert (=> b!4767186 (= e!2975556 None!12673)))

(assert (= (and d!1523827 c!813183) b!4767183))

(assert (= (and d!1523827 (not c!813183)) b!4767184))

(assert (= (and b!4767184 c!813184) b!4767185))

(assert (= (and b!4767184 (not c!813184)) b!4767186))

(declare-fun m!5738260 () Bool)

(assert (=> b!4767185 m!5738260))

(assert (=> b!4766823 d!1523827))

(declare-fun d!1523829 () Bool)

(assert (=> d!1523829 (= (get!18035 (getValueByKey!2180 (toList!6290 (map!11986 (v!47657 (underlying!10062 thiss!42052)))) lt!1929541)) (v!47660 (getValueByKey!2180 (toList!6290 (map!11986 (v!47657 (underlying!10062 thiss!42052)))) lt!1929541)))))

(assert (=> b!4766714 d!1523829))

(declare-fun b!4767187 () Bool)

(declare-fun e!2975557 () Option!12674)

(assert (=> b!4767187 (= e!2975557 (Some!12673 (_2!31060 (h!59898 (toList!6290 (map!11986 (v!47657 (underlying!10062 thiss!42052))))))))))

(declare-fun b!4767189 () Bool)

(declare-fun e!2975558 () Option!12674)

(assert (=> b!4767189 (= e!2975558 (getValueByKey!2180 (t!361030 (toList!6290 (map!11986 (v!47657 (underlying!10062 thiss!42052))))) lt!1929541))))

(declare-fun d!1523831 () Bool)

(declare-fun c!813185 () Bool)

(assert (=> d!1523831 (= c!813185 (and ((_ is Cons!53486) (toList!6290 (map!11986 (v!47657 (underlying!10062 thiss!42052))))) (= (_1!31060 (h!59898 (toList!6290 (map!11986 (v!47657 (underlying!10062 thiss!42052)))))) lt!1929541)))))

(assert (=> d!1523831 (= (getValueByKey!2180 (toList!6290 (map!11986 (v!47657 (underlying!10062 thiss!42052)))) lt!1929541) e!2975557)))

(declare-fun b!4767188 () Bool)

(assert (=> b!4767188 (= e!2975557 e!2975558)))

(declare-fun c!813186 () Bool)

(assert (=> b!4767188 (= c!813186 (and ((_ is Cons!53486) (toList!6290 (map!11986 (v!47657 (underlying!10062 thiss!42052))))) (not (= (_1!31060 (h!59898 (toList!6290 (map!11986 (v!47657 (underlying!10062 thiss!42052)))))) lt!1929541))))))

(declare-fun b!4767190 () Bool)

(assert (=> b!4767190 (= e!2975558 None!12673)))

(assert (= (and d!1523831 c!813185) b!4767187))

(assert (= (and d!1523831 (not c!813185)) b!4767188))

(assert (= (and b!4767188 c!813186) b!4767189))

(assert (= (and b!4767188 (not c!813186)) b!4767190))

(declare-fun m!5738262 () Bool)

(assert (=> b!4767189 m!5738262))

(assert (=> b!4766714 d!1523831))

(assert (=> b!4766714 d!1523635))

(declare-fun d!1523833 () Bool)

(assert (=> d!1523833 (= (isEmpty!29278 lt!1929545) (not ((_ is Some!12672) lt!1929545)))))

(assert (=> d!1523647 d!1523833))

(declare-fun d!1523835 () Bool)

(assert (=> d!1523835 (= (map!11987 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) (getCurrentListMap!29 (_keys!5269 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) (_values!5240 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) (mask!14686 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) (extraKeys!5202 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) (zeroValue!5215 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) (minValue!5215 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) #b00000000000000000000000000000000 (defaultEntry!5345 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052)))))))))

(declare-fun bs!1149007 () Bool)

(assert (= bs!1149007 d!1523835))

(assert (=> bs!1149007 m!5737942))

(assert (=> d!1523635 d!1523835))

(declare-fun d!1523837 () Bool)

(assert (=> d!1523837 (= (get!18035 (getValueByKey!2180 (toList!6290 lt!1929547) lt!1929541)) (v!47660 (getValueByKey!2180 (toList!6290 lt!1929547) lt!1929541)))))

(assert (=> d!1523621 d!1523837))

(assert (=> d!1523621 d!1523653))

(assert (=> b!4766821 d!1523677))

(assert (=> b!4766821 d!1523671))

(declare-fun d!1523839 () Bool)

(declare-fun choose!33973 (Hashable!6588 K!14959) (_ BitVec 64))

(assert (=> d!1523839 (= (hash!4570 (hashF!12431 thiss!42052) key!1776) (choose!33973 (hashF!12431 thiss!42052) key!1776))))

(declare-fun bs!1149008 () Bool)

(assert (= bs!1149008 d!1523839))

(declare-fun m!5738264 () Bool)

(assert (=> bs!1149008 m!5738264))

(assert (=> d!1523625 d!1523839))

(assert (=> d!1523645 d!1523693))

(assert (=> d!1523645 d!1523625))

(declare-fun d!1523841 () Bool)

(assert (=> d!1523841 (contains!16831 lt!1929547 (hash!4569 (hashF!12431 thiss!42052) key!1776))))

(assert (=> d!1523841 true))

(declare-fun _$27!1560 () Unit!138227)

(assert (=> d!1523841 (= (choose!33968 lt!1929547 key!1776 (hashF!12431 thiss!42052)) _$27!1560)))

(declare-fun bs!1149009 () Bool)

(assert (= bs!1149009 d!1523841))

(assert (=> bs!1149009 m!5737622))

(assert (=> bs!1149009 m!5737622))

(assert (=> bs!1149009 m!5737688))

(assert (=> d!1523645 d!1523841))

(declare-fun d!1523843 () Bool)

(declare-fun res!2021870 () Bool)

(declare-fun e!2975559 () Bool)

(assert (=> d!1523843 (=> res!2021870 e!2975559)))

(assert (=> d!1523843 (= res!2021870 ((_ is Nil!53486) (toList!6290 lt!1929547)))))

(assert (=> d!1523843 (= (forall!11875 (toList!6290 lt!1929547) lambda!224396) e!2975559)))

(declare-fun b!4767191 () Bool)

(declare-fun e!2975560 () Bool)

(assert (=> b!4767191 (= e!2975559 e!2975560)))

(declare-fun res!2021871 () Bool)

(assert (=> b!4767191 (=> (not res!2021871) (not e!2975560))))

(assert (=> b!4767191 (= res!2021871 (dynLambda!21951 lambda!224396 (h!59898 (toList!6290 lt!1929547))))))

(declare-fun b!4767192 () Bool)

(assert (=> b!4767192 (= e!2975560 (forall!11875 (t!361030 (toList!6290 lt!1929547)) lambda!224396))))

(assert (= (and d!1523843 (not res!2021870)) b!4767191))

(assert (= (and b!4767191 res!2021871) b!4767192))

(declare-fun b_lambda!184379 () Bool)

(assert (=> (not b_lambda!184379) (not b!4767191)))

(declare-fun m!5738266 () Bool)

(assert (=> b!4767191 m!5738266))

(declare-fun m!5738268 () Bool)

(assert (=> b!4767192 m!5738268))

(assert (=> d!1523645 d!1523843))

(declare-fun b!4767193 () Bool)

(declare-fun e!2975561 () Option!12674)

(assert (=> b!4767193 (= e!2975561 (Some!12673 (_2!31060 (h!59898 (toList!6290 lt!1929547)))))))

(declare-fun b!4767195 () Bool)

(declare-fun e!2975562 () Option!12674)

(assert (=> b!4767195 (= e!2975562 (getValueByKey!2180 (t!361030 (toList!6290 lt!1929547)) lt!1929609))))

(declare-fun d!1523845 () Bool)

(declare-fun c!813187 () Bool)

(assert (=> d!1523845 (= c!813187 (and ((_ is Cons!53486) (toList!6290 lt!1929547)) (= (_1!31060 (h!59898 (toList!6290 lt!1929547))) lt!1929609)))))

(assert (=> d!1523845 (= (getValueByKey!2180 (toList!6290 lt!1929547) lt!1929609) e!2975561)))

(declare-fun b!4767194 () Bool)

(assert (=> b!4767194 (= e!2975561 e!2975562)))

(declare-fun c!813188 () Bool)

(assert (=> b!4767194 (= c!813188 (and ((_ is Cons!53486) (toList!6290 lt!1929547)) (not (= (_1!31060 (h!59898 (toList!6290 lt!1929547))) lt!1929609))))))

(declare-fun b!4767196 () Bool)

(assert (=> b!4767196 (= e!2975562 None!12673)))

(assert (= (and d!1523845 c!813187) b!4767193))

(assert (= (and d!1523845 (not c!813187)) b!4767194))

(assert (= (and b!4767194 c!813188) b!4767195))

(assert (= (and b!4767194 (not c!813188)) b!4767196))

(declare-fun m!5738270 () Bool)

(assert (=> b!4767195 m!5738270))

(assert (=> b!4766763 d!1523845))

(declare-fun d!1523847 () Bool)

(declare-fun lt!1929993 () Bool)

(assert (=> d!1523847 (= lt!1929993 (select (content!9586 (toList!6290 lt!1929547)) (tuple2!55533 lt!1929541 lt!1929557)))))

(declare-fun e!2975563 () Bool)

(assert (=> d!1523847 (= lt!1929993 e!2975563)))

(declare-fun res!2021873 () Bool)

(assert (=> d!1523847 (=> (not res!2021873) (not e!2975563))))

(assert (=> d!1523847 (= res!2021873 ((_ is Cons!53486) (toList!6290 lt!1929547)))))

(assert (=> d!1523847 (= (contains!16830 (toList!6290 lt!1929547) (tuple2!55533 lt!1929541 lt!1929557)) lt!1929993)))

(declare-fun b!4767197 () Bool)

(declare-fun e!2975564 () Bool)

(assert (=> b!4767197 (= e!2975563 e!2975564)))

(declare-fun res!2021872 () Bool)

(assert (=> b!4767197 (=> res!2021872 e!2975564)))

(assert (=> b!4767197 (= res!2021872 (= (h!59898 (toList!6290 lt!1929547)) (tuple2!55533 lt!1929541 lt!1929557)))))

(declare-fun b!4767198 () Bool)

(assert (=> b!4767198 (= e!2975564 (contains!16830 (t!361030 (toList!6290 lt!1929547)) (tuple2!55533 lt!1929541 lt!1929557)))))

(assert (= (and d!1523847 res!2021873) b!4767197))

(assert (= (and b!4767197 (not res!2021872)) b!4767198))

(assert (=> d!1523847 m!5737644))

(declare-fun m!5738272 () Bool)

(assert (=> d!1523847 m!5738272))

(declare-fun m!5738274 () Bool)

(assert (=> b!4767198 m!5738274))

(assert (=> d!1523637 d!1523847))

(declare-fun d!1523849 () Bool)

(assert (=> d!1523849 (contains!16830 (toList!6290 lt!1929547) (tuple2!55533 lt!1929541 lt!1929557))))

(assert (=> d!1523849 true))

(declare-fun _$41!463 () Unit!138227)

(assert (=> d!1523849 (= (choose!33966 lt!1929547 lt!1929541 lt!1929557) _$41!463)))

(declare-fun bs!1149010 () Bool)

(assert (= bs!1149010 d!1523849))

(assert (=> bs!1149010 m!5737740))

(assert (=> d!1523637 d!1523849))

(assert (=> d!1523637 d!1523641))

(assert (=> d!1523619 d!1523799))

(assert (=> b!4766761 d!1523689))

(declare-fun d!1523851 () Bool)

(assert (=> d!1523851 (= (get!18033 (getPair!645 (apply!12626 lt!1929547 (hash!4569 (hashF!12431 thiss!42052) key!1776)) key!1776)) (v!47659 (getPair!645 (apply!12626 lt!1929547 (hash!4569 (hashF!12431 thiss!42052) key!1776)) key!1776)))))

(assert (=> b!4766761 d!1523851))

(assert (=> b!4766761 d!1523765))

(declare-fun d!1523853 () Bool)

(assert (=> d!1523853 (contains!16830 (toList!6290 lt!1929547) (tuple2!55533 lt!1929609 lt!1929619))))

(declare-fun lt!1929994 () Unit!138227)

(assert (=> d!1523853 (= lt!1929994 (choose!33966 lt!1929547 lt!1929609 lt!1929619))))

(assert (=> d!1523853 (contains!16831 lt!1929547 lt!1929609)))

(assert (=> d!1523853 (= (lemmaGetValueImpliesTupleContained!437 lt!1929547 lt!1929609 lt!1929619) lt!1929994)))

(declare-fun bs!1149011 () Bool)

(assert (= bs!1149011 d!1523853))

(assert (=> bs!1149011 m!5737704))

(declare-fun m!5738276 () Bool)

(assert (=> bs!1149011 m!5738276))

(assert (=> bs!1149011 m!5737702))

(assert (=> b!4766761 d!1523853))

(assert (=> b!4766761 d!1523671))

(assert (=> b!4766761 d!1523643))

(assert (=> b!4766761 d!1523701))

(assert (=> b!4766761 d!1523693))

(assert (=> b!4766761 d!1523667))

(declare-fun d!1523855 () Bool)

(declare-fun e!2975566 () Bool)

(assert (=> d!1523855 e!2975566))

(declare-fun res!2021874 () Bool)

(assert (=> d!1523855 (=> res!2021874 e!2975566)))

(declare-fun lt!1929995 () Bool)

(assert (=> d!1523855 (= res!2021874 (not lt!1929995))))

(declare-fun lt!1929998 () Bool)

(assert (=> d!1523855 (= lt!1929995 lt!1929998)))

(declare-fun lt!1929996 () Unit!138227)

(declare-fun e!2975565 () Unit!138227)

(assert (=> d!1523855 (= lt!1929996 e!2975565)))

(declare-fun c!813189 () Bool)

(assert (=> d!1523855 (= c!813189 lt!1929998)))

(assert (=> d!1523855 (= lt!1929998 (containsKey!3664 (toList!6290 lt!1929547) lt!1929609))))

(assert (=> d!1523855 (= (contains!16831 lt!1929547 lt!1929609) lt!1929995)))

(declare-fun b!4767200 () Bool)

(declare-fun lt!1929997 () Unit!138227)

(assert (=> b!4767200 (= e!2975565 lt!1929997)))

(assert (=> b!4767200 (= lt!1929997 (lemmaContainsKeyImpliesGetValueByKeyDefined!1986 (toList!6290 lt!1929547) lt!1929609))))

(assert (=> b!4767200 (isDefined!9839 (getValueByKey!2180 (toList!6290 lt!1929547) lt!1929609))))

(declare-fun b!4767201 () Bool)

(declare-fun Unit!138258 () Unit!138227)

(assert (=> b!4767201 (= e!2975565 Unit!138258)))

(declare-fun b!4767202 () Bool)

(assert (=> b!4767202 (= e!2975566 (isDefined!9839 (getValueByKey!2180 (toList!6290 lt!1929547) lt!1929609)))))

(assert (= (and d!1523855 c!813189) b!4767200))

(assert (= (and d!1523855 (not c!813189)) b!4767201))

(assert (= (and d!1523855 (not res!2021874)) b!4767202))

(declare-fun m!5738278 () Bool)

(assert (=> d!1523855 m!5738278))

(declare-fun m!5738280 () Bool)

(assert (=> b!4767200 m!5738280))

(assert (=> b!4767200 m!5737676))

(assert (=> b!4767200 m!5737676))

(declare-fun m!5738282 () Bool)

(assert (=> b!4767200 m!5738282))

(assert (=> b!4767202 m!5737676))

(assert (=> b!4767202 m!5737676))

(assert (=> b!4767202 m!5738282))

(assert (=> b!4766761 d!1523855))

(declare-fun lt!1929999 () Bool)

(declare-fun d!1523857 () Bool)

(assert (=> d!1523857 (= lt!1929999 (select (content!9586 (toList!6290 lt!1929547)) (tuple2!55533 lt!1929609 lt!1929619)))))

(declare-fun e!2975567 () Bool)

(assert (=> d!1523857 (= lt!1929999 e!2975567)))

(declare-fun res!2021876 () Bool)

(assert (=> d!1523857 (=> (not res!2021876) (not e!2975567))))

(assert (=> d!1523857 (= res!2021876 ((_ is Cons!53486) (toList!6290 lt!1929547)))))

(assert (=> d!1523857 (= (contains!16830 (toList!6290 lt!1929547) (tuple2!55533 lt!1929609 lt!1929619)) lt!1929999)))

(declare-fun b!4767203 () Bool)

(declare-fun e!2975568 () Bool)

(assert (=> b!4767203 (= e!2975567 e!2975568)))

(declare-fun res!2021875 () Bool)

(assert (=> b!4767203 (=> res!2021875 e!2975568)))

(assert (=> b!4767203 (= res!2021875 (= (h!59898 (toList!6290 lt!1929547)) (tuple2!55533 lt!1929609 lt!1929619)))))

(declare-fun b!4767204 () Bool)

(assert (=> b!4767204 (= e!2975568 (contains!16830 (t!361030 (toList!6290 lt!1929547)) (tuple2!55533 lt!1929609 lt!1929619)))))

(assert (= (and d!1523857 res!2021876) b!4767203))

(assert (= (and b!4767203 (not res!2021875)) b!4767204))

(assert (=> d!1523857 m!5737644))

(declare-fun m!5738284 () Bool)

(assert (=> d!1523857 m!5738284))

(declare-fun m!5738286 () Bool)

(assert (=> b!4767204 m!5738286))

(assert (=> b!4766761 d!1523857))

(assert (=> b!4766761 d!1523669))

(assert (=> b!4766761 d!1523625))

(assert (=> b!4766761 d!1523645))

(assert (=> b!4766761 d!1523699))

(declare-fun d!1523859 () Bool)

(assert (=> d!1523859 (= (isEmpty!29278 lt!1929626) (not ((_ is Some!12672) lt!1929626)))))

(assert (=> d!1523633 d!1523859))

(declare-fun d!1523861 () Bool)

(declare-fun res!2021877 () Bool)

(declare-fun e!2975569 () Bool)

(assert (=> d!1523861 (=> res!2021877 e!2975569)))

(assert (=> d!1523861 (= res!2021877 (not ((_ is Cons!53485) lt!1929544)))))

(assert (=> d!1523861 (= (noDuplicateKeys!2253 lt!1929544) e!2975569)))

(declare-fun b!4767205 () Bool)

(declare-fun e!2975570 () Bool)

(assert (=> b!4767205 (= e!2975569 e!2975570)))

(declare-fun res!2021878 () Bool)

(assert (=> b!4767205 (=> (not res!2021878) (not e!2975570))))

(assert (=> b!4767205 (= res!2021878 (not (containsKey!3663 (t!361029 lt!1929544) (_1!31059 (h!59897 lt!1929544)))))))

(declare-fun b!4767206 () Bool)

(assert (=> b!4767206 (= e!2975570 (noDuplicateKeys!2253 (t!361029 lt!1929544)))))

(assert (= (and d!1523861 (not res!2021877)) b!4767205))

(assert (= (and b!4767205 res!2021878) b!4767206))

(declare-fun m!5738288 () Bool)

(assert (=> b!4767205 m!5738288))

(assert (=> b!4767206 m!5738088))

(assert (=> d!1523633 d!1523861))

(assert (=> b!4766736 d!1523619))

(declare-fun d!1523863 () Bool)

(assert (=> d!1523863 (dynLambda!21951 lambda!224402 (tuple2!55533 lt!1929722 (apply!12627 (v!47657 (underlying!10062 thiss!42052)) lt!1929722)))))

(declare-fun lt!1930000 () Unit!138227)

(assert (=> d!1523863 (= lt!1930000 (choose!33964 (toList!6290 (map!11986 (v!47657 (underlying!10062 thiss!42052)))) lambda!224402 (tuple2!55533 lt!1929722 (apply!12627 (v!47657 (underlying!10062 thiss!42052)) lt!1929722))))))

(declare-fun e!2975571 () Bool)

(assert (=> d!1523863 e!2975571))

(declare-fun res!2021879 () Bool)

(assert (=> d!1523863 (=> (not res!2021879) (not e!2975571))))

(assert (=> d!1523863 (= res!2021879 (forall!11875 (toList!6290 (map!11986 (v!47657 (underlying!10062 thiss!42052)))) lambda!224402))))

(assert (=> d!1523863 (= (forallContained!3861 (toList!6290 (map!11986 (v!47657 (underlying!10062 thiss!42052)))) lambda!224402 (tuple2!55533 lt!1929722 (apply!12627 (v!47657 (underlying!10062 thiss!42052)) lt!1929722))) lt!1930000)))

(declare-fun b!4767207 () Bool)

(assert (=> b!4767207 (= e!2975571 (contains!16830 (toList!6290 (map!11986 (v!47657 (underlying!10062 thiss!42052)))) (tuple2!55533 lt!1929722 (apply!12627 (v!47657 (underlying!10062 thiss!42052)) lt!1929722))))))

(assert (= (and d!1523863 res!2021879) b!4767207))

(declare-fun b_lambda!184381 () Bool)

(assert (=> (not b_lambda!184381) (not d!1523863)))

(declare-fun m!5738290 () Bool)

(assert (=> d!1523863 m!5738290))

(declare-fun m!5738292 () Bool)

(assert (=> d!1523863 m!5738292))

(declare-fun m!5738294 () Bool)

(assert (=> d!1523863 m!5738294))

(assert (=> b!4767207 m!5737802))

(assert (=> b!4766873 d!1523863))

(assert (=> b!4766873 d!1523635))

(assert (=> b!4766873 d!1523773))

(declare-fun d!1523865 () Bool)

(declare-fun lt!1930001 () Bool)

(assert (=> d!1523865 (= lt!1930001 (select (content!9586 (toList!6290 (map!11986 (v!47657 (underlying!10062 thiss!42052))))) (tuple2!55533 lt!1929722 (apply!12627 (v!47657 (underlying!10062 thiss!42052)) lt!1929722))))))

(declare-fun e!2975572 () Bool)

(assert (=> d!1523865 (= lt!1930001 e!2975572)))

(declare-fun res!2021881 () Bool)

(assert (=> d!1523865 (=> (not res!2021881) (not e!2975572))))

(assert (=> d!1523865 (= res!2021881 ((_ is Cons!53486) (toList!6290 (map!11986 (v!47657 (underlying!10062 thiss!42052))))))))

(assert (=> d!1523865 (= (contains!16830 (toList!6290 (map!11986 (v!47657 (underlying!10062 thiss!42052)))) (tuple2!55533 lt!1929722 (apply!12627 (v!47657 (underlying!10062 thiss!42052)) lt!1929722))) lt!1930001)))

(declare-fun b!4767208 () Bool)

(declare-fun e!2975573 () Bool)

(assert (=> b!4767208 (= e!2975572 e!2975573)))

(declare-fun res!2021880 () Bool)

(assert (=> b!4767208 (=> res!2021880 e!2975573)))

(assert (=> b!4767208 (= res!2021880 (= (h!59898 (toList!6290 (map!11986 (v!47657 (underlying!10062 thiss!42052))))) (tuple2!55533 lt!1929722 (apply!12627 (v!47657 (underlying!10062 thiss!42052)) lt!1929722))))))

(declare-fun b!4767209 () Bool)

(assert (=> b!4767209 (= e!2975573 (contains!16830 (t!361030 (toList!6290 (map!11986 (v!47657 (underlying!10062 thiss!42052))))) (tuple2!55533 lt!1929722 (apply!12627 (v!47657 (underlying!10062 thiss!42052)) lt!1929722))))))

(assert (= (and d!1523865 res!2021881) b!4767208))

(assert (= (and b!4767208 (not res!2021880)) b!4767209))

(declare-fun m!5738296 () Bool)

(assert (=> d!1523865 m!5738296))

(declare-fun m!5738298 () Bool)

(assert (=> d!1523865 m!5738298))

(declare-fun m!5738300 () Bool)

(assert (=> b!4767209 m!5738300))

(assert (=> b!4766873 d!1523865))

(declare-fun d!1523867 () Bool)

(assert (=> d!1523867 (= (invariantList!1660 (toList!6289 lt!1929737)) (noDuplicatedKeys!406 (toList!6289 lt!1929737)))))

(declare-fun bs!1149012 () Bool)

(assert (= bs!1149012 d!1523867))

(declare-fun m!5738302 () Bool)

(assert (=> bs!1149012 m!5738302))

(assert (=> d!1523671 d!1523867))

(declare-fun d!1523869 () Bool)

(declare-fun res!2021882 () Bool)

(declare-fun e!2975574 () Bool)

(assert (=> d!1523869 (=> res!2021882 e!2975574)))

(assert (=> d!1523869 (= res!2021882 ((_ is Nil!53486) (toList!6290 lt!1929547)))))

(assert (=> d!1523869 (= (forall!11875 (toList!6290 lt!1929547) lambda!224405) e!2975574)))

(declare-fun b!4767210 () Bool)

(declare-fun e!2975575 () Bool)

(assert (=> b!4767210 (= e!2975574 e!2975575)))

(declare-fun res!2021883 () Bool)

(assert (=> b!4767210 (=> (not res!2021883) (not e!2975575))))

(assert (=> b!4767210 (= res!2021883 (dynLambda!21951 lambda!224405 (h!59898 (toList!6290 lt!1929547))))))

(declare-fun b!4767211 () Bool)

(assert (=> b!4767211 (= e!2975575 (forall!11875 (t!361030 (toList!6290 lt!1929547)) lambda!224405))))

(assert (= (and d!1523869 (not res!2021882)) b!4767210))

(assert (= (and b!4767210 res!2021883) b!4767211))

(declare-fun b_lambda!184383 () Bool)

(assert (=> (not b_lambda!184383) (not b!4767210)))

(declare-fun m!5738304 () Bool)

(assert (=> b!4767210 m!5738304))

(declare-fun m!5738306 () Bool)

(assert (=> b!4767211 m!5738306))

(assert (=> d!1523671 d!1523869))

(declare-fun d!1523871 () Bool)

(assert (=> d!1523871 (= (isDefined!9838 lt!1929626) (not (isEmpty!29278 lt!1929626)))))

(declare-fun bs!1149013 () Bool)

(assert (= bs!1149013 d!1523871))

(assert (=> bs!1149013 m!5737734))

(assert (=> b!4766800 d!1523871))

(declare-fun b!4767212 () Bool)

(declare-fun e!2975579 () List!53611)

(assert (=> b!4767212 (= e!2975579 (getKeysList!1006 (toList!6289 (extractMap!2145 (toList!6290 lt!1929734)))))))

(declare-fun bm!334222 () Bool)

(declare-fun call!334227 () Bool)

(assert (=> bm!334222 (= call!334227 (contains!16836 e!2975579 key!1776))))

(declare-fun c!813190 () Bool)

(declare-fun c!813192 () Bool)

(assert (=> bm!334222 (= c!813190 c!813192)))

(declare-fun b!4767214 () Bool)

(declare-fun e!2975576 () Unit!138227)

(declare-fun lt!1930006 () Unit!138227)

(assert (=> b!4767214 (= e!2975576 lt!1930006)))

(declare-fun lt!1930008 () Unit!138227)

(assert (=> b!4767214 (= lt!1930008 (lemmaContainsKeyImpliesGetValueByKeyDefined!1987 (toList!6289 (extractMap!2145 (toList!6290 lt!1929734))) key!1776))))

(assert (=> b!4767214 (isDefined!9837 (getValueByKey!2179 (toList!6289 (extractMap!2145 (toList!6290 lt!1929734))) key!1776))))

(declare-fun lt!1930003 () Unit!138227)

(assert (=> b!4767214 (= lt!1930003 lt!1930008)))

(assert (=> b!4767214 (= lt!1930006 (lemmaInListThenGetKeysListContains!1001 (toList!6289 (extractMap!2145 (toList!6290 lt!1929734))) key!1776))))

(assert (=> b!4767214 call!334227))

(declare-fun b!4767215 () Bool)

(assert (=> b!4767215 false))

(declare-fun lt!1930002 () Unit!138227)

(declare-fun lt!1930009 () Unit!138227)

(assert (=> b!4767215 (= lt!1930002 lt!1930009)))

(assert (=> b!4767215 (containsKey!3665 (toList!6289 (extractMap!2145 (toList!6290 lt!1929734))) key!1776)))

(assert (=> b!4767215 (= lt!1930009 (lemmaInGetKeysListThenContainsKey!1005 (toList!6289 (extractMap!2145 (toList!6290 lt!1929734))) key!1776))))

(declare-fun e!2975577 () Unit!138227)

(declare-fun Unit!138259 () Unit!138227)

(assert (=> b!4767215 (= e!2975577 Unit!138259)))

(declare-fun b!4767216 () Bool)

(assert (=> b!4767216 (= e!2975579 (keys!19388 (extractMap!2145 (toList!6290 lt!1929734))))))

(declare-fun b!4767217 () Bool)

(declare-fun Unit!138260 () Unit!138227)

(assert (=> b!4767217 (= e!2975577 Unit!138260)))

(declare-fun b!4767218 () Bool)

(declare-fun e!2975580 () Bool)

(assert (=> b!4767218 (= e!2975580 (not (contains!16836 (keys!19388 (extractMap!2145 (toList!6290 lt!1929734))) key!1776)))))

(declare-fun d!1523873 () Bool)

(declare-fun e!2975581 () Bool)

(assert (=> d!1523873 e!2975581))

(declare-fun res!2021884 () Bool)

(assert (=> d!1523873 (=> res!2021884 e!2975581)))

(assert (=> d!1523873 (= res!2021884 e!2975580)))

(declare-fun res!2021885 () Bool)

(assert (=> d!1523873 (=> (not res!2021885) (not e!2975580))))

(declare-fun lt!1930005 () Bool)

(assert (=> d!1523873 (= res!2021885 (not lt!1930005))))

(declare-fun lt!1930004 () Bool)

(assert (=> d!1523873 (= lt!1930005 lt!1930004)))

(declare-fun lt!1930007 () Unit!138227)

(assert (=> d!1523873 (= lt!1930007 e!2975576)))

(assert (=> d!1523873 (= c!813192 lt!1930004)))

(assert (=> d!1523873 (= lt!1930004 (containsKey!3665 (toList!6289 (extractMap!2145 (toList!6290 lt!1929734))) key!1776))))

(assert (=> d!1523873 (= (contains!16834 (extractMap!2145 (toList!6290 lt!1929734)) key!1776) lt!1930005)))

(declare-fun b!4767213 () Bool)

(declare-fun e!2975578 () Bool)

(assert (=> b!4767213 (= e!2975581 e!2975578)))

(declare-fun res!2021886 () Bool)

(assert (=> b!4767213 (=> (not res!2021886) (not e!2975578))))

(assert (=> b!4767213 (= res!2021886 (isDefined!9837 (getValueByKey!2179 (toList!6289 (extractMap!2145 (toList!6290 lt!1929734))) key!1776)))))

(declare-fun b!4767219 () Bool)

(assert (=> b!4767219 (= e!2975576 e!2975577)))

(declare-fun c!813191 () Bool)

(assert (=> b!4767219 (= c!813191 call!334227)))

(declare-fun b!4767220 () Bool)

(assert (=> b!4767220 (= e!2975578 (contains!16836 (keys!19388 (extractMap!2145 (toList!6290 lt!1929734))) key!1776))))

(assert (= (and d!1523873 c!813192) b!4767214))

(assert (= (and d!1523873 (not c!813192)) b!4767219))

(assert (= (and b!4767219 c!813191) b!4767215))

(assert (= (and b!4767219 (not c!813191)) b!4767217))

(assert (= (or b!4767214 b!4767219) bm!334222))

(assert (= (and bm!334222 c!813190) b!4767212))

(assert (= (and bm!334222 (not c!813190)) b!4767216))

(assert (= (and d!1523873 res!2021885) b!4767218))

(assert (= (and d!1523873 (not res!2021884)) b!4767213))

(assert (= (and b!4767213 res!2021886) b!4767220))

(declare-fun m!5738308 () Bool)

(assert (=> b!4767213 m!5738308))

(assert (=> b!4767213 m!5738308))

(declare-fun m!5738310 () Bool)

(assert (=> b!4767213 m!5738310))

(assert (=> b!4767218 m!5737794))

(declare-fun m!5738312 () Bool)

(assert (=> b!4767218 m!5738312))

(assert (=> b!4767218 m!5738312))

(declare-fun m!5738314 () Bool)

(assert (=> b!4767218 m!5738314))

(declare-fun m!5738316 () Bool)

(assert (=> d!1523873 m!5738316))

(assert (=> b!4767216 m!5737794))

(assert (=> b!4767216 m!5738312))

(assert (=> b!4767215 m!5738316))

(declare-fun m!5738318 () Bool)

(assert (=> b!4767215 m!5738318))

(assert (=> b!4767220 m!5737794))

(assert (=> b!4767220 m!5738312))

(assert (=> b!4767220 m!5738312))

(assert (=> b!4767220 m!5738314))

(declare-fun m!5738320 () Bool)

(assert (=> bm!334222 m!5738320))

(declare-fun m!5738322 () Bool)

(assert (=> b!4767212 m!5738322))

(declare-fun m!5738324 () Bool)

(assert (=> b!4767214 m!5738324))

(assert (=> b!4767214 m!5738308))

(assert (=> b!4767214 m!5738308))

(assert (=> b!4767214 m!5738310))

(declare-fun m!5738326 () Bool)

(assert (=> b!4767214 m!5738326))

(assert (=> b!4766872 d!1523873))

(declare-fun bs!1149014 () Bool)

(declare-fun d!1523875 () Bool)

(assert (= bs!1149014 (and d!1523875 b!4766846)))

(declare-fun lambda!224455 () Int)

(assert (=> bs!1149014 (= lambda!224455 lambda!224399)))

(declare-fun bs!1149015 () Bool)

(assert (= bs!1149015 (and d!1523875 d!1523767)))

(assert (=> bs!1149015 (= lambda!224455 lambda!224449)))

(declare-fun bs!1149016 () Bool)

(assert (= bs!1149016 (and d!1523875 d!1523671)))

(assert (=> bs!1149016 (= lambda!224455 lambda!224405)))

(declare-fun bs!1149017 () Bool)

(assert (= bs!1149017 (and d!1523875 d!1523797)))

(assert (=> bs!1149017 (not (= lambda!224455 lambda!224451))))

(declare-fun bs!1149018 () Bool)

(assert (= bs!1149018 (and d!1523875 d!1523755)))

(assert (=> bs!1149018 (= lambda!224455 lambda!224444)))

(declare-fun bs!1149019 () Bool)

(assert (= bs!1149019 (and d!1523875 d!1523803)))

(assert (=> bs!1149019 (= lambda!224455 lambda!224454)))

(declare-fun bs!1149020 () Bool)

(assert (= bs!1149020 (and d!1523875 d!1523739)))

(assert (=> bs!1149020 (= lambda!224455 lambda!224411)))

(declare-fun bs!1149021 () Bool)

(assert (= bs!1149021 (and d!1523875 d!1523643)))

(assert (=> bs!1149021 (= lambda!224455 lambda!224393)))

(declare-fun bs!1149022 () Bool)

(assert (= bs!1149022 (and d!1523875 d!1523629)))

(assert (=> bs!1149022 (= lambda!224455 lambda!224386)))

(declare-fun bs!1149023 () Bool)

(assert (= bs!1149023 (and d!1523875 b!4766873)))

(assert (=> bs!1149023 (= lambda!224455 lambda!224402)))

(declare-fun bs!1149024 () Bool)

(assert (= bs!1149024 (and d!1523875 d!1523645)))

(assert (=> bs!1149024 (= lambda!224455 lambda!224396)))

(declare-fun bs!1149025 () Bool)

(assert (= bs!1149025 (and d!1523875 d!1523795)))

(assert (=> bs!1149025 (= lambda!224455 lambda!224450)))

(declare-fun bs!1149026 () Bool)

(assert (= bs!1149026 (and d!1523875 d!1523683)))

(assert (=> bs!1149026 (not (= lambda!224455 lambda!224408))))

(declare-fun bs!1149027 () Bool)

(assert (= bs!1149027 (and d!1523875 b!4766698)))

(assert (=> bs!1149027 (= lambda!224455 lambda!224373)))

(declare-fun lt!1930010 () ListMap!5785)

(assert (=> d!1523875 (invariantList!1660 (toList!6289 lt!1930010))))

(declare-fun e!2975582 () ListMap!5785)

(assert (=> d!1523875 (= lt!1930010 e!2975582)))

(declare-fun c!813193 () Bool)

(assert (=> d!1523875 (= c!813193 ((_ is Cons!53486) (toList!6290 lt!1929734)))))

(assert (=> d!1523875 (forall!11875 (toList!6290 lt!1929734) lambda!224455)))

(assert (=> d!1523875 (= (extractMap!2145 (toList!6290 lt!1929734)) lt!1930010)))

(declare-fun b!4767221 () Bool)

(assert (=> b!4767221 (= e!2975582 (addToMapMapFromBucket!1625 (_2!31060 (h!59898 (toList!6290 lt!1929734))) (extractMap!2145 (t!361030 (toList!6290 lt!1929734)))))))

(declare-fun b!4767222 () Bool)

(assert (=> b!4767222 (= e!2975582 (ListMap!5786 Nil!53485))))

(assert (= (and d!1523875 c!813193) b!4767221))

(assert (= (and d!1523875 (not c!813193)) b!4767222))

(declare-fun m!5738328 () Bool)

(assert (=> d!1523875 m!5738328))

(declare-fun m!5738330 () Bool)

(assert (=> d!1523875 m!5738330))

(declare-fun m!5738332 () Bool)

(assert (=> b!4767221 m!5738332))

(assert (=> b!4767221 m!5738332))

(declare-fun m!5738334 () Bool)

(assert (=> b!4767221 m!5738334))

(assert (=> b!4766872 d!1523875))

(declare-fun bs!1149028 () Bool)

(declare-fun d!1523877 () Bool)

(assert (= bs!1149028 (and d!1523877 b!4766846)))

(declare-fun lambda!224458 () Int)

(assert (=> bs!1149028 (= lambda!224458 lambda!224399)))

(declare-fun bs!1149029 () Bool)

(assert (= bs!1149029 (and d!1523877 d!1523767)))

(assert (=> bs!1149029 (= lambda!224458 lambda!224449)))

(declare-fun bs!1149030 () Bool)

(assert (= bs!1149030 (and d!1523877 d!1523671)))

(assert (=> bs!1149030 (= lambda!224458 lambda!224405)))

(declare-fun bs!1149031 () Bool)

(assert (= bs!1149031 (and d!1523877 d!1523797)))

(assert (=> bs!1149031 (not (= lambda!224458 lambda!224451))))

(declare-fun bs!1149032 () Bool)

(assert (= bs!1149032 (and d!1523877 d!1523755)))

(assert (=> bs!1149032 (= lambda!224458 lambda!224444)))

(declare-fun bs!1149033 () Bool)

(assert (= bs!1149033 (and d!1523877 d!1523739)))

(assert (=> bs!1149033 (= lambda!224458 lambda!224411)))

(declare-fun bs!1149034 () Bool)

(assert (= bs!1149034 (and d!1523877 d!1523643)))

(assert (=> bs!1149034 (= lambda!224458 lambda!224393)))

(declare-fun bs!1149035 () Bool)

(assert (= bs!1149035 (and d!1523877 d!1523629)))

(assert (=> bs!1149035 (= lambda!224458 lambda!224386)))

(declare-fun bs!1149036 () Bool)

(assert (= bs!1149036 (and d!1523877 b!4766873)))

(assert (=> bs!1149036 (= lambda!224458 lambda!224402)))

(declare-fun bs!1149037 () Bool)

(assert (= bs!1149037 (and d!1523877 d!1523645)))

(assert (=> bs!1149037 (= lambda!224458 lambda!224396)))

(declare-fun bs!1149038 () Bool)

(assert (= bs!1149038 (and d!1523877 d!1523875)))

(assert (=> bs!1149038 (= lambda!224458 lambda!224455)))

(declare-fun bs!1149039 () Bool)

(assert (= bs!1149039 (and d!1523877 d!1523803)))

(assert (=> bs!1149039 (= lambda!224458 lambda!224454)))

(declare-fun bs!1149040 () Bool)

(assert (= bs!1149040 (and d!1523877 d!1523795)))

(assert (=> bs!1149040 (= lambda!224458 lambda!224450)))

(declare-fun bs!1149041 () Bool)

(assert (= bs!1149041 (and d!1523877 d!1523683)))

(assert (=> bs!1149041 (not (= lambda!224458 lambda!224408))))

(declare-fun bs!1149042 () Bool)

(assert (= bs!1149042 (and d!1523877 b!4766698)))

(assert (=> bs!1149042 (= lambda!224458 lambda!224373)))

(assert (=> d!1523877 (contains!16834 (extractMap!2145 (toList!6290 lt!1929734)) key!1776)))

(declare-fun lt!1930013 () Unit!138227)

(declare-fun choose!33974 (ListLongMap!4687 K!14959 Hashable!6588) Unit!138227)

(assert (=> d!1523877 (= lt!1930013 (choose!33974 lt!1929734 key!1776 (hashF!12431 thiss!42052)))))

(assert (=> d!1523877 (forall!11875 (toList!6290 lt!1929734) lambda!224458)))

(assert (=> d!1523877 (= (lemmaInLongMapThenInGenericMap!201 lt!1929734 key!1776 (hashF!12431 thiss!42052)) lt!1930013)))

(declare-fun bs!1149043 () Bool)

(assert (= bs!1149043 d!1523877))

(assert (=> bs!1149043 m!5737794))

(assert (=> bs!1149043 m!5737794))

(assert (=> bs!1149043 m!5737796))

(declare-fun m!5738336 () Bool)

(assert (=> bs!1149043 m!5738336))

(declare-fun m!5738338 () Bool)

(assert (=> bs!1149043 m!5738338))

(assert (=> b!4766872 d!1523877))

(declare-fun mapNonEmpty!21864 () Bool)

(declare-fun mapRes!21864 () Bool)

(declare-fun tp!1355532 () Bool)

(declare-fun e!2975583 () Bool)

(assert (=> mapNonEmpty!21864 (= mapRes!21864 (and tp!1355532 e!2975583))))

(declare-fun mapKey!21864 () (_ BitVec 32))

(declare-fun mapValue!21864 () List!53609)

(declare-fun mapRest!21864 () (Array (_ BitVec 32) List!53609))

(assert (=> mapNonEmpty!21864 (= mapRest!21863 (store mapRest!21864 mapKey!21864 mapValue!21864))))

(declare-fun mapIsEmpty!21864 () Bool)

(assert (=> mapIsEmpty!21864 mapRes!21864))

(declare-fun b!4767223 () Bool)

(declare-fun tp!1355530 () Bool)

(assert (=> b!4767223 (= e!2975583 (and tp_is_empty!32447 tp_is_empty!32449 tp!1355530))))

(declare-fun tp!1355531 () Bool)

(declare-fun e!2975584 () Bool)

(declare-fun b!4767224 () Bool)

(assert (=> b!4767224 (= e!2975584 (and tp_is_empty!32447 tp_is_empty!32449 tp!1355531))))

(declare-fun condMapEmpty!21864 () Bool)

(declare-fun mapDefault!21864 () List!53609)

(assert (=> mapNonEmpty!21863 (= condMapEmpty!21864 (= mapRest!21863 ((as const (Array (_ BitVec 32) List!53609)) mapDefault!21864)))))

(assert (=> mapNonEmpty!21863 (= tp!1355528 (and e!2975584 mapRes!21864))))

(assert (= (and mapNonEmpty!21863 condMapEmpty!21864) mapIsEmpty!21864))

(assert (= (and mapNonEmpty!21863 (not condMapEmpty!21864)) mapNonEmpty!21864))

(assert (= (and mapNonEmpty!21864 ((_ is Cons!53485) mapValue!21864)) b!4767223))

(assert (= (and mapNonEmpty!21863 ((_ is Cons!53485) mapDefault!21864)) b!4767224))

(declare-fun m!5738340 () Bool)

(assert (=> mapNonEmpty!21864 m!5738340))

(declare-fun e!2975585 () Bool)

(declare-fun tp!1355533 () Bool)

(declare-fun b!4767225 () Bool)

(assert (=> b!4767225 (= e!2975585 (and tp_is_empty!32447 tp_is_empty!32449 tp!1355533))))

(assert (=> b!4766897 (= tp!1355519 e!2975585)))

(assert (= (and b!4766897 ((_ is Cons!53485) (t!361029 (minValue!5215 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052)))))))) b!4767225))

(declare-fun b!4767226 () Bool)

(declare-fun e!2975586 () Bool)

(declare-fun tp!1355534 () Bool)

(assert (=> b!4767226 (= e!2975586 (and tp_is_empty!32447 tp_is_empty!32449 tp!1355534))))

(assert (=> b!4766895 (= tp!1355517 e!2975586)))

(assert (= (and b!4766895 ((_ is Cons!53485) (t!361029 mapDefault!21860))) b!4767226))

(declare-fun e!2975587 () Bool)

(declare-fun b!4767227 () Bool)

(declare-fun tp!1355535 () Bool)

(assert (=> b!4767227 (= e!2975587 (and tp_is_empty!32447 tp_is_empty!32449 tp!1355535))))

(assert (=> b!4766905 (= tp!1355527 e!2975587)))

(assert (= (and b!4766905 ((_ is Cons!53485) (t!361029 mapDefault!21863))) b!4767227))

(declare-fun e!2975588 () Bool)

(declare-fun tp!1355536 () Bool)

(declare-fun b!4767228 () Bool)

(assert (=> b!4767228 (= e!2975588 (and tp_is_empty!32447 tp_is_empty!32449 tp!1355536))))

(assert (=> tb!257473 (= result!319108 e!2975588)))

(assert (= (and tb!257473 ((_ is Cons!53485) (dynLambda!21950 (defaultEntry!5345 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052))))) lt!1929541))) b!4767228))

(declare-fun e!2975589 () Bool)

(declare-fun tp!1355537 () Bool)

(declare-fun b!4767229 () Bool)

(assert (=> b!4767229 (= e!2975589 (and tp_is_empty!32447 tp_is_empty!32449 tp!1355537))))

(assert (=> b!4766896 (= tp!1355518 e!2975589)))

(assert (= (and b!4766896 ((_ is Cons!53485) (t!361029 (zeroValue!5215 (v!47656 (underlying!10061 (v!47657 (underlying!10062 thiss!42052)))))))) b!4767229))

(declare-fun tp!1355538 () Bool)

(declare-fun b!4767230 () Bool)

(declare-fun e!2975590 () Bool)

(assert (=> b!4767230 (= e!2975590 (and tp_is_empty!32447 tp_is_empty!32449 tp!1355538))))

(assert (=> b!4766906 (= tp!1355529 e!2975590)))

(assert (= (and b!4766906 ((_ is Cons!53485) (t!361029 mapValue!21860))) b!4767230))

(declare-fun b!4767231 () Bool)

(declare-fun tp!1355539 () Bool)

(declare-fun e!2975591 () Bool)

(assert (=> b!4767231 (= e!2975591 (and tp_is_empty!32447 tp_is_empty!32449 tp!1355539))))

(assert (=> b!4766904 (= tp!1355526 e!2975591)))

(assert (= (and b!4766904 ((_ is Cons!53485) (t!361029 mapValue!21863))) b!4767231))

(declare-fun b_lambda!184385 () Bool)

(assert (= b_lambda!184367 (or b!4766698 b_lambda!184385)))

(assert (=> d!1523733 d!1523675))

(declare-fun b_lambda!184387 () Bool)

(assert (= b_lambda!184375 (or (and b!4766704 b_free!129651) b_lambda!184387)))

(declare-fun b_lambda!184389 () Bool)

(assert (= b_lambda!184369 (or b!4766698 b_lambda!184389)))

(declare-fun bs!1149044 () Bool)

(declare-fun d!1523879 () Bool)

(assert (= bs!1149044 (and d!1523879 b!4766698)))

(assert (=> bs!1149044 (= (dynLambda!21951 lambda!224373 (h!59898 (toList!6290 lt!1929547))) (noDuplicateKeys!2253 (_2!31060 (h!59898 (toList!6290 lt!1929547)))))))

(assert (=> bs!1149044 m!5738042))

(assert (=> b!4767041 d!1523879))

(declare-fun b_lambda!184391 () Bool)

(assert (= b_lambda!184355 (or d!1523629 b_lambda!184391)))

(declare-fun bs!1149045 () Bool)

(declare-fun d!1523881 () Bool)

(assert (= bs!1149045 (and d!1523881 d!1523629)))

(assert (=> bs!1149045 (= (dynLambda!21951 lambda!224386 (tuple2!55533 (hash!4569 (hashF!12431 thiss!42052) key!1776) (apply!12626 lt!1929547 (hash!4569 (hashF!12431 thiss!42052) key!1776)))) (noDuplicateKeys!2253 (_2!31060 (tuple2!55533 (hash!4569 (hashF!12431 thiss!42052) key!1776) (apply!12626 lt!1929547 (hash!4569 (hashF!12431 thiss!42052) key!1776))))))))

(declare-fun m!5738342 () Bool)

(assert (=> bs!1149045 m!5738342))

(assert (=> d!1523699 d!1523881))

(declare-fun b_lambda!184393 () Bool)

(assert (= b_lambda!184371 (or d!1523643 b_lambda!184393)))

(declare-fun bs!1149046 () Bool)

(declare-fun d!1523883 () Bool)

(assert (= bs!1149046 (and d!1523883 d!1523643)))

(assert (=> bs!1149046 (= (dynLambda!21951 lambda!224393 (h!59898 (toList!6290 lt!1929547))) (noDuplicateKeys!2253 (_2!31060 (h!59898 (toList!6290 lt!1929547)))))))

(assert (=> bs!1149046 m!5738042))

(assert (=> b!4767043 d!1523883))

(declare-fun b_lambda!184395 () Bool)

(assert (= b_lambda!184383 (or d!1523671 b_lambda!184395)))

(declare-fun bs!1149047 () Bool)

(declare-fun d!1523885 () Bool)

(assert (= bs!1149047 (and d!1523885 d!1523671)))

(assert (=> bs!1149047 (= (dynLambda!21951 lambda!224405 (h!59898 (toList!6290 lt!1929547))) (noDuplicateKeys!2253 (_2!31060 (h!59898 (toList!6290 lt!1929547)))))))

(assert (=> bs!1149047 m!5738042))

(assert (=> b!4767210 d!1523885))

(declare-fun b_lambda!184397 () Bool)

(assert (= b_lambda!184379 (or d!1523645 b_lambda!184397)))

(declare-fun bs!1149048 () Bool)

(declare-fun d!1523887 () Bool)

(assert (= bs!1149048 (and d!1523887 d!1523645)))

(assert (=> bs!1149048 (= (dynLambda!21951 lambda!224396 (h!59898 (toList!6290 lt!1929547))) (noDuplicateKeys!2253 (_2!31060 (h!59898 (toList!6290 lt!1929547)))))))

(assert (=> bs!1149048 m!5738042))

(assert (=> b!4767191 d!1523887))

(declare-fun b_lambda!184399 () Bool)

(assert (= b_lambda!184373 (or d!1523629 b_lambda!184399)))

(declare-fun bs!1149049 () Bool)

(declare-fun d!1523889 () Bool)

(assert (= bs!1149049 (and d!1523889 d!1523629)))

(assert (=> bs!1149049 (= (dynLambda!21951 lambda!224386 (h!59898 (toList!6290 lt!1929547))) (noDuplicateKeys!2253 (_2!31060 (h!59898 (toList!6290 lt!1929547)))))))

(assert (=> bs!1149049 m!5738042))

(assert (=> b!4767110 d!1523889))

(declare-fun b_lambda!184401 () Bool)

(assert (= b_lambda!184361 (or (and b!4766704 b_free!129651) b_lambda!184401)))

(declare-fun b_lambda!184403 () Bool)

(assert (= b_lambda!184365 (or d!1523643 b_lambda!184403)))

(declare-fun bs!1149050 () Bool)

(declare-fun d!1523891 () Bool)

(assert (= bs!1149050 (and d!1523891 d!1523643)))

(assert (=> bs!1149050 (= (dynLambda!21951 lambda!224393 (tuple2!55533 (hash!4569 (hashF!12431 thiss!42052) key!1776) (apply!12626 lt!1929547 (hash!4569 (hashF!12431 thiss!42052) key!1776)))) (noDuplicateKeys!2253 (_2!31060 (tuple2!55533 (hash!4569 (hashF!12431 thiss!42052) key!1776) (apply!12626 lt!1929547 (hash!4569 (hashF!12431 thiss!42052) key!1776))))))))

(assert (=> bs!1149050 m!5738342))

(assert (=> d!1523725 d!1523891))

(declare-fun b_lambda!184405 () Bool)

(assert (= b_lambda!184363 (or b!4766846 b_lambda!184405)))

(declare-fun bs!1149051 () Bool)

(declare-fun d!1523893 () Bool)

(assert (= bs!1149051 (and d!1523893 b!4766846)))

(assert (=> bs!1149051 (= (dynLambda!21951 lambda!224399 (h!59898 (toList!6290 (map!11986 (v!47657 (underlying!10062 thiss!42052)))))) (noDuplicateKeys!2253 (_2!31060 (h!59898 (toList!6290 (map!11986 (v!47657 (underlying!10062 thiss!42052))))))))))

(declare-fun m!5738344 () Bool)

(assert (=> bs!1149051 m!5738344))

(assert (=> b!4767025 d!1523893))

(declare-fun b_lambda!184407 () Bool)

(assert (= b_lambda!184357 (or (and b!4766704 b_free!129651) b_lambda!184407)))

(declare-fun b_lambda!184409 () Bool)

(assert (= b_lambda!184381 (or b!4766873 b_lambda!184409)))

(declare-fun bs!1149052 () Bool)

(declare-fun d!1523895 () Bool)

(assert (= bs!1149052 (and d!1523895 b!4766873)))

(assert (=> bs!1149052 (= (dynLambda!21951 lambda!224402 (tuple2!55533 lt!1929722 (apply!12627 (v!47657 (underlying!10062 thiss!42052)) lt!1929722))) (noDuplicateKeys!2253 (_2!31060 (tuple2!55533 lt!1929722 (apply!12627 (v!47657 (underlying!10062 thiss!42052)) lt!1929722)))))))

(declare-fun m!5738346 () Bool)

(assert (=> bs!1149052 m!5738346))

(assert (=> d!1523863 d!1523895))

(declare-fun b_lambda!184411 () Bool)

(assert (= b_lambda!184377 (or b!4766698 b_lambda!184411)))

(assert (=> d!1523781 d!1523673))

(declare-fun b_lambda!184413 () Bool)

(assert (= b_lambda!184359 (or (and b!4766704 b_free!129651) b_lambda!184413)))

(check-sat (not b!4767198) (not bm!334221) (not b!4767172) (not b!4767018) (not d!1523693) (not b!4767195) (not b!4767093) (not b!4766953) (not d!1523849) (not b!4766955) (not d!1523771) (not b!4767132) (not b!4767090) (not d!1523699) (not b!4767141) (not b!4767042) (not b!4767136) (not d!1523721) (not b!4766926) (not b!4767123) (not d!1523791) (not d!1523875) (not d!1523679) (not b!4767062) (not b!4767209) (not d!1523795) (not b!4767204) (not b_lambda!184413) (not b!4767178) (not tb!257475) (not b!4766935) (not b!4767170) (not b!4767165) (not b!4767213) (not b_lambda!184399) (not d!1523871) (not b!4767215) (not b!4767065) (not b_lambda!184385) (not d!1523821) (not d!1523763) (not b!4767220) (not b!4767054) (not b_lambda!184411) (not b!4767202) (not bs!1149051) (not b!4767161) (not b!4767078) (not b!4767133) (not b!4767119) (not b_lambda!184389) (not b!4767047) (not b_next!130443) (not b!4767034) (not b!4767221) (not b!4767036) (not b!4767229) (not b!4767148) (not b!4767091) (not d!1523691) (not b!4767212) (not b!4767134) (not b!4767028) (not d!1523677) (not d!1523835) (not b!4767011) (not b!4766938) (not d!1523767) (not d!1523697) (not bs!1149049) (not b!4767122) (not bm!334198) (not b!4767218) (not b!4766940) (not b!4767139) (not d!1523695) (not d!1523727) (not d!1523863) (not b!4767033) (not b_lambda!184409) (not d!1523865) (not b!4767224) (not b!4767056) (not b!4767226) (not b!4767087) (not d!1523689) (not d!1523717) (not b_lambda!184401) (not bs!1149050) (not b!4766963) (not bm!334222) (not b!4766964) (not b!4766928) (not b!4767145) (not b!4766949) tp_is_empty!32449 (not b!4766941) (not d!1523715) (not b!4767163) (not bs!1149048) (not d!1523789) (not b_lambda!184387) tp_is_empty!32447 (not b!4767107) (not bm!334220) (not b!4767181) (not b!4767084) (not b!4767158) (not d!1523839) (not b!4766966) (not b!4767100) (not bm!334218) (not bs!1149046) (not d!1523847) (not b!4767095) (not d!1523709) (not d!1523877) (not d!1523747) (not d!1523813) (not b!4767151) (not d!1523803) (not b!4767192) (not d!1523701) (not b!4767146) (not b_lambda!184351) (not d!1523707) (not b!4766952) (not b!4767039) (not b!4767004) (not b_lambda!184405) (not b!4767167) (not d!1523801) (not b_lambda!184407) b_and!341369 (not d!1523769) (not d!1523681) (not d!1523773) (not b!4766939) (not b!4767116) (not bs!1149044) (not bs!1149052) (not b!4767162) (not b!4767211) (not b!4766925) (not b!4767214) (not b!4767228) (not d!1523779) (not b_next!130441) (not b!4767225) (not b!4767098) (not b!4767223) (not b!4767230) (not b!4767206) (not b!4767118) (not bs!1149045) (not d!1523811) (not b!4767175) (not b!4767099) (not d!1523711) (not d!1523759) (not b_lambda!184349) (not d!1523873) (not b!4767111) (not d!1523753) (not b!4767137) (not b!4767101) (not b!4767200) (not b!4767030) (not b_lambda!184353) (not mapNonEmpty!21864) (not bm!334217) (not d!1523819) (not d!1523793) (not b!4767113) (not b!4767053) (not b!4766965) (not d!1523755) (not d!1523853) (not d!1523723) (not d!1523745) (not d!1523841) (not b!4767216) (not b!4767205) (not b!4767135) (not b!4766929) (not b!4767150) (not b!4767109) (not b!4767120) (not b!4767171) (not b!4766957) (not b_lambda!184397) (not b!4767231) (not b!4766933) (not b!4767142) (not d!1523703) (not b!4766958) (not b!4767189) b_and!341359 (not b_lambda!184393) (not b!4767207) (not d!1523725) (not bm!334208) (not b!4767026) (not d!1523797) (not d!1523867) (not d!1523815) (not b!4767032) (not d!1523757) (not b!4767227) (not b!4766950) (not d!1523683) (not bm!334219) (not b!4766931) (not d!1523739) (not d!1523787) (not d!1523783) (not d!1523855) (not b_lambda!184391) (not b_lambda!184403) (not b!4767079) (not b!4767185) (not b!4767017) (not b!4767092) (not b!4767117) (not b_lambda!184395) (not b!4767126) (not b!4767143) (not d!1523685) (not b!4767124) (not b!4766960) (not b!4766927) (not b!4767080) (not b!4767077) (not bs!1149047) (not d!1523857) (not b!4767144) (not b!4767014) (not d!1523729) (not b!4767044) (not bm!334210))
(check-sat b_and!341359 b_and!341369 (not b_next!130443) (not b_next!130441))
