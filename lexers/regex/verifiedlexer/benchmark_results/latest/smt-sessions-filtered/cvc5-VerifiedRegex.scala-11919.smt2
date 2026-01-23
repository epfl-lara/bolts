; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!667872 () Bool)

(assert start!667872)

(declare-fun b!6960768 () Bool)

(declare-fun e!4185187 () Bool)

(declare-fun e!4185184 () Bool)

(assert (=> b!6960768 (= e!4185187 (not e!4185184))))

(declare-fun res!2840236 () Bool)

(assert (=> b!6960768 (=> res!2840236 e!4185184)))

(declare-datatypes ((C!34438 0))(
  ( (C!34439 (val!26921 Int)) )
))
(declare-datatypes ((Regex!17084 0))(
  ( (ElementMatch!17084 (c!1290686 C!34438)) (Concat!25929 (regOne!34680 Regex!17084) (regTwo!34680 Regex!17084)) (EmptyExpr!17084) (Star!17084 (reg!17413 Regex!17084)) (EmptyLang!17084) (Union!17084 (regOne!34681 Regex!17084) (regTwo!34681 Regex!17084)) )
))
(declare-fun r!13765 () Regex!17084)

(assert (=> b!6960768 (= res!2840236 (not (is-Union!17084 r!13765)))))

(declare-datatypes ((List!66853 0))(
  ( (Nil!66729) (Cons!66729 (h!73177 C!34438) (t!380596 List!66853)) )
))
(declare-fun s!9351 () List!66853)

(declare-fun matchR!9190 (Regex!17084 List!66853) Bool)

(declare-fun matchRSpec!4105 (Regex!17084 List!66853) Bool)

(assert (=> b!6960768 (= (matchR!9190 r!13765 s!9351) (matchRSpec!4105 r!13765 s!9351))))

(declare-datatypes ((Unit!160828 0))(
  ( (Unit!160829) )
))
(declare-fun lt!2478904 () Unit!160828)

(declare-fun mainMatchTheorem!4099 (Regex!17084 List!66853) Unit!160828)

(assert (=> b!6960768 (= lt!2478904 (mainMatchTheorem!4099 r!13765 s!9351))))

(declare-fun b!6960769 () Bool)

(declare-fun e!4185186 () Bool)

(declare-fun tp_is_empty!43393 () Bool)

(declare-fun tp!1919151 () Bool)

(assert (=> b!6960769 (= e!4185186 (and tp_is_empty!43393 tp!1919151))))

(declare-fun b!6960770 () Bool)

(declare-fun validRegex!8780 (Regex!17084) Bool)

(assert (=> b!6960770 (= e!4185184 (validRegex!8780 r!13765))))

(declare-fun b!6960771 () Bool)

(declare-fun e!4185185 () Bool)

(assert (=> b!6960771 (= e!4185185 tp_is_empty!43393)))

(declare-fun b!6960772 () Bool)

(declare-fun res!2840237 () Bool)

(assert (=> b!6960772 (=> res!2840237 e!4185184)))

(declare-datatypes ((List!66854 0))(
  ( (Nil!66730) (Cons!66730 (h!73178 Regex!17084) (t!380597 List!66854)) )
))
(declare-fun l!9142 () List!66854)

(declare-fun isEmpty!38951 (List!66854) Bool)

(assert (=> b!6960772 (= res!2840237 (isEmpty!38951 l!9142))))

(declare-fun b!6960774 () Bool)

(declare-fun res!2840233 () Bool)

(assert (=> b!6960774 (=> res!2840233 e!4185184)))

(declare-fun tail!13032 (List!66854) List!66854)

(assert (=> b!6960774 (= res!2840233 (isEmpty!38951 (tail!13032 l!9142)))))

(declare-fun b!6960775 () Bool)

(declare-fun res!2840235 () Bool)

(assert (=> b!6960775 (=> (not res!2840235) (not e!4185187))))

(declare-fun generalisedUnion!2559 (List!66854) Regex!17084)

(assert (=> b!6960775 (= res!2840235 (= r!13765 (generalisedUnion!2559 l!9142)))))

(declare-fun b!6960776 () Bool)

(declare-fun tp!1919152 () Bool)

(declare-fun tp!1919149 () Bool)

(assert (=> b!6960776 (= e!4185185 (and tp!1919152 tp!1919149))))

(declare-fun b!6960777 () Bool)

(declare-fun tp!1919153 () Bool)

(assert (=> b!6960777 (= e!4185185 tp!1919153)))

(declare-fun b!6960778 () Bool)

(declare-fun tp!1919147 () Bool)

(declare-fun tp!1919148 () Bool)

(assert (=> b!6960778 (= e!4185185 (and tp!1919147 tp!1919148))))

(declare-fun res!2840234 () Bool)

(assert (=> start!667872 (=> (not res!2840234) (not e!4185187))))

(declare-fun lambda!397149 () Int)

(declare-fun forall!15955 (List!66854 Int) Bool)

(assert (=> start!667872 (= res!2840234 (forall!15955 l!9142 lambda!397149))))

(assert (=> start!667872 e!4185187))

(declare-fun e!4185183 () Bool)

(assert (=> start!667872 e!4185183))

(assert (=> start!667872 e!4185185))

(assert (=> start!667872 e!4185186))

(declare-fun b!6960773 () Bool)

(declare-fun tp!1919146 () Bool)

(declare-fun tp!1919150 () Bool)

(assert (=> b!6960773 (= e!4185183 (and tp!1919146 tp!1919150))))

(assert (= (and start!667872 res!2840234) b!6960775))

(assert (= (and b!6960775 res!2840235) b!6960768))

(assert (= (and b!6960768 (not res!2840236)) b!6960772))

(assert (= (and b!6960772 (not res!2840237)) b!6960774))

(assert (= (and b!6960774 (not res!2840233)) b!6960770))

(assert (= (and start!667872 (is-Cons!66730 l!9142)) b!6960773))

(assert (= (and start!667872 (is-ElementMatch!17084 r!13765)) b!6960771))

(assert (= (and start!667872 (is-Concat!25929 r!13765)) b!6960776))

(assert (= (and start!667872 (is-Star!17084 r!13765)) b!6960777))

(assert (= (and start!667872 (is-Union!17084 r!13765)) b!6960778))

(assert (= (and start!667872 (is-Cons!66729 s!9351)) b!6960769))

(declare-fun m!7656052 () Bool)

(assert (=> b!6960774 m!7656052))

(assert (=> b!6960774 m!7656052))

(declare-fun m!7656054 () Bool)

(assert (=> b!6960774 m!7656054))

(declare-fun m!7656056 () Bool)

(assert (=> b!6960770 m!7656056))

(declare-fun m!7656058 () Bool)

(assert (=> b!6960772 m!7656058))

(declare-fun m!7656060 () Bool)

(assert (=> b!6960775 m!7656060))

(declare-fun m!7656062 () Bool)

(assert (=> start!667872 m!7656062))

(declare-fun m!7656064 () Bool)

(assert (=> b!6960768 m!7656064))

(declare-fun m!7656066 () Bool)

(assert (=> b!6960768 m!7656066))

(declare-fun m!7656068 () Bool)

(assert (=> b!6960768 m!7656068))

(push 1)

(assert (not b!6960773))

(assert (not b!6960769))

(assert (not b!6960775))

(assert (not b!6960768))

(assert (not b!6960774))

(assert (not b!6960770))

(assert (not b!6960778))

(assert (not b!6960776))

(assert tp_is_empty!43393)

(assert (not b!6960777))

(assert (not start!667872))

(assert (not b!6960772))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6960840 () Bool)

(declare-fun e!4185221 () Bool)

(declare-fun head!13974 (List!66853) C!34438)

(assert (=> b!6960840 (= e!4185221 (= (head!13974 s!9351) (c!1290686 r!13765)))))

(declare-fun b!6960841 () Bool)

(declare-fun res!2840273 () Bool)

(assert (=> b!6960841 (=> (not res!2840273) (not e!4185221))))

(declare-fun isEmpty!38953 (List!66853) Bool)

(declare-fun tail!13034 (List!66853) List!66853)

(assert (=> b!6960841 (= res!2840273 (isEmpty!38953 (tail!13034 s!9351)))))

(declare-fun b!6960842 () Bool)

(declare-fun e!4185220 () Bool)

(declare-fun derivativeStep!5513 (Regex!17084 C!34438) Regex!17084)

(assert (=> b!6960842 (= e!4185220 (matchR!9190 (derivativeStep!5513 r!13765 (head!13974 s!9351)) (tail!13034 s!9351)))))

(declare-fun b!6960843 () Bool)

(declare-fun nullable!6887 (Regex!17084) Bool)

(assert (=> b!6960843 (= e!4185220 (nullable!6887 r!13765))))

(declare-fun b!6960844 () Bool)

(declare-fun res!2840271 () Bool)

(declare-fun e!4185219 () Bool)

(assert (=> b!6960844 (=> res!2840271 e!4185219)))

(assert (=> b!6960844 (= res!2840271 (not (is-ElementMatch!17084 r!13765)))))

(declare-fun e!4185222 () Bool)

(assert (=> b!6960844 (= e!4185222 e!4185219)))

(declare-fun b!6960845 () Bool)

(declare-fun e!4185223 () Bool)

(assert (=> b!6960845 (= e!4185223 e!4185222)))

(declare-fun c!1290694 () Bool)

(assert (=> b!6960845 (= c!1290694 (is-EmptyLang!17084 r!13765))))

(declare-fun b!6960846 () Bool)

(declare-fun res!2840270 () Bool)

(declare-fun e!4185217 () Bool)

(assert (=> b!6960846 (=> res!2840270 e!4185217)))

(assert (=> b!6960846 (= res!2840270 (not (isEmpty!38953 (tail!13034 s!9351))))))

(declare-fun b!6960847 () Bool)

(declare-fun e!4185218 () Bool)

(assert (=> b!6960847 (= e!4185218 e!4185217)))

(declare-fun res!2840275 () Bool)

(assert (=> b!6960847 (=> res!2840275 e!4185217)))

(declare-fun call!632020 () Bool)

(assert (=> b!6960847 (= res!2840275 call!632020)))

(declare-fun b!6960848 () Bool)

(declare-fun res!2840272 () Bool)

(assert (=> b!6960848 (=> (not res!2840272) (not e!4185221))))

(assert (=> b!6960848 (= res!2840272 (not call!632020))))

(declare-fun b!6960849 () Bool)

(assert (=> b!6960849 (= e!4185217 (not (= (head!13974 s!9351) (c!1290686 r!13765))))))

(declare-fun b!6960850 () Bool)

(declare-fun lt!2478910 () Bool)

(assert (=> b!6960850 (= e!4185222 (not lt!2478910))))

(declare-fun b!6960851 () Bool)

(assert (=> b!6960851 (= e!4185223 (= lt!2478910 call!632020))))

(declare-fun d!2170000 () Bool)

(assert (=> d!2170000 e!4185223))

(declare-fun c!1290696 () Bool)

(assert (=> d!2170000 (= c!1290696 (is-EmptyExpr!17084 r!13765))))

(assert (=> d!2170000 (= lt!2478910 e!4185220)))

(declare-fun c!1290695 () Bool)

(assert (=> d!2170000 (= c!1290695 (isEmpty!38953 s!9351))))

(assert (=> d!2170000 (validRegex!8780 r!13765)))

(assert (=> d!2170000 (= (matchR!9190 r!13765 s!9351) lt!2478910)))

(declare-fun bm!632015 () Bool)

(assert (=> bm!632015 (= call!632020 (isEmpty!38953 s!9351))))

(declare-fun b!6960852 () Bool)

(declare-fun res!2840269 () Bool)

(assert (=> b!6960852 (=> res!2840269 e!4185219)))

(assert (=> b!6960852 (= res!2840269 e!4185221)))

(declare-fun res!2840276 () Bool)

(assert (=> b!6960852 (=> (not res!2840276) (not e!4185221))))

(assert (=> b!6960852 (= res!2840276 lt!2478910)))

(declare-fun b!6960853 () Bool)

(assert (=> b!6960853 (= e!4185219 e!4185218)))

(declare-fun res!2840274 () Bool)

(assert (=> b!6960853 (=> (not res!2840274) (not e!4185218))))

(assert (=> b!6960853 (= res!2840274 (not lt!2478910))))

(assert (= (and d!2170000 c!1290695) b!6960843))

(assert (= (and d!2170000 (not c!1290695)) b!6960842))

(assert (= (and d!2170000 c!1290696) b!6960851))

(assert (= (and d!2170000 (not c!1290696)) b!6960845))

(assert (= (and b!6960845 c!1290694) b!6960850))

(assert (= (and b!6960845 (not c!1290694)) b!6960844))

(assert (= (and b!6960844 (not res!2840271)) b!6960852))

(assert (= (and b!6960852 res!2840276) b!6960848))

(assert (= (and b!6960848 res!2840272) b!6960841))

(assert (= (and b!6960841 res!2840273) b!6960840))

(assert (= (and b!6960852 (not res!2840269)) b!6960853))

(assert (= (and b!6960853 res!2840274) b!6960847))

(assert (= (and b!6960847 (not res!2840275)) b!6960846))

(assert (= (and b!6960846 (not res!2840270)) b!6960849))

(assert (= (or b!6960851 b!6960847 b!6960848) bm!632015))

(declare-fun m!7656088 () Bool)

(assert (=> bm!632015 m!7656088))

(declare-fun m!7656090 () Bool)

(assert (=> b!6960842 m!7656090))

(assert (=> b!6960842 m!7656090))

(declare-fun m!7656092 () Bool)

(assert (=> b!6960842 m!7656092))

(declare-fun m!7656094 () Bool)

(assert (=> b!6960842 m!7656094))

(assert (=> b!6960842 m!7656092))

(assert (=> b!6960842 m!7656094))

(declare-fun m!7656096 () Bool)

(assert (=> b!6960842 m!7656096))

(assert (=> d!2170000 m!7656088))

(assert (=> d!2170000 m!7656056))

(assert (=> b!6960849 m!7656090))

(assert (=> b!6960846 m!7656094))

(assert (=> b!6960846 m!7656094))

(declare-fun m!7656098 () Bool)

(assert (=> b!6960846 m!7656098))

(declare-fun m!7656100 () Bool)

(assert (=> b!6960843 m!7656100))

(assert (=> b!6960841 m!7656094))

(assert (=> b!6960841 m!7656094))

(assert (=> b!6960841 m!7656098))

(assert (=> b!6960840 m!7656090))

(assert (=> b!6960768 d!2170000))

(declare-fun b!6960923 () Bool)

(assert (=> b!6960923 true))

(assert (=> b!6960923 true))

(declare-fun bs!1858320 () Bool)

(declare-fun b!6960916 () Bool)

(assert (= bs!1858320 (and b!6960916 b!6960923)))

(declare-fun lambda!397158 () Int)

(declare-fun lambda!397157 () Int)

(assert (=> bs!1858320 (not (= lambda!397158 lambda!397157))))

(assert (=> b!6960916 true))

(assert (=> b!6960916 true))

(declare-fun b!6960914 () Bool)

(declare-fun e!4185257 () Bool)

(assert (=> b!6960914 (= e!4185257 (matchRSpec!4105 (regTwo!34681 r!13765) s!9351))))

(declare-fun b!6960915 () Bool)

(declare-fun e!4185262 () Bool)

(declare-fun call!632027 () Bool)

(assert (=> b!6960915 (= e!4185262 call!632027)))

(declare-fun e!4185259 () Bool)

(declare-fun call!632028 () Bool)

(assert (=> b!6960916 (= e!4185259 call!632028)))

(declare-fun b!6960917 () Bool)

(declare-fun e!4185256 () Bool)

(assert (=> b!6960917 (= e!4185256 e!4185259)))

(declare-fun c!1290713 () Bool)

(assert (=> b!6960917 (= c!1290713 (is-Star!17084 r!13765))))

(declare-fun b!6960918 () Bool)

(declare-fun e!4185260 () Bool)

(assert (=> b!6960918 (= e!4185260 (= s!9351 (Cons!66729 (c!1290686 r!13765) Nil!66729)))))

(declare-fun b!6960919 () Bool)

(declare-fun c!1290714 () Bool)

(assert (=> b!6960919 (= c!1290714 (is-ElementMatch!17084 r!13765))))

(declare-fun e!4185261 () Bool)

(assert (=> b!6960919 (= e!4185261 e!4185260)))

(declare-fun b!6960920 () Bool)

(assert (=> b!6960920 (= e!4185256 e!4185257)))

(declare-fun res!2840309 () Bool)

(assert (=> b!6960920 (= res!2840309 (matchRSpec!4105 (regOne!34681 r!13765) s!9351))))

(assert (=> b!6960920 (=> res!2840309 e!4185257)))

(declare-fun b!6960921 () Bool)

(declare-fun c!1290712 () Bool)

(assert (=> b!6960921 (= c!1290712 (is-Union!17084 r!13765))))

(assert (=> b!6960921 (= e!4185260 e!4185256)))

(declare-fun bm!632022 () Bool)

(declare-fun Exists!4069 (Int) Bool)

(assert (=> bm!632022 (= call!632028 (Exists!4069 (ite c!1290713 lambda!397157 lambda!397158)))))

(declare-fun d!2170006 () Bool)

(declare-fun c!1290711 () Bool)

(assert (=> d!2170006 (= c!1290711 (is-EmptyExpr!17084 r!13765))))

(assert (=> d!2170006 (= (matchRSpec!4105 r!13765 s!9351) e!4185262)))

(declare-fun b!6960922 () Bool)

(declare-fun res!2840311 () Bool)

(declare-fun e!4185258 () Bool)

(assert (=> b!6960922 (=> res!2840311 e!4185258)))

(assert (=> b!6960922 (= res!2840311 call!632027)))

(assert (=> b!6960922 (= e!4185259 e!4185258)))

(assert (=> b!6960923 (= e!4185258 call!632028)))

(declare-fun bm!632023 () Bool)

(assert (=> bm!632023 (= call!632027 (isEmpty!38953 s!9351))))

(declare-fun b!6960924 () Bool)

(assert (=> b!6960924 (= e!4185262 e!4185261)))

(declare-fun res!2840310 () Bool)

(assert (=> b!6960924 (= res!2840310 (not (is-EmptyLang!17084 r!13765)))))

(assert (=> b!6960924 (=> (not res!2840310) (not e!4185261))))

(assert (= (and d!2170006 c!1290711) b!6960915))

(assert (= (and d!2170006 (not c!1290711)) b!6960924))

(assert (= (and b!6960924 res!2840310) b!6960919))

(assert (= (and b!6960919 c!1290714) b!6960918))

(assert (= (and b!6960919 (not c!1290714)) b!6960921))

(assert (= (and b!6960921 c!1290712) b!6960920))

(assert (= (and b!6960921 (not c!1290712)) b!6960917))

(assert (= (and b!6960920 (not res!2840309)) b!6960914))

(assert (= (and b!6960917 c!1290713) b!6960922))

(assert (= (and b!6960917 (not c!1290713)) b!6960916))

(assert (= (and b!6960922 (not res!2840311)) b!6960923))

(assert (= (or b!6960923 b!6960916) bm!632022))

(assert (= (or b!6960915 b!6960922) bm!632023))

(declare-fun m!7656102 () Bool)

(assert (=> b!6960914 m!7656102))

(declare-fun m!7656104 () Bool)

(assert (=> b!6960920 m!7656104))

(declare-fun m!7656106 () Bool)

(assert (=> bm!632022 m!7656106))

(assert (=> bm!632023 m!7656088))

(assert (=> b!6960768 d!2170006))

(declare-fun d!2170008 () Bool)

(assert (=> d!2170008 (= (matchR!9190 r!13765 s!9351) (matchRSpec!4105 r!13765 s!9351))))

(declare-fun lt!2478915 () Unit!160828)

(declare-fun choose!51880 (Regex!17084 List!66853) Unit!160828)

(assert (=> d!2170008 (= lt!2478915 (choose!51880 r!13765 s!9351))))

(assert (=> d!2170008 (validRegex!8780 r!13765)))

(assert (=> d!2170008 (= (mainMatchTheorem!4099 r!13765 s!9351) lt!2478915)))

(declare-fun bs!1858321 () Bool)

(assert (= bs!1858321 d!2170008))

(assert (=> bs!1858321 m!7656064))

(assert (=> bs!1858321 m!7656066))

(declare-fun m!7656108 () Bool)

(assert (=> bs!1858321 m!7656108))

(assert (=> bs!1858321 m!7656056))

(assert (=> b!6960768 d!2170008))

(declare-fun d!2170010 () Bool)

(declare-fun res!2840316 () Bool)

(declare-fun e!4185267 () Bool)

(assert (=> d!2170010 (=> res!2840316 e!4185267)))

(assert (=> d!2170010 (= res!2840316 (is-Nil!66730 l!9142))))

(assert (=> d!2170010 (= (forall!15955 l!9142 lambda!397149) e!4185267)))

(declare-fun b!6960933 () Bool)

(declare-fun e!4185268 () Bool)

(assert (=> b!6960933 (= e!4185267 e!4185268)))

(declare-fun res!2840317 () Bool)

(assert (=> b!6960933 (=> (not res!2840317) (not e!4185268))))

(declare-fun dynLambda!26611 (Int Regex!17084) Bool)

(assert (=> b!6960933 (= res!2840317 (dynLambda!26611 lambda!397149 (h!73178 l!9142)))))

(declare-fun b!6960934 () Bool)

(assert (=> b!6960934 (= e!4185268 (forall!15955 (t!380597 l!9142) lambda!397149))))

(assert (= (and d!2170010 (not res!2840316)) b!6960933))

(assert (= (and b!6960933 res!2840317) b!6960934))

(declare-fun b_lambda!260553 () Bool)

(assert (=> (not b_lambda!260553) (not b!6960933)))

(declare-fun m!7656110 () Bool)

(assert (=> b!6960933 m!7656110))

(declare-fun m!7656112 () Bool)

(assert (=> b!6960934 m!7656112))

(assert (=> start!667872 d!2170010))

(declare-fun d!2170012 () Bool)

(assert (=> d!2170012 (= (isEmpty!38951 (tail!13032 l!9142)) (is-Nil!66730 (tail!13032 l!9142)))))

(assert (=> b!6960774 d!2170012))

(declare-fun d!2170014 () Bool)

(assert (=> d!2170014 (= (tail!13032 l!9142) (t!380597 l!9142))))

(assert (=> b!6960774 d!2170014))

(declare-fun b!6960967 () Bool)

(declare-fun e!4185291 () Bool)

(declare-fun e!4185293 () Bool)

(assert (=> b!6960967 (= e!4185291 e!4185293)))

(declare-fun c!1290722 () Bool)

(assert (=> b!6960967 (= c!1290722 (is-Star!17084 r!13765))))

(declare-fun b!6960968 () Bool)

(declare-fun res!2840338 () Bool)

(declare-fun e!4185294 () Bool)

(assert (=> b!6960968 (=> (not res!2840338) (not e!4185294))))

(declare-fun call!632036 () Bool)

(assert (=> b!6960968 (= res!2840338 call!632036)))

(declare-fun e!4185296 () Bool)

(assert (=> b!6960968 (= e!4185296 e!4185294)))

(declare-fun d!2170016 () Bool)

(declare-fun res!2840340 () Bool)

(assert (=> d!2170016 (=> res!2840340 e!4185291)))

(assert (=> d!2170016 (= res!2840340 (is-ElementMatch!17084 r!13765))))

(assert (=> d!2170016 (= (validRegex!8780 r!13765) e!4185291)))

(declare-fun b!6960969 () Bool)

(declare-fun res!2840339 () Bool)

(declare-fun e!4185290 () Bool)

(assert (=> b!6960969 (=> res!2840339 e!4185290)))

(assert (=> b!6960969 (= res!2840339 (not (is-Concat!25929 r!13765)))))

(assert (=> b!6960969 (= e!4185296 e!4185290)))

(declare-fun bm!632031 () Bool)

(declare-fun c!1290723 () Bool)

(assert (=> bm!632031 (= call!632036 (validRegex!8780 (ite c!1290723 (regOne!34681 r!13765) (regOne!34680 r!13765))))))

(declare-fun bm!632032 () Bool)

(declare-fun call!632037 () Bool)

(declare-fun call!632038 () Bool)

(assert (=> bm!632032 (= call!632037 call!632038)))

(declare-fun b!6960970 () Bool)

(declare-fun e!4185292 () Bool)

(assert (=> b!6960970 (= e!4185292 call!632038)))

(declare-fun b!6960971 () Bool)

(declare-fun e!4185295 () Bool)

(assert (=> b!6960971 (= e!4185290 e!4185295)))

(declare-fun res!2840336 () Bool)

(assert (=> b!6960971 (=> (not res!2840336) (not e!4185295))))

(assert (=> b!6960971 (= res!2840336 call!632036)))

(declare-fun bm!632033 () Bool)

(assert (=> bm!632033 (= call!632038 (validRegex!8780 (ite c!1290722 (reg!17413 r!13765) (ite c!1290723 (regTwo!34681 r!13765) (regTwo!34680 r!13765)))))))

(declare-fun b!6960972 () Bool)

(assert (=> b!6960972 (= e!4185295 call!632037)))

(declare-fun b!6960973 () Bool)

(assert (=> b!6960973 (= e!4185293 e!4185292)))

(declare-fun res!2840337 () Bool)

(assert (=> b!6960973 (= res!2840337 (not (nullable!6887 (reg!17413 r!13765))))))

(assert (=> b!6960973 (=> (not res!2840337) (not e!4185292))))

(declare-fun b!6960974 () Bool)

(assert (=> b!6960974 (= e!4185293 e!4185296)))

(assert (=> b!6960974 (= c!1290723 (is-Union!17084 r!13765))))

(declare-fun b!6960975 () Bool)

(assert (=> b!6960975 (= e!4185294 call!632037)))

(assert (= (and d!2170016 (not res!2840340)) b!6960967))

(assert (= (and b!6960967 c!1290722) b!6960973))

(assert (= (and b!6960967 (not c!1290722)) b!6960974))

(assert (= (and b!6960973 res!2840337) b!6960970))

(assert (= (and b!6960974 c!1290723) b!6960968))

(assert (= (and b!6960974 (not c!1290723)) b!6960969))

(assert (= (and b!6960968 res!2840338) b!6960975))

(assert (= (and b!6960969 (not res!2840339)) b!6960971))

(assert (= (and b!6960971 res!2840336) b!6960972))

(assert (= (or b!6960968 b!6960971) bm!632031))

(assert (= (or b!6960975 b!6960972) bm!632032))

(assert (= (or b!6960970 bm!632032) bm!632033))

(declare-fun m!7656128 () Bool)

(assert (=> bm!632031 m!7656128))

(declare-fun m!7656130 () Bool)

(assert (=> bm!632033 m!7656130))

(declare-fun m!7656132 () Bool)

(assert (=> b!6960973 m!7656132))

(assert (=> b!6960770 d!2170016))

(declare-fun bs!1858322 () Bool)

(declare-fun d!2170020 () Bool)

(assert (= bs!1858322 (and d!2170020 start!667872)))

(declare-fun lambda!397161 () Int)

(assert (=> bs!1858322 (= lambda!397161 lambda!397149)))

(declare-fun b!6961000 () Bool)

(declare-fun e!4185315 () Regex!17084)

(assert (=> b!6961000 (= e!4185315 EmptyLang!17084)))

(declare-fun b!6961001 () Bool)

(declare-fun e!4185312 () Regex!17084)

(assert (=> b!6961001 (= e!4185312 e!4185315)))

(declare-fun c!1290734 () Bool)

(assert (=> b!6961001 (= c!1290734 (is-Cons!66730 l!9142))))

(declare-fun b!6961002 () Bool)

(assert (=> b!6961002 (= e!4185312 (h!73178 l!9142))))

(declare-fun b!6961003 () Bool)

(assert (=> b!6961003 (= e!4185315 (Union!17084 (h!73178 l!9142) (generalisedUnion!2559 (t!380597 l!9142))))))

(declare-fun b!6961004 () Bool)

(declare-fun e!4185314 () Bool)

(declare-fun e!4185313 () Bool)

(assert (=> b!6961004 (= e!4185314 e!4185313)))

(declare-fun c!1290735 () Bool)

(assert (=> b!6961004 (= c!1290735 (isEmpty!38951 l!9142))))

(declare-fun b!6961005 () Bool)

(declare-fun e!4185316 () Bool)

(declare-fun lt!2478919 () Regex!17084)

(declare-fun head!13975 (List!66854) Regex!17084)

(assert (=> b!6961005 (= e!4185316 (= lt!2478919 (head!13975 l!9142)))))

(declare-fun b!6961006 () Bool)

(assert (=> b!6961006 (= e!4185313 e!4185316)))

(declare-fun c!1290737 () Bool)

(assert (=> b!6961006 (= c!1290737 (isEmpty!38951 (tail!13032 l!9142)))))

(assert (=> d!2170020 e!4185314))

(declare-fun res!2840346 () Bool)

(assert (=> d!2170020 (=> (not res!2840346) (not e!4185314))))

(assert (=> d!2170020 (= res!2840346 (validRegex!8780 lt!2478919))))

(assert (=> d!2170020 (= lt!2478919 e!4185312)))

(declare-fun c!1290736 () Bool)

(declare-fun e!4185311 () Bool)

(assert (=> d!2170020 (= c!1290736 e!4185311)))

(declare-fun res!2840345 () Bool)

(assert (=> d!2170020 (=> (not res!2840345) (not e!4185311))))

(assert (=> d!2170020 (= res!2840345 (is-Cons!66730 l!9142))))

(assert (=> d!2170020 (forall!15955 l!9142 lambda!397161)))

(assert (=> d!2170020 (= (generalisedUnion!2559 l!9142) lt!2478919)))

(declare-fun b!6961007 () Bool)

(assert (=> b!6961007 (= e!4185311 (isEmpty!38951 (t!380597 l!9142)))))

(declare-fun b!6961008 () Bool)

(declare-fun isUnion!1467 (Regex!17084) Bool)

(assert (=> b!6961008 (= e!4185316 (isUnion!1467 lt!2478919))))

(declare-fun b!6961009 () Bool)

(declare-fun isEmptyLang!2039 (Regex!17084) Bool)

(assert (=> b!6961009 (= e!4185313 (isEmptyLang!2039 lt!2478919))))

(assert (= (and d!2170020 res!2840345) b!6961007))

(assert (= (and d!2170020 c!1290736) b!6961002))

(assert (= (and d!2170020 (not c!1290736)) b!6961001))

(assert (= (and b!6961001 c!1290734) b!6961003))

(assert (= (and b!6961001 (not c!1290734)) b!6961000))

(assert (= (and d!2170020 res!2840346) b!6961004))

(assert (= (and b!6961004 c!1290735) b!6961009))

(assert (= (and b!6961004 (not c!1290735)) b!6961006))

(assert (= (and b!6961006 c!1290737) b!6961005))

(assert (= (and b!6961006 (not c!1290737)) b!6961008))

(declare-fun m!7656134 () Bool)

(assert (=> b!6961007 m!7656134))

(declare-fun m!7656136 () Bool)

(assert (=> b!6961008 m!7656136))

(declare-fun m!7656138 () Bool)

(assert (=> b!6961005 m!7656138))

(assert (=> b!6961004 m!7656058))

(declare-fun m!7656140 () Bool)

(assert (=> b!6961003 m!7656140))

(declare-fun m!7656142 () Bool)

(assert (=> b!6961009 m!7656142))

(declare-fun m!7656144 () Bool)

(assert (=> d!2170020 m!7656144))

(declare-fun m!7656146 () Bool)

(assert (=> d!2170020 m!7656146))

(assert (=> b!6961006 m!7656052))

(assert (=> b!6961006 m!7656052))

(assert (=> b!6961006 m!7656054))

(assert (=> b!6960775 d!2170020))

(declare-fun d!2170022 () Bool)

(assert (=> d!2170022 (= (isEmpty!38951 l!9142) (is-Nil!66730 l!9142))))

(assert (=> b!6960772 d!2170022))

(declare-fun e!4185331 () Bool)

(assert (=> b!6960778 (= tp!1919147 e!4185331)))

(declare-fun b!6961041 () Bool)

(declare-fun tp!1919190 () Bool)

(declare-fun tp!1919188 () Bool)

(assert (=> b!6961041 (= e!4185331 (and tp!1919190 tp!1919188))))

(declare-fun b!6961038 () Bool)

(assert (=> b!6961038 (= e!4185331 tp_is_empty!43393)))

(declare-fun b!6961040 () Bool)

(declare-fun tp!1919191 () Bool)

(assert (=> b!6961040 (= e!4185331 tp!1919191)))

(declare-fun b!6961039 () Bool)

(declare-fun tp!1919192 () Bool)

(declare-fun tp!1919189 () Bool)

(assert (=> b!6961039 (= e!4185331 (and tp!1919192 tp!1919189))))

(assert (= (and b!6960778 (is-ElementMatch!17084 (regOne!34681 r!13765))) b!6961038))

(assert (= (and b!6960778 (is-Concat!25929 (regOne!34681 r!13765))) b!6961039))

(assert (= (and b!6960778 (is-Star!17084 (regOne!34681 r!13765))) b!6961040))

(assert (= (and b!6960778 (is-Union!17084 (regOne!34681 r!13765))) b!6961041))

(declare-fun e!4185332 () Bool)

(assert (=> b!6960778 (= tp!1919148 e!4185332)))

(declare-fun b!6961045 () Bool)

(declare-fun tp!1919195 () Bool)

(declare-fun tp!1919193 () Bool)

(assert (=> b!6961045 (= e!4185332 (and tp!1919195 tp!1919193))))

(declare-fun b!6961042 () Bool)

(assert (=> b!6961042 (= e!4185332 tp_is_empty!43393)))

(declare-fun b!6961044 () Bool)

(declare-fun tp!1919196 () Bool)

(assert (=> b!6961044 (= e!4185332 tp!1919196)))

(declare-fun b!6961043 () Bool)

(declare-fun tp!1919197 () Bool)

(declare-fun tp!1919194 () Bool)

(assert (=> b!6961043 (= e!4185332 (and tp!1919197 tp!1919194))))

(assert (= (and b!6960778 (is-ElementMatch!17084 (regTwo!34681 r!13765))) b!6961042))

(assert (= (and b!6960778 (is-Concat!25929 (regTwo!34681 r!13765))) b!6961043))

(assert (= (and b!6960778 (is-Star!17084 (regTwo!34681 r!13765))) b!6961044))

(assert (= (and b!6960778 (is-Union!17084 (regTwo!34681 r!13765))) b!6961045))

(declare-fun e!4185333 () Bool)

(assert (=> b!6960773 (= tp!1919146 e!4185333)))

(declare-fun b!6961049 () Bool)

(declare-fun tp!1919200 () Bool)

(declare-fun tp!1919198 () Bool)

(assert (=> b!6961049 (= e!4185333 (and tp!1919200 tp!1919198))))

(declare-fun b!6961046 () Bool)

(assert (=> b!6961046 (= e!4185333 tp_is_empty!43393)))

(declare-fun b!6961048 () Bool)

(declare-fun tp!1919201 () Bool)

(assert (=> b!6961048 (= e!4185333 tp!1919201)))

(declare-fun b!6961047 () Bool)

(declare-fun tp!1919202 () Bool)

(declare-fun tp!1919199 () Bool)

(assert (=> b!6961047 (= e!4185333 (and tp!1919202 tp!1919199))))

(assert (= (and b!6960773 (is-ElementMatch!17084 (h!73178 l!9142))) b!6961046))

(assert (= (and b!6960773 (is-Concat!25929 (h!73178 l!9142))) b!6961047))

(assert (= (and b!6960773 (is-Star!17084 (h!73178 l!9142))) b!6961048))

(assert (= (and b!6960773 (is-Union!17084 (h!73178 l!9142))) b!6961049))

(declare-fun b!6961054 () Bool)

(declare-fun e!4185336 () Bool)

(declare-fun tp!1919207 () Bool)

(declare-fun tp!1919208 () Bool)

(assert (=> b!6961054 (= e!4185336 (and tp!1919207 tp!1919208))))

(assert (=> b!6960773 (= tp!1919150 e!4185336)))

(assert (= (and b!6960773 (is-Cons!66730 (t!380597 l!9142))) b!6961054))

(declare-fun b!6961059 () Bool)

(declare-fun e!4185339 () Bool)

(declare-fun tp!1919211 () Bool)

(assert (=> b!6961059 (= e!4185339 (and tp_is_empty!43393 tp!1919211))))

(assert (=> b!6960769 (= tp!1919151 e!4185339)))

(assert (= (and b!6960769 (is-Cons!66729 (t!380596 s!9351))) b!6961059))

(declare-fun e!4185340 () Bool)

(assert (=> b!6960776 (= tp!1919152 e!4185340)))

(declare-fun b!6961063 () Bool)

(declare-fun tp!1919214 () Bool)

(declare-fun tp!1919212 () Bool)

(assert (=> b!6961063 (= e!4185340 (and tp!1919214 tp!1919212))))

(declare-fun b!6961060 () Bool)

(assert (=> b!6961060 (= e!4185340 tp_is_empty!43393)))

(declare-fun b!6961062 () Bool)

(declare-fun tp!1919215 () Bool)

(assert (=> b!6961062 (= e!4185340 tp!1919215)))

(declare-fun b!6961061 () Bool)

(declare-fun tp!1919216 () Bool)

(declare-fun tp!1919213 () Bool)

(assert (=> b!6961061 (= e!4185340 (and tp!1919216 tp!1919213))))

(assert (= (and b!6960776 (is-ElementMatch!17084 (regOne!34680 r!13765))) b!6961060))

(assert (= (and b!6960776 (is-Concat!25929 (regOne!34680 r!13765))) b!6961061))

(assert (= (and b!6960776 (is-Star!17084 (regOne!34680 r!13765))) b!6961062))

(assert (= (and b!6960776 (is-Union!17084 (regOne!34680 r!13765))) b!6961063))

(declare-fun e!4185341 () Bool)

(assert (=> b!6960776 (= tp!1919149 e!4185341)))

(declare-fun b!6961067 () Bool)

(declare-fun tp!1919219 () Bool)

(declare-fun tp!1919217 () Bool)

(assert (=> b!6961067 (= e!4185341 (and tp!1919219 tp!1919217))))

(declare-fun b!6961064 () Bool)

(assert (=> b!6961064 (= e!4185341 tp_is_empty!43393)))

(declare-fun b!6961066 () Bool)

(declare-fun tp!1919220 () Bool)

(assert (=> b!6961066 (= e!4185341 tp!1919220)))

(declare-fun b!6961065 () Bool)

(declare-fun tp!1919221 () Bool)

(declare-fun tp!1919218 () Bool)

(assert (=> b!6961065 (= e!4185341 (and tp!1919221 tp!1919218))))

(assert (= (and b!6960776 (is-ElementMatch!17084 (regTwo!34680 r!13765))) b!6961064))

(assert (= (and b!6960776 (is-Concat!25929 (regTwo!34680 r!13765))) b!6961065))

(assert (= (and b!6960776 (is-Star!17084 (regTwo!34680 r!13765))) b!6961066))

(assert (= (and b!6960776 (is-Union!17084 (regTwo!34680 r!13765))) b!6961067))

(declare-fun e!4185344 () Bool)

(assert (=> b!6960777 (= tp!1919153 e!4185344)))

(declare-fun b!6961073 () Bool)

(declare-fun tp!1919224 () Bool)

(declare-fun tp!1919222 () Bool)

(assert (=> b!6961073 (= e!4185344 (and tp!1919224 tp!1919222))))

(declare-fun b!6961070 () Bool)

(assert (=> b!6961070 (= e!4185344 tp_is_empty!43393)))

(declare-fun b!6961072 () Bool)

(declare-fun tp!1919225 () Bool)

(assert (=> b!6961072 (= e!4185344 tp!1919225)))

(declare-fun b!6961071 () Bool)

(declare-fun tp!1919226 () Bool)

(declare-fun tp!1919223 () Bool)

(assert (=> b!6961071 (= e!4185344 (and tp!1919226 tp!1919223))))

(assert (= (and b!6960777 (is-ElementMatch!17084 (reg!17413 r!13765))) b!6961070))

(assert (= (and b!6960777 (is-Concat!25929 (reg!17413 r!13765))) b!6961071))

(assert (= (and b!6960777 (is-Star!17084 (reg!17413 r!13765))) b!6961072))

(assert (= (and b!6960777 (is-Union!17084 (reg!17413 r!13765))) b!6961073))

(declare-fun b_lambda!260555 () Bool)

(assert (= b_lambda!260553 (or start!667872 b_lambda!260555)))

(declare-fun bs!1858323 () Bool)

(declare-fun d!2170024 () Bool)

(assert (= bs!1858323 (and d!2170024 start!667872)))

(assert (=> bs!1858323 (= (dynLambda!26611 lambda!397149 (h!73178 l!9142)) (validRegex!8780 (h!73178 l!9142)))))

(declare-fun m!7656148 () Bool)

(assert (=> bs!1858323 m!7656148))

(assert (=> b!6960933 d!2170024))

(push 1)

(assert (not b!6960843))

(assert (not b!6960841))

(assert (not bm!632023))

(assert (not b!6961071))

(assert (not b!6960849))

(assert (not b!6961062))

(assert (not b!6961043))

(assert (not d!2170008))

(assert (not b!6961049))

(assert (not b!6961045))

(assert (not b!6960914))

(assert (not bm!632031))

(assert (not b!6961054))

(assert (not b!6961047))

(assert (not b!6961065))

(assert (not b!6961007))

(assert (not b!6961048))

(assert (not bm!632015))

(assert (not b!6961040))

(assert (not bm!632022))

(assert (not b!6960973))

(assert (not d!2170020))

(assert (not b!6961039))

(assert (not b!6961005))

(assert (not b_lambda!260555))

(assert (not b!6960842))

(assert (not b!6961061))

(assert (not b!6960920))

(assert (not b!6961044))

(assert (not b!6960846))

(assert (not b!6961008))

(assert (not b!6961067))

(assert (not d!2170000))

(assert (not b!6961041))

(assert (not b!6961006))

(assert tp_is_empty!43393)

(assert (not b!6961003))

(assert (not bm!632033))

(assert (not b!6961059))

(assert (not b!6961066))

(assert (not b!6961073))

(assert (not b!6961072))

(assert (not b!6961004))

(assert (not b!6961063))

(assert (not b!6960840))

(assert (not bs!1858323))

(assert (not b!6960934))

(assert (not b!6961009))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

