; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46146 () Bool)

(assert start!46146)

(declare-fun b!510843 () Bool)

(declare-fun res!216793 () Bool)

(declare-fun e!305148 () Bool)

(assert (=> b!510843 (=> (not res!216793) (not e!305148))))

(declare-datatypes ((B!1017 0))(
  ( (B!1018 (val!1650 Int)) )
))
(declare-datatypes ((List!4623 0))(
  ( (Nil!4613) (Cons!4613 (h!10010 B!1017) (t!73141 List!4623)) )
))
(declare-fun p!1985 () List!4623)

(get-info :version)

(assert (=> b!510843 (= res!216793 ((_ is Cons!4613) p!1985))))

(declare-fun b!510844 () Bool)

(declare-fun e!305149 () Bool)

(declare-fun lt!211837 () List!4623)

(declare-fun size!3719 (List!4623) Int)

(assert (=> b!510844 (= e!305149 (>= (size!3719 (t!73141 p!1985)) (size!3719 lt!211837)))))

(declare-fun b!510845 () Bool)

(declare-fun e!305150 () Bool)

(declare-fun tp_is_empty!2403 () Bool)

(declare-fun tp!158886 () Bool)

(assert (=> b!510845 (= e!305150 (and tp_is_empty!2403 tp!158886))))

(declare-fun b!510846 () Bool)

(declare-fun res!216794 () Bool)

(assert (=> b!510846 (=> (not res!216794) (not e!305149))))

(declare-fun isPrefix!545 (List!4623 List!4623) Bool)

(assert (=> b!510846 (= res!216794 (isPrefix!545 (t!73141 p!1985) lt!211837))))

(declare-fun res!216795 () Bool)

(assert (=> start!46146 (=> (not res!216795) (not e!305148))))

(declare-fun l!3306 () List!4623)

(declare-fun isEmpty!3567 (List!4623) Bool)

(assert (=> start!46146 (= res!216795 (not (isEmpty!3567 l!3306)))))

(assert (=> start!46146 e!305148))

(declare-fun e!305147 () Bool)

(assert (=> start!46146 e!305147))

(assert (=> start!46146 e!305150))

(declare-fun b!510847 () Bool)

(declare-fun res!216792 () Bool)

(assert (=> b!510847 (=> (not res!216792) (not e!305148))))

(assert (=> b!510847 (= res!216792 (isPrefix!545 p!1985 l!3306))))

(declare-fun b!510848 () Bool)

(declare-fun tp!158887 () Bool)

(assert (=> b!510848 (= e!305147 (and tp_is_empty!2403 tp!158887))))

(declare-fun b!510849 () Bool)

(assert (=> b!510849 (= e!305148 e!305149)))

(declare-fun res!216797 () Bool)

(assert (=> b!510849 (=> (not res!216797) (not e!305149))))

(assert (=> b!510849 (= res!216797 (not (isEmpty!3567 lt!211837)))))

(declare-fun tail!680 (List!4623) List!4623)

(assert (=> b!510849 (= lt!211837 (tail!680 l!3306))))

(declare-fun b!510850 () Bool)

(declare-fun res!216796 () Bool)

(assert (=> b!510850 (=> (not res!216796) (not e!305148))))

(assert (=> b!510850 (= res!216796 (< (size!3719 p!1985) (size!3719 l!3306)))))

(assert (= (and start!46146 res!216795) b!510847))

(assert (= (and b!510847 res!216792) b!510850))

(assert (= (and b!510850 res!216796) b!510843))

(assert (= (and b!510843 res!216793) b!510849))

(assert (= (and b!510849 res!216797) b!510846))

(assert (= (and b!510846 res!216794) b!510844))

(assert (= (and start!46146 ((_ is Cons!4613) l!3306)) b!510848))

(assert (= (and start!46146 ((_ is Cons!4613) p!1985)) b!510845))

(declare-fun m!757629 () Bool)

(assert (=> b!510847 m!757629))

(declare-fun m!757631 () Bool)

(assert (=> b!510844 m!757631))

(declare-fun m!757633 () Bool)

(assert (=> b!510844 m!757633))

(declare-fun m!757635 () Bool)

(assert (=> b!510846 m!757635))

(declare-fun m!757637 () Bool)

(assert (=> b!510850 m!757637))

(declare-fun m!757639 () Bool)

(assert (=> b!510850 m!757639))

(declare-fun m!757641 () Bool)

(assert (=> start!46146 m!757641))

(declare-fun m!757643 () Bool)

(assert (=> b!510849 m!757643))

(declare-fun m!757645 () Bool)

(assert (=> b!510849 m!757645))

(check-sat tp_is_empty!2403 (not b!510850) (not b!510846) (not b!510849) (not b!510847) (not b!510844) (not b!510848) (not start!46146) (not b!510845))
(check-sat)
(get-model)

(declare-fun d!183626 () Bool)

(declare-fun e!305163 () Bool)

(assert (=> d!183626 e!305163))

(declare-fun res!216815 () Bool)

(assert (=> d!183626 (=> res!216815 e!305163)))

(declare-fun lt!211842 () Bool)

(assert (=> d!183626 (= res!216815 (not lt!211842))))

(declare-fun e!305165 () Bool)

(assert (=> d!183626 (= lt!211842 e!305165)))

(declare-fun res!216814 () Bool)

(assert (=> d!183626 (=> res!216814 e!305165)))

(assert (=> d!183626 (= res!216814 ((_ is Nil!4613) (t!73141 p!1985)))))

(assert (=> d!183626 (= (isPrefix!545 (t!73141 p!1985) lt!211837) lt!211842)))

(declare-fun b!510867 () Bool)

(declare-fun e!305164 () Bool)

(assert (=> b!510867 (= e!305165 e!305164)))

(declare-fun res!216817 () Bool)

(assert (=> b!510867 (=> (not res!216817) (not e!305164))))

(assert (=> b!510867 (= res!216817 (not ((_ is Nil!4613) lt!211837)))))

(declare-fun b!510870 () Bool)

(assert (=> b!510870 (= e!305163 (>= (size!3719 lt!211837) (size!3719 (t!73141 p!1985))))))

(declare-fun b!510868 () Bool)

(declare-fun res!216816 () Bool)

(assert (=> b!510868 (=> (not res!216816) (not e!305164))))

(declare-fun head!1156 (List!4623) B!1017)

(assert (=> b!510868 (= res!216816 (= (head!1156 (t!73141 p!1985)) (head!1156 lt!211837)))))

(declare-fun b!510869 () Bool)

(assert (=> b!510869 (= e!305164 (isPrefix!545 (tail!680 (t!73141 p!1985)) (tail!680 lt!211837)))))

(assert (= (and d!183626 (not res!216814)) b!510867))

(assert (= (and b!510867 res!216817) b!510868))

(assert (= (and b!510868 res!216816) b!510869))

(assert (= (and d!183626 (not res!216815)) b!510870))

(assert (=> b!510870 m!757633))

(assert (=> b!510870 m!757631))

(declare-fun m!757647 () Bool)

(assert (=> b!510868 m!757647))

(declare-fun m!757649 () Bool)

(assert (=> b!510868 m!757649))

(declare-fun m!757651 () Bool)

(assert (=> b!510869 m!757651))

(declare-fun m!757653 () Bool)

(assert (=> b!510869 m!757653))

(assert (=> b!510869 m!757651))

(assert (=> b!510869 m!757653))

(declare-fun m!757655 () Bool)

(assert (=> b!510869 m!757655))

(assert (=> b!510846 d!183626))

(declare-fun d!183634 () Bool)

(declare-fun e!305169 () Bool)

(assert (=> d!183634 e!305169))

(declare-fun res!216823 () Bool)

(assert (=> d!183634 (=> res!216823 e!305169)))

(declare-fun lt!211844 () Bool)

(assert (=> d!183634 (= res!216823 (not lt!211844))))

(declare-fun e!305171 () Bool)

(assert (=> d!183634 (= lt!211844 e!305171)))

(declare-fun res!216822 () Bool)

(assert (=> d!183634 (=> res!216822 e!305171)))

(assert (=> d!183634 (= res!216822 ((_ is Nil!4613) p!1985))))

(assert (=> d!183634 (= (isPrefix!545 p!1985 l!3306) lt!211844)))

(declare-fun b!510875 () Bool)

(declare-fun e!305170 () Bool)

(assert (=> b!510875 (= e!305171 e!305170)))

(declare-fun res!216825 () Bool)

(assert (=> b!510875 (=> (not res!216825) (not e!305170))))

(assert (=> b!510875 (= res!216825 (not ((_ is Nil!4613) l!3306)))))

(declare-fun b!510878 () Bool)

(assert (=> b!510878 (= e!305169 (>= (size!3719 l!3306) (size!3719 p!1985)))))

(declare-fun b!510876 () Bool)

(declare-fun res!216824 () Bool)

(assert (=> b!510876 (=> (not res!216824) (not e!305170))))

(assert (=> b!510876 (= res!216824 (= (head!1156 p!1985) (head!1156 l!3306)))))

(declare-fun b!510877 () Bool)

(assert (=> b!510877 (= e!305170 (isPrefix!545 (tail!680 p!1985) (tail!680 l!3306)))))

(assert (= (and d!183634 (not res!216822)) b!510875))

(assert (= (and b!510875 res!216825) b!510876))

(assert (= (and b!510876 res!216824) b!510877))

(assert (= (and d!183634 (not res!216823)) b!510878))

(assert (=> b!510878 m!757639))

(assert (=> b!510878 m!757637))

(declare-fun m!757667 () Bool)

(assert (=> b!510876 m!757667))

(declare-fun m!757669 () Bool)

(assert (=> b!510876 m!757669))

(declare-fun m!757671 () Bool)

(assert (=> b!510877 m!757671))

(assert (=> b!510877 m!757645))

(assert (=> b!510877 m!757671))

(assert (=> b!510877 m!757645))

(declare-fun m!757673 () Bool)

(assert (=> b!510877 m!757673))

(assert (=> b!510847 d!183634))

(declare-fun d!183640 () Bool)

(declare-fun lt!211850 () Int)

(assert (=> d!183640 (>= lt!211850 0)))

(declare-fun e!305177 () Int)

(assert (=> d!183640 (= lt!211850 e!305177)))

(declare-fun c!99355 () Bool)

(assert (=> d!183640 (= c!99355 ((_ is Nil!4613) p!1985))))

(assert (=> d!183640 (= (size!3719 p!1985) lt!211850)))

(declare-fun b!510889 () Bool)

(assert (=> b!510889 (= e!305177 0)))

(declare-fun b!510890 () Bool)

(assert (=> b!510890 (= e!305177 (+ 1 (size!3719 (t!73141 p!1985))))))

(assert (= (and d!183640 c!99355) b!510889))

(assert (= (and d!183640 (not c!99355)) b!510890))

(assert (=> b!510890 m!757631))

(assert (=> b!510850 d!183640))

(declare-fun d!183644 () Bool)

(declare-fun lt!211852 () Int)

(assert (=> d!183644 (>= lt!211852 0)))

(declare-fun e!305179 () Int)

(assert (=> d!183644 (= lt!211852 e!305179)))

(declare-fun c!99357 () Bool)

(assert (=> d!183644 (= c!99357 ((_ is Nil!4613) l!3306))))

(assert (=> d!183644 (= (size!3719 l!3306) lt!211852)))

(declare-fun b!510893 () Bool)

(assert (=> b!510893 (= e!305179 0)))

(declare-fun b!510894 () Bool)

(assert (=> b!510894 (= e!305179 (+ 1 (size!3719 (t!73141 l!3306))))))

(assert (= (and d!183644 c!99357) b!510893))

(assert (= (and d!183644 (not c!99357)) b!510894))

(declare-fun m!757677 () Bool)

(assert (=> b!510894 m!757677))

(assert (=> b!510850 d!183644))

(declare-fun d!183648 () Bool)

(assert (=> d!183648 (= (isEmpty!3567 lt!211837) ((_ is Nil!4613) lt!211837))))

(assert (=> b!510849 d!183648))

(declare-fun d!183652 () Bool)

(assert (=> d!183652 (= (tail!680 l!3306) (t!73141 l!3306))))

(assert (=> b!510849 d!183652))

(declare-fun d!183656 () Bool)

(assert (=> d!183656 (= (isEmpty!3567 l!3306) ((_ is Nil!4613) l!3306))))

(assert (=> start!46146 d!183656))

(declare-fun d!183658 () Bool)

(declare-fun lt!211856 () Int)

(assert (=> d!183658 (>= lt!211856 0)))

(declare-fun e!305187 () Int)

(assert (=> d!183658 (= lt!211856 e!305187)))

(declare-fun c!99360 () Bool)

(assert (=> d!183658 (= c!99360 ((_ is Nil!4613) (t!73141 p!1985)))))

(assert (=> d!183658 (= (size!3719 (t!73141 p!1985)) lt!211856)))

(declare-fun b!510907 () Bool)

(assert (=> b!510907 (= e!305187 0)))

(declare-fun b!510908 () Bool)

(assert (=> b!510908 (= e!305187 (+ 1 (size!3719 (t!73141 (t!73141 p!1985)))))))

(assert (= (and d!183658 c!99360) b!510907))

(assert (= (and d!183658 (not c!99360)) b!510908))

(declare-fun m!757691 () Bool)

(assert (=> b!510908 m!757691))

(assert (=> b!510844 d!183658))

(declare-fun d!183660 () Bool)

(declare-fun lt!211857 () Int)

(assert (=> d!183660 (>= lt!211857 0)))

(declare-fun e!305188 () Int)

(assert (=> d!183660 (= lt!211857 e!305188)))

(declare-fun c!99361 () Bool)

(assert (=> d!183660 (= c!99361 ((_ is Nil!4613) lt!211837))))

(assert (=> d!183660 (= (size!3719 lt!211837) lt!211857)))

(declare-fun b!510909 () Bool)

(assert (=> b!510909 (= e!305188 0)))

(declare-fun b!510910 () Bool)

(assert (=> b!510910 (= e!305188 (+ 1 (size!3719 (t!73141 lt!211837))))))

(assert (= (and d!183660 c!99361) b!510909))

(assert (= (and d!183660 (not c!99361)) b!510910))

(declare-fun m!757693 () Bool)

(assert (=> b!510910 m!757693))

(assert (=> b!510844 d!183660))

(declare-fun b!510917 () Bool)

(declare-fun e!305193 () Bool)

(declare-fun tp!158894 () Bool)

(assert (=> b!510917 (= e!305193 (and tp_is_empty!2403 tp!158894))))

(assert (=> b!510848 (= tp!158887 e!305193)))

(assert (= (and b!510848 ((_ is Cons!4613) (t!73141 l!3306))) b!510917))

(declare-fun b!510918 () Bool)

(declare-fun e!305194 () Bool)

(declare-fun tp!158895 () Bool)

(assert (=> b!510918 (= e!305194 (and tp_is_empty!2403 tp!158895))))

(assert (=> b!510845 (= tp!158886 e!305194)))

(assert (= (and b!510845 ((_ is Cons!4613) (t!73141 p!1985))) b!510918))

(check-sat (not b!510878) (not b!510869) (not b!510908) (not b!510917) (not b!510910) (not b!510876) (not b!510877) (not b!510870) (not b!510890) (not b!510894) tp_is_empty!2403 (not b!510918) (not b!510868))
(check-sat)
