; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!276328 () Bool)

(assert start!276328)

(declare-fun b!2841241 () Bool)

(declare-fun res!1182049 () Bool)

(declare-fun e!1800052 () Bool)

(assert (=> b!2841241 (=> (not res!1182049) (not e!1800052))))

(declare-fun i!849 () Int)

(declare-datatypes ((B!2509 0))(
  ( (B!2510 (val!10558 Int)) )
))
(declare-datatypes ((List!33770 0))(
  ( (Nil!33646) (Cons!33646 (h!39066 B!2509) (t!232615 List!33770)) )
))
(declare-fun l!2988 () List!33770)

(declare-fun size!26115 (List!33770) Int)

(assert (=> b!2841241 (= res!1182049 (<= i!849 (size!26115 l!2988)))))

(declare-fun b!2841243 () Bool)

(declare-fun drop!1797 (List!33770 Int) List!33770)

(assert (=> b!2841243 (= e!1800052 (not (= (drop!1797 l!2988 i!849) l!2988)))))

(declare-fun res!1182050 () Bool)

(assert (=> start!276328 (=> (not res!1182050) (not e!1800052))))

(assert (=> start!276328 (= res!1182050 (>= i!849 0))))

(assert (=> start!276328 e!1800052))

(assert (=> start!276328 true))

(declare-fun e!1800053 () Bool)

(assert (=> start!276328 e!1800053))

(declare-fun b!2841242 () Bool)

(declare-fun res!1182048 () Bool)

(assert (=> b!2841242 (=> (not res!1182048) (not e!1800052))))

(get-info :version)

(assert (=> b!2841242 (= res!1182048 (and (not ((_ is Nil!33646) l!2988)) (<= i!849 0)))))

(declare-fun b!2841244 () Bool)

(declare-fun tp_is_empty!14639 () Bool)

(declare-fun tp!910260 () Bool)

(assert (=> b!2841244 (= e!1800053 (and tp_is_empty!14639 tp!910260))))

(assert (= (and start!276328 res!1182050) b!2841241))

(assert (= (and b!2841241 res!1182049) b!2841242))

(assert (= (and b!2841242 res!1182048) b!2841243))

(assert (= (and start!276328 ((_ is Cons!33646) l!2988)) b!2841244))

(declare-fun m!3269351 () Bool)

(assert (=> b!2841241 m!3269351))

(declare-fun m!3269353 () Bool)

(assert (=> b!2841243 m!3269353))

(check-sat (not b!2841241) (not b!2841243) (not b!2841244) tp_is_empty!14639)
(check-sat)
(get-model)

(declare-fun d!823858 () Bool)

(declare-fun lt!1011601 () Int)

(assert (=> d!823858 (>= lt!1011601 0)))

(declare-fun e!1800059 () Int)

(assert (=> d!823858 (= lt!1011601 e!1800059)))

(declare-fun c!458633 () Bool)

(assert (=> d!823858 (= c!458633 ((_ is Nil!33646) l!2988))))

(assert (=> d!823858 (= (size!26115 l!2988) lt!1011601)))

(declare-fun b!2841255 () Bool)

(assert (=> b!2841255 (= e!1800059 0)))

(declare-fun b!2841256 () Bool)

(assert (=> b!2841256 (= e!1800059 (+ 1 (size!26115 (t!232615 l!2988))))))

(assert (= (and d!823858 c!458633) b!2841255))

(assert (= (and d!823858 (not c!458633)) b!2841256))

(declare-fun m!3269357 () Bool)

(assert (=> b!2841256 m!3269357))

(assert (=> b!2841241 d!823858))

(declare-fun b!2841293 () Bool)

(declare-fun e!1800084 () Bool)

(declare-fun lt!1011606 () List!33770)

(declare-fun e!1800081 () Int)

(assert (=> b!2841293 (= e!1800084 (= (size!26115 lt!1011606) e!1800081))))

(declare-fun c!458651 () Bool)

(assert (=> b!2841293 (= c!458651 (<= i!849 0))))

(declare-fun b!2841294 () Bool)

(declare-fun e!1800083 () Int)

(declare-fun call!183297 () Int)

(assert (=> b!2841294 (= e!1800083 (- call!183297 i!849))))

(declare-fun b!2841295 () Bool)

(assert (=> b!2841295 (= e!1800083 0)))

(declare-fun b!2841296 () Bool)

(declare-fun e!1800082 () List!33770)

(assert (=> b!2841296 (= e!1800082 (drop!1797 (t!232615 l!2988) (- i!849 1)))))

(declare-fun b!2841297 () Bool)

(declare-fun e!1800080 () List!33770)

(assert (=> b!2841297 (= e!1800080 e!1800082)))

(declare-fun c!458652 () Bool)

(assert (=> b!2841297 (= c!458652 (<= i!849 0))))

(declare-fun b!2841298 () Bool)

(assert (=> b!2841298 (= e!1800081 e!1800083)))

(declare-fun c!458653 () Bool)

(assert (=> b!2841298 (= c!458653 (>= i!849 call!183297))))

(declare-fun b!2841299 () Bool)

(assert (=> b!2841299 (= e!1800082 l!2988)))

(declare-fun b!2841300 () Bool)

(assert (=> b!2841300 (= e!1800081 call!183297)))

(declare-fun b!2841301 () Bool)

(assert (=> b!2841301 (= e!1800080 Nil!33646)))

(declare-fun bm!183292 () Bool)

(assert (=> bm!183292 (= call!183297 (size!26115 l!2988))))

(declare-fun d!823864 () Bool)

(assert (=> d!823864 e!1800084))

(declare-fun res!1182055 () Bool)

(assert (=> d!823864 (=> (not res!1182055) (not e!1800084))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4641 (List!33770) (InoxSet B!2509))

(assert (=> d!823864 (= res!1182055 (= ((_ map implies) (content!4641 lt!1011606) (content!4641 l!2988)) ((as const (InoxSet B!2509)) true)))))

(assert (=> d!823864 (= lt!1011606 e!1800080)))

(declare-fun c!458650 () Bool)

(assert (=> d!823864 (= c!458650 ((_ is Nil!33646) l!2988))))

(assert (=> d!823864 (= (drop!1797 l!2988 i!849) lt!1011606)))

(assert (= (and d!823864 c!458650) b!2841301))

(assert (= (and d!823864 (not c!458650)) b!2841297))

(assert (= (and b!2841297 c!458652) b!2841299))

(assert (= (and b!2841297 (not c!458652)) b!2841296))

(assert (= (and d!823864 res!1182055) b!2841293))

(assert (= (and b!2841293 c!458651) b!2841300))

(assert (= (and b!2841293 (not c!458651)) b!2841298))

(assert (= (and b!2841298 c!458653) b!2841295))

(assert (= (and b!2841298 (not c!458653)) b!2841294))

(assert (= (or b!2841300 b!2841298 b!2841294) bm!183292))

(declare-fun m!3269359 () Bool)

(assert (=> b!2841293 m!3269359))

(declare-fun m!3269361 () Bool)

(assert (=> b!2841296 m!3269361))

(assert (=> bm!183292 m!3269351))

(declare-fun m!3269363 () Bool)

(assert (=> d!823864 m!3269363))

(declare-fun m!3269365 () Bool)

(assert (=> d!823864 m!3269365))

(assert (=> b!2841243 d!823864))

(declare-fun b!2841306 () Bool)

(declare-fun e!1800087 () Bool)

(declare-fun tp!910263 () Bool)

(assert (=> b!2841306 (= e!1800087 (and tp_is_empty!14639 tp!910263))))

(assert (=> b!2841244 (= tp!910260 e!1800087)))

(assert (= (and b!2841244 ((_ is Cons!33646) (t!232615 l!2988))) b!2841306))

(check-sat (not b!2841256) (not b!2841293) (not bm!183292) (not b!2841296) (not d!823864) (not b!2841306) tp_is_empty!14639)
(check-sat)
