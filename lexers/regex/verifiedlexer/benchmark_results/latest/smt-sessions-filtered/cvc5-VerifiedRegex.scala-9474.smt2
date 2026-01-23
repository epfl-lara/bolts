; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!500842 () Bool)

(assert start!500842)

(declare-fun b!4826500 () Bool)

(declare-fun res!2054974 () Bool)

(declare-fun e!3015868 () Bool)

(assert (=> b!4826500 (=> (not res!2054974) (not e!3015868))))

(declare-fun lt!1973725 () (_ BitVec 64))

(declare-datatypes ((V!16903 0))(
  ( (V!16904 (val!21631 Int)) )
))
(declare-datatypes ((K!16657 0))(
  ( (K!16658 (val!21632 Int)) )
))
(declare-datatypes ((tuple2!58198 0))(
  ( (tuple2!58199 (_1!32393 K!16657) (_2!32393 V!16903)) )
))
(declare-datatypes ((List!55100 0))(
  ( (Nil!54976) (Cons!54976 (h!61410 tuple2!58198) (t!362596 List!55100)) )
))
(declare-datatypes ((tuple2!58200 0))(
  ( (tuple2!58201 (_1!32394 (_ BitVec 64)) (_2!32394 List!55100)) )
))
(declare-datatypes ((List!55101 0))(
  ( (Nil!54977) (Cons!54977 (h!61411 tuple2!58200) (t!362597 List!55101)) )
))
(declare-datatypes ((ListLongMap!5997 0))(
  ( (ListLongMap!5998 (toList!7481 List!55101)) )
))
(declare-fun lm!2280 () ListLongMap!5997)

(declare-fun key!5428 () K!16657)

(declare-fun containsKey!4376 (List!55100 K!16657) Bool)

(declare-fun apply!13354 (ListLongMap!5997 (_ BitVec 64)) List!55100)

(assert (=> b!4826500 (= res!2054974 (not (containsKey!4376 (apply!13354 lm!2280 lt!1973725) key!5428)))))

(declare-fun b!4826501 () Bool)

(declare-fun e!3015870 () Bool)

(declare-fun tp!1362611 () Bool)

(assert (=> b!4826501 (= e!3015870 tp!1362611)))

(declare-fun b!4826502 () Bool)

(declare-fun e!3015869 () Bool)

(assert (=> b!4826502 (= e!3015869 e!3015868)))

(declare-fun res!2054973 () Bool)

(assert (=> b!4826502 (=> (not res!2054973) (not e!3015868))))

(declare-fun contains!18786 (ListLongMap!5997 (_ BitVec 64)) Bool)

(assert (=> b!4826502 (= res!2054973 (contains!18786 lm!2280 lt!1973725))))

(declare-datatypes ((Hashable!7267 0))(
  ( (HashableExt!7266 (__x!33542 Int)) )
))
(declare-fun hashF!1509 () Hashable!7267)

(declare-fun hash!5407 (Hashable!7267 K!16657) (_ BitVec 64))

(assert (=> b!4826502 (= lt!1973725 (hash!5407 hashF!1509 key!5428))))

(declare-fun res!2054972 () Bool)

(assert (=> start!500842 (=> (not res!2054972) (not e!3015869))))

(declare-fun lambda!236873 () Int)

(declare-fun forall!12613 (List!55101 Int) Bool)

(assert (=> start!500842 (= res!2054972 (forall!12613 (toList!7481 lm!2280) lambda!236873))))

(assert (=> start!500842 e!3015869))

(declare-fun inv!70558 (ListLongMap!5997) Bool)

(assert (=> start!500842 (and (inv!70558 lm!2280) e!3015870)))

(assert (=> start!500842 true))

(declare-fun tp_is_empty!34465 () Bool)

(assert (=> start!500842 tp_is_empty!34465))

(declare-fun b!4826503 () Bool)

(declare-fun res!2054975 () Bool)

(assert (=> b!4826503 (=> (not res!2054975) (not e!3015868))))

(assert (=> b!4826503 (= res!2054975 (and (or (not (is-Cons!54977 (toList!7481 lm!2280))) (not (= (_1!32394 (h!61411 (toList!7481 lm!2280))) lt!1973725))) (not (is-Cons!54977 (toList!7481 lm!2280)))))))

(declare-fun b!4826504 () Bool)

(declare-datatypes ((ListMap!6859 0))(
  ( (ListMap!6860 (toList!7482 List!55100)) )
))
(declare-fun contains!18787 (ListMap!6859 K!16657) Bool)

(declare-fun extractMap!2681 (List!55101) ListMap!6859)

(assert (=> b!4826504 (= e!3015868 (contains!18787 (extractMap!2681 (toList!7481 lm!2280)) key!5428))))

(declare-fun b!4826505 () Bool)

(declare-fun res!2054976 () Bool)

(assert (=> b!4826505 (=> (not res!2054976) (not e!3015869))))

(declare-fun allKeysSameHashInMap!2583 (ListLongMap!5997 Hashable!7267) Bool)

(assert (=> b!4826505 (= res!2054976 (allKeysSameHashInMap!2583 lm!2280 hashF!1509))))

(assert (= (and start!500842 res!2054972) b!4826505))

(assert (= (and b!4826505 res!2054976) b!4826502))

(assert (= (and b!4826502 res!2054973) b!4826500))

(assert (= (and b!4826500 res!2054974) b!4826503))

(assert (= (and b!4826503 res!2054975) b!4826504))

(assert (= start!500842 b!4826501))

(declare-fun m!5817658 () Bool)

(assert (=> b!4826504 m!5817658))

(assert (=> b!4826504 m!5817658))

(declare-fun m!5817660 () Bool)

(assert (=> b!4826504 m!5817660))

(declare-fun m!5817662 () Bool)

(assert (=> b!4826505 m!5817662))

(declare-fun m!5817664 () Bool)

(assert (=> start!500842 m!5817664))

(declare-fun m!5817666 () Bool)

(assert (=> start!500842 m!5817666))

(declare-fun m!5817668 () Bool)

(assert (=> b!4826502 m!5817668))

(declare-fun m!5817670 () Bool)

(assert (=> b!4826502 m!5817670))

(declare-fun m!5817672 () Bool)

(assert (=> b!4826500 m!5817672))

(assert (=> b!4826500 m!5817672))

(declare-fun m!5817674 () Bool)

(assert (=> b!4826500 m!5817674))

(push 1)

(assert (not b!4826502))

(assert (not b!4826501))

(assert (not b!4826500))

(assert tp_is_empty!34465)

(assert (not b!4826505))

(assert (not b!4826504))

(assert (not start!500842))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1546659 () Bool)

(declare-fun res!2054996 () Bool)

(declare-fun e!3015884 () Bool)

(assert (=> d!1546659 (=> res!2054996 e!3015884)))

(assert (=> d!1546659 (= res!2054996 (and (is-Cons!54976 (apply!13354 lm!2280 lt!1973725)) (= (_1!32393 (h!61410 (apply!13354 lm!2280 lt!1973725))) key!5428)))))

(assert (=> d!1546659 (= (containsKey!4376 (apply!13354 lm!2280 lt!1973725) key!5428) e!3015884)))

(declare-fun b!4826528 () Bool)

(declare-fun e!3015885 () Bool)

(assert (=> b!4826528 (= e!3015884 e!3015885)))

(declare-fun res!2054997 () Bool)

(assert (=> b!4826528 (=> (not res!2054997) (not e!3015885))))

(assert (=> b!4826528 (= res!2054997 (is-Cons!54976 (apply!13354 lm!2280 lt!1973725)))))

(declare-fun b!4826529 () Bool)

(assert (=> b!4826529 (= e!3015885 (containsKey!4376 (t!362596 (apply!13354 lm!2280 lt!1973725)) key!5428))))

(assert (= (and d!1546659 (not res!2054996)) b!4826528))

(assert (= (and b!4826528 res!2054997) b!4826529))

(declare-fun m!5817694 () Bool)

(assert (=> b!4826529 m!5817694))

(assert (=> b!4826500 d!1546659))

(declare-fun d!1546661 () Bool)

(declare-datatypes ((Option!13498 0))(
  ( (None!13497) (Some!13497 (v!49180 List!55100)) )
))
(declare-fun get!18826 (Option!13498) List!55100)

(declare-fun getValueByKey!2625 (List!55101 (_ BitVec 64)) Option!13498)

(assert (=> d!1546661 (= (apply!13354 lm!2280 lt!1973725) (get!18826 (getValueByKey!2625 (toList!7481 lm!2280) lt!1973725)))))

(declare-fun bs!1164587 () Bool)

(assert (= bs!1164587 d!1546661))

(declare-fun m!5817696 () Bool)

(assert (=> bs!1164587 m!5817696))

(assert (=> bs!1164587 m!5817696))

(declare-fun m!5817698 () Bool)

(assert (=> bs!1164587 m!5817698))

(assert (=> b!4826500 d!1546661))

(declare-fun d!1546663 () Bool)

(declare-fun res!2055002 () Bool)

(declare-fun e!3015890 () Bool)

(assert (=> d!1546663 (=> res!2055002 e!3015890)))

(assert (=> d!1546663 (= res!2055002 (is-Nil!54977 (toList!7481 lm!2280)))))

(assert (=> d!1546663 (= (forall!12613 (toList!7481 lm!2280) lambda!236873) e!3015890)))

(declare-fun b!4826534 () Bool)

(declare-fun e!3015891 () Bool)

(assert (=> b!4826534 (= e!3015890 e!3015891)))

(declare-fun res!2055003 () Bool)

(assert (=> b!4826534 (=> (not res!2055003) (not e!3015891))))

(declare-fun dynLambda!22221 (Int tuple2!58200) Bool)

(assert (=> b!4826534 (= res!2055003 (dynLambda!22221 lambda!236873 (h!61411 (toList!7481 lm!2280))))))

(declare-fun b!4826535 () Bool)

(assert (=> b!4826535 (= e!3015891 (forall!12613 (t!362597 (toList!7481 lm!2280)) lambda!236873))))

(assert (= (and d!1546663 (not res!2055002)) b!4826534))

(assert (= (and b!4826534 res!2055003) b!4826535))

(declare-fun b_lambda!190005 () Bool)

(assert (=> (not b_lambda!190005) (not b!4826534)))

(declare-fun m!5817700 () Bool)

(assert (=> b!4826534 m!5817700))

(declare-fun m!5817702 () Bool)

(assert (=> b!4826535 m!5817702))

(assert (=> start!500842 d!1546663))

(declare-fun d!1546665 () Bool)

(declare-fun isStrictlySorted!987 (List!55101) Bool)

(assert (=> d!1546665 (= (inv!70558 lm!2280) (isStrictlySorted!987 (toList!7481 lm!2280)))))

(declare-fun bs!1164588 () Bool)

(assert (= bs!1164588 d!1546665))

(declare-fun m!5817704 () Bool)

(assert (=> bs!1164588 m!5817704))

(assert (=> start!500842 d!1546665))

(declare-fun b!4826560 () Bool)

(declare-datatypes ((Unit!143201 0))(
  ( (Unit!143202) )
))
(declare-fun e!3015911 () Unit!143201)

(declare-fun Unit!143203 () Unit!143201)

(assert (=> b!4826560 (= e!3015911 Unit!143203)))

(declare-fun b!4826561 () Bool)

(assert (=> b!4826561 false))

(declare-fun lt!1973751 () Unit!143201)

(declare-fun lt!1973745 () Unit!143201)

(assert (=> b!4826561 (= lt!1973751 lt!1973745)))

(declare-fun containsKey!4378 (List!55100 K!16657) Bool)

(assert (=> b!4826561 (containsKey!4378 (toList!7482 (extractMap!2681 (toList!7481 lm!2280))) key!5428)))

(declare-fun lemmaInGetKeysListThenContainsKey!1161 (List!55100 K!16657) Unit!143201)

(assert (=> b!4826561 (= lt!1973745 (lemmaInGetKeysListThenContainsKey!1161 (toList!7482 (extractMap!2681 (toList!7481 lm!2280))) key!5428))))

(declare-fun Unit!143204 () Unit!143201)

(assert (=> b!4826561 (= e!3015911 Unit!143204)))

(declare-fun b!4826562 () Bool)

(declare-datatypes ((List!55104 0))(
  ( (Nil!54980) (Cons!54980 (h!61414 K!16657) (t!362600 List!55104)) )
))
(declare-fun e!3015910 () List!55104)

(declare-fun getKeysList!1161 (List!55100) List!55104)

(assert (=> b!4826562 (= e!3015910 (getKeysList!1161 (toList!7482 (extractMap!2681 (toList!7481 lm!2280)))))))

(declare-fun b!4826563 () Bool)

(declare-fun e!3015914 () Unit!143201)

(assert (=> b!4826563 (= e!3015914 e!3015911)))

(declare-fun c!822446 () Bool)

(declare-fun call!336427 () Bool)

(assert (=> b!4826563 (= c!822446 call!336427)))

(declare-fun d!1546667 () Bool)

(declare-fun e!3015912 () Bool)

(assert (=> d!1546667 e!3015912))

(declare-fun res!2055017 () Bool)

(assert (=> d!1546667 (=> res!2055017 e!3015912)))

(declare-fun e!3015913 () Bool)

(assert (=> d!1546667 (= res!2055017 e!3015913)))

(declare-fun res!2055018 () Bool)

(assert (=> d!1546667 (=> (not res!2055018) (not e!3015913))))

(declare-fun lt!1973752 () Bool)

(assert (=> d!1546667 (= res!2055018 (not lt!1973752))))

(declare-fun lt!1973748 () Bool)

(assert (=> d!1546667 (= lt!1973752 lt!1973748)))

(declare-fun lt!1973747 () Unit!143201)

(assert (=> d!1546667 (= lt!1973747 e!3015914)))

(declare-fun c!822447 () Bool)

(assert (=> d!1546667 (= c!822447 lt!1973748)))

(assert (=> d!1546667 (= lt!1973748 (containsKey!4378 (toList!7482 (extractMap!2681 (toList!7481 lm!2280))) key!5428))))

(assert (=> d!1546667 (= (contains!18787 (extractMap!2681 (toList!7481 lm!2280)) key!5428) lt!1973752)))

(declare-fun b!4826564 () Bool)

(declare-fun keys!20230 (ListMap!6859) List!55104)

(assert (=> b!4826564 (= e!3015910 (keys!20230 (extractMap!2681 (toList!7481 lm!2280))))))

(declare-fun bm!336422 () Bool)

(declare-fun contains!18790 (List!55104 K!16657) Bool)

(assert (=> bm!336422 (= call!336427 (contains!18790 e!3015910 key!5428))))

(declare-fun c!822445 () Bool)

(assert (=> bm!336422 (= c!822445 c!822447)))

(declare-fun b!4826565 () Bool)

(declare-fun e!3015915 () Bool)

(assert (=> b!4826565 (= e!3015912 e!3015915)))

(declare-fun res!2055016 () Bool)

(assert (=> b!4826565 (=> (not res!2055016) (not e!3015915))))

(declare-datatypes ((Option!13499 0))(
  ( (None!13498) (Some!13498 (v!49181 V!16903)) )
))
(declare-fun isDefined!10613 (Option!13499) Bool)

(declare-fun getValueByKey!2626 (List!55100 K!16657) Option!13499)

(assert (=> b!4826565 (= res!2055016 (isDefined!10613 (getValueByKey!2626 (toList!7482 (extractMap!2681 (toList!7481 lm!2280))) key!5428)))))

(declare-fun b!4826566 () Bool)

(assert (=> b!4826566 (= e!3015913 (not (contains!18790 (keys!20230 (extractMap!2681 (toList!7481 lm!2280))) key!5428)))))

(declare-fun b!4826567 () Bool)

(assert (=> b!4826567 (= e!3015915 (contains!18790 (keys!20230 (extractMap!2681 (toList!7481 lm!2280))) key!5428))))

(declare-fun b!4826568 () Bool)

(declare-fun lt!1973746 () Unit!143201)

(assert (=> b!4826568 (= e!3015914 lt!1973746)))

(declare-fun lt!1973750 () Unit!143201)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2410 (List!55100 K!16657) Unit!143201)

(assert (=> b!4826568 (= lt!1973750 (lemmaContainsKeyImpliesGetValueByKeyDefined!2410 (toList!7482 (extractMap!2681 (toList!7481 lm!2280))) key!5428))))

(assert (=> b!4826568 (isDefined!10613 (getValueByKey!2626 (toList!7482 (extractMap!2681 (toList!7481 lm!2280))) key!5428))))

(declare-fun lt!1973749 () Unit!143201)

(assert (=> b!4826568 (= lt!1973749 lt!1973750)))

(declare-fun lemmaInListThenGetKeysListContains!1156 (List!55100 K!16657) Unit!143201)

(assert (=> b!4826568 (= lt!1973746 (lemmaInListThenGetKeysListContains!1156 (toList!7482 (extractMap!2681 (toList!7481 lm!2280))) key!5428))))

(assert (=> b!4826568 call!336427))

(assert (= (and d!1546667 c!822447) b!4826568))

(assert (= (and d!1546667 (not c!822447)) b!4826563))

(assert (= (and b!4826563 c!822446) b!4826561))

(assert (= (and b!4826563 (not c!822446)) b!4826560))

(assert (= (or b!4826568 b!4826563) bm!336422))

(assert (= (and bm!336422 c!822445) b!4826562))

(assert (= (and bm!336422 (not c!822445)) b!4826564))

(assert (= (and d!1546667 res!2055018) b!4826566))

(assert (= (and d!1546667 (not res!2055017)) b!4826565))

(assert (= (and b!4826565 res!2055016) b!4826567))

(declare-fun m!5817712 () Bool)

(assert (=> b!4826565 m!5817712))

(assert (=> b!4826565 m!5817712))

(declare-fun m!5817714 () Bool)

(assert (=> b!4826565 m!5817714))

(declare-fun m!5817716 () Bool)

(assert (=> b!4826561 m!5817716))

(declare-fun m!5817718 () Bool)

(assert (=> b!4826561 m!5817718))

(declare-fun m!5817720 () Bool)

(assert (=> b!4826568 m!5817720))

(assert (=> b!4826568 m!5817712))

(assert (=> b!4826568 m!5817712))

(assert (=> b!4826568 m!5817714))

(declare-fun m!5817722 () Bool)

(assert (=> b!4826568 m!5817722))

(assert (=> d!1546667 m!5817716))

(assert (=> b!4826567 m!5817658))

(declare-fun m!5817724 () Bool)

(assert (=> b!4826567 m!5817724))

(assert (=> b!4826567 m!5817724))

(declare-fun m!5817726 () Bool)

(assert (=> b!4826567 m!5817726))

(declare-fun m!5817728 () Bool)

(assert (=> bm!336422 m!5817728))

(assert (=> b!4826566 m!5817658))

(assert (=> b!4826566 m!5817724))

(assert (=> b!4826566 m!5817724))

(assert (=> b!4826566 m!5817726))

(declare-fun m!5817730 () Bool)

(assert (=> b!4826562 m!5817730))

(assert (=> b!4826564 m!5817658))

(assert (=> b!4826564 m!5817724))

(assert (=> b!4826504 d!1546667))

(declare-fun bs!1164591 () Bool)

(declare-fun d!1546675 () Bool)

(assert (= bs!1164591 (and d!1546675 start!500842)))

(declare-fun lambda!236879 () Int)

(assert (=> bs!1164591 (= lambda!236879 lambda!236873)))

(declare-fun lt!1973755 () ListMap!6859)

(declare-fun invariantList!1814 (List!55100) Bool)

(assert (=> d!1546675 (invariantList!1814 (toList!7482 lt!1973755))))

(declare-fun e!3015924 () ListMap!6859)

(assert (=> d!1546675 (= lt!1973755 e!3015924)))

(declare-fun c!822450 () Bool)

(assert (=> d!1546675 (= c!822450 (is-Cons!54977 (toList!7481 lm!2280)))))

(assert (=> d!1546675 (forall!12613 (toList!7481 lm!2280) lambda!236879)))

(assert (=> d!1546675 (= (extractMap!2681 (toList!7481 lm!2280)) lt!1973755)))

(declare-fun b!4826579 () Bool)

(declare-fun addToMapMapFromBucket!1799 (List!55100 ListMap!6859) ListMap!6859)

(assert (=> b!4826579 (= e!3015924 (addToMapMapFromBucket!1799 (_2!32394 (h!61411 (toList!7481 lm!2280))) (extractMap!2681 (t!362597 (toList!7481 lm!2280)))))))

(declare-fun b!4826580 () Bool)

(assert (=> b!4826580 (= e!3015924 (ListMap!6860 Nil!54976))))

(assert (= (and d!1546675 c!822450) b!4826579))

(assert (= (and d!1546675 (not c!822450)) b!4826580))

(declare-fun m!5817738 () Bool)

(assert (=> d!1546675 m!5817738))

(declare-fun m!5817740 () Bool)

(assert (=> d!1546675 m!5817740))

(declare-fun m!5817742 () Bool)

(assert (=> b!4826579 m!5817742))

(assert (=> b!4826579 m!5817742))

(declare-fun m!5817744 () Bool)

(assert (=> b!4826579 m!5817744))

(assert (=> b!4826504 d!1546675))

(declare-fun bs!1164592 () Bool)

(declare-fun d!1546681 () Bool)

(assert (= bs!1164592 (and d!1546681 start!500842)))

(declare-fun lambda!236882 () Int)

(assert (=> bs!1164592 (not (= lambda!236882 lambda!236873))))

(declare-fun bs!1164593 () Bool)

(assert (= bs!1164593 (and d!1546681 d!1546675)))

(assert (=> bs!1164593 (not (= lambda!236882 lambda!236879))))

(assert (=> d!1546681 true))

(assert (=> d!1546681 (= (allKeysSameHashInMap!2583 lm!2280 hashF!1509) (forall!12613 (toList!7481 lm!2280) lambda!236882))))

(declare-fun bs!1164594 () Bool)

(assert (= bs!1164594 d!1546681))

(declare-fun m!5817746 () Bool)

(assert (=> bs!1164594 m!5817746))

(assert (=> b!4826505 d!1546681))

(declare-fun d!1546683 () Bool)

(declare-fun e!3015933 () Bool)

(assert (=> d!1546683 e!3015933))

(declare-fun res!2055029 () Bool)

(assert (=> d!1546683 (=> res!2055029 e!3015933)))

(declare-fun lt!1973775 () Bool)

(assert (=> d!1546683 (= res!2055029 (not lt!1973775))))

(declare-fun lt!1973773 () Bool)

(assert (=> d!1546683 (= lt!1973775 lt!1973773)))

(declare-fun lt!1973772 () Unit!143201)

(declare-fun e!3015934 () Unit!143201)

(assert (=> d!1546683 (= lt!1973772 e!3015934)))

(declare-fun c!822455 () Bool)

(assert (=> d!1546683 (= c!822455 lt!1973773)))

(declare-fun containsKey!4379 (List!55101 (_ BitVec 64)) Bool)

(assert (=> d!1546683 (= lt!1973773 (containsKey!4379 (toList!7481 lm!2280) lt!1973725))))

(assert (=> d!1546683 (= (contains!18786 lm!2280 lt!1973725) lt!1973775)))

(declare-fun b!4826595 () Bool)

(declare-fun lt!1973774 () Unit!143201)

(assert (=> b!4826595 (= e!3015934 lt!1973774)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2411 (List!55101 (_ BitVec 64)) Unit!143201)

(assert (=> b!4826595 (= lt!1973774 (lemmaContainsKeyImpliesGetValueByKeyDefined!2411 (toList!7481 lm!2280) lt!1973725))))

(declare-fun isDefined!10614 (Option!13498) Bool)

(assert (=> b!4826595 (isDefined!10614 (getValueByKey!2625 (toList!7481 lm!2280) lt!1973725))))

(declare-fun b!4826596 () Bool)

(declare-fun Unit!143205 () Unit!143201)

(assert (=> b!4826596 (= e!3015934 Unit!143205)))

(declare-fun b!4826597 () Bool)

(assert (=> b!4826597 (= e!3015933 (isDefined!10614 (getValueByKey!2625 (toList!7481 lm!2280) lt!1973725)))))

(assert (= (and d!1546683 c!822455) b!4826595))

(assert (= (and d!1546683 (not c!822455)) b!4826596))

(assert (= (and d!1546683 (not res!2055029)) b!4826597))

(declare-fun m!5817748 () Bool)

(assert (=> d!1546683 m!5817748))

(declare-fun m!5817750 () Bool)

(assert (=> b!4826595 m!5817750))

(assert (=> b!4826595 m!5817696))

(assert (=> b!4826595 m!5817696))

(declare-fun m!5817752 () Bool)

(assert (=> b!4826595 m!5817752))

(assert (=> b!4826597 m!5817696))

(assert (=> b!4826597 m!5817696))

(assert (=> b!4826597 m!5817752))

(assert (=> b!4826502 d!1546683))

(declare-fun d!1546685 () Bool)

(declare-fun hash!5409 (Hashable!7267 K!16657) (_ BitVec 64))

(assert (=> d!1546685 (= (hash!5407 hashF!1509 key!5428) (hash!5409 hashF!1509 key!5428))))

(declare-fun bs!1164595 () Bool)

(assert (= bs!1164595 d!1546685))

(declare-fun m!5817754 () Bool)

(assert (=> bs!1164595 m!5817754))

(assert (=> b!4826502 d!1546685))

(declare-fun b!4826602 () Bool)

(declare-fun e!3015937 () Bool)

(declare-fun tp!1362619 () Bool)

(declare-fun tp!1362620 () Bool)

(assert (=> b!4826602 (= e!3015937 (and tp!1362619 tp!1362620))))

(assert (=> b!4826501 (= tp!1362611 e!3015937)))

(assert (= (and b!4826501 (is-Cons!54977 (toList!7481 lm!2280))) b!4826602))

(declare-fun b_lambda!190009 () Bool)

(assert (= b_lambda!190005 (or start!500842 b_lambda!190009)))

(declare-fun bs!1164596 () Bool)

(declare-fun d!1546687 () Bool)

(assert (= bs!1164596 (and d!1546687 start!500842)))

(declare-fun noDuplicateKeys!2453 (List!55100) Bool)

(assert (=> bs!1164596 (= (dynLambda!22221 lambda!236873 (h!61411 (toList!7481 lm!2280))) (noDuplicateKeys!2453 (_2!32394 (h!61411 (toList!7481 lm!2280)))))))

(declare-fun m!5817756 () Bool)

(assert (=> bs!1164596 m!5817756))

(assert (=> b!4826534 d!1546687))

(push 1)

(assert (not d!1546665))

(assert (not b!4826567))

(assert (not d!1546661))

(assert (not b!4826602))

(assert (not d!1546675))

(assert (not b!4826564))

(assert tp_is_empty!34465)

(assert (not b!4826595))

(assert (not b!4826565))

(assert (not b!4826566))

(assert (not d!1546681))

(assert (not b!4826562))

(assert (not bs!1164596))

(assert (not b_lambda!190009))

(assert (not b!4826597))

(assert (not bm!336422))

(assert (not d!1546667))

(assert (not d!1546685))

(assert (not b!4826535))

(assert (not b!4826568))

(assert (not b!4826579))

(assert (not b!4826529))

(assert (not d!1546683))

(assert (not b!4826561))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1546699 () Bool)

(assert (=> d!1546699 (isDefined!10613 (getValueByKey!2626 (toList!7482 (extractMap!2681 (toList!7481 lm!2280))) key!5428))))

(declare-fun lt!1973809 () Unit!143201)

(declare-fun choose!35150 (List!55100 K!16657) Unit!143201)

(assert (=> d!1546699 (= lt!1973809 (choose!35150 (toList!7482 (extractMap!2681 (toList!7481 lm!2280))) key!5428))))

(assert (=> d!1546699 (invariantList!1814 (toList!7482 (extractMap!2681 (toList!7481 lm!2280))))))

(assert (=> d!1546699 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2410 (toList!7482 (extractMap!2681 (toList!7481 lm!2280))) key!5428) lt!1973809)))

(declare-fun bs!1164603 () Bool)

(assert (= bs!1164603 d!1546699))

(assert (=> bs!1164603 m!5817712))

(assert (=> bs!1164603 m!5817712))

(assert (=> bs!1164603 m!5817714))

(declare-fun m!5817798 () Bool)

(assert (=> bs!1164603 m!5817798))

(declare-fun m!5817800 () Bool)

(assert (=> bs!1164603 m!5817800))

(assert (=> b!4826568 d!1546699))

(declare-fun d!1546701 () Bool)

(declare-fun isEmpty!29659 (Option!13499) Bool)

(assert (=> d!1546701 (= (isDefined!10613 (getValueByKey!2626 (toList!7482 (extractMap!2681 (toList!7481 lm!2280))) key!5428)) (not (isEmpty!29659 (getValueByKey!2626 (toList!7482 (extractMap!2681 (toList!7481 lm!2280))) key!5428))))))

(declare-fun bs!1164604 () Bool)

(assert (= bs!1164604 d!1546701))

(assert (=> bs!1164604 m!5817712))

(declare-fun m!5817802 () Bool)

(assert (=> bs!1164604 m!5817802))

(assert (=> b!4826568 d!1546701))

(declare-fun d!1546703 () Bool)

(declare-fun c!822473 () Bool)

(assert (=> d!1546703 (= c!822473 (and (is-Cons!54976 (toList!7482 (extractMap!2681 (toList!7481 lm!2280)))) (= (_1!32393 (h!61410 (toList!7482 (extractMap!2681 (toList!7481 lm!2280))))) key!5428)))))

(declare-fun e!3015968 () Option!13499)

(assert (=> d!1546703 (= (getValueByKey!2626 (toList!7482 (extractMap!2681 (toList!7481 lm!2280))) key!5428) e!3015968)))

(declare-fun b!4826656 () Bool)

(declare-fun e!3015969 () Option!13499)

(assert (=> b!4826656 (= e!3015969 (getValueByKey!2626 (t!362596 (toList!7482 (extractMap!2681 (toList!7481 lm!2280)))) key!5428))))

(declare-fun b!4826655 () Bool)

(assert (=> b!4826655 (= e!3015968 e!3015969)))

(declare-fun c!822474 () Bool)

(assert (=> b!4826655 (= c!822474 (and (is-Cons!54976 (toList!7482 (extractMap!2681 (toList!7481 lm!2280)))) (not (= (_1!32393 (h!61410 (toList!7482 (extractMap!2681 (toList!7481 lm!2280))))) key!5428))))))

(declare-fun b!4826654 () Bool)

(assert (=> b!4826654 (= e!3015968 (Some!13498 (_2!32393 (h!61410 (toList!7482 (extractMap!2681 (toList!7481 lm!2280)))))))))

(declare-fun b!4826657 () Bool)

(assert (=> b!4826657 (= e!3015969 None!13498)))

(assert (= (and d!1546703 c!822473) b!4826654))

(assert (= (and d!1546703 (not c!822473)) b!4826655))

(assert (= (and b!4826655 c!822474) b!4826656))

(assert (= (and b!4826655 (not c!822474)) b!4826657))

(declare-fun m!5817804 () Bool)

(assert (=> b!4826656 m!5817804))

(assert (=> b!4826568 d!1546703))

(declare-fun d!1546705 () Bool)

(assert (=> d!1546705 (contains!18790 (getKeysList!1161 (toList!7482 (extractMap!2681 (toList!7481 lm!2280)))) key!5428)))

(declare-fun lt!1973812 () Unit!143201)

(declare-fun choose!35151 (List!55100 K!16657) Unit!143201)

(assert (=> d!1546705 (= lt!1973812 (choose!35151 (toList!7482 (extractMap!2681 (toList!7481 lm!2280))) key!5428))))

(assert (=> d!1546705 (invariantList!1814 (toList!7482 (extractMap!2681 (toList!7481 lm!2280))))))

(assert (=> d!1546705 (= (lemmaInListThenGetKeysListContains!1156 (toList!7482 (extractMap!2681 (toList!7481 lm!2280))) key!5428) lt!1973812)))

(declare-fun bs!1164605 () Bool)

(assert (= bs!1164605 d!1546705))

(assert (=> bs!1164605 m!5817730))

(assert (=> bs!1164605 m!5817730))

(declare-fun m!5817806 () Bool)

(assert (=> bs!1164605 m!5817806))

(declare-fun m!5817808 () Bool)

(assert (=> bs!1164605 m!5817808))

(assert (=> bs!1164605 m!5817800))

(assert (=> b!4826568 d!1546705))

(declare-fun d!1546707 () Bool)

(declare-fun isEmpty!29660 (Option!13498) Bool)

(assert (=> d!1546707 (= (isDefined!10614 (getValueByKey!2625 (toList!7481 lm!2280) lt!1973725)) (not (isEmpty!29660 (getValueByKey!2625 (toList!7481 lm!2280) lt!1973725))))))

(declare-fun bs!1164606 () Bool)

(assert (= bs!1164606 d!1546707))

(assert (=> bs!1164606 m!5817696))

(declare-fun m!5817810 () Bool)

(assert (=> bs!1164606 m!5817810))

(assert (=> b!4826597 d!1546707))

(declare-fun b!4826668 () Bool)

(declare-fun e!3015975 () Option!13498)

(assert (=> b!4826668 (= e!3015975 (getValueByKey!2625 (t!362597 (toList!7481 lm!2280)) lt!1973725))))

(declare-fun b!4826669 () Bool)

(assert (=> b!4826669 (= e!3015975 None!13497)))

(declare-fun b!4826667 () Bool)

(declare-fun e!3015974 () Option!13498)

(assert (=> b!4826667 (= e!3015974 e!3015975)))

(declare-fun c!822480 () Bool)

(assert (=> b!4826667 (= c!822480 (and (is-Cons!54977 (toList!7481 lm!2280)) (not (= (_1!32394 (h!61411 (toList!7481 lm!2280))) lt!1973725))))))

(declare-fun d!1546709 () Bool)

(declare-fun c!822479 () Bool)

(assert (=> d!1546709 (= c!822479 (and (is-Cons!54977 (toList!7481 lm!2280)) (= (_1!32394 (h!61411 (toList!7481 lm!2280))) lt!1973725)))))

(assert (=> d!1546709 (= (getValueByKey!2625 (toList!7481 lm!2280) lt!1973725) e!3015974)))

(declare-fun b!4826666 () Bool)

(assert (=> b!4826666 (= e!3015974 (Some!13497 (_2!32394 (h!61411 (toList!7481 lm!2280)))))))

(assert (= (and d!1546709 c!822479) b!4826666))

(assert (= (and d!1546709 (not c!822479)) b!4826667))

(assert (= (and b!4826667 c!822480) b!4826668))

(assert (= (and b!4826667 (not c!822480)) b!4826669))

(declare-fun m!5817812 () Bool)

(assert (=> b!4826668 m!5817812))

(assert (=> b!4826597 d!1546709))

(declare-fun d!1546711 () Bool)

(declare-fun lt!1973815 () Bool)

(declare-fun content!9822 (List!55104) (Set K!16657))

(assert (=> d!1546711 (= lt!1973815 (set.member key!5428 (content!9822 (keys!20230 (extractMap!2681 (toList!7481 lm!2280))))))))

(declare-fun e!3015980 () Bool)

(assert (=> d!1546711 (= lt!1973815 e!3015980)))

(declare-fun res!2055044 () Bool)

(assert (=> d!1546711 (=> (not res!2055044) (not e!3015980))))

(assert (=> d!1546711 (= res!2055044 (is-Cons!54980 (keys!20230 (extractMap!2681 (toList!7481 lm!2280)))))))

(assert (=> d!1546711 (= (contains!18790 (keys!20230 (extractMap!2681 (toList!7481 lm!2280))) key!5428) lt!1973815)))

(declare-fun b!4826674 () Bool)

(declare-fun e!3015981 () Bool)

(assert (=> b!4826674 (= e!3015980 e!3015981)))

(declare-fun res!2055045 () Bool)

(assert (=> b!4826674 (=> res!2055045 e!3015981)))

(assert (=> b!4826674 (= res!2055045 (= (h!61414 (keys!20230 (extractMap!2681 (toList!7481 lm!2280)))) key!5428))))

(declare-fun b!4826675 () Bool)

(assert (=> b!4826675 (= e!3015981 (contains!18790 (t!362600 (keys!20230 (extractMap!2681 (toList!7481 lm!2280)))) key!5428))))

(assert (= (and d!1546711 res!2055044) b!4826674))

(assert (= (and b!4826674 (not res!2055045)) b!4826675))

(assert (=> d!1546711 m!5817724))

(declare-fun m!5817814 () Bool)

(assert (=> d!1546711 m!5817814))

(declare-fun m!5817816 () Bool)

(assert (=> d!1546711 m!5817816))

(declare-fun m!5817818 () Bool)

(assert (=> b!4826675 m!5817818))

(assert (=> b!4826567 d!1546711))

(declare-fun b!4826683 () Bool)

(assert (=> b!4826683 true))

(declare-fun d!1546713 () Bool)

(declare-fun e!3015984 () Bool)

(assert (=> d!1546713 e!3015984))

(declare-fun res!2055052 () Bool)

(assert (=> d!1546713 (=> (not res!2055052) (not e!3015984))))

(declare-fun lt!1973818 () List!55104)

(declare-fun noDuplicate!963 (List!55104) Bool)

(assert (=> d!1546713 (= res!2055052 (noDuplicate!963 lt!1973818))))

(assert (=> d!1546713 (= lt!1973818 (getKeysList!1161 (toList!7482 (extractMap!2681 (toList!7481 lm!2280)))))))

(assert (=> d!1546713 (= (keys!20230 (extractMap!2681 (toList!7481 lm!2280))) lt!1973818)))

(declare-fun b!4826682 () Bool)

(declare-fun res!2055054 () Bool)

(assert (=> b!4826682 (=> (not res!2055054) (not e!3015984))))

(declare-fun length!782 (List!55104) Int)

(declare-fun length!783 (List!55100) Int)

(assert (=> b!4826682 (= res!2055054 (= (length!782 lt!1973818) (length!783 (toList!7482 (extractMap!2681 (toList!7481 lm!2280))))))))

(declare-fun res!2055053 () Bool)

(assert (=> b!4826683 (=> (not res!2055053) (not e!3015984))))

(declare-fun lambda!236893 () Int)

(declare-fun forall!12615 (List!55104 Int) Bool)

(assert (=> b!4826683 (= res!2055053 (forall!12615 lt!1973818 lambda!236893))))

(declare-fun lambda!236894 () Int)

(declare-fun b!4826684 () Bool)

(declare-fun map!12583 (List!55100 Int) List!55104)

(assert (=> b!4826684 (= e!3015984 (= (content!9822 lt!1973818) (content!9822 (map!12583 (toList!7482 (extractMap!2681 (toList!7481 lm!2280))) lambda!236894))))))

(assert (= (and d!1546713 res!2055052) b!4826682))

(assert (= (and b!4826682 res!2055054) b!4826683))

(assert (= (and b!4826683 res!2055053) b!4826684))

(declare-fun m!5817820 () Bool)

(assert (=> d!1546713 m!5817820))

(assert (=> d!1546713 m!5817730))

(declare-fun m!5817822 () Bool)

(assert (=> b!4826682 m!5817822))

(declare-fun m!5817824 () Bool)

(assert (=> b!4826682 m!5817824))

(declare-fun m!5817826 () Bool)

(assert (=> b!4826683 m!5817826))

(declare-fun m!5817828 () Bool)

(assert (=> b!4826684 m!5817828))

(declare-fun m!5817830 () Bool)

(assert (=> b!4826684 m!5817830))

(assert (=> b!4826684 m!5817830))

(declare-fun m!5817832 () Bool)

(assert (=> b!4826684 m!5817832))

(assert (=> b!4826567 d!1546713))

(declare-fun d!1546715 () Bool)

(declare-fun res!2055059 () Bool)

(declare-fun e!3015989 () Bool)

(assert (=> d!1546715 (=> res!2055059 e!3015989)))

(assert (=> d!1546715 (= res!2055059 (and (is-Cons!54977 (toList!7481 lm!2280)) (= (_1!32394 (h!61411 (toList!7481 lm!2280))) lt!1973725)))))

(assert (=> d!1546715 (= (containsKey!4379 (toList!7481 lm!2280) lt!1973725) e!3015989)))

(declare-fun b!4826691 () Bool)

(declare-fun e!3015990 () Bool)

(assert (=> b!4826691 (= e!3015989 e!3015990)))

(declare-fun res!2055060 () Bool)

(assert (=> b!4826691 (=> (not res!2055060) (not e!3015990))))

(assert (=> b!4826691 (= res!2055060 (and (or (not (is-Cons!54977 (toList!7481 lm!2280))) (bvsle (_1!32394 (h!61411 (toList!7481 lm!2280))) lt!1973725)) (is-Cons!54977 (toList!7481 lm!2280)) (bvslt (_1!32394 (h!61411 (toList!7481 lm!2280))) lt!1973725)))))

(declare-fun b!4826692 () Bool)

(assert (=> b!4826692 (= e!3015990 (containsKey!4379 (t!362597 (toList!7481 lm!2280)) lt!1973725))))

(assert (= (and d!1546715 (not res!2055059)) b!4826691))

(assert (= (and b!4826691 res!2055060) b!4826692))

(declare-fun m!5817834 () Bool)

(assert (=> b!4826692 m!5817834))

(assert (=> d!1546683 d!1546715))

(declare-fun d!1546717 () Bool)

(declare-fun res!2055065 () Bool)

(declare-fun e!3015995 () Bool)

(assert (=> d!1546717 (=> res!2055065 e!3015995)))

(assert (=> d!1546717 (= res!2055065 (and (is-Cons!54976 (toList!7482 (extractMap!2681 (toList!7481 lm!2280)))) (= (_1!32393 (h!61410 (toList!7482 (extractMap!2681 (toList!7481 lm!2280))))) key!5428)))))

(assert (=> d!1546717 (= (containsKey!4378 (toList!7482 (extractMap!2681 (toList!7481 lm!2280))) key!5428) e!3015995)))

(declare-fun b!4826697 () Bool)

(declare-fun e!3015996 () Bool)

(assert (=> b!4826697 (= e!3015995 e!3015996)))

(declare-fun res!2055066 () Bool)

(assert (=> b!4826697 (=> (not res!2055066) (not e!3015996))))

(assert (=> b!4826697 (= res!2055066 (is-Cons!54976 (toList!7482 (extractMap!2681 (toList!7481 lm!2280)))))))

(declare-fun b!4826698 () Bool)

(assert (=> b!4826698 (= e!3015996 (containsKey!4378 (t!362596 (toList!7482 (extractMap!2681 (toList!7481 lm!2280)))) key!5428))))

(assert (= (and d!1546717 (not res!2055065)) b!4826697))

(assert (= (and b!4826697 res!2055066) b!4826698))

(declare-fun m!5817836 () Bool)

(assert (=> b!4826698 m!5817836))

(assert (=> b!4826561 d!1546717))

(declare-fun d!1546719 () Bool)

(assert (=> d!1546719 (containsKey!4378 (toList!7482 (extractMap!2681 (toList!7481 lm!2280))) key!5428)))

(declare-fun lt!1973821 () Unit!143201)

(declare-fun choose!35152 (List!55100 K!16657) Unit!143201)

(assert (=> d!1546719 (= lt!1973821 (choose!35152 (toList!7482 (extractMap!2681 (toList!7481 lm!2280))) key!5428))))

(assert (=> d!1546719 (invariantList!1814 (toList!7482 (extractMap!2681 (toList!7481 lm!2280))))))

(assert (=> d!1546719 (= (lemmaInGetKeysListThenContainsKey!1161 (toList!7482 (extractMap!2681 (toList!7481 lm!2280))) key!5428) lt!1973821)))

(declare-fun bs!1164607 () Bool)

(assert (= bs!1164607 d!1546719))

(assert (=> bs!1164607 m!5817716))

(declare-fun m!5817838 () Bool)

(assert (=> bs!1164607 m!5817838))

(assert (=> bs!1164607 m!5817800))

(assert (=> b!4826561 d!1546719))

(declare-fun d!1546721 () Bool)

(declare-fun res!2055067 () Bool)

(declare-fun e!3015997 () Bool)

(assert (=> d!1546721 (=> res!2055067 e!3015997)))

(assert (=> d!1546721 (= res!2055067 (and (is-Cons!54976 (t!362596 (apply!13354 lm!2280 lt!1973725))) (= (_1!32393 (h!61410 (t!362596 (apply!13354 lm!2280 lt!1973725)))) key!5428)))))

(assert (=> d!1546721 (= (containsKey!4376 (t!362596 (apply!13354 lm!2280 lt!1973725)) key!5428) e!3015997)))

(declare-fun b!4826699 () Bool)

(declare-fun e!3015998 () Bool)

(assert (=> b!4826699 (= e!3015997 e!3015998)))

(declare-fun res!2055068 () Bool)

(assert (=> b!4826699 (=> (not res!2055068) (not e!3015998))))

(assert (=> b!4826699 (= res!2055068 (is-Cons!54976 (t!362596 (apply!13354 lm!2280 lt!1973725))))))

(declare-fun b!4826700 () Bool)

(assert (=> b!4826700 (= e!3015998 (containsKey!4376 (t!362596 (t!362596 (apply!13354 lm!2280 lt!1973725))) key!5428))))

(assert (= (and d!1546721 (not res!2055067)) b!4826699))

(assert (= (and b!4826699 res!2055068) b!4826700))

(declare-fun m!5817840 () Bool)

(assert (=> b!4826700 m!5817840))

(assert (=> b!4826529 d!1546721))

(declare-fun bs!1164608 () Bool)

(declare-fun b!4826722 () Bool)

(assert (= bs!1164608 (and b!4826722 b!4826683)))

(declare-fun lambda!236903 () Int)

(assert (=> bs!1164608 (= (= (t!362596 (toList!7482 (extractMap!2681 (toList!7481 lm!2280)))) (toList!7482 (extractMap!2681 (toList!7481 lm!2280)))) (= lambda!236903 lambda!236893))))

(assert (=> b!4826722 true))

(declare-fun bs!1164609 () Bool)

(declare-fun b!4826719 () Bool)

(assert (= bs!1164609 (and b!4826719 b!4826683)))

(declare-fun lambda!236904 () Int)

(assert (=> bs!1164609 (= (= (Cons!54976 (h!61410 (toList!7482 (extractMap!2681 (toList!7481 lm!2280)))) (t!362596 (toList!7482 (extractMap!2681 (toList!7481 lm!2280))))) (toList!7482 (extractMap!2681 (toList!7481 lm!2280)))) (= lambda!236904 lambda!236893))))

(declare-fun bs!1164610 () Bool)

(assert (= bs!1164610 (and b!4826719 b!4826722)))

(assert (=> bs!1164610 (= (= (Cons!54976 (h!61410 (toList!7482 (extractMap!2681 (toList!7481 lm!2280)))) (t!362596 (toList!7482 (extractMap!2681 (toList!7481 lm!2280))))) (t!362596 (toList!7482 (extractMap!2681 (toList!7481 lm!2280))))) (= lambda!236904 lambda!236903))))

(assert (=> b!4826719 true))

(declare-fun bs!1164611 () Bool)

(declare-fun b!4826725 () Bool)

(assert (= bs!1164611 (and b!4826725 b!4826683)))

(declare-fun lambda!236905 () Int)

(assert (=> bs!1164611 (= lambda!236905 lambda!236893)))

(declare-fun bs!1164612 () Bool)

(assert (= bs!1164612 (and b!4826725 b!4826722)))

(assert (=> bs!1164612 (= (= (toList!7482 (extractMap!2681 (toList!7481 lm!2280))) (t!362596 (toList!7482 (extractMap!2681 (toList!7481 lm!2280))))) (= lambda!236905 lambda!236903))))

(declare-fun bs!1164613 () Bool)

(assert (= bs!1164613 (and b!4826725 b!4826719)))

(assert (=> bs!1164613 (= (= (toList!7482 (extractMap!2681 (toList!7481 lm!2280))) (Cons!54976 (h!61410 (toList!7482 (extractMap!2681 (toList!7481 lm!2280)))) (t!362596 (toList!7482 (extractMap!2681 (toList!7481 lm!2280)))))) (= lambda!236905 lambda!236904))))

(assert (=> b!4826725 true))

(declare-fun bs!1164614 () Bool)

(declare-fun b!4826723 () Bool)

(assert (= bs!1164614 (and b!4826723 b!4826684)))

(declare-fun lambda!236906 () Int)

(assert (=> bs!1164614 (= lambda!236906 lambda!236894)))

(declare-fun e!3016008 () List!55104)

(assert (=> b!4826719 (= e!3016008 (Cons!54980 (_1!32393 (h!61410 (toList!7482 (extractMap!2681 (toList!7481 lm!2280))))) (getKeysList!1161 (t!362596 (toList!7482 (extractMap!2681 (toList!7481 lm!2280)))))))))

(declare-fun c!822488 () Bool)

(assert (=> b!4826719 (= c!822488 (containsKey!4378 (t!362596 (toList!7482 (extractMap!2681 (toList!7481 lm!2280)))) (_1!32393 (h!61410 (toList!7482 (extractMap!2681 (toList!7481 lm!2280)))))))))

(declare-fun lt!1973842 () Unit!143201)

(declare-fun e!3016010 () Unit!143201)

(assert (=> b!4826719 (= lt!1973842 e!3016010)))

(declare-fun c!822489 () Bool)

(assert (=> b!4826719 (= c!822489 (contains!18790 (getKeysList!1161 (t!362596 (toList!7482 (extractMap!2681 (toList!7481 lm!2280))))) (_1!32393 (h!61410 (toList!7482 (extractMap!2681 (toList!7481 lm!2280)))))))))

(declare-fun lt!1973836 () Unit!143201)

(declare-fun e!3016007 () Unit!143201)

(assert (=> b!4826719 (= lt!1973836 e!3016007)))

(declare-fun lt!1973841 () List!55104)

(assert (=> b!4826719 (= lt!1973841 (getKeysList!1161 (t!362596 (toList!7482 (extractMap!2681 (toList!7481 lm!2280))))))))

(declare-fun lt!1973837 () Unit!143201)

(declare-fun lemmaForallContainsAddHeadPreserves!378 (List!55100 List!55104 tuple2!58198) Unit!143201)

(assert (=> b!4826719 (= lt!1973837 (lemmaForallContainsAddHeadPreserves!378 (t!362596 (toList!7482 (extractMap!2681 (toList!7481 lm!2280)))) lt!1973841 (h!61410 (toList!7482 (extractMap!2681 (toList!7481 lm!2280))))))))

(assert (=> b!4826719 (forall!12615 lt!1973841 lambda!236904)))

(declare-fun lt!1973839 () Unit!143201)

(assert (=> b!4826719 (= lt!1973839 lt!1973837)))

(declare-fun b!4826720 () Bool)

(declare-fun Unit!143211 () Unit!143201)

(assert (=> b!4826720 (= e!3016010 Unit!143211)))

(assert (=> b!4826722 false))

(declare-fun lt!1973840 () Unit!143201)

(declare-fun forallContained!4389 (List!55104 Int K!16657) Unit!143201)

(assert (=> b!4826722 (= lt!1973840 (forallContained!4389 (getKeysList!1161 (t!362596 (toList!7482 (extractMap!2681 (toList!7481 lm!2280))))) lambda!236903 (_1!32393 (h!61410 (toList!7482 (extractMap!2681 (toList!7481 lm!2280)))))))))

(declare-fun Unit!143212 () Unit!143201)

(assert (=> b!4826722 (= e!3016007 Unit!143212)))

(declare-fun b!4826721 () Bool)

(assert (=> b!4826721 (= e!3016008 Nil!54980)))

(declare-fun d!1546723 () Bool)

(declare-fun e!3016009 () Bool)

(assert (=> d!1546723 e!3016009))

(declare-fun res!2055076 () Bool)

(assert (=> d!1546723 (=> (not res!2055076) (not e!3016009))))

(declare-fun lt!1973838 () List!55104)

(assert (=> d!1546723 (= res!2055076 (noDuplicate!963 lt!1973838))))

(assert (=> d!1546723 (= lt!1973838 e!3016008)))

(declare-fun c!822487 () Bool)

(assert (=> d!1546723 (= c!822487 (is-Cons!54976 (toList!7482 (extractMap!2681 (toList!7481 lm!2280)))))))

(assert (=> d!1546723 (invariantList!1814 (toList!7482 (extractMap!2681 (toList!7481 lm!2280))))))

(assert (=> d!1546723 (= (getKeysList!1161 (toList!7482 (extractMap!2681 (toList!7481 lm!2280)))) lt!1973838)))

(assert (=> b!4826723 (= e!3016009 (= (content!9822 lt!1973838) (content!9822 (map!12583 (toList!7482 (extractMap!2681 (toList!7481 lm!2280))) lambda!236906))))))

(declare-fun b!4826724 () Bool)

(assert (=> b!4826724 false))

(declare-fun Unit!143213 () Unit!143201)

(assert (=> b!4826724 (= e!3016010 Unit!143213)))

(declare-fun res!2055075 () Bool)

(assert (=> b!4826725 (=> (not res!2055075) (not e!3016009))))

(assert (=> b!4826725 (= res!2055075 (forall!12615 lt!1973838 lambda!236905))))

(declare-fun b!4826726 () Bool)

(declare-fun res!2055077 () Bool)

(assert (=> b!4826726 (=> (not res!2055077) (not e!3016009))))

(assert (=> b!4826726 (= res!2055077 (= (length!782 lt!1973838) (length!783 (toList!7482 (extractMap!2681 (toList!7481 lm!2280))))))))

(declare-fun b!4826727 () Bool)

(declare-fun Unit!143214 () Unit!143201)

(assert (=> b!4826727 (= e!3016007 Unit!143214)))

(assert (= (and d!1546723 c!822487) b!4826719))

(assert (= (and d!1546723 (not c!822487)) b!4826721))

(assert (= (and b!4826719 c!822488) b!4826724))

(assert (= (and b!4826719 (not c!822488)) b!4826720))

(assert (= (and b!4826719 c!822489) b!4826722))

(assert (= (and b!4826719 (not c!822489)) b!4826727))

(assert (= (and d!1546723 res!2055076) b!4826726))

(assert (= (and b!4826726 res!2055077) b!4826725))

(assert (= (and b!4826725 res!2055075) b!4826723))

(declare-fun m!5817842 () Bool)

(assert (=> b!4826723 m!5817842))

(declare-fun m!5817844 () Bool)

(assert (=> b!4826723 m!5817844))

(assert (=> b!4826723 m!5817844))

(declare-fun m!5817846 () Bool)

(assert (=> b!4826723 m!5817846))

(declare-fun m!5817848 () Bool)

(assert (=> b!4826722 m!5817848))

(assert (=> b!4826722 m!5817848))

(declare-fun m!5817850 () Bool)

(assert (=> b!4826722 m!5817850))

(assert (=> b!4826719 m!5817848))

(declare-fun m!5817852 () Bool)

(assert (=> b!4826719 m!5817852))

(assert (=> b!4826719 m!5817848))

(declare-fun m!5817854 () Bool)

(assert (=> b!4826719 m!5817854))

(declare-fun m!5817856 () Bool)

(assert (=> b!4826719 m!5817856))

(declare-fun m!5817858 () Bool)

(assert (=> b!4826719 m!5817858))

(declare-fun m!5817860 () Bool)

(assert (=> b!4826726 m!5817860))

(assert (=> b!4826726 m!5817824))

(declare-fun m!5817862 () Bool)

(assert (=> d!1546723 m!5817862))

(assert (=> d!1546723 m!5817800))

(declare-fun m!5817864 () Bool)

(assert (=> b!4826725 m!5817864))

(assert (=> b!4826562 d!1546723))

(declare-fun b!4826777 () Bool)

(assert (=> b!4826777 true))

(declare-fun bs!1164618 () Bool)

(declare-fun b!4826780 () Bool)

(assert (= bs!1164618 (and b!4826780 b!4826777)))

(declare-fun lambda!236942 () Int)

(declare-fun lambda!236941 () Int)

(assert (=> bs!1164618 (= lambda!236942 lambda!236941)))

(assert (=> b!4826780 true))

(declare-fun lt!1973908 () ListMap!6859)

(declare-fun lambda!236943 () Int)

(assert (=> bs!1164618 (= (= lt!1973908 (extractMap!2681 (t!362597 (toList!7481 lm!2280)))) (= lambda!236943 lambda!236941))))

(assert (=> b!4826780 (= (= lt!1973908 (extractMap!2681 (t!362597 (toList!7481 lm!2280)))) (= lambda!236943 lambda!236942))))

(assert (=> b!4826780 true))

(declare-fun bs!1164619 () Bool)

(declare-fun d!1546725 () Bool)

(assert (= bs!1164619 (and d!1546725 b!4826777)))

(declare-fun lambda!236944 () Int)

(declare-fun lt!1973912 () ListMap!6859)

(assert (=> bs!1164619 (= (= lt!1973912 (extractMap!2681 (t!362597 (toList!7481 lm!2280)))) (= lambda!236944 lambda!236941))))

(declare-fun bs!1164620 () Bool)

(assert (= bs!1164620 (and d!1546725 b!4826780)))

(assert (=> bs!1164620 (= (= lt!1973912 (extractMap!2681 (t!362597 (toList!7481 lm!2280)))) (= lambda!236944 lambda!236942))))

(assert (=> bs!1164620 (= (= lt!1973912 lt!1973908) (= lambda!236944 lambda!236943))))

(assert (=> d!1546725 true))

(declare-fun c!822498 () Bool)

(declare-fun call!336439 () Bool)

(declare-fun bm!336432 () Bool)

(declare-fun forall!12616 (List!55100 Int) Bool)

(assert (=> bm!336432 (= call!336439 (forall!12616 (toList!7482 (extractMap!2681 (t!362597 (toList!7481 lm!2280)))) (ite c!822498 lambda!236941 lambda!236943)))))

(declare-fun e!3016041 () ListMap!6859)

(assert (=> b!4826777 (= e!3016041 (extractMap!2681 (t!362597 (toList!7481 lm!2280))))))

(declare-fun lt!1973895 () Unit!143201)

(declare-fun call!336438 () Unit!143201)

(assert (=> b!4826777 (= lt!1973895 call!336438)))

(declare-fun call!336437 () Bool)

(assert (=> b!4826777 call!336437))

(declare-fun lt!1973913 () Unit!143201)

(assert (=> b!4826777 (= lt!1973913 lt!1973895)))

(assert (=> b!4826777 call!336439))

(declare-fun lt!1973898 () Unit!143201)

(declare-fun Unit!143215 () Unit!143201)

(assert (=> b!4826777 (= lt!1973898 Unit!143215)))

(declare-fun b!4826778 () Bool)

(declare-fun res!2055108 () Bool)

(declare-fun e!3016042 () Bool)

(assert (=> b!4826778 (=> (not res!2055108) (not e!3016042))))

(assert (=> b!4826778 (= res!2055108 (forall!12616 (toList!7482 (extractMap!2681 (t!362597 (toList!7481 lm!2280)))) lambda!236944))))

(declare-fun bm!336433 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!993 (ListMap!6859) Unit!143201)

(assert (=> bm!336433 (= call!336438 (lemmaContainsAllItsOwnKeys!993 (extractMap!2681 (t!362597 (toList!7481 lm!2280)))))))

(declare-fun bm!336434 () Bool)

(assert (=> bm!336434 (= call!336437 (forall!12616 (ite c!822498 (toList!7482 (extractMap!2681 (t!362597 (toList!7481 lm!2280)))) (_2!32394 (h!61411 (toList!7481 lm!2280)))) (ite c!822498 lambda!236941 lambda!236943)))))

(assert (=> b!4826780 (= e!3016041 lt!1973908)))

(declare-fun lt!1973904 () ListMap!6859)

(declare-fun +!2538 (ListMap!6859 tuple2!58198) ListMap!6859)

(assert (=> b!4826780 (= lt!1973904 (+!2538 (extractMap!2681 (t!362597 (toList!7481 lm!2280))) (h!61410 (_2!32394 (h!61411 (toList!7481 lm!2280))))))))

(assert (=> b!4826780 (= lt!1973908 (addToMapMapFromBucket!1799 (t!362596 (_2!32394 (h!61411 (toList!7481 lm!2280)))) (+!2538 (extractMap!2681 (t!362597 (toList!7481 lm!2280))) (h!61410 (_2!32394 (h!61411 (toList!7481 lm!2280)))))))))

(declare-fun lt!1973914 () Unit!143201)

(assert (=> b!4826780 (= lt!1973914 call!336438)))

(assert (=> b!4826780 (forall!12616 (toList!7482 (extractMap!2681 (t!362597 (toList!7481 lm!2280)))) lambda!236942)))

(declare-fun lt!1973906 () Unit!143201)

(assert (=> b!4826780 (= lt!1973906 lt!1973914)))

(assert (=> b!4826780 (forall!12616 (toList!7482 lt!1973904) lambda!236943)))

(declare-fun lt!1973910 () Unit!143201)

(declare-fun Unit!143216 () Unit!143201)

(assert (=> b!4826780 (= lt!1973910 Unit!143216)))

(assert (=> b!4826780 (forall!12616 (t!362596 (_2!32394 (h!61411 (toList!7481 lm!2280)))) lambda!236943)))

(declare-fun lt!1973899 () Unit!143201)

(declare-fun Unit!143217 () Unit!143201)

(assert (=> b!4826780 (= lt!1973899 Unit!143217)))

(declare-fun lt!1973901 () Unit!143201)

(declare-fun Unit!143218 () Unit!143201)

(assert (=> b!4826780 (= lt!1973901 Unit!143218)))

(declare-fun lt!1973903 () Unit!143201)

(declare-fun forallContained!4390 (List!55100 Int tuple2!58198) Unit!143201)

(assert (=> b!4826780 (= lt!1973903 (forallContained!4390 (toList!7482 lt!1973904) lambda!236943 (h!61410 (_2!32394 (h!61411 (toList!7481 lm!2280))))))))

(assert (=> b!4826780 (contains!18787 lt!1973904 (_1!32393 (h!61410 (_2!32394 (h!61411 (toList!7481 lm!2280))))))))

(declare-fun lt!1973905 () Unit!143201)

(declare-fun Unit!143219 () Unit!143201)

(assert (=> b!4826780 (= lt!1973905 Unit!143219)))

(assert (=> b!4826780 (contains!18787 lt!1973908 (_1!32393 (h!61410 (_2!32394 (h!61411 (toList!7481 lm!2280))))))))

(declare-fun lt!1973894 () Unit!143201)

(declare-fun Unit!143220 () Unit!143201)

(assert (=> b!4826780 (= lt!1973894 Unit!143220)))

(assert (=> b!4826780 call!336437))

(declare-fun lt!1973902 () Unit!143201)

(declare-fun Unit!143221 () Unit!143201)

(assert (=> b!4826780 (= lt!1973902 Unit!143221)))

(assert (=> b!4826780 (forall!12616 (toList!7482 lt!1973904) lambda!236943)))

(declare-fun lt!1973909 () Unit!143201)

(declare-fun Unit!143222 () Unit!143201)

(assert (=> b!4826780 (= lt!1973909 Unit!143222)))

(declare-fun lt!1973897 () Unit!143201)

(declare-fun Unit!143223 () Unit!143201)

(assert (=> b!4826780 (= lt!1973897 Unit!143223)))

(declare-fun lt!1973896 () Unit!143201)

(declare-fun addForallContainsKeyThenBeforeAdding!992 (ListMap!6859 ListMap!6859 K!16657 V!16903) Unit!143201)

(assert (=> b!4826780 (= lt!1973896 (addForallContainsKeyThenBeforeAdding!992 (extractMap!2681 (t!362597 (toList!7481 lm!2280))) lt!1973908 (_1!32393 (h!61410 (_2!32394 (h!61411 (toList!7481 lm!2280))))) (_2!32393 (h!61410 (_2!32394 (h!61411 (toList!7481 lm!2280)))))))))

(assert (=> b!4826780 (forall!12616 (toList!7482 (extractMap!2681 (t!362597 (toList!7481 lm!2280)))) lambda!236943)))

(declare-fun lt!1973911 () Unit!143201)

(assert (=> b!4826780 (= lt!1973911 lt!1973896)))

(assert (=> b!4826780 (forall!12616 (toList!7482 (extractMap!2681 (t!362597 (toList!7481 lm!2280)))) lambda!236943)))

(declare-fun lt!1973907 () Unit!143201)

(declare-fun Unit!143224 () Unit!143201)

(assert (=> b!4826780 (= lt!1973907 Unit!143224)))

(declare-fun res!2055109 () Bool)

(assert (=> b!4826780 (= res!2055109 (forall!12616 (_2!32394 (h!61411 (toList!7481 lm!2280))) lambda!236943))))

(declare-fun e!3016040 () Bool)

(assert (=> b!4826780 (=> (not res!2055109) (not e!3016040))))

(assert (=> b!4826780 e!3016040))

(declare-fun lt!1973900 () Unit!143201)

(declare-fun Unit!143225 () Unit!143201)

(assert (=> b!4826780 (= lt!1973900 Unit!143225)))

(declare-fun b!4826781 () Bool)

(assert (=> b!4826781 (= e!3016040 call!336439)))

(assert (=> d!1546725 e!3016042))

(declare-fun res!2055107 () Bool)

(assert (=> d!1546725 (=> (not res!2055107) (not e!3016042))))

(assert (=> d!1546725 (= res!2055107 (forall!12616 (_2!32394 (h!61411 (toList!7481 lm!2280))) lambda!236944))))

(assert (=> d!1546725 (= lt!1973912 e!3016041)))

(assert (=> d!1546725 (= c!822498 (is-Nil!54976 (_2!32394 (h!61411 (toList!7481 lm!2280)))))))

(assert (=> d!1546725 (noDuplicateKeys!2453 (_2!32394 (h!61411 (toList!7481 lm!2280))))))

(assert (=> d!1546725 (= (addToMapMapFromBucket!1799 (_2!32394 (h!61411 (toList!7481 lm!2280))) (extractMap!2681 (t!362597 (toList!7481 lm!2280)))) lt!1973912)))

(declare-fun b!4826779 () Bool)

(assert (=> b!4826779 (= e!3016042 (invariantList!1814 (toList!7482 lt!1973912)))))

(assert (= (and d!1546725 c!822498) b!4826777))

(assert (= (and d!1546725 (not c!822498)) b!4826780))

(assert (= (and b!4826780 res!2055109) b!4826781))

(assert (= (or b!4826777 b!4826781) bm!336432))

(assert (= (or b!4826777 b!4826780) bm!336434))

(assert (= (or b!4826777 b!4826780) bm!336433))

(assert (= (and d!1546725 res!2055107) b!4826778))

(assert (= (and b!4826778 res!2055108) b!4826779))

(declare-fun m!5817904 () Bool)

(assert (=> bm!336434 m!5817904))

(declare-fun m!5817906 () Bool)

(assert (=> d!1546725 m!5817906))

(assert (=> d!1546725 m!5817756))

(declare-fun m!5817908 () Bool)

(assert (=> b!4826778 m!5817908))

(assert (=> b!4826780 m!5817742))

(declare-fun m!5817910 () Bool)

(assert (=> b!4826780 m!5817910))

(assert (=> b!4826780 m!5817742))

(declare-fun m!5817912 () Bool)

(assert (=> b!4826780 m!5817912))

(declare-fun m!5817914 () Bool)

(assert (=> b!4826780 m!5817914))

(declare-fun m!5817916 () Bool)

(assert (=> b!4826780 m!5817916))

(declare-fun m!5817918 () Bool)

(assert (=> b!4826780 m!5817918))

(assert (=> b!4826780 m!5817916))

(declare-fun m!5817920 () Bool)

(assert (=> b!4826780 m!5817920))

(declare-fun m!5817922 () Bool)

(assert (=> b!4826780 m!5817922))

(declare-fun m!5817924 () Bool)

(assert (=> b!4826780 m!5817924))

(declare-fun m!5817926 () Bool)

(assert (=> b!4826780 m!5817926))

(declare-fun m!5817928 () Bool)

(assert (=> b!4826780 m!5817928))

(assert (=> b!4826780 m!5817926))

(assert (=> b!4826780 m!5817912))

(declare-fun m!5817930 () Bool)

(assert (=> b!4826780 m!5817930))

(assert (=> bm!336433 m!5817742))

(declare-fun m!5817932 () Bool)

(assert (=> bm!336433 m!5817932))

(declare-fun m!5817934 () Bool)

(assert (=> b!4826779 m!5817934))

(declare-fun m!5817936 () Bool)

(assert (=> bm!336432 m!5817936))

(assert (=> b!4826579 d!1546725))

(declare-fun bs!1164621 () Bool)

(declare-fun d!1546749 () Bool)

(assert (= bs!1164621 (and d!1546749 start!500842)))

(declare-fun lambda!236945 () Int)

(assert (=> bs!1164621 (= lambda!236945 lambda!236873)))

(declare-fun bs!1164622 () Bool)

(assert (= bs!1164622 (and d!1546749 d!1546675)))

(assert (=> bs!1164622 (= lambda!236945 lambda!236879)))

(declare-fun bs!1164623 () Bool)

(assert (= bs!1164623 (and d!1546749 d!1546681)))

(assert (=> bs!1164623 (not (= lambda!236945 lambda!236882))))

(declare-fun lt!1973915 () ListMap!6859)

(assert (=> d!1546749 (invariantList!1814 (toList!7482 lt!1973915))))

(declare-fun e!3016049 () ListMap!6859)

(assert (=> d!1546749 (= lt!1973915 e!3016049)))

(declare-fun c!822505 () Bool)

(assert (=> d!1546749 (= c!822505 (is-Cons!54977 (t!362597 (toList!7481 lm!2280))))))

(assert (=> d!1546749 (forall!12613 (t!362597 (toList!7481 lm!2280)) lambda!236945)))

(assert (=> d!1546749 (= (extractMap!2681 (t!362597 (toList!7481 lm!2280))) lt!1973915)))

(declare-fun b!4826796 () Bool)

(assert (=> b!4826796 (= e!3016049 (addToMapMapFromBucket!1799 (_2!32394 (h!61411 (t!362597 (toList!7481 lm!2280)))) (extractMap!2681 (t!362597 (t!362597 (toList!7481 lm!2280))))))))

(declare-fun b!4826797 () Bool)

(assert (=> b!4826797 (= e!3016049 (ListMap!6860 Nil!54976))))

(assert (= (and d!1546749 c!822505) b!4826796))

(assert (= (and d!1546749 (not c!822505)) b!4826797))

(declare-fun m!5817938 () Bool)

(assert (=> d!1546749 m!5817938))

(declare-fun m!5817940 () Bool)

(assert (=> d!1546749 m!5817940))

(declare-fun m!5817942 () Bool)

(assert (=> b!4826796 m!5817942))

(assert (=> b!4826796 m!5817942))

(declare-fun m!5817944 () Bool)

(assert (=> b!4826796 m!5817944))

(assert (=> b!4826579 d!1546749))

(assert (=> d!1546667 d!1546717))

(declare-fun d!1546751 () Bool)

(assert (=> d!1546751 (= (get!18826 (getValueByKey!2625 (toList!7481 lm!2280) lt!1973725)) (v!49180 (getValueByKey!2625 (toList!7481 lm!2280) lt!1973725)))))

(assert (=> d!1546661 d!1546751))

(assert (=> d!1546661 d!1546709))

(declare-fun d!1546753 () Bool)

(declare-fun res!2055114 () Bool)

(declare-fun e!3016054 () Bool)

(assert (=> d!1546753 (=> res!2055114 e!3016054)))

(assert (=> d!1546753 (= res!2055114 (or (is-Nil!54977 (toList!7481 lm!2280)) (is-Nil!54977 (t!362597 (toList!7481 lm!2280)))))))

(assert (=> d!1546753 (= (isStrictlySorted!987 (toList!7481 lm!2280)) e!3016054)))

(declare-fun b!4826802 () Bool)

(declare-fun e!3016055 () Bool)

(assert (=> b!4826802 (= e!3016054 e!3016055)))

(declare-fun res!2055115 () Bool)

(assert (=> b!4826802 (=> (not res!2055115) (not e!3016055))))

(assert (=> b!4826802 (= res!2055115 (bvslt (_1!32394 (h!61411 (toList!7481 lm!2280))) (_1!32394 (h!61411 (t!362597 (toList!7481 lm!2280))))))))

(declare-fun b!4826803 () Bool)

(assert (=> b!4826803 (= e!3016055 (isStrictlySorted!987 (t!362597 (toList!7481 lm!2280))))))

(assert (= (and d!1546753 (not res!2055114)) b!4826802))

(assert (= (and b!4826802 res!2055115) b!4826803))

(declare-fun m!5817946 () Bool)

(assert (=> b!4826803 m!5817946))

(assert (=> d!1546665 d!1546753))

(declare-fun d!1546755 () Bool)

(declare-fun lt!1973919 () Bool)

(assert (=> d!1546755 (= lt!1973919 (set.member key!5428 (content!9822 e!3015910)))))

(declare-fun e!3016056 () Bool)

(assert (=> d!1546755 (= lt!1973919 e!3016056)))

(declare-fun res!2055116 () Bool)

(assert (=> d!1546755 (=> (not res!2055116) (not e!3016056))))

(assert (=> d!1546755 (= res!2055116 (is-Cons!54980 e!3015910))))

(assert (=> d!1546755 (= (contains!18790 e!3015910 key!5428) lt!1973919)))

(declare-fun b!4826804 () Bool)

(declare-fun e!3016057 () Bool)

(assert (=> b!4826804 (= e!3016056 e!3016057)))

(declare-fun res!2055117 () Bool)

(assert (=> b!4826804 (=> res!2055117 e!3016057)))

(assert (=> b!4826804 (= res!2055117 (= (h!61414 e!3015910) key!5428))))

(declare-fun b!4826805 () Bool)

(assert (=> b!4826805 (= e!3016057 (contains!18790 (t!362600 e!3015910) key!5428))))

(assert (= (and d!1546755 res!2055116) b!4826804))

(assert (= (and b!4826804 (not res!2055117)) b!4826805))

(declare-fun m!5817952 () Bool)

(assert (=> d!1546755 m!5817952))

(declare-fun m!5817954 () Bool)

(assert (=> d!1546755 m!5817954))

(declare-fun m!5817956 () Bool)

(assert (=> b!4826805 m!5817956))

(assert (=> bm!336422 d!1546755))

(declare-fun d!1546759 () Bool)

(declare-fun res!2055122 () Bool)

(declare-fun e!3016062 () Bool)

(assert (=> d!1546759 (=> res!2055122 e!3016062)))

(assert (=> d!1546759 (= res!2055122 (not (is-Cons!54976 (_2!32394 (h!61411 (toList!7481 lm!2280))))))))

(assert (=> d!1546759 (= (noDuplicateKeys!2453 (_2!32394 (h!61411 (toList!7481 lm!2280)))) e!3016062)))

(declare-fun b!4826810 () Bool)

(declare-fun e!3016063 () Bool)

(assert (=> b!4826810 (= e!3016062 e!3016063)))

(declare-fun res!2055123 () Bool)

(assert (=> b!4826810 (=> (not res!2055123) (not e!3016063))))

(assert (=> b!4826810 (= res!2055123 (not (containsKey!4376 (t!362596 (_2!32394 (h!61411 (toList!7481 lm!2280)))) (_1!32393 (h!61410 (_2!32394 (h!61411 (toList!7481 lm!2280))))))))))

(declare-fun b!4826811 () Bool)

(assert (=> b!4826811 (= e!3016063 (noDuplicateKeys!2453 (t!362596 (_2!32394 (h!61411 (toList!7481 lm!2280))))))))

(assert (= (and d!1546759 (not res!2055122)) b!4826810))

(assert (= (and b!4826810 res!2055123) b!4826811))

(declare-fun m!5817958 () Bool)

(assert (=> b!4826810 m!5817958))

(declare-fun m!5817960 () Bool)

(assert (=> b!4826811 m!5817960))

(assert (=> bs!1164596 d!1546759))

(declare-fun d!1546761 () Bool)

(declare-fun res!2055124 () Bool)

(declare-fun e!3016064 () Bool)

(assert (=> d!1546761 (=> res!2055124 e!3016064)))

(assert (=> d!1546761 (= res!2055124 (is-Nil!54977 (toList!7481 lm!2280)))))

(assert (=> d!1546761 (= (forall!12613 (toList!7481 lm!2280) lambda!236882) e!3016064)))

(declare-fun b!4826812 () Bool)

(declare-fun e!3016065 () Bool)

(assert (=> b!4826812 (= e!3016064 e!3016065)))

(declare-fun res!2055125 () Bool)

(assert (=> b!4826812 (=> (not res!2055125) (not e!3016065))))

(assert (=> b!4826812 (= res!2055125 (dynLambda!22221 lambda!236882 (h!61411 (toList!7481 lm!2280))))))

(declare-fun b!4826813 () Bool)

(assert (=> b!4826813 (= e!3016065 (forall!12613 (t!362597 (toList!7481 lm!2280)) lambda!236882))))

(assert (= (and d!1546761 (not res!2055124)) b!4826812))

(assert (= (and b!4826812 res!2055125) b!4826813))

(declare-fun b_lambda!190015 () Bool)

(assert (=> (not b_lambda!190015) (not b!4826812)))

(declare-fun m!5817962 () Bool)

(assert (=> b!4826812 m!5817962))

(declare-fun m!5817964 () Bool)

(assert (=> b!4826813 m!5817964))

(assert (=> d!1546681 d!1546761))

(assert (=> b!4826564 d!1546713))

(declare-fun d!1546763 () Bool)

(declare-fun choose!35153 (Hashable!7267 K!16657) (_ BitVec 64))

(assert (=> d!1546763 (= (hash!5409 hashF!1509 key!5428) (choose!35153 hashF!1509 key!5428))))

(declare-fun bs!1164625 () Bool)

(assert (= bs!1164625 d!1546763))

(declare-fun m!5817966 () Bool)

(assert (=> bs!1164625 m!5817966))

(assert (=> d!1546685 d!1546763))

(declare-fun d!1546765 () Bool)

(declare-fun noDuplicatedKeys!481 (List!55100) Bool)

(assert (=> d!1546765 (= (invariantList!1814 (toList!7482 lt!1973755)) (noDuplicatedKeys!481 (toList!7482 lt!1973755)))))

(declare-fun bs!1164626 () Bool)

(assert (= bs!1164626 d!1546765))

(declare-fun m!5817968 () Bool)

(assert (=> bs!1164626 m!5817968))

(assert (=> d!1546675 d!1546765))

(declare-fun d!1546767 () Bool)

(declare-fun res!2055126 () Bool)

(declare-fun e!3016066 () Bool)

(assert (=> d!1546767 (=> res!2055126 e!3016066)))

(assert (=> d!1546767 (= res!2055126 (is-Nil!54977 (toList!7481 lm!2280)))))

(assert (=> d!1546767 (= (forall!12613 (toList!7481 lm!2280) lambda!236879) e!3016066)))

(declare-fun b!4826814 () Bool)

(declare-fun e!3016067 () Bool)

(assert (=> b!4826814 (= e!3016066 e!3016067)))

(declare-fun res!2055127 () Bool)

(assert (=> b!4826814 (=> (not res!2055127) (not e!3016067))))

(assert (=> b!4826814 (= res!2055127 (dynLambda!22221 lambda!236879 (h!61411 (toList!7481 lm!2280))))))

(declare-fun b!4826815 () Bool)

(assert (=> b!4826815 (= e!3016067 (forall!12613 (t!362597 (toList!7481 lm!2280)) lambda!236879))))

(assert (= (and d!1546767 (not res!2055126)) b!4826814))

(assert (= (and b!4826814 res!2055127) b!4826815))

(declare-fun b_lambda!190017 () Bool)

(assert (=> (not b_lambda!190017) (not b!4826814)))

(declare-fun m!5817970 () Bool)

(assert (=> b!4826814 m!5817970))

(declare-fun m!5817972 () Bool)

(assert (=> b!4826815 m!5817972))

(assert (=> d!1546675 d!1546767))

(assert (=> b!4826565 d!1546701))

(assert (=> b!4826565 d!1546703))

(declare-fun d!1546769 () Bool)

(declare-fun res!2055128 () Bool)

(declare-fun e!3016068 () Bool)

(assert (=> d!1546769 (=> res!2055128 e!3016068)))

(assert (=> d!1546769 (= res!2055128 (is-Nil!54977 (t!362597 (toList!7481 lm!2280))))))

(assert (=> d!1546769 (= (forall!12613 (t!362597 (toList!7481 lm!2280)) lambda!236873) e!3016068)))

(declare-fun b!4826816 () Bool)

(declare-fun e!3016069 () Bool)

(assert (=> b!4826816 (= e!3016068 e!3016069)))

(declare-fun res!2055129 () Bool)

(assert (=> b!4826816 (=> (not res!2055129) (not e!3016069))))

(assert (=> b!4826816 (= res!2055129 (dynLambda!22221 lambda!236873 (h!61411 (t!362597 (toList!7481 lm!2280)))))))

(declare-fun b!4826817 () Bool)

(assert (=> b!4826817 (= e!3016069 (forall!12613 (t!362597 (t!362597 (toList!7481 lm!2280))) lambda!236873))))

(assert (= (and d!1546769 (not res!2055128)) b!4826816))

(assert (= (and b!4826816 res!2055129) b!4826817))

(declare-fun b_lambda!190019 () Bool)

(assert (=> (not b_lambda!190019) (not b!4826816)))

(declare-fun m!5817974 () Bool)

(assert (=> b!4826816 m!5817974))

(declare-fun m!5817976 () Bool)

(assert (=> b!4826817 m!5817976))

(assert (=> b!4826535 d!1546769))

(assert (=> b!4826566 d!1546711))

(assert (=> b!4826566 d!1546713))

(declare-fun d!1546771 () Bool)

(assert (=> d!1546771 (isDefined!10614 (getValueByKey!2625 (toList!7481 lm!2280) lt!1973725))))

(declare-fun lt!1973922 () Unit!143201)

(declare-fun choose!35154 (List!55101 (_ BitVec 64)) Unit!143201)

(assert (=> d!1546771 (= lt!1973922 (choose!35154 (toList!7481 lm!2280) lt!1973725))))

(declare-fun e!3016072 () Bool)

(assert (=> d!1546771 e!3016072))

(declare-fun res!2055132 () Bool)

(assert (=> d!1546771 (=> (not res!2055132) (not e!3016072))))

(assert (=> d!1546771 (= res!2055132 (isStrictlySorted!987 (toList!7481 lm!2280)))))

(assert (=> d!1546771 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2411 (toList!7481 lm!2280) lt!1973725) lt!1973922)))

(declare-fun b!4826820 () Bool)

(assert (=> b!4826820 (= e!3016072 (containsKey!4379 (toList!7481 lm!2280) lt!1973725))))

(assert (= (and d!1546771 res!2055132) b!4826820))

(assert (=> d!1546771 m!5817696))

(assert (=> d!1546771 m!5817696))

(assert (=> d!1546771 m!5817752))

(declare-fun m!5817978 () Bool)

(assert (=> d!1546771 m!5817978))

(assert (=> d!1546771 m!5817704))

(assert (=> b!4826820 m!5817748))

(assert (=> b!4826595 d!1546771))

(assert (=> b!4826595 d!1546707))

(assert (=> b!4826595 d!1546709))

(declare-fun e!3016075 () Bool)

(declare-fun tp_is_empty!34469 () Bool)

(declare-fun tp!1362629 () Bool)

(declare-fun b!4826825 () Bool)

(assert (=> b!4826825 (= e!3016075 (and tp_is_empty!34465 tp_is_empty!34469 tp!1362629))))

(assert (=> b!4826602 (= tp!1362619 e!3016075)))

(assert (= (and b!4826602 (is-Cons!54976 (_2!32394 (h!61411 (toList!7481 lm!2280))))) b!4826825))

(declare-fun b!4826826 () Bool)

(declare-fun e!3016076 () Bool)

(declare-fun tp!1362630 () Bool)

(declare-fun tp!1362631 () Bool)

(assert (=> b!4826826 (= e!3016076 (and tp!1362630 tp!1362631))))

(assert (=> b!4826602 (= tp!1362620 e!3016076)))

(assert (= (and b!4826602 (is-Cons!54977 (t!362597 (toList!7481 lm!2280)))) b!4826826))

(declare-fun b_lambda!190021 () Bool)

(assert (= b_lambda!190015 (or d!1546681 b_lambda!190021)))

(declare-fun bs!1164627 () Bool)

(declare-fun d!1546773 () Bool)

(assert (= bs!1164627 (and d!1546773 d!1546681)))

(declare-fun allKeysSameHash!2009 (List!55100 (_ BitVec 64) Hashable!7267) Bool)

(assert (=> bs!1164627 (= (dynLambda!22221 lambda!236882 (h!61411 (toList!7481 lm!2280))) (allKeysSameHash!2009 (_2!32394 (h!61411 (toList!7481 lm!2280))) (_1!32394 (h!61411 (toList!7481 lm!2280))) hashF!1509))))

(declare-fun m!5817980 () Bool)

(assert (=> bs!1164627 m!5817980))

(assert (=> b!4826812 d!1546773))

(declare-fun b_lambda!190023 () Bool)

(assert (= b_lambda!190017 (or d!1546675 b_lambda!190023)))

(declare-fun bs!1164628 () Bool)

(declare-fun d!1546775 () Bool)

(assert (= bs!1164628 (and d!1546775 d!1546675)))

(assert (=> bs!1164628 (= (dynLambda!22221 lambda!236879 (h!61411 (toList!7481 lm!2280))) (noDuplicateKeys!2453 (_2!32394 (h!61411 (toList!7481 lm!2280)))))))

(assert (=> bs!1164628 m!5817756))

(assert (=> b!4826814 d!1546775))

(declare-fun b_lambda!190025 () Bool)

(assert (= b_lambda!190019 (or start!500842 b_lambda!190025)))

(declare-fun bs!1164629 () Bool)

(declare-fun d!1546777 () Bool)

(assert (= bs!1164629 (and d!1546777 start!500842)))

(assert (=> bs!1164629 (= (dynLambda!22221 lambda!236873 (h!61411 (t!362597 (toList!7481 lm!2280)))) (noDuplicateKeys!2453 (_2!32394 (h!61411 (t!362597 (toList!7481 lm!2280))))))))

(declare-fun m!5817982 () Bool)

(assert (=> bs!1164629 m!5817982))

(assert (=> b!4826816 d!1546777))

(push 1)

(assert (not d!1546771))

(assert (not b!4826725))

(assert (not b!4826811))

(assert (not d!1546713))

(assert (not b_lambda!190025))

(assert (not b_lambda!190021))

(assert (not b!4826805))

(assert (not b!4826683))

(assert tp_is_empty!34469)

(assert (not b!4826698))

(assert (not b!4826692))

(assert (not b!4826780))

(assert (not d!1546723))

(assert (not b_lambda!190009))

(assert (not b!4826813))

(assert (not d!1546707))

(assert (not b!4826810))

(assert (not d!1546763))

(assert (not d!1546699))

(assert (not b!4826779))

(assert (not b!4826826))

(assert (not b!4826820))

(assert (not d!1546749))

(assert (not b!4826778))

(assert (not b!4826817))

(assert (not d!1546755))

(assert (not d!1546701))

(assert (not b_lambda!190023))

(assert (not b!4826726))

(assert (not b!4826656))

(assert (not b!4826675))

(assert (not b!4826700))

(assert (not bm!336434))

(assert (not d!1546719))

(assert (not bs!1164628))

(assert (not b!4826815))

(assert tp_is_empty!34465)

(assert (not bs!1164629))

(assert (not d!1546725))

(assert (not b!4826668))

(assert (not b!4826825))

(assert (not bm!336432))

(assert (not b!4826723))

(assert (not b!4826722))

(assert (not b!4826803))

(assert (not b!4826796))

(assert (not d!1546705))

(assert (not b!4826682))

(assert (not bm!336433))

(assert (not d!1546711))

(assert (not d!1546765))

(assert (not b!4826684))

(assert (not b!4826719))

(assert (not bs!1164627))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

