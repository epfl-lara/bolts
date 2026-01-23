; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!661248 () Bool)

(assert start!661248)

(declare-fun b!6843348 () Bool)

(assert (=> b!6843348 true))

(declare-fun b!6843333 () Bool)

(assert (=> b!6843333 true))

(declare-fun b!6843328 () Bool)

(declare-fun res!2793984 () Bool)

(declare-fun e!4127086 () Bool)

(assert (=> b!6843328 (=> (not res!2793984) (not e!4127086))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!33612 0))(
  ( (C!33613 (val!26508 Int)) )
))
(declare-datatypes ((Regex!16671 0))(
  ( (ElementMatch!16671 (c!1273977 C!33612)) (Concat!25516 (regOne!33854 Regex!16671) (regTwo!33854 Regex!16671)) (EmptyExpr!16671) (Star!16671 (reg!17000 Regex!16671)) (EmptyLang!16671) (Union!16671 (regOne!33855 Regex!16671) (regTwo!33855 Regex!16671)) )
))
(declare-datatypes ((List!66312 0))(
  ( (Nil!66188) (Cons!66188 (h!72636 Regex!16671) (t!380055 List!66312)) )
))
(declare-datatypes ((Context!12110 0))(
  ( (Context!12111 (exprs!6555 List!66312)) )
))
(declare-fun z!1189 () (InoxSet Context!12110))

(declare-datatypes ((List!66313 0))(
  ( (Nil!66189) (Cons!66189 (h!72637 Context!12110) (t!380056 List!66313)) )
))
(declare-fun zl!343 () List!66313)

(declare-fun toList!10455 ((InoxSet Context!12110)) List!66313)

(assert (=> b!6843328 (= res!2793984 (= (toList!10455 z!1189) zl!343))))

(declare-fun b!6843329 () Bool)

(declare-fun e!4127084 () Bool)

(declare-fun tp!1874202 () Bool)

(declare-fun tp!1874196 () Bool)

(assert (=> b!6843329 (= e!4127084 (and tp!1874202 tp!1874196))))

(declare-fun b!6843330 () Bool)

(declare-fun res!2793988 () Bool)

(declare-fun e!4127087 () Bool)

(assert (=> b!6843330 (=> res!2793988 e!4127087)))

(declare-datatypes ((List!66314 0))(
  ( (Nil!66190) (Cons!66190 (h!72638 C!33612) (t!380057 List!66314)) )
))
(declare-fun s!2326 () List!66314)

(get-info :version)

(assert (=> b!6843330 (= res!2793988 (or (not ((_ is Cons!66189) zl!343)) ((_ is Nil!66190) s!2326) (not (= zl!343 (Cons!66189 (h!72637 zl!343) (t!380056 zl!343))))))))

(declare-fun res!2793977 () Bool)

(assert (=> start!661248 (=> (not res!2793977) (not e!4127086))))

(declare-fun r!7292 () Regex!16671)

(declare-fun validRegex!8407 (Regex!16671) Bool)

(assert (=> start!661248 (= res!2793977 (validRegex!8407 r!7292))))

(assert (=> start!661248 e!4127086))

(assert (=> start!661248 e!4127084))

(declare-fun condSetEmpty!47059 () Bool)

(assert (=> start!661248 (= condSetEmpty!47059 (= z!1189 ((as const (Array Context!12110 Bool)) false)))))

(declare-fun setRes!47059 () Bool)

(assert (=> start!661248 setRes!47059))

(declare-fun e!4127083 () Bool)

(assert (=> start!661248 e!4127083))

(declare-fun e!4127090 () Bool)

(assert (=> start!661248 e!4127090))

(declare-fun b!6843331 () Bool)

(declare-fun tp_is_empty!42595 () Bool)

(declare-fun tp!1874194 () Bool)

(assert (=> b!6843331 (= e!4127090 (and tp_is_empty!42595 tp!1874194))))

(declare-fun b!6843332 () Bool)

(declare-fun tp!1874200 () Bool)

(declare-fun tp!1874201 () Bool)

(assert (=> b!6843332 (= e!4127084 (and tp!1874200 tp!1874201))))

(declare-fun e!4127092 () Bool)

(declare-fun e!4127082 () Bool)

(assert (=> b!6843333 (= e!4127092 e!4127082)))

(declare-fun res!2793980 () Bool)

(assert (=> b!6843333 (=> res!2793980 e!4127082)))

(declare-fun lambda!386979 () Int)

(declare-fun exists!2768 (List!66313 Int) Bool)

(assert (=> b!6843333 (= res!2793980 (not (exists!2768 zl!343 lambda!386979)))))

(assert (=> b!6843333 (exists!2768 zl!343 lambda!386979)))

(declare-datatypes ((Unit!160045 0))(
  ( (Unit!160046) )
))
(declare-fun lt!2455561 () Unit!160045)

(declare-fun lt!2455564 () Regex!16671)

(declare-fun lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!26 (List!66313 Regex!16671) Unit!160045)

(assert (=> b!6843333 (= lt!2455561 (lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!26 zl!343 lt!2455564))))

(declare-fun b!6843334 () Bool)

(declare-fun size!40709 (List!66313) Int)

(assert (=> b!6843334 (= e!4127082 (> (size!40709 zl!343) 1))))

(declare-fun b!6843335 () Bool)

(assert (=> b!6843335 (= e!4127086 (not e!4127087))))

(declare-fun res!2793982 () Bool)

(assert (=> b!6843335 (=> res!2793982 e!4127087)))

(declare-fun e!4127091 () Bool)

(assert (=> b!6843335 (= res!2793982 e!4127091)))

(declare-fun res!2793985 () Bool)

(assert (=> b!6843335 (=> (not res!2793985) (not e!4127091))))

(assert (=> b!6843335 (= res!2793985 ((_ is Cons!66189) zl!343))))

(declare-fun lt!2455562 () Bool)

(declare-fun matchRSpec!3772 (Regex!16671 List!66314) Bool)

(assert (=> b!6843335 (= lt!2455562 (matchRSpec!3772 r!7292 s!2326))))

(declare-fun matchR!8854 (Regex!16671 List!66314) Bool)

(assert (=> b!6843335 (= lt!2455562 (matchR!8854 r!7292 s!2326))))

(declare-fun lt!2455563 () Unit!160045)

(declare-fun mainMatchTheorem!3772 (Regex!16671 List!66314) Unit!160045)

(assert (=> b!6843335 (= lt!2455563 (mainMatchTheorem!3772 r!7292 s!2326))))

(declare-fun b!6843336 () Bool)

(declare-fun res!2793986 () Bool)

(declare-fun e!4127088 () Bool)

(assert (=> b!6843336 (=> res!2793986 e!4127088)))

(declare-fun lt!2455560 () List!66312)

(declare-fun lambda!386978 () Int)

(declare-fun exists!2769 (List!66312 Int) Bool)

(assert (=> b!6843336 (= res!2793986 (not (exists!2769 lt!2455560 lambda!386978)))))

(declare-fun b!6843337 () Bool)

(declare-fun isEmpty!38563 (List!66313) Bool)

(assert (=> b!6843337 (= e!4127091 (isEmpty!38563 (t!380056 zl!343)))))

(declare-fun b!6843338 () Bool)

(declare-fun e!4127085 () Bool)

(declare-fun tp!1874198 () Bool)

(assert (=> b!6843338 (= e!4127085 tp!1874198)))

(declare-fun b!6843339 () Bool)

(assert (=> b!6843339 (= e!4127084 tp_is_empty!42595)))

(declare-fun b!6843340 () Bool)

(declare-fun tp!1874203 () Bool)

(declare-fun inv!84924 (Context!12110) Bool)

(assert (=> b!6843340 (= e!4127083 (and (inv!84924 (h!72637 zl!343)) e!4127085 tp!1874203))))

(declare-fun b!6843341 () Bool)

(assert (=> b!6843341 (= e!4127088 e!4127092)))

(declare-fun res!2793987 () Bool)

(assert (=> b!6843341 (=> res!2793987 e!4127092)))

(declare-fun contains!20320 (List!66312 Regex!16671) Bool)

(assert (=> b!6843341 (= res!2793987 (not (contains!20320 lt!2455560 lt!2455564)))))

(declare-fun getWitness!937 (List!66312 Int) Regex!16671)

(assert (=> b!6843341 (= lt!2455564 (getWitness!937 lt!2455560 lambda!386978))))

(declare-fun setIsEmpty!47059 () Bool)

(assert (=> setIsEmpty!47059 setRes!47059))

(declare-fun b!6843342 () Bool)

(declare-fun res!2793981 () Bool)

(assert (=> b!6843342 (=> res!2793981 e!4127082)))

(declare-fun contains!20321 (List!66313 Context!12110) Bool)

(declare-fun getWitness!938 (List!66313 Int) Context!12110)

(assert (=> b!6843342 (= res!2793981 (not (contains!20321 zl!343 (getWitness!938 zl!343 lambda!386979))))))

(declare-fun b!6843343 () Bool)

(declare-fun e!4127089 () Bool)

(declare-fun tp!1874199 () Bool)

(assert (=> b!6843343 (= e!4127089 tp!1874199)))

(declare-fun b!6843344 () Bool)

(declare-fun tp!1874195 () Bool)

(assert (=> b!6843344 (= e!4127084 tp!1874195)))

(declare-fun b!6843345 () Bool)

(declare-fun res!2793979 () Bool)

(assert (=> b!6843345 (=> res!2793979 e!4127092)))

(assert (=> b!6843345 (= res!2793979 (not (matchR!8854 lt!2455564 s!2326)))))

(declare-fun b!6843346 () Bool)

(declare-fun res!2793983 () Bool)

(assert (=> b!6843346 (=> res!2793983 e!4127087)))

(assert (=> b!6843346 (= res!2793983 (isEmpty!38563 (t!380056 zl!343)))))

(declare-fun b!6843347 () Bool)

(declare-fun res!2793978 () Bool)

(assert (=> b!6843347 (=> res!2793978 e!4127092)))

(assert (=> b!6843347 (= res!2793978 (not (validRegex!8407 lt!2455564)))))

(assert (=> b!6843348 (= e!4127087 e!4127088)))

(declare-fun res!2793989 () Bool)

(assert (=> b!6843348 (=> res!2793989 e!4127088)))

(assert (=> b!6843348 (= res!2793989 (not lt!2455562))))

(assert (=> b!6843348 (= lt!2455562 (exists!2769 lt!2455560 lambda!386978))))

(declare-fun lt!2455559 () Unit!160045)

(declare-fun matchRGenUnionSpec!310 (Regex!16671 List!66312 List!66314) Unit!160045)

(assert (=> b!6843348 (= lt!2455559 (matchRGenUnionSpec!310 r!7292 lt!2455560 s!2326))))

(declare-fun unfocusZipperList!2088 (List!66313) List!66312)

(assert (=> b!6843348 (= lt!2455560 (unfocusZipperList!2088 zl!343))))

(declare-fun setNonEmpty!47059 () Bool)

(declare-fun setElem!47059 () Context!12110)

(declare-fun tp!1874197 () Bool)

(assert (=> setNonEmpty!47059 (= setRes!47059 (and tp!1874197 (inv!84924 setElem!47059) e!4127089))))

(declare-fun setRest!47059 () (InoxSet Context!12110))

(assert (=> setNonEmpty!47059 (= z!1189 ((_ map or) (store ((as const (Array Context!12110 Bool)) false) setElem!47059 true) setRest!47059))))

(declare-fun b!6843349 () Bool)

(declare-fun res!2793990 () Bool)

(assert (=> b!6843349 (=> (not res!2793990) (not e!4127086))))

(declare-fun unfocusZipper!2413 (List!66313) Regex!16671)

(assert (=> b!6843349 (= res!2793990 (= r!7292 (unfocusZipper!2413 zl!343)))))

(assert (= (and start!661248 res!2793977) b!6843328))

(assert (= (and b!6843328 res!2793984) b!6843349))

(assert (= (and b!6843349 res!2793990) b!6843335))

(assert (= (and b!6843335 res!2793985) b!6843337))

(assert (= (and b!6843335 (not res!2793982)) b!6843330))

(assert (= (and b!6843330 (not res!2793988)) b!6843346))

(assert (= (and b!6843346 (not res!2793983)) b!6843348))

(assert (= (and b!6843348 (not res!2793989)) b!6843336))

(assert (= (and b!6843336 (not res!2793986)) b!6843341))

(assert (= (and b!6843341 (not res!2793987)) b!6843347))

(assert (= (and b!6843347 (not res!2793978)) b!6843345))

(assert (= (and b!6843345 (not res!2793979)) b!6843333))

(assert (= (and b!6843333 (not res!2793980)) b!6843342))

(assert (= (and b!6843342 (not res!2793981)) b!6843334))

(assert (= (and start!661248 ((_ is ElementMatch!16671) r!7292)) b!6843339))

(assert (= (and start!661248 ((_ is Concat!25516) r!7292)) b!6843329))

(assert (= (and start!661248 ((_ is Star!16671) r!7292)) b!6843344))

(assert (= (and start!661248 ((_ is Union!16671) r!7292)) b!6843332))

(assert (= (and start!661248 condSetEmpty!47059) setIsEmpty!47059))

(assert (= (and start!661248 (not condSetEmpty!47059)) setNonEmpty!47059))

(assert (= setNonEmpty!47059 b!6843343))

(assert (= b!6843340 b!6843338))

(assert (= (and start!661248 ((_ is Cons!66189) zl!343)) b!6843340))

(assert (= (and start!661248 ((_ is Cons!66190) s!2326)) b!6843331))

(declare-fun m!7584878 () Bool)

(assert (=> b!6843340 m!7584878))

(declare-fun m!7584880 () Bool)

(assert (=> b!6843328 m!7584880))

(declare-fun m!7584882 () Bool)

(assert (=> setNonEmpty!47059 m!7584882))

(declare-fun m!7584884 () Bool)

(assert (=> b!6843346 m!7584884))

(declare-fun m!7584886 () Bool)

(assert (=> b!6843333 m!7584886))

(assert (=> b!6843333 m!7584886))

(declare-fun m!7584888 () Bool)

(assert (=> b!6843333 m!7584888))

(declare-fun m!7584890 () Bool)

(assert (=> b!6843341 m!7584890))

(declare-fun m!7584892 () Bool)

(assert (=> b!6843341 m!7584892))

(declare-fun m!7584894 () Bool)

(assert (=> start!661248 m!7584894))

(declare-fun m!7584896 () Bool)

(assert (=> b!6843345 m!7584896))

(declare-fun m!7584898 () Bool)

(assert (=> b!6843348 m!7584898))

(declare-fun m!7584900 () Bool)

(assert (=> b!6843348 m!7584900))

(declare-fun m!7584902 () Bool)

(assert (=> b!6843348 m!7584902))

(declare-fun m!7584904 () Bool)

(assert (=> b!6843342 m!7584904))

(assert (=> b!6843342 m!7584904))

(declare-fun m!7584906 () Bool)

(assert (=> b!6843342 m!7584906))

(assert (=> b!6843336 m!7584898))

(assert (=> b!6843337 m!7584884))

(declare-fun m!7584908 () Bool)

(assert (=> b!6843334 m!7584908))

(declare-fun m!7584910 () Bool)

(assert (=> b!6843347 m!7584910))

(declare-fun m!7584912 () Bool)

(assert (=> b!6843349 m!7584912))

(declare-fun m!7584914 () Bool)

(assert (=> b!6843335 m!7584914))

(declare-fun m!7584916 () Bool)

(assert (=> b!6843335 m!7584916))

(declare-fun m!7584918 () Bool)

(assert (=> b!6843335 m!7584918))

(check-sat (not b!6843346) (not b!6843333) (not b!6843331) (not b!6843337) (not b!6843344) (not b!6843338) (not b!6843336) tp_is_empty!42595 (not b!6843334) (not b!6843340) (not b!6843347) (not b!6843342) (not b!6843329) (not b!6843332) (not b!6843345) (not b!6843348) (not b!6843343) (not start!661248) (not b!6843349) (not b!6843341) (not setNonEmpty!47059) (not b!6843328) (not b!6843335))
(check-sat)
(get-model)

(declare-fun b!6843549 () Bool)

(declare-fun e!4127209 () Bool)

(declare-fun derivativeStep!5319 (Regex!16671 C!33612) Regex!16671)

(declare-fun head!13721 (List!66314) C!33612)

(declare-fun tail!12800 (List!66314) List!66314)

(assert (=> b!6843549 (= e!4127209 (matchR!8854 (derivativeStep!5319 lt!2455564 (head!13721 s!2326)) (tail!12800 s!2326)))))

(declare-fun b!6843550 () Bool)

(declare-fun e!4127207 () Bool)

(assert (=> b!6843550 (= e!4127207 (= (head!13721 s!2326) (c!1273977 lt!2455564)))))

(declare-fun b!6843551 () Bool)

(declare-fun e!4127210 () Bool)

(declare-fun e!4127206 () Bool)

(assert (=> b!6843551 (= e!4127210 e!4127206)))

(declare-fun c!1274027 () Bool)

(assert (=> b!6843551 (= c!1274027 ((_ is EmptyLang!16671) lt!2455564))))

(declare-fun b!6843552 () Bool)

(declare-fun lt!2455599 () Bool)

(assert (=> b!6843552 (= e!4127206 (not lt!2455599))))

(declare-fun b!6843553 () Bool)

(declare-fun e!4127204 () Bool)

(declare-fun e!4127208 () Bool)

(assert (=> b!6843553 (= e!4127204 e!4127208)))

(declare-fun res!2794086 () Bool)

(assert (=> b!6843553 (=> (not res!2794086) (not e!4127208))))

(assert (=> b!6843553 (= res!2794086 (not lt!2455599))))

(declare-fun bm!623206 () Bool)

(declare-fun call!623211 () Bool)

(declare-fun isEmpty!38565 (List!66314) Bool)

(assert (=> bm!623206 (= call!623211 (isEmpty!38565 s!2326))))

(declare-fun b!6843554 () Bool)

(declare-fun e!4127205 () Bool)

(assert (=> b!6843554 (= e!4127208 e!4127205)))

(declare-fun res!2794088 () Bool)

(assert (=> b!6843554 (=> res!2794088 e!4127205)))

(assert (=> b!6843554 (= res!2794088 call!623211)))

(declare-fun b!6843555 () Bool)

(assert (=> b!6843555 (= e!4127210 (= lt!2455599 call!623211))))

(declare-fun b!6843556 () Bool)

(declare-fun res!2794090 () Bool)

(assert (=> b!6843556 (=> res!2794090 e!4127205)))

(assert (=> b!6843556 (= res!2794090 (not (isEmpty!38565 (tail!12800 s!2326))))))

(declare-fun b!6843557 () Bool)

(declare-fun res!2794093 () Bool)

(assert (=> b!6843557 (=> (not res!2794093) (not e!4127207))))

(assert (=> b!6843557 (= res!2794093 (not call!623211))))

(declare-fun d!2151361 () Bool)

(assert (=> d!2151361 e!4127210))

(declare-fun c!1274026 () Bool)

(assert (=> d!2151361 (= c!1274026 ((_ is EmptyExpr!16671) lt!2455564))))

(assert (=> d!2151361 (= lt!2455599 e!4127209)))

(declare-fun c!1274028 () Bool)

(assert (=> d!2151361 (= c!1274028 (isEmpty!38565 s!2326))))

(assert (=> d!2151361 (validRegex!8407 lt!2455564)))

(assert (=> d!2151361 (= (matchR!8854 lt!2455564 s!2326) lt!2455599)))

(declare-fun b!6843558 () Bool)

(assert (=> b!6843558 (= e!4127205 (not (= (head!13721 s!2326) (c!1273977 lt!2455564))))))

(declare-fun b!6843559 () Bool)

(declare-fun res!2794087 () Bool)

(assert (=> b!6843559 (=> res!2794087 e!4127204)))

(assert (=> b!6843559 (= res!2794087 e!4127207)))

(declare-fun res!2794089 () Bool)

(assert (=> b!6843559 (=> (not res!2794089) (not e!4127207))))

(assert (=> b!6843559 (= res!2794089 lt!2455599)))

(declare-fun b!6843560 () Bool)

(declare-fun nullable!6636 (Regex!16671) Bool)

(assert (=> b!6843560 (= e!4127209 (nullable!6636 lt!2455564))))

(declare-fun b!6843561 () Bool)

(declare-fun res!2794091 () Bool)

(assert (=> b!6843561 (=> (not res!2794091) (not e!4127207))))

(assert (=> b!6843561 (= res!2794091 (isEmpty!38565 (tail!12800 s!2326)))))

(declare-fun b!6843562 () Bool)

(declare-fun res!2794092 () Bool)

(assert (=> b!6843562 (=> res!2794092 e!4127204)))

(assert (=> b!6843562 (= res!2794092 (not ((_ is ElementMatch!16671) lt!2455564)))))

(assert (=> b!6843562 (= e!4127206 e!4127204)))

(assert (= (and d!2151361 c!1274028) b!6843560))

(assert (= (and d!2151361 (not c!1274028)) b!6843549))

(assert (= (and d!2151361 c!1274026) b!6843555))

(assert (= (and d!2151361 (not c!1274026)) b!6843551))

(assert (= (and b!6843551 c!1274027) b!6843552))

(assert (= (and b!6843551 (not c!1274027)) b!6843562))

(assert (= (and b!6843562 (not res!2794092)) b!6843559))

(assert (= (and b!6843559 res!2794089) b!6843557))

(assert (= (and b!6843557 res!2794093) b!6843561))

(assert (= (and b!6843561 res!2794091) b!6843550))

(assert (= (and b!6843559 (not res!2794087)) b!6843553))

(assert (= (and b!6843553 res!2794086) b!6843554))

(assert (= (and b!6843554 (not res!2794088)) b!6843556))

(assert (= (and b!6843556 (not res!2794090)) b!6843558))

(assert (= (or b!6843555 b!6843554 b!6843557) bm!623206))

(declare-fun m!7584996 () Bool)

(assert (=> bm!623206 m!7584996))

(assert (=> d!2151361 m!7584996))

(assert (=> d!2151361 m!7584910))

(declare-fun m!7584998 () Bool)

(assert (=> b!6843550 m!7584998))

(declare-fun m!7585000 () Bool)

(assert (=> b!6843561 m!7585000))

(assert (=> b!6843561 m!7585000))

(declare-fun m!7585002 () Bool)

(assert (=> b!6843561 m!7585002))

(declare-fun m!7585004 () Bool)

(assert (=> b!6843560 m!7585004))

(assert (=> b!6843558 m!7584998))

(assert (=> b!6843549 m!7584998))

(assert (=> b!6843549 m!7584998))

(declare-fun m!7585006 () Bool)

(assert (=> b!6843549 m!7585006))

(assert (=> b!6843549 m!7585000))

(assert (=> b!6843549 m!7585006))

(assert (=> b!6843549 m!7585000))

(declare-fun m!7585010 () Bool)

(assert (=> b!6843549 m!7585010))

(assert (=> b!6843556 m!7585000))

(assert (=> b!6843556 m!7585000))

(assert (=> b!6843556 m!7585002))

(assert (=> b!6843345 d!2151361))

(declare-fun b!6843696 () Bool)

(assert (=> b!6843696 true))

(assert (=> b!6843696 true))

(declare-fun bs!1829363 () Bool)

(declare-fun b!6843694 () Bool)

(assert (= bs!1829363 (and b!6843694 b!6843696)))

(declare-fun lambda!387013 () Int)

(declare-fun lambda!387012 () Int)

(assert (=> bs!1829363 (not (= lambda!387013 lambda!387012))))

(assert (=> b!6843694 true))

(assert (=> b!6843694 true))

(declare-fun b!6843692 () Bool)

(declare-fun e!4127290 () Bool)

(declare-fun call!623220 () Bool)

(assert (=> b!6843692 (= e!4127290 call!623220)))

(declare-fun b!6843693 () Bool)

(declare-fun e!4127285 () Bool)

(declare-fun e!4127287 () Bool)

(assert (=> b!6843693 (= e!4127285 e!4127287)))

(declare-fun c!1274047 () Bool)

(assert (=> b!6843693 (= c!1274047 ((_ is Star!16671) r!7292))))

(declare-fun bm!623215 () Bool)

(assert (=> bm!623215 (= call!623220 (isEmpty!38565 s!2326))))

(declare-fun call!623219 () Bool)

(assert (=> b!6843694 (= e!4127287 call!623219)))

(declare-fun b!6843695 () Bool)

(declare-fun e!4127291 () Bool)

(assert (=> b!6843695 (= e!4127291 (= s!2326 (Cons!66190 (c!1273977 r!7292) Nil!66190)))))

(declare-fun e!4127286 () Bool)

(assert (=> b!6843696 (= e!4127286 call!623219)))

(declare-fun b!6843697 () Bool)

(declare-fun c!1274049 () Bool)

(assert (=> b!6843697 (= c!1274049 ((_ is Union!16671) r!7292))))

(assert (=> b!6843697 (= e!4127291 e!4127285)))

(declare-fun d!2151379 () Bool)

(declare-fun c!1274048 () Bool)

(assert (=> d!2151379 (= c!1274048 ((_ is EmptyExpr!16671) r!7292))))

(assert (=> d!2151379 (= (matchRSpec!3772 r!7292 s!2326) e!4127290)))

(declare-fun bm!623214 () Bool)

(declare-fun Exists!3735 (Int) Bool)

(assert (=> bm!623214 (= call!623219 (Exists!3735 (ite c!1274047 lambda!387012 lambda!387013)))))

(declare-fun b!6843698 () Bool)

(declare-fun res!2794135 () Bool)

(assert (=> b!6843698 (=> res!2794135 e!4127286)))

(assert (=> b!6843698 (= res!2794135 call!623220)))

(assert (=> b!6843698 (= e!4127287 e!4127286)))

(declare-fun b!6843699 () Bool)

(declare-fun c!1274050 () Bool)

(assert (=> b!6843699 (= c!1274050 ((_ is ElementMatch!16671) r!7292))))

(declare-fun e!4127288 () Bool)

(assert (=> b!6843699 (= e!4127288 e!4127291)))

(declare-fun b!6843700 () Bool)

(assert (=> b!6843700 (= e!4127290 e!4127288)))

(declare-fun res!2794133 () Bool)

(assert (=> b!6843700 (= res!2794133 (not ((_ is EmptyLang!16671) r!7292)))))

(assert (=> b!6843700 (=> (not res!2794133) (not e!4127288))))

(declare-fun b!6843701 () Bool)

(declare-fun e!4127289 () Bool)

(assert (=> b!6843701 (= e!4127285 e!4127289)))

(declare-fun res!2794134 () Bool)

(assert (=> b!6843701 (= res!2794134 (matchRSpec!3772 (regOne!33855 r!7292) s!2326))))

(assert (=> b!6843701 (=> res!2794134 e!4127289)))

(declare-fun b!6843702 () Bool)

(assert (=> b!6843702 (= e!4127289 (matchRSpec!3772 (regTwo!33855 r!7292) s!2326))))

(assert (= (and d!2151379 c!1274048) b!6843692))

(assert (= (and d!2151379 (not c!1274048)) b!6843700))

(assert (= (and b!6843700 res!2794133) b!6843699))

(assert (= (and b!6843699 c!1274050) b!6843695))

(assert (= (and b!6843699 (not c!1274050)) b!6843697))

(assert (= (and b!6843697 c!1274049) b!6843701))

(assert (= (and b!6843697 (not c!1274049)) b!6843693))

(assert (= (and b!6843701 (not res!2794134)) b!6843702))

(assert (= (and b!6843693 c!1274047) b!6843698))

(assert (= (and b!6843693 (not c!1274047)) b!6843694))

(assert (= (and b!6843698 (not res!2794135)) b!6843696))

(assert (= (or b!6843696 b!6843694) bm!623214))

(assert (= (or b!6843692 b!6843698) bm!623215))

(assert (=> bm!623215 m!7584996))

(declare-fun m!7585058 () Bool)

(assert (=> bm!623214 m!7585058))

(declare-fun m!7585060 () Bool)

(assert (=> b!6843701 m!7585060))

(declare-fun m!7585062 () Bool)

(assert (=> b!6843702 m!7585062))

(assert (=> b!6843335 d!2151379))

(declare-fun b!6843707 () Bool)

(declare-fun e!4127297 () Bool)

(assert (=> b!6843707 (= e!4127297 (matchR!8854 (derivativeStep!5319 r!7292 (head!13721 s!2326)) (tail!12800 s!2326)))))

(declare-fun b!6843708 () Bool)

(declare-fun e!4127295 () Bool)

(assert (=> b!6843708 (= e!4127295 (= (head!13721 s!2326) (c!1273977 r!7292)))))

(declare-fun b!6843709 () Bool)

(declare-fun e!4127298 () Bool)

(declare-fun e!4127294 () Bool)

(assert (=> b!6843709 (= e!4127298 e!4127294)))

(declare-fun c!1274052 () Bool)

(assert (=> b!6843709 (= c!1274052 ((_ is EmptyLang!16671) r!7292))))

(declare-fun b!6843710 () Bool)

(declare-fun lt!2455611 () Bool)

(assert (=> b!6843710 (= e!4127294 (not lt!2455611))))

(declare-fun b!6843711 () Bool)

(declare-fun e!4127292 () Bool)

(declare-fun e!4127296 () Bool)

(assert (=> b!6843711 (= e!4127292 e!4127296)))

(declare-fun res!2794136 () Bool)

(assert (=> b!6843711 (=> (not res!2794136) (not e!4127296))))

(assert (=> b!6843711 (= res!2794136 (not lt!2455611))))

(declare-fun bm!623216 () Bool)

(declare-fun call!623221 () Bool)

(assert (=> bm!623216 (= call!623221 (isEmpty!38565 s!2326))))

(declare-fun b!6843712 () Bool)

(declare-fun e!4127293 () Bool)

(assert (=> b!6843712 (= e!4127296 e!4127293)))

(declare-fun res!2794138 () Bool)

(assert (=> b!6843712 (=> res!2794138 e!4127293)))

(assert (=> b!6843712 (= res!2794138 call!623221)))

(declare-fun b!6843713 () Bool)

(assert (=> b!6843713 (= e!4127298 (= lt!2455611 call!623221))))

(declare-fun b!6843714 () Bool)

(declare-fun res!2794140 () Bool)

(assert (=> b!6843714 (=> res!2794140 e!4127293)))

(assert (=> b!6843714 (= res!2794140 (not (isEmpty!38565 (tail!12800 s!2326))))))

(declare-fun b!6843715 () Bool)

(declare-fun res!2794143 () Bool)

(assert (=> b!6843715 (=> (not res!2794143) (not e!4127295))))

(assert (=> b!6843715 (= res!2794143 (not call!623221))))

(declare-fun d!2151395 () Bool)

(assert (=> d!2151395 e!4127298))

(declare-fun c!1274051 () Bool)

(assert (=> d!2151395 (= c!1274051 ((_ is EmptyExpr!16671) r!7292))))

(assert (=> d!2151395 (= lt!2455611 e!4127297)))

(declare-fun c!1274053 () Bool)

(assert (=> d!2151395 (= c!1274053 (isEmpty!38565 s!2326))))

(assert (=> d!2151395 (validRegex!8407 r!7292)))

(assert (=> d!2151395 (= (matchR!8854 r!7292 s!2326) lt!2455611)))

(declare-fun b!6843716 () Bool)

(assert (=> b!6843716 (= e!4127293 (not (= (head!13721 s!2326) (c!1273977 r!7292))))))

(declare-fun b!6843717 () Bool)

(declare-fun res!2794137 () Bool)

(assert (=> b!6843717 (=> res!2794137 e!4127292)))

(assert (=> b!6843717 (= res!2794137 e!4127295)))

(declare-fun res!2794139 () Bool)

(assert (=> b!6843717 (=> (not res!2794139) (not e!4127295))))

(assert (=> b!6843717 (= res!2794139 lt!2455611)))

(declare-fun b!6843718 () Bool)

(assert (=> b!6843718 (= e!4127297 (nullable!6636 r!7292))))

(declare-fun b!6843719 () Bool)

(declare-fun res!2794141 () Bool)

(assert (=> b!6843719 (=> (not res!2794141) (not e!4127295))))

(assert (=> b!6843719 (= res!2794141 (isEmpty!38565 (tail!12800 s!2326)))))

(declare-fun b!6843720 () Bool)

(declare-fun res!2794142 () Bool)

(assert (=> b!6843720 (=> res!2794142 e!4127292)))

(assert (=> b!6843720 (= res!2794142 (not ((_ is ElementMatch!16671) r!7292)))))

(assert (=> b!6843720 (= e!4127294 e!4127292)))

(assert (= (and d!2151395 c!1274053) b!6843718))

(assert (= (and d!2151395 (not c!1274053)) b!6843707))

(assert (= (and d!2151395 c!1274051) b!6843713))

(assert (= (and d!2151395 (not c!1274051)) b!6843709))

(assert (= (and b!6843709 c!1274052) b!6843710))

(assert (= (and b!6843709 (not c!1274052)) b!6843720))

(assert (= (and b!6843720 (not res!2794142)) b!6843717))

(assert (= (and b!6843717 res!2794139) b!6843715))

(assert (= (and b!6843715 res!2794143) b!6843719))

(assert (= (and b!6843719 res!2794141) b!6843708))

(assert (= (and b!6843717 (not res!2794137)) b!6843711))

(assert (= (and b!6843711 res!2794136) b!6843712))

(assert (= (and b!6843712 (not res!2794138)) b!6843714))

(assert (= (and b!6843714 (not res!2794140)) b!6843716))

(assert (= (or b!6843713 b!6843712 b!6843715) bm!623216))

(assert (=> bm!623216 m!7584996))

(assert (=> d!2151395 m!7584996))

(assert (=> d!2151395 m!7584894))

(assert (=> b!6843708 m!7584998))

(assert (=> b!6843719 m!7585000))

(assert (=> b!6843719 m!7585000))

(assert (=> b!6843719 m!7585002))

(declare-fun m!7585064 () Bool)

(assert (=> b!6843718 m!7585064))

(assert (=> b!6843716 m!7584998))

(assert (=> b!6843707 m!7584998))

(assert (=> b!6843707 m!7584998))

(declare-fun m!7585066 () Bool)

(assert (=> b!6843707 m!7585066))

(assert (=> b!6843707 m!7585000))

(assert (=> b!6843707 m!7585066))

(assert (=> b!6843707 m!7585000))

(declare-fun m!7585068 () Bool)

(assert (=> b!6843707 m!7585068))

(assert (=> b!6843714 m!7585000))

(assert (=> b!6843714 m!7585000))

(assert (=> b!6843714 m!7585002))

(assert (=> b!6843335 d!2151395))

(declare-fun d!2151397 () Bool)

(assert (=> d!2151397 (= (matchR!8854 r!7292 s!2326) (matchRSpec!3772 r!7292 s!2326))))

(declare-fun lt!2455614 () Unit!160045)

(declare-fun choose!51036 (Regex!16671 List!66314) Unit!160045)

(assert (=> d!2151397 (= lt!2455614 (choose!51036 r!7292 s!2326))))

(assert (=> d!2151397 (validRegex!8407 r!7292)))

(assert (=> d!2151397 (= (mainMatchTheorem!3772 r!7292 s!2326) lt!2455614)))

(declare-fun bs!1829364 () Bool)

(assert (= bs!1829364 d!2151397))

(assert (=> bs!1829364 m!7584916))

(assert (=> bs!1829364 m!7584914))

(declare-fun m!7585070 () Bool)

(assert (=> bs!1829364 m!7585070))

(assert (=> bs!1829364 m!7584894))

(assert (=> b!6843335 d!2151397))

(declare-fun d!2151399 () Bool)

(declare-fun lt!2455617 () Int)

(assert (=> d!2151399 (>= lt!2455617 0)))

(declare-fun e!4127301 () Int)

(assert (=> d!2151399 (= lt!2455617 e!4127301)))

(declare-fun c!1274056 () Bool)

(assert (=> d!2151399 (= c!1274056 ((_ is Nil!66189) zl!343))))

(assert (=> d!2151399 (= (size!40709 zl!343) lt!2455617)))

(declare-fun b!6843725 () Bool)

(assert (=> b!6843725 (= e!4127301 0)))

(declare-fun b!6843726 () Bool)

(assert (=> b!6843726 (= e!4127301 (+ 1 (size!40709 (t!380056 zl!343))))))

(assert (= (and d!2151399 c!1274056) b!6843725))

(assert (= (and d!2151399 (not c!1274056)) b!6843726))

(declare-fun m!7585072 () Bool)

(assert (=> b!6843726 m!7585072))

(assert (=> b!6843334 d!2151399))

(declare-fun bs!1829365 () Bool)

(declare-fun d!2151401 () Bool)

(assert (= bs!1829365 (and d!2151401 b!6843333)))

(declare-fun lambda!387016 () Int)

(assert (=> bs!1829365 (not (= lambda!387016 lambda!386979))))

(assert (=> d!2151401 true))

(declare-fun order!27645 () Int)

(declare-fun dynLambda!26447 (Int Int) Int)

(assert (=> d!2151401 (< (dynLambda!26447 order!27645 lambda!386979) (dynLambda!26447 order!27645 lambda!387016))))

(declare-fun forall!15849 (List!66313 Int) Bool)

(assert (=> d!2151401 (= (exists!2768 zl!343 lambda!386979) (not (forall!15849 zl!343 lambda!387016)))))

(declare-fun bs!1829366 () Bool)

(assert (= bs!1829366 d!2151401))

(declare-fun m!7585074 () Bool)

(assert (=> bs!1829366 m!7585074))

(assert (=> b!6843333 d!2151401))

(declare-fun bs!1829367 () Bool)

(declare-fun d!2151403 () Bool)

(assert (= bs!1829367 (and d!2151403 b!6843333)))

(declare-fun lambda!387019 () Int)

(assert (=> bs!1829367 (= lambda!387019 lambda!386979)))

(declare-fun bs!1829368 () Bool)

(assert (= bs!1829368 (and d!2151403 d!2151401)))

(assert (=> bs!1829368 (not (= lambda!387019 lambda!387016))))

(assert (=> d!2151403 true))

(assert (=> d!2151403 (exists!2768 zl!343 lambda!387019)))

(declare-fun lt!2455620 () Unit!160045)

(declare-fun choose!51037 (List!66313 Regex!16671) Unit!160045)

(assert (=> d!2151403 (= lt!2455620 (choose!51037 zl!343 lt!2455564))))

(assert (=> d!2151403 (contains!20320 (unfocusZipperList!2088 zl!343) lt!2455564)))

(assert (=> d!2151403 (= (lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!26 zl!343 lt!2455564) lt!2455620)))

(declare-fun bs!1829369 () Bool)

(assert (= bs!1829369 d!2151403))

(declare-fun m!7585076 () Bool)

(assert (=> bs!1829369 m!7585076))

(declare-fun m!7585078 () Bool)

(assert (=> bs!1829369 m!7585078))

(assert (=> bs!1829369 m!7584902))

(assert (=> bs!1829369 m!7584902))

(declare-fun m!7585080 () Bool)

(assert (=> bs!1829369 m!7585080))

(assert (=> b!6843333 d!2151403))

(declare-fun d!2151405 () Bool)

(declare-fun lt!2455623 () Bool)

(declare-fun content!12977 (List!66313) (InoxSet Context!12110))

(assert (=> d!2151405 (= lt!2455623 (select (content!12977 zl!343) (getWitness!938 zl!343 lambda!386979)))))

(declare-fun e!4127306 () Bool)

(assert (=> d!2151405 (= lt!2455623 e!4127306)))

(declare-fun res!2794148 () Bool)

(assert (=> d!2151405 (=> (not res!2794148) (not e!4127306))))

(assert (=> d!2151405 (= res!2794148 ((_ is Cons!66189) zl!343))))

(assert (=> d!2151405 (= (contains!20321 zl!343 (getWitness!938 zl!343 lambda!386979)) lt!2455623)))

(declare-fun b!6843733 () Bool)

(declare-fun e!4127307 () Bool)

(assert (=> b!6843733 (= e!4127306 e!4127307)))

(declare-fun res!2794149 () Bool)

(assert (=> b!6843733 (=> res!2794149 e!4127307)))

(assert (=> b!6843733 (= res!2794149 (= (h!72637 zl!343) (getWitness!938 zl!343 lambda!386979)))))

(declare-fun b!6843734 () Bool)

(assert (=> b!6843734 (= e!4127307 (contains!20321 (t!380056 zl!343) (getWitness!938 zl!343 lambda!386979)))))

(assert (= (and d!2151405 res!2794148) b!6843733))

(assert (= (and b!6843733 (not res!2794149)) b!6843734))

(declare-fun m!7585082 () Bool)

(assert (=> d!2151405 m!7585082))

(assert (=> d!2151405 m!7584904))

(declare-fun m!7585084 () Bool)

(assert (=> d!2151405 m!7585084))

(assert (=> b!6843734 m!7584904))

(declare-fun m!7585086 () Bool)

(assert (=> b!6843734 m!7585086))

(assert (=> b!6843342 d!2151405))

(declare-fun d!2151407 () Bool)

(declare-fun e!4127319 () Bool)

(assert (=> d!2151407 e!4127319))

(declare-fun res!2794155 () Bool)

(assert (=> d!2151407 (=> (not res!2794155) (not e!4127319))))

(declare-fun lt!2455629 () Context!12110)

(declare-fun dynLambda!26448 (Int Context!12110) Bool)

(assert (=> d!2151407 (= res!2794155 (dynLambda!26448 lambda!386979 lt!2455629))))

(declare-fun e!4127317 () Context!12110)

(assert (=> d!2151407 (= lt!2455629 e!4127317)))

(declare-fun c!1274063 () Bool)

(declare-fun e!4127318 () Bool)

(assert (=> d!2151407 (= c!1274063 e!4127318)))

(declare-fun res!2794154 () Bool)

(assert (=> d!2151407 (=> (not res!2794154) (not e!4127318))))

(assert (=> d!2151407 (= res!2794154 ((_ is Cons!66189) zl!343))))

(assert (=> d!2151407 (exists!2768 zl!343 lambda!386979)))

(assert (=> d!2151407 (= (getWitness!938 zl!343 lambda!386979) lt!2455629)))

(declare-fun b!6843747 () Bool)

(declare-fun e!4127316 () Context!12110)

(assert (=> b!6843747 (= e!4127316 (getWitness!938 (t!380056 zl!343) lambda!386979))))

(declare-fun b!6843748 () Bool)

(assert (=> b!6843748 (= e!4127318 (dynLambda!26448 lambda!386979 (h!72637 zl!343)))))

(declare-fun b!6843749 () Bool)

(declare-fun lt!2455628 () Unit!160045)

(declare-fun Unit!160049 () Unit!160045)

(assert (=> b!6843749 (= lt!2455628 Unit!160049)))

(assert (=> b!6843749 false))

(declare-fun head!13722 (List!66313) Context!12110)

(assert (=> b!6843749 (= e!4127316 (head!13722 zl!343))))

(declare-fun b!6843750 () Bool)

(assert (=> b!6843750 (= e!4127319 (contains!20321 zl!343 lt!2455629))))

(declare-fun b!6843751 () Bool)

(assert (=> b!6843751 (= e!4127317 e!4127316)))

(declare-fun c!1274064 () Bool)

(assert (=> b!6843751 (= c!1274064 ((_ is Cons!66189) zl!343))))

(declare-fun b!6843752 () Bool)

(assert (=> b!6843752 (= e!4127317 (h!72637 zl!343))))

(assert (= (and d!2151407 res!2794154) b!6843748))

(assert (= (and d!2151407 c!1274063) b!6843752))

(assert (= (and d!2151407 (not c!1274063)) b!6843751))

(assert (= (and b!6843751 c!1274064) b!6843747))

(assert (= (and b!6843751 (not c!1274064)) b!6843749))

(assert (= (and d!2151407 res!2794155) b!6843750))

(declare-fun b_lambda!258091 () Bool)

(assert (=> (not b_lambda!258091) (not d!2151407)))

(declare-fun b_lambda!258093 () Bool)

(assert (=> (not b_lambda!258093) (not b!6843748)))

(declare-fun m!7585088 () Bool)

(assert (=> d!2151407 m!7585088))

(assert (=> d!2151407 m!7584886))

(declare-fun m!7585090 () Bool)

(assert (=> b!6843747 m!7585090))

(declare-fun m!7585092 () Bool)

(assert (=> b!6843748 m!7585092))

(declare-fun m!7585094 () Bool)

(assert (=> b!6843749 m!7585094))

(declare-fun m!7585096 () Bool)

(assert (=> b!6843750 m!7585096))

(assert (=> b!6843342 d!2151407))

(declare-fun d!2151409 () Bool)

(declare-fun lt!2455632 () Bool)

(declare-fun content!12978 (List!66312) (InoxSet Regex!16671))

(assert (=> d!2151409 (= lt!2455632 (select (content!12978 lt!2455560) lt!2455564))))

(declare-fun e!4127324 () Bool)

(assert (=> d!2151409 (= lt!2455632 e!4127324)))

(declare-fun res!2794160 () Bool)

(assert (=> d!2151409 (=> (not res!2794160) (not e!4127324))))

(assert (=> d!2151409 (= res!2794160 ((_ is Cons!66188) lt!2455560))))

(assert (=> d!2151409 (= (contains!20320 lt!2455560 lt!2455564) lt!2455632)))

(declare-fun b!6843757 () Bool)

(declare-fun e!4127325 () Bool)

(assert (=> b!6843757 (= e!4127324 e!4127325)))

(declare-fun res!2794161 () Bool)

(assert (=> b!6843757 (=> res!2794161 e!4127325)))

(assert (=> b!6843757 (= res!2794161 (= (h!72636 lt!2455560) lt!2455564))))

(declare-fun b!6843758 () Bool)

(assert (=> b!6843758 (= e!4127325 (contains!20320 (t!380055 lt!2455560) lt!2455564))))

(assert (= (and d!2151409 res!2794160) b!6843757))

(assert (= (and b!6843757 (not res!2794161)) b!6843758))

(declare-fun m!7585098 () Bool)

(assert (=> d!2151409 m!7585098))

(declare-fun m!7585100 () Bool)

(assert (=> d!2151409 m!7585100))

(declare-fun m!7585102 () Bool)

(assert (=> b!6843758 m!7585102))

(assert (=> b!6843341 d!2151409))

(declare-fun b!6843771 () Bool)

(declare-fun lt!2455638 () Unit!160045)

(declare-fun Unit!160050 () Unit!160045)

(assert (=> b!6843771 (= lt!2455638 Unit!160050)))

(assert (=> b!6843771 false))

(declare-fun e!4127336 () Regex!16671)

(declare-fun head!13723 (List!66312) Regex!16671)

(assert (=> b!6843771 (= e!4127336 (head!13723 lt!2455560))))

(declare-fun b!6843772 () Bool)

(declare-fun e!4127335 () Regex!16671)

(assert (=> b!6843772 (= e!4127335 (h!72636 lt!2455560))))

(declare-fun b!6843773 () Bool)

(declare-fun e!4127334 () Bool)

(declare-fun lt!2455637 () Regex!16671)

(assert (=> b!6843773 (= e!4127334 (contains!20320 lt!2455560 lt!2455637))))

(declare-fun d!2151411 () Bool)

(assert (=> d!2151411 e!4127334))

(declare-fun res!2794167 () Bool)

(assert (=> d!2151411 (=> (not res!2794167) (not e!4127334))))

(declare-fun dynLambda!26449 (Int Regex!16671) Bool)

(assert (=> d!2151411 (= res!2794167 (dynLambda!26449 lambda!386978 lt!2455637))))

(assert (=> d!2151411 (= lt!2455637 e!4127335)))

(declare-fun c!1274069 () Bool)

(declare-fun e!4127337 () Bool)

(assert (=> d!2151411 (= c!1274069 e!4127337)))

(declare-fun res!2794166 () Bool)

(assert (=> d!2151411 (=> (not res!2794166) (not e!4127337))))

(assert (=> d!2151411 (= res!2794166 ((_ is Cons!66188) lt!2455560))))

(assert (=> d!2151411 (exists!2769 lt!2455560 lambda!386978)))

(assert (=> d!2151411 (= (getWitness!937 lt!2455560 lambda!386978) lt!2455637)))

(declare-fun b!6843774 () Bool)

(assert (=> b!6843774 (= e!4127337 (dynLambda!26449 lambda!386978 (h!72636 lt!2455560)))))

(declare-fun b!6843775 () Bool)

(assert (=> b!6843775 (= e!4127336 (getWitness!937 (t!380055 lt!2455560) lambda!386978))))

(declare-fun b!6843776 () Bool)

(assert (=> b!6843776 (= e!4127335 e!4127336)))

(declare-fun c!1274070 () Bool)

(assert (=> b!6843776 (= c!1274070 ((_ is Cons!66188) lt!2455560))))

(assert (= (and d!2151411 res!2794166) b!6843774))

(assert (= (and d!2151411 c!1274069) b!6843772))

(assert (= (and d!2151411 (not c!1274069)) b!6843776))

(assert (= (and b!6843776 c!1274070) b!6843775))

(assert (= (and b!6843776 (not c!1274070)) b!6843771))

(assert (= (and d!2151411 res!2794167) b!6843773))

(declare-fun b_lambda!258095 () Bool)

(assert (=> (not b_lambda!258095) (not d!2151411)))

(declare-fun b_lambda!258097 () Bool)

(assert (=> (not b_lambda!258097) (not b!6843774)))

(declare-fun m!7585104 () Bool)

(assert (=> b!6843773 m!7585104))

(declare-fun m!7585106 () Bool)

(assert (=> d!2151411 m!7585106))

(assert (=> d!2151411 m!7584898))

(declare-fun m!7585108 () Bool)

(assert (=> b!6843771 m!7585108))

(declare-fun m!7585110 () Bool)

(assert (=> b!6843775 m!7585110))

(declare-fun m!7585112 () Bool)

(assert (=> b!6843774 m!7585112))

(assert (=> b!6843341 d!2151411))

(declare-fun b!6843795 () Bool)

(declare-fun e!4127352 () Bool)

(declare-fun e!4127358 () Bool)

(assert (=> b!6843795 (= e!4127352 e!4127358)))

(declare-fun c!1274075 () Bool)

(assert (=> b!6843795 (= c!1274075 ((_ is Star!16671) r!7292))))

(declare-fun b!6843796 () Bool)

(declare-fun e!4127353 () Bool)

(declare-fun call!623228 () Bool)

(assert (=> b!6843796 (= e!4127353 call!623228)))

(declare-fun b!6843797 () Bool)

(declare-fun res!2794178 () Bool)

(declare-fun e!4127357 () Bool)

(assert (=> b!6843797 (=> (not res!2794178) (not e!4127357))))

(declare-fun call!623230 () Bool)

(assert (=> b!6843797 (= res!2794178 call!623230)))

(declare-fun e!4127356 () Bool)

(assert (=> b!6843797 (= e!4127356 e!4127357)))

(declare-fun b!6843798 () Bool)

(assert (=> b!6843798 (= e!4127358 e!4127353)))

(declare-fun res!2794182 () Bool)

(assert (=> b!6843798 (= res!2794182 (not (nullable!6636 (reg!17000 r!7292))))))

(assert (=> b!6843798 (=> (not res!2794182) (not e!4127353))))

(declare-fun b!6843799 () Bool)

(declare-fun e!4127355 () Bool)

(declare-fun e!4127354 () Bool)

(assert (=> b!6843799 (= e!4127355 e!4127354)))

(declare-fun res!2794179 () Bool)

(assert (=> b!6843799 (=> (not res!2794179) (not e!4127354))))

(assert (=> b!6843799 (= res!2794179 call!623230)))

(declare-fun bm!623223 () Bool)

(declare-fun call!623229 () Bool)

(assert (=> bm!623223 (= call!623229 call!623228)))

(declare-fun bm!623224 () Bool)

(declare-fun c!1274076 () Bool)

(assert (=> bm!623224 (= call!623230 (validRegex!8407 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))))))

(declare-fun bm!623225 () Bool)

(assert (=> bm!623225 (= call!623228 (validRegex!8407 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))))))

(declare-fun d!2151413 () Bool)

(declare-fun res!2794181 () Bool)

(assert (=> d!2151413 (=> res!2794181 e!4127352)))

(assert (=> d!2151413 (= res!2794181 ((_ is ElementMatch!16671) r!7292))))

(assert (=> d!2151413 (= (validRegex!8407 r!7292) e!4127352)))

(declare-fun b!6843800 () Bool)

(assert (=> b!6843800 (= e!4127358 e!4127356)))

(assert (=> b!6843800 (= c!1274076 ((_ is Union!16671) r!7292))))

(declare-fun b!6843801 () Bool)

(assert (=> b!6843801 (= e!4127354 call!623229)))

(declare-fun b!6843802 () Bool)

(assert (=> b!6843802 (= e!4127357 call!623229)))

(declare-fun b!6843803 () Bool)

(declare-fun res!2794180 () Bool)

(assert (=> b!6843803 (=> res!2794180 e!4127355)))

(assert (=> b!6843803 (= res!2794180 (not ((_ is Concat!25516) r!7292)))))

(assert (=> b!6843803 (= e!4127356 e!4127355)))

(assert (= (and d!2151413 (not res!2794181)) b!6843795))

(assert (= (and b!6843795 c!1274075) b!6843798))

(assert (= (and b!6843795 (not c!1274075)) b!6843800))

(assert (= (and b!6843798 res!2794182) b!6843796))

(assert (= (and b!6843800 c!1274076) b!6843797))

(assert (= (and b!6843800 (not c!1274076)) b!6843803))

(assert (= (and b!6843797 res!2794178) b!6843802))

(assert (= (and b!6843803 (not res!2794180)) b!6843799))

(assert (= (and b!6843799 res!2794179) b!6843801))

(assert (= (or b!6843802 b!6843801) bm!623223))

(assert (= (or b!6843797 b!6843799) bm!623224))

(assert (= (or b!6843796 bm!623223) bm!623225))

(declare-fun m!7585114 () Bool)

(assert (=> b!6843798 m!7585114))

(declare-fun m!7585116 () Bool)

(assert (=> bm!623224 m!7585116))

(declare-fun m!7585118 () Bool)

(assert (=> bm!623225 m!7585118))

(assert (=> start!661248 d!2151413))

(declare-fun d!2151415 () Bool)

(declare-fun lt!2455641 () Regex!16671)

(assert (=> d!2151415 (validRegex!8407 lt!2455641)))

(declare-fun generalisedUnion!2511 (List!66312) Regex!16671)

(assert (=> d!2151415 (= lt!2455641 (generalisedUnion!2511 (unfocusZipperList!2088 zl!343)))))

(assert (=> d!2151415 (= (unfocusZipper!2413 zl!343) lt!2455641)))

(declare-fun bs!1829370 () Bool)

(assert (= bs!1829370 d!2151415))

(declare-fun m!7585120 () Bool)

(assert (=> bs!1829370 m!7585120))

(assert (=> bs!1829370 m!7584902))

(assert (=> bs!1829370 m!7584902))

(declare-fun m!7585122 () Bool)

(assert (=> bs!1829370 m!7585122))

(assert (=> b!6843349 d!2151415))

(declare-fun bs!1829371 () Bool)

(declare-fun d!2151417 () Bool)

(assert (= bs!1829371 (and d!2151417 b!6843348)))

(declare-fun lambda!387022 () Int)

(assert (=> bs!1829371 (not (= lambda!387022 lambda!386978))))

(declare-fun forall!15850 (List!66312 Int) Bool)

(assert (=> d!2151417 (= (inv!84924 (h!72637 zl!343)) (forall!15850 (exprs!6555 (h!72637 zl!343)) lambda!387022))))

(declare-fun bs!1829372 () Bool)

(assert (= bs!1829372 d!2151417))

(declare-fun m!7585124 () Bool)

(assert (=> bs!1829372 m!7585124))

(assert (=> b!6843340 d!2151417))

(declare-fun bs!1829373 () Bool)

(declare-fun d!2151419 () Bool)

(assert (= bs!1829373 (and d!2151419 b!6843348)))

(declare-fun lambda!387023 () Int)

(assert (=> bs!1829373 (not (= lambda!387023 lambda!386978))))

(declare-fun bs!1829374 () Bool)

(assert (= bs!1829374 (and d!2151419 d!2151417)))

(assert (=> bs!1829374 (= lambda!387023 lambda!387022)))

(assert (=> d!2151419 (= (inv!84924 setElem!47059) (forall!15850 (exprs!6555 setElem!47059) lambda!387023))))

(declare-fun bs!1829375 () Bool)

(assert (= bs!1829375 d!2151419))

(declare-fun m!7585126 () Bool)

(assert (=> bs!1829375 m!7585126))

(assert (=> setNonEmpty!47059 d!2151419))

(declare-fun d!2151421 () Bool)

(declare-fun e!4127361 () Bool)

(assert (=> d!2151421 e!4127361))

(declare-fun res!2794185 () Bool)

(assert (=> d!2151421 (=> (not res!2794185) (not e!4127361))))

(declare-fun lt!2455644 () List!66313)

(declare-fun noDuplicate!2439 (List!66313) Bool)

(assert (=> d!2151421 (= res!2794185 (noDuplicate!2439 lt!2455644))))

(declare-fun choose!51038 ((InoxSet Context!12110)) List!66313)

(assert (=> d!2151421 (= lt!2455644 (choose!51038 z!1189))))

(assert (=> d!2151421 (= (toList!10455 z!1189) lt!2455644)))

(declare-fun b!6843806 () Bool)

(assert (=> b!6843806 (= e!4127361 (= (content!12977 lt!2455644) z!1189))))

(assert (= (and d!2151421 res!2794185) b!6843806))

(declare-fun m!7585128 () Bool)

(assert (=> d!2151421 m!7585128))

(declare-fun m!7585130 () Bool)

(assert (=> d!2151421 m!7585130))

(declare-fun m!7585132 () Bool)

(assert (=> b!6843806 m!7585132))

(assert (=> b!6843328 d!2151421))

(declare-fun bs!1829376 () Bool)

(declare-fun d!2151423 () Bool)

(assert (= bs!1829376 (and d!2151423 b!6843348)))

(declare-fun lambda!387026 () Int)

(assert (=> bs!1829376 (not (= lambda!387026 lambda!386978))))

(declare-fun bs!1829377 () Bool)

(assert (= bs!1829377 (and d!2151423 d!2151417)))

(assert (=> bs!1829377 (not (= lambda!387026 lambda!387022))))

(declare-fun bs!1829378 () Bool)

(assert (= bs!1829378 (and d!2151423 d!2151419)))

(assert (=> bs!1829378 (not (= lambda!387026 lambda!387023))))

(assert (=> d!2151423 true))

(declare-fun order!27647 () Int)

(declare-fun dynLambda!26450 (Int Int) Int)

(assert (=> d!2151423 (< (dynLambda!26450 order!27647 lambda!386978) (dynLambda!26450 order!27647 lambda!387026))))

(assert (=> d!2151423 (= (exists!2769 lt!2455560 lambda!386978) (not (forall!15850 lt!2455560 lambda!387026)))))

(declare-fun bs!1829379 () Bool)

(assert (= bs!1829379 d!2151423))

(declare-fun m!7585134 () Bool)

(assert (=> bs!1829379 m!7585134))

(assert (=> b!6843348 d!2151423))

(declare-fun bs!1829380 () Bool)

(declare-fun d!2151425 () Bool)

(assert (= bs!1829380 (and d!2151425 b!6843348)))

(declare-fun lambda!387031 () Int)

(assert (=> bs!1829380 (not (= lambda!387031 lambda!386978))))

(declare-fun bs!1829381 () Bool)

(assert (= bs!1829381 (and d!2151425 d!2151417)))

(assert (=> bs!1829381 (= lambda!387031 lambda!387022)))

(declare-fun bs!1829382 () Bool)

(assert (= bs!1829382 (and d!2151425 d!2151419)))

(assert (=> bs!1829382 (= lambda!387031 lambda!387023)))

(declare-fun bs!1829383 () Bool)

(assert (= bs!1829383 (and d!2151425 d!2151423)))

(assert (=> bs!1829383 (not (= lambda!387031 lambda!387026))))

(declare-fun lambda!387032 () Int)

(assert (=> bs!1829381 (not (= lambda!387032 lambda!387022))))

(assert (=> bs!1829383 (not (= lambda!387032 lambda!387026))))

(assert (=> bs!1829380 (= lambda!387032 lambda!386978)))

(declare-fun bs!1829384 () Bool)

(assert (= bs!1829384 d!2151425))

(assert (=> bs!1829384 (not (= lambda!387032 lambda!387031))))

(assert (=> bs!1829382 (not (= lambda!387032 lambda!387023))))

(assert (=> d!2151425 true))

(assert (=> d!2151425 (= (matchR!8854 r!7292 s!2326) (exists!2769 lt!2455560 lambda!387032))))

(declare-fun lt!2455647 () Unit!160045)

(declare-fun choose!51039 (Regex!16671 List!66312 List!66314) Unit!160045)

(assert (=> d!2151425 (= lt!2455647 (choose!51039 r!7292 lt!2455560 s!2326))))

(assert (=> d!2151425 (forall!15850 lt!2455560 lambda!387031)))

(assert (=> d!2151425 (= (matchRGenUnionSpec!310 r!7292 lt!2455560 s!2326) lt!2455647)))

(assert (=> bs!1829384 m!7584916))

(declare-fun m!7585136 () Bool)

(assert (=> bs!1829384 m!7585136))

(declare-fun m!7585138 () Bool)

(assert (=> bs!1829384 m!7585138))

(declare-fun m!7585140 () Bool)

(assert (=> bs!1829384 m!7585140))

(assert (=> b!6843348 d!2151425))

(declare-fun bs!1829385 () Bool)

(declare-fun d!2151427 () Bool)

(assert (= bs!1829385 (and d!2151427 d!2151417)))

(declare-fun lambda!387035 () Int)

(assert (=> bs!1829385 (= lambda!387035 lambda!387022)))

(declare-fun bs!1829386 () Bool)

(assert (= bs!1829386 (and d!2151427 d!2151423)))

(assert (=> bs!1829386 (not (= lambda!387035 lambda!387026))))

(declare-fun bs!1829387 () Bool)

(assert (= bs!1829387 (and d!2151427 b!6843348)))

(assert (=> bs!1829387 (not (= lambda!387035 lambda!386978))))

(declare-fun bs!1829388 () Bool)

(assert (= bs!1829388 (and d!2151427 d!2151425)))

(assert (=> bs!1829388 (= lambda!387035 lambda!387031)))

(assert (=> bs!1829388 (not (= lambda!387035 lambda!387032))))

(declare-fun bs!1829389 () Bool)

(assert (= bs!1829389 (and d!2151427 d!2151419)))

(assert (=> bs!1829389 (= lambda!387035 lambda!387023)))

(declare-fun lt!2455650 () List!66312)

(assert (=> d!2151427 (forall!15850 lt!2455650 lambda!387035)))

(declare-fun e!4127366 () List!66312)

(assert (=> d!2151427 (= lt!2455650 e!4127366)))

(declare-fun c!1274079 () Bool)

(assert (=> d!2151427 (= c!1274079 ((_ is Cons!66189) zl!343))))

(assert (=> d!2151427 (= (unfocusZipperList!2088 zl!343) lt!2455650)))

(declare-fun b!6843815 () Bool)

(declare-fun generalisedConcat!2264 (List!66312) Regex!16671)

(assert (=> b!6843815 (= e!4127366 (Cons!66188 (generalisedConcat!2264 (exprs!6555 (h!72637 zl!343))) (unfocusZipperList!2088 (t!380056 zl!343))))))

(declare-fun b!6843816 () Bool)

(assert (=> b!6843816 (= e!4127366 Nil!66188)))

(assert (= (and d!2151427 c!1274079) b!6843815))

(assert (= (and d!2151427 (not c!1274079)) b!6843816))

(declare-fun m!7585142 () Bool)

(assert (=> d!2151427 m!7585142))

(declare-fun m!7585144 () Bool)

(assert (=> b!6843815 m!7585144))

(declare-fun m!7585146 () Bool)

(assert (=> b!6843815 m!7585146))

(assert (=> b!6843348 d!2151427))

(declare-fun b!6843817 () Bool)

(declare-fun e!4127367 () Bool)

(declare-fun e!4127373 () Bool)

(assert (=> b!6843817 (= e!4127367 e!4127373)))

(declare-fun c!1274080 () Bool)

(assert (=> b!6843817 (= c!1274080 ((_ is Star!16671) lt!2455564))))

(declare-fun b!6843818 () Bool)

(declare-fun e!4127368 () Bool)

(declare-fun call!623231 () Bool)

(assert (=> b!6843818 (= e!4127368 call!623231)))

(declare-fun b!6843819 () Bool)

(declare-fun res!2794188 () Bool)

(declare-fun e!4127372 () Bool)

(assert (=> b!6843819 (=> (not res!2794188) (not e!4127372))))

(declare-fun call!623233 () Bool)

(assert (=> b!6843819 (= res!2794188 call!623233)))

(declare-fun e!4127371 () Bool)

(assert (=> b!6843819 (= e!4127371 e!4127372)))

(declare-fun b!6843820 () Bool)

(assert (=> b!6843820 (= e!4127373 e!4127368)))

(declare-fun res!2794192 () Bool)

(assert (=> b!6843820 (= res!2794192 (not (nullable!6636 (reg!17000 lt!2455564))))))

(assert (=> b!6843820 (=> (not res!2794192) (not e!4127368))))

(declare-fun b!6843821 () Bool)

(declare-fun e!4127370 () Bool)

(declare-fun e!4127369 () Bool)

(assert (=> b!6843821 (= e!4127370 e!4127369)))

(declare-fun res!2794189 () Bool)

(assert (=> b!6843821 (=> (not res!2794189) (not e!4127369))))

(assert (=> b!6843821 (= res!2794189 call!623233)))

(declare-fun bm!623226 () Bool)

(declare-fun call!623232 () Bool)

(assert (=> bm!623226 (= call!623232 call!623231)))

(declare-fun bm!623227 () Bool)

(declare-fun c!1274081 () Bool)

(assert (=> bm!623227 (= call!623233 (validRegex!8407 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))))))

(declare-fun bm!623228 () Bool)

(assert (=> bm!623228 (= call!623231 (validRegex!8407 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))))))

(declare-fun d!2151429 () Bool)

(declare-fun res!2794191 () Bool)

(assert (=> d!2151429 (=> res!2794191 e!4127367)))

(assert (=> d!2151429 (= res!2794191 ((_ is ElementMatch!16671) lt!2455564))))

(assert (=> d!2151429 (= (validRegex!8407 lt!2455564) e!4127367)))

(declare-fun b!6843822 () Bool)

(assert (=> b!6843822 (= e!4127373 e!4127371)))

(assert (=> b!6843822 (= c!1274081 ((_ is Union!16671) lt!2455564))))

(declare-fun b!6843823 () Bool)

(assert (=> b!6843823 (= e!4127369 call!623232)))

(declare-fun b!6843824 () Bool)

(assert (=> b!6843824 (= e!4127372 call!623232)))

(declare-fun b!6843825 () Bool)

(declare-fun res!2794190 () Bool)

(assert (=> b!6843825 (=> res!2794190 e!4127370)))

(assert (=> b!6843825 (= res!2794190 (not ((_ is Concat!25516) lt!2455564)))))

(assert (=> b!6843825 (= e!4127371 e!4127370)))

(assert (= (and d!2151429 (not res!2794191)) b!6843817))

(assert (= (and b!6843817 c!1274080) b!6843820))

(assert (= (and b!6843817 (not c!1274080)) b!6843822))

(assert (= (and b!6843820 res!2794192) b!6843818))

(assert (= (and b!6843822 c!1274081) b!6843819))

(assert (= (and b!6843822 (not c!1274081)) b!6843825))

(assert (= (and b!6843819 res!2794188) b!6843824))

(assert (= (and b!6843825 (not res!2794190)) b!6843821))

(assert (= (and b!6843821 res!2794189) b!6843823))

(assert (= (or b!6843824 b!6843823) bm!623226))

(assert (= (or b!6843819 b!6843821) bm!623227))

(assert (= (or b!6843818 bm!623226) bm!623228))

(declare-fun m!7585148 () Bool)

(assert (=> b!6843820 m!7585148))

(declare-fun m!7585150 () Bool)

(assert (=> bm!623227 m!7585150))

(declare-fun m!7585152 () Bool)

(assert (=> bm!623228 m!7585152))

(assert (=> b!6843347 d!2151429))

(declare-fun d!2151431 () Bool)

(assert (=> d!2151431 (= (isEmpty!38563 (t!380056 zl!343)) ((_ is Nil!66189) (t!380056 zl!343)))))

(assert (=> b!6843337 d!2151431))

(assert (=> b!6843346 d!2151431))

(assert (=> b!6843336 d!2151423))

(declare-fun b!6843833 () Bool)

(declare-fun e!4127379 () Bool)

(declare-fun tp!1874266 () Bool)

(assert (=> b!6843833 (= e!4127379 tp!1874266)))

(declare-fun b!6843832 () Bool)

(declare-fun e!4127378 () Bool)

(declare-fun tp!1874267 () Bool)

(assert (=> b!6843832 (= e!4127378 (and (inv!84924 (h!72637 (t!380056 zl!343))) e!4127379 tp!1874267))))

(assert (=> b!6843340 (= tp!1874203 e!4127378)))

(assert (= b!6843832 b!6843833))

(assert (= (and b!6843340 ((_ is Cons!66189) (t!380056 zl!343))) b!6843832))

(declare-fun m!7585154 () Bool)

(assert (=> b!6843832 m!7585154))

(declare-fun b!6843845 () Bool)

(declare-fun e!4127382 () Bool)

(declare-fun tp!1874278 () Bool)

(declare-fun tp!1874280 () Bool)

(assert (=> b!6843845 (= e!4127382 (and tp!1874278 tp!1874280))))

(declare-fun b!6843844 () Bool)

(assert (=> b!6843844 (= e!4127382 tp_is_empty!42595)))

(declare-fun b!6843846 () Bool)

(declare-fun tp!1874279 () Bool)

(assert (=> b!6843846 (= e!4127382 tp!1874279)))

(assert (=> b!6843329 (= tp!1874202 e!4127382)))

(declare-fun b!6843847 () Bool)

(declare-fun tp!1874281 () Bool)

(declare-fun tp!1874282 () Bool)

(assert (=> b!6843847 (= e!4127382 (and tp!1874281 tp!1874282))))

(assert (= (and b!6843329 ((_ is ElementMatch!16671) (regOne!33854 r!7292))) b!6843844))

(assert (= (and b!6843329 ((_ is Concat!25516) (regOne!33854 r!7292))) b!6843845))

(assert (= (and b!6843329 ((_ is Star!16671) (regOne!33854 r!7292))) b!6843846))

(assert (= (and b!6843329 ((_ is Union!16671) (regOne!33854 r!7292))) b!6843847))

(declare-fun b!6843849 () Bool)

(declare-fun e!4127383 () Bool)

(declare-fun tp!1874283 () Bool)

(declare-fun tp!1874285 () Bool)

(assert (=> b!6843849 (= e!4127383 (and tp!1874283 tp!1874285))))

(declare-fun b!6843848 () Bool)

(assert (=> b!6843848 (= e!4127383 tp_is_empty!42595)))

(declare-fun b!6843850 () Bool)

(declare-fun tp!1874284 () Bool)

(assert (=> b!6843850 (= e!4127383 tp!1874284)))

(assert (=> b!6843329 (= tp!1874196 e!4127383)))

(declare-fun b!6843851 () Bool)

(declare-fun tp!1874286 () Bool)

(declare-fun tp!1874287 () Bool)

(assert (=> b!6843851 (= e!4127383 (and tp!1874286 tp!1874287))))

(assert (= (and b!6843329 ((_ is ElementMatch!16671) (regTwo!33854 r!7292))) b!6843848))

(assert (= (and b!6843329 ((_ is Concat!25516) (regTwo!33854 r!7292))) b!6843849))

(assert (= (and b!6843329 ((_ is Star!16671) (regTwo!33854 r!7292))) b!6843850))

(assert (= (and b!6843329 ((_ is Union!16671) (regTwo!33854 r!7292))) b!6843851))

(declare-fun b!6843853 () Bool)

(declare-fun e!4127384 () Bool)

(declare-fun tp!1874288 () Bool)

(declare-fun tp!1874290 () Bool)

(assert (=> b!6843853 (= e!4127384 (and tp!1874288 tp!1874290))))

(declare-fun b!6843852 () Bool)

(assert (=> b!6843852 (= e!4127384 tp_is_empty!42595)))

(declare-fun b!6843854 () Bool)

(declare-fun tp!1874289 () Bool)

(assert (=> b!6843854 (= e!4127384 tp!1874289)))

(assert (=> b!6843344 (= tp!1874195 e!4127384)))

(declare-fun b!6843855 () Bool)

(declare-fun tp!1874291 () Bool)

(declare-fun tp!1874292 () Bool)

(assert (=> b!6843855 (= e!4127384 (and tp!1874291 tp!1874292))))

(assert (= (and b!6843344 ((_ is ElementMatch!16671) (reg!17000 r!7292))) b!6843852))

(assert (= (and b!6843344 ((_ is Concat!25516) (reg!17000 r!7292))) b!6843853))

(assert (= (and b!6843344 ((_ is Star!16671) (reg!17000 r!7292))) b!6843854))

(assert (= (and b!6843344 ((_ is Union!16671) (reg!17000 r!7292))) b!6843855))

(declare-fun condSetEmpty!47065 () Bool)

(assert (=> setNonEmpty!47059 (= condSetEmpty!47065 (= setRest!47059 ((as const (Array Context!12110 Bool)) false)))))

(declare-fun setRes!47065 () Bool)

(assert (=> setNonEmpty!47059 (= tp!1874197 setRes!47065)))

(declare-fun setIsEmpty!47065 () Bool)

(assert (=> setIsEmpty!47065 setRes!47065))

(declare-fun setElem!47065 () Context!12110)

(declare-fun e!4127387 () Bool)

(declare-fun setNonEmpty!47065 () Bool)

(declare-fun tp!1874297 () Bool)

(assert (=> setNonEmpty!47065 (= setRes!47065 (and tp!1874297 (inv!84924 setElem!47065) e!4127387))))

(declare-fun setRest!47065 () (InoxSet Context!12110))

(assert (=> setNonEmpty!47065 (= setRest!47059 ((_ map or) (store ((as const (Array Context!12110 Bool)) false) setElem!47065 true) setRest!47065))))

(declare-fun b!6843860 () Bool)

(declare-fun tp!1874298 () Bool)

(assert (=> b!6843860 (= e!4127387 tp!1874298)))

(assert (= (and setNonEmpty!47059 condSetEmpty!47065) setIsEmpty!47065))

(assert (= (and setNonEmpty!47059 (not condSetEmpty!47065)) setNonEmpty!47065))

(assert (= setNonEmpty!47065 b!6843860))

(declare-fun m!7585156 () Bool)

(assert (=> setNonEmpty!47065 m!7585156))

(declare-fun b!6843865 () Bool)

(declare-fun e!4127390 () Bool)

(declare-fun tp!1874303 () Bool)

(declare-fun tp!1874304 () Bool)

(assert (=> b!6843865 (= e!4127390 (and tp!1874303 tp!1874304))))

(assert (=> b!6843343 (= tp!1874199 e!4127390)))

(assert (= (and b!6843343 ((_ is Cons!66188) (exprs!6555 setElem!47059))) b!6843865))

(declare-fun b!6843866 () Bool)

(declare-fun e!4127391 () Bool)

(declare-fun tp!1874305 () Bool)

(declare-fun tp!1874306 () Bool)

(assert (=> b!6843866 (= e!4127391 (and tp!1874305 tp!1874306))))

(assert (=> b!6843338 (= tp!1874198 e!4127391)))

(assert (= (and b!6843338 ((_ is Cons!66188) (exprs!6555 (h!72637 zl!343)))) b!6843866))

(declare-fun b!6843868 () Bool)

(declare-fun e!4127392 () Bool)

(declare-fun tp!1874307 () Bool)

(declare-fun tp!1874309 () Bool)

(assert (=> b!6843868 (= e!4127392 (and tp!1874307 tp!1874309))))

(declare-fun b!6843867 () Bool)

(assert (=> b!6843867 (= e!4127392 tp_is_empty!42595)))

(declare-fun b!6843869 () Bool)

(declare-fun tp!1874308 () Bool)

(assert (=> b!6843869 (= e!4127392 tp!1874308)))

(assert (=> b!6843332 (= tp!1874200 e!4127392)))

(declare-fun b!6843870 () Bool)

(declare-fun tp!1874310 () Bool)

(declare-fun tp!1874311 () Bool)

(assert (=> b!6843870 (= e!4127392 (and tp!1874310 tp!1874311))))

(assert (= (and b!6843332 ((_ is ElementMatch!16671) (regOne!33855 r!7292))) b!6843867))

(assert (= (and b!6843332 ((_ is Concat!25516) (regOne!33855 r!7292))) b!6843868))

(assert (= (and b!6843332 ((_ is Star!16671) (regOne!33855 r!7292))) b!6843869))

(assert (= (and b!6843332 ((_ is Union!16671) (regOne!33855 r!7292))) b!6843870))

(declare-fun b!6843872 () Bool)

(declare-fun e!4127393 () Bool)

(declare-fun tp!1874312 () Bool)

(declare-fun tp!1874314 () Bool)

(assert (=> b!6843872 (= e!4127393 (and tp!1874312 tp!1874314))))

(declare-fun b!6843871 () Bool)

(assert (=> b!6843871 (= e!4127393 tp_is_empty!42595)))

(declare-fun b!6843873 () Bool)

(declare-fun tp!1874313 () Bool)

(assert (=> b!6843873 (= e!4127393 tp!1874313)))

(assert (=> b!6843332 (= tp!1874201 e!4127393)))

(declare-fun b!6843874 () Bool)

(declare-fun tp!1874315 () Bool)

(declare-fun tp!1874316 () Bool)

(assert (=> b!6843874 (= e!4127393 (and tp!1874315 tp!1874316))))

(assert (= (and b!6843332 ((_ is ElementMatch!16671) (regTwo!33855 r!7292))) b!6843871))

(assert (= (and b!6843332 ((_ is Concat!25516) (regTwo!33855 r!7292))) b!6843872))

(assert (= (and b!6843332 ((_ is Star!16671) (regTwo!33855 r!7292))) b!6843873))

(assert (= (and b!6843332 ((_ is Union!16671) (regTwo!33855 r!7292))) b!6843874))

(declare-fun b!6843879 () Bool)

(declare-fun e!4127396 () Bool)

(declare-fun tp!1874319 () Bool)

(assert (=> b!6843879 (= e!4127396 (and tp_is_empty!42595 tp!1874319))))

(assert (=> b!6843331 (= tp!1874194 e!4127396)))

(assert (= (and b!6843331 ((_ is Cons!66190) (t!380057 s!2326))) b!6843879))

(declare-fun b_lambda!258099 () Bool)

(assert (= b_lambda!258091 (or b!6843333 b_lambda!258099)))

(declare-fun bs!1829390 () Bool)

(declare-fun d!2151433 () Bool)

(assert (= bs!1829390 (and d!2151433 b!6843333)))

(assert (=> bs!1829390 (= (dynLambda!26448 lambda!386979 lt!2455629) (= (generalisedConcat!2264 (exprs!6555 lt!2455629)) lt!2455564))))

(declare-fun m!7585158 () Bool)

(assert (=> bs!1829390 m!7585158))

(assert (=> d!2151407 d!2151433))

(declare-fun b_lambda!258101 () Bool)

(assert (= b_lambda!258093 (or b!6843333 b_lambda!258101)))

(declare-fun bs!1829391 () Bool)

(declare-fun d!2151435 () Bool)

(assert (= bs!1829391 (and d!2151435 b!6843333)))

(assert (=> bs!1829391 (= (dynLambda!26448 lambda!386979 (h!72637 zl!343)) (= (generalisedConcat!2264 (exprs!6555 (h!72637 zl!343))) lt!2455564))))

(assert (=> bs!1829391 m!7585144))

(assert (=> b!6843748 d!2151435))

(declare-fun b_lambda!258103 () Bool)

(assert (= b_lambda!258097 (or b!6843348 b_lambda!258103)))

(declare-fun bs!1829392 () Bool)

(declare-fun d!2151437 () Bool)

(assert (= bs!1829392 (and d!2151437 b!6843348)))

(declare-fun res!2794193 () Bool)

(declare-fun e!4127397 () Bool)

(assert (=> bs!1829392 (=> (not res!2794193) (not e!4127397))))

(assert (=> bs!1829392 (= res!2794193 (validRegex!8407 (h!72636 lt!2455560)))))

(assert (=> bs!1829392 (= (dynLambda!26449 lambda!386978 (h!72636 lt!2455560)) e!4127397)))

(declare-fun b!6843880 () Bool)

(assert (=> b!6843880 (= e!4127397 (matchR!8854 (h!72636 lt!2455560) s!2326))))

(assert (= (and bs!1829392 res!2794193) b!6843880))

(declare-fun m!7585160 () Bool)

(assert (=> bs!1829392 m!7585160))

(declare-fun m!7585162 () Bool)

(assert (=> b!6843880 m!7585162))

(assert (=> b!6843774 d!2151437))

(declare-fun b_lambda!258105 () Bool)

(assert (= b_lambda!258095 (or b!6843348 b_lambda!258105)))

(declare-fun bs!1829393 () Bool)

(declare-fun d!2151439 () Bool)

(assert (= bs!1829393 (and d!2151439 b!6843348)))

(declare-fun res!2794194 () Bool)

(declare-fun e!4127398 () Bool)

(assert (=> bs!1829393 (=> (not res!2794194) (not e!4127398))))

(assert (=> bs!1829393 (= res!2794194 (validRegex!8407 lt!2455637))))

(assert (=> bs!1829393 (= (dynLambda!26449 lambda!386978 lt!2455637) e!4127398)))

(declare-fun b!6843881 () Bool)

(assert (=> b!6843881 (= e!4127398 (matchR!8854 lt!2455637 s!2326))))

(assert (= (and bs!1829393 res!2794194) b!6843881))

(declare-fun m!7585164 () Bool)

(assert (=> bs!1829393 m!7585164))

(declare-fun m!7585166 () Bool)

(assert (=> b!6843881 m!7585166))

(assert (=> d!2151411 d!2151439))

(check-sat (not b!6843869) (not b!6843879) (not b_lambda!258099) (not bm!623228) (not bm!623206) (not b!6843860) (not b!6843556) (not d!2151411) (not bm!623215) (not b!6843847) (not b!6843870) (not bm!623216) (not d!2151419) (not d!2151423) (not b!6843549) (not b!6843846) (not bm!623214) (not d!2151425) (not b!6843701) (not b!6843806) (not d!2151397) (not b!6843849) (not b!6843749) (not b!6843854) (not b!6843832) (not b!6843853) (not b!6843714) (not b!6843850) (not b!6843716) (not d!2151427) (not bm!623227) (not b!6843773) (not b!6843771) (not b!6843560) (not b!6843872) (not b!6843719) (not bs!1829391) (not d!2151421) tp_is_empty!42595 (not b!6843868) (not bm!623224) (not d!2151417) (not b!6843880) (not b!6843851) (not b!6843815) (not b!6843758) (not b!6843702) (not b!6843550) (not b!6843865) (not setNonEmpty!47065) (not b!6843558) (not d!2151415) (not b_lambda!258101) (not d!2151409) (not b!6843775) (not b!6843718) (not bm!623225) (not d!2151405) (not b!6843866) (not b!6843881) (not b!6843855) (not d!2151407) (not b!6843833) (not b!6843873) (not bs!1829392) (not b!6843707) (not b!6843820) (not b!6843708) (not b_lambda!258103) (not d!2151401) (not b!6843750) (not d!2151361) (not b_lambda!258105) (not bs!1829390) (not b!6843874) (not d!2151395) (not b!6843561) (not b!6843726) (not b!6843747) (not b!6843798) (not b!6843845) (not d!2151403) (not bs!1829393) (not b!6843734))
(check-sat)
(get-model)

(declare-fun b!6844328 () Bool)

(declare-fun e!4127653 () Bool)

(declare-fun e!4127659 () Bool)

(assert (=> b!6844328 (= e!4127653 e!4127659)))

(declare-fun c!1274179 () Bool)

(assert (=> b!6844328 (= c!1274179 ((_ is Star!16671) (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))))))

(declare-fun b!6844329 () Bool)

(declare-fun e!4127654 () Bool)

(declare-fun call!623279 () Bool)

(assert (=> b!6844329 (= e!4127654 call!623279)))

(declare-fun b!6844330 () Bool)

(declare-fun res!2794332 () Bool)

(declare-fun e!4127658 () Bool)

(assert (=> b!6844330 (=> (not res!2794332) (not e!4127658))))

(declare-fun call!623281 () Bool)

(assert (=> b!6844330 (= res!2794332 call!623281)))

(declare-fun e!4127657 () Bool)

(assert (=> b!6844330 (= e!4127657 e!4127658)))

(declare-fun b!6844331 () Bool)

(assert (=> b!6844331 (= e!4127659 e!4127654)))

(declare-fun res!2794336 () Bool)

(assert (=> b!6844331 (= res!2794336 (not (nullable!6636 (reg!17000 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))))))))

(assert (=> b!6844331 (=> (not res!2794336) (not e!4127654))))

(declare-fun b!6844332 () Bool)

(declare-fun e!4127656 () Bool)

(declare-fun e!4127655 () Bool)

(assert (=> b!6844332 (= e!4127656 e!4127655)))

(declare-fun res!2794333 () Bool)

(assert (=> b!6844332 (=> (not res!2794333) (not e!4127655))))

(assert (=> b!6844332 (= res!2794333 call!623281)))

(declare-fun bm!623274 () Bool)

(declare-fun call!623280 () Bool)

(assert (=> bm!623274 (= call!623280 call!623279)))

(declare-fun c!1274180 () Bool)

(declare-fun bm!623275 () Bool)

(assert (=> bm!623275 (= call!623281 (validRegex!8407 (ite c!1274180 (regOne!33855 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))) (regOne!33854 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))))))))

(declare-fun bm!623276 () Bool)

(assert (=> bm!623276 (= call!623279 (validRegex!8407 (ite c!1274179 (reg!17000 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))) (ite c!1274180 (regTwo!33855 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))) (regTwo!33854 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564))))))))))

(declare-fun d!2151573 () Bool)

(declare-fun res!2794335 () Bool)

(assert (=> d!2151573 (=> res!2794335 e!4127653)))

(assert (=> d!2151573 (= res!2794335 ((_ is ElementMatch!16671) (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))))))

(assert (=> d!2151573 (= (validRegex!8407 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))) e!4127653)))

(declare-fun b!6844333 () Bool)

(assert (=> b!6844333 (= e!4127659 e!4127657)))

(assert (=> b!6844333 (= c!1274180 ((_ is Union!16671) (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))))))

(declare-fun b!6844334 () Bool)

(assert (=> b!6844334 (= e!4127655 call!623280)))

(declare-fun b!6844335 () Bool)

(assert (=> b!6844335 (= e!4127658 call!623280)))

(declare-fun b!6844336 () Bool)

(declare-fun res!2794334 () Bool)

(assert (=> b!6844336 (=> res!2794334 e!4127656)))

(assert (=> b!6844336 (= res!2794334 (not ((_ is Concat!25516) (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564))))))))

(assert (=> b!6844336 (= e!4127657 e!4127656)))

(assert (= (and d!2151573 (not res!2794335)) b!6844328))

(assert (= (and b!6844328 c!1274179) b!6844331))

(assert (= (and b!6844328 (not c!1274179)) b!6844333))

(assert (= (and b!6844331 res!2794336) b!6844329))

(assert (= (and b!6844333 c!1274180) b!6844330))

(assert (= (and b!6844333 (not c!1274180)) b!6844336))

(assert (= (and b!6844330 res!2794332) b!6844335))

(assert (= (and b!6844336 (not res!2794334)) b!6844332))

(assert (= (and b!6844332 res!2794333) b!6844334))

(assert (= (or b!6844335 b!6844334) bm!623274))

(assert (= (or b!6844330 b!6844332) bm!623275))

(assert (= (or b!6844329 bm!623274) bm!623276))

(declare-fun m!7585474 () Bool)

(assert (=> b!6844331 m!7585474))

(declare-fun m!7585476 () Bool)

(assert (=> bm!623275 m!7585476))

(declare-fun m!7585478 () Bool)

(assert (=> bm!623276 m!7585478))

(assert (=> bm!623228 d!2151573))

(declare-fun b!6844337 () Bool)

(declare-fun e!4127665 () Bool)

(assert (=> b!6844337 (= e!4127665 (matchR!8854 (derivativeStep!5319 (h!72636 lt!2455560) (head!13721 s!2326)) (tail!12800 s!2326)))))

(declare-fun b!6844338 () Bool)

(declare-fun e!4127663 () Bool)

(assert (=> b!6844338 (= e!4127663 (= (head!13721 s!2326) (c!1273977 (h!72636 lt!2455560))))))

(declare-fun b!6844339 () Bool)

(declare-fun e!4127666 () Bool)

(declare-fun e!4127662 () Bool)

(assert (=> b!6844339 (= e!4127666 e!4127662)))

(declare-fun c!1274182 () Bool)

(assert (=> b!6844339 (= c!1274182 ((_ is EmptyLang!16671) (h!72636 lt!2455560)))))

(declare-fun b!6844340 () Bool)

(declare-fun lt!2455677 () Bool)

(assert (=> b!6844340 (= e!4127662 (not lt!2455677))))

(declare-fun b!6844341 () Bool)

(declare-fun e!4127660 () Bool)

(declare-fun e!4127664 () Bool)

(assert (=> b!6844341 (= e!4127660 e!4127664)))

(declare-fun res!2794337 () Bool)

(assert (=> b!6844341 (=> (not res!2794337) (not e!4127664))))

(assert (=> b!6844341 (= res!2794337 (not lt!2455677))))

(declare-fun bm!623277 () Bool)

(declare-fun call!623282 () Bool)

(assert (=> bm!623277 (= call!623282 (isEmpty!38565 s!2326))))

(declare-fun b!6844342 () Bool)

(declare-fun e!4127661 () Bool)

(assert (=> b!6844342 (= e!4127664 e!4127661)))

(declare-fun res!2794339 () Bool)

(assert (=> b!6844342 (=> res!2794339 e!4127661)))

(assert (=> b!6844342 (= res!2794339 call!623282)))

(declare-fun b!6844343 () Bool)

(assert (=> b!6844343 (= e!4127666 (= lt!2455677 call!623282))))

(declare-fun b!6844344 () Bool)

(declare-fun res!2794341 () Bool)

(assert (=> b!6844344 (=> res!2794341 e!4127661)))

(assert (=> b!6844344 (= res!2794341 (not (isEmpty!38565 (tail!12800 s!2326))))))

(declare-fun b!6844345 () Bool)

(declare-fun res!2794344 () Bool)

(assert (=> b!6844345 (=> (not res!2794344) (not e!4127663))))

(assert (=> b!6844345 (= res!2794344 (not call!623282))))

(declare-fun d!2151575 () Bool)

(assert (=> d!2151575 e!4127666))

(declare-fun c!1274181 () Bool)

(assert (=> d!2151575 (= c!1274181 ((_ is EmptyExpr!16671) (h!72636 lt!2455560)))))

(assert (=> d!2151575 (= lt!2455677 e!4127665)))

(declare-fun c!1274183 () Bool)

(assert (=> d!2151575 (= c!1274183 (isEmpty!38565 s!2326))))

(assert (=> d!2151575 (validRegex!8407 (h!72636 lt!2455560))))

(assert (=> d!2151575 (= (matchR!8854 (h!72636 lt!2455560) s!2326) lt!2455677)))

(declare-fun b!6844346 () Bool)

(assert (=> b!6844346 (= e!4127661 (not (= (head!13721 s!2326) (c!1273977 (h!72636 lt!2455560)))))))

(declare-fun b!6844347 () Bool)

(declare-fun res!2794338 () Bool)

(assert (=> b!6844347 (=> res!2794338 e!4127660)))

(assert (=> b!6844347 (= res!2794338 e!4127663)))

(declare-fun res!2794340 () Bool)

(assert (=> b!6844347 (=> (not res!2794340) (not e!4127663))))

(assert (=> b!6844347 (= res!2794340 lt!2455677)))

(declare-fun b!6844348 () Bool)

(assert (=> b!6844348 (= e!4127665 (nullable!6636 (h!72636 lt!2455560)))))

(declare-fun b!6844349 () Bool)

(declare-fun res!2794342 () Bool)

(assert (=> b!6844349 (=> (not res!2794342) (not e!4127663))))

(assert (=> b!6844349 (= res!2794342 (isEmpty!38565 (tail!12800 s!2326)))))

(declare-fun b!6844350 () Bool)

(declare-fun res!2794343 () Bool)

(assert (=> b!6844350 (=> res!2794343 e!4127660)))

(assert (=> b!6844350 (= res!2794343 (not ((_ is ElementMatch!16671) (h!72636 lt!2455560))))))

(assert (=> b!6844350 (= e!4127662 e!4127660)))

(assert (= (and d!2151575 c!1274183) b!6844348))

(assert (= (and d!2151575 (not c!1274183)) b!6844337))

(assert (= (and d!2151575 c!1274181) b!6844343))

(assert (= (and d!2151575 (not c!1274181)) b!6844339))

(assert (= (and b!6844339 c!1274182) b!6844340))

(assert (= (and b!6844339 (not c!1274182)) b!6844350))

(assert (= (and b!6844350 (not res!2794343)) b!6844347))

(assert (= (and b!6844347 res!2794340) b!6844345))

(assert (= (and b!6844345 res!2794344) b!6844349))

(assert (= (and b!6844349 res!2794342) b!6844338))

(assert (= (and b!6844347 (not res!2794338)) b!6844341))

(assert (= (and b!6844341 res!2794337) b!6844342))

(assert (= (and b!6844342 (not res!2794339)) b!6844344))

(assert (= (and b!6844344 (not res!2794341)) b!6844346))

(assert (= (or b!6844343 b!6844342 b!6844345) bm!623277))

(assert (=> bm!623277 m!7584996))

(assert (=> d!2151575 m!7584996))

(assert (=> d!2151575 m!7585160))

(assert (=> b!6844338 m!7584998))

(assert (=> b!6844349 m!7585000))

(assert (=> b!6844349 m!7585000))

(assert (=> b!6844349 m!7585002))

(declare-fun m!7585480 () Bool)

(assert (=> b!6844348 m!7585480))

(assert (=> b!6844346 m!7584998))

(assert (=> b!6844337 m!7584998))

(assert (=> b!6844337 m!7584998))

(declare-fun m!7585482 () Bool)

(assert (=> b!6844337 m!7585482))

(assert (=> b!6844337 m!7585000))

(assert (=> b!6844337 m!7585482))

(assert (=> b!6844337 m!7585000))

(declare-fun m!7585484 () Bool)

(assert (=> b!6844337 m!7585484))

(assert (=> b!6844344 m!7585000))

(assert (=> b!6844344 m!7585000))

(assert (=> b!6844344 m!7585002))

(assert (=> b!6843880 d!2151575))

(declare-fun d!2151577 () Bool)

(assert (=> d!2151577 (= (head!13721 s!2326) (h!72638 s!2326))))

(assert (=> b!6843716 d!2151577))

(declare-fun d!2151579 () Bool)

(assert (=> d!2151579 (= (isEmpty!38565 (tail!12800 s!2326)) ((_ is Nil!66190) (tail!12800 s!2326)))))

(assert (=> b!6843714 d!2151579))

(declare-fun d!2151581 () Bool)

(assert (=> d!2151581 (= (tail!12800 s!2326) (t!380057 s!2326))))

(assert (=> b!6843714 d!2151581))

(declare-fun d!2151583 () Bool)

(declare-fun nullableFct!2520 (Regex!16671) Bool)

(assert (=> d!2151583 (= (nullable!6636 (reg!17000 lt!2455564)) (nullableFct!2520 (reg!17000 lt!2455564)))))

(declare-fun bs!1829513 () Bool)

(assert (= bs!1829513 d!2151583))

(declare-fun m!7585486 () Bool)

(assert (=> bs!1829513 m!7585486))

(assert (=> b!6843820 d!2151583))

(declare-fun bs!1829514 () Bool)

(declare-fun b!6844355 () Bool)

(assert (= bs!1829514 (and b!6844355 b!6843696)))

(declare-fun lambda!387058 () Int)

(assert (=> bs!1829514 (= (and (= (reg!17000 (regTwo!33855 r!7292)) (reg!17000 r!7292)) (= (regTwo!33855 r!7292) r!7292)) (= lambda!387058 lambda!387012))))

(declare-fun bs!1829515 () Bool)

(assert (= bs!1829515 (and b!6844355 b!6843694)))

(assert (=> bs!1829515 (not (= lambda!387058 lambda!387013))))

(assert (=> b!6844355 true))

(assert (=> b!6844355 true))

(declare-fun bs!1829516 () Bool)

(declare-fun b!6844353 () Bool)

(assert (= bs!1829516 (and b!6844353 b!6843696)))

(declare-fun lambda!387059 () Int)

(assert (=> bs!1829516 (not (= lambda!387059 lambda!387012))))

(declare-fun bs!1829517 () Bool)

(assert (= bs!1829517 (and b!6844353 b!6843694)))

(assert (=> bs!1829517 (= (and (= (regOne!33854 (regTwo!33855 r!7292)) (regOne!33854 r!7292)) (= (regTwo!33854 (regTwo!33855 r!7292)) (regTwo!33854 r!7292))) (= lambda!387059 lambda!387013))))

(declare-fun bs!1829518 () Bool)

(assert (= bs!1829518 (and b!6844353 b!6844355)))

(assert (=> bs!1829518 (not (= lambda!387059 lambda!387058))))

(assert (=> b!6844353 true))

(assert (=> b!6844353 true))

(declare-fun b!6844351 () Bool)

(declare-fun e!4127672 () Bool)

(declare-fun call!623284 () Bool)

(assert (=> b!6844351 (= e!4127672 call!623284)))

(declare-fun b!6844352 () Bool)

(declare-fun e!4127667 () Bool)

(declare-fun e!4127669 () Bool)

(assert (=> b!6844352 (= e!4127667 e!4127669)))

(declare-fun c!1274184 () Bool)

(assert (=> b!6844352 (= c!1274184 ((_ is Star!16671) (regTwo!33855 r!7292)))))

(declare-fun bm!623279 () Bool)

(assert (=> bm!623279 (= call!623284 (isEmpty!38565 s!2326))))

(declare-fun call!623283 () Bool)

(assert (=> b!6844353 (= e!4127669 call!623283)))

(declare-fun b!6844354 () Bool)

(declare-fun e!4127673 () Bool)

(assert (=> b!6844354 (= e!4127673 (= s!2326 (Cons!66190 (c!1273977 (regTwo!33855 r!7292)) Nil!66190)))))

(declare-fun e!4127668 () Bool)

(assert (=> b!6844355 (= e!4127668 call!623283)))

(declare-fun b!6844356 () Bool)

(declare-fun c!1274186 () Bool)

(assert (=> b!6844356 (= c!1274186 ((_ is Union!16671) (regTwo!33855 r!7292)))))

(assert (=> b!6844356 (= e!4127673 e!4127667)))

(declare-fun d!2151585 () Bool)

(declare-fun c!1274185 () Bool)

(assert (=> d!2151585 (= c!1274185 ((_ is EmptyExpr!16671) (regTwo!33855 r!7292)))))

(assert (=> d!2151585 (= (matchRSpec!3772 (regTwo!33855 r!7292) s!2326) e!4127672)))

(declare-fun bm!623278 () Bool)

(assert (=> bm!623278 (= call!623283 (Exists!3735 (ite c!1274184 lambda!387058 lambda!387059)))))

(declare-fun b!6844357 () Bool)

(declare-fun res!2794347 () Bool)

(assert (=> b!6844357 (=> res!2794347 e!4127668)))

(assert (=> b!6844357 (= res!2794347 call!623284)))

(assert (=> b!6844357 (= e!4127669 e!4127668)))

(declare-fun b!6844358 () Bool)

(declare-fun c!1274187 () Bool)

(assert (=> b!6844358 (= c!1274187 ((_ is ElementMatch!16671) (regTwo!33855 r!7292)))))

(declare-fun e!4127670 () Bool)

(assert (=> b!6844358 (= e!4127670 e!4127673)))

(declare-fun b!6844359 () Bool)

(assert (=> b!6844359 (= e!4127672 e!4127670)))

(declare-fun res!2794345 () Bool)

(assert (=> b!6844359 (= res!2794345 (not ((_ is EmptyLang!16671) (regTwo!33855 r!7292))))))

(assert (=> b!6844359 (=> (not res!2794345) (not e!4127670))))

(declare-fun b!6844360 () Bool)

(declare-fun e!4127671 () Bool)

(assert (=> b!6844360 (= e!4127667 e!4127671)))

(declare-fun res!2794346 () Bool)

(assert (=> b!6844360 (= res!2794346 (matchRSpec!3772 (regOne!33855 (regTwo!33855 r!7292)) s!2326))))

(assert (=> b!6844360 (=> res!2794346 e!4127671)))

(declare-fun b!6844361 () Bool)

(assert (=> b!6844361 (= e!4127671 (matchRSpec!3772 (regTwo!33855 (regTwo!33855 r!7292)) s!2326))))

(assert (= (and d!2151585 c!1274185) b!6844351))

(assert (= (and d!2151585 (not c!1274185)) b!6844359))

(assert (= (and b!6844359 res!2794345) b!6844358))

(assert (= (and b!6844358 c!1274187) b!6844354))

(assert (= (and b!6844358 (not c!1274187)) b!6844356))

(assert (= (and b!6844356 c!1274186) b!6844360))

(assert (= (and b!6844356 (not c!1274186)) b!6844352))

(assert (= (and b!6844360 (not res!2794346)) b!6844361))

(assert (= (and b!6844352 c!1274184) b!6844357))

(assert (= (and b!6844352 (not c!1274184)) b!6844353))

(assert (= (and b!6844357 (not res!2794347)) b!6844355))

(assert (= (or b!6844355 b!6844353) bm!623278))

(assert (= (or b!6844351 b!6844357) bm!623279))

(assert (=> bm!623279 m!7584996))

(declare-fun m!7585488 () Bool)

(assert (=> bm!623278 m!7585488))

(declare-fun m!7585490 () Bool)

(assert (=> b!6844360 m!7585490))

(declare-fun m!7585492 () Bool)

(assert (=> b!6844361 m!7585492))

(assert (=> b!6843702 d!2151585))

(assert (=> b!6843558 d!2151577))

(declare-fun bs!1829519 () Bool)

(declare-fun d!2151587 () Bool)

(assert (= bs!1829519 (and d!2151587 d!2151427)))

(declare-fun lambda!387060 () Int)

(assert (=> bs!1829519 (= lambda!387060 lambda!387035)))

(declare-fun bs!1829520 () Bool)

(assert (= bs!1829520 (and d!2151587 d!2151417)))

(assert (=> bs!1829520 (= lambda!387060 lambda!387022)))

(declare-fun bs!1829521 () Bool)

(assert (= bs!1829521 (and d!2151587 d!2151423)))

(assert (=> bs!1829521 (not (= lambda!387060 lambda!387026))))

(declare-fun bs!1829522 () Bool)

(assert (= bs!1829522 (and d!2151587 b!6843348)))

(assert (=> bs!1829522 (not (= lambda!387060 lambda!386978))))

(declare-fun bs!1829523 () Bool)

(assert (= bs!1829523 (and d!2151587 d!2151425)))

(assert (=> bs!1829523 (= lambda!387060 lambda!387031)))

(assert (=> bs!1829523 (not (= lambda!387060 lambda!387032))))

(declare-fun bs!1829524 () Bool)

(assert (= bs!1829524 (and d!2151587 d!2151419)))

(assert (=> bs!1829524 (= lambda!387060 lambda!387023)))

(assert (=> d!2151587 (= (inv!84924 setElem!47065) (forall!15850 (exprs!6555 setElem!47065) lambda!387060))))

(declare-fun bs!1829525 () Bool)

(assert (= bs!1829525 d!2151587))

(declare-fun m!7585494 () Bool)

(assert (=> bs!1829525 m!7585494))

(assert (=> setNonEmpty!47065 d!2151587))

(declare-fun d!2151589 () Bool)

(declare-fun res!2794352 () Bool)

(declare-fun e!4127678 () Bool)

(assert (=> d!2151589 (=> res!2794352 e!4127678)))

(assert (=> d!2151589 (= res!2794352 ((_ is Nil!66188) lt!2455650))))

(assert (=> d!2151589 (= (forall!15850 lt!2455650 lambda!387035) e!4127678)))

(declare-fun b!6844366 () Bool)

(declare-fun e!4127679 () Bool)

(assert (=> b!6844366 (= e!4127678 e!4127679)))

(declare-fun res!2794353 () Bool)

(assert (=> b!6844366 (=> (not res!2794353) (not e!4127679))))

(assert (=> b!6844366 (= res!2794353 (dynLambda!26449 lambda!387035 (h!72636 lt!2455650)))))

(declare-fun b!6844367 () Bool)

(assert (=> b!6844367 (= e!4127679 (forall!15850 (t!380055 lt!2455650) lambda!387035))))

(assert (= (and d!2151589 (not res!2794352)) b!6844366))

(assert (= (and b!6844366 res!2794353) b!6844367))

(declare-fun b_lambda!258151 () Bool)

(assert (=> (not b_lambda!258151) (not b!6844366)))

(declare-fun m!7585496 () Bool)

(assert (=> b!6844366 m!7585496))

(declare-fun m!7585498 () Bool)

(assert (=> b!6844367 m!7585498))

(assert (=> d!2151427 d!2151589))

(declare-fun bs!1829526 () Bool)

(declare-fun d!2151591 () Bool)

(assert (= bs!1829526 (and d!2151591 d!2151427)))

(declare-fun lambda!387063 () Int)

(assert (=> bs!1829526 (= lambda!387063 lambda!387035)))

(declare-fun bs!1829527 () Bool)

(assert (= bs!1829527 (and d!2151591 d!2151417)))

(assert (=> bs!1829527 (= lambda!387063 lambda!387022)))

(declare-fun bs!1829528 () Bool)

(assert (= bs!1829528 (and d!2151591 d!2151423)))

(assert (=> bs!1829528 (not (= lambda!387063 lambda!387026))))

(declare-fun bs!1829529 () Bool)

(assert (= bs!1829529 (and d!2151591 b!6843348)))

(assert (=> bs!1829529 (not (= lambda!387063 lambda!386978))))

(declare-fun bs!1829530 () Bool)

(assert (= bs!1829530 (and d!2151591 d!2151425)))

(assert (=> bs!1829530 (= lambda!387063 lambda!387031)))

(assert (=> bs!1829530 (not (= lambda!387063 lambda!387032))))

(declare-fun bs!1829531 () Bool)

(assert (= bs!1829531 (and d!2151591 d!2151419)))

(assert (=> bs!1829531 (= lambda!387063 lambda!387023)))

(declare-fun bs!1829532 () Bool)

(assert (= bs!1829532 (and d!2151591 d!2151587)))

(assert (=> bs!1829532 (= lambda!387063 lambda!387060)))

(declare-fun b!6844388 () Bool)

(declare-fun e!4127693 () Regex!16671)

(assert (=> b!6844388 (= e!4127693 (Concat!25516 (h!72636 (exprs!6555 (h!72637 zl!343))) (generalisedConcat!2264 (t!380055 (exprs!6555 (h!72637 zl!343))))))))

(declare-fun b!6844389 () Bool)

(declare-fun e!4127695 () Bool)

(declare-fun lt!2455680 () Regex!16671)

(declare-fun isConcat!1526 (Regex!16671) Bool)

(assert (=> b!6844389 (= e!4127695 (isConcat!1526 lt!2455680))))

(declare-fun b!6844390 () Bool)

(declare-fun e!4127697 () Regex!16671)

(assert (=> b!6844390 (= e!4127697 (h!72636 (exprs!6555 (h!72637 zl!343))))))

(declare-fun b!6844391 () Bool)

(assert (=> b!6844391 (= e!4127697 e!4127693)))

(declare-fun c!1274198 () Bool)

(assert (=> b!6844391 (= c!1274198 ((_ is Cons!66188) (exprs!6555 (h!72637 zl!343))))))

(declare-fun b!6844392 () Bool)

(declare-fun e!4127694 () Bool)

(declare-fun isEmptyExpr!2003 (Regex!16671) Bool)

(assert (=> b!6844392 (= e!4127694 (isEmptyExpr!2003 lt!2455680))))

(declare-fun b!6844393 () Bool)

(declare-fun e!4127696 () Bool)

(declare-fun isEmpty!38567 (List!66312) Bool)

(assert (=> b!6844393 (= e!4127696 (isEmpty!38567 (t!380055 (exprs!6555 (h!72637 zl!343)))))))

(declare-fun e!4127692 () Bool)

(assert (=> d!2151591 e!4127692))

(declare-fun res!2794359 () Bool)

(assert (=> d!2151591 (=> (not res!2794359) (not e!4127692))))

(assert (=> d!2151591 (= res!2794359 (validRegex!8407 lt!2455680))))

(assert (=> d!2151591 (= lt!2455680 e!4127697)))

(declare-fun c!1274196 () Bool)

(assert (=> d!2151591 (= c!1274196 e!4127696)))

(declare-fun res!2794358 () Bool)

(assert (=> d!2151591 (=> (not res!2794358) (not e!4127696))))

(assert (=> d!2151591 (= res!2794358 ((_ is Cons!66188) (exprs!6555 (h!72637 zl!343))))))

(assert (=> d!2151591 (forall!15850 (exprs!6555 (h!72637 zl!343)) lambda!387063)))

(assert (=> d!2151591 (= (generalisedConcat!2264 (exprs!6555 (h!72637 zl!343))) lt!2455680)))

(declare-fun b!6844394 () Bool)

(assert (=> b!6844394 (= e!4127693 EmptyExpr!16671)))

(declare-fun b!6844395 () Bool)

(assert (=> b!6844395 (= e!4127692 e!4127694)))

(declare-fun c!1274197 () Bool)

(assert (=> b!6844395 (= c!1274197 (isEmpty!38567 (exprs!6555 (h!72637 zl!343))))))

(declare-fun b!6844396 () Bool)

(assert (=> b!6844396 (= e!4127695 (= lt!2455680 (head!13723 (exprs!6555 (h!72637 zl!343)))))))

(declare-fun b!6844397 () Bool)

(assert (=> b!6844397 (= e!4127694 e!4127695)))

(declare-fun c!1274199 () Bool)

(declare-fun tail!12802 (List!66312) List!66312)

(assert (=> b!6844397 (= c!1274199 (isEmpty!38567 (tail!12802 (exprs!6555 (h!72637 zl!343)))))))

(assert (= (and d!2151591 res!2794358) b!6844393))

(assert (= (and d!2151591 c!1274196) b!6844390))

(assert (= (and d!2151591 (not c!1274196)) b!6844391))

(assert (= (and b!6844391 c!1274198) b!6844388))

(assert (= (and b!6844391 (not c!1274198)) b!6844394))

(assert (= (and d!2151591 res!2794359) b!6844395))

(assert (= (and b!6844395 c!1274197) b!6844392))

(assert (= (and b!6844395 (not c!1274197)) b!6844397))

(assert (= (and b!6844397 c!1274199) b!6844396))

(assert (= (and b!6844397 (not c!1274199)) b!6844389))

(declare-fun m!7585500 () Bool)

(assert (=> d!2151591 m!7585500))

(declare-fun m!7585502 () Bool)

(assert (=> d!2151591 m!7585502))

(declare-fun m!7585504 () Bool)

(assert (=> b!6844396 m!7585504))

(declare-fun m!7585506 () Bool)

(assert (=> b!6844397 m!7585506))

(assert (=> b!6844397 m!7585506))

(declare-fun m!7585508 () Bool)

(assert (=> b!6844397 m!7585508))

(declare-fun m!7585510 () Bool)

(assert (=> b!6844389 m!7585510))

(declare-fun m!7585512 () Bool)

(assert (=> b!6844392 m!7585512))

(declare-fun m!7585514 () Bool)

(assert (=> b!6844388 m!7585514))

(declare-fun m!7585516 () Bool)

(assert (=> b!6844393 m!7585516))

(declare-fun m!7585518 () Bool)

(assert (=> b!6844395 m!7585518))

(assert (=> b!6843815 d!2151591))

(declare-fun bs!1829533 () Bool)

(declare-fun d!2151593 () Bool)

(assert (= bs!1829533 (and d!2151593 d!2151591)))

(declare-fun lambda!387064 () Int)

(assert (=> bs!1829533 (= lambda!387064 lambda!387063)))

(declare-fun bs!1829534 () Bool)

(assert (= bs!1829534 (and d!2151593 d!2151427)))

(assert (=> bs!1829534 (= lambda!387064 lambda!387035)))

(declare-fun bs!1829535 () Bool)

(assert (= bs!1829535 (and d!2151593 d!2151417)))

(assert (=> bs!1829535 (= lambda!387064 lambda!387022)))

(declare-fun bs!1829536 () Bool)

(assert (= bs!1829536 (and d!2151593 d!2151423)))

(assert (=> bs!1829536 (not (= lambda!387064 lambda!387026))))

(declare-fun bs!1829537 () Bool)

(assert (= bs!1829537 (and d!2151593 b!6843348)))

(assert (=> bs!1829537 (not (= lambda!387064 lambda!386978))))

(declare-fun bs!1829538 () Bool)

(assert (= bs!1829538 (and d!2151593 d!2151425)))

(assert (=> bs!1829538 (= lambda!387064 lambda!387031)))

(assert (=> bs!1829538 (not (= lambda!387064 lambda!387032))))

(declare-fun bs!1829539 () Bool)

(assert (= bs!1829539 (and d!2151593 d!2151419)))

(assert (=> bs!1829539 (= lambda!387064 lambda!387023)))

(declare-fun bs!1829540 () Bool)

(assert (= bs!1829540 (and d!2151593 d!2151587)))

(assert (=> bs!1829540 (= lambda!387064 lambda!387060)))

(declare-fun lt!2455681 () List!66312)

(assert (=> d!2151593 (forall!15850 lt!2455681 lambda!387064)))

(declare-fun e!4127698 () List!66312)

(assert (=> d!2151593 (= lt!2455681 e!4127698)))

(declare-fun c!1274200 () Bool)

(assert (=> d!2151593 (= c!1274200 ((_ is Cons!66189) (t!380056 zl!343)))))

(assert (=> d!2151593 (= (unfocusZipperList!2088 (t!380056 zl!343)) lt!2455681)))

(declare-fun b!6844398 () Bool)

(assert (=> b!6844398 (= e!4127698 (Cons!66188 (generalisedConcat!2264 (exprs!6555 (h!72637 (t!380056 zl!343)))) (unfocusZipperList!2088 (t!380056 (t!380056 zl!343)))))))

(declare-fun b!6844399 () Bool)

(assert (=> b!6844399 (= e!4127698 Nil!66188)))

(assert (= (and d!2151593 c!1274200) b!6844398))

(assert (= (and d!2151593 (not c!1274200)) b!6844399))

(declare-fun m!7585520 () Bool)

(assert (=> d!2151593 m!7585520))

(declare-fun m!7585522 () Bool)

(assert (=> b!6844398 m!7585522))

(declare-fun m!7585524 () Bool)

(assert (=> b!6844398 m!7585524))

(assert (=> b!6843815 d!2151593))

(assert (=> b!6843556 d!2151579))

(assert (=> b!6843556 d!2151581))

(declare-fun d!2151595 () Bool)

(assert (=> d!2151595 (= (nullable!6636 r!7292) (nullableFct!2520 r!7292))))

(declare-fun bs!1829541 () Bool)

(assert (= bs!1829541 d!2151595))

(declare-fun m!7585526 () Bool)

(assert (=> bs!1829541 m!7585526))

(assert (=> b!6843718 d!2151595))

(declare-fun b!6844400 () Bool)

(declare-fun e!4127699 () Bool)

(declare-fun e!4127705 () Bool)

(assert (=> b!6844400 (= e!4127699 e!4127705)))

(declare-fun c!1274201 () Bool)

(assert (=> b!6844400 (= c!1274201 ((_ is Star!16671) (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))))))

(declare-fun b!6844401 () Bool)

(declare-fun e!4127700 () Bool)

(declare-fun call!623285 () Bool)

(assert (=> b!6844401 (= e!4127700 call!623285)))

(declare-fun b!6844402 () Bool)

(declare-fun res!2794360 () Bool)

(declare-fun e!4127704 () Bool)

(assert (=> b!6844402 (=> (not res!2794360) (not e!4127704))))

(declare-fun call!623287 () Bool)

(assert (=> b!6844402 (= res!2794360 call!623287)))

(declare-fun e!4127703 () Bool)

(assert (=> b!6844402 (= e!4127703 e!4127704)))

(declare-fun b!6844403 () Bool)

(assert (=> b!6844403 (= e!4127705 e!4127700)))

(declare-fun res!2794364 () Bool)

(assert (=> b!6844403 (= res!2794364 (not (nullable!6636 (reg!17000 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))))))))

(assert (=> b!6844403 (=> (not res!2794364) (not e!4127700))))

(declare-fun b!6844404 () Bool)

(declare-fun e!4127702 () Bool)

(declare-fun e!4127701 () Bool)

(assert (=> b!6844404 (= e!4127702 e!4127701)))

(declare-fun res!2794361 () Bool)

(assert (=> b!6844404 (=> (not res!2794361) (not e!4127701))))

(assert (=> b!6844404 (= res!2794361 call!623287)))

(declare-fun bm!623280 () Bool)

(declare-fun call!623286 () Bool)

(assert (=> bm!623280 (= call!623286 call!623285)))

(declare-fun bm!623281 () Bool)

(declare-fun c!1274202 () Bool)

(assert (=> bm!623281 (= call!623287 (validRegex!8407 (ite c!1274202 (regOne!33855 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))) (regOne!33854 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))))))))

(declare-fun bm!623282 () Bool)

(assert (=> bm!623282 (= call!623285 (validRegex!8407 (ite c!1274201 (reg!17000 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))) (ite c!1274202 (regTwo!33855 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))) (regTwo!33854 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292)))))))))

(declare-fun d!2151597 () Bool)

(declare-fun res!2794363 () Bool)

(assert (=> d!2151597 (=> res!2794363 e!4127699)))

(assert (=> d!2151597 (= res!2794363 ((_ is ElementMatch!16671) (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))))))

(assert (=> d!2151597 (= (validRegex!8407 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))) e!4127699)))

(declare-fun b!6844405 () Bool)

(assert (=> b!6844405 (= e!4127705 e!4127703)))

(assert (=> b!6844405 (= c!1274202 ((_ is Union!16671) (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))))))

(declare-fun b!6844406 () Bool)

(assert (=> b!6844406 (= e!4127701 call!623286)))

(declare-fun b!6844407 () Bool)

(assert (=> b!6844407 (= e!4127704 call!623286)))

(declare-fun b!6844408 () Bool)

(declare-fun res!2794362 () Bool)

(assert (=> b!6844408 (=> res!2794362 e!4127702)))

(assert (=> b!6844408 (= res!2794362 (not ((_ is Concat!25516) (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292)))))))

(assert (=> b!6844408 (= e!4127703 e!4127702)))

(assert (= (and d!2151597 (not res!2794363)) b!6844400))

(assert (= (and b!6844400 c!1274201) b!6844403))

(assert (= (and b!6844400 (not c!1274201)) b!6844405))

(assert (= (and b!6844403 res!2794364) b!6844401))

(assert (= (and b!6844405 c!1274202) b!6844402))

(assert (= (and b!6844405 (not c!1274202)) b!6844408))

(assert (= (and b!6844402 res!2794360) b!6844407))

(assert (= (and b!6844408 (not res!2794362)) b!6844404))

(assert (= (and b!6844404 res!2794361) b!6844406))

(assert (= (or b!6844407 b!6844406) bm!623280))

(assert (= (or b!6844402 b!6844404) bm!623281))

(assert (= (or b!6844401 bm!623280) bm!623282))

(declare-fun m!7585528 () Bool)

(assert (=> b!6844403 m!7585528))

(declare-fun m!7585530 () Bool)

(assert (=> bm!623281 m!7585530))

(declare-fun m!7585532 () Bool)

(assert (=> bm!623282 m!7585532))

(assert (=> bm!623224 d!2151597))

(declare-fun bs!1829542 () Bool)

(declare-fun d!2151599 () Bool)

(assert (= bs!1829542 (and d!2151599 d!2151591)))

(declare-fun lambda!387065 () Int)

(assert (=> bs!1829542 (= lambda!387065 lambda!387063)))

(declare-fun bs!1829543 () Bool)

(assert (= bs!1829543 (and d!2151599 d!2151427)))

(assert (=> bs!1829543 (= lambda!387065 lambda!387035)))

(declare-fun bs!1829544 () Bool)

(assert (= bs!1829544 (and d!2151599 d!2151417)))

(assert (=> bs!1829544 (= lambda!387065 lambda!387022)))

(declare-fun bs!1829545 () Bool)

(assert (= bs!1829545 (and d!2151599 d!2151423)))

(assert (=> bs!1829545 (not (= lambda!387065 lambda!387026))))

(declare-fun bs!1829546 () Bool)

(assert (= bs!1829546 (and d!2151599 d!2151593)))

(assert (=> bs!1829546 (= lambda!387065 lambda!387064)))

(declare-fun bs!1829547 () Bool)

(assert (= bs!1829547 (and d!2151599 b!6843348)))

(assert (=> bs!1829547 (not (= lambda!387065 lambda!386978))))

(declare-fun bs!1829548 () Bool)

(assert (= bs!1829548 (and d!2151599 d!2151425)))

(assert (=> bs!1829548 (= lambda!387065 lambda!387031)))

(assert (=> bs!1829548 (not (= lambda!387065 lambda!387032))))

(declare-fun bs!1829549 () Bool)

(assert (= bs!1829549 (and d!2151599 d!2151419)))

(assert (=> bs!1829549 (= lambda!387065 lambda!387023)))

(declare-fun bs!1829550 () Bool)

(assert (= bs!1829550 (and d!2151599 d!2151587)))

(assert (=> bs!1829550 (= lambda!387065 lambda!387060)))

(declare-fun b!6844409 () Bool)

(declare-fun e!4127707 () Regex!16671)

(assert (=> b!6844409 (= e!4127707 (Concat!25516 (h!72636 (exprs!6555 lt!2455629)) (generalisedConcat!2264 (t!380055 (exprs!6555 lt!2455629)))))))

(declare-fun b!6844410 () Bool)

(declare-fun e!4127709 () Bool)

(declare-fun lt!2455682 () Regex!16671)

(assert (=> b!6844410 (= e!4127709 (isConcat!1526 lt!2455682))))

(declare-fun b!6844411 () Bool)

(declare-fun e!4127711 () Regex!16671)

(assert (=> b!6844411 (= e!4127711 (h!72636 (exprs!6555 lt!2455629)))))

(declare-fun b!6844412 () Bool)

(assert (=> b!6844412 (= e!4127711 e!4127707)))

(declare-fun c!1274205 () Bool)

(assert (=> b!6844412 (= c!1274205 ((_ is Cons!66188) (exprs!6555 lt!2455629)))))

(declare-fun b!6844413 () Bool)

(declare-fun e!4127708 () Bool)

(assert (=> b!6844413 (= e!4127708 (isEmptyExpr!2003 lt!2455682))))

(declare-fun b!6844414 () Bool)

(declare-fun e!4127710 () Bool)

(assert (=> b!6844414 (= e!4127710 (isEmpty!38567 (t!380055 (exprs!6555 lt!2455629))))))

(declare-fun e!4127706 () Bool)

(assert (=> d!2151599 e!4127706))

(declare-fun res!2794366 () Bool)

(assert (=> d!2151599 (=> (not res!2794366) (not e!4127706))))

(assert (=> d!2151599 (= res!2794366 (validRegex!8407 lt!2455682))))

(assert (=> d!2151599 (= lt!2455682 e!4127711)))

(declare-fun c!1274203 () Bool)

(assert (=> d!2151599 (= c!1274203 e!4127710)))

(declare-fun res!2794365 () Bool)

(assert (=> d!2151599 (=> (not res!2794365) (not e!4127710))))

(assert (=> d!2151599 (= res!2794365 ((_ is Cons!66188) (exprs!6555 lt!2455629)))))

(assert (=> d!2151599 (forall!15850 (exprs!6555 lt!2455629) lambda!387065)))

(assert (=> d!2151599 (= (generalisedConcat!2264 (exprs!6555 lt!2455629)) lt!2455682)))

(declare-fun b!6844415 () Bool)

(assert (=> b!6844415 (= e!4127707 EmptyExpr!16671)))

(declare-fun b!6844416 () Bool)

(assert (=> b!6844416 (= e!4127706 e!4127708)))

(declare-fun c!1274204 () Bool)

(assert (=> b!6844416 (= c!1274204 (isEmpty!38567 (exprs!6555 lt!2455629)))))

(declare-fun b!6844417 () Bool)

(assert (=> b!6844417 (= e!4127709 (= lt!2455682 (head!13723 (exprs!6555 lt!2455629))))))

(declare-fun b!6844418 () Bool)

(assert (=> b!6844418 (= e!4127708 e!4127709)))

(declare-fun c!1274206 () Bool)

(assert (=> b!6844418 (= c!1274206 (isEmpty!38567 (tail!12802 (exprs!6555 lt!2455629))))))

(assert (= (and d!2151599 res!2794365) b!6844414))

(assert (= (and d!2151599 c!1274203) b!6844411))

(assert (= (and d!2151599 (not c!1274203)) b!6844412))

(assert (= (and b!6844412 c!1274205) b!6844409))

(assert (= (and b!6844412 (not c!1274205)) b!6844415))

(assert (= (and d!2151599 res!2794366) b!6844416))

(assert (= (and b!6844416 c!1274204) b!6844413))

(assert (= (and b!6844416 (not c!1274204)) b!6844418))

(assert (= (and b!6844418 c!1274206) b!6844417))

(assert (= (and b!6844418 (not c!1274206)) b!6844410))

(declare-fun m!7585534 () Bool)

(assert (=> d!2151599 m!7585534))

(declare-fun m!7585536 () Bool)

(assert (=> d!2151599 m!7585536))

(declare-fun m!7585538 () Bool)

(assert (=> b!6844417 m!7585538))

(declare-fun m!7585540 () Bool)

(assert (=> b!6844418 m!7585540))

(assert (=> b!6844418 m!7585540))

(declare-fun m!7585542 () Bool)

(assert (=> b!6844418 m!7585542))

(declare-fun m!7585544 () Bool)

(assert (=> b!6844410 m!7585544))

(declare-fun m!7585546 () Bool)

(assert (=> b!6844413 m!7585546))

(declare-fun m!7585548 () Bool)

(assert (=> b!6844409 m!7585548))

(declare-fun m!7585550 () Bool)

(assert (=> b!6844414 m!7585550))

(declare-fun m!7585552 () Bool)

(assert (=> b!6844416 m!7585552))

(assert (=> bs!1829390 d!2151599))

(assert (=> b!6843708 d!2151577))

(declare-fun b!6844419 () Bool)

(declare-fun e!4127717 () Bool)

(assert (=> b!6844419 (= e!4127717 (matchR!8854 (derivativeStep!5319 lt!2455637 (head!13721 s!2326)) (tail!12800 s!2326)))))

(declare-fun b!6844420 () Bool)

(declare-fun e!4127715 () Bool)

(assert (=> b!6844420 (= e!4127715 (= (head!13721 s!2326) (c!1273977 lt!2455637)))))

(declare-fun b!6844421 () Bool)

(declare-fun e!4127718 () Bool)

(declare-fun e!4127714 () Bool)

(assert (=> b!6844421 (= e!4127718 e!4127714)))

(declare-fun c!1274208 () Bool)

(assert (=> b!6844421 (= c!1274208 ((_ is EmptyLang!16671) lt!2455637))))

(declare-fun b!6844422 () Bool)

(declare-fun lt!2455683 () Bool)

(assert (=> b!6844422 (= e!4127714 (not lt!2455683))))

(declare-fun b!6844423 () Bool)

(declare-fun e!4127712 () Bool)

(declare-fun e!4127716 () Bool)

(assert (=> b!6844423 (= e!4127712 e!4127716)))

(declare-fun res!2794367 () Bool)

(assert (=> b!6844423 (=> (not res!2794367) (not e!4127716))))

(assert (=> b!6844423 (= res!2794367 (not lt!2455683))))

(declare-fun bm!623283 () Bool)

(declare-fun call!623288 () Bool)

(assert (=> bm!623283 (= call!623288 (isEmpty!38565 s!2326))))

(declare-fun b!6844424 () Bool)

(declare-fun e!4127713 () Bool)

(assert (=> b!6844424 (= e!4127716 e!4127713)))

(declare-fun res!2794369 () Bool)

(assert (=> b!6844424 (=> res!2794369 e!4127713)))

(assert (=> b!6844424 (= res!2794369 call!623288)))

(declare-fun b!6844425 () Bool)

(assert (=> b!6844425 (= e!4127718 (= lt!2455683 call!623288))))

(declare-fun b!6844426 () Bool)

(declare-fun res!2794371 () Bool)

(assert (=> b!6844426 (=> res!2794371 e!4127713)))

(assert (=> b!6844426 (= res!2794371 (not (isEmpty!38565 (tail!12800 s!2326))))))

(declare-fun b!6844427 () Bool)

(declare-fun res!2794374 () Bool)

(assert (=> b!6844427 (=> (not res!2794374) (not e!4127715))))

(assert (=> b!6844427 (= res!2794374 (not call!623288))))

(declare-fun d!2151601 () Bool)

(assert (=> d!2151601 e!4127718))

(declare-fun c!1274207 () Bool)

(assert (=> d!2151601 (= c!1274207 ((_ is EmptyExpr!16671) lt!2455637))))

(assert (=> d!2151601 (= lt!2455683 e!4127717)))

(declare-fun c!1274209 () Bool)

(assert (=> d!2151601 (= c!1274209 (isEmpty!38565 s!2326))))

(assert (=> d!2151601 (validRegex!8407 lt!2455637)))

(assert (=> d!2151601 (= (matchR!8854 lt!2455637 s!2326) lt!2455683)))

(declare-fun b!6844428 () Bool)

(assert (=> b!6844428 (= e!4127713 (not (= (head!13721 s!2326) (c!1273977 lt!2455637))))))

(declare-fun b!6844429 () Bool)

(declare-fun res!2794368 () Bool)

(assert (=> b!6844429 (=> res!2794368 e!4127712)))

(assert (=> b!6844429 (= res!2794368 e!4127715)))

(declare-fun res!2794370 () Bool)

(assert (=> b!6844429 (=> (not res!2794370) (not e!4127715))))

(assert (=> b!6844429 (= res!2794370 lt!2455683)))

(declare-fun b!6844430 () Bool)

(assert (=> b!6844430 (= e!4127717 (nullable!6636 lt!2455637))))

(declare-fun b!6844431 () Bool)

(declare-fun res!2794372 () Bool)

(assert (=> b!6844431 (=> (not res!2794372) (not e!4127715))))

(assert (=> b!6844431 (= res!2794372 (isEmpty!38565 (tail!12800 s!2326)))))

(declare-fun b!6844432 () Bool)

(declare-fun res!2794373 () Bool)

(assert (=> b!6844432 (=> res!2794373 e!4127712)))

(assert (=> b!6844432 (= res!2794373 (not ((_ is ElementMatch!16671) lt!2455637)))))

(assert (=> b!6844432 (= e!4127714 e!4127712)))

(assert (= (and d!2151601 c!1274209) b!6844430))

(assert (= (and d!2151601 (not c!1274209)) b!6844419))

(assert (= (and d!2151601 c!1274207) b!6844425))

(assert (= (and d!2151601 (not c!1274207)) b!6844421))

(assert (= (and b!6844421 c!1274208) b!6844422))

(assert (= (and b!6844421 (not c!1274208)) b!6844432))

(assert (= (and b!6844432 (not res!2794373)) b!6844429))

(assert (= (and b!6844429 res!2794370) b!6844427))

(assert (= (and b!6844427 res!2794374) b!6844431))

(assert (= (and b!6844431 res!2794372) b!6844420))

(assert (= (and b!6844429 (not res!2794368)) b!6844423))

(assert (= (and b!6844423 res!2794367) b!6844424))

(assert (= (and b!6844424 (not res!2794369)) b!6844426))

(assert (= (and b!6844426 (not res!2794371)) b!6844428))

(assert (= (or b!6844425 b!6844424 b!6844427) bm!623283))

(assert (=> bm!623283 m!7584996))

(assert (=> d!2151601 m!7584996))

(assert (=> d!2151601 m!7585164))

(assert (=> b!6844420 m!7584998))

(assert (=> b!6844431 m!7585000))

(assert (=> b!6844431 m!7585000))

(assert (=> b!6844431 m!7585002))

(declare-fun m!7585554 () Bool)

(assert (=> b!6844430 m!7585554))

(assert (=> b!6844428 m!7584998))

(assert (=> b!6844419 m!7584998))

(assert (=> b!6844419 m!7584998))

(declare-fun m!7585556 () Bool)

(assert (=> b!6844419 m!7585556))

(assert (=> b!6844419 m!7585000))

(assert (=> b!6844419 m!7585556))

(assert (=> b!6844419 m!7585000))

(declare-fun m!7585558 () Bool)

(assert (=> b!6844419 m!7585558))

(assert (=> b!6844426 m!7585000))

(assert (=> b!6844426 m!7585000))

(assert (=> b!6844426 m!7585002))

(assert (=> b!6843881 d!2151601))

(declare-fun d!2151603 () Bool)

(assert (=> d!2151603 (= (isEmpty!38565 s!2326) ((_ is Nil!66190) s!2326))))

(assert (=> d!2151361 d!2151603))

(assert (=> d!2151361 d!2151429))

(declare-fun d!2151605 () Bool)

(assert (=> d!2151605 (= (head!13722 zl!343) (h!72637 zl!343))))

(assert (=> b!6843749 d!2151605))

(declare-fun d!2151607 () Bool)

(declare-fun lt!2455684 () Bool)

(assert (=> d!2151607 (= lt!2455684 (select (content!12978 lt!2455560) lt!2455637))))

(declare-fun e!4127719 () Bool)

(assert (=> d!2151607 (= lt!2455684 e!4127719)))

(declare-fun res!2794375 () Bool)

(assert (=> d!2151607 (=> (not res!2794375) (not e!4127719))))

(assert (=> d!2151607 (= res!2794375 ((_ is Cons!66188) lt!2455560))))

(assert (=> d!2151607 (= (contains!20320 lt!2455560 lt!2455637) lt!2455684)))

(declare-fun b!6844433 () Bool)

(declare-fun e!4127720 () Bool)

(assert (=> b!6844433 (= e!4127719 e!4127720)))

(declare-fun res!2794376 () Bool)

(assert (=> b!6844433 (=> res!2794376 e!4127720)))

(assert (=> b!6844433 (= res!2794376 (= (h!72636 lt!2455560) lt!2455637))))

(declare-fun b!6844434 () Bool)

(assert (=> b!6844434 (= e!4127720 (contains!20320 (t!380055 lt!2455560) lt!2455637))))

(assert (= (and d!2151607 res!2794375) b!6844433))

(assert (= (and b!6844433 (not res!2794376)) b!6844434))

(assert (=> d!2151607 m!7585098))

(declare-fun m!7585560 () Bool)

(assert (=> d!2151607 m!7585560))

(declare-fun m!7585562 () Bool)

(assert (=> b!6844434 m!7585562))

(assert (=> b!6843773 d!2151607))

(declare-fun bs!1829551 () Bool)

(declare-fun d!2151609 () Bool)

(assert (= bs!1829551 (and d!2151609 b!6843333)))

(declare-fun lambda!387066 () Int)

(assert (=> bs!1829551 (not (= lambda!387066 lambda!386979))))

(declare-fun bs!1829552 () Bool)

(assert (= bs!1829552 (and d!2151609 d!2151401)))

(assert (=> bs!1829552 (= (= lambda!387019 lambda!386979) (= lambda!387066 lambda!387016))))

(declare-fun bs!1829553 () Bool)

(assert (= bs!1829553 (and d!2151609 d!2151403)))

(assert (=> bs!1829553 (not (= lambda!387066 lambda!387019))))

(assert (=> d!2151609 true))

(assert (=> d!2151609 (< (dynLambda!26447 order!27645 lambda!387019) (dynLambda!26447 order!27645 lambda!387066))))

(assert (=> d!2151609 (= (exists!2768 zl!343 lambda!387019) (not (forall!15849 zl!343 lambda!387066)))))

(declare-fun bs!1829554 () Bool)

(assert (= bs!1829554 d!2151609))

(declare-fun m!7585564 () Bool)

(assert (=> bs!1829554 m!7585564))

(assert (=> d!2151403 d!2151609))

(declare-fun bs!1829555 () Bool)

(declare-fun d!2151611 () Bool)

(assert (= bs!1829555 (and d!2151611 b!6843333)))

(declare-fun lambda!387069 () Int)

(assert (=> bs!1829555 (= lambda!387069 lambda!386979)))

(declare-fun bs!1829556 () Bool)

(assert (= bs!1829556 (and d!2151611 d!2151401)))

(assert (=> bs!1829556 (not (= lambda!387069 lambda!387016))))

(declare-fun bs!1829557 () Bool)

(assert (= bs!1829557 (and d!2151611 d!2151403)))

(assert (=> bs!1829557 (= lambda!387069 lambda!387019)))

(declare-fun bs!1829558 () Bool)

(assert (= bs!1829558 (and d!2151611 d!2151609)))

(assert (=> bs!1829558 (not (= lambda!387069 lambda!387066))))

(assert (=> d!2151611 true))

(assert (=> d!2151611 (exists!2768 zl!343 lambda!387069)))

(assert (=> d!2151611 true))

(declare-fun _$46!2027 () Unit!160045)

(assert (=> d!2151611 (= (choose!51037 zl!343 lt!2455564) _$46!2027)))

(declare-fun bs!1829559 () Bool)

(assert (= bs!1829559 d!2151611))

(declare-fun m!7585566 () Bool)

(assert (=> bs!1829559 m!7585566))

(assert (=> d!2151403 d!2151611))

(declare-fun d!2151613 () Bool)

(declare-fun lt!2455685 () Bool)

(assert (=> d!2151613 (= lt!2455685 (select (content!12978 (unfocusZipperList!2088 zl!343)) lt!2455564))))

(declare-fun e!4127721 () Bool)

(assert (=> d!2151613 (= lt!2455685 e!4127721)))

(declare-fun res!2794377 () Bool)

(assert (=> d!2151613 (=> (not res!2794377) (not e!4127721))))

(assert (=> d!2151613 (= res!2794377 ((_ is Cons!66188) (unfocusZipperList!2088 zl!343)))))

(assert (=> d!2151613 (= (contains!20320 (unfocusZipperList!2088 zl!343) lt!2455564) lt!2455685)))

(declare-fun b!6844435 () Bool)

(declare-fun e!4127722 () Bool)

(assert (=> b!6844435 (= e!4127721 e!4127722)))

(declare-fun res!2794378 () Bool)

(assert (=> b!6844435 (=> res!2794378 e!4127722)))

(assert (=> b!6844435 (= res!2794378 (= (h!72636 (unfocusZipperList!2088 zl!343)) lt!2455564))))

(declare-fun b!6844436 () Bool)

(assert (=> b!6844436 (= e!4127722 (contains!20320 (t!380055 (unfocusZipperList!2088 zl!343)) lt!2455564))))

(assert (= (and d!2151613 res!2794377) b!6844435))

(assert (= (and b!6844435 (not res!2794378)) b!6844436))

(assert (=> d!2151613 m!7584902))

(declare-fun m!7585568 () Bool)

(assert (=> d!2151613 m!7585568))

(declare-fun m!7585570 () Bool)

(assert (=> d!2151613 m!7585570))

(declare-fun m!7585572 () Bool)

(assert (=> b!6844436 m!7585572))

(assert (=> d!2151403 d!2151613))

(assert (=> d!2151403 d!2151427))

(declare-fun d!2151615 () Bool)

(declare-fun e!4127726 () Bool)

(assert (=> d!2151615 e!4127726))

(declare-fun res!2794380 () Bool)

(assert (=> d!2151615 (=> (not res!2794380) (not e!4127726))))

(declare-fun lt!2455687 () Context!12110)

(assert (=> d!2151615 (= res!2794380 (dynLambda!26448 lambda!386979 lt!2455687))))

(declare-fun e!4127724 () Context!12110)

(assert (=> d!2151615 (= lt!2455687 e!4127724)))

(declare-fun c!1274212 () Bool)

(declare-fun e!4127725 () Bool)

(assert (=> d!2151615 (= c!1274212 e!4127725)))

(declare-fun res!2794379 () Bool)

(assert (=> d!2151615 (=> (not res!2794379) (not e!4127725))))

(assert (=> d!2151615 (= res!2794379 ((_ is Cons!66189) (t!380056 zl!343)))))

(assert (=> d!2151615 (exists!2768 (t!380056 zl!343) lambda!386979)))

(assert (=> d!2151615 (= (getWitness!938 (t!380056 zl!343) lambda!386979) lt!2455687)))

(declare-fun b!6844437 () Bool)

(declare-fun e!4127723 () Context!12110)

(assert (=> b!6844437 (= e!4127723 (getWitness!938 (t!380056 (t!380056 zl!343)) lambda!386979))))

(declare-fun b!6844438 () Bool)

(assert (=> b!6844438 (= e!4127725 (dynLambda!26448 lambda!386979 (h!72637 (t!380056 zl!343))))))

(declare-fun b!6844439 () Bool)

(declare-fun lt!2455686 () Unit!160045)

(declare-fun Unit!160053 () Unit!160045)

(assert (=> b!6844439 (= lt!2455686 Unit!160053)))

(assert (=> b!6844439 false))

(assert (=> b!6844439 (= e!4127723 (head!13722 (t!380056 zl!343)))))

(declare-fun b!6844440 () Bool)

(assert (=> b!6844440 (= e!4127726 (contains!20321 (t!380056 zl!343) lt!2455687))))

(declare-fun b!6844441 () Bool)

(assert (=> b!6844441 (= e!4127724 e!4127723)))

(declare-fun c!1274213 () Bool)

(assert (=> b!6844441 (= c!1274213 ((_ is Cons!66189) (t!380056 zl!343)))))

(declare-fun b!6844442 () Bool)

(assert (=> b!6844442 (= e!4127724 (h!72637 (t!380056 zl!343)))))

(assert (= (and d!2151615 res!2794379) b!6844438))

(assert (= (and d!2151615 c!1274212) b!6844442))

(assert (= (and d!2151615 (not c!1274212)) b!6844441))

(assert (= (and b!6844441 c!1274213) b!6844437))

(assert (= (and b!6844441 (not c!1274213)) b!6844439))

(assert (= (and d!2151615 res!2794380) b!6844440))

(declare-fun b_lambda!258153 () Bool)

(assert (=> (not b_lambda!258153) (not d!2151615)))

(declare-fun b_lambda!258155 () Bool)

(assert (=> (not b_lambda!258155) (not b!6844438)))

(declare-fun m!7585574 () Bool)

(assert (=> d!2151615 m!7585574))

(declare-fun m!7585576 () Bool)

(assert (=> d!2151615 m!7585576))

(declare-fun m!7585578 () Bool)

(assert (=> b!6844437 m!7585578))

(declare-fun m!7585580 () Bool)

(assert (=> b!6844438 m!7585580))

(declare-fun m!7585582 () Bool)

(assert (=> b!6844439 m!7585582))

(declare-fun m!7585584 () Bool)

(assert (=> b!6844440 m!7585584))

(assert (=> b!6843747 d!2151615))

(declare-fun d!2151617 () Bool)

(assert (=> d!2151617 (= (head!13723 lt!2455560) (h!72636 lt!2455560))))

(assert (=> b!6843771 d!2151617))

(declare-fun d!2151619 () Bool)

(declare-fun c!1274216 () Bool)

(assert (=> d!2151619 (= c!1274216 ((_ is Nil!66188) lt!2455560))))

(declare-fun e!4127729 () (InoxSet Regex!16671))

(assert (=> d!2151619 (= (content!12978 lt!2455560) e!4127729)))

(declare-fun b!6844447 () Bool)

(assert (=> b!6844447 (= e!4127729 ((as const (Array Regex!16671 Bool)) false))))

(declare-fun b!6844448 () Bool)

(assert (=> b!6844448 (= e!4127729 ((_ map or) (store ((as const (Array Regex!16671 Bool)) false) (h!72636 lt!2455560) true) (content!12978 (t!380055 lt!2455560))))))

(assert (= (and d!2151619 c!1274216) b!6844447))

(assert (= (and d!2151619 (not c!1274216)) b!6844448))

(declare-fun m!7585586 () Bool)

(assert (=> b!6844448 m!7585586))

(declare-fun m!7585588 () Bool)

(assert (=> b!6844448 m!7585588))

(assert (=> d!2151409 d!2151619))

(assert (=> d!2151425 d!2151395))

(declare-fun bs!1829560 () Bool)

(declare-fun d!2151621 () Bool)

(assert (= bs!1829560 (and d!2151621 d!2151591)))

(declare-fun lambda!387070 () Int)

(assert (=> bs!1829560 (not (= lambda!387070 lambda!387063))))

(declare-fun bs!1829561 () Bool)

(assert (= bs!1829561 (and d!2151621 d!2151427)))

(assert (=> bs!1829561 (not (= lambda!387070 lambda!387035))))

(declare-fun bs!1829562 () Bool)

(assert (= bs!1829562 (and d!2151621 d!2151417)))

(assert (=> bs!1829562 (not (= lambda!387070 lambda!387022))))

(declare-fun bs!1829563 () Bool)

(assert (= bs!1829563 (and d!2151621 d!2151423)))

(assert (=> bs!1829563 (= (= lambda!387032 lambda!386978) (= lambda!387070 lambda!387026))))

(declare-fun bs!1829564 () Bool)

(assert (= bs!1829564 (and d!2151621 b!6843348)))

(assert (=> bs!1829564 (not (= lambda!387070 lambda!386978))))

(declare-fun bs!1829565 () Bool)

(assert (= bs!1829565 (and d!2151621 d!2151425)))

(assert (=> bs!1829565 (not (= lambda!387070 lambda!387031))))

(assert (=> bs!1829565 (not (= lambda!387070 lambda!387032))))

(declare-fun bs!1829566 () Bool)

(assert (= bs!1829566 (and d!2151621 d!2151599)))

(assert (=> bs!1829566 (not (= lambda!387070 lambda!387065))))

(declare-fun bs!1829567 () Bool)

(assert (= bs!1829567 (and d!2151621 d!2151593)))

(assert (=> bs!1829567 (not (= lambda!387070 lambda!387064))))

(declare-fun bs!1829568 () Bool)

(assert (= bs!1829568 (and d!2151621 d!2151419)))

(assert (=> bs!1829568 (not (= lambda!387070 lambda!387023))))

(declare-fun bs!1829569 () Bool)

(assert (= bs!1829569 (and d!2151621 d!2151587)))

(assert (=> bs!1829569 (not (= lambda!387070 lambda!387060))))

(assert (=> d!2151621 true))

(assert (=> d!2151621 (< (dynLambda!26450 order!27647 lambda!387032) (dynLambda!26450 order!27647 lambda!387070))))

(assert (=> d!2151621 (= (exists!2769 lt!2455560 lambda!387032) (not (forall!15850 lt!2455560 lambda!387070)))))

(declare-fun bs!1829570 () Bool)

(assert (= bs!1829570 d!2151621))

(declare-fun m!7585590 () Bool)

(assert (=> bs!1829570 m!7585590))

(assert (=> d!2151425 d!2151621))

(declare-fun bs!1829571 () Bool)

(declare-fun d!2151623 () Bool)

(assert (= bs!1829571 (and d!2151623 d!2151591)))

(declare-fun lambda!387073 () Int)

(assert (=> bs!1829571 (not (= lambda!387073 lambda!387063))))

(declare-fun bs!1829572 () Bool)

(assert (= bs!1829572 (and d!2151623 d!2151427)))

(assert (=> bs!1829572 (not (= lambda!387073 lambda!387035))))

(declare-fun bs!1829573 () Bool)

(assert (= bs!1829573 (and d!2151623 d!2151417)))

(assert (=> bs!1829573 (not (= lambda!387073 lambda!387022))))

(declare-fun bs!1829574 () Bool)

(assert (= bs!1829574 (and d!2151623 d!2151621)))

(assert (=> bs!1829574 (not (= lambda!387073 lambda!387070))))

(declare-fun bs!1829575 () Bool)

(assert (= bs!1829575 (and d!2151623 d!2151423)))

(assert (=> bs!1829575 (not (= lambda!387073 lambda!387026))))

(declare-fun bs!1829576 () Bool)

(assert (= bs!1829576 (and d!2151623 b!6843348)))

(assert (=> bs!1829576 (= lambda!387073 lambda!386978)))

(declare-fun bs!1829577 () Bool)

(assert (= bs!1829577 (and d!2151623 d!2151425)))

(assert (=> bs!1829577 (not (= lambda!387073 lambda!387031))))

(assert (=> bs!1829577 (= lambda!387073 lambda!387032)))

(declare-fun bs!1829578 () Bool)

(assert (= bs!1829578 (and d!2151623 d!2151599)))

(assert (=> bs!1829578 (not (= lambda!387073 lambda!387065))))

(declare-fun bs!1829579 () Bool)

(assert (= bs!1829579 (and d!2151623 d!2151593)))

(assert (=> bs!1829579 (not (= lambda!387073 lambda!387064))))

(declare-fun bs!1829580 () Bool)

(assert (= bs!1829580 (and d!2151623 d!2151419)))

(assert (=> bs!1829580 (not (= lambda!387073 lambda!387023))))

(declare-fun bs!1829581 () Bool)

(assert (= bs!1829581 (and d!2151623 d!2151587)))

(assert (=> bs!1829581 (not (= lambda!387073 lambda!387060))))

(assert (=> d!2151623 true))

(assert (=> d!2151623 (= (matchR!8854 r!7292 s!2326) (exists!2769 lt!2455560 lambda!387073))))

(assert (=> d!2151623 true))

(declare-fun _$85!191 () Unit!160045)

(assert (=> d!2151623 (= (choose!51039 r!7292 lt!2455560 s!2326) _$85!191)))

(declare-fun bs!1829582 () Bool)

(assert (= bs!1829582 d!2151623))

(assert (=> bs!1829582 m!7584916))

(declare-fun m!7585592 () Bool)

(assert (=> bs!1829582 m!7585592))

(assert (=> d!2151425 d!2151623))

(declare-fun d!2151625 () Bool)

(declare-fun res!2794383 () Bool)

(declare-fun e!4127732 () Bool)

(assert (=> d!2151625 (=> res!2794383 e!4127732)))

(assert (=> d!2151625 (= res!2794383 ((_ is Nil!66188) lt!2455560))))

(assert (=> d!2151625 (= (forall!15850 lt!2455560 lambda!387031) e!4127732)))

(declare-fun b!6844451 () Bool)

(declare-fun e!4127733 () Bool)

(assert (=> b!6844451 (= e!4127732 e!4127733)))

(declare-fun res!2794384 () Bool)

(assert (=> b!6844451 (=> (not res!2794384) (not e!4127733))))

(assert (=> b!6844451 (= res!2794384 (dynLambda!26449 lambda!387031 (h!72636 lt!2455560)))))

(declare-fun b!6844452 () Bool)

(assert (=> b!6844452 (= e!4127733 (forall!15850 (t!380055 lt!2455560) lambda!387031))))

(assert (= (and d!2151625 (not res!2794383)) b!6844451))

(assert (= (and b!6844451 res!2794384) b!6844452))

(declare-fun b_lambda!258157 () Bool)

(assert (=> (not b_lambda!258157) (not b!6844451)))

(declare-fun m!7585594 () Bool)

(assert (=> b!6844451 m!7585594))

(declare-fun m!7585596 () Bool)

(assert (=> b!6844452 m!7585596))

(assert (=> d!2151425 d!2151625))

(declare-fun d!2151627 () Bool)

(assert (=> d!2151627 (= (nullable!6636 lt!2455564) (nullableFct!2520 lt!2455564))))

(declare-fun bs!1829583 () Bool)

(assert (= bs!1829583 d!2151627))

(declare-fun m!7585598 () Bool)

(assert (=> bs!1829583 m!7585598))

(assert (=> b!6843560 d!2151627))

(assert (=> bm!623216 d!2151603))

(declare-fun d!2151629 () Bool)

(declare-fun c!1274219 () Bool)

(assert (=> d!2151629 (= c!1274219 ((_ is Nil!66189) lt!2455644))))

(declare-fun e!4127736 () (InoxSet Context!12110))

(assert (=> d!2151629 (= (content!12977 lt!2455644) e!4127736)))

(declare-fun b!6844457 () Bool)

(assert (=> b!6844457 (= e!4127736 ((as const (Array Context!12110 Bool)) false))))

(declare-fun b!6844458 () Bool)

(assert (=> b!6844458 (= e!4127736 ((_ map or) (store ((as const (Array Context!12110 Bool)) false) (h!72637 lt!2455644) true) (content!12977 (t!380056 lt!2455644))))))

(assert (= (and d!2151629 c!1274219) b!6844457))

(assert (= (and d!2151629 (not c!1274219)) b!6844458))

(declare-fun m!7585600 () Bool)

(assert (=> b!6844458 m!7585600))

(declare-fun m!7585602 () Bool)

(assert (=> b!6844458 m!7585602))

(assert (=> b!6843806 d!2151629))

(declare-fun d!2151631 () Bool)

(declare-fun res!2794385 () Bool)

(declare-fun e!4127737 () Bool)

(assert (=> d!2151631 (=> res!2794385 e!4127737)))

(assert (=> d!2151631 (= res!2794385 ((_ is Nil!66188) (exprs!6555 setElem!47059)))))

(assert (=> d!2151631 (= (forall!15850 (exprs!6555 setElem!47059) lambda!387023) e!4127737)))

(declare-fun b!6844459 () Bool)

(declare-fun e!4127738 () Bool)

(assert (=> b!6844459 (= e!4127737 e!4127738)))

(declare-fun res!2794386 () Bool)

(assert (=> b!6844459 (=> (not res!2794386) (not e!4127738))))

(assert (=> b!6844459 (= res!2794386 (dynLambda!26449 lambda!387023 (h!72636 (exprs!6555 setElem!47059))))))

(declare-fun b!6844460 () Bool)

(assert (=> b!6844460 (= e!4127738 (forall!15850 (t!380055 (exprs!6555 setElem!47059)) lambda!387023))))

(assert (= (and d!2151631 (not res!2794385)) b!6844459))

(assert (= (and b!6844459 res!2794386) b!6844460))

(declare-fun b_lambda!258159 () Bool)

(assert (=> (not b_lambda!258159) (not b!6844459)))

(declare-fun m!7585604 () Bool)

(assert (=> b!6844459 m!7585604))

(declare-fun m!7585606 () Bool)

(assert (=> b!6844460 m!7585606))

(assert (=> d!2151419 d!2151631))

(declare-fun b!6844461 () Bool)

(declare-fun lt!2455689 () Unit!160045)

(declare-fun Unit!160054 () Unit!160045)

(assert (=> b!6844461 (= lt!2455689 Unit!160054)))

(assert (=> b!6844461 false))

(declare-fun e!4127741 () Regex!16671)

(assert (=> b!6844461 (= e!4127741 (head!13723 (t!380055 lt!2455560)))))

(declare-fun b!6844462 () Bool)

(declare-fun e!4127740 () Regex!16671)

(assert (=> b!6844462 (= e!4127740 (h!72636 (t!380055 lt!2455560)))))

(declare-fun b!6844463 () Bool)

(declare-fun e!4127739 () Bool)

(declare-fun lt!2455688 () Regex!16671)

(assert (=> b!6844463 (= e!4127739 (contains!20320 (t!380055 lt!2455560) lt!2455688))))

(declare-fun d!2151633 () Bool)

(assert (=> d!2151633 e!4127739))

(declare-fun res!2794388 () Bool)

(assert (=> d!2151633 (=> (not res!2794388) (not e!4127739))))

(assert (=> d!2151633 (= res!2794388 (dynLambda!26449 lambda!386978 lt!2455688))))

(assert (=> d!2151633 (= lt!2455688 e!4127740)))

(declare-fun c!1274220 () Bool)

(declare-fun e!4127742 () Bool)

(assert (=> d!2151633 (= c!1274220 e!4127742)))

(declare-fun res!2794387 () Bool)

(assert (=> d!2151633 (=> (not res!2794387) (not e!4127742))))

(assert (=> d!2151633 (= res!2794387 ((_ is Cons!66188) (t!380055 lt!2455560)))))

(assert (=> d!2151633 (exists!2769 (t!380055 lt!2455560) lambda!386978)))

(assert (=> d!2151633 (= (getWitness!937 (t!380055 lt!2455560) lambda!386978) lt!2455688)))

(declare-fun b!6844464 () Bool)

(assert (=> b!6844464 (= e!4127742 (dynLambda!26449 lambda!386978 (h!72636 (t!380055 lt!2455560))))))

(declare-fun b!6844465 () Bool)

(assert (=> b!6844465 (= e!4127741 (getWitness!937 (t!380055 (t!380055 lt!2455560)) lambda!386978))))

(declare-fun b!6844466 () Bool)

(assert (=> b!6844466 (= e!4127740 e!4127741)))

(declare-fun c!1274221 () Bool)

(assert (=> b!6844466 (= c!1274221 ((_ is Cons!66188) (t!380055 lt!2455560)))))

(assert (= (and d!2151633 res!2794387) b!6844464))

(assert (= (and d!2151633 c!1274220) b!6844462))

(assert (= (and d!2151633 (not c!1274220)) b!6844466))

(assert (= (and b!6844466 c!1274221) b!6844465))

(assert (= (and b!6844466 (not c!1274221)) b!6844461))

(assert (= (and d!2151633 res!2794388) b!6844463))

(declare-fun b_lambda!258161 () Bool)

(assert (=> (not b_lambda!258161) (not d!2151633)))

(declare-fun b_lambda!258163 () Bool)

(assert (=> (not b_lambda!258163) (not b!6844464)))

(declare-fun m!7585608 () Bool)

(assert (=> b!6844463 m!7585608))

(declare-fun m!7585610 () Bool)

(assert (=> d!2151633 m!7585610))

(declare-fun m!7585612 () Bool)

(assert (=> d!2151633 m!7585612))

(declare-fun m!7585614 () Bool)

(assert (=> b!6844461 m!7585614))

(declare-fun m!7585616 () Bool)

(assert (=> b!6844465 m!7585616))

(declare-fun m!7585618 () Bool)

(assert (=> b!6844464 m!7585618))

(assert (=> b!6843775 d!2151633))

(declare-fun d!2151635 () Bool)

(declare-fun lt!2455690 () Bool)

(assert (=> d!2151635 (= lt!2455690 (select (content!12978 (t!380055 lt!2455560)) lt!2455564))))

(declare-fun e!4127743 () Bool)

(assert (=> d!2151635 (= lt!2455690 e!4127743)))

(declare-fun res!2794389 () Bool)

(assert (=> d!2151635 (=> (not res!2794389) (not e!4127743))))

(assert (=> d!2151635 (= res!2794389 ((_ is Cons!66188) (t!380055 lt!2455560)))))

(assert (=> d!2151635 (= (contains!20320 (t!380055 lt!2455560) lt!2455564) lt!2455690)))

(declare-fun b!6844467 () Bool)

(declare-fun e!4127744 () Bool)

(assert (=> b!6844467 (= e!4127743 e!4127744)))

(declare-fun res!2794390 () Bool)

(assert (=> b!6844467 (=> res!2794390 e!4127744)))

(assert (=> b!6844467 (= res!2794390 (= (h!72636 (t!380055 lt!2455560)) lt!2455564))))

(declare-fun b!6844468 () Bool)

(assert (=> b!6844468 (= e!4127744 (contains!20320 (t!380055 (t!380055 lt!2455560)) lt!2455564))))

(assert (= (and d!2151635 res!2794389) b!6844467))

(assert (= (and b!6844467 (not res!2794390)) b!6844468))

(assert (=> d!2151635 m!7585588))

(declare-fun m!7585620 () Bool)

(assert (=> d!2151635 m!7585620))

(declare-fun m!7585622 () Bool)

(assert (=> b!6844468 m!7585622))

(assert (=> b!6843758 d!2151635))

(assert (=> d!2151411 d!2151423))

(declare-fun d!2151637 () Bool)

(declare-fun res!2794391 () Bool)

(declare-fun e!4127745 () Bool)

(assert (=> d!2151637 (=> res!2794391 e!4127745)))

(assert (=> d!2151637 (= res!2794391 ((_ is Nil!66188) lt!2455560))))

(assert (=> d!2151637 (= (forall!15850 lt!2455560 lambda!387026) e!4127745)))

(declare-fun b!6844469 () Bool)

(declare-fun e!4127746 () Bool)

(assert (=> b!6844469 (= e!4127745 e!4127746)))

(declare-fun res!2794392 () Bool)

(assert (=> b!6844469 (=> (not res!2794392) (not e!4127746))))

(assert (=> b!6844469 (= res!2794392 (dynLambda!26449 lambda!387026 (h!72636 lt!2455560)))))

(declare-fun b!6844470 () Bool)

(assert (=> b!6844470 (= e!4127746 (forall!15850 (t!380055 lt!2455560) lambda!387026))))

(assert (= (and d!2151637 (not res!2794391)) b!6844469))

(assert (= (and b!6844469 res!2794392) b!6844470))

(declare-fun b_lambda!258165 () Bool)

(assert (=> (not b_lambda!258165) (not b!6844469)))

(declare-fun m!7585624 () Bool)

(assert (=> b!6844469 m!7585624))

(declare-fun m!7585626 () Bool)

(assert (=> b!6844470 m!7585626))

(assert (=> d!2151423 d!2151637))

(assert (=> bm!623206 d!2151603))

(declare-fun d!2151639 () Bool)

(declare-fun res!2794397 () Bool)

(declare-fun e!4127751 () Bool)

(assert (=> d!2151639 (=> res!2794397 e!4127751)))

(assert (=> d!2151639 (= res!2794397 ((_ is Nil!66189) lt!2455644))))

(assert (=> d!2151639 (= (noDuplicate!2439 lt!2455644) e!4127751)))

(declare-fun b!6844475 () Bool)

(declare-fun e!4127752 () Bool)

(assert (=> b!6844475 (= e!4127751 e!4127752)))

(declare-fun res!2794398 () Bool)

(assert (=> b!6844475 (=> (not res!2794398) (not e!4127752))))

(assert (=> b!6844475 (= res!2794398 (not (contains!20321 (t!380056 lt!2455644) (h!72637 lt!2455644))))))

(declare-fun b!6844476 () Bool)

(assert (=> b!6844476 (= e!4127752 (noDuplicate!2439 (t!380056 lt!2455644)))))

(assert (= (and d!2151639 (not res!2794397)) b!6844475))

(assert (= (and b!6844475 res!2794398) b!6844476))

(declare-fun m!7585628 () Bool)

(assert (=> b!6844475 m!7585628))

(declare-fun m!7585630 () Bool)

(assert (=> b!6844476 m!7585630))

(assert (=> d!2151421 d!2151639))

(declare-fun d!2151641 () Bool)

(declare-fun e!4127759 () Bool)

(assert (=> d!2151641 e!4127759))

(declare-fun res!2794403 () Bool)

(assert (=> d!2151641 (=> (not res!2794403) (not e!4127759))))

(declare-fun res!2794404 () List!66313)

(assert (=> d!2151641 (= res!2794403 (noDuplicate!2439 res!2794404))))

(declare-fun e!4127761 () Bool)

(assert (=> d!2151641 e!4127761))

(assert (=> d!2151641 (= (choose!51038 z!1189) res!2794404)))

(declare-fun b!6844484 () Bool)

(declare-fun e!4127760 () Bool)

(declare-fun tp!1874478 () Bool)

(assert (=> b!6844484 (= e!4127760 tp!1874478)))

(declare-fun b!6844483 () Bool)

(declare-fun tp!1874479 () Bool)

(assert (=> b!6844483 (= e!4127761 (and (inv!84924 (h!72637 res!2794404)) e!4127760 tp!1874479))))

(declare-fun b!6844485 () Bool)

(assert (=> b!6844485 (= e!4127759 (= (content!12977 res!2794404) z!1189))))

(assert (= b!6844483 b!6844484))

(assert (= (and d!2151641 ((_ is Cons!66189) res!2794404)) b!6844483))

(assert (= (and d!2151641 res!2794403) b!6844485))

(declare-fun m!7585632 () Bool)

(assert (=> d!2151641 m!7585632))

(declare-fun m!7585634 () Bool)

(assert (=> b!6844483 m!7585634))

(declare-fun m!7585636 () Bool)

(assert (=> b!6844485 m!7585636))

(assert (=> d!2151421 d!2151641))

(declare-fun b!6844486 () Bool)

(declare-fun e!4127762 () Bool)

(declare-fun e!4127768 () Bool)

(assert (=> b!6844486 (= e!4127762 e!4127768)))

(declare-fun c!1274222 () Bool)

(assert (=> b!6844486 (= c!1274222 ((_ is Star!16671) (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))))))

(declare-fun b!6844487 () Bool)

(declare-fun e!4127763 () Bool)

(declare-fun call!623289 () Bool)

(assert (=> b!6844487 (= e!4127763 call!623289)))

(declare-fun b!6844488 () Bool)

(declare-fun res!2794405 () Bool)

(declare-fun e!4127767 () Bool)

(assert (=> b!6844488 (=> (not res!2794405) (not e!4127767))))

(declare-fun call!623291 () Bool)

(assert (=> b!6844488 (= res!2794405 call!623291)))

(declare-fun e!4127766 () Bool)

(assert (=> b!6844488 (= e!4127766 e!4127767)))

(declare-fun b!6844489 () Bool)

(assert (=> b!6844489 (= e!4127768 e!4127763)))

(declare-fun res!2794409 () Bool)

(assert (=> b!6844489 (= res!2794409 (not (nullable!6636 (reg!17000 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))))))))

(assert (=> b!6844489 (=> (not res!2794409) (not e!4127763))))

(declare-fun b!6844490 () Bool)

(declare-fun e!4127765 () Bool)

(declare-fun e!4127764 () Bool)

(assert (=> b!6844490 (= e!4127765 e!4127764)))

(declare-fun res!2794406 () Bool)

(assert (=> b!6844490 (=> (not res!2794406) (not e!4127764))))

(assert (=> b!6844490 (= res!2794406 call!623291)))

(declare-fun bm!623284 () Bool)

(declare-fun call!623290 () Bool)

(assert (=> bm!623284 (= call!623290 call!623289)))

(declare-fun c!1274223 () Bool)

(declare-fun bm!623285 () Bool)

(assert (=> bm!623285 (= call!623291 (validRegex!8407 (ite c!1274223 (regOne!33855 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))) (regOne!33854 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))))))))

(declare-fun bm!623286 () Bool)

(assert (=> bm!623286 (= call!623289 (validRegex!8407 (ite c!1274222 (reg!17000 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))) (ite c!1274223 (regTwo!33855 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))) (regTwo!33854 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564)))))))))

(declare-fun d!2151643 () Bool)

(declare-fun res!2794408 () Bool)

(assert (=> d!2151643 (=> res!2794408 e!4127762)))

(assert (=> d!2151643 (= res!2794408 ((_ is ElementMatch!16671) (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))))))

(assert (=> d!2151643 (= (validRegex!8407 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))) e!4127762)))

(declare-fun b!6844491 () Bool)

(assert (=> b!6844491 (= e!4127768 e!4127766)))

(assert (=> b!6844491 (= c!1274223 ((_ is Union!16671) (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))))))

(declare-fun b!6844492 () Bool)

(assert (=> b!6844492 (= e!4127764 call!623290)))

(declare-fun b!6844493 () Bool)

(assert (=> b!6844493 (= e!4127767 call!623290)))

(declare-fun b!6844494 () Bool)

(declare-fun res!2794407 () Bool)

(assert (=> b!6844494 (=> res!2794407 e!4127765)))

(assert (=> b!6844494 (= res!2794407 (not ((_ is Concat!25516) (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564)))))))

(assert (=> b!6844494 (= e!4127766 e!4127765)))

(assert (= (and d!2151643 (not res!2794408)) b!6844486))

(assert (= (and b!6844486 c!1274222) b!6844489))

(assert (= (and b!6844486 (not c!1274222)) b!6844491))

(assert (= (and b!6844489 res!2794409) b!6844487))

(assert (= (and b!6844491 c!1274223) b!6844488))

(assert (= (and b!6844491 (not c!1274223)) b!6844494))

(assert (= (and b!6844488 res!2794405) b!6844493))

(assert (= (and b!6844494 (not res!2794407)) b!6844490))

(assert (= (and b!6844490 res!2794406) b!6844492))

(assert (= (or b!6844493 b!6844492) bm!623284))

(assert (= (or b!6844488 b!6844490) bm!623285))

(assert (= (or b!6844487 bm!623284) bm!623286))

(declare-fun m!7585638 () Bool)

(assert (=> b!6844489 m!7585638))

(declare-fun m!7585640 () Bool)

(assert (=> bm!623285 m!7585640))

(declare-fun m!7585642 () Bool)

(assert (=> bm!623286 m!7585642))

(assert (=> bm!623227 d!2151643))

(declare-fun b!6844495 () Bool)

(declare-fun e!4127769 () Bool)

(declare-fun e!4127775 () Bool)

(assert (=> b!6844495 (= e!4127769 e!4127775)))

(declare-fun c!1274224 () Bool)

(assert (=> b!6844495 (= c!1274224 ((_ is Star!16671) (h!72636 lt!2455560)))))

(declare-fun b!6844496 () Bool)

(declare-fun e!4127770 () Bool)

(declare-fun call!623292 () Bool)

(assert (=> b!6844496 (= e!4127770 call!623292)))

(declare-fun b!6844497 () Bool)

(declare-fun res!2794410 () Bool)

(declare-fun e!4127774 () Bool)

(assert (=> b!6844497 (=> (not res!2794410) (not e!4127774))))

(declare-fun call!623294 () Bool)

(assert (=> b!6844497 (= res!2794410 call!623294)))

(declare-fun e!4127773 () Bool)

(assert (=> b!6844497 (= e!4127773 e!4127774)))

(declare-fun b!6844498 () Bool)

(assert (=> b!6844498 (= e!4127775 e!4127770)))

(declare-fun res!2794414 () Bool)

(assert (=> b!6844498 (= res!2794414 (not (nullable!6636 (reg!17000 (h!72636 lt!2455560)))))))

(assert (=> b!6844498 (=> (not res!2794414) (not e!4127770))))

(declare-fun b!6844499 () Bool)

(declare-fun e!4127772 () Bool)

(declare-fun e!4127771 () Bool)

(assert (=> b!6844499 (= e!4127772 e!4127771)))

(declare-fun res!2794411 () Bool)

(assert (=> b!6844499 (=> (not res!2794411) (not e!4127771))))

(assert (=> b!6844499 (= res!2794411 call!623294)))

(declare-fun bm!623287 () Bool)

(declare-fun call!623293 () Bool)

(assert (=> bm!623287 (= call!623293 call!623292)))

(declare-fun bm!623288 () Bool)

(declare-fun c!1274225 () Bool)

(assert (=> bm!623288 (= call!623294 (validRegex!8407 (ite c!1274225 (regOne!33855 (h!72636 lt!2455560)) (regOne!33854 (h!72636 lt!2455560)))))))

(declare-fun bm!623289 () Bool)

(assert (=> bm!623289 (= call!623292 (validRegex!8407 (ite c!1274224 (reg!17000 (h!72636 lt!2455560)) (ite c!1274225 (regTwo!33855 (h!72636 lt!2455560)) (regTwo!33854 (h!72636 lt!2455560))))))))

(declare-fun d!2151645 () Bool)

(declare-fun res!2794413 () Bool)

(assert (=> d!2151645 (=> res!2794413 e!4127769)))

(assert (=> d!2151645 (= res!2794413 ((_ is ElementMatch!16671) (h!72636 lt!2455560)))))

(assert (=> d!2151645 (= (validRegex!8407 (h!72636 lt!2455560)) e!4127769)))

(declare-fun b!6844500 () Bool)

(assert (=> b!6844500 (= e!4127775 e!4127773)))

(assert (=> b!6844500 (= c!1274225 ((_ is Union!16671) (h!72636 lt!2455560)))))

(declare-fun b!6844501 () Bool)

(assert (=> b!6844501 (= e!4127771 call!623293)))

(declare-fun b!6844502 () Bool)

(assert (=> b!6844502 (= e!4127774 call!623293)))

(declare-fun b!6844503 () Bool)

(declare-fun res!2794412 () Bool)

(assert (=> b!6844503 (=> res!2794412 e!4127772)))

(assert (=> b!6844503 (= res!2794412 (not ((_ is Concat!25516) (h!72636 lt!2455560))))))

(assert (=> b!6844503 (= e!4127773 e!4127772)))

(assert (= (and d!2151645 (not res!2794413)) b!6844495))

(assert (= (and b!6844495 c!1274224) b!6844498))

(assert (= (and b!6844495 (not c!1274224)) b!6844500))

(assert (= (and b!6844498 res!2794414) b!6844496))

(assert (= (and b!6844500 c!1274225) b!6844497))

(assert (= (and b!6844500 (not c!1274225)) b!6844503))

(assert (= (and b!6844497 res!2794410) b!6844502))

(assert (= (and b!6844503 (not res!2794412)) b!6844499))

(assert (= (and b!6844499 res!2794411) b!6844501))

(assert (= (or b!6844502 b!6844501) bm!623287))

(assert (= (or b!6844497 b!6844499) bm!623288))

(assert (= (or b!6844496 bm!623287) bm!623289))

(declare-fun m!7585644 () Bool)

(assert (=> b!6844498 m!7585644))

(declare-fun m!7585646 () Bool)

(assert (=> bm!623288 m!7585646))

(declare-fun m!7585648 () Bool)

(assert (=> bm!623289 m!7585648))

(assert (=> bs!1829392 d!2151645))

(assert (=> bm!623215 d!2151603))

(declare-fun d!2151647 () Bool)

(declare-fun res!2794415 () Bool)

(declare-fun e!4127776 () Bool)

(assert (=> d!2151647 (=> res!2794415 e!4127776)))

(assert (=> d!2151647 (= res!2794415 ((_ is Nil!66188) (exprs!6555 (h!72637 zl!343))))))

(assert (=> d!2151647 (= (forall!15850 (exprs!6555 (h!72637 zl!343)) lambda!387022) e!4127776)))

(declare-fun b!6844504 () Bool)

(declare-fun e!4127777 () Bool)

(assert (=> b!6844504 (= e!4127776 e!4127777)))

(declare-fun res!2794416 () Bool)

(assert (=> b!6844504 (=> (not res!2794416) (not e!4127777))))

(assert (=> b!6844504 (= res!2794416 (dynLambda!26449 lambda!387022 (h!72636 (exprs!6555 (h!72637 zl!343)))))))

(declare-fun b!6844505 () Bool)

(assert (=> b!6844505 (= e!4127777 (forall!15850 (t!380055 (exprs!6555 (h!72637 zl!343))) lambda!387022))))

(assert (= (and d!2151647 (not res!2794415)) b!6844504))

(assert (= (and b!6844504 res!2794416) b!6844505))

(declare-fun b_lambda!258167 () Bool)

(assert (=> (not b_lambda!258167) (not b!6844504)))

(declare-fun m!7585650 () Bool)

(assert (=> b!6844504 m!7585650))

(declare-fun m!7585652 () Bool)

(assert (=> b!6844505 m!7585652))

(assert (=> d!2151417 d!2151647))

(assert (=> b!6843550 d!2151577))

(declare-fun bs!1829584 () Bool)

(declare-fun b!6844510 () Bool)

(assert (= bs!1829584 (and b!6844510 b!6843696)))

(declare-fun lambda!387074 () Int)

(assert (=> bs!1829584 (= (and (= (reg!17000 (regOne!33855 r!7292)) (reg!17000 r!7292)) (= (regOne!33855 r!7292) r!7292)) (= lambda!387074 lambda!387012))))

(declare-fun bs!1829585 () Bool)

(assert (= bs!1829585 (and b!6844510 b!6843694)))

(assert (=> bs!1829585 (not (= lambda!387074 lambda!387013))))

(declare-fun bs!1829586 () Bool)

(assert (= bs!1829586 (and b!6844510 b!6844355)))

(assert (=> bs!1829586 (= (and (= (reg!17000 (regOne!33855 r!7292)) (reg!17000 (regTwo!33855 r!7292))) (= (regOne!33855 r!7292) (regTwo!33855 r!7292))) (= lambda!387074 lambda!387058))))

(declare-fun bs!1829587 () Bool)

(assert (= bs!1829587 (and b!6844510 b!6844353)))

(assert (=> bs!1829587 (not (= lambda!387074 lambda!387059))))

(assert (=> b!6844510 true))

(assert (=> b!6844510 true))

(declare-fun bs!1829588 () Bool)

(declare-fun b!6844508 () Bool)

(assert (= bs!1829588 (and b!6844508 b!6843694)))

(declare-fun lambda!387075 () Int)

(assert (=> bs!1829588 (= (and (= (regOne!33854 (regOne!33855 r!7292)) (regOne!33854 r!7292)) (= (regTwo!33854 (regOne!33855 r!7292)) (regTwo!33854 r!7292))) (= lambda!387075 lambda!387013))))

(declare-fun bs!1829589 () Bool)

(assert (= bs!1829589 (and b!6844508 b!6844355)))

(assert (=> bs!1829589 (not (= lambda!387075 lambda!387058))))

(declare-fun bs!1829590 () Bool)

(assert (= bs!1829590 (and b!6844508 b!6843696)))

(assert (=> bs!1829590 (not (= lambda!387075 lambda!387012))))

(declare-fun bs!1829591 () Bool)

(assert (= bs!1829591 (and b!6844508 b!6844510)))

(assert (=> bs!1829591 (not (= lambda!387075 lambda!387074))))

(declare-fun bs!1829592 () Bool)

(assert (= bs!1829592 (and b!6844508 b!6844353)))

(assert (=> bs!1829592 (= (and (= (regOne!33854 (regOne!33855 r!7292)) (regOne!33854 (regTwo!33855 r!7292))) (= (regTwo!33854 (regOne!33855 r!7292)) (regTwo!33854 (regTwo!33855 r!7292)))) (= lambda!387075 lambda!387059))))

(assert (=> b!6844508 true))

(assert (=> b!6844508 true))

(declare-fun b!6844506 () Bool)

(declare-fun e!4127783 () Bool)

(declare-fun call!623296 () Bool)

(assert (=> b!6844506 (= e!4127783 call!623296)))

(declare-fun b!6844507 () Bool)

(declare-fun e!4127778 () Bool)

(declare-fun e!4127780 () Bool)

(assert (=> b!6844507 (= e!4127778 e!4127780)))

(declare-fun c!1274226 () Bool)

(assert (=> b!6844507 (= c!1274226 ((_ is Star!16671) (regOne!33855 r!7292)))))

(declare-fun bm!623291 () Bool)

(assert (=> bm!623291 (= call!623296 (isEmpty!38565 s!2326))))

(declare-fun call!623295 () Bool)

(assert (=> b!6844508 (= e!4127780 call!623295)))

(declare-fun b!6844509 () Bool)

(declare-fun e!4127784 () Bool)

(assert (=> b!6844509 (= e!4127784 (= s!2326 (Cons!66190 (c!1273977 (regOne!33855 r!7292)) Nil!66190)))))

(declare-fun e!4127779 () Bool)

(assert (=> b!6844510 (= e!4127779 call!623295)))

(declare-fun b!6844511 () Bool)

(declare-fun c!1274228 () Bool)

(assert (=> b!6844511 (= c!1274228 ((_ is Union!16671) (regOne!33855 r!7292)))))

(assert (=> b!6844511 (= e!4127784 e!4127778)))

(declare-fun d!2151649 () Bool)

(declare-fun c!1274227 () Bool)

(assert (=> d!2151649 (= c!1274227 ((_ is EmptyExpr!16671) (regOne!33855 r!7292)))))

(assert (=> d!2151649 (= (matchRSpec!3772 (regOne!33855 r!7292) s!2326) e!4127783)))

(declare-fun bm!623290 () Bool)

(assert (=> bm!623290 (= call!623295 (Exists!3735 (ite c!1274226 lambda!387074 lambda!387075)))))

(declare-fun b!6844512 () Bool)

(declare-fun res!2794419 () Bool)

(assert (=> b!6844512 (=> res!2794419 e!4127779)))

(assert (=> b!6844512 (= res!2794419 call!623296)))

(assert (=> b!6844512 (= e!4127780 e!4127779)))

(declare-fun b!6844513 () Bool)

(declare-fun c!1274229 () Bool)

(assert (=> b!6844513 (= c!1274229 ((_ is ElementMatch!16671) (regOne!33855 r!7292)))))

(declare-fun e!4127781 () Bool)

(assert (=> b!6844513 (= e!4127781 e!4127784)))

(declare-fun b!6844514 () Bool)

(assert (=> b!6844514 (= e!4127783 e!4127781)))

(declare-fun res!2794417 () Bool)

(assert (=> b!6844514 (= res!2794417 (not ((_ is EmptyLang!16671) (regOne!33855 r!7292))))))

(assert (=> b!6844514 (=> (not res!2794417) (not e!4127781))))

(declare-fun b!6844515 () Bool)

(declare-fun e!4127782 () Bool)

(assert (=> b!6844515 (= e!4127778 e!4127782)))

(declare-fun res!2794418 () Bool)

(assert (=> b!6844515 (= res!2794418 (matchRSpec!3772 (regOne!33855 (regOne!33855 r!7292)) s!2326))))

(assert (=> b!6844515 (=> res!2794418 e!4127782)))

(declare-fun b!6844516 () Bool)

(assert (=> b!6844516 (= e!4127782 (matchRSpec!3772 (regTwo!33855 (regOne!33855 r!7292)) s!2326))))

(assert (= (and d!2151649 c!1274227) b!6844506))

(assert (= (and d!2151649 (not c!1274227)) b!6844514))

(assert (= (and b!6844514 res!2794417) b!6844513))

(assert (= (and b!6844513 c!1274229) b!6844509))

(assert (= (and b!6844513 (not c!1274229)) b!6844511))

(assert (= (and b!6844511 c!1274228) b!6844515))

(assert (= (and b!6844511 (not c!1274228)) b!6844507))

(assert (= (and b!6844515 (not res!2794418)) b!6844516))

(assert (= (and b!6844507 c!1274226) b!6844512))

(assert (= (and b!6844507 (not c!1274226)) b!6844508))

(assert (= (and b!6844512 (not res!2794419)) b!6844510))

(assert (= (or b!6844510 b!6844508) bm!623290))

(assert (= (or b!6844506 b!6844512) bm!623291))

(assert (=> bm!623291 m!7584996))

(declare-fun m!7585654 () Bool)

(assert (=> bm!623290 m!7585654))

(declare-fun m!7585656 () Bool)

(assert (=> b!6844515 m!7585656))

(declare-fun m!7585658 () Bool)

(assert (=> b!6844516 m!7585658))

(assert (=> b!6843701 d!2151649))

(declare-fun d!2151651 () Bool)

(declare-fun res!2794424 () Bool)

(declare-fun e!4127789 () Bool)

(assert (=> d!2151651 (=> res!2794424 e!4127789)))

(assert (=> d!2151651 (= res!2794424 ((_ is Nil!66189) zl!343))))

(assert (=> d!2151651 (= (forall!15849 zl!343 lambda!387016) e!4127789)))

(declare-fun b!6844521 () Bool)

(declare-fun e!4127790 () Bool)

(assert (=> b!6844521 (= e!4127789 e!4127790)))

(declare-fun res!2794425 () Bool)

(assert (=> b!6844521 (=> (not res!2794425) (not e!4127790))))

(assert (=> b!6844521 (= res!2794425 (dynLambda!26448 lambda!387016 (h!72637 zl!343)))))

(declare-fun b!6844522 () Bool)

(assert (=> b!6844522 (= e!4127790 (forall!15849 (t!380056 zl!343) lambda!387016))))

(assert (= (and d!2151651 (not res!2794424)) b!6844521))

(assert (= (and b!6844521 res!2794425) b!6844522))

(declare-fun b_lambda!258169 () Bool)

(assert (=> (not b_lambda!258169) (not b!6844521)))

(declare-fun m!7585660 () Bool)

(assert (=> b!6844521 m!7585660))

(declare-fun m!7585662 () Bool)

(assert (=> b!6844522 m!7585662))

(assert (=> d!2151401 d!2151651))

(declare-fun b!6844523 () Bool)

(declare-fun e!4127791 () Bool)

(declare-fun e!4127797 () Bool)

(assert (=> b!6844523 (= e!4127791 e!4127797)))

(declare-fun c!1274230 () Bool)

(assert (=> b!6844523 (= c!1274230 ((_ is Star!16671) lt!2455641))))

(declare-fun b!6844524 () Bool)

(declare-fun e!4127792 () Bool)

(declare-fun call!623297 () Bool)

(assert (=> b!6844524 (= e!4127792 call!623297)))

(declare-fun b!6844525 () Bool)

(declare-fun res!2794426 () Bool)

(declare-fun e!4127796 () Bool)

(assert (=> b!6844525 (=> (not res!2794426) (not e!4127796))))

(declare-fun call!623299 () Bool)

(assert (=> b!6844525 (= res!2794426 call!623299)))

(declare-fun e!4127795 () Bool)

(assert (=> b!6844525 (= e!4127795 e!4127796)))

(declare-fun b!6844526 () Bool)

(assert (=> b!6844526 (= e!4127797 e!4127792)))

(declare-fun res!2794430 () Bool)

(assert (=> b!6844526 (= res!2794430 (not (nullable!6636 (reg!17000 lt!2455641))))))

(assert (=> b!6844526 (=> (not res!2794430) (not e!4127792))))

(declare-fun b!6844527 () Bool)

(declare-fun e!4127794 () Bool)

(declare-fun e!4127793 () Bool)

(assert (=> b!6844527 (= e!4127794 e!4127793)))

(declare-fun res!2794427 () Bool)

(assert (=> b!6844527 (=> (not res!2794427) (not e!4127793))))

(assert (=> b!6844527 (= res!2794427 call!623299)))

(declare-fun bm!623292 () Bool)

(declare-fun call!623298 () Bool)

(assert (=> bm!623292 (= call!623298 call!623297)))

(declare-fun bm!623293 () Bool)

(declare-fun c!1274231 () Bool)

(assert (=> bm!623293 (= call!623299 (validRegex!8407 (ite c!1274231 (regOne!33855 lt!2455641) (regOne!33854 lt!2455641))))))

(declare-fun bm!623294 () Bool)

(assert (=> bm!623294 (= call!623297 (validRegex!8407 (ite c!1274230 (reg!17000 lt!2455641) (ite c!1274231 (regTwo!33855 lt!2455641) (regTwo!33854 lt!2455641)))))))

(declare-fun d!2151653 () Bool)

(declare-fun res!2794429 () Bool)

(assert (=> d!2151653 (=> res!2794429 e!4127791)))

(assert (=> d!2151653 (= res!2794429 ((_ is ElementMatch!16671) lt!2455641))))

(assert (=> d!2151653 (= (validRegex!8407 lt!2455641) e!4127791)))

(declare-fun b!6844528 () Bool)

(assert (=> b!6844528 (= e!4127797 e!4127795)))

(assert (=> b!6844528 (= c!1274231 ((_ is Union!16671) lt!2455641))))

(declare-fun b!6844529 () Bool)

(assert (=> b!6844529 (= e!4127793 call!623298)))

(declare-fun b!6844530 () Bool)

(assert (=> b!6844530 (= e!4127796 call!623298)))

(declare-fun b!6844531 () Bool)

(declare-fun res!2794428 () Bool)

(assert (=> b!6844531 (=> res!2794428 e!4127794)))

(assert (=> b!6844531 (= res!2794428 (not ((_ is Concat!25516) lt!2455641)))))

(assert (=> b!6844531 (= e!4127795 e!4127794)))

(assert (= (and d!2151653 (not res!2794429)) b!6844523))

(assert (= (and b!6844523 c!1274230) b!6844526))

(assert (= (and b!6844523 (not c!1274230)) b!6844528))

(assert (= (and b!6844526 res!2794430) b!6844524))

(assert (= (and b!6844528 c!1274231) b!6844525))

(assert (= (and b!6844528 (not c!1274231)) b!6844531))

(assert (= (and b!6844525 res!2794426) b!6844530))

(assert (= (and b!6844531 (not res!2794428)) b!6844527))

(assert (= (and b!6844527 res!2794427) b!6844529))

(assert (= (or b!6844530 b!6844529) bm!623292))

(assert (= (or b!6844525 b!6844527) bm!623293))

(assert (= (or b!6844524 bm!623292) bm!623294))

(declare-fun m!7585664 () Bool)

(assert (=> b!6844526 m!7585664))

(declare-fun m!7585666 () Bool)

(assert (=> bm!623293 m!7585666))

(declare-fun m!7585668 () Bool)

(assert (=> bm!623294 m!7585668))

(assert (=> d!2151415 d!2151653))

(declare-fun bs!1829593 () Bool)

(declare-fun d!2151655 () Bool)

(assert (= bs!1829593 (and d!2151655 d!2151591)))

(declare-fun lambda!387078 () Int)

(assert (=> bs!1829593 (= lambda!387078 lambda!387063)))

(declare-fun bs!1829594 () Bool)

(assert (= bs!1829594 (and d!2151655 d!2151623)))

(assert (=> bs!1829594 (not (= lambda!387078 lambda!387073))))

(declare-fun bs!1829595 () Bool)

(assert (= bs!1829595 (and d!2151655 d!2151427)))

(assert (=> bs!1829595 (= lambda!387078 lambda!387035)))

(declare-fun bs!1829596 () Bool)

(assert (= bs!1829596 (and d!2151655 d!2151417)))

(assert (=> bs!1829596 (= lambda!387078 lambda!387022)))

(declare-fun bs!1829597 () Bool)

(assert (= bs!1829597 (and d!2151655 d!2151621)))

(assert (=> bs!1829597 (not (= lambda!387078 lambda!387070))))

(declare-fun bs!1829598 () Bool)

(assert (= bs!1829598 (and d!2151655 d!2151423)))

(assert (=> bs!1829598 (not (= lambda!387078 lambda!387026))))

(declare-fun bs!1829599 () Bool)

(assert (= bs!1829599 (and d!2151655 b!6843348)))

(assert (=> bs!1829599 (not (= lambda!387078 lambda!386978))))

(declare-fun bs!1829600 () Bool)

(assert (= bs!1829600 (and d!2151655 d!2151425)))

(assert (=> bs!1829600 (= lambda!387078 lambda!387031)))

(assert (=> bs!1829600 (not (= lambda!387078 lambda!387032))))

(declare-fun bs!1829601 () Bool)

(assert (= bs!1829601 (and d!2151655 d!2151599)))

(assert (=> bs!1829601 (= lambda!387078 lambda!387065)))

(declare-fun bs!1829602 () Bool)

(assert (= bs!1829602 (and d!2151655 d!2151593)))

(assert (=> bs!1829602 (= lambda!387078 lambda!387064)))

(declare-fun bs!1829603 () Bool)

(assert (= bs!1829603 (and d!2151655 d!2151419)))

(assert (=> bs!1829603 (= lambda!387078 lambda!387023)))

(declare-fun bs!1829604 () Bool)

(assert (= bs!1829604 (and d!2151655 d!2151587)))

(assert (=> bs!1829604 (= lambda!387078 lambda!387060)))

(declare-fun b!6844552 () Bool)

(declare-fun e!4127810 () Bool)

(declare-fun lt!2455693 () Regex!16671)

(assert (=> b!6844552 (= e!4127810 (= lt!2455693 (head!13723 (unfocusZipperList!2088 zl!343))))))

(declare-fun b!6844553 () Bool)

(declare-fun isUnion!1445 (Regex!16671) Bool)

(assert (=> b!6844553 (= e!4127810 (isUnion!1445 lt!2455693))))

(declare-fun b!6844554 () Bool)

(declare-fun e!4127815 () Bool)

(declare-fun isEmptyLang!2015 (Regex!16671) Bool)

(assert (=> b!6844554 (= e!4127815 (isEmptyLang!2015 lt!2455693))))

(declare-fun b!6844555 () Bool)

(declare-fun e!4127812 () Regex!16671)

(assert (=> b!6844555 (= e!4127812 EmptyLang!16671)))

(declare-fun b!6844557 () Bool)

(declare-fun e!4127814 () Regex!16671)

(assert (=> b!6844557 (= e!4127814 e!4127812)))

(declare-fun c!1274240 () Bool)

(assert (=> b!6844557 (= c!1274240 ((_ is Cons!66188) (unfocusZipperList!2088 zl!343)))))

(declare-fun b!6844558 () Bool)

(assert (=> b!6844558 (= e!4127812 (Union!16671 (h!72636 (unfocusZipperList!2088 zl!343)) (generalisedUnion!2511 (t!380055 (unfocusZipperList!2088 zl!343)))))))

(declare-fun b!6844559 () Bool)

(assert (=> b!6844559 (= e!4127815 e!4127810)))

(declare-fun c!1274243 () Bool)

(assert (=> b!6844559 (= c!1274243 (isEmpty!38567 (tail!12802 (unfocusZipperList!2088 zl!343))))))

(declare-fun b!6844560 () Bool)

(declare-fun e!4127813 () Bool)

(assert (=> b!6844560 (= e!4127813 e!4127815)))

(declare-fun c!1274241 () Bool)

(assert (=> b!6844560 (= c!1274241 (isEmpty!38567 (unfocusZipperList!2088 zl!343)))))

(declare-fun b!6844561 () Bool)

(assert (=> b!6844561 (= e!4127814 (h!72636 (unfocusZipperList!2088 zl!343)))))

(assert (=> d!2151655 e!4127813))

(declare-fun res!2794436 () Bool)

(assert (=> d!2151655 (=> (not res!2794436) (not e!4127813))))

(assert (=> d!2151655 (= res!2794436 (validRegex!8407 lt!2455693))))

(assert (=> d!2151655 (= lt!2455693 e!4127814)))

(declare-fun c!1274242 () Bool)

(declare-fun e!4127811 () Bool)

(assert (=> d!2151655 (= c!1274242 e!4127811)))

(declare-fun res!2794435 () Bool)

(assert (=> d!2151655 (=> (not res!2794435) (not e!4127811))))

(assert (=> d!2151655 (= res!2794435 ((_ is Cons!66188) (unfocusZipperList!2088 zl!343)))))

(assert (=> d!2151655 (forall!15850 (unfocusZipperList!2088 zl!343) lambda!387078)))

(assert (=> d!2151655 (= (generalisedUnion!2511 (unfocusZipperList!2088 zl!343)) lt!2455693)))

(declare-fun b!6844556 () Bool)

(assert (=> b!6844556 (= e!4127811 (isEmpty!38567 (t!380055 (unfocusZipperList!2088 zl!343))))))

(assert (= (and d!2151655 res!2794435) b!6844556))

(assert (= (and d!2151655 c!1274242) b!6844561))

(assert (= (and d!2151655 (not c!1274242)) b!6844557))

(assert (= (and b!6844557 c!1274240) b!6844558))

(assert (= (and b!6844557 (not c!1274240)) b!6844555))

(assert (= (and d!2151655 res!2794436) b!6844560))

(assert (= (and b!6844560 c!1274241) b!6844554))

(assert (= (and b!6844560 (not c!1274241)) b!6844559))

(assert (= (and b!6844559 c!1274243) b!6844552))

(assert (= (and b!6844559 (not c!1274243)) b!6844553))

(assert (=> b!6844560 m!7584902))

(declare-fun m!7585670 () Bool)

(assert (=> b!6844560 m!7585670))

(declare-fun m!7585672 () Bool)

(assert (=> b!6844556 m!7585672))

(assert (=> b!6844559 m!7584902))

(declare-fun m!7585674 () Bool)

(assert (=> b!6844559 m!7585674))

(assert (=> b!6844559 m!7585674))

(declare-fun m!7585676 () Bool)

(assert (=> b!6844559 m!7585676))

(declare-fun m!7585678 () Bool)

(assert (=> b!6844553 m!7585678))

(assert (=> b!6844552 m!7584902))

(declare-fun m!7585680 () Bool)

(assert (=> b!6844552 m!7585680))

(declare-fun m!7585682 () Bool)

(assert (=> b!6844558 m!7585682))

(declare-fun m!7585684 () Bool)

(assert (=> d!2151655 m!7585684))

(assert (=> d!2151655 m!7584902))

(declare-fun m!7585686 () Bool)

(assert (=> d!2151655 m!7585686))

(declare-fun m!7585688 () Bool)

(assert (=> b!6844554 m!7585688))

(assert (=> d!2151415 d!2151655))

(assert (=> d!2151415 d!2151427))

(assert (=> d!2151407 d!2151401))

(assert (=> b!6843719 d!2151579))

(assert (=> b!6843719 d!2151581))

(declare-fun d!2151657 () Bool)

(declare-fun lt!2455694 () Int)

(assert (=> d!2151657 (>= lt!2455694 0)))

(declare-fun e!4127816 () Int)

(assert (=> d!2151657 (= lt!2455694 e!4127816)))

(declare-fun c!1274244 () Bool)

(assert (=> d!2151657 (= c!1274244 ((_ is Nil!66189) (t!380056 zl!343)))))

(assert (=> d!2151657 (= (size!40709 (t!380056 zl!343)) lt!2455694)))

(declare-fun b!6844562 () Bool)

(assert (=> b!6844562 (= e!4127816 0)))

(declare-fun b!6844563 () Bool)

(assert (=> b!6844563 (= e!4127816 (+ 1 (size!40709 (t!380056 (t!380056 zl!343)))))))

(assert (= (and d!2151657 c!1274244) b!6844562))

(assert (= (and d!2151657 (not c!1274244)) b!6844563))

(declare-fun m!7585690 () Bool)

(assert (=> b!6844563 m!7585690))

(assert (=> b!6843726 d!2151657))

(declare-fun d!2151659 () Bool)

(declare-fun lt!2455695 () Bool)

(assert (=> d!2151659 (= lt!2455695 (select (content!12977 zl!343) lt!2455629))))

(declare-fun e!4127817 () Bool)

(assert (=> d!2151659 (= lt!2455695 e!4127817)))

(declare-fun res!2794437 () Bool)

(assert (=> d!2151659 (=> (not res!2794437) (not e!4127817))))

(assert (=> d!2151659 (= res!2794437 ((_ is Cons!66189) zl!343))))

(assert (=> d!2151659 (= (contains!20321 zl!343 lt!2455629) lt!2455695)))

(declare-fun b!6844564 () Bool)

(declare-fun e!4127818 () Bool)

(assert (=> b!6844564 (= e!4127817 e!4127818)))

(declare-fun res!2794438 () Bool)

(assert (=> b!6844564 (=> res!2794438 e!4127818)))

(assert (=> b!6844564 (= res!2794438 (= (h!72637 zl!343) lt!2455629))))

(declare-fun b!6844565 () Bool)

(assert (=> b!6844565 (= e!4127818 (contains!20321 (t!380056 zl!343) lt!2455629))))

(assert (= (and d!2151659 res!2794437) b!6844564))

(assert (= (and b!6844564 (not res!2794438)) b!6844565))

(assert (=> d!2151659 m!7585082))

(declare-fun m!7585692 () Bool)

(assert (=> d!2151659 m!7585692))

(declare-fun m!7585694 () Bool)

(assert (=> b!6844565 m!7585694))

(assert (=> b!6843750 d!2151659))

(declare-fun b!6844566 () Bool)

(declare-fun e!4127824 () Bool)

(assert (=> b!6844566 (= e!4127824 (matchR!8854 (derivativeStep!5319 (derivativeStep!5319 r!7292 (head!13721 s!2326)) (head!13721 (tail!12800 s!2326))) (tail!12800 (tail!12800 s!2326))))))

(declare-fun b!6844567 () Bool)

(declare-fun e!4127822 () Bool)

(assert (=> b!6844567 (= e!4127822 (= (head!13721 (tail!12800 s!2326)) (c!1273977 (derivativeStep!5319 r!7292 (head!13721 s!2326)))))))

(declare-fun b!6844568 () Bool)

(declare-fun e!4127825 () Bool)

(declare-fun e!4127821 () Bool)

(assert (=> b!6844568 (= e!4127825 e!4127821)))

(declare-fun c!1274246 () Bool)

(assert (=> b!6844568 (= c!1274246 ((_ is EmptyLang!16671) (derivativeStep!5319 r!7292 (head!13721 s!2326))))))

(declare-fun b!6844569 () Bool)

(declare-fun lt!2455696 () Bool)

(assert (=> b!6844569 (= e!4127821 (not lt!2455696))))

(declare-fun b!6844570 () Bool)

(declare-fun e!4127819 () Bool)

(declare-fun e!4127823 () Bool)

(assert (=> b!6844570 (= e!4127819 e!4127823)))

(declare-fun res!2794439 () Bool)

(assert (=> b!6844570 (=> (not res!2794439) (not e!4127823))))

(assert (=> b!6844570 (= res!2794439 (not lt!2455696))))

(declare-fun bm!623295 () Bool)

(declare-fun call!623300 () Bool)

(assert (=> bm!623295 (= call!623300 (isEmpty!38565 (tail!12800 s!2326)))))

(declare-fun b!6844571 () Bool)

(declare-fun e!4127820 () Bool)

(assert (=> b!6844571 (= e!4127823 e!4127820)))

(declare-fun res!2794441 () Bool)

(assert (=> b!6844571 (=> res!2794441 e!4127820)))

(assert (=> b!6844571 (= res!2794441 call!623300)))

(declare-fun b!6844572 () Bool)

(assert (=> b!6844572 (= e!4127825 (= lt!2455696 call!623300))))

(declare-fun b!6844573 () Bool)

(declare-fun res!2794443 () Bool)

(assert (=> b!6844573 (=> res!2794443 e!4127820)))

(assert (=> b!6844573 (= res!2794443 (not (isEmpty!38565 (tail!12800 (tail!12800 s!2326)))))))

(declare-fun b!6844574 () Bool)

(declare-fun res!2794446 () Bool)

(assert (=> b!6844574 (=> (not res!2794446) (not e!4127822))))

(assert (=> b!6844574 (= res!2794446 (not call!623300))))

(declare-fun d!2151661 () Bool)

(assert (=> d!2151661 e!4127825))

(declare-fun c!1274245 () Bool)

(assert (=> d!2151661 (= c!1274245 ((_ is EmptyExpr!16671) (derivativeStep!5319 r!7292 (head!13721 s!2326))))))

(assert (=> d!2151661 (= lt!2455696 e!4127824)))

(declare-fun c!1274247 () Bool)

(assert (=> d!2151661 (= c!1274247 (isEmpty!38565 (tail!12800 s!2326)))))

(assert (=> d!2151661 (validRegex!8407 (derivativeStep!5319 r!7292 (head!13721 s!2326)))))

(assert (=> d!2151661 (= (matchR!8854 (derivativeStep!5319 r!7292 (head!13721 s!2326)) (tail!12800 s!2326)) lt!2455696)))

(declare-fun b!6844575 () Bool)

(assert (=> b!6844575 (= e!4127820 (not (= (head!13721 (tail!12800 s!2326)) (c!1273977 (derivativeStep!5319 r!7292 (head!13721 s!2326))))))))

(declare-fun b!6844576 () Bool)

(declare-fun res!2794440 () Bool)

(assert (=> b!6844576 (=> res!2794440 e!4127819)))

(assert (=> b!6844576 (= res!2794440 e!4127822)))

(declare-fun res!2794442 () Bool)

(assert (=> b!6844576 (=> (not res!2794442) (not e!4127822))))

(assert (=> b!6844576 (= res!2794442 lt!2455696)))

(declare-fun b!6844577 () Bool)

(assert (=> b!6844577 (= e!4127824 (nullable!6636 (derivativeStep!5319 r!7292 (head!13721 s!2326))))))

(declare-fun b!6844578 () Bool)

(declare-fun res!2794444 () Bool)

(assert (=> b!6844578 (=> (not res!2794444) (not e!4127822))))

(assert (=> b!6844578 (= res!2794444 (isEmpty!38565 (tail!12800 (tail!12800 s!2326))))))

(declare-fun b!6844579 () Bool)

(declare-fun res!2794445 () Bool)

(assert (=> b!6844579 (=> res!2794445 e!4127819)))

(assert (=> b!6844579 (= res!2794445 (not ((_ is ElementMatch!16671) (derivativeStep!5319 r!7292 (head!13721 s!2326)))))))

(assert (=> b!6844579 (= e!4127821 e!4127819)))

(assert (= (and d!2151661 c!1274247) b!6844577))

(assert (= (and d!2151661 (not c!1274247)) b!6844566))

(assert (= (and d!2151661 c!1274245) b!6844572))

(assert (= (and d!2151661 (not c!1274245)) b!6844568))

(assert (= (and b!6844568 c!1274246) b!6844569))

(assert (= (and b!6844568 (not c!1274246)) b!6844579))

(assert (= (and b!6844579 (not res!2794445)) b!6844576))

(assert (= (and b!6844576 res!2794442) b!6844574))

(assert (= (and b!6844574 res!2794446) b!6844578))

(assert (= (and b!6844578 res!2794444) b!6844567))

(assert (= (and b!6844576 (not res!2794440)) b!6844570))

(assert (= (and b!6844570 res!2794439) b!6844571))

(assert (= (and b!6844571 (not res!2794441)) b!6844573))

(assert (= (and b!6844573 (not res!2794443)) b!6844575))

(assert (= (or b!6844572 b!6844571 b!6844574) bm!623295))

(assert (=> bm!623295 m!7585000))

(assert (=> bm!623295 m!7585002))

(assert (=> d!2151661 m!7585000))

(assert (=> d!2151661 m!7585002))

(assert (=> d!2151661 m!7585066))

(declare-fun m!7585696 () Bool)

(assert (=> d!2151661 m!7585696))

(assert (=> b!6844567 m!7585000))

(declare-fun m!7585698 () Bool)

(assert (=> b!6844567 m!7585698))

(assert (=> b!6844578 m!7585000))

(declare-fun m!7585700 () Bool)

(assert (=> b!6844578 m!7585700))

(assert (=> b!6844578 m!7585700))

(declare-fun m!7585702 () Bool)

(assert (=> b!6844578 m!7585702))

(assert (=> b!6844577 m!7585066))

(declare-fun m!7585704 () Bool)

(assert (=> b!6844577 m!7585704))

(assert (=> b!6844575 m!7585000))

(assert (=> b!6844575 m!7585698))

(assert (=> b!6844566 m!7585000))

(assert (=> b!6844566 m!7585698))

(assert (=> b!6844566 m!7585066))

(assert (=> b!6844566 m!7585698))

(declare-fun m!7585706 () Bool)

(assert (=> b!6844566 m!7585706))

(assert (=> b!6844566 m!7585000))

(assert (=> b!6844566 m!7585700))

(assert (=> b!6844566 m!7585706))

(assert (=> b!6844566 m!7585700))

(declare-fun m!7585708 () Bool)

(assert (=> b!6844566 m!7585708))

(assert (=> b!6844573 m!7585000))

(assert (=> b!6844573 m!7585700))

(assert (=> b!6844573 m!7585700))

(assert (=> b!6844573 m!7585702))

(assert (=> b!6843707 d!2151661))

(declare-fun d!2151663 () Bool)

(declare-fun lt!2455699 () Regex!16671)

(assert (=> d!2151663 (validRegex!8407 lt!2455699)))

(declare-fun e!4127840 () Regex!16671)

(assert (=> d!2151663 (= lt!2455699 e!4127840)))

(declare-fun c!1274262 () Bool)

(assert (=> d!2151663 (= c!1274262 (or ((_ is EmptyExpr!16671) r!7292) ((_ is EmptyLang!16671) r!7292)))))

(assert (=> d!2151663 (validRegex!8407 r!7292)))

(assert (=> d!2151663 (= (derivativeStep!5319 r!7292 (head!13721 s!2326)) lt!2455699)))

(declare-fun b!6844600 () Bool)

(declare-fun e!4127838 () Regex!16671)

(declare-fun call!623311 () Regex!16671)

(assert (=> b!6844600 (= e!4127838 (Concat!25516 call!623311 r!7292))))

(declare-fun bm!623304 () Bool)

(declare-fun c!1274258 () Bool)

(declare-fun call!623310 () Regex!16671)

(declare-fun c!1274259 () Bool)

(assert (=> bm!623304 (= call!623310 (derivativeStep!5319 (ite c!1274258 (regTwo!33855 r!7292) (ite c!1274259 (regTwo!33854 r!7292) (regOne!33854 r!7292))) (head!13721 s!2326)))))

(declare-fun b!6844601 () Bool)

(declare-fun e!4127839 () Regex!16671)

(declare-fun call!623312 () Regex!16671)

(assert (=> b!6844601 (= e!4127839 (Union!16671 (Concat!25516 call!623312 (regTwo!33854 r!7292)) EmptyLang!16671))))

(declare-fun bm!623305 () Bool)

(declare-fun call!623309 () Regex!16671)

(assert (=> bm!623305 (= call!623311 call!623309)))

(declare-fun b!6844602 () Bool)

(declare-fun e!4127837 () Regex!16671)

(assert (=> b!6844602 (= e!4127837 (Union!16671 call!623309 call!623310))))

(declare-fun b!6844603 () Bool)

(declare-fun e!4127836 () Regex!16671)

(assert (=> b!6844603 (= e!4127840 e!4127836)))

(declare-fun c!1274260 () Bool)

(assert (=> b!6844603 (= c!1274260 ((_ is ElementMatch!16671) r!7292))))

(declare-fun c!1274261 () Bool)

(declare-fun bm!623306 () Bool)

(assert (=> bm!623306 (= call!623309 (derivativeStep!5319 (ite c!1274258 (regOne!33855 r!7292) (ite c!1274261 (reg!17000 r!7292) (regOne!33854 r!7292))) (head!13721 s!2326)))))

(declare-fun b!6844604 () Bool)

(assert (=> b!6844604 (= e!4127840 EmptyLang!16671)))

(declare-fun b!6844605 () Bool)

(assert (=> b!6844605 (= c!1274259 (nullable!6636 (regOne!33854 r!7292)))))

(assert (=> b!6844605 (= e!4127838 e!4127839)))

(declare-fun b!6844606 () Bool)

(assert (=> b!6844606 (= e!4127839 (Union!16671 (Concat!25516 call!623311 (regTwo!33854 r!7292)) call!623312))))

(declare-fun b!6844607 () Bool)

(assert (=> b!6844607 (= e!4127837 e!4127838)))

(assert (=> b!6844607 (= c!1274261 ((_ is Star!16671) r!7292))))

(declare-fun b!6844608 () Bool)

(assert (=> b!6844608 (= e!4127836 (ite (= (head!13721 s!2326) (c!1273977 r!7292)) EmptyExpr!16671 EmptyLang!16671))))

(declare-fun b!6844609 () Bool)

(assert (=> b!6844609 (= c!1274258 ((_ is Union!16671) r!7292))))

(assert (=> b!6844609 (= e!4127836 e!4127837)))

(declare-fun bm!623307 () Bool)

(assert (=> bm!623307 (= call!623312 call!623310)))

(assert (= (and d!2151663 c!1274262) b!6844604))

(assert (= (and d!2151663 (not c!1274262)) b!6844603))

(assert (= (and b!6844603 c!1274260) b!6844608))

(assert (= (and b!6844603 (not c!1274260)) b!6844609))

(assert (= (and b!6844609 c!1274258) b!6844602))

(assert (= (and b!6844609 (not c!1274258)) b!6844607))

(assert (= (and b!6844607 c!1274261) b!6844600))

(assert (= (and b!6844607 (not c!1274261)) b!6844605))

(assert (= (and b!6844605 c!1274259) b!6844606))

(assert (= (and b!6844605 (not c!1274259)) b!6844601))

(assert (= (or b!6844606 b!6844601) bm!623307))

(assert (= (or b!6844600 b!6844606) bm!623305))

(assert (= (or b!6844602 bm!623307) bm!623304))

(assert (= (or b!6844602 bm!623305) bm!623306))

(declare-fun m!7585710 () Bool)

(assert (=> d!2151663 m!7585710))

(assert (=> d!2151663 m!7584894))

(assert (=> bm!623304 m!7584998))

(declare-fun m!7585712 () Bool)

(assert (=> bm!623304 m!7585712))

(assert (=> bm!623306 m!7584998))

(declare-fun m!7585714 () Bool)

(assert (=> bm!623306 m!7585714))

(declare-fun m!7585716 () Bool)

(assert (=> b!6844605 m!7585716))

(assert (=> b!6843707 d!2151663))

(assert (=> b!6843707 d!2151577))

(assert (=> b!6843707 d!2151581))

(assert (=> d!2151395 d!2151603))

(assert (=> d!2151395 d!2151413))

(assert (=> b!6843561 d!2151579))

(assert (=> b!6843561 d!2151581))

(declare-fun d!2151665 () Bool)

(assert (=> d!2151665 (= (nullable!6636 (reg!17000 r!7292)) (nullableFct!2520 (reg!17000 r!7292)))))

(declare-fun bs!1829605 () Bool)

(assert (= bs!1829605 d!2151665))

(declare-fun m!7585718 () Bool)

(assert (=> bs!1829605 m!7585718))

(assert (=> b!6843798 d!2151665))

(declare-fun b!6844610 () Bool)

(declare-fun e!4127841 () Bool)

(declare-fun e!4127847 () Bool)

(assert (=> b!6844610 (= e!4127841 e!4127847)))

(declare-fun c!1274263 () Bool)

(assert (=> b!6844610 (= c!1274263 ((_ is Star!16671) lt!2455637))))

(declare-fun b!6844611 () Bool)

(declare-fun e!4127842 () Bool)

(declare-fun call!623313 () Bool)

(assert (=> b!6844611 (= e!4127842 call!623313)))

(declare-fun b!6844612 () Bool)

(declare-fun res!2794447 () Bool)

(declare-fun e!4127846 () Bool)

(assert (=> b!6844612 (=> (not res!2794447) (not e!4127846))))

(declare-fun call!623315 () Bool)

(assert (=> b!6844612 (= res!2794447 call!623315)))

(declare-fun e!4127845 () Bool)

(assert (=> b!6844612 (= e!4127845 e!4127846)))

(declare-fun b!6844613 () Bool)

(assert (=> b!6844613 (= e!4127847 e!4127842)))

(declare-fun res!2794451 () Bool)

(assert (=> b!6844613 (= res!2794451 (not (nullable!6636 (reg!17000 lt!2455637))))))

(assert (=> b!6844613 (=> (not res!2794451) (not e!4127842))))

(declare-fun b!6844614 () Bool)

(declare-fun e!4127844 () Bool)

(declare-fun e!4127843 () Bool)

(assert (=> b!6844614 (= e!4127844 e!4127843)))

(declare-fun res!2794448 () Bool)

(assert (=> b!6844614 (=> (not res!2794448) (not e!4127843))))

(assert (=> b!6844614 (= res!2794448 call!623315)))

(declare-fun bm!623308 () Bool)

(declare-fun call!623314 () Bool)

(assert (=> bm!623308 (= call!623314 call!623313)))

(declare-fun bm!623309 () Bool)

(declare-fun c!1274264 () Bool)

(assert (=> bm!623309 (= call!623315 (validRegex!8407 (ite c!1274264 (regOne!33855 lt!2455637) (regOne!33854 lt!2455637))))))

(declare-fun bm!623310 () Bool)

(assert (=> bm!623310 (= call!623313 (validRegex!8407 (ite c!1274263 (reg!17000 lt!2455637) (ite c!1274264 (regTwo!33855 lt!2455637) (regTwo!33854 lt!2455637)))))))

(declare-fun d!2151667 () Bool)

(declare-fun res!2794450 () Bool)

(assert (=> d!2151667 (=> res!2794450 e!4127841)))

(assert (=> d!2151667 (= res!2794450 ((_ is ElementMatch!16671) lt!2455637))))

(assert (=> d!2151667 (= (validRegex!8407 lt!2455637) e!4127841)))

(declare-fun b!6844615 () Bool)

(assert (=> b!6844615 (= e!4127847 e!4127845)))

(assert (=> b!6844615 (= c!1274264 ((_ is Union!16671) lt!2455637))))

(declare-fun b!6844616 () Bool)

(assert (=> b!6844616 (= e!4127843 call!623314)))

(declare-fun b!6844617 () Bool)

(assert (=> b!6844617 (= e!4127846 call!623314)))

(declare-fun b!6844618 () Bool)

(declare-fun res!2794449 () Bool)

(assert (=> b!6844618 (=> res!2794449 e!4127844)))

(assert (=> b!6844618 (= res!2794449 (not ((_ is Concat!25516) lt!2455637)))))

(assert (=> b!6844618 (= e!4127845 e!4127844)))

(assert (= (and d!2151667 (not res!2794450)) b!6844610))

(assert (= (and b!6844610 c!1274263) b!6844613))

(assert (= (and b!6844610 (not c!1274263)) b!6844615))

(assert (= (and b!6844613 res!2794451) b!6844611))

(assert (= (and b!6844615 c!1274264) b!6844612))

(assert (= (and b!6844615 (not c!1274264)) b!6844618))

(assert (= (and b!6844612 res!2794447) b!6844617))

(assert (= (and b!6844618 (not res!2794449)) b!6844614))

(assert (= (and b!6844614 res!2794448) b!6844616))

(assert (= (or b!6844617 b!6844616) bm!623308))

(assert (= (or b!6844612 b!6844614) bm!623309))

(assert (= (or b!6844611 bm!623308) bm!623310))

(declare-fun m!7585720 () Bool)

(assert (=> b!6844613 m!7585720))

(declare-fun m!7585722 () Bool)

(assert (=> bm!623309 m!7585722))

(declare-fun m!7585724 () Bool)

(assert (=> bm!623310 m!7585724))

(assert (=> bs!1829393 d!2151667))

(declare-fun d!2151669 () Bool)

(declare-fun lt!2455700 () Bool)

(assert (=> d!2151669 (= lt!2455700 (select (content!12977 (t!380056 zl!343)) (getWitness!938 zl!343 lambda!386979)))))

(declare-fun e!4127848 () Bool)

(assert (=> d!2151669 (= lt!2455700 e!4127848)))

(declare-fun res!2794452 () Bool)

(assert (=> d!2151669 (=> (not res!2794452) (not e!4127848))))

(assert (=> d!2151669 (= res!2794452 ((_ is Cons!66189) (t!380056 zl!343)))))

(assert (=> d!2151669 (= (contains!20321 (t!380056 zl!343) (getWitness!938 zl!343 lambda!386979)) lt!2455700)))

(declare-fun b!6844619 () Bool)

(declare-fun e!4127849 () Bool)

(assert (=> b!6844619 (= e!4127848 e!4127849)))

(declare-fun res!2794453 () Bool)

(assert (=> b!6844619 (=> res!2794453 e!4127849)))

(assert (=> b!6844619 (= res!2794453 (= (h!72637 (t!380056 zl!343)) (getWitness!938 zl!343 lambda!386979)))))

(declare-fun b!6844620 () Bool)

(assert (=> b!6844620 (= e!4127849 (contains!20321 (t!380056 (t!380056 zl!343)) (getWitness!938 zl!343 lambda!386979)))))

(assert (= (and d!2151669 res!2794452) b!6844619))

(assert (= (and b!6844619 (not res!2794453)) b!6844620))

(declare-fun m!7585726 () Bool)

(assert (=> d!2151669 m!7585726))

(assert (=> d!2151669 m!7584904))

(declare-fun m!7585728 () Bool)

(assert (=> d!2151669 m!7585728))

(assert (=> b!6844620 m!7584904))

(declare-fun m!7585730 () Bool)

(assert (=> b!6844620 m!7585730))

(assert (=> b!6843734 d!2151669))

(assert (=> bs!1829391 d!2151591))

(declare-fun b!6844621 () Bool)

(declare-fun e!4127855 () Bool)

(assert (=> b!6844621 (= e!4127855 (matchR!8854 (derivativeStep!5319 (derivativeStep!5319 lt!2455564 (head!13721 s!2326)) (head!13721 (tail!12800 s!2326))) (tail!12800 (tail!12800 s!2326))))))

(declare-fun b!6844622 () Bool)

(declare-fun e!4127853 () Bool)

(assert (=> b!6844622 (= e!4127853 (= (head!13721 (tail!12800 s!2326)) (c!1273977 (derivativeStep!5319 lt!2455564 (head!13721 s!2326)))))))

(declare-fun b!6844623 () Bool)

(declare-fun e!4127856 () Bool)

(declare-fun e!4127852 () Bool)

(assert (=> b!6844623 (= e!4127856 e!4127852)))

(declare-fun c!1274266 () Bool)

(assert (=> b!6844623 (= c!1274266 ((_ is EmptyLang!16671) (derivativeStep!5319 lt!2455564 (head!13721 s!2326))))))

(declare-fun b!6844624 () Bool)

(declare-fun lt!2455701 () Bool)

(assert (=> b!6844624 (= e!4127852 (not lt!2455701))))

(declare-fun b!6844625 () Bool)

(declare-fun e!4127850 () Bool)

(declare-fun e!4127854 () Bool)

(assert (=> b!6844625 (= e!4127850 e!4127854)))

(declare-fun res!2794454 () Bool)

(assert (=> b!6844625 (=> (not res!2794454) (not e!4127854))))

(assert (=> b!6844625 (= res!2794454 (not lt!2455701))))

(declare-fun bm!623311 () Bool)

(declare-fun call!623316 () Bool)

(assert (=> bm!623311 (= call!623316 (isEmpty!38565 (tail!12800 s!2326)))))

(declare-fun b!6844626 () Bool)

(declare-fun e!4127851 () Bool)

(assert (=> b!6844626 (= e!4127854 e!4127851)))

(declare-fun res!2794456 () Bool)

(assert (=> b!6844626 (=> res!2794456 e!4127851)))

(assert (=> b!6844626 (= res!2794456 call!623316)))

(declare-fun b!6844627 () Bool)

(assert (=> b!6844627 (= e!4127856 (= lt!2455701 call!623316))))

(declare-fun b!6844628 () Bool)

(declare-fun res!2794458 () Bool)

(assert (=> b!6844628 (=> res!2794458 e!4127851)))

(assert (=> b!6844628 (= res!2794458 (not (isEmpty!38565 (tail!12800 (tail!12800 s!2326)))))))

(declare-fun b!6844629 () Bool)

(declare-fun res!2794461 () Bool)

(assert (=> b!6844629 (=> (not res!2794461) (not e!4127853))))

(assert (=> b!6844629 (= res!2794461 (not call!623316))))

(declare-fun d!2151671 () Bool)

(assert (=> d!2151671 e!4127856))

(declare-fun c!1274265 () Bool)

(assert (=> d!2151671 (= c!1274265 ((_ is EmptyExpr!16671) (derivativeStep!5319 lt!2455564 (head!13721 s!2326))))))

(assert (=> d!2151671 (= lt!2455701 e!4127855)))

(declare-fun c!1274267 () Bool)

(assert (=> d!2151671 (= c!1274267 (isEmpty!38565 (tail!12800 s!2326)))))

(assert (=> d!2151671 (validRegex!8407 (derivativeStep!5319 lt!2455564 (head!13721 s!2326)))))

(assert (=> d!2151671 (= (matchR!8854 (derivativeStep!5319 lt!2455564 (head!13721 s!2326)) (tail!12800 s!2326)) lt!2455701)))

(declare-fun b!6844630 () Bool)

(assert (=> b!6844630 (= e!4127851 (not (= (head!13721 (tail!12800 s!2326)) (c!1273977 (derivativeStep!5319 lt!2455564 (head!13721 s!2326))))))))

(declare-fun b!6844631 () Bool)

(declare-fun res!2794455 () Bool)

(assert (=> b!6844631 (=> res!2794455 e!4127850)))

(assert (=> b!6844631 (= res!2794455 e!4127853)))

(declare-fun res!2794457 () Bool)

(assert (=> b!6844631 (=> (not res!2794457) (not e!4127853))))

(assert (=> b!6844631 (= res!2794457 lt!2455701)))

(declare-fun b!6844632 () Bool)

(assert (=> b!6844632 (= e!4127855 (nullable!6636 (derivativeStep!5319 lt!2455564 (head!13721 s!2326))))))

(declare-fun b!6844633 () Bool)

(declare-fun res!2794459 () Bool)

(assert (=> b!6844633 (=> (not res!2794459) (not e!4127853))))

(assert (=> b!6844633 (= res!2794459 (isEmpty!38565 (tail!12800 (tail!12800 s!2326))))))

(declare-fun b!6844634 () Bool)

(declare-fun res!2794460 () Bool)

(assert (=> b!6844634 (=> res!2794460 e!4127850)))

(assert (=> b!6844634 (= res!2794460 (not ((_ is ElementMatch!16671) (derivativeStep!5319 lt!2455564 (head!13721 s!2326)))))))

(assert (=> b!6844634 (= e!4127852 e!4127850)))

(assert (= (and d!2151671 c!1274267) b!6844632))

(assert (= (and d!2151671 (not c!1274267)) b!6844621))

(assert (= (and d!2151671 c!1274265) b!6844627))

(assert (= (and d!2151671 (not c!1274265)) b!6844623))

(assert (= (and b!6844623 c!1274266) b!6844624))

(assert (= (and b!6844623 (not c!1274266)) b!6844634))

(assert (= (and b!6844634 (not res!2794460)) b!6844631))

(assert (= (and b!6844631 res!2794457) b!6844629))

(assert (= (and b!6844629 res!2794461) b!6844633))

(assert (= (and b!6844633 res!2794459) b!6844622))

(assert (= (and b!6844631 (not res!2794455)) b!6844625))

(assert (= (and b!6844625 res!2794454) b!6844626))

(assert (= (and b!6844626 (not res!2794456)) b!6844628))

(assert (= (and b!6844628 (not res!2794458)) b!6844630))

(assert (= (or b!6844627 b!6844626 b!6844629) bm!623311))

(assert (=> bm!623311 m!7585000))

(assert (=> bm!623311 m!7585002))

(assert (=> d!2151671 m!7585000))

(assert (=> d!2151671 m!7585002))

(assert (=> d!2151671 m!7585006))

(declare-fun m!7585732 () Bool)

(assert (=> d!2151671 m!7585732))

(assert (=> b!6844622 m!7585000))

(assert (=> b!6844622 m!7585698))

(assert (=> b!6844633 m!7585000))

(assert (=> b!6844633 m!7585700))

(assert (=> b!6844633 m!7585700))

(assert (=> b!6844633 m!7585702))

(assert (=> b!6844632 m!7585006))

(declare-fun m!7585734 () Bool)

(assert (=> b!6844632 m!7585734))

(assert (=> b!6844630 m!7585000))

(assert (=> b!6844630 m!7585698))

(assert (=> b!6844621 m!7585000))

(assert (=> b!6844621 m!7585698))

(assert (=> b!6844621 m!7585006))

(assert (=> b!6844621 m!7585698))

(declare-fun m!7585736 () Bool)

(assert (=> b!6844621 m!7585736))

(assert (=> b!6844621 m!7585000))

(assert (=> b!6844621 m!7585700))

(assert (=> b!6844621 m!7585736))

(assert (=> b!6844621 m!7585700))

(declare-fun m!7585738 () Bool)

(assert (=> b!6844621 m!7585738))

(assert (=> b!6844628 m!7585000))

(assert (=> b!6844628 m!7585700))

(assert (=> b!6844628 m!7585700))

(assert (=> b!6844628 m!7585702))

(assert (=> b!6843549 d!2151671))

(declare-fun d!2151673 () Bool)

(declare-fun lt!2455702 () Regex!16671)

(assert (=> d!2151673 (validRegex!8407 lt!2455702)))

(declare-fun e!4127861 () Regex!16671)

(assert (=> d!2151673 (= lt!2455702 e!4127861)))

(declare-fun c!1274272 () Bool)

(assert (=> d!2151673 (= c!1274272 (or ((_ is EmptyExpr!16671) lt!2455564) ((_ is EmptyLang!16671) lt!2455564)))))

(assert (=> d!2151673 (validRegex!8407 lt!2455564)))

(assert (=> d!2151673 (= (derivativeStep!5319 lt!2455564 (head!13721 s!2326)) lt!2455702)))

(declare-fun b!6844635 () Bool)

(declare-fun e!4127859 () Regex!16671)

(declare-fun call!623319 () Regex!16671)

(assert (=> b!6844635 (= e!4127859 (Concat!25516 call!623319 lt!2455564))))

(declare-fun call!623318 () Regex!16671)

(declare-fun c!1274269 () Bool)

(declare-fun bm!623312 () Bool)

(declare-fun c!1274268 () Bool)

(assert (=> bm!623312 (= call!623318 (derivativeStep!5319 (ite c!1274268 (regTwo!33855 lt!2455564) (ite c!1274269 (regTwo!33854 lt!2455564) (regOne!33854 lt!2455564))) (head!13721 s!2326)))))

(declare-fun b!6844636 () Bool)

(declare-fun e!4127860 () Regex!16671)

(declare-fun call!623320 () Regex!16671)

(assert (=> b!6844636 (= e!4127860 (Union!16671 (Concat!25516 call!623320 (regTwo!33854 lt!2455564)) EmptyLang!16671))))

(declare-fun bm!623313 () Bool)

(declare-fun call!623317 () Regex!16671)

(assert (=> bm!623313 (= call!623319 call!623317)))

(declare-fun b!6844637 () Bool)

(declare-fun e!4127858 () Regex!16671)

(assert (=> b!6844637 (= e!4127858 (Union!16671 call!623317 call!623318))))

(declare-fun b!6844638 () Bool)

(declare-fun e!4127857 () Regex!16671)

(assert (=> b!6844638 (= e!4127861 e!4127857)))

(declare-fun c!1274270 () Bool)

(assert (=> b!6844638 (= c!1274270 ((_ is ElementMatch!16671) lt!2455564))))

(declare-fun bm!623314 () Bool)

(declare-fun c!1274271 () Bool)

(assert (=> bm!623314 (= call!623317 (derivativeStep!5319 (ite c!1274268 (regOne!33855 lt!2455564) (ite c!1274271 (reg!17000 lt!2455564) (regOne!33854 lt!2455564))) (head!13721 s!2326)))))

(declare-fun b!6844639 () Bool)

(assert (=> b!6844639 (= e!4127861 EmptyLang!16671)))

(declare-fun b!6844640 () Bool)

(assert (=> b!6844640 (= c!1274269 (nullable!6636 (regOne!33854 lt!2455564)))))

(assert (=> b!6844640 (= e!4127859 e!4127860)))

(declare-fun b!6844641 () Bool)

(assert (=> b!6844641 (= e!4127860 (Union!16671 (Concat!25516 call!623319 (regTwo!33854 lt!2455564)) call!623320))))

(declare-fun b!6844642 () Bool)

(assert (=> b!6844642 (= e!4127858 e!4127859)))

(assert (=> b!6844642 (= c!1274271 ((_ is Star!16671) lt!2455564))))

(declare-fun b!6844643 () Bool)

(assert (=> b!6844643 (= e!4127857 (ite (= (head!13721 s!2326) (c!1273977 lt!2455564)) EmptyExpr!16671 EmptyLang!16671))))

(declare-fun b!6844644 () Bool)

(assert (=> b!6844644 (= c!1274268 ((_ is Union!16671) lt!2455564))))

(assert (=> b!6844644 (= e!4127857 e!4127858)))

(declare-fun bm!623315 () Bool)

(assert (=> bm!623315 (= call!623320 call!623318)))

(assert (= (and d!2151673 c!1274272) b!6844639))

(assert (= (and d!2151673 (not c!1274272)) b!6844638))

(assert (= (and b!6844638 c!1274270) b!6844643))

(assert (= (and b!6844638 (not c!1274270)) b!6844644))

(assert (= (and b!6844644 c!1274268) b!6844637))

(assert (= (and b!6844644 (not c!1274268)) b!6844642))

(assert (= (and b!6844642 c!1274271) b!6844635))

(assert (= (and b!6844642 (not c!1274271)) b!6844640))

(assert (= (and b!6844640 c!1274269) b!6844641))

(assert (= (and b!6844640 (not c!1274269)) b!6844636))

(assert (= (or b!6844641 b!6844636) bm!623315))

(assert (= (or b!6844635 b!6844641) bm!623313))

(assert (= (or b!6844637 bm!623315) bm!623312))

(assert (= (or b!6844637 bm!623313) bm!623314))

(declare-fun m!7585740 () Bool)

(assert (=> d!2151673 m!7585740))

(assert (=> d!2151673 m!7584910))

(assert (=> bm!623312 m!7584998))

(declare-fun m!7585742 () Bool)

(assert (=> bm!623312 m!7585742))

(assert (=> bm!623314 m!7584998))

(declare-fun m!7585744 () Bool)

(assert (=> bm!623314 m!7585744))

(declare-fun m!7585746 () Bool)

(assert (=> b!6844640 m!7585746))

(assert (=> b!6843549 d!2151673))

(assert (=> b!6843549 d!2151577))

(assert (=> b!6843549 d!2151581))

(declare-fun bs!1829606 () Bool)

(declare-fun d!2151675 () Bool)

(assert (= bs!1829606 (and d!2151675 d!2151591)))

(declare-fun lambda!387079 () Int)

(assert (=> bs!1829606 (= lambda!387079 lambda!387063)))

(declare-fun bs!1829607 () Bool)

(assert (= bs!1829607 (and d!2151675 d!2151623)))

(assert (=> bs!1829607 (not (= lambda!387079 lambda!387073))))

(declare-fun bs!1829608 () Bool)

(assert (= bs!1829608 (and d!2151675 d!2151427)))

(assert (=> bs!1829608 (= lambda!387079 lambda!387035)))

(declare-fun bs!1829609 () Bool)

(assert (= bs!1829609 (and d!2151675 d!2151417)))

(assert (=> bs!1829609 (= lambda!387079 lambda!387022)))

(declare-fun bs!1829610 () Bool)

(assert (= bs!1829610 (and d!2151675 d!2151621)))

(assert (=> bs!1829610 (not (= lambda!387079 lambda!387070))))

(declare-fun bs!1829611 () Bool)

(assert (= bs!1829611 (and d!2151675 d!2151423)))

(assert (=> bs!1829611 (not (= lambda!387079 lambda!387026))))

(declare-fun bs!1829612 () Bool)

(assert (= bs!1829612 (and d!2151675 d!2151655)))

(assert (=> bs!1829612 (= lambda!387079 lambda!387078)))

(declare-fun bs!1829613 () Bool)

(assert (= bs!1829613 (and d!2151675 b!6843348)))

(assert (=> bs!1829613 (not (= lambda!387079 lambda!386978))))

(declare-fun bs!1829614 () Bool)

(assert (= bs!1829614 (and d!2151675 d!2151425)))

(assert (=> bs!1829614 (= lambda!387079 lambda!387031)))

(assert (=> bs!1829614 (not (= lambda!387079 lambda!387032))))

(declare-fun bs!1829615 () Bool)

(assert (= bs!1829615 (and d!2151675 d!2151599)))

(assert (=> bs!1829615 (= lambda!387079 lambda!387065)))

(declare-fun bs!1829616 () Bool)

(assert (= bs!1829616 (and d!2151675 d!2151593)))

(assert (=> bs!1829616 (= lambda!387079 lambda!387064)))

(declare-fun bs!1829617 () Bool)

(assert (= bs!1829617 (and d!2151675 d!2151419)))

(assert (=> bs!1829617 (= lambda!387079 lambda!387023)))

(declare-fun bs!1829618 () Bool)

(assert (= bs!1829618 (and d!2151675 d!2151587)))

(assert (=> bs!1829618 (= lambda!387079 lambda!387060)))

(assert (=> d!2151675 (= (inv!84924 (h!72637 (t!380056 zl!343))) (forall!15850 (exprs!6555 (h!72637 (t!380056 zl!343))) lambda!387079))))

(declare-fun bs!1829619 () Bool)

(assert (= bs!1829619 d!2151675))

(declare-fun m!7585748 () Bool)

(assert (=> bs!1829619 m!7585748))

(assert (=> b!6843832 d!2151675))

(declare-fun d!2151677 () Bool)

(declare-fun choose!51041 (Int) Bool)

(assert (=> d!2151677 (= (Exists!3735 (ite c!1274047 lambda!387012 lambda!387013)) (choose!51041 (ite c!1274047 lambda!387012 lambda!387013)))))

(declare-fun bs!1829620 () Bool)

(assert (= bs!1829620 d!2151677))

(declare-fun m!7585750 () Bool)

(assert (=> bs!1829620 m!7585750))

(assert (=> bm!623214 d!2151677))

(declare-fun d!2151679 () Bool)

(declare-fun c!1274273 () Bool)

(assert (=> d!2151679 (= c!1274273 ((_ is Nil!66189) zl!343))))

(declare-fun e!4127862 () (InoxSet Context!12110))

(assert (=> d!2151679 (= (content!12977 zl!343) e!4127862)))

(declare-fun b!6844645 () Bool)

(assert (=> b!6844645 (= e!4127862 ((as const (Array Context!12110 Bool)) false))))

(declare-fun b!6844646 () Bool)

(assert (=> b!6844646 (= e!4127862 ((_ map or) (store ((as const (Array Context!12110 Bool)) false) (h!72637 zl!343) true) (content!12977 (t!380056 zl!343))))))

(assert (= (and d!2151679 c!1274273) b!6844645))

(assert (= (and d!2151679 (not c!1274273)) b!6844646))

(declare-fun m!7585752 () Bool)

(assert (=> b!6844646 m!7585752))

(assert (=> b!6844646 m!7585726))

(assert (=> d!2151405 d!2151679))

(assert (=> d!2151397 d!2151395))

(assert (=> d!2151397 d!2151379))

(declare-fun d!2151681 () Bool)

(assert (=> d!2151681 (= (matchR!8854 r!7292 s!2326) (matchRSpec!3772 r!7292 s!2326))))

(assert (=> d!2151681 true))

(declare-fun _$88!5696 () Unit!160045)

(assert (=> d!2151681 (= (choose!51036 r!7292 s!2326) _$88!5696)))

(declare-fun bs!1829621 () Bool)

(assert (= bs!1829621 d!2151681))

(assert (=> bs!1829621 m!7584916))

(assert (=> bs!1829621 m!7584914))

(assert (=> d!2151397 d!2151681))

(assert (=> d!2151397 d!2151413))

(declare-fun b!6844647 () Bool)

(declare-fun e!4127863 () Bool)

(declare-fun e!4127869 () Bool)

(assert (=> b!6844647 (= e!4127863 e!4127869)))

(declare-fun c!1274274 () Bool)

(assert (=> b!6844647 (= c!1274274 ((_ is Star!16671) (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))))))

(declare-fun b!6844648 () Bool)

(declare-fun e!4127864 () Bool)

(declare-fun call!623321 () Bool)

(assert (=> b!6844648 (= e!4127864 call!623321)))

(declare-fun b!6844649 () Bool)

(declare-fun res!2794462 () Bool)

(declare-fun e!4127868 () Bool)

(assert (=> b!6844649 (=> (not res!2794462) (not e!4127868))))

(declare-fun call!623323 () Bool)

(assert (=> b!6844649 (= res!2794462 call!623323)))

(declare-fun e!4127867 () Bool)

(assert (=> b!6844649 (= e!4127867 e!4127868)))

(declare-fun b!6844650 () Bool)

(assert (=> b!6844650 (= e!4127869 e!4127864)))

(declare-fun res!2794466 () Bool)

(assert (=> b!6844650 (= res!2794466 (not (nullable!6636 (reg!17000 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))))))))

(assert (=> b!6844650 (=> (not res!2794466) (not e!4127864))))

(declare-fun b!6844651 () Bool)

(declare-fun e!4127866 () Bool)

(declare-fun e!4127865 () Bool)

(assert (=> b!6844651 (= e!4127866 e!4127865)))

(declare-fun res!2794463 () Bool)

(assert (=> b!6844651 (=> (not res!2794463) (not e!4127865))))

(assert (=> b!6844651 (= res!2794463 call!623323)))

(declare-fun bm!623316 () Bool)

(declare-fun call!623322 () Bool)

(assert (=> bm!623316 (= call!623322 call!623321)))

(declare-fun c!1274275 () Bool)

(declare-fun bm!623317 () Bool)

(assert (=> bm!623317 (= call!623323 (validRegex!8407 (ite c!1274275 (regOne!33855 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))) (regOne!33854 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))))))))

(declare-fun bm!623318 () Bool)

(assert (=> bm!623318 (= call!623321 (validRegex!8407 (ite c!1274274 (reg!17000 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))) (ite c!1274275 (regTwo!33855 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))) (regTwo!33854 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292))))))))))

(declare-fun d!2151683 () Bool)

(declare-fun res!2794465 () Bool)

(assert (=> d!2151683 (=> res!2794465 e!4127863)))

(assert (=> d!2151683 (= res!2794465 ((_ is ElementMatch!16671) (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))))))

(assert (=> d!2151683 (= (validRegex!8407 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))) e!4127863)))

(declare-fun b!6844652 () Bool)

(assert (=> b!6844652 (= e!4127869 e!4127867)))

(assert (=> b!6844652 (= c!1274275 ((_ is Union!16671) (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))))))

(declare-fun b!6844653 () Bool)

(assert (=> b!6844653 (= e!4127865 call!623322)))

(declare-fun b!6844654 () Bool)

(assert (=> b!6844654 (= e!4127868 call!623322)))

(declare-fun b!6844655 () Bool)

(declare-fun res!2794464 () Bool)

(assert (=> b!6844655 (=> res!2794464 e!4127866)))

(assert (=> b!6844655 (= res!2794464 (not ((_ is Concat!25516) (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292))))))))

(assert (=> b!6844655 (= e!4127867 e!4127866)))

(assert (= (and d!2151683 (not res!2794465)) b!6844647))

(assert (= (and b!6844647 c!1274274) b!6844650))

(assert (= (and b!6844647 (not c!1274274)) b!6844652))

(assert (= (and b!6844650 res!2794466) b!6844648))

(assert (= (and b!6844652 c!1274275) b!6844649))

(assert (= (and b!6844652 (not c!1274275)) b!6844655))

(assert (= (and b!6844649 res!2794462) b!6844654))

(assert (= (and b!6844655 (not res!2794464)) b!6844651))

(assert (= (and b!6844651 res!2794463) b!6844653))

(assert (= (or b!6844654 b!6844653) bm!623316))

(assert (= (or b!6844649 b!6844651) bm!623317))

(assert (= (or b!6844648 bm!623316) bm!623318))

(declare-fun m!7585754 () Bool)

(assert (=> b!6844650 m!7585754))

(declare-fun m!7585756 () Bool)

(assert (=> bm!623317 m!7585756))

(declare-fun m!7585758 () Bool)

(assert (=> bm!623318 m!7585758))

(assert (=> bm!623225 d!2151683))

(declare-fun b!6844656 () Bool)

(declare-fun e!4127870 () Bool)

(declare-fun tp!1874480 () Bool)

(assert (=> b!6844656 (= e!4127870 (and tp_is_empty!42595 tp!1874480))))

(assert (=> b!6843879 (= tp!1874319 e!4127870)))

(assert (= (and b!6843879 ((_ is Cons!66190) (t!380057 (t!380057 s!2326)))) b!6844656))

(declare-fun b!6844658 () Bool)

(declare-fun e!4127871 () Bool)

(declare-fun tp!1874481 () Bool)

(declare-fun tp!1874483 () Bool)

(assert (=> b!6844658 (= e!4127871 (and tp!1874481 tp!1874483))))

(declare-fun b!6844657 () Bool)

(assert (=> b!6844657 (= e!4127871 tp_is_empty!42595)))

(declare-fun b!6844659 () Bool)

(declare-fun tp!1874482 () Bool)

(assert (=> b!6844659 (= e!4127871 tp!1874482)))

(assert (=> b!6843850 (= tp!1874284 e!4127871)))

(declare-fun b!6844660 () Bool)

(declare-fun tp!1874484 () Bool)

(declare-fun tp!1874485 () Bool)

(assert (=> b!6844660 (= e!4127871 (and tp!1874484 tp!1874485))))

(assert (= (and b!6843850 ((_ is ElementMatch!16671) (reg!17000 (regTwo!33854 r!7292)))) b!6844657))

(assert (= (and b!6843850 ((_ is Concat!25516) (reg!17000 (regTwo!33854 r!7292)))) b!6844658))

(assert (= (and b!6843850 ((_ is Star!16671) (reg!17000 (regTwo!33854 r!7292)))) b!6844659))

(assert (= (and b!6843850 ((_ is Union!16671) (reg!17000 (regTwo!33854 r!7292)))) b!6844660))

(declare-fun b!6844662 () Bool)

(declare-fun e!4127872 () Bool)

(declare-fun tp!1874486 () Bool)

(declare-fun tp!1874488 () Bool)

(assert (=> b!6844662 (= e!4127872 (and tp!1874486 tp!1874488))))

(declare-fun b!6844661 () Bool)

(assert (=> b!6844661 (= e!4127872 tp_is_empty!42595)))

(declare-fun b!6844663 () Bool)

(declare-fun tp!1874487 () Bool)

(assert (=> b!6844663 (= e!4127872 tp!1874487)))

(assert (=> b!6843849 (= tp!1874283 e!4127872)))

(declare-fun b!6844664 () Bool)

(declare-fun tp!1874489 () Bool)

(declare-fun tp!1874490 () Bool)

(assert (=> b!6844664 (= e!4127872 (and tp!1874489 tp!1874490))))

(assert (= (and b!6843849 ((_ is ElementMatch!16671) (regOne!33854 (regTwo!33854 r!7292)))) b!6844661))

(assert (= (and b!6843849 ((_ is Concat!25516) (regOne!33854 (regTwo!33854 r!7292)))) b!6844662))

(assert (= (and b!6843849 ((_ is Star!16671) (regOne!33854 (regTwo!33854 r!7292)))) b!6844663))

(assert (= (and b!6843849 ((_ is Union!16671) (regOne!33854 (regTwo!33854 r!7292)))) b!6844664))

(declare-fun b!6844666 () Bool)

(declare-fun e!4127873 () Bool)

(declare-fun tp!1874491 () Bool)

(declare-fun tp!1874493 () Bool)

(assert (=> b!6844666 (= e!4127873 (and tp!1874491 tp!1874493))))

(declare-fun b!6844665 () Bool)

(assert (=> b!6844665 (= e!4127873 tp_is_empty!42595)))

(declare-fun b!6844667 () Bool)

(declare-fun tp!1874492 () Bool)

(assert (=> b!6844667 (= e!4127873 tp!1874492)))

(assert (=> b!6843849 (= tp!1874285 e!4127873)))

(declare-fun b!6844668 () Bool)

(declare-fun tp!1874494 () Bool)

(declare-fun tp!1874495 () Bool)

(assert (=> b!6844668 (= e!4127873 (and tp!1874494 tp!1874495))))

(assert (= (and b!6843849 ((_ is ElementMatch!16671) (regTwo!33854 (regTwo!33854 r!7292)))) b!6844665))

(assert (= (and b!6843849 ((_ is Concat!25516) (regTwo!33854 (regTwo!33854 r!7292)))) b!6844666))

(assert (= (and b!6843849 ((_ is Star!16671) (regTwo!33854 (regTwo!33854 r!7292)))) b!6844667))

(assert (= (and b!6843849 ((_ is Union!16671) (regTwo!33854 (regTwo!33854 r!7292)))) b!6844668))

(declare-fun b!6844669 () Bool)

(declare-fun e!4127874 () Bool)

(declare-fun tp!1874496 () Bool)

(declare-fun tp!1874497 () Bool)

(assert (=> b!6844669 (= e!4127874 (and tp!1874496 tp!1874497))))

(assert (=> b!6843833 (= tp!1874266 e!4127874)))

(assert (= (and b!6843833 ((_ is Cons!66188) (exprs!6555 (h!72637 (t!380056 zl!343))))) b!6844669))

(declare-fun b!6844671 () Bool)

(declare-fun e!4127875 () Bool)

(declare-fun tp!1874498 () Bool)

(declare-fun tp!1874500 () Bool)

(assert (=> b!6844671 (= e!4127875 (and tp!1874498 tp!1874500))))

(declare-fun b!6844670 () Bool)

(assert (=> b!6844670 (= e!4127875 tp_is_empty!42595)))

(declare-fun b!6844672 () Bool)

(declare-fun tp!1874499 () Bool)

(assert (=> b!6844672 (= e!4127875 tp!1874499)))

(assert (=> b!6843870 (= tp!1874310 e!4127875)))

(declare-fun b!6844673 () Bool)

(declare-fun tp!1874501 () Bool)

(declare-fun tp!1874502 () Bool)

(assert (=> b!6844673 (= e!4127875 (and tp!1874501 tp!1874502))))

(assert (= (and b!6843870 ((_ is ElementMatch!16671) (regOne!33855 (regOne!33855 r!7292)))) b!6844670))

(assert (= (and b!6843870 ((_ is Concat!25516) (regOne!33855 (regOne!33855 r!7292)))) b!6844671))

(assert (= (and b!6843870 ((_ is Star!16671) (regOne!33855 (regOne!33855 r!7292)))) b!6844672))

(assert (= (and b!6843870 ((_ is Union!16671) (regOne!33855 (regOne!33855 r!7292)))) b!6844673))

(declare-fun b!6844675 () Bool)

(declare-fun e!4127876 () Bool)

(declare-fun tp!1874503 () Bool)

(declare-fun tp!1874505 () Bool)

(assert (=> b!6844675 (= e!4127876 (and tp!1874503 tp!1874505))))

(declare-fun b!6844674 () Bool)

(assert (=> b!6844674 (= e!4127876 tp_is_empty!42595)))

(declare-fun b!6844676 () Bool)

(declare-fun tp!1874504 () Bool)

(assert (=> b!6844676 (= e!4127876 tp!1874504)))

(assert (=> b!6843870 (= tp!1874311 e!4127876)))

(declare-fun b!6844677 () Bool)

(declare-fun tp!1874506 () Bool)

(declare-fun tp!1874507 () Bool)

(assert (=> b!6844677 (= e!4127876 (and tp!1874506 tp!1874507))))

(assert (= (and b!6843870 ((_ is ElementMatch!16671) (regTwo!33855 (regOne!33855 r!7292)))) b!6844674))

(assert (= (and b!6843870 ((_ is Concat!25516) (regTwo!33855 (regOne!33855 r!7292)))) b!6844675))

(assert (= (and b!6843870 ((_ is Star!16671) (regTwo!33855 (regOne!33855 r!7292)))) b!6844676))

(assert (= (and b!6843870 ((_ is Union!16671) (regTwo!33855 (regOne!33855 r!7292)))) b!6844677))

(declare-fun b!6844679 () Bool)

(declare-fun e!4127877 () Bool)

(declare-fun tp!1874508 () Bool)

(declare-fun tp!1874510 () Bool)

(assert (=> b!6844679 (= e!4127877 (and tp!1874508 tp!1874510))))

(declare-fun b!6844678 () Bool)

(assert (=> b!6844678 (= e!4127877 tp_is_empty!42595)))

(declare-fun b!6844680 () Bool)

(declare-fun tp!1874509 () Bool)

(assert (=> b!6844680 (= e!4127877 tp!1874509)))

(assert (=> b!6843873 (= tp!1874313 e!4127877)))

(declare-fun b!6844681 () Bool)

(declare-fun tp!1874511 () Bool)

(declare-fun tp!1874512 () Bool)

(assert (=> b!6844681 (= e!4127877 (and tp!1874511 tp!1874512))))

(assert (= (and b!6843873 ((_ is ElementMatch!16671) (reg!17000 (regTwo!33855 r!7292)))) b!6844678))

(assert (= (and b!6843873 ((_ is Concat!25516) (reg!17000 (regTwo!33855 r!7292)))) b!6844679))

(assert (= (and b!6843873 ((_ is Star!16671) (reg!17000 (regTwo!33855 r!7292)))) b!6844680))

(assert (= (and b!6843873 ((_ is Union!16671) (reg!17000 (regTwo!33855 r!7292)))) b!6844681))

(declare-fun b!6844683 () Bool)

(declare-fun e!4127878 () Bool)

(declare-fun tp!1874513 () Bool)

(declare-fun tp!1874515 () Bool)

(assert (=> b!6844683 (= e!4127878 (and tp!1874513 tp!1874515))))

(declare-fun b!6844682 () Bool)

(assert (=> b!6844682 (= e!4127878 tp_is_empty!42595)))

(declare-fun b!6844684 () Bool)

(declare-fun tp!1874514 () Bool)

(assert (=> b!6844684 (= e!4127878 tp!1874514)))

(assert (=> b!6843874 (= tp!1874315 e!4127878)))

(declare-fun b!6844685 () Bool)

(declare-fun tp!1874516 () Bool)

(declare-fun tp!1874517 () Bool)

(assert (=> b!6844685 (= e!4127878 (and tp!1874516 tp!1874517))))

(assert (= (and b!6843874 ((_ is ElementMatch!16671) (regOne!33855 (regTwo!33855 r!7292)))) b!6844682))

(assert (= (and b!6843874 ((_ is Concat!25516) (regOne!33855 (regTwo!33855 r!7292)))) b!6844683))

(assert (= (and b!6843874 ((_ is Star!16671) (regOne!33855 (regTwo!33855 r!7292)))) b!6844684))

(assert (= (and b!6843874 ((_ is Union!16671) (regOne!33855 (regTwo!33855 r!7292)))) b!6844685))

(declare-fun b!6844687 () Bool)

(declare-fun e!4127879 () Bool)

(declare-fun tp!1874518 () Bool)

(declare-fun tp!1874520 () Bool)

(assert (=> b!6844687 (= e!4127879 (and tp!1874518 tp!1874520))))

(declare-fun b!6844686 () Bool)

(assert (=> b!6844686 (= e!4127879 tp_is_empty!42595)))

(declare-fun b!6844688 () Bool)

(declare-fun tp!1874519 () Bool)

(assert (=> b!6844688 (= e!4127879 tp!1874519)))

(assert (=> b!6843874 (= tp!1874316 e!4127879)))

(declare-fun b!6844689 () Bool)

(declare-fun tp!1874521 () Bool)

(declare-fun tp!1874522 () Bool)

(assert (=> b!6844689 (= e!4127879 (and tp!1874521 tp!1874522))))

(assert (= (and b!6843874 ((_ is ElementMatch!16671) (regTwo!33855 (regTwo!33855 r!7292)))) b!6844686))

(assert (= (and b!6843874 ((_ is Concat!25516) (regTwo!33855 (regTwo!33855 r!7292)))) b!6844687))

(assert (= (and b!6843874 ((_ is Star!16671) (regTwo!33855 (regTwo!33855 r!7292)))) b!6844688))

(assert (= (and b!6843874 ((_ is Union!16671) (regTwo!33855 (regTwo!33855 r!7292)))) b!6844689))

(declare-fun b!6844691 () Bool)

(declare-fun e!4127880 () Bool)

(declare-fun tp!1874523 () Bool)

(declare-fun tp!1874525 () Bool)

(assert (=> b!6844691 (= e!4127880 (and tp!1874523 tp!1874525))))

(declare-fun b!6844690 () Bool)

(assert (=> b!6844690 (= e!4127880 tp_is_empty!42595)))

(declare-fun b!6844692 () Bool)

(declare-fun tp!1874524 () Bool)

(assert (=> b!6844692 (= e!4127880 tp!1874524)))

(assert (=> b!6843872 (= tp!1874312 e!4127880)))

(declare-fun b!6844693 () Bool)

(declare-fun tp!1874526 () Bool)

(declare-fun tp!1874527 () Bool)

(assert (=> b!6844693 (= e!4127880 (and tp!1874526 tp!1874527))))

(assert (= (and b!6843872 ((_ is ElementMatch!16671) (regOne!33854 (regTwo!33855 r!7292)))) b!6844690))

(assert (= (and b!6843872 ((_ is Concat!25516) (regOne!33854 (regTwo!33855 r!7292)))) b!6844691))

(assert (= (and b!6843872 ((_ is Star!16671) (regOne!33854 (regTwo!33855 r!7292)))) b!6844692))

(assert (= (and b!6843872 ((_ is Union!16671) (regOne!33854 (regTwo!33855 r!7292)))) b!6844693))

(declare-fun b!6844695 () Bool)

(declare-fun e!4127881 () Bool)

(declare-fun tp!1874528 () Bool)

(declare-fun tp!1874530 () Bool)

(assert (=> b!6844695 (= e!4127881 (and tp!1874528 tp!1874530))))

(declare-fun b!6844694 () Bool)

(assert (=> b!6844694 (= e!4127881 tp_is_empty!42595)))

(declare-fun b!6844696 () Bool)

(declare-fun tp!1874529 () Bool)

(assert (=> b!6844696 (= e!4127881 tp!1874529)))

(assert (=> b!6843872 (= tp!1874314 e!4127881)))

(declare-fun b!6844697 () Bool)

(declare-fun tp!1874531 () Bool)

(declare-fun tp!1874532 () Bool)

(assert (=> b!6844697 (= e!4127881 (and tp!1874531 tp!1874532))))

(assert (= (and b!6843872 ((_ is ElementMatch!16671) (regTwo!33854 (regTwo!33855 r!7292)))) b!6844694))

(assert (= (and b!6843872 ((_ is Concat!25516) (regTwo!33854 (regTwo!33855 r!7292)))) b!6844695))

(assert (= (and b!6843872 ((_ is Star!16671) (regTwo!33854 (regTwo!33855 r!7292)))) b!6844696))

(assert (= (and b!6843872 ((_ is Union!16671) (regTwo!33854 (regTwo!33855 r!7292)))) b!6844697))

(declare-fun condSetEmpty!47067 () Bool)

(assert (=> setNonEmpty!47065 (= condSetEmpty!47067 (= setRest!47065 ((as const (Array Context!12110 Bool)) false)))))

(declare-fun setRes!47067 () Bool)

(assert (=> setNonEmpty!47065 (= tp!1874297 setRes!47067)))

(declare-fun setIsEmpty!47067 () Bool)

(assert (=> setIsEmpty!47067 setRes!47067))

(declare-fun e!4127882 () Bool)

(declare-fun setElem!47067 () Context!12110)

(declare-fun tp!1874533 () Bool)

(declare-fun setNonEmpty!47067 () Bool)

(assert (=> setNonEmpty!47067 (= setRes!47067 (and tp!1874533 (inv!84924 setElem!47067) e!4127882))))

(declare-fun setRest!47067 () (InoxSet Context!12110))

(assert (=> setNonEmpty!47067 (= setRest!47065 ((_ map or) (store ((as const (Array Context!12110 Bool)) false) setElem!47067 true) setRest!47067))))

(declare-fun b!6844698 () Bool)

(declare-fun tp!1874534 () Bool)

(assert (=> b!6844698 (= e!4127882 tp!1874534)))

(assert (= (and setNonEmpty!47065 condSetEmpty!47067) setIsEmpty!47067))

(assert (= (and setNonEmpty!47065 (not condSetEmpty!47067)) setNonEmpty!47067))

(assert (= setNonEmpty!47067 b!6844698))

(declare-fun m!7585760 () Bool)

(assert (=> setNonEmpty!47067 m!7585760))

(declare-fun b!6844699 () Bool)

(declare-fun e!4127883 () Bool)

(declare-fun tp!1874535 () Bool)

(declare-fun tp!1874536 () Bool)

(assert (=> b!6844699 (= e!4127883 (and tp!1874535 tp!1874536))))

(assert (=> b!6843860 (= tp!1874298 e!4127883)))

(assert (= (and b!6843860 ((_ is Cons!66188) (exprs!6555 setElem!47065))) b!6844699))

(declare-fun b!6844701 () Bool)

(declare-fun e!4127884 () Bool)

(declare-fun tp!1874537 () Bool)

(declare-fun tp!1874539 () Bool)

(assert (=> b!6844701 (= e!4127884 (and tp!1874537 tp!1874539))))

(declare-fun b!6844700 () Bool)

(assert (=> b!6844700 (= e!4127884 tp_is_empty!42595)))

(declare-fun b!6844702 () Bool)

(declare-fun tp!1874538 () Bool)

(assert (=> b!6844702 (= e!4127884 tp!1874538)))

(assert (=> b!6843865 (= tp!1874303 e!4127884)))

(declare-fun b!6844703 () Bool)

(declare-fun tp!1874540 () Bool)

(declare-fun tp!1874541 () Bool)

(assert (=> b!6844703 (= e!4127884 (and tp!1874540 tp!1874541))))

(assert (= (and b!6843865 ((_ is ElementMatch!16671) (h!72636 (exprs!6555 setElem!47059)))) b!6844700))

(assert (= (and b!6843865 ((_ is Concat!25516) (h!72636 (exprs!6555 setElem!47059)))) b!6844701))

(assert (= (and b!6843865 ((_ is Star!16671) (h!72636 (exprs!6555 setElem!47059)))) b!6844702))

(assert (= (and b!6843865 ((_ is Union!16671) (h!72636 (exprs!6555 setElem!47059)))) b!6844703))

(declare-fun b!6844704 () Bool)

(declare-fun e!4127885 () Bool)

(declare-fun tp!1874542 () Bool)

(declare-fun tp!1874543 () Bool)

(assert (=> b!6844704 (= e!4127885 (and tp!1874542 tp!1874543))))

(assert (=> b!6843865 (= tp!1874304 e!4127885)))

(assert (= (and b!6843865 ((_ is Cons!66188) (t!380055 (exprs!6555 setElem!47059)))) b!6844704))

(declare-fun b!6844706 () Bool)

(declare-fun e!4127886 () Bool)

(declare-fun tp!1874544 () Bool)

(declare-fun tp!1874546 () Bool)

(assert (=> b!6844706 (= e!4127886 (and tp!1874544 tp!1874546))))

(declare-fun b!6844705 () Bool)

(assert (=> b!6844705 (= e!4127886 tp_is_empty!42595)))

(declare-fun b!6844707 () Bool)

(declare-fun tp!1874545 () Bool)

(assert (=> b!6844707 (= e!4127886 tp!1874545)))

(assert (=> b!6843851 (= tp!1874286 e!4127886)))

(declare-fun b!6844708 () Bool)

(declare-fun tp!1874547 () Bool)

(declare-fun tp!1874548 () Bool)

(assert (=> b!6844708 (= e!4127886 (and tp!1874547 tp!1874548))))

(assert (= (and b!6843851 ((_ is ElementMatch!16671) (regOne!33855 (regTwo!33854 r!7292)))) b!6844705))

(assert (= (and b!6843851 ((_ is Concat!25516) (regOne!33855 (regTwo!33854 r!7292)))) b!6844706))

(assert (= (and b!6843851 ((_ is Star!16671) (regOne!33855 (regTwo!33854 r!7292)))) b!6844707))

(assert (= (and b!6843851 ((_ is Union!16671) (regOne!33855 (regTwo!33854 r!7292)))) b!6844708))

(declare-fun b!6844710 () Bool)

(declare-fun e!4127887 () Bool)

(declare-fun tp!1874549 () Bool)

(declare-fun tp!1874551 () Bool)

(assert (=> b!6844710 (= e!4127887 (and tp!1874549 tp!1874551))))

(declare-fun b!6844709 () Bool)

(assert (=> b!6844709 (= e!4127887 tp_is_empty!42595)))

(declare-fun b!6844711 () Bool)

(declare-fun tp!1874550 () Bool)

(assert (=> b!6844711 (= e!4127887 tp!1874550)))

(assert (=> b!6843851 (= tp!1874287 e!4127887)))

(declare-fun b!6844712 () Bool)

(declare-fun tp!1874552 () Bool)

(declare-fun tp!1874553 () Bool)

(assert (=> b!6844712 (= e!4127887 (and tp!1874552 tp!1874553))))

(assert (= (and b!6843851 ((_ is ElementMatch!16671) (regTwo!33855 (regTwo!33854 r!7292)))) b!6844709))

(assert (= (and b!6843851 ((_ is Concat!25516) (regTwo!33855 (regTwo!33854 r!7292)))) b!6844710))

(assert (= (and b!6843851 ((_ is Star!16671) (regTwo!33855 (regTwo!33854 r!7292)))) b!6844711))

(assert (= (and b!6843851 ((_ is Union!16671) (regTwo!33855 (regTwo!33854 r!7292)))) b!6844712))

(declare-fun b!6844714 () Bool)

(declare-fun e!4127888 () Bool)

(declare-fun tp!1874554 () Bool)

(declare-fun tp!1874556 () Bool)

(assert (=> b!6844714 (= e!4127888 (and tp!1874554 tp!1874556))))

(declare-fun b!6844713 () Bool)

(assert (=> b!6844713 (= e!4127888 tp_is_empty!42595)))

(declare-fun b!6844715 () Bool)

(declare-fun tp!1874555 () Bool)

(assert (=> b!6844715 (= e!4127888 tp!1874555)))

(assert (=> b!6843845 (= tp!1874278 e!4127888)))

(declare-fun b!6844716 () Bool)

(declare-fun tp!1874557 () Bool)

(declare-fun tp!1874558 () Bool)

(assert (=> b!6844716 (= e!4127888 (and tp!1874557 tp!1874558))))

(assert (= (and b!6843845 ((_ is ElementMatch!16671) (regOne!33854 (regOne!33854 r!7292)))) b!6844713))

(assert (= (and b!6843845 ((_ is Concat!25516) (regOne!33854 (regOne!33854 r!7292)))) b!6844714))

(assert (= (and b!6843845 ((_ is Star!16671) (regOne!33854 (regOne!33854 r!7292)))) b!6844715))

(assert (= (and b!6843845 ((_ is Union!16671) (regOne!33854 (regOne!33854 r!7292)))) b!6844716))

(declare-fun b!6844718 () Bool)

(declare-fun e!4127889 () Bool)

(declare-fun tp!1874559 () Bool)

(declare-fun tp!1874561 () Bool)

(assert (=> b!6844718 (= e!4127889 (and tp!1874559 tp!1874561))))

(declare-fun b!6844717 () Bool)

(assert (=> b!6844717 (= e!4127889 tp_is_empty!42595)))

(declare-fun b!6844719 () Bool)

(declare-fun tp!1874560 () Bool)

(assert (=> b!6844719 (= e!4127889 tp!1874560)))

(assert (=> b!6843845 (= tp!1874280 e!4127889)))

(declare-fun b!6844720 () Bool)

(declare-fun tp!1874562 () Bool)

(declare-fun tp!1874563 () Bool)

(assert (=> b!6844720 (= e!4127889 (and tp!1874562 tp!1874563))))

(assert (= (and b!6843845 ((_ is ElementMatch!16671) (regTwo!33854 (regOne!33854 r!7292)))) b!6844717))

(assert (= (and b!6843845 ((_ is Concat!25516) (regTwo!33854 (regOne!33854 r!7292)))) b!6844718))

(assert (= (and b!6843845 ((_ is Star!16671) (regTwo!33854 (regOne!33854 r!7292)))) b!6844719))

(assert (= (and b!6843845 ((_ is Union!16671) (regTwo!33854 (regOne!33854 r!7292)))) b!6844720))

(declare-fun b!6844722 () Bool)

(declare-fun e!4127890 () Bool)

(declare-fun tp!1874564 () Bool)

(declare-fun tp!1874566 () Bool)

(assert (=> b!6844722 (= e!4127890 (and tp!1874564 tp!1874566))))

(declare-fun b!6844721 () Bool)

(assert (=> b!6844721 (= e!4127890 tp_is_empty!42595)))

(declare-fun b!6844723 () Bool)

(declare-fun tp!1874565 () Bool)

(assert (=> b!6844723 (= e!4127890 tp!1874565)))

(assert (=> b!6843854 (= tp!1874289 e!4127890)))

(declare-fun b!6844724 () Bool)

(declare-fun tp!1874567 () Bool)

(declare-fun tp!1874568 () Bool)

(assert (=> b!6844724 (= e!4127890 (and tp!1874567 tp!1874568))))

(assert (= (and b!6843854 ((_ is ElementMatch!16671) (reg!17000 (reg!17000 r!7292)))) b!6844721))

(assert (= (and b!6843854 ((_ is Concat!25516) (reg!17000 (reg!17000 r!7292)))) b!6844722))

(assert (= (and b!6843854 ((_ is Star!16671) (reg!17000 (reg!17000 r!7292)))) b!6844723))

(assert (= (and b!6843854 ((_ is Union!16671) (reg!17000 (reg!17000 r!7292)))) b!6844724))

(declare-fun b!6844726 () Bool)

(declare-fun e!4127891 () Bool)

(declare-fun tp!1874569 () Bool)

(declare-fun tp!1874571 () Bool)

(assert (=> b!6844726 (= e!4127891 (and tp!1874569 tp!1874571))))

(declare-fun b!6844725 () Bool)

(assert (=> b!6844725 (= e!4127891 tp_is_empty!42595)))

(declare-fun b!6844727 () Bool)

(declare-fun tp!1874570 () Bool)

(assert (=> b!6844727 (= e!4127891 tp!1874570)))

(assert (=> b!6843855 (= tp!1874291 e!4127891)))

(declare-fun b!6844728 () Bool)

(declare-fun tp!1874572 () Bool)

(declare-fun tp!1874573 () Bool)

(assert (=> b!6844728 (= e!4127891 (and tp!1874572 tp!1874573))))

(assert (= (and b!6843855 ((_ is ElementMatch!16671) (regOne!33855 (reg!17000 r!7292)))) b!6844725))

(assert (= (and b!6843855 ((_ is Concat!25516) (regOne!33855 (reg!17000 r!7292)))) b!6844726))

(assert (= (and b!6843855 ((_ is Star!16671) (regOne!33855 (reg!17000 r!7292)))) b!6844727))

(assert (= (and b!6843855 ((_ is Union!16671) (regOne!33855 (reg!17000 r!7292)))) b!6844728))

(declare-fun b!6844730 () Bool)

(declare-fun e!4127892 () Bool)

(declare-fun tp!1874574 () Bool)

(declare-fun tp!1874576 () Bool)

(assert (=> b!6844730 (= e!4127892 (and tp!1874574 tp!1874576))))

(declare-fun b!6844729 () Bool)

(assert (=> b!6844729 (= e!4127892 tp_is_empty!42595)))

(declare-fun b!6844731 () Bool)

(declare-fun tp!1874575 () Bool)

(assert (=> b!6844731 (= e!4127892 tp!1874575)))

(assert (=> b!6843855 (= tp!1874292 e!4127892)))

(declare-fun b!6844732 () Bool)

(declare-fun tp!1874577 () Bool)

(declare-fun tp!1874578 () Bool)

(assert (=> b!6844732 (= e!4127892 (and tp!1874577 tp!1874578))))

(assert (= (and b!6843855 ((_ is ElementMatch!16671) (regTwo!33855 (reg!17000 r!7292)))) b!6844729))

(assert (= (and b!6843855 ((_ is Concat!25516) (regTwo!33855 (reg!17000 r!7292)))) b!6844730))

(assert (= (and b!6843855 ((_ is Star!16671) (regTwo!33855 (reg!17000 r!7292)))) b!6844731))

(assert (= (and b!6843855 ((_ is Union!16671) (regTwo!33855 (reg!17000 r!7292)))) b!6844732))

(declare-fun b!6844734 () Bool)

(declare-fun e!4127893 () Bool)

(declare-fun tp!1874579 () Bool)

(declare-fun tp!1874581 () Bool)

(assert (=> b!6844734 (= e!4127893 (and tp!1874579 tp!1874581))))

(declare-fun b!6844733 () Bool)

(assert (=> b!6844733 (= e!4127893 tp_is_empty!42595)))

(declare-fun b!6844735 () Bool)

(declare-fun tp!1874580 () Bool)

(assert (=> b!6844735 (= e!4127893 tp!1874580)))

(assert (=> b!6843853 (= tp!1874288 e!4127893)))

(declare-fun b!6844736 () Bool)

(declare-fun tp!1874582 () Bool)

(declare-fun tp!1874583 () Bool)

(assert (=> b!6844736 (= e!4127893 (and tp!1874582 tp!1874583))))

(assert (= (and b!6843853 ((_ is ElementMatch!16671) (regOne!33854 (reg!17000 r!7292)))) b!6844733))

(assert (= (and b!6843853 ((_ is Concat!25516) (regOne!33854 (reg!17000 r!7292)))) b!6844734))

(assert (= (and b!6843853 ((_ is Star!16671) (regOne!33854 (reg!17000 r!7292)))) b!6844735))

(assert (= (and b!6843853 ((_ is Union!16671) (regOne!33854 (reg!17000 r!7292)))) b!6844736))

(declare-fun b!6844738 () Bool)

(declare-fun e!4127894 () Bool)

(declare-fun tp!1874584 () Bool)

(declare-fun tp!1874586 () Bool)

(assert (=> b!6844738 (= e!4127894 (and tp!1874584 tp!1874586))))

(declare-fun b!6844737 () Bool)

(assert (=> b!6844737 (= e!4127894 tp_is_empty!42595)))

(declare-fun b!6844739 () Bool)

(declare-fun tp!1874585 () Bool)

(assert (=> b!6844739 (= e!4127894 tp!1874585)))

(assert (=> b!6843853 (= tp!1874290 e!4127894)))

(declare-fun b!6844740 () Bool)

(declare-fun tp!1874587 () Bool)

(declare-fun tp!1874588 () Bool)

(assert (=> b!6844740 (= e!4127894 (and tp!1874587 tp!1874588))))

(assert (= (and b!6843853 ((_ is ElementMatch!16671) (regTwo!33854 (reg!17000 r!7292)))) b!6844737))

(assert (= (and b!6843853 ((_ is Concat!25516) (regTwo!33854 (reg!17000 r!7292)))) b!6844738))

(assert (= (and b!6843853 ((_ is Star!16671) (regTwo!33854 (reg!17000 r!7292)))) b!6844739))

(assert (= (and b!6843853 ((_ is Union!16671) (regTwo!33854 (reg!17000 r!7292)))) b!6844740))

(declare-fun b!6844742 () Bool)

(declare-fun e!4127895 () Bool)

(declare-fun tp!1874589 () Bool)

(declare-fun tp!1874591 () Bool)

(assert (=> b!6844742 (= e!4127895 (and tp!1874589 tp!1874591))))

(declare-fun b!6844741 () Bool)

(assert (=> b!6844741 (= e!4127895 tp_is_empty!42595)))

(declare-fun b!6844743 () Bool)

(declare-fun tp!1874590 () Bool)

(assert (=> b!6844743 (= e!4127895 tp!1874590)))

(assert (=> b!6843866 (= tp!1874305 e!4127895)))

(declare-fun b!6844744 () Bool)

(declare-fun tp!1874592 () Bool)

(declare-fun tp!1874593 () Bool)

(assert (=> b!6844744 (= e!4127895 (and tp!1874592 tp!1874593))))

(assert (= (and b!6843866 ((_ is ElementMatch!16671) (h!72636 (exprs!6555 (h!72637 zl!343))))) b!6844741))

(assert (= (and b!6843866 ((_ is Concat!25516) (h!72636 (exprs!6555 (h!72637 zl!343))))) b!6844742))

(assert (= (and b!6843866 ((_ is Star!16671) (h!72636 (exprs!6555 (h!72637 zl!343))))) b!6844743))

(assert (= (and b!6843866 ((_ is Union!16671) (h!72636 (exprs!6555 (h!72637 zl!343))))) b!6844744))

(declare-fun b!6844745 () Bool)

(declare-fun e!4127896 () Bool)

(declare-fun tp!1874594 () Bool)

(declare-fun tp!1874595 () Bool)

(assert (=> b!6844745 (= e!4127896 (and tp!1874594 tp!1874595))))

(assert (=> b!6843866 (= tp!1874306 e!4127896)))

(assert (= (and b!6843866 ((_ is Cons!66188) (t!380055 (exprs!6555 (h!72637 zl!343))))) b!6844745))

(declare-fun b!6844747 () Bool)

(declare-fun e!4127898 () Bool)

(declare-fun tp!1874596 () Bool)

(assert (=> b!6844747 (= e!4127898 tp!1874596)))

(declare-fun b!6844746 () Bool)

(declare-fun e!4127897 () Bool)

(declare-fun tp!1874597 () Bool)

(assert (=> b!6844746 (= e!4127897 (and (inv!84924 (h!72637 (t!380056 (t!380056 zl!343)))) e!4127898 tp!1874597))))

(assert (=> b!6843832 (= tp!1874267 e!4127897)))

(assert (= b!6844746 b!6844747))

(assert (= (and b!6843832 ((_ is Cons!66189) (t!380056 (t!380056 zl!343)))) b!6844746))

(declare-fun m!7585762 () Bool)

(assert (=> b!6844746 m!7585762))

(declare-fun b!6844749 () Bool)

(declare-fun e!4127899 () Bool)

(declare-fun tp!1874598 () Bool)

(declare-fun tp!1874600 () Bool)

(assert (=> b!6844749 (= e!4127899 (and tp!1874598 tp!1874600))))

(declare-fun b!6844748 () Bool)

(assert (=> b!6844748 (= e!4127899 tp_is_empty!42595)))

(declare-fun b!6844750 () Bool)

(declare-fun tp!1874599 () Bool)

(assert (=> b!6844750 (= e!4127899 tp!1874599)))

(assert (=> b!6843869 (= tp!1874308 e!4127899)))

(declare-fun b!6844751 () Bool)

(declare-fun tp!1874601 () Bool)

(declare-fun tp!1874602 () Bool)

(assert (=> b!6844751 (= e!4127899 (and tp!1874601 tp!1874602))))

(assert (= (and b!6843869 ((_ is ElementMatch!16671) (reg!17000 (regOne!33855 r!7292)))) b!6844748))

(assert (= (and b!6843869 ((_ is Concat!25516) (reg!17000 (regOne!33855 r!7292)))) b!6844749))

(assert (= (and b!6843869 ((_ is Star!16671) (reg!17000 (regOne!33855 r!7292)))) b!6844750))

(assert (= (and b!6843869 ((_ is Union!16671) (reg!17000 (regOne!33855 r!7292)))) b!6844751))

(declare-fun b!6844753 () Bool)

(declare-fun e!4127900 () Bool)

(declare-fun tp!1874603 () Bool)

(declare-fun tp!1874605 () Bool)

(assert (=> b!6844753 (= e!4127900 (and tp!1874603 tp!1874605))))

(declare-fun b!6844752 () Bool)

(assert (=> b!6844752 (= e!4127900 tp_is_empty!42595)))

(declare-fun b!6844754 () Bool)

(declare-fun tp!1874604 () Bool)

(assert (=> b!6844754 (= e!4127900 tp!1874604)))

(assert (=> b!6843868 (= tp!1874307 e!4127900)))

(declare-fun b!6844755 () Bool)

(declare-fun tp!1874606 () Bool)

(declare-fun tp!1874607 () Bool)

(assert (=> b!6844755 (= e!4127900 (and tp!1874606 tp!1874607))))

(assert (= (and b!6843868 ((_ is ElementMatch!16671) (regOne!33854 (regOne!33855 r!7292)))) b!6844752))

(assert (= (and b!6843868 ((_ is Concat!25516) (regOne!33854 (regOne!33855 r!7292)))) b!6844753))

(assert (= (and b!6843868 ((_ is Star!16671) (regOne!33854 (regOne!33855 r!7292)))) b!6844754))

(assert (= (and b!6843868 ((_ is Union!16671) (regOne!33854 (regOne!33855 r!7292)))) b!6844755))

(declare-fun b!6844757 () Bool)

(declare-fun e!4127901 () Bool)

(declare-fun tp!1874608 () Bool)

(declare-fun tp!1874610 () Bool)

(assert (=> b!6844757 (= e!4127901 (and tp!1874608 tp!1874610))))

(declare-fun b!6844756 () Bool)

(assert (=> b!6844756 (= e!4127901 tp_is_empty!42595)))

(declare-fun b!6844758 () Bool)

(declare-fun tp!1874609 () Bool)

(assert (=> b!6844758 (= e!4127901 tp!1874609)))

(assert (=> b!6843868 (= tp!1874309 e!4127901)))

(declare-fun b!6844759 () Bool)

(declare-fun tp!1874611 () Bool)

(declare-fun tp!1874612 () Bool)

(assert (=> b!6844759 (= e!4127901 (and tp!1874611 tp!1874612))))

(assert (= (and b!6843868 ((_ is ElementMatch!16671) (regTwo!33854 (regOne!33855 r!7292)))) b!6844756))

(assert (= (and b!6843868 ((_ is Concat!25516) (regTwo!33854 (regOne!33855 r!7292)))) b!6844757))

(assert (= (and b!6843868 ((_ is Star!16671) (regTwo!33854 (regOne!33855 r!7292)))) b!6844758))

(assert (= (and b!6843868 ((_ is Union!16671) (regTwo!33854 (regOne!33855 r!7292)))) b!6844759))

(declare-fun b!6844761 () Bool)

(declare-fun e!4127902 () Bool)

(declare-fun tp!1874613 () Bool)

(declare-fun tp!1874615 () Bool)

(assert (=> b!6844761 (= e!4127902 (and tp!1874613 tp!1874615))))

(declare-fun b!6844760 () Bool)

(assert (=> b!6844760 (= e!4127902 tp_is_empty!42595)))

(declare-fun b!6844762 () Bool)

(declare-fun tp!1874614 () Bool)

(assert (=> b!6844762 (= e!4127902 tp!1874614)))

(assert (=> b!6843846 (= tp!1874279 e!4127902)))

(declare-fun b!6844763 () Bool)

(declare-fun tp!1874616 () Bool)

(declare-fun tp!1874617 () Bool)

(assert (=> b!6844763 (= e!4127902 (and tp!1874616 tp!1874617))))

(assert (= (and b!6843846 ((_ is ElementMatch!16671) (reg!17000 (regOne!33854 r!7292)))) b!6844760))

(assert (= (and b!6843846 ((_ is Concat!25516) (reg!17000 (regOne!33854 r!7292)))) b!6844761))

(assert (= (and b!6843846 ((_ is Star!16671) (reg!17000 (regOne!33854 r!7292)))) b!6844762))

(assert (= (and b!6843846 ((_ is Union!16671) (reg!17000 (regOne!33854 r!7292)))) b!6844763))

(declare-fun b!6844765 () Bool)

(declare-fun e!4127903 () Bool)

(declare-fun tp!1874618 () Bool)

(declare-fun tp!1874620 () Bool)

(assert (=> b!6844765 (= e!4127903 (and tp!1874618 tp!1874620))))

(declare-fun b!6844764 () Bool)

(assert (=> b!6844764 (= e!4127903 tp_is_empty!42595)))

(declare-fun b!6844766 () Bool)

(declare-fun tp!1874619 () Bool)

(assert (=> b!6844766 (= e!4127903 tp!1874619)))

(assert (=> b!6843847 (= tp!1874281 e!4127903)))

(declare-fun b!6844767 () Bool)

(declare-fun tp!1874621 () Bool)

(declare-fun tp!1874622 () Bool)

(assert (=> b!6844767 (= e!4127903 (and tp!1874621 tp!1874622))))

(assert (= (and b!6843847 ((_ is ElementMatch!16671) (regOne!33855 (regOne!33854 r!7292)))) b!6844764))

(assert (= (and b!6843847 ((_ is Concat!25516) (regOne!33855 (regOne!33854 r!7292)))) b!6844765))

(assert (= (and b!6843847 ((_ is Star!16671) (regOne!33855 (regOne!33854 r!7292)))) b!6844766))

(assert (= (and b!6843847 ((_ is Union!16671) (regOne!33855 (regOne!33854 r!7292)))) b!6844767))

(declare-fun b!6844769 () Bool)

(declare-fun e!4127904 () Bool)

(declare-fun tp!1874623 () Bool)

(declare-fun tp!1874625 () Bool)

(assert (=> b!6844769 (= e!4127904 (and tp!1874623 tp!1874625))))

(declare-fun b!6844768 () Bool)

(assert (=> b!6844768 (= e!4127904 tp_is_empty!42595)))

(declare-fun b!6844770 () Bool)

(declare-fun tp!1874624 () Bool)

(assert (=> b!6844770 (= e!4127904 tp!1874624)))

(assert (=> b!6843847 (= tp!1874282 e!4127904)))

(declare-fun b!6844771 () Bool)

(declare-fun tp!1874626 () Bool)

(declare-fun tp!1874627 () Bool)

(assert (=> b!6844771 (= e!4127904 (and tp!1874626 tp!1874627))))

(assert (= (and b!6843847 ((_ is ElementMatch!16671) (regTwo!33855 (regOne!33854 r!7292)))) b!6844768))

(assert (= (and b!6843847 ((_ is Concat!25516) (regTwo!33855 (regOne!33854 r!7292)))) b!6844769))

(assert (= (and b!6843847 ((_ is Star!16671) (regTwo!33855 (regOne!33854 r!7292)))) b!6844770))

(assert (= (and b!6843847 ((_ is Union!16671) (regTwo!33855 (regOne!33854 r!7292)))) b!6844771))

(declare-fun b_lambda!258171 () Bool)

(assert (= b_lambda!258159 (or d!2151419 b_lambda!258171)))

(declare-fun bs!1829622 () Bool)

(declare-fun d!2151685 () Bool)

(assert (= bs!1829622 (and d!2151685 d!2151419)))

(assert (=> bs!1829622 (= (dynLambda!26449 lambda!387023 (h!72636 (exprs!6555 setElem!47059))) (validRegex!8407 (h!72636 (exprs!6555 setElem!47059))))))

(declare-fun m!7585764 () Bool)

(assert (=> bs!1829622 m!7585764))

(assert (=> b!6844459 d!2151685))

(declare-fun b_lambda!258173 () Bool)

(assert (= b_lambda!258169 (or d!2151401 b_lambda!258173)))

(declare-fun bs!1829623 () Bool)

(declare-fun d!2151687 () Bool)

(assert (= bs!1829623 (and d!2151687 d!2151401)))

(assert (=> bs!1829623 (= (dynLambda!26448 lambda!387016 (h!72637 zl!343)) (not (dynLambda!26448 lambda!386979 (h!72637 zl!343))))))

(declare-fun b_lambda!258191 () Bool)

(assert (=> (not b_lambda!258191) (not bs!1829623)))

(assert (=> bs!1829623 m!7585092))

(assert (=> b!6844521 d!2151687))

(declare-fun b_lambda!258175 () Bool)

(assert (= b_lambda!258161 (or b!6843348 b_lambda!258175)))

(declare-fun bs!1829624 () Bool)

(declare-fun d!2151689 () Bool)

(assert (= bs!1829624 (and d!2151689 b!6843348)))

(declare-fun res!2794467 () Bool)

(declare-fun e!4127905 () Bool)

(assert (=> bs!1829624 (=> (not res!2794467) (not e!4127905))))

(assert (=> bs!1829624 (= res!2794467 (validRegex!8407 lt!2455688))))

(assert (=> bs!1829624 (= (dynLambda!26449 lambda!386978 lt!2455688) e!4127905)))

(declare-fun b!6844772 () Bool)

(assert (=> b!6844772 (= e!4127905 (matchR!8854 lt!2455688 s!2326))))

(assert (= (and bs!1829624 res!2794467) b!6844772))

(declare-fun m!7585766 () Bool)

(assert (=> bs!1829624 m!7585766))

(declare-fun m!7585768 () Bool)

(assert (=> b!6844772 m!7585768))

(assert (=> d!2151633 d!2151689))

(declare-fun b_lambda!258177 () Bool)

(assert (= b_lambda!258157 (or d!2151425 b_lambda!258177)))

(declare-fun bs!1829625 () Bool)

(declare-fun d!2151691 () Bool)

(assert (= bs!1829625 (and d!2151691 d!2151425)))

(assert (=> bs!1829625 (= (dynLambda!26449 lambda!387031 (h!72636 lt!2455560)) (validRegex!8407 (h!72636 lt!2455560)))))

(assert (=> bs!1829625 m!7585160))

(assert (=> b!6844451 d!2151691))

(declare-fun b_lambda!258179 () Bool)

(assert (= b_lambda!258153 (or b!6843333 b_lambda!258179)))

(declare-fun bs!1829626 () Bool)

(declare-fun d!2151693 () Bool)

(assert (= bs!1829626 (and d!2151693 b!6843333)))

(assert (=> bs!1829626 (= (dynLambda!26448 lambda!386979 lt!2455687) (= (generalisedConcat!2264 (exprs!6555 lt!2455687)) lt!2455564))))

(declare-fun m!7585770 () Bool)

(assert (=> bs!1829626 m!7585770))

(assert (=> d!2151615 d!2151693))

(declare-fun b_lambda!258181 () Bool)

(assert (= b_lambda!258165 (or d!2151423 b_lambda!258181)))

(declare-fun bs!1829627 () Bool)

(declare-fun d!2151695 () Bool)

(assert (= bs!1829627 (and d!2151695 d!2151423)))

(assert (=> bs!1829627 (= (dynLambda!26449 lambda!387026 (h!72636 lt!2455560)) (not (dynLambda!26449 lambda!386978 (h!72636 lt!2455560))))))

(declare-fun b_lambda!258193 () Bool)

(assert (=> (not b_lambda!258193) (not bs!1829627)))

(assert (=> bs!1829627 m!7585112))

(assert (=> b!6844469 d!2151695))

(declare-fun b_lambda!258183 () Bool)

(assert (= b_lambda!258155 (or b!6843333 b_lambda!258183)))

(declare-fun bs!1829628 () Bool)

(declare-fun d!2151697 () Bool)

(assert (= bs!1829628 (and d!2151697 b!6843333)))

(assert (=> bs!1829628 (= (dynLambda!26448 lambda!386979 (h!72637 (t!380056 zl!343))) (= (generalisedConcat!2264 (exprs!6555 (h!72637 (t!380056 zl!343)))) lt!2455564))))

(assert (=> bs!1829628 m!7585522))

(assert (=> b!6844438 d!2151697))

(declare-fun b_lambda!258185 () Bool)

(assert (= b_lambda!258163 (or b!6843348 b_lambda!258185)))

(declare-fun bs!1829629 () Bool)

(declare-fun d!2151699 () Bool)

(assert (= bs!1829629 (and d!2151699 b!6843348)))

(declare-fun res!2794468 () Bool)

(declare-fun e!4127906 () Bool)

(assert (=> bs!1829629 (=> (not res!2794468) (not e!4127906))))

(assert (=> bs!1829629 (= res!2794468 (validRegex!8407 (h!72636 (t!380055 lt!2455560))))))

(assert (=> bs!1829629 (= (dynLambda!26449 lambda!386978 (h!72636 (t!380055 lt!2455560))) e!4127906)))

(declare-fun b!6844773 () Bool)

(assert (=> b!6844773 (= e!4127906 (matchR!8854 (h!72636 (t!380055 lt!2455560)) s!2326))))

(assert (= (and bs!1829629 res!2794468) b!6844773))

(declare-fun m!7585772 () Bool)

(assert (=> bs!1829629 m!7585772))

(declare-fun m!7585774 () Bool)

(assert (=> b!6844773 m!7585774))

(assert (=> b!6844464 d!2151699))

(declare-fun b_lambda!258187 () Bool)

(assert (= b_lambda!258151 (or d!2151427 b_lambda!258187)))

(declare-fun bs!1829630 () Bool)

(declare-fun d!2151701 () Bool)

(assert (= bs!1829630 (and d!2151701 d!2151427)))

(assert (=> bs!1829630 (= (dynLambda!26449 lambda!387035 (h!72636 lt!2455650)) (validRegex!8407 (h!72636 lt!2455650)))))

(declare-fun m!7585776 () Bool)

(assert (=> bs!1829630 m!7585776))

(assert (=> b!6844366 d!2151701))

(declare-fun b_lambda!258189 () Bool)

(assert (= b_lambda!258167 (or d!2151417 b_lambda!258189)))

(declare-fun bs!1829631 () Bool)

(declare-fun d!2151703 () Bool)

(assert (= bs!1829631 (and d!2151703 d!2151417)))

(assert (=> bs!1829631 (= (dynLambda!26449 lambda!387022 (h!72636 (exprs!6555 (h!72637 zl!343)))) (validRegex!8407 (h!72636 (exprs!6555 (h!72637 zl!343)))))))

(declare-fun m!7585778 () Bool)

(assert (=> bs!1829631 m!7585778))

(assert (=> b!6844504 d!2151703))

(check-sat (not b!6844556) (not b!6844498) (not b!6844742) (not b!6844388) (not b!6844489) (not b!6844338) (not b!6844710) (not b!6844434) (not d!2151641) (not b!6844348) (not b!6844772) (not b_lambda!258193) (not d!2151593) (not b!6844758) (not bm!623311) (not d!2151659) (not b!6844730) (not b!6844684) (not b!6844658) (not b!6844516) (not b!6844743) (not b!6844448) (not d!2151675) (not b!6844360) (not bm!623318) (not b!6844361) (not b!6844485) (not bm!623285) (not bm!623279) (not b!6844660) (not b!6844526) (not b!6844679) (not b!6844659) (not b!6844396) (not b!6844575) (not b!6844650) (not bm!623283) (not b!6844367) (not b!6844439) (not b!6844656) (not b_lambda!258177) (not b!6844578) (not b_lambda!258187) (not b!6844484) (not b!6844431) (not b!6844715) (not b!6844708) (not b!6844754) (not b!6844663) (not b_lambda!258175) (not b!6844719) (not b!6844770) (not b!6844522) (not b!6844739) (not d!2151601) (not d!2151671) (not b!6844771) (not b!6844440) (not bm!623278) (not b!6844403) (not b!6844395) (not d!2151575) (not b!6844426) (not b!6844420) (not bm!623310) (not b!6844563) (not b!6844750) (not b!6844344) (not d!2151623) (not b!6844640) (not d!2151595) (not b!6844393) (not b!6844734) (not b!6844701) (not b!6844697) (not b!6844707) (not b!6844716) (not b!6844731) (not b!6844712) (not b!6844413) (not b!6844414) (not b!6844675) (not bs!1829631) (not b!6844558) (not b!6844463) (not b!6844613) (not b!6844763) (not b!6844714) tp_is_empty!42595 (not b!6844669) (not b!6844662) (not b!6844765) (not b!6844409) (not b!6844703) (not b!6844749) (not b!6844698) (not b!6844759) (not b!6844722) (not d!2151613) (not b!6844567) (not b!6844349) (not bm!623314) (not d!2151599) (not b!6844761) (not d!2151681) (not d!2151587) (not b!6844687) (not b!6844728) (not bm!623282) (not b!6844430) (not b!6844646) (not d!2151591) (not d!2151611) (not b!6844720) (not d!2151663) (not b!6844560) (not setNonEmpty!47067) (not b!6844566) (not d!2151661) (not b!6844769) (not b!6844699) (not b!6844465) (not b!6844685) (not d!2151583) (not bm!623291) (not d!2151621) (not b!6844696) (not b!6844392) (not b!6844692) (not b!6844683) (not b!6844605) (not bm!623276) (not b!6844458) (not b!6844577) (not bs!1829622) (not b!6844468) (not b!6844740) (not bm!623312) (not b!6844622) (not b_lambda!258101) (not b!6844751) (not bm!623277) (not b!6844620) (not b!6844676) (not d!2151677) (not b!6844416) (not bs!1829624) (not b!6844397) (not b!6844689) (not b!6844436) (not b!6844552) (not bs!1829625) (not b!6844735) (not b!6844621) (not d!2151655) (not d!2151669) (not bm!623293) (not b!6844428) (not b_lambda!258099) (not b!6844757) (not b!6844515) (not b!6844727) (not b!6844718) (not b_lambda!258171) (not b!6844762) (not b!6844573) (not b!6844410) (not b!6844671) (not d!2151635) (not b!6844452) (not b!6844331) (not b!6844389) (not d!2151609) (not b!6844668) (not b!6844745) (not bm!623317) (not bm!623306) (not b!6844476) (not bm!623290) (not b!6844437) (not b!6844346) (not b!6844711) (not b!6844461) (not b!6844559) (not b!6844767) (not b!6844773) (not b!6844736) (not b!6844633) (not b!6844672) (not bs!1829628) (not b!6844337) (not bm!623295) (not b!6844673) (not d!2151633) (not b!6844738) (not b!6844667) (not d!2151615) (not d!2151627) (not b!6844470) (not b!6844688) (not b!6844755) (not b!6844677) (not b_lambda!258181) (not b!6844666) (not b_lambda!258103) (not b!6844483) (not b_lambda!258105) (not b_lambda!258191) (not b!6844680) (not b!6844732) (not b!6844706) (not d!2151665) (not bm!623286) (not b!6844630) (not b!6844726) (not b!6844460) (not b_lambda!258179) (not bm!623275) (not b!6844681) (not b!6844693) (not d!2151673) (not b!6844417) (not b!6844744) (not bm!623289) (not b!6844565) (not b!6844766) (not b!6844632) (not b!6844628) (not b!6844475) (not d!2151607) (not b!6844753) (not b!6844695) (not b!6844724) (not b!6844553) (not b!6844723) (not b!6844746) (not b_lambda!258185) (not bs!1829629) (not b!6844505) (not bm!623281) (not b!6844664) (not b!6844702) (not b!6844704) (not bs!1829630) (not b!6844398) (not b_lambda!258173) (not b!6844747) (not bs!1829626) (not b!6844419) (not bm!623309) (not bm!623294) (not b!6844554) (not bm!623304) (not b_lambda!258183) (not bm!623288) (not b!6844418) (not b!6844691) (not b_lambda!258189))
(check-sat)
(get-model)

(declare-fun b_lambda!258195 () Bool)

(assert (= b_lambda!258191 (or b!6843333 b_lambda!258195)))

(assert (=> bs!1829623 d!2151435))

(declare-fun b_lambda!258197 () Bool)

(assert (= b_lambda!258193 (or b!6843348 b_lambda!258197)))

(assert (=> bs!1829627 d!2151437))

(check-sat (not b!6844556) (not b!6844498) (not b!6844742) (not b!6844388) (not b!6844489) (not b!6844338) (not b!6844710) (not b!6844434) (not d!2151641) (not b!6844348) (not b!6844772) (not d!2151593) (not b!6844758) (not bm!623311) (not d!2151659) (not b!6844730) (not b!6844684) (not b!6844658) (not b!6844516) (not b!6844743) (not b!6844448) (not d!2151675) (not b!6844360) (not bm!623318) (not b!6844361) (not b!6844485) (not bm!623285) (not bm!623279) (not b!6844660) (not b!6844526) (not b!6844679) (not b!6844659) (not b!6844396) (not b!6844575) (not b!6844650) (not bm!623283) (not b!6844367) (not b!6844439) (not b!6844656) (not b_lambda!258177) (not b!6844578) (not b_lambda!258187) (not b!6844484) (not b!6844431) (not b!6844708) (not b!6844754) (not b!6844663) (not b_lambda!258175) (not b!6844719) (not b!6844715) (not b_lambda!258195) (not b!6844770) (not b!6844522) (not b!6844739) (not d!2151601) (not d!2151671) (not b!6844771) (not b!6844440) (not bm!623278) (not b!6844403) (not b!6844395) (not d!2151575) (not b!6844426) (not b!6844420) (not bm!623310) (not b!6844563) (not b!6844750) (not b!6844344) (not d!2151623) (not b!6844640) (not d!2151595) (not b!6844393) (not b!6844734) (not b!6844701) (not b!6844697) (not b!6844707) (not b_lambda!258197) (not b!6844716) (not b!6844731) (not b!6844712) (not b!6844413) (not b!6844414) (not b!6844675) (not bs!1829631) (not b!6844558) (not b!6844463) (not b!6844613) (not b!6844763) (not b!6844714) tp_is_empty!42595 (not b!6844669) (not b!6844662) (not b!6844765) (not b!6844409) (not b!6844703) (not b!6844749) (not b!6844698) (not b!6844759) (not b!6844722) (not d!2151613) (not b!6844567) (not b!6844349) (not bm!623314) (not d!2151599) (not b!6844761) (not d!2151681) (not d!2151587) (not b!6844687) (not b!6844728) (not bm!623282) (not b!6844430) (not b!6844646) (not d!2151591) (not d!2151611) (not b!6844720) (not d!2151663) (not b!6844560) (not setNonEmpty!47067) (not b!6844566) (not d!2151661) (not b!6844769) (not b!6844699) (not b!6844465) (not b!6844685) (not d!2151583) (not bm!623291) (not d!2151621) (not b!6844696) (not b!6844392) (not b!6844692) (not b!6844683) (not b!6844605) (not bm!623276) (not b!6844458) (not b!6844577) (not bs!1829622) (not b!6844468) (not b!6844740) (not bm!623312) (not b!6844622) (not b_lambda!258101) (not b!6844751) (not bm!623277) (not b!6844620) (not b!6844676) (not d!2151677) (not b!6844416) (not bs!1829624) (not b!6844397) (not b!6844689) (not b!6844436) (not b!6844552) (not bs!1829625) (not b!6844735) (not b!6844621) (not d!2151655) (not d!2151669) (not bm!623293) (not b!6844428) (not b_lambda!258099) (not b!6844757) (not b!6844515) (not b!6844727) (not b!6844718) (not b_lambda!258171) (not b!6844762) (not b!6844573) (not b!6844410) (not b!6844671) (not d!2151635) (not b!6844452) (not b!6844331) (not b!6844389) (not d!2151609) (not b!6844668) (not b!6844745) (not bm!623317) (not bm!623306) (not b!6844476) (not bm!623290) (not b!6844437) (not b!6844346) (not b!6844711) (not b!6844461) (not b!6844559) (not b!6844767) (not b!6844773) (not b!6844736) (not b!6844633) (not b!6844672) (not bs!1829628) (not b!6844337) (not bm!623295) (not b!6844673) (not d!2151633) (not b!6844738) (not b!6844667) (not d!2151615) (not d!2151627) (not b!6844470) (not b!6844688) (not b!6844755) (not b!6844677) (not b_lambda!258181) (not b!6844666) (not b_lambda!258103) (not b!6844483) (not b_lambda!258105) (not b!6844680) (not b!6844732) (not b!6844706) (not d!2151665) (not bm!623286) (not b!6844630) (not b!6844726) (not b!6844460) (not b_lambda!258179) (not bm!623275) (not b!6844681) (not b!6844693) (not d!2151673) (not b!6844417) (not b!6844744) (not bm!623289) (not b!6844565) (not b!6844766) (not b!6844632) (not b!6844628) (not b!6844475) (not d!2151607) (not b!6844753) (not b!6844695) (not b!6844724) (not b!6844553) (not b!6844723) (not b!6844746) (not b_lambda!258185) (not bs!1829629) (not b!6844505) (not bm!623281) (not b!6844664) (not b!6844702) (not b!6844704) (not bs!1829630) (not b!6844398) (not b_lambda!258173) (not b!6844747) (not bs!1829626) (not b!6844419) (not bm!623309) (not bm!623294) (not b!6844554) (not bm!623304) (not b_lambda!258183) (not bm!623288) (not b!6844418) (not b!6844691) (not b_lambda!258189))
(check-sat)
(get-model)

(declare-fun bs!1829661 () Bool)

(declare-fun d!2151729 () Bool)

(assert (= bs!1829661 (and d!2151729 d!2151591)))

(declare-fun lambda!387083 () Int)

(assert (=> bs!1829661 (= lambda!387083 lambda!387063)))

(declare-fun bs!1829662 () Bool)

(assert (= bs!1829662 (and d!2151729 d!2151623)))

(assert (=> bs!1829662 (not (= lambda!387083 lambda!387073))))

(declare-fun bs!1829663 () Bool)

(assert (= bs!1829663 (and d!2151729 d!2151427)))

(assert (=> bs!1829663 (= lambda!387083 lambda!387035)))

(declare-fun bs!1829664 () Bool)

(assert (= bs!1829664 (and d!2151729 d!2151417)))

(assert (=> bs!1829664 (= lambda!387083 lambda!387022)))

(declare-fun bs!1829665 () Bool)

(assert (= bs!1829665 (and d!2151729 d!2151621)))

(assert (=> bs!1829665 (not (= lambda!387083 lambda!387070))))

(declare-fun bs!1829666 () Bool)

(assert (= bs!1829666 (and d!2151729 d!2151423)))

(assert (=> bs!1829666 (not (= lambda!387083 lambda!387026))))

(declare-fun bs!1829667 () Bool)

(assert (= bs!1829667 (and d!2151729 d!2151655)))

(assert (=> bs!1829667 (= lambda!387083 lambda!387078)))

(declare-fun bs!1829668 () Bool)

(assert (= bs!1829668 (and d!2151729 d!2151425)))

(assert (=> bs!1829668 (= lambda!387083 lambda!387031)))

(assert (=> bs!1829668 (not (= lambda!387083 lambda!387032))))

(declare-fun bs!1829669 () Bool)

(assert (= bs!1829669 (and d!2151729 d!2151599)))

(assert (=> bs!1829669 (= lambda!387083 lambda!387065)))

(declare-fun bs!1829670 () Bool)

(assert (= bs!1829670 (and d!2151729 d!2151593)))

(assert (=> bs!1829670 (= lambda!387083 lambda!387064)))

(declare-fun bs!1829671 () Bool)

(assert (= bs!1829671 (and d!2151729 d!2151675)))

(assert (=> bs!1829671 (= lambda!387083 lambda!387079)))

(declare-fun bs!1829672 () Bool)

(assert (= bs!1829672 (and d!2151729 b!6843348)))

(assert (=> bs!1829672 (not (= lambda!387083 lambda!386978))))

(declare-fun bs!1829673 () Bool)

(assert (= bs!1829673 (and d!2151729 d!2151419)))

(assert (=> bs!1829673 (= lambda!387083 lambda!387023)))

(declare-fun bs!1829674 () Bool)

(assert (= bs!1829674 (and d!2151729 d!2151587)))

(assert (=> bs!1829674 (= lambda!387083 lambda!387060)))

(declare-fun b!6844826 () Bool)

(declare-fun e!4127940 () Regex!16671)

(assert (=> b!6844826 (= e!4127940 (Concat!25516 (h!72636 (t!380055 (exprs!6555 (h!72637 zl!343)))) (generalisedConcat!2264 (t!380055 (t!380055 (exprs!6555 (h!72637 zl!343)))))))))

(declare-fun b!6844827 () Bool)

(declare-fun e!4127942 () Bool)

(declare-fun lt!2455706 () Regex!16671)

(assert (=> b!6844827 (= e!4127942 (isConcat!1526 lt!2455706))))

(declare-fun b!6844828 () Bool)

(declare-fun e!4127944 () Regex!16671)

(assert (=> b!6844828 (= e!4127944 (h!72636 (t!380055 (exprs!6555 (h!72637 zl!343)))))))

(declare-fun b!6844829 () Bool)

(assert (=> b!6844829 (= e!4127944 e!4127940)))

(declare-fun c!1274294 () Bool)

(assert (=> b!6844829 (= c!1274294 ((_ is Cons!66188) (t!380055 (exprs!6555 (h!72637 zl!343)))))))

(declare-fun b!6844830 () Bool)

(declare-fun e!4127941 () Bool)

(assert (=> b!6844830 (= e!4127941 (isEmptyExpr!2003 lt!2455706))))

(declare-fun b!6844831 () Bool)

(declare-fun e!4127943 () Bool)

(assert (=> b!6844831 (= e!4127943 (isEmpty!38567 (t!380055 (t!380055 (exprs!6555 (h!72637 zl!343))))))))

(declare-fun e!4127939 () Bool)

(assert (=> d!2151729 e!4127939))

(declare-fun res!2794490 () Bool)

(assert (=> d!2151729 (=> (not res!2794490) (not e!4127939))))

(assert (=> d!2151729 (= res!2794490 (validRegex!8407 lt!2455706))))

(assert (=> d!2151729 (= lt!2455706 e!4127944)))

(declare-fun c!1274292 () Bool)

(assert (=> d!2151729 (= c!1274292 e!4127943)))

(declare-fun res!2794489 () Bool)

(assert (=> d!2151729 (=> (not res!2794489) (not e!4127943))))

(assert (=> d!2151729 (= res!2794489 ((_ is Cons!66188) (t!380055 (exprs!6555 (h!72637 zl!343)))))))

(assert (=> d!2151729 (forall!15850 (t!380055 (exprs!6555 (h!72637 zl!343))) lambda!387083)))

(assert (=> d!2151729 (= (generalisedConcat!2264 (t!380055 (exprs!6555 (h!72637 zl!343)))) lt!2455706)))

(declare-fun b!6844832 () Bool)

(assert (=> b!6844832 (= e!4127940 EmptyExpr!16671)))

(declare-fun b!6844833 () Bool)

(assert (=> b!6844833 (= e!4127939 e!4127941)))

(declare-fun c!1274293 () Bool)

(assert (=> b!6844833 (= c!1274293 (isEmpty!38567 (t!380055 (exprs!6555 (h!72637 zl!343)))))))

(declare-fun b!6844834 () Bool)

(assert (=> b!6844834 (= e!4127942 (= lt!2455706 (head!13723 (t!380055 (exprs!6555 (h!72637 zl!343))))))))

(declare-fun b!6844835 () Bool)

(assert (=> b!6844835 (= e!4127941 e!4127942)))

(declare-fun c!1274295 () Bool)

(assert (=> b!6844835 (= c!1274295 (isEmpty!38567 (tail!12802 (t!380055 (exprs!6555 (h!72637 zl!343))))))))

(assert (= (and d!2151729 res!2794489) b!6844831))

(assert (= (and d!2151729 c!1274292) b!6844828))

(assert (= (and d!2151729 (not c!1274292)) b!6844829))

(assert (= (and b!6844829 c!1274294) b!6844826))

(assert (= (and b!6844829 (not c!1274294)) b!6844832))

(assert (= (and d!2151729 res!2794490) b!6844833))

(assert (= (and b!6844833 c!1274293) b!6844830))

(assert (= (and b!6844833 (not c!1274293)) b!6844835))

(assert (= (and b!6844835 c!1274295) b!6844834))

(assert (= (and b!6844835 (not c!1274295)) b!6844827))

(declare-fun m!7585834 () Bool)

(assert (=> d!2151729 m!7585834))

(declare-fun m!7585836 () Bool)

(assert (=> d!2151729 m!7585836))

(declare-fun m!7585838 () Bool)

(assert (=> b!6844834 m!7585838))

(declare-fun m!7585840 () Bool)

(assert (=> b!6844835 m!7585840))

(assert (=> b!6844835 m!7585840))

(declare-fun m!7585842 () Bool)

(assert (=> b!6844835 m!7585842))

(declare-fun m!7585844 () Bool)

(assert (=> b!6844827 m!7585844))

(declare-fun m!7585846 () Bool)

(assert (=> b!6844830 m!7585846))

(declare-fun m!7585848 () Bool)

(assert (=> b!6844826 m!7585848))

(declare-fun m!7585850 () Bool)

(assert (=> b!6844831 m!7585850))

(assert (=> b!6844833 m!7585516))

(assert (=> b!6844388 d!2151729))

(declare-fun d!2151737 () Bool)

(assert (=> d!2151737 (= (nullable!6636 (reg!17000 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564))))) (nullableFct!2520 (reg!17000 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564))))))))

(declare-fun bs!1829677 () Bool)

(assert (= bs!1829677 d!2151737))

(declare-fun m!7585852 () Bool)

(assert (=> bs!1829677 m!7585852))

(assert (=> b!6844331 d!2151737))

(assert (=> bm!623277 d!2151603))

(declare-fun d!2151739 () Bool)

(declare-fun c!1274302 () Bool)

(assert (=> d!2151739 (= c!1274302 ((_ is Nil!66189) res!2794404))))

(declare-fun e!4127958 () (InoxSet Context!12110))

(assert (=> d!2151739 (= (content!12977 res!2794404) e!4127958)))

(declare-fun b!6844855 () Bool)

(assert (=> b!6844855 (= e!4127958 ((as const (Array Context!12110 Bool)) false))))

(declare-fun b!6844856 () Bool)

(assert (=> b!6844856 (= e!4127958 ((_ map or) (store ((as const (Array Context!12110 Bool)) false) (h!72637 res!2794404) true) (content!12977 (t!380056 res!2794404))))))

(assert (= (and d!2151739 c!1274302) b!6844855))

(assert (= (and d!2151739 (not c!1274302)) b!6844856))

(declare-fun m!7585854 () Bool)

(assert (=> b!6844856 m!7585854))

(declare-fun m!7585856 () Bool)

(assert (=> b!6844856 m!7585856))

(assert (=> b!6844485 d!2151739))

(assert (=> b!6844428 d!2151577))

(declare-fun b!6844857 () Bool)

(declare-fun e!4127959 () Bool)

(declare-fun e!4127965 () Bool)

(assert (=> b!6844857 (= e!4127959 e!4127965)))

(declare-fun c!1274303 () Bool)

(assert (=> b!6844857 (= c!1274303 ((_ is Star!16671) lt!2455680))))

(declare-fun b!6844858 () Bool)

(declare-fun e!4127960 () Bool)

(declare-fun call!623337 () Bool)

(assert (=> b!6844858 (= e!4127960 call!623337)))

(declare-fun b!6844859 () Bool)

(declare-fun res!2794498 () Bool)

(declare-fun e!4127964 () Bool)

(assert (=> b!6844859 (=> (not res!2794498) (not e!4127964))))

(declare-fun call!623339 () Bool)

(assert (=> b!6844859 (= res!2794498 call!623339)))

(declare-fun e!4127963 () Bool)

(assert (=> b!6844859 (= e!4127963 e!4127964)))

(declare-fun b!6844860 () Bool)

(assert (=> b!6844860 (= e!4127965 e!4127960)))

(declare-fun res!2794502 () Bool)

(assert (=> b!6844860 (= res!2794502 (not (nullable!6636 (reg!17000 lt!2455680))))))

(assert (=> b!6844860 (=> (not res!2794502) (not e!4127960))))

(declare-fun b!6844861 () Bool)

(declare-fun e!4127962 () Bool)

(declare-fun e!4127961 () Bool)

(assert (=> b!6844861 (= e!4127962 e!4127961)))

(declare-fun res!2794499 () Bool)

(assert (=> b!6844861 (=> (not res!2794499) (not e!4127961))))

(assert (=> b!6844861 (= res!2794499 call!623339)))

(declare-fun bm!623332 () Bool)

(declare-fun call!623338 () Bool)

(assert (=> bm!623332 (= call!623338 call!623337)))

(declare-fun bm!623333 () Bool)

(declare-fun c!1274304 () Bool)

(assert (=> bm!623333 (= call!623339 (validRegex!8407 (ite c!1274304 (regOne!33855 lt!2455680) (regOne!33854 lt!2455680))))))

(declare-fun bm!623334 () Bool)

(assert (=> bm!623334 (= call!623337 (validRegex!8407 (ite c!1274303 (reg!17000 lt!2455680) (ite c!1274304 (regTwo!33855 lt!2455680) (regTwo!33854 lt!2455680)))))))

(declare-fun d!2151741 () Bool)

(declare-fun res!2794501 () Bool)

(assert (=> d!2151741 (=> res!2794501 e!4127959)))

(assert (=> d!2151741 (= res!2794501 ((_ is ElementMatch!16671) lt!2455680))))

(assert (=> d!2151741 (= (validRegex!8407 lt!2455680) e!4127959)))

(declare-fun b!6844862 () Bool)

(assert (=> b!6844862 (= e!4127965 e!4127963)))

(assert (=> b!6844862 (= c!1274304 ((_ is Union!16671) lt!2455680))))

(declare-fun b!6844863 () Bool)

(assert (=> b!6844863 (= e!4127961 call!623338)))

(declare-fun b!6844864 () Bool)

(assert (=> b!6844864 (= e!4127964 call!623338)))

(declare-fun b!6844865 () Bool)

(declare-fun res!2794500 () Bool)

(assert (=> b!6844865 (=> res!2794500 e!4127962)))

(assert (=> b!6844865 (= res!2794500 (not ((_ is Concat!25516) lt!2455680)))))

(assert (=> b!6844865 (= e!4127963 e!4127962)))

(assert (= (and d!2151741 (not res!2794501)) b!6844857))

(assert (= (and b!6844857 c!1274303) b!6844860))

(assert (= (and b!6844857 (not c!1274303)) b!6844862))

(assert (= (and b!6844860 res!2794502) b!6844858))

(assert (= (and b!6844862 c!1274304) b!6844859))

(assert (= (and b!6844862 (not c!1274304)) b!6844865))

(assert (= (and b!6844859 res!2794498) b!6844864))

(assert (= (and b!6844865 (not res!2794500)) b!6844861))

(assert (= (and b!6844861 res!2794499) b!6844863))

(assert (= (or b!6844864 b!6844863) bm!623332))

(assert (= (or b!6844859 b!6844861) bm!623333))

(assert (= (or b!6844858 bm!623332) bm!623334))

(declare-fun m!7585858 () Bool)

(assert (=> b!6844860 m!7585858))

(declare-fun m!7585860 () Bool)

(assert (=> bm!623333 m!7585860))

(declare-fun m!7585862 () Bool)

(assert (=> bm!623334 m!7585862))

(assert (=> d!2151591 d!2151741))

(declare-fun d!2151743 () Bool)

(declare-fun res!2794503 () Bool)

(declare-fun e!4127966 () Bool)

(assert (=> d!2151743 (=> res!2794503 e!4127966)))

(assert (=> d!2151743 (= res!2794503 ((_ is Nil!66188) (exprs!6555 (h!72637 zl!343))))))

(assert (=> d!2151743 (= (forall!15850 (exprs!6555 (h!72637 zl!343)) lambda!387063) e!4127966)))

(declare-fun b!6844866 () Bool)

(declare-fun e!4127967 () Bool)

(assert (=> b!6844866 (= e!4127966 e!4127967)))

(declare-fun res!2794504 () Bool)

(assert (=> b!6844866 (=> (not res!2794504) (not e!4127967))))

(assert (=> b!6844866 (= res!2794504 (dynLambda!26449 lambda!387063 (h!72636 (exprs!6555 (h!72637 zl!343)))))))

(declare-fun b!6844867 () Bool)

(assert (=> b!6844867 (= e!4127967 (forall!15850 (t!380055 (exprs!6555 (h!72637 zl!343))) lambda!387063))))

(assert (= (and d!2151743 (not res!2794503)) b!6844866))

(assert (= (and b!6844866 res!2794504) b!6844867))

(declare-fun b_lambda!258205 () Bool)

(assert (=> (not b_lambda!258205) (not b!6844866)))

(declare-fun m!7585864 () Bool)

(assert (=> b!6844866 m!7585864))

(declare-fun m!7585866 () Bool)

(assert (=> b!6844867 m!7585866))

(assert (=> d!2151591 d!2151743))

(declare-fun d!2151745 () Bool)

(declare-fun res!2794505 () Bool)

(declare-fun e!4127968 () Bool)

(assert (=> d!2151745 (=> res!2794505 e!4127968)))

(assert (=> d!2151745 (= res!2794505 ((_ is Nil!66188) (exprs!6555 (h!72637 (t!380056 zl!343)))))))

(assert (=> d!2151745 (= (forall!15850 (exprs!6555 (h!72637 (t!380056 zl!343))) lambda!387079) e!4127968)))

(declare-fun b!6844868 () Bool)

(declare-fun e!4127969 () Bool)

(assert (=> b!6844868 (= e!4127968 e!4127969)))

(declare-fun res!2794506 () Bool)

(assert (=> b!6844868 (=> (not res!2794506) (not e!4127969))))

(assert (=> b!6844868 (= res!2794506 (dynLambda!26449 lambda!387079 (h!72636 (exprs!6555 (h!72637 (t!380056 zl!343))))))))

(declare-fun b!6844869 () Bool)

(assert (=> b!6844869 (= e!4127969 (forall!15850 (t!380055 (exprs!6555 (h!72637 (t!380056 zl!343)))) lambda!387079))))

(assert (= (and d!2151745 (not res!2794505)) b!6844868))

(assert (= (and b!6844868 res!2794506) b!6844869))

(declare-fun b_lambda!258207 () Bool)

(assert (=> (not b_lambda!258207) (not b!6844868)))

(declare-fun m!7585868 () Bool)

(assert (=> b!6844868 m!7585868))

(declare-fun m!7585870 () Bool)

(assert (=> b!6844869 m!7585870))

(assert (=> d!2151675 d!2151745))

(declare-fun b!6844870 () Bool)

(declare-fun e!4127975 () Bool)

(assert (=> b!6844870 (= e!4127975 (matchR!8854 (derivativeStep!5319 (derivativeStep!5319 (derivativeStep!5319 lt!2455564 (head!13721 s!2326)) (head!13721 (tail!12800 s!2326))) (head!13721 (tail!12800 (tail!12800 s!2326)))) (tail!12800 (tail!12800 (tail!12800 s!2326)))))))

(declare-fun b!6844871 () Bool)

(declare-fun e!4127973 () Bool)

(assert (=> b!6844871 (= e!4127973 (= (head!13721 (tail!12800 (tail!12800 s!2326))) (c!1273977 (derivativeStep!5319 (derivativeStep!5319 lt!2455564 (head!13721 s!2326)) (head!13721 (tail!12800 s!2326))))))))

(declare-fun b!6844872 () Bool)

(declare-fun e!4127976 () Bool)

(declare-fun e!4127972 () Bool)

(assert (=> b!6844872 (= e!4127976 e!4127972)))

(declare-fun c!1274306 () Bool)

(assert (=> b!6844872 (= c!1274306 ((_ is EmptyLang!16671) (derivativeStep!5319 (derivativeStep!5319 lt!2455564 (head!13721 s!2326)) (head!13721 (tail!12800 s!2326)))))))

(declare-fun b!6844873 () Bool)

(declare-fun lt!2455708 () Bool)

(assert (=> b!6844873 (= e!4127972 (not lt!2455708))))

(declare-fun b!6844874 () Bool)

(declare-fun e!4127970 () Bool)

(declare-fun e!4127974 () Bool)

(assert (=> b!6844874 (= e!4127970 e!4127974)))

(declare-fun res!2794507 () Bool)

(assert (=> b!6844874 (=> (not res!2794507) (not e!4127974))))

(assert (=> b!6844874 (= res!2794507 (not lt!2455708))))

(declare-fun bm!623335 () Bool)

(declare-fun call!623340 () Bool)

(assert (=> bm!623335 (= call!623340 (isEmpty!38565 (tail!12800 (tail!12800 s!2326))))))

(declare-fun b!6844875 () Bool)

(declare-fun e!4127971 () Bool)

(assert (=> b!6844875 (= e!4127974 e!4127971)))

(declare-fun res!2794509 () Bool)

(assert (=> b!6844875 (=> res!2794509 e!4127971)))

(assert (=> b!6844875 (= res!2794509 call!623340)))

(declare-fun b!6844876 () Bool)

(assert (=> b!6844876 (= e!4127976 (= lt!2455708 call!623340))))

(declare-fun b!6844877 () Bool)

(declare-fun res!2794511 () Bool)

(assert (=> b!6844877 (=> res!2794511 e!4127971)))

(assert (=> b!6844877 (= res!2794511 (not (isEmpty!38565 (tail!12800 (tail!12800 (tail!12800 s!2326))))))))

(declare-fun b!6844878 () Bool)

(declare-fun res!2794514 () Bool)

(assert (=> b!6844878 (=> (not res!2794514) (not e!4127973))))

(assert (=> b!6844878 (= res!2794514 (not call!623340))))

(declare-fun d!2151747 () Bool)

(assert (=> d!2151747 e!4127976))

(declare-fun c!1274305 () Bool)

(assert (=> d!2151747 (= c!1274305 ((_ is EmptyExpr!16671) (derivativeStep!5319 (derivativeStep!5319 lt!2455564 (head!13721 s!2326)) (head!13721 (tail!12800 s!2326)))))))

(assert (=> d!2151747 (= lt!2455708 e!4127975)))

(declare-fun c!1274307 () Bool)

(assert (=> d!2151747 (= c!1274307 (isEmpty!38565 (tail!12800 (tail!12800 s!2326))))))

(assert (=> d!2151747 (validRegex!8407 (derivativeStep!5319 (derivativeStep!5319 lt!2455564 (head!13721 s!2326)) (head!13721 (tail!12800 s!2326))))))

(assert (=> d!2151747 (= (matchR!8854 (derivativeStep!5319 (derivativeStep!5319 lt!2455564 (head!13721 s!2326)) (head!13721 (tail!12800 s!2326))) (tail!12800 (tail!12800 s!2326))) lt!2455708)))

(declare-fun b!6844879 () Bool)

(assert (=> b!6844879 (= e!4127971 (not (= (head!13721 (tail!12800 (tail!12800 s!2326))) (c!1273977 (derivativeStep!5319 (derivativeStep!5319 lt!2455564 (head!13721 s!2326)) (head!13721 (tail!12800 s!2326)))))))))

(declare-fun b!6844880 () Bool)

(declare-fun res!2794508 () Bool)

(assert (=> b!6844880 (=> res!2794508 e!4127970)))

(assert (=> b!6844880 (= res!2794508 e!4127973)))

(declare-fun res!2794510 () Bool)

(assert (=> b!6844880 (=> (not res!2794510) (not e!4127973))))

(assert (=> b!6844880 (= res!2794510 lt!2455708)))

(declare-fun b!6844881 () Bool)

(assert (=> b!6844881 (= e!4127975 (nullable!6636 (derivativeStep!5319 (derivativeStep!5319 lt!2455564 (head!13721 s!2326)) (head!13721 (tail!12800 s!2326)))))))

(declare-fun b!6844882 () Bool)

(declare-fun res!2794512 () Bool)

(assert (=> b!6844882 (=> (not res!2794512) (not e!4127973))))

(assert (=> b!6844882 (= res!2794512 (isEmpty!38565 (tail!12800 (tail!12800 (tail!12800 s!2326)))))))

(declare-fun b!6844883 () Bool)

(declare-fun res!2794513 () Bool)

(assert (=> b!6844883 (=> res!2794513 e!4127970)))

(assert (=> b!6844883 (= res!2794513 (not ((_ is ElementMatch!16671) (derivativeStep!5319 (derivativeStep!5319 lt!2455564 (head!13721 s!2326)) (head!13721 (tail!12800 s!2326))))))))

(assert (=> b!6844883 (= e!4127972 e!4127970)))

(assert (= (and d!2151747 c!1274307) b!6844881))

(assert (= (and d!2151747 (not c!1274307)) b!6844870))

(assert (= (and d!2151747 c!1274305) b!6844876))

(assert (= (and d!2151747 (not c!1274305)) b!6844872))

(assert (= (and b!6844872 c!1274306) b!6844873))

(assert (= (and b!6844872 (not c!1274306)) b!6844883))

(assert (= (and b!6844883 (not res!2794513)) b!6844880))

(assert (= (and b!6844880 res!2794510) b!6844878))

(assert (= (and b!6844878 res!2794514) b!6844882))

(assert (= (and b!6844882 res!2794512) b!6844871))

(assert (= (and b!6844880 (not res!2794508)) b!6844874))

(assert (= (and b!6844874 res!2794507) b!6844875))

(assert (= (and b!6844875 (not res!2794509)) b!6844877))

(assert (= (and b!6844877 (not res!2794511)) b!6844879))

(assert (= (or b!6844876 b!6844875 b!6844878) bm!623335))

(assert (=> bm!623335 m!7585700))

(assert (=> bm!623335 m!7585702))

(assert (=> d!2151747 m!7585700))

(assert (=> d!2151747 m!7585702))

(assert (=> d!2151747 m!7585736))

(declare-fun m!7585890 () Bool)

(assert (=> d!2151747 m!7585890))

(assert (=> b!6844871 m!7585700))

(declare-fun m!7585892 () Bool)

(assert (=> b!6844871 m!7585892))

(assert (=> b!6844882 m!7585700))

(declare-fun m!7585894 () Bool)

(assert (=> b!6844882 m!7585894))

(assert (=> b!6844882 m!7585894))

(declare-fun m!7585896 () Bool)

(assert (=> b!6844882 m!7585896))

(assert (=> b!6844881 m!7585736))

(declare-fun m!7585898 () Bool)

(assert (=> b!6844881 m!7585898))

(assert (=> b!6844879 m!7585700))

(assert (=> b!6844879 m!7585892))

(assert (=> b!6844870 m!7585700))

(assert (=> b!6844870 m!7585892))

(assert (=> b!6844870 m!7585736))

(assert (=> b!6844870 m!7585892))

(declare-fun m!7585900 () Bool)

(assert (=> b!6844870 m!7585900))

(assert (=> b!6844870 m!7585700))

(assert (=> b!6844870 m!7585894))

(assert (=> b!6844870 m!7585900))

(assert (=> b!6844870 m!7585894))

(declare-fun m!7585902 () Bool)

(assert (=> b!6844870 m!7585902))

(assert (=> b!6844877 m!7585700))

(assert (=> b!6844877 m!7585894))

(assert (=> b!6844877 m!7585894))

(assert (=> b!6844877 m!7585896))

(assert (=> b!6844621 d!2151747))

(declare-fun d!2151751 () Bool)

(declare-fun lt!2455709 () Regex!16671)

(assert (=> d!2151751 (validRegex!8407 lt!2455709)))

(declare-fun e!4127988 () Regex!16671)

(assert (=> d!2151751 (= lt!2455709 e!4127988)))

(declare-fun c!1274314 () Bool)

(assert (=> d!2151751 (= c!1274314 (or ((_ is EmptyExpr!16671) (derivativeStep!5319 lt!2455564 (head!13721 s!2326))) ((_ is EmptyLang!16671) (derivativeStep!5319 lt!2455564 (head!13721 s!2326)))))))

(assert (=> d!2151751 (validRegex!8407 (derivativeStep!5319 lt!2455564 (head!13721 s!2326)))))

(assert (=> d!2151751 (= (derivativeStep!5319 (derivativeStep!5319 lt!2455564 (head!13721 s!2326)) (head!13721 (tail!12800 s!2326))) lt!2455709)))

(declare-fun call!623346 () Regex!16671)

(declare-fun e!4127986 () Regex!16671)

(declare-fun b!6844893 () Bool)

(assert (=> b!6844893 (= e!4127986 (Concat!25516 call!623346 (derivativeStep!5319 lt!2455564 (head!13721 s!2326))))))

(declare-fun c!1274310 () Bool)

(declare-fun call!623345 () Regex!16671)

(declare-fun c!1274311 () Bool)

(declare-fun bm!623339 () Bool)

(assert (=> bm!623339 (= call!623345 (derivativeStep!5319 (ite c!1274310 (regTwo!33855 (derivativeStep!5319 lt!2455564 (head!13721 s!2326))) (ite c!1274311 (regTwo!33854 (derivativeStep!5319 lt!2455564 (head!13721 s!2326))) (regOne!33854 (derivativeStep!5319 lt!2455564 (head!13721 s!2326))))) (head!13721 (tail!12800 s!2326))))))

(declare-fun b!6844894 () Bool)

(declare-fun e!4127987 () Regex!16671)

(declare-fun call!623347 () Regex!16671)

(assert (=> b!6844894 (= e!4127987 (Union!16671 (Concat!25516 call!623347 (regTwo!33854 (derivativeStep!5319 lt!2455564 (head!13721 s!2326)))) EmptyLang!16671))))

(declare-fun bm!623340 () Bool)

(declare-fun call!623344 () Regex!16671)

(assert (=> bm!623340 (= call!623346 call!623344)))

(declare-fun b!6844895 () Bool)

(declare-fun e!4127985 () Regex!16671)

(assert (=> b!6844895 (= e!4127985 (Union!16671 call!623344 call!623345))))

(declare-fun b!6844896 () Bool)

(declare-fun e!4127984 () Regex!16671)

(assert (=> b!6844896 (= e!4127988 e!4127984)))

(declare-fun c!1274312 () Bool)

(assert (=> b!6844896 (= c!1274312 ((_ is ElementMatch!16671) (derivativeStep!5319 lt!2455564 (head!13721 s!2326))))))

(declare-fun c!1274313 () Bool)

(declare-fun bm!623341 () Bool)

(assert (=> bm!623341 (= call!623344 (derivativeStep!5319 (ite c!1274310 (regOne!33855 (derivativeStep!5319 lt!2455564 (head!13721 s!2326))) (ite c!1274313 (reg!17000 (derivativeStep!5319 lt!2455564 (head!13721 s!2326))) (regOne!33854 (derivativeStep!5319 lt!2455564 (head!13721 s!2326))))) (head!13721 (tail!12800 s!2326))))))

(declare-fun b!6844897 () Bool)

(assert (=> b!6844897 (= e!4127988 EmptyLang!16671)))

(declare-fun b!6844898 () Bool)

(assert (=> b!6844898 (= c!1274311 (nullable!6636 (regOne!33854 (derivativeStep!5319 lt!2455564 (head!13721 s!2326)))))))

(assert (=> b!6844898 (= e!4127986 e!4127987)))

(declare-fun b!6844899 () Bool)

(assert (=> b!6844899 (= e!4127987 (Union!16671 (Concat!25516 call!623346 (regTwo!33854 (derivativeStep!5319 lt!2455564 (head!13721 s!2326)))) call!623347))))

(declare-fun b!6844900 () Bool)

(assert (=> b!6844900 (= e!4127985 e!4127986)))

(assert (=> b!6844900 (= c!1274313 ((_ is Star!16671) (derivativeStep!5319 lt!2455564 (head!13721 s!2326))))))

(declare-fun b!6844901 () Bool)

(assert (=> b!6844901 (= e!4127984 (ite (= (head!13721 (tail!12800 s!2326)) (c!1273977 (derivativeStep!5319 lt!2455564 (head!13721 s!2326)))) EmptyExpr!16671 EmptyLang!16671))))

(declare-fun b!6844902 () Bool)

(assert (=> b!6844902 (= c!1274310 ((_ is Union!16671) (derivativeStep!5319 lt!2455564 (head!13721 s!2326))))))

(assert (=> b!6844902 (= e!4127984 e!4127985)))

(declare-fun bm!623342 () Bool)

(assert (=> bm!623342 (= call!623347 call!623345)))

(assert (= (and d!2151751 c!1274314) b!6844897))

(assert (= (and d!2151751 (not c!1274314)) b!6844896))

(assert (= (and b!6844896 c!1274312) b!6844901))

(assert (= (and b!6844896 (not c!1274312)) b!6844902))

(assert (= (and b!6844902 c!1274310) b!6844895))

(assert (= (and b!6844902 (not c!1274310)) b!6844900))

(assert (= (and b!6844900 c!1274313) b!6844893))

(assert (= (and b!6844900 (not c!1274313)) b!6844898))

(assert (= (and b!6844898 c!1274311) b!6844899))

(assert (= (and b!6844898 (not c!1274311)) b!6844894))

(assert (= (or b!6844899 b!6844894) bm!623342))

(assert (= (or b!6844893 b!6844899) bm!623340))

(assert (= (or b!6844895 bm!623342) bm!623339))

(assert (= (or b!6844895 bm!623340) bm!623341))

(declare-fun m!7585906 () Bool)

(assert (=> d!2151751 m!7585906))

(assert (=> d!2151751 m!7585006))

(assert (=> d!2151751 m!7585732))

(assert (=> bm!623339 m!7585698))

(declare-fun m!7585912 () Bool)

(assert (=> bm!623339 m!7585912))

(assert (=> bm!623341 m!7585698))

(declare-fun m!7585914 () Bool)

(assert (=> bm!623341 m!7585914))

(declare-fun m!7585916 () Bool)

(assert (=> b!6844898 m!7585916))

(assert (=> b!6844621 d!2151751))

(declare-fun d!2151755 () Bool)

(assert (=> d!2151755 (= (head!13721 (tail!12800 s!2326)) (h!72638 (tail!12800 s!2326)))))

(assert (=> b!6844621 d!2151755))

(declare-fun d!2151757 () Bool)

(assert (=> d!2151757 (= (tail!12800 (tail!12800 s!2326)) (t!380057 (tail!12800 s!2326)))))

(assert (=> b!6844621 d!2151757))

(assert (=> d!2151671 d!2151579))

(declare-fun b!6844905 () Bool)

(declare-fun e!4127991 () Bool)

(declare-fun e!4127997 () Bool)

(assert (=> b!6844905 (= e!4127991 e!4127997)))

(declare-fun c!1274315 () Bool)

(assert (=> b!6844905 (= c!1274315 ((_ is Star!16671) (derivativeStep!5319 lt!2455564 (head!13721 s!2326))))))

(declare-fun b!6844906 () Bool)

(declare-fun e!4127992 () Bool)

(declare-fun call!623348 () Bool)

(assert (=> b!6844906 (= e!4127992 call!623348)))

(declare-fun b!6844907 () Bool)

(declare-fun res!2794522 () Bool)

(declare-fun e!4127996 () Bool)

(assert (=> b!6844907 (=> (not res!2794522) (not e!4127996))))

(declare-fun call!623350 () Bool)

(assert (=> b!6844907 (= res!2794522 call!623350)))

(declare-fun e!4127995 () Bool)

(assert (=> b!6844907 (= e!4127995 e!4127996)))

(declare-fun b!6844908 () Bool)

(assert (=> b!6844908 (= e!4127997 e!4127992)))

(declare-fun res!2794526 () Bool)

(assert (=> b!6844908 (= res!2794526 (not (nullable!6636 (reg!17000 (derivativeStep!5319 lt!2455564 (head!13721 s!2326))))))))

(assert (=> b!6844908 (=> (not res!2794526) (not e!4127992))))

(declare-fun b!6844909 () Bool)

(declare-fun e!4127994 () Bool)

(declare-fun e!4127993 () Bool)

(assert (=> b!6844909 (= e!4127994 e!4127993)))

(declare-fun res!2794523 () Bool)

(assert (=> b!6844909 (=> (not res!2794523) (not e!4127993))))

(assert (=> b!6844909 (= res!2794523 call!623350)))

(declare-fun bm!623343 () Bool)

(declare-fun call!623349 () Bool)

(assert (=> bm!623343 (= call!623349 call!623348)))

(declare-fun bm!623344 () Bool)

(declare-fun c!1274316 () Bool)

(assert (=> bm!623344 (= call!623350 (validRegex!8407 (ite c!1274316 (regOne!33855 (derivativeStep!5319 lt!2455564 (head!13721 s!2326))) (regOne!33854 (derivativeStep!5319 lt!2455564 (head!13721 s!2326))))))))

(declare-fun bm!623345 () Bool)

(assert (=> bm!623345 (= call!623348 (validRegex!8407 (ite c!1274315 (reg!17000 (derivativeStep!5319 lt!2455564 (head!13721 s!2326))) (ite c!1274316 (regTwo!33855 (derivativeStep!5319 lt!2455564 (head!13721 s!2326))) (regTwo!33854 (derivativeStep!5319 lt!2455564 (head!13721 s!2326)))))))))

(declare-fun d!2151759 () Bool)

(declare-fun res!2794525 () Bool)

(assert (=> d!2151759 (=> res!2794525 e!4127991)))

(assert (=> d!2151759 (= res!2794525 ((_ is ElementMatch!16671) (derivativeStep!5319 lt!2455564 (head!13721 s!2326))))))

(assert (=> d!2151759 (= (validRegex!8407 (derivativeStep!5319 lt!2455564 (head!13721 s!2326))) e!4127991)))

(declare-fun b!6844910 () Bool)

(assert (=> b!6844910 (= e!4127997 e!4127995)))

(assert (=> b!6844910 (= c!1274316 ((_ is Union!16671) (derivativeStep!5319 lt!2455564 (head!13721 s!2326))))))

(declare-fun b!6844911 () Bool)

(assert (=> b!6844911 (= e!4127993 call!623349)))

(declare-fun b!6844912 () Bool)

(assert (=> b!6844912 (= e!4127996 call!623349)))

(declare-fun b!6844913 () Bool)

(declare-fun res!2794524 () Bool)

(assert (=> b!6844913 (=> res!2794524 e!4127994)))

(assert (=> b!6844913 (= res!2794524 (not ((_ is Concat!25516) (derivativeStep!5319 lt!2455564 (head!13721 s!2326)))))))

(assert (=> b!6844913 (= e!4127995 e!4127994)))

(assert (= (and d!2151759 (not res!2794525)) b!6844905))

(assert (= (and b!6844905 c!1274315) b!6844908))

(assert (= (and b!6844905 (not c!1274315)) b!6844910))

(assert (= (and b!6844908 res!2794526) b!6844906))

(assert (= (and b!6844910 c!1274316) b!6844907))

(assert (= (and b!6844910 (not c!1274316)) b!6844913))

(assert (= (and b!6844907 res!2794522) b!6844912))

(assert (= (and b!6844913 (not res!2794524)) b!6844909))

(assert (= (and b!6844909 res!2794523) b!6844911))

(assert (= (or b!6844912 b!6844911) bm!623343))

(assert (= (or b!6844907 b!6844909) bm!623344))

(assert (= (or b!6844906 bm!623343) bm!623345))

(declare-fun m!7585922 () Bool)

(assert (=> b!6844908 m!7585922))

(declare-fun m!7585924 () Bool)

(assert (=> bm!623344 m!7585924))

(declare-fun m!7585926 () Bool)

(assert (=> bm!623345 m!7585926))

(assert (=> d!2151671 d!2151759))

(declare-fun d!2151763 () Bool)

(assert (=> d!2151763 (= (isEmpty!38567 (tail!12802 (exprs!6555 lt!2455629))) ((_ is Nil!66188) (tail!12802 (exprs!6555 lt!2455629))))))

(assert (=> b!6844418 d!2151763))

(declare-fun d!2151767 () Bool)

(assert (=> d!2151767 (= (tail!12802 (exprs!6555 lt!2455629)) (t!380055 (exprs!6555 lt!2455629)))))

(assert (=> b!6844418 d!2151767))

(declare-fun d!2151769 () Bool)

(declare-fun res!2794529 () Bool)

(declare-fun e!4128000 () Bool)

(assert (=> d!2151769 (=> res!2794529 e!4128000)))

(assert (=> d!2151769 (= res!2794529 ((_ is Nil!66188) (exprs!6555 setElem!47065)))))

(assert (=> d!2151769 (= (forall!15850 (exprs!6555 setElem!47065) lambda!387060) e!4128000)))

(declare-fun b!6844916 () Bool)

(declare-fun e!4128001 () Bool)

(assert (=> b!6844916 (= e!4128000 e!4128001)))

(declare-fun res!2794530 () Bool)

(assert (=> b!6844916 (=> (not res!2794530) (not e!4128001))))

(assert (=> b!6844916 (= res!2794530 (dynLambda!26449 lambda!387060 (h!72636 (exprs!6555 setElem!47065))))))

(declare-fun b!6844917 () Bool)

(assert (=> b!6844917 (= e!4128001 (forall!15850 (t!380055 (exprs!6555 setElem!47065)) lambda!387060))))

(assert (= (and d!2151769 (not res!2794529)) b!6844916))

(assert (= (and b!6844916 res!2794530) b!6844917))

(declare-fun b_lambda!258213 () Bool)

(assert (=> (not b_lambda!258213) (not b!6844916)))

(declare-fun m!7585932 () Bool)

(assert (=> b!6844916 m!7585932))

(declare-fun m!7585934 () Bool)

(assert (=> b!6844917 m!7585934))

(assert (=> d!2151587 d!2151769))

(declare-fun bs!1829691 () Bool)

(declare-fun d!2151771 () Bool)

(assert (= bs!1829691 (and d!2151771 d!2151591)))

(declare-fun lambda!387085 () Int)

(assert (=> bs!1829691 (= lambda!387085 lambda!387063)))

(declare-fun bs!1829692 () Bool)

(assert (= bs!1829692 (and d!2151771 d!2151623)))

(assert (=> bs!1829692 (not (= lambda!387085 lambda!387073))))

(declare-fun bs!1829693 () Bool)

(assert (= bs!1829693 (and d!2151771 d!2151427)))

(assert (=> bs!1829693 (= lambda!387085 lambda!387035)))

(declare-fun bs!1829694 () Bool)

(assert (= bs!1829694 (and d!2151771 d!2151417)))

(assert (=> bs!1829694 (= lambda!387085 lambda!387022)))

(declare-fun bs!1829695 () Bool)

(assert (= bs!1829695 (and d!2151771 d!2151423)))

(assert (=> bs!1829695 (not (= lambda!387085 lambda!387026))))

(declare-fun bs!1829696 () Bool)

(assert (= bs!1829696 (and d!2151771 d!2151655)))

(assert (=> bs!1829696 (= lambda!387085 lambda!387078)))

(declare-fun bs!1829697 () Bool)

(assert (= bs!1829697 (and d!2151771 d!2151425)))

(assert (=> bs!1829697 (= lambda!387085 lambda!387031)))

(assert (=> bs!1829697 (not (= lambda!387085 lambda!387032))))

(declare-fun bs!1829698 () Bool)

(assert (= bs!1829698 (and d!2151771 d!2151621)))

(assert (=> bs!1829698 (not (= lambda!387085 lambda!387070))))

(declare-fun bs!1829699 () Bool)

(assert (= bs!1829699 (and d!2151771 d!2151729)))

(assert (=> bs!1829699 (= lambda!387085 lambda!387083)))

(declare-fun bs!1829700 () Bool)

(assert (= bs!1829700 (and d!2151771 d!2151599)))

(assert (=> bs!1829700 (= lambda!387085 lambda!387065)))

(declare-fun bs!1829701 () Bool)

(assert (= bs!1829701 (and d!2151771 d!2151593)))

(assert (=> bs!1829701 (= lambda!387085 lambda!387064)))

(declare-fun bs!1829702 () Bool)

(assert (= bs!1829702 (and d!2151771 d!2151675)))

(assert (=> bs!1829702 (= lambda!387085 lambda!387079)))

(declare-fun bs!1829703 () Bool)

(assert (= bs!1829703 (and d!2151771 b!6843348)))

(assert (=> bs!1829703 (not (= lambda!387085 lambda!386978))))

(declare-fun bs!1829704 () Bool)

(assert (= bs!1829704 (and d!2151771 d!2151419)))

(assert (=> bs!1829704 (= lambda!387085 lambda!387023)))

(declare-fun bs!1829705 () Bool)

(assert (= bs!1829705 (and d!2151771 d!2151587)))

(assert (=> bs!1829705 (= lambda!387085 lambda!387060)))

(declare-fun b!6844918 () Bool)

(declare-fun e!4128003 () Regex!16671)

(assert (=> b!6844918 (= e!4128003 (Concat!25516 (h!72636 (exprs!6555 (h!72637 (t!380056 zl!343)))) (generalisedConcat!2264 (t!380055 (exprs!6555 (h!72637 (t!380056 zl!343)))))))))

(declare-fun b!6844919 () Bool)

(declare-fun e!4128005 () Bool)

(declare-fun lt!2455710 () Regex!16671)

(assert (=> b!6844919 (= e!4128005 (isConcat!1526 lt!2455710))))

(declare-fun b!6844920 () Bool)

(declare-fun e!4128007 () Regex!16671)

(assert (=> b!6844920 (= e!4128007 (h!72636 (exprs!6555 (h!72637 (t!380056 zl!343)))))))

(declare-fun b!6844921 () Bool)

(assert (=> b!6844921 (= e!4128007 e!4128003)))

(declare-fun c!1274319 () Bool)

(assert (=> b!6844921 (= c!1274319 ((_ is Cons!66188) (exprs!6555 (h!72637 (t!380056 zl!343)))))))

(declare-fun b!6844922 () Bool)

(declare-fun e!4128004 () Bool)

(assert (=> b!6844922 (= e!4128004 (isEmptyExpr!2003 lt!2455710))))

(declare-fun b!6844923 () Bool)

(declare-fun e!4128006 () Bool)

(assert (=> b!6844923 (= e!4128006 (isEmpty!38567 (t!380055 (exprs!6555 (h!72637 (t!380056 zl!343))))))))

(declare-fun e!4128002 () Bool)

(assert (=> d!2151771 e!4128002))

(declare-fun res!2794532 () Bool)

(assert (=> d!2151771 (=> (not res!2794532) (not e!4128002))))

(assert (=> d!2151771 (= res!2794532 (validRegex!8407 lt!2455710))))

(assert (=> d!2151771 (= lt!2455710 e!4128007)))

(declare-fun c!1274317 () Bool)

(assert (=> d!2151771 (= c!1274317 e!4128006)))

(declare-fun res!2794531 () Bool)

(assert (=> d!2151771 (=> (not res!2794531) (not e!4128006))))

(assert (=> d!2151771 (= res!2794531 ((_ is Cons!66188) (exprs!6555 (h!72637 (t!380056 zl!343)))))))

(assert (=> d!2151771 (forall!15850 (exprs!6555 (h!72637 (t!380056 zl!343))) lambda!387085)))

(assert (=> d!2151771 (= (generalisedConcat!2264 (exprs!6555 (h!72637 (t!380056 zl!343)))) lt!2455710)))

(declare-fun b!6844924 () Bool)

(assert (=> b!6844924 (= e!4128003 EmptyExpr!16671)))

(declare-fun b!6844925 () Bool)

(assert (=> b!6844925 (= e!4128002 e!4128004)))

(declare-fun c!1274318 () Bool)

(assert (=> b!6844925 (= c!1274318 (isEmpty!38567 (exprs!6555 (h!72637 (t!380056 zl!343)))))))

(declare-fun b!6844926 () Bool)

(assert (=> b!6844926 (= e!4128005 (= lt!2455710 (head!13723 (exprs!6555 (h!72637 (t!380056 zl!343))))))))

(declare-fun b!6844927 () Bool)

(assert (=> b!6844927 (= e!4128004 e!4128005)))

(declare-fun c!1274320 () Bool)

(assert (=> b!6844927 (= c!1274320 (isEmpty!38567 (tail!12802 (exprs!6555 (h!72637 (t!380056 zl!343))))))))

(assert (= (and d!2151771 res!2794531) b!6844923))

(assert (= (and d!2151771 c!1274317) b!6844920))

(assert (= (and d!2151771 (not c!1274317)) b!6844921))

(assert (= (and b!6844921 c!1274319) b!6844918))

(assert (= (and b!6844921 (not c!1274319)) b!6844924))

(assert (= (and d!2151771 res!2794532) b!6844925))

(assert (= (and b!6844925 c!1274318) b!6844922))

(assert (= (and b!6844925 (not c!1274318)) b!6844927))

(assert (= (and b!6844927 c!1274320) b!6844926))

(assert (= (and b!6844927 (not c!1274320)) b!6844919))

(declare-fun m!7585936 () Bool)

(assert (=> d!2151771 m!7585936))

(declare-fun m!7585938 () Bool)

(assert (=> d!2151771 m!7585938))

(declare-fun m!7585940 () Bool)

(assert (=> b!6844926 m!7585940))

(declare-fun m!7585942 () Bool)

(assert (=> b!6844927 m!7585942))

(assert (=> b!6844927 m!7585942))

(declare-fun m!7585944 () Bool)

(assert (=> b!6844927 m!7585944))

(declare-fun m!7585946 () Bool)

(assert (=> b!6844919 m!7585946))

(declare-fun m!7585948 () Bool)

(assert (=> b!6844922 m!7585948))

(declare-fun m!7585950 () Bool)

(assert (=> b!6844918 m!7585950))

(declare-fun m!7585952 () Bool)

(assert (=> b!6844923 m!7585952))

(declare-fun m!7585954 () Bool)

(assert (=> b!6844925 m!7585954))

(assert (=> bs!1829628 d!2151771))

(declare-fun d!2151777 () Bool)

(declare-fun lt!2455711 () Bool)

(assert (=> d!2151777 (= lt!2455711 (select (content!12978 (t!380055 (t!380055 lt!2455560))) lt!2455564))))

(declare-fun e!4128008 () Bool)

(assert (=> d!2151777 (= lt!2455711 e!4128008)))

(declare-fun res!2794533 () Bool)

(assert (=> d!2151777 (=> (not res!2794533) (not e!4128008))))

(assert (=> d!2151777 (= res!2794533 ((_ is Cons!66188) (t!380055 (t!380055 lt!2455560))))))

(assert (=> d!2151777 (= (contains!20320 (t!380055 (t!380055 lt!2455560)) lt!2455564) lt!2455711)))

(declare-fun b!6844928 () Bool)

(declare-fun e!4128009 () Bool)

(assert (=> b!6844928 (= e!4128008 e!4128009)))

(declare-fun res!2794534 () Bool)

(assert (=> b!6844928 (=> res!2794534 e!4128009)))

(assert (=> b!6844928 (= res!2794534 (= (h!72636 (t!380055 (t!380055 lt!2455560))) lt!2455564))))

(declare-fun b!6844929 () Bool)

(assert (=> b!6844929 (= e!4128009 (contains!20320 (t!380055 (t!380055 (t!380055 lt!2455560))) lt!2455564))))

(assert (= (and d!2151777 res!2794533) b!6844928))

(assert (= (and b!6844928 (not res!2794534)) b!6844929))

(declare-fun m!7585958 () Bool)

(assert (=> d!2151777 m!7585958))

(declare-fun m!7585960 () Bool)

(assert (=> d!2151777 m!7585960))

(declare-fun m!7585962 () Bool)

(assert (=> b!6844929 m!7585962))

(assert (=> b!6844468 d!2151777))

(declare-fun d!2151781 () Bool)

(assert (=> d!2151781 (= (isEmpty!38565 (tail!12800 (tail!12800 s!2326))) ((_ is Nil!66190) (tail!12800 (tail!12800 s!2326))))))

(assert (=> b!6844628 d!2151781))

(assert (=> b!6844628 d!2151757))

(declare-fun d!2151783 () Bool)

(declare-fun lt!2455712 () Int)

(assert (=> d!2151783 (>= lt!2455712 0)))

(declare-fun e!4128010 () Int)

(assert (=> d!2151783 (= lt!2455712 e!4128010)))

(declare-fun c!1274321 () Bool)

(assert (=> d!2151783 (= c!1274321 ((_ is Nil!66189) (t!380056 (t!380056 zl!343))))))

(assert (=> d!2151783 (= (size!40709 (t!380056 (t!380056 zl!343))) lt!2455712)))

(declare-fun b!6844930 () Bool)

(assert (=> b!6844930 (= e!4128010 0)))

(declare-fun b!6844931 () Bool)

(assert (=> b!6844931 (= e!4128010 (+ 1 (size!40709 (t!380056 (t!380056 (t!380056 zl!343))))))))

(assert (= (and d!2151783 c!1274321) b!6844930))

(assert (= (and d!2151783 (not c!1274321)) b!6844931))

(declare-fun m!7585964 () Bool)

(assert (=> b!6844931 m!7585964))

(assert (=> b!6844563 d!2151783))

(declare-fun d!2151785 () Bool)

(assert (=> d!2151785 (= (Exists!3735 (ite c!1274226 lambda!387074 lambda!387075)) (choose!51041 (ite c!1274226 lambda!387074 lambda!387075)))))

(declare-fun bs!1829712 () Bool)

(assert (= bs!1829712 d!2151785))

(declare-fun m!7585966 () Bool)

(assert (=> bs!1829712 m!7585966))

(assert (=> bm!623290 d!2151785))

(assert (=> bs!1829625 d!2151645))

(declare-fun d!2151787 () Bool)

(declare-fun lt!2455713 () Regex!16671)

(assert (=> d!2151787 (validRegex!8407 lt!2455713)))

(declare-fun e!4128015 () Regex!16671)

(assert (=> d!2151787 (= lt!2455713 e!4128015)))

(declare-fun c!1274326 () Bool)

(assert (=> d!2151787 (= c!1274326 (or ((_ is EmptyExpr!16671) (ite c!1274268 (regOne!33855 lt!2455564) (ite c!1274271 (reg!17000 lt!2455564) (regOne!33854 lt!2455564)))) ((_ is EmptyLang!16671) (ite c!1274268 (regOne!33855 lt!2455564) (ite c!1274271 (reg!17000 lt!2455564) (regOne!33854 lt!2455564))))))))

(assert (=> d!2151787 (validRegex!8407 (ite c!1274268 (regOne!33855 lt!2455564) (ite c!1274271 (reg!17000 lt!2455564) (regOne!33854 lt!2455564))))))

(assert (=> d!2151787 (= (derivativeStep!5319 (ite c!1274268 (regOne!33855 lt!2455564) (ite c!1274271 (reg!17000 lt!2455564) (regOne!33854 lt!2455564))) (head!13721 s!2326)) lt!2455713)))

(declare-fun call!623353 () Regex!16671)

(declare-fun b!6844932 () Bool)

(declare-fun e!4128013 () Regex!16671)

(assert (=> b!6844932 (= e!4128013 (Concat!25516 call!623353 (ite c!1274268 (regOne!33855 lt!2455564) (ite c!1274271 (reg!17000 lt!2455564) (regOne!33854 lt!2455564)))))))

(declare-fun c!1274323 () Bool)

(declare-fun bm!623346 () Bool)

(declare-fun c!1274322 () Bool)

(declare-fun call!623352 () Regex!16671)

(assert (=> bm!623346 (= call!623352 (derivativeStep!5319 (ite c!1274322 (regTwo!33855 (ite c!1274268 (regOne!33855 lt!2455564) (ite c!1274271 (reg!17000 lt!2455564) (regOne!33854 lt!2455564)))) (ite c!1274323 (regTwo!33854 (ite c!1274268 (regOne!33855 lt!2455564) (ite c!1274271 (reg!17000 lt!2455564) (regOne!33854 lt!2455564)))) (regOne!33854 (ite c!1274268 (regOne!33855 lt!2455564) (ite c!1274271 (reg!17000 lt!2455564) (regOne!33854 lt!2455564)))))) (head!13721 s!2326)))))

(declare-fun call!623354 () Regex!16671)

(declare-fun b!6844933 () Bool)

(declare-fun e!4128014 () Regex!16671)

(assert (=> b!6844933 (= e!4128014 (Union!16671 (Concat!25516 call!623354 (regTwo!33854 (ite c!1274268 (regOne!33855 lt!2455564) (ite c!1274271 (reg!17000 lt!2455564) (regOne!33854 lt!2455564))))) EmptyLang!16671))))

(declare-fun bm!623347 () Bool)

(declare-fun call!623351 () Regex!16671)

(assert (=> bm!623347 (= call!623353 call!623351)))

(declare-fun b!6844934 () Bool)

(declare-fun e!4128012 () Regex!16671)

(assert (=> b!6844934 (= e!4128012 (Union!16671 call!623351 call!623352))))

(declare-fun b!6844935 () Bool)

(declare-fun e!4128011 () Regex!16671)

(assert (=> b!6844935 (= e!4128015 e!4128011)))

(declare-fun c!1274324 () Bool)

(assert (=> b!6844935 (= c!1274324 ((_ is ElementMatch!16671) (ite c!1274268 (regOne!33855 lt!2455564) (ite c!1274271 (reg!17000 lt!2455564) (regOne!33854 lt!2455564)))))))

(declare-fun bm!623348 () Bool)

(declare-fun c!1274325 () Bool)

(assert (=> bm!623348 (= call!623351 (derivativeStep!5319 (ite c!1274322 (regOne!33855 (ite c!1274268 (regOne!33855 lt!2455564) (ite c!1274271 (reg!17000 lt!2455564) (regOne!33854 lt!2455564)))) (ite c!1274325 (reg!17000 (ite c!1274268 (regOne!33855 lt!2455564) (ite c!1274271 (reg!17000 lt!2455564) (regOne!33854 lt!2455564)))) (regOne!33854 (ite c!1274268 (regOne!33855 lt!2455564) (ite c!1274271 (reg!17000 lt!2455564) (regOne!33854 lt!2455564)))))) (head!13721 s!2326)))))

(declare-fun b!6844936 () Bool)

(assert (=> b!6844936 (= e!4128015 EmptyLang!16671)))

(declare-fun b!6844937 () Bool)

(assert (=> b!6844937 (= c!1274323 (nullable!6636 (regOne!33854 (ite c!1274268 (regOne!33855 lt!2455564) (ite c!1274271 (reg!17000 lt!2455564) (regOne!33854 lt!2455564))))))))

(assert (=> b!6844937 (= e!4128013 e!4128014)))

(declare-fun b!6844938 () Bool)

(assert (=> b!6844938 (= e!4128014 (Union!16671 (Concat!25516 call!623353 (regTwo!33854 (ite c!1274268 (regOne!33855 lt!2455564) (ite c!1274271 (reg!17000 lt!2455564) (regOne!33854 lt!2455564))))) call!623354))))

(declare-fun b!6844939 () Bool)

(assert (=> b!6844939 (= e!4128012 e!4128013)))

(assert (=> b!6844939 (= c!1274325 ((_ is Star!16671) (ite c!1274268 (regOne!33855 lt!2455564) (ite c!1274271 (reg!17000 lt!2455564) (regOne!33854 lt!2455564)))))))

(declare-fun b!6844940 () Bool)

(assert (=> b!6844940 (= e!4128011 (ite (= (head!13721 s!2326) (c!1273977 (ite c!1274268 (regOne!33855 lt!2455564) (ite c!1274271 (reg!17000 lt!2455564) (regOne!33854 lt!2455564))))) EmptyExpr!16671 EmptyLang!16671))))

(declare-fun b!6844941 () Bool)

(assert (=> b!6844941 (= c!1274322 ((_ is Union!16671) (ite c!1274268 (regOne!33855 lt!2455564) (ite c!1274271 (reg!17000 lt!2455564) (regOne!33854 lt!2455564)))))))

(assert (=> b!6844941 (= e!4128011 e!4128012)))

(declare-fun bm!623349 () Bool)

(assert (=> bm!623349 (= call!623354 call!623352)))

(assert (= (and d!2151787 c!1274326) b!6844936))

(assert (= (and d!2151787 (not c!1274326)) b!6844935))

(assert (= (and b!6844935 c!1274324) b!6844940))

(assert (= (and b!6844935 (not c!1274324)) b!6844941))

(assert (= (and b!6844941 c!1274322) b!6844934))

(assert (= (and b!6844941 (not c!1274322)) b!6844939))

(assert (= (and b!6844939 c!1274325) b!6844932))

(assert (= (and b!6844939 (not c!1274325)) b!6844937))

(assert (= (and b!6844937 c!1274323) b!6844938))

(assert (= (and b!6844937 (not c!1274323)) b!6844933))

(assert (= (or b!6844938 b!6844933) bm!623349))

(assert (= (or b!6844932 b!6844938) bm!623347))

(assert (= (or b!6844934 bm!623349) bm!623346))

(assert (= (or b!6844934 bm!623347) bm!623348))

(declare-fun m!7585968 () Bool)

(assert (=> d!2151787 m!7585968))

(declare-fun m!7585970 () Bool)

(assert (=> d!2151787 m!7585970))

(assert (=> bm!623346 m!7584998))

(declare-fun m!7585972 () Bool)

(assert (=> bm!623346 m!7585972))

(assert (=> bm!623348 m!7584998))

(declare-fun m!7585974 () Bool)

(assert (=> bm!623348 m!7585974))

(declare-fun m!7585976 () Bool)

(assert (=> b!6844937 m!7585976))

(assert (=> bm!623314 d!2151787))

(declare-fun b!6844951 () Bool)

(declare-fun e!4128028 () Bool)

(assert (=> b!6844951 (= e!4128028 (matchR!8854 (derivativeStep!5319 (derivativeStep!5319 (derivativeStep!5319 r!7292 (head!13721 s!2326)) (head!13721 (tail!12800 s!2326))) (head!13721 (tail!12800 (tail!12800 s!2326)))) (tail!12800 (tail!12800 (tail!12800 s!2326)))))))

(declare-fun b!6844952 () Bool)

(declare-fun e!4128026 () Bool)

(assert (=> b!6844952 (= e!4128026 (= (head!13721 (tail!12800 (tail!12800 s!2326))) (c!1273977 (derivativeStep!5319 (derivativeStep!5319 r!7292 (head!13721 s!2326)) (head!13721 (tail!12800 s!2326))))))))

(declare-fun b!6844953 () Bool)

(declare-fun e!4128029 () Bool)

(declare-fun e!4128025 () Bool)

(assert (=> b!6844953 (= e!4128029 e!4128025)))

(declare-fun c!1274330 () Bool)

(assert (=> b!6844953 (= c!1274330 ((_ is EmptyLang!16671) (derivativeStep!5319 (derivativeStep!5319 r!7292 (head!13721 s!2326)) (head!13721 (tail!12800 s!2326)))))))

(declare-fun b!6844954 () Bool)

(declare-fun lt!2455714 () Bool)

(assert (=> b!6844954 (= e!4128025 (not lt!2455714))))

(declare-fun b!6844955 () Bool)

(declare-fun e!4128023 () Bool)

(declare-fun e!4128027 () Bool)

(assert (=> b!6844955 (= e!4128023 e!4128027)))

(declare-fun res!2794540 () Bool)

(assert (=> b!6844955 (=> (not res!2794540) (not e!4128027))))

(assert (=> b!6844955 (= res!2794540 (not lt!2455714))))

(declare-fun bm!623353 () Bool)

(declare-fun call!623358 () Bool)

(assert (=> bm!623353 (= call!623358 (isEmpty!38565 (tail!12800 (tail!12800 s!2326))))))

(declare-fun b!6844956 () Bool)

(declare-fun e!4128024 () Bool)

(assert (=> b!6844956 (= e!4128027 e!4128024)))

(declare-fun res!2794542 () Bool)

(assert (=> b!6844956 (=> res!2794542 e!4128024)))

(assert (=> b!6844956 (= res!2794542 call!623358)))

(declare-fun b!6844957 () Bool)

(assert (=> b!6844957 (= e!4128029 (= lt!2455714 call!623358))))

(declare-fun b!6844958 () Bool)

(declare-fun res!2794544 () Bool)

(assert (=> b!6844958 (=> res!2794544 e!4128024)))

(assert (=> b!6844958 (= res!2794544 (not (isEmpty!38565 (tail!12800 (tail!12800 (tail!12800 s!2326))))))))

(declare-fun b!6844959 () Bool)

(declare-fun res!2794547 () Bool)

(assert (=> b!6844959 (=> (not res!2794547) (not e!4128026))))

(assert (=> b!6844959 (= res!2794547 (not call!623358))))

(declare-fun d!2151791 () Bool)

(assert (=> d!2151791 e!4128029))

(declare-fun c!1274329 () Bool)

(assert (=> d!2151791 (= c!1274329 ((_ is EmptyExpr!16671) (derivativeStep!5319 (derivativeStep!5319 r!7292 (head!13721 s!2326)) (head!13721 (tail!12800 s!2326)))))))

(assert (=> d!2151791 (= lt!2455714 e!4128028)))

(declare-fun c!1274331 () Bool)

(assert (=> d!2151791 (= c!1274331 (isEmpty!38565 (tail!12800 (tail!12800 s!2326))))))

(assert (=> d!2151791 (validRegex!8407 (derivativeStep!5319 (derivativeStep!5319 r!7292 (head!13721 s!2326)) (head!13721 (tail!12800 s!2326))))))

(assert (=> d!2151791 (= (matchR!8854 (derivativeStep!5319 (derivativeStep!5319 r!7292 (head!13721 s!2326)) (head!13721 (tail!12800 s!2326))) (tail!12800 (tail!12800 s!2326))) lt!2455714)))

(declare-fun b!6844960 () Bool)

(assert (=> b!6844960 (= e!4128024 (not (= (head!13721 (tail!12800 (tail!12800 s!2326))) (c!1273977 (derivativeStep!5319 (derivativeStep!5319 r!7292 (head!13721 s!2326)) (head!13721 (tail!12800 s!2326)))))))))

(declare-fun b!6844961 () Bool)

(declare-fun res!2794541 () Bool)

(assert (=> b!6844961 (=> res!2794541 e!4128023)))

(assert (=> b!6844961 (= res!2794541 e!4128026)))

(declare-fun res!2794543 () Bool)

(assert (=> b!6844961 (=> (not res!2794543) (not e!4128026))))

(assert (=> b!6844961 (= res!2794543 lt!2455714)))

(declare-fun b!6844962 () Bool)

(assert (=> b!6844962 (= e!4128028 (nullable!6636 (derivativeStep!5319 (derivativeStep!5319 r!7292 (head!13721 s!2326)) (head!13721 (tail!12800 s!2326)))))))

(declare-fun b!6844963 () Bool)

(declare-fun res!2794545 () Bool)

(assert (=> b!6844963 (=> (not res!2794545) (not e!4128026))))

(assert (=> b!6844963 (= res!2794545 (isEmpty!38565 (tail!12800 (tail!12800 (tail!12800 s!2326)))))))

(declare-fun b!6844964 () Bool)

(declare-fun res!2794546 () Bool)

(assert (=> b!6844964 (=> res!2794546 e!4128023)))

(assert (=> b!6844964 (= res!2794546 (not ((_ is ElementMatch!16671) (derivativeStep!5319 (derivativeStep!5319 r!7292 (head!13721 s!2326)) (head!13721 (tail!12800 s!2326))))))))

(assert (=> b!6844964 (= e!4128025 e!4128023)))

(assert (= (and d!2151791 c!1274331) b!6844962))

(assert (= (and d!2151791 (not c!1274331)) b!6844951))

(assert (= (and d!2151791 c!1274329) b!6844957))

(assert (= (and d!2151791 (not c!1274329)) b!6844953))

(assert (= (and b!6844953 c!1274330) b!6844954))

(assert (= (and b!6844953 (not c!1274330)) b!6844964))

(assert (= (and b!6844964 (not res!2794546)) b!6844961))

(assert (= (and b!6844961 res!2794543) b!6844959))

(assert (= (and b!6844959 res!2794547) b!6844963))

(assert (= (and b!6844963 res!2794545) b!6844952))

(assert (= (and b!6844961 (not res!2794541)) b!6844955))

(assert (= (and b!6844955 res!2794540) b!6844956))

(assert (= (and b!6844956 (not res!2794542)) b!6844958))

(assert (= (and b!6844958 (not res!2794544)) b!6844960))

(assert (= (or b!6844957 b!6844956 b!6844959) bm!623353))

(assert (=> bm!623353 m!7585700))

(assert (=> bm!623353 m!7585702))

(assert (=> d!2151791 m!7585700))

(assert (=> d!2151791 m!7585702))

(assert (=> d!2151791 m!7585706))

(declare-fun m!7585984 () Bool)

(assert (=> d!2151791 m!7585984))

(assert (=> b!6844952 m!7585700))

(assert (=> b!6844952 m!7585892))

(assert (=> b!6844963 m!7585700))

(assert (=> b!6844963 m!7585894))

(assert (=> b!6844963 m!7585894))

(assert (=> b!6844963 m!7585896))

(assert (=> b!6844962 m!7585706))

(declare-fun m!7585986 () Bool)

(assert (=> b!6844962 m!7585986))

(assert (=> b!6844960 m!7585700))

(assert (=> b!6844960 m!7585892))

(assert (=> b!6844951 m!7585700))

(assert (=> b!6844951 m!7585892))

(assert (=> b!6844951 m!7585706))

(assert (=> b!6844951 m!7585892))

(declare-fun m!7585988 () Bool)

(assert (=> b!6844951 m!7585988))

(assert (=> b!6844951 m!7585700))

(assert (=> b!6844951 m!7585894))

(assert (=> b!6844951 m!7585988))

(assert (=> b!6844951 m!7585894))

(declare-fun m!7585990 () Bool)

(assert (=> b!6844951 m!7585990))

(assert (=> b!6844958 m!7585700))

(assert (=> b!6844958 m!7585894))

(assert (=> b!6844958 m!7585894))

(assert (=> b!6844958 m!7585896))

(assert (=> b!6844566 d!2151791))

(declare-fun d!2151801 () Bool)

(declare-fun lt!2455715 () Regex!16671)

(assert (=> d!2151801 (validRegex!8407 lt!2455715)))

(declare-fun e!4128035 () Regex!16671)

(assert (=> d!2151801 (= lt!2455715 e!4128035)))

(declare-fun c!1274337 () Bool)

(assert (=> d!2151801 (= c!1274337 (or ((_ is EmptyExpr!16671) (derivativeStep!5319 r!7292 (head!13721 s!2326))) ((_ is EmptyLang!16671) (derivativeStep!5319 r!7292 (head!13721 s!2326)))))))

(assert (=> d!2151801 (validRegex!8407 (derivativeStep!5319 r!7292 (head!13721 s!2326)))))

(assert (=> d!2151801 (= (derivativeStep!5319 (derivativeStep!5319 r!7292 (head!13721 s!2326)) (head!13721 (tail!12800 s!2326))) lt!2455715)))

(declare-fun e!4128033 () Regex!16671)

(declare-fun call!623361 () Regex!16671)

(declare-fun b!6844967 () Bool)

(assert (=> b!6844967 (= e!4128033 (Concat!25516 call!623361 (derivativeStep!5319 r!7292 (head!13721 s!2326))))))

(declare-fun bm!623354 () Bool)

(declare-fun c!1274333 () Bool)

(declare-fun call!623360 () Regex!16671)

(declare-fun c!1274334 () Bool)

(assert (=> bm!623354 (= call!623360 (derivativeStep!5319 (ite c!1274333 (regTwo!33855 (derivativeStep!5319 r!7292 (head!13721 s!2326))) (ite c!1274334 (regTwo!33854 (derivativeStep!5319 r!7292 (head!13721 s!2326))) (regOne!33854 (derivativeStep!5319 r!7292 (head!13721 s!2326))))) (head!13721 (tail!12800 s!2326))))))

(declare-fun b!6844968 () Bool)

(declare-fun e!4128034 () Regex!16671)

(declare-fun call!623362 () Regex!16671)

(assert (=> b!6844968 (= e!4128034 (Union!16671 (Concat!25516 call!623362 (regTwo!33854 (derivativeStep!5319 r!7292 (head!13721 s!2326)))) EmptyLang!16671))))

(declare-fun bm!623355 () Bool)

(declare-fun call!623359 () Regex!16671)

(assert (=> bm!623355 (= call!623361 call!623359)))

(declare-fun b!6844969 () Bool)

(declare-fun e!4128032 () Regex!16671)

(assert (=> b!6844969 (= e!4128032 (Union!16671 call!623359 call!623360))))

(declare-fun b!6844970 () Bool)

(declare-fun e!4128031 () Regex!16671)

(assert (=> b!6844970 (= e!4128035 e!4128031)))

(declare-fun c!1274335 () Bool)

(assert (=> b!6844970 (= c!1274335 ((_ is ElementMatch!16671) (derivativeStep!5319 r!7292 (head!13721 s!2326))))))

(declare-fun bm!623356 () Bool)

(declare-fun c!1274336 () Bool)

(assert (=> bm!623356 (= call!623359 (derivativeStep!5319 (ite c!1274333 (regOne!33855 (derivativeStep!5319 r!7292 (head!13721 s!2326))) (ite c!1274336 (reg!17000 (derivativeStep!5319 r!7292 (head!13721 s!2326))) (regOne!33854 (derivativeStep!5319 r!7292 (head!13721 s!2326))))) (head!13721 (tail!12800 s!2326))))))

(declare-fun b!6844971 () Bool)

(assert (=> b!6844971 (= e!4128035 EmptyLang!16671)))

(declare-fun b!6844972 () Bool)

(assert (=> b!6844972 (= c!1274334 (nullable!6636 (regOne!33854 (derivativeStep!5319 r!7292 (head!13721 s!2326)))))))

(assert (=> b!6844972 (= e!4128033 e!4128034)))

(declare-fun b!6844973 () Bool)

(assert (=> b!6844973 (= e!4128034 (Union!16671 (Concat!25516 call!623361 (regTwo!33854 (derivativeStep!5319 r!7292 (head!13721 s!2326)))) call!623362))))

(declare-fun b!6844974 () Bool)

(assert (=> b!6844974 (= e!4128032 e!4128033)))

(assert (=> b!6844974 (= c!1274336 ((_ is Star!16671) (derivativeStep!5319 r!7292 (head!13721 s!2326))))))

(declare-fun b!6844975 () Bool)

(assert (=> b!6844975 (= e!4128031 (ite (= (head!13721 (tail!12800 s!2326)) (c!1273977 (derivativeStep!5319 r!7292 (head!13721 s!2326)))) EmptyExpr!16671 EmptyLang!16671))))

(declare-fun b!6844976 () Bool)

(assert (=> b!6844976 (= c!1274333 ((_ is Union!16671) (derivativeStep!5319 r!7292 (head!13721 s!2326))))))

(assert (=> b!6844976 (= e!4128031 e!4128032)))

(declare-fun bm!623357 () Bool)

(assert (=> bm!623357 (= call!623362 call!623360)))

(assert (= (and d!2151801 c!1274337) b!6844971))

(assert (= (and d!2151801 (not c!1274337)) b!6844970))

(assert (= (and b!6844970 c!1274335) b!6844975))

(assert (= (and b!6844970 (not c!1274335)) b!6844976))

(assert (= (and b!6844976 c!1274333) b!6844969))

(assert (= (and b!6844976 (not c!1274333)) b!6844974))

(assert (= (and b!6844974 c!1274336) b!6844967))

(assert (= (and b!6844974 (not c!1274336)) b!6844972))

(assert (= (and b!6844972 c!1274334) b!6844973))

(assert (= (and b!6844972 (not c!1274334)) b!6844968))

(assert (= (or b!6844973 b!6844968) bm!623357))

(assert (= (or b!6844967 b!6844973) bm!623355))

(assert (= (or b!6844969 bm!623357) bm!623354))

(assert (= (or b!6844969 bm!623355) bm!623356))

(declare-fun m!7585998 () Bool)

(assert (=> d!2151801 m!7585998))

(assert (=> d!2151801 m!7585066))

(assert (=> d!2151801 m!7585696))

(assert (=> bm!623354 m!7585698))

(declare-fun m!7586000 () Bool)

(assert (=> bm!623354 m!7586000))

(assert (=> bm!623356 m!7585698))

(declare-fun m!7586002 () Bool)

(assert (=> bm!623356 m!7586002))

(declare-fun m!7586004 () Bool)

(assert (=> b!6844972 m!7586004))

(assert (=> b!6844566 d!2151801))

(assert (=> b!6844566 d!2151755))

(assert (=> b!6844566 d!2151757))

(declare-fun d!2151809 () Bool)

(declare-fun res!2794550 () Bool)

(declare-fun e!4128038 () Bool)

(assert (=> d!2151809 (=> res!2794550 e!4128038)))

(assert (=> d!2151809 (= res!2794550 ((_ is Nil!66188) (t!380055 (exprs!6555 (h!72637 zl!343)))))))

(assert (=> d!2151809 (= (forall!15850 (t!380055 (exprs!6555 (h!72637 zl!343))) lambda!387022) e!4128038)))

(declare-fun b!6844979 () Bool)

(declare-fun e!4128039 () Bool)

(assert (=> b!6844979 (= e!4128038 e!4128039)))

(declare-fun res!2794551 () Bool)

(assert (=> b!6844979 (=> (not res!2794551) (not e!4128039))))

(assert (=> b!6844979 (= res!2794551 (dynLambda!26449 lambda!387022 (h!72636 (t!380055 (exprs!6555 (h!72637 zl!343))))))))

(declare-fun b!6844980 () Bool)

(assert (=> b!6844980 (= e!4128039 (forall!15850 (t!380055 (t!380055 (exprs!6555 (h!72637 zl!343)))) lambda!387022))))

(assert (= (and d!2151809 (not res!2794550)) b!6844979))

(assert (= (and b!6844979 res!2794551) b!6844980))

(declare-fun b_lambda!258217 () Bool)

(assert (=> (not b_lambda!258217) (not b!6844979)))

(declare-fun m!7586011 () Bool)

(assert (=> b!6844979 m!7586011))

(declare-fun m!7586014 () Bool)

(assert (=> b!6844980 m!7586014))

(assert (=> b!6844505 d!2151809))

(assert (=> d!2151661 d!2151579))

(declare-fun b!6844982 () Bool)

(declare-fun e!4128040 () Bool)

(declare-fun e!4128052 () Bool)

(assert (=> b!6844982 (= e!4128040 e!4128052)))

(declare-fun c!1274338 () Bool)

(assert (=> b!6844982 (= c!1274338 ((_ is Star!16671) (derivativeStep!5319 r!7292 (head!13721 s!2326))))))

(declare-fun b!6844984 () Bool)

(declare-fun e!4128041 () Bool)

(declare-fun call!623363 () Bool)

(assert (=> b!6844984 (= e!4128041 call!623363)))

(declare-fun b!6844986 () Bool)

(declare-fun res!2794553 () Bool)

(declare-fun e!4128049 () Bool)

(assert (=> b!6844986 (=> (not res!2794553) (not e!4128049))))

(declare-fun call!623365 () Bool)

(assert (=> b!6844986 (= res!2794553 call!623365)))

(declare-fun e!4128046 () Bool)

(assert (=> b!6844986 (= e!4128046 e!4128049)))

(declare-fun b!6844988 () Bool)

(assert (=> b!6844988 (= e!4128052 e!4128041)))

(declare-fun res!2794558 () Bool)

(assert (=> b!6844988 (= res!2794558 (not (nullable!6636 (reg!17000 (derivativeStep!5319 r!7292 (head!13721 s!2326))))))))

(assert (=> b!6844988 (=> (not res!2794558) (not e!4128041))))

(declare-fun b!6844990 () Bool)

(declare-fun e!4128045 () Bool)

(declare-fun e!4128043 () Bool)

(assert (=> b!6844990 (= e!4128045 e!4128043)))

(declare-fun res!2794554 () Bool)

(assert (=> b!6844990 (=> (not res!2794554) (not e!4128043))))

(assert (=> b!6844990 (= res!2794554 call!623365)))

(declare-fun bm!623358 () Bool)

(declare-fun call!623364 () Bool)

(assert (=> bm!623358 (= call!623364 call!623363)))

(declare-fun c!1274343 () Bool)

(declare-fun bm!623359 () Bool)

(assert (=> bm!623359 (= call!623365 (validRegex!8407 (ite c!1274343 (regOne!33855 (derivativeStep!5319 r!7292 (head!13721 s!2326))) (regOne!33854 (derivativeStep!5319 r!7292 (head!13721 s!2326))))))))

(declare-fun bm!623360 () Bool)

(assert (=> bm!623360 (= call!623363 (validRegex!8407 (ite c!1274338 (reg!17000 (derivativeStep!5319 r!7292 (head!13721 s!2326))) (ite c!1274343 (regTwo!33855 (derivativeStep!5319 r!7292 (head!13721 s!2326))) (regTwo!33854 (derivativeStep!5319 r!7292 (head!13721 s!2326)))))))))

(declare-fun d!2151815 () Bool)

(declare-fun res!2794556 () Bool)

(assert (=> d!2151815 (=> res!2794556 e!4128040)))

(assert (=> d!2151815 (= res!2794556 ((_ is ElementMatch!16671) (derivativeStep!5319 r!7292 (head!13721 s!2326))))))

(assert (=> d!2151815 (= (validRegex!8407 (derivativeStep!5319 r!7292 (head!13721 s!2326))) e!4128040)))

(declare-fun b!6844994 () Bool)

(assert (=> b!6844994 (= e!4128052 e!4128046)))

(assert (=> b!6844994 (= c!1274343 ((_ is Union!16671) (derivativeStep!5319 r!7292 (head!13721 s!2326))))))

(declare-fun b!6844996 () Bool)

(assert (=> b!6844996 (= e!4128043 call!623364)))

(declare-fun b!6844998 () Bool)

(assert (=> b!6844998 (= e!4128049 call!623364)))

(declare-fun b!6844999 () Bool)

(declare-fun res!2794555 () Bool)

(assert (=> b!6844999 (=> res!2794555 e!4128045)))

(assert (=> b!6844999 (= res!2794555 (not ((_ is Concat!25516) (derivativeStep!5319 r!7292 (head!13721 s!2326)))))))

(assert (=> b!6844999 (= e!4128046 e!4128045)))

(assert (= (and d!2151815 (not res!2794556)) b!6844982))

(assert (= (and b!6844982 c!1274338) b!6844988))

(assert (= (and b!6844982 (not c!1274338)) b!6844994))

(assert (= (and b!6844988 res!2794558) b!6844984))

(assert (= (and b!6844994 c!1274343) b!6844986))

(assert (= (and b!6844994 (not c!1274343)) b!6844999))

(assert (= (and b!6844986 res!2794553) b!6844998))

(assert (= (and b!6844999 (not res!2794555)) b!6844990))

(assert (= (and b!6844990 res!2794554) b!6844996))

(assert (= (or b!6844998 b!6844996) bm!623358))

(assert (= (or b!6844986 b!6844990) bm!623359))

(assert (= (or b!6844984 bm!623358) bm!623360))

(declare-fun m!7586016 () Bool)

(assert (=> b!6844988 m!7586016))

(declare-fun m!7586018 () Bool)

(assert (=> bm!623359 m!7586018))

(declare-fun m!7586020 () Bool)

(assert (=> bm!623360 m!7586020))

(assert (=> d!2151661 d!2151815))

(declare-fun d!2151817 () Bool)

(assert (=> d!2151817 (= (isEmptyExpr!2003 lt!2455680) ((_ is EmptyExpr!16671) lt!2455680))))

(assert (=> b!6844392 d!2151817))

(declare-fun d!2151819 () Bool)

(declare-fun lt!2455717 () Bool)

(assert (=> d!2151819 (= lt!2455717 (select (content!12977 (t!380056 zl!343)) lt!2455687))))

(declare-fun e!4128053 () Bool)

(assert (=> d!2151819 (= lt!2455717 e!4128053)))

(declare-fun res!2794559 () Bool)

(assert (=> d!2151819 (=> (not res!2794559) (not e!4128053))))

(assert (=> d!2151819 (= res!2794559 ((_ is Cons!66189) (t!380056 zl!343)))))

(assert (=> d!2151819 (= (contains!20321 (t!380056 zl!343) lt!2455687) lt!2455717)))

(declare-fun b!6845000 () Bool)

(declare-fun e!4128054 () Bool)

(assert (=> b!6845000 (= e!4128053 e!4128054)))

(declare-fun res!2794560 () Bool)

(assert (=> b!6845000 (=> res!2794560 e!4128054)))

(assert (=> b!6845000 (= res!2794560 (= (h!72637 (t!380056 zl!343)) lt!2455687))))

(declare-fun b!6845001 () Bool)

(assert (=> b!6845001 (= e!4128054 (contains!20321 (t!380056 (t!380056 zl!343)) lt!2455687))))

(assert (= (and d!2151819 res!2794559) b!6845000))

(assert (= (and b!6845000 (not res!2794560)) b!6845001))

(assert (=> d!2151819 m!7585726))

(declare-fun m!7586022 () Bool)

(assert (=> d!2151819 m!7586022))

(declare-fun m!7586024 () Bool)

(assert (=> b!6845001 m!7586024))

(assert (=> b!6844440 d!2151819))

(declare-fun b!6845002 () Bool)

(declare-fun e!4128055 () Bool)

(declare-fun e!4128061 () Bool)

(assert (=> b!6845002 (= e!4128055 e!4128061)))

(declare-fun c!1274344 () Bool)

(assert (=> b!6845002 (= c!1274344 ((_ is Star!16671) (ite c!1274179 (reg!17000 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))) (ite c!1274180 (regTwo!33855 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))) (regTwo!33854 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564))))))))))

(declare-fun b!6845003 () Bool)

(declare-fun e!4128056 () Bool)

(declare-fun call!623366 () Bool)

(assert (=> b!6845003 (= e!4128056 call!623366)))

(declare-fun b!6845004 () Bool)

(declare-fun res!2794561 () Bool)

(declare-fun e!4128060 () Bool)

(assert (=> b!6845004 (=> (not res!2794561) (not e!4128060))))

(declare-fun call!623368 () Bool)

(assert (=> b!6845004 (= res!2794561 call!623368)))

(declare-fun e!4128059 () Bool)

(assert (=> b!6845004 (= e!4128059 e!4128060)))

(declare-fun b!6845005 () Bool)

(assert (=> b!6845005 (= e!4128061 e!4128056)))

(declare-fun res!2794565 () Bool)

(assert (=> b!6845005 (= res!2794565 (not (nullable!6636 (reg!17000 (ite c!1274179 (reg!17000 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))) (ite c!1274180 (regTwo!33855 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))) (regTwo!33854 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564))))))))))))

(assert (=> b!6845005 (=> (not res!2794565) (not e!4128056))))

(declare-fun b!6845006 () Bool)

(declare-fun e!4128058 () Bool)

(declare-fun e!4128057 () Bool)

(assert (=> b!6845006 (= e!4128058 e!4128057)))

(declare-fun res!2794562 () Bool)

(assert (=> b!6845006 (=> (not res!2794562) (not e!4128057))))

(assert (=> b!6845006 (= res!2794562 call!623368)))

(declare-fun bm!623361 () Bool)

(declare-fun call!623367 () Bool)

(assert (=> bm!623361 (= call!623367 call!623366)))

(declare-fun c!1274345 () Bool)

(declare-fun bm!623362 () Bool)

(assert (=> bm!623362 (= call!623368 (validRegex!8407 (ite c!1274345 (regOne!33855 (ite c!1274179 (reg!17000 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))) (ite c!1274180 (regTwo!33855 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))) (regTwo!33854 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564))))))) (regOne!33854 (ite c!1274179 (reg!17000 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))) (ite c!1274180 (regTwo!33855 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))) (regTwo!33854 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564))))))))))))

(declare-fun bm!623363 () Bool)

(assert (=> bm!623363 (= call!623366 (validRegex!8407 (ite c!1274344 (reg!17000 (ite c!1274179 (reg!17000 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))) (ite c!1274180 (regTwo!33855 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))) (regTwo!33854 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564))))))) (ite c!1274345 (regTwo!33855 (ite c!1274179 (reg!17000 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))) (ite c!1274180 (regTwo!33855 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))) (regTwo!33854 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564))))))) (regTwo!33854 (ite c!1274179 (reg!17000 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))) (ite c!1274180 (regTwo!33855 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))) (regTwo!33854 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))))))))))))

(declare-fun d!2151821 () Bool)

(declare-fun res!2794564 () Bool)

(assert (=> d!2151821 (=> res!2794564 e!4128055)))

(assert (=> d!2151821 (= res!2794564 ((_ is ElementMatch!16671) (ite c!1274179 (reg!17000 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))) (ite c!1274180 (regTwo!33855 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))) (regTwo!33854 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564))))))))))

(assert (=> d!2151821 (= (validRegex!8407 (ite c!1274179 (reg!17000 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))) (ite c!1274180 (regTwo!33855 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))) (regTwo!33854 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564))))))) e!4128055)))

(declare-fun b!6845007 () Bool)

(assert (=> b!6845007 (= e!4128061 e!4128059)))

(assert (=> b!6845007 (= c!1274345 ((_ is Union!16671) (ite c!1274179 (reg!17000 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))) (ite c!1274180 (regTwo!33855 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))) (regTwo!33854 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564))))))))))

(declare-fun b!6845008 () Bool)

(assert (=> b!6845008 (= e!4128057 call!623367)))

(declare-fun b!6845009 () Bool)

(assert (=> b!6845009 (= e!4128060 call!623367)))

(declare-fun b!6845010 () Bool)

(declare-fun res!2794563 () Bool)

(assert (=> b!6845010 (=> res!2794563 e!4128058)))

(assert (=> b!6845010 (= res!2794563 (not ((_ is Concat!25516) (ite c!1274179 (reg!17000 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))) (ite c!1274180 (regTwo!33855 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))) (regTwo!33854 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))))))))))

(assert (=> b!6845010 (= e!4128059 e!4128058)))

(assert (= (and d!2151821 (not res!2794564)) b!6845002))

(assert (= (and b!6845002 c!1274344) b!6845005))

(assert (= (and b!6845002 (not c!1274344)) b!6845007))

(assert (= (and b!6845005 res!2794565) b!6845003))

(assert (= (and b!6845007 c!1274345) b!6845004))

(assert (= (and b!6845007 (not c!1274345)) b!6845010))

(assert (= (and b!6845004 res!2794561) b!6845009))

(assert (= (and b!6845010 (not res!2794563)) b!6845006))

(assert (= (and b!6845006 res!2794562) b!6845008))

(assert (= (or b!6845009 b!6845008) bm!623361))

(assert (= (or b!6845004 b!6845006) bm!623362))

(assert (= (or b!6845003 bm!623361) bm!623363))

(declare-fun m!7586026 () Bool)

(assert (=> b!6845005 m!7586026))

(declare-fun m!7586028 () Bool)

(assert (=> bm!623362 m!7586028))

(declare-fun m!7586030 () Bool)

(assert (=> bm!623363 m!7586030))

(assert (=> bm!623276 d!2151821))

(declare-fun d!2151823 () Bool)

(assert (=> d!2151823 (= (nullable!6636 (derivativeStep!5319 lt!2455564 (head!13721 s!2326))) (nullableFct!2520 (derivativeStep!5319 lt!2455564 (head!13721 s!2326))))))

(declare-fun bs!1829731 () Bool)

(assert (= bs!1829731 d!2151823))

(assert (=> bs!1829731 m!7585006))

(declare-fun m!7586032 () Bool)

(assert (=> bs!1829731 m!7586032))

(assert (=> b!6844632 d!2151823))

(assert (=> d!2151659 d!2151679))

(declare-fun bs!1829732 () Bool)

(declare-fun d!2151825 () Bool)

(assert (= bs!1829732 (and d!2151825 d!2151591)))

(declare-fun lambda!387088 () Int)

(assert (=> bs!1829732 (= lambda!387088 lambda!387063)))

(declare-fun bs!1829733 () Bool)

(assert (= bs!1829733 (and d!2151825 d!2151623)))

(assert (=> bs!1829733 (not (= lambda!387088 lambda!387073))))

(declare-fun bs!1829734 () Bool)

(assert (= bs!1829734 (and d!2151825 d!2151427)))

(assert (=> bs!1829734 (= lambda!387088 lambda!387035)))

(declare-fun bs!1829735 () Bool)

(assert (= bs!1829735 (and d!2151825 d!2151417)))

(assert (=> bs!1829735 (= lambda!387088 lambda!387022)))

(declare-fun bs!1829736 () Bool)

(assert (= bs!1829736 (and d!2151825 d!2151423)))

(assert (=> bs!1829736 (not (= lambda!387088 lambda!387026))))

(declare-fun bs!1829737 () Bool)

(assert (= bs!1829737 (and d!2151825 d!2151655)))

(assert (=> bs!1829737 (= lambda!387088 lambda!387078)))

(declare-fun bs!1829738 () Bool)

(assert (= bs!1829738 (and d!2151825 d!2151425)))

(assert (=> bs!1829738 (= lambda!387088 lambda!387031)))

(assert (=> bs!1829738 (not (= lambda!387088 lambda!387032))))

(declare-fun bs!1829739 () Bool)

(assert (= bs!1829739 (and d!2151825 d!2151621)))

(assert (=> bs!1829739 (not (= lambda!387088 lambda!387070))))

(declare-fun bs!1829740 () Bool)

(assert (= bs!1829740 (and d!2151825 d!2151729)))

(assert (=> bs!1829740 (= lambda!387088 lambda!387083)))

(declare-fun bs!1829741 () Bool)

(assert (= bs!1829741 (and d!2151825 d!2151771)))

(assert (=> bs!1829741 (= lambda!387088 lambda!387085)))

(declare-fun bs!1829742 () Bool)

(assert (= bs!1829742 (and d!2151825 d!2151599)))

(assert (=> bs!1829742 (= lambda!387088 lambda!387065)))

(declare-fun bs!1829743 () Bool)

(assert (= bs!1829743 (and d!2151825 d!2151593)))

(assert (=> bs!1829743 (= lambda!387088 lambda!387064)))

(declare-fun bs!1829744 () Bool)

(assert (= bs!1829744 (and d!2151825 d!2151675)))

(assert (=> bs!1829744 (= lambda!387088 lambda!387079)))

(declare-fun bs!1829745 () Bool)

(assert (= bs!1829745 (and d!2151825 b!6843348)))

(assert (=> bs!1829745 (not (= lambda!387088 lambda!386978))))

(declare-fun bs!1829746 () Bool)

(assert (= bs!1829746 (and d!2151825 d!2151419)))

(assert (=> bs!1829746 (= lambda!387088 lambda!387023)))

(declare-fun bs!1829747 () Bool)

(assert (= bs!1829747 (and d!2151825 d!2151587)))

(assert (=> bs!1829747 (= lambda!387088 lambda!387060)))

(declare-fun b!6845011 () Bool)

(declare-fun e!4128063 () Regex!16671)

(assert (=> b!6845011 (= e!4128063 (Concat!25516 (h!72636 (t!380055 (exprs!6555 lt!2455629))) (generalisedConcat!2264 (t!380055 (t!380055 (exprs!6555 lt!2455629))))))))

(declare-fun b!6845012 () Bool)

(declare-fun e!4128065 () Bool)

(declare-fun lt!2455718 () Regex!16671)

(assert (=> b!6845012 (= e!4128065 (isConcat!1526 lt!2455718))))

(declare-fun b!6845013 () Bool)

(declare-fun e!4128067 () Regex!16671)

(assert (=> b!6845013 (= e!4128067 (h!72636 (t!380055 (exprs!6555 lt!2455629))))))

(declare-fun b!6845014 () Bool)

(assert (=> b!6845014 (= e!4128067 e!4128063)))

(declare-fun c!1274348 () Bool)

(assert (=> b!6845014 (= c!1274348 ((_ is Cons!66188) (t!380055 (exprs!6555 lt!2455629))))))

(declare-fun b!6845015 () Bool)

(declare-fun e!4128064 () Bool)

(assert (=> b!6845015 (= e!4128064 (isEmptyExpr!2003 lt!2455718))))

(declare-fun b!6845016 () Bool)

(declare-fun e!4128066 () Bool)

(assert (=> b!6845016 (= e!4128066 (isEmpty!38567 (t!380055 (t!380055 (exprs!6555 lt!2455629)))))))

(declare-fun e!4128062 () Bool)

(assert (=> d!2151825 e!4128062))

(declare-fun res!2794567 () Bool)

(assert (=> d!2151825 (=> (not res!2794567) (not e!4128062))))

(assert (=> d!2151825 (= res!2794567 (validRegex!8407 lt!2455718))))

(assert (=> d!2151825 (= lt!2455718 e!4128067)))

(declare-fun c!1274346 () Bool)

(assert (=> d!2151825 (= c!1274346 e!4128066)))

(declare-fun res!2794566 () Bool)

(assert (=> d!2151825 (=> (not res!2794566) (not e!4128066))))

(assert (=> d!2151825 (= res!2794566 ((_ is Cons!66188) (t!380055 (exprs!6555 lt!2455629))))))

(assert (=> d!2151825 (forall!15850 (t!380055 (exprs!6555 lt!2455629)) lambda!387088)))

(assert (=> d!2151825 (= (generalisedConcat!2264 (t!380055 (exprs!6555 lt!2455629))) lt!2455718)))

(declare-fun b!6845017 () Bool)

(assert (=> b!6845017 (= e!4128063 EmptyExpr!16671)))

(declare-fun b!6845018 () Bool)

(assert (=> b!6845018 (= e!4128062 e!4128064)))

(declare-fun c!1274347 () Bool)

(assert (=> b!6845018 (= c!1274347 (isEmpty!38567 (t!380055 (exprs!6555 lt!2455629))))))

(declare-fun b!6845019 () Bool)

(assert (=> b!6845019 (= e!4128065 (= lt!2455718 (head!13723 (t!380055 (exprs!6555 lt!2455629)))))))

(declare-fun b!6845020 () Bool)

(assert (=> b!6845020 (= e!4128064 e!4128065)))

(declare-fun c!1274349 () Bool)

(assert (=> b!6845020 (= c!1274349 (isEmpty!38567 (tail!12802 (t!380055 (exprs!6555 lt!2455629)))))))

(assert (= (and d!2151825 res!2794566) b!6845016))

(assert (= (and d!2151825 c!1274346) b!6845013))

(assert (= (and d!2151825 (not c!1274346)) b!6845014))

(assert (= (and b!6845014 c!1274348) b!6845011))

(assert (= (and b!6845014 (not c!1274348)) b!6845017))

(assert (= (and d!2151825 res!2794567) b!6845018))

(assert (= (and b!6845018 c!1274347) b!6845015))

(assert (= (and b!6845018 (not c!1274347)) b!6845020))

(assert (= (and b!6845020 c!1274349) b!6845019))

(assert (= (and b!6845020 (not c!1274349)) b!6845012))

(declare-fun m!7586054 () Bool)

(assert (=> d!2151825 m!7586054))

(declare-fun m!7586056 () Bool)

(assert (=> d!2151825 m!7586056))

(declare-fun m!7586058 () Bool)

(assert (=> b!6845019 m!7586058))

(declare-fun m!7586060 () Bool)

(assert (=> b!6845020 m!7586060))

(assert (=> b!6845020 m!7586060))

(declare-fun m!7586062 () Bool)

(assert (=> b!6845020 m!7586062))

(declare-fun m!7586064 () Bool)

(assert (=> b!6845012 m!7586064))

(declare-fun m!7586066 () Bool)

(assert (=> b!6845015 m!7586066))

(declare-fun m!7586068 () Bool)

(assert (=> b!6845011 m!7586068))

(declare-fun m!7586070 () Bool)

(assert (=> b!6845016 m!7586070))

(assert (=> b!6845018 m!7585550))

(assert (=> b!6844409 d!2151825))

(assert (=> b!6844573 d!2151781))

(assert (=> b!6844573 d!2151757))

(declare-fun d!2151829 () Bool)

(assert (=> d!2151829 (= (nullable!6636 (regOne!33854 r!7292)) (nullableFct!2520 (regOne!33854 r!7292)))))

(declare-fun bs!1829748 () Bool)

(assert (= bs!1829748 d!2151829))

(declare-fun m!7586072 () Bool)

(assert (=> bs!1829748 m!7586072))

(assert (=> b!6844605 d!2151829))

(declare-fun b!6845032 () Bool)

(declare-fun e!4128075 () Bool)

(declare-fun e!4128081 () Bool)

(assert (=> b!6845032 (= e!4128075 e!4128081)))

(declare-fun c!1274354 () Bool)

(assert (=> b!6845032 (= c!1274354 ((_ is Star!16671) (ite c!1274222 (reg!17000 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))) (ite c!1274223 (regTwo!33855 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))) (regTwo!33854 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564)))))))))

(declare-fun b!6845033 () Bool)

(declare-fun e!4128076 () Bool)

(declare-fun call!623371 () Bool)

(assert (=> b!6845033 (= e!4128076 call!623371)))

(declare-fun b!6845034 () Bool)

(declare-fun res!2794571 () Bool)

(declare-fun e!4128080 () Bool)

(assert (=> b!6845034 (=> (not res!2794571) (not e!4128080))))

(declare-fun call!623373 () Bool)

(assert (=> b!6845034 (= res!2794571 call!623373)))

(declare-fun e!4128079 () Bool)

(assert (=> b!6845034 (= e!4128079 e!4128080)))

(declare-fun b!6845035 () Bool)

(assert (=> b!6845035 (= e!4128081 e!4128076)))

(declare-fun res!2794575 () Bool)

(assert (=> b!6845035 (= res!2794575 (not (nullable!6636 (reg!17000 (ite c!1274222 (reg!17000 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))) (ite c!1274223 (regTwo!33855 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))) (regTwo!33854 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564)))))))))))

(assert (=> b!6845035 (=> (not res!2794575) (not e!4128076))))

(declare-fun b!6845036 () Bool)

(declare-fun e!4128078 () Bool)

(declare-fun e!4128077 () Bool)

(assert (=> b!6845036 (= e!4128078 e!4128077)))

(declare-fun res!2794572 () Bool)

(assert (=> b!6845036 (=> (not res!2794572) (not e!4128077))))

(assert (=> b!6845036 (= res!2794572 call!623373)))

(declare-fun bm!623366 () Bool)

(declare-fun call!623372 () Bool)

(assert (=> bm!623366 (= call!623372 call!623371)))

(declare-fun bm!623367 () Bool)

(declare-fun c!1274355 () Bool)

(assert (=> bm!623367 (= call!623373 (validRegex!8407 (ite c!1274355 (regOne!33855 (ite c!1274222 (reg!17000 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))) (ite c!1274223 (regTwo!33855 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))) (regTwo!33854 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564)))))) (regOne!33854 (ite c!1274222 (reg!17000 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))) (ite c!1274223 (regTwo!33855 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))) (regTwo!33854 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564)))))))))))

(declare-fun bm!623368 () Bool)

(assert (=> bm!623368 (= call!623371 (validRegex!8407 (ite c!1274354 (reg!17000 (ite c!1274222 (reg!17000 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))) (ite c!1274223 (regTwo!33855 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))) (regTwo!33854 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564)))))) (ite c!1274355 (regTwo!33855 (ite c!1274222 (reg!17000 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))) (ite c!1274223 (regTwo!33855 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))) (regTwo!33854 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564)))))) (regTwo!33854 (ite c!1274222 (reg!17000 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))) (ite c!1274223 (regTwo!33855 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))) (regTwo!33854 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))))))))))))

(declare-fun d!2151831 () Bool)

(declare-fun res!2794574 () Bool)

(assert (=> d!2151831 (=> res!2794574 e!4128075)))

(assert (=> d!2151831 (= res!2794574 ((_ is ElementMatch!16671) (ite c!1274222 (reg!17000 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))) (ite c!1274223 (regTwo!33855 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))) (regTwo!33854 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564)))))))))

(assert (=> d!2151831 (= (validRegex!8407 (ite c!1274222 (reg!17000 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))) (ite c!1274223 (regTwo!33855 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))) (regTwo!33854 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564)))))) e!4128075)))

(declare-fun b!6845037 () Bool)

(assert (=> b!6845037 (= e!4128081 e!4128079)))

(assert (=> b!6845037 (= c!1274355 ((_ is Union!16671) (ite c!1274222 (reg!17000 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))) (ite c!1274223 (regTwo!33855 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))) (regTwo!33854 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564)))))))))

(declare-fun b!6845038 () Bool)

(assert (=> b!6845038 (= e!4128077 call!623372)))

(declare-fun b!6845039 () Bool)

(assert (=> b!6845039 (= e!4128080 call!623372)))

(declare-fun b!6845040 () Bool)

(declare-fun res!2794573 () Bool)

(assert (=> b!6845040 (=> res!2794573 e!4128078)))

(assert (=> b!6845040 (= res!2794573 (not ((_ is Concat!25516) (ite c!1274222 (reg!17000 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))) (ite c!1274223 (regTwo!33855 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))) (regTwo!33854 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))))))))))

(assert (=> b!6845040 (= e!4128079 e!4128078)))

(assert (= (and d!2151831 (not res!2794574)) b!6845032))

(assert (= (and b!6845032 c!1274354) b!6845035))

(assert (= (and b!6845032 (not c!1274354)) b!6845037))

(assert (= (and b!6845035 res!2794575) b!6845033))

(assert (= (and b!6845037 c!1274355) b!6845034))

(assert (= (and b!6845037 (not c!1274355)) b!6845040))

(assert (= (and b!6845034 res!2794571) b!6845039))

(assert (= (and b!6845040 (not res!2794573)) b!6845036))

(assert (= (and b!6845036 res!2794572) b!6845038))

(assert (= (or b!6845039 b!6845038) bm!623366))

(assert (= (or b!6845034 b!6845036) bm!623367))

(assert (= (or b!6845033 bm!623366) bm!623368))

(declare-fun m!7586074 () Bool)

(assert (=> b!6845035 m!7586074))

(declare-fun m!7586076 () Bool)

(assert (=> bm!623367 m!7586076))

(declare-fun m!7586078 () Bool)

(assert (=> bm!623368 m!7586078))

(assert (=> bm!623286 d!2151831))

(declare-fun d!2151833 () Bool)

(assert (=> d!2151833 (= (head!13723 (exprs!6555 (h!72637 zl!343))) (h!72636 (exprs!6555 (h!72637 zl!343))))))

(assert (=> b!6844396 d!2151833))

(declare-fun d!2151835 () Bool)

(assert (=> d!2151835 (= (nullable!6636 (reg!17000 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564)))) (nullableFct!2520 (reg!17000 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564)))))))

(declare-fun bs!1829754 () Bool)

(assert (= bs!1829754 d!2151835))

(declare-fun m!7586080 () Bool)

(assert (=> bs!1829754 m!7586080))

(assert (=> b!6844489 d!2151835))

(declare-fun d!2151837 () Bool)

(assert (=> d!2151837 (= (isEmpty!38567 (tail!12802 (unfocusZipperList!2088 zl!343))) ((_ is Nil!66188) (tail!12802 (unfocusZipperList!2088 zl!343))))))

(assert (=> b!6844559 d!2151837))

(declare-fun d!2151839 () Bool)

(assert (=> d!2151839 (= (tail!12802 (unfocusZipperList!2088 zl!343)) (t!380055 (unfocusZipperList!2088 zl!343)))))

(assert (=> b!6844559 d!2151839))

(declare-fun d!2151841 () Bool)

(declare-fun res!2794576 () Bool)

(declare-fun e!4128082 () Bool)

(assert (=> d!2151841 (=> res!2794576 e!4128082)))

(assert (=> d!2151841 (= res!2794576 ((_ is Nil!66188) lt!2455560))))

(assert (=> d!2151841 (= (forall!15850 lt!2455560 lambda!387070) e!4128082)))

(declare-fun b!6845041 () Bool)

(declare-fun e!4128083 () Bool)

(assert (=> b!6845041 (= e!4128082 e!4128083)))

(declare-fun res!2794577 () Bool)

(assert (=> b!6845041 (=> (not res!2794577) (not e!4128083))))

(assert (=> b!6845041 (= res!2794577 (dynLambda!26449 lambda!387070 (h!72636 lt!2455560)))))

(declare-fun b!6845042 () Bool)

(assert (=> b!6845042 (= e!4128083 (forall!15850 (t!380055 lt!2455560) lambda!387070))))

(assert (= (and d!2151841 (not res!2794576)) b!6845041))

(assert (= (and b!6845041 res!2794577) b!6845042))

(declare-fun b_lambda!258219 () Bool)

(assert (=> (not b_lambda!258219) (not b!6845041)))

(declare-fun m!7586082 () Bool)

(assert (=> b!6845041 m!7586082))

(declare-fun m!7586084 () Bool)

(assert (=> b!6845042 m!7586084))

(assert (=> d!2151621 d!2151841))

(assert (=> b!6844349 d!2151579))

(assert (=> b!6844349 d!2151581))

(assert (=> b!6844420 d!2151577))

(assert (=> d!2151575 d!2151603))

(assert (=> d!2151575 d!2151645))

(declare-fun b!6845043 () Bool)

(declare-fun e!4128089 () Bool)

(assert (=> b!6845043 (= e!4128089 (matchR!8854 (derivativeStep!5319 (derivativeStep!5319 (h!72636 lt!2455560) (head!13721 s!2326)) (head!13721 (tail!12800 s!2326))) (tail!12800 (tail!12800 s!2326))))))

(declare-fun b!6845044 () Bool)

(declare-fun e!4128087 () Bool)

(assert (=> b!6845044 (= e!4128087 (= (head!13721 (tail!12800 s!2326)) (c!1273977 (derivativeStep!5319 (h!72636 lt!2455560) (head!13721 s!2326)))))))

(declare-fun b!6845045 () Bool)

(declare-fun e!4128090 () Bool)

(declare-fun e!4128086 () Bool)

(assert (=> b!6845045 (= e!4128090 e!4128086)))

(declare-fun c!1274357 () Bool)

(assert (=> b!6845045 (= c!1274357 ((_ is EmptyLang!16671) (derivativeStep!5319 (h!72636 lt!2455560) (head!13721 s!2326))))))

(declare-fun b!6845046 () Bool)

(declare-fun lt!2455719 () Bool)

(assert (=> b!6845046 (= e!4128086 (not lt!2455719))))

(declare-fun b!6845047 () Bool)

(declare-fun e!4128084 () Bool)

(declare-fun e!4128088 () Bool)

(assert (=> b!6845047 (= e!4128084 e!4128088)))

(declare-fun res!2794578 () Bool)

(assert (=> b!6845047 (=> (not res!2794578) (not e!4128088))))

(assert (=> b!6845047 (= res!2794578 (not lt!2455719))))

(declare-fun bm!623369 () Bool)

(declare-fun call!623374 () Bool)

(assert (=> bm!623369 (= call!623374 (isEmpty!38565 (tail!12800 s!2326)))))

(declare-fun b!6845048 () Bool)

(declare-fun e!4128085 () Bool)

(assert (=> b!6845048 (= e!4128088 e!4128085)))

(declare-fun res!2794580 () Bool)

(assert (=> b!6845048 (=> res!2794580 e!4128085)))

(assert (=> b!6845048 (= res!2794580 call!623374)))

(declare-fun b!6845049 () Bool)

(assert (=> b!6845049 (= e!4128090 (= lt!2455719 call!623374))))

(declare-fun b!6845050 () Bool)

(declare-fun res!2794582 () Bool)

(assert (=> b!6845050 (=> res!2794582 e!4128085)))

(assert (=> b!6845050 (= res!2794582 (not (isEmpty!38565 (tail!12800 (tail!12800 s!2326)))))))

(declare-fun b!6845051 () Bool)

(declare-fun res!2794585 () Bool)

(assert (=> b!6845051 (=> (not res!2794585) (not e!4128087))))

(assert (=> b!6845051 (= res!2794585 (not call!623374))))

(declare-fun d!2151843 () Bool)

(assert (=> d!2151843 e!4128090))

(declare-fun c!1274356 () Bool)

(assert (=> d!2151843 (= c!1274356 ((_ is EmptyExpr!16671) (derivativeStep!5319 (h!72636 lt!2455560) (head!13721 s!2326))))))

(assert (=> d!2151843 (= lt!2455719 e!4128089)))

(declare-fun c!1274358 () Bool)

(assert (=> d!2151843 (= c!1274358 (isEmpty!38565 (tail!12800 s!2326)))))

(assert (=> d!2151843 (validRegex!8407 (derivativeStep!5319 (h!72636 lt!2455560) (head!13721 s!2326)))))

(assert (=> d!2151843 (= (matchR!8854 (derivativeStep!5319 (h!72636 lt!2455560) (head!13721 s!2326)) (tail!12800 s!2326)) lt!2455719)))

(declare-fun b!6845052 () Bool)

(assert (=> b!6845052 (= e!4128085 (not (= (head!13721 (tail!12800 s!2326)) (c!1273977 (derivativeStep!5319 (h!72636 lt!2455560) (head!13721 s!2326))))))))

(declare-fun b!6845053 () Bool)

(declare-fun res!2794579 () Bool)

(assert (=> b!6845053 (=> res!2794579 e!4128084)))

(assert (=> b!6845053 (= res!2794579 e!4128087)))

(declare-fun res!2794581 () Bool)

(assert (=> b!6845053 (=> (not res!2794581) (not e!4128087))))

(assert (=> b!6845053 (= res!2794581 lt!2455719)))

(declare-fun b!6845054 () Bool)

(assert (=> b!6845054 (= e!4128089 (nullable!6636 (derivativeStep!5319 (h!72636 lt!2455560) (head!13721 s!2326))))))

(declare-fun b!6845055 () Bool)

(declare-fun res!2794583 () Bool)

(assert (=> b!6845055 (=> (not res!2794583) (not e!4128087))))

(assert (=> b!6845055 (= res!2794583 (isEmpty!38565 (tail!12800 (tail!12800 s!2326))))))

(declare-fun b!6845056 () Bool)

(declare-fun res!2794584 () Bool)

(assert (=> b!6845056 (=> res!2794584 e!4128084)))

(assert (=> b!6845056 (= res!2794584 (not ((_ is ElementMatch!16671) (derivativeStep!5319 (h!72636 lt!2455560) (head!13721 s!2326)))))))

(assert (=> b!6845056 (= e!4128086 e!4128084)))

(assert (= (and d!2151843 c!1274358) b!6845054))

(assert (= (and d!2151843 (not c!1274358)) b!6845043))

(assert (= (and d!2151843 c!1274356) b!6845049))

(assert (= (and d!2151843 (not c!1274356)) b!6845045))

(assert (= (and b!6845045 c!1274357) b!6845046))

(assert (= (and b!6845045 (not c!1274357)) b!6845056))

(assert (= (and b!6845056 (not res!2794584)) b!6845053))

(assert (= (and b!6845053 res!2794581) b!6845051))

(assert (= (and b!6845051 res!2794585) b!6845055))

(assert (= (and b!6845055 res!2794583) b!6845044))

(assert (= (and b!6845053 (not res!2794579)) b!6845047))

(assert (= (and b!6845047 res!2794578) b!6845048))

(assert (= (and b!6845048 (not res!2794580)) b!6845050))

(assert (= (and b!6845050 (not res!2794582)) b!6845052))

(assert (= (or b!6845049 b!6845048 b!6845051) bm!623369))

(assert (=> bm!623369 m!7585000))

(assert (=> bm!623369 m!7585002))

(assert (=> d!2151843 m!7585000))

(assert (=> d!2151843 m!7585002))

(assert (=> d!2151843 m!7585482))

(declare-fun m!7586086 () Bool)

(assert (=> d!2151843 m!7586086))

(assert (=> b!6845044 m!7585000))

(assert (=> b!6845044 m!7585698))

(assert (=> b!6845055 m!7585000))

(assert (=> b!6845055 m!7585700))

(assert (=> b!6845055 m!7585700))

(assert (=> b!6845055 m!7585702))

(assert (=> b!6845054 m!7585482))

(declare-fun m!7586088 () Bool)

(assert (=> b!6845054 m!7586088))

(assert (=> b!6845052 m!7585000))

(assert (=> b!6845052 m!7585698))

(assert (=> b!6845043 m!7585000))

(assert (=> b!6845043 m!7585698))

(assert (=> b!6845043 m!7585482))

(assert (=> b!6845043 m!7585698))

(declare-fun m!7586090 () Bool)

(assert (=> b!6845043 m!7586090))

(assert (=> b!6845043 m!7585000))

(assert (=> b!6845043 m!7585700))

(assert (=> b!6845043 m!7586090))

(assert (=> b!6845043 m!7585700))

(declare-fun m!7586092 () Bool)

(assert (=> b!6845043 m!7586092))

(assert (=> b!6845050 m!7585000))

(assert (=> b!6845050 m!7585700))

(assert (=> b!6845050 m!7585700))

(assert (=> b!6845050 m!7585702))

(assert (=> b!6844337 d!2151843))

(declare-fun d!2151845 () Bool)

(declare-fun lt!2455720 () Regex!16671)

(assert (=> d!2151845 (validRegex!8407 lt!2455720)))

(declare-fun e!4128095 () Regex!16671)

(assert (=> d!2151845 (= lt!2455720 e!4128095)))

(declare-fun c!1274363 () Bool)

(assert (=> d!2151845 (= c!1274363 (or ((_ is EmptyExpr!16671) (h!72636 lt!2455560)) ((_ is EmptyLang!16671) (h!72636 lt!2455560))))))

(assert (=> d!2151845 (validRegex!8407 (h!72636 lt!2455560))))

(assert (=> d!2151845 (= (derivativeStep!5319 (h!72636 lt!2455560) (head!13721 s!2326)) lt!2455720)))

(declare-fun b!6845057 () Bool)

(declare-fun e!4128093 () Regex!16671)

(declare-fun call!623377 () Regex!16671)

(assert (=> b!6845057 (= e!4128093 (Concat!25516 call!623377 (h!72636 lt!2455560)))))

(declare-fun call!623376 () Regex!16671)

(declare-fun bm!623370 () Bool)

(declare-fun c!1274359 () Bool)

(declare-fun c!1274360 () Bool)

(assert (=> bm!623370 (= call!623376 (derivativeStep!5319 (ite c!1274359 (regTwo!33855 (h!72636 lt!2455560)) (ite c!1274360 (regTwo!33854 (h!72636 lt!2455560)) (regOne!33854 (h!72636 lt!2455560)))) (head!13721 s!2326)))))

(declare-fun b!6845058 () Bool)

(declare-fun e!4128094 () Regex!16671)

(declare-fun call!623378 () Regex!16671)

(assert (=> b!6845058 (= e!4128094 (Union!16671 (Concat!25516 call!623378 (regTwo!33854 (h!72636 lt!2455560))) EmptyLang!16671))))

(declare-fun bm!623371 () Bool)

(declare-fun call!623375 () Regex!16671)

(assert (=> bm!623371 (= call!623377 call!623375)))

(declare-fun b!6845059 () Bool)

(declare-fun e!4128092 () Regex!16671)

(assert (=> b!6845059 (= e!4128092 (Union!16671 call!623375 call!623376))))

(declare-fun b!6845060 () Bool)

(declare-fun e!4128091 () Regex!16671)

(assert (=> b!6845060 (= e!4128095 e!4128091)))

(declare-fun c!1274361 () Bool)

(assert (=> b!6845060 (= c!1274361 ((_ is ElementMatch!16671) (h!72636 lt!2455560)))))

(declare-fun c!1274362 () Bool)

(declare-fun bm!623372 () Bool)

(assert (=> bm!623372 (= call!623375 (derivativeStep!5319 (ite c!1274359 (regOne!33855 (h!72636 lt!2455560)) (ite c!1274362 (reg!17000 (h!72636 lt!2455560)) (regOne!33854 (h!72636 lt!2455560)))) (head!13721 s!2326)))))

(declare-fun b!6845061 () Bool)

(assert (=> b!6845061 (= e!4128095 EmptyLang!16671)))

(declare-fun b!6845062 () Bool)

(assert (=> b!6845062 (= c!1274360 (nullable!6636 (regOne!33854 (h!72636 lt!2455560))))))

(assert (=> b!6845062 (= e!4128093 e!4128094)))

(declare-fun b!6845063 () Bool)

(assert (=> b!6845063 (= e!4128094 (Union!16671 (Concat!25516 call!623377 (regTwo!33854 (h!72636 lt!2455560))) call!623378))))

(declare-fun b!6845064 () Bool)

(assert (=> b!6845064 (= e!4128092 e!4128093)))

(assert (=> b!6845064 (= c!1274362 ((_ is Star!16671) (h!72636 lt!2455560)))))

(declare-fun b!6845065 () Bool)

(assert (=> b!6845065 (= e!4128091 (ite (= (head!13721 s!2326) (c!1273977 (h!72636 lt!2455560))) EmptyExpr!16671 EmptyLang!16671))))

(declare-fun b!6845066 () Bool)

(assert (=> b!6845066 (= c!1274359 ((_ is Union!16671) (h!72636 lt!2455560)))))

(assert (=> b!6845066 (= e!4128091 e!4128092)))

(declare-fun bm!623373 () Bool)

(assert (=> bm!623373 (= call!623378 call!623376)))

(assert (= (and d!2151845 c!1274363) b!6845061))

(assert (= (and d!2151845 (not c!1274363)) b!6845060))

(assert (= (and b!6845060 c!1274361) b!6845065))

(assert (= (and b!6845060 (not c!1274361)) b!6845066))

(assert (= (and b!6845066 c!1274359) b!6845059))

(assert (= (and b!6845066 (not c!1274359)) b!6845064))

(assert (= (and b!6845064 c!1274362) b!6845057))

(assert (= (and b!6845064 (not c!1274362)) b!6845062))

(assert (= (and b!6845062 c!1274360) b!6845063))

(assert (= (and b!6845062 (not c!1274360)) b!6845058))

(assert (= (or b!6845063 b!6845058) bm!623373))

(assert (= (or b!6845057 b!6845063) bm!623371))

(assert (= (or b!6845059 bm!623373) bm!623370))

(assert (= (or b!6845059 bm!623371) bm!623372))

(declare-fun m!7586094 () Bool)

(assert (=> d!2151845 m!7586094))

(assert (=> d!2151845 m!7585160))

(assert (=> bm!623370 m!7584998))

(declare-fun m!7586096 () Bool)

(assert (=> bm!623370 m!7586096))

(assert (=> bm!623372 m!7584998))

(declare-fun m!7586098 () Bool)

(assert (=> bm!623372 m!7586098))

(declare-fun m!7586100 () Bool)

(assert (=> b!6845062 m!7586100))

(assert (=> b!6844337 d!2151845))

(assert (=> b!6844337 d!2151577))

(assert (=> b!6844337 d!2151581))

(declare-fun d!2151847 () Bool)

(assert (=> d!2151847 (= (head!13723 (t!380055 lt!2455560)) (h!72636 (t!380055 lt!2455560)))))

(assert (=> b!6844461 d!2151847))

(declare-fun bs!1829764 () Bool)

(declare-fun d!2151849 () Bool)

(assert (= bs!1829764 (and d!2151849 d!2151609)))

(declare-fun lambda!387091 () Int)

(assert (=> bs!1829764 (= (= lambda!387069 lambda!387019) (= lambda!387091 lambda!387066))))

(declare-fun bs!1829766 () Bool)

(assert (= bs!1829766 (and d!2151849 d!2151403)))

(assert (=> bs!1829766 (not (= lambda!387091 lambda!387019))))

(declare-fun bs!1829767 () Bool)

(assert (= bs!1829767 (and d!2151849 d!2151611)))

(assert (=> bs!1829767 (not (= lambda!387091 lambda!387069))))

(declare-fun bs!1829769 () Bool)

(assert (= bs!1829769 (and d!2151849 d!2151401)))

(assert (=> bs!1829769 (= (= lambda!387069 lambda!386979) (= lambda!387091 lambda!387016))))

(declare-fun bs!1829770 () Bool)

(assert (= bs!1829770 (and d!2151849 b!6843333)))

(assert (=> bs!1829770 (not (= lambda!387091 lambda!386979))))

(assert (=> d!2151849 true))

(assert (=> d!2151849 (< (dynLambda!26447 order!27645 lambda!387069) (dynLambda!26447 order!27645 lambda!387091))))

(assert (=> d!2151849 (= (exists!2768 zl!343 lambda!387069) (not (forall!15849 zl!343 lambda!387091)))))

(declare-fun bs!1829772 () Bool)

(assert (= bs!1829772 d!2151849))

(declare-fun m!7586102 () Bool)

(assert (=> bs!1829772 m!7586102))

(assert (=> d!2151611 d!2151849))

(declare-fun d!2151851 () Bool)

(declare-fun res!2794586 () Bool)

(declare-fun e!4128096 () Bool)

(assert (=> d!2151851 (=> res!2794586 e!4128096)))

(assert (=> d!2151851 (= res!2794586 ((_ is Nil!66188) (t!380055 lt!2455560)))))

(assert (=> d!2151851 (= (forall!15850 (t!380055 lt!2455560) lambda!387026) e!4128096)))

(declare-fun b!6845067 () Bool)

(declare-fun e!4128097 () Bool)

(assert (=> b!6845067 (= e!4128096 e!4128097)))

(declare-fun res!2794587 () Bool)

(assert (=> b!6845067 (=> (not res!2794587) (not e!4128097))))

(assert (=> b!6845067 (= res!2794587 (dynLambda!26449 lambda!387026 (h!72636 (t!380055 lt!2455560))))))

(declare-fun b!6845068 () Bool)

(assert (=> b!6845068 (= e!4128097 (forall!15850 (t!380055 (t!380055 lt!2455560)) lambda!387026))))

(assert (= (and d!2151851 (not res!2794586)) b!6845067))

(assert (= (and b!6845067 res!2794587) b!6845068))

(declare-fun b_lambda!258221 () Bool)

(assert (=> (not b_lambda!258221) (not b!6845067)))

(declare-fun m!7586104 () Bool)

(assert (=> b!6845067 m!7586104))

(declare-fun m!7586106 () Bool)

(assert (=> b!6845068 m!7586106))

(assert (=> b!6844470 d!2151851))

(assert (=> bm!623283 d!2151603))

(declare-fun d!2151853 () Bool)

(assert (=> d!2151853 (= (isEmptyExpr!2003 lt!2455682) ((_ is EmptyExpr!16671) lt!2455682))))

(assert (=> b!6844413 d!2151853))

(declare-fun d!2151855 () Bool)

(assert (=> d!2151855 (= (nullable!6636 (derivativeStep!5319 r!7292 (head!13721 s!2326))) (nullableFct!2520 (derivativeStep!5319 r!7292 (head!13721 s!2326))))))

(declare-fun bs!1829773 () Bool)

(assert (= bs!1829773 d!2151855))

(assert (=> bs!1829773 m!7585066))

(declare-fun m!7586108 () Bool)

(assert (=> bs!1829773 m!7586108))

(assert (=> b!6844577 d!2151855))

(assert (=> b!6844431 d!2151579))

(assert (=> b!6844431 d!2151581))

(declare-fun b!6845069 () Bool)

(declare-fun lt!2455722 () Unit!160045)

(declare-fun Unit!160055 () Unit!160045)

(assert (=> b!6845069 (= lt!2455722 Unit!160055)))

(assert (=> b!6845069 false))

(declare-fun e!4128100 () Regex!16671)

(assert (=> b!6845069 (= e!4128100 (head!13723 (t!380055 (t!380055 lt!2455560))))))

(declare-fun b!6845070 () Bool)

(declare-fun e!4128099 () Regex!16671)

(assert (=> b!6845070 (= e!4128099 (h!72636 (t!380055 (t!380055 lt!2455560))))))

(declare-fun b!6845071 () Bool)

(declare-fun e!4128098 () Bool)

(declare-fun lt!2455721 () Regex!16671)

(assert (=> b!6845071 (= e!4128098 (contains!20320 (t!380055 (t!380055 lt!2455560)) lt!2455721))))

(declare-fun d!2151857 () Bool)

(assert (=> d!2151857 e!4128098))

(declare-fun res!2794589 () Bool)

(assert (=> d!2151857 (=> (not res!2794589) (not e!4128098))))

(assert (=> d!2151857 (= res!2794589 (dynLambda!26449 lambda!386978 lt!2455721))))

(assert (=> d!2151857 (= lt!2455721 e!4128099)))

(declare-fun c!1274364 () Bool)

(declare-fun e!4128101 () Bool)

(assert (=> d!2151857 (= c!1274364 e!4128101)))

(declare-fun res!2794588 () Bool)

(assert (=> d!2151857 (=> (not res!2794588) (not e!4128101))))

(assert (=> d!2151857 (= res!2794588 ((_ is Cons!66188) (t!380055 (t!380055 lt!2455560))))))

(assert (=> d!2151857 (exists!2769 (t!380055 (t!380055 lt!2455560)) lambda!386978)))

(assert (=> d!2151857 (= (getWitness!937 (t!380055 (t!380055 lt!2455560)) lambda!386978) lt!2455721)))

(declare-fun b!6845072 () Bool)

(assert (=> b!6845072 (= e!4128101 (dynLambda!26449 lambda!386978 (h!72636 (t!380055 (t!380055 lt!2455560)))))))

(declare-fun b!6845073 () Bool)

(assert (=> b!6845073 (= e!4128100 (getWitness!937 (t!380055 (t!380055 (t!380055 lt!2455560))) lambda!386978))))

(declare-fun b!6845074 () Bool)

(assert (=> b!6845074 (= e!4128099 e!4128100)))

(declare-fun c!1274365 () Bool)

(assert (=> b!6845074 (= c!1274365 ((_ is Cons!66188) (t!380055 (t!380055 lt!2455560))))))

(assert (= (and d!2151857 res!2794588) b!6845072))

(assert (= (and d!2151857 c!1274364) b!6845070))

(assert (= (and d!2151857 (not c!1274364)) b!6845074))

(assert (= (and b!6845074 c!1274365) b!6845073))

(assert (= (and b!6845074 (not c!1274365)) b!6845069))

(assert (= (and d!2151857 res!2794589) b!6845071))

(declare-fun b_lambda!258223 () Bool)

(assert (=> (not b_lambda!258223) (not d!2151857)))

(declare-fun b_lambda!258225 () Bool)

(assert (=> (not b_lambda!258225) (not b!6845072)))

(declare-fun m!7586116 () Bool)

(assert (=> b!6845071 m!7586116))

(declare-fun m!7586118 () Bool)

(assert (=> d!2151857 m!7586118))

(declare-fun m!7586120 () Bool)

(assert (=> d!2151857 m!7586120))

(declare-fun m!7586122 () Bool)

(assert (=> b!6845069 m!7586122))

(declare-fun m!7586124 () Bool)

(assert (=> b!6845073 m!7586124))

(declare-fun m!7586126 () Bool)

(assert (=> b!6845072 m!7586126))

(assert (=> b!6844465 d!2151857))

(declare-fun d!2151861 () Bool)

(assert (=> d!2151861 (= (nullable!6636 (reg!17000 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292))))) (nullableFct!2520 (reg!17000 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292))))))))

(declare-fun bs!1829774 () Bool)

(assert (= bs!1829774 d!2151861))

(declare-fun m!7586128 () Bool)

(assert (=> bs!1829774 m!7586128))

(assert (=> b!6844650 d!2151861))

(declare-fun b!6845084 () Bool)

(declare-fun e!4128109 () Bool)

(declare-fun e!4128115 () Bool)

(assert (=> b!6845084 (= e!4128109 e!4128115)))

(declare-fun c!1274368 () Bool)

(assert (=> b!6845084 (= c!1274368 ((_ is Star!16671) lt!2455702))))

(declare-fun b!6845085 () Bool)

(declare-fun e!4128110 () Bool)

(declare-fun call!623382 () Bool)

(assert (=> b!6845085 (= e!4128110 call!623382)))

(declare-fun b!6845086 () Bool)

(declare-fun res!2794595 () Bool)

(declare-fun e!4128114 () Bool)

(assert (=> b!6845086 (=> (not res!2794595) (not e!4128114))))

(declare-fun call!623384 () Bool)

(assert (=> b!6845086 (= res!2794595 call!623384)))

(declare-fun e!4128113 () Bool)

(assert (=> b!6845086 (= e!4128113 e!4128114)))

(declare-fun b!6845087 () Bool)

(assert (=> b!6845087 (= e!4128115 e!4128110)))

(declare-fun res!2794599 () Bool)

(assert (=> b!6845087 (= res!2794599 (not (nullable!6636 (reg!17000 lt!2455702))))))

(assert (=> b!6845087 (=> (not res!2794599) (not e!4128110))))

(declare-fun b!6845088 () Bool)

(declare-fun e!4128112 () Bool)

(declare-fun e!4128111 () Bool)

(assert (=> b!6845088 (= e!4128112 e!4128111)))

(declare-fun res!2794596 () Bool)

(assert (=> b!6845088 (=> (not res!2794596) (not e!4128111))))

(assert (=> b!6845088 (= res!2794596 call!623384)))

(declare-fun bm!623377 () Bool)

(declare-fun call!623383 () Bool)

(assert (=> bm!623377 (= call!623383 call!623382)))

(declare-fun bm!623378 () Bool)

(declare-fun c!1274369 () Bool)

(assert (=> bm!623378 (= call!623384 (validRegex!8407 (ite c!1274369 (regOne!33855 lt!2455702) (regOne!33854 lt!2455702))))))

(declare-fun bm!623379 () Bool)

(assert (=> bm!623379 (= call!623382 (validRegex!8407 (ite c!1274368 (reg!17000 lt!2455702) (ite c!1274369 (regTwo!33855 lt!2455702) (regTwo!33854 lt!2455702)))))))

(declare-fun d!2151863 () Bool)

(declare-fun res!2794598 () Bool)

(assert (=> d!2151863 (=> res!2794598 e!4128109)))

(assert (=> d!2151863 (= res!2794598 ((_ is ElementMatch!16671) lt!2455702))))

(assert (=> d!2151863 (= (validRegex!8407 lt!2455702) e!4128109)))

(declare-fun b!6845089 () Bool)

(assert (=> b!6845089 (= e!4128115 e!4128113)))

(assert (=> b!6845089 (= c!1274369 ((_ is Union!16671) lt!2455702))))

(declare-fun b!6845090 () Bool)

(assert (=> b!6845090 (= e!4128111 call!623383)))

(declare-fun b!6845091 () Bool)

(assert (=> b!6845091 (= e!4128114 call!623383)))

(declare-fun b!6845092 () Bool)

(declare-fun res!2794597 () Bool)

(assert (=> b!6845092 (=> res!2794597 e!4128112)))

(assert (=> b!6845092 (= res!2794597 (not ((_ is Concat!25516) lt!2455702)))))

(assert (=> b!6845092 (= e!4128113 e!4128112)))

(assert (= (and d!2151863 (not res!2794598)) b!6845084))

(assert (= (and b!6845084 c!1274368) b!6845087))

(assert (= (and b!6845084 (not c!1274368)) b!6845089))

(assert (= (and b!6845087 res!2794599) b!6845085))

(assert (= (and b!6845089 c!1274369) b!6845086))

(assert (= (and b!6845089 (not c!1274369)) b!6845092))

(assert (= (and b!6845086 res!2794595) b!6845091))

(assert (= (and b!6845092 (not res!2794597)) b!6845088))

(assert (= (and b!6845088 res!2794596) b!6845090))

(assert (= (or b!6845091 b!6845090) bm!623377))

(assert (= (or b!6845086 b!6845088) bm!623378))

(assert (= (or b!6845085 bm!623377) bm!623379))

(declare-fun m!7586130 () Bool)

(assert (=> b!6845087 m!7586130))

(declare-fun m!7586132 () Bool)

(assert (=> bm!623378 m!7586132))

(declare-fun m!7586134 () Bool)

(assert (=> bm!623379 m!7586134))

(assert (=> d!2151673 d!2151863))

(assert (=> d!2151673 d!2151429))

(declare-fun d!2151865 () Bool)

(declare-fun res!2794600 () Bool)

(declare-fun e!4128116 () Bool)

(assert (=> d!2151865 (=> res!2794600 e!4128116)))

(assert (=> d!2151865 (= res!2794600 ((_ is Nil!66188) (t!380055 lt!2455560)))))

(assert (=> d!2151865 (= (forall!15850 (t!380055 lt!2455560) lambda!387031) e!4128116)))

(declare-fun b!6845093 () Bool)

(declare-fun e!4128117 () Bool)

(assert (=> b!6845093 (= e!4128116 e!4128117)))

(declare-fun res!2794601 () Bool)

(assert (=> b!6845093 (=> (not res!2794601) (not e!4128117))))

(assert (=> b!6845093 (= res!2794601 (dynLambda!26449 lambda!387031 (h!72636 (t!380055 lt!2455560))))))

(declare-fun b!6845094 () Bool)

(assert (=> b!6845094 (= e!4128117 (forall!15850 (t!380055 (t!380055 lt!2455560)) lambda!387031))))

(assert (= (and d!2151865 (not res!2794600)) b!6845093))

(assert (= (and b!6845093 res!2794601) b!6845094))

(declare-fun b_lambda!258227 () Bool)

(assert (=> (not b_lambda!258227) (not b!6845093)))

(declare-fun m!7586142 () Bool)

(assert (=> b!6845093 m!7586142))

(declare-fun m!7586144 () Bool)

(assert (=> b!6845094 m!7586144))

(assert (=> b!6844452 d!2151865))

(declare-fun d!2151869 () Bool)

(assert (=> d!2151869 (= (nullable!6636 (reg!17000 (h!72636 lt!2455560))) (nullableFct!2520 (reg!17000 (h!72636 lt!2455560))))))

(declare-fun bs!1829775 () Bool)

(assert (= bs!1829775 d!2151869))

(declare-fun m!7586146 () Bool)

(assert (=> bs!1829775 m!7586146))

(assert (=> b!6844498 d!2151869))

(declare-fun b!6845097 () Bool)

(declare-fun e!4128120 () Bool)

(declare-fun e!4128126 () Bool)

(assert (=> b!6845097 (= e!4128120 e!4128126)))

(declare-fun c!1274370 () Bool)

(assert (=> b!6845097 (= c!1274370 ((_ is Star!16671) (h!72636 (t!380055 lt!2455560))))))

(declare-fun b!6845098 () Bool)

(declare-fun e!4128121 () Bool)

(declare-fun call!623385 () Bool)

(assert (=> b!6845098 (= e!4128121 call!623385)))

(declare-fun b!6845099 () Bool)

(declare-fun res!2794604 () Bool)

(declare-fun e!4128125 () Bool)

(assert (=> b!6845099 (=> (not res!2794604) (not e!4128125))))

(declare-fun call!623387 () Bool)

(assert (=> b!6845099 (= res!2794604 call!623387)))

(declare-fun e!4128124 () Bool)

(assert (=> b!6845099 (= e!4128124 e!4128125)))

(declare-fun b!6845100 () Bool)

(assert (=> b!6845100 (= e!4128126 e!4128121)))

(declare-fun res!2794608 () Bool)

(assert (=> b!6845100 (= res!2794608 (not (nullable!6636 (reg!17000 (h!72636 (t!380055 lt!2455560))))))))

(assert (=> b!6845100 (=> (not res!2794608) (not e!4128121))))

(declare-fun b!6845101 () Bool)

(declare-fun e!4128123 () Bool)

(declare-fun e!4128122 () Bool)

(assert (=> b!6845101 (= e!4128123 e!4128122)))

(declare-fun res!2794605 () Bool)

(assert (=> b!6845101 (=> (not res!2794605) (not e!4128122))))

(assert (=> b!6845101 (= res!2794605 call!623387)))

(declare-fun bm!623380 () Bool)

(declare-fun call!623386 () Bool)

(assert (=> bm!623380 (= call!623386 call!623385)))

(declare-fun bm!623381 () Bool)

(declare-fun c!1274371 () Bool)

(assert (=> bm!623381 (= call!623387 (validRegex!8407 (ite c!1274371 (regOne!33855 (h!72636 (t!380055 lt!2455560))) (regOne!33854 (h!72636 (t!380055 lt!2455560))))))))

(declare-fun bm!623382 () Bool)

(assert (=> bm!623382 (= call!623385 (validRegex!8407 (ite c!1274370 (reg!17000 (h!72636 (t!380055 lt!2455560))) (ite c!1274371 (regTwo!33855 (h!72636 (t!380055 lt!2455560))) (regTwo!33854 (h!72636 (t!380055 lt!2455560)))))))))

(declare-fun d!2151871 () Bool)

(declare-fun res!2794607 () Bool)

(assert (=> d!2151871 (=> res!2794607 e!4128120)))

(assert (=> d!2151871 (= res!2794607 ((_ is ElementMatch!16671) (h!72636 (t!380055 lt!2455560))))))

(assert (=> d!2151871 (= (validRegex!8407 (h!72636 (t!380055 lt!2455560))) e!4128120)))

(declare-fun b!6845102 () Bool)

(assert (=> b!6845102 (= e!4128126 e!4128124)))

(assert (=> b!6845102 (= c!1274371 ((_ is Union!16671) (h!72636 (t!380055 lt!2455560))))))

(declare-fun b!6845103 () Bool)

(assert (=> b!6845103 (= e!4128122 call!623386)))

(declare-fun b!6845104 () Bool)

(assert (=> b!6845104 (= e!4128125 call!623386)))

(declare-fun b!6845105 () Bool)

(declare-fun res!2794606 () Bool)

(assert (=> b!6845105 (=> res!2794606 e!4128123)))

(assert (=> b!6845105 (= res!2794606 (not ((_ is Concat!25516) (h!72636 (t!380055 lt!2455560)))))))

(assert (=> b!6845105 (= e!4128124 e!4128123)))

(assert (= (and d!2151871 (not res!2794607)) b!6845097))

(assert (= (and b!6845097 c!1274370) b!6845100))

(assert (= (and b!6845097 (not c!1274370)) b!6845102))

(assert (= (and b!6845100 res!2794608) b!6845098))

(assert (= (and b!6845102 c!1274371) b!6845099))

(assert (= (and b!6845102 (not c!1274371)) b!6845105))

(assert (= (and b!6845099 res!2794604) b!6845104))

(assert (= (and b!6845105 (not res!2794606)) b!6845101))

(assert (= (and b!6845101 res!2794605) b!6845103))

(assert (= (or b!6845104 b!6845103) bm!623380))

(assert (= (or b!6845099 b!6845101) bm!623381))

(assert (= (or b!6845098 bm!623380) bm!623382))

(declare-fun m!7586152 () Bool)

(assert (=> b!6845100 m!7586152))

(declare-fun m!7586154 () Bool)

(assert (=> bm!623381 m!7586154))

(declare-fun m!7586156 () Bool)

(assert (=> bm!623382 m!7586156))

(assert (=> bs!1829629 d!2151871))

(declare-fun d!2151875 () Bool)

(assert (=> d!2151875 (= (head!13723 (exprs!6555 lt!2455629)) (h!72636 (exprs!6555 lt!2455629)))))

(assert (=> b!6844417 d!2151875))

(declare-fun bs!1829776 () Bool)

(declare-fun b!6845119 () Bool)

(assert (= bs!1829776 (and b!6845119 b!6843694)))

(declare-fun lambda!387092 () Int)

(assert (=> bs!1829776 (not (= lambda!387092 lambda!387013))))

(declare-fun bs!1829777 () Bool)

(assert (= bs!1829777 (and b!6845119 b!6843696)))

(assert (=> bs!1829777 (= (and (= (reg!17000 (regTwo!33855 (regOne!33855 r!7292))) (reg!17000 r!7292)) (= (regTwo!33855 (regOne!33855 r!7292)) r!7292)) (= lambda!387092 lambda!387012))))

(declare-fun bs!1829778 () Bool)

(assert (= bs!1829778 (and b!6845119 b!6844510)))

(assert (=> bs!1829778 (= (and (= (reg!17000 (regTwo!33855 (regOne!33855 r!7292))) (reg!17000 (regOne!33855 r!7292))) (= (regTwo!33855 (regOne!33855 r!7292)) (regOne!33855 r!7292))) (= lambda!387092 lambda!387074))))

(declare-fun bs!1829779 () Bool)

(assert (= bs!1829779 (and b!6845119 b!6844353)))

(assert (=> bs!1829779 (not (= lambda!387092 lambda!387059))))

(declare-fun bs!1829780 () Bool)

(assert (= bs!1829780 (and b!6845119 b!6844355)))

(assert (=> bs!1829780 (= (and (= (reg!17000 (regTwo!33855 (regOne!33855 r!7292))) (reg!17000 (regTwo!33855 r!7292))) (= (regTwo!33855 (regOne!33855 r!7292)) (regTwo!33855 r!7292))) (= lambda!387092 lambda!387058))))

(declare-fun bs!1829781 () Bool)

(assert (= bs!1829781 (and b!6845119 b!6844508)))

(assert (=> bs!1829781 (not (= lambda!387092 lambda!387075))))

(assert (=> b!6845119 true))

(assert (=> b!6845119 true))

(declare-fun bs!1829782 () Bool)

(declare-fun b!6845117 () Bool)

(assert (= bs!1829782 (and b!6845117 b!6843694)))

(declare-fun lambda!387093 () Int)

(assert (=> bs!1829782 (= (and (= (regOne!33854 (regTwo!33855 (regOne!33855 r!7292))) (regOne!33854 r!7292)) (= (regTwo!33854 (regTwo!33855 (regOne!33855 r!7292))) (regTwo!33854 r!7292))) (= lambda!387093 lambda!387013))))

(declare-fun bs!1829783 () Bool)

(assert (= bs!1829783 (and b!6845117 b!6843696)))

(assert (=> bs!1829783 (not (= lambda!387093 lambda!387012))))

(declare-fun bs!1829784 () Bool)

(assert (= bs!1829784 (and b!6845117 b!6845119)))

(assert (=> bs!1829784 (not (= lambda!387093 lambda!387092))))

(declare-fun bs!1829785 () Bool)

(assert (= bs!1829785 (and b!6845117 b!6844510)))

(assert (=> bs!1829785 (not (= lambda!387093 lambda!387074))))

(declare-fun bs!1829786 () Bool)

(assert (= bs!1829786 (and b!6845117 b!6844353)))

(assert (=> bs!1829786 (= (and (= (regOne!33854 (regTwo!33855 (regOne!33855 r!7292))) (regOne!33854 (regTwo!33855 r!7292))) (= (regTwo!33854 (regTwo!33855 (regOne!33855 r!7292))) (regTwo!33854 (regTwo!33855 r!7292)))) (= lambda!387093 lambda!387059))))

(declare-fun bs!1829787 () Bool)

(assert (= bs!1829787 (and b!6845117 b!6844355)))

(assert (=> bs!1829787 (not (= lambda!387093 lambda!387058))))

(declare-fun bs!1829788 () Bool)

(assert (= bs!1829788 (and b!6845117 b!6844508)))

(assert (=> bs!1829788 (= (and (= (regOne!33854 (regTwo!33855 (regOne!33855 r!7292))) (regOne!33854 (regOne!33855 r!7292))) (= (regTwo!33854 (regTwo!33855 (regOne!33855 r!7292))) (regTwo!33854 (regOne!33855 r!7292)))) (= lambda!387093 lambda!387075))))

(assert (=> b!6845117 true))

(assert (=> b!6845117 true))

(declare-fun b!6845115 () Bool)

(declare-fun e!4128139 () Bool)

(declare-fun call!623392 () Bool)

(assert (=> b!6845115 (= e!4128139 call!623392)))

(declare-fun b!6845116 () Bool)

(declare-fun e!4128134 () Bool)

(declare-fun e!4128136 () Bool)

(assert (=> b!6845116 (= e!4128134 e!4128136)))

(declare-fun c!1274374 () Bool)

(assert (=> b!6845116 (= c!1274374 ((_ is Star!16671) (regTwo!33855 (regOne!33855 r!7292))))))

(declare-fun bm!623387 () Bool)

(assert (=> bm!623387 (= call!623392 (isEmpty!38565 s!2326))))

(declare-fun call!623391 () Bool)

(assert (=> b!6845117 (= e!4128136 call!623391)))

(declare-fun b!6845118 () Bool)

(declare-fun e!4128140 () Bool)

(assert (=> b!6845118 (= e!4128140 (= s!2326 (Cons!66190 (c!1273977 (regTwo!33855 (regOne!33855 r!7292))) Nil!66190)))))

(declare-fun e!4128135 () Bool)

(assert (=> b!6845119 (= e!4128135 call!623391)))

(declare-fun b!6845120 () Bool)

(declare-fun c!1274376 () Bool)

(assert (=> b!6845120 (= c!1274376 ((_ is Union!16671) (regTwo!33855 (regOne!33855 r!7292))))))

(assert (=> b!6845120 (= e!4128140 e!4128134)))

(declare-fun d!2151877 () Bool)

(declare-fun c!1274375 () Bool)

(assert (=> d!2151877 (= c!1274375 ((_ is EmptyExpr!16671) (regTwo!33855 (regOne!33855 r!7292))))))

(assert (=> d!2151877 (= (matchRSpec!3772 (regTwo!33855 (regOne!33855 r!7292)) s!2326) e!4128139)))

(declare-fun bm!623386 () Bool)

(assert (=> bm!623386 (= call!623391 (Exists!3735 (ite c!1274374 lambda!387092 lambda!387093)))))

(declare-fun b!6845121 () Bool)

(declare-fun res!2794616 () Bool)

(assert (=> b!6845121 (=> res!2794616 e!4128135)))

(assert (=> b!6845121 (= res!2794616 call!623392)))

(assert (=> b!6845121 (= e!4128136 e!4128135)))

(declare-fun b!6845122 () Bool)

(declare-fun c!1274377 () Bool)

(assert (=> b!6845122 (= c!1274377 ((_ is ElementMatch!16671) (regTwo!33855 (regOne!33855 r!7292))))))

(declare-fun e!4128137 () Bool)

(assert (=> b!6845122 (= e!4128137 e!4128140)))

(declare-fun b!6845123 () Bool)

(assert (=> b!6845123 (= e!4128139 e!4128137)))

(declare-fun res!2794614 () Bool)

(assert (=> b!6845123 (= res!2794614 (not ((_ is EmptyLang!16671) (regTwo!33855 (regOne!33855 r!7292)))))))

(assert (=> b!6845123 (=> (not res!2794614) (not e!4128137))))

(declare-fun b!6845124 () Bool)

(declare-fun e!4128138 () Bool)

(assert (=> b!6845124 (= e!4128134 e!4128138)))

(declare-fun res!2794615 () Bool)

(assert (=> b!6845124 (= res!2794615 (matchRSpec!3772 (regOne!33855 (regTwo!33855 (regOne!33855 r!7292))) s!2326))))

(assert (=> b!6845124 (=> res!2794615 e!4128138)))

(declare-fun b!6845125 () Bool)

(assert (=> b!6845125 (= e!4128138 (matchRSpec!3772 (regTwo!33855 (regTwo!33855 (regOne!33855 r!7292))) s!2326))))

(assert (= (and d!2151877 c!1274375) b!6845115))

(assert (= (and d!2151877 (not c!1274375)) b!6845123))

(assert (= (and b!6845123 res!2794614) b!6845122))

(assert (= (and b!6845122 c!1274377) b!6845118))

(assert (= (and b!6845122 (not c!1274377)) b!6845120))

(assert (= (and b!6845120 c!1274376) b!6845124))

(assert (= (and b!6845120 (not c!1274376)) b!6845116))

(assert (= (and b!6845124 (not res!2794615)) b!6845125))

(assert (= (and b!6845116 c!1274374) b!6845121))

(assert (= (and b!6845116 (not c!1274374)) b!6845117))

(assert (= (and b!6845121 (not res!2794616)) b!6845119))

(assert (= (or b!6845119 b!6845117) bm!623386))

(assert (= (or b!6845115 b!6845121) bm!623387))

(assert (=> bm!623387 m!7584996))

(declare-fun m!7586172 () Bool)

(assert (=> bm!623386 m!7586172))

(declare-fun m!7586174 () Bool)

(assert (=> b!6845124 m!7586174))

(declare-fun m!7586176 () Bool)

(assert (=> b!6845125 m!7586176))

(assert (=> b!6844516 d!2151877))

(declare-fun d!2151883 () Bool)

(declare-fun lt!2455725 () Regex!16671)

(assert (=> d!2151883 (validRegex!8407 lt!2455725)))

(declare-fun e!4128157 () Regex!16671)

(assert (=> d!2151883 (= lt!2455725 e!4128157)))

(declare-fun c!1274390 () Bool)

(assert (=> d!2151883 (= c!1274390 (or ((_ is EmptyExpr!16671) (ite c!1274268 (regTwo!33855 lt!2455564) (ite c!1274269 (regTwo!33854 lt!2455564) (regOne!33854 lt!2455564)))) ((_ is EmptyLang!16671) (ite c!1274268 (regTwo!33855 lt!2455564) (ite c!1274269 (regTwo!33854 lt!2455564) (regOne!33854 lt!2455564))))))))

(assert (=> d!2151883 (validRegex!8407 (ite c!1274268 (regTwo!33855 lt!2455564) (ite c!1274269 (regTwo!33854 lt!2455564) (regOne!33854 lt!2455564))))))

(assert (=> d!2151883 (= (derivativeStep!5319 (ite c!1274268 (regTwo!33855 lt!2455564) (ite c!1274269 (regTwo!33854 lt!2455564) (regOne!33854 lt!2455564))) (head!13721 s!2326)) lt!2455725)))

(declare-fun call!623400 () Regex!16671)

(declare-fun e!4128155 () Regex!16671)

(declare-fun b!6845150 () Bool)

(assert (=> b!6845150 (= e!4128155 (Concat!25516 call!623400 (ite c!1274268 (regTwo!33855 lt!2455564) (ite c!1274269 (regTwo!33854 lt!2455564) (regOne!33854 lt!2455564)))))))

(declare-fun bm!623393 () Bool)

(declare-fun call!623399 () Regex!16671)

(declare-fun c!1274387 () Bool)

(declare-fun c!1274386 () Bool)

(assert (=> bm!623393 (= call!623399 (derivativeStep!5319 (ite c!1274386 (regTwo!33855 (ite c!1274268 (regTwo!33855 lt!2455564) (ite c!1274269 (regTwo!33854 lt!2455564) (regOne!33854 lt!2455564)))) (ite c!1274387 (regTwo!33854 (ite c!1274268 (regTwo!33855 lt!2455564) (ite c!1274269 (regTwo!33854 lt!2455564) (regOne!33854 lt!2455564)))) (regOne!33854 (ite c!1274268 (regTwo!33855 lt!2455564) (ite c!1274269 (regTwo!33854 lt!2455564) (regOne!33854 lt!2455564)))))) (head!13721 s!2326)))))

(declare-fun e!4128156 () Regex!16671)

(declare-fun b!6845151 () Bool)

(declare-fun call!623401 () Regex!16671)

(assert (=> b!6845151 (= e!4128156 (Union!16671 (Concat!25516 call!623401 (regTwo!33854 (ite c!1274268 (regTwo!33855 lt!2455564) (ite c!1274269 (regTwo!33854 lt!2455564) (regOne!33854 lt!2455564))))) EmptyLang!16671))))

(declare-fun bm!623394 () Bool)

(declare-fun call!623398 () Regex!16671)

(assert (=> bm!623394 (= call!623400 call!623398)))

(declare-fun b!6845152 () Bool)

(declare-fun e!4128154 () Regex!16671)

(assert (=> b!6845152 (= e!4128154 (Union!16671 call!623398 call!623399))))

(declare-fun b!6845153 () Bool)

(declare-fun e!4128153 () Regex!16671)

(assert (=> b!6845153 (= e!4128157 e!4128153)))

(declare-fun c!1274388 () Bool)

(assert (=> b!6845153 (= c!1274388 ((_ is ElementMatch!16671) (ite c!1274268 (regTwo!33855 lt!2455564) (ite c!1274269 (regTwo!33854 lt!2455564) (regOne!33854 lt!2455564)))))))

(declare-fun c!1274389 () Bool)

(declare-fun bm!623395 () Bool)

(assert (=> bm!623395 (= call!623398 (derivativeStep!5319 (ite c!1274386 (regOne!33855 (ite c!1274268 (regTwo!33855 lt!2455564) (ite c!1274269 (regTwo!33854 lt!2455564) (regOne!33854 lt!2455564)))) (ite c!1274389 (reg!17000 (ite c!1274268 (regTwo!33855 lt!2455564) (ite c!1274269 (regTwo!33854 lt!2455564) (regOne!33854 lt!2455564)))) (regOne!33854 (ite c!1274268 (regTwo!33855 lt!2455564) (ite c!1274269 (regTwo!33854 lt!2455564) (regOne!33854 lt!2455564)))))) (head!13721 s!2326)))))

(declare-fun b!6845154 () Bool)

(assert (=> b!6845154 (= e!4128157 EmptyLang!16671)))

(declare-fun b!6845155 () Bool)

(assert (=> b!6845155 (= c!1274387 (nullable!6636 (regOne!33854 (ite c!1274268 (regTwo!33855 lt!2455564) (ite c!1274269 (regTwo!33854 lt!2455564) (regOne!33854 lt!2455564))))))))

(assert (=> b!6845155 (= e!4128155 e!4128156)))

(declare-fun b!6845156 () Bool)

(assert (=> b!6845156 (= e!4128156 (Union!16671 (Concat!25516 call!623400 (regTwo!33854 (ite c!1274268 (regTwo!33855 lt!2455564) (ite c!1274269 (regTwo!33854 lt!2455564) (regOne!33854 lt!2455564))))) call!623401))))

(declare-fun b!6845157 () Bool)

(assert (=> b!6845157 (= e!4128154 e!4128155)))

(assert (=> b!6845157 (= c!1274389 ((_ is Star!16671) (ite c!1274268 (regTwo!33855 lt!2455564) (ite c!1274269 (regTwo!33854 lt!2455564) (regOne!33854 lt!2455564)))))))

(declare-fun b!6845158 () Bool)

(assert (=> b!6845158 (= e!4128153 (ite (= (head!13721 s!2326) (c!1273977 (ite c!1274268 (regTwo!33855 lt!2455564) (ite c!1274269 (regTwo!33854 lt!2455564) (regOne!33854 lt!2455564))))) EmptyExpr!16671 EmptyLang!16671))))

(declare-fun b!6845159 () Bool)

(assert (=> b!6845159 (= c!1274386 ((_ is Union!16671) (ite c!1274268 (regTwo!33855 lt!2455564) (ite c!1274269 (regTwo!33854 lt!2455564) (regOne!33854 lt!2455564)))))))

(assert (=> b!6845159 (= e!4128153 e!4128154)))

(declare-fun bm!623396 () Bool)

(assert (=> bm!623396 (= call!623401 call!623399)))

(assert (= (and d!2151883 c!1274390) b!6845154))

(assert (= (and d!2151883 (not c!1274390)) b!6845153))

(assert (= (and b!6845153 c!1274388) b!6845158))

(assert (= (and b!6845153 (not c!1274388)) b!6845159))

(assert (= (and b!6845159 c!1274386) b!6845152))

(assert (= (and b!6845159 (not c!1274386)) b!6845157))

(assert (= (and b!6845157 c!1274389) b!6845150))

(assert (= (and b!6845157 (not c!1274389)) b!6845155))

(assert (= (and b!6845155 c!1274387) b!6845156))

(assert (= (and b!6845155 (not c!1274387)) b!6845151))

(assert (= (or b!6845156 b!6845151) bm!623396))

(assert (= (or b!6845150 b!6845156) bm!623394))

(assert (= (or b!6845152 bm!623396) bm!623393))

(assert (= (or b!6845152 bm!623394) bm!623395))

(declare-fun m!7586178 () Bool)

(assert (=> d!2151883 m!7586178))

(declare-fun m!7586180 () Bool)

(assert (=> d!2151883 m!7586180))

(assert (=> bm!623393 m!7584998))

(declare-fun m!7586182 () Bool)

(assert (=> bm!623393 m!7586182))

(assert (=> bm!623395 m!7584998))

(declare-fun m!7586184 () Bool)

(assert (=> bm!623395 m!7586184))

(declare-fun m!7586186 () Bool)

(assert (=> b!6845155 m!7586186))

(assert (=> bm!623312 d!2151883))

(declare-fun b!6845160 () Bool)

(declare-fun e!4128158 () Bool)

(declare-fun e!4128164 () Bool)

(assert (=> b!6845160 (= e!4128158 e!4128164)))

(declare-fun c!1274391 () Bool)

(assert (=> b!6845160 (= c!1274391 ((_ is Star!16671) (ite c!1274224 (reg!17000 (h!72636 lt!2455560)) (ite c!1274225 (regTwo!33855 (h!72636 lt!2455560)) (regTwo!33854 (h!72636 lt!2455560))))))))

(declare-fun b!6845161 () Bool)

(declare-fun e!4128159 () Bool)

(declare-fun call!623402 () Bool)

(assert (=> b!6845161 (= e!4128159 call!623402)))

(declare-fun b!6845162 () Bool)

(declare-fun res!2794625 () Bool)

(declare-fun e!4128163 () Bool)

(assert (=> b!6845162 (=> (not res!2794625) (not e!4128163))))

(declare-fun call!623404 () Bool)

(assert (=> b!6845162 (= res!2794625 call!623404)))

(declare-fun e!4128162 () Bool)

(assert (=> b!6845162 (= e!4128162 e!4128163)))

(declare-fun b!6845163 () Bool)

(assert (=> b!6845163 (= e!4128164 e!4128159)))

(declare-fun res!2794629 () Bool)

(assert (=> b!6845163 (= res!2794629 (not (nullable!6636 (reg!17000 (ite c!1274224 (reg!17000 (h!72636 lt!2455560)) (ite c!1274225 (regTwo!33855 (h!72636 lt!2455560)) (regTwo!33854 (h!72636 lt!2455560))))))))))

(assert (=> b!6845163 (=> (not res!2794629) (not e!4128159))))

(declare-fun b!6845164 () Bool)

(declare-fun e!4128161 () Bool)

(declare-fun e!4128160 () Bool)

(assert (=> b!6845164 (= e!4128161 e!4128160)))

(declare-fun res!2794626 () Bool)

(assert (=> b!6845164 (=> (not res!2794626) (not e!4128160))))

(assert (=> b!6845164 (= res!2794626 call!623404)))

(declare-fun bm!623397 () Bool)

(declare-fun call!623403 () Bool)

(assert (=> bm!623397 (= call!623403 call!623402)))

(declare-fun bm!623398 () Bool)

(declare-fun c!1274392 () Bool)

(assert (=> bm!623398 (= call!623404 (validRegex!8407 (ite c!1274392 (regOne!33855 (ite c!1274224 (reg!17000 (h!72636 lt!2455560)) (ite c!1274225 (regTwo!33855 (h!72636 lt!2455560)) (regTwo!33854 (h!72636 lt!2455560))))) (regOne!33854 (ite c!1274224 (reg!17000 (h!72636 lt!2455560)) (ite c!1274225 (regTwo!33855 (h!72636 lt!2455560)) (regTwo!33854 (h!72636 lt!2455560))))))))))

(declare-fun bm!623399 () Bool)

(assert (=> bm!623399 (= call!623402 (validRegex!8407 (ite c!1274391 (reg!17000 (ite c!1274224 (reg!17000 (h!72636 lt!2455560)) (ite c!1274225 (regTwo!33855 (h!72636 lt!2455560)) (regTwo!33854 (h!72636 lt!2455560))))) (ite c!1274392 (regTwo!33855 (ite c!1274224 (reg!17000 (h!72636 lt!2455560)) (ite c!1274225 (regTwo!33855 (h!72636 lt!2455560)) (regTwo!33854 (h!72636 lt!2455560))))) (regTwo!33854 (ite c!1274224 (reg!17000 (h!72636 lt!2455560)) (ite c!1274225 (regTwo!33855 (h!72636 lt!2455560)) (regTwo!33854 (h!72636 lt!2455560)))))))))))

(declare-fun d!2151885 () Bool)

(declare-fun res!2794628 () Bool)

(assert (=> d!2151885 (=> res!2794628 e!4128158)))

(assert (=> d!2151885 (= res!2794628 ((_ is ElementMatch!16671) (ite c!1274224 (reg!17000 (h!72636 lt!2455560)) (ite c!1274225 (regTwo!33855 (h!72636 lt!2455560)) (regTwo!33854 (h!72636 lt!2455560))))))))

(assert (=> d!2151885 (= (validRegex!8407 (ite c!1274224 (reg!17000 (h!72636 lt!2455560)) (ite c!1274225 (regTwo!33855 (h!72636 lt!2455560)) (regTwo!33854 (h!72636 lt!2455560))))) e!4128158)))

(declare-fun b!6845165 () Bool)

(assert (=> b!6845165 (= e!4128164 e!4128162)))

(assert (=> b!6845165 (= c!1274392 ((_ is Union!16671) (ite c!1274224 (reg!17000 (h!72636 lt!2455560)) (ite c!1274225 (regTwo!33855 (h!72636 lt!2455560)) (regTwo!33854 (h!72636 lt!2455560))))))))

(declare-fun b!6845166 () Bool)

(assert (=> b!6845166 (= e!4128160 call!623403)))

(declare-fun b!6845167 () Bool)

(assert (=> b!6845167 (= e!4128163 call!623403)))

(declare-fun b!6845168 () Bool)

(declare-fun res!2794627 () Bool)

(assert (=> b!6845168 (=> res!2794627 e!4128161)))

(assert (=> b!6845168 (= res!2794627 (not ((_ is Concat!25516) (ite c!1274224 (reg!17000 (h!72636 lt!2455560)) (ite c!1274225 (regTwo!33855 (h!72636 lt!2455560)) (regTwo!33854 (h!72636 lt!2455560)))))))))

(assert (=> b!6845168 (= e!4128162 e!4128161)))

(assert (= (and d!2151885 (not res!2794628)) b!6845160))

(assert (= (and b!6845160 c!1274391) b!6845163))

(assert (= (and b!6845160 (not c!1274391)) b!6845165))

(assert (= (and b!6845163 res!2794629) b!6845161))

(assert (= (and b!6845165 c!1274392) b!6845162))

(assert (= (and b!6845165 (not c!1274392)) b!6845168))

(assert (= (and b!6845162 res!2794625) b!6845167))

(assert (= (and b!6845168 (not res!2794627)) b!6845164))

(assert (= (and b!6845164 res!2794626) b!6845166))

(assert (= (or b!6845167 b!6845166) bm!623397))

(assert (= (or b!6845162 b!6845164) bm!623398))

(assert (= (or b!6845161 bm!623397) bm!623399))

(declare-fun m!7586196 () Bool)

(assert (=> b!6845163 m!7586196))

(declare-fun m!7586198 () Bool)

(assert (=> bm!623398 m!7586198))

(declare-fun m!7586200 () Bool)

(assert (=> bm!623399 m!7586200))

(assert (=> bm!623289 d!2151885))

(declare-fun d!2151889 () Bool)

(assert (=> d!2151889 (= (nullable!6636 (h!72636 lt!2455560)) (nullableFct!2520 (h!72636 lt!2455560)))))

(declare-fun bs!1829789 () Bool)

(assert (= bs!1829789 d!2151889))

(declare-fun m!7586202 () Bool)

(assert (=> bs!1829789 m!7586202))

(assert (=> b!6844348 d!2151889))

(declare-fun b!6845183 () Bool)

(declare-fun e!4128172 () Bool)

(declare-fun e!4128178 () Bool)

(assert (=> b!6845183 (= e!4128172 e!4128178)))

(declare-fun c!1274396 () Bool)

(assert (=> b!6845183 (= c!1274396 ((_ is Star!16671) (ite c!1274201 (reg!17000 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))) (ite c!1274202 (regTwo!33855 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))) (regTwo!33854 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292)))))))))

(declare-fun b!6845184 () Bool)

(declare-fun e!4128173 () Bool)

(declare-fun call!623406 () Bool)

(assert (=> b!6845184 (= e!4128173 call!623406)))

(declare-fun b!6845185 () Bool)

(declare-fun res!2794638 () Bool)

(declare-fun e!4128177 () Bool)

(assert (=> b!6845185 (=> (not res!2794638) (not e!4128177))))

(declare-fun call!623408 () Bool)

(assert (=> b!6845185 (= res!2794638 call!623408)))

(declare-fun e!4128176 () Bool)

(assert (=> b!6845185 (= e!4128176 e!4128177)))

(declare-fun b!6845186 () Bool)

(assert (=> b!6845186 (= e!4128178 e!4128173)))

(declare-fun res!2794642 () Bool)

(assert (=> b!6845186 (= res!2794642 (not (nullable!6636 (reg!17000 (ite c!1274201 (reg!17000 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))) (ite c!1274202 (regTwo!33855 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))) (regTwo!33854 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292)))))))))))

(assert (=> b!6845186 (=> (not res!2794642) (not e!4128173))))

(declare-fun b!6845187 () Bool)

(declare-fun e!4128175 () Bool)

(declare-fun e!4128174 () Bool)

(assert (=> b!6845187 (= e!4128175 e!4128174)))

(declare-fun res!2794639 () Bool)

(assert (=> b!6845187 (=> (not res!2794639) (not e!4128174))))

(assert (=> b!6845187 (= res!2794639 call!623408)))

(declare-fun bm!623401 () Bool)

(declare-fun call!623407 () Bool)

(assert (=> bm!623401 (= call!623407 call!623406)))

(declare-fun c!1274397 () Bool)

(declare-fun bm!623402 () Bool)

(assert (=> bm!623402 (= call!623408 (validRegex!8407 (ite c!1274397 (regOne!33855 (ite c!1274201 (reg!17000 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))) (ite c!1274202 (regTwo!33855 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))) (regTwo!33854 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292)))))) (regOne!33854 (ite c!1274201 (reg!17000 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))) (ite c!1274202 (regTwo!33855 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))) (regTwo!33854 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292)))))))))))

(declare-fun bm!623403 () Bool)

(assert (=> bm!623403 (= call!623406 (validRegex!8407 (ite c!1274396 (reg!17000 (ite c!1274201 (reg!17000 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))) (ite c!1274202 (regTwo!33855 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))) (regTwo!33854 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292)))))) (ite c!1274397 (regTwo!33855 (ite c!1274201 (reg!17000 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))) (ite c!1274202 (regTwo!33855 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))) (regTwo!33854 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292)))))) (regTwo!33854 (ite c!1274201 (reg!17000 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))) (ite c!1274202 (regTwo!33855 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))) (regTwo!33854 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))))))))))))

(declare-fun d!2151891 () Bool)

(declare-fun res!2794641 () Bool)

(assert (=> d!2151891 (=> res!2794641 e!4128172)))

(assert (=> d!2151891 (= res!2794641 ((_ is ElementMatch!16671) (ite c!1274201 (reg!17000 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))) (ite c!1274202 (regTwo!33855 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))) (regTwo!33854 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292)))))))))

(assert (=> d!2151891 (= (validRegex!8407 (ite c!1274201 (reg!17000 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))) (ite c!1274202 (regTwo!33855 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))) (regTwo!33854 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292)))))) e!4128172)))

(declare-fun b!6845188 () Bool)

(assert (=> b!6845188 (= e!4128178 e!4128176)))

(assert (=> b!6845188 (= c!1274397 ((_ is Union!16671) (ite c!1274201 (reg!17000 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))) (ite c!1274202 (regTwo!33855 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))) (regTwo!33854 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292)))))))))

(declare-fun b!6845189 () Bool)

(assert (=> b!6845189 (= e!4128174 call!623407)))

(declare-fun b!6845190 () Bool)

(assert (=> b!6845190 (= e!4128177 call!623407)))

(declare-fun b!6845191 () Bool)

(declare-fun res!2794640 () Bool)

(assert (=> b!6845191 (=> res!2794640 e!4128175)))

(assert (=> b!6845191 (= res!2794640 (not ((_ is Concat!25516) (ite c!1274201 (reg!17000 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))) (ite c!1274202 (regTwo!33855 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))) (regTwo!33854 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))))))))))

(assert (=> b!6845191 (= e!4128176 e!4128175)))

(assert (= (and d!2151891 (not res!2794641)) b!6845183))

(assert (= (and b!6845183 c!1274396) b!6845186))

(assert (= (and b!6845183 (not c!1274396)) b!6845188))

(assert (= (and b!6845186 res!2794642) b!6845184))

(assert (= (and b!6845188 c!1274397) b!6845185))

(assert (= (and b!6845188 (not c!1274397)) b!6845191))

(assert (= (and b!6845185 res!2794638) b!6845190))

(assert (= (and b!6845191 (not res!2794640)) b!6845187))

(assert (= (and b!6845187 res!2794639) b!6845189))

(assert (= (or b!6845190 b!6845189) bm!623401))

(assert (= (or b!6845185 b!6845187) bm!623402))

(assert (= (or b!6845184 bm!623401) bm!623403))

(declare-fun m!7586204 () Bool)

(assert (=> b!6845186 m!7586204))

(declare-fun m!7586206 () Bool)

(assert (=> bm!623402 m!7586206))

(declare-fun m!7586208 () Bool)

(assert (=> bm!623403 m!7586208))

(assert (=> bm!623282 d!2151891))

(declare-fun bs!1829790 () Bool)

(declare-fun d!2151893 () Bool)

(assert (= bs!1829790 (and d!2151893 d!2151591)))

(declare-fun lambda!387094 () Int)

(assert (=> bs!1829790 (= lambda!387094 lambda!387063)))

(declare-fun bs!1829791 () Bool)

(assert (= bs!1829791 (and d!2151893 d!2151623)))

(assert (=> bs!1829791 (not (= lambda!387094 lambda!387073))))

(declare-fun bs!1829792 () Bool)

(assert (= bs!1829792 (and d!2151893 d!2151427)))

(assert (=> bs!1829792 (= lambda!387094 lambda!387035)))

(declare-fun bs!1829793 () Bool)

(assert (= bs!1829793 (and d!2151893 d!2151417)))

(assert (=> bs!1829793 (= lambda!387094 lambda!387022)))

(declare-fun bs!1829794 () Bool)

(assert (= bs!1829794 (and d!2151893 d!2151423)))

(assert (=> bs!1829794 (not (= lambda!387094 lambda!387026))))

(declare-fun bs!1829795 () Bool)

(assert (= bs!1829795 (and d!2151893 d!2151425)))

(assert (=> bs!1829795 (= lambda!387094 lambda!387031)))

(assert (=> bs!1829795 (not (= lambda!387094 lambda!387032))))

(declare-fun bs!1829796 () Bool)

(assert (= bs!1829796 (and d!2151893 d!2151621)))

(assert (=> bs!1829796 (not (= lambda!387094 lambda!387070))))

(declare-fun bs!1829797 () Bool)

(assert (= bs!1829797 (and d!2151893 d!2151729)))

(assert (=> bs!1829797 (= lambda!387094 lambda!387083)))

(declare-fun bs!1829798 () Bool)

(assert (= bs!1829798 (and d!2151893 d!2151771)))

(assert (=> bs!1829798 (= lambda!387094 lambda!387085)))

(declare-fun bs!1829799 () Bool)

(assert (= bs!1829799 (and d!2151893 d!2151599)))

(assert (=> bs!1829799 (= lambda!387094 lambda!387065)))

(declare-fun bs!1829800 () Bool)

(assert (= bs!1829800 (and d!2151893 d!2151593)))

(assert (=> bs!1829800 (= lambda!387094 lambda!387064)))

(declare-fun bs!1829801 () Bool)

(assert (= bs!1829801 (and d!2151893 d!2151655)))

(assert (=> bs!1829801 (= lambda!387094 lambda!387078)))

(declare-fun bs!1829802 () Bool)

(assert (= bs!1829802 (and d!2151893 d!2151825)))

(assert (=> bs!1829802 (= lambda!387094 lambda!387088)))

(declare-fun bs!1829803 () Bool)

(assert (= bs!1829803 (and d!2151893 d!2151675)))

(assert (=> bs!1829803 (= lambda!387094 lambda!387079)))

(declare-fun bs!1829804 () Bool)

(assert (= bs!1829804 (and d!2151893 b!6843348)))

(assert (=> bs!1829804 (not (= lambda!387094 lambda!386978))))

(declare-fun bs!1829805 () Bool)

(assert (= bs!1829805 (and d!2151893 d!2151419)))

(assert (=> bs!1829805 (= lambda!387094 lambda!387023)))

(declare-fun bs!1829806 () Bool)

(assert (= bs!1829806 (and d!2151893 d!2151587)))

(assert (=> bs!1829806 (= lambda!387094 lambda!387060)))

(declare-fun b!6845192 () Bool)

(declare-fun e!4128179 () Bool)

(declare-fun lt!2455727 () Regex!16671)

(assert (=> b!6845192 (= e!4128179 (= lt!2455727 (head!13723 (t!380055 (unfocusZipperList!2088 zl!343)))))))

(declare-fun b!6845193 () Bool)

(assert (=> b!6845193 (= e!4128179 (isUnion!1445 lt!2455727))))

(declare-fun b!6845194 () Bool)

(declare-fun e!4128184 () Bool)

(assert (=> b!6845194 (= e!4128184 (isEmptyLang!2015 lt!2455727))))

(declare-fun b!6845195 () Bool)

(declare-fun e!4128181 () Regex!16671)

(assert (=> b!6845195 (= e!4128181 EmptyLang!16671)))

(declare-fun b!6845197 () Bool)

(declare-fun e!4128183 () Regex!16671)

(assert (=> b!6845197 (= e!4128183 e!4128181)))

(declare-fun c!1274398 () Bool)

(assert (=> b!6845197 (= c!1274398 ((_ is Cons!66188) (t!380055 (unfocusZipperList!2088 zl!343))))))

(declare-fun b!6845198 () Bool)

(assert (=> b!6845198 (= e!4128181 (Union!16671 (h!72636 (t!380055 (unfocusZipperList!2088 zl!343))) (generalisedUnion!2511 (t!380055 (t!380055 (unfocusZipperList!2088 zl!343))))))))

(declare-fun b!6845199 () Bool)

(assert (=> b!6845199 (= e!4128184 e!4128179)))

(declare-fun c!1274401 () Bool)

(assert (=> b!6845199 (= c!1274401 (isEmpty!38567 (tail!12802 (t!380055 (unfocusZipperList!2088 zl!343)))))))

(declare-fun b!6845200 () Bool)

(declare-fun e!4128182 () Bool)

(assert (=> b!6845200 (= e!4128182 e!4128184)))

(declare-fun c!1274399 () Bool)

(assert (=> b!6845200 (= c!1274399 (isEmpty!38567 (t!380055 (unfocusZipperList!2088 zl!343))))))

(declare-fun b!6845201 () Bool)

(assert (=> b!6845201 (= e!4128183 (h!72636 (t!380055 (unfocusZipperList!2088 zl!343))))))

(assert (=> d!2151893 e!4128182))

(declare-fun res!2794644 () Bool)

(assert (=> d!2151893 (=> (not res!2794644) (not e!4128182))))

(assert (=> d!2151893 (= res!2794644 (validRegex!8407 lt!2455727))))

(assert (=> d!2151893 (= lt!2455727 e!4128183)))

(declare-fun c!1274400 () Bool)

(declare-fun e!4128180 () Bool)

(assert (=> d!2151893 (= c!1274400 e!4128180)))

(declare-fun res!2794643 () Bool)

(assert (=> d!2151893 (=> (not res!2794643) (not e!4128180))))

(assert (=> d!2151893 (= res!2794643 ((_ is Cons!66188) (t!380055 (unfocusZipperList!2088 zl!343))))))

(assert (=> d!2151893 (forall!15850 (t!380055 (unfocusZipperList!2088 zl!343)) lambda!387094)))

(assert (=> d!2151893 (= (generalisedUnion!2511 (t!380055 (unfocusZipperList!2088 zl!343))) lt!2455727)))

(declare-fun b!6845196 () Bool)

(assert (=> b!6845196 (= e!4128180 (isEmpty!38567 (t!380055 (t!380055 (unfocusZipperList!2088 zl!343)))))))

(assert (= (and d!2151893 res!2794643) b!6845196))

(assert (= (and d!2151893 c!1274400) b!6845201))

(assert (= (and d!2151893 (not c!1274400)) b!6845197))

(assert (= (and b!6845197 c!1274398) b!6845198))

(assert (= (and b!6845197 (not c!1274398)) b!6845195))

(assert (= (and d!2151893 res!2794644) b!6845200))

(assert (= (and b!6845200 c!1274399) b!6845194))

(assert (= (and b!6845200 (not c!1274399)) b!6845199))

(assert (= (and b!6845199 c!1274401) b!6845192))

(assert (= (and b!6845199 (not c!1274401)) b!6845193))

(assert (=> b!6845200 m!7585672))

(declare-fun m!7586224 () Bool)

(assert (=> b!6845196 m!7586224))

(declare-fun m!7586226 () Bool)

(assert (=> b!6845199 m!7586226))

(assert (=> b!6845199 m!7586226))

(declare-fun m!7586228 () Bool)

(assert (=> b!6845199 m!7586228))

(declare-fun m!7586230 () Bool)

(assert (=> b!6845193 m!7586230))

(declare-fun m!7586232 () Bool)

(assert (=> b!6845192 m!7586232))

(declare-fun m!7586234 () Bool)

(assert (=> b!6845198 m!7586234))

(declare-fun m!7586236 () Bool)

(assert (=> d!2151893 m!7586236))

(declare-fun m!7586238 () Bool)

(assert (=> d!2151893 m!7586238))

(declare-fun m!7586240 () Bool)

(assert (=> b!6845194 m!7586240))

(assert (=> b!6844558 d!2151893))

(declare-fun d!2151897 () Bool)

(assert (=> d!2151897 (= (head!13722 (t!380056 zl!343)) (h!72637 (t!380056 zl!343)))))

(assert (=> b!6844439 d!2151897))

(declare-fun b!6845212 () Bool)

(declare-fun e!4128190 () Bool)

(declare-fun e!4128196 () Bool)

(assert (=> b!6845212 (= e!4128190 e!4128196)))

(declare-fun c!1274407 () Bool)

(assert (=> b!6845212 (= c!1274407 ((_ is Star!16671) (ite c!1274180 (regOne!33855 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))) (regOne!33854 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))))))))

(declare-fun b!6845213 () Bool)

(declare-fun e!4128191 () Bool)

(declare-fun call!623413 () Bool)

(assert (=> b!6845213 (= e!4128191 call!623413)))

(declare-fun b!6845214 () Bool)

(declare-fun res!2794645 () Bool)

(declare-fun e!4128195 () Bool)

(assert (=> b!6845214 (=> (not res!2794645) (not e!4128195))))

(declare-fun call!623415 () Bool)

(assert (=> b!6845214 (= res!2794645 call!623415)))

(declare-fun e!4128194 () Bool)

(assert (=> b!6845214 (= e!4128194 e!4128195)))

(declare-fun b!6845215 () Bool)

(assert (=> b!6845215 (= e!4128196 e!4128191)))

(declare-fun res!2794649 () Bool)

(assert (=> b!6845215 (= res!2794649 (not (nullable!6636 (reg!17000 (ite c!1274180 (regOne!33855 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))) (regOne!33854 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))))))))))

(assert (=> b!6845215 (=> (not res!2794649) (not e!4128191))))

(declare-fun b!6845216 () Bool)

(declare-fun e!4128193 () Bool)

(declare-fun e!4128192 () Bool)

(assert (=> b!6845216 (= e!4128193 e!4128192)))

(declare-fun res!2794646 () Bool)

(assert (=> b!6845216 (=> (not res!2794646) (not e!4128192))))

(assert (=> b!6845216 (= res!2794646 call!623415)))

(declare-fun bm!623408 () Bool)

(declare-fun call!623414 () Bool)

(assert (=> bm!623408 (= call!623414 call!623413)))

(declare-fun c!1274408 () Bool)

(declare-fun bm!623409 () Bool)

(assert (=> bm!623409 (= call!623415 (validRegex!8407 (ite c!1274408 (regOne!33855 (ite c!1274180 (regOne!33855 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))) (regOne!33854 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))))) (regOne!33854 (ite c!1274180 (regOne!33855 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))) (regOne!33854 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))))))))))

(declare-fun bm!623410 () Bool)

(assert (=> bm!623410 (= call!623413 (validRegex!8407 (ite c!1274407 (reg!17000 (ite c!1274180 (regOne!33855 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))) (regOne!33854 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))))) (ite c!1274408 (regTwo!33855 (ite c!1274180 (regOne!33855 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))) (regOne!33854 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))))) (regTwo!33854 (ite c!1274180 (regOne!33855 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))) (regOne!33854 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564))))))))))))

(declare-fun d!2151899 () Bool)

(declare-fun res!2794648 () Bool)

(assert (=> d!2151899 (=> res!2794648 e!4128190)))

(assert (=> d!2151899 (= res!2794648 ((_ is ElementMatch!16671) (ite c!1274180 (regOne!33855 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))) (regOne!33854 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))))))))

(assert (=> d!2151899 (= (validRegex!8407 (ite c!1274180 (regOne!33855 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))) (regOne!33854 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))))) e!4128190)))

(declare-fun b!6845217 () Bool)

(assert (=> b!6845217 (= e!4128196 e!4128194)))

(assert (=> b!6845217 (= c!1274408 ((_ is Union!16671) (ite c!1274180 (regOne!33855 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))) (regOne!33854 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))))))))

(declare-fun b!6845218 () Bool)

(assert (=> b!6845218 (= e!4128192 call!623414)))

(declare-fun b!6845219 () Bool)

(assert (=> b!6845219 (= e!4128195 call!623414)))

(declare-fun b!6845220 () Bool)

(declare-fun res!2794647 () Bool)

(assert (=> b!6845220 (=> res!2794647 e!4128193)))

(assert (=> b!6845220 (= res!2794647 (not ((_ is Concat!25516) (ite c!1274180 (regOne!33855 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564)))) (regOne!33854 (ite c!1274080 (reg!17000 lt!2455564) (ite c!1274081 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564))))))))))

(assert (=> b!6845220 (= e!4128194 e!4128193)))

(assert (= (and d!2151899 (not res!2794648)) b!6845212))

(assert (= (and b!6845212 c!1274407) b!6845215))

(assert (= (and b!6845212 (not c!1274407)) b!6845217))

(assert (= (and b!6845215 res!2794649) b!6845213))

(assert (= (and b!6845217 c!1274408) b!6845214))

(assert (= (and b!6845217 (not c!1274408)) b!6845220))

(assert (= (and b!6845214 res!2794645) b!6845219))

(assert (= (and b!6845220 (not res!2794647)) b!6845216))

(assert (= (and b!6845216 res!2794646) b!6845218))

(assert (= (or b!6845219 b!6845218) bm!623408))

(assert (= (or b!6845214 b!6845216) bm!623409))

(assert (= (or b!6845213 bm!623408) bm!623410))

(declare-fun m!7586250 () Bool)

(assert (=> b!6845215 m!7586250))

(declare-fun m!7586252 () Bool)

(assert (=> bm!623409 m!7586252))

(declare-fun m!7586254 () Bool)

(assert (=> bm!623410 m!7586254))

(assert (=> bm!623275 d!2151899))

(assert (=> b!6844344 d!2151579))

(assert (=> b!6844344 d!2151581))

(declare-fun d!2151903 () Bool)

(assert (=> d!2151903 (= (nullable!6636 (reg!17000 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292)))) (nullableFct!2520 (reg!17000 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292)))))))

(declare-fun bs!1829807 () Bool)

(assert (= bs!1829807 d!2151903))

(declare-fun m!7586256 () Bool)

(assert (=> bs!1829807 m!7586256))

(assert (=> b!6844403 d!2151903))

(assert (=> d!2151623 d!2151395))

(declare-fun bs!1829808 () Bool)

(declare-fun d!2151905 () Bool)

(assert (= bs!1829808 (and d!2151905 d!2151591)))

(declare-fun lambda!387095 () Int)

(assert (=> bs!1829808 (not (= lambda!387095 lambda!387063))))

(declare-fun bs!1829809 () Bool)

(assert (= bs!1829809 (and d!2151905 d!2151623)))

(assert (=> bs!1829809 (not (= lambda!387095 lambda!387073))))

(declare-fun bs!1829810 () Bool)

(assert (= bs!1829810 (and d!2151905 d!2151427)))

(assert (=> bs!1829810 (not (= lambda!387095 lambda!387035))))

(declare-fun bs!1829811 () Bool)

(assert (= bs!1829811 (and d!2151905 d!2151417)))

(assert (=> bs!1829811 (not (= lambda!387095 lambda!387022))))

(declare-fun bs!1829812 () Bool)

(assert (= bs!1829812 (and d!2151905 d!2151423)))

(assert (=> bs!1829812 (= (= lambda!387073 lambda!386978) (= lambda!387095 lambda!387026))))

(declare-fun bs!1829813 () Bool)

(assert (= bs!1829813 (and d!2151905 d!2151425)))

(assert (=> bs!1829813 (not (= lambda!387095 lambda!387031))))

(declare-fun bs!1829814 () Bool)

(assert (= bs!1829814 (and d!2151905 d!2151621)))

(assert (=> bs!1829814 (= (= lambda!387073 lambda!387032) (= lambda!387095 lambda!387070))))

(declare-fun bs!1829815 () Bool)

(assert (= bs!1829815 (and d!2151905 d!2151729)))

(assert (=> bs!1829815 (not (= lambda!387095 lambda!387083))))

(declare-fun bs!1829816 () Bool)

(assert (= bs!1829816 (and d!2151905 d!2151771)))

(assert (=> bs!1829816 (not (= lambda!387095 lambda!387085))))

(declare-fun bs!1829817 () Bool)

(assert (= bs!1829817 (and d!2151905 d!2151599)))

(assert (=> bs!1829817 (not (= lambda!387095 lambda!387065))))

(declare-fun bs!1829818 () Bool)

(assert (= bs!1829818 (and d!2151905 d!2151593)))

(assert (=> bs!1829818 (not (= lambda!387095 lambda!387064))))

(declare-fun bs!1829819 () Bool)

(assert (= bs!1829819 (and d!2151905 d!2151655)))

(assert (=> bs!1829819 (not (= lambda!387095 lambda!387078))))

(declare-fun bs!1829820 () Bool)

(assert (= bs!1829820 (and d!2151905 d!2151825)))

(assert (=> bs!1829820 (not (= lambda!387095 lambda!387088))))

(declare-fun bs!1829821 () Bool)

(assert (= bs!1829821 (and d!2151905 d!2151675)))

(assert (=> bs!1829821 (not (= lambda!387095 lambda!387079))))

(declare-fun bs!1829822 () Bool)

(assert (= bs!1829822 (and d!2151905 b!6843348)))

(assert (=> bs!1829822 (not (= lambda!387095 lambda!386978))))

(declare-fun bs!1829823 () Bool)

(assert (= bs!1829823 (and d!2151905 d!2151893)))

(assert (=> bs!1829823 (not (= lambda!387095 lambda!387094))))

(assert (=> bs!1829813 (not (= lambda!387095 lambda!387032))))

(declare-fun bs!1829824 () Bool)

(assert (= bs!1829824 (and d!2151905 d!2151419)))

(assert (=> bs!1829824 (not (= lambda!387095 lambda!387023))))

(declare-fun bs!1829825 () Bool)

(assert (= bs!1829825 (and d!2151905 d!2151587)))

(assert (=> bs!1829825 (not (= lambda!387095 lambda!387060))))

(assert (=> d!2151905 true))

(assert (=> d!2151905 (< (dynLambda!26450 order!27647 lambda!387073) (dynLambda!26450 order!27647 lambda!387095))))

(assert (=> d!2151905 (= (exists!2769 lt!2455560 lambda!387073) (not (forall!15850 lt!2455560 lambda!387095)))))

(declare-fun bs!1829826 () Bool)

(assert (= bs!1829826 d!2151905))

(declare-fun m!7586274 () Bool)

(assert (=> bs!1829826 m!7586274))

(assert (=> d!2151623 d!2151905))

(declare-fun d!2151911 () Bool)

(assert (=> d!2151911 (= (isEmptyLang!2015 lt!2455693) ((_ is EmptyLang!16671) lt!2455693))))

(assert (=> b!6844554 d!2151911))

(declare-fun d!2151915 () Bool)

(declare-fun res!2794656 () Bool)

(declare-fun e!4128205 () Bool)

(assert (=> d!2151915 (=> res!2794656 e!4128205)))

(assert (=> d!2151915 (= res!2794656 ((_ is Nil!66189) (t!380056 lt!2455644)))))

(assert (=> d!2151915 (= (noDuplicate!2439 (t!380056 lt!2455644)) e!4128205)))

(declare-fun b!6845231 () Bool)

(declare-fun e!4128206 () Bool)

(assert (=> b!6845231 (= e!4128205 e!4128206)))

(declare-fun res!2794657 () Bool)

(assert (=> b!6845231 (=> (not res!2794657) (not e!4128206))))

(assert (=> b!6845231 (= res!2794657 (not (contains!20321 (t!380056 (t!380056 lt!2455644)) (h!72637 (t!380056 lt!2455644)))))))

(declare-fun b!6845232 () Bool)

(assert (=> b!6845232 (= e!4128206 (noDuplicate!2439 (t!380056 (t!380056 lt!2455644))))))

(assert (= (and d!2151915 (not res!2794656)) b!6845231))

(assert (= (and b!6845231 res!2794657) b!6845232))

(declare-fun m!7586280 () Bool)

(assert (=> b!6845231 m!7586280))

(declare-fun m!7586282 () Bool)

(assert (=> b!6845232 m!7586282))

(assert (=> b!6844476 d!2151915))

(declare-fun d!2151919 () Bool)

(declare-fun lt!2455732 () Bool)

(assert (=> d!2151919 (= lt!2455732 (select (content!12978 (t!380055 (unfocusZipperList!2088 zl!343))) lt!2455564))))

(declare-fun e!4128207 () Bool)

(assert (=> d!2151919 (= lt!2455732 e!4128207)))

(declare-fun res!2794658 () Bool)

(assert (=> d!2151919 (=> (not res!2794658) (not e!4128207))))

(assert (=> d!2151919 (= res!2794658 ((_ is Cons!66188) (t!380055 (unfocusZipperList!2088 zl!343))))))

(assert (=> d!2151919 (= (contains!20320 (t!380055 (unfocusZipperList!2088 zl!343)) lt!2455564) lt!2455732)))

(declare-fun b!6845233 () Bool)

(declare-fun e!4128208 () Bool)

(assert (=> b!6845233 (= e!4128207 e!4128208)))

(declare-fun res!2794659 () Bool)

(assert (=> b!6845233 (=> res!2794659 e!4128208)))

(assert (=> b!6845233 (= res!2794659 (= (h!72636 (t!380055 (unfocusZipperList!2088 zl!343))) lt!2455564))))

(declare-fun b!6845234 () Bool)

(assert (=> b!6845234 (= e!4128208 (contains!20320 (t!380055 (t!380055 (unfocusZipperList!2088 zl!343))) lt!2455564))))

(assert (= (and d!2151919 res!2794658) b!6845233))

(assert (= (and b!6845233 (not res!2794659)) b!6845234))

(declare-fun m!7586284 () Bool)

(assert (=> d!2151919 m!7586284))

(declare-fun m!7586286 () Bool)

(assert (=> d!2151919 m!7586286))

(declare-fun m!7586288 () Bool)

(assert (=> b!6845234 m!7586288))

(assert (=> b!6844436 d!2151919))

(declare-fun b!6845235 () Bool)

(declare-fun e!4128209 () Bool)

(declare-fun e!4128215 () Bool)

(assert (=> b!6845235 (= e!4128209 e!4128215)))

(declare-fun c!1274411 () Bool)

(assert (=> b!6845235 (= c!1274411 ((_ is Star!16671) (ite c!1274274 (reg!17000 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))) (ite c!1274275 (regTwo!33855 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))) (regTwo!33854 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292))))))))))

(declare-fun b!6845236 () Bool)

(declare-fun e!4128210 () Bool)

(declare-fun call!623416 () Bool)

(assert (=> b!6845236 (= e!4128210 call!623416)))

(declare-fun b!6845237 () Bool)

(declare-fun res!2794660 () Bool)

(declare-fun e!4128214 () Bool)

(assert (=> b!6845237 (=> (not res!2794660) (not e!4128214))))

(declare-fun call!623418 () Bool)

(assert (=> b!6845237 (= res!2794660 call!623418)))

(declare-fun e!4128213 () Bool)

(assert (=> b!6845237 (= e!4128213 e!4128214)))

(declare-fun b!6845238 () Bool)

(assert (=> b!6845238 (= e!4128215 e!4128210)))

(declare-fun res!2794664 () Bool)

(assert (=> b!6845238 (= res!2794664 (not (nullable!6636 (reg!17000 (ite c!1274274 (reg!17000 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))) (ite c!1274275 (regTwo!33855 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))) (regTwo!33854 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292))))))))))))

(assert (=> b!6845238 (=> (not res!2794664) (not e!4128210))))

(declare-fun b!6845239 () Bool)

(declare-fun e!4128212 () Bool)

(declare-fun e!4128211 () Bool)

(assert (=> b!6845239 (= e!4128212 e!4128211)))

(declare-fun res!2794661 () Bool)

(assert (=> b!6845239 (=> (not res!2794661) (not e!4128211))))

(assert (=> b!6845239 (= res!2794661 call!623418)))

(declare-fun bm!623411 () Bool)

(declare-fun call!623417 () Bool)

(assert (=> bm!623411 (= call!623417 call!623416)))

(declare-fun bm!623412 () Bool)

(declare-fun c!1274412 () Bool)

(assert (=> bm!623412 (= call!623418 (validRegex!8407 (ite c!1274412 (regOne!33855 (ite c!1274274 (reg!17000 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))) (ite c!1274275 (regTwo!33855 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))) (regTwo!33854 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292))))))) (regOne!33854 (ite c!1274274 (reg!17000 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))) (ite c!1274275 (regTwo!33855 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))) (regTwo!33854 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292))))))))))))

(declare-fun bm!623413 () Bool)

(assert (=> bm!623413 (= call!623416 (validRegex!8407 (ite c!1274411 (reg!17000 (ite c!1274274 (reg!17000 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))) (ite c!1274275 (regTwo!33855 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))) (regTwo!33854 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292))))))) (ite c!1274412 (regTwo!33855 (ite c!1274274 (reg!17000 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))) (ite c!1274275 (regTwo!33855 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))) (regTwo!33854 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292))))))) (regTwo!33854 (ite c!1274274 (reg!17000 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))) (ite c!1274275 (regTwo!33855 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))) (regTwo!33854 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))))))))))))

(declare-fun d!2151921 () Bool)

(declare-fun res!2794663 () Bool)

(assert (=> d!2151921 (=> res!2794663 e!4128209)))

(assert (=> d!2151921 (= res!2794663 ((_ is ElementMatch!16671) (ite c!1274274 (reg!17000 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))) (ite c!1274275 (regTwo!33855 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))) (regTwo!33854 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292))))))))))

(assert (=> d!2151921 (= (validRegex!8407 (ite c!1274274 (reg!17000 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))) (ite c!1274275 (regTwo!33855 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))) (regTwo!33854 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292))))))) e!4128209)))

(declare-fun b!6845240 () Bool)

(assert (=> b!6845240 (= e!4128215 e!4128213)))

(assert (=> b!6845240 (= c!1274412 ((_ is Union!16671) (ite c!1274274 (reg!17000 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))) (ite c!1274275 (regTwo!33855 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))) (regTwo!33854 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292))))))))))

(declare-fun b!6845241 () Bool)

(assert (=> b!6845241 (= e!4128211 call!623417)))

(declare-fun b!6845242 () Bool)

(assert (=> b!6845242 (= e!4128214 call!623417)))

(declare-fun b!6845243 () Bool)

(declare-fun res!2794662 () Bool)

(assert (=> b!6845243 (=> res!2794662 e!4128212)))

(assert (=> b!6845243 (= res!2794662 (not ((_ is Concat!25516) (ite c!1274274 (reg!17000 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))) (ite c!1274275 (regTwo!33855 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))) (regTwo!33854 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))))))))))

(assert (=> b!6845243 (= e!4128213 e!4128212)))

(assert (= (and d!2151921 (not res!2794663)) b!6845235))

(assert (= (and b!6845235 c!1274411) b!6845238))

(assert (= (and b!6845235 (not c!1274411)) b!6845240))

(assert (= (and b!6845238 res!2794664) b!6845236))

(assert (= (and b!6845240 c!1274412) b!6845237))

(assert (= (and b!6845240 (not c!1274412)) b!6845243))

(assert (= (and b!6845237 res!2794660) b!6845242))

(assert (= (and b!6845243 (not res!2794662)) b!6845239))

(assert (= (and b!6845239 res!2794661) b!6845241))

(assert (= (or b!6845242 b!6845241) bm!623411))

(assert (= (or b!6845237 b!6845239) bm!623412))

(assert (= (or b!6845236 bm!623411) bm!623413))

(declare-fun m!7586290 () Bool)

(assert (=> b!6845238 m!7586290))

(declare-fun m!7586292 () Bool)

(assert (=> bm!623412 m!7586292))

(declare-fun m!7586294 () Bool)

(assert (=> bm!623413 m!7586294))

(assert (=> bm!623318 d!2151921))

(declare-fun d!2151927 () Bool)

(assert (=> d!2151927 (= (nullable!6636 (reg!17000 lt!2455637)) (nullableFct!2520 (reg!17000 lt!2455637)))))

(declare-fun bs!1829827 () Bool)

(assert (= bs!1829827 d!2151927))

(declare-fun m!7586296 () Bool)

(assert (=> bs!1829827 m!7586296))

(assert (=> b!6844613 d!2151927))

(declare-fun bs!1829828 () Bool)

(declare-fun d!2151929 () Bool)

(assert (= bs!1829828 (and d!2151929 d!2151591)))

(declare-fun lambda!387096 () Int)

(assert (=> bs!1829828 (= lambda!387096 lambda!387063)))

(declare-fun bs!1829829 () Bool)

(assert (= bs!1829829 (and d!2151929 d!2151623)))

(assert (=> bs!1829829 (not (= lambda!387096 lambda!387073))))

(declare-fun bs!1829830 () Bool)

(assert (= bs!1829830 (and d!2151929 d!2151427)))

(assert (=> bs!1829830 (= lambda!387096 lambda!387035)))

(declare-fun bs!1829831 () Bool)

(assert (= bs!1829831 (and d!2151929 d!2151417)))

(assert (=> bs!1829831 (= lambda!387096 lambda!387022)))

(declare-fun bs!1829832 () Bool)

(assert (= bs!1829832 (and d!2151929 d!2151423)))

(assert (=> bs!1829832 (not (= lambda!387096 lambda!387026))))

(declare-fun bs!1829833 () Bool)

(assert (= bs!1829833 (and d!2151929 d!2151425)))

(assert (=> bs!1829833 (= lambda!387096 lambda!387031)))

(declare-fun bs!1829834 () Bool)

(assert (= bs!1829834 (and d!2151929 d!2151905)))

(assert (=> bs!1829834 (not (= lambda!387096 lambda!387095))))

(declare-fun bs!1829835 () Bool)

(assert (= bs!1829835 (and d!2151929 d!2151621)))

(assert (=> bs!1829835 (not (= lambda!387096 lambda!387070))))

(declare-fun bs!1829836 () Bool)

(assert (= bs!1829836 (and d!2151929 d!2151729)))

(assert (=> bs!1829836 (= lambda!387096 lambda!387083)))

(declare-fun bs!1829837 () Bool)

(assert (= bs!1829837 (and d!2151929 d!2151771)))

(assert (=> bs!1829837 (= lambda!387096 lambda!387085)))

(declare-fun bs!1829838 () Bool)

(assert (= bs!1829838 (and d!2151929 d!2151599)))

(assert (=> bs!1829838 (= lambda!387096 lambda!387065)))

(declare-fun bs!1829839 () Bool)

(assert (= bs!1829839 (and d!2151929 d!2151593)))

(assert (=> bs!1829839 (= lambda!387096 lambda!387064)))

(declare-fun bs!1829840 () Bool)

(assert (= bs!1829840 (and d!2151929 d!2151655)))

(assert (=> bs!1829840 (= lambda!387096 lambda!387078)))

(declare-fun bs!1829841 () Bool)

(assert (= bs!1829841 (and d!2151929 d!2151825)))

(assert (=> bs!1829841 (= lambda!387096 lambda!387088)))

(declare-fun bs!1829842 () Bool)

(assert (= bs!1829842 (and d!2151929 d!2151675)))

(assert (=> bs!1829842 (= lambda!387096 lambda!387079)))

(declare-fun bs!1829843 () Bool)

(assert (= bs!1829843 (and d!2151929 b!6843348)))

(assert (=> bs!1829843 (not (= lambda!387096 lambda!386978))))

(declare-fun bs!1829844 () Bool)

(assert (= bs!1829844 (and d!2151929 d!2151893)))

(assert (=> bs!1829844 (= lambda!387096 lambda!387094)))

(assert (=> bs!1829833 (not (= lambda!387096 lambda!387032))))

(declare-fun bs!1829845 () Bool)

(assert (= bs!1829845 (and d!2151929 d!2151419)))

(assert (=> bs!1829845 (= lambda!387096 lambda!387023)))

(declare-fun bs!1829846 () Bool)

(assert (= bs!1829846 (and d!2151929 d!2151587)))

(assert (=> bs!1829846 (= lambda!387096 lambda!387060)))

(declare-fun b!6845253 () Bool)

(declare-fun e!4128224 () Regex!16671)

(assert (=> b!6845253 (= e!4128224 (Concat!25516 (h!72636 (exprs!6555 lt!2455687)) (generalisedConcat!2264 (t!380055 (exprs!6555 lt!2455687)))))))

(declare-fun b!6845254 () Bool)

(declare-fun e!4128226 () Bool)

(declare-fun lt!2455733 () Regex!16671)

(assert (=> b!6845254 (= e!4128226 (isConcat!1526 lt!2455733))))

(declare-fun b!6845255 () Bool)

(declare-fun e!4128228 () Regex!16671)

(assert (=> b!6845255 (= e!4128228 (h!72636 (exprs!6555 lt!2455687)))))

(declare-fun b!6845256 () Bool)

(assert (=> b!6845256 (= e!4128228 e!4128224)))

(declare-fun c!1274417 () Bool)

(assert (=> b!6845256 (= c!1274417 ((_ is Cons!66188) (exprs!6555 lt!2455687)))))

(declare-fun b!6845257 () Bool)

(declare-fun e!4128225 () Bool)

(assert (=> b!6845257 (= e!4128225 (isEmptyExpr!2003 lt!2455733))))

(declare-fun b!6845258 () Bool)

(declare-fun e!4128227 () Bool)

(assert (=> b!6845258 (= e!4128227 (isEmpty!38567 (t!380055 (exprs!6555 lt!2455687))))))

(declare-fun e!4128223 () Bool)

(assert (=> d!2151929 e!4128223))

(declare-fun res!2794671 () Bool)

(assert (=> d!2151929 (=> (not res!2794671) (not e!4128223))))

(assert (=> d!2151929 (= res!2794671 (validRegex!8407 lt!2455733))))

(assert (=> d!2151929 (= lt!2455733 e!4128228)))

(declare-fun c!1274415 () Bool)

(assert (=> d!2151929 (= c!1274415 e!4128227)))

(declare-fun res!2794670 () Bool)

(assert (=> d!2151929 (=> (not res!2794670) (not e!4128227))))

(assert (=> d!2151929 (= res!2794670 ((_ is Cons!66188) (exprs!6555 lt!2455687)))))

(assert (=> d!2151929 (forall!15850 (exprs!6555 lt!2455687) lambda!387096)))

(assert (=> d!2151929 (= (generalisedConcat!2264 (exprs!6555 lt!2455687)) lt!2455733)))

(declare-fun b!6845259 () Bool)

(assert (=> b!6845259 (= e!4128224 EmptyExpr!16671)))

(declare-fun b!6845260 () Bool)

(assert (=> b!6845260 (= e!4128223 e!4128225)))

(declare-fun c!1274416 () Bool)

(assert (=> b!6845260 (= c!1274416 (isEmpty!38567 (exprs!6555 lt!2455687)))))

(declare-fun b!6845261 () Bool)

(assert (=> b!6845261 (= e!4128226 (= lt!2455733 (head!13723 (exprs!6555 lt!2455687))))))

(declare-fun b!6845262 () Bool)

(assert (=> b!6845262 (= e!4128225 e!4128226)))

(declare-fun c!1274418 () Bool)

(assert (=> b!6845262 (= c!1274418 (isEmpty!38567 (tail!12802 (exprs!6555 lt!2455687))))))

(assert (= (and d!2151929 res!2794670) b!6845258))

(assert (= (and d!2151929 c!1274415) b!6845255))

(assert (= (and d!2151929 (not c!1274415)) b!6845256))

(assert (= (and b!6845256 c!1274417) b!6845253))

(assert (= (and b!6845256 (not c!1274417)) b!6845259))

(assert (= (and d!2151929 res!2794671) b!6845260))

(assert (= (and b!6845260 c!1274416) b!6845257))

(assert (= (and b!6845260 (not c!1274416)) b!6845262))

(assert (= (and b!6845262 c!1274418) b!6845261))

(assert (= (and b!6845262 (not c!1274418)) b!6845254))

(declare-fun m!7586314 () Bool)

(assert (=> d!2151929 m!7586314))

(declare-fun m!7586316 () Bool)

(assert (=> d!2151929 m!7586316))

(declare-fun m!7586318 () Bool)

(assert (=> b!6845261 m!7586318))

(declare-fun m!7586320 () Bool)

(assert (=> b!6845262 m!7586320))

(assert (=> b!6845262 m!7586320))

(declare-fun m!7586322 () Bool)

(assert (=> b!6845262 m!7586322))

(declare-fun m!7586324 () Bool)

(assert (=> b!6845254 m!7586324))

(declare-fun m!7586326 () Bool)

(assert (=> b!6845257 m!7586326))

(declare-fun m!7586328 () Bool)

(assert (=> b!6845253 m!7586328))

(declare-fun m!7586330 () Bool)

(assert (=> b!6845258 m!7586330))

(declare-fun m!7586332 () Bool)

(assert (=> b!6845260 m!7586332))

(assert (=> bs!1829626 d!2151929))

(declare-fun bm!623427 () Bool)

(declare-fun call!623432 () Bool)

(declare-fun c!1274426 () Bool)

(assert (=> bm!623427 (= call!623432 (nullable!6636 (ite c!1274426 (regOne!33855 (reg!17000 lt!2455564)) (regOne!33854 (reg!17000 lt!2455564)))))))

(declare-fun b!6845301 () Bool)

(declare-fun e!4128263 () Bool)

(declare-fun e!4128262 () Bool)

(assert (=> b!6845301 (= e!4128263 e!4128262)))

(declare-fun res!2794696 () Bool)

(assert (=> b!6845301 (=> res!2794696 e!4128262)))

(assert (=> b!6845301 (= res!2794696 ((_ is Star!16671) (reg!17000 lt!2455564)))))

(declare-fun b!6845302 () Bool)

(declare-fun e!4128260 () Bool)

(declare-fun e!4128264 () Bool)

(assert (=> b!6845302 (= e!4128260 e!4128264)))

(declare-fun res!2794699 () Bool)

(assert (=> b!6845302 (= res!2794699 call!623432)))

(assert (=> b!6845302 (=> res!2794699 e!4128264)))

(declare-fun b!6845303 () Bool)

(assert (=> b!6845303 (= e!4128262 e!4128260)))

(assert (=> b!6845303 (= c!1274426 ((_ is Union!16671) (reg!17000 lt!2455564)))))

(declare-fun b!6845304 () Bool)

(declare-fun e!4128261 () Bool)

(assert (=> b!6845304 (= e!4128260 e!4128261)))

(declare-fun res!2794698 () Bool)

(assert (=> b!6845304 (= res!2794698 call!623432)))

(assert (=> b!6845304 (=> (not res!2794698) (not e!4128261))))

(declare-fun b!6845305 () Bool)

(declare-fun e!4128265 () Bool)

(assert (=> b!6845305 (= e!4128265 e!4128263)))

(declare-fun res!2794697 () Bool)

(assert (=> b!6845305 (=> (not res!2794697) (not e!4128263))))

(assert (=> b!6845305 (= res!2794697 (and (not ((_ is EmptyLang!16671) (reg!17000 lt!2455564))) (not ((_ is ElementMatch!16671) (reg!17000 lt!2455564)))))))

(declare-fun bm!623428 () Bool)

(declare-fun call!623433 () Bool)

(assert (=> bm!623428 (= call!623433 (nullable!6636 (ite c!1274426 (regTwo!33855 (reg!17000 lt!2455564)) (regTwo!33854 (reg!17000 lt!2455564)))))))

(declare-fun d!2151939 () Bool)

(declare-fun res!2794700 () Bool)

(assert (=> d!2151939 (=> res!2794700 e!4128265)))

(assert (=> d!2151939 (= res!2794700 ((_ is EmptyExpr!16671) (reg!17000 lt!2455564)))))

(assert (=> d!2151939 (= (nullableFct!2520 (reg!17000 lt!2455564)) e!4128265)))

(declare-fun b!6845306 () Bool)

(assert (=> b!6845306 (= e!4128261 call!623433)))

(declare-fun b!6845307 () Bool)

(assert (=> b!6845307 (= e!4128264 call!623433)))

(assert (= (and d!2151939 (not res!2794700)) b!6845305))

(assert (= (and b!6845305 res!2794697) b!6845301))

(assert (= (and b!6845301 (not res!2794696)) b!6845303))

(assert (= (and b!6845303 c!1274426) b!6845302))

(assert (= (and b!6845303 (not c!1274426)) b!6845304))

(assert (= (and b!6845302 (not res!2794699)) b!6845307))

(assert (= (and b!6845304 res!2794698) b!6845306))

(assert (= (or b!6845307 b!6845306) bm!623428))

(assert (= (or b!6845302 b!6845304) bm!623427))

(declare-fun m!7586352 () Bool)

(assert (=> bm!623427 m!7586352))

(declare-fun m!7586354 () Bool)

(assert (=> bm!623428 m!7586354))

(assert (=> d!2151583 d!2151939))

(declare-fun b!6845308 () Bool)

(declare-fun e!4128266 () Bool)

(declare-fun e!4128272 () Bool)

(assert (=> b!6845308 (= e!4128266 e!4128272)))

(declare-fun c!1274427 () Bool)

(assert (=> b!6845308 (= c!1274427 ((_ is Star!16671) (ite c!1274223 (regOne!33855 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))) (regOne!33854 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))))))))

(declare-fun b!6845309 () Bool)

(declare-fun e!4128267 () Bool)

(declare-fun call!623434 () Bool)

(assert (=> b!6845309 (= e!4128267 call!623434)))

(declare-fun b!6845310 () Bool)

(declare-fun res!2794701 () Bool)

(declare-fun e!4128271 () Bool)

(assert (=> b!6845310 (=> (not res!2794701) (not e!4128271))))

(declare-fun call!623436 () Bool)

(assert (=> b!6845310 (= res!2794701 call!623436)))

(declare-fun e!4128270 () Bool)

(assert (=> b!6845310 (= e!4128270 e!4128271)))

(declare-fun b!6845311 () Bool)

(assert (=> b!6845311 (= e!4128272 e!4128267)))

(declare-fun res!2794705 () Bool)

(assert (=> b!6845311 (= res!2794705 (not (nullable!6636 (reg!17000 (ite c!1274223 (regOne!33855 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))) (regOne!33854 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))))))))))

(assert (=> b!6845311 (=> (not res!2794705) (not e!4128267))))

(declare-fun b!6845312 () Bool)

(declare-fun e!4128269 () Bool)

(declare-fun e!4128268 () Bool)

(assert (=> b!6845312 (= e!4128269 e!4128268)))

(declare-fun res!2794702 () Bool)

(assert (=> b!6845312 (=> (not res!2794702) (not e!4128268))))

(assert (=> b!6845312 (= res!2794702 call!623436)))

(declare-fun bm!623429 () Bool)

(declare-fun call!623435 () Bool)

(assert (=> bm!623429 (= call!623435 call!623434)))

(declare-fun bm!623430 () Bool)

(declare-fun c!1274428 () Bool)

(assert (=> bm!623430 (= call!623436 (validRegex!8407 (ite c!1274428 (regOne!33855 (ite c!1274223 (regOne!33855 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))) (regOne!33854 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))))) (regOne!33854 (ite c!1274223 (regOne!33855 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))) (regOne!33854 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))))))))))

(declare-fun bm!623431 () Bool)

(assert (=> bm!623431 (= call!623434 (validRegex!8407 (ite c!1274427 (reg!17000 (ite c!1274223 (regOne!33855 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))) (regOne!33854 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))))) (ite c!1274428 (regTwo!33855 (ite c!1274223 (regOne!33855 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))) (regOne!33854 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))))) (regTwo!33854 (ite c!1274223 (regOne!33855 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))) (regOne!33854 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564)))))))))))

(declare-fun d!2151955 () Bool)

(declare-fun res!2794704 () Bool)

(assert (=> d!2151955 (=> res!2794704 e!4128266)))

(assert (=> d!2151955 (= res!2794704 ((_ is ElementMatch!16671) (ite c!1274223 (regOne!33855 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))) (regOne!33854 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))))))))

(assert (=> d!2151955 (= (validRegex!8407 (ite c!1274223 (regOne!33855 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))) (regOne!33854 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))))) e!4128266)))

(declare-fun b!6845313 () Bool)

(assert (=> b!6845313 (= e!4128272 e!4128270)))

(assert (=> b!6845313 (= c!1274428 ((_ is Union!16671) (ite c!1274223 (regOne!33855 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))) (regOne!33854 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))))))))

(declare-fun b!6845314 () Bool)

(assert (=> b!6845314 (= e!4128268 call!623435)))

(declare-fun b!6845315 () Bool)

(assert (=> b!6845315 (= e!4128271 call!623435)))

(declare-fun b!6845316 () Bool)

(declare-fun res!2794703 () Bool)

(assert (=> b!6845316 (=> res!2794703 e!4128269)))

(assert (=> b!6845316 (= res!2794703 (not ((_ is Concat!25516) (ite c!1274223 (regOne!33855 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))) (regOne!33854 (ite c!1274081 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564)))))))))

(assert (=> b!6845316 (= e!4128270 e!4128269)))

(assert (= (and d!2151955 (not res!2794704)) b!6845308))

(assert (= (and b!6845308 c!1274427) b!6845311))

(assert (= (and b!6845308 (not c!1274427)) b!6845313))

(assert (= (and b!6845311 res!2794705) b!6845309))

(assert (= (and b!6845313 c!1274428) b!6845310))

(assert (= (and b!6845313 (not c!1274428)) b!6845316))

(assert (= (and b!6845310 res!2794701) b!6845315))

(assert (= (and b!6845316 (not res!2794703)) b!6845312))

(assert (= (and b!6845312 res!2794702) b!6845314))

(assert (= (or b!6845315 b!6845314) bm!623429))

(assert (= (or b!6845310 b!6845312) bm!623430))

(assert (= (or b!6845309 bm!623429) bm!623431))

(declare-fun m!7586356 () Bool)

(assert (=> b!6845311 m!7586356))

(declare-fun m!7586358 () Bool)

(assert (=> bm!623430 m!7586358))

(declare-fun m!7586360 () Bool)

(assert (=> bm!623431 m!7586360))

(assert (=> bm!623285 d!2151955))

(declare-fun bs!1829865 () Bool)

(declare-fun d!2151959 () Bool)

(assert (= bs!1829865 (and d!2151959 d!2151609)))

(declare-fun lambda!387098 () Int)

(assert (=> bs!1829865 (= (= lambda!386979 lambda!387019) (= lambda!387098 lambda!387066))))

(declare-fun bs!1829866 () Bool)

(assert (= bs!1829866 (and d!2151959 d!2151403)))

(assert (=> bs!1829866 (not (= lambda!387098 lambda!387019))))

(declare-fun bs!1829867 () Bool)

(assert (= bs!1829867 (and d!2151959 d!2151849)))

(assert (=> bs!1829867 (= (= lambda!386979 lambda!387069) (= lambda!387098 lambda!387091))))

(declare-fun bs!1829868 () Bool)

(assert (= bs!1829868 (and d!2151959 d!2151611)))

(assert (=> bs!1829868 (not (= lambda!387098 lambda!387069))))

(declare-fun bs!1829869 () Bool)

(assert (= bs!1829869 (and d!2151959 d!2151401)))

(assert (=> bs!1829869 (= lambda!387098 lambda!387016)))

(declare-fun bs!1829870 () Bool)

(assert (= bs!1829870 (and d!2151959 b!6843333)))

(assert (=> bs!1829870 (not (= lambda!387098 lambda!386979))))

(assert (=> d!2151959 true))

(assert (=> d!2151959 (< (dynLambda!26447 order!27645 lambda!386979) (dynLambda!26447 order!27645 lambda!387098))))

(assert (=> d!2151959 (= (exists!2768 (t!380056 zl!343) lambda!386979) (not (forall!15849 (t!380056 zl!343) lambda!387098)))))

(declare-fun bs!1829871 () Bool)

(assert (= bs!1829871 d!2151959))

(declare-fun m!7586368 () Bool)

(assert (=> bs!1829871 m!7586368))

(assert (=> d!2151615 d!2151959))

(declare-fun d!2151961 () Bool)

(declare-fun res!2794709 () Bool)

(declare-fun e!4128278 () Bool)

(assert (=> d!2151961 (=> res!2794709 e!4128278)))

(assert (=> d!2151961 (= res!2794709 ((_ is Nil!66189) zl!343))))

(assert (=> d!2151961 (= (forall!15849 zl!343 lambda!387066) e!4128278)))

(declare-fun b!6845327 () Bool)

(declare-fun e!4128279 () Bool)

(assert (=> b!6845327 (= e!4128278 e!4128279)))

(declare-fun res!2794710 () Bool)

(assert (=> b!6845327 (=> (not res!2794710) (not e!4128279))))

(assert (=> b!6845327 (= res!2794710 (dynLambda!26448 lambda!387066 (h!72637 zl!343)))))

(declare-fun b!6845328 () Bool)

(assert (=> b!6845328 (= e!4128279 (forall!15849 (t!380056 zl!343) lambda!387066))))

(assert (= (and d!2151961 (not res!2794709)) b!6845327))

(assert (= (and b!6845327 res!2794710) b!6845328))

(declare-fun b_lambda!258237 () Bool)

(assert (=> (not b_lambda!258237) (not b!6845327)))

(declare-fun m!7586374 () Bool)

(assert (=> b!6845327 m!7586374))

(declare-fun m!7586376 () Bool)

(assert (=> b!6845328 m!7586376))

(assert (=> d!2151609 d!2151961))

(declare-fun d!2151967 () Bool)

(assert (=> d!2151967 (= (isEmpty!38567 (exprs!6555 (h!72637 zl!343))) ((_ is Nil!66188) (exprs!6555 (h!72637 zl!343))))))

(assert (=> b!6844395 d!2151967))

(declare-fun bm!623439 () Bool)

(declare-fun call!623444 () Bool)

(declare-fun c!1274436 () Bool)

(assert (=> bm!623439 (= call!623444 (nullable!6636 (ite c!1274436 (regOne!33855 lt!2455564) (regOne!33854 lt!2455564))))))

(declare-fun b!6845338 () Bool)

(declare-fun e!4128290 () Bool)

(declare-fun e!4128289 () Bool)

(assert (=> b!6845338 (= e!4128290 e!4128289)))

(declare-fun res!2794716 () Bool)

(assert (=> b!6845338 (=> res!2794716 e!4128289)))

(assert (=> b!6845338 (= res!2794716 ((_ is Star!16671) lt!2455564))))

(declare-fun b!6845339 () Bool)

(declare-fun e!4128287 () Bool)

(declare-fun e!4128291 () Bool)

(assert (=> b!6845339 (= e!4128287 e!4128291)))

(declare-fun res!2794719 () Bool)

(assert (=> b!6845339 (= res!2794719 call!623444)))

(assert (=> b!6845339 (=> res!2794719 e!4128291)))

(declare-fun b!6845340 () Bool)

(assert (=> b!6845340 (= e!4128289 e!4128287)))

(assert (=> b!6845340 (= c!1274436 ((_ is Union!16671) lt!2455564))))

(declare-fun b!6845341 () Bool)

(declare-fun e!4128288 () Bool)

(assert (=> b!6845341 (= e!4128287 e!4128288)))

(declare-fun res!2794718 () Bool)

(assert (=> b!6845341 (= res!2794718 call!623444)))

(assert (=> b!6845341 (=> (not res!2794718) (not e!4128288))))

(declare-fun b!6845342 () Bool)

(declare-fun e!4128292 () Bool)

(assert (=> b!6845342 (= e!4128292 e!4128290)))

(declare-fun res!2794717 () Bool)

(assert (=> b!6845342 (=> (not res!2794717) (not e!4128290))))

(assert (=> b!6845342 (= res!2794717 (and (not ((_ is EmptyLang!16671) lt!2455564)) (not ((_ is ElementMatch!16671) lt!2455564))))))

(declare-fun bm!623440 () Bool)

(declare-fun call!623445 () Bool)

(assert (=> bm!623440 (= call!623445 (nullable!6636 (ite c!1274436 (regTwo!33855 lt!2455564) (regTwo!33854 lt!2455564))))))

(declare-fun d!2151969 () Bool)

(declare-fun res!2794720 () Bool)

(assert (=> d!2151969 (=> res!2794720 e!4128292)))

(assert (=> d!2151969 (= res!2794720 ((_ is EmptyExpr!16671) lt!2455564))))

(assert (=> d!2151969 (= (nullableFct!2520 lt!2455564) e!4128292)))

(declare-fun b!6845343 () Bool)

(assert (=> b!6845343 (= e!4128288 call!623445)))

(declare-fun b!6845344 () Bool)

(assert (=> b!6845344 (= e!4128291 call!623445)))

(assert (= (and d!2151969 (not res!2794720)) b!6845342))

(assert (= (and b!6845342 res!2794717) b!6845338))

(assert (= (and b!6845338 (not res!2794716)) b!6845340))

(assert (= (and b!6845340 c!1274436) b!6845339))

(assert (= (and b!6845340 (not c!1274436)) b!6845341))

(assert (= (and b!6845339 (not res!2794719)) b!6845344))

(assert (= (and b!6845341 res!2794718) b!6845343))

(assert (= (or b!6845344 b!6845343) bm!623440))

(assert (= (or b!6845339 b!6845341) bm!623439))

(declare-fun m!7586384 () Bool)

(assert (=> bm!623439 m!7586384))

(declare-fun m!7586386 () Bool)

(assert (=> bm!623440 m!7586386))

(assert (=> d!2151627 d!2151969))

(assert (=> d!2151601 d!2151603))

(assert (=> d!2151601 d!2151667))

(declare-fun b!6845354 () Bool)

(declare-fun e!4128305 () Bool)

(assert (=> b!6845354 (= e!4128305 (matchR!8854 (derivativeStep!5319 (derivativeStep!5319 lt!2455637 (head!13721 s!2326)) (head!13721 (tail!12800 s!2326))) (tail!12800 (tail!12800 s!2326))))))

(declare-fun b!6845355 () Bool)

(declare-fun e!4128303 () Bool)

(assert (=> b!6845355 (= e!4128303 (= (head!13721 (tail!12800 s!2326)) (c!1273977 (derivativeStep!5319 lt!2455637 (head!13721 s!2326)))))))

(declare-fun b!6845356 () Bool)

(declare-fun e!4128306 () Bool)

(declare-fun e!4128302 () Bool)

(assert (=> b!6845356 (= e!4128306 e!4128302)))

(declare-fun c!1274440 () Bool)

(assert (=> b!6845356 (= c!1274440 ((_ is EmptyLang!16671) (derivativeStep!5319 lt!2455637 (head!13721 s!2326))))))

(declare-fun b!6845357 () Bool)

(declare-fun lt!2455736 () Bool)

(assert (=> b!6845357 (= e!4128302 (not lt!2455736))))

(declare-fun b!6845358 () Bool)

(declare-fun e!4128300 () Bool)

(declare-fun e!4128304 () Bool)

(assert (=> b!6845358 (= e!4128300 e!4128304)))

(declare-fun res!2794726 () Bool)

(assert (=> b!6845358 (=> (not res!2794726) (not e!4128304))))

(assert (=> b!6845358 (= res!2794726 (not lt!2455736))))

(declare-fun bm!623444 () Bool)

(declare-fun call!623449 () Bool)

(assert (=> bm!623444 (= call!623449 (isEmpty!38565 (tail!12800 s!2326)))))

(declare-fun b!6845359 () Bool)

(declare-fun e!4128301 () Bool)

(assert (=> b!6845359 (= e!4128304 e!4128301)))

(declare-fun res!2794728 () Bool)

(assert (=> b!6845359 (=> res!2794728 e!4128301)))

(assert (=> b!6845359 (= res!2794728 call!623449)))

(declare-fun b!6845360 () Bool)

(assert (=> b!6845360 (= e!4128306 (= lt!2455736 call!623449))))

(declare-fun b!6845361 () Bool)

(declare-fun res!2794730 () Bool)

(assert (=> b!6845361 (=> res!2794730 e!4128301)))

(assert (=> b!6845361 (= res!2794730 (not (isEmpty!38565 (tail!12800 (tail!12800 s!2326)))))))

(declare-fun b!6845362 () Bool)

(declare-fun res!2794733 () Bool)

(assert (=> b!6845362 (=> (not res!2794733) (not e!4128303))))

(assert (=> b!6845362 (= res!2794733 (not call!623449))))

(declare-fun d!2151973 () Bool)

(assert (=> d!2151973 e!4128306))

(declare-fun c!1274439 () Bool)

(assert (=> d!2151973 (= c!1274439 ((_ is EmptyExpr!16671) (derivativeStep!5319 lt!2455637 (head!13721 s!2326))))))

(assert (=> d!2151973 (= lt!2455736 e!4128305)))

(declare-fun c!1274441 () Bool)

(assert (=> d!2151973 (= c!1274441 (isEmpty!38565 (tail!12800 s!2326)))))

(assert (=> d!2151973 (validRegex!8407 (derivativeStep!5319 lt!2455637 (head!13721 s!2326)))))

(assert (=> d!2151973 (= (matchR!8854 (derivativeStep!5319 lt!2455637 (head!13721 s!2326)) (tail!12800 s!2326)) lt!2455736)))

(declare-fun b!6845363 () Bool)

(assert (=> b!6845363 (= e!4128301 (not (= (head!13721 (tail!12800 s!2326)) (c!1273977 (derivativeStep!5319 lt!2455637 (head!13721 s!2326))))))))

(declare-fun b!6845364 () Bool)

(declare-fun res!2794727 () Bool)

(assert (=> b!6845364 (=> res!2794727 e!4128300)))

(assert (=> b!6845364 (= res!2794727 e!4128303)))

(declare-fun res!2794729 () Bool)

(assert (=> b!6845364 (=> (not res!2794729) (not e!4128303))))

(assert (=> b!6845364 (= res!2794729 lt!2455736)))

(declare-fun b!6845365 () Bool)

(assert (=> b!6845365 (= e!4128305 (nullable!6636 (derivativeStep!5319 lt!2455637 (head!13721 s!2326))))))

(declare-fun b!6845366 () Bool)

(declare-fun res!2794731 () Bool)

(assert (=> b!6845366 (=> (not res!2794731) (not e!4128303))))

(assert (=> b!6845366 (= res!2794731 (isEmpty!38565 (tail!12800 (tail!12800 s!2326))))))

(declare-fun b!6845367 () Bool)

(declare-fun res!2794732 () Bool)

(assert (=> b!6845367 (=> res!2794732 e!4128300)))

(assert (=> b!6845367 (= res!2794732 (not ((_ is ElementMatch!16671) (derivativeStep!5319 lt!2455637 (head!13721 s!2326)))))))

(assert (=> b!6845367 (= e!4128302 e!4128300)))

(assert (= (and d!2151973 c!1274441) b!6845365))

(assert (= (and d!2151973 (not c!1274441)) b!6845354))

(assert (= (and d!2151973 c!1274439) b!6845360))

(assert (= (and d!2151973 (not c!1274439)) b!6845356))

(assert (= (and b!6845356 c!1274440) b!6845357))

(assert (= (and b!6845356 (not c!1274440)) b!6845367))

(assert (= (and b!6845367 (not res!2794732)) b!6845364))

(assert (= (and b!6845364 res!2794729) b!6845362))

(assert (= (and b!6845362 res!2794733) b!6845366))

(assert (= (and b!6845366 res!2794731) b!6845355))

(assert (= (and b!6845364 (not res!2794727)) b!6845358))

(assert (= (and b!6845358 res!2794726) b!6845359))

(assert (= (and b!6845359 (not res!2794728)) b!6845361))

(assert (= (and b!6845361 (not res!2794730)) b!6845363))

(assert (= (or b!6845360 b!6845359 b!6845362) bm!623444))

(assert (=> bm!623444 m!7585000))

(assert (=> bm!623444 m!7585002))

(assert (=> d!2151973 m!7585000))

(assert (=> d!2151973 m!7585002))

(assert (=> d!2151973 m!7585556))

(declare-fun m!7586394 () Bool)

(assert (=> d!2151973 m!7586394))

(assert (=> b!6845355 m!7585000))

(assert (=> b!6845355 m!7585698))

(assert (=> b!6845366 m!7585000))

(assert (=> b!6845366 m!7585700))

(assert (=> b!6845366 m!7585700))

(assert (=> b!6845366 m!7585702))

(assert (=> b!6845365 m!7585556))

(declare-fun m!7586396 () Bool)

(assert (=> b!6845365 m!7586396))

(assert (=> b!6845363 m!7585000))

(assert (=> b!6845363 m!7585698))

(assert (=> b!6845354 m!7585000))

(assert (=> b!6845354 m!7585698))

(assert (=> b!6845354 m!7585556))

(assert (=> b!6845354 m!7585698))

(declare-fun m!7586400 () Bool)

(assert (=> b!6845354 m!7586400))

(assert (=> b!6845354 m!7585000))

(assert (=> b!6845354 m!7585700))

(assert (=> b!6845354 m!7586400))

(assert (=> b!6845354 m!7585700))

(declare-fun m!7586406 () Bool)

(assert (=> b!6845354 m!7586406))

(assert (=> b!6845361 m!7585000))

(assert (=> b!6845361 m!7585700))

(assert (=> b!6845361 m!7585700))

(assert (=> b!6845361 m!7585702))

(assert (=> b!6844419 d!2151973))

(declare-fun d!2151979 () Bool)

(declare-fun lt!2455738 () Regex!16671)

(assert (=> d!2151979 (validRegex!8407 lt!2455738)))

(declare-fun e!4128325 () Regex!16671)

(assert (=> d!2151979 (= lt!2455738 e!4128325)))

(declare-fun c!1274451 () Bool)

(assert (=> d!2151979 (= c!1274451 (or ((_ is EmptyExpr!16671) lt!2455637) ((_ is EmptyLang!16671) lt!2455637)))))

(assert (=> d!2151979 (validRegex!8407 lt!2455637)))

(assert (=> d!2151979 (= (derivativeStep!5319 lt!2455637 (head!13721 s!2326)) lt!2455738)))

(declare-fun b!6845391 () Bool)

(declare-fun e!4128323 () Regex!16671)

(declare-fun call!623456 () Regex!16671)

(assert (=> b!6845391 (= e!4128323 (Concat!25516 call!623456 lt!2455637))))

(declare-fun call!623455 () Regex!16671)

(declare-fun c!1274447 () Bool)

(declare-fun bm!623449 () Bool)

(declare-fun c!1274448 () Bool)

(assert (=> bm!623449 (= call!623455 (derivativeStep!5319 (ite c!1274447 (regTwo!33855 lt!2455637) (ite c!1274448 (regTwo!33854 lt!2455637) (regOne!33854 lt!2455637))) (head!13721 s!2326)))))

(declare-fun b!6845392 () Bool)

(declare-fun e!4128324 () Regex!16671)

(declare-fun call!623457 () Regex!16671)

(assert (=> b!6845392 (= e!4128324 (Union!16671 (Concat!25516 call!623457 (regTwo!33854 lt!2455637)) EmptyLang!16671))))

(declare-fun bm!623450 () Bool)

(declare-fun call!623454 () Regex!16671)

(assert (=> bm!623450 (= call!623456 call!623454)))

(declare-fun b!6845393 () Bool)

(declare-fun e!4128322 () Regex!16671)

(assert (=> b!6845393 (= e!4128322 (Union!16671 call!623454 call!623455))))

(declare-fun b!6845394 () Bool)

(declare-fun e!4128321 () Regex!16671)

(assert (=> b!6845394 (= e!4128325 e!4128321)))

(declare-fun c!1274449 () Bool)

(assert (=> b!6845394 (= c!1274449 ((_ is ElementMatch!16671) lt!2455637))))

(declare-fun c!1274450 () Bool)

(declare-fun bm!623451 () Bool)

(assert (=> bm!623451 (= call!623454 (derivativeStep!5319 (ite c!1274447 (regOne!33855 lt!2455637) (ite c!1274450 (reg!17000 lt!2455637) (regOne!33854 lt!2455637))) (head!13721 s!2326)))))

(declare-fun b!6845395 () Bool)

(assert (=> b!6845395 (= e!4128325 EmptyLang!16671)))

(declare-fun b!6845396 () Bool)

(assert (=> b!6845396 (= c!1274448 (nullable!6636 (regOne!33854 lt!2455637)))))

(assert (=> b!6845396 (= e!4128323 e!4128324)))

(declare-fun b!6845397 () Bool)

(assert (=> b!6845397 (= e!4128324 (Union!16671 (Concat!25516 call!623456 (regTwo!33854 lt!2455637)) call!623457))))

(declare-fun b!6845398 () Bool)

(assert (=> b!6845398 (= e!4128322 e!4128323)))

(assert (=> b!6845398 (= c!1274450 ((_ is Star!16671) lt!2455637))))

(declare-fun b!6845399 () Bool)

(assert (=> b!6845399 (= e!4128321 (ite (= (head!13721 s!2326) (c!1273977 lt!2455637)) EmptyExpr!16671 EmptyLang!16671))))

(declare-fun b!6845400 () Bool)

(assert (=> b!6845400 (= c!1274447 ((_ is Union!16671) lt!2455637))))

(assert (=> b!6845400 (= e!4128321 e!4128322)))

(declare-fun bm!623452 () Bool)

(assert (=> bm!623452 (= call!623457 call!623455)))

(assert (= (and d!2151979 c!1274451) b!6845395))

(assert (= (and d!2151979 (not c!1274451)) b!6845394))

(assert (= (and b!6845394 c!1274449) b!6845399))

(assert (= (and b!6845394 (not c!1274449)) b!6845400))

(assert (= (and b!6845400 c!1274447) b!6845393))

(assert (= (and b!6845400 (not c!1274447)) b!6845398))

(assert (= (and b!6845398 c!1274450) b!6845391))

(assert (= (and b!6845398 (not c!1274450)) b!6845396))

(assert (= (and b!6845396 c!1274448) b!6845397))

(assert (= (and b!6845396 (not c!1274448)) b!6845392))

(assert (= (or b!6845397 b!6845392) bm!623452))

(assert (= (or b!6845391 b!6845397) bm!623450))

(assert (= (or b!6845393 bm!623452) bm!623449))

(assert (= (or b!6845393 bm!623450) bm!623451))

(declare-fun m!7586408 () Bool)

(assert (=> d!2151979 m!7586408))

(assert (=> d!2151979 m!7585164))

(assert (=> bm!623449 m!7584998))

(declare-fun m!7586410 () Bool)

(assert (=> bm!623449 m!7586410))

(assert (=> bm!623451 m!7584998))

(declare-fun m!7586412 () Bool)

(assert (=> bm!623451 m!7586412))

(declare-fun m!7586416 () Bool)

(assert (=> b!6845396 m!7586416))

(assert (=> b!6844419 d!2151979))

(assert (=> b!6844419 d!2151577))

(assert (=> b!6844419 d!2151581))

(assert (=> bm!623291 d!2151603))

(assert (=> d!2151607 d!2151619))

(declare-fun d!2151981 () Bool)

(declare-fun res!2794747 () Bool)

(declare-fun e!4128326 () Bool)

(assert (=> d!2151981 (=> res!2794747 e!4128326)))

(assert (=> d!2151981 (= res!2794747 ((_ is Nil!66189) (t!380056 zl!343)))))

(assert (=> d!2151981 (= (forall!15849 (t!380056 zl!343) lambda!387016) e!4128326)))

(declare-fun b!6845401 () Bool)

(declare-fun e!4128327 () Bool)

(assert (=> b!6845401 (= e!4128326 e!4128327)))

(declare-fun res!2794748 () Bool)

(assert (=> b!6845401 (=> (not res!2794748) (not e!4128327))))

(assert (=> b!6845401 (= res!2794748 (dynLambda!26448 lambda!387016 (h!72637 (t!380056 zl!343))))))

(declare-fun b!6845402 () Bool)

(assert (=> b!6845402 (= e!4128327 (forall!15849 (t!380056 (t!380056 zl!343)) lambda!387016))))

(assert (= (and d!2151981 (not res!2794747)) b!6845401))

(assert (= (and b!6845401 res!2794748) b!6845402))

(declare-fun b_lambda!258239 () Bool)

(assert (=> (not b_lambda!258239) (not b!6845401)))

(declare-fun m!7586424 () Bool)

(assert (=> b!6845401 m!7586424))

(declare-fun m!7586426 () Bool)

(assert (=> b!6845402 m!7586426))

(assert (=> b!6844522 d!2151981))

(declare-fun d!2151985 () Bool)

(assert (=> d!2151985 (= (isEmpty!38567 (exprs!6555 lt!2455629)) ((_ is Nil!66188) (exprs!6555 lt!2455629)))))

(assert (=> b!6844416 d!2151985))

(declare-fun d!2151987 () Bool)

(declare-fun lt!2455740 () Bool)

(assert (=> d!2151987 (= lt!2455740 (select (content!12977 (t!380056 zl!343)) lt!2455629))))

(declare-fun e!4128333 () Bool)

(assert (=> d!2151987 (= lt!2455740 e!4128333)))

(declare-fun res!2794749 () Bool)

(assert (=> d!2151987 (=> (not res!2794749) (not e!4128333))))

(assert (=> d!2151987 (= res!2794749 ((_ is Cons!66189) (t!380056 zl!343)))))

(assert (=> d!2151987 (= (contains!20321 (t!380056 zl!343) lt!2455629) lt!2455740)))

(declare-fun b!6845413 () Bool)

(declare-fun e!4128334 () Bool)

(assert (=> b!6845413 (= e!4128333 e!4128334)))

(declare-fun res!2794750 () Bool)

(assert (=> b!6845413 (=> res!2794750 e!4128334)))

(assert (=> b!6845413 (= res!2794750 (= (h!72637 (t!380056 zl!343)) lt!2455629))))

(declare-fun b!6845414 () Bool)

(assert (=> b!6845414 (= e!4128334 (contains!20321 (t!380056 (t!380056 zl!343)) lt!2455629))))

(assert (= (and d!2151987 res!2794749) b!6845413))

(assert (= (and b!6845413 (not res!2794750)) b!6845414))

(assert (=> d!2151987 m!7585726))

(declare-fun m!7586428 () Bool)

(assert (=> d!2151987 m!7586428))

(declare-fun m!7586430 () Bool)

(assert (=> b!6845414 m!7586430))

(assert (=> b!6844565 d!2151987))

(declare-fun d!2151989 () Bool)

(assert (=> d!2151989 true))

(assert (=> d!2151989 true))

(declare-fun res!2794753 () Bool)

(assert (=> d!2151989 (= (choose!51041 (ite c!1274047 lambda!387012 lambda!387013)) res!2794753)))

(assert (=> d!2151677 d!2151989))

(assert (=> b!6844426 d!2151579))

(assert (=> b!6844426 d!2151581))

(declare-fun bs!1829872 () Bool)

(declare-fun b!6845429 () Bool)

(assert (= bs!1829872 (and b!6845429 b!6843694)))

(declare-fun lambda!387099 () Int)

(assert (=> bs!1829872 (not (= lambda!387099 lambda!387013))))

(declare-fun bs!1829873 () Bool)

(assert (= bs!1829873 (and b!6845429 b!6843696)))

(assert (=> bs!1829873 (= (and (= (reg!17000 (regOne!33855 (regOne!33855 r!7292))) (reg!17000 r!7292)) (= (regOne!33855 (regOne!33855 r!7292)) r!7292)) (= lambda!387099 lambda!387012))))

(declare-fun bs!1829874 () Bool)

(assert (= bs!1829874 (and b!6845429 b!6845119)))

(assert (=> bs!1829874 (= (and (= (reg!17000 (regOne!33855 (regOne!33855 r!7292))) (reg!17000 (regTwo!33855 (regOne!33855 r!7292)))) (= (regOne!33855 (regOne!33855 r!7292)) (regTwo!33855 (regOne!33855 r!7292)))) (= lambda!387099 lambda!387092))))

(declare-fun bs!1829875 () Bool)

(assert (= bs!1829875 (and b!6845429 b!6844510)))

(assert (=> bs!1829875 (= (and (= (reg!17000 (regOne!33855 (regOne!33855 r!7292))) (reg!17000 (regOne!33855 r!7292))) (= (regOne!33855 (regOne!33855 r!7292)) (regOne!33855 r!7292))) (= lambda!387099 lambda!387074))))

(declare-fun bs!1829876 () Bool)

(assert (= bs!1829876 (and b!6845429 b!6844353)))

(assert (=> bs!1829876 (not (= lambda!387099 lambda!387059))))

(declare-fun bs!1829877 () Bool)

(assert (= bs!1829877 (and b!6845429 b!6845117)))

(assert (=> bs!1829877 (not (= lambda!387099 lambda!387093))))

(declare-fun bs!1829878 () Bool)

(assert (= bs!1829878 (and b!6845429 b!6844355)))

(assert (=> bs!1829878 (= (and (= (reg!17000 (regOne!33855 (regOne!33855 r!7292))) (reg!17000 (regTwo!33855 r!7292))) (= (regOne!33855 (regOne!33855 r!7292)) (regTwo!33855 r!7292))) (= lambda!387099 lambda!387058))))

(declare-fun bs!1829879 () Bool)

(assert (= bs!1829879 (and b!6845429 b!6844508)))

(assert (=> bs!1829879 (not (= lambda!387099 lambda!387075))))

(assert (=> b!6845429 true))

(assert (=> b!6845429 true))

(declare-fun bs!1829886 () Bool)

(declare-fun b!6845427 () Bool)

(assert (= bs!1829886 (and b!6845427 b!6843694)))

(declare-fun lambda!387101 () Int)

(assert (=> bs!1829886 (= (and (= (regOne!33854 (regOne!33855 (regOne!33855 r!7292))) (regOne!33854 r!7292)) (= (regTwo!33854 (regOne!33855 (regOne!33855 r!7292))) (regTwo!33854 r!7292))) (= lambda!387101 lambda!387013))))

(declare-fun bs!1829889 () Bool)

(assert (= bs!1829889 (and b!6845427 b!6843696)))

(assert (=> bs!1829889 (not (= lambda!387101 lambda!387012))))

(declare-fun bs!1829891 () Bool)

(assert (= bs!1829891 (and b!6845427 b!6845119)))

(assert (=> bs!1829891 (not (= lambda!387101 lambda!387092))))

(declare-fun bs!1829894 () Bool)

(assert (= bs!1829894 (and b!6845427 b!6844510)))

(assert (=> bs!1829894 (not (= lambda!387101 lambda!387074))))

(declare-fun bs!1829897 () Bool)

(assert (= bs!1829897 (and b!6845427 b!6845429)))

(assert (=> bs!1829897 (not (= lambda!387101 lambda!387099))))

(declare-fun bs!1829899 () Bool)

(assert (= bs!1829899 (and b!6845427 b!6844353)))

(assert (=> bs!1829899 (= (and (= (regOne!33854 (regOne!33855 (regOne!33855 r!7292))) (regOne!33854 (regTwo!33855 r!7292))) (= (regTwo!33854 (regOne!33855 (regOne!33855 r!7292))) (regTwo!33854 (regTwo!33855 r!7292)))) (= lambda!387101 lambda!387059))))

(declare-fun bs!1829902 () Bool)

(assert (= bs!1829902 (and b!6845427 b!6845117)))

(assert (=> bs!1829902 (= (and (= (regOne!33854 (regOne!33855 (regOne!33855 r!7292))) (regOne!33854 (regTwo!33855 (regOne!33855 r!7292)))) (= (regTwo!33854 (regOne!33855 (regOne!33855 r!7292))) (regTwo!33854 (regTwo!33855 (regOne!33855 r!7292))))) (= lambda!387101 lambda!387093))))

(declare-fun bs!1829904 () Bool)

(assert (= bs!1829904 (and b!6845427 b!6844355)))

(assert (=> bs!1829904 (not (= lambda!387101 lambda!387058))))

(declare-fun bs!1829906 () Bool)

(assert (= bs!1829906 (and b!6845427 b!6844508)))

(assert (=> bs!1829906 (= (and (= (regOne!33854 (regOne!33855 (regOne!33855 r!7292))) (regOne!33854 (regOne!33855 r!7292))) (= (regTwo!33854 (regOne!33855 (regOne!33855 r!7292))) (regTwo!33854 (regOne!33855 r!7292)))) (= lambda!387101 lambda!387075))))

(assert (=> b!6845427 true))

(assert (=> b!6845427 true))

(declare-fun b!6845425 () Bool)

(declare-fun e!4128345 () Bool)

(declare-fun call!623467 () Bool)

(assert (=> b!6845425 (= e!4128345 call!623467)))

(declare-fun b!6845426 () Bool)

(declare-fun e!4128340 () Bool)

(declare-fun e!4128342 () Bool)

(assert (=> b!6845426 (= e!4128340 e!4128342)))

(declare-fun c!1274462 () Bool)

(assert (=> b!6845426 (= c!1274462 ((_ is Star!16671) (regOne!33855 (regOne!33855 r!7292))))))

(declare-fun bm!623462 () Bool)

(assert (=> bm!623462 (= call!623467 (isEmpty!38565 s!2326))))

(declare-fun call!623466 () Bool)

(assert (=> b!6845427 (= e!4128342 call!623466)))

(declare-fun b!6845428 () Bool)

(declare-fun e!4128346 () Bool)

(assert (=> b!6845428 (= e!4128346 (= s!2326 (Cons!66190 (c!1273977 (regOne!33855 (regOne!33855 r!7292))) Nil!66190)))))

(declare-fun e!4128341 () Bool)

(assert (=> b!6845429 (= e!4128341 call!623466)))

(declare-fun b!6845430 () Bool)

(declare-fun c!1274464 () Bool)

(assert (=> b!6845430 (= c!1274464 ((_ is Union!16671) (regOne!33855 (regOne!33855 r!7292))))))

(assert (=> b!6845430 (= e!4128346 e!4128340)))

(declare-fun d!2151993 () Bool)

(declare-fun c!1274463 () Bool)

(assert (=> d!2151993 (= c!1274463 ((_ is EmptyExpr!16671) (regOne!33855 (regOne!33855 r!7292))))))

(assert (=> d!2151993 (= (matchRSpec!3772 (regOne!33855 (regOne!33855 r!7292)) s!2326) e!4128345)))

(declare-fun bm!623461 () Bool)

(assert (=> bm!623461 (= call!623466 (Exists!3735 (ite c!1274462 lambda!387099 lambda!387101)))))

(declare-fun b!6845431 () Bool)

(declare-fun res!2794756 () Bool)

(assert (=> b!6845431 (=> res!2794756 e!4128341)))

(assert (=> b!6845431 (= res!2794756 call!623467)))

(assert (=> b!6845431 (= e!4128342 e!4128341)))

(declare-fun b!6845432 () Bool)

(declare-fun c!1274465 () Bool)

(assert (=> b!6845432 (= c!1274465 ((_ is ElementMatch!16671) (regOne!33855 (regOne!33855 r!7292))))))

(declare-fun e!4128343 () Bool)

(assert (=> b!6845432 (= e!4128343 e!4128346)))

(declare-fun b!6845433 () Bool)

(assert (=> b!6845433 (= e!4128345 e!4128343)))

(declare-fun res!2794754 () Bool)

(assert (=> b!6845433 (= res!2794754 (not ((_ is EmptyLang!16671) (regOne!33855 (regOne!33855 r!7292)))))))

(assert (=> b!6845433 (=> (not res!2794754) (not e!4128343))))

(declare-fun b!6845434 () Bool)

(declare-fun e!4128344 () Bool)

(assert (=> b!6845434 (= e!4128340 e!4128344)))

(declare-fun res!2794755 () Bool)

(assert (=> b!6845434 (= res!2794755 (matchRSpec!3772 (regOne!33855 (regOne!33855 (regOne!33855 r!7292))) s!2326))))

(assert (=> b!6845434 (=> res!2794755 e!4128344)))

(declare-fun b!6845435 () Bool)

(assert (=> b!6845435 (= e!4128344 (matchRSpec!3772 (regTwo!33855 (regOne!33855 (regOne!33855 r!7292))) s!2326))))

(assert (= (and d!2151993 c!1274463) b!6845425))

(assert (= (and d!2151993 (not c!1274463)) b!6845433))

(assert (= (and b!6845433 res!2794754) b!6845432))

(assert (= (and b!6845432 c!1274465) b!6845428))

(assert (= (and b!6845432 (not c!1274465)) b!6845430))

(assert (= (and b!6845430 c!1274464) b!6845434))

(assert (= (and b!6845430 (not c!1274464)) b!6845426))

(assert (= (and b!6845434 (not res!2794755)) b!6845435))

(assert (= (and b!6845426 c!1274462) b!6845431))

(assert (= (and b!6845426 (not c!1274462)) b!6845427))

(assert (= (and b!6845431 (not res!2794756)) b!6845429))

(assert (= (or b!6845429 b!6845427) bm!623461))

(assert (= (or b!6845425 b!6845431) bm!623462))

(assert (=> bm!623462 m!7584996))

(declare-fun m!7586470 () Bool)

(assert (=> bm!623461 m!7586470))

(declare-fun m!7586476 () Bool)

(assert (=> b!6845434 m!7586476))

(declare-fun m!7586480 () Bool)

(assert (=> b!6845435 m!7586480))

(assert (=> b!6844515 d!2151993))

(declare-fun d!2152001 () Bool)

(assert (=> d!2152001 (= (Exists!3735 (ite c!1274184 lambda!387058 lambda!387059)) (choose!51041 (ite c!1274184 lambda!387058 lambda!387059)))))

(declare-fun bs!1829907 () Bool)

(assert (= bs!1829907 d!2152001))

(declare-fun m!7586484 () Bool)

(assert (=> bs!1829907 m!7586484))

(assert (=> bm!623278 d!2152001))

(declare-fun b!6845462 () Bool)

(declare-fun e!4128362 () Bool)

(declare-fun e!4128368 () Bool)

(assert (=> b!6845462 (= e!4128362 e!4128368)))

(declare-fun c!1274473 () Bool)

(assert (=> b!6845462 (= c!1274473 ((_ is Star!16671) (ite c!1274263 (reg!17000 lt!2455637) (ite c!1274264 (regTwo!33855 lt!2455637) (regTwo!33854 lt!2455637)))))))

(declare-fun b!6845463 () Bool)

(declare-fun e!4128363 () Bool)

(declare-fun call!623469 () Bool)

(assert (=> b!6845463 (= e!4128363 call!623469)))

(declare-fun b!6845464 () Bool)

(declare-fun res!2794769 () Bool)

(declare-fun e!4128367 () Bool)

(assert (=> b!6845464 (=> (not res!2794769) (not e!4128367))))

(declare-fun call!623471 () Bool)

(assert (=> b!6845464 (= res!2794769 call!623471)))

(declare-fun e!4128366 () Bool)

(assert (=> b!6845464 (= e!4128366 e!4128367)))

(declare-fun b!6845465 () Bool)

(assert (=> b!6845465 (= e!4128368 e!4128363)))

(declare-fun res!2794773 () Bool)

(assert (=> b!6845465 (= res!2794773 (not (nullable!6636 (reg!17000 (ite c!1274263 (reg!17000 lt!2455637) (ite c!1274264 (regTwo!33855 lt!2455637) (regTwo!33854 lt!2455637)))))))))

(assert (=> b!6845465 (=> (not res!2794773) (not e!4128363))))

(declare-fun b!6845466 () Bool)

(declare-fun e!4128365 () Bool)

(declare-fun e!4128364 () Bool)

(assert (=> b!6845466 (= e!4128365 e!4128364)))

(declare-fun res!2794770 () Bool)

(assert (=> b!6845466 (=> (not res!2794770) (not e!4128364))))

(assert (=> b!6845466 (= res!2794770 call!623471)))

(declare-fun bm!623464 () Bool)

(declare-fun call!623470 () Bool)

(assert (=> bm!623464 (= call!623470 call!623469)))

(declare-fun bm!623465 () Bool)

(declare-fun c!1274474 () Bool)

(assert (=> bm!623465 (= call!623471 (validRegex!8407 (ite c!1274474 (regOne!33855 (ite c!1274263 (reg!17000 lt!2455637) (ite c!1274264 (regTwo!33855 lt!2455637) (regTwo!33854 lt!2455637)))) (regOne!33854 (ite c!1274263 (reg!17000 lt!2455637) (ite c!1274264 (regTwo!33855 lt!2455637) (regTwo!33854 lt!2455637)))))))))

(declare-fun bm!623466 () Bool)

(assert (=> bm!623466 (= call!623469 (validRegex!8407 (ite c!1274473 (reg!17000 (ite c!1274263 (reg!17000 lt!2455637) (ite c!1274264 (regTwo!33855 lt!2455637) (regTwo!33854 lt!2455637)))) (ite c!1274474 (regTwo!33855 (ite c!1274263 (reg!17000 lt!2455637) (ite c!1274264 (regTwo!33855 lt!2455637) (regTwo!33854 lt!2455637)))) (regTwo!33854 (ite c!1274263 (reg!17000 lt!2455637) (ite c!1274264 (regTwo!33855 lt!2455637) (regTwo!33854 lt!2455637))))))))))

(declare-fun d!2152005 () Bool)

(declare-fun res!2794772 () Bool)

(assert (=> d!2152005 (=> res!2794772 e!4128362)))

(assert (=> d!2152005 (= res!2794772 ((_ is ElementMatch!16671) (ite c!1274263 (reg!17000 lt!2455637) (ite c!1274264 (regTwo!33855 lt!2455637) (regTwo!33854 lt!2455637)))))))

(assert (=> d!2152005 (= (validRegex!8407 (ite c!1274263 (reg!17000 lt!2455637) (ite c!1274264 (regTwo!33855 lt!2455637) (regTwo!33854 lt!2455637)))) e!4128362)))

(declare-fun b!6845467 () Bool)

(assert (=> b!6845467 (= e!4128368 e!4128366)))

(assert (=> b!6845467 (= c!1274474 ((_ is Union!16671) (ite c!1274263 (reg!17000 lt!2455637) (ite c!1274264 (regTwo!33855 lt!2455637) (regTwo!33854 lt!2455637)))))))

(declare-fun b!6845468 () Bool)

(assert (=> b!6845468 (= e!4128364 call!623470)))

(declare-fun b!6845469 () Bool)

(assert (=> b!6845469 (= e!4128367 call!623470)))

(declare-fun b!6845470 () Bool)

(declare-fun res!2794771 () Bool)

(assert (=> b!6845470 (=> res!2794771 e!4128365)))

(assert (=> b!6845470 (= res!2794771 (not ((_ is Concat!25516) (ite c!1274263 (reg!17000 lt!2455637) (ite c!1274264 (regTwo!33855 lt!2455637) (regTwo!33854 lt!2455637))))))))

(assert (=> b!6845470 (= e!4128366 e!4128365)))

(assert (= (and d!2152005 (not res!2794772)) b!6845462))

(assert (= (and b!6845462 c!1274473) b!6845465))

(assert (= (and b!6845462 (not c!1274473)) b!6845467))

(assert (= (and b!6845465 res!2794773) b!6845463))

(assert (= (and b!6845467 c!1274474) b!6845464))

(assert (= (and b!6845467 (not c!1274474)) b!6845470))

(assert (= (and b!6845464 res!2794769) b!6845469))

(assert (= (and b!6845470 (not res!2794771)) b!6845466))

(assert (= (and b!6845466 res!2794770) b!6845468))

(assert (= (or b!6845469 b!6845468) bm!623464))

(assert (= (or b!6845464 b!6845466) bm!623465))

(assert (= (or b!6845463 bm!623464) bm!623466))

(declare-fun m!7586486 () Bool)

(assert (=> b!6845465 m!7586486))

(declare-fun m!7586488 () Bool)

(assert (=> bm!623465 m!7586488))

(declare-fun m!7586490 () Bool)

(assert (=> bm!623466 m!7586490))

(assert (=> bm!623310 d!2152005))

(declare-fun d!2152007 () Bool)

(assert (=> d!2152007 (= (nullable!6636 lt!2455637) (nullableFct!2520 lt!2455637))))

(declare-fun bs!1829908 () Bool)

(assert (= bs!1829908 d!2152007))

(declare-fun m!7586492 () Bool)

(assert (=> bs!1829908 m!7586492))

(assert (=> b!6844430 d!2152007))

(declare-fun d!2152009 () Bool)

(assert (=> d!2152009 (= (isUnion!1445 lt!2455693) ((_ is Union!16671) lt!2455693))))

(assert (=> b!6844553 d!2152009))

(declare-fun d!2152011 () Bool)

(declare-fun c!1274475 () Bool)

(assert (=> d!2152011 (= c!1274475 ((_ is Nil!66188) (t!380055 lt!2455560)))))

(declare-fun e!4128369 () (InoxSet Regex!16671))

(assert (=> d!2152011 (= (content!12978 (t!380055 lt!2455560)) e!4128369)))

(declare-fun b!6845471 () Bool)

(assert (=> b!6845471 (= e!4128369 ((as const (Array Regex!16671 Bool)) false))))

(declare-fun b!6845472 () Bool)

(assert (=> b!6845472 (= e!4128369 ((_ map or) (store ((as const (Array Regex!16671 Bool)) false) (h!72636 (t!380055 lt!2455560)) true) (content!12978 (t!380055 (t!380055 lt!2455560)))))))

(assert (= (and d!2152011 c!1274475) b!6845471))

(assert (= (and d!2152011 (not c!1274475)) b!6845472))

(declare-fun m!7586494 () Bool)

(assert (=> b!6845472 m!7586494))

(assert (=> b!6845472 m!7585958))

(assert (=> b!6844448 d!2152011))

(declare-fun b!6845477 () Bool)

(declare-fun e!4128374 () Bool)

(declare-fun e!4128380 () Bool)

(assert (=> b!6845477 (= e!4128374 e!4128380)))

(declare-fun c!1274476 () Bool)

(assert (=> b!6845477 (= c!1274476 ((_ is Star!16671) lt!2455688))))

(declare-fun b!6845478 () Bool)

(declare-fun e!4128375 () Bool)

(declare-fun call!623472 () Bool)

(assert (=> b!6845478 (= e!4128375 call!623472)))

(declare-fun b!6845479 () Bool)

(declare-fun res!2794778 () Bool)

(declare-fun e!4128379 () Bool)

(assert (=> b!6845479 (=> (not res!2794778) (not e!4128379))))

(declare-fun call!623474 () Bool)

(assert (=> b!6845479 (= res!2794778 call!623474)))

(declare-fun e!4128378 () Bool)

(assert (=> b!6845479 (= e!4128378 e!4128379)))

(declare-fun b!6845480 () Bool)

(assert (=> b!6845480 (= e!4128380 e!4128375)))

(declare-fun res!2794782 () Bool)

(assert (=> b!6845480 (= res!2794782 (not (nullable!6636 (reg!17000 lt!2455688))))))

(assert (=> b!6845480 (=> (not res!2794782) (not e!4128375))))

(declare-fun b!6845481 () Bool)

(declare-fun e!4128377 () Bool)

(declare-fun e!4128376 () Bool)

(assert (=> b!6845481 (= e!4128377 e!4128376)))

(declare-fun res!2794779 () Bool)

(assert (=> b!6845481 (=> (not res!2794779) (not e!4128376))))

(assert (=> b!6845481 (= res!2794779 call!623474)))

(declare-fun bm!623467 () Bool)

(declare-fun call!623473 () Bool)

(assert (=> bm!623467 (= call!623473 call!623472)))

(declare-fun bm!623468 () Bool)

(declare-fun c!1274477 () Bool)

(assert (=> bm!623468 (= call!623474 (validRegex!8407 (ite c!1274477 (regOne!33855 lt!2455688) (regOne!33854 lt!2455688))))))

(declare-fun bm!623469 () Bool)

(assert (=> bm!623469 (= call!623472 (validRegex!8407 (ite c!1274476 (reg!17000 lt!2455688) (ite c!1274477 (regTwo!33855 lt!2455688) (regTwo!33854 lt!2455688)))))))

(declare-fun d!2152013 () Bool)

(declare-fun res!2794781 () Bool)

(assert (=> d!2152013 (=> res!2794781 e!4128374)))

(assert (=> d!2152013 (= res!2794781 ((_ is ElementMatch!16671) lt!2455688))))

(assert (=> d!2152013 (= (validRegex!8407 lt!2455688) e!4128374)))

(declare-fun b!6845482 () Bool)

(assert (=> b!6845482 (= e!4128380 e!4128378)))

(assert (=> b!6845482 (= c!1274477 ((_ is Union!16671) lt!2455688))))

(declare-fun b!6845483 () Bool)

(assert (=> b!6845483 (= e!4128376 call!623473)))

(declare-fun b!6845484 () Bool)

(assert (=> b!6845484 (= e!4128379 call!623473)))

(declare-fun b!6845485 () Bool)

(declare-fun res!2794780 () Bool)

(assert (=> b!6845485 (=> res!2794780 e!4128377)))

(assert (=> b!6845485 (= res!2794780 (not ((_ is Concat!25516) lt!2455688)))))

(assert (=> b!6845485 (= e!4128378 e!4128377)))

(assert (= (and d!2152013 (not res!2794781)) b!6845477))

(assert (= (and b!6845477 c!1274476) b!6845480))

(assert (= (and b!6845477 (not c!1274476)) b!6845482))

(assert (= (and b!6845480 res!2794782) b!6845478))

(assert (= (and b!6845482 c!1274477) b!6845479))

(assert (= (and b!6845482 (not c!1274477)) b!6845485))

(assert (= (and b!6845479 res!2794778) b!6845484))

(assert (= (and b!6845485 (not res!2794780)) b!6845481))

(assert (= (and b!6845481 res!2794779) b!6845483))

(assert (= (or b!6845484 b!6845483) bm!623467))

(assert (= (or b!6845479 b!6845481) bm!623468))

(assert (= (or b!6845478 bm!623467) bm!623469))

(declare-fun m!7586496 () Bool)

(assert (=> b!6845480 m!7586496))

(declare-fun m!7586498 () Bool)

(assert (=> bm!623468 m!7586498))

(declare-fun m!7586500 () Bool)

(assert (=> bm!623469 m!7586500))

(assert (=> bs!1829624 d!2152013))

(declare-fun bm!623472 () Bool)

(declare-fun call!623479 () Bool)

(declare-fun c!1274480 () Bool)

(assert (=> bm!623472 (= call!623479 (nullable!6636 (ite c!1274480 (regOne!33855 r!7292) (regOne!33854 r!7292))))))

(declare-fun b!6845496 () Bool)

(declare-fun e!4128392 () Bool)

(declare-fun e!4128391 () Bool)

(assert (=> b!6845496 (= e!4128392 e!4128391)))

(declare-fun res!2794789 () Bool)

(assert (=> b!6845496 (=> res!2794789 e!4128391)))

(assert (=> b!6845496 (= res!2794789 ((_ is Star!16671) r!7292))))

(declare-fun b!6845497 () Bool)

(declare-fun e!4128389 () Bool)

(declare-fun e!4128393 () Bool)

(assert (=> b!6845497 (= e!4128389 e!4128393)))

(declare-fun res!2794792 () Bool)

(assert (=> b!6845497 (= res!2794792 call!623479)))

(assert (=> b!6845497 (=> res!2794792 e!4128393)))

(declare-fun b!6845498 () Bool)

(assert (=> b!6845498 (= e!4128391 e!4128389)))

(assert (=> b!6845498 (= c!1274480 ((_ is Union!16671) r!7292))))

(declare-fun b!6845499 () Bool)

(declare-fun e!4128390 () Bool)

(assert (=> b!6845499 (= e!4128389 e!4128390)))

(declare-fun res!2794791 () Bool)

(assert (=> b!6845499 (= res!2794791 call!623479)))

(assert (=> b!6845499 (=> (not res!2794791) (not e!4128390))))

(declare-fun b!6845500 () Bool)

(declare-fun e!4128394 () Bool)

(assert (=> b!6845500 (= e!4128394 e!4128392)))

(declare-fun res!2794790 () Bool)

(assert (=> b!6845500 (=> (not res!2794790) (not e!4128392))))

(assert (=> b!6845500 (= res!2794790 (and (not ((_ is EmptyLang!16671) r!7292)) (not ((_ is ElementMatch!16671) r!7292))))))

(declare-fun bm!623473 () Bool)

(declare-fun call!623480 () Bool)

(assert (=> bm!623473 (= call!623480 (nullable!6636 (ite c!1274480 (regTwo!33855 r!7292) (regTwo!33854 r!7292))))))

(declare-fun d!2152015 () Bool)

(declare-fun res!2794793 () Bool)

(assert (=> d!2152015 (=> res!2794793 e!4128394)))

(assert (=> d!2152015 (= res!2794793 ((_ is EmptyExpr!16671) r!7292))))

(assert (=> d!2152015 (= (nullableFct!2520 r!7292) e!4128394)))

(declare-fun b!6845501 () Bool)

(assert (=> b!6845501 (= e!4128390 call!623480)))

(declare-fun b!6845502 () Bool)

(assert (=> b!6845502 (= e!4128393 call!623480)))

(assert (= (and d!2152015 (not res!2794793)) b!6845500))

(assert (= (and b!6845500 res!2794790) b!6845496))

(assert (= (and b!6845496 (not res!2794789)) b!6845498))

(assert (= (and b!6845498 c!1274480) b!6845497))

(assert (= (and b!6845498 (not c!1274480)) b!6845499))

(assert (= (and b!6845497 (not res!2794792)) b!6845502))

(assert (= (and b!6845499 res!2794791) b!6845501))

(assert (= (or b!6845502 b!6845501) bm!623473))

(assert (= (or b!6845497 b!6845499) bm!623472))

(declare-fun m!7586502 () Bool)

(assert (=> bm!623472 m!7586502))

(declare-fun m!7586504 () Bool)

(assert (=> bm!623473 m!7586504))

(assert (=> d!2151595 d!2152015))

(declare-fun bs!1829909 () Bool)

(declare-fun d!2152017 () Bool)

(assert (= bs!1829909 (and d!2152017 d!2151591)))

(declare-fun lambda!387102 () Int)

(assert (=> bs!1829909 (= lambda!387102 lambda!387063)))

(declare-fun bs!1829910 () Bool)

(assert (= bs!1829910 (and d!2152017 d!2151623)))

(assert (=> bs!1829910 (not (= lambda!387102 lambda!387073))))

(declare-fun bs!1829911 () Bool)

(assert (= bs!1829911 (and d!2152017 d!2151427)))

(assert (=> bs!1829911 (= lambda!387102 lambda!387035)))

(declare-fun bs!1829912 () Bool)

(assert (= bs!1829912 (and d!2152017 d!2151417)))

(assert (=> bs!1829912 (= lambda!387102 lambda!387022)))

(declare-fun bs!1829913 () Bool)

(assert (= bs!1829913 (and d!2152017 d!2151423)))

(assert (=> bs!1829913 (not (= lambda!387102 lambda!387026))))

(declare-fun bs!1829914 () Bool)

(assert (= bs!1829914 (and d!2152017 d!2151425)))

(assert (=> bs!1829914 (= lambda!387102 lambda!387031)))

(declare-fun bs!1829915 () Bool)

(assert (= bs!1829915 (and d!2152017 d!2151905)))

(assert (=> bs!1829915 (not (= lambda!387102 lambda!387095))))

(declare-fun bs!1829916 () Bool)

(assert (= bs!1829916 (and d!2152017 d!2151929)))

(assert (=> bs!1829916 (= lambda!387102 lambda!387096)))

(declare-fun bs!1829917 () Bool)

(assert (= bs!1829917 (and d!2152017 d!2151621)))

(assert (=> bs!1829917 (not (= lambda!387102 lambda!387070))))

(declare-fun bs!1829918 () Bool)

(assert (= bs!1829918 (and d!2152017 d!2151729)))

(assert (=> bs!1829918 (= lambda!387102 lambda!387083)))

(declare-fun bs!1829919 () Bool)

(assert (= bs!1829919 (and d!2152017 d!2151771)))

(assert (=> bs!1829919 (= lambda!387102 lambda!387085)))

(declare-fun bs!1829920 () Bool)

(assert (= bs!1829920 (and d!2152017 d!2151599)))

(assert (=> bs!1829920 (= lambda!387102 lambda!387065)))

(declare-fun bs!1829921 () Bool)

(assert (= bs!1829921 (and d!2152017 d!2151593)))

(assert (=> bs!1829921 (= lambda!387102 lambda!387064)))

(declare-fun bs!1829922 () Bool)

(assert (= bs!1829922 (and d!2152017 d!2151655)))

(assert (=> bs!1829922 (= lambda!387102 lambda!387078)))

(declare-fun bs!1829923 () Bool)

(assert (= bs!1829923 (and d!2152017 d!2151825)))

(assert (=> bs!1829923 (= lambda!387102 lambda!387088)))

(declare-fun bs!1829924 () Bool)

(assert (= bs!1829924 (and d!2152017 d!2151675)))

(assert (=> bs!1829924 (= lambda!387102 lambda!387079)))

(declare-fun bs!1829925 () Bool)

(assert (= bs!1829925 (and d!2152017 b!6843348)))

(assert (=> bs!1829925 (not (= lambda!387102 lambda!386978))))

(declare-fun bs!1829926 () Bool)

(assert (= bs!1829926 (and d!2152017 d!2151893)))

(assert (=> bs!1829926 (= lambda!387102 lambda!387094)))

(assert (=> bs!1829914 (not (= lambda!387102 lambda!387032))))

(declare-fun bs!1829927 () Bool)

(assert (= bs!1829927 (and d!2152017 d!2151419)))

(assert (=> bs!1829927 (= lambda!387102 lambda!387023)))

(declare-fun bs!1829928 () Bool)

(assert (= bs!1829928 (and d!2152017 d!2151587)))

(assert (=> bs!1829928 (= lambda!387102 lambda!387060)))

(assert (=> d!2152017 (= (inv!84924 (h!72637 res!2794404)) (forall!15850 (exprs!6555 (h!72637 res!2794404)) lambda!387102))))

(declare-fun bs!1829929 () Bool)

(assert (= bs!1829929 d!2152017))

(declare-fun m!7586506 () Bool)

(assert (=> bs!1829929 m!7586506))

(assert (=> b!6844483 d!2152017))

(declare-fun b!6845510 () Bool)

(declare-fun e!4128401 () Bool)

(declare-fun e!4128407 () Bool)

(assert (=> b!6845510 (= e!4128401 e!4128407)))

(declare-fun c!1274482 () Bool)

(assert (=> b!6845510 (= c!1274482 ((_ is Star!16671) lt!2455682))))

(declare-fun b!6845511 () Bool)

(declare-fun e!4128402 () Bool)

(declare-fun call!623483 () Bool)

(assert (=> b!6845511 (= e!4128402 call!623483)))

(declare-fun b!6845512 () Bool)

(declare-fun res!2794799 () Bool)

(declare-fun e!4128406 () Bool)

(assert (=> b!6845512 (=> (not res!2794799) (not e!4128406))))

(declare-fun call!623485 () Bool)

(assert (=> b!6845512 (= res!2794799 call!623485)))

(declare-fun e!4128405 () Bool)

(assert (=> b!6845512 (= e!4128405 e!4128406)))

(declare-fun b!6845513 () Bool)

(assert (=> b!6845513 (= e!4128407 e!4128402)))

(declare-fun res!2794803 () Bool)

(assert (=> b!6845513 (= res!2794803 (not (nullable!6636 (reg!17000 lt!2455682))))))

(assert (=> b!6845513 (=> (not res!2794803) (not e!4128402))))

(declare-fun b!6845514 () Bool)

(declare-fun e!4128404 () Bool)

(declare-fun e!4128403 () Bool)

(assert (=> b!6845514 (= e!4128404 e!4128403)))

(declare-fun res!2794800 () Bool)

(assert (=> b!6845514 (=> (not res!2794800) (not e!4128403))))

(assert (=> b!6845514 (= res!2794800 call!623485)))

(declare-fun bm!623478 () Bool)

(declare-fun call!623484 () Bool)

(assert (=> bm!623478 (= call!623484 call!623483)))

(declare-fun bm!623479 () Bool)

(declare-fun c!1274483 () Bool)

(assert (=> bm!623479 (= call!623485 (validRegex!8407 (ite c!1274483 (regOne!33855 lt!2455682) (regOne!33854 lt!2455682))))))

(declare-fun bm!623480 () Bool)

(assert (=> bm!623480 (= call!623483 (validRegex!8407 (ite c!1274482 (reg!17000 lt!2455682) (ite c!1274483 (regTwo!33855 lt!2455682) (regTwo!33854 lt!2455682)))))))

(declare-fun d!2152019 () Bool)

(declare-fun res!2794802 () Bool)

(assert (=> d!2152019 (=> res!2794802 e!4128401)))

(assert (=> d!2152019 (= res!2794802 ((_ is ElementMatch!16671) lt!2455682))))

(assert (=> d!2152019 (= (validRegex!8407 lt!2455682) e!4128401)))

(declare-fun b!6845515 () Bool)

(assert (=> b!6845515 (= e!4128407 e!4128405)))

(assert (=> b!6845515 (= c!1274483 ((_ is Union!16671) lt!2455682))))

(declare-fun b!6845516 () Bool)

(assert (=> b!6845516 (= e!4128403 call!623484)))

(declare-fun b!6845517 () Bool)

(assert (=> b!6845517 (= e!4128406 call!623484)))

(declare-fun b!6845518 () Bool)

(declare-fun res!2794801 () Bool)

(assert (=> b!6845518 (=> res!2794801 e!4128404)))

(assert (=> b!6845518 (= res!2794801 (not ((_ is Concat!25516) lt!2455682)))))

(assert (=> b!6845518 (= e!4128405 e!4128404)))

(assert (= (and d!2152019 (not res!2794802)) b!6845510))

(assert (= (and b!6845510 c!1274482) b!6845513))

(assert (= (and b!6845510 (not c!1274482)) b!6845515))

(assert (= (and b!6845513 res!2794803) b!6845511))

(assert (= (and b!6845515 c!1274483) b!6845512))

(assert (= (and b!6845515 (not c!1274483)) b!6845518))

(assert (= (and b!6845512 res!2794799) b!6845517))

(assert (= (and b!6845518 (not res!2794801)) b!6845514))

(assert (= (and b!6845514 res!2794800) b!6845516))

(assert (= (or b!6845517 b!6845516) bm!623478))

(assert (= (or b!6845512 b!6845514) bm!623479))

(assert (= (or b!6845511 bm!623478) bm!623480))

(declare-fun m!7586512 () Bool)

(assert (=> b!6845513 m!7586512))

(declare-fun m!7586514 () Bool)

(assert (=> bm!623479 m!7586514))

(declare-fun m!7586516 () Bool)

(assert (=> bm!623480 m!7586516))

(assert (=> d!2151599 d!2152019))

(declare-fun d!2152023 () Bool)

(declare-fun res!2794806 () Bool)

(declare-fun e!4128410 () Bool)

(assert (=> d!2152023 (=> res!2794806 e!4128410)))

(assert (=> d!2152023 (= res!2794806 ((_ is Nil!66188) (exprs!6555 lt!2455629)))))

(assert (=> d!2152023 (= (forall!15850 (exprs!6555 lt!2455629) lambda!387065) e!4128410)))

(declare-fun b!6845521 () Bool)

(declare-fun e!4128411 () Bool)

(assert (=> b!6845521 (= e!4128410 e!4128411)))

(declare-fun res!2794807 () Bool)

(assert (=> b!6845521 (=> (not res!2794807) (not e!4128411))))

(assert (=> b!6845521 (= res!2794807 (dynLambda!26449 lambda!387065 (h!72636 (exprs!6555 lt!2455629))))))

(declare-fun b!6845522 () Bool)

(assert (=> b!6845522 (= e!4128411 (forall!15850 (t!380055 (exprs!6555 lt!2455629)) lambda!387065))))

(assert (= (and d!2152023 (not res!2794806)) b!6845521))

(assert (= (and b!6845521 res!2794807) b!6845522))

(declare-fun b_lambda!258243 () Bool)

(assert (=> (not b_lambda!258243) (not b!6845521)))

(declare-fun m!7586524 () Bool)

(assert (=> b!6845521 m!7586524))

(declare-fun m!7586526 () Bool)

(assert (=> b!6845522 m!7586526))

(assert (=> d!2151599 d!2152023))

(declare-fun d!2152027 () Bool)

(declare-fun c!1274484 () Bool)

(assert (=> d!2152027 (= c!1274484 ((_ is Nil!66189) (t!380056 zl!343)))))

(declare-fun e!4128412 () (InoxSet Context!12110))

(assert (=> d!2152027 (= (content!12977 (t!380056 zl!343)) e!4128412)))

(declare-fun b!6845523 () Bool)

(assert (=> b!6845523 (= e!4128412 ((as const (Array Context!12110 Bool)) false))))

(declare-fun b!6845524 () Bool)

(assert (=> b!6845524 (= e!4128412 ((_ map or) (store ((as const (Array Context!12110 Bool)) false) (h!72637 (t!380056 zl!343)) true) (content!12977 (t!380056 (t!380056 zl!343)))))))

(assert (= (and d!2152027 c!1274484) b!6845523))

(assert (= (and d!2152027 (not c!1274484)) b!6845524))

(declare-fun m!7586528 () Bool)

(assert (=> b!6845524 m!7586528))

(declare-fun m!7586530 () Bool)

(assert (=> b!6845524 m!7586530))

(assert (=> d!2151669 d!2152027))

(declare-fun b!6845539 () Bool)

(declare-fun e!4128425 () Bool)

(assert (=> b!6845539 (= e!4128425 (matchR!8854 (derivativeStep!5319 (h!72636 (t!380055 lt!2455560)) (head!13721 s!2326)) (tail!12800 s!2326)))))

(declare-fun b!6845540 () Bool)

(declare-fun e!4128423 () Bool)

(assert (=> b!6845540 (= e!4128423 (= (head!13721 s!2326) (c!1273977 (h!72636 (t!380055 lt!2455560)))))))

(declare-fun b!6845541 () Bool)

(declare-fun e!4128426 () Bool)

(declare-fun e!4128422 () Bool)

(assert (=> b!6845541 (= e!4128426 e!4128422)))

(declare-fun c!1274489 () Bool)

(assert (=> b!6845541 (= c!1274489 ((_ is EmptyLang!16671) (h!72636 (t!380055 lt!2455560))))))

(declare-fun b!6845542 () Bool)

(declare-fun lt!2455746 () Bool)

(assert (=> b!6845542 (= e!4128422 (not lt!2455746))))

(declare-fun b!6845543 () Bool)

(declare-fun e!4128420 () Bool)

(declare-fun e!4128424 () Bool)

(assert (=> b!6845543 (= e!4128420 e!4128424)))

(declare-fun res!2794816 () Bool)

(assert (=> b!6845543 (=> (not res!2794816) (not e!4128424))))

(assert (=> b!6845543 (= res!2794816 (not lt!2455746))))

(declare-fun bm!623482 () Bool)

(declare-fun call!623487 () Bool)

(assert (=> bm!623482 (= call!623487 (isEmpty!38565 s!2326))))

(declare-fun b!6845544 () Bool)

(declare-fun e!4128421 () Bool)

(assert (=> b!6845544 (= e!4128424 e!4128421)))

(declare-fun res!2794818 () Bool)

(assert (=> b!6845544 (=> res!2794818 e!4128421)))

(assert (=> b!6845544 (= res!2794818 call!623487)))

(declare-fun b!6845545 () Bool)

(assert (=> b!6845545 (= e!4128426 (= lt!2455746 call!623487))))

(declare-fun b!6845546 () Bool)

(declare-fun res!2794820 () Bool)

(assert (=> b!6845546 (=> res!2794820 e!4128421)))

(assert (=> b!6845546 (= res!2794820 (not (isEmpty!38565 (tail!12800 s!2326))))))

(declare-fun b!6845547 () Bool)

(declare-fun res!2794823 () Bool)

(assert (=> b!6845547 (=> (not res!2794823) (not e!4128423))))

(assert (=> b!6845547 (= res!2794823 (not call!623487))))

(declare-fun d!2152031 () Bool)

(assert (=> d!2152031 e!4128426))

(declare-fun c!1274488 () Bool)

(assert (=> d!2152031 (= c!1274488 ((_ is EmptyExpr!16671) (h!72636 (t!380055 lt!2455560))))))

(assert (=> d!2152031 (= lt!2455746 e!4128425)))

(declare-fun c!1274490 () Bool)

(assert (=> d!2152031 (= c!1274490 (isEmpty!38565 s!2326))))

(assert (=> d!2152031 (validRegex!8407 (h!72636 (t!380055 lt!2455560)))))

(assert (=> d!2152031 (= (matchR!8854 (h!72636 (t!380055 lt!2455560)) s!2326) lt!2455746)))

(declare-fun b!6845548 () Bool)

(assert (=> b!6845548 (= e!4128421 (not (= (head!13721 s!2326) (c!1273977 (h!72636 (t!380055 lt!2455560))))))))

(declare-fun b!6845549 () Bool)

(declare-fun res!2794817 () Bool)

(assert (=> b!6845549 (=> res!2794817 e!4128420)))

(assert (=> b!6845549 (= res!2794817 e!4128423)))

(declare-fun res!2794819 () Bool)

(assert (=> b!6845549 (=> (not res!2794819) (not e!4128423))))

(assert (=> b!6845549 (= res!2794819 lt!2455746)))

(declare-fun b!6845550 () Bool)

(assert (=> b!6845550 (= e!4128425 (nullable!6636 (h!72636 (t!380055 lt!2455560))))))

(declare-fun b!6845551 () Bool)

(declare-fun res!2794821 () Bool)

(assert (=> b!6845551 (=> (not res!2794821) (not e!4128423))))

(assert (=> b!6845551 (= res!2794821 (isEmpty!38565 (tail!12800 s!2326)))))

(declare-fun b!6845552 () Bool)

(declare-fun res!2794822 () Bool)

(assert (=> b!6845552 (=> res!2794822 e!4128420)))

(assert (=> b!6845552 (= res!2794822 (not ((_ is ElementMatch!16671) (h!72636 (t!380055 lt!2455560)))))))

(assert (=> b!6845552 (= e!4128422 e!4128420)))

(assert (= (and d!2152031 c!1274490) b!6845550))

(assert (= (and d!2152031 (not c!1274490)) b!6845539))

(assert (= (and d!2152031 c!1274488) b!6845545))

(assert (= (and d!2152031 (not c!1274488)) b!6845541))

(assert (= (and b!6845541 c!1274489) b!6845542))

(assert (= (and b!6845541 (not c!1274489)) b!6845552))

(assert (= (and b!6845552 (not res!2794822)) b!6845549))

(assert (= (and b!6845549 res!2794819) b!6845547))

(assert (= (and b!6845547 res!2794823) b!6845551))

(assert (= (and b!6845551 res!2794821) b!6845540))

(assert (= (and b!6845549 (not res!2794817)) b!6845543))

(assert (= (and b!6845543 res!2794816) b!6845544))

(assert (= (and b!6845544 (not res!2794818)) b!6845546))

(assert (= (and b!6845546 (not res!2794820)) b!6845548))

(assert (= (or b!6845545 b!6845544 b!6845547) bm!623482))

(assert (=> bm!623482 m!7584996))

(assert (=> d!2152031 m!7584996))

(assert (=> d!2152031 m!7585772))

(assert (=> b!6845540 m!7584998))

(assert (=> b!6845551 m!7585000))

(assert (=> b!6845551 m!7585000))

(assert (=> b!6845551 m!7585002))

(declare-fun m!7586534 () Bool)

(assert (=> b!6845550 m!7586534))

(assert (=> b!6845548 m!7584998))

(assert (=> b!6845539 m!7584998))

(assert (=> b!6845539 m!7584998))

(declare-fun m!7586538 () Bool)

(assert (=> b!6845539 m!7586538))

(assert (=> b!6845539 m!7585000))

(assert (=> b!6845539 m!7586538))

(assert (=> b!6845539 m!7585000))

(declare-fun m!7586540 () Bool)

(assert (=> b!6845539 m!7586540))

(assert (=> b!6845546 m!7585000))

(assert (=> b!6845546 m!7585000))

(assert (=> b!6845546 m!7585002))

(assert (=> b!6844773 d!2152031))

(declare-fun b!6845553 () Bool)

(declare-fun e!4128427 () Bool)

(declare-fun e!4128433 () Bool)

(assert (=> b!6845553 (= e!4128427 e!4128433)))

(declare-fun c!1274491 () Bool)

(assert (=> b!6845553 (= c!1274491 ((_ is Star!16671) (ite c!1274202 (regOne!33855 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))) (regOne!33854 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))))))))

(declare-fun b!6845554 () Bool)

(declare-fun e!4128428 () Bool)

(declare-fun call!623488 () Bool)

(assert (=> b!6845554 (= e!4128428 call!623488)))

(declare-fun b!6845555 () Bool)

(declare-fun res!2794824 () Bool)

(declare-fun e!4128432 () Bool)

(assert (=> b!6845555 (=> (not res!2794824) (not e!4128432))))

(declare-fun call!623490 () Bool)

(assert (=> b!6845555 (= res!2794824 call!623490)))

(declare-fun e!4128431 () Bool)

(assert (=> b!6845555 (= e!4128431 e!4128432)))

(declare-fun b!6845556 () Bool)

(assert (=> b!6845556 (= e!4128433 e!4128428)))

(declare-fun res!2794828 () Bool)

(assert (=> b!6845556 (= res!2794828 (not (nullable!6636 (reg!17000 (ite c!1274202 (regOne!33855 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))) (regOne!33854 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))))))))))

(assert (=> b!6845556 (=> (not res!2794828) (not e!4128428))))

(declare-fun b!6845557 () Bool)

(declare-fun e!4128430 () Bool)

(declare-fun e!4128429 () Bool)

(assert (=> b!6845557 (= e!4128430 e!4128429)))

(declare-fun res!2794825 () Bool)

(assert (=> b!6845557 (=> (not res!2794825) (not e!4128429))))

(assert (=> b!6845557 (= res!2794825 call!623490)))

(declare-fun bm!623483 () Bool)

(declare-fun call!623489 () Bool)

(assert (=> bm!623483 (= call!623489 call!623488)))

(declare-fun bm!623484 () Bool)

(declare-fun c!1274492 () Bool)

(assert (=> bm!623484 (= call!623490 (validRegex!8407 (ite c!1274492 (regOne!33855 (ite c!1274202 (regOne!33855 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))) (regOne!33854 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))))) (regOne!33854 (ite c!1274202 (regOne!33855 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))) (regOne!33854 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))))))))))

(declare-fun bm!623485 () Bool)

(assert (=> bm!623485 (= call!623488 (validRegex!8407 (ite c!1274491 (reg!17000 (ite c!1274202 (regOne!33855 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))) (regOne!33854 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))))) (ite c!1274492 (regTwo!33855 (ite c!1274202 (regOne!33855 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))) (regOne!33854 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))))) (regTwo!33854 (ite c!1274202 (regOne!33855 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))) (regOne!33854 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292)))))))))))

(declare-fun d!2152033 () Bool)

(declare-fun res!2794827 () Bool)

(assert (=> d!2152033 (=> res!2794827 e!4128427)))

(assert (=> d!2152033 (= res!2794827 ((_ is ElementMatch!16671) (ite c!1274202 (regOne!33855 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))) (regOne!33854 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))))))))

(assert (=> d!2152033 (= (validRegex!8407 (ite c!1274202 (regOne!33855 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))) (regOne!33854 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))))) e!4128427)))

(declare-fun b!6845558 () Bool)

(assert (=> b!6845558 (= e!4128433 e!4128431)))

(assert (=> b!6845558 (= c!1274492 ((_ is Union!16671) (ite c!1274202 (regOne!33855 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))) (regOne!33854 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))))))))

(declare-fun b!6845559 () Bool)

(assert (=> b!6845559 (= e!4128429 call!623489)))

(declare-fun b!6845560 () Bool)

(assert (=> b!6845560 (= e!4128432 call!623489)))

(declare-fun b!6845561 () Bool)

(declare-fun res!2794826 () Bool)

(assert (=> b!6845561 (=> res!2794826 e!4128430)))

(assert (=> b!6845561 (= res!2794826 (not ((_ is Concat!25516) (ite c!1274202 (regOne!33855 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292))) (regOne!33854 (ite c!1274076 (regOne!33855 r!7292) (regOne!33854 r!7292)))))))))

(assert (=> b!6845561 (= e!4128431 e!4128430)))

(assert (= (and d!2152033 (not res!2794827)) b!6845553))

(assert (= (and b!6845553 c!1274491) b!6845556))

(assert (= (and b!6845553 (not c!1274491)) b!6845558))

(assert (= (and b!6845556 res!2794828) b!6845554))

(assert (= (and b!6845558 c!1274492) b!6845555))

(assert (= (and b!6845558 (not c!1274492)) b!6845561))

(assert (= (and b!6845555 res!2794824) b!6845560))

(assert (= (and b!6845561 (not res!2794826)) b!6845557))

(assert (= (and b!6845557 res!2794825) b!6845559))

(assert (= (or b!6845560 b!6845559) bm!623483))

(assert (= (or b!6845555 b!6845557) bm!623484))

(assert (= (or b!6845554 bm!623483) bm!623485))

(declare-fun m!7586546 () Bool)

(assert (=> b!6845556 m!7586546))

(declare-fun m!7586548 () Bool)

(assert (=> bm!623484 m!7586548))

(declare-fun m!7586550 () Bool)

(assert (=> bm!623485 m!7586550))

(assert (=> bm!623281 d!2152033))

(declare-fun b!6845572 () Bool)

(declare-fun e!4128439 () Bool)

(declare-fun e!4128445 () Bool)

(assert (=> b!6845572 (= e!4128439 e!4128445)))

(declare-fun c!1274498 () Bool)

(assert (=> b!6845572 (= c!1274498 ((_ is Star!16671) (ite c!1274225 (regOne!33855 (h!72636 lt!2455560)) (regOne!33854 (h!72636 lt!2455560)))))))

(declare-fun b!6845573 () Bool)

(declare-fun e!4128440 () Bool)

(declare-fun call!623495 () Bool)

(assert (=> b!6845573 (= e!4128440 call!623495)))

(declare-fun b!6845574 () Bool)

(declare-fun res!2794829 () Bool)

(declare-fun e!4128444 () Bool)

(assert (=> b!6845574 (=> (not res!2794829) (not e!4128444))))

(declare-fun call!623497 () Bool)

(assert (=> b!6845574 (= res!2794829 call!623497)))

(declare-fun e!4128443 () Bool)

(assert (=> b!6845574 (= e!4128443 e!4128444)))

(declare-fun b!6845575 () Bool)

(assert (=> b!6845575 (= e!4128445 e!4128440)))

(declare-fun res!2794833 () Bool)

(assert (=> b!6845575 (= res!2794833 (not (nullable!6636 (reg!17000 (ite c!1274225 (regOne!33855 (h!72636 lt!2455560)) (regOne!33854 (h!72636 lt!2455560)))))))))

(assert (=> b!6845575 (=> (not res!2794833) (not e!4128440))))

(declare-fun b!6845576 () Bool)

(declare-fun e!4128442 () Bool)

(declare-fun e!4128441 () Bool)

(assert (=> b!6845576 (= e!4128442 e!4128441)))

(declare-fun res!2794830 () Bool)

(assert (=> b!6845576 (=> (not res!2794830) (not e!4128441))))

(assert (=> b!6845576 (= res!2794830 call!623497)))

(declare-fun bm!623490 () Bool)

(declare-fun call!623496 () Bool)

(assert (=> bm!623490 (= call!623496 call!623495)))

(declare-fun c!1274499 () Bool)

(declare-fun bm!623491 () Bool)

(assert (=> bm!623491 (= call!623497 (validRegex!8407 (ite c!1274499 (regOne!33855 (ite c!1274225 (regOne!33855 (h!72636 lt!2455560)) (regOne!33854 (h!72636 lt!2455560)))) (regOne!33854 (ite c!1274225 (regOne!33855 (h!72636 lt!2455560)) (regOne!33854 (h!72636 lt!2455560)))))))))

(declare-fun bm!623492 () Bool)

(assert (=> bm!623492 (= call!623495 (validRegex!8407 (ite c!1274498 (reg!17000 (ite c!1274225 (regOne!33855 (h!72636 lt!2455560)) (regOne!33854 (h!72636 lt!2455560)))) (ite c!1274499 (regTwo!33855 (ite c!1274225 (regOne!33855 (h!72636 lt!2455560)) (regOne!33854 (h!72636 lt!2455560)))) (regTwo!33854 (ite c!1274225 (regOne!33855 (h!72636 lt!2455560)) (regOne!33854 (h!72636 lt!2455560))))))))))

(declare-fun d!2152037 () Bool)

(declare-fun res!2794832 () Bool)

(assert (=> d!2152037 (=> res!2794832 e!4128439)))

(assert (=> d!2152037 (= res!2794832 ((_ is ElementMatch!16671) (ite c!1274225 (regOne!33855 (h!72636 lt!2455560)) (regOne!33854 (h!72636 lt!2455560)))))))

(assert (=> d!2152037 (= (validRegex!8407 (ite c!1274225 (regOne!33855 (h!72636 lt!2455560)) (regOne!33854 (h!72636 lt!2455560)))) e!4128439)))

(declare-fun b!6845577 () Bool)

(assert (=> b!6845577 (= e!4128445 e!4128443)))

(assert (=> b!6845577 (= c!1274499 ((_ is Union!16671) (ite c!1274225 (regOne!33855 (h!72636 lt!2455560)) (regOne!33854 (h!72636 lt!2455560)))))))

(declare-fun b!6845578 () Bool)

(assert (=> b!6845578 (= e!4128441 call!623496)))

(declare-fun b!6845579 () Bool)

(assert (=> b!6845579 (= e!4128444 call!623496)))

(declare-fun b!6845580 () Bool)

(declare-fun res!2794831 () Bool)

(assert (=> b!6845580 (=> res!2794831 e!4128442)))

(assert (=> b!6845580 (= res!2794831 (not ((_ is Concat!25516) (ite c!1274225 (regOne!33855 (h!72636 lt!2455560)) (regOne!33854 (h!72636 lt!2455560))))))))

(assert (=> b!6845580 (= e!4128443 e!4128442)))

(assert (= (and d!2152037 (not res!2794832)) b!6845572))

(assert (= (and b!6845572 c!1274498) b!6845575))

(assert (= (and b!6845572 (not c!1274498)) b!6845577))

(assert (= (and b!6845575 res!2794833) b!6845573))

(assert (= (and b!6845577 c!1274499) b!6845574))

(assert (= (and b!6845577 (not c!1274499)) b!6845580))

(assert (= (and b!6845574 res!2794829) b!6845579))

(assert (= (and b!6845580 (not res!2794831)) b!6845576))

(assert (= (and b!6845576 res!2794830) b!6845578))

(assert (= (or b!6845579 b!6845578) bm!623490))

(assert (= (or b!6845574 b!6845576) bm!623491))

(assert (= (or b!6845573 bm!623490) bm!623492))

(declare-fun m!7586560 () Bool)

(assert (=> b!6845575 m!7586560))

(declare-fun m!7586564 () Bool)

(assert (=> bm!623491 m!7586564))

(declare-fun m!7586568 () Bool)

(assert (=> bm!623492 m!7586568))

(assert (=> bm!623288 d!2152037))

(declare-fun bs!1829931 () Bool)

(declare-fun d!2152043 () Bool)

(assert (= bs!1829931 (and d!2152043 d!2151591)))

(declare-fun lambda!387103 () Int)

(assert (=> bs!1829931 (= lambda!387103 lambda!387063)))

(declare-fun bs!1829932 () Bool)

(assert (= bs!1829932 (and d!2152043 d!2151623)))

(assert (=> bs!1829932 (not (= lambda!387103 lambda!387073))))

(declare-fun bs!1829933 () Bool)

(assert (= bs!1829933 (and d!2152043 d!2151427)))

(assert (=> bs!1829933 (= lambda!387103 lambda!387035)))

(declare-fun bs!1829934 () Bool)

(assert (= bs!1829934 (and d!2152043 d!2151417)))

(assert (=> bs!1829934 (= lambda!387103 lambda!387022)))

(declare-fun bs!1829935 () Bool)

(assert (= bs!1829935 (and d!2152043 d!2151423)))

(assert (=> bs!1829935 (not (= lambda!387103 lambda!387026))))

(declare-fun bs!1829936 () Bool)

(assert (= bs!1829936 (and d!2152043 d!2151425)))

(assert (=> bs!1829936 (= lambda!387103 lambda!387031)))

(declare-fun bs!1829937 () Bool)

(assert (= bs!1829937 (and d!2152043 d!2152017)))

(assert (=> bs!1829937 (= lambda!387103 lambda!387102)))

(declare-fun bs!1829938 () Bool)

(assert (= bs!1829938 (and d!2152043 d!2151905)))

(assert (=> bs!1829938 (not (= lambda!387103 lambda!387095))))

(declare-fun bs!1829939 () Bool)

(assert (= bs!1829939 (and d!2152043 d!2151929)))

(assert (=> bs!1829939 (= lambda!387103 lambda!387096)))

(declare-fun bs!1829940 () Bool)

(assert (= bs!1829940 (and d!2152043 d!2151621)))

(assert (=> bs!1829940 (not (= lambda!387103 lambda!387070))))

(declare-fun bs!1829942 () Bool)

(assert (= bs!1829942 (and d!2152043 d!2151729)))

(assert (=> bs!1829942 (= lambda!387103 lambda!387083)))

(declare-fun bs!1829943 () Bool)

(assert (= bs!1829943 (and d!2152043 d!2151771)))

(assert (=> bs!1829943 (= lambda!387103 lambda!387085)))

(declare-fun bs!1829944 () Bool)

(assert (= bs!1829944 (and d!2152043 d!2151599)))

(assert (=> bs!1829944 (= lambda!387103 lambda!387065)))

(declare-fun bs!1829946 () Bool)

(assert (= bs!1829946 (and d!2152043 d!2151593)))

(assert (=> bs!1829946 (= lambda!387103 lambda!387064)))

(declare-fun bs!1829947 () Bool)

(assert (= bs!1829947 (and d!2152043 d!2151655)))

(assert (=> bs!1829947 (= lambda!387103 lambda!387078)))

(declare-fun bs!1829949 () Bool)

(assert (= bs!1829949 (and d!2152043 d!2151825)))

(assert (=> bs!1829949 (= lambda!387103 lambda!387088)))

(declare-fun bs!1829950 () Bool)

(assert (= bs!1829950 (and d!2152043 d!2151675)))

(assert (=> bs!1829950 (= lambda!387103 lambda!387079)))

(declare-fun bs!1829951 () Bool)

(assert (= bs!1829951 (and d!2152043 b!6843348)))

(assert (=> bs!1829951 (not (= lambda!387103 lambda!386978))))

(declare-fun bs!1829953 () Bool)

(assert (= bs!1829953 (and d!2152043 d!2151893)))

(assert (=> bs!1829953 (= lambda!387103 lambda!387094)))

(assert (=> bs!1829936 (not (= lambda!387103 lambda!387032))))

(declare-fun bs!1829955 () Bool)

(assert (= bs!1829955 (and d!2152043 d!2151419)))

(assert (=> bs!1829955 (= lambda!387103 lambda!387023)))

(declare-fun bs!1829957 () Bool)

(assert (= bs!1829957 (and d!2152043 d!2151587)))

(assert (=> bs!1829957 (= lambda!387103 lambda!387060)))

(assert (=> d!2152043 (= (inv!84924 (h!72637 (t!380056 (t!380056 zl!343)))) (forall!15850 (exprs!6555 (h!72637 (t!380056 (t!380056 zl!343)))) lambda!387103))))

(declare-fun bs!1829959 () Bool)

(assert (= bs!1829959 d!2152043))

(declare-fun m!7586570 () Bool)

(assert (=> bs!1829959 m!7586570))

(assert (=> b!6844746 d!2152043))

(declare-fun b!6845594 () Bool)

(declare-fun e!4128455 () Bool)

(declare-fun e!4128461 () Bool)

(assert (=> b!6845594 (= e!4128455 e!4128461)))

(declare-fun c!1274504 () Bool)

(assert (=> b!6845594 (= c!1274504 ((_ is Star!16671) (ite c!1274230 (reg!17000 lt!2455641) (ite c!1274231 (regTwo!33855 lt!2455641) (regTwo!33854 lt!2455641)))))))

(declare-fun b!6845595 () Bool)

(declare-fun e!4128456 () Bool)

(declare-fun call!623500 () Bool)

(assert (=> b!6845595 (= e!4128456 call!623500)))

(declare-fun b!6845596 () Bool)

(declare-fun res!2794839 () Bool)

(declare-fun e!4128460 () Bool)

(assert (=> b!6845596 (=> (not res!2794839) (not e!4128460))))

(declare-fun call!623502 () Bool)

(assert (=> b!6845596 (= res!2794839 call!623502)))

(declare-fun e!4128459 () Bool)

(assert (=> b!6845596 (= e!4128459 e!4128460)))

(declare-fun b!6845597 () Bool)

(assert (=> b!6845597 (= e!4128461 e!4128456)))

(declare-fun res!2794843 () Bool)

(assert (=> b!6845597 (= res!2794843 (not (nullable!6636 (reg!17000 (ite c!1274230 (reg!17000 lt!2455641) (ite c!1274231 (regTwo!33855 lt!2455641) (regTwo!33854 lt!2455641)))))))))

(assert (=> b!6845597 (=> (not res!2794843) (not e!4128456))))

(declare-fun b!6845598 () Bool)

(declare-fun e!4128458 () Bool)

(declare-fun e!4128457 () Bool)

(assert (=> b!6845598 (= e!4128458 e!4128457)))

(declare-fun res!2794840 () Bool)

(assert (=> b!6845598 (=> (not res!2794840) (not e!4128457))))

(assert (=> b!6845598 (= res!2794840 call!623502)))

(declare-fun bm!623495 () Bool)

(declare-fun call!623501 () Bool)

(assert (=> bm!623495 (= call!623501 call!623500)))

(declare-fun bm!623496 () Bool)

(declare-fun c!1274505 () Bool)

(assert (=> bm!623496 (= call!623502 (validRegex!8407 (ite c!1274505 (regOne!33855 (ite c!1274230 (reg!17000 lt!2455641) (ite c!1274231 (regTwo!33855 lt!2455641) (regTwo!33854 lt!2455641)))) (regOne!33854 (ite c!1274230 (reg!17000 lt!2455641) (ite c!1274231 (regTwo!33855 lt!2455641) (regTwo!33854 lt!2455641)))))))))

(declare-fun bm!623497 () Bool)

(assert (=> bm!623497 (= call!623500 (validRegex!8407 (ite c!1274504 (reg!17000 (ite c!1274230 (reg!17000 lt!2455641) (ite c!1274231 (regTwo!33855 lt!2455641) (regTwo!33854 lt!2455641)))) (ite c!1274505 (regTwo!33855 (ite c!1274230 (reg!17000 lt!2455641) (ite c!1274231 (regTwo!33855 lt!2455641) (regTwo!33854 lt!2455641)))) (regTwo!33854 (ite c!1274230 (reg!17000 lt!2455641) (ite c!1274231 (regTwo!33855 lt!2455641) (regTwo!33854 lt!2455641))))))))))

(declare-fun d!2152045 () Bool)

(declare-fun res!2794842 () Bool)

(assert (=> d!2152045 (=> res!2794842 e!4128455)))

(assert (=> d!2152045 (= res!2794842 ((_ is ElementMatch!16671) (ite c!1274230 (reg!17000 lt!2455641) (ite c!1274231 (regTwo!33855 lt!2455641) (regTwo!33854 lt!2455641)))))))

(assert (=> d!2152045 (= (validRegex!8407 (ite c!1274230 (reg!17000 lt!2455641) (ite c!1274231 (regTwo!33855 lt!2455641) (regTwo!33854 lt!2455641)))) e!4128455)))

(declare-fun b!6845599 () Bool)

(assert (=> b!6845599 (= e!4128461 e!4128459)))

(assert (=> b!6845599 (= c!1274505 ((_ is Union!16671) (ite c!1274230 (reg!17000 lt!2455641) (ite c!1274231 (regTwo!33855 lt!2455641) (regTwo!33854 lt!2455641)))))))

(declare-fun b!6845600 () Bool)

(assert (=> b!6845600 (= e!4128457 call!623501)))

(declare-fun b!6845601 () Bool)

(assert (=> b!6845601 (= e!4128460 call!623501)))

(declare-fun b!6845602 () Bool)

(declare-fun res!2794841 () Bool)

(assert (=> b!6845602 (=> res!2794841 e!4128458)))

(assert (=> b!6845602 (= res!2794841 (not ((_ is Concat!25516) (ite c!1274230 (reg!17000 lt!2455641) (ite c!1274231 (regTwo!33855 lt!2455641) (regTwo!33854 lt!2455641))))))))

(assert (=> b!6845602 (= e!4128459 e!4128458)))

(assert (= (and d!2152045 (not res!2794842)) b!6845594))

(assert (= (and b!6845594 c!1274504) b!6845597))

(assert (= (and b!6845594 (not c!1274504)) b!6845599))

(assert (= (and b!6845597 res!2794843) b!6845595))

(assert (= (and b!6845599 c!1274505) b!6845596))

(assert (= (and b!6845599 (not c!1274505)) b!6845602))

(assert (= (and b!6845596 res!2794839) b!6845601))

(assert (= (and b!6845602 (not res!2794841)) b!6845598))

(assert (= (and b!6845598 res!2794840) b!6845600))

(assert (= (or b!6845601 b!6845600) bm!623495))

(assert (= (or b!6845596 b!6845598) bm!623496))

(assert (= (or b!6845595 bm!623495) bm!623497))

(declare-fun m!7586572 () Bool)

(assert (=> b!6845597 m!7586572))

(declare-fun m!7586574 () Bool)

(assert (=> bm!623496 m!7586574))

(declare-fun m!7586576 () Bool)

(assert (=> bm!623497 m!7586576))

(assert (=> bm!623294 d!2152045))

(declare-fun bm!623498 () Bool)

(declare-fun call!623503 () Bool)

(declare-fun c!1274506 () Bool)

(assert (=> bm!623498 (= call!623503 (nullable!6636 (ite c!1274506 (regOne!33855 (reg!17000 r!7292)) (regOne!33854 (reg!17000 r!7292)))))))

(declare-fun b!6845603 () Bool)

(declare-fun e!4128465 () Bool)

(declare-fun e!4128464 () Bool)

(assert (=> b!6845603 (= e!4128465 e!4128464)))

(declare-fun res!2794844 () Bool)

(assert (=> b!6845603 (=> res!2794844 e!4128464)))

(assert (=> b!6845603 (= res!2794844 ((_ is Star!16671) (reg!17000 r!7292)))))

(declare-fun b!6845604 () Bool)

(declare-fun e!4128462 () Bool)

(declare-fun e!4128466 () Bool)

(assert (=> b!6845604 (= e!4128462 e!4128466)))

(declare-fun res!2794847 () Bool)

(assert (=> b!6845604 (= res!2794847 call!623503)))

(assert (=> b!6845604 (=> res!2794847 e!4128466)))

(declare-fun b!6845605 () Bool)

(assert (=> b!6845605 (= e!4128464 e!4128462)))

(assert (=> b!6845605 (= c!1274506 ((_ is Union!16671) (reg!17000 r!7292)))))

(declare-fun b!6845606 () Bool)

(declare-fun e!4128463 () Bool)

(assert (=> b!6845606 (= e!4128462 e!4128463)))

(declare-fun res!2794846 () Bool)

(assert (=> b!6845606 (= res!2794846 call!623503)))

(assert (=> b!6845606 (=> (not res!2794846) (not e!4128463))))

(declare-fun b!6845607 () Bool)

(declare-fun e!4128467 () Bool)

(assert (=> b!6845607 (= e!4128467 e!4128465)))

(declare-fun res!2794845 () Bool)

(assert (=> b!6845607 (=> (not res!2794845) (not e!4128465))))

(assert (=> b!6845607 (= res!2794845 (and (not ((_ is EmptyLang!16671) (reg!17000 r!7292))) (not ((_ is ElementMatch!16671) (reg!17000 r!7292)))))))

(declare-fun bm!623499 () Bool)

(declare-fun call!623504 () Bool)

(assert (=> bm!623499 (= call!623504 (nullable!6636 (ite c!1274506 (regTwo!33855 (reg!17000 r!7292)) (regTwo!33854 (reg!17000 r!7292)))))))

(declare-fun d!2152047 () Bool)

(declare-fun res!2794848 () Bool)

(assert (=> d!2152047 (=> res!2794848 e!4128467)))

(assert (=> d!2152047 (= res!2794848 ((_ is EmptyExpr!16671) (reg!17000 r!7292)))))

(assert (=> d!2152047 (= (nullableFct!2520 (reg!17000 r!7292)) e!4128467)))

(declare-fun b!6845608 () Bool)

(assert (=> b!6845608 (= e!4128463 call!623504)))

(declare-fun b!6845609 () Bool)

(assert (=> b!6845609 (= e!4128466 call!623504)))

(assert (= (and d!2152047 (not res!2794848)) b!6845607))

(assert (= (and b!6845607 res!2794845) b!6845603))

(assert (= (and b!6845603 (not res!2794844)) b!6845605))

(assert (= (and b!6845605 c!1274506) b!6845604))

(assert (= (and b!6845605 (not c!1274506)) b!6845606))

(assert (= (and b!6845604 (not res!2794847)) b!6845609))

(assert (= (and b!6845606 res!2794846) b!6845608))

(assert (= (or b!6845609 b!6845608) bm!623499))

(assert (= (or b!6845604 b!6845606) bm!623498))

(declare-fun m!7586578 () Bool)

(assert (=> bm!623498 m!7586578))

(declare-fun m!7586580 () Bool)

(assert (=> bm!623499 m!7586580))

(assert (=> d!2151665 d!2152047))

(declare-fun b!6845610 () Bool)

(declare-fun e!4128468 () Bool)

(declare-fun e!4128474 () Bool)

(assert (=> b!6845610 (= e!4128468 e!4128474)))

(declare-fun c!1274507 () Bool)

(assert (=> b!6845610 (= c!1274507 ((_ is Star!16671) (ite c!1274275 (regOne!33855 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))) (regOne!33854 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))))))))

(declare-fun b!6845611 () Bool)

(declare-fun e!4128469 () Bool)

(declare-fun call!623505 () Bool)

(assert (=> b!6845611 (= e!4128469 call!623505)))

(declare-fun b!6845612 () Bool)

(declare-fun res!2794849 () Bool)

(declare-fun e!4128473 () Bool)

(assert (=> b!6845612 (=> (not res!2794849) (not e!4128473))))

(declare-fun call!623507 () Bool)

(assert (=> b!6845612 (= res!2794849 call!623507)))

(declare-fun e!4128472 () Bool)

(assert (=> b!6845612 (= e!4128472 e!4128473)))

(declare-fun b!6845613 () Bool)

(assert (=> b!6845613 (= e!4128474 e!4128469)))

(declare-fun res!2794853 () Bool)

(assert (=> b!6845613 (= res!2794853 (not (nullable!6636 (reg!17000 (ite c!1274275 (regOne!33855 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))) (regOne!33854 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))))))))))

(assert (=> b!6845613 (=> (not res!2794853) (not e!4128469))))

(declare-fun b!6845614 () Bool)

(declare-fun e!4128471 () Bool)

(declare-fun e!4128470 () Bool)

(assert (=> b!6845614 (= e!4128471 e!4128470)))

(declare-fun res!2794850 () Bool)

(assert (=> b!6845614 (=> (not res!2794850) (not e!4128470))))

(assert (=> b!6845614 (= res!2794850 call!623507)))

(declare-fun bm!623500 () Bool)

(declare-fun call!623506 () Bool)

(assert (=> bm!623500 (= call!623506 call!623505)))

(declare-fun bm!623501 () Bool)

(declare-fun c!1274508 () Bool)

(assert (=> bm!623501 (= call!623507 (validRegex!8407 (ite c!1274508 (regOne!33855 (ite c!1274275 (regOne!33855 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))) (regOne!33854 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))))) (regOne!33854 (ite c!1274275 (regOne!33855 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))) (regOne!33854 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))))))))))

(declare-fun bm!623502 () Bool)

(assert (=> bm!623502 (= call!623505 (validRegex!8407 (ite c!1274507 (reg!17000 (ite c!1274275 (regOne!33855 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))) (regOne!33854 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))))) (ite c!1274508 (regTwo!33855 (ite c!1274275 (regOne!33855 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))) (regOne!33854 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))))) (regTwo!33854 (ite c!1274275 (regOne!33855 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))) (regOne!33854 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292))))))))))))

(declare-fun d!2152049 () Bool)

(declare-fun res!2794852 () Bool)

(assert (=> d!2152049 (=> res!2794852 e!4128468)))

(assert (=> d!2152049 (= res!2794852 ((_ is ElementMatch!16671) (ite c!1274275 (regOne!33855 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))) (regOne!33854 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))))))))

(assert (=> d!2152049 (= (validRegex!8407 (ite c!1274275 (regOne!33855 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))) (regOne!33854 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))))) e!4128468)))

(declare-fun b!6845615 () Bool)

(assert (=> b!6845615 (= e!4128474 e!4128472)))

(assert (=> b!6845615 (= c!1274508 ((_ is Union!16671) (ite c!1274275 (regOne!33855 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))) (regOne!33854 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))))))))

(declare-fun b!6845616 () Bool)

(assert (=> b!6845616 (= e!4128470 call!623506)))

(declare-fun b!6845617 () Bool)

(assert (=> b!6845617 (= e!4128473 call!623506)))

(declare-fun b!6845618 () Bool)

(declare-fun res!2794851 () Bool)

(assert (=> b!6845618 (=> res!2794851 e!4128471)))

(assert (=> b!6845618 (= res!2794851 (not ((_ is Concat!25516) (ite c!1274275 (regOne!33855 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292)))) (regOne!33854 (ite c!1274075 (reg!17000 r!7292) (ite c!1274076 (regTwo!33855 r!7292) (regTwo!33854 r!7292))))))))))

(assert (=> b!6845618 (= e!4128472 e!4128471)))

(assert (= (and d!2152049 (not res!2794852)) b!6845610))

(assert (= (and b!6845610 c!1274507) b!6845613))

(assert (= (and b!6845610 (not c!1274507)) b!6845615))

(assert (= (and b!6845613 res!2794853) b!6845611))

(assert (= (and b!6845615 c!1274508) b!6845612))

(assert (= (and b!6845615 (not c!1274508)) b!6845618))

(assert (= (and b!6845612 res!2794849) b!6845617))

(assert (= (and b!6845618 (not res!2794851)) b!6845614))

(assert (= (and b!6845614 res!2794850) b!6845616))

(assert (= (or b!6845617 b!6845616) bm!623500))

(assert (= (or b!6845612 b!6845614) bm!623501))

(assert (= (or b!6845611 bm!623500) bm!623502))

(declare-fun m!7586582 () Bool)

(assert (=> b!6845613 m!7586582))

(declare-fun m!7586584 () Bool)

(assert (=> bm!623501 m!7586584))

(declare-fun m!7586586 () Bool)

(assert (=> bm!623502 m!7586586))

(assert (=> bm!623317 d!2152049))

(declare-fun d!2152051 () Bool)

(assert (=> d!2152051 (= (nullable!6636 (reg!17000 lt!2455641)) (nullableFct!2520 (reg!17000 lt!2455641)))))

(declare-fun bs!1829974 () Bool)

(assert (= bs!1829974 d!2152051))

(declare-fun m!7586588 () Bool)

(assert (=> bs!1829974 m!7586588))

(assert (=> b!6844526 d!2152051))

(declare-fun d!2152053 () Bool)

(declare-fun lt!2455748 () Bool)

(assert (=> d!2152053 (= lt!2455748 (select (content!12977 (t!380056 lt!2455644)) (h!72637 lt!2455644)))))

(declare-fun e!4128475 () Bool)

(assert (=> d!2152053 (= lt!2455748 e!4128475)))

(declare-fun res!2794854 () Bool)

(assert (=> d!2152053 (=> (not res!2794854) (not e!4128475))))

(assert (=> d!2152053 (= res!2794854 ((_ is Cons!66189) (t!380056 lt!2455644)))))

(assert (=> d!2152053 (= (contains!20321 (t!380056 lt!2455644) (h!72637 lt!2455644)) lt!2455748)))

(declare-fun b!6845619 () Bool)

(declare-fun e!4128476 () Bool)

(assert (=> b!6845619 (= e!4128475 e!4128476)))

(declare-fun res!2794855 () Bool)

(assert (=> b!6845619 (=> res!2794855 e!4128476)))

(assert (=> b!6845619 (= res!2794855 (= (h!72637 (t!380056 lt!2455644)) (h!72637 lt!2455644)))))

(declare-fun b!6845620 () Bool)

(assert (=> b!6845620 (= e!4128476 (contains!20321 (t!380056 (t!380056 lt!2455644)) (h!72637 lt!2455644)))))

(assert (= (and d!2152053 res!2794854) b!6845619))

(assert (= (and b!6845619 (not res!2794855)) b!6845620))

(assert (=> d!2152053 m!7585602))

(declare-fun m!7586590 () Bool)

(assert (=> d!2152053 m!7586590))

(declare-fun m!7586592 () Bool)

(assert (=> b!6845620 m!7586592))

(assert (=> b!6844475 d!2152053))

(declare-fun bs!1829975 () Bool)

(declare-fun b!6845625 () Bool)

(assert (= bs!1829975 (and b!6845625 b!6843694)))

(declare-fun lambda!387106 () Int)

(assert (=> bs!1829975 (not (= lambda!387106 lambda!387013))))

(declare-fun bs!1829976 () Bool)

(assert (= bs!1829976 (and b!6845625 b!6845427)))

(assert (=> bs!1829976 (not (= lambda!387106 lambda!387101))))

(declare-fun bs!1829977 () Bool)

(assert (= bs!1829977 (and b!6845625 b!6843696)))

(assert (=> bs!1829977 (= (and (= (reg!17000 (regTwo!33855 (regTwo!33855 r!7292))) (reg!17000 r!7292)) (= (regTwo!33855 (regTwo!33855 r!7292)) r!7292)) (= lambda!387106 lambda!387012))))

(declare-fun bs!1829978 () Bool)

(assert (= bs!1829978 (and b!6845625 b!6845119)))

(assert (=> bs!1829978 (= (and (= (reg!17000 (regTwo!33855 (regTwo!33855 r!7292))) (reg!17000 (regTwo!33855 (regOne!33855 r!7292)))) (= (regTwo!33855 (regTwo!33855 r!7292)) (regTwo!33855 (regOne!33855 r!7292)))) (= lambda!387106 lambda!387092))))

(declare-fun bs!1829980 () Bool)

(assert (= bs!1829980 (and b!6845625 b!6844510)))

(assert (=> bs!1829980 (= (and (= (reg!17000 (regTwo!33855 (regTwo!33855 r!7292))) (reg!17000 (regOne!33855 r!7292))) (= (regTwo!33855 (regTwo!33855 r!7292)) (regOne!33855 r!7292))) (= lambda!387106 lambda!387074))))

(declare-fun bs!1829982 () Bool)

(assert (= bs!1829982 (and b!6845625 b!6845429)))

(assert (=> bs!1829982 (= (and (= (reg!17000 (regTwo!33855 (regTwo!33855 r!7292))) (reg!17000 (regOne!33855 (regOne!33855 r!7292)))) (= (regTwo!33855 (regTwo!33855 r!7292)) (regOne!33855 (regOne!33855 r!7292)))) (= lambda!387106 lambda!387099))))

(declare-fun bs!1829985 () Bool)

(assert (= bs!1829985 (and b!6845625 b!6844353)))

(assert (=> bs!1829985 (not (= lambda!387106 lambda!387059))))

(declare-fun bs!1829988 () Bool)

(assert (= bs!1829988 (and b!6845625 b!6845117)))

(assert (=> bs!1829988 (not (= lambda!387106 lambda!387093))))

(declare-fun bs!1829990 () Bool)

(assert (= bs!1829990 (and b!6845625 b!6844355)))

(assert (=> bs!1829990 (= (and (= (reg!17000 (regTwo!33855 (regTwo!33855 r!7292))) (reg!17000 (regTwo!33855 r!7292))) (= (regTwo!33855 (regTwo!33855 r!7292)) (regTwo!33855 r!7292))) (= lambda!387106 lambda!387058))))

(declare-fun bs!1829993 () Bool)

(assert (= bs!1829993 (and b!6845625 b!6844508)))

(assert (=> bs!1829993 (not (= lambda!387106 lambda!387075))))

(assert (=> b!6845625 true))

(assert (=> b!6845625 true))

(declare-fun bs!1830004 () Bool)

(declare-fun b!6845623 () Bool)

(assert (= bs!1830004 (and b!6845623 b!6843694)))

(declare-fun lambda!387108 () Int)

(assert (=> bs!1830004 (= (and (= (regOne!33854 (regTwo!33855 (regTwo!33855 r!7292))) (regOne!33854 r!7292)) (= (regTwo!33854 (regTwo!33855 (regTwo!33855 r!7292))) (regTwo!33854 r!7292))) (= lambda!387108 lambda!387013))))

(declare-fun bs!1830005 () Bool)

(assert (= bs!1830005 (and b!6845623 b!6845427)))

(assert (=> bs!1830005 (= (and (= (regOne!33854 (regTwo!33855 (regTwo!33855 r!7292))) (regOne!33854 (regOne!33855 (regOne!33855 r!7292)))) (= (regTwo!33854 (regTwo!33855 (regTwo!33855 r!7292))) (regTwo!33854 (regOne!33855 (regOne!33855 r!7292))))) (= lambda!387108 lambda!387101))))

(declare-fun bs!1830007 () Bool)

(assert (= bs!1830007 (and b!6845623 b!6845625)))

(assert (=> bs!1830007 (not (= lambda!387108 lambda!387106))))

(declare-fun bs!1830008 () Bool)

(assert (= bs!1830008 (and b!6845623 b!6843696)))

(assert (=> bs!1830008 (not (= lambda!387108 lambda!387012))))

(declare-fun bs!1830009 () Bool)

(assert (= bs!1830009 (and b!6845623 b!6845119)))

(assert (=> bs!1830009 (not (= lambda!387108 lambda!387092))))

(declare-fun bs!1830011 () Bool)

(assert (= bs!1830011 (and b!6845623 b!6844510)))

(assert (=> bs!1830011 (not (= lambda!387108 lambda!387074))))

(declare-fun bs!1830014 () Bool)

(assert (= bs!1830014 (and b!6845623 b!6845429)))

(assert (=> bs!1830014 (not (= lambda!387108 lambda!387099))))

(declare-fun bs!1830016 () Bool)

(assert (= bs!1830016 (and b!6845623 b!6844353)))

(assert (=> bs!1830016 (= (and (= (regOne!33854 (regTwo!33855 (regTwo!33855 r!7292))) (regOne!33854 (regTwo!33855 r!7292))) (= (regTwo!33854 (regTwo!33855 (regTwo!33855 r!7292))) (regTwo!33854 (regTwo!33855 r!7292)))) (= lambda!387108 lambda!387059))))

(declare-fun bs!1830019 () Bool)

(assert (= bs!1830019 (and b!6845623 b!6845117)))

(assert (=> bs!1830019 (= (and (= (regOne!33854 (regTwo!33855 (regTwo!33855 r!7292))) (regOne!33854 (regTwo!33855 (regOne!33855 r!7292)))) (= (regTwo!33854 (regTwo!33855 (regTwo!33855 r!7292))) (regTwo!33854 (regTwo!33855 (regOne!33855 r!7292))))) (= lambda!387108 lambda!387093))))

(declare-fun bs!1830022 () Bool)

(assert (= bs!1830022 (and b!6845623 b!6844355)))

(assert (=> bs!1830022 (not (= lambda!387108 lambda!387058))))

(declare-fun bs!1830024 () Bool)

(assert (= bs!1830024 (and b!6845623 b!6844508)))

(assert (=> bs!1830024 (= (and (= (regOne!33854 (regTwo!33855 (regTwo!33855 r!7292))) (regOne!33854 (regOne!33855 r!7292))) (= (regTwo!33854 (regTwo!33855 (regTwo!33855 r!7292))) (regTwo!33854 (regOne!33855 r!7292)))) (= lambda!387108 lambda!387075))))

(assert (=> b!6845623 true))

(assert (=> b!6845623 true))

(declare-fun b!6845621 () Bool)

(declare-fun e!4128482 () Bool)

(declare-fun call!623509 () Bool)

(assert (=> b!6845621 (= e!4128482 call!623509)))

(declare-fun b!6845622 () Bool)

(declare-fun e!4128477 () Bool)

(declare-fun e!4128479 () Bool)

(assert (=> b!6845622 (= e!4128477 e!4128479)))

(declare-fun c!1274509 () Bool)

(assert (=> b!6845622 (= c!1274509 ((_ is Star!16671) (regTwo!33855 (regTwo!33855 r!7292))))))

(declare-fun bm!623504 () Bool)

(assert (=> bm!623504 (= call!623509 (isEmpty!38565 s!2326))))

(declare-fun call!623508 () Bool)

(assert (=> b!6845623 (= e!4128479 call!623508)))

(declare-fun b!6845624 () Bool)

(declare-fun e!4128483 () Bool)

(assert (=> b!6845624 (= e!4128483 (= s!2326 (Cons!66190 (c!1273977 (regTwo!33855 (regTwo!33855 r!7292))) Nil!66190)))))

(declare-fun e!4128478 () Bool)

(assert (=> b!6845625 (= e!4128478 call!623508)))

(declare-fun b!6845626 () Bool)

(declare-fun c!1274511 () Bool)

(assert (=> b!6845626 (= c!1274511 ((_ is Union!16671) (regTwo!33855 (regTwo!33855 r!7292))))))

(assert (=> b!6845626 (= e!4128483 e!4128477)))

(declare-fun d!2152055 () Bool)

(declare-fun c!1274510 () Bool)

(assert (=> d!2152055 (= c!1274510 ((_ is EmptyExpr!16671) (regTwo!33855 (regTwo!33855 r!7292))))))

(assert (=> d!2152055 (= (matchRSpec!3772 (regTwo!33855 (regTwo!33855 r!7292)) s!2326) e!4128482)))

(declare-fun bm!623503 () Bool)

(assert (=> bm!623503 (= call!623508 (Exists!3735 (ite c!1274509 lambda!387106 lambda!387108)))))

(declare-fun b!6845627 () Bool)

(declare-fun res!2794858 () Bool)

(assert (=> b!6845627 (=> res!2794858 e!4128478)))

(assert (=> b!6845627 (= res!2794858 call!623509)))

(assert (=> b!6845627 (= e!4128479 e!4128478)))

(declare-fun b!6845628 () Bool)

(declare-fun c!1274512 () Bool)

(assert (=> b!6845628 (= c!1274512 ((_ is ElementMatch!16671) (regTwo!33855 (regTwo!33855 r!7292))))))

(declare-fun e!4128480 () Bool)

(assert (=> b!6845628 (= e!4128480 e!4128483)))

(declare-fun b!6845629 () Bool)

(assert (=> b!6845629 (= e!4128482 e!4128480)))

(declare-fun res!2794856 () Bool)

(assert (=> b!6845629 (= res!2794856 (not ((_ is EmptyLang!16671) (regTwo!33855 (regTwo!33855 r!7292)))))))

(assert (=> b!6845629 (=> (not res!2794856) (not e!4128480))))

(declare-fun b!6845630 () Bool)

(declare-fun e!4128481 () Bool)

(assert (=> b!6845630 (= e!4128477 e!4128481)))

(declare-fun res!2794857 () Bool)

(assert (=> b!6845630 (= res!2794857 (matchRSpec!3772 (regOne!33855 (regTwo!33855 (regTwo!33855 r!7292))) s!2326))))

(assert (=> b!6845630 (=> res!2794857 e!4128481)))

(declare-fun b!6845631 () Bool)

(assert (=> b!6845631 (= e!4128481 (matchRSpec!3772 (regTwo!33855 (regTwo!33855 (regTwo!33855 r!7292))) s!2326))))

(assert (= (and d!2152055 c!1274510) b!6845621))

(assert (= (and d!2152055 (not c!1274510)) b!6845629))

(assert (= (and b!6845629 res!2794856) b!6845628))

(assert (= (and b!6845628 c!1274512) b!6845624))

(assert (= (and b!6845628 (not c!1274512)) b!6845626))

(assert (= (and b!6845626 c!1274511) b!6845630))

(assert (= (and b!6845626 (not c!1274511)) b!6845622))

(assert (= (and b!6845630 (not res!2794857)) b!6845631))

(assert (= (and b!6845622 c!1274509) b!6845627))

(assert (= (and b!6845622 (not c!1274509)) b!6845623))

(assert (= (and b!6845627 (not res!2794858)) b!6845625))

(assert (= (or b!6845625 b!6845623) bm!623503))

(assert (= (or b!6845621 b!6845627) bm!623504))

(assert (=> bm!623504 m!7584996))

(declare-fun m!7586610 () Bool)

(assert (=> bm!623503 m!7586610))

(declare-fun m!7586612 () Bool)

(assert (=> b!6845630 m!7586612))

(declare-fun m!7586614 () Bool)

(assert (=> b!6845631 m!7586614))

(assert (=> b!6844361 d!2152055))

(declare-fun d!2152067 () Bool)

(assert (=> d!2152067 (= (nullable!6636 (regOne!33854 lt!2455564)) (nullableFct!2520 (regOne!33854 lt!2455564)))))

(declare-fun bs!1830036 () Bool)

(assert (= bs!1830036 d!2152067))

(declare-fun m!7586616 () Bool)

(assert (=> bs!1830036 m!7586616))

(assert (=> b!6844640 d!2152067))

(declare-fun d!2152069 () Bool)

(declare-fun lt!2455751 () Regex!16671)

(assert (=> d!2152069 (validRegex!8407 lt!2455751)))

(declare-fun e!4128502 () Regex!16671)

(assert (=> d!2152069 (= lt!2455751 e!4128502)))

(declare-fun c!1274522 () Bool)

(assert (=> d!2152069 (= c!1274522 (or ((_ is EmptyExpr!16671) (ite c!1274258 (regOne!33855 r!7292) (ite c!1274261 (reg!17000 r!7292) (regOne!33854 r!7292)))) ((_ is EmptyLang!16671) (ite c!1274258 (regOne!33855 r!7292) (ite c!1274261 (reg!17000 r!7292) (regOne!33854 r!7292))))))))

(assert (=> d!2152069 (validRegex!8407 (ite c!1274258 (regOne!33855 r!7292) (ite c!1274261 (reg!17000 r!7292) (regOne!33854 r!7292))))))

(assert (=> d!2152069 (= (derivativeStep!5319 (ite c!1274258 (regOne!33855 r!7292) (ite c!1274261 (reg!17000 r!7292) (regOne!33854 r!7292))) (head!13721 s!2326)) lt!2455751)))

(declare-fun e!4128500 () Regex!16671)

(declare-fun b!6845651 () Bool)

(declare-fun call!623514 () Regex!16671)

(assert (=> b!6845651 (= e!4128500 (Concat!25516 call!623514 (ite c!1274258 (regOne!33855 r!7292) (ite c!1274261 (reg!17000 r!7292) (regOne!33854 r!7292)))))))

(declare-fun bm!623507 () Bool)

(declare-fun call!623513 () Regex!16671)

(declare-fun c!1274519 () Bool)

(declare-fun c!1274518 () Bool)

(assert (=> bm!623507 (= call!623513 (derivativeStep!5319 (ite c!1274518 (regTwo!33855 (ite c!1274258 (regOne!33855 r!7292) (ite c!1274261 (reg!17000 r!7292) (regOne!33854 r!7292)))) (ite c!1274519 (regTwo!33854 (ite c!1274258 (regOne!33855 r!7292) (ite c!1274261 (reg!17000 r!7292) (regOne!33854 r!7292)))) (regOne!33854 (ite c!1274258 (regOne!33855 r!7292) (ite c!1274261 (reg!17000 r!7292) (regOne!33854 r!7292)))))) (head!13721 s!2326)))))

(declare-fun e!4128501 () Regex!16671)

(declare-fun call!623515 () Regex!16671)

(declare-fun b!6845652 () Bool)

(assert (=> b!6845652 (= e!4128501 (Union!16671 (Concat!25516 call!623515 (regTwo!33854 (ite c!1274258 (regOne!33855 r!7292) (ite c!1274261 (reg!17000 r!7292) (regOne!33854 r!7292))))) EmptyLang!16671))))

(declare-fun bm!623508 () Bool)

(declare-fun call!623512 () Regex!16671)

(assert (=> bm!623508 (= call!623514 call!623512)))

(declare-fun b!6845653 () Bool)

(declare-fun e!4128499 () Regex!16671)

(assert (=> b!6845653 (= e!4128499 (Union!16671 call!623512 call!623513))))

(declare-fun b!6845654 () Bool)

(declare-fun e!4128498 () Regex!16671)

(assert (=> b!6845654 (= e!4128502 e!4128498)))

(declare-fun c!1274520 () Bool)

(assert (=> b!6845654 (= c!1274520 ((_ is ElementMatch!16671) (ite c!1274258 (regOne!33855 r!7292) (ite c!1274261 (reg!17000 r!7292) (regOne!33854 r!7292)))))))

(declare-fun c!1274521 () Bool)

(declare-fun bm!623509 () Bool)

(assert (=> bm!623509 (= call!623512 (derivativeStep!5319 (ite c!1274518 (regOne!33855 (ite c!1274258 (regOne!33855 r!7292) (ite c!1274261 (reg!17000 r!7292) (regOne!33854 r!7292)))) (ite c!1274521 (reg!17000 (ite c!1274258 (regOne!33855 r!7292) (ite c!1274261 (reg!17000 r!7292) (regOne!33854 r!7292)))) (regOne!33854 (ite c!1274258 (regOne!33855 r!7292) (ite c!1274261 (reg!17000 r!7292) (regOne!33854 r!7292)))))) (head!13721 s!2326)))))

(declare-fun b!6845655 () Bool)

(assert (=> b!6845655 (= e!4128502 EmptyLang!16671)))

(declare-fun b!6845656 () Bool)

(assert (=> b!6845656 (= c!1274519 (nullable!6636 (regOne!33854 (ite c!1274258 (regOne!33855 r!7292) (ite c!1274261 (reg!17000 r!7292) (regOne!33854 r!7292))))))))

(assert (=> b!6845656 (= e!4128500 e!4128501)))

(declare-fun b!6845657 () Bool)

(assert (=> b!6845657 (= e!4128501 (Union!16671 (Concat!25516 call!623514 (regTwo!33854 (ite c!1274258 (regOne!33855 r!7292) (ite c!1274261 (reg!17000 r!7292) (regOne!33854 r!7292))))) call!623515))))

(declare-fun b!6845658 () Bool)

(assert (=> b!6845658 (= e!4128499 e!4128500)))

(assert (=> b!6845658 (= c!1274521 ((_ is Star!16671) (ite c!1274258 (regOne!33855 r!7292) (ite c!1274261 (reg!17000 r!7292) (regOne!33854 r!7292)))))))

(declare-fun b!6845659 () Bool)

(assert (=> b!6845659 (= e!4128498 (ite (= (head!13721 s!2326) (c!1273977 (ite c!1274258 (regOne!33855 r!7292) (ite c!1274261 (reg!17000 r!7292) (regOne!33854 r!7292))))) EmptyExpr!16671 EmptyLang!16671))))

(declare-fun b!6845660 () Bool)

(assert (=> b!6845660 (= c!1274518 ((_ is Union!16671) (ite c!1274258 (regOne!33855 r!7292) (ite c!1274261 (reg!17000 r!7292) (regOne!33854 r!7292)))))))

(assert (=> b!6845660 (= e!4128498 e!4128499)))

(declare-fun bm!623510 () Bool)

(assert (=> bm!623510 (= call!623515 call!623513)))

(assert (= (and d!2152069 c!1274522) b!6845655))

(assert (= (and d!2152069 (not c!1274522)) b!6845654))

(assert (= (and b!6845654 c!1274520) b!6845659))

(assert (= (and b!6845654 (not c!1274520)) b!6845660))

(assert (= (and b!6845660 c!1274518) b!6845653))

(assert (= (and b!6845660 (not c!1274518)) b!6845658))

(assert (= (and b!6845658 c!1274521) b!6845651))

(assert (= (and b!6845658 (not c!1274521)) b!6845656))

(assert (= (and b!6845656 c!1274519) b!6845657))

(assert (= (and b!6845656 (not c!1274519)) b!6845652))

(assert (= (or b!6845657 b!6845652) bm!623510))

(assert (= (or b!6845651 b!6845657) bm!623508))

(assert (= (or b!6845653 bm!623510) bm!623507))

(assert (= (or b!6845653 bm!623508) bm!623509))

(declare-fun m!7586636 () Bool)

(assert (=> d!2152069 m!7586636))

(declare-fun m!7586640 () Bool)

(assert (=> d!2152069 m!7586640))

(assert (=> bm!623507 m!7584998))

(declare-fun m!7586642 () Bool)

(assert (=> bm!623507 m!7586642))

(assert (=> bm!623509 m!7584998))

(declare-fun m!7586644 () Bool)

(assert (=> bm!623509 m!7586644))

(declare-fun m!7586646 () Bool)

(assert (=> b!6845656 m!7586646))

(assert (=> bm!623306 d!2152069))

(assert (=> b!6844575 d!2151755))

(assert (=> d!2151681 d!2151395))

(assert (=> d!2151681 d!2151379))

(declare-fun d!2152077 () Bool)

(declare-fun c!1274523 () Bool)

(assert (=> d!2152077 (= c!1274523 ((_ is Nil!66189) (t!380056 lt!2455644)))))

(declare-fun e!4128505 () (InoxSet Context!12110))

(assert (=> d!2152077 (= (content!12977 (t!380056 lt!2455644)) e!4128505)))

(declare-fun b!6845663 () Bool)

(assert (=> b!6845663 (= e!4128505 ((as const (Array Context!12110 Bool)) false))))

(declare-fun b!6845664 () Bool)

(assert (=> b!6845664 (= e!4128505 ((_ map or) (store ((as const (Array Context!12110 Bool)) false) (h!72637 (t!380056 lt!2455644)) true) (content!12977 (t!380056 (t!380056 lt!2455644)))))))

(assert (= (and d!2152077 c!1274523) b!6845663))

(assert (= (and d!2152077 (not c!1274523)) b!6845664))

(declare-fun m!7586652 () Bool)

(assert (=> b!6845664 m!7586652))

(declare-fun m!7586654 () Bool)

(assert (=> b!6845664 m!7586654))

(assert (=> b!6844458 d!2152077))

(assert (=> b!6844646 d!2152027))

(assert (=> b!6844630 d!2151755))

(declare-fun b!6845665 () Bool)

(declare-fun e!4128506 () Bool)

(declare-fun e!4128512 () Bool)

(assert (=> b!6845665 (= e!4128506 e!4128512)))

(declare-fun c!1274524 () Bool)

(assert (=> b!6845665 (= c!1274524 ((_ is Star!16671) (h!72636 (exprs!6555 (h!72637 zl!343)))))))

(declare-fun b!6845666 () Bool)

(declare-fun e!4128507 () Bool)

(declare-fun call!623516 () Bool)

(assert (=> b!6845666 (= e!4128507 call!623516)))

(declare-fun b!6845667 () Bool)

(declare-fun res!2794870 () Bool)

(declare-fun e!4128511 () Bool)

(assert (=> b!6845667 (=> (not res!2794870) (not e!4128511))))

(declare-fun call!623518 () Bool)

(assert (=> b!6845667 (= res!2794870 call!623518)))

(declare-fun e!4128510 () Bool)

(assert (=> b!6845667 (= e!4128510 e!4128511)))

(declare-fun b!6845668 () Bool)

(assert (=> b!6845668 (= e!4128512 e!4128507)))

(declare-fun res!2794874 () Bool)

(assert (=> b!6845668 (= res!2794874 (not (nullable!6636 (reg!17000 (h!72636 (exprs!6555 (h!72637 zl!343)))))))))

(assert (=> b!6845668 (=> (not res!2794874) (not e!4128507))))

(declare-fun b!6845669 () Bool)

(declare-fun e!4128509 () Bool)

(declare-fun e!4128508 () Bool)

(assert (=> b!6845669 (= e!4128509 e!4128508)))

(declare-fun res!2794871 () Bool)

(assert (=> b!6845669 (=> (not res!2794871) (not e!4128508))))

(assert (=> b!6845669 (= res!2794871 call!623518)))

(declare-fun bm!623511 () Bool)

(declare-fun call!623517 () Bool)

(assert (=> bm!623511 (= call!623517 call!623516)))

(declare-fun bm!623512 () Bool)

(declare-fun c!1274525 () Bool)

(assert (=> bm!623512 (= call!623518 (validRegex!8407 (ite c!1274525 (regOne!33855 (h!72636 (exprs!6555 (h!72637 zl!343)))) (regOne!33854 (h!72636 (exprs!6555 (h!72637 zl!343)))))))))

(declare-fun bm!623513 () Bool)

(assert (=> bm!623513 (= call!623516 (validRegex!8407 (ite c!1274524 (reg!17000 (h!72636 (exprs!6555 (h!72637 zl!343)))) (ite c!1274525 (regTwo!33855 (h!72636 (exprs!6555 (h!72637 zl!343)))) (regTwo!33854 (h!72636 (exprs!6555 (h!72637 zl!343))))))))))

(declare-fun d!2152081 () Bool)

(declare-fun res!2794873 () Bool)

(assert (=> d!2152081 (=> res!2794873 e!4128506)))

(assert (=> d!2152081 (= res!2794873 ((_ is ElementMatch!16671) (h!72636 (exprs!6555 (h!72637 zl!343)))))))

(assert (=> d!2152081 (= (validRegex!8407 (h!72636 (exprs!6555 (h!72637 zl!343)))) e!4128506)))

(declare-fun b!6845670 () Bool)

(assert (=> b!6845670 (= e!4128512 e!4128510)))

(assert (=> b!6845670 (= c!1274525 ((_ is Union!16671) (h!72636 (exprs!6555 (h!72637 zl!343)))))))

(declare-fun b!6845671 () Bool)

(assert (=> b!6845671 (= e!4128508 call!623517)))

(declare-fun b!6845672 () Bool)

(assert (=> b!6845672 (= e!4128511 call!623517)))

(declare-fun b!6845673 () Bool)

(declare-fun res!2794872 () Bool)

(assert (=> b!6845673 (=> res!2794872 e!4128509)))

(assert (=> b!6845673 (= res!2794872 (not ((_ is Concat!25516) (h!72636 (exprs!6555 (h!72637 zl!343))))))))

(assert (=> b!6845673 (= e!4128510 e!4128509)))

(assert (= (and d!2152081 (not res!2794873)) b!6845665))

(assert (= (and b!6845665 c!1274524) b!6845668))

(assert (= (and b!6845665 (not c!1274524)) b!6845670))

(assert (= (and b!6845668 res!2794874) b!6845666))

(assert (= (and b!6845670 c!1274525) b!6845667))

(assert (= (and b!6845670 (not c!1274525)) b!6845673))

(assert (= (and b!6845667 res!2794870) b!6845672))

(assert (= (and b!6845673 (not res!2794872)) b!6845669))

(assert (= (and b!6845669 res!2794871) b!6845671))

(assert (= (or b!6845672 b!6845671) bm!623511))

(assert (= (or b!6845667 b!6845669) bm!623512))

(assert (= (or b!6845666 bm!623511) bm!623513))

(declare-fun m!7586656 () Bool)

(assert (=> b!6845668 m!7586656))

(declare-fun m!7586658 () Bool)

(assert (=> bm!623512 m!7586658))

(declare-fun m!7586662 () Bool)

(assert (=> bm!623513 m!7586662))

(assert (=> bs!1829631 d!2152081))

(assert (=> bm!623279 d!2151603))

(declare-fun b!6845674 () Bool)

(declare-fun e!4128513 () Bool)

(declare-fun e!4128519 () Bool)

(assert (=> b!6845674 (= e!4128513 e!4128519)))

(declare-fun c!1274526 () Bool)

(assert (=> b!6845674 (= c!1274526 ((_ is Star!16671) (ite c!1274264 (regOne!33855 lt!2455637) (regOne!33854 lt!2455637))))))

(declare-fun b!6845675 () Bool)

(declare-fun e!4128514 () Bool)

(declare-fun call!623519 () Bool)

(assert (=> b!6845675 (= e!4128514 call!623519)))

(declare-fun b!6845676 () Bool)

(declare-fun res!2794875 () Bool)

(declare-fun e!4128518 () Bool)

(assert (=> b!6845676 (=> (not res!2794875) (not e!4128518))))

(declare-fun call!623521 () Bool)

(assert (=> b!6845676 (= res!2794875 call!623521)))

(declare-fun e!4128517 () Bool)

(assert (=> b!6845676 (= e!4128517 e!4128518)))

(declare-fun b!6845677 () Bool)

(assert (=> b!6845677 (= e!4128519 e!4128514)))

(declare-fun res!2794879 () Bool)

(assert (=> b!6845677 (= res!2794879 (not (nullable!6636 (reg!17000 (ite c!1274264 (regOne!33855 lt!2455637) (regOne!33854 lt!2455637))))))))

(assert (=> b!6845677 (=> (not res!2794879) (not e!4128514))))

(declare-fun b!6845678 () Bool)

(declare-fun e!4128516 () Bool)

(declare-fun e!4128515 () Bool)

(assert (=> b!6845678 (= e!4128516 e!4128515)))

(declare-fun res!2794876 () Bool)

(assert (=> b!6845678 (=> (not res!2794876) (not e!4128515))))

(assert (=> b!6845678 (= res!2794876 call!623521)))

(declare-fun bm!623514 () Bool)

(declare-fun call!623520 () Bool)

(assert (=> bm!623514 (= call!623520 call!623519)))

(declare-fun c!1274527 () Bool)

(declare-fun bm!623515 () Bool)

(assert (=> bm!623515 (= call!623521 (validRegex!8407 (ite c!1274527 (regOne!33855 (ite c!1274264 (regOne!33855 lt!2455637) (regOne!33854 lt!2455637))) (regOne!33854 (ite c!1274264 (regOne!33855 lt!2455637) (regOne!33854 lt!2455637))))))))

(declare-fun bm!623516 () Bool)

(assert (=> bm!623516 (= call!623519 (validRegex!8407 (ite c!1274526 (reg!17000 (ite c!1274264 (regOne!33855 lt!2455637) (regOne!33854 lt!2455637))) (ite c!1274527 (regTwo!33855 (ite c!1274264 (regOne!33855 lt!2455637) (regOne!33854 lt!2455637))) (regTwo!33854 (ite c!1274264 (regOne!33855 lt!2455637) (regOne!33854 lt!2455637)))))))))

(declare-fun d!2152085 () Bool)

(declare-fun res!2794878 () Bool)

(assert (=> d!2152085 (=> res!2794878 e!4128513)))

(assert (=> d!2152085 (= res!2794878 ((_ is ElementMatch!16671) (ite c!1274264 (regOne!33855 lt!2455637) (regOne!33854 lt!2455637))))))

(assert (=> d!2152085 (= (validRegex!8407 (ite c!1274264 (regOne!33855 lt!2455637) (regOne!33854 lt!2455637))) e!4128513)))

(declare-fun b!6845679 () Bool)

(assert (=> b!6845679 (= e!4128519 e!4128517)))

(assert (=> b!6845679 (= c!1274527 ((_ is Union!16671) (ite c!1274264 (regOne!33855 lt!2455637) (regOne!33854 lt!2455637))))))

(declare-fun b!6845680 () Bool)

(assert (=> b!6845680 (= e!4128515 call!623520)))

(declare-fun b!6845681 () Bool)

(assert (=> b!6845681 (= e!4128518 call!623520)))

(declare-fun b!6845682 () Bool)

(declare-fun res!2794877 () Bool)

(assert (=> b!6845682 (=> res!2794877 e!4128516)))

(assert (=> b!6845682 (= res!2794877 (not ((_ is Concat!25516) (ite c!1274264 (regOne!33855 lt!2455637) (regOne!33854 lt!2455637)))))))

(assert (=> b!6845682 (= e!4128517 e!4128516)))

(assert (= (and d!2152085 (not res!2794878)) b!6845674))

(assert (= (and b!6845674 c!1274526) b!6845677))

(assert (= (and b!6845674 (not c!1274526)) b!6845679))

(assert (= (and b!6845677 res!2794879) b!6845675))

(assert (= (and b!6845679 c!1274527) b!6845676))

(assert (= (and b!6845679 (not c!1274527)) b!6845682))

(assert (= (and b!6845676 res!2794875) b!6845681))

(assert (= (and b!6845682 (not res!2794877)) b!6845678))

(assert (= (and b!6845678 res!2794876) b!6845680))

(assert (= (or b!6845681 b!6845680) bm!623514))

(assert (= (or b!6845676 b!6845678) bm!623515))

(assert (= (or b!6845675 bm!623514) bm!623516))

(declare-fun m!7586664 () Bool)

(assert (=> b!6845677 m!7586664))

(declare-fun m!7586666 () Bool)

(assert (=> bm!623515 m!7586666))

(declare-fun m!7586668 () Bool)

(assert (=> bm!623516 m!7586668))

(assert (=> bm!623309 d!2152085))

(declare-fun d!2152087 () Bool)

(assert (=> d!2152087 (= (head!13723 (unfocusZipperList!2088 zl!343)) (h!72636 (unfocusZipperList!2088 zl!343)))))

(assert (=> b!6844552 d!2152087))

(assert (=> b!6844622 d!2151755))

(declare-fun b!6845692 () Bool)

(declare-fun e!4128532 () Bool)

(assert (=> b!6845692 (= e!4128532 (matchR!8854 (derivativeStep!5319 lt!2455688 (head!13721 s!2326)) (tail!12800 s!2326)))))

(declare-fun b!6845693 () Bool)

(declare-fun e!4128530 () Bool)

(assert (=> b!6845693 (= e!4128530 (= (head!13721 s!2326) (c!1273977 lt!2455688)))))

(declare-fun b!6845694 () Bool)

(declare-fun e!4128533 () Bool)

(declare-fun e!4128529 () Bool)

(assert (=> b!6845694 (= e!4128533 e!4128529)))

(declare-fun c!1274531 () Bool)

(assert (=> b!6845694 (= c!1274531 ((_ is EmptyLang!16671) lt!2455688))))

(declare-fun b!6845695 () Bool)

(declare-fun lt!2455752 () Bool)

(assert (=> b!6845695 (= e!4128529 (not lt!2455752))))

(declare-fun b!6845696 () Bool)

(declare-fun e!4128527 () Bool)

(declare-fun e!4128531 () Bool)

(assert (=> b!6845696 (= e!4128527 e!4128531)))

(declare-fun res!2794885 () Bool)

(assert (=> b!6845696 (=> (not res!2794885) (not e!4128531))))

(assert (=> b!6845696 (= res!2794885 (not lt!2455752))))

(declare-fun bm!623520 () Bool)

(declare-fun call!623525 () Bool)

(assert (=> bm!623520 (= call!623525 (isEmpty!38565 s!2326))))

(declare-fun b!6845697 () Bool)

(declare-fun e!4128528 () Bool)

(assert (=> b!6845697 (= e!4128531 e!4128528)))

(declare-fun res!2794887 () Bool)

(assert (=> b!6845697 (=> res!2794887 e!4128528)))

(assert (=> b!6845697 (= res!2794887 call!623525)))

(declare-fun b!6845698 () Bool)

(assert (=> b!6845698 (= e!4128533 (= lt!2455752 call!623525))))

(declare-fun b!6845699 () Bool)

(declare-fun res!2794889 () Bool)

(assert (=> b!6845699 (=> res!2794889 e!4128528)))

(assert (=> b!6845699 (= res!2794889 (not (isEmpty!38565 (tail!12800 s!2326))))))

(declare-fun b!6845700 () Bool)

(declare-fun res!2794892 () Bool)

(assert (=> b!6845700 (=> (not res!2794892) (not e!4128530))))

(assert (=> b!6845700 (= res!2794892 (not call!623525))))

(declare-fun d!2152089 () Bool)

(assert (=> d!2152089 e!4128533))

(declare-fun c!1274530 () Bool)

(assert (=> d!2152089 (= c!1274530 ((_ is EmptyExpr!16671) lt!2455688))))

(assert (=> d!2152089 (= lt!2455752 e!4128532)))

(declare-fun c!1274532 () Bool)

(assert (=> d!2152089 (= c!1274532 (isEmpty!38565 s!2326))))

(assert (=> d!2152089 (validRegex!8407 lt!2455688)))

(assert (=> d!2152089 (= (matchR!8854 lt!2455688 s!2326) lt!2455752)))

(declare-fun b!6845701 () Bool)

(assert (=> b!6845701 (= e!4128528 (not (= (head!13721 s!2326) (c!1273977 lt!2455688))))))

(declare-fun b!6845702 () Bool)

(declare-fun res!2794886 () Bool)

(assert (=> b!6845702 (=> res!2794886 e!4128527)))

(assert (=> b!6845702 (= res!2794886 e!4128530)))

(declare-fun res!2794888 () Bool)

(assert (=> b!6845702 (=> (not res!2794888) (not e!4128530))))

(assert (=> b!6845702 (= res!2794888 lt!2455752)))

(declare-fun b!6845703 () Bool)

(assert (=> b!6845703 (= e!4128532 (nullable!6636 lt!2455688))))

(declare-fun b!6845704 () Bool)

(declare-fun res!2794890 () Bool)

(assert (=> b!6845704 (=> (not res!2794890) (not e!4128530))))

(assert (=> b!6845704 (= res!2794890 (isEmpty!38565 (tail!12800 s!2326)))))

(declare-fun b!6845705 () Bool)

(declare-fun res!2794891 () Bool)

(assert (=> b!6845705 (=> res!2794891 e!4128527)))

(assert (=> b!6845705 (= res!2794891 (not ((_ is ElementMatch!16671) lt!2455688)))))

(assert (=> b!6845705 (= e!4128529 e!4128527)))

(assert (= (and d!2152089 c!1274532) b!6845703))

(assert (= (and d!2152089 (not c!1274532)) b!6845692))

(assert (= (and d!2152089 c!1274530) b!6845698))

(assert (= (and d!2152089 (not c!1274530)) b!6845694))

(assert (= (and b!6845694 c!1274531) b!6845695))

(assert (= (and b!6845694 (not c!1274531)) b!6845705))

(assert (= (and b!6845705 (not res!2794891)) b!6845702))

(assert (= (and b!6845702 res!2794888) b!6845700))

(assert (= (and b!6845700 res!2794892) b!6845704))

(assert (= (and b!6845704 res!2794890) b!6845693))

(assert (= (and b!6845702 (not res!2794886)) b!6845696))

(assert (= (and b!6845696 res!2794885) b!6845697))

(assert (= (and b!6845697 (not res!2794887)) b!6845699))

(assert (= (and b!6845699 (not res!2794889)) b!6845701))

(assert (= (or b!6845698 b!6845697 b!6845700) bm!623520))

(assert (=> bm!623520 m!7584996))

(assert (=> d!2152089 m!7584996))

(assert (=> d!2152089 m!7585766))

(assert (=> b!6845693 m!7584998))

(assert (=> b!6845704 m!7585000))

(assert (=> b!6845704 m!7585000))

(assert (=> b!6845704 m!7585002))

(declare-fun m!7586676 () Bool)

(assert (=> b!6845703 m!7586676))

(assert (=> b!6845701 m!7584998))

(assert (=> b!6845692 m!7584998))

(assert (=> b!6845692 m!7584998))

(declare-fun m!7586678 () Bool)

(assert (=> b!6845692 m!7586678))

(assert (=> b!6845692 m!7585000))

(assert (=> b!6845692 m!7586678))

(assert (=> b!6845692 m!7585000))

(declare-fun m!7586680 () Bool)

(assert (=> b!6845692 m!7586680))

(assert (=> b!6845699 m!7585000))

(assert (=> b!6845699 m!7585000))

(assert (=> b!6845699 m!7585002))

(assert (=> b!6844772 d!2152089))

(declare-fun d!2152093 () Bool)

(assert (=> d!2152093 (= (isConcat!1526 lt!2455680) ((_ is Concat!25516) lt!2455680))))

(assert (=> b!6844389 d!2152093))

(declare-fun d!2152095 () Bool)

(declare-fun e!4128543 () Bool)

(assert (=> d!2152095 e!4128543))

(declare-fun res!2794896 () Bool)

(assert (=> d!2152095 (=> (not res!2794896) (not e!4128543))))

(declare-fun lt!2455755 () Context!12110)

(assert (=> d!2152095 (= res!2794896 (dynLambda!26448 lambda!386979 lt!2455755))))

(declare-fun e!4128541 () Context!12110)

(assert (=> d!2152095 (= lt!2455755 e!4128541)))

(declare-fun c!1274537 () Bool)

(declare-fun e!4128542 () Bool)

(assert (=> d!2152095 (= c!1274537 e!4128542)))

(declare-fun res!2794895 () Bool)

(assert (=> d!2152095 (=> (not res!2794895) (not e!4128542))))

(assert (=> d!2152095 (= res!2794895 ((_ is Cons!66189) (t!380056 (t!380056 zl!343))))))

(assert (=> d!2152095 (exists!2768 (t!380056 (t!380056 zl!343)) lambda!386979)))

(assert (=> d!2152095 (= (getWitness!938 (t!380056 (t!380056 zl!343)) lambda!386979) lt!2455755)))

(declare-fun b!6845716 () Bool)

(declare-fun e!4128540 () Context!12110)

(assert (=> b!6845716 (= e!4128540 (getWitness!938 (t!380056 (t!380056 (t!380056 zl!343))) lambda!386979))))

(declare-fun b!6845717 () Bool)

(assert (=> b!6845717 (= e!4128542 (dynLambda!26448 lambda!386979 (h!72637 (t!380056 (t!380056 zl!343)))))))

(declare-fun b!6845718 () Bool)

(declare-fun lt!2455754 () Unit!160045)

(declare-fun Unit!160057 () Unit!160045)

(assert (=> b!6845718 (= lt!2455754 Unit!160057)))

(assert (=> b!6845718 false))

(assert (=> b!6845718 (= e!4128540 (head!13722 (t!380056 (t!380056 zl!343))))))

(declare-fun b!6845719 () Bool)

(assert (=> b!6845719 (= e!4128543 (contains!20321 (t!380056 (t!380056 zl!343)) lt!2455755))))

(declare-fun b!6845720 () Bool)

(assert (=> b!6845720 (= e!4128541 e!4128540)))

(declare-fun c!1274538 () Bool)

(assert (=> b!6845720 (= c!1274538 ((_ is Cons!66189) (t!380056 (t!380056 zl!343))))))

(declare-fun b!6845721 () Bool)

(assert (=> b!6845721 (= e!4128541 (h!72637 (t!380056 (t!380056 zl!343))))))

(assert (= (and d!2152095 res!2794895) b!6845717))

(assert (= (and d!2152095 c!1274537) b!6845721))

(assert (= (and d!2152095 (not c!1274537)) b!6845720))

(assert (= (and b!6845720 c!1274538) b!6845716))

(assert (= (and b!6845720 (not c!1274538)) b!6845718))

(assert (= (and d!2152095 res!2794896) b!6845719))

(declare-fun b_lambda!258249 () Bool)

(assert (=> (not b_lambda!258249) (not d!2152095)))

(declare-fun b_lambda!258251 () Bool)

(assert (=> (not b_lambda!258251) (not b!6845717)))

(declare-fun m!7586682 () Bool)

(assert (=> d!2152095 m!7586682))

(declare-fun m!7586684 () Bool)

(assert (=> d!2152095 m!7586684))

(declare-fun m!7586686 () Bool)

(assert (=> b!6845716 m!7586686))

(declare-fun m!7586688 () Bool)

(assert (=> b!6845717 m!7586688))

(declare-fun m!7586690 () Bool)

(assert (=> b!6845718 m!7586690))

(declare-fun m!7586692 () Bool)

(assert (=> b!6845719 m!7586692))

(assert (=> b!6844437 d!2152095))

(assert (=> b!6844398 d!2151771))

(declare-fun bs!1830066 () Bool)

(declare-fun d!2152097 () Bool)

(assert (= bs!1830066 (and d!2152097 d!2151591)))

(declare-fun lambda!387112 () Int)

(assert (=> bs!1830066 (= lambda!387112 lambda!387063)))

(declare-fun bs!1830067 () Bool)

(assert (= bs!1830067 (and d!2152097 d!2151623)))

(assert (=> bs!1830067 (not (= lambda!387112 lambda!387073))))

(declare-fun bs!1830068 () Bool)

(assert (= bs!1830068 (and d!2152097 d!2151417)))

(assert (=> bs!1830068 (= lambda!387112 lambda!387022)))

(declare-fun bs!1830069 () Bool)

(assert (= bs!1830069 (and d!2152097 d!2151423)))

(assert (=> bs!1830069 (not (= lambda!387112 lambda!387026))))

(declare-fun bs!1830070 () Bool)

(assert (= bs!1830070 (and d!2152097 d!2151425)))

(assert (=> bs!1830070 (= lambda!387112 lambda!387031)))

(declare-fun bs!1830071 () Bool)

(assert (= bs!1830071 (and d!2152097 d!2152017)))

(assert (=> bs!1830071 (= lambda!387112 lambda!387102)))

(declare-fun bs!1830072 () Bool)

(assert (= bs!1830072 (and d!2152097 d!2151905)))

(assert (=> bs!1830072 (not (= lambda!387112 lambda!387095))))

(declare-fun bs!1830073 () Bool)

(assert (= bs!1830073 (and d!2152097 d!2151929)))

(assert (=> bs!1830073 (= lambda!387112 lambda!387096)))

(declare-fun bs!1830074 () Bool)

(assert (= bs!1830074 (and d!2152097 d!2151427)))

(assert (=> bs!1830074 (= lambda!387112 lambda!387035)))

(declare-fun bs!1830075 () Bool)

(assert (= bs!1830075 (and d!2152097 d!2152043)))

(assert (=> bs!1830075 (= lambda!387112 lambda!387103)))

(declare-fun bs!1830076 () Bool)

(assert (= bs!1830076 (and d!2152097 d!2151621)))

(assert (=> bs!1830076 (not (= lambda!387112 lambda!387070))))

(declare-fun bs!1830077 () Bool)

(assert (= bs!1830077 (and d!2152097 d!2151729)))

(assert (=> bs!1830077 (= lambda!387112 lambda!387083)))

(declare-fun bs!1830078 () Bool)

(assert (= bs!1830078 (and d!2152097 d!2151771)))

(assert (=> bs!1830078 (= lambda!387112 lambda!387085)))

(declare-fun bs!1830079 () Bool)

(assert (= bs!1830079 (and d!2152097 d!2151599)))

(assert (=> bs!1830079 (= lambda!387112 lambda!387065)))

(declare-fun bs!1830080 () Bool)

(assert (= bs!1830080 (and d!2152097 d!2151593)))

(assert (=> bs!1830080 (= lambda!387112 lambda!387064)))

(declare-fun bs!1830081 () Bool)

(assert (= bs!1830081 (and d!2152097 d!2151655)))

(assert (=> bs!1830081 (= lambda!387112 lambda!387078)))

(declare-fun bs!1830082 () Bool)

(assert (= bs!1830082 (and d!2152097 d!2151825)))

(assert (=> bs!1830082 (= lambda!387112 lambda!387088)))

(declare-fun bs!1830083 () Bool)

(assert (= bs!1830083 (and d!2152097 d!2151675)))

(assert (=> bs!1830083 (= lambda!387112 lambda!387079)))

(declare-fun bs!1830084 () Bool)

(assert (= bs!1830084 (and d!2152097 b!6843348)))

(assert (=> bs!1830084 (not (= lambda!387112 lambda!386978))))

(declare-fun bs!1830085 () Bool)

(assert (= bs!1830085 (and d!2152097 d!2151893)))

(assert (=> bs!1830085 (= lambda!387112 lambda!387094)))

(assert (=> bs!1830070 (not (= lambda!387112 lambda!387032))))

(declare-fun bs!1830086 () Bool)

(assert (= bs!1830086 (and d!2152097 d!2151419)))

(assert (=> bs!1830086 (= lambda!387112 lambda!387023)))

(declare-fun bs!1830087 () Bool)

(assert (= bs!1830087 (and d!2152097 d!2151587)))

(assert (=> bs!1830087 (= lambda!387112 lambda!387060)))

(declare-fun lt!2455756 () List!66312)

(assert (=> d!2152097 (forall!15850 lt!2455756 lambda!387112)))

(declare-fun e!4128544 () List!66312)

(assert (=> d!2152097 (= lt!2455756 e!4128544)))

(declare-fun c!1274539 () Bool)

(assert (=> d!2152097 (= c!1274539 ((_ is Cons!66189) (t!380056 (t!380056 zl!343))))))

(assert (=> d!2152097 (= (unfocusZipperList!2088 (t!380056 (t!380056 zl!343))) lt!2455756)))

(declare-fun b!6845722 () Bool)

(assert (=> b!6845722 (= e!4128544 (Cons!66188 (generalisedConcat!2264 (exprs!6555 (h!72637 (t!380056 (t!380056 zl!343))))) (unfocusZipperList!2088 (t!380056 (t!380056 (t!380056 zl!343))))))))

(declare-fun b!6845723 () Bool)

(assert (=> b!6845723 (= e!4128544 Nil!66188)))

(assert (= (and d!2152097 c!1274539) b!6845722))

(assert (= (and d!2152097 (not c!1274539)) b!6845723))

(declare-fun m!7586730 () Bool)

(assert (=> d!2152097 m!7586730))

(declare-fun m!7586732 () Bool)

(assert (=> b!6845722 m!7586732))

(declare-fun m!7586734 () Bool)

(assert (=> b!6845722 m!7586734))

(assert (=> b!6844398 d!2152097))

(declare-fun b!6845753 () Bool)

(declare-fun e!4128568 () Bool)

(declare-fun e!4128574 () Bool)

(assert (=> b!6845753 (= e!4128568 e!4128574)))

(declare-fun c!1274546 () Bool)

(assert (=> b!6845753 (= c!1274546 ((_ is Star!16671) lt!2455693))))

(declare-fun b!6845754 () Bool)

(declare-fun e!4128569 () Bool)

(declare-fun call!623535 () Bool)

(assert (=> b!6845754 (= e!4128569 call!623535)))

(declare-fun b!6845755 () Bool)

(declare-fun res!2794914 () Bool)

(declare-fun e!4128573 () Bool)

(assert (=> b!6845755 (=> (not res!2794914) (not e!4128573))))

(declare-fun call!623537 () Bool)

(assert (=> b!6845755 (= res!2794914 call!623537)))

(declare-fun e!4128572 () Bool)

(assert (=> b!6845755 (= e!4128572 e!4128573)))

(declare-fun b!6845756 () Bool)

(assert (=> b!6845756 (= e!4128574 e!4128569)))

(declare-fun res!2794918 () Bool)

(assert (=> b!6845756 (= res!2794918 (not (nullable!6636 (reg!17000 lt!2455693))))))

(assert (=> b!6845756 (=> (not res!2794918) (not e!4128569))))

(declare-fun b!6845757 () Bool)

(declare-fun e!4128571 () Bool)

(declare-fun e!4128570 () Bool)

(assert (=> b!6845757 (= e!4128571 e!4128570)))

(declare-fun res!2794915 () Bool)

(assert (=> b!6845757 (=> (not res!2794915) (not e!4128570))))

(assert (=> b!6845757 (= res!2794915 call!623537)))

(declare-fun bm!623530 () Bool)

(declare-fun call!623536 () Bool)

(assert (=> bm!623530 (= call!623536 call!623535)))

(declare-fun bm!623531 () Bool)

(declare-fun c!1274547 () Bool)

(assert (=> bm!623531 (= call!623537 (validRegex!8407 (ite c!1274547 (regOne!33855 lt!2455693) (regOne!33854 lt!2455693))))))

(declare-fun bm!623532 () Bool)

(assert (=> bm!623532 (= call!623535 (validRegex!8407 (ite c!1274546 (reg!17000 lt!2455693) (ite c!1274547 (regTwo!33855 lt!2455693) (regTwo!33854 lt!2455693)))))))

(declare-fun d!2152107 () Bool)

(declare-fun res!2794917 () Bool)

(assert (=> d!2152107 (=> res!2794917 e!4128568)))

(assert (=> d!2152107 (= res!2794917 ((_ is ElementMatch!16671) lt!2455693))))

(assert (=> d!2152107 (= (validRegex!8407 lt!2455693) e!4128568)))

(declare-fun b!6845758 () Bool)

(assert (=> b!6845758 (= e!4128574 e!4128572)))

(assert (=> b!6845758 (= c!1274547 ((_ is Union!16671) lt!2455693))))

(declare-fun b!6845759 () Bool)

(assert (=> b!6845759 (= e!4128570 call!623536)))

(declare-fun b!6845760 () Bool)

(assert (=> b!6845760 (= e!4128573 call!623536)))

(declare-fun b!6845761 () Bool)

(declare-fun res!2794916 () Bool)

(assert (=> b!6845761 (=> res!2794916 e!4128571)))

(assert (=> b!6845761 (= res!2794916 (not ((_ is Concat!25516) lt!2455693)))))

(assert (=> b!6845761 (= e!4128572 e!4128571)))

(assert (= (and d!2152107 (not res!2794917)) b!6845753))

(assert (= (and b!6845753 c!1274546) b!6845756))

(assert (= (and b!6845753 (not c!1274546)) b!6845758))

(assert (= (and b!6845756 res!2794918) b!6845754))

(assert (= (and b!6845758 c!1274547) b!6845755))

(assert (= (and b!6845758 (not c!1274547)) b!6845761))

(assert (= (and b!6845755 res!2794914) b!6845760))

(assert (= (and b!6845761 (not res!2794916)) b!6845757))

(assert (= (and b!6845757 res!2794915) b!6845759))

(assert (= (or b!6845760 b!6845759) bm!623530))

(assert (= (or b!6845755 b!6845757) bm!623531))

(assert (= (or b!6845754 bm!623530) bm!623532))

(declare-fun m!7586736 () Bool)

(assert (=> b!6845756 m!7586736))

(declare-fun m!7586738 () Bool)

(assert (=> bm!623531 m!7586738))

(declare-fun m!7586742 () Bool)

(assert (=> bm!623532 m!7586742))

(assert (=> d!2151655 d!2152107))

(declare-fun d!2152109 () Bool)

(declare-fun res!2794919 () Bool)

(declare-fun e!4128575 () Bool)

(assert (=> d!2152109 (=> res!2794919 e!4128575)))

(assert (=> d!2152109 (= res!2794919 ((_ is Nil!66188) (unfocusZipperList!2088 zl!343)))))

(assert (=> d!2152109 (= (forall!15850 (unfocusZipperList!2088 zl!343) lambda!387078) e!4128575)))

(declare-fun b!6845762 () Bool)

(declare-fun e!4128576 () Bool)

(assert (=> b!6845762 (= e!4128575 e!4128576)))

(declare-fun res!2794920 () Bool)

(assert (=> b!6845762 (=> (not res!2794920) (not e!4128576))))

(assert (=> b!6845762 (= res!2794920 (dynLambda!26449 lambda!387078 (h!72636 (unfocusZipperList!2088 zl!343))))))

(declare-fun b!6845763 () Bool)

(assert (=> b!6845763 (= e!4128576 (forall!15850 (t!380055 (unfocusZipperList!2088 zl!343)) lambda!387078))))

(assert (= (and d!2152109 (not res!2794919)) b!6845762))

(assert (= (and b!6845762 res!2794920) b!6845763))

(declare-fun b_lambda!258255 () Bool)

(assert (=> (not b_lambda!258255) (not b!6845762)))

(declare-fun m!7586750 () Bool)

(assert (=> b!6845762 m!7586750))

(declare-fun m!7586752 () Bool)

(assert (=> b!6845763 m!7586752))

(assert (=> d!2151655 d!2152109))

(declare-fun d!2152117 () Bool)

(declare-fun res!2794926 () Bool)

(declare-fun e!4128584 () Bool)

(assert (=> d!2152117 (=> res!2794926 e!4128584)))

(assert (=> d!2152117 (= res!2794926 ((_ is Nil!66188) lt!2455681))))

(assert (=> d!2152117 (= (forall!15850 lt!2455681 lambda!387064) e!4128584)))

(declare-fun b!6845773 () Bool)

(declare-fun e!4128585 () Bool)

(assert (=> b!6845773 (= e!4128584 e!4128585)))

(declare-fun res!2794927 () Bool)

(assert (=> b!6845773 (=> (not res!2794927) (not e!4128585))))

(assert (=> b!6845773 (= res!2794927 (dynLambda!26449 lambda!387064 (h!72636 lt!2455681)))))

(declare-fun b!6845774 () Bool)

(assert (=> b!6845774 (= e!4128585 (forall!15850 (t!380055 lt!2455681) lambda!387064))))

(assert (= (and d!2152117 (not res!2794926)) b!6845773))

(assert (= (and b!6845773 res!2794927) b!6845774))

(declare-fun b_lambda!258257 () Bool)

(assert (=> (not b_lambda!258257) (not b!6845773)))

(declare-fun m!7586754 () Bool)

(assert (=> b!6845773 m!7586754))

(declare-fun m!7586756 () Bool)

(assert (=> b!6845774 m!7586756))

(assert (=> d!2151593 d!2152117))

(declare-fun d!2152119 () Bool)

(declare-fun res!2794928 () Bool)

(declare-fun e!4128586 () Bool)

(assert (=> d!2152119 (=> res!2794928 e!4128586)))

(assert (=> d!2152119 (= res!2794928 ((_ is Nil!66188) (t!380055 (exprs!6555 setElem!47059))))))

(assert (=> d!2152119 (= (forall!15850 (t!380055 (exprs!6555 setElem!47059)) lambda!387023) e!4128586)))

(declare-fun b!6845775 () Bool)

(declare-fun e!4128587 () Bool)

(assert (=> b!6845775 (= e!4128586 e!4128587)))

(declare-fun res!2794929 () Bool)

(assert (=> b!6845775 (=> (not res!2794929) (not e!4128587))))

(assert (=> b!6845775 (= res!2794929 (dynLambda!26449 lambda!387023 (h!72636 (t!380055 (exprs!6555 setElem!47059)))))))

(declare-fun b!6845776 () Bool)

(assert (=> b!6845776 (= e!4128587 (forall!15850 (t!380055 (t!380055 (exprs!6555 setElem!47059))) lambda!387023))))

(assert (= (and d!2152119 (not res!2794928)) b!6845775))

(assert (= (and b!6845775 res!2794929) b!6845776))

(declare-fun b_lambda!258259 () Bool)

(assert (=> (not b_lambda!258259) (not b!6845775)))

(declare-fun m!7586764 () Bool)

(assert (=> b!6845775 m!7586764))

(declare-fun m!7586766 () Bool)

(assert (=> b!6845776 m!7586766))

(assert (=> b!6844460 d!2152119))

(declare-fun d!2152123 () Bool)

(declare-fun lt!2455757 () Bool)

(assert (=> d!2152123 (= lt!2455757 (select (content!12978 (t!380055 lt!2455560)) lt!2455688))))

(declare-fun e!4128589 () Bool)

(assert (=> d!2152123 (= lt!2455757 e!4128589)))

(declare-fun res!2794930 () Bool)

(assert (=> d!2152123 (=> (not res!2794930) (not e!4128589))))

(assert (=> d!2152123 (= res!2794930 ((_ is Cons!66188) (t!380055 lt!2455560)))))

(assert (=> d!2152123 (= (contains!20320 (t!380055 lt!2455560) lt!2455688) lt!2455757)))

(declare-fun b!6845779 () Bool)

(declare-fun e!4128590 () Bool)

(assert (=> b!6845779 (= e!4128589 e!4128590)))

(declare-fun res!2794931 () Bool)

(assert (=> b!6845779 (=> res!2794931 e!4128590)))

(assert (=> b!6845779 (= res!2794931 (= (h!72636 (t!380055 lt!2455560)) lt!2455688))))

(declare-fun b!6845780 () Bool)

(assert (=> b!6845780 (= e!4128590 (contains!20320 (t!380055 (t!380055 lt!2455560)) lt!2455688))))

(assert (= (and d!2152123 res!2794930) b!6845779))

(assert (= (and b!6845779 (not res!2794931)) b!6845780))

(assert (=> d!2152123 m!7585588))

(declare-fun m!7586770 () Bool)

(assert (=> d!2152123 m!7586770))

(declare-fun m!7586772 () Bool)

(assert (=> b!6845780 m!7586772))

(assert (=> b!6844463 d!2152123))

(assert (=> d!2151635 d!2152011))

(declare-fun d!2152127 () Bool)

(declare-fun lt!2455759 () Regex!16671)

(assert (=> d!2152127 (validRegex!8407 lt!2455759)))

(declare-fun e!4128597 () Regex!16671)

(assert (=> d!2152127 (= lt!2455759 e!4128597)))

(declare-fun c!1274555 () Bool)

(assert (=> d!2152127 (= c!1274555 (or ((_ is EmptyExpr!16671) (ite c!1274258 (regTwo!33855 r!7292) (ite c!1274259 (regTwo!33854 r!7292) (regOne!33854 r!7292)))) ((_ is EmptyLang!16671) (ite c!1274258 (regTwo!33855 r!7292) (ite c!1274259 (regTwo!33854 r!7292) (regOne!33854 r!7292))))))))

(assert (=> d!2152127 (validRegex!8407 (ite c!1274258 (regTwo!33855 r!7292) (ite c!1274259 (regTwo!33854 r!7292) (regOne!33854 r!7292))))))

(assert (=> d!2152127 (= (derivativeStep!5319 (ite c!1274258 (regTwo!33855 r!7292) (ite c!1274259 (regTwo!33854 r!7292) (regOne!33854 r!7292))) (head!13721 s!2326)) lt!2455759)))

(declare-fun call!623543 () Regex!16671)

(declare-fun e!4128595 () Regex!16671)

(declare-fun b!6845783 () Bool)

(assert (=> b!6845783 (= e!4128595 (Concat!25516 call!623543 (ite c!1274258 (regTwo!33855 r!7292) (ite c!1274259 (regTwo!33854 r!7292) (regOne!33854 r!7292)))))))

(declare-fun c!1274551 () Bool)

(declare-fun c!1274552 () Bool)

(declare-fun bm!623536 () Bool)

(declare-fun call!623542 () Regex!16671)

(assert (=> bm!623536 (= call!623542 (derivativeStep!5319 (ite c!1274551 (regTwo!33855 (ite c!1274258 (regTwo!33855 r!7292) (ite c!1274259 (regTwo!33854 r!7292) (regOne!33854 r!7292)))) (ite c!1274552 (regTwo!33854 (ite c!1274258 (regTwo!33855 r!7292) (ite c!1274259 (regTwo!33854 r!7292) (regOne!33854 r!7292)))) (regOne!33854 (ite c!1274258 (regTwo!33855 r!7292) (ite c!1274259 (regTwo!33854 r!7292) (regOne!33854 r!7292)))))) (head!13721 s!2326)))))

(declare-fun call!623544 () Regex!16671)

(declare-fun b!6845784 () Bool)

(declare-fun e!4128596 () Regex!16671)

(assert (=> b!6845784 (= e!4128596 (Union!16671 (Concat!25516 call!623544 (regTwo!33854 (ite c!1274258 (regTwo!33855 r!7292) (ite c!1274259 (regTwo!33854 r!7292) (regOne!33854 r!7292))))) EmptyLang!16671))))

(declare-fun bm!623537 () Bool)

(declare-fun call!623541 () Regex!16671)

(assert (=> bm!623537 (= call!623543 call!623541)))

(declare-fun b!6845785 () Bool)

(declare-fun e!4128594 () Regex!16671)

(assert (=> b!6845785 (= e!4128594 (Union!16671 call!623541 call!623542))))

(declare-fun b!6845786 () Bool)

(declare-fun e!4128593 () Regex!16671)

(assert (=> b!6845786 (= e!4128597 e!4128593)))

(declare-fun c!1274553 () Bool)

(assert (=> b!6845786 (= c!1274553 ((_ is ElementMatch!16671) (ite c!1274258 (regTwo!33855 r!7292) (ite c!1274259 (regTwo!33854 r!7292) (regOne!33854 r!7292)))))))

(declare-fun c!1274554 () Bool)

(declare-fun bm!623538 () Bool)

(assert (=> bm!623538 (= call!623541 (derivativeStep!5319 (ite c!1274551 (regOne!33855 (ite c!1274258 (regTwo!33855 r!7292) (ite c!1274259 (regTwo!33854 r!7292) (regOne!33854 r!7292)))) (ite c!1274554 (reg!17000 (ite c!1274258 (regTwo!33855 r!7292) (ite c!1274259 (regTwo!33854 r!7292) (regOne!33854 r!7292)))) (regOne!33854 (ite c!1274258 (regTwo!33855 r!7292) (ite c!1274259 (regTwo!33854 r!7292) (regOne!33854 r!7292)))))) (head!13721 s!2326)))))

(declare-fun b!6845787 () Bool)

(assert (=> b!6845787 (= e!4128597 EmptyLang!16671)))

(declare-fun b!6845788 () Bool)

(assert (=> b!6845788 (= c!1274552 (nullable!6636 (regOne!33854 (ite c!1274258 (regTwo!33855 r!7292) (ite c!1274259 (regTwo!33854 r!7292) (regOne!33854 r!7292))))))))

(assert (=> b!6845788 (= e!4128595 e!4128596)))

(declare-fun b!6845789 () Bool)

(assert (=> b!6845789 (= e!4128596 (Union!16671 (Concat!25516 call!623543 (regTwo!33854 (ite c!1274258 (regTwo!33855 r!7292) (ite c!1274259 (regTwo!33854 r!7292) (regOne!33854 r!7292))))) call!623544))))

(declare-fun b!6845790 () Bool)

(assert (=> b!6845790 (= e!4128594 e!4128595)))

(assert (=> b!6845790 (= c!1274554 ((_ is Star!16671) (ite c!1274258 (regTwo!33855 r!7292) (ite c!1274259 (regTwo!33854 r!7292) (regOne!33854 r!7292)))))))

(declare-fun b!6845791 () Bool)

(assert (=> b!6845791 (= e!4128593 (ite (= (head!13721 s!2326) (c!1273977 (ite c!1274258 (regTwo!33855 r!7292) (ite c!1274259 (regTwo!33854 r!7292) (regOne!33854 r!7292))))) EmptyExpr!16671 EmptyLang!16671))))

(declare-fun b!6845792 () Bool)

(assert (=> b!6845792 (= c!1274551 ((_ is Union!16671) (ite c!1274258 (regTwo!33855 r!7292) (ite c!1274259 (regTwo!33854 r!7292) (regOne!33854 r!7292)))))))

(assert (=> b!6845792 (= e!4128593 e!4128594)))

(declare-fun bm!623539 () Bool)

(assert (=> bm!623539 (= call!623544 call!623542)))

(assert (= (and d!2152127 c!1274555) b!6845787))

(assert (= (and d!2152127 (not c!1274555)) b!6845786))

(assert (= (and b!6845786 c!1274553) b!6845791))

(assert (= (and b!6845786 (not c!1274553)) b!6845792))

(assert (= (and b!6845792 c!1274551) b!6845785))

(assert (= (and b!6845792 (not c!1274551)) b!6845790))

(assert (= (and b!6845790 c!1274554) b!6845783))

(assert (= (and b!6845790 (not c!1274554)) b!6845788))

(assert (= (and b!6845788 c!1274552) b!6845789))

(assert (= (and b!6845788 (not c!1274552)) b!6845784))

(assert (= (or b!6845789 b!6845784) bm!623539))

(assert (= (or b!6845783 b!6845789) bm!623537))

(assert (= (or b!6845785 bm!623539) bm!623536))

(assert (= (or b!6845785 bm!623537) bm!623538))

(declare-fun m!7586781 () Bool)

(assert (=> d!2152127 m!7586781))

(declare-fun m!7586784 () Bool)

(assert (=> d!2152127 m!7586784))

(assert (=> bm!623536 m!7584998))

(declare-fun m!7586788 () Bool)

(assert (=> bm!623536 m!7586788))

(assert (=> bm!623538 m!7584998))

(declare-fun m!7586792 () Bool)

(assert (=> bm!623538 m!7586792))

(declare-fun m!7586794 () Bool)

(assert (=> b!6845788 m!7586794))

(assert (=> bm!623304 d!2152127))

(declare-fun d!2152137 () Bool)

(assert (=> d!2152137 (= (isEmpty!38567 (t!380055 (exprs!6555 (h!72637 zl!343)))) ((_ is Nil!66188) (t!380055 (exprs!6555 (h!72637 zl!343)))))))

(assert (=> b!6844393 d!2152137))

(declare-fun b!6845811 () Bool)

(declare-fun e!4128612 () Bool)

(declare-fun e!4128618 () Bool)

(assert (=> b!6845811 (= e!4128612 e!4128618)))

(declare-fun c!1274560 () Bool)

(assert (=> b!6845811 (= c!1274560 ((_ is Star!16671) (ite c!1274231 (regOne!33855 lt!2455641) (regOne!33854 lt!2455641))))))

(declare-fun b!6845812 () Bool)

(declare-fun e!4128613 () Bool)

(declare-fun call!623551 () Bool)

(assert (=> b!6845812 (= e!4128613 call!623551)))

(declare-fun b!6845813 () Bool)

(declare-fun res!2794944 () Bool)

(declare-fun e!4128617 () Bool)

(assert (=> b!6845813 (=> (not res!2794944) (not e!4128617))))

(declare-fun call!623553 () Bool)

(assert (=> b!6845813 (= res!2794944 call!623553)))

(declare-fun e!4128616 () Bool)

(assert (=> b!6845813 (= e!4128616 e!4128617)))

(declare-fun b!6845814 () Bool)

(assert (=> b!6845814 (= e!4128618 e!4128613)))

(declare-fun res!2794948 () Bool)

(assert (=> b!6845814 (= res!2794948 (not (nullable!6636 (reg!17000 (ite c!1274231 (regOne!33855 lt!2455641) (regOne!33854 lt!2455641))))))))

(assert (=> b!6845814 (=> (not res!2794948) (not e!4128613))))

(declare-fun b!6845815 () Bool)

(declare-fun e!4128615 () Bool)

(declare-fun e!4128614 () Bool)

(assert (=> b!6845815 (= e!4128615 e!4128614)))

(declare-fun res!2794945 () Bool)

(assert (=> b!6845815 (=> (not res!2794945) (not e!4128614))))

(assert (=> b!6845815 (= res!2794945 call!623553)))

(declare-fun bm!623546 () Bool)

(declare-fun call!623552 () Bool)

(assert (=> bm!623546 (= call!623552 call!623551)))

(declare-fun bm!623547 () Bool)

(declare-fun c!1274561 () Bool)

(assert (=> bm!623547 (= call!623553 (validRegex!8407 (ite c!1274561 (regOne!33855 (ite c!1274231 (regOne!33855 lt!2455641) (regOne!33854 lt!2455641))) (regOne!33854 (ite c!1274231 (regOne!33855 lt!2455641) (regOne!33854 lt!2455641))))))))

(declare-fun bm!623548 () Bool)

(assert (=> bm!623548 (= call!623551 (validRegex!8407 (ite c!1274560 (reg!17000 (ite c!1274231 (regOne!33855 lt!2455641) (regOne!33854 lt!2455641))) (ite c!1274561 (regTwo!33855 (ite c!1274231 (regOne!33855 lt!2455641) (regOne!33854 lt!2455641))) (regTwo!33854 (ite c!1274231 (regOne!33855 lt!2455641) (regOne!33854 lt!2455641)))))))))

(declare-fun d!2152139 () Bool)

(declare-fun res!2794947 () Bool)

(assert (=> d!2152139 (=> res!2794947 e!4128612)))

(assert (=> d!2152139 (= res!2794947 ((_ is ElementMatch!16671) (ite c!1274231 (regOne!33855 lt!2455641) (regOne!33854 lt!2455641))))))

(assert (=> d!2152139 (= (validRegex!8407 (ite c!1274231 (regOne!33855 lt!2455641) (regOne!33854 lt!2455641))) e!4128612)))

(declare-fun b!6845816 () Bool)

(assert (=> b!6845816 (= e!4128618 e!4128616)))

(assert (=> b!6845816 (= c!1274561 ((_ is Union!16671) (ite c!1274231 (regOne!33855 lt!2455641) (regOne!33854 lt!2455641))))))

(declare-fun b!6845817 () Bool)

(assert (=> b!6845817 (= e!4128614 call!623552)))

(declare-fun b!6845818 () Bool)

(assert (=> b!6845818 (= e!4128617 call!623552)))

(declare-fun b!6845819 () Bool)

(declare-fun res!2794946 () Bool)

(assert (=> b!6845819 (=> res!2794946 e!4128615)))

(assert (=> b!6845819 (= res!2794946 (not ((_ is Concat!25516) (ite c!1274231 (regOne!33855 lt!2455641) (regOne!33854 lt!2455641)))))))

(assert (=> b!6845819 (= e!4128616 e!4128615)))

(assert (= (and d!2152139 (not res!2794947)) b!6845811))

(assert (= (and b!6845811 c!1274560) b!6845814))

(assert (= (and b!6845811 (not c!1274560)) b!6845816))

(assert (= (and b!6845814 res!2794948) b!6845812))

(assert (= (and b!6845816 c!1274561) b!6845813))

(assert (= (and b!6845816 (not c!1274561)) b!6845819))

(assert (= (and b!6845813 res!2794944) b!6845818))

(assert (= (and b!6845819 (not res!2794946)) b!6845815))

(assert (= (and b!6845815 res!2794945) b!6845817))

(assert (= (or b!6845818 b!6845817) bm!623546))

(assert (= (or b!6845813 b!6845815) bm!623547))

(assert (= (or b!6845812 bm!623546) bm!623548))

(declare-fun m!7586802 () Bool)

(assert (=> b!6845814 m!7586802))

(declare-fun m!7586804 () Bool)

(assert (=> bm!623547 m!7586804))

(declare-fun m!7586806 () Bool)

(assert (=> bm!623548 m!7586806))

(assert (=> bm!623293 d!2152139))

(declare-fun bs!1830091 () Bool)

(declare-fun d!2152143 () Bool)

(assert (= bs!1830091 (and d!2152143 d!2151591)))

(declare-fun lambda!387113 () Int)

(assert (=> bs!1830091 (not (= lambda!387113 lambda!387063))))

(declare-fun bs!1830092 () Bool)

(assert (= bs!1830092 (and d!2152143 d!2151417)))

(assert (=> bs!1830092 (not (= lambda!387113 lambda!387022))))

(declare-fun bs!1830093 () Bool)

(assert (= bs!1830093 (and d!2152143 d!2151423)))

(assert (=> bs!1830093 (= lambda!387113 lambda!387026)))

(declare-fun bs!1830094 () Bool)

(assert (= bs!1830094 (and d!2152143 d!2151425)))

(assert (=> bs!1830094 (not (= lambda!387113 lambda!387031))))

(declare-fun bs!1830095 () Bool)

(assert (= bs!1830095 (and d!2152143 d!2152017)))

(assert (=> bs!1830095 (not (= lambda!387113 lambda!387102))))

(declare-fun bs!1830096 () Bool)

(assert (= bs!1830096 (and d!2152143 d!2151905)))

(assert (=> bs!1830096 (= (= lambda!386978 lambda!387073) (= lambda!387113 lambda!387095))))

(declare-fun bs!1830097 () Bool)

(assert (= bs!1830097 (and d!2152143 d!2151929)))

(assert (=> bs!1830097 (not (= lambda!387113 lambda!387096))))

(declare-fun bs!1830098 () Bool)

(assert (= bs!1830098 (and d!2152143 d!2152097)))

(assert (=> bs!1830098 (not (= lambda!387113 lambda!387112))))

(declare-fun bs!1830099 () Bool)

(assert (= bs!1830099 (and d!2152143 d!2151623)))

(assert (=> bs!1830099 (not (= lambda!387113 lambda!387073))))

(declare-fun bs!1830100 () Bool)

(assert (= bs!1830100 (and d!2152143 d!2151427)))

(assert (=> bs!1830100 (not (= lambda!387113 lambda!387035))))

(declare-fun bs!1830101 () Bool)

(assert (= bs!1830101 (and d!2152143 d!2152043)))

(assert (=> bs!1830101 (not (= lambda!387113 lambda!387103))))

(declare-fun bs!1830102 () Bool)

(assert (= bs!1830102 (and d!2152143 d!2151621)))

(assert (=> bs!1830102 (= (= lambda!386978 lambda!387032) (= lambda!387113 lambda!387070))))

(declare-fun bs!1830103 () Bool)

(assert (= bs!1830103 (and d!2152143 d!2151729)))

(assert (=> bs!1830103 (not (= lambda!387113 lambda!387083))))

(declare-fun bs!1830104 () Bool)

(assert (= bs!1830104 (and d!2152143 d!2151771)))

(assert (=> bs!1830104 (not (= lambda!387113 lambda!387085))))

(declare-fun bs!1830106 () Bool)

(assert (= bs!1830106 (and d!2152143 d!2151599)))

(assert (=> bs!1830106 (not (= lambda!387113 lambda!387065))))

(declare-fun bs!1830107 () Bool)

(assert (= bs!1830107 (and d!2152143 d!2151593)))

(assert (=> bs!1830107 (not (= lambda!387113 lambda!387064))))

(declare-fun bs!1830108 () Bool)

(assert (= bs!1830108 (and d!2152143 d!2151655)))

(assert (=> bs!1830108 (not (= lambda!387113 lambda!387078))))

(declare-fun bs!1830110 () Bool)

(assert (= bs!1830110 (and d!2152143 d!2151825)))

(assert (=> bs!1830110 (not (= lambda!387113 lambda!387088))))

(declare-fun bs!1830111 () Bool)

(assert (= bs!1830111 (and d!2152143 d!2151675)))

(assert (=> bs!1830111 (not (= lambda!387113 lambda!387079))))

(declare-fun bs!1830113 () Bool)

(assert (= bs!1830113 (and d!2152143 b!6843348)))

(assert (=> bs!1830113 (not (= lambda!387113 lambda!386978))))

(declare-fun bs!1830115 () Bool)

(assert (= bs!1830115 (and d!2152143 d!2151893)))

(assert (=> bs!1830115 (not (= lambda!387113 lambda!387094))))

(assert (=> bs!1830094 (not (= lambda!387113 lambda!387032))))

(declare-fun bs!1830117 () Bool)

(assert (= bs!1830117 (and d!2152143 d!2151419)))

(assert (=> bs!1830117 (not (= lambda!387113 lambda!387023))))

(declare-fun bs!1830119 () Bool)

(assert (= bs!1830119 (and d!2152143 d!2151587)))

(assert (=> bs!1830119 (not (= lambda!387113 lambda!387060))))

(assert (=> d!2152143 true))

(assert (=> d!2152143 (< (dynLambda!26450 order!27647 lambda!386978) (dynLambda!26450 order!27647 lambda!387113))))

(assert (=> d!2152143 (= (exists!2769 (t!380055 lt!2455560) lambda!386978) (not (forall!15850 (t!380055 lt!2455560) lambda!387113)))))

(declare-fun bs!1830124 () Bool)

(assert (= bs!1830124 d!2152143))

(declare-fun m!7586822 () Bool)

(assert (=> bs!1830124 m!7586822))

(assert (=> d!2151633 d!2152143))

(assert (=> bm!623295 d!2151579))

(assert (=> b!6844567 d!2151755))

(declare-fun d!2152153 () Bool)

(declare-fun lt!2455760 () Bool)

(assert (=> d!2152153 (= lt!2455760 (select (content!12978 (t!380055 lt!2455560)) lt!2455637))))

(declare-fun e!4128628 () Bool)

(assert (=> d!2152153 (= lt!2455760 e!4128628)))

(declare-fun res!2794956 () Bool)

(assert (=> d!2152153 (=> (not res!2794956) (not e!4128628))))

(assert (=> d!2152153 (= res!2794956 ((_ is Cons!66188) (t!380055 lt!2455560)))))

(assert (=> d!2152153 (= (contains!20320 (t!380055 lt!2455560) lt!2455637) lt!2455760)))

(declare-fun b!6845831 () Bool)

(declare-fun e!4128629 () Bool)

(assert (=> b!6845831 (= e!4128628 e!4128629)))

(declare-fun res!2794957 () Bool)

(assert (=> b!6845831 (=> res!2794957 e!4128629)))

(assert (=> b!6845831 (= res!2794957 (= (h!72636 (t!380055 lt!2455560)) lt!2455637))))

(declare-fun b!6845832 () Bool)

(assert (=> b!6845832 (= e!4128629 (contains!20320 (t!380055 (t!380055 lt!2455560)) lt!2455637))))

(assert (= (and d!2152153 res!2794956) b!6845831))

(assert (= (and b!6845831 (not res!2794957)) b!6845832))

(assert (=> d!2152153 m!7585588))

(declare-fun m!7586824 () Bool)

(assert (=> d!2152153 m!7586824))

(declare-fun m!7586826 () Bool)

(assert (=> b!6845832 m!7586826))

(assert (=> b!6844434 d!2152153))

(assert (=> b!6844346 d!2151577))

(declare-fun d!2152155 () Bool)

(assert (=> d!2152155 (= (isEmpty!38567 (t!380055 (unfocusZipperList!2088 zl!343))) ((_ is Nil!66188) (t!380055 (unfocusZipperList!2088 zl!343))))))

(assert (=> b!6844556 d!2152155))

(declare-fun bs!1830139 () Bool)

(declare-fun b!6845837 () Bool)

(assert (= bs!1830139 (and b!6845837 b!6843694)))

(declare-fun lambda!387115 () Int)

(assert (=> bs!1830139 (not (= lambda!387115 lambda!387013))))

(declare-fun bs!1830140 () Bool)

(assert (= bs!1830140 (and b!6845837 b!6845625)))

(assert (=> bs!1830140 (= (and (= (reg!17000 (regOne!33855 (regTwo!33855 r!7292))) (reg!17000 (regTwo!33855 (regTwo!33855 r!7292)))) (= (regOne!33855 (regTwo!33855 r!7292)) (regTwo!33855 (regTwo!33855 r!7292)))) (= lambda!387115 lambda!387106))))

(declare-fun bs!1830141 () Bool)

(assert (= bs!1830141 (and b!6845837 b!6843696)))

(assert (=> bs!1830141 (= (and (= (reg!17000 (regOne!33855 (regTwo!33855 r!7292))) (reg!17000 r!7292)) (= (regOne!33855 (regTwo!33855 r!7292)) r!7292)) (= lambda!387115 lambda!387012))))

(declare-fun bs!1830142 () Bool)

(assert (= bs!1830142 (and b!6845837 b!6845119)))

(assert (=> bs!1830142 (= (and (= (reg!17000 (regOne!33855 (regTwo!33855 r!7292))) (reg!17000 (regTwo!33855 (regOne!33855 r!7292)))) (= (regOne!33855 (regTwo!33855 r!7292)) (regTwo!33855 (regOne!33855 r!7292)))) (= lambda!387115 lambda!387092))))

(declare-fun bs!1830143 () Bool)

(assert (= bs!1830143 (and b!6845837 b!6844510)))

(assert (=> bs!1830143 (= (and (= (reg!17000 (regOne!33855 (regTwo!33855 r!7292))) (reg!17000 (regOne!33855 r!7292))) (= (regOne!33855 (regTwo!33855 r!7292)) (regOne!33855 r!7292))) (= lambda!387115 lambda!387074))))

(declare-fun bs!1830144 () Bool)

(assert (= bs!1830144 (and b!6845837 b!6845429)))

(assert (=> bs!1830144 (= (and (= (reg!17000 (regOne!33855 (regTwo!33855 r!7292))) (reg!17000 (regOne!33855 (regOne!33855 r!7292)))) (= (regOne!33855 (regTwo!33855 r!7292)) (regOne!33855 (regOne!33855 r!7292)))) (= lambda!387115 lambda!387099))))

(declare-fun bs!1830146 () Bool)

(assert (= bs!1830146 (and b!6845837 b!6844353)))

(assert (=> bs!1830146 (not (= lambda!387115 lambda!387059))))

(declare-fun bs!1830148 () Bool)

(assert (= bs!1830148 (and b!6845837 b!6845117)))

(assert (=> bs!1830148 (not (= lambda!387115 lambda!387093))))

(declare-fun bs!1830149 () Bool)

(assert (= bs!1830149 (and b!6845837 b!6845427)))

(assert (=> bs!1830149 (not (= lambda!387115 lambda!387101))))

(declare-fun bs!1830151 () Bool)

(assert (= bs!1830151 (and b!6845837 b!6845623)))

(assert (=> bs!1830151 (not (= lambda!387115 lambda!387108))))

(declare-fun bs!1830153 () Bool)

(assert (= bs!1830153 (and b!6845837 b!6844355)))

(assert (=> bs!1830153 (= (and (= (reg!17000 (regOne!33855 (regTwo!33855 r!7292))) (reg!17000 (regTwo!33855 r!7292))) (= (regOne!33855 (regTwo!33855 r!7292)) (regTwo!33855 r!7292))) (= lambda!387115 lambda!387058))))

(declare-fun bs!1830155 () Bool)

(assert (= bs!1830155 (and b!6845837 b!6844508)))

(assert (=> bs!1830155 (not (= lambda!387115 lambda!387075))))

(assert (=> b!6845837 true))

(assert (=> b!6845837 true))

(declare-fun bs!1830162 () Bool)

(declare-fun b!6845835 () Bool)

(assert (= bs!1830162 (and b!6845835 b!6843694)))

(declare-fun lambda!387117 () Int)

(assert (=> bs!1830162 (= (and (= (regOne!33854 (regOne!33855 (regTwo!33855 r!7292))) (regOne!33854 r!7292)) (= (regTwo!33854 (regOne!33855 (regTwo!33855 r!7292))) (regTwo!33854 r!7292))) (= lambda!387117 lambda!387013))))

(declare-fun bs!1830164 () Bool)

(assert (= bs!1830164 (and b!6845835 b!6845625)))

(assert (=> bs!1830164 (not (= lambda!387117 lambda!387106))))

(declare-fun bs!1830165 () Bool)

(assert (= bs!1830165 (and b!6845835 b!6843696)))

(assert (=> bs!1830165 (not (= lambda!387117 lambda!387012))))

(declare-fun bs!1830166 () Bool)

(assert (= bs!1830166 (and b!6845835 b!6845837)))

(assert (=> bs!1830166 (not (= lambda!387117 lambda!387115))))

(declare-fun bs!1830167 () Bool)

(assert (= bs!1830167 (and b!6845835 b!6845119)))

(assert (=> bs!1830167 (not (= lambda!387117 lambda!387092))))

(declare-fun bs!1830168 () Bool)

(assert (= bs!1830168 (and b!6845835 b!6844510)))

(assert (=> bs!1830168 (not (= lambda!387117 lambda!387074))))

(declare-fun bs!1830169 () Bool)

(assert (= bs!1830169 (and b!6845835 b!6845429)))

(assert (=> bs!1830169 (not (= lambda!387117 lambda!387099))))

(declare-fun bs!1830171 () Bool)

(assert (= bs!1830171 (and b!6845835 b!6844353)))

(assert (=> bs!1830171 (= (and (= (regOne!33854 (regOne!33855 (regTwo!33855 r!7292))) (regOne!33854 (regTwo!33855 r!7292))) (= (regTwo!33854 (regOne!33855 (regTwo!33855 r!7292))) (regTwo!33854 (regTwo!33855 r!7292)))) (= lambda!387117 lambda!387059))))

(declare-fun bs!1830173 () Bool)

(assert (= bs!1830173 (and b!6845835 b!6845117)))

(assert (=> bs!1830173 (= (and (= (regOne!33854 (regOne!33855 (regTwo!33855 r!7292))) (regOne!33854 (regTwo!33855 (regOne!33855 r!7292)))) (= (regTwo!33854 (regOne!33855 (regTwo!33855 r!7292))) (regTwo!33854 (regTwo!33855 (regOne!33855 r!7292))))) (= lambda!387117 lambda!387093))))

(declare-fun bs!1830175 () Bool)

(assert (= bs!1830175 (and b!6845835 b!6845427)))

(assert (=> bs!1830175 (= (and (= (regOne!33854 (regOne!33855 (regTwo!33855 r!7292))) (regOne!33854 (regOne!33855 (regOne!33855 r!7292)))) (= (regTwo!33854 (regOne!33855 (regTwo!33855 r!7292))) (regTwo!33854 (regOne!33855 (regOne!33855 r!7292))))) (= lambda!387117 lambda!387101))))

(declare-fun bs!1830177 () Bool)

(assert (= bs!1830177 (and b!6845835 b!6845623)))

(assert (=> bs!1830177 (= (and (= (regOne!33854 (regOne!33855 (regTwo!33855 r!7292))) (regOne!33854 (regTwo!33855 (regTwo!33855 r!7292)))) (= (regTwo!33854 (regOne!33855 (regTwo!33855 r!7292))) (regTwo!33854 (regTwo!33855 (regTwo!33855 r!7292))))) (= lambda!387117 lambda!387108))))

(declare-fun bs!1830179 () Bool)

(assert (= bs!1830179 (and b!6845835 b!6844355)))

(assert (=> bs!1830179 (not (= lambda!387117 lambda!387058))))

(declare-fun bs!1830181 () Bool)

(assert (= bs!1830181 (and b!6845835 b!6844508)))

(assert (=> bs!1830181 (= (and (= (regOne!33854 (regOne!33855 (regTwo!33855 r!7292))) (regOne!33854 (regOne!33855 r!7292))) (= (regTwo!33854 (regOne!33855 (regTwo!33855 r!7292))) (regTwo!33854 (regOne!33855 r!7292)))) (= lambda!387117 lambda!387075))))

(assert (=> b!6845835 true))

(assert (=> b!6845835 true))

(declare-fun b!6845833 () Bool)

(declare-fun e!4128635 () Bool)

(declare-fun call!623558 () Bool)

(assert (=> b!6845833 (= e!4128635 call!623558)))

(declare-fun b!6845834 () Bool)

(declare-fun e!4128630 () Bool)

(declare-fun e!4128632 () Bool)

(assert (=> b!6845834 (= e!4128630 e!4128632)))

(declare-fun c!1274564 () Bool)

(assert (=> b!6845834 (= c!1274564 ((_ is Star!16671) (regOne!33855 (regTwo!33855 r!7292))))))

(declare-fun bm!623553 () Bool)

(assert (=> bm!623553 (= call!623558 (isEmpty!38565 s!2326))))

(declare-fun call!623557 () Bool)

(assert (=> b!6845835 (= e!4128632 call!623557)))

(declare-fun b!6845836 () Bool)

(declare-fun e!4128636 () Bool)

(assert (=> b!6845836 (= e!4128636 (= s!2326 (Cons!66190 (c!1273977 (regOne!33855 (regTwo!33855 r!7292))) Nil!66190)))))

(declare-fun e!4128631 () Bool)

(assert (=> b!6845837 (= e!4128631 call!623557)))

(declare-fun b!6845838 () Bool)

(declare-fun c!1274566 () Bool)

(assert (=> b!6845838 (= c!1274566 ((_ is Union!16671) (regOne!33855 (regTwo!33855 r!7292))))))

(assert (=> b!6845838 (= e!4128636 e!4128630)))

(declare-fun d!2152157 () Bool)

(declare-fun c!1274565 () Bool)

(assert (=> d!2152157 (= c!1274565 ((_ is EmptyExpr!16671) (regOne!33855 (regTwo!33855 r!7292))))))

(assert (=> d!2152157 (= (matchRSpec!3772 (regOne!33855 (regTwo!33855 r!7292)) s!2326) e!4128635)))

(declare-fun bm!623552 () Bool)

(assert (=> bm!623552 (= call!623557 (Exists!3735 (ite c!1274564 lambda!387115 lambda!387117)))))

(declare-fun b!6845839 () Bool)

(declare-fun res!2794960 () Bool)

(assert (=> b!6845839 (=> res!2794960 e!4128631)))

(assert (=> b!6845839 (= res!2794960 call!623558)))

(assert (=> b!6845839 (= e!4128632 e!4128631)))

(declare-fun b!6845840 () Bool)

(declare-fun c!1274567 () Bool)

(assert (=> b!6845840 (= c!1274567 ((_ is ElementMatch!16671) (regOne!33855 (regTwo!33855 r!7292))))))

(declare-fun e!4128633 () Bool)

(assert (=> b!6845840 (= e!4128633 e!4128636)))

(declare-fun b!6845841 () Bool)

(assert (=> b!6845841 (= e!4128635 e!4128633)))

(declare-fun res!2794958 () Bool)

(assert (=> b!6845841 (= res!2794958 (not ((_ is EmptyLang!16671) (regOne!33855 (regTwo!33855 r!7292)))))))

(assert (=> b!6845841 (=> (not res!2794958) (not e!4128633))))

(declare-fun b!6845842 () Bool)

(declare-fun e!4128634 () Bool)

(assert (=> b!6845842 (= e!4128630 e!4128634)))

(declare-fun res!2794959 () Bool)

(assert (=> b!6845842 (= res!2794959 (matchRSpec!3772 (regOne!33855 (regOne!33855 (regTwo!33855 r!7292))) s!2326))))

(assert (=> b!6845842 (=> res!2794959 e!4128634)))

(declare-fun b!6845843 () Bool)

(assert (=> b!6845843 (= e!4128634 (matchRSpec!3772 (regTwo!33855 (regOne!33855 (regTwo!33855 r!7292))) s!2326))))

(assert (= (and d!2152157 c!1274565) b!6845833))

(assert (= (and d!2152157 (not c!1274565)) b!6845841))

(assert (= (and b!6845841 res!2794958) b!6845840))

(assert (= (and b!6845840 c!1274567) b!6845836))

(assert (= (and b!6845840 (not c!1274567)) b!6845838))

(assert (= (and b!6845838 c!1274566) b!6845842))

(assert (= (and b!6845838 (not c!1274566)) b!6845834))

(assert (= (and b!6845842 (not res!2794959)) b!6845843))

(assert (= (and b!6845834 c!1274564) b!6845839))

(assert (= (and b!6845834 (not c!1274564)) b!6845835))

(assert (= (and b!6845839 (not res!2794960)) b!6845837))

(assert (= (or b!6845837 b!6845835) bm!623552))

(assert (= (or b!6845833 b!6845839) bm!623553))

(assert (=> bm!623553 m!7584996))

(declare-fun m!7586830 () Bool)

(assert (=> bm!623552 m!7586830))

(declare-fun m!7586832 () Bool)

(assert (=> b!6845842 m!7586832))

(declare-fun m!7586834 () Bool)

(assert (=> b!6845843 m!7586834))

(assert (=> b!6844360 d!2152157))

(assert (=> bm!623311 d!2151579))

(declare-fun bs!1830189 () Bool)

(declare-fun d!2152161 () Bool)

(assert (= bs!1830189 (and d!2152161 d!2151591)))

(declare-fun lambda!387119 () Int)

(assert (=> bs!1830189 (= lambda!387119 lambda!387063)))

(declare-fun bs!1830190 () Bool)

(assert (= bs!1830190 (and d!2152161 d!2151417)))

(assert (=> bs!1830190 (= lambda!387119 lambda!387022)))

(declare-fun bs!1830191 () Bool)

(assert (= bs!1830191 (and d!2152161 d!2151423)))

(assert (=> bs!1830191 (not (= lambda!387119 lambda!387026))))

(declare-fun bs!1830192 () Bool)

(assert (= bs!1830192 (and d!2152161 d!2151425)))

(assert (=> bs!1830192 (= lambda!387119 lambda!387031)))

(declare-fun bs!1830193 () Bool)

(assert (= bs!1830193 (and d!2152161 d!2152143)))

(assert (=> bs!1830193 (not (= lambda!387119 lambda!387113))))

(declare-fun bs!1830194 () Bool)

(assert (= bs!1830194 (and d!2152161 d!2152017)))

(assert (=> bs!1830194 (= lambda!387119 lambda!387102)))

(declare-fun bs!1830195 () Bool)

(assert (= bs!1830195 (and d!2152161 d!2151905)))

(assert (=> bs!1830195 (not (= lambda!387119 lambda!387095))))

(declare-fun bs!1830196 () Bool)

(assert (= bs!1830196 (and d!2152161 d!2151929)))

(assert (=> bs!1830196 (= lambda!387119 lambda!387096)))

(declare-fun bs!1830197 () Bool)

(assert (= bs!1830197 (and d!2152161 d!2152097)))

(assert (=> bs!1830197 (= lambda!387119 lambda!387112)))

(declare-fun bs!1830198 () Bool)

(assert (= bs!1830198 (and d!2152161 d!2151623)))

(assert (=> bs!1830198 (not (= lambda!387119 lambda!387073))))

(declare-fun bs!1830199 () Bool)

(assert (= bs!1830199 (and d!2152161 d!2151427)))

(assert (=> bs!1830199 (= lambda!387119 lambda!387035)))

(declare-fun bs!1830200 () Bool)

(assert (= bs!1830200 (and d!2152161 d!2152043)))

(assert (=> bs!1830200 (= lambda!387119 lambda!387103)))

(declare-fun bs!1830201 () Bool)

(assert (= bs!1830201 (and d!2152161 d!2151621)))

(assert (=> bs!1830201 (not (= lambda!387119 lambda!387070))))

(declare-fun bs!1830202 () Bool)

(assert (= bs!1830202 (and d!2152161 d!2151729)))

(assert (=> bs!1830202 (= lambda!387119 lambda!387083)))

(declare-fun bs!1830204 () Bool)

(assert (= bs!1830204 (and d!2152161 d!2151771)))

(assert (=> bs!1830204 (= lambda!387119 lambda!387085)))

(declare-fun bs!1830205 () Bool)

(assert (= bs!1830205 (and d!2152161 d!2151599)))

(assert (=> bs!1830205 (= lambda!387119 lambda!387065)))

(declare-fun bs!1830206 () Bool)

(assert (= bs!1830206 (and d!2152161 d!2151593)))

(assert (=> bs!1830206 (= lambda!387119 lambda!387064)))

(declare-fun bs!1830207 () Bool)

(assert (= bs!1830207 (and d!2152161 d!2151655)))

(assert (=> bs!1830207 (= lambda!387119 lambda!387078)))

(declare-fun bs!1830208 () Bool)

(assert (= bs!1830208 (and d!2152161 d!2151825)))

(assert (=> bs!1830208 (= lambda!387119 lambda!387088)))

(declare-fun bs!1830209 () Bool)

(assert (= bs!1830209 (and d!2152161 d!2151675)))

(assert (=> bs!1830209 (= lambda!387119 lambda!387079)))

(declare-fun bs!1830210 () Bool)

(assert (= bs!1830210 (and d!2152161 b!6843348)))

(assert (=> bs!1830210 (not (= lambda!387119 lambda!386978))))

(declare-fun bs!1830211 () Bool)

(assert (= bs!1830211 (and d!2152161 d!2151893)))

(assert (=> bs!1830211 (= lambda!387119 lambda!387094)))

(assert (=> bs!1830192 (not (= lambda!387119 lambda!387032))))

(declare-fun bs!1830212 () Bool)

(assert (= bs!1830212 (and d!2152161 d!2151419)))

(assert (=> bs!1830212 (= lambda!387119 lambda!387023)))

(declare-fun bs!1830213 () Bool)

(assert (= bs!1830213 (and d!2152161 d!2151587)))

(assert (=> bs!1830213 (= lambda!387119 lambda!387060)))

(assert (=> d!2152161 (= (inv!84924 setElem!47067) (forall!15850 (exprs!6555 setElem!47067) lambda!387119))))

(declare-fun bs!1830214 () Bool)

(assert (= bs!1830214 d!2152161))

(declare-fun m!7586850 () Bool)

(assert (=> bs!1830214 m!7586850))

(assert (=> setNonEmpty!47067 d!2152161))

(declare-fun b!6845866 () Bool)

(declare-fun e!4128653 () Bool)

(declare-fun e!4128660 () Bool)

(assert (=> b!6845866 (= e!4128653 e!4128660)))

(declare-fun c!1274574 () Bool)

(assert (=> b!6845866 (= c!1274574 ((_ is Star!16671) lt!2455699))))

(declare-fun b!6845867 () Bool)

(declare-fun e!4128654 () Bool)

(declare-fun call!623563 () Bool)

(assert (=> b!6845867 (= e!4128654 call!623563)))

(declare-fun b!6845868 () Bool)

(declare-fun res!2794971 () Bool)

(declare-fun e!4128658 () Bool)

(assert (=> b!6845868 (=> (not res!2794971) (not e!4128658))))

(declare-fun call!623565 () Bool)

(assert (=> b!6845868 (= res!2794971 call!623565)))

(declare-fun e!4128657 () Bool)

(assert (=> b!6845868 (= e!4128657 e!4128658)))

(declare-fun b!6845869 () Bool)

(assert (=> b!6845869 (= e!4128660 e!4128654)))

(declare-fun res!2794976 () Bool)

(assert (=> b!6845869 (= res!2794976 (not (nullable!6636 (reg!17000 lt!2455699))))))

(assert (=> b!6845869 (=> (not res!2794976) (not e!4128654))))

(declare-fun b!6845870 () Bool)

(declare-fun e!4128656 () Bool)

(declare-fun e!4128655 () Bool)

(assert (=> b!6845870 (= e!4128656 e!4128655)))

(declare-fun res!2794972 () Bool)

(assert (=> b!6845870 (=> (not res!2794972) (not e!4128655))))

(assert (=> b!6845870 (= res!2794972 call!623565)))

(declare-fun bm!623558 () Bool)

(declare-fun call!623564 () Bool)

(assert (=> bm!623558 (= call!623564 call!623563)))

(declare-fun bm!623559 () Bool)

(declare-fun c!1274576 () Bool)

(assert (=> bm!623559 (= call!623565 (validRegex!8407 (ite c!1274576 (regOne!33855 lt!2455699) (regOne!33854 lt!2455699))))))

(declare-fun bm!623560 () Bool)

(assert (=> bm!623560 (= call!623563 (validRegex!8407 (ite c!1274574 (reg!17000 lt!2455699) (ite c!1274576 (regTwo!33855 lt!2455699) (regTwo!33854 lt!2455699)))))))

(declare-fun d!2152171 () Bool)

(declare-fun res!2794974 () Bool)

(assert (=> d!2152171 (=> res!2794974 e!4128653)))

(assert (=> d!2152171 (= res!2794974 ((_ is ElementMatch!16671) lt!2455699))))

(assert (=> d!2152171 (= (validRegex!8407 lt!2455699) e!4128653)))

(declare-fun b!6845875 () Bool)

(assert (=> b!6845875 (= e!4128660 e!4128657)))

(assert (=> b!6845875 (= c!1274576 ((_ is Union!16671) lt!2455699))))

(declare-fun b!6845876 () Bool)

(assert (=> b!6845876 (= e!4128655 call!623564)))

(declare-fun b!6845878 () Bool)

(assert (=> b!6845878 (= e!4128658 call!623564)))

(declare-fun b!6845880 () Bool)

(declare-fun res!2794973 () Bool)

(assert (=> b!6845880 (=> res!2794973 e!4128656)))

(assert (=> b!6845880 (= res!2794973 (not ((_ is Concat!25516) lt!2455699)))))

(assert (=> b!6845880 (= e!4128657 e!4128656)))

(assert (= (and d!2152171 (not res!2794974)) b!6845866))

(assert (= (and b!6845866 c!1274574) b!6845869))

(assert (= (and b!6845866 (not c!1274574)) b!6845875))

(assert (= (and b!6845869 res!2794976) b!6845867))

(assert (= (and b!6845875 c!1274576) b!6845868))

(assert (= (and b!6845875 (not c!1274576)) b!6845880))

(assert (= (and b!6845868 res!2794971) b!6845878))

(assert (= (and b!6845880 (not res!2794973)) b!6845870))

(assert (= (and b!6845870 res!2794972) b!6845876))

(assert (= (or b!6845878 b!6845876) bm!623558))

(assert (= (or b!6845868 b!6845870) bm!623559))

(assert (= (or b!6845867 bm!623558) bm!623560))

(declare-fun m!7586856 () Bool)

(assert (=> b!6845869 m!7586856))

(declare-fun m!7586858 () Bool)

(assert (=> bm!623559 m!7586858))

(declare-fun m!7586864 () Bool)

(assert (=> bm!623560 m!7586864))

(assert (=> d!2151663 d!2152171))

(assert (=> d!2151663 d!2151413))

(declare-fun d!2152175 () Bool)

(declare-fun res!2794978 () Bool)

(declare-fun e!4128664 () Bool)

(assert (=> d!2152175 (=> res!2794978 e!4128664)))

(assert (=> d!2152175 (= res!2794978 ((_ is Nil!66188) (t!380055 lt!2455650)))))

(assert (=> d!2152175 (= (forall!15850 (t!380055 lt!2455650) lambda!387035) e!4128664)))

(declare-fun b!6845881 () Bool)

(declare-fun e!4128665 () Bool)

(assert (=> b!6845881 (= e!4128664 e!4128665)))

(declare-fun res!2794979 () Bool)

(assert (=> b!6845881 (=> (not res!2794979) (not e!4128665))))

(assert (=> b!6845881 (= res!2794979 (dynLambda!26449 lambda!387035 (h!72636 (t!380055 lt!2455650))))))

(declare-fun b!6845882 () Bool)

(assert (=> b!6845882 (= e!4128665 (forall!15850 (t!380055 (t!380055 lt!2455650)) lambda!387035))))

(assert (= (and d!2152175 (not res!2794978)) b!6845881))

(assert (= (and b!6845881 res!2794979) b!6845882))

(declare-fun b_lambda!258267 () Bool)

(assert (=> (not b_lambda!258267) (not b!6845881)))

(declare-fun m!7586874 () Bool)

(assert (=> b!6845881 m!7586874))

(declare-fun m!7586876 () Bool)

(assert (=> b!6845882 m!7586876))

(assert (=> b!6844367 d!2152175))

(declare-fun b!6845892 () Bool)

(declare-fun e!4128673 () Bool)

(declare-fun e!4128679 () Bool)

(assert (=> b!6845892 (= e!4128673 e!4128679)))

(declare-fun c!1274580 () Bool)

(assert (=> b!6845892 (= c!1274580 ((_ is Star!16671) (h!72636 lt!2455650)))))

(declare-fun b!6845893 () Bool)

(declare-fun e!4128674 () Bool)

(declare-fun call!623569 () Bool)

(assert (=> b!6845893 (= e!4128674 call!623569)))

(declare-fun b!6845894 () Bool)

(declare-fun res!2794985 () Bool)

(declare-fun e!4128678 () Bool)

(assert (=> b!6845894 (=> (not res!2794985) (not e!4128678))))

(declare-fun call!623571 () Bool)

(assert (=> b!6845894 (= res!2794985 call!623571)))

(declare-fun e!4128677 () Bool)

(assert (=> b!6845894 (= e!4128677 e!4128678)))

(declare-fun b!6845895 () Bool)

(assert (=> b!6845895 (= e!4128679 e!4128674)))

(declare-fun res!2794989 () Bool)

(assert (=> b!6845895 (= res!2794989 (not (nullable!6636 (reg!17000 (h!72636 lt!2455650)))))))

(assert (=> b!6845895 (=> (not res!2794989) (not e!4128674))))

(declare-fun b!6845896 () Bool)

(declare-fun e!4128676 () Bool)

(declare-fun e!4128675 () Bool)

(assert (=> b!6845896 (= e!4128676 e!4128675)))

(declare-fun res!2794986 () Bool)

(assert (=> b!6845896 (=> (not res!2794986) (not e!4128675))))

(assert (=> b!6845896 (= res!2794986 call!623571)))

(declare-fun bm!623564 () Bool)

(declare-fun call!623570 () Bool)

(assert (=> bm!623564 (= call!623570 call!623569)))

(declare-fun bm!623565 () Bool)

(declare-fun c!1274581 () Bool)

(assert (=> bm!623565 (= call!623571 (validRegex!8407 (ite c!1274581 (regOne!33855 (h!72636 lt!2455650)) (regOne!33854 (h!72636 lt!2455650)))))))

(declare-fun bm!623566 () Bool)

(assert (=> bm!623566 (= call!623569 (validRegex!8407 (ite c!1274580 (reg!17000 (h!72636 lt!2455650)) (ite c!1274581 (regTwo!33855 (h!72636 lt!2455650)) (regTwo!33854 (h!72636 lt!2455650))))))))

(declare-fun d!2152179 () Bool)

(declare-fun res!2794988 () Bool)

(assert (=> d!2152179 (=> res!2794988 e!4128673)))

(assert (=> d!2152179 (= res!2794988 ((_ is ElementMatch!16671) (h!72636 lt!2455650)))))

(assert (=> d!2152179 (= (validRegex!8407 (h!72636 lt!2455650)) e!4128673)))

(declare-fun b!6845897 () Bool)

(assert (=> b!6845897 (= e!4128679 e!4128677)))

(assert (=> b!6845897 (= c!1274581 ((_ is Union!16671) (h!72636 lt!2455650)))))

(declare-fun b!6845898 () Bool)

(assert (=> b!6845898 (= e!4128675 call!623570)))

(declare-fun b!6845899 () Bool)

(assert (=> b!6845899 (= e!4128678 call!623570)))

(declare-fun b!6845900 () Bool)

(declare-fun res!2794987 () Bool)

(assert (=> b!6845900 (=> res!2794987 e!4128676)))

(assert (=> b!6845900 (= res!2794987 (not ((_ is Concat!25516) (h!72636 lt!2455650))))))

(assert (=> b!6845900 (= e!4128677 e!4128676)))

(assert (= (and d!2152179 (not res!2794988)) b!6845892))

(assert (= (and b!6845892 c!1274580) b!6845895))

(assert (= (and b!6845892 (not c!1274580)) b!6845897))

(assert (= (and b!6845895 res!2794989) b!6845893))

(assert (= (and b!6845897 c!1274581) b!6845894))

(assert (= (and b!6845897 (not c!1274581)) b!6845900))

(assert (= (and b!6845894 res!2794985) b!6845899))

(assert (= (and b!6845900 (not res!2794987)) b!6845896))

(assert (= (and b!6845896 res!2794986) b!6845898))

(assert (= (or b!6845899 b!6845898) bm!623564))

(assert (= (or b!6845894 b!6845896) bm!623565))

(assert (= (or b!6845893 bm!623564) bm!623566))

(declare-fun m!7586884 () Bool)

(assert (=> b!6845895 m!7586884))

(declare-fun m!7586886 () Bool)

(assert (=> bm!623565 m!7586886))

(declare-fun m!7586888 () Bool)

(assert (=> bm!623566 m!7586888))

(assert (=> bs!1829630 d!2152179))

(declare-fun d!2152183 () Bool)

(declare-fun lt!2455765 () Bool)

(assert (=> d!2152183 (= lt!2455765 (select (content!12977 (t!380056 (t!380056 zl!343))) (getWitness!938 zl!343 lambda!386979)))))

(declare-fun e!4128687 () Bool)

(assert (=> d!2152183 (= lt!2455765 e!4128687)))

(declare-fun res!2794995 () Bool)

(assert (=> d!2152183 (=> (not res!2794995) (not e!4128687))))

(assert (=> d!2152183 (= res!2794995 ((_ is Cons!66189) (t!380056 (t!380056 zl!343))))))

(assert (=> d!2152183 (= (contains!20321 (t!380056 (t!380056 zl!343)) (getWitness!938 zl!343 lambda!386979)) lt!2455765)))

(declare-fun b!6845910 () Bool)

(declare-fun e!4128688 () Bool)

(assert (=> b!6845910 (= e!4128687 e!4128688)))

(declare-fun res!2794996 () Bool)

(assert (=> b!6845910 (=> res!2794996 e!4128688)))

(assert (=> b!6845910 (= res!2794996 (= (h!72637 (t!380056 (t!380056 zl!343))) (getWitness!938 zl!343 lambda!386979)))))

(declare-fun b!6845911 () Bool)

(assert (=> b!6845911 (= e!4128688 (contains!20321 (t!380056 (t!380056 (t!380056 zl!343))) (getWitness!938 zl!343 lambda!386979)))))

(assert (= (and d!2152183 res!2794995) b!6845910))

(assert (= (and b!6845910 (not res!2794996)) b!6845911))

(assert (=> d!2152183 m!7586530))

(assert (=> d!2152183 m!7584904))

(declare-fun m!7586896 () Bool)

(assert (=> d!2152183 m!7586896))

(assert (=> b!6845911 m!7584904))

(declare-fun m!7586898 () Bool)

(assert (=> b!6845911 m!7586898))

(assert (=> b!6844620 d!2152183))

(declare-fun d!2152187 () Bool)

(assert (=> d!2152187 (= (isConcat!1526 lt!2455682) ((_ is Concat!25516) lt!2455682))))

(assert (=> b!6844410 d!2152187))

(assert (=> b!6844633 d!2151781))

(assert (=> b!6844633 d!2151757))

(declare-fun d!2152189 () Bool)

(assert (=> d!2152189 (= (isEmpty!38567 (unfocusZipperList!2088 zl!343)) ((_ is Nil!66188) (unfocusZipperList!2088 zl!343)))))

(assert (=> b!6844560 d!2152189))

(declare-fun b!6845914 () Bool)

(declare-fun e!4128691 () Bool)

(declare-fun e!4128697 () Bool)

(assert (=> b!6845914 (= e!4128691 e!4128697)))

(declare-fun c!1274584 () Bool)

(assert (=> b!6845914 (= c!1274584 ((_ is Star!16671) (h!72636 (exprs!6555 setElem!47059))))))

(declare-fun b!6845915 () Bool)

(declare-fun e!4128692 () Bool)

(declare-fun call!623575 () Bool)

(assert (=> b!6845915 (= e!4128692 call!623575)))

(declare-fun b!6845916 () Bool)

(declare-fun res!2794999 () Bool)

(declare-fun e!4128696 () Bool)

(assert (=> b!6845916 (=> (not res!2794999) (not e!4128696))))

(declare-fun call!623577 () Bool)

(assert (=> b!6845916 (= res!2794999 call!623577)))

(declare-fun e!4128695 () Bool)

(assert (=> b!6845916 (= e!4128695 e!4128696)))

(declare-fun b!6845917 () Bool)

(assert (=> b!6845917 (= e!4128697 e!4128692)))

(declare-fun res!2795003 () Bool)

(assert (=> b!6845917 (= res!2795003 (not (nullable!6636 (reg!17000 (h!72636 (exprs!6555 setElem!47059))))))))

(assert (=> b!6845917 (=> (not res!2795003) (not e!4128692))))

(declare-fun b!6845918 () Bool)

(declare-fun e!4128694 () Bool)

(declare-fun e!4128693 () Bool)

(assert (=> b!6845918 (= e!4128694 e!4128693)))

(declare-fun res!2795000 () Bool)

(assert (=> b!6845918 (=> (not res!2795000) (not e!4128693))))

(assert (=> b!6845918 (= res!2795000 call!623577)))

(declare-fun bm!623570 () Bool)

(declare-fun call!623576 () Bool)

(assert (=> bm!623570 (= call!623576 call!623575)))

(declare-fun bm!623571 () Bool)

(declare-fun c!1274585 () Bool)

(assert (=> bm!623571 (= call!623577 (validRegex!8407 (ite c!1274585 (regOne!33855 (h!72636 (exprs!6555 setElem!47059))) (regOne!33854 (h!72636 (exprs!6555 setElem!47059))))))))

(declare-fun bm!623572 () Bool)

(assert (=> bm!623572 (= call!623575 (validRegex!8407 (ite c!1274584 (reg!17000 (h!72636 (exprs!6555 setElem!47059))) (ite c!1274585 (regTwo!33855 (h!72636 (exprs!6555 setElem!47059))) (regTwo!33854 (h!72636 (exprs!6555 setElem!47059)))))))))

(declare-fun d!2152191 () Bool)

(declare-fun res!2795002 () Bool)

(assert (=> d!2152191 (=> res!2795002 e!4128691)))

(assert (=> d!2152191 (= res!2795002 ((_ is ElementMatch!16671) (h!72636 (exprs!6555 setElem!47059))))))

(assert (=> d!2152191 (= (validRegex!8407 (h!72636 (exprs!6555 setElem!47059))) e!4128691)))

(declare-fun b!6845919 () Bool)

(assert (=> b!6845919 (= e!4128697 e!4128695)))

(assert (=> b!6845919 (= c!1274585 ((_ is Union!16671) (h!72636 (exprs!6555 setElem!47059))))))

(declare-fun b!6845920 () Bool)

(assert (=> b!6845920 (= e!4128693 call!623576)))

(declare-fun b!6845921 () Bool)

(assert (=> b!6845921 (= e!4128696 call!623576)))

(declare-fun b!6845922 () Bool)

(declare-fun res!2795001 () Bool)

(assert (=> b!6845922 (=> res!2795001 e!4128694)))

(assert (=> b!6845922 (= res!2795001 (not ((_ is Concat!25516) (h!72636 (exprs!6555 setElem!47059)))))))

(assert (=> b!6845922 (= e!4128695 e!4128694)))

(assert (= (and d!2152191 (not res!2795002)) b!6845914))

(assert (= (and b!6845914 c!1274584) b!6845917))

(assert (= (and b!6845914 (not c!1274584)) b!6845919))

(assert (= (and b!6845917 res!2795003) b!6845915))

(assert (= (and b!6845919 c!1274585) b!6845916))

(assert (= (and b!6845919 (not c!1274585)) b!6845922))

(assert (= (and b!6845916 res!2794999) b!6845921))

(assert (= (and b!6845922 (not res!2795001)) b!6845918))

(assert (= (and b!6845918 res!2795000) b!6845920))

(assert (= (or b!6845921 b!6845920) bm!623570))

(assert (= (or b!6845916 b!6845918) bm!623571))

(assert (= (or b!6845915 bm!623570) bm!623572))

(declare-fun m!7586904 () Bool)

(assert (=> b!6845917 m!7586904))

(declare-fun m!7586906 () Bool)

(assert (=> bm!623571 m!7586906))

(declare-fun m!7586908 () Bool)

(assert (=> bm!623572 m!7586908))

(assert (=> bs!1829622 d!2152191))

(declare-fun d!2152195 () Bool)

(declare-fun res!2795004 () Bool)

(declare-fun e!4128698 () Bool)

(assert (=> d!2152195 (=> res!2795004 e!4128698)))

(assert (=> d!2152195 (= res!2795004 ((_ is Nil!66189) res!2794404))))

(assert (=> d!2152195 (= (noDuplicate!2439 res!2794404) e!4128698)))

(declare-fun b!6845923 () Bool)

(declare-fun e!4128699 () Bool)

(assert (=> b!6845923 (= e!4128698 e!4128699)))

(declare-fun res!2795005 () Bool)

(assert (=> b!6845923 (=> (not res!2795005) (not e!4128699))))

(assert (=> b!6845923 (= res!2795005 (not (contains!20321 (t!380056 res!2794404) (h!72637 res!2794404))))))

(declare-fun b!6845924 () Bool)

(assert (=> b!6845924 (= e!4128699 (noDuplicate!2439 (t!380056 res!2794404)))))

(assert (= (and d!2152195 (not res!2795004)) b!6845923))

(assert (= (and b!6845923 res!2795005) b!6845924))

(declare-fun m!7586910 () Bool)

(assert (=> b!6845923 m!7586910))

(declare-fun m!7586912 () Bool)

(assert (=> b!6845924 m!7586912))

(assert (=> d!2151641 d!2152195))

(declare-fun d!2152197 () Bool)

(assert (=> d!2152197 (= (isEmpty!38567 (tail!12802 (exprs!6555 (h!72637 zl!343)))) ((_ is Nil!66188) (tail!12802 (exprs!6555 (h!72637 zl!343)))))))

(assert (=> b!6844397 d!2152197))

(declare-fun d!2152199 () Bool)

(assert (=> d!2152199 (= (tail!12802 (exprs!6555 (h!72637 zl!343))) (t!380055 (exprs!6555 (h!72637 zl!343))))))

(assert (=> b!6844397 d!2152199))

(declare-fun d!2152201 () Bool)

(assert (=> d!2152201 (= (isEmpty!38567 (t!380055 (exprs!6555 lt!2455629))) ((_ is Nil!66188) (t!380055 (exprs!6555 lt!2455629))))))

(assert (=> b!6844414 d!2152201))

(declare-fun d!2152203 () Bool)

(declare-fun c!1274586 () Bool)

(assert (=> d!2152203 (= c!1274586 ((_ is Nil!66188) (unfocusZipperList!2088 zl!343)))))

(declare-fun e!4128700 () (InoxSet Regex!16671))

(assert (=> d!2152203 (= (content!12978 (unfocusZipperList!2088 zl!343)) e!4128700)))

(declare-fun b!6845925 () Bool)

(assert (=> b!6845925 (= e!4128700 ((as const (Array Regex!16671 Bool)) false))))

(declare-fun b!6845926 () Bool)

(assert (=> b!6845926 (= e!4128700 ((_ map or) (store ((as const (Array Regex!16671 Bool)) false) (h!72636 (unfocusZipperList!2088 zl!343)) true) (content!12978 (t!380055 (unfocusZipperList!2088 zl!343)))))))

(assert (= (and d!2152203 c!1274586) b!6845925))

(assert (= (and d!2152203 (not c!1274586)) b!6845926))

(declare-fun m!7586914 () Bool)

(assert (=> b!6845926 m!7586914))

(assert (=> b!6845926 m!7586284))

(assert (=> d!2151613 d!2152203))

(assert (=> b!6844338 d!2151577))

(assert (=> b!6844578 d!2151781))

(assert (=> b!6844578 d!2151757))

(declare-fun b!6845928 () Bool)

(declare-fun e!4128701 () Bool)

(declare-fun tp!1874628 () Bool)

(declare-fun tp!1874630 () Bool)

(assert (=> b!6845928 (= e!4128701 (and tp!1874628 tp!1874630))))

(declare-fun b!6845927 () Bool)

(assert (=> b!6845927 (= e!4128701 tp_is_empty!42595)))

(declare-fun b!6845929 () Bool)

(declare-fun tp!1874629 () Bool)

(assert (=> b!6845929 (= e!4128701 tp!1874629)))

(assert (=> b!6844710 (= tp!1874549 e!4128701)))

(declare-fun b!6845930 () Bool)

(declare-fun tp!1874631 () Bool)

(declare-fun tp!1874632 () Bool)

(assert (=> b!6845930 (= e!4128701 (and tp!1874631 tp!1874632))))

(assert (= (and b!6844710 ((_ is ElementMatch!16671) (regOne!33854 (regTwo!33855 (regTwo!33854 r!7292))))) b!6845927))

(assert (= (and b!6844710 ((_ is Concat!25516) (regOne!33854 (regTwo!33855 (regTwo!33854 r!7292))))) b!6845928))

(assert (= (and b!6844710 ((_ is Star!16671) (regOne!33854 (regTwo!33855 (regTwo!33854 r!7292))))) b!6845929))

(assert (= (and b!6844710 ((_ is Union!16671) (regOne!33854 (regTwo!33855 (regTwo!33854 r!7292))))) b!6845930))

(declare-fun b!6845932 () Bool)

(declare-fun e!4128702 () Bool)

(declare-fun tp!1874633 () Bool)

(declare-fun tp!1874635 () Bool)

(assert (=> b!6845932 (= e!4128702 (and tp!1874633 tp!1874635))))

(declare-fun b!6845931 () Bool)

(assert (=> b!6845931 (= e!4128702 tp_is_empty!42595)))

(declare-fun b!6845933 () Bool)

(declare-fun tp!1874634 () Bool)

(assert (=> b!6845933 (= e!4128702 tp!1874634)))

(assert (=> b!6844710 (= tp!1874551 e!4128702)))

(declare-fun b!6845934 () Bool)

(declare-fun tp!1874636 () Bool)

(declare-fun tp!1874637 () Bool)

(assert (=> b!6845934 (= e!4128702 (and tp!1874636 tp!1874637))))

(assert (= (and b!6844710 ((_ is ElementMatch!16671) (regTwo!33854 (regTwo!33855 (regTwo!33854 r!7292))))) b!6845931))

(assert (= (and b!6844710 ((_ is Concat!25516) (regTwo!33854 (regTwo!33855 (regTwo!33854 r!7292))))) b!6845932))

(assert (= (and b!6844710 ((_ is Star!16671) (regTwo!33854 (regTwo!33855 (regTwo!33854 r!7292))))) b!6845933))

(assert (= (and b!6844710 ((_ is Union!16671) (regTwo!33854 (regTwo!33855 (regTwo!33854 r!7292))))) b!6845934))

(declare-fun b!6845936 () Bool)

(declare-fun e!4128703 () Bool)

(declare-fun tp!1874638 () Bool)

(declare-fun tp!1874640 () Bool)

(assert (=> b!6845936 (= e!4128703 (and tp!1874638 tp!1874640))))

(declare-fun b!6845935 () Bool)

(assert (=> b!6845935 (= e!4128703 tp_is_empty!42595)))

(declare-fun b!6845937 () Bool)

(declare-fun tp!1874639 () Bool)

(assert (=> b!6845937 (= e!4128703 tp!1874639)))

(assert (=> b!6844728 (= tp!1874572 e!4128703)))

(declare-fun b!6845938 () Bool)

(declare-fun tp!1874641 () Bool)

(declare-fun tp!1874642 () Bool)

(assert (=> b!6845938 (= e!4128703 (and tp!1874641 tp!1874642))))

(assert (= (and b!6844728 ((_ is ElementMatch!16671) (regOne!33855 (regOne!33855 (reg!17000 r!7292))))) b!6845935))

(assert (= (and b!6844728 ((_ is Concat!25516) (regOne!33855 (regOne!33855 (reg!17000 r!7292))))) b!6845936))

(assert (= (and b!6844728 ((_ is Star!16671) (regOne!33855 (regOne!33855 (reg!17000 r!7292))))) b!6845937))

(assert (= (and b!6844728 ((_ is Union!16671) (regOne!33855 (regOne!33855 (reg!17000 r!7292))))) b!6845938))

(declare-fun b!6845940 () Bool)

(declare-fun e!4128706 () Bool)

(declare-fun tp!1874643 () Bool)

(declare-fun tp!1874645 () Bool)

(assert (=> b!6845940 (= e!4128706 (and tp!1874643 tp!1874645))))

(declare-fun b!6845939 () Bool)

(assert (=> b!6845939 (= e!4128706 tp_is_empty!42595)))

(declare-fun b!6845941 () Bool)

(declare-fun tp!1874644 () Bool)

(assert (=> b!6845941 (= e!4128706 tp!1874644)))

(assert (=> b!6844728 (= tp!1874573 e!4128706)))

(declare-fun b!6845942 () Bool)

(declare-fun tp!1874646 () Bool)

(declare-fun tp!1874647 () Bool)

(assert (=> b!6845942 (= e!4128706 (and tp!1874646 tp!1874647))))

(assert (= (and b!6844728 ((_ is ElementMatch!16671) (regTwo!33855 (regOne!33855 (reg!17000 r!7292))))) b!6845939))

(assert (= (and b!6844728 ((_ is Concat!25516) (regTwo!33855 (regOne!33855 (reg!17000 r!7292))))) b!6845940))

(assert (= (and b!6844728 ((_ is Star!16671) (regTwo!33855 (regOne!33855 (reg!17000 r!7292))))) b!6845941))

(assert (= (and b!6844728 ((_ is Union!16671) (regTwo!33855 (regOne!33855 (reg!17000 r!7292))))) b!6845942))

(declare-fun b!6845953 () Bool)

(declare-fun e!4128712 () Bool)

(declare-fun tp!1874648 () Bool)

(declare-fun tp!1874650 () Bool)

(assert (=> b!6845953 (= e!4128712 (and tp!1874648 tp!1874650))))

(declare-fun b!6845952 () Bool)

(assert (=> b!6845952 (= e!4128712 tp_is_empty!42595)))

(declare-fun b!6845954 () Bool)

(declare-fun tp!1874649 () Bool)

(assert (=> b!6845954 (= e!4128712 tp!1874649)))

(assert (=> b!6844719 (= tp!1874560 e!4128712)))

(declare-fun b!6845955 () Bool)

(declare-fun tp!1874651 () Bool)

(declare-fun tp!1874652 () Bool)

(assert (=> b!6845955 (= e!4128712 (and tp!1874651 tp!1874652))))

(assert (= (and b!6844719 ((_ is ElementMatch!16671) (reg!17000 (regTwo!33854 (regOne!33854 r!7292))))) b!6845952))

(assert (= (and b!6844719 ((_ is Concat!25516) (reg!17000 (regTwo!33854 (regOne!33854 r!7292))))) b!6845953))

(assert (= (and b!6844719 ((_ is Star!16671) (reg!17000 (regTwo!33854 (regOne!33854 r!7292))))) b!6845954))

(assert (= (and b!6844719 ((_ is Union!16671) (reg!17000 (regTwo!33854 (regOne!33854 r!7292))))) b!6845955))

(declare-fun b!6845957 () Bool)

(declare-fun e!4128713 () Bool)

(declare-fun tp!1874653 () Bool)

(declare-fun tp!1874655 () Bool)

(assert (=> b!6845957 (= e!4128713 (and tp!1874653 tp!1874655))))

(declare-fun b!6845956 () Bool)

(assert (=> b!6845956 (= e!4128713 tp_is_empty!42595)))

(declare-fun b!6845958 () Bool)

(declare-fun tp!1874654 () Bool)

(assert (=> b!6845958 (= e!4128713 tp!1874654)))

(assert (=> b!6844726 (= tp!1874569 e!4128713)))

(declare-fun b!6845959 () Bool)

(declare-fun tp!1874656 () Bool)

(declare-fun tp!1874657 () Bool)

(assert (=> b!6845959 (= e!4128713 (and tp!1874656 tp!1874657))))

(assert (= (and b!6844726 ((_ is ElementMatch!16671) (regOne!33854 (regOne!33855 (reg!17000 r!7292))))) b!6845956))

(assert (= (and b!6844726 ((_ is Concat!25516) (regOne!33854 (regOne!33855 (reg!17000 r!7292))))) b!6845957))

(assert (= (and b!6844726 ((_ is Star!16671) (regOne!33854 (regOne!33855 (reg!17000 r!7292))))) b!6845958))

(assert (= (and b!6844726 ((_ is Union!16671) (regOne!33854 (regOne!33855 (reg!17000 r!7292))))) b!6845959))

(declare-fun b!6845961 () Bool)

(declare-fun e!4128714 () Bool)

(declare-fun tp!1874658 () Bool)

(declare-fun tp!1874660 () Bool)

(assert (=> b!6845961 (= e!4128714 (and tp!1874658 tp!1874660))))

(declare-fun b!6845960 () Bool)

(assert (=> b!6845960 (= e!4128714 tp_is_empty!42595)))

(declare-fun b!6845962 () Bool)

(declare-fun tp!1874659 () Bool)

(assert (=> b!6845962 (= e!4128714 tp!1874659)))

(assert (=> b!6844726 (= tp!1874571 e!4128714)))

(declare-fun b!6845963 () Bool)

(declare-fun tp!1874661 () Bool)

(declare-fun tp!1874662 () Bool)

(assert (=> b!6845963 (= e!4128714 (and tp!1874661 tp!1874662))))

(assert (= (and b!6844726 ((_ is ElementMatch!16671) (regTwo!33854 (regOne!33855 (reg!17000 r!7292))))) b!6845960))

(assert (= (and b!6844726 ((_ is Concat!25516) (regTwo!33854 (regOne!33855 (reg!17000 r!7292))))) b!6845961))

(assert (= (and b!6844726 ((_ is Star!16671) (regTwo!33854 (regOne!33855 (reg!17000 r!7292))))) b!6845962))

(assert (= (and b!6844726 ((_ is Union!16671) (regTwo!33854 (regOne!33855 (reg!17000 r!7292))))) b!6845963))

(declare-fun b!6845965 () Bool)

(declare-fun e!4128715 () Bool)

(declare-fun tp!1874663 () Bool)

(declare-fun tp!1874665 () Bool)

(assert (=> b!6845965 (= e!4128715 (and tp!1874663 tp!1874665))))

(declare-fun b!6845964 () Bool)

(assert (=> b!6845964 (= e!4128715 tp_is_empty!42595)))

(declare-fun b!6845966 () Bool)

(declare-fun tp!1874664 () Bool)

(assert (=> b!6845966 (= e!4128715 tp!1874664)))

(assert (=> b!6844673 (= tp!1874501 e!4128715)))

(declare-fun b!6845967 () Bool)

(declare-fun tp!1874666 () Bool)

(declare-fun tp!1874667 () Bool)

(assert (=> b!6845967 (= e!4128715 (and tp!1874666 tp!1874667))))

(assert (= (and b!6844673 ((_ is ElementMatch!16671) (regOne!33855 (regOne!33855 (regOne!33855 r!7292))))) b!6845964))

(assert (= (and b!6844673 ((_ is Concat!25516) (regOne!33855 (regOne!33855 (regOne!33855 r!7292))))) b!6845965))

(assert (= (and b!6844673 ((_ is Star!16671) (regOne!33855 (regOne!33855 (regOne!33855 r!7292))))) b!6845966))

(assert (= (and b!6844673 ((_ is Union!16671) (regOne!33855 (regOne!33855 (regOne!33855 r!7292))))) b!6845967))

(declare-fun b!6845969 () Bool)

(declare-fun e!4128716 () Bool)

(declare-fun tp!1874668 () Bool)

(declare-fun tp!1874670 () Bool)

(assert (=> b!6845969 (= e!4128716 (and tp!1874668 tp!1874670))))

(declare-fun b!6845968 () Bool)

(assert (=> b!6845968 (= e!4128716 tp_is_empty!42595)))

(declare-fun b!6845970 () Bool)

(declare-fun tp!1874669 () Bool)

(assert (=> b!6845970 (= e!4128716 tp!1874669)))

(assert (=> b!6844673 (= tp!1874502 e!4128716)))

(declare-fun b!6845971 () Bool)

(declare-fun tp!1874671 () Bool)

(declare-fun tp!1874672 () Bool)

(assert (=> b!6845971 (= e!4128716 (and tp!1874671 tp!1874672))))

(assert (= (and b!6844673 ((_ is ElementMatch!16671) (regTwo!33855 (regOne!33855 (regOne!33855 r!7292))))) b!6845968))

(assert (= (and b!6844673 ((_ is Concat!25516) (regTwo!33855 (regOne!33855 (regOne!33855 r!7292))))) b!6845969))

(assert (= (and b!6844673 ((_ is Star!16671) (regTwo!33855 (regOne!33855 (regOne!33855 r!7292))))) b!6845970))

(assert (= (and b!6844673 ((_ is Union!16671) (regTwo!33855 (regOne!33855 (regOne!33855 r!7292))))) b!6845971))

(declare-fun b!6845973 () Bool)

(declare-fun e!4128718 () Bool)

(declare-fun tp!1874673 () Bool)

(assert (=> b!6845973 (= e!4128718 tp!1874673)))

(declare-fun e!4128717 () Bool)

(declare-fun b!6845972 () Bool)

(declare-fun tp!1874674 () Bool)

(assert (=> b!6845972 (= e!4128717 (and (inv!84924 (h!72637 (t!380056 res!2794404))) e!4128718 tp!1874674))))

(assert (=> b!6844483 (= tp!1874479 e!4128717)))

(assert (= b!6845972 b!6845973))

(assert (= (and b!6844483 ((_ is Cons!66189) (t!380056 res!2794404))) b!6845972))

(declare-fun m!7586926 () Bool)

(assert (=> b!6845972 m!7586926))

(declare-fun b!6845977 () Bool)

(declare-fun e!4128721 () Bool)

(declare-fun tp!1874675 () Bool)

(declare-fun tp!1874677 () Bool)

(assert (=> b!6845977 (= e!4128721 (and tp!1874675 tp!1874677))))

(declare-fun b!6845976 () Bool)

(assert (=> b!6845976 (= e!4128721 tp_is_empty!42595)))

(declare-fun b!6845978 () Bool)

(declare-fun tp!1874676 () Bool)

(assert (=> b!6845978 (= e!4128721 tp!1874676)))

(assert (=> b!6844743 (= tp!1874590 e!4128721)))

(declare-fun b!6845979 () Bool)

(declare-fun tp!1874678 () Bool)

(declare-fun tp!1874679 () Bool)

(assert (=> b!6845979 (= e!4128721 (and tp!1874678 tp!1874679))))

(assert (= (and b!6844743 ((_ is ElementMatch!16671) (reg!17000 (h!72636 (exprs!6555 (h!72637 zl!343)))))) b!6845976))

(assert (= (and b!6844743 ((_ is Concat!25516) (reg!17000 (h!72636 (exprs!6555 (h!72637 zl!343)))))) b!6845977))

(assert (= (and b!6844743 ((_ is Star!16671) (reg!17000 (h!72636 (exprs!6555 (h!72637 zl!343)))))) b!6845978))

(assert (= (and b!6844743 ((_ is Union!16671) (reg!17000 (h!72636 (exprs!6555 (h!72637 zl!343)))))) b!6845979))

(declare-fun b!6845981 () Bool)

(declare-fun e!4128722 () Bool)

(declare-fun tp!1874680 () Bool)

(declare-fun tp!1874682 () Bool)

(assert (=> b!6845981 (= e!4128722 (and tp!1874680 tp!1874682))))

(declare-fun b!6845980 () Bool)

(assert (=> b!6845980 (= e!4128722 tp_is_empty!42595)))

(declare-fun b!6845982 () Bool)

(declare-fun tp!1874681 () Bool)

(assert (=> b!6845982 (= e!4128722 tp!1874681)))

(assert (=> b!6844734 (= tp!1874579 e!4128722)))

(declare-fun b!6845983 () Bool)

(declare-fun tp!1874683 () Bool)

(declare-fun tp!1874684 () Bool)

(assert (=> b!6845983 (= e!4128722 (and tp!1874683 tp!1874684))))

(assert (= (and b!6844734 ((_ is ElementMatch!16671) (regOne!33854 (regOne!33854 (reg!17000 r!7292))))) b!6845980))

(assert (= (and b!6844734 ((_ is Concat!25516) (regOne!33854 (regOne!33854 (reg!17000 r!7292))))) b!6845981))

(assert (= (and b!6844734 ((_ is Star!16671) (regOne!33854 (regOne!33854 (reg!17000 r!7292))))) b!6845982))

(assert (= (and b!6844734 ((_ is Union!16671) (regOne!33854 (regOne!33854 (reg!17000 r!7292))))) b!6845983))

(declare-fun b!6845985 () Bool)

(declare-fun e!4128725 () Bool)

(declare-fun tp!1874685 () Bool)

(declare-fun tp!1874687 () Bool)

(assert (=> b!6845985 (= e!4128725 (and tp!1874685 tp!1874687))))

(declare-fun b!6845984 () Bool)

(assert (=> b!6845984 (= e!4128725 tp_is_empty!42595)))

(declare-fun b!6845986 () Bool)

(declare-fun tp!1874686 () Bool)

(assert (=> b!6845986 (= e!4128725 tp!1874686)))

(assert (=> b!6844734 (= tp!1874581 e!4128725)))

(declare-fun b!6845987 () Bool)

(declare-fun tp!1874688 () Bool)

(declare-fun tp!1874689 () Bool)

(assert (=> b!6845987 (= e!4128725 (and tp!1874688 tp!1874689))))

(assert (= (and b!6844734 ((_ is ElementMatch!16671) (regTwo!33854 (regOne!33854 (reg!17000 r!7292))))) b!6845984))

(assert (= (and b!6844734 ((_ is Concat!25516) (regTwo!33854 (regOne!33854 (reg!17000 r!7292))))) b!6845985))

(assert (= (and b!6844734 ((_ is Star!16671) (regTwo!33854 (regOne!33854 (reg!17000 r!7292))))) b!6845986))

(assert (= (and b!6844734 ((_ is Union!16671) (regTwo!33854 (regOne!33854 (reg!17000 r!7292))))) b!6845987))

(declare-fun b!6845998 () Bool)

(declare-fun e!4128731 () Bool)

(declare-fun tp!1874690 () Bool)

(declare-fun tp!1874692 () Bool)

(assert (=> b!6845998 (= e!4128731 (and tp!1874690 tp!1874692))))

(declare-fun b!6845997 () Bool)

(assert (=> b!6845997 (= e!4128731 tp_is_empty!42595)))

(declare-fun b!6845999 () Bool)

(declare-fun tp!1874691 () Bool)

(assert (=> b!6845999 (= e!4128731 tp!1874691)))

(assert (=> b!6844736 (= tp!1874582 e!4128731)))

(declare-fun b!6846000 () Bool)

(declare-fun tp!1874693 () Bool)

(declare-fun tp!1874694 () Bool)

(assert (=> b!6846000 (= e!4128731 (and tp!1874693 tp!1874694))))

(assert (= (and b!6844736 ((_ is ElementMatch!16671) (regOne!33855 (regOne!33854 (reg!17000 r!7292))))) b!6845997))

(assert (= (and b!6844736 ((_ is Concat!25516) (regOne!33855 (regOne!33854 (reg!17000 r!7292))))) b!6845998))

(assert (= (and b!6844736 ((_ is Star!16671) (regOne!33855 (regOne!33854 (reg!17000 r!7292))))) b!6845999))

(assert (= (and b!6844736 ((_ is Union!16671) (regOne!33855 (regOne!33854 (reg!17000 r!7292))))) b!6846000))

(declare-fun b!6846002 () Bool)

(declare-fun e!4128732 () Bool)

(declare-fun tp!1874695 () Bool)

(declare-fun tp!1874697 () Bool)

(assert (=> b!6846002 (= e!4128732 (and tp!1874695 tp!1874697))))

(declare-fun b!6846001 () Bool)

(assert (=> b!6846001 (= e!4128732 tp_is_empty!42595)))

(declare-fun b!6846003 () Bool)

(declare-fun tp!1874696 () Bool)

(assert (=> b!6846003 (= e!4128732 tp!1874696)))

(assert (=> b!6844736 (= tp!1874583 e!4128732)))

(declare-fun b!6846004 () Bool)

(declare-fun tp!1874698 () Bool)

(declare-fun tp!1874699 () Bool)

(assert (=> b!6846004 (= e!4128732 (and tp!1874698 tp!1874699))))

(assert (= (and b!6844736 ((_ is ElementMatch!16671) (regTwo!33855 (regOne!33854 (reg!17000 r!7292))))) b!6846001))

(assert (= (and b!6844736 ((_ is Concat!25516) (regTwo!33855 (regOne!33854 (reg!17000 r!7292))))) b!6846002))

(assert (= (and b!6844736 ((_ is Star!16671) (regTwo!33855 (regOne!33854 (reg!17000 r!7292))))) b!6846003))

(assert (= (and b!6844736 ((_ is Union!16671) (regTwo!33855 (regOne!33854 (reg!17000 r!7292))))) b!6846004))

(declare-fun b!6846006 () Bool)

(declare-fun e!4128733 () Bool)

(declare-fun tp!1874700 () Bool)

(declare-fun tp!1874702 () Bool)

(assert (=> b!6846006 (= e!4128733 (and tp!1874700 tp!1874702))))

(declare-fun b!6846005 () Bool)

(assert (=> b!6846005 (= e!4128733 tp_is_empty!42595)))

(declare-fun b!6846007 () Bool)

(declare-fun tp!1874701 () Bool)

(assert (=> b!6846007 (= e!4128733 tp!1874701)))

(assert (=> b!6844702 (= tp!1874538 e!4128733)))

(declare-fun b!6846008 () Bool)

(declare-fun tp!1874703 () Bool)

(declare-fun tp!1874704 () Bool)

(assert (=> b!6846008 (= e!4128733 (and tp!1874703 tp!1874704))))

(assert (= (and b!6844702 ((_ is ElementMatch!16671) (reg!17000 (h!72636 (exprs!6555 setElem!47059))))) b!6846005))

(assert (= (and b!6844702 ((_ is Concat!25516) (reg!17000 (h!72636 (exprs!6555 setElem!47059))))) b!6846006))

(assert (= (and b!6844702 ((_ is Star!16671) (reg!17000 (h!72636 (exprs!6555 setElem!47059))))) b!6846007))

(assert (= (and b!6844702 ((_ is Union!16671) (reg!17000 (h!72636 (exprs!6555 setElem!47059))))) b!6846008))

(declare-fun b!6846010 () Bool)

(declare-fun e!4128734 () Bool)

(declare-fun tp!1874705 () Bool)

(declare-fun tp!1874707 () Bool)

(assert (=> b!6846010 (= e!4128734 (and tp!1874705 tp!1874707))))

(declare-fun b!6846009 () Bool)

(assert (=> b!6846009 (= e!4128734 tp_is_empty!42595)))

(declare-fun b!6846011 () Bool)

(declare-fun tp!1874706 () Bool)

(assert (=> b!6846011 (= e!4128734 tp!1874706)))

(assert (=> b!6844751 (= tp!1874601 e!4128734)))

(declare-fun b!6846012 () Bool)

(declare-fun tp!1874708 () Bool)

(declare-fun tp!1874709 () Bool)

(assert (=> b!6846012 (= e!4128734 (and tp!1874708 tp!1874709))))

(assert (= (and b!6844751 ((_ is ElementMatch!16671) (regOne!33855 (reg!17000 (regOne!33855 r!7292))))) b!6846009))

(assert (= (and b!6844751 ((_ is Concat!25516) (regOne!33855 (reg!17000 (regOne!33855 r!7292))))) b!6846010))

(assert (= (and b!6844751 ((_ is Star!16671) (regOne!33855 (reg!17000 (regOne!33855 r!7292))))) b!6846011))

(assert (= (and b!6844751 ((_ is Union!16671) (regOne!33855 (reg!17000 (regOne!33855 r!7292))))) b!6846012))

(declare-fun b!6846016 () Bool)

(declare-fun e!4128737 () Bool)

(declare-fun tp!1874710 () Bool)

(declare-fun tp!1874712 () Bool)

(assert (=> b!6846016 (= e!4128737 (and tp!1874710 tp!1874712))))

(declare-fun b!6846015 () Bool)

(assert (=> b!6846015 (= e!4128737 tp_is_empty!42595)))

(declare-fun b!6846017 () Bool)

(declare-fun tp!1874711 () Bool)

(assert (=> b!6846017 (= e!4128737 tp!1874711)))

(assert (=> b!6844751 (= tp!1874602 e!4128737)))

(declare-fun b!6846018 () Bool)

(declare-fun tp!1874713 () Bool)

(declare-fun tp!1874714 () Bool)

(assert (=> b!6846018 (= e!4128737 (and tp!1874713 tp!1874714))))

(assert (= (and b!6844751 ((_ is ElementMatch!16671) (regTwo!33855 (reg!17000 (regOne!33855 r!7292))))) b!6846015))

(assert (= (and b!6844751 ((_ is Concat!25516) (regTwo!33855 (reg!17000 (regOne!33855 r!7292))))) b!6846016))

(assert (= (and b!6844751 ((_ is Star!16671) (regTwo!33855 (reg!17000 (regOne!33855 r!7292))))) b!6846017))

(assert (= (and b!6844751 ((_ is Union!16671) (regTwo!33855 (reg!17000 (regOne!33855 r!7292))))) b!6846018))

(declare-fun b!6846020 () Bool)

(declare-fun e!4128738 () Bool)

(declare-fun tp!1874715 () Bool)

(declare-fun tp!1874717 () Bool)

(assert (=> b!6846020 (= e!4128738 (and tp!1874715 tp!1874717))))

(declare-fun b!6846019 () Bool)

(assert (=> b!6846019 (= e!4128738 tp_is_empty!42595)))

(declare-fun b!6846021 () Bool)

(declare-fun tp!1874716 () Bool)

(assert (=> b!6846021 (= e!4128738 tp!1874716)))

(assert (=> b!6844684 (= tp!1874514 e!4128738)))

(declare-fun b!6846022 () Bool)

(declare-fun tp!1874718 () Bool)

(declare-fun tp!1874719 () Bool)

(assert (=> b!6846022 (= e!4128738 (and tp!1874718 tp!1874719))))

(assert (= (and b!6844684 ((_ is ElementMatch!16671) (reg!17000 (regOne!33855 (regTwo!33855 r!7292))))) b!6846019))

(assert (= (and b!6844684 ((_ is Concat!25516) (reg!17000 (regOne!33855 (regTwo!33855 r!7292))))) b!6846020))

(assert (= (and b!6844684 ((_ is Star!16671) (reg!17000 (regOne!33855 (regTwo!33855 r!7292))))) b!6846021))

(assert (= (and b!6844684 ((_ is Union!16671) (reg!17000 (regOne!33855 (regTwo!33855 r!7292))))) b!6846022))

(declare-fun b!6846033 () Bool)

(declare-fun e!4128746 () Bool)

(declare-fun tp!1874720 () Bool)

(declare-fun tp!1874722 () Bool)

(assert (=> b!6846033 (= e!4128746 (and tp!1874720 tp!1874722))))

(declare-fun b!6846032 () Bool)

(assert (=> b!6846032 (= e!4128746 tp_is_empty!42595)))

(declare-fun b!6846034 () Bool)

(declare-fun tp!1874721 () Bool)

(assert (=> b!6846034 (= e!4128746 tp!1874721)))

(assert (=> b!6844675 (= tp!1874503 e!4128746)))

(declare-fun b!6846035 () Bool)

(declare-fun tp!1874723 () Bool)

(declare-fun tp!1874724 () Bool)

(assert (=> b!6846035 (= e!4128746 (and tp!1874723 tp!1874724))))

(assert (= (and b!6844675 ((_ is ElementMatch!16671) (regOne!33854 (regTwo!33855 (regOne!33855 r!7292))))) b!6846032))

(assert (= (and b!6844675 ((_ is Concat!25516) (regOne!33854 (regTwo!33855 (regOne!33855 r!7292))))) b!6846033))

(assert (= (and b!6844675 ((_ is Star!16671) (regOne!33854 (regTwo!33855 (regOne!33855 r!7292))))) b!6846034))

(assert (= (and b!6844675 ((_ is Union!16671) (regOne!33854 (regTwo!33855 (regOne!33855 r!7292))))) b!6846035))

(declare-fun b!6846037 () Bool)

(declare-fun e!4128747 () Bool)

(declare-fun tp!1874725 () Bool)

(declare-fun tp!1874727 () Bool)

(assert (=> b!6846037 (= e!4128747 (and tp!1874725 tp!1874727))))

(declare-fun b!6846036 () Bool)

(assert (=> b!6846036 (= e!4128747 tp_is_empty!42595)))

(declare-fun b!6846038 () Bool)

(declare-fun tp!1874726 () Bool)

(assert (=> b!6846038 (= e!4128747 tp!1874726)))

(assert (=> b!6844675 (= tp!1874505 e!4128747)))

(declare-fun b!6846039 () Bool)

(declare-fun tp!1874728 () Bool)

(declare-fun tp!1874729 () Bool)

(assert (=> b!6846039 (= e!4128747 (and tp!1874728 tp!1874729))))

(assert (= (and b!6844675 ((_ is ElementMatch!16671) (regTwo!33854 (regTwo!33855 (regOne!33855 r!7292))))) b!6846036))

(assert (= (and b!6844675 ((_ is Concat!25516) (regTwo!33854 (regTwo!33855 (regOne!33855 r!7292))))) b!6846037))

(assert (= (and b!6844675 ((_ is Star!16671) (regTwo!33854 (regTwo!33855 (regOne!33855 r!7292))))) b!6846038))

(assert (= (and b!6844675 ((_ is Union!16671) (regTwo!33854 (regTwo!33855 (regOne!33855 r!7292))))) b!6846039))

(declare-fun b!6846040 () Bool)

(declare-fun e!4128748 () Bool)

(declare-fun tp!1874730 () Bool)

(declare-fun tp!1874731 () Bool)

(assert (=> b!6846040 (= e!4128748 (and tp!1874730 tp!1874731))))

(assert (=> b!6844698 (= tp!1874534 e!4128748)))

(assert (= (and b!6844698 ((_ is Cons!66188) (exprs!6555 setElem!47067))) b!6846040))

(declare-fun b!6846042 () Bool)

(declare-fun e!4128749 () Bool)

(declare-fun tp!1874732 () Bool)

(declare-fun tp!1874734 () Bool)

(assert (=> b!6846042 (= e!4128749 (and tp!1874732 tp!1874734))))

(declare-fun b!6846041 () Bool)

(assert (=> b!6846041 (= e!4128749 tp_is_empty!42595)))

(declare-fun b!6846043 () Bool)

(declare-fun tp!1874733 () Bool)

(assert (=> b!6846043 (= e!4128749 tp!1874733)))

(assert (=> b!6844771 (= tp!1874626 e!4128749)))

(declare-fun b!6846044 () Bool)

(declare-fun tp!1874735 () Bool)

(declare-fun tp!1874736 () Bool)

(assert (=> b!6846044 (= e!4128749 (and tp!1874735 tp!1874736))))

(assert (= (and b!6844771 ((_ is ElementMatch!16671) (regOne!33855 (regTwo!33855 (regOne!33854 r!7292))))) b!6846041))

(assert (= (and b!6844771 ((_ is Concat!25516) (regOne!33855 (regTwo!33855 (regOne!33854 r!7292))))) b!6846042))

(assert (= (and b!6844771 ((_ is Star!16671) (regOne!33855 (regTwo!33855 (regOne!33854 r!7292))))) b!6846043))

(assert (= (and b!6844771 ((_ is Union!16671) (regOne!33855 (regTwo!33855 (regOne!33854 r!7292))))) b!6846044))

(declare-fun b!6846046 () Bool)

(declare-fun e!4128750 () Bool)

(declare-fun tp!1874737 () Bool)

(declare-fun tp!1874739 () Bool)

(assert (=> b!6846046 (= e!4128750 (and tp!1874737 tp!1874739))))

(declare-fun b!6846045 () Bool)

(assert (=> b!6846045 (= e!4128750 tp_is_empty!42595)))

(declare-fun b!6846047 () Bool)

(declare-fun tp!1874738 () Bool)

(assert (=> b!6846047 (= e!4128750 tp!1874738)))

(assert (=> b!6844771 (= tp!1874627 e!4128750)))

(declare-fun b!6846048 () Bool)

(declare-fun tp!1874740 () Bool)

(declare-fun tp!1874741 () Bool)

(assert (=> b!6846048 (= e!4128750 (and tp!1874740 tp!1874741))))

(assert (= (and b!6844771 ((_ is ElementMatch!16671) (regTwo!33855 (regTwo!33855 (regOne!33854 r!7292))))) b!6846045))

(assert (= (and b!6844771 ((_ is Concat!25516) (regTwo!33855 (regTwo!33855 (regOne!33854 r!7292))))) b!6846046))

(assert (= (and b!6844771 ((_ is Star!16671) (regTwo!33855 (regTwo!33855 (regOne!33854 r!7292))))) b!6846047))

(assert (= (and b!6844771 ((_ is Union!16671) (regTwo!33855 (regTwo!33855 (regOne!33854 r!7292))))) b!6846048))

(declare-fun b!6846050 () Bool)

(declare-fun e!4128751 () Bool)

(declare-fun tp!1874742 () Bool)

(declare-fun tp!1874744 () Bool)

(assert (=> b!6846050 (= e!4128751 (and tp!1874742 tp!1874744))))

(declare-fun b!6846049 () Bool)

(assert (=> b!6846049 (= e!4128751 tp_is_empty!42595)))

(declare-fun b!6846051 () Bool)

(declare-fun tp!1874743 () Bool)

(assert (=> b!6846051 (= e!4128751 tp!1874743)))

(assert (=> b!6844692 (= tp!1874524 e!4128751)))

(declare-fun b!6846052 () Bool)

(declare-fun tp!1874745 () Bool)

(declare-fun tp!1874746 () Bool)

(assert (=> b!6846052 (= e!4128751 (and tp!1874745 tp!1874746))))

(assert (= (and b!6844692 ((_ is ElementMatch!16671) (reg!17000 (regOne!33854 (regTwo!33855 r!7292))))) b!6846049))

(assert (= (and b!6844692 ((_ is Concat!25516) (reg!17000 (regOne!33854 (regTwo!33855 r!7292))))) b!6846050))

(assert (= (and b!6844692 ((_ is Star!16671) (reg!17000 (regOne!33854 (regTwo!33855 r!7292))))) b!6846051))

(assert (= (and b!6844692 ((_ is Union!16671) (reg!17000 (regOne!33854 (regTwo!33855 r!7292))))) b!6846052))

(declare-fun b!6846063 () Bool)

(declare-fun e!4128760 () Bool)

(declare-fun tp!1874747 () Bool)

(assert (=> b!6846063 (= e!4128760 tp!1874747)))

(declare-fun tp!1874748 () Bool)

(declare-fun e!4128759 () Bool)

(declare-fun b!6846062 () Bool)

(assert (=> b!6846062 (= e!4128759 (and (inv!84924 (h!72637 (t!380056 (t!380056 (t!380056 zl!343))))) e!4128760 tp!1874748))))

(assert (=> b!6844746 (= tp!1874597 e!4128759)))

(assert (= b!6846062 b!6846063))

(assert (= (and b!6844746 ((_ is Cons!66189) (t!380056 (t!380056 (t!380056 zl!343))))) b!6846062))

(declare-fun m!7586948 () Bool)

(assert (=> b!6846062 m!7586948))

(declare-fun b!6846065 () Bool)

(declare-fun e!4128761 () Bool)

(declare-fun tp!1874749 () Bool)

(declare-fun tp!1874751 () Bool)

(assert (=> b!6846065 (= e!4128761 (and tp!1874749 tp!1874751))))

(declare-fun b!6846064 () Bool)

(assert (=> b!6846064 (= e!4128761 tp_is_empty!42595)))

(declare-fun b!6846066 () Bool)

(declare-fun tp!1874750 () Bool)

(assert (=> b!6846066 (= e!4128761 tp!1874750)))

(assert (=> b!6844738 (= tp!1874584 e!4128761)))

(declare-fun b!6846067 () Bool)

(declare-fun tp!1874752 () Bool)

(declare-fun tp!1874753 () Bool)

(assert (=> b!6846067 (= e!4128761 (and tp!1874752 tp!1874753))))

(assert (= (and b!6844738 ((_ is ElementMatch!16671) (regOne!33854 (regTwo!33854 (reg!17000 r!7292))))) b!6846064))

(assert (= (and b!6844738 ((_ is Concat!25516) (regOne!33854 (regTwo!33854 (reg!17000 r!7292))))) b!6846065))

(assert (= (and b!6844738 ((_ is Star!16671) (regOne!33854 (regTwo!33854 (reg!17000 r!7292))))) b!6846066))

(assert (= (and b!6844738 ((_ is Union!16671) (regOne!33854 (regTwo!33854 (reg!17000 r!7292))))) b!6846067))

(declare-fun b!6846069 () Bool)

(declare-fun e!4128762 () Bool)

(declare-fun tp!1874754 () Bool)

(declare-fun tp!1874756 () Bool)

(assert (=> b!6846069 (= e!4128762 (and tp!1874754 tp!1874756))))

(declare-fun b!6846068 () Bool)

(assert (=> b!6846068 (= e!4128762 tp_is_empty!42595)))

(declare-fun b!6846070 () Bool)

(declare-fun tp!1874755 () Bool)

(assert (=> b!6846070 (= e!4128762 tp!1874755)))

(assert (=> b!6844738 (= tp!1874586 e!4128762)))

(declare-fun b!6846071 () Bool)

(declare-fun tp!1874757 () Bool)

(declare-fun tp!1874758 () Bool)

(assert (=> b!6846071 (= e!4128762 (and tp!1874757 tp!1874758))))

(assert (= (and b!6844738 ((_ is ElementMatch!16671) (regTwo!33854 (regTwo!33854 (reg!17000 r!7292))))) b!6846068))

(assert (= (and b!6844738 ((_ is Concat!25516) (regTwo!33854 (regTwo!33854 (reg!17000 r!7292))))) b!6846069))

(assert (= (and b!6844738 ((_ is Star!16671) (regTwo!33854 (regTwo!33854 (reg!17000 r!7292))))) b!6846070))

(assert (= (and b!6844738 ((_ is Union!16671) (regTwo!33854 (regTwo!33854 (reg!17000 r!7292))))) b!6846071))

(declare-fun b!6846073 () Bool)

(declare-fun e!4128763 () Bool)

(declare-fun tp!1874759 () Bool)

(declare-fun tp!1874761 () Bool)

(assert (=> b!6846073 (= e!4128763 (and tp!1874759 tp!1874761))))

(declare-fun b!6846072 () Bool)

(assert (=> b!6846072 (= e!4128763 tp_is_empty!42595)))

(declare-fun b!6846074 () Bool)

(declare-fun tp!1874760 () Bool)

(assert (=> b!6846074 (= e!4128763 tp!1874760)))

(assert (=> b!6844762 (= tp!1874614 e!4128763)))

(declare-fun b!6846075 () Bool)

(declare-fun tp!1874762 () Bool)

(declare-fun tp!1874763 () Bool)

(assert (=> b!6846075 (= e!4128763 (and tp!1874762 tp!1874763))))

(assert (= (and b!6844762 ((_ is ElementMatch!16671) (reg!17000 (reg!17000 (regOne!33854 r!7292))))) b!6846072))

(assert (= (and b!6844762 ((_ is Concat!25516) (reg!17000 (reg!17000 (regOne!33854 r!7292))))) b!6846073))

(assert (= (and b!6844762 ((_ is Star!16671) (reg!17000 (reg!17000 (regOne!33854 r!7292))))) b!6846074))

(assert (= (and b!6844762 ((_ is Union!16671) (reg!17000 (reg!17000 (regOne!33854 r!7292))))) b!6846075))

(declare-fun b!6846084 () Bool)

(declare-fun e!4128770 () Bool)

(declare-fun tp!1874764 () Bool)

(declare-fun tp!1874766 () Bool)

(assert (=> b!6846084 (= e!4128770 (and tp!1874764 tp!1874766))))

(declare-fun b!6846083 () Bool)

(assert (=> b!6846083 (= e!4128770 tp_is_empty!42595)))

(declare-fun b!6846085 () Bool)

(declare-fun tp!1874765 () Bool)

(assert (=> b!6846085 (= e!4128770 tp!1874765)))

(assert (=> b!6844660 (= tp!1874484 e!4128770)))

(declare-fun b!6846086 () Bool)

(declare-fun tp!1874767 () Bool)

(declare-fun tp!1874768 () Bool)

(assert (=> b!6846086 (= e!4128770 (and tp!1874767 tp!1874768))))

(assert (= (and b!6844660 ((_ is ElementMatch!16671) (regOne!33855 (reg!17000 (regTwo!33854 r!7292))))) b!6846083))

(assert (= (and b!6844660 ((_ is Concat!25516) (regOne!33855 (reg!17000 (regTwo!33854 r!7292))))) b!6846084))

(assert (= (and b!6844660 ((_ is Star!16671) (regOne!33855 (reg!17000 (regTwo!33854 r!7292))))) b!6846085))

(assert (= (and b!6844660 ((_ is Union!16671) (regOne!33855 (reg!17000 (regTwo!33854 r!7292))))) b!6846086))

(declare-fun b!6846088 () Bool)

(declare-fun e!4128771 () Bool)

(declare-fun tp!1874769 () Bool)

(declare-fun tp!1874771 () Bool)

(assert (=> b!6846088 (= e!4128771 (and tp!1874769 tp!1874771))))

(declare-fun b!6846087 () Bool)

(assert (=> b!6846087 (= e!4128771 tp_is_empty!42595)))

(declare-fun b!6846089 () Bool)

(declare-fun tp!1874770 () Bool)

(assert (=> b!6846089 (= e!4128771 tp!1874770)))

(assert (=> b!6844660 (= tp!1874485 e!4128771)))

(declare-fun b!6846090 () Bool)

(declare-fun tp!1874772 () Bool)

(declare-fun tp!1874773 () Bool)

(assert (=> b!6846090 (= e!4128771 (and tp!1874772 tp!1874773))))

(assert (= (and b!6844660 ((_ is ElementMatch!16671) (regTwo!33855 (reg!17000 (regTwo!33854 r!7292))))) b!6846087))

(assert (= (and b!6844660 ((_ is Concat!25516) (regTwo!33855 (reg!17000 (regTwo!33854 r!7292))))) b!6846088))

(assert (= (and b!6844660 ((_ is Star!16671) (regTwo!33855 (reg!17000 (regTwo!33854 r!7292))))) b!6846089))

(assert (= (and b!6844660 ((_ is Union!16671) (regTwo!33855 (reg!17000 (regTwo!33854 r!7292))))) b!6846090))

(declare-fun b!6846092 () Bool)

(declare-fun e!4128772 () Bool)

(declare-fun tp!1874774 () Bool)

(declare-fun tp!1874776 () Bool)

(assert (=> b!6846092 (= e!4128772 (and tp!1874774 tp!1874776))))

(declare-fun b!6846091 () Bool)

(assert (=> b!6846091 (= e!4128772 tp_is_empty!42595)))

(declare-fun b!6846093 () Bool)

(declare-fun tp!1874775 () Bool)

(assert (=> b!6846093 (= e!4128772 tp!1874775)))

(assert (=> b!6844753 (= tp!1874603 e!4128772)))

(declare-fun b!6846094 () Bool)

(declare-fun tp!1874777 () Bool)

(declare-fun tp!1874778 () Bool)

(assert (=> b!6846094 (= e!4128772 (and tp!1874777 tp!1874778))))

(assert (= (and b!6844753 ((_ is ElementMatch!16671) (regOne!33854 (regOne!33854 (regOne!33855 r!7292))))) b!6846091))

(assert (= (and b!6844753 ((_ is Concat!25516) (regOne!33854 (regOne!33854 (regOne!33855 r!7292))))) b!6846092))

(assert (= (and b!6844753 ((_ is Star!16671) (regOne!33854 (regOne!33854 (regOne!33855 r!7292))))) b!6846093))

(assert (= (and b!6844753 ((_ is Union!16671) (regOne!33854 (regOne!33854 (regOne!33855 r!7292))))) b!6846094))

(declare-fun b!6846098 () Bool)

(declare-fun e!4128774 () Bool)

(declare-fun tp!1874779 () Bool)

(declare-fun tp!1874781 () Bool)

(assert (=> b!6846098 (= e!4128774 (and tp!1874779 tp!1874781))))

(declare-fun b!6846097 () Bool)

(assert (=> b!6846097 (= e!4128774 tp_is_empty!42595)))

(declare-fun b!6846099 () Bool)

(declare-fun tp!1874780 () Bool)

(assert (=> b!6846099 (= e!4128774 tp!1874780)))

(assert (=> b!6844753 (= tp!1874605 e!4128774)))

(declare-fun b!6846100 () Bool)

(declare-fun tp!1874782 () Bool)

(declare-fun tp!1874783 () Bool)

(assert (=> b!6846100 (= e!4128774 (and tp!1874782 tp!1874783))))

(assert (= (and b!6844753 ((_ is ElementMatch!16671) (regTwo!33854 (regOne!33854 (regOne!33855 r!7292))))) b!6846097))

(assert (= (and b!6844753 ((_ is Concat!25516) (regTwo!33854 (regOne!33854 (regOne!33855 r!7292))))) b!6846098))

(assert (= (and b!6844753 ((_ is Star!16671) (regTwo!33854 (regOne!33854 (regOne!33855 r!7292))))) b!6846099))

(assert (= (and b!6844753 ((_ is Union!16671) (regTwo!33854 (regOne!33854 (regOne!33855 r!7292))))) b!6846100))

(declare-fun b!6846102 () Bool)

(declare-fun e!4128775 () Bool)

(declare-fun tp!1874784 () Bool)

(declare-fun tp!1874786 () Bool)

(assert (=> b!6846102 (= e!4128775 (and tp!1874784 tp!1874786))))

(declare-fun b!6846101 () Bool)

(assert (=> b!6846101 (= e!4128775 tp_is_empty!42595)))

(declare-fun b!6846103 () Bool)

(declare-fun tp!1874785 () Bool)

(assert (=> b!6846103 (= e!4128775 tp!1874785)))

(assert (=> b!6844712 (= tp!1874552 e!4128775)))

(declare-fun b!6846104 () Bool)

(declare-fun tp!1874787 () Bool)

(declare-fun tp!1874788 () Bool)

(assert (=> b!6846104 (= e!4128775 (and tp!1874787 tp!1874788))))

(assert (= (and b!6844712 ((_ is ElementMatch!16671) (regOne!33855 (regTwo!33855 (regTwo!33854 r!7292))))) b!6846101))

(assert (= (and b!6844712 ((_ is Concat!25516) (regOne!33855 (regTwo!33855 (regTwo!33854 r!7292))))) b!6846102))

(assert (= (and b!6844712 ((_ is Star!16671) (regOne!33855 (regTwo!33855 (regTwo!33854 r!7292))))) b!6846103))

(assert (= (and b!6844712 ((_ is Union!16671) (regOne!33855 (regTwo!33855 (regTwo!33854 r!7292))))) b!6846104))

(declare-fun b!6846106 () Bool)

(declare-fun e!4128776 () Bool)

(declare-fun tp!1874789 () Bool)

(declare-fun tp!1874791 () Bool)

(assert (=> b!6846106 (= e!4128776 (and tp!1874789 tp!1874791))))

(declare-fun b!6846105 () Bool)

(assert (=> b!6846105 (= e!4128776 tp_is_empty!42595)))

(declare-fun b!6846107 () Bool)

(declare-fun tp!1874790 () Bool)

(assert (=> b!6846107 (= e!4128776 tp!1874790)))

(assert (=> b!6844712 (= tp!1874553 e!4128776)))

(declare-fun b!6846108 () Bool)

(declare-fun tp!1874792 () Bool)

(declare-fun tp!1874793 () Bool)

(assert (=> b!6846108 (= e!4128776 (and tp!1874792 tp!1874793))))

(assert (= (and b!6844712 ((_ is ElementMatch!16671) (regTwo!33855 (regTwo!33855 (regTwo!33854 r!7292))))) b!6846105))

(assert (= (and b!6844712 ((_ is Concat!25516) (regTwo!33855 (regTwo!33855 (regTwo!33854 r!7292))))) b!6846106))

(assert (= (and b!6844712 ((_ is Star!16671) (regTwo!33855 (regTwo!33855 (regTwo!33854 r!7292))))) b!6846107))

(assert (= (and b!6844712 ((_ is Union!16671) (regTwo!33855 (regTwo!33855 (regTwo!33854 r!7292))))) b!6846108))

(declare-fun b!6846110 () Bool)

(declare-fun e!4128777 () Bool)

(declare-fun tp!1874794 () Bool)

(declare-fun tp!1874796 () Bool)

(assert (=> b!6846110 (= e!4128777 (and tp!1874794 tp!1874796))))

(declare-fun b!6846109 () Bool)

(assert (=> b!6846109 (= e!4128777 tp_is_empty!42595)))

(declare-fun b!6846111 () Bool)

(declare-fun tp!1874795 () Bool)

(assert (=> b!6846111 (= e!4128777 tp!1874795)))

(assert (=> b!6844667 (= tp!1874492 e!4128777)))

(declare-fun b!6846112 () Bool)

(declare-fun tp!1874797 () Bool)

(declare-fun tp!1874798 () Bool)

(assert (=> b!6846112 (= e!4128777 (and tp!1874797 tp!1874798))))

(assert (= (and b!6844667 ((_ is ElementMatch!16671) (reg!17000 (regTwo!33854 (regTwo!33854 r!7292))))) b!6846109))

(assert (= (and b!6844667 ((_ is Concat!25516) (reg!17000 (regTwo!33854 (regTwo!33854 r!7292))))) b!6846110))

(assert (= (and b!6844667 ((_ is Star!16671) (reg!17000 (regTwo!33854 (regTwo!33854 r!7292))))) b!6846111))

(assert (= (and b!6844667 ((_ is Union!16671) (reg!17000 (regTwo!33854 (regTwo!33854 r!7292))))) b!6846112))

(declare-fun b!6846114 () Bool)

(declare-fun e!4128778 () Bool)

(declare-fun tp!1874799 () Bool)

(declare-fun tp!1874801 () Bool)

(assert (=> b!6846114 (= e!4128778 (and tp!1874799 tp!1874801))))

(declare-fun b!6846113 () Bool)

(assert (=> b!6846113 (= e!4128778 tp_is_empty!42595)))

(declare-fun b!6846115 () Bool)

(declare-fun tp!1874800 () Bool)

(assert (=> b!6846115 (= e!4128778 tp!1874800)))

(assert (=> b!6844769 (= tp!1874623 e!4128778)))

(declare-fun b!6846116 () Bool)

(declare-fun tp!1874802 () Bool)

(declare-fun tp!1874803 () Bool)

(assert (=> b!6846116 (= e!4128778 (and tp!1874802 tp!1874803))))

(assert (= (and b!6844769 ((_ is ElementMatch!16671) (regOne!33854 (regTwo!33855 (regOne!33854 r!7292))))) b!6846113))

(assert (= (and b!6844769 ((_ is Concat!25516) (regOne!33854 (regTwo!33855 (regOne!33854 r!7292))))) b!6846114))

(assert (= (and b!6844769 ((_ is Star!16671) (regOne!33854 (regTwo!33855 (regOne!33854 r!7292))))) b!6846115))

(assert (= (and b!6844769 ((_ is Union!16671) (regOne!33854 (regTwo!33855 (regOne!33854 r!7292))))) b!6846116))

(declare-fun b!6846118 () Bool)

(declare-fun e!4128779 () Bool)

(declare-fun tp!1874804 () Bool)

(declare-fun tp!1874806 () Bool)

(assert (=> b!6846118 (= e!4128779 (and tp!1874804 tp!1874806))))

(declare-fun b!6846117 () Bool)

(assert (=> b!6846117 (= e!4128779 tp_is_empty!42595)))

(declare-fun b!6846119 () Bool)

(declare-fun tp!1874805 () Bool)

(assert (=> b!6846119 (= e!4128779 tp!1874805)))

(assert (=> b!6844769 (= tp!1874625 e!4128779)))

(declare-fun b!6846120 () Bool)

(declare-fun tp!1874807 () Bool)

(declare-fun tp!1874808 () Bool)

(assert (=> b!6846120 (= e!4128779 (and tp!1874807 tp!1874808))))

(assert (= (and b!6844769 ((_ is ElementMatch!16671) (regTwo!33854 (regTwo!33855 (regOne!33854 r!7292))))) b!6846117))

(assert (= (and b!6844769 ((_ is Concat!25516) (regTwo!33854 (regTwo!33855 (regOne!33854 r!7292))))) b!6846118))

(assert (= (and b!6844769 ((_ is Star!16671) (regTwo!33854 (regTwo!33855 (regOne!33854 r!7292))))) b!6846119))

(assert (= (and b!6844769 ((_ is Union!16671) (regTwo!33854 (regTwo!33855 (regOne!33854 r!7292))))) b!6846120))

(declare-fun b!6846122 () Bool)

(declare-fun e!4128780 () Bool)

(declare-fun tp!1874809 () Bool)

(declare-fun tp!1874811 () Bool)

(assert (=> b!6846122 (= e!4128780 (and tp!1874809 tp!1874811))))

(declare-fun b!6846121 () Bool)

(assert (=> b!6846121 (= e!4128780 tp_is_empty!42595)))

(declare-fun b!6846123 () Bool)

(declare-fun tp!1874810 () Bool)

(assert (=> b!6846123 (= e!4128780 tp!1874810)))

(assert (=> b!6844658 (= tp!1874481 e!4128780)))

(declare-fun b!6846124 () Bool)

(declare-fun tp!1874812 () Bool)

(declare-fun tp!1874813 () Bool)

(assert (=> b!6846124 (= e!4128780 (and tp!1874812 tp!1874813))))

(assert (= (and b!6844658 ((_ is ElementMatch!16671) (regOne!33854 (reg!17000 (regTwo!33854 r!7292))))) b!6846121))

(assert (= (and b!6844658 ((_ is Concat!25516) (regOne!33854 (reg!17000 (regTwo!33854 r!7292))))) b!6846122))

(assert (= (and b!6844658 ((_ is Star!16671) (regOne!33854 (reg!17000 (regTwo!33854 r!7292))))) b!6846123))

(assert (= (and b!6844658 ((_ is Union!16671) (regOne!33854 (reg!17000 (regTwo!33854 r!7292))))) b!6846124))

(declare-fun b!6846126 () Bool)

(declare-fun e!4128781 () Bool)

(declare-fun tp!1874814 () Bool)

(declare-fun tp!1874816 () Bool)

(assert (=> b!6846126 (= e!4128781 (and tp!1874814 tp!1874816))))

(declare-fun b!6846125 () Bool)

(assert (=> b!6846125 (= e!4128781 tp_is_empty!42595)))

(declare-fun b!6846127 () Bool)

(declare-fun tp!1874815 () Bool)

(assert (=> b!6846127 (= e!4128781 tp!1874815)))

(assert (=> b!6844658 (= tp!1874483 e!4128781)))

(declare-fun b!6846128 () Bool)

(declare-fun tp!1874817 () Bool)

(declare-fun tp!1874818 () Bool)

(assert (=> b!6846128 (= e!4128781 (and tp!1874817 tp!1874818))))

(assert (= (and b!6844658 ((_ is ElementMatch!16671) (regTwo!33854 (reg!17000 (regTwo!33854 r!7292))))) b!6846125))

(assert (= (and b!6844658 ((_ is Concat!25516) (regTwo!33854 (reg!17000 (regTwo!33854 r!7292))))) b!6846126))

(assert (= (and b!6844658 ((_ is Star!16671) (regTwo!33854 (reg!17000 (regTwo!33854 r!7292))))) b!6846127))

(assert (= (and b!6844658 ((_ is Union!16671) (regTwo!33854 (reg!17000 (regTwo!33854 r!7292))))) b!6846128))

(declare-fun b!6846130 () Bool)

(declare-fun e!4128782 () Bool)

(declare-fun tp!1874819 () Bool)

(declare-fun tp!1874821 () Bool)

(assert (=> b!6846130 (= e!4128782 (and tp!1874819 tp!1874821))))

(declare-fun b!6846129 () Bool)

(assert (=> b!6846129 (= e!4128782 tp_is_empty!42595)))

(declare-fun b!6846131 () Bool)

(declare-fun tp!1874820 () Bool)

(assert (=> b!6846131 (= e!4128782 tp!1874820)))

(assert (=> b!6844699 (= tp!1874535 e!4128782)))

(declare-fun b!6846132 () Bool)

(declare-fun tp!1874822 () Bool)

(declare-fun tp!1874823 () Bool)

(assert (=> b!6846132 (= e!4128782 (and tp!1874822 tp!1874823))))

(assert (= (and b!6844699 ((_ is ElementMatch!16671) (h!72636 (exprs!6555 setElem!47065)))) b!6846129))

(assert (= (and b!6844699 ((_ is Concat!25516) (h!72636 (exprs!6555 setElem!47065)))) b!6846130))

(assert (= (and b!6844699 ((_ is Star!16671) (h!72636 (exprs!6555 setElem!47065)))) b!6846131))

(assert (= (and b!6844699 ((_ is Union!16671) (h!72636 (exprs!6555 setElem!47065)))) b!6846132))

(declare-fun b!6846133 () Bool)

(declare-fun e!4128783 () Bool)

(declare-fun tp!1874824 () Bool)

(declare-fun tp!1874825 () Bool)

(assert (=> b!6846133 (= e!4128783 (and tp!1874824 tp!1874825))))

(assert (=> b!6844699 (= tp!1874536 e!4128783)))

(assert (= (and b!6844699 ((_ is Cons!66188) (t!380055 (exprs!6555 setElem!47065)))) b!6846133))

(declare-fun b!6846135 () Bool)

(declare-fun e!4128784 () Bool)

(declare-fun tp!1874826 () Bool)

(declare-fun tp!1874828 () Bool)

(assert (=> b!6846135 (= e!4128784 (and tp!1874826 tp!1874828))))

(declare-fun b!6846134 () Bool)

(assert (=> b!6846134 (= e!4128784 tp_is_empty!42595)))

(declare-fun b!6846136 () Bool)

(declare-fun tp!1874827 () Bool)

(assert (=> b!6846136 (= e!4128784 tp!1874827)))

(assert (=> b!6844714 (= tp!1874554 e!4128784)))

(declare-fun b!6846137 () Bool)

(declare-fun tp!1874829 () Bool)

(declare-fun tp!1874830 () Bool)

(assert (=> b!6846137 (= e!4128784 (and tp!1874829 tp!1874830))))

(assert (= (and b!6844714 ((_ is ElementMatch!16671) (regOne!33854 (regOne!33854 (regOne!33854 r!7292))))) b!6846134))

(assert (= (and b!6844714 ((_ is Concat!25516) (regOne!33854 (regOne!33854 (regOne!33854 r!7292))))) b!6846135))

(assert (= (and b!6844714 ((_ is Star!16671) (regOne!33854 (regOne!33854 (regOne!33854 r!7292))))) b!6846136))

(assert (= (and b!6844714 ((_ is Union!16671) (regOne!33854 (regOne!33854 (regOne!33854 r!7292))))) b!6846137))

(declare-fun b!6846139 () Bool)

(declare-fun e!4128785 () Bool)

(declare-fun tp!1874831 () Bool)

(declare-fun tp!1874833 () Bool)

(assert (=> b!6846139 (= e!4128785 (and tp!1874831 tp!1874833))))

(declare-fun b!6846138 () Bool)

(assert (=> b!6846138 (= e!4128785 tp_is_empty!42595)))

(declare-fun b!6846140 () Bool)

(declare-fun tp!1874832 () Bool)

(assert (=> b!6846140 (= e!4128785 tp!1874832)))

(assert (=> b!6844714 (= tp!1874556 e!4128785)))

(declare-fun b!6846141 () Bool)

(declare-fun tp!1874834 () Bool)

(declare-fun tp!1874835 () Bool)

(assert (=> b!6846141 (= e!4128785 (and tp!1874834 tp!1874835))))

(assert (= (and b!6844714 ((_ is ElementMatch!16671) (regTwo!33854 (regOne!33854 (regOne!33854 r!7292))))) b!6846138))

(assert (= (and b!6844714 ((_ is Concat!25516) (regTwo!33854 (regOne!33854 (regOne!33854 r!7292))))) b!6846139))

(assert (= (and b!6844714 ((_ is Star!16671) (regTwo!33854 (regOne!33854 (regOne!33854 r!7292))))) b!6846140))

(assert (= (and b!6844714 ((_ is Union!16671) (regTwo!33854 (regOne!33854 (regOne!33854 r!7292))))) b!6846141))

(declare-fun b!6846143 () Bool)

(declare-fun e!4128786 () Bool)

(declare-fun tp!1874836 () Bool)

(declare-fun tp!1874838 () Bool)

(assert (=> b!6846143 (= e!4128786 (and tp!1874836 tp!1874838))))

(declare-fun b!6846142 () Bool)

(assert (=> b!6846142 (= e!4128786 tp_is_empty!42595)))

(declare-fun b!6846144 () Bool)

(declare-fun tp!1874837 () Bool)

(assert (=> b!6846144 (= e!4128786 tp!1874837)))

(assert (=> b!6844716 (= tp!1874557 e!4128786)))

(declare-fun b!6846145 () Bool)

(declare-fun tp!1874839 () Bool)

(declare-fun tp!1874840 () Bool)

(assert (=> b!6846145 (= e!4128786 (and tp!1874839 tp!1874840))))

(assert (= (and b!6844716 ((_ is ElementMatch!16671) (regOne!33855 (regOne!33854 (regOne!33854 r!7292))))) b!6846142))

(assert (= (and b!6844716 ((_ is Concat!25516) (regOne!33855 (regOne!33854 (regOne!33854 r!7292))))) b!6846143))

(assert (= (and b!6844716 ((_ is Star!16671) (regOne!33855 (regOne!33854 (regOne!33854 r!7292))))) b!6846144))

(assert (= (and b!6844716 ((_ is Union!16671) (regOne!33855 (regOne!33854 (regOne!33854 r!7292))))) b!6846145))

(declare-fun b!6846147 () Bool)

(declare-fun e!4128787 () Bool)

(declare-fun tp!1874841 () Bool)

(declare-fun tp!1874843 () Bool)

(assert (=> b!6846147 (= e!4128787 (and tp!1874841 tp!1874843))))

(declare-fun b!6846146 () Bool)

(assert (=> b!6846146 (= e!4128787 tp_is_empty!42595)))

(declare-fun b!6846148 () Bool)

(declare-fun tp!1874842 () Bool)

(assert (=> b!6846148 (= e!4128787 tp!1874842)))

(assert (=> b!6844716 (= tp!1874558 e!4128787)))

(declare-fun b!6846149 () Bool)

(declare-fun tp!1874844 () Bool)

(declare-fun tp!1874845 () Bool)

(assert (=> b!6846149 (= e!4128787 (and tp!1874844 tp!1874845))))

(assert (= (and b!6844716 ((_ is ElementMatch!16671) (regTwo!33855 (regOne!33854 (regOne!33854 r!7292))))) b!6846146))

(assert (= (and b!6844716 ((_ is Concat!25516) (regTwo!33855 (regOne!33854 (regOne!33854 r!7292))))) b!6846147))

(assert (= (and b!6844716 ((_ is Star!16671) (regTwo!33855 (regOne!33854 (regOne!33854 r!7292))))) b!6846148))

(assert (= (and b!6844716 ((_ is Union!16671) (regTwo!33855 (regOne!33854 (regOne!33854 r!7292))))) b!6846149))

(declare-fun b!6846153 () Bool)

(declare-fun e!4128790 () Bool)

(declare-fun tp!1874846 () Bool)

(declare-fun tp!1874848 () Bool)

(assert (=> b!6846153 (= e!4128790 (and tp!1874846 tp!1874848))))

(declare-fun b!6846152 () Bool)

(assert (=> b!6846152 (= e!4128790 tp_is_empty!42595)))

(declare-fun b!6846154 () Bool)

(declare-fun tp!1874847 () Bool)

(assert (=> b!6846154 (= e!4128790 tp!1874847)))

(assert (=> b!6844707 (= tp!1874545 e!4128790)))

(declare-fun b!6846155 () Bool)

(declare-fun tp!1874849 () Bool)

(declare-fun tp!1874850 () Bool)

(assert (=> b!6846155 (= e!4128790 (and tp!1874849 tp!1874850))))

(assert (= (and b!6844707 ((_ is ElementMatch!16671) (reg!17000 (regOne!33855 (regTwo!33854 r!7292))))) b!6846152))

(assert (= (and b!6844707 ((_ is Concat!25516) (reg!17000 (regOne!33855 (regTwo!33854 r!7292))))) b!6846153))

(assert (= (and b!6844707 ((_ is Star!16671) (reg!17000 (regOne!33855 (regTwo!33854 r!7292))))) b!6846154))

(assert (= (and b!6844707 ((_ is Union!16671) (reg!17000 (regOne!33855 (regTwo!33854 r!7292))))) b!6846155))

(declare-fun b!6846157 () Bool)

(declare-fun e!4128791 () Bool)

(declare-fun tp!1874851 () Bool)

(declare-fun tp!1874853 () Bool)

(assert (=> b!6846157 (= e!4128791 (and tp!1874851 tp!1874853))))

(declare-fun b!6846156 () Bool)

(assert (=> b!6846156 (= e!4128791 tp_is_empty!42595)))

(declare-fun b!6846158 () Bool)

(declare-fun tp!1874852 () Bool)

(assert (=> b!6846158 (= e!4128791 tp!1874852)))

(assert (=> b!6844755 (= tp!1874606 e!4128791)))

(declare-fun b!6846159 () Bool)

(declare-fun tp!1874854 () Bool)

(declare-fun tp!1874855 () Bool)

(assert (=> b!6846159 (= e!4128791 (and tp!1874854 tp!1874855))))

(assert (= (and b!6844755 ((_ is ElementMatch!16671) (regOne!33855 (regOne!33854 (regOne!33855 r!7292))))) b!6846156))

(assert (= (and b!6844755 ((_ is Concat!25516) (regOne!33855 (regOne!33854 (regOne!33855 r!7292))))) b!6846157))

(assert (= (and b!6844755 ((_ is Star!16671) (regOne!33855 (regOne!33854 (regOne!33855 r!7292))))) b!6846158))

(assert (= (and b!6844755 ((_ is Union!16671) (regOne!33855 (regOne!33854 (regOne!33855 r!7292))))) b!6846159))

(declare-fun b!6846163 () Bool)

(declare-fun e!4128794 () Bool)

(declare-fun tp!1874856 () Bool)

(declare-fun tp!1874858 () Bool)

(assert (=> b!6846163 (= e!4128794 (and tp!1874856 tp!1874858))))

(declare-fun b!6846162 () Bool)

(assert (=> b!6846162 (= e!4128794 tp_is_empty!42595)))

(declare-fun b!6846164 () Bool)

(declare-fun tp!1874857 () Bool)

(assert (=> b!6846164 (= e!4128794 tp!1874857)))

(assert (=> b!6844755 (= tp!1874607 e!4128794)))

(declare-fun b!6846165 () Bool)

(declare-fun tp!1874859 () Bool)

(declare-fun tp!1874860 () Bool)

(assert (=> b!6846165 (= e!4128794 (and tp!1874859 tp!1874860))))

(assert (= (and b!6844755 ((_ is ElementMatch!16671) (regTwo!33855 (regOne!33854 (regOne!33855 r!7292))))) b!6846162))

(assert (= (and b!6844755 ((_ is Concat!25516) (regTwo!33855 (regOne!33854 (regOne!33855 r!7292))))) b!6846163))

(assert (= (and b!6844755 ((_ is Star!16671) (regTwo!33855 (regOne!33854 (regOne!33855 r!7292))))) b!6846164))

(assert (= (and b!6844755 ((_ is Union!16671) (regTwo!33855 (regOne!33854 (regOne!33855 r!7292))))) b!6846165))

(declare-fun b!6846167 () Bool)

(declare-fun e!4128795 () Bool)

(declare-fun tp!1874861 () Bool)

(declare-fun tp!1874863 () Bool)

(assert (=> b!6846167 (= e!4128795 (and tp!1874861 tp!1874863))))

(declare-fun b!6846166 () Bool)

(assert (=> b!6846166 (= e!4128795 tp_is_empty!42595)))

(declare-fun b!6846168 () Bool)

(declare-fun tp!1874862 () Bool)

(assert (=> b!6846168 (= e!4128795 tp!1874862)))

(assert (=> b!6844730 (= tp!1874574 e!4128795)))

(declare-fun b!6846169 () Bool)

(declare-fun tp!1874864 () Bool)

(declare-fun tp!1874865 () Bool)

(assert (=> b!6846169 (= e!4128795 (and tp!1874864 tp!1874865))))

(assert (= (and b!6844730 ((_ is ElementMatch!16671) (regOne!33854 (regTwo!33855 (reg!17000 r!7292))))) b!6846166))

(assert (= (and b!6844730 ((_ is Concat!25516) (regOne!33854 (regTwo!33855 (reg!17000 r!7292))))) b!6846167))

(assert (= (and b!6844730 ((_ is Star!16671) (regOne!33854 (regTwo!33855 (reg!17000 r!7292))))) b!6846168))

(assert (= (and b!6844730 ((_ is Union!16671) (regOne!33854 (regTwo!33855 (reg!17000 r!7292))))) b!6846169))

(declare-fun b!6846181 () Bool)

(declare-fun e!4128801 () Bool)

(declare-fun tp!1874866 () Bool)

(declare-fun tp!1874868 () Bool)

(assert (=> b!6846181 (= e!4128801 (and tp!1874866 tp!1874868))))

(declare-fun b!6846180 () Bool)

(assert (=> b!6846180 (= e!4128801 tp_is_empty!42595)))

(declare-fun b!6846182 () Bool)

(declare-fun tp!1874867 () Bool)

(assert (=> b!6846182 (= e!4128801 tp!1874867)))

(assert (=> b!6844730 (= tp!1874576 e!4128801)))

(declare-fun b!6846183 () Bool)

(declare-fun tp!1874869 () Bool)

(declare-fun tp!1874870 () Bool)

(assert (=> b!6846183 (= e!4128801 (and tp!1874869 tp!1874870))))

(assert (= (and b!6844730 ((_ is ElementMatch!16671) (regTwo!33854 (regTwo!33855 (reg!17000 r!7292))))) b!6846180))

(assert (= (and b!6844730 ((_ is Concat!25516) (regTwo!33854 (regTwo!33855 (reg!17000 r!7292))))) b!6846181))

(assert (= (and b!6844730 ((_ is Star!16671) (regTwo!33854 (regTwo!33855 (reg!17000 r!7292))))) b!6846182))

(assert (= (and b!6844730 ((_ is Union!16671) (regTwo!33854 (regTwo!33855 (reg!17000 r!7292))))) b!6846183))

(declare-fun b!6846185 () Bool)

(declare-fun e!4128802 () Bool)

(declare-fun tp!1874871 () Bool)

(declare-fun tp!1874873 () Bool)

(assert (=> b!6846185 (= e!4128802 (and tp!1874871 tp!1874873))))

(declare-fun b!6846184 () Bool)

(assert (=> b!6846184 (= e!4128802 tp_is_empty!42595)))

(declare-fun b!6846186 () Bool)

(declare-fun tp!1874872 () Bool)

(assert (=> b!6846186 (= e!4128802 tp!1874872)))

(assert (=> b!6844677 (= tp!1874506 e!4128802)))

(declare-fun b!6846187 () Bool)

(declare-fun tp!1874874 () Bool)

(declare-fun tp!1874875 () Bool)

(assert (=> b!6846187 (= e!4128802 (and tp!1874874 tp!1874875))))

(assert (= (and b!6844677 ((_ is ElementMatch!16671) (regOne!33855 (regTwo!33855 (regOne!33855 r!7292))))) b!6846184))

(assert (= (and b!6844677 ((_ is Concat!25516) (regOne!33855 (regTwo!33855 (regOne!33855 r!7292))))) b!6846185))

(assert (= (and b!6844677 ((_ is Star!16671) (regOne!33855 (regTwo!33855 (regOne!33855 r!7292))))) b!6846186))

(assert (= (and b!6844677 ((_ is Union!16671) (regOne!33855 (regTwo!33855 (regOne!33855 r!7292))))) b!6846187))

(declare-fun b!6846189 () Bool)

(declare-fun e!4128803 () Bool)

(declare-fun tp!1874876 () Bool)

(declare-fun tp!1874878 () Bool)

(assert (=> b!6846189 (= e!4128803 (and tp!1874876 tp!1874878))))

(declare-fun b!6846188 () Bool)

(assert (=> b!6846188 (= e!4128803 tp_is_empty!42595)))

(declare-fun b!6846190 () Bool)

(declare-fun tp!1874877 () Bool)

(assert (=> b!6846190 (= e!4128803 tp!1874877)))

(assert (=> b!6844677 (= tp!1874507 e!4128803)))

(declare-fun b!6846191 () Bool)

(declare-fun tp!1874879 () Bool)

(declare-fun tp!1874880 () Bool)

(assert (=> b!6846191 (= e!4128803 (and tp!1874879 tp!1874880))))

(assert (= (and b!6844677 ((_ is ElementMatch!16671) (regTwo!33855 (regTwo!33855 (regOne!33855 r!7292))))) b!6846188))

(assert (= (and b!6844677 ((_ is Concat!25516) (regTwo!33855 (regTwo!33855 (regOne!33855 r!7292))))) b!6846189))

(assert (= (and b!6844677 ((_ is Star!16671) (regTwo!33855 (regTwo!33855 (regOne!33855 r!7292))))) b!6846190))

(assert (= (and b!6844677 ((_ is Union!16671) (regTwo!33855 (regTwo!33855 (regOne!33855 r!7292))))) b!6846191))

(declare-fun b!6846193 () Bool)

(declare-fun e!4128804 () Bool)

(declare-fun tp!1874881 () Bool)

(declare-fun tp!1874883 () Bool)

(assert (=> b!6846193 (= e!4128804 (and tp!1874881 tp!1874883))))

(declare-fun b!6846192 () Bool)

(assert (=> b!6846192 (= e!4128804 tp_is_empty!42595)))

(declare-fun b!6846194 () Bool)

(declare-fun tp!1874882 () Bool)

(assert (=> b!6846194 (= e!4128804 tp!1874882)))

(assert (=> b!6844732 (= tp!1874577 e!4128804)))

(declare-fun b!6846195 () Bool)

(declare-fun tp!1874884 () Bool)

(declare-fun tp!1874885 () Bool)

(assert (=> b!6846195 (= e!4128804 (and tp!1874884 tp!1874885))))

(assert (= (and b!6844732 ((_ is ElementMatch!16671) (regOne!33855 (regTwo!33855 (reg!17000 r!7292))))) b!6846192))

(assert (= (and b!6844732 ((_ is Concat!25516) (regOne!33855 (regTwo!33855 (reg!17000 r!7292))))) b!6846193))

(assert (= (and b!6844732 ((_ is Star!16671) (regOne!33855 (regTwo!33855 (reg!17000 r!7292))))) b!6846194))

(assert (= (and b!6844732 ((_ is Union!16671) (regOne!33855 (regTwo!33855 (reg!17000 r!7292))))) b!6846195))

(declare-fun b!6846197 () Bool)

(declare-fun e!4128805 () Bool)

(declare-fun tp!1874886 () Bool)

(declare-fun tp!1874888 () Bool)

(assert (=> b!6846197 (= e!4128805 (and tp!1874886 tp!1874888))))

(declare-fun b!6846196 () Bool)

(assert (=> b!6846196 (= e!4128805 tp_is_empty!42595)))

(declare-fun b!6846198 () Bool)

(declare-fun tp!1874887 () Bool)

(assert (=> b!6846198 (= e!4128805 tp!1874887)))

(assert (=> b!6844732 (= tp!1874578 e!4128805)))

(declare-fun b!6846199 () Bool)

(declare-fun tp!1874889 () Bool)

(declare-fun tp!1874890 () Bool)

(assert (=> b!6846199 (= e!4128805 (and tp!1874889 tp!1874890))))

(assert (= (and b!6844732 ((_ is ElementMatch!16671) (regTwo!33855 (regTwo!33855 (reg!17000 r!7292))))) b!6846196))

(assert (= (and b!6844732 ((_ is Concat!25516) (regTwo!33855 (regTwo!33855 (reg!17000 r!7292))))) b!6846197))

(assert (= (and b!6844732 ((_ is Star!16671) (regTwo!33855 (regTwo!33855 (reg!17000 r!7292))))) b!6846198))

(assert (= (and b!6844732 ((_ is Union!16671) (regTwo!33855 (regTwo!33855 (reg!17000 r!7292))))) b!6846199))

(declare-fun b!6846201 () Bool)

(declare-fun e!4128806 () Bool)

(declare-fun tp!1874891 () Bool)

(declare-fun tp!1874893 () Bool)

(assert (=> b!6846201 (= e!4128806 (and tp!1874891 tp!1874893))))

(declare-fun b!6846200 () Bool)

(assert (=> b!6846200 (= e!4128806 tp_is_empty!42595)))

(declare-fun b!6846202 () Bool)

(declare-fun tp!1874892 () Bool)

(assert (=> b!6846202 (= e!4128806 tp!1874892)))

(assert (=> b!6844723 (= tp!1874565 e!4128806)))

(declare-fun b!6846203 () Bool)

(declare-fun tp!1874894 () Bool)

(declare-fun tp!1874895 () Bool)

(assert (=> b!6846203 (= e!4128806 (and tp!1874894 tp!1874895))))

(assert (= (and b!6844723 ((_ is ElementMatch!16671) (reg!17000 (reg!17000 (reg!17000 r!7292))))) b!6846200))

(assert (= (and b!6844723 ((_ is Concat!25516) (reg!17000 (reg!17000 (reg!17000 r!7292))))) b!6846201))

(assert (= (and b!6844723 ((_ is Star!16671) (reg!17000 (reg!17000 (reg!17000 r!7292))))) b!6846202))

(assert (= (and b!6844723 ((_ is Union!16671) (reg!17000 (reg!17000 (reg!17000 r!7292))))) b!6846203))

(declare-fun b!6846205 () Bool)

(declare-fun e!4128807 () Bool)

(declare-fun tp!1874896 () Bool)

(declare-fun tp!1874898 () Bool)

(assert (=> b!6846205 (= e!4128807 (and tp!1874896 tp!1874898))))

(declare-fun b!6846204 () Bool)

(assert (=> b!6846204 (= e!4128807 tp_is_empty!42595)))

(declare-fun b!6846206 () Bool)

(declare-fun tp!1874897 () Bool)

(assert (=> b!6846206 (= e!4128807 tp!1874897)))

(assert (=> b!6844740 (= tp!1874587 e!4128807)))

(declare-fun b!6846207 () Bool)

(declare-fun tp!1874899 () Bool)

(declare-fun tp!1874900 () Bool)

(assert (=> b!6846207 (= e!4128807 (and tp!1874899 tp!1874900))))

(assert (= (and b!6844740 ((_ is ElementMatch!16671) (regOne!33855 (regTwo!33854 (reg!17000 r!7292))))) b!6846204))

(assert (= (and b!6844740 ((_ is Concat!25516) (regOne!33855 (regTwo!33854 (reg!17000 r!7292))))) b!6846205))

(assert (= (and b!6844740 ((_ is Star!16671) (regOne!33855 (regTwo!33854 (reg!17000 r!7292))))) b!6846206))

(assert (= (and b!6844740 ((_ is Union!16671) (regOne!33855 (regTwo!33854 (reg!17000 r!7292))))) b!6846207))

(declare-fun b!6846209 () Bool)

(declare-fun e!4128808 () Bool)

(declare-fun tp!1874901 () Bool)

(declare-fun tp!1874903 () Bool)

(assert (=> b!6846209 (= e!4128808 (and tp!1874901 tp!1874903))))

(declare-fun b!6846208 () Bool)

(assert (=> b!6846208 (= e!4128808 tp_is_empty!42595)))

(declare-fun b!6846210 () Bool)

(declare-fun tp!1874902 () Bool)

(assert (=> b!6846210 (= e!4128808 tp!1874902)))

(assert (=> b!6844740 (= tp!1874588 e!4128808)))

(declare-fun b!6846211 () Bool)

(declare-fun tp!1874904 () Bool)

(declare-fun tp!1874905 () Bool)

(assert (=> b!6846211 (= e!4128808 (and tp!1874904 tp!1874905))))

(assert (= (and b!6844740 ((_ is ElementMatch!16671) (regTwo!33855 (regTwo!33854 (reg!17000 r!7292))))) b!6846208))

(assert (= (and b!6844740 ((_ is Concat!25516) (regTwo!33855 (regTwo!33854 (reg!17000 r!7292))))) b!6846209))

(assert (= (and b!6844740 ((_ is Star!16671) (regTwo!33855 (regTwo!33854 (reg!17000 r!7292))))) b!6846210))

(assert (= (and b!6844740 ((_ is Union!16671) (regTwo!33855 (regTwo!33854 (reg!17000 r!7292))))) b!6846211))

(declare-fun b!6846213 () Bool)

(declare-fun e!4128809 () Bool)

(declare-fun tp!1874906 () Bool)

(declare-fun tp!1874908 () Bool)

(assert (=> b!6846213 (= e!4128809 (and tp!1874906 tp!1874908))))

(declare-fun b!6846212 () Bool)

(assert (=> b!6846212 (= e!4128809 tp_is_empty!42595)))

(declare-fun b!6846214 () Bool)

(declare-fun tp!1874907 () Bool)

(assert (=> b!6846214 (= e!4128809 tp!1874907)))

(assert (=> b!6844766 (= tp!1874619 e!4128809)))

(declare-fun b!6846215 () Bool)

(declare-fun tp!1874909 () Bool)

(declare-fun tp!1874910 () Bool)

(assert (=> b!6846215 (= e!4128809 (and tp!1874909 tp!1874910))))

(assert (= (and b!6844766 ((_ is ElementMatch!16671) (reg!17000 (regOne!33855 (regOne!33854 r!7292))))) b!6846212))

(assert (= (and b!6844766 ((_ is Concat!25516) (reg!17000 (regOne!33855 (regOne!33854 r!7292))))) b!6846213))

(assert (= (and b!6844766 ((_ is Star!16671) (reg!17000 (regOne!33855 (regOne!33854 r!7292))))) b!6846214))

(assert (= (and b!6844766 ((_ is Union!16671) (reg!17000 (regOne!33855 (regOne!33854 r!7292))))) b!6846215))

(declare-fun b!6846217 () Bool)

(declare-fun e!4128810 () Bool)

(declare-fun tp!1874911 () Bool)

(declare-fun tp!1874913 () Bool)

(assert (=> b!6846217 (= e!4128810 (and tp!1874911 tp!1874913))))

(declare-fun b!6846216 () Bool)

(assert (=> b!6846216 (= e!4128810 tp_is_empty!42595)))

(declare-fun b!6846218 () Bool)

(declare-fun tp!1874912 () Bool)

(assert (=> b!6846218 (= e!4128810 tp!1874912)))

(assert (=> b!6844664 (= tp!1874489 e!4128810)))

(declare-fun b!6846219 () Bool)

(declare-fun tp!1874914 () Bool)

(declare-fun tp!1874915 () Bool)

(assert (=> b!6846219 (= e!4128810 (and tp!1874914 tp!1874915))))

(assert (= (and b!6844664 ((_ is ElementMatch!16671) (regOne!33855 (regOne!33854 (regTwo!33854 r!7292))))) b!6846216))

(assert (= (and b!6844664 ((_ is Concat!25516) (regOne!33855 (regOne!33854 (regTwo!33854 r!7292))))) b!6846217))

(assert (= (and b!6844664 ((_ is Star!16671) (regOne!33855 (regOne!33854 (regTwo!33854 r!7292))))) b!6846218))

(assert (= (and b!6844664 ((_ is Union!16671) (regOne!33855 (regOne!33854 (regTwo!33854 r!7292))))) b!6846219))

(declare-fun b!6846221 () Bool)

(declare-fun e!4128811 () Bool)

(declare-fun tp!1874917 () Bool)

(declare-fun tp!1874921 () Bool)

(assert (=> b!6846221 (= e!4128811 (and tp!1874917 tp!1874921))))

(declare-fun b!6846220 () Bool)

(assert (=> b!6846220 (= e!4128811 tp_is_empty!42595)))

(declare-fun b!6846222 () Bool)

(declare-fun tp!1874919 () Bool)

(assert (=> b!6846222 (= e!4128811 tp!1874919)))

(assert (=> b!6844664 (= tp!1874490 e!4128811)))

(declare-fun b!6846223 () Bool)

(declare-fun tp!1874922 () Bool)

(declare-fun tp!1874923 () Bool)

(assert (=> b!6846223 (= e!4128811 (and tp!1874922 tp!1874923))))

(assert (= (and b!6844664 ((_ is ElementMatch!16671) (regTwo!33855 (regOne!33854 (regTwo!33854 r!7292))))) b!6846220))

(assert (= (and b!6844664 ((_ is Concat!25516) (regTwo!33855 (regOne!33854 (regTwo!33854 r!7292))))) b!6846221))

(assert (= (and b!6844664 ((_ is Star!16671) (regTwo!33855 (regOne!33854 (regTwo!33854 r!7292))))) b!6846222))

(assert (= (and b!6844664 ((_ is Union!16671) (regTwo!33855 (regOne!33854 (regTwo!33854 r!7292))))) b!6846223))

(declare-fun b!6846229 () Bool)

(declare-fun e!4128813 () Bool)

(declare-fun tp!1874926 () Bool)

(declare-fun tp!1874928 () Bool)

(assert (=> b!6846229 (= e!4128813 (and tp!1874926 tp!1874928))))

(declare-fun b!6846228 () Bool)

(assert (=> b!6846228 (= e!4128813 tp_is_empty!42595)))

(declare-fun b!6846230 () Bool)

(declare-fun tp!1874927 () Bool)

(assert (=> b!6846230 (= e!4128813 tp!1874927)))

(assert (=> b!6844757 (= tp!1874608 e!4128813)))

(declare-fun b!6846231 () Bool)

(declare-fun tp!1874929 () Bool)

(declare-fun tp!1874930 () Bool)

(assert (=> b!6846231 (= e!4128813 (and tp!1874929 tp!1874930))))

(assert (= (and b!6844757 ((_ is ElementMatch!16671) (regOne!33854 (regTwo!33854 (regOne!33855 r!7292))))) b!6846228))

(assert (= (and b!6844757 ((_ is Concat!25516) (regOne!33854 (regTwo!33854 (regOne!33855 r!7292))))) b!6846229))

(assert (= (and b!6844757 ((_ is Star!16671) (regOne!33854 (regTwo!33854 (regOne!33855 r!7292))))) b!6846230))

(assert (= (and b!6844757 ((_ is Union!16671) (regOne!33854 (regTwo!33854 (regOne!33855 r!7292))))) b!6846231))

(declare-fun b!6846237 () Bool)

(declare-fun e!4128815 () Bool)

(declare-fun tp!1874936 () Bool)

(declare-fun tp!1874938 () Bool)

(assert (=> b!6846237 (= e!4128815 (and tp!1874936 tp!1874938))))

(declare-fun b!6846236 () Bool)

(assert (=> b!6846236 (= e!4128815 tp_is_empty!42595)))

(declare-fun b!6846238 () Bool)

(declare-fun tp!1874937 () Bool)

(assert (=> b!6846238 (= e!4128815 tp!1874937)))

(assert (=> b!6844757 (= tp!1874610 e!4128815)))

(declare-fun b!6846239 () Bool)

(declare-fun tp!1874939 () Bool)

(declare-fun tp!1874940 () Bool)

(assert (=> b!6846239 (= e!4128815 (and tp!1874939 tp!1874940))))

(assert (= (and b!6844757 ((_ is ElementMatch!16671) (regTwo!33854 (regTwo!33854 (regOne!33855 r!7292))))) b!6846236))

(assert (= (and b!6844757 ((_ is Concat!25516) (regTwo!33854 (regTwo!33854 (regOne!33855 r!7292))))) b!6846237))

(assert (= (and b!6844757 ((_ is Star!16671) (regTwo!33854 (regTwo!33854 (regOne!33855 r!7292))))) b!6846238))

(assert (= (and b!6844757 ((_ is Union!16671) (regTwo!33854 (regTwo!33854 (regOne!33855 r!7292))))) b!6846239))

(declare-fun b!6846245 () Bool)

(declare-fun e!4128817 () Bool)

(declare-fun tp!1874946 () Bool)

(declare-fun tp!1874948 () Bool)

(assert (=> b!6846245 (= e!4128817 (and tp!1874946 tp!1874948))))

(declare-fun b!6846244 () Bool)

(assert (=> b!6846244 (= e!4128817 tp_is_empty!42595)))

(declare-fun b!6846246 () Bool)

(declare-fun tp!1874947 () Bool)

(assert (=> b!6846246 (= e!4128817 tp!1874947)))

(assert (=> b!6844688 (= tp!1874519 e!4128817)))

(declare-fun b!6846247 () Bool)

(declare-fun tp!1874949 () Bool)

(declare-fun tp!1874950 () Bool)

(assert (=> b!6846247 (= e!4128817 (and tp!1874949 tp!1874950))))

(assert (= (and b!6844688 ((_ is ElementMatch!16671) (reg!17000 (regTwo!33855 (regTwo!33855 r!7292))))) b!6846244))

(assert (= (and b!6844688 ((_ is Concat!25516) (reg!17000 (regTwo!33855 (regTwo!33855 r!7292))))) b!6846245))

(assert (= (and b!6844688 ((_ is Star!16671) (reg!17000 (regTwo!33855 (regTwo!33855 r!7292))))) b!6846246))

(assert (= (and b!6844688 ((_ is Union!16671) (reg!17000 (regTwo!33855 (regTwo!33855 r!7292))))) b!6846247))

(declare-fun b!6846253 () Bool)

(declare-fun e!4128819 () Bool)

(declare-fun tp!1874956 () Bool)

(declare-fun tp!1874958 () Bool)

(assert (=> b!6846253 (= e!4128819 (and tp!1874956 tp!1874958))))

(declare-fun b!6846252 () Bool)

(assert (=> b!6846252 (= e!4128819 tp_is_empty!42595)))

(declare-fun b!6846254 () Bool)

(declare-fun tp!1874957 () Bool)

(assert (=> b!6846254 (= e!4128819 tp!1874957)))

(assert (=> b!6844679 (= tp!1874508 e!4128819)))

(declare-fun b!6846255 () Bool)

(declare-fun tp!1874959 () Bool)

(declare-fun tp!1874960 () Bool)

(assert (=> b!6846255 (= e!4128819 (and tp!1874959 tp!1874960))))

(assert (= (and b!6844679 ((_ is ElementMatch!16671) (regOne!33854 (reg!17000 (regTwo!33855 r!7292))))) b!6846252))

(assert (= (and b!6844679 ((_ is Concat!25516) (regOne!33854 (reg!17000 (regTwo!33855 r!7292))))) b!6846253))

(assert (= (and b!6844679 ((_ is Star!16671) (regOne!33854 (reg!17000 (regTwo!33855 r!7292))))) b!6846254))

(assert (= (and b!6844679 ((_ is Union!16671) (regOne!33854 (reg!17000 (regTwo!33855 r!7292))))) b!6846255))

(declare-fun b!6846261 () Bool)

(declare-fun e!4128821 () Bool)

(declare-fun tp!1874966 () Bool)

(declare-fun tp!1874968 () Bool)

(assert (=> b!6846261 (= e!4128821 (and tp!1874966 tp!1874968))))

(declare-fun b!6846260 () Bool)

(assert (=> b!6846260 (= e!4128821 tp_is_empty!42595)))

(declare-fun b!6846262 () Bool)

(declare-fun tp!1874967 () Bool)

(assert (=> b!6846262 (= e!4128821 tp!1874967)))

(assert (=> b!6844679 (= tp!1874510 e!4128821)))

(declare-fun b!6846263 () Bool)

(declare-fun tp!1874969 () Bool)

(declare-fun tp!1874970 () Bool)

(assert (=> b!6846263 (= e!4128821 (and tp!1874969 tp!1874970))))

(assert (= (and b!6844679 ((_ is ElementMatch!16671) (regTwo!33854 (reg!17000 (regTwo!33855 r!7292))))) b!6846260))

(assert (= (and b!6844679 ((_ is Concat!25516) (regTwo!33854 (reg!17000 (regTwo!33855 r!7292))))) b!6846261))

(assert (= (and b!6844679 ((_ is Star!16671) (regTwo!33854 (reg!17000 (regTwo!33855 r!7292))))) b!6846262))

(assert (= (and b!6844679 ((_ is Union!16671) (regTwo!33854 (reg!17000 (regTwo!33855 r!7292))))) b!6846263))

(declare-fun b!6846269 () Bool)

(declare-fun e!4128823 () Bool)

(declare-fun tp!1874976 () Bool)

(declare-fun tp!1874978 () Bool)

(assert (=> b!6846269 (= e!4128823 (and tp!1874976 tp!1874978))))

(declare-fun b!6846268 () Bool)

(assert (=> b!6846268 (= e!4128823 tp_is_empty!42595)))

(declare-fun b!6846270 () Bool)

(declare-fun tp!1874977 () Bool)

(assert (=> b!6846270 (= e!4128823 tp!1874977)))

(assert (=> b!6844681 (= tp!1874511 e!4128823)))

(declare-fun b!6846271 () Bool)

(declare-fun tp!1874979 () Bool)

(declare-fun tp!1874980 () Bool)

(assert (=> b!6846271 (= e!4128823 (and tp!1874979 tp!1874980))))

(assert (= (and b!6844681 ((_ is ElementMatch!16671) (regOne!33855 (reg!17000 (regTwo!33855 r!7292))))) b!6846268))

(assert (= (and b!6844681 ((_ is Concat!25516) (regOne!33855 (reg!17000 (regTwo!33855 r!7292))))) b!6846269))

(assert (= (and b!6844681 ((_ is Star!16671) (regOne!33855 (reg!17000 (regTwo!33855 r!7292))))) b!6846270))

(assert (= (and b!6844681 ((_ is Union!16671) (regOne!33855 (reg!17000 (regTwo!33855 r!7292))))) b!6846271))

(declare-fun b!6846277 () Bool)

(declare-fun e!4128825 () Bool)

(declare-fun tp!1874986 () Bool)

(declare-fun tp!1874988 () Bool)

(assert (=> b!6846277 (= e!4128825 (and tp!1874986 tp!1874988))))

(declare-fun b!6846276 () Bool)

(assert (=> b!6846276 (= e!4128825 tp_is_empty!42595)))

(declare-fun b!6846278 () Bool)

(declare-fun tp!1874987 () Bool)

(assert (=> b!6846278 (= e!4128825 tp!1874987)))

(assert (=> b!6844681 (= tp!1874512 e!4128825)))

(declare-fun b!6846279 () Bool)

(declare-fun tp!1874989 () Bool)

(declare-fun tp!1874990 () Bool)

(assert (=> b!6846279 (= e!4128825 (and tp!1874989 tp!1874990))))

(assert (= (and b!6844681 ((_ is ElementMatch!16671) (regTwo!33855 (reg!17000 (regTwo!33855 r!7292))))) b!6846276))

(assert (= (and b!6844681 ((_ is Concat!25516) (regTwo!33855 (reg!17000 (regTwo!33855 r!7292))))) b!6846277))

(assert (= (and b!6844681 ((_ is Star!16671) (regTwo!33855 (reg!17000 (regTwo!33855 r!7292))))) b!6846278))

(assert (= (and b!6844681 ((_ is Union!16671) (regTwo!33855 (reg!17000 (regTwo!33855 r!7292))))) b!6846279))

(declare-fun b!6846282 () Bool)

(declare-fun e!4128827 () Bool)

(declare-fun tp!1874993 () Bool)

(declare-fun tp!1874995 () Bool)

(assert (=> b!6846282 (= e!4128827 (and tp!1874993 tp!1874995))))

(declare-fun b!6846281 () Bool)

(assert (=> b!6846281 (= e!4128827 tp_is_empty!42595)))

(declare-fun b!6846283 () Bool)

(declare-fun tp!1874994 () Bool)

(assert (=> b!6846283 (= e!4128827 tp!1874994)))

(assert (=> b!6844742 (= tp!1874589 e!4128827)))

(declare-fun b!6846284 () Bool)

(declare-fun tp!1874996 () Bool)

(declare-fun tp!1874997 () Bool)

(assert (=> b!6846284 (= e!4128827 (and tp!1874996 tp!1874997))))

(assert (= (and b!6844742 ((_ is ElementMatch!16671) (regOne!33854 (h!72636 (exprs!6555 (h!72637 zl!343)))))) b!6846281))

(assert (= (and b!6844742 ((_ is Concat!25516) (regOne!33854 (h!72636 (exprs!6555 (h!72637 zl!343)))))) b!6846282))

(assert (= (and b!6844742 ((_ is Star!16671) (regOne!33854 (h!72636 (exprs!6555 (h!72637 zl!343)))))) b!6846283))

(assert (= (and b!6844742 ((_ is Union!16671) (regOne!33854 (h!72636 (exprs!6555 (h!72637 zl!343)))))) b!6846284))

(declare-fun b!6846290 () Bool)

(declare-fun e!4128829 () Bool)

(declare-fun tp!1875003 () Bool)

(declare-fun tp!1875005 () Bool)

(assert (=> b!6846290 (= e!4128829 (and tp!1875003 tp!1875005))))

(declare-fun b!6846289 () Bool)

(assert (=> b!6846289 (= e!4128829 tp_is_empty!42595)))

(declare-fun b!6846291 () Bool)

(declare-fun tp!1875004 () Bool)

(assert (=> b!6846291 (= e!4128829 tp!1875004)))

(assert (=> b!6844742 (= tp!1874591 e!4128829)))

(declare-fun b!6846292 () Bool)

(declare-fun tp!1875006 () Bool)

(declare-fun tp!1875007 () Bool)

(assert (=> b!6846292 (= e!4128829 (and tp!1875006 tp!1875007))))

(assert (= (and b!6844742 ((_ is ElementMatch!16671) (regTwo!33854 (h!72636 (exprs!6555 (h!72637 zl!343)))))) b!6846289))

(assert (= (and b!6844742 ((_ is Concat!25516) (regTwo!33854 (h!72636 (exprs!6555 (h!72637 zl!343)))))) b!6846290))

(assert (= (and b!6844742 ((_ is Star!16671) (regTwo!33854 (h!72636 (exprs!6555 (h!72637 zl!343)))))) b!6846291))

(assert (= (and b!6844742 ((_ is Union!16671) (regTwo!33854 (h!72636 (exprs!6555 (h!72637 zl!343)))))) b!6846292))

(declare-fun b!6846298 () Bool)

(declare-fun e!4128831 () Bool)

(declare-fun tp!1875013 () Bool)

(declare-fun tp!1875015 () Bool)

(assert (=> b!6846298 (= e!4128831 (and tp!1875013 tp!1875015))))

(declare-fun b!6846297 () Bool)

(assert (=> b!6846297 (= e!4128831 tp_is_empty!42595)))

(declare-fun b!6846299 () Bool)

(declare-fun tp!1875014 () Bool)

(assert (=> b!6846299 (= e!4128831 tp!1875014)))

(assert (=> b!6844696 (= tp!1874529 e!4128831)))

(declare-fun b!6846300 () Bool)

(declare-fun tp!1875016 () Bool)

(declare-fun tp!1875017 () Bool)

(assert (=> b!6846300 (= e!4128831 (and tp!1875016 tp!1875017))))

(assert (= (and b!6844696 ((_ is ElementMatch!16671) (reg!17000 (regTwo!33854 (regTwo!33855 r!7292))))) b!6846297))

(assert (= (and b!6844696 ((_ is Concat!25516) (reg!17000 (regTwo!33854 (regTwo!33855 r!7292))))) b!6846298))

(assert (= (and b!6844696 ((_ is Star!16671) (reg!17000 (regTwo!33854 (regTwo!33855 r!7292))))) b!6846299))

(assert (= (and b!6844696 ((_ is Union!16671) (reg!17000 (regTwo!33854 (regTwo!33855 r!7292))))) b!6846300))

(declare-fun b!6846314 () Bool)

(declare-fun e!4128835 () Bool)

(declare-fun tp!1875033 () Bool)

(declare-fun tp!1875035 () Bool)

(assert (=> b!6846314 (= e!4128835 (and tp!1875033 tp!1875035))))

(declare-fun b!6846313 () Bool)

(assert (=> b!6846313 (= e!4128835 tp_is_empty!42595)))

(declare-fun b!6846315 () Bool)

(declare-fun tp!1875034 () Bool)

(assert (=> b!6846315 (= e!4128835 tp!1875034)))

(assert (=> b!6844662 (= tp!1874486 e!4128835)))

(declare-fun b!6846316 () Bool)

(declare-fun tp!1875036 () Bool)

(declare-fun tp!1875037 () Bool)

(assert (=> b!6846316 (= e!4128835 (and tp!1875036 tp!1875037))))

(assert (= (and b!6844662 ((_ is ElementMatch!16671) (regOne!33854 (regOne!33854 (regTwo!33854 r!7292))))) b!6846313))

(assert (= (and b!6844662 ((_ is Concat!25516) (regOne!33854 (regOne!33854 (regTwo!33854 r!7292))))) b!6846314))

(assert (= (and b!6844662 ((_ is Star!16671) (regOne!33854 (regOne!33854 (regTwo!33854 r!7292))))) b!6846315))

(assert (= (and b!6844662 ((_ is Union!16671) (regOne!33854 (regOne!33854 (regTwo!33854 r!7292))))) b!6846316))

(declare-fun b!6846322 () Bool)

(declare-fun e!4128837 () Bool)

(declare-fun tp!1875043 () Bool)

(declare-fun tp!1875045 () Bool)

(assert (=> b!6846322 (= e!4128837 (and tp!1875043 tp!1875045))))

(declare-fun b!6846321 () Bool)

(assert (=> b!6846321 (= e!4128837 tp_is_empty!42595)))

(declare-fun b!6846323 () Bool)

(declare-fun tp!1875044 () Bool)

(assert (=> b!6846323 (= e!4128837 tp!1875044)))

(assert (=> b!6844662 (= tp!1874488 e!4128837)))

(declare-fun b!6846324 () Bool)

(declare-fun tp!1875046 () Bool)

(declare-fun tp!1875047 () Bool)

(assert (=> b!6846324 (= e!4128837 (and tp!1875046 tp!1875047))))

(assert (= (and b!6844662 ((_ is ElementMatch!16671) (regTwo!33854 (regOne!33854 (regTwo!33854 r!7292))))) b!6846321))

(assert (= (and b!6844662 ((_ is Concat!25516) (regTwo!33854 (regOne!33854 (regTwo!33854 r!7292))))) b!6846322))

(assert (= (and b!6844662 ((_ is Star!16671) (regTwo!33854 (regOne!33854 (regTwo!33854 r!7292))))) b!6846323))

(assert (= (and b!6844662 ((_ is Union!16671) (regTwo!33854 (regOne!33854 (regTwo!33854 r!7292))))) b!6846324))

(declare-fun b!6846330 () Bool)

(declare-fun e!4128839 () Bool)

(declare-fun tp!1875053 () Bool)

(declare-fun tp!1875055 () Bool)

(assert (=> b!6846330 (= e!4128839 (and tp!1875053 tp!1875055))))

(declare-fun b!6846329 () Bool)

(assert (=> b!6846329 (= e!4128839 tp_is_empty!42595)))

(declare-fun b!6846331 () Bool)

(declare-fun tp!1875054 () Bool)

(assert (=> b!6846331 (= e!4128839 tp!1875054)))

(assert (=> b!6844703 (= tp!1874540 e!4128839)))

(declare-fun b!6846332 () Bool)

(declare-fun tp!1875056 () Bool)

(declare-fun tp!1875057 () Bool)

(assert (=> b!6846332 (= e!4128839 (and tp!1875056 tp!1875057))))

(assert (= (and b!6844703 ((_ is ElementMatch!16671) (regOne!33855 (h!72636 (exprs!6555 setElem!47059))))) b!6846329))

(assert (= (and b!6844703 ((_ is Concat!25516) (regOne!33855 (h!72636 (exprs!6555 setElem!47059))))) b!6846330))

(assert (= (and b!6844703 ((_ is Star!16671) (regOne!33855 (h!72636 (exprs!6555 setElem!47059))))) b!6846331))

(assert (= (and b!6844703 ((_ is Union!16671) (regOne!33855 (h!72636 (exprs!6555 setElem!47059))))) b!6846332))

(declare-fun b!6846338 () Bool)

(declare-fun e!4128841 () Bool)

(declare-fun tp!1875063 () Bool)

(declare-fun tp!1875065 () Bool)

(assert (=> b!6846338 (= e!4128841 (and tp!1875063 tp!1875065))))

(declare-fun b!6846337 () Bool)

(assert (=> b!6846337 (= e!4128841 tp_is_empty!42595)))

(declare-fun b!6846339 () Bool)

(declare-fun tp!1875064 () Bool)

(assert (=> b!6846339 (= e!4128841 tp!1875064)))

(assert (=> b!6844703 (= tp!1874541 e!4128841)))

(declare-fun b!6846340 () Bool)

(declare-fun tp!1875066 () Bool)

(declare-fun tp!1875067 () Bool)

(assert (=> b!6846340 (= e!4128841 (and tp!1875066 tp!1875067))))

(assert (= (and b!6844703 ((_ is ElementMatch!16671) (regTwo!33855 (h!72636 (exprs!6555 setElem!47059))))) b!6846337))

(assert (= (and b!6844703 ((_ is Concat!25516) (regTwo!33855 (h!72636 (exprs!6555 setElem!47059))))) b!6846338))

(assert (= (and b!6844703 ((_ is Star!16671) (regTwo!33855 (h!72636 (exprs!6555 setElem!47059))))) b!6846339))

(assert (= (and b!6844703 ((_ is Union!16671) (regTwo!33855 (h!72636 (exprs!6555 setElem!47059))))) b!6846340))

(declare-fun b!6846346 () Bool)

(declare-fun e!4128843 () Bool)

(declare-fun tp!1875073 () Bool)

(declare-fun tp!1875075 () Bool)

(assert (=> b!6846346 (= e!4128843 (and tp!1875073 tp!1875075))))

(declare-fun b!6846345 () Bool)

(assert (=> b!6846345 (= e!4128843 tp_is_empty!42595)))

(declare-fun b!6846347 () Bool)

(declare-fun tp!1875074 () Bool)

(assert (=> b!6846347 (= e!4128843 tp!1875074)))

(assert (=> b!6844745 (= tp!1874594 e!4128843)))

(declare-fun b!6846348 () Bool)

(declare-fun tp!1875076 () Bool)

(declare-fun tp!1875077 () Bool)

(assert (=> b!6846348 (= e!4128843 (and tp!1875076 tp!1875077))))

(assert (= (and b!6844745 ((_ is ElementMatch!16671) (h!72636 (t!380055 (exprs!6555 (h!72637 zl!343)))))) b!6846345))

(assert (= (and b!6844745 ((_ is Concat!25516) (h!72636 (t!380055 (exprs!6555 (h!72637 zl!343)))))) b!6846346))

(assert (= (and b!6844745 ((_ is Star!16671) (h!72636 (t!380055 (exprs!6555 (h!72637 zl!343)))))) b!6846347))

(assert (= (and b!6844745 ((_ is Union!16671) (h!72636 (t!380055 (exprs!6555 (h!72637 zl!343)))))) b!6846348))

(declare-fun b!6846353 () Bool)

(declare-fun e!4128845 () Bool)

(declare-fun tp!1875083 () Bool)

(declare-fun tp!1875084 () Bool)

(assert (=> b!6846353 (= e!4128845 (and tp!1875083 tp!1875084))))

(assert (=> b!6844745 (= tp!1874595 e!4128845)))

(assert (= (and b!6844745 ((_ is Cons!66188) (t!380055 (t!380055 (exprs!6555 (h!72637 zl!343)))))) b!6846353))

(declare-fun b!6846355 () Bool)

(declare-fun e!4128846 () Bool)

(declare-fun tp!1875085 () Bool)

(declare-fun tp!1875087 () Bool)

(assert (=> b!6846355 (= e!4128846 (and tp!1875085 tp!1875087))))

(declare-fun b!6846354 () Bool)

(assert (=> b!6846354 (= e!4128846 tp_is_empty!42595)))

(declare-fun b!6846356 () Bool)

(declare-fun tp!1875086 () Bool)

(assert (=> b!6846356 (= e!4128846 tp!1875086)))

(assert (=> b!6844720 (= tp!1874562 e!4128846)))

(declare-fun b!6846357 () Bool)

(declare-fun tp!1875088 () Bool)

(declare-fun tp!1875089 () Bool)

(assert (=> b!6846357 (= e!4128846 (and tp!1875088 tp!1875089))))

(assert (= (and b!6844720 ((_ is ElementMatch!16671) (regOne!33855 (regTwo!33854 (regOne!33854 r!7292))))) b!6846354))

(assert (= (and b!6844720 ((_ is Concat!25516) (regOne!33855 (regTwo!33854 (regOne!33854 r!7292))))) b!6846355))

(assert (= (and b!6844720 ((_ is Star!16671) (regOne!33855 (regTwo!33854 (regOne!33854 r!7292))))) b!6846356))

(assert (= (and b!6844720 ((_ is Union!16671) (regOne!33855 (regTwo!33854 (regOne!33854 r!7292))))) b!6846357))

(declare-fun b!6846363 () Bool)

(declare-fun e!4128848 () Bool)

(declare-fun tp!1875095 () Bool)

(declare-fun tp!1875097 () Bool)

(assert (=> b!6846363 (= e!4128848 (and tp!1875095 tp!1875097))))

(declare-fun b!6846362 () Bool)

(assert (=> b!6846362 (= e!4128848 tp_is_empty!42595)))

(declare-fun b!6846364 () Bool)

(declare-fun tp!1875096 () Bool)

(assert (=> b!6846364 (= e!4128848 tp!1875096)))

(assert (=> b!6844720 (= tp!1874563 e!4128848)))

(declare-fun b!6846365 () Bool)

(declare-fun tp!1875098 () Bool)

(declare-fun tp!1875099 () Bool)

(assert (=> b!6846365 (= e!4128848 (and tp!1875098 tp!1875099))))

(assert (= (and b!6844720 ((_ is ElementMatch!16671) (regTwo!33855 (regTwo!33854 (regOne!33854 r!7292))))) b!6846362))

(assert (= (and b!6844720 ((_ is Concat!25516) (regTwo!33855 (regTwo!33854 (regOne!33854 r!7292))))) b!6846363))

(assert (= (and b!6844720 ((_ is Star!16671) (regTwo!33855 (regTwo!33854 (regOne!33854 r!7292))))) b!6846364))

(assert (= (and b!6844720 ((_ is Union!16671) (regTwo!33855 (regTwo!33854 (regOne!33854 r!7292))))) b!6846365))

(declare-fun b!6846373 () Bool)

(declare-fun e!4128850 () Bool)

(declare-fun tp!1875105 () Bool)

(declare-fun tp!1875107 () Bool)

(assert (=> b!6846373 (= e!4128850 (and tp!1875105 tp!1875107))))

(declare-fun b!6846370 () Bool)

(assert (=> b!6846370 (= e!4128850 tp_is_empty!42595)))

(declare-fun b!6846375 () Bool)

(declare-fun tp!1875106 () Bool)

(assert (=> b!6846375 (= e!4128850 tp!1875106)))

(assert (=> b!6844711 (= tp!1874550 e!4128850)))

(declare-fun b!6846377 () Bool)

(declare-fun tp!1875108 () Bool)

(declare-fun tp!1875109 () Bool)

(assert (=> b!6846377 (= e!4128850 (and tp!1875108 tp!1875109))))

(assert (= (and b!6844711 ((_ is ElementMatch!16671) (reg!17000 (regTwo!33855 (regTwo!33854 r!7292))))) b!6846370))

(assert (= (and b!6844711 ((_ is Concat!25516) (reg!17000 (regTwo!33855 (regTwo!33854 r!7292))))) b!6846373))

(assert (= (and b!6844711 ((_ is Star!16671) (reg!17000 (regTwo!33855 (regTwo!33854 r!7292))))) b!6846375))

(assert (= (and b!6844711 ((_ is Union!16671) (reg!17000 (regTwo!33855 (regTwo!33854 r!7292))))) b!6846377))

(declare-fun b!6846379 () Bool)

(declare-fun e!4128853 () Bool)

(declare-fun tp!1875115 () Bool)

(declare-fun tp!1875117 () Bool)

(assert (=> b!6846379 (= e!4128853 (and tp!1875115 tp!1875117))))

(declare-fun b!6846378 () Bool)

(assert (=> b!6846378 (= e!4128853 tp_is_empty!42595)))

(declare-fun b!6846380 () Bool)

(declare-fun tp!1875116 () Bool)

(assert (=> b!6846380 (= e!4128853 tp!1875116)))

(assert (=> b!6844701 (= tp!1874537 e!4128853)))

(declare-fun b!6846382 () Bool)

(declare-fun tp!1875118 () Bool)

(declare-fun tp!1875119 () Bool)

(assert (=> b!6846382 (= e!4128853 (and tp!1875118 tp!1875119))))

(assert (= (and b!6844701 ((_ is ElementMatch!16671) (regOne!33854 (h!72636 (exprs!6555 setElem!47059))))) b!6846378))

(assert (= (and b!6844701 ((_ is Concat!25516) (regOne!33854 (h!72636 (exprs!6555 setElem!47059))))) b!6846379))

(assert (= (and b!6844701 ((_ is Star!16671) (regOne!33854 (h!72636 (exprs!6555 setElem!47059))))) b!6846380))

(assert (= (and b!6844701 ((_ is Union!16671) (regOne!33854 (h!72636 (exprs!6555 setElem!47059))))) b!6846382))

(declare-fun b!6846386 () Bool)

(declare-fun e!4128856 () Bool)

(declare-fun tp!1875124 () Bool)

(declare-fun tp!1875126 () Bool)

(assert (=> b!6846386 (= e!4128856 (and tp!1875124 tp!1875126))))

(declare-fun b!6846385 () Bool)

(assert (=> b!6846385 (= e!4128856 tp_is_empty!42595)))

(declare-fun b!6846387 () Bool)

(declare-fun tp!1875125 () Bool)

(assert (=> b!6846387 (= e!4128856 tp!1875125)))

(assert (=> b!6844701 (= tp!1874539 e!4128856)))

(declare-fun b!6846388 () Bool)

(declare-fun tp!1875127 () Bool)

(declare-fun tp!1875128 () Bool)

(assert (=> b!6846388 (= e!4128856 (and tp!1875127 tp!1875128))))

(assert (= (and b!6844701 ((_ is ElementMatch!16671) (regTwo!33854 (h!72636 (exprs!6555 setElem!47059))))) b!6846385))

(assert (= (and b!6844701 ((_ is Concat!25516) (regTwo!33854 (h!72636 (exprs!6555 setElem!47059))))) b!6846386))

(assert (= (and b!6844701 ((_ is Star!16671) (regTwo!33854 (h!72636 (exprs!6555 setElem!47059))))) b!6846387))

(assert (= (and b!6844701 ((_ is Union!16671) (regTwo!33854 (h!72636 (exprs!6555 setElem!47059))))) b!6846388))

(declare-fun b!6846394 () Bool)

(declare-fun e!4128858 () Bool)

(declare-fun tp!1875134 () Bool)

(declare-fun tp!1875136 () Bool)

(assert (=> b!6846394 (= e!4128858 (and tp!1875134 tp!1875136))))

(declare-fun b!6846393 () Bool)

(assert (=> b!6846393 (= e!4128858 tp_is_empty!42595)))

(declare-fun b!6846395 () Bool)

(declare-fun tp!1875135 () Bool)

(assert (=> b!6846395 (= e!4128858 tp!1875135)))

(assert (=> b!6844750 (= tp!1874599 e!4128858)))

(declare-fun b!6846396 () Bool)

(declare-fun tp!1875137 () Bool)

(declare-fun tp!1875138 () Bool)

(assert (=> b!6846396 (= e!4128858 (and tp!1875137 tp!1875138))))

(assert (= (and b!6844750 ((_ is ElementMatch!16671) (reg!17000 (reg!17000 (regOne!33855 r!7292))))) b!6846393))

(assert (= (and b!6844750 ((_ is Concat!25516) (reg!17000 (reg!17000 (regOne!33855 r!7292))))) b!6846394))

(assert (= (and b!6844750 ((_ is Star!16671) (reg!17000 (reg!17000 (regOne!33855 r!7292))))) b!6846395))

(assert (= (and b!6844750 ((_ is Union!16671) (reg!17000 (reg!17000 (regOne!33855 r!7292))))) b!6846396))

(declare-fun b!6846402 () Bool)

(declare-fun e!4128860 () Bool)

(declare-fun tp!1875144 () Bool)

(declare-fun tp!1875146 () Bool)

(assert (=> b!6846402 (= e!4128860 (and tp!1875144 tp!1875146))))

(declare-fun b!6846401 () Bool)

(assert (=> b!6846401 (= e!4128860 tp_is_empty!42595)))

(declare-fun b!6846403 () Bool)

(declare-fun tp!1875145 () Bool)

(assert (=> b!6846403 (= e!4128860 tp!1875145)))

(assert (=> b!6844744 (= tp!1874592 e!4128860)))

(declare-fun b!6846404 () Bool)

(declare-fun tp!1875147 () Bool)

(declare-fun tp!1875148 () Bool)

(assert (=> b!6846404 (= e!4128860 (and tp!1875147 tp!1875148))))

(assert (= (and b!6844744 ((_ is ElementMatch!16671) (regOne!33855 (h!72636 (exprs!6555 (h!72637 zl!343)))))) b!6846401))

(assert (= (and b!6844744 ((_ is Concat!25516) (regOne!33855 (h!72636 (exprs!6555 (h!72637 zl!343)))))) b!6846402))

(assert (= (and b!6844744 ((_ is Star!16671) (regOne!33855 (h!72636 (exprs!6555 (h!72637 zl!343)))))) b!6846403))

(assert (= (and b!6844744 ((_ is Union!16671) (regOne!33855 (h!72636 (exprs!6555 (h!72637 zl!343)))))) b!6846404))

(declare-fun b!6846410 () Bool)

(declare-fun e!4128862 () Bool)

(declare-fun tp!1875154 () Bool)

(declare-fun tp!1875156 () Bool)

(assert (=> b!6846410 (= e!4128862 (and tp!1875154 tp!1875156))))

(declare-fun b!6846409 () Bool)

(assert (=> b!6846409 (= e!4128862 tp_is_empty!42595)))

(declare-fun b!6846411 () Bool)

(declare-fun tp!1875155 () Bool)

(assert (=> b!6846411 (= e!4128862 tp!1875155)))

(assert (=> b!6844744 (= tp!1874593 e!4128862)))

(declare-fun b!6846412 () Bool)

(declare-fun tp!1875157 () Bool)

(declare-fun tp!1875158 () Bool)

(assert (=> b!6846412 (= e!4128862 (and tp!1875157 tp!1875158))))

(assert (= (and b!6844744 ((_ is ElementMatch!16671) (regTwo!33855 (h!72636 (exprs!6555 (h!72637 zl!343)))))) b!6846409))

(assert (= (and b!6844744 ((_ is Concat!25516) (regTwo!33855 (h!72636 (exprs!6555 (h!72637 zl!343)))))) b!6846410))

(assert (= (and b!6844744 ((_ is Star!16671) (regTwo!33855 (h!72636 (exprs!6555 (h!72637 zl!343)))))) b!6846411))

(assert (= (and b!6844744 ((_ is Union!16671) (regTwo!33855 (h!72636 (exprs!6555 (h!72637 zl!343)))))) b!6846412))

(declare-fun b!6846418 () Bool)

(declare-fun e!4128864 () Bool)

(declare-fun tp!1875164 () Bool)

(declare-fun tp!1875166 () Bool)

(assert (=> b!6846418 (= e!4128864 (and tp!1875164 tp!1875166))))

(declare-fun b!6846417 () Bool)

(assert (=> b!6846417 (= e!4128864 tp_is_empty!42595)))

(declare-fun b!6846419 () Bool)

(declare-fun tp!1875165 () Bool)

(assert (=> b!6846419 (= e!4128864 tp!1875165)))

(assert (=> b!6844672 (= tp!1874499 e!4128864)))

(declare-fun b!6846420 () Bool)

(declare-fun tp!1875167 () Bool)

(declare-fun tp!1875168 () Bool)

(assert (=> b!6846420 (= e!4128864 (and tp!1875167 tp!1875168))))

(assert (= (and b!6844672 ((_ is ElementMatch!16671) (reg!17000 (regOne!33855 (regOne!33855 r!7292))))) b!6846417))

(assert (= (and b!6844672 ((_ is Concat!25516) (reg!17000 (regOne!33855 (regOne!33855 r!7292))))) b!6846418))

(assert (= (and b!6844672 ((_ is Star!16671) (reg!17000 (regOne!33855 (regOne!33855 r!7292))))) b!6846419))

(assert (= (and b!6844672 ((_ is Union!16671) (reg!17000 (regOne!33855 (regOne!33855 r!7292))))) b!6846420))

(declare-fun b!6846426 () Bool)

(declare-fun e!4128866 () Bool)

(declare-fun tp!1875174 () Bool)

(declare-fun tp!1875176 () Bool)

(assert (=> b!6846426 (= e!4128866 (and tp!1875174 tp!1875176))))

(declare-fun b!6846425 () Bool)

(assert (=> b!6846425 (= e!4128866 tp_is_empty!42595)))

(declare-fun b!6846427 () Bool)

(declare-fun tp!1875175 () Bool)

(assert (=> b!6846427 (= e!4128866 tp!1875175)))

(assert (=> b!6844759 (= tp!1874611 e!4128866)))

(declare-fun b!6846428 () Bool)

(declare-fun tp!1875177 () Bool)

(declare-fun tp!1875178 () Bool)

(assert (=> b!6846428 (= e!4128866 (and tp!1875177 tp!1875178))))

(assert (= (and b!6844759 ((_ is ElementMatch!16671) (regOne!33855 (regTwo!33854 (regOne!33855 r!7292))))) b!6846425))

(assert (= (and b!6844759 ((_ is Concat!25516) (regOne!33855 (regTwo!33854 (regOne!33855 r!7292))))) b!6846426))

(assert (= (and b!6844759 ((_ is Star!16671) (regOne!33855 (regTwo!33854 (regOne!33855 r!7292))))) b!6846427))

(assert (= (and b!6844759 ((_ is Union!16671) (regOne!33855 (regTwo!33854 (regOne!33855 r!7292))))) b!6846428))

(declare-fun b!6846434 () Bool)

(declare-fun e!4128868 () Bool)

(declare-fun tp!1875184 () Bool)

(declare-fun tp!1875186 () Bool)

(assert (=> b!6846434 (= e!4128868 (and tp!1875184 tp!1875186))))

(declare-fun b!6846433 () Bool)

(assert (=> b!6846433 (= e!4128868 tp_is_empty!42595)))

(declare-fun b!6846435 () Bool)

(declare-fun tp!1875185 () Bool)

(assert (=> b!6846435 (= e!4128868 tp!1875185)))

(assert (=> b!6844759 (= tp!1874612 e!4128868)))

(declare-fun b!6846436 () Bool)

(declare-fun tp!1875187 () Bool)

(declare-fun tp!1875188 () Bool)

(assert (=> b!6846436 (= e!4128868 (and tp!1875187 tp!1875188))))

(assert (= (and b!6844759 ((_ is ElementMatch!16671) (regTwo!33855 (regTwo!33854 (regOne!33855 r!7292))))) b!6846433))

(assert (= (and b!6844759 ((_ is Concat!25516) (regTwo!33855 (regTwo!33854 (regOne!33855 r!7292))))) b!6846434))

(assert (= (and b!6844759 ((_ is Star!16671) (regTwo!33855 (regTwo!33854 (regOne!33855 r!7292))))) b!6846435))

(assert (= (and b!6844759 ((_ is Union!16671) (regTwo!33855 (regTwo!33854 (regOne!33855 r!7292))))) b!6846436))

(declare-fun b!6846439 () Bool)

(declare-fun e!4128870 () Bool)

(declare-fun tp!1875191 () Bool)

(declare-fun tp!1875193 () Bool)

(assert (=> b!6846439 (= e!4128870 (and tp!1875191 tp!1875193))))

(declare-fun b!6846438 () Bool)

(assert (=> b!6846438 (= e!4128870 tp_is_empty!42595)))

(declare-fun b!6846440 () Bool)

(declare-fun tp!1875192 () Bool)

(assert (=> b!6846440 (= e!4128870 tp!1875192)))

(assert (=> b!6844718 (= tp!1874559 e!4128870)))

(declare-fun b!6846441 () Bool)

(declare-fun tp!1875194 () Bool)

(declare-fun tp!1875195 () Bool)

(assert (=> b!6846441 (= e!4128870 (and tp!1875194 tp!1875195))))

(assert (= (and b!6844718 ((_ is ElementMatch!16671) (regOne!33854 (regTwo!33854 (regOne!33854 r!7292))))) b!6846438))

(assert (= (and b!6844718 ((_ is Concat!25516) (regOne!33854 (regTwo!33854 (regOne!33854 r!7292))))) b!6846439))

(assert (= (and b!6844718 ((_ is Star!16671) (regOne!33854 (regTwo!33854 (regOne!33854 r!7292))))) b!6846440))

(assert (= (and b!6844718 ((_ is Union!16671) (regOne!33854 (regTwo!33854 (regOne!33854 r!7292))))) b!6846441))

(declare-fun b!6846447 () Bool)

(declare-fun e!4128872 () Bool)

(declare-fun tp!1875201 () Bool)

(declare-fun tp!1875203 () Bool)

(assert (=> b!6846447 (= e!4128872 (and tp!1875201 tp!1875203))))

(declare-fun b!6846446 () Bool)

(assert (=> b!6846446 (= e!4128872 tp_is_empty!42595)))

(declare-fun b!6846448 () Bool)

(declare-fun tp!1875202 () Bool)

(assert (=> b!6846448 (= e!4128872 tp!1875202)))

(assert (=> b!6844718 (= tp!1874561 e!4128872)))

(declare-fun b!6846449 () Bool)

(declare-fun tp!1875204 () Bool)

(declare-fun tp!1875205 () Bool)

(assert (=> b!6846449 (= e!4128872 (and tp!1875204 tp!1875205))))

(assert (= (and b!6844718 ((_ is ElementMatch!16671) (regTwo!33854 (regTwo!33854 (regOne!33854 r!7292))))) b!6846446))

(assert (= (and b!6844718 ((_ is Concat!25516) (regTwo!33854 (regTwo!33854 (regOne!33854 r!7292))))) b!6846447))

(assert (= (and b!6844718 ((_ is Star!16671) (regTwo!33854 (regTwo!33854 (regOne!33854 r!7292))))) b!6846448))

(assert (= (and b!6844718 ((_ is Union!16671) (regTwo!33854 (regTwo!33854 (regOne!33854 r!7292))))) b!6846449))

(declare-fun b!6846454 () Bool)

(declare-fun e!4128874 () Bool)

(declare-fun tp!1875211 () Bool)

(declare-fun tp!1875212 () Bool)

(assert (=> b!6846454 (= e!4128874 (and tp!1875211 tp!1875212))))

(assert (=> b!6844484 (= tp!1874478 e!4128874)))

(assert (= (and b!6844484 ((_ is Cons!66188) (exprs!6555 (h!72637 res!2794404)))) b!6846454))

(declare-fun b!6846460 () Bool)

(declare-fun e!4128876 () Bool)

(declare-fun tp!1875218 () Bool)

(declare-fun tp!1875220 () Bool)

(assert (=> b!6846460 (= e!4128876 (and tp!1875218 tp!1875220))))

(declare-fun b!6846459 () Bool)

(assert (=> b!6846459 (= e!4128876 tp_is_empty!42595)))

(declare-fun b!6846461 () Bool)

(declare-fun tp!1875219 () Bool)

(assert (=> b!6846461 (= e!4128876 tp!1875219)))

(assert (=> b!6844735 (= tp!1874580 e!4128876)))

(declare-fun b!6846462 () Bool)

(declare-fun tp!1875221 () Bool)

(declare-fun tp!1875222 () Bool)

(assert (=> b!6846462 (= e!4128876 (and tp!1875221 tp!1875222))))

(assert (= (and b!6844735 ((_ is ElementMatch!16671) (reg!17000 (regOne!33854 (reg!17000 r!7292))))) b!6846459))

(assert (= (and b!6844735 ((_ is Concat!25516) (reg!17000 (regOne!33854 (reg!17000 r!7292))))) b!6846460))

(assert (= (and b!6844735 ((_ is Star!16671) (reg!17000 (regOne!33854 (reg!17000 r!7292))))) b!6846461))

(assert (= (and b!6844735 ((_ is Union!16671) (reg!17000 (regOne!33854 (reg!17000 r!7292))))) b!6846462))

(declare-fun b!6846468 () Bool)

(declare-fun e!4128878 () Bool)

(declare-fun tp!1875228 () Bool)

(declare-fun tp!1875230 () Bool)

(assert (=> b!6846468 (= e!4128878 (and tp!1875228 tp!1875230))))

(declare-fun b!6846467 () Bool)

(assert (=> b!6846467 (= e!4128878 tp_is_empty!42595)))

(declare-fun b!6846469 () Bool)

(declare-fun tp!1875229 () Bool)

(assert (=> b!6846469 (= e!4128878 tp!1875229)))

(assert (=> b!6844727 (= tp!1874570 e!4128878)))

(declare-fun b!6846470 () Bool)

(declare-fun tp!1875231 () Bool)

(declare-fun tp!1875232 () Bool)

(assert (=> b!6846470 (= e!4128878 (and tp!1875231 tp!1875232))))

(assert (= (and b!6844727 ((_ is ElementMatch!16671) (reg!17000 (regOne!33855 (reg!17000 r!7292))))) b!6846467))

(assert (= (and b!6844727 ((_ is Concat!25516) (reg!17000 (regOne!33855 (reg!17000 r!7292))))) b!6846468))

(assert (= (and b!6844727 ((_ is Star!16671) (reg!17000 (regOne!33855 (reg!17000 r!7292))))) b!6846469))

(assert (= (and b!6844727 ((_ is Union!16671) (reg!17000 (regOne!33855 (reg!17000 r!7292))))) b!6846470))

(declare-fun b!6846476 () Bool)

(declare-fun e!4128880 () Bool)

(declare-fun tp!1875238 () Bool)

(declare-fun tp!1875240 () Bool)

(assert (=> b!6846476 (= e!4128880 (and tp!1875238 tp!1875240))))

(declare-fun b!6846475 () Bool)

(assert (=> b!6846475 (= e!4128880 tp_is_empty!42595)))

(declare-fun b!6846477 () Bool)

(declare-fun tp!1875239 () Bool)

(assert (=> b!6846477 (= e!4128880 tp!1875239)))

(assert (=> b!6844659 (= tp!1874482 e!4128880)))

(declare-fun b!6846478 () Bool)

(declare-fun tp!1875241 () Bool)

(declare-fun tp!1875242 () Bool)

(assert (=> b!6846478 (= e!4128880 (and tp!1875241 tp!1875242))))

(assert (= (and b!6844659 ((_ is ElementMatch!16671) (reg!17000 (reg!17000 (regTwo!33854 r!7292))))) b!6846475))

(assert (= (and b!6844659 ((_ is Concat!25516) (reg!17000 (reg!17000 (regTwo!33854 r!7292))))) b!6846476))

(assert (= (and b!6844659 ((_ is Star!16671) (reg!17000 (reg!17000 (regTwo!33854 r!7292))))) b!6846477))

(assert (= (and b!6844659 ((_ is Union!16671) (reg!17000 (reg!17000 (regTwo!33854 r!7292))))) b!6846478))

(declare-fun b!6846484 () Bool)

(declare-fun e!4128882 () Bool)

(declare-fun tp!1875248 () Bool)

(declare-fun tp!1875250 () Bool)

(assert (=> b!6846484 (= e!4128882 (and tp!1875248 tp!1875250))))

(declare-fun b!6846483 () Bool)

(assert (=> b!6846483 (= e!4128882 tp_is_empty!42595)))

(declare-fun b!6846485 () Bool)

(declare-fun tp!1875249 () Bool)

(assert (=> b!6846485 (= e!4128882 tp!1875249)))

(assert (=> b!6844770 (= tp!1874624 e!4128882)))

(declare-fun b!6846486 () Bool)

(declare-fun tp!1875251 () Bool)

(declare-fun tp!1875252 () Bool)

(assert (=> b!6846486 (= e!4128882 (and tp!1875251 tp!1875252))))

(assert (= (and b!6844770 ((_ is ElementMatch!16671) (reg!17000 (regTwo!33855 (regOne!33854 r!7292))))) b!6846483))

(assert (= (and b!6844770 ((_ is Concat!25516) (reg!17000 (regTwo!33855 (regOne!33854 r!7292))))) b!6846484))

(assert (= (and b!6844770 ((_ is Star!16671) (reg!17000 (regTwo!33855 (regOne!33854 r!7292))))) b!6846485))

(assert (= (and b!6844770 ((_ is Union!16671) (reg!17000 (regTwo!33855 (regOne!33854 r!7292))))) b!6846486))

(declare-fun b!6846492 () Bool)

(declare-fun e!4128884 () Bool)

(declare-fun tp!1875258 () Bool)

(declare-fun tp!1875260 () Bool)

(assert (=> b!6846492 (= e!4128884 (and tp!1875258 tp!1875260))))

(declare-fun b!6846491 () Bool)

(assert (=> b!6846491 (= e!4128884 tp_is_empty!42595)))

(declare-fun b!6846493 () Bool)

(declare-fun tp!1875259 () Bool)

(assert (=> b!6846493 (= e!4128884 tp!1875259)))

(assert (=> b!6844668 (= tp!1874494 e!4128884)))

(declare-fun b!6846494 () Bool)

(declare-fun tp!1875261 () Bool)

(declare-fun tp!1875262 () Bool)

(assert (=> b!6846494 (= e!4128884 (and tp!1875261 tp!1875262))))

(assert (= (and b!6844668 ((_ is ElementMatch!16671) (regOne!33855 (regTwo!33854 (regTwo!33854 r!7292))))) b!6846491))

(assert (= (and b!6844668 ((_ is Concat!25516) (regOne!33855 (regTwo!33854 (regTwo!33854 r!7292))))) b!6846492))

(assert (= (and b!6844668 ((_ is Star!16671) (regOne!33855 (regTwo!33854 (regTwo!33854 r!7292))))) b!6846493))

(assert (= (and b!6844668 ((_ is Union!16671) (regOne!33855 (regTwo!33854 (regTwo!33854 r!7292))))) b!6846494))

(declare-fun b!6846500 () Bool)

(declare-fun e!4128886 () Bool)

(declare-fun tp!1875268 () Bool)

(declare-fun tp!1875270 () Bool)

(assert (=> b!6846500 (= e!4128886 (and tp!1875268 tp!1875270))))

(declare-fun b!6846499 () Bool)

(assert (=> b!6846499 (= e!4128886 tp_is_empty!42595)))

(declare-fun b!6846501 () Bool)

(declare-fun tp!1875269 () Bool)

(assert (=> b!6846501 (= e!4128886 tp!1875269)))

(assert (=> b!6844668 (= tp!1874495 e!4128886)))

(declare-fun b!6846502 () Bool)

(declare-fun tp!1875271 () Bool)

(declare-fun tp!1875272 () Bool)

(assert (=> b!6846502 (= e!4128886 (and tp!1875271 tp!1875272))))

(assert (= (and b!6844668 ((_ is ElementMatch!16671) (regTwo!33855 (regTwo!33854 (regTwo!33854 r!7292))))) b!6846499))

(assert (= (and b!6844668 ((_ is Concat!25516) (regTwo!33855 (regTwo!33854 (regTwo!33854 r!7292))))) b!6846500))

(assert (= (and b!6844668 ((_ is Star!16671) (regTwo!33855 (regTwo!33854 (regTwo!33854 r!7292))))) b!6846501))

(assert (= (and b!6844668 ((_ is Union!16671) (regTwo!33855 (regTwo!33854 (regTwo!33854 r!7292))))) b!6846502))

(declare-fun b!6846505 () Bool)

(declare-fun e!4128888 () Bool)

(declare-fun tp!1875275 () Bool)

(declare-fun tp!1875277 () Bool)

(assert (=> b!6846505 (= e!4128888 (and tp!1875275 tp!1875277))))

(declare-fun b!6846504 () Bool)

(assert (=> b!6846504 (= e!4128888 tp_is_empty!42595)))

(declare-fun b!6846506 () Bool)

(declare-fun tp!1875276 () Bool)

(assert (=> b!6846506 (= e!4128888 tp!1875276)))

(assert (=> b!6844761 (= tp!1874613 e!4128888)))

(declare-fun b!6846507 () Bool)

(declare-fun tp!1875278 () Bool)

(declare-fun tp!1875279 () Bool)

(assert (=> b!6846507 (= e!4128888 (and tp!1875278 tp!1875279))))

(assert (= (and b!6844761 ((_ is ElementMatch!16671) (regOne!33854 (reg!17000 (regOne!33854 r!7292))))) b!6846504))

(assert (= (and b!6844761 ((_ is Concat!25516) (regOne!33854 (reg!17000 (regOne!33854 r!7292))))) b!6846505))

(assert (= (and b!6844761 ((_ is Star!16671) (regOne!33854 (reg!17000 (regOne!33854 r!7292))))) b!6846506))

(assert (= (and b!6844761 ((_ is Union!16671) (regOne!33854 (reg!17000 (regOne!33854 r!7292))))) b!6846507))

(declare-fun b!6846513 () Bool)

(declare-fun e!4128890 () Bool)

(declare-fun tp!1875285 () Bool)

(declare-fun tp!1875287 () Bool)

(assert (=> b!6846513 (= e!4128890 (and tp!1875285 tp!1875287))))

(declare-fun b!6846512 () Bool)

(assert (=> b!6846512 (= e!4128890 tp_is_empty!42595)))

(declare-fun b!6846514 () Bool)

(declare-fun tp!1875286 () Bool)

(assert (=> b!6846514 (= e!4128890 tp!1875286)))

(assert (=> b!6844761 (= tp!1874615 e!4128890)))

(declare-fun b!6846515 () Bool)

(declare-fun tp!1875288 () Bool)

(declare-fun tp!1875289 () Bool)

(assert (=> b!6846515 (= e!4128890 (and tp!1875288 tp!1875289))))

(assert (= (and b!6844761 ((_ is ElementMatch!16671) (regTwo!33854 (reg!17000 (regOne!33854 r!7292))))) b!6846512))

(assert (= (and b!6844761 ((_ is Concat!25516) (regTwo!33854 (reg!17000 (regOne!33854 r!7292))))) b!6846513))

(assert (= (and b!6844761 ((_ is Star!16671) (regTwo!33854 (reg!17000 (regOne!33854 r!7292))))) b!6846514))

(assert (= (and b!6844761 ((_ is Union!16671) (regTwo!33854 (reg!17000 (regOne!33854 r!7292))))) b!6846515))

(declare-fun b!6846521 () Bool)

(declare-fun e!4128892 () Bool)

(declare-fun tp!1875295 () Bool)

(declare-fun tp!1875297 () Bool)

(assert (=> b!6846521 (= e!4128892 (and tp!1875295 tp!1875297))))

(declare-fun b!6846520 () Bool)

(assert (=> b!6846520 (= e!4128892 tp_is_empty!42595)))

(declare-fun b!6846522 () Bool)

(declare-fun tp!1875296 () Bool)

(assert (=> b!6846522 (= e!4128892 tp!1875296)))

(assert (=> b!6844676 (= tp!1874504 e!4128892)))

(declare-fun b!6846523 () Bool)

(declare-fun tp!1875298 () Bool)

(declare-fun tp!1875299 () Bool)

(assert (=> b!6846523 (= e!4128892 (and tp!1875298 tp!1875299))))

(assert (= (and b!6844676 ((_ is ElementMatch!16671) (reg!17000 (regTwo!33855 (regOne!33855 r!7292))))) b!6846520))

(assert (= (and b!6844676 ((_ is Concat!25516) (reg!17000 (regTwo!33855 (regOne!33855 r!7292))))) b!6846521))

(assert (= (and b!6844676 ((_ is Star!16671) (reg!17000 (regTwo!33855 (regOne!33855 r!7292))))) b!6846522))

(assert (= (and b!6844676 ((_ is Union!16671) (reg!17000 (regTwo!33855 (regOne!33855 r!7292))))) b!6846523))

(declare-fun b!6846529 () Bool)

(declare-fun e!4128894 () Bool)

(declare-fun tp!1875305 () Bool)

(declare-fun tp!1875307 () Bool)

(assert (=> b!6846529 (= e!4128894 (and tp!1875305 tp!1875307))))

(declare-fun b!6846528 () Bool)

(assert (=> b!6846528 (= e!4128894 tp_is_empty!42595)))

(declare-fun b!6846530 () Bool)

(declare-fun tp!1875306 () Bool)

(assert (=> b!6846530 (= e!4128894 tp!1875306)))

(assert (=> b!6844763 (= tp!1874616 e!4128894)))

(declare-fun b!6846531 () Bool)

(declare-fun tp!1875308 () Bool)

(declare-fun tp!1875309 () Bool)

(assert (=> b!6846531 (= e!4128894 (and tp!1875308 tp!1875309))))

(assert (= (and b!6844763 ((_ is ElementMatch!16671) (regOne!33855 (reg!17000 (regOne!33854 r!7292))))) b!6846528))

(assert (= (and b!6844763 ((_ is Concat!25516) (regOne!33855 (reg!17000 (regOne!33854 r!7292))))) b!6846529))

(assert (= (and b!6844763 ((_ is Star!16671) (regOne!33855 (reg!17000 (regOne!33854 r!7292))))) b!6846530))

(assert (= (and b!6844763 ((_ is Union!16671) (regOne!33855 (reg!17000 (regOne!33854 r!7292))))) b!6846531))

(declare-fun b!6846537 () Bool)

(declare-fun e!4128896 () Bool)

(declare-fun tp!1875315 () Bool)

(declare-fun tp!1875317 () Bool)

(assert (=> b!6846537 (= e!4128896 (and tp!1875315 tp!1875317))))

(declare-fun b!6846536 () Bool)

(assert (=> b!6846536 (= e!4128896 tp_is_empty!42595)))

(declare-fun b!6846538 () Bool)

(declare-fun tp!1875316 () Bool)

(assert (=> b!6846538 (= e!4128896 tp!1875316)))

(assert (=> b!6844763 (= tp!1874617 e!4128896)))

(declare-fun b!6846539 () Bool)

(declare-fun tp!1875318 () Bool)

(declare-fun tp!1875319 () Bool)

(assert (=> b!6846539 (= e!4128896 (and tp!1875318 tp!1875319))))

(assert (= (and b!6844763 ((_ is ElementMatch!16671) (regTwo!33855 (reg!17000 (regOne!33854 r!7292))))) b!6846536))

(assert (= (and b!6844763 ((_ is Concat!25516) (regTwo!33855 (reg!17000 (regOne!33854 r!7292))))) b!6846537))

(assert (= (and b!6844763 ((_ is Star!16671) (regTwo!33855 (reg!17000 (regOne!33854 r!7292))))) b!6846538))

(assert (= (and b!6844763 ((_ is Union!16671) (regTwo!33855 (reg!17000 (regOne!33854 r!7292))))) b!6846539))

(declare-fun b!6846545 () Bool)

(declare-fun e!4128898 () Bool)

(declare-fun tp!1875325 () Bool)

(declare-fun tp!1875327 () Bool)

(assert (=> b!6846545 (= e!4128898 (and tp!1875325 tp!1875327))))

(declare-fun b!6846544 () Bool)

(assert (=> b!6846544 (= e!4128898 tp_is_empty!42595)))

(declare-fun b!6846546 () Bool)

(declare-fun tp!1875326 () Bool)

(assert (=> b!6846546 (= e!4128898 tp!1875326)))

(assert (=> b!6844693 (= tp!1874526 e!4128898)))

(declare-fun b!6846547 () Bool)

(declare-fun tp!1875328 () Bool)

(declare-fun tp!1875329 () Bool)

(assert (=> b!6846547 (= e!4128898 (and tp!1875328 tp!1875329))))

(assert (= (and b!6844693 ((_ is ElementMatch!16671) (regOne!33855 (regOne!33854 (regTwo!33855 r!7292))))) b!6846544))

(assert (= (and b!6844693 ((_ is Concat!25516) (regOne!33855 (regOne!33854 (regTwo!33855 r!7292))))) b!6846545))

(assert (= (and b!6844693 ((_ is Star!16671) (regOne!33855 (regOne!33854 (regTwo!33855 r!7292))))) b!6846546))

(assert (= (and b!6844693 ((_ is Union!16671) (regOne!33855 (regOne!33854 (regTwo!33855 r!7292))))) b!6846547))

(declare-fun b!6846553 () Bool)

(declare-fun e!4128900 () Bool)

(declare-fun tp!1875335 () Bool)

(declare-fun tp!1875337 () Bool)

(assert (=> b!6846553 (= e!4128900 (and tp!1875335 tp!1875337))))

(declare-fun b!6846552 () Bool)

(assert (=> b!6846552 (= e!4128900 tp_is_empty!42595)))

(declare-fun b!6846554 () Bool)

(declare-fun tp!1875336 () Bool)

(assert (=> b!6846554 (= e!4128900 tp!1875336)))

(assert (=> b!6844693 (= tp!1874527 e!4128900)))

(declare-fun b!6846555 () Bool)

(declare-fun tp!1875338 () Bool)

(declare-fun tp!1875339 () Bool)

(assert (=> b!6846555 (= e!4128900 (and tp!1875338 tp!1875339))))

(assert (= (and b!6844693 ((_ is ElementMatch!16671) (regTwo!33855 (regOne!33854 (regTwo!33855 r!7292))))) b!6846552))

(assert (= (and b!6844693 ((_ is Concat!25516) (regTwo!33855 (regOne!33854 (regTwo!33855 r!7292))))) b!6846553))

(assert (= (and b!6844693 ((_ is Star!16671) (regTwo!33855 (regOne!33854 (regTwo!33855 r!7292))))) b!6846554))

(assert (= (and b!6844693 ((_ is Union!16671) (regTwo!33855 (regOne!33854 (regTwo!33855 r!7292))))) b!6846555))

(declare-fun b!6846561 () Bool)

(declare-fun e!4128902 () Bool)

(declare-fun tp!1875345 () Bool)

(declare-fun tp!1875347 () Bool)

(assert (=> b!6846561 (= e!4128902 (and tp!1875345 tp!1875347))))

(declare-fun b!6846560 () Bool)

(assert (=> b!6846560 (= e!4128902 tp_is_empty!42595)))

(declare-fun b!6846562 () Bool)

(declare-fun tp!1875346 () Bool)

(assert (=> b!6846562 (= e!4128902 tp!1875346)))

(assert (=> b!6844685 (= tp!1874516 e!4128902)))

(declare-fun b!6846563 () Bool)

(declare-fun tp!1875348 () Bool)

(declare-fun tp!1875349 () Bool)

(assert (=> b!6846563 (= e!4128902 (and tp!1875348 tp!1875349))))

(assert (= (and b!6844685 ((_ is ElementMatch!16671) (regOne!33855 (regOne!33855 (regTwo!33855 r!7292))))) b!6846560))

(assert (= (and b!6844685 ((_ is Concat!25516) (regOne!33855 (regOne!33855 (regTwo!33855 r!7292))))) b!6846561))

(assert (= (and b!6844685 ((_ is Star!16671) (regOne!33855 (regOne!33855 (regTwo!33855 r!7292))))) b!6846562))

(assert (= (and b!6844685 ((_ is Union!16671) (regOne!33855 (regOne!33855 (regTwo!33855 r!7292))))) b!6846563))

(declare-fun b!6846569 () Bool)

(declare-fun e!4128904 () Bool)

(declare-fun tp!1875355 () Bool)

(declare-fun tp!1875357 () Bool)

(assert (=> b!6846569 (= e!4128904 (and tp!1875355 tp!1875357))))

(declare-fun b!6846568 () Bool)

(assert (=> b!6846568 (= e!4128904 tp_is_empty!42595)))

(declare-fun b!6846570 () Bool)

(declare-fun tp!1875356 () Bool)

(assert (=> b!6846570 (= e!4128904 tp!1875356)))

(assert (=> b!6844685 (= tp!1874517 e!4128904)))

(declare-fun b!6846571 () Bool)

(declare-fun tp!1875358 () Bool)

(declare-fun tp!1875359 () Bool)

(assert (=> b!6846571 (= e!4128904 (and tp!1875358 tp!1875359))))

(assert (= (and b!6844685 ((_ is ElementMatch!16671) (regTwo!33855 (regOne!33855 (regTwo!33855 r!7292))))) b!6846568))

(assert (= (and b!6844685 ((_ is Concat!25516) (regTwo!33855 (regOne!33855 (regTwo!33855 r!7292))))) b!6846569))

(assert (= (and b!6844685 ((_ is Star!16671) (regTwo!33855 (regOne!33855 (regTwo!33855 r!7292))))) b!6846570))

(assert (= (and b!6844685 ((_ is Union!16671) (regTwo!33855 (regOne!33855 (regTwo!33855 r!7292))))) b!6846571))

(declare-fun b!6846577 () Bool)

(declare-fun e!4128906 () Bool)

(declare-fun tp!1875365 () Bool)

(declare-fun tp!1875367 () Bool)

(assert (=> b!6846577 (= e!4128906 (and tp!1875365 tp!1875367))))

(declare-fun b!6846576 () Bool)

(assert (=> b!6846576 (= e!4128906 tp_is_empty!42595)))

(declare-fun b!6846578 () Bool)

(declare-fun tp!1875366 () Bool)

(assert (=> b!6846578 (= e!4128906 tp!1875366)))

(assert (=> b!6844666 (= tp!1874491 e!4128906)))

(declare-fun b!6846579 () Bool)

(declare-fun tp!1875368 () Bool)

(declare-fun tp!1875369 () Bool)

(assert (=> b!6846579 (= e!4128906 (and tp!1875368 tp!1875369))))

(assert (= (and b!6844666 ((_ is ElementMatch!16671) (regOne!33854 (regTwo!33854 (regTwo!33854 r!7292))))) b!6846576))

(assert (= (and b!6844666 ((_ is Concat!25516) (regOne!33854 (regTwo!33854 (regTwo!33854 r!7292))))) b!6846577))

(assert (= (and b!6844666 ((_ is Star!16671) (regOne!33854 (regTwo!33854 (regTwo!33854 r!7292))))) b!6846578))

(assert (= (and b!6844666 ((_ is Union!16671) (regOne!33854 (regTwo!33854 (regTwo!33854 r!7292))))) b!6846579))

(declare-fun b!6846585 () Bool)

(declare-fun e!4128908 () Bool)

(declare-fun tp!1875375 () Bool)

(declare-fun tp!1875377 () Bool)

(assert (=> b!6846585 (= e!4128908 (and tp!1875375 tp!1875377))))

(declare-fun b!6846584 () Bool)

(assert (=> b!6846584 (= e!4128908 tp_is_empty!42595)))

(declare-fun b!6846586 () Bool)

(declare-fun tp!1875376 () Bool)

(assert (=> b!6846586 (= e!4128908 tp!1875376)))

(assert (=> b!6844666 (= tp!1874493 e!4128908)))

(declare-fun b!6846587 () Bool)

(declare-fun tp!1875378 () Bool)

(declare-fun tp!1875379 () Bool)

(assert (=> b!6846587 (= e!4128908 (and tp!1875378 tp!1875379))))

(assert (= (and b!6844666 ((_ is ElementMatch!16671) (regTwo!33854 (regTwo!33854 (regTwo!33854 r!7292))))) b!6846584))

(assert (= (and b!6844666 ((_ is Concat!25516) (regTwo!33854 (regTwo!33854 (regTwo!33854 r!7292))))) b!6846585))

(assert (= (and b!6844666 ((_ is Star!16671) (regTwo!33854 (regTwo!33854 (regTwo!33854 r!7292))))) b!6846586))

(assert (= (and b!6844666 ((_ is Union!16671) (regTwo!33854 (regTwo!33854 (regTwo!33854 r!7292))))) b!6846587))

(declare-fun b!6846593 () Bool)

(declare-fun e!4128910 () Bool)

(declare-fun tp!1875385 () Bool)

(declare-fun tp!1875387 () Bool)

(assert (=> b!6846593 (= e!4128910 (and tp!1875385 tp!1875387))))

(declare-fun b!6846592 () Bool)

(assert (=> b!6846592 (= e!4128910 tp_is_empty!42595)))

(declare-fun b!6846594 () Bool)

(declare-fun tp!1875386 () Bool)

(assert (=> b!6846594 (= e!4128910 tp!1875386)))

(assert (=> b!6844691 (= tp!1874523 e!4128910)))

(declare-fun b!6846595 () Bool)

(declare-fun tp!1875388 () Bool)

(declare-fun tp!1875389 () Bool)

(assert (=> b!6846595 (= e!4128910 (and tp!1875388 tp!1875389))))

(assert (= (and b!6844691 ((_ is ElementMatch!16671) (regOne!33854 (regOne!33854 (regTwo!33855 r!7292))))) b!6846592))

(assert (= (and b!6844691 ((_ is Concat!25516) (regOne!33854 (regOne!33854 (regTwo!33855 r!7292))))) b!6846593))

(assert (= (and b!6844691 ((_ is Star!16671) (regOne!33854 (regOne!33854 (regTwo!33855 r!7292))))) b!6846594))

(assert (= (and b!6844691 ((_ is Union!16671) (regOne!33854 (regOne!33854 (regTwo!33855 r!7292))))) b!6846595))

(declare-fun b!6846601 () Bool)

(declare-fun e!4128912 () Bool)

(declare-fun tp!1875395 () Bool)

(declare-fun tp!1875397 () Bool)

(assert (=> b!6846601 (= e!4128912 (and tp!1875395 tp!1875397))))

(declare-fun b!6846600 () Bool)

(assert (=> b!6846600 (= e!4128912 tp_is_empty!42595)))

(declare-fun b!6846602 () Bool)

(declare-fun tp!1875396 () Bool)

(assert (=> b!6846602 (= e!4128912 tp!1875396)))

(assert (=> b!6844691 (= tp!1874525 e!4128912)))

(declare-fun b!6846603 () Bool)

(declare-fun tp!1875398 () Bool)

(declare-fun tp!1875399 () Bool)

(assert (=> b!6846603 (= e!4128912 (and tp!1875398 tp!1875399))))

(assert (= (and b!6844691 ((_ is ElementMatch!16671) (regTwo!33854 (regOne!33854 (regTwo!33855 r!7292))))) b!6846600))

(assert (= (and b!6844691 ((_ is Concat!25516) (regTwo!33854 (regOne!33854 (regTwo!33855 r!7292))))) b!6846601))

(assert (= (and b!6844691 ((_ is Star!16671) (regTwo!33854 (regOne!33854 (regTwo!33855 r!7292))))) b!6846602))

(assert (= (and b!6844691 ((_ is Union!16671) (regTwo!33854 (regOne!33854 (regTwo!33855 r!7292))))) b!6846603))

(declare-fun b!6846609 () Bool)

(declare-fun e!4128914 () Bool)

(declare-fun tp!1875405 () Bool)

(declare-fun tp!1875407 () Bool)

(assert (=> b!6846609 (= e!4128914 (and tp!1875405 tp!1875407))))

(declare-fun b!6846608 () Bool)

(assert (=> b!6846608 (= e!4128914 tp_is_empty!42595)))

(declare-fun b!6846610 () Bool)

(declare-fun tp!1875406 () Bool)

(assert (=> b!6846610 (= e!4128914 tp!1875406)))

(assert (=> b!6844683 (= tp!1874513 e!4128914)))

(declare-fun b!6846611 () Bool)

(declare-fun tp!1875408 () Bool)

(declare-fun tp!1875409 () Bool)

(assert (=> b!6846611 (= e!4128914 (and tp!1875408 tp!1875409))))

(assert (= (and b!6844683 ((_ is ElementMatch!16671) (regOne!33854 (regOne!33855 (regTwo!33855 r!7292))))) b!6846608))

(assert (= (and b!6844683 ((_ is Concat!25516) (regOne!33854 (regOne!33855 (regTwo!33855 r!7292))))) b!6846609))

(assert (= (and b!6844683 ((_ is Star!16671) (regOne!33854 (regOne!33855 (regTwo!33855 r!7292))))) b!6846610))

(assert (= (and b!6844683 ((_ is Union!16671) (regOne!33854 (regOne!33855 (regTwo!33855 r!7292))))) b!6846611))

(declare-fun b!6846618 () Bool)

(declare-fun e!4128917 () Bool)

(declare-fun tp!1875417 () Bool)

(declare-fun tp!1875419 () Bool)

(assert (=> b!6846618 (= e!4128917 (and tp!1875417 tp!1875419))))

(declare-fun b!6846617 () Bool)

(assert (=> b!6846617 (= e!4128917 tp_is_empty!42595)))

(declare-fun b!6846619 () Bool)

(declare-fun tp!1875418 () Bool)

(assert (=> b!6846619 (= e!4128917 tp!1875418)))

(assert (=> b!6844683 (= tp!1874515 e!4128917)))

(declare-fun b!6846620 () Bool)

(declare-fun tp!1875420 () Bool)

(declare-fun tp!1875421 () Bool)

(assert (=> b!6846620 (= e!4128917 (and tp!1875420 tp!1875421))))

(assert (= (and b!6844683 ((_ is ElementMatch!16671) (regTwo!33854 (regOne!33855 (regTwo!33855 r!7292))))) b!6846617))

(assert (= (and b!6844683 ((_ is Concat!25516) (regTwo!33854 (regOne!33855 (regTwo!33855 r!7292))))) b!6846618))

(assert (= (and b!6844683 ((_ is Star!16671) (regTwo!33854 (regOne!33855 (regTwo!33855 r!7292))))) b!6846619))

(assert (= (and b!6844683 ((_ is Union!16671) (regTwo!33854 (regOne!33855 (regTwo!33855 r!7292))))) b!6846620))

(declare-fun b!6846626 () Bool)

(declare-fun e!4128919 () Bool)

(declare-fun tp!1875427 () Bool)

(declare-fun tp!1875429 () Bool)

(assert (=> b!6846626 (= e!4128919 (and tp!1875427 tp!1875429))))

(declare-fun b!6846625 () Bool)

(assert (=> b!6846625 (= e!4128919 tp_is_empty!42595)))

(declare-fun b!6846627 () Bool)

(declare-fun tp!1875428 () Bool)

(assert (=> b!6846627 (= e!4128919 tp!1875428)))

(assert (=> b!6844704 (= tp!1874542 e!4128919)))

(declare-fun b!6846628 () Bool)

(declare-fun tp!1875430 () Bool)

(declare-fun tp!1875431 () Bool)

(assert (=> b!6846628 (= e!4128919 (and tp!1875430 tp!1875431))))

(assert (= (and b!6844704 ((_ is ElementMatch!16671) (h!72636 (t!380055 (exprs!6555 setElem!47059))))) b!6846625))

(assert (= (and b!6844704 ((_ is Concat!25516) (h!72636 (t!380055 (exprs!6555 setElem!47059))))) b!6846626))

(assert (= (and b!6844704 ((_ is Star!16671) (h!72636 (t!380055 (exprs!6555 setElem!47059))))) b!6846627))

(assert (= (and b!6844704 ((_ is Union!16671) (h!72636 (t!380055 (exprs!6555 setElem!47059))))) b!6846628))

(declare-fun b!6846630 () Bool)

(declare-fun e!4128921 () Bool)

(declare-fun tp!1875433 () Bool)

(declare-fun tp!1875434 () Bool)

(assert (=> b!6846630 (= e!4128921 (and tp!1875433 tp!1875434))))

(assert (=> b!6844704 (= tp!1874543 e!4128921)))

(assert (= (and b!6844704 ((_ is Cons!66188) (t!380055 (t!380055 (exprs!6555 setElem!47059))))) b!6846630))

(declare-fun condSetEmpty!47068 () Bool)

(assert (=> setNonEmpty!47067 (= condSetEmpty!47068 (= setRest!47067 ((as const (Array Context!12110 Bool)) false)))))

(declare-fun setRes!47068 () Bool)

(assert (=> setNonEmpty!47067 (= tp!1874533 setRes!47068)))

(declare-fun setIsEmpty!47068 () Bool)

(assert (=> setIsEmpty!47068 setRes!47068))

(declare-fun e!4128923 () Bool)

(declare-fun setElem!47068 () Context!12110)

(declare-fun setNonEmpty!47068 () Bool)

(declare-fun tp!1875440 () Bool)

(assert (=> setNonEmpty!47068 (= setRes!47068 (and tp!1875440 (inv!84924 setElem!47068) e!4128923))))

(declare-fun setRest!47068 () (InoxSet Context!12110))

(assert (=> setNonEmpty!47068 (= setRest!47067 ((_ map or) (store ((as const (Array Context!12110 Bool)) false) setElem!47068 true) setRest!47068))))

(declare-fun b!6846635 () Bool)

(declare-fun tp!1875441 () Bool)

(assert (=> b!6846635 (= e!4128923 tp!1875441)))

(assert (= (and setNonEmpty!47067 condSetEmpty!47068) setIsEmpty!47068))

(assert (= (and setNonEmpty!47067 (not condSetEmpty!47068)) setNonEmpty!47068))

(assert (= setNonEmpty!47068 b!6846635))

(declare-fun m!7586994 () Bool)

(assert (=> setNonEmpty!47068 m!7586994))

(declare-fun b!6846641 () Bool)

(declare-fun e!4128925 () Bool)

(declare-fun tp!1875447 () Bool)

(declare-fun tp!1875449 () Bool)

(assert (=> b!6846641 (= e!4128925 (and tp!1875447 tp!1875449))))

(declare-fun b!6846640 () Bool)

(assert (=> b!6846640 (= e!4128925 tp_is_empty!42595)))

(declare-fun b!6846642 () Bool)

(declare-fun tp!1875448 () Bool)

(assert (=> b!6846642 (= e!4128925 tp!1875448)))

(assert (=> b!6844724 (= tp!1874567 e!4128925)))

(declare-fun b!6846643 () Bool)

(declare-fun tp!1875450 () Bool)

(declare-fun tp!1875451 () Bool)

(assert (=> b!6846643 (= e!4128925 (and tp!1875450 tp!1875451))))

(assert (= (and b!6844724 ((_ is ElementMatch!16671) (regOne!33855 (reg!17000 (reg!17000 r!7292))))) b!6846640))

(assert (= (and b!6844724 ((_ is Concat!25516) (regOne!33855 (reg!17000 (reg!17000 r!7292))))) b!6846641))

(assert (= (and b!6844724 ((_ is Star!16671) (regOne!33855 (reg!17000 (reg!17000 r!7292))))) b!6846642))

(assert (= (and b!6844724 ((_ is Union!16671) (regOne!33855 (reg!17000 (reg!17000 r!7292))))) b!6846643))

(declare-fun b!6846649 () Bool)

(declare-fun e!4128927 () Bool)

(declare-fun tp!1875457 () Bool)

(declare-fun tp!1875459 () Bool)

(assert (=> b!6846649 (= e!4128927 (and tp!1875457 tp!1875459))))

(declare-fun b!6846648 () Bool)

(assert (=> b!6846648 (= e!4128927 tp_is_empty!42595)))

(declare-fun b!6846650 () Bool)

(declare-fun tp!1875458 () Bool)

(assert (=> b!6846650 (= e!4128927 tp!1875458)))

(assert (=> b!6844724 (= tp!1874568 e!4128927)))

(declare-fun b!6846651 () Bool)

(declare-fun tp!1875460 () Bool)

(declare-fun tp!1875461 () Bool)

(assert (=> b!6846651 (= e!4128927 (and tp!1875460 tp!1875461))))

(assert (= (and b!6844724 ((_ is ElementMatch!16671) (regTwo!33855 (reg!17000 (reg!17000 r!7292))))) b!6846648))

(assert (= (and b!6844724 ((_ is Concat!25516) (regTwo!33855 (reg!17000 (reg!17000 r!7292))))) b!6846649))

(assert (= (and b!6844724 ((_ is Star!16671) (regTwo!33855 (reg!17000 (reg!17000 r!7292))))) b!6846650))

(assert (= (and b!6844724 ((_ is Union!16671) (regTwo!33855 (reg!17000 (reg!17000 r!7292))))) b!6846651))

(declare-fun b!6846657 () Bool)

(declare-fun e!4128929 () Bool)

(declare-fun tp!1875467 () Bool)

(declare-fun tp!1875469 () Bool)

(assert (=> b!6846657 (= e!4128929 (and tp!1875467 tp!1875469))))

(declare-fun b!6846656 () Bool)

(assert (=> b!6846656 (= e!4128929 tp_is_empty!42595)))

(declare-fun b!6846658 () Bool)

(declare-fun tp!1875468 () Bool)

(assert (=> b!6846658 (= e!4128929 tp!1875468)))

(assert (=> b!6844715 (= tp!1874555 e!4128929)))

(declare-fun b!6846659 () Bool)

(declare-fun tp!1875470 () Bool)

(declare-fun tp!1875471 () Bool)

(assert (=> b!6846659 (= e!4128929 (and tp!1875470 tp!1875471))))

(assert (= (and b!6844715 ((_ is ElementMatch!16671) (reg!17000 (regOne!33854 (regOne!33854 r!7292))))) b!6846656))

(assert (= (and b!6844715 ((_ is Concat!25516) (reg!17000 (regOne!33854 (regOne!33854 r!7292))))) b!6846657))

(assert (= (and b!6844715 ((_ is Star!16671) (reg!17000 (regOne!33854 (regOne!33854 r!7292))))) b!6846658))

(assert (= (and b!6844715 ((_ is Union!16671) (reg!17000 (regOne!33854 (regOne!33854 r!7292))))) b!6846659))

(declare-fun b!6846665 () Bool)

(declare-fun e!4128931 () Bool)

(declare-fun tp!1875477 () Bool)

(declare-fun tp!1875479 () Bool)

(assert (=> b!6846665 (= e!4128931 (and tp!1875477 tp!1875479))))

(declare-fun b!6846664 () Bool)

(assert (=> b!6846664 (= e!4128931 tp_is_empty!42595)))

(declare-fun b!6846666 () Bool)

(declare-fun tp!1875478 () Bool)

(assert (=> b!6846666 (= e!4128931 tp!1875478)))

(assert (=> b!6844706 (= tp!1874544 e!4128931)))

(declare-fun b!6846667 () Bool)

(declare-fun tp!1875480 () Bool)

(declare-fun tp!1875481 () Bool)

(assert (=> b!6846667 (= e!4128931 (and tp!1875480 tp!1875481))))

(assert (= (and b!6844706 ((_ is ElementMatch!16671) (regOne!33854 (regOne!33855 (regTwo!33854 r!7292))))) b!6846664))

(assert (= (and b!6844706 ((_ is Concat!25516) (regOne!33854 (regOne!33855 (regTwo!33854 r!7292))))) b!6846665))

(assert (= (and b!6844706 ((_ is Star!16671) (regOne!33854 (regOne!33855 (regTwo!33854 r!7292))))) b!6846666))

(assert (= (and b!6844706 ((_ is Union!16671) (regOne!33854 (regOne!33855 (regTwo!33854 r!7292))))) b!6846667))

(declare-fun b!6846673 () Bool)

(declare-fun e!4128933 () Bool)

(declare-fun tp!1875487 () Bool)

(declare-fun tp!1875489 () Bool)

(assert (=> b!6846673 (= e!4128933 (and tp!1875487 tp!1875489))))

(declare-fun b!6846672 () Bool)

(assert (=> b!6846672 (= e!4128933 tp_is_empty!42595)))

(declare-fun b!6846674 () Bool)

(declare-fun tp!1875488 () Bool)

(assert (=> b!6846674 (= e!4128933 tp!1875488)))

(assert (=> b!6844706 (= tp!1874546 e!4128933)))

(declare-fun b!6846675 () Bool)

(declare-fun tp!1875490 () Bool)

(declare-fun tp!1875491 () Bool)

(assert (=> b!6846675 (= e!4128933 (and tp!1875490 tp!1875491))))

(assert (= (and b!6844706 ((_ is ElementMatch!16671) (regTwo!33854 (regOne!33855 (regTwo!33854 r!7292))))) b!6846672))

(assert (= (and b!6844706 ((_ is Concat!25516) (regTwo!33854 (regOne!33855 (regTwo!33854 r!7292))))) b!6846673))

(assert (= (and b!6844706 ((_ is Star!16671) (regTwo!33854 (regOne!33855 (regTwo!33854 r!7292))))) b!6846674))

(assert (= (and b!6844706 ((_ is Union!16671) (regTwo!33854 (regOne!33855 (regTwo!33854 r!7292))))) b!6846675))

(declare-fun b!6846681 () Bool)

(declare-fun e!4128935 () Bool)

(declare-fun tp!1875497 () Bool)

(declare-fun tp!1875499 () Bool)

(assert (=> b!6846681 (= e!4128935 (and tp!1875497 tp!1875499))))

(declare-fun b!6846680 () Bool)

(assert (=> b!6846680 (= e!4128935 tp_is_empty!42595)))

(declare-fun b!6846683 () Bool)

(declare-fun tp!1875498 () Bool)

(assert (=> b!6846683 (= e!4128935 tp!1875498)))

(assert (=> b!6844739 (= tp!1874585 e!4128935)))

(declare-fun b!6846685 () Bool)

(declare-fun tp!1875500 () Bool)

(declare-fun tp!1875501 () Bool)

(assert (=> b!6846685 (= e!4128935 (and tp!1875500 tp!1875501))))

(assert (= (and b!6844739 ((_ is ElementMatch!16671) (reg!17000 (regTwo!33854 (reg!17000 r!7292))))) b!6846680))

(assert (= (and b!6844739 ((_ is Concat!25516) (reg!17000 (regTwo!33854 (reg!17000 r!7292))))) b!6846681))

(assert (= (and b!6844739 ((_ is Star!16671) (reg!17000 (regTwo!33854 (reg!17000 r!7292))))) b!6846683))

(assert (= (and b!6844739 ((_ is Union!16671) (reg!17000 (regTwo!33854 (reg!17000 r!7292))))) b!6846685))

(declare-fun b!6846692 () Bool)

(declare-fun e!4128938 () Bool)

(declare-fun tp!1875507 () Bool)

(declare-fun tp!1875514 () Bool)

(assert (=> b!6846692 (= e!4128938 (and tp!1875507 tp!1875514))))

(declare-fun b!6846690 () Bool)

(assert (=> b!6846690 (= e!4128938 tp_is_empty!42595)))

(declare-fun b!6846694 () Bool)

(declare-fun tp!1875513 () Bool)

(assert (=> b!6846694 (= e!4128938 tp!1875513)))

(assert (=> b!6844731 (= tp!1874575 e!4128938)))

(declare-fun b!6846695 () Bool)

(declare-fun tp!1875515 () Bool)

(declare-fun tp!1875516 () Bool)

(assert (=> b!6846695 (= e!4128938 (and tp!1875515 tp!1875516))))

(assert (= (and b!6844731 ((_ is ElementMatch!16671) (reg!17000 (regTwo!33855 (reg!17000 r!7292))))) b!6846690))

(assert (= (and b!6844731 ((_ is Concat!25516) (reg!17000 (regTwo!33855 (reg!17000 r!7292))))) b!6846692))

(assert (= (and b!6844731 ((_ is Star!16671) (reg!17000 (regTwo!33855 (reg!17000 r!7292))))) b!6846694))

(assert (= (and b!6844731 ((_ is Union!16671) (reg!17000 (regTwo!33855 (reg!17000 r!7292))))) b!6846695))

(declare-fun b!6846697 () Bool)

(declare-fun e!4128939 () Bool)

(declare-fun tp!1875518 () Bool)

(declare-fun tp!1875520 () Bool)

(assert (=> b!6846697 (= e!4128939 (and tp!1875518 tp!1875520))))

(declare-fun b!6846696 () Bool)

(assert (=> b!6846696 (= e!4128939 tp_is_empty!42595)))

(declare-fun b!6846699 () Bool)

(declare-fun tp!1875519 () Bool)

(assert (=> b!6846699 (= e!4128939 tp!1875519)))

(assert (=> b!6844754 (= tp!1874604 e!4128939)))

(declare-fun b!6846700 () Bool)

(declare-fun tp!1875521 () Bool)

(declare-fun tp!1875522 () Bool)

(assert (=> b!6846700 (= e!4128939 (and tp!1875521 tp!1875522))))

(assert (= (and b!6844754 ((_ is ElementMatch!16671) (reg!17000 (regOne!33854 (regOne!33855 r!7292))))) b!6846696))

(assert (= (and b!6844754 ((_ is Concat!25516) (reg!17000 (regOne!33854 (regOne!33855 r!7292))))) b!6846697))

(assert (= (and b!6844754 ((_ is Star!16671) (reg!17000 (regOne!33854 (regOne!33855 r!7292))))) b!6846699))

(assert (= (and b!6844754 ((_ is Union!16671) (reg!17000 (regOne!33854 (regOne!33855 r!7292))))) b!6846700))

(declare-fun b!6846706 () Bool)

(declare-fun e!4128941 () Bool)

(declare-fun tp!1875532 () Bool)

(declare-fun tp!1875533 () Bool)

(assert (=> b!6846706 (= e!4128941 (and tp!1875532 tp!1875533))))

(assert (=> b!6844747 (= tp!1874596 e!4128941)))

(assert (= (and b!6844747 ((_ is Cons!66188) (exprs!6555 (h!72637 (t!380056 (t!380056 zl!343)))))) b!6846706))

(declare-fun b!6846710 () Bool)

(declare-fun e!4128943 () Bool)

(declare-fun tp!1875534 () Bool)

(declare-fun tp!1875536 () Bool)

(assert (=> b!6846710 (= e!4128943 (and tp!1875534 tp!1875536))))

(declare-fun b!6846709 () Bool)

(assert (=> b!6846709 (= e!4128943 tp_is_empty!42595)))

(declare-fun b!6846711 () Bool)

(declare-fun tp!1875535 () Bool)

(assert (=> b!6846711 (= e!4128943 tp!1875535)))

(assert (=> b!6844722 (= tp!1874564 e!4128943)))

(declare-fun b!6846712 () Bool)

(declare-fun tp!1875537 () Bool)

(declare-fun tp!1875538 () Bool)

(assert (=> b!6846712 (= e!4128943 (and tp!1875537 tp!1875538))))

(assert (= (and b!6844722 ((_ is ElementMatch!16671) (regOne!33854 (reg!17000 (reg!17000 r!7292))))) b!6846709))

(assert (= (and b!6844722 ((_ is Concat!25516) (regOne!33854 (reg!17000 (reg!17000 r!7292))))) b!6846710))

(assert (= (and b!6844722 ((_ is Star!16671) (regOne!33854 (reg!17000 (reg!17000 r!7292))))) b!6846711))

(assert (= (and b!6844722 ((_ is Union!16671) (regOne!33854 (reg!17000 (reg!17000 r!7292))))) b!6846712))

(declare-fun b!6846718 () Bool)

(declare-fun e!4128945 () Bool)

(declare-fun tp!1875544 () Bool)

(declare-fun tp!1875546 () Bool)

(assert (=> b!6846718 (= e!4128945 (and tp!1875544 tp!1875546))))

(declare-fun b!6846717 () Bool)

(assert (=> b!6846717 (= e!4128945 tp_is_empty!42595)))

(declare-fun b!6846719 () Bool)

(declare-fun tp!1875545 () Bool)

(assert (=> b!6846719 (= e!4128945 tp!1875545)))

(assert (=> b!6844722 (= tp!1874566 e!4128945)))

(declare-fun b!6846720 () Bool)

(declare-fun tp!1875547 () Bool)

(declare-fun tp!1875548 () Bool)

(assert (=> b!6846720 (= e!4128945 (and tp!1875547 tp!1875548))))

(assert (= (and b!6844722 ((_ is ElementMatch!16671) (regTwo!33854 (reg!17000 (reg!17000 r!7292))))) b!6846717))

(assert (= (and b!6844722 ((_ is Concat!25516) (regTwo!33854 (reg!17000 (reg!17000 r!7292))))) b!6846718))

(assert (= (and b!6844722 ((_ is Star!16671) (regTwo!33854 (reg!17000 (reg!17000 r!7292))))) b!6846719))

(assert (= (and b!6844722 ((_ is Union!16671) (regTwo!33854 (reg!17000 (reg!17000 r!7292))))) b!6846720))

(declare-fun b!6846726 () Bool)

(declare-fun e!4128947 () Bool)

(declare-fun tp!1875554 () Bool)

(declare-fun tp!1875556 () Bool)

(assert (=> b!6846726 (= e!4128947 (and tp!1875554 tp!1875556))))

(declare-fun b!6846725 () Bool)

(assert (=> b!6846725 (= e!4128947 tp_is_empty!42595)))

(declare-fun b!6846727 () Bool)

(declare-fun tp!1875555 () Bool)

(assert (=> b!6846727 (= e!4128947 tp!1875555)))

(assert (=> b!6844669 (= tp!1874496 e!4128947)))

(declare-fun b!6846728 () Bool)

(declare-fun tp!1875557 () Bool)

(declare-fun tp!1875558 () Bool)

(assert (=> b!6846728 (= e!4128947 (and tp!1875557 tp!1875558))))

(assert (= (and b!6844669 ((_ is ElementMatch!16671) (h!72636 (exprs!6555 (h!72637 (t!380056 zl!343)))))) b!6846725))

(assert (= (and b!6844669 ((_ is Concat!25516) (h!72636 (exprs!6555 (h!72637 (t!380056 zl!343)))))) b!6846726))

(assert (= (and b!6844669 ((_ is Star!16671) (h!72636 (exprs!6555 (h!72637 (t!380056 zl!343)))))) b!6846727))

(assert (= (and b!6844669 ((_ is Union!16671) (h!72636 (exprs!6555 (h!72637 (t!380056 zl!343)))))) b!6846728))

(declare-fun b!6846733 () Bool)

(declare-fun e!4128949 () Bool)

(declare-fun tp!1875564 () Bool)

(declare-fun tp!1875565 () Bool)

(assert (=> b!6846733 (= e!4128949 (and tp!1875564 tp!1875565))))

(assert (=> b!6844669 (= tp!1874497 e!4128949)))

(assert (= (and b!6844669 ((_ is Cons!66188) (t!380055 (exprs!6555 (h!72637 (t!380056 zl!343)))))) b!6846733))

(declare-fun b!6846735 () Bool)

(declare-fun e!4128950 () Bool)

(declare-fun tp!1875566 () Bool)

(declare-fun tp!1875568 () Bool)

(assert (=> b!6846735 (= e!4128950 (and tp!1875566 tp!1875568))))

(declare-fun b!6846734 () Bool)

(assert (=> b!6846734 (= e!4128950 tp_is_empty!42595)))

(declare-fun b!6846736 () Bool)

(declare-fun tp!1875567 () Bool)

(assert (=> b!6846736 (= e!4128950 tp!1875567)))

(assert (=> b!6844697 (= tp!1874531 e!4128950)))

(declare-fun b!6846737 () Bool)

(declare-fun tp!1875569 () Bool)

(declare-fun tp!1875570 () Bool)

(assert (=> b!6846737 (= e!4128950 (and tp!1875569 tp!1875570))))

(assert (= (and b!6844697 ((_ is ElementMatch!16671) (regOne!33855 (regTwo!33854 (regTwo!33855 r!7292))))) b!6846734))

(assert (= (and b!6844697 ((_ is Concat!25516) (regOne!33855 (regTwo!33854 (regTwo!33855 r!7292))))) b!6846735))

(assert (= (and b!6844697 ((_ is Star!16671) (regOne!33855 (regTwo!33854 (regTwo!33855 r!7292))))) b!6846736))

(assert (= (and b!6844697 ((_ is Union!16671) (regOne!33855 (regTwo!33854 (regTwo!33855 r!7292))))) b!6846737))

(declare-fun b!6846744 () Bool)

(declare-fun e!4128953 () Bool)

(declare-fun tp!1875578 () Bool)

(declare-fun tp!1875580 () Bool)

(assert (=> b!6846744 (= e!4128953 (and tp!1875578 tp!1875580))))

(declare-fun b!6846743 () Bool)

(assert (=> b!6846743 (= e!4128953 tp_is_empty!42595)))

(declare-fun b!6846745 () Bool)

(declare-fun tp!1875579 () Bool)

(assert (=> b!6846745 (= e!4128953 tp!1875579)))

(assert (=> b!6844697 (= tp!1874532 e!4128953)))

(declare-fun b!6846746 () Bool)

(declare-fun tp!1875581 () Bool)

(declare-fun tp!1875582 () Bool)

(assert (=> b!6846746 (= e!4128953 (and tp!1875581 tp!1875582))))

(assert (= (and b!6844697 ((_ is ElementMatch!16671) (regTwo!33855 (regTwo!33854 (regTwo!33855 r!7292))))) b!6846743))

(assert (= (and b!6844697 ((_ is Concat!25516) (regTwo!33855 (regTwo!33854 (regTwo!33855 r!7292))))) b!6846744))

(assert (= (and b!6844697 ((_ is Star!16671) (regTwo!33855 (regTwo!33854 (regTwo!33855 r!7292))))) b!6846745))

(assert (= (and b!6844697 ((_ is Union!16671) (regTwo!33855 (regTwo!33854 (regTwo!33855 r!7292))))) b!6846746))

(declare-fun b!6846752 () Bool)

(declare-fun e!4128955 () Bool)

(declare-fun tp!1875588 () Bool)

(declare-fun tp!1875590 () Bool)

(assert (=> b!6846752 (= e!4128955 (and tp!1875588 tp!1875590))))

(declare-fun b!6846751 () Bool)

(assert (=> b!6846751 (= e!4128955 tp_is_empty!42595)))

(declare-fun b!6846753 () Bool)

(declare-fun tp!1875589 () Bool)

(assert (=> b!6846753 (= e!4128955 tp!1875589)))

(assert (=> b!6844689 (= tp!1874521 e!4128955)))

(declare-fun b!6846754 () Bool)

(declare-fun tp!1875591 () Bool)

(declare-fun tp!1875592 () Bool)

(assert (=> b!6846754 (= e!4128955 (and tp!1875591 tp!1875592))))

(assert (= (and b!6844689 ((_ is ElementMatch!16671) (regOne!33855 (regTwo!33855 (regTwo!33855 r!7292))))) b!6846751))

(assert (= (and b!6844689 ((_ is Concat!25516) (regOne!33855 (regTwo!33855 (regTwo!33855 r!7292))))) b!6846752))

(assert (= (and b!6844689 ((_ is Star!16671) (regOne!33855 (regTwo!33855 (regTwo!33855 r!7292))))) b!6846753))

(assert (= (and b!6844689 ((_ is Union!16671) (regOne!33855 (regTwo!33855 (regTwo!33855 r!7292))))) b!6846754))

(declare-fun b!6846760 () Bool)

(declare-fun e!4128957 () Bool)

(declare-fun tp!1875598 () Bool)

(declare-fun tp!1875600 () Bool)

(assert (=> b!6846760 (= e!4128957 (and tp!1875598 tp!1875600))))

(declare-fun b!6846759 () Bool)

(assert (=> b!6846759 (= e!4128957 tp_is_empty!42595)))

(declare-fun b!6846761 () Bool)

(declare-fun tp!1875599 () Bool)

(assert (=> b!6846761 (= e!4128957 tp!1875599)))

(assert (=> b!6844689 (= tp!1874522 e!4128957)))

(declare-fun b!6846762 () Bool)

(declare-fun tp!1875601 () Bool)

(declare-fun tp!1875602 () Bool)

(assert (=> b!6846762 (= e!4128957 (and tp!1875601 tp!1875602))))

(assert (= (and b!6844689 ((_ is ElementMatch!16671) (regTwo!33855 (regTwo!33855 (regTwo!33855 r!7292))))) b!6846759))

(assert (= (and b!6844689 ((_ is Concat!25516) (regTwo!33855 (regTwo!33855 (regTwo!33855 r!7292))))) b!6846760))

(assert (= (and b!6844689 ((_ is Star!16671) (regTwo!33855 (regTwo!33855 (regTwo!33855 r!7292))))) b!6846761))

(assert (= (and b!6844689 ((_ is Union!16671) (regTwo!33855 (regTwo!33855 (regTwo!33855 r!7292))))) b!6846762))

(declare-fun b!6846764 () Bool)

(declare-fun e!4128958 () Bool)

(declare-fun tp!1875603 () Bool)

(declare-fun tp!1875605 () Bool)

(assert (=> b!6846764 (= e!4128958 (and tp!1875603 tp!1875605))))

(declare-fun b!6846763 () Bool)

(assert (=> b!6846763 (= e!4128958 tp_is_empty!42595)))

(declare-fun b!6846765 () Bool)

(declare-fun tp!1875604 () Bool)

(assert (=> b!6846765 (= e!4128958 tp!1875604)))

(assert (=> b!6844663 (= tp!1874487 e!4128958)))

(declare-fun b!6846766 () Bool)

(declare-fun tp!1875606 () Bool)

(declare-fun tp!1875607 () Bool)

(assert (=> b!6846766 (= e!4128958 (and tp!1875606 tp!1875607))))

(assert (= (and b!6844663 ((_ is ElementMatch!16671) (reg!17000 (regOne!33854 (regTwo!33854 r!7292))))) b!6846763))

(assert (= (and b!6844663 ((_ is Concat!25516) (reg!17000 (regOne!33854 (regTwo!33854 r!7292))))) b!6846764))

(assert (= (and b!6844663 ((_ is Star!16671) (reg!17000 (regOne!33854 (regTwo!33854 r!7292))))) b!6846765))

(assert (= (and b!6844663 ((_ is Union!16671) (reg!17000 (regOne!33854 (regTwo!33854 r!7292))))) b!6846766))

(declare-fun b!6846768 () Bool)

(declare-fun e!4128959 () Bool)

(declare-fun tp!1875608 () Bool)

(declare-fun tp!1875610 () Bool)

(assert (=> b!6846768 (= e!4128959 (and tp!1875608 tp!1875610))))

(declare-fun b!6846767 () Bool)

(assert (=> b!6846767 (= e!4128959 tp_is_empty!42595)))

(declare-fun b!6846769 () Bool)

(declare-fun tp!1875609 () Bool)

(assert (=> b!6846769 (= e!4128959 tp!1875609)))

(assert (=> b!6844758 (= tp!1874609 e!4128959)))

(declare-fun b!6846770 () Bool)

(declare-fun tp!1875611 () Bool)

(declare-fun tp!1875612 () Bool)

(assert (=> b!6846770 (= e!4128959 (and tp!1875611 tp!1875612))))

(assert (= (and b!6844758 ((_ is ElementMatch!16671) (reg!17000 (regTwo!33854 (regOne!33855 r!7292))))) b!6846767))

(assert (= (and b!6844758 ((_ is Concat!25516) (reg!17000 (regTwo!33854 (regOne!33855 r!7292))))) b!6846768))

(assert (= (and b!6844758 ((_ is Star!16671) (reg!17000 (regTwo!33854 (regOne!33855 r!7292))))) b!6846769))

(assert (= (and b!6844758 ((_ is Union!16671) (reg!17000 (regTwo!33854 (regOne!33855 r!7292))))) b!6846770))

(declare-fun b!6846776 () Bool)

(declare-fun e!4128961 () Bool)

(declare-fun tp!1875623 () Bool)

(assert (=> b!6846776 (= e!4128961 (and tp_is_empty!42595 tp!1875623))))

(assert (=> b!6844656 (= tp!1874480 e!4128961)))

(assert (= (and b!6844656 ((_ is Cons!66190) (t!380057 (t!380057 (t!380057 s!2326))))) b!6846776))

(declare-fun b!6846781 () Bool)

(declare-fun e!4128963 () Bool)

(declare-fun tp!1875624 () Bool)

(declare-fun tp!1875626 () Bool)

(assert (=> b!6846781 (= e!4128963 (and tp!1875624 tp!1875626))))

(declare-fun b!6846780 () Bool)

(assert (=> b!6846780 (= e!4128963 tp_is_empty!42595)))

(declare-fun b!6846782 () Bool)

(declare-fun tp!1875625 () Bool)

(assert (=> b!6846782 (= e!4128963 tp!1875625)))

(assert (=> b!6844749 (= tp!1874598 e!4128963)))

(declare-fun b!6846783 () Bool)

(declare-fun tp!1875627 () Bool)

(declare-fun tp!1875628 () Bool)

(assert (=> b!6846783 (= e!4128963 (and tp!1875627 tp!1875628))))

(assert (= (and b!6844749 ((_ is ElementMatch!16671) (regOne!33854 (reg!17000 (regOne!33855 r!7292))))) b!6846780))

(assert (= (and b!6844749 ((_ is Concat!25516) (regOne!33854 (reg!17000 (regOne!33855 r!7292))))) b!6846781))

(assert (= (and b!6844749 ((_ is Star!16671) (regOne!33854 (reg!17000 (regOne!33855 r!7292))))) b!6846782))

(assert (= (and b!6844749 ((_ is Union!16671) (regOne!33854 (reg!17000 (regOne!33855 r!7292))))) b!6846783))

(declare-fun b!6846789 () Bool)

(declare-fun e!4128965 () Bool)

(declare-fun tp!1875634 () Bool)

(declare-fun tp!1875636 () Bool)

(assert (=> b!6846789 (= e!4128965 (and tp!1875634 tp!1875636))))

(declare-fun b!6846788 () Bool)

(assert (=> b!6846788 (= e!4128965 tp_is_empty!42595)))

(declare-fun b!6846790 () Bool)

(declare-fun tp!1875635 () Bool)

(assert (=> b!6846790 (= e!4128965 tp!1875635)))

(assert (=> b!6844749 (= tp!1874600 e!4128965)))

(declare-fun b!6846791 () Bool)

(declare-fun tp!1875637 () Bool)

(declare-fun tp!1875638 () Bool)

(assert (=> b!6846791 (= e!4128965 (and tp!1875637 tp!1875638))))

(assert (= (and b!6844749 ((_ is ElementMatch!16671) (regTwo!33854 (reg!17000 (regOne!33855 r!7292))))) b!6846788))

(assert (= (and b!6844749 ((_ is Concat!25516) (regTwo!33854 (reg!17000 (regOne!33855 r!7292))))) b!6846789))

(assert (= (and b!6844749 ((_ is Star!16671) (regTwo!33854 (reg!17000 (regOne!33855 r!7292))))) b!6846790))

(assert (= (and b!6844749 ((_ is Union!16671) (regTwo!33854 (reg!17000 (regOne!33855 r!7292))))) b!6846791))

(declare-fun b!6846797 () Bool)

(declare-fun e!4128967 () Bool)

(declare-fun tp!1875644 () Bool)

(declare-fun tp!1875646 () Bool)

(assert (=> b!6846797 (= e!4128967 (and tp!1875644 tp!1875646))))

(declare-fun b!6846796 () Bool)

(assert (=> b!6846796 (= e!4128967 tp_is_empty!42595)))

(declare-fun b!6846798 () Bool)

(declare-fun tp!1875645 () Bool)

(assert (=> b!6846798 (= e!4128967 tp!1875645)))

(assert (=> b!6844680 (= tp!1874509 e!4128967)))

(declare-fun b!6846799 () Bool)

(declare-fun tp!1875647 () Bool)

(declare-fun tp!1875648 () Bool)

(assert (=> b!6846799 (= e!4128967 (and tp!1875647 tp!1875648))))

(assert (= (and b!6844680 ((_ is ElementMatch!16671) (reg!17000 (reg!17000 (regTwo!33855 r!7292))))) b!6846796))

(assert (= (and b!6844680 ((_ is Concat!25516) (reg!17000 (reg!17000 (regTwo!33855 r!7292))))) b!6846797))

(assert (= (and b!6844680 ((_ is Star!16671) (reg!17000 (reg!17000 (regTwo!33855 r!7292))))) b!6846798))

(assert (= (and b!6844680 ((_ is Union!16671) (reg!17000 (reg!17000 (regTwo!33855 r!7292))))) b!6846799))

(declare-fun b!6846805 () Bool)

(declare-fun e!4128969 () Bool)

(declare-fun tp!1875654 () Bool)

(declare-fun tp!1875656 () Bool)

(assert (=> b!6846805 (= e!4128969 (and tp!1875654 tp!1875656))))

(declare-fun b!6846804 () Bool)

(assert (=> b!6846804 (= e!4128969 tp_is_empty!42595)))

(declare-fun b!6846806 () Bool)

(declare-fun tp!1875655 () Bool)

(assert (=> b!6846806 (= e!4128969 tp!1875655)))

(assert (=> b!6844671 (= tp!1874498 e!4128969)))

(declare-fun b!6846807 () Bool)

(declare-fun tp!1875657 () Bool)

(declare-fun tp!1875658 () Bool)

(assert (=> b!6846807 (= e!4128969 (and tp!1875657 tp!1875658))))

(assert (= (and b!6844671 ((_ is ElementMatch!16671) (regOne!33854 (regOne!33855 (regOne!33855 r!7292))))) b!6846804))

(assert (= (and b!6844671 ((_ is Concat!25516) (regOne!33854 (regOne!33855 (regOne!33855 r!7292))))) b!6846805))

(assert (= (and b!6844671 ((_ is Star!16671) (regOne!33854 (regOne!33855 (regOne!33855 r!7292))))) b!6846806))

(assert (= (and b!6844671 ((_ is Union!16671) (regOne!33854 (regOne!33855 (regOne!33855 r!7292))))) b!6846807))

(declare-fun b!6846811 () Bool)

(declare-fun e!4128972 () Bool)

(declare-fun tp!1875661 () Bool)

(declare-fun tp!1875663 () Bool)

(assert (=> b!6846811 (= e!4128972 (and tp!1875661 tp!1875663))))

(declare-fun b!6846810 () Bool)

(assert (=> b!6846810 (= e!4128972 tp_is_empty!42595)))

(declare-fun b!6846812 () Bool)

(declare-fun tp!1875662 () Bool)

(assert (=> b!6846812 (= e!4128972 tp!1875662)))

(assert (=> b!6844671 (= tp!1874500 e!4128972)))

(declare-fun b!6846813 () Bool)

(declare-fun tp!1875664 () Bool)

(declare-fun tp!1875665 () Bool)

(assert (=> b!6846813 (= e!4128972 (and tp!1875664 tp!1875665))))

(assert (= (and b!6844671 ((_ is ElementMatch!16671) (regTwo!33854 (regOne!33855 (regOne!33855 r!7292))))) b!6846810))

(assert (= (and b!6844671 ((_ is Concat!25516) (regTwo!33854 (regOne!33855 (regOne!33855 r!7292))))) b!6846811))

(assert (= (and b!6844671 ((_ is Star!16671) (regTwo!33854 (regOne!33855 (regOne!33855 r!7292))))) b!6846812))

(assert (= (and b!6844671 ((_ is Union!16671) (regTwo!33854 (regOne!33855 (regOne!33855 r!7292))))) b!6846813))

(declare-fun b!6846819 () Bool)

(declare-fun e!4128974 () Bool)

(declare-fun tp!1875671 () Bool)

(declare-fun tp!1875673 () Bool)

(assert (=> b!6846819 (= e!4128974 (and tp!1875671 tp!1875673))))

(declare-fun b!6846818 () Bool)

(assert (=> b!6846818 (= e!4128974 tp_is_empty!42595)))

(declare-fun b!6846820 () Bool)

(declare-fun tp!1875672 () Bool)

(assert (=> b!6846820 (= e!4128974 tp!1875672)))

(assert (=> b!6844767 (= tp!1874621 e!4128974)))

(declare-fun b!6846821 () Bool)

(declare-fun tp!1875674 () Bool)

(declare-fun tp!1875675 () Bool)

(assert (=> b!6846821 (= e!4128974 (and tp!1875674 tp!1875675))))

(assert (= (and b!6844767 ((_ is ElementMatch!16671) (regOne!33855 (regOne!33855 (regOne!33854 r!7292))))) b!6846818))

(assert (= (and b!6844767 ((_ is Concat!25516) (regOne!33855 (regOne!33855 (regOne!33854 r!7292))))) b!6846819))

(assert (= (and b!6844767 ((_ is Star!16671) (regOne!33855 (regOne!33855 (regOne!33854 r!7292))))) b!6846820))

(assert (= (and b!6844767 ((_ is Union!16671) (regOne!33855 (regOne!33855 (regOne!33854 r!7292))))) b!6846821))

(declare-fun b!6846827 () Bool)

(declare-fun e!4128976 () Bool)

(declare-fun tp!1875681 () Bool)

(declare-fun tp!1875683 () Bool)

(assert (=> b!6846827 (= e!4128976 (and tp!1875681 tp!1875683))))

(declare-fun b!6846826 () Bool)

(assert (=> b!6846826 (= e!4128976 tp_is_empty!42595)))

(declare-fun b!6846828 () Bool)

(declare-fun tp!1875682 () Bool)

(assert (=> b!6846828 (= e!4128976 tp!1875682)))

(assert (=> b!6844767 (= tp!1874622 e!4128976)))

(declare-fun b!6846829 () Bool)

(declare-fun tp!1875684 () Bool)

(declare-fun tp!1875685 () Bool)

(assert (=> b!6846829 (= e!4128976 (and tp!1875684 tp!1875685))))

(assert (= (and b!6844767 ((_ is ElementMatch!16671) (regTwo!33855 (regOne!33855 (regOne!33854 r!7292))))) b!6846826))

(assert (= (and b!6844767 ((_ is Concat!25516) (regTwo!33855 (regOne!33855 (regOne!33854 r!7292))))) b!6846827))

(assert (= (and b!6844767 ((_ is Star!16671) (regTwo!33855 (regOne!33855 (regOne!33854 r!7292))))) b!6846828))

(assert (= (and b!6844767 ((_ is Union!16671) (regTwo!33855 (regOne!33855 (regOne!33854 r!7292))))) b!6846829))

(declare-fun b!6846835 () Bool)

(declare-fun e!4128978 () Bool)

(declare-fun tp!1875691 () Bool)

(declare-fun tp!1875693 () Bool)

(assert (=> b!6846835 (= e!4128978 (and tp!1875691 tp!1875693))))

(declare-fun b!6846834 () Bool)

(assert (=> b!6846834 (= e!4128978 tp_is_empty!42595)))

(declare-fun b!6846836 () Bool)

(declare-fun tp!1875692 () Bool)

(assert (=> b!6846836 (= e!4128978 tp!1875692)))

(assert (=> b!6844708 (= tp!1874547 e!4128978)))

(declare-fun b!6846837 () Bool)

(declare-fun tp!1875694 () Bool)

(declare-fun tp!1875695 () Bool)

(assert (=> b!6846837 (= e!4128978 (and tp!1875694 tp!1875695))))

(assert (= (and b!6844708 ((_ is ElementMatch!16671) (regOne!33855 (regOne!33855 (regTwo!33854 r!7292))))) b!6846834))

(assert (= (and b!6844708 ((_ is Concat!25516) (regOne!33855 (regOne!33855 (regTwo!33854 r!7292))))) b!6846835))

(assert (= (and b!6844708 ((_ is Star!16671) (regOne!33855 (regOne!33855 (regTwo!33854 r!7292))))) b!6846836))

(assert (= (and b!6844708 ((_ is Union!16671) (regOne!33855 (regOne!33855 (regTwo!33854 r!7292))))) b!6846837))

(declare-fun b!6846843 () Bool)

(declare-fun e!4128980 () Bool)

(declare-fun tp!1875701 () Bool)

(declare-fun tp!1875703 () Bool)

(assert (=> b!6846843 (= e!4128980 (and tp!1875701 tp!1875703))))

(declare-fun b!6846842 () Bool)

(assert (=> b!6846842 (= e!4128980 tp_is_empty!42595)))

(declare-fun b!6846844 () Bool)

(declare-fun tp!1875702 () Bool)

(assert (=> b!6846844 (= e!4128980 tp!1875702)))

(assert (=> b!6844708 (= tp!1874548 e!4128980)))

(declare-fun b!6846845 () Bool)

(declare-fun tp!1875704 () Bool)

(declare-fun tp!1875705 () Bool)

(assert (=> b!6846845 (= e!4128980 (and tp!1875704 tp!1875705))))

(assert (= (and b!6844708 ((_ is ElementMatch!16671) (regTwo!33855 (regOne!33855 (regTwo!33854 r!7292))))) b!6846842))

(assert (= (and b!6844708 ((_ is Concat!25516) (regTwo!33855 (regOne!33855 (regTwo!33854 r!7292))))) b!6846843))

(assert (= (and b!6844708 ((_ is Star!16671) (regTwo!33855 (regOne!33855 (regTwo!33854 r!7292))))) b!6846844))

(assert (= (and b!6844708 ((_ is Union!16671) (regTwo!33855 (regOne!33855 (regTwo!33854 r!7292))))) b!6846845))

(declare-fun b!6846851 () Bool)

(declare-fun e!4128982 () Bool)

(declare-fun tp!1875711 () Bool)

(declare-fun tp!1875713 () Bool)

(assert (=> b!6846851 (= e!4128982 (and tp!1875711 tp!1875713))))

(declare-fun b!6846850 () Bool)

(assert (=> b!6846850 (= e!4128982 tp_is_empty!42595)))

(declare-fun b!6846852 () Bool)

(declare-fun tp!1875712 () Bool)

(assert (=> b!6846852 (= e!4128982 tp!1875712)))

(assert (=> b!6844765 (= tp!1874618 e!4128982)))

(declare-fun b!6846853 () Bool)

(declare-fun tp!1875714 () Bool)

(declare-fun tp!1875715 () Bool)

(assert (=> b!6846853 (= e!4128982 (and tp!1875714 tp!1875715))))

(assert (= (and b!6844765 ((_ is ElementMatch!16671) (regOne!33854 (regOne!33855 (regOne!33854 r!7292))))) b!6846850))

(assert (= (and b!6844765 ((_ is Concat!25516) (regOne!33854 (regOne!33855 (regOne!33854 r!7292))))) b!6846851))

(assert (= (and b!6844765 ((_ is Star!16671) (regOne!33854 (regOne!33855 (regOne!33854 r!7292))))) b!6846852))

(assert (= (and b!6844765 ((_ is Union!16671) (regOne!33854 (regOne!33855 (regOne!33854 r!7292))))) b!6846853))

(declare-fun b!6846859 () Bool)

(declare-fun e!4128984 () Bool)

(declare-fun tp!1875721 () Bool)

(declare-fun tp!1875723 () Bool)

(assert (=> b!6846859 (= e!4128984 (and tp!1875721 tp!1875723))))

(declare-fun b!6846858 () Bool)

(assert (=> b!6846858 (= e!4128984 tp_is_empty!42595)))

(declare-fun b!6846860 () Bool)

(declare-fun tp!1875722 () Bool)

(assert (=> b!6846860 (= e!4128984 tp!1875722)))

(assert (=> b!6844765 (= tp!1874620 e!4128984)))

(declare-fun b!6846861 () Bool)

(declare-fun tp!1875724 () Bool)

(declare-fun tp!1875725 () Bool)

(assert (=> b!6846861 (= e!4128984 (and tp!1875724 tp!1875725))))

(assert (= (and b!6844765 ((_ is ElementMatch!16671) (regTwo!33854 (regOne!33855 (regOne!33854 r!7292))))) b!6846858))

(assert (= (and b!6844765 ((_ is Concat!25516) (regTwo!33854 (regOne!33855 (regOne!33854 r!7292))))) b!6846859))

(assert (= (and b!6844765 ((_ is Star!16671) (regTwo!33854 (regOne!33855 (regOne!33854 r!7292))))) b!6846860))

(assert (= (and b!6844765 ((_ is Union!16671) (regTwo!33854 (regOne!33855 (regOne!33854 r!7292))))) b!6846861))

(declare-fun b!6846867 () Bool)

(declare-fun e!4128986 () Bool)

(declare-fun tp!1875731 () Bool)

(declare-fun tp!1875733 () Bool)

(assert (=> b!6846867 (= e!4128986 (and tp!1875731 tp!1875733))))

(declare-fun b!6846866 () Bool)

(assert (=> b!6846866 (= e!4128986 tp_is_empty!42595)))

(declare-fun b!6846868 () Bool)

(declare-fun tp!1875732 () Bool)

(assert (=> b!6846868 (= e!4128986 tp!1875732)))

(assert (=> b!6844695 (= tp!1874528 e!4128986)))

(declare-fun b!6846869 () Bool)

(declare-fun tp!1875734 () Bool)

(declare-fun tp!1875735 () Bool)

(assert (=> b!6846869 (= e!4128986 (and tp!1875734 tp!1875735))))

(assert (= (and b!6844695 ((_ is ElementMatch!16671) (regOne!33854 (regTwo!33854 (regTwo!33855 r!7292))))) b!6846866))

(assert (= (and b!6844695 ((_ is Concat!25516) (regOne!33854 (regTwo!33854 (regTwo!33855 r!7292))))) b!6846867))

(assert (= (and b!6844695 ((_ is Star!16671) (regOne!33854 (regTwo!33854 (regTwo!33855 r!7292))))) b!6846868))

(assert (= (and b!6844695 ((_ is Union!16671) (regOne!33854 (regTwo!33854 (regTwo!33855 r!7292))))) b!6846869))

(declare-fun b!6846875 () Bool)

(declare-fun e!4128988 () Bool)

(declare-fun tp!1875741 () Bool)

(declare-fun tp!1875743 () Bool)

(assert (=> b!6846875 (= e!4128988 (and tp!1875741 tp!1875743))))

(declare-fun b!6846874 () Bool)

(assert (=> b!6846874 (= e!4128988 tp_is_empty!42595)))

(declare-fun b!6846876 () Bool)

(declare-fun tp!1875742 () Bool)

(assert (=> b!6846876 (= e!4128988 tp!1875742)))

(assert (=> b!6844695 (= tp!1874530 e!4128988)))

(declare-fun b!6846877 () Bool)

(declare-fun tp!1875744 () Bool)

(declare-fun tp!1875745 () Bool)

(assert (=> b!6846877 (= e!4128988 (and tp!1875744 tp!1875745))))

(assert (= (and b!6844695 ((_ is ElementMatch!16671) (regTwo!33854 (regTwo!33854 (regTwo!33855 r!7292))))) b!6846874))

(assert (= (and b!6844695 ((_ is Concat!25516) (regTwo!33854 (regTwo!33854 (regTwo!33855 r!7292))))) b!6846875))

(assert (= (and b!6844695 ((_ is Star!16671) (regTwo!33854 (regTwo!33854 (regTwo!33855 r!7292))))) b!6846876))

(assert (= (and b!6844695 ((_ is Union!16671) (regTwo!33854 (regTwo!33854 (regTwo!33855 r!7292))))) b!6846877))

(declare-fun b!6846883 () Bool)

(declare-fun e!4128990 () Bool)

(declare-fun tp!1875751 () Bool)

(declare-fun tp!1875753 () Bool)

(assert (=> b!6846883 (= e!4128990 (and tp!1875751 tp!1875753))))

(declare-fun b!6846882 () Bool)

(assert (=> b!6846882 (= e!4128990 tp_is_empty!42595)))

(declare-fun b!6846884 () Bool)

(declare-fun tp!1875752 () Bool)

(assert (=> b!6846884 (= e!4128990 tp!1875752)))

(assert (=> b!6844687 (= tp!1874518 e!4128990)))

(declare-fun b!6846885 () Bool)

(declare-fun tp!1875754 () Bool)

(declare-fun tp!1875755 () Bool)

(assert (=> b!6846885 (= e!4128990 (and tp!1875754 tp!1875755))))

(assert (= (and b!6844687 ((_ is ElementMatch!16671) (regOne!33854 (regTwo!33855 (regTwo!33855 r!7292))))) b!6846882))

(assert (= (and b!6844687 ((_ is Concat!25516) (regOne!33854 (regTwo!33855 (regTwo!33855 r!7292))))) b!6846883))

(assert (= (and b!6844687 ((_ is Star!16671) (regOne!33854 (regTwo!33855 (regTwo!33855 r!7292))))) b!6846884))

(assert (= (and b!6844687 ((_ is Union!16671) (regOne!33854 (regTwo!33855 (regTwo!33855 r!7292))))) b!6846885))

(declare-fun b!6846891 () Bool)

(declare-fun e!4128992 () Bool)

(declare-fun tp!1875761 () Bool)

(declare-fun tp!1875763 () Bool)

(assert (=> b!6846891 (= e!4128992 (and tp!1875761 tp!1875763))))

(declare-fun b!6846890 () Bool)

(assert (=> b!6846890 (= e!4128992 tp_is_empty!42595)))

(declare-fun b!6846892 () Bool)

(declare-fun tp!1875762 () Bool)

(assert (=> b!6846892 (= e!4128992 tp!1875762)))

(assert (=> b!6844687 (= tp!1874520 e!4128992)))

(declare-fun b!6846893 () Bool)

(declare-fun tp!1875764 () Bool)

(declare-fun tp!1875765 () Bool)

(assert (=> b!6846893 (= e!4128992 (and tp!1875764 tp!1875765))))

(assert (= (and b!6844687 ((_ is ElementMatch!16671) (regTwo!33854 (regTwo!33855 (regTwo!33855 r!7292))))) b!6846890))

(assert (= (and b!6844687 ((_ is Concat!25516) (regTwo!33854 (regTwo!33855 (regTwo!33855 r!7292))))) b!6846891))

(assert (= (and b!6844687 ((_ is Star!16671) (regTwo!33854 (regTwo!33855 (regTwo!33855 r!7292))))) b!6846892))

(assert (= (and b!6844687 ((_ is Union!16671) (regTwo!33854 (regTwo!33855 (regTwo!33855 r!7292))))) b!6846893))

(declare-fun b_lambda!258275 () Bool)

(assert (= b_lambda!258267 (or d!2151427 b_lambda!258275)))

(declare-fun bs!1830268 () Bool)

(declare-fun d!2152245 () Bool)

(assert (= bs!1830268 (and d!2152245 d!2151427)))

(assert (=> bs!1830268 (= (dynLambda!26449 lambda!387035 (h!72636 (t!380055 lt!2455650))) (validRegex!8407 (h!72636 (t!380055 lt!2455650))))))

(declare-fun m!7586998 () Bool)

(assert (=> bs!1830268 m!7586998))

(assert (=> b!6845881 d!2152245))

(declare-fun b_lambda!258277 () Bool)

(assert (= b_lambda!258225 (or b!6843348 b_lambda!258277)))

(declare-fun bs!1830269 () Bool)

(declare-fun d!2152247 () Bool)

(assert (= bs!1830269 (and d!2152247 b!6843348)))

(declare-fun res!2795039 () Bool)

(declare-fun e!4129002 () Bool)

(assert (=> bs!1830269 (=> (not res!2795039) (not e!4129002))))

(assert (=> bs!1830269 (= res!2795039 (validRegex!8407 (h!72636 (t!380055 (t!380055 lt!2455560)))))))

(assert (=> bs!1830269 (= (dynLambda!26449 lambda!386978 (h!72636 (t!380055 (t!380055 lt!2455560)))) e!4129002)))

(declare-fun b!6846927 () Bool)

(assert (=> b!6846927 (= e!4129002 (matchR!8854 (h!72636 (t!380055 (t!380055 lt!2455560))) s!2326))))

(assert (= (and bs!1830269 res!2795039) b!6846927))

(declare-fun m!7587000 () Bool)

(assert (=> bs!1830269 m!7587000))

(declare-fun m!7587002 () Bool)

(assert (=> b!6846927 m!7587002))

(assert (=> b!6845072 d!2152247))

(declare-fun b_lambda!258279 () Bool)

(assert (= b_lambda!258255 (or d!2151655 b_lambda!258279)))

(declare-fun bs!1830270 () Bool)

(declare-fun d!2152249 () Bool)

(assert (= bs!1830270 (and d!2152249 d!2151655)))

(assert (=> bs!1830270 (= (dynLambda!26449 lambda!387078 (h!72636 (unfocusZipperList!2088 zl!343))) (validRegex!8407 (h!72636 (unfocusZipperList!2088 zl!343))))))

(declare-fun m!7587004 () Bool)

(assert (=> bs!1830270 m!7587004))

(assert (=> b!6845762 d!2152249))

(declare-fun b_lambda!258281 () Bool)

(assert (= b_lambda!258205 (or d!2151591 b_lambda!258281)))

(declare-fun bs!1830271 () Bool)

(declare-fun d!2152251 () Bool)

(assert (= bs!1830271 (and d!2152251 d!2151591)))

(assert (=> bs!1830271 (= (dynLambda!26449 lambda!387063 (h!72636 (exprs!6555 (h!72637 zl!343)))) (validRegex!8407 (h!72636 (exprs!6555 (h!72637 zl!343)))))))

(assert (=> bs!1830271 m!7585778))

(assert (=> b!6844866 d!2152251))

(declare-fun b_lambda!258283 () Bool)

(assert (= b_lambda!258227 (or d!2151425 b_lambda!258283)))

(declare-fun bs!1830272 () Bool)

(declare-fun d!2152253 () Bool)

(assert (= bs!1830272 (and d!2152253 d!2151425)))

(assert (=> bs!1830272 (= (dynLambda!26449 lambda!387031 (h!72636 (t!380055 lt!2455560))) (validRegex!8407 (h!72636 (t!380055 lt!2455560))))))

(assert (=> bs!1830272 m!7585772))

(assert (=> b!6845093 d!2152253))

(declare-fun b_lambda!258285 () Bool)

(assert (= b_lambda!258251 (or b!6843333 b_lambda!258285)))

(declare-fun bs!1830273 () Bool)

(declare-fun d!2152255 () Bool)

(assert (= bs!1830273 (and d!2152255 b!6843333)))

(assert (=> bs!1830273 (= (dynLambda!26448 lambda!386979 (h!72637 (t!380056 (t!380056 zl!343)))) (= (generalisedConcat!2264 (exprs!6555 (h!72637 (t!380056 (t!380056 zl!343))))) lt!2455564))))

(assert (=> bs!1830273 m!7586732))

(assert (=> b!6845717 d!2152255))

(declare-fun b_lambda!258287 () Bool)

(assert (= b_lambda!258243 (or d!2151599 b_lambda!258287)))

(declare-fun bs!1830274 () Bool)

(declare-fun d!2152257 () Bool)

(assert (= bs!1830274 (and d!2152257 d!2151599)))

(assert (=> bs!1830274 (= (dynLambda!26449 lambda!387065 (h!72636 (exprs!6555 lt!2455629))) (validRegex!8407 (h!72636 (exprs!6555 lt!2455629))))))

(declare-fun m!7587006 () Bool)

(assert (=> bs!1830274 m!7587006))

(assert (=> b!6845521 d!2152257))

(declare-fun b_lambda!258289 () Bool)

(assert (= b_lambda!258207 (or d!2151675 b_lambda!258289)))

(declare-fun bs!1830275 () Bool)

(declare-fun d!2152259 () Bool)

(assert (= bs!1830275 (and d!2152259 d!2151675)))

(assert (=> bs!1830275 (= (dynLambda!26449 lambda!387079 (h!72636 (exprs!6555 (h!72637 (t!380056 zl!343))))) (validRegex!8407 (h!72636 (exprs!6555 (h!72637 (t!380056 zl!343))))))))

(declare-fun m!7587008 () Bool)

(assert (=> bs!1830275 m!7587008))

(assert (=> b!6844868 d!2152259))

(declare-fun b_lambda!258291 () Bool)

(assert (= b_lambda!258259 (or d!2151419 b_lambda!258291)))

(declare-fun bs!1830276 () Bool)

(declare-fun d!2152261 () Bool)

(assert (= bs!1830276 (and d!2152261 d!2151419)))

(assert (=> bs!1830276 (= (dynLambda!26449 lambda!387023 (h!72636 (t!380055 (exprs!6555 setElem!47059)))) (validRegex!8407 (h!72636 (t!380055 (exprs!6555 setElem!47059)))))))

(declare-fun m!7587010 () Bool)

(assert (=> bs!1830276 m!7587010))

(assert (=> b!6845775 d!2152261))

(declare-fun b_lambda!258293 () Bool)

(assert (= b_lambda!258219 (or d!2151621 b_lambda!258293)))

(declare-fun bs!1830277 () Bool)

(declare-fun d!2152263 () Bool)

(assert (= bs!1830277 (and d!2152263 d!2151621)))

(assert (=> bs!1830277 (= (dynLambda!26449 lambda!387070 (h!72636 lt!2455560)) (not (dynLambda!26449 lambda!387032 (h!72636 lt!2455560))))))

(declare-fun b_lambda!258311 () Bool)

(assert (=> (not b_lambda!258311) (not bs!1830277)))

(declare-fun m!7587012 () Bool)

(assert (=> bs!1830277 m!7587012))

(assert (=> b!6845041 d!2152263))

(declare-fun b_lambda!258295 () Bool)

(assert (= b_lambda!258237 (or d!2151609 b_lambda!258295)))

(declare-fun bs!1830278 () Bool)

(declare-fun d!2152265 () Bool)

(assert (= bs!1830278 (and d!2152265 d!2151609)))

(assert (=> bs!1830278 (= (dynLambda!26448 lambda!387066 (h!72637 zl!343)) (not (dynLambda!26448 lambda!387019 (h!72637 zl!343))))))

(declare-fun b_lambda!258313 () Bool)

(assert (=> (not b_lambda!258313) (not bs!1830278)))

(declare-fun m!7587014 () Bool)

(assert (=> bs!1830278 m!7587014))

(assert (=> b!6845327 d!2152265))

(declare-fun b_lambda!258297 () Bool)

(assert (= b_lambda!258221 (or d!2151423 b_lambda!258297)))

(declare-fun bs!1830279 () Bool)

(declare-fun d!2152267 () Bool)

(assert (= bs!1830279 (and d!2152267 d!2151423)))

(assert (=> bs!1830279 (= (dynLambda!26449 lambda!387026 (h!72636 (t!380055 lt!2455560))) (not (dynLambda!26449 lambda!386978 (h!72636 (t!380055 lt!2455560)))))))

(declare-fun b_lambda!258315 () Bool)

(assert (=> (not b_lambda!258315) (not bs!1830279)))

(assert (=> bs!1830279 m!7585618))

(assert (=> b!6845067 d!2152267))

(declare-fun b_lambda!258299 () Bool)

(assert (= b_lambda!258257 (or d!2151593 b_lambda!258299)))

(declare-fun bs!1830280 () Bool)

(declare-fun d!2152269 () Bool)

(assert (= bs!1830280 (and d!2152269 d!2151593)))

(assert (=> bs!1830280 (= (dynLambda!26449 lambda!387064 (h!72636 lt!2455681)) (validRegex!8407 (h!72636 lt!2455681)))))

(declare-fun m!7587016 () Bool)

(assert (=> bs!1830280 m!7587016))

(assert (=> b!6845773 d!2152269))

(declare-fun b_lambda!258301 () Bool)

(assert (= b_lambda!258217 (or d!2151417 b_lambda!258301)))

(declare-fun bs!1830281 () Bool)

(declare-fun d!2152271 () Bool)

(assert (= bs!1830281 (and d!2152271 d!2151417)))

(assert (=> bs!1830281 (= (dynLambda!26449 lambda!387022 (h!72636 (t!380055 (exprs!6555 (h!72637 zl!343))))) (validRegex!8407 (h!72636 (t!380055 (exprs!6555 (h!72637 zl!343))))))))

(declare-fun m!7587018 () Bool)

(assert (=> bs!1830281 m!7587018))

(assert (=> b!6844979 d!2152271))

(declare-fun b_lambda!258303 () Bool)

(assert (= b_lambda!258249 (or b!6843333 b_lambda!258303)))

(declare-fun bs!1830282 () Bool)

(declare-fun d!2152273 () Bool)

(assert (= bs!1830282 (and d!2152273 b!6843333)))

(assert (=> bs!1830282 (= (dynLambda!26448 lambda!386979 lt!2455755) (= (generalisedConcat!2264 (exprs!6555 lt!2455755)) lt!2455564))))

(declare-fun m!7587020 () Bool)

(assert (=> bs!1830282 m!7587020))

(assert (=> d!2152095 d!2152273))

(declare-fun b_lambda!258305 () Bool)

(assert (= b_lambda!258213 (or d!2151587 b_lambda!258305)))

(declare-fun bs!1830283 () Bool)

(declare-fun d!2152275 () Bool)

(assert (= bs!1830283 (and d!2152275 d!2151587)))

(assert (=> bs!1830283 (= (dynLambda!26449 lambda!387060 (h!72636 (exprs!6555 setElem!47065))) (validRegex!8407 (h!72636 (exprs!6555 setElem!47065))))))

(declare-fun m!7587022 () Bool)

(assert (=> bs!1830283 m!7587022))

(assert (=> b!6844916 d!2152275))

(declare-fun b_lambda!258307 () Bool)

(assert (= b_lambda!258223 (or b!6843348 b_lambda!258307)))

(declare-fun bs!1830284 () Bool)

(declare-fun d!2152277 () Bool)

(assert (= bs!1830284 (and d!2152277 b!6843348)))

(declare-fun res!2795040 () Bool)

(declare-fun e!4129012 () Bool)

(assert (=> bs!1830284 (=> (not res!2795040) (not e!4129012))))

(assert (=> bs!1830284 (= res!2795040 (validRegex!8407 lt!2455721))))

(assert (=> bs!1830284 (= (dynLambda!26449 lambda!386978 lt!2455721) e!4129012)))

(declare-fun b!6846964 () Bool)

(assert (=> b!6846964 (= e!4129012 (matchR!8854 lt!2455721 s!2326))))

(assert (= (and bs!1830284 res!2795040) b!6846964))

(declare-fun m!7587024 () Bool)

(assert (=> bs!1830284 m!7587024))

(declare-fun m!7587026 () Bool)

(assert (=> b!6846964 m!7587026))

(assert (=> d!2151857 d!2152277))

(declare-fun b_lambda!258309 () Bool)

(assert (= b_lambda!258239 (or d!2151401 b_lambda!258309)))

(declare-fun bs!1830285 () Bool)

(declare-fun d!2152279 () Bool)

(assert (= bs!1830285 (and d!2152279 d!2151401)))

(assert (=> bs!1830285 (= (dynLambda!26448 lambda!387016 (h!72637 (t!380056 zl!343))) (not (dynLambda!26448 lambda!386979 (h!72637 (t!380056 zl!343)))))))

(declare-fun b_lambda!258317 () Bool)

(assert (=> (not b_lambda!258317) (not bs!1830285)))

(assert (=> bs!1830285 m!7585580))

(assert (=> b!6845401 d!2152279))

(check-sat (not b!6846578) (not d!2152007) (not b!6846186) (not b_lambda!258293) (not b!6845954) (not b!6845575) (not b!6845972) (not b!6844898) (not b!6845597) (not b!6846269) (not b!6846845) (not bs!1830271) (not b!6846563) (not b!6846157) (not b!6846347) (not b!6846363) (not b!6845967) (not b!6846754) (not b!6846314) (not b!6845363) (not b!6846494) (not b!6845716) (not d!2152043) (not b!6845125) (not b!6844952) (not b!6845703) (not bs!1830273) (not b!6846348) (not bm!623513) (not b!6846124) (not bm!623348) (not b!6846215) (not bm!623402) (not b!6845692) (not bm!623449) (not bm!623334) (not b!6846066) (not b!6846133) (not b!6845987) (not b!6846611) (not b!6845194) (not b!6846037) (not bm!623395) (not b!6846003) (not b!6845701) (not b!6846601) (not bm!623532) (not b!6845774) (not b!6844962) (not b!6844882) (not b!6846099) (not b!6846514) (not b!6846298) (not b!6844929) (not b!6845018) (not bm!623498) (not b!6846100) (not b!6846074) (not bm!623491) (not b!6846375) (not b!6846884) (not d!2151889) (not b!6846781) (not d!2151787) (not b!6845926) (not b!6846211) (not bm!623344) (not b!6846694) (not b!6846183) (not bm!623354) (not b!6845977) (not bm!623387) (not b!6846485) (not b!6846246) (not d!2151751) (not b!6846239) (not b!6846869) (not b!6846143) (not b_lambda!258289) (not b!6846546) (not b!6846706) (not b!6846727) (not d!2151729) (not b!6846579) (not b!6846332) (not b!6846016) (not bm!623547) (not bm!623381) (not b!6845524) (not b!6846067) (not d!2151785) (not d!2151905) (not b!6846085) (not b!6846736) (not b!6846106) (not bm!623339) (not b!6846752) (not b!6846692) (not b!6846104) (not b!6844972) (not b!6846098) (not b!6846441) (not b!6846070) (not bm!623548) (not b!6846577) (not b!6846726) (not b!6846555) (not bm!623359) (not b!6846843) (not b!6845052) (not b!6844925) (not b!6846700) (not b!6846683) (not b!6846515) (not b!6845258) (not b!6845071) (not b!6846861) (not b!6846002) (not b!6846860) (not b!6845933) (not b!6846324) (not b!6846461) (not b!6846047) (not b!6846877) (not b!6846052) (not b!6846964) (not b!6846255) (not b!6846630) (not b!6846837) (not b!6846595) (not b!6846123) (not b!6846088) (not b!6845124) (not b!6846561) (not b!6846102) (not b!6845361) (not b!6846657) (not b!6845198) (not b!6846284) (not bm!623509) (not b_lambda!258175) (not b!6845895) (not b!6846039) (not b!6846859) (not b!6844833) (not b!6845981) (not b_lambda!258177) (not b!6846000) (not b!6845365) (not b!6845050) (not b!6845957) (not b!6845402) (not bm!623333) (not b!6846282) (not b!6846107) (not b_lambda!258295) (not b_lambda!258187) (not b!6844867) (not b!6846635) (not b_lambda!258195) (not b!6845094) (not b!6846118) (not b!6846377) (not b!6846207) (not b!6844869) (not b!6846353) (not b!6845923) (not b!6846230) (not b!6846017) (not bm!623356) (not b!6845843) (not b!6845971) (not b!6846594) (not b!6846137) (not b!6846159) (not b!6845998) (not b!6846217) (not b!6846828) (not b!6846782) (not b!6844960) (not b!6846666) (not b!6846201) (not bm!623497) (not b_lambda!258311) (not d!2152001) (not bm!623536) (not b!6846075) (not b!6846813) (not d!2151919) (not b!6846238) (not bm!623353) (not b!6845932) (not b!6846229) (not b!6846893) (not b!6845253) (not b!6846875) (not b!6845472) (not b!6845969) (not b!6846253) (not d!2151849) (not b!6846043) (not b!6845100) (not d!2152123) (not b!6846145) (not b!6845548) (not b!6846811) (not b!6846149) (not b!6845035) (not b!6844918) (not b!6845936) (not b!6846073) (not d!2151737) (not b!6846035) (not b!6846493) (not b_lambda!258303) (not b!6845953) (not b!6846502) (not b!6846420) (not b!6846426) (not b!6844870) (not b!6846643) (not b!6846853) (not b!6846262) (not bm!623363) (not b!6844919) (not d!2151791) (not b!6845011) (not b!6846892) (not bs!1830274) (not b!6846203) (not b!6845962) (not b!6845019) (not b!6845522) (not b!6846761) (not b!6846148) (not bm!623427) (not b!6845982) (not b!6846403) (not b!6846626) (not bm!623473) (not b!6846412) (not b!6846927) (not b!6844877) (not b!6846468) (not b!6846537) (not b!6846386) (not b!6845054) (not b!6844831) (not b!6846071) (not b!6846135) (not b!6846419) (not b!6845978) (not b!6846797) (not b!6845704) (not b!6846395) (not b!6846144) (not b!6845042) (not d!2151845) (not b!6844963) (not b!6846231) (not b!6846140) (not b_lambda!258197) (not b!6845414) (not bm!623369) (not b!6846776) (not b!6846883) (not b!6846202) (not b!6846658) (not b!6844827) (not bm!623553) (not b!6845005) (not bm!623559) (not d!2151861) (not d!2151987) (not d!2152097) (not b!6846182) (not b!6846279) (not b!6844931) (not b!6846365) (not b_lambda!258305) (not b_lambda!258313) (not b!6846006) (not b!6845261) (not b!6845513) (not b!6846685) (not b!6845199) (not b!6845546) tp_is_empty!42595 (not b!6846210) (not d!2151857) (not b!6845215) (not b!6845232) (not b!6846090) (not bm!623412) (not bm!623520) (not b!6846356) (not b_lambda!258283) (not b!6845928) (not b!6845656) (not b!6846190) (not b!6846641) (not b_lambda!258275) (not b!6846806) (not b!6846094) (not b!6845631) (not b!6844958) (not b!6846198) (not bm!623393) (not bm!623398) (not b!6846819) (not b!6846330) (not b!6846185) (not b!6846136) (not b!6846373) (not b!6846844) (not b!6846213) (not b!6846783) (not b!6845196) (not b!6845961) (not b!6846805) (not b!6846547) (not b!6846554) (not b_lambda!258281) (not b!6844834) (not b!6845869) (not d!2151843) (not b!6846382) (not b!6845986) (not b!6846484) (not b!6846562) (not b!6846132) (not b!6846153) (not b!6846627) (not b!6845328) (not b!6845963) (not b!6846155) (not b!6845718) (not b!6845044) (not bm!623440) (not b!6846364) (not d!2151883) (not b!6845355) (not b!6846531) (not b!6845354) (not b!6846486) (not d!2152127) (not b!6846069) (not bm!623560) (not bm!623345) (not b!6844937) (not b!6846530) (not b!6846448) (not b!6845668) (not b!6846593) (not bm!623368) (not b!6846263) (not b!6844908) (not b!6846469) (not b!6845015) (not b!6846187) (not b!6845924) (not b!6846222) (not b!6846569) (not b!6846254) (not b!6846681) (not d!2151835) (not bs!1830283) (not b!6844917) (not bm!623502) (not b!6845068) (not b!6846127) (not d!2151801) (not d!2152153) (not b!6844826) (not b!6846004) (not b!6846103) (not bm!623496) (not b!6845366) (not b!6846063) (not b!6846021) (not b!6845940) (not b!6846587) (not b!6846010) (not b!6846571) (not bm!623507) (not b!6846501) (not b!6846610) (not b!6846674) (not b!6846820) (not bs!1830269) (not b!6846163) (not bm!623462) (not b!6846505) (not b!6846050) (not b!6844879) (not b!6845069) (not b!6845238) (not b!6846506) (not b!6846650) (not b!6844856) (not b!6846181) (not b!6846195) (not b!6845186) (not d!2151819) (not b!6846154) (not b!6845465) (not b!6845234) (not b!6845756) (not b!6846553) (not b!6845550) (not b!6845699) (not b!6846628) (not bm!623409) (not b!6846852) (not b!6846128) (not bm!623472) (not b_lambda!258279) (not b!6845155) (not b!6846084) (not b!6846851) (not d!2151747) (not b!6846737) (not b!6846357) (not bm!623501) (not bm!623360) (not b!6846292) (not b!6846733) (not b!6846745) (not b!6846022) (not b!6846545) (not b_lambda!258299) (not b!6846271) (not b!6846891) (not b!6846110) (not b!6844835) (not b_lambda!258101) (not b!6845434) (not b!6844830) (not b!6846315) (not b!6846402) (not bm!623341) (not b!6846619) (not b!6845540) (not b!6845620) (not b!6845930) (not b!6845911) (not d!2151893) (not b!6845882) (not b!6846765) (not b!6846829) (not b!6846283) (not b!6846355) (not b!6846164) (not d!2151959) (not b!6846194) (not b!6846092) (not b!6846434) (not bm!623413) (not b!6845613) (not bs!1830280) (not b!6845073) (not b!6845192) (not bm!623492) (not b!6846126) (not bm!623382) (not b!6846278) (not b!6845955) (not b!6846130) (not b!6846193) (not d!2151771) (not b!6846821) (not b!6846427) (not b_lambda!258099) (not b!6846158) (not d!2151777) (not bm!623379) (not b!6845257) (not b!6846316) (not b!6846323) (not d!2151855) (not b_lambda!258317) (not bm!623335) (not b!6846744) (not bs!1830282) (not bm!623465) (not b!6846042) (not b_lambda!258309) (not b_lambda!258301) (not b!6846711) (not b!6846585) (not b!6846642) (not d!2151979) (not b_lambda!258171) (not b!6846046) (not b!6846219) (not b!6846799) (not b!6846768) (not b!6846454) (not b!6846131) (not b!6846790) (not b!6845396) (not b!6846290) (not b!6845062) (not b!6846436) (not b!6845814) (not b!6845677) (not b!6846667) (not b!6846699) (not b!6846048) (not b!6845719) (not b!6846719) (not b!6846770) (not b!6846836) (not b!6846435) (not b!6846651) (not b!6846340) (not b!6845012) (not b!6846018) (not bm!623372) (not b!6846245) (not b!6845193) (not b!6846277) (not b_lambda!258277) (not b!6845958) (not b!6846620) (not d!2152031) (not bs!1830281) (not d!2152095) (not bm!623346) (not d!2151929) (not b!6846764) (not b!6846665) (not b!6845539) (not b!6846199) (not d!2152067) (not b!6846331) (not b!6846521) (not bm!623512) (not b!6845163) (not b!6846299) (not b!6846673) (not b!6846746) (not bm!623571) (not b!6846476) (not b!6844881) (not b!6846197) (not d!2151829) (not b!6846044) (not bm!623515) (not b!6846769) (not b!6845959) (not b!6846062) (not b!6846020) (not bm!623461) (not b!6846322) (not b!6845983) (not b!6846089) (not b!6846835) (not bs!1830272) (not b!6845016) (not b!6846460) (not b!6846394) (not b!6846404) (not bm!623430) (not b!6846812) (not b_lambda!258287) (not b!6846065) (not b!6846868) (not b!6846618) (not bm!623367) (not b!6845630) (not bm!623531) (not b!6846753) (not b!6846147) (not b!6846011) (not b!6846247) (not b!6846470) (not bm!623386) (not b!6846221) (not bm!623439) (not b!6846209) (not b!6846205) (not b!6846439) (not b!6846649) (not b!6846695) (not b!6846428) (not b!6844951) (not b!6846168) (not bm!623399) (not b!6846034) (not b!6845231) (not b!6846718) (not b!6846522) (not b!6846885) (not b_lambda!258307) (not b!6846766) (not b!6846477) (not b!6846388) (not b!6844988) (not bm!623503) (not b_lambda!258297) (not bm!623378) (not b!6846827) (not b_lambda!258181) (not b!6846440) (not b_lambda!258103) (not b!6846586) (not b!6846007) (not bm!623480) (not b!6846038) (not b!6846876) (not bm!623484) (not d!2151825) (not bm!623469) (not b!6846206) (not b!6845043) (not d!2151869) (not b!6846760) (not b!6845311) (not d!2151823) (not b!6845970) (not b!6846191) (not b!6846380) (not b!6845664) (not b!6846807) (not b!6846169) (not b!6846120) (not b_lambda!258315) (not bs!1830270) (not b!6846396) (not b_lambda!258105) (not b!6846223) (not b!6845262) (not bm!623482) (not b!6846141) (not b!6845260) (not b!6846798) (not b!6845942) (not b!6844927) (not d!2152051) (not b!6846570) (not b!6846115) (not b!6845780) (not b!6846523) (not b!6845020) (not b!6845842) (not bm!623566) (not b!6845929) (not b_lambda!258291) (not b!6845937) (not b!6846762) (not b!6846602) (not b!6846697) (not b!6846410) (not b!6846492) (not b!6846500) (not bs!1830268) (not b_lambda!258179) (not b!6846675) (not b!6844922) (not d!2152089) (not bm!623428) (not b!6846791) (not bm!623504) (not b!6846167) (not d!2151927) (not b!6844980) (not b!6846735) (not b!6845938) (not b!6846108) (not b!6846300) (not b!6846291) (not b!6845763) (not b!6845001) (not b!6846237) (not b!6846462) (not b!6846112) (not bm!623451) (not b!6845934) (not b!6845435) (not b!6845985) (not bs!1830276) (not d!2152053) (not b!6846867) (not b!6845999) (not bm!623485) (not bm!623499) (not b!6845200) (not b!6846418) (not b!6844871) (not b!6846720) (not d!2152183) (not b!6845776) (not bs!1830275) (not bm!623403) (not b!6846122) (not b!6846218) (not b!6846012) (not b!6846165) (not b_lambda!258185) (not bm!623468) (not d!2151903) (not b!6846478) (not b!6846339) (not b!6846609) (not b!6846710) (not b!6846051) (not b!6845941) (not b!6846261) (not b!6846539) (not bm!623572) (not b!6846659) (not b!6846507) (not bm!623565) (not b!6846789) (not bm!623466) (not b!6846270) (not b!6844923) (not b!6846189) (not b!6846603) (not bm!623362) (not b!6846008) (not setNonEmpty!47068) (not bm!623370) (not b_lambda!258173) (not b!6846379) (not b!6845055) (not b!6844860) (not bm!623410) (not b!6846449) (not b!6846033) (not b!6846111) (not b!6846119) (not b!6846116) (not b!6845254) (not b!6846139) (not b!6846411) (not b!6845722) (not b!6846338) (not b!6846529) (not b!6846346) (not b!6846538) (not b!6846712) (not b!6845087) (not bm!623444) (not b!6845480) (not b!6845966) (not bm!623552) (not b!6846086) (not b!6845556) (not b!6846040) (not b!6846513) (not b!6846387) (not d!2152143) (not bs!1830284) (not b!6845551) (not b!6845788) (not b!6845832) (not b!6846728) (not b!6845693) (not b_lambda!258183) (not b!6845973) (not d!2152161) (not b_lambda!258189) (not b!6846114) (not bm!623479) (not b!6845917) (not b!6845979) (not bm!623538) (not d!2152017) (not b!6846214) (not bm!623431) (not b_lambda!258285) (not b!6844926) (not b!6845965) (not b!6846093) (not d!2152069) (not b!6846447) (not bm!623516) (not d!2151973))
(check-sat)
