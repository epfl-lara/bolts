; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107336 () Bool)

(assert start!107336)

(declare-fun b!1204970 () Bool)

(declare-fun res!542754 () Bool)

(declare-fun e!773104 () Bool)

(assert (=> b!1204970 (=> (not res!542754) (not e!773104))))

(declare-datatypes ((T!22216 0))(
  ( (T!22217 (val!3950 Int)) )
))
(declare-datatypes ((List!12129 0))(
  ( (Nil!12105) (Cons!12105 (h!17506 T!22216) (t!112545 List!12129)) )
))
(declare-fun l!2744 () List!12129)

(declare-fun r!2028 () List!12129)

(declare-fun until!61 () Int)

(assert (=> b!1204970 (= res!542754 (and (not (= l!2744 Nil!12105)) (not (= r!2028 Nil!12105)) (not (= until!61 0))))))

(declare-fun res!542755 () Bool)

(assert (=> start!107336 (=> (not res!542755) (not e!773104))))

(declare-fun from!613 () Int)

(assert (=> start!107336 (= res!542755 (and (<= 0 from!613) (<= from!613 until!61)))))

(assert (=> start!107336 e!773104))

(assert (=> start!107336 true))

(declare-fun e!773103 () Bool)

(assert (=> start!107336 e!773103))

(declare-fun e!773102 () Bool)

(assert (=> start!107336 e!773102))

(declare-fun b!1204971 () Bool)

(declare-fun res!542756 () Bool)

(assert (=> b!1204971 (=> (not res!542756) (not e!773104))))

(declare-fun size!9645 (List!12129) Int)

(assert (=> b!1204971 (= res!542756 (<= until!61 (+ (size!9645 l!2744) (size!9645 r!2028))))))

(declare-fun b!1204972 () Bool)

(declare-fun tp_is_empty!6103 () Bool)

(declare-fun tp!341924 () Bool)

(assert (=> b!1204972 (= e!773103 (and tp_is_empty!6103 tp!341924))))

(declare-fun b!1204973 () Bool)

(declare-fun tail!1732 (List!12129) List!12129)

(declare-fun ++!3129 (List!12129 List!12129) List!12129)

(assert (=> b!1204973 (= e!773104 (not (= (tail!1732 (++!3129 l!2744 r!2028)) (++!3129 (tail!1732 l!2744) r!2028))))))

(declare-fun b!1204974 () Bool)

(declare-fun tp!341925 () Bool)

(assert (=> b!1204974 (= e!773102 (and tp_is_empty!6103 tp!341925))))

(assert (= (and start!107336 res!542755) b!1204971))

(assert (= (and b!1204971 res!542756) b!1204970))

(assert (= (and b!1204970 res!542754) b!1204973))

(get-info :version)

(assert (= (and start!107336 ((_ is Cons!12105) l!2744)) b!1204972))

(assert (= (and start!107336 ((_ is Cons!12105) r!2028)) b!1204974))

(declare-fun m!1380289 () Bool)

(assert (=> b!1204971 m!1380289))

(declare-fun m!1380291 () Bool)

(assert (=> b!1204971 m!1380291))

(declare-fun m!1380293 () Bool)

(assert (=> b!1204973 m!1380293))

(assert (=> b!1204973 m!1380293))

(declare-fun m!1380295 () Bool)

(assert (=> b!1204973 m!1380295))

(declare-fun m!1380297 () Bool)

(assert (=> b!1204973 m!1380297))

(assert (=> b!1204973 m!1380297))

(declare-fun m!1380299 () Bool)

(assert (=> b!1204973 m!1380299))

(check-sat (not b!1204971) tp_is_empty!6103 (not b!1204972) (not b!1204974) (not b!1204973))
(check-sat)
(get-model)

(declare-fun d!344306 () Bool)

(assert (=> d!344306 (= (tail!1732 (++!3129 l!2744 r!2028)) (t!112545 (++!3129 l!2744 r!2028)))))

(assert (=> b!1204973 d!344306))

(declare-fun b!1205005 () Bool)

(declare-fun res!542767 () Bool)

(declare-fun e!773119 () Bool)

(assert (=> b!1205005 (=> (not res!542767) (not e!773119))))

(declare-fun lt!412094 () List!12129)

(assert (=> b!1205005 (= res!542767 (= (size!9645 lt!412094) (+ (size!9645 l!2744) (size!9645 r!2028))))))

(declare-fun b!1205004 () Bool)

(declare-fun e!773120 () List!12129)

(assert (=> b!1205004 (= e!773120 (Cons!12105 (h!17506 l!2744) (++!3129 (t!112545 l!2744) r!2028)))))

(declare-fun d!344308 () Bool)

(assert (=> d!344308 e!773119))

(declare-fun res!542768 () Bool)

(assert (=> d!344308 (=> (not res!542768) (not e!773119))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1706 (List!12129) (InoxSet T!22216))

(assert (=> d!344308 (= res!542768 (= (content!1706 lt!412094) ((_ map or) (content!1706 l!2744) (content!1706 r!2028))))))

(assert (=> d!344308 (= lt!412094 e!773120)))

(declare-fun c!201146 () Bool)

(assert (=> d!344308 (= c!201146 ((_ is Nil!12105) l!2744))))

(assert (=> d!344308 (= (++!3129 l!2744 r!2028) lt!412094)))

(declare-fun b!1205006 () Bool)

(assert (=> b!1205006 (= e!773119 (or (not (= r!2028 Nil!12105)) (= lt!412094 l!2744)))))

(declare-fun b!1205003 () Bool)

(assert (=> b!1205003 (= e!773120 r!2028)))

(assert (= (and d!344308 c!201146) b!1205003))

(assert (= (and d!344308 (not c!201146)) b!1205004))

(assert (= (and d!344308 res!542768) b!1205005))

(assert (= (and b!1205005 res!542767) b!1205006))

(declare-fun m!1380325 () Bool)

(assert (=> b!1205005 m!1380325))

(assert (=> b!1205005 m!1380289))

(assert (=> b!1205005 m!1380291))

(declare-fun m!1380327 () Bool)

(assert (=> b!1205004 m!1380327))

(declare-fun m!1380329 () Bool)

(assert (=> d!344308 m!1380329))

(declare-fun m!1380331 () Bool)

(assert (=> d!344308 m!1380331))

(declare-fun m!1380333 () Bool)

(assert (=> d!344308 m!1380333))

(assert (=> b!1204973 d!344308))

(declare-fun b!1205017 () Bool)

(declare-fun res!542771 () Bool)

(declare-fun e!773125 () Bool)

(assert (=> b!1205017 (=> (not res!542771) (not e!773125))))

(declare-fun lt!412096 () List!12129)

(assert (=> b!1205017 (= res!542771 (= (size!9645 lt!412096) (+ (size!9645 (tail!1732 l!2744)) (size!9645 r!2028))))))

(declare-fun b!1205016 () Bool)

(declare-fun e!773126 () List!12129)

(assert (=> b!1205016 (= e!773126 (Cons!12105 (h!17506 (tail!1732 l!2744)) (++!3129 (t!112545 (tail!1732 l!2744)) r!2028)))))

(declare-fun d!344322 () Bool)

(assert (=> d!344322 e!773125))

(declare-fun res!542772 () Bool)

(assert (=> d!344322 (=> (not res!542772) (not e!773125))))

(assert (=> d!344322 (= res!542772 (= (content!1706 lt!412096) ((_ map or) (content!1706 (tail!1732 l!2744)) (content!1706 r!2028))))))

(assert (=> d!344322 (= lt!412096 e!773126)))

(declare-fun c!201148 () Bool)

(assert (=> d!344322 (= c!201148 ((_ is Nil!12105) (tail!1732 l!2744)))))

(assert (=> d!344322 (= (++!3129 (tail!1732 l!2744) r!2028) lt!412096)))

(declare-fun b!1205018 () Bool)

(assert (=> b!1205018 (= e!773125 (or (not (= r!2028 Nil!12105)) (= lt!412096 (tail!1732 l!2744))))))

(declare-fun b!1205015 () Bool)

(assert (=> b!1205015 (= e!773126 r!2028)))

(assert (= (and d!344322 c!201148) b!1205015))

(assert (= (and d!344322 (not c!201148)) b!1205016))

(assert (= (and d!344322 res!542772) b!1205017))

(assert (= (and b!1205017 res!542771) b!1205018))

(declare-fun m!1380335 () Bool)

(assert (=> b!1205017 m!1380335))

(assert (=> b!1205017 m!1380297))

(declare-fun m!1380337 () Bool)

(assert (=> b!1205017 m!1380337))

(assert (=> b!1205017 m!1380291))

(declare-fun m!1380339 () Bool)

(assert (=> b!1205016 m!1380339))

(declare-fun m!1380341 () Bool)

(assert (=> d!344322 m!1380341))

(assert (=> d!344322 m!1380297))

(declare-fun m!1380343 () Bool)

(assert (=> d!344322 m!1380343))

(assert (=> d!344322 m!1380333))

(assert (=> b!1204973 d!344322))

(declare-fun d!344324 () Bool)

(assert (=> d!344324 (= (tail!1732 l!2744) (t!112545 l!2744))))

(assert (=> b!1204973 d!344324))

(declare-fun d!344326 () Bool)

(declare-fun lt!412099 () Int)

(assert (=> d!344326 (>= lt!412099 0)))

(declare-fun e!773131 () Int)

(assert (=> d!344326 (= lt!412099 e!773131)))

(declare-fun c!201151 () Bool)

(assert (=> d!344326 (= c!201151 ((_ is Nil!12105) l!2744))))

(assert (=> d!344326 (= (size!9645 l!2744) lt!412099)))

(declare-fun b!1205025 () Bool)

(assert (=> b!1205025 (= e!773131 0)))

(declare-fun b!1205026 () Bool)

(assert (=> b!1205026 (= e!773131 (+ 1 (size!9645 (t!112545 l!2744))))))

(assert (= (and d!344326 c!201151) b!1205025))

(assert (= (and d!344326 (not c!201151)) b!1205026))

(declare-fun m!1380345 () Bool)

(assert (=> b!1205026 m!1380345))

(assert (=> b!1204971 d!344326))

(declare-fun d!344328 () Bool)

(declare-fun lt!412100 () Int)

(assert (=> d!344328 (>= lt!412100 0)))

(declare-fun e!773132 () Int)

(assert (=> d!344328 (= lt!412100 e!773132)))

(declare-fun c!201152 () Bool)

(assert (=> d!344328 (= c!201152 ((_ is Nil!12105) r!2028))))

(assert (=> d!344328 (= (size!9645 r!2028) lt!412100)))

(declare-fun b!1205027 () Bool)

(assert (=> b!1205027 (= e!773132 0)))

(declare-fun b!1205028 () Bool)

(assert (=> b!1205028 (= e!773132 (+ 1 (size!9645 (t!112545 r!2028))))))

(assert (= (and d!344328 c!201152) b!1205027))

(assert (= (and d!344328 (not c!201152)) b!1205028))

(declare-fun m!1380347 () Bool)

(assert (=> b!1205028 m!1380347))

(assert (=> b!1204971 d!344328))

(declare-fun b!1205033 () Bool)

(declare-fun e!773135 () Bool)

(declare-fun tp!341932 () Bool)

(assert (=> b!1205033 (= e!773135 (and tp_is_empty!6103 tp!341932))))

(assert (=> b!1204974 (= tp!341925 e!773135)))

(assert (= (and b!1204974 ((_ is Cons!12105) (t!112545 r!2028))) b!1205033))

(declare-fun b!1205034 () Bool)

(declare-fun e!773136 () Bool)

(declare-fun tp!341933 () Bool)

(assert (=> b!1205034 (= e!773136 (and tp_is_empty!6103 tp!341933))))

(assert (=> b!1204972 (= tp!341924 e!773136)))

(assert (= (and b!1204972 ((_ is Cons!12105) (t!112545 l!2744))) b!1205034))

(check-sat (not d!344322) (not b!1205033) (not b!1205017) (not b!1205026) (not d!344308) (not b!1205005) (not b!1205034) (not b!1205016) (not b!1205004) (not b!1205028) tp_is_empty!6103)
(check-sat)
