; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!488378 () Bool)

(assert start!488378)

(declare-fun b!4770788 () Bool)

(declare-fun b_free!129811 () Bool)

(declare-fun b_next!130601 () Bool)

(assert (=> b!4770788 (= b_free!129811 (not b_next!130601))))

(declare-fun tp!1356546 () Bool)

(declare-fun b_and!341563 () Bool)

(assert (=> b!4770788 (= tp!1356546 b_and!341563)))

(declare-fun b!4770792 () Bool)

(declare-fun b_free!129813 () Bool)

(declare-fun b_next!130603 () Bool)

(assert (=> b!4770792 (= b_free!129813 (not b_next!130603))))

(declare-fun tp!1356544 () Bool)

(declare-fun b_and!341565 () Bool)

(assert (=> b!4770792 (= tp!1356544 b_and!341565)))

(declare-fun b!4770783 () Bool)

(declare-fun res!2023372 () Bool)

(declare-fun e!2978183 () Bool)

(assert (=> b!4770783 (=> (not res!2023372) (not e!2978183))))

(declare-datatypes ((K!15059 0))(
  ( (K!15060 (val!20353 Int)) )
))
(declare-datatypes ((V!15305 0))(
  ( (V!15306 (val!20354 Int)) )
))
(declare-datatypes ((tuple2!55680 0))(
  ( (tuple2!55681 (_1!31134 K!15059) (_2!31134 V!15305)) )
))
(declare-datatypes ((List!53687 0))(
  ( (Nil!53563) (Cons!53563 (h!59975 tuple2!55680) (t!361135 List!53687)) )
))
(declare-datatypes ((tuple2!55682 0))(
  ( (tuple2!55683 (_1!31135 (_ BitVec 64)) (_2!31135 List!53687)) )
))
(declare-datatypes ((List!53688 0))(
  ( (Nil!53564) (Cons!53564 (h!59976 tuple2!55682) (t!361136 List!53688)) )
))
(declare-datatypes ((ListLongMap!4757 0))(
  ( (ListLongMap!4758 (toList!6343 List!53688)) )
))
(declare-fun lt!1933168 () ListLongMap!4757)

(declare-fun key!1776 () K!15059)

(declare-datatypes ((ListMap!5823 0))(
  ( (ListMap!5824 (toList!6344 List!53687)) )
))
(declare-fun contains!16938 (ListMap!5823 K!15059) Bool)

(declare-fun extractMap!2163 (List!53688) ListMap!5823)

(assert (=> b!4770783 (= res!2023372 (contains!16938 (extractMap!2163 (toList!6343 lt!1933168)) key!1776))))

(declare-fun res!2023375 () Bool)

(declare-fun e!2978175 () Bool)

(assert (=> start!488378 (=> (not res!2023375) (not e!2978175))))

(declare-datatypes ((array!18206 0))(
  ( (array!18207 (arr!8119 (Array (_ BitVec 32) (_ BitVec 64))) (size!36349 (_ BitVec 32))) )
))
(declare-datatypes ((array!18208 0))(
  ( (array!18209 (arr!8120 (Array (_ BitVec 32) List!53687)) (size!36350 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!6628 0))(
  ( (HashableExt!6627 (__x!32649 Int)) )
))
(declare-datatypes ((LongMapFixedSize!9934 0))(
  ( (LongMapFixedSize!9935 (defaultEntry!5385 Int) (mask!14746 (_ BitVec 32)) (extraKeys!5242 (_ BitVec 32)) (zeroValue!5255 List!53687) (minValue!5255 List!53687) (_size!9959 (_ BitVec 32)) (_keys!5309 array!18206) (_values!5280 array!18208) (_vacant!5032 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19633 0))(
  ( (Cell!19634 (v!47852 LongMapFixedSize!9934)) )
))
(declare-datatypes ((MutLongMap!4967 0))(
  ( (LongMap!4967 (underlying!10141 Cell!19633)) (MutLongMapExt!4966 (__x!32650 Int)) )
))
(declare-datatypes ((Cell!19635 0))(
  ( (Cell!19636 (v!47853 MutLongMap!4967)) )
))
(declare-datatypes ((MutableMap!4851 0))(
  ( (MutableMapExt!4850 (__x!32651 Int)) (HashMap!4851 (underlying!10142 Cell!19635) (hashF!12523 Hashable!6628) (_size!9960 (_ BitVec 32)) (defaultValue!5022 Int)) )
))
(declare-fun thiss!42052 () MutableMap!4851)

(get-info :version)

(assert (=> start!488378 (= res!2023375 ((_ is HashMap!4851) thiss!42052))))

(assert (=> start!488378 e!2978175))

(declare-fun e!2978182 () Bool)

(assert (=> start!488378 e!2978182))

(declare-fun tp_is_empty!32549 () Bool)

(assert (=> start!488378 tp_is_empty!32549))

(declare-fun b!4770784 () Bool)

(declare-fun e!2978184 () Bool)

(declare-fun e!2978178 () Bool)

(assert (=> b!4770784 (= e!2978184 e!2978178)))

(declare-fun b!4770785 () Bool)

(declare-fun e!2978177 () Bool)

(declare-fun tp!1356545 () Bool)

(declare-fun mapRes!22016 () Bool)

(assert (=> b!4770785 (= e!2978177 (and tp!1356545 mapRes!22016))))

(declare-fun condMapEmpty!22016 () Bool)

(declare-fun mapDefault!22016 () List!53687)

(assert (=> b!4770785 (= condMapEmpty!22016 (= (arr!8120 (_values!5280 (v!47852 (underlying!10141 (v!47853 (underlying!10142 thiss!42052)))))) ((as const (Array (_ BitVec 32) List!53687)) mapDefault!22016)))))

(declare-fun b!4770786 () Bool)

(declare-datatypes ((Option!12735 0))(
  ( (None!12734) (Some!12734 (v!47854 tuple2!55680)) )
))
(declare-fun lt!1933169 () Option!12735)

(declare-fun lt!1933183 () Option!12735)

(declare-fun get!18094 (Option!12735) tuple2!55680)

(assert (=> b!4770786 (= e!2978183 (not (= (_2!31134 (get!18094 lt!1933169)) (_2!31134 (get!18094 lt!1933183)))))))

(declare-fun isDefined!9881 (Option!12735) Bool)

(assert (=> b!4770786 (isDefined!9881 lt!1933169)))

(declare-fun lt!1933177 () List!53687)

(declare-fun getPair!664 (List!53687 K!15059) Option!12735)

(assert (=> b!4770786 (= lt!1933169 (getPair!664 lt!1933177 key!1776))))

(declare-datatypes ((Unit!138455 0))(
  ( (Unit!138456) )
))
(declare-fun lt!1933175 () Unit!138455)

(declare-fun lt!1933174 () tuple2!55682)

(declare-fun lambda!224928 () Int)

(declare-fun forallContained!3885 (List!53688 Int tuple2!55682) Unit!138455)

(assert (=> b!4770786 (= lt!1933175 (forallContained!3885 (toList!6343 lt!1933168) lambda!224928 lt!1933174))))

(declare-fun lt!1933184 () Unit!138455)

(declare-fun lemmaInGenMapThenGetPairDefined!438 (ListLongMap!4757 K!15059 Hashable!6628) Unit!138455)

(assert (=> b!4770786 (= lt!1933184 (lemmaInGenMapThenGetPairDefined!438 lt!1933168 key!1776 (hashF!12523 thiss!42052)))))

(declare-fun lt!1933179 () Unit!138455)

(assert (=> b!4770786 (= lt!1933179 (forallContained!3885 (toList!6343 lt!1933168) lambda!224928 lt!1933174))))

(declare-fun contains!16939 (List!53688 tuple2!55682) Bool)

(assert (=> b!4770786 (contains!16939 (toList!6343 lt!1933168) lt!1933174)))

(declare-fun lt!1933173 () (_ BitVec 64))

(assert (=> b!4770786 (= lt!1933174 (tuple2!55683 lt!1933173 lt!1933177))))

(declare-fun lt!1933171 () Unit!138455)

(declare-fun lemmaGetValueImpliesTupleContained!447 (ListLongMap!4757 (_ BitVec 64) List!53687) Unit!138455)

(assert (=> b!4770786 (= lt!1933171 (lemmaGetValueImpliesTupleContained!447 lt!1933168 lt!1933173 lt!1933177))))

(declare-fun apply!12677 (ListLongMap!4757 (_ BitVec 64)) List!53687)

(assert (=> b!4770786 (= lt!1933177 (apply!12677 lt!1933168 lt!1933173))))

(declare-fun contains!16940 (ListLongMap!4757 (_ BitVec 64)) Bool)

(assert (=> b!4770786 (contains!16940 lt!1933168 lt!1933173)))

(declare-fun lt!1933172 () Unit!138455)

(declare-fun lemmaInGenMapThenLongMapContainsHash!848 (ListLongMap!4757 K!15059 Hashable!6628) Unit!138455)

(assert (=> b!4770786 (= lt!1933172 (lemmaInGenMapThenLongMapContainsHash!848 lt!1933168 key!1776 (hashF!12523 thiss!42052)))))

(declare-fun b!4770787 () Bool)

(declare-fun res!2023376 () Bool)

(assert (=> b!4770787 (=> (not res!2023376) (not e!2978175))))

(declare-fun contains!16941 (MutableMap!4851 K!15059) Bool)

(assert (=> b!4770787 (= res!2023376 (contains!16941 thiss!42052 key!1776))))

(declare-fun tp!1356549 () Bool)

(declare-fun tp!1356547 () Bool)

(declare-fun array_inv!5849 (array!18206) Bool)

(declare-fun array_inv!5850 (array!18208) Bool)

(assert (=> b!4770788 (= e!2978178 (and tp!1356546 tp!1356549 tp!1356547 (array_inv!5849 (_keys!5309 (v!47852 (underlying!10141 (v!47853 (underlying!10142 thiss!42052)))))) (array_inv!5850 (_values!5280 (v!47852 (underlying!10141 (v!47853 (underlying!10142 thiss!42052)))))) e!2978177))))

(declare-fun b!4770789 () Bool)

(assert (=> b!4770789 (= e!2978175 e!2978183)))

(declare-fun res!2023373 () Bool)

(assert (=> b!4770789 (=> (not res!2023373) (not e!2978183))))

(declare-fun forall!11892 (List!53688 Int) Bool)

(assert (=> b!4770789 (= res!2023373 (forall!11892 (toList!6343 lt!1933168) lambda!224928))))

(declare-fun lt!1933170 () List!53687)

(assert (=> b!4770789 (= lt!1933183 (getPair!664 lt!1933170 key!1776))))

(declare-fun lt!1933180 () tuple2!55682)

(declare-fun lt!1933185 () Unit!138455)

(assert (=> b!4770789 (= lt!1933185 (forallContained!3885 (toList!6343 lt!1933168) lambda!224928 lt!1933180))))

(declare-fun lt!1933178 () Unit!138455)

(declare-fun e!2978179 () Unit!138455)

(assert (=> b!4770789 (= lt!1933178 e!2978179)))

(declare-fun c!813771 () Bool)

(assert (=> b!4770789 (= c!813771 (not (contains!16939 (toList!6343 lt!1933168) lt!1933180)))))

(assert (=> b!4770789 (= lt!1933180 (tuple2!55683 lt!1933173 lt!1933170))))

(declare-fun apply!12678 (MutLongMap!4967 (_ BitVec 64)) List!53687)

(assert (=> b!4770789 (= lt!1933170 (apply!12678 (v!47853 (underlying!10142 thiss!42052)) lt!1933173))))

(declare-fun map!12058 (MutLongMap!4967) ListLongMap!4757)

(assert (=> b!4770789 (= lt!1933168 (map!12058 (v!47853 (underlying!10142 thiss!42052))))))

(declare-fun hash!4605 (Hashable!6628 K!15059) (_ BitVec 64))

(assert (=> b!4770789 (= lt!1933173 (hash!4605 (hashF!12523 thiss!42052) key!1776))))

(declare-fun b!4770790 () Bool)

(declare-fun e!2978181 () Bool)

(assert (=> b!4770790 (= e!2978181 e!2978184)))

(declare-fun b!4770791 () Bool)

(declare-fun res!2023377 () Bool)

(assert (=> b!4770791 (=> (not res!2023377) (not e!2978175))))

(declare-fun valid!3975 (MutableMap!4851) Bool)

(assert (=> b!4770791 (= res!2023377 (valid!3975 thiss!42052))))

(declare-fun e!2978180 () Bool)

(assert (=> b!4770792 (= e!2978182 (and e!2978180 tp!1356544))))

(declare-fun mapIsEmpty!22016 () Bool)

(assert (=> mapIsEmpty!22016 mapRes!22016))

(declare-fun b!4770793 () Bool)

(declare-fun Unit!138457 () Unit!138455)

(assert (=> b!4770793 (= e!2978179 Unit!138457)))

(declare-fun b!4770794 () Bool)

(declare-fun Unit!138458 () Unit!138455)

(assert (=> b!4770794 (= e!2978179 Unit!138458)))

(declare-fun lt!1933176 () Unit!138455)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2015 (List!53688 (_ BitVec 64)) Unit!138455)

(assert (=> b!4770794 (= lt!1933176 (lemmaContainsKeyImpliesGetValueByKeyDefined!2015 (toList!6343 lt!1933168) lt!1933173))))

(declare-datatypes ((Option!12736 0))(
  ( (None!12735) (Some!12735 (v!47855 List!53687)) )
))
(declare-fun isDefined!9882 (Option!12736) Bool)

(declare-fun getValueByKey!2219 (List!53688 (_ BitVec 64)) Option!12736)

(assert (=> b!4770794 (isDefined!9882 (getValueByKey!2219 (toList!6343 lt!1933168) lt!1933173))))

(declare-fun lt!1933182 () Unit!138455)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!953 (List!53688 (_ BitVec 64) List!53687) Unit!138455)

(assert (=> b!4770794 (= lt!1933182 (lemmaGetValueByKeyImpliesContainsTuple!953 (toList!6343 lt!1933168) lt!1933173 lt!1933170))))

(assert (=> b!4770794 false))

(declare-fun b!4770795 () Bool)

(declare-fun lt!1933181 () MutLongMap!4967)

(assert (=> b!4770795 (= e!2978180 (and e!2978181 ((_ is LongMap!4967) lt!1933181)))))

(assert (=> b!4770795 (= lt!1933181 (v!47853 (underlying!10142 thiss!42052)))))

(declare-fun mapNonEmpty!22016 () Bool)

(declare-fun tp!1356543 () Bool)

(declare-fun tp!1356548 () Bool)

(assert (=> mapNonEmpty!22016 (= mapRes!22016 (and tp!1356543 tp!1356548))))

(declare-fun mapRest!22016 () (Array (_ BitVec 32) List!53687))

(declare-fun mapValue!22016 () List!53687)

(declare-fun mapKey!22016 () (_ BitVec 32))

(assert (=> mapNonEmpty!22016 (= (arr!8120 (_values!5280 (v!47852 (underlying!10141 (v!47853 (underlying!10142 thiss!42052)))))) (store mapRest!22016 mapKey!22016 mapValue!22016))))

(declare-fun b!4770796 () Bool)

(declare-fun res!2023374 () Bool)

(assert (=> b!4770796 (=> (not res!2023374) (not e!2978183))))

(declare-fun allKeysSameHashInMap!2033 (ListLongMap!4757 Hashable!6628) Bool)

(assert (=> b!4770796 (= res!2023374 (allKeysSameHashInMap!2033 lt!1933168 (hashF!12523 thiss!42052)))))

(assert (= (and start!488378 res!2023375) b!4770791))

(assert (= (and b!4770791 res!2023377) b!4770787))

(assert (= (and b!4770787 res!2023376) b!4770789))

(assert (= (and b!4770789 c!813771) b!4770794))

(assert (= (and b!4770789 (not c!813771)) b!4770793))

(assert (= (and b!4770789 res!2023373) b!4770796))

(assert (= (and b!4770796 res!2023374) b!4770783))

(assert (= (and b!4770783 res!2023372) b!4770786))

(assert (= (and b!4770785 condMapEmpty!22016) mapIsEmpty!22016))

(assert (= (and b!4770785 (not condMapEmpty!22016)) mapNonEmpty!22016))

(assert (= b!4770788 b!4770785))

(assert (= b!4770784 b!4770788))

(assert (= b!4770790 b!4770784))

(assert (= (and b!4770795 ((_ is LongMap!4967) (v!47853 (underlying!10142 thiss!42052)))) b!4770790))

(assert (= b!4770792 b!4770795))

(assert (= (and start!488378 ((_ is HashMap!4851) thiss!42052)) b!4770792))

(declare-fun m!5742520 () Bool)

(assert (=> b!4770796 m!5742520))

(declare-fun m!5742522 () Bool)

(assert (=> b!4770791 m!5742522))

(declare-fun m!5742524 () Bool)

(assert (=> b!4770787 m!5742524))

(declare-fun m!5742526 () Bool)

(assert (=> b!4770788 m!5742526))

(declare-fun m!5742528 () Bool)

(assert (=> b!4770788 m!5742528))

(declare-fun m!5742530 () Bool)

(assert (=> b!4770783 m!5742530))

(assert (=> b!4770783 m!5742530))

(declare-fun m!5742532 () Bool)

(assert (=> b!4770783 m!5742532))

(declare-fun m!5742534 () Bool)

(assert (=> b!4770794 m!5742534))

(declare-fun m!5742536 () Bool)

(assert (=> b!4770794 m!5742536))

(assert (=> b!4770794 m!5742536))

(declare-fun m!5742538 () Bool)

(assert (=> b!4770794 m!5742538))

(declare-fun m!5742540 () Bool)

(assert (=> b!4770794 m!5742540))

(declare-fun m!5742542 () Bool)

(assert (=> b!4770786 m!5742542))

(declare-fun m!5742544 () Bool)

(assert (=> b!4770786 m!5742544))

(declare-fun m!5742546 () Bool)

(assert (=> b!4770786 m!5742546))

(declare-fun m!5742548 () Bool)

(assert (=> b!4770786 m!5742548))

(declare-fun m!5742550 () Bool)

(assert (=> b!4770786 m!5742550))

(declare-fun m!5742552 () Bool)

(assert (=> b!4770786 m!5742552))

(declare-fun m!5742554 () Bool)

(assert (=> b!4770786 m!5742554))

(declare-fun m!5742556 () Bool)

(assert (=> b!4770786 m!5742556))

(declare-fun m!5742558 () Bool)

(assert (=> b!4770786 m!5742558))

(declare-fun m!5742560 () Bool)

(assert (=> b!4770786 m!5742560))

(assert (=> b!4770786 m!5742542))

(declare-fun m!5742562 () Bool)

(assert (=> b!4770786 m!5742562))

(declare-fun m!5742564 () Bool)

(assert (=> b!4770789 m!5742564))

(declare-fun m!5742566 () Bool)

(assert (=> b!4770789 m!5742566))

(declare-fun m!5742568 () Bool)

(assert (=> b!4770789 m!5742568))

(declare-fun m!5742570 () Bool)

(assert (=> b!4770789 m!5742570))

(declare-fun m!5742572 () Bool)

(assert (=> b!4770789 m!5742572))

(declare-fun m!5742574 () Bool)

(assert (=> b!4770789 m!5742574))

(declare-fun m!5742576 () Bool)

(assert (=> b!4770789 m!5742576))

(declare-fun m!5742578 () Bool)

(assert (=> mapNonEmpty!22016 m!5742578))

(check-sat (not mapNonEmpty!22016) (not b!4770791) (not b!4770787) (not b!4770794) (not b_next!130603) (not b!4770786) (not b!4770789) tp_is_empty!32549 (not b!4770785) (not b!4770796) (not b!4770783) (not b_next!130601) (not b!4770788) b_and!341565 b_and!341563)
(check-sat b_and!341565 b_and!341563 (not b_next!130603) (not b_next!130601))
(get-model)

(declare-fun d!1524787 () Bool)

(declare-fun res!2023382 () Bool)

(declare-fun e!2978189 () Bool)

(assert (=> d!1524787 (=> res!2023382 e!2978189)))

(assert (=> d!1524787 (= res!2023382 ((_ is Nil!53564) (toList!6343 lt!1933168)))))

(assert (=> d!1524787 (= (forall!11892 (toList!6343 lt!1933168) lambda!224928) e!2978189)))

(declare-fun b!4770801 () Bool)

(declare-fun e!2978190 () Bool)

(assert (=> b!4770801 (= e!2978189 e!2978190)))

(declare-fun res!2023383 () Bool)

(assert (=> b!4770801 (=> (not res!2023383) (not e!2978190))))

(declare-fun dynLambda!21970 (Int tuple2!55682) Bool)

(assert (=> b!4770801 (= res!2023383 (dynLambda!21970 lambda!224928 (h!59976 (toList!6343 lt!1933168))))))

(declare-fun b!4770802 () Bool)

(assert (=> b!4770802 (= e!2978190 (forall!11892 (t!361136 (toList!6343 lt!1933168)) lambda!224928))))

(assert (= (and d!1524787 (not res!2023382)) b!4770801))

(assert (= (and b!4770801 res!2023383) b!4770802))

(declare-fun b_lambda!184619 () Bool)

(assert (=> (not b_lambda!184619) (not b!4770801)))

(declare-fun m!5742580 () Bool)

(assert (=> b!4770801 m!5742580))

(declare-fun m!5742582 () Bool)

(assert (=> b!4770802 m!5742582))

(assert (=> b!4770789 d!1524787))

(declare-fun d!1524789 () Bool)

(assert (=> d!1524789 (dynLambda!21970 lambda!224928 lt!1933180)))

(declare-fun lt!1933188 () Unit!138455)

(declare-fun choose!34031 (List!53688 Int tuple2!55682) Unit!138455)

(assert (=> d!1524789 (= lt!1933188 (choose!34031 (toList!6343 lt!1933168) lambda!224928 lt!1933180))))

(declare-fun e!2978193 () Bool)

(assert (=> d!1524789 e!2978193))

(declare-fun res!2023386 () Bool)

(assert (=> d!1524789 (=> (not res!2023386) (not e!2978193))))

(assert (=> d!1524789 (= res!2023386 (forall!11892 (toList!6343 lt!1933168) lambda!224928))))

(assert (=> d!1524789 (= (forallContained!3885 (toList!6343 lt!1933168) lambda!224928 lt!1933180) lt!1933188)))

(declare-fun b!4770805 () Bool)

(assert (=> b!4770805 (= e!2978193 (contains!16939 (toList!6343 lt!1933168) lt!1933180))))

(assert (= (and d!1524789 res!2023386) b!4770805))

(declare-fun b_lambda!184621 () Bool)

(assert (=> (not b_lambda!184621) (not d!1524789)))

(declare-fun m!5742584 () Bool)

(assert (=> d!1524789 m!5742584))

(declare-fun m!5742586 () Bool)

(assert (=> d!1524789 m!5742586))

(assert (=> d!1524789 m!5742570))

(assert (=> b!4770805 m!5742566))

(assert (=> b!4770789 d!1524789))

(declare-fun b!4770822 () Bool)

(declare-fun e!2978205 () Bool)

(declare-fun containsKey!3686 (List!53687 K!15059) Bool)

(assert (=> b!4770822 (= e!2978205 (not (containsKey!3686 lt!1933170 key!1776)))))

(declare-fun b!4770823 () Bool)

(declare-fun e!2978204 () Option!12735)

(assert (=> b!4770823 (= e!2978204 None!12734)))

(declare-fun b!4770825 () Bool)

(declare-fun e!2978208 () Option!12735)

(assert (=> b!4770825 (= e!2978208 (Some!12734 (h!59975 lt!1933170)))))

(declare-fun b!4770826 () Bool)

(assert (=> b!4770826 (= e!2978208 e!2978204)))

(declare-fun c!813777 () Bool)

(assert (=> b!4770826 (= c!813777 ((_ is Cons!53563) lt!1933170))))

(declare-fun b!4770827 () Bool)

(declare-fun e!2978206 () Bool)

(declare-fun e!2978207 () Bool)

(assert (=> b!4770827 (= e!2978206 e!2978207)))

(declare-fun res!2023398 () Bool)

(assert (=> b!4770827 (=> (not res!2023398) (not e!2978207))))

(declare-fun lt!1933191 () Option!12735)

(assert (=> b!4770827 (= res!2023398 (isDefined!9881 lt!1933191))))

(declare-fun b!4770828 () Bool)

(assert (=> b!4770828 (= e!2978204 (getPair!664 (t!361135 lt!1933170) key!1776))))

(declare-fun b!4770829 () Bool)

(declare-fun res!2023397 () Bool)

(assert (=> b!4770829 (=> (not res!2023397) (not e!2978207))))

(assert (=> b!4770829 (= res!2023397 (= (_1!31134 (get!18094 lt!1933191)) key!1776))))

(declare-fun b!4770824 () Bool)

(declare-fun contains!16942 (List!53687 tuple2!55680) Bool)

(assert (=> b!4770824 (= e!2978207 (contains!16942 lt!1933170 (get!18094 lt!1933191)))))

(declare-fun d!1524791 () Bool)

(assert (=> d!1524791 e!2978206))

(declare-fun res!2023396 () Bool)

(assert (=> d!1524791 (=> res!2023396 e!2978206)))

(assert (=> d!1524791 (= res!2023396 e!2978205)))

(declare-fun res!2023395 () Bool)

(assert (=> d!1524791 (=> (not res!2023395) (not e!2978205))))

(declare-fun isEmpty!29300 (Option!12735) Bool)

(assert (=> d!1524791 (= res!2023395 (isEmpty!29300 lt!1933191))))

(assert (=> d!1524791 (= lt!1933191 e!2978208)))

(declare-fun c!813776 () Bool)

(assert (=> d!1524791 (= c!813776 (and ((_ is Cons!53563) lt!1933170) (= (_1!31134 (h!59975 lt!1933170)) key!1776)))))

(declare-fun noDuplicateKeys!2263 (List!53687) Bool)

(assert (=> d!1524791 (noDuplicateKeys!2263 lt!1933170)))

(assert (=> d!1524791 (= (getPair!664 lt!1933170 key!1776) lt!1933191)))

(assert (= (and d!1524791 c!813776) b!4770825))

(assert (= (and d!1524791 (not c!813776)) b!4770826))

(assert (= (and b!4770826 c!813777) b!4770828))

(assert (= (and b!4770826 (not c!813777)) b!4770823))

(assert (= (and d!1524791 res!2023395) b!4770822))

(assert (= (and d!1524791 (not res!2023396)) b!4770827))

(assert (= (and b!4770827 res!2023398) b!4770829))

(assert (= (and b!4770829 res!2023397) b!4770824))

(declare-fun m!5742588 () Bool)

(assert (=> b!4770828 m!5742588))

(declare-fun m!5742590 () Bool)

(assert (=> b!4770827 m!5742590))

(declare-fun m!5742592 () Bool)

(assert (=> b!4770829 m!5742592))

(declare-fun m!5742594 () Bool)

(assert (=> b!4770822 m!5742594))

(assert (=> b!4770824 m!5742592))

(assert (=> b!4770824 m!5742592))

(declare-fun m!5742596 () Bool)

(assert (=> b!4770824 m!5742596))

(declare-fun m!5742598 () Bool)

(assert (=> d!1524791 m!5742598))

(declare-fun m!5742600 () Bool)

(assert (=> d!1524791 m!5742600))

(assert (=> b!4770789 d!1524791))

(declare-fun d!1524793 () Bool)

(declare-fun map!12059 (LongMapFixedSize!9934) ListLongMap!4757)

(assert (=> d!1524793 (= (map!12058 (v!47853 (underlying!10142 thiss!42052))) (map!12059 (v!47852 (underlying!10141 (v!47853 (underlying!10142 thiss!42052))))))))

(declare-fun bs!1149515 () Bool)

(assert (= bs!1149515 d!1524793))

(declare-fun m!5742602 () Bool)

(assert (=> bs!1149515 m!5742602))

(assert (=> b!4770789 d!1524793))

(declare-fun d!1524795 () Bool)

(declare-fun e!2978211 () Bool)

(assert (=> d!1524795 e!2978211))

(declare-fun c!813780 () Bool)

(declare-fun contains!16943 (MutLongMap!4967 (_ BitVec 64)) Bool)

(assert (=> d!1524795 (= c!813780 (contains!16943 (v!47853 (underlying!10142 thiss!42052)) lt!1933173))))

(declare-fun lt!1933194 () List!53687)

(declare-fun apply!12679 (LongMapFixedSize!9934 (_ BitVec 64)) List!53687)

(assert (=> d!1524795 (= lt!1933194 (apply!12679 (v!47852 (underlying!10141 (v!47853 (underlying!10142 thiss!42052)))) lt!1933173))))

(declare-fun valid!3976 (MutLongMap!4967) Bool)

(assert (=> d!1524795 (valid!3976 (v!47853 (underlying!10142 thiss!42052)))))

(assert (=> d!1524795 (= (apply!12678 (v!47853 (underlying!10142 thiss!42052)) lt!1933173) lt!1933194)))

(declare-fun b!4770834 () Bool)

(declare-fun get!18095 (Option!12736) List!53687)

(assert (=> b!4770834 (= e!2978211 (= lt!1933194 (get!18095 (getValueByKey!2219 (toList!6343 (map!12058 (v!47853 (underlying!10142 thiss!42052)))) lt!1933173))))))

(declare-fun b!4770835 () Bool)

(declare-fun dynLambda!21971 (Int (_ BitVec 64)) List!53687)

(assert (=> b!4770835 (= e!2978211 (= lt!1933194 (dynLambda!21971 (defaultEntry!5385 (v!47852 (underlying!10141 (v!47853 (underlying!10142 thiss!42052))))) lt!1933173)))))

(assert (=> b!4770835 ((_ is LongMap!4967) (v!47853 (underlying!10142 thiss!42052)))))

(assert (= (and d!1524795 c!813780) b!4770834))

(assert (= (and d!1524795 (not c!813780)) b!4770835))

(declare-fun b_lambda!184623 () Bool)

(assert (=> (not b_lambda!184623) (not b!4770835)))

(declare-fun t!361138 () Bool)

(declare-fun tb!257501 () Bool)

(assert (=> (and b!4770788 (= (defaultEntry!5385 (v!47852 (underlying!10141 (v!47853 (underlying!10142 thiss!42052))))) (defaultEntry!5385 (v!47852 (underlying!10141 (v!47853 (underlying!10142 thiss!42052)))))) t!361138) tb!257501))

(assert (=> b!4770835 t!361138))

(declare-fun result!319180 () Bool)

(declare-fun b_and!341567 () Bool)

(assert (= b_and!341563 (and (=> t!361138 result!319180) b_and!341567)))

(declare-fun m!5742604 () Bool)

(assert (=> d!1524795 m!5742604))

(declare-fun m!5742606 () Bool)

(assert (=> d!1524795 m!5742606))

(declare-fun m!5742608 () Bool)

(assert (=> d!1524795 m!5742608))

(assert (=> b!4770834 m!5742568))

(declare-fun m!5742610 () Bool)

(assert (=> b!4770834 m!5742610))

(assert (=> b!4770834 m!5742610))

(declare-fun m!5742612 () Bool)

(assert (=> b!4770834 m!5742612))

(declare-fun m!5742614 () Bool)

(assert (=> b!4770835 m!5742614))

(assert (=> b!4770789 d!1524795))

(declare-fun d!1524797 () Bool)

(declare-fun hash!4606 (Hashable!6628 K!15059) (_ BitVec 64))

(assert (=> d!1524797 (= (hash!4605 (hashF!12523 thiss!42052) key!1776) (hash!4606 (hashF!12523 thiss!42052) key!1776))))

(declare-fun bs!1149516 () Bool)

(assert (= bs!1149516 d!1524797))

(declare-fun m!5742616 () Bool)

(assert (=> bs!1149516 m!5742616))

(assert (=> b!4770789 d!1524797))

(declare-fun d!1524799 () Bool)

(declare-fun lt!1933197 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9601 (List!53688) (InoxSet tuple2!55682))

(assert (=> d!1524799 (= lt!1933197 (select (content!9601 (toList!6343 lt!1933168)) lt!1933180))))

(declare-fun e!2978216 () Bool)

(assert (=> d!1524799 (= lt!1933197 e!2978216)))

(declare-fun res!2023404 () Bool)

(assert (=> d!1524799 (=> (not res!2023404) (not e!2978216))))

(assert (=> d!1524799 (= res!2023404 ((_ is Cons!53564) (toList!6343 lt!1933168)))))

(assert (=> d!1524799 (= (contains!16939 (toList!6343 lt!1933168) lt!1933180) lt!1933197)))

(declare-fun b!4770840 () Bool)

(declare-fun e!2978217 () Bool)

(assert (=> b!4770840 (= e!2978216 e!2978217)))

(declare-fun res!2023403 () Bool)

(assert (=> b!4770840 (=> res!2023403 e!2978217)))

(assert (=> b!4770840 (= res!2023403 (= (h!59976 (toList!6343 lt!1933168)) lt!1933180))))

(declare-fun b!4770841 () Bool)

(assert (=> b!4770841 (= e!2978217 (contains!16939 (t!361136 (toList!6343 lt!1933168)) lt!1933180))))

(assert (= (and d!1524799 res!2023404) b!4770840))

(assert (= (and b!4770840 (not res!2023403)) b!4770841))

(declare-fun m!5742618 () Bool)

(assert (=> d!1524799 m!5742618))

(declare-fun m!5742620 () Bool)

(assert (=> d!1524799 m!5742620))

(declare-fun m!5742622 () Bool)

(assert (=> b!4770841 m!5742622))

(assert (=> b!4770789 d!1524799))

(declare-fun d!1524801 () Bool)

(assert (=> d!1524801 (isDefined!9882 (getValueByKey!2219 (toList!6343 lt!1933168) lt!1933173))))

(declare-fun lt!1933200 () Unit!138455)

(declare-fun choose!34032 (List!53688 (_ BitVec 64)) Unit!138455)

(assert (=> d!1524801 (= lt!1933200 (choose!34032 (toList!6343 lt!1933168) lt!1933173))))

(declare-fun e!2978220 () Bool)

(assert (=> d!1524801 e!2978220))

(declare-fun res!2023407 () Bool)

(assert (=> d!1524801 (=> (not res!2023407) (not e!2978220))))

(declare-fun isStrictlySorted!819 (List!53688) Bool)

(assert (=> d!1524801 (= res!2023407 (isStrictlySorted!819 (toList!6343 lt!1933168)))))

(assert (=> d!1524801 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2015 (toList!6343 lt!1933168) lt!1933173) lt!1933200)))

(declare-fun b!4770844 () Bool)

(declare-fun containsKey!3687 (List!53688 (_ BitVec 64)) Bool)

(assert (=> b!4770844 (= e!2978220 (containsKey!3687 (toList!6343 lt!1933168) lt!1933173))))

(assert (= (and d!1524801 res!2023407) b!4770844))

(assert (=> d!1524801 m!5742536))

(assert (=> d!1524801 m!5742536))

(assert (=> d!1524801 m!5742538))

(declare-fun m!5742624 () Bool)

(assert (=> d!1524801 m!5742624))

(declare-fun m!5742626 () Bool)

(assert (=> d!1524801 m!5742626))

(declare-fun m!5742628 () Bool)

(assert (=> b!4770844 m!5742628))

(assert (=> b!4770794 d!1524801))

(declare-fun d!1524803 () Bool)

(declare-fun isEmpty!29301 (Option!12736) Bool)

(assert (=> d!1524803 (= (isDefined!9882 (getValueByKey!2219 (toList!6343 lt!1933168) lt!1933173)) (not (isEmpty!29301 (getValueByKey!2219 (toList!6343 lt!1933168) lt!1933173))))))

(declare-fun bs!1149517 () Bool)

(assert (= bs!1149517 d!1524803))

(assert (=> bs!1149517 m!5742536))

(declare-fun m!5742630 () Bool)

(assert (=> bs!1149517 m!5742630))

(assert (=> b!4770794 d!1524803))

(declare-fun b!4770853 () Bool)

(declare-fun e!2978225 () Option!12736)

(assert (=> b!4770853 (= e!2978225 (Some!12735 (_2!31135 (h!59976 (toList!6343 lt!1933168)))))))

(declare-fun b!4770856 () Bool)

(declare-fun e!2978226 () Option!12736)

(assert (=> b!4770856 (= e!2978226 None!12735)))

(declare-fun b!4770855 () Bool)

(assert (=> b!4770855 (= e!2978226 (getValueByKey!2219 (t!361136 (toList!6343 lt!1933168)) lt!1933173))))

(declare-fun b!4770854 () Bool)

(assert (=> b!4770854 (= e!2978225 e!2978226)))

(declare-fun c!813786 () Bool)

(assert (=> b!4770854 (= c!813786 (and ((_ is Cons!53564) (toList!6343 lt!1933168)) (not (= (_1!31135 (h!59976 (toList!6343 lt!1933168))) lt!1933173))))))

(declare-fun d!1524805 () Bool)

(declare-fun c!813785 () Bool)

(assert (=> d!1524805 (= c!813785 (and ((_ is Cons!53564) (toList!6343 lt!1933168)) (= (_1!31135 (h!59976 (toList!6343 lt!1933168))) lt!1933173)))))

(assert (=> d!1524805 (= (getValueByKey!2219 (toList!6343 lt!1933168) lt!1933173) e!2978225)))

(assert (= (and d!1524805 c!813785) b!4770853))

(assert (= (and d!1524805 (not c!813785)) b!4770854))

(assert (= (and b!4770854 c!813786) b!4770855))

(assert (= (and b!4770854 (not c!813786)) b!4770856))

(declare-fun m!5742632 () Bool)

(assert (=> b!4770855 m!5742632))

(assert (=> b!4770794 d!1524805))

(declare-fun d!1524807 () Bool)

(assert (=> d!1524807 (contains!16939 (toList!6343 lt!1933168) (tuple2!55683 lt!1933173 lt!1933170))))

(declare-fun lt!1933203 () Unit!138455)

(declare-fun choose!34033 (List!53688 (_ BitVec 64) List!53687) Unit!138455)

(assert (=> d!1524807 (= lt!1933203 (choose!34033 (toList!6343 lt!1933168) lt!1933173 lt!1933170))))

(declare-fun e!2978229 () Bool)

(assert (=> d!1524807 e!2978229))

(declare-fun res!2023410 () Bool)

(assert (=> d!1524807 (=> (not res!2023410) (not e!2978229))))

(assert (=> d!1524807 (= res!2023410 (isStrictlySorted!819 (toList!6343 lt!1933168)))))

(assert (=> d!1524807 (= (lemmaGetValueByKeyImpliesContainsTuple!953 (toList!6343 lt!1933168) lt!1933173 lt!1933170) lt!1933203)))

(declare-fun b!4770859 () Bool)

(assert (=> b!4770859 (= e!2978229 (= (getValueByKey!2219 (toList!6343 lt!1933168) lt!1933173) (Some!12735 lt!1933170)))))

(assert (= (and d!1524807 res!2023410) b!4770859))

(declare-fun m!5742634 () Bool)

(assert (=> d!1524807 m!5742634))

(declare-fun m!5742636 () Bool)

(assert (=> d!1524807 m!5742636))

(assert (=> d!1524807 m!5742626))

(assert (=> b!4770859 m!5742536))

(assert (=> b!4770794 d!1524807))

(declare-fun d!1524809 () Bool)

(assert (=> d!1524809 (= (apply!12677 lt!1933168 lt!1933173) (get!18095 (getValueByKey!2219 (toList!6343 lt!1933168) lt!1933173)))))

(declare-fun bs!1149518 () Bool)

(assert (= bs!1149518 d!1524809))

(assert (=> bs!1149518 m!5742536))

(assert (=> bs!1149518 m!5742536))

(declare-fun m!5742638 () Bool)

(assert (=> bs!1149518 m!5742638))

(assert (=> b!4770786 d!1524809))

(declare-fun d!1524811 () Bool)

(assert (=> d!1524811 (dynLambda!21970 lambda!224928 lt!1933174)))

(declare-fun lt!1933204 () Unit!138455)

(assert (=> d!1524811 (= lt!1933204 (choose!34031 (toList!6343 lt!1933168) lambda!224928 lt!1933174))))

(declare-fun e!2978230 () Bool)

(assert (=> d!1524811 e!2978230))

(declare-fun res!2023411 () Bool)

(assert (=> d!1524811 (=> (not res!2023411) (not e!2978230))))

(assert (=> d!1524811 (= res!2023411 (forall!11892 (toList!6343 lt!1933168) lambda!224928))))

(assert (=> d!1524811 (= (forallContained!3885 (toList!6343 lt!1933168) lambda!224928 lt!1933174) lt!1933204)))

(declare-fun b!4770860 () Bool)

(assert (=> b!4770860 (= e!2978230 (contains!16939 (toList!6343 lt!1933168) lt!1933174))))

(assert (= (and d!1524811 res!2023411) b!4770860))

(declare-fun b_lambda!184625 () Bool)

(assert (=> (not b_lambda!184625) (not d!1524811)))

(declare-fun m!5742640 () Bool)

(assert (=> d!1524811 m!5742640))

(declare-fun m!5742642 () Bool)

(assert (=> d!1524811 m!5742642))

(assert (=> d!1524811 m!5742570))

(assert (=> b!4770860 m!5742548))

(assert (=> b!4770786 d!1524811))

(declare-fun b!4770861 () Bool)

(declare-fun e!2978232 () Bool)

(assert (=> b!4770861 (= e!2978232 (not (containsKey!3686 lt!1933177 key!1776)))))

(declare-fun b!4770862 () Bool)

(declare-fun e!2978231 () Option!12735)

(assert (=> b!4770862 (= e!2978231 None!12734)))

(declare-fun b!4770864 () Bool)

(declare-fun e!2978235 () Option!12735)

(assert (=> b!4770864 (= e!2978235 (Some!12734 (h!59975 lt!1933177)))))

(declare-fun b!4770865 () Bool)

(assert (=> b!4770865 (= e!2978235 e!2978231)))

(declare-fun c!813788 () Bool)

(assert (=> b!4770865 (= c!813788 ((_ is Cons!53563) lt!1933177))))

(declare-fun b!4770866 () Bool)

(declare-fun e!2978233 () Bool)

(declare-fun e!2978234 () Bool)

(assert (=> b!4770866 (= e!2978233 e!2978234)))

(declare-fun res!2023415 () Bool)

(assert (=> b!4770866 (=> (not res!2023415) (not e!2978234))))

(declare-fun lt!1933205 () Option!12735)

(assert (=> b!4770866 (= res!2023415 (isDefined!9881 lt!1933205))))

(declare-fun b!4770867 () Bool)

(assert (=> b!4770867 (= e!2978231 (getPair!664 (t!361135 lt!1933177) key!1776))))

(declare-fun b!4770868 () Bool)

(declare-fun res!2023414 () Bool)

(assert (=> b!4770868 (=> (not res!2023414) (not e!2978234))))

(assert (=> b!4770868 (= res!2023414 (= (_1!31134 (get!18094 lt!1933205)) key!1776))))

(declare-fun b!4770863 () Bool)

(assert (=> b!4770863 (= e!2978234 (contains!16942 lt!1933177 (get!18094 lt!1933205)))))

(declare-fun d!1524813 () Bool)

(assert (=> d!1524813 e!2978233))

(declare-fun res!2023413 () Bool)

(assert (=> d!1524813 (=> res!2023413 e!2978233)))

(assert (=> d!1524813 (= res!2023413 e!2978232)))

(declare-fun res!2023412 () Bool)

(assert (=> d!1524813 (=> (not res!2023412) (not e!2978232))))

(assert (=> d!1524813 (= res!2023412 (isEmpty!29300 lt!1933205))))

(assert (=> d!1524813 (= lt!1933205 e!2978235)))

(declare-fun c!813787 () Bool)

(assert (=> d!1524813 (= c!813787 (and ((_ is Cons!53563) lt!1933177) (= (_1!31134 (h!59975 lt!1933177)) key!1776)))))

(assert (=> d!1524813 (noDuplicateKeys!2263 lt!1933177)))

(assert (=> d!1524813 (= (getPair!664 lt!1933177 key!1776) lt!1933205)))

(assert (= (and d!1524813 c!813787) b!4770864))

(assert (= (and d!1524813 (not c!813787)) b!4770865))

(assert (= (and b!4770865 c!813788) b!4770867))

(assert (= (and b!4770865 (not c!813788)) b!4770862))

(assert (= (and d!1524813 res!2023412) b!4770861))

(assert (= (and d!1524813 (not res!2023413)) b!4770866))

(assert (= (and b!4770866 res!2023415) b!4770868))

(assert (= (and b!4770868 res!2023414) b!4770863))

(declare-fun m!5742644 () Bool)

(assert (=> b!4770867 m!5742644))

(declare-fun m!5742646 () Bool)

(assert (=> b!4770866 m!5742646))

(declare-fun m!5742648 () Bool)

(assert (=> b!4770868 m!5742648))

(declare-fun m!5742650 () Bool)

(assert (=> b!4770861 m!5742650))

(assert (=> b!4770863 m!5742648))

(assert (=> b!4770863 m!5742648))

(declare-fun m!5742652 () Bool)

(assert (=> b!4770863 m!5742652))

(declare-fun m!5742654 () Bool)

(assert (=> d!1524813 m!5742654))

(declare-fun m!5742656 () Bool)

(assert (=> d!1524813 m!5742656))

(assert (=> b!4770786 d!1524813))

(declare-fun d!1524815 () Bool)

(assert (=> d!1524815 (= (get!18094 lt!1933169) (v!47854 lt!1933169))))

(assert (=> b!4770786 d!1524815))

(declare-fun d!1524817 () Bool)

(assert (=> d!1524817 (contains!16939 (toList!6343 lt!1933168) (tuple2!55683 lt!1933173 lt!1933177))))

(declare-fun lt!1933208 () Unit!138455)

(declare-fun choose!34034 (ListLongMap!4757 (_ BitVec 64) List!53687) Unit!138455)

(assert (=> d!1524817 (= lt!1933208 (choose!34034 lt!1933168 lt!1933173 lt!1933177))))

(assert (=> d!1524817 (contains!16940 lt!1933168 lt!1933173)))

(assert (=> d!1524817 (= (lemmaGetValueImpliesTupleContained!447 lt!1933168 lt!1933173 lt!1933177) lt!1933208)))

(declare-fun bs!1149519 () Bool)

(assert (= bs!1149519 d!1524817))

(declare-fun m!5742658 () Bool)

(assert (=> bs!1149519 m!5742658))

(declare-fun m!5742660 () Bool)

(assert (=> bs!1149519 m!5742660))

(assert (=> bs!1149519 m!5742558))

(assert (=> b!4770786 d!1524817))

(declare-fun d!1524819 () Bool)

(declare-fun e!2978240 () Bool)

(assert (=> d!1524819 e!2978240))

(declare-fun res!2023418 () Bool)

(assert (=> d!1524819 (=> res!2023418 e!2978240)))

(declare-fun lt!1933220 () Bool)

(assert (=> d!1524819 (= res!2023418 (not lt!1933220))))

(declare-fun lt!1933218 () Bool)

(assert (=> d!1524819 (= lt!1933220 lt!1933218)))

(declare-fun lt!1933219 () Unit!138455)

(declare-fun e!2978241 () Unit!138455)

(assert (=> d!1524819 (= lt!1933219 e!2978241)))

(declare-fun c!813791 () Bool)

(assert (=> d!1524819 (= c!813791 lt!1933218)))

(assert (=> d!1524819 (= lt!1933218 (containsKey!3687 (toList!6343 lt!1933168) lt!1933173))))

(assert (=> d!1524819 (= (contains!16940 lt!1933168 lt!1933173) lt!1933220)))

(declare-fun b!4770876 () Bool)

(declare-fun lt!1933217 () Unit!138455)

(assert (=> b!4770876 (= e!2978241 lt!1933217)))

(assert (=> b!4770876 (= lt!1933217 (lemmaContainsKeyImpliesGetValueByKeyDefined!2015 (toList!6343 lt!1933168) lt!1933173))))

(assert (=> b!4770876 (isDefined!9882 (getValueByKey!2219 (toList!6343 lt!1933168) lt!1933173))))

(declare-fun b!4770877 () Bool)

(declare-fun Unit!138459 () Unit!138455)

(assert (=> b!4770877 (= e!2978241 Unit!138459)))

(declare-fun b!4770878 () Bool)

(assert (=> b!4770878 (= e!2978240 (isDefined!9882 (getValueByKey!2219 (toList!6343 lt!1933168) lt!1933173)))))

(assert (= (and d!1524819 c!813791) b!4770876))

(assert (= (and d!1524819 (not c!813791)) b!4770877))

(assert (= (and d!1524819 (not res!2023418)) b!4770878))

(assert (=> d!1524819 m!5742628))

(assert (=> b!4770876 m!5742534))

(assert (=> b!4770876 m!5742536))

(assert (=> b!4770876 m!5742536))

(assert (=> b!4770876 m!5742538))

(assert (=> b!4770878 m!5742536))

(assert (=> b!4770878 m!5742536))

(assert (=> b!4770878 m!5742538))

(assert (=> b!4770786 d!1524819))

(declare-fun bs!1149520 () Bool)

(declare-fun d!1524821 () Bool)

(assert (= bs!1149520 (and d!1524821 b!4770789)))

(declare-fun lambda!224931 () Int)

(assert (=> bs!1149520 (= lambda!224931 lambda!224928)))

(assert (=> d!1524821 (contains!16940 lt!1933168 (hash!4605 (hashF!12523 thiss!42052) key!1776))))

(declare-fun lt!1933223 () Unit!138455)

(declare-fun choose!34035 (ListLongMap!4757 K!15059 Hashable!6628) Unit!138455)

(assert (=> d!1524821 (= lt!1933223 (choose!34035 lt!1933168 key!1776 (hashF!12523 thiss!42052)))))

(assert (=> d!1524821 (forall!11892 (toList!6343 lt!1933168) lambda!224931)))

(assert (=> d!1524821 (= (lemmaInGenMapThenLongMapContainsHash!848 lt!1933168 key!1776 (hashF!12523 thiss!42052)) lt!1933223)))

(declare-fun bs!1149521 () Bool)

(assert (= bs!1149521 d!1524821))

(assert (=> bs!1149521 m!5742574))

(assert (=> bs!1149521 m!5742574))

(declare-fun m!5742662 () Bool)

(assert (=> bs!1149521 m!5742662))

(declare-fun m!5742664 () Bool)

(assert (=> bs!1149521 m!5742664))

(declare-fun m!5742666 () Bool)

(assert (=> bs!1149521 m!5742666))

(assert (=> b!4770786 d!1524821))

(declare-fun bs!1149522 () Bool)

(declare-fun d!1524823 () Bool)

(assert (= bs!1149522 (and d!1524823 b!4770789)))

(declare-fun lambda!224938 () Int)

(assert (=> bs!1149522 (= lambda!224938 lambda!224928)))

(declare-fun bs!1149523 () Bool)

(assert (= bs!1149523 (and d!1524823 d!1524821)))

(assert (=> bs!1149523 (= lambda!224938 lambda!224931)))

(declare-fun e!2978246 () Bool)

(assert (=> d!1524823 e!2978246))

(declare-fun res!2023430 () Bool)

(assert (=> d!1524823 (=> (not res!2023430) (not e!2978246))))

(assert (=> d!1524823 (= res!2023430 (forall!11892 (toList!6343 lt!1933168) lambda!224938))))

(declare-fun lt!1933247 () Unit!138455)

(declare-fun choose!34036 (ListLongMap!4757 K!15059 Hashable!6628) Unit!138455)

(assert (=> d!1524823 (= lt!1933247 (choose!34036 lt!1933168 key!1776 (hashF!12523 thiss!42052)))))

(assert (=> d!1524823 (forall!11892 (toList!6343 lt!1933168) lambda!224938)))

(assert (=> d!1524823 (= (lemmaInGenMapThenGetPairDefined!438 lt!1933168 key!1776 (hashF!12523 thiss!42052)) lt!1933247)))

(declare-fun b!4770888 () Bool)

(declare-fun res!2023427 () Bool)

(assert (=> b!4770888 (=> (not res!2023427) (not e!2978246))))

(assert (=> b!4770888 (= res!2023427 (contains!16938 (extractMap!2163 (toList!6343 lt!1933168)) key!1776))))

(declare-fun b!4770889 () Bool)

(assert (=> b!4770889 (= e!2978246 (isDefined!9881 (getPair!664 (apply!12677 lt!1933168 (hash!4605 (hashF!12523 thiss!42052) key!1776)) key!1776)))))

(declare-fun lt!1933246 () Unit!138455)

(assert (=> b!4770889 (= lt!1933246 (forallContained!3885 (toList!6343 lt!1933168) lambda!224938 (tuple2!55683 (hash!4605 (hashF!12523 thiss!42052) key!1776) (apply!12677 lt!1933168 (hash!4605 (hashF!12523 thiss!42052) key!1776)))))))

(declare-fun lt!1933244 () Unit!138455)

(declare-fun lt!1933241 () Unit!138455)

(assert (=> b!4770889 (= lt!1933244 lt!1933241)))

(declare-fun lt!1933245 () (_ BitVec 64))

(declare-fun lt!1933243 () List!53687)

(assert (=> b!4770889 (contains!16939 (toList!6343 lt!1933168) (tuple2!55683 lt!1933245 lt!1933243))))

(assert (=> b!4770889 (= lt!1933241 (lemmaGetValueImpliesTupleContained!447 lt!1933168 lt!1933245 lt!1933243))))

(declare-fun e!2978247 () Bool)

(assert (=> b!4770889 e!2978247))

(declare-fun res!2023428 () Bool)

(assert (=> b!4770889 (=> (not res!2023428) (not e!2978247))))

(assert (=> b!4770889 (= res!2023428 (contains!16940 lt!1933168 lt!1933245))))

(assert (=> b!4770889 (= lt!1933243 (apply!12677 lt!1933168 (hash!4605 (hashF!12523 thiss!42052) key!1776)))))

(assert (=> b!4770889 (= lt!1933245 (hash!4605 (hashF!12523 thiss!42052) key!1776))))

(declare-fun lt!1933242 () Unit!138455)

(declare-fun lt!1933240 () Unit!138455)

(assert (=> b!4770889 (= lt!1933242 lt!1933240)))

(assert (=> b!4770889 (contains!16940 lt!1933168 (hash!4605 (hashF!12523 thiss!42052) key!1776))))

(assert (=> b!4770889 (= lt!1933240 (lemmaInGenMapThenLongMapContainsHash!848 lt!1933168 key!1776 (hashF!12523 thiss!42052)))))

(declare-fun b!4770887 () Bool)

(declare-fun res!2023429 () Bool)

(assert (=> b!4770887 (=> (not res!2023429) (not e!2978246))))

(assert (=> b!4770887 (= res!2023429 (allKeysSameHashInMap!2033 lt!1933168 (hashF!12523 thiss!42052)))))

(declare-fun b!4770890 () Bool)

(assert (=> b!4770890 (= e!2978247 (= (getValueByKey!2219 (toList!6343 lt!1933168) lt!1933245) (Some!12735 lt!1933243)))))

(assert (= (and d!1524823 res!2023430) b!4770887))

(assert (= (and b!4770887 res!2023429) b!4770888))

(assert (= (and b!4770888 res!2023427) b!4770889))

(assert (= (and b!4770889 res!2023428) b!4770890))

(declare-fun m!5742668 () Bool)

(assert (=> d!1524823 m!5742668))

(declare-fun m!5742670 () Bool)

(assert (=> d!1524823 m!5742670))

(assert (=> d!1524823 m!5742668))

(declare-fun m!5742672 () Bool)

(assert (=> b!4770890 m!5742672))

(assert (=> b!4770888 m!5742530))

(assert (=> b!4770888 m!5742530))

(assert (=> b!4770888 m!5742532))

(assert (=> b!4770887 m!5742520))

(declare-fun m!5742674 () Bool)

(assert (=> b!4770889 m!5742674))

(declare-fun m!5742676 () Bool)

(assert (=> b!4770889 m!5742676))

(assert (=> b!4770889 m!5742574))

(declare-fun m!5742678 () Bool)

(assert (=> b!4770889 m!5742678))

(declare-fun m!5742680 () Bool)

(assert (=> b!4770889 m!5742680))

(declare-fun m!5742682 () Bool)

(assert (=> b!4770889 m!5742682))

(assert (=> b!4770889 m!5742574))

(assert (=> b!4770889 m!5742678))

(assert (=> b!4770889 m!5742574))

(assert (=> b!4770889 m!5742662))

(assert (=> b!4770889 m!5742546))

(assert (=> b!4770889 m!5742680))

(declare-fun m!5742684 () Bool)

(assert (=> b!4770889 m!5742684))

(declare-fun m!5742686 () Bool)

(assert (=> b!4770889 m!5742686))

(assert (=> b!4770786 d!1524823))

(declare-fun d!1524825 () Bool)

(declare-fun lt!1933248 () Bool)

(assert (=> d!1524825 (= lt!1933248 (select (content!9601 (toList!6343 lt!1933168)) lt!1933174))))

(declare-fun e!2978248 () Bool)

(assert (=> d!1524825 (= lt!1933248 e!2978248)))

(declare-fun res!2023432 () Bool)

(assert (=> d!1524825 (=> (not res!2023432) (not e!2978248))))

(assert (=> d!1524825 (= res!2023432 ((_ is Cons!53564) (toList!6343 lt!1933168)))))

(assert (=> d!1524825 (= (contains!16939 (toList!6343 lt!1933168) lt!1933174) lt!1933248)))

(declare-fun b!4770891 () Bool)

(declare-fun e!2978249 () Bool)

(assert (=> b!4770891 (= e!2978248 e!2978249)))

(declare-fun res!2023431 () Bool)

(assert (=> b!4770891 (=> res!2023431 e!2978249)))

(assert (=> b!4770891 (= res!2023431 (= (h!59976 (toList!6343 lt!1933168)) lt!1933174))))

(declare-fun b!4770892 () Bool)

(assert (=> b!4770892 (= e!2978249 (contains!16939 (t!361136 (toList!6343 lt!1933168)) lt!1933174))))

(assert (= (and d!1524825 res!2023432) b!4770891))

(assert (= (and b!4770891 (not res!2023431)) b!4770892))

(assert (=> d!1524825 m!5742618))

(declare-fun m!5742688 () Bool)

(assert (=> d!1524825 m!5742688))

(declare-fun m!5742690 () Bool)

(assert (=> b!4770892 m!5742690))

(assert (=> b!4770786 d!1524825))

(declare-fun d!1524827 () Bool)

(assert (=> d!1524827 (= (isDefined!9881 lt!1933169) (not (isEmpty!29300 lt!1933169)))))

(declare-fun bs!1149524 () Bool)

(assert (= bs!1149524 d!1524827))

(declare-fun m!5742692 () Bool)

(assert (=> bs!1149524 m!5742692))

(assert (=> b!4770786 d!1524827))

(declare-fun d!1524829 () Bool)

(assert (=> d!1524829 (= (get!18094 lt!1933183) (v!47854 lt!1933183))))

(assert (=> b!4770786 d!1524829))

(declare-fun bs!1149525 () Bool)

(declare-fun b!4770897 () Bool)

(assert (= bs!1149525 (and b!4770897 b!4770789)))

(declare-fun lambda!224941 () Int)

(assert (=> bs!1149525 (= lambda!224941 lambda!224928)))

(declare-fun bs!1149526 () Bool)

(assert (= bs!1149526 (and b!4770897 d!1524821)))

(assert (=> bs!1149526 (= lambda!224941 lambda!224931)))

(declare-fun bs!1149527 () Bool)

(assert (= bs!1149527 (and b!4770897 d!1524823)))

(assert (=> bs!1149527 (= lambda!224941 lambda!224938)))

(declare-fun d!1524831 () Bool)

(declare-fun res!2023437 () Bool)

(declare-fun e!2978252 () Bool)

(assert (=> d!1524831 (=> (not res!2023437) (not e!2978252))))

(assert (=> d!1524831 (= res!2023437 (valid!3976 (v!47853 (underlying!10142 thiss!42052))))))

(assert (=> d!1524831 (= (valid!3975 thiss!42052) e!2978252)))

(declare-fun res!2023438 () Bool)

(assert (=> b!4770897 (=> (not res!2023438) (not e!2978252))))

(assert (=> b!4770897 (= res!2023438 (forall!11892 (toList!6343 (map!12058 (v!47853 (underlying!10142 thiss!42052)))) lambda!224941))))

(declare-fun b!4770898 () Bool)

(assert (=> b!4770898 (= e!2978252 (allKeysSameHashInMap!2033 (map!12058 (v!47853 (underlying!10142 thiss!42052))) (hashF!12523 thiss!42052)))))

(assert (= (and d!1524831 res!2023437) b!4770897))

(assert (= (and b!4770897 res!2023438) b!4770898))

(assert (=> d!1524831 m!5742608))

(assert (=> b!4770897 m!5742568))

(declare-fun m!5742694 () Bool)

(assert (=> b!4770897 m!5742694))

(assert (=> b!4770898 m!5742568))

(assert (=> b!4770898 m!5742568))

(declare-fun m!5742696 () Bool)

(assert (=> b!4770898 m!5742696))

(assert (=> b!4770791 d!1524831))

(declare-fun bs!1149528 () Bool)

(declare-fun d!1524833 () Bool)

(assert (= bs!1149528 (and d!1524833 b!4770789)))

(declare-fun lambda!224944 () Int)

(assert (=> bs!1149528 (not (= lambda!224944 lambda!224928))))

(declare-fun bs!1149529 () Bool)

(assert (= bs!1149529 (and d!1524833 d!1524821)))

(assert (=> bs!1149529 (not (= lambda!224944 lambda!224931))))

(declare-fun bs!1149530 () Bool)

(assert (= bs!1149530 (and d!1524833 d!1524823)))

(assert (=> bs!1149530 (not (= lambda!224944 lambda!224938))))

(declare-fun bs!1149531 () Bool)

(assert (= bs!1149531 (and d!1524833 b!4770897)))

(assert (=> bs!1149531 (not (= lambda!224944 lambda!224941))))

(assert (=> d!1524833 true))

(assert (=> d!1524833 (= (allKeysSameHashInMap!2033 lt!1933168 (hashF!12523 thiss!42052)) (forall!11892 (toList!6343 lt!1933168) lambda!224944))))

(declare-fun bs!1149532 () Bool)

(assert (= bs!1149532 d!1524833))

(declare-fun m!5742698 () Bool)

(assert (=> bs!1149532 m!5742698))

(assert (=> b!4770796 d!1524833))

(declare-fun bs!1149533 () Bool)

(declare-fun b!4770932 () Bool)

(assert (= bs!1149533 (and b!4770932 b!4770789)))

(declare-fun lambda!224947 () Int)

(assert (=> bs!1149533 (= lambda!224947 lambda!224928)))

(declare-fun bs!1149534 () Bool)

(assert (= bs!1149534 (and b!4770932 d!1524833)))

(assert (=> bs!1149534 (not (= lambda!224947 lambda!224944))))

(declare-fun bs!1149535 () Bool)

(assert (= bs!1149535 (and b!4770932 d!1524821)))

(assert (=> bs!1149535 (= lambda!224947 lambda!224931)))

(declare-fun bs!1149536 () Bool)

(assert (= bs!1149536 (and b!4770932 d!1524823)))

(assert (=> bs!1149536 (= lambda!224947 lambda!224938)))

(declare-fun bs!1149537 () Bool)

(assert (= bs!1149537 (and b!4770932 b!4770897)))

(assert (=> bs!1149537 (= lambda!224947 lambda!224941)))

(declare-fun bm!334469 () Bool)

(declare-fun call!334478 () Option!12735)

(declare-fun call!334474 () List!53687)

(assert (=> bm!334469 (= call!334478 (getPair!664 call!334474 key!1776))))

(declare-fun b!4770923 () Bool)

(declare-fun e!2978267 () Unit!138455)

(declare-fun Unit!138460 () Unit!138455)

(assert (=> b!4770923 (= e!2978267 Unit!138460)))

(declare-fun bm!334470 () Bool)

(declare-fun call!334477 () ListLongMap!4757)

(assert (=> bm!334470 (= call!334477 (map!12058 (v!47853 (underlying!10142 thiss!42052))))))

(declare-fun b!4770924 () Bool)

(declare-fun e!2978272 () Unit!138455)

(declare-fun Unit!138461 () Unit!138455)

(assert (=> b!4770924 (= e!2978272 Unit!138461)))

(declare-fun b!4770925 () Bool)

(declare-fun e!2978273 () Unit!138455)

(declare-fun Unit!138462 () Unit!138455)

(assert (=> b!4770925 (= e!2978273 Unit!138462)))

(declare-fun b!4770926 () Bool)

(assert (=> b!4770926 false))

(declare-fun lt!1933308 () Unit!138455)

(declare-fun lt!1933301 () Unit!138455)

(assert (=> b!4770926 (= lt!1933308 lt!1933301)))

(declare-fun lt!1933292 () List!53688)

(declare-fun lt!1933293 () (_ BitVec 64))

(declare-fun lt!1933305 () List!53687)

(assert (=> b!4770926 (contains!16939 lt!1933292 (tuple2!55683 lt!1933293 lt!1933305))))

(assert (=> b!4770926 (= lt!1933301 (lemmaGetValueByKeyImpliesContainsTuple!953 lt!1933292 lt!1933293 lt!1933305))))

(assert (=> b!4770926 (= lt!1933305 (apply!12678 (v!47853 (underlying!10142 thiss!42052)) lt!1933293))))

(assert (=> b!4770926 (= lt!1933292 (toList!6343 (map!12058 (v!47853 (underlying!10142 thiss!42052)))))))

(declare-fun lt!1933302 () Unit!138455)

(declare-fun lt!1933297 () Unit!138455)

(assert (=> b!4770926 (= lt!1933302 lt!1933297)))

(declare-fun lt!1933290 () List!53688)

(assert (=> b!4770926 (isDefined!9882 (getValueByKey!2219 lt!1933290 lt!1933293))))

(assert (=> b!4770926 (= lt!1933297 (lemmaContainsKeyImpliesGetValueByKeyDefined!2015 lt!1933290 lt!1933293))))

(assert (=> b!4770926 (= lt!1933290 (toList!6343 (map!12058 (v!47853 (underlying!10142 thiss!42052)))))))

(declare-fun lt!1933303 () Unit!138455)

(declare-fun lt!1933296 () Unit!138455)

(assert (=> b!4770926 (= lt!1933303 lt!1933296)))

(declare-fun lt!1933300 () List!53688)

(assert (=> b!4770926 (containsKey!3687 lt!1933300 lt!1933293)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!213 (List!53688 (_ BitVec 64)) Unit!138455)

(assert (=> b!4770926 (= lt!1933296 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!213 lt!1933300 lt!1933293))))

(assert (=> b!4770926 (= lt!1933300 (toList!6343 (map!12058 (v!47853 (underlying!10142 thiss!42052)))))))

(declare-fun Unit!138463 () Unit!138455)

(assert (=> b!4770926 (= e!2978267 Unit!138463)))

(declare-fun bm!334471 () Bool)

(declare-fun call!334479 () Bool)

(assert (=> bm!334471 (= call!334479 (isDefined!9881 call!334478))))

(declare-fun b!4770927 () Bool)

(assert (=> b!4770927 false))

(declare-fun lt!1933299 () Unit!138455)

(declare-fun lt!1933307 () Unit!138455)

(assert (=> b!4770927 (= lt!1933299 lt!1933307)))

(declare-fun lt!1933306 () ListLongMap!4757)

(assert (=> b!4770927 (contains!16938 (extractMap!2163 (toList!6343 lt!1933306)) key!1776)))

(declare-fun lemmaInLongMapThenInGenericMap!212 (ListLongMap!4757 K!15059 Hashable!6628) Unit!138455)

(assert (=> b!4770927 (= lt!1933307 (lemmaInLongMapThenInGenericMap!212 lt!1933306 key!1776 (hashF!12523 thiss!42052)))))

(assert (=> b!4770927 (= lt!1933306 call!334477)))

(declare-fun Unit!138464 () Unit!138455)

(assert (=> b!4770927 (= e!2978273 Unit!138464)))

(declare-fun b!4770928 () Bool)

(declare-fun e!2978271 () Bool)

(assert (=> b!4770928 (= e!2978271 (isDefined!9881 (getPair!664 (apply!12678 (v!47853 (underlying!10142 thiss!42052)) lt!1933293) key!1776)))))

(declare-fun bm!334472 () Bool)

(declare-fun call!334475 () (_ BitVec 64))

(assert (=> bm!334472 (= call!334475 (hash!4605 (hashF!12523 thiss!42052) key!1776))))

(declare-fun lt!1933294 () ListLongMap!4757)

(declare-fun c!813800 () Bool)

(declare-fun bm!334473 () Bool)

(assert (=> bm!334473 (= call!334474 (apply!12677 (ite c!813800 lt!1933294 call!334477) call!334475))))

(declare-fun b!4770930 () Bool)

(declare-fun e!2978270 () Unit!138455)

(assert (=> b!4770930 (= e!2978270 e!2978273)))

(declare-fun res!2023446 () Bool)

(declare-fun call!334476 () Bool)

(assert (=> b!4770930 (= res!2023446 call!334476)))

(declare-fun e!2978268 () Bool)

(assert (=> b!4770930 (=> (not res!2023446) (not e!2978268))))

(declare-fun c!813802 () Bool)

(assert (=> b!4770930 (= c!813802 e!2978268)))

(declare-fun b!4770931 () Bool)

(declare-fun e!2978269 () Bool)

(assert (=> b!4770931 (= e!2978269 call!334479)))

(assert (=> b!4770932 (= e!2978272 (forallContained!3885 (toList!6343 (map!12058 (v!47853 (underlying!10142 thiss!42052)))) lambda!224947 (tuple2!55683 lt!1933293 (apply!12678 (v!47853 (underlying!10142 thiss!42052)) lt!1933293))))))

(declare-fun c!813803 () Bool)

(assert (=> b!4770932 (= c!813803 (not (contains!16939 (toList!6343 (map!12058 (v!47853 (underlying!10142 thiss!42052)))) (tuple2!55683 lt!1933293 (apply!12678 (v!47853 (underlying!10142 thiss!42052)) lt!1933293)))))))

(declare-fun lt!1933291 () Unit!138455)

(assert (=> b!4770932 (= lt!1933291 e!2978267)))

(declare-fun b!4770933 () Bool)

(assert (=> b!4770933 (= e!2978268 call!334479)))

(declare-fun bm!334474 () Bool)

(assert (=> bm!334474 (= call!334476 (contains!16940 (ite c!813800 lt!1933294 call!334477) call!334475))))

(declare-fun b!4770929 () Bool)

(declare-fun lt!1933295 () Unit!138455)

(assert (=> b!4770929 (= e!2978270 lt!1933295)))

(assert (=> b!4770929 (= lt!1933294 call!334477)))

(declare-fun lemmaInGenericMapThenInLongMap!212 (ListLongMap!4757 K!15059 Hashable!6628) Unit!138455)

(assert (=> b!4770929 (= lt!1933295 (lemmaInGenericMapThenInLongMap!212 lt!1933294 key!1776 (hashF!12523 thiss!42052)))))

(declare-fun res!2023447 () Bool)

(assert (=> b!4770929 (= res!2023447 call!334476)))

(assert (=> b!4770929 (=> (not res!2023447) (not e!2978269))))

(assert (=> b!4770929 e!2978269))

(declare-fun d!1524835 () Bool)

(declare-fun lt!1933289 () Bool)

(declare-fun map!12060 (MutableMap!4851) ListMap!5823)

(assert (=> d!1524835 (= lt!1933289 (contains!16938 (map!12060 thiss!42052) key!1776))))

(assert (=> d!1524835 (= lt!1933289 e!2978271)))

(declare-fun res!2023445 () Bool)

(assert (=> d!1524835 (=> (not res!2023445) (not e!2978271))))

(assert (=> d!1524835 (= res!2023445 (contains!16943 (v!47853 (underlying!10142 thiss!42052)) lt!1933293))))

(declare-fun lt!1933304 () Unit!138455)

(assert (=> d!1524835 (= lt!1933304 e!2978270)))

(assert (=> d!1524835 (= c!813800 (contains!16938 (extractMap!2163 (toList!6343 (map!12058 (v!47853 (underlying!10142 thiss!42052))))) key!1776))))

(declare-fun lt!1933298 () Unit!138455)

(assert (=> d!1524835 (= lt!1933298 e!2978272)))

(declare-fun c!813801 () Bool)

(assert (=> d!1524835 (= c!813801 (contains!16943 (v!47853 (underlying!10142 thiss!42052)) lt!1933293))))

(assert (=> d!1524835 (= lt!1933293 (hash!4605 (hashF!12523 thiss!42052) key!1776))))

(assert (=> d!1524835 (valid!3975 thiss!42052)))

(assert (=> d!1524835 (= (contains!16941 thiss!42052 key!1776) lt!1933289)))

(assert (= (and d!1524835 c!813801) b!4770932))

(assert (= (and d!1524835 (not c!813801)) b!4770924))

(assert (= (and b!4770932 c!813803) b!4770926))

(assert (= (and b!4770932 (not c!813803)) b!4770923))

(assert (= (and d!1524835 c!813800) b!4770929))

(assert (= (and d!1524835 (not c!813800)) b!4770930))

(assert (= (and b!4770929 res!2023447) b!4770931))

(assert (= (and b!4770930 res!2023446) b!4770933))

(assert (= (and b!4770930 c!813802) b!4770927))

(assert (= (and b!4770930 (not c!813802)) b!4770925))

(assert (= (or b!4770929 b!4770931 b!4770930 b!4770933) bm!334472))

(assert (= (or b!4770929 b!4770930 b!4770933 b!4770927) bm!334470))

(assert (= (or b!4770931 b!4770933) bm!334473))

(assert (= (or b!4770929 b!4770930) bm!334474))

(assert (= (or b!4770931 b!4770933) bm!334469))

(assert (= (or b!4770931 b!4770933) bm!334471))

(assert (= (and d!1524835 res!2023445) b!4770928))

(declare-fun m!5742700 () Bool)

(assert (=> bm!334474 m!5742700))

(assert (=> b!4770932 m!5742568))

(declare-fun m!5742702 () Bool)

(assert (=> b!4770932 m!5742702))

(declare-fun m!5742704 () Bool)

(assert (=> b!4770932 m!5742704))

(declare-fun m!5742706 () Bool)

(assert (=> b!4770932 m!5742706))

(assert (=> b!4770928 m!5742702))

(assert (=> b!4770928 m!5742702))

(declare-fun m!5742708 () Bool)

(assert (=> b!4770928 m!5742708))

(assert (=> b!4770928 m!5742708))

(declare-fun m!5742710 () Bool)

(assert (=> b!4770928 m!5742710))

(declare-fun m!5742712 () Bool)

(assert (=> bm!334471 m!5742712))

(assert (=> b!4770926 m!5742702))

(declare-fun m!5742714 () Bool)

(assert (=> b!4770926 m!5742714))

(assert (=> b!4770926 m!5742568))

(declare-fun m!5742716 () Bool)

(assert (=> b!4770926 m!5742716))

(declare-fun m!5742718 () Bool)

(assert (=> b!4770926 m!5742718))

(declare-fun m!5742720 () Bool)

(assert (=> b!4770926 m!5742720))

(declare-fun m!5742722 () Bool)

(assert (=> b!4770926 m!5742722))

(declare-fun m!5742724 () Bool)

(assert (=> b!4770926 m!5742724))

(assert (=> b!4770926 m!5742718))

(declare-fun m!5742726 () Bool)

(assert (=> b!4770926 m!5742726))

(declare-fun m!5742728 () Bool)

(assert (=> d!1524835 m!5742728))

(assert (=> d!1524835 m!5742568))

(declare-fun m!5742730 () Bool)

(assert (=> d!1524835 m!5742730))

(assert (=> d!1524835 m!5742574))

(assert (=> d!1524835 m!5742522))

(assert (=> d!1524835 m!5742728))

(declare-fun m!5742732 () Bool)

(assert (=> d!1524835 m!5742732))

(assert (=> d!1524835 m!5742730))

(declare-fun m!5742734 () Bool)

(assert (=> d!1524835 m!5742734))

(declare-fun m!5742736 () Bool)

(assert (=> d!1524835 m!5742736))

(declare-fun m!5742738 () Bool)

(assert (=> bm!334473 m!5742738))

(declare-fun m!5742740 () Bool)

(assert (=> b!4770927 m!5742740))

(assert (=> b!4770927 m!5742740))

(declare-fun m!5742742 () Bool)

(assert (=> b!4770927 m!5742742))

(declare-fun m!5742744 () Bool)

(assert (=> b!4770927 m!5742744))

(declare-fun m!5742746 () Bool)

(assert (=> bm!334469 m!5742746))

(assert (=> bm!334472 m!5742574))

(assert (=> bm!334470 m!5742568))

(declare-fun m!5742748 () Bool)

(assert (=> b!4770929 m!5742748))

(assert (=> b!4770787 d!1524835))

(declare-fun d!1524837 () Bool)

(assert (=> d!1524837 (= (array_inv!5849 (_keys!5309 (v!47852 (underlying!10141 (v!47853 (underlying!10142 thiss!42052)))))) (bvsge (size!36349 (_keys!5309 (v!47852 (underlying!10141 (v!47853 (underlying!10142 thiss!42052)))))) #b00000000000000000000000000000000))))

(assert (=> b!4770788 d!1524837))

(declare-fun d!1524839 () Bool)

(assert (=> d!1524839 (= (array_inv!5850 (_values!5280 (v!47852 (underlying!10141 (v!47853 (underlying!10142 thiss!42052)))))) (bvsge (size!36350 (_values!5280 (v!47852 (underlying!10141 (v!47853 (underlying!10142 thiss!42052)))))) #b00000000000000000000000000000000))))

(assert (=> b!4770788 d!1524839))

(declare-fun b!4770952 () Bool)

(declare-fun e!2978288 () Bool)

(declare-datatypes ((List!53689 0))(
  ( (Nil!53565) (Cons!53565 (h!59977 K!15059) (t!361139 List!53689)) )
))
(declare-fun contains!16944 (List!53689 K!15059) Bool)

(declare-fun keys!19431 (ListMap!5823) List!53689)

(assert (=> b!4770952 (= e!2978288 (contains!16944 (keys!19431 (extractMap!2163 (toList!6343 lt!1933168))) key!1776))))

(declare-fun b!4770953 () Bool)

(declare-fun e!2978290 () Unit!138455)

(declare-fun lt!1933329 () Unit!138455)

(assert (=> b!4770953 (= e!2978290 lt!1933329)))

(declare-fun lt!1933331 () Unit!138455)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2016 (List!53687 K!15059) Unit!138455)

(assert (=> b!4770953 (= lt!1933331 (lemmaContainsKeyImpliesGetValueByKeyDefined!2016 (toList!6344 (extractMap!2163 (toList!6343 lt!1933168))) key!1776))))

(declare-datatypes ((Option!12737 0))(
  ( (None!12736) (Some!12736 (v!47859 V!15305)) )
))
(declare-fun isDefined!9883 (Option!12737) Bool)

(declare-fun getValueByKey!2220 (List!53687 K!15059) Option!12737)

(assert (=> b!4770953 (isDefined!9883 (getValueByKey!2220 (toList!6344 (extractMap!2163 (toList!6343 lt!1933168))) key!1776))))

(declare-fun lt!1933327 () Unit!138455)

(assert (=> b!4770953 (= lt!1933327 lt!1933331)))

(declare-fun lemmaInListThenGetKeysListContains!1004 (List!53687 K!15059) Unit!138455)

(assert (=> b!4770953 (= lt!1933329 (lemmaInListThenGetKeysListContains!1004 (toList!6344 (extractMap!2163 (toList!6343 lt!1933168))) key!1776))))

(declare-fun call!334482 () Bool)

(assert (=> b!4770953 call!334482))

(declare-fun b!4770954 () Bool)

(declare-fun e!2978287 () Unit!138455)

(assert (=> b!4770954 (= e!2978290 e!2978287)))

(declare-fun c!813810 () Bool)

(assert (=> b!4770954 (= c!813810 call!334482)))

(declare-fun b!4770955 () Bool)

(declare-fun e!2978289 () List!53689)

(assert (=> b!4770955 (= e!2978289 (keys!19431 (extractMap!2163 (toList!6343 lt!1933168))))))

(declare-fun b!4770956 () Bool)

(declare-fun e!2978291 () Bool)

(assert (=> b!4770956 (= e!2978291 e!2978288)))

(declare-fun res!2023455 () Bool)

(assert (=> b!4770956 (=> (not res!2023455) (not e!2978288))))

(assert (=> b!4770956 (= res!2023455 (isDefined!9883 (getValueByKey!2220 (toList!6344 (extractMap!2163 (toList!6343 lt!1933168))) key!1776)))))

(declare-fun b!4770957 () Bool)

(declare-fun Unit!138465 () Unit!138455)

(assert (=> b!4770957 (= e!2978287 Unit!138465)))

(declare-fun b!4770958 () Bool)

(assert (=> b!4770958 false))

(declare-fun lt!1933332 () Unit!138455)

(declare-fun lt!1933325 () Unit!138455)

(assert (=> b!4770958 (= lt!1933332 lt!1933325)))

(declare-fun containsKey!3688 (List!53687 K!15059) Bool)

(assert (=> b!4770958 (containsKey!3688 (toList!6344 (extractMap!2163 (toList!6343 lt!1933168))) key!1776)))

(declare-fun lemmaInGetKeysListThenContainsKey!1008 (List!53687 K!15059) Unit!138455)

(assert (=> b!4770958 (= lt!1933325 (lemmaInGetKeysListThenContainsKey!1008 (toList!6344 (extractMap!2163 (toList!6343 lt!1933168))) key!1776))))

(declare-fun Unit!138466 () Unit!138455)

(assert (=> b!4770958 (= e!2978287 Unit!138466)))

(declare-fun d!1524841 () Bool)

(assert (=> d!1524841 e!2978291))

(declare-fun res!2023456 () Bool)

(assert (=> d!1524841 (=> res!2023456 e!2978291)))

(declare-fun e!2978286 () Bool)

(assert (=> d!1524841 (= res!2023456 e!2978286)))

(declare-fun res!2023454 () Bool)

(assert (=> d!1524841 (=> (not res!2023454) (not e!2978286))))

(declare-fun lt!1933326 () Bool)

(assert (=> d!1524841 (= res!2023454 (not lt!1933326))))

(declare-fun lt!1933330 () Bool)

(assert (=> d!1524841 (= lt!1933326 lt!1933330)))

(declare-fun lt!1933328 () Unit!138455)

(assert (=> d!1524841 (= lt!1933328 e!2978290)))

(declare-fun c!813812 () Bool)

(assert (=> d!1524841 (= c!813812 lt!1933330)))

(assert (=> d!1524841 (= lt!1933330 (containsKey!3688 (toList!6344 (extractMap!2163 (toList!6343 lt!1933168))) key!1776))))

(assert (=> d!1524841 (= (contains!16938 (extractMap!2163 (toList!6343 lt!1933168)) key!1776) lt!1933326)))

(declare-fun b!4770959 () Bool)

(declare-fun getKeysList!1009 (List!53687) List!53689)

(assert (=> b!4770959 (= e!2978289 (getKeysList!1009 (toList!6344 (extractMap!2163 (toList!6343 lt!1933168)))))))

(declare-fun bm!334477 () Bool)

(assert (=> bm!334477 (= call!334482 (contains!16944 e!2978289 key!1776))))

(declare-fun c!813811 () Bool)

(assert (=> bm!334477 (= c!813811 c!813812)))

(declare-fun b!4770960 () Bool)

(assert (=> b!4770960 (= e!2978286 (not (contains!16944 (keys!19431 (extractMap!2163 (toList!6343 lt!1933168))) key!1776)))))

(assert (= (and d!1524841 c!813812) b!4770953))

(assert (= (and d!1524841 (not c!813812)) b!4770954))

(assert (= (and b!4770954 c!813810) b!4770958))

(assert (= (and b!4770954 (not c!813810)) b!4770957))

(assert (= (or b!4770953 b!4770954) bm!334477))

(assert (= (and bm!334477 c!813811) b!4770959))

(assert (= (and bm!334477 (not c!813811)) b!4770955))

(assert (= (and d!1524841 res!2023454) b!4770960))

(assert (= (and d!1524841 (not res!2023456)) b!4770956))

(assert (= (and b!4770956 res!2023455) b!4770952))

(declare-fun m!5742750 () Bool)

(assert (=> bm!334477 m!5742750))

(declare-fun m!5742752 () Bool)

(assert (=> b!4770956 m!5742752))

(assert (=> b!4770956 m!5742752))

(declare-fun m!5742754 () Bool)

(assert (=> b!4770956 m!5742754))

(declare-fun m!5742756 () Bool)

(assert (=> b!4770953 m!5742756))

(assert (=> b!4770953 m!5742752))

(assert (=> b!4770953 m!5742752))

(assert (=> b!4770953 m!5742754))

(declare-fun m!5742758 () Bool)

(assert (=> b!4770953 m!5742758))

(declare-fun m!5742760 () Bool)

(assert (=> b!4770959 m!5742760))

(declare-fun m!5742762 () Bool)

(assert (=> d!1524841 m!5742762))

(assert (=> b!4770960 m!5742530))

(declare-fun m!5742764 () Bool)

(assert (=> b!4770960 m!5742764))

(assert (=> b!4770960 m!5742764))

(declare-fun m!5742766 () Bool)

(assert (=> b!4770960 m!5742766))

(assert (=> b!4770952 m!5742530))

(assert (=> b!4770952 m!5742764))

(assert (=> b!4770952 m!5742764))

(assert (=> b!4770952 m!5742766))

(assert (=> b!4770955 m!5742530))

(assert (=> b!4770955 m!5742764))

(assert (=> b!4770958 m!5742762))

(declare-fun m!5742768 () Bool)

(assert (=> b!4770958 m!5742768))

(assert (=> b!4770783 d!1524841))

(declare-fun bs!1149538 () Bool)

(declare-fun d!1524843 () Bool)

(assert (= bs!1149538 (and d!1524843 b!4770789)))

(declare-fun lambda!224950 () Int)

(assert (=> bs!1149538 (= lambda!224950 lambda!224928)))

(declare-fun bs!1149539 () Bool)

(assert (= bs!1149539 (and d!1524843 d!1524833)))

(assert (=> bs!1149539 (not (= lambda!224950 lambda!224944))))

(declare-fun bs!1149540 () Bool)

(assert (= bs!1149540 (and d!1524843 d!1524823)))

(assert (=> bs!1149540 (= lambda!224950 lambda!224938)))

(declare-fun bs!1149541 () Bool)

(assert (= bs!1149541 (and d!1524843 b!4770897)))

(assert (=> bs!1149541 (= lambda!224950 lambda!224941)))

(declare-fun bs!1149542 () Bool)

(assert (= bs!1149542 (and d!1524843 b!4770932)))

(assert (=> bs!1149542 (= lambda!224950 lambda!224947)))

(declare-fun bs!1149543 () Bool)

(assert (= bs!1149543 (and d!1524843 d!1524821)))

(assert (=> bs!1149543 (= lambda!224950 lambda!224931)))

(declare-fun lt!1933335 () ListMap!5823)

(declare-fun invariantList!1667 (List!53687) Bool)

(assert (=> d!1524843 (invariantList!1667 (toList!6344 lt!1933335))))

(declare-fun e!2978294 () ListMap!5823)

(assert (=> d!1524843 (= lt!1933335 e!2978294)))

(declare-fun c!813815 () Bool)

(assert (=> d!1524843 (= c!813815 ((_ is Cons!53564) (toList!6343 lt!1933168)))))

(assert (=> d!1524843 (forall!11892 (toList!6343 lt!1933168) lambda!224950)))

(assert (=> d!1524843 (= (extractMap!2163 (toList!6343 lt!1933168)) lt!1933335)))

(declare-fun b!4770965 () Bool)

(declare-fun addToMapMapFromBucket!1632 (List!53687 ListMap!5823) ListMap!5823)

(assert (=> b!4770965 (= e!2978294 (addToMapMapFromBucket!1632 (_2!31135 (h!59976 (toList!6343 lt!1933168))) (extractMap!2163 (t!361136 (toList!6343 lt!1933168)))))))

(declare-fun b!4770966 () Bool)

(assert (=> b!4770966 (= e!2978294 (ListMap!5824 Nil!53563))))

(assert (= (and d!1524843 c!813815) b!4770965))

(assert (= (and d!1524843 (not c!813815)) b!4770966))

(declare-fun m!5742770 () Bool)

(assert (=> d!1524843 m!5742770))

(declare-fun m!5742772 () Bool)

(assert (=> d!1524843 m!5742772))

(declare-fun m!5742774 () Bool)

(assert (=> b!4770965 m!5742774))

(assert (=> b!4770965 m!5742774))

(declare-fun m!5742776 () Bool)

(assert (=> b!4770965 m!5742776))

(assert (=> b!4770783 d!1524843))

(declare-fun tp_is_empty!32551 () Bool)

(declare-fun b!4770971 () Bool)

(declare-fun e!2978297 () Bool)

(declare-fun tp!1356552 () Bool)

(assert (=> b!4770971 (= e!2978297 (and tp_is_empty!32549 tp_is_empty!32551 tp!1356552))))

(assert (=> b!4770785 (= tp!1356545 e!2978297)))

(assert (= (and b!4770785 ((_ is Cons!53563) mapDefault!22016)) b!4770971))

(declare-fun condMapEmpty!22019 () Bool)

(declare-fun mapDefault!22019 () List!53687)

(assert (=> mapNonEmpty!22016 (= condMapEmpty!22019 (= mapRest!22016 ((as const (Array (_ BitVec 32) List!53687)) mapDefault!22019)))))

(declare-fun e!2978303 () Bool)

(declare-fun mapRes!22019 () Bool)

(assert (=> mapNonEmpty!22016 (= tp!1356543 (and e!2978303 mapRes!22019))))

(declare-fun b!4770979 () Bool)

(declare-fun tp!1356560 () Bool)

(assert (=> b!4770979 (= e!2978303 (and tp_is_empty!32549 tp_is_empty!32551 tp!1356560))))

(declare-fun mapIsEmpty!22019 () Bool)

(assert (=> mapIsEmpty!22019 mapRes!22019))

(declare-fun mapNonEmpty!22019 () Bool)

(declare-fun tp!1356561 () Bool)

(declare-fun e!2978302 () Bool)

(assert (=> mapNonEmpty!22019 (= mapRes!22019 (and tp!1356561 e!2978302))))

(declare-fun mapKey!22019 () (_ BitVec 32))

(declare-fun mapRest!22019 () (Array (_ BitVec 32) List!53687))

(declare-fun mapValue!22019 () List!53687)

(assert (=> mapNonEmpty!22019 (= mapRest!22016 (store mapRest!22019 mapKey!22019 mapValue!22019))))

(declare-fun tp!1356559 () Bool)

(declare-fun b!4770978 () Bool)

(assert (=> b!4770978 (= e!2978302 (and tp_is_empty!32549 tp_is_empty!32551 tp!1356559))))

(assert (= (and mapNonEmpty!22016 condMapEmpty!22019) mapIsEmpty!22019))

(assert (= (and mapNonEmpty!22016 (not condMapEmpty!22019)) mapNonEmpty!22019))

(assert (= (and mapNonEmpty!22019 ((_ is Cons!53563) mapValue!22019)) b!4770978))

(assert (= (and mapNonEmpty!22016 ((_ is Cons!53563) mapDefault!22019)) b!4770979))

(declare-fun m!5742778 () Bool)

(assert (=> mapNonEmpty!22019 m!5742778))

(declare-fun e!2978304 () Bool)

(declare-fun tp!1356562 () Bool)

(declare-fun b!4770980 () Bool)

(assert (=> b!4770980 (= e!2978304 (and tp_is_empty!32549 tp_is_empty!32551 tp!1356562))))

(assert (=> mapNonEmpty!22016 (= tp!1356548 e!2978304)))

(assert (= (and mapNonEmpty!22016 ((_ is Cons!53563) mapValue!22016)) b!4770980))

(declare-fun b!4770981 () Bool)

(declare-fun tp!1356563 () Bool)

(declare-fun e!2978305 () Bool)

(assert (=> b!4770981 (= e!2978305 (and tp_is_empty!32549 tp_is_empty!32551 tp!1356563))))

(assert (=> b!4770788 (= tp!1356549 e!2978305)))

(assert (= (and b!4770788 ((_ is Cons!53563) (zeroValue!5255 (v!47852 (underlying!10141 (v!47853 (underlying!10142 thiss!42052))))))) b!4770981))

(declare-fun e!2978306 () Bool)

(declare-fun tp!1356564 () Bool)

(declare-fun b!4770982 () Bool)

(assert (=> b!4770982 (= e!2978306 (and tp_is_empty!32549 tp_is_empty!32551 tp!1356564))))

(assert (=> b!4770788 (= tp!1356547 e!2978306)))

(assert (= (and b!4770788 ((_ is Cons!53563) (minValue!5255 (v!47852 (underlying!10141 (v!47853 (underlying!10142 thiss!42052))))))) b!4770982))

(declare-fun b_lambda!184627 () Bool)

(assert (= b_lambda!184619 (or b!4770789 b_lambda!184627)))

(declare-fun bs!1149544 () Bool)

(declare-fun d!1524845 () Bool)

(assert (= bs!1149544 (and d!1524845 b!4770789)))

(assert (=> bs!1149544 (= (dynLambda!21970 lambda!224928 (h!59976 (toList!6343 lt!1933168))) (noDuplicateKeys!2263 (_2!31135 (h!59976 (toList!6343 lt!1933168)))))))

(declare-fun m!5742780 () Bool)

(assert (=> bs!1149544 m!5742780))

(assert (=> b!4770801 d!1524845))

(declare-fun b_lambda!184629 () Bool)

(assert (= b_lambda!184623 (or (and b!4770788 b_free!129811) b_lambda!184629)))

(declare-fun b_lambda!184631 () Bool)

(assert (= b_lambda!184625 (or b!4770789 b_lambda!184631)))

(declare-fun bs!1149545 () Bool)

(declare-fun d!1524847 () Bool)

(assert (= bs!1149545 (and d!1524847 b!4770789)))

(assert (=> bs!1149545 (= (dynLambda!21970 lambda!224928 lt!1933174) (noDuplicateKeys!2263 (_2!31135 lt!1933174)))))

(declare-fun m!5742782 () Bool)

(assert (=> bs!1149545 m!5742782))

(assert (=> d!1524811 d!1524847))

(declare-fun b_lambda!184633 () Bool)

(assert (= b_lambda!184621 (or b!4770789 b_lambda!184633)))

(declare-fun bs!1149546 () Bool)

(declare-fun d!1524849 () Bool)

(assert (= bs!1149546 (and d!1524849 b!4770789)))

(assert (=> bs!1149546 (= (dynLambda!21970 lambda!224928 lt!1933180) (noDuplicateKeys!2263 (_2!31135 lt!1933180)))))

(declare-fun m!5742784 () Bool)

(assert (=> bs!1149546 m!5742784))

(assert (=> d!1524789 d!1524849))

(check-sat (not bm!334472) tp_is_empty!32551 (not b!4770978) (not d!1524817) (not b!4770979) (not mapNonEmpty!22019) tp_is_empty!32549 (not b!4770841) (not b!4770932) (not b!4770959) (not b!4770844) (not b!4770897) (not b!4770859) (not d!1524841) (not b!4770927) (not b!4770952) (not b!4770955) (not b!4770965) (not bm!334477) (not b!4770956) (not b_lambda!184629) (not b!4770892) (not b!4770960) (not bm!334474) (not d!1524793) (not b!4770828) (not b!4770866) (not d!1524833) (not b!4770878) (not b!4770834) (not bs!1149545) (not b!4770889) (not b!4770802) (not tb!257501) (not b!4770958) (not b_next!130603) (not b!4770824) (not b!4770822) (not d!1524827) (not b!4770827) (not d!1524831) (not d!1524821) (not bs!1149546) (not d!1524843) (not b!4770876) (not d!1524799) (not d!1524809) (not b_lambda!184627) (not d!1524825) (not bm!334473) (not b!4770898) (not b!4770981) (not b!4770888) (not b!4770829) (not bm!334469) (not b_lambda!184631) (not b!4770855) (not b!4770867) (not bm!334470) (not d!1524813) (not b!4770860) (not b!4770982) (not b!4770887) (not b!4770805) (not b!4770928) (not b_next!130601) (not b!4770926) (not b!4770863) (not b!4770861) (not b!4770980) (not d!1524819) b_and!341567 (not d!1524797) (not b_lambda!184633) (not d!1524803) (not b!4770890) (not d!1524801) b_and!341565 (not b!4770929) (not bm!334471) (not d!1524835) (not d!1524823) (not d!1524791) (not b!4770868) (not d!1524795) (not d!1524811) (not d!1524807) (not bs!1149544) (not b!4770971) (not d!1524789) (not b!4770953))
(check-sat b_and!341565 b_and!341567 (not b_next!130603) (not b_next!130601))
