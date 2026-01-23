; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!407658 () Bool)

(assert start!407658)

(declare-fun b_free!126653 () Bool)

(declare-fun b_next!127357 () Bool)

(assert (=> start!407658 (= b_free!126653 (not b_next!127357))))

(declare-fun tp!1306070 () Bool)

(declare-fun b_and!337479 () Bool)

(assert (=> start!407658 (= tp!1306070 b_and!337479)))

(declare-fun b!4255553 () Bool)

(declare-fun res!1749377 () Bool)

(declare-fun e!2643275 () Bool)

(assert (=> b!4255553 (=> (not res!1749377) (not e!2643275))))

(declare-datatypes ((T!79266 0))(
  ( (T!79267 (val!15195 Int)) )
))
(declare-datatypes ((List!47324 0))(
  ( (Nil!47200) (Cons!47200 (h!52620 T!79266) (t!352867 List!47324)) )
))
(declare-datatypes ((IArray!28427 0))(
  ( (IArray!28428 (innerList!14271 List!47324)) )
))
(declare-datatypes ((Conc!14211 0))(
  ( (Node!14211 (left!34977 Conc!14211) (right!35307 Conc!14211) (csize!28652 Int) (cheight!14422 Int)) (Leaf!21970 (xs!17517 IArray!28427) (csize!28653 Int)) (Empty!14211) )
))
(declare-fun t!4386 () Conc!14211)

(get-info :version)

(assert (=> b!4255553 (= res!1749377 (and (not ((_ is Empty!14211) t!4386)) (not ((_ is Leaf!21970) t!4386))))))

(declare-fun b!4255554 () Bool)

(declare-fun e!2643277 () Bool)

(declare-fun tp!1306067 () Bool)

(assert (=> b!4255554 (= e!2643277 tp!1306067)))

(declare-fun res!1749376 () Bool)

(assert (=> start!407658 (=> (not res!1749376) (not e!2643275))))

(declare-fun isBalanced!3774 (Conc!14211) Bool)

(assert (=> start!407658 (= res!1749376 (isBalanced!3774 t!4386))))

(assert (=> start!407658 e!2643275))

(declare-fun e!2643276 () Bool)

(declare-fun inv!62003 (Conc!14211) Bool)

(assert (=> start!407658 (and (inv!62003 t!4386) e!2643276)))

(assert (=> start!407658 tp!1306070))

(declare-fun b!4255555 () Bool)

(declare-fun e!2643278 () Bool)

(assert (=> b!4255555 (= e!2643275 e!2643278)))

(declare-fun res!1749375 () Bool)

(assert (=> b!4255555 (=> (not res!1749375) (not e!2643278))))

(declare-fun lt!1509730 () List!47324)

(declare-fun f!428 () Int)

(declare-fun lt!1509731 () List!47324)

(declare-datatypes ((B!2785 0))(
  ( (B!2786 (val!15196 Int)) )
))
(declare-datatypes ((List!47325 0))(
  ( (Nil!47201) (Cons!47201 (h!52621 B!2785) (t!352868 List!47325)) )
))
(declare-fun map!9628 (List!47324 Int) List!47325)

(declare-fun ++!12001 (List!47324 List!47324) List!47324)

(declare-fun ++!12002 (List!47325 List!47325) List!47325)

(assert (=> b!4255555 (= res!1749375 (= (map!9628 (++!12001 lt!1509731 lt!1509730) f!428) (++!12002 (map!9628 lt!1509731 f!428) (map!9628 lt!1509730 f!428))))))

(declare-datatypes ((Unit!66115 0))(
  ( (Unit!66116) )
))
(declare-fun lt!1509732 () Unit!66115)

(declare-fun lemmaMapConcat!20 (List!47324 List!47324 Int) Unit!66115)

(assert (=> b!4255555 (= lt!1509732 (lemmaMapConcat!20 lt!1509731 lt!1509730 f!428))))

(declare-fun list!17005 (Conc!14211) List!47324)

(assert (=> b!4255555 (= lt!1509730 (list!17005 (right!35307 t!4386)))))

(assert (=> b!4255555 (= lt!1509731 (list!17005 (left!34977 t!4386)))))

(declare-fun tp!1306068 () Bool)

(declare-fun tp!1306069 () Bool)

(declare-fun b!4255556 () Bool)

(assert (=> b!4255556 (= e!2643276 (and (inv!62003 (left!34977 t!4386)) tp!1306069 (inv!62003 (right!35307 t!4386)) tp!1306068))))

(declare-fun b!4255557 () Bool)

(declare-fun inv!62004 (IArray!28427) Bool)

(assert (=> b!4255557 (= e!2643276 (and (inv!62004 (xs!17517 t!4386)) e!2643277))))

(declare-fun b!4255558 () Bool)

(assert (=> b!4255558 (= e!2643278 (not (isBalanced!3774 (left!34977 t!4386))))))

(assert (= (and start!407658 res!1749376) b!4255553))

(assert (= (and b!4255553 res!1749377) b!4255555))

(assert (= (and b!4255555 res!1749375) b!4255558))

(assert (= (and start!407658 ((_ is Node!14211) t!4386)) b!4255556))

(assert (= b!4255557 b!4255554))

(assert (= (and start!407658 ((_ is Leaf!21970) t!4386)) b!4255557))

(declare-fun m!4840643 () Bool)

(assert (=> b!4255558 m!4840643))

(declare-fun m!4840645 () Bool)

(assert (=> b!4255555 m!4840645))

(declare-fun m!4840647 () Bool)

(assert (=> b!4255555 m!4840647))

(declare-fun m!4840649 () Bool)

(assert (=> b!4255555 m!4840649))

(assert (=> b!4255555 m!4840647))

(declare-fun m!4840651 () Bool)

(assert (=> b!4255555 m!4840651))

(assert (=> b!4255555 m!4840651))

(declare-fun m!4840653 () Bool)

(assert (=> b!4255555 m!4840653))

(declare-fun m!4840655 () Bool)

(assert (=> b!4255555 m!4840655))

(declare-fun m!4840657 () Bool)

(assert (=> b!4255555 m!4840657))

(assert (=> b!4255555 m!4840645))

(declare-fun m!4840659 () Bool)

(assert (=> b!4255555 m!4840659))

(declare-fun m!4840661 () Bool)

(assert (=> b!4255557 m!4840661))

(declare-fun m!4840663 () Bool)

(assert (=> b!4255556 m!4840663))

(declare-fun m!4840665 () Bool)

(assert (=> b!4255556 m!4840665))

(declare-fun m!4840667 () Bool)

(assert (=> start!407658 m!4840667))

(declare-fun m!4840669 () Bool)

(assert (=> start!407658 m!4840669))

(check-sat (not b!4255558) (not start!407658) (not b!4255555) (not b_next!127357) b_and!337479 (not b!4255557) (not b!4255554) (not b!4255556))
(check-sat b_and!337479 (not b_next!127357))
(get-model)

(declare-fun lt!1509735 () List!47324)

(declare-fun e!2643287 () Bool)

(declare-fun b!4255582 () Bool)

(assert (=> b!4255582 (= e!2643287 (or (not (= lt!1509730 Nil!47200)) (= lt!1509735 lt!1509731)))))

(declare-fun d!1251417 () Bool)

(assert (=> d!1251417 e!2643287))

(declare-fun res!1749395 () Bool)

(assert (=> d!1251417 (=> (not res!1749395) (not e!2643287))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7417 (List!47324) (InoxSet T!79266))

(assert (=> d!1251417 (= res!1749395 (= (content!7417 lt!1509735) ((_ map or) (content!7417 lt!1509731) (content!7417 lt!1509730))))))

(declare-fun e!2643288 () List!47324)

(assert (=> d!1251417 (= lt!1509735 e!2643288)))

(declare-fun c!722528 () Bool)

(assert (=> d!1251417 (= c!722528 ((_ is Nil!47200) lt!1509731))))

(assert (=> d!1251417 (= (++!12001 lt!1509731 lt!1509730) lt!1509735)))

(declare-fun b!4255581 () Bool)

(declare-fun res!1749394 () Bool)

(assert (=> b!4255581 (=> (not res!1749394) (not e!2643287))))

(declare-fun size!34543 (List!47324) Int)

(assert (=> b!4255581 (= res!1749394 (= (size!34543 lt!1509735) (+ (size!34543 lt!1509731) (size!34543 lt!1509730))))))

(declare-fun b!4255580 () Bool)

(assert (=> b!4255580 (= e!2643288 (Cons!47200 (h!52620 lt!1509731) (++!12001 (t!352867 lt!1509731) lt!1509730)))))

(declare-fun b!4255579 () Bool)

(assert (=> b!4255579 (= e!2643288 lt!1509730)))

(assert (= (and d!1251417 c!722528) b!4255579))

(assert (= (and d!1251417 (not c!722528)) b!4255580))

(assert (= (and d!1251417 res!1749395) b!4255581))

(assert (= (and b!4255581 res!1749394) b!4255582))

(declare-fun m!4840671 () Bool)

(assert (=> d!1251417 m!4840671))

(declare-fun m!4840673 () Bool)

(assert (=> d!1251417 m!4840673))

(declare-fun m!4840675 () Bool)

(assert (=> d!1251417 m!4840675))

(declare-fun m!4840677 () Bool)

(assert (=> b!4255581 m!4840677))

(declare-fun m!4840679 () Bool)

(assert (=> b!4255581 m!4840679))

(declare-fun m!4840681 () Bool)

(assert (=> b!4255581 m!4840681))

(declare-fun m!4840683 () Bool)

(assert (=> b!4255580 m!4840683))

(assert (=> b!4255555 d!1251417))

(declare-fun d!1251419 () Bool)

(declare-fun c!722537 () Bool)

(assert (=> d!1251419 (= c!722537 ((_ is Empty!14211) (left!34977 t!4386)))))

(declare-fun e!2643299 () List!47324)

(assert (=> d!1251419 (= (list!17005 (left!34977 t!4386)) e!2643299)))

(declare-fun b!4255606 () Bool)

(declare-fun e!2643300 () List!47324)

(assert (=> b!4255606 (= e!2643299 e!2643300)))

(declare-fun c!722538 () Bool)

(assert (=> b!4255606 (= c!722538 ((_ is Leaf!21970) (left!34977 t!4386)))))

(declare-fun b!4255605 () Bool)

(assert (=> b!4255605 (= e!2643299 Nil!47200)))

(declare-fun b!4255607 () Bool)

(declare-fun list!17006 (IArray!28427) List!47324)

(assert (=> b!4255607 (= e!2643300 (list!17006 (xs!17517 (left!34977 t!4386))))))

(declare-fun b!4255608 () Bool)

(assert (=> b!4255608 (= e!2643300 (++!12001 (list!17005 (left!34977 (left!34977 t!4386))) (list!17005 (right!35307 (left!34977 t!4386)))))))

(assert (= (and d!1251419 c!722537) b!4255605))

(assert (= (and d!1251419 (not c!722537)) b!4255606))

(assert (= (and b!4255606 c!722538) b!4255607))

(assert (= (and b!4255606 (not c!722538)) b!4255608))

(declare-fun m!4840697 () Bool)

(assert (=> b!4255607 m!4840697))

(declare-fun m!4840699 () Bool)

(assert (=> b!4255608 m!4840699))

(declare-fun m!4840701 () Bool)

(assert (=> b!4255608 m!4840701))

(assert (=> b!4255608 m!4840699))

(assert (=> b!4255608 m!4840701))

(declare-fun m!4840703 () Bool)

(assert (=> b!4255608 m!4840703))

(assert (=> b!4255555 d!1251419))

(declare-fun d!1251423 () Bool)

(declare-fun lt!1509738 () List!47325)

(declare-fun size!34544 (List!47325) Int)

(assert (=> d!1251423 (= (size!34544 lt!1509738) (size!34543 lt!1509731))))

(declare-fun e!2643305 () List!47325)

(assert (=> d!1251423 (= lt!1509738 e!2643305)))

(declare-fun c!722543 () Bool)

(assert (=> d!1251423 (= c!722543 ((_ is Nil!47200) lt!1509731))))

(assert (=> d!1251423 (= (map!9628 lt!1509731 f!428) lt!1509738)))

(declare-fun b!4255617 () Bool)

(assert (=> b!4255617 (= e!2643305 Nil!47201)))

(declare-fun b!4255618 () Bool)

(declare-fun $colon$colon!614 (List!47325 B!2785) List!47325)

(declare-fun dynLambda!20202 (Int T!79266) B!2785)

(assert (=> b!4255618 (= e!2643305 ($colon$colon!614 (map!9628 (t!352867 lt!1509731) f!428) (dynLambda!20202 f!428 (h!52620 lt!1509731))))))

(assert (= (and d!1251423 c!722543) b!4255617))

(assert (= (and d!1251423 (not c!722543)) b!4255618))

(declare-fun b_lambda!125339 () Bool)

(assert (=> (not b_lambda!125339) (not b!4255618)))

(declare-fun t!352873 () Bool)

(declare-fun tb!256707 () Bool)

(assert (=> (and start!407658 (= f!428 f!428) t!352873) tb!256707))

(declare-fun result!313144 () Bool)

(declare-fun tp_is_empty!22799 () Bool)

(assert (=> tb!256707 (= result!313144 tp_is_empty!22799)))

(assert (=> b!4255618 t!352873))

(declare-fun b_and!337481 () Bool)

(assert (= b_and!337479 (and (=> t!352873 result!313144) b_and!337481)))

(declare-fun m!4840713 () Bool)

(assert (=> d!1251423 m!4840713))

(assert (=> d!1251423 m!4840679))

(declare-fun m!4840715 () Bool)

(assert (=> b!4255618 m!4840715))

(declare-fun m!4840717 () Bool)

(assert (=> b!4255618 m!4840717))

(assert (=> b!4255618 m!4840715))

(assert (=> b!4255618 m!4840717))

(declare-fun m!4840719 () Bool)

(assert (=> b!4255618 m!4840719))

(assert (=> b!4255555 d!1251423))

(declare-fun d!1251427 () Bool)

(declare-fun c!722544 () Bool)

(assert (=> d!1251427 (= c!722544 ((_ is Empty!14211) (right!35307 t!4386)))))

(declare-fun e!2643306 () List!47324)

(assert (=> d!1251427 (= (list!17005 (right!35307 t!4386)) e!2643306)))

(declare-fun b!4255622 () Bool)

(declare-fun e!2643307 () List!47324)

(assert (=> b!4255622 (= e!2643306 e!2643307)))

(declare-fun c!722545 () Bool)

(assert (=> b!4255622 (= c!722545 ((_ is Leaf!21970) (right!35307 t!4386)))))

(declare-fun b!4255621 () Bool)

(assert (=> b!4255621 (= e!2643306 Nil!47200)))

(declare-fun b!4255623 () Bool)

(assert (=> b!4255623 (= e!2643307 (list!17006 (xs!17517 (right!35307 t!4386))))))

(declare-fun b!4255624 () Bool)

(assert (=> b!4255624 (= e!2643307 (++!12001 (list!17005 (left!34977 (right!35307 t!4386))) (list!17005 (right!35307 (right!35307 t!4386)))))))

(assert (= (and d!1251427 c!722544) b!4255621))

(assert (= (and d!1251427 (not c!722544)) b!4255622))

(assert (= (and b!4255622 c!722545) b!4255623))

(assert (= (and b!4255622 (not c!722545)) b!4255624))

(declare-fun m!4840721 () Bool)

(assert (=> b!4255623 m!4840721))

(declare-fun m!4840723 () Bool)

(assert (=> b!4255624 m!4840723))

(declare-fun m!4840725 () Bool)

(assert (=> b!4255624 m!4840725))

(assert (=> b!4255624 m!4840723))

(assert (=> b!4255624 m!4840725))

(declare-fun m!4840727 () Bool)

(assert (=> b!4255624 m!4840727))

(assert (=> b!4255555 d!1251427))

(declare-fun d!1251429 () Bool)

(declare-fun lt!1509739 () List!47325)

(assert (=> d!1251429 (= (size!34544 lt!1509739) (size!34543 lt!1509730))))

(declare-fun e!2643308 () List!47325)

(assert (=> d!1251429 (= lt!1509739 e!2643308)))

(declare-fun c!722546 () Bool)

(assert (=> d!1251429 (= c!722546 ((_ is Nil!47200) lt!1509730))))

(assert (=> d!1251429 (= (map!9628 lt!1509730 f!428) lt!1509739)))

(declare-fun b!4255625 () Bool)

(assert (=> b!4255625 (= e!2643308 Nil!47201)))

(declare-fun b!4255626 () Bool)

(assert (=> b!4255626 (= e!2643308 ($colon$colon!614 (map!9628 (t!352867 lt!1509730) f!428) (dynLambda!20202 f!428 (h!52620 lt!1509730))))))

(assert (= (and d!1251429 c!722546) b!4255625))

(assert (= (and d!1251429 (not c!722546)) b!4255626))

(declare-fun b_lambda!125341 () Bool)

(assert (=> (not b_lambda!125341) (not b!4255626)))

(declare-fun t!352875 () Bool)

(declare-fun tb!256709 () Bool)

(assert (=> (and start!407658 (= f!428 f!428) t!352875) tb!256709))

(declare-fun result!313148 () Bool)

(assert (=> tb!256709 (= result!313148 tp_is_empty!22799)))

(assert (=> b!4255626 t!352875))

(declare-fun b_and!337483 () Bool)

(assert (= b_and!337481 (and (=> t!352875 result!313148) b_and!337483)))

(declare-fun m!4840729 () Bool)

(assert (=> d!1251429 m!4840729))

(assert (=> d!1251429 m!4840681))

(declare-fun m!4840731 () Bool)

(assert (=> b!4255626 m!4840731))

(declare-fun m!4840733 () Bool)

(assert (=> b!4255626 m!4840733))

(assert (=> b!4255626 m!4840731))

(assert (=> b!4255626 m!4840733))

(declare-fun m!4840735 () Bool)

(assert (=> b!4255626 m!4840735))

(assert (=> b!4255555 d!1251429))

(declare-fun d!1251431 () Bool)

(assert (=> d!1251431 (= (map!9628 (++!12001 lt!1509731 lt!1509730) f!428) (++!12002 (map!9628 lt!1509731 f!428) (map!9628 lt!1509730 f!428)))))

(declare-fun lt!1509745 () Unit!66115)

(declare-fun choose!25967 (List!47324 List!47324 Int) Unit!66115)

(assert (=> d!1251431 (= lt!1509745 (choose!25967 lt!1509731 lt!1509730 f!428))))

(assert (=> d!1251431 (= (lemmaMapConcat!20 lt!1509731 lt!1509730 f!428) lt!1509745)))

(declare-fun bs!598806 () Bool)

(assert (= bs!598806 d!1251431))

(assert (=> bs!598806 m!4840651))

(assert (=> bs!598806 m!4840653))

(assert (=> bs!598806 m!4840647))

(assert (=> bs!598806 m!4840645))

(declare-fun m!4840751 () Bool)

(assert (=> bs!598806 m!4840751))

(assert (=> bs!598806 m!4840651))

(assert (=> bs!598806 m!4840645))

(assert (=> bs!598806 m!4840647))

(assert (=> bs!598806 m!4840649))

(assert (=> b!4255555 d!1251431))

(declare-fun d!1251435 () Bool)

(declare-fun lt!1509746 () List!47325)

(assert (=> d!1251435 (= (size!34544 lt!1509746) (size!34543 (++!12001 lt!1509731 lt!1509730)))))

(declare-fun e!2643315 () List!47325)

(assert (=> d!1251435 (= lt!1509746 e!2643315)))

(declare-fun c!722550 () Bool)

(assert (=> d!1251435 (= c!722550 ((_ is Nil!47200) (++!12001 lt!1509731 lt!1509730)))))

(assert (=> d!1251435 (= (map!9628 (++!12001 lt!1509731 lt!1509730) f!428) lt!1509746)))

(declare-fun b!4255639 () Bool)

(assert (=> b!4255639 (= e!2643315 Nil!47201)))

(declare-fun b!4255640 () Bool)

(assert (=> b!4255640 (= e!2643315 ($colon$colon!614 (map!9628 (t!352867 (++!12001 lt!1509731 lt!1509730)) f!428) (dynLambda!20202 f!428 (h!52620 (++!12001 lt!1509731 lt!1509730)))))))

(assert (= (and d!1251435 c!722550) b!4255639))

(assert (= (and d!1251435 (not c!722550)) b!4255640))

(declare-fun b_lambda!125343 () Bool)

(assert (=> (not b_lambda!125343) (not b!4255640)))

(declare-fun t!352877 () Bool)

(declare-fun tb!256711 () Bool)

(assert (=> (and start!407658 (= f!428 f!428) t!352877) tb!256711))

(declare-fun result!313150 () Bool)

(assert (=> tb!256711 (= result!313150 tp_is_empty!22799)))

(assert (=> b!4255640 t!352877))

(declare-fun b_and!337485 () Bool)

(assert (= b_and!337483 (and (=> t!352877 result!313150) b_and!337485)))

(declare-fun m!4840753 () Bool)

(assert (=> d!1251435 m!4840753))

(assert (=> d!1251435 m!4840651))

(declare-fun m!4840755 () Bool)

(assert (=> d!1251435 m!4840755))

(declare-fun m!4840757 () Bool)

(assert (=> b!4255640 m!4840757))

(declare-fun m!4840759 () Bool)

(assert (=> b!4255640 m!4840759))

(assert (=> b!4255640 m!4840757))

(assert (=> b!4255640 m!4840759))

(declare-fun m!4840761 () Bool)

(assert (=> b!4255640 m!4840761))

(assert (=> b!4255555 d!1251435))

(declare-fun b!4255663 () Bool)

(declare-fun res!1749413 () Bool)

(declare-fun e!2643325 () Bool)

(assert (=> b!4255663 (=> (not res!1749413) (not e!2643325))))

(declare-fun lt!1509752 () List!47325)

(assert (=> b!4255663 (= res!1749413 (= (size!34544 lt!1509752) (+ (size!34544 (map!9628 lt!1509731 f!428)) (size!34544 (map!9628 lt!1509730 f!428)))))))

(declare-fun d!1251437 () Bool)

(assert (=> d!1251437 e!2643325))

(declare-fun res!1749412 () Bool)

(assert (=> d!1251437 (=> (not res!1749412) (not e!2643325))))

(declare-fun content!7419 (List!47325) (InoxSet B!2785))

(assert (=> d!1251437 (= res!1749412 (= (content!7419 lt!1509752) ((_ map or) (content!7419 (map!9628 lt!1509731 f!428)) (content!7419 (map!9628 lt!1509730 f!428)))))))

(declare-fun e!2643326 () List!47325)

(assert (=> d!1251437 (= lt!1509752 e!2643326)))

(declare-fun c!722558 () Bool)

(assert (=> d!1251437 (= c!722558 ((_ is Nil!47201) (map!9628 lt!1509731 f!428)))))

(assert (=> d!1251437 (= (++!12002 (map!9628 lt!1509731 f!428) (map!9628 lt!1509730 f!428)) lt!1509752)))

(declare-fun b!4255662 () Bool)

(assert (=> b!4255662 (= e!2643326 (Cons!47201 (h!52621 (map!9628 lt!1509731 f!428)) (++!12002 (t!352868 (map!9628 lt!1509731 f!428)) (map!9628 lt!1509730 f!428))))))

(declare-fun b!4255664 () Bool)

(assert (=> b!4255664 (= e!2643325 (or (not (= (map!9628 lt!1509730 f!428) Nil!47201)) (= lt!1509752 (map!9628 lt!1509731 f!428))))))

(declare-fun b!4255661 () Bool)

(assert (=> b!4255661 (= e!2643326 (map!9628 lt!1509730 f!428))))

(assert (= (and d!1251437 c!722558) b!4255661))

(assert (= (and d!1251437 (not c!722558)) b!4255662))

(assert (= (and d!1251437 res!1749412) b!4255663))

(assert (= (and b!4255663 res!1749413) b!4255664))

(declare-fun m!4840779 () Bool)

(assert (=> b!4255663 m!4840779))

(assert (=> b!4255663 m!4840645))

(declare-fun m!4840781 () Bool)

(assert (=> b!4255663 m!4840781))

(assert (=> b!4255663 m!4840647))

(declare-fun m!4840783 () Bool)

(assert (=> b!4255663 m!4840783))

(declare-fun m!4840785 () Bool)

(assert (=> d!1251437 m!4840785))

(assert (=> d!1251437 m!4840645))

(declare-fun m!4840787 () Bool)

(assert (=> d!1251437 m!4840787))

(assert (=> d!1251437 m!4840647))

(declare-fun m!4840789 () Bool)

(assert (=> d!1251437 m!4840789))

(assert (=> b!4255662 m!4840647))

(declare-fun m!4840791 () Bool)

(assert (=> b!4255662 m!4840791))

(assert (=> b!4255555 d!1251437))

(declare-fun d!1251443 () Bool)

(assert (=> d!1251443 (= (inv!62004 (xs!17517 t!4386)) (<= (size!34543 (innerList!14271 (xs!17517 t!4386))) 2147483647))))

(declare-fun bs!598807 () Bool)

(assert (= bs!598807 d!1251443))

(declare-fun m!4840793 () Bool)

(assert (=> bs!598807 m!4840793))

(assert (=> b!4255557 d!1251443))

(declare-fun b!4255681 () Bool)

(declare-fun res!1749428 () Bool)

(declare-fun e!2643334 () Bool)

(assert (=> b!4255681 (=> (not res!1749428) (not e!2643334))))

(declare-fun isEmpty!27939 (Conc!14211) Bool)

(assert (=> b!4255681 (= res!1749428 (not (isEmpty!27939 (left!34977 t!4386))))))

(declare-fun b!4255682 () Bool)

(declare-fun res!1749427 () Bool)

(assert (=> b!4255682 (=> (not res!1749427) (not e!2643334))))

(assert (=> b!4255682 (= res!1749427 (isBalanced!3774 (right!35307 t!4386)))))

(declare-fun b!4255683 () Bool)

(declare-fun e!2643333 () Bool)

(assert (=> b!4255683 (= e!2643333 e!2643334)))

(declare-fun res!1749431 () Bool)

(assert (=> b!4255683 (=> (not res!1749431) (not e!2643334))))

(declare-fun height!1840 (Conc!14211) Int)

(assert (=> b!4255683 (= res!1749431 (<= (- 1) (- (height!1840 (left!34977 t!4386)) (height!1840 (right!35307 t!4386)))))))

(declare-fun b!4255684 () Bool)

(declare-fun res!1749426 () Bool)

(assert (=> b!4255684 (=> (not res!1749426) (not e!2643334))))

(assert (=> b!4255684 (= res!1749426 (<= (- (height!1840 (left!34977 t!4386)) (height!1840 (right!35307 t!4386))) 1))))

(declare-fun d!1251445 () Bool)

(declare-fun res!1749430 () Bool)

(assert (=> d!1251445 (=> res!1749430 e!2643333)))

(assert (=> d!1251445 (= res!1749430 (not ((_ is Node!14211) t!4386)))))

(assert (=> d!1251445 (= (isBalanced!3774 t!4386) e!2643333)))

(declare-fun b!4255685 () Bool)

(assert (=> b!4255685 (= e!2643334 (not (isEmpty!27939 (right!35307 t!4386))))))

(declare-fun b!4255686 () Bool)

(declare-fun res!1749429 () Bool)

(assert (=> b!4255686 (=> (not res!1749429) (not e!2643334))))

(assert (=> b!4255686 (= res!1749429 (isBalanced!3774 (left!34977 t!4386)))))

(assert (= (and d!1251445 (not res!1749430)) b!4255683))

(assert (= (and b!4255683 res!1749431) b!4255684))

(assert (= (and b!4255684 res!1749426) b!4255686))

(assert (= (and b!4255686 res!1749429) b!4255682))

(assert (= (and b!4255682 res!1749427) b!4255681))

(assert (= (and b!4255681 res!1749428) b!4255685))

(declare-fun m!4840815 () Bool)

(assert (=> b!4255685 m!4840815))

(declare-fun m!4840817 () Bool)

(assert (=> b!4255684 m!4840817))

(declare-fun m!4840819 () Bool)

(assert (=> b!4255684 m!4840819))

(declare-fun m!4840821 () Bool)

(assert (=> b!4255681 m!4840821))

(assert (=> b!4255686 m!4840643))

(assert (=> b!4255683 m!4840817))

(assert (=> b!4255683 m!4840819))

(declare-fun m!4840823 () Bool)

(assert (=> b!4255682 m!4840823))

(assert (=> start!407658 d!1251445))

(declare-fun d!1251453 () Bool)

(declare-fun c!722566 () Bool)

(assert (=> d!1251453 (= c!722566 ((_ is Node!14211) t!4386))))

(declare-fun e!2643345 () Bool)

(assert (=> d!1251453 (= (inv!62003 t!4386) e!2643345)))

(declare-fun b!4255705 () Bool)

(declare-fun inv!62006 (Conc!14211) Bool)

(assert (=> b!4255705 (= e!2643345 (inv!62006 t!4386))))

(declare-fun b!4255706 () Bool)

(declare-fun e!2643346 () Bool)

(assert (=> b!4255706 (= e!2643345 e!2643346)))

(declare-fun res!1749440 () Bool)

(assert (=> b!4255706 (= res!1749440 (not ((_ is Leaf!21970) t!4386)))))

(assert (=> b!4255706 (=> res!1749440 e!2643346)))

(declare-fun b!4255707 () Bool)

(declare-fun inv!62008 (Conc!14211) Bool)

(assert (=> b!4255707 (= e!2643346 (inv!62008 t!4386))))

(assert (= (and d!1251453 c!722566) b!4255705))

(assert (= (and d!1251453 (not c!722566)) b!4255706))

(assert (= (and b!4255706 (not res!1749440)) b!4255707))

(declare-fun m!4840831 () Bool)

(assert (=> b!4255705 m!4840831))

(declare-fun m!4840835 () Bool)

(assert (=> b!4255707 m!4840835))

(assert (=> start!407658 d!1251453))

(declare-fun d!1251455 () Bool)

(declare-fun c!722567 () Bool)

(assert (=> d!1251455 (= c!722567 ((_ is Node!14211) (left!34977 t!4386)))))

(declare-fun e!2643347 () Bool)

(assert (=> d!1251455 (= (inv!62003 (left!34977 t!4386)) e!2643347)))

(declare-fun b!4255708 () Bool)

(assert (=> b!4255708 (= e!2643347 (inv!62006 (left!34977 t!4386)))))

(declare-fun b!4255709 () Bool)

(declare-fun e!2643348 () Bool)

(assert (=> b!4255709 (= e!2643347 e!2643348)))

(declare-fun res!1749441 () Bool)

(assert (=> b!4255709 (= res!1749441 (not ((_ is Leaf!21970) (left!34977 t!4386))))))

(assert (=> b!4255709 (=> res!1749441 e!2643348)))

(declare-fun b!4255710 () Bool)

(assert (=> b!4255710 (= e!2643348 (inv!62008 (left!34977 t!4386)))))

(assert (= (and d!1251455 c!722567) b!4255708))

(assert (= (and d!1251455 (not c!722567)) b!4255709))

(assert (= (and b!4255709 (not res!1749441)) b!4255710))

(declare-fun m!4840843 () Bool)

(assert (=> b!4255708 m!4840843))

(declare-fun m!4840845 () Bool)

(assert (=> b!4255710 m!4840845))

(assert (=> b!4255556 d!1251455))

(declare-fun d!1251459 () Bool)

(declare-fun c!722568 () Bool)

(assert (=> d!1251459 (= c!722568 ((_ is Node!14211) (right!35307 t!4386)))))

(declare-fun e!2643349 () Bool)

(assert (=> d!1251459 (= (inv!62003 (right!35307 t!4386)) e!2643349)))

(declare-fun b!4255711 () Bool)

(assert (=> b!4255711 (= e!2643349 (inv!62006 (right!35307 t!4386)))))

(declare-fun b!4255712 () Bool)

(declare-fun e!2643350 () Bool)

(assert (=> b!4255712 (= e!2643349 e!2643350)))

(declare-fun res!1749442 () Bool)

(assert (=> b!4255712 (= res!1749442 (not ((_ is Leaf!21970) (right!35307 t!4386))))))

(assert (=> b!4255712 (=> res!1749442 e!2643350)))

(declare-fun b!4255713 () Bool)

(assert (=> b!4255713 (= e!2643350 (inv!62008 (right!35307 t!4386)))))

(assert (= (and d!1251459 c!722568) b!4255711))

(assert (= (and d!1251459 (not c!722568)) b!4255712))

(assert (= (and b!4255712 (not res!1749442)) b!4255713))

(declare-fun m!4840847 () Bool)

(assert (=> b!4255711 m!4840847))

(declare-fun m!4840849 () Bool)

(assert (=> b!4255713 m!4840849))

(assert (=> b!4255556 d!1251459))

(declare-fun b!4255714 () Bool)

(declare-fun res!1749445 () Bool)

(declare-fun e!2643352 () Bool)

(assert (=> b!4255714 (=> (not res!1749445) (not e!2643352))))

(assert (=> b!4255714 (= res!1749445 (not (isEmpty!27939 (left!34977 (left!34977 t!4386)))))))

(declare-fun b!4255715 () Bool)

(declare-fun res!1749444 () Bool)

(assert (=> b!4255715 (=> (not res!1749444) (not e!2643352))))

(assert (=> b!4255715 (= res!1749444 (isBalanced!3774 (right!35307 (left!34977 t!4386))))))

(declare-fun b!4255716 () Bool)

(declare-fun e!2643351 () Bool)

(assert (=> b!4255716 (= e!2643351 e!2643352)))

(declare-fun res!1749448 () Bool)

(assert (=> b!4255716 (=> (not res!1749448) (not e!2643352))))

(assert (=> b!4255716 (= res!1749448 (<= (- 1) (- (height!1840 (left!34977 (left!34977 t!4386))) (height!1840 (right!35307 (left!34977 t!4386))))))))

(declare-fun b!4255717 () Bool)

(declare-fun res!1749443 () Bool)

(assert (=> b!4255717 (=> (not res!1749443) (not e!2643352))))

(assert (=> b!4255717 (= res!1749443 (<= (- (height!1840 (left!34977 (left!34977 t!4386))) (height!1840 (right!35307 (left!34977 t!4386)))) 1))))

(declare-fun d!1251461 () Bool)

(declare-fun res!1749447 () Bool)

(assert (=> d!1251461 (=> res!1749447 e!2643351)))

(assert (=> d!1251461 (= res!1749447 (not ((_ is Node!14211) (left!34977 t!4386))))))

(assert (=> d!1251461 (= (isBalanced!3774 (left!34977 t!4386)) e!2643351)))

(declare-fun b!4255718 () Bool)

(assert (=> b!4255718 (= e!2643352 (not (isEmpty!27939 (right!35307 (left!34977 t!4386)))))))

(declare-fun b!4255719 () Bool)

(declare-fun res!1749446 () Bool)

(assert (=> b!4255719 (=> (not res!1749446) (not e!2643352))))

(assert (=> b!4255719 (= res!1749446 (isBalanced!3774 (left!34977 (left!34977 t!4386))))))

(assert (= (and d!1251461 (not res!1749447)) b!4255716))

(assert (= (and b!4255716 res!1749448) b!4255717))

(assert (= (and b!4255717 res!1749443) b!4255719))

(assert (= (and b!4255719 res!1749446) b!4255715))

(assert (= (and b!4255715 res!1749444) b!4255714))

(assert (= (and b!4255714 res!1749445) b!4255718))

(declare-fun m!4840851 () Bool)

(assert (=> b!4255718 m!4840851))

(declare-fun m!4840853 () Bool)

(assert (=> b!4255717 m!4840853))

(declare-fun m!4840855 () Bool)

(assert (=> b!4255717 m!4840855))

(declare-fun m!4840857 () Bool)

(assert (=> b!4255714 m!4840857))

(declare-fun m!4840859 () Bool)

(assert (=> b!4255719 m!4840859))

(assert (=> b!4255716 m!4840853))

(assert (=> b!4255716 m!4840855))

(declare-fun m!4840861 () Bool)

(assert (=> b!4255715 m!4840861))

(assert (=> b!4255558 d!1251461))

(declare-fun b!4255724 () Bool)

(declare-fun e!2643355 () Bool)

(declare-fun tp_is_empty!22803 () Bool)

(declare-fun tp!1306073 () Bool)

(assert (=> b!4255724 (= e!2643355 (and tp_is_empty!22803 tp!1306073))))

(assert (=> b!4255554 (= tp!1306067 e!2643355)))

(assert (= (and b!4255554 ((_ is Cons!47200) (innerList!14271 (xs!17517 t!4386)))) b!4255724))

(declare-fun tp!1306082 () Bool)

(declare-fun tp!1306080 () Bool)

(declare-fun b!4255733 () Bool)

(declare-fun e!2643361 () Bool)

(assert (=> b!4255733 (= e!2643361 (and (inv!62003 (left!34977 (left!34977 t!4386))) tp!1306082 (inv!62003 (right!35307 (left!34977 t!4386))) tp!1306080))))

(declare-fun b!4255735 () Bool)

(declare-fun e!2643360 () Bool)

(declare-fun tp!1306081 () Bool)

(assert (=> b!4255735 (= e!2643360 tp!1306081)))

(declare-fun b!4255734 () Bool)

(assert (=> b!4255734 (= e!2643361 (and (inv!62004 (xs!17517 (left!34977 t!4386))) e!2643360))))

(assert (=> b!4255556 (= tp!1306069 (and (inv!62003 (left!34977 t!4386)) e!2643361))))

(assert (= (and b!4255556 ((_ is Node!14211) (left!34977 t!4386))) b!4255733))

(assert (= b!4255734 b!4255735))

(assert (= (and b!4255556 ((_ is Leaf!21970) (left!34977 t!4386))) b!4255734))

(declare-fun m!4840863 () Bool)

(assert (=> b!4255733 m!4840863))

(declare-fun m!4840865 () Bool)

(assert (=> b!4255733 m!4840865))

(declare-fun m!4840867 () Bool)

(assert (=> b!4255734 m!4840867))

(assert (=> b!4255556 m!4840663))

(declare-fun tp!1306085 () Bool)

(declare-fun e!2643367 () Bool)

(declare-fun b!4255742 () Bool)

(declare-fun tp!1306083 () Bool)

(assert (=> b!4255742 (= e!2643367 (and (inv!62003 (left!34977 (right!35307 t!4386))) tp!1306085 (inv!62003 (right!35307 (right!35307 t!4386))) tp!1306083))))

(declare-fun b!4255744 () Bool)

(declare-fun e!2643366 () Bool)

(declare-fun tp!1306084 () Bool)

(assert (=> b!4255744 (= e!2643366 tp!1306084)))

(declare-fun b!4255743 () Bool)

(assert (=> b!4255743 (= e!2643367 (and (inv!62004 (xs!17517 (right!35307 t!4386))) e!2643366))))

(assert (=> b!4255556 (= tp!1306068 (and (inv!62003 (right!35307 t!4386)) e!2643367))))

(assert (= (and b!4255556 ((_ is Node!14211) (right!35307 t!4386))) b!4255742))

(assert (= b!4255743 b!4255744))

(assert (= (and b!4255556 ((_ is Leaf!21970) (right!35307 t!4386))) b!4255743))

(declare-fun m!4840869 () Bool)

(assert (=> b!4255742 m!4840869))

(declare-fun m!4840871 () Bool)

(assert (=> b!4255742 m!4840871))

(declare-fun m!4840873 () Bool)

(assert (=> b!4255743 m!4840873))

(assert (=> b!4255556 m!4840665))

(declare-fun b_lambda!125351 () Bool)

(assert (= b_lambda!125343 (or (and start!407658 b_free!126653) b_lambda!125351)))

(declare-fun b_lambda!125353 () Bool)

(assert (= b_lambda!125339 (or (and start!407658 b_free!126653) b_lambda!125353)))

(declare-fun b_lambda!125355 () Bool)

(assert (= b_lambda!125341 (or (and start!407658 b_free!126653) b_lambda!125355)))

(check-sat (not d!1251431) (not d!1251417) b_and!337485 (not b!4255707) (not b!4255744) (not b!4255623) (not d!1251423) (not b!4255684) (not b!4255682) (not d!1251443) (not b!4255662) (not b_lambda!125353) (not b!4255686) tp_is_empty!22799 (not b!4255710) (not b!4255608) (not b!4255713) (not b!4255607) (not b!4255708) (not b!4255734) (not b!4255581) (not b!4255683) tp_is_empty!22803 (not b_next!127357) (not d!1251429) (not b!4255735) (not b!4255681) (not b!4255711) (not b!4255705) (not b!4255719) (not b_lambda!125351) (not b!4255580) (not b!4255742) (not b!4255743) (not b!4255733) (not b!4255663) (not d!1251437) (not b_lambda!125355) (not b!4255717) (not b!4255626) (not d!1251435) (not b!4255718) (not b!4255714) (not b!4255624) (not b!4255685) (not b!4255618) (not b!4255716) (not b!4255640) (not b!4255556) (not b!4255715) (not b!4255724))
(check-sat b_and!337485 (not b_next!127357))
