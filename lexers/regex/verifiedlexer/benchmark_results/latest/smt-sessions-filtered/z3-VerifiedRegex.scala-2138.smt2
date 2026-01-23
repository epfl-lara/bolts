; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107296 () Bool)

(assert start!107296)

(declare-fun b!1204546 () Bool)

(declare-fun e!772820 () Bool)

(declare-datatypes ((T!22146 0))(
  ( (T!22147 (val!3940 Int)) )
))
(declare-datatypes ((List!12119 0))(
  ( (Nil!12095) (Cons!12095 (h!17496 T!22146) (t!112535 List!12119)) )
))
(declare-fun lt!411847 () List!12119)

(declare-fun call!84092 () List!12119)

(assert (=> b!1204546 (= e!772820 (= lt!411847 call!84092))))

(declare-fun b!1204547 () Bool)

(declare-fun e!772819 () Bool)

(declare-fun tp_is_empty!6083 () Bool)

(declare-fun tp!341857 () Bool)

(assert (=> b!1204547 (= e!772819 (and tp_is_empty!6083 tp!341857))))

(declare-fun b!1204548 () Bool)

(declare-fun res!542586 () Bool)

(declare-fun e!772823 () Bool)

(assert (=> b!1204548 (=> (not res!542586) (not e!772823))))

(declare-fun from!613 () Int)

(declare-fun until!61 () Int)

(assert (=> b!1204548 (= res!542586 (and (not (= from!613 0)) (<= 0 (- from!613 1)) (<= (- from!613 1) (- until!61 1))))))

(declare-fun b!1204549 () Bool)

(declare-fun e!772817 () List!12119)

(assert (=> b!1204549 (= e!772820 (= lt!411847 e!772817))))

(declare-fun c!201048 () Bool)

(declare-fun lt!411850 () Int)

(assert (=> b!1204549 (= c!201048 (<= (- until!61 1) lt!411850))))

(declare-fun b!1204550 () Bool)

(declare-fun e!772818 () Bool)

(declare-fun lt!411852 () List!12119)

(declare-fun size!9635 (List!12119) Int)

(assert (=> b!1204550 (= e!772818 (not (<= until!61 (size!9635 lt!411852))))))

(assert (=> b!1204550 e!772820))

(declare-fun c!201047 () Bool)

(assert (=> b!1204550 (= c!201047 (<= lt!411850 (- from!613 1)))))

(declare-fun lt!411851 () List!12119)

(declare-fun slice!507 (List!12119 Int Int) List!12119)

(assert (=> b!1204550 (= lt!411847 (slice!507 lt!411851 (- from!613 1) (- until!61 1)))))

(declare-fun r!2028 () List!12119)

(declare-fun lt!411845 () List!12119)

(declare-datatypes ((Unit!18492 0))(
  ( (Unit!18493) )
))
(declare-fun lt!411849 () Unit!18492)

(declare-fun sliceLemma!57 (List!12119 List!12119 Int Int) Unit!18492)

(assert (=> b!1204550 (= lt!411849 (sliceLemma!57 lt!411845 r!2028 (- from!613 1) (- until!61 1)))))

(declare-fun b!1204551 () Bool)

(declare-fun e!772822 () Bool)

(assert (=> b!1204551 (= e!772822 e!772823)))

(declare-fun res!542585 () Bool)

(assert (=> b!1204551 (=> (not res!542585) (not e!772823))))

(declare-fun tail!1722 (List!12119) List!12119)

(assert (=> b!1204551 (= res!542585 (= (tail!1722 lt!411852) lt!411851))))

(declare-fun ++!3119 (List!12119 List!12119) List!12119)

(assert (=> b!1204551 (= lt!411851 (++!3119 lt!411845 r!2028))))

(declare-fun l!2744 () List!12119)

(assert (=> b!1204551 (= lt!411845 (tail!1722 l!2744))))

(assert (=> b!1204551 (= lt!411852 (++!3119 l!2744 r!2028))))

(declare-fun bm!84087 () Bool)

(declare-fun call!84091 () List!12119)

(assert (=> bm!84087 (= call!84091 call!84092)))

(declare-fun b!1204552 () Bool)

(assert (=> b!1204552 (= e!772823 e!772818)))

(declare-fun res!542582 () Bool)

(assert (=> b!1204552 (=> (not res!542582) (not e!772818))))

(declare-fun lt!411846 () Int)

(assert (=> b!1204552 (= res!542582 (<= (- until!61 1) (+ lt!411850 lt!411846)))))

(assert (=> b!1204552 (= lt!411850 (size!9635 lt!411845))))

(declare-fun b!1204553 () Bool)

(assert (=> b!1204553 (= e!772817 (++!3119 call!84091 (slice!507 r!2028 0 (- (- until!61 1) lt!411850))))))

(declare-fun b!1204554 () Bool)

(assert (=> b!1204554 (= e!772817 call!84091)))

(declare-fun b!1204555 () Bool)

(declare-fun e!772824 () Bool)

(assert (=> b!1204555 (= e!772824 e!772822)))

(declare-fun res!542583 () Bool)

(assert (=> b!1204555 (=> (not res!542583) (not e!772822))))

(declare-fun lt!411848 () Int)

(assert (=> b!1204555 (= res!542583 (and (<= until!61 (+ lt!411848 lt!411846)) (not (= l!2744 Nil!12095)) (not (= r!2028 Nil!12095)) (not (= until!61 0))))))

(assert (=> b!1204555 (= lt!411846 (size!9635 r!2028))))

(assert (=> b!1204555 (= lt!411848 (size!9635 l!2744))))

(declare-fun b!1204556 () Bool)

(declare-fun e!772821 () Bool)

(declare-fun tp!341856 () Bool)

(assert (=> b!1204556 (= e!772821 (and tp_is_empty!6083 tp!341856))))

(declare-fun bm!84086 () Bool)

(assert (=> bm!84086 (= call!84092 (slice!507 (ite c!201047 r!2028 lt!411845) (ite c!201047 (- (- from!613 1) lt!411850) (- from!613 1)) (ite c!201047 (- (- until!61 1) lt!411850) (ite c!201048 (- until!61 1) lt!411850))))))

(declare-fun res!542584 () Bool)

(assert (=> start!107296 (=> (not res!542584) (not e!772824))))

(assert (=> start!107296 (= res!542584 (and (<= 0 from!613) (<= from!613 until!61)))))

(assert (=> start!107296 e!772824))

(assert (=> start!107296 true))

(assert (=> start!107296 e!772819))

(assert (=> start!107296 e!772821))

(assert (= (and start!107296 res!542584) b!1204555))

(assert (= (and b!1204555 res!542583) b!1204551))

(assert (= (and b!1204551 res!542585) b!1204548))

(assert (= (and b!1204548 res!542586) b!1204552))

(assert (= (and b!1204552 res!542582) b!1204550))

(assert (= (and b!1204550 c!201047) b!1204546))

(assert (= (and b!1204550 (not c!201047)) b!1204549))

(assert (= (and b!1204549 c!201048) b!1204554))

(assert (= (and b!1204549 (not c!201048)) b!1204553))

(assert (= (or b!1204554 b!1204553) bm!84087))

(assert (= (or b!1204546 bm!84087) bm!84086))

(get-info :version)

(assert (= (and start!107296 ((_ is Cons!12095) l!2744)) b!1204547))

(assert (= (and start!107296 ((_ is Cons!12095) r!2028)) b!1204556))

(declare-fun m!1379931 () Bool)

(assert (=> b!1204553 m!1379931))

(assert (=> b!1204553 m!1379931))

(declare-fun m!1379933 () Bool)

(assert (=> b!1204553 m!1379933))

(declare-fun m!1379935 () Bool)

(assert (=> bm!84086 m!1379935))

(declare-fun m!1379937 () Bool)

(assert (=> b!1204550 m!1379937))

(declare-fun m!1379939 () Bool)

(assert (=> b!1204550 m!1379939))

(declare-fun m!1379941 () Bool)

(assert (=> b!1204550 m!1379941))

(declare-fun m!1379943 () Bool)

(assert (=> b!1204551 m!1379943))

(declare-fun m!1379945 () Bool)

(assert (=> b!1204551 m!1379945))

(declare-fun m!1379947 () Bool)

(assert (=> b!1204551 m!1379947))

(declare-fun m!1379949 () Bool)

(assert (=> b!1204551 m!1379949))

(declare-fun m!1379951 () Bool)

(assert (=> b!1204555 m!1379951))

(declare-fun m!1379953 () Bool)

(assert (=> b!1204555 m!1379953))

(declare-fun m!1379955 () Bool)

(assert (=> b!1204552 m!1379955))

(check-sat (not b!1204556) (not b!1204550) (not bm!84086) tp_is_empty!6083 (not b!1204552) (not b!1204553) (not b!1204551) (not b!1204555) (not b!1204547))
(check-sat)
(get-model)

(declare-fun d!344249 () Bool)

(declare-fun lt!411857 () Int)

(assert (=> d!344249 (>= lt!411857 0)))

(declare-fun e!772829 () Int)

(assert (=> d!344249 (= lt!411857 e!772829)))

(declare-fun c!201053 () Bool)

(assert (=> d!344249 (= c!201053 ((_ is Nil!12095) lt!411845))))

(assert (=> d!344249 (= (size!9635 lt!411845) lt!411857)))

(declare-fun b!1204565 () Bool)

(assert (=> b!1204565 (= e!772829 0)))

(declare-fun b!1204566 () Bool)

(assert (=> b!1204566 (= e!772829 (+ 1 (size!9635 (t!112535 lt!411845))))))

(assert (= (and d!344249 c!201053) b!1204565))

(assert (= (and d!344249 (not c!201053)) b!1204566))

(declare-fun m!1379957 () Bool)

(assert (=> b!1204566 m!1379957))

(assert (=> b!1204552 d!344249))

(declare-fun d!344253 () Bool)

(assert (=> d!344253 (= (tail!1722 lt!411852) (t!112535 lt!411852))))

(assert (=> b!1204551 d!344253))

(declare-fun b!1204578 () Bool)

(declare-fun e!772836 () List!12119)

(assert (=> b!1204578 (= e!772836 (Cons!12095 (h!17496 lt!411845) (++!3119 (t!112535 lt!411845) r!2028)))))

(declare-fun b!1204579 () Bool)

(declare-fun res!542591 () Bool)

(declare-fun e!772835 () Bool)

(assert (=> b!1204579 (=> (not res!542591) (not e!772835))))

(declare-fun lt!411861 () List!12119)

(assert (=> b!1204579 (= res!542591 (= (size!9635 lt!411861) (+ (size!9635 lt!411845) (size!9635 r!2028))))))

(declare-fun d!344257 () Bool)

(assert (=> d!344257 e!772835))

(declare-fun res!542592 () Bool)

(assert (=> d!344257 (=> (not res!542592) (not e!772835))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1703 (List!12119) (InoxSet T!22146))

(assert (=> d!344257 (= res!542592 (= (content!1703 lt!411861) ((_ map or) (content!1703 lt!411845) (content!1703 r!2028))))))

(assert (=> d!344257 (= lt!411861 e!772836)))

(declare-fun c!201057 () Bool)

(assert (=> d!344257 (= c!201057 ((_ is Nil!12095) lt!411845))))

(assert (=> d!344257 (= (++!3119 lt!411845 r!2028) lt!411861)))

(declare-fun b!1204577 () Bool)

(assert (=> b!1204577 (= e!772836 r!2028)))

(declare-fun b!1204580 () Bool)

(assert (=> b!1204580 (= e!772835 (or (not (= r!2028 Nil!12095)) (= lt!411861 lt!411845)))))

(assert (= (and d!344257 c!201057) b!1204577))

(assert (= (and d!344257 (not c!201057)) b!1204578))

(assert (= (and d!344257 res!542592) b!1204579))

(assert (= (and b!1204579 res!542591) b!1204580))

(declare-fun m!1379965 () Bool)

(assert (=> b!1204578 m!1379965))

(declare-fun m!1379967 () Bool)

(assert (=> b!1204579 m!1379967))

(assert (=> b!1204579 m!1379955))

(assert (=> b!1204579 m!1379951))

(declare-fun m!1379969 () Bool)

(assert (=> d!344257 m!1379969))

(declare-fun m!1379971 () Bool)

(assert (=> d!344257 m!1379971))

(declare-fun m!1379973 () Bool)

(assert (=> d!344257 m!1379973))

(assert (=> b!1204551 d!344257))

(declare-fun d!344261 () Bool)

(assert (=> d!344261 (= (tail!1722 l!2744) (t!112535 l!2744))))

(assert (=> b!1204551 d!344261))

(declare-fun b!1204582 () Bool)

(declare-fun e!772838 () List!12119)

(assert (=> b!1204582 (= e!772838 (Cons!12095 (h!17496 l!2744) (++!3119 (t!112535 l!2744) r!2028)))))

(declare-fun b!1204583 () Bool)

(declare-fun res!542593 () Bool)

(declare-fun e!772837 () Bool)

(assert (=> b!1204583 (=> (not res!542593) (not e!772837))))

(declare-fun lt!411862 () List!12119)

(assert (=> b!1204583 (= res!542593 (= (size!9635 lt!411862) (+ (size!9635 l!2744) (size!9635 r!2028))))))

(declare-fun d!344263 () Bool)

(assert (=> d!344263 e!772837))

(declare-fun res!542594 () Bool)

(assert (=> d!344263 (=> (not res!542594) (not e!772837))))

(assert (=> d!344263 (= res!542594 (= (content!1703 lt!411862) ((_ map or) (content!1703 l!2744) (content!1703 r!2028))))))

(assert (=> d!344263 (= lt!411862 e!772838)))

(declare-fun c!201058 () Bool)

(assert (=> d!344263 (= c!201058 ((_ is Nil!12095) l!2744))))

(assert (=> d!344263 (= (++!3119 l!2744 r!2028) lt!411862)))

(declare-fun b!1204581 () Bool)

(assert (=> b!1204581 (= e!772838 r!2028)))

(declare-fun b!1204584 () Bool)

(assert (=> b!1204584 (= e!772837 (or (not (= r!2028 Nil!12095)) (= lt!411862 l!2744)))))

(assert (= (and d!344263 c!201058) b!1204581))

(assert (= (and d!344263 (not c!201058)) b!1204582))

(assert (= (and d!344263 res!542594) b!1204583))

(assert (= (and b!1204583 res!542593) b!1204584))

(declare-fun m!1379975 () Bool)

(assert (=> b!1204582 m!1379975))

(declare-fun m!1379977 () Bool)

(assert (=> b!1204583 m!1379977))

(assert (=> b!1204583 m!1379953))

(assert (=> b!1204583 m!1379951))

(declare-fun m!1379979 () Bool)

(assert (=> d!344263 m!1379979))

(declare-fun m!1379981 () Bool)

(assert (=> d!344263 m!1379981))

(assert (=> d!344263 m!1379973))

(assert (=> b!1204551 d!344263))

(declare-fun d!344265 () Bool)

(declare-fun lt!411863 () Int)

(assert (=> d!344265 (>= lt!411863 0)))

(declare-fun e!772839 () Int)

(assert (=> d!344265 (= lt!411863 e!772839)))

(declare-fun c!201059 () Bool)

(assert (=> d!344265 (= c!201059 ((_ is Nil!12095) r!2028))))

(assert (=> d!344265 (= (size!9635 r!2028) lt!411863)))

(declare-fun b!1204585 () Bool)

(assert (=> b!1204585 (= e!772839 0)))

(declare-fun b!1204586 () Bool)

(assert (=> b!1204586 (= e!772839 (+ 1 (size!9635 (t!112535 r!2028))))))

(assert (= (and d!344265 c!201059) b!1204585))

(assert (= (and d!344265 (not c!201059)) b!1204586))

(declare-fun m!1379983 () Bool)

(assert (=> b!1204586 m!1379983))

(assert (=> b!1204555 d!344265))

(declare-fun d!344267 () Bool)

(declare-fun lt!411864 () Int)

(assert (=> d!344267 (>= lt!411864 0)))

(declare-fun e!772840 () Int)

(assert (=> d!344267 (= lt!411864 e!772840)))

(declare-fun c!201060 () Bool)

(assert (=> d!344267 (= c!201060 ((_ is Nil!12095) l!2744))))

(assert (=> d!344267 (= (size!9635 l!2744) lt!411864)))

(declare-fun b!1204587 () Bool)

(assert (=> b!1204587 (= e!772840 0)))

(declare-fun b!1204588 () Bool)

(assert (=> b!1204588 (= e!772840 (+ 1 (size!9635 (t!112535 l!2744))))))

(assert (= (and d!344267 c!201060) b!1204587))

(assert (= (and d!344267 (not c!201060)) b!1204588))

(declare-fun m!1379985 () Bool)

(assert (=> b!1204588 m!1379985))

(assert (=> b!1204555 d!344267))

(declare-fun d!344269 () Bool)

(declare-fun lt!411865 () Int)

(assert (=> d!344269 (>= lt!411865 0)))

(declare-fun e!772841 () Int)

(assert (=> d!344269 (= lt!411865 e!772841)))

(declare-fun c!201061 () Bool)

(assert (=> d!344269 (= c!201061 ((_ is Nil!12095) lt!411852))))

(assert (=> d!344269 (= (size!9635 lt!411852) lt!411865)))

(declare-fun b!1204589 () Bool)

(assert (=> b!1204589 (= e!772841 0)))

(declare-fun b!1204590 () Bool)

(assert (=> b!1204590 (= e!772841 (+ 1 (size!9635 (t!112535 lt!411852))))))

(assert (= (and d!344269 c!201061) b!1204589))

(assert (= (and d!344269 (not c!201061)) b!1204590))

(declare-fun m!1379987 () Bool)

(assert (=> b!1204590 m!1379987))

(assert (=> b!1204550 d!344269))

(declare-fun d!344271 () Bool)

(declare-fun take!140 (List!12119 Int) List!12119)

(declare-fun drop!612 (List!12119 Int) List!12119)

(assert (=> d!344271 (= (slice!507 lt!411851 (- from!613 1) (- until!61 1)) (take!140 (drop!612 lt!411851 (- from!613 1)) (- (- until!61 1) (- from!613 1))))))

(declare-fun bs!288412 () Bool)

(assert (= bs!288412 d!344271))

(declare-fun m!1379989 () Bool)

(assert (=> bs!288412 m!1379989))

(assert (=> bs!288412 m!1379989))

(declare-fun m!1379991 () Bool)

(assert (=> bs!288412 m!1379991))

(assert (=> b!1204550 d!344271))

(declare-fun e!772868 () Int)

(declare-fun c!201081 () Bool)

(declare-fun call!84109 () List!12119)

(declare-fun bm!84103 () Bool)

(declare-fun call!84108 () Int)

(assert (=> bm!84103 (= call!84109 (slice!507 (ite c!201081 r!2028 lt!411845) (ite c!201081 (- (- from!613 1) call!84108) (- from!613 1)) (ite c!201081 (- (- until!61 1) call!84108) e!772868)))))

(declare-fun d!344273 () Bool)

(declare-fun e!772866 () List!12119)

(assert (=> d!344273 (= (slice!507 (++!3119 lt!411845 r!2028) (- from!613 1) (- until!61 1)) e!772866)))

(assert (=> d!344273 (= c!201081 (<= (size!9635 lt!411845) (- from!613 1)))))

(declare-fun lt!411874 () Unit!18492)

(declare-fun choose!7744 (List!12119 List!12119 Int Int) Unit!18492)

(assert (=> d!344273 (= lt!411874 (choose!7744 lt!411845 r!2028 (- from!613 1) (- until!61 1)))))

(declare-fun e!772865 () Bool)

(assert (=> d!344273 e!772865))

(declare-fun res!542600 () Bool)

(assert (=> d!344273 (=> (not res!542600) (not e!772865))))

(assert (=> d!344273 (= res!542600 (and (<= 0 (- from!613 1)) (<= (- from!613 1) (- until!61 1))))))

(assert (=> d!344273 (= (sliceLemma!57 lt!411845 r!2028 (- from!613 1) (- until!61 1)) lt!411874)))

(declare-fun bm!84104 () Bool)

(assert (=> bm!84104 (= call!84108 (size!9635 lt!411845))))

(declare-fun b!1204632 () Bool)

(assert (=> b!1204632 (= e!772866 call!84109)))

(declare-fun b!1204633 () Bool)

(assert (=> b!1204633 (= e!772865 (<= (- until!61 1) (+ (size!9635 lt!411845) (size!9635 r!2028))))))

(declare-fun b!1204634 () Bool)

(declare-fun e!772867 () List!12119)

(assert (=> b!1204634 (= e!772866 e!772867)))

(declare-fun c!201082 () Bool)

(assert (=> b!1204634 (= c!201082 (<= (- until!61 1) call!84108))))

(declare-fun b!1204635 () Bool)

(assert (=> b!1204635 (= e!772868 (- until!61 1))))

(declare-fun b!1204636 () Bool)

(declare-fun call!84110 () List!12119)

(assert (=> b!1204636 (= e!772867 call!84110)))

(declare-fun bm!84105 () Bool)

(declare-fun c!201080 () Bool)

(assert (=> bm!84105 (= c!201080 c!201082)))

(assert (=> bm!84105 (= call!84110 call!84109)))

(declare-fun b!1204637 () Bool)

(assert (=> b!1204637 (= e!772867 (++!3119 call!84110 (slice!507 r!2028 0 (- (- until!61 1) call!84108))))))

(declare-fun b!1204638 () Bool)

(assert (=> b!1204638 (= e!772868 call!84108)))

(assert (= (and d!344273 res!542600) b!1204633))

(assert (= (and d!344273 c!201081) b!1204632))

(assert (= (and d!344273 (not c!201081)) b!1204634))

(assert (= (and b!1204634 c!201082) b!1204636))

(assert (= (and b!1204634 (not c!201082)) b!1204637))

(assert (= (or b!1204636 b!1204637) bm!84105))

(assert (= (and bm!84105 c!201080) b!1204635))

(assert (= (and bm!84105 (not c!201080)) b!1204638))

(assert (= (or b!1204632 b!1204634 b!1204637 b!1204638) bm!84104))

(assert (= (or b!1204632 bm!84105) bm!84103))

(assert (=> d!344273 m!1379945))

(assert (=> d!344273 m!1379945))

(declare-fun m!1380013 () Bool)

(assert (=> d!344273 m!1380013))

(assert (=> d!344273 m!1379955))

(declare-fun m!1380015 () Bool)

(assert (=> d!344273 m!1380015))

(assert (=> b!1204633 m!1379955))

(assert (=> b!1204633 m!1379951))

(declare-fun m!1380017 () Bool)

(assert (=> b!1204637 m!1380017))

(assert (=> b!1204637 m!1380017))

(declare-fun m!1380019 () Bool)

(assert (=> b!1204637 m!1380019))

(declare-fun m!1380021 () Bool)

(assert (=> bm!84103 m!1380021))

(assert (=> bm!84104 m!1379955))

(assert (=> b!1204550 d!344273))

(declare-fun d!344285 () Bool)

(assert (=> d!344285 (= (slice!507 (ite c!201047 r!2028 lt!411845) (ite c!201047 (- (- from!613 1) lt!411850) (- from!613 1)) (ite c!201047 (- (- until!61 1) lt!411850) (ite c!201048 (- until!61 1) lt!411850))) (take!140 (drop!612 (ite c!201047 r!2028 lt!411845) (ite c!201047 (- (- from!613 1) lt!411850) (- from!613 1))) (- (ite c!201047 (- (- until!61 1) lt!411850) (ite c!201048 (- until!61 1) lt!411850)) (ite c!201047 (- (- from!613 1) lt!411850) (- from!613 1)))))))

(declare-fun bs!288414 () Bool)

(assert (= bs!288414 d!344285))

(declare-fun m!1380023 () Bool)

(assert (=> bs!288414 m!1380023))

(assert (=> bs!288414 m!1380023))

(declare-fun m!1380025 () Bool)

(assert (=> bs!288414 m!1380025))

(assert (=> bm!84086 d!344285))

(declare-fun e!772870 () List!12119)

(declare-fun b!1204640 () Bool)

(assert (=> b!1204640 (= e!772870 (Cons!12095 (h!17496 call!84091) (++!3119 (t!112535 call!84091) (slice!507 r!2028 0 (- (- until!61 1) lt!411850)))))))

(declare-fun b!1204641 () Bool)

(declare-fun res!542601 () Bool)

(declare-fun e!772869 () Bool)

(assert (=> b!1204641 (=> (not res!542601) (not e!772869))))

(declare-fun lt!411875 () List!12119)

(assert (=> b!1204641 (= res!542601 (= (size!9635 lt!411875) (+ (size!9635 call!84091) (size!9635 (slice!507 r!2028 0 (- (- until!61 1) lt!411850))))))))

(declare-fun d!344287 () Bool)

(assert (=> d!344287 e!772869))

(declare-fun res!542602 () Bool)

(assert (=> d!344287 (=> (not res!542602) (not e!772869))))

(assert (=> d!344287 (= res!542602 (= (content!1703 lt!411875) ((_ map or) (content!1703 call!84091) (content!1703 (slice!507 r!2028 0 (- (- until!61 1) lt!411850))))))))

(assert (=> d!344287 (= lt!411875 e!772870)))

(declare-fun c!201083 () Bool)

(assert (=> d!344287 (= c!201083 ((_ is Nil!12095) call!84091))))

(assert (=> d!344287 (= (++!3119 call!84091 (slice!507 r!2028 0 (- (- until!61 1) lt!411850))) lt!411875)))

(declare-fun b!1204639 () Bool)

(assert (=> b!1204639 (= e!772870 (slice!507 r!2028 0 (- (- until!61 1) lt!411850)))))

(declare-fun b!1204642 () Bool)

(assert (=> b!1204642 (= e!772869 (or (not (= (slice!507 r!2028 0 (- (- until!61 1) lt!411850)) Nil!12095)) (= lt!411875 call!84091)))))

(assert (= (and d!344287 c!201083) b!1204639))

(assert (= (and d!344287 (not c!201083)) b!1204640))

(assert (= (and d!344287 res!542602) b!1204641))

(assert (= (and b!1204641 res!542601) b!1204642))

(assert (=> b!1204640 m!1379931))

(declare-fun m!1380027 () Bool)

(assert (=> b!1204640 m!1380027))

(declare-fun m!1380029 () Bool)

(assert (=> b!1204641 m!1380029))

(declare-fun m!1380031 () Bool)

(assert (=> b!1204641 m!1380031))

(assert (=> b!1204641 m!1379931))

(declare-fun m!1380033 () Bool)

(assert (=> b!1204641 m!1380033))

(declare-fun m!1380035 () Bool)

(assert (=> d!344287 m!1380035))

(declare-fun m!1380037 () Bool)

(assert (=> d!344287 m!1380037))

(assert (=> d!344287 m!1379931))

(declare-fun m!1380039 () Bool)

(assert (=> d!344287 m!1380039))

(assert (=> b!1204553 d!344287))

(declare-fun d!344289 () Bool)

(assert (=> d!344289 (= (slice!507 r!2028 0 (- (- until!61 1) lt!411850)) (take!140 (drop!612 r!2028 0) (- (- (- until!61 1) lt!411850) 0)))))

(declare-fun bs!288415 () Bool)

(assert (= bs!288415 d!344289))

(declare-fun m!1380041 () Bool)

(assert (=> bs!288415 m!1380041))

(assert (=> bs!288415 m!1380041))

(declare-fun m!1380043 () Bool)

(assert (=> bs!288415 m!1380043))

(assert (=> b!1204553 d!344289))

(declare-fun b!1204651 () Bool)

(declare-fun e!772875 () Bool)

(declare-fun tp!341860 () Bool)

(assert (=> b!1204651 (= e!772875 (and tp_is_empty!6083 tp!341860))))

(assert (=> b!1204556 (= tp!341856 e!772875)))

(assert (= (and b!1204556 ((_ is Cons!12095) (t!112535 r!2028))) b!1204651))

(declare-fun b!1204652 () Bool)

(declare-fun e!772878 () Bool)

(declare-fun tp!341861 () Bool)

(assert (=> b!1204652 (= e!772878 (and tp_is_empty!6083 tp!341861))))

(assert (=> b!1204547 (= tp!341857 e!772878)))

(assert (= (and b!1204547 ((_ is Cons!12095) (t!112535 l!2744))) b!1204652))

(check-sat (not d!344263) (not b!1204637) (not b!1204583) (not b!1204652) (not b!1204633) (not b!1204566) (not d!344285) (not b!1204640) (not d!344287) (not b!1204651) (not b!1204588) (not b!1204590) (not d!344257) (not bm!84103) (not d!344271) (not d!344273) tp_is_empty!6083 (not b!1204641) (not d!344289) (not b!1204586) (not b!1204579) (not b!1204578) (not bm!84104) (not b!1204582))
(check-sat)
