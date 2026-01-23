; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!505244 () Bool)

(assert start!505244)

(declare-fun b!4847884 () Bool)

(declare-fun res!2068476 () Bool)

(declare-fun e!3030186 () Bool)

(assert (=> b!4847884 (=> res!2068476 e!3030186)))

(declare-datatypes ((K!17339 0))(
  ( (K!17340 (val!22177 Int)) )
))
(declare-datatypes ((V!17585 0))(
  ( (V!17586 (val!22178 Int)) )
))
(declare-datatypes ((tuple2!59226 0))(
  ( (tuple2!59227 (_1!32907 K!17339) (_2!32907 V!17585)) )
))
(declare-datatypes ((List!55670 0))(
  ( (Nil!55546) (Cons!55546 (h!61983 tuple2!59226) (t!363166 List!55670)) )
))
(declare-datatypes ((tuple2!59228 0))(
  ( (tuple2!59229 (_1!32908 (_ BitVec 64)) (_2!32908 List!55670)) )
))
(declare-datatypes ((List!55671 0))(
  ( (Nil!55547) (Cons!55547 (h!61984 tuple2!59228) (t!363167 List!55671)) )
))
(declare-datatypes ((ListLongMap!6451 0))(
  ( (ListLongMap!6452 (toList!7854 List!55671)) )
))
(declare-fun lm!2646 () ListLongMap!6451)

(declare-fun key!6445 () K!17339)

(declare-datatypes ((Option!13663 0))(
  ( (None!13662) (Some!13662 (v!49424 tuple2!59226)) )
))
(declare-fun isDefined!10755 (Option!13663) Bool)

(declare-fun getPair!1084 (List!55670 K!17339) Option!13663)

(assert (=> b!4847884 (= res!2068476 (not (isDefined!10755 (getPair!1084 (_2!32908 (h!61984 (toList!7854 lm!2646))) key!6445))))))

(declare-fun b!4847885 () Bool)

(declare-fun e!3030188 () Bool)

(declare-fun tp!1364616 () Bool)

(assert (=> b!4847885 (= e!3030188 tp!1364616)))

(declare-fun b!4847886 () Bool)

(declare-fun res!2068472 () Bool)

(declare-fun e!3030185 () Bool)

(assert (=> b!4847886 (=> (not res!2068472) (not e!3030185))))

(declare-datatypes ((Hashable!7494 0))(
  ( (HashableExt!7493 (__x!33769 Int)) )
))
(declare-fun hashF!1641 () Hashable!7494)

(declare-fun allKeysSameHashInMap!2810 (ListLongMap!6451 Hashable!7494) Bool)

(assert (=> b!4847886 (= res!2068472 (allKeysSameHashInMap!2810 lm!2646 hashF!1641))))

(declare-fun b!4847887 () Bool)

(declare-fun res!2068474 () Bool)

(assert (=> b!4847887 (=> res!2068474 e!3030186)))

(declare-fun noDuplicateKeys!2588 (List!55670) Bool)

(assert (=> b!4847887 (= res!2068474 (not (noDuplicateKeys!2588 (_2!32908 (h!61984 (toList!7854 lm!2646))))))))

(declare-fun b!4847888 () Bool)

(declare-fun e!3030187 () Bool)

(assert (=> b!4847888 (= e!3030187 (not e!3030186))))

(declare-fun res!2068477 () Bool)

(assert (=> b!4847888 (=> res!2068477 e!3030186)))

(declare-fun lt!1988763 () List!55670)

(assert (=> b!4847888 (= res!2068477 (not (isDefined!10755 (getPair!1084 lt!1988763 key!6445))))))

(declare-fun lambda!242508 () Int)

(declare-datatypes ((Unit!145678 0))(
  ( (Unit!145679) )
))
(declare-fun lt!1988765 () Unit!145678)

(declare-fun lt!1988766 () tuple2!59228)

(declare-fun forallContained!4535 (List!55671 Int tuple2!59228) Unit!145678)

(assert (=> b!4847888 (= lt!1988765 (forallContained!4535 (toList!7854 lm!2646) lambda!242508 lt!1988766))))

(declare-fun contains!19199 (List!55671 tuple2!59228) Bool)

(assert (=> b!4847888 (contains!19199 (toList!7854 lm!2646) lt!1988766)))

(declare-fun lt!1988761 () (_ BitVec 64))

(assert (=> b!4847888 (= lt!1988766 (tuple2!59229 lt!1988761 lt!1988763))))

(declare-fun lt!1988764 () Unit!145678)

(declare-fun lemmaGetValueImpliesTupleContained!761 (ListLongMap!6451 (_ BitVec 64) List!55670) Unit!145678)

(assert (=> b!4847888 (= lt!1988764 (lemmaGetValueImpliesTupleContained!761 lm!2646 lt!1988761 lt!1988763))))

(declare-fun apply!13437 (ListLongMap!6451 (_ BitVec 64)) List!55670)

(assert (=> b!4847888 (= lt!1988763 (apply!13437 lm!2646 lt!1988761))))

(declare-fun res!2068471 () Bool)

(assert (=> start!505244 (=> (not res!2068471) (not e!3030185))))

(declare-fun forall!12947 (List!55671 Int) Bool)

(assert (=> start!505244 (= res!2068471 (forall!12947 (toList!7854 lm!2646) lambda!242508))))

(assert (=> start!505244 e!3030185))

(declare-fun inv!71225 (ListLongMap!6451) Bool)

(assert (=> start!505244 (and (inv!71225 lm!2646) e!3030188)))

(assert (=> start!505244 true))

(declare-fun tp_is_empty!35175 () Bool)

(assert (=> start!505244 tp_is_empty!35175))

(declare-fun b!4847889 () Bool)

(declare-fun res!2068475 () Bool)

(assert (=> b!4847889 (=> res!2068475 e!3030186)))

(get-info :version)

(assert (=> b!4847889 (= res!2068475 (or (not ((_ is Cons!55547) (toList!7854 lm!2646))) (not (= (_1!32908 (h!61984 (toList!7854 lm!2646))) lt!1988761))))))

(declare-fun b!4847890 () Bool)

(assert (=> b!4847890 (= e!3030185 e!3030187)))

(declare-fun res!2068473 () Bool)

(assert (=> b!4847890 (=> (not res!2068473) (not e!3030187))))

(declare-fun contains!19200 (ListLongMap!6451 (_ BitVec 64)) Bool)

(assert (=> b!4847890 (= res!2068473 (contains!19200 lm!2646 lt!1988761))))

(declare-fun hash!5580 (Hashable!7494 K!17339) (_ BitVec 64))

(assert (=> b!4847890 (= lt!1988761 (hash!5580 hashF!1641 key!6445))))

(declare-fun b!4847891 () Bool)

(declare-fun containsKeyBiggerList!768 (List!55671 K!17339) Bool)

(assert (=> b!4847891 (= e!3030186 (containsKeyBiggerList!768 (toList!7854 lm!2646) key!6445))))

(declare-fun containsKey!4680 (List!55670 K!17339) Bool)

(assert (=> b!4847891 (containsKey!4680 (_2!32908 (h!61984 (toList!7854 lm!2646))) key!6445)))

(declare-fun lt!1988762 () Unit!145678)

(declare-fun lemmaGetPairDefinedThenContainsKey!354 (List!55670 K!17339 Hashable!7494) Unit!145678)

(assert (=> b!4847891 (= lt!1988762 (lemmaGetPairDefinedThenContainsKey!354 (_2!32908 (h!61984 (toList!7854 lm!2646))) key!6445 hashF!1641))))

(assert (= (and start!505244 res!2068471) b!4847886))

(assert (= (and b!4847886 res!2068472) b!4847890))

(assert (= (and b!4847890 res!2068473) b!4847888))

(assert (= (and b!4847888 (not res!2068477)) b!4847889))

(assert (= (and b!4847889 (not res!2068475)) b!4847887))

(assert (= (and b!4847887 (not res!2068474)) b!4847884))

(assert (= (and b!4847884 (not res!2068476)) b!4847891))

(assert (= start!505244 b!4847885))

(declare-fun m!5845946 () Bool)

(assert (=> b!4847890 m!5845946))

(declare-fun m!5845948 () Bool)

(assert (=> b!4847890 m!5845948))

(declare-fun m!5845950 () Bool)

(assert (=> start!505244 m!5845950))

(declare-fun m!5845952 () Bool)

(assert (=> start!505244 m!5845952))

(declare-fun m!5845954 () Bool)

(assert (=> b!4847887 m!5845954))

(declare-fun m!5845956 () Bool)

(assert (=> b!4847888 m!5845956))

(declare-fun m!5845958 () Bool)

(assert (=> b!4847888 m!5845958))

(assert (=> b!4847888 m!5845958))

(declare-fun m!5845960 () Bool)

(assert (=> b!4847888 m!5845960))

(declare-fun m!5845962 () Bool)

(assert (=> b!4847888 m!5845962))

(declare-fun m!5845964 () Bool)

(assert (=> b!4847888 m!5845964))

(declare-fun m!5845966 () Bool)

(assert (=> b!4847888 m!5845966))

(declare-fun m!5845968 () Bool)

(assert (=> b!4847891 m!5845968))

(declare-fun m!5845970 () Bool)

(assert (=> b!4847891 m!5845970))

(declare-fun m!5845972 () Bool)

(assert (=> b!4847891 m!5845972))

(declare-fun m!5845974 () Bool)

(assert (=> b!4847884 m!5845974))

(assert (=> b!4847884 m!5845974))

(declare-fun m!5845976 () Bool)

(assert (=> b!4847884 m!5845976))

(declare-fun m!5845978 () Bool)

(assert (=> b!4847886 m!5845978))

(check-sat (not start!505244) (not b!4847885) tp_is_empty!35175 (not b!4847887) (not b!4847890) (not b!4847891) (not b!4847886) (not b!4847888) (not b!4847884))
(check-sat)
(get-model)

(declare-fun d!1555363 () Bool)

(declare-fun res!2068482 () Bool)

(declare-fun e!3030193 () Bool)

(assert (=> d!1555363 (=> res!2068482 e!3030193)))

(assert (=> d!1555363 (= res!2068482 ((_ is Nil!55547) (toList!7854 lm!2646)))))

(assert (=> d!1555363 (= (forall!12947 (toList!7854 lm!2646) lambda!242508) e!3030193)))

(declare-fun b!4847896 () Bool)

(declare-fun e!3030194 () Bool)

(assert (=> b!4847896 (= e!3030193 e!3030194)))

(declare-fun res!2068483 () Bool)

(assert (=> b!4847896 (=> (not res!2068483) (not e!3030194))))

(declare-fun dynLambda!22353 (Int tuple2!59228) Bool)

(assert (=> b!4847896 (= res!2068483 (dynLambda!22353 lambda!242508 (h!61984 (toList!7854 lm!2646))))))

(declare-fun b!4847897 () Bool)

(assert (=> b!4847897 (= e!3030194 (forall!12947 (t!363167 (toList!7854 lm!2646)) lambda!242508))))

(assert (= (and d!1555363 (not res!2068482)) b!4847896))

(assert (= (and b!4847896 res!2068483) b!4847897))

(declare-fun b_lambda!192515 () Bool)

(assert (=> (not b_lambda!192515) (not b!4847896)))

(declare-fun m!5845980 () Bool)

(assert (=> b!4847896 m!5845980))

(declare-fun m!5845982 () Bool)

(assert (=> b!4847897 m!5845982))

(assert (=> start!505244 d!1555363))

(declare-fun d!1555365 () Bool)

(declare-fun isStrictlySorted!1076 (List!55671) Bool)

(assert (=> d!1555365 (= (inv!71225 lm!2646) (isStrictlySorted!1076 (toList!7854 lm!2646)))))

(declare-fun bs!1172491 () Bool)

(assert (= bs!1172491 d!1555365))

(declare-fun m!5845984 () Bool)

(assert (=> bs!1172491 m!5845984))

(assert (=> start!505244 d!1555365))

(declare-fun d!1555369 () Bool)

(declare-fun isEmpty!29729 (Option!13663) Bool)

(assert (=> d!1555369 (= (isDefined!10755 (getPair!1084 (_2!32908 (h!61984 (toList!7854 lm!2646))) key!6445)) (not (isEmpty!29729 (getPair!1084 (_2!32908 (h!61984 (toList!7854 lm!2646))) key!6445))))))

(declare-fun bs!1172492 () Bool)

(assert (= bs!1172492 d!1555369))

(assert (=> bs!1172492 m!5845974))

(declare-fun m!5845986 () Bool)

(assert (=> bs!1172492 m!5845986))

(assert (=> b!4847884 d!1555369))

(declare-fun d!1555371 () Bool)

(declare-fun e!3030222 () Bool)

(assert (=> d!1555371 e!3030222))

(declare-fun res!2068509 () Bool)

(assert (=> d!1555371 (=> res!2068509 e!3030222)))

(declare-fun e!3030220 () Bool)

(assert (=> d!1555371 (= res!2068509 e!3030220)))

(declare-fun res!2068508 () Bool)

(assert (=> d!1555371 (=> (not res!2068508) (not e!3030220))))

(declare-fun lt!1988772 () Option!13663)

(assert (=> d!1555371 (= res!2068508 (isEmpty!29729 lt!1988772))))

(declare-fun e!3030221 () Option!13663)

(assert (=> d!1555371 (= lt!1988772 e!3030221)))

(declare-fun c!825154 () Bool)

(assert (=> d!1555371 (= c!825154 (and ((_ is Cons!55546) (_2!32908 (h!61984 (toList!7854 lm!2646)))) (= (_1!32907 (h!61983 (_2!32908 (h!61984 (toList!7854 lm!2646))))) key!6445)))))

(assert (=> d!1555371 (noDuplicateKeys!2588 (_2!32908 (h!61984 (toList!7854 lm!2646))))))

(assert (=> d!1555371 (= (getPair!1084 (_2!32908 (h!61984 (toList!7854 lm!2646))) key!6445) lt!1988772)))

(declare-fun b!4847929 () Bool)

(declare-fun e!3030223 () Bool)

(assert (=> b!4847929 (= e!3030222 e!3030223)))

(declare-fun res!2068510 () Bool)

(assert (=> b!4847929 (=> (not res!2068510) (not e!3030223))))

(assert (=> b!4847929 (= res!2068510 (isDefined!10755 lt!1988772))))

(declare-fun b!4847930 () Bool)

(assert (=> b!4847930 (= e!3030221 (Some!13662 (h!61983 (_2!32908 (h!61984 (toList!7854 lm!2646))))))))

(declare-fun b!4847931 () Bool)

(declare-fun e!3030224 () Option!13663)

(assert (=> b!4847931 (= e!3030224 None!13662)))

(declare-fun b!4847932 () Bool)

(assert (=> b!4847932 (= e!3030224 (getPair!1084 (t!363166 (_2!32908 (h!61984 (toList!7854 lm!2646)))) key!6445))))

(declare-fun b!4847933 () Bool)

(assert (=> b!4847933 (= e!3030221 e!3030224)))

(declare-fun c!825153 () Bool)

(assert (=> b!4847933 (= c!825153 ((_ is Cons!55546) (_2!32908 (h!61984 (toList!7854 lm!2646)))))))

(declare-fun b!4847934 () Bool)

(declare-fun contains!19201 (List!55670 tuple2!59226) Bool)

(declare-fun get!19026 (Option!13663) tuple2!59226)

(assert (=> b!4847934 (= e!3030223 (contains!19201 (_2!32908 (h!61984 (toList!7854 lm!2646))) (get!19026 lt!1988772)))))

(declare-fun b!4847935 () Bool)

(declare-fun res!2068507 () Bool)

(assert (=> b!4847935 (=> (not res!2068507) (not e!3030223))))

(assert (=> b!4847935 (= res!2068507 (= (_1!32907 (get!19026 lt!1988772)) key!6445))))

(declare-fun b!4847936 () Bool)

(assert (=> b!4847936 (= e!3030220 (not (containsKey!4680 (_2!32908 (h!61984 (toList!7854 lm!2646))) key!6445)))))

(assert (= (and d!1555371 c!825154) b!4847930))

(assert (= (and d!1555371 (not c!825154)) b!4847933))

(assert (= (and b!4847933 c!825153) b!4847932))

(assert (= (and b!4847933 (not c!825153)) b!4847931))

(assert (= (and d!1555371 res!2068508) b!4847936))

(assert (= (and d!1555371 (not res!2068509)) b!4847929))

(assert (= (and b!4847929 res!2068510) b!4847935))

(assert (= (and b!4847935 res!2068507) b!4847934))

(declare-fun m!5845994 () Bool)

(assert (=> b!4847932 m!5845994))

(assert (=> b!4847936 m!5845970))

(declare-fun m!5845996 () Bool)

(assert (=> d!1555371 m!5845996))

(assert (=> d!1555371 m!5845954))

(declare-fun m!5845998 () Bool)

(assert (=> b!4847935 m!5845998))

(assert (=> b!4847934 m!5845998))

(assert (=> b!4847934 m!5845998))

(declare-fun m!5846000 () Bool)

(assert (=> b!4847934 m!5846000))

(declare-fun m!5846002 () Bool)

(assert (=> b!4847929 m!5846002))

(assert (=> b!4847884 d!1555371))

(declare-fun d!1555379 () Bool)

(declare-fun lt!1988775 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9878 (List!55671) (InoxSet tuple2!59228))

(assert (=> d!1555379 (= lt!1988775 (select (content!9878 (toList!7854 lm!2646)) lt!1988766))))

(declare-fun e!3030230 () Bool)

(assert (=> d!1555379 (= lt!1988775 e!3030230)))

(declare-fun res!2068516 () Bool)

(assert (=> d!1555379 (=> (not res!2068516) (not e!3030230))))

(assert (=> d!1555379 (= res!2068516 ((_ is Cons!55547) (toList!7854 lm!2646)))))

(assert (=> d!1555379 (= (contains!19199 (toList!7854 lm!2646) lt!1988766) lt!1988775)))

(declare-fun b!4847943 () Bool)

(declare-fun e!3030229 () Bool)

(assert (=> b!4847943 (= e!3030230 e!3030229)))

(declare-fun res!2068515 () Bool)

(assert (=> b!4847943 (=> res!2068515 e!3030229)))

(assert (=> b!4847943 (= res!2068515 (= (h!61984 (toList!7854 lm!2646)) lt!1988766))))

(declare-fun b!4847944 () Bool)

(assert (=> b!4847944 (= e!3030229 (contains!19199 (t!363167 (toList!7854 lm!2646)) lt!1988766))))

(assert (= (and d!1555379 res!2068516) b!4847943))

(assert (= (and b!4847943 (not res!2068515)) b!4847944))

(declare-fun m!5846006 () Bool)

(assert (=> d!1555379 m!5846006))

(declare-fun m!5846008 () Bool)

(assert (=> d!1555379 m!5846008))

(declare-fun m!5846010 () Bool)

(assert (=> b!4847944 m!5846010))

(assert (=> b!4847888 d!1555379))

(declare-fun d!1555383 () Bool)

(declare-fun e!3030233 () Bool)

(assert (=> d!1555383 e!3030233))

(declare-fun res!2068519 () Bool)

(assert (=> d!1555383 (=> res!2068519 e!3030233)))

(declare-fun e!3030231 () Bool)

(assert (=> d!1555383 (= res!2068519 e!3030231)))

(declare-fun res!2068518 () Bool)

(assert (=> d!1555383 (=> (not res!2068518) (not e!3030231))))

(declare-fun lt!1988776 () Option!13663)

(assert (=> d!1555383 (= res!2068518 (isEmpty!29729 lt!1988776))))

(declare-fun e!3030232 () Option!13663)

(assert (=> d!1555383 (= lt!1988776 e!3030232)))

(declare-fun c!825156 () Bool)

(assert (=> d!1555383 (= c!825156 (and ((_ is Cons!55546) lt!1988763) (= (_1!32907 (h!61983 lt!1988763)) key!6445)))))

(assert (=> d!1555383 (noDuplicateKeys!2588 lt!1988763)))

(assert (=> d!1555383 (= (getPair!1084 lt!1988763 key!6445) lt!1988776)))

(declare-fun b!4847945 () Bool)

(declare-fun e!3030234 () Bool)

(assert (=> b!4847945 (= e!3030233 e!3030234)))

(declare-fun res!2068520 () Bool)

(assert (=> b!4847945 (=> (not res!2068520) (not e!3030234))))

(assert (=> b!4847945 (= res!2068520 (isDefined!10755 lt!1988776))))

(declare-fun b!4847946 () Bool)

(assert (=> b!4847946 (= e!3030232 (Some!13662 (h!61983 lt!1988763)))))

(declare-fun b!4847947 () Bool)

(declare-fun e!3030235 () Option!13663)

(assert (=> b!4847947 (= e!3030235 None!13662)))

(declare-fun b!4847948 () Bool)

(assert (=> b!4847948 (= e!3030235 (getPair!1084 (t!363166 lt!1988763) key!6445))))

(declare-fun b!4847949 () Bool)

(assert (=> b!4847949 (= e!3030232 e!3030235)))

(declare-fun c!825155 () Bool)

(assert (=> b!4847949 (= c!825155 ((_ is Cons!55546) lt!1988763))))

(declare-fun b!4847950 () Bool)

(assert (=> b!4847950 (= e!3030234 (contains!19201 lt!1988763 (get!19026 lt!1988776)))))

(declare-fun b!4847951 () Bool)

(declare-fun res!2068517 () Bool)

(assert (=> b!4847951 (=> (not res!2068517) (not e!3030234))))

(assert (=> b!4847951 (= res!2068517 (= (_1!32907 (get!19026 lt!1988776)) key!6445))))

(declare-fun b!4847952 () Bool)

(assert (=> b!4847952 (= e!3030231 (not (containsKey!4680 lt!1988763 key!6445)))))

(assert (= (and d!1555383 c!825156) b!4847946))

(assert (= (and d!1555383 (not c!825156)) b!4847949))

(assert (= (and b!4847949 c!825155) b!4847948))

(assert (= (and b!4847949 (not c!825155)) b!4847947))

(assert (= (and d!1555383 res!2068518) b!4847952))

(assert (= (and d!1555383 (not res!2068519)) b!4847945))

(assert (= (and b!4847945 res!2068520) b!4847951))

(assert (= (and b!4847951 res!2068517) b!4847950))

(declare-fun m!5846012 () Bool)

(assert (=> b!4847948 m!5846012))

(declare-fun m!5846014 () Bool)

(assert (=> b!4847952 m!5846014))

(declare-fun m!5846016 () Bool)

(assert (=> d!1555383 m!5846016))

(declare-fun m!5846018 () Bool)

(assert (=> d!1555383 m!5846018))

(declare-fun m!5846020 () Bool)

(assert (=> b!4847951 m!5846020))

(assert (=> b!4847950 m!5846020))

(assert (=> b!4847950 m!5846020))

(declare-fun m!5846022 () Bool)

(assert (=> b!4847950 m!5846022))

(declare-fun m!5846024 () Bool)

(assert (=> b!4847945 m!5846024))

(assert (=> b!4847888 d!1555383))

(declare-fun d!1555385 () Bool)

(declare-datatypes ((Option!13665 0))(
  ( (None!13664) (Some!13664 (v!49428 List!55670)) )
))
(declare-fun get!19027 (Option!13665) List!55670)

(declare-fun getValueByKey!2728 (List!55671 (_ BitVec 64)) Option!13665)

(assert (=> d!1555385 (= (apply!13437 lm!2646 lt!1988761) (get!19027 (getValueByKey!2728 (toList!7854 lm!2646) lt!1988761)))))

(declare-fun bs!1172496 () Bool)

(assert (= bs!1172496 d!1555385))

(declare-fun m!5846026 () Bool)

(assert (=> bs!1172496 m!5846026))

(assert (=> bs!1172496 m!5846026))

(declare-fun m!5846028 () Bool)

(assert (=> bs!1172496 m!5846028))

(assert (=> b!4847888 d!1555385))

(declare-fun d!1555387 () Bool)

(assert (=> d!1555387 (dynLambda!22353 lambda!242508 lt!1988766)))

(declare-fun lt!1988787 () Unit!145678)

(declare-fun choose!35450 (List!55671 Int tuple2!59228) Unit!145678)

(assert (=> d!1555387 (= lt!1988787 (choose!35450 (toList!7854 lm!2646) lambda!242508 lt!1988766))))

(declare-fun e!3030242 () Bool)

(assert (=> d!1555387 e!3030242))

(declare-fun res!2068525 () Bool)

(assert (=> d!1555387 (=> (not res!2068525) (not e!3030242))))

(assert (=> d!1555387 (= res!2068525 (forall!12947 (toList!7854 lm!2646) lambda!242508))))

(assert (=> d!1555387 (= (forallContained!4535 (toList!7854 lm!2646) lambda!242508 lt!1988766) lt!1988787)))

(declare-fun b!4847961 () Bool)

(assert (=> b!4847961 (= e!3030242 (contains!19199 (toList!7854 lm!2646) lt!1988766))))

(assert (= (and d!1555387 res!2068525) b!4847961))

(declare-fun b_lambda!192517 () Bool)

(assert (=> (not b_lambda!192517) (not d!1555387)))

(declare-fun m!5846030 () Bool)

(assert (=> d!1555387 m!5846030))

(declare-fun m!5846032 () Bool)

(assert (=> d!1555387 m!5846032))

(assert (=> d!1555387 m!5845950))

(assert (=> b!4847961 m!5845956))

(assert (=> b!4847888 d!1555387))

(declare-fun d!1555389 () Bool)

(assert (=> d!1555389 (contains!19199 (toList!7854 lm!2646) (tuple2!59229 lt!1988761 lt!1988763))))

(declare-fun lt!1988794 () Unit!145678)

(declare-fun choose!35452 (ListLongMap!6451 (_ BitVec 64) List!55670) Unit!145678)

(assert (=> d!1555389 (= lt!1988794 (choose!35452 lm!2646 lt!1988761 lt!1988763))))

(assert (=> d!1555389 (contains!19200 lm!2646 lt!1988761)))

(assert (=> d!1555389 (= (lemmaGetValueImpliesTupleContained!761 lm!2646 lt!1988761 lt!1988763) lt!1988794)))

(declare-fun bs!1172498 () Bool)

(assert (= bs!1172498 d!1555389))

(declare-fun m!5846044 () Bool)

(assert (=> bs!1172498 m!5846044))

(declare-fun m!5846046 () Bool)

(assert (=> bs!1172498 m!5846046))

(assert (=> bs!1172498 m!5845946))

(assert (=> b!4847888 d!1555389))

(declare-fun d!1555395 () Bool)

(assert (=> d!1555395 (= (isDefined!10755 (getPair!1084 lt!1988763 key!6445)) (not (isEmpty!29729 (getPair!1084 lt!1988763 key!6445))))))

(declare-fun bs!1172499 () Bool)

(assert (= bs!1172499 d!1555395))

(assert (=> bs!1172499 m!5845958))

(declare-fun m!5846048 () Bool)

(assert (=> bs!1172499 m!5846048))

(assert (=> b!4847888 d!1555395))

(declare-fun bs!1172501 () Bool)

(declare-fun d!1555397 () Bool)

(assert (= bs!1172501 (and d!1555397 start!505244)))

(declare-fun lambda!242514 () Int)

(assert (=> bs!1172501 (not (= lambda!242514 lambda!242508))))

(assert (=> d!1555397 true))

(assert (=> d!1555397 (= (allKeysSameHashInMap!2810 lm!2646 hashF!1641) (forall!12947 (toList!7854 lm!2646) lambda!242514))))

(declare-fun bs!1172502 () Bool)

(assert (= bs!1172502 d!1555397))

(declare-fun m!5846054 () Bool)

(assert (=> bs!1172502 m!5846054))

(assert (=> b!4847886 d!1555397))

(declare-fun d!1555401 () Bool)

(declare-fun res!2068537 () Bool)

(declare-fun e!3030255 () Bool)

(assert (=> d!1555401 (=> res!2068537 e!3030255)))

(assert (=> d!1555401 (= res!2068537 (not ((_ is Cons!55546) (_2!32908 (h!61984 (toList!7854 lm!2646))))))))

(assert (=> d!1555401 (= (noDuplicateKeys!2588 (_2!32908 (h!61984 (toList!7854 lm!2646)))) e!3030255)))

(declare-fun b!4847979 () Bool)

(declare-fun e!3030256 () Bool)

(assert (=> b!4847979 (= e!3030255 e!3030256)))

(declare-fun res!2068538 () Bool)

(assert (=> b!4847979 (=> (not res!2068538) (not e!3030256))))

(assert (=> b!4847979 (= res!2068538 (not (containsKey!4680 (t!363166 (_2!32908 (h!61984 (toList!7854 lm!2646)))) (_1!32907 (h!61983 (_2!32908 (h!61984 (toList!7854 lm!2646))))))))))

(declare-fun b!4847980 () Bool)

(assert (=> b!4847980 (= e!3030256 (noDuplicateKeys!2588 (t!363166 (_2!32908 (h!61984 (toList!7854 lm!2646))))))))

(assert (= (and d!1555401 (not res!2068537)) b!4847979))

(assert (= (and b!4847979 res!2068538) b!4847980))

(declare-fun m!5846064 () Bool)

(assert (=> b!4847979 m!5846064))

(declare-fun m!5846066 () Bool)

(assert (=> b!4847980 m!5846066))

(assert (=> b!4847887 d!1555401))

(declare-fun d!1555407 () Bool)

(declare-fun e!3030264 () Bool)

(assert (=> d!1555407 e!3030264))

(declare-fun res!2068544 () Bool)

(assert (=> d!1555407 (=> res!2068544 e!3030264)))

(declare-fun lt!1988812 () Bool)

(assert (=> d!1555407 (= res!2068544 (not lt!1988812))))

(declare-fun lt!1988815 () Bool)

(assert (=> d!1555407 (= lt!1988812 lt!1988815)))

(declare-fun lt!1988813 () Unit!145678)

(declare-fun e!3030265 () Unit!145678)

(assert (=> d!1555407 (= lt!1988813 e!3030265)))

(declare-fun c!825162 () Bool)

(assert (=> d!1555407 (= c!825162 lt!1988815)))

(declare-fun containsKey!4682 (List!55671 (_ BitVec 64)) Bool)

(assert (=> d!1555407 (= lt!1988815 (containsKey!4682 (toList!7854 lm!2646) lt!1988761))))

(assert (=> d!1555407 (= (contains!19200 lm!2646 lt!1988761) lt!1988812)))

(declare-fun b!4847990 () Bool)

(declare-fun lt!1988814 () Unit!145678)

(assert (=> b!4847990 (= e!3030265 lt!1988814)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2500 (List!55671 (_ BitVec 64)) Unit!145678)

(assert (=> b!4847990 (= lt!1988814 (lemmaContainsKeyImpliesGetValueByKeyDefined!2500 (toList!7854 lm!2646) lt!1988761))))

(declare-fun isDefined!10757 (Option!13665) Bool)

(assert (=> b!4847990 (isDefined!10757 (getValueByKey!2728 (toList!7854 lm!2646) lt!1988761))))

(declare-fun b!4847991 () Bool)

(declare-fun Unit!145681 () Unit!145678)

(assert (=> b!4847991 (= e!3030265 Unit!145681)))

(declare-fun b!4847992 () Bool)

(assert (=> b!4847992 (= e!3030264 (isDefined!10757 (getValueByKey!2728 (toList!7854 lm!2646) lt!1988761)))))

(assert (= (and d!1555407 c!825162) b!4847990))

(assert (= (and d!1555407 (not c!825162)) b!4847991))

(assert (= (and d!1555407 (not res!2068544)) b!4847992))

(declare-fun m!5846072 () Bool)

(assert (=> d!1555407 m!5846072))

(declare-fun m!5846074 () Bool)

(assert (=> b!4847990 m!5846074))

(assert (=> b!4847990 m!5846026))

(assert (=> b!4847990 m!5846026))

(declare-fun m!5846076 () Bool)

(assert (=> b!4847990 m!5846076))

(assert (=> b!4847992 m!5846026))

(assert (=> b!4847992 m!5846026))

(assert (=> b!4847992 m!5846076))

(assert (=> b!4847890 d!1555407))

(declare-fun d!1555411 () Bool)

(declare-fun hash!5582 (Hashable!7494 K!17339) (_ BitVec 64))

(assert (=> d!1555411 (= (hash!5580 hashF!1641 key!6445) (hash!5582 hashF!1641 key!6445))))

(declare-fun bs!1172504 () Bool)

(assert (= bs!1172504 d!1555411))

(declare-fun m!5846078 () Bool)

(assert (=> bs!1172504 m!5846078))

(assert (=> b!4847890 d!1555411))

(declare-fun d!1555413 () Bool)

(declare-fun res!2068563 () Bool)

(declare-fun e!3030288 () Bool)

(assert (=> d!1555413 (=> res!2068563 e!3030288)))

(declare-fun e!3030287 () Bool)

(assert (=> d!1555413 (= res!2068563 e!3030287)))

(declare-fun res!2068564 () Bool)

(assert (=> d!1555413 (=> (not res!2068564) (not e!3030287))))

(assert (=> d!1555413 (= res!2068564 ((_ is Cons!55547) (toList!7854 lm!2646)))))

(assert (=> d!1555413 (= (containsKeyBiggerList!768 (toList!7854 lm!2646) key!6445) e!3030288)))

(declare-fun b!4848023 () Bool)

(assert (=> b!4848023 (= e!3030287 (containsKey!4680 (_2!32908 (h!61984 (toList!7854 lm!2646))) key!6445))))

(declare-fun b!4848024 () Bool)

(declare-fun e!3030289 () Bool)

(assert (=> b!4848024 (= e!3030288 e!3030289)))

(declare-fun res!2068565 () Bool)

(assert (=> b!4848024 (=> (not res!2068565) (not e!3030289))))

(assert (=> b!4848024 (= res!2068565 ((_ is Cons!55547) (toList!7854 lm!2646)))))

(declare-fun b!4848025 () Bool)

(assert (=> b!4848025 (= e!3030289 (containsKeyBiggerList!768 (t!363167 (toList!7854 lm!2646)) key!6445))))

(assert (= (and d!1555413 res!2068564) b!4848023))

(assert (= (and d!1555413 (not res!2068563)) b!4848024))

(assert (= (and b!4848024 res!2068565) b!4848025))

(assert (=> b!4848023 m!5845970))

(declare-fun m!5846080 () Bool)

(assert (=> b!4848025 m!5846080))

(assert (=> b!4847891 d!1555413))

(declare-fun d!1555415 () Bool)

(declare-fun res!2068570 () Bool)

(declare-fun e!3030294 () Bool)

(assert (=> d!1555415 (=> res!2068570 e!3030294)))

(assert (=> d!1555415 (= res!2068570 (and ((_ is Cons!55546) (_2!32908 (h!61984 (toList!7854 lm!2646)))) (= (_1!32907 (h!61983 (_2!32908 (h!61984 (toList!7854 lm!2646))))) key!6445)))))

(assert (=> d!1555415 (= (containsKey!4680 (_2!32908 (h!61984 (toList!7854 lm!2646))) key!6445) e!3030294)))

(declare-fun b!4848030 () Bool)

(declare-fun e!3030295 () Bool)

(assert (=> b!4848030 (= e!3030294 e!3030295)))

(declare-fun res!2068571 () Bool)

(assert (=> b!4848030 (=> (not res!2068571) (not e!3030295))))

(assert (=> b!4848030 (= res!2068571 ((_ is Cons!55546) (_2!32908 (h!61984 (toList!7854 lm!2646)))))))

(declare-fun b!4848031 () Bool)

(assert (=> b!4848031 (= e!3030295 (containsKey!4680 (t!363166 (_2!32908 (h!61984 (toList!7854 lm!2646)))) key!6445))))

(assert (= (and d!1555415 (not res!2068570)) b!4848030))

(assert (= (and b!4848030 res!2068571) b!4848031))

(declare-fun m!5846098 () Bool)

(assert (=> b!4848031 m!5846098))

(assert (=> b!4847891 d!1555415))

(declare-fun d!1555421 () Bool)

(assert (=> d!1555421 (containsKey!4680 (_2!32908 (h!61984 (toList!7854 lm!2646))) key!6445)))

(declare-fun lt!1988821 () Unit!145678)

(declare-fun choose!35453 (List!55670 K!17339 Hashable!7494) Unit!145678)

(assert (=> d!1555421 (= lt!1988821 (choose!35453 (_2!32908 (h!61984 (toList!7854 lm!2646))) key!6445 hashF!1641))))

(assert (=> d!1555421 (noDuplicateKeys!2588 (_2!32908 (h!61984 (toList!7854 lm!2646))))))

(assert (=> d!1555421 (= (lemmaGetPairDefinedThenContainsKey!354 (_2!32908 (h!61984 (toList!7854 lm!2646))) key!6445 hashF!1641) lt!1988821)))

(declare-fun bs!1172506 () Bool)

(assert (= bs!1172506 d!1555421))

(assert (=> bs!1172506 m!5845970))

(declare-fun m!5846104 () Bool)

(assert (=> bs!1172506 m!5846104))

(assert (=> bs!1172506 m!5845954))

(assert (=> b!4847891 d!1555421))

(declare-fun b!4848046 () Bool)

(declare-fun e!3030308 () Bool)

(declare-fun tp!1364621 () Bool)

(declare-fun tp!1364622 () Bool)

(assert (=> b!4848046 (= e!3030308 (and tp!1364621 tp!1364622))))

(assert (=> b!4847885 (= tp!1364616 e!3030308)))

(assert (= (and b!4847885 ((_ is Cons!55547) (toList!7854 lm!2646))) b!4848046))

(declare-fun b_lambda!192521 () Bool)

(assert (= b_lambda!192515 (or start!505244 b_lambda!192521)))

(declare-fun bs!1172507 () Bool)

(declare-fun d!1555425 () Bool)

(assert (= bs!1172507 (and d!1555425 start!505244)))

(assert (=> bs!1172507 (= (dynLambda!22353 lambda!242508 (h!61984 (toList!7854 lm!2646))) (noDuplicateKeys!2588 (_2!32908 (h!61984 (toList!7854 lm!2646)))))))

(assert (=> bs!1172507 m!5845954))

(assert (=> b!4847896 d!1555425))

(declare-fun b_lambda!192523 () Bool)

(assert (= b_lambda!192517 (or start!505244 b_lambda!192523)))

(declare-fun bs!1172508 () Bool)

(declare-fun d!1555427 () Bool)

(assert (= bs!1172508 (and d!1555427 start!505244)))

(assert (=> bs!1172508 (= (dynLambda!22353 lambda!242508 lt!1988766) (noDuplicateKeys!2588 (_2!32908 lt!1988766)))))

(declare-fun m!5846106 () Bool)

(assert (=> bs!1172508 m!5846106))

(assert (=> d!1555387 d!1555427))

(check-sat (not d!1555411) (not b_lambda!192523) (not b_lambda!192521) (not b!4847948) (not d!1555371) (not b!4847961) (not d!1555395) (not d!1555383) (not bs!1172508) (not b!4847980) (not d!1555365) (not b!4848023) (not d!1555421) (not b!4847934) (not d!1555397) (not d!1555369) (not d!1555407) (not b!4847952) (not b!4847935) (not d!1555385) (not b!4848025) (not b!4847979) tp_is_empty!35175 (not b!4847936) (not bs!1172507) (not b!4848046) (not b!4847990) (not d!1555387) (not b!4847950) (not b!4847944) (not b!4847945) (not d!1555389) (not b!4847929) (not b!4847992) (not b!4847932) (not b!4847951) (not b!4848031) (not b!4847897) (not d!1555379))
(check-sat)
