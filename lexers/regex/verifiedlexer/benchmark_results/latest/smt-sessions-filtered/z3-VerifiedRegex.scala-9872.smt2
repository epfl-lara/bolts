; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!517664 () Bool)

(assert start!517664)

(declare-fun b!4929693 () Bool)

(declare-fun e!3079905 () Bool)

(declare-datatypes ((C!26972 0))(
  ( (C!26973 (val!22820 Int)) )
))
(declare-datatypes ((List!56830 0))(
  ( (Nil!56706) (Cons!56706 (h!63154 C!26972) (t!367306 List!56830)) )
))
(declare-fun lt!2029207 () List!56830)

(declare-fun lt!2029208 () Int)

(declare-fun size!37503 (List!56830) Int)

(assert (=> b!4929693 (= e!3079905 (>= (size!37503 lt!2029207) lt!2029208))))

(declare-fun b!4929694 () Bool)

(declare-fun res!2103671 () Bool)

(declare-fun e!3079907 () Bool)

(assert (=> b!4929694 (=> (not res!2103671) (not e!3079907))))

(declare-fun totalInputSize!132 () Int)

(declare-datatypes ((IArray!29821 0))(
  ( (IArray!29822 (innerList!14968 List!56830)) )
))
(declare-datatypes ((Conc!14880 0))(
  ( (Node!14880 (left!41354 Conc!14880) (right!41684 Conc!14880) (csize!29990 Int) (cheight!15091 Int)) (Leaf!24753 (xs!18204 IArray!29821) (csize!29991 Int)) (Empty!14880) )
))
(declare-datatypes ((BalanceConc!29190 0))(
  ( (BalanceConc!29191 (c!840126 Conc!14880)) )
))
(declare-fun totalInput!685 () BalanceConc!29190)

(declare-fun size!37504 (BalanceConc!29190) Int)

(assert (=> b!4929694 (= res!2103671 (= totalInputSize!132 (size!37504 totalInput!685)))))

(declare-fun b!4929695 () Bool)

(assert (=> b!4929695 (= e!3079907 (not e!3079905))))

(declare-fun res!2103669 () Bool)

(assert (=> b!4929695 (=> res!2103669 e!3079905)))

(declare-fun testedP!110 () List!56830)

(declare-fun isPrefix!4969 (List!56830 List!56830) Bool)

(assert (=> b!4929695 (= res!2103669 (not (isPrefix!4969 testedP!110 lt!2029207)))))

(declare-fun lt!2029206 () List!56830)

(assert (=> b!4929695 (isPrefix!4969 testedP!110 lt!2029206)))

(declare-datatypes ((Unit!147325 0))(
  ( (Unit!147326) )
))
(declare-fun lt!2029209 () Unit!147325)

(declare-fun testedSuffix!70 () List!56830)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3193 (List!56830 List!56830) Unit!147325)

(assert (=> b!4929695 (= lt!2029209 (lemmaConcatTwoListThenFirstIsPrefix!3193 testedP!110 testedSuffix!70))))

(declare-fun res!2103672 () Bool)

(declare-fun e!3079910 () Bool)

(assert (=> start!517664 (=> (not res!2103672) (not e!3079910))))

(assert (=> start!517664 (= res!2103672 (= lt!2029206 lt!2029207))))

(declare-fun list!17969 (BalanceConc!29190) List!56830)

(assert (=> start!517664 (= lt!2029207 (list!17969 totalInput!685))))

(declare-fun ++!12336 (List!56830 List!56830) List!56830)

(assert (=> start!517664 (= lt!2029206 (++!12336 testedP!110 testedSuffix!70))))

(assert (=> start!517664 e!3079910))

(declare-fun e!3079909 () Bool)

(assert (=> start!517664 e!3079909))

(assert (=> start!517664 true))

(declare-fun e!3079908 () Bool)

(declare-fun inv!73521 (BalanceConc!29190) Bool)

(assert (=> start!517664 (and (inv!73521 totalInput!685) e!3079908)))

(declare-fun e!3079906 () Bool)

(assert (=> start!517664 e!3079906))

(declare-fun b!4929696 () Bool)

(declare-fun tp_is_empty!35919 () Bool)

(declare-fun tp!1383889 () Bool)

(assert (=> b!4929696 (= e!3079909 (and tp_is_empty!35919 tp!1383889))))

(declare-fun b!4929697 () Bool)

(assert (=> b!4929697 (= e!3079910 e!3079907)))

(declare-fun res!2103670 () Bool)

(assert (=> b!4929697 (=> (not res!2103670) (not e!3079907))))

(declare-fun testedPSize!70 () Int)

(assert (=> b!4929697 (= res!2103670 (= testedPSize!70 lt!2029208))))

(assert (=> b!4929697 (= lt!2029208 (size!37503 testedP!110))))

(declare-fun b!4929698 () Bool)

(declare-fun tp!1383887 () Bool)

(assert (=> b!4929698 (= e!3079906 (and tp_is_empty!35919 tp!1383887))))

(declare-fun b!4929699 () Bool)

(declare-fun tp!1383888 () Bool)

(declare-fun inv!73522 (Conc!14880) Bool)

(assert (=> b!4929699 (= e!3079908 (and (inv!73522 (c!840126 totalInput!685)) tp!1383888))))

(assert (= (and start!517664 res!2103672) b!4929697))

(assert (= (and b!4929697 res!2103670) b!4929694))

(assert (= (and b!4929694 res!2103671) b!4929695))

(assert (= (and b!4929695 (not res!2103669)) b!4929693))

(get-info :version)

(assert (= (and start!517664 ((_ is Cons!56706) testedP!110)) b!4929696))

(assert (= start!517664 b!4929699))

(assert (= (and start!517664 ((_ is Cons!56706) testedSuffix!70)) b!4929698))

(declare-fun m!5949824 () Bool)

(assert (=> b!4929695 m!5949824))

(declare-fun m!5949826 () Bool)

(assert (=> b!4929695 m!5949826))

(declare-fun m!5949828 () Bool)

(assert (=> b!4929695 m!5949828))

(declare-fun m!5949830 () Bool)

(assert (=> b!4929693 m!5949830))

(declare-fun m!5949832 () Bool)

(assert (=> b!4929697 m!5949832))

(declare-fun m!5949834 () Bool)

(assert (=> b!4929694 m!5949834))

(declare-fun m!5949836 () Bool)

(assert (=> b!4929699 m!5949836))

(declare-fun m!5949838 () Bool)

(assert (=> start!517664 m!5949838))

(declare-fun m!5949840 () Bool)

(assert (=> start!517664 m!5949840))

(declare-fun m!5949842 () Bool)

(assert (=> start!517664 m!5949842))

(check-sat (not b!4929693) (not b!4929699) tp_is_empty!35919 (not b!4929698) (not b!4929695) (not b!4929696) (not b!4929694) (not b!4929697) (not start!517664))
(check-sat)
(get-model)

(declare-fun d!1587197 () Bool)

(declare-fun lt!2029212 () Int)

(assert (=> d!1587197 (>= lt!2029212 0)))

(declare-fun e!3079913 () Int)

(assert (=> d!1587197 (= lt!2029212 e!3079913)))

(declare-fun c!840129 () Bool)

(assert (=> d!1587197 (= c!840129 ((_ is Nil!56706) testedP!110))))

(assert (=> d!1587197 (= (size!37503 testedP!110) lt!2029212)))

(declare-fun b!4929704 () Bool)

(assert (=> b!4929704 (= e!3079913 0)))

(declare-fun b!4929705 () Bool)

(assert (=> b!4929705 (= e!3079913 (+ 1 (size!37503 (t!367306 testedP!110))))))

(assert (= (and d!1587197 c!840129) b!4929704))

(assert (= (and d!1587197 (not c!840129)) b!4929705))

(declare-fun m!5949844 () Bool)

(assert (=> b!4929705 m!5949844))

(assert (=> b!4929697 d!1587197))

(declare-fun d!1587201 () Bool)

(declare-fun lt!2029215 () Int)

(assert (=> d!1587201 (= lt!2029215 (size!37503 (list!17969 totalInput!685)))))

(declare-fun size!37505 (Conc!14880) Int)

(assert (=> d!1587201 (= lt!2029215 (size!37505 (c!840126 totalInput!685)))))

(assert (=> d!1587201 (= (size!37504 totalInput!685) lt!2029215)))

(declare-fun bs!1180230 () Bool)

(assert (= bs!1180230 d!1587201))

(assert (=> bs!1180230 m!5949838))

(assert (=> bs!1180230 m!5949838))

(declare-fun m!5949848 () Bool)

(assert (=> bs!1180230 m!5949848))

(declare-fun m!5949850 () Bool)

(assert (=> bs!1180230 m!5949850))

(assert (=> b!4929694 d!1587201))

(declare-fun d!1587205 () Bool)

(declare-fun c!840135 () Bool)

(assert (=> d!1587205 (= c!840135 ((_ is Node!14880) (c!840126 totalInput!685)))))

(declare-fun e!3079924 () Bool)

(assert (=> d!1587205 (= (inv!73522 (c!840126 totalInput!685)) e!3079924)))

(declare-fun b!4929724 () Bool)

(declare-fun inv!73523 (Conc!14880) Bool)

(assert (=> b!4929724 (= e!3079924 (inv!73523 (c!840126 totalInput!685)))))

(declare-fun b!4929725 () Bool)

(declare-fun e!3079925 () Bool)

(assert (=> b!4929725 (= e!3079924 e!3079925)))

(declare-fun res!2103681 () Bool)

(assert (=> b!4929725 (= res!2103681 (not ((_ is Leaf!24753) (c!840126 totalInput!685))))))

(assert (=> b!4929725 (=> res!2103681 e!3079925)))

(declare-fun b!4929726 () Bool)

(declare-fun inv!73524 (Conc!14880) Bool)

(assert (=> b!4929726 (= e!3079925 (inv!73524 (c!840126 totalInput!685)))))

(assert (= (and d!1587205 c!840135) b!4929724))

(assert (= (and d!1587205 (not c!840135)) b!4929725))

(assert (= (and b!4929725 (not res!2103681)) b!4929726))

(declare-fun m!5949864 () Bool)

(assert (=> b!4929724 m!5949864))

(declare-fun m!5949866 () Bool)

(assert (=> b!4929726 m!5949866))

(assert (=> b!4929699 d!1587205))

(declare-fun d!1587209 () Bool)

(declare-fun lt!2029219 () Int)

(assert (=> d!1587209 (>= lt!2029219 0)))

(declare-fun e!3079926 () Int)

(assert (=> d!1587209 (= lt!2029219 e!3079926)))

(declare-fun c!840136 () Bool)

(assert (=> d!1587209 (= c!840136 ((_ is Nil!56706) lt!2029207))))

(assert (=> d!1587209 (= (size!37503 lt!2029207) lt!2029219)))

(declare-fun b!4929727 () Bool)

(assert (=> b!4929727 (= e!3079926 0)))

(declare-fun b!4929728 () Bool)

(assert (=> b!4929728 (= e!3079926 (+ 1 (size!37503 (t!367306 lt!2029207))))))

(assert (= (and d!1587209 c!840136) b!4929727))

(assert (= (and d!1587209 (not c!840136)) b!4929728))

(declare-fun m!5949868 () Bool)

(assert (=> b!4929728 m!5949868))

(assert (=> b!4929693 d!1587209))

(declare-fun b!4929748 () Bool)

(declare-fun e!3079938 () Bool)

(assert (=> b!4929748 (= e!3079938 (>= (size!37503 lt!2029207) (size!37503 testedP!110)))))

(declare-fun b!4929745 () Bool)

(declare-fun e!3079937 () Bool)

(declare-fun e!3079939 () Bool)

(assert (=> b!4929745 (= e!3079937 e!3079939)))

(declare-fun res!2103690 () Bool)

(assert (=> b!4929745 (=> (not res!2103690) (not e!3079939))))

(assert (=> b!4929745 (= res!2103690 (not ((_ is Nil!56706) lt!2029207)))))

(declare-fun d!1587211 () Bool)

(assert (=> d!1587211 e!3079938))

(declare-fun res!2103693 () Bool)

(assert (=> d!1587211 (=> res!2103693 e!3079938)))

(declare-fun lt!2029226 () Bool)

(assert (=> d!1587211 (= res!2103693 (not lt!2029226))))

(assert (=> d!1587211 (= lt!2029226 e!3079937)))

(declare-fun res!2103692 () Bool)

(assert (=> d!1587211 (=> res!2103692 e!3079937)))

(assert (=> d!1587211 (= res!2103692 ((_ is Nil!56706) testedP!110))))

(assert (=> d!1587211 (= (isPrefix!4969 testedP!110 lt!2029207) lt!2029226)))

(declare-fun b!4929747 () Bool)

(declare-fun tail!9674 (List!56830) List!56830)

(assert (=> b!4929747 (= e!3079939 (isPrefix!4969 (tail!9674 testedP!110) (tail!9674 lt!2029207)))))

(declare-fun b!4929746 () Bool)

(declare-fun res!2103691 () Bool)

(assert (=> b!4929746 (=> (not res!2103691) (not e!3079939))))

(declare-fun head!10527 (List!56830) C!26972)

(assert (=> b!4929746 (= res!2103691 (= (head!10527 testedP!110) (head!10527 lt!2029207)))))

(assert (= (and d!1587211 (not res!2103692)) b!4929745))

(assert (= (and b!4929745 res!2103690) b!4929746))

(assert (= (and b!4929746 res!2103691) b!4929747))

(assert (= (and d!1587211 (not res!2103693)) b!4929748))

(assert (=> b!4929748 m!5949830))

(assert (=> b!4929748 m!5949832))

(declare-fun m!5949876 () Bool)

(assert (=> b!4929747 m!5949876))

(declare-fun m!5949878 () Bool)

(assert (=> b!4929747 m!5949878))

(assert (=> b!4929747 m!5949876))

(assert (=> b!4929747 m!5949878))

(declare-fun m!5949880 () Bool)

(assert (=> b!4929747 m!5949880))

(declare-fun m!5949882 () Bool)

(assert (=> b!4929746 m!5949882))

(declare-fun m!5949884 () Bool)

(assert (=> b!4929746 m!5949884))

(assert (=> b!4929695 d!1587211))

(declare-fun b!4929752 () Bool)

(declare-fun e!3079941 () Bool)

(assert (=> b!4929752 (= e!3079941 (>= (size!37503 lt!2029206) (size!37503 testedP!110)))))

(declare-fun b!4929749 () Bool)

(declare-fun e!3079940 () Bool)

(declare-fun e!3079942 () Bool)

(assert (=> b!4929749 (= e!3079940 e!3079942)))

(declare-fun res!2103694 () Bool)

(assert (=> b!4929749 (=> (not res!2103694) (not e!3079942))))

(assert (=> b!4929749 (= res!2103694 (not ((_ is Nil!56706) lt!2029206)))))

(declare-fun d!1587219 () Bool)

(assert (=> d!1587219 e!3079941))

(declare-fun res!2103697 () Bool)

(assert (=> d!1587219 (=> res!2103697 e!3079941)))

(declare-fun lt!2029227 () Bool)

(assert (=> d!1587219 (= res!2103697 (not lt!2029227))))

(assert (=> d!1587219 (= lt!2029227 e!3079940)))

(declare-fun res!2103696 () Bool)

(assert (=> d!1587219 (=> res!2103696 e!3079940)))

(assert (=> d!1587219 (= res!2103696 ((_ is Nil!56706) testedP!110))))

(assert (=> d!1587219 (= (isPrefix!4969 testedP!110 lt!2029206) lt!2029227)))

(declare-fun b!4929751 () Bool)

(assert (=> b!4929751 (= e!3079942 (isPrefix!4969 (tail!9674 testedP!110) (tail!9674 lt!2029206)))))

(declare-fun b!4929750 () Bool)

(declare-fun res!2103695 () Bool)

(assert (=> b!4929750 (=> (not res!2103695) (not e!3079942))))

(assert (=> b!4929750 (= res!2103695 (= (head!10527 testedP!110) (head!10527 lt!2029206)))))

(assert (= (and d!1587219 (not res!2103696)) b!4929749))

(assert (= (and b!4929749 res!2103694) b!4929750))

(assert (= (and b!4929750 res!2103695) b!4929751))

(assert (= (and d!1587219 (not res!2103697)) b!4929752))

(declare-fun m!5949886 () Bool)

(assert (=> b!4929752 m!5949886))

(assert (=> b!4929752 m!5949832))

(assert (=> b!4929751 m!5949876))

(declare-fun m!5949888 () Bool)

(assert (=> b!4929751 m!5949888))

(assert (=> b!4929751 m!5949876))

(assert (=> b!4929751 m!5949888))

(declare-fun m!5949890 () Bool)

(assert (=> b!4929751 m!5949890))

(assert (=> b!4929750 m!5949882))

(declare-fun m!5949892 () Bool)

(assert (=> b!4929750 m!5949892))

(assert (=> b!4929695 d!1587219))

(declare-fun d!1587221 () Bool)

(assert (=> d!1587221 (isPrefix!4969 testedP!110 (++!12336 testedP!110 testedSuffix!70))))

(declare-fun lt!2029232 () Unit!147325)

(declare-fun choose!36122 (List!56830 List!56830) Unit!147325)

(assert (=> d!1587221 (= lt!2029232 (choose!36122 testedP!110 testedSuffix!70))))

(assert (=> d!1587221 (= (lemmaConcatTwoListThenFirstIsPrefix!3193 testedP!110 testedSuffix!70) lt!2029232)))

(declare-fun bs!1180232 () Bool)

(assert (= bs!1180232 d!1587221))

(assert (=> bs!1180232 m!5949840))

(assert (=> bs!1180232 m!5949840))

(declare-fun m!5949894 () Bool)

(assert (=> bs!1180232 m!5949894))

(declare-fun m!5949896 () Bool)

(assert (=> bs!1180232 m!5949896))

(assert (=> b!4929695 d!1587221))

(declare-fun d!1587223 () Bool)

(declare-fun list!17971 (Conc!14880) List!56830)

(assert (=> d!1587223 (= (list!17969 totalInput!685) (list!17971 (c!840126 totalInput!685)))))

(declare-fun bs!1180233 () Bool)

(assert (= bs!1180233 d!1587223))

(declare-fun m!5949904 () Bool)

(assert (=> bs!1180233 m!5949904))

(assert (=> start!517664 d!1587223))

(declare-fun b!4929778 () Bool)

(declare-fun e!3079960 () List!56830)

(assert (=> b!4929778 (= e!3079960 (Cons!56706 (h!63154 testedP!110) (++!12336 (t!367306 testedP!110) testedSuffix!70)))))

(declare-fun d!1587225 () Bool)

(declare-fun e!3079959 () Bool)

(assert (=> d!1587225 e!3079959))

(declare-fun res!2103718 () Bool)

(assert (=> d!1587225 (=> (not res!2103718) (not e!3079959))))

(declare-fun lt!2029243 () List!56830)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10079 (List!56830) (InoxSet C!26972))

(assert (=> d!1587225 (= res!2103718 (= (content!10079 lt!2029243) ((_ map or) (content!10079 testedP!110) (content!10079 testedSuffix!70))))))

(assert (=> d!1587225 (= lt!2029243 e!3079960)))

(declare-fun c!840143 () Bool)

(assert (=> d!1587225 (= c!840143 ((_ is Nil!56706) testedP!110))))

(assert (=> d!1587225 (= (++!12336 testedP!110 testedSuffix!70) lt!2029243)))

(declare-fun b!4929780 () Bool)

(assert (=> b!4929780 (= e!3079959 (or (not (= testedSuffix!70 Nil!56706)) (= lt!2029243 testedP!110)))))

(declare-fun b!4929779 () Bool)

(declare-fun res!2103719 () Bool)

(assert (=> b!4929779 (=> (not res!2103719) (not e!3079959))))

(assert (=> b!4929779 (= res!2103719 (= (size!37503 lt!2029243) (+ (size!37503 testedP!110) (size!37503 testedSuffix!70))))))

(declare-fun b!4929777 () Bool)

(assert (=> b!4929777 (= e!3079960 testedSuffix!70)))

(assert (= (and d!1587225 c!840143) b!4929777))

(assert (= (and d!1587225 (not c!840143)) b!4929778))

(assert (= (and d!1587225 res!2103718) b!4929779))

(assert (= (and b!4929779 res!2103719) b!4929780))

(declare-fun m!5949926 () Bool)

(assert (=> b!4929778 m!5949926))

(declare-fun m!5949928 () Bool)

(assert (=> d!1587225 m!5949928))

(declare-fun m!5949930 () Bool)

(assert (=> d!1587225 m!5949930))

(declare-fun m!5949932 () Bool)

(assert (=> d!1587225 m!5949932))

(declare-fun m!5949934 () Bool)

(assert (=> b!4929779 m!5949934))

(assert (=> b!4929779 m!5949832))

(declare-fun m!5949936 () Bool)

(assert (=> b!4929779 m!5949936))

(assert (=> start!517664 d!1587225))

(declare-fun d!1587235 () Bool)

(declare-fun isBalanced!4093 (Conc!14880) Bool)

(assert (=> d!1587235 (= (inv!73521 totalInput!685) (isBalanced!4093 (c!840126 totalInput!685)))))

(declare-fun bs!1180236 () Bool)

(assert (= bs!1180236 d!1587235))

(declare-fun m!5949938 () Bool)

(assert (=> bs!1180236 m!5949938))

(assert (=> start!517664 d!1587235))

(declare-fun b!4929791 () Bool)

(declare-fun e!3079967 () Bool)

(declare-fun tp!1383892 () Bool)

(assert (=> b!4929791 (= e!3079967 (and tp_is_empty!35919 tp!1383892))))

(assert (=> b!4929698 (= tp!1383887 e!3079967)))

(assert (= (and b!4929698 ((_ is Cons!56706) (t!367306 testedSuffix!70))) b!4929791))

(declare-fun e!3079978 () Bool)

(declare-fun b!4929808 () Bool)

(declare-fun tp!1383904 () Bool)

(declare-fun tp!1383902 () Bool)

(assert (=> b!4929808 (= e!3079978 (and (inv!73522 (left!41354 (c!840126 totalInput!685))) tp!1383902 (inv!73522 (right!41684 (c!840126 totalInput!685))) tp!1383904))))

(declare-fun b!4929810 () Bool)

(declare-fun e!3079977 () Bool)

(declare-fun tp!1383903 () Bool)

(assert (=> b!4929810 (= e!3079977 tp!1383903)))

(declare-fun b!4929809 () Bool)

(declare-fun inv!73525 (IArray!29821) Bool)

(assert (=> b!4929809 (= e!3079978 (and (inv!73525 (xs!18204 (c!840126 totalInput!685))) e!3079977))))

(assert (=> b!4929699 (= tp!1383888 (and (inv!73522 (c!840126 totalInput!685)) e!3079978))))

(assert (= (and b!4929699 ((_ is Node!14880) (c!840126 totalInput!685))) b!4929808))

(assert (= b!4929809 b!4929810))

(assert (= (and b!4929699 ((_ is Leaf!24753) (c!840126 totalInput!685))) b!4929809))

(declare-fun m!5949944 () Bool)

(assert (=> b!4929808 m!5949944))

(declare-fun m!5949946 () Bool)

(assert (=> b!4929808 m!5949946))

(declare-fun m!5949948 () Bool)

(assert (=> b!4929809 m!5949948))

(assert (=> b!4929699 m!5949836))

(declare-fun b!4929818 () Bool)

(declare-fun e!3079982 () Bool)

(declare-fun tp!1383910 () Bool)

(assert (=> b!4929818 (= e!3079982 (and tp_is_empty!35919 tp!1383910))))

(assert (=> b!4929696 (= tp!1383889 e!3079982)))

(assert (= (and b!4929696 ((_ is Cons!56706) (t!367306 testedP!110))) b!4929818))

(check-sat (not b!4929724) (not b!4929818) (not b!4929699) tp_is_empty!35919 (not b!4929747) (not b!4929728) (not b!4929726) (not b!4929779) (not d!1587223) (not b!4929810) (not b!4929748) (not b!4929750) (not d!1587221) (not b!4929808) (not d!1587235) (not b!4929746) (not b!4929778) (not d!1587225) (not b!4929791) (not b!4929752) (not b!4929705) (not b!4929809) (not d!1587201) (not b!4929751))
(check-sat)
