; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!358564 () Bool)

(assert start!358564)

(declare-fun res!1551302 () Bool)

(declare-fun e!2366323 () Bool)

(assert (=> start!358564 (=> res!1551302 e!2366323)))

(declare-datatypes ((T!69820 0))(
  ( (T!69821 (val!13310 Int)) )
))
(declare-datatypes ((List!40563 0))(
  ( (Nil!40439) (Cons!40439 (h!45859 T!69820) (t!309146 List!40563)) )
))
(declare-datatypes ((IArray!24875 0))(
  ( (IArray!24876 (innerList!12495 List!40563)) )
))
(declare-datatypes ((Conc!12435 0))(
  ( (Node!12435 (left!31298 Conc!12435) (right!31628 Conc!12435) (csize!25100 Int) (cheight!12646 Int)) (Leaf!19251 (xs!15741 IArray!24875) (csize!25101 Int)) (Empty!12435) )
))
(declare-fun lt!1330453 () Conc!12435)

(declare-fun isBalanced!3614 (Conc!12435) Bool)

(assert (=> start!358564 (= res!1551302 (not (isBalanced!3614 lt!1330453)))))

(declare-datatypes ((BalanceConc!24464 0))(
  ( (BalanceConc!24465 (c!668207 Conc!12435)) )
))
(declare-fun thiss!5858 () BalanceConc!24464)

(declare-fun v!5448 () T!69820)

(declare-fun append!1096 (Conc!12435 T!69820) Conc!12435)

(assert (=> start!358564 (= lt!1330453 (append!1096 (c!668207 thiss!5858) v!5448))))

(assert (=> start!358564 e!2366323))

(declare-fun e!2366324 () Bool)

(declare-fun inv!54566 (BalanceConc!24464) Bool)

(assert (=> start!358564 (and (inv!54566 thiss!5858) e!2366324)))

(declare-fun tp_is_empty!19217 () Bool)

(assert (=> start!358564 tp_is_empty!19217))

(declare-fun b!3831907 () Bool)

(declare-fun list!15076 (BalanceConc!24464) List!40563)

(declare-fun $colon+!287 (List!40563 T!69820) List!40563)

(assert (=> b!3831907 (= e!2366323 (not (= (list!15076 (BalanceConc!24465 lt!1330453)) ($colon+!287 (list!15076 thiss!5858) v!5448))))))

(declare-fun b!3831908 () Bool)

(declare-fun tp!1159352 () Bool)

(declare-fun inv!54567 (Conc!12435) Bool)

(assert (=> b!3831908 (= e!2366324 (and (inv!54567 (c!668207 thiss!5858)) tp!1159352))))

(assert (= (and start!358564 (not res!1551302)) b!3831907))

(assert (= start!358564 b!3831908))

(declare-fun m!4386587 () Bool)

(assert (=> start!358564 m!4386587))

(declare-fun m!4386589 () Bool)

(assert (=> start!358564 m!4386589))

(declare-fun m!4386591 () Bool)

(assert (=> start!358564 m!4386591))

(declare-fun m!4386593 () Bool)

(assert (=> b!3831907 m!4386593))

(declare-fun m!4386595 () Bool)

(assert (=> b!3831907 m!4386595))

(assert (=> b!3831907 m!4386595))

(declare-fun m!4386597 () Bool)

(assert (=> b!3831907 m!4386597))

(declare-fun m!4386599 () Bool)

(assert (=> b!3831908 m!4386599))

(check-sat (not b!3831908) (not b!3831907) (not start!358564) tp_is_empty!19217)
(check-sat)
(get-model)

(declare-fun d!1137546 () Bool)

(declare-fun c!668213 () Bool)

(get-info :version)

(assert (=> d!1137546 (= c!668213 ((_ is Node!12435) (c!668207 thiss!5858)))))

(declare-fun e!2366335 () Bool)

(assert (=> d!1137546 (= (inv!54567 (c!668207 thiss!5858)) e!2366335)))

(declare-fun b!3831924 () Bool)

(declare-fun inv!54568 (Conc!12435) Bool)

(assert (=> b!3831924 (= e!2366335 (inv!54568 (c!668207 thiss!5858)))))

(declare-fun b!3831925 () Bool)

(declare-fun e!2366336 () Bool)

(assert (=> b!3831925 (= e!2366335 e!2366336)))

(declare-fun res!1551308 () Bool)

(assert (=> b!3831925 (= res!1551308 (not ((_ is Leaf!19251) (c!668207 thiss!5858))))))

(assert (=> b!3831925 (=> res!1551308 e!2366336)))

(declare-fun b!3831926 () Bool)

(declare-fun inv!54569 (Conc!12435) Bool)

(assert (=> b!3831926 (= e!2366336 (inv!54569 (c!668207 thiss!5858)))))

(assert (= (and d!1137546 c!668213) b!3831924))

(assert (= (and d!1137546 (not c!668213)) b!3831925))

(assert (= (and b!3831925 (not res!1551308)) b!3831926))

(declare-fun m!4386607 () Bool)

(assert (=> b!3831924 m!4386607))

(declare-fun m!4386609 () Bool)

(assert (=> b!3831926 m!4386609))

(assert (=> b!3831908 d!1137546))

(declare-fun d!1137552 () Bool)

(declare-fun list!15077 (Conc!12435) List!40563)

(assert (=> d!1137552 (= (list!15076 (BalanceConc!24465 lt!1330453)) (list!15077 (c!668207 (BalanceConc!24465 lt!1330453))))))

(declare-fun bs!582302 () Bool)

(assert (= bs!582302 d!1137552))

(declare-fun m!4386611 () Bool)

(assert (=> bs!582302 m!4386611))

(assert (=> b!3831907 d!1137552))

(declare-fun b!3831959 () Bool)

(declare-fun e!2366350 () List!40563)

(assert (=> b!3831959 (= e!2366350 (Cons!40439 v!5448 (list!15076 thiss!5858)))))

(declare-fun b!3831960 () Bool)

(declare-fun e!2366349 () Bool)

(declare-fun call!281746 () (_ BitVec 32))

(declare-fun call!281745 () (_ BitVec 32))

(assert (=> b!3831960 (= e!2366349 (= call!281746 call!281745))))

(declare-fun b!3831961 () Bool)

(assert (=> b!3831961 (= e!2366349 (= call!281746 (bvadd call!281745 #b00000000000000000000000000000001)))))

(declare-fun bm!281740 () Bool)

(declare-fun isize!105 (List!40563) (_ BitVec 32))

(assert (=> bm!281740 (= call!281745 (isize!105 (list!15076 thiss!5858)))))

(declare-fun bm!281741 () Bool)

(declare-fun lt!1330458 () List!40563)

(assert (=> bm!281741 (= call!281746 (isize!105 lt!1330458))))

(declare-fun b!3831962 () Bool)

(declare-fun res!1551326 () Bool)

(declare-fun e!2366351 () Bool)

(assert (=> b!3831962 (=> (not res!1551326) (not e!2366351))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5999 (List!40563) (InoxSet T!69820))

(assert (=> b!3831962 (= res!1551326 (= (content!5999 lt!1330458) ((_ map or) (content!5999 (list!15076 thiss!5858)) (store ((as const (Array T!69820 Bool)) false) v!5448 true))))))

(declare-fun b!3831963 () Bool)

(declare-fun ++!10203 (List!40563 List!40563) List!40563)

(assert (=> b!3831963 (= e!2366351 (= lt!1330458 (++!10203 (list!15076 thiss!5858) (Cons!40439 v!5448 Nil!40439))))))

(declare-fun b!3831964 () Bool)

(declare-fun res!1551327 () Bool)

(assert (=> b!3831964 (=> (not res!1551327) (not e!2366351))))

(declare-fun size!30481 (List!40563) Int)

(assert (=> b!3831964 (= res!1551327 (= (size!30481 lt!1330458) (+ (size!30481 (list!15076 thiss!5858)) 1)))))

(declare-fun b!3831965 () Bool)

(assert (=> b!3831965 (= e!2366350 (Cons!40439 (h!45859 (list!15076 thiss!5858)) ($colon+!287 (t!309146 (list!15076 thiss!5858)) v!5448)))))

(declare-fun d!1137554 () Bool)

(assert (=> d!1137554 e!2366351))

(declare-fun res!1551325 () Bool)

(assert (=> d!1137554 (=> (not res!1551325) (not e!2366351))))

(assert (=> d!1137554 (= res!1551325 ((_ is Cons!40439) lt!1330458))))

(assert (=> d!1137554 (= lt!1330458 e!2366350)))

(declare-fun c!668222 () Bool)

(assert (=> d!1137554 (= c!668222 ((_ is Nil!40439) (list!15076 thiss!5858)))))

(assert (=> d!1137554 (= ($colon+!287 (list!15076 thiss!5858) v!5448) lt!1330458)))

(declare-fun b!3831966 () Bool)

(declare-fun res!1551328 () Bool)

(assert (=> b!3831966 (=> (not res!1551328) (not e!2366351))))

(assert (=> b!3831966 (= res!1551328 e!2366349)))

(declare-fun c!668223 () Bool)

(assert (=> b!3831966 (= c!668223 (bvslt (isize!105 (list!15076 thiss!5858)) #b01111111111111111111111111111111))))

(assert (= (and d!1137554 c!668222) b!3831959))

(assert (= (and d!1137554 (not c!668222)) b!3831965))

(assert (= (and d!1137554 res!1551325) b!3831964))

(assert (= (and b!3831964 res!1551327) b!3831966))

(assert (= (and b!3831966 c!668223) b!3831961))

(assert (= (and b!3831966 (not c!668223)) b!3831960))

(assert (= (or b!3831961 b!3831960) bm!281741))

(assert (= (or b!3831961 b!3831960) bm!281740))

(assert (= (and b!3831966 res!1551328) b!3831962))

(assert (= (and b!3831962 res!1551326) b!3831963))

(declare-fun m!4386613 () Bool)

(assert (=> b!3831962 m!4386613))

(assert (=> b!3831962 m!4386595))

(declare-fun m!4386615 () Bool)

(assert (=> b!3831962 m!4386615))

(declare-fun m!4386617 () Bool)

(assert (=> b!3831962 m!4386617))

(declare-fun m!4386619 () Bool)

(assert (=> b!3831965 m!4386619))

(assert (=> b!3831966 m!4386595))

(declare-fun m!4386621 () Bool)

(assert (=> b!3831966 m!4386621))

(declare-fun m!4386623 () Bool)

(assert (=> b!3831964 m!4386623))

(assert (=> b!3831964 m!4386595))

(declare-fun m!4386625 () Bool)

(assert (=> b!3831964 m!4386625))

(assert (=> b!3831963 m!4386595))

(declare-fun m!4386627 () Bool)

(assert (=> b!3831963 m!4386627))

(assert (=> bm!281740 m!4386595))

(assert (=> bm!281740 m!4386621))

(declare-fun m!4386629 () Bool)

(assert (=> bm!281741 m!4386629))

(assert (=> b!3831907 d!1137554))

(declare-fun d!1137556 () Bool)

(assert (=> d!1137556 (= (list!15076 thiss!5858) (list!15077 (c!668207 thiss!5858)))))

(declare-fun bs!582303 () Bool)

(assert (= bs!582303 d!1137556))

(declare-fun m!4386631 () Bool)

(assert (=> bs!582303 m!4386631))

(assert (=> b!3831907 d!1137556))

(declare-fun b!3831999 () Bool)

(declare-fun res!1551357 () Bool)

(declare-fun e!2366364 () Bool)

(assert (=> b!3831999 (=> (not res!1551357) (not e!2366364))))

(declare-fun isEmpty!23871 (Conc!12435) Bool)

(assert (=> b!3831999 (= res!1551357 (not (isEmpty!23871 (left!31298 lt!1330453))))))

(declare-fun b!3832000 () Bool)

(declare-fun res!1551361 () Bool)

(assert (=> b!3832000 (=> (not res!1551361) (not e!2366364))))

(declare-fun height!1827 (Conc!12435) Int)

(assert (=> b!3832000 (= res!1551361 (<= (- (height!1827 (left!31298 lt!1330453)) (height!1827 (right!31628 lt!1330453))) 1))))

(declare-fun b!3832001 () Bool)

(assert (=> b!3832001 (= e!2366364 (not (isEmpty!23871 (right!31628 lt!1330453))))))

(declare-fun b!3832002 () Bool)

(declare-fun res!1551358 () Bool)

(assert (=> b!3832002 (=> (not res!1551358) (not e!2366364))))

(assert (=> b!3832002 (= res!1551358 (isBalanced!3614 (left!31298 lt!1330453)))))

(declare-fun b!3832004 () Bool)

(declare-fun e!2366363 () Bool)

(assert (=> b!3832004 (= e!2366363 e!2366364)))

(declare-fun res!1551360 () Bool)

(assert (=> b!3832004 (=> (not res!1551360) (not e!2366364))))

(assert (=> b!3832004 (= res!1551360 (<= (- 1) (- (height!1827 (left!31298 lt!1330453)) (height!1827 (right!31628 lt!1330453)))))))

(declare-fun d!1137558 () Bool)

(declare-fun res!1551359 () Bool)

(assert (=> d!1137558 (=> res!1551359 e!2366363)))

(assert (=> d!1137558 (= res!1551359 (not ((_ is Node!12435) lt!1330453)))))

(assert (=> d!1137558 (= (isBalanced!3614 lt!1330453) e!2366363)))

(declare-fun b!3832003 () Bool)

(declare-fun res!1551362 () Bool)

(assert (=> b!3832003 (=> (not res!1551362) (not e!2366364))))

(assert (=> b!3832003 (= res!1551362 (isBalanced!3614 (right!31628 lt!1330453)))))

(assert (= (and d!1137558 (not res!1551359)) b!3832004))

(assert (= (and b!3832004 res!1551360) b!3832000))

(assert (= (and b!3832000 res!1551361) b!3832002))

(assert (= (and b!3832002 res!1551358) b!3832003))

(assert (= (and b!3832003 res!1551362) b!3831999))

(assert (= (and b!3831999 res!1551357) b!3832001))

(declare-fun m!4386653 () Bool)

(assert (=> b!3832000 m!4386653))

(declare-fun m!4386655 () Bool)

(assert (=> b!3832000 m!4386655))

(declare-fun m!4386657 () Bool)

(assert (=> b!3832003 m!4386657))

(assert (=> b!3832004 m!4386653))

(assert (=> b!3832004 m!4386655))

(declare-fun m!4386659 () Bool)

(assert (=> b!3832001 m!4386659))

(declare-fun m!4386661 () Bool)

(assert (=> b!3832002 m!4386661))

(declare-fun m!4386663 () Bool)

(assert (=> b!3831999 m!4386663))

(assert (=> start!358564 d!1137558))

(declare-fun d!1137564 () Bool)

(declare-fun e!2366396 () Bool)

(assert (=> d!1137564 e!2366396))

(declare-fun res!1551383 () Bool)

(assert (=> d!1137564 (=> (not res!1551383) (not e!2366396))))

(declare-fun lt!1330538 () Conc!12435)

(assert (=> d!1137564 (= res!1551383 (isBalanced!3614 lt!1330538))))

(declare-fun e!2366393 () Conc!12435)

(assert (=> d!1137564 (= lt!1330538 e!2366393)))

(declare-fun c!668249 () Bool)

(assert (=> d!1137564 (= c!668249 ((_ is Empty!12435) (c!668207 thiss!5858)))))

(assert (=> d!1137564 (isBalanced!3614 (c!668207 thiss!5858))))

(assert (=> d!1137564 (= (append!1096 (c!668207 thiss!5858) v!5448) lt!1330538)))

(declare-fun bm!281784 () Bool)

(declare-fun call!281794 () List!40563)

(declare-fun c!668248 () Bool)

(assert (=> bm!281784 (= call!281794 (list!15077 (ite c!668248 (left!31298 (c!668207 thiss!5858)) (right!31628 (c!668207 thiss!5858)))))))

(declare-fun b!3832063 () Bool)

(declare-fun e!2366392 () Conc!12435)

(declare-fun lt!1330533 () Conc!12435)

(assert (=> b!3832063 (= e!2366392 (right!31628 lt!1330533))))

(declare-fun lt!1330536 () List!40563)

(declare-fun call!281789 () List!40563)

(declare-fun lt!1330548 () List!40563)

(declare-fun bm!281785 () Bool)

(declare-fun lt!1330535 () List!40563)

(declare-fun call!281791 () List!40563)

(assert (=> bm!281785 (= call!281789 (++!10203 (ite c!668248 call!281791 lt!1330548) (ite c!668248 lt!1330535 lt!1330536)))))

(declare-fun bm!281786 () Bool)

(declare-fun call!281796 () Conc!12435)

(declare-fun <>!368 (Conc!12435 Conc!12435) Conc!12435)

(assert (=> bm!281786 (= call!281796 (<>!368 (left!31298 (c!668207 thiss!5858)) (ite c!668248 lt!1330533 (left!31298 lt!1330533))))))

(declare-fun b!3832064 () Bool)

(declare-fun e!2366394 () Conc!12435)

(assert (=> b!3832064 (= e!2366393 e!2366394)))

(declare-fun c!668250 () Bool)

(assert (=> b!3832064 (= c!668250 ((_ is Node!12435) (c!668207 thiss!5858)))))

(declare-fun b!3832065 () Bool)

(declare-fun res!1551382 () Bool)

(assert (=> b!3832065 (=> (not res!1551382) (not e!2366396))))

(assert (=> b!3832065 (= res!1551382 (<= (height!1827 (c!668207 thiss!5858)) (height!1827 lt!1330538)))))

(declare-fun b!3832066 () Bool)

(declare-fun c!668247 () Bool)

(assert (=> b!3832066 (= c!668247 (< (csize!25101 (c!668207 thiss!5858)) 512))))

(declare-fun e!2366395 () Conc!12435)

(assert (=> b!3832066 (= e!2366394 e!2366395)))

(declare-fun bm!281787 () Bool)

(declare-fun lt!1330543 () List!40563)

(declare-fun lt!1330542 () List!40563)

(declare-fun lt!1330541 () List!40563)

(declare-fun call!281798 () List!40563)

(assert (=> bm!281787 (= call!281798 (++!10203 (ite c!668248 lt!1330542 lt!1330541) (ite c!668248 lt!1330535 lt!1330543)))))

(declare-fun b!3832067 () Bool)

(declare-fun append!1097 (IArray!24875 T!69820) IArray!24875)

(assert (=> b!3832067 (= e!2366395 (Leaf!19251 (append!1097 (xs!15741 (c!668207 thiss!5858)) v!5448) (+ (csize!25101 (c!668207 thiss!5858)) 1)))))

(declare-fun lt!1330539 () List!40563)

(declare-fun list!15079 (IArray!24875) List!40563)

(assert (=> b!3832067 (= lt!1330539 ($colon+!287 (list!15079 (xs!15741 (c!668207 thiss!5858))) v!5448))))

(declare-fun bm!281788 () Bool)

(declare-fun lt!1330549 () List!40563)

(declare-fun lt!1330546 () List!40563)

(assert (=> bm!281788 (= call!281791 (++!10203 (ite c!668248 lt!1330549 lt!1330543) (ite c!668248 lt!1330542 lt!1330546)))))

(declare-fun b!3832068 () Bool)

(declare-fun call!281793 () IArray!24875)

(assert (=> b!3832068 (= e!2366393 (Leaf!19251 call!281793 1))))

(declare-fun b!3832069 () Bool)

(declare-fun call!281790 () Conc!12435)

(assert (=> b!3832069 (= e!2366395 call!281790)))

(declare-fun b!3832070 () Bool)

(declare-fun res!1551381 () Bool)

(assert (=> b!3832070 (=> (not res!1551381) (not e!2366396))))

(assert (=> b!3832070 (= res!1551381 (<= (height!1827 lt!1330538) (+ (height!1827 (c!668207 thiss!5858)) 1)))))

(declare-fun bm!281789 () Bool)

(declare-fun call!281795 () List!40563)

(assert (=> bm!281789 (= call!281795 (list!15077 (ite c!668248 (right!31628 (c!668207 thiss!5858)) (left!31298 (c!668207 thiss!5858)))))))

(declare-fun bm!281790 () Bool)

(declare-fun c!668246 () Bool)

(assert (=> bm!281790 (= c!668246 c!668250)))

(assert (=> bm!281790 (= call!281790 (<>!368 (ite c!668250 call!281796 (c!668207 thiss!5858)) e!2366392))))

(declare-fun b!3832071 () Bool)

(declare-fun e!2366391 () Conc!12435)

(assert (=> b!3832071 (= e!2366391 call!281790)))

(assert (=> b!3832071 (= lt!1330548 call!281795)))

(assert (=> b!3832071 (= lt!1330536 (list!15077 (left!31298 lt!1330533)))))

(declare-fun lt!1330545 () List!40563)

(assert (=> b!3832071 (= lt!1330545 (list!15077 (right!31628 lt!1330533)))))

(declare-datatypes ((Unit!58206 0))(
  ( (Unit!58207) )
))
(declare-fun lt!1330540 () Unit!58206)

(declare-fun lemmaConcatAssociativity!2207 (List!40563 List!40563 List!40563) Unit!58206)

(assert (=> b!3832071 (= lt!1330540 (lemmaConcatAssociativity!2207 lt!1330548 lt!1330536 lt!1330545))))

(declare-fun call!281797 () List!40563)

(assert (=> b!3832071 (= (++!10203 call!281789 lt!1330545) (++!10203 lt!1330548 call!281797))))

(declare-fun lt!1330547 () Unit!58206)

(assert (=> b!3832071 (= lt!1330547 lt!1330540)))

(assert (=> b!3832071 (= lt!1330541 call!281795)))

(assert (=> b!3832071 (= lt!1330543 call!281794)))

(assert (=> b!3832071 (= lt!1330546 (Cons!40439 v!5448 Nil!40439))))

(declare-fun lt!1330534 () Unit!58206)

(declare-fun call!281792 () Unit!58206)

(assert (=> b!3832071 (= lt!1330534 call!281792)))

(assert (=> b!3832071 (= (++!10203 call!281798 lt!1330546) (++!10203 lt!1330541 call!281791))))

(declare-fun lt!1330537 () Unit!58206)

(assert (=> b!3832071 (= lt!1330537 lt!1330534)))

(declare-fun bm!281791 () Bool)

(declare-fun fill!205 (Int T!69820) IArray!24875)

(assert (=> bm!281791 (= call!281793 (fill!205 1 v!5448))))

(declare-fun b!3832072 () Bool)

(assert (=> b!3832072 (= e!2366391 call!281796)))

(assert (=> b!3832072 (= lt!1330549 call!281794)))

(assert (=> b!3832072 (= lt!1330542 call!281795)))

(assert (=> b!3832072 (= lt!1330535 (Cons!40439 v!5448 Nil!40439))))

(declare-fun lt!1330544 () Unit!58206)

(assert (=> b!3832072 (= lt!1330544 call!281792)))

(assert (=> b!3832072 (= call!281789 call!281797)))

(declare-fun lt!1330532 () Unit!58206)

(assert (=> b!3832072 (= lt!1330532 lt!1330544)))

(declare-fun b!3832073 () Bool)

(assert (=> b!3832073 (= e!2366392 (Leaf!19251 call!281793 1))))

(declare-fun b!3832074 () Bool)

(assert (=> b!3832074 (= e!2366396 (= (list!15077 lt!1330538) ($colon+!287 (list!15077 (c!668207 thiss!5858)) v!5448)))))

(declare-fun bm!281792 () Bool)

(assert (=> bm!281792 (= call!281797 (++!10203 (ite c!668248 lt!1330549 lt!1330536) (ite c!668248 call!281798 lt!1330545)))))

(declare-fun b!3832075 () Bool)

(assert (=> b!3832075 (= c!668248 (<= (height!1827 lt!1330533) (+ (height!1827 (left!31298 (c!668207 thiss!5858))) 1)))))

(assert (=> b!3832075 (= lt!1330533 (append!1096 (right!31628 (c!668207 thiss!5858)) v!5448))))

(assert (=> b!3832075 (= e!2366394 e!2366391)))

(declare-fun bm!281793 () Bool)

(assert (=> bm!281793 (= call!281792 (lemmaConcatAssociativity!2207 (ite c!668248 lt!1330549 lt!1330541) (ite c!668248 lt!1330542 lt!1330543) (ite c!668248 lt!1330535 lt!1330546)))))

(assert (= (and d!1137564 c!668249) b!3832068))

(assert (= (and d!1137564 (not c!668249)) b!3832064))

(assert (= (and b!3832064 c!668250) b!3832075))

(assert (= (and b!3832064 (not c!668250)) b!3832066))

(assert (= (and b!3832075 c!668248) b!3832072))

(assert (= (and b!3832075 (not c!668248)) b!3832071))

(assert (= (or b!3832072 b!3832071) bm!281786))

(assert (= (or b!3832072 b!3832071) bm!281788))

(assert (= (or b!3832072 b!3832071) bm!281793))

(assert (= (or b!3832072 b!3832071) bm!281789))

(assert (= (or b!3832072 b!3832071) bm!281784))

(assert (= (or b!3832072 b!3832071) bm!281787))

(assert (= (or b!3832072 b!3832071) bm!281785))

(assert (= (or b!3832072 b!3832071) bm!281792))

(assert (= (and b!3832066 c!668247) b!3832067))

(assert (= (and b!3832066 (not c!668247)) b!3832069))

(assert (= (or b!3832071 b!3832069) bm!281790))

(assert (= (and bm!281790 c!668246) b!3832063))

(assert (= (and bm!281790 (not c!668246)) b!3832073))

(assert (= (or b!3832068 b!3832073) bm!281791))

(assert (= (and d!1137564 res!1551383) b!3832065))

(assert (= (and b!3832065 res!1551382) b!3832070))

(assert (= (and b!3832070 res!1551381) b!3832074))

(declare-fun m!4386677 () Bool)

(assert (=> bm!281788 m!4386677))

(declare-fun m!4386679 () Bool)

(assert (=> bm!281785 m!4386679))

(declare-fun m!4386681 () Bool)

(assert (=> bm!281793 m!4386681))

(declare-fun m!4386683 () Bool)

(assert (=> b!3832067 m!4386683))

(declare-fun m!4386685 () Bool)

(assert (=> b!3832067 m!4386685))

(assert (=> b!3832067 m!4386685))

(declare-fun m!4386687 () Bool)

(assert (=> b!3832067 m!4386687))

(declare-fun m!4386689 () Bool)

(assert (=> b!3832065 m!4386689))

(declare-fun m!4386691 () Bool)

(assert (=> b!3832065 m!4386691))

(declare-fun m!4386693 () Bool)

(assert (=> bm!281789 m!4386693))

(declare-fun m!4386695 () Bool)

(assert (=> b!3832075 m!4386695))

(declare-fun m!4386697 () Bool)

(assert (=> b!3832075 m!4386697))

(declare-fun m!4386699 () Bool)

(assert (=> b!3832075 m!4386699))

(declare-fun m!4386701 () Bool)

(assert (=> bm!281784 m!4386701))

(declare-fun m!4386703 () Bool)

(assert (=> bm!281790 m!4386703))

(declare-fun m!4386705 () Bool)

(assert (=> bm!281787 m!4386705))

(declare-fun m!4386707 () Bool)

(assert (=> bm!281786 m!4386707))

(assert (=> b!3832070 m!4386691))

(assert (=> b!3832070 m!4386689))

(declare-fun m!4386709 () Bool)

(assert (=> bm!281791 m!4386709))

(declare-fun m!4386711 () Bool)

(assert (=> b!3832074 m!4386711))

(assert (=> b!3832074 m!4386631))

(assert (=> b!3832074 m!4386631))

(declare-fun m!4386713 () Bool)

(assert (=> b!3832074 m!4386713))

(declare-fun m!4386715 () Bool)

(assert (=> b!3832071 m!4386715))

(declare-fun m!4386717 () Bool)

(assert (=> b!3832071 m!4386717))

(declare-fun m!4386719 () Bool)

(assert (=> b!3832071 m!4386719))

(declare-fun m!4386721 () Bool)

(assert (=> b!3832071 m!4386721))

(declare-fun m!4386723 () Bool)

(assert (=> b!3832071 m!4386723))

(declare-fun m!4386725 () Bool)

(assert (=> b!3832071 m!4386725))

(declare-fun m!4386727 () Bool)

(assert (=> b!3832071 m!4386727))

(declare-fun m!4386729 () Bool)

(assert (=> d!1137564 m!4386729))

(declare-fun m!4386731 () Bool)

(assert (=> d!1137564 m!4386731))

(declare-fun m!4386733 () Bool)

(assert (=> bm!281792 m!4386733))

(assert (=> start!358564 d!1137564))

(declare-fun d!1137568 () Bool)

(assert (=> d!1137568 (= (inv!54566 thiss!5858) (isBalanced!3614 (c!668207 thiss!5858)))))

(declare-fun bs!582305 () Bool)

(assert (= bs!582305 d!1137568))

(assert (=> bs!582305 m!4386731))

(assert (=> start!358564 d!1137568))

(declare-fun tp!1159361 () Bool)

(declare-fun e!2366401 () Bool)

(declare-fun tp!1159360 () Bool)

(declare-fun b!3832084 () Bool)

(assert (=> b!3832084 (= e!2366401 (and (inv!54567 (left!31298 (c!668207 thiss!5858))) tp!1159361 (inv!54567 (right!31628 (c!668207 thiss!5858))) tp!1159360))))

(declare-fun b!3832086 () Bool)

(declare-fun e!2366402 () Bool)

(declare-fun tp!1159359 () Bool)

(assert (=> b!3832086 (= e!2366402 tp!1159359)))

(declare-fun b!3832085 () Bool)

(declare-fun inv!54572 (IArray!24875) Bool)

(assert (=> b!3832085 (= e!2366401 (and (inv!54572 (xs!15741 (c!668207 thiss!5858))) e!2366402))))

(assert (=> b!3831908 (= tp!1159352 (and (inv!54567 (c!668207 thiss!5858)) e!2366401))))

(assert (= (and b!3831908 ((_ is Node!12435) (c!668207 thiss!5858))) b!3832084))

(assert (= b!3832085 b!3832086))

(assert (= (and b!3831908 ((_ is Leaf!19251) (c!668207 thiss!5858))) b!3832085))

(declare-fun m!4386735 () Bool)

(assert (=> b!3832084 m!4386735))

(declare-fun m!4386737 () Bool)

(assert (=> b!3832084 m!4386737))

(declare-fun m!4386739 () Bool)

(assert (=> b!3832085 m!4386739))

(assert (=> b!3831908 m!4386599))

(check-sat (not d!1137564) (not b!3832075) (not b!3832084) (not b!3832002) (not d!1137556) (not d!1137552) (not b!3831962) (not b!3832070) (not bm!281790) (not bm!281741) (not bm!281787) (not b!3832001) (not bm!281784) (not b!3831999) (not b!3831965) tp_is_empty!19217 (not bm!281792) (not b!3831908) (not bm!281793) (not b!3832086) (not d!1137568) (not b!3832085) (not b!3831926) (not bm!281740) (not b!3831964) (not bm!281786) (not b!3832065) (not b!3832003) (not bm!281789) (not b!3832000) (not b!3831924) (not b!3832067) (not bm!281785) (not b!3832004) (not bm!281791) (not b!3831963) (not bm!281788) (not b!3831966) (not b!3832074) (not b!3832071))
(check-sat)
