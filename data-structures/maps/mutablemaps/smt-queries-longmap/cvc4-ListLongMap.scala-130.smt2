; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2258 () Bool)

(assert start!2258)

(declare-fun res!11473 () Bool)

(declare-fun e!9060 () Bool)

(assert (=> start!2258 (=> (not res!11473) (not e!9060))))

(declare-datatypes ((B!582 0))(
  ( (B!583 (val!389 Int)) )
))
(declare-datatypes ((tuple2!560 0))(
  ( (tuple2!561 (_1!280 (_ BitVec 64)) (_2!280 B!582)) )
))
(declare-datatypes ((List!441 0))(
  ( (Nil!438) (Cons!437 (h!1003 tuple2!560) (t!2843 List!441)) )
))
(declare-datatypes ((ListLongMap!391 0))(
  ( (ListLongMap!392 (toList!211 List!441)) )
))
(declare-fun thiss!177 () ListLongMap!391)

(declare-fun size!500 (List!441) Int)

(assert (=> start!2258 (= res!11473 (< (size!500 (toList!211 thiss!177)) 2147483647))))

(assert (=> start!2258 e!9060))

(declare-fun e!9061 () Bool)

(declare-fun inv!746 (ListLongMap!391) Bool)

(assert (=> start!2258 (and (inv!746 thiss!177) e!9061)))

(declare-fun b!15019 () Bool)

(declare-datatypes ((List!442 0))(
  ( (Nil!439) (Cons!438 (h!1004 (_ BitVec 64)) (t!2844 List!442)) )
))
(declare-fun length!4 (List!442) Int)

(declare-fun getKeysList!3 (List!441) List!442)

(assert (=> b!15019 (= e!9060 (>= (length!4 (getKeysList!3 (toList!211 thiss!177))) 2147483647))))

(declare-fun b!15020 () Bool)

(declare-fun tp!2432 () Bool)

(assert (=> b!15020 (= e!9061 tp!2432)))

(assert (= (and start!2258 res!11473) b!15019))

(assert (= start!2258 b!15020))

(declare-fun m!9983 () Bool)

(assert (=> start!2258 m!9983))

(declare-fun m!9985 () Bool)

(assert (=> start!2258 m!9985))

(declare-fun m!9987 () Bool)

(assert (=> b!15019 m!9987))

(assert (=> b!15019 m!9987))

(declare-fun m!9989 () Bool)

(assert (=> b!15019 m!9989))

(push 1)

(assert (not b!15019))

(assert (not start!2258))

(assert (not b!15020))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2455 () Bool)

(declare-fun size!501 (List!442) Int)

(assert (=> d!2455 (= (length!4 (getKeysList!3 (toList!211 thiss!177))) (size!501 (getKeysList!3 (toList!211 thiss!177))))))

(declare-fun bs!617 () Bool)

(assert (= bs!617 d!2455))

(assert (=> bs!617 m!9987))

(declare-fun m!9991 () Bool)

(assert (=> bs!617 m!9991))

(assert (=> b!15019 d!2455))

(declare-fun d!2457 () Bool)

(declare-fun e!9073 () Bool)

(assert (=> d!2457 e!9073))

(declare-fun res!11476 () Bool)

(assert (=> d!2457 (=> (not res!11476) (not e!9073))))

(declare-fun lt!3654 () List!442)

(declare-fun isStrictlySortedLong!0 (List!442) Bool)

(assert (=> d!2457 (= res!11476 (isStrictlySortedLong!0 lt!3654))))

(declare-fun e!9072 () List!442)

(assert (=> d!2457 (= lt!3654 e!9072)))

(declare-fun c!1427 () Bool)

(assert (=> d!2457 (= c!1427 (is-Cons!437 (toList!211 thiss!177)))))

(declare-fun isStrictlySorted!129 (List!441) Bool)

(assert (=> d!2457 (isStrictlySorted!129 (toList!211 thiss!177))))

(assert (=> d!2457 (= (getKeysList!3 (toList!211 thiss!177)) lt!3654)))

(declare-fun b!15039 () Bool)

(assert (=> b!15039 (= e!9072 (Cons!438 (_1!280 (h!1003 (toList!211 thiss!177))) (getKeysList!3 (t!2843 (toList!211 thiss!177)))))))

(declare-fun b!15040 () Bool)

(assert (=> b!15040 (= e!9072 Nil!439)))

(declare-fun b!15041 () Bool)

(declare-fun length!5 (List!441) Int)

(assert (=> b!15041 (= e!9073 (= (length!4 lt!3654) (length!5 (toList!211 thiss!177))))))

(assert (= (and d!2457 c!1427) b!15039))

(assert (= (and d!2457 (not c!1427)) b!15040))

(assert (= (and d!2457 res!11476) b!15041))

(declare-fun m!10001 () Bool)

(assert (=> d!2457 m!10001))

(declare-fun m!10003 () Bool)

(assert (=> d!2457 m!10003))

(declare-fun m!10005 () Bool)

(assert (=> b!15039 m!10005))

(declare-fun m!10007 () Bool)

(assert (=> b!15041 m!10007))

(declare-fun m!10009 () Bool)

(assert (=> b!15041 m!10009))

(assert (=> b!15019 d!2457))

(declare-fun d!2469 () Bool)

(declare-fun lt!3659 () Int)

(assert (=> d!2469 (>= lt!3659 0)))

(declare-fun e!9080 () Int)

(assert (=> d!2469 (= lt!3659 e!9080)))

(declare-fun c!1432 () Bool)

(assert (=> d!2469 (= c!1432 (is-Nil!438 (toList!211 thiss!177)))))

(assert (=> d!2469 (= (size!500 (toList!211 thiss!177)) lt!3659)))

(declare-fun b!15052 () Bool)

(assert (=> b!15052 (= e!9080 0)))

(declare-fun b!15053 () Bool)

(assert (=> b!15053 (= e!9080 (+ 1 (size!500 (t!2843 (toList!211 thiss!177)))))))

(assert (= (and d!2469 c!1432) b!15052))

(assert (= (and d!2469 (not c!1432)) b!15053))

(declare-fun m!10015 () Bool)

(assert (=> b!15053 m!10015))

(assert (=> start!2258 d!2469))

(declare-fun d!2475 () Bool)

(assert (=> d!2475 (= (inv!746 thiss!177) (isStrictlySorted!129 (toList!211 thiss!177)))))

(declare-fun bs!622 () Bool)

(assert (= bs!622 d!2475))

(assert (=> bs!622 m!10003))

(assert (=> start!2258 d!2475))

(declare-fun b!15070 () Bool)

(declare-fun e!9090 () Bool)

(declare-fun tp_is_empty!759 () Bool)

(declare-fun tp!2438 () Bool)

(assert (=> b!15070 (= e!9090 (and tp_is_empty!759 tp!2438))))

(assert (=> b!15020 (= tp!2432 e!9090)))

(assert (= (and b!15020 (is-Cons!437 (toList!211 thiss!177))) b!15070))

(push 1)

(assert (not b!15053))

(assert (not d!2455))

(assert (not b!15041))

(assert (not b!15070))

(assert (not d!2457))

(assert (not d!2475))

(assert tp_is_empty!759)

(assert (not b!15039))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2483 () Bool)

(declare-fun lt!3667 () Int)

(assert (=> d!2483 (>= lt!3667 0)))

(declare-fun e!9116 () Int)

(assert (=> d!2483 (= lt!3667 e!9116)))

(declare-fun c!1440 () Bool)

(assert (=> d!2483 (= c!1440 (is-Nil!439 (getKeysList!3 (toList!211 thiss!177))))))

(assert (=> d!2483 (= (size!501 (getKeysList!3 (toList!211 thiss!177))) lt!3667)))

(declare-fun b!15100 () Bool)

(assert (=> b!15100 (= e!9116 0)))

(declare-fun b!15101 () Bool)

(assert (=> b!15101 (= e!9116 (+ 1 (size!501 (t!2844 (getKeysList!3 (toList!211 thiss!177))))))))

(assert (= (and d!2483 c!1440) b!15100))

(assert (= (and d!2483 (not c!1440)) b!15101))

(declare-fun m!10045 () Bool)

(assert (=> b!15101 m!10045))

(assert (=> d!2455 d!2483))

(declare-fun d!2489 () Bool)

(declare-fun e!9120 () Bool)

(assert (=> d!2489 e!9120))

(declare-fun res!11500 () Bool)

(assert (=> d!2489 (=> (not res!11500) (not e!9120))))

(declare-fun lt!3668 () List!442)

(assert (=> d!2489 (= res!11500 (isStrictlySortedLong!0 lt!3668))))

(declare-fun e!9119 () List!442)

(assert (=> d!2489 (= lt!3668 e!9119)))

(declare-fun c!1441 () Bool)

(assert (=> d!2489 (= c!1441 (is-Cons!437 (t!2843 (toList!211 thiss!177))))))

(assert (=> d!2489 (isStrictlySorted!129 (t!2843 (toList!211 thiss!177)))))

(assert (=> d!2489 (= (getKeysList!3 (t!2843 (toList!211 thiss!177))) lt!3668)))

(declare-fun b!15106 () Bool)

(assert (=> b!15106 (= e!9119 (Cons!438 (_1!280 (h!1003 (t!2843 (toList!211 thiss!177)))) (getKeysList!3 (t!2843 (t!2843 (toList!211 thiss!177))))))))

(declare-fun b!15107 () Bool)

(assert (=> b!15107 (= e!9119 Nil!439)))

(declare-fun b!15108 () Bool)

(assert (=> b!15108 (= e!9120 (= (length!4 lt!3668) (length!5 (t!2843 (toList!211 thiss!177)))))))

(assert (= (and d!2489 c!1441) b!15106))

(assert (= (and d!2489 (not c!1441)) b!15107))

(assert (= (and d!2489 res!11500) b!15108))

(declare-fun m!10047 () Bool)

(assert (=> d!2489 m!10047))

(declare-fun m!10049 () Bool)

(assert (=> d!2489 m!10049))

(declare-fun m!10051 () Bool)

(assert (=> b!15106 m!10051))

(declare-fun m!10053 () Bool)

(assert (=> b!15108 m!10053))

(declare-fun m!10055 () Bool)

(assert (=> b!15108 m!10055))

(assert (=> b!15039 d!2489))

(declare-fun d!2491 () Bool)

(declare-fun res!11514 () Bool)

(declare-fun e!9138 () Bool)

(assert (=> d!2491 (=> res!11514 e!9138)))

(assert (=> d!2491 (= res!11514 (or (is-Nil!438 (toList!211 thiss!177)) (is-Nil!438 (t!2843 (toList!211 thiss!177)))))))

(assert (=> d!2491 (= (isStrictlySorted!129 (toList!211 thiss!177)) e!9138)))

(declare-fun b!15130 () Bool)

(declare-fun e!9139 () Bool)

(assert (=> b!15130 (= e!9138 e!9139)))

(declare-fun res!11515 () Bool)

(assert (=> b!15130 (=> (not res!11515) (not e!9139))))

(assert (=> b!15130 (= res!11515 (bvslt (_1!280 (h!1003 (toList!211 thiss!177))) (_1!280 (h!1003 (t!2843 (toList!211 thiss!177))))))))

(declare-fun b!15131 () Bool)

(assert (=> b!15131 (= e!9139 (isStrictlySorted!129 (t!2843 (toList!211 thiss!177))))))

(assert (= (and d!2491 (not res!11514)) b!15130))

(assert (= (and b!15130 res!11515) b!15131))

(assert (=> b!15131 m!10049))

(assert (=> d!2475 d!2491))

(declare-fun d!2503 () Bool)

(declare-fun lt!3673 () Int)

(assert (=> d!2503 (>= lt!3673 0)))

(declare-fun e!9140 () Int)

(assert (=> d!2503 (= lt!3673 e!9140)))

(declare-fun c!1446 () Bool)

(assert (=> d!2503 (= c!1446 (is-Nil!438 (t!2843 (toList!211 thiss!177))))))

(assert (=> d!2503 (= (size!500 (t!2843 (toList!211 thiss!177))) lt!3673)))

(declare-fun b!15132 () Bool)

(assert (=> b!15132 (= e!9140 0)))

(declare-fun b!15133 () Bool)

(assert (=> b!15133 (= e!9140 (+ 1 (size!500 (t!2843 (t!2843 (toList!211 thiss!177))))))))

(assert (= (and d!2503 c!1446) b!15132))

(assert (= (and d!2503 (not c!1446)) b!15133))

(declare-fun m!10073 () Bool)

(assert (=> b!15133 m!10073))

(assert (=> b!15053 d!2503))

(declare-fun d!2505 () Bool)

(assert (=> d!2505 (= (length!4 lt!3654) (size!501 lt!3654))))

(declare-fun bs!624 () Bool)

(assert (= bs!624 d!2505))

(declare-fun m!10075 () Bool)

(assert (=> bs!624 m!10075))

(assert (=> b!15041 d!2505))

(declare-fun d!2507 () Bool)

(assert (=> d!2507 (= (length!5 (toList!211 thiss!177)) (size!500 (toList!211 thiss!177)))))

(declare-fun bs!627 () Bool)

(assert (= bs!627 d!2507))

(assert (=> bs!627 m!9983))

(assert (=> b!15041 d!2507))

(declare-fun d!2515 () Bool)

(declare-fun res!11520 () Bool)

(declare-fun e!9150 () Bool)

(assert (=> d!2515 (=> res!11520 e!9150)))

(assert (=> d!2515 (= res!11520 (or (is-Nil!439 lt!3654) (is-Nil!439 (t!2844 lt!3654))))))

(assert (=> d!2515 (= (isStrictlySortedLong!0 lt!3654) e!9150)))

(declare-fun b!15147 () Bool)

(declare-fun e!9151 () Bool)

(assert (=> b!15147 (= e!9150 e!9151)))

(declare-fun res!11521 () Bool)

(assert (=> b!15147 (=> (not res!11521) (not e!9151))))

(assert (=> b!15147 (= res!11521 (bvslt (h!1004 lt!3654) (h!1004 (t!2844 lt!3654))))))

(declare-fun b!15148 () Bool)

(assert (=> b!15148 (= e!9151 (isStrictlySortedLong!0 (t!2844 lt!3654)))))

(assert (= (and d!2515 (not res!11520)) b!15147))

(assert (= (and b!15147 res!11521) b!15148))

(declare-fun m!10083 () Bool)

(assert (=> b!15148 m!10083))

(assert (=> d!2457 d!2515))

(assert (=> d!2457 d!2491))

(declare-fun b!15151 () Bool)

(declare-fun e!9153 () Bool)

(declare-fun tp!2443 () Bool)

(assert (=> b!15151 (= e!9153 (and tp_is_empty!759 tp!2443))))

(assert (=> b!15070 (= tp!2438 e!9153)))

(assert (= (and b!15070 (is-Cons!437 (t!2843 (toList!211 thiss!177)))) b!15151))

(push 1)

