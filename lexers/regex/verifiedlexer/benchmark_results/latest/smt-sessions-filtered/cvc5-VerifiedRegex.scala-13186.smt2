; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!719070 () Bool)

(assert start!719070)

(declare-fun b!7366118 () Bool)

(declare-fun e!4410108 () Bool)

(declare-fun tp!2093526 () Bool)

(assert (=> b!7366118 (= e!4410108 tp!2093526)))

(declare-fun b!7366119 () Bool)

(declare-fun res!2972951 () Bool)

(declare-fun e!4410111 () Bool)

(assert (=> b!7366119 (=> (not res!2972951) (not e!4410111))))

(declare-datatypes ((C!38794 0))(
  ( (C!38795 (val!29757 Int)) )
))
(declare-datatypes ((Regex!19260 0))(
  ( (ElementMatch!19260 (c!1368856 C!38794)) (Concat!28105 (regOne!39032 Regex!19260) (regTwo!39032 Regex!19260)) (EmptyExpr!19260) (Star!19260 (reg!19589 Regex!19260)) (EmptyLang!19260) (Union!19260 (regOne!39033 Regex!19260) (regTwo!39033 Regex!19260)) )
))
(declare-fun r1!2370 () Regex!19260)

(declare-fun c!10362 () C!38794)

(declare-datatypes ((List!71756 0))(
  ( (Nil!71632) (Cons!71632 (h!78080 Regex!19260) (t!386205 List!71756)) )
))
(declare-datatypes ((Context!16400 0))(
  ( (Context!16401 (exprs!8700 List!71756)) )
))
(declare-fun cWitness!61 () Context!16400)

(declare-fun ct1!282 () Context!16400)

(declare-fun derivationStepZipperDown!3086 (Regex!19260 Context!16400 C!38794) (Set Context!16400))

(assert (=> b!7366119 (= res!2972951 (set.member cWitness!61 (derivationStepZipperDown!3086 r1!2370 ct1!282 c!10362)))))

(declare-fun b!7366120 () Bool)

(declare-fun tp!2093523 () Bool)

(declare-fun tp!2093521 () Bool)

(assert (=> b!7366120 (= e!4410108 (and tp!2093523 tp!2093521))))

(declare-fun b!7366121 () Bool)

(declare-fun e!4410107 () Bool)

(declare-fun tp!2093525 () Bool)

(assert (=> b!7366121 (= e!4410107 tp!2093525)))

(declare-fun b!7366122 () Bool)

(declare-fun tp_is_empty!48765 () Bool)

(assert (=> b!7366122 (= e!4410108 tp_is_empty!48765)))

(declare-fun b!7366123 () Bool)

(declare-fun e!4410112 () Bool)

(declare-fun validRegex!9856 (Regex!19260) Bool)

(assert (=> b!7366123 (= e!4410112 (not (validRegex!9856 (regTwo!39032 r1!2370))))))

(declare-fun b!7366124 () Bool)

(declare-fun tp!2093522 () Bool)

(declare-fun tp!2093527 () Bool)

(assert (=> b!7366124 (= e!4410108 (and tp!2093522 tp!2093527))))

(declare-fun b!7366125 () Bool)

(declare-fun res!2972954 () Bool)

(assert (=> b!7366125 (=> (not res!2972954) (not e!4410112))))

(declare-fun nullable!8336 (Regex!19260) Bool)

(assert (=> b!7366125 (= res!2972954 (nullable!8336 (regOne!39032 r1!2370)))))

(declare-fun res!2972953 () Bool)

(assert (=> start!719070 (=> (not res!2972953) (not e!4410111))))

(assert (=> start!719070 (= res!2972953 (validRegex!9856 r1!2370))))

(assert (=> start!719070 e!4410111))

(assert (=> start!719070 tp_is_empty!48765))

(declare-fun e!4410110 () Bool)

(declare-fun inv!91491 (Context!16400) Bool)

(assert (=> start!719070 (and (inv!91491 cWitness!61) e!4410110)))

(declare-fun e!4410109 () Bool)

(assert (=> start!719070 (and (inv!91491 ct1!282) e!4410109)))

(assert (=> start!719070 e!4410108))

(declare-fun ct2!378 () Context!16400)

(assert (=> start!719070 (and (inv!91491 ct2!378) e!4410107)))

(declare-fun b!7366126 () Bool)

(declare-fun tp!2093520 () Bool)

(assert (=> b!7366126 (= e!4410109 tp!2093520)))

(declare-fun b!7366127 () Bool)

(declare-fun tp!2093524 () Bool)

(assert (=> b!7366127 (= e!4410110 tp!2093524)))

(declare-fun b!7366128 () Bool)

(assert (=> b!7366128 (= e!4410111 e!4410112)))

(declare-fun res!2972952 () Bool)

(assert (=> b!7366128 (=> (not res!2972952) (not e!4410112))))

(assert (=> b!7366128 (= res!2972952 (and (or (not (is-ElementMatch!19260 r1!2370)) (not (= c!10362 (c!1368856 r1!2370)))) (not (is-Union!19260 r1!2370)) (is-Concat!28105 r1!2370)))))

(declare-fun lt!2614981 () (Set Context!16400))

(declare-fun ++!17076 (List!71756 List!71756) List!71756)

(assert (=> b!7366128 (= lt!2614981 (derivationStepZipperDown!3086 r1!2370 (Context!16401 (++!17076 (exprs!8700 ct1!282) (exprs!8700 ct2!378))) c!10362))))

(declare-datatypes ((Unit!165469 0))(
  ( (Unit!165470) )
))
(declare-fun lt!2614980 () Unit!165469)

(declare-fun lambda!457790 () Int)

(declare-fun lemmaConcatPreservesForall!1933 (List!71756 List!71756 Int) Unit!165469)

(assert (=> b!7366128 (= lt!2614980 (lemmaConcatPreservesForall!1933 (exprs!8700 ct1!282) (exprs!8700 ct2!378) lambda!457790))))

(assert (= (and start!719070 res!2972953) b!7366119))

(assert (= (and b!7366119 res!2972951) b!7366128))

(assert (= (and b!7366128 res!2972952) b!7366125))

(assert (= (and b!7366125 res!2972954) b!7366123))

(assert (= start!719070 b!7366127))

(assert (= start!719070 b!7366126))

(assert (= (and start!719070 (is-ElementMatch!19260 r1!2370)) b!7366122))

(assert (= (and start!719070 (is-Concat!28105 r1!2370)) b!7366120))

(assert (= (and start!719070 (is-Star!19260 r1!2370)) b!7366118))

(assert (= (and start!719070 (is-Union!19260 r1!2370)) b!7366124))

(assert (= start!719070 b!7366121))

(declare-fun m!8021742 () Bool)

(assert (=> b!7366123 m!8021742))

(declare-fun m!8021744 () Bool)

(assert (=> b!7366119 m!8021744))

(declare-fun m!8021746 () Bool)

(assert (=> b!7366119 m!8021746))

(declare-fun m!8021748 () Bool)

(assert (=> b!7366125 m!8021748))

(declare-fun m!8021750 () Bool)

(assert (=> start!719070 m!8021750))

(declare-fun m!8021752 () Bool)

(assert (=> start!719070 m!8021752))

(declare-fun m!8021754 () Bool)

(assert (=> start!719070 m!8021754))

(declare-fun m!8021756 () Bool)

(assert (=> start!719070 m!8021756))

(declare-fun m!8021758 () Bool)

(assert (=> b!7366128 m!8021758))

(declare-fun m!8021760 () Bool)

(assert (=> b!7366128 m!8021760))

(declare-fun m!8021762 () Bool)

(assert (=> b!7366128 m!8021762))

(push 1)

(assert (not b!7366127))

(assert (not start!719070))

(assert tp_is_empty!48765)

(assert (not b!7366125))

(assert (not b!7366128))

(assert (not b!7366121))

(assert (not b!7366120))

(assert (not b!7366123))

(assert (not b!7366119))

(assert (not b!7366126))

(assert (not b!7366124))

(assert (not b!7366118))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7366180 () Bool)

(declare-fun res!2972978 () Bool)

(declare-fun e!4410145 () Bool)

(assert (=> b!7366180 (=> (not res!2972978) (not e!4410145))))

(declare-fun call!675822 () Bool)

(assert (=> b!7366180 (= res!2972978 call!675822)))

(declare-fun e!4410146 () Bool)

(assert (=> b!7366180 (= e!4410146 e!4410145)))

(declare-fun d!2282789 () Bool)

(declare-fun res!2972980 () Bool)

(declare-fun e!4410149 () Bool)

(assert (=> d!2282789 (=> res!2972980 e!4410149)))

(assert (=> d!2282789 (= res!2972980 (is-ElementMatch!19260 r1!2370))))

(assert (=> d!2282789 (= (validRegex!9856 r1!2370) e!4410149)))

(declare-fun b!7366181 () Bool)

(declare-fun res!2972977 () Bool)

(declare-fun e!4410151 () Bool)

(assert (=> b!7366181 (=> res!2972977 e!4410151)))

(assert (=> b!7366181 (= res!2972977 (not (is-Concat!28105 r1!2370)))))

(assert (=> b!7366181 (= e!4410146 e!4410151)))

(declare-fun c!1368862 () Bool)

(declare-fun bm!675815 () Bool)

(declare-fun c!1368863 () Bool)

(declare-fun call!675820 () Bool)

(assert (=> bm!675815 (= call!675820 (validRegex!9856 (ite c!1368863 (reg!19589 r1!2370) (ite c!1368862 (regOne!39033 r1!2370) (regTwo!39032 r1!2370)))))))

(declare-fun bm!675816 () Bool)

(declare-fun call!675821 () Bool)

(assert (=> bm!675816 (= call!675821 (validRegex!9856 (ite c!1368862 (regTwo!39033 r1!2370) (regOne!39032 r1!2370))))))

(declare-fun b!7366182 () Bool)

(declare-fun e!4410150 () Bool)

(declare-fun e!4410147 () Bool)

(assert (=> b!7366182 (= e!4410150 e!4410147)))

(declare-fun res!2972981 () Bool)

(assert (=> b!7366182 (= res!2972981 (not (nullable!8336 (reg!19589 r1!2370))))))

(assert (=> b!7366182 (=> (not res!2972981) (not e!4410147))))

(declare-fun b!7366183 () Bool)

(declare-fun e!4410148 () Bool)

(assert (=> b!7366183 (= e!4410151 e!4410148)))

(declare-fun res!2972979 () Bool)

(assert (=> b!7366183 (=> (not res!2972979) (not e!4410148))))

(assert (=> b!7366183 (= res!2972979 call!675821)))

(declare-fun bm!675817 () Bool)

(assert (=> bm!675817 (= call!675822 call!675820)))

(declare-fun b!7366184 () Bool)

(assert (=> b!7366184 (= e!4410147 call!675820)))

(declare-fun b!7366185 () Bool)

(assert (=> b!7366185 (= e!4410148 call!675822)))

(declare-fun b!7366186 () Bool)

(assert (=> b!7366186 (= e!4410150 e!4410146)))

(assert (=> b!7366186 (= c!1368862 (is-Union!19260 r1!2370))))

(declare-fun b!7366187 () Bool)

(assert (=> b!7366187 (= e!4410145 call!675821)))

(declare-fun b!7366188 () Bool)

(assert (=> b!7366188 (= e!4410149 e!4410150)))

(assert (=> b!7366188 (= c!1368863 (is-Star!19260 r1!2370))))

(assert (= (and d!2282789 (not res!2972980)) b!7366188))

(assert (= (and b!7366188 c!1368863) b!7366182))

(assert (= (and b!7366188 (not c!1368863)) b!7366186))

(assert (= (and b!7366182 res!2972981) b!7366184))

(assert (= (and b!7366186 c!1368862) b!7366180))

(assert (= (and b!7366186 (not c!1368862)) b!7366181))

(assert (= (and b!7366180 res!2972978) b!7366187))

(assert (= (and b!7366181 (not res!2972977)) b!7366183))

(assert (= (and b!7366183 res!2972979) b!7366185))

(assert (= (or b!7366180 b!7366185) bm!675817))

(assert (= (or b!7366187 b!7366183) bm!675816))

(assert (= (or b!7366184 bm!675817) bm!675815))

(declare-fun m!8021786 () Bool)

(assert (=> bm!675815 m!8021786))

(declare-fun m!8021788 () Bool)

(assert (=> bm!675816 m!8021788))

(declare-fun m!8021790 () Bool)

(assert (=> b!7366182 m!8021790))

(assert (=> start!719070 d!2282789))

(declare-fun bs!1920552 () Bool)

(declare-fun d!2282791 () Bool)

(assert (= bs!1920552 (and d!2282791 b!7366128)))

(declare-fun lambda!457796 () Int)

(assert (=> bs!1920552 (= lambda!457796 lambda!457790)))

(declare-fun forall!18066 (List!71756 Int) Bool)

(assert (=> d!2282791 (= (inv!91491 cWitness!61) (forall!18066 (exprs!8700 cWitness!61) lambda!457796))))

(declare-fun bs!1920553 () Bool)

(assert (= bs!1920553 d!2282791))

(declare-fun m!8021792 () Bool)

(assert (=> bs!1920553 m!8021792))

(assert (=> start!719070 d!2282791))

(declare-fun bs!1920554 () Bool)

(declare-fun d!2282793 () Bool)

(assert (= bs!1920554 (and d!2282793 b!7366128)))

(declare-fun lambda!457797 () Int)

(assert (=> bs!1920554 (= lambda!457797 lambda!457790)))

(declare-fun bs!1920555 () Bool)

(assert (= bs!1920555 (and d!2282793 d!2282791)))

(assert (=> bs!1920555 (= lambda!457797 lambda!457796)))

(assert (=> d!2282793 (= (inv!91491 ct1!282) (forall!18066 (exprs!8700 ct1!282) lambda!457797))))

(declare-fun bs!1920556 () Bool)

(assert (= bs!1920556 d!2282793))

(declare-fun m!8021794 () Bool)

(assert (=> bs!1920556 m!8021794))

(assert (=> start!719070 d!2282793))

(declare-fun bs!1920557 () Bool)

(declare-fun d!2282795 () Bool)

(assert (= bs!1920557 (and d!2282795 b!7366128)))

(declare-fun lambda!457798 () Int)

(assert (=> bs!1920557 (= lambda!457798 lambda!457790)))

(declare-fun bs!1920558 () Bool)

(assert (= bs!1920558 (and d!2282795 d!2282791)))

(assert (=> bs!1920558 (= lambda!457798 lambda!457796)))

(declare-fun bs!1920559 () Bool)

(assert (= bs!1920559 (and d!2282795 d!2282793)))

(assert (=> bs!1920559 (= lambda!457798 lambda!457797)))

(assert (=> d!2282795 (= (inv!91491 ct2!378) (forall!18066 (exprs!8700 ct2!378) lambda!457798))))

(declare-fun bs!1920560 () Bool)

(assert (= bs!1920560 d!2282795))

(declare-fun m!8021796 () Bool)

(assert (=> bs!1920560 m!8021796))

(assert (=> start!719070 d!2282795))

(declare-fun b!7366229 () Bool)

(declare-fun c!1368878 () Bool)

(assert (=> b!7366229 (= c!1368878 (is-Star!19260 r1!2370))))

(declare-fun e!4410181 () (Set Context!16400))

(declare-fun e!4410179 () (Set Context!16400))

(assert (=> b!7366229 (= e!4410181 e!4410179)))

(declare-fun b!7366230 () Bool)

(assert (=> b!7366230 (= e!4410179 (as set.empty (Set Context!16400)))))

(declare-fun b!7366231 () Bool)

(declare-fun e!4410182 () (Set Context!16400))

(assert (=> b!7366231 (= e!4410182 (set.insert (Context!16401 (++!17076 (exprs!8700 ct1!282) (exprs!8700 ct2!378))) (as set.empty (Set Context!16400))))))

(declare-fun c!1368882 () Bool)

(declare-fun call!675841 () (Set Context!16400))

(declare-fun bm!675834 () Bool)

(declare-fun call!675844 () List!71756)

(assert (=> bm!675834 (= call!675841 (derivationStepZipperDown!3086 (ite c!1368882 (regTwo!39033 r1!2370) (regOne!39032 r1!2370)) (ite c!1368882 (Context!16401 (++!17076 (exprs!8700 ct1!282) (exprs!8700 ct2!378))) (Context!16401 call!675844)) c!10362))))

(declare-fun d!2282797 () Bool)

(declare-fun c!1368881 () Bool)

(assert (=> d!2282797 (= c!1368881 (and (is-ElementMatch!19260 r1!2370) (= (c!1368856 r1!2370) c!10362)))))

(assert (=> d!2282797 (= (derivationStepZipperDown!3086 r1!2370 (Context!16401 (++!17076 (exprs!8700 ct1!282) (exprs!8700 ct2!378))) c!10362) e!4410182)))

(declare-fun b!7366232 () Bool)

(declare-fun e!4410178 () (Set Context!16400))

(assert (=> b!7366232 (= e!4410178 e!4410181)))

(declare-fun c!1368879 () Bool)

(assert (=> b!7366232 (= c!1368879 (is-Concat!28105 r1!2370))))

(declare-fun bm!675835 () Bool)

(declare-fun c!1368880 () Bool)

(declare-fun $colon$colon!3242 (List!71756 Regex!19260) List!71756)

(assert (=> bm!675835 (= call!675844 ($colon$colon!3242 (exprs!8700 (Context!16401 (++!17076 (exprs!8700 ct1!282) (exprs!8700 ct2!378)))) (ite (or c!1368880 c!1368879) (regTwo!39032 r1!2370) r1!2370)))))

(declare-fun b!7366233 () Bool)

(declare-fun e!4410183 () (Set Context!16400))

(declare-fun call!675839 () (Set Context!16400))

(assert (=> b!7366233 (= e!4410183 (set.union call!675839 call!675841))))

(declare-fun bm!675836 () Bool)

(declare-fun call!675842 () List!71756)

(assert (=> bm!675836 (= call!675842 call!675844)))

(declare-fun b!7366234 () Bool)

(declare-fun call!675843 () (Set Context!16400))

(assert (=> b!7366234 (= e!4410181 call!675843)))

(declare-fun bm!675837 () Bool)

(declare-fun call!675840 () (Set Context!16400))

(assert (=> bm!675837 (= call!675840 call!675839)))

(declare-fun b!7366235 () Bool)

(declare-fun e!4410180 () Bool)

(assert (=> b!7366235 (= e!4410180 (nullable!8336 (regOne!39032 r1!2370)))))

(declare-fun b!7366236 () Bool)

(assert (=> b!7366236 (= e!4410182 e!4410183)))

(assert (=> b!7366236 (= c!1368882 (is-Union!19260 r1!2370))))

(declare-fun b!7366237 () Bool)

(assert (=> b!7366237 (= e!4410179 call!675843)))

(declare-fun bm!675838 () Bool)

(assert (=> bm!675838 (= call!675843 call!675840)))

(declare-fun b!7366238 () Bool)

(assert (=> b!7366238 (= c!1368880 e!4410180)))

(declare-fun res!2972994 () Bool)

(assert (=> b!7366238 (=> (not res!2972994) (not e!4410180))))

(assert (=> b!7366238 (= res!2972994 (is-Concat!28105 r1!2370))))

(assert (=> b!7366238 (= e!4410183 e!4410178)))

(declare-fun bm!675839 () Bool)

(assert (=> bm!675839 (= call!675839 (derivationStepZipperDown!3086 (ite c!1368882 (regOne!39033 r1!2370) (ite c!1368880 (regTwo!39032 r1!2370) (ite c!1368879 (regOne!39032 r1!2370) (reg!19589 r1!2370)))) (ite (or c!1368882 c!1368880) (Context!16401 (++!17076 (exprs!8700 ct1!282) (exprs!8700 ct2!378))) (Context!16401 call!675842)) c!10362))))

(declare-fun b!7366239 () Bool)

(assert (=> b!7366239 (= e!4410178 (set.union call!675841 call!675840))))

(assert (= (and d!2282797 c!1368881) b!7366231))

(assert (= (and d!2282797 (not c!1368881)) b!7366236))

(assert (= (and b!7366236 c!1368882) b!7366233))

(assert (= (and b!7366236 (not c!1368882)) b!7366238))

(assert (= (and b!7366238 res!2972994) b!7366235))

(assert (= (and b!7366238 c!1368880) b!7366239))

(assert (= (and b!7366238 (not c!1368880)) b!7366232))

(assert (= (and b!7366232 c!1368879) b!7366234))

(assert (= (and b!7366232 (not c!1368879)) b!7366229))

(assert (= (and b!7366229 c!1368878) b!7366237))

(assert (= (and b!7366229 (not c!1368878)) b!7366230))

(assert (= (or b!7366234 b!7366237) bm!675836))

(assert (= (or b!7366234 b!7366237) bm!675838))

(assert (= (or b!7366239 bm!675838) bm!675837))

(assert (= (or b!7366239 bm!675836) bm!675835))

(assert (= (or b!7366233 b!7366239) bm!675834))

(assert (= (or b!7366233 bm!675837) bm!675839))

(declare-fun m!8021798 () Bool)

(assert (=> b!7366231 m!8021798))

(declare-fun m!8021800 () Bool)

(assert (=> bm!675839 m!8021800))

(declare-fun m!8021802 () Bool)

(assert (=> bm!675835 m!8021802))

(declare-fun m!8021804 () Bool)

(assert (=> bm!675834 m!8021804))

(assert (=> b!7366235 m!8021748))

(assert (=> b!7366128 d!2282797))

(declare-fun b!7366251 () Bool)

(declare-fun e!4410188 () Bool)

(declare-fun lt!2614990 () List!71756)

(assert (=> b!7366251 (= e!4410188 (or (not (= (exprs!8700 ct2!378) Nil!71632)) (= lt!2614990 (exprs!8700 ct1!282))))))

(declare-fun d!2282801 () Bool)

(assert (=> d!2282801 e!4410188))

(declare-fun res!2973000 () Bool)

(assert (=> d!2282801 (=> (not res!2973000) (not e!4410188))))

(declare-fun content!15142 (List!71756) (Set Regex!19260))

(assert (=> d!2282801 (= res!2973000 (= (content!15142 lt!2614990) (set.union (content!15142 (exprs!8700 ct1!282)) (content!15142 (exprs!8700 ct2!378)))))))

(declare-fun e!4410189 () List!71756)

(assert (=> d!2282801 (= lt!2614990 e!4410189)))

(declare-fun c!1368885 () Bool)

(assert (=> d!2282801 (= c!1368885 (is-Nil!71632 (exprs!8700 ct1!282)))))

(assert (=> d!2282801 (= (++!17076 (exprs!8700 ct1!282) (exprs!8700 ct2!378)) lt!2614990)))

(declare-fun b!7366250 () Bool)

(declare-fun res!2972999 () Bool)

(assert (=> b!7366250 (=> (not res!2972999) (not e!4410188))))

(declare-fun size!42120 (List!71756) Int)

(assert (=> b!7366250 (= res!2972999 (= (size!42120 lt!2614990) (+ (size!42120 (exprs!8700 ct1!282)) (size!42120 (exprs!8700 ct2!378)))))))

(declare-fun b!7366248 () Bool)

(assert (=> b!7366248 (= e!4410189 (exprs!8700 ct2!378))))

(declare-fun b!7366249 () Bool)

(assert (=> b!7366249 (= e!4410189 (Cons!71632 (h!78080 (exprs!8700 ct1!282)) (++!17076 (t!386205 (exprs!8700 ct1!282)) (exprs!8700 ct2!378))))))

(assert (= (and d!2282801 c!1368885) b!7366248))

(assert (= (and d!2282801 (not c!1368885)) b!7366249))

(assert (= (and d!2282801 res!2973000) b!7366250))

(assert (= (and b!7366250 res!2972999) b!7366251))

(declare-fun m!8021806 () Bool)

(assert (=> d!2282801 m!8021806))

(declare-fun m!8021808 () Bool)

(assert (=> d!2282801 m!8021808))

(declare-fun m!8021810 () Bool)

(assert (=> d!2282801 m!8021810))

(declare-fun m!8021812 () Bool)

(assert (=> b!7366250 m!8021812))

(declare-fun m!8021814 () Bool)

(assert (=> b!7366250 m!8021814))

(declare-fun m!8021816 () Bool)

(assert (=> b!7366250 m!8021816))

(declare-fun m!8021818 () Bool)

(assert (=> b!7366249 m!8021818))

(assert (=> b!7366128 d!2282801))

(declare-fun d!2282803 () Bool)

(assert (=> d!2282803 (forall!18066 (++!17076 (exprs!8700 ct1!282) (exprs!8700 ct2!378)) lambda!457790)))

(declare-fun lt!2614993 () Unit!165469)

(declare-fun choose!57285 (List!71756 List!71756 Int) Unit!165469)

(assert (=> d!2282803 (= lt!2614993 (choose!57285 (exprs!8700 ct1!282) (exprs!8700 ct2!378) lambda!457790))))

(assert (=> d!2282803 (forall!18066 (exprs!8700 ct1!282) lambda!457790)))

(assert (=> d!2282803 (= (lemmaConcatPreservesForall!1933 (exprs!8700 ct1!282) (exprs!8700 ct2!378) lambda!457790) lt!2614993)))

(declare-fun bs!1920561 () Bool)

(assert (= bs!1920561 d!2282803))

(assert (=> bs!1920561 m!8021758))

(assert (=> bs!1920561 m!8021758))

(declare-fun m!8021820 () Bool)

(assert (=> bs!1920561 m!8021820))

(declare-fun m!8021822 () Bool)

(assert (=> bs!1920561 m!8021822))

(declare-fun m!8021824 () Bool)

(assert (=> bs!1920561 m!8021824))

(assert (=> b!7366128 d!2282803))

(declare-fun b!7366261 () Bool)

(declare-fun res!2973007 () Bool)

(declare-fun e!4410197 () Bool)

(assert (=> b!7366261 (=> (not res!2973007) (not e!4410197))))

(declare-fun call!675852 () Bool)

(assert (=> b!7366261 (= res!2973007 call!675852)))

(declare-fun e!4410198 () Bool)

(assert (=> b!7366261 (= e!4410198 e!4410197)))

(declare-fun d!2282805 () Bool)

(declare-fun res!2973009 () Bool)

(declare-fun e!4410201 () Bool)

(assert (=> d!2282805 (=> res!2973009 e!4410201)))

(assert (=> d!2282805 (= res!2973009 (is-ElementMatch!19260 (regTwo!39032 r1!2370)))))

(assert (=> d!2282805 (= (validRegex!9856 (regTwo!39032 r1!2370)) e!4410201)))

(declare-fun b!7366262 () Bool)

(declare-fun res!2973006 () Bool)

(declare-fun e!4410203 () Bool)

(assert (=> b!7366262 (=> res!2973006 e!4410203)))

(assert (=> b!7366262 (= res!2973006 (not (is-Concat!28105 (regTwo!39032 r1!2370))))))

(assert (=> b!7366262 (= e!4410198 e!4410203)))

(declare-fun bm!675845 () Bool)

(declare-fun c!1368888 () Bool)

(declare-fun c!1368889 () Bool)

(declare-fun call!675850 () Bool)

(assert (=> bm!675845 (= call!675850 (validRegex!9856 (ite c!1368889 (reg!19589 (regTwo!39032 r1!2370)) (ite c!1368888 (regOne!39033 (regTwo!39032 r1!2370)) (regTwo!39032 (regTwo!39032 r1!2370))))))))

(declare-fun bm!675846 () Bool)

(declare-fun call!675851 () Bool)

(assert (=> bm!675846 (= call!675851 (validRegex!9856 (ite c!1368888 (regTwo!39033 (regTwo!39032 r1!2370)) (regOne!39032 (regTwo!39032 r1!2370)))))))

(declare-fun b!7366263 () Bool)

(declare-fun e!4410202 () Bool)

(declare-fun e!4410199 () Bool)

(assert (=> b!7366263 (= e!4410202 e!4410199)))

(declare-fun res!2973010 () Bool)

(assert (=> b!7366263 (= res!2973010 (not (nullable!8336 (reg!19589 (regTwo!39032 r1!2370)))))))

(assert (=> b!7366263 (=> (not res!2973010) (not e!4410199))))

(declare-fun b!7366264 () Bool)

(declare-fun e!4410200 () Bool)

(assert (=> b!7366264 (= e!4410203 e!4410200)))

(declare-fun res!2973008 () Bool)

(assert (=> b!7366264 (=> (not res!2973008) (not e!4410200))))

(assert (=> b!7366264 (= res!2973008 call!675851)))

(declare-fun bm!675847 () Bool)

(assert (=> bm!675847 (= call!675852 call!675850)))

(declare-fun b!7366265 () Bool)

(assert (=> b!7366265 (= e!4410199 call!675850)))

(declare-fun b!7366266 () Bool)

(assert (=> b!7366266 (= e!4410200 call!675852)))

(declare-fun b!7366267 () Bool)

(assert (=> b!7366267 (= e!4410202 e!4410198)))

(assert (=> b!7366267 (= c!1368888 (is-Union!19260 (regTwo!39032 r1!2370)))))

(declare-fun b!7366268 () Bool)

(assert (=> b!7366268 (= e!4410197 call!675851)))

(declare-fun b!7366269 () Bool)

(assert (=> b!7366269 (= e!4410201 e!4410202)))

(assert (=> b!7366269 (= c!1368889 (is-Star!19260 (regTwo!39032 r1!2370)))))

(assert (= (and d!2282805 (not res!2973009)) b!7366269))

(assert (= (and b!7366269 c!1368889) b!7366263))

(assert (= (and b!7366269 (not c!1368889)) b!7366267))

(assert (= (and b!7366263 res!2973010) b!7366265))

(assert (= (and b!7366267 c!1368888) b!7366261))

(assert (= (and b!7366267 (not c!1368888)) b!7366262))

(assert (= (and b!7366261 res!2973007) b!7366268))

(assert (= (and b!7366262 (not res!2973006)) b!7366264))

(assert (= (and b!7366264 res!2973008) b!7366266))

(assert (= (or b!7366261 b!7366266) bm!675847))

(assert (= (or b!7366268 b!7366264) bm!675846))

(assert (= (or b!7366265 bm!675847) bm!675845))

(declare-fun m!8021832 () Bool)

(assert (=> bm!675845 m!8021832))

(declare-fun m!8021834 () Bool)

(assert (=> bm!675846 m!8021834))

(declare-fun m!8021836 () Bool)

(assert (=> b!7366263 m!8021836))

(assert (=> b!7366123 d!2282805))

(declare-fun d!2282809 () Bool)

(declare-fun nullableFct!3325 (Regex!19260) Bool)

(assert (=> d!2282809 (= (nullable!8336 (regOne!39032 r1!2370)) (nullableFct!3325 (regOne!39032 r1!2370)))))

(declare-fun bs!1920562 () Bool)

(assert (= bs!1920562 d!2282809))

(declare-fun m!8021838 () Bool)

(assert (=> bs!1920562 m!8021838))

(assert (=> b!7366125 d!2282809))

(declare-fun b!7366270 () Bool)

(declare-fun c!1368890 () Bool)

(assert (=> b!7366270 (= c!1368890 (is-Star!19260 r1!2370))))

(declare-fun e!4410207 () (Set Context!16400))

(declare-fun e!4410205 () (Set Context!16400))

(assert (=> b!7366270 (= e!4410207 e!4410205)))

(declare-fun b!7366271 () Bool)

(assert (=> b!7366271 (= e!4410205 (as set.empty (Set Context!16400)))))

(declare-fun b!7366272 () Bool)

(declare-fun e!4410208 () (Set Context!16400))

(assert (=> b!7366272 (= e!4410208 (set.insert ct1!282 (as set.empty (Set Context!16400))))))

(declare-fun c!1368894 () Bool)

(declare-fun call!675858 () List!71756)

(declare-fun call!675855 () (Set Context!16400))

(declare-fun bm!675848 () Bool)

(assert (=> bm!675848 (= call!675855 (derivationStepZipperDown!3086 (ite c!1368894 (regTwo!39033 r1!2370) (regOne!39032 r1!2370)) (ite c!1368894 ct1!282 (Context!16401 call!675858)) c!10362))))

(declare-fun d!2282811 () Bool)

(declare-fun c!1368893 () Bool)

(assert (=> d!2282811 (= c!1368893 (and (is-ElementMatch!19260 r1!2370) (= (c!1368856 r1!2370) c!10362)))))

(assert (=> d!2282811 (= (derivationStepZipperDown!3086 r1!2370 ct1!282 c!10362) e!4410208)))

(declare-fun b!7366273 () Bool)

(declare-fun e!4410204 () (Set Context!16400))

(assert (=> b!7366273 (= e!4410204 e!4410207)))

(declare-fun c!1368891 () Bool)

(assert (=> b!7366273 (= c!1368891 (is-Concat!28105 r1!2370))))

(declare-fun c!1368892 () Bool)

(declare-fun bm!675849 () Bool)

(assert (=> bm!675849 (= call!675858 ($colon$colon!3242 (exprs!8700 ct1!282) (ite (or c!1368892 c!1368891) (regTwo!39032 r1!2370) r1!2370)))))

(declare-fun b!7366274 () Bool)

(declare-fun e!4410209 () (Set Context!16400))

(declare-fun call!675853 () (Set Context!16400))

(assert (=> b!7366274 (= e!4410209 (set.union call!675853 call!675855))))

(declare-fun bm!675850 () Bool)

(declare-fun call!675856 () List!71756)

(assert (=> bm!675850 (= call!675856 call!675858)))

(declare-fun b!7366275 () Bool)

(declare-fun call!675857 () (Set Context!16400))

(assert (=> b!7366275 (= e!4410207 call!675857)))

(declare-fun bm!675851 () Bool)

(declare-fun call!675854 () (Set Context!16400))

(assert (=> bm!675851 (= call!675854 call!675853)))

(declare-fun b!7366276 () Bool)

(declare-fun e!4410206 () Bool)

(assert (=> b!7366276 (= e!4410206 (nullable!8336 (regOne!39032 r1!2370)))))

(declare-fun b!7366277 () Bool)

(assert (=> b!7366277 (= e!4410208 e!4410209)))

(assert (=> b!7366277 (= c!1368894 (is-Union!19260 r1!2370))))

(declare-fun b!7366278 () Bool)

(assert (=> b!7366278 (= e!4410205 call!675857)))

(declare-fun bm!675852 () Bool)

(assert (=> bm!675852 (= call!675857 call!675854)))

(declare-fun b!7366279 () Bool)

(assert (=> b!7366279 (= c!1368892 e!4410206)))

(declare-fun res!2973011 () Bool)

(assert (=> b!7366279 (=> (not res!2973011) (not e!4410206))))

(assert (=> b!7366279 (= res!2973011 (is-Concat!28105 r1!2370))))

(assert (=> b!7366279 (= e!4410209 e!4410204)))

(declare-fun bm!675853 () Bool)

(assert (=> bm!675853 (= call!675853 (derivationStepZipperDown!3086 (ite c!1368894 (regOne!39033 r1!2370) (ite c!1368892 (regTwo!39032 r1!2370) (ite c!1368891 (regOne!39032 r1!2370) (reg!19589 r1!2370)))) (ite (or c!1368894 c!1368892) ct1!282 (Context!16401 call!675856)) c!10362))))

(declare-fun b!7366280 () Bool)

(assert (=> b!7366280 (= e!4410204 (set.union call!675855 call!675854))))

(assert (= (and d!2282811 c!1368893) b!7366272))

(assert (= (and d!2282811 (not c!1368893)) b!7366277))

(assert (= (and b!7366277 c!1368894) b!7366274))

(assert (= (and b!7366277 (not c!1368894)) b!7366279))

(assert (= (and b!7366279 res!2973011) b!7366276))

(assert (= (and b!7366279 c!1368892) b!7366280))

(assert (= (and b!7366279 (not c!1368892)) b!7366273))

(assert (= (and b!7366273 c!1368891) b!7366275))

(assert (= (and b!7366273 (not c!1368891)) b!7366270))

(assert (= (and b!7366270 c!1368890) b!7366278))

(assert (= (and b!7366270 (not c!1368890)) b!7366271))

(assert (= (or b!7366275 b!7366278) bm!675850))

(assert (= (or b!7366275 b!7366278) bm!675852))

(assert (= (or b!7366280 bm!675852) bm!675851))

(assert (= (or b!7366280 bm!675850) bm!675849))

(assert (= (or b!7366274 b!7366280) bm!675848))

(assert (= (or b!7366274 bm!675851) bm!675853))

(declare-fun m!8021840 () Bool)

(assert (=> b!7366272 m!8021840))

(declare-fun m!8021842 () Bool)

(assert (=> bm!675853 m!8021842))

(declare-fun m!8021844 () Bool)

(assert (=> bm!675849 m!8021844))

(declare-fun m!8021846 () Bool)

(assert (=> bm!675848 m!8021846))

(assert (=> b!7366276 m!8021748))

(assert (=> b!7366119 d!2282811))

(declare-fun b!7366285 () Bool)

(declare-fun e!4410212 () Bool)

(declare-fun tp!2093556 () Bool)

(declare-fun tp!2093557 () Bool)

(assert (=> b!7366285 (= e!4410212 (and tp!2093556 tp!2093557))))

(assert (=> b!7366121 (= tp!2093525 e!4410212)))

(assert (= (and b!7366121 (is-Cons!71632 (exprs!8700 ct2!378))) b!7366285))

(declare-fun b!7366286 () Bool)

(declare-fun e!4410213 () Bool)

(declare-fun tp!2093558 () Bool)

(declare-fun tp!2093559 () Bool)

(assert (=> b!7366286 (= e!4410213 (and tp!2093558 tp!2093559))))

(assert (=> b!7366126 (= tp!2093520 e!4410213)))

(assert (= (and b!7366126 (is-Cons!71632 (exprs!8700 ct1!282))) b!7366286))

(declare-fun b!7366287 () Bool)

(declare-fun e!4410214 () Bool)

(declare-fun tp!2093560 () Bool)

(declare-fun tp!2093561 () Bool)

(assert (=> b!7366287 (= e!4410214 (and tp!2093560 tp!2093561))))

(assert (=> b!7366127 (= tp!2093524 e!4410214)))

(assert (= (and b!7366127 (is-Cons!71632 (exprs!8700 cWitness!61))) b!7366287))

(declare-fun b!7366298 () Bool)

(declare-fun e!4410217 () Bool)

(assert (=> b!7366298 (= e!4410217 tp_is_empty!48765)))

(declare-fun b!7366300 () Bool)

(declare-fun tp!2093576 () Bool)

(assert (=> b!7366300 (= e!4410217 tp!2093576)))

(declare-fun b!7366301 () Bool)

(declare-fun tp!2093575 () Bool)

(declare-fun tp!2093574 () Bool)

(assert (=> b!7366301 (= e!4410217 (and tp!2093575 tp!2093574))))

(declare-fun b!7366299 () Bool)

(declare-fun tp!2093573 () Bool)

(declare-fun tp!2093572 () Bool)

(assert (=> b!7366299 (= e!4410217 (and tp!2093573 tp!2093572))))

(assert (=> b!7366124 (= tp!2093522 e!4410217)))

(assert (= (and b!7366124 (is-ElementMatch!19260 (regOne!39033 r1!2370))) b!7366298))

(assert (= (and b!7366124 (is-Concat!28105 (regOne!39033 r1!2370))) b!7366299))

(assert (= (and b!7366124 (is-Star!19260 (regOne!39033 r1!2370))) b!7366300))

(assert (= (and b!7366124 (is-Union!19260 (regOne!39033 r1!2370))) b!7366301))

(declare-fun b!7366302 () Bool)

(declare-fun e!4410218 () Bool)

(assert (=> b!7366302 (= e!4410218 tp_is_empty!48765)))

(declare-fun b!7366304 () Bool)

(declare-fun tp!2093581 () Bool)

(assert (=> b!7366304 (= e!4410218 tp!2093581)))

(declare-fun b!7366305 () Bool)

(declare-fun tp!2093580 () Bool)

(declare-fun tp!2093579 () Bool)

(assert (=> b!7366305 (= e!4410218 (and tp!2093580 tp!2093579))))

(declare-fun b!7366303 () Bool)

(declare-fun tp!2093578 () Bool)

(declare-fun tp!2093577 () Bool)

(assert (=> b!7366303 (= e!4410218 (and tp!2093578 tp!2093577))))

(assert (=> b!7366124 (= tp!2093527 e!4410218)))

(assert (= (and b!7366124 (is-ElementMatch!19260 (regTwo!39033 r1!2370))) b!7366302))

(assert (= (and b!7366124 (is-Concat!28105 (regTwo!39033 r1!2370))) b!7366303))

(assert (= (and b!7366124 (is-Star!19260 (regTwo!39033 r1!2370))) b!7366304))

(assert (= (and b!7366124 (is-Union!19260 (regTwo!39033 r1!2370))) b!7366305))

(declare-fun b!7366306 () Bool)

(declare-fun e!4410219 () Bool)

(assert (=> b!7366306 (= e!4410219 tp_is_empty!48765)))

(declare-fun b!7366308 () Bool)

(declare-fun tp!2093586 () Bool)

(assert (=> b!7366308 (= e!4410219 tp!2093586)))

(declare-fun b!7366309 () Bool)

(declare-fun tp!2093585 () Bool)

(declare-fun tp!2093584 () Bool)

(assert (=> b!7366309 (= e!4410219 (and tp!2093585 tp!2093584))))

(declare-fun b!7366307 () Bool)

(declare-fun tp!2093583 () Bool)

(declare-fun tp!2093582 () Bool)

(assert (=> b!7366307 (= e!4410219 (and tp!2093583 tp!2093582))))

(assert (=> b!7366118 (= tp!2093526 e!4410219)))

(assert (= (and b!7366118 (is-ElementMatch!19260 (reg!19589 r1!2370))) b!7366306))

(assert (= (and b!7366118 (is-Concat!28105 (reg!19589 r1!2370))) b!7366307))

(assert (= (and b!7366118 (is-Star!19260 (reg!19589 r1!2370))) b!7366308))

(assert (= (and b!7366118 (is-Union!19260 (reg!19589 r1!2370))) b!7366309))

(declare-fun b!7366310 () Bool)

(declare-fun e!4410220 () Bool)

(assert (=> b!7366310 (= e!4410220 tp_is_empty!48765)))

(declare-fun b!7366312 () Bool)

(declare-fun tp!2093591 () Bool)

(assert (=> b!7366312 (= e!4410220 tp!2093591)))

(declare-fun b!7366313 () Bool)

(declare-fun tp!2093590 () Bool)

(declare-fun tp!2093589 () Bool)

(assert (=> b!7366313 (= e!4410220 (and tp!2093590 tp!2093589))))

(declare-fun b!7366311 () Bool)

(declare-fun tp!2093588 () Bool)

(declare-fun tp!2093587 () Bool)

(assert (=> b!7366311 (= e!4410220 (and tp!2093588 tp!2093587))))

(assert (=> b!7366120 (= tp!2093523 e!4410220)))

(assert (= (and b!7366120 (is-ElementMatch!19260 (regOne!39032 r1!2370))) b!7366310))

(assert (= (and b!7366120 (is-Concat!28105 (regOne!39032 r1!2370))) b!7366311))

(assert (= (and b!7366120 (is-Star!19260 (regOne!39032 r1!2370))) b!7366312))

(assert (= (and b!7366120 (is-Union!19260 (regOne!39032 r1!2370))) b!7366313))

(declare-fun b!7366314 () Bool)

(declare-fun e!4410221 () Bool)

(assert (=> b!7366314 (= e!4410221 tp_is_empty!48765)))

(declare-fun b!7366316 () Bool)

(declare-fun tp!2093596 () Bool)

(assert (=> b!7366316 (= e!4410221 tp!2093596)))

(declare-fun b!7366317 () Bool)

(declare-fun tp!2093595 () Bool)

(declare-fun tp!2093594 () Bool)

(assert (=> b!7366317 (= e!4410221 (and tp!2093595 tp!2093594))))

(declare-fun b!7366315 () Bool)

(declare-fun tp!2093593 () Bool)

(declare-fun tp!2093592 () Bool)

(assert (=> b!7366315 (= e!4410221 (and tp!2093593 tp!2093592))))

(assert (=> b!7366120 (= tp!2093521 e!4410221)))

(assert (= (and b!7366120 (is-ElementMatch!19260 (regTwo!39032 r1!2370))) b!7366314))

(assert (= (and b!7366120 (is-Concat!28105 (regTwo!39032 r1!2370))) b!7366315))

(assert (= (and b!7366120 (is-Star!19260 (regTwo!39032 r1!2370))) b!7366316))

(assert (= (and b!7366120 (is-Union!19260 (regTwo!39032 r1!2370))) b!7366317))

(push 1)

(assert (not b!7366309))

(assert tp_is_empty!48765)

(assert (not b!7366315))

(assert (not bm!675835))

(assert (not b!7366287))

(assert (not d!2282801))

(assert (not d!2282795))

(assert (not b!7366313))

(assert (not b!7366286))

(assert (not bm!675845))

(assert (not b!7366249))

(assert (not bm!675853))

(assert (not b!7366276))

(assert (not b!7366317))

(assert (not b!7366300))

(assert (not b!7366303))

(assert (not b!7366305))

(assert (not bm!675834))

(assert (not b!7366285))

(assert (not d!2282809))

(assert (not b!7366250))

(assert (not bm!675849))

(assert (not b!7366263))

(assert (not b!7366312))

(assert (not b!7366299))

(assert (not d!2282793))

(assert (not b!7366182))

(assert (not b!7366304))

(assert (not bm!675816))

(assert (not b!7366316))

(assert (not bm!675815))

(assert (not bm!675848))

(assert (not b!7366308))

(assert (not b!7366307))

(assert (not d!2282791))

(assert (not bm!675846))

(assert (not bm!675839))

(assert (not b!7366235))

(assert (not b!7366301))

(assert (not d!2282803))

(assert (not b!7366311))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

