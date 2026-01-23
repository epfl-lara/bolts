; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!755472 () Bool)

(assert start!755472)

(declare-fun res!3173454 () Bool)

(declare-fun e!4727352 () Bool)

(assert (=> start!755472 (=> (not res!3173454) (not e!4727352))))

(declare-datatypes ((B!4305 0))(
  ( (B!4306 (val!32542 Int)) )
))
(declare-datatypes ((List!75054 0))(
  ( (Nil!74930) (Cons!74930 (h!81378 B!4305) (t!390797 List!75054)) )
))
(declare-fun l1!1007 () List!75054)

(declare-fun l2!976 () List!75054)

(get-info :version)

(assert (=> start!755472 (= res!3173454 (and (= l1!1007 l2!976) (not ((_ is Cons!74930) l1!1007))))))

(assert (=> start!755472 e!4727352))

(declare-fun e!4727353 () Bool)

(assert (=> start!755472 e!4727353))

(declare-fun e!4727351 () Bool)

(assert (=> start!755472 e!4727351))

(declare-fun b!8024693 () Bool)

(declare-fun isPrefix!6853 (List!75054 List!75054) Bool)

(assert (=> b!8024693 (= e!4727352 (not (isPrefix!6853 l1!1007 l2!976)))))

(declare-fun b!8024694 () Bool)

(declare-fun tp_is_empty!54193 () Bool)

(declare-fun tp!2401571 () Bool)

(assert (=> b!8024694 (= e!4727353 (and tp_is_empty!54193 tp!2401571))))

(declare-fun b!8024695 () Bool)

(declare-fun tp!2401570 () Bool)

(assert (=> b!8024695 (= e!4727351 (and tp_is_empty!54193 tp!2401570))))

(assert (= (and start!755472 res!3173454) b!8024693))

(assert (= (and start!755472 ((_ is Cons!74930) l1!1007)) b!8024694))

(assert (= (and start!755472 ((_ is Cons!74930) l2!976)) b!8024695))

(declare-fun m!8387020 () Bool)

(assert (=> b!8024693 m!8387020))

(check-sat (not b!8024693) (not b!8024695) (not b!8024694) tp_is_empty!54193)
(check-sat)
(get-model)

(declare-fun b!8024724 () Bool)

(declare-fun e!4727375 () Bool)

(declare-fun tail!15991 (List!75054) List!75054)

(assert (=> b!8024724 (= e!4727375 (isPrefix!6853 (tail!15991 l1!1007) (tail!15991 l2!976)))))

(declare-fun d!2392813 () Bool)

(declare-fun e!4727374 () Bool)

(assert (=> d!2392813 e!4727374))

(declare-fun res!3173477 () Bool)

(assert (=> d!2392813 (=> res!3173477 e!4727374)))

(declare-fun lt!2720672 () Bool)

(assert (=> d!2392813 (= res!3173477 (not lt!2720672))))

(declare-fun e!4727373 () Bool)

(assert (=> d!2392813 (= lt!2720672 e!4727373)))

(declare-fun res!3173475 () Bool)

(assert (=> d!2392813 (=> res!3173475 e!4727373)))

(assert (=> d!2392813 (= res!3173475 ((_ is Nil!74930) l1!1007))))

(assert (=> d!2392813 (= (isPrefix!6853 l1!1007 l2!976) lt!2720672)))

(declare-fun b!8024722 () Bool)

(assert (=> b!8024722 (= e!4727373 e!4727375)))

(declare-fun res!3173478 () Bool)

(assert (=> b!8024722 (=> (not res!3173478) (not e!4727375))))

(assert (=> b!8024722 (= res!3173478 (not ((_ is Nil!74930) l2!976)))))

(declare-fun b!8024725 () Bool)

(declare-fun size!43699 (List!75054) Int)

(assert (=> b!8024725 (= e!4727374 (>= (size!43699 l2!976) (size!43699 l1!1007)))))

(declare-fun b!8024723 () Bool)

(declare-fun res!3173476 () Bool)

(assert (=> b!8024723 (=> (not res!3173476) (not e!4727375))))

(declare-fun head!16448 (List!75054) B!4305)

(assert (=> b!8024723 (= res!3173476 (= (head!16448 l1!1007) (head!16448 l2!976)))))

(assert (= (and d!2392813 (not res!3173475)) b!8024722))

(assert (= (and b!8024722 res!3173478) b!8024723))

(assert (= (and b!8024723 res!3173476) b!8024724))

(assert (= (and d!2392813 (not res!3173477)) b!8024725))

(declare-fun m!8387036 () Bool)

(assert (=> b!8024724 m!8387036))

(declare-fun m!8387038 () Bool)

(assert (=> b!8024724 m!8387038))

(assert (=> b!8024724 m!8387036))

(assert (=> b!8024724 m!8387038))

(declare-fun m!8387040 () Bool)

(assert (=> b!8024724 m!8387040))

(declare-fun m!8387042 () Bool)

(assert (=> b!8024725 m!8387042))

(declare-fun m!8387044 () Bool)

(assert (=> b!8024725 m!8387044))

(declare-fun m!8387046 () Bool)

(assert (=> b!8024723 m!8387046))

(declare-fun m!8387048 () Bool)

(assert (=> b!8024723 m!8387048))

(assert (=> b!8024693 d!2392813))

(declare-fun b!8024730 () Bool)

(declare-fun e!4727378 () Bool)

(declare-fun tp!2401578 () Bool)

(assert (=> b!8024730 (= e!4727378 (and tp_is_empty!54193 tp!2401578))))

(assert (=> b!8024695 (= tp!2401570 e!4727378)))

(assert (= (and b!8024695 ((_ is Cons!74930) (t!390797 l2!976))) b!8024730))

(declare-fun b!8024731 () Bool)

(declare-fun e!4727379 () Bool)

(declare-fun tp!2401579 () Bool)

(assert (=> b!8024731 (= e!4727379 (and tp_is_empty!54193 tp!2401579))))

(assert (=> b!8024694 (= tp!2401571 e!4727379)))

(assert (= (and b!8024694 ((_ is Cons!74930) (t!390797 l1!1007))) b!8024731))

(check-sat tp_is_empty!54193 (not b!8024725) (not b!8024730) (not b!8024723) (not b!8024731) (not b!8024724))
(check-sat)
