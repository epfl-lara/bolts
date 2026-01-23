; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!187458 () Bool)

(assert start!187458)

(declare-fun b!1871650 () Bool)

(declare-fun e!1194064 () Bool)

(declare-fun e!1194065 () Bool)

(assert (=> b!1871650 (= e!1194064 e!1194065)))

(declare-fun res!837843 () Bool)

(assert (=> b!1871650 (=> (not res!837843) (not e!1194065))))

(declare-datatypes ((T!33508 0))(
  ( (T!33509 (val!5998 Int)) )
))
(declare-datatypes ((List!20815 0))(
  ( (Nil!20733) (Cons!20733 (h!26134 T!33508) (t!173032 List!20815)) )
))
(declare-fun l!2791 () List!20815)

(declare-fun lt!719513 () List!20815)

(declare-fun lt!719517 () Int)

(declare-fun slice!607 (List!20815 Int Int) List!20815)

(assert (=> b!1871650 (= res!837843 (= lt!719513 (slice!607 (t!173032 l!2791) 0 lt!719517)))))

(declare-fun lt!719515 () Int)

(assert (=> b!1871650 (= lt!719513 (slice!607 l!2791 1 lt!719515))))

(declare-fun size!16466 (List!20815) Int)

(assert (=> b!1871650 (= lt!719517 (size!16466 (t!173032 l!2791)))))

(declare-fun b!1871651 () Bool)

(declare-fun e!1194067 () Bool)

(declare-fun tp_is_empty!8775 () Bool)

(declare-fun tp!532405 () Bool)

(assert (=> b!1871651 (= e!1194067 (and tp_is_empty!8775 tp!532405))))

(declare-fun b!1871652 () Bool)

(declare-fun lt!719514 () List!20815)

(assert (=> b!1871652 (= e!1194065 (not (= lt!719514 lt!719513)))))

(declare-fun tail!2869 (List!20815) List!20815)

(assert (=> b!1871652 (= (tail!2869 (t!173032 l!2791)) (slice!607 (t!173032 l!2791) 1 lt!719517))))

(declare-datatypes ((Unit!35327 0))(
  ( (Unit!35328) )
))
(declare-fun lt!719516 () Unit!35327)

(declare-fun sliceTailLemma!46 (List!20815) Unit!35327)

(assert (=> b!1871652 (= lt!719516 (sliceTailLemma!46 (t!173032 l!2791)))))

(declare-fun res!837842 () Bool)

(declare-fun e!1194066 () Bool)

(assert (=> start!187458 (=> (not res!837842) (not e!1194066))))

(get-info :version)

(assert (=> start!187458 (= res!837842 (and (> lt!719515 0) (not ((_ is Nil!20733) l!2791))))))

(assert (=> start!187458 (= lt!719515 (size!16466 l!2791))))

(assert (=> start!187458 e!1194066))

(assert (=> start!187458 e!1194067))

(declare-fun b!1871653 () Bool)

(assert (=> b!1871653 (= e!1194066 e!1194064)))

(declare-fun res!837844 () Bool)

(assert (=> b!1871653 (=> (not res!837844) (not e!1194064))))

(assert (=> b!1871653 (= res!837844 (= lt!719514 (t!173032 l!2791)))))

(assert (=> b!1871653 (= lt!719514 (tail!2869 l!2791))))

(declare-fun b!1871654 () Bool)

(declare-fun res!837845 () Bool)

(assert (=> b!1871654 (=> (not res!837845) (not e!1194065))))

(assert (=> b!1871654 (= res!837845 (> lt!719517 0))))

(assert (= (and start!187458 res!837842) b!1871653))

(assert (= (and b!1871653 res!837844) b!1871650))

(assert (= (and b!1871650 res!837843) b!1871654))

(assert (= (and b!1871654 res!837845) b!1871652))

(assert (= (and start!187458 ((_ is Cons!20733) l!2791)) b!1871651))

(declare-fun m!2297549 () Bool)

(assert (=> b!1871650 m!2297549))

(declare-fun m!2297551 () Bool)

(assert (=> b!1871650 m!2297551))

(declare-fun m!2297553 () Bool)

(assert (=> b!1871650 m!2297553))

(declare-fun m!2297555 () Bool)

(assert (=> b!1871652 m!2297555))

(declare-fun m!2297557 () Bool)

(assert (=> b!1871652 m!2297557))

(declare-fun m!2297559 () Bool)

(assert (=> b!1871652 m!2297559))

(declare-fun m!2297561 () Bool)

(assert (=> start!187458 m!2297561))

(declare-fun m!2297563 () Bool)

(assert (=> b!1871653 m!2297563))

(check-sat tp_is_empty!8775 (not b!1871650) (not start!187458) (not b!1871653) (not b!1871651) (not b!1871652))
(check-sat)
(get-model)

(declare-fun d!572166 () Bool)

(assert (=> d!572166 (= (tail!2869 l!2791) (t!173032 l!2791))))

(assert (=> b!1871653 d!572166))

(declare-fun d!572168 () Bool)

(declare-fun lt!719520 () Int)

(assert (=> d!572168 (>= lt!719520 0)))

(declare-fun e!1194070 () Int)

(assert (=> d!572168 (= lt!719520 e!1194070)))

(declare-fun c!305006 () Bool)

(assert (=> d!572168 (= c!305006 ((_ is Nil!20733) l!2791))))

(assert (=> d!572168 (= (size!16466 l!2791) lt!719520)))

(declare-fun b!1871659 () Bool)

(assert (=> b!1871659 (= e!1194070 0)))

(declare-fun b!1871660 () Bool)

(assert (=> b!1871660 (= e!1194070 (+ 1 (size!16466 (t!173032 l!2791))))))

(assert (= (and d!572168 c!305006) b!1871659))

(assert (= (and d!572168 (not c!305006)) b!1871660))

(assert (=> b!1871660 m!2297553))

(assert (=> start!187458 d!572168))

(declare-fun d!572172 () Bool)

(assert (=> d!572172 (= (tail!2869 (t!173032 l!2791)) (t!173032 (t!173032 l!2791)))))

(assert (=> b!1871652 d!572172))

(declare-fun d!572174 () Bool)

(declare-fun take!172 (List!20815 Int) List!20815)

(declare-fun drop!999 (List!20815 Int) List!20815)

(assert (=> d!572174 (= (slice!607 (t!173032 l!2791) 1 lt!719517) (take!172 (drop!999 (t!173032 l!2791) 1) (- lt!719517 1)))))

(declare-fun bs!412024 () Bool)

(assert (= bs!412024 d!572174))

(declare-fun m!2297565 () Bool)

(assert (=> bs!412024 m!2297565))

(assert (=> bs!412024 m!2297565))

(declare-fun m!2297567 () Bool)

(assert (=> bs!412024 m!2297567))

(assert (=> b!1871652 d!572174))

(declare-fun d!572178 () Bool)

(assert (=> d!572178 (= (tail!2869 (t!173032 l!2791)) (slice!607 (t!173032 l!2791) 1 (size!16466 (t!173032 l!2791))))))

(declare-fun lt!719527 () Unit!35327)

(declare-fun choose!11752 (List!20815) Unit!35327)

(assert (=> d!572178 (= lt!719527 (choose!11752 (t!173032 l!2791)))))

(assert (=> d!572178 (> (size!16466 (t!173032 l!2791)) 0)))

(assert (=> d!572178 (= (sliceTailLemma!46 (t!173032 l!2791)) lt!719527)))

(declare-fun bs!412028 () Bool)

(assert (= bs!412028 d!572178))

(assert (=> bs!412028 m!2297555))

(assert (=> bs!412028 m!2297553))

(assert (=> bs!412028 m!2297553))

(declare-fun m!2297583 () Bool)

(assert (=> bs!412028 m!2297583))

(declare-fun m!2297585 () Bool)

(assert (=> bs!412028 m!2297585))

(assert (=> b!1871652 d!572178))

(declare-fun d!572192 () Bool)

(assert (=> d!572192 (= (slice!607 (t!173032 l!2791) 0 lt!719517) (take!172 (drop!999 (t!173032 l!2791) 0) (- lt!719517 0)))))

(declare-fun bs!412029 () Bool)

(assert (= bs!412029 d!572192))

(declare-fun m!2297587 () Bool)

(assert (=> bs!412029 m!2297587))

(assert (=> bs!412029 m!2297587))

(declare-fun m!2297589 () Bool)

(assert (=> bs!412029 m!2297589))

(assert (=> b!1871650 d!572192))

(declare-fun d!572194 () Bool)

(assert (=> d!572194 (= (slice!607 l!2791 1 lt!719515) (take!172 (drop!999 l!2791 1) (- lt!719515 1)))))

(declare-fun bs!412030 () Bool)

(assert (= bs!412030 d!572194))

(declare-fun m!2297591 () Bool)

(assert (=> bs!412030 m!2297591))

(assert (=> bs!412030 m!2297591))

(declare-fun m!2297593 () Bool)

(assert (=> bs!412030 m!2297593))

(assert (=> b!1871650 d!572194))

(declare-fun d!572196 () Bool)

(declare-fun lt!719528 () Int)

(assert (=> d!572196 (>= lt!719528 0)))

(declare-fun e!1194075 () Int)

(assert (=> d!572196 (= lt!719528 e!1194075)))

(declare-fun c!305011 () Bool)

(assert (=> d!572196 (= c!305011 ((_ is Nil!20733) (t!173032 l!2791)))))

(assert (=> d!572196 (= (size!16466 (t!173032 l!2791)) lt!719528)))

(declare-fun b!1871669 () Bool)

(assert (=> b!1871669 (= e!1194075 0)))

(declare-fun b!1871670 () Bool)

(assert (=> b!1871670 (= e!1194075 (+ 1 (size!16466 (t!173032 (t!173032 l!2791)))))))

(assert (= (and d!572196 c!305011) b!1871669))

(assert (= (and d!572196 (not c!305011)) b!1871670))

(declare-fun m!2297595 () Bool)

(assert (=> b!1871670 m!2297595))

(assert (=> b!1871650 d!572196))

(declare-fun b!1871675 () Bool)

(declare-fun e!1194078 () Bool)

(declare-fun tp!532408 () Bool)

(assert (=> b!1871675 (= e!1194078 (and tp_is_empty!8775 tp!532408))))

(assert (=> b!1871651 (= tp!532405 e!1194078)))

(assert (= (and b!1871651 ((_ is Cons!20733) (t!173032 l!2791))) b!1871675))

(check-sat (not b!1871670) tp_is_empty!8775 (not b!1871675) (not d!572194) (not b!1871660) (not d!572178) (not d!572192) (not d!572174))
(check-sat)
(get-model)

(declare-fun b!1871695 () Bool)

(declare-fun e!1194091 () Int)

(assert (=> b!1871695 (= e!1194091 (- lt!719517 0))))

(declare-fun b!1871696 () Bool)

(declare-fun e!1194093 () Int)

(assert (=> b!1871696 (= e!1194093 0)))

(declare-fun b!1871698 () Bool)

(declare-fun e!1194090 () List!20815)

(assert (=> b!1871698 (= e!1194090 (Cons!20733 (h!26134 (drop!999 (t!173032 l!2791) 0)) (take!172 (t!173032 (drop!999 (t!173032 l!2791) 0)) (- (- lt!719517 0) 1))))))

(declare-fun b!1871699 () Bool)

(assert (=> b!1871699 (= e!1194090 Nil!20733)))

(declare-fun b!1871700 () Bool)

(assert (=> b!1871700 (= e!1194091 (size!16466 (drop!999 (t!173032 l!2791) 0)))))

(declare-fun b!1871701 () Bool)

(declare-fun e!1194092 () Bool)

(declare-fun lt!719534 () List!20815)

(assert (=> b!1871701 (= e!1194092 (= (size!16466 lt!719534) e!1194093))))

(declare-fun c!305018 () Bool)

(assert (=> b!1871701 (= c!305018 (<= (- lt!719517 0) 0))))

(declare-fun d!572198 () Bool)

(assert (=> d!572198 e!1194092))

(declare-fun res!837848 () Bool)

(assert (=> d!572198 (=> (not res!837848) (not e!1194092))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3090 (List!20815) (InoxSet T!33508))

(assert (=> d!572198 (= res!837848 (= ((_ map implies) (content!3090 lt!719534) (content!3090 (drop!999 (t!173032 l!2791) 0))) ((as const (InoxSet T!33508)) true)))))

(assert (=> d!572198 (= lt!719534 e!1194090)))

(declare-fun c!305019 () Bool)

(assert (=> d!572198 (= c!305019 (or ((_ is Nil!20733) (drop!999 (t!173032 l!2791) 0)) (<= (- lt!719517 0) 0)))))

(assert (=> d!572198 (= (take!172 (drop!999 (t!173032 l!2791) 0) (- lt!719517 0)) lt!719534)))

(declare-fun b!1871697 () Bool)

(assert (=> b!1871697 (= e!1194093 e!1194091)))

(declare-fun c!305020 () Bool)

(assert (=> b!1871697 (= c!305020 (>= (- lt!719517 0) (size!16466 (drop!999 (t!173032 l!2791) 0))))))

(assert (= (and d!572198 c!305019) b!1871699))

(assert (= (and d!572198 (not c!305019)) b!1871698))

(assert (= (and d!572198 res!837848) b!1871701))

(assert (= (and b!1871701 c!305018) b!1871696))

(assert (= (and b!1871701 (not c!305018)) b!1871697))

(assert (= (and b!1871697 c!305020) b!1871700))

(assert (= (and b!1871697 (not c!305020)) b!1871695))

(declare-fun m!2297601 () Bool)

(assert (=> b!1871701 m!2297601))

(declare-fun m!2297603 () Bool)

(assert (=> d!572198 m!2297603))

(assert (=> d!572198 m!2297587))

(declare-fun m!2297605 () Bool)

(assert (=> d!572198 m!2297605))

(declare-fun m!2297607 () Bool)

(assert (=> b!1871698 m!2297607))

(assert (=> b!1871700 m!2297587))

(declare-fun m!2297609 () Bool)

(assert (=> b!1871700 m!2297609))

(assert (=> b!1871697 m!2297587))

(assert (=> b!1871697 m!2297609))

(assert (=> d!572192 d!572198))

(declare-fun bm!116063 () Bool)

(declare-fun call!116068 () Int)

(assert (=> bm!116063 (= call!116068 (size!16466 (t!173032 l!2791)))))

(declare-fun b!1871720 () Bool)

(declare-fun e!1194104 () Int)

(assert (=> b!1871720 (= e!1194104 (- call!116068 0))))

(declare-fun b!1871721 () Bool)

(assert (=> b!1871721 (= e!1194104 0)))

(declare-fun b!1871722 () Bool)

(declare-fun e!1194108 () List!20815)

(assert (=> b!1871722 (= e!1194108 (drop!999 (t!173032 (t!173032 l!2791)) (- 0 1)))))

(declare-fun b!1871723 () Bool)

(declare-fun e!1194107 () Int)

(assert (=> b!1871723 (= e!1194107 call!116068)))

(declare-fun b!1871724 () Bool)

(declare-fun e!1194105 () Bool)

(declare-fun lt!719537 () List!20815)

(assert (=> b!1871724 (= e!1194105 (= (size!16466 lt!719537) e!1194107))))

(declare-fun c!305029 () Bool)

(assert (=> b!1871724 (= c!305029 (<= 0 0))))

(declare-fun b!1871726 () Bool)

(declare-fun e!1194106 () List!20815)

(assert (=> b!1871726 (= e!1194106 Nil!20733)))

(declare-fun b!1871727 () Bool)

(assert (=> b!1871727 (= e!1194107 e!1194104)))

(declare-fun c!305032 () Bool)

(assert (=> b!1871727 (= c!305032 (>= 0 call!116068))))

(declare-fun b!1871728 () Bool)

(assert (=> b!1871728 (= e!1194106 e!1194108)))

(declare-fun c!305031 () Bool)

(assert (=> b!1871728 (= c!305031 (<= 0 0))))

(declare-fun d!572200 () Bool)

(assert (=> d!572200 e!1194105))

(declare-fun res!837851 () Bool)

(assert (=> d!572200 (=> (not res!837851) (not e!1194105))))

(assert (=> d!572200 (= res!837851 (= ((_ map implies) (content!3090 lt!719537) (content!3090 (t!173032 l!2791))) ((as const (InoxSet T!33508)) true)))))

(assert (=> d!572200 (= lt!719537 e!1194106)))

(declare-fun c!305030 () Bool)

(assert (=> d!572200 (= c!305030 ((_ is Nil!20733) (t!173032 l!2791)))))

(assert (=> d!572200 (= (drop!999 (t!173032 l!2791) 0) lt!719537)))

(declare-fun b!1871725 () Bool)

(assert (=> b!1871725 (= e!1194108 (t!173032 l!2791))))

(assert (= (and d!572200 c!305030) b!1871726))

(assert (= (and d!572200 (not c!305030)) b!1871728))

(assert (= (and b!1871728 c!305031) b!1871725))

(assert (= (and b!1871728 (not c!305031)) b!1871722))

(assert (= (and d!572200 res!837851) b!1871724))

(assert (= (and b!1871724 c!305029) b!1871723))

(assert (= (and b!1871724 (not c!305029)) b!1871727))

(assert (= (and b!1871727 c!305032) b!1871721))

(assert (= (and b!1871727 (not c!305032)) b!1871720))

(assert (= (or b!1871723 b!1871727 b!1871720) bm!116063))

(assert (=> bm!116063 m!2297553))

(declare-fun m!2297611 () Bool)

(assert (=> b!1871722 m!2297611))

(declare-fun m!2297613 () Bool)

(assert (=> b!1871724 m!2297613))

(declare-fun m!2297615 () Bool)

(assert (=> d!572200 m!2297615))

(declare-fun m!2297617 () Bool)

(assert (=> d!572200 m!2297617))

(assert (=> d!572192 d!572200))

(declare-fun b!1871729 () Bool)

(declare-fun e!1194110 () Int)

(assert (=> b!1871729 (= e!1194110 (- lt!719517 1))))

(declare-fun b!1871730 () Bool)

(declare-fun e!1194112 () Int)

(assert (=> b!1871730 (= e!1194112 0)))

(declare-fun b!1871732 () Bool)

(declare-fun e!1194109 () List!20815)

(assert (=> b!1871732 (= e!1194109 (Cons!20733 (h!26134 (drop!999 (t!173032 l!2791) 1)) (take!172 (t!173032 (drop!999 (t!173032 l!2791) 1)) (- (- lt!719517 1) 1))))))

(declare-fun b!1871733 () Bool)

(assert (=> b!1871733 (= e!1194109 Nil!20733)))

(declare-fun b!1871734 () Bool)

(assert (=> b!1871734 (= e!1194110 (size!16466 (drop!999 (t!173032 l!2791) 1)))))

(declare-fun b!1871735 () Bool)

(declare-fun e!1194111 () Bool)

(declare-fun lt!719538 () List!20815)

(assert (=> b!1871735 (= e!1194111 (= (size!16466 lt!719538) e!1194112))))

(declare-fun c!305033 () Bool)

(assert (=> b!1871735 (= c!305033 (<= (- lt!719517 1) 0))))

(declare-fun d!572204 () Bool)

(assert (=> d!572204 e!1194111))

(declare-fun res!837852 () Bool)

(assert (=> d!572204 (=> (not res!837852) (not e!1194111))))

(assert (=> d!572204 (= res!837852 (= ((_ map implies) (content!3090 lt!719538) (content!3090 (drop!999 (t!173032 l!2791) 1))) ((as const (InoxSet T!33508)) true)))))

(assert (=> d!572204 (= lt!719538 e!1194109)))

(declare-fun c!305034 () Bool)

(assert (=> d!572204 (= c!305034 (or ((_ is Nil!20733) (drop!999 (t!173032 l!2791) 1)) (<= (- lt!719517 1) 0)))))

(assert (=> d!572204 (= (take!172 (drop!999 (t!173032 l!2791) 1) (- lt!719517 1)) lt!719538)))

(declare-fun b!1871731 () Bool)

(assert (=> b!1871731 (= e!1194112 e!1194110)))

(declare-fun c!305035 () Bool)

(assert (=> b!1871731 (= c!305035 (>= (- lt!719517 1) (size!16466 (drop!999 (t!173032 l!2791) 1))))))

(assert (= (and d!572204 c!305034) b!1871733))

(assert (= (and d!572204 (not c!305034)) b!1871732))

(assert (= (and d!572204 res!837852) b!1871735))

(assert (= (and b!1871735 c!305033) b!1871730))

(assert (= (and b!1871735 (not c!305033)) b!1871731))

(assert (= (and b!1871731 c!305035) b!1871734))

(assert (= (and b!1871731 (not c!305035)) b!1871729))

(declare-fun m!2297619 () Bool)

(assert (=> b!1871735 m!2297619))

(declare-fun m!2297621 () Bool)

(assert (=> d!572204 m!2297621))

(assert (=> d!572204 m!2297565))

(declare-fun m!2297623 () Bool)

(assert (=> d!572204 m!2297623))

(declare-fun m!2297625 () Bool)

(assert (=> b!1871732 m!2297625))

(assert (=> b!1871734 m!2297565))

(declare-fun m!2297627 () Bool)

(assert (=> b!1871734 m!2297627))

(assert (=> b!1871731 m!2297565))

(assert (=> b!1871731 m!2297627))

(assert (=> d!572174 d!572204))

(declare-fun bm!116064 () Bool)

(declare-fun call!116069 () Int)

(assert (=> bm!116064 (= call!116069 (size!16466 (t!173032 l!2791)))))

(declare-fun b!1871736 () Bool)

(declare-fun e!1194113 () Int)

(assert (=> b!1871736 (= e!1194113 (- call!116069 1))))

(declare-fun b!1871737 () Bool)

(assert (=> b!1871737 (= e!1194113 0)))

(declare-fun b!1871738 () Bool)

(declare-fun e!1194117 () List!20815)

(assert (=> b!1871738 (= e!1194117 (drop!999 (t!173032 (t!173032 l!2791)) (- 1 1)))))

(declare-fun b!1871739 () Bool)

(declare-fun e!1194116 () Int)

(assert (=> b!1871739 (= e!1194116 call!116069)))

(declare-fun b!1871740 () Bool)

(declare-fun e!1194114 () Bool)

(declare-fun lt!719539 () List!20815)

(assert (=> b!1871740 (= e!1194114 (= (size!16466 lt!719539) e!1194116))))

(declare-fun c!305036 () Bool)

(assert (=> b!1871740 (= c!305036 (<= 1 0))))

(declare-fun b!1871742 () Bool)

(declare-fun e!1194115 () List!20815)

(assert (=> b!1871742 (= e!1194115 Nil!20733)))

(declare-fun b!1871743 () Bool)

(assert (=> b!1871743 (= e!1194116 e!1194113)))

(declare-fun c!305039 () Bool)

(assert (=> b!1871743 (= c!305039 (>= 1 call!116069))))

(declare-fun b!1871744 () Bool)

(assert (=> b!1871744 (= e!1194115 e!1194117)))

(declare-fun c!305038 () Bool)

(assert (=> b!1871744 (= c!305038 (<= 1 0))))

(declare-fun d!572206 () Bool)

(assert (=> d!572206 e!1194114))

(declare-fun res!837853 () Bool)

(assert (=> d!572206 (=> (not res!837853) (not e!1194114))))

(assert (=> d!572206 (= res!837853 (= ((_ map implies) (content!3090 lt!719539) (content!3090 (t!173032 l!2791))) ((as const (InoxSet T!33508)) true)))))

(assert (=> d!572206 (= lt!719539 e!1194115)))

(declare-fun c!305037 () Bool)

(assert (=> d!572206 (= c!305037 ((_ is Nil!20733) (t!173032 l!2791)))))

(assert (=> d!572206 (= (drop!999 (t!173032 l!2791) 1) lt!719539)))

(declare-fun b!1871741 () Bool)

(assert (=> b!1871741 (= e!1194117 (t!173032 l!2791))))

(assert (= (and d!572206 c!305037) b!1871742))

(assert (= (and d!572206 (not c!305037)) b!1871744))

(assert (= (and b!1871744 c!305038) b!1871741))

(assert (= (and b!1871744 (not c!305038)) b!1871738))

(assert (= (and d!572206 res!837853) b!1871740))

(assert (= (and b!1871740 c!305036) b!1871739))

(assert (= (and b!1871740 (not c!305036)) b!1871743))

(assert (= (and b!1871743 c!305039) b!1871737))

(assert (= (and b!1871743 (not c!305039)) b!1871736))

(assert (= (or b!1871739 b!1871743 b!1871736) bm!116064))

(assert (=> bm!116064 m!2297553))

(declare-fun m!2297629 () Bool)

(assert (=> b!1871738 m!2297629))

(declare-fun m!2297631 () Bool)

(assert (=> b!1871740 m!2297631))

(declare-fun m!2297633 () Bool)

(assert (=> d!572206 m!2297633))

(assert (=> d!572206 m!2297617))

(assert (=> d!572174 d!572206))

(assert (=> b!1871660 d!572196))

(declare-fun d!572208 () Bool)

(declare-fun lt!719540 () Int)

(assert (=> d!572208 (>= lt!719540 0)))

(declare-fun e!1194118 () Int)

(assert (=> d!572208 (= lt!719540 e!1194118)))

(declare-fun c!305040 () Bool)

(assert (=> d!572208 (= c!305040 ((_ is Nil!20733) (t!173032 (t!173032 l!2791))))))

(assert (=> d!572208 (= (size!16466 (t!173032 (t!173032 l!2791))) lt!719540)))

(declare-fun b!1871745 () Bool)

(assert (=> b!1871745 (= e!1194118 0)))

(declare-fun b!1871746 () Bool)

(assert (=> b!1871746 (= e!1194118 (+ 1 (size!16466 (t!173032 (t!173032 (t!173032 l!2791))))))))

(assert (= (and d!572208 c!305040) b!1871745))

(assert (= (and d!572208 (not c!305040)) b!1871746))

(declare-fun m!2297635 () Bool)

(assert (=> b!1871746 m!2297635))

(assert (=> b!1871670 d!572208))

(assert (=> d!572178 d!572172))

(declare-fun d!572210 () Bool)

(assert (=> d!572210 (= (slice!607 (t!173032 l!2791) 1 (size!16466 (t!173032 l!2791))) (take!172 (drop!999 (t!173032 l!2791) 1) (- (size!16466 (t!173032 l!2791)) 1)))))

(declare-fun bs!412032 () Bool)

(assert (= bs!412032 d!572210))

(assert (=> bs!412032 m!2297565))

(assert (=> bs!412032 m!2297565))

(declare-fun m!2297637 () Bool)

(assert (=> bs!412032 m!2297637))

(assert (=> d!572178 d!572210))

(assert (=> d!572178 d!572196))

(declare-fun d!572212 () Bool)

(assert (=> d!572212 (= (tail!2869 (t!173032 l!2791)) (slice!607 (t!173032 l!2791) 1 (size!16466 (t!173032 l!2791))))))

(assert (=> d!572212 true))

(declare-fun _$13!1424 () Unit!35327)

(assert (=> d!572212 (= (choose!11752 (t!173032 l!2791)) _$13!1424)))

(declare-fun bs!412033 () Bool)

(assert (= bs!412033 d!572212))

(assert (=> bs!412033 m!2297555))

(assert (=> bs!412033 m!2297553))

(assert (=> bs!412033 m!2297553))

(assert (=> bs!412033 m!2297583))

(assert (=> d!572178 d!572212))

(declare-fun b!1871761 () Bool)

(declare-fun e!1194128 () Int)

(assert (=> b!1871761 (= e!1194128 (- lt!719515 1))))

(declare-fun b!1871762 () Bool)

(declare-fun e!1194130 () Int)

(assert (=> b!1871762 (= e!1194130 0)))

(declare-fun b!1871764 () Bool)

(declare-fun e!1194127 () List!20815)

(assert (=> b!1871764 (= e!1194127 (Cons!20733 (h!26134 (drop!999 l!2791 1)) (take!172 (t!173032 (drop!999 l!2791 1)) (- (- lt!719515 1) 1))))))

(declare-fun b!1871765 () Bool)

(assert (=> b!1871765 (= e!1194127 Nil!20733)))

(declare-fun b!1871766 () Bool)

(assert (=> b!1871766 (= e!1194128 (size!16466 (drop!999 l!2791 1)))))

(declare-fun b!1871767 () Bool)

(declare-fun e!1194129 () Bool)

(declare-fun lt!719543 () List!20815)

(assert (=> b!1871767 (= e!1194129 (= (size!16466 lt!719543) e!1194130))))

(declare-fun c!305047 () Bool)

(assert (=> b!1871767 (= c!305047 (<= (- lt!719515 1) 0))))

(declare-fun d!572214 () Bool)

(assert (=> d!572214 e!1194129))

(declare-fun res!837856 () Bool)

(assert (=> d!572214 (=> (not res!837856) (not e!1194129))))

(assert (=> d!572214 (= res!837856 (= ((_ map implies) (content!3090 lt!719543) (content!3090 (drop!999 l!2791 1))) ((as const (InoxSet T!33508)) true)))))

(assert (=> d!572214 (= lt!719543 e!1194127)))

(declare-fun c!305048 () Bool)

(assert (=> d!572214 (= c!305048 (or ((_ is Nil!20733) (drop!999 l!2791 1)) (<= (- lt!719515 1) 0)))))

(assert (=> d!572214 (= (take!172 (drop!999 l!2791 1) (- lt!719515 1)) lt!719543)))

(declare-fun b!1871763 () Bool)

(assert (=> b!1871763 (= e!1194130 e!1194128)))

(declare-fun c!305049 () Bool)

(assert (=> b!1871763 (= c!305049 (>= (- lt!719515 1) (size!16466 (drop!999 l!2791 1))))))

(assert (= (and d!572214 c!305048) b!1871765))

(assert (= (and d!572214 (not c!305048)) b!1871764))

(assert (= (and d!572214 res!837856) b!1871767))

(assert (= (and b!1871767 c!305047) b!1871762))

(assert (= (and b!1871767 (not c!305047)) b!1871763))

(assert (= (and b!1871763 c!305049) b!1871766))

(assert (= (and b!1871763 (not c!305049)) b!1871761))

(declare-fun m!2297639 () Bool)

(assert (=> b!1871767 m!2297639))

(declare-fun m!2297641 () Bool)

(assert (=> d!572214 m!2297641))

(assert (=> d!572214 m!2297591))

(declare-fun m!2297643 () Bool)

(assert (=> d!572214 m!2297643))

(declare-fun m!2297645 () Bool)

(assert (=> b!1871764 m!2297645))

(assert (=> b!1871766 m!2297591))

(declare-fun m!2297647 () Bool)

(assert (=> b!1871766 m!2297647))

(assert (=> b!1871763 m!2297591))

(assert (=> b!1871763 m!2297647))

(assert (=> d!572194 d!572214))

(declare-fun bm!116065 () Bool)

(declare-fun call!116070 () Int)

(assert (=> bm!116065 (= call!116070 (size!16466 l!2791))))

(declare-fun b!1871768 () Bool)

(declare-fun e!1194131 () Int)

(assert (=> b!1871768 (= e!1194131 (- call!116070 1))))

(declare-fun b!1871769 () Bool)

(assert (=> b!1871769 (= e!1194131 0)))

(declare-fun b!1871770 () Bool)

(declare-fun e!1194135 () List!20815)

(assert (=> b!1871770 (= e!1194135 (drop!999 (t!173032 l!2791) (- 1 1)))))

(declare-fun b!1871771 () Bool)

(declare-fun e!1194134 () Int)

(assert (=> b!1871771 (= e!1194134 call!116070)))

(declare-fun b!1871772 () Bool)

(declare-fun e!1194132 () Bool)

(declare-fun lt!719544 () List!20815)

(assert (=> b!1871772 (= e!1194132 (= (size!16466 lt!719544) e!1194134))))

(declare-fun c!305050 () Bool)

(assert (=> b!1871772 (= c!305050 (<= 1 0))))

(declare-fun b!1871774 () Bool)

(declare-fun e!1194133 () List!20815)

(assert (=> b!1871774 (= e!1194133 Nil!20733)))

(declare-fun b!1871775 () Bool)

(assert (=> b!1871775 (= e!1194134 e!1194131)))

(declare-fun c!305053 () Bool)

(assert (=> b!1871775 (= c!305053 (>= 1 call!116070))))

(declare-fun b!1871776 () Bool)

(assert (=> b!1871776 (= e!1194133 e!1194135)))

(declare-fun c!305052 () Bool)

(assert (=> b!1871776 (= c!305052 (<= 1 0))))

(declare-fun d!572216 () Bool)

(assert (=> d!572216 e!1194132))

(declare-fun res!837857 () Bool)

(assert (=> d!572216 (=> (not res!837857) (not e!1194132))))

(assert (=> d!572216 (= res!837857 (= ((_ map implies) (content!3090 lt!719544) (content!3090 l!2791)) ((as const (InoxSet T!33508)) true)))))

(assert (=> d!572216 (= lt!719544 e!1194133)))

(declare-fun c!305051 () Bool)

(assert (=> d!572216 (= c!305051 ((_ is Nil!20733) l!2791))))

(assert (=> d!572216 (= (drop!999 l!2791 1) lt!719544)))

(declare-fun b!1871773 () Bool)

(assert (=> b!1871773 (= e!1194135 l!2791)))

(assert (= (and d!572216 c!305051) b!1871774))

(assert (= (and d!572216 (not c!305051)) b!1871776))

(assert (= (and b!1871776 c!305052) b!1871773))

(assert (= (and b!1871776 (not c!305052)) b!1871770))

(assert (= (and d!572216 res!837857) b!1871772))

(assert (= (and b!1871772 c!305050) b!1871771))

(assert (= (and b!1871772 (not c!305050)) b!1871775))

(assert (= (and b!1871775 c!305053) b!1871769))

(assert (= (and b!1871775 (not c!305053)) b!1871768))

(assert (= (or b!1871771 b!1871775 b!1871768) bm!116065))

(assert (=> bm!116065 m!2297561))

(declare-fun m!2297649 () Bool)

(assert (=> b!1871770 m!2297649))

(declare-fun m!2297651 () Bool)

(assert (=> b!1871772 m!2297651))

(declare-fun m!2297653 () Bool)

(assert (=> d!572216 m!2297653))

(declare-fun m!2297655 () Bool)

(assert (=> d!572216 m!2297655))

(assert (=> d!572194 d!572216))

(declare-fun b!1871777 () Bool)

(declare-fun e!1194136 () Bool)

(declare-fun tp!532412 () Bool)

(assert (=> b!1871777 (= e!1194136 (and tp_is_empty!8775 tp!532412))))

(assert (=> b!1871675 (= tp!532408 e!1194136)))

(assert (= (and b!1871675 ((_ is Cons!20733) (t!173032 (t!173032 l!2791)))) b!1871777))

(check-sat (not b!1871740) (not b!1871746) (not bm!116065) (not b!1871722) (not b!1871767) (not d!572204) (not b!1871698) (not d!572214) (not b!1871724) (not d!572200) (not d!572206) tp_is_empty!8775 (not b!1871777) (not b!1871764) (not b!1871734) (not bm!116063) (not b!1871763) (not d!572216) (not b!1871731) (not d!572212) (not b!1871735) (not bm!116064) (not d!572198) (not b!1871766) (not b!1871700) (not b!1871697) (not b!1871772) (not d!572210) (not b!1871738) (not b!1871701) (not b!1871770) (not b!1871732))
(check-sat)
(get-model)

(declare-fun d!572234 () Bool)

(declare-fun lt!719554 () Int)

(assert (=> d!572234 (>= lt!719554 0)))

(declare-fun e!1194176 () Int)

(assert (=> d!572234 (= lt!719554 e!1194176)))

(declare-fun c!305084 () Bool)

(assert (=> d!572234 (= c!305084 ((_ is Nil!20733) lt!719544))))

(assert (=> d!572234 (= (size!16466 lt!719544) lt!719554)))

(declare-fun b!1871847 () Bool)

(assert (=> b!1871847 (= e!1194176 0)))

(declare-fun b!1871848 () Bool)

(assert (=> b!1871848 (= e!1194176 (+ 1 (size!16466 (t!173032 lt!719544))))))

(assert (= (and d!572234 c!305084) b!1871847))

(assert (= (and d!572234 (not c!305084)) b!1871848))

(declare-fun m!2297713 () Bool)

(assert (=> b!1871848 m!2297713))

(assert (=> b!1871772 d!572234))

(declare-fun d!572236 () Bool)

(declare-fun lt!719555 () Int)

(assert (=> d!572236 (>= lt!719555 0)))

(declare-fun e!1194177 () Int)

(assert (=> d!572236 (= lt!719555 e!1194177)))

(declare-fun c!305085 () Bool)

(assert (=> d!572236 (= c!305085 ((_ is Nil!20733) (drop!999 (t!173032 l!2791) 1)))))

(assert (=> d!572236 (= (size!16466 (drop!999 (t!173032 l!2791) 1)) lt!719555)))

(declare-fun b!1871849 () Bool)

(assert (=> b!1871849 (= e!1194177 0)))

(declare-fun b!1871850 () Bool)

(assert (=> b!1871850 (= e!1194177 (+ 1 (size!16466 (t!173032 (drop!999 (t!173032 l!2791) 1)))))))

(assert (= (and d!572236 c!305085) b!1871849))

(assert (= (and d!572236 (not c!305085)) b!1871850))

(declare-fun m!2297715 () Bool)

(assert (=> b!1871850 m!2297715))

(assert (=> b!1871731 d!572236))

(declare-fun d!572238 () Bool)

(declare-fun lt!719556 () Int)

(assert (=> d!572238 (>= lt!719556 0)))

(declare-fun e!1194178 () Int)

(assert (=> d!572238 (= lt!719556 e!1194178)))

(declare-fun c!305086 () Bool)

(assert (=> d!572238 (= c!305086 ((_ is Nil!20733) lt!719534))))

(assert (=> d!572238 (= (size!16466 lt!719534) lt!719556)))

(declare-fun b!1871851 () Bool)

(assert (=> b!1871851 (= e!1194178 0)))

(declare-fun b!1871852 () Bool)

(assert (=> b!1871852 (= e!1194178 (+ 1 (size!16466 (t!173032 lt!719534))))))

(assert (= (and d!572238 c!305086) b!1871851))

(assert (= (and d!572238 (not c!305086)) b!1871852))

(declare-fun m!2297717 () Bool)

(assert (=> b!1871852 m!2297717))

(assert (=> b!1871701 d!572238))

(declare-fun b!1871853 () Bool)

(declare-fun e!1194180 () Int)

(assert (=> b!1871853 (= e!1194180 (- (- lt!719517 1) 1))))

(declare-fun b!1871854 () Bool)

(declare-fun e!1194182 () Int)

(assert (=> b!1871854 (= e!1194182 0)))

(declare-fun b!1871856 () Bool)

(declare-fun e!1194179 () List!20815)

(assert (=> b!1871856 (= e!1194179 (Cons!20733 (h!26134 (t!173032 (drop!999 (t!173032 l!2791) 1))) (take!172 (t!173032 (t!173032 (drop!999 (t!173032 l!2791) 1))) (- (- (- lt!719517 1) 1) 1))))))

(declare-fun b!1871857 () Bool)

(assert (=> b!1871857 (= e!1194179 Nil!20733)))

(declare-fun b!1871858 () Bool)

(assert (=> b!1871858 (= e!1194180 (size!16466 (t!173032 (drop!999 (t!173032 l!2791) 1))))))

(declare-fun b!1871859 () Bool)

(declare-fun e!1194181 () Bool)

(declare-fun lt!719557 () List!20815)

(assert (=> b!1871859 (= e!1194181 (= (size!16466 lt!719557) e!1194182))))

(declare-fun c!305087 () Bool)

(assert (=> b!1871859 (= c!305087 (<= (- (- lt!719517 1) 1) 0))))

(declare-fun d!572240 () Bool)

(assert (=> d!572240 e!1194181))

(declare-fun res!837866 () Bool)

(assert (=> d!572240 (=> (not res!837866) (not e!1194181))))

(assert (=> d!572240 (= res!837866 (= ((_ map implies) (content!3090 lt!719557) (content!3090 (t!173032 (drop!999 (t!173032 l!2791) 1)))) ((as const (InoxSet T!33508)) true)))))

(assert (=> d!572240 (= lt!719557 e!1194179)))

(declare-fun c!305088 () Bool)

(assert (=> d!572240 (= c!305088 (or ((_ is Nil!20733) (t!173032 (drop!999 (t!173032 l!2791) 1))) (<= (- (- lt!719517 1) 1) 0)))))

(assert (=> d!572240 (= (take!172 (t!173032 (drop!999 (t!173032 l!2791) 1)) (- (- lt!719517 1) 1)) lt!719557)))

(declare-fun b!1871855 () Bool)

(assert (=> b!1871855 (= e!1194182 e!1194180)))

(declare-fun c!305089 () Bool)

(assert (=> b!1871855 (= c!305089 (>= (- (- lt!719517 1) 1) (size!16466 (t!173032 (drop!999 (t!173032 l!2791) 1)))))))

(assert (= (and d!572240 c!305088) b!1871857))

(assert (= (and d!572240 (not c!305088)) b!1871856))

(assert (= (and d!572240 res!837866) b!1871859))

(assert (= (and b!1871859 c!305087) b!1871854))

(assert (= (and b!1871859 (not c!305087)) b!1871855))

(assert (= (and b!1871855 c!305089) b!1871858))

(assert (= (and b!1871855 (not c!305089)) b!1871853))

(declare-fun m!2297719 () Bool)

(assert (=> b!1871859 m!2297719))

(declare-fun m!2297721 () Bool)

(assert (=> d!572240 m!2297721))

(declare-fun m!2297723 () Bool)

(assert (=> d!572240 m!2297723))

(declare-fun m!2297725 () Bool)

(assert (=> b!1871856 m!2297725))

(assert (=> b!1871858 m!2297715))

(assert (=> b!1871855 m!2297715))

(assert (=> b!1871732 d!572240))

(declare-fun d!572242 () Bool)

(declare-fun lt!719558 () Int)

(assert (=> d!572242 (>= lt!719558 0)))

(declare-fun e!1194183 () Int)

(assert (=> d!572242 (= lt!719558 e!1194183)))

(declare-fun c!305090 () Bool)

(assert (=> d!572242 (= c!305090 ((_ is Nil!20733) lt!719538))))

(assert (=> d!572242 (= (size!16466 lt!719538) lt!719558)))

(declare-fun b!1871860 () Bool)

(assert (=> b!1871860 (= e!1194183 0)))

(declare-fun b!1871861 () Bool)

(assert (=> b!1871861 (= e!1194183 (+ 1 (size!16466 (t!173032 lt!719538))))))

(assert (= (and d!572242 c!305090) b!1871860))

(assert (= (and d!572242 (not c!305090)) b!1871861))

(declare-fun m!2297727 () Bool)

(assert (=> b!1871861 m!2297727))

(assert (=> b!1871735 d!572242))

(declare-fun d!572244 () Bool)

(declare-fun c!305093 () Bool)

(assert (=> d!572244 (= c!305093 ((_ is Nil!20733) lt!719544))))

(declare-fun e!1194186 () (InoxSet T!33508))

(assert (=> d!572244 (= (content!3090 lt!719544) e!1194186)))

(declare-fun b!1871866 () Bool)

(assert (=> b!1871866 (= e!1194186 ((as const (Array T!33508 Bool)) false))))

(declare-fun b!1871867 () Bool)

(assert (=> b!1871867 (= e!1194186 ((_ map or) (store ((as const (Array T!33508 Bool)) false) (h!26134 lt!719544) true) (content!3090 (t!173032 lt!719544))))))

(assert (= (and d!572244 c!305093) b!1871866))

(assert (= (and d!572244 (not c!305093)) b!1871867))

(declare-fun m!2297729 () Bool)

(assert (=> b!1871867 m!2297729))

(declare-fun m!2297731 () Bool)

(assert (=> b!1871867 m!2297731))

(assert (=> d!572216 d!572244))

(declare-fun d!572246 () Bool)

(declare-fun c!305094 () Bool)

(assert (=> d!572246 (= c!305094 ((_ is Nil!20733) l!2791))))

(declare-fun e!1194187 () (InoxSet T!33508))

(assert (=> d!572246 (= (content!3090 l!2791) e!1194187)))

(declare-fun b!1871868 () Bool)

(assert (=> b!1871868 (= e!1194187 ((as const (Array T!33508 Bool)) false))))

(declare-fun b!1871869 () Bool)

(assert (=> b!1871869 (= e!1194187 ((_ map or) (store ((as const (Array T!33508 Bool)) false) (h!26134 l!2791) true) (content!3090 (t!173032 l!2791))))))

(assert (= (and d!572246 c!305094) b!1871868))

(assert (= (and d!572246 (not c!305094)) b!1871869))

(declare-fun m!2297733 () Bool)

(assert (=> b!1871869 m!2297733))

(assert (=> b!1871869 m!2297617))

(assert (=> d!572216 d!572246))

(assert (=> b!1871734 d!572236))

(assert (=> d!572212 d!572172))

(assert (=> d!572212 d!572210))

(assert (=> d!572212 d!572196))

(declare-fun d!572248 () Bool)

(declare-fun lt!719559 () Int)

(assert (=> d!572248 (>= lt!719559 0)))

(declare-fun e!1194188 () Int)

(assert (=> d!572248 (= lt!719559 e!1194188)))

(declare-fun c!305095 () Bool)

(assert (=> d!572248 (= c!305095 ((_ is Nil!20733) (drop!999 (t!173032 l!2791) 0)))))

(assert (=> d!572248 (= (size!16466 (drop!999 (t!173032 l!2791) 0)) lt!719559)))

(declare-fun b!1871870 () Bool)

(assert (=> b!1871870 (= e!1194188 0)))

(declare-fun b!1871871 () Bool)

(assert (=> b!1871871 (= e!1194188 (+ 1 (size!16466 (t!173032 (drop!999 (t!173032 l!2791) 0)))))))

(assert (= (and d!572248 c!305095) b!1871870))

(assert (= (and d!572248 (not c!305095)) b!1871871))

(declare-fun m!2297735 () Bool)

(assert (=> b!1871871 m!2297735))

(assert (=> b!1871697 d!572248))

(assert (=> bm!116065 d!572168))

(declare-fun d!572250 () Bool)

(declare-fun c!305096 () Bool)

(assert (=> d!572250 (= c!305096 ((_ is Nil!20733) lt!719539))))

(declare-fun e!1194189 () (InoxSet T!33508))

(assert (=> d!572250 (= (content!3090 lt!719539) e!1194189)))

(declare-fun b!1871872 () Bool)

(assert (=> b!1871872 (= e!1194189 ((as const (Array T!33508 Bool)) false))))

(declare-fun b!1871873 () Bool)

(assert (=> b!1871873 (= e!1194189 ((_ map or) (store ((as const (Array T!33508 Bool)) false) (h!26134 lt!719539) true) (content!3090 (t!173032 lt!719539))))))

(assert (= (and d!572250 c!305096) b!1871872))

(assert (= (and d!572250 (not c!305096)) b!1871873))

(declare-fun m!2297737 () Bool)

(assert (=> b!1871873 m!2297737))

(declare-fun m!2297739 () Bool)

(assert (=> b!1871873 m!2297739))

(assert (=> d!572206 d!572250))

(declare-fun d!572252 () Bool)

(declare-fun c!305097 () Bool)

(assert (=> d!572252 (= c!305097 ((_ is Nil!20733) (t!173032 l!2791)))))

(declare-fun e!1194190 () (InoxSet T!33508))

(assert (=> d!572252 (= (content!3090 (t!173032 l!2791)) e!1194190)))

(declare-fun b!1871874 () Bool)

(assert (=> b!1871874 (= e!1194190 ((as const (Array T!33508 Bool)) false))))

(declare-fun b!1871875 () Bool)

(assert (=> b!1871875 (= e!1194190 ((_ map or) (store ((as const (Array T!33508 Bool)) false) (h!26134 (t!173032 l!2791)) true) (content!3090 (t!173032 (t!173032 l!2791)))))))

(assert (= (and d!572252 c!305097) b!1871874))

(assert (= (and d!572252 (not c!305097)) b!1871875))

(declare-fun m!2297741 () Bool)

(assert (=> b!1871875 m!2297741))

(declare-fun m!2297743 () Bool)

(assert (=> b!1871875 m!2297743))

(assert (=> d!572206 d!572252))

(declare-fun d!572254 () Bool)

(declare-fun lt!719560 () Int)

(assert (=> d!572254 (>= lt!719560 0)))

(declare-fun e!1194191 () Int)

(assert (=> d!572254 (= lt!719560 e!1194191)))

(declare-fun c!305098 () Bool)

(assert (=> d!572254 (= c!305098 ((_ is Nil!20733) lt!719537))))

(assert (=> d!572254 (= (size!16466 lt!719537) lt!719560)))

(declare-fun b!1871876 () Bool)

(assert (=> b!1871876 (= e!1194191 0)))

(declare-fun b!1871877 () Bool)

(assert (=> b!1871877 (= e!1194191 (+ 1 (size!16466 (t!173032 lt!719537))))))

(assert (= (and d!572254 c!305098) b!1871876))

(assert (= (and d!572254 (not c!305098)) b!1871877))

(declare-fun m!2297745 () Bool)

(assert (=> b!1871877 m!2297745))

(assert (=> b!1871724 d!572254))

(assert (=> b!1871700 d!572248))

(declare-fun bm!116071 () Bool)

(declare-fun call!116076 () Int)

(assert (=> bm!116071 (= call!116076 (size!16466 (t!173032 l!2791)))))

(declare-fun b!1871878 () Bool)

(declare-fun e!1194192 () Int)

(assert (=> b!1871878 (= e!1194192 (- call!116076 (- 1 1)))))

(declare-fun b!1871879 () Bool)

(assert (=> b!1871879 (= e!1194192 0)))

(declare-fun b!1871880 () Bool)

(declare-fun e!1194196 () List!20815)

(assert (=> b!1871880 (= e!1194196 (drop!999 (t!173032 (t!173032 l!2791)) (- (- 1 1) 1)))))

(declare-fun b!1871881 () Bool)

(declare-fun e!1194195 () Int)

(assert (=> b!1871881 (= e!1194195 call!116076)))

(declare-fun b!1871882 () Bool)

(declare-fun e!1194193 () Bool)

(declare-fun lt!719561 () List!20815)

(assert (=> b!1871882 (= e!1194193 (= (size!16466 lt!719561) e!1194195))))

(declare-fun c!305099 () Bool)

(assert (=> b!1871882 (= c!305099 (<= (- 1 1) 0))))

(declare-fun b!1871884 () Bool)

(declare-fun e!1194194 () List!20815)

(assert (=> b!1871884 (= e!1194194 Nil!20733)))

(declare-fun b!1871885 () Bool)

(assert (=> b!1871885 (= e!1194195 e!1194192)))

(declare-fun c!305102 () Bool)

(assert (=> b!1871885 (= c!305102 (>= (- 1 1) call!116076))))

(declare-fun b!1871886 () Bool)

(assert (=> b!1871886 (= e!1194194 e!1194196)))

(declare-fun c!305101 () Bool)

(assert (=> b!1871886 (= c!305101 (<= (- 1 1) 0))))

(declare-fun d!572256 () Bool)

(assert (=> d!572256 e!1194193))

(declare-fun res!837867 () Bool)

(assert (=> d!572256 (=> (not res!837867) (not e!1194193))))

(assert (=> d!572256 (= res!837867 (= ((_ map implies) (content!3090 lt!719561) (content!3090 (t!173032 l!2791))) ((as const (InoxSet T!33508)) true)))))

(assert (=> d!572256 (= lt!719561 e!1194194)))

(declare-fun c!305100 () Bool)

(assert (=> d!572256 (= c!305100 ((_ is Nil!20733) (t!173032 l!2791)))))

(assert (=> d!572256 (= (drop!999 (t!173032 l!2791) (- 1 1)) lt!719561)))

(declare-fun b!1871883 () Bool)

(assert (=> b!1871883 (= e!1194196 (t!173032 l!2791))))

(assert (= (and d!572256 c!305100) b!1871884))

(assert (= (and d!572256 (not c!305100)) b!1871886))

(assert (= (and b!1871886 c!305101) b!1871883))

(assert (= (and b!1871886 (not c!305101)) b!1871880))

(assert (= (and d!572256 res!837867) b!1871882))

(assert (= (and b!1871882 c!305099) b!1871881))

(assert (= (and b!1871882 (not c!305099)) b!1871885))

(assert (= (and b!1871885 c!305102) b!1871879))

(assert (= (and b!1871885 (not c!305102)) b!1871878))

(assert (= (or b!1871881 b!1871885 b!1871878) bm!116071))

(assert (=> bm!116071 m!2297553))

(declare-fun m!2297747 () Bool)

(assert (=> b!1871880 m!2297747))

(declare-fun m!2297749 () Bool)

(assert (=> b!1871882 m!2297749))

(declare-fun m!2297751 () Bool)

(assert (=> d!572256 m!2297751))

(assert (=> d!572256 m!2297617))

(assert (=> b!1871770 d!572256))

(declare-fun b!1871887 () Bool)

(declare-fun e!1194198 () Int)

(assert (=> b!1871887 (= e!1194198 (- (- lt!719517 0) 1))))

(declare-fun b!1871888 () Bool)

(declare-fun e!1194200 () Int)

(assert (=> b!1871888 (= e!1194200 0)))

(declare-fun b!1871890 () Bool)

(declare-fun e!1194197 () List!20815)

(assert (=> b!1871890 (= e!1194197 (Cons!20733 (h!26134 (t!173032 (drop!999 (t!173032 l!2791) 0))) (take!172 (t!173032 (t!173032 (drop!999 (t!173032 l!2791) 0))) (- (- (- lt!719517 0) 1) 1))))))

(declare-fun b!1871891 () Bool)

(assert (=> b!1871891 (= e!1194197 Nil!20733)))

(declare-fun b!1871892 () Bool)

(assert (=> b!1871892 (= e!1194198 (size!16466 (t!173032 (drop!999 (t!173032 l!2791) 0))))))

(declare-fun b!1871893 () Bool)

(declare-fun e!1194199 () Bool)

(declare-fun lt!719562 () List!20815)

(assert (=> b!1871893 (= e!1194199 (= (size!16466 lt!719562) e!1194200))))

(declare-fun c!305103 () Bool)

(assert (=> b!1871893 (= c!305103 (<= (- (- lt!719517 0) 1) 0))))

(declare-fun d!572258 () Bool)

(assert (=> d!572258 e!1194199))

(declare-fun res!837868 () Bool)

(assert (=> d!572258 (=> (not res!837868) (not e!1194199))))

(assert (=> d!572258 (= res!837868 (= ((_ map implies) (content!3090 lt!719562) (content!3090 (t!173032 (drop!999 (t!173032 l!2791) 0)))) ((as const (InoxSet T!33508)) true)))))

(assert (=> d!572258 (= lt!719562 e!1194197)))

(declare-fun c!305104 () Bool)

(assert (=> d!572258 (= c!305104 (or ((_ is Nil!20733) (t!173032 (drop!999 (t!173032 l!2791) 0))) (<= (- (- lt!719517 0) 1) 0)))))

(assert (=> d!572258 (= (take!172 (t!173032 (drop!999 (t!173032 l!2791) 0)) (- (- lt!719517 0) 1)) lt!719562)))

(declare-fun b!1871889 () Bool)

(assert (=> b!1871889 (= e!1194200 e!1194198)))

(declare-fun c!305105 () Bool)

(assert (=> b!1871889 (= c!305105 (>= (- (- lt!719517 0) 1) (size!16466 (t!173032 (drop!999 (t!173032 l!2791) 0)))))))

(assert (= (and d!572258 c!305104) b!1871891))

(assert (= (and d!572258 (not c!305104)) b!1871890))

(assert (= (and d!572258 res!837868) b!1871893))

(assert (= (and b!1871893 c!305103) b!1871888))

(assert (= (and b!1871893 (not c!305103)) b!1871889))

(assert (= (and b!1871889 c!305105) b!1871892))

(assert (= (and b!1871889 (not c!305105)) b!1871887))

(declare-fun m!2297753 () Bool)

(assert (=> b!1871893 m!2297753))

(declare-fun m!2297755 () Bool)

(assert (=> d!572258 m!2297755))

(declare-fun m!2297757 () Bool)

(assert (=> d!572258 m!2297757))

(declare-fun m!2297759 () Bool)

(assert (=> b!1871890 m!2297759))

(assert (=> b!1871892 m!2297735))

(assert (=> b!1871889 m!2297735))

(assert (=> b!1871698 d!572258))

(declare-fun b!1871894 () Bool)

(declare-fun e!1194202 () Int)

(assert (=> b!1871894 (= e!1194202 (- (size!16466 (t!173032 l!2791)) 1))))

(declare-fun b!1871895 () Bool)

(declare-fun e!1194204 () Int)

(assert (=> b!1871895 (= e!1194204 0)))

(declare-fun b!1871897 () Bool)

(declare-fun e!1194201 () List!20815)

(assert (=> b!1871897 (= e!1194201 (Cons!20733 (h!26134 (drop!999 (t!173032 l!2791) 1)) (take!172 (t!173032 (drop!999 (t!173032 l!2791) 1)) (- (- (size!16466 (t!173032 l!2791)) 1) 1))))))

(declare-fun b!1871898 () Bool)

(assert (=> b!1871898 (= e!1194201 Nil!20733)))

(declare-fun b!1871899 () Bool)

(assert (=> b!1871899 (= e!1194202 (size!16466 (drop!999 (t!173032 l!2791) 1)))))

(declare-fun b!1871900 () Bool)

(declare-fun e!1194203 () Bool)

(declare-fun lt!719563 () List!20815)

(assert (=> b!1871900 (= e!1194203 (= (size!16466 lt!719563) e!1194204))))

(declare-fun c!305106 () Bool)

(assert (=> b!1871900 (= c!305106 (<= (- (size!16466 (t!173032 l!2791)) 1) 0))))

(declare-fun d!572260 () Bool)

(assert (=> d!572260 e!1194203))

(declare-fun res!837869 () Bool)

(assert (=> d!572260 (=> (not res!837869) (not e!1194203))))

(assert (=> d!572260 (= res!837869 (= ((_ map implies) (content!3090 lt!719563) (content!3090 (drop!999 (t!173032 l!2791) 1))) ((as const (InoxSet T!33508)) true)))))

(assert (=> d!572260 (= lt!719563 e!1194201)))

(declare-fun c!305107 () Bool)

(assert (=> d!572260 (= c!305107 (or ((_ is Nil!20733) (drop!999 (t!173032 l!2791) 1)) (<= (- (size!16466 (t!173032 l!2791)) 1) 0)))))

(assert (=> d!572260 (= (take!172 (drop!999 (t!173032 l!2791) 1) (- (size!16466 (t!173032 l!2791)) 1)) lt!719563)))

(declare-fun b!1871896 () Bool)

(assert (=> b!1871896 (= e!1194204 e!1194202)))

(declare-fun c!305108 () Bool)

(assert (=> b!1871896 (= c!305108 (>= (- (size!16466 (t!173032 l!2791)) 1) (size!16466 (drop!999 (t!173032 l!2791) 1))))))

(assert (= (and d!572260 c!305107) b!1871898))

(assert (= (and d!572260 (not c!305107)) b!1871897))

(assert (= (and d!572260 res!837869) b!1871900))

(assert (= (and b!1871900 c!305106) b!1871895))

(assert (= (and b!1871900 (not c!305106)) b!1871896))

(assert (= (and b!1871896 c!305108) b!1871899))

(assert (= (and b!1871896 (not c!305108)) b!1871894))

(declare-fun m!2297761 () Bool)

(assert (=> b!1871900 m!2297761))

(declare-fun m!2297763 () Bool)

(assert (=> d!572260 m!2297763))

(assert (=> d!572260 m!2297565))

(assert (=> d!572260 m!2297623))

(declare-fun m!2297765 () Bool)

(assert (=> b!1871897 m!2297765))

(assert (=> b!1871899 m!2297565))

(assert (=> b!1871899 m!2297627))

(assert (=> b!1871896 m!2297565))

(assert (=> b!1871896 m!2297627))

(assert (=> d!572210 d!572260))

(assert (=> d!572210 d!572206))

(declare-fun d!572262 () Bool)

(declare-fun c!305109 () Bool)

(assert (=> d!572262 (= c!305109 ((_ is Nil!20733) lt!719537))))

(declare-fun e!1194205 () (InoxSet T!33508))

(assert (=> d!572262 (= (content!3090 lt!719537) e!1194205)))

(declare-fun b!1871901 () Bool)

(assert (=> b!1871901 (= e!1194205 ((as const (Array T!33508 Bool)) false))))

(declare-fun b!1871902 () Bool)

(assert (=> b!1871902 (= e!1194205 ((_ map or) (store ((as const (Array T!33508 Bool)) false) (h!26134 lt!719537) true) (content!3090 (t!173032 lt!719537))))))

(assert (= (and d!572262 c!305109) b!1871901))

(assert (= (and d!572262 (not c!305109)) b!1871902))

(declare-fun m!2297767 () Bool)

(assert (=> b!1871902 m!2297767))

(declare-fun m!2297769 () Bool)

(assert (=> b!1871902 m!2297769))

(assert (=> d!572200 d!572262))

(assert (=> d!572200 d!572252))

(declare-fun d!572264 () Bool)

(declare-fun c!305110 () Bool)

(assert (=> d!572264 (= c!305110 ((_ is Nil!20733) lt!719534))))

(declare-fun e!1194206 () (InoxSet T!33508))

(assert (=> d!572264 (= (content!3090 lt!719534) e!1194206)))

(declare-fun b!1871903 () Bool)

(assert (=> b!1871903 (= e!1194206 ((as const (Array T!33508 Bool)) false))))

(declare-fun b!1871904 () Bool)

(assert (=> b!1871904 (= e!1194206 ((_ map or) (store ((as const (Array T!33508 Bool)) false) (h!26134 lt!719534) true) (content!3090 (t!173032 lt!719534))))))

(assert (= (and d!572264 c!305110) b!1871903))

(assert (= (and d!572264 (not c!305110)) b!1871904))

(declare-fun m!2297771 () Bool)

(assert (=> b!1871904 m!2297771))

(declare-fun m!2297773 () Bool)

(assert (=> b!1871904 m!2297773))

(assert (=> d!572198 d!572264))

(declare-fun d!572266 () Bool)

(declare-fun c!305111 () Bool)

(assert (=> d!572266 (= c!305111 ((_ is Nil!20733) (drop!999 (t!173032 l!2791) 0)))))

(declare-fun e!1194207 () (InoxSet T!33508))

(assert (=> d!572266 (= (content!3090 (drop!999 (t!173032 l!2791) 0)) e!1194207)))

(declare-fun b!1871905 () Bool)

(assert (=> b!1871905 (= e!1194207 ((as const (Array T!33508 Bool)) false))))

(declare-fun b!1871906 () Bool)

(assert (=> b!1871906 (= e!1194207 ((_ map or) (store ((as const (Array T!33508 Bool)) false) (h!26134 (drop!999 (t!173032 l!2791) 0)) true) (content!3090 (t!173032 (drop!999 (t!173032 l!2791) 0)))))))

(assert (= (and d!572266 c!305111) b!1871905))

(assert (= (and d!572266 (not c!305111)) b!1871906))

(declare-fun m!2297775 () Bool)

(assert (=> b!1871906 m!2297775))

(assert (=> b!1871906 m!2297757))

(assert (=> d!572198 d!572266))

(declare-fun d!572268 () Bool)

(declare-fun lt!719564 () Int)

(assert (=> d!572268 (>= lt!719564 0)))

(declare-fun e!1194208 () Int)

(assert (=> d!572268 (= lt!719564 e!1194208)))

(declare-fun c!305112 () Bool)

(assert (=> d!572268 (= c!305112 ((_ is Nil!20733) lt!719539))))

(assert (=> d!572268 (= (size!16466 lt!719539) lt!719564)))

(declare-fun b!1871907 () Bool)

(assert (=> b!1871907 (= e!1194208 0)))

(declare-fun b!1871908 () Bool)

(assert (=> b!1871908 (= e!1194208 (+ 1 (size!16466 (t!173032 lt!719539))))))

(assert (= (and d!572268 c!305112) b!1871907))

(assert (= (and d!572268 (not c!305112)) b!1871908))

(declare-fun m!2297777 () Bool)

(assert (=> b!1871908 m!2297777))

(assert (=> b!1871740 d!572268))

(declare-fun bm!116072 () Bool)

(declare-fun call!116077 () Int)

(assert (=> bm!116072 (= call!116077 (size!16466 (t!173032 (t!173032 l!2791))))))

(declare-fun b!1871909 () Bool)

(declare-fun e!1194209 () Int)

(assert (=> b!1871909 (= e!1194209 (- call!116077 (- 1 1)))))

(declare-fun b!1871910 () Bool)

(assert (=> b!1871910 (= e!1194209 0)))

(declare-fun b!1871911 () Bool)

(declare-fun e!1194213 () List!20815)

(assert (=> b!1871911 (= e!1194213 (drop!999 (t!173032 (t!173032 (t!173032 l!2791))) (- (- 1 1) 1)))))

(declare-fun b!1871912 () Bool)

(declare-fun e!1194212 () Int)

(assert (=> b!1871912 (= e!1194212 call!116077)))

(declare-fun b!1871913 () Bool)

(declare-fun e!1194210 () Bool)

(declare-fun lt!719565 () List!20815)

(assert (=> b!1871913 (= e!1194210 (= (size!16466 lt!719565) e!1194212))))

(declare-fun c!305113 () Bool)

(assert (=> b!1871913 (= c!305113 (<= (- 1 1) 0))))

(declare-fun b!1871915 () Bool)

(declare-fun e!1194211 () List!20815)

(assert (=> b!1871915 (= e!1194211 Nil!20733)))

(declare-fun b!1871916 () Bool)

(assert (=> b!1871916 (= e!1194212 e!1194209)))

(declare-fun c!305116 () Bool)

(assert (=> b!1871916 (= c!305116 (>= (- 1 1) call!116077))))

(declare-fun b!1871917 () Bool)

(assert (=> b!1871917 (= e!1194211 e!1194213)))

(declare-fun c!305115 () Bool)

(assert (=> b!1871917 (= c!305115 (<= (- 1 1) 0))))

(declare-fun d!572270 () Bool)

(assert (=> d!572270 e!1194210))

(declare-fun res!837870 () Bool)

(assert (=> d!572270 (=> (not res!837870) (not e!1194210))))

(assert (=> d!572270 (= res!837870 (= ((_ map implies) (content!3090 lt!719565) (content!3090 (t!173032 (t!173032 l!2791)))) ((as const (InoxSet T!33508)) true)))))

(assert (=> d!572270 (= lt!719565 e!1194211)))

(declare-fun c!305114 () Bool)

(assert (=> d!572270 (= c!305114 ((_ is Nil!20733) (t!173032 (t!173032 l!2791))))))

(assert (=> d!572270 (= (drop!999 (t!173032 (t!173032 l!2791)) (- 1 1)) lt!719565)))

(declare-fun b!1871914 () Bool)

(assert (=> b!1871914 (= e!1194213 (t!173032 (t!173032 l!2791)))))

(assert (= (and d!572270 c!305114) b!1871915))

(assert (= (and d!572270 (not c!305114)) b!1871917))

(assert (= (and b!1871917 c!305115) b!1871914))

(assert (= (and b!1871917 (not c!305115)) b!1871911))

(assert (= (and d!572270 res!837870) b!1871913))

(assert (= (and b!1871913 c!305113) b!1871912))

(assert (= (and b!1871913 (not c!305113)) b!1871916))

(assert (= (and b!1871916 c!305116) b!1871910))

(assert (= (and b!1871916 (not c!305116)) b!1871909))

(assert (= (or b!1871912 b!1871916 b!1871909) bm!116072))

(assert (=> bm!116072 m!2297595))

(declare-fun m!2297779 () Bool)

(assert (=> b!1871911 m!2297779))

(declare-fun m!2297781 () Bool)

(assert (=> b!1871913 m!2297781))

(declare-fun m!2297783 () Bool)

(assert (=> d!572270 m!2297783))

(assert (=> d!572270 m!2297743))

(assert (=> b!1871738 d!572270))

(declare-fun b!1871918 () Bool)

(declare-fun e!1194215 () Int)

(assert (=> b!1871918 (= e!1194215 (- (- lt!719515 1) 1))))

(declare-fun b!1871919 () Bool)

(declare-fun e!1194217 () Int)

(assert (=> b!1871919 (= e!1194217 0)))

(declare-fun b!1871921 () Bool)

(declare-fun e!1194214 () List!20815)

(assert (=> b!1871921 (= e!1194214 (Cons!20733 (h!26134 (t!173032 (drop!999 l!2791 1))) (take!172 (t!173032 (t!173032 (drop!999 l!2791 1))) (- (- (- lt!719515 1) 1) 1))))))

(declare-fun b!1871922 () Bool)

(assert (=> b!1871922 (= e!1194214 Nil!20733)))

(declare-fun b!1871923 () Bool)

(assert (=> b!1871923 (= e!1194215 (size!16466 (t!173032 (drop!999 l!2791 1))))))

(declare-fun b!1871924 () Bool)

(declare-fun e!1194216 () Bool)

(declare-fun lt!719566 () List!20815)

(assert (=> b!1871924 (= e!1194216 (= (size!16466 lt!719566) e!1194217))))

(declare-fun c!305117 () Bool)

(assert (=> b!1871924 (= c!305117 (<= (- (- lt!719515 1) 1) 0))))

(declare-fun d!572272 () Bool)

(assert (=> d!572272 e!1194216))

(declare-fun res!837871 () Bool)

(assert (=> d!572272 (=> (not res!837871) (not e!1194216))))

(assert (=> d!572272 (= res!837871 (= ((_ map implies) (content!3090 lt!719566) (content!3090 (t!173032 (drop!999 l!2791 1)))) ((as const (InoxSet T!33508)) true)))))

(assert (=> d!572272 (= lt!719566 e!1194214)))

(declare-fun c!305118 () Bool)

(assert (=> d!572272 (= c!305118 (or ((_ is Nil!20733) (t!173032 (drop!999 l!2791 1))) (<= (- (- lt!719515 1) 1) 0)))))

(assert (=> d!572272 (= (take!172 (t!173032 (drop!999 l!2791 1)) (- (- lt!719515 1) 1)) lt!719566)))

(declare-fun b!1871920 () Bool)

(assert (=> b!1871920 (= e!1194217 e!1194215)))

(declare-fun c!305119 () Bool)

(assert (=> b!1871920 (= c!305119 (>= (- (- lt!719515 1) 1) (size!16466 (t!173032 (drop!999 l!2791 1)))))))

(assert (= (and d!572272 c!305118) b!1871922))

(assert (= (and d!572272 (not c!305118)) b!1871921))

(assert (= (and d!572272 res!837871) b!1871924))

(assert (= (and b!1871924 c!305117) b!1871919))

(assert (= (and b!1871924 (not c!305117)) b!1871920))

(assert (= (and b!1871920 c!305119) b!1871923))

(assert (= (and b!1871920 (not c!305119)) b!1871918))

(declare-fun m!2297785 () Bool)

(assert (=> b!1871924 m!2297785))

(declare-fun m!2297787 () Bool)

(assert (=> d!572272 m!2297787))

(declare-fun m!2297789 () Bool)

(assert (=> d!572272 m!2297789))

(declare-fun m!2297791 () Bool)

(assert (=> b!1871921 m!2297791))

(declare-fun m!2297793 () Bool)

(assert (=> b!1871923 m!2297793))

(assert (=> b!1871920 m!2297793))

(assert (=> b!1871764 d!572272))

(assert (=> bm!116063 d!572196))

(declare-fun d!572274 () Bool)

(declare-fun c!305120 () Bool)

(assert (=> d!572274 (= c!305120 ((_ is Nil!20733) lt!719543))))

(declare-fun e!1194218 () (InoxSet T!33508))

(assert (=> d!572274 (= (content!3090 lt!719543) e!1194218)))

(declare-fun b!1871925 () Bool)

(assert (=> b!1871925 (= e!1194218 ((as const (Array T!33508 Bool)) false))))

(declare-fun b!1871926 () Bool)

(assert (=> b!1871926 (= e!1194218 ((_ map or) (store ((as const (Array T!33508 Bool)) false) (h!26134 lt!719543) true) (content!3090 (t!173032 lt!719543))))))

(assert (= (and d!572274 c!305120) b!1871925))

(assert (= (and d!572274 (not c!305120)) b!1871926))

(declare-fun m!2297795 () Bool)

(assert (=> b!1871926 m!2297795))

(declare-fun m!2297797 () Bool)

(assert (=> b!1871926 m!2297797))

(assert (=> d!572214 d!572274))

(declare-fun d!572276 () Bool)

(declare-fun c!305121 () Bool)

(assert (=> d!572276 (= c!305121 ((_ is Nil!20733) (drop!999 l!2791 1)))))

(declare-fun e!1194219 () (InoxSet T!33508))

(assert (=> d!572276 (= (content!3090 (drop!999 l!2791 1)) e!1194219)))

(declare-fun b!1871927 () Bool)

(assert (=> b!1871927 (= e!1194219 ((as const (Array T!33508 Bool)) false))))

(declare-fun b!1871928 () Bool)

(assert (=> b!1871928 (= e!1194219 ((_ map or) (store ((as const (Array T!33508 Bool)) false) (h!26134 (drop!999 l!2791 1)) true) (content!3090 (t!173032 (drop!999 l!2791 1)))))))

(assert (= (and d!572276 c!305121) b!1871927))

(assert (= (and d!572276 (not c!305121)) b!1871928))

(declare-fun m!2297799 () Bool)

(assert (=> b!1871928 m!2297799))

(assert (=> b!1871928 m!2297789))

(assert (=> d!572214 d!572276))

(declare-fun bm!116073 () Bool)

(declare-fun call!116078 () Int)

(assert (=> bm!116073 (= call!116078 (size!16466 (t!173032 (t!173032 l!2791))))))

(declare-fun b!1871929 () Bool)

(declare-fun e!1194220 () Int)

(assert (=> b!1871929 (= e!1194220 (- call!116078 (- 0 1)))))

(declare-fun b!1871930 () Bool)

(assert (=> b!1871930 (= e!1194220 0)))

(declare-fun b!1871931 () Bool)

(declare-fun e!1194224 () List!20815)

(assert (=> b!1871931 (= e!1194224 (drop!999 (t!173032 (t!173032 (t!173032 l!2791))) (- (- 0 1) 1)))))

(declare-fun b!1871932 () Bool)

(declare-fun e!1194223 () Int)

(assert (=> b!1871932 (= e!1194223 call!116078)))

(declare-fun b!1871933 () Bool)

(declare-fun e!1194221 () Bool)

(declare-fun lt!719567 () List!20815)

(assert (=> b!1871933 (= e!1194221 (= (size!16466 lt!719567) e!1194223))))

(declare-fun c!305122 () Bool)

(assert (=> b!1871933 (= c!305122 (<= (- 0 1) 0))))

(declare-fun b!1871935 () Bool)

(declare-fun e!1194222 () List!20815)

(assert (=> b!1871935 (= e!1194222 Nil!20733)))

(declare-fun b!1871936 () Bool)

(assert (=> b!1871936 (= e!1194223 e!1194220)))

(declare-fun c!305125 () Bool)

(assert (=> b!1871936 (= c!305125 (>= (- 0 1) call!116078))))

(declare-fun b!1871937 () Bool)

(assert (=> b!1871937 (= e!1194222 e!1194224)))

(declare-fun c!305124 () Bool)

(assert (=> b!1871937 (= c!305124 (<= (- 0 1) 0))))

(declare-fun d!572278 () Bool)

(assert (=> d!572278 e!1194221))

(declare-fun res!837872 () Bool)

(assert (=> d!572278 (=> (not res!837872) (not e!1194221))))

(assert (=> d!572278 (= res!837872 (= ((_ map implies) (content!3090 lt!719567) (content!3090 (t!173032 (t!173032 l!2791)))) ((as const (InoxSet T!33508)) true)))))

(assert (=> d!572278 (= lt!719567 e!1194222)))

(declare-fun c!305123 () Bool)

(assert (=> d!572278 (= c!305123 ((_ is Nil!20733) (t!173032 (t!173032 l!2791))))))

(assert (=> d!572278 (= (drop!999 (t!173032 (t!173032 l!2791)) (- 0 1)) lt!719567)))

(declare-fun b!1871934 () Bool)

(assert (=> b!1871934 (= e!1194224 (t!173032 (t!173032 l!2791)))))

(assert (= (and d!572278 c!305123) b!1871935))

(assert (= (and d!572278 (not c!305123)) b!1871937))

(assert (= (and b!1871937 c!305124) b!1871934))

(assert (= (and b!1871937 (not c!305124)) b!1871931))

(assert (= (and d!572278 res!837872) b!1871933))

(assert (= (and b!1871933 c!305122) b!1871932))

(assert (= (and b!1871933 (not c!305122)) b!1871936))

(assert (= (and b!1871936 c!305125) b!1871930))

(assert (= (and b!1871936 (not c!305125)) b!1871929))

(assert (= (or b!1871932 b!1871936 b!1871929) bm!116073))

(assert (=> bm!116073 m!2297595))

(declare-fun m!2297801 () Bool)

(assert (=> b!1871931 m!2297801))

(declare-fun m!2297803 () Bool)

(assert (=> b!1871933 m!2297803))

(declare-fun m!2297805 () Bool)

(assert (=> d!572278 m!2297805))

(assert (=> d!572278 m!2297743))

(assert (=> b!1871722 d!572278))

(declare-fun d!572280 () Bool)

(declare-fun lt!719568 () Int)

(assert (=> d!572280 (>= lt!719568 0)))

(declare-fun e!1194225 () Int)

(assert (=> d!572280 (= lt!719568 e!1194225)))

(declare-fun c!305126 () Bool)

(assert (=> d!572280 (= c!305126 ((_ is Nil!20733) (drop!999 l!2791 1)))))

(assert (=> d!572280 (= (size!16466 (drop!999 l!2791 1)) lt!719568)))

(declare-fun b!1871938 () Bool)

(assert (=> b!1871938 (= e!1194225 0)))

(declare-fun b!1871939 () Bool)

(assert (=> b!1871939 (= e!1194225 (+ 1 (size!16466 (t!173032 (drop!999 l!2791 1)))))))

(assert (= (and d!572280 c!305126) b!1871938))

(assert (= (and d!572280 (not c!305126)) b!1871939))

(assert (=> b!1871939 m!2297793))

(assert (=> b!1871766 d!572280))

(declare-fun d!572282 () Bool)

(declare-fun lt!719569 () Int)

(assert (=> d!572282 (>= lt!719569 0)))

(declare-fun e!1194226 () Int)

(assert (=> d!572282 (= lt!719569 e!1194226)))

(declare-fun c!305127 () Bool)

(assert (=> d!572282 (= c!305127 ((_ is Nil!20733) lt!719543))))

(assert (=> d!572282 (= (size!16466 lt!719543) lt!719569)))

(declare-fun b!1871940 () Bool)

(assert (=> b!1871940 (= e!1194226 0)))

(declare-fun b!1871941 () Bool)

(assert (=> b!1871941 (= e!1194226 (+ 1 (size!16466 (t!173032 lt!719543))))))

(assert (= (and d!572282 c!305127) b!1871940))

(assert (= (and d!572282 (not c!305127)) b!1871941))

(declare-fun m!2297807 () Bool)

(assert (=> b!1871941 m!2297807))

(assert (=> b!1871767 d!572282))

(assert (=> bm!116064 d!572196))

(declare-fun d!572284 () Bool)

(declare-fun c!305128 () Bool)

(assert (=> d!572284 (= c!305128 ((_ is Nil!20733) lt!719538))))

(declare-fun e!1194227 () (InoxSet T!33508))

(assert (=> d!572284 (= (content!3090 lt!719538) e!1194227)))

(declare-fun b!1871942 () Bool)

(assert (=> b!1871942 (= e!1194227 ((as const (Array T!33508 Bool)) false))))

(declare-fun b!1871943 () Bool)

(assert (=> b!1871943 (= e!1194227 ((_ map or) (store ((as const (Array T!33508 Bool)) false) (h!26134 lt!719538) true) (content!3090 (t!173032 lt!719538))))))

(assert (= (and d!572284 c!305128) b!1871942))

(assert (= (and d!572284 (not c!305128)) b!1871943))

(declare-fun m!2297809 () Bool)

(assert (=> b!1871943 m!2297809))

(declare-fun m!2297811 () Bool)

(assert (=> b!1871943 m!2297811))

(assert (=> d!572204 d!572284))

(declare-fun d!572286 () Bool)

(declare-fun c!305129 () Bool)

(assert (=> d!572286 (= c!305129 ((_ is Nil!20733) (drop!999 (t!173032 l!2791) 1)))))

(declare-fun e!1194228 () (InoxSet T!33508))

(assert (=> d!572286 (= (content!3090 (drop!999 (t!173032 l!2791) 1)) e!1194228)))

(declare-fun b!1871944 () Bool)

(assert (=> b!1871944 (= e!1194228 ((as const (Array T!33508 Bool)) false))))

(declare-fun b!1871945 () Bool)

(assert (=> b!1871945 (= e!1194228 ((_ map or) (store ((as const (Array T!33508 Bool)) false) (h!26134 (drop!999 (t!173032 l!2791) 1)) true) (content!3090 (t!173032 (drop!999 (t!173032 l!2791) 1)))))))

(assert (= (and d!572286 c!305129) b!1871944))

(assert (= (and d!572286 (not c!305129)) b!1871945))

(declare-fun m!2297813 () Bool)

(assert (=> b!1871945 m!2297813))

(assert (=> b!1871945 m!2297723))

(assert (=> d!572204 d!572286))

(assert (=> b!1871763 d!572280))

(declare-fun d!572288 () Bool)

(declare-fun lt!719570 () Int)

(assert (=> d!572288 (>= lt!719570 0)))

(declare-fun e!1194229 () Int)

(assert (=> d!572288 (= lt!719570 e!1194229)))

(declare-fun c!305130 () Bool)

(assert (=> d!572288 (= c!305130 ((_ is Nil!20733) (t!173032 (t!173032 (t!173032 l!2791)))))))

(assert (=> d!572288 (= (size!16466 (t!173032 (t!173032 (t!173032 l!2791)))) lt!719570)))

(declare-fun b!1871946 () Bool)

(assert (=> b!1871946 (= e!1194229 0)))

(declare-fun b!1871947 () Bool)

(assert (=> b!1871947 (= e!1194229 (+ 1 (size!16466 (t!173032 (t!173032 (t!173032 (t!173032 l!2791)))))))))

(assert (= (and d!572288 c!305130) b!1871946))

(assert (= (and d!572288 (not c!305130)) b!1871947))

(declare-fun m!2297815 () Bool)

(assert (=> b!1871947 m!2297815))

(assert (=> b!1871746 d!572288))

(declare-fun b!1871948 () Bool)

(declare-fun e!1194230 () Bool)

(declare-fun tp!532414 () Bool)

(assert (=> b!1871948 (= e!1194230 (and tp_is_empty!8775 tp!532414))))

(assert (=> b!1871777 (= tp!532412 e!1194230)))

(assert (= (and b!1871777 ((_ is Cons!20733) (t!173032 (t!173032 (t!173032 l!2791))))) b!1871948))

(check-sat (not b!1871906) (not b!1871848) (not b!1871893) (not d!572270) (not d!572272) (not b!1871923) (not d!572260) (not b!1871892) (not b!1871900) (not b!1871897) (not b!1871880) (not b!1871861) (not b!1871850) tp_is_empty!8775 (not b!1871921) (not b!1871875) (not b!1871856) (not bm!116072) (not b!1871858) (not b!1871948) (not b!1871913) (not b!1871933) (not b!1871852) (not b!1871859) (not d!572258) (not d!572240) (not b!1871941) (not b!1871869) (not b!1871920) (not b!1871904) (not b!1871945) (not b!1871855) (not bm!116071) (not b!1871899) (not b!1871882) (not b!1871873) (not b!1871908) (not b!1871867) (not b!1871931) (not b!1871924) (not b!1871896) (not b!1871911) (not d!572256) (not bm!116073) (not b!1871943) (not b!1871928) (not b!1871926) (not d!572278) (not b!1871890) (not b!1871939) (not b!1871877) (not b!1871889) (not b!1871947) (not b!1871871) (not b!1871902))
(check-sat)
