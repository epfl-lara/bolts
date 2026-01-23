; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!82548 () Bool)

(assert start!82548)

(declare-fun b!918797 () Bool)

(assert (=> b!918797 true))

(assert (=> b!918797 true))

(declare-fun lambda!29752 () Int)

(declare-fun lambda!29751 () Int)

(assert (=> b!918797 (not (= lambda!29752 lambda!29751))))

(assert (=> b!918797 true))

(assert (=> b!918797 true))

(declare-fun bs!236372 () Bool)

(declare-fun b!918792 () Bool)

(assert (= bs!236372 (and b!918792 b!918797)))

(declare-datatypes ((C!5510 0))(
  ( (C!5511 (val!3003 Int)) )
))
(declare-datatypes ((Regex!2470 0))(
  ( (ElementMatch!2470 (c!148981 C!5510)) (Concat!4303 (regOne!5452 Regex!2470) (regTwo!5452 Regex!2470)) (EmptyExpr!2470) (Star!2470 (reg!2799 Regex!2470)) (EmptyLang!2470) (Union!2470 (regOne!5453 Regex!2470) (regTwo!5453 Regex!2470)) )
))
(declare-fun r!15766 () Regex!2470)

(declare-fun lt!338023 () Regex!2470)

(declare-fun lambda!29753 () Int)

(declare-fun lt!338027 () Regex!2470)

(assert (=> bs!236372 (= (and (= lt!338023 (regOne!5452 r!15766)) (= lt!338027 (regTwo!5452 r!15766))) (= lambda!29753 lambda!29751))))

(assert (=> bs!236372 (not (= lambda!29753 lambda!29752))))

(assert (=> b!918792 true))

(assert (=> b!918792 true))

(assert (=> b!918792 true))

(declare-fun lambda!29754 () Int)

(assert (=> bs!236372 (not (= lambda!29754 lambda!29751))))

(assert (=> bs!236372 (= (and (= lt!338023 (regOne!5452 r!15766)) (= lt!338027 (regTwo!5452 r!15766))) (= lambda!29754 lambda!29752))))

(assert (=> b!918792 (not (= lambda!29754 lambda!29753))))

(assert (=> b!918792 true))

(assert (=> b!918792 true))

(assert (=> b!918792 true))

(declare-fun b!918790 () Bool)

(declare-fun e!598455 () Bool)

(declare-fun tp!286544 () Bool)

(declare-fun tp!286546 () Bool)

(assert (=> b!918790 (= e!598455 (and tp!286544 tp!286546))))

(declare-fun b!918791 () Bool)

(declare-fun e!598459 () Bool)

(declare-fun e!598456 () Bool)

(assert (=> b!918791 (= e!598459 e!598456)))

(declare-fun res!417710 () Bool)

(assert (=> b!918791 (=> res!417710 e!598456)))

(declare-fun lt!338024 () Regex!2470)

(declare-datatypes ((List!9700 0))(
  ( (Nil!9684) (Cons!9684 (h!15085 C!5510) (t!100746 List!9700)) )
))
(declare-fun s!10566 () List!9700)

(declare-fun matchR!1008 (Regex!2470 List!9700) Bool)

(assert (=> b!918791 (= res!417710 (not (matchR!1008 lt!338024 s!10566)))))

(assert (=> b!918791 (= lt!338024 (Concat!4303 lt!338023 lt!338027))))

(declare-fun removeUselessConcat!147 (Regex!2470) Regex!2470)

(assert (=> b!918791 (= lt!338027 (removeUselessConcat!147 (regTwo!5452 r!15766)))))

(assert (=> b!918791 (= lt!338023 (removeUselessConcat!147 (regOne!5452 r!15766)))))

(declare-fun res!417708 () Bool)

(declare-fun e!598457 () Bool)

(assert (=> start!82548 (=> (not res!417708) (not e!598457))))

(declare-fun validRegex!939 (Regex!2470) Bool)

(assert (=> start!82548 (= res!417708 (validRegex!939 r!15766))))

(assert (=> start!82548 e!598457))

(assert (=> start!82548 e!598455))

(declare-fun e!598458 () Bool)

(assert (=> start!82548 e!598458))

(assert (=> b!918792 (= e!598456 (validRegex!939 (regOne!5452 r!15766)))))

(declare-fun Exists!241 (Int) Bool)

(assert (=> b!918792 (= (Exists!241 lambda!29753) (Exists!241 lambda!29754))))

(declare-datatypes ((Unit!14559 0))(
  ( (Unit!14560) )
))
(declare-fun lt!338025 () Unit!14559)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!153 (Regex!2470 Regex!2470 List!9700) Unit!14559)

(assert (=> b!918792 (= lt!338025 (lemmaExistCutMatchRandMatchRSpecEquivalent!153 lt!338023 lt!338027 s!10566))))

(declare-datatypes ((tuple2!10926 0))(
  ( (tuple2!10927 (_1!6289 List!9700) (_2!6289 List!9700)) )
))
(declare-datatypes ((Option!2105 0))(
  ( (None!2104) (Some!2104 (v!19521 tuple2!10926)) )
))
(declare-fun isDefined!1747 (Option!2105) Bool)

(declare-fun findConcatSeparation!211 (Regex!2470 Regex!2470 List!9700 List!9700 List!9700) Option!2105)

(assert (=> b!918792 (= (isDefined!1747 (findConcatSeparation!211 lt!338023 lt!338027 Nil!9684 s!10566 s!10566)) (Exists!241 lambda!29753))))

(declare-fun lt!338026 () Unit!14559)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!211 (Regex!2470 Regex!2470 List!9700) Unit!14559)

(assert (=> b!918792 (= lt!338026 (lemmaFindConcatSeparationEquivalentToExists!211 lt!338023 lt!338027 s!10566))))

(declare-fun matchRSpec!271 (Regex!2470 List!9700) Bool)

(assert (=> b!918792 (matchRSpec!271 lt!338024 s!10566)))

(declare-fun lt!338020 () Unit!14559)

(declare-fun mainMatchTheorem!271 (Regex!2470 List!9700) Unit!14559)

(assert (=> b!918792 (= lt!338020 (mainMatchTheorem!271 lt!338024 s!10566))))

(declare-fun b!918793 () Bool)

(declare-fun tp_is_empty!4583 () Bool)

(declare-fun tp!286542 () Bool)

(assert (=> b!918793 (= e!598458 (and tp_is_empty!4583 tp!286542))))

(declare-fun b!918794 () Bool)

(assert (=> b!918794 (= e!598455 tp_is_empty!4583)))

(declare-fun b!918795 () Bool)

(declare-fun tp!286545 () Bool)

(declare-fun tp!286543 () Bool)

(assert (=> b!918795 (= e!598455 (and tp!286545 tp!286543))))

(declare-fun b!918796 () Bool)

(declare-fun tp!286541 () Bool)

(assert (=> b!918796 (= e!598455 tp!286541)))

(declare-fun e!598454 () Bool)

(assert (=> b!918797 (= e!598454 e!598459)))

(declare-fun res!417707 () Bool)

(assert (=> b!918797 (=> res!417707 e!598459)))

(declare-fun isEmpty!5921 (List!9700) Bool)

(assert (=> b!918797 (= res!417707 (isEmpty!5921 s!10566))))

(assert (=> b!918797 (= (Exists!241 lambda!29751) (Exists!241 lambda!29752))))

(declare-fun lt!338029 () Unit!14559)

(assert (=> b!918797 (= lt!338029 (lemmaExistCutMatchRandMatchRSpecEquivalent!153 (regOne!5452 r!15766) (regTwo!5452 r!15766) s!10566))))

(assert (=> b!918797 (= (isDefined!1747 (findConcatSeparation!211 (regOne!5452 r!15766) (regTwo!5452 r!15766) Nil!9684 s!10566 s!10566)) (Exists!241 lambda!29751))))

(declare-fun lt!338021 () Unit!14559)

(assert (=> b!918797 (= lt!338021 (lemmaFindConcatSeparationEquivalentToExists!211 (regOne!5452 r!15766) (regTwo!5452 r!15766) s!10566))))

(declare-fun b!918798 () Bool)

(assert (=> b!918798 (= e!598457 (not e!598454))))

(declare-fun res!417709 () Bool)

(assert (=> b!918798 (=> res!417709 e!598454)))

(declare-fun lt!338022 () Bool)

(assert (=> b!918798 (= res!417709 (or lt!338022 (and (is-Concat!4303 r!15766) (is-EmptyExpr!2470 (regOne!5452 r!15766))) (and (is-Concat!4303 r!15766) (is-EmptyExpr!2470 (regTwo!5452 r!15766))) (not (is-Concat!4303 r!15766))))))

(assert (=> b!918798 (= lt!338022 (matchRSpec!271 r!15766 s!10566))))

(assert (=> b!918798 (= lt!338022 (matchR!1008 r!15766 s!10566))))

(declare-fun lt!338028 () Unit!14559)

(assert (=> b!918798 (= lt!338028 (mainMatchTheorem!271 r!15766 s!10566))))

(assert (= (and start!82548 res!417708) b!918798))

(assert (= (and b!918798 (not res!417709)) b!918797))

(assert (= (and b!918797 (not res!417707)) b!918791))

(assert (= (and b!918791 (not res!417710)) b!918792))

(assert (= (and start!82548 (is-ElementMatch!2470 r!15766)) b!918794))

(assert (= (and start!82548 (is-Concat!4303 r!15766)) b!918790))

(assert (= (and start!82548 (is-Star!2470 r!15766)) b!918796))

(assert (= (and start!82548 (is-Union!2470 r!15766)) b!918795))

(assert (= (and start!82548 (is-Cons!9684 s!10566)) b!918793))

(declare-fun m!1146953 () Bool)

(assert (=> b!918798 m!1146953))

(declare-fun m!1146955 () Bool)

(assert (=> b!918798 m!1146955))

(declare-fun m!1146957 () Bool)

(assert (=> b!918798 m!1146957))

(declare-fun m!1146959 () Bool)

(assert (=> b!918792 m!1146959))

(declare-fun m!1146961 () Bool)

(assert (=> b!918792 m!1146961))

(assert (=> b!918792 m!1146959))

(declare-fun m!1146963 () Bool)

(assert (=> b!918792 m!1146963))

(declare-fun m!1146965 () Bool)

(assert (=> b!918792 m!1146965))

(declare-fun m!1146967 () Bool)

(assert (=> b!918792 m!1146967))

(assert (=> b!918792 m!1146963))

(declare-fun m!1146969 () Bool)

(assert (=> b!918792 m!1146969))

(declare-fun m!1146971 () Bool)

(assert (=> b!918792 m!1146971))

(declare-fun m!1146973 () Bool)

(assert (=> b!918792 m!1146973))

(declare-fun m!1146975 () Bool)

(assert (=> b!918792 m!1146975))

(declare-fun m!1146977 () Bool)

(assert (=> b!918791 m!1146977))

(declare-fun m!1146979 () Bool)

(assert (=> b!918791 m!1146979))

(declare-fun m!1146981 () Bool)

(assert (=> b!918791 m!1146981))

(declare-fun m!1146983 () Bool)

(assert (=> b!918797 m!1146983))

(declare-fun m!1146985 () Bool)

(assert (=> b!918797 m!1146985))

(declare-fun m!1146987 () Bool)

(assert (=> b!918797 m!1146987))

(declare-fun m!1146989 () Bool)

(assert (=> b!918797 m!1146989))

(declare-fun m!1146991 () Bool)

(assert (=> b!918797 m!1146991))

(declare-fun m!1146993 () Bool)

(assert (=> b!918797 m!1146993))

(assert (=> b!918797 m!1146985))

(assert (=> b!918797 m!1146991))

(declare-fun m!1146995 () Bool)

(assert (=> b!918797 m!1146995))

(declare-fun m!1146997 () Bool)

(assert (=> start!82548 m!1146997))

(push 1)

(assert (not b!918795))

(assert tp_is_empty!4583)

(assert (not b!918792))

(assert (not b!918796))

(assert (not b!918790))

(assert (not b!918793))

(assert (not b!918797))

(assert (not start!82548))

(assert (not b!918791))

(assert (not b!918798))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!918886 () Bool)

(declare-fun e!598507 () Bool)

(declare-fun nullable!682 (Regex!2470) Bool)

(assert (=> b!918886 (= e!598507 (nullable!682 lt!338024))))

(declare-fun b!918887 () Bool)

(declare-fun e!598504 () Bool)

(declare-fun e!598510 () Bool)

(assert (=> b!918887 (= e!598504 e!598510)))

(declare-fun c!148989 () Bool)

(assert (=> b!918887 (= c!148989 (is-EmptyLang!2470 lt!338024))))

(declare-fun b!918888 () Bool)

(declare-fun e!598508 () Bool)

(declare-fun e!598506 () Bool)

(assert (=> b!918888 (= e!598508 e!598506)))

(declare-fun res!417763 () Bool)

(assert (=> b!918888 (=> res!417763 e!598506)))

(declare-fun call!55716 () Bool)

(assert (=> b!918888 (= res!417763 call!55716)))

(declare-fun d!280111 () Bool)

(assert (=> d!280111 e!598504))

(declare-fun c!148990 () Bool)

(assert (=> d!280111 (= c!148990 (is-EmptyExpr!2470 lt!338024))))

(declare-fun lt!338062 () Bool)

(assert (=> d!280111 (= lt!338062 e!598507)))

(declare-fun c!148991 () Bool)

(assert (=> d!280111 (= c!148991 (isEmpty!5921 s!10566))))

(assert (=> d!280111 (validRegex!939 lt!338024)))

(assert (=> d!280111 (= (matchR!1008 lt!338024 s!10566) lt!338062)))

(declare-fun b!918889 () Bool)

(declare-fun res!417764 () Bool)

(declare-fun e!598505 () Bool)

(assert (=> b!918889 (=> (not res!417764) (not e!598505))))

(declare-fun tail!1207 (List!9700) List!9700)

(assert (=> b!918889 (= res!417764 (isEmpty!5921 (tail!1207 s!10566)))))

(declare-fun b!918890 () Bool)

(declare-fun head!1645 (List!9700) C!5510)

(assert (=> b!918890 (= e!598506 (not (= (head!1645 s!10566) (c!148981 lt!338024))))))

(declare-fun b!918891 () Bool)

(declare-fun derivativeStep!492 (Regex!2470 C!5510) Regex!2470)

(assert (=> b!918891 (= e!598507 (matchR!1008 (derivativeStep!492 lt!338024 (head!1645 s!10566)) (tail!1207 s!10566)))))

(declare-fun b!918892 () Bool)

(declare-fun res!417766 () Bool)

(assert (=> b!918892 (=> (not res!417766) (not e!598505))))

(assert (=> b!918892 (= res!417766 (not call!55716))))

(declare-fun b!918893 () Bool)

(declare-fun res!417769 () Bool)

(declare-fun e!598509 () Bool)

(assert (=> b!918893 (=> res!417769 e!598509)))

(assert (=> b!918893 (= res!417769 (not (is-ElementMatch!2470 lt!338024)))))

(assert (=> b!918893 (= e!598510 e!598509)))

(declare-fun b!918894 () Bool)

(assert (=> b!918894 (= e!598505 (= (head!1645 s!10566) (c!148981 lt!338024)))))

(declare-fun b!918895 () Bool)

(assert (=> b!918895 (= e!598510 (not lt!338062))))

(declare-fun b!918896 () Bool)

(assert (=> b!918896 (= e!598509 e!598508)))

(declare-fun res!417768 () Bool)

(assert (=> b!918896 (=> (not res!417768) (not e!598508))))

(assert (=> b!918896 (= res!417768 (not lt!338062))))

(declare-fun b!918897 () Bool)

(declare-fun res!417767 () Bool)

(assert (=> b!918897 (=> res!417767 e!598509)))

(assert (=> b!918897 (= res!417767 e!598505)))

(declare-fun res!417770 () Bool)

(assert (=> b!918897 (=> (not res!417770) (not e!598505))))

(assert (=> b!918897 (= res!417770 lt!338062)))

(declare-fun b!918898 () Bool)

(assert (=> b!918898 (= e!598504 (= lt!338062 call!55716))))

(declare-fun bm!55711 () Bool)

(assert (=> bm!55711 (= call!55716 (isEmpty!5921 s!10566))))

(declare-fun b!918899 () Bool)

(declare-fun res!417765 () Bool)

(assert (=> b!918899 (=> res!417765 e!598506)))

(assert (=> b!918899 (= res!417765 (not (isEmpty!5921 (tail!1207 s!10566))))))

(assert (= (and d!280111 c!148991) b!918886))

(assert (= (and d!280111 (not c!148991)) b!918891))

(assert (= (and d!280111 c!148990) b!918898))

(assert (= (and d!280111 (not c!148990)) b!918887))

(assert (= (and b!918887 c!148989) b!918895))

(assert (= (and b!918887 (not c!148989)) b!918893))

(assert (= (and b!918893 (not res!417769)) b!918897))

(assert (= (and b!918897 res!417770) b!918892))

(assert (= (and b!918892 res!417766) b!918889))

(assert (= (and b!918889 res!417764) b!918894))

(assert (= (and b!918897 (not res!417767)) b!918896))

(assert (= (and b!918896 res!417768) b!918888))

(assert (= (and b!918888 (not res!417763)) b!918899))

(assert (= (and b!918899 (not res!417765)) b!918890))

(assert (= (or b!918898 b!918888 b!918892) bm!55711))

(assert (=> d!280111 m!1146989))

(declare-fun m!1147045 () Bool)

(assert (=> d!280111 m!1147045))

(declare-fun m!1147047 () Bool)

(assert (=> b!918894 m!1147047))

(assert (=> b!918890 m!1147047))

(declare-fun m!1147049 () Bool)

(assert (=> b!918889 m!1147049))

(assert (=> b!918889 m!1147049))

(declare-fun m!1147051 () Bool)

(assert (=> b!918889 m!1147051))

(assert (=> b!918891 m!1147047))

(assert (=> b!918891 m!1147047))

(declare-fun m!1147053 () Bool)

(assert (=> b!918891 m!1147053))

(assert (=> b!918891 m!1147049))

(assert (=> b!918891 m!1147053))

(assert (=> b!918891 m!1147049))

(declare-fun m!1147055 () Bool)

(assert (=> b!918891 m!1147055))

(assert (=> b!918899 m!1147049))

(assert (=> b!918899 m!1147049))

(assert (=> b!918899 m!1147051))

(assert (=> bm!55711 m!1146989))

(declare-fun m!1147057 () Bool)

(assert (=> b!918886 m!1147057))

(assert (=> b!918791 d!280111))

(declare-fun b!918944 () Bool)

(declare-fun e!598542 () Regex!2470)

(declare-fun call!55730 () Regex!2470)

(declare-fun call!55727 () Regex!2470)

(assert (=> b!918944 (= e!598542 (Union!2470 call!55730 call!55727))))

(declare-fun bm!55722 () Bool)

(declare-fun call!55729 () Regex!2470)

(declare-fun call!55728 () Regex!2470)

(assert (=> bm!55722 (= call!55729 call!55728)))

(declare-fun bm!55723 () Bool)

(declare-fun call!55731 () Regex!2470)

(assert (=> bm!55723 (= call!55727 call!55731)))

(declare-fun b!918945 () Bool)

(declare-fun e!598539 () Regex!2470)

(assert (=> b!918945 (= e!598539 call!55729)))

(declare-fun b!918946 () Bool)

(declare-fun e!598538 () Regex!2470)

(assert (=> b!918946 (= e!598538 e!598539)))

(declare-fun c!149014 () Bool)

(assert (=> b!918946 (= c!149014 (and (is-Concat!4303 (regTwo!5452 r!15766)) (is-EmptyExpr!2470 (regTwo!5452 (regTwo!5452 r!15766)))))))

(declare-fun bm!55724 () Bool)

(assert (=> bm!55724 (= call!55730 call!55729)))

(declare-fun b!918947 () Bool)

(declare-fun e!598541 () Regex!2470)

(assert (=> b!918947 (= e!598541 (regTwo!5452 r!15766))))

(declare-fun c!149011 () Bool)

(declare-fun c!149012 () Bool)

(declare-fun bm!55725 () Bool)

(assert (=> bm!55725 (= call!55731 (removeUselessConcat!147 (ite c!149011 (regTwo!5452 (regTwo!5452 r!15766)) (ite c!149012 (regTwo!5453 (regTwo!5452 r!15766)) (reg!2799 (regTwo!5452 r!15766))))))))

(declare-fun b!918948 () Bool)

(assert (=> b!918948 (= e!598541 (Star!2470 call!55727))))

(declare-fun b!918949 () Bool)

(declare-fun e!598537 () Regex!2470)

(assert (=> b!918949 (= e!598537 e!598542)))

(assert (=> b!918949 (= c!149012 (is-Union!2470 (regTwo!5452 r!15766)))))

(declare-fun c!149013 () Bool)

(declare-fun bm!55726 () Bool)

(assert (=> bm!55726 (= call!55728 (removeUselessConcat!147 (ite c!149013 (regTwo!5452 (regTwo!5452 r!15766)) (ite (or c!149014 c!149011) (regOne!5452 (regTwo!5452 r!15766)) (regOne!5453 (regTwo!5452 r!15766))))))))

(declare-fun b!918950 () Bool)

(assert (=> b!918950 (= c!149011 (is-Concat!4303 (regTwo!5452 r!15766)))))

(assert (=> b!918950 (= e!598539 e!598537)))

(declare-fun b!918951 () Bool)

(declare-fun c!149010 () Bool)

(assert (=> b!918951 (= c!149010 (is-Star!2470 (regTwo!5452 r!15766)))))

(assert (=> b!918951 (= e!598542 e!598541)))

(declare-fun b!918952 () Bool)

(declare-fun e!598540 () Bool)

(declare-fun lt!338065 () Regex!2470)

(assert (=> b!918952 (= e!598540 (= (nullable!682 lt!338065) (nullable!682 (regTwo!5452 r!15766))))))

(declare-fun b!918953 () Bool)

(assert (=> b!918953 (= e!598537 (Concat!4303 call!55730 call!55731))))

(declare-fun b!918954 () Bool)

(assert (=> b!918954 (= e!598538 call!55728)))

(declare-fun d!280115 () Bool)

(assert (=> d!280115 e!598540))

(declare-fun res!417779 () Bool)

(assert (=> d!280115 (=> (not res!417779) (not e!598540))))

(assert (=> d!280115 (= res!417779 (validRegex!939 lt!338065))))

(assert (=> d!280115 (= lt!338065 e!598538)))

(assert (=> d!280115 (= c!149013 (and (is-Concat!4303 (regTwo!5452 r!15766)) (is-EmptyExpr!2470 (regOne!5452 (regTwo!5452 r!15766)))))))

(assert (=> d!280115 (validRegex!939 (regTwo!5452 r!15766))))

(assert (=> d!280115 (= (removeUselessConcat!147 (regTwo!5452 r!15766)) lt!338065)))

(assert (= (and d!280115 c!149013) b!918954))

(assert (= (and d!280115 (not c!149013)) b!918946))

(assert (= (and b!918946 c!149014) b!918945))

(assert (= (and b!918946 (not c!149014)) b!918950))

(assert (= (and b!918950 c!149011) b!918953))

(assert (= (and b!918950 (not c!149011)) b!918949))

(assert (= (and b!918949 c!149012) b!918944))

(assert (= (and b!918949 (not c!149012)) b!918951))

(assert (= (and b!918951 c!149010) b!918948))

(assert (= (and b!918951 (not c!149010)) b!918947))

(assert (= (or b!918944 b!918948) bm!55723))

(assert (= (or b!918953 bm!55723) bm!55725))

(assert (= (or b!918953 b!918944) bm!55724))

(assert (= (or b!918945 bm!55724) bm!55722))

(assert (= (or b!918954 bm!55722) bm!55726))

(assert (= (and d!280115 res!417779) b!918952))

(declare-fun m!1147059 () Bool)

(assert (=> bm!55725 m!1147059))

(declare-fun m!1147061 () Bool)

(assert (=> bm!55726 m!1147061))

(declare-fun m!1147063 () Bool)

(assert (=> b!918952 m!1147063))

(declare-fun m!1147065 () Bool)

(assert (=> b!918952 m!1147065))

(declare-fun m!1147067 () Bool)

(assert (=> d!280115 m!1147067))

(declare-fun m!1147069 () Bool)

(assert (=> d!280115 m!1147069))

(assert (=> b!918791 d!280115))

(declare-fun b!918955 () Bool)

(declare-fun e!598548 () Regex!2470)

(declare-fun call!55735 () Regex!2470)

(declare-fun call!55732 () Regex!2470)

(assert (=> b!918955 (= e!598548 (Union!2470 call!55735 call!55732))))

(declare-fun bm!55727 () Bool)

(declare-fun call!55734 () Regex!2470)

(declare-fun call!55733 () Regex!2470)

(assert (=> bm!55727 (= call!55734 call!55733)))

(declare-fun bm!55728 () Bool)

(declare-fun call!55736 () Regex!2470)

(assert (=> bm!55728 (= call!55732 call!55736)))

(declare-fun b!918956 () Bool)

(declare-fun e!598545 () Regex!2470)

(assert (=> b!918956 (= e!598545 call!55734)))

(declare-fun b!918957 () Bool)

(declare-fun e!598544 () Regex!2470)

(assert (=> b!918957 (= e!598544 e!598545)))

(declare-fun c!149019 () Bool)

(assert (=> b!918957 (= c!149019 (and (is-Concat!4303 (regOne!5452 r!15766)) (is-EmptyExpr!2470 (regTwo!5452 (regOne!5452 r!15766)))))))

(declare-fun bm!55729 () Bool)

(assert (=> bm!55729 (= call!55735 call!55734)))

(declare-fun b!918958 () Bool)

(declare-fun e!598547 () Regex!2470)

(assert (=> b!918958 (= e!598547 (regOne!5452 r!15766))))

(declare-fun c!149017 () Bool)

(declare-fun bm!55730 () Bool)

(declare-fun c!149016 () Bool)

(assert (=> bm!55730 (= call!55736 (removeUselessConcat!147 (ite c!149016 (regTwo!5452 (regOne!5452 r!15766)) (ite c!149017 (regTwo!5453 (regOne!5452 r!15766)) (reg!2799 (regOne!5452 r!15766))))))))

(declare-fun b!918959 () Bool)

(assert (=> b!918959 (= e!598547 (Star!2470 call!55732))))

(declare-fun b!918960 () Bool)

(declare-fun e!598543 () Regex!2470)

(assert (=> b!918960 (= e!598543 e!598548)))

(assert (=> b!918960 (= c!149017 (is-Union!2470 (regOne!5452 r!15766)))))

(declare-fun c!149018 () Bool)

(declare-fun bm!55731 () Bool)

(assert (=> bm!55731 (= call!55733 (removeUselessConcat!147 (ite c!149018 (regTwo!5452 (regOne!5452 r!15766)) (ite (or c!149019 c!149016) (regOne!5452 (regOne!5452 r!15766)) (regOne!5453 (regOne!5452 r!15766))))))))

(declare-fun b!918961 () Bool)

(assert (=> b!918961 (= c!149016 (is-Concat!4303 (regOne!5452 r!15766)))))

(assert (=> b!918961 (= e!598545 e!598543)))

(declare-fun b!918962 () Bool)

(declare-fun c!149015 () Bool)

(assert (=> b!918962 (= c!149015 (is-Star!2470 (regOne!5452 r!15766)))))

(assert (=> b!918962 (= e!598548 e!598547)))

(declare-fun b!918963 () Bool)

(declare-fun e!598546 () Bool)

(declare-fun lt!338066 () Regex!2470)

(assert (=> b!918963 (= e!598546 (= (nullable!682 lt!338066) (nullable!682 (regOne!5452 r!15766))))))

(declare-fun b!918964 () Bool)

(assert (=> b!918964 (= e!598543 (Concat!4303 call!55735 call!55736))))

(declare-fun b!918965 () Bool)

(assert (=> b!918965 (= e!598544 call!55733)))

(declare-fun d!280117 () Bool)

(assert (=> d!280117 e!598546))

(declare-fun res!417780 () Bool)

(assert (=> d!280117 (=> (not res!417780) (not e!598546))))

(assert (=> d!280117 (= res!417780 (validRegex!939 lt!338066))))

(assert (=> d!280117 (= lt!338066 e!598544)))

(assert (=> d!280117 (= c!149018 (and (is-Concat!4303 (regOne!5452 r!15766)) (is-EmptyExpr!2470 (regOne!5452 (regOne!5452 r!15766)))))))

(assert (=> d!280117 (validRegex!939 (regOne!5452 r!15766))))

(assert (=> d!280117 (= (removeUselessConcat!147 (regOne!5452 r!15766)) lt!338066)))

(assert (= (and d!280117 c!149018) b!918965))

(assert (= (and d!280117 (not c!149018)) b!918957))

(assert (= (and b!918957 c!149019) b!918956))

(assert (= (and b!918957 (not c!149019)) b!918961))

(assert (= (and b!918961 c!149016) b!918964))

(assert (= (and b!918961 (not c!149016)) b!918960))

(assert (= (and b!918960 c!149017) b!918955))

(assert (= (and b!918960 (not c!149017)) b!918962))

(assert (= (and b!918962 c!149015) b!918959))

(assert (= (and b!918962 (not c!149015)) b!918958))

(assert (= (or b!918955 b!918959) bm!55728))

(assert (= (or b!918964 bm!55728) bm!55730))

(assert (= (or b!918964 b!918955) bm!55729))

(assert (= (or b!918956 bm!55729) bm!55727))

(assert (= (or b!918965 bm!55727) bm!55731))

(assert (= (and d!280117 res!417780) b!918963))

(declare-fun m!1147071 () Bool)

(assert (=> bm!55730 m!1147071))

(declare-fun m!1147073 () Bool)

(assert (=> bm!55731 m!1147073))

(declare-fun m!1147075 () Bool)

(assert (=> b!918963 m!1147075))

(declare-fun m!1147077 () Bool)

(assert (=> b!918963 m!1147077))

(declare-fun m!1147079 () Bool)

(assert (=> d!280117 m!1147079))

(assert (=> d!280117 m!1146965))

(assert (=> b!918791 d!280117))

(declare-fun d!280119 () Bool)

(assert (=> d!280119 (= (isEmpty!5921 s!10566) (is-Nil!9684 s!10566))))

(assert (=> b!918797 d!280119))

(declare-fun d!280121 () Bool)

(declare-fun choose!5616 (Int) Bool)

(assert (=> d!280121 (= (Exists!241 lambda!29751) (choose!5616 lambda!29751))))

(declare-fun bs!236374 () Bool)

(assert (= bs!236374 d!280121))

(declare-fun m!1147081 () Bool)

(assert (=> bs!236374 m!1147081))

(assert (=> b!918797 d!280121))

(declare-fun d!280123 () Bool)

(declare-fun isEmpty!5923 (Option!2105) Bool)

(assert (=> d!280123 (= (isDefined!1747 (findConcatSeparation!211 (regOne!5452 r!15766) (regTwo!5452 r!15766) Nil!9684 s!10566 s!10566)) (not (isEmpty!5923 (findConcatSeparation!211 (regOne!5452 r!15766) (regTwo!5452 r!15766) Nil!9684 s!10566 s!10566))))))

(declare-fun bs!236375 () Bool)

(assert (= bs!236375 d!280123))

(assert (=> bs!236375 m!1146985))

(declare-fun m!1147083 () Bool)

(assert (=> bs!236375 m!1147083))

(assert (=> b!918797 d!280123))

(declare-fun bs!236376 () Bool)

(declare-fun d!280125 () Bool)

(assert (= bs!236376 (and d!280125 b!918797)))

(declare-fun lambda!29777 () Int)

(assert (=> bs!236376 (= lambda!29777 lambda!29751)))

(assert (=> bs!236376 (not (= lambda!29777 lambda!29752))))

(declare-fun bs!236377 () Bool)

(assert (= bs!236377 (and d!280125 b!918792)))

(assert (=> bs!236377 (= (and (= (regOne!5452 r!15766) lt!338023) (= (regTwo!5452 r!15766) lt!338027)) (= lambda!29777 lambda!29753))))

(assert (=> bs!236377 (not (= lambda!29777 lambda!29754))))

(assert (=> d!280125 true))

(assert (=> d!280125 true))

(assert (=> d!280125 true))

(assert (=> d!280125 (= (isDefined!1747 (findConcatSeparation!211 (regOne!5452 r!15766) (regTwo!5452 r!15766) Nil!9684 s!10566 s!10566)) (Exists!241 lambda!29777))))

(declare-fun lt!338069 () Unit!14559)

(declare-fun choose!5617 (Regex!2470 Regex!2470 List!9700) Unit!14559)

(assert (=> d!280125 (= lt!338069 (choose!5617 (regOne!5452 r!15766) (regTwo!5452 r!15766) s!10566))))

(assert (=> d!280125 (validRegex!939 (regOne!5452 r!15766))))

(assert (=> d!280125 (= (lemmaFindConcatSeparationEquivalentToExists!211 (regOne!5452 r!15766) (regTwo!5452 r!15766) s!10566) lt!338069)))

(declare-fun bs!236378 () Bool)

(assert (= bs!236378 d!280125))

(assert (=> bs!236378 m!1146985))

(assert (=> bs!236378 m!1146987))

(declare-fun m!1147085 () Bool)

(assert (=> bs!236378 m!1147085))

(assert (=> bs!236378 m!1146985))

(assert (=> bs!236378 m!1146965))

(declare-fun m!1147087 () Bool)

(assert (=> bs!236378 m!1147087))

(assert (=> b!918797 d!280125))

(declare-fun b!919009 () Bool)

(declare-fun lt!338078 () Unit!14559)

(declare-fun lt!338077 () Unit!14559)

(assert (=> b!919009 (= lt!338078 lt!338077)))

(declare-fun ++!2558 (List!9700 List!9700) List!9700)

(assert (=> b!919009 (= (++!2558 (++!2558 Nil!9684 (Cons!9684 (h!15085 s!10566) Nil!9684)) (t!100746 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!173 (List!9700 C!5510 List!9700 List!9700) Unit!14559)

(assert (=> b!919009 (= lt!338077 (lemmaMoveElementToOtherListKeepsConcatEq!173 Nil!9684 (h!15085 s!10566) (t!100746 s!10566) s!10566))))

(declare-fun e!598573 () Option!2105)

(assert (=> b!919009 (= e!598573 (findConcatSeparation!211 (regOne!5452 r!15766) (regTwo!5452 r!15766) (++!2558 Nil!9684 (Cons!9684 (h!15085 s!10566) Nil!9684)) (t!100746 s!10566) s!10566))))

(declare-fun b!919010 () Bool)

(assert (=> b!919010 (= e!598573 None!2104)))

(declare-fun b!919011 () Bool)

(declare-fun e!598574 () Option!2105)

(assert (=> b!919011 (= e!598574 (Some!2104 (tuple2!10927 Nil!9684 s!10566)))))

(declare-fun b!919012 () Bool)

(declare-fun e!598572 () Bool)

(assert (=> b!919012 (= e!598572 (matchR!1008 (regTwo!5452 r!15766) s!10566))))

(declare-fun b!919014 () Bool)

(declare-fun res!417811 () Bool)

(declare-fun e!598576 () Bool)

(assert (=> b!919014 (=> (not res!417811) (not e!598576))))

(declare-fun lt!338076 () Option!2105)

(declare-fun get!3149 (Option!2105) tuple2!10926)

(assert (=> b!919014 (= res!417811 (matchR!1008 (regTwo!5452 r!15766) (_2!6289 (get!3149 lt!338076))))))

(declare-fun b!919015 () Bool)

(assert (=> b!919015 (= e!598576 (= (++!2558 (_1!6289 (get!3149 lt!338076)) (_2!6289 (get!3149 lt!338076))) s!10566))))

(declare-fun b!919016 () Bool)

(declare-fun res!417810 () Bool)

(assert (=> b!919016 (=> (not res!417810) (not e!598576))))

(assert (=> b!919016 (= res!417810 (matchR!1008 (regOne!5452 r!15766) (_1!6289 (get!3149 lt!338076))))))

(declare-fun b!919017 () Bool)

(declare-fun e!598575 () Bool)

(assert (=> b!919017 (= e!598575 (not (isDefined!1747 lt!338076)))))

(declare-fun d!280127 () Bool)

(assert (=> d!280127 e!598575))

(declare-fun res!417812 () Bool)

(assert (=> d!280127 (=> res!417812 e!598575)))

(assert (=> d!280127 (= res!417812 e!598576)))

(declare-fun res!417809 () Bool)

(assert (=> d!280127 (=> (not res!417809) (not e!598576))))

(assert (=> d!280127 (= res!417809 (isDefined!1747 lt!338076))))

(assert (=> d!280127 (= lt!338076 e!598574)))

(declare-fun c!149029 () Bool)

(assert (=> d!280127 (= c!149029 e!598572)))

(declare-fun res!417808 () Bool)

(assert (=> d!280127 (=> (not res!417808) (not e!598572))))

(assert (=> d!280127 (= res!417808 (matchR!1008 (regOne!5452 r!15766) Nil!9684))))

(assert (=> d!280127 (validRegex!939 (regOne!5452 r!15766))))

(assert (=> d!280127 (= (findConcatSeparation!211 (regOne!5452 r!15766) (regTwo!5452 r!15766) Nil!9684 s!10566 s!10566) lt!338076)))

(declare-fun b!919013 () Bool)

(assert (=> b!919013 (= e!598574 e!598573)))

(declare-fun c!149028 () Bool)

(assert (=> b!919013 (= c!149028 (is-Nil!9684 s!10566))))

(assert (= (and d!280127 res!417808) b!919012))

(assert (= (and d!280127 c!149029) b!919011))

(assert (= (and d!280127 (not c!149029)) b!919013))

(assert (= (and b!919013 c!149028) b!919010))

(assert (= (and b!919013 (not c!149028)) b!919009))

(assert (= (and d!280127 res!417809) b!919016))

(assert (= (and b!919016 res!417810) b!919014))

(assert (= (and b!919014 res!417811) b!919015))

(assert (= (and d!280127 (not res!417812)) b!919017))

(declare-fun m!1147089 () Bool)

(assert (=> d!280127 m!1147089))

(declare-fun m!1147091 () Bool)

(assert (=> d!280127 m!1147091))

(assert (=> d!280127 m!1146965))

(assert (=> b!919017 m!1147089))

(declare-fun m!1147093 () Bool)

(assert (=> b!919014 m!1147093))

(declare-fun m!1147095 () Bool)

(assert (=> b!919014 m!1147095))

(assert (=> b!919015 m!1147093))

(declare-fun m!1147097 () Bool)

(assert (=> b!919015 m!1147097))

(declare-fun m!1147099 () Bool)

(assert (=> b!919009 m!1147099))

(assert (=> b!919009 m!1147099))

(declare-fun m!1147101 () Bool)

(assert (=> b!919009 m!1147101))

(declare-fun m!1147103 () Bool)

(assert (=> b!919009 m!1147103))

(assert (=> b!919009 m!1147099))

(declare-fun m!1147105 () Bool)

(assert (=> b!919009 m!1147105))

(assert (=> b!919016 m!1147093))

(declare-fun m!1147107 () Bool)

(assert (=> b!919016 m!1147107))

(declare-fun m!1147109 () Bool)

(assert (=> b!919012 m!1147109))

(assert (=> b!918797 d!280127))

(declare-fun bs!236384 () Bool)

(declare-fun d!280129 () Bool)

(assert (= bs!236384 (and d!280129 d!280125)))

(declare-fun lambda!29784 () Int)

(assert (=> bs!236384 (= lambda!29784 lambda!29777)))

(declare-fun bs!236385 () Bool)

(assert (= bs!236385 (and d!280129 b!918797)))

(assert (=> bs!236385 (= lambda!29784 lambda!29751)))

(declare-fun bs!236386 () Bool)

(assert (= bs!236386 (and d!280129 b!918792)))

(assert (=> bs!236386 (= (and (= (regOne!5452 r!15766) lt!338023) (= (regTwo!5452 r!15766) lt!338027)) (= lambda!29784 lambda!29753))))

(assert (=> bs!236385 (not (= lambda!29784 lambda!29752))))

(assert (=> bs!236386 (not (= lambda!29784 lambda!29754))))

(assert (=> d!280129 true))

(assert (=> d!280129 true))

(assert (=> d!280129 true))

(declare-fun lambda!29785 () Int)

(assert (=> bs!236384 (not (= lambda!29785 lambda!29777))))

(assert (=> bs!236385 (not (= lambda!29785 lambda!29751))))

(assert (=> bs!236386 (not (= lambda!29785 lambda!29753))))

(declare-fun bs!236387 () Bool)

(assert (= bs!236387 d!280129))

(assert (=> bs!236387 (not (= lambda!29785 lambda!29784))))

(assert (=> bs!236385 (= lambda!29785 lambda!29752)))

(assert (=> bs!236386 (= (and (= (regOne!5452 r!15766) lt!338023) (= (regTwo!5452 r!15766) lt!338027)) (= lambda!29785 lambda!29754))))

(assert (=> d!280129 true))

(assert (=> d!280129 true))

(assert (=> d!280129 true))

(assert (=> d!280129 (= (Exists!241 lambda!29784) (Exists!241 lambda!29785))))

(declare-fun lt!338081 () Unit!14559)

(declare-fun choose!5618 (Regex!2470 Regex!2470 List!9700) Unit!14559)

(assert (=> d!280129 (= lt!338081 (choose!5618 (regOne!5452 r!15766) (regTwo!5452 r!15766) s!10566))))

(assert (=> d!280129 (validRegex!939 (regOne!5452 r!15766))))

(assert (=> d!280129 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!153 (regOne!5452 r!15766) (regTwo!5452 r!15766) s!10566) lt!338081)))

(declare-fun m!1147117 () Bool)

(assert (=> bs!236387 m!1147117))

(declare-fun m!1147119 () Bool)

(assert (=> bs!236387 m!1147119))

(declare-fun m!1147121 () Bool)

(assert (=> bs!236387 m!1147121))

(assert (=> bs!236387 m!1146965))

(assert (=> b!918797 d!280129))

(declare-fun d!280133 () Bool)

(assert (=> d!280133 (= (Exists!241 lambda!29752) (choose!5616 lambda!29752))))

(declare-fun bs!236388 () Bool)

(assert (= bs!236388 d!280133))

(declare-fun m!1147123 () Bool)

(assert (=> bs!236388 m!1147123))

(assert (=> b!918797 d!280133))

(declare-fun bm!55744 () Bool)

(declare-fun call!55750 () Bool)

(declare-fun call!55751 () Bool)

(assert (=> bm!55744 (= call!55750 call!55751)))

(declare-fun b!919072 () Bool)

(declare-fun e!598615 () Bool)

(declare-fun e!598609 () Bool)

(assert (=> b!919072 (= e!598615 e!598609)))

(declare-fun res!417849 () Bool)

(assert (=> b!919072 (=> (not res!417849) (not e!598609))))

(declare-fun call!55749 () Bool)

(assert (=> b!919072 (= res!417849 call!55749)))

(declare-fun b!919073 () Bool)

(declare-fun e!598613 () Bool)

(declare-fun e!598611 () Bool)

(assert (=> b!919073 (= e!598613 e!598611)))

(declare-fun c!149041 () Bool)

(assert (=> b!919073 (= c!149041 (is-Star!2470 (regOne!5452 r!15766)))))

(declare-fun b!919074 () Bool)

(declare-fun e!598610 () Bool)

(assert (=> b!919074 (= e!598610 call!55751)))

(declare-fun d!280135 () Bool)

(declare-fun res!417848 () Bool)

(assert (=> d!280135 (=> res!417848 e!598613)))

(assert (=> d!280135 (= res!417848 (is-ElementMatch!2470 (regOne!5452 r!15766)))))

(assert (=> d!280135 (= (validRegex!939 (regOne!5452 r!15766)) e!598613)))

(declare-fun c!149040 () Bool)

(declare-fun bm!55745 () Bool)

(assert (=> bm!55745 (= call!55751 (validRegex!939 (ite c!149041 (reg!2799 (regOne!5452 r!15766)) (ite c!149040 (regTwo!5453 (regOne!5452 r!15766)) (regTwo!5452 (regOne!5452 r!15766))))))))

(declare-fun bm!55746 () Bool)

(assert (=> bm!55746 (= call!55749 (validRegex!939 (ite c!149040 (regOne!5453 (regOne!5452 r!15766)) (regOne!5452 (regOne!5452 r!15766)))))))

(declare-fun b!919075 () Bool)

(declare-fun e!598614 () Bool)

(assert (=> b!919075 (= e!598611 e!598614)))

(assert (=> b!919075 (= c!149040 (is-Union!2470 (regOne!5452 r!15766)))))

(declare-fun b!919076 () Bool)

(declare-fun res!417847 () Bool)

(declare-fun e!598612 () Bool)

(assert (=> b!919076 (=> (not res!417847) (not e!598612))))

(assert (=> b!919076 (= res!417847 call!55749)))

(assert (=> b!919076 (= e!598614 e!598612)))

(declare-fun b!919077 () Bool)

(assert (=> b!919077 (= e!598612 call!55750)))

(declare-fun b!919078 () Bool)

(assert (=> b!919078 (= e!598609 call!55750)))

(declare-fun b!919079 () Bool)

(declare-fun res!417851 () Bool)

(assert (=> b!919079 (=> res!417851 e!598615)))

(assert (=> b!919079 (= res!417851 (not (is-Concat!4303 (regOne!5452 r!15766))))))

(assert (=> b!919079 (= e!598614 e!598615)))

(declare-fun b!919080 () Bool)

(assert (=> b!919080 (= e!598611 e!598610)))

(declare-fun res!417850 () Bool)

(assert (=> b!919080 (= res!417850 (not (nullable!682 (reg!2799 (regOne!5452 r!15766)))))))

(assert (=> b!919080 (=> (not res!417850) (not e!598610))))

(assert (= (and d!280135 (not res!417848)) b!919073))

(assert (= (and b!919073 c!149041) b!919080))

(assert (= (and b!919073 (not c!149041)) b!919075))

(assert (= (and b!919080 res!417850) b!919074))

(assert (= (and b!919075 c!149040) b!919076))

(assert (= (and b!919075 (not c!149040)) b!919079))

(assert (= (and b!919076 res!417847) b!919077))

(assert (= (and b!919079 (not res!417851)) b!919072))

(assert (= (and b!919072 res!417849) b!919078))

(assert (= (or b!919077 b!919078) bm!55744))

(assert (= (or b!919076 b!919072) bm!55746))

(assert (= (or b!919074 bm!55744) bm!55745))

(declare-fun m!1147125 () Bool)

(assert (=> bm!55745 m!1147125))

(declare-fun m!1147127 () Bool)

(assert (=> bm!55746 m!1147127))

(declare-fun m!1147129 () Bool)

(assert (=> b!919080 m!1147129))

(assert (=> b!918792 d!280135))

(declare-fun d!280137 () Bool)

(assert (=> d!280137 (= (matchR!1008 lt!338024 s!10566) (matchRSpec!271 lt!338024 s!10566))))

(declare-fun lt!338086 () Unit!14559)

(declare-fun choose!5619 (Regex!2470 List!9700) Unit!14559)

(assert (=> d!280137 (= lt!338086 (choose!5619 lt!338024 s!10566))))

(assert (=> d!280137 (validRegex!939 lt!338024)))

(assert (=> d!280137 (= (mainMatchTheorem!271 lt!338024 s!10566) lt!338086)))

(declare-fun bs!236389 () Bool)

(assert (= bs!236389 d!280137))

(assert (=> bs!236389 m!1146977))

(assert (=> bs!236389 m!1146967))

(declare-fun m!1147131 () Bool)

(assert (=> bs!236389 m!1147131))

(assert (=> bs!236389 m!1147045))

(assert (=> b!918792 d!280137))

(declare-fun bs!236390 () Bool)

(declare-fun d!280139 () Bool)

(assert (= bs!236390 (and d!280139 d!280125)))

(declare-fun lambda!29786 () Int)

(assert (=> bs!236390 (= (and (= lt!338023 (regOne!5452 r!15766)) (= lt!338027 (regTwo!5452 r!15766))) (= lambda!29786 lambda!29777))))

(declare-fun bs!236391 () Bool)

(assert (= bs!236391 (and d!280139 d!280129)))

(assert (=> bs!236391 (not (= lambda!29786 lambda!29785))))

(declare-fun bs!236392 () Bool)

(assert (= bs!236392 (and d!280139 b!918797)))

(assert (=> bs!236392 (= (and (= lt!338023 (regOne!5452 r!15766)) (= lt!338027 (regTwo!5452 r!15766))) (= lambda!29786 lambda!29751))))

(declare-fun bs!236393 () Bool)

(assert (= bs!236393 (and d!280139 b!918792)))

(assert (=> bs!236393 (= lambda!29786 lambda!29753)))

(assert (=> bs!236391 (= (and (= lt!338023 (regOne!5452 r!15766)) (= lt!338027 (regTwo!5452 r!15766))) (= lambda!29786 lambda!29784))))

(assert (=> bs!236392 (not (= lambda!29786 lambda!29752))))

(assert (=> bs!236393 (not (= lambda!29786 lambda!29754))))

(assert (=> d!280139 true))

(assert (=> d!280139 true))

(assert (=> d!280139 true))

(assert (=> d!280139 (= (isDefined!1747 (findConcatSeparation!211 lt!338023 lt!338027 Nil!9684 s!10566 s!10566)) (Exists!241 lambda!29786))))

(declare-fun lt!338087 () Unit!14559)

(assert (=> d!280139 (= lt!338087 (choose!5617 lt!338023 lt!338027 s!10566))))

(assert (=> d!280139 (validRegex!939 lt!338023)))

(assert (=> d!280139 (= (lemmaFindConcatSeparationEquivalentToExists!211 lt!338023 lt!338027 s!10566) lt!338087)))

(declare-fun bs!236394 () Bool)

(assert (= bs!236394 d!280139))

(assert (=> bs!236394 m!1146963))

(assert (=> bs!236394 m!1146969))

(declare-fun m!1147133 () Bool)

(assert (=> bs!236394 m!1147133))

(assert (=> bs!236394 m!1146963))

(declare-fun m!1147135 () Bool)

(assert (=> bs!236394 m!1147135))

(declare-fun m!1147137 () Bool)

(assert (=> bs!236394 m!1147137))

(assert (=> b!918792 d!280139))

(declare-fun d!280141 () Bool)

(assert (=> d!280141 (= (Exists!241 lambda!29754) (choose!5616 lambda!29754))))

(declare-fun bs!236395 () Bool)

(assert (= bs!236395 d!280141))

(declare-fun m!1147139 () Bool)

(assert (=> bs!236395 m!1147139))

(assert (=> b!918792 d!280141))

(declare-fun b!919081 () Bool)

(declare-fun lt!338090 () Unit!14559)

(declare-fun lt!338089 () Unit!14559)

(assert (=> b!919081 (= lt!338090 lt!338089)))

(assert (=> b!919081 (= (++!2558 (++!2558 Nil!9684 (Cons!9684 (h!15085 s!10566) Nil!9684)) (t!100746 s!10566)) s!10566)))

(assert (=> b!919081 (= lt!338089 (lemmaMoveElementToOtherListKeepsConcatEq!173 Nil!9684 (h!15085 s!10566) (t!100746 s!10566) s!10566))))

(declare-fun e!598617 () Option!2105)

(assert (=> b!919081 (= e!598617 (findConcatSeparation!211 lt!338023 lt!338027 (++!2558 Nil!9684 (Cons!9684 (h!15085 s!10566) Nil!9684)) (t!100746 s!10566) s!10566))))

(declare-fun b!919082 () Bool)

(assert (=> b!919082 (= e!598617 None!2104)))

(declare-fun b!919083 () Bool)

(declare-fun e!598618 () Option!2105)

(assert (=> b!919083 (= e!598618 (Some!2104 (tuple2!10927 Nil!9684 s!10566)))))

(declare-fun b!919084 () Bool)

(declare-fun e!598616 () Bool)

(assert (=> b!919084 (= e!598616 (matchR!1008 lt!338027 s!10566))))

(declare-fun b!919086 () Bool)

(declare-fun res!417855 () Bool)

(declare-fun e!598620 () Bool)

(assert (=> b!919086 (=> (not res!417855) (not e!598620))))

(declare-fun lt!338088 () Option!2105)

(assert (=> b!919086 (= res!417855 (matchR!1008 lt!338027 (_2!6289 (get!3149 lt!338088))))))

(declare-fun b!919087 () Bool)

(assert (=> b!919087 (= e!598620 (= (++!2558 (_1!6289 (get!3149 lt!338088)) (_2!6289 (get!3149 lt!338088))) s!10566))))

(declare-fun b!919088 () Bool)

(declare-fun res!417854 () Bool)

(assert (=> b!919088 (=> (not res!417854) (not e!598620))))

(assert (=> b!919088 (= res!417854 (matchR!1008 lt!338023 (_1!6289 (get!3149 lt!338088))))))

(declare-fun b!919089 () Bool)

(declare-fun e!598619 () Bool)

(assert (=> b!919089 (= e!598619 (not (isDefined!1747 lt!338088)))))

(declare-fun d!280143 () Bool)

(assert (=> d!280143 e!598619))

(declare-fun res!417856 () Bool)

(assert (=> d!280143 (=> res!417856 e!598619)))

(assert (=> d!280143 (= res!417856 e!598620)))

(declare-fun res!417853 () Bool)

(assert (=> d!280143 (=> (not res!417853) (not e!598620))))

(assert (=> d!280143 (= res!417853 (isDefined!1747 lt!338088))))

(assert (=> d!280143 (= lt!338088 e!598618)))

(declare-fun c!149043 () Bool)

(assert (=> d!280143 (= c!149043 e!598616)))

(declare-fun res!417852 () Bool)

(assert (=> d!280143 (=> (not res!417852) (not e!598616))))

(assert (=> d!280143 (= res!417852 (matchR!1008 lt!338023 Nil!9684))))

(assert (=> d!280143 (validRegex!939 lt!338023)))

(assert (=> d!280143 (= (findConcatSeparation!211 lt!338023 lt!338027 Nil!9684 s!10566 s!10566) lt!338088)))

(declare-fun b!919085 () Bool)

(assert (=> b!919085 (= e!598618 e!598617)))

(declare-fun c!149042 () Bool)

(assert (=> b!919085 (= c!149042 (is-Nil!9684 s!10566))))

(assert (= (and d!280143 res!417852) b!919084))

(assert (= (and d!280143 c!149043) b!919083))

(assert (= (and d!280143 (not c!149043)) b!919085))

(assert (= (and b!919085 c!149042) b!919082))

(assert (= (and b!919085 (not c!149042)) b!919081))

(assert (= (and d!280143 res!417853) b!919088))

(assert (= (and b!919088 res!417854) b!919086))

(assert (= (and b!919086 res!417855) b!919087))

(assert (= (and d!280143 (not res!417856)) b!919089))

(declare-fun m!1147141 () Bool)

(assert (=> d!280143 m!1147141))

(declare-fun m!1147143 () Bool)

(assert (=> d!280143 m!1147143))

(assert (=> d!280143 m!1147135))

(assert (=> b!919089 m!1147141))

(declare-fun m!1147145 () Bool)

(assert (=> b!919086 m!1147145))

(declare-fun m!1147147 () Bool)

(assert (=> b!919086 m!1147147))

(assert (=> b!919087 m!1147145))

(declare-fun m!1147149 () Bool)

(assert (=> b!919087 m!1147149))

(assert (=> b!919081 m!1147099))

(assert (=> b!919081 m!1147099))

(assert (=> b!919081 m!1147101))

(assert (=> b!919081 m!1147103))

(assert (=> b!919081 m!1147099))

(declare-fun m!1147151 () Bool)

(assert (=> b!919081 m!1147151))

(assert (=> b!919088 m!1147145))

(declare-fun m!1147153 () Bool)

(assert (=> b!919088 m!1147153))

(declare-fun m!1147155 () Bool)

(assert (=> b!919084 m!1147155))

(assert (=> b!918792 d!280143))

(declare-fun d!280145 () Bool)

(assert (=> d!280145 (= (isDefined!1747 (findConcatSeparation!211 lt!338023 lt!338027 Nil!9684 s!10566 s!10566)) (not (isEmpty!5923 (findConcatSeparation!211 lt!338023 lt!338027 Nil!9684 s!10566 s!10566))))))

(declare-fun bs!236396 () Bool)

(assert (= bs!236396 d!280145))

(assert (=> bs!236396 m!1146963))

(declare-fun m!1147157 () Bool)

(assert (=> bs!236396 m!1147157))

(assert (=> b!918792 d!280145))

(declare-fun bs!236397 () Bool)

(declare-fun d!280147 () Bool)

(assert (= bs!236397 (and d!280147 d!280125)))

(declare-fun lambda!29787 () Int)

(assert (=> bs!236397 (= (and (= lt!338023 (regOne!5452 r!15766)) (= lt!338027 (regTwo!5452 r!15766))) (= lambda!29787 lambda!29777))))

(declare-fun bs!236398 () Bool)

(assert (= bs!236398 (and d!280147 d!280129)))

(assert (=> bs!236398 (not (= lambda!29787 lambda!29785))))

(declare-fun bs!236399 () Bool)

(assert (= bs!236399 (and d!280147 b!918797)))

(assert (=> bs!236399 (= (and (= lt!338023 (regOne!5452 r!15766)) (= lt!338027 (regTwo!5452 r!15766))) (= lambda!29787 lambda!29751))))

(declare-fun bs!236400 () Bool)

(assert (= bs!236400 (and d!280147 b!918792)))

(assert (=> bs!236400 (= lambda!29787 lambda!29753)))

(declare-fun bs!236401 () Bool)

(assert (= bs!236401 (and d!280147 d!280139)))

(assert (=> bs!236401 (= lambda!29787 lambda!29786)))

(assert (=> bs!236398 (= (and (= lt!338023 (regOne!5452 r!15766)) (= lt!338027 (regTwo!5452 r!15766))) (= lambda!29787 lambda!29784))))

(assert (=> bs!236399 (not (= lambda!29787 lambda!29752))))

(assert (=> bs!236400 (not (= lambda!29787 lambda!29754))))

(assert (=> d!280147 true))

(assert (=> d!280147 true))

(assert (=> d!280147 true))

(declare-fun lambda!29788 () Int)

(assert (=> bs!236397 (not (= lambda!29788 lambda!29777))))

(assert (=> bs!236398 (= (and (= lt!338023 (regOne!5452 r!15766)) (= lt!338027 (regTwo!5452 r!15766))) (= lambda!29788 lambda!29785))))

(assert (=> bs!236399 (not (= lambda!29788 lambda!29751))))

(declare-fun bs!236402 () Bool)

(assert (= bs!236402 d!280147))

(assert (=> bs!236402 (not (= lambda!29788 lambda!29787))))

(assert (=> bs!236400 (not (= lambda!29788 lambda!29753))))

(assert (=> bs!236401 (not (= lambda!29788 lambda!29786))))

(assert (=> bs!236398 (not (= lambda!29788 lambda!29784))))

(assert (=> bs!236399 (= (and (= lt!338023 (regOne!5452 r!15766)) (= lt!338027 (regTwo!5452 r!15766))) (= lambda!29788 lambda!29752))))

(assert (=> bs!236400 (= lambda!29788 lambda!29754)))

(assert (=> d!280147 true))

(assert (=> d!280147 true))

(assert (=> d!280147 true))

(assert (=> d!280147 (= (Exists!241 lambda!29787) (Exists!241 lambda!29788))))

(declare-fun lt!338091 () Unit!14559)

(assert (=> d!280147 (= lt!338091 (choose!5618 lt!338023 lt!338027 s!10566))))

(assert (=> d!280147 (validRegex!939 lt!338023)))

(assert (=> d!280147 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!153 lt!338023 lt!338027 s!10566) lt!338091)))

(declare-fun m!1147159 () Bool)

(assert (=> bs!236402 m!1147159))

(declare-fun m!1147161 () Bool)

(assert (=> bs!236402 m!1147161))

(declare-fun m!1147163 () Bool)

(assert (=> bs!236402 m!1147163))

(assert (=> bs!236402 m!1147135))

(assert (=> b!918792 d!280147))

(declare-fun bs!236405 () Bool)

(declare-fun b!919137 () Bool)

(assert (= bs!236405 (and b!919137 d!280125)))

(declare-fun lambda!29793 () Int)

(assert (=> bs!236405 (not (= lambda!29793 lambda!29777))))

(declare-fun bs!236406 () Bool)

(assert (= bs!236406 (and b!919137 d!280129)))

(assert (=> bs!236406 (not (= lambda!29793 lambda!29785))))

(declare-fun bs!236407 () Bool)

(assert (= bs!236407 (and b!919137 b!918797)))

(assert (=> bs!236407 (not (= lambda!29793 lambda!29751))))

(declare-fun bs!236408 () Bool)

(assert (= bs!236408 (and b!919137 d!280147)))

(assert (=> bs!236408 (not (= lambda!29793 lambda!29787))))

(declare-fun bs!236409 () Bool)

(assert (= bs!236409 (and b!919137 b!918792)))

(assert (=> bs!236409 (not (= lambda!29793 lambda!29753))))

(declare-fun bs!236410 () Bool)

(assert (= bs!236410 (and b!919137 d!280139)))

(assert (=> bs!236410 (not (= lambda!29793 lambda!29786))))

(assert (=> bs!236408 (not (= lambda!29793 lambda!29788))))

(assert (=> bs!236406 (not (= lambda!29793 lambda!29784))))

(assert (=> bs!236407 (not (= lambda!29793 lambda!29752))))

(assert (=> bs!236409 (not (= lambda!29793 lambda!29754))))

(assert (=> b!919137 true))

(assert (=> b!919137 true))

(declare-fun bs!236411 () Bool)

(declare-fun b!919141 () Bool)

(assert (= bs!236411 (and b!919141 d!280125)))

(declare-fun lambda!29794 () Int)

(assert (=> bs!236411 (not (= lambda!29794 lambda!29777))))

(declare-fun bs!236412 () Bool)

(assert (= bs!236412 (and b!919141 d!280129)))

(assert (=> bs!236412 (= (and (= (regOne!5452 lt!338024) (regOne!5452 r!15766)) (= (regTwo!5452 lt!338024) (regTwo!5452 r!15766))) (= lambda!29794 lambda!29785))))

(declare-fun bs!236413 () Bool)

(assert (= bs!236413 (and b!919141 b!918797)))

(assert (=> bs!236413 (not (= lambda!29794 lambda!29751))))

(declare-fun bs!236414 () Bool)

(assert (= bs!236414 (and b!919141 d!280147)))

(assert (=> bs!236414 (not (= lambda!29794 lambda!29787))))

(declare-fun bs!236415 () Bool)

(assert (= bs!236415 (and b!919141 b!918792)))

(assert (=> bs!236415 (not (= lambda!29794 lambda!29753))))

(declare-fun bs!236416 () Bool)

(assert (= bs!236416 (and b!919141 d!280139)))

(assert (=> bs!236416 (not (= lambda!29794 lambda!29786))))

(assert (=> bs!236414 (= (and (= (regOne!5452 lt!338024) lt!338023) (= (regTwo!5452 lt!338024) lt!338027)) (= lambda!29794 lambda!29788))))

(declare-fun bs!236417 () Bool)

(assert (= bs!236417 (and b!919141 b!919137)))

(assert (=> bs!236417 (not (= lambda!29794 lambda!29793))))

(assert (=> bs!236412 (not (= lambda!29794 lambda!29784))))

(assert (=> bs!236413 (= (and (= (regOne!5452 lt!338024) (regOne!5452 r!15766)) (= (regTwo!5452 lt!338024) (regTwo!5452 r!15766))) (= lambda!29794 lambda!29752))))

(assert (=> bs!236415 (= (and (= (regOne!5452 lt!338024) lt!338023) (= (regTwo!5452 lt!338024) lt!338027)) (= lambda!29794 lambda!29754))))

(assert (=> b!919141 true))

(assert (=> b!919141 true))

(declare-fun d!280149 () Bool)

(declare-fun c!149056 () Bool)

(assert (=> d!280149 (= c!149056 (is-EmptyExpr!2470 lt!338024))))

(declare-fun e!598648 () Bool)

(assert (=> d!280149 (= (matchRSpec!271 lt!338024 s!10566) e!598648)))

(declare-fun bm!55754 () Bool)

(declare-fun c!149057 () Bool)

(declare-fun call!55760 () Bool)

(assert (=> bm!55754 (= call!55760 (Exists!241 (ite c!149057 lambda!29793 lambda!29794)))))

(declare-fun b!919136 () Bool)

(declare-fun c!149055 () Bool)

(assert (=> b!919136 (= c!149055 (is-ElementMatch!2470 lt!338024))))

(declare-fun e!598650 () Bool)

(declare-fun e!598647 () Bool)

(assert (=> b!919136 (= e!598650 e!598647)))

(declare-fun e!598651 () Bool)

(assert (=> b!919137 (= e!598651 call!55760)))

(declare-fun b!919138 () Bool)

(assert (=> b!919138 (= e!598648 e!598650)))

(declare-fun res!417881 () Bool)

(assert (=> b!919138 (= res!417881 (not (is-EmptyLang!2470 lt!338024)))))

(assert (=> b!919138 (=> (not res!417881) (not e!598650))))

(declare-fun b!919139 () Bool)

(declare-fun c!149058 () Bool)

(assert (=> b!919139 (= c!149058 (is-Union!2470 lt!338024))))

(declare-fun e!598646 () Bool)

(assert (=> b!919139 (= e!598647 e!598646)))

(declare-fun b!919140 () Bool)

(declare-fun e!598652 () Bool)

(assert (=> b!919140 (= e!598646 e!598652)))

(assert (=> b!919140 (= c!149057 (is-Star!2470 lt!338024))))

(assert (=> b!919141 (= e!598652 call!55760)))

(declare-fun b!919142 () Bool)

(assert (=> b!919142 (= e!598647 (= s!10566 (Cons!9684 (c!148981 lt!338024) Nil!9684)))))

(declare-fun b!919143 () Bool)

(declare-fun res!417882 () Bool)

(assert (=> b!919143 (=> res!417882 e!598651)))

(declare-fun call!55759 () Bool)

(assert (=> b!919143 (= res!417882 call!55759)))

(assert (=> b!919143 (= e!598652 e!598651)))

(declare-fun bm!55755 () Bool)

(assert (=> bm!55755 (= call!55759 (isEmpty!5921 s!10566))))

(declare-fun b!919144 () Bool)

(assert (=> b!919144 (= e!598648 call!55759)))

(declare-fun b!919145 () Bool)

(declare-fun e!598649 () Bool)

(assert (=> b!919145 (= e!598649 (matchRSpec!271 (regTwo!5453 lt!338024) s!10566))))

(declare-fun b!919146 () Bool)

(assert (=> b!919146 (= e!598646 e!598649)))

(declare-fun res!417883 () Bool)

(assert (=> b!919146 (= res!417883 (matchRSpec!271 (regOne!5453 lt!338024) s!10566))))

(assert (=> b!919146 (=> res!417883 e!598649)))

(assert (= (and d!280149 c!149056) b!919144))

(assert (= (and d!280149 (not c!149056)) b!919138))

(assert (= (and b!919138 res!417881) b!919136))

(assert (= (and b!919136 c!149055) b!919142))

(assert (= (and b!919136 (not c!149055)) b!919139))

(assert (= (and b!919139 c!149058) b!919146))

(assert (= (and b!919139 (not c!149058)) b!919140))

(assert (= (and b!919146 (not res!417883)) b!919145))

(assert (= (and b!919140 c!149057) b!919143))

(assert (= (and b!919140 (not c!149057)) b!919141))

(assert (= (and b!919143 (not res!417882)) b!919137))

(assert (= (or b!919137 b!919141) bm!55754))

(assert (= (or b!919144 b!919143) bm!55755))

(declare-fun m!1147181 () Bool)

(assert (=> bm!55754 m!1147181))

(assert (=> bm!55755 m!1146989))

(declare-fun m!1147183 () Bool)

(assert (=> b!919145 m!1147183))

(declare-fun m!1147185 () Bool)

(assert (=> b!919146 m!1147185))

(assert (=> b!918792 d!280149))

(declare-fun d!280159 () Bool)

(assert (=> d!280159 (= (Exists!241 lambda!29753) (choose!5616 lambda!29753))))

(declare-fun bs!236418 () Bool)

(assert (= bs!236418 d!280159))

(declare-fun m!1147187 () Bool)

(assert (=> bs!236418 m!1147187))

(assert (=> b!918792 d!280159))

(declare-fun bs!236419 () Bool)

(declare-fun b!919148 () Bool)

(assert (= bs!236419 (and b!919148 d!280125)))

(declare-fun lambda!29795 () Int)

(assert (=> bs!236419 (not (= lambda!29795 lambda!29777))))

(declare-fun bs!236420 () Bool)

(assert (= bs!236420 (and b!919148 d!280129)))

(assert (=> bs!236420 (not (= lambda!29795 lambda!29785))))

(declare-fun bs!236421 () Bool)

(assert (= bs!236421 (and b!919148 b!918797)))

(assert (=> bs!236421 (not (= lambda!29795 lambda!29751))))

(declare-fun bs!236422 () Bool)

(assert (= bs!236422 (and b!919148 d!280147)))

(assert (=> bs!236422 (not (= lambda!29795 lambda!29787))))

(declare-fun bs!236423 () Bool)

(assert (= bs!236423 (and b!919148 b!918792)))

(assert (=> bs!236423 (not (= lambda!29795 lambda!29753))))

(assert (=> bs!236422 (not (= lambda!29795 lambda!29788))))

(declare-fun bs!236424 () Bool)

(assert (= bs!236424 (and b!919148 b!919137)))

(assert (=> bs!236424 (= (and (= (reg!2799 r!15766) (reg!2799 lt!338024)) (= r!15766 lt!338024)) (= lambda!29795 lambda!29793))))

(assert (=> bs!236420 (not (= lambda!29795 lambda!29784))))

(assert (=> bs!236421 (not (= lambda!29795 lambda!29752))))

(assert (=> bs!236423 (not (= lambda!29795 lambda!29754))))

(declare-fun bs!236425 () Bool)

(assert (= bs!236425 (and b!919148 b!919141)))

(assert (=> bs!236425 (not (= lambda!29795 lambda!29794))))

(declare-fun bs!236426 () Bool)

(assert (= bs!236426 (and b!919148 d!280139)))

(assert (=> bs!236426 (not (= lambda!29795 lambda!29786))))

(assert (=> b!919148 true))

(assert (=> b!919148 true))

(declare-fun bs!236427 () Bool)

(declare-fun b!919152 () Bool)

(assert (= bs!236427 (and b!919152 d!280125)))

(declare-fun lambda!29796 () Int)

(assert (=> bs!236427 (not (= lambda!29796 lambda!29777))))

(declare-fun bs!236428 () Bool)

(assert (= bs!236428 (and b!919152 d!280129)))

(assert (=> bs!236428 (= lambda!29796 lambda!29785)))

(declare-fun bs!236429 () Bool)

(assert (= bs!236429 (and b!919152 b!918797)))

(assert (=> bs!236429 (not (= lambda!29796 lambda!29751))))

(declare-fun bs!236430 () Bool)

(assert (= bs!236430 (and b!919152 d!280147)))

(assert (=> bs!236430 (not (= lambda!29796 lambda!29787))))

(assert (=> bs!236430 (= (and (= (regOne!5452 r!15766) lt!338023) (= (regTwo!5452 r!15766) lt!338027)) (= lambda!29796 lambda!29788))))

(declare-fun bs!236431 () Bool)

(assert (= bs!236431 (and b!919152 b!919137)))

(assert (=> bs!236431 (not (= lambda!29796 lambda!29793))))

(declare-fun bs!236432 () Bool)

(assert (= bs!236432 (and b!919152 b!919148)))

(assert (=> bs!236432 (not (= lambda!29796 lambda!29795))))

(declare-fun bs!236433 () Bool)

(assert (= bs!236433 (and b!919152 b!918792)))

(assert (=> bs!236433 (not (= lambda!29796 lambda!29753))))

(assert (=> bs!236428 (not (= lambda!29796 lambda!29784))))

(assert (=> bs!236429 (= lambda!29796 lambda!29752)))

(assert (=> bs!236433 (= (and (= (regOne!5452 r!15766) lt!338023) (= (regTwo!5452 r!15766) lt!338027)) (= lambda!29796 lambda!29754))))

(declare-fun bs!236434 () Bool)

(assert (= bs!236434 (and b!919152 b!919141)))

(assert (=> bs!236434 (= (and (= (regOne!5452 r!15766) (regOne!5452 lt!338024)) (= (regTwo!5452 r!15766) (regTwo!5452 lt!338024))) (= lambda!29796 lambda!29794))))

(declare-fun bs!236435 () Bool)

(assert (= bs!236435 (and b!919152 d!280139)))

(assert (=> bs!236435 (not (= lambda!29796 lambda!29786))))

(assert (=> b!919152 true))

(assert (=> b!919152 true))

(declare-fun d!280161 () Bool)

(declare-fun c!149060 () Bool)

(assert (=> d!280161 (= c!149060 (is-EmptyExpr!2470 r!15766))))

(declare-fun e!598655 () Bool)

(assert (=> d!280161 (= (matchRSpec!271 r!15766 s!10566) e!598655)))

(declare-fun call!55762 () Bool)

(declare-fun c!149061 () Bool)

(declare-fun bm!55756 () Bool)

(assert (=> bm!55756 (= call!55762 (Exists!241 (ite c!149061 lambda!29795 lambda!29796)))))

(declare-fun b!919147 () Bool)

(declare-fun c!149059 () Bool)

(assert (=> b!919147 (= c!149059 (is-ElementMatch!2470 r!15766))))

(declare-fun e!598657 () Bool)

(declare-fun e!598654 () Bool)

(assert (=> b!919147 (= e!598657 e!598654)))

(declare-fun e!598658 () Bool)

(assert (=> b!919148 (= e!598658 call!55762)))

(declare-fun b!919149 () Bool)

(assert (=> b!919149 (= e!598655 e!598657)))

(declare-fun res!417884 () Bool)

(assert (=> b!919149 (= res!417884 (not (is-EmptyLang!2470 r!15766)))))

(assert (=> b!919149 (=> (not res!417884) (not e!598657))))

(declare-fun b!919150 () Bool)

(declare-fun c!149062 () Bool)

(assert (=> b!919150 (= c!149062 (is-Union!2470 r!15766))))

(declare-fun e!598653 () Bool)

(assert (=> b!919150 (= e!598654 e!598653)))

(declare-fun b!919151 () Bool)

(declare-fun e!598659 () Bool)

(assert (=> b!919151 (= e!598653 e!598659)))

(assert (=> b!919151 (= c!149061 (is-Star!2470 r!15766))))

(assert (=> b!919152 (= e!598659 call!55762)))

(declare-fun b!919153 () Bool)

(assert (=> b!919153 (= e!598654 (= s!10566 (Cons!9684 (c!148981 r!15766) Nil!9684)))))

(declare-fun b!919154 () Bool)

(declare-fun res!417885 () Bool)

(assert (=> b!919154 (=> res!417885 e!598658)))

(declare-fun call!55761 () Bool)

(assert (=> b!919154 (= res!417885 call!55761)))

(assert (=> b!919154 (= e!598659 e!598658)))

(declare-fun bm!55757 () Bool)

(assert (=> bm!55757 (= call!55761 (isEmpty!5921 s!10566))))

(declare-fun b!919155 () Bool)

(assert (=> b!919155 (= e!598655 call!55761)))

(declare-fun b!919156 () Bool)

(declare-fun e!598656 () Bool)

(assert (=> b!919156 (= e!598656 (matchRSpec!271 (regTwo!5453 r!15766) s!10566))))

(declare-fun b!919157 () Bool)

(assert (=> b!919157 (= e!598653 e!598656)))

(declare-fun res!417886 () Bool)

(assert (=> b!919157 (= res!417886 (matchRSpec!271 (regOne!5453 r!15766) s!10566))))

(assert (=> b!919157 (=> res!417886 e!598656)))

(assert (= (and d!280161 c!149060) b!919155))

(assert (= (and d!280161 (not c!149060)) b!919149))

(assert (= (and b!919149 res!417884) b!919147))

(assert (= (and b!919147 c!149059) b!919153))

(assert (= (and b!919147 (not c!149059)) b!919150))

(assert (= (and b!919150 c!149062) b!919157))

(assert (= (and b!919150 (not c!149062)) b!919151))

(assert (= (and b!919157 (not res!417886)) b!919156))

(assert (= (and b!919151 c!149061) b!919154))

(assert (= (and b!919151 (not c!149061)) b!919152))

(assert (= (and b!919154 (not res!417885)) b!919148))

(assert (= (or b!919148 b!919152) bm!55756))

(assert (= (or b!919155 b!919154) bm!55757))

(declare-fun m!1147189 () Bool)

(assert (=> bm!55756 m!1147189))

(assert (=> bm!55757 m!1146989))

(declare-fun m!1147191 () Bool)

(assert (=> b!919156 m!1147191))

(declare-fun m!1147193 () Bool)

(assert (=> b!919157 m!1147193))

(assert (=> b!918798 d!280161))

(declare-fun b!919158 () Bool)

(declare-fun e!598663 () Bool)

(assert (=> b!919158 (= e!598663 (nullable!682 r!15766))))

(declare-fun b!919159 () Bool)

(declare-fun e!598660 () Bool)

(declare-fun e!598666 () Bool)

(assert (=> b!919159 (= e!598660 e!598666)))

(declare-fun c!149063 () Bool)

(assert (=> b!919159 (= c!149063 (is-EmptyLang!2470 r!15766))))

(declare-fun b!919160 () Bool)

(declare-fun e!598664 () Bool)

(declare-fun e!598662 () Bool)

(assert (=> b!919160 (= e!598664 e!598662)))

(declare-fun res!417887 () Bool)

(assert (=> b!919160 (=> res!417887 e!598662)))

(declare-fun call!55763 () Bool)

(assert (=> b!919160 (= res!417887 call!55763)))

(declare-fun d!280163 () Bool)

(assert (=> d!280163 e!598660))

(declare-fun c!149064 () Bool)

(assert (=> d!280163 (= c!149064 (is-EmptyExpr!2470 r!15766))))

(declare-fun lt!338096 () Bool)

(assert (=> d!280163 (= lt!338096 e!598663)))

(declare-fun c!149065 () Bool)

(assert (=> d!280163 (= c!149065 (isEmpty!5921 s!10566))))

(assert (=> d!280163 (validRegex!939 r!15766)))

(assert (=> d!280163 (= (matchR!1008 r!15766 s!10566) lt!338096)))

(declare-fun b!919161 () Bool)

(declare-fun res!417888 () Bool)

(declare-fun e!598661 () Bool)

(assert (=> b!919161 (=> (not res!417888) (not e!598661))))

(assert (=> b!919161 (= res!417888 (isEmpty!5921 (tail!1207 s!10566)))))

(declare-fun b!919162 () Bool)

(assert (=> b!919162 (= e!598662 (not (= (head!1645 s!10566) (c!148981 r!15766))))))

(declare-fun b!919163 () Bool)

(assert (=> b!919163 (= e!598663 (matchR!1008 (derivativeStep!492 r!15766 (head!1645 s!10566)) (tail!1207 s!10566)))))

(declare-fun b!919164 () Bool)

(declare-fun res!417890 () Bool)

(assert (=> b!919164 (=> (not res!417890) (not e!598661))))

(assert (=> b!919164 (= res!417890 (not call!55763))))

(declare-fun b!919165 () Bool)

(declare-fun res!417893 () Bool)

(declare-fun e!598665 () Bool)

(assert (=> b!919165 (=> res!417893 e!598665)))

(assert (=> b!919165 (= res!417893 (not (is-ElementMatch!2470 r!15766)))))

(assert (=> b!919165 (= e!598666 e!598665)))

(declare-fun b!919166 () Bool)

(assert (=> b!919166 (= e!598661 (= (head!1645 s!10566) (c!148981 r!15766)))))

(declare-fun b!919167 () Bool)

(assert (=> b!919167 (= e!598666 (not lt!338096))))

(declare-fun b!919168 () Bool)

(assert (=> b!919168 (= e!598665 e!598664)))

(declare-fun res!417892 () Bool)

(assert (=> b!919168 (=> (not res!417892) (not e!598664))))

(assert (=> b!919168 (= res!417892 (not lt!338096))))

(declare-fun b!919169 () Bool)

(declare-fun res!417891 () Bool)

(assert (=> b!919169 (=> res!417891 e!598665)))

(assert (=> b!919169 (= res!417891 e!598661)))

(declare-fun res!417894 () Bool)

(assert (=> b!919169 (=> (not res!417894) (not e!598661))))

(assert (=> b!919169 (= res!417894 lt!338096)))

(declare-fun b!919170 () Bool)

(assert (=> b!919170 (= e!598660 (= lt!338096 call!55763))))

(declare-fun bm!55758 () Bool)

(assert (=> bm!55758 (= call!55763 (isEmpty!5921 s!10566))))

(declare-fun b!919171 () Bool)

(declare-fun res!417889 () Bool)

(assert (=> b!919171 (=> res!417889 e!598662)))

(assert (=> b!919171 (= res!417889 (not (isEmpty!5921 (tail!1207 s!10566))))))

(assert (= (and d!280163 c!149065) b!919158))

(assert (= (and d!280163 (not c!149065)) b!919163))

(assert (= (and d!280163 c!149064) b!919170))

(assert (= (and d!280163 (not c!149064)) b!919159))

(assert (= (and b!919159 c!149063) b!919167))

(assert (= (and b!919159 (not c!149063)) b!919165))

(assert (= (and b!919165 (not res!417893)) b!919169))

(assert (= (and b!919169 res!417894) b!919164))

(assert (= (and b!919164 res!417890) b!919161))

(assert (= (and b!919161 res!417888) b!919166))

(assert (= (and b!919169 (not res!417891)) b!919168))

(assert (= (and b!919168 res!417892) b!919160))

(assert (= (and b!919160 (not res!417887)) b!919171))

(assert (= (and b!919171 (not res!417889)) b!919162))

(assert (= (or b!919170 b!919160 b!919164) bm!55758))

(assert (=> d!280163 m!1146989))

(assert (=> d!280163 m!1146997))

(assert (=> b!919166 m!1147047))

(assert (=> b!919162 m!1147047))

(assert (=> b!919161 m!1147049))

(assert (=> b!919161 m!1147049))

(assert (=> b!919161 m!1147051))

(assert (=> b!919163 m!1147047))

(assert (=> b!919163 m!1147047))

(declare-fun m!1147195 () Bool)

(assert (=> b!919163 m!1147195))

(assert (=> b!919163 m!1147049))

(assert (=> b!919163 m!1147195))

(assert (=> b!919163 m!1147049))

(declare-fun m!1147197 () Bool)

(assert (=> b!919163 m!1147197))

(assert (=> b!919171 m!1147049))

(assert (=> b!919171 m!1147049))

(assert (=> b!919171 m!1147051))

(assert (=> bm!55758 m!1146989))

(declare-fun m!1147199 () Bool)

(assert (=> b!919158 m!1147199))

(assert (=> b!918798 d!280163))

(declare-fun d!280165 () Bool)

(assert (=> d!280165 (= (matchR!1008 r!15766 s!10566) (matchRSpec!271 r!15766 s!10566))))

(declare-fun lt!338099 () Unit!14559)

(assert (=> d!280165 (= lt!338099 (choose!5619 r!15766 s!10566))))

(assert (=> d!280165 (validRegex!939 r!15766)))

(assert (=> d!280165 (= (mainMatchTheorem!271 r!15766 s!10566) lt!338099)))

(declare-fun bs!236436 () Bool)

(assert (= bs!236436 d!280165))

(assert (=> bs!236436 m!1146955))

(assert (=> bs!236436 m!1146953))

(declare-fun m!1147201 () Bool)

(assert (=> bs!236436 m!1147201))

(assert (=> bs!236436 m!1146997))

(assert (=> b!918798 d!280165))

(declare-fun bm!55759 () Bool)

(declare-fun call!55765 () Bool)

(declare-fun call!55766 () Bool)

(assert (=> bm!55759 (= call!55765 call!55766)))

(declare-fun b!919172 () Bool)

(declare-fun e!598673 () Bool)

(declare-fun e!598667 () Bool)

(assert (=> b!919172 (= e!598673 e!598667)))

(declare-fun res!417897 () Bool)

(assert (=> b!919172 (=> (not res!417897) (not e!598667))))

(declare-fun call!55764 () Bool)

(assert (=> b!919172 (= res!417897 call!55764)))

(declare-fun b!919173 () Bool)

(declare-fun e!598671 () Bool)

(declare-fun e!598669 () Bool)

(assert (=> b!919173 (= e!598671 e!598669)))

(declare-fun c!149067 () Bool)

(assert (=> b!919173 (= c!149067 (is-Star!2470 r!15766))))

(declare-fun b!919174 () Bool)

(declare-fun e!598668 () Bool)

(assert (=> b!919174 (= e!598668 call!55766)))

(declare-fun d!280167 () Bool)

(declare-fun res!417896 () Bool)

(assert (=> d!280167 (=> res!417896 e!598671)))

(assert (=> d!280167 (= res!417896 (is-ElementMatch!2470 r!15766))))

(assert (=> d!280167 (= (validRegex!939 r!15766) e!598671)))

(declare-fun bm!55760 () Bool)

(declare-fun c!149066 () Bool)

(assert (=> bm!55760 (= call!55766 (validRegex!939 (ite c!149067 (reg!2799 r!15766) (ite c!149066 (regTwo!5453 r!15766) (regTwo!5452 r!15766)))))))

(declare-fun bm!55761 () Bool)

(assert (=> bm!55761 (= call!55764 (validRegex!939 (ite c!149066 (regOne!5453 r!15766) (regOne!5452 r!15766))))))

(declare-fun b!919175 () Bool)

(declare-fun e!598672 () Bool)

(assert (=> b!919175 (= e!598669 e!598672)))

(assert (=> b!919175 (= c!149066 (is-Union!2470 r!15766))))

(declare-fun b!919176 () Bool)

(declare-fun res!417895 () Bool)

(declare-fun e!598670 () Bool)

(assert (=> b!919176 (=> (not res!417895) (not e!598670))))

(assert (=> b!919176 (= res!417895 call!55764)))

(assert (=> b!919176 (= e!598672 e!598670)))

(declare-fun b!919177 () Bool)

(assert (=> b!919177 (= e!598670 call!55765)))

(declare-fun b!919178 () Bool)

(assert (=> b!919178 (= e!598667 call!55765)))

(declare-fun b!919179 () Bool)

(declare-fun res!417899 () Bool)

(assert (=> b!919179 (=> res!417899 e!598673)))

(assert (=> b!919179 (= res!417899 (not (is-Concat!4303 r!15766)))))

(assert (=> b!919179 (= e!598672 e!598673)))

(declare-fun b!919180 () Bool)

(assert (=> b!919180 (= e!598669 e!598668)))

(declare-fun res!417898 () Bool)

(assert (=> b!919180 (= res!417898 (not (nullable!682 (reg!2799 r!15766))))))

(assert (=> b!919180 (=> (not res!417898) (not e!598668))))

(assert (= (and d!280167 (not res!417896)) b!919173))

(assert (= (and b!919173 c!149067) b!919180))

(assert (= (and b!919173 (not c!149067)) b!919175))

(assert (= (and b!919180 res!417898) b!919174))

(assert (= (and b!919175 c!149066) b!919176))

(assert (= (and b!919175 (not c!149066)) b!919179))

(assert (= (and b!919176 res!417895) b!919177))

(assert (= (and b!919179 (not res!417899)) b!919172))

(assert (= (and b!919172 res!417897) b!919178))

(assert (= (or b!919177 b!919178) bm!55759))

(assert (= (or b!919176 b!919172) bm!55761))

(assert (= (or b!919174 bm!55759) bm!55760))

(declare-fun m!1147203 () Bool)

(assert (=> bm!55760 m!1147203))

(declare-fun m!1147205 () Bool)

(assert (=> bm!55761 m!1147205))

(declare-fun m!1147207 () Bool)

(assert (=> b!919180 m!1147207))

(assert (=> start!82548 d!280167))

(declare-fun b!919191 () Bool)

(declare-fun e!598676 () Bool)

(assert (=> b!919191 (= e!598676 tp_is_empty!4583)))

(declare-fun b!919194 () Bool)

(declare-fun tp!286575 () Bool)

(declare-fun tp!286578 () Bool)

(assert (=> b!919194 (= e!598676 (and tp!286575 tp!286578))))

(declare-fun b!919193 () Bool)

(declare-fun tp!286576 () Bool)

(assert (=> b!919193 (= e!598676 tp!286576)))

(assert (=> b!918795 (= tp!286545 e!598676)))

(declare-fun b!919192 () Bool)

(declare-fun tp!286577 () Bool)

(declare-fun tp!286579 () Bool)

(assert (=> b!919192 (= e!598676 (and tp!286577 tp!286579))))

(assert (= (and b!918795 (is-ElementMatch!2470 (regOne!5453 r!15766))) b!919191))

(assert (= (and b!918795 (is-Concat!4303 (regOne!5453 r!15766))) b!919192))

(assert (= (and b!918795 (is-Star!2470 (regOne!5453 r!15766))) b!919193))

(assert (= (and b!918795 (is-Union!2470 (regOne!5453 r!15766))) b!919194))

(declare-fun b!919195 () Bool)

(declare-fun e!598679 () Bool)

(assert (=> b!919195 (= e!598679 tp_is_empty!4583)))

(declare-fun b!919198 () Bool)

(declare-fun tp!286580 () Bool)

(declare-fun tp!286583 () Bool)

(assert (=> b!919198 (= e!598679 (and tp!286580 tp!286583))))

(declare-fun b!919197 () Bool)

(declare-fun tp!286581 () Bool)

(assert (=> b!919197 (= e!598679 tp!286581)))

(assert (=> b!918795 (= tp!286543 e!598679)))

(declare-fun b!919196 () Bool)

(declare-fun tp!286582 () Bool)

(declare-fun tp!286584 () Bool)

(assert (=> b!919196 (= e!598679 (and tp!286582 tp!286584))))

(assert (= (and b!918795 (is-ElementMatch!2470 (regTwo!5453 r!15766))) b!919195))

(assert (= (and b!918795 (is-Concat!4303 (regTwo!5453 r!15766))) b!919196))

(assert (= (and b!918795 (is-Star!2470 (regTwo!5453 r!15766))) b!919197))

(assert (= (and b!918795 (is-Union!2470 (regTwo!5453 r!15766))) b!919198))

(declare-fun b!919203 () Bool)

(declare-fun e!598680 () Bool)

(assert (=> b!919203 (= e!598680 tp_is_empty!4583)))

(declare-fun b!919206 () Bool)

(declare-fun tp!286585 () Bool)

(declare-fun tp!286588 () Bool)

(assert (=> b!919206 (= e!598680 (and tp!286585 tp!286588))))

(declare-fun b!919205 () Bool)

(declare-fun tp!286586 () Bool)

(assert (=> b!919205 (= e!598680 tp!286586)))

(assert (=> b!918790 (= tp!286544 e!598680)))

(declare-fun b!919204 () Bool)

(declare-fun tp!286587 () Bool)

(declare-fun tp!286589 () Bool)

(assert (=> b!919204 (= e!598680 (and tp!286587 tp!286589))))

(assert (= (and b!918790 (is-ElementMatch!2470 (regOne!5452 r!15766))) b!919203))

(assert (= (and b!918790 (is-Concat!4303 (regOne!5452 r!15766))) b!919204))

(assert (= (and b!918790 (is-Star!2470 (regOne!5452 r!15766))) b!919205))

(assert (= (and b!918790 (is-Union!2470 (regOne!5452 r!15766))) b!919206))

(declare-fun b!919207 () Bool)

(declare-fun e!598681 () Bool)

(assert (=> b!919207 (= e!598681 tp_is_empty!4583)))

(declare-fun b!919210 () Bool)

(declare-fun tp!286590 () Bool)

(declare-fun tp!286593 () Bool)

(assert (=> b!919210 (= e!598681 (and tp!286590 tp!286593))))

(declare-fun b!919209 () Bool)

(declare-fun tp!286591 () Bool)

(assert (=> b!919209 (= e!598681 tp!286591)))

(assert (=> b!918790 (= tp!286546 e!598681)))

(declare-fun b!919208 () Bool)

(declare-fun tp!286592 () Bool)

(declare-fun tp!286594 () Bool)

(assert (=> b!919208 (= e!598681 (and tp!286592 tp!286594))))

(assert (= (and b!918790 (is-ElementMatch!2470 (regTwo!5452 r!15766))) b!919207))

(assert (= (and b!918790 (is-Concat!4303 (regTwo!5452 r!15766))) b!919208))

(assert (= (and b!918790 (is-Star!2470 (regTwo!5452 r!15766))) b!919209))

(assert (= (and b!918790 (is-Union!2470 (regTwo!5452 r!15766))) b!919210))

(declare-fun b!919211 () Bool)

(declare-fun e!598682 () Bool)

(assert (=> b!919211 (= e!598682 tp_is_empty!4583)))

(declare-fun b!919214 () Bool)

(declare-fun tp!286595 () Bool)

(declare-fun tp!286598 () Bool)

(assert (=> b!919214 (= e!598682 (and tp!286595 tp!286598))))

(declare-fun b!919213 () Bool)

(declare-fun tp!286596 () Bool)

(assert (=> b!919213 (= e!598682 tp!286596)))

(assert (=> b!918796 (= tp!286541 e!598682)))

(declare-fun b!919212 () Bool)

(declare-fun tp!286597 () Bool)

(declare-fun tp!286599 () Bool)

(assert (=> b!919212 (= e!598682 (and tp!286597 tp!286599))))

(assert (= (and b!918796 (is-ElementMatch!2470 (reg!2799 r!15766))) b!919211))

(assert (= (and b!918796 (is-Concat!4303 (reg!2799 r!15766))) b!919212))

(assert (= (and b!918796 (is-Star!2470 (reg!2799 r!15766))) b!919213))

(assert (= (and b!918796 (is-Union!2470 (reg!2799 r!15766))) b!919214))

(declare-fun b!919219 () Bool)

(declare-fun e!598685 () Bool)

(declare-fun tp!286602 () Bool)

(assert (=> b!919219 (= e!598685 (and tp_is_empty!4583 tp!286602))))

(assert (=> b!918793 (= tp!286542 e!598685)))

(assert (= (and b!918793 (is-Cons!9684 (t!100746 s!10566))) b!919219))

(push 1)

(assert (not b!919212))

(assert (not b!919009))

(assert (not d!280111))

(assert (not bm!55755))

(assert (not bm!55760))

(assert (not b!919219))

(assert (not bm!55758))

(assert (not b!919088))

(assert (not b!919158))

(assert (not b!919084))

(assert (not b!919208))

(assert (not d!280143))

(assert (not d!280137))

(assert (not b!919162))

(assert (not b!919171))

(assert (not b!918894))

(assert (not b!919196))

(assert (not bm!55731))

(assert (not b!919193))

(assert (not b!918886))

(assert (not b!919156))

(assert tp_is_empty!4583)

(assert (not b!919015))

(assert (not bm!55746))

(assert (not d!280139))

(assert (not d!280117))

(assert (not b!919210))

(assert (not b!919198))

(assert (not b!918952))

(assert (not b!919086))

(assert (not b!919146))

(assert (not b!918891))

(assert (not b!919197))

(assert (not d!280159))

(assert (not b!918899))

(assert (not b!919161))

(assert (not bm!55726))

(assert (not b!919157))

(assert (not d!280129))

(assert (not bm!55730))

(assert (not b!919089))

(assert (not b!919213))

(assert (not b!919192))

(assert (not b!919087))

(assert (not bm!55745))

(assert (not b!919166))

(assert (not b!919012))

(assert (not d!280123))

(assert (not b!919214))

(assert (not b!919080))

(assert (not d!280121))

(assert (not d!280165))

(assert (not b!919205))

(assert (not d!280145))

(assert (not d!280127))

(assert (not d!280133))

(assert (not b!919163))

(assert (not bm!55711))

(assert (not bm!55756))

(assert (not b!919180))

(assert (not b!919081))

(assert (not b!919209))

(assert (not d!280147))

(assert (not b!919014))

(assert (not d!280163))

(assert (not bm!55757))

(assert (not b!919194))

(assert (not b!918963))

(assert (not bm!55761))

(assert (not b!918889))

(assert (not bm!55754))

(assert (not b!919016))

(assert (not d!280141))

(assert (not bm!55725))

(assert (not b!919204))

(assert (not b!919017))

(assert (not b!919145))

(assert (not d!280115))

(assert (not b!918890))

(assert (not d!280125))

(assert (not b!919206))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

