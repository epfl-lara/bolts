; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!755768 () Bool)

(assert start!755768)

(declare-fun b!8026291 () Bool)

(declare-fun e!4728351 () Bool)

(declare-fun e!4728349 () Bool)

(assert (=> b!8026291 (= e!4728351 e!4728349)))

(declare-fun res!3174045 () Bool)

(assert (=> b!8026291 (=> (not res!3174045) (not e!4728349))))

(declare-datatypes ((B!4345 0))(
  ( (B!4346 (val!32572 Int)) )
))
(declare-datatypes ((List!75088 0))(
  ( (Nil!74962) (Cons!74962 (h!81410 B!4345) (t!390844 List!75088)) )
))
(declare-fun lt!2720894 () List!75088)

(declare-fun e!9294 () B!4345)

(declare-fun head!16468 (List!75088) B!4345)

(assert (=> b!8026291 (= res!3174045 (not (= (head!16468 lt!2720894) e!9294)))))

(declare-fun l!3127 () List!75088)

(declare-fun tail!16009 (List!75088) List!75088)

(assert (=> b!8026291 (= lt!2720894 (tail!16009 l!3127))))

(declare-fun b!8026292 () Bool)

(declare-fun e!4728350 () Bool)

(declare-fun tp_is_empty!54249 () Bool)

(declare-fun tp!2402021 () Bool)

(assert (=> b!8026292 (= e!4728350 (and tp_is_empty!54249 tp!2402021))))

(declare-fun b!8026293 () Bool)

(declare-fun res!3174046 () Bool)

(assert (=> b!8026293 (=> (not res!3174046) (not e!4728349))))

(declare-fun contains!20926 (List!75088 B!4345) Bool)

(assert (=> b!8026293 (= res!3174046 (contains!20926 lt!2720894 e!9294))))

(declare-fun b!8026294 () Bool)

(declare-fun ListPrimitiveSize!515 (List!75088) Int)

(assert (=> b!8026294 (= e!4728349 (>= (ListPrimitiveSize!515 lt!2720894) (ListPrimitiveSize!515 l!3127)))))

(declare-fun res!3174044 () Bool)

(assert (=> start!755768 (=> (not res!3174044) (not e!4728351))))

(assert (=> start!755768 (= res!3174044 (contains!20926 l!3127 e!9294))))

(assert (=> start!755768 e!4728351))

(assert (=> start!755768 e!4728350))

(assert (=> start!755768 tp_is_empty!54249))

(declare-fun b!8026295 () Bool)

(declare-fun res!3174047 () Bool)

(assert (=> b!8026295 (=> (not res!3174047) (not e!4728351))))

(assert (=> b!8026295 (= res!3174047 (not (= (head!16468 l!3127) e!9294)))))

(assert (= (and start!755768 res!3174044) b!8026295))

(assert (= (and b!8026295 res!3174047) b!8026291))

(assert (= (and b!8026291 res!3174045) b!8026293))

(assert (= (and b!8026293 res!3174046) b!8026294))

(get-info :version)

(assert (= (and start!755768 ((_ is Cons!74962) l!3127)) b!8026292))

(declare-fun m!8388728 () Bool)

(assert (=> start!755768 m!8388728))

(declare-fun m!8388730 () Bool)

(assert (=> b!8026291 m!8388730))

(declare-fun m!8388732 () Bool)

(assert (=> b!8026291 m!8388732))

(declare-fun m!8388734 () Bool)

(assert (=> b!8026294 m!8388734))

(declare-fun m!8388736 () Bool)

(assert (=> b!8026294 m!8388736))

(declare-fun m!8388738 () Bool)

(assert (=> b!8026293 m!8388738))

(declare-fun m!8388740 () Bool)

(assert (=> b!8026295 m!8388740))

(check-sat (not b!8026295) tp_is_empty!54249 (not b!8026292) (not b!8026294) (not b!8026293) (not b!8026291) (not start!755768))
(check-sat)
(get-model)

(declare-fun d!2393456 () Bool)

(declare-fun lt!2720905 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15981 (List!75088) (InoxSet B!4345))

(assert (=> d!2393456 (= lt!2720905 (select (content!15981 lt!2720894) e!9294))))

(declare-fun e!4728368 () Bool)

(assert (=> d!2393456 (= lt!2720905 e!4728368)))

(declare-fun res!3174060 () Bool)

(assert (=> d!2393456 (=> (not res!3174060) (not e!4728368))))

(assert (=> d!2393456 (= res!3174060 ((_ is Cons!74962) lt!2720894))))

(assert (=> d!2393456 (= (contains!20926 lt!2720894 e!9294) lt!2720905)))

(declare-fun b!8026316 () Bool)

(declare-fun e!4728369 () Bool)

(assert (=> b!8026316 (= e!4728368 e!4728369)))

(declare-fun res!3174061 () Bool)

(assert (=> b!8026316 (=> res!3174061 e!4728369)))

(assert (=> b!8026316 (= res!3174061 (= (h!81410 lt!2720894) e!9294))))

(declare-fun b!8026317 () Bool)

(assert (=> b!8026317 (= e!4728369 (contains!20926 (t!390844 lt!2720894) e!9294))))

(assert (= (and d!2393456 res!3174060) b!8026316))

(assert (= (and b!8026316 (not res!3174061)) b!8026317))

(declare-fun m!8388758 () Bool)

(assert (=> d!2393456 m!8388758))

(declare-fun m!8388760 () Bool)

(assert (=> d!2393456 m!8388760))

(declare-fun m!8388762 () Bool)

(assert (=> b!8026317 m!8388762))

(assert (=> b!8026293 d!2393456))

(declare-fun d!2393470 () Bool)

(declare-fun lt!2720908 () Int)

(assert (=> d!2393470 (>= lt!2720908 0)))

(declare-fun e!4728375 () Int)

(assert (=> d!2393470 (= lt!2720908 e!4728375)))

(declare-fun c!1472709 () Bool)

(assert (=> d!2393470 (= c!1472709 ((_ is Nil!74962) lt!2720894))))

(assert (=> d!2393470 (= (ListPrimitiveSize!515 lt!2720894) lt!2720908)))

(declare-fun b!8026327 () Bool)

(assert (=> b!8026327 (= e!4728375 0)))

(declare-fun b!8026328 () Bool)

(assert (=> b!8026328 (= e!4728375 (+ 1 (ListPrimitiveSize!515 (t!390844 lt!2720894))))))

(assert (= (and d!2393470 c!1472709) b!8026327))

(assert (= (and d!2393470 (not c!1472709)) b!8026328))

(declare-fun m!8388764 () Bool)

(assert (=> b!8026328 m!8388764))

(assert (=> b!8026294 d!2393470))

(declare-fun d!2393472 () Bool)

(declare-fun lt!2720909 () Int)

(assert (=> d!2393472 (>= lt!2720909 0)))

(declare-fun e!4728376 () Int)

(assert (=> d!2393472 (= lt!2720909 e!4728376)))

(declare-fun c!1472710 () Bool)

(assert (=> d!2393472 (= c!1472710 ((_ is Nil!74962) l!3127))))

(assert (=> d!2393472 (= (ListPrimitiveSize!515 l!3127) lt!2720909)))

(declare-fun b!8026329 () Bool)

(assert (=> b!8026329 (= e!4728376 0)))

(declare-fun b!8026330 () Bool)

(assert (=> b!8026330 (= e!4728376 (+ 1 (ListPrimitiveSize!515 (t!390844 l!3127))))))

(assert (= (and d!2393472 c!1472710) b!8026329))

(assert (= (and d!2393472 (not c!1472710)) b!8026330))

(declare-fun m!8388766 () Bool)

(assert (=> b!8026330 m!8388766))

(assert (=> b!8026294 d!2393472))

(declare-fun d!2393474 () Bool)

(declare-fun lt!2720910 () Bool)

(assert (=> d!2393474 (= lt!2720910 (select (content!15981 l!3127) e!9294))))

(declare-fun e!4728377 () Bool)

(assert (=> d!2393474 (= lt!2720910 e!4728377)))

(declare-fun res!3174062 () Bool)

(assert (=> d!2393474 (=> (not res!3174062) (not e!4728377))))

(assert (=> d!2393474 (= res!3174062 ((_ is Cons!74962) l!3127))))

(assert (=> d!2393474 (= (contains!20926 l!3127 e!9294) lt!2720910)))

(declare-fun b!8026331 () Bool)

(declare-fun e!4728378 () Bool)

(assert (=> b!8026331 (= e!4728377 e!4728378)))

(declare-fun res!3174063 () Bool)

(assert (=> b!8026331 (=> res!3174063 e!4728378)))

(assert (=> b!8026331 (= res!3174063 (= (h!81410 l!3127) e!9294))))

(declare-fun b!8026332 () Bool)

(assert (=> b!8026332 (= e!4728378 (contains!20926 (t!390844 l!3127) e!9294))))

(assert (= (and d!2393474 res!3174062) b!8026331))

(assert (= (and b!8026331 (not res!3174063)) b!8026332))

(declare-fun m!8388768 () Bool)

(assert (=> d!2393474 m!8388768))

(declare-fun m!8388770 () Bool)

(assert (=> d!2393474 m!8388770))

(declare-fun m!8388772 () Bool)

(assert (=> b!8026332 m!8388772))

(assert (=> start!755768 d!2393474))

(declare-fun d!2393476 () Bool)

(assert (=> d!2393476 (= (head!16468 lt!2720894) (h!81410 lt!2720894))))

(assert (=> b!8026291 d!2393476))

(declare-fun d!2393478 () Bool)

(assert (=> d!2393478 (= (tail!16009 l!3127) (t!390844 l!3127))))

(assert (=> b!8026291 d!2393478))

(declare-fun d!2393480 () Bool)

(assert (=> d!2393480 (= (head!16468 l!3127) (h!81410 l!3127))))

(assert (=> b!8026295 d!2393480))

(declare-fun b!8026337 () Bool)

(declare-fun e!4728381 () Bool)

(declare-fun tp!2402027 () Bool)

(assert (=> b!8026337 (= e!4728381 (and tp_is_empty!54249 tp!2402027))))

(assert (=> b!8026292 (= tp!2402021 e!4728381)))

(assert (= (and b!8026292 ((_ is Cons!74962) (t!390844 l!3127))) b!8026337))

(check-sat (not b!8026328) (not b!8026330) (not d!2393474) tp_is_empty!54249 (not b!8026317) (not d!2393456) (not b!8026337) (not b!8026332))
(check-sat)
