; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!411388 () Bool)

(assert start!411388)

(declare-fun b!4281553 () Bool)

(declare-fun e!2658013 () Bool)

(declare-datatypes ((B!2881 0))(
  ( (B!2882 (val!15310 Int)) )
))
(declare-datatypes ((List!47519 0))(
  ( (Nil!47395) (Cons!47395 (h!52815 B!2881) (t!354108 List!47519)) )
))
(declare-fun l!2982 () List!47519)

(declare-fun i!813 () Int)

(declare-fun drop!2175 (List!47519 Int) List!47519)

(assert (=> b!4281553 (= e!2658013 (not (not (= (drop!2175 l!2982 i!813) Nil!47395))))))

(declare-fun tail!6882 (List!47519) List!47519)

(assert (=> b!4281553 (= (tail!6882 (drop!2175 (t!354108 l!2982) (- i!813 1))) (drop!2175 (t!354108 l!2982) (+ 1 (- i!813 1))))))

(declare-datatypes ((Unit!66353 0))(
  ( (Unit!66354) )
))
(declare-fun lt!1515237 () Unit!66353)

(declare-fun lemmaDropTail!1143 (List!47519 Int) Unit!66353)

(assert (=> b!4281553 (= lt!1515237 (lemmaDropTail!1143 (t!354108 l!2982) (- i!813 1)))))

(declare-fun b!4281554 () Bool)

(declare-fun res!1757384 () Bool)

(assert (=> b!4281554 (=> (not res!1757384) (not e!2658013))))

(declare-fun size!34731 (List!47519) Int)

(assert (=> b!4281554 (= res!1757384 (< i!813 (size!34731 l!2982)))))

(declare-fun res!1757385 () Bool)

(assert (=> start!411388 (=> (not res!1757385) (not e!2658013))))

(assert (=> start!411388 (= res!1757385 (>= i!813 0))))

(assert (=> start!411388 e!2658013))

(assert (=> start!411388 true))

(declare-fun e!2658012 () Bool)

(assert (=> start!411388 e!2658012))

(declare-fun b!4281555 () Bool)

(declare-fun res!1757383 () Bool)

(assert (=> b!4281555 (=> (not res!1757383) (not e!2658013))))

(assert (=> b!4281555 (= res!1757383 (< (- i!813 1) (size!34731 (t!354108 l!2982))))))

(declare-fun b!4281556 () Bool)

(declare-fun tp_is_empty!23029 () Bool)

(declare-fun tp!1309464 () Bool)

(assert (=> b!4281556 (= e!2658012 (and tp_is_empty!23029 tp!1309464))))

(declare-fun b!4281557 () Bool)

(declare-fun res!1757382 () Bool)

(assert (=> b!4281557 (=> (not res!1757382) (not e!2658013))))

(get-info :version)

(assert (=> b!4281557 (= res!1757382 (and (not ((_ is Nil!47395) l!2982)) (not (= i!813 0)) (>= (- i!813 1) 0)))))

(assert (= (and start!411388 res!1757385) b!4281554))

(assert (= (and b!4281554 res!1757384) b!4281557))

(assert (= (and b!4281557 res!1757382) b!4281555))

(assert (= (and b!4281555 res!1757383) b!4281553))

(assert (= (and start!411388 ((_ is Cons!47395) l!2982)) b!4281556))

(declare-fun m!4878981 () Bool)

(assert (=> b!4281553 m!4878981))

(declare-fun m!4878983 () Bool)

(assert (=> b!4281553 m!4878983))

(declare-fun m!4878985 () Bool)

(assert (=> b!4281553 m!4878985))

(declare-fun m!4878987 () Bool)

(assert (=> b!4281553 m!4878987))

(assert (=> b!4281553 m!4878985))

(declare-fun m!4878989 () Bool)

(assert (=> b!4281553 m!4878989))

(declare-fun m!4878991 () Bool)

(assert (=> b!4281554 m!4878991))

(declare-fun m!4878993 () Bool)

(assert (=> b!4281555 m!4878993))

(check-sat (not b!4281554) (not b!4281556) tp_is_empty!23029 (not b!4281553) (not b!4281555))
(check-sat)
(get-model)

(declare-fun b!4281600 () Bool)

(declare-fun e!2658037 () List!47519)

(assert (=> b!4281600 (= e!2658037 (t!354108 l!2982))))

(declare-fun b!4281601 () Bool)

(declare-fun e!2658038 () List!47519)

(assert (=> b!4281601 (= e!2658038 e!2658037)))

(declare-fun c!729704 () Bool)

(assert (=> b!4281601 (= c!729704 (<= (+ 1 (- i!813 1)) 0))))

(declare-fun b!4281602 () Bool)

(declare-fun e!2658039 () Int)

(declare-fun call!294370 () Int)

(assert (=> b!4281602 (= e!2658039 call!294370)))

(declare-fun b!4281603 () Bool)

(assert (=> b!4281603 (= e!2658038 Nil!47395)))

(declare-fun d!1264726 () Bool)

(declare-fun e!2658040 () Bool)

(assert (=> d!1264726 e!2658040))

(declare-fun res!1757390 () Bool)

(assert (=> d!1264726 (=> (not res!1757390) (not e!2658040))))

(declare-fun lt!1515245 () List!47519)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7510 (List!47519) (InoxSet B!2881))

(assert (=> d!1264726 (= res!1757390 (= ((_ map implies) (content!7510 lt!1515245) (content!7510 (t!354108 l!2982))) ((as const (InoxSet B!2881)) true)))))

(assert (=> d!1264726 (= lt!1515245 e!2658038)))

(declare-fun c!729707 () Bool)

(assert (=> d!1264726 (= c!729707 ((_ is Nil!47395) (t!354108 l!2982)))))

(assert (=> d!1264726 (= (drop!2175 (t!354108 l!2982) (+ 1 (- i!813 1))) lt!1515245)))

(declare-fun bm!294365 () Bool)

(assert (=> bm!294365 (= call!294370 (size!34731 (t!354108 l!2982)))))

(declare-fun b!4281604 () Bool)

(assert (=> b!4281604 (= e!2658037 (drop!2175 (t!354108 (t!354108 l!2982)) (- (+ 1 (- i!813 1)) 1)))))

(declare-fun b!4281605 () Bool)

(declare-fun e!2658041 () Int)

(assert (=> b!4281605 (= e!2658041 (- call!294370 (+ 1 (- i!813 1))))))

(declare-fun b!4281606 () Bool)

(assert (=> b!4281606 (= e!2658041 0)))

(declare-fun b!4281607 () Bool)

(assert (=> b!4281607 (= e!2658039 e!2658041)))

(declare-fun c!729705 () Bool)

(assert (=> b!4281607 (= c!729705 (>= (+ 1 (- i!813 1)) call!294370))))

(declare-fun b!4281608 () Bool)

(assert (=> b!4281608 (= e!2658040 (= (size!34731 lt!1515245) e!2658039))))

(declare-fun c!729706 () Bool)

(assert (=> b!4281608 (= c!729706 (<= (+ 1 (- i!813 1)) 0))))

(assert (= (and d!1264726 c!729707) b!4281603))

(assert (= (and d!1264726 (not c!729707)) b!4281601))

(assert (= (and b!4281601 c!729704) b!4281600))

(assert (= (and b!4281601 (not c!729704)) b!4281604))

(assert (= (and d!1264726 res!1757390) b!4281608))

(assert (= (and b!4281608 c!729706) b!4281602))

(assert (= (and b!4281608 (not c!729706)) b!4281607))

(assert (= (and b!4281607 c!729705) b!4281606))

(assert (= (and b!4281607 (not c!729705)) b!4281605))

(assert (= (or b!4281602 b!4281607 b!4281605) bm!294365))

(declare-fun m!4878995 () Bool)

(assert (=> d!1264726 m!4878995))

(declare-fun m!4878997 () Bool)

(assert (=> d!1264726 m!4878997))

(assert (=> bm!294365 m!4878993))

(declare-fun m!4878999 () Bool)

(assert (=> b!4281604 m!4878999))

(declare-fun m!4879001 () Bool)

(assert (=> b!4281608 m!4879001))

(assert (=> b!4281553 d!1264726))

(declare-fun d!1264730 () Bool)

(assert (=> d!1264730 (= (tail!6882 (drop!2175 (t!354108 l!2982) (- i!813 1))) (drop!2175 (t!354108 l!2982) (+ (- i!813 1) 1)))))

(declare-fun lt!1515251 () Unit!66353)

(declare-fun choose!26124 (List!47519 Int) Unit!66353)

(assert (=> d!1264730 (= lt!1515251 (choose!26124 (t!354108 l!2982) (- i!813 1)))))

(declare-fun e!2658051 () Bool)

(assert (=> d!1264730 e!2658051))

(declare-fun res!1757396 () Bool)

(assert (=> d!1264730 (=> (not res!1757396) (not e!2658051))))

(assert (=> d!1264730 (= res!1757396 (>= (- i!813 1) 0))))

(assert (=> d!1264730 (= (lemmaDropTail!1143 (t!354108 l!2982) (- i!813 1)) lt!1515251)))

(declare-fun b!4281622 () Bool)

(assert (=> b!4281622 (= e!2658051 (< (- i!813 1) (size!34731 (t!354108 l!2982))))))

(assert (= (and d!1264730 res!1757396) b!4281622))

(assert (=> d!1264730 m!4878985))

(assert (=> d!1264730 m!4878985))

(assert (=> d!1264730 m!4878989))

(declare-fun m!4879011 () Bool)

(assert (=> d!1264730 m!4879011))

(declare-fun m!4879013 () Bool)

(assert (=> d!1264730 m!4879013))

(assert (=> b!4281622 m!4878993))

(assert (=> b!4281553 d!1264730))

(declare-fun b!4281623 () Bool)

(declare-fun e!2658052 () List!47519)

(assert (=> b!4281623 (= e!2658052 (t!354108 l!2982))))

(declare-fun b!4281624 () Bool)

(declare-fun e!2658053 () List!47519)

(assert (=> b!4281624 (= e!2658053 e!2658052)))

(declare-fun c!729712 () Bool)

(assert (=> b!4281624 (= c!729712 (<= (- i!813 1) 0))))

(declare-fun b!4281625 () Bool)

(declare-fun e!2658054 () Int)

(declare-fun call!294372 () Int)

(assert (=> b!4281625 (= e!2658054 call!294372)))

(declare-fun b!4281626 () Bool)

(assert (=> b!4281626 (= e!2658053 Nil!47395)))

(declare-fun d!1264734 () Bool)

(declare-fun e!2658055 () Bool)

(assert (=> d!1264734 e!2658055))

(declare-fun res!1757397 () Bool)

(assert (=> d!1264734 (=> (not res!1757397) (not e!2658055))))

(declare-fun lt!1515252 () List!47519)

(assert (=> d!1264734 (= res!1757397 (= ((_ map implies) (content!7510 lt!1515252) (content!7510 (t!354108 l!2982))) ((as const (InoxSet B!2881)) true)))))

(assert (=> d!1264734 (= lt!1515252 e!2658053)))

(declare-fun c!729715 () Bool)

(assert (=> d!1264734 (= c!729715 ((_ is Nil!47395) (t!354108 l!2982)))))

(assert (=> d!1264734 (= (drop!2175 (t!354108 l!2982) (- i!813 1)) lt!1515252)))

(declare-fun bm!294367 () Bool)

(assert (=> bm!294367 (= call!294372 (size!34731 (t!354108 l!2982)))))

(declare-fun b!4281627 () Bool)

(assert (=> b!4281627 (= e!2658052 (drop!2175 (t!354108 (t!354108 l!2982)) (- (- i!813 1) 1)))))

(declare-fun b!4281628 () Bool)

(declare-fun e!2658056 () Int)

(assert (=> b!4281628 (= e!2658056 (- call!294372 (- i!813 1)))))

(declare-fun b!4281629 () Bool)

(assert (=> b!4281629 (= e!2658056 0)))

(declare-fun b!4281630 () Bool)

(assert (=> b!4281630 (= e!2658054 e!2658056)))

(declare-fun c!729713 () Bool)

(assert (=> b!4281630 (= c!729713 (>= (- i!813 1) call!294372))))

(declare-fun b!4281631 () Bool)

(assert (=> b!4281631 (= e!2658055 (= (size!34731 lt!1515252) e!2658054))))

(declare-fun c!729714 () Bool)

(assert (=> b!4281631 (= c!729714 (<= (- i!813 1) 0))))

(assert (= (and d!1264734 c!729715) b!4281626))

(assert (= (and d!1264734 (not c!729715)) b!4281624))

(assert (= (and b!4281624 c!729712) b!4281623))

(assert (= (and b!4281624 (not c!729712)) b!4281627))

(assert (= (and d!1264734 res!1757397) b!4281631))

(assert (= (and b!4281631 c!729714) b!4281625))

(assert (= (and b!4281631 (not c!729714)) b!4281630))

(assert (= (and b!4281630 c!729713) b!4281629))

(assert (= (and b!4281630 (not c!729713)) b!4281628))

(assert (= (or b!4281625 b!4281630 b!4281628) bm!294367))

(declare-fun m!4879015 () Bool)

(assert (=> d!1264734 m!4879015))

(assert (=> d!1264734 m!4878997))

(assert (=> bm!294367 m!4878993))

(declare-fun m!4879017 () Bool)

(assert (=> b!4281627 m!4879017))

(declare-fun m!4879019 () Bool)

(assert (=> b!4281631 m!4879019))

(assert (=> b!4281553 d!1264734))

(declare-fun d!1264736 () Bool)

(assert (=> d!1264736 (= (tail!6882 (drop!2175 (t!354108 l!2982) (- i!813 1))) (t!354108 (drop!2175 (t!354108 l!2982) (- i!813 1))))))

(assert (=> b!4281553 d!1264736))

(declare-fun b!4281642 () Bool)

(declare-fun e!2658063 () List!47519)

(assert (=> b!4281642 (= e!2658063 l!2982)))

(declare-fun b!4281643 () Bool)

(declare-fun e!2658064 () List!47519)

(assert (=> b!4281643 (= e!2658064 e!2658063)))

(declare-fun c!729720 () Bool)

(assert (=> b!4281643 (= c!729720 (<= i!813 0))))

(declare-fun b!4281644 () Bool)

(declare-fun e!2658065 () Int)

(declare-fun call!294374 () Int)

(assert (=> b!4281644 (= e!2658065 call!294374)))

(declare-fun b!4281645 () Bool)

(assert (=> b!4281645 (= e!2658064 Nil!47395)))

(declare-fun d!1264740 () Bool)

(declare-fun e!2658066 () Bool)

(assert (=> d!1264740 e!2658066))

(declare-fun res!1757400 () Bool)

(assert (=> d!1264740 (=> (not res!1757400) (not e!2658066))))

(declare-fun lt!1515255 () List!47519)

(assert (=> d!1264740 (= res!1757400 (= ((_ map implies) (content!7510 lt!1515255) (content!7510 l!2982)) ((as const (InoxSet B!2881)) true)))))

(assert (=> d!1264740 (= lt!1515255 e!2658064)))

(declare-fun c!729723 () Bool)

(assert (=> d!1264740 (= c!729723 ((_ is Nil!47395) l!2982))))

(assert (=> d!1264740 (= (drop!2175 l!2982 i!813) lt!1515255)))

(declare-fun bm!294369 () Bool)

(assert (=> bm!294369 (= call!294374 (size!34731 l!2982))))

(declare-fun b!4281646 () Bool)

(assert (=> b!4281646 (= e!2658063 (drop!2175 (t!354108 l!2982) (- i!813 1)))))

(declare-fun b!4281647 () Bool)

(declare-fun e!2658067 () Int)

(assert (=> b!4281647 (= e!2658067 (- call!294374 i!813))))

(declare-fun b!4281648 () Bool)

(assert (=> b!4281648 (= e!2658067 0)))

(declare-fun b!4281649 () Bool)

(assert (=> b!4281649 (= e!2658065 e!2658067)))

(declare-fun c!729721 () Bool)

(assert (=> b!4281649 (= c!729721 (>= i!813 call!294374))))

(declare-fun b!4281650 () Bool)

(assert (=> b!4281650 (= e!2658066 (= (size!34731 lt!1515255) e!2658065))))

(declare-fun c!729722 () Bool)

(assert (=> b!4281650 (= c!729722 (<= i!813 0))))

(assert (= (and d!1264740 c!729723) b!4281645))

(assert (= (and d!1264740 (not c!729723)) b!4281643))

(assert (= (and b!4281643 c!729720) b!4281642))

(assert (= (and b!4281643 (not c!729720)) b!4281646))

(assert (= (and d!1264740 res!1757400) b!4281650))

(assert (= (and b!4281650 c!729722) b!4281644))

(assert (= (and b!4281650 (not c!729722)) b!4281649))

(assert (= (and b!4281649 c!729721) b!4281648))

(assert (= (and b!4281649 (not c!729721)) b!4281647))

(assert (= (or b!4281644 b!4281649 b!4281647) bm!294369))

(declare-fun m!4879031 () Bool)

(assert (=> d!1264740 m!4879031))

(declare-fun m!4879033 () Bool)

(assert (=> d!1264740 m!4879033))

(assert (=> bm!294369 m!4878991))

(assert (=> b!4281646 m!4878985))

(declare-fun m!4879035 () Bool)

(assert (=> b!4281650 m!4879035))

(assert (=> b!4281553 d!1264740))

(declare-fun d!1264744 () Bool)

(declare-fun lt!1515260 () Int)

(assert (=> d!1264744 (>= lt!1515260 0)))

(declare-fun e!2658079 () Int)

(assert (=> d!1264744 (= lt!1515260 e!2658079)))

(declare-fun c!729731 () Bool)

(assert (=> d!1264744 (= c!729731 ((_ is Nil!47395) l!2982))))

(assert (=> d!1264744 (= (size!34731 l!2982) lt!1515260)))

(declare-fun b!4281671 () Bool)

(assert (=> b!4281671 (= e!2658079 0)))

(declare-fun b!4281672 () Bool)

(assert (=> b!4281672 (= e!2658079 (+ 1 (size!34731 (t!354108 l!2982))))))

(assert (= (and d!1264744 c!729731) b!4281671))

(assert (= (and d!1264744 (not c!729731)) b!4281672))

(assert (=> b!4281672 m!4878993))

(assert (=> b!4281554 d!1264744))

(declare-fun d!1264750 () Bool)

(declare-fun lt!1515261 () Int)

(assert (=> d!1264750 (>= lt!1515261 0)))

(declare-fun e!2658080 () Int)

(assert (=> d!1264750 (= lt!1515261 e!2658080)))

(declare-fun c!729732 () Bool)

(assert (=> d!1264750 (= c!729732 ((_ is Nil!47395) (t!354108 l!2982)))))

(assert (=> d!1264750 (= (size!34731 (t!354108 l!2982)) lt!1515261)))

(declare-fun b!4281673 () Bool)

(assert (=> b!4281673 (= e!2658080 0)))

(declare-fun b!4281674 () Bool)

(assert (=> b!4281674 (= e!2658080 (+ 1 (size!34731 (t!354108 (t!354108 l!2982)))))))

(assert (= (and d!1264750 c!729732) b!4281673))

(assert (= (and d!1264750 (not c!729732)) b!4281674))

(declare-fun m!4879045 () Bool)

(assert (=> b!4281674 m!4879045))

(assert (=> b!4281555 d!1264750))

(declare-fun b!4281679 () Bool)

(declare-fun e!2658083 () Bool)

(declare-fun tp!1309470 () Bool)

(assert (=> b!4281679 (= e!2658083 (and tp_is_empty!23029 tp!1309470))))

(assert (=> b!4281556 (= tp!1309464 e!2658083)))

(assert (= (and b!4281556 ((_ is Cons!47395) (t!354108 l!2982))) b!4281679))

(check-sat (not b!4281608) (not b!4281604) (not d!1264734) (not b!4281674) (not bm!294369) (not b!4281646) (not b!4281650) (not b!4281672) (not d!1264740) (not b!4281622) (not b!4281627) (not d!1264730) (not bm!294367) tp_is_empty!23029 (not b!4281631) (not bm!294365) (not b!4281679) (not d!1264726))
(check-sat)
(get-model)

(assert (=> b!4281646 d!1264734))

(declare-fun d!1264752 () Bool)

(declare-fun c!729735 () Bool)

(assert (=> d!1264752 (= c!729735 ((_ is Nil!47395) lt!1515245))))

(declare-fun e!2658086 () (InoxSet B!2881))

(assert (=> d!1264752 (= (content!7510 lt!1515245) e!2658086)))

(declare-fun b!4281684 () Bool)

(assert (=> b!4281684 (= e!2658086 ((as const (Array B!2881 Bool)) false))))

(declare-fun b!4281685 () Bool)

(assert (=> b!4281685 (= e!2658086 ((_ map or) (store ((as const (Array B!2881 Bool)) false) (h!52815 lt!1515245) true) (content!7510 (t!354108 lt!1515245))))))

(assert (= (and d!1264752 c!729735) b!4281684))

(assert (= (and d!1264752 (not c!729735)) b!4281685))

(declare-fun m!4879047 () Bool)

(assert (=> b!4281685 m!4879047))

(declare-fun m!4879049 () Bool)

(assert (=> b!4281685 m!4879049))

(assert (=> d!1264726 d!1264752))

(declare-fun d!1264754 () Bool)

(declare-fun c!729736 () Bool)

(assert (=> d!1264754 (= c!729736 ((_ is Nil!47395) (t!354108 l!2982)))))

(declare-fun e!2658087 () (InoxSet B!2881))

(assert (=> d!1264754 (= (content!7510 (t!354108 l!2982)) e!2658087)))

(declare-fun b!4281686 () Bool)

(assert (=> b!4281686 (= e!2658087 ((as const (Array B!2881 Bool)) false))))

(declare-fun b!4281687 () Bool)

(assert (=> b!4281687 (= e!2658087 ((_ map or) (store ((as const (Array B!2881 Bool)) false) (h!52815 (t!354108 l!2982)) true) (content!7510 (t!354108 (t!354108 l!2982)))))))

(assert (= (and d!1264754 c!729736) b!4281686))

(assert (= (and d!1264754 (not c!729736)) b!4281687))

(declare-fun m!4879051 () Bool)

(assert (=> b!4281687 m!4879051))

(declare-fun m!4879053 () Bool)

(assert (=> b!4281687 m!4879053))

(assert (=> d!1264726 d!1264754))

(declare-fun d!1264756 () Bool)

(declare-fun c!729737 () Bool)

(assert (=> d!1264756 (= c!729737 ((_ is Nil!47395) lt!1515252))))

(declare-fun e!2658088 () (InoxSet B!2881))

(assert (=> d!1264756 (= (content!7510 lt!1515252) e!2658088)))

(declare-fun b!4281688 () Bool)

(assert (=> b!4281688 (= e!2658088 ((as const (Array B!2881 Bool)) false))))

(declare-fun b!4281689 () Bool)

(assert (=> b!4281689 (= e!2658088 ((_ map or) (store ((as const (Array B!2881 Bool)) false) (h!52815 lt!1515252) true) (content!7510 (t!354108 lt!1515252))))))

(assert (= (and d!1264756 c!729737) b!4281688))

(assert (= (and d!1264756 (not c!729737)) b!4281689))

(declare-fun m!4879055 () Bool)

(assert (=> b!4281689 m!4879055))

(declare-fun m!4879057 () Bool)

(assert (=> b!4281689 m!4879057))

(assert (=> d!1264734 d!1264756))

(assert (=> d!1264734 d!1264754))

(declare-fun d!1264758 () Bool)

(declare-fun lt!1515262 () Int)

(assert (=> d!1264758 (>= lt!1515262 0)))

(declare-fun e!2658089 () Int)

(assert (=> d!1264758 (= lt!1515262 e!2658089)))

(declare-fun c!729738 () Bool)

(assert (=> d!1264758 (= c!729738 ((_ is Nil!47395) lt!1515252))))

(assert (=> d!1264758 (= (size!34731 lt!1515252) lt!1515262)))

(declare-fun b!4281690 () Bool)

(assert (=> b!4281690 (= e!2658089 0)))

(declare-fun b!4281691 () Bool)

(assert (=> b!4281691 (= e!2658089 (+ 1 (size!34731 (t!354108 lt!1515252))))))

(assert (= (and d!1264758 c!729738) b!4281690))

(assert (= (and d!1264758 (not c!729738)) b!4281691))

(declare-fun m!4879059 () Bool)

(assert (=> b!4281691 m!4879059))

(assert (=> b!4281631 d!1264758))

(declare-fun b!4281692 () Bool)

(declare-fun e!2658090 () List!47519)

(assert (=> b!4281692 (= e!2658090 (t!354108 (t!354108 l!2982)))))

(declare-fun b!4281693 () Bool)

(declare-fun e!2658091 () List!47519)

(assert (=> b!4281693 (= e!2658091 e!2658090)))

(declare-fun c!729739 () Bool)

(assert (=> b!4281693 (= c!729739 (<= (- (- i!813 1) 1) 0))))

(declare-fun b!4281694 () Bool)

(declare-fun e!2658092 () Int)

(declare-fun call!294376 () Int)

(assert (=> b!4281694 (= e!2658092 call!294376)))

(declare-fun b!4281695 () Bool)

(assert (=> b!4281695 (= e!2658091 Nil!47395)))

(declare-fun d!1264760 () Bool)

(declare-fun e!2658093 () Bool)

(assert (=> d!1264760 e!2658093))

(declare-fun res!1757402 () Bool)

(assert (=> d!1264760 (=> (not res!1757402) (not e!2658093))))

(declare-fun lt!1515263 () List!47519)

(assert (=> d!1264760 (= res!1757402 (= ((_ map implies) (content!7510 lt!1515263) (content!7510 (t!354108 (t!354108 l!2982)))) ((as const (InoxSet B!2881)) true)))))

(assert (=> d!1264760 (= lt!1515263 e!2658091)))

(declare-fun c!729742 () Bool)

(assert (=> d!1264760 (= c!729742 ((_ is Nil!47395) (t!354108 (t!354108 l!2982))))))

(assert (=> d!1264760 (= (drop!2175 (t!354108 (t!354108 l!2982)) (- (- i!813 1) 1)) lt!1515263)))

(declare-fun bm!294371 () Bool)

(assert (=> bm!294371 (= call!294376 (size!34731 (t!354108 (t!354108 l!2982))))))

(declare-fun b!4281696 () Bool)

(assert (=> b!4281696 (= e!2658090 (drop!2175 (t!354108 (t!354108 (t!354108 l!2982))) (- (- (- i!813 1) 1) 1)))))

(declare-fun b!4281697 () Bool)

(declare-fun e!2658094 () Int)

(assert (=> b!4281697 (= e!2658094 (- call!294376 (- (- i!813 1) 1)))))

(declare-fun b!4281698 () Bool)

(assert (=> b!4281698 (= e!2658094 0)))

(declare-fun b!4281699 () Bool)

(assert (=> b!4281699 (= e!2658092 e!2658094)))

(declare-fun c!729740 () Bool)

(assert (=> b!4281699 (= c!729740 (>= (- (- i!813 1) 1) call!294376))))

(declare-fun b!4281700 () Bool)

(assert (=> b!4281700 (= e!2658093 (= (size!34731 lt!1515263) e!2658092))))

(declare-fun c!729741 () Bool)

(assert (=> b!4281700 (= c!729741 (<= (- (- i!813 1) 1) 0))))

(assert (= (and d!1264760 c!729742) b!4281695))

(assert (= (and d!1264760 (not c!729742)) b!4281693))

(assert (= (and b!4281693 c!729739) b!4281692))

(assert (= (and b!4281693 (not c!729739)) b!4281696))

(assert (= (and d!1264760 res!1757402) b!4281700))

(assert (= (and b!4281700 c!729741) b!4281694))

(assert (= (and b!4281700 (not c!729741)) b!4281699))

(assert (= (and b!4281699 c!729740) b!4281698))

(assert (= (and b!4281699 (not c!729740)) b!4281697))

(assert (= (or b!4281694 b!4281699 b!4281697) bm!294371))

(declare-fun m!4879061 () Bool)

(assert (=> d!1264760 m!4879061))

(assert (=> d!1264760 m!4879053))

(assert (=> bm!294371 m!4879045))

(declare-fun m!4879063 () Bool)

(assert (=> b!4281696 m!4879063))

(declare-fun m!4879065 () Bool)

(assert (=> b!4281700 m!4879065))

(assert (=> b!4281627 d!1264760))

(assert (=> d!1264730 d!1264736))

(assert (=> d!1264730 d!1264734))

(declare-fun b!4281701 () Bool)

(declare-fun e!2658095 () List!47519)

(assert (=> b!4281701 (= e!2658095 (t!354108 l!2982))))

(declare-fun b!4281702 () Bool)

(declare-fun e!2658096 () List!47519)

(assert (=> b!4281702 (= e!2658096 e!2658095)))

(declare-fun c!729743 () Bool)

(assert (=> b!4281702 (= c!729743 (<= (+ (- i!813 1) 1) 0))))

(declare-fun b!4281703 () Bool)

(declare-fun e!2658097 () Int)

(declare-fun call!294377 () Int)

(assert (=> b!4281703 (= e!2658097 call!294377)))

(declare-fun b!4281704 () Bool)

(assert (=> b!4281704 (= e!2658096 Nil!47395)))

(declare-fun d!1264762 () Bool)

(declare-fun e!2658098 () Bool)

(assert (=> d!1264762 e!2658098))

(declare-fun res!1757403 () Bool)

(assert (=> d!1264762 (=> (not res!1757403) (not e!2658098))))

(declare-fun lt!1515264 () List!47519)

(assert (=> d!1264762 (= res!1757403 (= ((_ map implies) (content!7510 lt!1515264) (content!7510 (t!354108 l!2982))) ((as const (InoxSet B!2881)) true)))))

(assert (=> d!1264762 (= lt!1515264 e!2658096)))

(declare-fun c!729746 () Bool)

(assert (=> d!1264762 (= c!729746 ((_ is Nil!47395) (t!354108 l!2982)))))

(assert (=> d!1264762 (= (drop!2175 (t!354108 l!2982) (+ (- i!813 1) 1)) lt!1515264)))

(declare-fun bm!294372 () Bool)

(assert (=> bm!294372 (= call!294377 (size!34731 (t!354108 l!2982)))))

(declare-fun b!4281705 () Bool)

(assert (=> b!4281705 (= e!2658095 (drop!2175 (t!354108 (t!354108 l!2982)) (- (+ (- i!813 1) 1) 1)))))

(declare-fun b!4281706 () Bool)

(declare-fun e!2658099 () Int)

(assert (=> b!4281706 (= e!2658099 (- call!294377 (+ (- i!813 1) 1)))))

(declare-fun b!4281707 () Bool)

(assert (=> b!4281707 (= e!2658099 0)))

(declare-fun b!4281708 () Bool)

(assert (=> b!4281708 (= e!2658097 e!2658099)))

(declare-fun c!729744 () Bool)

(assert (=> b!4281708 (= c!729744 (>= (+ (- i!813 1) 1) call!294377))))

(declare-fun b!4281709 () Bool)

(assert (=> b!4281709 (= e!2658098 (= (size!34731 lt!1515264) e!2658097))))

(declare-fun c!729745 () Bool)

(assert (=> b!4281709 (= c!729745 (<= (+ (- i!813 1) 1) 0))))

(assert (= (and d!1264762 c!729746) b!4281704))

(assert (= (and d!1264762 (not c!729746)) b!4281702))

(assert (= (and b!4281702 c!729743) b!4281701))

(assert (= (and b!4281702 (not c!729743)) b!4281705))

(assert (= (and d!1264762 res!1757403) b!4281709))

(assert (= (and b!4281709 c!729745) b!4281703))

(assert (= (and b!4281709 (not c!729745)) b!4281708))

(assert (= (and b!4281708 c!729744) b!4281707))

(assert (= (and b!4281708 (not c!729744)) b!4281706))

(assert (= (or b!4281703 b!4281708 b!4281706) bm!294372))

(declare-fun m!4879067 () Bool)

(assert (=> d!1264762 m!4879067))

(assert (=> d!1264762 m!4878997))

(assert (=> bm!294372 m!4878993))

(declare-fun m!4879069 () Bool)

(assert (=> b!4281705 m!4879069))

(declare-fun m!4879071 () Bool)

(assert (=> b!4281709 m!4879071))

(assert (=> d!1264730 d!1264762))

(declare-fun d!1264764 () Bool)

(assert (=> d!1264764 (= (tail!6882 (drop!2175 (t!354108 l!2982) (- i!813 1))) (drop!2175 (t!354108 l!2982) (+ (- i!813 1) 1)))))

(assert (=> d!1264764 true))

(declare-fun _$28!808 () Unit!66353)

(assert (=> d!1264764 (= (choose!26124 (t!354108 l!2982) (- i!813 1)) _$28!808)))

(declare-fun bs!602751 () Bool)

(assert (= bs!602751 d!1264764))

(assert (=> bs!602751 m!4878985))

(assert (=> bs!602751 m!4878985))

(assert (=> bs!602751 m!4878989))

(assert (=> bs!602751 m!4879011))

(assert (=> d!1264730 d!1264764))

(assert (=> b!4281672 d!1264750))

(declare-fun d!1264772 () Bool)

(declare-fun lt!1515267 () Int)

(assert (=> d!1264772 (>= lt!1515267 0)))

(declare-fun e!2658102 () Int)

(assert (=> d!1264772 (= lt!1515267 e!2658102)))

(declare-fun c!729749 () Bool)

(assert (=> d!1264772 (= c!729749 ((_ is Nil!47395) lt!1515245))))

(assert (=> d!1264772 (= (size!34731 lt!1515245) lt!1515267)))

(declare-fun b!4281714 () Bool)

(assert (=> b!4281714 (= e!2658102 0)))

(declare-fun b!4281715 () Bool)

(assert (=> b!4281715 (= e!2658102 (+ 1 (size!34731 (t!354108 lt!1515245))))))

(assert (= (and d!1264772 c!729749) b!4281714))

(assert (= (and d!1264772 (not c!729749)) b!4281715))

(declare-fun m!4879077 () Bool)

(assert (=> b!4281715 m!4879077))

(assert (=> b!4281608 d!1264772))

(assert (=> bm!294369 d!1264744))

(assert (=> b!4281622 d!1264750))

(declare-fun d!1264774 () Bool)

(declare-fun lt!1515268 () Int)

(assert (=> d!1264774 (>= lt!1515268 0)))

(declare-fun e!2658103 () Int)

(assert (=> d!1264774 (= lt!1515268 e!2658103)))

(declare-fun c!729750 () Bool)

(assert (=> d!1264774 (= c!729750 ((_ is Nil!47395) (t!354108 (t!354108 l!2982))))))

(assert (=> d!1264774 (= (size!34731 (t!354108 (t!354108 l!2982))) lt!1515268)))

(declare-fun b!4281716 () Bool)

(assert (=> b!4281716 (= e!2658103 0)))

(declare-fun b!4281717 () Bool)

(assert (=> b!4281717 (= e!2658103 (+ 1 (size!34731 (t!354108 (t!354108 (t!354108 l!2982))))))))

(assert (= (and d!1264774 c!729750) b!4281716))

(assert (= (and d!1264774 (not c!729750)) b!4281717))

(declare-fun m!4879079 () Bool)

(assert (=> b!4281717 m!4879079))

(assert (=> b!4281674 d!1264774))

(declare-fun b!4281720 () Bool)

(declare-fun e!2658104 () List!47519)

(assert (=> b!4281720 (= e!2658104 (t!354108 (t!354108 l!2982)))))

(declare-fun b!4281721 () Bool)

(declare-fun e!2658105 () List!47519)

(assert (=> b!4281721 (= e!2658105 e!2658104)))

(declare-fun c!729751 () Bool)

(assert (=> b!4281721 (= c!729751 (<= (- (+ 1 (- i!813 1)) 1) 0))))

(declare-fun b!4281722 () Bool)

(declare-fun e!2658106 () Int)

(declare-fun call!294378 () Int)

(assert (=> b!4281722 (= e!2658106 call!294378)))

(declare-fun b!4281723 () Bool)

(assert (=> b!4281723 (= e!2658105 Nil!47395)))

(declare-fun d!1264776 () Bool)

(declare-fun e!2658107 () Bool)

(assert (=> d!1264776 e!2658107))

(declare-fun res!1757404 () Bool)

(assert (=> d!1264776 (=> (not res!1757404) (not e!2658107))))

(declare-fun lt!1515269 () List!47519)

(assert (=> d!1264776 (= res!1757404 (= ((_ map implies) (content!7510 lt!1515269) (content!7510 (t!354108 (t!354108 l!2982)))) ((as const (InoxSet B!2881)) true)))))

(assert (=> d!1264776 (= lt!1515269 e!2658105)))

(declare-fun c!729754 () Bool)

(assert (=> d!1264776 (= c!729754 ((_ is Nil!47395) (t!354108 (t!354108 l!2982))))))

(assert (=> d!1264776 (= (drop!2175 (t!354108 (t!354108 l!2982)) (- (+ 1 (- i!813 1)) 1)) lt!1515269)))

(declare-fun bm!294373 () Bool)

(assert (=> bm!294373 (= call!294378 (size!34731 (t!354108 (t!354108 l!2982))))))

(declare-fun b!4281724 () Bool)

(assert (=> b!4281724 (= e!2658104 (drop!2175 (t!354108 (t!354108 (t!354108 l!2982))) (- (- (+ 1 (- i!813 1)) 1) 1)))))

(declare-fun b!4281725 () Bool)

(declare-fun e!2658108 () Int)

(assert (=> b!4281725 (= e!2658108 (- call!294378 (- (+ 1 (- i!813 1)) 1)))))

(declare-fun b!4281726 () Bool)

(assert (=> b!4281726 (= e!2658108 0)))

(declare-fun b!4281727 () Bool)

(assert (=> b!4281727 (= e!2658106 e!2658108)))

(declare-fun c!729752 () Bool)

(assert (=> b!4281727 (= c!729752 (>= (- (+ 1 (- i!813 1)) 1) call!294378))))

(declare-fun b!4281728 () Bool)

(assert (=> b!4281728 (= e!2658107 (= (size!34731 lt!1515269) e!2658106))))

(declare-fun c!729753 () Bool)

(assert (=> b!4281728 (= c!729753 (<= (- (+ 1 (- i!813 1)) 1) 0))))

(assert (= (and d!1264776 c!729754) b!4281723))

(assert (= (and d!1264776 (not c!729754)) b!4281721))

(assert (= (and b!4281721 c!729751) b!4281720))

(assert (= (and b!4281721 (not c!729751)) b!4281724))

(assert (= (and d!1264776 res!1757404) b!4281728))

(assert (= (and b!4281728 c!729753) b!4281722))

(assert (= (and b!4281728 (not c!729753)) b!4281727))

(assert (= (and b!4281727 c!729752) b!4281726))

(assert (= (and b!4281727 (not c!729752)) b!4281725))

(assert (= (or b!4281722 b!4281727 b!4281725) bm!294373))

(declare-fun m!4879081 () Bool)

(assert (=> d!1264776 m!4879081))

(assert (=> d!1264776 m!4879053))

(assert (=> bm!294373 m!4879045))

(declare-fun m!4879083 () Bool)

(assert (=> b!4281724 m!4879083))

(declare-fun m!4879085 () Bool)

(assert (=> b!4281728 m!4879085))

(assert (=> b!4281604 d!1264776))

(assert (=> bm!294367 d!1264750))

(declare-fun d!1264778 () Bool)

(declare-fun c!729757 () Bool)

(assert (=> d!1264778 (= c!729757 ((_ is Nil!47395) lt!1515255))))

(declare-fun e!2658111 () (InoxSet B!2881))

(assert (=> d!1264778 (= (content!7510 lt!1515255) e!2658111)))

(declare-fun b!4281731 () Bool)

(assert (=> b!4281731 (= e!2658111 ((as const (Array B!2881 Bool)) false))))

(declare-fun b!4281732 () Bool)

(assert (=> b!4281732 (= e!2658111 ((_ map or) (store ((as const (Array B!2881 Bool)) false) (h!52815 lt!1515255) true) (content!7510 (t!354108 lt!1515255))))))

(assert (= (and d!1264778 c!729757) b!4281731))

(assert (= (and d!1264778 (not c!729757)) b!4281732))

(declare-fun m!4879087 () Bool)

(assert (=> b!4281732 m!4879087))

(declare-fun m!4879089 () Bool)

(assert (=> b!4281732 m!4879089))

(assert (=> d!1264740 d!1264778))

(declare-fun d!1264780 () Bool)

(declare-fun c!729758 () Bool)

(assert (=> d!1264780 (= c!729758 ((_ is Nil!47395) l!2982))))

(declare-fun e!2658112 () (InoxSet B!2881))

(assert (=> d!1264780 (= (content!7510 l!2982) e!2658112)))

(declare-fun b!4281733 () Bool)

(assert (=> b!4281733 (= e!2658112 ((as const (Array B!2881 Bool)) false))))

(declare-fun b!4281734 () Bool)

(assert (=> b!4281734 (= e!2658112 ((_ map or) (store ((as const (Array B!2881 Bool)) false) (h!52815 l!2982) true) (content!7510 (t!354108 l!2982))))))

(assert (= (and d!1264780 c!729758) b!4281733))

(assert (= (and d!1264780 (not c!729758)) b!4281734))

(declare-fun m!4879091 () Bool)

(assert (=> b!4281734 m!4879091))

(assert (=> b!4281734 m!4878997))

(assert (=> d!1264740 d!1264780))

(declare-fun d!1264782 () Bool)

(declare-fun lt!1515270 () Int)

(assert (=> d!1264782 (>= lt!1515270 0)))

(declare-fun e!2658114 () Int)

(assert (=> d!1264782 (= lt!1515270 e!2658114)))

(declare-fun c!729760 () Bool)

(assert (=> d!1264782 (= c!729760 ((_ is Nil!47395) lt!1515255))))

(assert (=> d!1264782 (= (size!34731 lt!1515255) lt!1515270)))

(declare-fun b!4281737 () Bool)

(assert (=> b!4281737 (= e!2658114 0)))

(declare-fun b!4281738 () Bool)

(assert (=> b!4281738 (= e!2658114 (+ 1 (size!34731 (t!354108 lt!1515255))))))

(assert (= (and d!1264782 c!729760) b!4281737))

(assert (= (and d!1264782 (not c!729760)) b!4281738))

(declare-fun m!4879093 () Bool)

(assert (=> b!4281738 m!4879093))

(assert (=> b!4281650 d!1264782))

(assert (=> bm!294365 d!1264750))

(declare-fun b!4281739 () Bool)

(declare-fun e!2658115 () Bool)

(declare-fun tp!1309471 () Bool)

(assert (=> b!4281739 (= e!2658115 (and tp_is_empty!23029 tp!1309471))))

(assert (=> b!4281679 (= tp!1309470 e!2658115)))

(assert (= (and b!4281679 ((_ is Cons!47395) (t!354108 (t!354108 l!2982)))) b!4281739))

(check-sat (not b!4281717) (not bm!294371) (not b!4281689) (not b!4281709) (not b!4281687) (not b!4281738) tp_is_empty!23029 (not bm!294372) (not b!4281734) (not b!4281732) (not bm!294373) (not b!4281685) (not b!4281715) (not b!4281724) (not b!4281728) (not b!4281739) (not b!4281691) (not d!1264764) (not d!1264760) (not b!4281705) (not d!1264762) (not b!4281696) (not b!4281700) (not d!1264776))
(check-sat)
