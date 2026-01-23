; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!183084 () Bool)

(assert start!183084)

(declare-fun b!1839781 () Bool)

(declare-fun e!1175693 () Bool)

(declare-fun e!1175695 () Bool)

(assert (=> b!1839781 (= e!1175693 e!1175695)))

(declare-fun res!826832 () Bool)

(assert (=> b!1839781 (=> (not res!826832) (not e!1175695))))

(declare-datatypes ((B!1539 0))(
  ( (B!1540 (val!5717 Int)) )
))
(declare-datatypes ((List!20317 0))(
  ( (Nil!20247) (Cons!20247 (h!25648 B!1539) (t!171746 List!20317)) )
))
(declare-fun p!2031 () List!20317)

(declare-fun lt!713914 () Int)

(declare-fun lt!713911 () Int)

(assert (=> b!1839781 (= res!826832 (and (<= (+ 1 lt!713911) lt!713914) (is-Cons!20247 p!2031)))))

(declare-fun l!3477 () List!20317)

(declare-fun size!16047 (List!20317) Int)

(assert (=> b!1839781 (= lt!713914 (size!16047 l!3477))))

(assert (=> b!1839781 (= lt!713911 (size!16047 p!2031))))

(declare-fun b!1839782 () Bool)

(declare-fun e!1175691 () Bool)

(declare-fun tp_is_empty!8287 () Bool)

(declare-fun tp!520256 () Bool)

(assert (=> b!1839782 (= e!1175691 (and tp_is_empty!8287 tp!520256))))

(declare-fun b!1839783 () Bool)

(declare-fun e!1175696 () Bool)

(assert (=> b!1839783 (= e!1175695 e!1175696)))

(declare-fun res!826829 () Bool)

(assert (=> b!1839783 (=> (not res!826829) (not e!1175696))))

(declare-fun lt!713912 () List!20317)

(declare-fun isPrefix!1856 (List!20317 List!20317) Bool)

(assert (=> b!1839783 (= res!826829 (isPrefix!1856 (t!171746 p!2031) lt!713912))))

(declare-fun tail!2769 (List!20317) List!20317)

(assert (=> b!1839783 (= lt!713912 (tail!2769 l!3477))))

(declare-fun res!826830 () Bool)

(assert (=> start!183084 (=> (not res!826830) (not e!1175693))))

(assert (=> start!183084 (= res!826830 (isPrefix!1856 p!2031 l!3477))))

(assert (=> start!183084 e!1175693))

(assert (=> start!183084 e!1175691))

(declare-fun e!1175694 () Bool)

(assert (=> start!183084 e!1175694))

(declare-fun b!1839784 () Bool)

(declare-fun e!1175692 () Bool)

(assert (=> b!1839784 (= e!1175696 e!1175692)))

(declare-fun res!826831 () Bool)

(assert (=> b!1839784 (=> (not res!826831) (not e!1175692))))

(declare-fun lt!713913 () Int)

(assert (=> b!1839784 (= res!826831 (<= (+ 1 lt!713913) (size!16047 lt!713912)))))

(assert (=> b!1839784 (= lt!713913 (size!16047 (t!171746 p!2031)))))

(declare-fun b!1839785 () Bool)

(assert (=> b!1839785 (= e!1175692 (not (and (<= 0 lt!713911) (< lt!713911 lt!713914))))))

(declare-fun head!4305 (List!20317) B!1539)

(declare-fun getSuffix!981 (List!20317 List!20317) List!20317)

(declare-fun apply!5444 (List!20317 Int) B!1539)

(assert (=> b!1839785 (= (head!4305 (getSuffix!981 lt!713912 (t!171746 p!2031))) (apply!5444 lt!713912 lt!713913))))

(declare-datatypes ((Unit!34969 0))(
  ( (Unit!34970) )
))
(declare-fun lt!713915 () Unit!34969)

(declare-fun lemmaGetSuffixHeadApplyNPlusOne!7 (List!20317 List!20317) Unit!34969)

(assert (=> b!1839785 (= lt!713915 (lemmaGetSuffixHeadApplyNPlusOne!7 lt!713912 (t!171746 p!2031)))))

(declare-fun b!1839786 () Bool)

(declare-fun tp!520255 () Bool)

(assert (=> b!1839786 (= e!1175694 (and tp_is_empty!8287 tp!520255))))

(assert (= (and start!183084 res!826830) b!1839781))

(assert (= (and b!1839781 res!826832) b!1839783))

(assert (= (and b!1839783 res!826829) b!1839784))

(assert (= (and b!1839784 res!826831) b!1839785))

(assert (= (and start!183084 (is-Cons!20247 p!2031)) b!1839782))

(assert (= (and start!183084 (is-Cons!20247 l!3477)) b!1839786))

(declare-fun m!2267453 () Bool)

(assert (=> b!1839781 m!2267453))

(declare-fun m!2267455 () Bool)

(assert (=> b!1839781 m!2267455))

(declare-fun m!2267457 () Bool)

(assert (=> b!1839784 m!2267457))

(declare-fun m!2267459 () Bool)

(assert (=> b!1839784 m!2267459))

(declare-fun m!2267461 () Bool)

(assert (=> b!1839783 m!2267461))

(declare-fun m!2267463 () Bool)

(assert (=> b!1839783 m!2267463))

(declare-fun m!2267465 () Bool)

(assert (=> start!183084 m!2267465))

(declare-fun m!2267467 () Bool)

(assert (=> b!1839785 m!2267467))

(assert (=> b!1839785 m!2267467))

(declare-fun m!2267469 () Bool)

(assert (=> b!1839785 m!2267469))

(declare-fun m!2267471 () Bool)

(assert (=> b!1839785 m!2267471))

(declare-fun m!2267473 () Bool)

(assert (=> b!1839785 m!2267473))

(push 1)

(assert (not b!1839782))

(assert (not b!1839786))

(assert (not start!183084))

(assert (not b!1839784))

(assert (not b!1839783))

(assert tp_is_empty!8287)

(assert (not b!1839785))

(assert (not b!1839781))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!562591 () Bool)

(declare-fun lt!713933 () Int)

(assert (=> d!562591 (>= lt!713933 0)))

(declare-fun e!1175717 () Int)

(assert (=> d!562591 (= lt!713933 e!1175717)))

(declare-fun c!300284 () Bool)

(assert (=> d!562591 (= c!300284 (is-Nil!20247 l!3477))))

(assert (=> d!562591 (= (size!16047 l!3477) lt!713933)))

(declare-fun b!1839809 () Bool)

(assert (=> b!1839809 (= e!1175717 0)))

(declare-fun b!1839810 () Bool)

(assert (=> b!1839810 (= e!1175717 (+ 1 (size!16047 (t!171746 l!3477))))))

(assert (= (and d!562591 c!300284) b!1839809))

(assert (= (and d!562591 (not c!300284)) b!1839810))

(declare-fun m!2267497 () Bool)

(assert (=> b!1839810 m!2267497))

(assert (=> b!1839781 d!562591))

(declare-fun d!562595 () Bool)

(declare-fun lt!713936 () Int)

(assert (=> d!562595 (>= lt!713936 0)))

(declare-fun e!1175720 () Int)

(assert (=> d!562595 (= lt!713936 e!1175720)))

(declare-fun c!300287 () Bool)

(assert (=> d!562595 (= c!300287 (is-Nil!20247 p!2031))))

(assert (=> d!562595 (= (size!16047 p!2031) lt!713936)))

(declare-fun b!1839815 () Bool)

(assert (=> b!1839815 (= e!1175720 0)))

(declare-fun b!1839816 () Bool)

(assert (=> b!1839816 (= e!1175720 (+ 1 (size!16047 (t!171746 p!2031))))))

(assert (= (and d!562595 c!300287) b!1839815))

(assert (= (and d!562595 (not c!300287)) b!1839816))

(assert (=> b!1839816 m!2267459))

(assert (=> b!1839781 d!562595))

(declare-fun d!562597 () Bool)

(assert (=> d!562597 (= (head!4305 (getSuffix!981 lt!713912 (t!171746 p!2031))) (h!25648 (getSuffix!981 lt!713912 (t!171746 p!2031))))))

(assert (=> b!1839785 d!562597))

(declare-fun d!562599 () Bool)

(declare-fun lt!713941 () List!20317)

(declare-fun ++!5500 (List!20317 List!20317) List!20317)

(assert (=> d!562599 (= (++!5500 (t!171746 p!2031) lt!713941) lt!713912)))

(declare-fun e!1175725 () List!20317)

(assert (=> d!562599 (= lt!713941 e!1175725)))

(declare-fun c!300292 () Bool)

(assert (=> d!562599 (= c!300292 (is-Cons!20247 (t!171746 p!2031)))))

(assert (=> d!562599 (>= (size!16047 lt!713912) (size!16047 (t!171746 p!2031)))))

(assert (=> d!562599 (= (getSuffix!981 lt!713912 (t!171746 p!2031)) lt!713941)))

(declare-fun b!1839825 () Bool)

(assert (=> b!1839825 (= e!1175725 (getSuffix!981 (tail!2769 lt!713912) (t!171746 (t!171746 p!2031))))))

(declare-fun b!1839826 () Bool)

(assert (=> b!1839826 (= e!1175725 lt!713912)))

(assert (= (and d!562599 c!300292) b!1839825))

(assert (= (and d!562599 (not c!300292)) b!1839826))

(declare-fun m!2267501 () Bool)

(assert (=> d!562599 m!2267501))

(assert (=> d!562599 m!2267457))

(assert (=> d!562599 m!2267459))

(declare-fun m!2267503 () Bool)

(assert (=> b!1839825 m!2267503))

(assert (=> b!1839825 m!2267503))

(declare-fun m!2267505 () Bool)

(assert (=> b!1839825 m!2267505))

(assert (=> b!1839785 d!562599))

(declare-fun d!562607 () Bool)

(declare-fun lt!713947 () B!1539)

(declare-fun contains!3736 (List!20317 B!1539) Bool)

(assert (=> d!562607 (contains!3736 lt!713912 lt!713947)))

(declare-fun e!1175736 () B!1539)

(assert (=> d!562607 (= lt!713947 e!1175736)))

(declare-fun c!300298 () Bool)

(assert (=> d!562607 (= c!300298 (= lt!713913 0))))

(declare-fun e!1175735 () Bool)

(assert (=> d!562607 e!1175735))

(declare-fun res!826849 () Bool)

(assert (=> d!562607 (=> (not res!826849) (not e!1175735))))

(assert (=> d!562607 (= res!826849 (<= 0 lt!713913))))

(assert (=> d!562607 (= (apply!5444 lt!713912 lt!713913) lt!713947)))

(declare-fun b!1839841 () Bool)

(assert (=> b!1839841 (= e!1175735 (< lt!713913 (size!16047 lt!713912)))))

(declare-fun b!1839842 () Bool)

(assert (=> b!1839842 (= e!1175736 (head!4305 lt!713912))))

(declare-fun b!1839843 () Bool)

(assert (=> b!1839843 (= e!1175736 (apply!5444 (tail!2769 lt!713912) (- lt!713913 1)))))

(assert (= (and d!562607 res!826849) b!1839841))

(assert (= (and d!562607 c!300298) b!1839842))

(assert (= (and d!562607 (not c!300298)) b!1839843))

(declare-fun m!2267513 () Bool)

(assert (=> d!562607 m!2267513))

(assert (=> b!1839841 m!2267457))

(declare-fun m!2267515 () Bool)

(assert (=> b!1839842 m!2267515))

(assert (=> b!1839843 m!2267503))

(assert (=> b!1839843 m!2267503))

(declare-fun m!2267517 () Bool)

(assert (=> b!1839843 m!2267517))

(assert (=> b!1839785 d!562607))

(declare-fun d!562611 () Bool)

(assert (=> d!562611 (= (head!4305 (getSuffix!981 lt!713912 (t!171746 p!2031))) (apply!5444 lt!713912 (size!16047 (t!171746 p!2031))))))

(declare-fun lt!713953 () Unit!34969)

(declare-fun choose!11574 (List!20317 List!20317) Unit!34969)

(assert (=> d!562611 (= lt!713953 (choose!11574 lt!713912 (t!171746 p!2031)))))

(assert (=> d!562611 (isPrefix!1856 (t!171746 p!2031) lt!713912)))

(assert (=> d!562611 (= (lemmaGetSuffixHeadApplyNPlusOne!7 lt!713912 (t!171746 p!2031)) lt!713953)))

(declare-fun bs!408558 () Bool)

(assert (= bs!408558 d!562611))

(assert (=> bs!408558 m!2267459))

(declare-fun m!2267525 () Bool)

(assert (=> bs!408558 m!2267525))

(assert (=> bs!408558 m!2267467))

(assert (=> bs!408558 m!2267459))

(declare-fun m!2267527 () Bool)

(assert (=> bs!408558 m!2267527))

(assert (=> bs!408558 m!2267461))

(assert (=> bs!408558 m!2267467))

(assert (=> bs!408558 m!2267469))

(assert (=> b!1839785 d!562611))

(declare-fun d!562615 () Bool)

(declare-fun lt!713954 () Int)

(assert (=> d!562615 (>= lt!713954 0)))

(declare-fun e!1175741 () Int)

(assert (=> d!562615 (= lt!713954 e!1175741)))

(declare-fun c!300302 () Bool)

(assert (=> d!562615 (= c!300302 (is-Nil!20247 lt!713912))))

(assert (=> d!562615 (= (size!16047 lt!713912) lt!713954)))

(declare-fun b!1839851 () Bool)

(assert (=> b!1839851 (= e!1175741 0)))

(declare-fun b!1839852 () Bool)

(assert (=> b!1839852 (= e!1175741 (+ 1 (size!16047 (t!171746 lt!713912))))))

(assert (= (and d!562615 c!300302) b!1839851))

(assert (= (and d!562615 (not c!300302)) b!1839852))

(declare-fun m!2267529 () Bool)

(assert (=> b!1839852 m!2267529))

(assert (=> b!1839784 d!562615))

(declare-fun d!562617 () Bool)

(declare-fun lt!713955 () Int)

(assert (=> d!562617 (>= lt!713955 0)))

(declare-fun e!1175742 () Int)

(assert (=> d!562617 (= lt!713955 e!1175742)))

(declare-fun c!300303 () Bool)

(assert (=> d!562617 (= c!300303 (is-Nil!20247 (t!171746 p!2031)))))

(assert (=> d!562617 (= (size!16047 (t!171746 p!2031)) lt!713955)))

(declare-fun b!1839853 () Bool)

(assert (=> b!1839853 (= e!1175742 0)))

(declare-fun b!1839854 () Bool)

(assert (=> b!1839854 (= e!1175742 (+ 1 (size!16047 (t!171746 (t!171746 p!2031)))))))

(assert (= (and d!562617 c!300303) b!1839853))

(assert (= (and d!562617 (not c!300303)) b!1839854))

(declare-fun m!2267531 () Bool)

(assert (=> b!1839854 m!2267531))

(assert (=> b!1839784 d!562617))

(declare-fun b!1839872 () Bool)

(declare-fun res!826867 () Bool)

(declare-fun e!1175756 () Bool)

(assert (=> b!1839872 (=> (not res!826867) (not e!1175756))))

(assert (=> b!1839872 (= res!826867 (= (head!4305 p!2031) (head!4305 l!3477)))))

(declare-fun b!1839874 () Bool)

(declare-fun e!1175757 () Bool)

(assert (=> b!1839874 (= e!1175757 (>= (size!16047 l!3477) (size!16047 p!2031)))))

(declare-fun b!1839871 () Bool)

(declare-fun e!1175755 () Bool)

(assert (=> b!1839871 (= e!1175755 e!1175756)))

(declare-fun res!826868 () Bool)

(assert (=> b!1839871 (=> (not res!826868) (not e!1175756))))

(assert (=> b!1839871 (= res!826868 (not (is-Nil!20247 l!3477)))))

(declare-fun d!562619 () Bool)

(assert (=> d!562619 e!1175757))

(declare-fun res!826870 () Bool)

(assert (=> d!562619 (=> res!826870 e!1175757)))

(declare-fun lt!713963 () Bool)

(assert (=> d!562619 (= res!826870 (not lt!713963))))

(assert (=> d!562619 (= lt!713963 e!1175755)))

(declare-fun res!826869 () Bool)

(assert (=> d!562619 (=> res!826869 e!1175755)))

(assert (=> d!562619 (= res!826869 (is-Nil!20247 p!2031))))

(assert (=> d!562619 (= (isPrefix!1856 p!2031 l!3477) lt!713963)))

(declare-fun b!1839873 () Bool)

(assert (=> b!1839873 (= e!1175756 (isPrefix!1856 (tail!2769 p!2031) (tail!2769 l!3477)))))

(assert (= (and d!562619 (not res!826869)) b!1839871))

(assert (= (and b!1839871 res!826868) b!1839872))

(assert (= (and b!1839872 res!826867) b!1839873))

(assert (= (and d!562619 (not res!826870)) b!1839874))

(declare-fun m!2267537 () Bool)

(assert (=> b!1839872 m!2267537))

(declare-fun m!2267539 () Bool)

(assert (=> b!1839872 m!2267539))

(assert (=> b!1839874 m!2267453))

(assert (=> b!1839874 m!2267455))

(declare-fun m!2267541 () Bool)

(assert (=> b!1839873 m!2267541))

(assert (=> b!1839873 m!2267463))

(assert (=> b!1839873 m!2267541))

(assert (=> b!1839873 m!2267463))

(declare-fun m!2267543 () Bool)

(assert (=> b!1839873 m!2267543))

(assert (=> start!183084 d!562619))

(declare-fun b!1839876 () Bool)

(declare-fun res!826871 () Bool)

(declare-fun e!1175759 () Bool)

(assert (=> b!1839876 (=> (not res!826871) (not e!1175759))))

(assert (=> b!1839876 (= res!826871 (= (head!4305 (t!171746 p!2031)) (head!4305 lt!713912)))))

(declare-fun b!1839878 () Bool)

(declare-fun e!1175760 () Bool)

(assert (=> b!1839878 (= e!1175760 (>= (size!16047 lt!713912) (size!16047 (t!171746 p!2031))))))

(declare-fun b!1839875 () Bool)

(declare-fun e!1175758 () Bool)

(assert (=> b!1839875 (= e!1175758 e!1175759)))

(declare-fun res!826872 () Bool)

(assert (=> b!1839875 (=> (not res!826872) (not e!1175759))))

(assert (=> b!1839875 (= res!826872 (not (is-Nil!20247 lt!713912)))))

(declare-fun d!562623 () Bool)

(assert (=> d!562623 e!1175760))

(declare-fun res!826874 () Bool)

(assert (=> d!562623 (=> res!826874 e!1175760)))

(declare-fun lt!713964 () Bool)

(assert (=> d!562623 (= res!826874 (not lt!713964))))

(assert (=> d!562623 (= lt!713964 e!1175758)))

(declare-fun res!826873 () Bool)

(assert (=> d!562623 (=> res!826873 e!1175758)))

(assert (=> d!562623 (= res!826873 (is-Nil!20247 (t!171746 p!2031)))))

(assert (=> d!562623 (= (isPrefix!1856 (t!171746 p!2031) lt!713912) lt!713964)))

(declare-fun b!1839877 () Bool)

(assert (=> b!1839877 (= e!1175759 (isPrefix!1856 (tail!2769 (t!171746 p!2031)) (tail!2769 lt!713912)))))

(assert (= (and d!562623 (not res!826873)) b!1839875))

(assert (= (and b!1839875 res!826872) b!1839876))

(assert (= (and b!1839876 res!826871) b!1839877))

(assert (= (and d!562623 (not res!826874)) b!1839878))

(declare-fun m!2267545 () Bool)

(assert (=> b!1839876 m!2267545))

(assert (=> b!1839876 m!2267515))

(assert (=> b!1839878 m!2267457))

(assert (=> b!1839878 m!2267459))

(declare-fun m!2267547 () Bool)

(assert (=> b!1839877 m!2267547))

(assert (=> b!1839877 m!2267503))

(assert (=> b!1839877 m!2267547))

(assert (=> b!1839877 m!2267503))

(declare-fun m!2267549 () Bool)

(assert (=> b!1839877 m!2267549))

(assert (=> b!1839783 d!562623))

(declare-fun d!562625 () Bool)

(assert (=> d!562625 (= (tail!2769 l!3477) (t!171746 l!3477))))

(assert (=> b!1839783 d!562625))

(declare-fun b!1839887 () Bool)

(declare-fun e!1175766 () Bool)

(declare-fun tp!520265 () Bool)

(assert (=> b!1839887 (= e!1175766 (and tp_is_empty!8287 tp!520265))))

(assert (=> b!1839782 (= tp!520256 e!1175766)))

(assert (= (and b!1839782 (is-Cons!20247 (t!171746 p!2031))) b!1839887))

(declare-fun b!1839888 () Bool)

(declare-fun e!1175767 () Bool)

(declare-fun tp!520266 () Bool)

(assert (=> b!1839888 (= e!1175767 (and tp_is_empty!8287 tp!520266))))

(assert (=> b!1839786 (= tp!520255 e!1175767)))

(assert (= (and b!1839786 (is-Cons!20247 (t!171746 l!3477))) b!1839888))

(push 1)

(assert (not b!1839852))

(assert (not b!1839872))

(assert (not b!1839888))

(assert (not d!562599))

(assert (not b!1839843))

(assert (not b!1839841))

(assert (not d!562607))

(assert (not b!1839810))

(assert tp_is_empty!8287)

(assert (not b!1839878))

(assert (not b!1839816))

(assert (not b!1839825))

(assert (not b!1839854))

(assert (not b!1839887))

(assert (not b!1839876))

(assert (not b!1839873))

(assert (not b!1839842))

(assert (not b!1839877))

(assert (not d!562611))

(assert (not b!1839874))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

