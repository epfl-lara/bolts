; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!478800 () Bool)

(assert start!478800)

(declare-fun b!4711760 () Bool)

(declare-fun res!1991587 () Bool)

(declare-fun e!2938740 () Bool)

(assert (=> b!4711760 (=> (not res!1991587) (not e!2938740))))

(declare-datatypes ((K!14060 0))(
  ( (K!14061 (val!19519 Int)) )
))
(declare-datatypes ((V!14306 0))(
  ( (V!14307 (val!19520 Int)) )
))
(declare-datatypes ((tuple2!54250 0))(
  ( (tuple2!54251 (_1!30419 K!14060) (_2!30419 V!14306)) )
))
(declare-datatypes ((List!52821 0))(
  ( (Nil!52697) (Cons!52697 (h!59010 tuple2!54250) (t!360063 List!52821)) )
))
(declare-fun oldBucket!34 () List!52821)

(declare-fun noDuplicateKeys!1964 (List!52821) Bool)

(assert (=> b!4711760 (= res!1991587 (noDuplicateKeys!1964 oldBucket!34))))

(declare-fun b!4711761 () Bool)

(declare-fun res!1991588 () Bool)

(declare-fun e!2938744 () Bool)

(assert (=> b!4711761 (=> (not res!1991588) (not e!2938744))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-datatypes ((Hashable!6333 0))(
  ( (HashableExt!6332 (__x!32036 Int)) )
))
(declare-fun hashF!1323 () Hashable!6333)

(declare-fun newBucket!218 () List!52821)

(declare-fun allKeysSameHash!1790 (List!52821 (_ BitVec 64) Hashable!6333) Bool)

(assert (=> b!4711761 (= res!1991588 (allKeysSameHash!1790 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4711762 () Bool)

(declare-fun e!2938743 () Bool)

(declare-fun tp!1347586 () Bool)

(assert (=> b!4711762 (= e!2938743 tp!1347586)))

(declare-fun b!4711763 () Bool)

(declare-fun e!2938741 () Bool)

(declare-datatypes ((ListMap!5181 0))(
  ( (ListMap!5182 (toList!5817 List!52821)) )
))
(declare-fun lt!1876277 () ListMap!5181)

(declare-datatypes ((tuple2!54252 0))(
  ( (tuple2!54253 (_1!30420 (_ BitVec 64)) (_2!30420 List!52821)) )
))
(declare-datatypes ((List!52822 0))(
  ( (Nil!52698) (Cons!52698 (h!59011 tuple2!54252) (t!360064 List!52822)) )
))
(declare-datatypes ((ListLongMap!4347 0))(
  ( (ListLongMap!4348 (toList!5818 List!52822)) )
))
(declare-fun lm!2023 () ListLongMap!4347)

(declare-fun addToMapMapFromBucket!1394 (List!52821 ListMap!5181) ListMap!5181)

(declare-fun extractMap!1990 (List!52822) ListMap!5181)

(assert (=> b!4711763 (= e!2938741 (= lt!1876277 (addToMapMapFromBucket!1394 (_2!30420 (h!59011 (toList!5818 lm!2023))) (extractMap!1990 (t!360064 (toList!5818 lm!2023))))))))

(declare-fun b!4711764 () Bool)

(declare-fun e!2938738 () Bool)

(assert (=> b!4711764 (= e!2938740 e!2938738)))

(declare-fun res!1991583 () Bool)

(assert (=> b!4711764 (=> (not res!1991583) (not e!2938738))))

(declare-fun key!4653 () K!14060)

(declare-fun contains!16000 (ListMap!5181 K!14060) Bool)

(assert (=> b!4711764 (= res!1991583 (contains!16000 lt!1876277 key!4653))))

(assert (=> b!4711764 (= lt!1876277 (extractMap!1990 (toList!5818 lm!2023)))))

(declare-fun b!4711765 () Bool)

(declare-fun e!2938742 () Bool)

(declare-fun containsKey!3271 (List!52821 K!14060) Bool)

(assert (=> b!4711765 (= e!2938742 (containsKey!3271 (t!360063 oldBucket!34) key!4653))))

(assert (=> b!4711765 (containsKey!3271 oldBucket!34 key!4653)))

(declare-datatypes ((Unit!128138 0))(
  ( (Unit!128139) )
))
(declare-fun lt!1876278 () Unit!128138)

(declare-fun lemmaGetPairDefinedThenContainsKey!278 (List!52821 K!14060 Hashable!6333) Unit!128138)

(assert (=> b!4711765 (= lt!1876278 (lemmaGetPairDefinedThenContainsKey!278 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1876279 () List!52821)

(declare-datatypes ((Option!12273 0))(
  ( (None!12272) (Some!12272 (v!46799 tuple2!54250)) )
))
(declare-fun isDefined!9528 (Option!12273) Bool)

(declare-fun getPair!530 (List!52821 K!14060) Option!12273)

(assert (=> b!4711765 (isDefined!9528 (getPair!530 lt!1876279 key!4653))))

(declare-fun lt!1876283 () Unit!128138)

(declare-fun lambda!212915 () Int)

(declare-fun lt!1876284 () tuple2!54252)

(declare-fun forallContained!3568 (List!52822 Int tuple2!54252) Unit!128138)

(assert (=> b!4711765 (= lt!1876283 (forallContained!3568 (toList!5818 lm!2023) lambda!212915 lt!1876284))))

(declare-fun contains!16001 (List!52822 tuple2!54252) Bool)

(assert (=> b!4711765 (contains!16001 (toList!5818 lm!2023) lt!1876284)))

(declare-fun lt!1876276 () (_ BitVec 64))

(assert (=> b!4711765 (= lt!1876284 (tuple2!54253 lt!1876276 lt!1876279))))

(declare-fun lt!1876281 () Unit!128138)

(declare-fun lemmaGetValueImpliesTupleContained!335 (ListLongMap!4347 (_ BitVec 64) List!52821) Unit!128138)

(assert (=> b!4711765 (= lt!1876281 (lemmaGetValueImpliesTupleContained!335 lm!2023 lt!1876276 lt!1876279))))

(declare-fun apply!12413 (ListLongMap!4347 (_ BitVec 64)) List!52821)

(assert (=> b!4711765 (= lt!1876279 (apply!12413 lm!2023 lt!1876276))))

(declare-fun contains!16002 (ListLongMap!4347 (_ BitVec 64)) Bool)

(assert (=> b!4711765 (contains!16002 lm!2023 lt!1876276)))

(declare-fun lt!1876282 () Unit!128138)

(declare-fun lemmaInGenMapThenLongMapContainsHash!736 (ListLongMap!4347 K!14060 Hashable!6333) Unit!128138)

(assert (=> b!4711765 (= lt!1876282 (lemmaInGenMapThenLongMapContainsHash!736 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1876280 () Unit!128138)

(declare-fun lemmaInGenMapThenGetPairDefined!326 (ListLongMap!4347 K!14060 Hashable!6333) Unit!128138)

(assert (=> b!4711765 (= lt!1876280 (lemmaInGenMapThenGetPairDefined!326 lm!2023 key!4653 hashF!1323))))

(declare-fun tp_is_empty!31149 () Bool)

(declare-fun tp_is_empty!31151 () Bool)

(declare-fun tp!1347587 () Bool)

(declare-fun e!2938737 () Bool)

(declare-fun b!4711766 () Bool)

(assert (=> b!4711766 (= e!2938737 (and tp_is_empty!31149 tp_is_empty!31151 tp!1347587))))

(declare-fun b!4711767 () Bool)

(declare-fun res!1991589 () Bool)

(assert (=> b!4711767 (=> (not res!1991589) (not e!2938740))))

(assert (=> b!4711767 (= res!1991589 (noDuplicateKeys!1964 newBucket!218))))

(declare-fun b!4711769 () Bool)

(assert (=> b!4711769 (= e!2938744 (not e!2938742))))

(declare-fun res!1991585 () Bool)

(assert (=> b!4711769 (=> res!1991585 e!2938742)))

(get-info :version)

(assert (=> b!4711769 (= res!1991585 (or (and ((_ is Cons!52697) oldBucket!34) (= (_1!30419 (h!59010 oldBucket!34)) key!4653)) (not ((_ is Cons!52697) oldBucket!34)) (= (_1!30419 (h!59010 oldBucket!34)) key!4653)))))

(assert (=> b!4711769 e!2938741))

(declare-fun res!1991595 () Bool)

(assert (=> b!4711769 (=> (not res!1991595) (not e!2938741))))

(declare-fun tail!8872 (ListLongMap!4347) ListLongMap!4347)

(assert (=> b!4711769 (= res!1991595 (= (t!360064 (toList!5818 lm!2023)) (toList!5818 (tail!8872 lm!2023))))))

(declare-fun b!4711770 () Bool)

(assert (=> b!4711770 (= e!2938738 e!2938744)))

(declare-fun res!1991593 () Bool)

(assert (=> b!4711770 (=> (not res!1991593) (not e!2938744))))

(assert (=> b!4711770 (= res!1991593 (= lt!1876276 hash!405))))

(declare-fun hash!4292 (Hashable!6333 K!14060) (_ BitVec 64))

(assert (=> b!4711770 (= lt!1876276 (hash!4292 hashF!1323 key!4653))))

(declare-fun b!4711771 () Bool)

(declare-fun res!1991584 () Bool)

(assert (=> b!4711771 (=> (not res!1991584) (not e!2938744))))

(assert (=> b!4711771 (= res!1991584 ((_ is Cons!52698) (toList!5818 lm!2023)))))

(declare-fun tp!1347585 () Bool)

(declare-fun b!4711772 () Bool)

(declare-fun e!2938739 () Bool)

(assert (=> b!4711772 (= e!2938739 (and tp_is_empty!31149 tp_is_empty!31151 tp!1347585))))

(declare-fun b!4711773 () Bool)

(declare-fun res!1991590 () Bool)

(assert (=> b!4711773 (=> (not res!1991590) (not e!2938740))))

(declare-fun removePairForKey!1559 (List!52821 K!14060) List!52821)

(assert (=> b!4711773 (= res!1991590 (= (removePairForKey!1559 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4711768 () Bool)

(declare-fun res!1991586 () Bool)

(assert (=> b!4711768 (=> (not res!1991586) (not e!2938744))))

(declare-fun allKeysSameHashInMap!1878 (ListLongMap!4347 Hashable!6333) Bool)

(assert (=> b!4711768 (= res!1991586 (allKeysSameHashInMap!1878 lm!2023 hashF!1323))))

(declare-fun res!1991591 () Bool)

(assert (=> start!478800 (=> (not res!1991591) (not e!2938740))))

(declare-fun forall!11499 (List!52822 Int) Bool)

(assert (=> start!478800 (= res!1991591 (forall!11499 (toList!5818 lm!2023) lambda!212915))))

(assert (=> start!478800 e!2938740))

(declare-fun inv!67934 (ListLongMap!4347) Bool)

(assert (=> start!478800 (and (inv!67934 lm!2023) e!2938743)))

(assert (=> start!478800 tp_is_empty!31149))

(assert (=> start!478800 e!2938737))

(assert (=> start!478800 true))

(assert (=> start!478800 e!2938739))

(declare-fun b!4711774 () Bool)

(declare-fun res!1991594 () Bool)

(assert (=> b!4711774 (=> (not res!1991594) (not e!2938740))))

(assert (=> b!4711774 (= res!1991594 (allKeysSameHash!1790 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4711775 () Bool)

(declare-fun res!1991592 () Bool)

(assert (=> b!4711775 (=> (not res!1991592) (not e!2938744))))

(declare-fun head!10164 (List!52822) tuple2!54252)

(assert (=> b!4711775 (= res!1991592 (= (head!10164 (toList!5818 lm!2023)) (tuple2!54253 hash!405 oldBucket!34)))))

(assert (= (and start!478800 res!1991591) b!4711760))

(assert (= (and b!4711760 res!1991587) b!4711767))

(assert (= (and b!4711767 res!1991589) b!4711773))

(assert (= (and b!4711773 res!1991590) b!4711774))

(assert (= (and b!4711774 res!1991594) b!4711764))

(assert (= (and b!4711764 res!1991583) b!4711770))

(assert (= (and b!4711770 res!1991593) b!4711761))

(assert (= (and b!4711761 res!1991588) b!4711768))

(assert (= (and b!4711768 res!1991586) b!4711775))

(assert (= (and b!4711775 res!1991592) b!4711771))

(assert (= (and b!4711771 res!1991584) b!4711769))

(assert (= (and b!4711769 res!1991595) b!4711763))

(assert (= (and b!4711769 (not res!1991585)) b!4711765))

(assert (= start!478800 b!4711762))

(assert (= (and start!478800 ((_ is Cons!52697) oldBucket!34)) b!4711766))

(assert (= (and start!478800 ((_ is Cons!52697) newBucket!218)) b!4711772))

(declare-fun m!5637935 () Bool)

(assert (=> b!4711775 m!5637935))

(declare-fun m!5637937 () Bool)

(assert (=> b!4711768 m!5637937))

(declare-fun m!5637939 () Bool)

(assert (=> b!4711760 m!5637939))

(declare-fun m!5637941 () Bool)

(assert (=> b!4711770 m!5637941))

(declare-fun m!5637943 () Bool)

(assert (=> b!4711761 m!5637943))

(declare-fun m!5637945 () Bool)

(assert (=> b!4711774 m!5637945))

(declare-fun m!5637947 () Bool)

(assert (=> start!478800 m!5637947))

(declare-fun m!5637949 () Bool)

(assert (=> start!478800 m!5637949))

(declare-fun m!5637951 () Bool)

(assert (=> b!4711773 m!5637951))

(declare-fun m!5637953 () Bool)

(assert (=> b!4711765 m!5637953))

(declare-fun m!5637955 () Bool)

(assert (=> b!4711765 m!5637955))

(declare-fun m!5637957 () Bool)

(assert (=> b!4711765 m!5637957))

(declare-fun m!5637959 () Bool)

(assert (=> b!4711765 m!5637959))

(declare-fun m!5637961 () Bool)

(assert (=> b!4711765 m!5637961))

(declare-fun m!5637963 () Bool)

(assert (=> b!4711765 m!5637963))

(declare-fun m!5637965 () Bool)

(assert (=> b!4711765 m!5637965))

(declare-fun m!5637967 () Bool)

(assert (=> b!4711765 m!5637967))

(declare-fun m!5637969 () Bool)

(assert (=> b!4711765 m!5637969))

(declare-fun m!5637971 () Bool)

(assert (=> b!4711765 m!5637971))

(declare-fun m!5637973 () Bool)

(assert (=> b!4711765 m!5637973))

(assert (=> b!4711765 m!5637965))

(declare-fun m!5637975 () Bool)

(assert (=> b!4711765 m!5637975))

(declare-fun m!5637977 () Bool)

(assert (=> b!4711769 m!5637977))

(declare-fun m!5637979 () Bool)

(assert (=> b!4711767 m!5637979))

(declare-fun m!5637981 () Bool)

(assert (=> b!4711763 m!5637981))

(assert (=> b!4711763 m!5637981))

(declare-fun m!5637983 () Bool)

(assert (=> b!4711763 m!5637983))

(declare-fun m!5637985 () Bool)

(assert (=> b!4711764 m!5637985))

(declare-fun m!5637987 () Bool)

(assert (=> b!4711764 m!5637987))

(check-sat (not b!4711768) (not b!4711764) (not b!4711760) tp_is_empty!31149 (not b!4711773) (not b!4711774) (not b!4711770) (not b!4711763) tp_is_empty!31151 (not b!4711775) (not b!4711761) (not b!4711765) (not b!4711767) (not b!4711769) (not b!4711762) (not b!4711772) (not start!478800) (not b!4711766))
(check-sat)
(get-model)

(declare-fun b!4711787 () Bool)

(declare-fun e!2938749 () List!52821)

(assert (=> b!4711787 (= e!2938749 Nil!52697)))

(declare-fun d!1499304 () Bool)

(declare-fun lt!1876290 () List!52821)

(assert (=> d!1499304 (not (containsKey!3271 lt!1876290 key!4653))))

(declare-fun e!2938750 () List!52821)

(assert (=> d!1499304 (= lt!1876290 e!2938750)))

(declare-fun c!804904 () Bool)

(assert (=> d!1499304 (= c!804904 (and ((_ is Cons!52697) oldBucket!34) (= (_1!30419 (h!59010 oldBucket!34)) key!4653)))))

(assert (=> d!1499304 (noDuplicateKeys!1964 oldBucket!34)))

(assert (=> d!1499304 (= (removePairForKey!1559 oldBucket!34 key!4653) lt!1876290)))

(declare-fun b!4711784 () Bool)

(assert (=> b!4711784 (= e!2938750 (t!360063 oldBucket!34))))

(declare-fun b!4711786 () Bool)

(assert (=> b!4711786 (= e!2938749 (Cons!52697 (h!59010 oldBucket!34) (removePairForKey!1559 (t!360063 oldBucket!34) key!4653)))))

(declare-fun b!4711785 () Bool)

(assert (=> b!4711785 (= e!2938750 e!2938749)))

(declare-fun c!804905 () Bool)

(assert (=> b!4711785 (= c!804905 ((_ is Cons!52697) oldBucket!34))))

(assert (= (and d!1499304 c!804904) b!4711784))

(assert (= (and d!1499304 (not c!804904)) b!4711785))

(assert (= (and b!4711785 c!804905) b!4711786))

(assert (= (and b!4711785 (not c!804905)) b!4711787))

(declare-fun m!5637997 () Bool)

(assert (=> d!1499304 m!5637997))

(assert (=> d!1499304 m!5637939))

(declare-fun m!5637999 () Bool)

(assert (=> b!4711786 m!5637999))

(assert (=> b!4711773 d!1499304))

(declare-fun b!4711883 () Bool)

(assert (=> b!4711883 true))

(declare-fun bs!1102466 () Bool)

(declare-fun b!4711882 () Bool)

(assert (= bs!1102466 (and b!4711882 b!4711883)))

(declare-fun lambda!212990 () Int)

(declare-fun lambda!212989 () Int)

(assert (=> bs!1102466 (= lambda!212990 lambda!212989)))

(assert (=> b!4711882 true))

(declare-fun lambda!212991 () Int)

(declare-fun lt!1876455 () ListMap!5181)

(assert (=> bs!1102466 (= (= lt!1876455 (extractMap!1990 (t!360064 (toList!5818 lm!2023)))) (= lambda!212991 lambda!212989))))

(assert (=> b!4711882 (= (= lt!1876455 (extractMap!1990 (t!360064 (toList!5818 lm!2023)))) (= lambda!212991 lambda!212990))))

(assert (=> b!4711882 true))

(declare-fun bs!1102467 () Bool)

(declare-fun d!1499306 () Bool)

(assert (= bs!1102467 (and d!1499306 b!4711883)))

(declare-fun lt!1876454 () ListMap!5181)

(declare-fun lambda!212992 () Int)

(assert (=> bs!1102467 (= (= lt!1876454 (extractMap!1990 (t!360064 (toList!5818 lm!2023)))) (= lambda!212992 lambda!212989))))

(declare-fun bs!1102468 () Bool)

(assert (= bs!1102468 (and d!1499306 b!4711882)))

(assert (=> bs!1102468 (= (= lt!1876454 (extractMap!1990 (t!360064 (toList!5818 lm!2023)))) (= lambda!212992 lambda!212990))))

(assert (=> bs!1102468 (= (= lt!1876454 lt!1876455) (= lambda!212992 lambda!212991))))

(assert (=> d!1499306 true))

(declare-fun e!2938810 () ListMap!5181)

(assert (=> b!4711882 (= e!2938810 lt!1876455)))

(declare-fun lt!1876452 () ListMap!5181)

(declare-fun +!2226 (ListMap!5181 tuple2!54250) ListMap!5181)

(assert (=> b!4711882 (= lt!1876452 (+!2226 (extractMap!1990 (t!360064 (toList!5818 lm!2023))) (h!59010 (_2!30420 (h!59011 (toList!5818 lm!2023))))))))

(assert (=> b!4711882 (= lt!1876455 (addToMapMapFromBucket!1394 (t!360063 (_2!30420 (h!59011 (toList!5818 lm!2023)))) (+!2226 (extractMap!1990 (t!360064 (toList!5818 lm!2023))) (h!59010 (_2!30420 (h!59011 (toList!5818 lm!2023)))))))))

(declare-fun lt!1876461 () Unit!128138)

(declare-fun call!329445 () Unit!128138)

(assert (=> b!4711882 (= lt!1876461 call!329445)))

(declare-fun call!329446 () Bool)

(assert (=> b!4711882 call!329446))

(declare-fun lt!1876459 () Unit!128138)

(assert (=> b!4711882 (= lt!1876459 lt!1876461)))

(declare-fun forall!11501 (List!52821 Int) Bool)

(assert (=> b!4711882 (forall!11501 (toList!5817 lt!1876452) lambda!212991)))

(declare-fun lt!1876447 () Unit!128138)

(declare-fun Unit!128152 () Unit!128138)

(assert (=> b!4711882 (= lt!1876447 Unit!128152)))

(assert (=> b!4711882 (forall!11501 (t!360063 (_2!30420 (h!59011 (toList!5818 lm!2023)))) lambda!212991)))

(declare-fun lt!1876451 () Unit!128138)

(declare-fun Unit!128153 () Unit!128138)

(assert (=> b!4711882 (= lt!1876451 Unit!128153)))

(declare-fun lt!1876449 () Unit!128138)

(declare-fun Unit!128154 () Unit!128138)

(assert (=> b!4711882 (= lt!1876449 Unit!128154)))

(declare-fun lt!1876456 () Unit!128138)

(declare-fun forallContained!3570 (List!52821 Int tuple2!54250) Unit!128138)

(assert (=> b!4711882 (= lt!1876456 (forallContained!3570 (toList!5817 lt!1876452) lambda!212991 (h!59010 (_2!30420 (h!59011 (toList!5818 lm!2023))))))))

(assert (=> b!4711882 (contains!16000 lt!1876452 (_1!30419 (h!59010 (_2!30420 (h!59011 (toList!5818 lm!2023))))))))

(declare-fun lt!1876464 () Unit!128138)

(declare-fun Unit!128155 () Unit!128138)

(assert (=> b!4711882 (= lt!1876464 Unit!128155)))

(assert (=> b!4711882 (contains!16000 lt!1876455 (_1!30419 (h!59010 (_2!30420 (h!59011 (toList!5818 lm!2023))))))))

(declare-fun lt!1876467 () Unit!128138)

(declare-fun Unit!128156 () Unit!128138)

(assert (=> b!4711882 (= lt!1876467 Unit!128156)))

(assert (=> b!4711882 (forall!11501 (_2!30420 (h!59011 (toList!5818 lm!2023))) lambda!212991)))

(declare-fun lt!1876466 () Unit!128138)

(declare-fun Unit!128157 () Unit!128138)

(assert (=> b!4711882 (= lt!1876466 Unit!128157)))

(assert (=> b!4711882 (forall!11501 (toList!5817 lt!1876452) lambda!212991)))

(declare-fun lt!1876450 () Unit!128138)

(declare-fun Unit!128158 () Unit!128138)

(assert (=> b!4711882 (= lt!1876450 Unit!128158)))

(declare-fun lt!1876457 () Unit!128138)

(declare-fun Unit!128159 () Unit!128138)

(assert (=> b!4711882 (= lt!1876457 Unit!128159)))

(declare-fun lt!1876462 () Unit!128138)

(declare-fun addForallContainsKeyThenBeforeAdding!765 (ListMap!5181 ListMap!5181 K!14060 V!14306) Unit!128138)

(assert (=> b!4711882 (= lt!1876462 (addForallContainsKeyThenBeforeAdding!765 (extractMap!1990 (t!360064 (toList!5818 lm!2023))) lt!1876455 (_1!30419 (h!59010 (_2!30420 (h!59011 (toList!5818 lm!2023))))) (_2!30419 (h!59010 (_2!30420 (h!59011 (toList!5818 lm!2023)))))))))

(assert (=> b!4711882 (forall!11501 (toList!5817 (extractMap!1990 (t!360064 (toList!5818 lm!2023)))) lambda!212991)))

(declare-fun lt!1876458 () Unit!128138)

(assert (=> b!4711882 (= lt!1876458 lt!1876462)))

(assert (=> b!4711882 (forall!11501 (toList!5817 (extractMap!1990 (t!360064 (toList!5818 lm!2023)))) lambda!212991)))

(declare-fun lt!1876463 () Unit!128138)

(declare-fun Unit!128160 () Unit!128138)

(assert (=> b!4711882 (= lt!1876463 Unit!128160)))

(declare-fun res!1991656 () Bool)

(declare-fun call!329447 () Bool)

(assert (=> b!4711882 (= res!1991656 call!329447)))

(declare-fun e!2938812 () Bool)

(assert (=> b!4711882 (=> (not res!1991656) (not e!2938812))))

(assert (=> b!4711882 e!2938812))

(declare-fun lt!1876448 () Unit!128138)

(declare-fun Unit!128161 () Unit!128138)

(assert (=> b!4711882 (= lt!1876448 Unit!128161)))

(declare-fun bm!329440 () Bool)

(declare-fun c!804920 () Bool)

(assert (=> bm!329440 (= call!329446 (forall!11501 (toList!5817 (extractMap!1990 (t!360064 (toList!5818 lm!2023)))) (ite c!804920 lambda!212989 lambda!212990)))))

(assert (=> b!4711883 (= e!2938810 (extractMap!1990 (t!360064 (toList!5818 lm!2023))))))

(declare-fun lt!1876465 () Unit!128138)

(assert (=> b!4711883 (= lt!1876465 call!329445)))

(assert (=> b!4711883 call!329446))

(declare-fun lt!1876453 () Unit!128138)

(assert (=> b!4711883 (= lt!1876453 lt!1876465)))

(assert (=> b!4711883 call!329447))

(declare-fun lt!1876460 () Unit!128138)

(declare-fun Unit!128162 () Unit!128138)

(assert (=> b!4711883 (= lt!1876460 Unit!128162)))

(declare-fun b!4711884 () Bool)

(declare-fun res!1991657 () Bool)

(declare-fun e!2938811 () Bool)

(assert (=> b!4711884 (=> (not res!1991657) (not e!2938811))))

(assert (=> b!4711884 (= res!1991657 (forall!11501 (toList!5817 (extractMap!1990 (t!360064 (toList!5818 lm!2023)))) lambda!212992))))

(declare-fun b!4711885 () Bool)

(assert (=> b!4711885 (= e!2938812 (forall!11501 (toList!5817 (extractMap!1990 (t!360064 (toList!5818 lm!2023)))) lambda!212991))))

(assert (=> d!1499306 e!2938811))

(declare-fun res!1991655 () Bool)

(assert (=> d!1499306 (=> (not res!1991655) (not e!2938811))))

(assert (=> d!1499306 (= res!1991655 (forall!11501 (_2!30420 (h!59011 (toList!5818 lm!2023))) lambda!212992))))

(assert (=> d!1499306 (= lt!1876454 e!2938810)))

(assert (=> d!1499306 (= c!804920 ((_ is Nil!52697) (_2!30420 (h!59011 (toList!5818 lm!2023)))))))

(assert (=> d!1499306 (noDuplicateKeys!1964 (_2!30420 (h!59011 (toList!5818 lm!2023))))))

(assert (=> d!1499306 (= (addToMapMapFromBucket!1394 (_2!30420 (h!59011 (toList!5818 lm!2023))) (extractMap!1990 (t!360064 (toList!5818 lm!2023)))) lt!1876454)))

(declare-fun bm!329441 () Bool)

(assert (=> bm!329441 (= call!329447 (forall!11501 (ite c!804920 (toList!5817 (extractMap!1990 (t!360064 (toList!5818 lm!2023)))) (_2!30420 (h!59011 (toList!5818 lm!2023)))) (ite c!804920 lambda!212989 lambda!212991)))))

(declare-fun b!4711886 () Bool)

(declare-fun invariantList!1478 (List!52821) Bool)

(assert (=> b!4711886 (= e!2938811 (invariantList!1478 (toList!5817 lt!1876454)))))

(declare-fun bm!329442 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!766 (ListMap!5181) Unit!128138)

(assert (=> bm!329442 (= call!329445 (lemmaContainsAllItsOwnKeys!766 (extractMap!1990 (t!360064 (toList!5818 lm!2023)))))))

(assert (= (and d!1499306 c!804920) b!4711883))

(assert (= (and d!1499306 (not c!804920)) b!4711882))

(assert (= (and b!4711882 res!1991656) b!4711885))

(assert (= (or b!4711883 b!4711882) bm!329442))

(assert (= (or b!4711883 b!4711882) bm!329440))

(assert (= (or b!4711883 b!4711882) bm!329441))

(assert (= (and d!1499306 res!1991655) b!4711884))

(assert (= (and b!4711884 res!1991657) b!4711886))

(declare-fun m!5638105 () Bool)

(assert (=> b!4711885 m!5638105))

(declare-fun m!5638107 () Bool)

(assert (=> bm!329441 m!5638107))

(declare-fun m!5638109 () Bool)

(assert (=> b!4711886 m!5638109))

(declare-fun m!5638111 () Bool)

(assert (=> bm!329440 m!5638111))

(declare-fun m!5638113 () Bool)

(assert (=> d!1499306 m!5638113))

(declare-fun m!5638115 () Bool)

(assert (=> d!1499306 m!5638115))

(declare-fun m!5638117 () Bool)

(assert (=> b!4711884 m!5638117))

(assert (=> bm!329442 m!5637981))

(declare-fun m!5638119 () Bool)

(assert (=> bm!329442 m!5638119))

(declare-fun m!5638121 () Bool)

(assert (=> b!4711882 m!5638121))

(declare-fun m!5638123 () Bool)

(assert (=> b!4711882 m!5638123))

(assert (=> b!4711882 m!5637981))

(declare-fun m!5638125 () Bool)

(assert (=> b!4711882 m!5638125))

(declare-fun m!5638127 () Bool)

(assert (=> b!4711882 m!5638127))

(assert (=> b!4711882 m!5638127))

(assert (=> b!4711882 m!5638105))

(assert (=> b!4711882 m!5638105))

(declare-fun m!5638129 () Bool)

(assert (=> b!4711882 m!5638129))

(assert (=> b!4711882 m!5638125))

(declare-fun m!5638131 () Bool)

(assert (=> b!4711882 m!5638131))

(declare-fun m!5638133 () Bool)

(assert (=> b!4711882 m!5638133))

(declare-fun m!5638135 () Bool)

(assert (=> b!4711882 m!5638135))

(assert (=> b!4711882 m!5637981))

(declare-fun m!5638137 () Bool)

(assert (=> b!4711882 m!5638137))

(assert (=> b!4711763 d!1499306))

(declare-fun bs!1102479 () Bool)

(declare-fun d!1499334 () Bool)

(assert (= bs!1102479 (and d!1499334 start!478800)))

(declare-fun lambda!212999 () Int)

(assert (=> bs!1102479 (= lambda!212999 lambda!212915)))

(declare-fun lt!1876473 () ListMap!5181)

(assert (=> d!1499334 (invariantList!1478 (toList!5817 lt!1876473))))

(declare-fun e!2938830 () ListMap!5181)

(assert (=> d!1499334 (= lt!1876473 e!2938830)))

(declare-fun c!804926 () Bool)

(assert (=> d!1499334 (= c!804926 ((_ is Cons!52698) (t!360064 (toList!5818 lm!2023))))))

(assert (=> d!1499334 (forall!11499 (t!360064 (toList!5818 lm!2023)) lambda!212999)))

(assert (=> d!1499334 (= (extractMap!1990 (t!360064 (toList!5818 lm!2023))) lt!1876473)))

(declare-fun b!4711911 () Bool)

(assert (=> b!4711911 (= e!2938830 (addToMapMapFromBucket!1394 (_2!30420 (h!59011 (t!360064 (toList!5818 lm!2023)))) (extractMap!1990 (t!360064 (t!360064 (toList!5818 lm!2023))))))))

(declare-fun b!4711912 () Bool)

(assert (=> b!4711912 (= e!2938830 (ListMap!5182 Nil!52697))))

(assert (= (and d!1499334 c!804926) b!4711911))

(assert (= (and d!1499334 (not c!804926)) b!4711912))

(declare-fun m!5638161 () Bool)

(assert (=> d!1499334 m!5638161))

(declare-fun m!5638163 () Bool)

(assert (=> d!1499334 m!5638163))

(declare-fun m!5638165 () Bool)

(assert (=> b!4711911 m!5638165))

(assert (=> b!4711911 m!5638165))

(declare-fun m!5638167 () Bool)

(assert (=> b!4711911 m!5638167))

(assert (=> b!4711763 d!1499334))

(declare-fun bs!1102480 () Bool)

(declare-fun d!1499348 () Bool)

(assert (= bs!1102480 (and d!1499348 b!4711883)))

(declare-fun lambda!213002 () Int)

(assert (=> bs!1102480 (not (= lambda!213002 lambda!212989))))

(declare-fun bs!1102481 () Bool)

(assert (= bs!1102481 (and d!1499348 b!4711882)))

(assert (=> bs!1102481 (not (= lambda!213002 lambda!212990))))

(assert (=> bs!1102481 (not (= lambda!213002 lambda!212991))))

(declare-fun bs!1102482 () Bool)

(assert (= bs!1102482 (and d!1499348 d!1499306)))

(assert (=> bs!1102482 (not (= lambda!213002 lambda!212992))))

(assert (=> d!1499348 true))

(assert (=> d!1499348 true))

(assert (=> d!1499348 (= (allKeysSameHash!1790 oldBucket!34 hash!405 hashF!1323) (forall!11501 oldBucket!34 lambda!213002))))

(declare-fun bs!1102483 () Bool)

(assert (= bs!1102483 d!1499348))

(declare-fun m!5638169 () Bool)

(assert (=> bs!1102483 m!5638169))

(assert (=> b!4711774 d!1499348))

(declare-fun d!1499350 () Bool)

(assert (=> d!1499350 (= (head!10164 (toList!5818 lm!2023)) (h!59011 (toList!5818 lm!2023)))))

(assert (=> b!4711775 d!1499350))

(declare-fun b!4711964 () Bool)

(declare-fun e!2938862 () Bool)

(declare-datatypes ((List!52824 0))(
  ( (Nil!52700) (Cons!52700 (h!59015 K!14060) (t!360066 List!52824)) )
))
(declare-fun contains!16005 (List!52824 K!14060) Bool)

(declare-fun keys!18891 (ListMap!5181) List!52824)

(assert (=> b!4711964 (= e!2938862 (contains!16005 (keys!18891 lt!1876277) key!4653))))

(declare-fun b!4711965 () Bool)

(declare-fun e!2938863 () Unit!128138)

(declare-fun lt!1876515 () Unit!128138)

(assert (=> b!4711965 (= e!2938863 lt!1876515)))

(declare-fun lt!1876521 () Unit!128138)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1796 (List!52821 K!14060) Unit!128138)

(assert (=> b!4711965 (= lt!1876521 (lemmaContainsKeyImpliesGetValueByKeyDefined!1796 (toList!5817 lt!1876277) key!4653))))

(declare-datatypes ((Option!12276 0))(
  ( (None!12275) (Some!12275 (v!46806 V!14306)) )
))
(declare-fun isDefined!9531 (Option!12276) Bool)

(declare-fun getValueByKey!1904 (List!52821 K!14060) Option!12276)

(assert (=> b!4711965 (isDefined!9531 (getValueByKey!1904 (toList!5817 lt!1876277) key!4653))))

(declare-fun lt!1876518 () Unit!128138)

(assert (=> b!4711965 (= lt!1876518 lt!1876521)))

(declare-fun lemmaInListThenGetKeysListContains!913 (List!52821 K!14060) Unit!128138)

(assert (=> b!4711965 (= lt!1876515 (lemmaInListThenGetKeysListContains!913 (toList!5817 lt!1876277) key!4653))))

(declare-fun call!329453 () Bool)

(assert (=> b!4711965 call!329453))

(declare-fun b!4711966 () Bool)

(declare-fun e!2938867 () List!52824)

(declare-fun getKeysList!918 (List!52821) List!52824)

(assert (=> b!4711966 (= e!2938867 (getKeysList!918 (toList!5817 lt!1876277)))))

(declare-fun d!1499352 () Bool)

(declare-fun e!2938865 () Bool)

(assert (=> d!1499352 e!2938865))

(declare-fun res!1991685 () Bool)

(assert (=> d!1499352 (=> res!1991685 e!2938865)))

(declare-fun e!2938866 () Bool)

(assert (=> d!1499352 (= res!1991685 e!2938866)))

(declare-fun res!1991687 () Bool)

(assert (=> d!1499352 (=> (not res!1991687) (not e!2938866))))

(declare-fun lt!1876520 () Bool)

(assert (=> d!1499352 (= res!1991687 (not lt!1876520))))

(declare-fun lt!1876517 () Bool)

(assert (=> d!1499352 (= lt!1876520 lt!1876517)))

(declare-fun lt!1876519 () Unit!128138)

(assert (=> d!1499352 (= lt!1876519 e!2938863)))

(declare-fun c!804945 () Bool)

(assert (=> d!1499352 (= c!804945 lt!1876517)))

(declare-fun containsKey!3274 (List!52821 K!14060) Bool)

(assert (=> d!1499352 (= lt!1876517 (containsKey!3274 (toList!5817 lt!1876277) key!4653))))

(assert (=> d!1499352 (= (contains!16000 lt!1876277 key!4653) lt!1876520)))

(declare-fun bm!329448 () Bool)

(assert (=> bm!329448 (= call!329453 (contains!16005 e!2938867 key!4653))))

(declare-fun c!804944 () Bool)

(assert (=> bm!329448 (= c!804944 c!804945)))

(declare-fun b!4711967 () Bool)

(assert (=> b!4711967 (= e!2938867 (keys!18891 lt!1876277))))

(declare-fun b!4711968 () Bool)

(assert (=> b!4711968 (= e!2938865 e!2938862)))

(declare-fun res!1991686 () Bool)

(assert (=> b!4711968 (=> (not res!1991686) (not e!2938862))))

(assert (=> b!4711968 (= res!1991686 (isDefined!9531 (getValueByKey!1904 (toList!5817 lt!1876277) key!4653)))))

(declare-fun b!4711969 () Bool)

(declare-fun e!2938864 () Unit!128138)

(declare-fun Unit!128165 () Unit!128138)

(assert (=> b!4711969 (= e!2938864 Unit!128165)))

(declare-fun b!4711970 () Bool)

(assert (=> b!4711970 (= e!2938863 e!2938864)))

(declare-fun c!804943 () Bool)

(assert (=> b!4711970 (= c!804943 call!329453)))

(declare-fun b!4711971 () Bool)

(assert (=> b!4711971 (= e!2938866 (not (contains!16005 (keys!18891 lt!1876277) key!4653)))))

(declare-fun b!4711972 () Bool)

(assert (=> b!4711972 false))

(declare-fun lt!1876516 () Unit!128138)

(declare-fun lt!1876522 () Unit!128138)

(assert (=> b!4711972 (= lt!1876516 lt!1876522)))

(assert (=> b!4711972 (containsKey!3274 (toList!5817 lt!1876277) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!917 (List!52821 K!14060) Unit!128138)

(assert (=> b!4711972 (= lt!1876522 (lemmaInGetKeysListThenContainsKey!917 (toList!5817 lt!1876277) key!4653))))

(declare-fun Unit!128166 () Unit!128138)

(assert (=> b!4711972 (= e!2938864 Unit!128166)))

(assert (= (and d!1499352 c!804945) b!4711965))

(assert (= (and d!1499352 (not c!804945)) b!4711970))

(assert (= (and b!4711970 c!804943) b!4711972))

(assert (= (and b!4711970 (not c!804943)) b!4711969))

(assert (= (or b!4711965 b!4711970) bm!329448))

(assert (= (and bm!329448 c!804944) b!4711966))

(assert (= (and bm!329448 (not c!804944)) b!4711967))

(assert (= (and d!1499352 res!1991687) b!4711971))

(assert (= (and d!1499352 (not res!1991685)) b!4711968))

(assert (= (and b!4711968 res!1991686) b!4711964))

(declare-fun m!5638195 () Bool)

(assert (=> d!1499352 m!5638195))

(assert (=> b!4711972 m!5638195))

(declare-fun m!5638197 () Bool)

(assert (=> b!4711972 m!5638197))

(declare-fun m!5638199 () Bool)

(assert (=> b!4711967 m!5638199))

(declare-fun m!5638201 () Bool)

(assert (=> b!4711966 m!5638201))

(assert (=> b!4711971 m!5638199))

(assert (=> b!4711971 m!5638199))

(declare-fun m!5638203 () Bool)

(assert (=> b!4711971 m!5638203))

(assert (=> b!4711964 m!5638199))

(assert (=> b!4711964 m!5638199))

(assert (=> b!4711964 m!5638203))

(declare-fun m!5638205 () Bool)

(assert (=> b!4711965 m!5638205))

(declare-fun m!5638207 () Bool)

(assert (=> b!4711965 m!5638207))

(assert (=> b!4711965 m!5638207))

(declare-fun m!5638209 () Bool)

(assert (=> b!4711965 m!5638209))

(declare-fun m!5638211 () Bool)

(assert (=> b!4711965 m!5638211))

(assert (=> b!4711968 m!5638207))

(assert (=> b!4711968 m!5638207))

(assert (=> b!4711968 m!5638209))

(declare-fun m!5638213 () Bool)

(assert (=> bm!329448 m!5638213))

(assert (=> b!4711764 d!1499352))

(declare-fun bs!1102488 () Bool)

(declare-fun d!1499358 () Bool)

(assert (= bs!1102488 (and d!1499358 start!478800)))

(declare-fun lambda!213004 () Int)

(assert (=> bs!1102488 (= lambda!213004 lambda!212915)))

(declare-fun bs!1102489 () Bool)

(assert (= bs!1102489 (and d!1499358 d!1499334)))

(assert (=> bs!1102489 (= lambda!213004 lambda!212999)))

(declare-fun lt!1876525 () ListMap!5181)

(assert (=> d!1499358 (invariantList!1478 (toList!5817 lt!1876525))))

(declare-fun e!2938872 () ListMap!5181)

(assert (=> d!1499358 (= lt!1876525 e!2938872)))

(declare-fun c!804950 () Bool)

(assert (=> d!1499358 (= c!804950 ((_ is Cons!52698) (toList!5818 lm!2023)))))

(assert (=> d!1499358 (forall!11499 (toList!5818 lm!2023) lambda!213004)))

(assert (=> d!1499358 (= (extractMap!1990 (toList!5818 lm!2023)) lt!1876525)))

(declare-fun b!4711981 () Bool)

(assert (=> b!4711981 (= e!2938872 (addToMapMapFromBucket!1394 (_2!30420 (h!59011 (toList!5818 lm!2023))) (extractMap!1990 (t!360064 (toList!5818 lm!2023)))))))

(declare-fun b!4711982 () Bool)

(assert (=> b!4711982 (= e!2938872 (ListMap!5182 Nil!52697))))

(assert (= (and d!1499358 c!804950) b!4711981))

(assert (= (and d!1499358 (not c!804950)) b!4711982))

(declare-fun m!5638215 () Bool)

(assert (=> d!1499358 m!5638215))

(declare-fun m!5638217 () Bool)

(assert (=> d!1499358 m!5638217))

(assert (=> b!4711981 m!5637981))

(assert (=> b!4711981 m!5637981))

(assert (=> b!4711981 m!5637983))

(assert (=> b!4711764 d!1499358))

(declare-fun d!1499360 () Bool)

(declare-fun hash!4294 (Hashable!6333 K!14060) (_ BitVec 64))

(assert (=> d!1499360 (= (hash!4292 hashF!1323 key!4653) (hash!4294 hashF!1323 key!4653))))

(declare-fun bs!1102490 () Bool)

(assert (= bs!1102490 d!1499360))

(declare-fun m!5638223 () Bool)

(assert (=> bs!1102490 m!5638223))

(assert (=> b!4711770 d!1499360))

(declare-fun d!1499364 () Bool)

(declare-fun res!1991694 () Bool)

(declare-fun e!2938881 () Bool)

(assert (=> d!1499364 (=> res!1991694 e!2938881)))

(assert (=> d!1499364 (= res!1991694 (not ((_ is Cons!52697) oldBucket!34)))))

(assert (=> d!1499364 (= (noDuplicateKeys!1964 oldBucket!34) e!2938881)))

(declare-fun b!4711993 () Bool)

(declare-fun e!2938882 () Bool)

(assert (=> b!4711993 (= e!2938881 e!2938882)))

(declare-fun res!1991695 () Bool)

(assert (=> b!4711993 (=> (not res!1991695) (not e!2938882))))

(assert (=> b!4711993 (= res!1991695 (not (containsKey!3271 (t!360063 oldBucket!34) (_1!30419 (h!59010 oldBucket!34)))))))

(declare-fun b!4711994 () Bool)

(assert (=> b!4711994 (= e!2938882 (noDuplicateKeys!1964 (t!360063 oldBucket!34)))))

(assert (= (and d!1499364 (not res!1991694)) b!4711993))

(assert (= (and b!4711993 res!1991695) b!4711994))

(declare-fun m!5638229 () Bool)

(assert (=> b!4711993 m!5638229))

(declare-fun m!5638231 () Bool)

(assert (=> b!4711994 m!5638231))

(assert (=> b!4711760 d!1499364))

(declare-fun bs!1102492 () Bool)

(declare-fun d!1499368 () Bool)

(assert (= bs!1102492 (and d!1499368 b!4711882)))

(declare-fun lambda!213008 () Int)

(assert (=> bs!1102492 (not (= lambda!213008 lambda!212991))))

(assert (=> bs!1102492 (not (= lambda!213008 lambda!212990))))

(declare-fun bs!1102495 () Bool)

(assert (= bs!1102495 (and d!1499368 b!4711883)))

(assert (=> bs!1102495 (not (= lambda!213008 lambda!212989))))

(declare-fun bs!1102497 () Bool)

(assert (= bs!1102497 (and d!1499368 d!1499348)))

(assert (=> bs!1102497 (= lambda!213008 lambda!213002)))

(declare-fun bs!1102499 () Bool)

(assert (= bs!1102499 (and d!1499368 d!1499306)))

(assert (=> bs!1102499 (not (= lambda!213008 lambda!212992))))

(assert (=> d!1499368 true))

(assert (=> d!1499368 true))

(assert (=> d!1499368 (= (allKeysSameHash!1790 newBucket!218 hash!405 hashF!1323) (forall!11501 newBucket!218 lambda!213008))))

(declare-fun bs!1102501 () Bool)

(assert (= bs!1102501 d!1499368))

(declare-fun m!5638235 () Bool)

(assert (=> bs!1102501 m!5638235))

(assert (=> b!4711761 d!1499368))

(declare-fun d!1499370 () Bool)

(declare-fun res!1991700 () Bool)

(declare-fun e!2938894 () Bool)

(assert (=> d!1499370 (=> res!1991700 e!2938894)))

(assert (=> d!1499370 (= res!1991700 ((_ is Nil!52698) (toList!5818 lm!2023)))))

(assert (=> d!1499370 (= (forall!11499 (toList!5818 lm!2023) lambda!212915) e!2938894)))

(declare-fun b!4712012 () Bool)

(declare-fun e!2938895 () Bool)

(assert (=> b!4712012 (= e!2938894 e!2938895)))

(declare-fun res!1991701 () Bool)

(assert (=> b!4712012 (=> (not res!1991701) (not e!2938895))))

(declare-fun dynLambda!21781 (Int tuple2!54252) Bool)

(assert (=> b!4712012 (= res!1991701 (dynLambda!21781 lambda!212915 (h!59011 (toList!5818 lm!2023))))))

(declare-fun b!4712013 () Bool)

(assert (=> b!4712013 (= e!2938895 (forall!11499 (t!360064 (toList!5818 lm!2023)) lambda!212915))))

(assert (= (and d!1499370 (not res!1991700)) b!4712012))

(assert (= (and b!4712012 res!1991701) b!4712013))

(declare-fun b_lambda!177669 () Bool)

(assert (=> (not b_lambda!177669) (not b!4712012)))

(declare-fun m!5638239 () Bool)

(assert (=> b!4712012 m!5638239))

(declare-fun m!5638241 () Bool)

(assert (=> b!4712013 m!5638241))

(assert (=> start!478800 d!1499370))

(declare-fun d!1499376 () Bool)

(declare-fun isStrictlySorted!717 (List!52822) Bool)

(assert (=> d!1499376 (= (inv!67934 lm!2023) (isStrictlySorted!717 (toList!5818 lm!2023)))))

(declare-fun bs!1102504 () Bool)

(assert (= bs!1102504 d!1499376))

(declare-fun m!5638243 () Bool)

(assert (=> bs!1102504 m!5638243))

(assert (=> start!478800 d!1499376))

(declare-fun bs!1102505 () Bool)

(declare-fun d!1499378 () Bool)

(assert (= bs!1102505 (and d!1499378 start!478800)))

(declare-fun lambda!213011 () Int)

(assert (=> bs!1102505 (not (= lambda!213011 lambda!212915))))

(declare-fun bs!1102506 () Bool)

(assert (= bs!1102506 (and d!1499378 d!1499334)))

(assert (=> bs!1102506 (not (= lambda!213011 lambda!212999))))

(declare-fun bs!1102507 () Bool)

(assert (= bs!1102507 (and d!1499378 d!1499358)))

(assert (=> bs!1102507 (not (= lambda!213011 lambda!213004))))

(assert (=> d!1499378 true))

(assert (=> d!1499378 (= (allKeysSameHashInMap!1878 lm!2023 hashF!1323) (forall!11499 (toList!5818 lm!2023) lambda!213011))))

(declare-fun bs!1102508 () Bool)

(assert (= bs!1102508 d!1499378))

(declare-fun m!5638245 () Bool)

(assert (=> bs!1102508 m!5638245))

(assert (=> b!4711768 d!1499378))

(declare-fun d!1499380 () Bool)

(declare-fun tail!8874 (List!52822) List!52822)

(assert (=> d!1499380 (= (tail!8872 lm!2023) (ListLongMap!4348 (tail!8874 (toList!5818 lm!2023))))))

(declare-fun bs!1102509 () Bool)

(assert (= bs!1102509 d!1499380))

(declare-fun m!5638247 () Bool)

(assert (=> bs!1102509 m!5638247))

(assert (=> b!4711769 d!1499380))

(declare-fun d!1499382 () Bool)

(declare-fun lt!1876529 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9340 (List!52822) (InoxSet tuple2!54252))

(assert (=> d!1499382 (= lt!1876529 (select (content!9340 (toList!5818 lm!2023)) lt!1876284))))

(declare-fun e!2938901 () Bool)

(assert (=> d!1499382 (= lt!1876529 e!2938901)))

(declare-fun res!1991706 () Bool)

(assert (=> d!1499382 (=> (not res!1991706) (not e!2938901))))

(assert (=> d!1499382 (= res!1991706 ((_ is Cons!52698) (toList!5818 lm!2023)))))

(assert (=> d!1499382 (= (contains!16001 (toList!5818 lm!2023) lt!1876284) lt!1876529)))

(declare-fun b!4712020 () Bool)

(declare-fun e!2938900 () Bool)

(assert (=> b!4712020 (= e!2938901 e!2938900)))

(declare-fun res!1991707 () Bool)

(assert (=> b!4712020 (=> res!1991707 e!2938900)))

(assert (=> b!4712020 (= res!1991707 (= (h!59011 (toList!5818 lm!2023)) lt!1876284))))

(declare-fun b!4712021 () Bool)

(assert (=> b!4712021 (= e!2938900 (contains!16001 (t!360064 (toList!5818 lm!2023)) lt!1876284))))

(assert (= (and d!1499382 res!1991706) b!4712020))

(assert (= (and b!4712020 (not res!1991707)) b!4712021))

(declare-fun m!5638249 () Bool)

(assert (=> d!1499382 m!5638249))

(declare-fun m!5638251 () Bool)

(assert (=> d!1499382 m!5638251))

(declare-fun m!5638253 () Bool)

(assert (=> b!4712021 m!5638253))

(assert (=> b!4711765 d!1499382))

(declare-fun d!1499384 () Bool)

(assert (=> d!1499384 (dynLambda!21781 lambda!212915 lt!1876284)))

(declare-fun lt!1876532 () Unit!128138)

(declare-fun choose!33133 (List!52822 Int tuple2!54252) Unit!128138)

(assert (=> d!1499384 (= lt!1876532 (choose!33133 (toList!5818 lm!2023) lambda!212915 lt!1876284))))

(declare-fun e!2938904 () Bool)

(assert (=> d!1499384 e!2938904))

(declare-fun res!1991710 () Bool)

(assert (=> d!1499384 (=> (not res!1991710) (not e!2938904))))

(assert (=> d!1499384 (= res!1991710 (forall!11499 (toList!5818 lm!2023) lambda!212915))))

(assert (=> d!1499384 (= (forallContained!3568 (toList!5818 lm!2023) lambda!212915 lt!1876284) lt!1876532)))

(declare-fun b!4712024 () Bool)

(assert (=> b!4712024 (= e!2938904 (contains!16001 (toList!5818 lm!2023) lt!1876284))))

(assert (= (and d!1499384 res!1991710) b!4712024))

(declare-fun b_lambda!177671 () Bool)

(assert (=> (not b_lambda!177671) (not d!1499384)))

(declare-fun m!5638255 () Bool)

(assert (=> d!1499384 m!5638255))

(declare-fun m!5638257 () Bool)

(assert (=> d!1499384 m!5638257))

(assert (=> d!1499384 m!5637947))

(assert (=> b!4712024 m!5637971))

(assert (=> b!4711765 d!1499384))

(declare-fun bs!1102510 () Bool)

(declare-fun d!1499386 () Bool)

(assert (= bs!1102510 (and d!1499386 start!478800)))

(declare-fun lambda!213014 () Int)

(assert (=> bs!1102510 (= lambda!213014 lambda!212915)))

(declare-fun bs!1102511 () Bool)

(assert (= bs!1102511 (and d!1499386 d!1499334)))

(assert (=> bs!1102511 (= lambda!213014 lambda!212999)))

(declare-fun bs!1102512 () Bool)

(assert (= bs!1102512 (and d!1499386 d!1499358)))

(assert (=> bs!1102512 (= lambda!213014 lambda!213004)))

(declare-fun bs!1102513 () Bool)

(assert (= bs!1102513 (and d!1499386 d!1499378)))

(assert (=> bs!1102513 (not (= lambda!213014 lambda!213011))))

(assert (=> d!1499386 (contains!16002 lm!2023 (hash!4292 hashF!1323 key!4653))))

(declare-fun lt!1876535 () Unit!128138)

(declare-fun choose!33134 (ListLongMap!4347 K!14060 Hashable!6333) Unit!128138)

(assert (=> d!1499386 (= lt!1876535 (choose!33134 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1499386 (forall!11499 (toList!5818 lm!2023) lambda!213014)))

(assert (=> d!1499386 (= (lemmaInGenMapThenLongMapContainsHash!736 lm!2023 key!4653 hashF!1323) lt!1876535)))

(declare-fun bs!1102514 () Bool)

(assert (= bs!1102514 d!1499386))

(assert (=> bs!1102514 m!5637941))

(assert (=> bs!1102514 m!5637941))

(declare-fun m!5638259 () Bool)

(assert (=> bs!1102514 m!5638259))

(declare-fun m!5638261 () Bool)

(assert (=> bs!1102514 m!5638261))

(declare-fun m!5638263 () Bool)

(assert (=> bs!1102514 m!5638263))

(assert (=> b!4711765 d!1499386))

(declare-fun d!1499388 () Bool)

(assert (=> d!1499388 (contains!16001 (toList!5818 lm!2023) (tuple2!54253 lt!1876276 lt!1876279))))

(declare-fun lt!1876538 () Unit!128138)

(declare-fun choose!33135 (ListLongMap!4347 (_ BitVec 64) List!52821) Unit!128138)

(assert (=> d!1499388 (= lt!1876538 (choose!33135 lm!2023 lt!1876276 lt!1876279))))

(assert (=> d!1499388 (contains!16002 lm!2023 lt!1876276)))

(assert (=> d!1499388 (= (lemmaGetValueImpliesTupleContained!335 lm!2023 lt!1876276 lt!1876279) lt!1876538)))

(declare-fun bs!1102515 () Bool)

(assert (= bs!1102515 d!1499388))

(declare-fun m!5638265 () Bool)

(assert (=> bs!1102515 m!5638265))

(declare-fun m!5638267 () Bool)

(assert (=> bs!1102515 m!5638267))

(assert (=> bs!1102515 m!5637961))

(assert (=> b!4711765 d!1499388))

(declare-fun bs!1102516 () Bool)

(declare-fun d!1499390 () Bool)

(assert (= bs!1102516 (and d!1499390 d!1499378)))

(declare-fun lambda!213021 () Int)

(assert (=> bs!1102516 (not (= lambda!213021 lambda!213011))))

(declare-fun bs!1102517 () Bool)

(assert (= bs!1102517 (and d!1499390 d!1499386)))

(assert (=> bs!1102517 (= lambda!213021 lambda!213014)))

(declare-fun bs!1102518 () Bool)

(assert (= bs!1102518 (and d!1499390 d!1499334)))

(assert (=> bs!1102518 (= lambda!213021 lambda!212999)))

(declare-fun bs!1102519 () Bool)

(assert (= bs!1102519 (and d!1499390 d!1499358)))

(assert (=> bs!1102519 (= lambda!213021 lambda!213004)))

(declare-fun bs!1102520 () Bool)

(assert (= bs!1102520 (and d!1499390 start!478800)))

(assert (=> bs!1102520 (= lambda!213021 lambda!212915)))

(declare-fun b!4712034 () Bool)

(declare-fun res!1991720 () Bool)

(declare-fun e!2938910 () Bool)

(assert (=> b!4712034 (=> (not res!1991720) (not e!2938910))))

(assert (=> b!4712034 (= res!1991720 (allKeysSameHashInMap!1878 lm!2023 hashF!1323))))

(declare-fun b!4712035 () Bool)

(declare-fun res!1991719 () Bool)

(assert (=> b!4712035 (=> (not res!1991719) (not e!2938910))))

(assert (=> b!4712035 (= res!1991719 (contains!16000 (extractMap!1990 (toList!5818 lm!2023)) key!4653))))

(declare-fun b!4712036 () Bool)

(assert (=> b!4712036 (= e!2938910 (isDefined!9528 (getPair!530 (apply!12413 lm!2023 (hash!4292 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1876561 () Unit!128138)

(assert (=> b!4712036 (= lt!1876561 (forallContained!3568 (toList!5818 lm!2023) lambda!213021 (tuple2!54253 (hash!4292 hashF!1323 key!4653) (apply!12413 lm!2023 (hash!4292 hashF!1323 key!4653)))))))

(declare-fun lt!1876559 () Unit!128138)

(declare-fun lt!1876560 () Unit!128138)

(assert (=> b!4712036 (= lt!1876559 lt!1876560)))

(declare-fun lt!1876555 () (_ BitVec 64))

(declare-fun lt!1876562 () List!52821)

(assert (=> b!4712036 (contains!16001 (toList!5818 lm!2023) (tuple2!54253 lt!1876555 lt!1876562))))

(assert (=> b!4712036 (= lt!1876560 (lemmaGetValueImpliesTupleContained!335 lm!2023 lt!1876555 lt!1876562))))

(declare-fun e!2938909 () Bool)

(assert (=> b!4712036 e!2938909))

(declare-fun res!1991721 () Bool)

(assert (=> b!4712036 (=> (not res!1991721) (not e!2938909))))

(assert (=> b!4712036 (= res!1991721 (contains!16002 lm!2023 lt!1876555))))

(assert (=> b!4712036 (= lt!1876562 (apply!12413 lm!2023 (hash!4292 hashF!1323 key!4653)))))

(assert (=> b!4712036 (= lt!1876555 (hash!4292 hashF!1323 key!4653))))

(declare-fun lt!1876558 () Unit!128138)

(declare-fun lt!1876557 () Unit!128138)

(assert (=> b!4712036 (= lt!1876558 lt!1876557)))

(assert (=> b!4712036 (contains!16002 lm!2023 (hash!4292 hashF!1323 key!4653))))

(assert (=> b!4712036 (= lt!1876557 (lemmaInGenMapThenLongMapContainsHash!736 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4712037 () Bool)

(declare-datatypes ((Option!12277 0))(
  ( (None!12276) (Some!12276 (v!46807 List!52821)) )
))
(declare-fun getValueByKey!1905 (List!52822 (_ BitVec 64)) Option!12277)

(assert (=> b!4712037 (= e!2938909 (= (getValueByKey!1905 (toList!5818 lm!2023) lt!1876555) (Some!12276 lt!1876562)))))

(assert (=> d!1499390 e!2938910))

(declare-fun res!1991722 () Bool)

(assert (=> d!1499390 (=> (not res!1991722) (not e!2938910))))

(assert (=> d!1499390 (= res!1991722 (forall!11499 (toList!5818 lm!2023) lambda!213021))))

(declare-fun lt!1876556 () Unit!128138)

(declare-fun choose!33136 (ListLongMap!4347 K!14060 Hashable!6333) Unit!128138)

(assert (=> d!1499390 (= lt!1876556 (choose!33136 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1499390 (forall!11499 (toList!5818 lm!2023) lambda!213021)))

(assert (=> d!1499390 (= (lemmaInGenMapThenGetPairDefined!326 lm!2023 key!4653 hashF!1323) lt!1876556)))

(assert (= (and d!1499390 res!1991722) b!4712034))

(assert (= (and b!4712034 res!1991720) b!4712035))

(assert (= (and b!4712035 res!1991719) b!4712036))

(assert (= (and b!4712036 res!1991721) b!4712037))

(assert (=> b!4712034 m!5637937))

(assert (=> b!4712035 m!5637987))

(assert (=> b!4712035 m!5637987))

(declare-fun m!5638269 () Bool)

(assert (=> b!4712035 m!5638269))

(declare-fun m!5638271 () Bool)

(assert (=> b!4712036 m!5638271))

(declare-fun m!5638273 () Bool)

(assert (=> b!4712036 m!5638273))

(declare-fun m!5638275 () Bool)

(assert (=> b!4712036 m!5638275))

(declare-fun m!5638277 () Bool)

(assert (=> b!4712036 m!5638277))

(assert (=> b!4712036 m!5637955))

(assert (=> b!4712036 m!5637941))

(assert (=> b!4712036 m!5638259))

(assert (=> b!4712036 m!5637941))

(declare-fun m!5638279 () Bool)

(assert (=> b!4712036 m!5638279))

(assert (=> b!4712036 m!5638279))

(assert (=> b!4712036 m!5638275))

(assert (=> b!4712036 m!5637941))

(declare-fun m!5638281 () Bool)

(assert (=> b!4712036 m!5638281))

(declare-fun m!5638283 () Bool)

(assert (=> b!4712036 m!5638283))

(declare-fun m!5638285 () Bool)

(assert (=> d!1499390 m!5638285))

(declare-fun m!5638287 () Bool)

(assert (=> d!1499390 m!5638287))

(assert (=> d!1499390 m!5638285))

(declare-fun m!5638289 () Bool)

(assert (=> b!4712037 m!5638289))

(assert (=> b!4711765 d!1499390))

(declare-fun d!1499392 () Bool)

(assert (=> d!1499392 (containsKey!3271 oldBucket!34 key!4653)))

(declare-fun lt!1876565 () Unit!128138)

(declare-fun choose!33137 (List!52821 K!14060 Hashable!6333) Unit!128138)

(assert (=> d!1499392 (= lt!1876565 (choose!33137 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1499392 (noDuplicateKeys!1964 oldBucket!34)))

(assert (=> d!1499392 (= (lemmaGetPairDefinedThenContainsKey!278 oldBucket!34 key!4653 hashF!1323) lt!1876565)))

(declare-fun bs!1102521 () Bool)

(assert (= bs!1102521 d!1499392))

(assert (=> bs!1102521 m!5637967))

(declare-fun m!5638291 () Bool)

(assert (=> bs!1102521 m!5638291))

(assert (=> bs!1102521 m!5637939))

(assert (=> b!4711765 d!1499392))

(declare-fun d!1499394 () Bool)

(declare-fun res!1991727 () Bool)

(declare-fun e!2938915 () Bool)

(assert (=> d!1499394 (=> res!1991727 e!2938915)))

(assert (=> d!1499394 (= res!1991727 (and ((_ is Cons!52697) (t!360063 oldBucket!34)) (= (_1!30419 (h!59010 (t!360063 oldBucket!34))) key!4653)))))

(assert (=> d!1499394 (= (containsKey!3271 (t!360063 oldBucket!34) key!4653) e!2938915)))

(declare-fun b!4712042 () Bool)

(declare-fun e!2938916 () Bool)

(assert (=> b!4712042 (= e!2938915 e!2938916)))

(declare-fun res!1991728 () Bool)

(assert (=> b!4712042 (=> (not res!1991728) (not e!2938916))))

(assert (=> b!4712042 (= res!1991728 ((_ is Cons!52697) (t!360063 oldBucket!34)))))

(declare-fun b!4712043 () Bool)

(assert (=> b!4712043 (= e!2938916 (containsKey!3271 (t!360063 (t!360063 oldBucket!34)) key!4653))))

(assert (= (and d!1499394 (not res!1991727)) b!4712042))

(assert (= (and b!4712042 res!1991728) b!4712043))

(declare-fun m!5638293 () Bool)

(assert (=> b!4712043 m!5638293))

(assert (=> b!4711765 d!1499394))

(declare-fun d!1499396 () Bool)

(declare-fun res!1991729 () Bool)

(declare-fun e!2938917 () Bool)

(assert (=> d!1499396 (=> res!1991729 e!2938917)))

(assert (=> d!1499396 (= res!1991729 (and ((_ is Cons!52697) oldBucket!34) (= (_1!30419 (h!59010 oldBucket!34)) key!4653)))))

(assert (=> d!1499396 (= (containsKey!3271 oldBucket!34 key!4653) e!2938917)))

(declare-fun b!4712044 () Bool)

(declare-fun e!2938918 () Bool)

(assert (=> b!4712044 (= e!2938917 e!2938918)))

(declare-fun res!1991730 () Bool)

(assert (=> b!4712044 (=> (not res!1991730) (not e!2938918))))

(assert (=> b!4712044 (= res!1991730 ((_ is Cons!52697) oldBucket!34))))

(declare-fun b!4712045 () Bool)

(assert (=> b!4712045 (= e!2938918 (containsKey!3271 (t!360063 oldBucket!34) key!4653))))

(assert (= (and d!1499396 (not res!1991729)) b!4712044))

(assert (= (and b!4712044 res!1991730) b!4712045))

(assert (=> b!4712045 m!5637959))

(assert (=> b!4711765 d!1499396))

(declare-fun d!1499398 () Bool)

(declare-fun get!17660 (Option!12277) List!52821)

(assert (=> d!1499398 (= (apply!12413 lm!2023 lt!1876276) (get!17660 (getValueByKey!1905 (toList!5818 lm!2023) lt!1876276)))))

(declare-fun bs!1102522 () Bool)

(assert (= bs!1102522 d!1499398))

(declare-fun m!5638295 () Bool)

(assert (=> bs!1102522 m!5638295))

(assert (=> bs!1102522 m!5638295))

(declare-fun m!5638297 () Bool)

(assert (=> bs!1102522 m!5638297))

(assert (=> b!4711765 d!1499398))

(declare-fun d!1499400 () Bool)

(declare-fun isEmpty!29150 (Option!12273) Bool)

(assert (=> d!1499400 (= (isDefined!9528 (getPair!530 lt!1876279 key!4653)) (not (isEmpty!29150 (getPair!530 lt!1876279 key!4653))))))

(declare-fun bs!1102523 () Bool)

(assert (= bs!1102523 d!1499400))

(assert (=> bs!1102523 m!5637965))

(declare-fun m!5638299 () Bool)

(assert (=> bs!1102523 m!5638299))

(assert (=> b!4711765 d!1499400))

(declare-fun d!1499402 () Bool)

(declare-fun e!2938924 () Bool)

(assert (=> d!1499402 e!2938924))

(declare-fun res!1991733 () Bool)

(assert (=> d!1499402 (=> res!1991733 e!2938924)))

(declare-fun lt!1876575 () Bool)

(assert (=> d!1499402 (= res!1991733 (not lt!1876575))))

(declare-fun lt!1876574 () Bool)

(assert (=> d!1499402 (= lt!1876575 lt!1876574)))

(declare-fun lt!1876576 () Unit!128138)

(declare-fun e!2938923 () Unit!128138)

(assert (=> d!1499402 (= lt!1876576 e!2938923)))

(declare-fun c!804955 () Bool)

(assert (=> d!1499402 (= c!804955 lt!1876574)))

(declare-fun containsKey!3275 (List!52822 (_ BitVec 64)) Bool)

(assert (=> d!1499402 (= lt!1876574 (containsKey!3275 (toList!5818 lm!2023) lt!1876276))))

(assert (=> d!1499402 (= (contains!16002 lm!2023 lt!1876276) lt!1876575)))

(declare-fun b!4712052 () Bool)

(declare-fun lt!1876577 () Unit!128138)

(assert (=> b!4712052 (= e!2938923 lt!1876577)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1797 (List!52822 (_ BitVec 64)) Unit!128138)

(assert (=> b!4712052 (= lt!1876577 (lemmaContainsKeyImpliesGetValueByKeyDefined!1797 (toList!5818 lm!2023) lt!1876276))))

(declare-fun isDefined!9532 (Option!12277) Bool)

(assert (=> b!4712052 (isDefined!9532 (getValueByKey!1905 (toList!5818 lm!2023) lt!1876276))))

(declare-fun b!4712053 () Bool)

(declare-fun Unit!128167 () Unit!128138)

(assert (=> b!4712053 (= e!2938923 Unit!128167)))

(declare-fun b!4712054 () Bool)

(assert (=> b!4712054 (= e!2938924 (isDefined!9532 (getValueByKey!1905 (toList!5818 lm!2023) lt!1876276)))))

(assert (= (and d!1499402 c!804955) b!4712052))

(assert (= (and d!1499402 (not c!804955)) b!4712053))

(assert (= (and d!1499402 (not res!1991733)) b!4712054))

(declare-fun m!5638301 () Bool)

(assert (=> d!1499402 m!5638301))

(declare-fun m!5638303 () Bool)

(assert (=> b!4712052 m!5638303))

(assert (=> b!4712052 m!5638295))

(assert (=> b!4712052 m!5638295))

(declare-fun m!5638305 () Bool)

(assert (=> b!4712052 m!5638305))

(assert (=> b!4712054 m!5638295))

(assert (=> b!4712054 m!5638295))

(assert (=> b!4712054 m!5638305))

(assert (=> b!4711765 d!1499402))

(declare-fun b!4712071 () Bool)

(declare-fun e!2938936 () Option!12273)

(assert (=> b!4712071 (= e!2938936 (Some!12272 (h!59010 lt!1876279)))))

(declare-fun b!4712072 () Bool)

(declare-fun res!1991742 () Bool)

(declare-fun e!2938939 () Bool)

(assert (=> b!4712072 (=> (not res!1991742) (not e!2938939))))

(declare-fun lt!1876580 () Option!12273)

(declare-fun get!17661 (Option!12273) tuple2!54250)

(assert (=> b!4712072 (= res!1991742 (= (_1!30419 (get!17661 lt!1876580)) key!4653))))

(declare-fun b!4712073 () Bool)

(declare-fun e!2938938 () Bool)

(assert (=> b!4712073 (= e!2938938 e!2938939)))

(declare-fun res!1991744 () Bool)

(assert (=> b!4712073 (=> (not res!1991744) (not e!2938939))))

(assert (=> b!4712073 (= res!1991744 (isDefined!9528 lt!1876580))))

(declare-fun b!4712074 () Bool)

(declare-fun e!2938935 () Option!12273)

(assert (=> b!4712074 (= e!2938935 None!12272)))

(declare-fun b!4712075 () Bool)

(assert (=> b!4712075 (= e!2938936 e!2938935)))

(declare-fun c!804961 () Bool)

(assert (=> b!4712075 (= c!804961 ((_ is Cons!52697) lt!1876279))))

(declare-fun b!4712076 () Bool)

(declare-fun e!2938937 () Bool)

(assert (=> b!4712076 (= e!2938937 (not (containsKey!3271 lt!1876279 key!4653)))))

(declare-fun b!4712077 () Bool)

(declare-fun contains!16006 (List!52821 tuple2!54250) Bool)

(assert (=> b!4712077 (= e!2938939 (contains!16006 lt!1876279 (get!17661 lt!1876580)))))

(declare-fun b!4712078 () Bool)

(assert (=> b!4712078 (= e!2938935 (getPair!530 (t!360063 lt!1876279) key!4653))))

(declare-fun d!1499404 () Bool)

(assert (=> d!1499404 e!2938938))

(declare-fun res!1991743 () Bool)

(assert (=> d!1499404 (=> res!1991743 e!2938938)))

(assert (=> d!1499404 (= res!1991743 e!2938937)))

(declare-fun res!1991745 () Bool)

(assert (=> d!1499404 (=> (not res!1991745) (not e!2938937))))

(assert (=> d!1499404 (= res!1991745 (isEmpty!29150 lt!1876580))))

(assert (=> d!1499404 (= lt!1876580 e!2938936)))

(declare-fun c!804960 () Bool)

(assert (=> d!1499404 (= c!804960 (and ((_ is Cons!52697) lt!1876279) (= (_1!30419 (h!59010 lt!1876279)) key!4653)))))

(assert (=> d!1499404 (noDuplicateKeys!1964 lt!1876279)))

(assert (=> d!1499404 (= (getPair!530 lt!1876279 key!4653) lt!1876580)))

(assert (= (and d!1499404 c!804960) b!4712071))

(assert (= (and d!1499404 (not c!804960)) b!4712075))

(assert (= (and b!4712075 c!804961) b!4712078))

(assert (= (and b!4712075 (not c!804961)) b!4712074))

(assert (= (and d!1499404 res!1991745) b!4712076))

(assert (= (and d!1499404 (not res!1991743)) b!4712073))

(assert (= (and b!4712073 res!1991744) b!4712072))

(assert (= (and b!4712072 res!1991742) b!4712077))

(declare-fun m!5638307 () Bool)

(assert (=> b!4712073 m!5638307))

(declare-fun m!5638309 () Bool)

(assert (=> b!4712076 m!5638309))

(declare-fun m!5638311 () Bool)

(assert (=> d!1499404 m!5638311))

(declare-fun m!5638313 () Bool)

(assert (=> d!1499404 m!5638313))

(declare-fun m!5638315 () Bool)

(assert (=> b!4712077 m!5638315))

(assert (=> b!4712077 m!5638315))

(declare-fun m!5638317 () Bool)

(assert (=> b!4712077 m!5638317))

(declare-fun m!5638319 () Bool)

(assert (=> b!4712078 m!5638319))

(assert (=> b!4712072 m!5638315))

(assert (=> b!4711765 d!1499404))

(declare-fun d!1499406 () Bool)

(declare-fun res!1991746 () Bool)

(declare-fun e!2938940 () Bool)

(assert (=> d!1499406 (=> res!1991746 e!2938940)))

(assert (=> d!1499406 (= res!1991746 (not ((_ is Cons!52697) newBucket!218)))))

(assert (=> d!1499406 (= (noDuplicateKeys!1964 newBucket!218) e!2938940)))

(declare-fun b!4712079 () Bool)

(declare-fun e!2938941 () Bool)

(assert (=> b!4712079 (= e!2938940 e!2938941)))

(declare-fun res!1991747 () Bool)

(assert (=> b!4712079 (=> (not res!1991747) (not e!2938941))))

(assert (=> b!4712079 (= res!1991747 (not (containsKey!3271 (t!360063 newBucket!218) (_1!30419 (h!59010 newBucket!218)))))))

(declare-fun b!4712080 () Bool)

(assert (=> b!4712080 (= e!2938941 (noDuplicateKeys!1964 (t!360063 newBucket!218)))))

(assert (= (and d!1499406 (not res!1991746)) b!4712079))

(assert (= (and b!4712079 res!1991747) b!4712080))

(declare-fun m!5638321 () Bool)

(assert (=> b!4712079 m!5638321))

(declare-fun m!5638323 () Bool)

(assert (=> b!4712080 m!5638323))

(assert (=> b!4711767 d!1499406))

(declare-fun b!4712085 () Bool)

(declare-fun e!2938944 () Bool)

(declare-fun tp!1347602 () Bool)

(declare-fun tp!1347603 () Bool)

(assert (=> b!4712085 (= e!2938944 (and tp!1347602 tp!1347603))))

(assert (=> b!4711762 (= tp!1347586 e!2938944)))

(assert (= (and b!4711762 ((_ is Cons!52698) (toList!5818 lm!2023))) b!4712085))

(declare-fun e!2938947 () Bool)

(declare-fun b!4712090 () Bool)

(declare-fun tp!1347606 () Bool)

(assert (=> b!4712090 (= e!2938947 (and tp_is_empty!31149 tp_is_empty!31151 tp!1347606))))

(assert (=> b!4711766 (= tp!1347587 e!2938947)))

(assert (= (and b!4711766 ((_ is Cons!52697) (t!360063 oldBucket!34))) b!4712090))

(declare-fun b!4712091 () Bool)

(declare-fun tp!1347607 () Bool)

(declare-fun e!2938948 () Bool)

(assert (=> b!4712091 (= e!2938948 (and tp_is_empty!31149 tp_is_empty!31151 tp!1347607))))

(assert (=> b!4711772 (= tp!1347585 e!2938948)))

(assert (= (and b!4711772 ((_ is Cons!52697) (t!360063 newBucket!218))) b!4712091))

(declare-fun b_lambda!177673 () Bool)

(assert (= b_lambda!177669 (or start!478800 b_lambda!177673)))

(declare-fun bs!1102524 () Bool)

(declare-fun d!1499408 () Bool)

(assert (= bs!1102524 (and d!1499408 start!478800)))

(assert (=> bs!1102524 (= (dynLambda!21781 lambda!212915 (h!59011 (toList!5818 lm!2023))) (noDuplicateKeys!1964 (_2!30420 (h!59011 (toList!5818 lm!2023)))))))

(assert (=> bs!1102524 m!5638115))

(assert (=> b!4712012 d!1499408))

(declare-fun b_lambda!177675 () Bool)

(assert (= b_lambda!177671 (or start!478800 b_lambda!177675)))

(declare-fun bs!1102525 () Bool)

(declare-fun d!1499410 () Bool)

(assert (= bs!1102525 (and d!1499410 start!478800)))

(assert (=> bs!1102525 (= (dynLambda!21781 lambda!212915 lt!1876284) (noDuplicateKeys!1964 (_2!30420 lt!1876284)))))

(declare-fun m!5638325 () Bool)

(assert (=> bs!1102525 m!5638325))

(assert (=> d!1499384 d!1499410))

(check-sat (not b!4712045) (not d!1499334) (not b!4712021) (not d!1499306) (not d!1499388) (not b!4711882) (not d!1499348) (not b!4712076) (not d!1499352) (not d!1499384) (not b!4711967) (not d!1499378) (not bm!329448) (not d!1499400) (not b!4712024) (not d!1499402) (not d!1499358) (not bm!329441) (not d!1499368) (not b!4711994) (not b!4712090) (not b!4712073) (not b!4711911) (not b!4712077) (not b!4711964) (not d!1499376) (not b!4712013) (not b_lambda!177675) (not b!4711966) (not d!1499304) (not d!1499392) (not b!4712078) tp_is_empty!31149 (not b!4711981) (not b!4712035) (not b!4711968) (not d!1499360) (not b!4711972) (not b_lambda!177673) (not d!1499404) (not d!1499398) (not d!1499382) (not b!4712080) (not b!4711886) (not b!4711965) (not bs!1102524) (not b!4711971) (not d!1499386) tp_is_empty!31151 (not b!4711884) (not b!4712079) (not b!4712085) (not b!4712091) (not b!4711993) (not b!4712034) (not bm!329442) (not d!1499390) (not b!4712043) (not b!4712054) (not b!4712037) (not b!4712036) (not bm!329440) (not bs!1102525) (not b!4712072) (not b!4711885) (not d!1499380) (not b!4711786) (not b!4712052))
(check-sat)
