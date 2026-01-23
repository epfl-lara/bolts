; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!295242 () Bool)

(assert start!295242)

(declare-fun b!3120800 () Bool)

(assert (=> b!3120800 true))

(assert (=> b!3120800 true))

(assert (=> b!3120800 true))

(declare-fun b!3120794 () Bool)

(declare-fun e!1948696 () Bool)

(declare-fun e!1948695 () Bool)

(assert (=> b!3120794 (= e!1948696 e!1948695)))

(declare-fun res!1277060 () Bool)

(assert (=> b!3120794 (=> res!1277060 e!1948695)))

(declare-datatypes ((C!19438 0))(
  ( (C!19439 (val!11755 Int)) )
))
(declare-datatypes ((Regex!9626 0))(
  ( (ElementMatch!9626 (c!523086 C!19438)) (Concat!14947 (regOne!19764 Regex!9626) (regTwo!19764 Regex!9626)) (EmptyExpr!9626) (Star!9626 (reg!9955 Regex!9626)) (EmptyLang!9626) (Union!9626 (regOne!19765 Regex!9626) (regTwo!19765 Regex!9626)) )
))
(declare-fun lt!1059006 () Regex!9626)

(declare-fun isEmptyLang!677 (Regex!9626) Bool)

(assert (=> b!3120794 (= res!1277060 (isEmptyLang!677 lt!1059006))))

(declare-fun r!17423 () Regex!9626)

(declare-fun simplify!581 (Regex!9626) Regex!9626)

(assert (=> b!3120794 (= lt!1059006 (simplify!581 (reg!9955 r!17423)))))

(declare-fun b!3120795 () Bool)

(declare-fun e!1948698 () Bool)

(declare-fun tp!978106 () Bool)

(declare-fun tp!978103 () Bool)

(assert (=> b!3120795 (= e!1948698 (and tp!978106 tp!978103))))

(declare-fun b!3120796 () Bool)

(declare-fun tp_is_empty!16815 () Bool)

(assert (=> b!3120796 (= e!1948698 tp_is_empty!16815)))

(declare-fun b!3120797 () Bool)

(declare-fun e!1948694 () Bool)

(declare-fun nullable!3264 (Regex!9626) Bool)

(assert (=> b!3120797 (= e!1948694 (not (nullable!3264 lt!1059006)))))

(declare-fun b!3120798 () Bool)

(declare-fun tp!978102 () Bool)

(declare-fun tp!978107 () Bool)

(assert (=> b!3120798 (= e!1948698 (and tp!978102 tp!978107))))

(declare-fun b!3120799 () Bool)

(declare-fun e!1948701 () Bool)

(declare-fun e!1948697 () Bool)

(assert (=> b!3120799 (= e!1948701 e!1948697)))

(declare-fun res!1277057 () Bool)

(assert (=> b!3120799 (=> res!1277057 e!1948697)))

(declare-datatypes ((List!35491 0))(
  ( (Nil!35367) (Cons!35367 (h!40787 C!19438) (t!234556 List!35491)) )
))
(declare-fun s!11993 () List!35491)

(declare-fun isEmpty!19712 (List!35491) Bool)

(assert (=> b!3120799 (= res!1277057 (isEmpty!19712 s!11993))))

(declare-fun lt!1059005 () Regex!9626)

(declare-fun matchRSpec!1763 (Regex!9626 List!35491) Bool)

(assert (=> b!3120799 (matchRSpec!1763 lt!1059005 s!11993)))

(declare-datatypes ((Unit!49691 0))(
  ( (Unit!49692) )
))
(declare-fun lt!1059003 () Unit!49691)

(declare-fun mainMatchTheorem!1763 (Regex!9626 List!35491) Unit!49691)

(assert (=> b!3120799 (= lt!1059003 (mainMatchTheorem!1763 lt!1059005 s!11993))))

(declare-fun res!1277059 () Bool)

(declare-fun e!1948700 () Bool)

(assert (=> start!295242 (=> (not res!1277059) (not e!1948700))))

(declare-fun validRegex!4359 (Regex!9626) Bool)

(assert (=> start!295242 (= res!1277059 (validRegex!4359 r!17423))))

(assert (=> start!295242 e!1948700))

(assert (=> start!295242 e!1948698))

(declare-fun e!1948699 () Bool)

(assert (=> start!295242 e!1948699))

(assert (=> b!3120800 (= e!1948697 e!1948694)))

(declare-fun res!1277056 () Bool)

(assert (=> b!3120800 (=> res!1277056 e!1948694)))

(assert (=> b!3120800 (= res!1277056 (not (validRegex!4359 lt!1059006)))))

(declare-fun lambda!115259 () Int)

(declare-datatypes ((tuple2!34230 0))(
  ( (tuple2!34231 (_1!20247 List!35491) (_2!20247 List!35491)) )
))
(declare-datatypes ((Option!6847 0))(
  ( (None!6846) (Some!6846 (v!34980 tuple2!34230)) )
))
(declare-fun isDefined!5398 (Option!6847) Bool)

(declare-fun findConcatSeparation!1241 (Regex!9626 Regex!9626 List!35491 List!35491 List!35491) Option!6847)

(declare-fun Exists!1880 (Int) Bool)

(assert (=> b!3120800 (= (isDefined!5398 (findConcatSeparation!1241 lt!1059006 lt!1059005 Nil!35367 s!11993 s!11993)) (Exists!1880 lambda!115259))))

(declare-fun lt!1059008 () Unit!49691)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1011 (Regex!9626 Regex!9626 List!35491) Unit!49691)

(assert (=> b!3120800 (= lt!1059008 (lemmaFindConcatSeparationEquivalentToExists!1011 lt!1059006 lt!1059005 s!11993))))

(declare-fun b!3120801 () Bool)

(assert (=> b!3120801 (= e!1948695 e!1948701)))

(declare-fun res!1277058 () Bool)

(assert (=> b!3120801 (=> res!1277058 e!1948701)))

(declare-fun matchR!4508 (Regex!9626 List!35491) Bool)

(assert (=> b!3120801 (= res!1277058 (not (matchR!4508 lt!1059005 s!11993)))))

(assert (=> b!3120801 (= lt!1059005 (Star!9626 lt!1059006))))

(declare-fun b!3120802 () Bool)

(declare-fun tp!978104 () Bool)

(assert (=> b!3120802 (= e!1948699 (and tp_is_empty!16815 tp!978104))))

(declare-fun b!3120803 () Bool)

(declare-fun tp!978105 () Bool)

(assert (=> b!3120803 (= e!1948698 tp!978105)))

(declare-fun b!3120804 () Bool)

(assert (=> b!3120804 (= e!1948700 (not e!1948696))))

(declare-fun res!1277055 () Bool)

(assert (=> b!3120804 (=> res!1277055 e!1948696)))

(declare-fun lt!1059004 () Bool)

(assert (=> b!3120804 (= res!1277055 (or lt!1059004 (is-Concat!14947 r!17423) (is-Union!9626 r!17423) (not (is-Star!9626 r!17423))))))

(assert (=> b!3120804 (= lt!1059004 (matchRSpec!1763 r!17423 s!11993))))

(assert (=> b!3120804 (= lt!1059004 (matchR!4508 r!17423 s!11993))))

(declare-fun lt!1059007 () Unit!49691)

(assert (=> b!3120804 (= lt!1059007 (mainMatchTheorem!1763 r!17423 s!11993))))

(assert (= (and start!295242 res!1277059) b!3120804))

(assert (= (and b!3120804 (not res!1277055)) b!3120794))

(assert (= (and b!3120794 (not res!1277060)) b!3120801))

(assert (= (and b!3120801 (not res!1277058)) b!3120799))

(assert (= (and b!3120799 (not res!1277057)) b!3120800))

(assert (= (and b!3120800 (not res!1277056)) b!3120797))

(assert (= (and start!295242 (is-ElementMatch!9626 r!17423)) b!3120796))

(assert (= (and start!295242 (is-Concat!14947 r!17423)) b!3120795))

(assert (= (and start!295242 (is-Star!9626 r!17423)) b!3120803))

(assert (= (and start!295242 (is-Union!9626 r!17423)) b!3120798))

(assert (= (and start!295242 (is-Cons!35367 s!11993)) b!3120802))

(declare-fun m!3408061 () Bool)

(assert (=> b!3120801 m!3408061))

(declare-fun m!3408063 () Bool)

(assert (=> b!3120797 m!3408063))

(declare-fun m!3408065 () Bool)

(assert (=> b!3120804 m!3408065))

(declare-fun m!3408067 () Bool)

(assert (=> b!3120804 m!3408067))

(declare-fun m!3408069 () Bool)

(assert (=> b!3120804 m!3408069))

(declare-fun m!3408071 () Bool)

(assert (=> b!3120800 m!3408071))

(declare-fun m!3408073 () Bool)

(assert (=> b!3120800 m!3408073))

(assert (=> b!3120800 m!3408073))

(declare-fun m!3408075 () Bool)

(assert (=> b!3120800 m!3408075))

(declare-fun m!3408077 () Bool)

(assert (=> b!3120800 m!3408077))

(declare-fun m!3408079 () Bool)

(assert (=> b!3120800 m!3408079))

(declare-fun m!3408081 () Bool)

(assert (=> b!3120794 m!3408081))

(declare-fun m!3408083 () Bool)

(assert (=> b!3120794 m!3408083))

(declare-fun m!3408085 () Bool)

(assert (=> b!3120799 m!3408085))

(declare-fun m!3408087 () Bool)

(assert (=> b!3120799 m!3408087))

(declare-fun m!3408089 () Bool)

(assert (=> b!3120799 m!3408089))

(declare-fun m!3408091 () Bool)

(assert (=> start!295242 m!3408091))

(push 1)

(assert (not b!3120800))

(assert (not b!3120804))

(assert (not b!3120801))

(assert (not b!3120799))

(assert (not b!3120802))

(assert (not b!3120795))

(assert (not b!3120794))

(assert (not start!295242))

(assert (not b!3120797))

(assert (not b!3120803))

(assert (not b!3120798))

(assert tp_is_empty!16815)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!862505 () Bool)

(declare-fun nullableFct!912 (Regex!9626) Bool)

(assert (=> d!862505 (= (nullable!3264 lt!1059006) (nullableFct!912 lt!1059006))))

(declare-fun bs!535970 () Bool)

(assert (= bs!535970 d!862505))

(declare-fun m!3408125 () Bool)

(assert (=> bs!535970 m!3408125))

(assert (=> b!3120797 d!862505))

(declare-fun bm!221810 () Bool)

(declare-fun call!221815 () Bool)

(declare-fun c!523093 () Bool)

(assert (=> bm!221810 (= call!221815 (validRegex!4359 (ite c!523093 (regOne!19765 r!17423) (regTwo!19764 r!17423))))))

(declare-fun bm!221811 () Bool)

(declare-fun call!221817 () Bool)

(declare-fun call!221816 () Bool)

(assert (=> bm!221811 (= call!221817 call!221816)))

(declare-fun b!3120868 () Bool)

(declare-fun e!1948744 () Bool)

(declare-fun e!1948747 () Bool)

(assert (=> b!3120868 (= e!1948744 e!1948747)))

(declare-fun res!1277093 () Bool)

(assert (=> b!3120868 (= res!1277093 (not (nullable!3264 (reg!9955 r!17423))))))

(assert (=> b!3120868 (=> (not res!1277093) (not e!1948747))))

(declare-fun bm!221812 () Bool)

(declare-fun c!523092 () Bool)

(assert (=> bm!221812 (= call!221816 (validRegex!4359 (ite c!523092 (reg!9955 r!17423) (ite c!523093 (regTwo!19765 r!17423) (regOne!19764 r!17423)))))))

(declare-fun b!3120869 () Bool)

(declare-fun res!1277095 () Bool)

(declare-fun e!1948748 () Bool)

(assert (=> b!3120869 (=> (not res!1277095) (not e!1948748))))

(assert (=> b!3120869 (= res!1277095 call!221815)))

(declare-fun e!1948742 () Bool)

(assert (=> b!3120869 (= e!1948742 e!1948748)))

(declare-fun b!3120870 () Bool)

(assert (=> b!3120870 (= e!1948748 call!221817)))

(declare-fun b!3120871 () Bool)

(assert (=> b!3120871 (= e!1948744 e!1948742)))

(assert (=> b!3120871 (= c!523093 (is-Union!9626 r!17423))))

(declare-fun b!3120872 () Bool)

(declare-fun e!1948743 () Bool)

(declare-fun e!1948746 () Bool)

(assert (=> b!3120872 (= e!1948743 e!1948746)))

(declare-fun res!1277096 () Bool)

(assert (=> b!3120872 (=> (not res!1277096) (not e!1948746))))

(assert (=> b!3120872 (= res!1277096 call!221817)))

(declare-fun d!862507 () Bool)

(declare-fun res!1277097 () Bool)

(declare-fun e!1948745 () Bool)

(assert (=> d!862507 (=> res!1277097 e!1948745)))

(assert (=> d!862507 (= res!1277097 (is-ElementMatch!9626 r!17423))))

(assert (=> d!862507 (= (validRegex!4359 r!17423) e!1948745)))

(declare-fun b!3120873 () Bool)

(assert (=> b!3120873 (= e!1948747 call!221816)))

(declare-fun b!3120874 () Bool)

(assert (=> b!3120874 (= e!1948745 e!1948744)))

(assert (=> b!3120874 (= c!523092 (is-Star!9626 r!17423))))

(declare-fun b!3120875 () Bool)

(declare-fun res!1277094 () Bool)

(assert (=> b!3120875 (=> res!1277094 e!1948743)))

(assert (=> b!3120875 (= res!1277094 (not (is-Concat!14947 r!17423)))))

(assert (=> b!3120875 (= e!1948742 e!1948743)))

(declare-fun b!3120876 () Bool)

(assert (=> b!3120876 (= e!1948746 call!221815)))

(assert (= (and d!862507 (not res!1277097)) b!3120874))

(assert (= (and b!3120874 c!523092) b!3120868))

(assert (= (and b!3120874 (not c!523092)) b!3120871))

(assert (= (and b!3120868 res!1277093) b!3120873))

(assert (= (and b!3120871 c!523093) b!3120869))

(assert (= (and b!3120871 (not c!523093)) b!3120875))

(assert (= (and b!3120869 res!1277095) b!3120870))

(assert (= (and b!3120875 (not res!1277094)) b!3120872))

(assert (= (and b!3120872 res!1277096) b!3120876))

(assert (= (or b!3120869 b!3120876) bm!221810))

(assert (= (or b!3120870 b!3120872) bm!221811))

(assert (= (or b!3120873 bm!221811) bm!221812))

(declare-fun m!3408127 () Bool)

(assert (=> bm!221810 m!3408127))

(declare-fun m!3408129 () Bool)

(assert (=> b!3120868 m!3408129))

(declare-fun m!3408131 () Bool)

(assert (=> bm!221812 m!3408131))

(assert (=> start!295242 d!862507))

(declare-fun bs!535971 () Bool)

(declare-fun b!3120927 () Bool)

(assert (= bs!535971 (and b!3120927 b!3120800)))

(declare-fun lambda!115267 () Int)

(assert (=> bs!535971 (not (= lambda!115267 lambda!115259))))

(assert (=> b!3120927 true))

(assert (=> b!3120927 true))

(declare-fun bs!535972 () Bool)

(declare-fun b!3120930 () Bool)

(assert (= bs!535972 (and b!3120930 b!3120800)))

(declare-fun lambda!115268 () Int)

(assert (=> bs!535972 (not (= lambda!115268 lambda!115259))))

(declare-fun bs!535973 () Bool)

(assert (= bs!535973 (and b!3120930 b!3120927)))

(assert (=> bs!535973 (not (= lambda!115268 lambda!115267))))

(assert (=> b!3120930 true))

(assert (=> b!3120930 true))

(declare-fun b!3120921 () Bool)

(declare-fun e!1948772 () Bool)

(declare-fun e!1948778 () Bool)

(assert (=> b!3120921 (= e!1948772 e!1948778)))

(declare-fun c!523107 () Bool)

(assert (=> b!3120921 (= c!523107 (is-Star!9626 r!17423))))

(declare-fun b!3120922 () Bool)

(declare-fun e!1948776 () Bool)

(declare-fun call!221822 () Bool)

(assert (=> b!3120922 (= e!1948776 call!221822)))

(declare-fun b!3120923 () Bool)

(declare-fun e!1948777 () Bool)

(assert (=> b!3120923 (= e!1948777 (= s!11993 (Cons!35367 (c!523086 r!17423) Nil!35367)))))

(declare-fun b!3120924 () Bool)

(declare-fun res!1277114 () Bool)

(declare-fun e!1948774 () Bool)

(assert (=> b!3120924 (=> res!1277114 e!1948774)))

(assert (=> b!3120924 (= res!1277114 call!221822)))

(assert (=> b!3120924 (= e!1948778 e!1948774)))

(declare-fun b!3120925 () Bool)

(declare-fun e!1948779 () Bool)

(assert (=> b!3120925 (= e!1948776 e!1948779)))

(declare-fun res!1277115 () Bool)

(assert (=> b!3120925 (= res!1277115 (not (is-EmptyLang!9626 r!17423)))))

(assert (=> b!3120925 (=> (not res!1277115) (not e!1948779))))

(declare-fun b!3120926 () Bool)

(declare-fun c!523110 () Bool)

(assert (=> b!3120926 (= c!523110 (is-ElementMatch!9626 r!17423))))

(assert (=> b!3120926 (= e!1948779 e!1948777)))

(declare-fun call!221823 () Bool)

(assert (=> b!3120927 (= e!1948774 call!221823)))

(declare-fun d!862513 () Bool)

(declare-fun c!523109 () Bool)

(assert (=> d!862513 (= c!523109 (is-EmptyExpr!9626 r!17423))))

(assert (=> d!862513 (= (matchRSpec!1763 r!17423 s!11993) e!1948776)))

(declare-fun bm!221817 () Bool)

(assert (=> bm!221817 (= call!221822 (isEmpty!19712 s!11993))))

(declare-fun bm!221818 () Bool)

(assert (=> bm!221818 (= call!221823 (Exists!1880 (ite c!523107 lambda!115267 lambda!115268)))))

(declare-fun b!3120928 () Bool)

(declare-fun e!1948775 () Bool)

(assert (=> b!3120928 (= e!1948775 (matchRSpec!1763 (regTwo!19765 r!17423) s!11993))))

(declare-fun b!3120929 () Bool)

(declare-fun c!523111 () Bool)

(assert (=> b!3120929 (= c!523111 (is-Union!9626 r!17423))))

(assert (=> b!3120929 (= e!1948777 e!1948772)))

(assert (=> b!3120930 (= e!1948778 call!221823)))

(declare-fun b!3120931 () Bool)

(assert (=> b!3120931 (= e!1948772 e!1948775)))

(declare-fun res!1277116 () Bool)

(assert (=> b!3120931 (= res!1277116 (matchRSpec!1763 (regOne!19765 r!17423) s!11993))))

(assert (=> b!3120931 (=> res!1277116 e!1948775)))

(assert (= (and d!862513 c!523109) b!3120922))

(assert (= (and d!862513 (not c!523109)) b!3120925))

(assert (= (and b!3120925 res!1277115) b!3120926))

(assert (= (and b!3120926 c!523110) b!3120923))

(assert (= (and b!3120926 (not c!523110)) b!3120929))

(assert (= (and b!3120929 c!523111) b!3120931))

(assert (= (and b!3120929 (not c!523111)) b!3120921))

(assert (= (and b!3120931 (not res!1277116)) b!3120928))

(assert (= (and b!3120921 c!523107) b!3120924))

(assert (= (and b!3120921 (not c!523107)) b!3120930))

(assert (= (and b!3120924 (not res!1277114)) b!3120927))

(assert (= (or b!3120927 b!3120930) bm!221818))

(assert (= (or b!3120922 b!3120924) bm!221817))

(assert (=> bm!221817 m!3408085))

(declare-fun m!3408133 () Bool)

(assert (=> bm!221818 m!3408133))

(declare-fun m!3408135 () Bool)

(assert (=> b!3120928 m!3408135))

(declare-fun m!3408137 () Bool)

(assert (=> b!3120931 m!3408137))

(assert (=> b!3120804 d!862513))

(declare-fun b!3120996 () Bool)

(declare-fun res!1277138 () Bool)

(declare-fun e!1948820 () Bool)

(assert (=> b!3120996 (=> res!1277138 e!1948820)))

(declare-fun e!1948816 () Bool)

(assert (=> b!3120996 (= res!1277138 e!1948816)))

(declare-fun res!1277137 () Bool)

(assert (=> b!3120996 (=> (not res!1277137) (not e!1948816))))

(declare-fun lt!1059041 () Bool)

(assert (=> b!3120996 (= res!1277137 lt!1059041)))

(declare-fun b!3120997 () Bool)

(declare-fun res!1277141 () Bool)

(assert (=> b!3120997 (=> (not res!1277141) (not e!1948816))))

(declare-fun tail!5144 (List!35491) List!35491)

(assert (=> b!3120997 (= res!1277141 (isEmpty!19712 (tail!5144 s!11993)))))

(declare-fun b!3120998 () Bool)

(declare-fun e!1948818 () Bool)

(declare-fun derivativeStep!2859 (Regex!9626 C!19438) Regex!9626)

(declare-fun head!6918 (List!35491) C!19438)

(assert (=> b!3120998 (= e!1948818 (matchR!4508 (derivativeStep!2859 r!17423 (head!6918 s!11993)) (tail!5144 s!11993)))))

(declare-fun b!3120999 () Bool)

(assert (=> b!3120999 (= e!1948818 (nullable!3264 r!17423))))

(declare-fun b!3121000 () Bool)

(declare-fun e!1948819 () Bool)

(declare-fun e!1948817 () Bool)

(assert (=> b!3121000 (= e!1948819 e!1948817)))

(declare-fun c!523134 () Bool)

(assert (=> b!3121000 (= c!523134 (is-EmptyLang!9626 r!17423))))

(declare-fun b!3121001 () Bool)

(declare-fun res!1277140 () Bool)

(assert (=> b!3121001 (=> res!1277140 e!1948820)))

(assert (=> b!3121001 (= res!1277140 (not (is-ElementMatch!9626 r!17423)))))

(assert (=> b!3121001 (= e!1948817 e!1948820)))

(declare-fun b!3121002 () Bool)

(declare-fun call!221840 () Bool)

(assert (=> b!3121002 (= e!1948819 (= lt!1059041 call!221840))))

(declare-fun b!3121003 () Bool)

(assert (=> b!3121003 (= e!1948817 (not lt!1059041))))

(declare-fun b!3121004 () Bool)

(declare-fun res!1277139 () Bool)

(declare-fun e!1948814 () Bool)

(assert (=> b!3121004 (=> res!1277139 e!1948814)))

(assert (=> b!3121004 (= res!1277139 (not (isEmpty!19712 (tail!5144 s!11993))))))

(declare-fun b!3121005 () Bool)

(declare-fun e!1948815 () Bool)

(assert (=> b!3121005 (= e!1948820 e!1948815)))

(declare-fun res!1277144 () Bool)

(assert (=> b!3121005 (=> (not res!1277144) (not e!1948815))))

(assert (=> b!3121005 (= res!1277144 (not lt!1059041))))

(declare-fun b!3121007 () Bool)

(declare-fun res!1277142 () Bool)

(assert (=> b!3121007 (=> (not res!1277142) (not e!1948816))))

(assert (=> b!3121007 (= res!1277142 (not call!221840))))

(declare-fun bm!221835 () Bool)

(assert (=> bm!221835 (= call!221840 (isEmpty!19712 s!11993))))

(declare-fun b!3121008 () Bool)

(assert (=> b!3121008 (= e!1948816 (= (head!6918 s!11993) (c!523086 r!17423)))))

(declare-fun b!3121009 () Bool)

(assert (=> b!3121009 (= e!1948814 (not (= (head!6918 s!11993) (c!523086 r!17423))))))

(declare-fun b!3121006 () Bool)

(assert (=> b!3121006 (= e!1948815 e!1948814)))

(declare-fun res!1277143 () Bool)

(assert (=> b!3121006 (=> res!1277143 e!1948814)))

(assert (=> b!3121006 (= res!1277143 call!221840)))

(declare-fun d!862515 () Bool)

(assert (=> d!862515 e!1948819))

(declare-fun c!523136 () Bool)

(assert (=> d!862515 (= c!523136 (is-EmptyExpr!9626 r!17423))))

(assert (=> d!862515 (= lt!1059041 e!1948818)))

(declare-fun c!523135 () Bool)

(assert (=> d!862515 (= c!523135 (isEmpty!19712 s!11993))))

(assert (=> d!862515 (validRegex!4359 r!17423)))

(assert (=> d!862515 (= (matchR!4508 r!17423 s!11993) lt!1059041)))

(assert (= (and d!862515 c!523135) b!3120999))

(assert (= (and d!862515 (not c!523135)) b!3120998))

(assert (= (and d!862515 c!523136) b!3121002))

(assert (= (and d!862515 (not c!523136)) b!3121000))

(assert (= (and b!3121000 c!523134) b!3121003))

(assert (= (and b!3121000 (not c!523134)) b!3121001))

(assert (= (and b!3121001 (not res!1277140)) b!3120996))

(assert (= (and b!3120996 res!1277137) b!3121007))

(assert (= (and b!3121007 res!1277142) b!3120997))

(assert (= (and b!3120997 res!1277141) b!3121008))

(assert (= (and b!3120996 (not res!1277138)) b!3121005))

(assert (= (and b!3121005 res!1277144) b!3121006))

(assert (= (and b!3121006 (not res!1277143)) b!3121004))

(assert (= (and b!3121004 (not res!1277139)) b!3121009))

(assert (= (or b!3121002 b!3121007 b!3121006) bm!221835))

(declare-fun m!3408139 () Bool)

(assert (=> b!3121009 m!3408139))

(declare-fun m!3408141 () Bool)

(assert (=> b!3120999 m!3408141))

(assert (=> b!3121008 m!3408139))

(assert (=> bm!221835 m!3408085))

(declare-fun m!3408143 () Bool)

(assert (=> b!3120997 m!3408143))

(assert (=> b!3120997 m!3408143))

(declare-fun m!3408145 () Bool)

(assert (=> b!3120997 m!3408145))

(assert (=> d!862515 m!3408085))

(assert (=> d!862515 m!3408091))

(assert (=> b!3120998 m!3408139))

(assert (=> b!3120998 m!3408139))

(declare-fun m!3408147 () Bool)

(assert (=> b!3120998 m!3408147))

(assert (=> b!3120998 m!3408143))

(assert (=> b!3120998 m!3408147))

(assert (=> b!3120998 m!3408143))

(declare-fun m!3408149 () Bool)

(assert (=> b!3120998 m!3408149))

(assert (=> b!3121004 m!3408143))

(assert (=> b!3121004 m!3408143))

(assert (=> b!3121004 m!3408145))

(assert (=> b!3120804 d!862515))

(declare-fun d!862517 () Bool)

(assert (=> d!862517 (= (matchR!4508 r!17423 s!11993) (matchRSpec!1763 r!17423 s!11993))))

(declare-fun lt!1059044 () Unit!49691)

(declare-fun choose!18454 (Regex!9626 List!35491) Unit!49691)

(assert (=> d!862517 (= lt!1059044 (choose!18454 r!17423 s!11993))))

(assert (=> d!862517 (validRegex!4359 r!17423)))

(assert (=> d!862517 (= (mainMatchTheorem!1763 r!17423 s!11993) lt!1059044)))

(declare-fun bs!535974 () Bool)

(assert (= bs!535974 d!862517))

(assert (=> bs!535974 m!3408067))

(assert (=> bs!535974 m!3408065))

(declare-fun m!3408151 () Bool)

(assert (=> bs!535974 m!3408151))

(assert (=> bs!535974 m!3408091))

(assert (=> b!3120804 d!862517))

(declare-fun d!862519 () Bool)

(assert (=> d!862519 (= (isEmpty!19712 s!11993) (is-Nil!35367 s!11993))))

(assert (=> b!3120799 d!862519))

(declare-fun bs!535975 () Bool)

(declare-fun b!3121018 () Bool)

(assert (= bs!535975 (and b!3121018 b!3120800)))

(declare-fun lambda!115269 () Int)

(assert (=> bs!535975 (not (= lambda!115269 lambda!115259))))

(declare-fun bs!535976 () Bool)

(assert (= bs!535976 (and b!3121018 b!3120927)))

(assert (=> bs!535976 (= (and (= (reg!9955 lt!1059005) (reg!9955 r!17423)) (= lt!1059005 r!17423)) (= lambda!115269 lambda!115267))))

(declare-fun bs!535977 () Bool)

(assert (= bs!535977 (and b!3121018 b!3120930)))

(assert (=> bs!535977 (not (= lambda!115269 lambda!115268))))

(assert (=> b!3121018 true))

(assert (=> b!3121018 true))

(declare-fun bs!535978 () Bool)

(declare-fun b!3121021 () Bool)

(assert (= bs!535978 (and b!3121021 b!3120800)))

(declare-fun lambda!115270 () Int)

(assert (=> bs!535978 (not (= lambda!115270 lambda!115259))))

(declare-fun bs!535979 () Bool)

(assert (= bs!535979 (and b!3121021 b!3120927)))

(assert (=> bs!535979 (not (= lambda!115270 lambda!115267))))

(declare-fun bs!535980 () Bool)

(assert (= bs!535980 (and b!3121021 b!3120930)))

(assert (=> bs!535980 (= (and (= (regOne!19764 lt!1059005) (regOne!19764 r!17423)) (= (regTwo!19764 lt!1059005) (regTwo!19764 r!17423))) (= lambda!115270 lambda!115268))))

(declare-fun bs!535981 () Bool)

(assert (= bs!535981 (and b!3121021 b!3121018)))

(assert (=> bs!535981 (not (= lambda!115270 lambda!115269))))

(assert (=> b!3121021 true))

(assert (=> b!3121021 true))

(declare-fun b!3121012 () Bool)

(declare-fun e!1948823 () Bool)

(declare-fun e!1948828 () Bool)

(assert (=> b!3121012 (= e!1948823 e!1948828)))

(declare-fun c!523137 () Bool)

(assert (=> b!3121012 (= c!523137 (is-Star!9626 lt!1059005))))

(declare-fun b!3121013 () Bool)

(declare-fun e!1948826 () Bool)

(declare-fun call!221841 () Bool)

(assert (=> b!3121013 (= e!1948826 call!221841)))

(declare-fun b!3121014 () Bool)

(declare-fun e!1948827 () Bool)

(assert (=> b!3121014 (= e!1948827 (= s!11993 (Cons!35367 (c!523086 lt!1059005) Nil!35367)))))

(declare-fun b!3121015 () Bool)

(declare-fun res!1277147 () Bool)

(declare-fun e!1948824 () Bool)

(assert (=> b!3121015 (=> res!1277147 e!1948824)))

(assert (=> b!3121015 (= res!1277147 call!221841)))

(assert (=> b!3121015 (= e!1948828 e!1948824)))

(declare-fun b!3121016 () Bool)

(declare-fun e!1948829 () Bool)

(assert (=> b!3121016 (= e!1948826 e!1948829)))

(declare-fun res!1277148 () Bool)

(assert (=> b!3121016 (= res!1277148 (not (is-EmptyLang!9626 lt!1059005)))))

(assert (=> b!3121016 (=> (not res!1277148) (not e!1948829))))

(declare-fun b!3121017 () Bool)

(declare-fun c!523139 () Bool)

(assert (=> b!3121017 (= c!523139 (is-ElementMatch!9626 lt!1059005))))

(assert (=> b!3121017 (= e!1948829 e!1948827)))

(declare-fun call!221842 () Bool)

(assert (=> b!3121018 (= e!1948824 call!221842)))

(declare-fun d!862521 () Bool)

(declare-fun c!523138 () Bool)

(assert (=> d!862521 (= c!523138 (is-EmptyExpr!9626 lt!1059005))))

(assert (=> d!862521 (= (matchRSpec!1763 lt!1059005 s!11993) e!1948826)))

(declare-fun bm!221836 () Bool)

(assert (=> bm!221836 (= call!221841 (isEmpty!19712 s!11993))))

(declare-fun bm!221837 () Bool)

(assert (=> bm!221837 (= call!221842 (Exists!1880 (ite c!523137 lambda!115269 lambda!115270)))))

(declare-fun b!3121019 () Bool)

(declare-fun e!1948825 () Bool)

(assert (=> b!3121019 (= e!1948825 (matchRSpec!1763 (regTwo!19765 lt!1059005) s!11993))))

(declare-fun b!3121020 () Bool)

(declare-fun c!523140 () Bool)

(assert (=> b!3121020 (= c!523140 (is-Union!9626 lt!1059005))))

(assert (=> b!3121020 (= e!1948827 e!1948823)))

(assert (=> b!3121021 (= e!1948828 call!221842)))

(declare-fun b!3121022 () Bool)

(assert (=> b!3121022 (= e!1948823 e!1948825)))

(declare-fun res!1277149 () Bool)

(assert (=> b!3121022 (= res!1277149 (matchRSpec!1763 (regOne!19765 lt!1059005) s!11993))))

(assert (=> b!3121022 (=> res!1277149 e!1948825)))

(assert (= (and d!862521 c!523138) b!3121013))

(assert (= (and d!862521 (not c!523138)) b!3121016))

(assert (= (and b!3121016 res!1277148) b!3121017))

(assert (= (and b!3121017 c!523139) b!3121014))

(assert (= (and b!3121017 (not c!523139)) b!3121020))

(assert (= (and b!3121020 c!523140) b!3121022))

(assert (= (and b!3121020 (not c!523140)) b!3121012))

(assert (= (and b!3121022 (not res!1277149)) b!3121019))

(assert (= (and b!3121012 c!523137) b!3121015))

(assert (= (and b!3121012 (not c!523137)) b!3121021))

(assert (= (and b!3121015 (not res!1277147)) b!3121018))

(assert (= (or b!3121018 b!3121021) bm!221837))

(assert (= (or b!3121013 b!3121015) bm!221836))

(assert (=> bm!221836 m!3408085))

(declare-fun m!3408153 () Bool)

(assert (=> bm!221837 m!3408153))

(declare-fun m!3408155 () Bool)

(assert (=> b!3121019 m!3408155))

(declare-fun m!3408157 () Bool)

(assert (=> b!3121022 m!3408157))

(assert (=> b!3120799 d!862521))

(declare-fun d!862523 () Bool)

(assert (=> d!862523 (= (matchR!4508 lt!1059005 s!11993) (matchRSpec!1763 lt!1059005 s!11993))))

(declare-fun lt!1059045 () Unit!49691)

(assert (=> d!862523 (= lt!1059045 (choose!18454 lt!1059005 s!11993))))

(assert (=> d!862523 (validRegex!4359 lt!1059005)))

(assert (=> d!862523 (= (mainMatchTheorem!1763 lt!1059005 s!11993) lt!1059045)))

(declare-fun bs!535982 () Bool)

(assert (= bs!535982 d!862523))

(assert (=> bs!535982 m!3408061))

(assert (=> bs!535982 m!3408087))

(declare-fun m!3408159 () Bool)

(assert (=> bs!535982 m!3408159))

(declare-fun m!3408161 () Bool)

(assert (=> bs!535982 m!3408161))

(assert (=> b!3120799 d!862523))

(declare-fun d!862525 () Bool)

(assert (=> d!862525 (= (isEmptyLang!677 lt!1059006) (is-EmptyLang!9626 lt!1059006))))

(assert (=> b!3120794 d!862525))

(declare-fun b!3121116 () Bool)

(declare-fun e!1948895 () Regex!9626)

(declare-fun lt!1059067 () Regex!9626)

(assert (=> b!3121116 (= e!1948895 lt!1059067)))

(declare-fun b!3121117 () Bool)

(declare-fun c!523180 () Bool)

(declare-fun e!1948894 () Bool)

(assert (=> b!3121117 (= c!523180 e!1948894)))

(declare-fun res!1277171 () Bool)

(assert (=> b!3121117 (=> res!1277171 e!1948894)))

(declare-fun call!221875 () Bool)

(assert (=> b!3121117 (= res!1277171 call!221875)))

(declare-fun lt!1059064 () Regex!9626)

(declare-fun call!221871 () Regex!9626)

(assert (=> b!3121117 (= lt!1059064 call!221871)))

(declare-fun e!1948886 () Regex!9626)

(declare-fun e!1948898 () Regex!9626)

(assert (=> b!3121117 (= e!1948886 e!1948898)))

(declare-fun bm!221865 () Bool)

(declare-fun c!523181 () Bool)

(declare-fun lt!1059065 () Regex!9626)

(declare-fun call!221870 () Bool)

(assert (=> bm!221865 (= call!221870 (isEmptyLang!677 (ite c!523181 lt!1059067 lt!1059065)))))

(declare-fun b!3121118 () Bool)

(declare-fun call!221873 () Bool)

(assert (=> b!3121118 (= e!1948894 call!221873)))

(declare-fun b!3121119 () Bool)

(assert (=> b!3121119 (= e!1948898 (Star!9626 lt!1059064))))

(declare-fun b!3121120 () Bool)

(declare-fun e!1948890 () Regex!9626)

(declare-fun lt!1059069 () Regex!9626)

(assert (=> b!3121120 (= e!1948890 (Concat!14947 lt!1059065 lt!1059069))))

(declare-fun b!3121121 () Bool)

(declare-fun e!1948888 () Regex!9626)

(assert (=> b!3121121 (= e!1948888 EmptyLang!9626)))

(declare-fun d!862527 () Bool)

(declare-fun e!1948897 () Bool)

(assert (=> d!862527 e!1948897))

(declare-fun res!1277169 () Bool)

(assert (=> d!862527 (=> (not res!1277169) (not e!1948897))))

(declare-fun lt!1059068 () Regex!9626)

(assert (=> d!862527 (= res!1277169 (validRegex!4359 lt!1059068))))

(declare-fun e!1948892 () Regex!9626)

(assert (=> d!862527 (= lt!1059068 e!1948892)))

(declare-fun c!523182 () Bool)

(assert (=> d!862527 (= c!523182 (is-EmptyLang!9626 (reg!9955 r!17423)))))

(assert (=> d!862527 (validRegex!4359 (reg!9955 r!17423))))

(assert (=> d!862527 (= (simplify!581 (reg!9955 r!17423)) lt!1059068)))

(declare-fun b!3121122 () Bool)

(declare-fun e!1948896 () Regex!9626)

(assert (=> b!3121122 (= e!1948896 EmptyExpr!9626)))

(declare-fun b!3121123 () Bool)

(declare-fun e!1948899 () Regex!9626)

(declare-fun lt!1059066 () Regex!9626)

(assert (=> b!3121123 (= e!1948899 (Union!9626 lt!1059066 lt!1059067))))

(declare-fun b!3121124 () Bool)

(declare-fun e!1948889 () Regex!9626)

(assert (=> b!3121124 (= e!1948889 e!1948890)))

(declare-fun c!523188 () Bool)

(declare-fun isEmptyExpr!675 (Regex!9626) Bool)

(assert (=> b!3121124 (= c!523188 (isEmptyExpr!675 lt!1059069))))

(declare-fun bm!221866 () Bool)

(declare-fun c!523185 () Bool)

(assert (=> bm!221866 (= call!221875 (isEmptyLang!677 (ite c!523185 lt!1059064 (ite c!523181 lt!1059066 lt!1059069))))))

(declare-fun b!3121125 () Bool)

(declare-fun c!523179 () Bool)

(assert (=> b!3121125 (= c!523179 call!221873)))

(assert (=> b!3121125 (= e!1948888 e!1948889)))

(declare-fun b!3121126 () Bool)

(assert (=> b!3121126 (= e!1948890 lt!1059065)))

(declare-fun b!3121127 () Bool)

(assert (=> b!3121127 (= e!1948892 EmptyLang!9626)))

(declare-fun b!3121128 () Bool)

(declare-fun e!1948887 () Bool)

(declare-fun call!221874 () Bool)

(assert (=> b!3121128 (= e!1948887 call!221874)))

(declare-fun b!3121129 () Bool)

(assert (=> b!3121129 (= e!1948899 lt!1059066)))

(declare-fun b!3121130 () Bool)

(assert (=> b!3121130 (= e!1948896 e!1948886)))

(assert (=> b!3121130 (= c!523185 (is-Star!9626 (reg!9955 r!17423)))))

(declare-fun bm!221867 () Bool)

(assert (=> bm!221867 (= call!221873 (isEmptyExpr!675 (ite c!523185 lt!1059064 lt!1059065)))))

(declare-fun bm!221868 () Bool)

(assert (=> bm!221868 (= call!221874 call!221875)))

(declare-fun b!3121131 () Bool)

(assert (=> b!3121131 (= e!1948898 EmptyExpr!9626)))

(declare-fun b!3121132 () Bool)

(declare-fun e!1948891 () Regex!9626)

(assert (=> b!3121132 (= e!1948891 (reg!9955 r!17423))))

(declare-fun b!3121133 () Bool)

(declare-fun c!523183 () Bool)

(assert (=> b!3121133 (= c!523183 (is-EmptyExpr!9626 (reg!9955 r!17423)))))

(assert (=> b!3121133 (= e!1948891 e!1948896)))

(declare-fun b!3121134 () Bool)

(assert (=> b!3121134 (= e!1948892 e!1948891)))

(declare-fun c!523186 () Bool)

(assert (=> b!3121134 (= c!523186 (is-ElementMatch!9626 (reg!9955 r!17423)))))

(declare-fun b!3121135 () Bool)

(declare-fun e!1948893 () Regex!9626)

(assert (=> b!3121135 (= e!1948893 e!1948895)))

(declare-fun call!221876 () Regex!9626)

(assert (=> b!3121135 (= lt!1059066 call!221876)))

(declare-fun call!221872 () Regex!9626)

(assert (=> b!3121135 (= lt!1059067 call!221872)))

(declare-fun c!523187 () Bool)

(assert (=> b!3121135 (= c!523187 call!221874)))

(declare-fun bm!221869 () Bool)

(assert (=> bm!221869 (= call!221876 (simplify!581 (ite c!523181 (regOne!19765 (reg!9955 r!17423)) (regTwo!19764 (reg!9955 r!17423)))))))

(declare-fun b!3121136 () Bool)

(assert (=> b!3121136 (= e!1948893 e!1948888)))

(assert (=> b!3121136 (= lt!1059065 call!221872)))

(assert (=> b!3121136 (= lt!1059069 call!221876)))

(declare-fun res!1277170 () Bool)

(assert (=> b!3121136 (= res!1277170 call!221870)))

(assert (=> b!3121136 (=> res!1277170 e!1948887)))

(declare-fun c!523184 () Bool)

(assert (=> b!3121136 (= c!523184 e!1948887)))

(declare-fun b!3121137 () Bool)

(assert (=> b!3121137 (= e!1948897 (= (nullable!3264 lt!1059068) (nullable!3264 (reg!9955 r!17423))))))

(declare-fun b!3121138 () Bool)

(assert (=> b!3121138 (= c!523181 (is-Union!9626 (reg!9955 r!17423)))))

(assert (=> b!3121138 (= e!1948886 e!1948893)))

(declare-fun bm!221870 () Bool)

(assert (=> bm!221870 (= call!221871 (simplify!581 (ite c!523185 (reg!9955 (reg!9955 r!17423)) (ite c!523181 (regTwo!19765 (reg!9955 r!17423)) (regOne!19764 (reg!9955 r!17423))))))))

(declare-fun bm!221871 () Bool)

(assert (=> bm!221871 (= call!221872 call!221871)))

(declare-fun b!3121139 () Bool)

(declare-fun c!523178 () Bool)

(assert (=> b!3121139 (= c!523178 call!221870)))

(assert (=> b!3121139 (= e!1948895 e!1948899)))

(declare-fun b!3121140 () Bool)

(assert (=> b!3121140 (= e!1948889 lt!1059069)))

(assert (= (and d!862527 c!523182) b!3121127))

(assert (= (and d!862527 (not c!523182)) b!3121134))

(assert (= (and b!3121134 c!523186) b!3121132))

(assert (= (and b!3121134 (not c!523186)) b!3121133))

(assert (= (and b!3121133 c!523183) b!3121122))

(assert (= (and b!3121133 (not c!523183)) b!3121130))

(assert (= (and b!3121130 c!523185) b!3121117))

(assert (= (and b!3121130 (not c!523185)) b!3121138))

(assert (= (and b!3121117 (not res!1277171)) b!3121118))

(assert (= (and b!3121117 c!523180) b!3121131))

(assert (= (and b!3121117 (not c!523180)) b!3121119))

(assert (= (and b!3121138 c!523181) b!3121135))

(assert (= (and b!3121138 (not c!523181)) b!3121136))

(assert (= (and b!3121135 c!523187) b!3121116))

(assert (= (and b!3121135 (not c!523187)) b!3121139))

(assert (= (and b!3121139 c!523178) b!3121129))

(assert (= (and b!3121139 (not c!523178)) b!3121123))

(assert (= (and b!3121136 (not res!1277170)) b!3121128))

(assert (= (and b!3121136 c!523184) b!3121121))

(assert (= (and b!3121136 (not c!523184)) b!3121125))

(assert (= (and b!3121125 c!523179) b!3121140))

(assert (= (and b!3121125 (not c!523179)) b!3121124))

(assert (= (and b!3121124 c!523188) b!3121126))

(assert (= (and b!3121124 (not c!523188)) b!3121120))

(assert (= (or b!3121135 b!3121136) bm!221869))

(assert (= (or b!3121135 b!3121136) bm!221871))

(assert (= (or b!3121139 b!3121136) bm!221865))

(assert (= (or b!3121135 b!3121128) bm!221868))

(assert (= (or b!3121118 b!3121125) bm!221867))

(assert (= (or b!3121117 bm!221871) bm!221870))

(assert (= (or b!3121117 bm!221868) bm!221866))

(assert (= (and d!862527 res!1277169) b!3121137))

(declare-fun m!3408183 () Bool)

(assert (=> bm!221866 m!3408183))

(declare-fun m!3408185 () Bool)

(assert (=> bm!221869 m!3408185))

(declare-fun m!3408187 () Bool)

(assert (=> d!862527 m!3408187))

(declare-fun m!3408189 () Bool)

(assert (=> d!862527 m!3408189))

(declare-fun m!3408191 () Bool)

(assert (=> bm!221865 m!3408191))

(declare-fun m!3408193 () Bool)

(assert (=> bm!221867 m!3408193))

(declare-fun m!3408195 () Bool)

(assert (=> b!3121124 m!3408195))

(declare-fun m!3408197 () Bool)

(assert (=> b!3121137 m!3408197))

(assert (=> b!3121137 m!3408129))

(declare-fun m!3408199 () Bool)

(assert (=> bm!221870 m!3408199))

(assert (=> b!3120794 d!862527))

(declare-fun d!862531 () Bool)

(declare-fun isEmpty!19714 (Option!6847) Bool)

(assert (=> d!862531 (= (isDefined!5398 (findConcatSeparation!1241 lt!1059006 lt!1059005 Nil!35367 s!11993 s!11993)) (not (isEmpty!19714 (findConcatSeparation!1241 lt!1059006 lt!1059005 Nil!35367 s!11993 s!11993))))))

(declare-fun bs!535983 () Bool)

(assert (= bs!535983 d!862531))

(assert (=> bs!535983 m!3408073))

(declare-fun m!3408201 () Bool)

(assert (=> bs!535983 m!3408201))

(assert (=> b!3120800 d!862531))

(declare-fun bs!535984 () Bool)

(declare-fun d!862533 () Bool)

(assert (= bs!535984 (and d!862533 b!3120930)))

(declare-fun lambda!115273 () Int)

(assert (=> bs!535984 (not (= lambda!115273 lambda!115268))))

(declare-fun bs!535985 () Bool)

(assert (= bs!535985 (and d!862533 b!3120800)))

(assert (=> bs!535985 (= lambda!115273 lambda!115259)))

(declare-fun bs!535986 () Bool)

(assert (= bs!535986 (and d!862533 b!3120927)))

(assert (=> bs!535986 (not (= lambda!115273 lambda!115267))))

(declare-fun bs!535987 () Bool)

(assert (= bs!535987 (and d!862533 b!3121021)))

(assert (=> bs!535987 (not (= lambda!115273 lambda!115270))))

(declare-fun bs!535988 () Bool)

(assert (= bs!535988 (and d!862533 b!3121018)))

(assert (=> bs!535988 (not (= lambda!115273 lambda!115269))))

(assert (=> d!862533 true))

(assert (=> d!862533 true))

(assert (=> d!862533 true))

(assert (=> d!862533 (= (isDefined!5398 (findConcatSeparation!1241 lt!1059006 lt!1059005 Nil!35367 s!11993 s!11993)) (Exists!1880 lambda!115273))))

(declare-fun lt!1059072 () Unit!49691)

(declare-fun choose!18455 (Regex!9626 Regex!9626 List!35491) Unit!49691)

(assert (=> d!862533 (= lt!1059072 (choose!18455 lt!1059006 lt!1059005 s!11993))))

(assert (=> d!862533 (validRegex!4359 lt!1059006)))

(assert (=> d!862533 (= (lemmaFindConcatSeparationEquivalentToExists!1011 lt!1059006 lt!1059005 s!11993) lt!1059072)))

(declare-fun bs!535989 () Bool)

(assert (= bs!535989 d!862533))

(assert (=> bs!535989 m!3408073))

(assert (=> bs!535989 m!3408075))

(declare-fun m!3408207 () Bool)

(assert (=> bs!535989 m!3408207))

(assert (=> bs!535989 m!3408079))

(assert (=> bs!535989 m!3408073))

(declare-fun m!3408209 () Bool)

(assert (=> bs!535989 m!3408209))

(assert (=> b!3120800 d!862533))

(declare-fun bm!221875 () Bool)

(declare-fun call!221880 () Bool)

(declare-fun c!523192 () Bool)

(assert (=> bm!221875 (= call!221880 (validRegex!4359 (ite c!523192 (regOne!19765 lt!1059006) (regTwo!19764 lt!1059006))))))

(declare-fun bm!221876 () Bool)

(declare-fun call!221882 () Bool)

(declare-fun call!221881 () Bool)

(assert (=> bm!221876 (= call!221882 call!221881)))

(declare-fun b!3121154 () Bool)

(declare-fun e!1948911 () Bool)

(declare-fun e!1948914 () Bool)

(assert (=> b!3121154 (= e!1948911 e!1948914)))

(declare-fun res!1277181 () Bool)

(assert (=> b!3121154 (= res!1277181 (not (nullable!3264 (reg!9955 lt!1059006))))))

(assert (=> b!3121154 (=> (not res!1277181) (not e!1948914))))

(declare-fun c!523191 () Bool)

(declare-fun bm!221877 () Bool)

(assert (=> bm!221877 (= call!221881 (validRegex!4359 (ite c!523191 (reg!9955 lt!1059006) (ite c!523192 (regTwo!19765 lt!1059006) (regOne!19764 lt!1059006)))))))

(declare-fun b!3121155 () Bool)

(declare-fun res!1277183 () Bool)

(declare-fun e!1948915 () Bool)

(assert (=> b!3121155 (=> (not res!1277183) (not e!1948915))))

(assert (=> b!3121155 (= res!1277183 call!221880)))

(declare-fun e!1948909 () Bool)

(assert (=> b!3121155 (= e!1948909 e!1948915)))

(declare-fun b!3121156 () Bool)

(assert (=> b!3121156 (= e!1948915 call!221882)))

(declare-fun b!3121157 () Bool)

(assert (=> b!3121157 (= e!1948911 e!1948909)))

(assert (=> b!3121157 (= c!523192 (is-Union!9626 lt!1059006))))

(declare-fun b!3121158 () Bool)

(declare-fun e!1948910 () Bool)

(declare-fun e!1948913 () Bool)

(assert (=> b!3121158 (= e!1948910 e!1948913)))

(declare-fun res!1277184 () Bool)

(assert (=> b!3121158 (=> (not res!1277184) (not e!1948913))))

(assert (=> b!3121158 (= res!1277184 call!221882)))

(declare-fun d!862537 () Bool)

(declare-fun res!1277185 () Bool)

(declare-fun e!1948912 () Bool)

(assert (=> d!862537 (=> res!1277185 e!1948912)))

(assert (=> d!862537 (= res!1277185 (is-ElementMatch!9626 lt!1059006))))

(assert (=> d!862537 (= (validRegex!4359 lt!1059006) e!1948912)))

(declare-fun b!3121159 () Bool)

(assert (=> b!3121159 (= e!1948914 call!221881)))

(declare-fun b!3121160 () Bool)

(assert (=> b!3121160 (= e!1948912 e!1948911)))

(assert (=> b!3121160 (= c!523191 (is-Star!9626 lt!1059006))))

(declare-fun b!3121161 () Bool)

(declare-fun res!1277182 () Bool)

(assert (=> b!3121161 (=> res!1277182 e!1948910)))

(assert (=> b!3121161 (= res!1277182 (not (is-Concat!14947 lt!1059006)))))

(assert (=> b!3121161 (= e!1948909 e!1948910)))

(declare-fun b!3121162 () Bool)

(assert (=> b!3121162 (= e!1948913 call!221880)))

(assert (= (and d!862537 (not res!1277185)) b!3121160))

(assert (= (and b!3121160 c!523191) b!3121154))

(assert (= (and b!3121160 (not c!523191)) b!3121157))

(assert (= (and b!3121154 res!1277181) b!3121159))

(assert (= (and b!3121157 c!523192) b!3121155))

(assert (= (and b!3121157 (not c!523192)) b!3121161))

(assert (= (and b!3121155 res!1277183) b!3121156))

(assert (= (and b!3121161 (not res!1277182)) b!3121158))

(assert (= (and b!3121158 res!1277184) b!3121162))

(assert (= (or b!3121155 b!3121162) bm!221875))

(assert (= (or b!3121156 b!3121158) bm!221876))

(assert (= (or b!3121159 bm!221876) bm!221877))

(declare-fun m!3408211 () Bool)

(assert (=> bm!221875 m!3408211))

(declare-fun m!3408213 () Bool)

(assert (=> b!3121154 m!3408213))

(declare-fun m!3408215 () Bool)

(assert (=> bm!221877 m!3408215))

(assert (=> b!3120800 d!862537))

(declare-fun d!862539 () Bool)

(declare-fun choose!18456 (Int) Bool)

(assert (=> d!862539 (= (Exists!1880 lambda!115259) (choose!18456 lambda!115259))))

(declare-fun bs!535990 () Bool)

(assert (= bs!535990 d!862539))

(declare-fun m!3408217 () Bool)

(assert (=> bs!535990 m!3408217))

(assert (=> b!3120800 d!862539))

(declare-fun b!3121209 () Bool)

(declare-fun e!1948944 () Option!6847)

(declare-fun e!1948941 () Option!6847)

(assert (=> b!3121209 (= e!1948944 e!1948941)))

(declare-fun c!523203 () Bool)

(assert (=> b!3121209 (= c!523203 (is-Nil!35367 s!11993))))

(declare-fun b!3121210 () Bool)

(declare-fun res!1277215 () Bool)

(declare-fun e!1948942 () Bool)

(assert (=> b!3121210 (=> (not res!1277215) (not e!1948942))))

(declare-fun lt!1059082 () Option!6847)

(declare-fun get!11126 (Option!6847) tuple2!34230)

(assert (=> b!3121210 (= res!1277215 (matchR!4508 lt!1059006 (_1!20247 (get!11126 lt!1059082))))))

(declare-fun b!3121211 () Bool)

(declare-fun e!1948943 () Bool)

(assert (=> b!3121211 (= e!1948943 (not (isDefined!5398 lt!1059082)))))

(declare-fun b!3121212 () Bool)

(declare-fun res!1277216 () Bool)

(assert (=> b!3121212 (=> (not res!1277216) (not e!1948942))))

(assert (=> b!3121212 (= res!1277216 (matchR!4508 lt!1059005 (_2!20247 (get!11126 lt!1059082))))))

(declare-fun b!3121213 () Bool)

(assert (=> b!3121213 (= e!1948941 None!6846)))

(declare-fun b!3121214 () Bool)

(declare-fun ++!8504 (List!35491 List!35491) List!35491)

(assert (=> b!3121214 (= e!1948942 (= (++!8504 (_1!20247 (get!11126 lt!1059082)) (_2!20247 (get!11126 lt!1059082))) s!11993))))

(declare-fun b!3121215 () Bool)

(declare-fun e!1948940 () Bool)

(assert (=> b!3121215 (= e!1948940 (matchR!4508 lt!1059005 s!11993))))

(declare-fun b!3121216 () Bool)

(assert (=> b!3121216 (= e!1948944 (Some!6846 (tuple2!34231 Nil!35367 s!11993)))))

(declare-fun d!862541 () Bool)

(assert (=> d!862541 e!1948943))

(declare-fun res!1277213 () Bool)

(assert (=> d!862541 (=> res!1277213 e!1948943)))

(assert (=> d!862541 (= res!1277213 e!1948942)))

(declare-fun res!1277212 () Bool)

(assert (=> d!862541 (=> (not res!1277212) (not e!1948942))))

(assert (=> d!862541 (= res!1277212 (isDefined!5398 lt!1059082))))

(assert (=> d!862541 (= lt!1059082 e!1948944)))

(declare-fun c!523204 () Bool)

(assert (=> d!862541 (= c!523204 e!1948940)))

(declare-fun res!1277214 () Bool)

(assert (=> d!862541 (=> (not res!1277214) (not e!1948940))))

(assert (=> d!862541 (= res!1277214 (matchR!4508 lt!1059006 Nil!35367))))

(assert (=> d!862541 (validRegex!4359 lt!1059006)))

(assert (=> d!862541 (= (findConcatSeparation!1241 lt!1059006 lt!1059005 Nil!35367 s!11993 s!11993) lt!1059082)))

(declare-fun b!3121217 () Bool)

(declare-fun lt!1059083 () Unit!49691)

(declare-fun lt!1059081 () Unit!49691)

(assert (=> b!3121217 (= lt!1059083 lt!1059081)))

(assert (=> b!3121217 (= (++!8504 (++!8504 Nil!35367 (Cons!35367 (h!40787 s!11993) Nil!35367)) (t!234556 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1097 (List!35491 C!19438 List!35491 List!35491) Unit!49691)

(assert (=> b!3121217 (= lt!1059081 (lemmaMoveElementToOtherListKeepsConcatEq!1097 Nil!35367 (h!40787 s!11993) (t!234556 s!11993) s!11993))))

(assert (=> b!3121217 (= e!1948941 (findConcatSeparation!1241 lt!1059006 lt!1059005 (++!8504 Nil!35367 (Cons!35367 (h!40787 s!11993) Nil!35367)) (t!234556 s!11993) s!11993))))

(assert (= (and d!862541 res!1277214) b!3121215))

(assert (= (and d!862541 c!523204) b!3121216))

(assert (= (and d!862541 (not c!523204)) b!3121209))

(assert (= (and b!3121209 c!523203) b!3121213))

(assert (= (and b!3121209 (not c!523203)) b!3121217))

(assert (= (and d!862541 res!1277212) b!3121210))

(assert (= (and b!3121210 res!1277215) b!3121212))

(assert (= (and b!3121212 res!1277216) b!3121214))

(assert (= (and d!862541 (not res!1277213)) b!3121211))

(declare-fun m!3408219 () Bool)

(assert (=> d!862541 m!3408219))

(declare-fun m!3408221 () Bool)

(assert (=> d!862541 m!3408221))

(assert (=> d!862541 m!3408079))

(assert (=> b!3121211 m!3408219))

(declare-fun m!3408223 () Bool)

(assert (=> b!3121212 m!3408223))

(declare-fun m!3408225 () Bool)

(assert (=> b!3121212 m!3408225))

(assert (=> b!3121210 m!3408223))

(declare-fun m!3408227 () Bool)

(assert (=> b!3121210 m!3408227))

(assert (=> b!3121215 m!3408061))

(assert (=> b!3121214 m!3408223))

(declare-fun m!3408229 () Bool)

(assert (=> b!3121214 m!3408229))

(declare-fun m!3408231 () Bool)

(assert (=> b!3121217 m!3408231))

(assert (=> b!3121217 m!3408231))

(declare-fun m!3408233 () Bool)

(assert (=> b!3121217 m!3408233))

(declare-fun m!3408235 () Bool)

(assert (=> b!3121217 m!3408235))

(assert (=> b!3121217 m!3408231))

(declare-fun m!3408237 () Bool)

(assert (=> b!3121217 m!3408237))

(assert (=> b!3120800 d!862541))

(declare-fun b!3121218 () Bool)

(declare-fun res!1277218 () Bool)

(declare-fun e!1948951 () Bool)

(assert (=> b!3121218 (=> res!1277218 e!1948951)))

(declare-fun e!1948947 () Bool)

(assert (=> b!3121218 (= res!1277218 e!1948947)))

(declare-fun res!1277217 () Bool)

(assert (=> b!3121218 (=> (not res!1277217) (not e!1948947))))

(declare-fun lt!1059084 () Bool)

(assert (=> b!3121218 (= res!1277217 lt!1059084)))

(declare-fun b!3121219 () Bool)

(declare-fun res!1277221 () Bool)

(assert (=> b!3121219 (=> (not res!1277221) (not e!1948947))))

(assert (=> b!3121219 (= res!1277221 (isEmpty!19712 (tail!5144 s!11993)))))

(declare-fun b!3121220 () Bool)

(declare-fun e!1948949 () Bool)

(assert (=> b!3121220 (= e!1948949 (matchR!4508 (derivativeStep!2859 lt!1059005 (head!6918 s!11993)) (tail!5144 s!11993)))))

(declare-fun b!3121221 () Bool)

(assert (=> b!3121221 (= e!1948949 (nullable!3264 lt!1059005))))

(declare-fun b!3121222 () Bool)

(declare-fun e!1948950 () Bool)

(declare-fun e!1948948 () Bool)

(assert (=> b!3121222 (= e!1948950 e!1948948)))

(declare-fun c!523205 () Bool)

(assert (=> b!3121222 (= c!523205 (is-EmptyLang!9626 lt!1059005))))

(declare-fun b!3121223 () Bool)

(declare-fun res!1277220 () Bool)

(assert (=> b!3121223 (=> res!1277220 e!1948951)))

(assert (=> b!3121223 (= res!1277220 (not (is-ElementMatch!9626 lt!1059005)))))

(assert (=> b!3121223 (= e!1948948 e!1948951)))

(declare-fun b!3121224 () Bool)

(declare-fun call!221885 () Bool)

(assert (=> b!3121224 (= e!1948950 (= lt!1059084 call!221885))))

(declare-fun b!3121225 () Bool)

(assert (=> b!3121225 (= e!1948948 (not lt!1059084))))

(declare-fun b!3121226 () Bool)

(declare-fun res!1277219 () Bool)

(declare-fun e!1948945 () Bool)

(assert (=> b!3121226 (=> res!1277219 e!1948945)))

(assert (=> b!3121226 (= res!1277219 (not (isEmpty!19712 (tail!5144 s!11993))))))

(declare-fun b!3121227 () Bool)

(declare-fun e!1948946 () Bool)

(assert (=> b!3121227 (= e!1948951 e!1948946)))

(declare-fun res!1277224 () Bool)

(assert (=> b!3121227 (=> (not res!1277224) (not e!1948946))))

(assert (=> b!3121227 (= res!1277224 (not lt!1059084))))

(declare-fun b!3121229 () Bool)

(declare-fun res!1277222 () Bool)

(assert (=> b!3121229 (=> (not res!1277222) (not e!1948947))))

(assert (=> b!3121229 (= res!1277222 (not call!221885))))

(declare-fun bm!221880 () Bool)

(assert (=> bm!221880 (= call!221885 (isEmpty!19712 s!11993))))

(declare-fun b!3121230 () Bool)

(assert (=> b!3121230 (= e!1948947 (= (head!6918 s!11993) (c!523086 lt!1059005)))))

(declare-fun b!3121231 () Bool)

(assert (=> b!3121231 (= e!1948945 (not (= (head!6918 s!11993) (c!523086 lt!1059005))))))

(declare-fun b!3121228 () Bool)

(assert (=> b!3121228 (= e!1948946 e!1948945)))

(declare-fun res!1277223 () Bool)

(assert (=> b!3121228 (=> res!1277223 e!1948945)))

(assert (=> b!3121228 (= res!1277223 call!221885)))

(declare-fun d!862543 () Bool)

(assert (=> d!862543 e!1948950))

(declare-fun c!523207 () Bool)

(assert (=> d!862543 (= c!523207 (is-EmptyExpr!9626 lt!1059005))))

(assert (=> d!862543 (= lt!1059084 e!1948949)))

(declare-fun c!523206 () Bool)

(assert (=> d!862543 (= c!523206 (isEmpty!19712 s!11993))))

(assert (=> d!862543 (validRegex!4359 lt!1059005)))

(assert (=> d!862543 (= (matchR!4508 lt!1059005 s!11993) lt!1059084)))

(assert (= (and d!862543 c!523206) b!3121221))

(assert (= (and d!862543 (not c!523206)) b!3121220))

(assert (= (and d!862543 c!523207) b!3121224))

(assert (= (and d!862543 (not c!523207)) b!3121222))

(assert (= (and b!3121222 c!523205) b!3121225))

(assert (= (and b!3121222 (not c!523205)) b!3121223))

(assert (= (and b!3121223 (not res!1277220)) b!3121218))

(assert (= (and b!3121218 res!1277217) b!3121229))

(assert (= (and b!3121229 res!1277222) b!3121219))

(assert (= (and b!3121219 res!1277221) b!3121230))

(assert (= (and b!3121218 (not res!1277218)) b!3121227))

(assert (= (and b!3121227 res!1277224) b!3121228))

(assert (= (and b!3121228 (not res!1277223)) b!3121226))

(assert (= (and b!3121226 (not res!1277219)) b!3121231))

(assert (= (or b!3121224 b!3121229 b!3121228) bm!221880))

(assert (=> b!3121231 m!3408139))

(declare-fun m!3408239 () Bool)

(assert (=> b!3121221 m!3408239))

(assert (=> b!3121230 m!3408139))

(assert (=> bm!221880 m!3408085))

(assert (=> b!3121219 m!3408143))

(assert (=> b!3121219 m!3408143))

(assert (=> b!3121219 m!3408145))

(assert (=> d!862543 m!3408085))

(assert (=> d!862543 m!3408161))

(assert (=> b!3121220 m!3408139))

(assert (=> b!3121220 m!3408139))

(declare-fun m!3408241 () Bool)

(assert (=> b!3121220 m!3408241))

(assert (=> b!3121220 m!3408143))

(assert (=> b!3121220 m!3408241))

(assert (=> b!3121220 m!3408143))

(declare-fun m!3408243 () Bool)

(assert (=> b!3121220 m!3408243))

(assert (=> b!3121226 m!3408143))

(assert (=> b!3121226 m!3408143))

(assert (=> b!3121226 m!3408145))

(assert (=> b!3120801 d!862543))

(declare-fun b!3121236 () Bool)

(declare-fun e!1948954 () Bool)

(declare-fun tp!978128 () Bool)

(assert (=> b!3121236 (= e!1948954 (and tp_is_empty!16815 tp!978128))))

(assert (=> b!3120802 (= tp!978104 e!1948954)))

(assert (= (and b!3120802 (is-Cons!35367 (t!234556 s!11993))) b!3121236))

(declare-fun b!3121247 () Bool)

(declare-fun e!1948957 () Bool)

(assert (=> b!3121247 (= e!1948957 tp_is_empty!16815)))

(assert (=> b!3120803 (= tp!978105 e!1948957)))

(declare-fun b!3121250 () Bool)

(declare-fun tp!978139 () Bool)

(declare-fun tp!978140 () Bool)

(assert (=> b!3121250 (= e!1948957 (and tp!978139 tp!978140))))

(declare-fun b!3121249 () Bool)

(declare-fun tp!978141 () Bool)

(assert (=> b!3121249 (= e!1948957 tp!978141)))

(declare-fun b!3121248 () Bool)

(declare-fun tp!978143 () Bool)

(declare-fun tp!978142 () Bool)

(assert (=> b!3121248 (= e!1948957 (and tp!978143 tp!978142))))

(assert (= (and b!3120803 (is-ElementMatch!9626 (reg!9955 r!17423))) b!3121247))

(assert (= (and b!3120803 (is-Concat!14947 (reg!9955 r!17423))) b!3121248))

(assert (= (and b!3120803 (is-Star!9626 (reg!9955 r!17423))) b!3121249))

(assert (= (and b!3120803 (is-Union!9626 (reg!9955 r!17423))) b!3121250))

(declare-fun b!3121265 () Bool)

(declare-fun e!1948965 () Bool)

(assert (=> b!3121265 (= e!1948965 tp_is_empty!16815)))

(assert (=> b!3120798 (= tp!978102 e!1948965)))

(declare-fun b!3121268 () Bool)

(declare-fun tp!978144 () Bool)

(declare-fun tp!978145 () Bool)

(assert (=> b!3121268 (= e!1948965 (and tp!978144 tp!978145))))

(declare-fun b!3121267 () Bool)

(declare-fun tp!978146 () Bool)

(assert (=> b!3121267 (= e!1948965 tp!978146)))

(declare-fun b!3121266 () Bool)

(declare-fun tp!978148 () Bool)

(declare-fun tp!978147 () Bool)

(assert (=> b!3121266 (= e!1948965 (and tp!978148 tp!978147))))

(assert (= (and b!3120798 (is-ElementMatch!9626 (regOne!19765 r!17423))) b!3121265))

(assert (= (and b!3120798 (is-Concat!14947 (regOne!19765 r!17423))) b!3121266))

(assert (= (and b!3120798 (is-Star!9626 (regOne!19765 r!17423))) b!3121267))

(assert (= (and b!3120798 (is-Union!9626 (regOne!19765 r!17423))) b!3121268))

(declare-fun b!3121269 () Bool)

(declare-fun e!1948966 () Bool)

(assert (=> b!3121269 (= e!1948966 tp_is_empty!16815)))

(assert (=> b!3120798 (= tp!978107 e!1948966)))

(declare-fun b!3121272 () Bool)

(declare-fun tp!978149 () Bool)

(declare-fun tp!978150 () Bool)

(assert (=> b!3121272 (= e!1948966 (and tp!978149 tp!978150))))

(declare-fun b!3121271 () Bool)

(declare-fun tp!978151 () Bool)

(assert (=> b!3121271 (= e!1948966 tp!978151)))

(declare-fun b!3121270 () Bool)

(declare-fun tp!978153 () Bool)

(declare-fun tp!978152 () Bool)

(assert (=> b!3121270 (= e!1948966 (and tp!978153 tp!978152))))

(assert (= (and b!3120798 (is-ElementMatch!9626 (regTwo!19765 r!17423))) b!3121269))

(assert (= (and b!3120798 (is-Concat!14947 (regTwo!19765 r!17423))) b!3121270))

(assert (= (and b!3120798 (is-Star!9626 (regTwo!19765 r!17423))) b!3121271))

(assert (= (and b!3120798 (is-Union!9626 (regTwo!19765 r!17423))) b!3121272))

(declare-fun b!3121273 () Bool)

(declare-fun e!1948967 () Bool)

(assert (=> b!3121273 (= e!1948967 tp_is_empty!16815)))

(assert (=> b!3120795 (= tp!978106 e!1948967)))

(declare-fun b!3121276 () Bool)

(declare-fun tp!978154 () Bool)

(declare-fun tp!978155 () Bool)

(assert (=> b!3121276 (= e!1948967 (and tp!978154 tp!978155))))

(declare-fun b!3121275 () Bool)

(declare-fun tp!978156 () Bool)

(assert (=> b!3121275 (= e!1948967 tp!978156)))

(declare-fun b!3121274 () Bool)

(declare-fun tp!978158 () Bool)

(declare-fun tp!978157 () Bool)

(assert (=> b!3121274 (= e!1948967 (and tp!978158 tp!978157))))

(assert (= (and b!3120795 (is-ElementMatch!9626 (regOne!19764 r!17423))) b!3121273))

(assert (= (and b!3120795 (is-Concat!14947 (regOne!19764 r!17423))) b!3121274))

(assert (= (and b!3120795 (is-Star!9626 (regOne!19764 r!17423))) b!3121275))

(assert (= (and b!3120795 (is-Union!9626 (regOne!19764 r!17423))) b!3121276))

(declare-fun b!3121277 () Bool)

(declare-fun e!1948968 () Bool)

(assert (=> b!3121277 (= e!1948968 tp_is_empty!16815)))

(assert (=> b!3120795 (= tp!978103 e!1948968)))

(declare-fun b!3121280 () Bool)

(declare-fun tp!978159 () Bool)

(declare-fun tp!978160 () Bool)

(assert (=> b!3121280 (= e!1948968 (and tp!978159 tp!978160))))

(declare-fun b!3121279 () Bool)

(declare-fun tp!978161 () Bool)

(assert (=> b!3121279 (= e!1948968 tp!978161)))

(declare-fun b!3121278 () Bool)

(declare-fun tp!978163 () Bool)

(declare-fun tp!978162 () Bool)

(assert (=> b!3121278 (= e!1948968 (and tp!978163 tp!978162))))

(assert (= (and b!3120795 (is-ElementMatch!9626 (regTwo!19764 r!17423))) b!3121277))

(assert (= (and b!3120795 (is-Concat!14947 (regTwo!19764 r!17423))) b!3121278))

(assert (= (and b!3120795 (is-Star!9626 (regTwo!19764 r!17423))) b!3121279))

(assert (= (and b!3120795 (is-Union!9626 (regTwo!19764 r!17423))) b!3121280))

(push 1)

(assert (not b!3121276))

(assert (not b!3120997))

(assert (not b!3121211))

(assert (not b!3121221))

(assert (not bm!221869))

(assert (not b!3121210))

(assert (not b!3121279))

(assert (not b!3121220))

(assert (not b!3121280))

(assert (not bm!221818))

(assert (not d!862527))

(assert (not b!3121230))

(assert (not bm!221865))

(assert (not b!3121008))

(assert (not b!3120928))

(assert (not d!862505))

(assert (not b!3121022))

(assert (not b!3121215))

(assert (not b!3121009))

(assert (not b!3121137))

(assert (not bm!221880))

(assert (not bm!221875))

(assert (not b!3121275))

(assert (not b!3121266))

(assert (not bm!221866))

(assert (not b!3120998))

(assert tp_is_empty!16815)

(assert (not d!862531))

(assert (not b!3121271))

(assert (not bm!221877))

(assert (not d!862541))

(assert (not d!862543))

(assert (not bm!221835))

(assert (not bm!221812))

(assert (not d!862523))

(assert (not bm!221817))

(assert (not b!3121270))

(assert (not b!3121019))

(assert (not b!3121274))

(assert (not b!3121212))

(assert (not b!3120999))

(assert (not b!3121236))

(assert (not d!862539))

(assert (not d!862517))

(assert (not bm!221836))

(assert (not b!3121249))

(assert (not bm!221810))

(assert (not b!3121268))

(assert (not bm!221837))

(assert (not b!3121154))

(assert (not b!3121248))

(assert (not b!3121250))

(assert (not b!3121267))

(assert (not b!3121272))

(assert (not b!3121004))

(assert (not d!862515))

(assert (not b!3121219))

(assert (not b!3120868))

(assert (not b!3121217))

(assert (not d!862533))

(assert (not b!3121226))

(assert (not b!3121124))

(assert (not bm!221867))

(assert (not b!3121214))

(assert (not b!3121278))

(assert (not b!3121231))

(assert (not bm!221870))

(assert (not b!3120931))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

