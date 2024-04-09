; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43900 () Bool)

(assert start!43900)

(declare-fun res!288680 () Bool)

(declare-fun e!285224 () Bool)

(assert (=> start!43900 (=> (not res!288680) (not e!285224))))

(declare-datatypes ((B!1142 0))(
  ( (B!1143 (val!7023 Int)) )
))
(declare-datatypes ((tuple2!9244 0))(
  ( (tuple2!9245 (_1!4632 (_ BitVec 64)) (_2!4632 B!1142)) )
))
(declare-datatypes ((List!9322 0))(
  ( (Nil!9319) (Cons!9318 (h!10174 tuple2!9244) (t!15552 List!9322)) )
))
(declare-fun l!956 () List!9322)

(declare-fun isStrictlySorted!422 (List!9322) Bool)

(assert (=> start!43900 (= res!288680 (isStrictlySorted!422 l!956))))

(assert (=> start!43900 e!285224))

(declare-fun e!285226 () Bool)

(assert (=> start!43900 e!285226))

(assert (=> start!43900 true))

(declare-fun tp_is_empty!13951 () Bool)

(assert (=> start!43900 tp_is_empty!13951))

(declare-fun b!484491 () Bool)

(declare-fun res!288678 () Bool)

(declare-fun e!285225 () Bool)

(assert (=> b!484491 (=> (not res!288678) (not e!285225))))

(assert (=> b!484491 (= res!288678 (isStrictlySorted!422 (t!15552 l!956)))))

(declare-fun b!484492 () Bool)

(declare-fun res!288677 () Bool)

(assert (=> b!484492 (=> (not res!288677) (not e!285224))))

(declare-fun key!251 () (_ BitVec 64))

(declare-fun containsKey!388 (List!9322 (_ BitVec 64)) Bool)

(assert (=> b!484492 (= res!288677 (not (containsKey!388 l!956 key!251)))))

(declare-fun b!484493 () Bool)

(declare-fun tp!43552 () Bool)

(assert (=> b!484493 (= e!285226 (and tp_is_empty!13951 tp!43552))))

(declare-fun b!484494 () Bool)

(declare-fun lt!219373 () List!9322)

(declare-fun length!11 (List!9322) Int)

(assert (=> b!484494 (= e!285225 (not (= (length!11 lt!219373) (+ 1 (length!11 l!956)))))))

(declare-fun value!166 () B!1142)

(declare-fun insertStrictlySorted!241 (List!9322 (_ BitVec 64) B!1142) List!9322)

(assert (=> b!484494 (= (length!11 (insertStrictlySorted!241 (t!15552 l!956) key!251 value!166)) (+ 1 (length!11 (t!15552 l!956))))))

(declare-datatypes ((Unit!14150 0))(
  ( (Unit!14151) )
))
(declare-fun lt!219374 () Unit!14150)

(declare-fun lemmaAddNewKeyIncrementSize!4 (List!9322 (_ BitVec 64) B!1142) Unit!14150)

(assert (=> b!484494 (= lt!219374 (lemmaAddNewKeyIncrementSize!4 (t!15552 l!956) key!251 value!166))))

(declare-fun b!484495 () Bool)

(declare-fun res!288679 () Bool)

(assert (=> b!484495 (=> (not res!288679) (not e!285225))))

(assert (=> b!484495 (= res!288679 (not (containsKey!388 (t!15552 l!956) key!251)))))

(declare-fun b!484496 () Bool)

(assert (=> b!484496 (= e!285224 e!285225)))

(declare-fun res!288676 () Bool)

(assert (=> b!484496 (=> (not res!288676) (not e!285225))))

(assert (=> b!484496 (= res!288676 (and (is-Cons!9318 l!956) (bvslt (_1!4632 (h!10174 l!956)) key!251)))))

(assert (=> b!484496 (= lt!219373 (insertStrictlySorted!241 l!956 key!251 value!166))))

(assert (= (and start!43900 res!288680) b!484492))

(assert (= (and b!484492 res!288677) b!484496))

(assert (= (and b!484496 res!288676) b!484491))

(assert (= (and b!484491 res!288678) b!484495))

(assert (= (and b!484495 res!288679) b!484494))

(assert (= (and start!43900 (is-Cons!9318 l!956)) b!484493))

(declare-fun m!464947 () Bool)

(assert (=> b!484494 m!464947))

(declare-fun m!464949 () Bool)

(assert (=> b!484494 m!464949))

(declare-fun m!464951 () Bool)

(assert (=> b!484494 m!464951))

(declare-fun m!464953 () Bool)

(assert (=> b!484494 m!464953))

(assert (=> b!484494 m!464949))

(declare-fun m!464955 () Bool)

(assert (=> b!484494 m!464955))

(declare-fun m!464957 () Bool)

(assert (=> b!484494 m!464957))

(declare-fun m!464959 () Bool)

(assert (=> b!484491 m!464959))

(declare-fun m!464961 () Bool)

(assert (=> b!484492 m!464961))

(declare-fun m!464963 () Bool)

(assert (=> start!43900 m!464963))

(declare-fun m!464965 () Bool)

(assert (=> b!484495 m!464965))

(declare-fun m!464967 () Bool)

(assert (=> b!484496 m!464967))

(push 1)

(assert (not b!484495))

(assert (not b!484493))

(assert tp_is_empty!13951)

(assert (not b!484496))

(assert (not b!484491))

(assert (not b!484492))

(assert (not start!43900))

(assert (not b!484494))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!31161 () Bool)

(declare-fun call!31165 () List!9322)

(declare-fun call!31166 () List!9322)

(assert (=> bm!31161 (= call!31165 call!31166)))

(declare-fun b!484601 () Bool)

(declare-fun e!285285 () List!9322)

(assert (=> b!484601 (= e!285285 call!31166)))

(declare-fun b!484602 () Bool)

(declare-fun res!288732 () Bool)

(declare-fun e!285286 () Bool)

(assert (=> b!484602 (=> (not res!288732) (not e!285286))))

(declare-fun lt!219393 () List!9322)

(assert (=> b!484602 (= res!288732 (containsKey!388 lt!219393 key!251))))

(declare-fun b!484603 () Bool)

(declare-fun e!285289 () List!9322)

(assert (=> b!484603 (= e!285289 (insertStrictlySorted!241 (t!15552 (t!15552 l!956)) key!251 value!166))))

(declare-fun b!484604 () Bool)

(declare-fun e!285287 () List!9322)

(assert (=> b!484604 (= e!285287 call!31165)))

(declare-fun b!484605 () Bool)

(declare-fun c!58245 () Bool)

(declare-fun c!58244 () Bool)

(assert (=> b!484605 (= e!285289 (ite c!58244 (t!15552 (t!15552 l!956)) (ite c!58245 (Cons!9318 (h!10174 (t!15552 l!956)) (t!15552 (t!15552 l!956))) Nil!9319)))))

(declare-fun b!484606 () Bool)

(declare-fun e!285288 () List!9322)

(declare-fun call!31164 () List!9322)

(assert (=> b!484606 (= e!285288 call!31164)))

(declare-fun b!484607 () Bool)

(assert (=> b!484607 (= e!285285 e!285287)))

(assert (=> b!484607 (= c!58244 (and (is-Cons!9318 (t!15552 l!956)) (= (_1!4632 (h!10174 (t!15552 l!956))) key!251)))))

(declare-fun b!484608 () Bool)

(assert (=> b!484608 (= c!58245 (and (is-Cons!9318 (t!15552 l!956)) (bvsgt (_1!4632 (h!10174 (t!15552 l!956))) key!251)))))

(assert (=> b!484608 (= e!285287 e!285288)))

(declare-fun b!484609 () Bool)

(declare-fun contains!2686 (List!9322 tuple2!9244) Bool)

(assert (=> b!484609 (= e!285286 (contains!2686 lt!219393 (tuple2!9245 key!251 value!166)))))

(declare-fun bm!31162 () Bool)

(assert (=> bm!31162 (= call!31164 call!31165)))

(declare-fun d!77025 () Bool)

(assert (=> d!77025 e!285286))

(declare-fun res!288731 () Bool)

(assert (=> d!77025 (=> (not res!288731) (not e!285286))))

(assert (=> d!77025 (= res!288731 (isStrictlySorted!422 lt!219393))))

(assert (=> d!77025 (= lt!219393 e!285285)))

(declare-fun c!58243 () Bool)

(assert (=> d!77025 (= c!58243 (and (is-Cons!9318 (t!15552 l!956)) (bvslt (_1!4632 (h!10174 (t!15552 l!956))) key!251)))))

(assert (=> d!77025 (isStrictlySorted!422 (t!15552 l!956))))

(assert (=> d!77025 (= (insertStrictlySorted!241 (t!15552 l!956) key!251 value!166) lt!219393)))

(declare-fun bm!31163 () Bool)

(declare-fun $colon$colon!125 (List!9322 tuple2!9244) List!9322)

(assert (=> bm!31163 (= call!31166 ($colon$colon!125 e!285289 (ite c!58243 (h!10174 (t!15552 l!956)) (tuple2!9245 key!251 value!166))))))

(declare-fun c!58242 () Bool)

(assert (=> bm!31163 (= c!58242 c!58243)))

(declare-fun b!484610 () Bool)

(assert (=> b!484610 (= e!285288 call!31164)))

(assert (= (and d!77025 c!58243) b!484601))

(assert (= (and d!77025 (not c!58243)) b!484607))

(assert (= (and b!484607 c!58244) b!484604))

(assert (= (and b!484607 (not c!58244)) b!484608))

(assert (= (and b!484608 c!58245) b!484606))

(assert (= (and b!484608 (not c!58245)) b!484610))

(assert (= (or b!484606 b!484610) bm!31162))

(assert (= (or b!484604 bm!31162) bm!31161))

(assert (= (or b!484601 bm!31161) bm!31163))

(assert (= (and bm!31163 c!58242) b!484603))

(assert (= (and bm!31163 (not c!58242)) b!484605))

(assert (= (and d!77025 res!288731) b!484602))

(assert (= (and b!484602 res!288732) b!484609))

(declare-fun m!465019 () Bool)

(assert (=> bm!31163 m!465019))

(declare-fun m!465021 () Bool)

(assert (=> b!484602 m!465021))

(declare-fun m!465023 () Bool)

(assert (=> b!484603 m!465023))

(declare-fun m!465025 () Bool)

(assert (=> b!484609 m!465025))

(declare-fun m!465027 () Bool)

(assert (=> d!77025 m!465027))

(assert (=> d!77025 m!464959))

(assert (=> b!484494 d!77025))

(declare-fun d!77033 () Bool)

(declare-fun size!15443 (List!9322) Int)

(assert (=> d!77033 (= (length!11 (insertStrictlySorted!241 (t!15552 l!956) key!251 value!166)) (size!15443 (insertStrictlySorted!241 (t!15552 l!956) key!251 value!166)))))

(declare-fun bs!15424 () Bool)

(assert (= bs!15424 d!77033))

(assert (=> bs!15424 m!464949))

(declare-fun m!465029 () Bool)

(assert (=> bs!15424 m!465029))

(assert (=> b!484494 d!77033))

(declare-fun d!77035 () Bool)

(assert (=> d!77035 (= (length!11 (insertStrictlySorted!241 (t!15552 l!956) key!251 value!166)) (+ (length!11 (t!15552 l!956)) 1))))

(declare-fun lt!219398 () Unit!14150)

(declare-fun choose!1390 (List!9322 (_ BitVec 64) B!1142) Unit!14150)

(assert (=> d!77035 (= lt!219398 (choose!1390 (t!15552 l!956) key!251 value!166))))

(assert (=> d!77035 (isStrictlySorted!422 (t!15552 l!956))))

(assert (=> d!77035 (= (lemmaAddNewKeyIncrementSize!4 (t!15552 l!956) key!251 value!166) lt!219398)))

(declare-fun bs!15426 () Bool)

(assert (= bs!15426 d!77035))

(declare-fun m!465051 () Bool)

(assert (=> bs!15426 m!465051))

(assert (=> bs!15426 m!464949))

(assert (=> bs!15426 m!464949))

(assert (=> bs!15426 m!464951))

(assert (=> bs!15426 m!464959))

(assert (=> bs!15426 m!464953))

(assert (=> b!484494 d!77035))

(declare-fun d!77043 () Bool)

(assert (=> d!77043 (= (length!11 lt!219373) (size!15443 lt!219373))))

(declare-fun bs!15427 () Bool)

(assert (= bs!15427 d!77043))

(declare-fun m!465053 () Bool)

(assert (=> bs!15427 m!465053))

(assert (=> b!484494 d!77043))

(declare-fun d!77045 () Bool)

(assert (=> d!77045 (= (length!11 (t!15552 l!956)) (size!15443 (t!15552 l!956)))))

(declare-fun bs!15428 () Bool)

(assert (= bs!15428 d!77045))

(declare-fun m!465055 () Bool)

(assert (=> bs!15428 m!465055))

(assert (=> b!484494 d!77045))

(declare-fun d!77047 () Bool)

(assert (=> d!77047 (= (length!11 l!956) (size!15443 l!956))))

(declare-fun bs!15429 () Bool)

(assert (= bs!15429 d!77047))

(declare-fun m!465057 () Bool)

(assert (=> bs!15429 m!465057))

(assert (=> b!484494 d!77047))

(declare-fun bm!31170 () Bool)

(declare-fun call!31174 () List!9322)

(declare-fun call!31175 () List!9322)

(assert (=> bm!31170 (= call!31174 call!31175)))

(declare-fun b!484639 () Bool)

(declare-fun e!285306 () List!9322)

(assert (=> b!484639 (= e!285306 call!31175)))

(declare-fun b!484640 () Bool)

(declare-fun res!288746 () Bool)

(declare-fun e!285307 () Bool)

(assert (=> b!484640 (=> (not res!288746) (not e!285307))))

(declare-fun lt!219399 () List!9322)

(assert (=> b!484640 (= res!288746 (containsKey!388 lt!219399 key!251))))

(declare-fun e!285310 () List!9322)

(declare-fun b!484641 () Bool)

(assert (=> b!484641 (= e!285310 (insertStrictlySorted!241 (t!15552 l!956) key!251 value!166))))

(declare-fun b!484642 () Bool)

(declare-fun e!285308 () List!9322)

(assert (=> b!484642 (= e!285308 call!31174)))

(declare-fun c!58257 () Bool)

(declare-fun c!58256 () Bool)

(declare-fun b!484643 () Bool)

(assert (=> b!484643 (= e!285310 (ite c!58256 (t!15552 l!956) (ite c!58257 (Cons!9318 (h!10174 l!956) (t!15552 l!956)) Nil!9319)))))

(declare-fun b!484644 () Bool)

(declare-fun e!285309 () List!9322)

(declare-fun call!31173 () List!9322)

(assert (=> b!484644 (= e!285309 call!31173)))

(declare-fun b!484645 () Bool)

(assert (=> b!484645 (= e!285306 e!285308)))

(assert (=> b!484645 (= c!58256 (and (is-Cons!9318 l!956) (= (_1!4632 (h!10174 l!956)) key!251)))))

(declare-fun b!484646 () Bool)

(assert (=> b!484646 (= c!58257 (and (is-Cons!9318 l!956) (bvsgt (_1!4632 (h!10174 l!956)) key!251)))))

(assert (=> b!484646 (= e!285308 e!285309)))

(declare-fun b!484647 () Bool)

(assert (=> b!484647 (= e!285307 (contains!2686 lt!219399 (tuple2!9245 key!251 value!166)))))

(declare-fun bm!31171 () Bool)

(assert (=> bm!31171 (= call!31173 call!31174)))

(declare-fun d!77049 () Bool)

(assert (=> d!77049 e!285307))

(declare-fun res!288745 () Bool)

(assert (=> d!77049 (=> (not res!288745) (not e!285307))))

(assert (=> d!77049 (= res!288745 (isStrictlySorted!422 lt!219399))))

(assert (=> d!77049 (= lt!219399 e!285306)))

(declare-fun c!58255 () Bool)

(assert (=> d!77049 (= c!58255 (and (is-Cons!9318 l!956) (bvslt (_1!4632 (h!10174 l!956)) key!251)))))

(assert (=> d!77049 (isStrictlySorted!422 l!956)))

(assert (=> d!77049 (= (insertStrictlySorted!241 l!956 key!251 value!166) lt!219399)))

(declare-fun bm!31172 () Bool)

(assert (=> bm!31172 (= call!31175 ($colon$colon!125 e!285310 (ite c!58255 (h!10174 l!956) (tuple2!9245 key!251 value!166))))))

(declare-fun c!58254 () Bool)

(assert (=> bm!31172 (= c!58254 c!58255)))

(declare-fun b!484648 () Bool)

(assert (=> b!484648 (= e!285309 call!31173)))

(assert (= (and d!77049 c!58255) b!484639))

(assert (= (and d!77049 (not c!58255)) b!484645))

(assert (= (and b!484645 c!58256) b!484642))

(assert (= (and b!484645 (not c!58256)) b!484646))

(assert (= (and b!484646 c!58257) b!484644))

(assert (= (and b!484646 (not c!58257)) b!484648))

(assert (= (or b!484644 b!484648) bm!31171))

(assert (= (or b!484642 bm!31171) bm!31170))

(assert (= (or b!484639 bm!31170) bm!31172))

(assert (= (and bm!31172 c!58254) b!484641))

(assert (= (and bm!31172 (not c!58254)) b!484643))

(assert (= (and d!77049 res!288745) b!484640))

(assert (= (and b!484640 res!288746) b!484647))

(declare-fun m!465059 () Bool)

(assert (=> bm!31172 m!465059))

(declare-fun m!465061 () Bool)

(assert (=> b!484640 m!465061))

(assert (=> b!484641 m!464949))

(declare-fun m!465063 () Bool)

(assert (=> b!484647 m!465063))

(declare-fun m!465065 () Bool)

(assert (=> d!77049 m!465065))

(assert (=> d!77049 m!464963))

(assert (=> b!484496 d!77049))

(declare-fun d!77051 () Bool)

(declare-fun res!288765 () Bool)

(declare-fun e!285334 () Bool)

(assert (=> d!77051 (=> res!288765 e!285334)))

(assert (=> d!77051 (= res!288765 (and (is-Cons!9318 (t!15552 l!956)) (= (_1!4632 (h!10174 (t!15552 l!956))) key!251)))))

(assert (=> d!77051 (= (containsKey!388 (t!15552 l!956) key!251) e!285334)))

(declare-fun b!484679 () Bool)

(declare-fun e!285336 () Bool)

(assert (=> b!484679 (= e!285334 e!285336)))

(declare-fun res!288767 () Bool)

(assert (=> b!484679 (=> (not res!288767) (not e!285336))))

(assert (=> b!484679 (= res!288767 (and (or (not (is-Cons!9318 (t!15552 l!956))) (bvsle (_1!4632 (h!10174 (t!15552 l!956))) key!251)) (is-Cons!9318 (t!15552 l!956)) (bvslt (_1!4632 (h!10174 (t!15552 l!956))) key!251)))))

(declare-fun b!484680 () Bool)

(assert (=> b!484680 (= e!285336 (containsKey!388 (t!15552 (t!15552 l!956)) key!251))))

(assert (= (and d!77051 (not res!288765)) b!484679))

(assert (= (and b!484679 res!288767) b!484680))

(declare-fun m!465085 () Bool)

(assert (=> b!484680 m!465085))

(assert (=> b!484495 d!77051))

(declare-fun d!77069 () Bool)

(declare-fun res!288769 () Bool)

(declare-fun e!285339 () Bool)

(assert (=> d!77069 (=> res!288769 e!285339)))

(assert (=> d!77069 (= res!288769 (and (is-Cons!9318 l!956) (= (_1!4632 (h!10174 l!956)) key!251)))))

(assert (=> d!77069 (= (containsKey!388 l!956 key!251) e!285339)))

(declare-fun b!484684 () Bool)

(declare-fun e!285340 () Bool)

(assert (=> b!484684 (= e!285339 e!285340)))

(declare-fun res!288770 () Bool)

(assert (=> b!484684 (=> (not res!288770) (not e!285340))))

(assert (=> b!484684 (= res!288770 (and (or (not (is-Cons!9318 l!956)) (bvsle (_1!4632 (h!10174 l!956)) key!251)) (is-Cons!9318 l!956) (bvslt (_1!4632 (h!10174 l!956)) key!251)))))

(declare-fun b!484685 () Bool)

(assert (=> b!484685 (= e!285340 (containsKey!388 (t!15552 l!956) key!251))))

(assert (= (and d!77069 (not res!288769)) b!484684))

(assert (= (and b!484684 res!288770) b!484685))

(assert (=> b!484685 m!464965))

(assert (=> b!484492 d!77069))

(declare-fun d!77071 () Bool)

(declare-fun res!288777 () Bool)

(declare-fun e!285350 () Bool)

(assert (=> d!77071 (=> res!288777 e!285350)))

(assert (=> d!77071 (= res!288777 (or (is-Nil!9319 (t!15552 l!956)) (is-Nil!9319 (t!15552 (t!15552 l!956)))))))

(assert (=> d!77071 (= (isStrictlySorted!422 (t!15552 l!956)) e!285350)))

(declare-fun b!484700 () Bool)

(declare-fun e!285351 () Bool)

(assert (=> b!484700 (= e!285350 e!285351)))

(declare-fun res!288778 () Bool)

(assert (=> b!484700 (=> (not res!288778) (not e!285351))))

(assert (=> b!484700 (= res!288778 (bvslt (_1!4632 (h!10174 (t!15552 l!956))) (_1!4632 (h!10174 (t!15552 (t!15552 l!956))))))))

(declare-fun b!484701 () Bool)

(assert (=> b!484701 (= e!285351 (isStrictlySorted!422 (t!15552 (t!15552 l!956))))))

(assert (= (and d!77071 (not res!288777)) b!484700))

(assert (= (and b!484700 res!288778) b!484701))

(declare-fun m!465099 () Bool)

(assert (=> b!484701 m!465099))

(assert (=> b!484491 d!77071))

(declare-fun d!77077 () Bool)

(declare-fun res!288779 () Bool)

(declare-fun e!285352 () Bool)

(assert (=> d!77077 (=> res!288779 e!285352)))

(assert (=> d!77077 (= res!288779 (or (is-Nil!9319 l!956) (is-Nil!9319 (t!15552 l!956))))))

(assert (=> d!77077 (= (isStrictlySorted!422 l!956) e!285352)))

(declare-fun b!484702 () Bool)

(declare-fun e!285353 () Bool)

(assert (=> b!484702 (= e!285352 e!285353)))

(declare-fun res!288780 () Bool)

(assert (=> b!484702 (=> (not res!288780) (not e!285353))))

(assert (=> b!484702 (= res!288780 (bvslt (_1!4632 (h!10174 l!956)) (_1!4632 (h!10174 (t!15552 l!956)))))))

(declare-fun b!484703 () Bool)

(assert (=> b!484703 (= e!285353 (isStrictlySorted!422 (t!15552 l!956)))))

(assert (= (and d!77077 (not res!288779)) b!484702))

(assert (= (and b!484702 res!288780) b!484703))

(assert (=> b!484703 m!464959))

(assert (=> start!43900 d!77077))

(declare-fun b!484708 () Bool)

(declare-fun e!285356 () Bool)

(declare-fun tp!43564 () Bool)

(assert (=> b!484708 (= e!285356 (and tp_is_empty!13951 tp!43564))))

(assert (=> b!484493 (= tp!43552 e!285356)))

(assert (= (and b!484493 (is-Cons!9318 (t!15552 l!956))) b!484708))

(push 1)

(assert (not d!77043))

(assert (not b!484641))

(assert (not b!484602))

(assert (not d!77049))

(assert (not b!484703))

(assert tp_is_empty!13951)

(assert (not b!484701))

(assert (not b!484609))

(assert (not d!77047))

(assert (not bm!31163))

(assert (not d!77035))

(assert (not b!484708))

(assert (not b!484640))

(assert (not b!484685))

(assert (not bm!31172))

(assert (not d!77033))

(assert (not d!77025))

(assert (not b!484647))

(assert (not b!484603))

(assert (not b!484680))

(assert (not d!77045))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!77119 () Bool)

(declare-fun res!288805 () Bool)

(declare-fun e!285394 () Bool)

(assert (=> d!77119 (=> res!288805 e!285394)))

(assert (=> d!77119 (= res!288805 (and (is-Cons!9318 lt!219393) (= (_1!4632 (h!10174 lt!219393)) key!251)))))

(assert (=> d!77119 (= (containsKey!388 lt!219393 key!251) e!285394)))

(declare-fun b!484759 () Bool)

(declare-fun e!285395 () Bool)

(assert (=> b!484759 (= e!285394 e!285395)))

(declare-fun res!288806 () Bool)

(assert (=> b!484759 (=> (not res!288806) (not e!285395))))

(assert (=> b!484759 (= res!288806 (and (or (not (is-Cons!9318 lt!219393)) (bvsle (_1!4632 (h!10174 lt!219393)) key!251)) (is-Cons!9318 lt!219393) (bvslt (_1!4632 (h!10174 lt!219393)) key!251)))))

(declare-fun b!484760 () Bool)

(assert (=> b!484760 (= e!285395 (containsKey!388 (t!15552 lt!219393) key!251))))

(assert (= (and d!77119 (not res!288805)) b!484759))

(assert (= (and b!484759 res!288806) b!484760))

(declare-fun m!465149 () Bool)

(assert (=> b!484760 m!465149))

(assert (=> b!484602 d!77119))

(declare-fun d!77121 () Bool)

(declare-fun res!288807 () Bool)

(declare-fun e!285396 () Bool)

(assert (=> d!77121 (=> res!288807 e!285396)))

(assert (=> d!77121 (= res!288807 (or (is-Nil!9319 (t!15552 (t!15552 l!956))) (is-Nil!9319 (t!15552 (t!15552 (t!15552 l!956))))))))

(assert (=> d!77121 (= (isStrictlySorted!422 (t!15552 (t!15552 l!956))) e!285396)))

(declare-fun b!484761 () Bool)

(declare-fun e!285397 () Bool)

(assert (=> b!484761 (= e!285396 e!285397)))

(declare-fun res!288808 () Bool)

(assert (=> b!484761 (=> (not res!288808) (not e!285397))))

(assert (=> b!484761 (= res!288808 (bvslt (_1!4632 (h!10174 (t!15552 (t!15552 l!956)))) (_1!4632 (h!10174 (t!15552 (t!15552 (t!15552 l!956)))))))))

(declare-fun b!484762 () Bool)

(assert (=> b!484762 (= e!285397 (isStrictlySorted!422 (t!15552 (t!15552 (t!15552 l!956)))))))

(assert (= (and d!77121 (not res!288807)) b!484761))

(assert (= (and b!484761 res!288808) b!484762))

(declare-fun m!465151 () Bool)

(assert (=> b!484762 m!465151))

(assert (=> b!484701 d!77121))

(declare-fun d!77123 () Bool)

(declare-fun res!288809 () Bool)

(declare-fun e!285398 () Bool)

(assert (=> d!77123 (=> res!288809 e!285398)))

(assert (=> d!77123 (= res!288809 (and (is-Cons!9318 lt!219399) (= (_1!4632 (h!10174 lt!219399)) key!251)))))

(assert (=> d!77123 (= (containsKey!388 lt!219399 key!251) e!285398)))

(declare-fun b!484763 () Bool)

(declare-fun e!285399 () Bool)

(assert (=> b!484763 (= e!285398 e!285399)))

(declare-fun res!288810 () Bool)

(assert (=> b!484763 (=> (not res!288810) (not e!285399))))

(assert (=> b!484763 (= res!288810 (and (or (not (is-Cons!9318 lt!219399)) (bvsle (_1!4632 (h!10174 lt!219399)) key!251)) (is-Cons!9318 lt!219399) (bvslt (_1!4632 (h!10174 lt!219399)) key!251)))))

(declare-fun b!484764 () Bool)

(assert (=> b!484764 (= e!285399 (containsKey!388 (t!15552 lt!219399) key!251))))

(assert (= (and d!77123 (not res!288809)) b!484763))

(assert (= (and b!484763 res!288810) b!484764))

(declare-fun m!465153 () Bool)

(assert (=> b!484764 m!465153))

(assert (=> b!484640 d!77123))

(assert (=> b!484641 d!77025))

(declare-fun bm!31182 () Bool)

(declare-fun call!31186 () List!9322)

(declare-fun call!31187 () List!9322)

(assert (=> bm!31182 (= call!31186 call!31187)))

(declare-fun b!484765 () Bool)

(declare-fun e!285400 () List!9322)

(assert (=> b!484765 (= e!285400 call!31187)))

(declare-fun b!484766 () Bool)

(declare-fun res!288812 () Bool)

(declare-fun e!285401 () Bool)

(assert (=> b!484766 (=> (not res!288812) (not e!285401))))

(declare-fun lt!219419 () List!9322)

(assert (=> b!484766 (= res!288812 (containsKey!388 lt!219419 key!251))))

(declare-fun b!484767 () Bool)

(declare-fun e!285404 () List!9322)

(assert (=> b!484767 (= e!285404 (insertStrictlySorted!241 (t!15552 (t!15552 (t!15552 l!956))) key!251 value!166))))

(declare-fun b!484768 () Bool)

(declare-fun e!285402 () List!9322)

(assert (=> b!484768 (= e!285402 call!31186)))

(declare-fun c!58279 () Bool)

(declare-fun c!58278 () Bool)

(declare-fun b!484769 () Bool)

(assert (=> b!484769 (= e!285404 (ite c!58278 (t!15552 (t!15552 (t!15552 l!956))) (ite c!58279 (Cons!9318 (h!10174 (t!15552 (t!15552 l!956))) (t!15552 (t!15552 (t!15552 l!956)))) Nil!9319)))))

(declare-fun b!484770 () Bool)

(declare-fun e!285403 () List!9322)

(declare-fun call!31185 () List!9322)

(assert (=> b!484770 (= e!285403 call!31185)))

(declare-fun b!484771 () Bool)

(assert (=> b!484771 (= e!285400 e!285402)))

(assert (=> b!484771 (= c!58278 (and (is-Cons!9318 (t!15552 (t!15552 l!956))) (= (_1!4632 (h!10174 (t!15552 (t!15552 l!956)))) key!251)))))

(declare-fun b!484772 () Bool)

(assert (=> b!484772 (= c!58279 (and (is-Cons!9318 (t!15552 (t!15552 l!956))) (bvsgt (_1!4632 (h!10174 (t!15552 (t!15552 l!956)))) key!251)))))

(assert (=> b!484772 (= e!285402 e!285403)))

(declare-fun b!484773 () Bool)

(assert (=> b!484773 (= e!285401 (contains!2686 lt!219419 (tuple2!9245 key!251 value!166)))))

(declare-fun bm!31183 () Bool)

(assert (=> bm!31183 (= call!31185 call!31186)))

(declare-fun d!77125 () Bool)

(assert (=> d!77125 e!285401))

(declare-fun res!288811 () Bool)

(assert (=> d!77125 (=> (not res!288811) (not e!285401))))

(assert (=> d!77125 (= res!288811 (isStrictlySorted!422 lt!219419))))

(assert (=> d!77125 (= lt!219419 e!285400)))

(declare-fun c!58277 () Bool)

(assert (=> d!77125 (= c!58277 (and (is-Cons!9318 (t!15552 (t!15552 l!956))) (bvslt (_1!4632 (h!10174 (t!15552 (t!15552 l!956)))) key!251)))))

(assert (=> d!77125 (isStrictlySorted!422 (t!15552 (t!15552 l!956)))))

(assert (=> d!77125 (= (insertStrictlySorted!241 (t!15552 (t!15552 l!956)) key!251 value!166) lt!219419)))

(declare-fun bm!31184 () Bool)

(assert (=> bm!31184 (= call!31187 ($colon$colon!125 e!285404 (ite c!58277 (h!10174 (t!15552 (t!15552 l!956))) (tuple2!9245 key!251 value!166))))))

(declare-fun c!58276 () Bool)

(assert (=> bm!31184 (= c!58276 c!58277)))

(declare-fun b!484774 () Bool)

(assert (=> b!484774 (= e!285403 call!31185)))

(assert (= (and d!77125 c!58277) b!484765))

(assert (= (and d!77125 (not c!58277)) b!484771))

(assert (= (and b!484771 c!58278) b!484768))

(assert (= (and b!484771 (not c!58278)) b!484772))

(assert (= (and b!484772 c!58279) b!484770))

(assert (= (and b!484772 (not c!58279)) b!484774))

(assert (= (or b!484770 b!484774) bm!31183))

(assert (= (or b!484768 bm!31183) bm!31182))

(assert (= (or b!484765 bm!31182) bm!31184))

(assert (= (and bm!31184 c!58276) b!484767))

(assert (= (and bm!31184 (not c!58276)) b!484769))

(assert (= (and d!77125 res!288811) b!484766))

(assert (= (and b!484766 res!288812) b!484773))

(declare-fun m!465155 () Bool)

(assert (=> bm!31184 m!465155))

(declare-fun m!465157 () Bool)

(assert (=> b!484766 m!465157))

(declare-fun m!465159 () Bool)

(assert (=> b!484767 m!465159))

(declare-fun m!465161 () Bool)

(assert (=> b!484773 m!465161))

(declare-fun m!465163 () Bool)

(assert (=> d!77125 m!465163))

(assert (=> d!77125 m!465099))

(assert (=> b!484603 d!77125))

(declare-fun d!77127 () Bool)

(declare-fun res!288813 () Bool)

(declare-fun e!285405 () Bool)

(assert (=> d!77127 (=> res!288813 e!285405)))

(assert (=> d!77127 (= res!288813 (or (is-Nil!9319 lt!219399) (is-Nil!9319 (t!15552 lt!219399))))))

(assert (=> d!77127 (= (isStrictlySorted!422 lt!219399) e!285405)))

(declare-fun b!484775 () Bool)

(declare-fun e!285406 () Bool)

(assert (=> b!484775 (= e!285405 e!285406)))

(declare-fun res!288814 () Bool)

(assert (=> b!484775 (=> (not res!288814) (not e!285406))))

(assert (=> b!484775 (= res!288814 (bvslt (_1!4632 (h!10174 lt!219399)) (_1!4632 (h!10174 (t!15552 lt!219399)))))))

(declare-fun b!484776 () Bool)

(assert (=> b!484776 (= e!285406 (isStrictlySorted!422 (t!15552 lt!219399)))))

(assert (= (and d!77127 (not res!288813)) b!484775))

(assert (= (and b!484775 res!288814) b!484776))

(declare-fun m!465165 () Bool)

(assert (=> b!484776 m!465165))

(assert (=> d!77049 d!77127))

(assert (=> d!77049 d!77077))

(declare-fun d!77129 () Bool)

(declare-fun lt!219422 () Int)

(assert (=> d!77129 (>= lt!219422 0)))

(declare-fun e!285409 () Int)

(assert (=> d!77129 (= lt!219422 e!285409)))

(declare-fun c!58282 () Bool)

(assert (=> d!77129 (= c!58282 (is-Nil!9319 (t!15552 l!956)))))

(assert (=> d!77129 (= (size!15443 (t!15552 l!956)) lt!219422)))

(declare-fun b!484781 () Bool)

(assert (=> b!484781 (= e!285409 0)))

(declare-fun b!484782 () Bool)

(assert (=> b!484782 (= e!285409 (+ 1 (size!15443 (t!15552 (t!15552 l!956)))))))

(assert (= (and d!77129 c!58282) b!484781))

(assert (= (and d!77129 (not c!58282)) b!484782))

(declare-fun m!465167 () Bool)

(assert (=> b!484782 m!465167))

(assert (=> d!77045 d!77129))

(declare-fun d!77131 () Bool)

(declare-fun lt!219423 () Int)

(assert (=> d!77131 (>= lt!219423 0)))

(declare-fun e!285410 () Int)

(assert (=> d!77131 (= lt!219423 e!285410)))

(declare-fun c!58283 () Bool)

(assert (=> d!77131 (= c!58283 (is-Nil!9319 lt!219373))))

(assert (=> d!77131 (= (size!15443 lt!219373) lt!219423)))

(declare-fun b!484783 () Bool)

(assert (=> b!484783 (= e!285410 0)))

(declare-fun b!484784 () Bool)

(assert (=> b!484784 (= e!285410 (+ 1 (size!15443 (t!15552 lt!219373))))))

(assert (= (and d!77131 c!58283) b!484783))

(assert (= (and d!77131 (not c!58283)) b!484784))

(declare-fun m!465169 () Bool)

(assert (=> b!484784 m!465169))

(assert (=> d!77043 d!77131))

(assert (=> d!77035 d!77025))

(assert (=> d!77035 d!77033))

(assert (=> d!77035 d!77071))

(assert (=> d!77035 d!77045))

(declare-fun d!77133 () Bool)

(assert (=> d!77133 (= (length!11 (insertStrictlySorted!241 (t!15552 l!956) key!251 value!166)) (+ (length!11 (t!15552 l!956)) 1))))

(assert (=> d!77133 true))

(declare-fun _$9!29 () Unit!14150)

(assert (=> d!77133 (= (choose!1390 (t!15552 l!956) key!251 value!166) _$9!29)))

(declare-fun bs!15439 () Bool)

(assert (= bs!15439 d!77133))

(assert (=> bs!15439 m!464949))

(assert (=> bs!15439 m!464949))

(assert (=> bs!15439 m!464951))

(assert (=> bs!15439 m!464953))

(assert (=> d!77035 d!77133))

(declare-fun d!77135 () Bool)

(declare-fun res!288815 () Bool)

(declare-fun e!285411 () Bool)

(assert (=> d!77135 (=> res!288815 e!285411)))

(assert (=> d!77135 (= res!288815 (or (is-Nil!9319 lt!219393) (is-Nil!9319 (t!15552 lt!219393))))))

(assert (=> d!77135 (= (isStrictlySorted!422 lt!219393) e!285411)))

(declare-fun b!484785 () Bool)

(declare-fun e!285412 () Bool)

(assert (=> b!484785 (= e!285411 e!285412)))

(declare-fun res!288816 () Bool)

(assert (=> b!484785 (=> (not res!288816) (not e!285412))))

(assert (=> b!484785 (= res!288816 (bvslt (_1!4632 (h!10174 lt!219393)) (_1!4632 (h!10174 (t!15552 lt!219393)))))))

(declare-fun b!484786 () Bool)

(assert (=> b!484786 (= e!285412 (isStrictlySorted!422 (t!15552 lt!219393)))))

(assert (= (and d!77135 (not res!288815)) b!484785))

(assert (= (and b!484785 res!288816) b!484786))

(declare-fun m!465171 () Bool)

(assert (=> b!484786 m!465171))

(assert (=> d!77025 d!77135))

(assert (=> d!77025 d!77071))

(assert (=> b!484685 d!77051))

(declare-fun d!77137 () Bool)

(declare-fun res!288817 () Bool)

(declare-fun e!285413 () Bool)

(assert (=> d!77137 (=> res!288817 e!285413)))

(assert (=> d!77137 (= res!288817 (and (is-Cons!9318 (t!15552 (t!15552 l!956))) (= (_1!4632 (h!10174 (t!15552 (t!15552 l!956)))) key!251)))))

(assert (=> d!77137 (= (containsKey!388 (t!15552 (t!15552 l!956)) key!251) e!285413)))

(declare-fun b!484787 () Bool)

(declare-fun e!285414 () Bool)

(assert (=> b!484787 (= e!285413 e!285414)))

(declare-fun res!288818 () Bool)

(assert (=> b!484787 (=> (not res!288818) (not e!285414))))

(assert (=> b!484787 (= res!288818 (and (or (not (is-Cons!9318 (t!15552 (t!15552 l!956)))) (bvsle (_1!4632 (h!10174 (t!15552 (t!15552 l!956)))) key!251)) (is-Cons!9318 (t!15552 (t!15552 l!956))) (bvslt (_1!4632 (h!10174 (t!15552 (t!15552 l!956)))) key!251)))))

(declare-fun b!484788 () Bool)

(assert (=> b!484788 (= e!285414 (containsKey!388 (t!15552 (t!15552 (t!15552 l!956))) key!251))))

(assert (= (and d!77137 (not res!288817)) b!484787))

(assert (= (and b!484787 res!288818) b!484788))

(declare-fun m!465173 () Bool)

(assert (=> b!484788 m!465173))

(assert (=> b!484680 d!77137))

(declare-fun d!77139 () Bool)

(declare-fun lt!219424 () Int)

(assert (=> d!77139 (>= lt!219424 0)))

(declare-fun e!285415 () Int)

(assert (=> d!77139 (= lt!219424 e!285415)))

(declare-fun c!58284 () Bool)

(assert (=> d!77139 (= c!58284 (is-Nil!9319 l!956))))

(assert (=> d!77139 (= (size!15443 l!956) lt!219424)))

(declare-fun b!484789 () Bool)

(assert (=> b!484789 (= e!285415 0)))

(declare-fun b!484790 () Bool)

(assert (=> b!484790 (= e!285415 (+ 1 (size!15443 (t!15552 l!956))))))

(assert (= (and d!77139 c!58284) b!484789))

(assert (= (and d!77139 (not c!58284)) b!484790))

(assert (=> b!484790 m!465055))

(assert (=> d!77047 d!77139))

(declare-fun d!77141 () Bool)

(declare-fun lt!219425 () Int)

(assert (=> d!77141 (>= lt!219425 0)))

(declare-fun e!285416 () Int)

(assert (=> d!77141 (= lt!219425 e!285416)))

(declare-fun c!58285 () Bool)

(assert (=> d!77141 (= c!58285 (is-Nil!9319 (insertStrictlySorted!241 (t!15552 l!956) key!251 value!166)))))

(assert (=> d!77141 (= (size!15443 (insertStrictlySorted!241 (t!15552 l!956) key!251 value!166)) lt!219425)))

(declare-fun b!484791 () Bool)

(assert (=> b!484791 (= e!285416 0)))

(declare-fun b!484792 () Bool)

(assert (=> b!484792 (= e!285416 (+ 1 (size!15443 (t!15552 (insertStrictlySorted!241 (t!15552 l!956) key!251 value!166)))))))

(assert (= (and d!77141 c!58285) b!484791))

(assert (= (and d!77141 (not c!58285)) b!484792))

(declare-fun m!465175 () Bool)

(assert (=> b!484792 m!465175))

(assert (=> d!77033 d!77141))

(declare-fun lt!219428 () Bool)

(declare-fun d!77143 () Bool)

(declare-fun content!214 (List!9322) (Set tuple2!9244))

(assert (=> d!77143 (= lt!219428 (set.member (tuple2!9245 key!251 value!166) (content!214 lt!219393)))))

(declare-fun e!285421 () Bool)

(assert (=> d!77143 (= lt!219428 e!285421)))

(declare-fun res!288824 () Bool)

(assert (=> d!77143 (=> (not res!288824) (not e!285421))))

(assert (=> d!77143 (= res!288824 (is-Cons!9318 lt!219393))))

(assert (=> d!77143 (= (contains!2686 lt!219393 (tuple2!9245 key!251 value!166)) lt!219428)))

(declare-fun b!484797 () Bool)

(declare-fun e!285422 () Bool)

(assert (=> b!484797 (= e!285421 e!285422)))

(declare-fun res!288823 () Bool)

(assert (=> b!484797 (=> res!288823 e!285422)))

(assert (=> b!484797 (= res!288823 (= (h!10174 lt!219393) (tuple2!9245 key!251 value!166)))))

(declare-fun b!484798 () Bool)

(assert (=> b!484798 (= e!285422 (contains!2686 (t!15552 lt!219393) (tuple2!9245 key!251 value!166)))))

(assert (= (and d!77143 res!288824) b!484797))

(assert (= (and b!484797 (not res!288823)) b!484798))

(declare-fun m!465177 () Bool)

(assert (=> d!77143 m!465177))

(declare-fun m!465179 () Bool)

(assert (=> d!77143 m!465179))

(declare-fun m!465181 () Bool)

(assert (=> b!484798 m!465181))

(assert (=> b!484609 d!77143))

(declare-fun d!77145 () Bool)

(declare-fun lt!219429 () Bool)

(assert (=> d!77145 (= lt!219429 (set.member (tuple2!9245 key!251 value!166) (content!214 lt!219399)))))

(declare-fun e!285423 () Bool)

(assert (=> d!77145 (= lt!219429 e!285423)))

(declare-fun res!288826 () Bool)

(assert (=> d!77145 (=> (not res!288826) (not e!285423))))

(assert (=> d!77145 (= res!288826 (is-Cons!9318 lt!219399))))

(assert (=> d!77145 (= (contains!2686 lt!219399 (tuple2!9245 key!251 value!166)) lt!219429)))

(declare-fun b!484799 () Bool)

(declare-fun e!285424 () Bool)

(assert (=> b!484799 (= e!285423 e!285424)))

(declare-fun res!288825 () Bool)

(assert (=> b!484799 (=> res!288825 e!285424)))

(assert (=> b!484799 (= res!288825 (= (h!10174 lt!219399) (tuple2!9245 key!251 value!166)))))

(declare-fun b!484800 () Bool)

(assert (=> b!484800 (= e!285424 (contains!2686 (t!15552 lt!219399) (tuple2!9245 key!251 value!166)))))

(assert (= (and d!77145 res!288826) b!484799))

(assert (= (and b!484799 (not res!288825)) b!484800))

(declare-fun m!465183 () Bool)

(assert (=> d!77145 m!465183))

(declare-fun m!465185 () Bool)

(assert (=> d!77145 m!465185))

(declare-fun m!465187 () Bool)

(assert (=> b!484800 m!465187))

(assert (=> b!484647 d!77145))

(assert (=> b!484703 d!77071))

(declare-fun d!77147 () Bool)

(assert (=> d!77147 (= ($colon$colon!125 e!285310 (ite c!58255 (h!10174 l!956) (tuple2!9245 key!251 value!166))) (Cons!9318 (ite c!58255 (h!10174 l!956) (tuple2!9245 key!251 value!166)) e!285310))))

(assert (=> bm!31172 d!77147))

(declare-fun d!77149 () Bool)

(assert (=> d!77149 (= ($colon$colon!125 e!285289 (ite c!58243 (h!10174 (t!15552 l!956)) (tuple2!9245 key!251 value!166))) (Cons!9318 (ite c!58243 (h!10174 (t!15552 l!956)) (tuple2!9245 key!251 value!166)) e!285289))))

(assert (=> bm!31163 d!77149))

(declare-fun b!484801 () Bool)

(declare-fun e!285425 () Bool)

(declare-fun tp!43569 () Bool)

(assert (=> b!484801 (= e!285425 (and tp_is_empty!13951 tp!43569))))

(assert (=> b!484708 (= tp!43564 e!285425)))

(assert (= (and b!484708 (is-Cons!9318 (t!15552 (t!15552 l!956)))) b!484801))

(push 1)

(assert (not d!77125))

(assert (not b!484798))

(assert (not b!484800))

(assert tp_is_empty!13951)

(assert (not b!484776))

(assert (not d!77143))

(assert (not b!484782))

(assert (not d!77133))

(assert (not b!484760))

(assert (not d!77145))

(assert (not b!484786))

(assert (not b!484767))

(assert (not b!484762))

(assert (not b!484792))

(assert (not b!484764))

(assert (not b!484784))

(assert (not b!484788))

(assert (not b!484790))

(assert (not b!484801))

(assert (not b!484773))

(assert (not bm!31184))

(assert (not b!484766))

(check-sat)

(pop 1)

(push 1)

(check-sat)

