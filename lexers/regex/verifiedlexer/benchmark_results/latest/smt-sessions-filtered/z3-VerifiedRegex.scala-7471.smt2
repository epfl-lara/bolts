; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!396082 () Bool)

(assert start!396082)

(declare-fun res!1703262 () Bool)

(declare-fun e!2580808 () Bool)

(assert (=> start!396082 (=> (not res!1703262) (not e!2580808))))

(declare-datatypes ((B!2661 0))(
  ( (B!2662 (val!14622 Int)) )
))
(declare-datatypes ((List!45499 0))(
  ( (Nil!45375) (Cons!45375 (h!50795 B!2661) (t!343530 List!45499)) )
))
(declare-fun l!3062 () List!45499)

(declare-fun e1!32 () B!2661)

(declare-fun contains!9233 (List!45499 B!2661) Bool)

(assert (=> start!396082 (= res!1703262 (contains!9233 l!3062 e1!32))))

(assert (=> start!396082 e!2580808))

(declare-fun e!2580807 () Bool)

(assert (=> start!396082 e!2580807))

(declare-fun tp_is_empty!21709 () Bool)

(assert (=> start!396082 tp_is_empty!21709))

(declare-fun b!4158425 () Bool)

(declare-fun res!1703263 () Bool)

(assert (=> b!4158425 (=> (not res!1703263) (not e!2580808))))

(get-info :version)

(assert (=> b!4158425 (= res!1703263 (and ((_ is Cons!45375) l!3062) (= (h!50795 l!3062) e1!32)))))

(declare-fun b!4158426 () Bool)

(declare-fun res!1703261 () Bool)

(assert (=> b!4158426 (=> (not res!1703261) (not e!2580808))))

(declare-fun e2!32 () B!2661)

(declare-fun getIndex!854 (List!45499 B!2661) Int)

(assert (=> b!4158426 (= res!1703261 (< (getIndex!854 l!3062 e1!32) (getIndex!854 l!3062 e2!32)))))

(declare-fun b!4158427 () Bool)

(declare-fun res!1703264 () Bool)

(assert (=> b!4158427 (=> (not res!1703264) (not e!2580808))))

(assert (=> b!4158427 (= res!1703264 (contains!9233 l!3062 e2!32))))

(declare-fun b!4158428 () Bool)

(declare-fun tp!1268918 () Bool)

(assert (=> b!4158428 (= e!2580807 (and tp_is_empty!21709 tp!1268918))))

(declare-fun b!4158429 () Bool)

(declare-fun res!1703260 () Bool)

(assert (=> b!4158429 (=> (not res!1703260) (not e!2580808))))

(assert (=> b!4158429 (= res!1703260 (not (= e1!32 e2!32)))))

(declare-fun b!4158430 () Bool)

(declare-fun head!8818 (List!45499) B!2661)

(assert (=> b!4158430 (= e!2580808 (not (= (head!8818 l!3062) e1!32)))))

(assert (= (and start!396082 res!1703262) b!4158427))

(assert (= (and b!4158427 res!1703264) b!4158429))

(assert (= (and b!4158429 res!1703260) b!4158426))

(assert (= (and b!4158426 res!1703261) b!4158425))

(assert (= (and b!4158425 res!1703263) b!4158430))

(assert (= (and start!396082 ((_ is Cons!45375) l!3062)) b!4158428))

(declare-fun m!4752275 () Bool)

(assert (=> start!396082 m!4752275))

(declare-fun m!4752277 () Bool)

(assert (=> b!4158426 m!4752277))

(declare-fun m!4752279 () Bool)

(assert (=> b!4158426 m!4752279))

(declare-fun m!4752281 () Bool)

(assert (=> b!4158427 m!4752281))

(declare-fun m!4752283 () Bool)

(assert (=> b!4158430 m!4752283))

(check-sat (not start!396082) (not b!4158426) tp_is_empty!21709 (not b!4158430) (not b!4158427) (not b!4158428))
(check-sat)
(get-model)

(declare-fun d!1229524 () Bool)

(declare-fun lt!1482219 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7023 (List!45499) (InoxSet B!2661))

(assert (=> d!1229524 (= lt!1482219 (select (content!7023 l!3062) e2!32))))

(declare-fun e!2580814 () Bool)

(assert (=> d!1229524 (= lt!1482219 e!2580814)))

(declare-fun res!1703270 () Bool)

(assert (=> d!1229524 (=> (not res!1703270) (not e!2580814))))

(assert (=> d!1229524 (= res!1703270 ((_ is Cons!45375) l!3062))))

(assert (=> d!1229524 (= (contains!9233 l!3062 e2!32) lt!1482219)))

(declare-fun b!4158435 () Bool)

(declare-fun e!2580813 () Bool)

(assert (=> b!4158435 (= e!2580814 e!2580813)))

(declare-fun res!1703269 () Bool)

(assert (=> b!4158435 (=> res!1703269 e!2580813)))

(assert (=> b!4158435 (= res!1703269 (= (h!50795 l!3062) e2!32))))

(declare-fun b!4158436 () Bool)

(assert (=> b!4158436 (= e!2580813 (contains!9233 (t!343530 l!3062) e2!32))))

(assert (= (and d!1229524 res!1703270) b!4158435))

(assert (= (and b!4158435 (not res!1703269)) b!4158436))

(declare-fun m!4752285 () Bool)

(assert (=> d!1229524 m!4752285))

(declare-fun m!4752287 () Bool)

(assert (=> d!1229524 m!4752287))

(declare-fun m!4752289 () Bool)

(assert (=> b!4158436 m!4752289))

(assert (=> b!4158427 d!1229524))

(declare-fun b!4158462 () Bool)

(declare-fun e!2580829 () Int)

(declare-fun e!2580830 () Int)

(assert (=> b!4158462 (= e!2580829 e!2580830)))

(declare-fun c!711669 () Bool)

(assert (=> b!4158462 (= c!711669 (and ((_ is Cons!45375) l!3062) (not (= (h!50795 l!3062) e1!32))))))

(declare-fun b!4158461 () Bool)

(assert (=> b!4158461 (= e!2580829 0)))

(declare-fun b!4158463 () Bool)

(assert (=> b!4158463 (= e!2580830 (+ 1 (getIndex!854 (t!343530 l!3062) e1!32)))))

(declare-fun d!1229530 () Bool)

(declare-fun lt!1482226 () Int)

(assert (=> d!1229530 (>= lt!1482226 0)))

(assert (=> d!1229530 (= lt!1482226 e!2580829)))

(declare-fun c!711668 () Bool)

(assert (=> d!1229530 (= c!711668 (and ((_ is Cons!45375) l!3062) (= (h!50795 l!3062) e1!32)))))

(assert (=> d!1229530 (contains!9233 l!3062 e1!32)))

(assert (=> d!1229530 (= (getIndex!854 l!3062 e1!32) lt!1482226)))

(declare-fun b!4158464 () Bool)

(assert (=> b!4158464 (= e!2580830 (- 1))))

(assert (= (and d!1229530 c!711668) b!4158461))

(assert (= (and d!1229530 (not c!711668)) b!4158462))

(assert (= (and b!4158462 c!711669) b!4158463))

(assert (= (and b!4158462 (not c!711669)) b!4158464))

(declare-fun m!4752295 () Bool)

(assert (=> b!4158463 m!4752295))

(assert (=> d!1229530 m!4752275))

(assert (=> b!4158426 d!1229530))

(declare-fun b!4158466 () Bool)

(declare-fun e!2580831 () Int)

(declare-fun e!2580832 () Int)

(assert (=> b!4158466 (= e!2580831 e!2580832)))

(declare-fun c!711671 () Bool)

(assert (=> b!4158466 (= c!711671 (and ((_ is Cons!45375) l!3062) (not (= (h!50795 l!3062) e2!32))))))

(declare-fun b!4158465 () Bool)

(assert (=> b!4158465 (= e!2580831 0)))

(declare-fun b!4158467 () Bool)

(assert (=> b!4158467 (= e!2580832 (+ 1 (getIndex!854 (t!343530 l!3062) e2!32)))))

(declare-fun d!1229536 () Bool)

(declare-fun lt!1482227 () Int)

(assert (=> d!1229536 (>= lt!1482227 0)))

(assert (=> d!1229536 (= lt!1482227 e!2580831)))

(declare-fun c!711670 () Bool)

(assert (=> d!1229536 (= c!711670 (and ((_ is Cons!45375) l!3062) (= (h!50795 l!3062) e2!32)))))

(assert (=> d!1229536 (contains!9233 l!3062 e2!32)))

(assert (=> d!1229536 (= (getIndex!854 l!3062 e2!32) lt!1482227)))

(declare-fun b!4158468 () Bool)

(assert (=> b!4158468 (= e!2580832 (- 1))))

(assert (= (and d!1229536 c!711670) b!4158465))

(assert (= (and d!1229536 (not c!711670)) b!4158466))

(assert (= (and b!4158466 c!711671) b!4158467))

(assert (= (and b!4158466 (not c!711671)) b!4158468))

(declare-fun m!4752297 () Bool)

(assert (=> b!4158467 m!4752297))

(assert (=> d!1229536 m!4752281))

(assert (=> b!4158426 d!1229536))

(declare-fun d!1229538 () Bool)

(assert (=> d!1229538 (= (head!8818 l!3062) (h!50795 l!3062))))

(assert (=> b!4158430 d!1229538))

(declare-fun d!1229540 () Bool)

(declare-fun lt!1482228 () Bool)

(assert (=> d!1229540 (= lt!1482228 (select (content!7023 l!3062) e1!32))))

(declare-fun e!2580834 () Bool)

(assert (=> d!1229540 (= lt!1482228 e!2580834)))

(declare-fun res!1703272 () Bool)

(assert (=> d!1229540 (=> (not res!1703272) (not e!2580834))))

(assert (=> d!1229540 (= res!1703272 ((_ is Cons!45375) l!3062))))

(assert (=> d!1229540 (= (contains!9233 l!3062 e1!32) lt!1482228)))

(declare-fun b!4158469 () Bool)

(declare-fun e!2580833 () Bool)

(assert (=> b!4158469 (= e!2580834 e!2580833)))

(declare-fun res!1703271 () Bool)

(assert (=> b!4158469 (=> res!1703271 e!2580833)))

(assert (=> b!4158469 (= res!1703271 (= (h!50795 l!3062) e1!32))))

(declare-fun b!4158470 () Bool)

(assert (=> b!4158470 (= e!2580833 (contains!9233 (t!343530 l!3062) e1!32))))

(assert (= (and d!1229540 res!1703272) b!4158469))

(assert (= (and b!4158469 (not res!1703271)) b!4158470))

(assert (=> d!1229540 m!4752285))

(declare-fun m!4752299 () Bool)

(assert (=> d!1229540 m!4752299))

(declare-fun m!4752301 () Bool)

(assert (=> b!4158470 m!4752301))

(assert (=> start!396082 d!1229540))

(declare-fun b!4158479 () Bool)

(declare-fun e!2580841 () Bool)

(declare-fun tp!1268921 () Bool)

(assert (=> b!4158479 (= e!2580841 (and tp_is_empty!21709 tp!1268921))))

(assert (=> b!4158428 (= tp!1268918 e!2580841)))

(assert (= (and b!4158428 ((_ is Cons!45375) (t!343530 l!3062))) b!4158479))

(check-sat (not b!4158436) tp_is_empty!21709 (not d!1229530) (not d!1229540) (not d!1229524) (not b!4158467) (not d!1229536) (not b!4158463) (not b!4158479) (not b!4158470))
(check-sat)
