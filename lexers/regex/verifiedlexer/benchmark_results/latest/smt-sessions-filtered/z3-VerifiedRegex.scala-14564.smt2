; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!755372 () Bool)

(assert start!755372)

(declare-fun b!8024185 () Bool)

(declare-fun e!4726999 () Bool)

(declare-fun tp_is_empty!54161 () Bool)

(declare-fun tp!2401423 () Bool)

(assert (=> b!8024185 (= e!4726999 (and tp_is_empty!54161 tp!2401423))))

(declare-fun b!8024186 () Bool)

(declare-fun e!4727000 () Bool)

(declare-fun tp!2401422 () Bool)

(assert (=> b!8024186 (= e!4727000 (and tp_is_empty!54161 tp!2401422))))

(declare-fun b!8024187 () Bool)

(declare-fun e!4727001 () Bool)

(declare-datatypes ((B!4273 0))(
  ( (B!4274 (val!32526 Int)) )
))
(declare-datatypes ((List!75038 0))(
  ( (Nil!74914) (Cons!74914 (h!81362 B!4273) (t!390781 List!75038)) )
))
(declare-fun p!1838 () List!75038)

(declare-fun l!2932 () List!75038)

(declare-fun ++!18572 (List!75038 List!75038) List!75038)

(declare-fun getSuffix!3952 (List!75038 List!75038) List!75038)

(declare-fun tail!15981 (List!75038) List!75038)

(assert (=> b!8024187 (= e!4727001 (not (= (++!18572 p!1838 (getSuffix!3952 (tail!15981 l!2932) (t!390781 p!1838))) l!2932)))))

(declare-fun b!8024188 () Bool)

(declare-fun res!3173268 () Bool)

(assert (=> b!8024188 (=> (not res!3173268) (not e!4727001))))

(get-info :version)

(assert (=> b!8024188 (= res!3173268 ((_ is Cons!74914) p!1838))))

(declare-fun b!8024189 () Bool)

(declare-fun res!3173266 () Bool)

(assert (=> b!8024189 (=> (not res!3173266) (not e!4727001))))

(declare-fun isPrefix!6845 (List!75038 List!75038) Bool)

(assert (=> b!8024189 (= res!3173266 (isPrefix!6845 p!1838 l!2932))))

(declare-fun res!3173267 () Bool)

(assert (=> start!755372 (=> (not res!3173267) (not e!4727001))))

(declare-fun size!43691 (List!75038) Int)

(assert (=> start!755372 (= res!3173267 (>= (size!43691 l!2932) (size!43691 p!1838)))))

(assert (=> start!755372 e!4727001))

(assert (=> start!755372 e!4727000))

(assert (=> start!755372 e!4726999))

(assert (= (and start!755372 res!3173267) b!8024189))

(assert (= (and b!8024189 res!3173266) b!8024188))

(assert (= (and b!8024188 res!3173268) b!8024187))

(assert (= (and start!755372 ((_ is Cons!74914) l!2932)) b!8024186))

(assert (= (and start!755372 ((_ is Cons!74914) p!1838)) b!8024185))

(declare-fun m!8386654 () Bool)

(assert (=> b!8024187 m!8386654))

(assert (=> b!8024187 m!8386654))

(declare-fun m!8386656 () Bool)

(assert (=> b!8024187 m!8386656))

(assert (=> b!8024187 m!8386656))

(declare-fun m!8386658 () Bool)

(assert (=> b!8024187 m!8386658))

(declare-fun m!8386660 () Bool)

(assert (=> b!8024189 m!8386660))

(declare-fun m!8386662 () Bool)

(assert (=> start!755372 m!8386662))

(declare-fun m!8386664 () Bool)

(assert (=> start!755372 m!8386664))

(check-sat (not start!755372) (not b!8024189) tp_is_empty!54161 (not b!8024187) (not b!8024186) (not b!8024185))
(check-sat)
(get-model)

(declare-fun d!2392665 () Bool)

(declare-fun lt!2720561 () Int)

(assert (=> d!2392665 (>= lt!2720561 0)))

(declare-fun e!4727010 () Int)

(assert (=> d!2392665 (= lt!2720561 e!4727010)))

(declare-fun c!1472380 () Bool)

(assert (=> d!2392665 (= c!1472380 ((_ is Nil!74914) l!2932))))

(assert (=> d!2392665 (= (size!43691 l!2932) lt!2720561)))

(declare-fun b!8024202 () Bool)

(assert (=> b!8024202 (= e!4727010 0)))

(declare-fun b!8024203 () Bool)

(assert (=> b!8024203 (= e!4727010 (+ 1 (size!43691 (t!390781 l!2932))))))

(assert (= (and d!2392665 c!1472380) b!8024202))

(assert (= (and d!2392665 (not c!1472380)) b!8024203))

(declare-fun m!8386666 () Bool)

(assert (=> b!8024203 m!8386666))

(assert (=> start!755372 d!2392665))

(declare-fun d!2392667 () Bool)

(declare-fun lt!2720562 () Int)

(assert (=> d!2392667 (>= lt!2720562 0)))

(declare-fun e!4727011 () Int)

(assert (=> d!2392667 (= lt!2720562 e!4727011)))

(declare-fun c!1472381 () Bool)

(assert (=> d!2392667 (= c!1472381 ((_ is Nil!74914) p!1838))))

(assert (=> d!2392667 (= (size!43691 p!1838) lt!2720562)))

(declare-fun b!8024204 () Bool)

(assert (=> b!8024204 (= e!4727011 0)))

(declare-fun b!8024205 () Bool)

(assert (=> b!8024205 (= e!4727011 (+ 1 (size!43691 (t!390781 p!1838))))))

(assert (= (and d!2392667 c!1472381) b!8024204))

(assert (= (and d!2392667 (not c!1472381)) b!8024205))

(declare-fun m!8386668 () Bool)

(assert (=> b!8024205 m!8386668))

(assert (=> start!755372 d!2392667))

(declare-fun b!8024227 () Bool)

(declare-fun e!4727024 () List!75038)

(assert (=> b!8024227 (= e!4727024 (Cons!74914 (h!81362 p!1838) (++!18572 (t!390781 p!1838) (getSuffix!3952 (tail!15981 l!2932) (t!390781 p!1838)))))))

(declare-fun e!4727023 () Bool)

(declare-fun b!8024229 () Bool)

(declare-fun lt!2720570 () List!75038)

(assert (=> b!8024229 (= e!4727023 (or (not (= (getSuffix!3952 (tail!15981 l!2932) (t!390781 p!1838)) Nil!74914)) (= lt!2720570 p!1838)))))

(declare-fun b!8024226 () Bool)

(assert (=> b!8024226 (= e!4727024 (getSuffix!3952 (tail!15981 l!2932) (t!390781 p!1838)))))

(declare-fun b!8024228 () Bool)

(declare-fun res!3173285 () Bool)

(assert (=> b!8024228 (=> (not res!3173285) (not e!4727023))))

(assert (=> b!8024228 (= res!3173285 (= (size!43691 lt!2720570) (+ (size!43691 p!1838) (size!43691 (getSuffix!3952 (tail!15981 l!2932) (t!390781 p!1838))))))))

(declare-fun d!2392669 () Bool)

(assert (=> d!2392669 e!4727023))

(declare-fun res!3173286 () Bool)

(assert (=> d!2392669 (=> (not res!3173286) (not e!4727023))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15956 (List!75038) (InoxSet B!4273))

(assert (=> d!2392669 (= res!3173286 (= (content!15956 lt!2720570) ((_ map or) (content!15956 p!1838) (content!15956 (getSuffix!3952 (tail!15981 l!2932) (t!390781 p!1838))))))))

(assert (=> d!2392669 (= lt!2720570 e!4727024)))

(declare-fun c!1472388 () Bool)

(assert (=> d!2392669 (= c!1472388 ((_ is Nil!74914) p!1838))))

(assert (=> d!2392669 (= (++!18572 p!1838 (getSuffix!3952 (tail!15981 l!2932) (t!390781 p!1838))) lt!2720570)))

(assert (= (and d!2392669 c!1472388) b!8024226))

(assert (= (and d!2392669 (not c!1472388)) b!8024227))

(assert (= (and d!2392669 res!3173286) b!8024228))

(assert (= (and b!8024228 res!3173285) b!8024229))

(assert (=> b!8024227 m!8386656))

(declare-fun m!8386682 () Bool)

(assert (=> b!8024227 m!8386682))

(declare-fun m!8386684 () Bool)

(assert (=> b!8024228 m!8386684))

(assert (=> b!8024228 m!8386664))

(assert (=> b!8024228 m!8386656))

(declare-fun m!8386686 () Bool)

(assert (=> b!8024228 m!8386686))

(declare-fun m!8386688 () Bool)

(assert (=> d!2392669 m!8386688))

(declare-fun m!8386690 () Bool)

(assert (=> d!2392669 m!8386690))

(assert (=> d!2392669 m!8386656))

(declare-fun m!8386692 () Bool)

(assert (=> d!2392669 m!8386692))

(assert (=> b!8024187 d!2392669))

(declare-fun d!2392677 () Bool)

(declare-fun lt!2720576 () List!75038)

(assert (=> d!2392677 (= (++!18572 (t!390781 p!1838) lt!2720576) (tail!15981 l!2932))))

(declare-fun e!4727033 () List!75038)

(assert (=> d!2392677 (= lt!2720576 e!4727033)))

(declare-fun c!1472394 () Bool)

(assert (=> d!2392677 (= c!1472394 ((_ is Cons!74914) (t!390781 p!1838)))))

(assert (=> d!2392677 (>= (size!43691 (tail!15981 l!2932)) (size!43691 (t!390781 p!1838)))))

(assert (=> d!2392677 (= (getSuffix!3952 (tail!15981 l!2932) (t!390781 p!1838)) lt!2720576)))

(declare-fun b!8024246 () Bool)

(assert (=> b!8024246 (= e!4727033 (getSuffix!3952 (tail!15981 (tail!15981 l!2932)) (t!390781 (t!390781 p!1838))))))

(declare-fun b!8024247 () Bool)

(assert (=> b!8024247 (= e!4727033 (tail!15981 l!2932))))

(assert (= (and d!2392677 c!1472394) b!8024246))

(assert (= (and d!2392677 (not c!1472394)) b!8024247))

(declare-fun m!8386706 () Bool)

(assert (=> d!2392677 m!8386706))

(assert (=> d!2392677 m!8386654))

(declare-fun m!8386708 () Bool)

(assert (=> d!2392677 m!8386708))

(assert (=> d!2392677 m!8386668))

(assert (=> b!8024246 m!8386654))

(declare-fun m!8386710 () Bool)

(assert (=> b!8024246 m!8386710))

(assert (=> b!8024246 m!8386710))

(declare-fun m!8386712 () Bool)

(assert (=> b!8024246 m!8386712))

(assert (=> b!8024187 d!2392677))

(declare-fun d!2392681 () Bool)

(assert (=> d!2392681 (= (tail!15981 l!2932) (t!390781 l!2932))))

(assert (=> b!8024187 d!2392681))

(declare-fun b!8024268 () Bool)

(declare-fun e!4727047 () Bool)

(declare-fun e!4727048 () Bool)

(assert (=> b!8024268 (= e!4727047 e!4727048)))

(declare-fun res!3173302 () Bool)

(assert (=> b!8024268 (=> (not res!3173302) (not e!4727048))))

(assert (=> b!8024268 (= res!3173302 (not ((_ is Nil!74914) l!2932)))))

(declare-fun b!8024269 () Bool)

(declare-fun res!3173303 () Bool)

(assert (=> b!8024269 (=> (not res!3173303) (not e!4727048))))

(declare-fun head!16442 (List!75038) B!4273)

(assert (=> b!8024269 (= res!3173303 (= (head!16442 p!1838) (head!16442 l!2932)))))

(declare-fun d!2392683 () Bool)

(declare-fun e!4727049 () Bool)

(assert (=> d!2392683 e!4727049))

(declare-fun res!3173301 () Bool)

(assert (=> d!2392683 (=> res!3173301 e!4727049)))

(declare-fun lt!2720582 () Bool)

(assert (=> d!2392683 (= res!3173301 (not lt!2720582))))

(assert (=> d!2392683 (= lt!2720582 e!4727047)))

(declare-fun res!3173304 () Bool)

(assert (=> d!2392683 (=> res!3173304 e!4727047)))

(assert (=> d!2392683 (= res!3173304 ((_ is Nil!74914) p!1838))))

(assert (=> d!2392683 (= (isPrefix!6845 p!1838 l!2932) lt!2720582)))

(declare-fun b!8024271 () Bool)

(assert (=> b!8024271 (= e!4727049 (>= (size!43691 l!2932) (size!43691 p!1838)))))

(declare-fun b!8024270 () Bool)

(assert (=> b!8024270 (= e!4727048 (isPrefix!6845 (tail!15981 p!1838) (tail!15981 l!2932)))))

(assert (= (and d!2392683 (not res!3173304)) b!8024268))

(assert (= (and b!8024268 res!3173302) b!8024269))

(assert (= (and b!8024269 res!3173303) b!8024270))

(assert (= (and d!2392683 (not res!3173301)) b!8024271))

(declare-fun m!8386722 () Bool)

(assert (=> b!8024269 m!8386722))

(declare-fun m!8386724 () Bool)

(assert (=> b!8024269 m!8386724))

(assert (=> b!8024271 m!8386662))

(assert (=> b!8024271 m!8386664))

(declare-fun m!8386726 () Bool)

(assert (=> b!8024270 m!8386726))

(assert (=> b!8024270 m!8386654))

(assert (=> b!8024270 m!8386726))

(assert (=> b!8024270 m!8386654))

(declare-fun m!8386728 () Bool)

(assert (=> b!8024270 m!8386728))

(assert (=> b!8024189 d!2392683))

(declare-fun b!8024276 () Bool)

(declare-fun e!4727052 () Bool)

(declare-fun tp!2401430 () Bool)

(assert (=> b!8024276 (= e!4727052 (and tp_is_empty!54161 tp!2401430))))

(assert (=> b!8024185 (= tp!2401423 e!4727052)))

(assert (= (and b!8024185 ((_ is Cons!74914) (t!390781 p!1838))) b!8024276))

(declare-fun b!8024277 () Bool)

(declare-fun e!4727053 () Bool)

(declare-fun tp!2401431 () Bool)

(assert (=> b!8024277 (= e!4727053 (and tp_is_empty!54161 tp!2401431))))

(assert (=> b!8024186 (= tp!2401422 e!4727053)))

(assert (= (and b!8024186 ((_ is Cons!74914) (t!390781 l!2932))) b!8024277))

(check-sat (not b!8024227) (not b!8024228) (not b!8024269) (not d!2392669) (not d!2392677) (not b!8024276) (not b!8024270) tp_is_empty!54161 (not b!8024205) (not b!8024203) (not b!8024277) (not b!8024271) (not b!8024246))
(check-sat)
(get-model)

(declare-fun d!2392687 () Bool)

(assert (=> d!2392687 (= (head!16442 p!1838) (h!81362 p!1838))))

(assert (=> b!8024269 d!2392687))

(declare-fun d!2392689 () Bool)

(assert (=> d!2392689 (= (head!16442 l!2932) (h!81362 l!2932))))

(assert (=> b!8024269 d!2392689))

(declare-fun b!8024279 () Bool)

(declare-fun e!4727055 () List!75038)

(assert (=> b!8024279 (= e!4727055 (Cons!74914 (h!81362 (t!390781 p!1838)) (++!18572 (t!390781 (t!390781 p!1838)) (getSuffix!3952 (tail!15981 l!2932) (t!390781 p!1838)))))))

(declare-fun b!8024281 () Bool)

(declare-fun lt!2720583 () List!75038)

(declare-fun e!4727054 () Bool)

(assert (=> b!8024281 (= e!4727054 (or (not (= (getSuffix!3952 (tail!15981 l!2932) (t!390781 p!1838)) Nil!74914)) (= lt!2720583 (t!390781 p!1838))))))

(declare-fun b!8024278 () Bool)

(assert (=> b!8024278 (= e!4727055 (getSuffix!3952 (tail!15981 l!2932) (t!390781 p!1838)))))

(declare-fun b!8024280 () Bool)

(declare-fun res!3173305 () Bool)

(assert (=> b!8024280 (=> (not res!3173305) (not e!4727054))))

(assert (=> b!8024280 (= res!3173305 (= (size!43691 lt!2720583) (+ (size!43691 (t!390781 p!1838)) (size!43691 (getSuffix!3952 (tail!15981 l!2932) (t!390781 p!1838))))))))

(declare-fun d!2392691 () Bool)

(assert (=> d!2392691 e!4727054))

(declare-fun res!3173306 () Bool)

(assert (=> d!2392691 (=> (not res!3173306) (not e!4727054))))

(assert (=> d!2392691 (= res!3173306 (= (content!15956 lt!2720583) ((_ map or) (content!15956 (t!390781 p!1838)) (content!15956 (getSuffix!3952 (tail!15981 l!2932) (t!390781 p!1838))))))))

(assert (=> d!2392691 (= lt!2720583 e!4727055)))

(declare-fun c!1472398 () Bool)

(assert (=> d!2392691 (= c!1472398 ((_ is Nil!74914) (t!390781 p!1838)))))

(assert (=> d!2392691 (= (++!18572 (t!390781 p!1838) (getSuffix!3952 (tail!15981 l!2932) (t!390781 p!1838))) lt!2720583)))

(assert (= (and d!2392691 c!1472398) b!8024278))

(assert (= (and d!2392691 (not c!1472398)) b!8024279))

(assert (= (and d!2392691 res!3173306) b!8024280))

(assert (= (and b!8024280 res!3173305) b!8024281))

(assert (=> b!8024279 m!8386656))

(declare-fun m!8386730 () Bool)

(assert (=> b!8024279 m!8386730))

(declare-fun m!8386732 () Bool)

(assert (=> b!8024280 m!8386732))

(assert (=> b!8024280 m!8386668))

(assert (=> b!8024280 m!8386656))

(assert (=> b!8024280 m!8386686))

(declare-fun m!8386734 () Bool)

(assert (=> d!2392691 m!8386734))

(declare-fun m!8386736 () Bool)

(assert (=> d!2392691 m!8386736))

(assert (=> d!2392691 m!8386656))

(assert (=> d!2392691 m!8386692))

(assert (=> b!8024227 d!2392691))

(declare-fun d!2392693 () Bool)

(declare-fun c!1472401 () Bool)

(assert (=> d!2392693 (= c!1472401 ((_ is Nil!74914) lt!2720570))))

(declare-fun e!4727058 () (InoxSet B!4273))

(assert (=> d!2392693 (= (content!15956 lt!2720570) e!4727058)))

(declare-fun b!8024286 () Bool)

(assert (=> b!8024286 (= e!4727058 ((as const (Array B!4273 Bool)) false))))

(declare-fun b!8024287 () Bool)

(assert (=> b!8024287 (= e!4727058 ((_ map or) (store ((as const (Array B!4273 Bool)) false) (h!81362 lt!2720570) true) (content!15956 (t!390781 lt!2720570))))))

(assert (= (and d!2392693 c!1472401) b!8024286))

(assert (= (and d!2392693 (not c!1472401)) b!8024287))

(declare-fun m!8386738 () Bool)

(assert (=> b!8024287 m!8386738))

(declare-fun m!8386740 () Bool)

(assert (=> b!8024287 m!8386740))

(assert (=> d!2392669 d!2392693))

(declare-fun d!2392695 () Bool)

(declare-fun c!1472402 () Bool)

(assert (=> d!2392695 (= c!1472402 ((_ is Nil!74914) p!1838))))

(declare-fun e!4727059 () (InoxSet B!4273))

(assert (=> d!2392695 (= (content!15956 p!1838) e!4727059)))

(declare-fun b!8024288 () Bool)

(assert (=> b!8024288 (= e!4727059 ((as const (Array B!4273 Bool)) false))))

(declare-fun b!8024289 () Bool)

(assert (=> b!8024289 (= e!4727059 ((_ map or) (store ((as const (Array B!4273 Bool)) false) (h!81362 p!1838) true) (content!15956 (t!390781 p!1838))))))

(assert (= (and d!2392695 c!1472402) b!8024288))

(assert (= (and d!2392695 (not c!1472402)) b!8024289))

(declare-fun m!8386742 () Bool)

(assert (=> b!8024289 m!8386742))

(assert (=> b!8024289 m!8386736))

(assert (=> d!2392669 d!2392695))

(declare-fun d!2392697 () Bool)

(declare-fun c!1472403 () Bool)

(assert (=> d!2392697 (= c!1472403 ((_ is Nil!74914) (getSuffix!3952 (tail!15981 l!2932) (t!390781 p!1838))))))

(declare-fun e!4727060 () (InoxSet B!4273))

(assert (=> d!2392697 (= (content!15956 (getSuffix!3952 (tail!15981 l!2932) (t!390781 p!1838))) e!4727060)))

(declare-fun b!8024290 () Bool)

(assert (=> b!8024290 (= e!4727060 ((as const (Array B!4273 Bool)) false))))

(declare-fun b!8024291 () Bool)

(assert (=> b!8024291 (= e!4727060 ((_ map or) (store ((as const (Array B!4273 Bool)) false) (h!81362 (getSuffix!3952 (tail!15981 l!2932) (t!390781 p!1838))) true) (content!15956 (t!390781 (getSuffix!3952 (tail!15981 l!2932) (t!390781 p!1838))))))))

(assert (= (and d!2392697 c!1472403) b!8024290))

(assert (= (and d!2392697 (not c!1472403)) b!8024291))

(declare-fun m!8386744 () Bool)

(assert (=> b!8024291 m!8386744))

(declare-fun m!8386746 () Bool)

(assert (=> b!8024291 m!8386746))

(assert (=> d!2392669 d!2392697))

(declare-fun b!8024292 () Bool)

(declare-fun e!4727061 () Bool)

(declare-fun e!4727062 () Bool)

(assert (=> b!8024292 (= e!4727061 e!4727062)))

(declare-fun res!3173308 () Bool)

(assert (=> b!8024292 (=> (not res!3173308) (not e!4727062))))

(assert (=> b!8024292 (= res!3173308 (not ((_ is Nil!74914) (tail!15981 l!2932))))))

(declare-fun b!8024293 () Bool)

(declare-fun res!3173309 () Bool)

(assert (=> b!8024293 (=> (not res!3173309) (not e!4727062))))

(assert (=> b!8024293 (= res!3173309 (= (head!16442 (tail!15981 p!1838)) (head!16442 (tail!15981 l!2932))))))

(declare-fun d!2392699 () Bool)

(declare-fun e!4727063 () Bool)

(assert (=> d!2392699 e!4727063))

(declare-fun res!3173307 () Bool)

(assert (=> d!2392699 (=> res!3173307 e!4727063)))

(declare-fun lt!2720584 () Bool)

(assert (=> d!2392699 (= res!3173307 (not lt!2720584))))

(assert (=> d!2392699 (= lt!2720584 e!4727061)))

(declare-fun res!3173310 () Bool)

(assert (=> d!2392699 (=> res!3173310 e!4727061)))

(assert (=> d!2392699 (= res!3173310 ((_ is Nil!74914) (tail!15981 p!1838)))))

(assert (=> d!2392699 (= (isPrefix!6845 (tail!15981 p!1838) (tail!15981 l!2932)) lt!2720584)))

(declare-fun b!8024295 () Bool)

(assert (=> b!8024295 (= e!4727063 (>= (size!43691 (tail!15981 l!2932)) (size!43691 (tail!15981 p!1838))))))

(declare-fun b!8024294 () Bool)

(assert (=> b!8024294 (= e!4727062 (isPrefix!6845 (tail!15981 (tail!15981 p!1838)) (tail!15981 (tail!15981 l!2932))))))

(assert (= (and d!2392699 (not res!3173310)) b!8024292))

(assert (= (and b!8024292 res!3173308) b!8024293))

(assert (= (and b!8024293 res!3173309) b!8024294))

(assert (= (and d!2392699 (not res!3173307)) b!8024295))

(assert (=> b!8024293 m!8386726))

(declare-fun m!8386748 () Bool)

(assert (=> b!8024293 m!8386748))

(assert (=> b!8024293 m!8386654))

(declare-fun m!8386750 () Bool)

(assert (=> b!8024293 m!8386750))

(assert (=> b!8024295 m!8386654))

(assert (=> b!8024295 m!8386708))

(assert (=> b!8024295 m!8386726))

(declare-fun m!8386752 () Bool)

(assert (=> b!8024295 m!8386752))

(assert (=> b!8024294 m!8386726))

(declare-fun m!8386754 () Bool)

(assert (=> b!8024294 m!8386754))

(assert (=> b!8024294 m!8386654))

(assert (=> b!8024294 m!8386710))

(assert (=> b!8024294 m!8386754))

(assert (=> b!8024294 m!8386710))

(declare-fun m!8386756 () Bool)

(assert (=> b!8024294 m!8386756))

(assert (=> b!8024270 d!2392699))

(declare-fun d!2392701 () Bool)

(assert (=> d!2392701 (= (tail!15981 p!1838) (t!390781 p!1838))))

(assert (=> b!8024270 d!2392701))

(assert (=> b!8024270 d!2392681))

(declare-fun b!8024297 () Bool)

(declare-fun e!4727065 () List!75038)

(assert (=> b!8024297 (= e!4727065 (Cons!74914 (h!81362 (t!390781 p!1838)) (++!18572 (t!390781 (t!390781 p!1838)) lt!2720576)))))

(declare-fun e!4727064 () Bool)

(declare-fun lt!2720585 () List!75038)

(declare-fun b!8024299 () Bool)

(assert (=> b!8024299 (= e!4727064 (or (not (= lt!2720576 Nil!74914)) (= lt!2720585 (t!390781 p!1838))))))

(declare-fun b!8024296 () Bool)

(assert (=> b!8024296 (= e!4727065 lt!2720576)))

(declare-fun b!8024298 () Bool)

(declare-fun res!3173311 () Bool)

(assert (=> b!8024298 (=> (not res!3173311) (not e!4727064))))

(assert (=> b!8024298 (= res!3173311 (= (size!43691 lt!2720585) (+ (size!43691 (t!390781 p!1838)) (size!43691 lt!2720576))))))

(declare-fun d!2392703 () Bool)

(assert (=> d!2392703 e!4727064))

(declare-fun res!3173312 () Bool)

(assert (=> d!2392703 (=> (not res!3173312) (not e!4727064))))

(assert (=> d!2392703 (= res!3173312 (= (content!15956 lt!2720585) ((_ map or) (content!15956 (t!390781 p!1838)) (content!15956 lt!2720576))))))

(assert (=> d!2392703 (= lt!2720585 e!4727065)))

(declare-fun c!1472404 () Bool)

(assert (=> d!2392703 (= c!1472404 ((_ is Nil!74914) (t!390781 p!1838)))))

(assert (=> d!2392703 (= (++!18572 (t!390781 p!1838) lt!2720576) lt!2720585)))

(assert (= (and d!2392703 c!1472404) b!8024296))

(assert (= (and d!2392703 (not c!1472404)) b!8024297))

(assert (= (and d!2392703 res!3173312) b!8024298))

(assert (= (and b!8024298 res!3173311) b!8024299))

(declare-fun m!8386758 () Bool)

(assert (=> b!8024297 m!8386758))

(declare-fun m!8386760 () Bool)

(assert (=> b!8024298 m!8386760))

(assert (=> b!8024298 m!8386668))

(declare-fun m!8386762 () Bool)

(assert (=> b!8024298 m!8386762))

(declare-fun m!8386764 () Bool)

(assert (=> d!2392703 m!8386764))

(assert (=> d!2392703 m!8386736))

(declare-fun m!8386766 () Bool)

(assert (=> d!2392703 m!8386766))

(assert (=> d!2392677 d!2392703))

(declare-fun d!2392705 () Bool)

(declare-fun lt!2720586 () Int)

(assert (=> d!2392705 (>= lt!2720586 0)))

(declare-fun e!4727066 () Int)

(assert (=> d!2392705 (= lt!2720586 e!4727066)))

(declare-fun c!1472405 () Bool)

(assert (=> d!2392705 (= c!1472405 ((_ is Nil!74914) (tail!15981 l!2932)))))

(assert (=> d!2392705 (= (size!43691 (tail!15981 l!2932)) lt!2720586)))

(declare-fun b!8024300 () Bool)

(assert (=> b!8024300 (= e!4727066 0)))

(declare-fun b!8024301 () Bool)

(assert (=> b!8024301 (= e!4727066 (+ 1 (size!43691 (t!390781 (tail!15981 l!2932)))))))

(assert (= (and d!2392705 c!1472405) b!8024300))

(assert (= (and d!2392705 (not c!1472405)) b!8024301))

(declare-fun m!8386768 () Bool)

(assert (=> b!8024301 m!8386768))

(assert (=> d!2392677 d!2392705))

(declare-fun d!2392707 () Bool)

(declare-fun lt!2720587 () Int)

(assert (=> d!2392707 (>= lt!2720587 0)))

(declare-fun e!4727067 () Int)

(assert (=> d!2392707 (= lt!2720587 e!4727067)))

(declare-fun c!1472406 () Bool)

(assert (=> d!2392707 (= c!1472406 ((_ is Nil!74914) (t!390781 p!1838)))))

(assert (=> d!2392707 (= (size!43691 (t!390781 p!1838)) lt!2720587)))

(declare-fun b!8024302 () Bool)

(assert (=> b!8024302 (= e!4727067 0)))

(declare-fun b!8024303 () Bool)

(assert (=> b!8024303 (= e!4727067 (+ 1 (size!43691 (t!390781 (t!390781 p!1838)))))))

(assert (= (and d!2392707 c!1472406) b!8024302))

(assert (= (and d!2392707 (not c!1472406)) b!8024303))

(declare-fun m!8386770 () Bool)

(assert (=> b!8024303 m!8386770))

(assert (=> d!2392677 d!2392707))

(declare-fun d!2392709 () Bool)

(declare-fun lt!2720588 () Int)

(assert (=> d!2392709 (>= lt!2720588 0)))

(declare-fun e!4727068 () Int)

(assert (=> d!2392709 (= lt!2720588 e!4727068)))

(declare-fun c!1472407 () Bool)

(assert (=> d!2392709 (= c!1472407 ((_ is Nil!74914) lt!2720570))))

(assert (=> d!2392709 (= (size!43691 lt!2720570) lt!2720588)))

(declare-fun b!8024304 () Bool)

(assert (=> b!8024304 (= e!4727068 0)))

(declare-fun b!8024305 () Bool)

(assert (=> b!8024305 (= e!4727068 (+ 1 (size!43691 (t!390781 lt!2720570))))))

(assert (= (and d!2392709 c!1472407) b!8024304))

(assert (= (and d!2392709 (not c!1472407)) b!8024305))

(declare-fun m!8386772 () Bool)

(assert (=> b!8024305 m!8386772))

(assert (=> b!8024228 d!2392709))

(assert (=> b!8024228 d!2392667))

(declare-fun d!2392711 () Bool)

(declare-fun lt!2720589 () Int)

(assert (=> d!2392711 (>= lt!2720589 0)))

(declare-fun e!4727069 () Int)

(assert (=> d!2392711 (= lt!2720589 e!4727069)))

(declare-fun c!1472408 () Bool)

(assert (=> d!2392711 (= c!1472408 ((_ is Nil!74914) (getSuffix!3952 (tail!15981 l!2932) (t!390781 p!1838))))))

(assert (=> d!2392711 (= (size!43691 (getSuffix!3952 (tail!15981 l!2932) (t!390781 p!1838))) lt!2720589)))

(declare-fun b!8024306 () Bool)

(assert (=> b!8024306 (= e!4727069 0)))

(declare-fun b!8024307 () Bool)

(assert (=> b!8024307 (= e!4727069 (+ 1 (size!43691 (t!390781 (getSuffix!3952 (tail!15981 l!2932) (t!390781 p!1838))))))))

(assert (= (and d!2392711 c!1472408) b!8024306))

(assert (= (and d!2392711 (not c!1472408)) b!8024307))

(declare-fun m!8386774 () Bool)

(assert (=> b!8024307 m!8386774))

(assert (=> b!8024228 d!2392711))

(assert (=> b!8024271 d!2392665))

(assert (=> b!8024271 d!2392667))

(assert (=> b!8024205 d!2392707))

(declare-fun d!2392713 () Bool)

(declare-fun lt!2720590 () List!75038)

(assert (=> d!2392713 (= (++!18572 (t!390781 (t!390781 p!1838)) lt!2720590) (tail!15981 (tail!15981 l!2932)))))

(declare-fun e!4727070 () List!75038)

(assert (=> d!2392713 (= lt!2720590 e!4727070)))

(declare-fun c!1472409 () Bool)

(assert (=> d!2392713 (= c!1472409 ((_ is Cons!74914) (t!390781 (t!390781 p!1838))))))

(assert (=> d!2392713 (>= (size!43691 (tail!15981 (tail!15981 l!2932))) (size!43691 (t!390781 (t!390781 p!1838))))))

(assert (=> d!2392713 (= (getSuffix!3952 (tail!15981 (tail!15981 l!2932)) (t!390781 (t!390781 p!1838))) lt!2720590)))

(declare-fun b!8024308 () Bool)

(assert (=> b!8024308 (= e!4727070 (getSuffix!3952 (tail!15981 (tail!15981 (tail!15981 l!2932))) (t!390781 (t!390781 (t!390781 p!1838)))))))

(declare-fun b!8024309 () Bool)

(assert (=> b!8024309 (= e!4727070 (tail!15981 (tail!15981 l!2932)))))

(assert (= (and d!2392713 c!1472409) b!8024308))

(assert (= (and d!2392713 (not c!1472409)) b!8024309))

(declare-fun m!8386776 () Bool)

(assert (=> d!2392713 m!8386776))

(assert (=> d!2392713 m!8386710))

(declare-fun m!8386778 () Bool)

(assert (=> d!2392713 m!8386778))

(assert (=> d!2392713 m!8386770))

(assert (=> b!8024308 m!8386710))

(declare-fun m!8386780 () Bool)

(assert (=> b!8024308 m!8386780))

(assert (=> b!8024308 m!8386780))

(declare-fun m!8386782 () Bool)

(assert (=> b!8024308 m!8386782))

(assert (=> b!8024246 d!2392713))

(declare-fun d!2392715 () Bool)

(assert (=> d!2392715 (= (tail!15981 (tail!15981 l!2932)) (t!390781 (tail!15981 l!2932)))))

(assert (=> b!8024246 d!2392715))

(declare-fun d!2392717 () Bool)

(declare-fun lt!2720591 () Int)

(assert (=> d!2392717 (>= lt!2720591 0)))

(declare-fun e!4727071 () Int)

(assert (=> d!2392717 (= lt!2720591 e!4727071)))

(declare-fun c!1472410 () Bool)

(assert (=> d!2392717 (= c!1472410 ((_ is Nil!74914) (t!390781 l!2932)))))

(assert (=> d!2392717 (= (size!43691 (t!390781 l!2932)) lt!2720591)))

(declare-fun b!8024310 () Bool)

(assert (=> b!8024310 (= e!4727071 0)))

(declare-fun b!8024311 () Bool)

(assert (=> b!8024311 (= e!4727071 (+ 1 (size!43691 (t!390781 (t!390781 l!2932)))))))

(assert (= (and d!2392717 c!1472410) b!8024310))

(assert (= (and d!2392717 (not c!1472410)) b!8024311))

(declare-fun m!8386784 () Bool)

(assert (=> b!8024311 m!8386784))

(assert (=> b!8024203 d!2392717))

(declare-fun b!8024312 () Bool)

(declare-fun e!4727072 () Bool)

(declare-fun tp!2401432 () Bool)

(assert (=> b!8024312 (= e!4727072 (and tp_is_empty!54161 tp!2401432))))

(assert (=> b!8024277 (= tp!2401431 e!4727072)))

(assert (= (and b!8024277 ((_ is Cons!74914) (t!390781 (t!390781 l!2932)))) b!8024312))

(declare-fun b!8024313 () Bool)

(declare-fun e!4727073 () Bool)

(declare-fun tp!2401433 () Bool)

(assert (=> b!8024313 (= e!4727073 (and tp_is_empty!54161 tp!2401433))))

(assert (=> b!8024276 (= tp!2401430 e!4727073)))

(assert (= (and b!8024276 ((_ is Cons!74914) (t!390781 (t!390781 p!1838)))) b!8024313))

(check-sat (not b!8024303) (not d!2392713) (not b!8024301) (not b!8024305) (not b!8024307) (not b!8024294) (not b!8024311) (not b!8024279) (not b!8024289) (not b!8024308) (not b!8024293) (not b!8024312) (not b!8024287) (not b!8024298) (not b!8024291) (not b!8024297) (not d!2392691) tp_is_empty!54161 (not b!8024295) (not b!8024313) (not b!8024280) (not d!2392703))
(check-sat)
