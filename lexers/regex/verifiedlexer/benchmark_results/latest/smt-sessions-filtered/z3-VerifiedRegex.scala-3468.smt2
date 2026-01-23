; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!200556 () Bool)

(assert start!200556)

(declare-fun b_free!56803 () Bool)

(declare-fun b_next!57507 () Bool)

(assert (=> start!200556 (= b_free!56803 (not b_next!57507))))

(declare-fun tp!604611 () Bool)

(declare-fun b_and!162579 () Bool)

(assert (=> start!200556 (= tp!604611 b_and!162579)))

(declare-fun tp!604613 () Bool)

(declare-datatypes ((T!35906 0))(
  ( (T!35907 (val!6462 Int)) )
))
(declare-datatypes ((List!22345 0))(
  ( (Nil!22263) (Cons!22263 (h!27664 T!35906) (t!191228 List!22345)) )
))
(declare-datatypes ((IArray!14915 0))(
  ( (IArray!14916 (innerList!7515 List!22345)) )
))
(declare-datatypes ((Conc!7455 0))(
  ( (Node!7455 (left!17719 Conc!7455) (right!18049 Conc!7455) (csize!15140 Int) (cheight!7666 Int)) (Leaf!10924 (xs!10357 IArray!14915) (csize!15141 Int)) (Empty!7455) )
))
(declare-fun t!4319 () Conc!7455)

(declare-fun tp!604614 () Bool)

(declare-fun e!1285729 () Bool)

(declare-fun b!2035850 () Bool)

(declare-fun inv!29506 (Conc!7455) Bool)

(assert (=> b!2035850 (= e!1285729 (and (inv!29506 (left!17719 t!4319)) tp!604613 (inv!29506 (right!18049 t!4319)) tp!604614))))

(declare-fun b!2035851 () Bool)

(declare-fun e!1285728 () Bool)

(declare-fun inv!29507 (IArray!14915) Bool)

(assert (=> b!2035851 (= e!1285729 (and (inv!29507 (xs!10357 t!4319)) e!1285728))))

(declare-fun b!2035852 () Bool)

(declare-fun res!892680 () Bool)

(declare-fun e!1285727 () Bool)

(assert (=> b!2035852 (=> (not res!892680) (not e!1285727))))

(get-info :version)

(assert (=> b!2035852 (= res!892680 (and (not ((_ is Empty!7455) t!4319)) (not ((_ is Leaf!10924) t!4319))))))

(declare-fun lt!764757 () List!22345)

(declare-fun p!1489 () Int)

(declare-fun lt!764756 () List!22345)

(declare-fun b!2035853 () Bool)

(declare-fun filter!454 (List!22345 Int) List!22345)

(declare-fun ++!6041 (List!22345 List!22345) List!22345)

(assert (=> b!2035853 (= e!1285727 (not (= (filter!454 (++!6041 lt!764756 lt!764757) p!1489) (++!6041 (filter!454 lt!764756 p!1489) (filter!454 lt!764757 p!1489)))))))

(declare-datatypes ((Unit!36968 0))(
  ( (Unit!36969) )
))
(declare-fun lt!764758 () Unit!36968)

(declare-fun lemmaFilterConcat!26 (List!22345 List!22345 Int) Unit!36968)

(assert (=> b!2035853 (= lt!764758 (lemmaFilterConcat!26 lt!764756 lt!764757 p!1489))))

(declare-fun list!9113 (Conc!7455) List!22345)

(assert (=> b!2035853 (= lt!764757 (list!9113 (right!18049 t!4319)))))

(assert (=> b!2035853 (= lt!764756 (list!9113 (left!17719 t!4319)))))

(declare-fun res!892681 () Bool)

(assert (=> start!200556 (=> (not res!892681) (not e!1285727))))

(declare-fun isBalanced!2333 (Conc!7455) Bool)

(assert (=> start!200556 (= res!892681 (isBalanced!2333 t!4319))))

(assert (=> start!200556 e!1285727))

(assert (=> start!200556 (and (inv!29506 t!4319) e!1285729)))

(assert (=> start!200556 tp!604611))

(declare-fun b!2035854 () Bool)

(declare-fun tp!604612 () Bool)

(assert (=> b!2035854 (= e!1285728 tp!604612)))

(assert (= (and start!200556 res!892681) b!2035852))

(assert (= (and b!2035852 res!892680) b!2035853))

(assert (= (and start!200556 ((_ is Node!7455) t!4319)) b!2035850))

(assert (= b!2035851 b!2035854))

(assert (= (and start!200556 ((_ is Leaf!10924) t!4319)) b!2035851))

(declare-fun m!2478607 () Bool)

(assert (=> b!2035850 m!2478607))

(declare-fun m!2478609 () Bool)

(assert (=> b!2035850 m!2478609))

(declare-fun m!2478611 () Bool)

(assert (=> b!2035851 m!2478611))

(declare-fun m!2478613 () Bool)

(assert (=> b!2035853 m!2478613))

(declare-fun m!2478615 () Bool)

(assert (=> b!2035853 m!2478615))

(declare-fun m!2478617 () Bool)

(assert (=> b!2035853 m!2478617))

(declare-fun m!2478619 () Bool)

(assert (=> b!2035853 m!2478619))

(declare-fun m!2478621 () Bool)

(assert (=> b!2035853 m!2478621))

(assert (=> b!2035853 m!2478619))

(assert (=> b!2035853 m!2478617))

(declare-fun m!2478623 () Bool)

(assert (=> b!2035853 m!2478623))

(declare-fun m!2478625 () Bool)

(assert (=> b!2035853 m!2478625))

(assert (=> b!2035853 m!2478623))

(declare-fun m!2478627 () Bool)

(assert (=> b!2035853 m!2478627))

(declare-fun m!2478629 () Bool)

(assert (=> start!200556 m!2478629))

(declare-fun m!2478631 () Bool)

(assert (=> start!200556 m!2478631))

(check-sat (not start!200556) (not b!2035850) b_and!162579 (not b!2035854) (not b!2035851) (not b_next!57507) (not b!2035853))
(check-sat b_and!162579 (not b_next!57507))
(get-model)

(declare-fun d!623139 () Bool)

(declare-fun size!17401 (List!22345) Int)

(assert (=> d!623139 (= (inv!29507 (xs!10357 t!4319)) (<= (size!17401 (innerList!7515 (xs!10357 t!4319))) 2147483647))))

(declare-fun bs!421331 () Bool)

(assert (= bs!421331 d!623139))

(declare-fun m!2478633 () Bool)

(assert (=> bs!421331 m!2478633))

(assert (=> b!2035851 d!623139))

(declare-fun b!2035891 () Bool)

(declare-fun res!892710 () Bool)

(declare-fun e!1285746 () Bool)

(assert (=> b!2035891 (=> (not res!892710) (not e!1285746))))

(declare-fun isEmpty!13913 (Conc!7455) Bool)

(assert (=> b!2035891 (= res!892710 (not (isEmpty!13913 (left!17719 t!4319))))))

(declare-fun b!2035892 () Bool)

(declare-fun e!1285747 () Bool)

(assert (=> b!2035892 (= e!1285747 e!1285746)))

(declare-fun res!892714 () Bool)

(assert (=> b!2035892 (=> (not res!892714) (not e!1285746))))

(declare-fun height!1155 (Conc!7455) Int)

(assert (=> b!2035892 (= res!892714 (<= (- 1) (- (height!1155 (left!17719 t!4319)) (height!1155 (right!18049 t!4319)))))))

(declare-fun b!2035893 () Bool)

(declare-fun res!892712 () Bool)

(assert (=> b!2035893 (=> (not res!892712) (not e!1285746))))

(assert (=> b!2035893 (= res!892712 (<= (- (height!1155 (left!17719 t!4319)) (height!1155 (right!18049 t!4319))) 1))))

(declare-fun b!2035894 () Bool)

(declare-fun res!892715 () Bool)

(assert (=> b!2035894 (=> (not res!892715) (not e!1285746))))

(assert (=> b!2035894 (= res!892715 (isBalanced!2333 (right!18049 t!4319)))))

(declare-fun d!623141 () Bool)

(declare-fun res!892713 () Bool)

(assert (=> d!623141 (=> res!892713 e!1285747)))

(assert (=> d!623141 (= res!892713 (not ((_ is Node!7455) t!4319)))))

(assert (=> d!623141 (= (isBalanced!2333 t!4319) e!1285747)))

(declare-fun b!2035895 () Bool)

(declare-fun res!892711 () Bool)

(assert (=> b!2035895 (=> (not res!892711) (not e!1285746))))

(assert (=> b!2035895 (= res!892711 (isBalanced!2333 (left!17719 t!4319)))))

(declare-fun b!2035896 () Bool)

(assert (=> b!2035896 (= e!1285746 (not (isEmpty!13913 (right!18049 t!4319))))))

(assert (= (and d!623141 (not res!892713)) b!2035892))

(assert (= (and b!2035892 res!892714) b!2035893))

(assert (= (and b!2035893 res!892712) b!2035895))

(assert (= (and b!2035895 res!892711) b!2035894))

(assert (= (and b!2035894 res!892715) b!2035891))

(assert (= (and b!2035891 res!892710) b!2035896))

(declare-fun m!2478643 () Bool)

(assert (=> b!2035892 m!2478643))

(declare-fun m!2478645 () Bool)

(assert (=> b!2035892 m!2478645))

(assert (=> b!2035893 m!2478643))

(assert (=> b!2035893 m!2478645))

(declare-fun m!2478647 () Bool)

(assert (=> b!2035896 m!2478647))

(declare-fun m!2478649 () Bool)

(assert (=> b!2035891 m!2478649))

(declare-fun m!2478651 () Bool)

(assert (=> b!2035894 m!2478651))

(declare-fun m!2478653 () Bool)

(assert (=> b!2035895 m!2478653))

(assert (=> start!200556 d!623141))

(declare-fun d!623147 () Bool)

(declare-fun c!329695 () Bool)

(assert (=> d!623147 (= c!329695 ((_ is Node!7455) t!4319))))

(declare-fun e!1285756 () Bool)

(assert (=> d!623147 (= (inv!29506 t!4319) e!1285756)))

(declare-fun b!2035912 () Bool)

(declare-fun inv!29510 (Conc!7455) Bool)

(assert (=> b!2035912 (= e!1285756 (inv!29510 t!4319))))

(declare-fun b!2035913 () Bool)

(declare-fun e!1285757 () Bool)

(assert (=> b!2035913 (= e!1285756 e!1285757)))

(declare-fun res!892725 () Bool)

(assert (=> b!2035913 (= res!892725 (not ((_ is Leaf!10924) t!4319)))))

(assert (=> b!2035913 (=> res!892725 e!1285757)))

(declare-fun b!2035914 () Bool)

(declare-fun inv!29511 (Conc!7455) Bool)

(assert (=> b!2035914 (= e!1285757 (inv!29511 t!4319))))

(assert (= (and d!623147 c!329695) b!2035912))

(assert (= (and d!623147 (not c!329695)) b!2035913))

(assert (= (and b!2035913 (not res!892725)) b!2035914))

(declare-fun m!2478673 () Bool)

(assert (=> b!2035912 m!2478673))

(declare-fun m!2478675 () Bool)

(assert (=> b!2035914 m!2478675))

(assert (=> start!200556 d!623147))

(declare-fun d!623155 () Bool)

(declare-fun c!329696 () Bool)

(assert (=> d!623155 (= c!329696 ((_ is Node!7455) (left!17719 t!4319)))))

(declare-fun e!1285758 () Bool)

(assert (=> d!623155 (= (inv!29506 (left!17719 t!4319)) e!1285758)))

(declare-fun b!2035915 () Bool)

(assert (=> b!2035915 (= e!1285758 (inv!29510 (left!17719 t!4319)))))

(declare-fun b!2035916 () Bool)

(declare-fun e!1285759 () Bool)

(assert (=> b!2035916 (= e!1285758 e!1285759)))

(declare-fun res!892726 () Bool)

(assert (=> b!2035916 (= res!892726 (not ((_ is Leaf!10924) (left!17719 t!4319))))))

(assert (=> b!2035916 (=> res!892726 e!1285759)))

(declare-fun b!2035917 () Bool)

(assert (=> b!2035917 (= e!1285759 (inv!29511 (left!17719 t!4319)))))

(assert (= (and d!623155 c!329696) b!2035915))

(assert (= (and d!623155 (not c!329696)) b!2035916))

(assert (= (and b!2035916 (not res!892726)) b!2035917))

(declare-fun m!2478677 () Bool)

(assert (=> b!2035915 m!2478677))

(declare-fun m!2478679 () Bool)

(assert (=> b!2035917 m!2478679))

(assert (=> b!2035850 d!623155))

(declare-fun d!623157 () Bool)

(declare-fun c!329697 () Bool)

(assert (=> d!623157 (= c!329697 ((_ is Node!7455) (right!18049 t!4319)))))

(declare-fun e!1285760 () Bool)

(assert (=> d!623157 (= (inv!29506 (right!18049 t!4319)) e!1285760)))

(declare-fun b!2035918 () Bool)

(assert (=> b!2035918 (= e!1285760 (inv!29510 (right!18049 t!4319)))))

(declare-fun b!2035919 () Bool)

(declare-fun e!1285761 () Bool)

(assert (=> b!2035919 (= e!1285760 e!1285761)))

(declare-fun res!892727 () Bool)

(assert (=> b!2035919 (= res!892727 (not ((_ is Leaf!10924) (right!18049 t!4319))))))

(assert (=> b!2035919 (=> res!892727 e!1285761)))

(declare-fun b!2035920 () Bool)

(assert (=> b!2035920 (= e!1285761 (inv!29511 (right!18049 t!4319)))))

(assert (= (and d!623157 c!329697) b!2035918))

(assert (= (and d!623157 (not c!329697)) b!2035919))

(assert (= (and b!2035919 (not res!892727)) b!2035920))

(declare-fun m!2478681 () Bool)

(assert (=> b!2035918 m!2478681))

(declare-fun m!2478683 () Bool)

(assert (=> b!2035920 m!2478683))

(assert (=> b!2035850 d!623157))

(declare-fun b!2035953 () Bool)

(declare-fun e!1285778 () List!22345)

(assert (=> b!2035953 (= e!1285778 Nil!22263)))

(declare-fun b!2035955 () Bool)

(declare-fun e!1285779 () List!22345)

(declare-fun call!124915 () List!22345)

(assert (=> b!2035955 (= e!1285779 call!124915)))

(declare-fun bm!124910 () Bool)

(assert (=> bm!124910 (= call!124915 (filter!454 (t!191228 lt!764757) p!1489))))

(declare-fun b!2035956 () Bool)

(declare-fun res!892738 () Bool)

(declare-fun e!1285780 () Bool)

(assert (=> b!2035956 (=> (not res!892738) (not e!1285780))))

(declare-fun lt!764766 () List!22345)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3299 (List!22345) (InoxSet T!35906))

(assert (=> b!2035956 (= res!892738 (= ((_ map implies) (content!3299 lt!764766) (content!3299 lt!764757)) ((as const (InoxSet T!35906)) true)))))

(declare-fun b!2035954 () Bool)

(assert (=> b!2035954 (= e!1285779 (Cons!22263 (h!27664 lt!764757) call!124915))))

(declare-fun d!623159 () Bool)

(assert (=> d!623159 e!1285780))

(declare-fun res!892739 () Bool)

(assert (=> d!623159 (=> (not res!892739) (not e!1285780))))

(assert (=> d!623159 (= res!892739 (<= (size!17401 lt!764766) (size!17401 lt!764757)))))

(assert (=> d!623159 (= lt!764766 e!1285778)))

(declare-fun c!329710 () Bool)

(assert (=> d!623159 (= c!329710 ((_ is Nil!22263) lt!764757))))

(assert (=> d!623159 (= (filter!454 lt!764757 p!1489) lt!764766)))

(declare-fun b!2035957 () Bool)

(assert (=> b!2035957 (= e!1285778 e!1285779)))

(declare-fun c!329709 () Bool)

(declare-fun dynLambda!11095 (Int T!35906) Bool)

(assert (=> b!2035957 (= c!329709 (dynLambda!11095 p!1489 (h!27664 lt!764757)))))

(declare-fun b!2035958 () Bool)

(declare-fun forall!4745 (List!22345 Int) Bool)

(assert (=> b!2035958 (= e!1285780 (forall!4745 lt!764766 p!1489))))

(assert (= (and d!623159 c!329710) b!2035953))

(assert (= (and d!623159 (not c!329710)) b!2035957))

(assert (= (and b!2035957 c!329709) b!2035954))

(assert (= (and b!2035957 (not c!329709)) b!2035955))

(assert (= (or b!2035954 b!2035955) bm!124910))

(assert (= (and d!623159 res!892739) b!2035956))

(assert (= (and b!2035956 res!892738) b!2035958))

(declare-fun b_lambda!68725 () Bool)

(assert (=> (not b_lambda!68725) (not b!2035957)))

(declare-fun t!191232 () Bool)

(declare-fun tb!128817 () Bool)

(assert (=> (and start!200556 (= p!1489 p!1489) t!191232) tb!128817))

(declare-fun result!154064 () Bool)

(assert (=> tb!128817 (= result!154064 true)))

(assert (=> b!2035957 t!191232))

(declare-fun b_and!162581 () Bool)

(assert (= b_and!162579 (and (=> t!191232 result!154064) b_and!162581)))

(declare-fun m!2478699 () Bool)

(assert (=> b!2035956 m!2478699))

(declare-fun m!2478701 () Bool)

(assert (=> b!2035956 m!2478701))

(declare-fun m!2478703 () Bool)

(assert (=> b!2035957 m!2478703))

(declare-fun m!2478705 () Bool)

(assert (=> bm!124910 m!2478705))

(declare-fun m!2478707 () Bool)

(assert (=> d!623159 m!2478707))

(declare-fun m!2478709 () Bool)

(assert (=> d!623159 m!2478709))

(declare-fun m!2478711 () Bool)

(assert (=> b!2035958 m!2478711))

(assert (=> b!2035853 d!623159))

(declare-fun b!2035990 () Bool)

(declare-fun lt!764771 () List!22345)

(declare-fun e!1285796 () Bool)

(assert (=> b!2035990 (= e!1285796 (or (not (= lt!764757 Nil!22263)) (= lt!764771 lt!764756)))))

(declare-fun b!2035988 () Bool)

(declare-fun e!1285794 () List!22345)

(assert (=> b!2035988 (= e!1285794 (Cons!22263 (h!27664 lt!764756) (++!6041 (t!191228 lt!764756) lt!764757)))))

(declare-fun b!2035989 () Bool)

(declare-fun res!892753 () Bool)

(assert (=> b!2035989 (=> (not res!892753) (not e!1285796))))

(assert (=> b!2035989 (= res!892753 (= (size!17401 lt!764771) (+ (size!17401 lt!764756) (size!17401 lt!764757))))))

(declare-fun d!623163 () Bool)

(assert (=> d!623163 e!1285796))

(declare-fun res!892752 () Bool)

(assert (=> d!623163 (=> (not res!892752) (not e!1285796))))

(assert (=> d!623163 (= res!892752 (= (content!3299 lt!764771) ((_ map or) (content!3299 lt!764756) (content!3299 lt!764757))))))

(assert (=> d!623163 (= lt!764771 e!1285794)))

(declare-fun c!329718 () Bool)

(assert (=> d!623163 (= c!329718 ((_ is Nil!22263) lt!764756))))

(assert (=> d!623163 (= (++!6041 lt!764756 lt!764757) lt!764771)))

(declare-fun b!2035987 () Bool)

(assert (=> b!2035987 (= e!1285794 lt!764757)))

(assert (= (and d!623163 c!329718) b!2035987))

(assert (= (and d!623163 (not c!329718)) b!2035988))

(assert (= (and d!623163 res!892752) b!2035989))

(assert (= (and b!2035989 res!892753) b!2035990))

(declare-fun m!2478737 () Bool)

(assert (=> b!2035988 m!2478737))

(declare-fun m!2478739 () Bool)

(assert (=> b!2035989 m!2478739))

(declare-fun m!2478741 () Bool)

(assert (=> b!2035989 m!2478741))

(assert (=> b!2035989 m!2478709))

(declare-fun m!2478743 () Bool)

(assert (=> d!623163 m!2478743))

(declare-fun m!2478745 () Bool)

(assert (=> d!623163 m!2478745))

(assert (=> d!623163 m!2478701))

(assert (=> b!2035853 d!623163))

(declare-fun b!2035995 () Bool)

(declare-fun e!1285799 () List!22345)

(assert (=> b!2035995 (= e!1285799 Nil!22263)))

(declare-fun b!2035997 () Bool)

(declare-fun e!1285800 () List!22345)

(declare-fun call!124918 () List!22345)

(assert (=> b!2035997 (= e!1285800 call!124918)))

(declare-fun bm!124913 () Bool)

(assert (=> bm!124913 (= call!124918 (filter!454 (t!191228 (++!6041 lt!764756 lt!764757)) p!1489))))

(declare-fun b!2035998 () Bool)

(declare-fun res!892754 () Bool)

(declare-fun e!1285801 () Bool)

(assert (=> b!2035998 (=> (not res!892754) (not e!1285801))))

(declare-fun lt!764772 () List!22345)

(assert (=> b!2035998 (= res!892754 (= ((_ map implies) (content!3299 lt!764772) (content!3299 (++!6041 lt!764756 lt!764757))) ((as const (InoxSet T!35906)) true)))))

(declare-fun b!2035996 () Bool)

(assert (=> b!2035996 (= e!1285800 (Cons!22263 (h!27664 (++!6041 lt!764756 lt!764757)) call!124918))))

(declare-fun d!623169 () Bool)

(assert (=> d!623169 e!1285801))

(declare-fun res!892755 () Bool)

(assert (=> d!623169 (=> (not res!892755) (not e!1285801))))

(assert (=> d!623169 (= res!892755 (<= (size!17401 lt!764772) (size!17401 (++!6041 lt!764756 lt!764757))))))

(assert (=> d!623169 (= lt!764772 e!1285799)))

(declare-fun c!329723 () Bool)

(assert (=> d!623169 (= c!329723 ((_ is Nil!22263) (++!6041 lt!764756 lt!764757)))))

(assert (=> d!623169 (= (filter!454 (++!6041 lt!764756 lt!764757) p!1489) lt!764772)))

(declare-fun b!2035999 () Bool)

(assert (=> b!2035999 (= e!1285799 e!1285800)))

(declare-fun c!329722 () Bool)

(assert (=> b!2035999 (= c!329722 (dynLambda!11095 p!1489 (h!27664 (++!6041 lt!764756 lt!764757))))))

(declare-fun b!2036000 () Bool)

(assert (=> b!2036000 (= e!1285801 (forall!4745 lt!764772 p!1489))))

(assert (= (and d!623169 c!329723) b!2035995))

(assert (= (and d!623169 (not c!329723)) b!2035999))

(assert (= (and b!2035999 c!329722) b!2035996))

(assert (= (and b!2035999 (not c!329722)) b!2035997))

(assert (= (or b!2035996 b!2035997) bm!124913))

(assert (= (and d!623169 res!892755) b!2035998))

(assert (= (and b!2035998 res!892754) b!2036000))

(declare-fun b_lambda!68731 () Bool)

(assert (=> (not b_lambda!68731) (not b!2035999)))

(declare-fun t!191239 () Bool)

(declare-fun tb!128823 () Bool)

(assert (=> (and start!200556 (= p!1489 p!1489) t!191239) tb!128823))

(declare-fun result!154070 () Bool)

(assert (=> tb!128823 (= result!154070 true)))

(assert (=> b!2035999 t!191239))

(declare-fun b_and!162587 () Bool)

(assert (= b_and!162581 (and (=> t!191239 result!154070) b_and!162587)))

(declare-fun m!2478747 () Bool)

(assert (=> b!2035998 m!2478747))

(assert (=> b!2035998 m!2478623))

(declare-fun m!2478749 () Bool)

(assert (=> b!2035998 m!2478749))

(declare-fun m!2478751 () Bool)

(assert (=> b!2035999 m!2478751))

(declare-fun m!2478753 () Bool)

(assert (=> bm!124913 m!2478753))

(declare-fun m!2478755 () Bool)

(assert (=> d!623169 m!2478755))

(assert (=> d!623169 m!2478623))

(declare-fun m!2478757 () Bool)

(assert (=> d!623169 m!2478757))

(declare-fun m!2478759 () Bool)

(assert (=> b!2036000 m!2478759))

(assert (=> b!2035853 d!623169))

(declare-fun e!1285803 () Bool)

(declare-fun lt!764773 () List!22345)

(declare-fun b!2036004 () Bool)

(assert (=> b!2036004 (= e!1285803 (or (not (= (filter!454 lt!764757 p!1489) Nil!22263)) (= lt!764773 (filter!454 lt!764756 p!1489))))))

(declare-fun b!2036002 () Bool)

(declare-fun e!1285802 () List!22345)

(assert (=> b!2036002 (= e!1285802 (Cons!22263 (h!27664 (filter!454 lt!764756 p!1489)) (++!6041 (t!191228 (filter!454 lt!764756 p!1489)) (filter!454 lt!764757 p!1489))))))

(declare-fun b!2036003 () Bool)

(declare-fun res!892757 () Bool)

(assert (=> b!2036003 (=> (not res!892757) (not e!1285803))))

(assert (=> b!2036003 (= res!892757 (= (size!17401 lt!764773) (+ (size!17401 (filter!454 lt!764756 p!1489)) (size!17401 (filter!454 lt!764757 p!1489)))))))

(declare-fun d!623171 () Bool)

(assert (=> d!623171 e!1285803))

(declare-fun res!892756 () Bool)

(assert (=> d!623171 (=> (not res!892756) (not e!1285803))))

(assert (=> d!623171 (= res!892756 (= (content!3299 lt!764773) ((_ map or) (content!3299 (filter!454 lt!764756 p!1489)) (content!3299 (filter!454 lt!764757 p!1489)))))))

(assert (=> d!623171 (= lt!764773 e!1285802)))

(declare-fun c!329724 () Bool)

(assert (=> d!623171 (= c!329724 ((_ is Nil!22263) (filter!454 lt!764756 p!1489)))))

(assert (=> d!623171 (= (++!6041 (filter!454 lt!764756 p!1489) (filter!454 lt!764757 p!1489)) lt!764773)))

(declare-fun b!2036001 () Bool)

(assert (=> b!2036001 (= e!1285802 (filter!454 lt!764757 p!1489))))

(assert (= (and d!623171 c!329724) b!2036001))

(assert (= (and d!623171 (not c!329724)) b!2036002))

(assert (= (and d!623171 res!892756) b!2036003))

(assert (= (and b!2036003 res!892757) b!2036004))

(assert (=> b!2036002 m!2478619))

(declare-fun m!2478761 () Bool)

(assert (=> b!2036002 m!2478761))

(declare-fun m!2478763 () Bool)

(assert (=> b!2036003 m!2478763))

(assert (=> b!2036003 m!2478617))

(declare-fun m!2478765 () Bool)

(assert (=> b!2036003 m!2478765))

(assert (=> b!2036003 m!2478619))

(declare-fun m!2478769 () Bool)

(assert (=> b!2036003 m!2478769))

(declare-fun m!2478773 () Bool)

(assert (=> d!623171 m!2478773))

(assert (=> d!623171 m!2478617))

(declare-fun m!2478777 () Bool)

(assert (=> d!623171 m!2478777))

(assert (=> d!623171 m!2478619))

(declare-fun m!2478779 () Bool)

(assert (=> d!623171 m!2478779))

(assert (=> b!2035853 d!623171))

(declare-fun b!2036034 () Bool)

(declare-fun e!1285818 () List!22345)

(assert (=> b!2036034 (= e!1285818 (++!6041 (list!9113 (left!17719 (left!17719 t!4319))) (list!9113 (right!18049 (left!17719 t!4319)))))))

(declare-fun b!2036032 () Bool)

(declare-fun e!1285817 () List!22345)

(assert (=> b!2036032 (= e!1285817 e!1285818)))

(declare-fun c!329737 () Bool)

(assert (=> b!2036032 (= c!329737 ((_ is Leaf!10924) (left!17719 t!4319)))))

(declare-fun b!2036031 () Bool)

(assert (=> b!2036031 (= e!1285817 Nil!22263)))

(declare-fun d!623173 () Bool)

(declare-fun c!329736 () Bool)

(assert (=> d!623173 (= c!329736 ((_ is Empty!7455) (left!17719 t!4319)))))

(assert (=> d!623173 (= (list!9113 (left!17719 t!4319)) e!1285817)))

(declare-fun b!2036033 () Bool)

(declare-fun list!9115 (IArray!14915) List!22345)

(assert (=> b!2036033 (= e!1285818 (list!9115 (xs!10357 (left!17719 t!4319))))))

(assert (= (and d!623173 c!329736) b!2036031))

(assert (= (and d!623173 (not c!329736)) b!2036032))

(assert (= (and b!2036032 c!329737) b!2036033))

(assert (= (and b!2036032 (not c!329737)) b!2036034))

(declare-fun m!2478815 () Bool)

(assert (=> b!2036034 m!2478815))

(declare-fun m!2478817 () Bool)

(assert (=> b!2036034 m!2478817))

(assert (=> b!2036034 m!2478815))

(assert (=> b!2036034 m!2478817))

(declare-fun m!2478819 () Bool)

(assert (=> b!2036034 m!2478819))

(declare-fun m!2478821 () Bool)

(assert (=> b!2036033 m!2478821))

(assert (=> b!2035853 d!623173))

(declare-fun d!623183 () Bool)

(assert (=> d!623183 (= (filter!454 (++!6041 lt!764756 lt!764757) p!1489) (++!6041 (filter!454 lt!764756 p!1489) (filter!454 lt!764757 p!1489)))))

(declare-fun lt!764781 () Unit!36968)

(declare-fun choose!12423 (List!22345 List!22345 Int) Unit!36968)

(assert (=> d!623183 (= lt!764781 (choose!12423 lt!764756 lt!764757 p!1489))))

(assert (=> d!623183 (= (lemmaFilterConcat!26 lt!764756 lt!764757 p!1489) lt!764781)))

(declare-fun bs!421334 () Bool)

(assert (= bs!421334 d!623183))

(assert (=> bs!421334 m!2478623))

(assert (=> bs!421334 m!2478627))

(declare-fun m!2478825 () Bool)

(assert (=> bs!421334 m!2478825))

(assert (=> bs!421334 m!2478617))

(assert (=> bs!421334 m!2478619))

(assert (=> bs!421334 m!2478621))

(assert (=> bs!421334 m!2478623))

(assert (=> bs!421334 m!2478619))

(assert (=> bs!421334 m!2478617))

(assert (=> b!2035853 d!623183))

(declare-fun b!2036051 () Bool)

(declare-fun e!1285827 () List!22345)

(assert (=> b!2036051 (= e!1285827 (++!6041 (list!9113 (left!17719 (right!18049 t!4319))) (list!9113 (right!18049 (right!18049 t!4319)))))))

(declare-fun b!2036049 () Bool)

(declare-fun e!1285826 () List!22345)

(assert (=> b!2036049 (= e!1285826 e!1285827)))

(declare-fun c!329739 () Bool)

(assert (=> b!2036049 (= c!329739 ((_ is Leaf!10924) (right!18049 t!4319)))))

(declare-fun b!2036048 () Bool)

(assert (=> b!2036048 (= e!1285826 Nil!22263)))

(declare-fun d!623185 () Bool)

(declare-fun c!329738 () Bool)

(assert (=> d!623185 (= c!329738 ((_ is Empty!7455) (right!18049 t!4319)))))

(assert (=> d!623185 (= (list!9113 (right!18049 t!4319)) e!1285826)))

(declare-fun b!2036050 () Bool)

(assert (=> b!2036050 (= e!1285827 (list!9115 (xs!10357 (right!18049 t!4319))))))

(assert (= (and d!623185 c!329738) b!2036048))

(assert (= (and d!623185 (not c!329738)) b!2036049))

(assert (= (and b!2036049 c!329739) b!2036050))

(assert (= (and b!2036049 (not c!329739)) b!2036051))

(declare-fun m!2478827 () Bool)

(assert (=> b!2036051 m!2478827))

(declare-fun m!2478829 () Bool)

(assert (=> b!2036051 m!2478829))

(assert (=> b!2036051 m!2478827))

(assert (=> b!2036051 m!2478829))

(declare-fun m!2478831 () Bool)

(assert (=> b!2036051 m!2478831))

(declare-fun m!2478833 () Bool)

(assert (=> b!2036050 m!2478833))

(assert (=> b!2035853 d!623185))

(declare-fun b!2036055 () Bool)

(declare-fun e!1285830 () List!22345)

(assert (=> b!2036055 (= e!1285830 Nil!22263)))

(declare-fun b!2036057 () Bool)

(declare-fun e!1285831 () List!22345)

(declare-fun call!124920 () List!22345)

(assert (=> b!2036057 (= e!1285831 call!124920)))

(declare-fun bm!124915 () Bool)

(assert (=> bm!124915 (= call!124920 (filter!454 (t!191228 lt!764756) p!1489))))

(declare-fun b!2036058 () Bool)

(declare-fun res!892762 () Bool)

(declare-fun e!1285832 () Bool)

(assert (=> b!2036058 (=> (not res!892762) (not e!1285832))))

(declare-fun lt!764782 () List!22345)

(assert (=> b!2036058 (= res!892762 (= ((_ map implies) (content!3299 lt!764782) (content!3299 lt!764756)) ((as const (InoxSet T!35906)) true)))))

(declare-fun b!2036056 () Bool)

(assert (=> b!2036056 (= e!1285831 (Cons!22263 (h!27664 lt!764756) call!124920))))

(declare-fun d!623187 () Bool)

(assert (=> d!623187 e!1285832))

(declare-fun res!892763 () Bool)

(assert (=> d!623187 (=> (not res!892763) (not e!1285832))))

(assert (=> d!623187 (= res!892763 (<= (size!17401 lt!764782) (size!17401 lt!764756)))))

(assert (=> d!623187 (= lt!764782 e!1285830)))

(declare-fun c!329741 () Bool)

(assert (=> d!623187 (= c!329741 ((_ is Nil!22263) lt!764756))))

(assert (=> d!623187 (= (filter!454 lt!764756 p!1489) lt!764782)))

(declare-fun b!2036059 () Bool)

(assert (=> b!2036059 (= e!1285830 e!1285831)))

(declare-fun c!329740 () Bool)

(assert (=> b!2036059 (= c!329740 (dynLambda!11095 p!1489 (h!27664 lt!764756)))))

(declare-fun b!2036060 () Bool)

(assert (=> b!2036060 (= e!1285832 (forall!4745 lt!764782 p!1489))))

(assert (= (and d!623187 c!329741) b!2036055))

(assert (= (and d!623187 (not c!329741)) b!2036059))

(assert (= (and b!2036059 c!329740) b!2036056))

(assert (= (and b!2036059 (not c!329740)) b!2036057))

(assert (= (or b!2036056 b!2036057) bm!124915))

(assert (= (and d!623187 res!892763) b!2036058))

(assert (= (and b!2036058 res!892762) b!2036060))

(declare-fun b_lambda!68735 () Bool)

(assert (=> (not b_lambda!68735) (not b!2036059)))

(declare-fun t!191244 () Bool)

(declare-fun tb!128827 () Bool)

(assert (=> (and start!200556 (= p!1489 p!1489) t!191244) tb!128827))

(declare-fun result!154078 () Bool)

(assert (=> tb!128827 (= result!154078 true)))

(assert (=> b!2036059 t!191244))

(declare-fun b_and!162591 () Bool)

(assert (= b_and!162587 (and (=> t!191244 result!154078) b_and!162591)))

(declare-fun m!2478847 () Bool)

(assert (=> b!2036058 m!2478847))

(assert (=> b!2036058 m!2478745))

(declare-fun m!2478849 () Bool)

(assert (=> b!2036059 m!2478849))

(declare-fun m!2478851 () Bool)

(assert (=> bm!124915 m!2478851))

(declare-fun m!2478853 () Bool)

(assert (=> d!623187 m!2478853))

(assert (=> d!623187 m!2478741))

(declare-fun m!2478855 () Bool)

(assert (=> b!2036060 m!2478855))

(assert (=> b!2035853 d!623187))

(declare-fun e!1285839 () Bool)

(declare-fun tp!604637 () Bool)

(declare-fun tp!604638 () Bool)

(declare-fun b!2036072 () Bool)

(assert (=> b!2036072 (= e!1285839 (and (inv!29506 (left!17719 (left!17719 t!4319))) tp!604637 (inv!29506 (right!18049 (left!17719 t!4319))) tp!604638))))

(declare-fun b!2036074 () Bool)

(declare-fun e!1285840 () Bool)

(declare-fun tp!604636 () Bool)

(assert (=> b!2036074 (= e!1285840 tp!604636)))

(declare-fun b!2036073 () Bool)

(assert (=> b!2036073 (= e!1285839 (and (inv!29507 (xs!10357 (left!17719 t!4319))) e!1285840))))

(assert (=> b!2035850 (= tp!604613 (and (inv!29506 (left!17719 t!4319)) e!1285839))))

(assert (= (and b!2035850 ((_ is Node!7455) (left!17719 t!4319))) b!2036072))

(assert (= b!2036073 b!2036074))

(assert (= (and b!2035850 ((_ is Leaf!10924) (left!17719 t!4319))) b!2036073))

(declare-fun m!2478857 () Bool)

(assert (=> b!2036072 m!2478857))

(declare-fun m!2478859 () Bool)

(assert (=> b!2036072 m!2478859))

(declare-fun m!2478861 () Bool)

(assert (=> b!2036073 m!2478861))

(assert (=> b!2035850 m!2478607))

(declare-fun b!2036075 () Bool)

(declare-fun tp!604640 () Bool)

(declare-fun tp!604641 () Bool)

(declare-fun e!1285841 () Bool)

(assert (=> b!2036075 (= e!1285841 (and (inv!29506 (left!17719 (right!18049 t!4319))) tp!604640 (inv!29506 (right!18049 (right!18049 t!4319))) tp!604641))))

(declare-fun b!2036077 () Bool)

(declare-fun e!1285842 () Bool)

(declare-fun tp!604639 () Bool)

(assert (=> b!2036077 (= e!1285842 tp!604639)))

(declare-fun b!2036076 () Bool)

(assert (=> b!2036076 (= e!1285841 (and (inv!29507 (xs!10357 (right!18049 t!4319))) e!1285842))))

(assert (=> b!2035850 (= tp!604614 (and (inv!29506 (right!18049 t!4319)) e!1285841))))

(assert (= (and b!2035850 ((_ is Node!7455) (right!18049 t!4319))) b!2036075))

(assert (= b!2036076 b!2036077))

(assert (= (and b!2035850 ((_ is Leaf!10924) (right!18049 t!4319))) b!2036076))

(declare-fun m!2478863 () Bool)

(assert (=> b!2036075 m!2478863))

(declare-fun m!2478865 () Bool)

(assert (=> b!2036075 m!2478865))

(declare-fun m!2478867 () Bool)

(assert (=> b!2036076 m!2478867))

(assert (=> b!2035850 m!2478609))

(declare-fun b!2036082 () Bool)

(declare-fun e!1285845 () Bool)

(declare-fun tp_is_empty!9249 () Bool)

(declare-fun tp!604644 () Bool)

(assert (=> b!2036082 (= e!1285845 (and tp_is_empty!9249 tp!604644))))

(assert (=> b!2035854 (= tp!604612 e!1285845)))

(assert (= (and b!2035854 ((_ is Cons!22263) (innerList!7515 (xs!10357 t!4319)))) b!2036082))

(declare-fun b_lambda!68743 () Bool)

(assert (= b_lambda!68725 (or (and start!200556 b_free!56803) b_lambda!68743)))

(declare-fun b_lambda!68745 () Bool)

(assert (= b_lambda!68731 (or (and start!200556 b_free!56803) b_lambda!68745)))

(declare-fun b_lambda!68747 () Bool)

(assert (= b_lambda!68735 (or (and start!200556 b_free!56803) b_lambda!68747)))

(check-sat (not b!2036051) (not d!623183) (not d!623171) (not b!2035850) (not b!2035894) (not b!2035920) (not b_lambda!68747) (not b!2035918) (not d!623139) (not b!2036002) (not b!2035893) (not b!2035988) (not b!2036033) (not b!2036034) (not b!2035914) (not d!623163) (not b!2036073) (not b!2035915) (not b!2035998) (not b!2035912) (not b!2036074) (not b!2035896) (not b!2036082) b_and!162591 (not b!2036050) (not bm!124913) (not b!2035891) (not b!2035958) (not b!2036060) tp_is_empty!9249 (not b!2035956) (not b!2036077) (not b!2036058) (not b!2036076) (not b!2036075) (not d!623187) (not b!2036003) (not b_lambda!68743) (not b!2036000) (not b!2035895) (not b!2035989) (not d!623159) (not b_lambda!68745) (not b!2035892) (not b_next!57507) (not b!2035917) (not d!623169) (not b!2036072) (not bm!124915) (not bm!124910))
(check-sat b_and!162591 (not b_next!57507))
