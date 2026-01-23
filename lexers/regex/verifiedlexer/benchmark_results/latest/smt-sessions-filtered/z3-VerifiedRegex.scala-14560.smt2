; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!755300 () Bool)

(assert start!755300)

(declare-fun b!8023773 () Bool)

(declare-fun e!4726736 () Bool)

(declare-datatypes ((B!4257 0))(
  ( (B!4258 (val!32518 Int)) )
))
(declare-datatypes ((List!75030 0))(
  ( (Nil!74906) (Cons!74906 (h!81354 B!4257) (t!390773 List!75030)) )
))
(declare-fun l!2932 () List!75030)

(declare-fun p!1838 () List!75030)

(declare-fun size!43683 (List!75030) Int)

(declare-fun tail!15973 (List!75030) List!75030)

(assert (=> b!8023773 (= e!4726736 (< (size!43683 (tail!15973 l!2932)) (size!43683 (t!390773 p!1838))))))

(declare-fun b!8023775 () Bool)

(declare-fun e!4726737 () Bool)

(declare-fun tp_is_empty!54145 () Bool)

(declare-fun tp!2401339 () Bool)

(assert (=> b!8023775 (= e!4726737 (and tp_is_empty!54145 tp!2401339))))

(declare-fun b!8023776 () Bool)

(declare-fun e!4726735 () Bool)

(declare-fun tp!2401338 () Bool)

(assert (=> b!8023776 (= e!4726735 (and tp_is_empty!54145 tp!2401338))))

(declare-fun b!8023777 () Bool)

(declare-fun res!3173074 () Bool)

(assert (=> b!8023777 (=> (not res!3173074) (not e!4726736))))

(get-info :version)

(assert (=> b!8023777 (= res!3173074 ((_ is Cons!74906) p!1838))))

(declare-fun res!3173075 () Bool)

(assert (=> start!755300 (=> (not res!3173075) (not e!4726736))))

(assert (=> start!755300 (= res!3173075 (>= (size!43683 l!2932) (size!43683 p!1838)))))

(assert (=> start!755300 e!4726736))

(assert (=> start!755300 e!4726735))

(assert (=> start!755300 e!4726737))

(declare-fun b!8023774 () Bool)

(declare-fun res!3173076 () Bool)

(assert (=> b!8023774 (=> (not res!3173076) (not e!4726736))))

(declare-fun isPrefix!6837 (List!75030 List!75030) Bool)

(assert (=> b!8023774 (= res!3173076 (isPrefix!6837 p!1838 l!2932))))

(assert (= (and start!755300 res!3173075) b!8023774))

(assert (= (and b!8023774 res!3173076) b!8023777))

(assert (= (and b!8023777 res!3173074) b!8023773))

(assert (= (and start!755300 ((_ is Cons!74906) l!2932)) b!8023776))

(assert (= (and start!755300 ((_ is Cons!74906) p!1838)) b!8023775))

(declare-fun m!8386354 () Bool)

(assert (=> b!8023773 m!8386354))

(assert (=> b!8023773 m!8386354))

(declare-fun m!8386356 () Bool)

(assert (=> b!8023773 m!8386356))

(declare-fun m!8386358 () Bool)

(assert (=> b!8023773 m!8386358))

(declare-fun m!8386360 () Bool)

(assert (=> start!755300 m!8386360))

(declare-fun m!8386362 () Bool)

(assert (=> start!755300 m!8386362))

(declare-fun m!8386364 () Bool)

(assert (=> b!8023774 m!8386364))

(check-sat (not b!8023774) (not b!8023776) tp_is_empty!54145 (not start!755300) (not b!8023775) (not b!8023773))
(check-sat)
(get-model)

(declare-fun d!2392521 () Bool)

(declare-fun lt!2720466 () Int)

(assert (=> d!2392521 (>= lt!2720466 0)))

(declare-fun e!4726749 () Int)

(assert (=> d!2392521 (= lt!2720466 e!4726749)))

(declare-fun c!1472320 () Bool)

(assert (=> d!2392521 (= c!1472320 ((_ is Nil!74906) (tail!15973 l!2932)))))

(assert (=> d!2392521 (= (size!43683 (tail!15973 l!2932)) lt!2720466)))

(declare-fun b!8023794 () Bool)

(assert (=> b!8023794 (= e!4726749 0)))

(declare-fun b!8023795 () Bool)

(assert (=> b!8023795 (= e!4726749 (+ 1 (size!43683 (t!390773 (tail!15973 l!2932)))))))

(assert (= (and d!2392521 c!1472320) b!8023794))

(assert (= (and d!2392521 (not c!1472320)) b!8023795))

(declare-fun m!8386374 () Bool)

(assert (=> b!8023795 m!8386374))

(assert (=> b!8023773 d!2392521))

(declare-fun d!2392525 () Bool)

(assert (=> d!2392525 (= (tail!15973 l!2932) (t!390773 l!2932))))

(assert (=> b!8023773 d!2392525))

(declare-fun d!2392531 () Bool)

(declare-fun lt!2720472 () Int)

(assert (=> d!2392531 (>= lt!2720472 0)))

(declare-fun e!4726755 () Int)

(assert (=> d!2392531 (= lt!2720472 e!4726755)))

(declare-fun c!1472326 () Bool)

(assert (=> d!2392531 (= c!1472326 ((_ is Nil!74906) (t!390773 p!1838)))))

(assert (=> d!2392531 (= (size!43683 (t!390773 p!1838)) lt!2720472)))

(declare-fun b!8023806 () Bool)

(assert (=> b!8023806 (= e!4726755 0)))

(declare-fun b!8023807 () Bool)

(assert (=> b!8023807 (= e!4726755 (+ 1 (size!43683 (t!390773 (t!390773 p!1838)))))))

(assert (= (and d!2392531 c!1472326) b!8023806))

(assert (= (and d!2392531 (not c!1472326)) b!8023807))

(declare-fun m!8386380 () Bool)

(assert (=> b!8023807 m!8386380))

(assert (=> b!8023773 d!2392531))

(declare-fun d!2392535 () Bool)

(declare-fun e!4726768 () Bool)

(assert (=> d!2392535 e!4726768))

(declare-fun res!3173100 () Bool)

(assert (=> d!2392535 (=> res!3173100 e!4726768)))

(declare-fun lt!2720476 () Bool)

(assert (=> d!2392535 (= res!3173100 (not lt!2720476))))

(declare-fun e!4726769 () Bool)

(assert (=> d!2392535 (= lt!2720476 e!4726769)))

(declare-fun res!3173098 () Bool)

(assert (=> d!2392535 (=> res!3173098 e!4726769)))

(assert (=> d!2392535 (= res!3173098 ((_ is Nil!74906) p!1838))))

(assert (=> d!2392535 (= (isPrefix!6837 p!1838 l!2932) lt!2720476)))

(declare-fun b!8023825 () Bool)

(declare-fun res!3173097 () Bool)

(declare-fun e!4726767 () Bool)

(assert (=> b!8023825 (=> (not res!3173097) (not e!4726767))))

(declare-fun head!16434 (List!75030) B!4257)

(assert (=> b!8023825 (= res!3173097 (= (head!16434 p!1838) (head!16434 l!2932)))))

(declare-fun b!8023826 () Bool)

(assert (=> b!8023826 (= e!4726767 (isPrefix!6837 (tail!15973 p!1838) (tail!15973 l!2932)))))

(declare-fun b!8023824 () Bool)

(assert (=> b!8023824 (= e!4726769 e!4726767)))

(declare-fun res!3173099 () Bool)

(assert (=> b!8023824 (=> (not res!3173099) (not e!4726767))))

(assert (=> b!8023824 (= res!3173099 (not ((_ is Nil!74906) l!2932)))))

(declare-fun b!8023827 () Bool)

(assert (=> b!8023827 (= e!4726768 (>= (size!43683 l!2932) (size!43683 p!1838)))))

(assert (= (and d!2392535 (not res!3173098)) b!8023824))

(assert (= (and b!8023824 res!3173099) b!8023825))

(assert (= (and b!8023825 res!3173097) b!8023826))

(assert (= (and d!2392535 (not res!3173100)) b!8023827))

(declare-fun m!8386384 () Bool)

(assert (=> b!8023825 m!8386384))

(declare-fun m!8386386 () Bool)

(assert (=> b!8023825 m!8386386))

(declare-fun m!8386388 () Bool)

(assert (=> b!8023826 m!8386388))

(assert (=> b!8023826 m!8386354))

(assert (=> b!8023826 m!8386388))

(assert (=> b!8023826 m!8386354))

(declare-fun m!8386390 () Bool)

(assert (=> b!8023826 m!8386390))

(assert (=> b!8023827 m!8386360))

(assert (=> b!8023827 m!8386362))

(assert (=> b!8023774 d!2392535))

(declare-fun d!2392539 () Bool)

(declare-fun lt!2720477 () Int)

(assert (=> d!2392539 (>= lt!2720477 0)))

(declare-fun e!4726770 () Int)

(assert (=> d!2392539 (= lt!2720477 e!4726770)))

(declare-fun c!1472328 () Bool)

(assert (=> d!2392539 (= c!1472328 ((_ is Nil!74906) l!2932))))

(assert (=> d!2392539 (= (size!43683 l!2932) lt!2720477)))

(declare-fun b!8023828 () Bool)

(assert (=> b!8023828 (= e!4726770 0)))

(declare-fun b!8023829 () Bool)

(assert (=> b!8023829 (= e!4726770 (+ 1 (size!43683 (t!390773 l!2932))))))

(assert (= (and d!2392539 c!1472328) b!8023828))

(assert (= (and d!2392539 (not c!1472328)) b!8023829))

(declare-fun m!8386392 () Bool)

(assert (=> b!8023829 m!8386392))

(assert (=> start!755300 d!2392539))

(declare-fun d!2392541 () Bool)

(declare-fun lt!2720478 () Int)

(assert (=> d!2392541 (>= lt!2720478 0)))

(declare-fun e!4726771 () Int)

(assert (=> d!2392541 (= lt!2720478 e!4726771)))

(declare-fun c!1472329 () Bool)

(assert (=> d!2392541 (= c!1472329 ((_ is Nil!74906) p!1838))))

(assert (=> d!2392541 (= (size!43683 p!1838) lt!2720478)))

(declare-fun b!8023830 () Bool)

(assert (=> b!8023830 (= e!4726771 0)))

(declare-fun b!8023831 () Bool)

(assert (=> b!8023831 (= e!4726771 (+ 1 (size!43683 (t!390773 p!1838))))))

(assert (= (and d!2392541 c!1472329) b!8023830))

(assert (= (and d!2392541 (not c!1472329)) b!8023831))

(assert (=> b!8023831 m!8386358))

(assert (=> start!755300 d!2392541))

(declare-fun b!8023836 () Bool)

(declare-fun e!4726774 () Bool)

(declare-fun tp!2401346 () Bool)

(assert (=> b!8023836 (= e!4726774 (and tp_is_empty!54145 tp!2401346))))

(assert (=> b!8023775 (= tp!2401339 e!4726774)))

(assert (= (and b!8023775 ((_ is Cons!74906) (t!390773 p!1838))) b!8023836))

(declare-fun b!8023837 () Bool)

(declare-fun e!4726775 () Bool)

(declare-fun tp!2401347 () Bool)

(assert (=> b!8023837 (= e!4726775 (and tp_is_empty!54145 tp!2401347))))

(assert (=> b!8023776 (= tp!2401338 e!4726775)))

(assert (= (and b!8023776 ((_ is Cons!74906) (t!390773 l!2932))) b!8023837))

(check-sat (not b!8023827) (not b!8023837) (not b!8023826) (not b!8023825) (not b!8023829) (not b!8023831) tp_is_empty!54145 (not b!8023836) (not b!8023795) (not b!8023807))
(check-sat)
