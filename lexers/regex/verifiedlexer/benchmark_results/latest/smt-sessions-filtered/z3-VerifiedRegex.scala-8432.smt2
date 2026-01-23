; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!437408 () Bool)

(assert start!437408)

(declare-fun b!4460616 () Bool)

(declare-fun res!1849739 () Bool)

(declare-fun e!2777607 () Bool)

(assert (=> b!4460616 (=> (not res!1849739) (not e!2777607))))

(declare-datatypes ((K!11565 0))(
  ( (K!11566 (val!17523 Int)) )
))
(declare-datatypes ((V!11811 0))(
  ( (V!11812 (val!17524 Int)) )
))
(declare-datatypes ((tuple2!50332 0))(
  ( (tuple2!50333 (_1!28460 K!11565) (_2!28460 V!11811)) )
))
(declare-datatypes ((List!50287 0))(
  ( (Nil!50163) (Cons!50163 (h!55908 tuple2!50332) (t!357237 List!50287)) )
))
(declare-fun l!12755 () List!50287)

(declare-fun key!4289 () K!11565)

(declare-datatypes ((ListMap!3209 0))(
  ( (ListMap!3210 (toList!3956 List!50287)) )
))
(declare-fun lt!1651760 () ListMap!3209)

(declare-fun contains!12667 (ListMap!3209 K!11565) Bool)

(declare-fun addToMapMapFromBucket!563 (List!50287 ListMap!3209) ListMap!3209)

(assert (=> b!4460616 (= res!1849739 (contains!12667 (addToMapMapFromBucket!563 (t!357237 l!12755) lt!1651760) key!4289))))

(declare-fun b!4460617 () Bool)

(declare-fun res!1849741 () Bool)

(assert (=> b!4460617 (=> (not res!1849741) (not e!2777607))))

(declare-fun containsKey!1392 (List!50287 K!11565) Bool)

(assert (=> b!4460617 (= res!1849741 (not (containsKey!1392 (t!357237 l!12755) key!4289)))))

(declare-fun b!4460618 () Bool)

(declare-fun res!1849742 () Bool)

(declare-fun e!2777604 () Bool)

(assert (=> b!4460618 (=> (not res!1849742) (not e!2777604))))

(assert (=> b!4460618 (= res!1849742 (not (containsKey!1392 l!12755 key!4289)))))

(declare-fun b!4460619 () Bool)

(declare-fun e!2777606 () Bool)

(declare-fun tp!1335682 () Bool)

(assert (=> b!4460619 (= e!2777606 tp!1335682)))

(declare-fun b!4460620 () Bool)

(declare-fun size!35906 (List!50287) Int)

(assert (=> b!4460620 (= e!2777607 (>= (size!35906 (t!357237 l!12755)) (size!35906 l!12755)))))

(declare-fun tp_is_empty!27159 () Bool)

(declare-fun e!2777605 () Bool)

(declare-fun tp_is_empty!27157 () Bool)

(declare-fun b!4460622 () Bool)

(declare-fun tp!1335683 () Bool)

(assert (=> b!4460622 (= e!2777605 (and tp_is_empty!27157 tp_is_empty!27159 tp!1335683))))

(declare-fun b!4460623 () Bool)

(declare-fun res!1849738 () Bool)

(assert (=> b!4460623 (=> (not res!1849738) (not e!2777604))))

(declare-fun acc!957 () ListMap!3209)

(assert (=> b!4460623 (= res!1849738 (contains!12667 (addToMapMapFromBucket!563 l!12755 acc!957) key!4289))))

(declare-fun b!4460624 () Bool)

(declare-fun res!1849743 () Bool)

(assert (=> b!4460624 (=> (not res!1849743) (not e!2777607))))

(declare-fun noDuplicateKeys!984 (List!50287) Bool)

(assert (=> b!4460624 (= res!1849743 (noDuplicateKeys!984 (t!357237 l!12755)))))

(declare-fun b!4460625 () Bool)

(declare-fun res!1849736 () Bool)

(assert (=> b!4460625 (=> (not res!1849736) (not e!2777604))))

(get-info :version)

(assert (=> b!4460625 (= res!1849736 ((_ is Cons!50163) l!12755))))

(declare-fun res!1849740 () Bool)

(assert (=> start!437408 (=> (not res!1849740) (not e!2777604))))

(assert (=> start!437408 (= res!1849740 (noDuplicateKeys!984 l!12755))))

(assert (=> start!437408 e!2777604))

(assert (=> start!437408 e!2777605))

(assert (=> start!437408 tp_is_empty!27157))

(declare-fun inv!65749 (ListMap!3209) Bool)

(assert (=> start!437408 (and (inv!65749 acc!957) e!2777606)))

(declare-fun b!4460621 () Bool)

(assert (=> b!4460621 (= e!2777604 e!2777607)))

(declare-fun res!1849737 () Bool)

(assert (=> b!4460621 (=> (not res!1849737) (not e!2777607))))

(assert (=> b!4460621 (= res!1849737 (not (= (_1!28460 (h!55908 l!12755)) key!4289)))))

(declare-fun +!1337 (ListMap!3209 tuple2!50332) ListMap!3209)

(assert (=> b!4460621 (= lt!1651760 (+!1337 acc!957 (h!55908 l!12755)))))

(assert (= (and start!437408 res!1849740) b!4460618))

(assert (= (and b!4460618 res!1849742) b!4460623))

(assert (= (and b!4460623 res!1849738) b!4460625))

(assert (= (and b!4460625 res!1849736) b!4460621))

(assert (= (and b!4460621 res!1849737) b!4460624))

(assert (= (and b!4460624 res!1849743) b!4460617))

(assert (= (and b!4460617 res!1849741) b!4460616))

(assert (= (and b!4460616 res!1849739) b!4460620))

(assert (= (and start!437408 ((_ is Cons!50163) l!12755)) b!4460622))

(assert (= start!437408 b!4460619))

(declare-fun m!5163553 () Bool)

(assert (=> start!437408 m!5163553))

(declare-fun m!5163555 () Bool)

(assert (=> start!437408 m!5163555))

(declare-fun m!5163557 () Bool)

(assert (=> b!4460617 m!5163557))

(declare-fun m!5163559 () Bool)

(assert (=> b!4460620 m!5163559))

(declare-fun m!5163561 () Bool)

(assert (=> b!4460620 m!5163561))

(declare-fun m!5163563 () Bool)

(assert (=> b!4460624 m!5163563))

(declare-fun m!5163565 () Bool)

(assert (=> b!4460623 m!5163565))

(assert (=> b!4460623 m!5163565))

(declare-fun m!5163567 () Bool)

(assert (=> b!4460623 m!5163567))

(declare-fun m!5163569 () Bool)

(assert (=> b!4460621 m!5163569))

(declare-fun m!5163571 () Bool)

(assert (=> b!4460618 m!5163571))

(declare-fun m!5163573 () Bool)

(assert (=> b!4460616 m!5163573))

(assert (=> b!4460616 m!5163573))

(declare-fun m!5163575 () Bool)

(assert (=> b!4460616 m!5163575))

(check-sat (not b!4460622) (not b!4460619) (not b!4460621) tp_is_empty!27159 (not start!437408) (not b!4460616) (not b!4460623) (not b!4460617) (not b!4460618) (not b!4460624) (not b!4460620) tp_is_empty!27157)
(check-sat)
(get-model)

(declare-fun d!1360157 () Bool)

(declare-fun res!1849754 () Bool)

(declare-fun e!2777618 () Bool)

(assert (=> d!1360157 (=> res!1849754 e!2777618)))

(assert (=> d!1360157 (= res!1849754 (not ((_ is Cons!50163) l!12755)))))

(assert (=> d!1360157 (= (noDuplicateKeys!984 l!12755) e!2777618)))

(declare-fun b!4460636 () Bool)

(declare-fun e!2777619 () Bool)

(assert (=> b!4460636 (= e!2777618 e!2777619)))

(declare-fun res!1849755 () Bool)

(assert (=> b!4460636 (=> (not res!1849755) (not e!2777619))))

(assert (=> b!4460636 (= res!1849755 (not (containsKey!1392 (t!357237 l!12755) (_1!28460 (h!55908 l!12755)))))))

(declare-fun b!4460637 () Bool)

(assert (=> b!4460637 (= e!2777619 (noDuplicateKeys!984 (t!357237 l!12755)))))

(assert (= (and d!1360157 (not res!1849754)) b!4460636))

(assert (= (and b!4460636 res!1849755) b!4460637))

(declare-fun m!5163577 () Bool)

(assert (=> b!4460636 m!5163577))

(assert (=> b!4460637 m!5163563))

(assert (=> start!437408 d!1360157))

(declare-fun d!1360161 () Bool)

(declare-fun invariantList!905 (List!50287) Bool)

(assert (=> d!1360161 (= (inv!65749 acc!957) (invariantList!905 (toList!3956 acc!957)))))

(declare-fun bs!791445 () Bool)

(assert (= bs!791445 d!1360161))

(declare-fun m!5163579 () Bool)

(assert (=> bs!791445 m!5163579))

(assert (=> start!437408 d!1360161))

(declare-fun d!1360163 () Bool)

(declare-fun e!2777622 () Bool)

(assert (=> d!1360163 e!2777622))

(declare-fun res!1849760 () Bool)

(assert (=> d!1360163 (=> (not res!1849760) (not e!2777622))))

(declare-fun lt!1651772 () ListMap!3209)

(assert (=> d!1360163 (= res!1849760 (contains!12667 lt!1651772 (_1!28460 (h!55908 l!12755))))))

(declare-fun lt!1651771 () List!50287)

(assert (=> d!1360163 (= lt!1651772 (ListMap!3210 lt!1651771))))

(declare-datatypes ((Unit!86733 0))(
  ( (Unit!86734) )
))
(declare-fun lt!1651769 () Unit!86733)

(declare-fun lt!1651770 () Unit!86733)

(assert (=> d!1360163 (= lt!1651769 lt!1651770)))

(declare-datatypes ((Option!10885 0))(
  ( (None!10884) (Some!10884 (v!44142 V!11811)) )
))
(declare-fun getValueByKey!871 (List!50287 K!11565) Option!10885)

(assert (=> d!1360163 (= (getValueByKey!871 lt!1651771 (_1!28460 (h!55908 l!12755))) (Some!10884 (_2!28460 (h!55908 l!12755))))))

(declare-fun lemmaContainsTupThenGetReturnValue!565 (List!50287 K!11565 V!11811) Unit!86733)

(assert (=> d!1360163 (= lt!1651770 (lemmaContainsTupThenGetReturnValue!565 lt!1651771 (_1!28460 (h!55908 l!12755)) (_2!28460 (h!55908 l!12755))))))

(declare-fun insertNoDuplicatedKeys!259 (List!50287 K!11565 V!11811) List!50287)

(assert (=> d!1360163 (= lt!1651771 (insertNoDuplicatedKeys!259 (toList!3956 acc!957) (_1!28460 (h!55908 l!12755)) (_2!28460 (h!55908 l!12755))))))

(assert (=> d!1360163 (= (+!1337 acc!957 (h!55908 l!12755)) lt!1651772)))

(declare-fun b!4460642 () Bool)

(declare-fun res!1849761 () Bool)

(assert (=> b!4460642 (=> (not res!1849761) (not e!2777622))))

(assert (=> b!4460642 (= res!1849761 (= (getValueByKey!871 (toList!3956 lt!1651772) (_1!28460 (h!55908 l!12755))) (Some!10884 (_2!28460 (h!55908 l!12755)))))))

(declare-fun b!4460643 () Bool)

(declare-fun contains!12669 (List!50287 tuple2!50332) Bool)

(assert (=> b!4460643 (= e!2777622 (contains!12669 (toList!3956 lt!1651772) (h!55908 l!12755)))))

(assert (= (and d!1360163 res!1849760) b!4460642))

(assert (= (and b!4460642 res!1849761) b!4460643))

(declare-fun m!5163581 () Bool)

(assert (=> d!1360163 m!5163581))

(declare-fun m!5163583 () Bool)

(assert (=> d!1360163 m!5163583))

(declare-fun m!5163585 () Bool)

(assert (=> d!1360163 m!5163585))

(declare-fun m!5163587 () Bool)

(assert (=> d!1360163 m!5163587))

(declare-fun m!5163589 () Bool)

(assert (=> b!4460642 m!5163589))

(declare-fun m!5163591 () Bool)

(assert (=> b!4460643 m!5163591))

(assert (=> b!4460621 d!1360163))

(declare-fun b!4460689 () Bool)

(declare-fun e!2777655 () Bool)

(declare-datatypes ((List!50289 0))(
  ( (Nil!50165) (Cons!50165 (h!55910 K!11565) (t!357239 List!50289)) )
))
(declare-fun contains!12670 (List!50289 K!11565) Bool)

(declare-fun keys!17286 (ListMap!3209) List!50289)

(assert (=> b!4460689 (= e!2777655 (contains!12670 (keys!17286 (addToMapMapFromBucket!563 (t!357237 l!12755) lt!1651760)) key!4289))))

(declare-fun bm!310543 () Bool)

(declare-fun call!310548 () Bool)

(declare-fun e!2777656 () List!50289)

(assert (=> bm!310543 (= call!310548 (contains!12670 e!2777656 key!4289))))

(declare-fun c!759161 () Bool)

(declare-fun c!759162 () Bool)

(assert (=> bm!310543 (= c!759161 c!759162)))

(declare-fun d!1360165 () Bool)

(declare-fun e!2777654 () Bool)

(assert (=> d!1360165 e!2777654))

(declare-fun res!1849778 () Bool)

(assert (=> d!1360165 (=> res!1849778 e!2777654)))

(declare-fun e!2777658 () Bool)

(assert (=> d!1360165 (= res!1849778 e!2777658)))

(declare-fun res!1849777 () Bool)

(assert (=> d!1360165 (=> (not res!1849777) (not e!2777658))))

(declare-fun lt!1651815 () Bool)

(assert (=> d!1360165 (= res!1849777 (not lt!1651815))))

(declare-fun lt!1651814 () Bool)

(assert (=> d!1360165 (= lt!1651815 lt!1651814)))

(declare-fun lt!1651818 () Unit!86733)

(declare-fun e!2777657 () Unit!86733)

(assert (=> d!1360165 (= lt!1651818 e!2777657)))

(assert (=> d!1360165 (= c!759162 lt!1651814)))

(declare-fun containsKey!1394 (List!50287 K!11565) Bool)

(assert (=> d!1360165 (= lt!1651814 (containsKey!1394 (toList!3956 (addToMapMapFromBucket!563 (t!357237 l!12755) lt!1651760)) key!4289))))

(assert (=> d!1360165 (= (contains!12667 (addToMapMapFromBucket!563 (t!357237 l!12755) lt!1651760) key!4289) lt!1651815)))

(declare-fun b!4460690 () Bool)

(assert (=> b!4460690 (= e!2777656 (keys!17286 (addToMapMapFromBucket!563 (t!357237 l!12755) lt!1651760)))))

(declare-fun b!4460691 () Bool)

(declare-fun lt!1651819 () Unit!86733)

(assert (=> b!4460691 (= e!2777657 lt!1651819)))

(declare-fun lt!1651813 () Unit!86733)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!776 (List!50287 K!11565) Unit!86733)

(assert (=> b!4460691 (= lt!1651813 (lemmaContainsKeyImpliesGetValueByKeyDefined!776 (toList!3956 (addToMapMapFromBucket!563 (t!357237 l!12755) lt!1651760)) key!4289))))

(declare-fun isDefined!8173 (Option!10885) Bool)

(assert (=> b!4460691 (isDefined!8173 (getValueByKey!871 (toList!3956 (addToMapMapFromBucket!563 (t!357237 l!12755) lt!1651760)) key!4289))))

(declare-fun lt!1651820 () Unit!86733)

(assert (=> b!4460691 (= lt!1651820 lt!1651813)))

(declare-fun lemmaInListThenGetKeysListContains!349 (List!50287 K!11565) Unit!86733)

(assert (=> b!4460691 (= lt!1651819 (lemmaInListThenGetKeysListContains!349 (toList!3956 (addToMapMapFromBucket!563 (t!357237 l!12755) lt!1651760)) key!4289))))

(assert (=> b!4460691 call!310548))

(declare-fun b!4460692 () Bool)

(declare-fun e!2777653 () Unit!86733)

(declare-fun Unit!86746 () Unit!86733)

(assert (=> b!4460692 (= e!2777653 Unit!86746)))

(declare-fun b!4460693 () Bool)

(assert (=> b!4460693 (= e!2777658 (not (contains!12670 (keys!17286 (addToMapMapFromBucket!563 (t!357237 l!12755) lt!1651760)) key!4289)))))

(declare-fun b!4460694 () Bool)

(declare-fun getKeysList!353 (List!50287) List!50289)

(assert (=> b!4460694 (= e!2777656 (getKeysList!353 (toList!3956 (addToMapMapFromBucket!563 (t!357237 l!12755) lt!1651760))))))

(declare-fun b!4460695 () Bool)

(assert (=> b!4460695 false))

(declare-fun lt!1651817 () Unit!86733)

(declare-fun lt!1651816 () Unit!86733)

(assert (=> b!4460695 (= lt!1651817 lt!1651816)))

(assert (=> b!4460695 (containsKey!1394 (toList!3956 (addToMapMapFromBucket!563 (t!357237 l!12755) lt!1651760)) key!4289)))

(declare-fun lemmaInGetKeysListThenContainsKey!352 (List!50287 K!11565) Unit!86733)

(assert (=> b!4460695 (= lt!1651816 (lemmaInGetKeysListThenContainsKey!352 (toList!3956 (addToMapMapFromBucket!563 (t!357237 l!12755) lt!1651760)) key!4289))))

(declare-fun Unit!86747 () Unit!86733)

(assert (=> b!4460695 (= e!2777653 Unit!86747)))

(declare-fun b!4460696 () Bool)

(assert (=> b!4460696 (= e!2777657 e!2777653)))

(declare-fun c!759160 () Bool)

(assert (=> b!4460696 (= c!759160 call!310548)))

(declare-fun b!4460697 () Bool)

(assert (=> b!4460697 (= e!2777654 e!2777655)))

(declare-fun res!1849779 () Bool)

(assert (=> b!4460697 (=> (not res!1849779) (not e!2777655))))

(assert (=> b!4460697 (= res!1849779 (isDefined!8173 (getValueByKey!871 (toList!3956 (addToMapMapFromBucket!563 (t!357237 l!12755) lt!1651760)) key!4289)))))

(assert (= (and d!1360165 c!759162) b!4460691))

(assert (= (and d!1360165 (not c!759162)) b!4460696))

(assert (= (and b!4460696 c!759160) b!4460695))

(assert (= (and b!4460696 (not c!759160)) b!4460692))

(assert (= (or b!4460691 b!4460696) bm!310543))

(assert (= (and bm!310543 c!759161) b!4460694))

(assert (= (and bm!310543 (not c!759161)) b!4460690))

(assert (= (and d!1360165 res!1849777) b!4460693))

(assert (= (and d!1360165 (not res!1849778)) b!4460697))

(assert (= (and b!4460697 res!1849779) b!4460689))

(declare-fun m!5163613 () Bool)

(assert (=> b!4460691 m!5163613))

(declare-fun m!5163615 () Bool)

(assert (=> b!4460691 m!5163615))

(assert (=> b!4460691 m!5163615))

(declare-fun m!5163617 () Bool)

(assert (=> b!4460691 m!5163617))

(declare-fun m!5163619 () Bool)

(assert (=> b!4460691 m!5163619))

(declare-fun m!5163621 () Bool)

(assert (=> b!4460695 m!5163621))

(declare-fun m!5163623 () Bool)

(assert (=> b!4460695 m!5163623))

(declare-fun m!5163625 () Bool)

(assert (=> bm!310543 m!5163625))

(assert (=> b!4460690 m!5163573))

(declare-fun m!5163627 () Bool)

(assert (=> b!4460690 m!5163627))

(declare-fun m!5163629 () Bool)

(assert (=> b!4460694 m!5163629))

(assert (=> b!4460689 m!5163573))

(assert (=> b!4460689 m!5163627))

(assert (=> b!4460689 m!5163627))

(declare-fun m!5163631 () Bool)

(assert (=> b!4460689 m!5163631))

(assert (=> b!4460697 m!5163615))

(assert (=> b!4460697 m!5163615))

(assert (=> b!4460697 m!5163617))

(assert (=> b!4460693 m!5163573))

(assert (=> b!4460693 m!5163627))

(assert (=> b!4460693 m!5163627))

(assert (=> b!4460693 m!5163631))

(assert (=> d!1360165 m!5163621))

(assert (=> b!4460616 d!1360165))

(declare-fun b!4460773 () Bool)

(assert (=> b!4460773 true))

(declare-fun bs!791462 () Bool)

(declare-fun b!4460772 () Bool)

(assert (= bs!791462 (and b!4460772 b!4460773)))

(declare-fun lambda!161701 () Int)

(declare-fun lambda!161700 () Int)

(assert (=> bs!791462 (= lambda!161701 lambda!161700)))

(assert (=> b!4460772 true))

(declare-fun lt!1651985 () ListMap!3209)

(declare-fun lambda!161702 () Int)

(assert (=> bs!791462 (= (= lt!1651985 lt!1651760) (= lambda!161702 lambda!161700))))

(assert (=> b!4460772 (= (= lt!1651985 lt!1651760) (= lambda!161702 lambda!161701))))

(assert (=> b!4460772 true))

(declare-fun bs!791463 () Bool)

(declare-fun d!1360169 () Bool)

(assert (= bs!791463 (and d!1360169 b!4460773)))

(declare-fun lambda!161703 () Int)

(declare-fun lt!1651979 () ListMap!3209)

(assert (=> bs!791463 (= (= lt!1651979 lt!1651760) (= lambda!161703 lambda!161700))))

(declare-fun bs!791464 () Bool)

(assert (= bs!791464 (and d!1360169 b!4460772)))

(assert (=> bs!791464 (= (= lt!1651979 lt!1651760) (= lambda!161703 lambda!161701))))

(assert (=> bs!791464 (= (= lt!1651979 lt!1651985) (= lambda!161703 lambda!161702))))

(assert (=> d!1360169 true))

(declare-fun b!4460769 () Bool)

(declare-fun e!2777705 () Bool)

(assert (=> b!4460769 (= e!2777705 (invariantList!905 (toList!3956 lt!1651979)))))

(declare-fun c!759176 () Bool)

(declare-fun bm!310563 () Bool)

(declare-fun call!310570 () Bool)

(declare-fun forall!9915 (List!50287 Int) Bool)

(assert (=> bm!310563 (= call!310570 (forall!9915 (toList!3956 lt!1651760) (ite c!759176 lambda!161700 lambda!161702)))))

(declare-fun call!310569 () Bool)

(declare-fun bm!310564 () Bool)

(assert (=> bm!310564 (= call!310569 (forall!9915 (ite c!759176 (toList!3956 lt!1651760) (t!357237 (t!357237 l!12755))) (ite c!759176 lambda!161700 lambda!161702)))))

(declare-fun b!4460770 () Bool)

(declare-fun e!2777706 () Bool)

(assert (=> b!4460770 (= e!2777706 (forall!9915 (toList!3956 lt!1651760) lambda!161702))))

(declare-fun b!4460771 () Bool)

(declare-fun res!1849818 () Bool)

(assert (=> b!4460771 (=> (not res!1849818) (not e!2777705))))

(assert (=> b!4460771 (= res!1849818 (forall!9915 (toList!3956 lt!1651760) lambda!161703))))

(assert (=> d!1360169 e!2777705))

(declare-fun res!1849817 () Bool)

(assert (=> d!1360169 (=> (not res!1849817) (not e!2777705))))

(assert (=> d!1360169 (= res!1849817 (forall!9915 (t!357237 l!12755) lambda!161703))))

(declare-fun e!2777704 () ListMap!3209)

(assert (=> d!1360169 (= lt!1651979 e!2777704)))

(assert (=> d!1360169 (= c!759176 ((_ is Nil!50163) (t!357237 l!12755)))))

(assert (=> d!1360169 (noDuplicateKeys!984 (t!357237 l!12755))))

(assert (=> d!1360169 (= (addToMapMapFromBucket!563 (t!357237 l!12755) lt!1651760) lt!1651979)))

(declare-fun bm!310565 () Bool)

(declare-fun call!310568 () Unit!86733)

(declare-fun lemmaContainsAllItsOwnKeys!254 (ListMap!3209) Unit!86733)

(assert (=> bm!310565 (= call!310568 (lemmaContainsAllItsOwnKeys!254 lt!1651760))))

(assert (=> b!4460772 (= e!2777704 lt!1651985)))

(declare-fun lt!1651987 () ListMap!3209)

(assert (=> b!4460772 (= lt!1651987 (+!1337 lt!1651760 (h!55908 (t!357237 l!12755))))))

(assert (=> b!4460772 (= lt!1651985 (addToMapMapFromBucket!563 (t!357237 (t!357237 l!12755)) (+!1337 lt!1651760 (h!55908 (t!357237 l!12755)))))))

(declare-fun lt!1651980 () Unit!86733)

(assert (=> b!4460772 (= lt!1651980 call!310568)))

(assert (=> b!4460772 (forall!9915 (toList!3956 lt!1651760) lambda!161701)))

(declare-fun lt!1651972 () Unit!86733)

(assert (=> b!4460772 (= lt!1651972 lt!1651980)))

(assert (=> b!4460772 (forall!9915 (toList!3956 lt!1651987) lambda!161702)))

(declare-fun lt!1651981 () Unit!86733)

(declare-fun Unit!86750 () Unit!86733)

(assert (=> b!4460772 (= lt!1651981 Unit!86750)))

(assert (=> b!4460772 call!310569))

(declare-fun lt!1651989 () Unit!86733)

(declare-fun Unit!86751 () Unit!86733)

(assert (=> b!4460772 (= lt!1651989 Unit!86751)))

(declare-fun lt!1651988 () Unit!86733)

(declare-fun Unit!86752 () Unit!86733)

(assert (=> b!4460772 (= lt!1651988 Unit!86752)))

(declare-fun lt!1651978 () Unit!86733)

(declare-fun forallContained!2204 (List!50287 Int tuple2!50332) Unit!86733)

(assert (=> b!4460772 (= lt!1651978 (forallContained!2204 (toList!3956 lt!1651987) lambda!161702 (h!55908 (t!357237 l!12755))))))

(assert (=> b!4460772 (contains!12667 lt!1651987 (_1!28460 (h!55908 (t!357237 l!12755))))))

(declare-fun lt!1651974 () Unit!86733)

(declare-fun Unit!86753 () Unit!86733)

(assert (=> b!4460772 (= lt!1651974 Unit!86753)))

(assert (=> b!4460772 (contains!12667 lt!1651985 (_1!28460 (h!55908 (t!357237 l!12755))))))

(declare-fun lt!1651991 () Unit!86733)

(declare-fun Unit!86754 () Unit!86733)

(assert (=> b!4460772 (= lt!1651991 Unit!86754)))

(assert (=> b!4460772 (forall!9915 (t!357237 l!12755) lambda!161702)))

(declare-fun lt!1651975 () Unit!86733)

(declare-fun Unit!86755 () Unit!86733)

(assert (=> b!4460772 (= lt!1651975 Unit!86755)))

(assert (=> b!4460772 (forall!9915 (toList!3956 lt!1651987) lambda!161702)))

(declare-fun lt!1651976 () Unit!86733)

(declare-fun Unit!86756 () Unit!86733)

(assert (=> b!4460772 (= lt!1651976 Unit!86756)))

(declare-fun lt!1651973 () Unit!86733)

(declare-fun Unit!86757 () Unit!86733)

(assert (=> b!4460772 (= lt!1651973 Unit!86757)))

(declare-fun lt!1651990 () Unit!86733)

(declare-fun addForallContainsKeyThenBeforeAdding!253 (ListMap!3209 ListMap!3209 K!11565 V!11811) Unit!86733)

(assert (=> b!4460772 (= lt!1651990 (addForallContainsKeyThenBeforeAdding!253 lt!1651760 lt!1651985 (_1!28460 (h!55908 (t!357237 l!12755))) (_2!28460 (h!55908 (t!357237 l!12755)))))))

(assert (=> b!4460772 call!310570))

(declare-fun lt!1651982 () Unit!86733)

(assert (=> b!4460772 (= lt!1651982 lt!1651990)))

(assert (=> b!4460772 (forall!9915 (toList!3956 lt!1651760) lambda!161702)))

(declare-fun lt!1651984 () Unit!86733)

(declare-fun Unit!86758 () Unit!86733)

(assert (=> b!4460772 (= lt!1651984 Unit!86758)))

(declare-fun res!1849819 () Bool)

(assert (=> b!4460772 (= res!1849819 (forall!9915 (t!357237 l!12755) lambda!161702))))

(assert (=> b!4460772 (=> (not res!1849819) (not e!2777706))))

(assert (=> b!4460772 e!2777706))

(declare-fun lt!1651977 () Unit!86733)

(declare-fun Unit!86759 () Unit!86733)

(assert (=> b!4460772 (= lt!1651977 Unit!86759)))

(assert (=> b!4460773 (= e!2777704 lt!1651760)))

(declare-fun lt!1651971 () Unit!86733)

(assert (=> b!4460773 (= lt!1651971 call!310568)))

(assert (=> b!4460773 call!310569))

(declare-fun lt!1651983 () Unit!86733)

(assert (=> b!4460773 (= lt!1651983 lt!1651971)))

(assert (=> b!4460773 call!310570))

(declare-fun lt!1651986 () Unit!86733)

(declare-fun Unit!86760 () Unit!86733)

(assert (=> b!4460773 (= lt!1651986 Unit!86760)))

(assert (= (and d!1360169 c!759176) b!4460773))

(assert (= (and d!1360169 (not c!759176)) b!4460772))

(assert (= (and b!4460772 res!1849819) b!4460770))

(assert (= (or b!4460773 b!4460772) bm!310563))

(assert (= (or b!4460773 b!4460772) bm!310564))

(assert (= (or b!4460773 b!4460772) bm!310565))

(assert (= (and d!1360169 res!1849817) b!4460771))

(assert (= (and b!4460771 res!1849818) b!4460769))

(declare-fun m!5163743 () Bool)

(assert (=> bm!310565 m!5163743))

(declare-fun m!5163745 () Bool)

(assert (=> bm!310563 m!5163745))

(declare-fun m!5163747 () Bool)

(assert (=> b!4460772 m!5163747))

(assert (=> b!4460772 m!5163747))

(declare-fun m!5163749 () Bool)

(assert (=> b!4460772 m!5163749))

(declare-fun m!5163751 () Bool)

(assert (=> b!4460772 m!5163751))

(declare-fun m!5163753 () Bool)

(assert (=> b!4460772 m!5163753))

(declare-fun m!5163755 () Bool)

(assert (=> b!4460772 m!5163755))

(assert (=> b!4460772 m!5163753))

(declare-fun m!5163757 () Bool)

(assert (=> b!4460772 m!5163757))

(declare-fun m!5163759 () Bool)

(assert (=> b!4460772 m!5163759))

(declare-fun m!5163761 () Bool)

(assert (=> b!4460772 m!5163761))

(declare-fun m!5163763 () Bool)

(assert (=> b!4460772 m!5163763))

(declare-fun m!5163765 () Bool)

(assert (=> b!4460772 m!5163765))

(assert (=> b!4460772 m!5163749))

(declare-fun m!5163767 () Bool)

(assert (=> b!4460769 m!5163767))

(declare-fun m!5163769 () Bool)

(assert (=> b!4460771 m!5163769))

(assert (=> b!4460770 m!5163763))

(declare-fun m!5163771 () Bool)

(assert (=> d!1360169 m!5163771))

(assert (=> d!1360169 m!5163563))

(declare-fun m!5163773 () Bool)

(assert (=> bm!310564 m!5163773))

(assert (=> b!4460616 d!1360169))

(declare-fun d!1360189 () Bool)

(declare-fun res!1849824 () Bool)

(declare-fun e!2777711 () Bool)

(assert (=> d!1360189 (=> res!1849824 e!2777711)))

(assert (=> d!1360189 (= res!1849824 (and ((_ is Cons!50163) (t!357237 l!12755)) (= (_1!28460 (h!55908 (t!357237 l!12755))) key!4289)))))

(assert (=> d!1360189 (= (containsKey!1392 (t!357237 l!12755) key!4289) e!2777711)))

(declare-fun b!4460780 () Bool)

(declare-fun e!2777712 () Bool)

(assert (=> b!4460780 (= e!2777711 e!2777712)))

(declare-fun res!1849825 () Bool)

(assert (=> b!4460780 (=> (not res!1849825) (not e!2777712))))

(assert (=> b!4460780 (= res!1849825 ((_ is Cons!50163) (t!357237 l!12755)))))

(declare-fun b!4460781 () Bool)

(assert (=> b!4460781 (= e!2777712 (containsKey!1392 (t!357237 (t!357237 l!12755)) key!4289))))

(assert (= (and d!1360189 (not res!1849824)) b!4460780))

(assert (= (and b!4460780 res!1849825) b!4460781))

(declare-fun m!5163775 () Bool)

(assert (=> b!4460781 m!5163775))

(assert (=> b!4460617 d!1360189))

(declare-fun b!4460782 () Bool)

(declare-fun e!2777715 () Bool)

(assert (=> b!4460782 (= e!2777715 (contains!12670 (keys!17286 (addToMapMapFromBucket!563 l!12755 acc!957)) key!4289))))

(declare-fun bm!310566 () Bool)

(declare-fun call!310571 () Bool)

(declare-fun e!2777716 () List!50289)

(assert (=> bm!310566 (= call!310571 (contains!12670 e!2777716 key!4289))))

(declare-fun c!759178 () Bool)

(declare-fun c!759179 () Bool)

(assert (=> bm!310566 (= c!759178 c!759179)))

(declare-fun d!1360191 () Bool)

(declare-fun e!2777714 () Bool)

(assert (=> d!1360191 e!2777714))

(declare-fun res!1849827 () Bool)

(assert (=> d!1360191 (=> res!1849827 e!2777714)))

(declare-fun e!2777718 () Bool)

(assert (=> d!1360191 (= res!1849827 e!2777718)))

(declare-fun res!1849826 () Bool)

(assert (=> d!1360191 (=> (not res!1849826) (not e!2777718))))

(declare-fun lt!1651994 () Bool)

(assert (=> d!1360191 (= res!1849826 (not lt!1651994))))

(declare-fun lt!1651993 () Bool)

(assert (=> d!1360191 (= lt!1651994 lt!1651993)))

(declare-fun lt!1651997 () Unit!86733)

(declare-fun e!2777717 () Unit!86733)

(assert (=> d!1360191 (= lt!1651997 e!2777717)))

(assert (=> d!1360191 (= c!759179 lt!1651993)))

(assert (=> d!1360191 (= lt!1651993 (containsKey!1394 (toList!3956 (addToMapMapFromBucket!563 l!12755 acc!957)) key!4289))))

(assert (=> d!1360191 (= (contains!12667 (addToMapMapFromBucket!563 l!12755 acc!957) key!4289) lt!1651994)))

(declare-fun b!4460783 () Bool)

(assert (=> b!4460783 (= e!2777716 (keys!17286 (addToMapMapFromBucket!563 l!12755 acc!957)))))

(declare-fun b!4460784 () Bool)

(declare-fun lt!1651998 () Unit!86733)

(assert (=> b!4460784 (= e!2777717 lt!1651998)))

(declare-fun lt!1651992 () Unit!86733)

(assert (=> b!4460784 (= lt!1651992 (lemmaContainsKeyImpliesGetValueByKeyDefined!776 (toList!3956 (addToMapMapFromBucket!563 l!12755 acc!957)) key!4289))))

(assert (=> b!4460784 (isDefined!8173 (getValueByKey!871 (toList!3956 (addToMapMapFromBucket!563 l!12755 acc!957)) key!4289))))

(declare-fun lt!1651999 () Unit!86733)

(assert (=> b!4460784 (= lt!1651999 lt!1651992)))

(assert (=> b!4460784 (= lt!1651998 (lemmaInListThenGetKeysListContains!349 (toList!3956 (addToMapMapFromBucket!563 l!12755 acc!957)) key!4289))))

(assert (=> b!4460784 call!310571))

(declare-fun b!4460785 () Bool)

(declare-fun e!2777713 () Unit!86733)

(declare-fun Unit!86768 () Unit!86733)

(assert (=> b!4460785 (= e!2777713 Unit!86768)))

(declare-fun b!4460786 () Bool)

(assert (=> b!4460786 (= e!2777718 (not (contains!12670 (keys!17286 (addToMapMapFromBucket!563 l!12755 acc!957)) key!4289)))))

(declare-fun b!4460787 () Bool)

(assert (=> b!4460787 (= e!2777716 (getKeysList!353 (toList!3956 (addToMapMapFromBucket!563 l!12755 acc!957))))))

(declare-fun b!4460788 () Bool)

(assert (=> b!4460788 false))

(declare-fun lt!1651996 () Unit!86733)

(declare-fun lt!1651995 () Unit!86733)

(assert (=> b!4460788 (= lt!1651996 lt!1651995)))

(assert (=> b!4460788 (containsKey!1394 (toList!3956 (addToMapMapFromBucket!563 l!12755 acc!957)) key!4289)))

(assert (=> b!4460788 (= lt!1651995 (lemmaInGetKeysListThenContainsKey!352 (toList!3956 (addToMapMapFromBucket!563 l!12755 acc!957)) key!4289))))

(declare-fun Unit!86772 () Unit!86733)

(assert (=> b!4460788 (= e!2777713 Unit!86772)))

(declare-fun b!4460789 () Bool)

(assert (=> b!4460789 (= e!2777717 e!2777713)))

(declare-fun c!759177 () Bool)

(assert (=> b!4460789 (= c!759177 call!310571)))

(declare-fun b!4460790 () Bool)

(assert (=> b!4460790 (= e!2777714 e!2777715)))

(declare-fun res!1849828 () Bool)

(assert (=> b!4460790 (=> (not res!1849828) (not e!2777715))))

(assert (=> b!4460790 (= res!1849828 (isDefined!8173 (getValueByKey!871 (toList!3956 (addToMapMapFromBucket!563 l!12755 acc!957)) key!4289)))))

(assert (= (and d!1360191 c!759179) b!4460784))

(assert (= (and d!1360191 (not c!759179)) b!4460789))

(assert (= (and b!4460789 c!759177) b!4460788))

(assert (= (and b!4460789 (not c!759177)) b!4460785))

(assert (= (or b!4460784 b!4460789) bm!310566))

(assert (= (and bm!310566 c!759178) b!4460787))

(assert (= (and bm!310566 (not c!759178)) b!4460783))

(assert (= (and d!1360191 res!1849826) b!4460786))

(assert (= (and d!1360191 (not res!1849827)) b!4460790))

(assert (= (and b!4460790 res!1849828) b!4460782))

(declare-fun m!5163777 () Bool)

(assert (=> b!4460784 m!5163777))

(declare-fun m!5163779 () Bool)

(assert (=> b!4460784 m!5163779))

(assert (=> b!4460784 m!5163779))

(declare-fun m!5163781 () Bool)

(assert (=> b!4460784 m!5163781))

(declare-fun m!5163783 () Bool)

(assert (=> b!4460784 m!5163783))

(declare-fun m!5163785 () Bool)

(assert (=> b!4460788 m!5163785))

(declare-fun m!5163787 () Bool)

(assert (=> b!4460788 m!5163787))

(declare-fun m!5163789 () Bool)

(assert (=> bm!310566 m!5163789))

(assert (=> b!4460783 m!5163565))

(declare-fun m!5163791 () Bool)

(assert (=> b!4460783 m!5163791))

(declare-fun m!5163793 () Bool)

(assert (=> b!4460787 m!5163793))

(assert (=> b!4460782 m!5163565))

(assert (=> b!4460782 m!5163791))

(assert (=> b!4460782 m!5163791))

(declare-fun m!5163795 () Bool)

(assert (=> b!4460782 m!5163795))

(assert (=> b!4460790 m!5163779))

(assert (=> b!4460790 m!5163779))

(assert (=> b!4460790 m!5163781))

(assert (=> b!4460786 m!5163565))

(assert (=> b!4460786 m!5163791))

(assert (=> b!4460786 m!5163791))

(assert (=> b!4460786 m!5163795))

(assert (=> d!1360191 m!5163785))

(assert (=> b!4460623 d!1360191))

(declare-fun bs!791465 () Bool)

(declare-fun b!4460795 () Bool)

(assert (= bs!791465 (and b!4460795 b!4460773)))

(declare-fun lambda!161704 () Int)

(assert (=> bs!791465 (= (= acc!957 lt!1651760) (= lambda!161704 lambda!161700))))

(declare-fun bs!791466 () Bool)

(assert (= bs!791466 (and b!4460795 b!4460772)))

(assert (=> bs!791466 (= (= acc!957 lt!1651760) (= lambda!161704 lambda!161701))))

(assert (=> bs!791466 (= (= acc!957 lt!1651985) (= lambda!161704 lambda!161702))))

(declare-fun bs!791467 () Bool)

(assert (= bs!791467 (and b!4460795 d!1360169)))

(assert (=> bs!791467 (= (= acc!957 lt!1651979) (= lambda!161704 lambda!161703))))

(assert (=> b!4460795 true))

(declare-fun bs!791468 () Bool)

(declare-fun b!4460794 () Bool)

(assert (= bs!791468 (and b!4460794 b!4460773)))

(declare-fun lambda!161705 () Int)

(assert (=> bs!791468 (= (= acc!957 lt!1651760) (= lambda!161705 lambda!161700))))

(declare-fun bs!791469 () Bool)

(assert (= bs!791469 (and b!4460794 b!4460795)))

(assert (=> bs!791469 (= lambda!161705 lambda!161704)))

(declare-fun bs!791470 () Bool)

(assert (= bs!791470 (and b!4460794 d!1360169)))

(assert (=> bs!791470 (= (= acc!957 lt!1651979) (= lambda!161705 lambda!161703))))

(declare-fun bs!791471 () Bool)

(assert (= bs!791471 (and b!4460794 b!4460772)))

(assert (=> bs!791471 (= (= acc!957 lt!1651760) (= lambda!161705 lambda!161701))))

(assert (=> bs!791471 (= (= acc!957 lt!1651985) (= lambda!161705 lambda!161702))))

(assert (=> b!4460794 true))

(declare-fun lt!1652014 () ListMap!3209)

(declare-fun lambda!161706 () Int)

(assert (=> b!4460794 (= (= lt!1652014 acc!957) (= lambda!161706 lambda!161705))))

(assert (=> bs!791468 (= (= lt!1652014 lt!1651760) (= lambda!161706 lambda!161700))))

(assert (=> bs!791469 (= (= lt!1652014 acc!957) (= lambda!161706 lambda!161704))))

(assert (=> bs!791470 (= (= lt!1652014 lt!1651979) (= lambda!161706 lambda!161703))))

(assert (=> bs!791471 (= (= lt!1652014 lt!1651760) (= lambda!161706 lambda!161701))))

(assert (=> bs!791471 (= (= lt!1652014 lt!1651985) (= lambda!161706 lambda!161702))))

(assert (=> b!4460794 true))

(declare-fun bs!791472 () Bool)

(declare-fun d!1360193 () Bool)

(assert (= bs!791472 (and d!1360193 b!4460794)))

(declare-fun lt!1652008 () ListMap!3209)

(declare-fun lambda!161707 () Int)

(assert (=> bs!791472 (= (= lt!1652008 acc!957) (= lambda!161707 lambda!161705))))

(declare-fun bs!791473 () Bool)

(assert (= bs!791473 (and d!1360193 b!4460773)))

(assert (=> bs!791473 (= (= lt!1652008 lt!1651760) (= lambda!161707 lambda!161700))))

(assert (=> bs!791472 (= (= lt!1652008 lt!1652014) (= lambda!161707 lambda!161706))))

(declare-fun bs!791474 () Bool)

(assert (= bs!791474 (and d!1360193 b!4460795)))

(assert (=> bs!791474 (= (= lt!1652008 acc!957) (= lambda!161707 lambda!161704))))

(declare-fun bs!791475 () Bool)

(assert (= bs!791475 (and d!1360193 d!1360169)))

(assert (=> bs!791475 (= (= lt!1652008 lt!1651979) (= lambda!161707 lambda!161703))))

(declare-fun bs!791476 () Bool)

(assert (= bs!791476 (and d!1360193 b!4460772)))

(assert (=> bs!791476 (= (= lt!1652008 lt!1651760) (= lambda!161707 lambda!161701))))

(assert (=> bs!791476 (= (= lt!1652008 lt!1651985) (= lambda!161707 lambda!161702))))

(assert (=> d!1360193 true))

(declare-fun b!4460791 () Bool)

(declare-fun e!2777720 () Bool)

(assert (=> b!4460791 (= e!2777720 (invariantList!905 (toList!3956 lt!1652008)))))

(declare-fun bm!310567 () Bool)

(declare-fun call!310574 () Bool)

(declare-fun c!759180 () Bool)

(assert (=> bm!310567 (= call!310574 (forall!9915 (toList!3956 acc!957) (ite c!759180 lambda!161704 lambda!161706)))))

(declare-fun call!310573 () Bool)

(declare-fun bm!310568 () Bool)

(assert (=> bm!310568 (= call!310573 (forall!9915 (ite c!759180 (toList!3956 acc!957) (t!357237 l!12755)) (ite c!759180 lambda!161704 lambda!161706)))))

(declare-fun b!4460792 () Bool)

(declare-fun e!2777721 () Bool)

(assert (=> b!4460792 (= e!2777721 (forall!9915 (toList!3956 acc!957) lambda!161706))))

(declare-fun b!4460793 () Bool)

(declare-fun res!1849830 () Bool)

(assert (=> b!4460793 (=> (not res!1849830) (not e!2777720))))

(assert (=> b!4460793 (= res!1849830 (forall!9915 (toList!3956 acc!957) lambda!161707))))

(assert (=> d!1360193 e!2777720))

(declare-fun res!1849829 () Bool)

(assert (=> d!1360193 (=> (not res!1849829) (not e!2777720))))

(assert (=> d!1360193 (= res!1849829 (forall!9915 l!12755 lambda!161707))))

(declare-fun e!2777719 () ListMap!3209)

(assert (=> d!1360193 (= lt!1652008 e!2777719)))

(assert (=> d!1360193 (= c!759180 ((_ is Nil!50163) l!12755))))

(assert (=> d!1360193 (noDuplicateKeys!984 l!12755)))

(assert (=> d!1360193 (= (addToMapMapFromBucket!563 l!12755 acc!957) lt!1652008)))

(declare-fun bm!310569 () Bool)

(declare-fun call!310572 () Unit!86733)

(assert (=> bm!310569 (= call!310572 (lemmaContainsAllItsOwnKeys!254 acc!957))))

(assert (=> b!4460794 (= e!2777719 lt!1652014)))

(declare-fun lt!1652016 () ListMap!3209)

(assert (=> b!4460794 (= lt!1652016 (+!1337 acc!957 (h!55908 l!12755)))))

(assert (=> b!4460794 (= lt!1652014 (addToMapMapFromBucket!563 (t!357237 l!12755) (+!1337 acc!957 (h!55908 l!12755))))))

(declare-fun lt!1652009 () Unit!86733)

(assert (=> b!4460794 (= lt!1652009 call!310572)))

(assert (=> b!4460794 (forall!9915 (toList!3956 acc!957) lambda!161705)))

(declare-fun lt!1652001 () Unit!86733)

(assert (=> b!4460794 (= lt!1652001 lt!1652009)))

(assert (=> b!4460794 (forall!9915 (toList!3956 lt!1652016) lambda!161706)))

(declare-fun lt!1652010 () Unit!86733)

(declare-fun Unit!86774 () Unit!86733)

(assert (=> b!4460794 (= lt!1652010 Unit!86774)))

(assert (=> b!4460794 call!310573))

(declare-fun lt!1652018 () Unit!86733)

(declare-fun Unit!86775 () Unit!86733)

(assert (=> b!4460794 (= lt!1652018 Unit!86775)))

(declare-fun lt!1652017 () Unit!86733)

(declare-fun Unit!86776 () Unit!86733)

(assert (=> b!4460794 (= lt!1652017 Unit!86776)))

(declare-fun lt!1652007 () Unit!86733)

(assert (=> b!4460794 (= lt!1652007 (forallContained!2204 (toList!3956 lt!1652016) lambda!161706 (h!55908 l!12755)))))

(assert (=> b!4460794 (contains!12667 lt!1652016 (_1!28460 (h!55908 l!12755)))))

(declare-fun lt!1652003 () Unit!86733)

(declare-fun Unit!86777 () Unit!86733)

(assert (=> b!4460794 (= lt!1652003 Unit!86777)))

(assert (=> b!4460794 (contains!12667 lt!1652014 (_1!28460 (h!55908 l!12755)))))

(declare-fun lt!1652020 () Unit!86733)

(declare-fun Unit!86778 () Unit!86733)

(assert (=> b!4460794 (= lt!1652020 Unit!86778)))

(assert (=> b!4460794 (forall!9915 l!12755 lambda!161706)))

(declare-fun lt!1652004 () Unit!86733)

(declare-fun Unit!86779 () Unit!86733)

(assert (=> b!4460794 (= lt!1652004 Unit!86779)))

(assert (=> b!4460794 (forall!9915 (toList!3956 lt!1652016) lambda!161706)))

(declare-fun lt!1652005 () Unit!86733)

(declare-fun Unit!86780 () Unit!86733)

(assert (=> b!4460794 (= lt!1652005 Unit!86780)))

(declare-fun lt!1652002 () Unit!86733)

(declare-fun Unit!86781 () Unit!86733)

(assert (=> b!4460794 (= lt!1652002 Unit!86781)))

(declare-fun lt!1652019 () Unit!86733)

(assert (=> b!4460794 (= lt!1652019 (addForallContainsKeyThenBeforeAdding!253 acc!957 lt!1652014 (_1!28460 (h!55908 l!12755)) (_2!28460 (h!55908 l!12755))))))

(assert (=> b!4460794 call!310574))

(declare-fun lt!1652011 () Unit!86733)

(assert (=> b!4460794 (= lt!1652011 lt!1652019)))

(assert (=> b!4460794 (forall!9915 (toList!3956 acc!957) lambda!161706)))

(declare-fun lt!1652013 () Unit!86733)

(declare-fun Unit!86782 () Unit!86733)

(assert (=> b!4460794 (= lt!1652013 Unit!86782)))

(declare-fun res!1849831 () Bool)

(assert (=> b!4460794 (= res!1849831 (forall!9915 l!12755 lambda!161706))))

(assert (=> b!4460794 (=> (not res!1849831) (not e!2777721))))

(assert (=> b!4460794 e!2777721))

(declare-fun lt!1652006 () Unit!86733)

(declare-fun Unit!86783 () Unit!86733)

(assert (=> b!4460794 (= lt!1652006 Unit!86783)))

(assert (=> b!4460795 (= e!2777719 acc!957)))

(declare-fun lt!1652000 () Unit!86733)

(assert (=> b!4460795 (= lt!1652000 call!310572)))

(assert (=> b!4460795 call!310573))

(declare-fun lt!1652012 () Unit!86733)

(assert (=> b!4460795 (= lt!1652012 lt!1652000)))

(assert (=> b!4460795 call!310574))

(declare-fun lt!1652015 () Unit!86733)

(declare-fun Unit!86784 () Unit!86733)

(assert (=> b!4460795 (= lt!1652015 Unit!86784)))

(assert (= (and d!1360193 c!759180) b!4460795))

(assert (= (and d!1360193 (not c!759180)) b!4460794))

(assert (= (and b!4460794 res!1849831) b!4460792))

(assert (= (or b!4460795 b!4460794) bm!310567))

(assert (= (or b!4460795 b!4460794) bm!310568))

(assert (= (or b!4460795 b!4460794) bm!310569))

(assert (= (and d!1360193 res!1849829) b!4460793))

(assert (= (and b!4460793 res!1849830) b!4460791))

(declare-fun m!5163797 () Bool)

(assert (=> bm!310569 m!5163797))

(declare-fun m!5163799 () Bool)

(assert (=> bm!310567 m!5163799))

(declare-fun m!5163801 () Bool)

(assert (=> b!4460794 m!5163801))

(assert (=> b!4460794 m!5163801))

(declare-fun m!5163803 () Bool)

(assert (=> b!4460794 m!5163803))

(declare-fun m!5163805 () Bool)

(assert (=> b!4460794 m!5163805))

(assert (=> b!4460794 m!5163569))

(declare-fun m!5163807 () Bool)

(assert (=> b!4460794 m!5163807))

(assert (=> b!4460794 m!5163569))

(declare-fun m!5163809 () Bool)

(assert (=> b!4460794 m!5163809))

(declare-fun m!5163811 () Bool)

(assert (=> b!4460794 m!5163811))

(declare-fun m!5163813 () Bool)

(assert (=> b!4460794 m!5163813))

(declare-fun m!5163815 () Bool)

(assert (=> b!4460794 m!5163815))

(declare-fun m!5163817 () Bool)

(assert (=> b!4460794 m!5163817))

(assert (=> b!4460794 m!5163803))

(declare-fun m!5163819 () Bool)

(assert (=> b!4460791 m!5163819))

(declare-fun m!5163821 () Bool)

(assert (=> b!4460793 m!5163821))

(assert (=> b!4460792 m!5163815))

(declare-fun m!5163823 () Bool)

(assert (=> d!1360193 m!5163823))

(assert (=> d!1360193 m!5163553))

(declare-fun m!5163825 () Bool)

(assert (=> bm!310568 m!5163825))

(assert (=> b!4460623 d!1360193))

(declare-fun d!1360195 () Bool)

(declare-fun res!1849832 () Bool)

(declare-fun e!2777722 () Bool)

(assert (=> d!1360195 (=> res!1849832 e!2777722)))

(assert (=> d!1360195 (= res!1849832 (and ((_ is Cons!50163) l!12755) (= (_1!28460 (h!55908 l!12755)) key!4289)))))

(assert (=> d!1360195 (= (containsKey!1392 l!12755 key!4289) e!2777722)))

(declare-fun b!4460796 () Bool)

(declare-fun e!2777723 () Bool)

(assert (=> b!4460796 (= e!2777722 e!2777723)))

(declare-fun res!1849833 () Bool)

(assert (=> b!4460796 (=> (not res!1849833) (not e!2777723))))

(assert (=> b!4460796 (= res!1849833 ((_ is Cons!50163) l!12755))))

(declare-fun b!4460797 () Bool)

(assert (=> b!4460797 (= e!2777723 (containsKey!1392 (t!357237 l!12755) key!4289))))

(assert (= (and d!1360195 (not res!1849832)) b!4460796))

(assert (= (and b!4460796 res!1849833) b!4460797))

(assert (=> b!4460797 m!5163557))

(assert (=> b!4460618 d!1360195))

(declare-fun d!1360197 () Bool)

(declare-fun res!1849834 () Bool)

(declare-fun e!2777724 () Bool)

(assert (=> d!1360197 (=> res!1849834 e!2777724)))

(assert (=> d!1360197 (= res!1849834 (not ((_ is Cons!50163) (t!357237 l!12755))))))

(assert (=> d!1360197 (= (noDuplicateKeys!984 (t!357237 l!12755)) e!2777724)))

(declare-fun b!4460798 () Bool)

(declare-fun e!2777725 () Bool)

(assert (=> b!4460798 (= e!2777724 e!2777725)))

(declare-fun res!1849835 () Bool)

(assert (=> b!4460798 (=> (not res!1849835) (not e!2777725))))

(assert (=> b!4460798 (= res!1849835 (not (containsKey!1392 (t!357237 (t!357237 l!12755)) (_1!28460 (h!55908 (t!357237 l!12755))))))))

(declare-fun b!4460799 () Bool)

(assert (=> b!4460799 (= e!2777725 (noDuplicateKeys!984 (t!357237 (t!357237 l!12755))))))

(assert (= (and d!1360197 (not res!1849834)) b!4460798))

(assert (= (and b!4460798 res!1849835) b!4460799))

(declare-fun m!5163827 () Bool)

(assert (=> b!4460798 m!5163827))

(declare-fun m!5163829 () Bool)

(assert (=> b!4460799 m!5163829))

(assert (=> b!4460624 d!1360197))

(declare-fun d!1360199 () Bool)

(declare-fun lt!1652023 () Int)

(assert (=> d!1360199 (>= lt!1652023 0)))

(declare-fun e!2777728 () Int)

(assert (=> d!1360199 (= lt!1652023 e!2777728)))

(declare-fun c!759183 () Bool)

(assert (=> d!1360199 (= c!759183 ((_ is Nil!50163) (t!357237 l!12755)))))

(assert (=> d!1360199 (= (size!35906 (t!357237 l!12755)) lt!1652023)))

(declare-fun b!4460804 () Bool)

(assert (=> b!4460804 (= e!2777728 0)))

(declare-fun b!4460805 () Bool)

(assert (=> b!4460805 (= e!2777728 (+ 1 (size!35906 (t!357237 (t!357237 l!12755)))))))

(assert (= (and d!1360199 c!759183) b!4460804))

(assert (= (and d!1360199 (not c!759183)) b!4460805))

(declare-fun m!5163831 () Bool)

(assert (=> b!4460805 m!5163831))

(assert (=> b!4460620 d!1360199))

(declare-fun d!1360201 () Bool)

(declare-fun lt!1652024 () Int)

(assert (=> d!1360201 (>= lt!1652024 0)))

(declare-fun e!2777729 () Int)

(assert (=> d!1360201 (= lt!1652024 e!2777729)))

(declare-fun c!759184 () Bool)

(assert (=> d!1360201 (= c!759184 ((_ is Nil!50163) l!12755))))

(assert (=> d!1360201 (= (size!35906 l!12755) lt!1652024)))

(declare-fun b!4460806 () Bool)

(assert (=> b!4460806 (= e!2777729 0)))

(declare-fun b!4460807 () Bool)

(assert (=> b!4460807 (= e!2777729 (+ 1 (size!35906 (t!357237 l!12755))))))

(assert (= (and d!1360201 c!759184) b!4460806))

(assert (= (and d!1360201 (not c!759184)) b!4460807))

(assert (=> b!4460807 m!5163559))

(assert (=> b!4460620 d!1360201))

(declare-fun tp!1335690 () Bool)

(declare-fun e!2777732 () Bool)

(declare-fun b!4460812 () Bool)

(assert (=> b!4460812 (= e!2777732 (and tp_is_empty!27157 tp_is_empty!27159 tp!1335690))))

(assert (=> b!4460622 (= tp!1335683 e!2777732)))

(assert (= (and b!4460622 ((_ is Cons!50163) (t!357237 l!12755))) b!4460812))

(declare-fun e!2777733 () Bool)

(declare-fun tp!1335691 () Bool)

(declare-fun b!4460813 () Bool)

(assert (=> b!4460813 (= e!2777733 (and tp_is_empty!27157 tp_is_empty!27159 tp!1335691))))

(assert (=> b!4460619 (= tp!1335682 e!2777733)))

(assert (= (and b!4460619 ((_ is Cons!50163) (toList!3956 acc!957))) b!4460813))

(check-sat (not b!4460783) (not b!4460788) (not bm!310569) (not b!4460786) (not b!4460689) (not b!4460781) (not b!4460636) (not d!1360193) (not b!4460642) (not bm!310567) (not d!1360163) (not b!4460690) (not b!4460691) (not b!4460798) (not b!4460791) tp_is_empty!27159 (not b!4460793) (not b!4460787) (not b!4460694) (not b!4460769) (not bm!310568) (not b!4460813) (not bm!310543) (not b!4460794) (not b!4460782) (not b!4460697) (not d!1360191) (not b!4460790) (not b!4460812) (not d!1360169) (not b!4460772) (not d!1360165) (not bm!310566) (not b!4460807) (not b!4460693) (not bm!310565) (not d!1360161) (not b!4460799) (not b!4460695) (not bm!310564) (not b!4460643) (not b!4460797) (not b!4460792) tp_is_empty!27157 (not b!4460637) (not b!4460805) (not b!4460784) (not b!4460771) (not b!4460770) (not bm!310563))
(check-sat)
