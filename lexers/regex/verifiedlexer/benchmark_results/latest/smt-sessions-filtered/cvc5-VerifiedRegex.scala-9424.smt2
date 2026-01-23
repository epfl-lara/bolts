; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!498372 () Bool)

(assert start!498372)

(declare-fun b!4816133 () Bool)

(declare-fun res!2048743 () Bool)

(declare-fun e!3009007 () Bool)

(assert (=> b!4816133 (=> (not res!2048743) (not e!3009007))))

(declare-datatypes ((K!16407 0))(
  ( (K!16408 (val!21431 Int)) )
))
(declare-datatypes ((V!16653 0))(
  ( (V!16654 (val!21432 Int)) )
))
(declare-datatypes ((tuple2!57798 0))(
  ( (tuple2!57799 (_1!32193 K!16407) (_2!32193 V!16653)) )
))
(declare-datatypes ((List!54875 0))(
  ( (Nil!54751) (Cons!54751 (h!61183 tuple2!57798) (t!362371 List!54875)) )
))
(declare-datatypes ((tuple2!57800 0))(
  ( (tuple2!57801 (_1!32194 (_ BitVec 64)) (_2!32194 List!54875)) )
))
(declare-datatypes ((List!54876 0))(
  ( (Nil!54752) (Cons!54752 (h!61184 tuple2!57800) (t!362372 List!54876)) )
))
(declare-datatypes ((ListLongMap!5797 0))(
  ( (ListLongMap!5798 (toList!7317 List!54876)) )
))
(declare-fun lm!2251 () ListLongMap!5797)

(declare-fun key!5322 () K!16407)

(declare-datatypes ((ListMap!6731 0))(
  ( (ListMap!6732 (toList!7318 List!54875)) )
))
(declare-fun contains!18568 (ListMap!6731 K!16407) Bool)

(declare-fun extractMap!2617 (List!54876) ListMap!6731)

(assert (=> b!4816133 (= res!2048743 (contains!18568 (extractMap!2617 (toList!7317 lm!2251)) key!5322))))

(declare-fun res!2048744 () Bool)

(assert (=> start!498372 (=> (not res!2048744) (not e!3009007))))

(declare-fun lambda!234549 () Int)

(declare-fun forall!12473 (List!54876 Int) Bool)

(assert (=> start!498372 (= res!2048744 (forall!12473 (toList!7317 lm!2251) lambda!234549))))

(assert (=> start!498372 e!3009007))

(declare-fun e!3009006 () Bool)

(declare-fun inv!70308 (ListLongMap!5797) Bool)

(assert (=> start!498372 (and (inv!70308 lm!2251) e!3009006)))

(assert (=> start!498372 true))

(declare-fun tp_is_empty!34207 () Bool)

(assert (=> start!498372 tp_is_empty!34207))

(declare-fun b!4816134 () Bool)

(declare-fun size!36619 (List!54876) Int)

(assert (=> b!4816134 (= e!3009007 (< (size!36619 (toList!7317 lm!2251)) 0))))

(declare-fun b!4816132 () Bool)

(declare-fun res!2048742 () Bool)

(assert (=> b!4816132 (=> (not res!2048742) (not e!3009007))))

(declare-datatypes ((Hashable!7167 0))(
  ( (HashableExt!7166 (__x!33442 Int)) )
))
(declare-fun hashF!1486 () Hashable!7167)

(declare-fun allKeysSameHashInMap!2483 (ListLongMap!5797 Hashable!7167) Bool)

(assert (=> b!4816132 (= res!2048742 (allKeysSameHashInMap!2483 lm!2251 hashF!1486))))

(declare-fun b!4816135 () Bool)

(declare-fun tp!1361894 () Bool)

(assert (=> b!4816135 (= e!3009006 tp!1361894)))

(assert (= (and start!498372 res!2048744) b!4816132))

(assert (= (and b!4816132 res!2048742) b!4816133))

(assert (= (and b!4816133 res!2048743) b!4816134))

(assert (= start!498372 b!4816135))

(declare-fun m!5802426 () Bool)

(assert (=> b!4816133 m!5802426))

(assert (=> b!4816133 m!5802426))

(declare-fun m!5802428 () Bool)

(assert (=> b!4816133 m!5802428))

(declare-fun m!5802430 () Bool)

(assert (=> start!498372 m!5802430))

(declare-fun m!5802432 () Bool)

(assert (=> start!498372 m!5802432))

(declare-fun m!5802434 () Bool)

(assert (=> b!4816134 m!5802434))

(declare-fun m!5802436 () Bool)

(assert (=> b!4816132 m!5802436))

(push 1)

(assert (not b!4816132))

(assert (not start!498372))

(assert (not b!4816135))

(assert tp_is_empty!34207)

(assert (not b!4816133))

(assert (not b!4816134))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1541427 () Bool)

(declare-fun res!2048758 () Bool)

(declare-fun e!3009018 () Bool)

(assert (=> d!1541427 (=> res!2048758 e!3009018)))

(assert (=> d!1541427 (= res!2048758 (is-Nil!54752 (toList!7317 lm!2251)))))

(assert (=> d!1541427 (= (forall!12473 (toList!7317 lm!2251) lambda!234549) e!3009018)))

(declare-fun b!4816152 () Bool)

(declare-fun e!3009019 () Bool)

(assert (=> b!4816152 (= e!3009018 e!3009019)))

(declare-fun res!2048759 () Bool)

(assert (=> b!4816152 (=> (not res!2048759) (not e!3009019))))

(declare-fun dynLambda!22162 (Int tuple2!57800) Bool)

(assert (=> b!4816152 (= res!2048759 (dynLambda!22162 lambda!234549 (h!61184 (toList!7317 lm!2251))))))

(declare-fun b!4816153 () Bool)

(assert (=> b!4816153 (= e!3009019 (forall!12473 (t!362372 (toList!7317 lm!2251)) lambda!234549))))

(assert (= (and d!1541427 (not res!2048758)) b!4816152))

(assert (= (and b!4816152 res!2048759) b!4816153))

(declare-fun b_lambda!188441 () Bool)

(assert (=> (not b_lambda!188441) (not b!4816152)))

(declare-fun m!5802450 () Bool)

(assert (=> b!4816152 m!5802450))

(declare-fun m!5802452 () Bool)

(assert (=> b!4816153 m!5802452))

(assert (=> start!498372 d!1541427))

(declare-fun d!1541429 () Bool)

(declare-fun isStrictlySorted!950 (List!54876) Bool)

(assert (=> d!1541429 (= (inv!70308 lm!2251) (isStrictlySorted!950 (toList!7317 lm!2251)))))

(declare-fun bs!1160589 () Bool)

(assert (= bs!1160589 d!1541429))

(declare-fun m!5802454 () Bool)

(assert (=> bs!1160589 m!5802454))

(assert (=> start!498372 d!1541429))

(declare-fun bs!1160590 () Bool)

(declare-fun d!1541431 () Bool)

(assert (= bs!1160590 (and d!1541431 start!498372)))

(declare-fun lambda!234555 () Int)

(assert (=> bs!1160590 (not (= lambda!234555 lambda!234549))))

(assert (=> d!1541431 true))

(assert (=> d!1541431 (= (allKeysSameHashInMap!2483 lm!2251 hashF!1486) (forall!12473 (toList!7317 lm!2251) lambda!234555))))

(declare-fun bs!1160591 () Bool)

(assert (= bs!1160591 d!1541431))

(declare-fun m!5802456 () Bool)

(assert (=> bs!1160591 m!5802456))

(assert (=> b!4816132 d!1541431))

(declare-fun b!4816174 () Bool)

(declare-fun e!3009037 () Bool)

(declare-fun e!3009034 () Bool)

(assert (=> b!4816174 (= e!3009037 e!3009034)))

(declare-fun res!2048768 () Bool)

(assert (=> b!4816174 (=> (not res!2048768) (not e!3009034))))

(declare-datatypes ((Option!13421 0))(
  ( (None!13420) (Some!13420 (v!49073 V!16653)) )
))
(declare-fun isDefined!10545 (Option!13421) Bool)

(declare-fun getValueByKey!2562 (List!54875 K!16407) Option!13421)

(assert (=> b!4816174 (= res!2048768 (isDefined!10545 (getValueByKey!2562 (toList!7318 (extractMap!2617 (toList!7317 lm!2251))) key!5322)))))

(declare-fun b!4816175 () Bool)

(declare-fun e!3009036 () Bool)

(declare-datatypes ((List!54879 0))(
  ( (Nil!54755) (Cons!54755 (h!61187 K!16407) (t!362375 List!54879)) )
))
(declare-fun contains!18570 (List!54879 K!16407) Bool)

(declare-fun keys!20103 (ListMap!6731) List!54879)

(assert (=> b!4816175 (= e!3009036 (not (contains!18570 (keys!20103 (extractMap!2617 (toList!7317 lm!2251))) key!5322)))))

(declare-fun b!4816176 () Bool)

(declare-datatypes ((Unit!141955 0))(
  ( (Unit!141956) )
))
(declare-fun e!3009032 () Unit!141955)

(declare-fun e!3009035 () Unit!141955)

(assert (=> b!4816176 (= e!3009032 e!3009035)))

(declare-fun c!820849 () Bool)

(declare-fun call!335971 () Bool)

(assert (=> b!4816176 (= c!820849 call!335971)))

(declare-fun b!4816177 () Bool)

(assert (=> b!4816177 false))

(declare-fun lt!1966900 () Unit!141955)

(declare-fun lt!1966901 () Unit!141955)

(assert (=> b!4816177 (= lt!1966900 lt!1966901)))

(declare-fun containsKey!4241 (List!54875 K!16407) Bool)

(assert (=> b!4816177 (containsKey!4241 (toList!7318 (extractMap!2617 (toList!7317 lm!2251))) key!5322)))

(declare-fun lemmaInGetKeysListThenContainsKey!1136 (List!54875 K!16407) Unit!141955)

(assert (=> b!4816177 (= lt!1966901 (lemmaInGetKeysListThenContainsKey!1136 (toList!7318 (extractMap!2617 (toList!7317 lm!2251))) key!5322))))

(declare-fun Unit!141957 () Unit!141955)

(assert (=> b!4816177 (= e!3009035 Unit!141957)))

(declare-fun b!4816178 () Bool)

(declare-fun Unit!141958 () Unit!141955)

(assert (=> b!4816178 (= e!3009035 Unit!141958)))

(declare-fun bm!335966 () Bool)

(declare-fun e!3009033 () List!54879)

(assert (=> bm!335966 (= call!335971 (contains!18570 e!3009033 key!5322))))

(declare-fun c!820848 () Bool)

(declare-fun c!820847 () Bool)

(assert (=> bm!335966 (= c!820848 c!820847)))

(declare-fun b!4816179 () Bool)

(assert (=> b!4816179 (= e!3009033 (keys!20103 (extractMap!2617 (toList!7317 lm!2251))))))

(declare-fun d!1541433 () Bool)

(assert (=> d!1541433 e!3009037))

(declare-fun res!2048767 () Bool)

(assert (=> d!1541433 (=> res!2048767 e!3009037)))

(assert (=> d!1541433 (= res!2048767 e!3009036)))

(declare-fun res!2048766 () Bool)

(assert (=> d!1541433 (=> (not res!2048766) (not e!3009036))))

(declare-fun lt!1966904 () Bool)

(assert (=> d!1541433 (= res!2048766 (not lt!1966904))))

(declare-fun lt!1966898 () Bool)

(assert (=> d!1541433 (= lt!1966904 lt!1966898)))

(declare-fun lt!1966899 () Unit!141955)

(assert (=> d!1541433 (= lt!1966899 e!3009032)))

(assert (=> d!1541433 (= c!820847 lt!1966898)))

(assert (=> d!1541433 (= lt!1966898 (containsKey!4241 (toList!7318 (extractMap!2617 (toList!7317 lm!2251))) key!5322))))

(assert (=> d!1541433 (= (contains!18568 (extractMap!2617 (toList!7317 lm!2251)) key!5322) lt!1966904)))

(declare-fun b!4816180 () Bool)

(assert (=> b!4816180 (= e!3009034 (contains!18570 (keys!20103 (extractMap!2617 (toList!7317 lm!2251))) key!5322))))

(declare-fun b!4816181 () Bool)

(declare-fun lt!1966903 () Unit!141955)

(assert (=> b!4816181 (= e!3009032 lt!1966903)))

(declare-fun lt!1966902 () Unit!141955)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2348 (List!54875 K!16407) Unit!141955)

(assert (=> b!4816181 (= lt!1966902 (lemmaContainsKeyImpliesGetValueByKeyDefined!2348 (toList!7318 (extractMap!2617 (toList!7317 lm!2251))) key!5322))))

(assert (=> b!4816181 (isDefined!10545 (getValueByKey!2562 (toList!7318 (extractMap!2617 (toList!7317 lm!2251))) key!5322))))

(declare-fun lt!1966897 () Unit!141955)

(assert (=> b!4816181 (= lt!1966897 lt!1966902)))

(declare-fun lemmaInListThenGetKeysListContains!1131 (List!54875 K!16407) Unit!141955)

(assert (=> b!4816181 (= lt!1966903 (lemmaInListThenGetKeysListContains!1131 (toList!7318 (extractMap!2617 (toList!7317 lm!2251))) key!5322))))

(assert (=> b!4816181 call!335971))

(declare-fun b!4816182 () Bool)

(declare-fun getKeysList!1136 (List!54875) List!54879)

(assert (=> b!4816182 (= e!3009033 (getKeysList!1136 (toList!7318 (extractMap!2617 (toList!7317 lm!2251)))))))

(assert (= (and d!1541433 c!820847) b!4816181))

(assert (= (and d!1541433 (not c!820847)) b!4816176))

(assert (= (and b!4816176 c!820849) b!4816177))

(assert (= (and b!4816176 (not c!820849)) b!4816178))

(assert (= (or b!4816181 b!4816176) bm!335966))

(assert (= (and bm!335966 c!820848) b!4816182))

(assert (= (and bm!335966 (not c!820848)) b!4816179))

(assert (= (and d!1541433 res!2048766) b!4816175))

(assert (= (and d!1541433 (not res!2048767)) b!4816174))

(assert (= (and b!4816174 res!2048768) b!4816180))

(assert (=> b!4816180 m!5802426))

(declare-fun m!5802458 () Bool)

(assert (=> b!4816180 m!5802458))

(assert (=> b!4816180 m!5802458))

(declare-fun m!5802460 () Bool)

(assert (=> b!4816180 m!5802460))

(assert (=> b!4816179 m!5802426))

(assert (=> b!4816179 m!5802458))

(assert (=> b!4816175 m!5802426))

(assert (=> b!4816175 m!5802458))

(assert (=> b!4816175 m!5802458))

(assert (=> b!4816175 m!5802460))

(declare-fun m!5802462 () Bool)

(assert (=> b!4816177 m!5802462))

(declare-fun m!5802464 () Bool)

(assert (=> b!4816177 m!5802464))

(declare-fun m!5802466 () Bool)

(assert (=> b!4816181 m!5802466))

(declare-fun m!5802468 () Bool)

(assert (=> b!4816181 m!5802468))

(assert (=> b!4816181 m!5802468))

(declare-fun m!5802470 () Bool)

(assert (=> b!4816181 m!5802470))

(declare-fun m!5802472 () Bool)

(assert (=> b!4816181 m!5802472))

(declare-fun m!5802474 () Bool)

(assert (=> bm!335966 m!5802474))

(assert (=> b!4816174 m!5802468))

(assert (=> b!4816174 m!5802468))

(assert (=> b!4816174 m!5802470))

(declare-fun m!5802476 () Bool)

(assert (=> b!4816182 m!5802476))

(assert (=> d!1541433 m!5802462))

(assert (=> b!4816133 d!1541433))

(declare-fun bs!1160592 () Bool)

(declare-fun d!1541437 () Bool)

(assert (= bs!1160592 (and d!1541437 start!498372)))

(declare-fun lambda!234558 () Int)

(assert (=> bs!1160592 (= lambda!234558 lambda!234549)))

(declare-fun bs!1160593 () Bool)

(assert (= bs!1160593 (and d!1541437 d!1541431)))

(assert (=> bs!1160593 (not (= lambda!234558 lambda!234555))))

(declare-fun lt!1966907 () ListMap!6731)

(declare-fun invariantList!1789 (List!54875) Bool)

(assert (=> d!1541437 (invariantList!1789 (toList!7318 lt!1966907))))

(declare-fun e!3009040 () ListMap!6731)

(assert (=> d!1541437 (= lt!1966907 e!3009040)))

(declare-fun c!820852 () Bool)

(assert (=> d!1541437 (= c!820852 (is-Cons!54752 (toList!7317 lm!2251)))))

(assert (=> d!1541437 (forall!12473 (toList!7317 lm!2251) lambda!234558)))

(assert (=> d!1541437 (= (extractMap!2617 (toList!7317 lm!2251)) lt!1966907)))

(declare-fun b!4816187 () Bool)

(declare-fun addToMapMapFromBucket!1766 (List!54875 ListMap!6731) ListMap!6731)

(assert (=> b!4816187 (= e!3009040 (addToMapMapFromBucket!1766 (_2!32194 (h!61184 (toList!7317 lm!2251))) (extractMap!2617 (t!362372 (toList!7317 lm!2251)))))))

(declare-fun b!4816188 () Bool)

(assert (=> b!4816188 (= e!3009040 (ListMap!6732 Nil!54751))))

(assert (= (and d!1541437 c!820852) b!4816187))

(assert (= (and d!1541437 (not c!820852)) b!4816188))

(declare-fun m!5802478 () Bool)

(assert (=> d!1541437 m!5802478))

(declare-fun m!5802480 () Bool)

(assert (=> d!1541437 m!5802480))

(declare-fun m!5802482 () Bool)

(assert (=> b!4816187 m!5802482))

(assert (=> b!4816187 m!5802482))

(declare-fun m!5802484 () Bool)

(assert (=> b!4816187 m!5802484))

(assert (=> b!4816133 d!1541437))

(declare-fun d!1541439 () Bool)

(declare-fun lt!1966926 () Int)

(assert (=> d!1541439 (>= lt!1966926 0)))

(declare-fun e!3009049 () Int)

(assert (=> d!1541439 (= lt!1966926 e!3009049)))

(declare-fun c!820861 () Bool)

(assert (=> d!1541439 (= c!820861 (is-Nil!54752 (toList!7317 lm!2251)))))

(assert (=> d!1541439 (= (size!36619 (toList!7317 lm!2251)) lt!1966926)))

(declare-fun b!4816205 () Bool)

(assert (=> b!4816205 (= e!3009049 0)))

(declare-fun b!4816206 () Bool)

(assert (=> b!4816206 (= e!3009049 (+ 1 (size!36619 (t!362372 (toList!7317 lm!2251)))))))

(assert (= (and d!1541439 c!820861) b!4816205))

(assert (= (and d!1541439 (not c!820861)) b!4816206))

(declare-fun m!5802486 () Bool)

(assert (=> b!4816206 m!5802486))

(assert (=> b!4816134 d!1541439))

(declare-fun b!4816211 () Bool)

(declare-fun e!3009052 () Bool)

(declare-fun tp!1361902 () Bool)

(declare-fun tp!1361903 () Bool)

(assert (=> b!4816211 (= e!3009052 (and tp!1361902 tp!1361903))))

(assert (=> b!4816135 (= tp!1361894 e!3009052)))

(assert (= (and b!4816135 (is-Cons!54752 (toList!7317 lm!2251))) b!4816211))

(declare-fun b_lambda!188443 () Bool)

(assert (= b_lambda!188441 (or start!498372 b_lambda!188443)))

(declare-fun bs!1160594 () Bool)

(declare-fun d!1541441 () Bool)

(assert (= bs!1160594 (and d!1541441 start!498372)))

(declare-fun noDuplicateKeys!2408 (List!54875) Bool)

(assert (=> bs!1160594 (= (dynLambda!22162 lambda!234549 (h!61184 (toList!7317 lm!2251))) (noDuplicateKeys!2408 (_2!32194 (h!61184 (toList!7317 lm!2251)))))))

(declare-fun m!5802488 () Bool)

(assert (=> bs!1160594 m!5802488))

(assert (=> b!4816152 d!1541441))

(push 1)

(assert (not b!4816206))

(assert (not b_lambda!188443))

(assert (not bm!335966))

(assert (not bs!1160594))

(assert (not d!1541437))

(assert (not b!4816174))

(assert (not b!4816153))

(assert (not b!4816180))

(assert (not b!4816182))

(assert (not b!4816181))

(assert (not d!1541429))

(assert (not b!4816179))

(assert tp_is_empty!34207)

(assert (not b!4816177))

(assert (not d!1541433))

(assert (not b!4816211))

(assert (not b!4816187))

(assert (not b!4816175))

(assert (not d!1541431))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

