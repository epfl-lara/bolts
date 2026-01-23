; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!755316 () Bool)

(assert start!755316)

(declare-fun b!8023868 () Bool)

(declare-fun res!3173124 () Bool)

(declare-fun e!4726796 () Bool)

(assert (=> b!8023868 (=> (not res!3173124) (not e!4726796))))

(declare-datatypes ((B!4261 0))(
  ( (B!4262 (val!32520 Int)) )
))
(declare-datatypes ((List!75032 0))(
  ( (Nil!74908) (Cons!74908 (h!81356 B!4261) (t!390775 List!75032)) )
))
(declare-fun p!1838 () List!75032)

(declare-fun l!2932 () List!75032)

(declare-fun isPrefix!6839 (List!75032 List!75032) Bool)

(assert (=> b!8023868 (= res!3173124 (isPrefix!6839 p!1838 l!2932))))

(declare-fun b!8023869 () Bool)

(declare-fun e!4726797 () Bool)

(assert (=> b!8023869 (= e!4726796 e!4726797)))

(declare-fun res!3173123 () Bool)

(assert (=> b!8023869 (=> (not res!3173123) (not e!4726797))))

(declare-fun lt!2720484 () List!75032)

(declare-fun size!43685 (List!75032) Int)

(assert (=> b!8023869 (= res!3173123 (>= (size!43685 lt!2720484) (size!43685 (t!390775 p!1838))))))

(declare-fun tail!15975 (List!75032) List!75032)

(assert (=> b!8023869 (= lt!2720484 (tail!15975 l!2932))))

(declare-fun b!8023870 () Bool)

(declare-fun res!3173121 () Bool)

(assert (=> b!8023870 (=> (not res!3173121) (not e!4726796))))

(get-info :version)

(assert (=> b!8023870 (= res!3173121 ((_ is Cons!74908) p!1838))))

(declare-fun res!3173122 () Bool)

(assert (=> start!755316 (=> (not res!3173122) (not e!4726796))))

(assert (=> start!755316 (= res!3173122 (>= (size!43685 l!2932) (size!43685 p!1838)))))

(assert (=> start!755316 e!4726796))

(declare-fun e!4726798 () Bool)

(assert (=> start!755316 e!4726798))

(declare-fun e!4726799 () Bool)

(assert (=> start!755316 e!4726799))

(declare-fun b!8023871 () Bool)

(assert (=> b!8023871 (= e!4726797 (not (isPrefix!6839 (t!390775 p!1838) lt!2720484)))))

(declare-fun b!8023872 () Bool)

(declare-fun tp_is_empty!54149 () Bool)

(declare-fun tp!2401359 () Bool)

(assert (=> b!8023872 (= e!4726799 (and tp_is_empty!54149 tp!2401359))))

(declare-fun b!8023873 () Bool)

(declare-fun tp!2401358 () Bool)

(assert (=> b!8023873 (= e!4726798 (and tp_is_empty!54149 tp!2401358))))

(assert (= (and start!755316 res!3173122) b!8023868))

(assert (= (and b!8023868 res!3173124) b!8023870))

(assert (= (and b!8023870 res!3173121) b!8023869))

(assert (= (and b!8023869 res!3173123) b!8023871))

(assert (= (and start!755316 ((_ is Cons!74908) l!2932)) b!8023873))

(assert (= (and start!755316 ((_ is Cons!74908) p!1838)) b!8023872))

(declare-fun m!8386408 () Bool)

(assert (=> b!8023868 m!8386408))

(declare-fun m!8386410 () Bool)

(assert (=> b!8023869 m!8386410))

(declare-fun m!8386412 () Bool)

(assert (=> b!8023869 m!8386412))

(declare-fun m!8386414 () Bool)

(assert (=> b!8023869 m!8386414))

(declare-fun m!8386416 () Bool)

(assert (=> start!755316 m!8386416))

(declare-fun m!8386418 () Bool)

(assert (=> start!755316 m!8386418))

(declare-fun m!8386420 () Bool)

(assert (=> b!8023871 m!8386420))

(check-sat (not b!8023869) tp_is_empty!54149 (not b!8023868) (not b!8023872) (not start!755316) (not b!8023871) (not b!8023873))
(check-sat)
(get-model)

(declare-fun d!2392546 () Bool)

(declare-fun e!4726820 () Bool)

(assert (=> d!2392546 e!4726820))

(declare-fun res!3173149 () Bool)

(assert (=> d!2392546 (=> res!3173149 e!4726820)))

(declare-fun lt!2720491 () Bool)

(assert (=> d!2392546 (= res!3173149 (not lt!2720491))))

(declare-fun e!4726818 () Bool)

(assert (=> d!2392546 (= lt!2720491 e!4726818)))

(declare-fun res!3173150 () Bool)

(assert (=> d!2392546 (=> res!3173150 e!4726818)))

(assert (=> d!2392546 (= res!3173150 ((_ is Nil!74908) (t!390775 p!1838)))))

(assert (=> d!2392546 (= (isPrefix!6839 (t!390775 p!1838) lt!2720484) lt!2720491)))

(declare-fun b!8023899 () Bool)

(declare-fun res!3173151 () Bool)

(declare-fun e!4726819 () Bool)

(assert (=> b!8023899 (=> (not res!3173151) (not e!4726819))))

(declare-fun head!16436 (List!75032) B!4261)

(assert (=> b!8023899 (= res!3173151 (= (head!16436 (t!390775 p!1838)) (head!16436 lt!2720484)))))

(declare-fun b!8023898 () Bool)

(assert (=> b!8023898 (= e!4726818 e!4726819)))

(declare-fun res!3173152 () Bool)

(assert (=> b!8023898 (=> (not res!3173152) (not e!4726819))))

(assert (=> b!8023898 (= res!3173152 (not ((_ is Nil!74908) lt!2720484)))))

(declare-fun b!8023900 () Bool)

(assert (=> b!8023900 (= e!4726819 (isPrefix!6839 (tail!15975 (t!390775 p!1838)) (tail!15975 lt!2720484)))))

(declare-fun b!8023901 () Bool)

(assert (=> b!8023901 (= e!4726820 (>= (size!43685 lt!2720484) (size!43685 (t!390775 p!1838))))))

(assert (= (and d!2392546 (not res!3173150)) b!8023898))

(assert (= (and b!8023898 res!3173152) b!8023899))

(assert (= (and b!8023899 res!3173151) b!8023900))

(assert (= (and d!2392546 (not res!3173149)) b!8023901))

(declare-fun m!8386440 () Bool)

(assert (=> b!8023899 m!8386440))

(declare-fun m!8386442 () Bool)

(assert (=> b!8023899 m!8386442))

(declare-fun m!8386444 () Bool)

(assert (=> b!8023900 m!8386444))

(declare-fun m!8386446 () Bool)

(assert (=> b!8023900 m!8386446))

(assert (=> b!8023900 m!8386444))

(assert (=> b!8023900 m!8386446))

(declare-fun m!8386448 () Bool)

(assert (=> b!8023900 m!8386448))

(assert (=> b!8023901 m!8386410))

(assert (=> b!8023901 m!8386412))

(assert (=> b!8023871 d!2392546))

(declare-fun d!2392552 () Bool)

(declare-fun e!4726823 () Bool)

(assert (=> d!2392552 e!4726823))

(declare-fun res!3173153 () Bool)

(assert (=> d!2392552 (=> res!3173153 e!4726823)))

(declare-fun lt!2720492 () Bool)

(assert (=> d!2392552 (= res!3173153 (not lt!2720492))))

(declare-fun e!4726821 () Bool)

(assert (=> d!2392552 (= lt!2720492 e!4726821)))

(declare-fun res!3173154 () Bool)

(assert (=> d!2392552 (=> res!3173154 e!4726821)))

(assert (=> d!2392552 (= res!3173154 ((_ is Nil!74908) p!1838))))

(assert (=> d!2392552 (= (isPrefix!6839 p!1838 l!2932) lt!2720492)))

(declare-fun b!8023903 () Bool)

(declare-fun res!3173155 () Bool)

(declare-fun e!4726822 () Bool)

(assert (=> b!8023903 (=> (not res!3173155) (not e!4726822))))

(assert (=> b!8023903 (= res!3173155 (= (head!16436 p!1838) (head!16436 l!2932)))))

(declare-fun b!8023902 () Bool)

(assert (=> b!8023902 (= e!4726821 e!4726822)))

(declare-fun res!3173156 () Bool)

(assert (=> b!8023902 (=> (not res!3173156) (not e!4726822))))

(assert (=> b!8023902 (= res!3173156 (not ((_ is Nil!74908) l!2932)))))

(declare-fun b!8023904 () Bool)

(assert (=> b!8023904 (= e!4726822 (isPrefix!6839 (tail!15975 p!1838) (tail!15975 l!2932)))))

(declare-fun b!8023905 () Bool)

(assert (=> b!8023905 (= e!4726823 (>= (size!43685 l!2932) (size!43685 p!1838)))))

(assert (= (and d!2392552 (not res!3173154)) b!8023902))

(assert (= (and b!8023902 res!3173156) b!8023903))

(assert (= (and b!8023903 res!3173155) b!8023904))

(assert (= (and d!2392552 (not res!3173153)) b!8023905))

(declare-fun m!8386450 () Bool)

(assert (=> b!8023903 m!8386450))

(declare-fun m!8386452 () Bool)

(assert (=> b!8023903 m!8386452))

(declare-fun m!8386454 () Bool)

(assert (=> b!8023904 m!8386454))

(assert (=> b!8023904 m!8386414))

(assert (=> b!8023904 m!8386454))

(assert (=> b!8023904 m!8386414))

(declare-fun m!8386456 () Bool)

(assert (=> b!8023904 m!8386456))

(assert (=> b!8023905 m!8386416))

(assert (=> b!8023905 m!8386418))

(assert (=> b!8023868 d!2392552))

(declare-fun d!2392554 () Bool)

(declare-fun lt!2720501 () Int)

(assert (=> d!2392554 (>= lt!2720501 0)))

(declare-fun e!4726832 () Int)

(assert (=> d!2392554 (= lt!2720501 e!4726832)))

(declare-fun c!1472338 () Bool)

(assert (=> d!2392554 (= c!1472338 ((_ is Nil!74908) l!2932))))

(assert (=> d!2392554 (= (size!43685 l!2932) lt!2720501)))

(declare-fun b!8023922 () Bool)

(assert (=> b!8023922 (= e!4726832 0)))

(declare-fun b!8023923 () Bool)

(assert (=> b!8023923 (= e!4726832 (+ 1 (size!43685 (t!390775 l!2932))))))

(assert (= (and d!2392554 c!1472338) b!8023922))

(assert (= (and d!2392554 (not c!1472338)) b!8023923))

(declare-fun m!8386464 () Bool)

(assert (=> b!8023923 m!8386464))

(assert (=> start!755316 d!2392554))

(declare-fun d!2392564 () Bool)

(declare-fun lt!2720502 () Int)

(assert (=> d!2392564 (>= lt!2720502 0)))

(declare-fun e!4726835 () Int)

(assert (=> d!2392564 (= lt!2720502 e!4726835)))

(declare-fun c!1472339 () Bool)

(assert (=> d!2392564 (= c!1472339 ((_ is Nil!74908) p!1838))))

(assert (=> d!2392564 (= (size!43685 p!1838) lt!2720502)))

(declare-fun b!8023928 () Bool)

(assert (=> b!8023928 (= e!4726835 0)))

(declare-fun b!8023929 () Bool)

(assert (=> b!8023929 (= e!4726835 (+ 1 (size!43685 (t!390775 p!1838))))))

(assert (= (and d!2392564 c!1472339) b!8023928))

(assert (= (and d!2392564 (not c!1472339)) b!8023929))

(assert (=> b!8023929 m!8386412))

(assert (=> start!755316 d!2392564))

(declare-fun d!2392566 () Bool)

(declare-fun lt!2720503 () Int)

(assert (=> d!2392566 (>= lt!2720503 0)))

(declare-fun e!4726836 () Int)

(assert (=> d!2392566 (= lt!2720503 e!4726836)))

(declare-fun c!1472340 () Bool)

(assert (=> d!2392566 (= c!1472340 ((_ is Nil!74908) lt!2720484))))

(assert (=> d!2392566 (= (size!43685 lt!2720484) lt!2720503)))

(declare-fun b!8023930 () Bool)

(assert (=> b!8023930 (= e!4726836 0)))

(declare-fun b!8023931 () Bool)

(assert (=> b!8023931 (= e!4726836 (+ 1 (size!43685 (t!390775 lt!2720484))))))

(assert (= (and d!2392566 c!1472340) b!8023930))

(assert (= (and d!2392566 (not c!1472340)) b!8023931))

(declare-fun m!8386466 () Bool)

(assert (=> b!8023931 m!8386466))

(assert (=> b!8023869 d!2392566))

(declare-fun d!2392568 () Bool)

(declare-fun lt!2720504 () Int)

(assert (=> d!2392568 (>= lt!2720504 0)))

(declare-fun e!4726838 () Int)

(assert (=> d!2392568 (= lt!2720504 e!4726838)))

(declare-fun c!1472341 () Bool)

(assert (=> d!2392568 (= c!1472341 ((_ is Nil!74908) (t!390775 p!1838)))))

(assert (=> d!2392568 (= (size!43685 (t!390775 p!1838)) lt!2720504)))

(declare-fun b!8023933 () Bool)

(assert (=> b!8023933 (= e!4726838 0)))

(declare-fun b!8023934 () Bool)

(assert (=> b!8023934 (= e!4726838 (+ 1 (size!43685 (t!390775 (t!390775 p!1838)))))))

(assert (= (and d!2392568 c!1472341) b!8023933))

(assert (= (and d!2392568 (not c!1472341)) b!8023934))

(declare-fun m!8386468 () Bool)

(assert (=> b!8023934 m!8386468))

(assert (=> b!8023869 d!2392568))

(declare-fun d!2392570 () Bool)

(assert (=> d!2392570 (= (tail!15975 l!2932) (t!390775 l!2932))))

(assert (=> b!8023869 d!2392570))

(declare-fun b!8023940 () Bool)

(declare-fun e!4726842 () Bool)

(declare-fun tp!2401366 () Bool)

(assert (=> b!8023940 (= e!4726842 (and tp_is_empty!54149 tp!2401366))))

(assert (=> b!8023872 (= tp!2401359 e!4726842)))

(assert (= (and b!8023872 ((_ is Cons!74908) (t!390775 p!1838))) b!8023940))

(declare-fun b!8023941 () Bool)

(declare-fun e!4726843 () Bool)

(declare-fun tp!2401367 () Bool)

(assert (=> b!8023941 (= e!4726843 (and tp_is_empty!54149 tp!2401367))))

(assert (=> b!8023873 (= tp!2401358 e!4726843)))

(assert (= (and b!8023873 ((_ is Cons!74908) (t!390775 l!2932))) b!8023941))

(check-sat (not b!8023903) (not b!8023923) (not b!8023905) (not b!8023929) (not b!8023904) (not b!8023941) (not b!8023899) (not b!8023934) (not b!8023931) (not b!8023940) (not b!8023901) tp_is_empty!54149 (not b!8023900))
(check-sat)
(get-model)

(declare-fun d!2392572 () Bool)

(assert (=> d!2392572 (= (head!16436 (t!390775 p!1838)) (h!81356 (t!390775 p!1838)))))

(assert (=> b!8023899 d!2392572))

(declare-fun d!2392574 () Bool)

(assert (=> d!2392574 (= (head!16436 lt!2720484) (h!81356 lt!2720484))))

(assert (=> b!8023899 d!2392574))

(declare-fun d!2392576 () Bool)

(declare-fun lt!2720505 () Int)

(assert (=> d!2392576 (>= lt!2720505 0)))

(declare-fun e!4726844 () Int)

(assert (=> d!2392576 (= lt!2720505 e!4726844)))

(declare-fun c!1472342 () Bool)

(assert (=> d!2392576 (= c!1472342 ((_ is Nil!74908) (t!390775 (t!390775 p!1838))))))

(assert (=> d!2392576 (= (size!43685 (t!390775 (t!390775 p!1838))) lt!2720505)))

(declare-fun b!8023942 () Bool)

(assert (=> b!8023942 (= e!4726844 0)))

(declare-fun b!8023943 () Bool)

(assert (=> b!8023943 (= e!4726844 (+ 1 (size!43685 (t!390775 (t!390775 (t!390775 p!1838))))))))

(assert (= (and d!2392576 c!1472342) b!8023942))

(assert (= (and d!2392576 (not c!1472342)) b!8023943))

(declare-fun m!8386470 () Bool)

(assert (=> b!8023943 m!8386470))

(assert (=> b!8023934 d!2392576))

(declare-fun d!2392578 () Bool)

(declare-fun e!4726847 () Bool)

(assert (=> d!2392578 e!4726847))

(declare-fun res!3173157 () Bool)

(assert (=> d!2392578 (=> res!3173157 e!4726847)))

(declare-fun lt!2720506 () Bool)

(assert (=> d!2392578 (= res!3173157 (not lt!2720506))))

(declare-fun e!4726845 () Bool)

(assert (=> d!2392578 (= lt!2720506 e!4726845)))

(declare-fun res!3173158 () Bool)

(assert (=> d!2392578 (=> res!3173158 e!4726845)))

(assert (=> d!2392578 (= res!3173158 ((_ is Nil!74908) (tail!15975 (t!390775 p!1838))))))

(assert (=> d!2392578 (= (isPrefix!6839 (tail!15975 (t!390775 p!1838)) (tail!15975 lt!2720484)) lt!2720506)))

(declare-fun b!8023945 () Bool)

(declare-fun res!3173159 () Bool)

(declare-fun e!4726846 () Bool)

(assert (=> b!8023945 (=> (not res!3173159) (not e!4726846))))

(assert (=> b!8023945 (= res!3173159 (= (head!16436 (tail!15975 (t!390775 p!1838))) (head!16436 (tail!15975 lt!2720484))))))

(declare-fun b!8023944 () Bool)

(assert (=> b!8023944 (= e!4726845 e!4726846)))

(declare-fun res!3173160 () Bool)

(assert (=> b!8023944 (=> (not res!3173160) (not e!4726846))))

(assert (=> b!8023944 (= res!3173160 (not ((_ is Nil!74908) (tail!15975 lt!2720484))))))

(declare-fun b!8023946 () Bool)

(assert (=> b!8023946 (= e!4726846 (isPrefix!6839 (tail!15975 (tail!15975 (t!390775 p!1838))) (tail!15975 (tail!15975 lt!2720484))))))

(declare-fun b!8023947 () Bool)

(assert (=> b!8023947 (= e!4726847 (>= (size!43685 (tail!15975 lt!2720484)) (size!43685 (tail!15975 (t!390775 p!1838)))))))

(assert (= (and d!2392578 (not res!3173158)) b!8023944))

(assert (= (and b!8023944 res!3173160) b!8023945))

(assert (= (and b!8023945 res!3173159) b!8023946))

(assert (= (and d!2392578 (not res!3173157)) b!8023947))

(assert (=> b!8023945 m!8386444))

(declare-fun m!8386472 () Bool)

(assert (=> b!8023945 m!8386472))

(assert (=> b!8023945 m!8386446))

(declare-fun m!8386474 () Bool)

(assert (=> b!8023945 m!8386474))

(assert (=> b!8023946 m!8386444))

(declare-fun m!8386476 () Bool)

(assert (=> b!8023946 m!8386476))

(assert (=> b!8023946 m!8386446))

(declare-fun m!8386478 () Bool)

(assert (=> b!8023946 m!8386478))

(assert (=> b!8023946 m!8386476))

(assert (=> b!8023946 m!8386478))

(declare-fun m!8386480 () Bool)

(assert (=> b!8023946 m!8386480))

(assert (=> b!8023947 m!8386446))

(declare-fun m!8386482 () Bool)

(assert (=> b!8023947 m!8386482))

(assert (=> b!8023947 m!8386444))

(declare-fun m!8386484 () Bool)

(assert (=> b!8023947 m!8386484))

(assert (=> b!8023900 d!2392578))

(declare-fun d!2392580 () Bool)

(assert (=> d!2392580 (= (tail!15975 (t!390775 p!1838)) (t!390775 (t!390775 p!1838)))))

(assert (=> b!8023900 d!2392580))

(declare-fun d!2392582 () Bool)

(assert (=> d!2392582 (= (tail!15975 lt!2720484) (t!390775 lt!2720484))))

(assert (=> b!8023900 d!2392582))

(assert (=> b!8023901 d!2392566))

(assert (=> b!8023901 d!2392568))

(declare-fun d!2392584 () Bool)

(declare-fun lt!2720507 () Int)

(assert (=> d!2392584 (>= lt!2720507 0)))

(declare-fun e!4726848 () Int)

(assert (=> d!2392584 (= lt!2720507 e!4726848)))

(declare-fun c!1472343 () Bool)

(assert (=> d!2392584 (= c!1472343 ((_ is Nil!74908) (t!390775 l!2932)))))

(assert (=> d!2392584 (= (size!43685 (t!390775 l!2932)) lt!2720507)))

(declare-fun b!8023948 () Bool)

(assert (=> b!8023948 (= e!4726848 0)))

(declare-fun b!8023949 () Bool)

(assert (=> b!8023949 (= e!4726848 (+ 1 (size!43685 (t!390775 (t!390775 l!2932)))))))

(assert (= (and d!2392584 c!1472343) b!8023948))

(assert (= (and d!2392584 (not c!1472343)) b!8023949))

(declare-fun m!8386486 () Bool)

(assert (=> b!8023949 m!8386486))

(assert (=> b!8023923 d!2392584))

(declare-fun d!2392586 () Bool)

(assert (=> d!2392586 (= (head!16436 p!1838) (h!81356 p!1838))))

(assert (=> b!8023903 d!2392586))

(declare-fun d!2392588 () Bool)

(assert (=> d!2392588 (= (head!16436 l!2932) (h!81356 l!2932))))

(assert (=> b!8023903 d!2392588))

(assert (=> b!8023929 d!2392568))

(declare-fun d!2392590 () Bool)

(declare-fun lt!2720508 () Int)

(assert (=> d!2392590 (>= lt!2720508 0)))

(declare-fun e!4726849 () Int)

(assert (=> d!2392590 (= lt!2720508 e!4726849)))

(declare-fun c!1472344 () Bool)

(assert (=> d!2392590 (= c!1472344 ((_ is Nil!74908) (t!390775 lt!2720484)))))

(assert (=> d!2392590 (= (size!43685 (t!390775 lt!2720484)) lt!2720508)))

(declare-fun b!8023950 () Bool)

(assert (=> b!8023950 (= e!4726849 0)))

(declare-fun b!8023951 () Bool)

(assert (=> b!8023951 (= e!4726849 (+ 1 (size!43685 (t!390775 (t!390775 lt!2720484)))))))

(assert (= (and d!2392590 c!1472344) b!8023950))

(assert (= (and d!2392590 (not c!1472344)) b!8023951))

(declare-fun m!8386488 () Bool)

(assert (=> b!8023951 m!8386488))

(assert (=> b!8023931 d!2392590))

(declare-fun d!2392592 () Bool)

(declare-fun e!4726852 () Bool)

(assert (=> d!2392592 e!4726852))

(declare-fun res!3173161 () Bool)

(assert (=> d!2392592 (=> res!3173161 e!4726852)))

(declare-fun lt!2720509 () Bool)

(assert (=> d!2392592 (= res!3173161 (not lt!2720509))))

(declare-fun e!4726850 () Bool)

(assert (=> d!2392592 (= lt!2720509 e!4726850)))

(declare-fun res!3173162 () Bool)

(assert (=> d!2392592 (=> res!3173162 e!4726850)))

(assert (=> d!2392592 (= res!3173162 ((_ is Nil!74908) (tail!15975 p!1838)))))

(assert (=> d!2392592 (= (isPrefix!6839 (tail!15975 p!1838) (tail!15975 l!2932)) lt!2720509)))

(declare-fun b!8023953 () Bool)

(declare-fun res!3173163 () Bool)

(declare-fun e!4726851 () Bool)

(assert (=> b!8023953 (=> (not res!3173163) (not e!4726851))))

(assert (=> b!8023953 (= res!3173163 (= (head!16436 (tail!15975 p!1838)) (head!16436 (tail!15975 l!2932))))))

(declare-fun b!8023952 () Bool)

(assert (=> b!8023952 (= e!4726850 e!4726851)))

(declare-fun res!3173164 () Bool)

(assert (=> b!8023952 (=> (not res!3173164) (not e!4726851))))

(assert (=> b!8023952 (= res!3173164 (not ((_ is Nil!74908) (tail!15975 l!2932))))))

(declare-fun b!8023954 () Bool)

(assert (=> b!8023954 (= e!4726851 (isPrefix!6839 (tail!15975 (tail!15975 p!1838)) (tail!15975 (tail!15975 l!2932))))))

(declare-fun b!8023955 () Bool)

(assert (=> b!8023955 (= e!4726852 (>= (size!43685 (tail!15975 l!2932)) (size!43685 (tail!15975 p!1838))))))

(assert (= (and d!2392592 (not res!3173162)) b!8023952))

(assert (= (and b!8023952 res!3173164) b!8023953))

(assert (= (and b!8023953 res!3173163) b!8023954))

(assert (= (and d!2392592 (not res!3173161)) b!8023955))

(assert (=> b!8023953 m!8386454))

(declare-fun m!8386490 () Bool)

(assert (=> b!8023953 m!8386490))

(assert (=> b!8023953 m!8386414))

(declare-fun m!8386492 () Bool)

(assert (=> b!8023953 m!8386492))

(assert (=> b!8023954 m!8386454))

(declare-fun m!8386494 () Bool)

(assert (=> b!8023954 m!8386494))

(assert (=> b!8023954 m!8386414))

(declare-fun m!8386496 () Bool)

(assert (=> b!8023954 m!8386496))

(assert (=> b!8023954 m!8386494))

(assert (=> b!8023954 m!8386496))

(declare-fun m!8386498 () Bool)

(assert (=> b!8023954 m!8386498))

(assert (=> b!8023955 m!8386414))

(declare-fun m!8386500 () Bool)

(assert (=> b!8023955 m!8386500))

(assert (=> b!8023955 m!8386454))

(declare-fun m!8386502 () Bool)

(assert (=> b!8023955 m!8386502))

(assert (=> b!8023904 d!2392592))

(declare-fun d!2392594 () Bool)

(assert (=> d!2392594 (= (tail!15975 p!1838) (t!390775 p!1838))))

(assert (=> b!8023904 d!2392594))

(assert (=> b!8023904 d!2392570))

(assert (=> b!8023905 d!2392554))

(assert (=> b!8023905 d!2392564))

(declare-fun b!8023956 () Bool)

(declare-fun e!4726853 () Bool)

(declare-fun tp!2401368 () Bool)

(assert (=> b!8023956 (= e!4726853 (and tp_is_empty!54149 tp!2401368))))

(assert (=> b!8023941 (= tp!2401367 e!4726853)))

(assert (= (and b!8023941 ((_ is Cons!74908) (t!390775 (t!390775 l!2932)))) b!8023956))

(declare-fun b!8023957 () Bool)

(declare-fun e!4726854 () Bool)

(declare-fun tp!2401369 () Bool)

(assert (=> b!8023957 (= e!4726854 (and tp_is_empty!54149 tp!2401369))))

(assert (=> b!8023940 (= tp!2401366 e!4726854)))

(assert (= (and b!8023940 ((_ is Cons!74908) (t!390775 (t!390775 p!1838)))) b!8023957))

(check-sat (not b!8023954) (not b!8023955) tp_is_empty!54149 (not b!8023943) (not b!8023949) (not b!8023953) (not b!8023947) (not b!8023945) (not b!8023956) (not b!8023946) (not b!8023957) (not b!8023951))
(check-sat)
