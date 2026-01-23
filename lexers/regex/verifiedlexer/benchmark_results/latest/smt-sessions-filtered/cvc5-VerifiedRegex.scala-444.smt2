; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!13112 () Bool)

(assert start!13112)

(declare-fun b!127745 () Bool)

(declare-fun res!58962 () Bool)

(declare-fun e!73389 () Bool)

(assert (=> b!127745 (=> (not res!58962) (not e!73389))))

(declare-datatypes ((B!631 0))(
  ( (B!632 (val!779 Int)) )
))
(declare-datatypes ((List!2110 0))(
  ( (Nil!2104) (Cons!2104 (h!7501 B!631) (t!22686 List!2110)) )
))
(declare-fun s!1511 () List!2110)

(declare-fun isEmpty!836 (List!2110) Bool)

(assert (=> b!127745 (= res!58962 (not (isEmpty!836 s!1511)))))

(declare-fun b!127746 () Bool)

(declare-fun res!58964 () Bool)

(assert (=> b!127746 (=> (not res!58964) (not e!73389))))

(declare-fun p!1997 () List!2110)

(assert (=> b!127746 (= res!58964 (is-Cons!2104 p!1997))))

(declare-fun b!127747 () Bool)

(declare-fun e!73392 () Bool)

(declare-fun l!3367 () List!2110)

(assert (=> b!127747 (= e!73392 (not (not (isEmpty!836 l!3367))))))

(declare-fun lt!38269 () List!2110)

(declare-fun ++!401 (List!2110 List!2110) List!2110)

(declare-fun removeLast!3 (List!2110) List!2110)

(assert (=> b!127747 (= (++!401 (t!22686 p!1997) (removeLast!3 s!1511)) (removeLast!3 lt!38269))))

(declare-datatypes ((Unit!1643 0))(
  ( (Unit!1644) )
))
(declare-fun lt!38268 () Unit!1643)

(declare-fun lemmaRemoveLastFromBothSidePreservesEq!3 (List!2110 List!2110 List!2110) Unit!1643)

(assert (=> b!127747 (= lt!38268 (lemmaRemoveLastFromBothSidePreservesEq!3 (t!22686 p!1997) s!1511 lt!38269))))

(declare-fun b!127749 () Bool)

(declare-fun e!73390 () Bool)

(declare-fun tp_is_empty!1239 () Bool)

(declare-fun tp!69708 () Bool)

(assert (=> b!127749 (= e!73390 (and tp_is_empty!1239 tp!69708))))

(declare-fun res!58961 () Bool)

(assert (=> start!13112 (=> (not res!58961) (not e!73389))))

(assert (=> start!13112 (= res!58961 (= (++!401 p!1997 s!1511) l!3367))))

(assert (=> start!13112 e!73389))

(declare-fun e!73391 () Bool)

(assert (=> start!13112 e!73391))

(assert (=> start!13112 e!73390))

(declare-fun e!73388 () Bool)

(assert (=> start!13112 e!73388))

(declare-fun b!127748 () Bool)

(assert (=> b!127748 (= e!73389 e!73392)))

(declare-fun res!58963 () Bool)

(assert (=> b!127748 (=> (not res!58963) (not e!73392))))

(assert (=> b!127748 (= res!58963 (= (++!401 (t!22686 p!1997) s!1511) lt!38269))))

(declare-fun tail!255 (List!2110) List!2110)

(assert (=> b!127748 (= lt!38269 (tail!255 l!3367))))

(declare-fun b!127750 () Bool)

(declare-fun tp!69709 () Bool)

(assert (=> b!127750 (= e!73388 (and tp_is_empty!1239 tp!69709))))

(declare-fun b!127751 () Bool)

(declare-fun tp!69710 () Bool)

(assert (=> b!127751 (= e!73391 (and tp_is_empty!1239 tp!69710))))

(assert (= (and start!13112 res!58961) b!127745))

(assert (= (and b!127745 res!58962) b!127746))

(assert (= (and b!127746 res!58964) b!127748))

(assert (= (and b!127748 res!58963) b!127747))

(assert (= (and start!13112 (is-Cons!2104 p!1997)) b!127751))

(assert (= (and start!13112 (is-Cons!2104 s!1511)) b!127749))

(assert (= (and start!13112 (is-Cons!2104 l!3367)) b!127750))

(declare-fun m!112519 () Bool)

(assert (=> b!127745 m!112519))

(declare-fun m!112521 () Bool)

(assert (=> b!127747 m!112521))

(declare-fun m!112523 () Bool)

(assert (=> b!127747 m!112523))

(declare-fun m!112525 () Bool)

(assert (=> b!127747 m!112525))

(assert (=> b!127747 m!112521))

(declare-fun m!112527 () Bool)

(assert (=> b!127747 m!112527))

(declare-fun m!112529 () Bool)

(assert (=> b!127747 m!112529))

(declare-fun m!112531 () Bool)

(assert (=> start!13112 m!112531))

(declare-fun m!112533 () Bool)

(assert (=> b!127748 m!112533))

(declare-fun m!112535 () Bool)

(assert (=> b!127748 m!112535))

(push 1)

(assert (not b!127749))

(assert (not b!127748))

(assert tp_is_empty!1239)

(assert (not b!127750))

(assert (not b!127751))

(assert (not b!127745))

(assert (not start!13112))

(assert (not b!127747))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!30149 () Bool)

(declare-fun lt!38278 () List!2110)

(declare-fun last!8 (List!2110) B!631)

(assert (=> d!30149 (= (++!401 lt!38278 (Cons!2104 (last!8 s!1511) Nil!2104)) s!1511)))

(declare-fun e!73410 () List!2110)

(assert (=> d!30149 (= lt!38278 e!73410)))

(declare-fun c!27951 () Bool)

(assert (=> d!30149 (= c!27951 (and (is-Cons!2104 s!1511) (is-Nil!2104 (t!22686 s!1511))))))

(assert (=> d!30149 (not (isEmpty!836 s!1511))))

(assert (=> d!30149 (= (removeLast!3 s!1511) lt!38278)))

(declare-fun b!127777 () Bool)

(assert (=> b!127777 (= e!73410 Nil!2104)))

(declare-fun b!127778 () Bool)

(assert (=> b!127778 (= e!73410 (Cons!2104 (h!7501 s!1511) (removeLast!3 (t!22686 s!1511))))))

(assert (= (and d!30149 c!27951) b!127777))

(assert (= (and d!30149 (not c!27951)) b!127778))

(declare-fun m!112555 () Bool)

(assert (=> d!30149 m!112555))

(declare-fun m!112557 () Bool)

(assert (=> d!30149 m!112557))

(assert (=> d!30149 m!112519))

(declare-fun m!112559 () Bool)

(assert (=> b!127778 m!112559))

(assert (=> b!127747 d!30149))

(declare-fun d!30151 () Bool)

(declare-fun lt!38279 () List!2110)

(assert (=> d!30151 (= (++!401 lt!38279 (Cons!2104 (last!8 lt!38269) Nil!2104)) lt!38269)))

(declare-fun e!73411 () List!2110)

(assert (=> d!30151 (= lt!38279 e!73411)))

(declare-fun c!27952 () Bool)

(assert (=> d!30151 (= c!27952 (and (is-Cons!2104 lt!38269) (is-Nil!2104 (t!22686 lt!38269))))))

(assert (=> d!30151 (not (isEmpty!836 lt!38269))))

(assert (=> d!30151 (= (removeLast!3 lt!38269) lt!38279)))

(declare-fun b!127779 () Bool)

(assert (=> b!127779 (= e!73411 Nil!2104)))

(declare-fun b!127780 () Bool)

(assert (=> b!127780 (= e!73411 (Cons!2104 (h!7501 lt!38269) (removeLast!3 (t!22686 lt!38269))))))

(assert (= (and d!30151 c!27952) b!127779))

(assert (= (and d!30151 (not c!27952)) b!127780))

(declare-fun m!112561 () Bool)

(assert (=> d!30151 m!112561))

(declare-fun m!112563 () Bool)

(assert (=> d!30151 m!112563))

(declare-fun m!112565 () Bool)

(assert (=> d!30151 m!112565))

(declare-fun m!112567 () Bool)

(assert (=> b!127780 m!112567))

(assert (=> b!127747 d!30151))

(declare-fun d!30153 () Bool)

(assert (=> d!30153 (= (isEmpty!836 l!3367) (is-Nil!2104 l!3367))))

(assert (=> b!127747 d!30153))

(declare-fun b!127798 () Bool)

(declare-fun e!73421 () List!2110)

(assert (=> b!127798 (= e!73421 (Cons!2104 (h!7501 (t!22686 p!1997)) (++!401 (t!22686 (t!22686 p!1997)) (removeLast!3 s!1511))))))

(declare-fun b!127797 () Bool)

(assert (=> b!127797 (= e!73421 (removeLast!3 s!1511))))

(declare-fun d!30155 () Bool)

(declare-fun e!73420 () Bool)

(assert (=> d!30155 e!73420))

(declare-fun res!58985 () Bool)

(assert (=> d!30155 (=> (not res!58985) (not e!73420))))

(declare-fun lt!38284 () List!2110)

(declare-fun content!243 (List!2110) (Set B!631))

(assert (=> d!30155 (= res!58985 (= (content!243 lt!38284) (set.union (content!243 (t!22686 p!1997)) (content!243 (removeLast!3 s!1511)))))))

(assert (=> d!30155 (= lt!38284 e!73421)))

(declare-fun c!27957 () Bool)

(assert (=> d!30155 (= c!27957 (is-Nil!2104 (t!22686 p!1997)))))

(assert (=> d!30155 (= (++!401 (t!22686 p!1997) (removeLast!3 s!1511)) lt!38284)))

(declare-fun b!127799 () Bool)

(declare-fun res!58986 () Bool)

(assert (=> b!127799 (=> (not res!58986) (not e!73420))))

(declare-fun size!1925 (List!2110) Int)

(assert (=> b!127799 (= res!58986 (= (size!1925 lt!38284) (+ (size!1925 (t!22686 p!1997)) (size!1925 (removeLast!3 s!1511)))))))

(declare-fun b!127800 () Bool)

(assert (=> b!127800 (= e!73420 (or (not (= (removeLast!3 s!1511) Nil!2104)) (= lt!38284 (t!22686 p!1997))))))

(assert (= (and d!30155 c!27957) b!127797))

(assert (= (and d!30155 (not c!27957)) b!127798))

(assert (= (and d!30155 res!58985) b!127799))

(assert (= (and b!127799 res!58986) b!127800))

(assert (=> b!127798 m!112521))

(declare-fun m!112569 () Bool)

(assert (=> b!127798 m!112569))

(declare-fun m!112571 () Bool)

(assert (=> d!30155 m!112571))

(declare-fun m!112573 () Bool)

(assert (=> d!30155 m!112573))

(assert (=> d!30155 m!112521))

(declare-fun m!112575 () Bool)

(assert (=> d!30155 m!112575))

(declare-fun m!112577 () Bool)

(assert (=> b!127799 m!112577))

(declare-fun m!112579 () Bool)

(assert (=> b!127799 m!112579))

(assert (=> b!127799 m!112521))

(declare-fun m!112581 () Bool)

(assert (=> b!127799 m!112581))

(assert (=> b!127747 d!30155))

(declare-fun d!30157 () Bool)

(assert (=> d!30157 (= (++!401 (t!22686 p!1997) (removeLast!3 s!1511)) (removeLast!3 lt!38269))))

(declare-fun lt!38288 () Unit!1643)

(declare-fun choose!1641 (List!2110 List!2110 List!2110) Unit!1643)

(assert (=> d!30157 (= lt!38288 (choose!1641 (t!22686 p!1997) s!1511 lt!38269))))

(assert (=> d!30157 (= (++!401 (t!22686 p!1997) s!1511) lt!38269)))

(assert (=> d!30157 (= (lemmaRemoveLastFromBothSidePreservesEq!3 (t!22686 p!1997) s!1511 lt!38269) lt!38288)))

(declare-fun bs!12512 () Bool)

(assert (= bs!12512 d!30157))

(assert (=> bs!12512 m!112533))

(declare-fun m!112595 () Bool)

(assert (=> bs!12512 m!112595))

(assert (=> bs!12512 m!112521))

(assert (=> bs!12512 m!112523))

(assert (=> bs!12512 m!112521))

(assert (=> bs!12512 m!112525))

(assert (=> b!127747 d!30157))

(declare-fun b!127806 () Bool)

(declare-fun e!73425 () List!2110)

(assert (=> b!127806 (= e!73425 (Cons!2104 (h!7501 (t!22686 p!1997)) (++!401 (t!22686 (t!22686 p!1997)) s!1511)))))

(declare-fun b!127805 () Bool)

(assert (=> b!127805 (= e!73425 s!1511)))

(declare-fun d!30161 () Bool)

(declare-fun e!73424 () Bool)

(assert (=> d!30161 e!73424))

(declare-fun res!58989 () Bool)

(assert (=> d!30161 (=> (not res!58989) (not e!73424))))

(declare-fun lt!38289 () List!2110)

(assert (=> d!30161 (= res!58989 (= (content!243 lt!38289) (set.union (content!243 (t!22686 p!1997)) (content!243 s!1511))))))

(assert (=> d!30161 (= lt!38289 e!73425)))

(declare-fun c!27959 () Bool)

(assert (=> d!30161 (= c!27959 (is-Nil!2104 (t!22686 p!1997)))))

(assert (=> d!30161 (= (++!401 (t!22686 p!1997) s!1511) lt!38289)))

(declare-fun b!127807 () Bool)

(declare-fun res!58990 () Bool)

(assert (=> b!127807 (=> (not res!58990) (not e!73424))))

(assert (=> b!127807 (= res!58990 (= (size!1925 lt!38289) (+ (size!1925 (t!22686 p!1997)) (size!1925 s!1511))))))

(declare-fun b!127808 () Bool)

(assert (=> b!127808 (= e!73424 (or (not (= s!1511 Nil!2104)) (= lt!38289 (t!22686 p!1997))))))

(assert (= (and d!30161 c!27959) b!127805))

(assert (= (and d!30161 (not c!27959)) b!127806))

(assert (= (and d!30161 res!58989) b!127807))

(assert (= (and b!127807 res!58990) b!127808))

(declare-fun m!112597 () Bool)

(assert (=> b!127806 m!112597))

(declare-fun m!112599 () Bool)

(assert (=> d!30161 m!112599))

(assert (=> d!30161 m!112573))

(declare-fun m!112601 () Bool)

(assert (=> d!30161 m!112601))

(declare-fun m!112603 () Bool)

(assert (=> b!127807 m!112603))

(assert (=> b!127807 m!112579))

(declare-fun m!112605 () Bool)

(assert (=> b!127807 m!112605))

(assert (=> b!127748 d!30161))

(declare-fun d!30163 () Bool)

(assert (=> d!30163 (= (tail!255 l!3367) (t!22686 l!3367))))

(assert (=> b!127748 d!30163))

(declare-fun b!127810 () Bool)

(declare-fun e!73427 () List!2110)

(assert (=> b!127810 (= e!73427 (Cons!2104 (h!7501 p!1997) (++!401 (t!22686 p!1997) s!1511)))))

(declare-fun b!127809 () Bool)

(assert (=> b!127809 (= e!73427 s!1511)))

(declare-fun d!30165 () Bool)

(declare-fun e!73426 () Bool)

(assert (=> d!30165 e!73426))

(declare-fun res!58991 () Bool)

(assert (=> d!30165 (=> (not res!58991) (not e!73426))))

(declare-fun lt!38290 () List!2110)

(assert (=> d!30165 (= res!58991 (= (content!243 lt!38290) (set.union (content!243 p!1997) (content!243 s!1511))))))

(assert (=> d!30165 (= lt!38290 e!73427)))

(declare-fun c!27960 () Bool)

(assert (=> d!30165 (= c!27960 (is-Nil!2104 p!1997))))

(assert (=> d!30165 (= (++!401 p!1997 s!1511) lt!38290)))

(declare-fun b!127811 () Bool)

(declare-fun res!58992 () Bool)

(assert (=> b!127811 (=> (not res!58992) (not e!73426))))

(assert (=> b!127811 (= res!58992 (= (size!1925 lt!38290) (+ (size!1925 p!1997) (size!1925 s!1511))))))

(declare-fun b!127812 () Bool)

(assert (=> b!127812 (= e!73426 (or (not (= s!1511 Nil!2104)) (= lt!38290 p!1997)))))

(assert (= (and d!30165 c!27960) b!127809))

(assert (= (and d!30165 (not c!27960)) b!127810))

(assert (= (and d!30165 res!58991) b!127811))

(assert (= (and b!127811 res!58992) b!127812))

(assert (=> b!127810 m!112533))

(declare-fun m!112607 () Bool)

(assert (=> d!30165 m!112607))

(declare-fun m!112609 () Bool)

(assert (=> d!30165 m!112609))

(assert (=> d!30165 m!112601))

(declare-fun m!112611 () Bool)

(assert (=> b!127811 m!112611))

(declare-fun m!112613 () Bool)

(assert (=> b!127811 m!112613))

(assert (=> b!127811 m!112605))

(assert (=> start!13112 d!30165))

(declare-fun d!30167 () Bool)

(assert (=> d!30167 (= (isEmpty!836 s!1511) (is-Nil!2104 s!1511))))

(assert (=> b!127745 d!30167))

(declare-fun b!127817 () Bool)

(declare-fun e!73430 () Bool)

(declare-fun tp!69722 () Bool)

(assert (=> b!127817 (= e!73430 (and tp_is_empty!1239 tp!69722))))

(assert (=> b!127749 (= tp!69708 e!73430)))

(assert (= (and b!127749 (is-Cons!2104 (t!22686 s!1511))) b!127817))

(declare-fun b!127818 () Bool)

(declare-fun e!73431 () Bool)

(declare-fun tp!69723 () Bool)

(assert (=> b!127818 (= e!73431 (and tp_is_empty!1239 tp!69723))))

(assert (=> b!127751 (= tp!69710 e!73431)))

(assert (= (and b!127751 (is-Cons!2104 (t!22686 p!1997))) b!127818))

(declare-fun b!127819 () Bool)

(declare-fun e!73432 () Bool)

(declare-fun tp!69724 () Bool)

(assert (=> b!127819 (= e!73432 (and tp_is_empty!1239 tp!69724))))

(assert (=> b!127750 (= tp!69709 e!73432)))

(assert (= (and b!127750 (is-Cons!2104 (t!22686 l!3367))) b!127819))

(push 1)

(assert (not b!127818))

(assert (not d!30151))

(assert (not b!127799))

(assert (not d!30155))

(assert (not d!30165))

(assert (not b!127817))

(assert (not b!127811))

(assert (not b!127778))

(assert (not b!127819))

(assert (not d!30157))

(assert tp_is_empty!1239)

(assert (not b!127806))

(assert (not d!30149))

(assert (not d!30161))

(assert (not b!127810))

(assert (not b!127780))

(assert (not b!127807))

(assert (not b!127798))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

