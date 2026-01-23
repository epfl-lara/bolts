; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!272328 () Bool)

(assert start!272328)

(declare-fun b!2812698 () Bool)

(declare-fun e!1778754 () Bool)

(declare-fun e!1778759 () Bool)

(assert (=> b!2812698 (= e!1778754 e!1778759)))

(declare-fun res!1170890 () Bool)

(assert (=> b!2812698 (=> res!1170890 e!1778759)))

(declare-datatypes ((T!54850 0))(
  ( (T!54851 (val!10340 Int)) )
))
(declare-datatypes ((List!32985 0))(
  ( (Nil!32864) (Cons!32864 (h!38284 T!54850) (t!229950 List!32985)) )
))
(declare-fun lt!1004869 () List!32985)

(declare-fun ll!54 () List!32985)

(declare-fun lt!1004873 () List!32985)

(declare-fun ++!8073 (List!32985 List!32985) List!32985)

(declare-fun $colon$colon!573 (List!32985 T!54850) List!32985)

(assert (=> b!2812698 (= res!1170890 (not (= lt!1004869 (++!8073 lt!1004873 ($colon$colon!573 (t!229950 ll!54) (h!38284 ll!54))))))))

(declare-fun lt!1004875 () List!32985)

(assert (=> b!2812698 (= lt!1004869 (++!8073 lt!1004873 lt!1004875))))

(declare-fun lt!1004870 () List!32985)

(assert (=> b!2812698 (= lt!1004869 (++!8073 lt!1004870 (t!229950 ll!54)))))

(declare-fun lt!1004868 () List!32985)

(assert (=> b!2812698 (= lt!1004875 (++!8073 lt!1004868 (t!229950 ll!54)))))

(declare-datatypes ((Unit!46868 0))(
  ( (Unit!46869) )
))
(declare-fun lt!1004872 () Unit!46868)

(declare-fun lemmaConcatAssociativity!1678 (List!32985 List!32985 List!32985) Unit!46868)

(assert (=> b!2812698 (= lt!1004872 (lemmaConcatAssociativity!1678 lt!1004873 lt!1004868 (t!229950 ll!54)))))

(declare-fun b!2812699 () Bool)

(declare-fun lt!1004871 () List!32985)

(assert (=> b!2812699 (= e!1778759 (= lt!1004871 (++!8073 lt!1004873 ll!54)))))

(declare-fun b!2812700 () Bool)

(declare-fun e!1778758 () Bool)

(declare-fun tp!898161 () Bool)

(declare-fun tp!898160 () Bool)

(assert (=> b!2812700 (= e!1778758 (and tp!898161 tp!898160))))

(declare-fun b!2812701 () Bool)

(declare-fun e!1778757 () Bool)

(declare-fun e!1778756 () Bool)

(assert (=> b!2812701 (= e!1778757 (not e!1778756))))

(declare-fun res!1170889 () Bool)

(assert (=> b!2812701 (=> res!1170889 e!1778756)))

(declare-fun lt!1004867 () List!32985)

(assert (=> b!2812701 (= res!1170889 (not (= lt!1004871 (++!8073 lt!1004867 (t!229950 ll!54)))))))

(declare-datatypes ((BalanceConc!19992 0) (Conc!10178 0) (Object!5260 0) (IArray!20361 0) (List!32987 0))(
  ( (BalanceConc!19993 (c!455752 Conc!10178)) )
  ( (Node!10178 (left!24788 Conc!10178) (right!25118 Conc!10178) (csize!20586 Int) (cheight!10389 Int)) (Leaf!15505 (xs!13290 IArray!20361) (csize!20587 Int)) (Empty!10178) )
  ( (BalanceConc!19991 (value!158174 BalanceConc!19992)) (List!32986 (value!158175 List!32987)) (Character!120 (value!158176 (_ BitVec 16))) (Open!120 (value!158177 Int)) )
  ( (IArray!20362 (innerList!10238 List!32987)) )
  ( (Nil!32865) (Cons!32865 (h!38285 Object!5260) (t!229951 List!32987)) )
))
(declare-datatypes ((Vector!248 0))(
  ( (Vector!249 (underlying!8364 Object!5260) (overflowing!181 List!32985)) )
))
(declare-fun lt!1004874 () Vector!248)

(declare-fun list!12313 (Vector!248) List!32985)

(declare-fun rec!27 (List!32985 Vector!248) Vector!248)

(assert (=> b!2812701 (= lt!1004871 (list!12313 (rec!27 (t!229950 ll!54) lt!1004874)))))

(declare-fun $colon+!218 (List!32985 T!54850) List!32985)

(assert (=> b!2812701 (= lt!1004867 ($colon+!218 lt!1004873 (h!38284 ll!54)))))

(assert (=> b!2812701 (= lt!1004867 (list!12313 lt!1004874))))

(declare-fun v!5966 () Vector!248)

(assert (=> b!2812701 (= lt!1004873 (list!12313 v!5966))))

(declare-fun $colon+!219 (Vector!248 T!54850) Vector!248)

(assert (=> b!2812701 (= lt!1004874 ($colon+!219 v!5966 (h!38284 ll!54)))))

(declare-fun res!1170891 () Bool)

(assert (=> start!272328 (=> (not res!1170891) (not e!1778757))))

(get-info :version)

(assert (=> start!272328 (= res!1170891 (not ((_ is Nil!32864) ll!54)))))

(assert (=> start!272328 e!1778757))

(declare-fun e!1778755 () Bool)

(assert (=> start!272328 e!1778755))

(assert (=> start!272328 e!1778758))

(declare-fun b!2812702 () Bool)

(assert (=> b!2812702 (= e!1778756 e!1778754)))

(declare-fun res!1170892 () Bool)

(assert (=> b!2812702 (=> res!1170892 e!1778754)))

(assert (=> b!2812702 (= res!1170892 (not (= lt!1004867 lt!1004870)))))

(assert (=> b!2812702 (= lt!1004870 (++!8073 lt!1004873 lt!1004868))))

(assert (=> b!2812702 (= lt!1004868 (Cons!32864 (h!38284 ll!54) Nil!32864))))

(declare-fun b!2812703 () Bool)

(declare-fun tp_is_empty!14403 () Bool)

(declare-fun tp!898162 () Bool)

(assert (=> b!2812703 (= e!1778755 (and tp_is_empty!14403 tp!898162))))

(assert (= (and start!272328 res!1170891) b!2812701))

(assert (= (and b!2812701 (not res!1170889)) b!2812702))

(assert (= (and b!2812702 (not res!1170892)) b!2812698))

(assert (= (and b!2812698 (not res!1170890)) b!2812699))

(assert (= (and start!272328 ((_ is Cons!32864) ll!54)) b!2812703))

(assert (= start!272328 b!2812700))

(declare-fun m!3242947 () Bool)

(assert (=> b!2812698 m!3242947))

(declare-fun m!3242949 () Bool)

(assert (=> b!2812698 m!3242949))

(assert (=> b!2812698 m!3242947))

(declare-fun m!3242951 () Bool)

(assert (=> b!2812698 m!3242951))

(declare-fun m!3242953 () Bool)

(assert (=> b!2812698 m!3242953))

(declare-fun m!3242955 () Bool)

(assert (=> b!2812698 m!3242955))

(declare-fun m!3242957 () Bool)

(assert (=> b!2812698 m!3242957))

(declare-fun m!3242959 () Bool)

(assert (=> b!2812699 m!3242959))

(declare-fun m!3242961 () Bool)

(assert (=> b!2812701 m!3242961))

(declare-fun m!3242963 () Bool)

(assert (=> b!2812701 m!3242963))

(declare-fun m!3242965 () Bool)

(assert (=> b!2812701 m!3242965))

(declare-fun m!3242967 () Bool)

(assert (=> b!2812701 m!3242967))

(assert (=> b!2812701 m!3242963))

(declare-fun m!3242969 () Bool)

(assert (=> b!2812701 m!3242969))

(declare-fun m!3242971 () Bool)

(assert (=> b!2812701 m!3242971))

(declare-fun m!3242973 () Bool)

(assert (=> b!2812701 m!3242973))

(declare-fun m!3242975 () Bool)

(assert (=> b!2812702 m!3242975))

(check-sat (not b!2812700) (not b!2812699) (not b!2812702) (not b!2812701) tp_is_empty!14403 (not b!2812703) (not b!2812698))
(check-sat)
(get-model)

(declare-fun e!1778765 () Bool)

(declare-fun lt!1004878 () List!32985)

(declare-fun b!2812715 () Bool)

(assert (=> b!2812715 (= e!1778765 (or (not (= ll!54 Nil!32864)) (= lt!1004878 lt!1004873)))))

(declare-fun b!2812712 () Bool)

(declare-fun e!1778764 () List!32985)

(assert (=> b!2812712 (= e!1778764 ll!54)))

(declare-fun b!2812714 () Bool)

(declare-fun res!1170897 () Bool)

(assert (=> b!2812714 (=> (not res!1170897) (not e!1778765))))

(declare-fun size!25609 (List!32985) Int)

(assert (=> b!2812714 (= res!1170897 (= (size!25609 lt!1004878) (+ (size!25609 lt!1004873) (size!25609 ll!54))))))

(declare-fun b!2812713 () Bool)

(assert (=> b!2812713 (= e!1778764 (Cons!32864 (h!38284 lt!1004873) (++!8073 (t!229950 lt!1004873) ll!54)))))

(declare-fun d!816509 () Bool)

(assert (=> d!816509 e!1778765))

(declare-fun res!1170898 () Bool)

(assert (=> d!816509 (=> (not res!1170898) (not e!1778765))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4584 (List!32985) (InoxSet T!54850))

(assert (=> d!816509 (= res!1170898 (= (content!4584 lt!1004878) ((_ map or) (content!4584 lt!1004873) (content!4584 ll!54))))))

(assert (=> d!816509 (= lt!1004878 e!1778764)))

(declare-fun c!455755 () Bool)

(assert (=> d!816509 (= c!455755 ((_ is Nil!32864) lt!1004873))))

(assert (=> d!816509 (= (++!8073 lt!1004873 ll!54) lt!1004878)))

(assert (= (and d!816509 c!455755) b!2812712))

(assert (= (and d!816509 (not c!455755)) b!2812713))

(assert (= (and d!816509 res!1170898) b!2812714))

(assert (= (and b!2812714 res!1170897) b!2812715))

(declare-fun m!3242977 () Bool)

(assert (=> b!2812714 m!3242977))

(declare-fun m!3242979 () Bool)

(assert (=> b!2812714 m!3242979))

(declare-fun m!3242981 () Bool)

(assert (=> b!2812714 m!3242981))

(declare-fun m!3242983 () Bool)

(assert (=> b!2812713 m!3242983))

(declare-fun m!3242985 () Bool)

(assert (=> d!816509 m!3242985))

(declare-fun m!3242987 () Bool)

(assert (=> d!816509 m!3242987))

(declare-fun m!3242989 () Bool)

(assert (=> d!816509 m!3242989))

(assert (=> b!2812699 d!816509))

(declare-fun e!1778767 () Bool)

(declare-fun lt!1004879 () List!32985)

(declare-fun b!2812719 () Bool)

(assert (=> b!2812719 (= e!1778767 (or (not (= ($colon$colon!573 (t!229950 ll!54) (h!38284 ll!54)) Nil!32864)) (= lt!1004879 lt!1004873)))))

(declare-fun b!2812716 () Bool)

(declare-fun e!1778766 () List!32985)

(assert (=> b!2812716 (= e!1778766 ($colon$colon!573 (t!229950 ll!54) (h!38284 ll!54)))))

(declare-fun b!2812718 () Bool)

(declare-fun res!1170899 () Bool)

(assert (=> b!2812718 (=> (not res!1170899) (not e!1778767))))

(assert (=> b!2812718 (= res!1170899 (= (size!25609 lt!1004879) (+ (size!25609 lt!1004873) (size!25609 ($colon$colon!573 (t!229950 ll!54) (h!38284 ll!54))))))))

(declare-fun b!2812717 () Bool)

(assert (=> b!2812717 (= e!1778766 (Cons!32864 (h!38284 lt!1004873) (++!8073 (t!229950 lt!1004873) ($colon$colon!573 (t!229950 ll!54) (h!38284 ll!54)))))))

(declare-fun d!816513 () Bool)

(assert (=> d!816513 e!1778767))

(declare-fun res!1170900 () Bool)

(assert (=> d!816513 (=> (not res!1170900) (not e!1778767))))

(assert (=> d!816513 (= res!1170900 (= (content!4584 lt!1004879) ((_ map or) (content!4584 lt!1004873) (content!4584 ($colon$colon!573 (t!229950 ll!54) (h!38284 ll!54))))))))

(assert (=> d!816513 (= lt!1004879 e!1778766)))

(declare-fun c!455756 () Bool)

(assert (=> d!816513 (= c!455756 ((_ is Nil!32864) lt!1004873))))

(assert (=> d!816513 (= (++!8073 lt!1004873 ($colon$colon!573 (t!229950 ll!54) (h!38284 ll!54))) lt!1004879)))

(assert (= (and d!816513 c!455756) b!2812716))

(assert (= (and d!816513 (not c!455756)) b!2812717))

(assert (= (and d!816513 res!1170900) b!2812718))

(assert (= (and b!2812718 res!1170899) b!2812719))

(declare-fun m!3242991 () Bool)

(assert (=> b!2812718 m!3242991))

(assert (=> b!2812718 m!3242979))

(assert (=> b!2812718 m!3242947))

(declare-fun m!3242993 () Bool)

(assert (=> b!2812718 m!3242993))

(assert (=> b!2812717 m!3242947))

(declare-fun m!3242995 () Bool)

(assert (=> b!2812717 m!3242995))

(declare-fun m!3242997 () Bool)

(assert (=> d!816513 m!3242997))

(assert (=> d!816513 m!3242987))

(assert (=> d!816513 m!3242947))

(declare-fun m!3242999 () Bool)

(assert (=> d!816513 m!3242999))

(assert (=> b!2812698 d!816513))

(declare-fun lt!1004880 () List!32985)

(declare-fun b!2812723 () Bool)

(declare-fun e!1778769 () Bool)

(assert (=> b!2812723 (= e!1778769 (or (not (= lt!1004875 Nil!32864)) (= lt!1004880 lt!1004873)))))

(declare-fun b!2812720 () Bool)

(declare-fun e!1778768 () List!32985)

(assert (=> b!2812720 (= e!1778768 lt!1004875)))

(declare-fun b!2812722 () Bool)

(declare-fun res!1170901 () Bool)

(assert (=> b!2812722 (=> (not res!1170901) (not e!1778769))))

(assert (=> b!2812722 (= res!1170901 (= (size!25609 lt!1004880) (+ (size!25609 lt!1004873) (size!25609 lt!1004875))))))

(declare-fun b!2812721 () Bool)

(assert (=> b!2812721 (= e!1778768 (Cons!32864 (h!38284 lt!1004873) (++!8073 (t!229950 lt!1004873) lt!1004875)))))

(declare-fun d!816515 () Bool)

(assert (=> d!816515 e!1778769))

(declare-fun res!1170902 () Bool)

(assert (=> d!816515 (=> (not res!1170902) (not e!1778769))))

(assert (=> d!816515 (= res!1170902 (= (content!4584 lt!1004880) ((_ map or) (content!4584 lt!1004873) (content!4584 lt!1004875))))))

(assert (=> d!816515 (= lt!1004880 e!1778768)))

(declare-fun c!455757 () Bool)

(assert (=> d!816515 (= c!455757 ((_ is Nil!32864) lt!1004873))))

(assert (=> d!816515 (= (++!8073 lt!1004873 lt!1004875) lt!1004880)))

(assert (= (and d!816515 c!455757) b!2812720))

(assert (= (and d!816515 (not c!455757)) b!2812721))

(assert (= (and d!816515 res!1170902) b!2812722))

(assert (= (and b!2812722 res!1170901) b!2812723))

(declare-fun m!3243001 () Bool)

(assert (=> b!2812722 m!3243001))

(assert (=> b!2812722 m!3242979))

(declare-fun m!3243003 () Bool)

(assert (=> b!2812722 m!3243003))

(declare-fun m!3243005 () Bool)

(assert (=> b!2812721 m!3243005))

(declare-fun m!3243007 () Bool)

(assert (=> d!816515 m!3243007))

(assert (=> d!816515 m!3242987))

(declare-fun m!3243009 () Bool)

(assert (=> d!816515 m!3243009))

(assert (=> b!2812698 d!816515))

(declare-fun lt!1004881 () List!32985)

(declare-fun e!1778771 () Bool)

(declare-fun b!2812727 () Bool)

(assert (=> b!2812727 (= e!1778771 (or (not (= (t!229950 ll!54) Nil!32864)) (= lt!1004881 lt!1004868)))))

(declare-fun b!2812724 () Bool)

(declare-fun e!1778770 () List!32985)

(assert (=> b!2812724 (= e!1778770 (t!229950 ll!54))))

(declare-fun b!2812726 () Bool)

(declare-fun res!1170903 () Bool)

(assert (=> b!2812726 (=> (not res!1170903) (not e!1778771))))

(assert (=> b!2812726 (= res!1170903 (= (size!25609 lt!1004881) (+ (size!25609 lt!1004868) (size!25609 (t!229950 ll!54)))))))

(declare-fun b!2812725 () Bool)

(assert (=> b!2812725 (= e!1778770 (Cons!32864 (h!38284 lt!1004868) (++!8073 (t!229950 lt!1004868) (t!229950 ll!54))))))

(declare-fun d!816517 () Bool)

(assert (=> d!816517 e!1778771))

(declare-fun res!1170904 () Bool)

(assert (=> d!816517 (=> (not res!1170904) (not e!1778771))))

(assert (=> d!816517 (= res!1170904 (= (content!4584 lt!1004881) ((_ map or) (content!4584 lt!1004868) (content!4584 (t!229950 ll!54)))))))

(assert (=> d!816517 (= lt!1004881 e!1778770)))

(declare-fun c!455758 () Bool)

(assert (=> d!816517 (= c!455758 ((_ is Nil!32864) lt!1004868))))

(assert (=> d!816517 (= (++!8073 lt!1004868 (t!229950 ll!54)) lt!1004881)))

(assert (= (and d!816517 c!455758) b!2812724))

(assert (= (and d!816517 (not c!455758)) b!2812725))

(assert (= (and d!816517 res!1170904) b!2812726))

(assert (= (and b!2812726 res!1170903) b!2812727))

(declare-fun m!3243011 () Bool)

(assert (=> b!2812726 m!3243011))

(declare-fun m!3243013 () Bool)

(assert (=> b!2812726 m!3243013))

(declare-fun m!3243015 () Bool)

(assert (=> b!2812726 m!3243015))

(declare-fun m!3243017 () Bool)

(assert (=> b!2812725 m!3243017))

(declare-fun m!3243019 () Bool)

(assert (=> d!816517 m!3243019))

(declare-fun m!3243021 () Bool)

(assert (=> d!816517 m!3243021))

(declare-fun m!3243023 () Bool)

(assert (=> d!816517 m!3243023))

(assert (=> b!2812698 d!816517))

(declare-fun d!816519 () Bool)

(assert (=> d!816519 (= (++!8073 (++!8073 lt!1004873 lt!1004868) (t!229950 ll!54)) (++!8073 lt!1004873 (++!8073 lt!1004868 (t!229950 ll!54))))))

(declare-fun lt!1004886 () Unit!46868)

(declare-fun choose!16621 (List!32985 List!32985 List!32985) Unit!46868)

(assert (=> d!816519 (= lt!1004886 (choose!16621 lt!1004873 lt!1004868 (t!229950 ll!54)))))

(assert (=> d!816519 (= (lemmaConcatAssociativity!1678 lt!1004873 lt!1004868 (t!229950 ll!54)) lt!1004886)))

(declare-fun bs!516484 () Bool)

(assert (= bs!516484 d!816519))

(declare-fun m!3243025 () Bool)

(assert (=> bs!516484 m!3243025))

(assert (=> bs!516484 m!3242975))

(assert (=> bs!516484 m!3242949))

(assert (=> bs!516484 m!3242975))

(declare-fun m!3243027 () Bool)

(assert (=> bs!516484 m!3243027))

(assert (=> bs!516484 m!3242949))

(declare-fun m!3243029 () Bool)

(assert (=> bs!516484 m!3243029))

(assert (=> b!2812698 d!816519))

(declare-fun d!816521 () Bool)

(assert (=> d!816521 (= ($colon$colon!573 (t!229950 ll!54) (h!38284 ll!54)) (Cons!32864 (h!38284 ll!54) (t!229950 ll!54)))))

(assert (=> b!2812698 d!816521))

(declare-fun e!1778777 () Bool)

(declare-fun lt!1004887 () List!32985)

(declare-fun b!2812739 () Bool)

(assert (=> b!2812739 (= e!1778777 (or (not (= (t!229950 ll!54) Nil!32864)) (= lt!1004887 lt!1004870)))))

(declare-fun b!2812736 () Bool)

(declare-fun e!1778776 () List!32985)

(assert (=> b!2812736 (= e!1778776 (t!229950 ll!54))))

(declare-fun b!2812738 () Bool)

(declare-fun res!1170909 () Bool)

(assert (=> b!2812738 (=> (not res!1170909) (not e!1778777))))

(assert (=> b!2812738 (= res!1170909 (= (size!25609 lt!1004887) (+ (size!25609 lt!1004870) (size!25609 (t!229950 ll!54)))))))

(declare-fun b!2812737 () Bool)

(assert (=> b!2812737 (= e!1778776 (Cons!32864 (h!38284 lt!1004870) (++!8073 (t!229950 lt!1004870) (t!229950 ll!54))))))

(declare-fun d!816523 () Bool)

(assert (=> d!816523 e!1778777))

(declare-fun res!1170910 () Bool)

(assert (=> d!816523 (=> (not res!1170910) (not e!1778777))))

(assert (=> d!816523 (= res!1170910 (= (content!4584 lt!1004887) ((_ map or) (content!4584 lt!1004870) (content!4584 (t!229950 ll!54)))))))

(assert (=> d!816523 (= lt!1004887 e!1778776)))

(declare-fun c!455761 () Bool)

(assert (=> d!816523 (= c!455761 ((_ is Nil!32864) lt!1004870))))

(assert (=> d!816523 (= (++!8073 lt!1004870 (t!229950 ll!54)) lt!1004887)))

(assert (= (and d!816523 c!455761) b!2812736))

(assert (= (and d!816523 (not c!455761)) b!2812737))

(assert (= (and d!816523 res!1170910) b!2812738))

(assert (= (and b!2812738 res!1170909) b!2812739))

(declare-fun m!3243031 () Bool)

(assert (=> b!2812738 m!3243031))

(declare-fun m!3243033 () Bool)

(assert (=> b!2812738 m!3243033))

(assert (=> b!2812738 m!3243015))

(declare-fun m!3243035 () Bool)

(assert (=> b!2812737 m!3243035))

(declare-fun m!3243037 () Bool)

(assert (=> d!816523 m!3243037))

(declare-fun m!3243039 () Bool)

(assert (=> d!816523 m!3243039))

(assert (=> d!816523 m!3243023))

(assert (=> b!2812698 d!816523))

(declare-fun lt!1004888 () List!32985)

(declare-fun e!1778779 () Bool)

(declare-fun b!2812743 () Bool)

(assert (=> b!2812743 (= e!1778779 (or (not (= lt!1004868 Nil!32864)) (= lt!1004888 lt!1004873)))))

(declare-fun b!2812740 () Bool)

(declare-fun e!1778778 () List!32985)

(assert (=> b!2812740 (= e!1778778 lt!1004868)))

(declare-fun b!2812742 () Bool)

(declare-fun res!1170911 () Bool)

(assert (=> b!2812742 (=> (not res!1170911) (not e!1778779))))

(assert (=> b!2812742 (= res!1170911 (= (size!25609 lt!1004888) (+ (size!25609 lt!1004873) (size!25609 lt!1004868))))))

(declare-fun b!2812741 () Bool)

(assert (=> b!2812741 (= e!1778778 (Cons!32864 (h!38284 lt!1004873) (++!8073 (t!229950 lt!1004873) lt!1004868)))))

(declare-fun d!816525 () Bool)

(assert (=> d!816525 e!1778779))

(declare-fun res!1170912 () Bool)

(assert (=> d!816525 (=> (not res!1170912) (not e!1778779))))

(assert (=> d!816525 (= res!1170912 (= (content!4584 lt!1004888) ((_ map or) (content!4584 lt!1004873) (content!4584 lt!1004868))))))

(assert (=> d!816525 (= lt!1004888 e!1778778)))

(declare-fun c!455762 () Bool)

(assert (=> d!816525 (= c!455762 ((_ is Nil!32864) lt!1004873))))

(assert (=> d!816525 (= (++!8073 lt!1004873 lt!1004868) lt!1004888)))

(assert (= (and d!816525 c!455762) b!2812740))

(assert (= (and d!816525 (not c!455762)) b!2812741))

(assert (= (and d!816525 res!1170912) b!2812742))

(assert (= (and b!2812742 res!1170911) b!2812743))

(declare-fun m!3243041 () Bool)

(assert (=> b!2812742 m!3243041))

(assert (=> b!2812742 m!3242979))

(assert (=> b!2812742 m!3243013))

(declare-fun m!3243043 () Bool)

(assert (=> b!2812741 m!3243043))

(declare-fun m!3243045 () Bool)

(assert (=> d!816525 m!3243045))

(assert (=> d!816525 m!3242987))

(assert (=> d!816525 m!3243021))

(assert (=> b!2812702 d!816525))

(declare-fun d!816527 () Bool)

(declare-fun choose!16624 (Vector!248) List!32985)

(assert (=> d!816527 (= (list!12313 v!5966) (choose!16624 v!5966))))

(declare-fun bs!516485 () Bool)

(assert (= bs!516485 d!816527))

(declare-fun m!3243047 () Bool)

(assert (=> bs!516485 m!3243047))

(assert (=> b!2812701 d!816527))

(declare-fun b!2812764 () Bool)

(declare-fun e!1778790 () Bool)

(declare-fun call!183142 () (_ BitVec 32))

(declare-fun call!183141 () (_ BitVec 32))

(assert (=> b!2812764 (= e!1778790 (= call!183142 call!183141))))

(declare-fun d!816529 () Bool)

(declare-fun e!1778789 () Bool)

(assert (=> d!816529 e!1778789))

(declare-fun res!1170925 () Bool)

(assert (=> d!816529 (=> (not res!1170925) (not e!1778789))))

(declare-fun lt!1004895 () List!32985)

(assert (=> d!816529 (= res!1170925 ((_ is Cons!32864) lt!1004895))))

(declare-fun e!1778788 () List!32985)

(assert (=> d!816529 (= lt!1004895 e!1778788)))

(declare-fun c!455768 () Bool)

(assert (=> d!816529 (= c!455768 ((_ is Nil!32864) lt!1004873))))

(assert (=> d!816529 (= ($colon+!218 lt!1004873 (h!38284 ll!54)) lt!1004895)))

(declare-fun b!2812765 () Bool)

(assert (=> b!2812765 (= e!1778789 (= lt!1004895 (++!8073 lt!1004873 (Cons!32864 (h!38284 ll!54) Nil!32864))))))

(declare-fun bm!183136 () Bool)

(declare-fun isize!74 (List!32985) (_ BitVec 32))

(assert (=> bm!183136 (= call!183141 (isize!74 lt!1004873))))

(declare-fun b!2812766 () Bool)

(assert (=> b!2812766 (= e!1778790 (= call!183142 (bvadd call!183141 #b00000000000000000000000000000001)))))

(declare-fun b!2812767 () Bool)

(declare-fun res!1170923 () Bool)

(assert (=> b!2812767 (=> (not res!1170923) (not e!1778789))))

(assert (=> b!2812767 (= res!1170923 (= (size!25609 lt!1004895) (+ (size!25609 lt!1004873) 1)))))

(declare-fun b!2812768 () Bool)

(assert (=> b!2812768 (= e!1778788 (Cons!32864 (h!38284 lt!1004873) ($colon+!218 (t!229950 lt!1004873) (h!38284 ll!54))))))

(declare-fun b!2812769 () Bool)

(declare-fun res!1170926 () Bool)

(assert (=> b!2812769 (=> (not res!1170926) (not e!1778789))))

(assert (=> b!2812769 (= res!1170926 e!1778790)))

(declare-fun c!455769 () Bool)

(assert (=> b!2812769 (= c!455769 (bvslt (isize!74 lt!1004873) #b01111111111111111111111111111111))))

(declare-fun b!2812770 () Bool)

(assert (=> b!2812770 (= e!1778788 (Cons!32864 (h!38284 ll!54) lt!1004873))))

(declare-fun b!2812771 () Bool)

(declare-fun res!1170924 () Bool)

(assert (=> b!2812771 (=> (not res!1170924) (not e!1778789))))

(assert (=> b!2812771 (= res!1170924 (= (content!4584 lt!1004895) ((_ map or) (content!4584 lt!1004873) (store ((as const (Array T!54850 Bool)) false) (h!38284 ll!54) true))))))

(declare-fun bm!183137 () Bool)

(assert (=> bm!183137 (= call!183142 (isize!74 lt!1004895))))

(assert (= (and d!816529 c!455768) b!2812770))

(assert (= (and d!816529 (not c!455768)) b!2812768))

(assert (= (and d!816529 res!1170925) b!2812767))

(assert (= (and b!2812767 res!1170923) b!2812769))

(assert (= (and b!2812769 c!455769) b!2812766))

(assert (= (and b!2812769 (not c!455769)) b!2812764))

(assert (= (or b!2812766 b!2812764) bm!183136))

(assert (= (or b!2812766 b!2812764) bm!183137))

(assert (= (and b!2812769 res!1170926) b!2812771))

(assert (= (and b!2812771 res!1170924) b!2812765))

(declare-fun m!3243075 () Bool)

(assert (=> b!2812768 m!3243075))

(declare-fun m!3243077 () Bool)

(assert (=> b!2812769 m!3243077))

(declare-fun m!3243079 () Bool)

(assert (=> bm!183137 m!3243079))

(assert (=> bm!183136 m!3243077))

(declare-fun m!3243081 () Bool)

(assert (=> b!2812765 m!3243081))

(declare-fun m!3243083 () Bool)

(assert (=> b!2812771 m!3243083))

(assert (=> b!2812771 m!3242987))

(declare-fun m!3243085 () Bool)

(assert (=> b!2812771 m!3243085))

(declare-fun m!3243087 () Bool)

(assert (=> b!2812767 m!3243087))

(assert (=> b!2812767 m!3242979))

(assert (=> b!2812701 d!816529))

(declare-fun d!816541 () Bool)

(assert (=> d!816541 (= (list!12313 lt!1004874) (choose!16624 lt!1004874))))

(declare-fun bs!516490 () Bool)

(assert (= bs!516490 d!816541))

(declare-fun m!3243089 () Bool)

(assert (=> bs!516490 m!3243089))

(assert (=> b!2812701 d!816541))

(declare-fun d!816543 () Bool)

(assert (=> d!816543 (= (list!12313 (rec!27 (t!229950 ll!54) lt!1004874)) (choose!16624 (rec!27 (t!229950 ll!54) lt!1004874)))))

(declare-fun bs!516491 () Bool)

(assert (= bs!516491 d!816543))

(assert (=> bs!516491 m!3242963))

(declare-fun m!3243091 () Bool)

(assert (=> bs!516491 m!3243091))

(assert (=> b!2812701 d!816543))

(declare-fun lt!1004898 () List!32985)

(declare-fun b!2812779 () Bool)

(declare-fun e!1778794 () Bool)

(assert (=> b!2812779 (= e!1778794 (or (not (= (t!229950 ll!54) Nil!32864)) (= lt!1004898 lt!1004867)))))

(declare-fun b!2812776 () Bool)

(declare-fun e!1778793 () List!32985)

(assert (=> b!2812776 (= e!1778793 (t!229950 ll!54))))

(declare-fun b!2812778 () Bool)

(declare-fun res!1170927 () Bool)

(assert (=> b!2812778 (=> (not res!1170927) (not e!1778794))))

(assert (=> b!2812778 (= res!1170927 (= (size!25609 lt!1004898) (+ (size!25609 lt!1004867) (size!25609 (t!229950 ll!54)))))))

(declare-fun b!2812777 () Bool)

(assert (=> b!2812777 (= e!1778793 (Cons!32864 (h!38284 lt!1004867) (++!8073 (t!229950 lt!1004867) (t!229950 ll!54))))))

(declare-fun d!816545 () Bool)

(assert (=> d!816545 e!1778794))

(declare-fun res!1170928 () Bool)

(assert (=> d!816545 (=> (not res!1170928) (not e!1778794))))

(assert (=> d!816545 (= res!1170928 (= (content!4584 lt!1004898) ((_ map or) (content!4584 lt!1004867) (content!4584 (t!229950 ll!54)))))))

(assert (=> d!816545 (= lt!1004898 e!1778793)))

(declare-fun c!455772 () Bool)

(assert (=> d!816545 (= c!455772 ((_ is Nil!32864) lt!1004867))))

(assert (=> d!816545 (= (++!8073 lt!1004867 (t!229950 ll!54)) lt!1004898)))

(assert (= (and d!816545 c!455772) b!2812776))

(assert (= (and d!816545 (not c!455772)) b!2812777))

(assert (= (and d!816545 res!1170928) b!2812778))

(assert (= (and b!2812778 res!1170927) b!2812779))

(declare-fun m!3243093 () Bool)

(assert (=> b!2812778 m!3243093))

(declare-fun m!3243095 () Bool)

(assert (=> b!2812778 m!3243095))

(assert (=> b!2812778 m!3243015))

(declare-fun m!3243097 () Bool)

(assert (=> b!2812777 m!3243097))

(declare-fun m!3243099 () Bool)

(assert (=> d!816545 m!3243099))

(declare-fun m!3243101 () Bool)

(assert (=> d!816545 m!3243101))

(assert (=> d!816545 m!3243023))

(assert (=> b!2812701 d!816545))

(declare-fun d!816547 () Bool)

(declare-fun lt!1004901 () Vector!248)

(assert (=> d!816547 (= (list!12313 lt!1004901) ($colon+!218 (list!12313 v!5966) (h!38284 ll!54)))))

(declare-fun choose!16625 (Vector!248 T!54850) Vector!248)

(assert (=> d!816547 (= lt!1004901 (choose!16625 v!5966 (h!38284 ll!54)))))

(assert (=> d!816547 (= ($colon+!219 v!5966 (h!38284 ll!54)) lt!1004901)))

(declare-fun bs!516492 () Bool)

(assert (= bs!516492 d!816547))

(declare-fun m!3243103 () Bool)

(assert (=> bs!516492 m!3243103))

(assert (=> bs!516492 m!3242971))

(assert (=> bs!516492 m!3242971))

(declare-fun m!3243105 () Bool)

(assert (=> bs!516492 m!3243105))

(declare-fun m!3243107 () Bool)

(assert (=> bs!516492 m!3243107))

(assert (=> b!2812701 d!816547))

(declare-fun d!816549 () Bool)

(declare-fun lt!1004917 () Vector!248)

(assert (=> d!816549 (= (list!12313 lt!1004917) (++!8073 (list!12313 lt!1004874) (t!229950 ll!54)))))

(declare-fun e!1778804 () Vector!248)

(assert (=> d!816549 (= lt!1004917 e!1778804)))

(declare-fun c!455779 () Bool)

(assert (=> d!816549 (= c!455779 ((_ is Nil!32864) (t!229950 ll!54)))))

(assert (=> d!816549 (= (rec!27 (t!229950 ll!54) lt!1004874) lt!1004917)))

(declare-fun b!2812804 () Bool)

(assert (=> b!2812804 (= e!1778804 lt!1004874)))

(declare-fun b!2812805 () Bool)

(declare-fun lt!1004918 () Vector!248)

(assert (=> b!2812805 (= e!1778804 (rec!27 (t!229950 (t!229950 ll!54)) lt!1004918))))

(declare-fun lt!1004920 () List!32985)

(assert (=> b!2812805 (= lt!1004920 (list!12313 lt!1004874))))

(declare-fun lt!1004919 () List!32985)

(assert (=> b!2812805 (= lt!1004919 (Cons!32864 (h!38284 (t!229950 ll!54)) Nil!32864))))

(declare-fun lt!1004916 () Unit!46868)

(assert (=> b!2812805 (= lt!1004916 (lemmaConcatAssociativity!1678 lt!1004920 lt!1004919 (t!229950 (t!229950 ll!54))))))

(assert (=> b!2812805 (= (++!8073 (++!8073 lt!1004920 lt!1004919) (t!229950 (t!229950 ll!54))) (++!8073 lt!1004920 (++!8073 lt!1004919 (t!229950 (t!229950 ll!54)))))))

(declare-fun lt!1004915 () Unit!46868)

(assert (=> b!2812805 (= lt!1004915 lt!1004916)))

(assert (=> b!2812805 (= lt!1004918 ($colon+!219 lt!1004874 (h!38284 (t!229950 ll!54))))))

(assert (=> b!2812805 (= (list!12313 lt!1004918) ($colon+!218 (list!12313 lt!1004874) (h!38284 (t!229950 ll!54))))))

(assert (= (and d!816549 c!455779) b!2812804))

(assert (= (and d!816549 (not c!455779)) b!2812805))

(declare-fun m!3243123 () Bool)

(assert (=> d!816549 m!3243123))

(assert (=> d!816549 m!3242965))

(assert (=> d!816549 m!3242965))

(declare-fun m!3243125 () Bool)

(assert (=> d!816549 m!3243125))

(declare-fun m!3243127 () Bool)

(assert (=> b!2812805 m!3243127))

(declare-fun m!3243129 () Bool)

(assert (=> b!2812805 m!3243129))

(declare-fun m!3243131 () Bool)

(assert (=> b!2812805 m!3243131))

(declare-fun m!3243133 () Bool)

(assert (=> b!2812805 m!3243133))

(assert (=> b!2812805 m!3242965))

(declare-fun m!3243135 () Bool)

(assert (=> b!2812805 m!3243135))

(assert (=> b!2812805 m!3243135))

(declare-fun m!3243137 () Bool)

(assert (=> b!2812805 m!3243137))

(assert (=> b!2812805 m!3243131))

(declare-fun m!3243139 () Bool)

(assert (=> b!2812805 m!3243139))

(assert (=> b!2812805 m!3242965))

(declare-fun m!3243141 () Bool)

(assert (=> b!2812805 m!3243141))

(declare-fun m!3243143 () Bool)

(assert (=> b!2812805 m!3243143))

(assert (=> b!2812701 d!816549))

(declare-fun b!2812810 () Bool)

(declare-fun e!1778807 () Bool)

(declare-fun tp!898165 () Bool)

(assert (=> b!2812810 (= e!1778807 (and tp_is_empty!14403 tp!898165))))

(assert (=> b!2812703 (= tp!898162 e!1778807)))

(assert (= (and b!2812703 ((_ is Cons!32864) (t!229950 ll!54))) b!2812810))

(declare-fun b!2812824 () Bool)

(declare-fun e!1778815 () Bool)

(declare-fun tp!898170 () Bool)

(declare-fun inv!44622 (Conc!10178) Bool)

(assert (=> b!2812824 (= e!1778815 (and (inv!44622 (c!455752 (value!158174 (underlying!8364 v!5966)))) tp!898170))))

(declare-fun b!2812823 () Bool)

(declare-fun e!1778814 () Bool)

(declare-fun inv!44623 (BalanceConc!19992) Bool)

(assert (=> b!2812823 (= e!1778814 (and (inv!44623 (value!158174 (underlying!8364 v!5966))) e!1778815))))

(declare-fun b!2812825 () Bool)

(declare-fun tp!898171 () Bool)

(assert (=> b!2812825 (= e!1778814 tp!898171)))

(assert (=> b!2812700 (= tp!898161 e!1778814)))

(assert (= b!2812823 b!2812824))

(assert (= (and b!2812700 ((_ is BalanceConc!19991) (underlying!8364 v!5966))) b!2812823))

(assert (= (and b!2812700 ((_ is List!32986) (underlying!8364 v!5966))) b!2812825))

(declare-fun m!3243145 () Bool)

(assert (=> b!2812824 m!3243145))

(declare-fun m!3243147 () Bool)

(assert (=> b!2812823 m!3243147))

(declare-fun b!2812826 () Bool)

(declare-fun e!1778816 () Bool)

(declare-fun tp!898172 () Bool)

(assert (=> b!2812826 (= e!1778816 (and tp_is_empty!14403 tp!898172))))

(assert (=> b!2812700 (= tp!898160 e!1778816)))

(assert (= (and b!2812700 ((_ is Cons!32864) (overflowing!181 v!5966))) b!2812826))

(check-sat (not bm!183137) (not b!2812769) (not d!816541) (not b!2812725) (not b!2812721) (not b!2812810) (not b!2812825) (not b!2812726) (not d!816525) (not b!2812771) (not d!816545) (not d!816517) (not b!2812823) (not b!2812777) (not d!816527) (not b!2812824) (not b!2812718) (not b!2812742) (not b!2812722) (not b!2812778) (not d!816523) (not b!2812738) (not d!816543) (not b!2812741) (not b!2812737) (not b!2812805) (not b!2812713) (not b!2812768) (not d!816547) (not d!816549) (not d!816509) (not b!2812826) (not b!2812767) (not b!2812765) (not d!816513) (not b!2812714) (not d!816515) (not b!2812717) (not bm!183136) (not d!816519) tp_is_empty!14403)
(check-sat)
