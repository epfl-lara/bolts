; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!251504 () Bool)

(assert start!251504)

(declare-fun res!1091126 () Bool)

(declare-fun e!1636512 () Bool)

(assert (=> start!251504 (=> (not res!1091126) (not e!1636512))))

(declare-datatypes ((B!2105 0))(
  ( (B!2106 (val!9520 Int)) )
))
(declare-datatypes ((List!29953 0))(
  ( (Nil!29853) (Cons!29853 (h!35273 B!2105) (t!212966 List!29953)) )
))
(declare-fun l!3230 () List!29953)

(declare-fun noDuplicate!401 (List!29953) Bool)

(assert (=> start!251504 (= res!1091126 (noDuplicate!401 l!3230))))

(assert (=> start!251504 e!1636512))

(declare-fun e!1636513 () Bool)

(assert (=> start!251504 e!1636513))

(declare-fun b!2593821 () Bool)

(declare-fun res!1091127 () Bool)

(assert (=> b!2593821 (=> (not res!1091127) (not e!1636512))))

(get-info :version)

(assert (=> b!2593821 (= res!1091127 (not ((_ is Cons!29853) l!3230)))))

(declare-fun b!2593822 () Bool)

(declare-fun size!23160 (List!29953) Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun toList!1798 ((InoxSet B!2105)) List!29953)

(declare-fun content!4188 (List!29953) (InoxSet B!2105))

(assert (=> b!2593822 (= e!1636512 (not (= (size!23160 (toList!1798 (content!4188 l!3230))) (size!23160 l!3230))))))

(declare-fun b!2593823 () Bool)

(declare-fun tp_is_empty!13385 () Bool)

(declare-fun tp!822884 () Bool)

(assert (=> b!2593823 (= e!1636513 (and tp_is_empty!13385 tp!822884))))

(assert (= (and start!251504 res!1091126) b!2593821))

(assert (= (and b!2593821 res!1091127) b!2593822))

(assert (= (and start!251504 ((_ is Cons!29853) l!3230)) b!2593823))

(declare-fun m!2929967 () Bool)

(assert (=> start!251504 m!2929967))

(declare-fun m!2929969 () Bool)

(assert (=> b!2593822 m!2929969))

(assert (=> b!2593822 m!2929969))

(declare-fun m!2929971 () Bool)

(assert (=> b!2593822 m!2929971))

(assert (=> b!2593822 m!2929971))

(declare-fun m!2929973 () Bool)

(assert (=> b!2593822 m!2929973))

(declare-fun m!2929975 () Bool)

(assert (=> b!2593822 m!2929975))

(check-sat (not b!2593822) (not start!251504) (not b!2593823) tp_is_empty!13385)
(check-sat)
(get-model)

(declare-fun d!734838 () Bool)

(declare-fun lt!913142 () Int)

(assert (=> d!734838 (>= lt!913142 0)))

(declare-fun e!1636516 () Int)

(assert (=> d!734838 (= lt!913142 e!1636516)))

(declare-fun c!418105 () Bool)

(assert (=> d!734838 (= c!418105 ((_ is Nil!29853) (toList!1798 (content!4188 l!3230))))))

(assert (=> d!734838 (= (size!23160 (toList!1798 (content!4188 l!3230))) lt!913142)))

(declare-fun b!2593828 () Bool)

(assert (=> b!2593828 (= e!1636516 0)))

(declare-fun b!2593829 () Bool)

(assert (=> b!2593829 (= e!1636516 (+ 1 (size!23160 (t!212966 (toList!1798 (content!4188 l!3230))))))))

(assert (= (and d!734838 c!418105) b!2593828))

(assert (= (and d!734838 (not c!418105)) b!2593829))

(declare-fun m!2929977 () Bool)

(assert (=> b!2593829 m!2929977))

(assert (=> b!2593822 d!734838))

(declare-fun d!734842 () Bool)

(declare-fun e!1636522 () Bool)

(assert (=> d!734842 e!1636522))

(declare-fun res!1091130 () Bool)

(assert (=> d!734842 (=> (not res!1091130) (not e!1636522))))

(declare-fun lt!913148 () List!29953)

(assert (=> d!734842 (= res!1091130 (noDuplicate!401 lt!913148))))

(declare-fun choose!15370 ((InoxSet B!2105)) List!29953)

(assert (=> d!734842 (= lt!913148 (choose!15370 (content!4188 l!3230)))))

(assert (=> d!734842 (= (toList!1798 (content!4188 l!3230)) lt!913148)))

(declare-fun b!2593838 () Bool)

(assert (=> b!2593838 (= e!1636522 (= (content!4188 lt!913148) (content!4188 l!3230)))))

(assert (= (and d!734842 res!1091130) b!2593838))

(declare-fun m!2929981 () Bool)

(assert (=> d!734842 m!2929981))

(assert (=> d!734842 m!2929969))

(declare-fun m!2929983 () Bool)

(assert (=> d!734842 m!2929983))

(declare-fun m!2929985 () Bool)

(assert (=> b!2593838 m!2929985))

(assert (=> b!2593822 d!734842))

(declare-fun d!734846 () Bool)

(declare-fun c!418111 () Bool)

(assert (=> d!734846 (= c!418111 ((_ is Nil!29853) l!3230))))

(declare-fun e!1636528 () (InoxSet B!2105))

(assert (=> d!734846 (= (content!4188 l!3230) e!1636528)))

(declare-fun b!2593846 () Bool)

(assert (=> b!2593846 (= e!1636528 ((as const (Array B!2105 Bool)) false))))

(declare-fun b!2593847 () Bool)

(assert (=> b!2593847 (= e!1636528 ((_ map or) (store ((as const (Array B!2105 Bool)) false) (h!35273 l!3230) true) (content!4188 (t!212966 l!3230))))))

(assert (= (and d!734846 c!418111) b!2593846))

(assert (= (and d!734846 (not c!418111)) b!2593847))

(declare-fun m!2929993 () Bool)

(assert (=> b!2593847 m!2929993))

(declare-fun m!2929995 () Bool)

(assert (=> b!2593847 m!2929995))

(assert (=> b!2593822 d!734846))

(declare-fun d!734850 () Bool)

(declare-fun lt!913152 () Int)

(assert (=> d!734850 (>= lt!913152 0)))

(declare-fun e!1636531 () Int)

(assert (=> d!734850 (= lt!913152 e!1636531)))

(declare-fun c!418114 () Bool)

(assert (=> d!734850 (= c!418114 ((_ is Nil!29853) l!3230))))

(assert (=> d!734850 (= (size!23160 l!3230) lt!913152)))

(declare-fun b!2593852 () Bool)

(assert (=> b!2593852 (= e!1636531 0)))

(declare-fun b!2593853 () Bool)

(assert (=> b!2593853 (= e!1636531 (+ 1 (size!23160 (t!212966 l!3230))))))

(assert (= (and d!734850 c!418114) b!2593852))

(assert (= (and d!734850 (not c!418114)) b!2593853))

(declare-fun m!2929997 () Bool)

(assert (=> b!2593853 m!2929997))

(assert (=> b!2593822 d!734850))

(declare-fun d!734852 () Bool)

(declare-fun res!1091142 () Bool)

(declare-fun e!1636542 () Bool)

(assert (=> d!734852 (=> res!1091142 e!1636542)))

(assert (=> d!734852 (= res!1091142 ((_ is Nil!29853) l!3230))))

(assert (=> d!734852 (= (noDuplicate!401 l!3230) e!1636542)))

(declare-fun b!2593866 () Bool)

(declare-fun e!1636543 () Bool)

(assert (=> b!2593866 (= e!1636542 e!1636543)))

(declare-fun res!1091143 () Bool)

(assert (=> b!2593866 (=> (not res!1091143) (not e!1636543))))

(declare-fun contains!5402 (List!29953 B!2105) Bool)

(assert (=> b!2593866 (= res!1091143 (not (contains!5402 (t!212966 l!3230) (h!35273 l!3230))))))

(declare-fun b!2593867 () Bool)

(assert (=> b!2593867 (= e!1636543 (noDuplicate!401 (t!212966 l!3230)))))

(assert (= (and d!734852 (not res!1091142)) b!2593866))

(assert (= (and b!2593866 res!1091143) b!2593867))

(declare-fun m!2930005 () Bool)

(assert (=> b!2593866 m!2930005))

(declare-fun m!2930007 () Bool)

(assert (=> b!2593867 m!2930007))

(assert (=> start!251504 d!734852))

(declare-fun b!2593872 () Bool)

(declare-fun e!1636546 () Bool)

(declare-fun tp!822887 () Bool)

(assert (=> b!2593872 (= e!1636546 (and tp_is_empty!13385 tp!822887))))

(assert (=> b!2593823 (= tp!822884 e!1636546)))

(assert (= (and b!2593823 ((_ is Cons!29853) (t!212966 l!3230))) b!2593872))

(check-sat (not b!2593866) (not d!734842) tp_is_empty!13385 (not b!2593847) (not b!2593867) (not b!2593872) (not b!2593853) (not b!2593838) (not b!2593829))
(check-sat)
(get-model)

(declare-fun d!734858 () Bool)

(declare-fun res!1091146 () Bool)

(declare-fun e!1636552 () Bool)

(assert (=> d!734858 (=> res!1091146 e!1636552)))

(assert (=> d!734858 (= res!1091146 ((_ is Nil!29853) lt!913148))))

(assert (=> d!734858 (= (noDuplicate!401 lt!913148) e!1636552)))

(declare-fun b!2593880 () Bool)

(declare-fun e!1636553 () Bool)

(assert (=> b!2593880 (= e!1636552 e!1636553)))

(declare-fun res!1091147 () Bool)

(assert (=> b!2593880 (=> (not res!1091147) (not e!1636553))))

(assert (=> b!2593880 (= res!1091147 (not (contains!5402 (t!212966 lt!913148) (h!35273 lt!913148))))))

(declare-fun b!2593881 () Bool)

(assert (=> b!2593881 (= e!1636553 (noDuplicate!401 (t!212966 lt!913148)))))

(assert (= (and d!734858 (not res!1091146)) b!2593880))

(assert (= (and b!2593880 res!1091147) b!2593881))

(declare-fun m!2930013 () Bool)

(assert (=> b!2593880 m!2930013))

(declare-fun m!2930015 () Bool)

(assert (=> b!2593881 m!2930015))

(assert (=> d!734842 d!734858))

(declare-fun d!734860 () Bool)

(declare-fun e!1636558 () Bool)

(assert (=> d!734860 e!1636558))

(declare-fun res!1091153 () Bool)

(assert (=> d!734860 (=> (not res!1091153) (not e!1636558))))

(declare-fun res!1091152 () List!29953)

(assert (=> d!734860 (= res!1091153 (noDuplicate!401 res!1091152))))

(declare-fun e!1636559 () Bool)

(assert (=> d!734860 e!1636559))

(assert (=> d!734860 (= (choose!15370 (content!4188 l!3230)) res!1091152)))

(declare-fun b!2593886 () Bool)

(declare-fun tp!822893 () Bool)

(assert (=> b!2593886 (= e!1636559 (and tp_is_empty!13385 tp!822893))))

(declare-fun b!2593887 () Bool)

(assert (=> b!2593887 (= e!1636558 (= (content!4188 res!1091152) (content!4188 l!3230)))))

(assert (= (and d!734860 ((_ is Cons!29853) res!1091152)) b!2593886))

(assert (= (and d!734860 res!1091153) b!2593887))

(declare-fun m!2930017 () Bool)

(assert (=> d!734860 m!2930017))

(declare-fun m!2930019 () Bool)

(assert (=> b!2593887 m!2930019))

(assert (=> d!734842 d!734860))

(declare-fun d!734862 () Bool)

(declare-fun res!1091154 () Bool)

(declare-fun e!1636560 () Bool)

(assert (=> d!734862 (=> res!1091154 e!1636560)))

(assert (=> d!734862 (= res!1091154 ((_ is Nil!29853) (t!212966 l!3230)))))

(assert (=> d!734862 (= (noDuplicate!401 (t!212966 l!3230)) e!1636560)))

(declare-fun b!2593888 () Bool)

(declare-fun e!1636561 () Bool)

(assert (=> b!2593888 (= e!1636560 e!1636561)))

(declare-fun res!1091155 () Bool)

(assert (=> b!2593888 (=> (not res!1091155) (not e!1636561))))

(assert (=> b!2593888 (= res!1091155 (not (contains!5402 (t!212966 (t!212966 l!3230)) (h!35273 (t!212966 l!3230)))))))

(declare-fun b!2593889 () Bool)

(assert (=> b!2593889 (= e!1636561 (noDuplicate!401 (t!212966 (t!212966 l!3230))))))

(assert (= (and d!734862 (not res!1091154)) b!2593888))

(assert (= (and b!2593888 res!1091155) b!2593889))

(declare-fun m!2930021 () Bool)

(assert (=> b!2593888 m!2930021))

(declare-fun m!2930023 () Bool)

(assert (=> b!2593889 m!2930023))

(assert (=> b!2593867 d!734862))

(declare-fun d!734864 () Bool)

(declare-fun lt!913154 () Int)

(assert (=> d!734864 (>= lt!913154 0)))

(declare-fun e!1636562 () Int)

(assert (=> d!734864 (= lt!913154 e!1636562)))

(declare-fun c!418117 () Bool)

(assert (=> d!734864 (= c!418117 ((_ is Nil!29853) (t!212966 l!3230)))))

(assert (=> d!734864 (= (size!23160 (t!212966 l!3230)) lt!913154)))

(declare-fun b!2593890 () Bool)

(assert (=> b!2593890 (= e!1636562 0)))

(declare-fun b!2593891 () Bool)

(assert (=> b!2593891 (= e!1636562 (+ 1 (size!23160 (t!212966 (t!212966 l!3230)))))))

(assert (= (and d!734864 c!418117) b!2593890))

(assert (= (and d!734864 (not c!418117)) b!2593891))

(declare-fun m!2930025 () Bool)

(assert (=> b!2593891 m!2930025))

(assert (=> b!2593853 d!734864))

(declare-fun d!734866 () Bool)

(declare-fun c!418118 () Bool)

(assert (=> d!734866 (= c!418118 ((_ is Nil!29853) (t!212966 l!3230)))))

(declare-fun e!1636563 () (InoxSet B!2105))

(assert (=> d!734866 (= (content!4188 (t!212966 l!3230)) e!1636563)))

(declare-fun b!2593892 () Bool)

(assert (=> b!2593892 (= e!1636563 ((as const (Array B!2105 Bool)) false))))

(declare-fun b!2593893 () Bool)

(assert (=> b!2593893 (= e!1636563 ((_ map or) (store ((as const (Array B!2105 Bool)) false) (h!35273 (t!212966 l!3230)) true) (content!4188 (t!212966 (t!212966 l!3230)))))))

(assert (= (and d!734866 c!418118) b!2593892))

(assert (= (and d!734866 (not c!418118)) b!2593893))

(declare-fun m!2930027 () Bool)

(assert (=> b!2593893 m!2930027))

(declare-fun m!2930029 () Bool)

(assert (=> b!2593893 m!2930029))

(assert (=> b!2593847 d!734866))

(declare-fun d!734868 () Bool)

(declare-fun lt!913157 () Bool)

(assert (=> d!734868 (= lt!913157 (select (content!4188 (t!212966 l!3230)) (h!35273 l!3230)))))

(declare-fun e!1636569 () Bool)

(assert (=> d!734868 (= lt!913157 e!1636569)))

(declare-fun res!1091160 () Bool)

(assert (=> d!734868 (=> (not res!1091160) (not e!1636569))))

(assert (=> d!734868 (= res!1091160 ((_ is Cons!29853) (t!212966 l!3230)))))

(assert (=> d!734868 (= (contains!5402 (t!212966 l!3230) (h!35273 l!3230)) lt!913157)))

(declare-fun b!2593898 () Bool)

(declare-fun e!1636568 () Bool)

(assert (=> b!2593898 (= e!1636569 e!1636568)))

(declare-fun res!1091161 () Bool)

(assert (=> b!2593898 (=> res!1091161 e!1636568)))

(assert (=> b!2593898 (= res!1091161 (= (h!35273 (t!212966 l!3230)) (h!35273 l!3230)))))

(declare-fun b!2593899 () Bool)

(assert (=> b!2593899 (= e!1636568 (contains!5402 (t!212966 (t!212966 l!3230)) (h!35273 l!3230)))))

(assert (= (and d!734868 res!1091160) b!2593898))

(assert (= (and b!2593898 (not res!1091161)) b!2593899))

(assert (=> d!734868 m!2929995))

(declare-fun m!2930031 () Bool)

(assert (=> d!734868 m!2930031))

(declare-fun m!2930033 () Bool)

(assert (=> b!2593899 m!2930033))

(assert (=> b!2593866 d!734868))

(declare-fun d!734870 () Bool)

(declare-fun c!418119 () Bool)

(assert (=> d!734870 (= c!418119 ((_ is Nil!29853) lt!913148))))

(declare-fun e!1636570 () (InoxSet B!2105))

(assert (=> d!734870 (= (content!4188 lt!913148) e!1636570)))

(declare-fun b!2593900 () Bool)

(assert (=> b!2593900 (= e!1636570 ((as const (Array B!2105 Bool)) false))))

(declare-fun b!2593901 () Bool)

(assert (=> b!2593901 (= e!1636570 ((_ map or) (store ((as const (Array B!2105 Bool)) false) (h!35273 lt!913148) true) (content!4188 (t!212966 lt!913148))))))

(assert (= (and d!734870 c!418119) b!2593900))

(assert (= (and d!734870 (not c!418119)) b!2593901))

(declare-fun m!2930035 () Bool)

(assert (=> b!2593901 m!2930035))

(declare-fun m!2930037 () Bool)

(assert (=> b!2593901 m!2930037))

(assert (=> b!2593838 d!734870))

(declare-fun d!734872 () Bool)

(declare-fun lt!913158 () Int)

(assert (=> d!734872 (>= lt!913158 0)))

(declare-fun e!1636571 () Int)

(assert (=> d!734872 (= lt!913158 e!1636571)))

(declare-fun c!418120 () Bool)

(assert (=> d!734872 (= c!418120 ((_ is Nil!29853) (t!212966 (toList!1798 (content!4188 l!3230)))))))

(assert (=> d!734872 (= (size!23160 (t!212966 (toList!1798 (content!4188 l!3230)))) lt!913158)))

(declare-fun b!2593902 () Bool)

(assert (=> b!2593902 (= e!1636571 0)))

(declare-fun b!2593903 () Bool)

(assert (=> b!2593903 (= e!1636571 (+ 1 (size!23160 (t!212966 (t!212966 (toList!1798 (content!4188 l!3230)))))))))

(assert (= (and d!734872 c!418120) b!2593902))

(assert (= (and d!734872 (not c!418120)) b!2593903))

(declare-fun m!2930039 () Bool)

(assert (=> b!2593903 m!2930039))

(assert (=> b!2593829 d!734872))

(declare-fun b!2593904 () Bool)

(declare-fun e!1636572 () Bool)

(declare-fun tp!822894 () Bool)

(assert (=> b!2593904 (= e!1636572 (and tp_is_empty!13385 tp!822894))))

(assert (=> b!2593872 (= tp!822887 e!1636572)))

(assert (= (and b!2593872 ((_ is Cons!29853) (t!212966 (t!212966 l!3230)))) b!2593904))

(check-sat (not d!734868) (not d!734860) (not b!2593881) (not b!2593891) (not b!2593904) (not b!2593903) (not b!2593888) (not b!2593901) (not b!2593899) (not b!2593886) (not b!2593893) (not b!2593880) tp_is_empty!13385 (not b!2593889) (not b!2593887))
(check-sat)
