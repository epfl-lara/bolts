; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!430784 () Bool)

(assert start!430784)

(declare-fun b!4420505 () Bool)

(declare-fun e!2752426 () Bool)

(declare-fun tp!1332953 () Bool)

(assert (=> b!4420505 (= e!2752426 tp!1332953)))

(declare-fun b!4420506 () Bool)

(declare-fun res!1826874 () Bool)

(declare-fun e!2752428 () Bool)

(assert (=> b!4420506 (=> (not res!1826874) (not e!2752428))))

(declare-datatypes ((K!10900 0))(
  ( (K!10901 (val!16991 Int)) )
))
(declare-datatypes ((V!11146 0))(
  ( (V!11147 (val!16992 Int)) )
))
(declare-datatypes ((tuple2!49302 0))(
  ( (tuple2!49303 (_1!27945 K!10900) (_2!27945 V!11146)) )
))
(declare-datatypes ((List!49658 0))(
  ( (Nil!49534) (Cons!49534 (h!55207 tuple2!49302) (t!356596 List!49658)) )
))
(declare-fun newBucket!194 () List!49658)

(declare-fun noDuplicateKeys!731 (List!49658) Bool)

(assert (=> b!4420506 (= res!1826874 (noDuplicateKeys!731 newBucket!194))))

(declare-fun b!4420507 () Bool)

(declare-fun res!1826877 () Bool)

(declare-fun e!2752429 () Bool)

(assert (=> b!4420507 (=> (not res!1826877) (not e!2752429))))

(declare-datatypes ((tuple2!49304 0))(
  ( (tuple2!49305 (_1!27946 (_ BitVec 64)) (_2!27946 List!49658)) )
))
(declare-datatypes ((List!49659 0))(
  ( (Nil!49535) (Cons!49535 (h!55208 tuple2!49304) (t!356597 List!49659)) )
))
(declare-datatypes ((ListLongMap!2099 0))(
  ( (ListLongMap!2100 (toList!3449 List!49659)) )
))
(declare-fun lm!1616 () ListLongMap!2099)

(declare-datatypes ((Hashable!5125 0))(
  ( (HashableExt!5124 (__x!30828 Int)) )
))
(declare-fun hashF!1220 () Hashable!5125)

(declare-fun allKeysSameHashInMap!837 (ListLongMap!2099 Hashable!5125) Bool)

(assert (=> b!4420507 (= res!1826877 (allKeysSameHashInMap!837 lm!1616 hashF!1220))))

(declare-fun b!4420508 () Bool)

(declare-fun e!2752425 () Bool)

(declare-fun isEmpty!28325 (ListLongMap!2099) Bool)

(assert (=> b!4420508 (= e!2752425 (not (isEmpty!28325 lm!1616)))))

(declare-fun newValue!93 () V!11146)

(declare-fun key!3717 () K!10900)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun e!2752427 () Bool)

(declare-fun b!4420509 () Bool)

(declare-fun apply!11583 (ListLongMap!2099 (_ BitVec 64)) List!49658)

(assert (=> b!4420509 (= e!2752427 (= newBucket!194 (Cons!49534 (tuple2!49303 key!3717 newValue!93) (apply!11583 lm!1616 hash!366))))))

(declare-fun b!4420510 () Bool)

(declare-fun res!1826873 () Bool)

(assert (=> b!4420510 (=> (not res!1826873) (not e!2752429))))

(declare-datatypes ((ListMap!2693 0))(
  ( (ListMap!2694 (toList!3450 List!49658)) )
))
(declare-fun contains!12011 (ListMap!2693 K!10900) Bool)

(declare-fun extractMap!792 (List!49659) ListMap!2693)

(assert (=> b!4420510 (= res!1826873 (not (contains!12011 (extractMap!792 (toList!3449 lm!1616)) key!3717)))))

(declare-fun b!4420511 () Bool)

(assert (=> b!4420511 (= e!2752429 e!2752428)))

(declare-fun res!1826879 () Bool)

(assert (=> b!4420511 (=> (not res!1826879) (not e!2752428))))

(declare-fun e!2752422 () Bool)

(assert (=> b!4420511 (= res!1826879 e!2752422)))

(declare-fun res!1826878 () Bool)

(assert (=> b!4420511 (=> res!1826878 e!2752422)))

(assert (=> b!4420511 (= res!1826878 e!2752427)))

(declare-fun res!1826881 () Bool)

(assert (=> b!4420511 (=> (not res!1826881) (not e!2752427))))

(declare-fun lt!1620781 () Bool)

(assert (=> b!4420511 (= res!1826881 lt!1620781)))

(declare-fun contains!12012 (ListLongMap!2099 (_ BitVec 64)) Bool)

(assert (=> b!4420511 (= lt!1620781 (contains!12012 lm!1616 hash!366))))

(declare-fun b!4420512 () Bool)

(declare-datatypes ((Unit!81302 0))(
  ( (Unit!81303) )
))
(declare-fun e!2752424 () Unit!81302)

(declare-fun Unit!81304 () Unit!81302)

(assert (=> b!4420512 (= e!2752424 Unit!81304)))

(declare-fun e!2752430 () Bool)

(declare-fun tp_is_empty!26169 () Bool)

(declare-fun b!4420513 () Bool)

(declare-fun tp_is_empty!26171 () Bool)

(declare-fun tp!1332954 () Bool)

(assert (=> b!4420513 (= e!2752430 (and tp_is_empty!26171 tp_is_empty!26169 tp!1332954))))

(declare-fun res!1826883 () Bool)

(assert (=> start!430784 (=> (not res!1826883) (not e!2752429))))

(declare-fun lambda!152904 () Int)

(declare-fun forall!9528 (List!49659 Int) Bool)

(assert (=> start!430784 (= res!1826883 (forall!9528 (toList!3449 lm!1616) lambda!152904))))

(assert (=> start!430784 e!2752429))

(assert (=> start!430784 tp_is_empty!26169))

(assert (=> start!430784 tp_is_empty!26171))

(assert (=> start!430784 e!2752430))

(declare-fun inv!65086 (ListLongMap!2099) Bool)

(assert (=> start!430784 (and (inv!65086 lm!1616) e!2752426)))

(assert (=> start!430784 true))

(declare-fun b!4420514 () Bool)

(declare-fun res!1826871 () Bool)

(declare-fun e!2752423 () Bool)

(assert (=> b!4420514 (=> res!1826871 e!2752423)))

(get-info :version)

(assert (=> b!4420514 (= res!1826871 (or (and ((_ is Cons!49535) (toList!3449 lm!1616)) (= (_1!27946 (h!55208 (toList!3449 lm!1616))) hash!366)) (not ((_ is Cons!49535) (toList!3449 lm!1616))) (= (_1!27946 (h!55208 (toList!3449 lm!1616))) hash!366)))))

(declare-fun b!4420515 () Bool)

(declare-fun res!1826872 () Bool)

(assert (=> b!4420515 (=> (not res!1826872) (not e!2752429))))

(declare-fun allKeysSameHash!691 (List!49658 (_ BitVec 64) Hashable!5125) Bool)

(assert (=> b!4420515 (= res!1826872 (allKeysSameHash!691 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4420516 () Bool)

(declare-fun Unit!81305 () Unit!81302)

(assert (=> b!4420516 (= e!2752424 Unit!81305)))

(declare-fun lt!1620775 () Unit!81302)

(declare-fun lemmaExtractTailMapContainsThenExtractMapDoes!18 (ListLongMap!2099 K!10900 Hashable!5125) Unit!81302)

(assert (=> b!4420516 (= lt!1620775 (lemmaExtractTailMapContainsThenExtractMapDoes!18 lm!1616 key!3717 hashF!1220))))

(assert (=> b!4420516 false))

(declare-fun b!4420517 () Bool)

(assert (=> b!4420517 (= e!2752422 (and (not lt!1620781) (= newBucket!194 (Cons!49534 (tuple2!49303 key!3717 newValue!93) Nil!49534))))))

(declare-fun b!4420518 () Bool)

(assert (=> b!4420518 (= e!2752428 (not e!2752423))))

(declare-fun res!1826882 () Bool)

(assert (=> b!4420518 (=> res!1826882 e!2752423)))

(declare-fun lt!1620779 () ListLongMap!2099)

(assert (=> b!4420518 (= res!1826882 (not (forall!9528 (toList!3449 lt!1620779) lambda!152904)))))

(assert (=> b!4420518 (forall!9528 (toList!3449 lt!1620779) lambda!152904)))

(declare-fun lt!1620774 () tuple2!49304)

(declare-fun +!1046 (ListLongMap!2099 tuple2!49304) ListLongMap!2099)

(assert (=> b!4420518 (= lt!1620779 (+!1046 lm!1616 lt!1620774))))

(assert (=> b!4420518 (= lt!1620774 (tuple2!49305 hash!366 newBucket!194))))

(declare-fun lt!1620780 () Unit!81302)

(declare-fun addValidProp!375 (ListLongMap!2099 Int (_ BitVec 64) List!49658) Unit!81302)

(assert (=> b!4420518 (= lt!1620780 (addValidProp!375 lm!1616 lambda!152904 hash!366 newBucket!194))))

(declare-fun b!4420519 () Bool)

(declare-fun res!1826880 () Bool)

(assert (=> b!4420519 (=> (not res!1826880) (not e!2752429))))

(declare-fun hash!2065 (Hashable!5125 K!10900) (_ BitVec 64))

(assert (=> b!4420519 (= res!1826880 (= (hash!2065 hashF!1220 key!3717) hash!366))))

(declare-fun b!4420520 () Bool)

(declare-fun res!1826875 () Bool)

(assert (=> b!4420520 (=> (not res!1826875) (not e!2752428))))

(assert (=> b!4420520 (= res!1826875 (forall!9528 (toList!3449 lm!1616) lambda!152904))))

(declare-fun b!4420521 () Bool)

(assert (=> b!4420521 (= e!2752423 e!2752425)))

(declare-fun res!1826876 () Bool)

(assert (=> b!4420521 (=> res!1826876 e!2752425)))

(declare-fun head!9186 (ListLongMap!2099) tuple2!49304)

(assert (=> b!4420521 (= res!1826876 (= (head!9186 lm!1616) lt!1620774))))

(declare-fun lt!1620777 () ListLongMap!2099)

(declare-fun eq!389 (ListMap!2693 ListMap!2693) Bool)

(declare-fun +!1047 (ListMap!2693 tuple2!49302) ListMap!2693)

(assert (=> b!4420521 (eq!389 (extractMap!792 (toList!3449 (+!1046 lt!1620777 lt!1620774))) (+!1047 (extractMap!792 (toList!3449 lt!1620777)) (tuple2!49303 key!3717 newValue!93)))))

(declare-fun lt!1620778 () Unit!81302)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!105 (ListLongMap!2099 (_ BitVec 64) List!49658 K!10900 V!11146 Hashable!5125) Unit!81302)

(assert (=> b!4420521 (= lt!1620778 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!105 lt!1620777 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(declare-fun tail!7234 (ListLongMap!2099) ListLongMap!2099)

(assert (=> b!4420521 (= lt!1620777 (tail!7234 lm!1616))))

(declare-fun lt!1620776 () Unit!81302)

(assert (=> b!4420521 (= lt!1620776 e!2752424)))

(declare-fun c!752411 () Bool)

(declare-fun tail!7235 (List!49659) List!49659)

(assert (=> b!4420521 (= c!752411 (contains!12011 (extractMap!792 (tail!7235 (toList!3449 lm!1616))) key!3717))))

(assert (= (and start!430784 res!1826883) b!4420507))

(assert (= (and b!4420507 res!1826877) b!4420519))

(assert (= (and b!4420519 res!1826880) b!4420515))

(assert (= (and b!4420515 res!1826872) b!4420510))

(assert (= (and b!4420510 res!1826873) b!4420511))

(assert (= (and b!4420511 res!1826881) b!4420509))

(assert (= (and b!4420511 (not res!1826878)) b!4420517))

(assert (= (and b!4420511 res!1826879) b!4420506))

(assert (= (and b!4420506 res!1826874) b!4420520))

(assert (= (and b!4420520 res!1826875) b!4420518))

(assert (= (and b!4420518 (not res!1826882)) b!4420514))

(assert (= (and b!4420514 (not res!1826871)) b!4420521))

(assert (= (and b!4420521 c!752411) b!4420516))

(assert (= (and b!4420521 (not c!752411)) b!4420512))

(assert (= (and b!4420521 (not res!1826876)) b!4420508))

(assert (= (and start!430784 ((_ is Cons!49534) newBucket!194)) b!4420513))

(assert (= start!430784 b!4420505))

(declare-fun m!5097727 () Bool)

(assert (=> start!430784 m!5097727))

(declare-fun m!5097729 () Bool)

(assert (=> start!430784 m!5097729))

(assert (=> b!4420520 m!5097727))

(declare-fun m!5097731 () Bool)

(assert (=> b!4420519 m!5097731))

(declare-fun m!5097733 () Bool)

(assert (=> b!4420515 m!5097733))

(declare-fun m!5097735 () Bool)

(assert (=> b!4420506 m!5097735))

(declare-fun m!5097737 () Bool)

(assert (=> b!4420509 m!5097737))

(declare-fun m!5097739 () Bool)

(assert (=> b!4420510 m!5097739))

(assert (=> b!4420510 m!5097739))

(declare-fun m!5097741 () Bool)

(assert (=> b!4420510 m!5097741))

(declare-fun m!5097743 () Bool)

(assert (=> b!4420521 m!5097743))

(declare-fun m!5097745 () Bool)

(assert (=> b!4420521 m!5097745))

(declare-fun m!5097747 () Bool)

(assert (=> b!4420521 m!5097747))

(declare-fun m!5097749 () Bool)

(assert (=> b!4420521 m!5097749))

(declare-fun m!5097751 () Bool)

(assert (=> b!4420521 m!5097751))

(assert (=> b!4420521 m!5097743))

(assert (=> b!4420521 m!5097747))

(declare-fun m!5097753 () Bool)

(assert (=> b!4420521 m!5097753))

(declare-fun m!5097755 () Bool)

(assert (=> b!4420521 m!5097755))

(declare-fun m!5097757 () Bool)

(assert (=> b!4420521 m!5097757))

(assert (=> b!4420521 m!5097745))

(declare-fun m!5097759 () Bool)

(assert (=> b!4420521 m!5097759))

(declare-fun m!5097761 () Bool)

(assert (=> b!4420521 m!5097761))

(assert (=> b!4420521 m!5097761))

(assert (=> b!4420521 m!5097753))

(declare-fun m!5097763 () Bool)

(assert (=> b!4420521 m!5097763))

(declare-fun m!5097765 () Bool)

(assert (=> b!4420518 m!5097765))

(assert (=> b!4420518 m!5097765))

(declare-fun m!5097767 () Bool)

(assert (=> b!4420518 m!5097767))

(declare-fun m!5097769 () Bool)

(assert (=> b!4420518 m!5097769))

(declare-fun m!5097771 () Bool)

(assert (=> b!4420511 m!5097771))

(declare-fun m!5097773 () Bool)

(assert (=> b!4420516 m!5097773))

(declare-fun m!5097775 () Bool)

(assert (=> b!4420507 m!5097775))

(declare-fun m!5097777 () Bool)

(assert (=> b!4420508 m!5097777))

(check-sat (not b!4420519) (not b!4420513) (not b!4420515) (not b!4420508) (not b!4420516) (not b!4420518) (not b!4420520) tp_is_empty!26171 (not b!4420510) (not b!4420511) (not b!4420509) (not b!4420506) tp_is_empty!26169 (not b!4420507) (not b!4420521) (not b!4420505) (not start!430784))
(check-sat)
(get-model)

(declare-fun b!4420554 () Bool)

(declare-fun e!2752453 () Bool)

(declare-fun e!2752457 () Bool)

(assert (=> b!4420554 (= e!2752453 e!2752457)))

(declare-fun res!1826900 () Bool)

(assert (=> b!4420554 (=> (not res!1826900) (not e!2752457))))

(declare-datatypes ((Option!10701 0))(
  ( (None!10700) (Some!10700 (v!43870 V!11146)) )
))
(declare-fun isDefined!7994 (Option!10701) Bool)

(declare-fun getValueByKey!687 (List!49658 K!10900) Option!10701)

(assert (=> b!4420554 (= res!1826900 (isDefined!7994 (getValueByKey!687 (toList!3450 (extractMap!792 (toList!3449 lm!1616))) key!3717)))))

(declare-fun b!4420555 () Bool)

(assert (=> b!4420555 false))

(declare-fun lt!1620811 () Unit!81302)

(declare-fun lt!1620815 () Unit!81302)

(assert (=> b!4420555 (= lt!1620811 lt!1620815)))

(declare-fun containsKey!1077 (List!49658 K!10900) Bool)

(assert (=> b!4420555 (containsKey!1077 (toList!3450 (extractMap!792 (toList!3449 lm!1616))) key!3717)))

(declare-fun lemmaInGetKeysListThenContainsKey!239 (List!49658 K!10900) Unit!81302)

(assert (=> b!4420555 (= lt!1620815 (lemmaInGetKeysListThenContainsKey!239 (toList!3450 (extractMap!792 (toList!3449 lm!1616))) key!3717))))

(declare-fun e!2752454 () Unit!81302)

(declare-fun Unit!81311 () Unit!81302)

(assert (=> b!4420555 (= e!2752454 Unit!81311)))

(declare-fun b!4420557 () Bool)

(declare-fun e!2752458 () Bool)

(declare-datatypes ((List!49661 0))(
  ( (Nil!49537) (Cons!49537 (h!55212 K!10900) (t!356599 List!49661)) )
))
(declare-fun contains!12014 (List!49661 K!10900) Bool)

(declare-fun keys!16899 (ListMap!2693) List!49661)

(assert (=> b!4420557 (= e!2752458 (not (contains!12014 (keys!16899 (extractMap!792 (toList!3449 lm!1616))) key!3717)))))

(declare-fun b!4420558 () Bool)

(declare-fun e!2752455 () List!49661)

(assert (=> b!4420558 (= e!2752455 (keys!16899 (extractMap!792 (toList!3449 lm!1616))))))

(declare-fun b!4420559 () Bool)

(declare-fun e!2752456 () Unit!81302)

(declare-fun lt!1620813 () Unit!81302)

(assert (=> b!4420559 (= e!2752456 lt!1620813)))

(declare-fun lt!1620814 () Unit!81302)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!597 (List!49658 K!10900) Unit!81302)

(assert (=> b!4420559 (= lt!1620814 (lemmaContainsKeyImpliesGetValueByKeyDefined!597 (toList!3450 (extractMap!792 (toList!3449 lm!1616))) key!3717))))

(assert (=> b!4420559 (isDefined!7994 (getValueByKey!687 (toList!3450 (extractMap!792 (toList!3449 lm!1616))) key!3717))))

(declare-fun lt!1620809 () Unit!81302)

(assert (=> b!4420559 (= lt!1620809 lt!1620814)))

(declare-fun lemmaInListThenGetKeysListContains!238 (List!49658 K!10900) Unit!81302)

(assert (=> b!4420559 (= lt!1620813 (lemmaInListThenGetKeysListContains!238 (toList!3450 (extractMap!792 (toList!3449 lm!1616))) key!3717))))

(declare-fun call!307541 () Bool)

(assert (=> b!4420559 call!307541))

(declare-fun b!4420560 () Bool)

(assert (=> b!4420560 (= e!2752456 e!2752454)))

(declare-fun c!752422 () Bool)

(assert (=> b!4420560 (= c!752422 call!307541)))

(declare-fun bm!307536 () Bool)

(assert (=> bm!307536 (= call!307541 (contains!12014 e!2752455 key!3717))))

(declare-fun c!752421 () Bool)

(declare-fun c!752420 () Bool)

(assert (=> bm!307536 (= c!752421 c!752420)))

(declare-fun b!4420561 () Bool)

(declare-fun getKeysList!241 (List!49658) List!49661)

(assert (=> b!4420561 (= e!2752455 (getKeysList!241 (toList!3450 (extractMap!792 (toList!3449 lm!1616)))))))

(declare-fun b!4420562 () Bool)

(assert (=> b!4420562 (= e!2752457 (contains!12014 (keys!16899 (extractMap!792 (toList!3449 lm!1616))) key!3717))))

(declare-fun b!4420556 () Bool)

(declare-fun Unit!81312 () Unit!81302)

(assert (=> b!4420556 (= e!2752454 Unit!81312)))

(declare-fun d!1339270 () Bool)

(assert (=> d!1339270 e!2752453))

(declare-fun res!1826898 () Bool)

(assert (=> d!1339270 (=> res!1826898 e!2752453)))

(assert (=> d!1339270 (= res!1826898 e!2752458)))

(declare-fun res!1826899 () Bool)

(assert (=> d!1339270 (=> (not res!1826899) (not e!2752458))))

(declare-fun lt!1620812 () Bool)

(assert (=> d!1339270 (= res!1826899 (not lt!1620812))))

(declare-fun lt!1620810 () Bool)

(assert (=> d!1339270 (= lt!1620812 lt!1620810)))

(declare-fun lt!1620816 () Unit!81302)

(assert (=> d!1339270 (= lt!1620816 e!2752456)))

(assert (=> d!1339270 (= c!752420 lt!1620810)))

(assert (=> d!1339270 (= lt!1620810 (containsKey!1077 (toList!3450 (extractMap!792 (toList!3449 lm!1616))) key!3717))))

(assert (=> d!1339270 (= (contains!12011 (extractMap!792 (toList!3449 lm!1616)) key!3717) lt!1620812)))

(assert (= (and d!1339270 c!752420) b!4420559))

(assert (= (and d!1339270 (not c!752420)) b!4420560))

(assert (= (and b!4420560 c!752422) b!4420555))

(assert (= (and b!4420560 (not c!752422)) b!4420556))

(assert (= (or b!4420559 b!4420560) bm!307536))

(assert (= (and bm!307536 c!752421) b!4420561))

(assert (= (and bm!307536 (not c!752421)) b!4420558))

(assert (= (and d!1339270 res!1826899) b!4420557))

(assert (= (and d!1339270 (not res!1826898)) b!4420554))

(assert (= (and b!4420554 res!1826900) b!4420562))

(declare-fun m!5097799 () Bool)

(assert (=> b!4420554 m!5097799))

(assert (=> b!4420554 m!5097799))

(declare-fun m!5097801 () Bool)

(assert (=> b!4420554 m!5097801))

(assert (=> b!4420558 m!5097739))

(declare-fun m!5097803 () Bool)

(assert (=> b!4420558 m!5097803))

(declare-fun m!5097805 () Bool)

(assert (=> b!4420555 m!5097805))

(declare-fun m!5097807 () Bool)

(assert (=> b!4420555 m!5097807))

(assert (=> b!4420557 m!5097739))

(assert (=> b!4420557 m!5097803))

(assert (=> b!4420557 m!5097803))

(declare-fun m!5097809 () Bool)

(assert (=> b!4420557 m!5097809))

(declare-fun m!5097811 () Bool)

(assert (=> b!4420559 m!5097811))

(assert (=> b!4420559 m!5097799))

(assert (=> b!4420559 m!5097799))

(assert (=> b!4420559 m!5097801))

(declare-fun m!5097813 () Bool)

(assert (=> b!4420559 m!5097813))

(declare-fun m!5097815 () Bool)

(assert (=> bm!307536 m!5097815))

(assert (=> b!4420562 m!5097739))

(assert (=> b!4420562 m!5097803))

(assert (=> b!4420562 m!5097803))

(assert (=> b!4420562 m!5097809))

(declare-fun m!5097817 () Bool)

(assert (=> b!4420561 m!5097817))

(assert (=> d!1339270 m!5097805))

(assert (=> b!4420510 d!1339270))

(declare-fun bs!754591 () Bool)

(declare-fun d!1339284 () Bool)

(assert (= bs!754591 (and d!1339284 start!430784)))

(declare-fun lambda!152916 () Int)

(assert (=> bs!754591 (= lambda!152916 lambda!152904)))

(declare-fun lt!1620849 () ListMap!2693)

(declare-fun invariantList!793 (List!49658) Bool)

(assert (=> d!1339284 (invariantList!793 (toList!3450 lt!1620849))))

(declare-fun e!2752483 () ListMap!2693)

(assert (=> d!1339284 (= lt!1620849 e!2752483)))

(declare-fun c!752437 () Bool)

(assert (=> d!1339284 (= c!752437 ((_ is Cons!49535) (toList!3449 lm!1616)))))

(assert (=> d!1339284 (forall!9528 (toList!3449 lm!1616) lambda!152916)))

(assert (=> d!1339284 (= (extractMap!792 (toList!3449 lm!1616)) lt!1620849)))

(declare-fun b!4420601 () Bool)

(declare-fun addToMapMapFromBucket!368 (List!49658 ListMap!2693) ListMap!2693)

(assert (=> b!4420601 (= e!2752483 (addToMapMapFromBucket!368 (_2!27946 (h!55208 (toList!3449 lm!1616))) (extractMap!792 (t!356597 (toList!3449 lm!1616)))))))

(declare-fun b!4420602 () Bool)

(assert (=> b!4420602 (= e!2752483 (ListMap!2694 Nil!49534))))

(assert (= (and d!1339284 c!752437) b!4420601))

(assert (= (and d!1339284 (not c!752437)) b!4420602))

(declare-fun m!5097847 () Bool)

(assert (=> d!1339284 m!5097847))

(declare-fun m!5097849 () Bool)

(assert (=> d!1339284 m!5097849))

(declare-fun m!5097851 () Bool)

(assert (=> b!4420601 m!5097851))

(assert (=> b!4420601 m!5097851))

(declare-fun m!5097853 () Bool)

(assert (=> b!4420601 m!5097853))

(assert (=> b!4420510 d!1339284))

(declare-fun d!1339290 () Bool)

(declare-fun e!2752489 () Bool)

(assert (=> d!1339290 e!2752489))

(declare-fun res!1826916 () Bool)

(assert (=> d!1339290 (=> (not res!1826916) (not e!2752489))))

(declare-fun lt!1620864 () ListLongMap!2099)

(assert (=> d!1339290 (= res!1826916 (contains!12012 lt!1620864 (_1!27946 lt!1620774)))))

(declare-fun lt!1620865 () List!49659)

(assert (=> d!1339290 (= lt!1620864 (ListLongMap!2100 lt!1620865))))

(declare-fun lt!1620866 () Unit!81302)

(declare-fun lt!1620863 () Unit!81302)

(assert (=> d!1339290 (= lt!1620866 lt!1620863)))

(declare-datatypes ((Option!10702 0))(
  ( (None!10701) (Some!10701 (v!43871 List!49658)) )
))
(declare-fun getValueByKey!688 (List!49659 (_ BitVec 64)) Option!10702)

(assert (=> d!1339290 (= (getValueByKey!688 lt!1620865 (_1!27946 lt!1620774)) (Some!10701 (_2!27946 lt!1620774)))))

(declare-fun lemmaContainsTupThenGetReturnValue!422 (List!49659 (_ BitVec 64) List!49658) Unit!81302)

(assert (=> d!1339290 (= lt!1620863 (lemmaContainsTupThenGetReturnValue!422 lt!1620865 (_1!27946 lt!1620774) (_2!27946 lt!1620774)))))

(declare-fun insertStrictlySorted!248 (List!49659 (_ BitVec 64) List!49658) List!49659)

(assert (=> d!1339290 (= lt!1620865 (insertStrictlySorted!248 (toList!3449 lt!1620777) (_1!27946 lt!1620774) (_2!27946 lt!1620774)))))

(assert (=> d!1339290 (= (+!1046 lt!1620777 lt!1620774) lt!1620864)))

(declare-fun b!4420613 () Bool)

(declare-fun res!1826915 () Bool)

(assert (=> b!4420613 (=> (not res!1826915) (not e!2752489))))

(assert (=> b!4420613 (= res!1826915 (= (getValueByKey!688 (toList!3449 lt!1620864) (_1!27946 lt!1620774)) (Some!10701 (_2!27946 lt!1620774))))))

(declare-fun b!4420614 () Bool)

(declare-fun contains!12017 (List!49659 tuple2!49304) Bool)

(assert (=> b!4420614 (= e!2752489 (contains!12017 (toList!3449 lt!1620864) lt!1620774))))

(assert (= (and d!1339290 res!1826916) b!4420613))

(assert (= (and b!4420613 res!1826915) b!4420614))

(declare-fun m!5097881 () Bool)

(assert (=> d!1339290 m!5097881))

(declare-fun m!5097883 () Bool)

(assert (=> d!1339290 m!5097883))

(declare-fun m!5097885 () Bool)

(assert (=> d!1339290 m!5097885))

(declare-fun m!5097887 () Bool)

(assert (=> d!1339290 m!5097887))

(declare-fun m!5097889 () Bool)

(assert (=> b!4420613 m!5097889))

(declare-fun m!5097891 () Bool)

(assert (=> b!4420614 m!5097891))

(assert (=> b!4420521 d!1339290))

(declare-fun d!1339304 () Bool)

(declare-fun head!9188 (List!49659) tuple2!49304)

(assert (=> d!1339304 (= (head!9186 lm!1616) (head!9188 (toList!3449 lm!1616)))))

(declare-fun bs!754613 () Bool)

(assert (= bs!754613 d!1339304))

(declare-fun m!5097903 () Bool)

(assert (=> bs!754613 m!5097903))

(assert (=> b!4420521 d!1339304))

(declare-fun d!1339310 () Bool)

(declare-fun e!2752508 () Bool)

(assert (=> d!1339310 e!2752508))

(declare-fun res!1826940 () Bool)

(assert (=> d!1339310 (=> (not res!1826940) (not e!2752508))))

(declare-fun lt!1620915 () ListMap!2693)

(assert (=> d!1339310 (= res!1826940 (contains!12011 lt!1620915 (_1!27945 (tuple2!49303 key!3717 newValue!93))))))

(declare-fun lt!1620916 () List!49658)

(assert (=> d!1339310 (= lt!1620915 (ListMap!2694 lt!1620916))))

(declare-fun lt!1620913 () Unit!81302)

(declare-fun lt!1620914 () Unit!81302)

(assert (=> d!1339310 (= lt!1620913 lt!1620914)))

(assert (=> d!1339310 (= (getValueByKey!687 lt!1620916 (_1!27945 (tuple2!49303 key!3717 newValue!93))) (Some!10700 (_2!27945 (tuple2!49303 key!3717 newValue!93))))))

(declare-fun lemmaContainsTupThenGetReturnValue!423 (List!49658 K!10900 V!11146) Unit!81302)

(assert (=> d!1339310 (= lt!1620914 (lemmaContainsTupThenGetReturnValue!423 lt!1620916 (_1!27945 (tuple2!49303 key!3717 newValue!93)) (_2!27945 (tuple2!49303 key!3717 newValue!93))))))

(declare-fun insertNoDuplicatedKeys!183 (List!49658 K!10900 V!11146) List!49658)

(assert (=> d!1339310 (= lt!1620916 (insertNoDuplicatedKeys!183 (toList!3450 (extractMap!792 (toList!3449 lt!1620777))) (_1!27945 (tuple2!49303 key!3717 newValue!93)) (_2!27945 (tuple2!49303 key!3717 newValue!93))))))

(assert (=> d!1339310 (= (+!1047 (extractMap!792 (toList!3449 lt!1620777)) (tuple2!49303 key!3717 newValue!93)) lt!1620915)))

(declare-fun b!4420646 () Bool)

(declare-fun res!1826941 () Bool)

(assert (=> b!4420646 (=> (not res!1826941) (not e!2752508))))

(assert (=> b!4420646 (= res!1826941 (= (getValueByKey!687 (toList!3450 lt!1620915) (_1!27945 (tuple2!49303 key!3717 newValue!93))) (Some!10700 (_2!27945 (tuple2!49303 key!3717 newValue!93)))))))

(declare-fun b!4420647 () Bool)

(declare-fun contains!12018 (List!49658 tuple2!49302) Bool)

(assert (=> b!4420647 (= e!2752508 (contains!12018 (toList!3450 lt!1620915) (tuple2!49303 key!3717 newValue!93)))))

(assert (= (and d!1339310 res!1826940) b!4420646))

(assert (= (and b!4420646 res!1826941) b!4420647))

(declare-fun m!5097973 () Bool)

(assert (=> d!1339310 m!5097973))

(declare-fun m!5097975 () Bool)

(assert (=> d!1339310 m!5097975))

(declare-fun m!5097977 () Bool)

(assert (=> d!1339310 m!5097977))

(declare-fun m!5097979 () Bool)

(assert (=> d!1339310 m!5097979))

(declare-fun m!5097981 () Bool)

(assert (=> b!4420646 m!5097981))

(declare-fun m!5097983 () Bool)

(assert (=> b!4420647 m!5097983))

(assert (=> b!4420521 d!1339310))

(declare-fun d!1339326 () Bool)

(assert (=> d!1339326 (= (tail!7234 lm!1616) (ListLongMap!2100 (tail!7235 (toList!3449 lm!1616))))))

(declare-fun bs!754622 () Bool)

(assert (= bs!754622 d!1339326))

(assert (=> bs!754622 m!5097743))

(assert (=> b!4420521 d!1339326))

(declare-fun bs!754623 () Bool)

(declare-fun d!1339328 () Bool)

(assert (= bs!754623 (and d!1339328 start!430784)))

(declare-fun lambda!152923 () Int)

(assert (=> bs!754623 (= lambda!152923 lambda!152904)))

(declare-fun bs!754624 () Bool)

(assert (= bs!754624 (and d!1339328 d!1339284)))

(assert (=> bs!754624 (= lambda!152923 lambda!152916)))

(declare-fun lt!1620917 () ListMap!2693)

(assert (=> d!1339328 (invariantList!793 (toList!3450 lt!1620917))))

(declare-fun e!2752509 () ListMap!2693)

(assert (=> d!1339328 (= lt!1620917 e!2752509)))

(declare-fun c!752445 () Bool)

(assert (=> d!1339328 (= c!752445 ((_ is Cons!49535) (tail!7235 (toList!3449 lm!1616))))))

(assert (=> d!1339328 (forall!9528 (tail!7235 (toList!3449 lm!1616)) lambda!152923)))

(assert (=> d!1339328 (= (extractMap!792 (tail!7235 (toList!3449 lm!1616))) lt!1620917)))

(declare-fun b!4420648 () Bool)

(assert (=> b!4420648 (= e!2752509 (addToMapMapFromBucket!368 (_2!27946 (h!55208 (tail!7235 (toList!3449 lm!1616)))) (extractMap!792 (t!356597 (tail!7235 (toList!3449 lm!1616))))))))

(declare-fun b!4420649 () Bool)

(assert (=> b!4420649 (= e!2752509 (ListMap!2694 Nil!49534))))

(assert (= (and d!1339328 c!752445) b!4420648))

(assert (= (and d!1339328 (not c!752445)) b!4420649))

(declare-fun m!5097985 () Bool)

(assert (=> d!1339328 m!5097985))

(assert (=> d!1339328 m!5097743))

(declare-fun m!5097987 () Bool)

(assert (=> d!1339328 m!5097987))

(declare-fun m!5097989 () Bool)

(assert (=> b!4420648 m!5097989))

(assert (=> b!4420648 m!5097989))

(declare-fun m!5097991 () Bool)

(assert (=> b!4420648 m!5097991))

(assert (=> b!4420521 d!1339328))

(declare-fun bs!754625 () Bool)

(declare-fun d!1339330 () Bool)

(assert (= bs!754625 (and d!1339330 start!430784)))

(declare-fun lambda!152924 () Int)

(assert (=> bs!754625 (= lambda!152924 lambda!152904)))

(declare-fun bs!754626 () Bool)

(assert (= bs!754626 (and d!1339330 d!1339284)))

(assert (=> bs!754626 (= lambda!152924 lambda!152916)))

(declare-fun bs!754627 () Bool)

(assert (= bs!754627 (and d!1339330 d!1339328)))

(assert (=> bs!754627 (= lambda!152924 lambda!152923)))

(declare-fun lt!1620918 () ListMap!2693)

(assert (=> d!1339330 (invariantList!793 (toList!3450 lt!1620918))))

(declare-fun e!2752510 () ListMap!2693)

(assert (=> d!1339330 (= lt!1620918 e!2752510)))

(declare-fun c!752446 () Bool)

(assert (=> d!1339330 (= c!752446 ((_ is Cons!49535) (toList!3449 lt!1620777)))))

(assert (=> d!1339330 (forall!9528 (toList!3449 lt!1620777) lambda!152924)))

(assert (=> d!1339330 (= (extractMap!792 (toList!3449 lt!1620777)) lt!1620918)))

(declare-fun b!4420650 () Bool)

(assert (=> b!4420650 (= e!2752510 (addToMapMapFromBucket!368 (_2!27946 (h!55208 (toList!3449 lt!1620777))) (extractMap!792 (t!356597 (toList!3449 lt!1620777)))))))

(declare-fun b!4420651 () Bool)

(assert (=> b!4420651 (= e!2752510 (ListMap!2694 Nil!49534))))

(assert (= (and d!1339330 c!752446) b!4420650))

(assert (= (and d!1339330 (not c!752446)) b!4420651))

(declare-fun m!5097993 () Bool)

(assert (=> d!1339330 m!5097993))

(declare-fun m!5097995 () Bool)

(assert (=> d!1339330 m!5097995))

(declare-fun m!5097997 () Bool)

(assert (=> b!4420650 m!5097997))

(assert (=> b!4420650 m!5097997))

(declare-fun m!5097999 () Bool)

(assert (=> b!4420650 m!5097999))

(assert (=> b!4420521 d!1339330))

(declare-fun bs!754633 () Bool)

(declare-fun d!1339332 () Bool)

(assert (= bs!754633 (and d!1339332 start!430784)))

(declare-fun lambda!152930 () Int)

(assert (=> bs!754633 (= lambda!152930 lambda!152904)))

(declare-fun bs!754634 () Bool)

(assert (= bs!754634 (and d!1339332 d!1339284)))

(assert (=> bs!754634 (= lambda!152930 lambda!152916)))

(declare-fun bs!754635 () Bool)

(assert (= bs!754635 (and d!1339332 d!1339328)))

(assert (=> bs!754635 (= lambda!152930 lambda!152923)))

(declare-fun bs!754636 () Bool)

(assert (= bs!754636 (and d!1339332 d!1339330)))

(assert (=> bs!754636 (= lambda!152930 lambda!152924)))

(assert (=> d!1339332 (eq!389 (extractMap!792 (toList!3449 (+!1046 lt!1620777 (tuple2!49305 hash!366 newBucket!194)))) (+!1047 (extractMap!792 (toList!3449 lt!1620777)) (tuple2!49303 key!3717 newValue!93)))))

(declare-fun lt!1620924 () Unit!81302)

(declare-fun choose!27849 (ListLongMap!2099 (_ BitVec 64) List!49658 K!10900 V!11146 Hashable!5125) Unit!81302)

(assert (=> d!1339332 (= lt!1620924 (choose!27849 lt!1620777 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(assert (=> d!1339332 (forall!9528 (toList!3449 lt!1620777) lambda!152930)))

(assert (=> d!1339332 (= (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!105 lt!1620777 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220) lt!1620924)))

(declare-fun bs!754637 () Bool)

(assert (= bs!754637 d!1339332))

(declare-fun m!5098023 () Bool)

(assert (=> bs!754637 m!5098023))

(declare-fun m!5098025 () Bool)

(assert (=> bs!754637 m!5098025))

(assert (=> bs!754637 m!5098023))

(assert (=> bs!754637 m!5097753))

(declare-fun m!5098027 () Bool)

(assert (=> bs!754637 m!5098027))

(assert (=> bs!754637 m!5097761))

(declare-fun m!5098029 () Bool)

(assert (=> bs!754637 m!5098029))

(assert (=> bs!754637 m!5097761))

(assert (=> bs!754637 m!5097753))

(declare-fun m!5098031 () Bool)

(assert (=> bs!754637 m!5098031))

(assert (=> b!4420521 d!1339332))

(declare-fun d!1339346 () Bool)

(assert (=> d!1339346 (= (tail!7235 (toList!3449 lm!1616)) (t!356597 (toList!3449 lm!1616)))))

(assert (=> b!4420521 d!1339346))

(declare-fun b!4420676 () Bool)

(declare-fun e!2752526 () Bool)

(declare-fun e!2752530 () Bool)

(assert (=> b!4420676 (= e!2752526 e!2752530)))

(declare-fun res!1826953 () Bool)

(assert (=> b!4420676 (=> (not res!1826953) (not e!2752530))))

(assert (=> b!4420676 (= res!1826953 (isDefined!7994 (getValueByKey!687 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))) key!3717)))))

(declare-fun b!4420677 () Bool)

(assert (=> b!4420677 false))

(declare-fun lt!1620927 () Unit!81302)

(declare-fun lt!1620931 () Unit!81302)

(assert (=> b!4420677 (= lt!1620927 lt!1620931)))

(assert (=> b!4420677 (containsKey!1077 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))) key!3717)))

(assert (=> b!4420677 (= lt!1620931 (lemmaInGetKeysListThenContainsKey!239 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))) key!3717))))

(declare-fun e!2752527 () Unit!81302)

(declare-fun Unit!81313 () Unit!81302)

(assert (=> b!4420677 (= e!2752527 Unit!81313)))

(declare-fun b!4420679 () Bool)

(declare-fun e!2752531 () Bool)

(assert (=> b!4420679 (= e!2752531 (not (contains!12014 (keys!16899 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))) key!3717)))))

(declare-fun b!4420680 () Bool)

(declare-fun e!2752528 () List!49661)

(assert (=> b!4420680 (= e!2752528 (keys!16899 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))))))

(declare-fun b!4420681 () Bool)

(declare-fun e!2752529 () Unit!81302)

(declare-fun lt!1620929 () Unit!81302)

(assert (=> b!4420681 (= e!2752529 lt!1620929)))

(declare-fun lt!1620930 () Unit!81302)

(assert (=> b!4420681 (= lt!1620930 (lemmaContainsKeyImpliesGetValueByKeyDefined!597 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))) key!3717))))

(assert (=> b!4420681 (isDefined!7994 (getValueByKey!687 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))) key!3717))))

(declare-fun lt!1620925 () Unit!81302)

(assert (=> b!4420681 (= lt!1620925 lt!1620930)))

(assert (=> b!4420681 (= lt!1620929 (lemmaInListThenGetKeysListContains!238 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))) key!3717))))

(declare-fun call!307546 () Bool)

(assert (=> b!4420681 call!307546))

(declare-fun b!4420682 () Bool)

(assert (=> b!4420682 (= e!2752529 e!2752527)))

(declare-fun c!752449 () Bool)

(assert (=> b!4420682 (= c!752449 call!307546)))

(declare-fun bm!307541 () Bool)

(assert (=> bm!307541 (= call!307546 (contains!12014 e!2752528 key!3717))))

(declare-fun c!752448 () Bool)

(declare-fun c!752447 () Bool)

(assert (=> bm!307541 (= c!752448 c!752447)))

(declare-fun b!4420683 () Bool)

(assert (=> b!4420683 (= e!2752528 (getKeysList!241 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616))))))))

(declare-fun b!4420684 () Bool)

(assert (=> b!4420684 (= e!2752530 (contains!12014 (keys!16899 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))) key!3717))))

(declare-fun b!4420678 () Bool)

(declare-fun Unit!81314 () Unit!81302)

(assert (=> b!4420678 (= e!2752527 Unit!81314)))

(declare-fun d!1339348 () Bool)

(assert (=> d!1339348 e!2752526))

(declare-fun res!1826951 () Bool)

(assert (=> d!1339348 (=> res!1826951 e!2752526)))

(assert (=> d!1339348 (= res!1826951 e!2752531)))

(declare-fun res!1826952 () Bool)

(assert (=> d!1339348 (=> (not res!1826952) (not e!2752531))))

(declare-fun lt!1620928 () Bool)

(assert (=> d!1339348 (= res!1826952 (not lt!1620928))))

(declare-fun lt!1620926 () Bool)

(assert (=> d!1339348 (= lt!1620928 lt!1620926)))

(declare-fun lt!1620932 () Unit!81302)

(assert (=> d!1339348 (= lt!1620932 e!2752529)))

(assert (=> d!1339348 (= c!752447 lt!1620926)))

(assert (=> d!1339348 (= lt!1620926 (containsKey!1077 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))) key!3717))))

(assert (=> d!1339348 (= (contains!12011 (extractMap!792 (tail!7235 (toList!3449 lm!1616))) key!3717) lt!1620928)))

(assert (= (and d!1339348 c!752447) b!4420681))

(assert (= (and d!1339348 (not c!752447)) b!4420682))

(assert (= (and b!4420682 c!752449) b!4420677))

(assert (= (and b!4420682 (not c!752449)) b!4420678))

(assert (= (or b!4420681 b!4420682) bm!307541))

(assert (= (and bm!307541 c!752448) b!4420683))

(assert (= (and bm!307541 (not c!752448)) b!4420680))

(assert (= (and d!1339348 res!1826952) b!4420679))

(assert (= (and d!1339348 (not res!1826951)) b!4420676))

(assert (= (and b!4420676 res!1826953) b!4420684))

(declare-fun m!5098033 () Bool)

(assert (=> b!4420676 m!5098033))

(assert (=> b!4420676 m!5098033))

(declare-fun m!5098035 () Bool)

(assert (=> b!4420676 m!5098035))

(assert (=> b!4420680 m!5097745))

(declare-fun m!5098037 () Bool)

(assert (=> b!4420680 m!5098037))

(declare-fun m!5098039 () Bool)

(assert (=> b!4420677 m!5098039))

(declare-fun m!5098041 () Bool)

(assert (=> b!4420677 m!5098041))

(assert (=> b!4420679 m!5097745))

(assert (=> b!4420679 m!5098037))

(assert (=> b!4420679 m!5098037))

(declare-fun m!5098043 () Bool)

(assert (=> b!4420679 m!5098043))

(declare-fun m!5098045 () Bool)

(assert (=> b!4420681 m!5098045))

(assert (=> b!4420681 m!5098033))

(assert (=> b!4420681 m!5098033))

(assert (=> b!4420681 m!5098035))

(declare-fun m!5098047 () Bool)

(assert (=> b!4420681 m!5098047))

(declare-fun m!5098049 () Bool)

(assert (=> bm!307541 m!5098049))

(assert (=> b!4420684 m!5097745))

(assert (=> b!4420684 m!5098037))

(assert (=> b!4420684 m!5098037))

(assert (=> b!4420684 m!5098043))

(declare-fun m!5098051 () Bool)

(assert (=> b!4420683 m!5098051))

(assert (=> d!1339348 m!5098039))

(assert (=> b!4420521 d!1339348))

(declare-fun bs!754638 () Bool)

(declare-fun d!1339350 () Bool)

(assert (= bs!754638 (and d!1339350 start!430784)))

(declare-fun lambda!152931 () Int)

(assert (=> bs!754638 (= lambda!152931 lambda!152904)))

(declare-fun bs!754639 () Bool)

(assert (= bs!754639 (and d!1339350 d!1339284)))

(assert (=> bs!754639 (= lambda!152931 lambda!152916)))

(declare-fun bs!754640 () Bool)

(assert (= bs!754640 (and d!1339350 d!1339330)))

(assert (=> bs!754640 (= lambda!152931 lambda!152924)))

(declare-fun bs!754641 () Bool)

(assert (= bs!754641 (and d!1339350 d!1339332)))

(assert (=> bs!754641 (= lambda!152931 lambda!152930)))

(declare-fun bs!754642 () Bool)

(assert (= bs!754642 (and d!1339350 d!1339328)))

(assert (=> bs!754642 (= lambda!152931 lambda!152923)))

(declare-fun lt!1620933 () ListMap!2693)

(assert (=> d!1339350 (invariantList!793 (toList!3450 lt!1620933))))

(declare-fun e!2752532 () ListMap!2693)

(assert (=> d!1339350 (= lt!1620933 e!2752532)))

(declare-fun c!752450 () Bool)

(assert (=> d!1339350 (= c!752450 ((_ is Cons!49535) (toList!3449 (+!1046 lt!1620777 lt!1620774))))))

(assert (=> d!1339350 (forall!9528 (toList!3449 (+!1046 lt!1620777 lt!1620774)) lambda!152931)))

(assert (=> d!1339350 (= (extractMap!792 (toList!3449 (+!1046 lt!1620777 lt!1620774))) lt!1620933)))

(declare-fun b!4420685 () Bool)

(assert (=> b!4420685 (= e!2752532 (addToMapMapFromBucket!368 (_2!27946 (h!55208 (toList!3449 (+!1046 lt!1620777 lt!1620774)))) (extractMap!792 (t!356597 (toList!3449 (+!1046 lt!1620777 lt!1620774))))))))

(declare-fun b!4420686 () Bool)

(assert (=> b!4420686 (= e!2752532 (ListMap!2694 Nil!49534))))

(assert (= (and d!1339350 c!752450) b!4420685))

(assert (= (and d!1339350 (not c!752450)) b!4420686))

(declare-fun m!5098053 () Bool)

(assert (=> d!1339350 m!5098053))

(declare-fun m!5098055 () Bool)

(assert (=> d!1339350 m!5098055))

(declare-fun m!5098057 () Bool)

(assert (=> b!4420685 m!5098057))

(assert (=> b!4420685 m!5098057))

(declare-fun m!5098059 () Bool)

(assert (=> b!4420685 m!5098059))

(assert (=> b!4420521 d!1339350))

(declare-fun d!1339352 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7934 (List!49658) (InoxSet tuple2!49302))

(assert (=> d!1339352 (= (eq!389 (extractMap!792 (toList!3449 (+!1046 lt!1620777 lt!1620774))) (+!1047 (extractMap!792 (toList!3449 lt!1620777)) (tuple2!49303 key!3717 newValue!93))) (= (content!7934 (toList!3450 (extractMap!792 (toList!3449 (+!1046 lt!1620777 lt!1620774))))) (content!7934 (toList!3450 (+!1047 (extractMap!792 (toList!3449 lt!1620777)) (tuple2!49303 key!3717 newValue!93))))))))

(declare-fun bs!754643 () Bool)

(assert (= bs!754643 d!1339352))

(declare-fun m!5098061 () Bool)

(assert (=> bs!754643 m!5098061))

(declare-fun m!5098063 () Bool)

(assert (=> bs!754643 m!5098063))

(assert (=> b!4420521 d!1339352))

(declare-fun d!1339354 () Bool)

(declare-fun e!2752537 () Bool)

(assert (=> d!1339354 e!2752537))

(declare-fun res!1826956 () Bool)

(assert (=> d!1339354 (=> res!1826956 e!2752537)))

(declare-fun lt!1620945 () Bool)

(assert (=> d!1339354 (= res!1826956 (not lt!1620945))))

(declare-fun lt!1620942 () Bool)

(assert (=> d!1339354 (= lt!1620945 lt!1620942)))

(declare-fun lt!1620944 () Unit!81302)

(declare-fun e!2752538 () Unit!81302)

(assert (=> d!1339354 (= lt!1620944 e!2752538)))

(declare-fun c!752453 () Bool)

(assert (=> d!1339354 (= c!752453 lt!1620942)))

(declare-fun containsKey!1079 (List!49659 (_ BitVec 64)) Bool)

(assert (=> d!1339354 (= lt!1620942 (containsKey!1079 (toList!3449 lm!1616) hash!366))))

(assert (=> d!1339354 (= (contains!12012 lm!1616 hash!366) lt!1620945)))

(declare-fun b!4420693 () Bool)

(declare-fun lt!1620943 () Unit!81302)

(assert (=> b!4420693 (= e!2752538 lt!1620943)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!598 (List!49659 (_ BitVec 64)) Unit!81302)

(assert (=> b!4420693 (= lt!1620943 (lemmaContainsKeyImpliesGetValueByKeyDefined!598 (toList!3449 lm!1616) hash!366))))

(declare-fun isDefined!7995 (Option!10702) Bool)

(assert (=> b!4420693 (isDefined!7995 (getValueByKey!688 (toList!3449 lm!1616) hash!366))))

(declare-fun b!4420694 () Bool)

(declare-fun Unit!81315 () Unit!81302)

(assert (=> b!4420694 (= e!2752538 Unit!81315)))

(declare-fun b!4420695 () Bool)

(assert (=> b!4420695 (= e!2752537 (isDefined!7995 (getValueByKey!688 (toList!3449 lm!1616) hash!366)))))

(assert (= (and d!1339354 c!752453) b!4420693))

(assert (= (and d!1339354 (not c!752453)) b!4420694))

(assert (= (and d!1339354 (not res!1826956)) b!4420695))

(declare-fun m!5098065 () Bool)

(assert (=> d!1339354 m!5098065))

(declare-fun m!5098067 () Bool)

(assert (=> b!4420693 m!5098067))

(declare-fun m!5098069 () Bool)

(assert (=> b!4420693 m!5098069))

(assert (=> b!4420693 m!5098069))

(declare-fun m!5098071 () Bool)

(assert (=> b!4420693 m!5098071))

(assert (=> b!4420695 m!5098069))

(assert (=> b!4420695 m!5098069))

(assert (=> b!4420695 m!5098071))

(assert (=> b!4420511 d!1339354))

(declare-fun d!1339356 () Bool)

(declare-fun res!1826961 () Bool)

(declare-fun e!2752543 () Bool)

(assert (=> d!1339356 (=> res!1826961 e!2752543)))

(assert (=> d!1339356 (= res!1826961 ((_ is Nil!49535) (toList!3449 lt!1620779)))))

(assert (=> d!1339356 (= (forall!9528 (toList!3449 lt!1620779) lambda!152904) e!2752543)))

(declare-fun b!4420700 () Bool)

(declare-fun e!2752544 () Bool)

(assert (=> b!4420700 (= e!2752543 e!2752544)))

(declare-fun res!1826962 () Bool)

(assert (=> b!4420700 (=> (not res!1826962) (not e!2752544))))

(declare-fun dynLambda!20828 (Int tuple2!49304) Bool)

(assert (=> b!4420700 (= res!1826962 (dynLambda!20828 lambda!152904 (h!55208 (toList!3449 lt!1620779))))))

(declare-fun b!4420701 () Bool)

(assert (=> b!4420701 (= e!2752544 (forall!9528 (t!356597 (toList!3449 lt!1620779)) lambda!152904))))

(assert (= (and d!1339356 (not res!1826961)) b!4420700))

(assert (= (and b!4420700 res!1826962) b!4420701))

(declare-fun b_lambda!142539 () Bool)

(assert (=> (not b_lambda!142539) (not b!4420700)))

(declare-fun m!5098073 () Bool)

(assert (=> b!4420700 m!5098073))

(declare-fun m!5098075 () Bool)

(assert (=> b!4420701 m!5098075))

(assert (=> b!4420518 d!1339356))

(declare-fun d!1339358 () Bool)

(declare-fun e!2752545 () Bool)

(assert (=> d!1339358 e!2752545))

(declare-fun res!1826964 () Bool)

(assert (=> d!1339358 (=> (not res!1826964) (not e!2752545))))

(declare-fun lt!1620947 () ListLongMap!2099)

(assert (=> d!1339358 (= res!1826964 (contains!12012 lt!1620947 (_1!27946 lt!1620774)))))

(declare-fun lt!1620948 () List!49659)

(assert (=> d!1339358 (= lt!1620947 (ListLongMap!2100 lt!1620948))))

(declare-fun lt!1620949 () Unit!81302)

(declare-fun lt!1620946 () Unit!81302)

(assert (=> d!1339358 (= lt!1620949 lt!1620946)))

(assert (=> d!1339358 (= (getValueByKey!688 lt!1620948 (_1!27946 lt!1620774)) (Some!10701 (_2!27946 lt!1620774)))))

(assert (=> d!1339358 (= lt!1620946 (lemmaContainsTupThenGetReturnValue!422 lt!1620948 (_1!27946 lt!1620774) (_2!27946 lt!1620774)))))

(assert (=> d!1339358 (= lt!1620948 (insertStrictlySorted!248 (toList!3449 lm!1616) (_1!27946 lt!1620774) (_2!27946 lt!1620774)))))

(assert (=> d!1339358 (= (+!1046 lm!1616 lt!1620774) lt!1620947)))

(declare-fun b!4420702 () Bool)

(declare-fun res!1826963 () Bool)

(assert (=> b!4420702 (=> (not res!1826963) (not e!2752545))))

(assert (=> b!4420702 (= res!1826963 (= (getValueByKey!688 (toList!3449 lt!1620947) (_1!27946 lt!1620774)) (Some!10701 (_2!27946 lt!1620774))))))

(declare-fun b!4420703 () Bool)

(assert (=> b!4420703 (= e!2752545 (contains!12017 (toList!3449 lt!1620947) lt!1620774))))

(assert (= (and d!1339358 res!1826964) b!4420702))

(assert (= (and b!4420702 res!1826963) b!4420703))

(declare-fun m!5098077 () Bool)

(assert (=> d!1339358 m!5098077))

(declare-fun m!5098079 () Bool)

(assert (=> d!1339358 m!5098079))

(declare-fun m!5098081 () Bool)

(assert (=> d!1339358 m!5098081))

(declare-fun m!5098083 () Bool)

(assert (=> d!1339358 m!5098083))

(declare-fun m!5098085 () Bool)

(assert (=> b!4420702 m!5098085))

(declare-fun m!5098087 () Bool)

(assert (=> b!4420703 m!5098087))

(assert (=> b!4420518 d!1339358))

(declare-fun d!1339360 () Bool)

(assert (=> d!1339360 (forall!9528 (toList!3449 (+!1046 lm!1616 (tuple2!49305 hash!366 newBucket!194))) lambda!152904)))

(declare-fun lt!1620952 () Unit!81302)

(declare-fun choose!27850 (ListLongMap!2099 Int (_ BitVec 64) List!49658) Unit!81302)

(assert (=> d!1339360 (= lt!1620952 (choose!27850 lm!1616 lambda!152904 hash!366 newBucket!194))))

(declare-fun e!2752548 () Bool)

(assert (=> d!1339360 e!2752548))

(declare-fun res!1826967 () Bool)

(assert (=> d!1339360 (=> (not res!1826967) (not e!2752548))))

(assert (=> d!1339360 (= res!1826967 (forall!9528 (toList!3449 lm!1616) lambda!152904))))

(assert (=> d!1339360 (= (addValidProp!375 lm!1616 lambda!152904 hash!366 newBucket!194) lt!1620952)))

(declare-fun b!4420707 () Bool)

(assert (=> b!4420707 (= e!2752548 (dynLambda!20828 lambda!152904 (tuple2!49305 hash!366 newBucket!194)))))

(assert (= (and d!1339360 res!1826967) b!4420707))

(declare-fun b_lambda!142541 () Bool)

(assert (=> (not b_lambda!142541) (not b!4420707)))

(declare-fun m!5098089 () Bool)

(assert (=> d!1339360 m!5098089))

(declare-fun m!5098091 () Bool)

(assert (=> d!1339360 m!5098091))

(declare-fun m!5098093 () Bool)

(assert (=> d!1339360 m!5098093))

(assert (=> d!1339360 m!5097727))

(declare-fun m!5098095 () Bool)

(assert (=> b!4420707 m!5098095))

(assert (=> b!4420518 d!1339360))

(declare-fun d!1339362 () Bool)

(declare-fun isEmpty!28327 (List!49659) Bool)

(assert (=> d!1339362 (= (isEmpty!28325 lm!1616) (isEmpty!28327 (toList!3449 lm!1616)))))

(declare-fun bs!754644 () Bool)

(assert (= bs!754644 d!1339362))

(declare-fun m!5098097 () Bool)

(assert (=> bs!754644 m!5098097))

(assert (=> b!4420508 d!1339362))

(declare-fun d!1339364 () Bool)

(declare-fun hash!2069 (Hashable!5125 K!10900) (_ BitVec 64))

(assert (=> d!1339364 (= (hash!2065 hashF!1220 key!3717) (hash!2069 hashF!1220 key!3717))))

(declare-fun bs!754645 () Bool)

(assert (= bs!754645 d!1339364))

(declare-fun m!5098099 () Bool)

(assert (=> bs!754645 m!5098099))

(assert (=> b!4420519 d!1339364))

(declare-fun d!1339366 () Bool)

(declare-fun get!16138 (Option!10702) List!49658)

(assert (=> d!1339366 (= (apply!11583 lm!1616 hash!366) (get!16138 (getValueByKey!688 (toList!3449 lm!1616) hash!366)))))

(declare-fun bs!754646 () Bool)

(assert (= bs!754646 d!1339366))

(assert (=> bs!754646 m!5098069))

(assert (=> bs!754646 m!5098069))

(declare-fun m!5098101 () Bool)

(assert (=> bs!754646 m!5098101))

(assert (=> b!4420509 d!1339366))

(declare-fun d!1339368 () Bool)

(declare-fun res!1826968 () Bool)

(declare-fun e!2752549 () Bool)

(assert (=> d!1339368 (=> res!1826968 e!2752549)))

(assert (=> d!1339368 (= res!1826968 ((_ is Nil!49535) (toList!3449 lm!1616)))))

(assert (=> d!1339368 (= (forall!9528 (toList!3449 lm!1616) lambda!152904) e!2752549)))

(declare-fun b!4420708 () Bool)

(declare-fun e!2752550 () Bool)

(assert (=> b!4420708 (= e!2752549 e!2752550)))

(declare-fun res!1826969 () Bool)

(assert (=> b!4420708 (=> (not res!1826969) (not e!2752550))))

(assert (=> b!4420708 (= res!1826969 (dynLambda!20828 lambda!152904 (h!55208 (toList!3449 lm!1616))))))

(declare-fun b!4420709 () Bool)

(assert (=> b!4420709 (= e!2752550 (forall!9528 (t!356597 (toList!3449 lm!1616)) lambda!152904))))

(assert (= (and d!1339368 (not res!1826968)) b!4420708))

(assert (= (and b!4420708 res!1826969) b!4420709))

(declare-fun b_lambda!142543 () Bool)

(assert (=> (not b_lambda!142543) (not b!4420708)))

(declare-fun m!5098103 () Bool)

(assert (=> b!4420708 m!5098103))

(declare-fun m!5098105 () Bool)

(assert (=> b!4420709 m!5098105))

(assert (=> b!4420520 d!1339368))

(declare-fun bs!754647 () Bool)

(declare-fun d!1339370 () Bool)

(assert (= bs!754647 (and d!1339370 start!430784)))

(declare-fun lambda!152934 () Int)

(assert (=> bs!754647 (= lambda!152934 lambda!152904)))

(declare-fun bs!754648 () Bool)

(assert (= bs!754648 (and d!1339370 d!1339350)))

(assert (=> bs!754648 (= lambda!152934 lambda!152931)))

(declare-fun bs!754649 () Bool)

(assert (= bs!754649 (and d!1339370 d!1339284)))

(assert (=> bs!754649 (= lambda!152934 lambda!152916)))

(declare-fun bs!754650 () Bool)

(assert (= bs!754650 (and d!1339370 d!1339330)))

(assert (=> bs!754650 (= lambda!152934 lambda!152924)))

(declare-fun bs!754651 () Bool)

(assert (= bs!754651 (and d!1339370 d!1339332)))

(assert (=> bs!754651 (= lambda!152934 lambda!152930)))

(declare-fun bs!754652 () Bool)

(assert (= bs!754652 (and d!1339370 d!1339328)))

(assert (=> bs!754652 (= lambda!152934 lambda!152923)))

(assert (=> d!1339370 (contains!12011 (extractMap!792 (toList!3449 lm!1616)) key!3717)))

(declare-fun lt!1620955 () Unit!81302)

(declare-fun choose!27851 (ListLongMap!2099 K!10900 Hashable!5125) Unit!81302)

(assert (=> d!1339370 (= lt!1620955 (choose!27851 lm!1616 key!3717 hashF!1220))))

(assert (=> d!1339370 (forall!9528 (toList!3449 lm!1616) lambda!152934)))

(assert (=> d!1339370 (= (lemmaExtractTailMapContainsThenExtractMapDoes!18 lm!1616 key!3717 hashF!1220) lt!1620955)))

(declare-fun bs!754653 () Bool)

(assert (= bs!754653 d!1339370))

(assert (=> bs!754653 m!5097739))

(assert (=> bs!754653 m!5097739))

(assert (=> bs!754653 m!5097741))

(declare-fun m!5098107 () Bool)

(assert (=> bs!754653 m!5098107))

(declare-fun m!5098109 () Bool)

(assert (=> bs!754653 m!5098109))

(assert (=> b!4420516 d!1339370))

(declare-fun d!1339372 () Bool)

(declare-fun res!1826974 () Bool)

(declare-fun e!2752555 () Bool)

(assert (=> d!1339372 (=> res!1826974 e!2752555)))

(assert (=> d!1339372 (= res!1826974 (not ((_ is Cons!49534) newBucket!194)))))

(assert (=> d!1339372 (= (noDuplicateKeys!731 newBucket!194) e!2752555)))

(declare-fun b!4420714 () Bool)

(declare-fun e!2752556 () Bool)

(assert (=> b!4420714 (= e!2752555 e!2752556)))

(declare-fun res!1826975 () Bool)

(assert (=> b!4420714 (=> (not res!1826975) (not e!2752556))))

(declare-fun containsKey!1080 (List!49658 K!10900) Bool)

(assert (=> b!4420714 (= res!1826975 (not (containsKey!1080 (t!356596 newBucket!194) (_1!27945 (h!55207 newBucket!194)))))))

(declare-fun b!4420715 () Bool)

(assert (=> b!4420715 (= e!2752556 (noDuplicateKeys!731 (t!356596 newBucket!194)))))

(assert (= (and d!1339372 (not res!1826974)) b!4420714))

(assert (= (and b!4420714 res!1826975) b!4420715))

(declare-fun m!5098111 () Bool)

(assert (=> b!4420714 m!5098111))

(declare-fun m!5098113 () Bool)

(assert (=> b!4420715 m!5098113))

(assert (=> b!4420506 d!1339372))

(assert (=> start!430784 d!1339368))

(declare-fun d!1339374 () Bool)

(declare-fun isStrictlySorted!220 (List!49659) Bool)

(assert (=> d!1339374 (= (inv!65086 lm!1616) (isStrictlySorted!220 (toList!3449 lm!1616)))))

(declare-fun bs!754654 () Bool)

(assert (= bs!754654 d!1339374))

(declare-fun m!5098115 () Bool)

(assert (=> bs!754654 m!5098115))

(assert (=> start!430784 d!1339374))

(declare-fun bs!754655 () Bool)

(declare-fun d!1339376 () Bool)

(assert (= bs!754655 (and d!1339376 start!430784)))

(declare-fun lambda!152937 () Int)

(assert (=> bs!754655 (not (= lambda!152937 lambda!152904))))

(declare-fun bs!754656 () Bool)

(assert (= bs!754656 (and d!1339376 d!1339350)))

(assert (=> bs!754656 (not (= lambda!152937 lambda!152931))))

(declare-fun bs!754657 () Bool)

(assert (= bs!754657 (and d!1339376 d!1339370)))

(assert (=> bs!754657 (not (= lambda!152937 lambda!152934))))

(declare-fun bs!754658 () Bool)

(assert (= bs!754658 (and d!1339376 d!1339284)))

(assert (=> bs!754658 (not (= lambda!152937 lambda!152916))))

(declare-fun bs!754659 () Bool)

(assert (= bs!754659 (and d!1339376 d!1339330)))

(assert (=> bs!754659 (not (= lambda!152937 lambda!152924))))

(declare-fun bs!754660 () Bool)

(assert (= bs!754660 (and d!1339376 d!1339332)))

(assert (=> bs!754660 (not (= lambda!152937 lambda!152930))))

(declare-fun bs!754661 () Bool)

(assert (= bs!754661 (and d!1339376 d!1339328)))

(assert (=> bs!754661 (not (= lambda!152937 lambda!152923))))

(assert (=> d!1339376 true))

(assert (=> d!1339376 (= (allKeysSameHashInMap!837 lm!1616 hashF!1220) (forall!9528 (toList!3449 lm!1616) lambda!152937))))

(declare-fun bs!754662 () Bool)

(assert (= bs!754662 d!1339376))

(declare-fun m!5098117 () Bool)

(assert (=> bs!754662 m!5098117))

(assert (=> b!4420507 d!1339376))

(declare-fun d!1339378 () Bool)

(assert (=> d!1339378 true))

(assert (=> d!1339378 true))

(declare-fun lambda!152940 () Int)

(declare-fun forall!9530 (List!49658 Int) Bool)

(assert (=> d!1339378 (= (allKeysSameHash!691 newBucket!194 hash!366 hashF!1220) (forall!9530 newBucket!194 lambda!152940))))

(declare-fun bs!754663 () Bool)

(assert (= bs!754663 d!1339378))

(declare-fun m!5098119 () Bool)

(assert (=> bs!754663 m!5098119))

(assert (=> b!4420515 d!1339378))

(declare-fun b!4420726 () Bool)

(declare-fun e!2752559 () Bool)

(declare-fun tp!1332968 () Bool)

(declare-fun tp!1332969 () Bool)

(assert (=> b!4420726 (= e!2752559 (and tp!1332968 tp!1332969))))

(assert (=> b!4420505 (= tp!1332953 e!2752559)))

(assert (= (and b!4420505 ((_ is Cons!49535) (toList!3449 lm!1616))) b!4420726))

(declare-fun tp!1332972 () Bool)

(declare-fun e!2752562 () Bool)

(declare-fun b!4420731 () Bool)

(assert (=> b!4420731 (= e!2752562 (and tp_is_empty!26171 tp_is_empty!26169 tp!1332972))))

(assert (=> b!4420513 (= tp!1332954 e!2752562)))

(assert (= (and b!4420513 ((_ is Cons!49534) (t!356596 newBucket!194))) b!4420731))

(declare-fun b_lambda!142545 () Bool)

(assert (= b_lambda!142543 (or start!430784 b_lambda!142545)))

(declare-fun bs!754664 () Bool)

(declare-fun d!1339380 () Bool)

(assert (= bs!754664 (and d!1339380 start!430784)))

(assert (=> bs!754664 (= (dynLambda!20828 lambda!152904 (h!55208 (toList!3449 lm!1616))) (noDuplicateKeys!731 (_2!27946 (h!55208 (toList!3449 lm!1616)))))))

(declare-fun m!5098121 () Bool)

(assert (=> bs!754664 m!5098121))

(assert (=> b!4420708 d!1339380))

(declare-fun b_lambda!142547 () Bool)

(assert (= b_lambda!142541 (or start!430784 b_lambda!142547)))

(declare-fun bs!754665 () Bool)

(declare-fun d!1339382 () Bool)

(assert (= bs!754665 (and d!1339382 start!430784)))

(assert (=> bs!754665 (= (dynLambda!20828 lambda!152904 (tuple2!49305 hash!366 newBucket!194)) (noDuplicateKeys!731 (_2!27946 (tuple2!49305 hash!366 newBucket!194))))))

(declare-fun m!5098123 () Bool)

(assert (=> bs!754665 m!5098123))

(assert (=> b!4420707 d!1339382))

(declare-fun b_lambda!142549 () Bool)

(assert (= b_lambda!142539 (or start!430784 b_lambda!142549)))

(declare-fun bs!754666 () Bool)

(declare-fun d!1339384 () Bool)

(assert (= bs!754666 (and d!1339384 start!430784)))

(assert (=> bs!754666 (= (dynLambda!20828 lambda!152904 (h!55208 (toList!3449 lt!1620779))) (noDuplicateKeys!731 (_2!27946 (h!55208 (toList!3449 lt!1620779)))))))

(declare-fun m!5098125 () Bool)

(assert (=> bs!754666 m!5098125))

(assert (=> b!4420700 d!1339384))

(check-sat tp_is_empty!26169 (not bm!307536) (not b!4420684) (not b!4420559) (not b!4420714) (not b!4420562) (not b_lambda!142549) (not b!4420701) (not b!4420681) (not d!1339326) (not b!4420554) (not bs!754665) (not d!1339284) (not d!1339304) (not b!4420647) (not d!1339352) (not bs!754666) (not b!4420614) (not d!1339270) (not b!4420648) (not b!4420558) (not d!1339370) (not b!4420703) (not bm!307541) (not b!4420685) (not d!1339332) (not d!1339362) (not b!4420601) (not d!1339290) (not d!1339354) (not b_lambda!142545) (not d!1339310) (not b!4420650) (not d!1339360) (not b_lambda!142547) (not b!4420646) (not d!1339350) (not b!4420693) (not b!4420709) (not b!4420561) (not b!4420680) (not d!1339374) (not d!1339358) (not d!1339366) (not b!4420715) (not b!4420731) (not d!1339376) (not b!4420683) (not d!1339330) (not d!1339364) (not d!1339348) (not b!4420613) (not b!4420726) (not b!4420557) (not b!4420702) tp_is_empty!26171 (not d!1339378) (not b!4420676) (not b!4420695) (not b!4420555) (not b!4420677) (not d!1339328) (not b!4420679) (not bs!754664))
(check-sat)
(get-model)

(declare-fun bs!754669 () Bool)

(declare-fun b!4420780 () Bool)

(assert (= bs!754669 (and b!4420780 d!1339378)))

(declare-fun lambda!152975 () Int)

(assert (=> bs!754669 (not (= lambda!152975 lambda!152940))))

(assert (=> b!4420780 true))

(declare-fun bs!754670 () Bool)

(declare-fun b!4420782 () Bool)

(assert (= bs!754670 (and b!4420782 d!1339378)))

(declare-fun lambda!152976 () Int)

(assert (=> bs!754670 (not (= lambda!152976 lambda!152940))))

(declare-fun bs!754671 () Bool)

(assert (= bs!754671 (and b!4420782 b!4420780)))

(assert (=> bs!754671 (= lambda!152976 lambda!152975)))

(assert (=> b!4420782 true))

(declare-fun lambda!152977 () Int)

(assert (=> bs!754670 (not (= lambda!152977 lambda!152940))))

(declare-fun lt!1621014 () ListMap!2693)

(assert (=> bs!754671 (= (= lt!1621014 (extractMap!792 (t!356597 (toList!3449 lt!1620777)))) (= lambda!152977 lambda!152975))))

(assert (=> b!4420782 (= (= lt!1621014 (extractMap!792 (t!356597 (toList!3449 lt!1620777)))) (= lambda!152977 lambda!152976))))

(assert (=> b!4420782 true))

(declare-fun bs!754672 () Bool)

(declare-fun d!1339386 () Bool)

(assert (= bs!754672 (and d!1339386 d!1339378)))

(declare-fun lambda!152978 () Int)

(assert (=> bs!754672 (not (= lambda!152978 lambda!152940))))

(declare-fun bs!754673 () Bool)

(assert (= bs!754673 (and d!1339386 b!4420780)))

(declare-fun lt!1621025 () ListMap!2693)

(assert (=> bs!754673 (= (= lt!1621025 (extractMap!792 (t!356597 (toList!3449 lt!1620777)))) (= lambda!152978 lambda!152975))))

(declare-fun bs!754674 () Bool)

(assert (= bs!754674 (and d!1339386 b!4420782)))

(assert (=> bs!754674 (= (= lt!1621025 (extractMap!792 (t!356597 (toList!3449 lt!1620777)))) (= lambda!152978 lambda!152976))))

(assert (=> bs!754674 (= (= lt!1621025 lt!1621014) (= lambda!152978 lambda!152977))))

(assert (=> d!1339386 true))

(declare-fun b!4420778 () Bool)

(declare-fun res!1827005 () Bool)

(declare-fun e!2752589 () Bool)

(assert (=> b!4420778 (=> (not res!1827005) (not e!2752589))))

(assert (=> b!4420778 (= res!1827005 (forall!9530 (toList!3450 (extractMap!792 (t!356597 (toList!3449 lt!1620777)))) lambda!152978))))

(declare-fun lt!1621028 () ListMap!2693)

(declare-fun call!307553 () Bool)

(declare-fun bm!307548 () Bool)

(declare-fun c!752462 () Bool)

(assert (=> bm!307548 (= call!307553 (forall!9530 (ite c!752462 (toList!3450 (extractMap!792 (t!356597 (toList!3449 lt!1620777)))) (toList!3450 lt!1621028)) (ite c!752462 lambda!152975 lambda!152977)))))

(declare-fun b!4420779 () Bool)

(declare-fun e!2752591 () Bool)

(assert (=> b!4420779 (= e!2752591 (forall!9530 (toList!3450 (extractMap!792 (t!356597 (toList!3449 lt!1620777)))) lambda!152977))))

(declare-fun bm!307549 () Bool)

(declare-fun call!307555 () Unit!81302)

(declare-fun lemmaContainsAllItsOwnKeys!164 (ListMap!2693) Unit!81302)

(assert (=> bm!307549 (= call!307555 (lemmaContainsAllItsOwnKeys!164 (extractMap!792 (t!356597 (toList!3449 lt!1620777)))))))

(assert (=> d!1339386 e!2752589))

(declare-fun res!1827004 () Bool)

(assert (=> d!1339386 (=> (not res!1827004) (not e!2752589))))

(assert (=> d!1339386 (= res!1827004 (forall!9530 (_2!27946 (h!55208 (toList!3449 lt!1620777))) lambda!152978))))

(declare-fun e!2752590 () ListMap!2693)

(assert (=> d!1339386 (= lt!1621025 e!2752590)))

(assert (=> d!1339386 (= c!752462 ((_ is Nil!49534) (_2!27946 (h!55208 (toList!3449 lt!1620777)))))))

(assert (=> d!1339386 (noDuplicateKeys!731 (_2!27946 (h!55208 (toList!3449 lt!1620777))))))

(assert (=> d!1339386 (= (addToMapMapFromBucket!368 (_2!27946 (h!55208 (toList!3449 lt!1620777))) (extractMap!792 (t!356597 (toList!3449 lt!1620777)))) lt!1621025)))

(assert (=> b!4420780 (= e!2752590 (extractMap!792 (t!356597 (toList!3449 lt!1620777))))))

(declare-fun lt!1621012 () Unit!81302)

(assert (=> b!4420780 (= lt!1621012 call!307555)))

(declare-fun call!307554 () Bool)

(assert (=> b!4420780 call!307554))

(declare-fun lt!1621020 () Unit!81302)

(assert (=> b!4420780 (= lt!1621020 lt!1621012)))

(assert (=> b!4420780 call!307553))

(declare-fun lt!1621008 () Unit!81302)

(declare-fun Unit!81316 () Unit!81302)

(assert (=> b!4420780 (= lt!1621008 Unit!81316)))

(declare-fun bm!307550 () Bool)

(assert (=> bm!307550 (= call!307554 (forall!9530 (toList!3450 (extractMap!792 (t!356597 (toList!3449 lt!1620777)))) (ite c!752462 lambda!152975 lambda!152976)))))

(declare-fun b!4420781 () Bool)

(assert (=> b!4420781 (= e!2752589 (invariantList!793 (toList!3450 lt!1621025)))))

(assert (=> b!4420782 (= e!2752590 lt!1621014)))

(assert (=> b!4420782 (= lt!1621028 (+!1047 (extractMap!792 (t!356597 (toList!3449 lt!1620777))) (h!55207 (_2!27946 (h!55208 (toList!3449 lt!1620777))))))))

(assert (=> b!4420782 (= lt!1621014 (addToMapMapFromBucket!368 (t!356596 (_2!27946 (h!55208 (toList!3449 lt!1620777)))) (+!1047 (extractMap!792 (t!356597 (toList!3449 lt!1620777))) (h!55207 (_2!27946 (h!55208 (toList!3449 lt!1620777)))))))))

(declare-fun lt!1621026 () Unit!81302)

(assert (=> b!4420782 (= lt!1621026 call!307555)))

(assert (=> b!4420782 call!307554))

(declare-fun lt!1621021 () Unit!81302)

(assert (=> b!4420782 (= lt!1621021 lt!1621026)))

(assert (=> b!4420782 (forall!9530 (toList!3450 lt!1621028) lambda!152977)))

(declare-fun lt!1621009 () Unit!81302)

(declare-fun Unit!81317 () Unit!81302)

(assert (=> b!4420782 (= lt!1621009 Unit!81317)))

(assert (=> b!4420782 (forall!9530 (t!356596 (_2!27946 (h!55208 (toList!3449 lt!1620777)))) lambda!152977)))

(declare-fun lt!1621016 () Unit!81302)

(declare-fun Unit!81318 () Unit!81302)

(assert (=> b!4420782 (= lt!1621016 Unit!81318)))

(declare-fun lt!1621018 () Unit!81302)

(declare-fun Unit!81319 () Unit!81302)

(assert (=> b!4420782 (= lt!1621018 Unit!81319)))

(declare-fun lt!1621011 () Unit!81302)

(declare-fun forallContained!2078 (List!49658 Int tuple2!49302) Unit!81302)

(assert (=> b!4420782 (= lt!1621011 (forallContained!2078 (toList!3450 lt!1621028) lambda!152977 (h!55207 (_2!27946 (h!55208 (toList!3449 lt!1620777))))))))

(assert (=> b!4420782 (contains!12011 lt!1621028 (_1!27945 (h!55207 (_2!27946 (h!55208 (toList!3449 lt!1620777))))))))

(declare-fun lt!1621024 () Unit!81302)

(declare-fun Unit!81320 () Unit!81302)

(assert (=> b!4420782 (= lt!1621024 Unit!81320)))

(assert (=> b!4420782 (contains!12011 lt!1621014 (_1!27945 (h!55207 (_2!27946 (h!55208 (toList!3449 lt!1620777))))))))

(declare-fun lt!1621017 () Unit!81302)

(declare-fun Unit!81321 () Unit!81302)

(assert (=> b!4420782 (= lt!1621017 Unit!81321)))

(assert (=> b!4420782 (forall!9530 (_2!27946 (h!55208 (toList!3449 lt!1620777))) lambda!152977)))

(declare-fun lt!1621023 () Unit!81302)

(declare-fun Unit!81322 () Unit!81302)

(assert (=> b!4420782 (= lt!1621023 Unit!81322)))

(assert (=> b!4420782 call!307553))

(declare-fun lt!1621022 () Unit!81302)

(declare-fun Unit!81323 () Unit!81302)

(assert (=> b!4420782 (= lt!1621022 Unit!81323)))

(declare-fun lt!1621015 () Unit!81302)

(declare-fun Unit!81324 () Unit!81302)

(assert (=> b!4420782 (= lt!1621015 Unit!81324)))

(declare-fun lt!1621027 () Unit!81302)

(declare-fun addForallContainsKeyThenBeforeAdding!164 (ListMap!2693 ListMap!2693 K!10900 V!11146) Unit!81302)

(assert (=> b!4420782 (= lt!1621027 (addForallContainsKeyThenBeforeAdding!164 (extractMap!792 (t!356597 (toList!3449 lt!1620777))) lt!1621014 (_1!27945 (h!55207 (_2!27946 (h!55208 (toList!3449 lt!1620777))))) (_2!27945 (h!55207 (_2!27946 (h!55208 (toList!3449 lt!1620777)))))))))

(assert (=> b!4420782 (forall!9530 (toList!3450 (extractMap!792 (t!356597 (toList!3449 lt!1620777)))) lambda!152977)))

(declare-fun lt!1621010 () Unit!81302)

(assert (=> b!4420782 (= lt!1621010 lt!1621027)))

(assert (=> b!4420782 (forall!9530 (toList!3450 (extractMap!792 (t!356597 (toList!3449 lt!1620777)))) lambda!152977)))

(declare-fun lt!1621013 () Unit!81302)

(declare-fun Unit!81325 () Unit!81302)

(assert (=> b!4420782 (= lt!1621013 Unit!81325)))

(declare-fun res!1827003 () Bool)

(assert (=> b!4420782 (= res!1827003 (forall!9530 (_2!27946 (h!55208 (toList!3449 lt!1620777))) lambda!152977))))

(assert (=> b!4420782 (=> (not res!1827003) (not e!2752591))))

(assert (=> b!4420782 e!2752591))

(declare-fun lt!1621019 () Unit!81302)

(declare-fun Unit!81326 () Unit!81302)

(assert (=> b!4420782 (= lt!1621019 Unit!81326)))

(assert (= (and d!1339386 c!752462) b!4420780))

(assert (= (and d!1339386 (not c!752462)) b!4420782))

(assert (= (and b!4420782 res!1827003) b!4420779))

(assert (= (or b!4420780 b!4420782) bm!307549))

(assert (= (or b!4420780 b!4420782) bm!307550))

(assert (= (or b!4420780 b!4420782) bm!307548))

(assert (= (and d!1339386 res!1827004) b!4420778))

(assert (= (and b!4420778 res!1827005) b!4420781))

(assert (=> b!4420782 m!5097997))

(declare-fun m!5098171 () Bool)

(assert (=> b!4420782 m!5098171))

(declare-fun m!5098173 () Bool)

(assert (=> b!4420782 m!5098173))

(declare-fun m!5098175 () Bool)

(assert (=> b!4420782 m!5098175))

(declare-fun m!5098177 () Bool)

(assert (=> b!4420782 m!5098177))

(declare-fun m!5098179 () Bool)

(assert (=> b!4420782 m!5098179))

(declare-fun m!5098181 () Bool)

(assert (=> b!4420782 m!5098181))

(declare-fun m!5098183 () Bool)

(assert (=> b!4420782 m!5098183))

(assert (=> b!4420782 m!5097997))

(assert (=> b!4420782 m!5098173))

(declare-fun m!5098185 () Bool)

(assert (=> b!4420782 m!5098185))

(assert (=> b!4420782 m!5098185))

(assert (=> b!4420782 m!5098179))

(declare-fun m!5098187 () Bool)

(assert (=> b!4420782 m!5098187))

(declare-fun m!5098189 () Bool)

(assert (=> b!4420782 m!5098189))

(assert (=> bm!307549 m!5097997))

(declare-fun m!5098191 () Bool)

(assert (=> bm!307549 m!5098191))

(declare-fun m!5098193 () Bool)

(assert (=> bm!307548 m!5098193))

(declare-fun m!5098195 () Bool)

(assert (=> bm!307550 m!5098195))

(declare-fun m!5098197 () Bool)

(assert (=> b!4420781 m!5098197))

(declare-fun m!5098199 () Bool)

(assert (=> d!1339386 m!5098199))

(declare-fun m!5098201 () Bool)

(assert (=> d!1339386 m!5098201))

(declare-fun m!5098203 () Bool)

(assert (=> b!4420778 m!5098203))

(assert (=> b!4420779 m!5098185))

(assert (=> b!4420650 d!1339386))

(declare-fun bs!754675 () Bool)

(declare-fun d!1339406 () Bool)

(assert (= bs!754675 (and d!1339406 start!430784)))

(declare-fun lambda!152979 () Int)

(assert (=> bs!754675 (= lambda!152979 lambda!152904)))

(declare-fun bs!754676 () Bool)

(assert (= bs!754676 (and d!1339406 d!1339350)))

(assert (=> bs!754676 (= lambda!152979 lambda!152931)))

(declare-fun bs!754677 () Bool)

(assert (= bs!754677 (and d!1339406 d!1339370)))

(assert (=> bs!754677 (= lambda!152979 lambda!152934)))

(declare-fun bs!754678 () Bool)

(assert (= bs!754678 (and d!1339406 d!1339284)))

(assert (=> bs!754678 (= lambda!152979 lambda!152916)))

(declare-fun bs!754679 () Bool)

(assert (= bs!754679 (and d!1339406 d!1339330)))

(assert (=> bs!754679 (= lambda!152979 lambda!152924)))

(declare-fun bs!754680 () Bool)

(assert (= bs!754680 (and d!1339406 d!1339332)))

(assert (=> bs!754680 (= lambda!152979 lambda!152930)))

(declare-fun bs!754681 () Bool)

(assert (= bs!754681 (and d!1339406 d!1339376)))

(assert (=> bs!754681 (not (= lambda!152979 lambda!152937))))

(declare-fun bs!754682 () Bool)

(assert (= bs!754682 (and d!1339406 d!1339328)))

(assert (=> bs!754682 (= lambda!152979 lambda!152923)))

(declare-fun lt!1621029 () ListMap!2693)

(assert (=> d!1339406 (invariantList!793 (toList!3450 lt!1621029))))

(declare-fun e!2752592 () ListMap!2693)

(assert (=> d!1339406 (= lt!1621029 e!2752592)))

(declare-fun c!752463 () Bool)

(assert (=> d!1339406 (= c!752463 ((_ is Cons!49535) (t!356597 (toList!3449 lt!1620777))))))

(assert (=> d!1339406 (forall!9528 (t!356597 (toList!3449 lt!1620777)) lambda!152979)))

(assert (=> d!1339406 (= (extractMap!792 (t!356597 (toList!3449 lt!1620777))) lt!1621029)))

(declare-fun b!4420785 () Bool)

(assert (=> b!4420785 (= e!2752592 (addToMapMapFromBucket!368 (_2!27946 (h!55208 (t!356597 (toList!3449 lt!1620777)))) (extractMap!792 (t!356597 (t!356597 (toList!3449 lt!1620777))))))))

(declare-fun b!4420786 () Bool)

(assert (=> b!4420786 (= e!2752592 (ListMap!2694 Nil!49534))))

(assert (= (and d!1339406 c!752463) b!4420785))

(assert (= (and d!1339406 (not c!752463)) b!4420786))

(declare-fun m!5098205 () Bool)

(assert (=> d!1339406 m!5098205))

(declare-fun m!5098207 () Bool)

(assert (=> d!1339406 m!5098207))

(declare-fun m!5098209 () Bool)

(assert (=> b!4420785 m!5098209))

(assert (=> b!4420785 m!5098209))

(declare-fun m!5098211 () Bool)

(assert (=> b!4420785 m!5098211))

(assert (=> b!4420650 d!1339406))

(declare-fun d!1339408 () Bool)

(declare-fun res!1827006 () Bool)

(declare-fun e!2752593 () Bool)

(assert (=> d!1339408 (=> res!1827006 e!2752593)))

(assert (=> d!1339408 (= res!1827006 (not ((_ is Cons!49534) (_2!27946 (h!55208 (toList!3449 lm!1616))))))))

(assert (=> d!1339408 (= (noDuplicateKeys!731 (_2!27946 (h!55208 (toList!3449 lm!1616)))) e!2752593)))

(declare-fun b!4420787 () Bool)

(declare-fun e!2752594 () Bool)

(assert (=> b!4420787 (= e!2752593 e!2752594)))

(declare-fun res!1827007 () Bool)

(assert (=> b!4420787 (=> (not res!1827007) (not e!2752594))))

(assert (=> b!4420787 (= res!1827007 (not (containsKey!1080 (t!356596 (_2!27946 (h!55208 (toList!3449 lm!1616)))) (_1!27945 (h!55207 (_2!27946 (h!55208 (toList!3449 lm!1616))))))))))

(declare-fun b!4420788 () Bool)

(assert (=> b!4420788 (= e!2752594 (noDuplicateKeys!731 (t!356596 (_2!27946 (h!55208 (toList!3449 lm!1616))))))))

(assert (= (and d!1339408 (not res!1827006)) b!4420787))

(assert (= (and b!4420787 res!1827007) b!4420788))

(declare-fun m!5098213 () Bool)

(assert (=> b!4420787 m!5098213))

(declare-fun m!5098215 () Bool)

(assert (=> b!4420788 m!5098215))

(assert (=> bs!754664 d!1339408))

(declare-fun d!1339410 () Bool)

(declare-fun c!752468 () Bool)

(assert (=> d!1339410 (= c!752468 (and ((_ is Cons!49535) (toList!3449 lt!1620947)) (= (_1!27946 (h!55208 (toList!3449 lt!1620947))) (_1!27946 lt!1620774))))))

(declare-fun e!2752599 () Option!10702)

(assert (=> d!1339410 (= (getValueByKey!688 (toList!3449 lt!1620947) (_1!27946 lt!1620774)) e!2752599)))

(declare-fun b!4420798 () Bool)

(declare-fun e!2752600 () Option!10702)

(assert (=> b!4420798 (= e!2752599 e!2752600)))

(declare-fun c!752469 () Bool)

(assert (=> b!4420798 (= c!752469 (and ((_ is Cons!49535) (toList!3449 lt!1620947)) (not (= (_1!27946 (h!55208 (toList!3449 lt!1620947))) (_1!27946 lt!1620774)))))))

(declare-fun b!4420799 () Bool)

(assert (=> b!4420799 (= e!2752600 (getValueByKey!688 (t!356597 (toList!3449 lt!1620947)) (_1!27946 lt!1620774)))))

(declare-fun b!4420797 () Bool)

(assert (=> b!4420797 (= e!2752599 (Some!10701 (_2!27946 (h!55208 (toList!3449 lt!1620947)))))))

(declare-fun b!4420800 () Bool)

(assert (=> b!4420800 (= e!2752600 None!10701)))

(assert (= (and d!1339410 c!752468) b!4420797))

(assert (= (and d!1339410 (not c!752468)) b!4420798))

(assert (= (and b!4420798 c!752469) b!4420799))

(assert (= (and b!4420798 (not c!752469)) b!4420800))

(declare-fun m!5098217 () Bool)

(assert (=> b!4420799 m!5098217))

(assert (=> b!4420702 d!1339410))

(assert (=> d!1339370 d!1339270))

(assert (=> d!1339370 d!1339284))

(declare-fun d!1339412 () Bool)

(assert (=> d!1339412 (contains!12011 (extractMap!792 (toList!3449 lm!1616)) key!3717)))

(assert (=> d!1339412 true))

(declare-fun _$12!1175 () Unit!81302)

(assert (=> d!1339412 (= (choose!27851 lm!1616 key!3717 hashF!1220) _$12!1175)))

(declare-fun bs!754683 () Bool)

(assert (= bs!754683 d!1339412))

(assert (=> bs!754683 m!5097739))

(assert (=> bs!754683 m!5097739))

(assert (=> bs!754683 m!5097741))

(assert (=> d!1339370 d!1339412))

(declare-fun d!1339414 () Bool)

(declare-fun res!1827008 () Bool)

(declare-fun e!2752601 () Bool)

(assert (=> d!1339414 (=> res!1827008 e!2752601)))

(assert (=> d!1339414 (= res!1827008 ((_ is Nil!49535) (toList!3449 lm!1616)))))

(assert (=> d!1339414 (= (forall!9528 (toList!3449 lm!1616) lambda!152934) e!2752601)))

(declare-fun b!4420801 () Bool)

(declare-fun e!2752602 () Bool)

(assert (=> b!4420801 (= e!2752601 e!2752602)))

(declare-fun res!1827009 () Bool)

(assert (=> b!4420801 (=> (not res!1827009) (not e!2752602))))

(assert (=> b!4420801 (= res!1827009 (dynLambda!20828 lambda!152934 (h!55208 (toList!3449 lm!1616))))))

(declare-fun b!4420802 () Bool)

(assert (=> b!4420802 (= e!2752602 (forall!9528 (t!356597 (toList!3449 lm!1616)) lambda!152934))))

(assert (= (and d!1339414 (not res!1827008)) b!4420801))

(assert (= (and b!4420801 res!1827009) b!4420802))

(declare-fun b_lambda!142553 () Bool)

(assert (=> (not b_lambda!142553) (not b!4420801)))

(declare-fun m!5098219 () Bool)

(assert (=> b!4420801 m!5098219))

(declare-fun m!5098221 () Bool)

(assert (=> b!4420802 m!5098221))

(assert (=> d!1339370 d!1339414))

(declare-fun d!1339416 () Bool)

(declare-fun isEmpty!28328 (Option!10701) Bool)

(assert (=> d!1339416 (= (isDefined!7994 (getValueByKey!687 (toList!3450 (extractMap!792 (toList!3449 lm!1616))) key!3717)) (not (isEmpty!28328 (getValueByKey!687 (toList!3450 (extractMap!792 (toList!3449 lm!1616))) key!3717))))))

(declare-fun bs!754684 () Bool)

(assert (= bs!754684 d!1339416))

(assert (=> bs!754684 m!5097799))

(declare-fun m!5098223 () Bool)

(assert (=> bs!754684 m!5098223))

(assert (=> b!4420554 d!1339416))

(declare-fun b!4420818 () Bool)

(declare-fun e!2752610 () Option!10701)

(assert (=> b!4420818 (= e!2752610 None!10700)))

(declare-fun b!4420816 () Bool)

(declare-fun e!2752609 () Option!10701)

(assert (=> b!4420816 (= e!2752609 e!2752610)))

(declare-fun c!752477 () Bool)

(assert (=> b!4420816 (= c!752477 (and ((_ is Cons!49534) (toList!3450 (extractMap!792 (toList!3449 lm!1616)))) (not (= (_1!27945 (h!55207 (toList!3450 (extractMap!792 (toList!3449 lm!1616))))) key!3717))))))

(declare-fun d!1339418 () Bool)

(declare-fun c!752476 () Bool)

(assert (=> d!1339418 (= c!752476 (and ((_ is Cons!49534) (toList!3450 (extractMap!792 (toList!3449 lm!1616)))) (= (_1!27945 (h!55207 (toList!3450 (extractMap!792 (toList!3449 lm!1616))))) key!3717)))))

(assert (=> d!1339418 (= (getValueByKey!687 (toList!3450 (extractMap!792 (toList!3449 lm!1616))) key!3717) e!2752609)))

(declare-fun b!4420817 () Bool)

(assert (=> b!4420817 (= e!2752610 (getValueByKey!687 (t!356596 (toList!3450 (extractMap!792 (toList!3449 lm!1616)))) key!3717))))

(declare-fun b!4420815 () Bool)

(assert (=> b!4420815 (= e!2752609 (Some!10700 (_2!27945 (h!55207 (toList!3450 (extractMap!792 (toList!3449 lm!1616)))))))))

(assert (= (and d!1339418 c!752476) b!4420815))

(assert (= (and d!1339418 (not c!752476)) b!4420816))

(assert (= (and b!4420816 c!752477) b!4420817))

(assert (= (and b!4420816 (not c!752477)) b!4420818))

(declare-fun m!5098225 () Bool)

(assert (=> b!4420817 m!5098225))

(assert (=> b!4420554 d!1339418))

(declare-fun d!1339420 () Bool)

(assert (=> d!1339420 (= (get!16138 (getValueByKey!688 (toList!3449 lm!1616) hash!366)) (v!43871 (getValueByKey!688 (toList!3449 lm!1616) hash!366)))))

(assert (=> d!1339366 d!1339420))

(declare-fun d!1339422 () Bool)

(declare-fun c!752478 () Bool)

(assert (=> d!1339422 (= c!752478 (and ((_ is Cons!49535) (toList!3449 lm!1616)) (= (_1!27946 (h!55208 (toList!3449 lm!1616))) hash!366)))))

(declare-fun e!2752611 () Option!10702)

(assert (=> d!1339422 (= (getValueByKey!688 (toList!3449 lm!1616) hash!366) e!2752611)))

(declare-fun b!4420820 () Bool)

(declare-fun e!2752612 () Option!10702)

(assert (=> b!4420820 (= e!2752611 e!2752612)))

(declare-fun c!752479 () Bool)

(assert (=> b!4420820 (= c!752479 (and ((_ is Cons!49535) (toList!3449 lm!1616)) (not (= (_1!27946 (h!55208 (toList!3449 lm!1616))) hash!366))))))

(declare-fun b!4420821 () Bool)

(assert (=> b!4420821 (= e!2752612 (getValueByKey!688 (t!356597 (toList!3449 lm!1616)) hash!366))))

(declare-fun b!4420819 () Bool)

(assert (=> b!4420819 (= e!2752611 (Some!10701 (_2!27946 (h!55208 (toList!3449 lm!1616)))))))

(declare-fun b!4420822 () Bool)

(assert (=> b!4420822 (= e!2752612 None!10701)))

(assert (= (and d!1339422 c!752478) b!4420819))

(assert (= (and d!1339422 (not c!752478)) b!4420820))

(assert (= (and b!4420820 c!752479) b!4420821))

(assert (= (and b!4420820 (not c!752479)) b!4420822))

(declare-fun m!5098227 () Bool)

(assert (=> b!4420821 m!5098227))

(assert (=> d!1339366 d!1339422))

(declare-fun d!1339424 () Bool)

(assert (=> d!1339424 (eq!389 (extractMap!792 (toList!3449 (+!1046 lt!1620777 (tuple2!49305 hash!366 newBucket!194)))) (+!1047 (extractMap!792 (toList!3449 lt!1620777)) (tuple2!49303 key!3717 newValue!93)))))

(assert (=> d!1339424 true))

(declare-fun _$9!197 () Unit!81302)

(assert (=> d!1339424 (= (choose!27849 lt!1620777 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220) _$9!197)))

(declare-fun bs!754685 () Bool)

(assert (= bs!754685 d!1339424))

(assert (=> bs!754685 m!5097761))

(assert (=> bs!754685 m!5098029))

(assert (=> bs!754685 m!5098023))

(assert (=> bs!754685 m!5097761))

(assert (=> bs!754685 m!5097753))

(assert (=> bs!754685 m!5098023))

(assert (=> bs!754685 m!5097753))

(assert (=> bs!754685 m!5098027))

(assert (=> d!1339332 d!1339424))

(declare-fun d!1339426 () Bool)

(declare-fun e!2752617 () Bool)

(assert (=> d!1339426 e!2752617))

(declare-fun res!1827017 () Bool)

(assert (=> d!1339426 (=> (not res!1827017) (not e!2752617))))

(declare-fun lt!1621073 () ListLongMap!2099)

(assert (=> d!1339426 (= res!1827017 (contains!12012 lt!1621073 (_1!27946 (tuple2!49305 hash!366 newBucket!194))))))

(declare-fun lt!1621074 () List!49659)

(assert (=> d!1339426 (= lt!1621073 (ListLongMap!2100 lt!1621074))))

(declare-fun lt!1621075 () Unit!81302)

(declare-fun lt!1621072 () Unit!81302)

(assert (=> d!1339426 (= lt!1621075 lt!1621072)))

(assert (=> d!1339426 (= (getValueByKey!688 lt!1621074 (_1!27946 (tuple2!49305 hash!366 newBucket!194))) (Some!10701 (_2!27946 (tuple2!49305 hash!366 newBucket!194))))))

(assert (=> d!1339426 (= lt!1621072 (lemmaContainsTupThenGetReturnValue!422 lt!1621074 (_1!27946 (tuple2!49305 hash!366 newBucket!194)) (_2!27946 (tuple2!49305 hash!366 newBucket!194))))))

(assert (=> d!1339426 (= lt!1621074 (insertStrictlySorted!248 (toList!3449 lt!1620777) (_1!27946 (tuple2!49305 hash!366 newBucket!194)) (_2!27946 (tuple2!49305 hash!366 newBucket!194))))))

(assert (=> d!1339426 (= (+!1046 lt!1620777 (tuple2!49305 hash!366 newBucket!194)) lt!1621073)))

(declare-fun b!4420827 () Bool)

(declare-fun res!1827016 () Bool)

(assert (=> b!4420827 (=> (not res!1827016) (not e!2752617))))

(assert (=> b!4420827 (= res!1827016 (= (getValueByKey!688 (toList!3449 lt!1621073) (_1!27946 (tuple2!49305 hash!366 newBucket!194))) (Some!10701 (_2!27946 (tuple2!49305 hash!366 newBucket!194)))))))

(declare-fun b!4420828 () Bool)

(assert (=> b!4420828 (= e!2752617 (contains!12017 (toList!3449 lt!1621073) (tuple2!49305 hash!366 newBucket!194)))))

(assert (= (and d!1339426 res!1827017) b!4420827))

(assert (= (and b!4420827 res!1827016) b!4420828))

(declare-fun m!5098229 () Bool)

(assert (=> d!1339426 m!5098229))

(declare-fun m!5098231 () Bool)

(assert (=> d!1339426 m!5098231))

(declare-fun m!5098233 () Bool)

(assert (=> d!1339426 m!5098233))

(declare-fun m!5098235 () Bool)

(assert (=> d!1339426 m!5098235))

(declare-fun m!5098237 () Bool)

(assert (=> b!4420827 m!5098237))

(declare-fun m!5098239 () Bool)

(assert (=> b!4420828 m!5098239))

(assert (=> d!1339332 d!1339426))

(declare-fun d!1339428 () Bool)

(declare-fun res!1827018 () Bool)

(declare-fun e!2752618 () Bool)

(assert (=> d!1339428 (=> res!1827018 e!2752618)))

(assert (=> d!1339428 (= res!1827018 ((_ is Nil!49535) (toList!3449 lt!1620777)))))

(assert (=> d!1339428 (= (forall!9528 (toList!3449 lt!1620777) lambda!152930) e!2752618)))

(declare-fun b!4420831 () Bool)

(declare-fun e!2752619 () Bool)

(assert (=> b!4420831 (= e!2752618 e!2752619)))

(declare-fun res!1827019 () Bool)

(assert (=> b!4420831 (=> (not res!1827019) (not e!2752619))))

(assert (=> b!4420831 (= res!1827019 (dynLambda!20828 lambda!152930 (h!55208 (toList!3449 lt!1620777))))))

(declare-fun b!4420832 () Bool)

(assert (=> b!4420832 (= e!2752619 (forall!9528 (t!356597 (toList!3449 lt!1620777)) lambda!152930))))

(assert (= (and d!1339428 (not res!1827018)) b!4420831))

(assert (= (and b!4420831 res!1827019) b!4420832))

(declare-fun b_lambda!142555 () Bool)

(assert (=> (not b_lambda!142555) (not b!4420831)))

(declare-fun m!5098241 () Bool)

(assert (=> b!4420831 m!5098241))

(declare-fun m!5098243 () Bool)

(assert (=> b!4420832 m!5098243))

(assert (=> d!1339332 d!1339428))

(declare-fun bs!754686 () Bool)

(declare-fun d!1339430 () Bool)

(assert (= bs!754686 (and d!1339430 start!430784)))

(declare-fun lambda!153008 () Int)

(assert (=> bs!754686 (= lambda!153008 lambda!152904)))

(declare-fun bs!754687 () Bool)

(assert (= bs!754687 (and d!1339430 d!1339350)))

(assert (=> bs!754687 (= lambda!153008 lambda!152931)))

(declare-fun bs!754688 () Bool)

(assert (= bs!754688 (and d!1339430 d!1339370)))

(assert (=> bs!754688 (= lambda!153008 lambda!152934)))

(declare-fun bs!754689 () Bool)

(assert (= bs!754689 (and d!1339430 d!1339284)))

(assert (=> bs!754689 (= lambda!153008 lambda!152916)))

(declare-fun bs!754690 () Bool)

(assert (= bs!754690 (and d!1339430 d!1339330)))

(assert (=> bs!754690 (= lambda!153008 lambda!152924)))

(declare-fun bs!754691 () Bool)

(assert (= bs!754691 (and d!1339430 d!1339406)))

(assert (=> bs!754691 (= lambda!153008 lambda!152979)))

(declare-fun bs!754692 () Bool)

(assert (= bs!754692 (and d!1339430 d!1339332)))

(assert (=> bs!754692 (= lambda!153008 lambda!152930)))

(declare-fun bs!754693 () Bool)

(assert (= bs!754693 (and d!1339430 d!1339376)))

(assert (=> bs!754693 (not (= lambda!153008 lambda!152937))))

(declare-fun bs!754694 () Bool)

(assert (= bs!754694 (and d!1339430 d!1339328)))

(assert (=> bs!754694 (= lambda!153008 lambda!152923)))

(declare-fun lt!1621076 () ListMap!2693)

(assert (=> d!1339430 (invariantList!793 (toList!3450 lt!1621076))))

(declare-fun e!2752620 () ListMap!2693)

(assert (=> d!1339430 (= lt!1621076 e!2752620)))

(declare-fun c!752480 () Bool)

(assert (=> d!1339430 (= c!752480 ((_ is Cons!49535) (toList!3449 (+!1046 lt!1620777 (tuple2!49305 hash!366 newBucket!194)))))))

(assert (=> d!1339430 (forall!9528 (toList!3449 (+!1046 lt!1620777 (tuple2!49305 hash!366 newBucket!194))) lambda!153008)))

(assert (=> d!1339430 (= (extractMap!792 (toList!3449 (+!1046 lt!1620777 (tuple2!49305 hash!366 newBucket!194)))) lt!1621076)))

(declare-fun b!4420833 () Bool)

(assert (=> b!4420833 (= e!2752620 (addToMapMapFromBucket!368 (_2!27946 (h!55208 (toList!3449 (+!1046 lt!1620777 (tuple2!49305 hash!366 newBucket!194))))) (extractMap!792 (t!356597 (toList!3449 (+!1046 lt!1620777 (tuple2!49305 hash!366 newBucket!194)))))))))

(declare-fun b!4420834 () Bool)

(assert (=> b!4420834 (= e!2752620 (ListMap!2694 Nil!49534))))

(assert (= (and d!1339430 c!752480) b!4420833))

(assert (= (and d!1339430 (not c!752480)) b!4420834))

(declare-fun m!5098245 () Bool)

(assert (=> d!1339430 m!5098245))

(declare-fun m!5098247 () Bool)

(assert (=> d!1339430 m!5098247))

(declare-fun m!5098249 () Bool)

(assert (=> b!4420833 m!5098249))

(assert (=> b!4420833 m!5098249))

(declare-fun m!5098251 () Bool)

(assert (=> b!4420833 m!5098251))

(assert (=> d!1339332 d!1339430))

(assert (=> d!1339332 d!1339330))

(declare-fun d!1339432 () Bool)

(assert (=> d!1339432 (= (eq!389 (extractMap!792 (toList!3449 (+!1046 lt!1620777 (tuple2!49305 hash!366 newBucket!194)))) (+!1047 (extractMap!792 (toList!3449 lt!1620777)) (tuple2!49303 key!3717 newValue!93))) (= (content!7934 (toList!3450 (extractMap!792 (toList!3449 (+!1046 lt!1620777 (tuple2!49305 hash!366 newBucket!194)))))) (content!7934 (toList!3450 (+!1047 (extractMap!792 (toList!3449 lt!1620777)) (tuple2!49303 key!3717 newValue!93))))))))

(declare-fun bs!754695 () Bool)

(assert (= bs!754695 d!1339432))

(declare-fun m!5098253 () Bool)

(assert (=> bs!754695 m!5098253))

(assert (=> bs!754695 m!5098063))

(assert (=> d!1339332 d!1339432))

(assert (=> d!1339332 d!1339310))

(declare-fun d!1339434 () Bool)

(declare-fun noDuplicatedKeys!169 (List!49658) Bool)

(assert (=> d!1339434 (= (invariantList!793 (toList!3450 lt!1620933)) (noDuplicatedKeys!169 (toList!3450 lt!1620933)))))

(declare-fun bs!754696 () Bool)

(assert (= bs!754696 d!1339434))

(declare-fun m!5098255 () Bool)

(assert (=> bs!754696 m!5098255))

(assert (=> d!1339350 d!1339434))

(declare-fun d!1339436 () Bool)

(declare-fun res!1827020 () Bool)

(declare-fun e!2752621 () Bool)

(assert (=> d!1339436 (=> res!1827020 e!2752621)))

(assert (=> d!1339436 (= res!1827020 ((_ is Nil!49535) (toList!3449 (+!1046 lt!1620777 lt!1620774))))))

(assert (=> d!1339436 (= (forall!9528 (toList!3449 (+!1046 lt!1620777 lt!1620774)) lambda!152931) e!2752621)))

(declare-fun b!4420835 () Bool)

(declare-fun e!2752622 () Bool)

(assert (=> b!4420835 (= e!2752621 e!2752622)))

(declare-fun res!1827021 () Bool)

(assert (=> b!4420835 (=> (not res!1827021) (not e!2752622))))

(assert (=> b!4420835 (= res!1827021 (dynLambda!20828 lambda!152931 (h!55208 (toList!3449 (+!1046 lt!1620777 lt!1620774)))))))

(declare-fun b!4420836 () Bool)

(assert (=> b!4420836 (= e!2752622 (forall!9528 (t!356597 (toList!3449 (+!1046 lt!1620777 lt!1620774))) lambda!152931))))

(assert (= (and d!1339436 (not res!1827020)) b!4420835))

(assert (= (and b!4420835 res!1827021) b!4420836))

(declare-fun b_lambda!142557 () Bool)

(assert (=> (not b_lambda!142557) (not b!4420835)))

(declare-fun m!5098257 () Bool)

(assert (=> b!4420835 m!5098257))

(declare-fun m!5098259 () Bool)

(assert (=> b!4420836 m!5098259))

(assert (=> d!1339350 d!1339436))

(declare-fun b!4420840 () Bool)

(declare-fun e!2752624 () Option!10701)

(assert (=> b!4420840 (= e!2752624 None!10700)))

(declare-fun b!4420838 () Bool)

(declare-fun e!2752623 () Option!10701)

(assert (=> b!4420838 (= e!2752623 e!2752624)))

(declare-fun c!752482 () Bool)

(assert (=> b!4420838 (= c!752482 (and ((_ is Cons!49534) (toList!3450 lt!1620915)) (not (= (_1!27945 (h!55207 (toList!3450 lt!1620915))) (_1!27945 (tuple2!49303 key!3717 newValue!93))))))))

(declare-fun d!1339438 () Bool)

(declare-fun c!752481 () Bool)

(assert (=> d!1339438 (= c!752481 (and ((_ is Cons!49534) (toList!3450 lt!1620915)) (= (_1!27945 (h!55207 (toList!3450 lt!1620915))) (_1!27945 (tuple2!49303 key!3717 newValue!93)))))))

(assert (=> d!1339438 (= (getValueByKey!687 (toList!3450 lt!1620915) (_1!27945 (tuple2!49303 key!3717 newValue!93))) e!2752623)))

(declare-fun b!4420839 () Bool)

(assert (=> b!4420839 (= e!2752624 (getValueByKey!687 (t!356596 (toList!3450 lt!1620915)) (_1!27945 (tuple2!49303 key!3717 newValue!93))))))

(declare-fun b!4420837 () Bool)

(assert (=> b!4420837 (= e!2752623 (Some!10700 (_2!27945 (h!55207 (toList!3450 lt!1620915)))))))

(assert (= (and d!1339438 c!752481) b!4420837))

(assert (= (and d!1339438 (not c!752481)) b!4420838))

(assert (= (and b!4420838 c!752482) b!4420839))

(assert (= (and b!4420838 (not c!752482)) b!4420840))

(declare-fun m!5098261 () Bool)

(assert (=> b!4420839 m!5098261))

(assert (=> b!4420646 d!1339438))

(declare-fun d!1339440 () Bool)

(declare-fun res!1827022 () Bool)

(declare-fun e!2752625 () Bool)

(assert (=> d!1339440 (=> res!1827022 e!2752625)))

(assert (=> d!1339440 (= res!1827022 (not ((_ is Cons!49534) (t!356596 newBucket!194))))))

(assert (=> d!1339440 (= (noDuplicateKeys!731 (t!356596 newBucket!194)) e!2752625)))

(declare-fun b!4420841 () Bool)

(declare-fun e!2752626 () Bool)

(assert (=> b!4420841 (= e!2752625 e!2752626)))

(declare-fun res!1827023 () Bool)

(assert (=> b!4420841 (=> (not res!1827023) (not e!2752626))))

(assert (=> b!4420841 (= res!1827023 (not (containsKey!1080 (t!356596 (t!356596 newBucket!194)) (_1!27945 (h!55207 (t!356596 newBucket!194))))))))

(declare-fun b!4420842 () Bool)

(assert (=> b!4420842 (= e!2752626 (noDuplicateKeys!731 (t!356596 (t!356596 newBucket!194))))))

(assert (= (and d!1339440 (not res!1827022)) b!4420841))

(assert (= (and b!4420841 res!1827023) b!4420842))

(declare-fun m!5098263 () Bool)

(assert (=> b!4420841 m!5098263))

(declare-fun m!5098265 () Bool)

(assert (=> b!4420842 m!5098265))

(assert (=> b!4420715 d!1339440))

(declare-fun bs!754697 () Bool)

(declare-fun b!4420845 () Bool)

(assert (= bs!754697 (and b!4420845 d!1339386)))

(declare-fun lambda!153009 () Int)

(assert (=> bs!754697 (= (= (extractMap!792 (t!356597 (toList!3449 (+!1046 lt!1620777 lt!1620774)))) lt!1621025) (= lambda!153009 lambda!152978))))

(declare-fun bs!754698 () Bool)

(assert (= bs!754698 (and b!4420845 b!4420782)))

(assert (=> bs!754698 (= (= (extractMap!792 (t!356597 (toList!3449 (+!1046 lt!1620777 lt!1620774)))) lt!1621014) (= lambda!153009 lambda!152977))))

(declare-fun bs!754699 () Bool)

(assert (= bs!754699 (and b!4420845 b!4420780)))

(assert (=> bs!754699 (= (= (extractMap!792 (t!356597 (toList!3449 (+!1046 lt!1620777 lt!1620774)))) (extractMap!792 (t!356597 (toList!3449 lt!1620777)))) (= lambda!153009 lambda!152975))))

(declare-fun bs!754700 () Bool)

(assert (= bs!754700 (and b!4420845 d!1339378)))

(assert (=> bs!754700 (not (= lambda!153009 lambda!152940))))

(assert (=> bs!754698 (= (= (extractMap!792 (t!356597 (toList!3449 (+!1046 lt!1620777 lt!1620774)))) (extractMap!792 (t!356597 (toList!3449 lt!1620777)))) (= lambda!153009 lambda!152976))))

(assert (=> b!4420845 true))

(declare-fun bs!754701 () Bool)

(declare-fun b!4420847 () Bool)

(assert (= bs!754701 (and b!4420847 d!1339386)))

(declare-fun lambda!153011 () Int)

(assert (=> bs!754701 (= (= (extractMap!792 (t!356597 (toList!3449 (+!1046 lt!1620777 lt!1620774)))) lt!1621025) (= lambda!153011 lambda!152978))))

(declare-fun bs!754702 () Bool)

(assert (= bs!754702 (and b!4420847 b!4420782)))

(assert (=> bs!754702 (= (= (extractMap!792 (t!356597 (toList!3449 (+!1046 lt!1620777 lt!1620774)))) lt!1621014) (= lambda!153011 lambda!152977))))

(declare-fun bs!754704 () Bool)

(assert (= bs!754704 (and b!4420847 b!4420780)))

(assert (=> bs!754704 (= (= (extractMap!792 (t!356597 (toList!3449 (+!1046 lt!1620777 lt!1620774)))) (extractMap!792 (t!356597 (toList!3449 lt!1620777)))) (= lambda!153011 lambda!152975))))

(declare-fun bs!754705 () Bool)

(assert (= bs!754705 (and b!4420847 d!1339378)))

(assert (=> bs!754705 (not (= lambda!153011 lambda!152940))))

(declare-fun bs!754706 () Bool)

(assert (= bs!754706 (and b!4420847 b!4420845)))

(assert (=> bs!754706 (= lambda!153011 lambda!153009)))

(assert (=> bs!754702 (= (= (extractMap!792 (t!356597 (toList!3449 (+!1046 lt!1620777 lt!1620774)))) (extractMap!792 (t!356597 (toList!3449 lt!1620777)))) (= lambda!153011 lambda!152976))))

(assert (=> b!4420847 true))

(declare-fun lt!1621083 () ListMap!2693)

(declare-fun lambda!153013 () Int)

(assert (=> bs!754701 (= (= lt!1621083 lt!1621025) (= lambda!153013 lambda!152978))))

(assert (=> b!4420847 (= (= lt!1621083 (extractMap!792 (t!356597 (toList!3449 (+!1046 lt!1620777 lt!1620774))))) (= lambda!153013 lambda!153011))))

(assert (=> bs!754702 (= (= lt!1621083 lt!1621014) (= lambda!153013 lambda!152977))))

(assert (=> bs!754704 (= (= lt!1621083 (extractMap!792 (t!356597 (toList!3449 lt!1620777)))) (= lambda!153013 lambda!152975))))

(assert (=> bs!754705 (not (= lambda!153013 lambda!152940))))

(assert (=> bs!754706 (= (= lt!1621083 (extractMap!792 (t!356597 (toList!3449 (+!1046 lt!1620777 lt!1620774))))) (= lambda!153013 lambda!153009))))

(assert (=> bs!754702 (= (= lt!1621083 (extractMap!792 (t!356597 (toList!3449 lt!1620777)))) (= lambda!153013 lambda!152976))))

(assert (=> b!4420847 true))

(declare-fun bs!754709 () Bool)

(declare-fun d!1339442 () Bool)

(assert (= bs!754709 (and d!1339442 d!1339386)))

(declare-fun lambda!153015 () Int)

(declare-fun lt!1621094 () ListMap!2693)

(assert (=> bs!754709 (= (= lt!1621094 lt!1621025) (= lambda!153015 lambda!152978))))

(declare-fun bs!754710 () Bool)

(assert (= bs!754710 (and d!1339442 b!4420847)))

(assert (=> bs!754710 (= (= lt!1621094 (extractMap!792 (t!356597 (toList!3449 (+!1046 lt!1620777 lt!1620774))))) (= lambda!153015 lambda!153011))))

(declare-fun bs!754712 () Bool)

(assert (= bs!754712 (and d!1339442 b!4420782)))

(assert (=> bs!754712 (= (= lt!1621094 lt!1621014) (= lambda!153015 lambda!152977))))

(declare-fun bs!754714 () Bool)

(assert (= bs!754714 (and d!1339442 b!4420780)))

(assert (=> bs!754714 (= (= lt!1621094 (extractMap!792 (t!356597 (toList!3449 lt!1620777)))) (= lambda!153015 lambda!152975))))

(declare-fun bs!754715 () Bool)

(assert (= bs!754715 (and d!1339442 d!1339378)))

(assert (=> bs!754715 (not (= lambda!153015 lambda!152940))))

(declare-fun bs!754717 () Bool)

(assert (= bs!754717 (and d!1339442 b!4420845)))

(assert (=> bs!754717 (= (= lt!1621094 (extractMap!792 (t!356597 (toList!3449 (+!1046 lt!1620777 lt!1620774))))) (= lambda!153015 lambda!153009))))

(assert (=> bs!754712 (= (= lt!1621094 (extractMap!792 (t!356597 (toList!3449 lt!1620777)))) (= lambda!153015 lambda!152976))))

(assert (=> bs!754710 (= (= lt!1621094 lt!1621083) (= lambda!153015 lambda!153013))))

(assert (=> d!1339442 true))

(declare-fun b!4420843 () Bool)

(declare-fun res!1827026 () Bool)

(declare-fun e!2752627 () Bool)

(assert (=> b!4420843 (=> (not res!1827026) (not e!2752627))))

(assert (=> b!4420843 (= res!1827026 (forall!9530 (toList!3450 (extractMap!792 (t!356597 (toList!3449 (+!1046 lt!1620777 lt!1620774))))) lambda!153015))))

(declare-fun bm!307557 () Bool)

(declare-fun call!307562 () Bool)

(declare-fun c!752483 () Bool)

(declare-fun lt!1621097 () ListMap!2693)

(assert (=> bm!307557 (= call!307562 (forall!9530 (ite c!752483 (toList!3450 (extractMap!792 (t!356597 (toList!3449 (+!1046 lt!1620777 lt!1620774))))) (toList!3450 lt!1621097)) (ite c!752483 lambda!153009 lambda!153013)))))

(declare-fun b!4420844 () Bool)

(declare-fun e!2752629 () Bool)

(assert (=> b!4420844 (= e!2752629 (forall!9530 (toList!3450 (extractMap!792 (t!356597 (toList!3449 (+!1046 lt!1620777 lt!1620774))))) lambda!153013))))

(declare-fun bm!307558 () Bool)

(declare-fun call!307564 () Unit!81302)

(assert (=> bm!307558 (= call!307564 (lemmaContainsAllItsOwnKeys!164 (extractMap!792 (t!356597 (toList!3449 (+!1046 lt!1620777 lt!1620774))))))))

(assert (=> d!1339442 e!2752627))

(declare-fun res!1827025 () Bool)

(assert (=> d!1339442 (=> (not res!1827025) (not e!2752627))))

(assert (=> d!1339442 (= res!1827025 (forall!9530 (_2!27946 (h!55208 (toList!3449 (+!1046 lt!1620777 lt!1620774)))) lambda!153015))))

(declare-fun e!2752628 () ListMap!2693)

(assert (=> d!1339442 (= lt!1621094 e!2752628)))

(assert (=> d!1339442 (= c!752483 ((_ is Nil!49534) (_2!27946 (h!55208 (toList!3449 (+!1046 lt!1620777 lt!1620774))))))))

(assert (=> d!1339442 (noDuplicateKeys!731 (_2!27946 (h!55208 (toList!3449 (+!1046 lt!1620777 lt!1620774)))))))

(assert (=> d!1339442 (= (addToMapMapFromBucket!368 (_2!27946 (h!55208 (toList!3449 (+!1046 lt!1620777 lt!1620774)))) (extractMap!792 (t!356597 (toList!3449 (+!1046 lt!1620777 lt!1620774))))) lt!1621094)))

(assert (=> b!4420845 (= e!2752628 (extractMap!792 (t!356597 (toList!3449 (+!1046 lt!1620777 lt!1620774)))))))

(declare-fun lt!1621081 () Unit!81302)

(assert (=> b!4420845 (= lt!1621081 call!307564)))

(declare-fun call!307563 () Bool)

(assert (=> b!4420845 call!307563))

(declare-fun lt!1621089 () Unit!81302)

(assert (=> b!4420845 (= lt!1621089 lt!1621081)))

(assert (=> b!4420845 call!307562))

(declare-fun lt!1621077 () Unit!81302)

(declare-fun Unit!81337 () Unit!81302)

(assert (=> b!4420845 (= lt!1621077 Unit!81337)))

(declare-fun bm!307559 () Bool)

(assert (=> bm!307559 (= call!307563 (forall!9530 (toList!3450 (extractMap!792 (t!356597 (toList!3449 (+!1046 lt!1620777 lt!1620774))))) (ite c!752483 lambda!153009 lambda!153011)))))

(declare-fun b!4420846 () Bool)

(assert (=> b!4420846 (= e!2752627 (invariantList!793 (toList!3450 lt!1621094)))))

(assert (=> b!4420847 (= e!2752628 lt!1621083)))

(assert (=> b!4420847 (= lt!1621097 (+!1047 (extractMap!792 (t!356597 (toList!3449 (+!1046 lt!1620777 lt!1620774)))) (h!55207 (_2!27946 (h!55208 (toList!3449 (+!1046 lt!1620777 lt!1620774)))))))))

(assert (=> b!4420847 (= lt!1621083 (addToMapMapFromBucket!368 (t!356596 (_2!27946 (h!55208 (toList!3449 (+!1046 lt!1620777 lt!1620774))))) (+!1047 (extractMap!792 (t!356597 (toList!3449 (+!1046 lt!1620777 lt!1620774)))) (h!55207 (_2!27946 (h!55208 (toList!3449 (+!1046 lt!1620777 lt!1620774))))))))))

(declare-fun lt!1621095 () Unit!81302)

(assert (=> b!4420847 (= lt!1621095 call!307564)))

(assert (=> b!4420847 call!307563))

(declare-fun lt!1621090 () Unit!81302)

(assert (=> b!4420847 (= lt!1621090 lt!1621095)))

(assert (=> b!4420847 (forall!9530 (toList!3450 lt!1621097) lambda!153013)))

(declare-fun lt!1621078 () Unit!81302)

(declare-fun Unit!81338 () Unit!81302)

(assert (=> b!4420847 (= lt!1621078 Unit!81338)))

(assert (=> b!4420847 (forall!9530 (t!356596 (_2!27946 (h!55208 (toList!3449 (+!1046 lt!1620777 lt!1620774))))) lambda!153013)))

(declare-fun lt!1621085 () Unit!81302)

(declare-fun Unit!81339 () Unit!81302)

(assert (=> b!4420847 (= lt!1621085 Unit!81339)))

(declare-fun lt!1621087 () Unit!81302)

(declare-fun Unit!81340 () Unit!81302)

(assert (=> b!4420847 (= lt!1621087 Unit!81340)))

(declare-fun lt!1621080 () Unit!81302)

(assert (=> b!4420847 (= lt!1621080 (forallContained!2078 (toList!3450 lt!1621097) lambda!153013 (h!55207 (_2!27946 (h!55208 (toList!3449 (+!1046 lt!1620777 lt!1620774)))))))))

(assert (=> b!4420847 (contains!12011 lt!1621097 (_1!27945 (h!55207 (_2!27946 (h!55208 (toList!3449 (+!1046 lt!1620777 lt!1620774)))))))))

(declare-fun lt!1621093 () Unit!81302)

(declare-fun Unit!81341 () Unit!81302)

(assert (=> b!4420847 (= lt!1621093 Unit!81341)))

(assert (=> b!4420847 (contains!12011 lt!1621083 (_1!27945 (h!55207 (_2!27946 (h!55208 (toList!3449 (+!1046 lt!1620777 lt!1620774)))))))))

(declare-fun lt!1621086 () Unit!81302)

(declare-fun Unit!81343 () Unit!81302)

(assert (=> b!4420847 (= lt!1621086 Unit!81343)))

(assert (=> b!4420847 (forall!9530 (_2!27946 (h!55208 (toList!3449 (+!1046 lt!1620777 lt!1620774)))) lambda!153013)))

(declare-fun lt!1621092 () Unit!81302)

(declare-fun Unit!81344 () Unit!81302)

(assert (=> b!4420847 (= lt!1621092 Unit!81344)))

(assert (=> b!4420847 call!307562))

(declare-fun lt!1621091 () Unit!81302)

(declare-fun Unit!81345 () Unit!81302)

(assert (=> b!4420847 (= lt!1621091 Unit!81345)))

(declare-fun lt!1621084 () Unit!81302)

(declare-fun Unit!81346 () Unit!81302)

(assert (=> b!4420847 (= lt!1621084 Unit!81346)))

(declare-fun lt!1621096 () Unit!81302)

(assert (=> b!4420847 (= lt!1621096 (addForallContainsKeyThenBeforeAdding!164 (extractMap!792 (t!356597 (toList!3449 (+!1046 lt!1620777 lt!1620774)))) lt!1621083 (_1!27945 (h!55207 (_2!27946 (h!55208 (toList!3449 (+!1046 lt!1620777 lt!1620774)))))) (_2!27945 (h!55207 (_2!27946 (h!55208 (toList!3449 (+!1046 lt!1620777 lt!1620774))))))))))

(assert (=> b!4420847 (forall!9530 (toList!3450 (extractMap!792 (t!356597 (toList!3449 (+!1046 lt!1620777 lt!1620774))))) lambda!153013)))

(declare-fun lt!1621079 () Unit!81302)

(assert (=> b!4420847 (= lt!1621079 lt!1621096)))

(assert (=> b!4420847 (forall!9530 (toList!3450 (extractMap!792 (t!356597 (toList!3449 (+!1046 lt!1620777 lt!1620774))))) lambda!153013)))

(declare-fun lt!1621082 () Unit!81302)

(declare-fun Unit!81347 () Unit!81302)

(assert (=> b!4420847 (= lt!1621082 Unit!81347)))

(declare-fun res!1827024 () Bool)

(assert (=> b!4420847 (= res!1827024 (forall!9530 (_2!27946 (h!55208 (toList!3449 (+!1046 lt!1620777 lt!1620774)))) lambda!153013))))

(assert (=> b!4420847 (=> (not res!1827024) (not e!2752629))))

(assert (=> b!4420847 e!2752629))

(declare-fun lt!1621088 () Unit!81302)

(declare-fun Unit!81348 () Unit!81302)

(assert (=> b!4420847 (= lt!1621088 Unit!81348)))

(assert (= (and d!1339442 c!752483) b!4420845))

(assert (= (and d!1339442 (not c!752483)) b!4420847))

(assert (= (and b!4420847 res!1827024) b!4420844))

(assert (= (or b!4420845 b!4420847) bm!307558))

(assert (= (or b!4420845 b!4420847) bm!307559))

(assert (= (or b!4420845 b!4420847) bm!307557))

(assert (= (and d!1339442 res!1827025) b!4420843))

(assert (= (and b!4420843 res!1827026) b!4420846))

(assert (=> b!4420847 m!5098057))

(declare-fun m!5098269 () Bool)

(assert (=> b!4420847 m!5098269))

(declare-fun m!5098275 () Bool)

(assert (=> b!4420847 m!5098275))

(declare-fun m!5098279 () Bool)

(assert (=> b!4420847 m!5098279))

(declare-fun m!5098283 () Bool)

(assert (=> b!4420847 m!5098283))

(declare-fun m!5098287 () Bool)

(assert (=> b!4420847 m!5098287))

(declare-fun m!5098291 () Bool)

(assert (=> b!4420847 m!5098291))

(declare-fun m!5098295 () Bool)

(assert (=> b!4420847 m!5098295))

(assert (=> b!4420847 m!5098057))

(assert (=> b!4420847 m!5098275))

(declare-fun m!5098299 () Bool)

(assert (=> b!4420847 m!5098299))

(assert (=> b!4420847 m!5098299))

(assert (=> b!4420847 m!5098287))

(declare-fun m!5098305 () Bool)

(assert (=> b!4420847 m!5098305))

(declare-fun m!5098307 () Bool)

(assert (=> b!4420847 m!5098307))

(assert (=> bm!307558 m!5098057))

(declare-fun m!5098309 () Bool)

(assert (=> bm!307558 m!5098309))

(declare-fun m!5098313 () Bool)

(assert (=> bm!307557 m!5098313))

(declare-fun m!5098317 () Bool)

(assert (=> bm!307559 m!5098317))

(declare-fun m!5098321 () Bool)

(assert (=> b!4420846 m!5098321))

(declare-fun m!5098325 () Bool)

(assert (=> d!1339442 m!5098325))

(declare-fun m!5098329 () Bool)

(assert (=> d!1339442 m!5098329))

(declare-fun m!5098331 () Bool)

(assert (=> b!4420843 m!5098331))

(assert (=> b!4420844 m!5098299))

(assert (=> b!4420685 d!1339442))

(declare-fun bs!754718 () Bool)

(declare-fun d!1339444 () Bool)

(assert (= bs!754718 (and d!1339444 start!430784)))

(declare-fun lambda!153017 () Int)

(assert (=> bs!754718 (= lambda!153017 lambda!152904)))

(declare-fun bs!754719 () Bool)

(assert (= bs!754719 (and d!1339444 d!1339350)))

(assert (=> bs!754719 (= lambda!153017 lambda!152931)))

(declare-fun bs!754721 () Bool)

(assert (= bs!754721 (and d!1339444 d!1339370)))

(assert (=> bs!754721 (= lambda!153017 lambda!152934)))

(declare-fun bs!754723 () Bool)

(assert (= bs!754723 (and d!1339444 d!1339430)))

(assert (=> bs!754723 (= lambda!153017 lambda!153008)))

(declare-fun bs!754724 () Bool)

(assert (= bs!754724 (and d!1339444 d!1339284)))

(assert (=> bs!754724 (= lambda!153017 lambda!152916)))

(declare-fun bs!754726 () Bool)

(assert (= bs!754726 (and d!1339444 d!1339330)))

(assert (=> bs!754726 (= lambda!153017 lambda!152924)))

(declare-fun bs!754728 () Bool)

(assert (= bs!754728 (and d!1339444 d!1339406)))

(assert (=> bs!754728 (= lambda!153017 lambda!152979)))

(declare-fun bs!754730 () Bool)

(assert (= bs!754730 (and d!1339444 d!1339332)))

(assert (=> bs!754730 (= lambda!153017 lambda!152930)))

(declare-fun bs!754732 () Bool)

(assert (= bs!754732 (and d!1339444 d!1339376)))

(assert (=> bs!754732 (not (= lambda!153017 lambda!152937))))

(declare-fun bs!754734 () Bool)

(assert (= bs!754734 (and d!1339444 d!1339328)))

(assert (=> bs!754734 (= lambda!153017 lambda!152923)))

(declare-fun lt!1621119 () ListMap!2693)

(assert (=> d!1339444 (invariantList!793 (toList!3450 lt!1621119))))

(declare-fun e!2752633 () ListMap!2693)

(assert (=> d!1339444 (= lt!1621119 e!2752633)))

(declare-fun c!752485 () Bool)

(assert (=> d!1339444 (= c!752485 ((_ is Cons!49535) (t!356597 (toList!3449 (+!1046 lt!1620777 lt!1620774)))))))

(assert (=> d!1339444 (forall!9528 (t!356597 (toList!3449 (+!1046 lt!1620777 lt!1620774))) lambda!153017)))

(assert (=> d!1339444 (= (extractMap!792 (t!356597 (toList!3449 (+!1046 lt!1620777 lt!1620774)))) lt!1621119)))

(declare-fun b!4420855 () Bool)

(assert (=> b!4420855 (= e!2752633 (addToMapMapFromBucket!368 (_2!27946 (h!55208 (t!356597 (toList!3449 (+!1046 lt!1620777 lt!1620774))))) (extractMap!792 (t!356597 (t!356597 (toList!3449 (+!1046 lt!1620777 lt!1620774)))))))))

(declare-fun b!4420856 () Bool)

(assert (=> b!4420856 (= e!2752633 (ListMap!2694 Nil!49534))))

(assert (= (and d!1339444 c!752485) b!4420855))

(assert (= (and d!1339444 (not c!752485)) b!4420856))

(declare-fun m!5098335 () Bool)

(assert (=> d!1339444 m!5098335))

(declare-fun m!5098337 () Bool)

(assert (=> d!1339444 m!5098337))

(declare-fun m!5098339 () Bool)

(assert (=> b!4420855 m!5098339))

(assert (=> b!4420855 m!5098339))

(declare-fun m!5098345 () Bool)

(assert (=> b!4420855 m!5098345))

(assert (=> b!4420685 d!1339444))

(declare-fun b!4420886 () Bool)

(assert (=> b!4420886 true))

(declare-fun d!1339448 () Bool)

(declare-fun e!2752651 () Bool)

(assert (=> d!1339448 e!2752651))

(declare-fun res!1827044 () Bool)

(assert (=> d!1339448 (=> (not res!1827044) (not e!2752651))))

(declare-fun lt!1621124 () List!49661)

(declare-fun noDuplicate!654 (List!49661) Bool)

(assert (=> d!1339448 (= res!1827044 (noDuplicate!654 lt!1621124))))

(assert (=> d!1339448 (= lt!1621124 (getKeysList!241 (toList!3450 (extractMap!792 (toList!3449 lm!1616)))))))

(assert (=> d!1339448 (= (keys!16899 (extractMap!792 (toList!3449 lm!1616))) lt!1621124)))

(declare-fun b!4420885 () Bool)

(declare-fun res!1827045 () Bool)

(assert (=> b!4420885 (=> (not res!1827045) (not e!2752651))))

(declare-fun length!164 (List!49661) Int)

(declare-fun length!165 (List!49658) Int)

(assert (=> b!4420885 (= res!1827045 (= (length!164 lt!1621124) (length!165 (toList!3450 (extractMap!792 (toList!3449 lm!1616))))))))

(declare-fun res!1827046 () Bool)

(assert (=> b!4420886 (=> (not res!1827046) (not e!2752651))))

(declare-fun lambda!153023 () Int)

(declare-fun forall!9532 (List!49661 Int) Bool)

(assert (=> b!4420886 (= res!1827046 (forall!9532 lt!1621124 lambda!153023))))

(declare-fun lambda!153024 () Int)

(declare-fun b!4420887 () Bool)

(declare-fun content!7936 (List!49661) (InoxSet K!10900))

(declare-fun map!10817 (List!49658 Int) List!49661)

(assert (=> b!4420887 (= e!2752651 (= (content!7936 lt!1621124) (content!7936 (map!10817 (toList!3450 (extractMap!792 (toList!3449 lm!1616))) lambda!153024))))))

(assert (= (and d!1339448 res!1827044) b!4420885))

(assert (= (and b!4420885 res!1827045) b!4420886))

(assert (= (and b!4420886 res!1827046) b!4420887))

(declare-fun m!5098365 () Bool)

(assert (=> d!1339448 m!5098365))

(assert (=> d!1339448 m!5097817))

(declare-fun m!5098369 () Bool)

(assert (=> b!4420885 m!5098369))

(declare-fun m!5098371 () Bool)

(assert (=> b!4420885 m!5098371))

(declare-fun m!5098375 () Bool)

(assert (=> b!4420886 m!5098375))

(declare-fun m!5098377 () Bool)

(assert (=> b!4420887 m!5098377))

(declare-fun m!5098379 () Bool)

(assert (=> b!4420887 m!5098379))

(assert (=> b!4420887 m!5098379))

(declare-fun m!5098381 () Bool)

(assert (=> b!4420887 m!5098381))

(assert (=> b!4420558 d!1339448))

(declare-fun d!1339462 () Bool)

(declare-fun lt!1621127 () Bool)

(declare-fun content!7937 (List!49659) (InoxSet tuple2!49304))

(assert (=> d!1339462 (= lt!1621127 (select (content!7937 (toList!3449 lt!1620864)) lt!1620774))))

(declare-fun e!2752663 () Bool)

(assert (=> d!1339462 (= lt!1621127 e!2752663)))

(declare-fun res!1827058 () Bool)

(assert (=> d!1339462 (=> (not res!1827058) (not e!2752663))))

(assert (=> d!1339462 (= res!1827058 ((_ is Cons!49535) (toList!3449 lt!1620864)))))

(assert (=> d!1339462 (= (contains!12017 (toList!3449 lt!1620864) lt!1620774) lt!1621127)))

(declare-fun b!4420900 () Bool)

(declare-fun e!2752662 () Bool)

(assert (=> b!4420900 (= e!2752663 e!2752662)))

(declare-fun res!1827057 () Bool)

(assert (=> b!4420900 (=> res!1827057 e!2752662)))

(assert (=> b!4420900 (= res!1827057 (= (h!55208 (toList!3449 lt!1620864)) lt!1620774))))

(declare-fun b!4420901 () Bool)

(assert (=> b!4420901 (= e!2752662 (contains!12017 (t!356597 (toList!3449 lt!1620864)) lt!1620774))))

(assert (= (and d!1339462 res!1827058) b!4420900))

(assert (= (and b!4420900 (not res!1827057)) b!4420901))

(declare-fun m!5098387 () Bool)

(assert (=> d!1339462 m!5098387))

(declare-fun m!5098389 () Bool)

(assert (=> d!1339462 m!5098389))

(declare-fun m!5098391 () Bool)

(assert (=> b!4420901 m!5098391))

(assert (=> b!4420614 d!1339462))

(declare-fun d!1339466 () Bool)

(assert (=> d!1339466 (= (head!9188 (toList!3449 lm!1616)) (h!55208 (toList!3449 lm!1616)))))

(assert (=> d!1339304 d!1339466))

(declare-fun d!1339468 () Bool)

(declare-fun res!1827063 () Bool)

(declare-fun e!2752668 () Bool)

(assert (=> d!1339468 (=> res!1827063 e!2752668)))

(assert (=> d!1339468 (= res!1827063 (and ((_ is Cons!49534) (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616))))) (= (_1!27945 (h!55207 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))))) key!3717)))))

(assert (=> d!1339468 (= (containsKey!1077 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))) key!3717) e!2752668)))

(declare-fun b!4420906 () Bool)

(declare-fun e!2752669 () Bool)

(assert (=> b!4420906 (= e!2752668 e!2752669)))

(declare-fun res!1827064 () Bool)

(assert (=> b!4420906 (=> (not res!1827064) (not e!2752669))))

(assert (=> b!4420906 (= res!1827064 ((_ is Cons!49534) (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616))))))))

(declare-fun b!4420907 () Bool)

(assert (=> b!4420907 (= e!2752669 (containsKey!1077 (t!356596 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616))))) key!3717))))

(assert (= (and d!1339468 (not res!1827063)) b!4420906))

(assert (= (and b!4420906 res!1827064) b!4420907))

(declare-fun m!5098393 () Bool)

(assert (=> b!4420907 m!5098393))

(assert (=> d!1339348 d!1339468))

(assert (=> d!1339326 d!1339346))

(declare-fun d!1339470 () Bool)

(declare-fun lt!1621130 () Bool)

(assert (=> d!1339470 (= lt!1621130 (select (content!7936 (keys!16899 (extractMap!792 (tail!7235 (toList!3449 lm!1616))))) key!3717))))

(declare-fun e!2752675 () Bool)

(assert (=> d!1339470 (= lt!1621130 e!2752675)))

(declare-fun res!1827070 () Bool)

(assert (=> d!1339470 (=> (not res!1827070) (not e!2752675))))

(assert (=> d!1339470 (= res!1827070 ((_ is Cons!49537) (keys!16899 (extractMap!792 (tail!7235 (toList!3449 lm!1616))))))))

(assert (=> d!1339470 (= (contains!12014 (keys!16899 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))) key!3717) lt!1621130)))

(declare-fun b!4420912 () Bool)

(declare-fun e!2752674 () Bool)

(assert (=> b!4420912 (= e!2752675 e!2752674)))

(declare-fun res!1827069 () Bool)

(assert (=> b!4420912 (=> res!1827069 e!2752674)))

(assert (=> b!4420912 (= res!1827069 (= (h!55212 (keys!16899 (extractMap!792 (tail!7235 (toList!3449 lm!1616))))) key!3717))))

(declare-fun b!4420913 () Bool)

(assert (=> b!4420913 (= e!2752674 (contains!12014 (t!356599 (keys!16899 (extractMap!792 (tail!7235 (toList!3449 lm!1616))))) key!3717))))

(assert (= (and d!1339470 res!1827070) b!4420912))

(assert (= (and b!4420912 (not res!1827069)) b!4420913))

(assert (=> d!1339470 m!5098037))

(declare-fun m!5098395 () Bool)

(assert (=> d!1339470 m!5098395))

(declare-fun m!5098397 () Bool)

(assert (=> d!1339470 m!5098397))

(declare-fun m!5098399 () Bool)

(assert (=> b!4420913 m!5098399))

(assert (=> b!4420679 d!1339470))

(declare-fun bs!754736 () Bool)

(declare-fun b!4420915 () Bool)

(assert (= bs!754736 (and b!4420915 b!4420886)))

(declare-fun lambda!153025 () Int)

(assert (=> bs!754736 (= (= (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))) (toList!3450 (extractMap!792 (toList!3449 lm!1616)))) (= lambda!153025 lambda!153023))))

(assert (=> b!4420915 true))

(declare-fun bs!754737 () Bool)

(declare-fun b!4420916 () Bool)

(assert (= bs!754737 (and b!4420916 b!4420887)))

(declare-fun lambda!153026 () Int)

(assert (=> bs!754737 (= lambda!153026 lambda!153024)))

(declare-fun d!1339472 () Bool)

(declare-fun e!2752676 () Bool)

(assert (=> d!1339472 e!2752676))

(declare-fun res!1827071 () Bool)

(assert (=> d!1339472 (=> (not res!1827071) (not e!2752676))))

(declare-fun lt!1621131 () List!49661)

(assert (=> d!1339472 (= res!1827071 (noDuplicate!654 lt!1621131))))

(assert (=> d!1339472 (= lt!1621131 (getKeysList!241 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616))))))))

(assert (=> d!1339472 (= (keys!16899 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))) lt!1621131)))

(declare-fun b!4420914 () Bool)

(declare-fun res!1827072 () Bool)

(assert (=> b!4420914 (=> (not res!1827072) (not e!2752676))))

(assert (=> b!4420914 (= res!1827072 (= (length!164 lt!1621131) (length!165 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))))))))

(declare-fun res!1827073 () Bool)

(assert (=> b!4420915 (=> (not res!1827073) (not e!2752676))))

(assert (=> b!4420915 (= res!1827073 (forall!9532 lt!1621131 lambda!153025))))

(assert (=> b!4420916 (= e!2752676 (= (content!7936 lt!1621131) (content!7936 (map!10817 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))) lambda!153026))))))

(assert (= (and d!1339472 res!1827071) b!4420914))

(assert (= (and b!4420914 res!1827072) b!4420915))

(assert (= (and b!4420915 res!1827073) b!4420916))

(declare-fun m!5098401 () Bool)

(assert (=> d!1339472 m!5098401))

(assert (=> d!1339472 m!5098051))

(declare-fun m!5098403 () Bool)

(assert (=> b!4420914 m!5098403))

(declare-fun m!5098405 () Bool)

(assert (=> b!4420914 m!5098405))

(declare-fun m!5098407 () Bool)

(assert (=> b!4420915 m!5098407))

(declare-fun m!5098409 () Bool)

(assert (=> b!4420916 m!5098409))

(declare-fun m!5098411 () Bool)

(assert (=> b!4420916 m!5098411))

(assert (=> b!4420916 m!5098411))

(declare-fun m!5098413 () Bool)

(assert (=> b!4420916 m!5098413))

(assert (=> b!4420679 d!1339472))

(declare-fun d!1339476 () Bool)

(declare-fun res!1827076 () Bool)

(declare-fun e!2752679 () Bool)

(assert (=> d!1339476 (=> res!1827076 e!2752679)))

(assert (=> d!1339476 (= res!1827076 (not ((_ is Cons!49534) (_2!27946 (h!55208 (toList!3449 lt!1620779))))))))

(assert (=> d!1339476 (= (noDuplicateKeys!731 (_2!27946 (h!55208 (toList!3449 lt!1620779)))) e!2752679)))

(declare-fun b!4420919 () Bool)

(declare-fun e!2752680 () Bool)

(assert (=> b!4420919 (= e!2752679 e!2752680)))

(declare-fun res!1827077 () Bool)

(assert (=> b!4420919 (=> (not res!1827077) (not e!2752680))))

(assert (=> b!4420919 (= res!1827077 (not (containsKey!1080 (t!356596 (_2!27946 (h!55208 (toList!3449 lt!1620779)))) (_1!27945 (h!55207 (_2!27946 (h!55208 (toList!3449 lt!1620779))))))))))

(declare-fun b!4420920 () Bool)

(assert (=> b!4420920 (= e!2752680 (noDuplicateKeys!731 (t!356596 (_2!27946 (h!55208 (toList!3449 lt!1620779))))))))

(assert (= (and d!1339476 (not res!1827076)) b!4420919))

(assert (= (and b!4420919 res!1827077) b!4420920))

(declare-fun m!5098419 () Bool)

(assert (=> b!4420919 m!5098419))

(declare-fun m!5098421 () Bool)

(assert (=> b!4420920 m!5098421))

(assert (=> bs!754666 d!1339476))

(assert (=> b!4420677 d!1339468))

(declare-fun d!1339480 () Bool)

(assert (=> d!1339480 (containsKey!1077 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))) key!3717)))

(declare-fun lt!1621134 () Unit!81302)

(declare-fun choose!27853 (List!49658 K!10900) Unit!81302)

(assert (=> d!1339480 (= lt!1621134 (choose!27853 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))) key!3717))))

(assert (=> d!1339480 (invariantList!793 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))))))

(assert (=> d!1339480 (= (lemmaInGetKeysListThenContainsKey!239 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))) key!3717) lt!1621134)))

(declare-fun bs!754739 () Bool)

(assert (= bs!754739 d!1339480))

(assert (=> bs!754739 m!5098039))

(declare-fun m!5098423 () Bool)

(assert (=> bs!754739 m!5098423))

(declare-fun m!5098425 () Bool)

(assert (=> bs!754739 m!5098425))

(assert (=> b!4420677 d!1339480))

(declare-fun d!1339482 () Bool)

(declare-fun choose!27854 (Hashable!5125 K!10900) (_ BitVec 64))

(assert (=> d!1339482 (= (hash!2069 hashF!1220 key!3717) (choose!27854 hashF!1220 key!3717))))

(declare-fun bs!754740 () Bool)

(assert (= bs!754740 d!1339482))

(declare-fun m!5098427 () Bool)

(assert (=> bs!754740 m!5098427))

(assert (=> d!1339364 d!1339482))

(declare-fun d!1339484 () Bool)

(assert (=> d!1339484 (= (invariantList!793 (toList!3450 lt!1620849)) (noDuplicatedKeys!169 (toList!3450 lt!1620849)))))

(declare-fun bs!754741 () Bool)

(assert (= bs!754741 d!1339484))

(declare-fun m!5098429 () Bool)

(assert (=> bs!754741 m!5098429))

(assert (=> d!1339284 d!1339484))

(declare-fun d!1339486 () Bool)

(declare-fun res!1827078 () Bool)

(declare-fun e!2752681 () Bool)

(assert (=> d!1339486 (=> res!1827078 e!2752681)))

(assert (=> d!1339486 (= res!1827078 ((_ is Nil!49535) (toList!3449 lm!1616)))))

(assert (=> d!1339486 (= (forall!9528 (toList!3449 lm!1616) lambda!152916) e!2752681)))

(declare-fun b!4420921 () Bool)

(declare-fun e!2752682 () Bool)

(assert (=> b!4420921 (= e!2752681 e!2752682)))

(declare-fun res!1827079 () Bool)

(assert (=> b!4420921 (=> (not res!1827079) (not e!2752682))))

(assert (=> b!4420921 (= res!1827079 (dynLambda!20828 lambda!152916 (h!55208 (toList!3449 lm!1616))))))

(declare-fun b!4420922 () Bool)

(assert (=> b!4420922 (= e!2752682 (forall!9528 (t!356597 (toList!3449 lm!1616)) lambda!152916))))

(assert (= (and d!1339486 (not res!1827078)) b!4420921))

(assert (= (and b!4420921 res!1827079) b!4420922))

(declare-fun b_lambda!142565 () Bool)

(assert (=> (not b_lambda!142565) (not b!4420921)))

(declare-fun m!5098431 () Bool)

(assert (=> b!4420921 m!5098431))

(declare-fun m!5098433 () Bool)

(assert (=> b!4420922 m!5098433))

(assert (=> d!1339284 d!1339486))

(declare-fun d!1339488 () Bool)

(assert (=> d!1339488 (isDefined!7994 (getValueByKey!687 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))) key!3717))))

(declare-fun lt!1621137 () Unit!81302)

(declare-fun choose!27855 (List!49658 K!10900) Unit!81302)

(assert (=> d!1339488 (= lt!1621137 (choose!27855 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))) key!3717))))

(assert (=> d!1339488 (invariantList!793 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))))))

(assert (=> d!1339488 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!597 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))) key!3717) lt!1621137)))

(declare-fun bs!754742 () Bool)

(assert (= bs!754742 d!1339488))

(assert (=> bs!754742 m!5098033))

(assert (=> bs!754742 m!5098033))

(assert (=> bs!754742 m!5098035))

(declare-fun m!5098435 () Bool)

(assert (=> bs!754742 m!5098435))

(assert (=> bs!754742 m!5098425))

(assert (=> b!4420681 d!1339488))

(declare-fun d!1339490 () Bool)

(assert (=> d!1339490 (= (isDefined!7994 (getValueByKey!687 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))) key!3717)) (not (isEmpty!28328 (getValueByKey!687 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))) key!3717))))))

(declare-fun bs!754743 () Bool)

(assert (= bs!754743 d!1339490))

(assert (=> bs!754743 m!5098033))

(declare-fun m!5098437 () Bool)

(assert (=> bs!754743 m!5098437))

(assert (=> b!4420681 d!1339490))

(declare-fun b!4420926 () Bool)

(declare-fun e!2752684 () Option!10701)

(assert (=> b!4420926 (= e!2752684 None!10700)))

(declare-fun b!4420924 () Bool)

(declare-fun e!2752683 () Option!10701)

(assert (=> b!4420924 (= e!2752683 e!2752684)))

(declare-fun c!752494 () Bool)

(assert (=> b!4420924 (= c!752494 (and ((_ is Cons!49534) (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616))))) (not (= (_1!27945 (h!55207 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))))) key!3717))))))

(declare-fun d!1339492 () Bool)

(declare-fun c!752493 () Bool)

(assert (=> d!1339492 (= c!752493 (and ((_ is Cons!49534) (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616))))) (= (_1!27945 (h!55207 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))))) key!3717)))))

(assert (=> d!1339492 (= (getValueByKey!687 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))) key!3717) e!2752683)))

(declare-fun b!4420925 () Bool)

(assert (=> b!4420925 (= e!2752684 (getValueByKey!687 (t!356596 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616))))) key!3717))))

(declare-fun b!4420923 () Bool)

(assert (=> b!4420923 (= e!2752683 (Some!10700 (_2!27945 (h!55207 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616))))))))))

(assert (= (and d!1339492 c!752493) b!4420923))

(assert (= (and d!1339492 (not c!752493)) b!4420924))

(assert (= (and b!4420924 c!752494) b!4420925))

(assert (= (and b!4420924 (not c!752494)) b!4420926))

(declare-fun m!5098439 () Bool)

(assert (=> b!4420925 m!5098439))

(assert (=> b!4420681 d!1339492))

(declare-fun d!1339494 () Bool)

(assert (=> d!1339494 (contains!12014 (getKeysList!241 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616))))) key!3717)))

(declare-fun lt!1621140 () Unit!81302)

(declare-fun choose!27856 (List!49658 K!10900) Unit!81302)

(assert (=> d!1339494 (= lt!1621140 (choose!27856 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))) key!3717))))

(assert (=> d!1339494 (invariantList!793 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))))))

(assert (=> d!1339494 (= (lemmaInListThenGetKeysListContains!238 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))) key!3717) lt!1621140)))

(declare-fun bs!754744 () Bool)

(assert (= bs!754744 d!1339494))

(assert (=> bs!754744 m!5098051))

(assert (=> bs!754744 m!5098051))

(declare-fun m!5098441 () Bool)

(assert (=> bs!754744 m!5098441))

(declare-fun m!5098443 () Bool)

(assert (=> bs!754744 m!5098443))

(assert (=> bs!754744 m!5098425))

(assert (=> b!4420681 d!1339494))

(declare-fun b!4420927 () Bool)

(declare-fun e!2752685 () Bool)

(declare-fun e!2752689 () Bool)

(assert (=> b!4420927 (= e!2752685 e!2752689)))

(declare-fun res!1827082 () Bool)

(assert (=> b!4420927 (=> (not res!1827082) (not e!2752689))))

(assert (=> b!4420927 (= res!1827082 (isDefined!7994 (getValueByKey!687 (toList!3450 lt!1620915) (_1!27945 (tuple2!49303 key!3717 newValue!93)))))))

(declare-fun b!4420928 () Bool)

(assert (=> b!4420928 false))

(declare-fun lt!1621143 () Unit!81302)

(declare-fun lt!1621147 () Unit!81302)

(assert (=> b!4420928 (= lt!1621143 lt!1621147)))

(assert (=> b!4420928 (containsKey!1077 (toList!3450 lt!1620915) (_1!27945 (tuple2!49303 key!3717 newValue!93)))))

(assert (=> b!4420928 (= lt!1621147 (lemmaInGetKeysListThenContainsKey!239 (toList!3450 lt!1620915) (_1!27945 (tuple2!49303 key!3717 newValue!93))))))

(declare-fun e!2752686 () Unit!81302)

(declare-fun Unit!81349 () Unit!81302)

(assert (=> b!4420928 (= e!2752686 Unit!81349)))

(declare-fun b!4420930 () Bool)

(declare-fun e!2752690 () Bool)

(assert (=> b!4420930 (= e!2752690 (not (contains!12014 (keys!16899 lt!1620915) (_1!27945 (tuple2!49303 key!3717 newValue!93)))))))

(declare-fun b!4420931 () Bool)

(declare-fun e!2752687 () List!49661)

(assert (=> b!4420931 (= e!2752687 (keys!16899 lt!1620915))))

(declare-fun b!4420932 () Bool)

(declare-fun e!2752688 () Unit!81302)

(declare-fun lt!1621145 () Unit!81302)

(assert (=> b!4420932 (= e!2752688 lt!1621145)))

(declare-fun lt!1621146 () Unit!81302)

(assert (=> b!4420932 (= lt!1621146 (lemmaContainsKeyImpliesGetValueByKeyDefined!597 (toList!3450 lt!1620915) (_1!27945 (tuple2!49303 key!3717 newValue!93))))))

(assert (=> b!4420932 (isDefined!7994 (getValueByKey!687 (toList!3450 lt!1620915) (_1!27945 (tuple2!49303 key!3717 newValue!93))))))

(declare-fun lt!1621141 () Unit!81302)

(assert (=> b!4420932 (= lt!1621141 lt!1621146)))

(assert (=> b!4420932 (= lt!1621145 (lemmaInListThenGetKeysListContains!238 (toList!3450 lt!1620915) (_1!27945 (tuple2!49303 key!3717 newValue!93))))))

(declare-fun call!307568 () Bool)

(assert (=> b!4420932 call!307568))

(declare-fun b!4420933 () Bool)

(assert (=> b!4420933 (= e!2752688 e!2752686)))

(declare-fun c!752497 () Bool)

(assert (=> b!4420933 (= c!752497 call!307568)))

(declare-fun bm!307563 () Bool)

(assert (=> bm!307563 (= call!307568 (contains!12014 e!2752687 (_1!27945 (tuple2!49303 key!3717 newValue!93))))))

(declare-fun c!752496 () Bool)

(declare-fun c!752495 () Bool)

(assert (=> bm!307563 (= c!752496 c!752495)))

(declare-fun b!4420934 () Bool)

(assert (=> b!4420934 (= e!2752687 (getKeysList!241 (toList!3450 lt!1620915)))))

(declare-fun b!4420935 () Bool)

(assert (=> b!4420935 (= e!2752689 (contains!12014 (keys!16899 lt!1620915) (_1!27945 (tuple2!49303 key!3717 newValue!93))))))

(declare-fun b!4420929 () Bool)

(declare-fun Unit!81350 () Unit!81302)

(assert (=> b!4420929 (= e!2752686 Unit!81350)))

(declare-fun d!1339496 () Bool)

(assert (=> d!1339496 e!2752685))

(declare-fun res!1827080 () Bool)

(assert (=> d!1339496 (=> res!1827080 e!2752685)))

(assert (=> d!1339496 (= res!1827080 e!2752690)))

(declare-fun res!1827081 () Bool)

(assert (=> d!1339496 (=> (not res!1827081) (not e!2752690))))

(declare-fun lt!1621144 () Bool)

(assert (=> d!1339496 (= res!1827081 (not lt!1621144))))

(declare-fun lt!1621142 () Bool)

(assert (=> d!1339496 (= lt!1621144 lt!1621142)))

(declare-fun lt!1621148 () Unit!81302)

(assert (=> d!1339496 (= lt!1621148 e!2752688)))

(assert (=> d!1339496 (= c!752495 lt!1621142)))

(assert (=> d!1339496 (= lt!1621142 (containsKey!1077 (toList!3450 lt!1620915) (_1!27945 (tuple2!49303 key!3717 newValue!93))))))

(assert (=> d!1339496 (= (contains!12011 lt!1620915 (_1!27945 (tuple2!49303 key!3717 newValue!93))) lt!1621144)))

(assert (= (and d!1339496 c!752495) b!4420932))

(assert (= (and d!1339496 (not c!752495)) b!4420933))

(assert (= (and b!4420933 c!752497) b!4420928))

(assert (= (and b!4420933 (not c!752497)) b!4420929))

(assert (= (or b!4420932 b!4420933) bm!307563))

(assert (= (and bm!307563 c!752496) b!4420934))

(assert (= (and bm!307563 (not c!752496)) b!4420931))

(assert (= (and d!1339496 res!1827081) b!4420930))

(assert (= (and d!1339496 (not res!1827080)) b!4420927))

(assert (= (and b!4420927 res!1827082) b!4420935))

(assert (=> b!4420927 m!5097981))

(assert (=> b!4420927 m!5097981))

(declare-fun m!5098445 () Bool)

(assert (=> b!4420927 m!5098445))

(declare-fun m!5098447 () Bool)

(assert (=> b!4420931 m!5098447))

(declare-fun m!5098449 () Bool)

(assert (=> b!4420928 m!5098449))

(declare-fun m!5098451 () Bool)

(assert (=> b!4420928 m!5098451))

(assert (=> b!4420930 m!5098447))

(assert (=> b!4420930 m!5098447))

(declare-fun m!5098453 () Bool)

(assert (=> b!4420930 m!5098453))

(declare-fun m!5098455 () Bool)

(assert (=> b!4420932 m!5098455))

(assert (=> b!4420932 m!5097981))

(assert (=> b!4420932 m!5097981))

(assert (=> b!4420932 m!5098445))

(declare-fun m!5098457 () Bool)

(assert (=> b!4420932 m!5098457))

(declare-fun m!5098459 () Bool)

(assert (=> bm!307563 m!5098459))

(assert (=> b!4420935 m!5098447))

(assert (=> b!4420935 m!5098447))

(assert (=> b!4420935 m!5098453))

(declare-fun m!5098461 () Bool)

(assert (=> b!4420934 m!5098461))

(assert (=> d!1339496 m!5098449))

(assert (=> d!1339310 d!1339496))

(declare-fun b!4420939 () Bool)

(declare-fun e!2752692 () Option!10701)

(assert (=> b!4420939 (= e!2752692 None!10700)))

(declare-fun b!4420937 () Bool)

(declare-fun e!2752691 () Option!10701)

(assert (=> b!4420937 (= e!2752691 e!2752692)))

(declare-fun c!752499 () Bool)

(assert (=> b!4420937 (= c!752499 (and ((_ is Cons!49534) lt!1620916) (not (= (_1!27945 (h!55207 lt!1620916)) (_1!27945 (tuple2!49303 key!3717 newValue!93))))))))

(declare-fun d!1339498 () Bool)

(declare-fun c!752498 () Bool)

(assert (=> d!1339498 (= c!752498 (and ((_ is Cons!49534) lt!1620916) (= (_1!27945 (h!55207 lt!1620916)) (_1!27945 (tuple2!49303 key!3717 newValue!93)))))))

(assert (=> d!1339498 (= (getValueByKey!687 lt!1620916 (_1!27945 (tuple2!49303 key!3717 newValue!93))) e!2752691)))

(declare-fun b!4420938 () Bool)

(assert (=> b!4420938 (= e!2752692 (getValueByKey!687 (t!356596 lt!1620916) (_1!27945 (tuple2!49303 key!3717 newValue!93))))))

(declare-fun b!4420936 () Bool)

(assert (=> b!4420936 (= e!2752691 (Some!10700 (_2!27945 (h!55207 lt!1620916))))))

(assert (= (and d!1339498 c!752498) b!4420936))

(assert (= (and d!1339498 (not c!752498)) b!4420937))

(assert (= (and b!4420937 c!752499) b!4420938))

(assert (= (and b!4420937 (not c!752499)) b!4420939))

(declare-fun m!5098463 () Bool)

(assert (=> b!4420938 m!5098463))

(assert (=> d!1339310 d!1339498))

(declare-fun d!1339500 () Bool)

(assert (=> d!1339500 (= (getValueByKey!687 lt!1620916 (_1!27945 (tuple2!49303 key!3717 newValue!93))) (Some!10700 (_2!27945 (tuple2!49303 key!3717 newValue!93))))))

(declare-fun lt!1621159 () Unit!81302)

(declare-fun choose!27857 (List!49658 K!10900 V!11146) Unit!81302)

(assert (=> d!1339500 (= lt!1621159 (choose!27857 lt!1620916 (_1!27945 (tuple2!49303 key!3717 newValue!93)) (_2!27945 (tuple2!49303 key!3717 newValue!93))))))

(declare-fun e!2752701 () Bool)

(assert (=> d!1339500 e!2752701))

(declare-fun res!1827087 () Bool)

(assert (=> d!1339500 (=> (not res!1827087) (not e!2752701))))

(assert (=> d!1339500 (= res!1827087 (invariantList!793 lt!1620916))))

(assert (=> d!1339500 (= (lemmaContainsTupThenGetReturnValue!423 lt!1620916 (_1!27945 (tuple2!49303 key!3717 newValue!93)) (_2!27945 (tuple2!49303 key!3717 newValue!93))) lt!1621159)))

(declare-fun b!4420956 () Bool)

(declare-fun res!1827088 () Bool)

(assert (=> b!4420956 (=> (not res!1827088) (not e!2752701))))

(assert (=> b!4420956 (= res!1827088 (containsKey!1077 lt!1620916 (_1!27945 (tuple2!49303 key!3717 newValue!93))))))

(declare-fun b!4420957 () Bool)

(assert (=> b!4420957 (= e!2752701 (contains!12018 lt!1620916 (tuple2!49303 (_1!27945 (tuple2!49303 key!3717 newValue!93)) (_2!27945 (tuple2!49303 key!3717 newValue!93)))))))

(assert (= (and d!1339500 res!1827087) b!4420956))

(assert (= (and b!4420956 res!1827088) b!4420957))

(assert (=> d!1339500 m!5097975))

(declare-fun m!5098465 () Bool)

(assert (=> d!1339500 m!5098465))

(declare-fun m!5098467 () Bool)

(assert (=> d!1339500 m!5098467))

(declare-fun m!5098469 () Bool)

(assert (=> b!4420956 m!5098469))

(declare-fun m!5098471 () Bool)

(assert (=> b!4420957 m!5098471))

(assert (=> d!1339310 d!1339500))

(declare-fun b!4421039 () Bool)

(declare-fun res!1827127 () Bool)

(declare-fun e!2752748 () Bool)

(assert (=> b!4421039 (=> (not res!1827127) (not e!2752748))))

(declare-fun lt!1621211 () List!49658)

(assert (=> b!4421039 (= res!1827127 (containsKey!1077 lt!1621211 (_1!27945 (tuple2!49303 key!3717 newValue!93))))))

(declare-fun b!4421040 () Bool)

(declare-fun e!2752747 () List!49658)

(assert (=> b!4421040 (= e!2752747 Nil!49534)))

(declare-fun b!4421041 () Bool)

(declare-fun c!752529 () Bool)

(assert (=> b!4421041 (= c!752529 ((_ is Cons!49534) (toList!3450 (extractMap!792 (toList!3449 lt!1620777)))))))

(declare-fun e!2752744 () List!49658)

(declare-fun e!2752750 () List!49658)

(assert (=> b!4421041 (= e!2752744 e!2752750)))

(declare-fun bm!307573 () Bool)

(declare-fun lt!1621215 () List!49658)

(declare-fun call!307578 () List!49661)

(declare-fun c!752528 () Bool)

(assert (=> bm!307573 (= call!307578 (getKeysList!241 (ite c!752528 (toList!3450 (extractMap!792 (toList!3449 lt!1620777))) lt!1621215)))))

(declare-fun b!4421042 () Bool)

(declare-fun res!1827126 () Bool)

(assert (=> b!4421042 (=> (not res!1827126) (not e!2752748))))

(assert (=> b!4421042 (= res!1827126 (contains!12018 lt!1621211 (tuple2!49303 (_1!27945 (tuple2!49303 key!3717 newValue!93)) (_2!27945 (tuple2!49303 key!3717 newValue!93)))))))

(declare-fun b!4421043 () Bool)

(assert (=> b!4421043 (= e!2752748 (= (content!7936 (getKeysList!241 lt!1621211)) ((_ map or) (content!7936 (getKeysList!241 (toList!3450 (extractMap!792 (toList!3449 lt!1620777))))) (store ((as const (Array K!10900 Bool)) false) (_1!27945 (tuple2!49303 key!3717 newValue!93)) true))))))

(declare-fun b!4421044 () Bool)

(assert (=> b!4421044 false))

(declare-fun lt!1621219 () Unit!81302)

(declare-fun lt!1621217 () Unit!81302)

(assert (=> b!4421044 (= lt!1621219 lt!1621217)))

(assert (=> b!4421044 (containsKey!1077 (t!356596 (toList!3450 (extractMap!792 (toList!3449 lt!1620777)))) (_1!27945 (h!55207 (toList!3450 (extractMap!792 (toList!3449 lt!1620777))))))))

(assert (=> b!4421044 (= lt!1621217 (lemmaInGetKeysListThenContainsKey!239 (t!356596 (toList!3450 (extractMap!792 (toList!3449 lt!1620777)))) (_1!27945 (h!55207 (toList!3450 (extractMap!792 (toList!3449 lt!1620777)))))))))

(declare-fun lt!1621218 () Unit!81302)

(declare-fun lt!1621214 () Unit!81302)

(assert (=> b!4421044 (= lt!1621218 lt!1621214)))

(assert (=> b!4421044 (contains!12014 call!307578 (_1!27945 (h!55207 (toList!3450 (extractMap!792 (toList!3449 lt!1620777))))))))

(assert (=> b!4421044 (= lt!1621214 (lemmaInListThenGetKeysListContains!238 lt!1621215 (_1!27945 (h!55207 (toList!3450 (extractMap!792 (toList!3449 lt!1620777)))))))))

(assert (=> b!4421044 (= lt!1621215 (insertNoDuplicatedKeys!183 (t!356596 (toList!3450 (extractMap!792 (toList!3449 lt!1620777)))) (_1!27945 (tuple2!49303 key!3717 newValue!93)) (_2!27945 (tuple2!49303 key!3717 newValue!93))))))

(declare-fun e!2752746 () Unit!81302)

(declare-fun Unit!81355 () Unit!81302)

(assert (=> b!4421044 (= e!2752746 Unit!81355)))

(declare-fun b!4421045 () Bool)

(declare-fun call!307579 () List!49658)

(assert (=> b!4421045 (= e!2752744 call!307579)))

(declare-fun b!4421046 () Bool)

(declare-fun e!2752745 () List!49658)

(declare-fun call!307580 () List!49658)

(assert (=> b!4421046 (= e!2752745 call!307580)))

(declare-fun lt!1621216 () List!49661)

(assert (=> b!4421046 (= lt!1621216 call!307578)))

(declare-fun lt!1621212 () Unit!81302)

(declare-fun lemmaSubseqRefl!95 (List!49661) Unit!81302)

(assert (=> b!4421046 (= lt!1621212 (lemmaSubseqRefl!95 lt!1621216))))

(declare-fun subseq!611 (List!49661 List!49661) Bool)

(assert (=> b!4421046 (subseq!611 lt!1621216 lt!1621216)))

(declare-fun lt!1621210 () Unit!81302)

(assert (=> b!4421046 (= lt!1621210 lt!1621212)))

(declare-fun bm!307574 () Bool)

(declare-fun call!307577 () List!49658)

(assert (=> bm!307574 (= call!307577 call!307579)))

(declare-fun c!752532 () Bool)

(assert (=> bm!307574 (= c!752532 c!752529)))

(declare-fun b!4421047 () Bool)

(assert (=> b!4421047 (= e!2752747 (insertNoDuplicatedKeys!183 (t!356596 (toList!3450 (extractMap!792 (toList!3449 lt!1620777)))) (_1!27945 (tuple2!49303 key!3717 newValue!93)) (_2!27945 (tuple2!49303 key!3717 newValue!93))))))

(declare-fun c!752530 () Bool)

(declare-fun bm!307572 () Bool)

(declare-fun $colon$colon!775 (List!49658 tuple2!49302) List!49658)

(assert (=> bm!307572 (= call!307580 ($colon$colon!775 (ite c!752528 (t!356596 (toList!3450 (extractMap!792 (toList!3449 lt!1620777)))) (ite c!752530 (toList!3450 (extractMap!792 (toList!3449 lt!1620777))) e!2752747)) (ite (or c!752528 c!752530) (tuple2!49303 (_1!27945 (tuple2!49303 key!3717 newValue!93)) (_2!27945 (tuple2!49303 key!3717 newValue!93))) (ite c!752529 (h!55207 (toList!3450 (extractMap!792 (toList!3449 lt!1620777)))) (tuple2!49303 (_1!27945 (tuple2!49303 key!3717 newValue!93)) (_2!27945 (tuple2!49303 key!3717 newValue!93)))))))))

(declare-fun d!1339502 () Bool)

(assert (=> d!1339502 e!2752748))

(declare-fun res!1827124 () Bool)

(assert (=> d!1339502 (=> (not res!1827124) (not e!2752748))))

(assert (=> d!1339502 (= res!1827124 (invariantList!793 lt!1621211))))

(assert (=> d!1339502 (= lt!1621211 e!2752745)))

(assert (=> d!1339502 (= c!752528 (and ((_ is Cons!49534) (toList!3450 (extractMap!792 (toList!3449 lt!1620777)))) (= (_1!27945 (h!55207 (toList!3450 (extractMap!792 (toList!3449 lt!1620777))))) (_1!27945 (tuple2!49303 key!3717 newValue!93)))))))

(assert (=> d!1339502 (invariantList!793 (toList!3450 (extractMap!792 (toList!3449 lt!1620777))))))

(assert (=> d!1339502 (= (insertNoDuplicatedKeys!183 (toList!3450 (extractMap!792 (toList!3449 lt!1620777))) (_1!27945 (tuple2!49303 key!3717 newValue!93)) (_2!27945 (tuple2!49303 key!3717 newValue!93))) lt!1621211)))

(declare-fun e!2752749 () Bool)

(declare-fun b!4421048 () Bool)

(assert (=> b!4421048 (= e!2752749 (not (containsKey!1077 (toList!3450 (extractMap!792 (toList!3449 lt!1620777))) (_1!27945 (tuple2!49303 key!3717 newValue!93)))))))

(declare-fun bm!307575 () Bool)

(assert (=> bm!307575 (= call!307579 call!307580)))

(declare-fun b!4421049 () Bool)

(assert (=> b!4421049 (= e!2752750 call!307577)))

(declare-fun b!4421050 () Bool)

(declare-fun Unit!81356 () Unit!81302)

(assert (=> b!4421050 (= e!2752746 Unit!81356)))

(declare-fun b!4421051 () Bool)

(declare-fun lt!1621213 () List!49658)

(assert (=> b!4421051 (= e!2752750 lt!1621213)))

(assert (=> b!4421051 (= lt!1621213 call!307577)))

(declare-fun c!752531 () Bool)

(assert (=> b!4421051 (= c!752531 (containsKey!1077 (insertNoDuplicatedKeys!183 (t!356596 (toList!3450 (extractMap!792 (toList!3449 lt!1620777)))) (_1!27945 (tuple2!49303 key!3717 newValue!93)) (_2!27945 (tuple2!49303 key!3717 newValue!93))) (_1!27945 (h!55207 (toList!3450 (extractMap!792 (toList!3449 lt!1620777)))))))))

(declare-fun lt!1621209 () Unit!81302)

(assert (=> b!4421051 (= lt!1621209 e!2752746)))

(declare-fun b!4421052 () Bool)

(assert (=> b!4421052 (= e!2752745 e!2752744)))

(declare-fun res!1827125 () Bool)

(assert (=> b!4421052 (= res!1827125 ((_ is Cons!49534) (toList!3450 (extractMap!792 (toList!3449 lt!1620777)))))))

(assert (=> b!4421052 (=> (not res!1827125) (not e!2752749))))

(assert (=> b!4421052 (= c!752530 e!2752749)))

(assert (= (and d!1339502 c!752528) b!4421046))

(assert (= (and d!1339502 (not c!752528)) b!4421052))

(assert (= (and b!4421052 res!1827125) b!4421048))

(assert (= (and b!4421052 c!752530) b!4421045))

(assert (= (and b!4421052 (not c!752530)) b!4421041))

(assert (= (and b!4421041 c!752529) b!4421051))

(assert (= (and b!4421041 (not c!752529)) b!4421049))

(assert (= (and b!4421051 c!752531) b!4421044))

(assert (= (and b!4421051 (not c!752531)) b!4421050))

(assert (= (or b!4421051 b!4421049) bm!307574))

(assert (= (and bm!307574 c!752532) b!4421047))

(assert (= (and bm!307574 (not c!752532)) b!4421040))

(assert (= (or b!4421045 bm!307574) bm!307575))

(assert (= (or b!4421046 b!4421044) bm!307573))

(assert (= (or b!4421046 bm!307575) bm!307572))

(assert (= (and d!1339502 res!1827124) b!4421039))

(assert (= (and b!4421039 res!1827127) b!4421042))

(assert (= (and b!4421042 res!1827126) b!4421043))

(declare-fun m!5098553 () Bool)

(assert (=> b!4421043 m!5098553))

(declare-fun m!5098555 () Bool)

(assert (=> b!4421043 m!5098555))

(declare-fun m!5098557 () Bool)

(assert (=> b!4421043 m!5098557))

(declare-fun m!5098559 () Bool)

(assert (=> b!4421043 m!5098559))

(assert (=> b!4421043 m!5098557))

(declare-fun m!5098561 () Bool)

(assert (=> b!4421043 m!5098561))

(assert (=> b!4421043 m!5098553))

(declare-fun m!5098563 () Bool)

(assert (=> d!1339502 m!5098563))

(declare-fun m!5098565 () Bool)

(assert (=> d!1339502 m!5098565))

(declare-fun m!5098567 () Bool)

(assert (=> b!4421039 m!5098567))

(declare-fun m!5098569 () Bool)

(assert (=> b!4421044 m!5098569))

(declare-fun m!5098571 () Bool)

(assert (=> b!4421044 m!5098571))

(declare-fun m!5098573 () Bool)

(assert (=> b!4421044 m!5098573))

(declare-fun m!5098575 () Bool)

(assert (=> b!4421044 m!5098575))

(declare-fun m!5098577 () Bool)

(assert (=> b!4421044 m!5098577))

(declare-fun m!5098579 () Bool)

(assert (=> bm!307572 m!5098579))

(declare-fun m!5098581 () Bool)

(assert (=> b!4421048 m!5098581))

(declare-fun m!5098583 () Bool)

(assert (=> b!4421046 m!5098583))

(declare-fun m!5098585 () Bool)

(assert (=> b!4421046 m!5098585))

(declare-fun m!5098587 () Bool)

(assert (=> b!4421042 m!5098587))

(assert (=> b!4421047 m!5098577))

(declare-fun m!5098589 () Bool)

(assert (=> bm!307573 m!5098589))

(assert (=> b!4421051 m!5098577))

(assert (=> b!4421051 m!5098577))

(declare-fun m!5098591 () Bool)

(assert (=> b!4421051 m!5098591))

(assert (=> d!1339310 d!1339502))

(declare-fun d!1339536 () Bool)

(declare-fun lt!1621220 () Bool)

(assert (=> d!1339536 (= lt!1621220 (select (content!7936 e!2752528) key!3717))))

(declare-fun e!2752752 () Bool)

(assert (=> d!1339536 (= lt!1621220 e!2752752)))

(declare-fun res!1827129 () Bool)

(assert (=> d!1339536 (=> (not res!1827129) (not e!2752752))))

(assert (=> d!1339536 (= res!1827129 ((_ is Cons!49537) e!2752528))))

(assert (=> d!1339536 (= (contains!12014 e!2752528 key!3717) lt!1621220)))

(declare-fun b!4421053 () Bool)

(declare-fun e!2752751 () Bool)

(assert (=> b!4421053 (= e!2752752 e!2752751)))

(declare-fun res!1827128 () Bool)

(assert (=> b!4421053 (=> res!1827128 e!2752751)))

(assert (=> b!4421053 (= res!1827128 (= (h!55212 e!2752528) key!3717))))

(declare-fun b!4421054 () Bool)

(assert (=> b!4421054 (= e!2752751 (contains!12014 (t!356599 e!2752528) key!3717))))

(assert (= (and d!1339536 res!1827129) b!4421053))

(assert (= (and b!4421053 (not res!1827128)) b!4421054))

(declare-fun m!5098593 () Bool)

(assert (=> d!1339536 m!5098593))

(declare-fun m!5098595 () Bool)

(assert (=> d!1339536 m!5098595))

(declare-fun m!5098597 () Bool)

(assert (=> b!4421054 m!5098597))

(assert (=> bm!307541 d!1339536))

(declare-fun bs!754779 () Bool)

(declare-fun b!4421143 () Bool)

(assert (= bs!754779 (and b!4421143 b!4420886)))

(declare-fun lambda!153053 () Int)

(assert (=> bs!754779 (= (= (t!356596 (toList!3450 (extractMap!792 (toList!3449 lm!1616)))) (toList!3450 (extractMap!792 (toList!3449 lm!1616)))) (= lambda!153053 lambda!153023))))

(declare-fun bs!754780 () Bool)

(assert (= bs!754780 (and b!4421143 b!4420915)))

(assert (=> bs!754780 (= (= (t!356596 (toList!3450 (extractMap!792 (toList!3449 lm!1616)))) (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616))))) (= lambda!153053 lambda!153025))))

(assert (=> b!4421143 true))

(declare-fun bs!754781 () Bool)

(declare-fun b!4421137 () Bool)

(assert (= bs!754781 (and b!4421137 b!4420886)))

(declare-fun lambda!153054 () Int)

(assert (=> bs!754781 (= (= (Cons!49534 (h!55207 (toList!3450 (extractMap!792 (toList!3449 lm!1616)))) (t!356596 (toList!3450 (extractMap!792 (toList!3449 lm!1616))))) (toList!3450 (extractMap!792 (toList!3449 lm!1616)))) (= lambda!153054 lambda!153023))))

(declare-fun bs!754782 () Bool)

(assert (= bs!754782 (and b!4421137 b!4420915)))

(assert (=> bs!754782 (= (= (Cons!49534 (h!55207 (toList!3450 (extractMap!792 (toList!3449 lm!1616)))) (t!356596 (toList!3450 (extractMap!792 (toList!3449 lm!1616))))) (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616))))) (= lambda!153054 lambda!153025))))

(declare-fun bs!754783 () Bool)

(assert (= bs!754783 (and b!4421137 b!4421143)))

(assert (=> bs!754783 (= (= (Cons!49534 (h!55207 (toList!3450 (extractMap!792 (toList!3449 lm!1616)))) (t!356596 (toList!3450 (extractMap!792 (toList!3449 lm!1616))))) (t!356596 (toList!3450 (extractMap!792 (toList!3449 lm!1616))))) (= lambda!153054 lambda!153053))))

(assert (=> b!4421137 true))

(declare-fun bs!754784 () Bool)

(declare-fun b!4421140 () Bool)

(assert (= bs!754784 (and b!4421140 b!4420886)))

(declare-fun lambda!153055 () Int)

(assert (=> bs!754784 (= lambda!153055 lambda!153023)))

(declare-fun bs!754785 () Bool)

(assert (= bs!754785 (and b!4421140 b!4420915)))

(assert (=> bs!754785 (= (= (toList!3450 (extractMap!792 (toList!3449 lm!1616))) (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616))))) (= lambda!153055 lambda!153025))))

(declare-fun bs!754786 () Bool)

(assert (= bs!754786 (and b!4421140 b!4421143)))

(assert (=> bs!754786 (= (= (toList!3450 (extractMap!792 (toList!3449 lm!1616))) (t!356596 (toList!3450 (extractMap!792 (toList!3449 lm!1616))))) (= lambda!153055 lambda!153053))))

(declare-fun bs!754787 () Bool)

(assert (= bs!754787 (and b!4421140 b!4421137)))

(assert (=> bs!754787 (= (= (toList!3450 (extractMap!792 (toList!3449 lm!1616))) (Cons!49534 (h!55207 (toList!3450 (extractMap!792 (toList!3449 lm!1616)))) (t!356596 (toList!3450 (extractMap!792 (toList!3449 lm!1616)))))) (= lambda!153055 lambda!153054))))

(assert (=> b!4421140 true))

(declare-fun bs!754788 () Bool)

(declare-fun b!4421142 () Bool)

(assert (= bs!754788 (and b!4421142 b!4420887)))

(declare-fun lambda!153056 () Int)

(assert (=> bs!754788 (= lambda!153056 lambda!153024)))

(declare-fun bs!754789 () Bool)

(assert (= bs!754789 (and b!4421142 b!4420916)))

(assert (=> bs!754789 (= lambda!153056 lambda!153026)))

(declare-fun b!4421135 () Bool)

(declare-fun res!1827158 () Bool)

(declare-fun e!2752798 () Bool)

(assert (=> b!4421135 (=> (not res!1827158) (not e!2752798))))

(declare-fun lt!1621272 () List!49661)

(assert (=> b!4421135 (= res!1827158 (= (length!164 lt!1621272) (length!165 (toList!3450 (extractMap!792 (toList!3449 lm!1616))))))))

(declare-fun d!1339538 () Bool)

(assert (=> d!1339538 e!2752798))

(declare-fun res!1827160 () Bool)

(assert (=> d!1339538 (=> (not res!1827160) (not e!2752798))))

(assert (=> d!1339538 (= res!1827160 (noDuplicate!654 lt!1621272))))

(declare-fun e!2752797 () List!49661)

(assert (=> d!1339538 (= lt!1621272 e!2752797)))

(declare-fun c!752560 () Bool)

(assert (=> d!1339538 (= c!752560 ((_ is Cons!49534) (toList!3450 (extractMap!792 (toList!3449 lm!1616)))))))

(assert (=> d!1339538 (invariantList!793 (toList!3450 (extractMap!792 (toList!3449 lm!1616))))))

(assert (=> d!1339538 (= (getKeysList!241 (toList!3450 (extractMap!792 (toList!3449 lm!1616)))) lt!1621272)))

(declare-fun b!4421136 () Bool)

(declare-fun e!2752799 () Unit!81302)

(declare-fun Unit!81357 () Unit!81302)

(assert (=> b!4421136 (= e!2752799 Unit!81357)))

(assert (=> b!4421137 (= e!2752797 (Cons!49537 (_1!27945 (h!55207 (toList!3450 (extractMap!792 (toList!3449 lm!1616))))) (getKeysList!241 (t!356596 (toList!3450 (extractMap!792 (toList!3449 lm!1616)))))))))

(declare-fun c!752559 () Bool)

(assert (=> b!4421137 (= c!752559 (containsKey!1077 (t!356596 (toList!3450 (extractMap!792 (toList!3449 lm!1616)))) (_1!27945 (h!55207 (toList!3450 (extractMap!792 (toList!3449 lm!1616)))))))))

(declare-fun lt!1621270 () Unit!81302)

(declare-fun e!2752800 () Unit!81302)

(assert (=> b!4421137 (= lt!1621270 e!2752800)))

(declare-fun c!752561 () Bool)

(assert (=> b!4421137 (= c!752561 (contains!12014 (getKeysList!241 (t!356596 (toList!3450 (extractMap!792 (toList!3449 lm!1616))))) (_1!27945 (h!55207 (toList!3450 (extractMap!792 (toList!3449 lm!1616)))))))))

(declare-fun lt!1621274 () Unit!81302)

(assert (=> b!4421137 (= lt!1621274 e!2752799)))

(declare-fun lt!1621271 () List!49661)

(assert (=> b!4421137 (= lt!1621271 (getKeysList!241 (t!356596 (toList!3450 (extractMap!792 (toList!3449 lm!1616))))))))

(declare-fun lt!1621268 () Unit!81302)

(declare-fun lemmaForallContainsAddHeadPreserves!76 (List!49658 List!49661 tuple2!49302) Unit!81302)

(assert (=> b!4421137 (= lt!1621268 (lemmaForallContainsAddHeadPreserves!76 (t!356596 (toList!3450 (extractMap!792 (toList!3449 lm!1616)))) lt!1621271 (h!55207 (toList!3450 (extractMap!792 (toList!3449 lm!1616))))))))

(assert (=> b!4421137 (forall!9532 lt!1621271 lambda!153054)))

(declare-fun lt!1621269 () Unit!81302)

(assert (=> b!4421137 (= lt!1621269 lt!1621268)))

(declare-fun b!4421138 () Bool)

(declare-fun Unit!81358 () Unit!81302)

(assert (=> b!4421138 (= e!2752800 Unit!81358)))

(declare-fun b!4421139 () Bool)

(assert (=> b!4421139 false))

(declare-fun Unit!81359 () Unit!81302)

(assert (=> b!4421139 (= e!2752800 Unit!81359)))

(declare-fun res!1827159 () Bool)

(assert (=> b!4421140 (=> (not res!1827159) (not e!2752798))))

(assert (=> b!4421140 (= res!1827159 (forall!9532 lt!1621272 lambda!153055))))

(declare-fun b!4421141 () Bool)

(assert (=> b!4421141 (= e!2752797 Nil!49537)))

(assert (=> b!4421142 (= e!2752798 (= (content!7936 lt!1621272) (content!7936 (map!10817 (toList!3450 (extractMap!792 (toList!3449 lm!1616))) lambda!153056))))))

(assert (=> b!4421143 false))

(declare-fun lt!1621273 () Unit!81302)

(declare-fun forallContained!2081 (List!49661 Int K!10900) Unit!81302)

(assert (=> b!4421143 (= lt!1621273 (forallContained!2081 (getKeysList!241 (t!356596 (toList!3450 (extractMap!792 (toList!3449 lm!1616))))) lambda!153053 (_1!27945 (h!55207 (toList!3450 (extractMap!792 (toList!3449 lm!1616)))))))))

(declare-fun Unit!81360 () Unit!81302)

(assert (=> b!4421143 (= e!2752799 Unit!81360)))

(assert (= (and d!1339538 c!752560) b!4421137))

(assert (= (and d!1339538 (not c!752560)) b!4421141))

(assert (= (and b!4421137 c!752559) b!4421139))

(assert (= (and b!4421137 (not c!752559)) b!4421138))

(assert (= (and b!4421137 c!752561) b!4421143))

(assert (= (and b!4421137 (not c!752561)) b!4421136))

(assert (= (and d!1339538 res!1827160) b!4421135))

(assert (= (and b!4421135 res!1827158) b!4421140))

(assert (= (and b!4421140 res!1827159) b!4421142))

(declare-fun m!5098679 () Bool)

(assert (=> b!4421140 m!5098679))

(declare-fun m!5098681 () Bool)

(assert (=> d!1339538 m!5098681))

(declare-fun m!5098683 () Bool)

(assert (=> d!1339538 m!5098683))

(declare-fun m!5098685 () Bool)

(assert (=> b!4421143 m!5098685))

(assert (=> b!4421143 m!5098685))

(declare-fun m!5098687 () Bool)

(assert (=> b!4421143 m!5098687))

(declare-fun m!5098689 () Bool)

(assert (=> b!4421137 m!5098689))

(assert (=> b!4421137 m!5098685))

(declare-fun m!5098691 () Bool)

(assert (=> b!4421137 m!5098691))

(declare-fun m!5098693 () Bool)

(assert (=> b!4421137 m!5098693))

(assert (=> b!4421137 m!5098685))

(declare-fun m!5098695 () Bool)

(assert (=> b!4421137 m!5098695))

(declare-fun m!5098699 () Bool)

(assert (=> b!4421135 m!5098699))

(assert (=> b!4421135 m!5098371))

(declare-fun m!5098703 () Bool)

(assert (=> b!4421142 m!5098703))

(declare-fun m!5098707 () Bool)

(assert (=> b!4421142 m!5098707))

(assert (=> b!4421142 m!5098707))

(declare-fun m!5098709 () Bool)

(assert (=> b!4421142 m!5098709))

(assert (=> b!4420561 d!1339538))

(declare-fun d!1339560 () Bool)

(declare-fun res!1827168 () Bool)

(declare-fun e!2752811 () Bool)

(assert (=> d!1339560 (=> res!1827168 e!2752811)))

(assert (=> d!1339560 (= res!1827168 (or ((_ is Nil!49535) (toList!3449 lm!1616)) ((_ is Nil!49535) (t!356597 (toList!3449 lm!1616)))))))

(assert (=> d!1339560 (= (isStrictlySorted!220 (toList!3449 lm!1616)) e!2752811)))

(declare-fun b!4421161 () Bool)

(declare-fun e!2752812 () Bool)

(assert (=> b!4421161 (= e!2752811 e!2752812)))

(declare-fun res!1827169 () Bool)

(assert (=> b!4421161 (=> (not res!1827169) (not e!2752812))))

(assert (=> b!4421161 (= res!1827169 (bvslt (_1!27946 (h!55208 (toList!3449 lm!1616))) (_1!27946 (h!55208 (t!356597 (toList!3449 lm!1616))))))))

(declare-fun b!4421162 () Bool)

(assert (=> b!4421162 (= e!2752812 (isStrictlySorted!220 (t!356597 (toList!3449 lm!1616))))))

(assert (= (and d!1339560 (not res!1827168)) b!4421161))

(assert (= (and b!4421161 res!1827169) b!4421162))

(declare-fun m!5098715 () Bool)

(assert (=> b!4421162 m!5098715))

(assert (=> d!1339374 d!1339560))

(declare-fun d!1339564 () Bool)

(declare-fun res!1827174 () Bool)

(declare-fun e!2752817 () Bool)

(assert (=> d!1339564 (=> res!1827174 e!2752817)))

(assert (=> d!1339564 (= res!1827174 (and ((_ is Cons!49535) (toList!3449 lm!1616)) (= (_1!27946 (h!55208 (toList!3449 lm!1616))) hash!366)))))

(assert (=> d!1339564 (= (containsKey!1079 (toList!3449 lm!1616) hash!366) e!2752817)))

(declare-fun b!4421167 () Bool)

(declare-fun e!2752818 () Bool)

(assert (=> b!4421167 (= e!2752817 e!2752818)))

(declare-fun res!1827175 () Bool)

(assert (=> b!4421167 (=> (not res!1827175) (not e!2752818))))

(assert (=> b!4421167 (= res!1827175 (and (or (not ((_ is Cons!49535) (toList!3449 lm!1616))) (bvsle (_1!27946 (h!55208 (toList!3449 lm!1616))) hash!366)) ((_ is Cons!49535) (toList!3449 lm!1616)) (bvslt (_1!27946 (h!55208 (toList!3449 lm!1616))) hash!366)))))

(declare-fun b!4421168 () Bool)

(assert (=> b!4421168 (= e!2752818 (containsKey!1079 (t!356597 (toList!3449 lm!1616)) hash!366))))

(assert (= (and d!1339564 (not res!1827174)) b!4421167))

(assert (= (and b!4421167 res!1827175) b!4421168))

(declare-fun m!5098717 () Bool)

(assert (=> b!4421168 m!5098717))

(assert (=> d!1339354 d!1339564))

(declare-fun d!1339566 () Bool)

(assert (=> d!1339566 (= (invariantList!793 (toList!3450 lt!1620917)) (noDuplicatedKeys!169 (toList!3450 lt!1620917)))))

(declare-fun bs!754823 () Bool)

(assert (= bs!754823 d!1339566))

(declare-fun m!5098719 () Bool)

(assert (=> bs!754823 m!5098719))

(assert (=> d!1339328 d!1339566))

(declare-fun d!1339568 () Bool)

(declare-fun res!1827176 () Bool)

(declare-fun e!2752819 () Bool)

(assert (=> d!1339568 (=> res!1827176 e!2752819)))

(assert (=> d!1339568 (= res!1827176 ((_ is Nil!49535) (tail!7235 (toList!3449 lm!1616))))))

(assert (=> d!1339568 (= (forall!9528 (tail!7235 (toList!3449 lm!1616)) lambda!152923) e!2752819)))

(declare-fun b!4421169 () Bool)

(declare-fun e!2752820 () Bool)

(assert (=> b!4421169 (= e!2752819 e!2752820)))

(declare-fun res!1827177 () Bool)

(assert (=> b!4421169 (=> (not res!1827177) (not e!2752820))))

(assert (=> b!4421169 (= res!1827177 (dynLambda!20828 lambda!152923 (h!55208 (tail!7235 (toList!3449 lm!1616)))))))

(declare-fun b!4421170 () Bool)

(assert (=> b!4421170 (= e!2752820 (forall!9528 (t!356597 (tail!7235 (toList!3449 lm!1616))) lambda!152923))))

(assert (= (and d!1339568 (not res!1827176)) b!4421169))

(assert (= (and b!4421169 res!1827177) b!4421170))

(declare-fun b_lambda!142569 () Bool)

(assert (=> (not b_lambda!142569) (not b!4421169)))

(declare-fun m!5098721 () Bool)

(assert (=> b!4421169 m!5098721))

(declare-fun m!5098723 () Bool)

(assert (=> b!4421170 m!5098723))

(assert (=> d!1339328 d!1339568))

(assert (=> b!4420684 d!1339470))

(assert (=> b!4420684 d!1339472))

(declare-fun bs!754824 () Bool)

(declare-fun b!4421173 () Bool)

(assert (= bs!754824 (and b!4421173 d!1339442)))

(declare-fun lambda!153062 () Int)

(assert (=> bs!754824 (= (= (extractMap!792 (t!356597 (tail!7235 (toList!3449 lm!1616)))) lt!1621094) (= lambda!153062 lambda!153015))))

(declare-fun bs!754825 () Bool)

(assert (= bs!754825 (and b!4421173 d!1339386)))

(assert (=> bs!754825 (= (= (extractMap!792 (t!356597 (tail!7235 (toList!3449 lm!1616)))) lt!1621025) (= lambda!153062 lambda!152978))))

(declare-fun bs!754826 () Bool)

(assert (= bs!754826 (and b!4421173 b!4420847)))

(assert (=> bs!754826 (= (= (extractMap!792 (t!356597 (tail!7235 (toList!3449 lm!1616)))) (extractMap!792 (t!356597 (toList!3449 (+!1046 lt!1620777 lt!1620774))))) (= lambda!153062 lambda!153011))))

(declare-fun bs!754827 () Bool)

(assert (= bs!754827 (and b!4421173 b!4420782)))

(assert (=> bs!754827 (= (= (extractMap!792 (t!356597 (tail!7235 (toList!3449 lm!1616)))) lt!1621014) (= lambda!153062 lambda!152977))))

(declare-fun bs!754828 () Bool)

(assert (= bs!754828 (and b!4421173 b!4420780)))

(assert (=> bs!754828 (= (= (extractMap!792 (t!356597 (tail!7235 (toList!3449 lm!1616)))) (extractMap!792 (t!356597 (toList!3449 lt!1620777)))) (= lambda!153062 lambda!152975))))

(declare-fun bs!754829 () Bool)

(assert (= bs!754829 (and b!4421173 d!1339378)))

(assert (=> bs!754829 (not (= lambda!153062 lambda!152940))))

(declare-fun bs!754830 () Bool)

(assert (= bs!754830 (and b!4421173 b!4420845)))

(assert (=> bs!754830 (= (= (extractMap!792 (t!356597 (tail!7235 (toList!3449 lm!1616)))) (extractMap!792 (t!356597 (toList!3449 (+!1046 lt!1620777 lt!1620774))))) (= lambda!153062 lambda!153009))))

(assert (=> bs!754827 (= (= (extractMap!792 (t!356597 (tail!7235 (toList!3449 lm!1616)))) (extractMap!792 (t!356597 (toList!3449 lt!1620777)))) (= lambda!153062 lambda!152976))))

(assert (=> bs!754826 (= (= (extractMap!792 (t!356597 (tail!7235 (toList!3449 lm!1616)))) lt!1621083) (= lambda!153062 lambda!153013))))

(assert (=> b!4421173 true))

(declare-fun bs!754833 () Bool)

(declare-fun b!4421175 () Bool)

(assert (= bs!754833 (and b!4421175 d!1339442)))

(declare-fun lambda!153064 () Int)

(assert (=> bs!754833 (= (= (extractMap!792 (t!356597 (tail!7235 (toList!3449 lm!1616)))) lt!1621094) (= lambda!153064 lambda!153015))))

(declare-fun bs!754835 () Bool)

(assert (= bs!754835 (and b!4421175 d!1339386)))

(assert (=> bs!754835 (= (= (extractMap!792 (t!356597 (tail!7235 (toList!3449 lm!1616)))) lt!1621025) (= lambda!153064 lambda!152978))))

(declare-fun bs!754837 () Bool)

(assert (= bs!754837 (and b!4421175 b!4420847)))

(assert (=> bs!754837 (= (= (extractMap!792 (t!356597 (tail!7235 (toList!3449 lm!1616)))) (extractMap!792 (t!356597 (toList!3449 (+!1046 lt!1620777 lt!1620774))))) (= lambda!153064 lambda!153011))))

(declare-fun bs!754839 () Bool)

(assert (= bs!754839 (and b!4421175 b!4420780)))

(assert (=> bs!754839 (= (= (extractMap!792 (t!356597 (tail!7235 (toList!3449 lm!1616)))) (extractMap!792 (t!356597 (toList!3449 lt!1620777)))) (= lambda!153064 lambda!152975))))

(declare-fun bs!754841 () Bool)

(assert (= bs!754841 (and b!4421175 d!1339378)))

(assert (=> bs!754841 (not (= lambda!153064 lambda!152940))))

(declare-fun bs!754843 () Bool)

(assert (= bs!754843 (and b!4421175 b!4420845)))

(assert (=> bs!754843 (= (= (extractMap!792 (t!356597 (tail!7235 (toList!3449 lm!1616)))) (extractMap!792 (t!356597 (toList!3449 (+!1046 lt!1620777 lt!1620774))))) (= lambda!153064 lambda!153009))))

(declare-fun bs!754845 () Bool)

(assert (= bs!754845 (and b!4421175 b!4420782)))

(assert (=> bs!754845 (= (= (extractMap!792 (t!356597 (tail!7235 (toList!3449 lm!1616)))) (extractMap!792 (t!356597 (toList!3449 lt!1620777)))) (= lambda!153064 lambda!152976))))

(assert (=> bs!754837 (= (= (extractMap!792 (t!356597 (tail!7235 (toList!3449 lm!1616)))) lt!1621083) (= lambda!153064 lambda!153013))))

(assert (=> bs!754845 (= (= (extractMap!792 (t!356597 (tail!7235 (toList!3449 lm!1616)))) lt!1621014) (= lambda!153064 lambda!152977))))

(declare-fun bs!754848 () Bool)

(assert (= bs!754848 (and b!4421175 b!4421173)))

(assert (=> bs!754848 (= lambda!153064 lambda!153062)))

(assert (=> b!4421175 true))

(declare-fun lambda!153065 () Int)

(declare-fun lt!1621303 () ListMap!2693)

(assert (=> bs!754833 (= (= lt!1621303 lt!1621094) (= lambda!153065 lambda!153015))))

(assert (=> bs!754835 (= (= lt!1621303 lt!1621025) (= lambda!153065 lambda!152978))))

(assert (=> bs!754837 (= (= lt!1621303 (extractMap!792 (t!356597 (toList!3449 (+!1046 lt!1620777 lt!1620774))))) (= lambda!153065 lambda!153011))))

(assert (=> bs!754839 (= (= lt!1621303 (extractMap!792 (t!356597 (toList!3449 lt!1620777)))) (= lambda!153065 lambda!152975))))

(assert (=> b!4421175 (= (= lt!1621303 (extractMap!792 (t!356597 (tail!7235 (toList!3449 lm!1616))))) (= lambda!153065 lambda!153064))))

(assert (=> bs!754841 (not (= lambda!153065 lambda!152940))))

(assert (=> bs!754843 (= (= lt!1621303 (extractMap!792 (t!356597 (toList!3449 (+!1046 lt!1620777 lt!1620774))))) (= lambda!153065 lambda!153009))))

(assert (=> bs!754845 (= (= lt!1621303 (extractMap!792 (t!356597 (toList!3449 lt!1620777)))) (= lambda!153065 lambda!152976))))

(assert (=> bs!754837 (= (= lt!1621303 lt!1621083) (= lambda!153065 lambda!153013))))

(assert (=> bs!754845 (= (= lt!1621303 lt!1621014) (= lambda!153065 lambda!152977))))

(assert (=> bs!754848 (= (= lt!1621303 (extractMap!792 (t!356597 (tail!7235 (toList!3449 lm!1616))))) (= lambda!153065 lambda!153062))))

(assert (=> b!4421175 true))

(declare-fun bs!754849 () Bool)

(declare-fun d!1339570 () Bool)

(assert (= bs!754849 (and d!1339570 d!1339442)))

(declare-fun lt!1621314 () ListMap!2693)

(declare-fun lambda!153066 () Int)

(assert (=> bs!754849 (= (= lt!1621314 lt!1621094) (= lambda!153066 lambda!153015))))

(declare-fun bs!754850 () Bool)

(assert (= bs!754850 (and d!1339570 d!1339386)))

(assert (=> bs!754850 (= (= lt!1621314 lt!1621025) (= lambda!153066 lambda!152978))))

(declare-fun bs!754851 () Bool)

(assert (= bs!754851 (and d!1339570 b!4420847)))

(assert (=> bs!754851 (= (= lt!1621314 (extractMap!792 (t!356597 (toList!3449 (+!1046 lt!1620777 lt!1620774))))) (= lambda!153066 lambda!153011))))

(declare-fun bs!754852 () Bool)

(assert (= bs!754852 (and d!1339570 b!4421175)))

(assert (=> bs!754852 (= (= lt!1621314 (extractMap!792 (t!356597 (tail!7235 (toList!3449 lm!1616))))) (= lambda!153066 lambda!153064))))

(declare-fun bs!754853 () Bool)

(assert (= bs!754853 (and d!1339570 d!1339378)))

(assert (=> bs!754853 (not (= lambda!153066 lambda!152940))))

(declare-fun bs!754854 () Bool)

(assert (= bs!754854 (and d!1339570 b!4420845)))

(assert (=> bs!754854 (= (= lt!1621314 (extractMap!792 (t!356597 (toList!3449 (+!1046 lt!1620777 lt!1620774))))) (= lambda!153066 lambda!153009))))

(declare-fun bs!754855 () Bool)

(assert (= bs!754855 (and d!1339570 b!4420782)))

(assert (=> bs!754855 (= (= lt!1621314 (extractMap!792 (t!356597 (toList!3449 lt!1620777)))) (= lambda!153066 lambda!152976))))

(assert (=> bs!754851 (= (= lt!1621314 lt!1621083) (= lambda!153066 lambda!153013))))

(assert (=> bs!754855 (= (= lt!1621314 lt!1621014) (= lambda!153066 lambda!152977))))

(declare-fun bs!754856 () Bool)

(assert (= bs!754856 (and d!1339570 b!4421173)))

(assert (=> bs!754856 (= (= lt!1621314 (extractMap!792 (t!356597 (tail!7235 (toList!3449 lm!1616))))) (= lambda!153066 lambda!153062))))

(declare-fun bs!754857 () Bool)

(assert (= bs!754857 (and d!1339570 b!4420780)))

(assert (=> bs!754857 (= (= lt!1621314 (extractMap!792 (t!356597 (toList!3449 lt!1620777)))) (= lambda!153066 lambda!152975))))

(assert (=> bs!754852 (= (= lt!1621314 lt!1621303) (= lambda!153066 lambda!153065))))

(assert (=> d!1339570 true))

(declare-fun b!4421171 () Bool)

(declare-fun res!1827180 () Bool)

(declare-fun e!2752821 () Bool)

(assert (=> b!4421171 (=> (not res!1827180) (not e!2752821))))

(assert (=> b!4421171 (= res!1827180 (forall!9530 (toList!3450 (extractMap!792 (t!356597 (tail!7235 (toList!3449 lm!1616))))) lambda!153066))))

(declare-fun lt!1621317 () ListMap!2693)

(declare-fun c!752566 () Bool)

(declare-fun call!307599 () Bool)

(declare-fun bm!307594 () Bool)

(assert (=> bm!307594 (= call!307599 (forall!9530 (ite c!752566 (toList!3450 (extractMap!792 (t!356597 (tail!7235 (toList!3449 lm!1616))))) (toList!3450 lt!1621317)) (ite c!752566 lambda!153062 lambda!153065)))))

(declare-fun b!4421172 () Bool)

(declare-fun e!2752823 () Bool)

(assert (=> b!4421172 (= e!2752823 (forall!9530 (toList!3450 (extractMap!792 (t!356597 (tail!7235 (toList!3449 lm!1616))))) lambda!153065))))

(declare-fun bm!307595 () Bool)

(declare-fun call!307601 () Unit!81302)

(assert (=> bm!307595 (= call!307601 (lemmaContainsAllItsOwnKeys!164 (extractMap!792 (t!356597 (tail!7235 (toList!3449 lm!1616))))))))

(assert (=> d!1339570 e!2752821))

(declare-fun res!1827179 () Bool)

(assert (=> d!1339570 (=> (not res!1827179) (not e!2752821))))

(assert (=> d!1339570 (= res!1827179 (forall!9530 (_2!27946 (h!55208 (tail!7235 (toList!3449 lm!1616)))) lambda!153066))))

(declare-fun e!2752822 () ListMap!2693)

(assert (=> d!1339570 (= lt!1621314 e!2752822)))

(assert (=> d!1339570 (= c!752566 ((_ is Nil!49534) (_2!27946 (h!55208 (tail!7235 (toList!3449 lm!1616))))))))

(assert (=> d!1339570 (noDuplicateKeys!731 (_2!27946 (h!55208 (tail!7235 (toList!3449 lm!1616)))))))

(assert (=> d!1339570 (= (addToMapMapFromBucket!368 (_2!27946 (h!55208 (tail!7235 (toList!3449 lm!1616)))) (extractMap!792 (t!356597 (tail!7235 (toList!3449 lm!1616))))) lt!1621314)))

(assert (=> b!4421173 (= e!2752822 (extractMap!792 (t!356597 (tail!7235 (toList!3449 lm!1616)))))))

(declare-fun lt!1621301 () Unit!81302)

(assert (=> b!4421173 (= lt!1621301 call!307601)))

(declare-fun call!307600 () Bool)

(assert (=> b!4421173 call!307600))

(declare-fun lt!1621309 () Unit!81302)

(assert (=> b!4421173 (= lt!1621309 lt!1621301)))

(assert (=> b!4421173 call!307599))

(declare-fun lt!1621297 () Unit!81302)

(declare-fun Unit!81362 () Unit!81302)

(assert (=> b!4421173 (= lt!1621297 Unit!81362)))

(declare-fun bm!307596 () Bool)

(assert (=> bm!307596 (= call!307600 (forall!9530 (toList!3450 (extractMap!792 (t!356597 (tail!7235 (toList!3449 lm!1616))))) (ite c!752566 lambda!153062 lambda!153064)))))

(declare-fun b!4421174 () Bool)

(assert (=> b!4421174 (= e!2752821 (invariantList!793 (toList!3450 lt!1621314)))))

(assert (=> b!4421175 (= e!2752822 lt!1621303)))

(assert (=> b!4421175 (= lt!1621317 (+!1047 (extractMap!792 (t!356597 (tail!7235 (toList!3449 lm!1616)))) (h!55207 (_2!27946 (h!55208 (tail!7235 (toList!3449 lm!1616)))))))))

(assert (=> b!4421175 (= lt!1621303 (addToMapMapFromBucket!368 (t!356596 (_2!27946 (h!55208 (tail!7235 (toList!3449 lm!1616))))) (+!1047 (extractMap!792 (t!356597 (tail!7235 (toList!3449 lm!1616)))) (h!55207 (_2!27946 (h!55208 (tail!7235 (toList!3449 lm!1616))))))))))

(declare-fun lt!1621315 () Unit!81302)

(assert (=> b!4421175 (= lt!1621315 call!307601)))

(assert (=> b!4421175 call!307600))

(declare-fun lt!1621310 () Unit!81302)

(assert (=> b!4421175 (= lt!1621310 lt!1621315)))

(assert (=> b!4421175 (forall!9530 (toList!3450 lt!1621317) lambda!153065)))

(declare-fun lt!1621298 () Unit!81302)

(declare-fun Unit!81363 () Unit!81302)

(assert (=> b!4421175 (= lt!1621298 Unit!81363)))

(assert (=> b!4421175 (forall!9530 (t!356596 (_2!27946 (h!55208 (tail!7235 (toList!3449 lm!1616))))) lambda!153065)))

(declare-fun lt!1621305 () Unit!81302)

(declare-fun Unit!81364 () Unit!81302)

(assert (=> b!4421175 (= lt!1621305 Unit!81364)))

(declare-fun lt!1621307 () Unit!81302)

(declare-fun Unit!81365 () Unit!81302)

(assert (=> b!4421175 (= lt!1621307 Unit!81365)))

(declare-fun lt!1621300 () Unit!81302)

(assert (=> b!4421175 (= lt!1621300 (forallContained!2078 (toList!3450 lt!1621317) lambda!153065 (h!55207 (_2!27946 (h!55208 (tail!7235 (toList!3449 lm!1616)))))))))

(assert (=> b!4421175 (contains!12011 lt!1621317 (_1!27945 (h!55207 (_2!27946 (h!55208 (tail!7235 (toList!3449 lm!1616)))))))))

(declare-fun lt!1621313 () Unit!81302)

(declare-fun Unit!81366 () Unit!81302)

(assert (=> b!4421175 (= lt!1621313 Unit!81366)))

(assert (=> b!4421175 (contains!12011 lt!1621303 (_1!27945 (h!55207 (_2!27946 (h!55208 (tail!7235 (toList!3449 lm!1616)))))))))

(declare-fun lt!1621306 () Unit!81302)

(declare-fun Unit!81367 () Unit!81302)

(assert (=> b!4421175 (= lt!1621306 Unit!81367)))

(assert (=> b!4421175 (forall!9530 (_2!27946 (h!55208 (tail!7235 (toList!3449 lm!1616)))) lambda!153065)))

(declare-fun lt!1621312 () Unit!81302)

(declare-fun Unit!81368 () Unit!81302)

(assert (=> b!4421175 (= lt!1621312 Unit!81368)))

(assert (=> b!4421175 call!307599))

(declare-fun lt!1621311 () Unit!81302)

(declare-fun Unit!81369 () Unit!81302)

(assert (=> b!4421175 (= lt!1621311 Unit!81369)))

(declare-fun lt!1621304 () Unit!81302)

(declare-fun Unit!81370 () Unit!81302)

(assert (=> b!4421175 (= lt!1621304 Unit!81370)))

(declare-fun lt!1621316 () Unit!81302)

(assert (=> b!4421175 (= lt!1621316 (addForallContainsKeyThenBeforeAdding!164 (extractMap!792 (t!356597 (tail!7235 (toList!3449 lm!1616)))) lt!1621303 (_1!27945 (h!55207 (_2!27946 (h!55208 (tail!7235 (toList!3449 lm!1616)))))) (_2!27945 (h!55207 (_2!27946 (h!55208 (tail!7235 (toList!3449 lm!1616))))))))))

(assert (=> b!4421175 (forall!9530 (toList!3450 (extractMap!792 (t!356597 (tail!7235 (toList!3449 lm!1616))))) lambda!153065)))

(declare-fun lt!1621299 () Unit!81302)

(assert (=> b!4421175 (= lt!1621299 lt!1621316)))

(assert (=> b!4421175 (forall!9530 (toList!3450 (extractMap!792 (t!356597 (tail!7235 (toList!3449 lm!1616))))) lambda!153065)))

(declare-fun lt!1621302 () Unit!81302)

(declare-fun Unit!81371 () Unit!81302)

(assert (=> b!4421175 (= lt!1621302 Unit!81371)))

(declare-fun res!1827178 () Bool)

(assert (=> b!4421175 (= res!1827178 (forall!9530 (_2!27946 (h!55208 (tail!7235 (toList!3449 lm!1616)))) lambda!153065))))

(assert (=> b!4421175 (=> (not res!1827178) (not e!2752823))))

(assert (=> b!4421175 e!2752823))

(declare-fun lt!1621308 () Unit!81302)

(declare-fun Unit!81372 () Unit!81302)

(assert (=> b!4421175 (= lt!1621308 Unit!81372)))

(assert (= (and d!1339570 c!752566) b!4421173))

(assert (= (and d!1339570 (not c!752566)) b!4421175))

(assert (= (and b!4421175 res!1827178) b!4421172))

(assert (= (or b!4421173 b!4421175) bm!307595))

(assert (= (or b!4421173 b!4421175) bm!307596))

(assert (= (or b!4421173 b!4421175) bm!307594))

(assert (= (and d!1339570 res!1827179) b!4421171))

(assert (= (and b!4421171 res!1827180) b!4421174))

(assert (=> b!4421175 m!5097989))

(declare-fun m!5098773 () Bool)

(assert (=> b!4421175 m!5098773))

(declare-fun m!5098775 () Bool)

(assert (=> b!4421175 m!5098775))

(declare-fun m!5098777 () Bool)

(assert (=> b!4421175 m!5098777))

(declare-fun m!5098779 () Bool)

(assert (=> b!4421175 m!5098779))

(declare-fun m!5098781 () Bool)

(assert (=> b!4421175 m!5098781))

(declare-fun m!5098783 () Bool)

(assert (=> b!4421175 m!5098783))

(declare-fun m!5098785 () Bool)

(assert (=> b!4421175 m!5098785))

(assert (=> b!4421175 m!5097989))

(assert (=> b!4421175 m!5098775))

(declare-fun m!5098787 () Bool)

(assert (=> b!4421175 m!5098787))

(assert (=> b!4421175 m!5098787))

(assert (=> b!4421175 m!5098781))

(declare-fun m!5098789 () Bool)

(assert (=> b!4421175 m!5098789))

(declare-fun m!5098791 () Bool)

(assert (=> b!4421175 m!5098791))

(assert (=> bm!307595 m!5097989))

(declare-fun m!5098793 () Bool)

(assert (=> bm!307595 m!5098793))

(declare-fun m!5098795 () Bool)

(assert (=> bm!307594 m!5098795))

(declare-fun m!5098797 () Bool)

(assert (=> bm!307596 m!5098797))

(declare-fun m!5098799 () Bool)

(assert (=> b!4421174 m!5098799))

(declare-fun m!5098801 () Bool)

(assert (=> d!1339570 m!5098801))

(declare-fun m!5098803 () Bool)

(assert (=> d!1339570 m!5098803))

(declare-fun m!5098807 () Bool)

(assert (=> b!4421171 m!5098807))

(assert (=> b!4421172 m!5098787))

(assert (=> b!4420648 d!1339570))

(declare-fun bs!754858 () Bool)

(declare-fun d!1339580 () Bool)

(assert (= bs!754858 (and d!1339580 start!430784)))

(declare-fun lambda!153067 () Int)

(assert (=> bs!754858 (= lambda!153067 lambda!152904)))

(declare-fun bs!754859 () Bool)

(assert (= bs!754859 (and d!1339580 d!1339370)))

(assert (=> bs!754859 (= lambda!153067 lambda!152934)))

(declare-fun bs!754860 () Bool)

(assert (= bs!754860 (and d!1339580 d!1339430)))

(assert (=> bs!754860 (= lambda!153067 lambda!153008)))

(declare-fun bs!754861 () Bool)

(assert (= bs!754861 (and d!1339580 d!1339284)))

(assert (=> bs!754861 (= lambda!153067 lambda!152916)))

(declare-fun bs!754862 () Bool)

(assert (= bs!754862 (and d!1339580 d!1339330)))

(assert (=> bs!754862 (= lambda!153067 lambda!152924)))

(declare-fun bs!754863 () Bool)

(assert (= bs!754863 (and d!1339580 d!1339406)))

(assert (=> bs!754863 (= lambda!153067 lambda!152979)))

(declare-fun bs!754864 () Bool)

(assert (= bs!754864 (and d!1339580 d!1339350)))

(assert (=> bs!754864 (= lambda!153067 lambda!152931)))

(declare-fun bs!754865 () Bool)

(assert (= bs!754865 (and d!1339580 d!1339444)))

(assert (=> bs!754865 (= lambda!153067 lambda!153017)))

(declare-fun bs!754866 () Bool)

(assert (= bs!754866 (and d!1339580 d!1339332)))

(assert (=> bs!754866 (= lambda!153067 lambda!152930)))

(declare-fun bs!754867 () Bool)

(assert (= bs!754867 (and d!1339580 d!1339376)))

(assert (=> bs!754867 (not (= lambda!153067 lambda!152937))))

(declare-fun bs!754868 () Bool)

(assert (= bs!754868 (and d!1339580 d!1339328)))

(assert (=> bs!754868 (= lambda!153067 lambda!152923)))

(declare-fun lt!1621323 () ListMap!2693)

(assert (=> d!1339580 (invariantList!793 (toList!3450 lt!1621323))))

(declare-fun e!2752839 () ListMap!2693)

(assert (=> d!1339580 (= lt!1621323 e!2752839)))

(declare-fun c!752568 () Bool)

(assert (=> d!1339580 (= c!752568 ((_ is Cons!49535) (t!356597 (tail!7235 (toList!3449 lm!1616)))))))

(assert (=> d!1339580 (forall!9528 (t!356597 (tail!7235 (toList!3449 lm!1616))) lambda!153067)))

(assert (=> d!1339580 (= (extractMap!792 (t!356597 (tail!7235 (toList!3449 lm!1616)))) lt!1621323)))

(declare-fun b!4421192 () Bool)

(assert (=> b!4421192 (= e!2752839 (addToMapMapFromBucket!368 (_2!27946 (h!55208 (t!356597 (tail!7235 (toList!3449 lm!1616))))) (extractMap!792 (t!356597 (t!356597 (tail!7235 (toList!3449 lm!1616)))))))))

(declare-fun b!4421193 () Bool)

(assert (=> b!4421193 (= e!2752839 (ListMap!2694 Nil!49534))))

(assert (= (and d!1339580 c!752568) b!4421192))

(assert (= (and d!1339580 (not c!752568)) b!4421193))

(declare-fun m!5098815 () Bool)

(assert (=> d!1339580 m!5098815))

(declare-fun m!5098817 () Bool)

(assert (=> d!1339580 m!5098817))

(declare-fun m!5098819 () Bool)

(assert (=> b!4421192 m!5098819))

(assert (=> b!4421192 m!5098819))

(declare-fun m!5098821 () Bool)

(assert (=> b!4421192 m!5098821))

(assert (=> b!4420648 d!1339580))

(declare-fun d!1339584 () Bool)

(declare-fun e!2752844 () Bool)

(assert (=> d!1339584 e!2752844))

(declare-fun res!1827199 () Bool)

(assert (=> d!1339584 (=> res!1827199 e!2752844)))

(declare-fun lt!1621327 () Bool)

(assert (=> d!1339584 (= res!1827199 (not lt!1621327))))

(declare-fun lt!1621324 () Bool)

(assert (=> d!1339584 (= lt!1621327 lt!1621324)))

(declare-fun lt!1621326 () Unit!81302)

(declare-fun e!2752845 () Unit!81302)

(assert (=> d!1339584 (= lt!1621326 e!2752845)))

(declare-fun c!752569 () Bool)

(assert (=> d!1339584 (= c!752569 lt!1621324)))

(assert (=> d!1339584 (= lt!1621324 (containsKey!1079 (toList!3449 lt!1620864) (_1!27946 lt!1620774)))))

(assert (=> d!1339584 (= (contains!12012 lt!1620864 (_1!27946 lt!1620774)) lt!1621327)))

(declare-fun b!4421198 () Bool)

(declare-fun lt!1621325 () Unit!81302)

(assert (=> b!4421198 (= e!2752845 lt!1621325)))

(assert (=> b!4421198 (= lt!1621325 (lemmaContainsKeyImpliesGetValueByKeyDefined!598 (toList!3449 lt!1620864) (_1!27946 lt!1620774)))))

(assert (=> b!4421198 (isDefined!7995 (getValueByKey!688 (toList!3449 lt!1620864) (_1!27946 lt!1620774)))))

(declare-fun b!4421199 () Bool)

(declare-fun Unit!81374 () Unit!81302)

(assert (=> b!4421199 (= e!2752845 Unit!81374)))

(declare-fun b!4421200 () Bool)

(assert (=> b!4421200 (= e!2752844 (isDefined!7995 (getValueByKey!688 (toList!3449 lt!1620864) (_1!27946 lt!1620774))))))

(assert (= (and d!1339584 c!752569) b!4421198))

(assert (= (and d!1339584 (not c!752569)) b!4421199))

(assert (= (and d!1339584 (not res!1827199)) b!4421200))

(declare-fun m!5098823 () Bool)

(assert (=> d!1339584 m!5098823))

(declare-fun m!5098825 () Bool)

(assert (=> b!4421198 m!5098825))

(assert (=> b!4421198 m!5097889))

(assert (=> b!4421198 m!5097889))

(declare-fun m!5098827 () Bool)

(assert (=> b!4421198 m!5098827))

(assert (=> b!4421200 m!5097889))

(assert (=> b!4421200 m!5097889))

(assert (=> b!4421200 m!5098827))

(assert (=> d!1339290 d!1339584))

(declare-fun d!1339588 () Bool)

(declare-fun c!752570 () Bool)

(assert (=> d!1339588 (= c!752570 (and ((_ is Cons!49535) lt!1620865) (= (_1!27946 (h!55208 lt!1620865)) (_1!27946 lt!1620774))))))

(declare-fun e!2752848 () Option!10702)

(assert (=> d!1339588 (= (getValueByKey!688 lt!1620865 (_1!27946 lt!1620774)) e!2752848)))

(declare-fun b!4421205 () Bool)

(declare-fun e!2752850 () Option!10702)

(assert (=> b!4421205 (= e!2752848 e!2752850)))

(declare-fun c!752571 () Bool)

(assert (=> b!4421205 (= c!752571 (and ((_ is Cons!49535) lt!1620865) (not (= (_1!27946 (h!55208 lt!1620865)) (_1!27946 lt!1620774)))))))

(declare-fun b!4421207 () Bool)

(assert (=> b!4421207 (= e!2752850 (getValueByKey!688 (t!356597 lt!1620865) (_1!27946 lt!1620774)))))

(declare-fun b!4421203 () Bool)

(assert (=> b!4421203 (= e!2752848 (Some!10701 (_2!27946 (h!55208 lt!1620865))))))

(declare-fun b!4421208 () Bool)

(assert (=> b!4421208 (= e!2752850 None!10701)))

(assert (= (and d!1339588 c!752570) b!4421203))

(assert (= (and d!1339588 (not c!752570)) b!4421205))

(assert (= (and b!4421205 c!752571) b!4421207))

(assert (= (and b!4421205 (not c!752571)) b!4421208))

(declare-fun m!5098837 () Bool)

(assert (=> b!4421207 m!5098837))

(assert (=> d!1339290 d!1339588))

(declare-fun d!1339590 () Bool)

(assert (=> d!1339590 (= (getValueByKey!688 lt!1620865 (_1!27946 lt!1620774)) (Some!10701 (_2!27946 lt!1620774)))))

(declare-fun lt!1621335 () Unit!81302)

(declare-fun choose!27862 (List!49659 (_ BitVec 64) List!49658) Unit!81302)

(assert (=> d!1339590 (= lt!1621335 (choose!27862 lt!1620865 (_1!27946 lt!1620774) (_2!27946 lt!1620774)))))

(declare-fun e!2752862 () Bool)

(assert (=> d!1339590 e!2752862))

(declare-fun res!1827216 () Bool)

(assert (=> d!1339590 (=> (not res!1827216) (not e!2752862))))

(assert (=> d!1339590 (= res!1827216 (isStrictlySorted!220 lt!1620865))))

(assert (=> d!1339590 (= (lemmaContainsTupThenGetReturnValue!422 lt!1620865 (_1!27946 lt!1620774) (_2!27946 lt!1620774)) lt!1621335)))

(declare-fun b!4421221 () Bool)

(declare-fun res!1827217 () Bool)

(assert (=> b!4421221 (=> (not res!1827217) (not e!2752862))))

(assert (=> b!4421221 (= res!1827217 (containsKey!1079 lt!1620865 (_1!27946 lt!1620774)))))

(declare-fun b!4421222 () Bool)

(assert (=> b!4421222 (= e!2752862 (contains!12017 lt!1620865 (tuple2!49305 (_1!27946 lt!1620774) (_2!27946 lt!1620774))))))

(assert (= (and d!1339590 res!1827216) b!4421221))

(assert (= (and b!4421221 res!1827217) b!4421222))

(assert (=> d!1339590 m!5097883))

(declare-fun m!5098855 () Bool)

(assert (=> d!1339590 m!5098855))

(declare-fun m!5098857 () Bool)

(assert (=> d!1339590 m!5098857))

(declare-fun m!5098859 () Bool)

(assert (=> b!4421221 m!5098859))

(declare-fun m!5098861 () Bool)

(assert (=> b!4421222 m!5098861))

(assert (=> d!1339290 d!1339590))

(declare-fun b!4421258 () Bool)

(declare-fun e!2752885 () List!49659)

(assert (=> b!4421258 (= e!2752885 (insertStrictlySorted!248 (t!356597 (toList!3449 lt!1620777)) (_1!27946 lt!1620774) (_2!27946 lt!1620774)))))

(declare-fun b!4421259 () Bool)

(declare-fun e!2752884 () List!49659)

(declare-fun e!2752882 () List!49659)

(assert (=> b!4421259 (= e!2752884 e!2752882)))

(declare-fun c!752586 () Bool)

(assert (=> b!4421259 (= c!752586 (and ((_ is Cons!49535) (toList!3449 lt!1620777)) (= (_1!27946 (h!55208 (toList!3449 lt!1620777))) (_1!27946 lt!1620774))))))

(declare-fun b!4421260 () Bool)

(declare-fun call!307609 () List!49659)

(assert (=> b!4421260 (= e!2752882 call!307609)))

(declare-fun b!4421261 () Bool)

(declare-fun e!2752883 () List!49659)

(declare-fun call!307610 () List!49659)

(assert (=> b!4421261 (= e!2752883 call!307610)))

(declare-fun b!4421262 () Bool)

(declare-fun c!752583 () Bool)

(assert (=> b!4421262 (= c!752583 (and ((_ is Cons!49535) (toList!3449 lt!1620777)) (bvsgt (_1!27946 (h!55208 (toList!3449 lt!1620777))) (_1!27946 lt!1620774))))))

(assert (=> b!4421262 (= e!2752882 e!2752883)))

(declare-fun c!752585 () Bool)

(declare-fun call!307608 () List!49659)

(declare-fun bm!307603 () Bool)

(declare-fun $colon$colon!777 (List!49659 tuple2!49304) List!49659)

(assert (=> bm!307603 (= call!307608 ($colon$colon!777 e!2752885 (ite c!752585 (h!55208 (toList!3449 lt!1620777)) (tuple2!49305 (_1!27946 lt!1620774) (_2!27946 lt!1620774)))))))

(declare-fun c!752584 () Bool)

(assert (=> bm!307603 (= c!752584 c!752585)))

(declare-fun bm!307605 () Bool)

(assert (=> bm!307605 (= call!307609 call!307608)))

(declare-fun b!4421263 () Bool)

(assert (=> b!4421263 (= e!2752885 (ite c!752586 (t!356597 (toList!3449 lt!1620777)) (ite c!752583 (Cons!49535 (h!55208 (toList!3449 lt!1620777)) (t!356597 (toList!3449 lt!1620777))) Nil!49535)))))

(declare-fun b!4421264 () Bool)

(declare-fun res!1827232 () Bool)

(declare-fun e!2752886 () Bool)

(assert (=> b!4421264 (=> (not res!1827232) (not e!2752886))))

(declare-fun lt!1621349 () List!49659)

(assert (=> b!4421264 (= res!1827232 (containsKey!1079 lt!1621349 (_1!27946 lt!1620774)))))

(declare-fun b!4421265 () Bool)

(assert (=> b!4421265 (= e!2752886 (contains!12017 lt!1621349 (tuple2!49305 (_1!27946 lt!1620774) (_2!27946 lt!1620774))))))

(declare-fun bm!307604 () Bool)

(assert (=> bm!307604 (= call!307610 call!307609)))

(declare-fun d!1339600 () Bool)

(assert (=> d!1339600 e!2752886))

(declare-fun res!1827231 () Bool)

(assert (=> d!1339600 (=> (not res!1827231) (not e!2752886))))

(assert (=> d!1339600 (= res!1827231 (isStrictlySorted!220 lt!1621349))))

(assert (=> d!1339600 (= lt!1621349 e!2752884)))

(assert (=> d!1339600 (= c!752585 (and ((_ is Cons!49535) (toList!3449 lt!1620777)) (bvslt (_1!27946 (h!55208 (toList!3449 lt!1620777))) (_1!27946 lt!1620774))))))

(assert (=> d!1339600 (isStrictlySorted!220 (toList!3449 lt!1620777))))

(assert (=> d!1339600 (= (insertStrictlySorted!248 (toList!3449 lt!1620777) (_1!27946 lt!1620774) (_2!27946 lt!1620774)) lt!1621349)))

(declare-fun b!4421266 () Bool)

(assert (=> b!4421266 (= e!2752884 call!307608)))

(declare-fun b!4421267 () Bool)

(assert (=> b!4421267 (= e!2752883 call!307610)))

(assert (= (and d!1339600 c!752585) b!4421266))

(assert (= (and d!1339600 (not c!752585)) b!4421259))

(assert (= (and b!4421259 c!752586) b!4421260))

(assert (= (and b!4421259 (not c!752586)) b!4421262))

(assert (= (and b!4421262 c!752583) b!4421261))

(assert (= (and b!4421262 (not c!752583)) b!4421267))

(assert (= (or b!4421261 b!4421267) bm!307604))

(assert (= (or b!4421260 bm!307604) bm!307605))

(assert (= (or b!4421266 bm!307605) bm!307603))

(assert (= (and bm!307603 c!752584) b!4421258))

(assert (= (and bm!307603 (not c!752584)) b!4421263))

(assert (= (and d!1339600 res!1827231) b!4421264))

(assert (= (and b!4421264 res!1827232) b!4421265))

(declare-fun m!5098911 () Bool)

(assert (=> b!4421264 m!5098911))

(declare-fun m!5098913 () Bool)

(assert (=> b!4421265 m!5098913))

(declare-fun m!5098915 () Bool)

(assert (=> d!1339600 m!5098915))

(declare-fun m!5098917 () Bool)

(assert (=> d!1339600 m!5098917))

(declare-fun m!5098919 () Bool)

(assert (=> bm!307603 m!5098919))

(declare-fun m!5098921 () Bool)

(assert (=> b!4421258 m!5098921))

(assert (=> d!1339290 d!1339600))

(declare-fun d!1339614 () Bool)

(declare-fun lt!1621350 () Bool)

(assert (=> d!1339614 (= lt!1621350 (select (content!7937 (toList!3449 lt!1620947)) lt!1620774))))

(declare-fun e!2752888 () Bool)

(assert (=> d!1339614 (= lt!1621350 e!2752888)))

(declare-fun res!1827234 () Bool)

(assert (=> d!1339614 (=> (not res!1827234) (not e!2752888))))

(assert (=> d!1339614 (= res!1827234 ((_ is Cons!49535) (toList!3449 lt!1620947)))))

(assert (=> d!1339614 (= (contains!12017 (toList!3449 lt!1620947) lt!1620774) lt!1621350)))

(declare-fun b!4421268 () Bool)

(declare-fun e!2752887 () Bool)

(assert (=> b!4421268 (= e!2752888 e!2752887)))

(declare-fun res!1827233 () Bool)

(assert (=> b!4421268 (=> res!1827233 e!2752887)))

(assert (=> b!4421268 (= res!1827233 (= (h!55208 (toList!3449 lt!1620947)) lt!1620774))))

(declare-fun b!4421269 () Bool)

(assert (=> b!4421269 (= e!2752887 (contains!12017 (t!356597 (toList!3449 lt!1620947)) lt!1620774))))

(assert (= (and d!1339614 res!1827234) b!4421268))

(assert (= (and b!4421268 (not res!1827233)) b!4421269))

(declare-fun m!5098923 () Bool)

(assert (=> d!1339614 m!5098923))

(declare-fun m!5098925 () Bool)

(assert (=> d!1339614 m!5098925))

(declare-fun m!5098927 () Bool)

(assert (=> b!4421269 m!5098927))

(assert (=> b!4420703 d!1339614))

(declare-fun d!1339616 () Bool)

(declare-fun res!1827235 () Bool)

(declare-fun e!2752889 () Bool)

(assert (=> d!1339616 (=> res!1827235 e!2752889)))

(assert (=> d!1339616 (= res!1827235 ((_ is Nil!49535) (toList!3449 lm!1616)))))

(assert (=> d!1339616 (= (forall!9528 (toList!3449 lm!1616) lambda!152937) e!2752889)))

(declare-fun b!4421270 () Bool)

(declare-fun e!2752890 () Bool)

(assert (=> b!4421270 (= e!2752889 e!2752890)))

(declare-fun res!1827236 () Bool)

(assert (=> b!4421270 (=> (not res!1827236) (not e!2752890))))

(assert (=> b!4421270 (= res!1827236 (dynLambda!20828 lambda!152937 (h!55208 (toList!3449 lm!1616))))))

(declare-fun b!4421271 () Bool)

(assert (=> b!4421271 (= e!2752890 (forall!9528 (t!356597 (toList!3449 lm!1616)) lambda!152937))))

(assert (= (and d!1339616 (not res!1827235)) b!4421270))

(assert (= (and b!4421270 res!1827236) b!4421271))

(declare-fun b_lambda!142577 () Bool)

(assert (=> (not b_lambda!142577) (not b!4421270)))

(declare-fun m!5098929 () Bool)

(assert (=> b!4421270 m!5098929))

(declare-fun m!5098931 () Bool)

(assert (=> b!4421271 m!5098931))

(assert (=> d!1339376 d!1339616))

(declare-fun d!1339618 () Bool)

(declare-fun res!1827237 () Bool)

(declare-fun e!2752891 () Bool)

(assert (=> d!1339618 (=> res!1827237 e!2752891)))

(assert (=> d!1339618 (= res!1827237 ((_ is Nil!49535) (t!356597 (toList!3449 lt!1620779))))))

(assert (=> d!1339618 (= (forall!9528 (t!356597 (toList!3449 lt!1620779)) lambda!152904) e!2752891)))

(declare-fun b!4421272 () Bool)

(declare-fun e!2752892 () Bool)

(assert (=> b!4421272 (= e!2752891 e!2752892)))

(declare-fun res!1827238 () Bool)

(assert (=> b!4421272 (=> (not res!1827238) (not e!2752892))))

(assert (=> b!4421272 (= res!1827238 (dynLambda!20828 lambda!152904 (h!55208 (t!356597 (toList!3449 lt!1620779)))))))

(declare-fun b!4421273 () Bool)

(assert (=> b!4421273 (= e!2752892 (forall!9528 (t!356597 (t!356597 (toList!3449 lt!1620779))) lambda!152904))))

(assert (= (and d!1339618 (not res!1827237)) b!4421272))

(assert (= (and b!4421272 res!1827238) b!4421273))

(declare-fun b_lambda!142579 () Bool)

(assert (=> (not b_lambda!142579) (not b!4421272)))

(declare-fun m!5098933 () Bool)

(assert (=> b!4421272 m!5098933))

(declare-fun m!5098935 () Bool)

(assert (=> b!4421273 m!5098935))

(assert (=> b!4420701 d!1339618))

(declare-fun d!1339620 () Bool)

(declare-fun c!752589 () Bool)

(assert (=> d!1339620 (= c!752589 ((_ is Nil!49534) (toList!3450 (extractMap!792 (toList!3449 (+!1046 lt!1620777 lt!1620774))))))))

(declare-fun e!2752895 () (InoxSet tuple2!49302))

(assert (=> d!1339620 (= (content!7934 (toList!3450 (extractMap!792 (toList!3449 (+!1046 lt!1620777 lt!1620774))))) e!2752895)))

(declare-fun b!4421278 () Bool)

(assert (=> b!4421278 (= e!2752895 ((as const (Array tuple2!49302 Bool)) false))))

(declare-fun b!4421279 () Bool)

(assert (=> b!4421279 (= e!2752895 ((_ map or) (store ((as const (Array tuple2!49302 Bool)) false) (h!55207 (toList!3450 (extractMap!792 (toList!3449 (+!1046 lt!1620777 lt!1620774))))) true) (content!7934 (t!356596 (toList!3450 (extractMap!792 (toList!3449 (+!1046 lt!1620777 lt!1620774))))))))))

(assert (= (and d!1339620 c!752589) b!4421278))

(assert (= (and d!1339620 (not c!752589)) b!4421279))

(declare-fun m!5098937 () Bool)

(assert (=> b!4421279 m!5098937))

(declare-fun m!5098939 () Bool)

(assert (=> b!4421279 m!5098939))

(assert (=> d!1339352 d!1339620))

(declare-fun d!1339622 () Bool)

(declare-fun c!752590 () Bool)

(assert (=> d!1339622 (= c!752590 ((_ is Nil!49534) (toList!3450 (+!1047 (extractMap!792 (toList!3449 lt!1620777)) (tuple2!49303 key!3717 newValue!93)))))))

(declare-fun e!2752896 () (InoxSet tuple2!49302))

(assert (=> d!1339622 (= (content!7934 (toList!3450 (+!1047 (extractMap!792 (toList!3449 lt!1620777)) (tuple2!49303 key!3717 newValue!93)))) e!2752896)))

(declare-fun b!4421280 () Bool)

(assert (=> b!4421280 (= e!2752896 ((as const (Array tuple2!49302 Bool)) false))))

(declare-fun b!4421281 () Bool)

(assert (=> b!4421281 (= e!2752896 ((_ map or) (store ((as const (Array tuple2!49302 Bool)) false) (h!55207 (toList!3450 (+!1047 (extractMap!792 (toList!3449 lt!1620777)) (tuple2!49303 key!3717 newValue!93)))) true) (content!7934 (t!356596 (toList!3450 (+!1047 (extractMap!792 (toList!3449 lt!1620777)) (tuple2!49303 key!3717 newValue!93)))))))))

(assert (= (and d!1339622 c!752590) b!4421280))

(assert (= (and d!1339622 (not c!752590)) b!4421281))

(declare-fun m!5098941 () Bool)

(assert (=> b!4421281 m!5098941))

(declare-fun m!5098943 () Bool)

(assert (=> b!4421281 m!5098943))

(assert (=> d!1339352 d!1339622))

(declare-fun d!1339624 () Bool)

(declare-fun res!1827239 () Bool)

(declare-fun e!2752897 () Bool)

(assert (=> d!1339624 (=> res!1827239 e!2752897)))

(assert (=> d!1339624 (= res!1827239 (not ((_ is Cons!49534) (_2!27946 (tuple2!49305 hash!366 newBucket!194)))))))

(assert (=> d!1339624 (= (noDuplicateKeys!731 (_2!27946 (tuple2!49305 hash!366 newBucket!194))) e!2752897)))

(declare-fun b!4421282 () Bool)

(declare-fun e!2752898 () Bool)

(assert (=> b!4421282 (= e!2752897 e!2752898)))

(declare-fun res!1827240 () Bool)

(assert (=> b!4421282 (=> (not res!1827240) (not e!2752898))))

(assert (=> b!4421282 (= res!1827240 (not (containsKey!1080 (t!356596 (_2!27946 (tuple2!49305 hash!366 newBucket!194))) (_1!27945 (h!55207 (_2!27946 (tuple2!49305 hash!366 newBucket!194)))))))))

(declare-fun b!4421283 () Bool)

(assert (=> b!4421283 (= e!2752898 (noDuplicateKeys!731 (t!356596 (_2!27946 (tuple2!49305 hash!366 newBucket!194)))))))

(assert (= (and d!1339624 (not res!1827239)) b!4421282))

(assert (= (and b!4421282 res!1827240) b!4421283))

(declare-fun m!5098945 () Bool)

(assert (=> b!4421282 m!5098945))

(declare-fun m!5098947 () Bool)

(assert (=> b!4421283 m!5098947))

(assert (=> bs!754665 d!1339624))

(declare-fun d!1339626 () Bool)

(declare-fun lt!1621354 () Bool)

(assert (=> d!1339626 (= lt!1621354 (select (content!7934 (toList!3450 lt!1620915)) (tuple2!49303 key!3717 newValue!93)))))

(declare-fun e!2752904 () Bool)

(assert (=> d!1339626 (= lt!1621354 e!2752904)))

(declare-fun res!1827245 () Bool)

(assert (=> d!1339626 (=> (not res!1827245) (not e!2752904))))

(assert (=> d!1339626 (= res!1827245 ((_ is Cons!49534) (toList!3450 lt!1620915)))))

(assert (=> d!1339626 (= (contains!12018 (toList!3450 lt!1620915) (tuple2!49303 key!3717 newValue!93)) lt!1621354)))

(declare-fun b!4421290 () Bool)

(declare-fun e!2752905 () Bool)

(assert (=> b!4421290 (= e!2752904 e!2752905)))

(declare-fun res!1827246 () Bool)

(assert (=> b!4421290 (=> res!1827246 e!2752905)))

(assert (=> b!4421290 (= res!1827246 (= (h!55207 (toList!3450 lt!1620915)) (tuple2!49303 key!3717 newValue!93)))))

(declare-fun b!4421291 () Bool)

(assert (=> b!4421291 (= e!2752905 (contains!12018 (t!356596 (toList!3450 lt!1620915)) (tuple2!49303 key!3717 newValue!93)))))

(assert (= (and d!1339626 res!1827245) b!4421290))

(assert (= (and b!4421290 (not res!1827246)) b!4421291))

(declare-fun m!5098957 () Bool)

(assert (=> d!1339626 m!5098957))

(declare-fun m!5098959 () Bool)

(assert (=> d!1339626 m!5098959))

(declare-fun m!5098961 () Bool)

(assert (=> b!4421291 m!5098961))

(assert (=> b!4420647 d!1339626))

(declare-fun d!1339632 () Bool)

(assert (=> d!1339632 (= (isEmpty!28327 (toList!3449 lm!1616)) ((_ is Nil!49535) (toList!3449 lm!1616)))))

(assert (=> d!1339362 d!1339632))

(declare-fun bs!754908 () Bool)

(declare-fun b!4421296 () Bool)

(assert (= bs!754908 (and b!4421296 d!1339442)))

(declare-fun lambda!153073 () Int)

(assert (=> bs!754908 (= (= (extractMap!792 (t!356597 (toList!3449 lm!1616))) lt!1621094) (= lambda!153073 lambda!153015))))

(declare-fun bs!754909 () Bool)

(assert (= bs!754909 (and b!4421296 d!1339386)))

(assert (=> bs!754909 (= (= (extractMap!792 (t!356597 (toList!3449 lm!1616))) lt!1621025) (= lambda!153073 lambda!152978))))

(declare-fun bs!754910 () Bool)

(assert (= bs!754910 (and b!4421296 b!4420847)))

(assert (=> bs!754910 (= (= (extractMap!792 (t!356597 (toList!3449 lm!1616))) (extractMap!792 (t!356597 (toList!3449 (+!1046 lt!1620777 lt!1620774))))) (= lambda!153073 lambda!153011))))

(declare-fun bs!754911 () Bool)

(assert (= bs!754911 (and b!4421296 b!4421175)))

(assert (=> bs!754911 (= (= (extractMap!792 (t!356597 (toList!3449 lm!1616))) (extractMap!792 (t!356597 (tail!7235 (toList!3449 lm!1616))))) (= lambda!153073 lambda!153064))))

(declare-fun bs!754912 () Bool)

(assert (= bs!754912 (and b!4421296 d!1339378)))

(assert (=> bs!754912 (not (= lambda!153073 lambda!152940))))

(declare-fun bs!754913 () Bool)

(assert (= bs!754913 (and b!4421296 b!4420845)))

(assert (=> bs!754913 (= (= (extractMap!792 (t!356597 (toList!3449 lm!1616))) (extractMap!792 (t!356597 (toList!3449 (+!1046 lt!1620777 lt!1620774))))) (= lambda!153073 lambda!153009))))

(assert (=> bs!754910 (= (= (extractMap!792 (t!356597 (toList!3449 lm!1616))) lt!1621083) (= lambda!153073 lambda!153013))))

(declare-fun bs!754914 () Bool)

(assert (= bs!754914 (and b!4421296 b!4420782)))

(assert (=> bs!754914 (= (= (extractMap!792 (t!356597 (toList!3449 lm!1616))) lt!1621014) (= lambda!153073 lambda!152977))))

(declare-fun bs!754915 () Bool)

(assert (= bs!754915 (and b!4421296 b!4421173)))

(assert (=> bs!754915 (= (= (extractMap!792 (t!356597 (toList!3449 lm!1616))) (extractMap!792 (t!356597 (tail!7235 (toList!3449 lm!1616))))) (= lambda!153073 lambda!153062))))

(declare-fun bs!754916 () Bool)

(assert (= bs!754916 (and b!4421296 b!4420780)))

(assert (=> bs!754916 (= (= (extractMap!792 (t!356597 (toList!3449 lm!1616))) (extractMap!792 (t!356597 (toList!3449 lt!1620777)))) (= lambda!153073 lambda!152975))))

(assert (=> bs!754911 (= (= (extractMap!792 (t!356597 (toList!3449 lm!1616))) lt!1621303) (= lambda!153073 lambda!153065))))

(assert (=> bs!754914 (= (= (extractMap!792 (t!356597 (toList!3449 lm!1616))) (extractMap!792 (t!356597 (toList!3449 lt!1620777)))) (= lambda!153073 lambda!152976))))

(declare-fun bs!754917 () Bool)

(assert (= bs!754917 (and b!4421296 d!1339570)))

(assert (=> bs!754917 (= (= (extractMap!792 (t!356597 (toList!3449 lm!1616))) lt!1621314) (= lambda!153073 lambda!153066))))

(assert (=> b!4421296 true))

(declare-fun bs!754918 () Bool)

(declare-fun b!4421298 () Bool)

(assert (= bs!754918 (and b!4421298 d!1339386)))

(declare-fun lambda!153074 () Int)

(assert (=> bs!754918 (= (= (extractMap!792 (t!356597 (toList!3449 lm!1616))) lt!1621025) (= lambda!153074 lambda!152978))))

(declare-fun bs!754919 () Bool)

(assert (= bs!754919 (and b!4421298 b!4420847)))

(assert (=> bs!754919 (= (= (extractMap!792 (t!356597 (toList!3449 lm!1616))) (extractMap!792 (t!356597 (toList!3449 (+!1046 lt!1620777 lt!1620774))))) (= lambda!153074 lambda!153011))))

(declare-fun bs!754920 () Bool)

(assert (= bs!754920 (and b!4421298 b!4421175)))

(assert (=> bs!754920 (= (= (extractMap!792 (t!356597 (toList!3449 lm!1616))) (extractMap!792 (t!356597 (tail!7235 (toList!3449 lm!1616))))) (= lambda!153074 lambda!153064))))

(declare-fun bs!754921 () Bool)

(assert (= bs!754921 (and b!4421298 d!1339378)))

(assert (=> bs!754921 (not (= lambda!153074 lambda!152940))))

(declare-fun bs!754922 () Bool)

(assert (= bs!754922 (and b!4421298 b!4420845)))

(assert (=> bs!754922 (= (= (extractMap!792 (t!356597 (toList!3449 lm!1616))) (extractMap!792 (t!356597 (toList!3449 (+!1046 lt!1620777 lt!1620774))))) (= lambda!153074 lambda!153009))))

(assert (=> bs!754919 (= (= (extractMap!792 (t!356597 (toList!3449 lm!1616))) lt!1621083) (= lambda!153074 lambda!153013))))

(declare-fun bs!754923 () Bool)

(assert (= bs!754923 (and b!4421298 b!4421296)))

(assert (=> bs!754923 (= lambda!153074 lambda!153073)))

(declare-fun bs!754924 () Bool)

(assert (= bs!754924 (and b!4421298 d!1339442)))

(assert (=> bs!754924 (= (= (extractMap!792 (t!356597 (toList!3449 lm!1616))) lt!1621094) (= lambda!153074 lambda!153015))))

(declare-fun bs!754925 () Bool)

(assert (= bs!754925 (and b!4421298 b!4420782)))

(assert (=> bs!754925 (= (= (extractMap!792 (t!356597 (toList!3449 lm!1616))) lt!1621014) (= lambda!153074 lambda!152977))))

(declare-fun bs!754926 () Bool)

(assert (= bs!754926 (and b!4421298 b!4421173)))

(assert (=> bs!754926 (= (= (extractMap!792 (t!356597 (toList!3449 lm!1616))) (extractMap!792 (t!356597 (tail!7235 (toList!3449 lm!1616))))) (= lambda!153074 lambda!153062))))

(declare-fun bs!754927 () Bool)

(assert (= bs!754927 (and b!4421298 b!4420780)))

(assert (=> bs!754927 (= (= (extractMap!792 (t!356597 (toList!3449 lm!1616))) (extractMap!792 (t!356597 (toList!3449 lt!1620777)))) (= lambda!153074 lambda!152975))))

(assert (=> bs!754920 (= (= (extractMap!792 (t!356597 (toList!3449 lm!1616))) lt!1621303) (= lambda!153074 lambda!153065))))

(assert (=> bs!754925 (= (= (extractMap!792 (t!356597 (toList!3449 lm!1616))) (extractMap!792 (t!356597 (toList!3449 lt!1620777)))) (= lambda!153074 lambda!152976))))

(declare-fun bs!754928 () Bool)

(assert (= bs!754928 (and b!4421298 d!1339570)))

(assert (=> bs!754928 (= (= (extractMap!792 (t!356597 (toList!3449 lm!1616))) lt!1621314) (= lambda!153074 lambda!153066))))

(assert (=> b!4421298 true))

(declare-fun lt!1621362 () ListMap!2693)

(declare-fun lambda!153075 () Int)

(assert (=> bs!754918 (= (= lt!1621362 lt!1621025) (= lambda!153075 lambda!152978))))

(assert (=> bs!754919 (= (= lt!1621362 (extractMap!792 (t!356597 (toList!3449 (+!1046 lt!1620777 lt!1620774))))) (= lambda!153075 lambda!153011))))

(assert (=> b!4421298 (= (= lt!1621362 (extractMap!792 (t!356597 (toList!3449 lm!1616)))) (= lambda!153075 lambda!153074))))

(assert (=> bs!754920 (= (= lt!1621362 (extractMap!792 (t!356597 (tail!7235 (toList!3449 lm!1616))))) (= lambda!153075 lambda!153064))))

(assert (=> bs!754921 (not (= lambda!153075 lambda!152940))))

(assert (=> bs!754922 (= (= lt!1621362 (extractMap!792 (t!356597 (toList!3449 (+!1046 lt!1620777 lt!1620774))))) (= lambda!153075 lambda!153009))))

(assert (=> bs!754919 (= (= lt!1621362 lt!1621083) (= lambda!153075 lambda!153013))))

(assert (=> bs!754923 (= (= lt!1621362 (extractMap!792 (t!356597 (toList!3449 lm!1616)))) (= lambda!153075 lambda!153073))))

(assert (=> bs!754924 (= (= lt!1621362 lt!1621094) (= lambda!153075 lambda!153015))))

(assert (=> bs!754925 (= (= lt!1621362 lt!1621014) (= lambda!153075 lambda!152977))))

(assert (=> bs!754926 (= (= lt!1621362 (extractMap!792 (t!356597 (tail!7235 (toList!3449 lm!1616))))) (= lambda!153075 lambda!153062))))

(assert (=> bs!754927 (= (= lt!1621362 (extractMap!792 (t!356597 (toList!3449 lt!1620777)))) (= lambda!153075 lambda!152975))))

(assert (=> bs!754920 (= (= lt!1621362 lt!1621303) (= lambda!153075 lambda!153065))))

(assert (=> bs!754925 (= (= lt!1621362 (extractMap!792 (t!356597 (toList!3449 lt!1620777)))) (= lambda!153075 lambda!152976))))

(assert (=> bs!754928 (= (= lt!1621362 lt!1621314) (= lambda!153075 lambda!153066))))

(assert (=> b!4421298 true))

(declare-fun bs!754930 () Bool)

(declare-fun d!1339636 () Bool)

(assert (= bs!754930 (and d!1339636 d!1339386)))

(declare-fun lt!1621373 () ListMap!2693)

(declare-fun lambda!153076 () Int)

(assert (=> bs!754930 (= (= lt!1621373 lt!1621025) (= lambda!153076 lambda!152978))))

(declare-fun bs!754931 () Bool)

(assert (= bs!754931 (and d!1339636 b!4420847)))

(assert (=> bs!754931 (= (= lt!1621373 (extractMap!792 (t!356597 (toList!3449 (+!1046 lt!1620777 lt!1620774))))) (= lambda!153076 lambda!153011))))

(declare-fun bs!754932 () Bool)

(assert (= bs!754932 (and d!1339636 b!4421298)))

(assert (=> bs!754932 (= (= lt!1621373 (extractMap!792 (t!356597 (toList!3449 lm!1616)))) (= lambda!153076 lambda!153074))))

(declare-fun bs!754933 () Bool)

(assert (= bs!754933 (and d!1339636 b!4421175)))

(assert (=> bs!754933 (= (= lt!1621373 (extractMap!792 (t!356597 (tail!7235 (toList!3449 lm!1616))))) (= lambda!153076 lambda!153064))))

(declare-fun bs!754934 () Bool)

(assert (= bs!754934 (and d!1339636 d!1339378)))

(assert (=> bs!754934 (not (= lambda!153076 lambda!152940))))

(assert (=> bs!754931 (= (= lt!1621373 lt!1621083) (= lambda!153076 lambda!153013))))

(declare-fun bs!754935 () Bool)

(assert (= bs!754935 (and d!1339636 b!4421296)))

(assert (=> bs!754935 (= (= lt!1621373 (extractMap!792 (t!356597 (toList!3449 lm!1616)))) (= lambda!153076 lambda!153073))))

(declare-fun bs!754936 () Bool)

(assert (= bs!754936 (and d!1339636 d!1339442)))

(assert (=> bs!754936 (= (= lt!1621373 lt!1621094) (= lambda!153076 lambda!153015))))

(declare-fun bs!754937 () Bool)

(assert (= bs!754937 (and d!1339636 b!4420782)))

(assert (=> bs!754937 (= (= lt!1621373 lt!1621014) (= lambda!153076 lambda!152977))))

(declare-fun bs!754938 () Bool)

(assert (= bs!754938 (and d!1339636 b!4421173)))

(assert (=> bs!754938 (= (= lt!1621373 (extractMap!792 (t!356597 (tail!7235 (toList!3449 lm!1616))))) (= lambda!153076 lambda!153062))))

(declare-fun bs!754939 () Bool)

(assert (= bs!754939 (and d!1339636 b!4420780)))

(assert (=> bs!754939 (= (= lt!1621373 (extractMap!792 (t!356597 (toList!3449 lt!1620777)))) (= lambda!153076 lambda!152975))))

(assert (=> bs!754933 (= (= lt!1621373 lt!1621303) (= lambda!153076 lambda!153065))))

(declare-fun bs!754941 () Bool)

(assert (= bs!754941 (and d!1339636 b!4420845)))

(assert (=> bs!754941 (= (= lt!1621373 (extractMap!792 (t!356597 (toList!3449 (+!1046 lt!1620777 lt!1620774))))) (= lambda!153076 lambda!153009))))

(assert (=> bs!754932 (= (= lt!1621373 lt!1621362) (= lambda!153076 lambda!153075))))

(assert (=> bs!754937 (= (= lt!1621373 (extractMap!792 (t!356597 (toList!3449 lt!1620777)))) (= lambda!153076 lambda!152976))))

(declare-fun bs!754943 () Bool)

(assert (= bs!754943 (and d!1339636 d!1339570)))

(assert (=> bs!754943 (= (= lt!1621373 lt!1621314) (= lambda!153076 lambda!153066))))

(assert (=> d!1339636 true))

(declare-fun b!4421294 () Bool)

(declare-fun res!1827251 () Bool)

(declare-fun e!2752908 () Bool)

(assert (=> b!4421294 (=> (not res!1827251) (not e!2752908))))

(assert (=> b!4421294 (= res!1827251 (forall!9530 (toList!3450 (extractMap!792 (t!356597 (toList!3449 lm!1616)))) lambda!153076))))

(declare-fun bm!307606 () Bool)

(declare-fun lt!1621376 () ListMap!2693)

(declare-fun c!752592 () Bool)

(declare-fun call!307611 () Bool)

(assert (=> bm!307606 (= call!307611 (forall!9530 (ite c!752592 (toList!3450 (extractMap!792 (t!356597 (toList!3449 lm!1616)))) (toList!3450 lt!1621376)) (ite c!752592 lambda!153073 lambda!153075)))))

(declare-fun b!4421295 () Bool)

(declare-fun e!2752910 () Bool)

(assert (=> b!4421295 (= e!2752910 (forall!9530 (toList!3450 (extractMap!792 (t!356597 (toList!3449 lm!1616)))) lambda!153075))))

(declare-fun bm!307607 () Bool)

(declare-fun call!307613 () Unit!81302)

(assert (=> bm!307607 (= call!307613 (lemmaContainsAllItsOwnKeys!164 (extractMap!792 (t!356597 (toList!3449 lm!1616)))))))

(assert (=> d!1339636 e!2752908))

(declare-fun res!1827250 () Bool)

(assert (=> d!1339636 (=> (not res!1827250) (not e!2752908))))

(assert (=> d!1339636 (= res!1827250 (forall!9530 (_2!27946 (h!55208 (toList!3449 lm!1616))) lambda!153076))))

(declare-fun e!2752909 () ListMap!2693)

(assert (=> d!1339636 (= lt!1621373 e!2752909)))

(assert (=> d!1339636 (= c!752592 ((_ is Nil!49534) (_2!27946 (h!55208 (toList!3449 lm!1616)))))))

(assert (=> d!1339636 (noDuplicateKeys!731 (_2!27946 (h!55208 (toList!3449 lm!1616))))))

(assert (=> d!1339636 (= (addToMapMapFromBucket!368 (_2!27946 (h!55208 (toList!3449 lm!1616))) (extractMap!792 (t!356597 (toList!3449 lm!1616)))) lt!1621373)))

(assert (=> b!4421296 (= e!2752909 (extractMap!792 (t!356597 (toList!3449 lm!1616))))))

(declare-fun lt!1621359 () Unit!81302)

(assert (=> b!4421296 (= lt!1621359 call!307613)))

(declare-fun call!307612 () Bool)

(assert (=> b!4421296 call!307612))

(declare-fun lt!1621368 () Unit!81302)

(assert (=> b!4421296 (= lt!1621368 lt!1621359)))

(assert (=> b!4421296 call!307611))

(declare-fun lt!1621355 () Unit!81302)

(declare-fun Unit!81386 () Unit!81302)

(assert (=> b!4421296 (= lt!1621355 Unit!81386)))

(declare-fun bm!307608 () Bool)

(assert (=> bm!307608 (= call!307612 (forall!9530 (toList!3450 (extractMap!792 (t!356597 (toList!3449 lm!1616)))) (ite c!752592 lambda!153073 lambda!153074)))))

(declare-fun b!4421297 () Bool)

(assert (=> b!4421297 (= e!2752908 (invariantList!793 (toList!3450 lt!1621373)))))

(assert (=> b!4421298 (= e!2752909 lt!1621362)))

(assert (=> b!4421298 (= lt!1621376 (+!1047 (extractMap!792 (t!356597 (toList!3449 lm!1616))) (h!55207 (_2!27946 (h!55208 (toList!3449 lm!1616))))))))

(assert (=> b!4421298 (= lt!1621362 (addToMapMapFromBucket!368 (t!356596 (_2!27946 (h!55208 (toList!3449 lm!1616)))) (+!1047 (extractMap!792 (t!356597 (toList!3449 lm!1616))) (h!55207 (_2!27946 (h!55208 (toList!3449 lm!1616)))))))))

(declare-fun lt!1621374 () Unit!81302)

(assert (=> b!4421298 (= lt!1621374 call!307613)))

(assert (=> b!4421298 call!307612))

(declare-fun lt!1621369 () Unit!81302)

(assert (=> b!4421298 (= lt!1621369 lt!1621374)))

(assert (=> b!4421298 (forall!9530 (toList!3450 lt!1621376) lambda!153075)))

(declare-fun lt!1621356 () Unit!81302)

(declare-fun Unit!81387 () Unit!81302)

(assert (=> b!4421298 (= lt!1621356 Unit!81387)))

(assert (=> b!4421298 (forall!9530 (t!356596 (_2!27946 (h!55208 (toList!3449 lm!1616)))) lambda!153075)))

(declare-fun lt!1621364 () Unit!81302)

(declare-fun Unit!81388 () Unit!81302)

(assert (=> b!4421298 (= lt!1621364 Unit!81388)))

(declare-fun lt!1621366 () Unit!81302)

(declare-fun Unit!81389 () Unit!81302)

(assert (=> b!4421298 (= lt!1621366 Unit!81389)))

(declare-fun lt!1621358 () Unit!81302)

(assert (=> b!4421298 (= lt!1621358 (forallContained!2078 (toList!3450 lt!1621376) lambda!153075 (h!55207 (_2!27946 (h!55208 (toList!3449 lm!1616))))))))

(assert (=> b!4421298 (contains!12011 lt!1621376 (_1!27945 (h!55207 (_2!27946 (h!55208 (toList!3449 lm!1616))))))))

(declare-fun lt!1621372 () Unit!81302)

(declare-fun Unit!81390 () Unit!81302)

(assert (=> b!4421298 (= lt!1621372 Unit!81390)))

(assert (=> b!4421298 (contains!12011 lt!1621362 (_1!27945 (h!55207 (_2!27946 (h!55208 (toList!3449 lm!1616))))))))

(declare-fun lt!1621365 () Unit!81302)

(declare-fun Unit!81391 () Unit!81302)

(assert (=> b!4421298 (= lt!1621365 Unit!81391)))

(assert (=> b!4421298 (forall!9530 (_2!27946 (h!55208 (toList!3449 lm!1616))) lambda!153075)))

(declare-fun lt!1621371 () Unit!81302)

(declare-fun Unit!81392 () Unit!81302)

(assert (=> b!4421298 (= lt!1621371 Unit!81392)))

(assert (=> b!4421298 call!307611))

(declare-fun lt!1621370 () Unit!81302)

(declare-fun Unit!81393 () Unit!81302)

(assert (=> b!4421298 (= lt!1621370 Unit!81393)))

(declare-fun lt!1621363 () Unit!81302)

(declare-fun Unit!81394 () Unit!81302)

(assert (=> b!4421298 (= lt!1621363 Unit!81394)))

(declare-fun lt!1621375 () Unit!81302)

(assert (=> b!4421298 (= lt!1621375 (addForallContainsKeyThenBeforeAdding!164 (extractMap!792 (t!356597 (toList!3449 lm!1616))) lt!1621362 (_1!27945 (h!55207 (_2!27946 (h!55208 (toList!3449 lm!1616))))) (_2!27945 (h!55207 (_2!27946 (h!55208 (toList!3449 lm!1616)))))))))

(assert (=> b!4421298 (forall!9530 (toList!3450 (extractMap!792 (t!356597 (toList!3449 lm!1616)))) lambda!153075)))

(declare-fun lt!1621357 () Unit!81302)

(assert (=> b!4421298 (= lt!1621357 lt!1621375)))

(assert (=> b!4421298 (forall!9530 (toList!3450 (extractMap!792 (t!356597 (toList!3449 lm!1616)))) lambda!153075)))

(declare-fun lt!1621361 () Unit!81302)

(declare-fun Unit!81395 () Unit!81302)

(assert (=> b!4421298 (= lt!1621361 Unit!81395)))

(declare-fun res!1827249 () Bool)

(assert (=> b!4421298 (= res!1827249 (forall!9530 (_2!27946 (h!55208 (toList!3449 lm!1616))) lambda!153075))))

(assert (=> b!4421298 (=> (not res!1827249) (not e!2752910))))

(assert (=> b!4421298 e!2752910))

(declare-fun lt!1621367 () Unit!81302)

(declare-fun Unit!81396 () Unit!81302)

(assert (=> b!4421298 (= lt!1621367 Unit!81396)))

(assert (= (and d!1339636 c!752592) b!4421296))

(assert (= (and d!1339636 (not c!752592)) b!4421298))

(assert (= (and b!4421298 res!1827249) b!4421295))

(assert (= (or b!4421296 b!4421298) bm!307607))

(assert (= (or b!4421296 b!4421298) bm!307608))

(assert (= (or b!4421296 b!4421298) bm!307606))

(assert (= (and d!1339636 res!1827250) b!4421294))

(assert (= (and b!4421294 res!1827251) b!4421297))

(assert (=> b!4421298 m!5097851))

(declare-fun m!5098985 () Bool)

(assert (=> b!4421298 m!5098985))

(declare-fun m!5098987 () Bool)

(assert (=> b!4421298 m!5098987))

(declare-fun m!5098989 () Bool)

(assert (=> b!4421298 m!5098989))

(declare-fun m!5098991 () Bool)

(assert (=> b!4421298 m!5098991))

(declare-fun m!5098993 () Bool)

(assert (=> b!4421298 m!5098993))

(declare-fun m!5098995 () Bool)

(assert (=> b!4421298 m!5098995))

(declare-fun m!5098997 () Bool)

(assert (=> b!4421298 m!5098997))

(assert (=> b!4421298 m!5097851))

(assert (=> b!4421298 m!5098987))

(declare-fun m!5098999 () Bool)

(assert (=> b!4421298 m!5098999))

(assert (=> b!4421298 m!5098999))

(assert (=> b!4421298 m!5098993))

(declare-fun m!5099001 () Bool)

(assert (=> b!4421298 m!5099001))

(declare-fun m!5099003 () Bool)

(assert (=> b!4421298 m!5099003))

(assert (=> bm!307607 m!5097851))

(declare-fun m!5099005 () Bool)

(assert (=> bm!307607 m!5099005))

(declare-fun m!5099007 () Bool)

(assert (=> bm!307606 m!5099007))

(declare-fun m!5099009 () Bool)

(assert (=> bm!307608 m!5099009))

(declare-fun m!5099011 () Bool)

(assert (=> b!4421297 m!5099011))

(declare-fun m!5099013 () Bool)

(assert (=> d!1339636 m!5099013))

(assert (=> d!1339636 m!5098121))

(declare-fun m!5099015 () Bool)

(assert (=> b!4421294 m!5099015))

(assert (=> b!4421295 m!5098999))

(assert (=> b!4420601 d!1339636))

(declare-fun bs!754963 () Bool)

(declare-fun d!1339656 () Bool)

(assert (= bs!754963 (and d!1339656 start!430784)))

(declare-fun lambda!153080 () Int)

(assert (=> bs!754963 (= lambda!153080 lambda!152904)))

(declare-fun bs!754964 () Bool)

(assert (= bs!754964 (and d!1339656 d!1339370)))

(assert (=> bs!754964 (= lambda!153080 lambda!152934)))

(declare-fun bs!754965 () Bool)

(assert (= bs!754965 (and d!1339656 d!1339430)))

(assert (=> bs!754965 (= lambda!153080 lambda!153008)))

(declare-fun bs!754966 () Bool)

(assert (= bs!754966 (and d!1339656 d!1339284)))

(assert (=> bs!754966 (= lambda!153080 lambda!152916)))

(declare-fun bs!754967 () Bool)

(assert (= bs!754967 (and d!1339656 d!1339330)))

(assert (=> bs!754967 (= lambda!153080 lambda!152924)))

(declare-fun bs!754968 () Bool)

(assert (= bs!754968 (and d!1339656 d!1339406)))

(assert (=> bs!754968 (= lambda!153080 lambda!152979)))

(declare-fun bs!754969 () Bool)

(assert (= bs!754969 (and d!1339656 d!1339580)))

(assert (=> bs!754969 (= lambda!153080 lambda!153067)))

(declare-fun bs!754970 () Bool)

(assert (= bs!754970 (and d!1339656 d!1339350)))

(assert (=> bs!754970 (= lambda!153080 lambda!152931)))

(declare-fun bs!754971 () Bool)

(assert (= bs!754971 (and d!1339656 d!1339444)))

(assert (=> bs!754971 (= lambda!153080 lambda!153017)))

(declare-fun bs!754972 () Bool)

(assert (= bs!754972 (and d!1339656 d!1339332)))

(assert (=> bs!754972 (= lambda!153080 lambda!152930)))

(declare-fun bs!754973 () Bool)

(assert (= bs!754973 (and d!1339656 d!1339376)))

(assert (=> bs!754973 (not (= lambda!153080 lambda!152937))))

(declare-fun bs!754974 () Bool)

(assert (= bs!754974 (and d!1339656 d!1339328)))

(assert (=> bs!754974 (= lambda!153080 lambda!152923)))

(declare-fun lt!1621403 () ListMap!2693)

(assert (=> d!1339656 (invariantList!793 (toList!3450 lt!1621403))))

(declare-fun e!2752921 () ListMap!2693)

(assert (=> d!1339656 (= lt!1621403 e!2752921)))

(declare-fun c!752594 () Bool)

(assert (=> d!1339656 (= c!752594 ((_ is Cons!49535) (t!356597 (toList!3449 lm!1616))))))

(assert (=> d!1339656 (forall!9528 (t!356597 (toList!3449 lm!1616)) lambda!153080)))

(assert (=> d!1339656 (= (extractMap!792 (t!356597 (toList!3449 lm!1616))) lt!1621403)))

(declare-fun b!4421311 () Bool)

(assert (=> b!4421311 (= e!2752921 (addToMapMapFromBucket!368 (_2!27946 (h!55208 (t!356597 (toList!3449 lm!1616)))) (extractMap!792 (t!356597 (t!356597 (toList!3449 lm!1616))))))))

(declare-fun b!4421312 () Bool)

(assert (=> b!4421312 (= e!2752921 (ListMap!2694 Nil!49534))))

(assert (= (and d!1339656 c!752594) b!4421311))

(assert (= (and d!1339656 (not c!752594)) b!4421312))

(declare-fun m!5099017 () Bool)

(assert (=> d!1339656 m!5099017))

(declare-fun m!5099019 () Bool)

(assert (=> d!1339656 m!5099019))

(declare-fun m!5099021 () Bool)

(assert (=> b!4421311 m!5099021))

(assert (=> b!4421311 m!5099021))

(declare-fun m!5099023 () Bool)

(assert (=> b!4421311 m!5099023))

(assert (=> b!4420601 d!1339656))

(assert (=> b!4420676 d!1339490))

(assert (=> b!4420676 d!1339492))

(declare-fun d!1339658 () Bool)

(declare-fun res!1827266 () Bool)

(declare-fun e!2752926 () Bool)

(assert (=> d!1339658 (=> res!1827266 e!2752926)))

(assert (=> d!1339658 (= res!1827266 (and ((_ is Cons!49534) (t!356596 newBucket!194)) (= (_1!27945 (h!55207 (t!356596 newBucket!194))) (_1!27945 (h!55207 newBucket!194)))))))

(assert (=> d!1339658 (= (containsKey!1080 (t!356596 newBucket!194) (_1!27945 (h!55207 newBucket!194))) e!2752926)))

(declare-fun b!4421317 () Bool)

(declare-fun e!2752927 () Bool)

(assert (=> b!4421317 (= e!2752926 e!2752927)))

(declare-fun res!1827267 () Bool)

(assert (=> b!4421317 (=> (not res!1827267) (not e!2752927))))

(assert (=> b!4421317 (= res!1827267 ((_ is Cons!49534) (t!356596 newBucket!194)))))

(declare-fun b!4421318 () Bool)

(assert (=> b!4421318 (= e!2752927 (containsKey!1080 (t!356596 (t!356596 newBucket!194)) (_1!27945 (h!55207 newBucket!194))))))

(assert (= (and d!1339658 (not res!1827266)) b!4421317))

(assert (= (and b!4421317 res!1827267) b!4421318))

(declare-fun m!5099025 () Bool)

(assert (=> b!4421318 m!5099025))

(assert (=> b!4420714 d!1339658))

(declare-fun d!1339660 () Bool)

(assert (=> d!1339660 (isDefined!7994 (getValueByKey!687 (toList!3450 (extractMap!792 (toList!3449 lm!1616))) key!3717))))

(declare-fun lt!1621404 () Unit!81302)

(assert (=> d!1339660 (= lt!1621404 (choose!27855 (toList!3450 (extractMap!792 (toList!3449 lm!1616))) key!3717))))

(assert (=> d!1339660 (invariantList!793 (toList!3450 (extractMap!792 (toList!3449 lm!1616))))))

(assert (=> d!1339660 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!597 (toList!3450 (extractMap!792 (toList!3449 lm!1616))) key!3717) lt!1621404)))

(declare-fun bs!754987 () Bool)

(assert (= bs!754987 d!1339660))

(assert (=> bs!754987 m!5097799))

(assert (=> bs!754987 m!5097799))

(assert (=> bs!754987 m!5097801))

(declare-fun m!5099027 () Bool)

(assert (=> bs!754987 m!5099027))

(assert (=> bs!754987 m!5098683))

(assert (=> b!4420559 d!1339660))

(assert (=> b!4420559 d!1339416))

(assert (=> b!4420559 d!1339418))

(declare-fun d!1339662 () Bool)

(assert (=> d!1339662 (contains!12014 (getKeysList!241 (toList!3450 (extractMap!792 (toList!3449 lm!1616)))) key!3717)))

(declare-fun lt!1621405 () Unit!81302)

(assert (=> d!1339662 (= lt!1621405 (choose!27856 (toList!3450 (extractMap!792 (toList!3449 lm!1616))) key!3717))))

(assert (=> d!1339662 (invariantList!793 (toList!3450 (extractMap!792 (toList!3449 lm!1616))))))

(assert (=> d!1339662 (= (lemmaInListThenGetKeysListContains!238 (toList!3450 (extractMap!792 (toList!3449 lm!1616))) key!3717) lt!1621405)))

(declare-fun bs!754988 () Bool)

(assert (= bs!754988 d!1339662))

(assert (=> bs!754988 m!5097817))

(assert (=> bs!754988 m!5097817))

(declare-fun m!5099029 () Bool)

(assert (=> bs!754988 m!5099029))

(declare-fun m!5099031 () Bool)

(assert (=> bs!754988 m!5099031))

(assert (=> bs!754988 m!5098683))

(assert (=> b!4420559 d!1339662))

(declare-fun d!1339664 () Bool)

(declare-fun c!752595 () Bool)

(assert (=> d!1339664 (= c!752595 (and ((_ is Cons!49535) (toList!3449 lt!1620864)) (= (_1!27946 (h!55208 (toList!3449 lt!1620864))) (_1!27946 lt!1620774))))))

(declare-fun e!2752928 () Option!10702)

(assert (=> d!1339664 (= (getValueByKey!688 (toList!3449 lt!1620864) (_1!27946 lt!1620774)) e!2752928)))

(declare-fun b!4421320 () Bool)

(declare-fun e!2752929 () Option!10702)

(assert (=> b!4421320 (= e!2752928 e!2752929)))

(declare-fun c!752596 () Bool)

(assert (=> b!4421320 (= c!752596 (and ((_ is Cons!49535) (toList!3449 lt!1620864)) (not (= (_1!27946 (h!55208 (toList!3449 lt!1620864))) (_1!27946 lt!1620774)))))))

(declare-fun b!4421321 () Bool)

(assert (=> b!4421321 (= e!2752929 (getValueByKey!688 (t!356597 (toList!3449 lt!1620864)) (_1!27946 lt!1620774)))))

(declare-fun b!4421319 () Bool)

(assert (=> b!4421319 (= e!2752928 (Some!10701 (_2!27946 (h!55208 (toList!3449 lt!1620864)))))))

(declare-fun b!4421322 () Bool)

(assert (=> b!4421322 (= e!2752929 None!10701)))

(assert (= (and d!1339664 c!752595) b!4421319))

(assert (= (and d!1339664 (not c!752595)) b!4421320))

(assert (= (and b!4421320 c!752596) b!4421321))

(assert (= (and b!4421320 (not c!752596)) b!4421322))

(declare-fun m!5099033 () Bool)

(assert (=> b!4421321 m!5099033))

(assert (=> b!4420613 d!1339664))

(declare-fun d!1339666 () Bool)

(declare-fun res!1827268 () Bool)

(declare-fun e!2752930 () Bool)

(assert (=> d!1339666 (=> res!1827268 e!2752930)))

(assert (=> d!1339666 (= res!1827268 (and ((_ is Cons!49534) (toList!3450 (extractMap!792 (toList!3449 lm!1616)))) (= (_1!27945 (h!55207 (toList!3450 (extractMap!792 (toList!3449 lm!1616))))) key!3717)))))

(assert (=> d!1339666 (= (containsKey!1077 (toList!3450 (extractMap!792 (toList!3449 lm!1616))) key!3717) e!2752930)))

(declare-fun b!4421323 () Bool)

(declare-fun e!2752931 () Bool)

(assert (=> b!4421323 (= e!2752930 e!2752931)))

(declare-fun res!1827269 () Bool)

(assert (=> b!4421323 (=> (not res!1827269) (not e!2752931))))

(assert (=> b!4421323 (= res!1827269 ((_ is Cons!49534) (toList!3450 (extractMap!792 (toList!3449 lm!1616)))))))

(declare-fun b!4421324 () Bool)

(assert (=> b!4421324 (= e!2752931 (containsKey!1077 (t!356596 (toList!3450 (extractMap!792 (toList!3449 lm!1616)))) key!3717))))

(assert (= (and d!1339666 (not res!1827268)) b!4421323))

(assert (= (and b!4421323 res!1827269) b!4421324))

(declare-fun m!5099037 () Bool)

(assert (=> b!4421324 m!5099037))

(assert (=> b!4420555 d!1339666))

(declare-fun d!1339668 () Bool)

(assert (=> d!1339668 (containsKey!1077 (toList!3450 (extractMap!792 (toList!3449 lm!1616))) key!3717)))

(declare-fun lt!1621406 () Unit!81302)

(assert (=> d!1339668 (= lt!1621406 (choose!27853 (toList!3450 (extractMap!792 (toList!3449 lm!1616))) key!3717))))

(assert (=> d!1339668 (invariantList!793 (toList!3450 (extractMap!792 (toList!3449 lm!1616))))))

(assert (=> d!1339668 (= (lemmaInGetKeysListThenContainsKey!239 (toList!3450 (extractMap!792 (toList!3449 lm!1616))) key!3717) lt!1621406)))

(declare-fun bs!754989 () Bool)

(assert (= bs!754989 d!1339668))

(assert (=> bs!754989 m!5097805))

(declare-fun m!5099045 () Bool)

(assert (=> bs!754989 m!5099045))

(assert (=> bs!754989 m!5098683))

(assert (=> b!4420555 d!1339668))

(declare-fun d!1339670 () Bool)

(declare-fun lt!1621407 () Bool)

(assert (=> d!1339670 (= lt!1621407 (select (content!7936 (keys!16899 (extractMap!792 (toList!3449 lm!1616)))) key!3717))))

(declare-fun e!2752933 () Bool)

(assert (=> d!1339670 (= lt!1621407 e!2752933)))

(declare-fun res!1827271 () Bool)

(assert (=> d!1339670 (=> (not res!1827271) (not e!2752933))))

(assert (=> d!1339670 (= res!1827271 ((_ is Cons!49537) (keys!16899 (extractMap!792 (toList!3449 lm!1616)))))))

(assert (=> d!1339670 (= (contains!12014 (keys!16899 (extractMap!792 (toList!3449 lm!1616))) key!3717) lt!1621407)))

(declare-fun b!4421325 () Bool)

(declare-fun e!2752932 () Bool)

(assert (=> b!4421325 (= e!2752933 e!2752932)))

(declare-fun res!1827270 () Bool)

(assert (=> b!4421325 (=> res!1827270 e!2752932)))

(assert (=> b!4421325 (= res!1827270 (= (h!55212 (keys!16899 (extractMap!792 (toList!3449 lm!1616)))) key!3717))))

(declare-fun b!4421326 () Bool)

(assert (=> b!4421326 (= e!2752932 (contains!12014 (t!356599 (keys!16899 (extractMap!792 (toList!3449 lm!1616)))) key!3717))))

(assert (= (and d!1339670 res!1827271) b!4421325))

(assert (= (and b!4421325 (not res!1827270)) b!4421326))

(assert (=> d!1339670 m!5097803))

(declare-fun m!5099061 () Bool)

(assert (=> d!1339670 m!5099061))

(declare-fun m!5099063 () Bool)

(assert (=> d!1339670 m!5099063))

(declare-fun m!5099065 () Bool)

(assert (=> b!4421326 m!5099065))

(assert (=> b!4420557 d!1339670))

(assert (=> b!4420557 d!1339448))

(declare-fun d!1339672 () Bool)

(assert (=> d!1339672 (= (invariantList!793 (toList!3450 lt!1620918)) (noDuplicatedKeys!169 (toList!3450 lt!1620918)))))

(declare-fun bs!754990 () Bool)

(assert (= bs!754990 d!1339672))

(declare-fun m!5099069 () Bool)

(assert (=> bs!754990 m!5099069))

(assert (=> d!1339330 d!1339672))

(declare-fun d!1339674 () Bool)

(declare-fun res!1827272 () Bool)

(declare-fun e!2752934 () Bool)

(assert (=> d!1339674 (=> res!1827272 e!2752934)))

(assert (=> d!1339674 (= res!1827272 ((_ is Nil!49535) (toList!3449 lt!1620777)))))

(assert (=> d!1339674 (= (forall!9528 (toList!3449 lt!1620777) lambda!152924) e!2752934)))

(declare-fun b!4421327 () Bool)

(declare-fun e!2752935 () Bool)

(assert (=> b!4421327 (= e!2752934 e!2752935)))

(declare-fun res!1827273 () Bool)

(assert (=> b!4421327 (=> (not res!1827273) (not e!2752935))))

(assert (=> b!4421327 (= res!1827273 (dynLambda!20828 lambda!152924 (h!55208 (toList!3449 lt!1620777))))))

(declare-fun b!4421328 () Bool)

(assert (=> b!4421328 (= e!2752935 (forall!9528 (t!356597 (toList!3449 lt!1620777)) lambda!152924))))

(assert (= (and d!1339674 (not res!1827272)) b!4421327))

(assert (= (and b!4421327 res!1827273) b!4421328))

(declare-fun b_lambda!142583 () Bool)

(assert (=> (not b_lambda!142583) (not b!4421327)))

(declare-fun m!5099081 () Bool)

(assert (=> b!4421327 m!5099081))

(declare-fun m!5099083 () Bool)

(assert (=> b!4421328 m!5099083))

(assert (=> d!1339330 d!1339674))

(assert (=> b!4420562 d!1339670))

(assert (=> b!4420562 d!1339448))

(declare-fun d!1339678 () Bool)

(declare-fun e!2752937 () Bool)

(assert (=> d!1339678 e!2752937))

(declare-fun res!1827274 () Bool)

(assert (=> d!1339678 (=> res!1827274 e!2752937)))

(declare-fun lt!1621412 () Bool)

(assert (=> d!1339678 (= res!1827274 (not lt!1621412))))

(declare-fun lt!1621409 () Bool)

(assert (=> d!1339678 (= lt!1621412 lt!1621409)))

(declare-fun lt!1621411 () Unit!81302)

(declare-fun e!2752938 () Unit!81302)

(assert (=> d!1339678 (= lt!1621411 e!2752938)))

(declare-fun c!752598 () Bool)

(assert (=> d!1339678 (= c!752598 lt!1621409)))

(assert (=> d!1339678 (= lt!1621409 (containsKey!1079 (toList!3449 lt!1620947) (_1!27946 lt!1620774)))))

(assert (=> d!1339678 (= (contains!12012 lt!1620947 (_1!27946 lt!1620774)) lt!1621412)))

(declare-fun b!4421331 () Bool)

(declare-fun lt!1621410 () Unit!81302)

(assert (=> b!4421331 (= e!2752938 lt!1621410)))

(assert (=> b!4421331 (= lt!1621410 (lemmaContainsKeyImpliesGetValueByKeyDefined!598 (toList!3449 lt!1620947) (_1!27946 lt!1620774)))))

(assert (=> b!4421331 (isDefined!7995 (getValueByKey!688 (toList!3449 lt!1620947) (_1!27946 lt!1620774)))))

(declare-fun b!4421332 () Bool)

(declare-fun Unit!81397 () Unit!81302)

(assert (=> b!4421332 (= e!2752938 Unit!81397)))

(declare-fun b!4421333 () Bool)

(assert (=> b!4421333 (= e!2752937 (isDefined!7995 (getValueByKey!688 (toList!3449 lt!1620947) (_1!27946 lt!1620774))))))

(assert (= (and d!1339678 c!752598) b!4421331))

(assert (= (and d!1339678 (not c!752598)) b!4421332))

(assert (= (and d!1339678 (not res!1827274)) b!4421333))

(declare-fun m!5099085 () Bool)

(assert (=> d!1339678 m!5099085))

(declare-fun m!5099087 () Bool)

(assert (=> b!4421331 m!5099087))

(assert (=> b!4421331 m!5098085))

(assert (=> b!4421331 m!5098085))

(declare-fun m!5099089 () Bool)

(assert (=> b!4421331 m!5099089))

(assert (=> b!4421333 m!5098085))

(assert (=> b!4421333 m!5098085))

(assert (=> b!4421333 m!5099089))

(assert (=> d!1339358 d!1339678))

(declare-fun d!1339680 () Bool)

(declare-fun c!752599 () Bool)

(assert (=> d!1339680 (= c!752599 (and ((_ is Cons!49535) lt!1620948) (= (_1!27946 (h!55208 lt!1620948)) (_1!27946 lt!1620774))))))

(declare-fun e!2752939 () Option!10702)

(assert (=> d!1339680 (= (getValueByKey!688 lt!1620948 (_1!27946 lt!1620774)) e!2752939)))

(declare-fun b!4421335 () Bool)

(declare-fun e!2752940 () Option!10702)

(assert (=> b!4421335 (= e!2752939 e!2752940)))

(declare-fun c!752600 () Bool)

(assert (=> b!4421335 (= c!752600 (and ((_ is Cons!49535) lt!1620948) (not (= (_1!27946 (h!55208 lt!1620948)) (_1!27946 lt!1620774)))))))

(declare-fun b!4421336 () Bool)

(assert (=> b!4421336 (= e!2752940 (getValueByKey!688 (t!356597 lt!1620948) (_1!27946 lt!1620774)))))

(declare-fun b!4421334 () Bool)

(assert (=> b!4421334 (= e!2752939 (Some!10701 (_2!27946 (h!55208 lt!1620948))))))

(declare-fun b!4421337 () Bool)

(assert (=> b!4421337 (= e!2752940 None!10701)))

(assert (= (and d!1339680 c!752599) b!4421334))

(assert (= (and d!1339680 (not c!752599)) b!4421335))

(assert (= (and b!4421335 c!752600) b!4421336))

(assert (= (and b!4421335 (not c!752600)) b!4421337))

(declare-fun m!5099091 () Bool)

(assert (=> b!4421336 m!5099091))

(assert (=> d!1339358 d!1339680))

(declare-fun d!1339682 () Bool)

(assert (=> d!1339682 (= (getValueByKey!688 lt!1620948 (_1!27946 lt!1620774)) (Some!10701 (_2!27946 lt!1620774)))))

(declare-fun lt!1621413 () Unit!81302)

(assert (=> d!1339682 (= lt!1621413 (choose!27862 lt!1620948 (_1!27946 lt!1620774) (_2!27946 lt!1620774)))))

(declare-fun e!2752941 () Bool)

(assert (=> d!1339682 e!2752941))

(declare-fun res!1827275 () Bool)

(assert (=> d!1339682 (=> (not res!1827275) (not e!2752941))))

(assert (=> d!1339682 (= res!1827275 (isStrictlySorted!220 lt!1620948))))

(assert (=> d!1339682 (= (lemmaContainsTupThenGetReturnValue!422 lt!1620948 (_1!27946 lt!1620774) (_2!27946 lt!1620774)) lt!1621413)))

(declare-fun b!4421338 () Bool)

(declare-fun res!1827276 () Bool)

(assert (=> b!4421338 (=> (not res!1827276) (not e!2752941))))

(assert (=> b!4421338 (= res!1827276 (containsKey!1079 lt!1620948 (_1!27946 lt!1620774)))))

(declare-fun b!4421339 () Bool)

(assert (=> b!4421339 (= e!2752941 (contains!12017 lt!1620948 (tuple2!49305 (_1!27946 lt!1620774) (_2!27946 lt!1620774))))))

(assert (= (and d!1339682 res!1827275) b!4421338))

(assert (= (and b!4421338 res!1827276) b!4421339))

(assert (=> d!1339682 m!5098079))

(declare-fun m!5099097 () Bool)

(assert (=> d!1339682 m!5099097))

(declare-fun m!5099101 () Bool)

(assert (=> d!1339682 m!5099101))

(declare-fun m!5099103 () Bool)

(assert (=> b!4421338 m!5099103))

(declare-fun m!5099105 () Bool)

(assert (=> b!4421339 m!5099105))

(assert (=> d!1339358 d!1339682))

(declare-fun b!4421340 () Bool)

(declare-fun e!2752945 () List!49659)

(assert (=> b!4421340 (= e!2752945 (insertStrictlySorted!248 (t!356597 (toList!3449 lm!1616)) (_1!27946 lt!1620774) (_2!27946 lt!1620774)))))

(declare-fun b!4421341 () Bool)

(declare-fun e!2752944 () List!49659)

(declare-fun e!2752942 () List!49659)

(assert (=> b!4421341 (= e!2752944 e!2752942)))

(declare-fun c!752604 () Bool)

(assert (=> b!4421341 (= c!752604 (and ((_ is Cons!49535) (toList!3449 lm!1616)) (= (_1!27946 (h!55208 (toList!3449 lm!1616))) (_1!27946 lt!1620774))))))

(declare-fun b!4421342 () Bool)

(declare-fun call!307618 () List!49659)

(assert (=> b!4421342 (= e!2752942 call!307618)))

(declare-fun b!4421343 () Bool)

(declare-fun e!2752943 () List!49659)

(declare-fun call!307619 () List!49659)

(assert (=> b!4421343 (= e!2752943 call!307619)))

(declare-fun b!4421344 () Bool)

(declare-fun c!752601 () Bool)

(assert (=> b!4421344 (= c!752601 (and ((_ is Cons!49535) (toList!3449 lm!1616)) (bvsgt (_1!27946 (h!55208 (toList!3449 lm!1616))) (_1!27946 lt!1620774))))))

(assert (=> b!4421344 (= e!2752942 e!2752943)))

(declare-fun c!752603 () Bool)

(declare-fun bm!307612 () Bool)

(declare-fun call!307617 () List!49659)

(assert (=> bm!307612 (= call!307617 ($colon$colon!777 e!2752945 (ite c!752603 (h!55208 (toList!3449 lm!1616)) (tuple2!49305 (_1!27946 lt!1620774) (_2!27946 lt!1620774)))))))

(declare-fun c!752602 () Bool)

(assert (=> bm!307612 (= c!752602 c!752603)))

(declare-fun bm!307614 () Bool)

(assert (=> bm!307614 (= call!307618 call!307617)))

(declare-fun b!4421345 () Bool)

(assert (=> b!4421345 (= e!2752945 (ite c!752604 (t!356597 (toList!3449 lm!1616)) (ite c!752601 (Cons!49535 (h!55208 (toList!3449 lm!1616)) (t!356597 (toList!3449 lm!1616))) Nil!49535)))))

(declare-fun b!4421346 () Bool)

(declare-fun res!1827278 () Bool)

(declare-fun e!2752946 () Bool)

(assert (=> b!4421346 (=> (not res!1827278) (not e!2752946))))

(declare-fun lt!1621414 () List!49659)

(assert (=> b!4421346 (= res!1827278 (containsKey!1079 lt!1621414 (_1!27946 lt!1620774)))))

(declare-fun b!4421347 () Bool)

(assert (=> b!4421347 (= e!2752946 (contains!12017 lt!1621414 (tuple2!49305 (_1!27946 lt!1620774) (_2!27946 lt!1620774))))))

(declare-fun bm!307613 () Bool)

(assert (=> bm!307613 (= call!307619 call!307618)))

(declare-fun d!1339684 () Bool)

(assert (=> d!1339684 e!2752946))

(declare-fun res!1827277 () Bool)

(assert (=> d!1339684 (=> (not res!1827277) (not e!2752946))))

(assert (=> d!1339684 (= res!1827277 (isStrictlySorted!220 lt!1621414))))

(assert (=> d!1339684 (= lt!1621414 e!2752944)))

(assert (=> d!1339684 (= c!752603 (and ((_ is Cons!49535) (toList!3449 lm!1616)) (bvslt (_1!27946 (h!55208 (toList!3449 lm!1616))) (_1!27946 lt!1620774))))))

(assert (=> d!1339684 (isStrictlySorted!220 (toList!3449 lm!1616))))

(assert (=> d!1339684 (= (insertStrictlySorted!248 (toList!3449 lm!1616) (_1!27946 lt!1620774) (_2!27946 lt!1620774)) lt!1621414)))

(declare-fun b!4421348 () Bool)

(assert (=> b!4421348 (= e!2752944 call!307617)))

(declare-fun b!4421349 () Bool)

(assert (=> b!4421349 (= e!2752943 call!307619)))

(assert (= (and d!1339684 c!752603) b!4421348))

(assert (= (and d!1339684 (not c!752603)) b!4421341))

(assert (= (and b!4421341 c!752604) b!4421342))

(assert (= (and b!4421341 (not c!752604)) b!4421344))

(assert (= (and b!4421344 c!752601) b!4421343))

(assert (= (and b!4421344 (not c!752601)) b!4421349))

(assert (= (or b!4421343 b!4421349) bm!307613))

(assert (= (or b!4421342 bm!307613) bm!307614))

(assert (= (or b!4421348 bm!307614) bm!307612))

(assert (= (and bm!307612 c!752602) b!4421340))

(assert (= (and bm!307612 (not c!752602)) b!4421345))

(assert (= (and d!1339684 res!1827277) b!4421346))

(assert (= (and b!4421346 res!1827278) b!4421347))

(declare-fun m!5099109 () Bool)

(assert (=> b!4421346 m!5099109))

(declare-fun m!5099111 () Bool)

(assert (=> b!4421347 m!5099111))

(declare-fun m!5099113 () Bool)

(assert (=> d!1339684 m!5099113))

(assert (=> d!1339684 m!5098115))

(declare-fun m!5099115 () Bool)

(assert (=> bm!307612 m!5099115))

(declare-fun m!5099117 () Bool)

(assert (=> b!4421340 m!5099117))

(assert (=> d!1339358 d!1339684))

(declare-fun d!1339688 () Bool)

(declare-fun res!1827286 () Bool)

(declare-fun e!2752959 () Bool)

(assert (=> d!1339688 (=> res!1827286 e!2752959)))

(assert (=> d!1339688 (= res!1827286 ((_ is Nil!49534) newBucket!194))))

(assert (=> d!1339688 (= (forall!9530 newBucket!194 lambda!152940) e!2752959)))

(declare-fun b!4421367 () Bool)

(declare-fun e!2752960 () Bool)

(assert (=> b!4421367 (= e!2752959 e!2752960)))

(declare-fun res!1827287 () Bool)

(assert (=> b!4421367 (=> (not res!1827287) (not e!2752960))))

(declare-fun dynLambda!20829 (Int tuple2!49302) Bool)

(assert (=> b!4421367 (= res!1827287 (dynLambda!20829 lambda!152940 (h!55207 newBucket!194)))))

(declare-fun b!4421368 () Bool)

(assert (=> b!4421368 (= e!2752960 (forall!9530 (t!356596 newBucket!194) lambda!152940))))

(assert (= (and d!1339688 (not res!1827286)) b!4421367))

(assert (= (and b!4421367 res!1827287) b!4421368))

(declare-fun b_lambda!142585 () Bool)

(assert (=> (not b_lambda!142585) (not b!4421367)))

(declare-fun m!5099139 () Bool)

(assert (=> b!4421367 m!5099139))

(declare-fun m!5099141 () Bool)

(assert (=> b!4421368 m!5099141))

(assert (=> d!1339378 d!1339688))

(declare-fun d!1339694 () Bool)

(assert (=> d!1339694 (isDefined!7995 (getValueByKey!688 (toList!3449 lm!1616) hash!366))))

(declare-fun lt!1621428 () Unit!81302)

(declare-fun choose!27863 (List!49659 (_ BitVec 64)) Unit!81302)

(assert (=> d!1339694 (= lt!1621428 (choose!27863 (toList!3449 lm!1616) hash!366))))

(declare-fun e!2752966 () Bool)

(assert (=> d!1339694 e!2752966))

(declare-fun res!1827296 () Bool)

(assert (=> d!1339694 (=> (not res!1827296) (not e!2752966))))

(assert (=> d!1339694 (= res!1827296 (isStrictlySorted!220 (toList!3449 lm!1616)))))

(assert (=> d!1339694 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!598 (toList!3449 lm!1616) hash!366) lt!1621428)))

(declare-fun b!4421377 () Bool)

(assert (=> b!4421377 (= e!2752966 (containsKey!1079 (toList!3449 lm!1616) hash!366))))

(assert (= (and d!1339694 res!1827296) b!4421377))

(assert (=> d!1339694 m!5098069))

(assert (=> d!1339694 m!5098069))

(assert (=> d!1339694 m!5098071))

(declare-fun m!5099151 () Bool)

(assert (=> d!1339694 m!5099151))

(assert (=> d!1339694 m!5098115))

(assert (=> b!4421377 m!5098065))

(assert (=> b!4420693 d!1339694))

(declare-fun d!1339698 () Bool)

(declare-fun isEmpty!28330 (Option!10702) Bool)

(assert (=> d!1339698 (= (isDefined!7995 (getValueByKey!688 (toList!3449 lm!1616) hash!366)) (not (isEmpty!28330 (getValueByKey!688 (toList!3449 lm!1616) hash!366))))))

(declare-fun bs!755003 () Bool)

(assert (= bs!755003 d!1339698))

(assert (=> bs!755003 m!5098069))

(declare-fun m!5099153 () Bool)

(assert (=> bs!755003 m!5099153))

(assert (=> b!4420693 d!1339698))

(assert (=> b!4420693 d!1339422))

(assert (=> b!4420680 d!1339472))

(assert (=> d!1339270 d!1339666))

(declare-fun d!1339700 () Bool)

(declare-fun res!1827297 () Bool)

(declare-fun e!2752967 () Bool)

(assert (=> d!1339700 (=> res!1827297 e!2752967)))

(assert (=> d!1339700 (= res!1827297 ((_ is Nil!49535) (t!356597 (toList!3449 lm!1616))))))

(assert (=> d!1339700 (= (forall!9528 (t!356597 (toList!3449 lm!1616)) lambda!152904) e!2752967)))

(declare-fun b!4421378 () Bool)

(declare-fun e!2752968 () Bool)

(assert (=> b!4421378 (= e!2752967 e!2752968)))

(declare-fun res!1827298 () Bool)

(assert (=> b!4421378 (=> (not res!1827298) (not e!2752968))))

(assert (=> b!4421378 (= res!1827298 (dynLambda!20828 lambda!152904 (h!55208 (t!356597 (toList!3449 lm!1616)))))))

(declare-fun b!4421379 () Bool)

(assert (=> b!4421379 (= e!2752968 (forall!9528 (t!356597 (t!356597 (toList!3449 lm!1616))) lambda!152904))))

(assert (= (and d!1339700 (not res!1827297)) b!4421378))

(assert (= (and b!4421378 res!1827298) b!4421379))

(declare-fun b_lambda!142587 () Bool)

(assert (=> (not b_lambda!142587) (not b!4421378)))

(declare-fun m!5099155 () Bool)

(assert (=> b!4421378 m!5099155))

(declare-fun m!5099157 () Bool)

(assert (=> b!4421379 m!5099157))

(assert (=> b!4420709 d!1339700))

(declare-fun bs!755004 () Bool)

(declare-fun b!4421388 () Bool)

(assert (= bs!755004 (and b!4421388 b!4420915)))

(declare-fun lambda!153083 () Int)

(assert (=> bs!755004 (= (= (t!356596 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616))))) (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616))))) (= lambda!153083 lambda!153025))))

(declare-fun bs!755005 () Bool)

(assert (= bs!755005 (and b!4421388 b!4421140)))

(assert (=> bs!755005 (= (= (t!356596 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616))))) (toList!3450 (extractMap!792 (toList!3449 lm!1616)))) (= lambda!153083 lambda!153055))))

(declare-fun bs!755006 () Bool)

(assert (= bs!755006 (and b!4421388 b!4420886)))

(assert (=> bs!755006 (= (= (t!356596 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616))))) (toList!3450 (extractMap!792 (toList!3449 lm!1616)))) (= lambda!153083 lambda!153023))))

(declare-fun bs!755007 () Bool)

(assert (= bs!755007 (and b!4421388 b!4421143)))

(assert (=> bs!755007 (= (= (t!356596 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616))))) (t!356596 (toList!3450 (extractMap!792 (toList!3449 lm!1616))))) (= lambda!153083 lambda!153053))))

(declare-fun bs!755008 () Bool)

(assert (= bs!755008 (and b!4421388 b!4421137)))

(assert (=> bs!755008 (= (= (t!356596 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616))))) (Cons!49534 (h!55207 (toList!3450 (extractMap!792 (toList!3449 lm!1616)))) (t!356596 (toList!3450 (extractMap!792 (toList!3449 lm!1616)))))) (= lambda!153083 lambda!153054))))

(assert (=> b!4421388 true))

(declare-fun bs!755009 () Bool)

(declare-fun b!4421382 () Bool)

(assert (= bs!755009 (and b!4421382 b!4420915)))

(declare-fun lambda!153084 () Int)

(assert (=> bs!755009 (= (= (Cons!49534 (h!55207 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616))))) (t!356596 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))))) (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616))))) (= lambda!153084 lambda!153025))))

(declare-fun bs!755010 () Bool)

(assert (= bs!755010 (and b!4421382 b!4421140)))

(assert (=> bs!755010 (= (= (Cons!49534 (h!55207 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616))))) (t!356596 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))))) (toList!3450 (extractMap!792 (toList!3449 lm!1616)))) (= lambda!153084 lambda!153055))))

(declare-fun bs!755011 () Bool)

(assert (= bs!755011 (and b!4421382 b!4420886)))

(assert (=> bs!755011 (= (= (Cons!49534 (h!55207 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616))))) (t!356596 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))))) (toList!3450 (extractMap!792 (toList!3449 lm!1616)))) (= lambda!153084 lambda!153023))))

(declare-fun bs!755012 () Bool)

(assert (= bs!755012 (and b!4421382 b!4421137)))

(assert (=> bs!755012 (= (= (Cons!49534 (h!55207 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616))))) (t!356596 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))))) (Cons!49534 (h!55207 (toList!3450 (extractMap!792 (toList!3449 lm!1616)))) (t!356596 (toList!3450 (extractMap!792 (toList!3449 lm!1616)))))) (= lambda!153084 lambda!153054))))

(declare-fun bs!755013 () Bool)

(assert (= bs!755013 (and b!4421382 b!4421143)))

(assert (=> bs!755013 (= (= (Cons!49534 (h!55207 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616))))) (t!356596 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))))) (t!356596 (toList!3450 (extractMap!792 (toList!3449 lm!1616))))) (= lambda!153084 lambda!153053))))

(declare-fun bs!755014 () Bool)

(assert (= bs!755014 (and b!4421382 b!4421388)))

(assert (=> bs!755014 (= (= (Cons!49534 (h!55207 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616))))) (t!356596 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))))) (t!356596 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))))) (= lambda!153084 lambda!153083))))

(assert (=> b!4421382 true))

(declare-fun bs!755015 () Bool)

(declare-fun b!4421385 () Bool)

(assert (= bs!755015 (and b!4421385 b!4420915)))

(declare-fun lambda!153085 () Int)

(assert (=> bs!755015 (= lambda!153085 lambda!153025)))

(declare-fun bs!755016 () Bool)

(assert (= bs!755016 (and b!4421385 b!4421140)))

(assert (=> bs!755016 (= (= (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))) (toList!3450 (extractMap!792 (toList!3449 lm!1616)))) (= lambda!153085 lambda!153055))))

(declare-fun bs!755017 () Bool)

(assert (= bs!755017 (and b!4421385 b!4421137)))

(assert (=> bs!755017 (= (= (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))) (Cons!49534 (h!55207 (toList!3450 (extractMap!792 (toList!3449 lm!1616)))) (t!356596 (toList!3450 (extractMap!792 (toList!3449 lm!1616)))))) (= lambda!153085 lambda!153054))))

(declare-fun bs!755018 () Bool)

(assert (= bs!755018 (and b!4421385 b!4420886)))

(assert (=> bs!755018 (= (= (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))) (toList!3450 (extractMap!792 (toList!3449 lm!1616)))) (= lambda!153085 lambda!153023))))

(declare-fun bs!755019 () Bool)

(assert (= bs!755019 (and b!4421385 b!4421382)))

(assert (=> bs!755019 (= (= (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))) (Cons!49534 (h!55207 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616))))) (t!356596 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616))))))) (= lambda!153085 lambda!153084))))

(declare-fun bs!755020 () Bool)

(assert (= bs!755020 (and b!4421385 b!4421143)))

(assert (=> bs!755020 (= (= (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))) (t!356596 (toList!3450 (extractMap!792 (toList!3449 lm!1616))))) (= lambda!153085 lambda!153053))))

(declare-fun bs!755021 () Bool)

(assert (= bs!755021 (and b!4421385 b!4421388)))

(assert (=> bs!755021 (= (= (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))) (t!356596 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))))) (= lambda!153085 lambda!153083))))

(assert (=> b!4421385 true))

(declare-fun bs!755022 () Bool)

(declare-fun b!4421387 () Bool)

(assert (= bs!755022 (and b!4421387 b!4420887)))

(declare-fun lambda!153086 () Int)

(assert (=> bs!755022 (= lambda!153086 lambda!153024)))

(declare-fun bs!755023 () Bool)

(assert (= bs!755023 (and b!4421387 b!4420916)))

(assert (=> bs!755023 (= lambda!153086 lambda!153026)))

(declare-fun bs!755024 () Bool)

(assert (= bs!755024 (and b!4421387 b!4421142)))

(assert (=> bs!755024 (= lambda!153086 lambda!153056)))

(declare-fun b!4421380 () Bool)

(declare-fun res!1827299 () Bool)

(declare-fun e!2752970 () Bool)

(assert (=> b!4421380 (=> (not res!1827299) (not e!2752970))))

(declare-fun lt!1621433 () List!49661)

(assert (=> b!4421380 (= res!1827299 (= (length!164 lt!1621433) (length!165 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))))))))

(declare-fun d!1339702 () Bool)

(assert (=> d!1339702 e!2752970))

(declare-fun res!1827301 () Bool)

(assert (=> d!1339702 (=> (not res!1827301) (not e!2752970))))

(assert (=> d!1339702 (= res!1827301 (noDuplicate!654 lt!1621433))))

(declare-fun e!2752969 () List!49661)

(assert (=> d!1339702 (= lt!1621433 e!2752969)))

(declare-fun c!752611 () Bool)

(assert (=> d!1339702 (= c!752611 ((_ is Cons!49534) (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616))))))))

(assert (=> d!1339702 (invariantList!793 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))))))

(assert (=> d!1339702 (= (getKeysList!241 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616))))) lt!1621433)))

(declare-fun b!4421381 () Bool)

(declare-fun e!2752971 () Unit!81302)

(declare-fun Unit!81409 () Unit!81302)

(assert (=> b!4421381 (= e!2752971 Unit!81409)))

(assert (=> b!4421382 (= e!2752969 (Cons!49537 (_1!27945 (h!55207 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))))) (getKeysList!241 (t!356596 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616))))))))))

(declare-fun c!752610 () Bool)

(assert (=> b!4421382 (= c!752610 (containsKey!1077 (t!356596 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616))))) (_1!27945 (h!55207 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616))))))))))

(declare-fun lt!1621431 () Unit!81302)

(declare-fun e!2752972 () Unit!81302)

(assert (=> b!4421382 (= lt!1621431 e!2752972)))

(declare-fun c!752612 () Bool)

(assert (=> b!4421382 (= c!752612 (contains!12014 (getKeysList!241 (t!356596 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))))) (_1!27945 (h!55207 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616))))))))))

(declare-fun lt!1621435 () Unit!81302)

(assert (=> b!4421382 (= lt!1621435 e!2752971)))

(declare-fun lt!1621432 () List!49661)

(assert (=> b!4421382 (= lt!1621432 (getKeysList!241 (t!356596 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))))))))

(declare-fun lt!1621429 () Unit!81302)

(assert (=> b!4421382 (= lt!1621429 (lemmaForallContainsAddHeadPreserves!76 (t!356596 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616))))) lt!1621432 (h!55207 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))))))))

(assert (=> b!4421382 (forall!9532 lt!1621432 lambda!153084)))

(declare-fun lt!1621430 () Unit!81302)

(assert (=> b!4421382 (= lt!1621430 lt!1621429)))

(declare-fun b!4421383 () Bool)

(declare-fun Unit!81410 () Unit!81302)

(assert (=> b!4421383 (= e!2752972 Unit!81410)))

(declare-fun b!4421384 () Bool)

(assert (=> b!4421384 false))

(declare-fun Unit!81411 () Unit!81302)

(assert (=> b!4421384 (= e!2752972 Unit!81411)))

(declare-fun res!1827300 () Bool)

(assert (=> b!4421385 (=> (not res!1827300) (not e!2752970))))

(assert (=> b!4421385 (= res!1827300 (forall!9532 lt!1621433 lambda!153085))))

(declare-fun b!4421386 () Bool)

(assert (=> b!4421386 (= e!2752969 Nil!49537)))

(assert (=> b!4421387 (= e!2752970 (= (content!7936 lt!1621433) (content!7936 (map!10817 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))) lambda!153086))))))

(assert (=> b!4421388 false))

(declare-fun lt!1621434 () Unit!81302)

(assert (=> b!4421388 (= lt!1621434 (forallContained!2081 (getKeysList!241 (t!356596 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616)))))) lambda!153083 (_1!27945 (h!55207 (toList!3450 (extractMap!792 (tail!7235 (toList!3449 lm!1616))))))))))

(declare-fun Unit!81412 () Unit!81302)

(assert (=> b!4421388 (= e!2752971 Unit!81412)))

(assert (= (and d!1339702 c!752611) b!4421382))

(assert (= (and d!1339702 (not c!752611)) b!4421386))

(assert (= (and b!4421382 c!752610) b!4421384))

(assert (= (and b!4421382 (not c!752610)) b!4421383))

(assert (= (and b!4421382 c!752612) b!4421388))

(assert (= (and b!4421382 (not c!752612)) b!4421381))

(assert (= (and d!1339702 res!1827301) b!4421380))

(assert (= (and b!4421380 res!1827299) b!4421385))

(assert (= (and b!4421385 res!1827300) b!4421387))

(declare-fun m!5099159 () Bool)

(assert (=> b!4421385 m!5099159))

(declare-fun m!5099161 () Bool)

(assert (=> d!1339702 m!5099161))

(assert (=> d!1339702 m!5098425))

(declare-fun m!5099163 () Bool)

(assert (=> b!4421388 m!5099163))

(assert (=> b!4421388 m!5099163))

(declare-fun m!5099165 () Bool)

(assert (=> b!4421388 m!5099165))

(declare-fun m!5099167 () Bool)

(assert (=> b!4421382 m!5099167))

(assert (=> b!4421382 m!5099163))

(declare-fun m!5099169 () Bool)

(assert (=> b!4421382 m!5099169))

(declare-fun m!5099171 () Bool)

(assert (=> b!4421382 m!5099171))

(assert (=> b!4421382 m!5099163))

(declare-fun m!5099173 () Bool)

(assert (=> b!4421382 m!5099173))

(declare-fun m!5099175 () Bool)

(assert (=> b!4421380 m!5099175))

(assert (=> b!4421380 m!5098405))

(declare-fun m!5099177 () Bool)

(assert (=> b!4421387 m!5099177))

(declare-fun m!5099179 () Bool)

(assert (=> b!4421387 m!5099179))

(assert (=> b!4421387 m!5099179))

(declare-fun m!5099181 () Bool)

(assert (=> b!4421387 m!5099181))

(assert (=> b!4420683 d!1339702))

(declare-fun d!1339704 () Bool)

(declare-fun lt!1621436 () Bool)

(assert (=> d!1339704 (= lt!1621436 (select (content!7936 e!2752455) key!3717))))

(declare-fun e!2752974 () Bool)

(assert (=> d!1339704 (= lt!1621436 e!2752974)))

(declare-fun res!1827303 () Bool)

(assert (=> d!1339704 (=> (not res!1827303) (not e!2752974))))

(assert (=> d!1339704 (= res!1827303 ((_ is Cons!49537) e!2752455))))

(assert (=> d!1339704 (= (contains!12014 e!2752455 key!3717) lt!1621436)))

(declare-fun b!4421389 () Bool)

(declare-fun e!2752973 () Bool)

(assert (=> b!4421389 (= e!2752974 e!2752973)))

(declare-fun res!1827302 () Bool)

(assert (=> b!4421389 (=> res!1827302 e!2752973)))

(assert (=> b!4421389 (= res!1827302 (= (h!55212 e!2752455) key!3717))))

(declare-fun b!4421390 () Bool)

(assert (=> b!4421390 (= e!2752973 (contains!12014 (t!356599 e!2752455) key!3717))))

(assert (= (and d!1339704 res!1827303) b!4421389))

(assert (= (and b!4421389 (not res!1827302)) b!4421390))

(declare-fun m!5099183 () Bool)

(assert (=> d!1339704 m!5099183))

(declare-fun m!5099185 () Bool)

(assert (=> d!1339704 m!5099185))

(declare-fun m!5099187 () Bool)

(assert (=> b!4421390 m!5099187))

(assert (=> bm!307536 d!1339704))

(declare-fun d!1339706 () Bool)

(declare-fun res!1827304 () Bool)

(declare-fun e!2752975 () Bool)

(assert (=> d!1339706 (=> res!1827304 e!2752975)))

(assert (=> d!1339706 (= res!1827304 ((_ is Nil!49535) (toList!3449 (+!1046 lm!1616 (tuple2!49305 hash!366 newBucket!194)))))))

(assert (=> d!1339706 (= (forall!9528 (toList!3449 (+!1046 lm!1616 (tuple2!49305 hash!366 newBucket!194))) lambda!152904) e!2752975)))

(declare-fun b!4421391 () Bool)

(declare-fun e!2752976 () Bool)

(assert (=> b!4421391 (= e!2752975 e!2752976)))

(declare-fun res!1827305 () Bool)

(assert (=> b!4421391 (=> (not res!1827305) (not e!2752976))))

(assert (=> b!4421391 (= res!1827305 (dynLambda!20828 lambda!152904 (h!55208 (toList!3449 (+!1046 lm!1616 (tuple2!49305 hash!366 newBucket!194))))))))

(declare-fun b!4421392 () Bool)

(assert (=> b!4421392 (= e!2752976 (forall!9528 (t!356597 (toList!3449 (+!1046 lm!1616 (tuple2!49305 hash!366 newBucket!194)))) lambda!152904))))

(assert (= (and d!1339706 (not res!1827304)) b!4421391))

(assert (= (and b!4421391 res!1827305) b!4421392))

(declare-fun b_lambda!142589 () Bool)

(assert (=> (not b_lambda!142589) (not b!4421391)))

(declare-fun m!5099189 () Bool)

(assert (=> b!4421391 m!5099189))

(declare-fun m!5099191 () Bool)

(assert (=> b!4421392 m!5099191))

(assert (=> d!1339360 d!1339706))

(declare-fun d!1339708 () Bool)

(declare-fun e!2752977 () Bool)

(assert (=> d!1339708 e!2752977))

(declare-fun res!1827307 () Bool)

(assert (=> d!1339708 (=> (not res!1827307) (not e!2752977))))

(declare-fun lt!1621438 () ListLongMap!2099)

(assert (=> d!1339708 (= res!1827307 (contains!12012 lt!1621438 (_1!27946 (tuple2!49305 hash!366 newBucket!194))))))

(declare-fun lt!1621439 () List!49659)

(assert (=> d!1339708 (= lt!1621438 (ListLongMap!2100 lt!1621439))))

(declare-fun lt!1621440 () Unit!81302)

(declare-fun lt!1621437 () Unit!81302)

(assert (=> d!1339708 (= lt!1621440 lt!1621437)))

(assert (=> d!1339708 (= (getValueByKey!688 lt!1621439 (_1!27946 (tuple2!49305 hash!366 newBucket!194))) (Some!10701 (_2!27946 (tuple2!49305 hash!366 newBucket!194))))))

(assert (=> d!1339708 (= lt!1621437 (lemmaContainsTupThenGetReturnValue!422 lt!1621439 (_1!27946 (tuple2!49305 hash!366 newBucket!194)) (_2!27946 (tuple2!49305 hash!366 newBucket!194))))))

(assert (=> d!1339708 (= lt!1621439 (insertStrictlySorted!248 (toList!3449 lm!1616) (_1!27946 (tuple2!49305 hash!366 newBucket!194)) (_2!27946 (tuple2!49305 hash!366 newBucket!194))))))

(assert (=> d!1339708 (= (+!1046 lm!1616 (tuple2!49305 hash!366 newBucket!194)) lt!1621438)))

(declare-fun b!4421393 () Bool)

(declare-fun res!1827306 () Bool)

(assert (=> b!4421393 (=> (not res!1827306) (not e!2752977))))

(assert (=> b!4421393 (= res!1827306 (= (getValueByKey!688 (toList!3449 lt!1621438) (_1!27946 (tuple2!49305 hash!366 newBucket!194))) (Some!10701 (_2!27946 (tuple2!49305 hash!366 newBucket!194)))))))

(declare-fun b!4421394 () Bool)

(assert (=> b!4421394 (= e!2752977 (contains!12017 (toList!3449 lt!1621438) (tuple2!49305 hash!366 newBucket!194)))))

(assert (= (and d!1339708 res!1827307) b!4421393))

(assert (= (and b!4421393 res!1827306) b!4421394))

(declare-fun m!5099193 () Bool)

(assert (=> d!1339708 m!5099193))

(declare-fun m!5099195 () Bool)

(assert (=> d!1339708 m!5099195))

(declare-fun m!5099197 () Bool)

(assert (=> d!1339708 m!5099197))

(declare-fun m!5099199 () Bool)

(assert (=> d!1339708 m!5099199))

(declare-fun m!5099201 () Bool)

(assert (=> b!4421393 m!5099201))

(declare-fun m!5099203 () Bool)

(assert (=> b!4421394 m!5099203))

(assert (=> d!1339360 d!1339708))

(declare-fun d!1339710 () Bool)

(assert (=> d!1339710 (forall!9528 (toList!3449 (+!1046 lm!1616 (tuple2!49305 hash!366 newBucket!194))) lambda!152904)))

(assert (=> d!1339710 true))

(declare-fun _$31!376 () Unit!81302)

(assert (=> d!1339710 (= (choose!27850 lm!1616 lambda!152904 hash!366 newBucket!194) _$31!376)))

(declare-fun bs!755025 () Bool)

(assert (= bs!755025 d!1339710))

(assert (=> bs!755025 m!5098089))

(assert (=> bs!755025 m!5098091))

(assert (=> d!1339360 d!1339710))

(assert (=> d!1339360 d!1339368))

(assert (=> b!4420695 d!1339698))

(assert (=> b!4420695 d!1339422))

(declare-fun e!2752978 () Bool)

(declare-fun tp!1332973 () Bool)

(declare-fun b!4421396 () Bool)

(assert (=> b!4421396 (= e!2752978 (and tp_is_empty!26171 tp_is_empty!26169 tp!1332973))))

(assert (=> b!4420726 (= tp!1332968 e!2752978)))

(assert (= (and b!4420726 ((_ is Cons!49534) (_2!27946 (h!55208 (toList!3449 lm!1616))))) b!4421396))

(declare-fun b!4421397 () Bool)

(declare-fun e!2752979 () Bool)

(declare-fun tp!1332974 () Bool)

(declare-fun tp!1332975 () Bool)

(assert (=> b!4421397 (= e!2752979 (and tp!1332974 tp!1332975))))

(assert (=> b!4420726 (= tp!1332969 e!2752979)))

(assert (= (and b!4420726 ((_ is Cons!49535) (t!356597 (toList!3449 lm!1616)))) b!4421397))

(declare-fun tp!1332976 () Bool)

(declare-fun e!2752980 () Bool)

(declare-fun b!4421398 () Bool)

(assert (=> b!4421398 (= e!2752980 (and tp_is_empty!26171 tp_is_empty!26169 tp!1332976))))

(assert (=> b!4420731 (= tp!1332972 e!2752980)))

(assert (= (and b!4420731 ((_ is Cons!49534) (t!356596 (t!356596 newBucket!194)))) b!4421398))

(declare-fun b_lambda!142591 () Bool)

(assert (= b_lambda!142587 (or start!430784 b_lambda!142591)))

(declare-fun bs!755026 () Bool)

(declare-fun d!1339712 () Bool)

(assert (= bs!755026 (and d!1339712 start!430784)))

(assert (=> bs!755026 (= (dynLambda!20828 lambda!152904 (h!55208 (t!356597 (toList!3449 lm!1616)))) (noDuplicateKeys!731 (_2!27946 (h!55208 (t!356597 (toList!3449 lm!1616))))))))

(declare-fun m!5099205 () Bool)

(assert (=> bs!755026 m!5099205))

(assert (=> b!4421378 d!1339712))

(declare-fun b_lambda!142593 () Bool)

(assert (= b_lambda!142557 (or d!1339350 b_lambda!142593)))

(declare-fun bs!755027 () Bool)

(declare-fun d!1339714 () Bool)

(assert (= bs!755027 (and d!1339714 d!1339350)))

(assert (=> bs!755027 (= (dynLambda!20828 lambda!152931 (h!55208 (toList!3449 (+!1046 lt!1620777 lt!1620774)))) (noDuplicateKeys!731 (_2!27946 (h!55208 (toList!3449 (+!1046 lt!1620777 lt!1620774))))))))

(assert (=> bs!755027 m!5098329))

(assert (=> b!4420835 d!1339714))

(declare-fun b_lambda!142595 () Bool)

(assert (= b_lambda!142555 (or d!1339332 b_lambda!142595)))

(declare-fun bs!755028 () Bool)

(declare-fun d!1339716 () Bool)

(assert (= bs!755028 (and d!1339716 d!1339332)))

(assert (=> bs!755028 (= (dynLambda!20828 lambda!152930 (h!55208 (toList!3449 lt!1620777))) (noDuplicateKeys!731 (_2!27946 (h!55208 (toList!3449 lt!1620777)))))))

(assert (=> bs!755028 m!5098201))

(assert (=> b!4420831 d!1339716))

(declare-fun b_lambda!142597 () Bool)

(assert (= b_lambda!142553 (or d!1339370 b_lambda!142597)))

(declare-fun bs!755029 () Bool)

(declare-fun d!1339718 () Bool)

(assert (= bs!755029 (and d!1339718 d!1339370)))

(assert (=> bs!755029 (= (dynLambda!20828 lambda!152934 (h!55208 (toList!3449 lm!1616))) (noDuplicateKeys!731 (_2!27946 (h!55208 (toList!3449 lm!1616)))))))

(assert (=> bs!755029 m!5098121))

(assert (=> b!4420801 d!1339718))

(declare-fun b_lambda!142599 () Bool)

(assert (= b_lambda!142569 (or d!1339328 b_lambda!142599)))

(declare-fun bs!755030 () Bool)

(declare-fun d!1339720 () Bool)

(assert (= bs!755030 (and d!1339720 d!1339328)))

(assert (=> bs!755030 (= (dynLambda!20828 lambda!152923 (h!55208 (tail!7235 (toList!3449 lm!1616)))) (noDuplicateKeys!731 (_2!27946 (h!55208 (tail!7235 (toList!3449 lm!1616))))))))

(assert (=> bs!755030 m!5098803))

(assert (=> b!4421169 d!1339720))

(declare-fun b_lambda!142601 () Bool)

(assert (= b_lambda!142565 (or d!1339284 b_lambda!142601)))

(declare-fun bs!755031 () Bool)

(declare-fun d!1339722 () Bool)

(assert (= bs!755031 (and d!1339722 d!1339284)))

(assert (=> bs!755031 (= (dynLambda!20828 lambda!152916 (h!55208 (toList!3449 lm!1616))) (noDuplicateKeys!731 (_2!27946 (h!55208 (toList!3449 lm!1616)))))))

(assert (=> bs!755031 m!5098121))

(assert (=> b!4420921 d!1339722))

(declare-fun b_lambda!142603 () Bool)

(assert (= b_lambda!142589 (or start!430784 b_lambda!142603)))

(declare-fun bs!755032 () Bool)

(declare-fun d!1339724 () Bool)

(assert (= bs!755032 (and d!1339724 start!430784)))

(assert (=> bs!755032 (= (dynLambda!20828 lambda!152904 (h!55208 (toList!3449 (+!1046 lm!1616 (tuple2!49305 hash!366 newBucket!194))))) (noDuplicateKeys!731 (_2!27946 (h!55208 (toList!3449 (+!1046 lm!1616 (tuple2!49305 hash!366 newBucket!194)))))))))

(declare-fun m!5099207 () Bool)

(assert (=> bs!755032 m!5099207))

(assert (=> b!4421391 d!1339724))

(declare-fun b_lambda!142605 () Bool)

(assert (= b_lambda!142579 (or start!430784 b_lambda!142605)))

(declare-fun bs!755033 () Bool)

(declare-fun d!1339726 () Bool)

(assert (= bs!755033 (and d!1339726 start!430784)))

(assert (=> bs!755033 (= (dynLambda!20828 lambda!152904 (h!55208 (t!356597 (toList!3449 lt!1620779)))) (noDuplicateKeys!731 (_2!27946 (h!55208 (t!356597 (toList!3449 lt!1620779))))))))

(declare-fun m!5099209 () Bool)

(assert (=> bs!755033 m!5099209))

(assert (=> b!4421272 d!1339726))

(declare-fun b_lambda!142607 () Bool)

(assert (= b_lambda!142583 (or d!1339330 b_lambda!142607)))

(declare-fun bs!755034 () Bool)

(declare-fun d!1339728 () Bool)

(assert (= bs!755034 (and d!1339728 d!1339330)))

(assert (=> bs!755034 (= (dynLambda!20828 lambda!152924 (h!55208 (toList!3449 lt!1620777))) (noDuplicateKeys!731 (_2!27946 (h!55208 (toList!3449 lt!1620777)))))))

(assert (=> bs!755034 m!5098201))

(assert (=> b!4421327 d!1339728))

(declare-fun b_lambda!142609 () Bool)

(assert (= b_lambda!142585 (or d!1339378 b_lambda!142609)))

(declare-fun bs!755035 () Bool)

(declare-fun d!1339730 () Bool)

(assert (= bs!755035 (and d!1339730 d!1339378)))

(assert (=> bs!755035 (= (dynLambda!20829 lambda!152940 (h!55207 newBucket!194)) (= (hash!2065 hashF!1220 (_1!27945 (h!55207 newBucket!194))) hash!366))))

(declare-fun m!5099211 () Bool)

(assert (=> bs!755035 m!5099211))

(assert (=> b!4421367 d!1339730))

(declare-fun b_lambda!142611 () Bool)

(assert (= b_lambda!142577 (or d!1339376 b_lambda!142611)))

(declare-fun bs!755036 () Bool)

(declare-fun d!1339732 () Bool)

(assert (= bs!755036 (and d!1339732 d!1339376)))

(assert (=> bs!755036 (= (dynLambda!20828 lambda!152937 (h!55208 (toList!3449 lm!1616))) (allKeysSameHash!691 (_2!27946 (h!55208 (toList!3449 lm!1616))) (_1!27946 (h!55208 (toList!3449 lm!1616))) hashF!1220))))

(declare-fun m!5099213 () Bool)

(assert (=> bs!755036 m!5099213))

(assert (=> b!4421270 d!1339732))

(check-sat (not d!1339424) (not b!4420846) (not bm!307550) (not d!1339470) (not b!4420931) (not b!4420782) (not b!4421385) (not b!4421297) tp_is_empty!26169 (not d!1339480) (not b!4421271) (not bm!307548) (not b!4420957) (not d!1339434) (not b!4421054) (not d!1339656) (not b!4421162) (not b!4421264) (not b!4420817) (not b!4421346) (not b!4420788) (not b!4421171) (not b!4421135) (not b!4421170) (not d!1339678) (not b!4420919) (not b!4420907) (not b!4420901) (not bm!307557) (not b!4421137) (not b!4421387) (not b!4421269) (not b!4420843) (not d!1339672) (not d!1339584) (not b!4420935) (not d!1339566) (not b!4421328) (not b!4420932) (not b!4420828) (not bm!307594) (not d!1339430) (not d!1339448) (not b!4421377) (not b!4420833) (not b_lambda!142609) (not b!4421339) (not d!1339682) (not b!4420802) (not d!1339710) (not b!4421294) (not b!4421283) (not b!4420821) (not d!1339670) (not b!4420925) (not d!1339570) (not d!1339386) (not b!4421172) (not d!1339702) (not d!1339488) (not bs!755033) (not b!4420827) (not b!4421042) (not b!4421047) (not d!1339694) (not b!4421175) (not b_lambda!142601) (not bs!755026) (not b!4420920) (not bs!755027) (not b!4421174) (not bm!307607) (not b!4420781) (not b!4420778) (not bm!307572) (not b!4421142) (not b!4421295) (not b!4421380) (not b!4420785) (not b!4421258) (not d!1339432) (not b_lambda!142545) (not b!4421347) (not b!4421200) (not b!4420885) (not d!1339490) (not b!4420887) (not b!4420855) (not d!1339660) (not b_lambda!142599) (not b!4421388) (not b_lambda!142547) (not d!1339698) (not b_lambda!142603) (not d!1339704) (not b!4420844) (not d!1339426) (not d!1339662) (not b_lambda!142597) (not b!4420847) (not bs!755035) (not b!4420839) (not d!1339590) (not d!1339416) (not b!4421326) (not b!4420927) (not b!4420928) (not d!1339412) (not b!4421338) (not b!4421222) (not bs!755029) (not b!4421046) (not d!1339626) (not b!4421394) (not b!4421198) (not b!4421368) (not b!4420915) (not b!4421393) (not b_lambda!142607) (not b!4420841) (not d!1339580) (not b!4420832) (not d!1339536) (not d!1339636) (not bs!755036) (not bs!755034) (not d!1339684) (not b!4421140) (not b!4421396) (not b!4421291) (not b!4421143) (not b!4420787) (not b_lambda!142605) (not bs!755028) (not b!4421207) (not b!4421318) (not b!4420916) (not b!4420913) (not d!1339444) (not b!4421333) (not b!4421390) (not bm!307573) (not b!4421398) (not b_lambda!142593) (not b_lambda!142595) (not d!1339502) (not d!1339462) (not d!1339600) (not b!4421039) (not b!4420914) (not bm!307606) (not b_lambda!142549) (not b!4421379) (not bm!307563) (not d!1339482) (not b!4421340) (not b!4420934) (not b!4421392) tp_is_empty!26171 (not d!1339538) (not bm!307558) (not d!1339500) (not b!4421397) (not b!4421048) (not b!4420836) (not b!4421281) (not bs!755032) (not b!4420956) (not d!1339442) (not bm!307608) (not b!4420799) (not b!4420886) (not b!4421279) (not b!4420938) (not b_lambda!142591) (not d!1339406) (not b!4421331) (not b!4421321) (not b_lambda!142611) (not b!4421044) (not d!1339472) (not b!4421273) (not bm!307559) (not bm!307549) (not bs!755031) (not d!1339496) (not bm!307612) (not d!1339494) (not bm!307603) (not b!4421282) (not b!4421324) (not b!4421221) (not bm!307595) (not d!1339614) (not b!4421043) (not b!4421382) (not bm!307596) (not b!4421168) (not b!4421051) (not d!1339484) (not d!1339668) (not b!4421265) (not b!4421336) (not b!4420930) (not b!4421192) (not b!4420922) (not b!4421298) (not bs!755030) (not b!4420842) (not d!1339708) (not b!4421311) (not b!4420779))
(check-sat)
