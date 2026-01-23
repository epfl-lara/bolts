; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!408606 () Bool)

(assert start!408606)

(declare-fun b!4264318 () Bool)

(declare-fun e!2647790 () Bool)

(declare-datatypes ((B!2841 0))(
  ( (B!2842 (val!15250 Int)) )
))
(declare-datatypes ((List!47379 0))(
  ( (Nil!47255) (Cons!47255 (h!52675 B!2841) (t!353446 List!47379)) )
))
(declare-fun l1!1529 () List!47379)

(declare-fun ListPrimitiveSize!315 (List!47379) Int)

(assert (=> b!4264318 (= e!2647790 (< (ListPrimitiveSize!315 l1!1529) 0))))

(declare-fun b!4264320 () Bool)

(declare-fun e!2647789 () Bool)

(declare-fun tp_is_empty!22909 () Bool)

(declare-fun tp!1307321 () Bool)

(assert (=> b!4264320 (= e!2647789 (and tp_is_empty!22909 tp!1307321))))

(declare-fun res!1752489 () Bool)

(assert (=> start!408606 (=> (not res!1752489) (not e!2647790))))

(declare-fun b!25415 () B!2841)

(declare-fun contains!9776 (List!47379 B!2841) Bool)

(assert (=> start!408606 (= res!1752489 (not (contains!9776 l1!1529 b!25415)))))

(assert (=> start!408606 e!2647790))

(declare-fun e!2647788 () Bool)

(assert (=> start!408606 e!2647788))

(assert (=> start!408606 tp_is_empty!22909))

(assert (=> start!408606 e!2647789))

(declare-fun b!4264319 () Bool)

(declare-fun tp!1307322 () Bool)

(assert (=> b!4264319 (= e!2647788 (and tp_is_empty!22909 tp!1307322))))

(declare-fun b!4264317 () Bool)

(declare-fun res!1752488 () Bool)

(assert (=> b!4264317 (=> (not res!1752488) (not e!2647790))))

(declare-fun l2!1498 () List!47379)

(assert (=> b!4264317 (= res!1752488 (not (contains!9776 l2!1498 b!25415)))))

(assert (= (and start!408606 res!1752489) b!4264317))

(assert (= (and b!4264317 res!1752488) b!4264318))

(get-info :version)

(assert (= (and start!408606 ((_ is Cons!47255) l1!1529)) b!4264319))

(assert (= (and start!408606 ((_ is Cons!47255) l2!1498)) b!4264320))

(declare-fun m!4854677 () Bool)

(assert (=> b!4264318 m!4854677))

(declare-fun m!4854679 () Bool)

(assert (=> start!408606 m!4854679))

(declare-fun m!4854681 () Bool)

(assert (=> b!4264317 m!4854681))

(check-sat tp_is_empty!22909 (not b!4264320) (not start!408606) (not b!4264317) (not b!4264318) (not b!4264319))
(check-sat)
(get-model)

(declare-fun d!1256412 () Bool)

(declare-fun lt!1511384 () Int)

(assert (=> d!1256412 (>= lt!1511384 0)))

(declare-fun e!2647800 () Int)

(assert (=> d!1256412 (= lt!1511384 e!2647800)))

(declare-fun c!724685 () Bool)

(assert (=> d!1256412 (= c!724685 ((_ is Nil!47255) l1!1529))))

(assert (=> d!1256412 (= (ListPrimitiveSize!315 l1!1529) lt!1511384)))

(declare-fun b!4264335 () Bool)

(assert (=> b!4264335 (= e!2647800 0)))

(declare-fun b!4264336 () Bool)

(assert (=> b!4264336 (= e!2647800 (+ 1 (ListPrimitiveSize!315 (t!353446 l1!1529))))))

(assert (= (and d!1256412 c!724685) b!4264335))

(assert (= (and d!1256412 (not c!724685)) b!4264336))

(declare-fun m!4854685 () Bool)

(assert (=> b!4264336 m!4854685))

(assert (=> b!4264318 d!1256412))

(declare-fun d!1256416 () Bool)

(declare-fun lt!1511389 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7458 (List!47379) (InoxSet B!2841))

(assert (=> d!1256416 (= lt!1511389 (select (content!7458 l2!1498) b!25415))))

(declare-fun e!2647814 () Bool)

(assert (=> d!1256416 (= lt!1511389 e!2647814)))

(declare-fun res!1752502 () Bool)

(assert (=> d!1256416 (=> (not res!1752502) (not e!2647814))))

(assert (=> d!1256416 (= res!1752502 ((_ is Cons!47255) l2!1498))))

(assert (=> d!1256416 (= (contains!9776 l2!1498 b!25415) lt!1511389)))

(declare-fun b!4264351 () Bool)

(declare-fun e!2647813 () Bool)

(assert (=> b!4264351 (= e!2647814 e!2647813)))

(declare-fun res!1752503 () Bool)

(assert (=> b!4264351 (=> res!1752503 e!2647813)))

(assert (=> b!4264351 (= res!1752503 (= (h!52675 l2!1498) b!25415))))

(declare-fun b!4264352 () Bool)

(assert (=> b!4264352 (= e!2647813 (contains!9776 (t!353446 l2!1498) b!25415))))

(assert (= (and d!1256416 res!1752502) b!4264351))

(assert (= (and b!4264351 (not res!1752503)) b!4264352))

(declare-fun m!4854699 () Bool)

(assert (=> d!1256416 m!4854699))

(declare-fun m!4854701 () Bool)

(assert (=> d!1256416 m!4854701))

(declare-fun m!4854703 () Bool)

(assert (=> b!4264352 m!4854703))

(assert (=> b!4264317 d!1256416))

(declare-fun d!1256420 () Bool)

(declare-fun lt!1511390 () Bool)

(assert (=> d!1256420 (= lt!1511390 (select (content!7458 l1!1529) b!25415))))

(declare-fun e!2647816 () Bool)

(assert (=> d!1256420 (= lt!1511390 e!2647816)))

(declare-fun res!1752504 () Bool)

(assert (=> d!1256420 (=> (not res!1752504) (not e!2647816))))

(assert (=> d!1256420 (= res!1752504 ((_ is Cons!47255) l1!1529))))

(assert (=> d!1256420 (= (contains!9776 l1!1529 b!25415) lt!1511390)))

(declare-fun b!4264353 () Bool)

(declare-fun e!2647815 () Bool)

(assert (=> b!4264353 (= e!2647816 e!2647815)))

(declare-fun res!1752505 () Bool)

(assert (=> b!4264353 (=> res!1752505 e!2647815)))

(assert (=> b!4264353 (= res!1752505 (= (h!52675 l1!1529) b!25415))))

(declare-fun b!4264354 () Bool)

(assert (=> b!4264354 (= e!2647815 (contains!9776 (t!353446 l1!1529) b!25415))))

(assert (= (and d!1256420 res!1752504) b!4264353))

(assert (= (and b!4264353 (not res!1752505)) b!4264354))

(declare-fun m!4854705 () Bool)

(assert (=> d!1256420 m!4854705))

(declare-fun m!4854707 () Bool)

(assert (=> d!1256420 m!4854707))

(declare-fun m!4854709 () Bool)

(assert (=> b!4264354 m!4854709))

(assert (=> start!408606 d!1256420))

(declare-fun b!4264359 () Bool)

(declare-fun e!2647819 () Bool)

(declare-fun tp!1307329 () Bool)

(assert (=> b!4264359 (= e!2647819 (and tp_is_empty!22909 tp!1307329))))

(assert (=> b!4264320 (= tp!1307321 e!2647819)))

(assert (= (and b!4264320 ((_ is Cons!47255) (t!353446 l2!1498))) b!4264359))

(declare-fun b!4264360 () Bool)

(declare-fun e!2647820 () Bool)

(declare-fun tp!1307330 () Bool)

(assert (=> b!4264360 (= e!2647820 (and tp_is_empty!22909 tp!1307330))))

(assert (=> b!4264319 (= tp!1307322 e!2647820)))

(assert (= (and b!4264319 ((_ is Cons!47255) (t!353446 l1!1529))) b!4264360))

(check-sat (not b!4264359) tp_is_empty!22909 (not b!4264336) (not b!4264360) (not d!1256420) (not d!1256416) (not b!4264352) (not b!4264354))
(check-sat)
