; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46166 () Bool)

(assert start!46166)

(declare-fun b!510964 () Bool)

(declare-fun res!216868 () Bool)

(declare-fun e!305216 () Bool)

(assert (=> b!510964 (=> (not res!216868) (not e!305216))))

(declare-datatypes ((B!1021 0))(
  ( (B!1022 (val!1652 Int)) )
))
(declare-datatypes ((List!4625 0))(
  ( (Nil!4615) (Cons!4615 (h!10012 B!1021) (t!73143 List!4625)) )
))
(declare-fun p!1985 () List!4625)

(declare-fun lt!211863 () List!4625)

(declare-fun size!3721 (List!4625) Int)

(assert (=> b!510964 (= res!216868 (< (size!3721 (t!73143 p!1985)) (size!3721 lt!211863)))))

(declare-fun b!510965 () Bool)

(declare-fun res!216870 () Bool)

(declare-fun e!305218 () Bool)

(assert (=> b!510965 (=> (not res!216870) (not e!305218))))

(declare-fun l!3306 () List!4625)

(declare-fun isPrefix!547 (List!4625 List!4625) Bool)

(assert (=> b!510965 (= res!216870 (isPrefix!547 p!1985 l!3306))))

(declare-fun res!216865 () Bool)

(assert (=> start!46166 (=> (not res!216865) (not e!305218))))

(declare-fun isEmpty!3569 (List!4625) Bool)

(assert (=> start!46166 (= res!216865 (not (isEmpty!3569 l!3306)))))

(assert (=> start!46166 e!305218))

(declare-fun e!305217 () Bool)

(assert (=> start!46166 e!305217))

(declare-fun e!305215 () Bool)

(assert (=> start!46166 e!305215))

(declare-fun b!510966 () Bool)

(declare-fun tp_is_empty!2407 () Bool)

(declare-fun tp!158907 () Bool)

(assert (=> b!510966 (= e!305217 (and tp_is_empty!2407 tp!158907))))

(declare-fun b!510967 () Bool)

(declare-fun ListPrimitiveSize!44 (List!4625) Int)

(assert (=> b!510967 (= e!305216 (>= (ListPrimitiveSize!44 (t!73143 p!1985)) (ListPrimitiveSize!44 p!1985)))))

(declare-fun b!510968 () Bool)

(declare-fun res!216869 () Bool)

(assert (=> b!510968 (=> (not res!216869) (not e!305218))))

(get-info :version)

(assert (=> b!510968 (= res!216869 ((_ is Cons!4615) p!1985))))

(declare-fun b!510969 () Bool)

(declare-fun tp!158906 () Bool)

(assert (=> b!510969 (= e!305215 (and tp_is_empty!2407 tp!158906))))

(declare-fun b!510970 () Bool)

(declare-fun res!216866 () Bool)

(assert (=> b!510970 (=> (not res!216866) (not e!305216))))

(assert (=> b!510970 (= res!216866 (isPrefix!547 (t!73143 p!1985) lt!211863))))

(declare-fun b!510971 () Bool)

(assert (=> b!510971 (= e!305218 e!305216)))

(declare-fun res!216867 () Bool)

(assert (=> b!510971 (=> (not res!216867) (not e!305216))))

(assert (=> b!510971 (= res!216867 (not (isEmpty!3569 lt!211863)))))

(declare-fun tail!682 (List!4625) List!4625)

(assert (=> b!510971 (= lt!211863 (tail!682 l!3306))))

(declare-fun b!510972 () Bool)

(declare-fun res!216871 () Bool)

(assert (=> b!510972 (=> (not res!216871) (not e!305218))))

(assert (=> b!510972 (= res!216871 (< (size!3721 p!1985) (size!3721 l!3306)))))

(assert (= (and start!46166 res!216865) b!510965))

(assert (= (and b!510965 res!216870) b!510972))

(assert (= (and b!510972 res!216871) b!510968))

(assert (= (and b!510968 res!216869) b!510971))

(assert (= (and b!510971 res!216867) b!510970))

(assert (= (and b!510970 res!216866) b!510964))

(assert (= (and b!510964 res!216868) b!510967))

(assert (= (and start!46166 ((_ is Cons!4615) l!3306)) b!510966))

(assert (= (and start!46166 ((_ is Cons!4615) p!1985)) b!510969))

(declare-fun m!757717 () Bool)

(assert (=> b!510967 m!757717))

(declare-fun m!757719 () Bool)

(assert (=> b!510967 m!757719))

(declare-fun m!757721 () Bool)

(assert (=> b!510970 m!757721))

(declare-fun m!757723 () Bool)

(assert (=> start!46166 m!757723))

(declare-fun m!757725 () Bool)

(assert (=> b!510965 m!757725))

(declare-fun m!757727 () Bool)

(assert (=> b!510971 m!757727))

(declare-fun m!757729 () Bool)

(assert (=> b!510971 m!757729))

(declare-fun m!757731 () Bool)

(assert (=> b!510972 m!757731))

(declare-fun m!757733 () Bool)

(assert (=> b!510972 m!757733))

(declare-fun m!757735 () Bool)

(assert (=> b!510964 m!757735))

(declare-fun m!757737 () Bool)

(assert (=> b!510964 m!757737))

(check-sat (not b!510969) (not b!510972) tp_is_empty!2407 (not b!510964) (not b!510971) (not b!510966) (not start!46166) (not b!510970) (not b!510967) (not b!510965))
(check-sat)
(get-model)

(declare-fun d!183663 () Bool)

(declare-fun lt!211866 () Int)

(assert (=> d!183663 (>= lt!211866 0)))

(declare-fun e!305221 () Int)

(assert (=> d!183663 (= lt!211866 e!305221)))

(declare-fun c!99364 () Bool)

(assert (=> d!183663 (= c!99364 ((_ is Nil!4615) (t!73143 p!1985)))))

(assert (=> d!183663 (= (ListPrimitiveSize!44 (t!73143 p!1985)) lt!211866)))

(declare-fun b!510977 () Bool)

(assert (=> b!510977 (= e!305221 0)))

(declare-fun b!510978 () Bool)

(assert (=> b!510978 (= e!305221 (+ 1 (ListPrimitiveSize!44 (t!73143 (t!73143 p!1985)))))))

(assert (= (and d!183663 c!99364) b!510977))

(assert (= (and d!183663 (not c!99364)) b!510978))

(declare-fun m!757739 () Bool)

(assert (=> b!510978 m!757739))

(assert (=> b!510967 d!183663))

(declare-fun d!183665 () Bool)

(declare-fun lt!211867 () Int)

(assert (=> d!183665 (>= lt!211867 0)))

(declare-fun e!305222 () Int)

(assert (=> d!183665 (= lt!211867 e!305222)))

(declare-fun c!99365 () Bool)

(assert (=> d!183665 (= c!99365 ((_ is Nil!4615) p!1985))))

(assert (=> d!183665 (= (ListPrimitiveSize!44 p!1985) lt!211867)))

(declare-fun b!510979 () Bool)

(assert (=> b!510979 (= e!305222 0)))

(declare-fun b!510980 () Bool)

(assert (=> b!510980 (= e!305222 (+ 1 (ListPrimitiveSize!44 (t!73143 p!1985))))))

(assert (= (and d!183665 c!99365) b!510979))

(assert (= (and d!183665 (not c!99365)) b!510980))

(assert (=> b!510980 m!757717))

(assert (=> b!510967 d!183665))

(declare-fun d!183669 () Bool)

(declare-fun lt!211870 () Int)

(assert (=> d!183669 (>= lt!211870 0)))

(declare-fun e!305225 () Int)

(assert (=> d!183669 (= lt!211870 e!305225)))

(declare-fun c!99368 () Bool)

(assert (=> d!183669 (= c!99368 ((_ is Nil!4615) p!1985))))

(assert (=> d!183669 (= (size!3721 p!1985) lt!211870)))

(declare-fun b!510985 () Bool)

(assert (=> b!510985 (= e!305225 0)))

(declare-fun b!510986 () Bool)

(assert (=> b!510986 (= e!305225 (+ 1 (size!3721 (t!73143 p!1985))))))

(assert (= (and d!183669 c!99368) b!510985))

(assert (= (and d!183669 (not c!99368)) b!510986))

(assert (=> b!510986 m!757735))

(assert (=> b!510972 d!183669))

(declare-fun d!183675 () Bool)

(declare-fun lt!211871 () Int)

(assert (=> d!183675 (>= lt!211871 0)))

(declare-fun e!305226 () Int)

(assert (=> d!183675 (= lt!211871 e!305226)))

(declare-fun c!99369 () Bool)

(assert (=> d!183675 (= c!99369 ((_ is Nil!4615) l!3306))))

(assert (=> d!183675 (= (size!3721 l!3306) lt!211871)))

(declare-fun b!510987 () Bool)

(assert (=> b!510987 (= e!305226 0)))

(declare-fun b!510988 () Bool)

(assert (=> b!510988 (= e!305226 (+ 1 (size!3721 (t!73143 l!3306))))))

(assert (= (and d!183675 c!99369) b!510987))

(assert (= (and d!183675 (not c!99369)) b!510988))

(declare-fun m!757741 () Bool)

(assert (=> b!510988 m!757741))

(assert (=> b!510972 d!183675))

(declare-fun d!183677 () Bool)

(assert (=> d!183677 (= (isEmpty!3569 lt!211863) ((_ is Nil!4615) lt!211863))))

(assert (=> b!510971 d!183677))

(declare-fun d!183679 () Bool)

(assert (=> d!183679 (= (tail!682 l!3306) (t!73143 l!3306))))

(assert (=> b!510971 d!183679))

(declare-fun d!183681 () Bool)

(declare-fun lt!211872 () Int)

(assert (=> d!183681 (>= lt!211872 0)))

(declare-fun e!305227 () Int)

(assert (=> d!183681 (= lt!211872 e!305227)))

(declare-fun c!99370 () Bool)

(assert (=> d!183681 (= c!99370 ((_ is Nil!4615) (t!73143 p!1985)))))

(assert (=> d!183681 (= (size!3721 (t!73143 p!1985)) lt!211872)))

(declare-fun b!510989 () Bool)

(assert (=> b!510989 (= e!305227 0)))

(declare-fun b!510990 () Bool)

(assert (=> b!510990 (= e!305227 (+ 1 (size!3721 (t!73143 (t!73143 p!1985)))))))

(assert (= (and d!183681 c!99370) b!510989))

(assert (= (and d!183681 (not c!99370)) b!510990))

(declare-fun m!757743 () Bool)

(assert (=> b!510990 m!757743))

(assert (=> b!510964 d!183681))

(declare-fun d!183683 () Bool)

(declare-fun lt!211873 () Int)

(assert (=> d!183683 (>= lt!211873 0)))

(declare-fun e!305228 () Int)

(assert (=> d!183683 (= lt!211873 e!305228)))

(declare-fun c!99371 () Bool)

(assert (=> d!183683 (= c!99371 ((_ is Nil!4615) lt!211863))))

(assert (=> d!183683 (= (size!3721 lt!211863) lt!211873)))

(declare-fun b!510991 () Bool)

(assert (=> b!510991 (= e!305228 0)))

(declare-fun b!510992 () Bool)

(assert (=> b!510992 (= e!305228 (+ 1 (size!3721 (t!73143 lt!211863))))))

(assert (= (and d!183683 c!99371) b!510991))

(assert (= (and d!183683 (not c!99371)) b!510992))

(declare-fun m!757745 () Bool)

(assert (=> b!510992 m!757745))

(assert (=> b!510964 d!183683))

(declare-fun b!511017 () Bool)

(declare-fun e!305247 () Bool)

(declare-fun e!305248 () Bool)

(assert (=> b!511017 (= e!305247 e!305248)))

(declare-fun res!216895 () Bool)

(assert (=> b!511017 (=> (not res!216895) (not e!305248))))

(assert (=> b!511017 (= res!216895 (not ((_ is Nil!4615) l!3306)))))

(declare-fun b!511020 () Bool)

(declare-fun e!305246 () Bool)

(assert (=> b!511020 (= e!305246 (>= (size!3721 l!3306) (size!3721 p!1985)))))

(declare-fun b!511018 () Bool)

(declare-fun res!216892 () Bool)

(assert (=> b!511018 (=> (not res!216892) (not e!305248))))

(declare-fun head!1158 (List!4625) B!1021)

(assert (=> b!511018 (= res!216892 (= (head!1158 p!1985) (head!1158 l!3306)))))

(declare-fun d!183685 () Bool)

(assert (=> d!183685 e!305246))

(declare-fun res!216894 () Bool)

(assert (=> d!183685 (=> res!216894 e!305246)))

(declare-fun lt!211881 () Bool)

(assert (=> d!183685 (= res!216894 (not lt!211881))))

(assert (=> d!183685 (= lt!211881 e!305247)))

(declare-fun res!216893 () Bool)

(assert (=> d!183685 (=> res!216893 e!305247)))

(assert (=> d!183685 (= res!216893 ((_ is Nil!4615) p!1985))))

(assert (=> d!183685 (= (isPrefix!547 p!1985 l!3306) lt!211881)))

(declare-fun b!511019 () Bool)

(assert (=> b!511019 (= e!305248 (isPrefix!547 (tail!682 p!1985) (tail!682 l!3306)))))

(assert (= (and d!183685 (not res!216893)) b!511017))

(assert (= (and b!511017 res!216895) b!511018))

(assert (= (and b!511018 res!216892) b!511019))

(assert (= (and d!183685 (not res!216894)) b!511020))

(assert (=> b!511020 m!757733))

(assert (=> b!511020 m!757731))

(declare-fun m!757759 () Bool)

(assert (=> b!511018 m!757759))

(declare-fun m!757761 () Bool)

(assert (=> b!511018 m!757761))

(declare-fun m!757763 () Bool)

(assert (=> b!511019 m!757763))

(assert (=> b!511019 m!757729))

(assert (=> b!511019 m!757763))

(assert (=> b!511019 m!757729))

(declare-fun m!757765 () Bool)

(assert (=> b!511019 m!757765))

(assert (=> b!510965 d!183685))

(declare-fun d!183693 () Bool)

(assert (=> d!183693 (= (isEmpty!3569 l!3306) ((_ is Nil!4615) l!3306))))

(assert (=> start!46166 d!183693))

(declare-fun b!511025 () Bool)

(declare-fun e!305252 () Bool)

(declare-fun e!305253 () Bool)

(assert (=> b!511025 (= e!305252 e!305253)))

(declare-fun res!216899 () Bool)

(assert (=> b!511025 (=> (not res!216899) (not e!305253))))

(assert (=> b!511025 (= res!216899 (not ((_ is Nil!4615) lt!211863)))))

(declare-fun b!511028 () Bool)

(declare-fun e!305251 () Bool)

(assert (=> b!511028 (= e!305251 (>= (size!3721 lt!211863) (size!3721 (t!73143 p!1985))))))

(declare-fun b!511026 () Bool)

(declare-fun res!216896 () Bool)

(assert (=> b!511026 (=> (not res!216896) (not e!305253))))

(assert (=> b!511026 (= res!216896 (= (head!1158 (t!73143 p!1985)) (head!1158 lt!211863)))))

(declare-fun d!183697 () Bool)

(assert (=> d!183697 e!305251))

(declare-fun res!216898 () Bool)

(assert (=> d!183697 (=> res!216898 e!305251)))

(declare-fun lt!211884 () Bool)

(assert (=> d!183697 (= res!216898 (not lt!211884))))

(assert (=> d!183697 (= lt!211884 e!305252)))

(declare-fun res!216897 () Bool)

(assert (=> d!183697 (=> res!216897 e!305252)))

(assert (=> d!183697 (= res!216897 ((_ is Nil!4615) (t!73143 p!1985)))))

(assert (=> d!183697 (= (isPrefix!547 (t!73143 p!1985) lt!211863) lt!211884)))

(declare-fun b!511027 () Bool)

(assert (=> b!511027 (= e!305253 (isPrefix!547 (tail!682 (t!73143 p!1985)) (tail!682 lt!211863)))))

(assert (= (and d!183697 (not res!216897)) b!511025))

(assert (= (and b!511025 res!216899) b!511026))

(assert (= (and b!511026 res!216896) b!511027))

(assert (= (and d!183697 (not res!216898)) b!511028))

(assert (=> b!511028 m!757737))

(assert (=> b!511028 m!757735))

(declare-fun m!757767 () Bool)

(assert (=> b!511026 m!757767))

(declare-fun m!757769 () Bool)

(assert (=> b!511026 m!757769))

(declare-fun m!757771 () Bool)

(assert (=> b!511027 m!757771))

(declare-fun m!757773 () Bool)

(assert (=> b!511027 m!757773))

(assert (=> b!511027 m!757771))

(assert (=> b!511027 m!757773))

(declare-fun m!757775 () Bool)

(assert (=> b!511027 m!757775))

(assert (=> b!510970 d!183697))

(declare-fun b!511037 () Bool)

(declare-fun e!305258 () Bool)

(declare-fun tp!158910 () Bool)

(assert (=> b!511037 (= e!305258 (and tp_is_empty!2407 tp!158910))))

(assert (=> b!510969 (= tp!158906 e!305258)))

(assert (= (and b!510969 ((_ is Cons!4615) (t!73143 p!1985))) b!511037))

(declare-fun b!511038 () Bool)

(declare-fun e!305259 () Bool)

(declare-fun tp!158911 () Bool)

(assert (=> b!511038 (= e!305259 (and tp_is_empty!2407 tp!158911))))

(assert (=> b!510966 (= tp!158907 e!305259)))

(assert (= (and b!510966 ((_ is Cons!4615) (t!73143 l!3306))) b!511038))

(check-sat (not b!510990) (not b!510992) (not b!511028) tp_is_empty!2407 (not b!511038) (not b!511026) (not b!510978) (not b!510988) (not b!511018) (not b!511037) (not b!510980) (not b!511019) (not b!511027) (not b!510986) (not b!511020))
(check-sat)
