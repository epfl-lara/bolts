; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!754696 () Bool)

(assert start!754696)

(declare-fun b!8018668 () Bool)

(declare-fun e!4723533 () Bool)

(declare-datatypes ((B!4097 0))(
  ( (B!4098 (val!32438 Int)) )
))
(declare-datatypes ((List!74950 0))(
  ( (Nil!74826) (Cons!74826 (h!81274 B!4097) (t!390693 List!74950)) )
))
(declare-fun l!3435 () List!74950)

(declare-fun p!2009 () List!74950)

(declare-fun getSuffix!3946 (List!74950 List!74950) List!74950)

(assert (=> b!8018668 (= e!4723533 (= (getSuffix!3946 l!3435 p!2009) Nil!74826))))

(declare-fun res!3170502 () Bool)

(assert (=> start!754696 (=> (not res!3170502) (not e!4723533))))

(declare-fun isPrefix!6773 (List!74950 List!74950) Bool)

(assert (=> start!754696 (= res!3170502 (isPrefix!6773 p!2009 l!3435))))

(assert (=> start!754696 e!4723533))

(declare-fun e!4723531 () Bool)

(assert (=> start!754696 e!4723531))

(declare-fun e!4723532 () Bool)

(assert (=> start!754696 e!4723532))

(declare-fun b!8018669 () Bool)

(declare-fun res!3170501 () Bool)

(assert (=> b!8018669 (=> (not res!3170501) (not e!4723533))))

(get-info :version)

(assert (=> b!8018669 (= res!3170501 (not ((_ is Cons!74826) p!2009)))))

(declare-fun b!8018670 () Bool)

(declare-fun tp_is_empty!53985 () Bool)

(declare-fun tp!2400122 () Bool)

(assert (=> b!8018670 (= e!4723532 (and tp_is_empty!53985 tp!2400122))))

(declare-fun b!8018671 () Bool)

(declare-fun tp!2400121 () Bool)

(assert (=> b!8018671 (= e!4723531 (and tp_is_empty!53985 tp!2400121))))

(declare-fun b!8018672 () Bool)

(declare-fun res!3170500 () Bool)

(assert (=> b!8018672 (=> (not res!3170500) (not e!4723533))))

(declare-fun size!43617 (List!74950) Int)

(assert (=> b!8018672 (= res!3170500 (< (size!43617 p!2009) (size!43617 l!3435)))))

(assert (= (and start!754696 res!3170502) b!8018672))

(assert (= (and b!8018672 res!3170500) b!8018669))

(assert (= (and b!8018669 res!3170501) b!8018668))

(assert (= (and start!754696 ((_ is Cons!74826) p!2009)) b!8018671))

(assert (= (and start!754696 ((_ is Cons!74826) l!3435)) b!8018670))

(declare-fun m!8381722 () Bool)

(assert (=> b!8018668 m!8381722))

(declare-fun m!8381724 () Bool)

(assert (=> start!754696 m!8381724))

(declare-fun m!8381726 () Bool)

(assert (=> b!8018672 m!8381726))

(declare-fun m!8381728 () Bool)

(assert (=> b!8018672 m!8381728))

(check-sat (not b!8018671) tp_is_empty!53985 (not b!8018670) (not start!754696) (not b!8018668) (not b!8018672))
(check-sat)
(get-model)

(declare-fun d!2390893 () Bool)

(declare-fun lt!2719366 () Int)

(assert (=> d!2390893 (>= lt!2719366 0)))

(declare-fun e!4723536 () Int)

(assert (=> d!2390893 (= lt!2719366 e!4723536)))

(declare-fun c!1471727 () Bool)

(assert (=> d!2390893 (= c!1471727 ((_ is Nil!74826) p!2009))))

(assert (=> d!2390893 (= (size!43617 p!2009) lt!2719366)))

(declare-fun b!8018677 () Bool)

(assert (=> b!8018677 (= e!4723536 0)))

(declare-fun b!8018678 () Bool)

(assert (=> b!8018678 (= e!4723536 (+ 1 (size!43617 (t!390693 p!2009))))))

(assert (= (and d!2390893 c!1471727) b!8018677))

(assert (= (and d!2390893 (not c!1471727)) b!8018678))

(declare-fun m!8381730 () Bool)

(assert (=> b!8018678 m!8381730))

(assert (=> b!8018672 d!2390893))

(declare-fun d!2390897 () Bool)

(declare-fun lt!2719367 () Int)

(assert (=> d!2390897 (>= lt!2719367 0)))

(declare-fun e!4723537 () Int)

(assert (=> d!2390897 (= lt!2719367 e!4723537)))

(declare-fun c!1471728 () Bool)

(assert (=> d!2390897 (= c!1471728 ((_ is Nil!74826) l!3435))))

(assert (=> d!2390897 (= (size!43617 l!3435) lt!2719367)))

(declare-fun b!8018679 () Bool)

(assert (=> b!8018679 (= e!4723537 0)))

(declare-fun b!8018680 () Bool)

(assert (=> b!8018680 (= e!4723537 (+ 1 (size!43617 (t!390693 l!3435))))))

(assert (= (and d!2390897 c!1471728) b!8018679))

(assert (= (and d!2390897 (not c!1471728)) b!8018680))

(declare-fun m!8381732 () Bool)

(assert (=> b!8018680 m!8381732))

(assert (=> b!8018672 d!2390897))

(declare-fun b!8018699 () Bool)

(declare-fun e!4723550 () Bool)

(declare-fun tail!15911 (List!74950) List!74950)

(assert (=> b!8018699 (= e!4723550 (isPrefix!6773 (tail!15911 p!2009) (tail!15911 l!3435)))))

(declare-fun b!8018697 () Bool)

(declare-fun e!4723548 () Bool)

(assert (=> b!8018697 (= e!4723548 e!4723550)))

(declare-fun res!3170511 () Bool)

(assert (=> b!8018697 (=> (not res!3170511) (not e!4723550))))

(assert (=> b!8018697 (= res!3170511 (not ((_ is Nil!74826) l!3435)))))

(declare-fun b!8018700 () Bool)

(declare-fun e!4723549 () Bool)

(assert (=> b!8018700 (= e!4723549 (>= (size!43617 l!3435) (size!43617 p!2009)))))

(declare-fun b!8018698 () Bool)

(declare-fun res!3170513 () Bool)

(assert (=> b!8018698 (=> (not res!3170513) (not e!4723550))))

(declare-fun head!16384 (List!74950) B!4097)

(assert (=> b!8018698 (= res!3170513 (= (head!16384 p!2009) (head!16384 l!3435)))))

(declare-fun d!2390899 () Bool)

(assert (=> d!2390899 e!4723549))

(declare-fun res!3170514 () Bool)

(assert (=> d!2390899 (=> res!3170514 e!4723549)))

(declare-fun lt!2719374 () Bool)

(assert (=> d!2390899 (= res!3170514 (not lt!2719374))))

(assert (=> d!2390899 (= lt!2719374 e!4723548)))

(declare-fun res!3170512 () Bool)

(assert (=> d!2390899 (=> res!3170512 e!4723548)))

(assert (=> d!2390899 (= res!3170512 ((_ is Nil!74826) p!2009))))

(assert (=> d!2390899 (= (isPrefix!6773 p!2009 l!3435) lt!2719374)))

(assert (= (and d!2390899 (not res!3170512)) b!8018697))

(assert (= (and b!8018697 res!3170511) b!8018698))

(assert (= (and b!8018698 res!3170513) b!8018699))

(assert (= (and d!2390899 (not res!3170514)) b!8018700))

(declare-fun m!8381738 () Bool)

(assert (=> b!8018699 m!8381738))

(declare-fun m!8381740 () Bool)

(assert (=> b!8018699 m!8381740))

(assert (=> b!8018699 m!8381738))

(assert (=> b!8018699 m!8381740))

(declare-fun m!8381742 () Bool)

(assert (=> b!8018699 m!8381742))

(assert (=> b!8018700 m!8381728))

(assert (=> b!8018700 m!8381726))

(declare-fun m!8381744 () Bool)

(assert (=> b!8018698 m!8381744))

(declare-fun m!8381746 () Bool)

(assert (=> b!8018698 m!8381746))

(assert (=> start!754696 d!2390899))

(declare-fun d!2390905 () Bool)

(declare-fun lt!2719379 () List!74950)

(declare-fun ++!18524 (List!74950 List!74950) List!74950)

(assert (=> d!2390905 (= (++!18524 p!2009 lt!2719379) l!3435)))

(declare-fun e!4723555 () List!74950)

(assert (=> d!2390905 (= lt!2719379 e!4723555)))

(declare-fun c!1471737 () Bool)

(assert (=> d!2390905 (= c!1471737 ((_ is Cons!74826) p!2009))))

(assert (=> d!2390905 (>= (size!43617 l!3435) (size!43617 p!2009))))

(assert (=> d!2390905 (= (getSuffix!3946 l!3435 p!2009) lt!2719379)))

(declare-fun b!8018709 () Bool)

(assert (=> b!8018709 (= e!4723555 (getSuffix!3946 (tail!15911 l!3435) (t!390693 p!2009)))))

(declare-fun b!8018710 () Bool)

(assert (=> b!8018710 (= e!4723555 l!3435)))

(assert (= (and d!2390905 c!1471737) b!8018709))

(assert (= (and d!2390905 (not c!1471737)) b!8018710))

(declare-fun m!8381748 () Bool)

(assert (=> d!2390905 m!8381748))

(assert (=> d!2390905 m!8381728))

(assert (=> d!2390905 m!8381726))

(assert (=> b!8018709 m!8381740))

(assert (=> b!8018709 m!8381740))

(declare-fun m!8381750 () Bool)

(assert (=> b!8018709 m!8381750))

(assert (=> b!8018668 d!2390905))

(declare-fun b!8018715 () Bool)

(declare-fun e!4723558 () Bool)

(declare-fun tp!2400125 () Bool)

(assert (=> b!8018715 (= e!4723558 (and tp_is_empty!53985 tp!2400125))))

(assert (=> b!8018670 (= tp!2400122 e!4723558)))

(assert (= (and b!8018670 ((_ is Cons!74826) (t!390693 l!3435))) b!8018715))

(declare-fun b!8018716 () Bool)

(declare-fun e!4723559 () Bool)

(declare-fun tp!2400126 () Bool)

(assert (=> b!8018716 (= e!4723559 (and tp_is_empty!53985 tp!2400126))))

(assert (=> b!8018671 (= tp!2400121 e!4723559)))

(assert (= (and b!8018671 ((_ is Cons!74826) (t!390693 p!2009))) b!8018716))

(check-sat (not b!8018680) (not b!8018700) tp_is_empty!53985 (not b!8018709) (not b!8018678) (not b!8018716) (not b!8018698) (not d!2390905) (not b!8018699) (not b!8018715))
(check-sat)
