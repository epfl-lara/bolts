; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!756316 () Bool)

(assert start!756316)

(declare-fun b!8029255 () Bool)

(declare-fun res!3175517 () Bool)

(declare-fun e!4730369 () Bool)

(assert (=> b!8029255 (=> (not res!3175517) (not e!4730369))))

(declare-datatypes ((B!4469 0))(
  ( (B!4470 (val!32634 Int)) )
))
(declare-datatypes ((List!75150 0))(
  ( (Nil!75024) (Cons!75024 (h!81472 B!4469) (t!390906 List!75150)) )
))
(declare-fun prefix!66 () List!75150)

(declare-fun l!2919 () List!75150)

(declare-fun head!16505 (List!75150) B!4469)

(assert (=> b!8029255 (= res!3175517 (= (head!16505 prefix!66) (head!16505 l!2919)))))

(declare-fun b!8029256 () Bool)

(declare-fun e!4730370 () Bool)

(declare-fun tp_is_empty!54373 () Bool)

(declare-fun tp!2402731 () Bool)

(assert (=> b!8029256 (= e!4730370 (and tp_is_empty!54373 tp!2402731))))

(declare-fun b!8029257 () Bool)

(declare-fun e!4730371 () Bool)

(declare-fun tp!2402730 () Bool)

(assert (=> b!8029257 (= e!4730371 (and tp_is_empty!54373 tp!2402730))))

(declare-fun res!3175516 () Bool)

(assert (=> start!756316 (=> (not res!3175516) (not e!4730369))))

(get-info :version)

(assert (=> start!756316 (= res!3175516 (and (not ((_ is Nil!75024) prefix!66)) (not ((_ is Nil!75024) l!2919))))))

(assert (=> start!756316 e!4730369))

(assert (=> start!756316 e!4730371))

(assert (=> start!756316 e!4730370))

(declare-fun b!8029258 () Bool)

(declare-fun size!43748 (List!75150) Int)

(assert (=> b!8029258 (= e!4730369 (< (size!43748 l!2919) (size!43748 prefix!66)))))

(declare-fun b!8029259 () Bool)

(declare-fun res!3175515 () Bool)

(assert (=> b!8029259 (=> (not res!3175515) (not e!4730369))))

(declare-fun isPrefix!6887 (List!75150 List!75150) Bool)

(declare-fun tail!16046 (List!75150) List!75150)

(assert (=> b!8029259 (= res!3175515 (isPrefix!6887 (tail!16046 prefix!66) (tail!16046 l!2919)))))

(assert (= (and start!756316 res!3175516) b!8029255))

(assert (= (and b!8029255 res!3175517) b!8029259))

(assert (= (and b!8029259 res!3175515) b!8029258))

(assert (= (and start!756316 ((_ is Cons!75024) prefix!66)) b!8029257))

(assert (= (and start!756316 ((_ is Cons!75024) l!2919)) b!8029256))

(declare-fun m!8391300 () Bool)

(assert (=> b!8029255 m!8391300))

(declare-fun m!8391302 () Bool)

(assert (=> b!8029255 m!8391302))

(declare-fun m!8391304 () Bool)

(assert (=> b!8029258 m!8391304))

(declare-fun m!8391306 () Bool)

(assert (=> b!8029258 m!8391306))

(declare-fun m!8391308 () Bool)

(assert (=> b!8029259 m!8391308))

(declare-fun m!8391310 () Bool)

(assert (=> b!8029259 m!8391310))

(assert (=> b!8029259 m!8391308))

(assert (=> b!8029259 m!8391310))

(declare-fun m!8391312 () Bool)

(assert (=> b!8029259 m!8391312))

(check-sat (not b!8029259) (not b!8029256) (not b!8029258) (not b!8029255) (not b!8029257) tp_is_empty!54373)
(check-sat)
(get-model)

(declare-fun b!8029277 () Bool)

(declare-fun res!3175535 () Bool)

(declare-fun e!4730384 () Bool)

(assert (=> b!8029277 (=> (not res!3175535) (not e!4730384))))

(assert (=> b!8029277 (= res!3175535 (= (head!16505 (tail!16046 prefix!66)) (head!16505 (tail!16046 l!2919))))))

(declare-fun b!8029276 () Bool)

(declare-fun e!4730385 () Bool)

(assert (=> b!8029276 (= e!4730385 e!4730384)))

(declare-fun res!3175537 () Bool)

(assert (=> b!8029276 (=> (not res!3175537) (not e!4730384))))

(assert (=> b!8029276 (= res!3175537 (not ((_ is Nil!75024) (tail!16046 l!2919))))))

(declare-fun b!8029279 () Bool)

(declare-fun e!4730386 () Bool)

(assert (=> b!8029279 (= e!4730386 (>= (size!43748 (tail!16046 l!2919)) (size!43748 (tail!16046 prefix!66))))))

(declare-fun d!2394329 () Bool)

(assert (=> d!2394329 e!4730386))

(declare-fun res!3175536 () Bool)

(assert (=> d!2394329 (=> res!3175536 e!4730386)))

(declare-fun lt!2721767 () Bool)

(assert (=> d!2394329 (= res!3175536 (not lt!2721767))))

(assert (=> d!2394329 (= lt!2721767 e!4730385)))

(declare-fun res!3175534 () Bool)

(assert (=> d!2394329 (=> res!3175534 e!4730385)))

(assert (=> d!2394329 (= res!3175534 ((_ is Nil!75024) (tail!16046 prefix!66)))))

(assert (=> d!2394329 (= (isPrefix!6887 (tail!16046 prefix!66) (tail!16046 l!2919)) lt!2721767)))

(declare-fun b!8029278 () Bool)

(assert (=> b!8029278 (= e!4730384 (isPrefix!6887 (tail!16046 (tail!16046 prefix!66)) (tail!16046 (tail!16046 l!2919))))))

(assert (= (and d!2394329 (not res!3175534)) b!8029276))

(assert (= (and b!8029276 res!3175537) b!8029277))

(assert (= (and b!8029277 res!3175535) b!8029278))

(assert (= (and d!2394329 (not res!3175536)) b!8029279))

(assert (=> b!8029277 m!8391308))

(declare-fun m!8391314 () Bool)

(assert (=> b!8029277 m!8391314))

(assert (=> b!8029277 m!8391310))

(declare-fun m!8391316 () Bool)

(assert (=> b!8029277 m!8391316))

(assert (=> b!8029279 m!8391310))

(declare-fun m!8391318 () Bool)

(assert (=> b!8029279 m!8391318))

(assert (=> b!8029279 m!8391308))

(declare-fun m!8391320 () Bool)

(assert (=> b!8029279 m!8391320))

(assert (=> b!8029278 m!8391308))

(declare-fun m!8391322 () Bool)

(assert (=> b!8029278 m!8391322))

(assert (=> b!8029278 m!8391310))

(declare-fun m!8391324 () Bool)

(assert (=> b!8029278 m!8391324))

(assert (=> b!8029278 m!8391322))

(assert (=> b!8029278 m!8391324))

(declare-fun m!8391326 () Bool)

(assert (=> b!8029278 m!8391326))

(assert (=> b!8029259 d!2394329))

(declare-fun d!2394337 () Bool)

(assert (=> d!2394337 (= (tail!16046 prefix!66) (t!390906 prefix!66))))

(assert (=> b!8029259 d!2394337))

(declare-fun d!2394339 () Bool)

(assert (=> d!2394339 (= (tail!16046 l!2919) (t!390906 l!2919))))

(assert (=> b!8029259 d!2394339))

(declare-fun d!2394343 () Bool)

(declare-fun lt!2721773 () Int)

(assert (=> d!2394343 (>= lt!2721773 0)))

(declare-fun e!4730394 () Int)

(assert (=> d!2394343 (= lt!2721773 e!4730394)))

(declare-fun c!1473055 () Bool)

(assert (=> d!2394343 (= c!1473055 ((_ is Nil!75024) l!2919))))

(assert (=> d!2394343 (= (size!43748 l!2919) lt!2721773)))

(declare-fun b!8029292 () Bool)

(assert (=> b!8029292 (= e!4730394 0)))

(declare-fun b!8029293 () Bool)

(assert (=> b!8029293 (= e!4730394 (+ 1 (size!43748 (t!390906 l!2919))))))

(assert (= (and d!2394343 c!1473055) b!8029292))

(assert (= (and d!2394343 (not c!1473055)) b!8029293))

(declare-fun m!8391342 () Bool)

(assert (=> b!8029293 m!8391342))

(assert (=> b!8029258 d!2394343))

(declare-fun d!2394349 () Bool)

(declare-fun lt!2721774 () Int)

(assert (=> d!2394349 (>= lt!2721774 0)))

(declare-fun e!4730395 () Int)

(assert (=> d!2394349 (= lt!2721774 e!4730395)))

(declare-fun c!1473056 () Bool)

(assert (=> d!2394349 (= c!1473056 ((_ is Nil!75024) prefix!66))))

(assert (=> d!2394349 (= (size!43748 prefix!66) lt!2721774)))

(declare-fun b!8029294 () Bool)

(assert (=> b!8029294 (= e!4730395 0)))

(declare-fun b!8029295 () Bool)

(assert (=> b!8029295 (= e!4730395 (+ 1 (size!43748 (t!390906 prefix!66))))))

(assert (= (and d!2394349 c!1473056) b!8029294))

(assert (= (and d!2394349 (not c!1473056)) b!8029295))

(declare-fun m!8391344 () Bool)

(assert (=> b!8029295 m!8391344))

(assert (=> b!8029258 d!2394349))

(declare-fun d!2394351 () Bool)

(assert (=> d!2394351 (= (head!16505 prefix!66) (h!81472 prefix!66))))

(assert (=> b!8029255 d!2394351))

(declare-fun d!2394355 () Bool)

(assert (=> d!2394355 (= (head!16505 l!2919) (h!81472 l!2919))))

(assert (=> b!8029255 d!2394355))

(declare-fun b!8029308 () Bool)

(declare-fun e!4730402 () Bool)

(declare-fun tp!2402736 () Bool)

(assert (=> b!8029308 (= e!4730402 (and tp_is_empty!54373 tp!2402736))))

(assert (=> b!8029257 (= tp!2402730 e!4730402)))

(assert (= (and b!8029257 ((_ is Cons!75024) (t!390906 prefix!66))) b!8029308))

(declare-fun b!8029311 () Bool)

(declare-fun e!4730405 () Bool)

(declare-fun tp!2402739 () Bool)

(assert (=> b!8029311 (= e!4730405 (and tp_is_empty!54373 tp!2402739))))

(assert (=> b!8029256 (= tp!2402731 e!4730405)))

(assert (= (and b!8029256 ((_ is Cons!75024) (t!390906 l!2919))) b!8029311))

(check-sat (not b!8029293) (not b!8029308) tp_is_empty!54373 (not b!8029311) (not b!8029277) (not b!8029295) (not b!8029278) (not b!8029279))
(check-sat)
