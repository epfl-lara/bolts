; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!749120 () Bool)

(assert start!749120)

(declare-fun b!7937541 () Bool)

(declare-fun e!4683602 () Bool)

(declare-datatypes ((T!145952 0))(
  ( (T!145953 (val!32081 Int)) )
))
(declare-datatypes ((List!74593 0))(
  ( (Nil!74469) (Cons!74469 (h!80917 T!145952) (t!390308 List!74593)) )
))
(declare-datatypes ((IArray!31903 0))(
  ( (IArray!31904 (innerList!16009 List!74593)) )
))
(declare-datatypes ((Conc!15921 0))(
  ( (Node!15921 (left!56903 Conc!15921) (right!57233 Conc!15921) (csize!32072 Int) (cheight!16132 Int)) (Leaf!30264 (xs!19319 IArray!31903) (csize!32073 Int)) (Empty!15921) )
))
(declare-fun xs!273 () Conc!15921)

(declare-fun e!4683603 () Bool)

(declare-fun inv!95826 (IArray!31903) Bool)

(assert (=> b!7937541 (= e!4683602 (and (inv!95826 (xs!19319 xs!273)) e!4683603))))

(declare-fun b!7937539 () Bool)

(declare-fun e!4683601 () Bool)

(declare-fun inv!95827 (Conc!15921) Bool)

(assert (=> b!7937539 (= e!4683601 (not (inv!95827 Empty!15921)))))

(declare-fun res!3149177 () Bool)

(assert (=> start!749120 (=> (not res!3149177) (not e!4683601))))

(assert (=> start!749120 (= res!3149177 (not (= xs!273 Empty!15921)))))

(assert (=> start!749120 e!4683601))

(assert (=> start!749120 (and (inv!95827 xs!273) e!4683602)))

(declare-fun b!7937540 () Bool)

(declare-fun tp!2359867 () Bool)

(declare-fun tp!2359866 () Bool)

(assert (=> b!7937540 (= e!4683602 (and (inv!95827 (left!56903 xs!273)) tp!2359867 (inv!95827 (right!57233 xs!273)) tp!2359866))))

(declare-fun b!7937542 () Bool)

(declare-fun tp!2359865 () Bool)

(assert (=> b!7937542 (= e!4683603 tp!2359865)))

(assert (= (and start!749120 res!3149177) b!7937539))

(assert (= (and start!749120 (is-Node!15921 xs!273)) b!7937540))

(assert (= b!7937541 b!7937542))

(assert (= (and start!749120 (is-Leaf!30264 xs!273)) b!7937541))

(declare-fun m!8326428 () Bool)

(assert (=> b!7937541 m!8326428))

(declare-fun m!8326430 () Bool)

(assert (=> b!7937539 m!8326430))

(declare-fun m!8326432 () Bool)

(assert (=> start!749120 m!8326432))

(declare-fun m!8326434 () Bool)

(assert (=> b!7937540 m!8326434))

(declare-fun m!8326436 () Bool)

(assert (=> b!7937540 m!8326436))

(push 1)

(assert (not b!7937542))

(assert (not b!7937541))

(assert (not b!7937539))

(assert (not b!7937540))

(assert (not start!749120))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2373993 () Bool)

(declare-fun c!1458313 () Bool)

(assert (=> d!2373993 (= c!1458313 (is-Node!15921 Empty!15921))))

(declare-fun e!4683617 () Bool)

(assert (=> d!2373993 (= (inv!95827 Empty!15921) e!4683617)))

(declare-fun b!7937561 () Bool)

(declare-fun inv!95830 (Conc!15921) Bool)

(assert (=> b!7937561 (= e!4683617 (inv!95830 Empty!15921))))

(declare-fun b!7937562 () Bool)

(declare-fun e!4683618 () Bool)

(assert (=> b!7937562 (= e!4683617 e!4683618)))

(declare-fun res!3149183 () Bool)

(assert (=> b!7937562 (= res!3149183 (not (is-Leaf!30264 Empty!15921)))))

(assert (=> b!7937562 (=> res!3149183 e!4683618)))

(declare-fun b!7937563 () Bool)

(declare-fun inv!95831 (Conc!15921) Bool)

(assert (=> b!7937563 (= e!4683618 (inv!95831 Empty!15921))))

(assert (= (and d!2373993 c!1458313) b!7937561))

(assert (= (and d!2373993 (not c!1458313)) b!7937562))

(assert (= (and b!7937562 (not res!3149183)) b!7937563))

(declare-fun m!8326450 () Bool)

(assert (=> b!7937561 m!8326450))

(declare-fun m!8326452 () Bool)

(assert (=> b!7937563 m!8326452))

(assert (=> b!7937539 d!2373993))

(declare-fun d!2373999 () Bool)

(declare-fun size!43293 (List!74593) Int)

(assert (=> d!2373999 (= (inv!95826 (xs!19319 xs!273)) (<= (size!43293 (innerList!16009 (xs!19319 xs!273))) 2147483647))))

(declare-fun bs!1969274 () Bool)

(assert (= bs!1969274 d!2373999))

(declare-fun m!8326454 () Bool)

(assert (=> bs!1969274 m!8326454))

(assert (=> b!7937541 d!2373999))

(declare-fun d!2374001 () Bool)

(declare-fun c!1458314 () Bool)

(assert (=> d!2374001 (= c!1458314 (is-Node!15921 xs!273))))

(declare-fun e!4683619 () Bool)

(assert (=> d!2374001 (= (inv!95827 xs!273) e!4683619)))

(declare-fun b!7937564 () Bool)

(assert (=> b!7937564 (= e!4683619 (inv!95830 xs!273))))

(declare-fun b!7937565 () Bool)

(declare-fun e!4683620 () Bool)

(assert (=> b!7937565 (= e!4683619 e!4683620)))

(declare-fun res!3149184 () Bool)

(assert (=> b!7937565 (= res!3149184 (not (is-Leaf!30264 xs!273)))))

(assert (=> b!7937565 (=> res!3149184 e!4683620)))

(declare-fun b!7937566 () Bool)

(assert (=> b!7937566 (= e!4683620 (inv!95831 xs!273))))

(assert (= (and d!2374001 c!1458314) b!7937564))

(assert (= (and d!2374001 (not c!1458314)) b!7937565))

(assert (= (and b!7937565 (not res!3149184)) b!7937566))

(declare-fun m!8326456 () Bool)

(assert (=> b!7937564 m!8326456))

(declare-fun m!8326458 () Bool)

(assert (=> b!7937566 m!8326458))

(assert (=> start!749120 d!2374001))

(declare-fun d!2374003 () Bool)

(declare-fun c!1458315 () Bool)

(assert (=> d!2374003 (= c!1458315 (is-Node!15921 (left!56903 xs!273)))))

(declare-fun e!4683621 () Bool)

(assert (=> d!2374003 (= (inv!95827 (left!56903 xs!273)) e!4683621)))

(declare-fun b!7937567 () Bool)

(assert (=> b!7937567 (= e!4683621 (inv!95830 (left!56903 xs!273)))))

(declare-fun b!7937568 () Bool)

(declare-fun e!4683622 () Bool)

(assert (=> b!7937568 (= e!4683621 e!4683622)))

(declare-fun res!3149185 () Bool)

(assert (=> b!7937568 (= res!3149185 (not (is-Leaf!30264 (left!56903 xs!273))))))

(assert (=> b!7937568 (=> res!3149185 e!4683622)))

(declare-fun b!7937569 () Bool)

(assert (=> b!7937569 (= e!4683622 (inv!95831 (left!56903 xs!273)))))

(assert (= (and d!2374003 c!1458315) b!7937567))

(assert (= (and d!2374003 (not c!1458315)) b!7937568))

(assert (= (and b!7937568 (not res!3149185)) b!7937569))

(declare-fun m!8326460 () Bool)

(assert (=> b!7937567 m!8326460))

(declare-fun m!8326462 () Bool)

(assert (=> b!7937569 m!8326462))

(assert (=> b!7937540 d!2374003))

(declare-fun d!2374005 () Bool)

(declare-fun c!1458316 () Bool)

(assert (=> d!2374005 (= c!1458316 (is-Node!15921 (right!57233 xs!273)))))

(declare-fun e!4683623 () Bool)

(assert (=> d!2374005 (= (inv!95827 (right!57233 xs!273)) e!4683623)))

(declare-fun b!7937570 () Bool)

(assert (=> b!7937570 (= e!4683623 (inv!95830 (right!57233 xs!273)))))

(declare-fun b!7937571 () Bool)

(declare-fun e!4683624 () Bool)

(assert (=> b!7937571 (= e!4683623 e!4683624)))

(declare-fun res!3149186 () Bool)

(assert (=> b!7937571 (= res!3149186 (not (is-Leaf!30264 (right!57233 xs!273))))))

(assert (=> b!7937571 (=> res!3149186 e!4683624)))

(declare-fun b!7937572 () Bool)

(assert (=> b!7937572 (= e!4683624 (inv!95831 (right!57233 xs!273)))))

(assert (= (and d!2374005 c!1458316) b!7937570))

(assert (= (and d!2374005 (not c!1458316)) b!7937571))

(assert (= (and b!7937571 (not res!3149186)) b!7937572))

(declare-fun m!8326464 () Bool)

(assert (=> b!7937570 m!8326464))

(declare-fun m!8326466 () Bool)

(assert (=> b!7937572 m!8326466))

(assert (=> b!7937540 d!2374005))

(declare-fun b!7937581 () Bool)

(declare-fun tp!2359885 () Bool)

(declare-fun e!4683629 () Bool)

(declare-fun tp!2359883 () Bool)

(assert (=> b!7937581 (= e!4683629 (and (inv!95827 (left!56903 (left!56903 xs!273))) tp!2359883 (inv!95827 (right!57233 (left!56903 xs!273))) tp!2359885))))

(declare-fun b!7937583 () Bool)

(declare-fun e!4683630 () Bool)

(declare-fun tp!2359884 () Bool)

(assert (=> b!7937583 (= e!4683630 tp!2359884)))

(declare-fun b!7937582 () Bool)

(assert (=> b!7937582 (= e!4683629 (and (inv!95826 (xs!19319 (left!56903 xs!273))) e!4683630))))

(assert (=> b!7937540 (= tp!2359867 (and (inv!95827 (left!56903 xs!273)) e!4683629))))

(assert (= (and b!7937540 (is-Node!15921 (left!56903 xs!273))) b!7937581))

(assert (= b!7937582 b!7937583))

(assert (= (and b!7937540 (is-Leaf!30264 (left!56903 xs!273))) b!7937582))

(declare-fun m!8326468 () Bool)

(assert (=> b!7937581 m!8326468))

(declare-fun m!8326470 () Bool)

(assert (=> b!7937581 m!8326470))

(declare-fun m!8326472 () Bool)

(assert (=> b!7937582 m!8326472))

(assert (=> b!7937540 m!8326434))

(declare-fun tp!2359886 () Bool)

(declare-fun e!4683631 () Bool)

(declare-fun b!7937584 () Bool)

(declare-fun tp!2359888 () Bool)

(assert (=> b!7937584 (= e!4683631 (and (inv!95827 (left!56903 (right!57233 xs!273))) tp!2359886 (inv!95827 (right!57233 (right!57233 xs!273))) tp!2359888))))

(declare-fun b!7937586 () Bool)

(declare-fun e!4683632 () Bool)

(declare-fun tp!2359887 () Bool)

(assert (=> b!7937586 (= e!4683632 tp!2359887)))

(declare-fun b!7937585 () Bool)

(assert (=> b!7937585 (= e!4683631 (and (inv!95826 (xs!19319 (right!57233 xs!273))) e!4683632))))

(assert (=> b!7937540 (= tp!2359866 (and (inv!95827 (right!57233 xs!273)) e!4683631))))

(assert (= (and b!7937540 (is-Node!15921 (right!57233 xs!273))) b!7937584))

(assert (= b!7937585 b!7937586))

(assert (= (and b!7937540 (is-Leaf!30264 (right!57233 xs!273))) b!7937585))

(declare-fun m!8326474 () Bool)

(assert (=> b!7937584 m!8326474))

(declare-fun m!8326476 () Bool)

(assert (=> b!7937584 m!8326476))

(declare-fun m!8326478 () Bool)

(assert (=> b!7937585 m!8326478))

(assert (=> b!7937540 m!8326436))

(declare-fun b!7937595 () Bool)

(declare-fun e!4683637 () Bool)

(declare-fun tp_is_empty!53271 () Bool)

(declare-fun tp!2359891 () Bool)

(assert (=> b!7937595 (= e!4683637 (and tp_is_empty!53271 tp!2359891))))

(assert (=> b!7937542 (= tp!2359865 e!4683637)))

(assert (= (and b!7937542 (is-Cons!74469 (innerList!16009 (xs!19319 xs!273)))) b!7937595))

(push 1)

(assert (not b!7937584))

(assert (not b!7937572))

(assert (not b!7937581))

(assert tp_is_empty!53271)

(assert (not b!7937570))

(assert (not b!7937582))

(assert (not b!7937564))

(assert (not b!7937561))

(assert (not b!7937566))

(assert (not b!7937585))

(assert (not d!2373999))

(assert (not b!7937540))

(assert (not b!7937563))

(assert (not b!7937595))

(assert (not b!7937567))

(assert (not b!7937569))

(assert (not b!7937586))

(assert (not b!7937583))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

