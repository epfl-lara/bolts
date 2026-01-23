; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!484946 () Bool)

(assert start!484946)

(declare-datatypes ((K!14388 0))(
  ( (K!14389 (val!19781 Int)) )
))
(declare-datatypes ((V!14634 0))(
  ( (V!14635 (val!19782 Int)) )
))
(declare-datatypes ((tuple2!54750 0))(
  ( (tuple2!54751 (_1!30669 K!14388) (_2!30669 V!14634)) )
))
(declare-datatypes ((List!53153 0))(
  ( (Nil!53029) (Cons!53029 (h!59426 tuple2!54750) (t!360463 List!53153)) )
))
(declare-datatypes ((ListMap!5439 0))(
  ( (ListMap!5440 (toList!6065 List!53153)) )
))
(declare-fun lt!1909701 () ListMap!5439)

(declare-fun b!4747676 () Bool)

(declare-fun l!14304 () List!53153)

(declare-fun acc!1214 () ListMap!5439)

(declare-fun e!2961389 () Bool)

(declare-fun eq!1172 (ListMap!5439 ListMap!5439) Bool)

(declare-fun addToMapMapFromBucket!1521 (List!53153 ListMap!5439) ListMap!5439)

(assert (=> b!4747676 (= e!2961389 (eq!1172 lt!1909701 (addToMapMapFromBucket!1521 l!14304 acc!1214)))))

(declare-fun tp!1349738 () Bool)

(declare-fun tp_is_empty!31673 () Bool)

(declare-fun b!4747677 () Bool)

(declare-fun tp_is_empty!31675 () Bool)

(declare-fun e!2961392 () Bool)

(assert (=> b!4747677 (= e!2961392 (and tp_is_empty!31673 tp_is_empty!31675 tp!1349738))))

(declare-fun b!4747678 () Bool)

(declare-fun e!2961390 () Bool)

(declare-fun tp!1349739 () Bool)

(assert (=> b!4747678 (= e!2961390 tp!1349739)))

(declare-fun res!2012534 () Bool)

(declare-fun e!2961391 () Bool)

(assert (=> start!484946 (=> (not res!2012534) (not e!2961391))))

(declare-fun noDuplicateKeys!2095 (List!53153) Bool)

(assert (=> start!484946 (= res!2012534 (noDuplicateKeys!2095 l!14304))))

(assert (=> start!484946 e!2961391))

(assert (=> start!484946 e!2961392))

(assert (=> start!484946 (and tp_is_empty!31673 tp_is_empty!31675)))

(declare-fun inv!68261 (ListMap!5439) Bool)

(assert (=> start!484946 (and (inv!68261 acc!1214) e!2961390)))

(declare-fun b!4747679 () Bool)

(declare-fun res!2012535 () Bool)

(assert (=> b!4747679 (=> (not res!2012535) (not e!2961391))))

(declare-fun t!14174 () tuple2!54750)

(assert (=> b!4747679 (= res!2012535 (noDuplicateKeys!2095 (Cons!53029 t!14174 l!14304)))))

(declare-fun b!4747680 () Bool)

(declare-fun lt!1909699 () List!53153)

(assert (=> b!4747680 (= e!2961391 (not (noDuplicateKeys!2095 lt!1909699)))))

(assert (=> b!4747680 e!2961389))

(declare-fun res!2012533 () Bool)

(assert (=> b!4747680 (=> (not res!2012533) (not e!2961389))))

(declare-fun lt!1909700 () ListMap!5439)

(declare-fun +!2331 (ListMap!5439 tuple2!54750) ListMap!5439)

(assert (=> b!4747680 (= res!2012533 (eq!1172 (addToMapMapFromBucket!1521 lt!1909699 lt!1909700) (+!2331 lt!1909701 t!14174)))))

(assert (=> b!4747680 (= lt!1909699 (Cons!53029 t!14174 (t!360463 l!14304)))))

(declare-datatypes ((Unit!134501 0))(
  ( (Unit!134502) )
))
(declare-fun lt!1909698 () Unit!134501)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!419 (tuple2!54750 List!53153 ListMap!5439) Unit!134501)

(assert (=> b!4747680 (= lt!1909698 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!419 t!14174 (t!360463 l!14304) lt!1909700))))

(assert (=> b!4747680 (= lt!1909701 (addToMapMapFromBucket!1521 (t!360463 l!14304) lt!1909700))))

(assert (=> b!4747680 (= lt!1909700 (+!2331 acc!1214 (h!59426 l!14304)))))

(declare-fun b!4747681 () Bool)

(declare-fun res!2012532 () Bool)

(assert (=> b!4747681 (=> (not res!2012532) (not e!2961391))))

(assert (=> b!4747681 (= res!2012532 (not (is-Nil!53029 l!14304)))))

(assert (= (and start!484946 res!2012534) b!4747679))

(assert (= (and b!4747679 res!2012535) b!4747681))

(assert (= (and b!4747681 res!2012532) b!4747680))

(assert (= (and b!4747680 res!2012533) b!4747676))

(assert (= (and start!484946 (is-Cons!53029 l!14304)) b!4747677))

(assert (= start!484946 b!4747678))

(declare-fun m!5705051 () Bool)

(assert (=> b!4747676 m!5705051))

(assert (=> b!4747676 m!5705051))

(declare-fun m!5705053 () Bool)

(assert (=> b!4747676 m!5705053))

(declare-fun m!5705055 () Bool)

(assert (=> start!484946 m!5705055))

(declare-fun m!5705057 () Bool)

(assert (=> start!484946 m!5705057))

(declare-fun m!5705059 () Bool)

(assert (=> b!4747679 m!5705059))

(declare-fun m!5705061 () Bool)

(assert (=> b!4747680 m!5705061))

(declare-fun m!5705063 () Bool)

(assert (=> b!4747680 m!5705063))

(declare-fun m!5705065 () Bool)

(assert (=> b!4747680 m!5705065))

(declare-fun m!5705067 () Bool)

(assert (=> b!4747680 m!5705067))

(declare-fun m!5705069 () Bool)

(assert (=> b!4747680 m!5705069))

(assert (=> b!4747680 m!5705065))

(declare-fun m!5705071 () Bool)

(assert (=> b!4747680 m!5705071))

(declare-fun m!5705073 () Bool)

(assert (=> b!4747680 m!5705073))

(assert (=> b!4747680 m!5705071))

(push 1)

(assert tp_is_empty!31675)

(assert (not b!4747680))

(assert tp_is_empty!31673)

(assert (not b!4747676))

(assert (not b!4747677))

(assert (not start!484946))

(assert (not b!4747679))

(assert (not b!4747678))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1517294 () Bool)

(declare-fun res!2012552 () Bool)

(declare-fun e!2961409 () Bool)

(assert (=> d!1517294 (=> res!2012552 e!2961409)))

(assert (=> d!1517294 (= res!2012552 (not (is-Cons!53029 (Cons!53029 t!14174 l!14304))))))

(assert (=> d!1517294 (= (noDuplicateKeys!2095 (Cons!53029 t!14174 l!14304)) e!2961409)))

(declare-fun b!4747704 () Bool)

(declare-fun e!2961410 () Bool)

(assert (=> b!4747704 (= e!2961409 e!2961410)))

(declare-fun res!2012553 () Bool)

(assert (=> b!4747704 (=> (not res!2012553) (not e!2961410))))

(declare-fun containsKey!3522 (List!53153 K!14388) Bool)

(assert (=> b!4747704 (= res!2012553 (not (containsKey!3522 (t!360463 (Cons!53029 t!14174 l!14304)) (_1!30669 (h!59426 (Cons!53029 t!14174 l!14304))))))))

(declare-fun b!4747705 () Bool)

(assert (=> b!4747705 (= e!2961410 (noDuplicateKeys!2095 (t!360463 (Cons!53029 t!14174 l!14304))))))

(assert (= (and d!1517294 (not res!2012552)) b!4747704))

(assert (= (and b!4747704 res!2012553) b!4747705))

(declare-fun m!5705099 () Bool)

(assert (=> b!4747704 m!5705099))

(declare-fun m!5705101 () Bool)

(assert (=> b!4747705 m!5705101))

(assert (=> b!4747679 d!1517294))

(declare-fun d!1517296 () Bool)

(declare-fun e!2961413 () Bool)

(assert (=> d!1517296 e!2961413))

(declare-fun res!2012559 () Bool)

(assert (=> d!1517296 (=> (not res!2012559) (not e!2961413))))

(declare-fun lt!1909725 () ListMap!5439)

(declare-fun contains!16447 (ListMap!5439 K!14388) Bool)

(assert (=> d!1517296 (= res!2012559 (contains!16447 lt!1909725 (_1!30669 t!14174)))))

(declare-fun lt!1909724 () List!53153)

(assert (=> d!1517296 (= lt!1909725 (ListMap!5440 lt!1909724))))

(declare-fun lt!1909723 () Unit!134501)

(declare-fun lt!1909722 () Unit!134501)

(assert (=> d!1517296 (= lt!1909723 lt!1909722)))

(declare-datatypes ((Option!12502 0))(
  ( (None!12501) (Some!12501 (v!47196 V!14634)) )
))
(declare-fun getValueByKey!2052 (List!53153 K!14388) Option!12502)

(assert (=> d!1517296 (= (getValueByKey!2052 lt!1909724 (_1!30669 t!14174)) (Some!12501 (_2!30669 t!14174)))))

(declare-fun lemmaContainsTupThenGetReturnValue!1129 (List!53153 K!14388 V!14634) Unit!134501)

(assert (=> d!1517296 (= lt!1909722 (lemmaContainsTupThenGetReturnValue!1129 lt!1909724 (_1!30669 t!14174) (_2!30669 t!14174)))))

(declare-fun insertNoDuplicatedKeys!637 (List!53153 K!14388 V!14634) List!53153)

(assert (=> d!1517296 (= lt!1909724 (insertNoDuplicatedKeys!637 (toList!6065 lt!1909701) (_1!30669 t!14174) (_2!30669 t!14174)))))

(assert (=> d!1517296 (= (+!2331 lt!1909701 t!14174) lt!1909725)))

(declare-fun b!4747710 () Bool)

(declare-fun res!2012558 () Bool)

(assert (=> b!4747710 (=> (not res!2012558) (not e!2961413))))

(assert (=> b!4747710 (= res!2012558 (= (getValueByKey!2052 (toList!6065 lt!1909725) (_1!30669 t!14174)) (Some!12501 (_2!30669 t!14174))))))

(declare-fun b!4747711 () Bool)

(declare-fun contains!16448 (List!53153 tuple2!54750) Bool)

(assert (=> b!4747711 (= e!2961413 (contains!16448 (toList!6065 lt!1909725) t!14174))))

(assert (= (and d!1517296 res!2012559) b!4747710))

(assert (= (and b!4747710 res!2012558) b!4747711))

(declare-fun m!5705103 () Bool)

(assert (=> d!1517296 m!5705103))

(declare-fun m!5705105 () Bool)

(assert (=> d!1517296 m!5705105))

(declare-fun m!5705107 () Bool)

(assert (=> d!1517296 m!5705107))

(declare-fun m!5705109 () Bool)

(assert (=> d!1517296 m!5705109))

(declare-fun m!5705111 () Bool)

(assert (=> b!4747710 m!5705111))

(declare-fun m!5705113 () Bool)

(assert (=> b!4747711 m!5705113))

(assert (=> b!4747680 d!1517296))

(declare-fun b!4747730 () Bool)

(assert (=> b!4747730 true))

(declare-fun bs!1138528 () Bool)

(declare-fun b!4747726 () Bool)

(assert (= bs!1138528 (and b!4747726 b!4747730)))

(declare-fun lambda!220688 () Int)

(declare-fun lambda!220687 () Int)

(assert (=> bs!1138528 (= lambda!220688 lambda!220687)))

(assert (=> b!4747726 true))

(declare-fun lt!1909781 () ListMap!5439)

(declare-fun lambda!220689 () Int)

(assert (=> bs!1138528 (= (= lt!1909781 lt!1909700) (= lambda!220689 lambda!220687))))

(assert (=> b!4747726 (= (= lt!1909781 lt!1909700) (= lambda!220689 lambda!220688))))

(assert (=> b!4747726 true))

(declare-fun bs!1138529 () Bool)

(declare-fun d!1517300 () Bool)

(assert (= bs!1138529 (and d!1517300 b!4747730)))

(declare-fun lt!1909777 () ListMap!5439)

(declare-fun lambda!220690 () Int)

(assert (=> bs!1138529 (= (= lt!1909777 lt!1909700) (= lambda!220690 lambda!220687))))

(declare-fun bs!1138530 () Bool)

(assert (= bs!1138530 (and d!1517300 b!4747726)))

(assert (=> bs!1138530 (= (= lt!1909777 lt!1909700) (= lambda!220690 lambda!220688))))

(assert (=> bs!1138530 (= (= lt!1909777 lt!1909781) (= lambda!220690 lambda!220689))))

(assert (=> d!1517300 true))

(declare-fun e!2961424 () ListMap!5439)

(assert (=> b!4747726 (= e!2961424 lt!1909781)))

(declare-fun lt!1909786 () ListMap!5439)

(assert (=> b!4747726 (= lt!1909786 (+!2331 lt!1909700 (h!59426 lt!1909699)))))

(assert (=> b!4747726 (= lt!1909781 (addToMapMapFromBucket!1521 (t!360463 lt!1909699) (+!2331 lt!1909700 (h!59426 lt!1909699))))))

(declare-fun lt!1909785 () Unit!134501)

(declare-fun call!332235 () Unit!134501)

(assert (=> b!4747726 (= lt!1909785 call!332235)))

(declare-fun call!332234 () Bool)

(assert (=> b!4747726 call!332234))

(declare-fun lt!1909774 () Unit!134501)

(assert (=> b!4747726 (= lt!1909774 lt!1909785)))

(declare-fun forall!11732 (List!53153 Int) Bool)

(assert (=> b!4747726 (forall!11732 (toList!6065 lt!1909786) lambda!220689)))

(declare-fun lt!1909790 () Unit!134501)

(declare-fun Unit!134505 () Unit!134501)

(assert (=> b!4747726 (= lt!1909790 Unit!134505)))

(assert (=> b!4747726 (forall!11732 (t!360463 lt!1909699) lambda!220689)))

(declare-fun lt!1909778 () Unit!134501)

(declare-fun Unit!134506 () Unit!134501)

(assert (=> b!4747726 (= lt!1909778 Unit!134506)))

(declare-fun lt!1909791 () Unit!134501)

(declare-fun Unit!134507 () Unit!134501)

(assert (=> b!4747726 (= lt!1909791 Unit!134507)))

(declare-fun lt!1909794 () Unit!134501)

(declare-fun forallContained!3758 (List!53153 Int tuple2!54750) Unit!134501)

(assert (=> b!4747726 (= lt!1909794 (forallContained!3758 (toList!6065 lt!1909786) lambda!220689 (h!59426 lt!1909699)))))

(assert (=> b!4747726 (contains!16447 lt!1909786 (_1!30669 (h!59426 lt!1909699)))))

(declare-fun lt!1909787 () Unit!134501)

(declare-fun Unit!134508 () Unit!134501)

(assert (=> b!4747726 (= lt!1909787 Unit!134508)))

(assert (=> b!4747726 (contains!16447 lt!1909781 (_1!30669 (h!59426 lt!1909699)))))

(declare-fun lt!1909783 () Unit!134501)

(declare-fun Unit!134509 () Unit!134501)

(assert (=> b!4747726 (= lt!1909783 Unit!134509)))

(assert (=> b!4747726 (forall!11732 lt!1909699 lambda!220689)))

(declare-fun lt!1909779 () Unit!134501)

(declare-fun Unit!134510 () Unit!134501)

(assert (=> b!4747726 (= lt!1909779 Unit!134510)))

(assert (=> b!4747726 (forall!11732 (toList!6065 lt!1909786) lambda!220689)))

(declare-fun lt!1909792 () Unit!134501)

(declare-fun Unit!134511 () Unit!134501)

(assert (=> b!4747726 (= lt!1909792 Unit!134511)))

(declare-fun lt!1909789 () Unit!134501)

(declare-fun Unit!134512 () Unit!134501)

(assert (=> b!4747726 (= lt!1909789 Unit!134512)))

(declare-fun lt!1909784 () Unit!134501)

(declare-fun addForallContainsKeyThenBeforeAdding!846 (ListMap!5439 ListMap!5439 K!14388 V!14634) Unit!134501)

(assert (=> b!4747726 (= lt!1909784 (addForallContainsKeyThenBeforeAdding!846 lt!1909700 lt!1909781 (_1!30669 (h!59426 lt!1909699)) (_2!30669 (h!59426 lt!1909699))))))

(assert (=> b!4747726 (forall!11732 (toList!6065 lt!1909700) lambda!220689)))

(declare-fun lt!1909782 () Unit!134501)

(assert (=> b!4747726 (= lt!1909782 lt!1909784)))

(declare-fun call!332236 () Bool)

(assert (=> b!4747726 call!332236))

(declare-fun lt!1909793 () Unit!134501)

(declare-fun Unit!134513 () Unit!134501)

(assert (=> b!4747726 (= lt!1909793 Unit!134513)))

(declare-fun res!2012566 () Bool)

(assert (=> b!4747726 (= res!2012566 (forall!11732 lt!1909699 lambda!220689))))

(declare-fun e!2961422 () Bool)

(assert (=> b!4747726 (=> (not res!2012566) (not e!2961422))))

(assert (=> b!4747726 e!2961422))

(declare-fun lt!1909780 () Unit!134501)

(declare-fun Unit!134514 () Unit!134501)

(assert (=> b!4747726 (= lt!1909780 Unit!134514)))

(declare-fun c!810836 () Bool)

(declare-fun bm!332229 () Bool)

(assert (=> bm!332229 (= call!332236 (forall!11732 (toList!6065 lt!1909700) (ite c!810836 lambda!220687 lambda!220689)))))

(declare-fun e!2961423 () Bool)

(assert (=> d!1517300 e!2961423))

(declare-fun res!2012567 () Bool)

(assert (=> d!1517300 (=> (not res!2012567) (not e!2961423))))

(assert (=> d!1517300 (= res!2012567 (forall!11732 lt!1909699 lambda!220690))))

(assert (=> d!1517300 (= lt!1909777 e!2961424)))

(assert (=> d!1517300 (= c!810836 (is-Nil!53029 lt!1909699))))

(assert (=> d!1517300 (noDuplicateKeys!2095 lt!1909699)))

(assert (=> d!1517300 (= (addToMapMapFromBucket!1521 lt!1909699 lt!1909700) lt!1909777)))

(declare-fun b!4747727 () Bool)

(declare-fun res!2012568 () Bool)

(assert (=> b!4747727 (=> (not res!2012568) (not e!2961423))))

(assert (=> b!4747727 (= res!2012568 (forall!11732 (toList!6065 lt!1909700) lambda!220690))))

(declare-fun b!4747728 () Bool)

(declare-fun invariantList!1564 (List!53153) Bool)

(assert (=> b!4747728 (= e!2961423 (invariantList!1564 (toList!6065 lt!1909777)))))

(declare-fun b!4747729 () Bool)

(assert (=> b!4747729 (= e!2961422 (forall!11732 (toList!6065 lt!1909700) lambda!220689))))

(declare-fun bm!332230 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!847 (ListMap!5439) Unit!134501)

(assert (=> bm!332230 (= call!332235 (lemmaContainsAllItsOwnKeys!847 lt!1909700))))

(assert (=> b!4747730 (= e!2961424 lt!1909700)))

(declare-fun lt!1909776 () Unit!134501)

(assert (=> b!4747730 (= lt!1909776 call!332235)))

(assert (=> b!4747730 call!332234))

(declare-fun lt!1909775 () Unit!134501)

(assert (=> b!4747730 (= lt!1909775 lt!1909776)))

(assert (=> b!4747730 call!332236))

(declare-fun lt!1909788 () Unit!134501)

(declare-fun Unit!134515 () Unit!134501)

(assert (=> b!4747730 (= lt!1909788 Unit!134515)))

(declare-fun bm!332231 () Bool)

(assert (=> bm!332231 (= call!332234 (forall!11732 (toList!6065 lt!1909700) (ite c!810836 lambda!220687 lambda!220688)))))

(assert (= (and d!1517300 c!810836) b!4747730))

(assert (= (and d!1517300 (not c!810836)) b!4747726))

(assert (= (and b!4747726 res!2012566) b!4747729))

(assert (= (or b!4747730 b!4747726) bm!332230))

(assert (= (or b!4747730 b!4747726) bm!332229))

(assert (= (or b!4747730 b!4747726) bm!332231))

(assert (= (and d!1517300 res!2012567) b!4747727))

(assert (= (and b!4747727 res!2012568) b!4747728))

(declare-fun m!5705119 () Bool)

(assert (=> b!4747727 m!5705119))

(declare-fun m!5705121 () Bool)

(assert (=> bm!332229 m!5705121))

(declare-fun m!5705123 () Bool)

(assert (=> b!4747729 m!5705123))

(declare-fun m!5705125 () Bool)

(assert (=> bm!332231 m!5705125))

(declare-fun m!5705127 () Bool)

(assert (=> b!4747726 m!5705127))

(declare-fun m!5705129 () Bool)

(assert (=> b!4747726 m!5705129))

(declare-fun m!5705131 () Bool)

(assert (=> b!4747726 m!5705131))

(declare-fun m!5705133 () Bool)

(assert (=> b!4747726 m!5705133))

(declare-fun m!5705135 () Bool)

(assert (=> b!4747726 m!5705135))

(declare-fun m!5705137 () Bool)

(assert (=> b!4747726 m!5705137))

(assert (=> b!4747726 m!5705123))

(assert (=> b!4747726 m!5705127))

(assert (=> b!4747726 m!5705129))

(declare-fun m!5705139 () Bool)

(assert (=> b!4747726 m!5705139))

(declare-fun m!5705141 () Bool)

(assert (=> b!4747726 m!5705141))

(declare-fun m!5705143 () Bool)

(assert (=> b!4747726 m!5705143))

(assert (=> b!4747726 m!5705141))

(declare-fun m!5705145 () Bool)

(assert (=> bm!332230 m!5705145))

(declare-fun m!5705147 () Bool)

(assert (=> b!4747728 m!5705147))

(declare-fun m!5705149 () Bool)

(assert (=> d!1517300 m!5705149))

(assert (=> d!1517300 m!5705069))

(assert (=> b!4747680 d!1517300))

(declare-fun d!1517304 () Bool)

(declare-fun content!9498 (List!53153) (Set tuple2!54750))

(assert (=> d!1517304 (= (eq!1172 (addToMapMapFromBucket!1521 lt!1909699 lt!1909700) (+!2331 lt!1909701 t!14174)) (= (content!9498 (toList!6065 (addToMapMapFromBucket!1521 lt!1909699 lt!1909700))) (content!9498 (toList!6065 (+!2331 lt!1909701 t!14174)))))))

(declare-fun bs!1138531 () Bool)

(assert (= bs!1138531 d!1517304))

(declare-fun m!5705151 () Bool)

(assert (=> bs!1138531 m!5705151))

(declare-fun m!5705153 () Bool)

(assert (=> bs!1138531 m!5705153))

(assert (=> b!4747680 d!1517304))

(declare-fun bs!1138532 () Bool)

(declare-fun b!4747737 () Bool)

(assert (= bs!1138532 (and b!4747737 b!4747730)))

(declare-fun lambda!220691 () Int)

(assert (=> bs!1138532 (= lambda!220691 lambda!220687)))

(declare-fun bs!1138533 () Bool)

(assert (= bs!1138533 (and b!4747737 b!4747726)))

(assert (=> bs!1138533 (= lambda!220691 lambda!220688)))

(assert (=> bs!1138533 (= (= lt!1909700 lt!1909781) (= lambda!220691 lambda!220689))))

(declare-fun bs!1138534 () Bool)

(assert (= bs!1138534 (and b!4747737 d!1517300)))

(assert (=> bs!1138534 (= (= lt!1909700 lt!1909777) (= lambda!220691 lambda!220690))))

(assert (=> b!4747737 true))

(declare-fun bs!1138535 () Bool)

(declare-fun b!4747733 () Bool)

(assert (= bs!1138535 (and b!4747733 b!4747737)))

(declare-fun lambda!220692 () Int)

(assert (=> bs!1138535 (= lambda!220692 lambda!220691)))

(declare-fun bs!1138536 () Bool)

(assert (= bs!1138536 (and b!4747733 b!4747730)))

(assert (=> bs!1138536 (= lambda!220692 lambda!220687)))

(declare-fun bs!1138537 () Bool)

(assert (= bs!1138537 (and b!4747733 b!4747726)))

(assert (=> bs!1138537 (= lambda!220692 lambda!220688)))

(assert (=> bs!1138537 (= (= lt!1909700 lt!1909781) (= lambda!220692 lambda!220689))))

(declare-fun bs!1138538 () Bool)

(assert (= bs!1138538 (and b!4747733 d!1517300)))

(assert (=> bs!1138538 (= (= lt!1909700 lt!1909777) (= lambda!220692 lambda!220690))))

(assert (=> b!4747733 true))

(declare-fun lambda!220693 () Int)

(declare-fun lt!1909802 () ListMap!5439)

(assert (=> bs!1138535 (= (= lt!1909802 lt!1909700) (= lambda!220693 lambda!220691))))

(assert (=> bs!1138536 (= (= lt!1909802 lt!1909700) (= lambda!220693 lambda!220687))))

(assert (=> bs!1138537 (= (= lt!1909802 lt!1909700) (= lambda!220693 lambda!220688))))

(assert (=> bs!1138537 (= (= lt!1909802 lt!1909781) (= lambda!220693 lambda!220689))))

(assert (=> b!4747733 (= (= lt!1909802 lt!1909700) (= lambda!220693 lambda!220692))))

(assert (=> bs!1138538 (= (= lt!1909802 lt!1909777) (= lambda!220693 lambda!220690))))

(assert (=> b!4747733 true))

(declare-fun bs!1138539 () Bool)

(declare-fun d!1517306 () Bool)

(assert (= bs!1138539 (and d!1517306 b!4747737)))

(declare-fun lambda!220694 () Int)

(declare-fun lt!1909798 () ListMap!5439)

(assert (=> bs!1138539 (= (= lt!1909798 lt!1909700) (= lambda!220694 lambda!220691))))

(declare-fun bs!1138540 () Bool)

(assert (= bs!1138540 (and d!1517306 b!4747730)))

(assert (=> bs!1138540 (= (= lt!1909798 lt!1909700) (= lambda!220694 lambda!220687))))

(declare-fun bs!1138541 () Bool)

(assert (= bs!1138541 (and d!1517306 b!4747726)))

(assert (=> bs!1138541 (= (= lt!1909798 lt!1909700) (= lambda!220694 lambda!220688))))

(assert (=> bs!1138541 (= (= lt!1909798 lt!1909781) (= lambda!220694 lambda!220689))))

(declare-fun bs!1138542 () Bool)

(assert (= bs!1138542 (and d!1517306 b!4747733)))

(assert (=> bs!1138542 (= (= lt!1909798 lt!1909802) (= lambda!220694 lambda!220693))))

(assert (=> bs!1138542 (= (= lt!1909798 lt!1909700) (= lambda!220694 lambda!220692))))

(declare-fun bs!1138543 () Bool)

(assert (= bs!1138543 (and d!1517306 d!1517300)))

(assert (=> bs!1138543 (= (= lt!1909798 lt!1909777) (= lambda!220694 lambda!220690))))

(assert (=> d!1517306 true))

(declare-fun e!2961427 () ListMap!5439)

(assert (=> b!4747733 (= e!2961427 lt!1909802)))

(declare-fun lt!1909807 () ListMap!5439)

(assert (=> b!4747733 (= lt!1909807 (+!2331 lt!1909700 (h!59426 (t!360463 l!14304))))))

(assert (=> b!4747733 (= lt!1909802 (addToMapMapFromBucket!1521 (t!360463 (t!360463 l!14304)) (+!2331 lt!1909700 (h!59426 (t!360463 l!14304)))))))

(declare-fun lt!1909806 () Unit!134501)

(declare-fun call!332238 () Unit!134501)

(assert (=> b!4747733 (= lt!1909806 call!332238)))

(declare-fun call!332237 () Bool)

(assert (=> b!4747733 call!332237))

(declare-fun lt!1909795 () Unit!134501)

(assert (=> b!4747733 (= lt!1909795 lt!1909806)))

(assert (=> b!4747733 (forall!11732 (toList!6065 lt!1909807) lambda!220693)))

(declare-fun lt!1909811 () Unit!134501)

(declare-fun Unit!134516 () Unit!134501)

(assert (=> b!4747733 (= lt!1909811 Unit!134516)))

(assert (=> b!4747733 (forall!11732 (t!360463 (t!360463 l!14304)) lambda!220693)))

(declare-fun lt!1909799 () Unit!134501)

(declare-fun Unit!134517 () Unit!134501)

(assert (=> b!4747733 (= lt!1909799 Unit!134517)))

(declare-fun lt!1909812 () Unit!134501)

(declare-fun Unit!134518 () Unit!134501)

(assert (=> b!4747733 (= lt!1909812 Unit!134518)))

(declare-fun lt!1909815 () Unit!134501)

(assert (=> b!4747733 (= lt!1909815 (forallContained!3758 (toList!6065 lt!1909807) lambda!220693 (h!59426 (t!360463 l!14304))))))

(assert (=> b!4747733 (contains!16447 lt!1909807 (_1!30669 (h!59426 (t!360463 l!14304))))))

(declare-fun lt!1909808 () Unit!134501)

(declare-fun Unit!134519 () Unit!134501)

(assert (=> b!4747733 (= lt!1909808 Unit!134519)))

(assert (=> b!4747733 (contains!16447 lt!1909802 (_1!30669 (h!59426 (t!360463 l!14304))))))

(declare-fun lt!1909804 () Unit!134501)

(declare-fun Unit!134520 () Unit!134501)

(assert (=> b!4747733 (= lt!1909804 Unit!134520)))

(assert (=> b!4747733 (forall!11732 (t!360463 l!14304) lambda!220693)))

(declare-fun lt!1909800 () Unit!134501)

(declare-fun Unit!134521 () Unit!134501)

(assert (=> b!4747733 (= lt!1909800 Unit!134521)))

(assert (=> b!4747733 (forall!11732 (toList!6065 lt!1909807) lambda!220693)))

(declare-fun lt!1909813 () Unit!134501)

(declare-fun Unit!134522 () Unit!134501)

(assert (=> b!4747733 (= lt!1909813 Unit!134522)))

(declare-fun lt!1909810 () Unit!134501)

(declare-fun Unit!134523 () Unit!134501)

(assert (=> b!4747733 (= lt!1909810 Unit!134523)))

(declare-fun lt!1909805 () Unit!134501)

(assert (=> b!4747733 (= lt!1909805 (addForallContainsKeyThenBeforeAdding!846 lt!1909700 lt!1909802 (_1!30669 (h!59426 (t!360463 l!14304))) (_2!30669 (h!59426 (t!360463 l!14304)))))))

(assert (=> b!4747733 (forall!11732 (toList!6065 lt!1909700) lambda!220693)))

(declare-fun lt!1909803 () Unit!134501)

(assert (=> b!4747733 (= lt!1909803 lt!1909805)))

(declare-fun call!332239 () Bool)

(assert (=> b!4747733 call!332239))

(declare-fun lt!1909814 () Unit!134501)

(declare-fun Unit!134524 () Unit!134501)

(assert (=> b!4747733 (= lt!1909814 Unit!134524)))

(declare-fun res!2012569 () Bool)

(assert (=> b!4747733 (= res!2012569 (forall!11732 (t!360463 l!14304) lambda!220693))))

(declare-fun e!2961425 () Bool)

(assert (=> b!4747733 (=> (not res!2012569) (not e!2961425))))

(assert (=> b!4747733 e!2961425))

(declare-fun lt!1909801 () Unit!134501)

(declare-fun Unit!134525 () Unit!134501)

(assert (=> b!4747733 (= lt!1909801 Unit!134525)))

(declare-fun c!810837 () Bool)

(declare-fun bm!332232 () Bool)

(assert (=> bm!332232 (= call!332239 (forall!11732 (toList!6065 lt!1909700) (ite c!810837 lambda!220691 lambda!220693)))))

(declare-fun e!2961426 () Bool)

(assert (=> d!1517306 e!2961426))

(declare-fun res!2012570 () Bool)

(assert (=> d!1517306 (=> (not res!2012570) (not e!2961426))))

(assert (=> d!1517306 (= res!2012570 (forall!11732 (t!360463 l!14304) lambda!220694))))

(assert (=> d!1517306 (= lt!1909798 e!2961427)))

(assert (=> d!1517306 (= c!810837 (is-Nil!53029 (t!360463 l!14304)))))

(assert (=> d!1517306 (noDuplicateKeys!2095 (t!360463 l!14304))))

(assert (=> d!1517306 (= (addToMapMapFromBucket!1521 (t!360463 l!14304) lt!1909700) lt!1909798)))

(declare-fun b!4747734 () Bool)

(declare-fun res!2012571 () Bool)

(assert (=> b!4747734 (=> (not res!2012571) (not e!2961426))))

(assert (=> b!4747734 (= res!2012571 (forall!11732 (toList!6065 lt!1909700) lambda!220694))))

(declare-fun b!4747735 () Bool)

(assert (=> b!4747735 (= e!2961426 (invariantList!1564 (toList!6065 lt!1909798)))))

(declare-fun b!4747736 () Bool)

(assert (=> b!4747736 (= e!2961425 (forall!11732 (toList!6065 lt!1909700) lambda!220693))))

(declare-fun bm!332233 () Bool)

(assert (=> bm!332233 (= call!332238 (lemmaContainsAllItsOwnKeys!847 lt!1909700))))

(assert (=> b!4747737 (= e!2961427 lt!1909700)))

(declare-fun lt!1909797 () Unit!134501)

(assert (=> b!4747737 (= lt!1909797 call!332238)))

(assert (=> b!4747737 call!332237))

(declare-fun lt!1909796 () Unit!134501)

(assert (=> b!4747737 (= lt!1909796 lt!1909797)))

(assert (=> b!4747737 call!332239))

(declare-fun lt!1909809 () Unit!134501)

(declare-fun Unit!134526 () Unit!134501)

(assert (=> b!4747737 (= lt!1909809 Unit!134526)))

(declare-fun bm!332234 () Bool)

(assert (=> bm!332234 (= call!332237 (forall!11732 (toList!6065 lt!1909700) (ite c!810837 lambda!220691 lambda!220692)))))

(assert (= (and d!1517306 c!810837) b!4747737))

(assert (= (and d!1517306 (not c!810837)) b!4747733))

(assert (= (and b!4747733 res!2012569) b!4747736))

(assert (= (or b!4747737 b!4747733) bm!332233))

(assert (= (or b!4747737 b!4747733) bm!332232))

(assert (= (or b!4747737 b!4747733) bm!332234))

(assert (= (and d!1517306 res!2012570) b!4747734))

(assert (= (and b!4747734 res!2012571) b!4747735))

(declare-fun m!5705155 () Bool)

(assert (=> b!4747734 m!5705155))

(declare-fun m!5705157 () Bool)

(assert (=> bm!332232 m!5705157))

(declare-fun m!5705159 () Bool)

(assert (=> b!4747736 m!5705159))

(declare-fun m!5705161 () Bool)

(assert (=> bm!332234 m!5705161))

(declare-fun m!5705163 () Bool)

(assert (=> b!4747733 m!5705163))

(declare-fun m!5705165 () Bool)

(assert (=> b!4747733 m!5705165))

(declare-fun m!5705167 () Bool)

(assert (=> b!4747733 m!5705167))

(declare-fun m!5705169 () Bool)

(assert (=> b!4747733 m!5705169))

(declare-fun m!5705171 () Bool)

(assert (=> b!4747733 m!5705171))

(declare-fun m!5705173 () Bool)

(assert (=> b!4747733 m!5705173))

(assert (=> b!4747733 m!5705159))

(assert (=> b!4747733 m!5705163))

(assert (=> b!4747733 m!5705165))

(declare-fun m!5705175 () Bool)

(assert (=> b!4747733 m!5705175))

(declare-fun m!5705177 () Bool)

(assert (=> b!4747733 m!5705177))

(declare-fun m!5705179 () Bool)

(assert (=> b!4747733 m!5705179))

(assert (=> b!4747733 m!5705177))

(assert (=> bm!332233 m!5705145))

(declare-fun m!5705181 () Bool)

(assert (=> b!4747735 m!5705181))

(declare-fun m!5705183 () Bool)

(assert (=> d!1517306 m!5705183))

(declare-fun m!5705185 () Bool)

(assert (=> d!1517306 m!5705185))

(assert (=> b!4747680 d!1517306))

(declare-fun d!1517308 () Bool)

(assert (=> d!1517308 (eq!1172 (addToMapMapFromBucket!1521 (Cons!53029 t!14174 (t!360463 l!14304)) lt!1909700) (+!2331 (addToMapMapFromBucket!1521 (t!360463 l!14304) lt!1909700) t!14174))))

(declare-fun lt!1909818 () Unit!134501)

(declare-fun choose!33779 (tuple2!54750 List!53153 ListMap!5439) Unit!134501)

(assert (=> d!1517308 (= lt!1909818 (choose!33779 t!14174 (t!360463 l!14304) lt!1909700))))

(assert (=> d!1517308 (noDuplicateKeys!2095 (t!360463 l!14304))))

(assert (=> d!1517308 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!419 t!14174 (t!360463 l!14304) lt!1909700) lt!1909818)))

(declare-fun bs!1138544 () Bool)

(assert (= bs!1138544 d!1517308))

(declare-fun m!5705187 () Bool)

(assert (=> bs!1138544 m!5705187))

(declare-fun m!5705189 () Bool)

(assert (=> bs!1138544 m!5705189))

(declare-fun m!5705191 () Bool)

(assert (=> bs!1138544 m!5705191))

(assert (=> bs!1138544 m!5705067))

(declare-fun m!5705193 () Bool)

(assert (=> bs!1138544 m!5705193))

(assert (=> bs!1138544 m!5705185))

(assert (=> bs!1138544 m!5705187))

(assert (=> bs!1138544 m!5705067))

(assert (=> bs!1138544 m!5705189))

(assert (=> b!4747680 d!1517308))

(declare-fun d!1517310 () Bool)

(declare-fun e!2961428 () Bool)

(assert (=> d!1517310 e!2961428))

(declare-fun res!2012573 () Bool)

(assert (=> d!1517310 (=> (not res!2012573) (not e!2961428))))

(declare-fun lt!1909822 () ListMap!5439)

(assert (=> d!1517310 (= res!2012573 (contains!16447 lt!1909822 (_1!30669 (h!59426 l!14304))))))

(declare-fun lt!1909821 () List!53153)

(assert (=> d!1517310 (= lt!1909822 (ListMap!5440 lt!1909821))))

(declare-fun lt!1909820 () Unit!134501)

(declare-fun lt!1909819 () Unit!134501)

(assert (=> d!1517310 (= lt!1909820 lt!1909819)))

(assert (=> d!1517310 (= (getValueByKey!2052 lt!1909821 (_1!30669 (h!59426 l!14304))) (Some!12501 (_2!30669 (h!59426 l!14304))))))

(assert (=> d!1517310 (= lt!1909819 (lemmaContainsTupThenGetReturnValue!1129 lt!1909821 (_1!30669 (h!59426 l!14304)) (_2!30669 (h!59426 l!14304))))))

(assert (=> d!1517310 (= lt!1909821 (insertNoDuplicatedKeys!637 (toList!6065 acc!1214) (_1!30669 (h!59426 l!14304)) (_2!30669 (h!59426 l!14304))))))

(assert (=> d!1517310 (= (+!2331 acc!1214 (h!59426 l!14304)) lt!1909822)))

(declare-fun b!4747738 () Bool)

(declare-fun res!2012572 () Bool)

(assert (=> b!4747738 (=> (not res!2012572) (not e!2961428))))

(assert (=> b!4747738 (= res!2012572 (= (getValueByKey!2052 (toList!6065 lt!1909822) (_1!30669 (h!59426 l!14304))) (Some!12501 (_2!30669 (h!59426 l!14304)))))))

(declare-fun b!4747739 () Bool)

(assert (=> b!4747739 (= e!2961428 (contains!16448 (toList!6065 lt!1909822) (h!59426 l!14304)))))

(assert (= (and d!1517310 res!2012573) b!4747738))

(assert (= (and b!4747738 res!2012572) b!4747739))

(declare-fun m!5705195 () Bool)

(assert (=> d!1517310 m!5705195))

(declare-fun m!5705197 () Bool)

(assert (=> d!1517310 m!5705197))

(declare-fun m!5705199 () Bool)

(assert (=> d!1517310 m!5705199))

(declare-fun m!5705201 () Bool)

(assert (=> d!1517310 m!5705201))

(declare-fun m!5705203 () Bool)

(assert (=> b!4747738 m!5705203))

(declare-fun m!5705205 () Bool)

(assert (=> b!4747739 m!5705205))

(assert (=> b!4747680 d!1517310))

(declare-fun d!1517312 () Bool)

(declare-fun res!2012574 () Bool)

(declare-fun e!2961429 () Bool)

(assert (=> d!1517312 (=> res!2012574 e!2961429)))

(assert (=> d!1517312 (= res!2012574 (not (is-Cons!53029 lt!1909699)))))

(assert (=> d!1517312 (= (noDuplicateKeys!2095 lt!1909699) e!2961429)))

(declare-fun b!4747740 () Bool)

(declare-fun e!2961430 () Bool)

(assert (=> b!4747740 (= e!2961429 e!2961430)))

(declare-fun res!2012575 () Bool)

(assert (=> b!4747740 (=> (not res!2012575) (not e!2961430))))

(assert (=> b!4747740 (= res!2012575 (not (containsKey!3522 (t!360463 lt!1909699) (_1!30669 (h!59426 lt!1909699)))))))

(declare-fun b!4747741 () Bool)

(assert (=> b!4747741 (= e!2961430 (noDuplicateKeys!2095 (t!360463 lt!1909699)))))

(assert (= (and d!1517312 (not res!2012574)) b!4747740))

(assert (= (and b!4747740 res!2012575) b!4747741))

(declare-fun m!5705207 () Bool)

(assert (=> b!4747740 m!5705207))

(declare-fun m!5705209 () Bool)

(assert (=> b!4747741 m!5705209))

(assert (=> b!4747680 d!1517312))

(declare-fun d!1517314 () Bool)

(declare-fun res!2012576 () Bool)

(declare-fun e!2961431 () Bool)

(assert (=> d!1517314 (=> res!2012576 e!2961431)))

(assert (=> d!1517314 (= res!2012576 (not (is-Cons!53029 l!14304)))))

(assert (=> d!1517314 (= (noDuplicateKeys!2095 l!14304) e!2961431)))

(declare-fun b!4747742 () Bool)

(declare-fun e!2961432 () Bool)

(assert (=> b!4747742 (= e!2961431 e!2961432)))

(declare-fun res!2012577 () Bool)

(assert (=> b!4747742 (=> (not res!2012577) (not e!2961432))))

(assert (=> b!4747742 (= res!2012577 (not (containsKey!3522 (t!360463 l!14304) (_1!30669 (h!59426 l!14304)))))))

(declare-fun b!4747743 () Bool)

(assert (=> b!4747743 (= e!2961432 (noDuplicateKeys!2095 (t!360463 l!14304)))))

(assert (= (and d!1517314 (not res!2012576)) b!4747742))

(assert (= (and b!4747742 res!2012577) b!4747743))

(declare-fun m!5705211 () Bool)

(assert (=> b!4747742 m!5705211))

(assert (=> b!4747743 m!5705185))

(assert (=> start!484946 d!1517314))

(declare-fun d!1517316 () Bool)

(assert (=> d!1517316 (= (inv!68261 acc!1214) (invariantList!1564 (toList!6065 acc!1214)))))

(declare-fun bs!1138545 () Bool)

(assert (= bs!1138545 d!1517316))

(declare-fun m!5705213 () Bool)

(assert (=> bs!1138545 m!5705213))

(assert (=> start!484946 d!1517316))

(declare-fun d!1517318 () Bool)

(assert (=> d!1517318 (= (eq!1172 lt!1909701 (addToMapMapFromBucket!1521 l!14304 acc!1214)) (= (content!9498 (toList!6065 lt!1909701)) (content!9498 (toList!6065 (addToMapMapFromBucket!1521 l!14304 acc!1214)))))))

(declare-fun bs!1138546 () Bool)

(assert (= bs!1138546 d!1517318))

(declare-fun m!5705215 () Bool)

(assert (=> bs!1138546 m!5705215))

(declare-fun m!5705217 () Bool)

(assert (=> bs!1138546 m!5705217))

(assert (=> b!4747676 d!1517318))

(declare-fun bs!1138547 () Bool)

(declare-fun b!4747748 () Bool)

(assert (= bs!1138547 (and b!4747748 b!4747737)))

(declare-fun lambda!220695 () Int)

(assert (=> bs!1138547 (= (= acc!1214 lt!1909700) (= lambda!220695 lambda!220691))))

(declare-fun bs!1138548 () Bool)

(assert (= bs!1138548 (and b!4747748 b!4747730)))

(assert (=> bs!1138548 (= (= acc!1214 lt!1909700) (= lambda!220695 lambda!220687))))

(declare-fun bs!1138549 () Bool)

(assert (= bs!1138549 (and b!4747748 b!4747726)))

(assert (=> bs!1138549 (= (= acc!1214 lt!1909700) (= lambda!220695 lambda!220688))))

(assert (=> bs!1138549 (= (= acc!1214 lt!1909781) (= lambda!220695 lambda!220689))))

(declare-fun bs!1138550 () Bool)

(assert (= bs!1138550 (and b!4747748 b!4747733)))

(assert (=> bs!1138550 (= (= acc!1214 lt!1909802) (= lambda!220695 lambda!220693))))

(declare-fun bs!1138551 () Bool)

(assert (= bs!1138551 (and b!4747748 d!1517306)))

(assert (=> bs!1138551 (= (= acc!1214 lt!1909798) (= lambda!220695 lambda!220694))))

(assert (=> bs!1138550 (= (= acc!1214 lt!1909700) (= lambda!220695 lambda!220692))))

(declare-fun bs!1138552 () Bool)

(assert (= bs!1138552 (and b!4747748 d!1517300)))

(assert (=> bs!1138552 (= (= acc!1214 lt!1909777) (= lambda!220695 lambda!220690))))

(assert (=> b!4747748 true))

(declare-fun bs!1138553 () Bool)

(declare-fun b!4747744 () Bool)

(assert (= bs!1138553 (and b!4747744 b!4747737)))

(declare-fun lambda!220696 () Int)

(assert (=> bs!1138553 (= (= acc!1214 lt!1909700) (= lambda!220696 lambda!220691))))

(declare-fun bs!1138554 () Bool)

(assert (= bs!1138554 (and b!4747744 b!4747730)))

(assert (=> bs!1138554 (= (= acc!1214 lt!1909700) (= lambda!220696 lambda!220687))))

(declare-fun bs!1138555 () Bool)

(assert (= bs!1138555 (and b!4747744 b!4747748)))

(assert (=> bs!1138555 (= lambda!220696 lambda!220695)))

(declare-fun bs!1138556 () Bool)

(assert (= bs!1138556 (and b!4747744 b!4747726)))

(assert (=> bs!1138556 (= (= acc!1214 lt!1909700) (= lambda!220696 lambda!220688))))

(assert (=> bs!1138556 (= (= acc!1214 lt!1909781) (= lambda!220696 lambda!220689))))

(declare-fun bs!1138557 () Bool)

(assert (= bs!1138557 (and b!4747744 b!4747733)))

(assert (=> bs!1138557 (= (= acc!1214 lt!1909802) (= lambda!220696 lambda!220693))))

(declare-fun bs!1138558 () Bool)

(assert (= bs!1138558 (and b!4747744 d!1517306)))

(assert (=> bs!1138558 (= (= acc!1214 lt!1909798) (= lambda!220696 lambda!220694))))

(assert (=> bs!1138557 (= (= acc!1214 lt!1909700) (= lambda!220696 lambda!220692))))

(declare-fun bs!1138559 () Bool)

(assert (= bs!1138559 (and b!4747744 d!1517300)))

(assert (=> bs!1138559 (= (= acc!1214 lt!1909777) (= lambda!220696 lambda!220690))))

(assert (=> b!4747744 true))

(declare-fun lambda!220697 () Int)

(declare-fun lt!1909830 () ListMap!5439)

(assert (=> b!4747744 (= (= lt!1909830 acc!1214) (= lambda!220697 lambda!220696))))

(assert (=> bs!1138553 (= (= lt!1909830 lt!1909700) (= lambda!220697 lambda!220691))))

(assert (=> bs!1138554 (= (= lt!1909830 lt!1909700) (= lambda!220697 lambda!220687))))

(assert (=> bs!1138555 (= (= lt!1909830 acc!1214) (= lambda!220697 lambda!220695))))

(assert (=> bs!1138556 (= (= lt!1909830 lt!1909700) (= lambda!220697 lambda!220688))))

(assert (=> bs!1138556 (= (= lt!1909830 lt!1909781) (= lambda!220697 lambda!220689))))

(assert (=> bs!1138557 (= (= lt!1909830 lt!1909802) (= lambda!220697 lambda!220693))))

(assert (=> bs!1138558 (= (= lt!1909830 lt!1909798) (= lambda!220697 lambda!220694))))

(assert (=> bs!1138557 (= (= lt!1909830 lt!1909700) (= lambda!220697 lambda!220692))))

(assert (=> bs!1138559 (= (= lt!1909830 lt!1909777) (= lambda!220697 lambda!220690))))

(assert (=> b!4747744 true))

(declare-fun bs!1138560 () Bool)

(declare-fun d!1517320 () Bool)

(assert (= bs!1138560 (and d!1517320 b!4747737)))

(declare-fun lt!1909826 () ListMap!5439)

(declare-fun lambda!220698 () Int)

(assert (=> bs!1138560 (= (= lt!1909826 lt!1909700) (= lambda!220698 lambda!220691))))

(declare-fun bs!1138561 () Bool)

(assert (= bs!1138561 (and d!1517320 b!4747730)))

(assert (=> bs!1138561 (= (= lt!1909826 lt!1909700) (= lambda!220698 lambda!220687))))

(declare-fun bs!1138562 () Bool)

(assert (= bs!1138562 (and d!1517320 b!4747748)))

(assert (=> bs!1138562 (= (= lt!1909826 acc!1214) (= lambda!220698 lambda!220695))))

(declare-fun bs!1138563 () Bool)

(assert (= bs!1138563 (and d!1517320 b!4747726)))

(assert (=> bs!1138563 (= (= lt!1909826 lt!1909700) (= lambda!220698 lambda!220688))))

(assert (=> bs!1138563 (= (= lt!1909826 lt!1909781) (= lambda!220698 lambda!220689))))

(declare-fun bs!1138564 () Bool)

(assert (= bs!1138564 (and d!1517320 b!4747733)))

(assert (=> bs!1138564 (= (= lt!1909826 lt!1909802) (= lambda!220698 lambda!220693))))

(declare-fun bs!1138565 () Bool)

(assert (= bs!1138565 (and d!1517320 d!1517306)))

(assert (=> bs!1138565 (= (= lt!1909826 lt!1909798) (= lambda!220698 lambda!220694))))

(assert (=> bs!1138564 (= (= lt!1909826 lt!1909700) (= lambda!220698 lambda!220692))))

(declare-fun bs!1138566 () Bool)

(assert (= bs!1138566 (and d!1517320 d!1517300)))

(assert (=> bs!1138566 (= (= lt!1909826 lt!1909777) (= lambda!220698 lambda!220690))))

(declare-fun bs!1138567 () Bool)

(assert (= bs!1138567 (and d!1517320 b!4747744)))

(assert (=> bs!1138567 (= (= lt!1909826 acc!1214) (= lambda!220698 lambda!220696))))

(assert (=> bs!1138567 (= (= lt!1909826 lt!1909830) (= lambda!220698 lambda!220697))))

(assert (=> d!1517320 true))

(declare-fun e!2961435 () ListMap!5439)

(assert (=> b!4747744 (= e!2961435 lt!1909830)))

(declare-fun lt!1909835 () ListMap!5439)

(assert (=> b!4747744 (= lt!1909835 (+!2331 acc!1214 (h!59426 l!14304)))))

(assert (=> b!4747744 (= lt!1909830 (addToMapMapFromBucket!1521 (t!360463 l!14304) (+!2331 acc!1214 (h!59426 l!14304))))))

(declare-fun lt!1909834 () Unit!134501)

(declare-fun call!332241 () Unit!134501)

(assert (=> b!4747744 (= lt!1909834 call!332241)))

(declare-fun call!332240 () Bool)

(assert (=> b!4747744 call!332240))

(declare-fun lt!1909823 () Unit!134501)

(assert (=> b!4747744 (= lt!1909823 lt!1909834)))

(assert (=> b!4747744 (forall!11732 (toList!6065 lt!1909835) lambda!220697)))

(declare-fun lt!1909839 () Unit!134501)

(declare-fun Unit!134527 () Unit!134501)

(assert (=> b!4747744 (= lt!1909839 Unit!134527)))

(assert (=> b!4747744 (forall!11732 (t!360463 l!14304) lambda!220697)))

(declare-fun lt!1909827 () Unit!134501)

(declare-fun Unit!134528 () Unit!134501)

(assert (=> b!4747744 (= lt!1909827 Unit!134528)))

(declare-fun lt!1909840 () Unit!134501)

(declare-fun Unit!134529 () Unit!134501)

(assert (=> b!4747744 (= lt!1909840 Unit!134529)))

(declare-fun lt!1909843 () Unit!134501)

(assert (=> b!4747744 (= lt!1909843 (forallContained!3758 (toList!6065 lt!1909835) lambda!220697 (h!59426 l!14304)))))

(assert (=> b!4747744 (contains!16447 lt!1909835 (_1!30669 (h!59426 l!14304)))))

(declare-fun lt!1909836 () Unit!134501)

(declare-fun Unit!134530 () Unit!134501)

(assert (=> b!4747744 (= lt!1909836 Unit!134530)))

(assert (=> b!4747744 (contains!16447 lt!1909830 (_1!30669 (h!59426 l!14304)))))

(declare-fun lt!1909832 () Unit!134501)

(declare-fun Unit!134531 () Unit!134501)

(assert (=> b!4747744 (= lt!1909832 Unit!134531)))

(assert (=> b!4747744 (forall!11732 l!14304 lambda!220697)))

(declare-fun lt!1909828 () Unit!134501)

(declare-fun Unit!134532 () Unit!134501)

(assert (=> b!4747744 (= lt!1909828 Unit!134532)))

(assert (=> b!4747744 (forall!11732 (toList!6065 lt!1909835) lambda!220697)))

(declare-fun lt!1909841 () Unit!134501)

(declare-fun Unit!134533 () Unit!134501)

(assert (=> b!4747744 (= lt!1909841 Unit!134533)))

(declare-fun lt!1909838 () Unit!134501)

(declare-fun Unit!134534 () Unit!134501)

(assert (=> b!4747744 (= lt!1909838 Unit!134534)))

(declare-fun lt!1909833 () Unit!134501)

(assert (=> b!4747744 (= lt!1909833 (addForallContainsKeyThenBeforeAdding!846 acc!1214 lt!1909830 (_1!30669 (h!59426 l!14304)) (_2!30669 (h!59426 l!14304))))))

(assert (=> b!4747744 (forall!11732 (toList!6065 acc!1214) lambda!220697)))

(declare-fun lt!1909831 () Unit!134501)

(assert (=> b!4747744 (= lt!1909831 lt!1909833)))

(declare-fun call!332242 () Bool)

(assert (=> b!4747744 call!332242))

(declare-fun lt!1909842 () Unit!134501)

(declare-fun Unit!134535 () Unit!134501)

(assert (=> b!4747744 (= lt!1909842 Unit!134535)))

(declare-fun res!2012578 () Bool)

(assert (=> b!4747744 (= res!2012578 (forall!11732 l!14304 lambda!220697))))

(declare-fun e!2961433 () Bool)

(assert (=> b!4747744 (=> (not res!2012578) (not e!2961433))))

(assert (=> b!4747744 e!2961433))

(declare-fun lt!1909829 () Unit!134501)

(declare-fun Unit!134536 () Unit!134501)

(assert (=> b!4747744 (= lt!1909829 Unit!134536)))

(declare-fun bm!332235 () Bool)

(declare-fun c!810838 () Bool)

(assert (=> bm!332235 (= call!332242 (forall!11732 (toList!6065 acc!1214) (ite c!810838 lambda!220695 lambda!220697)))))

(declare-fun e!2961434 () Bool)

(assert (=> d!1517320 e!2961434))

(declare-fun res!2012579 () Bool)

(assert (=> d!1517320 (=> (not res!2012579) (not e!2961434))))

(assert (=> d!1517320 (= res!2012579 (forall!11732 l!14304 lambda!220698))))

(assert (=> d!1517320 (= lt!1909826 e!2961435)))

(assert (=> d!1517320 (= c!810838 (is-Nil!53029 l!14304))))

(assert (=> d!1517320 (noDuplicateKeys!2095 l!14304)))

(assert (=> d!1517320 (= (addToMapMapFromBucket!1521 l!14304 acc!1214) lt!1909826)))

(declare-fun b!4747745 () Bool)

(declare-fun res!2012580 () Bool)

(assert (=> b!4747745 (=> (not res!2012580) (not e!2961434))))

(assert (=> b!4747745 (= res!2012580 (forall!11732 (toList!6065 acc!1214) lambda!220698))))

(declare-fun b!4747746 () Bool)

(assert (=> b!4747746 (= e!2961434 (invariantList!1564 (toList!6065 lt!1909826)))))

(declare-fun b!4747747 () Bool)

(assert (=> b!4747747 (= e!2961433 (forall!11732 (toList!6065 acc!1214) lambda!220697))))

(declare-fun bm!332236 () Bool)

(assert (=> bm!332236 (= call!332241 (lemmaContainsAllItsOwnKeys!847 acc!1214))))

(assert (=> b!4747748 (= e!2961435 acc!1214)))

(declare-fun lt!1909825 () Unit!134501)

(assert (=> b!4747748 (= lt!1909825 call!332241)))

(assert (=> b!4747748 call!332240))

(declare-fun lt!1909824 () Unit!134501)

(assert (=> b!4747748 (= lt!1909824 lt!1909825)))

(assert (=> b!4747748 call!332242))

(declare-fun lt!1909837 () Unit!134501)

(declare-fun Unit!134537 () Unit!134501)

(assert (=> b!4747748 (= lt!1909837 Unit!134537)))

(declare-fun bm!332237 () Bool)

(assert (=> bm!332237 (= call!332240 (forall!11732 (toList!6065 acc!1214) (ite c!810838 lambda!220695 lambda!220696)))))

(assert (= (and d!1517320 c!810838) b!4747748))

(assert (= (and d!1517320 (not c!810838)) b!4747744))

(assert (= (and b!4747744 res!2012578) b!4747747))

(assert (= (or b!4747748 b!4747744) bm!332236))

(assert (= (or b!4747748 b!4747744) bm!332235))

(assert (= (or b!4747748 b!4747744) bm!332237))

(assert (= (and d!1517320 res!2012579) b!4747745))

(assert (= (and b!4747745 res!2012580) b!4747746))

(declare-fun m!5705219 () Bool)

(assert (=> b!4747745 m!5705219))

(declare-fun m!5705221 () Bool)

(assert (=> bm!332235 m!5705221))

(declare-fun m!5705223 () Bool)

(assert (=> b!4747747 m!5705223))

(declare-fun m!5705225 () Bool)

(assert (=> bm!332237 m!5705225))

(declare-fun m!5705227 () Bool)

(assert (=> b!4747744 m!5705227))

(assert (=> b!4747744 m!5705063))

(declare-fun m!5705229 () Bool)

(assert (=> b!4747744 m!5705229))

(declare-fun m!5705231 () Bool)

(assert (=> b!4747744 m!5705231))

(declare-fun m!5705233 () Bool)

(assert (=> b!4747744 m!5705233))

(declare-fun m!5705235 () Bool)

(assert (=> b!4747744 m!5705235))

(assert (=> b!4747744 m!5705223))

(assert (=> b!4747744 m!5705227))

(assert (=> b!4747744 m!5705063))

(declare-fun m!5705237 () Bool)

(assert (=> b!4747744 m!5705237))

(declare-fun m!5705239 () Bool)

(assert (=> b!4747744 m!5705239))

(declare-fun m!5705241 () Bool)

(assert (=> b!4747744 m!5705241))

(assert (=> b!4747744 m!5705239))

(declare-fun m!5705243 () Bool)

(assert (=> bm!332236 m!5705243))

(declare-fun m!5705245 () Bool)

(assert (=> b!4747746 m!5705245))

(declare-fun m!5705247 () Bool)

(assert (=> d!1517320 m!5705247))

(assert (=> d!1517320 m!5705055))

(assert (=> b!4747676 d!1517320))

(declare-fun e!2961438 () Bool)

(declare-fun tp!1349748 () Bool)

(declare-fun b!4747753 () Bool)

(assert (=> b!4747753 (= e!2961438 (and tp_is_empty!31673 tp_is_empty!31675 tp!1349748))))

(assert (=> b!4747677 (= tp!1349738 e!2961438)))

(assert (= (and b!4747677 (is-Cons!53029 (t!360463 l!14304))) b!4747753))

(declare-fun e!2961439 () Bool)

(declare-fun tp!1349749 () Bool)

(declare-fun b!4747754 () Bool)

(assert (=> b!4747754 (= e!2961439 (and tp_is_empty!31673 tp_is_empty!31675 tp!1349749))))

(assert (=> b!4747678 (= tp!1349739 e!2961439)))

(assert (= (and b!4747678 (is-Cons!53029 (toList!6065 acc!1214))) b!4747754))

(push 1)

(assert (not bm!332230))

(assert (not b!4747735))

(assert (not b!4747738))

(assert (not bm!332235))

(assert (not b!4747726))

(assert (not d!1517308))

(assert (not b!4747733))

(assert (not d!1517310))

(assert (not d!1517320))

(assert (not b!4747727))

(assert (not b!4747710))

(assert (not d!1517318))

(assert (not b!4747744))

(assert (not bm!332229))

(assert (not b!4747754))

(assert (not b!4747711))

(assert (not b!4747753))

(assert (not bm!332231))

(assert tp_is_empty!31675)

(assert (not bm!332234))

(assert (not b!4747739))

(assert (not bm!332232))

(assert (not b!4747728))

(assert (not b!4747746))

(assert (not d!1517316))

(assert (not b!4747734))

(assert (not d!1517296))

(assert tp_is_empty!31673)

(assert (not b!4747745))

(assert (not b!4747741))

(assert (not bm!332236))

(assert (not d!1517300))

(assert (not b!4747742))

(assert (not d!1517304))

(assert (not b!4747740))

(assert (not d!1517306))

(assert (not b!4747743))

(assert (not b!4747704))

(assert (not bm!332233))

(assert (not b!4747747))

(assert (not b!4747729))

(assert (not b!4747736))

(assert (not bm!332237))

(assert (not b!4747705))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

