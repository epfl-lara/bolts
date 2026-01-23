; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!183450 () Bool)

(assert start!183450)

(declare-fun b_free!51501 () Bool)

(declare-fun b_next!52205 () Bool)

(assert (=> start!183450 (= b_free!51501 (not b_next!52205))))

(declare-fun tp!520743 () Bool)

(declare-fun b_and!143627 () Bool)

(assert (=> start!183450 (= tp!520743 b_and!143627)))

(declare-datatypes ((T!31850 0))(
  ( (T!31851 (val!5750 Int)) )
))
(declare-datatypes ((List!20350 0))(
  ( (Nil!20280) (Cons!20280 (h!25681 T!31850) (t!171801 List!20350)) )
))
(declare-datatypes ((IArray!13415 0))(
  ( (IArray!13416 (innerList!6765 List!20350)) )
))
(declare-datatypes ((Conc!6705 0))(
  ( (Node!6705 (left!16207 Conc!6705) (right!16537 Conc!6705) (csize!13640 Int) (cheight!6916 Int)) (Leaf!9794 (xs!9581 IArray!13415) (csize!13641 Int)) (Empty!6705) )
))
(declare-fun t!3734 () Conc!6705)

(declare-fun b!1841640 () Bool)

(declare-fun tp!520746 () Bool)

(declare-fun e!1176894 () Bool)

(declare-fun tp!520744 () Bool)

(declare-fun inv!26492 (Conc!6705) Bool)

(assert (=> b!1841640 (= e!1176894 (and (inv!26492 (left!16207 t!3734)) tp!520746 (inv!26492 (right!16537 t!3734)) tp!520744))))

(declare-fun res!827576 () Bool)

(declare-fun e!1176892 () Bool)

(assert (=> start!183450 (=> (not res!827576) (not e!1176892))))

(get-info :version)

(assert (=> start!183450 (= res!827576 (and (not ((_ is Empty!6705) t!3734)) ((_ is Leaf!9794) t!3734)))))

(assert (=> start!183450 e!1176892))

(assert (=> start!183450 (and (inv!26492 t!3734) e!1176894)))

(assert (=> start!183450 tp!520743))

(declare-fun b!1841641 () Bool)

(declare-fun e!1176893 () Bool)

(declare-fun inv!26493 (IArray!13415) Bool)

(assert (=> b!1841641 (= e!1176894 (and (inv!26493 (xs!9581 t!3734)) e!1176893))))

(declare-fun b!1841639 () Bool)

(declare-fun p!1470 () Int)

(declare-fun exists!656 (IArray!13415 Int) Bool)

(declare-fun exists!657 (List!20350 Int) Bool)

(declare-fun list!8244 (Conc!6705) List!20350)

(assert (=> b!1841639 (= e!1176892 (not (= (exists!656 (xs!9581 t!3734) p!1470) (exists!657 (list!8244 t!3734) p!1470))))))

(declare-fun b!1841642 () Bool)

(declare-fun tp!520745 () Bool)

(assert (=> b!1841642 (= e!1176893 tp!520745)))

(assert (= (and start!183450 res!827576) b!1841639))

(assert (= (and start!183450 ((_ is Node!6705) t!3734)) b!1841640))

(assert (= b!1841641 b!1841642))

(assert (= (and start!183450 ((_ is Leaf!9794) t!3734)) b!1841641))

(declare-fun m!2269191 () Bool)

(assert (=> b!1841640 m!2269191))

(declare-fun m!2269193 () Bool)

(assert (=> b!1841640 m!2269193))

(declare-fun m!2269195 () Bool)

(assert (=> start!183450 m!2269195))

(declare-fun m!2269197 () Bool)

(assert (=> b!1841641 m!2269197))

(declare-fun m!2269199 () Bool)

(assert (=> b!1841639 m!2269199))

(declare-fun m!2269201 () Bool)

(assert (=> b!1841639 m!2269201))

(assert (=> b!1841639 m!2269201))

(declare-fun m!2269203 () Bool)

(assert (=> b!1841639 m!2269203))

(check-sat (not b!1841642) (not b!1841641) (not start!183450) (not b!1841640) (not b!1841639) b_and!143627 (not b_next!52205))
(check-sat b_and!143627 (not b_next!52205))
(get-model)

(declare-fun d!563177 () Bool)

(declare-fun c!300573 () Bool)

(assert (=> d!563177 (= c!300573 ((_ is Node!6705) t!3734))))

(declare-fun e!1176905 () Bool)

(assert (=> d!563177 (= (inv!26492 t!3734) e!1176905)))

(declare-fun b!1841658 () Bool)

(declare-fun inv!26495 (Conc!6705) Bool)

(assert (=> b!1841658 (= e!1176905 (inv!26495 t!3734))))

(declare-fun b!1841659 () Bool)

(declare-fun e!1176906 () Bool)

(assert (=> b!1841659 (= e!1176905 e!1176906)))

(declare-fun res!827582 () Bool)

(assert (=> b!1841659 (= res!827582 (not ((_ is Leaf!9794) t!3734)))))

(assert (=> b!1841659 (=> res!827582 e!1176906)))

(declare-fun b!1841660 () Bool)

(declare-fun inv!26497 (Conc!6705) Bool)

(assert (=> b!1841660 (= e!1176906 (inv!26497 t!3734))))

(assert (= (and d!563177 c!300573) b!1841658))

(assert (= (and d!563177 (not c!300573)) b!1841659))

(assert (= (and b!1841659 (not res!827582)) b!1841660))

(declare-fun m!2269209 () Bool)

(assert (=> b!1841658 m!2269209))

(declare-fun m!2269211 () Bool)

(assert (=> b!1841660 m!2269211))

(assert (=> start!183450 d!563177))

(declare-fun d!563181 () Bool)

(declare-fun lt!714324 () Bool)

(declare-fun list!8246 (IArray!13415) List!20350)

(assert (=> d!563181 (= lt!714324 (exists!657 (list!8246 (xs!9581 t!3734)) p!1470))))

(declare-fun choose!11589 (IArray!13415 Int) Bool)

(assert (=> d!563181 (= lt!714324 (choose!11589 (xs!9581 t!3734) p!1470))))

(assert (=> d!563181 (= (exists!656 (xs!9581 t!3734) p!1470) lt!714324)))

(declare-fun bs!408629 () Bool)

(assert (= bs!408629 d!563181))

(declare-fun m!2269219 () Bool)

(assert (=> bs!408629 m!2269219))

(assert (=> bs!408629 m!2269219))

(declare-fun m!2269221 () Bool)

(assert (=> bs!408629 m!2269221))

(declare-fun m!2269223 () Bool)

(assert (=> bs!408629 m!2269223))

(assert (=> b!1841639 d!563181))

(declare-fun d!563185 () Bool)

(assert (=> d!563185 true))

(declare-fun order!13079 () Int)

(declare-fun lambda!72316 () Int)

(declare-fun dynLambda!10080 (Int Int) Int)

(assert (=> d!563185 (< (dynLambda!10080 order!13079 p!1470) (dynLambda!10080 order!13079 lambda!72316))))

(declare-fun forall!4358 (List!20350 Int) Bool)

(assert (=> d!563185 (= (exists!657 (list!8244 t!3734) p!1470) (not (forall!4358 (list!8244 t!3734) lambda!72316)))))

(declare-fun bs!408631 () Bool)

(assert (= bs!408631 d!563185))

(assert (=> bs!408631 m!2269201))

(declare-fun m!2269227 () Bool)

(assert (=> bs!408631 m!2269227))

(assert (=> b!1841639 d!563185))

(declare-fun d!563189 () Bool)

(declare-fun c!300584 () Bool)

(assert (=> d!563189 (= c!300584 ((_ is Empty!6705) t!3734))))

(declare-fun e!1176917 () List!20350)

(assert (=> d!563189 (= (list!8244 t!3734) e!1176917)))

(declare-fun b!1841686 () Bool)

(declare-fun e!1176918 () List!20350)

(assert (=> b!1841686 (= e!1176917 e!1176918)))

(declare-fun c!300585 () Bool)

(assert (=> b!1841686 (= c!300585 ((_ is Leaf!9794) t!3734))))

(declare-fun b!1841688 () Bool)

(declare-fun ++!5514 (List!20350 List!20350) List!20350)

(assert (=> b!1841688 (= e!1176918 (++!5514 (list!8244 (left!16207 t!3734)) (list!8244 (right!16537 t!3734))))))

(declare-fun b!1841685 () Bool)

(assert (=> b!1841685 (= e!1176917 Nil!20280)))

(declare-fun b!1841687 () Bool)

(assert (=> b!1841687 (= e!1176918 (list!8246 (xs!9581 t!3734)))))

(assert (= (and d!563189 c!300584) b!1841685))

(assert (= (and d!563189 (not c!300584)) b!1841686))

(assert (= (and b!1841686 c!300585) b!1841687))

(assert (= (and b!1841686 (not c!300585)) b!1841688))

(declare-fun m!2269237 () Bool)

(assert (=> b!1841688 m!2269237))

(declare-fun m!2269239 () Bool)

(assert (=> b!1841688 m!2269239))

(assert (=> b!1841688 m!2269237))

(assert (=> b!1841688 m!2269239))

(declare-fun m!2269241 () Bool)

(assert (=> b!1841688 m!2269241))

(assert (=> b!1841687 m!2269219))

(assert (=> b!1841639 d!563189))

(declare-fun d!563195 () Bool)

(declare-fun size!16077 (List!20350) Int)

(assert (=> d!563195 (= (inv!26493 (xs!9581 t!3734)) (<= (size!16077 (innerList!6765 (xs!9581 t!3734))) 2147483647))))

(declare-fun bs!408633 () Bool)

(assert (= bs!408633 d!563195))

(declare-fun m!2269251 () Bool)

(assert (=> bs!408633 m!2269251))

(assert (=> b!1841641 d!563195))

(declare-fun d!563199 () Bool)

(declare-fun c!300588 () Bool)

(assert (=> d!563199 (= c!300588 ((_ is Node!6705) (left!16207 t!3734)))))

(declare-fun e!1176926 () Bool)

(assert (=> d!563199 (= (inv!26492 (left!16207 t!3734)) e!1176926)))

(declare-fun b!1841700 () Bool)

(assert (=> b!1841700 (= e!1176926 (inv!26495 (left!16207 t!3734)))))

(declare-fun b!1841701 () Bool)

(declare-fun e!1176927 () Bool)

(assert (=> b!1841701 (= e!1176926 e!1176927)))

(declare-fun res!827585 () Bool)

(assert (=> b!1841701 (= res!827585 (not ((_ is Leaf!9794) (left!16207 t!3734))))))

(assert (=> b!1841701 (=> res!827585 e!1176927)))

(declare-fun b!1841702 () Bool)

(assert (=> b!1841702 (= e!1176927 (inv!26497 (left!16207 t!3734)))))

(assert (= (and d!563199 c!300588) b!1841700))

(assert (= (and d!563199 (not c!300588)) b!1841701))

(assert (= (and b!1841701 (not res!827585)) b!1841702))

(declare-fun m!2269253 () Bool)

(assert (=> b!1841700 m!2269253))

(declare-fun m!2269255 () Bool)

(assert (=> b!1841702 m!2269255))

(assert (=> b!1841640 d!563199))

(declare-fun d!563201 () Bool)

(declare-fun c!300589 () Bool)

(assert (=> d!563201 (= c!300589 ((_ is Node!6705) (right!16537 t!3734)))))

(declare-fun e!1176930 () Bool)

(assert (=> d!563201 (= (inv!26492 (right!16537 t!3734)) e!1176930)))

(declare-fun b!1841709 () Bool)

(assert (=> b!1841709 (= e!1176930 (inv!26495 (right!16537 t!3734)))))

(declare-fun b!1841711 () Bool)

(declare-fun e!1176931 () Bool)

(assert (=> b!1841711 (= e!1176930 e!1176931)))

(declare-fun res!827586 () Bool)

(assert (=> b!1841711 (= res!827586 (not ((_ is Leaf!9794) (right!16537 t!3734))))))

(assert (=> b!1841711 (=> res!827586 e!1176931)))

(declare-fun b!1841713 () Bool)

(assert (=> b!1841713 (= e!1176931 (inv!26497 (right!16537 t!3734)))))

(assert (= (and d!563201 c!300589) b!1841709))

(assert (= (and d!563201 (not c!300589)) b!1841711))

(assert (= (and b!1841711 (not res!827586)) b!1841713))

(declare-fun m!2269257 () Bool)

(assert (=> b!1841709 m!2269257))

(declare-fun m!2269259 () Bool)

(assert (=> b!1841713 m!2269259))

(assert (=> b!1841640 d!563201))

(declare-fun b!1841728 () Bool)

(declare-fun e!1176943 () Bool)

(declare-fun tp!520768 () Bool)

(declare-fun tp!520769 () Bool)

(assert (=> b!1841728 (= e!1176943 (and (inv!26492 (left!16207 (left!16207 t!3734))) tp!520768 (inv!26492 (right!16537 (left!16207 t!3734))) tp!520769))))

(declare-fun b!1841730 () Bool)

(declare-fun e!1176942 () Bool)

(declare-fun tp!520770 () Bool)

(assert (=> b!1841730 (= e!1176942 tp!520770)))

(declare-fun b!1841729 () Bool)

(assert (=> b!1841729 (= e!1176943 (and (inv!26493 (xs!9581 (left!16207 t!3734))) e!1176942))))

(assert (=> b!1841640 (= tp!520746 (and (inv!26492 (left!16207 t!3734)) e!1176943))))

(assert (= (and b!1841640 ((_ is Node!6705) (left!16207 t!3734))) b!1841728))

(assert (= b!1841729 b!1841730))

(assert (= (and b!1841640 ((_ is Leaf!9794) (left!16207 t!3734))) b!1841729))

(declare-fun m!2269273 () Bool)

(assert (=> b!1841728 m!2269273))

(declare-fun m!2269275 () Bool)

(assert (=> b!1841728 m!2269275))

(declare-fun m!2269277 () Bool)

(assert (=> b!1841729 m!2269277))

(assert (=> b!1841640 m!2269191))

(declare-fun b!1841731 () Bool)

(declare-fun tp!520771 () Bool)

(declare-fun tp!520772 () Bool)

(declare-fun e!1176945 () Bool)

(assert (=> b!1841731 (= e!1176945 (and (inv!26492 (left!16207 (right!16537 t!3734))) tp!520771 (inv!26492 (right!16537 (right!16537 t!3734))) tp!520772))))

(declare-fun b!1841733 () Bool)

(declare-fun e!1176944 () Bool)

(declare-fun tp!520773 () Bool)

(assert (=> b!1841733 (= e!1176944 tp!520773)))

(declare-fun b!1841732 () Bool)

(assert (=> b!1841732 (= e!1176945 (and (inv!26493 (xs!9581 (right!16537 t!3734))) e!1176944))))

(assert (=> b!1841640 (= tp!520744 (and (inv!26492 (right!16537 t!3734)) e!1176945))))

(assert (= (and b!1841640 ((_ is Node!6705) (right!16537 t!3734))) b!1841731))

(assert (= b!1841732 b!1841733))

(assert (= (and b!1841640 ((_ is Leaf!9794) (right!16537 t!3734))) b!1841732))

(declare-fun m!2269279 () Bool)

(assert (=> b!1841731 m!2269279))

(declare-fun m!2269281 () Bool)

(assert (=> b!1841731 m!2269281))

(declare-fun m!2269283 () Bool)

(assert (=> b!1841732 m!2269283))

(assert (=> b!1841640 m!2269193))

(declare-fun b!1841738 () Bool)

(declare-fun e!1176948 () Bool)

(declare-fun tp_is_empty!8349 () Bool)

(declare-fun tp!520776 () Bool)

(assert (=> b!1841738 (= e!1176948 (and tp_is_empty!8349 tp!520776))))

(assert (=> b!1841642 (= tp!520745 e!1176948)))

(assert (= (and b!1841642 ((_ is Cons!20280) (innerList!6765 (xs!9581 t!3734)))) b!1841738))

(check-sat (not b!1841658) (not b!1841660) (not b!1841728) (not b!1841688) (not b!1841640) (not b!1841732) (not b!1841730) (not b!1841713) b_and!143627 (not b!1841731) (not b!1841729) (not d!563195) (not b!1841738) (not b!1841687) (not d!563185) (not b!1841702) (not b!1841709) tp_is_empty!8349 (not b!1841700) (not d!563181) (not b_next!52205) (not b!1841733))
(check-sat b_and!143627 (not b_next!52205))
