; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!521960 () Bool)

(assert start!521960)

(declare-fun b!4952872 () Bool)

(declare-fun res!2112983 () Bool)

(declare-fun e!3094472 () Bool)

(assert (=> b!4952872 (=> (not res!2112983) (not e!3094472))))

(declare-fun i!792 () Int)

(declare-datatypes ((B!3033 0))(
  ( (B!3034 (val!22986 Int)) )
))
(declare-datatypes ((List!57174 0))(
  ( (Nil!57050) (Cons!57050 (h!63498 B!3033) (t!367740 List!57174)) )
))
(declare-fun l!2976 () List!57174)

(declare-fun size!37878 (List!57174) Int)

(assert (=> b!4952872 (= res!2112983 (< i!792 (size!37878 l!2976)))))

(declare-fun b!4952873 () Bool)

(declare-fun res!2112981 () Bool)

(assert (=> b!4952873 (=> (not res!2112981) (not e!3094472))))

(get-info :version)

(assert (=> b!4952873 (= res!2112981 (and (not ((_ is Nil!57050) l!2976)) (not (= i!792 0)) (>= (- i!792 1) 0)))))

(declare-fun b!4952874 () Bool)

(declare-fun e!3094473 () Bool)

(declare-fun tp_is_empty!36251 () Bool)

(declare-fun tp!1388464 () Bool)

(assert (=> b!4952874 (= e!3094473 (and tp_is_empty!36251 tp!1388464))))

(declare-fun b!4952875 () Bool)

(declare-fun head!10631 (List!57174) B!3033)

(declare-fun drop!2312 (List!57174 Int) List!57174)

(declare-fun apply!13870 (List!57174 Int) B!3033)

(assert (=> b!4952875 (= e!3094472 (not (= (head!10631 (drop!2312 l!2976 i!792)) (apply!13870 l!2976 i!792))))))

(assert (=> b!4952875 (= (head!10631 (drop!2312 (t!367740 l!2976) (- i!792 1))) (apply!13870 (t!367740 l!2976) (- i!792 1)))))

(declare-datatypes ((Unit!147947 0))(
  ( (Unit!147948) )
))
(declare-fun lt!2044203 () Unit!147947)

(declare-fun lemmaDropApply!1362 (List!57174 Int) Unit!147947)

(assert (=> b!4952875 (= lt!2044203 (lemmaDropApply!1362 (t!367740 l!2976) (- i!792 1)))))

(declare-fun res!2112982 () Bool)

(assert (=> start!521960 (=> (not res!2112982) (not e!3094472))))

(assert (=> start!521960 (= res!2112982 (>= i!792 0))))

(assert (=> start!521960 e!3094472))

(assert (=> start!521960 true))

(assert (=> start!521960 e!3094473))

(declare-fun b!4952876 () Bool)

(declare-fun res!2112984 () Bool)

(assert (=> b!4952876 (=> (not res!2112984) (not e!3094472))))

(assert (=> b!4952876 (= res!2112984 (< (- i!792 1) (size!37878 (t!367740 l!2976))))))

(assert (= (and start!521960 res!2112982) b!4952872))

(assert (= (and b!4952872 res!2112983) b!4952873))

(assert (= (and b!4952873 res!2112981) b!4952876))

(assert (= (and b!4952876 res!2112984) b!4952875))

(assert (= (and start!521960 ((_ is Cons!57050) l!2976)) b!4952874))

(declare-fun m!5977682 () Bool)

(assert (=> b!4952872 m!5977682))

(declare-fun m!5977684 () Bool)

(assert (=> b!4952875 m!5977684))

(declare-fun m!5977686 () Bool)

(assert (=> b!4952875 m!5977686))

(declare-fun m!5977688 () Bool)

(assert (=> b!4952875 m!5977688))

(declare-fun m!5977690 () Bool)

(assert (=> b!4952875 m!5977690))

(declare-fun m!5977692 () Bool)

(assert (=> b!4952875 m!5977692))

(declare-fun m!5977694 () Bool)

(assert (=> b!4952875 m!5977694))

(assert (=> b!4952875 m!5977688))

(declare-fun m!5977696 () Bool)

(assert (=> b!4952875 m!5977696))

(assert (=> b!4952875 m!5977692))

(declare-fun m!5977698 () Bool)

(assert (=> b!4952876 m!5977698))

(check-sat (not b!4952872) tp_is_empty!36251 (not b!4952875) (not b!4952874) (not b!4952876))
(check-sat)
(get-model)

(declare-fun d!1595056 () Bool)

(assert (=> d!1595056 (= (head!10631 (drop!2312 (t!367740 l!2976) (- i!792 1))) (apply!13870 (t!367740 l!2976) (- i!792 1)))))

(declare-fun lt!2044209 () Unit!147947)

(declare-fun choose!36610 (List!57174 Int) Unit!147947)

(assert (=> d!1595056 (= lt!2044209 (choose!36610 (t!367740 l!2976) (- i!792 1)))))

(declare-fun e!3094479 () Bool)

(assert (=> d!1595056 e!3094479))

(declare-fun res!2112990 () Bool)

(assert (=> d!1595056 (=> (not res!2112990) (not e!3094479))))

(assert (=> d!1595056 (= res!2112990 (>= (- i!792 1) 0))))

(assert (=> d!1595056 (= (lemmaDropApply!1362 (t!367740 l!2976) (- i!792 1)) lt!2044209)))

(declare-fun b!4952882 () Bool)

(assert (=> b!4952882 (= e!3094479 (< (- i!792 1) (size!37878 (t!367740 l!2976))))))

(assert (= (and d!1595056 res!2112990) b!4952882))

(assert (=> d!1595056 m!5977688))

(assert (=> d!1595056 m!5977688))

(assert (=> d!1595056 m!5977690))

(assert (=> d!1595056 m!5977696))

(declare-fun m!5977702 () Bool)

(assert (=> d!1595056 m!5977702))

(assert (=> b!4952882 m!5977698))

(assert (=> b!4952875 d!1595056))

(declare-fun d!1595060 () Bool)

(declare-fun lt!2044215 () B!3033)

(declare-fun contains!19509 (List!57174 B!3033) Bool)

(assert (=> d!1595060 (contains!19509 (t!367740 l!2976) lt!2044215)))

(declare-fun e!3094490 () B!3033)

(assert (=> d!1595060 (= lt!2044215 e!3094490)))

(declare-fun c!845846 () Bool)

(assert (=> d!1595060 (= c!845846 (= (- i!792 1) 0))))

(declare-fun e!3094491 () Bool)

(assert (=> d!1595060 e!3094491))

(declare-fun res!2112996 () Bool)

(assert (=> d!1595060 (=> (not res!2112996) (not e!3094491))))

(assert (=> d!1595060 (= res!2112996 (<= 0 (- i!792 1)))))

(assert (=> d!1595060 (= (apply!13870 (t!367740 l!2976) (- i!792 1)) lt!2044215)))

(declare-fun b!4952898 () Bool)

(assert (=> b!4952898 (= e!3094491 (< (- i!792 1) (size!37878 (t!367740 l!2976))))))

(declare-fun b!4952899 () Bool)

(assert (=> b!4952899 (= e!3094490 (head!10631 (t!367740 l!2976)))))

(declare-fun b!4952900 () Bool)

(declare-fun tail!9763 (List!57174) List!57174)

(assert (=> b!4952900 (= e!3094490 (apply!13870 (tail!9763 (t!367740 l!2976)) (- (- i!792 1) 1)))))

(assert (= (and d!1595060 res!2112996) b!4952898))

(assert (= (and d!1595060 c!845846) b!4952899))

(assert (= (and d!1595060 (not c!845846)) b!4952900))

(declare-fun m!5977704 () Bool)

(assert (=> d!1595060 m!5977704))

(assert (=> b!4952898 m!5977698))

(declare-fun m!5977708 () Bool)

(assert (=> b!4952899 m!5977708))

(declare-fun m!5977710 () Bool)

(assert (=> b!4952900 m!5977710))

(assert (=> b!4952900 m!5977710))

(declare-fun m!5977716 () Bool)

(assert (=> b!4952900 m!5977716))

(assert (=> b!4952875 d!1595060))

(declare-fun d!1595062 () Bool)

(declare-fun lt!2044216 () B!3033)

(assert (=> d!1595062 (contains!19509 l!2976 lt!2044216)))

(declare-fun e!3094492 () B!3033)

(assert (=> d!1595062 (= lt!2044216 e!3094492)))

(declare-fun c!845847 () Bool)

(assert (=> d!1595062 (= c!845847 (= i!792 0))))

(declare-fun e!3094493 () Bool)

(assert (=> d!1595062 e!3094493))

(declare-fun res!2112997 () Bool)

(assert (=> d!1595062 (=> (not res!2112997) (not e!3094493))))

(assert (=> d!1595062 (= res!2112997 (<= 0 i!792))))

(assert (=> d!1595062 (= (apply!13870 l!2976 i!792) lt!2044216)))

(declare-fun b!4952901 () Bool)

(assert (=> b!4952901 (= e!3094493 (< i!792 (size!37878 l!2976)))))

(declare-fun b!4952902 () Bool)

(assert (=> b!4952902 (= e!3094492 (head!10631 l!2976))))

(declare-fun b!4952903 () Bool)

(assert (=> b!4952903 (= e!3094492 (apply!13870 (tail!9763 l!2976) (- i!792 1)))))

(assert (= (and d!1595062 res!2112997) b!4952901))

(assert (= (and d!1595062 c!845847) b!4952902))

(assert (= (and d!1595062 (not c!845847)) b!4952903))

(declare-fun m!5977720 () Bool)

(assert (=> d!1595062 m!5977720))

(assert (=> b!4952901 m!5977682))

(declare-fun m!5977722 () Bool)

(assert (=> b!4952902 m!5977722))

(declare-fun m!5977724 () Bool)

(assert (=> b!4952903 m!5977724))

(assert (=> b!4952903 m!5977724))

(declare-fun m!5977726 () Bool)

(assert (=> b!4952903 m!5977726))

(assert (=> b!4952875 d!1595062))

(declare-fun d!1595066 () Bool)

(assert (=> d!1595066 (= (head!10631 (drop!2312 (t!367740 l!2976) (- i!792 1))) (h!63498 (drop!2312 (t!367740 l!2976) (- i!792 1))))))

(assert (=> b!4952875 d!1595066))

(declare-fun bm!345849 () Bool)

(declare-fun call!345854 () Int)

(assert (=> bm!345849 (= call!345854 (size!37878 (t!367740 l!2976)))))

(declare-fun b!4952943 () Bool)

(declare-fun e!3094519 () List!57174)

(assert (=> b!4952943 (= e!3094519 Nil!57050)))

(declare-fun b!4952945 () Bool)

(declare-fun e!3094518 () Int)

(assert (=> b!4952945 (= e!3094518 call!345854)))

(declare-fun b!4952946 () Bool)

(declare-fun e!3094520 () Int)

(assert (=> b!4952946 (= e!3094520 (- call!345854 (- i!792 1)))))

(declare-fun b!4952947 () Bool)

(declare-fun e!3094517 () List!57174)

(assert (=> b!4952947 (= e!3094517 (drop!2312 (t!367740 (t!367740 l!2976)) (- (- i!792 1) 1)))))

(declare-fun b!4952948 () Bool)

(assert (=> b!4952948 (= e!3094520 0)))

(declare-fun b!4952944 () Bool)

(assert (=> b!4952944 (= e!3094517 (t!367740 l!2976))))

(declare-fun d!1595070 () Bool)

(declare-fun e!3094516 () Bool)

(assert (=> d!1595070 e!3094516))

(declare-fun res!2113003 () Bool)

(assert (=> d!1595070 (=> (not res!2113003) (not e!3094516))))

(declare-fun lt!2044222 () List!57174)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10174 (List!57174) (InoxSet B!3033))

(assert (=> d!1595070 (= res!2113003 (= ((_ map implies) (content!10174 lt!2044222) (content!10174 (t!367740 l!2976))) ((as const (InoxSet B!3033)) true)))))

(assert (=> d!1595070 (= lt!2044222 e!3094519)))

(declare-fun c!845867 () Bool)

(assert (=> d!1595070 (= c!845867 ((_ is Nil!57050) (t!367740 l!2976)))))

(assert (=> d!1595070 (= (drop!2312 (t!367740 l!2976) (- i!792 1)) lt!2044222)))

(declare-fun b!4952949 () Bool)

(assert (=> b!4952949 (= e!3094516 (= (size!37878 lt!2044222) e!3094518))))

(declare-fun c!845865 () Bool)

(assert (=> b!4952949 (= c!845865 (<= (- i!792 1) 0))))

(declare-fun b!4952950 () Bool)

(assert (=> b!4952950 (= e!3094518 e!3094520)))

(declare-fun c!845868 () Bool)

(assert (=> b!4952950 (= c!845868 (>= (- i!792 1) call!345854))))

(declare-fun b!4952951 () Bool)

(assert (=> b!4952951 (= e!3094519 e!3094517)))

(declare-fun c!845866 () Bool)

(assert (=> b!4952951 (= c!845866 (<= (- i!792 1) 0))))

(assert (= (and d!1595070 c!845867) b!4952943))

(assert (= (and d!1595070 (not c!845867)) b!4952951))

(assert (= (and b!4952951 c!845866) b!4952944))

(assert (= (and b!4952951 (not c!845866)) b!4952947))

(assert (= (and d!1595070 res!2113003) b!4952949))

(assert (= (and b!4952949 c!845865) b!4952945))

(assert (= (and b!4952949 (not c!845865)) b!4952950))

(assert (= (and b!4952950 c!845868) b!4952948))

(assert (= (and b!4952950 (not c!845868)) b!4952946))

(assert (= (or b!4952945 b!4952950 b!4952946) bm!345849))

(assert (=> bm!345849 m!5977698))

(declare-fun m!5977736 () Bool)

(assert (=> b!4952947 m!5977736))

(declare-fun m!5977738 () Bool)

(assert (=> d!1595070 m!5977738))

(declare-fun m!5977740 () Bool)

(assert (=> d!1595070 m!5977740))

(declare-fun m!5977742 () Bool)

(assert (=> b!4952949 m!5977742))

(assert (=> b!4952875 d!1595070))

(declare-fun bm!345850 () Bool)

(declare-fun call!345855 () Int)

(assert (=> bm!345850 (= call!345855 (size!37878 l!2976))))

(declare-fun b!4952952 () Bool)

(declare-fun e!3094524 () List!57174)

(assert (=> b!4952952 (= e!3094524 Nil!57050)))

(declare-fun b!4952954 () Bool)

(declare-fun e!3094523 () Int)

(assert (=> b!4952954 (= e!3094523 call!345855)))

(declare-fun b!4952955 () Bool)

(declare-fun e!3094525 () Int)

(assert (=> b!4952955 (= e!3094525 (- call!345855 i!792))))

(declare-fun b!4952956 () Bool)

(declare-fun e!3094522 () List!57174)

(assert (=> b!4952956 (= e!3094522 (drop!2312 (t!367740 l!2976) (- i!792 1)))))

(declare-fun b!4952957 () Bool)

(assert (=> b!4952957 (= e!3094525 0)))

(declare-fun b!4952953 () Bool)

(assert (=> b!4952953 (= e!3094522 l!2976)))

(declare-fun d!1595074 () Bool)

(declare-fun e!3094521 () Bool)

(assert (=> d!1595074 e!3094521))

(declare-fun res!2113004 () Bool)

(assert (=> d!1595074 (=> (not res!2113004) (not e!3094521))))

(declare-fun lt!2044223 () List!57174)

(assert (=> d!1595074 (= res!2113004 (= ((_ map implies) (content!10174 lt!2044223) (content!10174 l!2976)) ((as const (InoxSet B!3033)) true)))))

(assert (=> d!1595074 (= lt!2044223 e!3094524)))

(declare-fun c!845871 () Bool)

(assert (=> d!1595074 (= c!845871 ((_ is Nil!57050) l!2976))))

(assert (=> d!1595074 (= (drop!2312 l!2976 i!792) lt!2044223)))

(declare-fun b!4952958 () Bool)

(assert (=> b!4952958 (= e!3094521 (= (size!37878 lt!2044223) e!3094523))))

(declare-fun c!845869 () Bool)

(assert (=> b!4952958 (= c!845869 (<= i!792 0))))

(declare-fun b!4952959 () Bool)

(assert (=> b!4952959 (= e!3094523 e!3094525)))

(declare-fun c!845872 () Bool)

(assert (=> b!4952959 (= c!845872 (>= i!792 call!345855))))

(declare-fun b!4952960 () Bool)

(assert (=> b!4952960 (= e!3094524 e!3094522)))

(declare-fun c!845870 () Bool)

(assert (=> b!4952960 (= c!845870 (<= i!792 0))))

(assert (= (and d!1595074 c!845871) b!4952952))

(assert (= (and d!1595074 (not c!845871)) b!4952960))

(assert (= (and b!4952960 c!845870) b!4952953))

(assert (= (and b!4952960 (not c!845870)) b!4952956))

(assert (= (and d!1595074 res!2113004) b!4952958))

(assert (= (and b!4952958 c!845869) b!4952954))

(assert (= (and b!4952958 (not c!845869)) b!4952959))

(assert (= (and b!4952959 c!845872) b!4952957))

(assert (= (and b!4952959 (not c!845872)) b!4952955))

(assert (= (or b!4952954 b!4952959 b!4952955) bm!345850))

(assert (=> bm!345850 m!5977682))

(assert (=> b!4952956 m!5977688))

(declare-fun m!5977744 () Bool)

(assert (=> d!1595074 m!5977744))

(declare-fun m!5977746 () Bool)

(assert (=> d!1595074 m!5977746))

(declare-fun m!5977748 () Bool)

(assert (=> b!4952958 m!5977748))

(assert (=> b!4952875 d!1595074))

(declare-fun d!1595076 () Bool)

(assert (=> d!1595076 (= (head!10631 (drop!2312 l!2976 i!792)) (h!63498 (drop!2312 l!2976 i!792)))))

(assert (=> b!4952875 d!1595076))

(declare-fun d!1595078 () Bool)

(declare-fun lt!2044228 () Int)

(assert (=> d!1595078 (>= lt!2044228 0)))

(declare-fun e!3094538 () Int)

(assert (=> d!1595078 (= lt!2044228 e!3094538)))

(declare-fun c!845883 () Bool)

(assert (=> d!1595078 (= c!845883 ((_ is Nil!57050) (t!367740 l!2976)))))

(assert (=> d!1595078 (= (size!37878 (t!367740 l!2976)) lt!2044228)))

(declare-fun b!4952983 () Bool)

(assert (=> b!4952983 (= e!3094538 0)))

(declare-fun b!4952984 () Bool)

(assert (=> b!4952984 (= e!3094538 (+ 1 (size!37878 (t!367740 (t!367740 l!2976)))))))

(assert (= (and d!1595078 c!845883) b!4952983))

(assert (= (and d!1595078 (not c!845883)) b!4952984))

(declare-fun m!5977764 () Bool)

(assert (=> b!4952984 m!5977764))

(assert (=> b!4952876 d!1595078))

(declare-fun d!1595086 () Bool)

(declare-fun lt!2044229 () Int)

(assert (=> d!1595086 (>= lt!2044229 0)))

(declare-fun e!3094539 () Int)

(assert (=> d!1595086 (= lt!2044229 e!3094539)))

(declare-fun c!845884 () Bool)

(assert (=> d!1595086 (= c!845884 ((_ is Nil!57050) l!2976))))

(assert (=> d!1595086 (= (size!37878 l!2976) lt!2044229)))

(declare-fun b!4952985 () Bool)

(assert (=> b!4952985 (= e!3094539 0)))

(declare-fun b!4952986 () Bool)

(assert (=> b!4952986 (= e!3094539 (+ 1 (size!37878 (t!367740 l!2976))))))

(assert (= (and d!1595086 c!845884) b!4952985))

(assert (= (and d!1595086 (not c!845884)) b!4952986))

(assert (=> b!4952986 m!5977698))

(assert (=> b!4952872 d!1595086))

(declare-fun b!4952991 () Bool)

(declare-fun e!3094542 () Bool)

(declare-fun tp!1388467 () Bool)

(assert (=> b!4952991 (= e!3094542 (and tp_is_empty!36251 tp!1388467))))

(assert (=> b!4952874 (= tp!1388464 e!3094542)))

(assert (= (and b!4952874 ((_ is Cons!57050) (t!367740 l!2976))) b!4952991))

(check-sat (not b!4952903) (not d!1595060) (not d!1595062) (not d!1595070) (not b!4952958) (not b!4952986) (not b!4952899) (not b!4952947) (not b!4952949) (not d!1595074) (not b!4952898) (not b!4952901) (not b!4952991) (not b!4952984) (not b!4952900) (not b!4952956) tp_is_empty!36251 (not bm!345849) (not bm!345850) (not d!1595056) (not b!4952882) (not b!4952902))
(check-sat)
(get-model)

(declare-fun d!1595090 () Bool)

(declare-fun lt!2044234 () B!3033)

(assert (=> d!1595090 (contains!19509 (tail!9763 l!2976) lt!2044234)))

(declare-fun e!3094550 () B!3033)

(assert (=> d!1595090 (= lt!2044234 e!3094550)))

(declare-fun c!845889 () Bool)

(assert (=> d!1595090 (= c!845889 (= (- i!792 1) 0))))

(declare-fun e!3094551 () Bool)

(assert (=> d!1595090 e!3094551))

(declare-fun res!2113007 () Bool)

(assert (=> d!1595090 (=> (not res!2113007) (not e!3094551))))

(assert (=> d!1595090 (= res!2113007 (<= 0 (- i!792 1)))))

(assert (=> d!1595090 (= (apply!13870 (tail!9763 l!2976) (- i!792 1)) lt!2044234)))

(declare-fun b!4953005 () Bool)

(assert (=> b!4953005 (= e!3094551 (< (- i!792 1) (size!37878 (tail!9763 l!2976))))))

(declare-fun b!4953006 () Bool)

(assert (=> b!4953006 (= e!3094550 (head!10631 (tail!9763 l!2976)))))

(declare-fun b!4953007 () Bool)

(assert (=> b!4953007 (= e!3094550 (apply!13870 (tail!9763 (tail!9763 l!2976)) (- (- i!792 1) 1)))))

(assert (= (and d!1595090 res!2113007) b!4953005))

(assert (= (and d!1595090 c!845889) b!4953006))

(assert (= (and d!1595090 (not c!845889)) b!4953007))

(assert (=> d!1595090 m!5977724))

(declare-fun m!5977768 () Bool)

(assert (=> d!1595090 m!5977768))

(assert (=> b!4953005 m!5977724))

(declare-fun m!5977770 () Bool)

(assert (=> b!4953005 m!5977770))

(assert (=> b!4953006 m!5977724))

(declare-fun m!5977772 () Bool)

(assert (=> b!4953006 m!5977772))

(assert (=> b!4953007 m!5977724))

(declare-fun m!5977774 () Bool)

(assert (=> b!4953007 m!5977774))

(assert (=> b!4953007 m!5977774))

(declare-fun m!5977776 () Bool)

(assert (=> b!4953007 m!5977776))

(assert (=> b!4952903 d!1595090))

(declare-fun d!1595092 () Bool)

(assert (=> d!1595092 (= (tail!9763 l!2976) (t!367740 l!2976))))

(assert (=> b!4952903 d!1595092))

(assert (=> bm!345850 d!1595086))

(declare-fun d!1595094 () Bool)

(declare-fun lt!2044237 () Bool)

(assert (=> d!1595094 (= lt!2044237 (select (content!10174 l!2976) lt!2044216))))

(declare-fun e!3094557 () Bool)

(assert (=> d!1595094 (= lt!2044237 e!3094557)))

(declare-fun res!2113012 () Bool)

(assert (=> d!1595094 (=> (not res!2113012) (not e!3094557))))

(assert (=> d!1595094 (= res!2113012 ((_ is Cons!57050) l!2976))))

(assert (=> d!1595094 (= (contains!19509 l!2976 lt!2044216) lt!2044237)))

(declare-fun b!4953012 () Bool)

(declare-fun e!3094556 () Bool)

(assert (=> b!4953012 (= e!3094557 e!3094556)))

(declare-fun res!2113013 () Bool)

(assert (=> b!4953012 (=> res!2113013 e!3094556)))

(assert (=> b!4953012 (= res!2113013 (= (h!63498 l!2976) lt!2044216))))

(declare-fun b!4953013 () Bool)

(assert (=> b!4953013 (= e!3094556 (contains!19509 (t!367740 l!2976) lt!2044216))))

(assert (= (and d!1595094 res!2113012) b!4953012))

(assert (= (and b!4953012 (not res!2113013)) b!4953013))

(assert (=> d!1595094 m!5977746))

(declare-fun m!5977778 () Bool)

(assert (=> d!1595094 m!5977778))

(declare-fun m!5977780 () Bool)

(assert (=> b!4953013 m!5977780))

(assert (=> d!1595062 d!1595094))

(declare-fun d!1595096 () Bool)

(declare-fun c!845892 () Bool)

(assert (=> d!1595096 (= c!845892 ((_ is Nil!57050) lt!2044223))))

(declare-fun e!3094560 () (InoxSet B!3033))

(assert (=> d!1595096 (= (content!10174 lt!2044223) e!3094560)))

(declare-fun b!4953018 () Bool)

(assert (=> b!4953018 (= e!3094560 ((as const (Array B!3033 Bool)) false))))

(declare-fun b!4953019 () Bool)

(assert (=> b!4953019 (= e!3094560 ((_ map or) (store ((as const (Array B!3033 Bool)) false) (h!63498 lt!2044223) true) (content!10174 (t!367740 lt!2044223))))))

(assert (= (and d!1595096 c!845892) b!4953018))

(assert (= (and d!1595096 (not c!845892)) b!4953019))

(declare-fun m!5977782 () Bool)

(assert (=> b!4953019 m!5977782))

(declare-fun m!5977784 () Bool)

(assert (=> b!4953019 m!5977784))

(assert (=> d!1595074 d!1595096))

(declare-fun d!1595098 () Bool)

(declare-fun c!845893 () Bool)

(assert (=> d!1595098 (= c!845893 ((_ is Nil!57050) l!2976))))

(declare-fun e!3094561 () (InoxSet B!3033))

(assert (=> d!1595098 (= (content!10174 l!2976) e!3094561)))

(declare-fun b!4953020 () Bool)

(assert (=> b!4953020 (= e!3094561 ((as const (Array B!3033 Bool)) false))))

(declare-fun b!4953021 () Bool)

(assert (=> b!4953021 (= e!3094561 ((_ map or) (store ((as const (Array B!3033 Bool)) false) (h!63498 l!2976) true) (content!10174 (t!367740 l!2976))))))

(assert (= (and d!1595098 c!845893) b!4953020))

(assert (= (and d!1595098 (not c!845893)) b!4953021))

(declare-fun m!5977786 () Bool)

(assert (=> b!4953021 m!5977786))

(assert (=> b!4953021 m!5977740))

(assert (=> d!1595074 d!1595098))

(assert (=> b!4952901 d!1595086))

(declare-fun d!1595100 () Bool)

(assert (=> d!1595100 (= (head!10631 l!2976) (h!63498 l!2976))))

(assert (=> b!4952902 d!1595100))

(assert (=> b!4952882 d!1595078))

(assert (=> bm!345849 d!1595078))

(declare-fun bm!345853 () Bool)

(declare-fun call!345858 () Int)

(assert (=> bm!345853 (= call!345858 (size!37878 (t!367740 (t!367740 l!2976))))))

(declare-fun b!4953022 () Bool)

(declare-fun e!3094565 () List!57174)

(assert (=> b!4953022 (= e!3094565 Nil!57050)))

(declare-fun b!4953024 () Bool)

(declare-fun e!3094564 () Int)

(assert (=> b!4953024 (= e!3094564 call!345858)))

(declare-fun b!4953025 () Bool)

(declare-fun e!3094566 () Int)

(assert (=> b!4953025 (= e!3094566 (- call!345858 (- (- i!792 1) 1)))))

(declare-fun b!4953026 () Bool)

(declare-fun e!3094563 () List!57174)

(assert (=> b!4953026 (= e!3094563 (drop!2312 (t!367740 (t!367740 (t!367740 l!2976))) (- (- (- i!792 1) 1) 1)))))

(declare-fun b!4953027 () Bool)

(assert (=> b!4953027 (= e!3094566 0)))

(declare-fun b!4953023 () Bool)

(assert (=> b!4953023 (= e!3094563 (t!367740 (t!367740 l!2976)))))

(declare-fun d!1595102 () Bool)

(declare-fun e!3094562 () Bool)

(assert (=> d!1595102 e!3094562))

(declare-fun res!2113014 () Bool)

(assert (=> d!1595102 (=> (not res!2113014) (not e!3094562))))

(declare-fun lt!2044238 () List!57174)

(assert (=> d!1595102 (= res!2113014 (= ((_ map implies) (content!10174 lt!2044238) (content!10174 (t!367740 (t!367740 l!2976)))) ((as const (InoxSet B!3033)) true)))))

(assert (=> d!1595102 (= lt!2044238 e!3094565)))

(declare-fun c!845896 () Bool)

(assert (=> d!1595102 (= c!845896 ((_ is Nil!57050) (t!367740 (t!367740 l!2976))))))

(assert (=> d!1595102 (= (drop!2312 (t!367740 (t!367740 l!2976)) (- (- i!792 1) 1)) lt!2044238)))

(declare-fun b!4953028 () Bool)

(assert (=> b!4953028 (= e!3094562 (= (size!37878 lt!2044238) e!3094564))))

(declare-fun c!845894 () Bool)

(assert (=> b!4953028 (= c!845894 (<= (- (- i!792 1) 1) 0))))

(declare-fun b!4953029 () Bool)

(assert (=> b!4953029 (= e!3094564 e!3094566)))

(declare-fun c!845897 () Bool)

(assert (=> b!4953029 (= c!845897 (>= (- (- i!792 1) 1) call!345858))))

(declare-fun b!4953030 () Bool)

(assert (=> b!4953030 (= e!3094565 e!3094563)))

(declare-fun c!845895 () Bool)

(assert (=> b!4953030 (= c!845895 (<= (- (- i!792 1) 1) 0))))

(assert (= (and d!1595102 c!845896) b!4953022))

(assert (= (and d!1595102 (not c!845896)) b!4953030))

(assert (= (and b!4953030 c!845895) b!4953023))

(assert (= (and b!4953030 (not c!845895)) b!4953026))

(assert (= (and d!1595102 res!2113014) b!4953028))

(assert (= (and b!4953028 c!845894) b!4953024))

(assert (= (and b!4953028 (not c!845894)) b!4953029))

(assert (= (and b!4953029 c!845897) b!4953027))

(assert (= (and b!4953029 (not c!845897)) b!4953025))

(assert (= (or b!4953024 b!4953029 b!4953025) bm!345853))

(assert (=> bm!345853 m!5977764))

(declare-fun m!5977788 () Bool)

(assert (=> b!4953026 m!5977788))

(declare-fun m!5977790 () Bool)

(assert (=> d!1595102 m!5977790))

(declare-fun m!5977792 () Bool)

(assert (=> d!1595102 m!5977792))

(declare-fun m!5977794 () Bool)

(assert (=> b!4953028 m!5977794))

(assert (=> b!4952947 d!1595102))

(assert (=> b!4952956 d!1595070))

(declare-fun d!1595104 () Bool)

(declare-fun lt!2044239 () B!3033)

(assert (=> d!1595104 (contains!19509 (tail!9763 (t!367740 l!2976)) lt!2044239)))

(declare-fun e!3094567 () B!3033)

(assert (=> d!1595104 (= lt!2044239 e!3094567)))

(declare-fun c!845898 () Bool)

(assert (=> d!1595104 (= c!845898 (= (- (- i!792 1) 1) 0))))

(declare-fun e!3094568 () Bool)

(assert (=> d!1595104 e!3094568))

(declare-fun res!2113015 () Bool)

(assert (=> d!1595104 (=> (not res!2113015) (not e!3094568))))

(assert (=> d!1595104 (= res!2113015 (<= 0 (- (- i!792 1) 1)))))

(assert (=> d!1595104 (= (apply!13870 (tail!9763 (t!367740 l!2976)) (- (- i!792 1) 1)) lt!2044239)))

(declare-fun b!4953031 () Bool)

(assert (=> b!4953031 (= e!3094568 (< (- (- i!792 1) 1) (size!37878 (tail!9763 (t!367740 l!2976)))))))

(declare-fun b!4953032 () Bool)

(assert (=> b!4953032 (= e!3094567 (head!10631 (tail!9763 (t!367740 l!2976))))))

(declare-fun b!4953033 () Bool)

(assert (=> b!4953033 (= e!3094567 (apply!13870 (tail!9763 (tail!9763 (t!367740 l!2976))) (- (- (- i!792 1) 1) 1)))))

(assert (= (and d!1595104 res!2113015) b!4953031))

(assert (= (and d!1595104 c!845898) b!4953032))

(assert (= (and d!1595104 (not c!845898)) b!4953033))

(assert (=> d!1595104 m!5977710))

(declare-fun m!5977796 () Bool)

(assert (=> d!1595104 m!5977796))

(assert (=> b!4953031 m!5977710))

(declare-fun m!5977798 () Bool)

(assert (=> b!4953031 m!5977798))

(assert (=> b!4953032 m!5977710))

(declare-fun m!5977800 () Bool)

(assert (=> b!4953032 m!5977800))

(assert (=> b!4953033 m!5977710))

(declare-fun m!5977802 () Bool)

(assert (=> b!4953033 m!5977802))

(assert (=> b!4953033 m!5977802))

(declare-fun m!5977804 () Bool)

(assert (=> b!4953033 m!5977804))

(assert (=> b!4952900 d!1595104))

(declare-fun d!1595106 () Bool)

(assert (=> d!1595106 (= (tail!9763 (t!367740 l!2976)) (t!367740 (t!367740 l!2976)))))

(assert (=> b!4952900 d!1595106))

(assert (=> d!1595056 d!1595066))

(assert (=> d!1595056 d!1595070))

(assert (=> d!1595056 d!1595060))

(declare-fun d!1595108 () Bool)

(assert (=> d!1595108 (= (head!10631 (drop!2312 (t!367740 l!2976) (- i!792 1))) (apply!13870 (t!367740 l!2976) (- i!792 1)))))

(assert (=> d!1595108 true))

(declare-fun _$27!1705 () Unit!147947)

(assert (=> d!1595108 (= (choose!36610 (t!367740 l!2976) (- i!792 1)) _$27!1705)))

(declare-fun bs!1182392 () Bool)

(assert (= bs!1182392 d!1595108))

(assert (=> bs!1182392 m!5977688))

(assert (=> bs!1182392 m!5977688))

(assert (=> bs!1182392 m!5977690))

(assert (=> bs!1182392 m!5977696))

(assert (=> d!1595056 d!1595108))

(assert (=> b!4952986 d!1595078))

(declare-fun d!1595110 () Bool)

(declare-fun c!845899 () Bool)

(assert (=> d!1595110 (= c!845899 ((_ is Nil!57050) lt!2044222))))

(declare-fun e!3094569 () (InoxSet B!3033))

(assert (=> d!1595110 (= (content!10174 lt!2044222) e!3094569)))

(declare-fun b!4953034 () Bool)

(assert (=> b!4953034 (= e!3094569 ((as const (Array B!3033 Bool)) false))))

(declare-fun b!4953035 () Bool)

(assert (=> b!4953035 (= e!3094569 ((_ map or) (store ((as const (Array B!3033 Bool)) false) (h!63498 lt!2044222) true) (content!10174 (t!367740 lt!2044222))))))

(assert (= (and d!1595110 c!845899) b!4953034))

(assert (= (and d!1595110 (not c!845899)) b!4953035))

(declare-fun m!5977806 () Bool)

(assert (=> b!4953035 m!5977806))

(declare-fun m!5977808 () Bool)

(assert (=> b!4953035 m!5977808))

(assert (=> d!1595070 d!1595110))

(declare-fun d!1595112 () Bool)

(declare-fun c!845900 () Bool)

(assert (=> d!1595112 (= c!845900 ((_ is Nil!57050) (t!367740 l!2976)))))

(declare-fun e!3094570 () (InoxSet B!3033))

(assert (=> d!1595112 (= (content!10174 (t!367740 l!2976)) e!3094570)))

(declare-fun b!4953036 () Bool)

(assert (=> b!4953036 (= e!3094570 ((as const (Array B!3033 Bool)) false))))

(declare-fun b!4953037 () Bool)

(assert (=> b!4953037 (= e!3094570 ((_ map or) (store ((as const (Array B!3033 Bool)) false) (h!63498 (t!367740 l!2976)) true) (content!10174 (t!367740 (t!367740 l!2976)))))))

(assert (= (and d!1595112 c!845900) b!4953036))

(assert (= (and d!1595112 (not c!845900)) b!4953037))

(declare-fun m!5977810 () Bool)

(assert (=> b!4953037 m!5977810))

(assert (=> b!4953037 m!5977792))

(assert (=> d!1595070 d!1595112))

(declare-fun d!1595114 () Bool)

(declare-fun lt!2044240 () Bool)

(assert (=> d!1595114 (= lt!2044240 (select (content!10174 (t!367740 l!2976)) lt!2044215))))

(declare-fun e!3094572 () Bool)

(assert (=> d!1595114 (= lt!2044240 e!3094572)))

(declare-fun res!2113016 () Bool)

(assert (=> d!1595114 (=> (not res!2113016) (not e!3094572))))

(assert (=> d!1595114 (= res!2113016 ((_ is Cons!57050) (t!367740 l!2976)))))

(assert (=> d!1595114 (= (contains!19509 (t!367740 l!2976) lt!2044215) lt!2044240)))

(declare-fun b!4953038 () Bool)

(declare-fun e!3094571 () Bool)

(assert (=> b!4953038 (= e!3094572 e!3094571)))

(declare-fun res!2113017 () Bool)

(assert (=> b!4953038 (=> res!2113017 e!3094571)))

(assert (=> b!4953038 (= res!2113017 (= (h!63498 (t!367740 l!2976)) lt!2044215))))

(declare-fun b!4953039 () Bool)

(assert (=> b!4953039 (= e!3094571 (contains!19509 (t!367740 (t!367740 l!2976)) lt!2044215))))

(assert (= (and d!1595114 res!2113016) b!4953038))

(assert (= (and b!4953038 (not res!2113017)) b!4953039))

(assert (=> d!1595114 m!5977740))

(declare-fun m!5977812 () Bool)

(assert (=> d!1595114 m!5977812))

(declare-fun m!5977814 () Bool)

(assert (=> b!4953039 m!5977814))

(assert (=> d!1595060 d!1595114))

(declare-fun d!1595116 () Bool)

(declare-fun lt!2044241 () Int)

(assert (=> d!1595116 (>= lt!2044241 0)))

(declare-fun e!3094573 () Int)

(assert (=> d!1595116 (= lt!2044241 e!3094573)))

(declare-fun c!845901 () Bool)

(assert (=> d!1595116 (= c!845901 ((_ is Nil!57050) lt!2044222))))

(assert (=> d!1595116 (= (size!37878 lt!2044222) lt!2044241)))

(declare-fun b!4953040 () Bool)

(assert (=> b!4953040 (= e!3094573 0)))

(declare-fun b!4953041 () Bool)

(assert (=> b!4953041 (= e!3094573 (+ 1 (size!37878 (t!367740 lt!2044222))))))

(assert (= (and d!1595116 c!845901) b!4953040))

(assert (= (and d!1595116 (not c!845901)) b!4953041))

(declare-fun m!5977816 () Bool)

(assert (=> b!4953041 m!5977816))

(assert (=> b!4952949 d!1595116))

(declare-fun d!1595118 () Bool)

(declare-fun lt!2044242 () Int)

(assert (=> d!1595118 (>= lt!2044242 0)))

(declare-fun e!3094574 () Int)

(assert (=> d!1595118 (= lt!2044242 e!3094574)))

(declare-fun c!845902 () Bool)

(assert (=> d!1595118 (= c!845902 ((_ is Nil!57050) lt!2044223))))

(assert (=> d!1595118 (= (size!37878 lt!2044223) lt!2044242)))

(declare-fun b!4953042 () Bool)

(assert (=> b!4953042 (= e!3094574 0)))

(declare-fun b!4953043 () Bool)

(assert (=> b!4953043 (= e!3094574 (+ 1 (size!37878 (t!367740 lt!2044223))))))

(assert (= (and d!1595118 c!845902) b!4953042))

(assert (= (and d!1595118 (not c!845902)) b!4953043))

(declare-fun m!5977818 () Bool)

(assert (=> b!4953043 m!5977818))

(assert (=> b!4952958 d!1595118))

(assert (=> b!4952898 d!1595078))

(declare-fun d!1595120 () Bool)

(assert (=> d!1595120 (= (head!10631 (t!367740 l!2976)) (h!63498 (t!367740 l!2976)))))

(assert (=> b!4952899 d!1595120))

(declare-fun d!1595122 () Bool)

(declare-fun lt!2044243 () Int)

(assert (=> d!1595122 (>= lt!2044243 0)))

(declare-fun e!3094575 () Int)

(assert (=> d!1595122 (= lt!2044243 e!3094575)))

(declare-fun c!845903 () Bool)

(assert (=> d!1595122 (= c!845903 ((_ is Nil!57050) (t!367740 (t!367740 l!2976))))))

(assert (=> d!1595122 (= (size!37878 (t!367740 (t!367740 l!2976))) lt!2044243)))

(declare-fun b!4953044 () Bool)

(assert (=> b!4953044 (= e!3094575 0)))

(declare-fun b!4953045 () Bool)

(assert (=> b!4953045 (= e!3094575 (+ 1 (size!37878 (t!367740 (t!367740 (t!367740 l!2976))))))))

(assert (= (and d!1595122 c!845903) b!4953044))

(assert (= (and d!1595122 (not c!845903)) b!4953045))

(declare-fun m!5977820 () Bool)

(assert (=> b!4953045 m!5977820))

(assert (=> b!4952984 d!1595122))

(declare-fun b!4953046 () Bool)

(declare-fun e!3094576 () Bool)

(declare-fun tp!1388471 () Bool)

(assert (=> b!4953046 (= e!3094576 (and tp_is_empty!36251 tp!1388471))))

(assert (=> b!4952991 (= tp!1388467 e!3094576)))

(assert (= (and b!4952991 ((_ is Cons!57050) (t!367740 (t!367740 l!2976)))) b!4953046))

(check-sat (not b!4953046) (not b!4953039) tp_is_empty!36251 (not b!4953032) (not b!4953037) (not b!4953033) (not b!4953007) (not b!4953031) (not b!4953013) (not b!4953019) (not b!4953006) (not b!4953045) (not b!4953028) (not d!1595114) (not d!1595108) (not b!4953005) (not b!4953041) (not d!1595090) (not d!1595094) (not bm!345853) (not b!4953021) (not b!4953035) (not b!4953026) (not d!1595102) (not b!4953043) (not d!1595104))
(check-sat)
