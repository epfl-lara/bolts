; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!521884 () Bool)

(assert start!521884)

(declare-fun b!4952417 () Bool)

(declare-fun res!2112845 () Bool)

(declare-fun e!3094221 () Bool)

(assert (=> b!4952417 (=> (not res!2112845) (not e!3094221))))

(declare-fun i!792 () Int)

(declare-datatypes ((B!3017 0))(
  ( (B!3018 (val!22978 Int)) )
))
(declare-datatypes ((List!57166 0))(
  ( (Nil!57042) (Cons!57042 (h!63490 B!3017) (t!367732 List!57166)) )
))
(declare-fun l!2976 () List!57166)

(declare-fun size!37870 (List!57166) Int)

(assert (=> b!4952417 (= res!2112845 (< i!792 (size!37870 l!2976)))))

(declare-fun b!4952418 () Bool)

(declare-fun res!2112846 () Bool)

(assert (=> b!4952418 (=> (not res!2112846) (not e!3094221))))

(get-info :version)

(assert (=> b!4952418 (= res!2112846 (and (not ((_ is Nil!57042) l!2976)) (not (= i!792 0)) (>= (- i!792 1) 0)))))

(declare-fun b!4952419 () Bool)

(declare-fun drop!2304 (List!57166 Int) List!57166)

(assert (=> b!4952419 (= e!3094221 (not (not (= (drop!2304 l!2976 i!792) Nil!57042))))))

(declare-fun head!10623 (List!57166) B!3017)

(declare-fun apply!13862 (List!57166 Int) B!3017)

(assert (=> b!4952419 (= (head!10623 (drop!2304 (t!367732 l!2976) (- i!792 1))) (apply!13862 (t!367732 l!2976) (- i!792 1)))))

(declare-datatypes ((Unit!147939 0))(
  ( (Unit!147940) )
))
(declare-fun lt!2044119 () Unit!147939)

(declare-fun lemmaDropApply!1358 (List!57166 Int) Unit!147939)

(assert (=> b!4952419 (= lt!2044119 (lemmaDropApply!1358 (t!367732 l!2976) (- i!792 1)))))

(declare-fun b!4952420 () Bool)

(declare-fun e!3094222 () Bool)

(declare-fun tp_is_empty!36235 () Bool)

(declare-fun tp!1388421 () Bool)

(assert (=> b!4952420 (= e!3094222 (and tp_is_empty!36235 tp!1388421))))

(declare-fun b!4952421 () Bool)

(declare-fun res!2112847 () Bool)

(assert (=> b!4952421 (=> (not res!2112847) (not e!3094221))))

(assert (=> b!4952421 (= res!2112847 (< (- i!792 1) (size!37870 (t!367732 l!2976))))))

(declare-fun res!2112848 () Bool)

(assert (=> start!521884 (=> (not res!2112848) (not e!3094221))))

(assert (=> start!521884 (= res!2112848 (>= i!792 0))))

(assert (=> start!521884 e!3094221))

(assert (=> start!521884 true))

(assert (=> start!521884 e!3094222))

(assert (= (and start!521884 res!2112848) b!4952417))

(assert (= (and b!4952417 res!2112845) b!4952418))

(assert (= (and b!4952418 res!2112846) b!4952421))

(assert (= (and b!4952421 res!2112847) b!4952419))

(assert (= (and start!521884 ((_ is Cons!57042) l!2976)) b!4952420))

(declare-fun m!5977430 () Bool)

(assert (=> b!4952417 m!5977430))

(declare-fun m!5977432 () Bool)

(assert (=> b!4952419 m!5977432))

(declare-fun m!5977434 () Bool)

(assert (=> b!4952419 m!5977434))

(declare-fun m!5977436 () Bool)

(assert (=> b!4952419 m!5977436))

(assert (=> b!4952419 m!5977434))

(declare-fun m!5977438 () Bool)

(assert (=> b!4952419 m!5977438))

(declare-fun m!5977440 () Bool)

(assert (=> b!4952419 m!5977440))

(declare-fun m!5977442 () Bool)

(assert (=> b!4952421 m!5977442))

(check-sat tp_is_empty!36235 (not b!4952420) (not b!4952417) (not b!4952419) (not b!4952421))
(check-sat)
(get-model)

(declare-fun d!1594964 () Bool)

(declare-fun e!3094236 () Bool)

(assert (=> d!1594964 e!3094236))

(declare-fun res!2112851 () Bool)

(assert (=> d!1594964 (=> (not res!2112851) (not e!3094236))))

(declare-fun lt!2044122 () List!57166)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10168 (List!57166) (InoxSet B!3017))

(assert (=> d!1594964 (= res!2112851 (= ((_ map implies) (content!10168 lt!2044122) (content!10168 l!2976)) ((as const (InoxSet B!3017)) true)))))

(declare-fun e!3094237 () List!57166)

(assert (=> d!1594964 (= lt!2044122 e!3094237)))

(declare-fun c!845718 () Bool)

(assert (=> d!1594964 (= c!845718 ((_ is Nil!57042) l!2976))))

(assert (=> d!1594964 (= (drop!2304 l!2976 i!792) lt!2044122)))

(declare-fun b!4952440 () Bool)

(declare-fun e!3094234 () List!57166)

(assert (=> b!4952440 (= e!3094234 l!2976)))

(declare-fun b!4952441 () Bool)

(declare-fun e!3094235 () Int)

(assert (=> b!4952441 (= e!3094235 0)))

(declare-fun b!4952442 () Bool)

(assert (=> b!4952442 (= e!3094237 Nil!57042)))

(declare-fun b!4952443 () Bool)

(declare-fun e!3094233 () Int)

(declare-fun call!345831 () Int)

(assert (=> b!4952443 (= e!3094233 call!345831)))

(declare-fun b!4952444 () Bool)

(assert (=> b!4952444 (= e!3094233 e!3094235)))

(declare-fun c!845720 () Bool)

(assert (=> b!4952444 (= c!845720 (>= i!792 call!345831))))

(declare-fun b!4952445 () Bool)

(assert (=> b!4952445 (= e!3094237 e!3094234)))

(declare-fun c!845719 () Bool)

(assert (=> b!4952445 (= c!845719 (<= i!792 0))))

(declare-fun bm!345826 () Bool)

(assert (=> bm!345826 (= call!345831 (size!37870 l!2976))))

(declare-fun b!4952446 () Bool)

(assert (=> b!4952446 (= e!3094236 (= (size!37870 lt!2044122) e!3094233))))

(declare-fun c!845717 () Bool)

(assert (=> b!4952446 (= c!845717 (<= i!792 0))))

(declare-fun b!4952447 () Bool)

(assert (=> b!4952447 (= e!3094234 (drop!2304 (t!367732 l!2976) (- i!792 1)))))

(declare-fun b!4952448 () Bool)

(assert (=> b!4952448 (= e!3094235 (- call!345831 i!792))))

(assert (= (and d!1594964 c!845718) b!4952442))

(assert (= (and d!1594964 (not c!845718)) b!4952445))

(assert (= (and b!4952445 c!845719) b!4952440))

(assert (= (and b!4952445 (not c!845719)) b!4952447))

(assert (= (and d!1594964 res!2112851) b!4952446))

(assert (= (and b!4952446 c!845717) b!4952443))

(assert (= (and b!4952446 (not c!845717)) b!4952444))

(assert (= (and b!4952444 c!845720) b!4952441))

(assert (= (and b!4952444 (not c!845720)) b!4952448))

(assert (= (or b!4952443 b!4952444 b!4952448) bm!345826))

(declare-fun m!5977444 () Bool)

(assert (=> d!1594964 m!5977444))

(declare-fun m!5977446 () Bool)

(assert (=> d!1594964 m!5977446))

(assert (=> bm!345826 m!5977430))

(declare-fun m!5977448 () Bool)

(assert (=> b!4952446 m!5977448))

(assert (=> b!4952447 m!5977434))

(assert (=> b!4952419 d!1594964))

(declare-fun d!1594968 () Bool)

(assert (=> d!1594968 (= (head!10623 (drop!2304 (t!367732 l!2976) (- i!792 1))) (apply!13862 (t!367732 l!2976) (- i!792 1)))))

(declare-fun lt!2044127 () Unit!147939)

(declare-fun choose!36608 (List!57166 Int) Unit!147939)

(assert (=> d!1594968 (= lt!2044127 (choose!36608 (t!367732 l!2976) (- i!792 1)))))

(declare-fun e!3094246 () Bool)

(assert (=> d!1594968 e!3094246))

(declare-fun res!2112856 () Bool)

(assert (=> d!1594968 (=> (not res!2112856) (not e!3094246))))

(assert (=> d!1594968 (= res!2112856 (>= (- i!792 1) 0))))

(assert (=> d!1594968 (= (lemmaDropApply!1358 (t!367732 l!2976) (- i!792 1)) lt!2044127)))

(declare-fun b!4952463 () Bool)

(assert (=> b!4952463 (= e!3094246 (< (- i!792 1) (size!37870 (t!367732 l!2976))))))

(assert (= (and d!1594968 res!2112856) b!4952463))

(assert (=> d!1594968 m!5977434))

(assert (=> d!1594968 m!5977434))

(assert (=> d!1594968 m!5977436))

(assert (=> d!1594968 m!5977438))

(declare-fun m!5977450 () Bool)

(assert (=> d!1594968 m!5977450))

(assert (=> b!4952463 m!5977442))

(assert (=> b!4952419 d!1594968))

(declare-fun d!1594970 () Bool)

(declare-fun lt!2044130 () B!3017)

(declare-fun contains!19503 (List!57166 B!3017) Bool)

(assert (=> d!1594970 (contains!19503 (t!367732 l!2976) lt!2044130)))

(declare-fun e!3094255 () B!3017)

(assert (=> d!1594970 (= lt!2044130 e!3094255)))

(declare-fun c!845731 () Bool)

(assert (=> d!1594970 (= c!845731 (= (- i!792 1) 0))))

(declare-fun e!3094256 () Bool)

(assert (=> d!1594970 e!3094256))

(declare-fun res!2112859 () Bool)

(assert (=> d!1594970 (=> (not res!2112859) (not e!3094256))))

(assert (=> d!1594970 (= res!2112859 (<= 0 (- i!792 1)))))

(assert (=> d!1594970 (= (apply!13862 (t!367732 l!2976) (- i!792 1)) lt!2044130)))

(declare-fun b!4952476 () Bool)

(assert (=> b!4952476 (= e!3094256 (< (- i!792 1) (size!37870 (t!367732 l!2976))))))

(declare-fun b!4952477 () Bool)

(assert (=> b!4952477 (= e!3094255 (head!10623 (t!367732 l!2976)))))

(declare-fun b!4952478 () Bool)

(declare-fun tail!9757 (List!57166) List!57166)

(assert (=> b!4952478 (= e!3094255 (apply!13862 (tail!9757 (t!367732 l!2976)) (- (- i!792 1) 1)))))

(assert (= (and d!1594970 res!2112859) b!4952476))

(assert (= (and d!1594970 c!845731) b!4952477))

(assert (= (and d!1594970 (not c!845731)) b!4952478))

(declare-fun m!5977452 () Bool)

(assert (=> d!1594970 m!5977452))

(assert (=> b!4952476 m!5977442))

(declare-fun m!5977454 () Bool)

(assert (=> b!4952477 m!5977454))

(declare-fun m!5977456 () Bool)

(assert (=> b!4952478 m!5977456))

(assert (=> b!4952478 m!5977456))

(declare-fun m!5977458 () Bool)

(assert (=> b!4952478 m!5977458))

(assert (=> b!4952419 d!1594970))

(declare-fun d!1594972 () Bool)

(assert (=> d!1594972 (= (head!10623 (drop!2304 (t!367732 l!2976) (- i!792 1))) (h!63490 (drop!2304 (t!367732 l!2976) (- i!792 1))))))

(assert (=> b!4952419 d!1594972))

(declare-fun d!1594974 () Bool)

(declare-fun e!3094260 () Bool)

(assert (=> d!1594974 e!3094260))

(declare-fun res!2112860 () Bool)

(assert (=> d!1594974 (=> (not res!2112860) (not e!3094260))))

(declare-fun lt!2044131 () List!57166)

(assert (=> d!1594974 (= res!2112860 (= ((_ map implies) (content!10168 lt!2044131) (content!10168 (t!367732 l!2976))) ((as const (InoxSet B!3017)) true)))))

(declare-fun e!3094261 () List!57166)

(assert (=> d!1594974 (= lt!2044131 e!3094261)))

(declare-fun c!845733 () Bool)

(assert (=> d!1594974 (= c!845733 ((_ is Nil!57042) (t!367732 l!2976)))))

(assert (=> d!1594974 (= (drop!2304 (t!367732 l!2976) (- i!792 1)) lt!2044131)))

(declare-fun b!4952479 () Bool)

(declare-fun e!3094258 () List!57166)

(assert (=> b!4952479 (= e!3094258 (t!367732 l!2976))))

(declare-fun b!4952480 () Bool)

(declare-fun e!3094259 () Int)

(assert (=> b!4952480 (= e!3094259 0)))

(declare-fun b!4952481 () Bool)

(assert (=> b!4952481 (= e!3094261 Nil!57042)))

(declare-fun b!4952482 () Bool)

(declare-fun e!3094257 () Int)

(declare-fun call!345834 () Int)

(assert (=> b!4952482 (= e!3094257 call!345834)))

(declare-fun b!4952483 () Bool)

(assert (=> b!4952483 (= e!3094257 e!3094259)))

(declare-fun c!845735 () Bool)

(assert (=> b!4952483 (= c!845735 (>= (- i!792 1) call!345834))))

(declare-fun b!4952484 () Bool)

(assert (=> b!4952484 (= e!3094261 e!3094258)))

(declare-fun c!845734 () Bool)

(assert (=> b!4952484 (= c!845734 (<= (- i!792 1) 0))))

(declare-fun bm!345829 () Bool)

(assert (=> bm!345829 (= call!345834 (size!37870 (t!367732 l!2976)))))

(declare-fun b!4952485 () Bool)

(assert (=> b!4952485 (= e!3094260 (= (size!37870 lt!2044131) e!3094257))))

(declare-fun c!845732 () Bool)

(assert (=> b!4952485 (= c!845732 (<= (- i!792 1) 0))))

(declare-fun b!4952486 () Bool)

(assert (=> b!4952486 (= e!3094258 (drop!2304 (t!367732 (t!367732 l!2976)) (- (- i!792 1) 1)))))

(declare-fun b!4952487 () Bool)

(assert (=> b!4952487 (= e!3094259 (- call!345834 (- i!792 1)))))

(assert (= (and d!1594974 c!845733) b!4952481))

(assert (= (and d!1594974 (not c!845733)) b!4952484))

(assert (= (and b!4952484 c!845734) b!4952479))

(assert (= (and b!4952484 (not c!845734)) b!4952486))

(assert (= (and d!1594974 res!2112860) b!4952485))

(assert (= (and b!4952485 c!845732) b!4952482))

(assert (= (and b!4952485 (not c!845732)) b!4952483))

(assert (= (and b!4952483 c!845735) b!4952480))

(assert (= (and b!4952483 (not c!845735)) b!4952487))

(assert (= (or b!4952482 b!4952483 b!4952487) bm!345829))

(declare-fun m!5977460 () Bool)

(assert (=> d!1594974 m!5977460))

(declare-fun m!5977462 () Bool)

(assert (=> d!1594974 m!5977462))

(assert (=> bm!345829 m!5977442))

(declare-fun m!5977464 () Bool)

(assert (=> b!4952485 m!5977464))

(declare-fun m!5977466 () Bool)

(assert (=> b!4952486 m!5977466))

(assert (=> b!4952419 d!1594974))

(declare-fun d!1594976 () Bool)

(declare-fun lt!2044135 () Int)

(assert (=> d!1594976 (>= lt!2044135 0)))

(declare-fun e!3094269 () Int)

(assert (=> d!1594976 (= lt!2044135 e!3094269)))

(declare-fun c!845742 () Bool)

(assert (=> d!1594976 (= c!845742 ((_ is Nil!57042) (t!367732 l!2976)))))

(assert (=> d!1594976 (= (size!37870 (t!367732 l!2976)) lt!2044135)))

(declare-fun b!4952501 () Bool)

(assert (=> b!4952501 (= e!3094269 0)))

(declare-fun b!4952502 () Bool)

(assert (=> b!4952502 (= e!3094269 (+ 1 (size!37870 (t!367732 (t!367732 l!2976)))))))

(assert (= (and d!1594976 c!845742) b!4952501))

(assert (= (and d!1594976 (not c!845742)) b!4952502))

(declare-fun m!5977468 () Bool)

(assert (=> b!4952502 m!5977468))

(assert (=> b!4952421 d!1594976))

(declare-fun d!1594978 () Bool)

(declare-fun lt!2044136 () Int)

(assert (=> d!1594978 (>= lt!2044136 0)))

(declare-fun e!3094270 () Int)

(assert (=> d!1594978 (= lt!2044136 e!3094270)))

(declare-fun c!845743 () Bool)

(assert (=> d!1594978 (= c!845743 ((_ is Nil!57042) l!2976))))

(assert (=> d!1594978 (= (size!37870 l!2976) lt!2044136)))

(declare-fun b!4952503 () Bool)

(assert (=> b!4952503 (= e!3094270 0)))

(declare-fun b!4952504 () Bool)

(assert (=> b!4952504 (= e!3094270 (+ 1 (size!37870 (t!367732 l!2976))))))

(assert (= (and d!1594978 c!845743) b!4952503))

(assert (= (and d!1594978 (not c!845743)) b!4952504))

(assert (=> b!4952504 m!5977442))

(assert (=> b!4952417 d!1594978))

(declare-fun b!4952509 () Bool)

(declare-fun e!3094273 () Bool)

(declare-fun tp!1388424 () Bool)

(assert (=> b!4952509 (= e!3094273 (and tp_is_empty!36235 tp!1388424))))

(assert (=> b!4952420 (= tp!1388421 e!3094273)))

(assert (= (and b!4952420 ((_ is Cons!57042) (t!367732 l!2976))) b!4952509))

(check-sat (not b!4952485) tp_is_empty!36235 (not b!4952447) (not bm!345826) (not b!4952478) (not b!4952463) (not b!4952446) (not b!4952504) (not b!4952476) (not b!4952486) (not bm!345829) (not b!4952502) (not b!4952477) (not d!1594970) (not d!1594974) (not d!1594968) (not d!1594964) (not b!4952509))
(check-sat)
(get-model)

(declare-fun d!1594992 () Bool)

(declare-fun lt!2044148 () Int)

(assert (=> d!1594992 (>= lt!2044148 0)))

(declare-fun e!3094295 () Int)

(assert (=> d!1594992 (= lt!2044148 e!3094295)))

(declare-fun c!845755 () Bool)

(assert (=> d!1594992 (= c!845755 ((_ is Nil!57042) lt!2044131))))

(assert (=> d!1594992 (= (size!37870 lt!2044131) lt!2044148)))

(declare-fun b!4952544 () Bool)

(assert (=> b!4952544 (= e!3094295 0)))

(declare-fun b!4952545 () Bool)

(assert (=> b!4952545 (= e!3094295 (+ 1 (size!37870 (t!367732 lt!2044131))))))

(assert (= (and d!1594992 c!845755) b!4952544))

(assert (= (and d!1594992 (not c!845755)) b!4952545))

(declare-fun m!5977496 () Bool)

(assert (=> b!4952545 m!5977496))

(assert (=> b!4952485 d!1594992))

(declare-fun d!1594994 () Bool)

(declare-fun e!3094299 () Bool)

(assert (=> d!1594994 e!3094299))

(declare-fun res!2112869 () Bool)

(assert (=> d!1594994 (=> (not res!2112869) (not e!3094299))))

(declare-fun lt!2044149 () List!57166)

(assert (=> d!1594994 (= res!2112869 (= ((_ map implies) (content!10168 lt!2044149) (content!10168 (t!367732 (t!367732 l!2976)))) ((as const (InoxSet B!3017)) true)))))

(declare-fun e!3094300 () List!57166)

(assert (=> d!1594994 (= lt!2044149 e!3094300)))

(declare-fun c!845757 () Bool)

(assert (=> d!1594994 (= c!845757 ((_ is Nil!57042) (t!367732 (t!367732 l!2976))))))

(assert (=> d!1594994 (= (drop!2304 (t!367732 (t!367732 l!2976)) (- (- i!792 1) 1)) lt!2044149)))

(declare-fun b!4952546 () Bool)

(declare-fun e!3094297 () List!57166)

(assert (=> b!4952546 (= e!3094297 (t!367732 (t!367732 l!2976)))))

(declare-fun b!4952547 () Bool)

(declare-fun e!3094298 () Int)

(assert (=> b!4952547 (= e!3094298 0)))

(declare-fun b!4952548 () Bool)

(assert (=> b!4952548 (= e!3094300 Nil!57042)))

(declare-fun b!4952549 () Bool)

(declare-fun e!3094296 () Int)

(declare-fun call!345837 () Int)

(assert (=> b!4952549 (= e!3094296 call!345837)))

(declare-fun b!4952550 () Bool)

(assert (=> b!4952550 (= e!3094296 e!3094298)))

(declare-fun c!845759 () Bool)

(assert (=> b!4952550 (= c!845759 (>= (- (- i!792 1) 1) call!345837))))

(declare-fun b!4952551 () Bool)

(assert (=> b!4952551 (= e!3094300 e!3094297)))

(declare-fun c!845758 () Bool)

(assert (=> b!4952551 (= c!845758 (<= (- (- i!792 1) 1) 0))))

(declare-fun bm!345832 () Bool)

(assert (=> bm!345832 (= call!345837 (size!37870 (t!367732 (t!367732 l!2976))))))

(declare-fun b!4952552 () Bool)

(assert (=> b!4952552 (= e!3094299 (= (size!37870 lt!2044149) e!3094296))))

(declare-fun c!845756 () Bool)

(assert (=> b!4952552 (= c!845756 (<= (- (- i!792 1) 1) 0))))

(declare-fun b!4952553 () Bool)

(assert (=> b!4952553 (= e!3094297 (drop!2304 (t!367732 (t!367732 (t!367732 l!2976))) (- (- (- i!792 1) 1) 1)))))

(declare-fun b!4952554 () Bool)

(assert (=> b!4952554 (= e!3094298 (- call!345837 (- (- i!792 1) 1)))))

(assert (= (and d!1594994 c!845757) b!4952548))

(assert (= (and d!1594994 (not c!845757)) b!4952551))

(assert (= (and b!4952551 c!845758) b!4952546))

(assert (= (and b!4952551 (not c!845758)) b!4952553))

(assert (= (and d!1594994 res!2112869) b!4952552))

(assert (= (and b!4952552 c!845756) b!4952549))

(assert (= (and b!4952552 (not c!845756)) b!4952550))

(assert (= (and b!4952550 c!845759) b!4952547))

(assert (= (and b!4952550 (not c!845759)) b!4952554))

(assert (= (or b!4952549 b!4952550 b!4952554) bm!345832))

(declare-fun m!5977498 () Bool)

(assert (=> d!1594994 m!5977498))

(declare-fun m!5977500 () Bool)

(assert (=> d!1594994 m!5977500))

(assert (=> bm!345832 m!5977468))

(declare-fun m!5977502 () Bool)

(assert (=> b!4952552 m!5977502))

(declare-fun m!5977504 () Bool)

(assert (=> b!4952553 m!5977504))

(assert (=> b!4952486 d!1594994))

(assert (=> b!4952463 d!1594976))

(declare-fun d!1594996 () Bool)

(declare-fun c!845762 () Bool)

(assert (=> d!1594996 (= c!845762 ((_ is Nil!57042) lt!2044122))))

(declare-fun e!3094303 () (InoxSet B!3017))

(assert (=> d!1594996 (= (content!10168 lt!2044122) e!3094303)))

(declare-fun b!4952559 () Bool)

(assert (=> b!4952559 (= e!3094303 ((as const (Array B!3017 Bool)) false))))

(declare-fun b!4952560 () Bool)

(assert (=> b!4952560 (= e!3094303 ((_ map or) (store ((as const (Array B!3017 Bool)) false) (h!63490 lt!2044122) true) (content!10168 (t!367732 lt!2044122))))))

(assert (= (and d!1594996 c!845762) b!4952559))

(assert (= (and d!1594996 (not c!845762)) b!4952560))

(declare-fun m!5977506 () Bool)

(assert (=> b!4952560 m!5977506))

(declare-fun m!5977508 () Bool)

(assert (=> b!4952560 m!5977508))

(assert (=> d!1594964 d!1594996))

(declare-fun d!1594998 () Bool)

(declare-fun c!845763 () Bool)

(assert (=> d!1594998 (= c!845763 ((_ is Nil!57042) l!2976))))

(declare-fun e!3094304 () (InoxSet B!3017))

(assert (=> d!1594998 (= (content!10168 l!2976) e!3094304)))

(declare-fun b!4952561 () Bool)

(assert (=> b!4952561 (= e!3094304 ((as const (Array B!3017 Bool)) false))))

(declare-fun b!4952562 () Bool)

(assert (=> b!4952562 (= e!3094304 ((_ map or) (store ((as const (Array B!3017 Bool)) false) (h!63490 l!2976) true) (content!10168 (t!367732 l!2976))))))

(assert (= (and d!1594998 c!845763) b!4952561))

(assert (= (and d!1594998 (not c!845763)) b!4952562))

(declare-fun m!5977510 () Bool)

(assert (=> b!4952562 m!5977510))

(assert (=> b!4952562 m!5977462))

(assert (=> d!1594964 d!1594998))

(declare-fun d!1595000 () Bool)

(declare-fun c!845764 () Bool)

(assert (=> d!1595000 (= c!845764 ((_ is Nil!57042) lt!2044131))))

(declare-fun e!3094305 () (InoxSet B!3017))

(assert (=> d!1595000 (= (content!10168 lt!2044131) e!3094305)))

(declare-fun b!4952563 () Bool)

(assert (=> b!4952563 (= e!3094305 ((as const (Array B!3017 Bool)) false))))

(declare-fun b!4952564 () Bool)

(assert (=> b!4952564 (= e!3094305 ((_ map or) (store ((as const (Array B!3017 Bool)) false) (h!63490 lt!2044131) true) (content!10168 (t!367732 lt!2044131))))))

(assert (= (and d!1595000 c!845764) b!4952563))

(assert (= (and d!1595000 (not c!845764)) b!4952564))

(declare-fun m!5977512 () Bool)

(assert (=> b!4952564 m!5977512))

(declare-fun m!5977514 () Bool)

(assert (=> b!4952564 m!5977514))

(assert (=> d!1594974 d!1595000))

(declare-fun d!1595002 () Bool)

(declare-fun c!845765 () Bool)

(assert (=> d!1595002 (= c!845765 ((_ is Nil!57042) (t!367732 l!2976)))))

(declare-fun e!3094306 () (InoxSet B!3017))

(assert (=> d!1595002 (= (content!10168 (t!367732 l!2976)) e!3094306)))

(declare-fun b!4952565 () Bool)

(assert (=> b!4952565 (= e!3094306 ((as const (Array B!3017 Bool)) false))))

(declare-fun b!4952566 () Bool)

(assert (=> b!4952566 (= e!3094306 ((_ map or) (store ((as const (Array B!3017 Bool)) false) (h!63490 (t!367732 l!2976)) true) (content!10168 (t!367732 (t!367732 l!2976)))))))

(assert (= (and d!1595002 c!845765) b!4952565))

(assert (= (and d!1595002 (not c!845765)) b!4952566))

(declare-fun m!5977516 () Bool)

(assert (=> b!4952566 m!5977516))

(assert (=> b!4952566 m!5977500))

(assert (=> d!1594974 d!1595002))

(declare-fun d!1595004 () Bool)

(declare-fun lt!2044150 () Int)

(assert (=> d!1595004 (>= lt!2044150 0)))

(declare-fun e!3094307 () Int)

(assert (=> d!1595004 (= lt!2044150 e!3094307)))

(declare-fun c!845766 () Bool)

(assert (=> d!1595004 (= c!845766 ((_ is Nil!57042) lt!2044122))))

(assert (=> d!1595004 (= (size!37870 lt!2044122) lt!2044150)))

(declare-fun b!4952567 () Bool)

(assert (=> b!4952567 (= e!3094307 0)))

(declare-fun b!4952568 () Bool)

(assert (=> b!4952568 (= e!3094307 (+ 1 (size!37870 (t!367732 lt!2044122))))))

(assert (= (and d!1595004 c!845766) b!4952567))

(assert (= (and d!1595004 (not c!845766)) b!4952568))

(declare-fun m!5977518 () Bool)

(assert (=> b!4952568 m!5977518))

(assert (=> b!4952446 d!1595004))

(assert (=> bm!345829 d!1594976))

(declare-fun d!1595006 () Bool)

(declare-fun lt!2044151 () Int)

(assert (=> d!1595006 (>= lt!2044151 0)))

(declare-fun e!3094308 () Int)

(assert (=> d!1595006 (= lt!2044151 e!3094308)))

(declare-fun c!845767 () Bool)

(assert (=> d!1595006 (= c!845767 ((_ is Nil!57042) (t!367732 (t!367732 l!2976))))))

(assert (=> d!1595006 (= (size!37870 (t!367732 (t!367732 l!2976))) lt!2044151)))

(declare-fun b!4952569 () Bool)

(assert (=> b!4952569 (= e!3094308 0)))

(declare-fun b!4952570 () Bool)

(assert (=> b!4952570 (= e!3094308 (+ 1 (size!37870 (t!367732 (t!367732 (t!367732 l!2976))))))))

(assert (= (and d!1595006 c!845767) b!4952569))

(assert (= (and d!1595006 (not c!845767)) b!4952570))

(declare-fun m!5977520 () Bool)

(assert (=> b!4952570 m!5977520))

(assert (=> b!4952502 d!1595006))

(assert (=> b!4952447 d!1594974))

(assert (=> b!4952476 d!1594976))

(assert (=> bm!345826 d!1594978))

(assert (=> d!1594968 d!1594972))

(assert (=> d!1594968 d!1594974))

(assert (=> d!1594968 d!1594970))

(declare-fun d!1595008 () Bool)

(assert (=> d!1595008 (= (head!10623 (drop!2304 (t!367732 l!2976) (- i!792 1))) (apply!13862 (t!367732 l!2976) (- i!792 1)))))

(assert (=> d!1595008 true))

(declare-fun _$27!1702 () Unit!147939)

(assert (=> d!1595008 (= (choose!36608 (t!367732 l!2976) (- i!792 1)) _$27!1702)))

(declare-fun bs!1182383 () Bool)

(assert (= bs!1182383 d!1595008))

(assert (=> bs!1182383 m!5977434))

(assert (=> bs!1182383 m!5977434))

(assert (=> bs!1182383 m!5977436))

(assert (=> bs!1182383 m!5977438))

(assert (=> d!1594968 d!1595008))

(declare-fun d!1595010 () Bool)

(declare-fun lt!2044154 () Bool)

(assert (=> d!1595010 (= lt!2044154 (select (content!10168 (t!367732 l!2976)) lt!2044130))))

(declare-fun e!3094314 () Bool)

(assert (=> d!1595010 (= lt!2044154 e!3094314)))

(declare-fun res!2112874 () Bool)

(assert (=> d!1595010 (=> (not res!2112874) (not e!3094314))))

(assert (=> d!1595010 (= res!2112874 ((_ is Cons!57042) (t!367732 l!2976)))))

(assert (=> d!1595010 (= (contains!19503 (t!367732 l!2976) lt!2044130) lt!2044154)))

(declare-fun b!4952575 () Bool)

(declare-fun e!3094313 () Bool)

(assert (=> b!4952575 (= e!3094314 e!3094313)))

(declare-fun res!2112875 () Bool)

(assert (=> b!4952575 (=> res!2112875 e!3094313)))

(assert (=> b!4952575 (= res!2112875 (= (h!63490 (t!367732 l!2976)) lt!2044130))))

(declare-fun b!4952576 () Bool)

(assert (=> b!4952576 (= e!3094313 (contains!19503 (t!367732 (t!367732 l!2976)) lt!2044130))))

(assert (= (and d!1595010 res!2112874) b!4952575))

(assert (= (and b!4952575 (not res!2112875)) b!4952576))

(assert (=> d!1595010 m!5977462))

(declare-fun m!5977522 () Bool)

(assert (=> d!1595010 m!5977522))

(declare-fun m!5977524 () Bool)

(assert (=> b!4952576 m!5977524))

(assert (=> d!1594970 d!1595010))

(declare-fun d!1595012 () Bool)

(declare-fun lt!2044155 () B!3017)

(assert (=> d!1595012 (contains!19503 (tail!9757 (t!367732 l!2976)) lt!2044155)))

(declare-fun e!3094315 () B!3017)

(assert (=> d!1595012 (= lt!2044155 e!3094315)))

(declare-fun c!845768 () Bool)

(assert (=> d!1595012 (= c!845768 (= (- (- i!792 1) 1) 0))))

(declare-fun e!3094316 () Bool)

(assert (=> d!1595012 e!3094316))

(declare-fun res!2112876 () Bool)

(assert (=> d!1595012 (=> (not res!2112876) (not e!3094316))))

(assert (=> d!1595012 (= res!2112876 (<= 0 (- (- i!792 1) 1)))))

(assert (=> d!1595012 (= (apply!13862 (tail!9757 (t!367732 l!2976)) (- (- i!792 1) 1)) lt!2044155)))

(declare-fun b!4952577 () Bool)

(assert (=> b!4952577 (= e!3094316 (< (- (- i!792 1) 1) (size!37870 (tail!9757 (t!367732 l!2976)))))))

(declare-fun b!4952578 () Bool)

(assert (=> b!4952578 (= e!3094315 (head!10623 (tail!9757 (t!367732 l!2976))))))

(declare-fun b!4952579 () Bool)

(assert (=> b!4952579 (= e!3094315 (apply!13862 (tail!9757 (tail!9757 (t!367732 l!2976))) (- (- (- i!792 1) 1) 1)))))

(assert (= (and d!1595012 res!2112876) b!4952577))

(assert (= (and d!1595012 c!845768) b!4952578))

(assert (= (and d!1595012 (not c!845768)) b!4952579))

(assert (=> d!1595012 m!5977456))

(declare-fun m!5977526 () Bool)

(assert (=> d!1595012 m!5977526))

(assert (=> b!4952577 m!5977456))

(declare-fun m!5977528 () Bool)

(assert (=> b!4952577 m!5977528))

(assert (=> b!4952578 m!5977456))

(declare-fun m!5977530 () Bool)

(assert (=> b!4952578 m!5977530))

(assert (=> b!4952579 m!5977456))

(declare-fun m!5977532 () Bool)

(assert (=> b!4952579 m!5977532))

(assert (=> b!4952579 m!5977532))

(declare-fun m!5977534 () Bool)

(assert (=> b!4952579 m!5977534))

(assert (=> b!4952478 d!1595012))

(declare-fun d!1595014 () Bool)

(assert (=> d!1595014 (= (tail!9757 (t!367732 l!2976)) (t!367732 (t!367732 l!2976)))))

(assert (=> b!4952478 d!1595014))

(declare-fun d!1595016 () Bool)

(assert (=> d!1595016 (= (head!10623 (t!367732 l!2976)) (h!63490 (t!367732 l!2976)))))

(assert (=> b!4952477 d!1595016))

(assert (=> b!4952504 d!1594976))

(declare-fun b!4952580 () Bool)

(declare-fun e!3094317 () Bool)

(declare-fun tp!1388428 () Bool)

(assert (=> b!4952580 (= e!3094317 (and tp_is_empty!36235 tp!1388428))))

(assert (=> b!4952509 (= tp!1388424 e!3094317)))

(assert (= (and b!4952509 ((_ is Cons!57042) (t!367732 (t!367732 l!2976)))) b!4952580))

(check-sat (not b!4952562) (not b!4952580) (not d!1594994) (not b!4952545) (not d!1595008) (not b!4952564) (not bm!345832) (not b!4952579) (not d!1595012) (not b!4952553) (not b!4952570) tp_is_empty!36235 (not b!4952578) (not d!1595010) (not b!4952568) (not b!4952576) (not b!4952552) (not b!4952560) (not b!4952577) (not b!4952566))
(check-sat)
