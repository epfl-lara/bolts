; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!530938 () Bool)

(assert start!530938)

(declare-fun res!2141447 () Bool)

(declare-fun e!3137860 () Bool)

(assert (=> start!530938 (=> (not res!2141447) (not e!3137860))))

(declare-fun n!45 () Int)

(declare-datatypes ((B!3049 0))(
  ( (B!3050 (val!23366 Int)) )
))
(declare-datatypes ((List!58179 0))(
  ( (Nil!58055) (Cons!58055 (h!64503 B!3049) (t!370571 List!58179)) )
))
(declare-fun l!3169 () List!58179)

(get-info :version)

(assert (=> start!530938 (= res!2141447 (and (>= n!45 0) ((_ is Cons!58055) l!3169) (<= n!45 0)))))

(assert (=> start!530938 e!3137860))

(assert (=> start!530938 true))

(declare-fun e!3137861 () Bool)

(assert (=> start!530938 e!3137861))

(declare-fun b!5023071 () Bool)

(declare-fun isPrefix!5376 (List!58179 List!58179) Bool)

(declare-fun take!730 (List!58179 Int) List!58179)

(assert (=> b!5023071 (= e!3137860 (not (isPrefix!5376 (take!730 l!3169 n!45) l!3169)))))

(declare-fun b!5023072 () Bool)

(declare-fun tp_is_empty!36659 () Bool)

(declare-fun tp!1408132 () Bool)

(assert (=> b!5023072 (= e!3137861 (and tp_is_empty!36659 tp!1408132))))

(assert (= (and start!530938 res!2141447) b!5023071))

(assert (= (and start!530938 ((_ is Cons!58055) l!3169)) b!5023072))

(declare-fun m!6058230 () Bool)

(assert (=> b!5023071 m!6058230))

(assert (=> b!5023071 m!6058230))

(declare-fun m!6058232 () Bool)

(assert (=> b!5023071 m!6058232))

(check-sat (not b!5023071) (not b!5023072) tp_is_empty!36659)
(check-sat)
(get-model)

(declare-fun b!5023094 () Bool)

(declare-fun res!2141470 () Bool)

(declare-fun e!3137877 () Bool)

(assert (=> b!5023094 (=> (not res!2141470) (not e!3137877))))

(declare-fun head!10768 (List!58179) B!3049)

(assert (=> b!5023094 (= res!2141470 (= (head!10768 (take!730 l!3169 n!45)) (head!10768 l!3169)))))

(declare-fun d!1616968 () Bool)

(declare-fun e!3137879 () Bool)

(assert (=> d!1616968 e!3137879))

(declare-fun res!2141469 () Bool)

(assert (=> d!1616968 (=> res!2141469 e!3137879)))

(declare-fun lt!2078760 () Bool)

(assert (=> d!1616968 (= res!2141469 (not lt!2078760))))

(declare-fun e!3137878 () Bool)

(assert (=> d!1616968 (= lt!2078760 e!3137878)))

(declare-fun res!2141471 () Bool)

(assert (=> d!1616968 (=> res!2141471 e!3137878)))

(assert (=> d!1616968 (= res!2141471 ((_ is Nil!58055) (take!730 l!3169 n!45)))))

(assert (=> d!1616968 (= (isPrefix!5376 (take!730 l!3169 n!45) l!3169) lt!2078760)))

(declare-fun b!5023095 () Bool)

(declare-fun tail!9901 (List!58179) List!58179)

(assert (=> b!5023095 (= e!3137877 (isPrefix!5376 (tail!9901 (take!730 l!3169 n!45)) (tail!9901 l!3169)))))

(declare-fun b!5023093 () Bool)

(assert (=> b!5023093 (= e!3137878 e!3137877)))

(declare-fun res!2141468 () Bool)

(assert (=> b!5023093 (=> (not res!2141468) (not e!3137877))))

(assert (=> b!5023093 (= res!2141468 (not ((_ is Nil!58055) l!3169)))))

(declare-fun b!5023096 () Bool)

(declare-fun size!38636 (List!58179) Int)

(assert (=> b!5023096 (= e!3137879 (>= (size!38636 l!3169) (size!38636 (take!730 l!3169 n!45))))))

(assert (= (and d!1616968 (not res!2141471)) b!5023093))

(assert (= (and b!5023093 res!2141468) b!5023094))

(assert (= (and b!5023094 res!2141470) b!5023095))

(assert (= (and d!1616968 (not res!2141469)) b!5023096))

(assert (=> b!5023094 m!6058230))

(declare-fun m!6058248 () Bool)

(assert (=> b!5023094 m!6058248))

(declare-fun m!6058250 () Bool)

(assert (=> b!5023094 m!6058250))

(assert (=> b!5023095 m!6058230))

(declare-fun m!6058252 () Bool)

(assert (=> b!5023095 m!6058252))

(declare-fun m!6058254 () Bool)

(assert (=> b!5023095 m!6058254))

(assert (=> b!5023095 m!6058252))

(assert (=> b!5023095 m!6058254))

(declare-fun m!6058256 () Bool)

(assert (=> b!5023095 m!6058256))

(declare-fun m!6058258 () Bool)

(assert (=> b!5023096 m!6058258))

(assert (=> b!5023096 m!6058230))

(declare-fun m!6058260 () Bool)

(assert (=> b!5023096 m!6058260))

(assert (=> b!5023071 d!1616968))

(declare-fun b!5023137 () Bool)

(declare-fun e!3137906 () List!58179)

(assert (=> b!5023137 (= e!3137906 Nil!58055)))

(declare-fun b!5023138 () Bool)

(assert (=> b!5023138 (= e!3137906 (Cons!58055 (h!64503 l!3169) (take!730 (t!370571 l!3169) (- n!45 1))))))

(declare-fun d!1616972 () Bool)

(declare-fun e!3137904 () Bool)

(assert (=> d!1616972 e!3137904))

(declare-fun res!2141477 () Bool)

(assert (=> d!1616972 (=> (not res!2141477) (not e!3137904))))

(declare-fun lt!2078766 () List!58179)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10295 (List!58179) (InoxSet B!3049))

(assert (=> d!1616972 (= res!2141477 (= ((_ map implies) (content!10295 lt!2078766) (content!10295 l!3169)) ((as const (InoxSet B!3049)) true)))))

(assert (=> d!1616972 (= lt!2078766 e!3137906)))

(declare-fun c!858914 () Bool)

(assert (=> d!1616972 (= c!858914 (or ((_ is Nil!58055) l!3169) (<= n!45 0)))))

(assert (=> d!1616972 (= (take!730 l!3169 n!45) lt!2078766)))

(declare-fun b!5023139 () Bool)

(declare-fun e!3137903 () Int)

(assert (=> b!5023139 (= e!3137903 (size!38636 l!3169))))

(declare-fun b!5023140 () Bool)

(declare-fun e!3137905 () Int)

(assert (=> b!5023140 (= e!3137905 0)))

(declare-fun b!5023141 () Bool)

(assert (=> b!5023141 (= e!3137903 n!45)))

(declare-fun b!5023142 () Bool)

(assert (=> b!5023142 (= e!3137904 (= (size!38636 lt!2078766) e!3137905))))

(declare-fun c!858915 () Bool)

(assert (=> b!5023142 (= c!858915 (<= n!45 0))))

(declare-fun b!5023143 () Bool)

(assert (=> b!5023143 (= e!3137905 e!3137903)))

(declare-fun c!858916 () Bool)

(assert (=> b!5023143 (= c!858916 (>= n!45 (size!38636 l!3169)))))

(assert (= (and d!1616972 c!858914) b!5023137))

(assert (= (and d!1616972 (not c!858914)) b!5023138))

(assert (= (and d!1616972 res!2141477) b!5023142))

(assert (= (and b!5023142 c!858915) b!5023140))

(assert (= (and b!5023142 (not c!858915)) b!5023143))

(assert (= (and b!5023143 c!858916) b!5023139))

(assert (= (and b!5023143 (not c!858916)) b!5023141))

(declare-fun m!6058270 () Bool)

(assert (=> b!5023142 m!6058270))

(assert (=> b!5023139 m!6058258))

(declare-fun m!6058272 () Bool)

(assert (=> b!5023138 m!6058272))

(declare-fun m!6058274 () Bool)

(assert (=> d!1616972 m!6058274))

(declare-fun m!6058276 () Bool)

(assert (=> d!1616972 m!6058276))

(assert (=> b!5023143 m!6058258))

(assert (=> b!5023071 d!1616972))

(declare-fun b!5023148 () Bool)

(declare-fun e!3137909 () Bool)

(declare-fun tp!1408138 () Bool)

(assert (=> b!5023148 (= e!3137909 (and tp_is_empty!36659 tp!1408138))))

(assert (=> b!5023072 (= tp!1408132 e!3137909)))

(assert (= (and b!5023072 ((_ is Cons!58055) (t!370571 l!3169))) b!5023148))

(check-sat (not b!5023143) (not b!5023148) tp_is_empty!36659 (not b!5023094) (not b!5023095) (not b!5023096) (not b!5023142) (not b!5023139) (not d!1616972) (not b!5023138))
(check-sat)
