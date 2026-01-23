; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!396274 () Bool)

(assert start!396274)

(declare-fun res!1703791 () Bool)

(declare-fun e!2581480 () Bool)

(assert (=> start!396274 (=> (not res!1703791) (not e!2581480))))

(declare-datatypes ((B!2709 0))(
  ( (B!2710 (val!14646 Int)) )
))
(declare-datatypes ((List!45523 0))(
  ( (Nil!45399) (Cons!45399 (h!50819 B!2709) (t!343554 List!45523)) )
))
(declare-fun l!3122 () List!45523)

(declare-fun e1!48 () B!2709)

(declare-fun contains!9257 (List!45523 B!2709) Bool)

(assert (=> start!396274 (= res!1703791 (contains!9257 l!3122 e1!48))))

(assert (=> start!396274 e!2581480))

(declare-fun e!2581479 () Bool)

(assert (=> start!396274 e!2581479))

(declare-fun tp_is_empty!21757 () Bool)

(assert (=> start!396274 tp_is_empty!21757))

(declare-fun b!4159501 () Bool)

(declare-fun res!1703793 () Bool)

(assert (=> b!4159501 (=> (not res!1703793) (not e!2581480))))

(declare-fun e2!48 () B!2709)

(declare-fun getIndex!876 (List!45523 B!2709) Int)

(assert (=> b!4159501 (= res!1703793 (< (getIndex!876 l!3122 e1!48) (getIndex!876 l!3122 e2!48)))))

(declare-fun b!4159502 () Bool)

(declare-fun tp!1269044 () Bool)

(assert (=> b!4159502 (= e!2581479 (and tp_is_empty!21757 tp!1269044))))

(declare-fun b!4159503 () Bool)

(declare-fun res!1703792 () Bool)

(assert (=> b!4159503 (=> (not res!1703792) (not e!2581480))))

(declare-fun head!8826 (List!45523) B!2709)

(assert (=> b!4159503 (= res!1703792 (= (head!8826 l!3122) e1!48))))

(declare-fun b!4159504 () Bool)

(assert (=> b!4159504 (= e!2581480 (= l!3122 Nil!45399))))

(declare-fun b!4159505 () Bool)

(declare-fun res!1703794 () Bool)

(assert (=> b!4159505 (=> (not res!1703794) (not e!2581480))))

(assert (=> b!4159505 (= res!1703794 (not (= e1!48 e2!48)))))

(declare-fun b!4159506 () Bool)

(declare-fun res!1703790 () Bool)

(assert (=> b!4159506 (=> (not res!1703790) (not e!2581480))))

(assert (=> b!4159506 (= res!1703790 (contains!9257 l!3122 e2!48))))

(assert (= (and start!396274 res!1703791) b!4159506))

(assert (= (and b!4159506 res!1703790) b!4159505))

(assert (= (and b!4159505 res!1703794) b!4159503))

(assert (= (and b!4159503 res!1703792) b!4159501))

(assert (= (and b!4159501 res!1703793) b!4159504))

(get-info :version)

(assert (= (and start!396274 ((_ is Cons!45399) l!3122)) b!4159502))

(declare-fun m!4753199 () Bool)

(assert (=> start!396274 m!4753199))

(declare-fun m!4753201 () Bool)

(assert (=> b!4159501 m!4753201))

(declare-fun m!4753203 () Bool)

(assert (=> b!4159501 m!4753203))

(declare-fun m!4753205 () Bool)

(assert (=> b!4159503 m!4753205))

(declare-fun m!4753207 () Bool)

(assert (=> b!4159506 m!4753207))

(check-sat tp_is_empty!21757 (not b!4159506) (not b!4159502) (not start!396274) (not b!4159501) (not b!4159503))
(check-sat)
(get-model)

(declare-fun d!1229854 () Bool)

(assert (=> d!1229854 (= (head!8826 l!3122) (h!50819 l!3122))))

(assert (=> b!4159503 d!1229854))

(declare-fun d!1229858 () Bool)

(declare-fun lt!1482711 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7042 (List!45523) (InoxSet B!2709))

(assert (=> d!1229858 (= lt!1482711 (select (content!7042 l!3122) e1!48))))

(declare-fun e!2581494 () Bool)

(assert (=> d!1229858 (= lt!1482711 e!2581494)))

(declare-fun res!1703808 () Bool)

(assert (=> d!1229858 (=> (not res!1703808) (not e!2581494))))

(assert (=> d!1229858 (= res!1703808 ((_ is Cons!45399) l!3122))))

(assert (=> d!1229858 (= (contains!9257 l!3122 e1!48) lt!1482711)))

(declare-fun b!4159519 () Bool)

(declare-fun e!2581493 () Bool)

(assert (=> b!4159519 (= e!2581494 e!2581493)))

(declare-fun res!1703807 () Bool)

(assert (=> b!4159519 (=> res!1703807 e!2581493)))

(assert (=> b!4159519 (= res!1703807 (= (h!50819 l!3122) e1!48))))

(declare-fun b!4159520 () Bool)

(assert (=> b!4159520 (= e!2581493 (contains!9257 (t!343554 l!3122) e1!48))))

(assert (= (and d!1229858 res!1703808) b!4159519))

(assert (= (and b!4159519 (not res!1703807)) b!4159520))

(declare-fun m!4753219 () Bool)

(assert (=> d!1229858 m!4753219))

(declare-fun m!4753221 () Bool)

(assert (=> d!1229858 m!4753221))

(declare-fun m!4753223 () Bool)

(assert (=> b!4159520 m!4753223))

(assert (=> start!396274 d!1229858))

(declare-fun d!1229864 () Bool)

(declare-fun lt!1482712 () Bool)

(assert (=> d!1229864 (= lt!1482712 (select (content!7042 l!3122) e2!48))))

(declare-fun e!2581496 () Bool)

(assert (=> d!1229864 (= lt!1482712 e!2581496)))

(declare-fun res!1703810 () Bool)

(assert (=> d!1229864 (=> (not res!1703810) (not e!2581496))))

(assert (=> d!1229864 (= res!1703810 ((_ is Cons!45399) l!3122))))

(assert (=> d!1229864 (= (contains!9257 l!3122 e2!48) lt!1482712)))

(declare-fun b!4159521 () Bool)

(declare-fun e!2581495 () Bool)

(assert (=> b!4159521 (= e!2581496 e!2581495)))

(declare-fun res!1703809 () Bool)

(assert (=> b!4159521 (=> res!1703809 e!2581495)))

(assert (=> b!4159521 (= res!1703809 (= (h!50819 l!3122) e2!48))))

(declare-fun b!4159522 () Bool)

(assert (=> b!4159522 (= e!2581495 (contains!9257 (t!343554 l!3122) e2!48))))

(assert (= (and d!1229864 res!1703810) b!4159521))

(assert (= (and b!4159521 (not res!1703809)) b!4159522))

(assert (=> d!1229864 m!4753219))

(declare-fun m!4753225 () Bool)

(assert (=> d!1229864 m!4753225))

(declare-fun m!4753227 () Bool)

(assert (=> b!4159522 m!4753227))

(assert (=> b!4159506 d!1229864))

(declare-fun b!4159553 () Bool)

(declare-fun e!2581513 () Int)

(assert (=> b!4159553 (= e!2581513 (+ 1 (getIndex!876 (t!343554 l!3122) e1!48)))))

(declare-fun b!4159552 () Bool)

(declare-fun e!2581514 () Int)

(assert (=> b!4159552 (= e!2581514 e!2581513)))

(declare-fun c!711860 () Bool)

(assert (=> b!4159552 (= c!711860 (and ((_ is Cons!45399) l!3122) (not (= (h!50819 l!3122) e1!48))))))

(declare-fun b!4159551 () Bool)

(assert (=> b!4159551 (= e!2581514 0)))

(declare-fun d!1229866 () Bool)

(declare-fun lt!1482719 () Int)

(assert (=> d!1229866 (>= lt!1482719 0)))

(assert (=> d!1229866 (= lt!1482719 e!2581514)))

(declare-fun c!711861 () Bool)

(assert (=> d!1229866 (= c!711861 (and ((_ is Cons!45399) l!3122) (= (h!50819 l!3122) e1!48)))))

(assert (=> d!1229866 (contains!9257 l!3122 e1!48)))

(assert (=> d!1229866 (= (getIndex!876 l!3122 e1!48) lt!1482719)))

(declare-fun b!4159554 () Bool)

(assert (=> b!4159554 (= e!2581513 (- 1))))

(assert (= (and d!1229866 c!711861) b!4159551))

(assert (= (and d!1229866 (not c!711861)) b!4159552))

(assert (= (and b!4159552 c!711860) b!4159553))

(assert (= (and b!4159552 (not c!711860)) b!4159554))

(declare-fun m!4753233 () Bool)

(assert (=> b!4159553 m!4753233))

(assert (=> d!1229866 m!4753199))

(assert (=> b!4159501 d!1229866))

(declare-fun b!4159558 () Bool)

(declare-fun e!2581516 () Int)

(assert (=> b!4159558 (= e!2581516 (+ 1 (getIndex!876 (t!343554 l!3122) e2!48)))))

(declare-fun b!4159557 () Bool)

(declare-fun e!2581517 () Int)

(assert (=> b!4159557 (= e!2581517 e!2581516)))

(declare-fun c!711862 () Bool)

(assert (=> b!4159557 (= c!711862 (and ((_ is Cons!45399) l!3122) (not (= (h!50819 l!3122) e2!48))))))

(declare-fun b!4159556 () Bool)

(assert (=> b!4159556 (= e!2581517 0)))

(declare-fun d!1229870 () Bool)

(declare-fun lt!1482720 () Int)

(assert (=> d!1229870 (>= lt!1482720 0)))

(assert (=> d!1229870 (= lt!1482720 e!2581517)))

(declare-fun c!711863 () Bool)

(assert (=> d!1229870 (= c!711863 (and ((_ is Cons!45399) l!3122) (= (h!50819 l!3122) e2!48)))))

(assert (=> d!1229870 (contains!9257 l!3122 e2!48)))

(assert (=> d!1229870 (= (getIndex!876 l!3122 e2!48) lt!1482720)))

(declare-fun b!4159559 () Bool)

(assert (=> b!4159559 (= e!2581516 (- 1))))

(assert (= (and d!1229870 c!711863) b!4159556))

(assert (= (and d!1229870 (not c!711863)) b!4159557))

(assert (= (and b!4159557 c!711862) b!4159558))

(assert (= (and b!4159557 (not c!711862)) b!4159559))

(declare-fun m!4753235 () Bool)

(assert (=> b!4159558 m!4753235))

(assert (=> d!1229870 m!4753207))

(assert (=> b!4159501 d!1229870))

(declare-fun b!4159564 () Bool)

(declare-fun e!2581520 () Bool)

(declare-fun tp!1269050 () Bool)

(assert (=> b!4159564 (= e!2581520 (and tp_is_empty!21757 tp!1269050))))

(assert (=> b!4159502 (= tp!1269044 e!2581520)))

(assert (= (and b!4159502 ((_ is Cons!45399) (t!343554 l!3122))) b!4159564))

(check-sat (not d!1229858) (not d!1229864) (not b!4159522) (not d!1229866) (not b!4159558) (not d!1229870) (not b!4159520) (not b!4159553) tp_is_empty!21757 (not b!4159564))
(check-sat)
