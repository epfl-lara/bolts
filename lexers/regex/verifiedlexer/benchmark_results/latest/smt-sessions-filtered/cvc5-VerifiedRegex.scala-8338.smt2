; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!433822 () Bool)

(assert start!433822)

(declare-fun b!4437114 () Bool)

(declare-fun res!1836483 () Bool)

(declare-fun e!2762863 () Bool)

(assert (=> b!4437114 (=> (not res!1836483) (not e!2762863))))

(declare-datatypes ((K!11093 0))(
  ( (K!11094 (val!17145 Int)) )
))
(declare-fun key!3717 () K!11093)

(declare-datatypes ((Hashable!5202 0))(
  ( (HashableExt!5201 (__x!30905 Int)) )
))
(declare-fun hashF!1220 () Hashable!5202)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun hash!2239 (Hashable!5202 K!11093) (_ BitVec 64))

(assert (=> b!4437114 (= res!1836483 (= (hash!2239 hashF!1220 key!3717) hash!366))))

(declare-fun b!4437115 () Bool)

(declare-fun res!1836485 () Bool)

(declare-fun e!2762857 () Bool)

(assert (=> b!4437115 (=> res!1836485 e!2762857)))

(declare-datatypes ((V!11339 0))(
  ( (V!11340 (val!17146 Int)) )
))
(declare-datatypes ((tuple2!49610 0))(
  ( (tuple2!49611 (_1!28099 K!11093) (_2!28099 V!11339)) )
))
(declare-datatypes ((List!49849 0))(
  ( (Nil!49725) (Cons!49725 (h!55436 tuple2!49610) (t!356791 List!49849)) )
))
(declare-datatypes ((tuple2!49612 0))(
  ( (tuple2!49613 (_1!28100 (_ BitVec 64)) (_2!28100 List!49849)) )
))
(declare-datatypes ((List!49850 0))(
  ( (Nil!49726) (Cons!49726 (h!55437 tuple2!49612) (t!356792 List!49850)) )
))
(declare-datatypes ((ListLongMap!2253 0))(
  ( (ListLongMap!2254 (toList!3603 List!49850)) )
))
(declare-fun lm!1616 () ListLongMap!2253)

(assert (=> b!4437115 (= res!1836485 (or (and (is-Cons!49726 (toList!3603 lm!1616)) (= (_1!28100 (h!55437 (toList!3603 lm!1616))) hash!366)) (not (is-Cons!49726 (toList!3603 lm!1616))) (= (_1!28100 (h!55437 (toList!3603 lm!1616))) hash!366)))))

(declare-fun b!4437116 () Bool)

(declare-fun e!2762855 () Bool)

(declare-fun tp!1333857 () Bool)

(assert (=> b!4437116 (= e!2762855 tp!1333857)))

(declare-fun b!4437117 () Bool)

(declare-fun res!1836477 () Bool)

(assert (=> b!4437117 (=> (not res!1836477) (not e!2762863))))

(declare-fun newBucket!194 () List!49849)

(declare-fun allKeysSameHash!768 (List!49849 (_ BitVec 64) Hashable!5202) Bool)

(assert (=> b!4437117 (= res!1836477 (allKeysSameHash!768 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4437118 () Bool)

(declare-fun res!1836486 () Bool)

(declare-fun e!2762860 () Bool)

(assert (=> b!4437118 (=> (not res!1836486) (not e!2762860))))

(declare-fun noDuplicateKeys!808 (List!49849) Bool)

(assert (=> b!4437118 (= res!1836486 (noDuplicateKeys!808 newBucket!194))))

(declare-fun newValue!93 () V!11339)

(declare-fun b!4437119 () Bool)

(declare-fun lt!1633904 () Bool)

(declare-fun e!2762862 () Bool)

(assert (=> b!4437119 (= e!2762862 (and (not lt!1633904) (= newBucket!194 (Cons!49725 (tuple2!49611 key!3717 newValue!93) Nil!49725))))))

(declare-fun b!4437120 () Bool)

(declare-fun e!2762864 () Bool)

(assert (=> b!4437120 (= e!2762863 e!2762864)))

(declare-fun res!1836488 () Bool)

(assert (=> b!4437120 (=> (not res!1836488) (not e!2762864))))

(declare-datatypes ((ListMap!2847 0))(
  ( (ListMap!2848 (toList!3604 List!49849)) )
))
(declare-fun lt!1633906 () ListMap!2847)

(declare-fun contains!12276 (ListMap!2847 K!11093) Bool)

(assert (=> b!4437120 (= res!1836488 (not (contains!12276 lt!1633906 key!3717)))))

(declare-fun extractMap!869 (List!49850) ListMap!2847)

(assert (=> b!4437120 (= lt!1633906 (extractMap!869 (toList!3603 lm!1616)))))

(declare-fun b!4437121 () Bool)

(declare-fun res!1836479 () Bool)

(assert (=> b!4437121 (=> (not res!1836479) (not e!2762863))))

(declare-fun allKeysSameHashInMap!914 (ListLongMap!2253 Hashable!5202) Bool)

(assert (=> b!4437121 (= res!1836479 (allKeysSameHashInMap!914 lm!1616 hashF!1220))))

(declare-fun b!4437122 () Bool)

(declare-fun e!2762856 () Bool)

(declare-fun apply!11660 (ListLongMap!2253 (_ BitVec 64)) List!49849)

(assert (=> b!4437122 (= e!2762856 (= newBucket!194 (Cons!49725 (tuple2!49611 key!3717 newValue!93) (apply!11660 lm!1616 hash!366))))))

(declare-fun b!4437124 () Bool)

(declare-fun res!1836476 () Bool)

(assert (=> b!4437124 (=> (not res!1836476) (not e!2762860))))

(declare-fun lambda!156425 () Int)

(declare-fun forall!9661 (List!49850 Int) Bool)

(assert (=> b!4437124 (= res!1836476 (forall!9661 (toList!3603 lm!1616) lambda!156425))))

(declare-fun e!2762858 () Bool)

(declare-fun lt!1633903 () ListMap!2847)

(declare-fun b!4437125 () Bool)

(declare-fun eq!440 (ListMap!2847 ListMap!2847) Bool)

(declare-fun addToMapMapFromBucket!429 (List!49849 ListMap!2847) ListMap!2847)

(assert (=> b!4437125 (= e!2762858 (eq!440 lt!1633906 (addToMapMapFromBucket!429 (_2!28100 (h!55437 (toList!3603 lm!1616))) lt!1633903)))))

(declare-fun tp_is_empty!26477 () Bool)

(declare-fun tp!1333858 () Bool)

(declare-fun b!4437126 () Bool)

(declare-fun tp_is_empty!26479 () Bool)

(declare-fun e!2762861 () Bool)

(assert (=> b!4437126 (= e!2762861 (and tp_is_empty!26479 tp_is_empty!26477 tp!1333858))))

(declare-fun b!4437127 () Bool)

(assert (=> b!4437127 (= e!2762860 (not e!2762857))))

(declare-fun res!1836484 () Bool)

(assert (=> b!4437127 (=> res!1836484 e!2762857)))

(declare-fun lt!1633897 () ListLongMap!2253)

(assert (=> b!4437127 (= res!1836484 (not (forall!9661 (toList!3603 lt!1633897) lambda!156425)))))

(assert (=> b!4437127 (forall!9661 (toList!3603 lt!1633897) lambda!156425)))

(declare-fun lt!1633898 () tuple2!49612)

(declare-fun +!1182 (ListLongMap!2253 tuple2!49612) ListLongMap!2253)

(assert (=> b!4437127 (= lt!1633897 (+!1182 lm!1616 lt!1633898))))

(assert (=> b!4437127 (= lt!1633898 (tuple2!49613 hash!366 newBucket!194))))

(declare-datatypes ((Unit!83517 0))(
  ( (Unit!83518) )
))
(declare-fun lt!1633905 () Unit!83517)

(declare-fun addValidProp!450 (ListLongMap!2253 Int (_ BitVec 64) List!49849) Unit!83517)

(assert (=> b!4437127 (= lt!1633905 (addValidProp!450 lm!1616 lambda!156425 hash!366 newBucket!194))))

(declare-fun b!4437128 () Bool)

(assert (=> b!4437128 (= e!2762864 e!2762860)))

(declare-fun res!1836487 () Bool)

(assert (=> b!4437128 (=> (not res!1836487) (not e!2762860))))

(assert (=> b!4437128 (= res!1836487 e!2762862)))

(declare-fun res!1836480 () Bool)

(assert (=> b!4437128 (=> res!1836480 e!2762862)))

(assert (=> b!4437128 (= res!1836480 e!2762856)))

(declare-fun res!1836481 () Bool)

(assert (=> b!4437128 (=> (not res!1836481) (not e!2762856))))

(assert (=> b!4437128 (= res!1836481 lt!1633904)))

(declare-fun contains!12277 (ListLongMap!2253 (_ BitVec 64)) Bool)

(assert (=> b!4437128 (= lt!1633904 (contains!12277 lm!1616 hash!366))))

(declare-fun b!4437129 () Bool)

(declare-fun e!2762859 () Unit!83517)

(declare-fun Unit!83519 () Unit!83517)

(assert (=> b!4437129 (= e!2762859 Unit!83519)))

(declare-fun b!4437130 () Bool)

(assert (=> b!4437130 (= e!2762857 e!2762858)))

(declare-fun res!1836482 () Bool)

(assert (=> b!4437130 (=> res!1836482 e!2762858)))

(declare-fun head!9271 (ListLongMap!2253) tuple2!49612)

(assert (=> b!4437130 (= res!1836482 (= (head!9271 lm!1616) lt!1633898))))

(declare-fun lt!1633899 () ListMap!2847)

(declare-fun +!1183 (ListMap!2847 tuple2!49610) ListMap!2847)

(assert (=> b!4437130 (eq!440 lt!1633899 (+!1183 lt!1633903 (tuple2!49611 key!3717 newValue!93)))))

(declare-fun lt!1633902 () ListLongMap!2253)

(assert (=> b!4437130 (= lt!1633903 (extractMap!869 (toList!3603 lt!1633902)))))

(assert (=> b!4437130 (= lt!1633899 (extractMap!869 (toList!3603 (+!1182 lt!1633902 lt!1633898))))))

(declare-fun lt!1633901 () Unit!83517)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!150 (ListLongMap!2253 (_ BitVec 64) List!49849 K!11093 V!11339 Hashable!5202) Unit!83517)

(assert (=> b!4437130 (= lt!1633901 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!150 lt!1633902 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(declare-fun tail!7338 (ListLongMap!2253) ListLongMap!2253)

(assert (=> b!4437130 (= lt!1633902 (tail!7338 lm!1616))))

(declare-fun lt!1633896 () Unit!83517)

(assert (=> b!4437130 (= lt!1633896 e!2762859)))

(declare-fun c!755232 () Bool)

(declare-fun tail!7339 (List!49850) List!49850)

(assert (=> b!4437130 (= c!755232 (contains!12276 (extractMap!869 (tail!7339 (toList!3603 lm!1616))) key!3717))))

(declare-fun b!4437123 () Bool)

(declare-fun Unit!83520 () Unit!83517)

(assert (=> b!4437123 (= e!2762859 Unit!83520)))

(declare-fun lt!1633900 () Unit!83517)

(declare-fun lemmaExtractTailMapContainsThenExtractMapDoes!63 (ListLongMap!2253 K!11093 Hashable!5202) Unit!83517)

(assert (=> b!4437123 (= lt!1633900 (lemmaExtractTailMapContainsThenExtractMapDoes!63 lm!1616 key!3717 hashF!1220))))

(assert (=> b!4437123 false))

(declare-fun res!1836478 () Bool)

(assert (=> start!433822 (=> (not res!1836478) (not e!2762863))))

(assert (=> start!433822 (= res!1836478 (forall!9661 (toList!3603 lm!1616) lambda!156425))))

(assert (=> start!433822 e!2762863))

(assert (=> start!433822 tp_is_empty!26477))

(assert (=> start!433822 tp_is_empty!26479))

(assert (=> start!433822 e!2762861))

(declare-fun inv!65280 (ListLongMap!2253) Bool)

(assert (=> start!433822 (and (inv!65280 lm!1616) e!2762855)))

(assert (=> start!433822 true))

(assert (= (and start!433822 res!1836478) b!4437121))

(assert (= (and b!4437121 res!1836479) b!4437114))

(assert (= (and b!4437114 res!1836483) b!4437117))

(assert (= (and b!4437117 res!1836477) b!4437120))

(assert (= (and b!4437120 res!1836488) b!4437128))

(assert (= (and b!4437128 res!1836481) b!4437122))

(assert (= (and b!4437128 (not res!1836480)) b!4437119))

(assert (= (and b!4437128 res!1836487) b!4437118))

(assert (= (and b!4437118 res!1836486) b!4437124))

(assert (= (and b!4437124 res!1836476) b!4437127))

(assert (= (and b!4437127 (not res!1836484)) b!4437115))

(assert (= (and b!4437115 (not res!1836485)) b!4437130))

(assert (= (and b!4437130 c!755232) b!4437123))

(assert (= (and b!4437130 (not c!755232)) b!4437129))

(assert (= (and b!4437130 (not res!1836482)) b!4437125))

(assert (= (and start!433822 (is-Cons!49725 newBucket!194)) b!4437126))

(assert (= start!433822 b!4437116))

(declare-fun m!5124507 () Bool)

(assert (=> b!4437122 m!5124507))

(declare-fun m!5124509 () Bool)

(assert (=> b!4437124 m!5124509))

(declare-fun m!5124511 () Bool)

(assert (=> b!4437118 m!5124511))

(declare-fun m!5124513 () Bool)

(assert (=> b!4437120 m!5124513))

(declare-fun m!5124515 () Bool)

(assert (=> b!4437120 m!5124515))

(declare-fun m!5124517 () Bool)

(assert (=> b!4437123 m!5124517))

(declare-fun m!5124519 () Bool)

(assert (=> b!4437114 m!5124519))

(declare-fun m!5124521 () Bool)

(assert (=> b!4437125 m!5124521))

(assert (=> b!4437125 m!5124521))

(declare-fun m!5124523 () Bool)

(assert (=> b!4437125 m!5124523))

(declare-fun m!5124525 () Bool)

(assert (=> b!4437117 m!5124525))

(assert (=> start!433822 m!5124509))

(declare-fun m!5124527 () Bool)

(assert (=> start!433822 m!5124527))

(declare-fun m!5124529 () Bool)

(assert (=> b!4437128 m!5124529))

(declare-fun m!5124531 () Bool)

(assert (=> b!4437127 m!5124531))

(assert (=> b!4437127 m!5124531))

(declare-fun m!5124533 () Bool)

(assert (=> b!4437127 m!5124533))

(declare-fun m!5124535 () Bool)

(assert (=> b!4437127 m!5124535))

(declare-fun m!5124537 () Bool)

(assert (=> b!4437130 m!5124537))

(declare-fun m!5124539 () Bool)

(assert (=> b!4437130 m!5124539))

(declare-fun m!5124541 () Bool)

(assert (=> b!4437130 m!5124541))

(declare-fun m!5124543 () Bool)

(assert (=> b!4437130 m!5124543))

(declare-fun m!5124545 () Bool)

(assert (=> b!4437130 m!5124545))

(declare-fun m!5124547 () Bool)

(assert (=> b!4437130 m!5124547))

(declare-fun m!5124549 () Bool)

(assert (=> b!4437130 m!5124549))

(declare-fun m!5124551 () Bool)

(assert (=> b!4437130 m!5124551))

(assert (=> b!4437130 m!5124537))

(declare-fun m!5124553 () Bool)

(assert (=> b!4437130 m!5124553))

(assert (=> b!4437130 m!5124539))

(declare-fun m!5124555 () Bool)

(assert (=> b!4437130 m!5124555))

(declare-fun m!5124557 () Bool)

(assert (=> b!4437130 m!5124557))

(assert (=> b!4437130 m!5124545))

(declare-fun m!5124559 () Bool)

(assert (=> b!4437121 m!5124559))

(push 1)

(assert (not b!4437122))

(assert (not b!4437127))

(assert tp_is_empty!26477)

(assert (not b!4437130))

(assert (not b!4437120))

(assert (not b!4437128))

(assert (not b!4437123))

(assert tp_is_empty!26479)

(assert (not b!4437121))

(assert (not b!4437117))

(assert (not start!433822))

(assert (not b!4437114))

(assert (not b!4437118))

(assert (not b!4437116))

(assert (not b!4437125))

(assert (not b!4437126))

(assert (not b!4437124))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1346729 () Bool)

(declare-fun content!8001 (List!49849) (Set tuple2!49610))

(assert (=> d!1346729 (= (eq!440 lt!1633906 (addToMapMapFromBucket!429 (_2!28100 (h!55437 (toList!3603 lm!1616))) lt!1633903)) (= (content!8001 (toList!3604 lt!1633906)) (content!8001 (toList!3604 (addToMapMapFromBucket!429 (_2!28100 (h!55437 (toList!3603 lm!1616))) lt!1633903)))))))

(declare-fun bs!762939 () Bool)

(assert (= bs!762939 d!1346729))

(declare-fun m!5124615 () Bool)

(assert (=> bs!762939 m!5124615))

(declare-fun m!5124617 () Bool)

(assert (=> bs!762939 m!5124617))

(assert (=> b!4437125 d!1346729))

(declare-fun b!4437218 () Bool)

(assert (=> b!4437218 true))

(declare-fun bs!762951 () Bool)

(declare-fun b!4437215 () Bool)

(assert (= bs!762951 (and b!4437215 b!4437218)))

(declare-fun lambda!156471 () Int)

(declare-fun lambda!156470 () Int)

(assert (=> bs!762951 (= lambda!156471 lambda!156470)))

(assert (=> b!4437215 true))

(declare-fun lambda!156472 () Int)

(declare-fun lt!1634007 () ListMap!2847)

(assert (=> bs!762951 (= (= lt!1634007 lt!1633903) (= lambda!156472 lambda!156470))))

(assert (=> b!4437215 (= (= lt!1634007 lt!1633903) (= lambda!156472 lambda!156471))))

(assert (=> b!4437215 true))

(declare-fun bs!762952 () Bool)

(declare-fun d!1346731 () Bool)

(assert (= bs!762952 (and d!1346731 b!4437218)))

(declare-fun lambda!156473 () Int)

(declare-fun lt!1634008 () ListMap!2847)

(assert (=> bs!762952 (= (= lt!1634008 lt!1633903) (= lambda!156473 lambda!156470))))

(declare-fun bs!762953 () Bool)

(assert (= bs!762953 (and d!1346731 b!4437215)))

(assert (=> bs!762953 (= (= lt!1634008 lt!1633903) (= lambda!156473 lambda!156471))))

(assert (=> bs!762953 (= (= lt!1634008 lt!1634007) (= lambda!156473 lambda!156472))))

(assert (=> d!1346731 true))

(declare-fun b!4437214 () Bool)

(declare-fun e!2762914 () Bool)

(declare-fun invariantList!830 (List!49849) Bool)

(assert (=> b!4437214 (= e!2762914 (invariantList!830 (toList!3604 lt!1634008)))))

(declare-fun c!755242 () Bool)

(declare-fun call!308782 () Bool)

(declare-fun bm!308777 () Bool)

(declare-fun forall!9663 (List!49849 Int) Bool)

(assert (=> bm!308777 (= call!308782 (forall!9663 (toList!3604 lt!1633903) (ite c!755242 lambda!156470 lambda!156472)))))

(declare-fun e!2762915 () ListMap!2847)

(assert (=> b!4437215 (= e!2762915 lt!1634007)))

(declare-fun lt!1633998 () ListMap!2847)

(assert (=> b!4437215 (= lt!1633998 (+!1183 lt!1633903 (h!55436 (_2!28100 (h!55437 (toList!3603 lm!1616))))))))

(assert (=> b!4437215 (= lt!1634007 (addToMapMapFromBucket!429 (t!356791 (_2!28100 (h!55437 (toList!3603 lm!1616)))) (+!1183 lt!1633903 (h!55436 (_2!28100 (h!55437 (toList!3603 lm!1616)))))))))

(declare-fun lt!1634011 () Unit!83517)

(declare-fun call!308781 () Unit!83517)

(assert (=> b!4437215 (= lt!1634011 call!308781)))

(declare-fun call!308783 () Bool)

(assert (=> b!4437215 call!308783))

(declare-fun lt!1634016 () Unit!83517)

(assert (=> b!4437215 (= lt!1634016 lt!1634011)))

(assert (=> b!4437215 (forall!9663 (toList!3604 lt!1633998) lambda!156472)))

(declare-fun lt!1634006 () Unit!83517)

(declare-fun Unit!83525 () Unit!83517)

(assert (=> b!4437215 (= lt!1634006 Unit!83525)))

(assert (=> b!4437215 (forall!9663 (t!356791 (_2!28100 (h!55437 (toList!3603 lm!1616)))) lambda!156472)))

(declare-fun lt!1634018 () Unit!83517)

(declare-fun Unit!83526 () Unit!83517)

(assert (=> b!4437215 (= lt!1634018 Unit!83526)))

(declare-fun lt!1634014 () Unit!83517)

(declare-fun Unit!83527 () Unit!83517)

(assert (=> b!4437215 (= lt!1634014 Unit!83527)))

(declare-fun lt!1634005 () Unit!83517)

(declare-fun forallContained!2132 (List!49849 Int tuple2!49610) Unit!83517)

(assert (=> b!4437215 (= lt!1634005 (forallContained!2132 (toList!3604 lt!1633998) lambda!156472 (h!55436 (_2!28100 (h!55437 (toList!3603 lm!1616))))))))

(assert (=> b!4437215 (contains!12276 lt!1633998 (_1!28099 (h!55436 (_2!28100 (h!55437 (toList!3603 lm!1616))))))))

(declare-fun lt!1634001 () Unit!83517)

(declare-fun Unit!83528 () Unit!83517)

(assert (=> b!4437215 (= lt!1634001 Unit!83528)))

(assert (=> b!4437215 (contains!12276 lt!1634007 (_1!28099 (h!55436 (_2!28100 (h!55437 (toList!3603 lm!1616))))))))

(declare-fun lt!1634015 () Unit!83517)

(declare-fun Unit!83529 () Unit!83517)

(assert (=> b!4437215 (= lt!1634015 Unit!83529)))

(assert (=> b!4437215 (forall!9663 (_2!28100 (h!55437 (toList!3603 lm!1616))) lambda!156472)))

(declare-fun lt!1634010 () Unit!83517)

(declare-fun Unit!83530 () Unit!83517)

(assert (=> b!4437215 (= lt!1634010 Unit!83530)))

(assert (=> b!4437215 (forall!9663 (toList!3604 lt!1633998) lambda!156472)))

(declare-fun lt!1634009 () Unit!83517)

(declare-fun Unit!83531 () Unit!83517)

(assert (=> b!4437215 (= lt!1634009 Unit!83531)))

(declare-fun lt!1634013 () Unit!83517)

(declare-fun Unit!83532 () Unit!83517)

(assert (=> b!4437215 (= lt!1634013 Unit!83532)))

(declare-fun lt!1633999 () Unit!83517)

(declare-fun addForallContainsKeyThenBeforeAdding!198 (ListMap!2847 ListMap!2847 K!11093 V!11339) Unit!83517)

(assert (=> b!4437215 (= lt!1633999 (addForallContainsKeyThenBeforeAdding!198 lt!1633903 lt!1634007 (_1!28099 (h!55436 (_2!28100 (h!55437 (toList!3603 lm!1616))))) (_2!28099 (h!55436 (_2!28100 (h!55437 (toList!3603 lm!1616)))))))))

(assert (=> b!4437215 (forall!9663 (toList!3604 lt!1633903) lambda!156472)))

(declare-fun lt!1634002 () Unit!83517)

(assert (=> b!4437215 (= lt!1634002 lt!1633999)))

(assert (=> b!4437215 (forall!9663 (toList!3604 lt!1633903) lambda!156472)))

(declare-fun lt!1634000 () Unit!83517)

(declare-fun Unit!83533 () Unit!83517)

(assert (=> b!4437215 (= lt!1634000 Unit!83533)))

(declare-fun res!1836548 () Bool)

(assert (=> b!4437215 (= res!1836548 (forall!9663 (_2!28100 (h!55437 (toList!3603 lm!1616))) lambda!156472))))

(declare-fun e!2762916 () Bool)

(assert (=> b!4437215 (=> (not res!1836548) (not e!2762916))))

(assert (=> b!4437215 e!2762916))

(declare-fun lt!1634003 () Unit!83517)

(declare-fun Unit!83534 () Unit!83517)

(assert (=> b!4437215 (= lt!1634003 Unit!83534)))

(declare-fun b!4437216 () Bool)

(assert (=> b!4437216 (= e!2762916 call!308782)))

(declare-fun b!4437217 () Bool)

(declare-fun res!1836547 () Bool)

(assert (=> b!4437217 (=> (not res!1836547) (not e!2762914))))

(assert (=> b!4437217 (= res!1836547 (forall!9663 (toList!3604 lt!1633903) lambda!156473))))

(assert (=> b!4437218 (= e!2762915 lt!1633903)))

(declare-fun lt!1634004 () Unit!83517)

(assert (=> b!4437218 (= lt!1634004 call!308781)))

(assert (=> b!4437218 call!308783))

(declare-fun lt!1634012 () Unit!83517)

(assert (=> b!4437218 (= lt!1634012 lt!1634004)))

(assert (=> b!4437218 call!308782))

(declare-fun lt!1634017 () Unit!83517)

(declare-fun Unit!83535 () Unit!83517)

(assert (=> b!4437218 (= lt!1634017 Unit!83535)))

(declare-fun bm!308778 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!198 (ListMap!2847) Unit!83517)

(assert (=> bm!308778 (= call!308781 (lemmaContainsAllItsOwnKeys!198 lt!1633903))))

(assert (=> d!1346731 e!2762914))

(declare-fun res!1836546 () Bool)

(assert (=> d!1346731 (=> (not res!1836546) (not e!2762914))))

(assert (=> d!1346731 (= res!1836546 (forall!9663 (_2!28100 (h!55437 (toList!3603 lm!1616))) lambda!156473))))

(assert (=> d!1346731 (= lt!1634008 e!2762915)))

(assert (=> d!1346731 (= c!755242 (is-Nil!49725 (_2!28100 (h!55437 (toList!3603 lm!1616)))))))

(assert (=> d!1346731 (noDuplicateKeys!808 (_2!28100 (h!55437 (toList!3603 lm!1616))))))

(assert (=> d!1346731 (= (addToMapMapFromBucket!429 (_2!28100 (h!55437 (toList!3603 lm!1616))) lt!1633903) lt!1634008)))

(declare-fun bm!308776 () Bool)

(assert (=> bm!308776 (= call!308783 (forall!9663 (toList!3604 lt!1633903) (ite c!755242 lambda!156470 lambda!156471)))))

(assert (= (and d!1346731 c!755242) b!4437218))

(assert (= (and d!1346731 (not c!755242)) b!4437215))

(assert (= (and b!4437215 res!1836548) b!4437216))

(assert (= (or b!4437218 b!4437215) bm!308778))

(assert (= (or b!4437218 b!4437216) bm!308777))

(assert (= (or b!4437218 b!4437215) bm!308776))

(assert (= (and d!1346731 res!1836546) b!4437217))

(assert (= (and b!4437217 res!1836547) b!4437214))

(declare-fun m!5124665 () Bool)

(assert (=> d!1346731 m!5124665))

(declare-fun m!5124667 () Bool)

(assert (=> d!1346731 m!5124667))

(declare-fun m!5124669 () Bool)

(assert (=> b!4437215 m!5124669))

(declare-fun m!5124671 () Bool)

(assert (=> b!4437215 m!5124671))

(declare-fun m!5124673 () Bool)

(assert (=> b!4437215 m!5124673))

(declare-fun m!5124675 () Bool)

(assert (=> b!4437215 m!5124675))

(declare-fun m!5124677 () Bool)

(assert (=> b!4437215 m!5124677))

(assert (=> b!4437215 m!5124675))

(declare-fun m!5124679 () Bool)

(assert (=> b!4437215 m!5124679))

(declare-fun m!5124681 () Bool)

(assert (=> b!4437215 m!5124681))

(assert (=> b!4437215 m!5124679))

(declare-fun m!5124683 () Bool)

(assert (=> b!4437215 m!5124683))

(declare-fun m!5124685 () Bool)

(assert (=> b!4437215 m!5124685))

(declare-fun m!5124687 () Bool)

(assert (=> b!4437215 m!5124687))

(assert (=> b!4437215 m!5124687))

(assert (=> b!4437215 m!5124671))

(declare-fun m!5124689 () Bool)

(assert (=> bm!308777 m!5124689))

(declare-fun m!5124691 () Bool)

(assert (=> b!4437217 m!5124691))

(declare-fun m!5124693 () Bool)

(assert (=> b!4437214 m!5124693))

(declare-fun m!5124695 () Bool)

(assert (=> bm!308778 m!5124695))

(declare-fun m!5124697 () Bool)

(assert (=> bm!308776 m!5124697))

(assert (=> b!4437125 d!1346731))

(declare-fun d!1346753 () Bool)

(declare-fun res!1836553 () Bool)

(declare-fun e!2762921 () Bool)

(assert (=> d!1346753 (=> res!1836553 e!2762921)))

(assert (=> d!1346753 (= res!1836553 (is-Nil!49726 (toList!3603 lm!1616)))))

(assert (=> d!1346753 (= (forall!9661 (toList!3603 lm!1616) lambda!156425) e!2762921)))

(declare-fun b!4437225 () Bool)

(declare-fun e!2762922 () Bool)

(assert (=> b!4437225 (= e!2762921 e!2762922)))

(declare-fun res!1836554 () Bool)

(assert (=> b!4437225 (=> (not res!1836554) (not e!2762922))))

(declare-fun dynLambda!20893 (Int tuple2!49612) Bool)

(assert (=> b!4437225 (= res!1836554 (dynLambda!20893 lambda!156425 (h!55437 (toList!3603 lm!1616))))))

(declare-fun b!4437226 () Bool)

(assert (=> b!4437226 (= e!2762922 (forall!9661 (t!356792 (toList!3603 lm!1616)) lambda!156425))))

(assert (= (and d!1346753 (not res!1836553)) b!4437225))

(assert (= (and b!4437225 res!1836554) b!4437226))

(declare-fun b_lambda!144679 () Bool)

(assert (=> (not b_lambda!144679) (not b!4437225)))

(declare-fun m!5124699 () Bool)

(assert (=> b!4437225 m!5124699))

(declare-fun m!5124701 () Bool)

(assert (=> b!4437226 m!5124701))

(assert (=> start!433822 d!1346753))

(declare-fun d!1346755 () Bool)

(declare-fun isStrictlySorted!257 (List!49850) Bool)

(assert (=> d!1346755 (= (inv!65280 lm!1616) (isStrictlySorted!257 (toList!3603 lm!1616)))))

(declare-fun bs!762954 () Bool)

(assert (= bs!762954 d!1346755))

(declare-fun m!5124703 () Bool)

(assert (=> bs!762954 m!5124703))

(assert (=> start!433822 d!1346755))

(declare-fun d!1346757 () Bool)

(declare-fun res!1836555 () Bool)

(declare-fun e!2762923 () Bool)

(assert (=> d!1346757 (=> res!1836555 e!2762923)))

(assert (=> d!1346757 (= res!1836555 (is-Nil!49726 (toList!3603 lt!1633897)))))

(assert (=> d!1346757 (= (forall!9661 (toList!3603 lt!1633897) lambda!156425) e!2762923)))

(declare-fun b!4437227 () Bool)

(declare-fun e!2762924 () Bool)

(assert (=> b!4437227 (= e!2762923 e!2762924)))

(declare-fun res!1836556 () Bool)

(assert (=> b!4437227 (=> (not res!1836556) (not e!2762924))))

(assert (=> b!4437227 (= res!1836556 (dynLambda!20893 lambda!156425 (h!55437 (toList!3603 lt!1633897))))))

(declare-fun b!4437228 () Bool)

(assert (=> b!4437228 (= e!2762924 (forall!9661 (t!356792 (toList!3603 lt!1633897)) lambda!156425))))

(assert (= (and d!1346757 (not res!1836555)) b!4437227))

(assert (= (and b!4437227 res!1836556) b!4437228))

(declare-fun b_lambda!144681 () Bool)

(assert (=> (not b_lambda!144681) (not b!4437227)))

(declare-fun m!5124705 () Bool)

(assert (=> b!4437227 m!5124705))

(declare-fun m!5124707 () Bool)

(assert (=> b!4437228 m!5124707))

(assert (=> b!4437127 d!1346757))

(declare-fun d!1346759 () Bool)

(declare-fun e!2762927 () Bool)

(assert (=> d!1346759 e!2762927))

(declare-fun res!1836562 () Bool)

(assert (=> d!1346759 (=> (not res!1836562) (not e!2762927))))

(declare-fun lt!1634029 () ListLongMap!2253)

(assert (=> d!1346759 (= res!1836562 (contains!12277 lt!1634029 (_1!28100 lt!1633898)))))

(declare-fun lt!1634027 () List!49850)

(assert (=> d!1346759 (= lt!1634029 (ListLongMap!2254 lt!1634027))))

(declare-fun lt!1634028 () Unit!83517)

(declare-fun lt!1634030 () Unit!83517)

(assert (=> d!1346759 (= lt!1634028 lt!1634030)))

(declare-datatypes ((Option!10775 0))(
  ( (None!10774) (Some!10774 (v!43996 List!49849)) )
))
(declare-fun getValueByKey!761 (List!49850 (_ BitVec 64)) Option!10775)

(assert (=> d!1346759 (= (getValueByKey!761 lt!1634027 (_1!28100 lt!1633898)) (Some!10774 (_2!28100 lt!1633898)))))

(declare-fun lemmaContainsTupThenGetReturnValue!494 (List!49850 (_ BitVec 64) List!49849) Unit!83517)

(assert (=> d!1346759 (= lt!1634030 (lemmaContainsTupThenGetReturnValue!494 lt!1634027 (_1!28100 lt!1633898) (_2!28100 lt!1633898)))))

(declare-fun insertStrictlySorted!285 (List!49850 (_ BitVec 64) List!49849) List!49850)

(assert (=> d!1346759 (= lt!1634027 (insertStrictlySorted!285 (toList!3603 lm!1616) (_1!28100 lt!1633898) (_2!28100 lt!1633898)))))

(assert (=> d!1346759 (= (+!1182 lm!1616 lt!1633898) lt!1634029)))

(declare-fun b!4437233 () Bool)

(declare-fun res!1836561 () Bool)

(assert (=> b!4437233 (=> (not res!1836561) (not e!2762927))))

(assert (=> b!4437233 (= res!1836561 (= (getValueByKey!761 (toList!3603 lt!1634029) (_1!28100 lt!1633898)) (Some!10774 (_2!28100 lt!1633898))))))

(declare-fun b!4437234 () Bool)

(declare-fun contains!12280 (List!49850 tuple2!49612) Bool)

(assert (=> b!4437234 (= e!2762927 (contains!12280 (toList!3603 lt!1634029) lt!1633898))))

(assert (= (and d!1346759 res!1836562) b!4437233))

(assert (= (and b!4437233 res!1836561) b!4437234))

(declare-fun m!5124709 () Bool)

(assert (=> d!1346759 m!5124709))

(declare-fun m!5124711 () Bool)

(assert (=> d!1346759 m!5124711))

(declare-fun m!5124713 () Bool)

(assert (=> d!1346759 m!5124713))

(declare-fun m!5124715 () Bool)

(assert (=> d!1346759 m!5124715))

(declare-fun m!5124717 () Bool)

(assert (=> b!4437233 m!5124717))

(declare-fun m!5124719 () Bool)

(assert (=> b!4437234 m!5124719))

(assert (=> b!4437127 d!1346759))

(declare-fun d!1346761 () Bool)

(assert (=> d!1346761 (forall!9661 (toList!3603 (+!1182 lm!1616 (tuple2!49613 hash!366 newBucket!194))) lambda!156425)))

(declare-fun lt!1634035 () Unit!83517)

(declare-fun choose!28158 (ListLongMap!2253 Int (_ BitVec 64) List!49849) Unit!83517)

(assert (=> d!1346761 (= lt!1634035 (choose!28158 lm!1616 lambda!156425 hash!366 newBucket!194))))

(declare-fun e!2762930 () Bool)

(assert (=> d!1346761 e!2762930))

(declare-fun res!1836565 () Bool)

(assert (=> d!1346761 (=> (not res!1836565) (not e!2762930))))

(assert (=> d!1346761 (= res!1836565 (forall!9661 (toList!3603 lm!1616) lambda!156425))))

(assert (=> d!1346761 (= (addValidProp!450 lm!1616 lambda!156425 hash!366 newBucket!194) lt!1634035)))

(declare-fun b!4437238 () Bool)

(assert (=> b!4437238 (= e!2762930 (dynLambda!20893 lambda!156425 (tuple2!49613 hash!366 newBucket!194)))))

(assert (= (and d!1346761 res!1836565) b!4437238))

(declare-fun b_lambda!144683 () Bool)

(assert (=> (not b_lambda!144683) (not b!4437238)))

(declare-fun m!5124721 () Bool)

(assert (=> d!1346761 m!5124721))

(declare-fun m!5124723 () Bool)

(assert (=> d!1346761 m!5124723))

(declare-fun m!5124725 () Bool)

(assert (=> d!1346761 m!5124725))

(assert (=> d!1346761 m!5124509))

(declare-fun m!5124727 () Bool)

(assert (=> b!4437238 m!5124727))

(assert (=> b!4437127 d!1346761))

(declare-fun bs!762960 () Bool)

(declare-fun d!1346763 () Bool)

(assert (= bs!762960 (and d!1346763 b!4437218)))

(declare-fun lambda!156479 () Int)

(assert (=> bs!762960 (not (= lambda!156479 lambda!156470))))

(declare-fun bs!762961 () Bool)

(assert (= bs!762961 (and d!1346763 b!4437215)))

(assert (=> bs!762961 (not (= lambda!156479 lambda!156471))))

(assert (=> bs!762961 (not (= lambda!156479 lambda!156472))))

(declare-fun bs!762962 () Bool)

(assert (= bs!762962 (and d!1346763 d!1346731)))

(assert (=> bs!762962 (not (= lambda!156479 lambda!156473))))

(assert (=> d!1346763 true))

(assert (=> d!1346763 true))

(assert (=> d!1346763 (= (allKeysSameHash!768 newBucket!194 hash!366 hashF!1220) (forall!9663 newBucket!194 lambda!156479))))

(declare-fun bs!762963 () Bool)

(assert (= bs!762963 d!1346763))

(declare-fun m!5124741 () Bool)

(assert (=> bs!762963 m!5124741))

(assert (=> b!4437117 d!1346763))

(declare-fun d!1346767 () Bool)

(declare-fun e!2762935 () Bool)

(assert (=> d!1346767 e!2762935))

(declare-fun res!1836568 () Bool)

(assert (=> d!1346767 (=> res!1836568 e!2762935)))

(declare-fun lt!1634046 () Bool)

(assert (=> d!1346767 (= res!1836568 (not lt!1634046))))

(declare-fun lt!1634047 () Bool)

(assert (=> d!1346767 (= lt!1634046 lt!1634047)))

(declare-fun lt!1634048 () Unit!83517)

(declare-fun e!2762936 () Unit!83517)

(assert (=> d!1346767 (= lt!1634048 e!2762936)))

(declare-fun c!755245 () Bool)

(assert (=> d!1346767 (= c!755245 lt!1634047)))

(declare-fun containsKey!1201 (List!49850 (_ BitVec 64)) Bool)

(assert (=> d!1346767 (= lt!1634047 (containsKey!1201 (toList!3603 lm!1616) hash!366))))

(assert (=> d!1346767 (= (contains!12277 lm!1616 hash!366) lt!1634046)))

(declare-fun b!4437249 () Bool)

(declare-fun lt!1634045 () Unit!83517)

(assert (=> b!4437249 (= e!2762936 lt!1634045)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!670 (List!49850 (_ BitVec 64)) Unit!83517)

(assert (=> b!4437249 (= lt!1634045 (lemmaContainsKeyImpliesGetValueByKeyDefined!670 (toList!3603 lm!1616) hash!366))))

(declare-fun isDefined!8067 (Option!10775) Bool)

(assert (=> b!4437249 (isDefined!8067 (getValueByKey!761 (toList!3603 lm!1616) hash!366))))

(declare-fun b!4437250 () Bool)

(declare-fun Unit!83536 () Unit!83517)

(assert (=> b!4437250 (= e!2762936 Unit!83536)))

(declare-fun b!4437251 () Bool)

(assert (=> b!4437251 (= e!2762935 (isDefined!8067 (getValueByKey!761 (toList!3603 lm!1616) hash!366)))))

(assert (= (and d!1346767 c!755245) b!4437249))

(assert (= (and d!1346767 (not c!755245)) b!4437250))

(assert (= (and d!1346767 (not res!1836568)) b!4437251))

(declare-fun m!5124743 () Bool)

(assert (=> d!1346767 m!5124743))

(declare-fun m!5124745 () Bool)

(assert (=> b!4437249 m!5124745))

(declare-fun m!5124747 () Bool)

(assert (=> b!4437249 m!5124747))

(assert (=> b!4437249 m!5124747))

(declare-fun m!5124749 () Bool)

(assert (=> b!4437249 m!5124749))

(assert (=> b!4437251 m!5124747))

(assert (=> b!4437251 m!5124747))

(assert (=> b!4437251 m!5124749))

(assert (=> b!4437128 d!1346767))

(declare-fun d!1346769 () Bool)

(declare-fun res!1836573 () Bool)

(declare-fun e!2762941 () Bool)

(assert (=> d!1346769 (=> res!1836573 e!2762941)))

(assert (=> d!1346769 (= res!1836573 (not (is-Cons!49725 newBucket!194)))))

(assert (=> d!1346769 (= (noDuplicateKeys!808 newBucket!194) e!2762941)))

(declare-fun b!4437256 () Bool)

(declare-fun e!2762942 () Bool)

(assert (=> b!4437256 (= e!2762941 e!2762942)))

(declare-fun res!1836574 () Bool)

(assert (=> b!4437256 (=> (not res!1836574) (not e!2762942))))

(declare-fun containsKey!1202 (List!49849 K!11093) Bool)

(assert (=> b!4437256 (= res!1836574 (not (containsKey!1202 (t!356791 newBucket!194) (_1!28099 (h!55436 newBucket!194)))))))

(declare-fun b!4437257 () Bool)

(assert (=> b!4437257 (= e!2762942 (noDuplicateKeys!808 (t!356791 newBucket!194)))))

(assert (= (and d!1346769 (not res!1836573)) b!4437256))

(assert (= (and b!4437256 res!1836574) b!4437257))

(declare-fun m!5124751 () Bool)

(assert (=> b!4437256 m!5124751))

(declare-fun m!5124753 () Bool)

(assert (=> b!4437257 m!5124753))

(assert (=> b!4437118 d!1346769))

(declare-fun d!1346771 () Bool)

(assert (=> d!1346771 (= (eq!440 lt!1633899 (+!1183 lt!1633903 (tuple2!49611 key!3717 newValue!93))) (= (content!8001 (toList!3604 lt!1633899)) (content!8001 (toList!3604 (+!1183 lt!1633903 (tuple2!49611 key!3717 newValue!93))))))))

(declare-fun bs!762964 () Bool)

(assert (= bs!762964 d!1346771))

(declare-fun m!5124755 () Bool)

(assert (=> bs!762964 m!5124755))

(declare-fun m!5124757 () Bool)

(assert (=> bs!762964 m!5124757))

(assert (=> b!4437130 d!1346771))

(declare-fun bs!762972 () Bool)

(declare-fun d!1346773 () Bool)

(assert (= bs!762972 (and d!1346773 start!433822)))

(declare-fun lambda!156483 () Int)

(assert (=> bs!762972 (= lambda!156483 lambda!156425)))

(assert (=> d!1346773 (eq!440 (extractMap!869 (toList!3603 (+!1182 lt!1633902 (tuple2!49613 hash!366 newBucket!194)))) (+!1183 (extractMap!869 (toList!3603 lt!1633902)) (tuple2!49611 key!3717 newValue!93)))))

(declare-fun lt!1634064 () Unit!83517)

(declare-fun choose!28159 (ListLongMap!2253 (_ BitVec 64) List!49849 K!11093 V!11339 Hashable!5202) Unit!83517)

(assert (=> d!1346773 (= lt!1634064 (choose!28159 lt!1633902 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(assert (=> d!1346773 (forall!9661 (toList!3603 lt!1633902) lambda!156483)))

(assert (=> d!1346773 (= (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!150 lt!1633902 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220) lt!1634064)))

(declare-fun bs!762973 () Bool)

(assert (= bs!762973 d!1346773))

(declare-fun m!5124781 () Bool)

(assert (=> bs!762973 m!5124781))

(declare-fun m!5124783 () Bool)

(assert (=> bs!762973 m!5124783))

(declare-fun m!5124785 () Bool)

(assert (=> bs!762973 m!5124785))

(assert (=> bs!762973 m!5124541))

(declare-fun m!5124787 () Bool)

(assert (=> bs!762973 m!5124787))

(assert (=> bs!762973 m!5124541))

(declare-fun m!5124789 () Bool)

(assert (=> bs!762973 m!5124789))

(assert (=> bs!762973 m!5124787))

(assert (=> bs!762973 m!5124789))

(declare-fun m!5124791 () Bool)

(assert (=> bs!762973 m!5124791))

(assert (=> b!4437130 d!1346773))

(declare-fun d!1346785 () Bool)

(declare-fun e!2762947 () Bool)

(assert (=> d!1346785 e!2762947))

(declare-fun res!1836582 () Bool)

(assert (=> d!1346785 (=> (not res!1836582) (not e!2762947))))

(declare-fun lt!1634067 () ListLongMap!2253)

(assert (=> d!1346785 (= res!1836582 (contains!12277 lt!1634067 (_1!28100 lt!1633898)))))

(declare-fun lt!1634065 () List!49850)

(assert (=> d!1346785 (= lt!1634067 (ListLongMap!2254 lt!1634065))))

(declare-fun lt!1634066 () Unit!83517)

(declare-fun lt!1634068 () Unit!83517)

(assert (=> d!1346785 (= lt!1634066 lt!1634068)))

(assert (=> d!1346785 (= (getValueByKey!761 lt!1634065 (_1!28100 lt!1633898)) (Some!10774 (_2!28100 lt!1633898)))))

(assert (=> d!1346785 (= lt!1634068 (lemmaContainsTupThenGetReturnValue!494 lt!1634065 (_1!28100 lt!1633898) (_2!28100 lt!1633898)))))

(assert (=> d!1346785 (= lt!1634065 (insertStrictlySorted!285 (toList!3603 lt!1633902) (_1!28100 lt!1633898) (_2!28100 lt!1633898)))))

(assert (=> d!1346785 (= (+!1182 lt!1633902 lt!1633898) lt!1634067)))

(declare-fun b!4437266 () Bool)

(declare-fun res!1836581 () Bool)

(assert (=> b!4437266 (=> (not res!1836581) (not e!2762947))))

(assert (=> b!4437266 (= res!1836581 (= (getValueByKey!761 (toList!3603 lt!1634067) (_1!28100 lt!1633898)) (Some!10774 (_2!28100 lt!1633898))))))

(declare-fun b!4437267 () Bool)

(assert (=> b!4437267 (= e!2762947 (contains!12280 (toList!3603 lt!1634067) lt!1633898))))

(assert (= (and d!1346785 res!1836582) b!4437266))

(assert (= (and b!4437266 res!1836581) b!4437267))

(declare-fun m!5124793 () Bool)

(assert (=> d!1346785 m!5124793))

(declare-fun m!5124795 () Bool)

(assert (=> d!1346785 m!5124795))

(declare-fun m!5124797 () Bool)

(assert (=> d!1346785 m!5124797))

(declare-fun m!5124799 () Bool)

(assert (=> d!1346785 m!5124799))

(declare-fun m!5124801 () Bool)

(assert (=> b!4437266 m!5124801))

(declare-fun m!5124803 () Bool)

(assert (=> b!4437267 m!5124803))

(assert (=> b!4437130 d!1346785))

(declare-fun bs!762974 () Bool)

(declare-fun d!1346787 () Bool)

(assert (= bs!762974 (and d!1346787 start!433822)))

(declare-fun lambda!156486 () Int)

(assert (=> bs!762974 (= lambda!156486 lambda!156425)))

(declare-fun bs!762975 () Bool)

(assert (= bs!762975 (and d!1346787 d!1346773)))

(assert (=> bs!762975 (= lambda!156486 lambda!156483)))

(declare-fun lt!1634071 () ListMap!2847)

(assert (=> d!1346787 (invariantList!830 (toList!3604 lt!1634071))))

(declare-fun e!2762950 () ListMap!2847)

(assert (=> d!1346787 (= lt!1634071 e!2762950)))

(declare-fun c!755249 () Bool)

(assert (=> d!1346787 (= c!755249 (is-Cons!49726 (toList!3603 lt!1633902)))))

(assert (=> d!1346787 (forall!9661 (toList!3603 lt!1633902) lambda!156486)))

(assert (=> d!1346787 (= (extractMap!869 (toList!3603 lt!1633902)) lt!1634071)))

(declare-fun b!4437272 () Bool)

(assert (=> b!4437272 (= e!2762950 (addToMapMapFromBucket!429 (_2!28100 (h!55437 (toList!3603 lt!1633902))) (extractMap!869 (t!356792 (toList!3603 lt!1633902)))))))

(declare-fun b!4437273 () Bool)

(assert (=> b!4437273 (= e!2762950 (ListMap!2848 Nil!49725))))

(assert (= (and d!1346787 c!755249) b!4437272))

(assert (= (and d!1346787 (not c!755249)) b!4437273))

(declare-fun m!5124805 () Bool)

(assert (=> d!1346787 m!5124805))

(declare-fun m!5124807 () Bool)

(assert (=> d!1346787 m!5124807))

(declare-fun m!5124809 () Bool)

(assert (=> b!4437272 m!5124809))

(assert (=> b!4437272 m!5124809))

(declare-fun m!5124811 () Bool)

(assert (=> b!4437272 m!5124811))

(assert (=> b!4437130 d!1346787))

(declare-fun d!1346789 () Bool)

(declare-fun e!2762965 () Bool)

(assert (=> d!1346789 e!2762965))

(declare-fun res!1836594 () Bool)

(assert (=> d!1346789 (=> (not res!1836594) (not e!2762965))))

(declare-fun lt!1634099 () ListMap!2847)

(assert (=> d!1346789 (= res!1836594 (contains!12276 lt!1634099 (_1!28099 (tuple2!49611 key!3717 newValue!93))))))

(declare-fun lt!1634096 () List!49849)

(assert (=> d!1346789 (= lt!1634099 (ListMap!2848 lt!1634096))))

(declare-fun lt!1634097 () Unit!83517)

(declare-fun lt!1634098 () Unit!83517)

(assert (=> d!1346789 (= lt!1634097 lt!1634098)))

(declare-datatypes ((Option!10776 0))(
  ( (None!10775) (Some!10775 (v!43997 V!11339)) )
))
(declare-fun getValueByKey!762 (List!49849 K!11093) Option!10776)

(assert (=> d!1346789 (= (getValueByKey!762 lt!1634096 (_1!28099 (tuple2!49611 key!3717 newValue!93))) (Some!10775 (_2!28099 (tuple2!49611 key!3717 newValue!93))))))

(declare-fun lemmaContainsTupThenGetReturnValue!495 (List!49849 K!11093 V!11339) Unit!83517)

(assert (=> d!1346789 (= lt!1634098 (lemmaContainsTupThenGetReturnValue!495 lt!1634096 (_1!28099 (tuple2!49611 key!3717 newValue!93)) (_2!28099 (tuple2!49611 key!3717 newValue!93))))))

(declare-fun insertNoDuplicatedKeys!218 (List!49849 K!11093 V!11339) List!49849)

(assert (=> d!1346789 (= lt!1634096 (insertNoDuplicatedKeys!218 (toList!3604 lt!1633903) (_1!28099 (tuple2!49611 key!3717 newValue!93)) (_2!28099 (tuple2!49611 key!3717 newValue!93))))))

(assert (=> d!1346789 (= (+!1183 lt!1633903 (tuple2!49611 key!3717 newValue!93)) lt!1634099)))

(declare-fun b!4437296 () Bool)

(declare-fun res!1836593 () Bool)

(assert (=> b!4437296 (=> (not res!1836593) (not e!2762965))))

(assert (=> b!4437296 (= res!1836593 (= (getValueByKey!762 (toList!3604 lt!1634099) (_1!28099 (tuple2!49611 key!3717 newValue!93))) (Some!10775 (_2!28099 (tuple2!49611 key!3717 newValue!93)))))))

(declare-fun b!4437297 () Bool)

(declare-fun contains!12281 (List!49849 tuple2!49610) Bool)

(assert (=> b!4437297 (= e!2762965 (contains!12281 (toList!3604 lt!1634099) (tuple2!49611 key!3717 newValue!93)))))

(assert (= (and d!1346789 res!1836594) b!4437296))

(assert (= (and b!4437296 res!1836593) b!4437297))

(declare-fun m!5124813 () Bool)

(assert (=> d!1346789 m!5124813))

(declare-fun m!5124815 () Bool)

(assert (=> d!1346789 m!5124815))

(declare-fun m!5124817 () Bool)

(assert (=> d!1346789 m!5124817))

(declare-fun m!5124819 () Bool)

(assert (=> d!1346789 m!5124819))

(declare-fun m!5124821 () Bool)

(assert (=> b!4437296 m!5124821))

(declare-fun m!5124823 () Bool)

(assert (=> b!4437297 m!5124823))

(assert (=> b!4437130 d!1346789))

(declare-fun bs!762976 () Bool)

(declare-fun d!1346791 () Bool)

(assert (= bs!762976 (and d!1346791 start!433822)))

(declare-fun lambda!156487 () Int)

(assert (=> bs!762976 (= lambda!156487 lambda!156425)))

(declare-fun bs!762977 () Bool)

(assert (= bs!762977 (and d!1346791 d!1346773)))

(assert (=> bs!762977 (= lambda!156487 lambda!156483)))

(declare-fun bs!762978 () Bool)

(assert (= bs!762978 (and d!1346791 d!1346787)))

(assert (=> bs!762978 (= lambda!156487 lambda!156486)))

(declare-fun lt!1634100 () ListMap!2847)

(assert (=> d!1346791 (invariantList!830 (toList!3604 lt!1634100))))

(declare-fun e!2762966 () ListMap!2847)

(assert (=> d!1346791 (= lt!1634100 e!2762966)))

(declare-fun c!755256 () Bool)

(assert (=> d!1346791 (= c!755256 (is-Cons!49726 (toList!3603 (+!1182 lt!1633902 lt!1633898))))))

(assert (=> d!1346791 (forall!9661 (toList!3603 (+!1182 lt!1633902 lt!1633898)) lambda!156487)))

(assert (=> d!1346791 (= (extractMap!869 (toList!3603 (+!1182 lt!1633902 lt!1633898))) lt!1634100)))

(declare-fun b!4437298 () Bool)

(assert (=> b!4437298 (= e!2762966 (addToMapMapFromBucket!429 (_2!28100 (h!55437 (toList!3603 (+!1182 lt!1633902 lt!1633898)))) (extractMap!869 (t!356792 (toList!3603 (+!1182 lt!1633902 lt!1633898))))))))

(declare-fun b!4437299 () Bool)

(assert (=> b!4437299 (= e!2762966 (ListMap!2848 Nil!49725))))

(assert (= (and d!1346791 c!755256) b!4437298))

(assert (= (and d!1346791 (not c!755256)) b!4437299))

(declare-fun m!5124825 () Bool)

(assert (=> d!1346791 m!5124825))

(declare-fun m!5124827 () Bool)

(assert (=> d!1346791 m!5124827))

(declare-fun m!5124829 () Bool)

(assert (=> b!4437298 m!5124829))

(assert (=> b!4437298 m!5124829))

(declare-fun m!5124831 () Bool)

(assert (=> b!4437298 m!5124831))

(assert (=> b!4437130 d!1346791))

(declare-fun d!1346793 () Bool)

(declare-fun head!9273 (List!49850) tuple2!49612)

(assert (=> d!1346793 (= (head!9271 lm!1616) (head!9273 (toList!3603 lm!1616)))))

(declare-fun bs!762979 () Bool)

(assert (= bs!762979 d!1346793))

(declare-fun m!5124833 () Bool)

(assert (=> bs!762979 m!5124833))

(assert (=> b!4437130 d!1346793))

(declare-fun d!1346795 () Bool)

(assert (=> d!1346795 (= (tail!7338 lm!1616) (ListLongMap!2254 (tail!7339 (toList!3603 lm!1616))))))

(declare-fun bs!762980 () Bool)

(assert (= bs!762980 d!1346795))

(assert (=> bs!762980 m!5124537))

(assert (=> b!4437130 d!1346795))

(declare-fun bs!762981 () Bool)

(declare-fun d!1346797 () Bool)

(assert (= bs!762981 (and d!1346797 start!433822)))

(declare-fun lambda!156488 () Int)

(assert (=> bs!762981 (= lambda!156488 lambda!156425)))

(declare-fun bs!762982 () Bool)

(assert (= bs!762982 (and d!1346797 d!1346773)))

(assert (=> bs!762982 (= lambda!156488 lambda!156483)))

(declare-fun bs!762983 () Bool)

(assert (= bs!762983 (and d!1346797 d!1346787)))

(assert (=> bs!762983 (= lambda!156488 lambda!156486)))

(declare-fun bs!762984 () Bool)

(assert (= bs!762984 (and d!1346797 d!1346791)))

(assert (=> bs!762984 (= lambda!156488 lambda!156487)))

(declare-fun lt!1634109 () ListMap!2847)

(assert (=> d!1346797 (invariantList!830 (toList!3604 lt!1634109))))

(declare-fun e!2762973 () ListMap!2847)

(assert (=> d!1346797 (= lt!1634109 e!2762973)))

(declare-fun c!755260 () Bool)

(assert (=> d!1346797 (= c!755260 (is-Cons!49726 (tail!7339 (toList!3603 lm!1616))))))

(assert (=> d!1346797 (forall!9661 (tail!7339 (toList!3603 lm!1616)) lambda!156488)))

(assert (=> d!1346797 (= (extractMap!869 (tail!7339 (toList!3603 lm!1616))) lt!1634109)))

(declare-fun b!4437309 () Bool)

(assert (=> b!4437309 (= e!2762973 (addToMapMapFromBucket!429 (_2!28100 (h!55437 (tail!7339 (toList!3603 lm!1616)))) (extractMap!869 (t!356792 (tail!7339 (toList!3603 lm!1616))))))))

(declare-fun b!4437310 () Bool)

(assert (=> b!4437310 (= e!2762973 (ListMap!2848 Nil!49725))))

(assert (= (and d!1346797 c!755260) b!4437309))

(assert (= (and d!1346797 (not c!755260)) b!4437310))

(declare-fun m!5124845 () Bool)

(assert (=> d!1346797 m!5124845))

(assert (=> d!1346797 m!5124537))

(declare-fun m!5124848 () Bool)

(assert (=> d!1346797 m!5124848))

(declare-fun m!5124851 () Bool)

(assert (=> b!4437309 m!5124851))

(assert (=> b!4437309 m!5124851))

(declare-fun m!5124855 () Bool)

(assert (=> b!4437309 m!5124855))

(assert (=> b!4437130 d!1346797))

(declare-fun d!1346799 () Bool)

(assert (=> d!1346799 (= (tail!7339 (toList!3603 lm!1616)) (t!356792 (toList!3603 lm!1616)))))

(assert (=> b!4437130 d!1346799))

(declare-fun b!4437347 () Bool)

(declare-fun e!2762998 () Unit!83517)

(declare-fun Unit!83537 () Unit!83517)

(assert (=> b!4437347 (= e!2762998 Unit!83537)))

(declare-fun b!4437348 () Bool)

(declare-fun e!2762999 () Bool)

(declare-datatypes ((List!49853 0))(
  ( (Nil!49729) (Cons!49729 (h!55442 K!11093) (t!356795 List!49853)) )
))
(declare-fun contains!12282 (List!49853 K!11093) Bool)

(declare-fun keys!17017 (ListMap!2847) List!49853)

(assert (=> b!4437348 (= e!2762999 (contains!12282 (keys!17017 (extractMap!869 (tail!7339 (toList!3603 lm!1616)))) key!3717))))

(declare-fun bm!308785 () Bool)

(declare-fun call!308790 () Bool)

(declare-fun e!2762997 () List!49853)

(assert (=> bm!308785 (= call!308790 (contains!12282 e!2762997 key!3717))))

(declare-fun c!755272 () Bool)

(declare-fun c!755271 () Bool)

(assert (=> bm!308785 (= c!755272 c!755271)))

(declare-fun b!4437349 () Bool)

(declare-fun getKeysList!277 (List!49849) List!49853)

(assert (=> b!4437349 (= e!2762997 (getKeysList!277 (toList!3604 (extractMap!869 (tail!7339 (toList!3603 lm!1616))))))))

(declare-fun b!4437350 () Bool)

(declare-fun e!2763000 () Unit!83517)

(declare-fun lt!1634141 () Unit!83517)

(assert (=> b!4437350 (= e!2763000 lt!1634141)))

(declare-fun lt!1634145 () Unit!83517)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!671 (List!49849 K!11093) Unit!83517)

(assert (=> b!4437350 (= lt!1634145 (lemmaContainsKeyImpliesGetValueByKeyDefined!671 (toList!3604 (extractMap!869 (tail!7339 (toList!3603 lm!1616)))) key!3717))))

(declare-fun isDefined!8068 (Option!10776) Bool)

(assert (=> b!4437350 (isDefined!8068 (getValueByKey!762 (toList!3604 (extractMap!869 (tail!7339 (toList!3603 lm!1616)))) key!3717))))

(declare-fun lt!1634142 () Unit!83517)

(assert (=> b!4437350 (= lt!1634142 lt!1634145)))

(declare-fun lemmaInListThenGetKeysListContains!274 (List!49849 K!11093) Unit!83517)

(assert (=> b!4437350 (= lt!1634141 (lemmaInListThenGetKeysListContains!274 (toList!3604 (extractMap!869 (tail!7339 (toList!3603 lm!1616)))) key!3717))))

(assert (=> b!4437350 call!308790))

(declare-fun b!4437351 () Bool)

(declare-fun e!2762996 () Bool)

(assert (=> b!4437351 (= e!2762996 e!2762999)))

(declare-fun res!1836611 () Bool)

(assert (=> b!4437351 (=> (not res!1836611) (not e!2762999))))

(assert (=> b!4437351 (= res!1836611 (isDefined!8068 (getValueByKey!762 (toList!3604 (extractMap!869 (tail!7339 (toList!3603 lm!1616)))) key!3717)))))

(declare-fun d!1346803 () Bool)

(assert (=> d!1346803 e!2762996))

(declare-fun res!1836610 () Bool)

(assert (=> d!1346803 (=> res!1836610 e!2762996)))

(declare-fun e!2762995 () Bool)

(assert (=> d!1346803 (= res!1836610 e!2762995)))

(declare-fun res!1836609 () Bool)

(assert (=> d!1346803 (=> (not res!1836609) (not e!2762995))))

(declare-fun lt!1634144 () Bool)

(assert (=> d!1346803 (= res!1836609 (not lt!1634144))))

(declare-fun lt!1634139 () Bool)

(assert (=> d!1346803 (= lt!1634144 lt!1634139)))

(declare-fun lt!1634143 () Unit!83517)

(assert (=> d!1346803 (= lt!1634143 e!2763000)))

(assert (=> d!1346803 (= c!755271 lt!1634139)))

(declare-fun containsKey!1203 (List!49849 K!11093) Bool)

(assert (=> d!1346803 (= lt!1634139 (containsKey!1203 (toList!3604 (extractMap!869 (tail!7339 (toList!3603 lm!1616)))) key!3717))))

(assert (=> d!1346803 (= (contains!12276 (extractMap!869 (tail!7339 (toList!3603 lm!1616))) key!3717) lt!1634144)))

(declare-fun b!4437346 () Bool)

(assert (=> b!4437346 (= e!2762995 (not (contains!12282 (keys!17017 (extractMap!869 (tail!7339 (toList!3603 lm!1616)))) key!3717)))))

(declare-fun b!4437352 () Bool)

(assert (=> b!4437352 (= e!2763000 e!2762998)))

(declare-fun c!755273 () Bool)

(assert (=> b!4437352 (= c!755273 call!308790)))

(declare-fun b!4437353 () Bool)

(assert (=> b!4437353 false))

(declare-fun lt!1634140 () Unit!83517)

(declare-fun lt!1634138 () Unit!83517)

(assert (=> b!4437353 (= lt!1634140 lt!1634138)))

(assert (=> b!4437353 (containsKey!1203 (toList!3604 (extractMap!869 (tail!7339 (toList!3603 lm!1616)))) key!3717)))

(declare-fun lemmaInGetKeysListThenContainsKey!275 (List!49849 K!11093) Unit!83517)

(assert (=> b!4437353 (= lt!1634138 (lemmaInGetKeysListThenContainsKey!275 (toList!3604 (extractMap!869 (tail!7339 (toList!3603 lm!1616)))) key!3717))))

(declare-fun Unit!83538 () Unit!83517)

(assert (=> b!4437353 (= e!2762998 Unit!83538)))

(declare-fun b!4437354 () Bool)

(assert (=> b!4437354 (= e!2762997 (keys!17017 (extractMap!869 (tail!7339 (toList!3603 lm!1616)))))))

(assert (= (and d!1346803 c!755271) b!4437350))

(assert (= (and d!1346803 (not c!755271)) b!4437352))

(assert (= (and b!4437352 c!755273) b!4437353))

(assert (= (and b!4437352 (not c!755273)) b!4437347))

(assert (= (or b!4437350 b!4437352) bm!308785))

(assert (= (and bm!308785 c!755272) b!4437349))

(assert (= (and bm!308785 (not c!755272)) b!4437354))

(assert (= (and d!1346803 res!1836609) b!4437346))

(assert (= (and d!1346803 (not res!1836610)) b!4437351))

(assert (= (and b!4437351 res!1836611) b!4437348))

(assert (=> b!4437354 m!5124539))

(declare-fun m!5124911 () Bool)

(assert (=> b!4437354 m!5124911))

(declare-fun m!5124915 () Bool)

(assert (=> b!4437351 m!5124915))

(assert (=> b!4437351 m!5124915))

(declare-fun m!5124919 () Bool)

(assert (=> b!4437351 m!5124919))

(declare-fun m!5124921 () Bool)

(assert (=> b!4437349 m!5124921))

(declare-fun m!5124923 () Bool)

(assert (=> d!1346803 m!5124923))

(declare-fun m!5124925 () Bool)

(assert (=> bm!308785 m!5124925))

(assert (=> b!4437346 m!5124539))

(assert (=> b!4437346 m!5124911))

(assert (=> b!4437346 m!5124911))

(declare-fun m!5124927 () Bool)

(assert (=> b!4437346 m!5124927))

(declare-fun m!5124929 () Bool)

(assert (=> b!4437350 m!5124929))

(assert (=> b!4437350 m!5124915))

(assert (=> b!4437350 m!5124915))

(assert (=> b!4437350 m!5124919))

(declare-fun m!5124931 () Bool)

(assert (=> b!4437350 m!5124931))

(assert (=> b!4437348 m!5124539))

(assert (=> b!4437348 m!5124911))

(assert (=> b!4437348 m!5124911))

(assert (=> b!4437348 m!5124927))

(assert (=> b!4437353 m!5124923))

(declare-fun m!5124933 () Bool)

(assert (=> b!4437353 m!5124933))

(assert (=> b!4437130 d!1346803))

(declare-fun b!4437358 () Bool)

(declare-fun e!2763005 () Unit!83517)

(declare-fun Unit!83539 () Unit!83517)

(assert (=> b!4437358 (= e!2763005 Unit!83539)))

(declare-fun b!4437359 () Bool)

(declare-fun e!2763006 () Bool)

(assert (=> b!4437359 (= e!2763006 (contains!12282 (keys!17017 lt!1633906) key!3717))))

(declare-fun bm!308786 () Bool)

(declare-fun call!308791 () Bool)

(declare-fun e!2763004 () List!49853)

(assert (=> bm!308786 (= call!308791 (contains!12282 e!2763004 key!3717))))

(declare-fun c!755275 () Bool)

(declare-fun c!755274 () Bool)

(assert (=> bm!308786 (= c!755275 c!755274)))

(declare-fun b!4437360 () Bool)

(assert (=> b!4437360 (= e!2763004 (getKeysList!277 (toList!3604 lt!1633906)))))

(declare-fun b!4437361 () Bool)

(declare-fun e!2763007 () Unit!83517)

(declare-fun lt!1634153 () Unit!83517)

(assert (=> b!4437361 (= e!2763007 lt!1634153)))

(declare-fun lt!1634157 () Unit!83517)

(assert (=> b!4437361 (= lt!1634157 (lemmaContainsKeyImpliesGetValueByKeyDefined!671 (toList!3604 lt!1633906) key!3717))))

(assert (=> b!4437361 (isDefined!8068 (getValueByKey!762 (toList!3604 lt!1633906) key!3717))))

(declare-fun lt!1634154 () Unit!83517)

(assert (=> b!4437361 (= lt!1634154 lt!1634157)))

(assert (=> b!4437361 (= lt!1634153 (lemmaInListThenGetKeysListContains!274 (toList!3604 lt!1633906) key!3717))))

(assert (=> b!4437361 call!308791))

(declare-fun b!4437362 () Bool)

(declare-fun e!2763003 () Bool)

(assert (=> b!4437362 (= e!2763003 e!2763006)))

(declare-fun res!1836616 () Bool)

(assert (=> b!4437362 (=> (not res!1836616) (not e!2763006))))

(assert (=> b!4437362 (= res!1836616 (isDefined!8068 (getValueByKey!762 (toList!3604 lt!1633906) key!3717)))))

(declare-fun d!1346817 () Bool)

(assert (=> d!1346817 e!2763003))

(declare-fun res!1836615 () Bool)

(assert (=> d!1346817 (=> res!1836615 e!2763003)))

(declare-fun e!2763002 () Bool)

(assert (=> d!1346817 (= res!1836615 e!2763002)))

(declare-fun res!1836614 () Bool)

(assert (=> d!1346817 (=> (not res!1836614) (not e!2763002))))

(declare-fun lt!1634156 () Bool)

(assert (=> d!1346817 (= res!1836614 (not lt!1634156))))

(declare-fun lt!1634151 () Bool)

(assert (=> d!1346817 (= lt!1634156 lt!1634151)))

(declare-fun lt!1634155 () Unit!83517)

(assert (=> d!1346817 (= lt!1634155 e!2763007)))

(assert (=> d!1346817 (= c!755274 lt!1634151)))

(assert (=> d!1346817 (= lt!1634151 (containsKey!1203 (toList!3604 lt!1633906) key!3717))))

(assert (=> d!1346817 (= (contains!12276 lt!1633906 key!3717) lt!1634156)))

(declare-fun b!4437357 () Bool)

(assert (=> b!4437357 (= e!2763002 (not (contains!12282 (keys!17017 lt!1633906) key!3717)))))

(declare-fun b!4437363 () Bool)

(assert (=> b!4437363 (= e!2763007 e!2763005)))

(declare-fun c!755276 () Bool)

(assert (=> b!4437363 (= c!755276 call!308791)))

(declare-fun b!4437364 () Bool)

(assert (=> b!4437364 false))

(declare-fun lt!1634152 () Unit!83517)

(declare-fun lt!1634150 () Unit!83517)

(assert (=> b!4437364 (= lt!1634152 lt!1634150)))

(assert (=> b!4437364 (containsKey!1203 (toList!3604 lt!1633906) key!3717)))

(assert (=> b!4437364 (= lt!1634150 (lemmaInGetKeysListThenContainsKey!275 (toList!3604 lt!1633906) key!3717))))

(declare-fun Unit!83540 () Unit!83517)

(assert (=> b!4437364 (= e!2763005 Unit!83540)))

(declare-fun b!4437365 () Bool)

(assert (=> b!4437365 (= e!2763004 (keys!17017 lt!1633906))))

(assert (= (and d!1346817 c!755274) b!4437361))

(assert (= (and d!1346817 (not c!755274)) b!4437363))

(assert (= (and b!4437363 c!755276) b!4437364))

(assert (= (and b!4437363 (not c!755276)) b!4437358))

(assert (= (or b!4437361 b!4437363) bm!308786))

(assert (= (and bm!308786 c!755275) b!4437360))

(assert (= (and bm!308786 (not c!755275)) b!4437365))

(assert (= (and d!1346817 res!1836614) b!4437357))

(assert (= (and d!1346817 (not res!1836615)) b!4437362))

(assert (= (and b!4437362 res!1836616) b!4437359))

(declare-fun m!5124935 () Bool)

(assert (=> b!4437365 m!5124935))

(declare-fun m!5124937 () Bool)

(assert (=> b!4437362 m!5124937))

(assert (=> b!4437362 m!5124937))

(declare-fun m!5124939 () Bool)

(assert (=> b!4437362 m!5124939))

(declare-fun m!5124941 () Bool)

(assert (=> b!4437360 m!5124941))

(declare-fun m!5124943 () Bool)

(assert (=> d!1346817 m!5124943))

(declare-fun m!5124945 () Bool)

(assert (=> bm!308786 m!5124945))

(assert (=> b!4437357 m!5124935))

(assert (=> b!4437357 m!5124935))

(declare-fun m!5124947 () Bool)

(assert (=> b!4437357 m!5124947))

(declare-fun m!5124949 () Bool)

(assert (=> b!4437361 m!5124949))

(assert (=> b!4437361 m!5124937))

(assert (=> b!4437361 m!5124937))

(assert (=> b!4437361 m!5124939))

(declare-fun m!5124951 () Bool)

(assert (=> b!4437361 m!5124951))

(assert (=> b!4437359 m!5124935))

(assert (=> b!4437359 m!5124935))

(assert (=> b!4437359 m!5124947))

(assert (=> b!4437364 m!5124943))

(declare-fun m!5124953 () Bool)

(assert (=> b!4437364 m!5124953))

(assert (=> b!4437120 d!1346817))

(declare-fun bs!763000 () Bool)

(declare-fun d!1346819 () Bool)

(assert (= bs!763000 (and d!1346819 start!433822)))

(declare-fun lambda!156496 () Int)

(assert (=> bs!763000 (= lambda!156496 lambda!156425)))

(declare-fun bs!763001 () Bool)

(assert (= bs!763001 (and d!1346819 d!1346787)))

(assert (=> bs!763001 (= lambda!156496 lambda!156486)))

(declare-fun bs!763002 () Bool)

(assert (= bs!763002 (and d!1346819 d!1346797)))

(assert (=> bs!763002 (= lambda!156496 lambda!156488)))

(declare-fun bs!763003 () Bool)

(assert (= bs!763003 (and d!1346819 d!1346791)))

(assert (=> bs!763003 (= lambda!156496 lambda!156487)))

(declare-fun bs!763004 () Bool)

(assert (= bs!763004 (and d!1346819 d!1346773)))

(assert (=> bs!763004 (= lambda!156496 lambda!156483)))

(declare-fun lt!1634158 () ListMap!2847)

(assert (=> d!1346819 (invariantList!830 (toList!3604 lt!1634158))))

(declare-fun e!2763008 () ListMap!2847)

(assert (=> d!1346819 (= lt!1634158 e!2763008)))

(declare-fun c!755277 () Bool)

(assert (=> d!1346819 (= c!755277 (is-Cons!49726 (toList!3603 lm!1616)))))

(assert (=> d!1346819 (forall!9661 (toList!3603 lm!1616) lambda!156496)))

(assert (=> d!1346819 (= (extractMap!869 (toList!3603 lm!1616)) lt!1634158)))

(declare-fun b!4437366 () Bool)

(assert (=> b!4437366 (= e!2763008 (addToMapMapFromBucket!429 (_2!28100 (h!55437 (toList!3603 lm!1616))) (extractMap!869 (t!356792 (toList!3603 lm!1616)))))))

(declare-fun b!4437367 () Bool)

(assert (=> b!4437367 (= e!2763008 (ListMap!2848 Nil!49725))))

(assert (= (and d!1346819 c!755277) b!4437366))

(assert (= (and d!1346819 (not c!755277)) b!4437367))

(declare-fun m!5124955 () Bool)

(assert (=> d!1346819 m!5124955))

(declare-fun m!5124957 () Bool)

(assert (=> d!1346819 m!5124957))

(declare-fun m!5124959 () Bool)

(assert (=> b!4437366 m!5124959))

(assert (=> b!4437366 m!5124959))

(declare-fun m!5124961 () Bool)

(assert (=> b!4437366 m!5124961))

(assert (=> b!4437120 d!1346819))

(declare-fun bs!763005 () Bool)

(declare-fun d!1346821 () Bool)

(assert (= bs!763005 (and d!1346821 start!433822)))

(declare-fun lambda!156499 () Int)

(assert (=> bs!763005 (not (= lambda!156499 lambda!156425))))

(declare-fun bs!763006 () Bool)

(assert (= bs!763006 (and d!1346821 d!1346787)))

(assert (=> bs!763006 (not (= lambda!156499 lambda!156486))))

(declare-fun bs!763007 () Bool)

(assert (= bs!763007 (and d!1346821 d!1346797)))

(assert (=> bs!763007 (not (= lambda!156499 lambda!156488))))

(declare-fun bs!763008 () Bool)

(assert (= bs!763008 (and d!1346821 d!1346791)))

(assert (=> bs!763008 (not (= lambda!156499 lambda!156487))))

(declare-fun bs!763009 () Bool)

(assert (= bs!763009 (and d!1346821 d!1346819)))

(assert (=> bs!763009 (not (= lambda!156499 lambda!156496))))

(declare-fun bs!763010 () Bool)

(assert (= bs!763010 (and d!1346821 d!1346773)))

(assert (=> bs!763010 (not (= lambda!156499 lambda!156483))))

(assert (=> d!1346821 true))

(assert (=> d!1346821 (= (allKeysSameHashInMap!914 lm!1616 hashF!1220) (forall!9661 (toList!3603 lm!1616) lambda!156499))))

(declare-fun bs!763011 () Bool)

(assert (= bs!763011 d!1346821))

(declare-fun m!5124963 () Bool)

(assert (=> bs!763011 m!5124963))

(assert (=> b!4437121 d!1346821))

(declare-fun d!1346823 () Bool)

(declare-fun get!16215 (Option!10775) List!49849)

(assert (=> d!1346823 (= (apply!11660 lm!1616 hash!366) (get!16215 (getValueByKey!761 (toList!3603 lm!1616) hash!366)))))

(declare-fun bs!763012 () Bool)

(assert (= bs!763012 d!1346823))

(assert (=> bs!763012 m!5124747))

(assert (=> bs!763012 m!5124747))

(declare-fun m!5124973 () Bool)

(assert (=> bs!763012 m!5124973))

(assert (=> b!4437122 d!1346823))

(declare-fun bs!763014 () Bool)

(declare-fun d!1346827 () Bool)

(assert (= bs!763014 (and d!1346827 start!433822)))

(declare-fun lambda!156502 () Int)

(assert (=> bs!763014 (= lambda!156502 lambda!156425)))

(declare-fun bs!763015 () Bool)

(assert (= bs!763015 (and d!1346827 d!1346821)))

(assert (=> bs!763015 (not (= lambda!156502 lambda!156499))))

(declare-fun bs!763016 () Bool)

(assert (= bs!763016 (and d!1346827 d!1346787)))

(assert (=> bs!763016 (= lambda!156502 lambda!156486)))

(declare-fun bs!763017 () Bool)

(assert (= bs!763017 (and d!1346827 d!1346797)))

(assert (=> bs!763017 (= lambda!156502 lambda!156488)))

(declare-fun bs!763018 () Bool)

(assert (= bs!763018 (and d!1346827 d!1346791)))

(assert (=> bs!763018 (= lambda!156502 lambda!156487)))

(declare-fun bs!763019 () Bool)

(assert (= bs!763019 (and d!1346827 d!1346819)))

(assert (=> bs!763019 (= lambda!156502 lambda!156496)))

(declare-fun bs!763020 () Bool)

(assert (= bs!763020 (and d!1346827 d!1346773)))

(assert (=> bs!763020 (= lambda!156502 lambda!156483)))

(assert (=> d!1346827 (contains!12276 (extractMap!869 (toList!3603 lm!1616)) key!3717)))

(declare-fun lt!1634176 () Unit!83517)

(declare-fun choose!28161 (ListLongMap!2253 K!11093 Hashable!5202) Unit!83517)

(assert (=> d!1346827 (= lt!1634176 (choose!28161 lm!1616 key!3717 hashF!1220))))

(assert (=> d!1346827 (forall!9661 (toList!3603 lm!1616) lambda!156502)))

(assert (=> d!1346827 (= (lemmaExtractTailMapContainsThenExtractMapDoes!63 lm!1616 key!3717 hashF!1220) lt!1634176)))

(declare-fun bs!763021 () Bool)

(assert (= bs!763021 d!1346827))

(assert (=> bs!763021 m!5124515))

(assert (=> bs!763021 m!5124515))

(declare-fun m!5124985 () Bool)

(assert (=> bs!763021 m!5124985))

(declare-fun m!5124987 () Bool)

(assert (=> bs!763021 m!5124987))

(declare-fun m!5124989 () Bool)

(assert (=> bs!763021 m!5124989))

(assert (=> b!4437123 d!1346827))

(assert (=> b!4437124 d!1346753))

(declare-fun d!1346833 () Bool)

(declare-fun hash!2244 (Hashable!5202 K!11093) (_ BitVec 64))

(assert (=> d!1346833 (= (hash!2239 hashF!1220 key!3717) (hash!2244 hashF!1220 key!3717))))

(declare-fun bs!763022 () Bool)

(assert (= bs!763022 d!1346833))

(declare-fun m!5124991 () Bool)

(assert (=> bs!763022 m!5124991))

(assert (=> b!4437114 d!1346833))

(declare-fun b!4437387 () Bool)

(declare-fun e!2763020 () Bool)

(declare-fun tp!1333867 () Bool)

(assert (=> b!4437387 (= e!2763020 (and tp_is_empty!26479 tp_is_empty!26477 tp!1333867))))

(assert (=> b!4437126 (= tp!1333858 e!2763020)))

(assert (= (and b!4437126 (is-Cons!49725 (t!356791 newBucket!194))) b!4437387))

(declare-fun b!4437392 () Bool)

(declare-fun e!2763023 () Bool)

(declare-fun tp!1333872 () Bool)

(declare-fun tp!1333873 () Bool)

(assert (=> b!4437392 (= e!2763023 (and tp!1333872 tp!1333873))))

(assert (=> b!4437116 (= tp!1333857 e!2763023)))

(assert (= (and b!4437116 (is-Cons!49726 (toList!3603 lm!1616))) b!4437392))

(declare-fun b_lambda!144689 () Bool)

(assert (= b_lambda!144681 (or start!433822 b_lambda!144689)))

(declare-fun bs!763023 () Bool)

(declare-fun d!1346835 () Bool)

(assert (= bs!763023 (and d!1346835 start!433822)))

(assert (=> bs!763023 (= (dynLambda!20893 lambda!156425 (h!55437 (toList!3603 lt!1633897))) (noDuplicateKeys!808 (_2!28100 (h!55437 (toList!3603 lt!1633897)))))))

(declare-fun m!5124993 () Bool)

(assert (=> bs!763023 m!5124993))

(assert (=> b!4437227 d!1346835))

(declare-fun b_lambda!144691 () Bool)

(assert (= b_lambda!144683 (or start!433822 b_lambda!144691)))

(declare-fun bs!763024 () Bool)

(declare-fun d!1346837 () Bool)

(assert (= bs!763024 (and d!1346837 start!433822)))

(assert (=> bs!763024 (= (dynLambda!20893 lambda!156425 (tuple2!49613 hash!366 newBucket!194)) (noDuplicateKeys!808 (_2!28100 (tuple2!49613 hash!366 newBucket!194))))))

(declare-fun m!5124995 () Bool)

(assert (=> bs!763024 m!5124995))

(assert (=> b!4437238 d!1346837))

(declare-fun b_lambda!144693 () Bool)

(assert (= b_lambda!144679 (or start!433822 b_lambda!144693)))

(declare-fun bs!763025 () Bool)

(declare-fun d!1346839 () Bool)

(assert (= bs!763025 (and d!1346839 start!433822)))

(assert (=> bs!763025 (= (dynLambda!20893 lambda!156425 (h!55437 (toList!3603 lm!1616))) (noDuplicateKeys!808 (_2!28100 (h!55437 (toList!3603 lm!1616)))))))

(assert (=> bs!763025 m!5124667))

(assert (=> b!4437225 d!1346839))

(push 1)

(assert (not b!4437249))

(assert (not b!4437361))

(assert (not b!4437392))

(assert (not bm!308785))

(assert (not d!1346767))

(assert (not d!1346787))

(assert (not bs!763023))

(assert (not b!4437357))

(assert (not d!1346793))

(assert (not bm!308776))

(assert (not d!1346771))

(assert (not b!4437351))

(assert (not d!1346785))

(assert (not b!4437348))

(assert (not bs!763025))

(assert (not b!4437309))

(assert (not d!1346729))

(assert tp_is_empty!26477)

(assert (not b!4437256))

(assert (not bm!308786))

(assert (not b!4437346))

(assert (not b!4437349))

(assert (not b!4437266))

(assert (not b!4437267))

(assert (not d!1346833))

(assert (not b!4437359))

(assert (not b!4437214))

(assert (not d!1346759))

(assert (not b!4437350))

(assert (not d!1346795))

(assert (not b!4437233))

(assert (not b!4437297))

(assert (not b!4437354))

(assert (not b!4437364))

(assert (not b!4437387))

(assert (not d!1346819))

(assert (not d!1346789))

(assert (not d!1346827))

(assert (not b_lambda!144691))

(assert (not d!1346773))

(assert (not d!1346791))

(assert (not b!4437217))

(assert (not bm!308778))

(assert (not d!1346817))

(assert (not d!1346761))

(assert tp_is_empty!26479)

(assert (not d!1346731))

(assert (not bm!308777))

(assert (not b!4437296))

(assert (not b!4437234))

(assert (not d!1346797))

(assert (not b!4437257))

(assert (not b!4437360))

(assert (not b_lambda!144693))

(assert (not b!4437272))

(assert (not b!4437362))

(assert (not d!1346755))

(assert (not b!4437215))

(assert (not b!4437226))

(assert (not d!1346803))

(assert (not d!1346821))

(assert (not b_lambda!144689))

(assert (not b!4437366))

(assert (not b!4437353))

(assert (not b!4437228))

(assert (not d!1346823))

(assert (not d!1346763))

(assert (not b!4437298))

(assert (not bs!763024))

(assert (not b!4437251))

(assert (not b!4437365))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

