; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!411372 () Bool)

(assert start!411372)

(declare-fun b!4281427 () Bool)

(declare-fun e!2657946 () Bool)

(declare-fun tp_is_empty!23021 () Bool)

(declare-fun tp!1309446 () Bool)

(assert (=> b!4281427 (= e!2657946 (and tp_is_empty!23021 tp!1309446))))

(declare-fun b!4281425 () Bool)

(declare-fun res!1757336 () Bool)

(declare-fun e!2657947 () Bool)

(assert (=> b!4281425 (=> (not res!1757336) (not e!2657947))))

(declare-datatypes ((B!2873 0))(
  ( (B!2874 (val!15306 Int)) )
))
(declare-datatypes ((List!47515 0))(
  ( (Nil!47391) (Cons!47391 (h!52811 B!2873) (t!354104 List!47515)) )
))
(declare-fun l!2982 () List!47515)

(declare-fun i!813 () Int)

(get-info :version)

(assert (=> b!4281425 (= res!1757336 (and (not ((_ is Nil!47391) l!2982)) (= i!813 0)))))

(declare-fun b!4281424 () Bool)

(declare-fun res!1757335 () Bool)

(assert (=> b!4281424 (=> (not res!1757335) (not e!2657947))))

(declare-fun size!34727 (List!47515) Int)

(assert (=> b!4281424 (= res!1757335 (< i!813 (size!34727 l!2982)))))

(declare-fun res!1757337 () Bool)

(assert (=> start!411372 (=> (not res!1757337) (not e!2657947))))

(assert (=> start!411372 (= res!1757337 (>= i!813 0))))

(assert (=> start!411372 e!2657947))

(assert (=> start!411372 true))

(assert (=> start!411372 e!2657946))

(declare-fun b!4281426 () Bool)

(declare-fun drop!2173 (List!47515 Int) List!47515)

(assert (=> b!4281426 (= e!2657947 (= (drop!2173 l!2982 i!813) Nil!47391))))

(assert (= (and start!411372 res!1757337) b!4281424))

(assert (= (and b!4281424 res!1757335) b!4281425))

(assert (= (and b!4281425 res!1757336) b!4281426))

(assert (= (and start!411372 ((_ is Cons!47391) l!2982)) b!4281427))

(declare-fun m!4878935 () Bool)

(assert (=> b!4281424 m!4878935))

(declare-fun m!4878937 () Bool)

(assert (=> b!4281426 m!4878937))

(check-sat (not b!4281424) (not b!4281426) (not b!4281427) tp_is_empty!23021)
(check-sat)
(get-model)

(declare-fun d!1264716 () Bool)

(declare-fun lt!1515219 () Int)

(assert (=> d!1264716 (>= lt!1515219 0)))

(declare-fun e!2657953 () Int)

(assert (=> d!1264716 (= lt!1515219 e!2657953)))

(declare-fun c!729660 () Bool)

(assert (=> d!1264716 (= c!729660 ((_ is Nil!47391) l!2982))))

(assert (=> d!1264716 (= (size!34727 l!2982) lt!1515219)))

(declare-fun b!4281438 () Bool)

(assert (=> b!4281438 (= e!2657953 0)))

(declare-fun b!4281439 () Bool)

(assert (=> b!4281439 (= e!2657953 (+ 1 (size!34727 (t!354104 l!2982))))))

(assert (= (and d!1264716 c!729660) b!4281438))

(assert (= (and d!1264716 (not c!729660)) b!4281439))

(declare-fun m!4878941 () Bool)

(assert (=> b!4281439 m!4878941))

(assert (=> b!4281424 d!1264716))

(declare-fun b!4281490 () Bool)

(declare-fun e!2657982 () List!47515)

(assert (=> b!4281490 (= e!2657982 (drop!2173 (t!354104 l!2982) (- i!813 1)))))

(declare-fun d!1264720 () Bool)

(declare-fun e!2657985 () Bool)

(assert (=> d!1264720 e!2657985))

(declare-fun res!1757343 () Bool)

(assert (=> d!1264720 (=> (not res!1757343) (not e!2657985))))

(declare-fun lt!1515225 () List!47515)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7509 (List!47515) (InoxSet B!2873))

(assert (=> d!1264720 (= res!1757343 (= ((_ map implies) (content!7509 lt!1515225) (content!7509 l!2982)) ((as const (InoxSet B!2873)) true)))))

(declare-fun e!2657984 () List!47515)

(assert (=> d!1264720 (= lt!1515225 e!2657984)))

(declare-fun c!729684 () Bool)

(assert (=> d!1264720 (= c!729684 ((_ is Nil!47391) l!2982))))

(assert (=> d!1264720 (= (drop!2173 l!2982 i!813) lt!1515225)))

(declare-fun b!4281491 () Bool)

(declare-fun e!2657986 () Int)

(declare-fun e!2657983 () Int)

(assert (=> b!4281491 (= e!2657986 e!2657983)))

(declare-fun c!729681 () Bool)

(declare-fun call!294365 () Int)

(assert (=> b!4281491 (= c!729681 (>= i!813 call!294365))))

(declare-fun b!4281492 () Bool)

(assert (=> b!4281492 (= e!2657982 l!2982)))

(declare-fun b!4281493 () Bool)

(assert (=> b!4281493 (= e!2657986 call!294365)))

(declare-fun b!4281494 () Bool)

(assert (=> b!4281494 (= e!2657983 (- call!294365 i!813))))

(declare-fun bm!294360 () Bool)

(assert (=> bm!294360 (= call!294365 (size!34727 l!2982))))

(declare-fun b!4281495 () Bool)

(assert (=> b!4281495 (= e!2657985 (= (size!34727 lt!1515225) e!2657986))))

(declare-fun c!729683 () Bool)

(assert (=> b!4281495 (= c!729683 (<= i!813 0))))

(declare-fun b!4281496 () Bool)

(assert (=> b!4281496 (= e!2657984 Nil!47391)))

(declare-fun b!4281497 () Bool)

(assert (=> b!4281497 (= e!2657983 0)))

(declare-fun b!4281498 () Bool)

(assert (=> b!4281498 (= e!2657984 e!2657982)))

(declare-fun c!729682 () Bool)

(assert (=> b!4281498 (= c!729682 (<= i!813 0))))

(assert (= (and d!1264720 c!729684) b!4281496))

(assert (= (and d!1264720 (not c!729684)) b!4281498))

(assert (= (and b!4281498 c!729682) b!4281492))

(assert (= (and b!4281498 (not c!729682)) b!4281490))

(assert (= (and d!1264720 res!1757343) b!4281495))

(assert (= (and b!4281495 c!729683) b!4281493))

(assert (= (and b!4281495 (not c!729683)) b!4281491))

(assert (= (and b!4281491 c!729681) b!4281497))

(assert (= (and b!4281491 (not c!729681)) b!4281494))

(assert (= (or b!4281493 b!4281491 b!4281494) bm!294360))

(declare-fun m!4878951 () Bool)

(assert (=> b!4281490 m!4878951))

(declare-fun m!4878953 () Bool)

(assert (=> d!1264720 m!4878953))

(declare-fun m!4878955 () Bool)

(assert (=> d!1264720 m!4878955))

(assert (=> bm!294360 m!4878935))

(declare-fun m!4878957 () Bool)

(assert (=> b!4281495 m!4878957))

(assert (=> b!4281426 d!1264720))

(declare-fun b!4281503 () Bool)

(declare-fun e!2657989 () Bool)

(declare-fun tp!1309452 () Bool)

(assert (=> b!4281503 (= e!2657989 (and tp_is_empty!23021 tp!1309452))))

(assert (=> b!4281427 (= tp!1309446 e!2657989)))

(assert (= (and b!4281427 ((_ is Cons!47391) (t!354104 l!2982))) b!4281503))

(check-sat (not b!4281495) (not bm!294360) (not b!4281490) (not d!1264720) tp_is_empty!23021 (not b!4281503) (not b!4281439))
(check-sat)
