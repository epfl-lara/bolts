; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!486212 () Bool)

(assert start!486212)

(declare-fun b!4755739 () Bool)

(declare-fun e!2966840 () Bool)

(declare-fun tp!1350833 () Bool)

(assert (=> b!4755739 (= e!2966840 tp!1350833)))

(declare-fun b!4755740 () Bool)

(declare-fun res!2017574 () Bool)

(declare-fun e!2966838 () Bool)

(assert (=> b!4755740 (=> (not res!2017574) (not e!2966838))))

(declare-datatypes ((K!14695 0))(
  ( (K!14696 (val!20027 Int)) )
))
(declare-datatypes ((V!14941 0))(
  ( (V!14942 (val!20028 Int)) )
))
(declare-datatypes ((tuple2!54996 0))(
  ( (tuple2!54997 (_1!30792 K!14695) (_2!30792 V!14941)) )
))
(declare-datatypes ((List!53282 0))(
  ( (Nil!53158) (Cons!53158 (h!59555 tuple2!54996) (t!360626 List!53282)) )
))
(declare-fun l!13115 () List!53282)

(get-info :version)

(assert (=> b!4755740 (= res!2017574 ((_ is Cons!53158) l!13115))))

(declare-datatypes ((ListMap!5681 0))(
  ( (ListMap!5682 (toList!6186 List!53282)) )
))
(declare-fun lhm1!51 () ListMap!5681)

(declare-fun b!4755742 () Bool)

(declare-fun e!2966836 () Bool)

(declare-fun lhm2!51 () ListMap!5681)

(declare-fun eq!1281 (ListMap!5681 ListMap!5681) Bool)

(declare-fun addToMapMapFromBucket!1618 (List!53282 ListMap!5681) ListMap!5681)

(assert (=> b!4755742 (= e!2966836 (eq!1281 (addToMapMapFromBucket!1618 l!13115 lhm1!51) (addToMapMapFromBucket!1618 l!13115 lhm2!51)))))

(declare-fun lt!1922488 () ListMap!5681)

(declare-fun lt!1922491 () ListMap!5681)

(assert (=> b!4755742 (eq!1281 (addToMapMapFromBucket!1618 (t!360626 l!13115) lt!1922488) (addToMapMapFromBucket!1618 (t!360626 l!13115) lt!1922491))))

(declare-datatypes ((Unit!137562 0))(
  ( (Unit!137563) )
))
(declare-fun lt!1922490 () Unit!137562)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!132 (ListMap!5681 ListMap!5681 List!53282) Unit!137562)

(assert (=> b!4755742 (= lt!1922490 (lemmaAddToMapFromBucketPreservesEquivalence!132 lt!1922488 lt!1922491 (t!360626 l!13115)))))

(declare-fun b!4755743 () Bool)

(declare-fun res!2017572 () Bool)

(assert (=> b!4755743 (=> (not res!2017572) (not e!2966838))))

(assert (=> b!4755743 (= res!2017572 (eq!1281 lhm1!51 lhm2!51))))

(declare-fun b!4755744 () Bool)

(declare-fun e!2966839 () Bool)

(declare-fun tp!1350831 () Bool)

(assert (=> b!4755744 (= e!2966839 tp!1350831)))

(declare-fun b!4755745 () Bool)

(assert (=> b!4755745 (= e!2966838 (not e!2966836))))

(declare-fun res!2017575 () Bool)

(assert (=> b!4755745 (=> res!2017575 e!2966836)))

(declare-fun noDuplicateKeys!2218 (List!53282) Bool)

(assert (=> b!4755745 (= res!2017575 (not (noDuplicateKeys!2218 (t!360626 l!13115))))))

(assert (=> b!4755745 (eq!1281 lt!1922488 lt!1922491)))

(declare-fun lt!1922489 () Unit!137562)

(declare-fun lemmaAddToEqMapsPreservesEq!130 (ListMap!5681 ListMap!5681 K!14695 V!14941) Unit!137562)

(assert (=> b!4755745 (= lt!1922489 (lemmaAddToEqMapsPreservesEq!130 lhm1!51 lhm2!51 (_1!30792 (h!59555 l!13115)) (_2!30792 (h!59555 l!13115))))))

(declare-fun +!2446 (ListMap!5681 tuple2!54996) ListMap!5681)

(assert (=> b!4755745 (= lt!1922491 (+!2446 lhm2!51 (h!59555 l!13115)))))

(assert (=> b!4755745 (= lt!1922488 (+!2446 lhm1!51 (h!59555 l!13115)))))

(declare-fun res!2017573 () Bool)

(assert (=> start!486212 (=> (not res!2017573) (not e!2966838))))

(assert (=> start!486212 (= res!2017573 (noDuplicateKeys!2218 l!13115))))

(assert (=> start!486212 e!2966838))

(declare-fun e!2966837 () Bool)

(assert (=> start!486212 e!2966837))

(declare-fun inv!68565 (ListMap!5681) Bool)

(assert (=> start!486212 (and (inv!68565 lhm1!51) e!2966839)))

(assert (=> start!486212 (and (inv!68565 lhm2!51) e!2966840)))

(declare-fun b!4755741 () Bool)

(declare-fun tp_is_empty!32167 () Bool)

(declare-fun tp_is_empty!32165 () Bool)

(declare-fun tp!1350832 () Bool)

(assert (=> b!4755741 (= e!2966837 (and tp_is_empty!32165 tp_is_empty!32167 tp!1350832))))

(assert (= (and start!486212 res!2017573) b!4755743))

(assert (= (and b!4755743 res!2017572) b!4755740))

(assert (= (and b!4755740 res!2017574) b!4755745))

(assert (= (and b!4755745 (not res!2017575)) b!4755742))

(assert (= (and start!486212 ((_ is Cons!53158) l!13115)) b!4755741))

(assert (= start!486212 b!4755744))

(assert (= start!486212 b!4755739))

(declare-fun m!5725633 () Bool)

(assert (=> b!4755742 m!5725633))

(declare-fun m!5725635 () Bool)

(assert (=> b!4755742 m!5725635))

(assert (=> b!4755742 m!5725635))

(declare-fun m!5725637 () Bool)

(assert (=> b!4755742 m!5725637))

(declare-fun m!5725639 () Bool)

(assert (=> b!4755742 m!5725639))

(assert (=> b!4755742 m!5725637))

(declare-fun m!5725641 () Bool)

(assert (=> b!4755742 m!5725641))

(assert (=> b!4755742 m!5725633))

(declare-fun m!5725643 () Bool)

(assert (=> b!4755742 m!5725643))

(declare-fun m!5725645 () Bool)

(assert (=> b!4755742 m!5725645))

(assert (=> b!4755742 m!5725643))

(declare-fun m!5725647 () Bool)

(assert (=> b!4755743 m!5725647))

(declare-fun m!5725649 () Bool)

(assert (=> b!4755745 m!5725649))

(declare-fun m!5725651 () Bool)

(assert (=> b!4755745 m!5725651))

(declare-fun m!5725653 () Bool)

(assert (=> b!4755745 m!5725653))

(declare-fun m!5725655 () Bool)

(assert (=> b!4755745 m!5725655))

(declare-fun m!5725657 () Bool)

(assert (=> b!4755745 m!5725657))

(declare-fun m!5725659 () Bool)

(assert (=> start!486212 m!5725659))

(declare-fun m!5725661 () Bool)

(assert (=> start!486212 m!5725661))

(declare-fun m!5725663 () Bool)

(assert (=> start!486212 m!5725663))

(check-sat (not b!4755741) tp_is_empty!32165 (not b!4755745) tp_is_empty!32167 (not b!4755744) (not start!486212) (not b!4755743) (not b!4755742) (not b!4755739))
(check-sat)
(get-model)

(declare-fun d!1520685 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9566 (List!53282) (InoxSet tuple2!54996))

(assert (=> d!1520685 (= (eq!1281 lt!1922488 lt!1922491) (= (content!9566 (toList!6186 lt!1922488)) (content!9566 (toList!6186 lt!1922491))))))

(declare-fun bs!1146700 () Bool)

(assert (= bs!1146700 d!1520685))

(declare-fun m!5725665 () Bool)

(assert (=> bs!1146700 m!5725665))

(declare-fun m!5725667 () Bool)

(assert (=> bs!1146700 m!5725667))

(assert (=> b!4755745 d!1520685))

(declare-fun d!1520687 () Bool)

(assert (=> d!1520687 (eq!1281 (+!2446 lhm1!51 (tuple2!54997 (_1!30792 (h!59555 l!13115)) (_2!30792 (h!59555 l!13115)))) (+!2446 lhm2!51 (tuple2!54997 (_1!30792 (h!59555 l!13115)) (_2!30792 (h!59555 l!13115)))))))

(declare-fun lt!1922497 () Unit!137562)

(declare-fun choose!33890 (ListMap!5681 ListMap!5681 K!14695 V!14941) Unit!137562)

(assert (=> d!1520687 (= lt!1922497 (choose!33890 lhm1!51 lhm2!51 (_1!30792 (h!59555 l!13115)) (_2!30792 (h!59555 l!13115))))))

(assert (=> d!1520687 (eq!1281 lhm1!51 lhm2!51)))

(assert (=> d!1520687 (= (lemmaAddToEqMapsPreservesEq!130 lhm1!51 lhm2!51 (_1!30792 (h!59555 l!13115)) (_2!30792 (h!59555 l!13115))) lt!1922497)))

(declare-fun bs!1146702 () Bool)

(assert (= bs!1146702 d!1520687))

(declare-fun m!5725677 () Bool)

(assert (=> bs!1146702 m!5725677))

(assert (=> bs!1146702 m!5725647))

(declare-fun m!5725679 () Bool)

(assert (=> bs!1146702 m!5725679))

(assert (=> bs!1146702 m!5725677))

(declare-fun m!5725681 () Bool)

(assert (=> bs!1146702 m!5725681))

(assert (=> bs!1146702 m!5725679))

(declare-fun m!5725683 () Bool)

(assert (=> bs!1146702 m!5725683))

(assert (=> b!4755745 d!1520687))

(declare-fun d!1520691 () Bool)

(declare-fun e!2966855 () Bool)

(assert (=> d!1520691 e!2966855))

(declare-fun res!2017597 () Bool)

(assert (=> d!1520691 (=> (not res!2017597) (not e!2966855))))

(declare-fun lt!1922522 () ListMap!5681)

(declare-fun contains!16584 (ListMap!5681 K!14695) Bool)

(assert (=> d!1520691 (= res!2017597 (contains!16584 lt!1922522 (_1!30792 (h!59555 l!13115))))))

(declare-fun lt!1922523 () List!53282)

(assert (=> d!1520691 (= lt!1922522 (ListMap!5682 lt!1922523))))

(declare-fun lt!1922524 () Unit!137562)

(declare-fun lt!1922525 () Unit!137562)

(assert (=> d!1520691 (= lt!1922524 lt!1922525)))

(declare-datatypes ((Option!12567 0))(
  ( (None!12566) (Some!12566 (v!47267 V!14941)) )
))
(declare-fun getValueByKey!2117 (List!53282 K!14695) Option!12567)

(assert (=> d!1520691 (= (getValueByKey!2117 lt!1922523 (_1!30792 (h!59555 l!13115))) (Some!12566 (_2!30792 (h!59555 l!13115))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1194 (List!53282 K!14695 V!14941) Unit!137562)

(assert (=> d!1520691 (= lt!1922525 (lemmaContainsTupThenGetReturnValue!1194 lt!1922523 (_1!30792 (h!59555 l!13115)) (_2!30792 (h!59555 l!13115))))))

(declare-fun insertNoDuplicatedKeys!702 (List!53282 K!14695 V!14941) List!53282)

(assert (=> d!1520691 (= lt!1922523 (insertNoDuplicatedKeys!702 (toList!6186 lhm2!51) (_1!30792 (h!59555 l!13115)) (_2!30792 (h!59555 l!13115))))))

(assert (=> d!1520691 (= (+!2446 lhm2!51 (h!59555 l!13115)) lt!1922522)))

(declare-fun b!4755766 () Bool)

(declare-fun res!2017596 () Bool)

(assert (=> b!4755766 (=> (not res!2017596) (not e!2966855))))

(assert (=> b!4755766 (= res!2017596 (= (getValueByKey!2117 (toList!6186 lt!1922522) (_1!30792 (h!59555 l!13115))) (Some!12566 (_2!30792 (h!59555 l!13115)))))))

(declare-fun b!4755767 () Bool)

(declare-fun contains!16585 (List!53282 tuple2!54996) Bool)

(assert (=> b!4755767 (= e!2966855 (contains!16585 (toList!6186 lt!1922522) (h!59555 l!13115)))))

(assert (= (and d!1520691 res!2017597) b!4755766))

(assert (= (and b!4755766 res!2017596) b!4755767))

(declare-fun m!5725723 () Bool)

(assert (=> d!1520691 m!5725723))

(declare-fun m!5725725 () Bool)

(assert (=> d!1520691 m!5725725))

(declare-fun m!5725727 () Bool)

(assert (=> d!1520691 m!5725727))

(declare-fun m!5725729 () Bool)

(assert (=> d!1520691 m!5725729))

(declare-fun m!5725731 () Bool)

(assert (=> b!4755766 m!5725731))

(declare-fun m!5725733 () Bool)

(assert (=> b!4755767 m!5725733))

(assert (=> b!4755745 d!1520691))

(declare-fun d!1520705 () Bool)

(declare-fun e!2966856 () Bool)

(assert (=> d!1520705 e!2966856))

(declare-fun res!2017599 () Bool)

(assert (=> d!1520705 (=> (not res!2017599) (not e!2966856))))

(declare-fun lt!1922526 () ListMap!5681)

(assert (=> d!1520705 (= res!2017599 (contains!16584 lt!1922526 (_1!30792 (h!59555 l!13115))))))

(declare-fun lt!1922527 () List!53282)

(assert (=> d!1520705 (= lt!1922526 (ListMap!5682 lt!1922527))))

(declare-fun lt!1922528 () Unit!137562)

(declare-fun lt!1922529 () Unit!137562)

(assert (=> d!1520705 (= lt!1922528 lt!1922529)))

(assert (=> d!1520705 (= (getValueByKey!2117 lt!1922527 (_1!30792 (h!59555 l!13115))) (Some!12566 (_2!30792 (h!59555 l!13115))))))

(assert (=> d!1520705 (= lt!1922529 (lemmaContainsTupThenGetReturnValue!1194 lt!1922527 (_1!30792 (h!59555 l!13115)) (_2!30792 (h!59555 l!13115))))))

(assert (=> d!1520705 (= lt!1922527 (insertNoDuplicatedKeys!702 (toList!6186 lhm1!51) (_1!30792 (h!59555 l!13115)) (_2!30792 (h!59555 l!13115))))))

(assert (=> d!1520705 (= (+!2446 lhm1!51 (h!59555 l!13115)) lt!1922526)))

(declare-fun b!4755768 () Bool)

(declare-fun res!2017598 () Bool)

(assert (=> b!4755768 (=> (not res!2017598) (not e!2966856))))

(assert (=> b!4755768 (= res!2017598 (= (getValueByKey!2117 (toList!6186 lt!1922526) (_1!30792 (h!59555 l!13115))) (Some!12566 (_2!30792 (h!59555 l!13115)))))))

(declare-fun b!4755769 () Bool)

(assert (=> b!4755769 (= e!2966856 (contains!16585 (toList!6186 lt!1922526) (h!59555 l!13115)))))

(assert (= (and d!1520705 res!2017599) b!4755768))

(assert (= (and b!4755768 res!2017598) b!4755769))

(declare-fun m!5725739 () Bool)

(assert (=> d!1520705 m!5725739))

(declare-fun m!5725741 () Bool)

(assert (=> d!1520705 m!5725741))

(declare-fun m!5725743 () Bool)

(assert (=> d!1520705 m!5725743))

(declare-fun m!5725745 () Bool)

(assert (=> d!1520705 m!5725745))

(declare-fun m!5725747 () Bool)

(assert (=> b!4755768 m!5725747))

(declare-fun m!5725749 () Bool)

(assert (=> b!4755769 m!5725749))

(assert (=> b!4755745 d!1520705))

(declare-fun d!1520711 () Bool)

(declare-fun res!2017604 () Bool)

(declare-fun e!2966861 () Bool)

(assert (=> d!1520711 (=> res!2017604 e!2966861)))

(assert (=> d!1520711 (= res!2017604 (not ((_ is Cons!53158) (t!360626 l!13115))))))

(assert (=> d!1520711 (= (noDuplicateKeys!2218 (t!360626 l!13115)) e!2966861)))

(declare-fun b!4755774 () Bool)

(declare-fun e!2966862 () Bool)

(assert (=> b!4755774 (= e!2966861 e!2966862)))

(declare-fun res!2017605 () Bool)

(assert (=> b!4755774 (=> (not res!2017605) (not e!2966862))))

(declare-fun containsKey!3610 (List!53282 K!14695) Bool)

(assert (=> b!4755774 (= res!2017605 (not (containsKey!3610 (t!360626 (t!360626 l!13115)) (_1!30792 (h!59555 (t!360626 l!13115))))))))

(declare-fun b!4755775 () Bool)

(assert (=> b!4755775 (= e!2966862 (noDuplicateKeys!2218 (t!360626 (t!360626 l!13115))))))

(assert (= (and d!1520711 (not res!2017604)) b!4755774))

(assert (= (and b!4755774 res!2017605) b!4755775))

(declare-fun m!5725751 () Bool)

(assert (=> b!4755774 m!5725751))

(declare-fun m!5725753 () Bool)

(assert (=> b!4755775 m!5725753))

(assert (=> b!4755745 d!1520711))

(declare-fun d!1520713 () Bool)

(assert (=> d!1520713 (= (eq!1281 lhm1!51 lhm2!51) (= (content!9566 (toList!6186 lhm1!51)) (content!9566 (toList!6186 lhm2!51))))))

(declare-fun bs!1146707 () Bool)

(assert (= bs!1146707 d!1520713))

(declare-fun m!5725755 () Bool)

(assert (=> bs!1146707 m!5725755))

(declare-fun m!5725757 () Bool)

(assert (=> bs!1146707 m!5725757))

(assert (=> b!4755743 d!1520713))

(declare-fun d!1520715 () Bool)

(assert (=> d!1520715 (eq!1281 (addToMapMapFromBucket!1618 (t!360626 l!13115) lt!1922488) (addToMapMapFromBucket!1618 (t!360626 l!13115) lt!1922491))))

(declare-fun lt!1922532 () Unit!137562)

(declare-fun choose!33891 (ListMap!5681 ListMap!5681 List!53282) Unit!137562)

(assert (=> d!1520715 (= lt!1922532 (choose!33891 lt!1922488 lt!1922491 (t!360626 l!13115)))))

(assert (=> d!1520715 (noDuplicateKeys!2218 (t!360626 l!13115))))

(assert (=> d!1520715 (= (lemmaAddToMapFromBucketPreservesEquivalence!132 lt!1922488 lt!1922491 (t!360626 l!13115)) lt!1922532)))

(declare-fun bs!1146708 () Bool)

(assert (= bs!1146708 d!1520715))

(assert (=> bs!1146708 m!5725655))

(assert (=> bs!1146708 m!5725643))

(assert (=> bs!1146708 m!5725633))

(declare-fun m!5725759 () Bool)

(assert (=> bs!1146708 m!5725759))

(assert (=> bs!1146708 m!5725633))

(assert (=> bs!1146708 m!5725643))

(assert (=> bs!1146708 m!5725645))

(assert (=> b!4755742 d!1520715))

(declare-fun b!4755828 () Bool)

(assert (=> b!4755828 true))

(declare-fun bs!1146778 () Bool)

(declare-fun b!4755827 () Bool)

(assert (= bs!1146778 (and b!4755827 b!4755828)))

(declare-fun lambda!223378 () Int)

(declare-fun lambda!223377 () Int)

(assert (=> bs!1146778 (= lambda!223378 lambda!223377)))

(assert (=> b!4755827 true))

(declare-fun lt!1922711 () ListMap!5681)

(declare-fun lambda!223379 () Int)

(assert (=> bs!1146778 (= (= lt!1922711 lt!1922491) (= lambda!223379 lambda!223377))))

(assert (=> b!4755827 (= (= lt!1922711 lt!1922491) (= lambda!223379 lambda!223378))))

(assert (=> b!4755827 true))

(declare-fun bs!1146779 () Bool)

(declare-fun d!1520717 () Bool)

(assert (= bs!1146779 (and d!1520717 b!4755828)))

(declare-fun lt!1922720 () ListMap!5681)

(declare-fun lambda!223380 () Int)

(assert (=> bs!1146779 (= (= lt!1922720 lt!1922491) (= lambda!223380 lambda!223377))))

(declare-fun bs!1146780 () Bool)

(assert (= bs!1146780 (and d!1520717 b!4755827)))

(assert (=> bs!1146780 (= (= lt!1922720 lt!1922491) (= lambda!223380 lambda!223378))))

(assert (=> bs!1146780 (= (= lt!1922720 lt!1922711) (= lambda!223380 lambda!223379))))

(assert (=> d!1520717 true))

(declare-fun b!4755825 () Bool)

(declare-fun res!2017630 () Bool)

(declare-fun e!2966892 () Bool)

(assert (=> b!4755825 (=> (not res!2017630) (not e!2966892))))

(declare-fun forall!11788 (List!53282 Int) Bool)

(assert (=> b!4755825 (= res!2017630 (forall!11788 (toList!6186 lt!1922491) lambda!223380))))

(declare-fun b!4755826 () Bool)

(declare-fun invariantList!1631 (List!53282) Bool)

(assert (=> b!4755826 (= e!2966892 (invariantList!1631 (toList!6186 lt!1922720)))))

(assert (=> d!1520717 e!2966892))

(declare-fun res!2017632 () Bool)

(assert (=> d!1520717 (=> (not res!2017632) (not e!2966892))))

(assert (=> d!1520717 (= res!2017632 (forall!11788 (t!360626 l!13115) lambda!223380))))

(declare-fun e!2966893 () ListMap!5681)

(assert (=> d!1520717 (= lt!1922720 e!2966893)))

(declare-fun c!811676 () Bool)

(assert (=> d!1520717 (= c!811676 ((_ is Nil!53158) (t!360626 l!13115)))))

(assert (=> d!1520717 (noDuplicateKeys!2218 (t!360626 l!13115))))

(assert (=> d!1520717 (= (addToMapMapFromBucket!1618 (t!360626 l!13115) lt!1922491) lt!1922720)))

(assert (=> b!4755827 (= e!2966893 lt!1922711)))

(declare-fun lt!1922718 () ListMap!5681)

(assert (=> b!4755827 (= lt!1922718 (+!2446 lt!1922491 (h!59555 (t!360626 l!13115))))))

(assert (=> b!4755827 (= lt!1922711 (addToMapMapFromBucket!1618 (t!360626 (t!360626 l!13115)) (+!2446 lt!1922491 (h!59555 (t!360626 l!13115)))))))

(declare-fun lt!1922705 () Unit!137562)

(declare-fun call!333516 () Unit!137562)

(assert (=> b!4755827 (= lt!1922705 call!333516)))

(declare-fun call!333514 () Bool)

(assert (=> b!4755827 call!333514))

(declare-fun lt!1922715 () Unit!137562)

(assert (=> b!4755827 (= lt!1922715 lt!1922705)))

(assert (=> b!4755827 (forall!11788 (toList!6186 lt!1922718) lambda!223379)))

(declare-fun lt!1922714 () Unit!137562)

(declare-fun Unit!137585 () Unit!137562)

(assert (=> b!4755827 (= lt!1922714 Unit!137585)))

(declare-fun call!333515 () Bool)

(assert (=> b!4755827 call!333515))

(declare-fun lt!1922708 () Unit!137562)

(declare-fun Unit!137586 () Unit!137562)

(assert (=> b!4755827 (= lt!1922708 Unit!137586)))

(declare-fun lt!1922717 () Unit!137562)

(declare-fun Unit!137588 () Unit!137562)

(assert (=> b!4755827 (= lt!1922717 Unit!137588)))

(declare-fun lt!1922712 () Unit!137562)

(declare-fun forallContained!3814 (List!53282 Int tuple2!54996) Unit!137562)

(assert (=> b!4755827 (= lt!1922712 (forallContained!3814 (toList!6186 lt!1922718) lambda!223379 (h!59555 (t!360626 l!13115))))))

(assert (=> b!4755827 (contains!16584 lt!1922718 (_1!30792 (h!59555 (t!360626 l!13115))))))

(declare-fun lt!1922724 () Unit!137562)

(declare-fun Unit!137589 () Unit!137562)

(assert (=> b!4755827 (= lt!1922724 Unit!137589)))

(assert (=> b!4755827 (contains!16584 lt!1922711 (_1!30792 (h!59555 (t!360626 l!13115))))))

(declare-fun lt!1922723 () Unit!137562)

(declare-fun Unit!137590 () Unit!137562)

(assert (=> b!4755827 (= lt!1922723 Unit!137590)))

(assert (=> b!4755827 (forall!11788 (t!360626 l!13115) lambda!223379)))

(declare-fun lt!1922719 () Unit!137562)

(declare-fun Unit!137591 () Unit!137562)

(assert (=> b!4755827 (= lt!1922719 Unit!137591)))

(assert (=> b!4755827 (forall!11788 (toList!6186 lt!1922718) lambda!223379)))

(declare-fun lt!1922722 () Unit!137562)

(declare-fun Unit!137592 () Unit!137562)

(assert (=> b!4755827 (= lt!1922722 Unit!137592)))

(declare-fun lt!1922710 () Unit!137562)

(declare-fun Unit!137593 () Unit!137562)

(assert (=> b!4755827 (= lt!1922710 Unit!137593)))

(declare-fun lt!1922704 () Unit!137562)

(declare-fun addForallContainsKeyThenBeforeAdding!902 (ListMap!5681 ListMap!5681 K!14695 V!14941) Unit!137562)

(assert (=> b!4755827 (= lt!1922704 (addForallContainsKeyThenBeforeAdding!902 lt!1922491 lt!1922711 (_1!30792 (h!59555 (t!360626 l!13115))) (_2!30792 (h!59555 (t!360626 l!13115)))))))

(assert (=> b!4755827 (forall!11788 (toList!6186 lt!1922491) lambda!223379)))

(declare-fun lt!1922721 () Unit!137562)

(assert (=> b!4755827 (= lt!1922721 lt!1922704)))

(assert (=> b!4755827 (forall!11788 (toList!6186 lt!1922491) lambda!223379)))

(declare-fun lt!1922709 () Unit!137562)

(declare-fun Unit!137594 () Unit!137562)

(assert (=> b!4755827 (= lt!1922709 Unit!137594)))

(declare-fun res!2017631 () Bool)

(assert (=> b!4755827 (= res!2017631 (forall!11788 (t!360626 l!13115) lambda!223379))))

(declare-fun e!2966894 () Bool)

(assert (=> b!4755827 (=> (not res!2017631) (not e!2966894))))

(assert (=> b!4755827 e!2966894))

(declare-fun lt!1922706 () Unit!137562)

(declare-fun Unit!137595 () Unit!137562)

(assert (=> b!4755827 (= lt!1922706 Unit!137595)))

(assert (=> b!4755828 (= e!2966893 lt!1922491)))

(declare-fun lt!1922713 () Unit!137562)

(assert (=> b!4755828 (= lt!1922713 call!333516)))

(assert (=> b!4755828 call!333514))

(declare-fun lt!1922716 () Unit!137562)

(assert (=> b!4755828 (= lt!1922716 lt!1922713)))

(assert (=> b!4755828 call!333515))

(declare-fun lt!1922707 () Unit!137562)

(declare-fun Unit!137596 () Unit!137562)

(assert (=> b!4755828 (= lt!1922707 Unit!137596)))

(declare-fun b!4755829 () Bool)

(assert (=> b!4755829 (= e!2966894 (forall!11788 (toList!6186 lt!1922491) lambda!223379))))

(declare-fun bm!333509 () Bool)

(assert (=> bm!333509 (= call!333514 (forall!11788 (toList!6186 lt!1922491) (ite c!811676 lambda!223377 lambda!223378)))))

(declare-fun bm!333510 () Bool)

(assert (=> bm!333510 (= call!333515 (forall!11788 (ite c!811676 (toList!6186 lt!1922491) (t!360626 (t!360626 l!13115))) (ite c!811676 lambda!223377 lambda!223379)))))

(declare-fun bm!333511 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!903 (ListMap!5681) Unit!137562)

(assert (=> bm!333511 (= call!333516 (lemmaContainsAllItsOwnKeys!903 lt!1922491))))

(assert (= (and d!1520717 c!811676) b!4755828))

(assert (= (and d!1520717 (not c!811676)) b!4755827))

(assert (= (and b!4755827 res!2017631) b!4755829))

(assert (= (or b!4755828 b!4755827) bm!333509))

(assert (= (or b!4755828 b!4755827) bm!333510))

(assert (= (or b!4755828 b!4755827) bm!333511))

(assert (= (and d!1520717 res!2017632) b!4755825))

(assert (= (and b!4755825 res!2017630) b!4755826))

(declare-fun m!5725887 () Bool)

(assert (=> b!4755825 m!5725887))

(declare-fun m!5725889 () Bool)

(assert (=> b!4755829 m!5725889))

(declare-fun m!5725891 () Bool)

(assert (=> d!1520717 m!5725891))

(assert (=> d!1520717 m!5725655))

(declare-fun m!5725893 () Bool)

(assert (=> bm!333509 m!5725893))

(declare-fun m!5725895 () Bool)

(assert (=> bm!333511 m!5725895))

(declare-fun m!5725897 () Bool)

(assert (=> b!4755827 m!5725897))

(assert (=> b!4755827 m!5725889))

(declare-fun m!5725899 () Bool)

(assert (=> b!4755827 m!5725899))

(declare-fun m!5725901 () Bool)

(assert (=> b!4755827 m!5725901))

(declare-fun m!5725903 () Bool)

(assert (=> b!4755827 m!5725903))

(declare-fun m!5725905 () Bool)

(assert (=> b!4755827 m!5725905))

(assert (=> b!4755827 m!5725901))

(declare-fun m!5725907 () Bool)

(assert (=> b!4755827 m!5725907))

(declare-fun m!5725909 () Bool)

(assert (=> b!4755827 m!5725909))

(declare-fun m!5725911 () Bool)

(assert (=> b!4755827 m!5725911))

(assert (=> b!4755827 m!5725899))

(assert (=> b!4755827 m!5725909))

(assert (=> b!4755827 m!5725889))

(declare-fun m!5725913 () Bool)

(assert (=> b!4755826 m!5725913))

(declare-fun m!5725915 () Bool)

(assert (=> bm!333510 m!5725915))

(assert (=> b!4755742 d!1520717))

(declare-fun d!1520731 () Bool)

(assert (=> d!1520731 (= (eq!1281 (addToMapMapFromBucket!1618 l!13115 lhm1!51) (addToMapMapFromBucket!1618 l!13115 lhm2!51)) (= (content!9566 (toList!6186 (addToMapMapFromBucket!1618 l!13115 lhm1!51))) (content!9566 (toList!6186 (addToMapMapFromBucket!1618 l!13115 lhm2!51)))))))

(declare-fun bs!1146781 () Bool)

(assert (= bs!1146781 d!1520731))

(declare-fun m!5725917 () Bool)

(assert (=> bs!1146781 m!5725917))

(declare-fun m!5725919 () Bool)

(assert (=> bs!1146781 m!5725919))

(assert (=> b!4755742 d!1520731))

(declare-fun bs!1146782 () Bool)

(declare-fun b!4755835 () Bool)

(assert (= bs!1146782 (and b!4755835 b!4755828)))

(declare-fun lambda!223381 () Int)

(assert (=> bs!1146782 (= (= lt!1922488 lt!1922491) (= lambda!223381 lambda!223377))))

(declare-fun bs!1146783 () Bool)

(assert (= bs!1146783 (and b!4755835 b!4755827)))

(assert (=> bs!1146783 (= (= lt!1922488 lt!1922491) (= lambda!223381 lambda!223378))))

(assert (=> bs!1146783 (= (= lt!1922488 lt!1922711) (= lambda!223381 lambda!223379))))

(declare-fun bs!1146784 () Bool)

(assert (= bs!1146784 (and b!4755835 d!1520717)))

(assert (=> bs!1146784 (= (= lt!1922488 lt!1922720) (= lambda!223381 lambda!223380))))

(assert (=> b!4755835 true))

(declare-fun bs!1146785 () Bool)

(declare-fun b!4755834 () Bool)

(assert (= bs!1146785 (and b!4755834 d!1520717)))

(declare-fun lambda!223382 () Int)

(assert (=> bs!1146785 (= (= lt!1922488 lt!1922720) (= lambda!223382 lambda!223380))))

(declare-fun bs!1146786 () Bool)

(assert (= bs!1146786 (and b!4755834 b!4755835)))

(assert (=> bs!1146786 (= lambda!223382 lambda!223381)))

(declare-fun bs!1146787 () Bool)

(assert (= bs!1146787 (and b!4755834 b!4755827)))

(assert (=> bs!1146787 (= (= lt!1922488 lt!1922491) (= lambda!223382 lambda!223378))))

(declare-fun bs!1146788 () Bool)

(assert (= bs!1146788 (and b!4755834 b!4755828)))

(assert (=> bs!1146788 (= (= lt!1922488 lt!1922491) (= lambda!223382 lambda!223377))))

(assert (=> bs!1146787 (= (= lt!1922488 lt!1922711) (= lambda!223382 lambda!223379))))

(assert (=> b!4755834 true))

(declare-fun lt!1922732 () ListMap!5681)

(declare-fun lambda!223383 () Int)

(assert (=> bs!1146785 (= (= lt!1922732 lt!1922720) (= lambda!223383 lambda!223380))))

(assert (=> bs!1146786 (= (= lt!1922732 lt!1922488) (= lambda!223383 lambda!223381))))

(assert (=> bs!1146787 (= (= lt!1922732 lt!1922491) (= lambda!223383 lambda!223378))))

(assert (=> bs!1146788 (= (= lt!1922732 lt!1922491) (= lambda!223383 lambda!223377))))

(assert (=> b!4755834 (= (= lt!1922732 lt!1922488) (= lambda!223383 lambda!223382))))

(assert (=> bs!1146787 (= (= lt!1922732 lt!1922711) (= lambda!223383 lambda!223379))))

(assert (=> b!4755834 true))

(declare-fun bs!1146789 () Bool)

(declare-fun d!1520733 () Bool)

(assert (= bs!1146789 (and d!1520733 d!1520717)))

(declare-fun lambda!223384 () Int)

(declare-fun lt!1922741 () ListMap!5681)

(assert (=> bs!1146789 (= (= lt!1922741 lt!1922720) (= lambda!223384 lambda!223380))))

(declare-fun bs!1146790 () Bool)

(assert (= bs!1146790 (and d!1520733 b!4755835)))

(assert (=> bs!1146790 (= (= lt!1922741 lt!1922488) (= lambda!223384 lambda!223381))))

(declare-fun bs!1146791 () Bool)

(assert (= bs!1146791 (and d!1520733 b!4755827)))

(assert (=> bs!1146791 (= (= lt!1922741 lt!1922491) (= lambda!223384 lambda!223378))))

(declare-fun bs!1146792 () Bool)

(assert (= bs!1146792 (and d!1520733 b!4755834)))

(assert (=> bs!1146792 (= (= lt!1922741 lt!1922488) (= lambda!223384 lambda!223382))))

(assert (=> bs!1146791 (= (= lt!1922741 lt!1922711) (= lambda!223384 lambda!223379))))

(declare-fun bs!1146793 () Bool)

(assert (= bs!1146793 (and d!1520733 b!4755828)))

(assert (=> bs!1146793 (= (= lt!1922741 lt!1922491) (= lambda!223384 lambda!223377))))

(assert (=> bs!1146792 (= (= lt!1922741 lt!1922732) (= lambda!223384 lambda!223383))))

(assert (=> d!1520733 true))

(declare-fun b!4755832 () Bool)

(declare-fun res!2017633 () Bool)

(declare-fun e!2966895 () Bool)

(assert (=> b!4755832 (=> (not res!2017633) (not e!2966895))))

(assert (=> b!4755832 (= res!2017633 (forall!11788 (toList!6186 lt!1922488) lambda!223384))))

(declare-fun b!4755833 () Bool)

(assert (=> b!4755833 (= e!2966895 (invariantList!1631 (toList!6186 lt!1922741)))))

(assert (=> d!1520733 e!2966895))

(declare-fun res!2017635 () Bool)

(assert (=> d!1520733 (=> (not res!2017635) (not e!2966895))))

(assert (=> d!1520733 (= res!2017635 (forall!11788 (t!360626 l!13115) lambda!223384))))

(declare-fun e!2966896 () ListMap!5681)

(assert (=> d!1520733 (= lt!1922741 e!2966896)))

(declare-fun c!811677 () Bool)

(assert (=> d!1520733 (= c!811677 ((_ is Nil!53158) (t!360626 l!13115)))))

(assert (=> d!1520733 (noDuplicateKeys!2218 (t!360626 l!13115))))

(assert (=> d!1520733 (= (addToMapMapFromBucket!1618 (t!360626 l!13115) lt!1922488) lt!1922741)))

(assert (=> b!4755834 (= e!2966896 lt!1922732)))

(declare-fun lt!1922739 () ListMap!5681)

(assert (=> b!4755834 (= lt!1922739 (+!2446 lt!1922488 (h!59555 (t!360626 l!13115))))))

(assert (=> b!4755834 (= lt!1922732 (addToMapMapFromBucket!1618 (t!360626 (t!360626 l!13115)) (+!2446 lt!1922488 (h!59555 (t!360626 l!13115)))))))

(declare-fun lt!1922726 () Unit!137562)

(declare-fun call!333519 () Unit!137562)

(assert (=> b!4755834 (= lt!1922726 call!333519)))

(declare-fun call!333517 () Bool)

(assert (=> b!4755834 call!333517))

(declare-fun lt!1922736 () Unit!137562)

(assert (=> b!4755834 (= lt!1922736 lt!1922726)))

(assert (=> b!4755834 (forall!11788 (toList!6186 lt!1922739) lambda!223383)))

(declare-fun lt!1922735 () Unit!137562)

(declare-fun Unit!137597 () Unit!137562)

(assert (=> b!4755834 (= lt!1922735 Unit!137597)))

(declare-fun call!333518 () Bool)

(assert (=> b!4755834 call!333518))

(declare-fun lt!1922729 () Unit!137562)

(declare-fun Unit!137598 () Unit!137562)

(assert (=> b!4755834 (= lt!1922729 Unit!137598)))

(declare-fun lt!1922738 () Unit!137562)

(declare-fun Unit!137599 () Unit!137562)

(assert (=> b!4755834 (= lt!1922738 Unit!137599)))

(declare-fun lt!1922733 () Unit!137562)

(assert (=> b!4755834 (= lt!1922733 (forallContained!3814 (toList!6186 lt!1922739) lambda!223383 (h!59555 (t!360626 l!13115))))))

(assert (=> b!4755834 (contains!16584 lt!1922739 (_1!30792 (h!59555 (t!360626 l!13115))))))

(declare-fun lt!1922745 () Unit!137562)

(declare-fun Unit!137600 () Unit!137562)

(assert (=> b!4755834 (= lt!1922745 Unit!137600)))

(assert (=> b!4755834 (contains!16584 lt!1922732 (_1!30792 (h!59555 (t!360626 l!13115))))))

(declare-fun lt!1922744 () Unit!137562)

(declare-fun Unit!137601 () Unit!137562)

(assert (=> b!4755834 (= lt!1922744 Unit!137601)))

(assert (=> b!4755834 (forall!11788 (t!360626 l!13115) lambda!223383)))

(declare-fun lt!1922740 () Unit!137562)

(declare-fun Unit!137602 () Unit!137562)

(assert (=> b!4755834 (= lt!1922740 Unit!137602)))

(assert (=> b!4755834 (forall!11788 (toList!6186 lt!1922739) lambda!223383)))

(declare-fun lt!1922743 () Unit!137562)

(declare-fun Unit!137603 () Unit!137562)

(assert (=> b!4755834 (= lt!1922743 Unit!137603)))

(declare-fun lt!1922731 () Unit!137562)

(declare-fun Unit!137604 () Unit!137562)

(assert (=> b!4755834 (= lt!1922731 Unit!137604)))

(declare-fun lt!1922725 () Unit!137562)

(assert (=> b!4755834 (= lt!1922725 (addForallContainsKeyThenBeforeAdding!902 lt!1922488 lt!1922732 (_1!30792 (h!59555 (t!360626 l!13115))) (_2!30792 (h!59555 (t!360626 l!13115)))))))

(assert (=> b!4755834 (forall!11788 (toList!6186 lt!1922488) lambda!223383)))

(declare-fun lt!1922742 () Unit!137562)

(assert (=> b!4755834 (= lt!1922742 lt!1922725)))

(assert (=> b!4755834 (forall!11788 (toList!6186 lt!1922488) lambda!223383)))

(declare-fun lt!1922730 () Unit!137562)

(declare-fun Unit!137605 () Unit!137562)

(assert (=> b!4755834 (= lt!1922730 Unit!137605)))

(declare-fun res!2017634 () Bool)

(assert (=> b!4755834 (= res!2017634 (forall!11788 (t!360626 l!13115) lambda!223383))))

(declare-fun e!2966897 () Bool)

(assert (=> b!4755834 (=> (not res!2017634) (not e!2966897))))

(assert (=> b!4755834 e!2966897))

(declare-fun lt!1922727 () Unit!137562)

(declare-fun Unit!137609 () Unit!137562)

(assert (=> b!4755834 (= lt!1922727 Unit!137609)))

(assert (=> b!4755835 (= e!2966896 lt!1922488)))

(declare-fun lt!1922734 () Unit!137562)

(assert (=> b!4755835 (= lt!1922734 call!333519)))

(assert (=> b!4755835 call!333517))

(declare-fun lt!1922737 () Unit!137562)

(assert (=> b!4755835 (= lt!1922737 lt!1922734)))

(assert (=> b!4755835 call!333518))

(declare-fun lt!1922728 () Unit!137562)

(declare-fun Unit!137611 () Unit!137562)

(assert (=> b!4755835 (= lt!1922728 Unit!137611)))

(declare-fun b!4755836 () Bool)

(assert (=> b!4755836 (= e!2966897 (forall!11788 (toList!6186 lt!1922488) lambda!223383))))

(declare-fun bm!333512 () Bool)

(assert (=> bm!333512 (= call!333517 (forall!11788 (toList!6186 lt!1922488) (ite c!811677 lambda!223381 lambda!223382)))))

(declare-fun bm!333513 () Bool)

(assert (=> bm!333513 (= call!333518 (forall!11788 (ite c!811677 (toList!6186 lt!1922488) (t!360626 (t!360626 l!13115))) (ite c!811677 lambda!223381 lambda!223383)))))

(declare-fun bm!333514 () Bool)

(assert (=> bm!333514 (= call!333519 (lemmaContainsAllItsOwnKeys!903 lt!1922488))))

(assert (= (and d!1520733 c!811677) b!4755835))

(assert (= (and d!1520733 (not c!811677)) b!4755834))

(assert (= (and b!4755834 res!2017634) b!4755836))

(assert (= (or b!4755835 b!4755834) bm!333512))

(assert (= (or b!4755835 b!4755834) bm!333513))

(assert (= (or b!4755835 b!4755834) bm!333514))

(assert (= (and d!1520733 res!2017635) b!4755832))

(assert (= (and b!4755832 res!2017633) b!4755833))

(declare-fun m!5725921 () Bool)

(assert (=> b!4755832 m!5725921))

(declare-fun m!5725923 () Bool)

(assert (=> b!4755836 m!5725923))

(declare-fun m!5725925 () Bool)

(assert (=> d!1520733 m!5725925))

(assert (=> d!1520733 m!5725655))

(declare-fun m!5725927 () Bool)

(assert (=> bm!333512 m!5725927))

(declare-fun m!5725929 () Bool)

(assert (=> bm!333514 m!5725929))

(declare-fun m!5725931 () Bool)

(assert (=> b!4755834 m!5725931))

(assert (=> b!4755834 m!5725923))

(declare-fun m!5725933 () Bool)

(assert (=> b!4755834 m!5725933))

(declare-fun m!5725935 () Bool)

(assert (=> b!4755834 m!5725935))

(declare-fun m!5725937 () Bool)

(assert (=> b!4755834 m!5725937))

(declare-fun m!5725939 () Bool)

(assert (=> b!4755834 m!5725939))

(assert (=> b!4755834 m!5725935))

(declare-fun m!5725941 () Bool)

(assert (=> b!4755834 m!5725941))

(declare-fun m!5725943 () Bool)

(assert (=> b!4755834 m!5725943))

(declare-fun m!5725945 () Bool)

(assert (=> b!4755834 m!5725945))

(assert (=> b!4755834 m!5725933))

(assert (=> b!4755834 m!5725943))

(assert (=> b!4755834 m!5725923))

(declare-fun m!5725947 () Bool)

(assert (=> b!4755833 m!5725947))

(declare-fun m!5725949 () Bool)

(assert (=> bm!333513 m!5725949))

(assert (=> b!4755742 d!1520733))

(declare-fun d!1520735 () Bool)

(assert (=> d!1520735 (= (eq!1281 (addToMapMapFromBucket!1618 (t!360626 l!13115) lt!1922488) (addToMapMapFromBucket!1618 (t!360626 l!13115) lt!1922491)) (= (content!9566 (toList!6186 (addToMapMapFromBucket!1618 (t!360626 l!13115) lt!1922488))) (content!9566 (toList!6186 (addToMapMapFromBucket!1618 (t!360626 l!13115) lt!1922491)))))))

(declare-fun bs!1146794 () Bool)

(assert (= bs!1146794 d!1520735))

(declare-fun m!5725951 () Bool)

(assert (=> bs!1146794 m!5725951))

(declare-fun m!5725953 () Bool)

(assert (=> bs!1146794 m!5725953))

(assert (=> b!4755742 d!1520735))

(declare-fun bs!1146795 () Bool)

(declare-fun b!4755840 () Bool)

(assert (= bs!1146795 (and b!4755840 d!1520717)))

(declare-fun lambda!223385 () Int)

(assert (=> bs!1146795 (= (= lhm2!51 lt!1922720) (= lambda!223385 lambda!223380))))

(declare-fun bs!1146796 () Bool)

(assert (= bs!1146796 (and b!4755840 b!4755835)))

(assert (=> bs!1146796 (= (= lhm2!51 lt!1922488) (= lambda!223385 lambda!223381))))

(declare-fun bs!1146797 () Bool)

(assert (= bs!1146797 (and b!4755840 b!4755827)))

(assert (=> bs!1146797 (= (= lhm2!51 lt!1922491) (= lambda!223385 lambda!223378))))

(declare-fun bs!1146798 () Bool)

(assert (= bs!1146798 (and b!4755840 d!1520733)))

(assert (=> bs!1146798 (= (= lhm2!51 lt!1922741) (= lambda!223385 lambda!223384))))

(declare-fun bs!1146799 () Bool)

(assert (= bs!1146799 (and b!4755840 b!4755834)))

(assert (=> bs!1146799 (= (= lhm2!51 lt!1922488) (= lambda!223385 lambda!223382))))

(assert (=> bs!1146797 (= (= lhm2!51 lt!1922711) (= lambda!223385 lambda!223379))))

(declare-fun bs!1146800 () Bool)

(assert (= bs!1146800 (and b!4755840 b!4755828)))

(assert (=> bs!1146800 (= (= lhm2!51 lt!1922491) (= lambda!223385 lambda!223377))))

(assert (=> bs!1146799 (= (= lhm2!51 lt!1922732) (= lambda!223385 lambda!223383))))

(assert (=> b!4755840 true))

(declare-fun bs!1146801 () Bool)

(declare-fun b!4755839 () Bool)

(assert (= bs!1146801 (and b!4755839 d!1520717)))

(declare-fun lambda!223386 () Int)

(assert (=> bs!1146801 (= (= lhm2!51 lt!1922720) (= lambda!223386 lambda!223380))))

(declare-fun bs!1146802 () Bool)

(assert (= bs!1146802 (and b!4755839 b!4755835)))

(assert (=> bs!1146802 (= (= lhm2!51 lt!1922488) (= lambda!223386 lambda!223381))))

(declare-fun bs!1146803 () Bool)

(assert (= bs!1146803 (and b!4755839 b!4755840)))

(assert (=> bs!1146803 (= lambda!223386 lambda!223385)))

(declare-fun bs!1146804 () Bool)

(assert (= bs!1146804 (and b!4755839 b!4755827)))

(assert (=> bs!1146804 (= (= lhm2!51 lt!1922491) (= lambda!223386 lambda!223378))))

(declare-fun bs!1146805 () Bool)

(assert (= bs!1146805 (and b!4755839 d!1520733)))

(assert (=> bs!1146805 (= (= lhm2!51 lt!1922741) (= lambda!223386 lambda!223384))))

(declare-fun bs!1146806 () Bool)

(assert (= bs!1146806 (and b!4755839 b!4755834)))

(assert (=> bs!1146806 (= (= lhm2!51 lt!1922488) (= lambda!223386 lambda!223382))))

(assert (=> bs!1146804 (= (= lhm2!51 lt!1922711) (= lambda!223386 lambda!223379))))

(declare-fun bs!1146807 () Bool)

(assert (= bs!1146807 (and b!4755839 b!4755828)))

(assert (=> bs!1146807 (= (= lhm2!51 lt!1922491) (= lambda!223386 lambda!223377))))

(assert (=> bs!1146806 (= (= lhm2!51 lt!1922732) (= lambda!223386 lambda!223383))))

(assert (=> b!4755839 true))

(declare-fun lt!1922753 () ListMap!5681)

(declare-fun lambda!223387 () Int)

(assert (=> bs!1146801 (= (= lt!1922753 lt!1922720) (= lambda!223387 lambda!223380))))

(assert (=> bs!1146802 (= (= lt!1922753 lt!1922488) (= lambda!223387 lambda!223381))))

(assert (=> bs!1146803 (= (= lt!1922753 lhm2!51) (= lambda!223387 lambda!223385))))

(assert (=> bs!1146804 (= (= lt!1922753 lt!1922491) (= lambda!223387 lambda!223378))))

(assert (=> bs!1146805 (= (= lt!1922753 lt!1922741) (= lambda!223387 lambda!223384))))

(assert (=> bs!1146806 (= (= lt!1922753 lt!1922488) (= lambda!223387 lambda!223382))))

(assert (=> bs!1146804 (= (= lt!1922753 lt!1922711) (= lambda!223387 lambda!223379))))

(assert (=> b!4755839 (= (= lt!1922753 lhm2!51) (= lambda!223387 lambda!223386))))

(assert (=> bs!1146807 (= (= lt!1922753 lt!1922491) (= lambda!223387 lambda!223377))))

(assert (=> bs!1146806 (= (= lt!1922753 lt!1922732) (= lambda!223387 lambda!223383))))

(assert (=> b!4755839 true))

(declare-fun bs!1146808 () Bool)

(declare-fun d!1520737 () Bool)

(assert (= bs!1146808 (and d!1520737 d!1520717)))

(declare-fun lt!1922762 () ListMap!5681)

(declare-fun lambda!223388 () Int)

(assert (=> bs!1146808 (= (= lt!1922762 lt!1922720) (= lambda!223388 lambda!223380))))

(declare-fun bs!1146809 () Bool)

(assert (= bs!1146809 (and d!1520737 b!4755840)))

(assert (=> bs!1146809 (= (= lt!1922762 lhm2!51) (= lambda!223388 lambda!223385))))

(declare-fun bs!1146810 () Bool)

(assert (= bs!1146810 (and d!1520737 b!4755827)))

(assert (=> bs!1146810 (= (= lt!1922762 lt!1922491) (= lambda!223388 lambda!223378))))

(declare-fun bs!1146811 () Bool)

(assert (= bs!1146811 (and d!1520737 d!1520733)))

(assert (=> bs!1146811 (= (= lt!1922762 lt!1922741) (= lambda!223388 lambda!223384))))

(declare-fun bs!1146812 () Bool)

(assert (= bs!1146812 (and d!1520737 b!4755834)))

(assert (=> bs!1146812 (= (= lt!1922762 lt!1922488) (= lambda!223388 lambda!223382))))

(assert (=> bs!1146810 (= (= lt!1922762 lt!1922711) (= lambda!223388 lambda!223379))))

(declare-fun bs!1146813 () Bool)

(assert (= bs!1146813 (and d!1520737 b!4755835)))

(assert (=> bs!1146813 (= (= lt!1922762 lt!1922488) (= lambda!223388 lambda!223381))))

(declare-fun bs!1146814 () Bool)

(assert (= bs!1146814 (and d!1520737 b!4755839)))

(assert (=> bs!1146814 (= (= lt!1922762 lt!1922753) (= lambda!223388 lambda!223387))))

(assert (=> bs!1146814 (= (= lt!1922762 lhm2!51) (= lambda!223388 lambda!223386))))

(declare-fun bs!1146815 () Bool)

(assert (= bs!1146815 (and d!1520737 b!4755828)))

(assert (=> bs!1146815 (= (= lt!1922762 lt!1922491) (= lambda!223388 lambda!223377))))

(assert (=> bs!1146812 (= (= lt!1922762 lt!1922732) (= lambda!223388 lambda!223383))))

(assert (=> d!1520737 true))

(declare-fun b!4755837 () Bool)

(declare-fun res!2017636 () Bool)

(declare-fun e!2966898 () Bool)

(assert (=> b!4755837 (=> (not res!2017636) (not e!2966898))))

(assert (=> b!4755837 (= res!2017636 (forall!11788 (toList!6186 lhm2!51) lambda!223388))))

(declare-fun b!4755838 () Bool)

(assert (=> b!4755838 (= e!2966898 (invariantList!1631 (toList!6186 lt!1922762)))))

(assert (=> d!1520737 e!2966898))

(declare-fun res!2017638 () Bool)

(assert (=> d!1520737 (=> (not res!2017638) (not e!2966898))))

(assert (=> d!1520737 (= res!2017638 (forall!11788 l!13115 lambda!223388))))

(declare-fun e!2966899 () ListMap!5681)

(assert (=> d!1520737 (= lt!1922762 e!2966899)))

(declare-fun c!811678 () Bool)

(assert (=> d!1520737 (= c!811678 ((_ is Nil!53158) l!13115))))

(assert (=> d!1520737 (noDuplicateKeys!2218 l!13115)))

(assert (=> d!1520737 (= (addToMapMapFromBucket!1618 l!13115 lhm2!51) lt!1922762)))

(assert (=> b!4755839 (= e!2966899 lt!1922753)))

(declare-fun lt!1922760 () ListMap!5681)

(assert (=> b!4755839 (= lt!1922760 (+!2446 lhm2!51 (h!59555 l!13115)))))

(assert (=> b!4755839 (= lt!1922753 (addToMapMapFromBucket!1618 (t!360626 l!13115) (+!2446 lhm2!51 (h!59555 l!13115))))))

(declare-fun lt!1922747 () Unit!137562)

(declare-fun call!333522 () Unit!137562)

(assert (=> b!4755839 (= lt!1922747 call!333522)))

(declare-fun call!333520 () Bool)

(assert (=> b!4755839 call!333520))

(declare-fun lt!1922757 () Unit!137562)

(assert (=> b!4755839 (= lt!1922757 lt!1922747)))

(assert (=> b!4755839 (forall!11788 (toList!6186 lt!1922760) lambda!223387)))

(declare-fun lt!1922756 () Unit!137562)

(declare-fun Unit!137619 () Unit!137562)

(assert (=> b!4755839 (= lt!1922756 Unit!137619)))

(declare-fun call!333521 () Bool)

(assert (=> b!4755839 call!333521))

(declare-fun lt!1922750 () Unit!137562)

(declare-fun Unit!137620 () Unit!137562)

(assert (=> b!4755839 (= lt!1922750 Unit!137620)))

(declare-fun lt!1922759 () Unit!137562)

(declare-fun Unit!137621 () Unit!137562)

(assert (=> b!4755839 (= lt!1922759 Unit!137621)))

(declare-fun lt!1922754 () Unit!137562)

(assert (=> b!4755839 (= lt!1922754 (forallContained!3814 (toList!6186 lt!1922760) lambda!223387 (h!59555 l!13115)))))

(assert (=> b!4755839 (contains!16584 lt!1922760 (_1!30792 (h!59555 l!13115)))))

(declare-fun lt!1922766 () Unit!137562)

(declare-fun Unit!137622 () Unit!137562)

(assert (=> b!4755839 (= lt!1922766 Unit!137622)))

(assert (=> b!4755839 (contains!16584 lt!1922753 (_1!30792 (h!59555 l!13115)))))

(declare-fun lt!1922765 () Unit!137562)

(declare-fun Unit!137623 () Unit!137562)

(assert (=> b!4755839 (= lt!1922765 Unit!137623)))

(assert (=> b!4755839 (forall!11788 l!13115 lambda!223387)))

(declare-fun lt!1922761 () Unit!137562)

(declare-fun Unit!137624 () Unit!137562)

(assert (=> b!4755839 (= lt!1922761 Unit!137624)))

(assert (=> b!4755839 (forall!11788 (toList!6186 lt!1922760) lambda!223387)))

(declare-fun lt!1922764 () Unit!137562)

(declare-fun Unit!137625 () Unit!137562)

(assert (=> b!4755839 (= lt!1922764 Unit!137625)))

(declare-fun lt!1922752 () Unit!137562)

(declare-fun Unit!137626 () Unit!137562)

(assert (=> b!4755839 (= lt!1922752 Unit!137626)))

(declare-fun lt!1922746 () Unit!137562)

(assert (=> b!4755839 (= lt!1922746 (addForallContainsKeyThenBeforeAdding!902 lhm2!51 lt!1922753 (_1!30792 (h!59555 l!13115)) (_2!30792 (h!59555 l!13115))))))

(assert (=> b!4755839 (forall!11788 (toList!6186 lhm2!51) lambda!223387)))

(declare-fun lt!1922763 () Unit!137562)

(assert (=> b!4755839 (= lt!1922763 lt!1922746)))

(assert (=> b!4755839 (forall!11788 (toList!6186 lhm2!51) lambda!223387)))

(declare-fun lt!1922751 () Unit!137562)

(declare-fun Unit!137627 () Unit!137562)

(assert (=> b!4755839 (= lt!1922751 Unit!137627)))

(declare-fun res!2017637 () Bool)

(assert (=> b!4755839 (= res!2017637 (forall!11788 l!13115 lambda!223387))))

(declare-fun e!2966900 () Bool)

(assert (=> b!4755839 (=> (not res!2017637) (not e!2966900))))

(assert (=> b!4755839 e!2966900))

(declare-fun lt!1922748 () Unit!137562)

(declare-fun Unit!137628 () Unit!137562)

(assert (=> b!4755839 (= lt!1922748 Unit!137628)))

(assert (=> b!4755840 (= e!2966899 lhm2!51)))

(declare-fun lt!1922755 () Unit!137562)

(assert (=> b!4755840 (= lt!1922755 call!333522)))

(assert (=> b!4755840 call!333520))

(declare-fun lt!1922758 () Unit!137562)

(assert (=> b!4755840 (= lt!1922758 lt!1922755)))

(assert (=> b!4755840 call!333521))

(declare-fun lt!1922749 () Unit!137562)

(declare-fun Unit!137629 () Unit!137562)

(assert (=> b!4755840 (= lt!1922749 Unit!137629)))

(declare-fun b!4755841 () Bool)

(assert (=> b!4755841 (= e!2966900 (forall!11788 (toList!6186 lhm2!51) lambda!223387))))

(declare-fun bm!333515 () Bool)

(assert (=> bm!333515 (= call!333520 (forall!11788 (toList!6186 lhm2!51) (ite c!811678 lambda!223385 lambda!223386)))))

(declare-fun bm!333516 () Bool)

(assert (=> bm!333516 (= call!333521 (forall!11788 (ite c!811678 (toList!6186 lhm2!51) (t!360626 l!13115)) (ite c!811678 lambda!223385 lambda!223387)))))

(declare-fun bm!333517 () Bool)

(assert (=> bm!333517 (= call!333522 (lemmaContainsAllItsOwnKeys!903 lhm2!51))))

(assert (= (and d!1520737 c!811678) b!4755840))

(assert (= (and d!1520737 (not c!811678)) b!4755839))

(assert (= (and b!4755839 res!2017637) b!4755841))

(assert (= (or b!4755840 b!4755839) bm!333515))

(assert (= (or b!4755840 b!4755839) bm!333516))

(assert (= (or b!4755840 b!4755839) bm!333517))

(assert (= (and d!1520737 res!2017638) b!4755837))

(assert (= (and b!4755837 res!2017636) b!4755838))

(declare-fun m!5725955 () Bool)

(assert (=> b!4755837 m!5725955))

(declare-fun m!5725957 () Bool)

(assert (=> b!4755841 m!5725957))

(declare-fun m!5725959 () Bool)

(assert (=> d!1520737 m!5725959))

(assert (=> d!1520737 m!5725659))

(declare-fun m!5725961 () Bool)

(assert (=> bm!333515 m!5725961))

(declare-fun m!5725963 () Bool)

(assert (=> bm!333517 m!5725963))

(declare-fun m!5725965 () Bool)

(assert (=> b!4755839 m!5725965))

(assert (=> b!4755839 m!5725957))

(declare-fun m!5725967 () Bool)

(assert (=> b!4755839 m!5725967))

(assert (=> b!4755839 m!5725649))

(declare-fun m!5725969 () Bool)

(assert (=> b!4755839 m!5725969))

(declare-fun m!5725971 () Bool)

(assert (=> b!4755839 m!5725971))

(assert (=> b!4755839 m!5725649))

(declare-fun m!5725973 () Bool)

(assert (=> b!4755839 m!5725973))

(declare-fun m!5725975 () Bool)

(assert (=> b!4755839 m!5725975))

(declare-fun m!5725977 () Bool)

(assert (=> b!4755839 m!5725977))

(assert (=> b!4755839 m!5725967))

(assert (=> b!4755839 m!5725975))

(assert (=> b!4755839 m!5725957))

(declare-fun m!5725979 () Bool)

(assert (=> b!4755838 m!5725979))

(declare-fun m!5725981 () Bool)

(assert (=> bm!333516 m!5725981))

(assert (=> b!4755742 d!1520737))

(declare-fun bs!1146816 () Bool)

(declare-fun b!4755845 () Bool)

(assert (= bs!1146816 (and b!4755845 d!1520717)))

(declare-fun lambda!223389 () Int)

(assert (=> bs!1146816 (= (= lhm1!51 lt!1922720) (= lambda!223389 lambda!223380))))

(declare-fun bs!1146817 () Bool)

(assert (= bs!1146817 (and b!4755845 d!1520737)))

(assert (=> bs!1146817 (= (= lhm1!51 lt!1922762) (= lambda!223389 lambda!223388))))

(declare-fun bs!1146818 () Bool)

(assert (= bs!1146818 (and b!4755845 b!4755840)))

(assert (=> bs!1146818 (= (= lhm1!51 lhm2!51) (= lambda!223389 lambda!223385))))

(declare-fun bs!1146819 () Bool)

(assert (= bs!1146819 (and b!4755845 b!4755827)))

(assert (=> bs!1146819 (= (= lhm1!51 lt!1922491) (= lambda!223389 lambda!223378))))

(declare-fun bs!1146820 () Bool)

(assert (= bs!1146820 (and b!4755845 d!1520733)))

(assert (=> bs!1146820 (= (= lhm1!51 lt!1922741) (= lambda!223389 lambda!223384))))

(declare-fun bs!1146821 () Bool)

(assert (= bs!1146821 (and b!4755845 b!4755834)))

(assert (=> bs!1146821 (= (= lhm1!51 lt!1922488) (= lambda!223389 lambda!223382))))

(assert (=> bs!1146819 (= (= lhm1!51 lt!1922711) (= lambda!223389 lambda!223379))))

(declare-fun bs!1146822 () Bool)

(assert (= bs!1146822 (and b!4755845 b!4755835)))

(assert (=> bs!1146822 (= (= lhm1!51 lt!1922488) (= lambda!223389 lambda!223381))))

(declare-fun bs!1146823 () Bool)

(assert (= bs!1146823 (and b!4755845 b!4755839)))

(assert (=> bs!1146823 (= (= lhm1!51 lt!1922753) (= lambda!223389 lambda!223387))))

(assert (=> bs!1146823 (= (= lhm1!51 lhm2!51) (= lambda!223389 lambda!223386))))

(declare-fun bs!1146824 () Bool)

(assert (= bs!1146824 (and b!4755845 b!4755828)))

(assert (=> bs!1146824 (= (= lhm1!51 lt!1922491) (= lambda!223389 lambda!223377))))

(assert (=> bs!1146821 (= (= lhm1!51 lt!1922732) (= lambda!223389 lambda!223383))))

(assert (=> b!4755845 true))

(declare-fun bs!1146825 () Bool)

(declare-fun b!4755844 () Bool)

(assert (= bs!1146825 (and b!4755844 d!1520717)))

(declare-fun lambda!223390 () Int)

(assert (=> bs!1146825 (= (= lhm1!51 lt!1922720) (= lambda!223390 lambda!223380))))

(declare-fun bs!1146826 () Bool)

(assert (= bs!1146826 (and b!4755844 b!4755840)))

(assert (=> bs!1146826 (= (= lhm1!51 lhm2!51) (= lambda!223390 lambda!223385))))

(declare-fun bs!1146827 () Bool)

(assert (= bs!1146827 (and b!4755844 b!4755827)))

(assert (=> bs!1146827 (= (= lhm1!51 lt!1922491) (= lambda!223390 lambda!223378))))

(declare-fun bs!1146828 () Bool)

(assert (= bs!1146828 (and b!4755844 d!1520733)))

(assert (=> bs!1146828 (= (= lhm1!51 lt!1922741) (= lambda!223390 lambda!223384))))

(declare-fun bs!1146829 () Bool)

(assert (= bs!1146829 (and b!4755844 b!4755834)))

(assert (=> bs!1146829 (= (= lhm1!51 lt!1922488) (= lambda!223390 lambda!223382))))

(assert (=> bs!1146827 (= (= lhm1!51 lt!1922711) (= lambda!223390 lambda!223379))))

(declare-fun bs!1146830 () Bool)

(assert (= bs!1146830 (and b!4755844 d!1520737)))

(assert (=> bs!1146830 (= (= lhm1!51 lt!1922762) (= lambda!223390 lambda!223388))))

(declare-fun bs!1146831 () Bool)

(assert (= bs!1146831 (and b!4755844 b!4755845)))

(assert (=> bs!1146831 (= lambda!223390 lambda!223389)))

(declare-fun bs!1146832 () Bool)

(assert (= bs!1146832 (and b!4755844 b!4755835)))

(assert (=> bs!1146832 (= (= lhm1!51 lt!1922488) (= lambda!223390 lambda!223381))))

(declare-fun bs!1146833 () Bool)

(assert (= bs!1146833 (and b!4755844 b!4755839)))

(assert (=> bs!1146833 (= (= lhm1!51 lt!1922753) (= lambda!223390 lambda!223387))))

(assert (=> bs!1146833 (= (= lhm1!51 lhm2!51) (= lambda!223390 lambda!223386))))

(declare-fun bs!1146834 () Bool)

(assert (= bs!1146834 (and b!4755844 b!4755828)))

(assert (=> bs!1146834 (= (= lhm1!51 lt!1922491) (= lambda!223390 lambda!223377))))

(assert (=> bs!1146829 (= (= lhm1!51 lt!1922732) (= lambda!223390 lambda!223383))))

(assert (=> b!4755844 true))

(declare-fun lt!1922774 () ListMap!5681)

(declare-fun lambda!223391 () Int)

(assert (=> bs!1146825 (= (= lt!1922774 lt!1922720) (= lambda!223391 lambda!223380))))

(assert (=> bs!1146826 (= (= lt!1922774 lhm2!51) (= lambda!223391 lambda!223385))))

(assert (=> bs!1146827 (= (= lt!1922774 lt!1922491) (= lambda!223391 lambda!223378))))

(assert (=> bs!1146828 (= (= lt!1922774 lt!1922741) (= lambda!223391 lambda!223384))))

(assert (=> bs!1146829 (= (= lt!1922774 lt!1922488) (= lambda!223391 lambda!223382))))

(assert (=> b!4755844 (= (= lt!1922774 lhm1!51) (= lambda!223391 lambda!223390))))

(assert (=> bs!1146827 (= (= lt!1922774 lt!1922711) (= lambda!223391 lambda!223379))))

(assert (=> bs!1146830 (= (= lt!1922774 lt!1922762) (= lambda!223391 lambda!223388))))

(assert (=> bs!1146831 (= (= lt!1922774 lhm1!51) (= lambda!223391 lambda!223389))))

(assert (=> bs!1146832 (= (= lt!1922774 lt!1922488) (= lambda!223391 lambda!223381))))

(assert (=> bs!1146833 (= (= lt!1922774 lt!1922753) (= lambda!223391 lambda!223387))))

(assert (=> bs!1146833 (= (= lt!1922774 lhm2!51) (= lambda!223391 lambda!223386))))

(assert (=> bs!1146834 (= (= lt!1922774 lt!1922491) (= lambda!223391 lambda!223377))))

(assert (=> bs!1146829 (= (= lt!1922774 lt!1922732) (= lambda!223391 lambda!223383))))

(assert (=> b!4755844 true))

(declare-fun bs!1146835 () Bool)

(declare-fun d!1520739 () Bool)

(assert (= bs!1146835 (and d!1520739 d!1520717)))

(declare-fun lambda!223392 () Int)

(declare-fun lt!1922783 () ListMap!5681)

(assert (=> bs!1146835 (= (= lt!1922783 lt!1922720) (= lambda!223392 lambda!223380))))

(declare-fun bs!1146836 () Bool)

(assert (= bs!1146836 (and d!1520739 b!4755840)))

(assert (=> bs!1146836 (= (= lt!1922783 lhm2!51) (= lambda!223392 lambda!223385))))

(declare-fun bs!1146837 () Bool)

(assert (= bs!1146837 (and d!1520739 d!1520733)))

(assert (=> bs!1146837 (= (= lt!1922783 lt!1922741) (= lambda!223392 lambda!223384))))

(declare-fun bs!1146838 () Bool)

(assert (= bs!1146838 (and d!1520739 b!4755834)))

(assert (=> bs!1146838 (= (= lt!1922783 lt!1922488) (= lambda!223392 lambda!223382))))

(declare-fun bs!1146839 () Bool)

(assert (= bs!1146839 (and d!1520739 b!4755844)))

(assert (=> bs!1146839 (= (= lt!1922783 lhm1!51) (= lambda!223392 lambda!223390))))

(declare-fun bs!1146840 () Bool)

(assert (= bs!1146840 (and d!1520739 b!4755827)))

(assert (=> bs!1146840 (= (= lt!1922783 lt!1922711) (= lambda!223392 lambda!223379))))

(declare-fun bs!1146841 () Bool)

(assert (= bs!1146841 (and d!1520739 d!1520737)))

(assert (=> bs!1146841 (= (= lt!1922783 lt!1922762) (= lambda!223392 lambda!223388))))

(declare-fun bs!1146842 () Bool)

(assert (= bs!1146842 (and d!1520739 b!4755845)))

(assert (=> bs!1146842 (= (= lt!1922783 lhm1!51) (= lambda!223392 lambda!223389))))

(declare-fun bs!1146843 () Bool)

(assert (= bs!1146843 (and d!1520739 b!4755835)))

(assert (=> bs!1146843 (= (= lt!1922783 lt!1922488) (= lambda!223392 lambda!223381))))

(declare-fun bs!1146844 () Bool)

(assert (= bs!1146844 (and d!1520739 b!4755839)))

(assert (=> bs!1146844 (= (= lt!1922783 lt!1922753) (= lambda!223392 lambda!223387))))

(assert (=> bs!1146840 (= (= lt!1922783 lt!1922491) (= lambda!223392 lambda!223378))))

(assert (=> bs!1146839 (= (= lt!1922783 lt!1922774) (= lambda!223392 lambda!223391))))

(assert (=> bs!1146844 (= (= lt!1922783 lhm2!51) (= lambda!223392 lambda!223386))))

(declare-fun bs!1146845 () Bool)

(assert (= bs!1146845 (and d!1520739 b!4755828)))

(assert (=> bs!1146845 (= (= lt!1922783 lt!1922491) (= lambda!223392 lambda!223377))))

(assert (=> bs!1146838 (= (= lt!1922783 lt!1922732) (= lambda!223392 lambda!223383))))

(assert (=> d!1520739 true))

(declare-fun b!4755842 () Bool)

(declare-fun res!2017639 () Bool)

(declare-fun e!2966901 () Bool)

(assert (=> b!4755842 (=> (not res!2017639) (not e!2966901))))

(assert (=> b!4755842 (= res!2017639 (forall!11788 (toList!6186 lhm1!51) lambda!223392))))

(declare-fun b!4755843 () Bool)

(assert (=> b!4755843 (= e!2966901 (invariantList!1631 (toList!6186 lt!1922783)))))

(assert (=> d!1520739 e!2966901))

(declare-fun res!2017641 () Bool)

(assert (=> d!1520739 (=> (not res!2017641) (not e!2966901))))

(assert (=> d!1520739 (= res!2017641 (forall!11788 l!13115 lambda!223392))))

(declare-fun e!2966902 () ListMap!5681)

(assert (=> d!1520739 (= lt!1922783 e!2966902)))

(declare-fun c!811679 () Bool)

(assert (=> d!1520739 (= c!811679 ((_ is Nil!53158) l!13115))))

(assert (=> d!1520739 (noDuplicateKeys!2218 l!13115)))

(assert (=> d!1520739 (= (addToMapMapFromBucket!1618 l!13115 lhm1!51) lt!1922783)))

(assert (=> b!4755844 (= e!2966902 lt!1922774)))

(declare-fun lt!1922781 () ListMap!5681)

(assert (=> b!4755844 (= lt!1922781 (+!2446 lhm1!51 (h!59555 l!13115)))))

(assert (=> b!4755844 (= lt!1922774 (addToMapMapFromBucket!1618 (t!360626 l!13115) (+!2446 lhm1!51 (h!59555 l!13115))))))

(declare-fun lt!1922768 () Unit!137562)

(declare-fun call!333525 () Unit!137562)

(assert (=> b!4755844 (= lt!1922768 call!333525)))

(declare-fun call!333523 () Bool)

(assert (=> b!4755844 call!333523))

(declare-fun lt!1922778 () Unit!137562)

(assert (=> b!4755844 (= lt!1922778 lt!1922768)))

(assert (=> b!4755844 (forall!11788 (toList!6186 lt!1922781) lambda!223391)))

(declare-fun lt!1922777 () Unit!137562)

(declare-fun Unit!137641 () Unit!137562)

(assert (=> b!4755844 (= lt!1922777 Unit!137641)))

(declare-fun call!333524 () Bool)

(assert (=> b!4755844 call!333524))

(declare-fun lt!1922771 () Unit!137562)

(declare-fun Unit!137642 () Unit!137562)

(assert (=> b!4755844 (= lt!1922771 Unit!137642)))

(declare-fun lt!1922780 () Unit!137562)

(declare-fun Unit!137643 () Unit!137562)

(assert (=> b!4755844 (= lt!1922780 Unit!137643)))

(declare-fun lt!1922775 () Unit!137562)

(assert (=> b!4755844 (= lt!1922775 (forallContained!3814 (toList!6186 lt!1922781) lambda!223391 (h!59555 l!13115)))))

(assert (=> b!4755844 (contains!16584 lt!1922781 (_1!30792 (h!59555 l!13115)))))

(declare-fun lt!1922787 () Unit!137562)

(declare-fun Unit!137644 () Unit!137562)

(assert (=> b!4755844 (= lt!1922787 Unit!137644)))

(assert (=> b!4755844 (contains!16584 lt!1922774 (_1!30792 (h!59555 l!13115)))))

(declare-fun lt!1922786 () Unit!137562)

(declare-fun Unit!137645 () Unit!137562)

(assert (=> b!4755844 (= lt!1922786 Unit!137645)))

(assert (=> b!4755844 (forall!11788 l!13115 lambda!223391)))

(declare-fun lt!1922782 () Unit!137562)

(declare-fun Unit!137646 () Unit!137562)

(assert (=> b!4755844 (= lt!1922782 Unit!137646)))

(assert (=> b!4755844 (forall!11788 (toList!6186 lt!1922781) lambda!223391)))

(declare-fun lt!1922785 () Unit!137562)

(declare-fun Unit!137647 () Unit!137562)

(assert (=> b!4755844 (= lt!1922785 Unit!137647)))

(declare-fun lt!1922773 () Unit!137562)

(declare-fun Unit!137648 () Unit!137562)

(assert (=> b!4755844 (= lt!1922773 Unit!137648)))

(declare-fun lt!1922767 () Unit!137562)

(assert (=> b!4755844 (= lt!1922767 (addForallContainsKeyThenBeforeAdding!902 lhm1!51 lt!1922774 (_1!30792 (h!59555 l!13115)) (_2!30792 (h!59555 l!13115))))))

(assert (=> b!4755844 (forall!11788 (toList!6186 lhm1!51) lambda!223391)))

(declare-fun lt!1922784 () Unit!137562)

(assert (=> b!4755844 (= lt!1922784 lt!1922767)))

(assert (=> b!4755844 (forall!11788 (toList!6186 lhm1!51) lambda!223391)))

(declare-fun lt!1922772 () Unit!137562)

(declare-fun Unit!137649 () Unit!137562)

(assert (=> b!4755844 (= lt!1922772 Unit!137649)))

(declare-fun res!2017640 () Bool)

(assert (=> b!4755844 (= res!2017640 (forall!11788 l!13115 lambda!223391))))

(declare-fun e!2966903 () Bool)

(assert (=> b!4755844 (=> (not res!2017640) (not e!2966903))))

(assert (=> b!4755844 e!2966903))

(declare-fun lt!1922769 () Unit!137562)

(declare-fun Unit!137650 () Unit!137562)

(assert (=> b!4755844 (= lt!1922769 Unit!137650)))

(assert (=> b!4755845 (= e!2966902 lhm1!51)))

(declare-fun lt!1922776 () Unit!137562)

(assert (=> b!4755845 (= lt!1922776 call!333525)))

(assert (=> b!4755845 call!333523))

(declare-fun lt!1922779 () Unit!137562)

(assert (=> b!4755845 (= lt!1922779 lt!1922776)))

(assert (=> b!4755845 call!333524))

(declare-fun lt!1922770 () Unit!137562)

(declare-fun Unit!137651 () Unit!137562)

(assert (=> b!4755845 (= lt!1922770 Unit!137651)))

(declare-fun b!4755846 () Bool)

(assert (=> b!4755846 (= e!2966903 (forall!11788 (toList!6186 lhm1!51) lambda!223391))))

(declare-fun bm!333518 () Bool)

(assert (=> bm!333518 (= call!333523 (forall!11788 (toList!6186 lhm1!51) (ite c!811679 lambda!223389 lambda!223390)))))

(declare-fun bm!333519 () Bool)

(assert (=> bm!333519 (= call!333524 (forall!11788 (ite c!811679 (toList!6186 lhm1!51) (t!360626 l!13115)) (ite c!811679 lambda!223389 lambda!223391)))))

(declare-fun bm!333520 () Bool)

(assert (=> bm!333520 (= call!333525 (lemmaContainsAllItsOwnKeys!903 lhm1!51))))

(assert (= (and d!1520739 c!811679) b!4755845))

(assert (= (and d!1520739 (not c!811679)) b!4755844))

(assert (= (and b!4755844 res!2017640) b!4755846))

(assert (= (or b!4755845 b!4755844) bm!333518))

(assert (= (or b!4755845 b!4755844) bm!333519))

(assert (= (or b!4755845 b!4755844) bm!333520))

(assert (= (and d!1520739 res!2017641) b!4755842))

(assert (= (and b!4755842 res!2017639) b!4755843))

(declare-fun m!5725983 () Bool)

(assert (=> b!4755842 m!5725983))

(declare-fun m!5725985 () Bool)

(assert (=> b!4755846 m!5725985))

(declare-fun m!5725987 () Bool)

(assert (=> d!1520739 m!5725987))

(assert (=> d!1520739 m!5725659))

(declare-fun m!5725989 () Bool)

(assert (=> bm!333518 m!5725989))

(declare-fun m!5725991 () Bool)

(assert (=> bm!333520 m!5725991))

(declare-fun m!5725993 () Bool)

(assert (=> b!4755844 m!5725993))

(assert (=> b!4755844 m!5725985))

(declare-fun m!5725995 () Bool)

(assert (=> b!4755844 m!5725995))

(assert (=> b!4755844 m!5725651))

(declare-fun m!5725997 () Bool)

(assert (=> b!4755844 m!5725997))

(declare-fun m!5725999 () Bool)

(assert (=> b!4755844 m!5725999))

(assert (=> b!4755844 m!5725651))

(declare-fun m!5726001 () Bool)

(assert (=> b!4755844 m!5726001))

(declare-fun m!5726003 () Bool)

(assert (=> b!4755844 m!5726003))

(declare-fun m!5726005 () Bool)

(assert (=> b!4755844 m!5726005))

(assert (=> b!4755844 m!5725995))

(assert (=> b!4755844 m!5726003))

(assert (=> b!4755844 m!5725985))

(declare-fun m!5726007 () Bool)

(assert (=> b!4755843 m!5726007))

(declare-fun m!5726009 () Bool)

(assert (=> bm!333519 m!5726009))

(assert (=> b!4755742 d!1520739))

(declare-fun d!1520741 () Bool)

(declare-fun res!2017642 () Bool)

(declare-fun e!2966904 () Bool)

(assert (=> d!1520741 (=> res!2017642 e!2966904)))

(assert (=> d!1520741 (= res!2017642 (not ((_ is Cons!53158) l!13115)))))

(assert (=> d!1520741 (= (noDuplicateKeys!2218 l!13115) e!2966904)))

(declare-fun b!4755847 () Bool)

(declare-fun e!2966905 () Bool)

(assert (=> b!4755847 (= e!2966904 e!2966905)))

(declare-fun res!2017643 () Bool)

(assert (=> b!4755847 (=> (not res!2017643) (not e!2966905))))

(assert (=> b!4755847 (= res!2017643 (not (containsKey!3610 (t!360626 l!13115) (_1!30792 (h!59555 l!13115)))))))

(declare-fun b!4755848 () Bool)

(assert (=> b!4755848 (= e!2966905 (noDuplicateKeys!2218 (t!360626 l!13115)))))

(assert (= (and d!1520741 (not res!2017642)) b!4755847))

(assert (= (and b!4755847 res!2017643) b!4755848))

(declare-fun m!5726011 () Bool)

(assert (=> b!4755847 m!5726011))

(assert (=> b!4755848 m!5725655))

(assert (=> start!486212 d!1520741))

(declare-fun d!1520743 () Bool)

(assert (=> d!1520743 (= (inv!68565 lhm1!51) (invariantList!1631 (toList!6186 lhm1!51)))))

(declare-fun bs!1146846 () Bool)

(assert (= bs!1146846 d!1520743))

(declare-fun m!5726013 () Bool)

(assert (=> bs!1146846 m!5726013))

(assert (=> start!486212 d!1520743))

(declare-fun d!1520745 () Bool)

(assert (=> d!1520745 (= (inv!68565 lhm2!51) (invariantList!1631 (toList!6186 lhm2!51)))))

(declare-fun bs!1146847 () Bool)

(assert (= bs!1146847 d!1520745))

(declare-fun m!5726015 () Bool)

(assert (=> bs!1146847 m!5726015))

(assert (=> start!486212 d!1520745))

(declare-fun e!2966908 () Bool)

(declare-fun tp!1350841 () Bool)

(declare-fun b!4755853 () Bool)

(assert (=> b!4755853 (= e!2966908 (and tp_is_empty!32165 tp_is_empty!32167 tp!1350841))))

(assert (=> b!4755739 (= tp!1350833 e!2966908)))

(assert (= (and b!4755739 ((_ is Cons!53158) (toList!6186 lhm2!51))) b!4755853))

(declare-fun tp!1350842 () Bool)

(declare-fun e!2966909 () Bool)

(declare-fun b!4755854 () Bool)

(assert (=> b!4755854 (= e!2966909 (and tp_is_empty!32165 tp_is_empty!32167 tp!1350842))))

(assert (=> b!4755744 (= tp!1350831 e!2966909)))

(assert (= (and b!4755744 ((_ is Cons!53158) (toList!6186 lhm1!51))) b!4755854))

(declare-fun e!2966910 () Bool)

(declare-fun b!4755855 () Bool)

(declare-fun tp!1350843 () Bool)

(assert (=> b!4755855 (= e!2966910 (and tp_is_empty!32165 tp_is_empty!32167 tp!1350843))))

(assert (=> b!4755741 (= tp!1350832 e!2966910)))

(assert (= (and b!4755741 ((_ is Cons!53158) (t!360626 l!13115))) b!4755855))

(check-sat (not bm!333520) (not b!4755774) (not d!1520685) (not b!4755826) (not b!4755846) (not d!1520731) (not d!1520687) (not d!1520715) (not d!1520717) (not b!4755853) tp_is_empty!32165 (not b!4755842) (not b!4755841) (not b!4755829) (not bm!333517) (not b!4755775) (not d!1520705) (not b!4755766) (not b!4755837) (not bm!333509) (not d!1520739) (not b!4755834) (not d!1520713) (not d!1520737) (not d!1520743) (not d!1520691) (not bm!333512) (not bm!333514) (not d!1520745) (not bm!333513) (not b!4755844) (not d!1520735) (not b!4755833) (not b!4755825) (not bm!333515) tp_is_empty!32167 (not b!4755838) (not d!1520733) (not b!4755767) (not bm!333510) (not b!4755768) (not b!4755839) (not b!4755769) (not bm!333511) (not bm!333519) (not b!4755843) (not b!4755847) (not b!4755827) (not b!4755854) (not b!4755832) (not bm!333516) (not b!4755855) (not bm!333518) (not b!4755836) (not b!4755848))
(check-sat)
