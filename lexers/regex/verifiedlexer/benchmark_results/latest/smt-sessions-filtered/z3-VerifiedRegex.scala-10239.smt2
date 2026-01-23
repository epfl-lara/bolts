; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!533986 () Bool)

(assert start!533986)

(declare-fun b!5048776 () Bool)

(declare-fun e!3152237 () Bool)

(declare-fun e!3152238 () Bool)

(assert (=> b!5048776 (= e!3152237 e!3152238)))

(declare-fun res!2150309 () Bool)

(assert (=> b!5048776 (=> (not res!2150309) (not e!3152238))))

(declare-datatypes ((T!104460 0))(
  ( (T!104461 (val!23554 Int)) )
))
(declare-datatypes ((List!58464 0))(
  ( (Nil!58340) (Cons!58340 (h!64788 T!104460) (t!371103 List!58464)) )
))
(declare-fun l!2763 () List!58464)

(declare-fun lt!2086101 () Int)

(declare-fun i!658 () Int)

(get-info :version)

(assert (=> b!5048776 (= res!2150309 (and (<= i!658 lt!2086101) (not ((_ is Nil!58340) l!2763)) (= i!658 0)))))

(declare-fun size!38965 (List!58464) Int)

(assert (=> b!5048776 (= lt!2086101 (size!38965 l!2763))))

(declare-fun b!5048777 () Bool)

(declare-fun res!2150310 () Bool)

(assert (=> b!5048777 (=> (not res!2150310) (not e!3152238))))

(declare-fun drop!2664 (List!58464 Int) List!58464)

(assert (=> b!5048777 (= res!2150310 (= (drop!2664 l!2763 i!658) l!2763))))

(declare-fun res!2150311 () Bool)

(assert (=> start!533986 (=> (not res!2150311) (not e!3152237))))

(assert (=> start!533986 (= res!2150311 (<= 0 i!658))))

(assert (=> start!533986 e!3152237))

(assert (=> start!533986 true))

(declare-fun e!3152236 () Bool)

(assert (=> start!533986 e!3152236))

(declare-fun b!5048779 () Bool)

(declare-fun tp_is_empty!36863 () Bool)

(declare-fun tp!1411981 () Bool)

(assert (=> b!5048779 (= e!3152236 (and tp_is_empty!36863 tp!1411981))))

(declare-fun b!5048778 () Bool)

(declare-fun slice!881 (List!58464 Int Int) List!58464)

(declare-fun take!851 (List!58464 Int) List!58464)

(assert (=> b!5048778 (= e!3152238 (not (= (slice!881 l!2763 0 lt!2086101) (take!851 (drop!2664 l!2763 0) lt!2086101))))))

(assert (= (and start!533986 res!2150311) b!5048776))

(assert (= (and b!5048776 res!2150309) b!5048777))

(assert (= (and b!5048777 res!2150310) b!5048778))

(assert (= (and start!533986 ((_ is Cons!58340) l!2763)) b!5048779))

(declare-fun m!6083868 () Bool)

(assert (=> b!5048776 m!6083868))

(declare-fun m!6083870 () Bool)

(assert (=> b!5048777 m!6083870))

(declare-fun m!6083872 () Bool)

(assert (=> b!5048778 m!6083872))

(declare-fun m!6083874 () Bool)

(assert (=> b!5048778 m!6083874))

(assert (=> b!5048778 m!6083874))

(declare-fun m!6083876 () Bool)

(assert (=> b!5048778 m!6083876))

(check-sat (not b!5048779) tp_is_empty!36863 (not b!5048777) (not b!5048776) (not b!5048778))
(check-sat)
(get-model)

(declare-fun d!1624720 () Bool)

(declare-fun lt!2086104 () Int)

(assert (=> d!1624720 (>= lt!2086104 0)))

(declare-fun e!3152241 () Int)

(assert (=> d!1624720 (= lt!2086104 e!3152241)))

(declare-fun c!865818 () Bool)

(assert (=> d!1624720 (= c!865818 ((_ is Nil!58340) l!2763))))

(assert (=> d!1624720 (= (size!38965 l!2763) lt!2086104)))

(declare-fun b!5048784 () Bool)

(assert (=> b!5048784 (= e!3152241 0)))

(declare-fun b!5048785 () Bool)

(assert (=> b!5048785 (= e!3152241 (+ 1 (size!38965 (t!371103 l!2763))))))

(assert (= (and d!1624720 c!865818) b!5048784))

(assert (= (and d!1624720 (not c!865818)) b!5048785))

(declare-fun m!6083878 () Bool)

(assert (=> b!5048785 m!6083878))

(assert (=> b!5048776 d!1624720))

(declare-fun b!5048810 () Bool)

(declare-fun e!3152259 () Int)

(declare-fun call!351912 () Int)

(assert (=> b!5048810 (= e!3152259 (- call!351912 i!658))))

(declare-fun b!5048811 () Bool)

(declare-fun e!3152256 () List!58464)

(assert (=> b!5048811 (= e!3152256 Nil!58340)))

(declare-fun d!1624724 () Bool)

(declare-fun e!3152257 () Bool)

(assert (=> d!1624724 e!3152257))

(declare-fun res!2150314 () Bool)

(assert (=> d!1624724 (=> (not res!2150314) (not e!3152257))))

(declare-fun lt!2086110 () List!58464)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10376 (List!58464) (InoxSet T!104460))

(assert (=> d!1624724 (= res!2150314 (= ((_ map implies) (content!10376 lt!2086110) (content!10376 l!2763)) ((as const (InoxSet T!104460)) true)))))

(assert (=> d!1624724 (= lt!2086110 e!3152256)))

(declare-fun c!865831 () Bool)

(assert (=> d!1624724 (= c!865831 ((_ is Nil!58340) l!2763))))

(assert (=> d!1624724 (= (drop!2664 l!2763 i!658) lt!2086110)))

(declare-fun b!5048812 () Bool)

(declare-fun e!3152258 () List!58464)

(assert (=> b!5048812 (= e!3152258 (drop!2664 (t!371103 l!2763) (- i!658 1)))))

(declare-fun b!5048813 () Bool)

(declare-fun e!3152255 () Int)

(assert (=> b!5048813 (= e!3152257 (= (size!38965 lt!2086110) e!3152255))))

(declare-fun c!865830 () Bool)

(assert (=> b!5048813 (= c!865830 (<= i!658 0))))

(declare-fun b!5048814 () Bool)

(assert (=> b!5048814 (= e!3152255 e!3152259)))

(declare-fun c!865832 () Bool)

(assert (=> b!5048814 (= c!865832 (>= i!658 call!351912))))

(declare-fun b!5048815 () Bool)

(assert (=> b!5048815 (= e!3152256 e!3152258)))

(declare-fun c!865833 () Bool)

(assert (=> b!5048815 (= c!865833 (<= i!658 0))))

(declare-fun b!5048816 () Bool)

(assert (=> b!5048816 (= e!3152258 l!2763)))

(declare-fun b!5048817 () Bool)

(assert (=> b!5048817 (= e!3152259 0)))

(declare-fun b!5048818 () Bool)

(assert (=> b!5048818 (= e!3152255 call!351912)))

(declare-fun bm!351907 () Bool)

(assert (=> bm!351907 (= call!351912 (size!38965 l!2763))))

(assert (= (and d!1624724 c!865831) b!5048811))

(assert (= (and d!1624724 (not c!865831)) b!5048815))

(assert (= (and b!5048815 c!865833) b!5048816))

(assert (= (and b!5048815 (not c!865833)) b!5048812))

(assert (= (and d!1624724 res!2150314) b!5048813))

(assert (= (and b!5048813 c!865830) b!5048818))

(assert (= (and b!5048813 (not c!865830)) b!5048814))

(assert (= (and b!5048814 c!865832) b!5048817))

(assert (= (and b!5048814 (not c!865832)) b!5048810))

(assert (= (or b!5048818 b!5048814 b!5048810) bm!351907))

(declare-fun m!6083882 () Bool)

(assert (=> d!1624724 m!6083882))

(declare-fun m!6083884 () Bool)

(assert (=> d!1624724 m!6083884))

(declare-fun m!6083886 () Bool)

(assert (=> b!5048812 m!6083886))

(declare-fun m!6083888 () Bool)

(assert (=> b!5048813 m!6083888))

(assert (=> bm!351907 m!6083868))

(assert (=> b!5048777 d!1624724))

(declare-fun d!1624728 () Bool)

(assert (=> d!1624728 (= (slice!881 l!2763 0 lt!2086101) (take!851 (drop!2664 l!2763 0) (- lt!2086101 0)))))

(declare-fun bs!1189198 () Bool)

(assert (= bs!1189198 d!1624728))

(assert (=> bs!1189198 m!6083874))

(assert (=> bs!1189198 m!6083874))

(declare-fun m!6083890 () Bool)

(assert (=> bs!1189198 m!6083890))

(assert (=> b!5048778 d!1624728))

(declare-fun d!1624730 () Bool)

(declare-fun e!3152279 () Bool)

(assert (=> d!1624730 e!3152279))

(declare-fun res!2150319 () Bool)

(assert (=> d!1624730 (=> (not res!2150319) (not e!3152279))))

(declare-fun lt!2086115 () List!58464)

(assert (=> d!1624730 (= res!2150319 (= ((_ map implies) (content!10376 lt!2086115) (content!10376 (drop!2664 l!2763 0))) ((as const (InoxSet T!104460)) true)))))

(declare-fun e!3152278 () List!58464)

(assert (=> d!1624730 (= lt!2086115 e!3152278)))

(declare-fun c!865849 () Bool)

(assert (=> d!1624730 (= c!865849 (or ((_ is Nil!58340) (drop!2664 l!2763 0)) (<= lt!2086101 0)))))

(assert (=> d!1624730 (= (take!851 (drop!2664 l!2763 0) lt!2086101) lt!2086115)))

(declare-fun b!5048851 () Bool)

(declare-fun e!3152281 () Int)

(declare-fun e!3152280 () Int)

(assert (=> b!5048851 (= e!3152281 e!3152280)))

(declare-fun c!865850 () Bool)

(assert (=> b!5048851 (= c!865850 (>= lt!2086101 (size!38965 (drop!2664 l!2763 0))))))

(declare-fun b!5048852 () Bool)

(assert (=> b!5048852 (= e!3152280 lt!2086101)))

(declare-fun b!5048853 () Bool)

(assert (=> b!5048853 (= e!3152278 Nil!58340)))

(declare-fun b!5048854 () Bool)

(assert (=> b!5048854 (= e!3152278 (Cons!58340 (h!64788 (drop!2664 l!2763 0)) (take!851 (t!371103 (drop!2664 l!2763 0)) (- lt!2086101 1))))))

(declare-fun b!5048855 () Bool)

(assert (=> b!5048855 (= e!3152279 (= (size!38965 lt!2086115) e!3152281))))

(declare-fun c!865848 () Bool)

(assert (=> b!5048855 (= c!865848 (<= lt!2086101 0))))

(declare-fun b!5048856 () Bool)

(assert (=> b!5048856 (= e!3152281 0)))

(declare-fun b!5048857 () Bool)

(assert (=> b!5048857 (= e!3152280 (size!38965 (drop!2664 l!2763 0)))))

(assert (= (and d!1624730 c!865849) b!5048853))

(assert (= (and d!1624730 (not c!865849)) b!5048854))

(assert (= (and d!1624730 res!2150319) b!5048855))

(assert (= (and b!5048855 c!865848) b!5048856))

(assert (= (and b!5048855 (not c!865848)) b!5048851))

(assert (= (and b!5048851 c!865850) b!5048857))

(assert (= (and b!5048851 (not c!865850)) b!5048852))

(assert (=> b!5048851 m!6083874))

(declare-fun m!6083892 () Bool)

(assert (=> b!5048851 m!6083892))

(assert (=> b!5048857 m!6083874))

(assert (=> b!5048857 m!6083892))

(declare-fun m!6083894 () Bool)

(assert (=> d!1624730 m!6083894))

(assert (=> d!1624730 m!6083874))

(declare-fun m!6083896 () Bool)

(assert (=> d!1624730 m!6083896))

(declare-fun m!6083898 () Bool)

(assert (=> b!5048854 m!6083898))

(declare-fun m!6083900 () Bool)

(assert (=> b!5048855 m!6083900))

(assert (=> b!5048778 d!1624730))

(declare-fun b!5048858 () Bool)

(declare-fun e!3152286 () Int)

(declare-fun call!351915 () Int)

(assert (=> b!5048858 (= e!3152286 (- call!351915 0))))

(declare-fun b!5048859 () Bool)

(declare-fun e!3152283 () List!58464)

(assert (=> b!5048859 (= e!3152283 Nil!58340)))

(declare-fun d!1624732 () Bool)

(declare-fun e!3152284 () Bool)

(assert (=> d!1624732 e!3152284))

(declare-fun res!2150320 () Bool)

(assert (=> d!1624732 (=> (not res!2150320) (not e!3152284))))

(declare-fun lt!2086116 () List!58464)

(assert (=> d!1624732 (= res!2150320 (= ((_ map implies) (content!10376 lt!2086116) (content!10376 l!2763)) ((as const (InoxSet T!104460)) true)))))

(assert (=> d!1624732 (= lt!2086116 e!3152283)))

(declare-fun c!865852 () Bool)

(assert (=> d!1624732 (= c!865852 ((_ is Nil!58340) l!2763))))

(assert (=> d!1624732 (= (drop!2664 l!2763 0) lt!2086116)))

(declare-fun b!5048860 () Bool)

(declare-fun e!3152285 () List!58464)

(assert (=> b!5048860 (= e!3152285 (drop!2664 (t!371103 l!2763) (- 0 1)))))

(declare-fun b!5048861 () Bool)

(declare-fun e!3152282 () Int)

(assert (=> b!5048861 (= e!3152284 (= (size!38965 lt!2086116) e!3152282))))

(declare-fun c!865851 () Bool)

(assert (=> b!5048861 (= c!865851 (<= 0 0))))

(declare-fun b!5048862 () Bool)

(assert (=> b!5048862 (= e!3152282 e!3152286)))

(declare-fun c!865853 () Bool)

(assert (=> b!5048862 (= c!865853 (>= 0 call!351915))))

(declare-fun b!5048863 () Bool)

(assert (=> b!5048863 (= e!3152283 e!3152285)))

(declare-fun c!865854 () Bool)

(assert (=> b!5048863 (= c!865854 (<= 0 0))))

(declare-fun b!5048864 () Bool)

(assert (=> b!5048864 (= e!3152285 l!2763)))

(declare-fun b!5048865 () Bool)

(assert (=> b!5048865 (= e!3152286 0)))

(declare-fun b!5048866 () Bool)

(assert (=> b!5048866 (= e!3152282 call!351915)))

(declare-fun bm!351910 () Bool)

(assert (=> bm!351910 (= call!351915 (size!38965 l!2763))))

(assert (= (and d!1624732 c!865852) b!5048859))

(assert (= (and d!1624732 (not c!865852)) b!5048863))

(assert (= (and b!5048863 c!865854) b!5048864))

(assert (= (and b!5048863 (not c!865854)) b!5048860))

(assert (= (and d!1624732 res!2150320) b!5048861))

(assert (= (and b!5048861 c!865851) b!5048866))

(assert (= (and b!5048861 (not c!865851)) b!5048862))

(assert (= (and b!5048862 c!865853) b!5048865))

(assert (= (and b!5048862 (not c!865853)) b!5048858))

(assert (= (or b!5048866 b!5048862 b!5048858) bm!351910))

(declare-fun m!6083902 () Bool)

(assert (=> d!1624732 m!6083902))

(assert (=> d!1624732 m!6083884))

(declare-fun m!6083904 () Bool)

(assert (=> b!5048860 m!6083904))

(declare-fun m!6083906 () Bool)

(assert (=> b!5048861 m!6083906))

(assert (=> bm!351910 m!6083868))

(assert (=> b!5048778 d!1624732))

(declare-fun b!5048871 () Bool)

(declare-fun e!3152289 () Bool)

(declare-fun tp!1411984 () Bool)

(assert (=> b!5048871 (= e!3152289 (and tp_is_empty!36863 tp!1411984))))

(assert (=> b!5048779 (= tp!1411981 e!3152289)))

(assert (= (and b!5048779 ((_ is Cons!58340) (t!371103 l!2763))) b!5048871))

(check-sat (not b!5048812) (not d!1624724) (not d!1624730) (not b!5048785) tp_is_empty!36863 (not b!5048813) (not b!5048855) (not b!5048860) (not d!1624728) (not b!5048854) (not b!5048851) (not b!5048857) (not d!1624732) (not b!5048871) (not bm!351910) (not bm!351907) (not b!5048861))
(check-sat)
