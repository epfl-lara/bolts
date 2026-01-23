; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!407694 () Bool)

(assert start!407694)

(declare-fun b_free!126657 () Bool)

(declare-fun b_next!127361 () Bool)

(assert (=> start!407694 (= b_free!126657 (not b_next!127361))))

(declare-fun tp!1306123 () Bool)

(declare-fun b_and!337495 () Bool)

(assert (=> start!407694 (= tp!1306123 b_and!337495)))

(declare-fun b!4255809 () Bool)

(declare-fun e!2643408 () Bool)

(declare-fun e!2643410 () Bool)

(assert (=> b!4255809 (= e!2643408 e!2643410)))

(declare-fun res!1749475 () Bool)

(assert (=> b!4255809 (=> (not res!1749475) (not e!2643410))))

(declare-datatypes ((T!79280 0))(
  ( (T!79281 (val!15199 Int)) )
))
(declare-datatypes ((List!47328 0))(
  ( (Nil!47204) (Cons!47204 (h!52624 T!79280) (t!352887 List!47328)) )
))
(declare-fun lt!1509783 () List!47328)

(declare-fun lt!1509781 () List!47328)

(declare-fun f!428 () Int)

(declare-datatypes ((B!2789 0))(
  ( (B!2790 (val!15200 Int)) )
))
(declare-datatypes ((List!47329 0))(
  ( (Nil!47205) (Cons!47205 (h!52625 B!2789) (t!352888 List!47329)) )
))
(declare-fun map!9632 (List!47328 Int) List!47329)

(declare-fun ++!12005 (List!47328 List!47328) List!47328)

(declare-fun ++!12006 (List!47329 List!47329) List!47329)

(assert (=> b!4255809 (= res!1749475 (= (map!9632 (++!12005 lt!1509783 lt!1509781) f!428) (++!12006 (map!9632 lt!1509783 f!428) (map!9632 lt!1509781 f!428))))))

(declare-datatypes ((Unit!66119 0))(
  ( (Unit!66120) )
))
(declare-fun lt!1509782 () Unit!66119)

(declare-fun lemmaMapConcat!22 (List!47328 List!47328 Int) Unit!66119)

(assert (=> b!4255809 (= lt!1509782 (lemmaMapConcat!22 lt!1509783 lt!1509781 f!428))))

(declare-datatypes ((IArray!28433 0))(
  ( (IArray!28434 (innerList!14274 List!47328)) )
))
(declare-datatypes ((Conc!14214 0))(
  ( (Node!14214 (left!34981 Conc!14214) (right!35311 Conc!14214) (csize!28658 Int) (cheight!14425 Int)) (Leaf!21974 (xs!17520 IArray!28433) (csize!28659 Int)) (Empty!14214) )
))
(declare-fun t!4386 () Conc!14214)

(declare-fun list!17009 (Conc!14214) List!47328)

(assert (=> b!4255809 (= lt!1509781 (list!17009 (right!35311 t!4386)))))

(assert (=> b!4255809 (= lt!1509783 (list!17009 (left!34981 t!4386)))))

(declare-fun b!4255811 () Bool)

(declare-fun e!2643409 () Bool)

(declare-fun e!2643407 () Bool)

(declare-fun inv!62014 (IArray!28433) Bool)

(assert (=> b!4255811 (= e!2643409 (and (inv!62014 (xs!17520 t!4386)) e!2643407))))

(declare-fun b!4255812 () Bool)

(declare-fun res!1749477 () Bool)

(assert (=> b!4255812 (=> (not res!1749477) (not e!2643408))))

(get-info :version)

(assert (=> b!4255812 (= res!1749477 (and (not ((_ is Empty!14214) t!4386)) (not ((_ is Leaf!21974) t!4386))))))

(declare-fun b!4255813 () Bool)

(declare-fun tp!1306122 () Bool)

(declare-fun tp!1306121 () Bool)

(declare-fun inv!62015 (Conc!14214) Bool)

(assert (=> b!4255813 (= e!2643409 (and (inv!62015 (left!34981 t!4386)) tp!1306121 (inv!62015 (right!35311 t!4386)) tp!1306122))))

(declare-fun b!4255814 () Bool)

(declare-fun tp!1306124 () Bool)

(assert (=> b!4255814 (= e!2643407 tp!1306124)))

(declare-fun res!1749476 () Bool)

(assert (=> start!407694 (=> (not res!1749476) (not e!2643408))))

(declare-fun isBalanced!3776 (Conc!14214) Bool)

(assert (=> start!407694 (= res!1749476 (isBalanced!3776 t!4386))))

(assert (=> start!407694 e!2643408))

(assert (=> start!407694 (and (inv!62015 t!4386) e!2643409)))

(assert (=> start!407694 tp!1306123))

(declare-fun b!4255810 () Bool)

(assert (=> b!4255810 (= e!2643410 (not (isBalanced!3776 (right!35311 t!4386))))))

(declare-datatypes ((IArray!28435 0))(
  ( (IArray!28436 (innerList!14275 List!47329)) )
))
(declare-datatypes ((Conc!14215 0))(
  ( (Node!14215 (left!34982 Conc!14215) (right!35312 Conc!14215) (csize!28660 Int) (cheight!14426 Int)) (Leaf!21975 (xs!17521 IArray!28435) (csize!28661 Int)) (Empty!14215) )
))
(declare-fun lt!1509784 () Conc!14215)

(declare-fun map!9633 (Conc!14214 Int) Conc!14215)

(assert (=> b!4255810 (= lt!1509784 (map!9633 (left!34981 t!4386) f!428))))

(assert (= (and start!407694 res!1749476) b!4255812))

(assert (= (and b!4255812 res!1749477) b!4255809))

(assert (= (and b!4255809 res!1749475) b!4255810))

(assert (= (and start!407694 ((_ is Node!14214) t!4386)) b!4255813))

(assert (= b!4255811 b!4255814))

(assert (= (and start!407694 ((_ is Leaf!21974) t!4386)) b!4255811))

(declare-fun m!4840941 () Bool)

(assert (=> b!4255811 m!4840941))

(declare-fun m!4840943 () Bool)

(assert (=> start!407694 m!4840943))

(declare-fun m!4840945 () Bool)

(assert (=> start!407694 m!4840945))

(declare-fun m!4840947 () Bool)

(assert (=> b!4255809 m!4840947))

(declare-fun m!4840949 () Bool)

(assert (=> b!4255809 m!4840949))

(assert (=> b!4255809 m!4840949))

(declare-fun m!4840951 () Bool)

(assert (=> b!4255809 m!4840951))

(declare-fun m!4840953 () Bool)

(assert (=> b!4255809 m!4840953))

(declare-fun m!4840955 () Bool)

(assert (=> b!4255809 m!4840955))

(assert (=> b!4255809 m!4840951))

(declare-fun m!4840957 () Bool)

(assert (=> b!4255809 m!4840957))

(declare-fun m!4840959 () Bool)

(assert (=> b!4255809 m!4840959))

(assert (=> b!4255809 m!4840959))

(declare-fun m!4840961 () Bool)

(assert (=> b!4255809 m!4840961))

(declare-fun m!4840963 () Bool)

(assert (=> b!4255813 m!4840963))

(declare-fun m!4840965 () Bool)

(assert (=> b!4255813 m!4840965))

(declare-fun m!4840967 () Bool)

(assert (=> b!4255810 m!4840967))

(declare-fun m!4840969 () Bool)

(assert (=> b!4255810 m!4840969))

(check-sat (not b!4255809) b_and!337495 (not b!4255811) (not b!4255814) (not b_next!127361) (not b!4255810) (not b!4255813) (not start!407694))
(check-sat b_and!337495 (not b_next!127361))
(get-model)

(declare-fun d!1251472 () Bool)

(declare-fun c!722578 () Bool)

(assert (=> d!1251472 (= c!722578 ((_ is Empty!14214) (left!34981 t!4386)))))

(declare-fun e!2643415 () List!47328)

(assert (=> d!1251472 (= (list!17009 (left!34981 t!4386)) e!2643415)))

(declare-fun b!4255823 () Bool)

(assert (=> b!4255823 (= e!2643415 Nil!47204)))

(declare-fun b!4255826 () Bool)

(declare-fun e!2643416 () List!47328)

(assert (=> b!4255826 (= e!2643416 (++!12005 (list!17009 (left!34981 (left!34981 t!4386))) (list!17009 (right!35311 (left!34981 t!4386)))))))

(declare-fun b!4255824 () Bool)

(assert (=> b!4255824 (= e!2643415 e!2643416)))

(declare-fun c!722579 () Bool)

(assert (=> b!4255824 (= c!722579 ((_ is Leaf!21974) (left!34981 t!4386)))))

(declare-fun b!4255825 () Bool)

(declare-fun list!17010 (IArray!28433) List!47328)

(assert (=> b!4255825 (= e!2643416 (list!17010 (xs!17520 (left!34981 t!4386))))))

(assert (= (and d!1251472 c!722578) b!4255823))

(assert (= (and d!1251472 (not c!722578)) b!4255824))

(assert (= (and b!4255824 c!722579) b!4255825))

(assert (= (and b!4255824 (not c!722579)) b!4255826))

(declare-fun m!4840971 () Bool)

(assert (=> b!4255826 m!4840971))

(declare-fun m!4840973 () Bool)

(assert (=> b!4255826 m!4840973))

(assert (=> b!4255826 m!4840971))

(assert (=> b!4255826 m!4840973))

(declare-fun m!4840975 () Bool)

(assert (=> b!4255826 m!4840975))

(declare-fun m!4840977 () Bool)

(assert (=> b!4255825 m!4840977))

(assert (=> b!4255809 d!1251472))

(declare-fun d!1251476 () Bool)

(declare-fun lt!1509787 () List!47329)

(declare-fun size!34547 (List!47329) Int)

(declare-fun size!34548 (List!47328) Int)

(assert (=> d!1251476 (= (size!34547 lt!1509787) (size!34548 lt!1509783))))

(declare-fun e!2643423 () List!47329)

(assert (=> d!1251476 (= lt!1509787 e!2643423)))

(declare-fun c!722582 () Bool)

(assert (=> d!1251476 (= c!722582 ((_ is Nil!47204) lt!1509783))))

(assert (=> d!1251476 (= (map!9632 lt!1509783 f!428) lt!1509787)))

(declare-fun b!4255843 () Bool)

(assert (=> b!4255843 (= e!2643423 Nil!47205)))

(declare-fun b!4255844 () Bool)

(declare-fun $colon$colon!616 (List!47329 B!2789) List!47329)

(declare-fun dynLambda!20204 (Int T!79280) B!2789)

(assert (=> b!4255844 (= e!2643423 ($colon$colon!616 (map!9632 (t!352887 lt!1509783) f!428) (dynLambda!20204 f!428 (h!52624 lt!1509783))))))

(assert (= (and d!1251476 c!722582) b!4255843))

(assert (= (and d!1251476 (not c!722582)) b!4255844))

(declare-fun b_lambda!125363 () Bool)

(assert (=> (not b_lambda!125363) (not b!4255844)))

(declare-fun t!352892 () Bool)

(declare-fun tb!256719 () Bool)

(assert (=> (and start!407694 (= f!428 f!428) t!352892) tb!256719))

(declare-fun result!313168 () Bool)

(declare-fun tp_is_empty!22807 () Bool)

(assert (=> tb!256719 (= result!313168 tp_is_empty!22807)))

(assert (=> b!4255844 t!352892))

(declare-fun b_and!337497 () Bool)

(assert (= b_and!337495 (and (=> t!352892 result!313168) b_and!337497)))

(declare-fun m!4840979 () Bool)

(assert (=> d!1251476 m!4840979))

(declare-fun m!4840981 () Bool)

(assert (=> d!1251476 m!4840981))

(declare-fun m!4840983 () Bool)

(assert (=> b!4255844 m!4840983))

(declare-fun m!4840985 () Bool)

(assert (=> b!4255844 m!4840985))

(assert (=> b!4255844 m!4840983))

(assert (=> b!4255844 m!4840985))

(declare-fun m!4840987 () Bool)

(assert (=> b!4255844 m!4840987))

(assert (=> b!4255809 d!1251476))

(declare-fun d!1251478 () Bool)

(declare-fun c!722583 () Bool)

(assert (=> d!1251478 (= c!722583 ((_ is Empty!14214) (right!35311 t!4386)))))

(declare-fun e!2643424 () List!47328)

(assert (=> d!1251478 (= (list!17009 (right!35311 t!4386)) e!2643424)))

(declare-fun b!4255847 () Bool)

(assert (=> b!4255847 (= e!2643424 Nil!47204)))

(declare-fun b!4255850 () Bool)

(declare-fun e!2643425 () List!47328)

(assert (=> b!4255850 (= e!2643425 (++!12005 (list!17009 (left!34981 (right!35311 t!4386))) (list!17009 (right!35311 (right!35311 t!4386)))))))

(declare-fun b!4255848 () Bool)

(assert (=> b!4255848 (= e!2643424 e!2643425)))

(declare-fun c!722584 () Bool)

(assert (=> b!4255848 (= c!722584 ((_ is Leaf!21974) (right!35311 t!4386)))))

(declare-fun b!4255849 () Bool)

(assert (=> b!4255849 (= e!2643425 (list!17010 (xs!17520 (right!35311 t!4386))))))

(assert (= (and d!1251478 c!722583) b!4255847))

(assert (= (and d!1251478 (not c!722583)) b!4255848))

(assert (= (and b!4255848 c!722584) b!4255849))

(assert (= (and b!4255848 (not c!722584)) b!4255850))

(declare-fun m!4840989 () Bool)

(assert (=> b!4255850 m!4840989))

(declare-fun m!4840991 () Bool)

(assert (=> b!4255850 m!4840991))

(assert (=> b!4255850 m!4840989))

(assert (=> b!4255850 m!4840991))

(declare-fun m!4840993 () Bool)

(assert (=> b!4255850 m!4840993))

(declare-fun m!4840995 () Bool)

(assert (=> b!4255849 m!4840995))

(assert (=> b!4255809 d!1251478))

(declare-fun d!1251480 () Bool)

(assert (=> d!1251480 (= (map!9632 (++!12005 lt!1509783 lt!1509781) f!428) (++!12006 (map!9632 lt!1509783 f!428) (map!9632 lt!1509781 f!428)))))

(declare-fun lt!1509790 () Unit!66119)

(declare-fun choose!25969 (List!47328 List!47328 Int) Unit!66119)

(assert (=> d!1251480 (= lt!1509790 (choose!25969 lt!1509783 lt!1509781 f!428))))

(assert (=> d!1251480 (= (lemmaMapConcat!22 lt!1509783 lt!1509781 f!428) lt!1509790)))

(declare-fun bs!598812 () Bool)

(assert (= bs!598812 d!1251480))

(declare-fun m!4841009 () Bool)

(assert (=> bs!598812 m!4841009))

(assert (=> bs!598812 m!4840951))

(assert (=> bs!598812 m!4840959))

(assert (=> bs!598812 m!4840961))

(assert (=> bs!598812 m!4840949))

(assert (=> bs!598812 m!4840951))

(assert (=> bs!598812 m!4840953))

(assert (=> bs!598812 m!4840959))

(assert (=> bs!598812 m!4840949))

(assert (=> b!4255809 d!1251480))

(declare-fun d!1251484 () Bool)

(declare-fun lt!1509791 () List!47329)

(assert (=> d!1251484 (= (size!34547 lt!1509791) (size!34548 lt!1509781))))

(declare-fun e!2643428 () List!47329)

(assert (=> d!1251484 (= lt!1509791 e!2643428)))

(declare-fun c!722585 () Bool)

(assert (=> d!1251484 (= c!722585 ((_ is Nil!47204) lt!1509781))))

(assert (=> d!1251484 (= (map!9632 lt!1509781 f!428) lt!1509791)))

(declare-fun b!4255857 () Bool)

(assert (=> b!4255857 (= e!2643428 Nil!47205)))

(declare-fun b!4255858 () Bool)

(assert (=> b!4255858 (= e!2643428 ($colon$colon!616 (map!9632 (t!352887 lt!1509781) f!428) (dynLambda!20204 f!428 (h!52624 lt!1509781))))))

(assert (= (and d!1251484 c!722585) b!4255857))

(assert (= (and d!1251484 (not c!722585)) b!4255858))

(declare-fun b_lambda!125365 () Bool)

(assert (=> (not b_lambda!125365) (not b!4255858)))

(declare-fun t!352894 () Bool)

(declare-fun tb!256721 () Bool)

(assert (=> (and start!407694 (= f!428 f!428) t!352894) tb!256721))

(declare-fun result!313172 () Bool)

(assert (=> tb!256721 (= result!313172 tp_is_empty!22807)))

(assert (=> b!4255858 t!352894))

(declare-fun b_and!337499 () Bool)

(assert (= b_and!337497 (and (=> t!352894 result!313172) b_and!337499)))

(declare-fun m!4841011 () Bool)

(assert (=> d!1251484 m!4841011))

(declare-fun m!4841013 () Bool)

(assert (=> d!1251484 m!4841013))

(declare-fun m!4841015 () Bool)

(assert (=> b!4255858 m!4841015))

(declare-fun m!4841017 () Bool)

(assert (=> b!4255858 m!4841017))

(assert (=> b!4255858 m!4841015))

(assert (=> b!4255858 m!4841017))

(declare-fun m!4841019 () Bool)

(assert (=> b!4255858 m!4841019))

(assert (=> b!4255809 d!1251484))

(declare-fun e!2643440 () List!47329)

(declare-fun b!4255878 () Bool)

(assert (=> b!4255878 (= e!2643440 (Cons!47205 (h!52625 (map!9632 lt!1509783 f!428)) (++!12006 (t!352888 (map!9632 lt!1509783 f!428)) (map!9632 lt!1509781 f!428))))))

(declare-fun lt!1509798 () List!47329)

(declare-fun b!4255880 () Bool)

(declare-fun e!2643439 () Bool)

(assert (=> b!4255880 (= e!2643439 (or (not (= (map!9632 lt!1509781 f!428) Nil!47205)) (= lt!1509798 (map!9632 lt!1509783 f!428))))))

(declare-fun d!1251486 () Bool)

(assert (=> d!1251486 e!2643439))

(declare-fun res!1749502 () Bool)

(assert (=> d!1251486 (=> (not res!1749502) (not e!2643439))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7421 (List!47329) (InoxSet B!2789))

(assert (=> d!1251486 (= res!1749502 (= (content!7421 lt!1509798) ((_ map or) (content!7421 (map!9632 lt!1509783 f!428)) (content!7421 (map!9632 lt!1509781 f!428)))))))

(assert (=> d!1251486 (= lt!1509798 e!2643440)))

(declare-fun c!722592 () Bool)

(assert (=> d!1251486 (= c!722592 ((_ is Nil!47205) (map!9632 lt!1509783 f!428)))))

(assert (=> d!1251486 (= (++!12006 (map!9632 lt!1509783 f!428) (map!9632 lt!1509781 f!428)) lt!1509798)))

(declare-fun b!4255879 () Bool)

(declare-fun res!1749503 () Bool)

(assert (=> b!4255879 (=> (not res!1749503) (not e!2643439))))

(assert (=> b!4255879 (= res!1749503 (= (size!34547 lt!1509798) (+ (size!34547 (map!9632 lt!1509783 f!428)) (size!34547 (map!9632 lt!1509781 f!428)))))))

(declare-fun b!4255877 () Bool)

(assert (=> b!4255877 (= e!2643440 (map!9632 lt!1509781 f!428))))

(assert (= (and d!1251486 c!722592) b!4255877))

(assert (= (and d!1251486 (not c!722592)) b!4255878))

(assert (= (and d!1251486 res!1749502) b!4255879))

(assert (= (and b!4255879 res!1749503) b!4255880))

(assert (=> b!4255878 m!4840951))

(declare-fun m!4841021 () Bool)

(assert (=> b!4255878 m!4841021))

(declare-fun m!4841023 () Bool)

(assert (=> d!1251486 m!4841023))

(assert (=> d!1251486 m!4840949))

(declare-fun m!4841025 () Bool)

(assert (=> d!1251486 m!4841025))

(assert (=> d!1251486 m!4840951))

(declare-fun m!4841027 () Bool)

(assert (=> d!1251486 m!4841027))

(declare-fun m!4841029 () Bool)

(assert (=> b!4255879 m!4841029))

(assert (=> b!4255879 m!4840949))

(declare-fun m!4841031 () Bool)

(assert (=> b!4255879 m!4841031))

(assert (=> b!4255879 m!4840951))

(declare-fun m!4841033 () Bool)

(assert (=> b!4255879 m!4841033))

(assert (=> b!4255809 d!1251486))

(declare-fun d!1251488 () Bool)

(declare-fun lt!1509801 () List!47329)

(assert (=> d!1251488 (= (size!34547 lt!1509801) (size!34548 (++!12005 lt!1509783 lt!1509781)))))

(declare-fun e!2643444 () List!47329)

(assert (=> d!1251488 (= lt!1509801 e!2643444)))

(declare-fun c!722595 () Bool)

(assert (=> d!1251488 (= c!722595 ((_ is Nil!47204) (++!12005 lt!1509783 lt!1509781)))))

(assert (=> d!1251488 (= (map!9632 (++!12005 lt!1509783 lt!1509781) f!428) lt!1509801)))

(declare-fun b!4255886 () Bool)

(assert (=> b!4255886 (= e!2643444 Nil!47205)))

(declare-fun b!4255887 () Bool)

(assert (=> b!4255887 (= e!2643444 ($colon$colon!616 (map!9632 (t!352887 (++!12005 lt!1509783 lt!1509781)) f!428) (dynLambda!20204 f!428 (h!52624 (++!12005 lt!1509783 lt!1509781)))))))

(assert (= (and d!1251488 c!722595) b!4255886))

(assert (= (and d!1251488 (not c!722595)) b!4255887))

(declare-fun b_lambda!125367 () Bool)

(assert (=> (not b_lambda!125367) (not b!4255887)))

(declare-fun t!352897 () Bool)

(declare-fun tb!256723 () Bool)

(assert (=> (and start!407694 (= f!428 f!428) t!352897) tb!256723))

(declare-fun result!313174 () Bool)

(assert (=> tb!256723 (= result!313174 tp_is_empty!22807)))

(assert (=> b!4255887 t!352897))

(declare-fun b_and!337501 () Bool)

(assert (= b_and!337499 (and (=> t!352897 result!313174) b_and!337501)))

(declare-fun m!4841035 () Bool)

(assert (=> d!1251488 m!4841035))

(assert (=> d!1251488 m!4840959))

(declare-fun m!4841037 () Bool)

(assert (=> d!1251488 m!4841037))

(declare-fun m!4841041 () Bool)

(assert (=> b!4255887 m!4841041))

(declare-fun m!4841043 () Bool)

(assert (=> b!4255887 m!4841043))

(assert (=> b!4255887 m!4841041))

(assert (=> b!4255887 m!4841043))

(declare-fun m!4841051 () Bool)

(assert (=> b!4255887 m!4841051))

(assert (=> b!4255809 d!1251488))

(declare-fun lt!1509804 () List!47328)

(declare-fun b!4255917 () Bool)

(declare-fun e!2643460 () Bool)

(assert (=> b!4255917 (= e!2643460 (or (not (= lt!1509781 Nil!47204)) (= lt!1509804 lt!1509783)))))

(declare-fun b!4255916 () Bool)

(declare-fun res!1749518 () Bool)

(assert (=> b!4255916 (=> (not res!1749518) (not e!2643460))))

(assert (=> b!4255916 (= res!1749518 (= (size!34548 lt!1509804) (+ (size!34548 lt!1509783) (size!34548 lt!1509781))))))

(declare-fun b!4255915 () Bool)

(declare-fun e!2643459 () List!47328)

(assert (=> b!4255915 (= e!2643459 (Cons!47204 (h!52624 lt!1509783) (++!12005 (t!352887 lt!1509783) lt!1509781)))))

(declare-fun d!1251490 () Bool)

(assert (=> d!1251490 e!2643460))

(declare-fun res!1749520 () Bool)

(assert (=> d!1251490 (=> (not res!1749520) (not e!2643460))))

(declare-fun content!7422 (List!47328) (InoxSet T!79280))

(assert (=> d!1251490 (= res!1749520 (= (content!7422 lt!1509804) ((_ map or) (content!7422 lt!1509783) (content!7422 lt!1509781))))))

(assert (=> d!1251490 (= lt!1509804 e!2643459)))

(declare-fun c!722602 () Bool)

(assert (=> d!1251490 (= c!722602 ((_ is Nil!47204) lt!1509783))))

(assert (=> d!1251490 (= (++!12005 lt!1509783 lt!1509781) lt!1509804)))

(declare-fun b!4255914 () Bool)

(assert (=> b!4255914 (= e!2643459 lt!1509781)))

(assert (= (and d!1251490 c!722602) b!4255914))

(assert (= (and d!1251490 (not c!722602)) b!4255915))

(assert (= (and d!1251490 res!1749520) b!4255916))

(assert (= (and b!4255916 res!1749518) b!4255917))

(declare-fun m!4841081 () Bool)

(assert (=> b!4255916 m!4841081))

(assert (=> b!4255916 m!4840981))

(assert (=> b!4255916 m!4841013))

(declare-fun m!4841087 () Bool)

(assert (=> b!4255915 m!4841087))

(declare-fun m!4841089 () Bool)

(assert (=> d!1251490 m!4841089))

(declare-fun m!4841091 () Bool)

(assert (=> d!1251490 m!4841091))

(declare-fun m!4841093 () Bool)

(assert (=> d!1251490 m!4841093))

(assert (=> b!4255809 d!1251490))

(declare-fun d!1251502 () Bool)

(declare-fun res!1749536 () Bool)

(declare-fun e!2643469 () Bool)

(assert (=> d!1251502 (=> res!1749536 e!2643469)))

(assert (=> d!1251502 (= res!1749536 (not ((_ is Node!14214) t!4386)))))

(assert (=> d!1251502 (= (isBalanced!3776 t!4386) e!2643469)))

(declare-fun b!4255937 () Bool)

(declare-fun e!2643470 () Bool)

(declare-fun isEmpty!27941 (Conc!14214) Bool)

(assert (=> b!4255937 (= e!2643470 (not (isEmpty!27941 (right!35311 t!4386))))))

(declare-fun b!4255938 () Bool)

(declare-fun res!1749539 () Bool)

(assert (=> b!4255938 (=> (not res!1749539) (not e!2643470))))

(assert (=> b!4255938 (= res!1749539 (isBalanced!3776 (right!35311 t!4386)))))

(declare-fun b!4255939 () Bool)

(declare-fun res!1749538 () Bool)

(assert (=> b!4255939 (=> (not res!1749538) (not e!2643470))))

(declare-fun height!1842 (Conc!14214) Int)

(assert (=> b!4255939 (= res!1749538 (<= (- (height!1842 (left!34981 t!4386)) (height!1842 (right!35311 t!4386))) 1))))

(declare-fun b!4255940 () Bool)

(declare-fun res!1749534 () Bool)

(assert (=> b!4255940 (=> (not res!1749534) (not e!2643470))))

(assert (=> b!4255940 (= res!1749534 (not (isEmpty!27941 (left!34981 t!4386))))))

(declare-fun b!4255941 () Bool)

(declare-fun res!1749537 () Bool)

(assert (=> b!4255941 (=> (not res!1749537) (not e!2643470))))

(assert (=> b!4255941 (= res!1749537 (isBalanced!3776 (left!34981 t!4386)))))

(declare-fun b!4255942 () Bool)

(assert (=> b!4255942 (= e!2643469 e!2643470)))

(declare-fun res!1749535 () Bool)

(assert (=> b!4255942 (=> (not res!1749535) (not e!2643470))))

(assert (=> b!4255942 (= res!1749535 (<= (- 1) (- (height!1842 (left!34981 t!4386)) (height!1842 (right!35311 t!4386)))))))

(assert (= (and d!1251502 (not res!1749536)) b!4255942))

(assert (= (and b!4255942 res!1749535) b!4255939))

(assert (= (and b!4255939 res!1749538) b!4255941))

(assert (= (and b!4255941 res!1749537) b!4255938))

(assert (= (and b!4255938 res!1749539) b!4255940))

(assert (= (and b!4255940 res!1749534) b!4255937))

(declare-fun m!4841097 () Bool)

(assert (=> b!4255942 m!4841097))

(declare-fun m!4841099 () Bool)

(assert (=> b!4255942 m!4841099))

(declare-fun m!4841101 () Bool)

(assert (=> b!4255941 m!4841101))

(assert (=> b!4255938 m!4840967))

(declare-fun m!4841103 () Bool)

(assert (=> b!4255940 m!4841103))

(assert (=> b!4255939 m!4841097))

(assert (=> b!4255939 m!4841099))

(declare-fun m!4841105 () Bool)

(assert (=> b!4255937 m!4841105))

(assert (=> start!407694 d!1251502))

(declare-fun d!1251506 () Bool)

(declare-fun c!722611 () Bool)

(assert (=> d!1251506 (= c!722611 ((_ is Node!14214) t!4386))))

(declare-fun e!2643480 () Bool)

(assert (=> d!1251506 (= (inv!62015 t!4386) e!2643480)))

(declare-fun b!4255961 () Bool)

(declare-fun inv!62018 (Conc!14214) Bool)

(assert (=> b!4255961 (= e!2643480 (inv!62018 t!4386))))

(declare-fun b!4255962 () Bool)

(declare-fun e!2643481 () Bool)

(assert (=> b!4255962 (= e!2643480 e!2643481)))

(declare-fun res!1749546 () Bool)

(assert (=> b!4255962 (= res!1749546 (not ((_ is Leaf!21974) t!4386)))))

(assert (=> b!4255962 (=> res!1749546 e!2643481)))

(declare-fun b!4255963 () Bool)

(declare-fun inv!62019 (Conc!14214) Bool)

(assert (=> b!4255963 (= e!2643481 (inv!62019 t!4386))))

(assert (= (and d!1251506 c!722611) b!4255961))

(assert (= (and d!1251506 (not c!722611)) b!4255962))

(assert (= (and b!4255962 (not res!1749546)) b!4255963))

(declare-fun m!4841117 () Bool)

(assert (=> b!4255961 m!4841117))

(declare-fun m!4841119 () Bool)

(assert (=> b!4255963 m!4841119))

(assert (=> start!407694 d!1251506))

(declare-fun d!1251510 () Bool)

(declare-fun res!1749549 () Bool)

(declare-fun e!2643482 () Bool)

(assert (=> d!1251510 (=> res!1749549 e!2643482)))

(assert (=> d!1251510 (= res!1749549 (not ((_ is Node!14214) (right!35311 t!4386))))))

(assert (=> d!1251510 (= (isBalanced!3776 (right!35311 t!4386)) e!2643482)))

(declare-fun b!4255964 () Bool)

(declare-fun e!2643483 () Bool)

(assert (=> b!4255964 (= e!2643483 (not (isEmpty!27941 (right!35311 (right!35311 t!4386)))))))

(declare-fun b!4255965 () Bool)

(declare-fun res!1749552 () Bool)

(assert (=> b!4255965 (=> (not res!1749552) (not e!2643483))))

(assert (=> b!4255965 (= res!1749552 (isBalanced!3776 (right!35311 (right!35311 t!4386))))))

(declare-fun b!4255966 () Bool)

(declare-fun res!1749551 () Bool)

(assert (=> b!4255966 (=> (not res!1749551) (not e!2643483))))

(assert (=> b!4255966 (= res!1749551 (<= (- (height!1842 (left!34981 (right!35311 t!4386))) (height!1842 (right!35311 (right!35311 t!4386)))) 1))))

(declare-fun b!4255967 () Bool)

(declare-fun res!1749547 () Bool)

(assert (=> b!4255967 (=> (not res!1749547) (not e!2643483))))

(assert (=> b!4255967 (= res!1749547 (not (isEmpty!27941 (left!34981 (right!35311 t!4386)))))))

(declare-fun b!4255968 () Bool)

(declare-fun res!1749550 () Bool)

(assert (=> b!4255968 (=> (not res!1749550) (not e!2643483))))

(assert (=> b!4255968 (= res!1749550 (isBalanced!3776 (left!34981 (right!35311 t!4386))))))

(declare-fun b!4255969 () Bool)

(assert (=> b!4255969 (= e!2643482 e!2643483)))

(declare-fun res!1749548 () Bool)

(assert (=> b!4255969 (=> (not res!1749548) (not e!2643483))))

(assert (=> b!4255969 (= res!1749548 (<= (- 1) (- (height!1842 (left!34981 (right!35311 t!4386))) (height!1842 (right!35311 (right!35311 t!4386))))))))

(assert (= (and d!1251510 (not res!1749549)) b!4255969))

(assert (= (and b!4255969 res!1749548) b!4255966))

(assert (= (and b!4255966 res!1749551) b!4255968))

(assert (= (and b!4255968 res!1749550) b!4255965))

(assert (= (and b!4255965 res!1749552) b!4255967))

(assert (= (and b!4255967 res!1749547) b!4255964))

(declare-fun m!4841121 () Bool)

(assert (=> b!4255969 m!4841121))

(declare-fun m!4841123 () Bool)

(assert (=> b!4255969 m!4841123))

(declare-fun m!4841125 () Bool)

(assert (=> b!4255968 m!4841125))

(declare-fun m!4841127 () Bool)

(assert (=> b!4255965 m!4841127))

(declare-fun m!4841129 () Bool)

(assert (=> b!4255967 m!4841129))

(assert (=> b!4255966 m!4841121))

(assert (=> b!4255966 m!4841123))

(declare-fun m!4841131 () Bool)

(assert (=> b!4255964 m!4841131))

(assert (=> b!4255810 d!1251510))

(declare-fun b!4256010 () Bool)

(declare-fun e!2643505 () Conc!14215)

(declare-fun e!2643506 () Conc!14215)

(assert (=> b!4256010 (= e!2643505 e!2643506)))

(declare-fun c!722627 () Bool)

(assert (=> b!4256010 (= c!722627 ((_ is Leaf!21974) (left!34981 t!4386)))))

(declare-fun b!4256011 () Bool)

(declare-fun map!9635 (IArray!28433 Int) IArray!28435)

(assert (=> b!4256011 (= e!2643506 (Leaf!21975 (map!9635 (xs!17520 (left!34981 t!4386)) f!428) (csize!28659 (left!34981 t!4386))))))

(declare-fun d!1251512 () Bool)

(declare-fun e!2643507 () Bool)

(assert (=> d!1251512 e!2643507))

(declare-fun res!1749563 () Bool)

(assert (=> d!1251512 (=> (not res!1749563) (not e!2643507))))

(declare-fun lt!1509822 () Conc!14215)

(declare-fun list!17013 (Conc!14215) List!47329)

(assert (=> d!1251512 (= res!1749563 (= (list!17013 lt!1509822) (map!9632 (list!17009 (left!34981 t!4386)) f!428)))))

(assert (=> d!1251512 (= lt!1509822 e!2643505)))

(declare-fun c!722628 () Bool)

(assert (=> d!1251512 (= c!722628 ((_ is Empty!14214) (left!34981 t!4386)))))

(assert (=> d!1251512 (isBalanced!3776 (left!34981 t!4386))))

(assert (=> d!1251512 (= (map!9633 (left!34981 t!4386) f!428) lt!1509822)))

(declare-fun b!4256012 () Bool)

(assert (=> b!4256012 (= e!2643505 Empty!14215)))

(declare-fun b!4256013 () Bool)

(declare-fun isBalanced!3778 (Conc!14215) Bool)

(assert (=> b!4256013 (= e!2643507 (isBalanced!3778 lt!1509822))))

(declare-fun b!4256014 () Bool)

(declare-fun lt!1509823 () Unit!66119)

(assert (=> b!4256014 (= lt!1509823 (lemmaMapConcat!22 (list!17009 (left!34981 (left!34981 t!4386))) (list!17009 (right!35311 (left!34981 t!4386))) f!428))))

(assert (=> b!4256014 (= e!2643506 (Node!14215 (map!9633 (left!34981 (left!34981 t!4386)) f!428) (map!9633 (right!35311 (left!34981 t!4386)) f!428) (csize!28658 (left!34981 t!4386)) (cheight!14425 (left!34981 t!4386))))))

(assert (= (and d!1251512 c!722628) b!4256012))

(assert (= (and d!1251512 (not c!722628)) b!4256010))

(assert (= (and b!4256010 c!722627) b!4256011))

(assert (= (and b!4256010 (not c!722627)) b!4256014))

(assert (= (and d!1251512 res!1749563) b!4256013))

(declare-fun m!4841179 () Bool)

(assert (=> b!4256011 m!4841179))

(declare-fun m!4841185 () Bool)

(assert (=> d!1251512 m!4841185))

(assert (=> d!1251512 m!4840955))

(assert (=> d!1251512 m!4840955))

(declare-fun m!4841187 () Bool)

(assert (=> d!1251512 m!4841187))

(assert (=> d!1251512 m!4841101))

(declare-fun m!4841191 () Bool)

(assert (=> b!4256013 m!4841191))

(assert (=> b!4256014 m!4840971))

(assert (=> b!4256014 m!4840973))

(declare-fun m!4841193 () Bool)

(assert (=> b!4256014 m!4841193))

(assert (=> b!4256014 m!4840973))

(declare-fun m!4841195 () Bool)

(assert (=> b!4256014 m!4841195))

(assert (=> b!4256014 m!4840971))

(declare-fun m!4841197 () Bool)

(assert (=> b!4256014 m!4841197))

(assert (=> b!4255810 d!1251512))

(declare-fun d!1251524 () Bool)

(assert (=> d!1251524 (= (inv!62014 (xs!17520 t!4386)) (<= (size!34548 (innerList!14274 (xs!17520 t!4386))) 2147483647))))

(declare-fun bs!598814 () Bool)

(assert (= bs!598814 d!1251524))

(declare-fun m!4841203 () Bool)

(assert (=> bs!598814 m!4841203))

(assert (=> b!4255811 d!1251524))

(declare-fun d!1251528 () Bool)

(declare-fun c!722632 () Bool)

(assert (=> d!1251528 (= c!722632 ((_ is Node!14214) (left!34981 t!4386)))))

(declare-fun e!2643511 () Bool)

(assert (=> d!1251528 (= (inv!62015 (left!34981 t!4386)) e!2643511)))

(declare-fun b!4256023 () Bool)

(assert (=> b!4256023 (= e!2643511 (inv!62018 (left!34981 t!4386)))))

(declare-fun b!4256024 () Bool)

(declare-fun e!2643512 () Bool)

(assert (=> b!4256024 (= e!2643511 e!2643512)))

(declare-fun res!1749564 () Bool)

(assert (=> b!4256024 (= res!1749564 (not ((_ is Leaf!21974) (left!34981 t!4386))))))

(assert (=> b!4256024 (=> res!1749564 e!2643512)))

(declare-fun b!4256025 () Bool)

(assert (=> b!4256025 (= e!2643512 (inv!62019 (left!34981 t!4386)))))

(assert (= (and d!1251528 c!722632) b!4256023))

(assert (= (and d!1251528 (not c!722632)) b!4256024))

(assert (= (and b!4256024 (not res!1749564)) b!4256025))

(declare-fun m!4841207 () Bool)

(assert (=> b!4256023 m!4841207))

(declare-fun m!4841209 () Bool)

(assert (=> b!4256025 m!4841209))

(assert (=> b!4255813 d!1251528))

(declare-fun d!1251530 () Bool)

(declare-fun c!722633 () Bool)

(assert (=> d!1251530 (= c!722633 ((_ is Node!14214) (right!35311 t!4386)))))

(declare-fun e!2643517 () Bool)

(assert (=> d!1251530 (= (inv!62015 (right!35311 t!4386)) e!2643517)))

(declare-fun b!4256032 () Bool)

(assert (=> b!4256032 (= e!2643517 (inv!62018 (right!35311 t!4386)))))

(declare-fun b!4256033 () Bool)

(declare-fun e!2643518 () Bool)

(assert (=> b!4256033 (= e!2643517 e!2643518)))

(declare-fun res!1749565 () Bool)

(assert (=> b!4256033 (= res!1749565 (not ((_ is Leaf!21974) (right!35311 t!4386))))))

(assert (=> b!4256033 (=> res!1749565 e!2643518)))

(declare-fun b!4256034 () Bool)

(assert (=> b!4256034 (= e!2643518 (inv!62019 (right!35311 t!4386)))))

(assert (= (and d!1251530 c!722633) b!4256032))

(assert (= (and d!1251530 (not c!722633)) b!4256033))

(assert (= (and b!4256033 (not res!1749565)) b!4256034))

(declare-fun m!4841211 () Bool)

(assert (=> b!4256032 m!4841211))

(declare-fun m!4841213 () Bool)

(assert (=> b!4256034 m!4841213))

(assert (=> b!4255813 d!1251530))

(declare-fun b!4256039 () Bool)

(declare-fun e!2643521 () Bool)

(declare-fun tp_is_empty!22811 () Bool)

(declare-fun tp!1306133 () Bool)

(assert (=> b!4256039 (= e!2643521 (and tp_is_empty!22811 tp!1306133))))

(assert (=> b!4255814 (= tp!1306124 e!2643521)))

(assert (= (and b!4255814 ((_ is Cons!47204) (innerList!14274 (xs!17520 t!4386)))) b!4256039))

(declare-fun tp!1306149 () Bool)

(declare-fun b!4256059 () Bool)

(declare-fun tp!1306150 () Bool)

(declare-fun e!2643533 () Bool)

(assert (=> b!4256059 (= e!2643533 (and (inv!62015 (left!34981 (left!34981 t!4386))) tp!1306150 (inv!62015 (right!35311 (left!34981 t!4386))) tp!1306149))))

(declare-fun b!4256061 () Bool)

(declare-fun e!2643534 () Bool)

(declare-fun tp!1306151 () Bool)

(assert (=> b!4256061 (= e!2643534 tp!1306151)))

(declare-fun b!4256060 () Bool)

(assert (=> b!4256060 (= e!2643533 (and (inv!62014 (xs!17520 (left!34981 t!4386))) e!2643534))))

(assert (=> b!4255813 (= tp!1306121 (and (inv!62015 (left!34981 t!4386)) e!2643533))))

(assert (= (and b!4255813 ((_ is Node!14214) (left!34981 t!4386))) b!4256059))

(assert (= b!4256060 b!4256061))

(assert (= (and b!4255813 ((_ is Leaf!21974) (left!34981 t!4386))) b!4256060))

(declare-fun m!4841227 () Bool)

(assert (=> b!4256059 m!4841227))

(declare-fun m!4841229 () Bool)

(assert (=> b!4256059 m!4841229))

(declare-fun m!4841231 () Bool)

(assert (=> b!4256060 m!4841231))

(assert (=> b!4255813 m!4840963))

(declare-fun e!2643535 () Bool)

(declare-fun tp!1306152 () Bool)

(declare-fun b!4256062 () Bool)

(declare-fun tp!1306153 () Bool)

(assert (=> b!4256062 (= e!2643535 (and (inv!62015 (left!34981 (right!35311 t!4386))) tp!1306153 (inv!62015 (right!35311 (right!35311 t!4386))) tp!1306152))))

(declare-fun b!4256064 () Bool)

(declare-fun e!2643536 () Bool)

(declare-fun tp!1306154 () Bool)

(assert (=> b!4256064 (= e!2643536 tp!1306154)))

(declare-fun b!4256063 () Bool)

(assert (=> b!4256063 (= e!2643535 (and (inv!62014 (xs!17520 (right!35311 t!4386))) e!2643536))))

(assert (=> b!4255813 (= tp!1306122 (and (inv!62015 (right!35311 t!4386)) e!2643535))))

(assert (= (and b!4255813 ((_ is Node!14214) (right!35311 t!4386))) b!4256062))

(assert (= b!4256063 b!4256064))

(assert (= (and b!4255813 ((_ is Leaf!21974) (right!35311 t!4386))) b!4256063))

(declare-fun m!4841233 () Bool)

(assert (=> b!4256062 m!4841233))

(declare-fun m!4841235 () Bool)

(assert (=> b!4256062 m!4841235))

(declare-fun m!4841237 () Bool)

(assert (=> b!4256063 m!4841237))

(assert (=> b!4255813 m!4840965))

(declare-fun b_lambda!125381 () Bool)

(assert (= b_lambda!125365 (or (and start!407694 b_free!126657) b_lambda!125381)))

(declare-fun b_lambda!125383 () Bool)

(assert (= b_lambda!125367 (or (and start!407694 b_free!126657) b_lambda!125383)))

(declare-fun b_lambda!125385 () Bool)

(assert (= b_lambda!125363 (or (and start!407694 b_free!126657) b_lambda!125385)))

(check-sat (not b!4255849) (not b!4256013) (not b!4256025) (not b!4255966) (not b!4255939) (not b_next!127361) (not b!4255887) (not b!4256063) (not b!4255844) (not d!1251488) (not d!1251480) (not b!4256061) (not b!4255858) (not b!4255826) (not d!1251512) (not b!4255941) (not b!4256011) (not b!4256064) (not b!4255967) (not b!4255964) (not d!1251484) (not d!1251490) (not b!4255940) (not b!4256023) (not d!1251476) tp_is_empty!22811 b_and!337501 (not d!1251486) (not b!4256039) (not b!4256014) (not d!1251524) (not b!4256032) (not b!4255961) (not b!4255968) (not b!4255878) (not b!4255916) (not b!4256060) (not b!4255915) (not b!4255879) (not b!4255938) (not b_lambda!125383) (not b!4255963) (not b!4255965) (not b!4255825) tp_is_empty!22807 (not b!4255813) (not b_lambda!125385) (not b!4256062) (not b!4256034) (not b!4256059) (not b!4255937) (not b!4255969) (not b_lambda!125381) (not b!4255850) (not b!4255942))
(check-sat b_and!337501 (not b_next!127361))
