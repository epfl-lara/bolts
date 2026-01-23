; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!668824 () Bool)

(assert start!668824)

(declare-fun b!6976912 () Bool)

(assert (=> b!6976912 true))

(declare-fun b!6976906 () Bool)

(declare-fun e!4193067 () Bool)

(declare-fun e!4193072 () Bool)

(assert (=> b!6976906 (= e!4193067 e!4193072)))

(declare-fun res!2844917 () Bool)

(assert (=> b!6976906 (=> res!2844917 e!4193072)))

(declare-datatypes ((C!34554 0))(
  ( (C!34555 (val!26979 Int)) )
))
(declare-datatypes ((Regex!17142 0))(
  ( (ElementMatch!17142 (c!1293156 C!34554)) (Concat!25987 (regOne!34796 Regex!17142) (regTwo!34796 Regex!17142)) (EmptyExpr!17142) (Star!17142 (reg!17471 Regex!17142)) (EmptyLang!17142) (Union!17142 (regOne!34797 Regex!17142) (regTwo!34797 Regex!17142)) )
))
(declare-datatypes ((List!66971 0))(
  ( (Nil!66847) (Cons!66847 (h!73295 Regex!17142) (t!380714 List!66971)) )
))
(declare-datatypes ((Context!12276 0))(
  ( (Context!12277 (exprs!6638 List!66971)) )
))
(declare-fun c!142 () Context!12276)

(declare-fun lambda!398054 () Int)

(declare-fun forall!16013 (List!66971 Int) Bool)

(assert (=> b!6976906 (= res!2844917 (not (forall!16013 (exprs!6638 c!142) lambda!398054)))))

(declare-fun b!6976907 () Bool)

(declare-fun ct2!306 () Context!12276)

(assert (=> b!6976907 (= e!4193072 (forall!16013 (exprs!6638 ct2!306) lambda!398054))))

(declare-fun b!6976909 () Bool)

(declare-fun e!4193071 () Bool)

(declare-fun tp!1927148 () Bool)

(assert (=> b!6976909 (= e!4193071 tp!1927148)))

(declare-fun b!6976910 () Bool)

(declare-fun e!4193070 () Bool)

(declare-fun tp!1927149 () Bool)

(assert (=> b!6976910 (= e!4193070 tp!1927149)))

(declare-fun b!6976911 () Bool)

(declare-fun e!4193073 () Bool)

(declare-fun tp!1927150 () Bool)

(assert (=> b!6976911 (= e!4193073 tp!1927150)))

(declare-fun tp!1927152 () Bool)

(declare-fun setNonEmpty!47336 () Bool)

(declare-fun setRes!47336 () Bool)

(declare-fun setElem!47336 () Context!12276)

(declare-fun inv!85715 (Context!12276) Bool)

(assert (=> setNonEmpty!47336 (= setRes!47336 (and tp!1927152 (inv!85715 setElem!47336) e!4193070))))

(declare-fun z1!570 () (Set Context!12276))

(declare-fun setRest!47336 () (Set Context!12276))

(assert (=> setNonEmpty!47336 (= z1!570 (set.union (set.insert setElem!47336 (as set.empty (Set Context!12276))) setRest!47336))))

(declare-fun setIsEmpty!47336 () Bool)

(assert (=> setIsEmpty!47336 setRes!47336))

(declare-fun e!4193068 () Bool)

(assert (=> b!6976912 (= e!4193068 (not e!4193067))))

(declare-fun res!2844913 () Bool)

(assert (=> b!6976912 (=> res!2844913 e!4193067)))

(declare-fun lt!2480038 () Context!12276)

(declare-datatypes ((List!66972 0))(
  ( (Nil!66848) (Cons!66848 (h!73296 C!34554) (t!380715 List!66972)) )
))
(declare-fun s!7408 () List!66972)

(declare-fun matchZipper!2682 ((Set Context!12276) List!66972) Bool)

(assert (=> b!6976912 (= res!2844913 (not (matchZipper!2682 (set.insert lt!2480038 (as set.empty (Set Context!12276))) s!7408)))))

(declare-fun lt!2480036 () (Set Context!12276))

(declare-fun lambda!398053 () Int)

(declare-fun getWitness!991 ((Set Context!12276) Int) Context!12276)

(assert (=> b!6976912 (= lt!2480038 (getWitness!991 lt!2480036 lambda!398053))))

(declare-datatypes ((List!66973 0))(
  ( (Nil!66849) (Cons!66849 (h!73297 Context!12276) (t!380716 List!66973)) )
))
(declare-fun lt!2480037 () List!66973)

(declare-fun exists!2880 (List!66973 Int) Bool)

(assert (=> b!6976912 (exists!2880 lt!2480037 lambda!398053)))

(declare-datatypes ((Unit!160932 0))(
  ( (Unit!160933) )
))
(declare-fun lt!2480039 () Unit!160932)

(declare-fun lemmaZipperMatchesExistsMatchingContext!111 (List!66973 List!66972) Unit!160932)

(assert (=> b!6976912 (= lt!2480039 (lemmaZipperMatchesExistsMatchingContext!111 lt!2480037 s!7408))))

(declare-fun toList!10502 ((Set Context!12276)) List!66973)

(assert (=> b!6976912 (= lt!2480037 (toList!10502 lt!2480036))))

(declare-fun b!6976913 () Bool)

(declare-fun e!4193069 () Bool)

(declare-fun tp_is_empty!43509 () Bool)

(declare-fun tp!1927151 () Bool)

(assert (=> b!6976913 (= e!4193069 (and tp_is_empty!43509 tp!1927151))))

(declare-fun b!6976914 () Bool)

(declare-fun res!2844915 () Bool)

(assert (=> b!6976914 (=> res!2844915 e!4193067)))

(assert (=> b!6976914 (= res!2844915 (not (set.member lt!2480038 lt!2480036)))))

(declare-fun b!6976908 () Bool)

(declare-fun res!2844914 () Bool)

(assert (=> b!6976908 (=> (not res!2844914) (not e!4193068))))

(assert (=> b!6976908 (= res!2844914 (is-Cons!66848 s!7408))))

(declare-fun res!2844916 () Bool)

(assert (=> start!668824 (=> (not res!2844916) (not e!4193068))))

(assert (=> start!668824 (= res!2844916 (matchZipper!2682 lt!2480036 s!7408))))

(declare-fun appendTo!263 ((Set Context!12276) Context!12276) (Set Context!12276))

(assert (=> start!668824 (= lt!2480036 (appendTo!263 z1!570 ct2!306))))

(assert (=> start!668824 e!4193068))

(assert (=> start!668824 (and (inv!85715 c!142) e!4193071)))

(declare-fun condSetEmpty!47336 () Bool)

(assert (=> start!668824 (= condSetEmpty!47336 (= z1!570 (as set.empty (Set Context!12276))))))

(assert (=> start!668824 setRes!47336))

(assert (=> start!668824 e!4193069))

(assert (=> start!668824 (and (inv!85715 ct2!306) e!4193073)))

(assert (= (and start!668824 res!2844916) b!6976908))

(assert (= (and b!6976908 res!2844914) b!6976912))

(assert (= (and b!6976912 (not res!2844913)) b!6976914))

(assert (= (and b!6976914 (not res!2844915)) b!6976906))

(assert (= (and b!6976906 (not res!2844917)) b!6976907))

(assert (= start!668824 b!6976909))

(assert (= (and start!668824 condSetEmpty!47336) setIsEmpty!47336))

(assert (= (and start!668824 (not condSetEmpty!47336)) setNonEmpty!47336))

(assert (= setNonEmpty!47336 b!6976910))

(assert (= (and start!668824 (is-Cons!66848 s!7408)) b!6976913))

(assert (= start!668824 b!6976911))

(declare-fun m!7662196 () Bool)

(assert (=> b!6976906 m!7662196))

(declare-fun m!7662198 () Bool)

(assert (=> b!6976914 m!7662198))

(declare-fun m!7662200 () Bool)

(assert (=> setNonEmpty!47336 m!7662200))

(declare-fun m!7662202 () Bool)

(assert (=> start!668824 m!7662202))

(declare-fun m!7662204 () Bool)

(assert (=> start!668824 m!7662204))

(declare-fun m!7662206 () Bool)

(assert (=> start!668824 m!7662206))

(declare-fun m!7662208 () Bool)

(assert (=> start!668824 m!7662208))

(declare-fun m!7662210 () Bool)

(assert (=> b!6976912 m!7662210))

(declare-fun m!7662212 () Bool)

(assert (=> b!6976912 m!7662212))

(declare-fun m!7662214 () Bool)

(assert (=> b!6976912 m!7662214))

(declare-fun m!7662216 () Bool)

(assert (=> b!6976912 m!7662216))

(assert (=> b!6976912 m!7662216))

(declare-fun m!7662218 () Bool)

(assert (=> b!6976912 m!7662218))

(declare-fun m!7662220 () Bool)

(assert (=> b!6976912 m!7662220))

(declare-fun m!7662222 () Bool)

(assert (=> b!6976907 m!7662222))

(push 1)

(assert (not b!6976911))

(assert (not start!668824))

(assert (not b!6976910))

(assert (not b!6976906))

(assert (not b!6976907))

(assert (not setNonEmpty!47336))

(assert (not b!6976912))

(assert (not b!6976909))

(assert (not b!6976913))

(assert tp_is_empty!43509)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2172221 () Bool)

(declare-fun res!2844937 () Bool)

(declare-fun e!4193099 () Bool)

(assert (=> d!2172221 (=> res!2844937 e!4193099)))

(assert (=> d!2172221 (= res!2844937 (is-Nil!66847 (exprs!6638 ct2!306)))))

(assert (=> d!2172221 (= (forall!16013 (exprs!6638 ct2!306) lambda!398054) e!4193099)))

(declare-fun b!6976950 () Bool)

(declare-fun e!4193100 () Bool)

(assert (=> b!6976950 (= e!4193099 e!4193100)))

(declare-fun res!2844938 () Bool)

(assert (=> b!6976950 (=> (not res!2844938) (not e!4193100))))

(declare-fun dynLambda!26661 (Int Regex!17142) Bool)

(assert (=> b!6976950 (= res!2844938 (dynLambda!26661 lambda!398054 (h!73295 (exprs!6638 ct2!306))))))

(declare-fun b!6976951 () Bool)

(assert (=> b!6976951 (= e!4193100 (forall!16013 (t!380714 (exprs!6638 ct2!306)) lambda!398054))))

(assert (= (and d!2172221 (not res!2844937)) b!6976950))

(assert (= (and b!6976950 res!2844938) b!6976951))

(declare-fun b_lambda!261021 () Bool)

(assert (=> (not b_lambda!261021) (not b!6976950)))

(declare-fun m!7662252 () Bool)

(assert (=> b!6976950 m!7662252))

(declare-fun m!7662254 () Bool)

(assert (=> b!6976951 m!7662254))

(assert (=> b!6976907 d!2172221))

(declare-fun d!2172223 () Bool)

(declare-fun res!2844939 () Bool)

(declare-fun e!4193101 () Bool)

(assert (=> d!2172223 (=> res!2844939 e!4193101)))

(assert (=> d!2172223 (= res!2844939 (is-Nil!66847 (exprs!6638 c!142)))))

(assert (=> d!2172223 (= (forall!16013 (exprs!6638 c!142) lambda!398054) e!4193101)))

(declare-fun b!6976952 () Bool)

(declare-fun e!4193102 () Bool)

(assert (=> b!6976952 (= e!4193101 e!4193102)))

(declare-fun res!2844940 () Bool)

(assert (=> b!6976952 (=> (not res!2844940) (not e!4193102))))

(assert (=> b!6976952 (= res!2844940 (dynLambda!26661 lambda!398054 (h!73295 (exprs!6638 c!142))))))

(declare-fun b!6976953 () Bool)

(assert (=> b!6976953 (= e!4193102 (forall!16013 (t!380714 (exprs!6638 c!142)) lambda!398054))))

(assert (= (and d!2172223 (not res!2844939)) b!6976952))

(assert (= (and b!6976952 res!2844940) b!6976953))

(declare-fun b_lambda!261023 () Bool)

(assert (=> (not b_lambda!261023) (not b!6976952)))

(declare-fun m!7662256 () Bool)

(assert (=> b!6976952 m!7662256))

(declare-fun m!7662258 () Bool)

(assert (=> b!6976953 m!7662258))

(assert (=> b!6976906 d!2172223))

(declare-fun bs!1860040 () Bool)

(declare-fun d!2172225 () Bool)

(assert (= bs!1860040 (and d!2172225 b!6976906)))

(declare-fun lambda!398065 () Int)

(assert (=> bs!1860040 (= lambda!398065 lambda!398054)))

(assert (=> d!2172225 (= (inv!85715 setElem!47336) (forall!16013 (exprs!6638 setElem!47336) lambda!398065))))

(declare-fun bs!1860041 () Bool)

(assert (= bs!1860041 d!2172225))

(declare-fun m!7662260 () Bool)

(assert (=> bs!1860041 m!7662260))

(assert (=> setNonEmpty!47336 d!2172225))

(declare-fun d!2172227 () Bool)

(declare-fun c!1293164 () Bool)

(declare-fun isEmpty!39035 (List!66972) Bool)

(assert (=> d!2172227 (= c!1293164 (isEmpty!39035 s!7408))))

(declare-fun e!4193105 () Bool)

(assert (=> d!2172227 (= (matchZipper!2682 lt!2480036 s!7408) e!4193105)))

(declare-fun b!6976958 () Bool)

(declare-fun nullableZipper!2379 ((Set Context!12276)) Bool)

(assert (=> b!6976958 (= e!4193105 (nullableZipper!2379 lt!2480036))))

(declare-fun b!6976959 () Bool)

(declare-fun derivationStepZipper!2626 ((Set Context!12276) C!34554) (Set Context!12276))

(declare-fun head!14047 (List!66972) C!34554)

(declare-fun tail!13115 (List!66972) List!66972)

(assert (=> b!6976959 (= e!4193105 (matchZipper!2682 (derivationStepZipper!2626 lt!2480036 (head!14047 s!7408)) (tail!13115 s!7408)))))

(assert (= (and d!2172227 c!1293164) b!6976958))

(assert (= (and d!2172227 (not c!1293164)) b!6976959))

(declare-fun m!7662262 () Bool)

(assert (=> d!2172227 m!7662262))

(declare-fun m!7662264 () Bool)

(assert (=> b!6976958 m!7662264))

(declare-fun m!7662266 () Bool)

(assert (=> b!6976959 m!7662266))

(assert (=> b!6976959 m!7662266))

(declare-fun m!7662268 () Bool)

(assert (=> b!6976959 m!7662268))

(declare-fun m!7662270 () Bool)

(assert (=> b!6976959 m!7662270))

(assert (=> b!6976959 m!7662268))

(assert (=> b!6976959 m!7662270))

(declare-fun m!7662272 () Bool)

(assert (=> b!6976959 m!7662272))

(assert (=> start!668824 d!2172227))

(declare-fun d!2172229 () Bool)

(assert (=> d!2172229 true))

(declare-fun lambda!398070 () Int)

(declare-fun map!15389 ((Set Context!12276) Int) (Set Context!12276))

(assert (=> d!2172229 (= (appendTo!263 z1!570 ct2!306) (map!15389 z1!570 lambda!398070))))

(declare-fun bs!1860042 () Bool)

(assert (= bs!1860042 d!2172229))

(declare-fun m!7662274 () Bool)

(assert (=> bs!1860042 m!7662274))

(assert (=> start!668824 d!2172229))

(declare-fun bs!1860043 () Bool)

(declare-fun d!2172233 () Bool)

(assert (= bs!1860043 (and d!2172233 b!6976906)))

(declare-fun lambda!398071 () Int)

(assert (=> bs!1860043 (= lambda!398071 lambda!398054)))

(declare-fun bs!1860044 () Bool)

(assert (= bs!1860044 (and d!2172233 d!2172225)))

(assert (=> bs!1860044 (= lambda!398071 lambda!398065)))

(assert (=> d!2172233 (= (inv!85715 c!142) (forall!16013 (exprs!6638 c!142) lambda!398071))))

(declare-fun bs!1860045 () Bool)

(assert (= bs!1860045 d!2172233))

(declare-fun m!7662276 () Bool)

(assert (=> bs!1860045 m!7662276))

(assert (=> start!668824 d!2172233))

(declare-fun bs!1860046 () Bool)

(declare-fun d!2172235 () Bool)

(assert (= bs!1860046 (and d!2172235 b!6976906)))

(declare-fun lambda!398072 () Int)

(assert (=> bs!1860046 (= lambda!398072 lambda!398054)))

(declare-fun bs!1860047 () Bool)

(assert (= bs!1860047 (and d!2172235 d!2172225)))

(assert (=> bs!1860047 (= lambda!398072 lambda!398065)))

(declare-fun bs!1860048 () Bool)

(assert (= bs!1860048 (and d!2172235 d!2172233)))

(assert (=> bs!1860048 (= lambda!398072 lambda!398071)))

(assert (=> d!2172235 (= (inv!85715 ct2!306) (forall!16013 (exprs!6638 ct2!306) lambda!398072))))

(declare-fun bs!1860049 () Bool)

(assert (= bs!1860049 d!2172235))

(declare-fun m!7662278 () Bool)

(assert (=> bs!1860049 m!7662278))

(assert (=> start!668824 d!2172235))

(declare-fun bs!1860050 () Bool)

(declare-fun d!2172237 () Bool)

(assert (= bs!1860050 (and d!2172237 b!6976912)))

(declare-fun lambda!398075 () Int)

(assert (=> bs!1860050 (= lambda!398075 lambda!398053)))

(assert (=> d!2172237 true))

(assert (=> d!2172237 (exists!2880 lt!2480037 lambda!398075)))

(declare-fun lt!2480056 () Unit!160932)

(declare-fun choose!51931 (List!66973 List!66972) Unit!160932)

(assert (=> d!2172237 (= lt!2480056 (choose!51931 lt!2480037 s!7408))))

(declare-fun content!13162 (List!66973) (Set Context!12276))

(assert (=> d!2172237 (matchZipper!2682 (content!13162 lt!2480037) s!7408)))

(assert (=> d!2172237 (= (lemmaZipperMatchesExistsMatchingContext!111 lt!2480037 s!7408) lt!2480056)))

(declare-fun bs!1860051 () Bool)

(assert (= bs!1860051 d!2172237))

(declare-fun m!7662284 () Bool)

(assert (=> bs!1860051 m!7662284))

(declare-fun m!7662286 () Bool)

(assert (=> bs!1860051 m!7662286))

(declare-fun m!7662288 () Bool)

(assert (=> bs!1860051 m!7662288))

(assert (=> bs!1860051 m!7662288))

(declare-fun m!7662290 () Bool)

(assert (=> bs!1860051 m!7662290))

(assert (=> b!6976912 d!2172237))

(declare-fun bs!1860052 () Bool)

(declare-fun d!2172241 () Bool)

(assert (= bs!1860052 (and d!2172241 b!6976912)))

(declare-fun lambda!398078 () Int)

(assert (=> bs!1860052 (not (= lambda!398078 lambda!398053))))

(declare-fun bs!1860053 () Bool)

(assert (= bs!1860053 (and d!2172241 d!2172237)))

(assert (=> bs!1860053 (not (= lambda!398078 lambda!398075))))

(assert (=> d!2172241 true))

(declare-fun order!27789 () Int)

(declare-fun dynLambda!26662 (Int Int) Int)

(assert (=> d!2172241 (< (dynLambda!26662 order!27789 lambda!398053) (dynLambda!26662 order!27789 lambda!398078))))

(declare-fun forall!16015 (List!66973 Int) Bool)

(assert (=> d!2172241 (= (exists!2880 lt!2480037 lambda!398053) (not (forall!16015 lt!2480037 lambda!398078)))))

(declare-fun bs!1860054 () Bool)

(assert (= bs!1860054 d!2172241))

(declare-fun m!7662292 () Bool)

(assert (=> bs!1860054 m!7662292))

(assert (=> b!6976912 d!2172241))

(declare-fun d!2172243 () Bool)

(declare-fun c!1293168 () Bool)

(assert (=> d!2172243 (= c!1293168 (isEmpty!39035 s!7408))))

(declare-fun e!4193112 () Bool)

(assert (=> d!2172243 (= (matchZipper!2682 (set.insert lt!2480038 (as set.empty (Set Context!12276))) s!7408) e!4193112)))

(declare-fun b!6976970 () Bool)

(assert (=> b!6976970 (= e!4193112 (nullableZipper!2379 (set.insert lt!2480038 (as set.empty (Set Context!12276)))))))

(declare-fun b!6976971 () Bool)

(assert (=> b!6976971 (= e!4193112 (matchZipper!2682 (derivationStepZipper!2626 (set.insert lt!2480038 (as set.empty (Set Context!12276))) (head!14047 s!7408)) (tail!13115 s!7408)))))

(assert (= (and d!2172243 c!1293168) b!6976970))

(assert (= (and d!2172243 (not c!1293168)) b!6976971))

(assert (=> d!2172243 m!7662262))

(assert (=> b!6976970 m!7662216))

(declare-fun m!7662294 () Bool)

(assert (=> b!6976970 m!7662294))

(assert (=> b!6976971 m!7662266))

(assert (=> b!6976971 m!7662216))

(assert (=> b!6976971 m!7662266))

(declare-fun m!7662296 () Bool)

(assert (=> b!6976971 m!7662296))

(assert (=> b!6976971 m!7662270))

(assert (=> b!6976971 m!7662296))

(assert (=> b!6976971 m!7662270))

(declare-fun m!7662298 () Bool)

(assert (=> b!6976971 m!7662298))

(assert (=> b!6976912 d!2172243))

(declare-fun d!2172245 () Bool)

(declare-fun e!4193115 () Bool)

(assert (=> d!2172245 e!4193115))

(declare-fun res!2844949 () Bool)

(assert (=> d!2172245 (=> (not res!2844949) (not e!4193115))))

(declare-fun lt!2480059 () List!66973)

(declare-fun noDuplicate!2472 (List!66973) Bool)

(assert (=> d!2172245 (= res!2844949 (noDuplicate!2472 lt!2480059))))

(declare-fun choose!51932 ((Set Context!12276)) List!66973)

(assert (=> d!2172245 (= lt!2480059 (choose!51932 lt!2480036))))

(assert (=> d!2172245 (= (toList!10502 lt!2480036) lt!2480059)))

(declare-fun b!6976976 () Bool)

(assert (=> b!6976976 (= e!4193115 (= (content!13162 lt!2480059) lt!2480036))))

(assert (= (and d!2172245 res!2844949) b!6976976))

(declare-fun m!7662300 () Bool)

(assert (=> d!2172245 m!7662300))

(declare-fun m!7662302 () Bool)

(assert (=> d!2172245 m!7662302))

(declare-fun m!7662304 () Bool)

(assert (=> b!6976976 m!7662304))

(assert (=> b!6976912 d!2172245))

(declare-fun d!2172247 () Bool)

(declare-fun e!4193121 () Bool)

(assert (=> d!2172247 e!4193121))

(declare-fun res!2844952 () Bool)

(assert (=> d!2172247 (=> (not res!2844952) (not e!4193121))))

(declare-fun lt!2480062 () Context!12276)

(declare-fun dynLambda!26663 (Int Context!12276) Bool)

(assert (=> d!2172247 (= res!2844952 (dynLambda!26663 lambda!398053 lt!2480062))))

(declare-fun getWitness!993 (List!66973 Int) Context!12276)

(assert (=> d!2172247 (= lt!2480062 (getWitness!993 (toList!10502 lt!2480036) lambda!398053))))

(declare-fun exists!2882 ((Set Context!12276) Int) Bool)

(assert (=> d!2172247 (exists!2882 lt!2480036 lambda!398053)))

(assert (=> d!2172247 (= (getWitness!991 lt!2480036 lambda!398053) lt!2480062)))

(declare-fun b!6976983 () Bool)

(assert (=> b!6976983 (= e!4193121 (set.member lt!2480062 lt!2480036))))

(assert (= (and d!2172247 res!2844952) b!6976983))

(declare-fun b_lambda!261027 () Bool)

(assert (=> (not b_lambda!261027) (not d!2172247)))

(declare-fun m!7662318 () Bool)

(assert (=> d!2172247 m!7662318))

(assert (=> d!2172247 m!7662220))

(assert (=> d!2172247 m!7662220))

(declare-fun m!7662320 () Bool)

(assert (=> d!2172247 m!7662320))

(declare-fun m!7662322 () Bool)

(assert (=> d!2172247 m!7662322))

(declare-fun m!7662324 () Bool)

(assert (=> b!6976983 m!7662324))

(assert (=> b!6976912 d!2172247))

(declare-fun b!6976988 () Bool)

(declare-fun e!4193124 () Bool)

(declare-fun tp!1927172 () Bool)

(declare-fun tp!1927173 () Bool)

(assert (=> b!6976988 (= e!4193124 (and tp!1927172 tp!1927173))))

(assert (=> b!6976911 (= tp!1927150 e!4193124)))

(assert (= (and b!6976911 (is-Cons!66847 (exprs!6638 ct2!306))) b!6976988))

(declare-fun condSetEmpty!47342 () Bool)

(assert (=> setNonEmpty!47336 (= condSetEmpty!47342 (= setRest!47336 (as set.empty (Set Context!12276))))))

(declare-fun setRes!47342 () Bool)

(assert (=> setNonEmpty!47336 (= tp!1927152 setRes!47342)))

(declare-fun setIsEmpty!47342 () Bool)

(assert (=> setIsEmpty!47342 setRes!47342))

(declare-fun tp!1927179 () Bool)

(declare-fun setNonEmpty!47342 () Bool)

(declare-fun setElem!47342 () Context!12276)

(declare-fun e!4193127 () Bool)

(assert (=> setNonEmpty!47342 (= setRes!47342 (and tp!1927179 (inv!85715 setElem!47342) e!4193127))))

(declare-fun setRest!47342 () (Set Context!12276))

(assert (=> setNonEmpty!47342 (= setRest!47336 (set.union (set.insert setElem!47342 (as set.empty (Set Context!12276))) setRest!47342))))

(declare-fun b!6976993 () Bool)

(declare-fun tp!1927178 () Bool)

(assert (=> b!6976993 (= e!4193127 tp!1927178)))

(assert (= (and setNonEmpty!47336 condSetEmpty!47342) setIsEmpty!47342))

(assert (= (and setNonEmpty!47336 (not condSetEmpty!47342)) setNonEmpty!47342))

(assert (= setNonEmpty!47342 b!6976993))

(declare-fun m!7662326 () Bool)

(assert (=> setNonEmpty!47342 m!7662326))

(declare-fun b!6976994 () Bool)

(declare-fun e!4193128 () Bool)

(declare-fun tp!1927180 () Bool)

(declare-fun tp!1927181 () Bool)

(assert (=> b!6976994 (= e!4193128 (and tp!1927180 tp!1927181))))

(assert (=> b!6976910 (= tp!1927149 e!4193128)))

(assert (= (and b!6976910 (is-Cons!66847 (exprs!6638 setElem!47336))) b!6976994))

(declare-fun b!6976999 () Bool)

(declare-fun e!4193131 () Bool)

(declare-fun tp!1927184 () Bool)

(assert (=> b!6976999 (= e!4193131 (and tp_is_empty!43509 tp!1927184))))

(assert (=> b!6976913 (= tp!1927151 e!4193131)))

(assert (= (and b!6976913 (is-Cons!66848 (t!380715 s!7408))) b!6976999))

(declare-fun b!6977000 () Bool)

(declare-fun e!4193132 () Bool)

(declare-fun tp!1927185 () Bool)

(declare-fun tp!1927186 () Bool)

(assert (=> b!6977000 (= e!4193132 (and tp!1927185 tp!1927186))))

(assert (=> b!6976909 (= tp!1927148 e!4193132)))

(assert (= (and b!6976909 (is-Cons!66847 (exprs!6638 c!142))) b!6977000))

(declare-fun b_lambda!261029 () Bool)

(assert (= b_lambda!261021 (or b!6976906 b_lambda!261029)))

(declare-fun bs!1860055 () Bool)

(declare-fun d!2172251 () Bool)

(assert (= bs!1860055 (and d!2172251 b!6976906)))

(declare-fun validRegex!8820 (Regex!17142) Bool)

(assert (=> bs!1860055 (= (dynLambda!26661 lambda!398054 (h!73295 (exprs!6638 ct2!306))) (validRegex!8820 (h!73295 (exprs!6638 ct2!306))))))

(declare-fun m!7662328 () Bool)

(assert (=> bs!1860055 m!7662328))

(assert (=> b!6976950 d!2172251))

(declare-fun b_lambda!261031 () Bool)

(assert (= b_lambda!261023 (or b!6976906 b_lambda!261031)))

(declare-fun bs!1860056 () Bool)

(declare-fun d!2172253 () Bool)

(assert (= bs!1860056 (and d!2172253 b!6976906)))

(assert (=> bs!1860056 (= (dynLambda!26661 lambda!398054 (h!73295 (exprs!6638 c!142))) (validRegex!8820 (h!73295 (exprs!6638 c!142))))))

(declare-fun m!7662330 () Bool)

(assert (=> bs!1860056 m!7662330))

(assert (=> b!6976952 d!2172253))

(declare-fun b_lambda!261033 () Bool)

(assert (= b_lambda!261027 (or b!6976912 b_lambda!261033)))

(declare-fun bs!1860057 () Bool)

(declare-fun d!2172255 () Bool)

(assert (= bs!1860057 (and d!2172255 b!6976912)))

(assert (=> bs!1860057 (= (dynLambda!26663 lambda!398053 lt!2480062) (matchZipper!2682 (set.insert lt!2480062 (as set.empty (Set Context!12276))) s!7408))))

(declare-fun m!7662332 () Bool)

(assert (=> bs!1860057 m!7662332))

(assert (=> bs!1860057 m!7662332))

(declare-fun m!7662334 () Bool)

(assert (=> bs!1860057 m!7662334))

(assert (=> d!2172247 d!2172255))

(push 1)

(assert (not b!6976999))

(assert (not d!2172247))

(assert (not b_lambda!261029))

(assert (not b!6976976))

(assert (not b!6976970))

(assert (not d!2172229))

(assert (not d!2172233))

(assert (not d!2172225))

(assert (not b_lambda!261033))

(assert tp_is_empty!43509)

(assert (not b!6977000))

(assert (not b!6976994))

(assert (not bs!1860057))

(assert (not b!6976953))

(assert (not b!6976993))

(assert (not setNonEmpty!47342))

(assert (not b!6976951))

(assert (not d!2172241))

(assert (not d!2172227))

(assert (not b!6976959))

(assert (not d!2172243))

(assert (not d!2172235))

(assert (not b!6976971))

(assert (not b!6976988))

(assert (not d!2172237))

(assert (not b_lambda!261031))

(assert (not bs!1860055))

(assert (not bs!1860056))

(assert (not d!2172245))

(assert (not b!6976958))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

