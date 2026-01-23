; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!407826 () Bool)

(assert start!407826)

(declare-fun b_free!126665 () Bool)

(declare-fun b_next!127369 () Bool)

(assert (=> start!407826 (= b_free!126665 (not b_next!127369))))

(declare-fun tp!1306355 () Bool)

(declare-fun b_and!337527 () Bool)

(assert (=> start!407826 (= tp!1306355 b_and!337527)))

(declare-fun b!4256753 () Bool)

(declare-fun e!2643910 () Bool)

(declare-datatypes ((T!79336 0))(
  ( (T!79337 (val!15213 Int)) )
))
(declare-datatypes ((List!47342 0))(
  ( (Nil!47218) (Cons!47218 (h!52638 T!79336) (t!352943 List!47342)) )
))
(declare-datatypes ((IArray!28457 0))(
  ( (IArray!28458 (innerList!14286 List!47342)) )
))
(declare-datatypes ((Conc!14226 0))(
  ( (Node!14226 (left!34997 Conc!14226) (right!35327 Conc!14226) (csize!28682 Int) (cheight!14437 Int)) (Leaf!21990 (xs!17532 IArray!28457) (csize!28683 Int)) (Empty!14226) )
))
(declare-fun t!4386 () Conc!14226)

(declare-fun e!2643907 () Bool)

(declare-fun inv!62064 (IArray!28457) Bool)

(assert (=> b!4256753 (= e!2643910 (and (inv!62064 (xs!17532 t!4386)) e!2643907))))

(declare-fun b!4256754 () Bool)

(declare-fun tp!1306358 () Bool)

(assert (=> b!4256754 (= e!2643907 tp!1306358)))

(declare-fun b!4256755 () Bool)

(declare-fun e!2643908 () Bool)

(declare-datatypes ((B!2801 0))(
  ( (B!2802 (val!15214 Int)) )
))
(declare-datatypes ((List!47343 0))(
  ( (Nil!47219) (Cons!47219 (h!52639 B!2801) (t!352944 List!47343)) )
))
(declare-datatypes ((IArray!28459 0))(
  ( (IArray!28460 (innerList!14287 List!47343)) )
))
(declare-datatypes ((Conc!14227 0))(
  ( (Node!14227 (left!34998 Conc!14227) (right!35328 Conc!14227) (csize!28684 Int) (cheight!14438 Int)) (Leaf!21991 (xs!17533 IArray!28459) (csize!28685 Int)) (Empty!14227) )
))
(declare-fun isBalanced!3787 (Conc!14227) Bool)

(assert (=> b!4256755 (= e!2643908 (not (isBalanced!3787 Empty!14227)))))

(declare-fun res!1749863 () Bool)

(declare-fun e!2643909 () Bool)

(assert (=> start!407826 (=> (not res!1749863) (not e!2643909))))

(declare-fun isBalanced!3788 (Conc!14226) Bool)

(assert (=> start!407826 (= res!1749863 (isBalanced!3788 t!4386))))

(assert (=> start!407826 e!2643909))

(declare-fun inv!62065 (Conc!14226) Bool)

(assert (=> start!407826 (and (inv!62065 t!4386) e!2643910)))

(assert (=> start!407826 tp!1306355))

(declare-fun b!4256756 () Bool)

(declare-fun res!1749862 () Bool)

(assert (=> b!4256756 (=> (not res!1749862) (not e!2643909))))

(get-info :version)

(assert (=> b!4256756 (= res!1749862 ((_ is Empty!14226) t!4386))))

(declare-fun tp!1306356 () Bool)

(declare-fun tp!1306357 () Bool)

(declare-fun b!4256757 () Bool)

(assert (=> b!4256757 (= e!2643910 (and (inv!62065 (left!34997 t!4386)) tp!1306357 (inv!62065 (right!35327 t!4386)) tp!1306356))))

(declare-fun b!4256758 () Bool)

(assert (=> b!4256758 (= e!2643909 e!2643908)))

(declare-fun res!1749861 () Bool)

(assert (=> b!4256758 (=> res!1749861 e!2643908)))

(declare-fun f!428 () Int)

(declare-fun list!17024 (Conc!14227) List!47343)

(declare-fun map!9643 (List!47342 Int) List!47343)

(declare-fun list!17025 (Conc!14226) List!47342)

(assert (=> b!4256758 (= res!1749861 (not (= (list!17024 Empty!14227) (map!9643 (list!17025 t!4386) f!428))))))

(assert (= (and start!407826 res!1749863) b!4256756))

(assert (= (and b!4256756 res!1749862) b!4256758))

(assert (= (and b!4256758 (not res!1749861)) b!4256755))

(assert (= (and start!407826 ((_ is Node!14226) t!4386)) b!4256757))

(assert (= b!4256753 b!4256754))

(assert (= (and start!407826 ((_ is Leaf!21990) t!4386)) b!4256753))

(declare-fun m!4841953 () Bool)

(assert (=> b!4256757 m!4841953))

(declare-fun m!4841955 () Bool)

(assert (=> b!4256757 m!4841955))

(declare-fun m!4841957 () Bool)

(assert (=> b!4256755 m!4841957))

(declare-fun m!4841959 () Bool)

(assert (=> b!4256758 m!4841959))

(declare-fun m!4841961 () Bool)

(assert (=> b!4256758 m!4841961))

(assert (=> b!4256758 m!4841961))

(declare-fun m!4841963 () Bool)

(assert (=> b!4256758 m!4841963))

(declare-fun m!4841965 () Bool)

(assert (=> b!4256753 m!4841965))

(declare-fun m!4841967 () Bool)

(assert (=> start!407826 m!4841967))

(declare-fun m!4841969 () Bool)

(assert (=> start!407826 m!4841969))

(check-sat (not b!4256754) (not b_next!127369) (not b!4256755) (not start!407826) (not b!4256753) (not b!4256757) b_and!337527 (not b!4256758))
(check-sat b_and!337527 (not b_next!127369))
(get-model)

(declare-fun b!4256779 () Bool)

(declare-fun e!2643919 () List!47343)

(assert (=> b!4256779 (= e!2643919 Nil!47219)))

(declare-fun b!4256781 () Bool)

(declare-fun e!2643920 () List!47343)

(declare-fun list!17026 (IArray!28459) List!47343)

(assert (=> b!4256781 (= e!2643920 (list!17026 (xs!17533 Empty!14227)))))

(declare-fun b!4256780 () Bool)

(assert (=> b!4256780 (= e!2643919 e!2643920)))

(declare-fun c!722727 () Bool)

(assert (=> b!4256780 (= c!722727 ((_ is Leaf!21991) Empty!14227))))

(declare-fun d!1251714 () Bool)

(declare-fun c!722726 () Bool)

(assert (=> d!1251714 (= c!722726 ((_ is Empty!14227) Empty!14227))))

(assert (=> d!1251714 (= (list!17024 Empty!14227) e!2643919)))

(declare-fun b!4256782 () Bool)

(declare-fun ++!12011 (List!47343 List!47343) List!47343)

(assert (=> b!4256782 (= e!2643920 (++!12011 (list!17024 (left!34998 Empty!14227)) (list!17024 (right!35328 Empty!14227))))))

(assert (= (and d!1251714 c!722726) b!4256779))

(assert (= (and d!1251714 (not c!722726)) b!4256780))

(assert (= (and b!4256780 c!722727) b!4256781))

(assert (= (and b!4256780 (not c!722727)) b!4256782))

(declare-fun m!4841971 () Bool)

(assert (=> b!4256781 m!4841971))

(declare-fun m!4841973 () Bool)

(assert (=> b!4256782 m!4841973))

(declare-fun m!4841975 () Bool)

(assert (=> b!4256782 m!4841975))

(assert (=> b!4256782 m!4841973))

(assert (=> b!4256782 m!4841975))

(declare-fun m!4841977 () Bool)

(assert (=> b!4256782 m!4841977))

(assert (=> b!4256758 d!1251714))

(declare-fun d!1251716 () Bool)

(declare-fun lt!1509887 () List!47343)

(declare-fun size!34561 (List!47343) Int)

(declare-fun size!34562 (List!47342) Int)

(assert (=> d!1251716 (= (size!34561 lt!1509887) (size!34562 (list!17025 t!4386)))))

(declare-fun e!2643925 () List!47343)

(assert (=> d!1251716 (= lt!1509887 e!2643925)))

(declare-fun c!722730 () Bool)

(assert (=> d!1251716 (= c!722730 ((_ is Nil!47218) (list!17025 t!4386)))))

(assert (=> d!1251716 (= (map!9643 (list!17025 t!4386) f!428) lt!1509887)))

(declare-fun b!4256793 () Bool)

(assert (=> b!4256793 (= e!2643925 Nil!47219)))

(declare-fun b!4256794 () Bool)

(declare-fun $colon$colon!620 (List!47343 B!2801) List!47343)

(declare-fun dynLambda!20208 (Int T!79336) B!2801)

(assert (=> b!4256794 (= e!2643925 ($colon$colon!620 (map!9643 (t!352943 (list!17025 t!4386)) f!428) (dynLambda!20208 f!428 (h!52638 (list!17025 t!4386)))))))

(assert (= (and d!1251716 c!722730) b!4256793))

(assert (= (and d!1251716 (not c!722730)) b!4256794))

(declare-fun b_lambda!125411 () Bool)

(assert (=> (not b_lambda!125411) (not b!4256794)))

(declare-fun t!352948 () Bool)

(declare-fun tb!256743 () Bool)

(assert (=> (and start!407826 (= f!428 f!428) t!352948) tb!256743))

(declare-fun result!313232 () Bool)

(declare-fun tp_is_empty!22831 () Bool)

(assert (=> tb!256743 (= result!313232 tp_is_empty!22831)))

(assert (=> b!4256794 t!352948))

(declare-fun b_and!337529 () Bool)

(assert (= b_and!337527 (and (=> t!352948 result!313232) b_and!337529)))

(declare-fun m!4841991 () Bool)

(assert (=> d!1251716 m!4841991))

(assert (=> d!1251716 m!4841961))

(declare-fun m!4841993 () Bool)

(assert (=> d!1251716 m!4841993))

(declare-fun m!4841995 () Bool)

(assert (=> b!4256794 m!4841995))

(declare-fun m!4841997 () Bool)

(assert (=> b!4256794 m!4841997))

(assert (=> b!4256794 m!4841995))

(assert (=> b!4256794 m!4841997))

(declare-fun m!4841999 () Bool)

(assert (=> b!4256794 m!4841999))

(assert (=> b!4256758 d!1251716))

(declare-fun b!4256818 () Bool)

(declare-fun e!2643936 () List!47342)

(declare-fun e!2643937 () List!47342)

(assert (=> b!4256818 (= e!2643936 e!2643937)))

(declare-fun c!722742 () Bool)

(assert (=> b!4256818 (= c!722742 ((_ is Leaf!21990) t!4386))))

(declare-fun b!4256820 () Bool)

(declare-fun ++!12012 (List!47342 List!47342) List!47342)

(assert (=> b!4256820 (= e!2643937 (++!12012 (list!17025 (left!34997 t!4386)) (list!17025 (right!35327 t!4386))))))

(declare-fun d!1251720 () Bool)

(declare-fun c!722741 () Bool)

(assert (=> d!1251720 (= c!722741 ((_ is Empty!14226) t!4386))))

(assert (=> d!1251720 (= (list!17025 t!4386) e!2643936)))

(declare-fun b!4256819 () Bool)

(declare-fun list!17027 (IArray!28457) List!47342)

(assert (=> b!4256819 (= e!2643937 (list!17027 (xs!17532 t!4386)))))

(declare-fun b!4256817 () Bool)

(assert (=> b!4256817 (= e!2643936 Nil!47218)))

(assert (= (and d!1251720 c!722741) b!4256817))

(assert (= (and d!1251720 (not c!722741)) b!4256818))

(assert (= (and b!4256818 c!722742) b!4256819))

(assert (= (and b!4256818 (not c!722742)) b!4256820))

(declare-fun m!4842009 () Bool)

(assert (=> b!4256820 m!4842009))

(declare-fun m!4842011 () Bool)

(assert (=> b!4256820 m!4842011))

(assert (=> b!4256820 m!4842009))

(assert (=> b!4256820 m!4842011))

(declare-fun m!4842013 () Bool)

(assert (=> b!4256820 m!4842013))

(declare-fun m!4842015 () Bool)

(assert (=> b!4256819 m!4842015))

(assert (=> b!4256758 d!1251720))

(declare-fun d!1251724 () Bool)

(assert (=> d!1251724 (= (inv!62064 (xs!17532 t!4386)) (<= (size!34562 (innerList!14286 (xs!17532 t!4386))) 2147483647))))

(declare-fun bs!598840 () Bool)

(assert (= bs!598840 d!1251724))

(declare-fun m!4842017 () Bool)

(assert (=> bs!598840 m!4842017))

(assert (=> b!4256753 d!1251724))

(declare-fun d!1251726 () Bool)

(declare-fun c!722748 () Bool)

(assert (=> d!1251726 (= c!722748 ((_ is Node!14226) (left!34997 t!4386)))))

(declare-fun e!2643945 () Bool)

(assert (=> d!1251726 (= (inv!62065 (left!34997 t!4386)) e!2643945)))

(declare-fun b!4256835 () Bool)

(declare-fun inv!62066 (Conc!14226) Bool)

(assert (=> b!4256835 (= e!2643945 (inv!62066 (left!34997 t!4386)))))

(declare-fun b!4256836 () Bool)

(declare-fun e!2643946 () Bool)

(assert (=> b!4256836 (= e!2643945 e!2643946)))

(declare-fun res!1749884 () Bool)

(assert (=> b!4256836 (= res!1749884 (not ((_ is Leaf!21990) (left!34997 t!4386))))))

(assert (=> b!4256836 (=> res!1749884 e!2643946)))

(declare-fun b!4256837 () Bool)

(declare-fun inv!62067 (Conc!14226) Bool)

(assert (=> b!4256837 (= e!2643946 (inv!62067 (left!34997 t!4386)))))

(assert (= (and d!1251726 c!722748) b!4256835))

(assert (= (and d!1251726 (not c!722748)) b!4256836))

(assert (= (and b!4256836 (not res!1749884)) b!4256837))

(declare-fun m!4842029 () Bool)

(assert (=> b!4256835 m!4842029))

(declare-fun m!4842031 () Bool)

(assert (=> b!4256837 m!4842031))

(assert (=> b!4256757 d!1251726))

(declare-fun d!1251730 () Bool)

(declare-fun c!722749 () Bool)

(assert (=> d!1251730 (= c!722749 ((_ is Node!14226) (right!35327 t!4386)))))

(declare-fun e!2643947 () Bool)

(assert (=> d!1251730 (= (inv!62065 (right!35327 t!4386)) e!2643947)))

(declare-fun b!4256838 () Bool)

(assert (=> b!4256838 (= e!2643947 (inv!62066 (right!35327 t!4386)))))

(declare-fun b!4256839 () Bool)

(declare-fun e!2643948 () Bool)

(assert (=> b!4256839 (= e!2643947 e!2643948)))

(declare-fun res!1749885 () Bool)

(assert (=> b!4256839 (= res!1749885 (not ((_ is Leaf!21990) (right!35327 t!4386))))))

(assert (=> b!4256839 (=> res!1749885 e!2643948)))

(declare-fun b!4256840 () Bool)

(assert (=> b!4256840 (= e!2643948 (inv!62067 (right!35327 t!4386)))))

(assert (= (and d!1251730 c!722749) b!4256838))

(assert (= (and d!1251730 (not c!722749)) b!4256839))

(assert (= (and b!4256839 (not res!1749885)) b!4256840))

(declare-fun m!4842033 () Bool)

(assert (=> b!4256838 m!4842033))

(declare-fun m!4842035 () Bool)

(assert (=> b!4256840 m!4842035))

(assert (=> b!4256757 d!1251730))

(declare-fun d!1251732 () Bool)

(declare-fun res!1749899 () Bool)

(declare-fun e!2643960 () Bool)

(assert (=> d!1251732 (=> res!1749899 e!2643960)))

(assert (=> d!1251732 (= res!1749899 (not ((_ is Node!14227) Empty!14227)))))

(assert (=> d!1251732 (= (isBalanced!3787 Empty!14227) e!2643960)))

(declare-fun b!4256865 () Bool)

(declare-fun res!1749898 () Bool)

(declare-fun e!2643959 () Bool)

(assert (=> b!4256865 (=> (not res!1749898) (not e!2643959))))

(declare-fun height!1850 (Conc!14227) Int)

(assert (=> b!4256865 (= res!1749898 (<= (- (height!1850 (left!34998 Empty!14227)) (height!1850 (right!35328 Empty!14227))) 1))))

(declare-fun b!4256866 () Bool)

(declare-fun res!1749903 () Bool)

(assert (=> b!4256866 (=> (not res!1749903) (not e!2643959))))

(assert (=> b!4256866 (= res!1749903 (isBalanced!3787 (left!34998 Empty!14227)))))

(declare-fun b!4256867 () Bool)

(declare-fun isEmpty!27951 (Conc!14227) Bool)

(assert (=> b!4256867 (= e!2643959 (not (isEmpty!27951 (right!35328 Empty!14227))))))

(declare-fun b!4256868 () Bool)

(assert (=> b!4256868 (= e!2643960 e!2643959)))

(declare-fun res!1749902 () Bool)

(assert (=> b!4256868 (=> (not res!1749902) (not e!2643959))))

(assert (=> b!4256868 (= res!1749902 (<= (- 1) (- (height!1850 (left!34998 Empty!14227)) (height!1850 (right!35328 Empty!14227)))))))

(declare-fun b!4256869 () Bool)

(declare-fun res!1749900 () Bool)

(assert (=> b!4256869 (=> (not res!1749900) (not e!2643959))))

(assert (=> b!4256869 (= res!1749900 (isBalanced!3787 (right!35328 Empty!14227)))))

(declare-fun b!4256870 () Bool)

(declare-fun res!1749901 () Bool)

(assert (=> b!4256870 (=> (not res!1749901) (not e!2643959))))

(assert (=> b!4256870 (= res!1749901 (not (isEmpty!27951 (left!34998 Empty!14227))))))

(assert (= (and d!1251732 (not res!1749899)) b!4256868))

(assert (= (and b!4256868 res!1749902) b!4256865))

(assert (= (and b!4256865 res!1749898) b!4256866))

(assert (= (and b!4256866 res!1749903) b!4256869))

(assert (= (and b!4256869 res!1749900) b!4256870))

(assert (= (and b!4256870 res!1749901) b!4256867))

(declare-fun m!4842047 () Bool)

(assert (=> b!4256870 m!4842047))

(declare-fun m!4842049 () Bool)

(assert (=> b!4256869 m!4842049))

(declare-fun m!4842051 () Bool)

(assert (=> b!4256868 m!4842051))

(declare-fun m!4842053 () Bool)

(assert (=> b!4256868 m!4842053))

(assert (=> b!4256865 m!4842051))

(assert (=> b!4256865 m!4842053))

(declare-fun m!4842055 () Bool)

(assert (=> b!4256867 m!4842055))

(declare-fun m!4842057 () Bool)

(assert (=> b!4256866 m!4842057))

(assert (=> b!4256755 d!1251732))

(declare-fun b!4256895 () Bool)

(declare-fun e!2643974 () Bool)

(declare-fun isEmpty!27952 (Conc!14226) Bool)

(assert (=> b!4256895 (= e!2643974 (not (isEmpty!27952 (right!35327 t!4386))))))

(declare-fun b!4256896 () Bool)

(declare-fun e!2643973 () Bool)

(assert (=> b!4256896 (= e!2643973 e!2643974)))

(declare-fun res!1749920 () Bool)

(assert (=> b!4256896 (=> (not res!1749920) (not e!2643974))))

(declare-fun height!1851 (Conc!14226) Int)

(assert (=> b!4256896 (= res!1749920 (<= (- 1) (- (height!1851 (left!34997 t!4386)) (height!1851 (right!35327 t!4386)))))))

(declare-fun b!4256897 () Bool)

(declare-fun res!1749924 () Bool)

(assert (=> b!4256897 (=> (not res!1749924) (not e!2643974))))

(assert (=> b!4256897 (= res!1749924 (isBalanced!3788 (left!34997 t!4386)))))

(declare-fun d!1251738 () Bool)

(declare-fun res!1749925 () Bool)

(assert (=> d!1251738 (=> res!1749925 e!2643973)))

(assert (=> d!1251738 (= res!1749925 (not ((_ is Node!14226) t!4386)))))

(assert (=> d!1251738 (= (isBalanced!3788 t!4386) e!2643973)))

(declare-fun b!4256898 () Bool)

(declare-fun res!1749922 () Bool)

(assert (=> b!4256898 (=> (not res!1749922) (not e!2643974))))

(assert (=> b!4256898 (= res!1749922 (not (isEmpty!27952 (left!34997 t!4386))))))

(declare-fun b!4256899 () Bool)

(declare-fun res!1749921 () Bool)

(assert (=> b!4256899 (=> (not res!1749921) (not e!2643974))))

(assert (=> b!4256899 (= res!1749921 (<= (- (height!1851 (left!34997 t!4386)) (height!1851 (right!35327 t!4386))) 1))))

(declare-fun b!4256900 () Bool)

(declare-fun res!1749923 () Bool)

(assert (=> b!4256900 (=> (not res!1749923) (not e!2643974))))

(assert (=> b!4256900 (= res!1749923 (isBalanced!3788 (right!35327 t!4386)))))

(assert (= (and d!1251738 (not res!1749925)) b!4256896))

(assert (= (and b!4256896 res!1749920) b!4256899))

(assert (= (and b!4256899 res!1749921) b!4256897))

(assert (= (and b!4256897 res!1749924) b!4256900))

(assert (= (and b!4256900 res!1749923) b!4256898))

(assert (= (and b!4256898 res!1749922) b!4256895))

(declare-fun m!4842067 () Bool)

(assert (=> b!4256897 m!4842067))

(declare-fun m!4842069 () Bool)

(assert (=> b!4256899 m!4842069))

(declare-fun m!4842071 () Bool)

(assert (=> b!4256899 m!4842071))

(declare-fun m!4842073 () Bool)

(assert (=> b!4256900 m!4842073))

(declare-fun m!4842075 () Bool)

(assert (=> b!4256895 m!4842075))

(declare-fun m!4842077 () Bool)

(assert (=> b!4256898 m!4842077))

(assert (=> b!4256896 m!4842069))

(assert (=> b!4256896 m!4842071))

(assert (=> start!407826 d!1251738))

(declare-fun d!1251744 () Bool)

(declare-fun c!722760 () Bool)

(assert (=> d!1251744 (= c!722760 ((_ is Node!14226) t!4386))))

(declare-fun e!2643977 () Bool)

(assert (=> d!1251744 (= (inv!62065 t!4386) e!2643977)))

(declare-fun b!4256903 () Bool)

(assert (=> b!4256903 (= e!2643977 (inv!62066 t!4386))))

(declare-fun b!4256904 () Bool)

(declare-fun e!2643978 () Bool)

(assert (=> b!4256904 (= e!2643977 e!2643978)))

(declare-fun res!1749928 () Bool)

(assert (=> b!4256904 (= res!1749928 (not ((_ is Leaf!21990) t!4386)))))

(assert (=> b!4256904 (=> res!1749928 e!2643978)))

(declare-fun b!4256905 () Bool)

(assert (=> b!4256905 (= e!2643978 (inv!62067 t!4386))))

(assert (= (and d!1251744 c!722760) b!4256903))

(assert (= (and d!1251744 (not c!722760)) b!4256904))

(assert (= (and b!4256904 (not res!1749928)) b!4256905))

(declare-fun m!4842079 () Bool)

(assert (=> b!4256903 m!4842079))

(declare-fun m!4842081 () Bool)

(assert (=> b!4256905 m!4842081))

(assert (=> start!407826 d!1251744))

(declare-fun b!4256920 () Bool)

(declare-fun e!2643983 () Bool)

(declare-fun tp_is_empty!22835 () Bool)

(declare-fun tp!1306361 () Bool)

(assert (=> b!4256920 (= e!2643983 (and tp_is_empty!22835 tp!1306361))))

(assert (=> b!4256754 (= tp!1306358 e!2643983)))

(assert (= (and b!4256754 ((_ is Cons!47218) (innerList!14286 (xs!17532 t!4386)))) b!4256920))

(declare-fun tp!1306369 () Bool)

(declare-fun e!2643988 () Bool)

(declare-fun b!4256929 () Bool)

(declare-fun tp!1306370 () Bool)

(assert (=> b!4256929 (= e!2643988 (and (inv!62065 (left!34997 (left!34997 t!4386))) tp!1306370 (inv!62065 (right!35327 (left!34997 t!4386))) tp!1306369))))

(declare-fun b!4256931 () Bool)

(declare-fun e!2643989 () Bool)

(declare-fun tp!1306368 () Bool)

(assert (=> b!4256931 (= e!2643989 tp!1306368)))

(declare-fun b!4256930 () Bool)

(assert (=> b!4256930 (= e!2643988 (and (inv!62064 (xs!17532 (left!34997 t!4386))) e!2643989))))

(assert (=> b!4256757 (= tp!1306357 (and (inv!62065 (left!34997 t!4386)) e!2643988))))

(assert (= (and b!4256757 ((_ is Node!14226) (left!34997 t!4386))) b!4256929))

(assert (= b!4256930 b!4256931))

(assert (= (and b!4256757 ((_ is Leaf!21990) (left!34997 t!4386))) b!4256930))

(declare-fun m!4842083 () Bool)

(assert (=> b!4256929 m!4842083))

(declare-fun m!4842085 () Bool)

(assert (=> b!4256929 m!4842085))

(declare-fun m!4842087 () Bool)

(assert (=> b!4256930 m!4842087))

(assert (=> b!4256757 m!4841953))

(declare-fun e!2643990 () Bool)

(declare-fun tp!1306373 () Bool)

(declare-fun tp!1306372 () Bool)

(declare-fun b!4256932 () Bool)

(assert (=> b!4256932 (= e!2643990 (and (inv!62065 (left!34997 (right!35327 t!4386))) tp!1306373 (inv!62065 (right!35327 (right!35327 t!4386))) tp!1306372))))

(declare-fun b!4256934 () Bool)

(declare-fun e!2643991 () Bool)

(declare-fun tp!1306371 () Bool)

(assert (=> b!4256934 (= e!2643991 tp!1306371)))

(declare-fun b!4256933 () Bool)

(assert (=> b!4256933 (= e!2643990 (and (inv!62064 (xs!17532 (right!35327 t!4386))) e!2643991))))

(assert (=> b!4256757 (= tp!1306356 (and (inv!62065 (right!35327 t!4386)) e!2643990))))

(assert (= (and b!4256757 ((_ is Node!14226) (right!35327 t!4386))) b!4256932))

(assert (= b!4256933 b!4256934))

(assert (= (and b!4256757 ((_ is Leaf!21990) (right!35327 t!4386))) b!4256933))

(declare-fun m!4842089 () Bool)

(assert (=> b!4256932 m!4842089))

(declare-fun m!4842091 () Bool)

(assert (=> b!4256932 m!4842091))

(declare-fun m!4842093 () Bool)

(assert (=> b!4256933 m!4842093))

(assert (=> b!4256757 m!4841955))

(declare-fun b_lambda!125415 () Bool)

(assert (= b_lambda!125411 (or (and start!407826 b_free!126665) b_lambda!125415)))

(check-sat (not b!4256900) (not b!4256934) (not b!4256840) (not b!4256819) (not b_next!127369) (not b!4256903) (not b!4256866) (not b!4256905) (not b!4256896) (not b!4256899) (not d!1251724) (not b!4256933) (not b!4256835) (not b_lambda!125415) (not b!4256869) (not b!4256931) (not b!4256794) (not b!4256895) (not b!4256897) (not d!1251716) (not b!4256932) tp_is_empty!22831 (not b!4256870) (not b!4256820) (not b!4256930) (not b!4256898) tp_is_empty!22835 (not b!4256868) (not b!4256838) (not b!4256867) (not b!4256920) (not b!4256781) (not b!4256757) b_and!337529 (not b!4256929) (not b!4256865) (not b!4256782) (not b!4256837))
(check-sat b_and!337529 (not b_next!127369))
