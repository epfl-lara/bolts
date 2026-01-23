; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!405094 () Bool)

(assert start!405094)

(declare-fun b!4233968 () Bool)

(declare-fun res!1741399 () Bool)

(declare-fun e!2628908 () Bool)

(assert (=> b!4233968 (=> (not res!1741399) (not e!2628908))))

(declare-datatypes ((B!2749 0))(
  ( (B!2750 (val!15076 Int)) )
))
(declare-datatypes ((List!46873 0))(
  ( (Nil!46749) (Cons!46749 (h!52169 B!2749) (t!349576 List!46873)) )
))
(declare-fun l!3106 () List!46873)

(declare-fun e2!42 () B!2749)

(declare-fun contains!9693 (List!46873 B!2749) Bool)

(assert (=> b!4233968 (= res!1741399 (contains!9693 l!3106 e2!42))))

(declare-fun res!1741400 () Bool)

(assert (=> start!405094 (=> (not res!1741400) (not e!2628908))))

(declare-fun e1!42 () B!2749)

(assert (=> start!405094 (= res!1741400 (contains!9693 l!3106 e1!42))))

(assert (=> start!405094 e!2628908))

(declare-fun e!2628910 () Bool)

(assert (=> start!405094 e!2628910))

(declare-fun tp_is_empty!22565 () Bool)

(assert (=> start!405094 tp_is_empty!22565))

(declare-fun b!4233969 () Bool)

(declare-fun e!2628909 () Bool)

(declare-fun head!8979 (List!46873) B!2749)

(assert (=> b!4233969 (= e!2628909 (not (= (head!8979 l!3106) e1!42)))))

(declare-fun b!4233970 () Bool)

(assert (=> b!4233970 (= e!2628908 e!2628909)))

(declare-fun res!1741397 () Bool)

(assert (=> b!4233970 (=> (not res!1741397) (not e!2628909))))

(declare-fun lt!1505426 () Int)

(declare-fun getIndex!892 (List!46873 B!2749) Int)

(assert (=> b!4233970 (= res!1741397 (= lt!1505426 (getIndex!892 l!3106 e2!42)))))

(assert (=> b!4233970 (= lt!1505426 (getIndex!892 l!3106 e1!42))))

(declare-fun b!4233971 () Bool)

(declare-fun tp!1296558 () Bool)

(assert (=> b!4233971 (= e!2628910 (and tp_is_empty!22565 tp!1296558))))

(declare-fun b!4233972 () Bool)

(declare-fun res!1741398 () Bool)

(assert (=> b!4233972 (=> (not res!1741398) (not e!2628909))))

(assert (=> b!4233972 (= res!1741398 (= lt!1505426 0))))

(assert (= (and start!405094 res!1741400) b!4233968))

(assert (= (and b!4233968 res!1741399) b!4233970))

(assert (= (and b!4233970 res!1741397) b!4233972))

(assert (= (and b!4233972 res!1741398) b!4233969))

(get-info :version)

(assert (= (and start!405094 ((_ is Cons!46749) l!3106)) b!4233971))

(declare-fun m!4820241 () Bool)

(assert (=> b!4233968 m!4820241))

(declare-fun m!4820243 () Bool)

(assert (=> start!405094 m!4820243))

(declare-fun m!4820245 () Bool)

(assert (=> b!4233969 m!4820245))

(declare-fun m!4820247 () Bool)

(assert (=> b!4233970 m!4820247))

(declare-fun m!4820249 () Bool)

(assert (=> b!4233970 m!4820249))

(check-sat (not b!4233971) (not start!405094) tp_is_empty!22565 (not b!4233969) (not b!4233968) (not b!4233970))
(check-sat)
(get-model)

(declare-fun d!1245868 () Bool)

(declare-fun lt!1505432 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7349 (List!46873) (InoxSet B!2749))

(assert (=> d!1245868 (= lt!1505432 (select (content!7349 l!3106) e1!42))))

(declare-fun e!2628922 () Bool)

(assert (=> d!1245868 (= lt!1505432 e!2628922)))

(declare-fun res!1741411 () Bool)

(assert (=> d!1245868 (=> (not res!1741411) (not e!2628922))))

(assert (=> d!1245868 (= res!1741411 ((_ is Cons!46749) l!3106))))

(assert (=> d!1245868 (= (contains!9693 l!3106 e1!42) lt!1505432)))

(declare-fun b!4233983 () Bool)

(declare-fun e!2628921 () Bool)

(assert (=> b!4233983 (= e!2628922 e!2628921)))

(declare-fun res!1741412 () Bool)

(assert (=> b!4233983 (=> res!1741412 e!2628921)))

(assert (=> b!4233983 (= res!1741412 (= (h!52169 l!3106) e1!42))))

(declare-fun b!4233984 () Bool)

(assert (=> b!4233984 (= e!2628921 (contains!9693 (t!349576 l!3106) e1!42))))

(assert (= (and d!1245868 res!1741411) b!4233983))

(assert (= (and b!4233983 (not res!1741412)) b!4233984))

(declare-fun m!4820257 () Bool)

(assert (=> d!1245868 m!4820257))

(declare-fun m!4820259 () Bool)

(assert (=> d!1245868 m!4820259))

(declare-fun m!4820261 () Bool)

(assert (=> b!4233984 m!4820261))

(assert (=> start!405094 d!1245868))

(declare-fun d!1245872 () Bool)

(assert (=> d!1245872 (= (head!8979 l!3106) (h!52169 l!3106))))

(assert (=> b!4233969 d!1245872))

(declare-fun b!4234018 () Bool)

(declare-fun e!2628943 () Int)

(assert (=> b!4234018 (= e!2628943 (+ 1 (getIndex!892 (t!349576 l!3106) e2!42)))))

(declare-fun b!4234016 () Bool)

(declare-fun e!2628942 () Int)

(assert (=> b!4234016 (= e!2628942 0)))

(declare-fun b!4234017 () Bool)

(assert (=> b!4234017 (= e!2628942 e!2628943)))

(declare-fun c!719702 () Bool)

(assert (=> b!4234017 (= c!719702 (and ((_ is Cons!46749) l!3106) (not (= (h!52169 l!3106) e2!42))))))

(declare-fun b!4234019 () Bool)

(assert (=> b!4234019 (= e!2628943 (- 1))))

(declare-fun d!1245874 () Bool)

(declare-fun lt!1505440 () Int)

(assert (=> d!1245874 (>= lt!1505440 0)))

(assert (=> d!1245874 (= lt!1505440 e!2628942)))

(declare-fun c!719703 () Bool)

(assert (=> d!1245874 (= c!719703 (and ((_ is Cons!46749) l!3106) (= (h!52169 l!3106) e2!42)))))

(assert (=> d!1245874 (contains!9693 l!3106 e2!42)))

(assert (=> d!1245874 (= (getIndex!892 l!3106 e2!42) lt!1505440)))

(assert (= (and d!1245874 c!719703) b!4234016))

(assert (= (and d!1245874 (not c!719703)) b!4234017))

(assert (= (and b!4234017 c!719702) b!4234018))

(assert (= (and b!4234017 (not c!719702)) b!4234019))

(declare-fun m!4820271 () Bool)

(assert (=> b!4234018 m!4820271))

(assert (=> d!1245874 m!4820241))

(assert (=> b!4233970 d!1245874))

(declare-fun b!4234022 () Bool)

(declare-fun e!2628945 () Int)

(assert (=> b!4234022 (= e!2628945 (+ 1 (getIndex!892 (t!349576 l!3106) e1!42)))))

(declare-fun b!4234020 () Bool)

(declare-fun e!2628944 () Int)

(assert (=> b!4234020 (= e!2628944 0)))

(declare-fun b!4234021 () Bool)

(assert (=> b!4234021 (= e!2628944 e!2628945)))

(declare-fun c!719704 () Bool)

(assert (=> b!4234021 (= c!719704 (and ((_ is Cons!46749) l!3106) (not (= (h!52169 l!3106) e1!42))))))

(declare-fun b!4234023 () Bool)

(assert (=> b!4234023 (= e!2628945 (- 1))))

(declare-fun d!1245880 () Bool)

(declare-fun lt!1505441 () Int)

(assert (=> d!1245880 (>= lt!1505441 0)))

(assert (=> d!1245880 (= lt!1505441 e!2628944)))

(declare-fun c!719705 () Bool)

(assert (=> d!1245880 (= c!719705 (and ((_ is Cons!46749) l!3106) (= (h!52169 l!3106) e1!42)))))

(assert (=> d!1245880 (contains!9693 l!3106 e1!42)))

(assert (=> d!1245880 (= (getIndex!892 l!3106 e1!42) lt!1505441)))

(assert (= (and d!1245880 c!719705) b!4234020))

(assert (= (and d!1245880 (not c!719705)) b!4234021))

(assert (= (and b!4234021 c!719704) b!4234022))

(assert (= (and b!4234021 (not c!719704)) b!4234023))

(declare-fun m!4820273 () Bool)

(assert (=> b!4234022 m!4820273))

(assert (=> d!1245880 m!4820243))

(assert (=> b!4233970 d!1245880))

(declare-fun d!1245882 () Bool)

(declare-fun lt!1505442 () Bool)

(assert (=> d!1245882 (= lt!1505442 (select (content!7349 l!3106) e2!42))))

(declare-fun e!2628947 () Bool)

(assert (=> d!1245882 (= lt!1505442 e!2628947)))

(declare-fun res!1741415 () Bool)

(assert (=> d!1245882 (=> (not res!1741415) (not e!2628947))))

(assert (=> d!1245882 (= res!1741415 ((_ is Cons!46749) l!3106))))

(assert (=> d!1245882 (= (contains!9693 l!3106 e2!42) lt!1505442)))

(declare-fun b!4234024 () Bool)

(declare-fun e!2628946 () Bool)

(assert (=> b!4234024 (= e!2628947 e!2628946)))

(declare-fun res!1741416 () Bool)

(assert (=> b!4234024 (=> res!1741416 e!2628946)))

(assert (=> b!4234024 (= res!1741416 (= (h!52169 l!3106) e2!42))))

(declare-fun b!4234025 () Bool)

(assert (=> b!4234025 (= e!2628946 (contains!9693 (t!349576 l!3106) e2!42))))

(assert (= (and d!1245882 res!1741415) b!4234024))

(assert (= (and b!4234024 (not res!1741416)) b!4234025))

(assert (=> d!1245882 m!4820257))

(declare-fun m!4820275 () Bool)

(assert (=> d!1245882 m!4820275))

(declare-fun m!4820277 () Bool)

(assert (=> b!4234025 m!4820277))

(assert (=> b!4233968 d!1245882))

(declare-fun b!4234030 () Bool)

(declare-fun e!2628950 () Bool)

(declare-fun tp!1296564 () Bool)

(assert (=> b!4234030 (= e!2628950 (and tp_is_empty!22565 tp!1296564))))

(assert (=> b!4233971 (= tp!1296558 e!2628950)))

(assert (= (and b!4233971 ((_ is Cons!46749) (t!349576 l!3106))) b!4234030))

(check-sat (not b!4234030) (not d!1245868) (not b!4234025) (not d!1245882) tp_is_empty!22565 (not d!1245880) (not b!4234022) (not d!1245874) (not b!4233984) (not b!4234018))
(check-sat)
(get-model)

(assert (=> d!1245874 d!1245882))

(declare-fun d!1245884 () Bool)

(declare-fun c!719710 () Bool)

(assert (=> d!1245884 (= c!719710 ((_ is Nil!46749) l!3106))))

(declare-fun e!2628955 () (InoxSet B!2749))

(assert (=> d!1245884 (= (content!7349 l!3106) e!2628955)))

(declare-fun b!4234039 () Bool)

(assert (=> b!4234039 (= e!2628955 ((as const (Array B!2749 Bool)) false))))

(declare-fun b!4234040 () Bool)

(assert (=> b!4234040 (= e!2628955 ((_ map or) (store ((as const (Array B!2749 Bool)) false) (h!52169 l!3106) true) (content!7349 (t!349576 l!3106))))))

(assert (= (and d!1245884 c!719710) b!4234039))

(assert (= (and d!1245884 (not c!719710)) b!4234040))

(declare-fun m!4820279 () Bool)

(assert (=> b!4234040 m!4820279))

(declare-fun m!4820281 () Bool)

(assert (=> b!4234040 m!4820281))

(assert (=> d!1245882 d!1245884))

(declare-fun b!4234043 () Bool)

(declare-fun e!2628957 () Int)

(assert (=> b!4234043 (= e!2628957 (+ 1 (getIndex!892 (t!349576 (t!349576 l!3106)) e1!42)))))

(declare-fun b!4234041 () Bool)

(declare-fun e!2628956 () Int)

(assert (=> b!4234041 (= e!2628956 0)))

(declare-fun b!4234042 () Bool)

(assert (=> b!4234042 (= e!2628956 e!2628957)))

(declare-fun c!719711 () Bool)

(assert (=> b!4234042 (= c!719711 (and ((_ is Cons!46749) (t!349576 l!3106)) (not (= (h!52169 (t!349576 l!3106)) e1!42))))))

(declare-fun b!4234044 () Bool)

(assert (=> b!4234044 (= e!2628957 (- 1))))

(declare-fun d!1245888 () Bool)

(declare-fun lt!1505443 () Int)

(assert (=> d!1245888 (>= lt!1505443 0)))

(assert (=> d!1245888 (= lt!1505443 e!2628956)))

(declare-fun c!719712 () Bool)

(assert (=> d!1245888 (= c!719712 (and ((_ is Cons!46749) (t!349576 l!3106)) (= (h!52169 (t!349576 l!3106)) e1!42)))))

(assert (=> d!1245888 (contains!9693 (t!349576 l!3106) e1!42)))

(assert (=> d!1245888 (= (getIndex!892 (t!349576 l!3106) e1!42) lt!1505443)))

(assert (= (and d!1245888 c!719712) b!4234041))

(assert (= (and d!1245888 (not c!719712)) b!4234042))

(assert (= (and b!4234042 c!719711) b!4234043))

(assert (= (and b!4234042 (not c!719711)) b!4234044))

(declare-fun m!4820287 () Bool)

(assert (=> b!4234043 m!4820287))

(assert (=> d!1245888 m!4820261))

(assert (=> b!4234022 d!1245888))

(declare-fun b!4234053 () Bool)

(declare-fun e!2628962 () Int)

(assert (=> b!4234053 (= e!2628962 (+ 1 (getIndex!892 (t!349576 (t!349576 l!3106)) e2!42)))))

(declare-fun b!4234051 () Bool)

(declare-fun e!2628961 () Int)

(assert (=> b!4234051 (= e!2628961 0)))

(declare-fun b!4234052 () Bool)

(assert (=> b!4234052 (= e!2628961 e!2628962)))

(declare-fun c!719716 () Bool)

(assert (=> b!4234052 (= c!719716 (and ((_ is Cons!46749) (t!349576 l!3106)) (not (= (h!52169 (t!349576 l!3106)) e2!42))))))

(declare-fun b!4234054 () Bool)

(assert (=> b!4234054 (= e!2628962 (- 1))))

(declare-fun d!1245892 () Bool)

(declare-fun lt!1505445 () Int)

(assert (=> d!1245892 (>= lt!1505445 0)))

(assert (=> d!1245892 (= lt!1505445 e!2628961)))

(declare-fun c!719717 () Bool)

(assert (=> d!1245892 (= c!719717 (and ((_ is Cons!46749) (t!349576 l!3106)) (= (h!52169 (t!349576 l!3106)) e2!42)))))

(assert (=> d!1245892 (contains!9693 (t!349576 l!3106) e2!42)))

(assert (=> d!1245892 (= (getIndex!892 (t!349576 l!3106) e2!42) lt!1505445)))

(assert (= (and d!1245892 c!719717) b!4234051))

(assert (= (and d!1245892 (not c!719717)) b!4234052))

(assert (= (and b!4234052 c!719716) b!4234053))

(assert (= (and b!4234052 (not c!719716)) b!4234054))

(declare-fun m!4820289 () Bool)

(assert (=> b!4234053 m!4820289))

(assert (=> d!1245892 m!4820277))

(assert (=> b!4234018 d!1245892))

(declare-fun d!1245894 () Bool)

(declare-fun lt!1505446 () Bool)

(assert (=> d!1245894 (= lt!1505446 (select (content!7349 (t!349576 l!3106)) e1!42))))

(declare-fun e!2628964 () Bool)

(assert (=> d!1245894 (= lt!1505446 e!2628964)))

(declare-fun res!1741417 () Bool)

(assert (=> d!1245894 (=> (not res!1741417) (not e!2628964))))

(assert (=> d!1245894 (= res!1741417 ((_ is Cons!46749) (t!349576 l!3106)))))

(assert (=> d!1245894 (= (contains!9693 (t!349576 l!3106) e1!42) lt!1505446)))

(declare-fun b!4234055 () Bool)

(declare-fun e!2628963 () Bool)

(assert (=> b!4234055 (= e!2628964 e!2628963)))

(declare-fun res!1741418 () Bool)

(assert (=> b!4234055 (=> res!1741418 e!2628963)))

(assert (=> b!4234055 (= res!1741418 (= (h!52169 (t!349576 l!3106)) e1!42))))

(declare-fun b!4234056 () Bool)

(assert (=> b!4234056 (= e!2628963 (contains!9693 (t!349576 (t!349576 l!3106)) e1!42))))

(assert (= (and d!1245894 res!1741417) b!4234055))

(assert (= (and b!4234055 (not res!1741418)) b!4234056))

(assert (=> d!1245894 m!4820281))

(declare-fun m!4820293 () Bool)

(assert (=> d!1245894 m!4820293))

(declare-fun m!4820295 () Bool)

(assert (=> b!4234056 m!4820295))

(assert (=> b!4233984 d!1245894))

(assert (=> d!1245868 d!1245884))

(declare-fun d!1245898 () Bool)

(declare-fun lt!1505448 () Bool)

(assert (=> d!1245898 (= lt!1505448 (select (content!7349 (t!349576 l!3106)) e2!42))))

(declare-fun e!2628968 () Bool)

(assert (=> d!1245898 (= lt!1505448 e!2628968)))

(declare-fun res!1741421 () Bool)

(assert (=> d!1245898 (=> (not res!1741421) (not e!2628968))))

(assert (=> d!1245898 (= res!1741421 ((_ is Cons!46749) (t!349576 l!3106)))))

(assert (=> d!1245898 (= (contains!9693 (t!349576 l!3106) e2!42) lt!1505448)))

(declare-fun b!4234059 () Bool)

(declare-fun e!2628967 () Bool)

(assert (=> b!4234059 (= e!2628968 e!2628967)))

(declare-fun res!1741422 () Bool)

(assert (=> b!4234059 (=> res!1741422 e!2628967)))

(assert (=> b!4234059 (= res!1741422 (= (h!52169 (t!349576 l!3106)) e2!42))))

(declare-fun b!4234060 () Bool)

(assert (=> b!4234060 (= e!2628967 (contains!9693 (t!349576 (t!349576 l!3106)) e2!42))))

(assert (= (and d!1245898 res!1741421) b!4234059))

(assert (= (and b!4234059 (not res!1741422)) b!4234060))

(assert (=> d!1245898 m!4820281))

(declare-fun m!4820301 () Bool)

(assert (=> d!1245898 m!4820301))

(declare-fun m!4820303 () Bool)

(assert (=> b!4234060 m!4820303))

(assert (=> b!4234025 d!1245898))

(assert (=> d!1245880 d!1245868))

(declare-fun b!4234065 () Bool)

(declare-fun e!2628971 () Bool)

(declare-fun tp!1296565 () Bool)

(assert (=> b!4234065 (= e!2628971 (and tp_is_empty!22565 tp!1296565))))

(assert (=> b!4234030 (= tp!1296564 e!2628971)))

(assert (= (and b!4234030 ((_ is Cons!46749) (t!349576 (t!349576 l!3106)))) b!4234065))

(check-sat (not b!4234060) (not b!4234056) (not d!1245898) (not d!1245892) (not d!1245888) (not d!1245894) (not b!4234053) (not b!4234043) (not b!4234065) tp_is_empty!22565 (not b!4234040))
(check-sat)
