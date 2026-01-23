; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!520280 () Bool)

(assert start!520280)

(declare-fun res!2109609 () Bool)

(declare-fun e!3088854 () Bool)

(assert (=> start!520280 (=> (not res!2109609) (not e!3088854))))

(declare-datatypes ((C!27168 0))(
  ( (C!27169 (val!22918 Int)) )
))
(declare-datatypes ((List!57048 0))(
  ( (Nil!56924) (Cons!56924 (h!63372 C!27168) (t!367584 List!57048)) )
))
(declare-fun lt!2037885 () List!57048)

(declare-fun lt!2037887 () List!57048)

(assert (=> start!520280 (= res!2109609 (= lt!2037885 lt!2037887))))

(declare-datatypes ((IArray!30017 0))(
  ( (IArray!30018 (innerList!15066 List!57048)) )
))
(declare-datatypes ((Conc!14978 0))(
  ( (Node!14978 (left!41533 Conc!14978) (right!41863 Conc!14978) (csize!30186 Int) (cheight!15189 Int)) (Leaf!24900 (xs!18304 IArray!30017) (csize!30187 Int)) (Empty!14978) )
))
(declare-datatypes ((BalanceConc!29386 0))(
  ( (BalanceConc!29387 (c!843493 Conc!14978)) )
))
(declare-fun totalInput!685 () BalanceConc!29386)

(declare-fun list!18123 (BalanceConc!29386) List!57048)

(assert (=> start!520280 (= lt!2037887 (list!18123 totalInput!685))))

(declare-fun testedP!110 () List!57048)

(declare-fun testedSuffix!70 () List!57048)

(declare-fun ++!12444 (List!57048 List!57048) List!57048)

(assert (=> start!520280 (= lt!2037885 (++!12444 testedP!110 testedSuffix!70))))

(assert (=> start!520280 e!3088854))

(declare-fun e!3088857 () Bool)

(assert (=> start!520280 e!3088857))

(assert (=> start!520280 true))

(declare-fun e!3088856 () Bool)

(declare-fun inv!74077 (BalanceConc!29386) Bool)

(assert (=> start!520280 (and (inv!74077 totalInput!685) e!3088856)))

(declare-fun e!3088855 () Bool)

(assert (=> start!520280 e!3088855))

(declare-fun b!4943865 () Bool)

(declare-fun tp_is_empty!36115 () Bool)

(declare-fun tp!1386789 () Bool)

(assert (=> b!4943865 (= e!3088855 (and tp_is_empty!36115 tp!1386789))))

(declare-fun b!4943866 () Bool)

(declare-fun tp!1386791 () Bool)

(assert (=> b!4943866 (= e!3088857 (and tp_is_empty!36115 tp!1386791))))

(declare-fun b!4943867 () Bool)

(declare-fun res!2109610 () Bool)

(assert (=> b!4943867 (=> (not res!2109610) (not e!3088854))))

(declare-fun totalInputSize!132 () Int)

(declare-fun size!37745 (BalanceConc!29386) Int)

(assert (=> b!4943867 (= res!2109610 (= totalInputSize!132 (size!37745 totalInput!685)))))

(declare-fun b!4943868 () Bool)

(declare-fun res!2109611 () Bool)

(assert (=> b!4943868 (=> (not res!2109611) (not e!3088854))))

(declare-fun testedPSize!70 () Int)

(declare-fun size!37746 (List!57048) Int)

(assert (=> b!4943868 (= res!2109611 (= testedPSize!70 (size!37746 testedP!110)))))

(declare-fun b!4943869 () Bool)

(declare-fun e!3088853 () Bool)

(assert (=> b!4943869 (= e!3088854 (not e!3088853))))

(declare-fun res!2109612 () Bool)

(assert (=> b!4943869 (=> res!2109612 e!3088853)))

(declare-fun isPrefix!5065 (List!57048 List!57048) Bool)

(assert (=> b!4943869 (= res!2109612 (not (isPrefix!5065 testedP!110 lt!2037887)))))

(assert (=> b!4943869 (isPrefix!5065 testedP!110 lt!2037885)))

(declare-datatypes ((Unit!147685 0))(
  ( (Unit!147686) )
))
(declare-fun lt!2037886 () Unit!147685)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3289 (List!57048 List!57048) Unit!147685)

(assert (=> b!4943869 (= lt!2037886 (lemmaConcatTwoListThenFirstIsPrefix!3289 testedP!110 testedSuffix!70))))

(declare-fun b!4943870 () Bool)

(declare-fun getSuffix!3047 (List!57048 List!57048) List!57048)

(assert (=> b!4943870 (= e!3088853 (= (++!12444 testedP!110 (getSuffix!3047 lt!2037887 testedP!110)) lt!2037887))))

(declare-fun b!4943871 () Bool)

(declare-fun tp!1386790 () Bool)

(declare-fun inv!74078 (Conc!14978) Bool)

(assert (=> b!4943871 (= e!3088856 (and (inv!74078 (c!843493 totalInput!685)) tp!1386790))))

(assert (= (and start!520280 res!2109609) b!4943868))

(assert (= (and b!4943868 res!2109611) b!4943867))

(assert (= (and b!4943867 res!2109610) b!4943869))

(assert (= (and b!4943869 (not res!2109612)) b!4943870))

(get-info :version)

(assert (= (and start!520280 ((_ is Cons!56924) testedP!110)) b!4943866))

(assert (= start!520280 b!4943871))

(assert (= (and start!520280 ((_ is Cons!56924) testedSuffix!70)) b!4943865))

(declare-fun m!5966890 () Bool)

(assert (=> b!4943869 m!5966890))

(declare-fun m!5966892 () Bool)

(assert (=> b!4943869 m!5966892))

(declare-fun m!5966894 () Bool)

(assert (=> b!4943869 m!5966894))

(declare-fun m!5966896 () Bool)

(assert (=> b!4943870 m!5966896))

(assert (=> b!4943870 m!5966896))

(declare-fun m!5966898 () Bool)

(assert (=> b!4943870 m!5966898))

(declare-fun m!5966900 () Bool)

(assert (=> b!4943868 m!5966900))

(declare-fun m!5966902 () Bool)

(assert (=> start!520280 m!5966902))

(declare-fun m!5966904 () Bool)

(assert (=> start!520280 m!5966904))

(declare-fun m!5966906 () Bool)

(assert (=> start!520280 m!5966906))

(declare-fun m!5966908 () Bool)

(assert (=> b!4943871 m!5966908))

(declare-fun m!5966910 () Bool)

(assert (=> b!4943867 m!5966910))

(check-sat (not b!4943868) (not b!4943869) tp_is_empty!36115 (not b!4943867) (not b!4943871) (not b!4943870) (not b!4943866) (not start!520280) (not b!4943865))
(check-sat)
(get-model)

(declare-fun b!4943889 () Bool)

(declare-fun e!3088868 () Bool)

(assert (=> b!4943889 (= e!3088868 (>= (size!37746 lt!2037887) (size!37746 testedP!110)))))

(declare-fun d!1591940 () Bool)

(assert (=> d!1591940 e!3088868))

(declare-fun res!2109624 () Bool)

(assert (=> d!1591940 (=> res!2109624 e!3088868)))

(declare-fun lt!2037896 () Bool)

(assert (=> d!1591940 (= res!2109624 (not lt!2037896))))

(declare-fun e!3088867 () Bool)

(assert (=> d!1591940 (= lt!2037896 e!3088867)))

(declare-fun res!2109621 () Bool)

(assert (=> d!1591940 (=> res!2109621 e!3088867)))

(assert (=> d!1591940 (= res!2109621 ((_ is Nil!56924) testedP!110))))

(assert (=> d!1591940 (= (isPrefix!5065 testedP!110 lt!2037887) lt!2037896)))

(declare-fun b!4943886 () Bool)

(declare-fun e!3088869 () Bool)

(assert (=> b!4943886 (= e!3088867 e!3088869)))

(declare-fun res!2109622 () Bool)

(assert (=> b!4943886 (=> (not res!2109622) (not e!3088869))))

(assert (=> b!4943886 (= res!2109622 (not ((_ is Nil!56924) lt!2037887)))))

(declare-fun b!4943888 () Bool)

(declare-fun tail!9730 (List!57048) List!57048)

(assert (=> b!4943888 (= e!3088869 (isPrefix!5065 (tail!9730 testedP!110) (tail!9730 lt!2037887)))))

(declare-fun b!4943887 () Bool)

(declare-fun res!2109623 () Bool)

(assert (=> b!4943887 (=> (not res!2109623) (not e!3088869))))

(declare-fun head!10591 (List!57048) C!27168)

(assert (=> b!4943887 (= res!2109623 (= (head!10591 testedP!110) (head!10591 lt!2037887)))))

(assert (= (and d!1591940 (not res!2109621)) b!4943886))

(assert (= (and b!4943886 res!2109622) b!4943887))

(assert (= (and b!4943887 res!2109623) b!4943888))

(assert (= (and d!1591940 (not res!2109624)) b!4943889))

(declare-fun m!5966920 () Bool)

(assert (=> b!4943889 m!5966920))

(assert (=> b!4943889 m!5966900))

(declare-fun m!5966922 () Bool)

(assert (=> b!4943888 m!5966922))

(declare-fun m!5966924 () Bool)

(assert (=> b!4943888 m!5966924))

(assert (=> b!4943888 m!5966922))

(assert (=> b!4943888 m!5966924))

(declare-fun m!5966926 () Bool)

(assert (=> b!4943888 m!5966926))

(declare-fun m!5966928 () Bool)

(assert (=> b!4943887 m!5966928))

(declare-fun m!5966930 () Bool)

(assert (=> b!4943887 m!5966930))

(assert (=> b!4943869 d!1591940))

(declare-fun b!4943893 () Bool)

(declare-fun e!3088871 () Bool)

(assert (=> b!4943893 (= e!3088871 (>= (size!37746 lt!2037885) (size!37746 testedP!110)))))

(declare-fun d!1591948 () Bool)

(assert (=> d!1591948 e!3088871))

(declare-fun res!2109628 () Bool)

(assert (=> d!1591948 (=> res!2109628 e!3088871)))

(declare-fun lt!2037897 () Bool)

(assert (=> d!1591948 (= res!2109628 (not lt!2037897))))

(declare-fun e!3088870 () Bool)

(assert (=> d!1591948 (= lt!2037897 e!3088870)))

(declare-fun res!2109625 () Bool)

(assert (=> d!1591948 (=> res!2109625 e!3088870)))

(assert (=> d!1591948 (= res!2109625 ((_ is Nil!56924) testedP!110))))

(assert (=> d!1591948 (= (isPrefix!5065 testedP!110 lt!2037885) lt!2037897)))

(declare-fun b!4943890 () Bool)

(declare-fun e!3088872 () Bool)

(assert (=> b!4943890 (= e!3088870 e!3088872)))

(declare-fun res!2109626 () Bool)

(assert (=> b!4943890 (=> (not res!2109626) (not e!3088872))))

(assert (=> b!4943890 (= res!2109626 (not ((_ is Nil!56924) lt!2037885)))))

(declare-fun b!4943892 () Bool)

(assert (=> b!4943892 (= e!3088872 (isPrefix!5065 (tail!9730 testedP!110) (tail!9730 lt!2037885)))))

(declare-fun b!4943891 () Bool)

(declare-fun res!2109627 () Bool)

(assert (=> b!4943891 (=> (not res!2109627) (not e!3088872))))

(assert (=> b!4943891 (= res!2109627 (= (head!10591 testedP!110) (head!10591 lt!2037885)))))

(assert (= (and d!1591948 (not res!2109625)) b!4943890))

(assert (= (and b!4943890 res!2109626) b!4943891))

(assert (= (and b!4943891 res!2109627) b!4943892))

(assert (= (and d!1591948 (not res!2109628)) b!4943893))

(declare-fun m!5966932 () Bool)

(assert (=> b!4943893 m!5966932))

(assert (=> b!4943893 m!5966900))

(assert (=> b!4943892 m!5966922))

(declare-fun m!5966934 () Bool)

(assert (=> b!4943892 m!5966934))

(assert (=> b!4943892 m!5966922))

(assert (=> b!4943892 m!5966934))

(declare-fun m!5966936 () Bool)

(assert (=> b!4943892 m!5966936))

(assert (=> b!4943891 m!5966928))

(declare-fun m!5966938 () Bool)

(assert (=> b!4943891 m!5966938))

(assert (=> b!4943869 d!1591948))

(declare-fun d!1591950 () Bool)

(assert (=> d!1591950 (isPrefix!5065 testedP!110 (++!12444 testedP!110 testedSuffix!70))))

(declare-fun lt!2037903 () Unit!147685)

(declare-fun choose!36422 (List!57048 List!57048) Unit!147685)

(assert (=> d!1591950 (= lt!2037903 (choose!36422 testedP!110 testedSuffix!70))))

(assert (=> d!1591950 (= (lemmaConcatTwoListThenFirstIsPrefix!3289 testedP!110 testedSuffix!70) lt!2037903)))

(declare-fun bs!1181517 () Bool)

(assert (= bs!1181517 d!1591950))

(assert (=> bs!1181517 m!5966904))

(assert (=> bs!1181517 m!5966904))

(declare-fun m!5966946 () Bool)

(assert (=> bs!1181517 m!5966946))

(declare-fun m!5966950 () Bool)

(assert (=> bs!1181517 m!5966950))

(assert (=> b!4943869 d!1591950))

(declare-fun d!1591952 () Bool)

(declare-fun lt!2037906 () Int)

(assert (=> d!1591952 (>= lt!2037906 0)))

(declare-fun e!3088881 () Int)

(assert (=> d!1591952 (= lt!2037906 e!3088881)))

(declare-fun c!843502 () Bool)

(assert (=> d!1591952 (= c!843502 ((_ is Nil!56924) testedP!110))))

(assert (=> d!1591952 (= (size!37746 testedP!110) lt!2037906)))

(declare-fun b!4943910 () Bool)

(assert (=> b!4943910 (= e!3088881 0)))

(declare-fun b!4943911 () Bool)

(assert (=> b!4943911 (= e!3088881 (+ 1 (size!37746 (t!367584 testedP!110))))))

(assert (= (and d!1591952 c!843502) b!4943910))

(assert (= (and d!1591952 (not c!843502)) b!4943911))

(declare-fun m!5966958 () Bool)

(assert (=> b!4943911 m!5966958))

(assert (=> b!4943868 d!1591952))

(declare-fun d!1591958 () Bool)

(declare-fun list!18125 (Conc!14978) List!57048)

(assert (=> d!1591958 (= (list!18123 totalInput!685) (list!18125 (c!843493 totalInput!685)))))

(declare-fun bs!1181519 () Bool)

(assert (= bs!1181519 d!1591958))

(declare-fun m!5966960 () Bool)

(assert (=> bs!1181519 m!5966960))

(assert (=> start!520280 d!1591958))

(declare-fun b!4943938 () Bool)

(declare-fun res!2109656 () Bool)

(declare-fun e!3088899 () Bool)

(assert (=> b!4943938 (=> (not res!2109656) (not e!3088899))))

(declare-fun lt!2037913 () List!57048)

(assert (=> b!4943938 (= res!2109656 (= (size!37746 lt!2037913) (+ (size!37746 testedP!110) (size!37746 testedSuffix!70))))))

(declare-fun b!4943939 () Bool)

(assert (=> b!4943939 (= e!3088899 (or (not (= testedSuffix!70 Nil!56924)) (= lt!2037913 testedP!110)))))

(declare-fun d!1591960 () Bool)

(assert (=> d!1591960 e!3088899))

(declare-fun res!2109655 () Bool)

(assert (=> d!1591960 (=> (not res!2109655) (not e!3088899))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10133 (List!57048) (InoxSet C!27168))

(assert (=> d!1591960 (= res!2109655 (= (content!10133 lt!2037913) ((_ map or) (content!10133 testedP!110) (content!10133 testedSuffix!70))))))

(declare-fun e!3088898 () List!57048)

(assert (=> d!1591960 (= lt!2037913 e!3088898)))

(declare-fun c!843505 () Bool)

(assert (=> d!1591960 (= c!843505 ((_ is Nil!56924) testedP!110))))

(assert (=> d!1591960 (= (++!12444 testedP!110 testedSuffix!70) lt!2037913)))

(declare-fun b!4943937 () Bool)

(assert (=> b!4943937 (= e!3088898 (Cons!56924 (h!63372 testedP!110) (++!12444 (t!367584 testedP!110) testedSuffix!70)))))

(declare-fun b!4943936 () Bool)

(assert (=> b!4943936 (= e!3088898 testedSuffix!70)))

(assert (= (and d!1591960 c!843505) b!4943936))

(assert (= (and d!1591960 (not c!843505)) b!4943937))

(assert (= (and d!1591960 res!2109655) b!4943938))

(assert (= (and b!4943938 res!2109656) b!4943939))

(declare-fun m!5966982 () Bool)

(assert (=> b!4943938 m!5966982))

(assert (=> b!4943938 m!5966900))

(declare-fun m!5966984 () Bool)

(assert (=> b!4943938 m!5966984))

(declare-fun m!5966986 () Bool)

(assert (=> d!1591960 m!5966986))

(declare-fun m!5966988 () Bool)

(assert (=> d!1591960 m!5966988))

(declare-fun m!5966990 () Bool)

(assert (=> d!1591960 m!5966990))

(declare-fun m!5966992 () Bool)

(assert (=> b!4943937 m!5966992))

(assert (=> start!520280 d!1591960))

(declare-fun d!1591966 () Bool)

(declare-fun isBalanced!4138 (Conc!14978) Bool)

(assert (=> d!1591966 (= (inv!74077 totalInput!685) (isBalanced!4138 (c!843493 totalInput!685)))))

(declare-fun bs!1181521 () Bool)

(assert (= bs!1181521 d!1591966))

(declare-fun m!5966998 () Bool)

(assert (=> bs!1181521 m!5966998))

(assert (=> start!520280 d!1591966))

(declare-fun d!1591970 () Bool)

(declare-fun lt!2037919 () Int)

(assert (=> d!1591970 (= lt!2037919 (size!37746 (list!18123 totalInput!685)))))

(declare-fun size!37748 (Conc!14978) Int)

(assert (=> d!1591970 (= lt!2037919 (size!37748 (c!843493 totalInput!685)))))

(assert (=> d!1591970 (= (size!37745 totalInput!685) lt!2037919)))

(declare-fun bs!1181522 () Bool)

(assert (= bs!1181522 d!1591970))

(assert (=> bs!1181522 m!5966902))

(assert (=> bs!1181522 m!5966902))

(declare-fun m!5967000 () Bool)

(assert (=> bs!1181522 m!5967000))

(declare-fun m!5967002 () Bool)

(assert (=> bs!1181522 m!5967002))

(assert (=> b!4943867 d!1591970))

(declare-fun d!1591972 () Bool)

(declare-fun c!843514 () Bool)

(assert (=> d!1591972 (= c!843514 ((_ is Node!14978) (c!843493 totalInput!685)))))

(declare-fun e!3088914 () Bool)

(assert (=> d!1591972 (= (inv!74078 (c!843493 totalInput!685)) e!3088914)))

(declare-fun b!4943963 () Bool)

(declare-fun inv!74081 (Conc!14978) Bool)

(assert (=> b!4943963 (= e!3088914 (inv!74081 (c!843493 totalInput!685)))))

(declare-fun b!4943964 () Bool)

(declare-fun e!3088915 () Bool)

(assert (=> b!4943964 (= e!3088914 e!3088915)))

(declare-fun res!2109664 () Bool)

(assert (=> b!4943964 (= res!2109664 (not ((_ is Leaf!24900) (c!843493 totalInput!685))))))

(assert (=> b!4943964 (=> res!2109664 e!3088915)))

(declare-fun b!4943965 () Bool)

(declare-fun inv!74082 (Conc!14978) Bool)

(assert (=> b!4943965 (= e!3088915 (inv!74082 (c!843493 totalInput!685)))))

(assert (= (and d!1591972 c!843514) b!4943963))

(assert (= (and d!1591972 (not c!843514)) b!4943964))

(assert (= (and b!4943964 (not res!2109664)) b!4943965))

(declare-fun m!5967018 () Bool)

(assert (=> b!4943963 m!5967018))

(declare-fun m!5967020 () Bool)

(assert (=> b!4943965 m!5967020))

(assert (=> b!4943871 d!1591972))

(declare-fun b!4943968 () Bool)

(declare-fun res!2109666 () Bool)

(declare-fun e!3088917 () Bool)

(assert (=> b!4943968 (=> (not res!2109666) (not e!3088917))))

(declare-fun lt!2037923 () List!57048)

(assert (=> b!4943968 (= res!2109666 (= (size!37746 lt!2037923) (+ (size!37746 testedP!110) (size!37746 (getSuffix!3047 lt!2037887 testedP!110)))))))

(declare-fun b!4943969 () Bool)

(assert (=> b!4943969 (= e!3088917 (or (not (= (getSuffix!3047 lt!2037887 testedP!110) Nil!56924)) (= lt!2037923 testedP!110)))))

(declare-fun d!1591978 () Bool)

(assert (=> d!1591978 e!3088917))

(declare-fun res!2109665 () Bool)

(assert (=> d!1591978 (=> (not res!2109665) (not e!3088917))))

(assert (=> d!1591978 (= res!2109665 (= (content!10133 lt!2037923) ((_ map or) (content!10133 testedP!110) (content!10133 (getSuffix!3047 lt!2037887 testedP!110)))))))

(declare-fun e!3088916 () List!57048)

(assert (=> d!1591978 (= lt!2037923 e!3088916)))

(declare-fun c!843515 () Bool)

(assert (=> d!1591978 (= c!843515 ((_ is Nil!56924) testedP!110))))

(assert (=> d!1591978 (= (++!12444 testedP!110 (getSuffix!3047 lt!2037887 testedP!110)) lt!2037923)))

(declare-fun b!4943967 () Bool)

(assert (=> b!4943967 (= e!3088916 (Cons!56924 (h!63372 testedP!110) (++!12444 (t!367584 testedP!110) (getSuffix!3047 lt!2037887 testedP!110))))))

(declare-fun b!4943966 () Bool)

(assert (=> b!4943966 (= e!3088916 (getSuffix!3047 lt!2037887 testedP!110))))

(assert (= (and d!1591978 c!843515) b!4943966))

(assert (= (and d!1591978 (not c!843515)) b!4943967))

(assert (= (and d!1591978 res!2109665) b!4943968))

(assert (= (and b!4943968 res!2109666) b!4943969))

(declare-fun m!5967022 () Bool)

(assert (=> b!4943968 m!5967022))

(assert (=> b!4943968 m!5966900))

(assert (=> b!4943968 m!5966896))

(declare-fun m!5967024 () Bool)

(assert (=> b!4943968 m!5967024))

(declare-fun m!5967026 () Bool)

(assert (=> d!1591978 m!5967026))

(assert (=> d!1591978 m!5966988))

(assert (=> d!1591978 m!5966896))

(declare-fun m!5967028 () Bool)

(assert (=> d!1591978 m!5967028))

(assert (=> b!4943967 m!5966896))

(declare-fun m!5967030 () Bool)

(assert (=> b!4943967 m!5967030))

(assert (=> b!4943870 d!1591978))

(declare-fun d!1591980 () Bool)

(declare-fun lt!2037927 () List!57048)

(assert (=> d!1591980 (= (++!12444 testedP!110 lt!2037927) lt!2037887)))

(declare-fun e!3088931 () List!57048)

(assert (=> d!1591980 (= lt!2037927 e!3088931)))

(declare-fun c!843519 () Bool)

(assert (=> d!1591980 (= c!843519 ((_ is Cons!56924) testedP!110))))

(assert (=> d!1591980 (>= (size!37746 lt!2037887) (size!37746 testedP!110))))

(assert (=> d!1591980 (= (getSuffix!3047 lt!2037887 testedP!110) lt!2037927)))

(declare-fun b!4943993 () Bool)

(assert (=> b!4943993 (= e!3088931 (getSuffix!3047 (tail!9730 lt!2037887) (t!367584 testedP!110)))))

(declare-fun b!4943994 () Bool)

(assert (=> b!4943994 (= e!3088931 lt!2037887)))

(assert (= (and d!1591980 c!843519) b!4943993))

(assert (= (and d!1591980 (not c!843519)) b!4943994))

(declare-fun m!5967042 () Bool)

(assert (=> d!1591980 m!5967042))

(assert (=> d!1591980 m!5966920))

(assert (=> d!1591980 m!5966900))

(assert (=> b!4943993 m!5966924))

(assert (=> b!4943993 m!5966924))

(declare-fun m!5967044 () Bool)

(assert (=> b!4943993 m!5967044))

(assert (=> b!4943870 d!1591980))

(declare-fun b!4943999 () Bool)

(declare-fun e!3088934 () Bool)

(declare-fun tp!1386807 () Bool)

(assert (=> b!4943999 (= e!3088934 (and tp_is_empty!36115 tp!1386807))))

(assert (=> b!4943866 (= tp!1386791 e!3088934)))

(assert (= (and b!4943866 ((_ is Cons!56924) (t!367584 testedP!110))) b!4943999))

(declare-fun tp!1386815 () Bool)

(declare-fun e!3088939 () Bool)

(declare-fun tp!1386816 () Bool)

(declare-fun b!4944008 () Bool)

(assert (=> b!4944008 (= e!3088939 (and (inv!74078 (left!41533 (c!843493 totalInput!685))) tp!1386815 (inv!74078 (right!41863 (c!843493 totalInput!685))) tp!1386816))))

(declare-fun b!4944010 () Bool)

(declare-fun e!3088940 () Bool)

(declare-fun tp!1386814 () Bool)

(assert (=> b!4944010 (= e!3088940 tp!1386814)))

(declare-fun b!4944009 () Bool)

(declare-fun inv!74084 (IArray!30017) Bool)

(assert (=> b!4944009 (= e!3088939 (and (inv!74084 (xs!18304 (c!843493 totalInput!685))) e!3088940))))

(assert (=> b!4943871 (= tp!1386790 (and (inv!74078 (c!843493 totalInput!685)) e!3088939))))

(assert (= (and b!4943871 ((_ is Node!14978) (c!843493 totalInput!685))) b!4944008))

(assert (= b!4944009 b!4944010))

(assert (= (and b!4943871 ((_ is Leaf!24900) (c!843493 totalInput!685))) b!4944009))

(declare-fun m!5967046 () Bool)

(assert (=> b!4944008 m!5967046))

(declare-fun m!5967048 () Bool)

(assert (=> b!4944008 m!5967048))

(declare-fun m!5967050 () Bool)

(assert (=> b!4944009 m!5967050))

(assert (=> b!4943871 m!5966908))

(declare-fun b!4944011 () Bool)

(declare-fun e!3088941 () Bool)

(declare-fun tp!1386817 () Bool)

(assert (=> b!4944011 (= e!3088941 (and tp_is_empty!36115 tp!1386817))))

(assert (=> b!4943865 (= tp!1386789 e!3088941)))

(assert (= (and b!4943865 ((_ is Cons!56924) (t!367584 testedSuffix!70))) b!4944011))

(check-sat (not b!4943891) (not d!1591958) (not d!1591970) (not b!4944009) (not b!4943965) (not b!4943993) (not b!4943911) (not d!1591960) (not b!4943887) (not b!4943963) (not d!1591980) (not d!1591978) (not b!4943892) (not b!4943968) tp_is_empty!36115 (not b!4944011) (not b!4943938) (not b!4943888) (not b!4943871) (not b!4943889) (not b!4944010) (not d!1591950) (not b!4943937) (not d!1591966) (not b!4943967) (not b!4943893) (not b!4944008) (not b!4943999))
(check-sat)
