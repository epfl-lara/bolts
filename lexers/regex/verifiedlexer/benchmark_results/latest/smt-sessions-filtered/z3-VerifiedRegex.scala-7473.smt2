; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!396114 () Bool)

(assert start!396114)

(declare-fun b!4158614 () Bool)

(declare-fun res!1703356 () Bool)

(declare-fun e!2580912 () Bool)

(assert (=> b!4158614 (=> (not res!1703356) (not e!2580912))))

(declare-datatypes ((B!2669 0))(
  ( (B!2670 (val!14626 Int)) )
))
(declare-fun e1!32 () B!2669)

(declare-fun e2!32 () B!2669)

(assert (=> b!4158614 (= res!1703356 (not (= e1!32 e2!32)))))

(declare-fun b!4158615 () Bool)

(declare-fun res!1703354 () Bool)

(assert (=> b!4158615 (=> (not res!1703354) (not e!2580912))))

(declare-datatypes ((List!45503 0))(
  ( (Nil!45379) (Cons!45379 (h!50799 B!2669) (t!343534 List!45503)) )
))
(declare-fun l!3062 () List!45503)

(declare-fun getIndex!858 (List!45503 B!2669) Int)

(assert (=> b!4158615 (= res!1703354 (< (getIndex!858 l!3062 e1!32) (getIndex!858 l!3062 e2!32)))))

(declare-fun b!4158616 () Bool)

(declare-fun res!1703352 () Bool)

(assert (=> b!4158616 (=> (not res!1703352) (not e!2580912))))

(get-info :version)

(assert (=> b!4158616 (= res!1703352 (and (or (not ((_ is Cons!45379) l!3062)) (not (= (h!50799 l!3062) e1!32))) ((_ is Cons!45379) l!3062) (not (= (h!50799 l!3062) e1!32))))))

(declare-fun b!4158617 () Bool)

(declare-fun head!8822 (List!45503) B!2669)

(assert (=> b!4158617 (= e!2580912 (not (not (= (head!8822 l!3062) e1!32))))))

(declare-fun contains!9237 (List!45503 B!2669) Bool)

(declare-fun tail!6663 (List!45503) List!45503)

(assert (=> b!4158617 (contains!9237 (tail!6663 l!3062) e1!32)))

(declare-datatypes ((Unit!64543 0))(
  ( (Unit!64544) )
))
(declare-fun lt!1482254 () Unit!64543)

(declare-fun lemmaContainsAndNotHdThenTlContains!14 (List!45503 B!2669) Unit!64543)

(assert (=> b!4158617 (= lt!1482254 (lemmaContainsAndNotHdThenTlContains!14 l!3062 e1!32))))

(declare-fun b!4158618 () Bool)

(declare-fun e!2580911 () Bool)

(declare-fun tp_is_empty!21717 () Bool)

(declare-fun tp!1268942 () Bool)

(assert (=> b!4158618 (= e!2580911 (and tp_is_empty!21717 tp!1268942))))

(declare-fun b!4158613 () Bool)

(declare-fun res!1703353 () Bool)

(assert (=> b!4158613 (=> (not res!1703353) (not e!2580912))))

(assert (=> b!4158613 (= res!1703353 (contains!9237 l!3062 e2!32))))

(declare-fun res!1703355 () Bool)

(assert (=> start!396114 (=> (not res!1703355) (not e!2580912))))

(assert (=> start!396114 (= res!1703355 (contains!9237 l!3062 e1!32))))

(assert (=> start!396114 e!2580912))

(assert (=> start!396114 e!2580911))

(assert (=> start!396114 tp_is_empty!21717))

(assert (= (and start!396114 res!1703355) b!4158613))

(assert (= (and b!4158613 res!1703353) b!4158614))

(assert (= (and b!4158614 res!1703356) b!4158615))

(assert (= (and b!4158615 res!1703354) b!4158616))

(assert (= (and b!4158616 res!1703352) b!4158617))

(assert (= (and start!396114 ((_ is Cons!45379) l!3062)) b!4158618))

(declare-fun m!4752377 () Bool)

(assert (=> b!4158615 m!4752377))

(declare-fun m!4752379 () Bool)

(assert (=> b!4158615 m!4752379))

(declare-fun m!4752381 () Bool)

(assert (=> b!4158617 m!4752381))

(declare-fun m!4752383 () Bool)

(assert (=> b!4158617 m!4752383))

(assert (=> b!4158617 m!4752383))

(declare-fun m!4752385 () Bool)

(assert (=> b!4158617 m!4752385))

(declare-fun m!4752387 () Bool)

(assert (=> b!4158617 m!4752387))

(declare-fun m!4752389 () Bool)

(assert (=> b!4158613 m!4752389))

(declare-fun m!4752391 () Bool)

(assert (=> start!396114 m!4752391))

(check-sat (not b!4158617) (not b!4158615) (not b!4158618) (not b!4158613) (not start!396114) tp_is_empty!21717)
(check-sat)
(get-model)

(declare-fun d!1229568 () Bool)

(declare-fun lt!1482260 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7028 (List!45503) (InoxSet B!2669))

(assert (=> d!1229568 (= lt!1482260 (select (content!7028 l!3062) e2!32))))

(declare-fun e!2580923 () Bool)

(assert (=> d!1229568 (= lt!1482260 e!2580923)))

(declare-fun res!1703367 () Bool)

(assert (=> d!1229568 (=> (not res!1703367) (not e!2580923))))

(assert (=> d!1229568 (= res!1703367 ((_ is Cons!45379) l!3062))))

(assert (=> d!1229568 (= (contains!9237 l!3062 e2!32) lt!1482260)))

(declare-fun b!4158629 () Bool)

(declare-fun e!2580924 () Bool)

(assert (=> b!4158629 (= e!2580923 e!2580924)))

(declare-fun res!1703368 () Bool)

(assert (=> b!4158629 (=> res!1703368 e!2580924)))

(assert (=> b!4158629 (= res!1703368 (= (h!50799 l!3062) e2!32))))

(declare-fun b!4158630 () Bool)

(assert (=> b!4158630 (= e!2580924 (contains!9237 (t!343534 l!3062) e2!32))))

(assert (= (and d!1229568 res!1703367) b!4158629))

(assert (= (and b!4158629 (not res!1703368)) b!4158630))

(declare-fun m!4752399 () Bool)

(assert (=> d!1229568 m!4752399))

(declare-fun m!4752401 () Bool)

(assert (=> d!1229568 m!4752401))

(declare-fun m!4752403 () Bool)

(assert (=> b!4158630 m!4752403))

(assert (=> b!4158613 d!1229568))

(declare-fun d!1229572 () Bool)

(assert (=> d!1229572 (= (head!8822 l!3062) (h!50799 l!3062))))

(assert (=> b!4158617 d!1229572))

(declare-fun d!1229574 () Bool)

(declare-fun lt!1482261 () Bool)

(assert (=> d!1229574 (= lt!1482261 (select (content!7028 (tail!6663 l!3062)) e1!32))))

(declare-fun e!2580925 () Bool)

(assert (=> d!1229574 (= lt!1482261 e!2580925)))

(declare-fun res!1703369 () Bool)

(assert (=> d!1229574 (=> (not res!1703369) (not e!2580925))))

(assert (=> d!1229574 (= res!1703369 ((_ is Cons!45379) (tail!6663 l!3062)))))

(assert (=> d!1229574 (= (contains!9237 (tail!6663 l!3062) e1!32) lt!1482261)))

(declare-fun b!4158631 () Bool)

(declare-fun e!2580926 () Bool)

(assert (=> b!4158631 (= e!2580925 e!2580926)))

(declare-fun res!1703370 () Bool)

(assert (=> b!4158631 (=> res!1703370 e!2580926)))

(assert (=> b!4158631 (= res!1703370 (= (h!50799 (tail!6663 l!3062)) e1!32))))

(declare-fun b!4158632 () Bool)

(assert (=> b!4158632 (= e!2580926 (contains!9237 (t!343534 (tail!6663 l!3062)) e1!32))))

(assert (= (and d!1229574 res!1703369) b!4158631))

(assert (= (and b!4158631 (not res!1703370)) b!4158632))

(assert (=> d!1229574 m!4752383))

(declare-fun m!4752405 () Bool)

(assert (=> d!1229574 m!4752405))

(declare-fun m!4752407 () Bool)

(assert (=> d!1229574 m!4752407))

(declare-fun m!4752409 () Bool)

(assert (=> b!4158632 m!4752409))

(assert (=> b!4158617 d!1229574))

(declare-fun d!1229576 () Bool)

(assert (=> d!1229576 (= (tail!6663 l!3062) (t!343534 l!3062))))

(assert (=> b!4158617 d!1229576))

(declare-fun d!1229578 () Bool)

(assert (=> d!1229578 (contains!9237 (tail!6663 l!3062) e1!32)))

(declare-fun lt!1482266 () Unit!64543)

(declare-fun choose!25466 (List!45503 B!2669) Unit!64543)

(assert (=> d!1229578 (= lt!1482266 (choose!25466 l!3062 e1!32))))

(assert (=> d!1229578 (contains!9237 l!3062 e1!32)))

(assert (=> d!1229578 (= (lemmaContainsAndNotHdThenTlContains!14 l!3062 e1!32) lt!1482266)))

(declare-fun bs!595582 () Bool)

(assert (= bs!595582 d!1229578))

(assert (=> bs!595582 m!4752383))

(assert (=> bs!595582 m!4752383))

(assert (=> bs!595582 m!4752385))

(declare-fun m!4752411 () Bool)

(assert (=> bs!595582 m!4752411))

(assert (=> bs!595582 m!4752391))

(assert (=> b!4158617 d!1229578))

(declare-fun b!4158659 () Bool)

(declare-fun e!2580945 () Int)

(assert (=> b!4158659 (= e!2580945 0)))

(declare-fun d!1229580 () Bool)

(declare-fun lt!1482274 () Int)

(assert (=> d!1229580 (>= lt!1482274 0)))

(assert (=> d!1229580 (= lt!1482274 e!2580945)))

(declare-fun c!711701 () Bool)

(assert (=> d!1229580 (= c!711701 (and ((_ is Cons!45379) l!3062) (= (h!50799 l!3062) e1!32)))))

(assert (=> d!1229580 (contains!9237 l!3062 e1!32)))

(assert (=> d!1229580 (= (getIndex!858 l!3062 e1!32) lt!1482274)))

(declare-fun b!4158660 () Bool)

(declare-fun e!2580946 () Int)

(assert (=> b!4158660 (= e!2580945 e!2580946)))

(declare-fun c!711700 () Bool)

(assert (=> b!4158660 (= c!711700 (and ((_ is Cons!45379) l!3062) (not (= (h!50799 l!3062) e1!32))))))

(declare-fun b!4158662 () Bool)

(assert (=> b!4158662 (= e!2580946 (- 1))))

(declare-fun b!4158661 () Bool)

(assert (=> b!4158661 (= e!2580946 (+ 1 (getIndex!858 (t!343534 l!3062) e1!32)))))

(assert (= (and d!1229580 c!711701) b!4158659))

(assert (= (and d!1229580 (not c!711701)) b!4158660))

(assert (= (and b!4158660 c!711700) b!4158661))

(assert (= (and b!4158660 (not c!711700)) b!4158662))

(assert (=> d!1229580 m!4752391))

(declare-fun m!4752425 () Bool)

(assert (=> b!4158661 m!4752425))

(assert (=> b!4158615 d!1229580))

(declare-fun b!4158665 () Bool)

(declare-fun e!2580949 () Int)

(assert (=> b!4158665 (= e!2580949 0)))

(declare-fun d!1229594 () Bool)

(declare-fun lt!1482277 () Int)

(assert (=> d!1229594 (>= lt!1482277 0)))

(assert (=> d!1229594 (= lt!1482277 e!2580949)))

(declare-fun c!711703 () Bool)

(assert (=> d!1229594 (= c!711703 (and ((_ is Cons!45379) l!3062) (= (h!50799 l!3062) e2!32)))))

(assert (=> d!1229594 (contains!9237 l!3062 e2!32)))

(assert (=> d!1229594 (= (getIndex!858 l!3062 e2!32) lt!1482277)))

(declare-fun b!4158666 () Bool)

(declare-fun e!2580950 () Int)

(assert (=> b!4158666 (= e!2580949 e!2580950)))

(declare-fun c!711702 () Bool)

(assert (=> b!4158666 (= c!711702 (and ((_ is Cons!45379) l!3062) (not (= (h!50799 l!3062) e2!32))))))

(declare-fun b!4158668 () Bool)

(assert (=> b!4158668 (= e!2580950 (- 1))))

(declare-fun b!4158667 () Bool)

(assert (=> b!4158667 (= e!2580950 (+ 1 (getIndex!858 (t!343534 l!3062) e2!32)))))

(assert (= (and d!1229594 c!711703) b!4158665))

(assert (= (and d!1229594 (not c!711703)) b!4158666))

(assert (= (and b!4158666 c!711702) b!4158667))

(assert (= (and b!4158666 (not c!711702)) b!4158668))

(assert (=> d!1229594 m!4752389))

(declare-fun m!4752431 () Bool)

(assert (=> b!4158667 m!4752431))

(assert (=> b!4158615 d!1229594))

(declare-fun d!1229596 () Bool)

(declare-fun lt!1482278 () Bool)

(assert (=> d!1229596 (= lt!1482278 (select (content!7028 l!3062) e1!32))))

(declare-fun e!2580951 () Bool)

(assert (=> d!1229596 (= lt!1482278 e!2580951)))

(declare-fun res!1703375 () Bool)

(assert (=> d!1229596 (=> (not res!1703375) (not e!2580951))))

(assert (=> d!1229596 (= res!1703375 ((_ is Cons!45379) l!3062))))

(assert (=> d!1229596 (= (contains!9237 l!3062 e1!32) lt!1482278)))

(declare-fun b!4158671 () Bool)

(declare-fun e!2580952 () Bool)

(assert (=> b!4158671 (= e!2580951 e!2580952)))

(declare-fun res!1703376 () Bool)

(assert (=> b!4158671 (=> res!1703376 e!2580952)))

(assert (=> b!4158671 (= res!1703376 (= (h!50799 l!3062) e1!32))))

(declare-fun b!4158672 () Bool)

(assert (=> b!4158672 (= e!2580952 (contains!9237 (t!343534 l!3062) e1!32))))

(assert (= (and d!1229596 res!1703375) b!4158671))

(assert (= (and b!4158671 (not res!1703376)) b!4158672))

(assert (=> d!1229596 m!4752399))

(declare-fun m!4752433 () Bool)

(assert (=> d!1229596 m!4752433))

(declare-fun m!4752435 () Bool)

(assert (=> b!4158672 m!4752435))

(assert (=> start!396114 d!1229596))

(declare-fun b!4158680 () Bool)

(declare-fun e!2580958 () Bool)

(declare-fun tp!1268948 () Bool)

(assert (=> b!4158680 (= e!2580958 (and tp_is_empty!21717 tp!1268948))))

(assert (=> b!4158618 (= tp!1268942 e!2580958)))

(assert (= (and b!4158618 ((_ is Cons!45379) (t!343534 l!3062))) b!4158680))

(check-sat (not d!1229596) (not b!4158667) (not d!1229574) (not b!4158680) (not d!1229594) (not b!4158632) (not d!1229580) (not d!1229578) (not d!1229568) (not b!4158630) tp_is_empty!21717 (not b!4158672) (not b!4158661))
(check-sat)
