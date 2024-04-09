; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72058 () Bool)

(assert start!72058)

(declare-fun b!836319 () Bool)

(declare-fun e!466629 () Bool)

(declare-fun e!466630 () Bool)

(assert (=> b!836319 (= e!466629 e!466630)))

(declare-fun res!569083 () Bool)

(assert (=> b!836319 (=> res!569083 e!466630)))

(declare-datatypes ((List!16039 0))(
  ( (Nil!16036) (Cons!16035 (h!17166 (_ BitVec 64)) (t!22418 List!16039)) )
))
(declare-fun lt!380352 () List!16039)

(declare-fun isStrictlySortedLong!0 (List!16039) Bool)

(assert (=> b!836319 (= res!569083 (not (isStrictlySortedLong!0 lt!380352)))))

(declare-datatypes ((B!1196 0))(
  ( (B!1197 (val!7680 Int)) )
))
(declare-datatypes ((tuple2!10238 0))(
  ( (tuple2!10239 (_1!5129 (_ BitVec 64)) (_2!5129 B!1196)) )
))
(declare-datatypes ((List!16040 0))(
  ( (Nil!16037) (Cons!16036 (h!17167 tuple2!10238) (t!22419 List!16040)) )
))
(declare-fun l!390 () List!16040)

(declare-fun getKeysList!4 (List!16040) List!16039)

(assert (=> b!836319 (= lt!380352 (Cons!16035 (_1!5129 (h!17167 l!390)) (getKeysList!4 (t!22419 l!390))))))

(declare-fun b!836318 () Bool)

(declare-fun res!569081 () Bool)

(assert (=> b!836318 (=> (not res!569081) (not e!466629))))

(assert (=> b!836318 (= res!569081 (is-Cons!16036 l!390))))

(declare-fun res!569082 () Bool)

(assert (=> start!72058 (=> (not res!569082) (not e!466629))))

(declare-fun isStrictlySorted!451 (List!16040) Bool)

(assert (=> start!72058 (= res!569082 (isStrictlySorted!451 l!390))))

(assert (=> start!72058 e!466629))

(declare-fun e!466631 () Bool)

(assert (=> start!72058 e!466631))

(declare-fun b!836320 () Bool)

(declare-fun length!17 (List!16039) Int)

(declare-fun length!18 (List!16040) Int)

(assert (=> b!836320 (= e!466630 (not (= (length!17 lt!380352) (length!18 l!390))))))

(declare-fun b!836321 () Bool)

(declare-fun tp_is_empty!15265 () Bool)

(declare-fun tp!47459 () Bool)

(assert (=> b!836321 (= e!466631 (and tp_is_empty!15265 tp!47459))))

(assert (= (and start!72058 res!569082) b!836318))

(assert (= (and b!836318 res!569081) b!836319))

(assert (= (and b!836319 (not res!569083)) b!836320))

(assert (= (and start!72058 (is-Cons!16036 l!390)) b!836321))

(declare-fun m!781663 () Bool)

(assert (=> b!836319 m!781663))

(declare-fun m!781665 () Bool)

(assert (=> b!836319 m!781665))

(declare-fun m!781667 () Bool)

(assert (=> start!72058 m!781667))

(declare-fun m!781669 () Bool)

(assert (=> b!836320 m!781669))

(declare-fun m!781671 () Bool)

(assert (=> b!836320 m!781671))

(push 1)

(assert (not b!836319))

(assert tp_is_empty!15265)

(assert (not start!72058))

(assert (not b!836321))

(assert (not b!836320))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!107517 () Bool)

(declare-fun size!22874 (List!16039) Int)

(assert (=> d!107517 (= (length!17 lt!380352) (size!22874 lt!380352))))

(declare-fun bs!23477 () Bool)

(assert (= bs!23477 d!107517))

(declare-fun m!781693 () Bool)

(assert (=> bs!23477 m!781693))

(assert (=> b!836320 d!107517))

(declare-fun d!107519 () Bool)

(declare-fun size!22875 (List!16040) Int)

(assert (=> d!107519 (= (length!18 l!390) (size!22875 l!390))))

(declare-fun bs!23478 () Bool)

(assert (= bs!23478 d!107519))

(declare-fun m!781697 () Bool)

(assert (=> bs!23478 m!781697))

(assert (=> b!836320 d!107519))

(declare-fun d!107525 () Bool)

(declare-fun res!569116 () Bool)

(declare-fun e!466664 () Bool)

(assert (=> d!107525 (=> res!569116 e!466664)))

(assert (=> d!107525 (= res!569116 (or (is-Nil!16037 l!390) (is-Nil!16037 (t!22419 l!390))))))

(assert (=> d!107525 (= (isStrictlySorted!451 l!390) e!466664)))

(declare-fun b!836360 () Bool)

(declare-fun e!466665 () Bool)

(assert (=> b!836360 (= e!466664 e!466665)))

(declare-fun res!569117 () Bool)

(assert (=> b!836360 (=> (not res!569117) (not e!466665))))

(assert (=> b!836360 (= res!569117 (bvslt (_1!5129 (h!17167 l!390)) (_1!5129 (h!17167 (t!22419 l!390)))))))

(declare-fun b!836361 () Bool)

(assert (=> b!836361 (= e!466665 (isStrictlySorted!451 (t!22419 l!390)))))

(assert (= (and d!107525 (not res!569116)) b!836360))

(assert (= (and b!836360 res!569117) b!836361))

(declare-fun m!781703 () Bool)

(assert (=> b!836361 m!781703))

(assert (=> start!72058 d!107525))

(declare-fun d!107531 () Bool)

(declare-fun res!569130 () Bool)

(declare-fun e!466678 () Bool)

(assert (=> d!107531 (=> res!569130 e!466678)))

(assert (=> d!107531 (= res!569130 (or (is-Nil!16036 lt!380352) (is-Nil!16036 (t!22418 lt!380352))))))

(assert (=> d!107531 (= (isStrictlySortedLong!0 lt!380352) e!466678)))

(declare-fun b!836374 () Bool)

(declare-fun e!466679 () Bool)

(assert (=> b!836374 (= e!466678 e!466679)))

(declare-fun res!569131 () Bool)

(assert (=> b!836374 (=> (not res!569131) (not e!466679))))

(assert (=> b!836374 (= res!569131 (bvslt (h!17166 lt!380352) (h!17166 (t!22418 lt!380352))))))

(declare-fun b!836375 () Bool)

(assert (=> b!836375 (= e!466679 (isStrictlySortedLong!0 (t!22418 lt!380352)))))

(assert (= (and d!107531 (not res!569130)) b!836374))

(assert (= (and b!836374 res!569131) b!836375))

(declare-fun m!781709 () Bool)

(assert (=> b!836375 m!781709))

(assert (=> b!836319 d!107531))

(declare-fun d!107537 () Bool)

(declare-fun e!466695 () Bool)

(assert (=> d!107537 e!466695))

(declare-fun res!569142 () Bool)

(assert (=> d!107537 (=> (not res!569142) (not e!466695))))

(declare-fun lt!380363 () List!16039)

(assert (=> d!107537 (= res!569142 (isStrictlySortedLong!0 lt!380363))))

(declare-fun e!466694 () List!16039)

(assert (=> d!107537 (= lt!380363 e!466694)))

(declare-fun c!90969 () Bool)

(assert (=> d!107537 (= c!90969 (is-Cons!16036 (t!22419 l!390)))))

(assert (=> d!107537 (isStrictlySorted!451 (t!22419 l!390))))

(assert (=> d!107537 (= (getKeysList!4 (t!22419 l!390)) lt!380363)))

(declare-fun b!836394 () Bool)

(assert (=> b!836394 (= e!466694 (Cons!16035 (_1!5129 (h!17167 (t!22419 l!390))) (getKeysList!4 (t!22419 (t!22419 l!390)))))))

(declare-fun b!836395 () Bool)

(assert (=> b!836395 (= e!466694 Nil!16036)))

(declare-fun b!836396 () Bool)

(assert (=> b!836396 (= e!466695 (= (length!17 lt!380363) (length!18 (t!22419 l!390))))))

(assert (= (and d!107537 c!90969) b!836394))

(assert (= (and d!107537 (not c!90969)) b!836395))

(assert (= (and d!107537 res!569142) b!836396))

(declare-fun m!781713 () Bool)

(assert (=> d!107537 m!781713))

(assert (=> d!107537 m!781703))

(declare-fun m!781715 () Bool)

(assert (=> b!836394 m!781715))

(declare-fun m!781717 () Bool)

(assert (=> b!836396 m!781717))

(declare-fun m!781719 () Bool)

(assert (=> b!836396 m!781719))

(assert (=> b!836319 d!107537))

(declare-fun b!836401 () Bool)

(declare-fun e!466698 () Bool)

(declare-fun tp!47468 () Bool)

(assert (=> b!836401 (= e!466698 (and tp_is_empty!15265 tp!47468))))

(assert (=> b!836321 (= tp!47459 e!466698)))

(assert (= (and b!836321 (is-Cons!16036 (t!22419 l!390))) b!836401))

(push 1)

(assert (not d!107517))

(assert (not b!836394))

(assert tp_is_empty!15265)

(assert (not d!107519))

(assert (not b!836375))

(assert (not d!107537))

(assert (not b!836361))

(assert (not b!836396))

(assert (not b!836401))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!107561 () Bool)

(declare-fun res!569154 () Bool)

(declare-fun e!466728 () Bool)

(assert (=> d!107561 (=> res!569154 e!466728)))

(assert (=> d!107561 (= res!569154 (or (is-Nil!16037 (t!22419 l!390)) (is-Nil!16037 (t!22419 (t!22419 l!390)))))))

(assert (=> d!107561 (= (isStrictlySorted!451 (t!22419 l!390)) e!466728)))

(declare-fun b!836446 () Bool)

(declare-fun e!466729 () Bool)

(assert (=> b!836446 (= e!466728 e!466729)))

(declare-fun res!569155 () Bool)

(assert (=> b!836446 (=> (not res!569155) (not e!466729))))

(assert (=> b!836446 (= res!569155 (bvslt (_1!5129 (h!17167 (t!22419 l!390))) (_1!5129 (h!17167 (t!22419 (t!22419 l!390))))))))

(declare-fun b!836447 () Bool)

(assert (=> b!836447 (= e!466729 (isStrictlySorted!451 (t!22419 (t!22419 l!390))))))

(assert (= (and d!107561 (not res!569154)) b!836446))

(assert (= (and b!836446 res!569155) b!836447))

(declare-fun m!781761 () Bool)

(assert (=> b!836447 m!781761))

(assert (=> b!836361 d!107561))

(declare-fun d!107563 () Bool)

(declare-fun lt!380377 () Int)

(assert (=> d!107563 (>= lt!380377 0)))

(declare-fun e!466732 () Int)

(assert (=> d!107563 (= lt!380377 e!466732)))

(declare-fun c!90983 () Bool)

(assert (=> d!107563 (= c!90983 (is-Nil!16036 lt!380352))))

(assert (=> d!107563 (= (size!22874 lt!380352) lt!380377)))

(declare-fun b!836452 () Bool)

(assert (=> b!836452 (= e!466732 0)))

(declare-fun b!836453 () Bool)

(assert (=> b!836453 (= e!466732 (+ 1 (size!22874 (t!22418 lt!380352))))))

(assert (= (and d!107563 c!90983) b!836452))

(assert (= (and d!107563 (not c!90983)) b!836453))

(declare-fun m!781763 () Bool)

(assert (=> b!836453 m!781763))

(assert (=> d!107517 d!107563))

(declare-fun d!107565 () Bool)

(declare-fun res!569156 () Bool)

(declare-fun e!466733 () Bool)

(assert (=> d!107565 (=> res!569156 e!466733)))

(assert (=> d!107565 (= res!569156 (or (is-Nil!16036 (t!22418 lt!380352)) (is-Nil!16036 (t!22418 (t!22418 lt!380352)))))))

(assert (=> d!107565 (= (isStrictlySortedLong!0 (t!22418 lt!380352)) e!466733)))

(declare-fun b!836454 () Bool)

(declare-fun e!466734 () Bool)

(assert (=> b!836454 (= e!466733 e!466734)))

(declare-fun res!569157 () Bool)

(assert (=> b!836454 (=> (not res!569157) (not e!466734))))

(assert (=> b!836454 (= res!569157 (bvslt (h!17166 (t!22418 lt!380352)) (h!17166 (t!22418 (t!22418 lt!380352)))))))

(declare-fun b!836455 () Bool)

(assert (=> b!836455 (= e!466734 (isStrictlySortedLong!0 (t!22418 (t!22418 lt!380352))))))

(assert (= (and d!107565 (not res!569156)) b!836454))

(assert (= (and b!836454 res!569157) b!836455))

(declare-fun m!781765 () Bool)

(assert (=> b!836455 m!781765))

(assert (=> b!836375 d!107565))

(declare-fun d!107567 () Bool)

(declare-fun e!466736 () Bool)

(assert (=> d!107567 e!466736))

(declare-fun res!569158 () Bool)

(assert (=> d!107567 (=> (not res!569158) (not e!466736))))

(declare-fun lt!380378 () List!16039)

(assert (=> d!107567 (= res!569158 (isStrictlySortedLong!0 lt!380378))))

(declare-fun e!466735 () List!16039)

(assert (=> d!107567 (= lt!380378 e!466735)))

(declare-fun c!90984 () Bool)

(assert (=> d!107567 (= c!90984 (is-Cons!16036 (t!22419 (t!22419 l!390))))))

(assert (=> d!107567 (isStrictlySorted!451 (t!22419 (t!22419 l!390)))))

(assert (=> d!107567 (= (getKeysList!4 (t!22419 (t!22419 l!390))) lt!380378)))

(declare-fun b!836456 () Bool)

(assert (=> b!836456 (= e!466735 (Cons!16035 (_1!5129 (h!17167 (t!22419 (t!22419 l!390)))) (getKeysList!4 (t!22419 (t!22419 (t!22419 l!390))))))))

(declare-fun b!836457 () Bool)

(assert (=> b!836457 (= e!466735 Nil!16036)))

(declare-fun b!836458 () Bool)

(assert (=> b!836458 (= e!466736 (= (length!17 lt!380378) (length!18 (t!22419 (t!22419 l!390)))))))

(assert (= (and d!107567 c!90984) b!836456))

(assert (= (and d!107567 (not c!90984)) b!836457))

(assert (= (and d!107567 res!569158) b!836458))

(declare-fun m!781767 () Bool)

(assert (=> d!107567 m!781767))

(assert (=> d!107567 m!781761))

(declare-fun m!781769 () Bool)

(assert (=> b!836456 m!781769))

(declare-fun m!781771 () Bool)

(assert (=> b!836458 m!781771))

(declare-fun m!781773 () Bool)

(assert (=> b!836458 m!781773))

(assert (=> b!836394 d!107567))

(declare-fun d!107569 () Bool)

(declare-fun res!569159 () Bool)

(declare-fun e!466737 () Bool)

(assert (=> d!107569 (=> res!569159 e!466737)))

(assert (=> d!107569 (= res!569159 (or (is-Nil!16036 lt!380363) (is-Nil!16036 (t!22418 lt!380363))))))

(assert (=> d!107569 (= (isStrictlySortedLong!0 lt!380363) e!466737)))

(declare-fun b!836459 () Bool)

(declare-fun e!466738 () Bool)

(assert (=> b!836459 (= e!466737 e!466738)))

(declare-fun res!569160 () Bool)

(assert (=> b!836459 (=> (not res!569160) (not e!466738))))

(assert (=> b!836459 (= res!569160 (bvslt (h!17166 lt!380363) (h!17166 (t!22418 lt!380363))))))

(declare-fun b!836460 () Bool)

(assert (=> b!836460 (= e!466738 (isStrictlySortedLong!0 (t!22418 lt!380363)))))

(assert (= (and d!107569 (not res!569159)) b!836459))

(assert (= (and b!836459 res!569160) b!836460))

(declare-fun m!781775 () Bool)

(assert (=> b!836460 m!781775))

(assert (=> d!107537 d!107569))

(assert (=> d!107537 d!107561))

(declare-fun d!107571 () Bool)

(declare-fun lt!380381 () Int)

(assert (=> d!107571 (>= lt!380381 0)))

(declare-fun e!466741 () Int)

(assert (=> d!107571 (= lt!380381 e!466741)))

(declare-fun c!90987 () Bool)

(assert (=> d!107571 (= c!90987 (is-Nil!16037 l!390))))

(assert (=> d!107571 (= (size!22875 l!390) lt!380381)))

(declare-fun b!836465 () Bool)

(assert (=> b!836465 (= e!466741 0)))

(declare-fun b!836466 () Bool)

(assert (=> b!836466 (= e!466741 (+ 1 (size!22875 (t!22419 l!390))))))

(assert (= (and d!107571 c!90987) b!836465))

(assert (= (and d!107571 (not c!90987)) b!836466))

(declare-fun m!781777 () Bool)

(assert (=> b!836466 m!781777))

(assert (=> d!107519 d!107571))

(declare-fun d!107573 () Bool)

(assert (=> d!107573 (= (length!17 lt!380363) (size!22874 lt!380363))))

(declare-fun bs!23485 () Bool)

(assert (= bs!23485 d!107573))

(declare-fun m!781779 () Bool)

(assert (=> bs!23485 m!781779))

(assert (=> b!836396 d!107573))

(declare-fun d!107575 () Bool)

(assert (=> d!107575 (= (length!18 (t!22419 l!390)) (size!22875 (t!22419 l!390)))))

(declare-fun bs!23486 () Bool)

(assert (= bs!23486 d!107575))

(assert (=> bs!23486 m!781777))

(assert (=> b!836396 d!107575))

(declare-fun b!836467 () Bool)

(declare-fun e!466742 () Bool)

(declare-fun tp!47476 () Bool)

(assert (=> b!836467 (= e!466742 (and tp_is_empty!15265 tp!47476))))

(assert (=> b!836401 (= tp!47468 e!466742)))

(assert (= (and b!836401 (is-Cons!16036 (t!22419 (t!22419 l!390)))) b!836467))

(push 1)

(assert (not b!836467))

(assert (not b!836458))

(assert (not d!107573))

(assert (not b!836455))

(assert (not b!836466))

(assert (not b!836456))

(assert (not b!836453))

(assert (not d!107575))

(assert tp_is_empty!15265)

(assert (not b!836460))

(assert (not b!836447))

(assert (not d!107567))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

