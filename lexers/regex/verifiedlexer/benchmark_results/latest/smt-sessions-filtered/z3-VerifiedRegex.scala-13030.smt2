; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!714398 () Bool)

(assert start!714398)

(declare-fun b_free!134297 () Bool)

(declare-fun b_next!135087 () Bool)

(assert (=> start!714398 (= b_free!134297 (not b_next!135087))))

(declare-fun tp!2079697 () Bool)

(declare-fun b_and!351835 () Bool)

(assert (=> start!714398 (= tp!2079697 b_and!351835)))

(declare-fun b!7321735 () Bool)

(declare-fun res!2959513 () Bool)

(declare-fun e!4383776 () Bool)

(assert (=> b!7321735 (=> (not res!2959513) (not e!4383776))))

(declare-fun p!1874 () Int)

(declare-datatypes ((B!3829 0))(
  ( (B!3830 (val!29446 Int)) )
))
(declare-fun e!9239 () B!3829)

(declare-fun dynLambda!29378 (Int B!3829) Bool)

(assert (=> b!7321735 (= res!2959513 (dynLambda!29378 p!1874 e!9239))))

(declare-fun b!7321736 () Bool)

(declare-fun res!2959514 () Bool)

(assert (=> b!7321736 (=> (not res!2959514) (not e!4383776))))

(declare-datatypes ((List!71445 0))(
  ( (Nil!71321) (Cons!71321 (h!77769 B!3829) (t!385812 List!71445)) )
))
(declare-fun l!3043 () List!71445)

(declare-fun contains!20828 (List!71445 B!3829) Bool)

(assert (=> b!7321736 (= res!2959514 (contains!20828 (t!385812 l!3043) e!9239))))

(declare-fun b!7321737 () Bool)

(declare-fun res!2959511 () Bool)

(assert (=> b!7321737 (=> (not res!2959511) (not e!4383776))))

(get-info :version)

(assert (=> b!7321737 (= res!2959511 (and (or (not ((_ is Cons!71321) l!3043)) (not (= (h!77769 l!3043) e!9239))) ((_ is Cons!71321) l!3043)))))

(declare-fun res!2959512 () Bool)

(assert (=> start!714398 (=> (not res!2959512) (not e!4383776))))

(assert (=> start!714398 (= res!2959512 (contains!20828 l!3043 e!9239))))

(assert (=> start!714398 e!4383776))

(declare-fun e!4383777 () Bool)

(assert (=> start!714398 e!4383777))

(declare-fun tp_is_empty!48143 () Bool)

(assert (=> start!714398 tp_is_empty!48143))

(assert (=> start!714398 tp!2079697))

(declare-fun b!7321738 () Bool)

(declare-fun ListPrimitiveSize!434 (List!71445) Int)

(assert (=> b!7321738 (= e!4383776 (>= (ListPrimitiveSize!434 (t!385812 l!3043)) (ListPrimitiveSize!434 l!3043)))))

(declare-fun b!7321739 () Bool)

(declare-fun tp!2079696 () Bool)

(assert (=> b!7321739 (= e!4383777 (and tp_is_empty!48143 tp!2079696))))

(assert (= (and start!714398 res!2959512) b!7321735))

(assert (= (and b!7321735 res!2959513) b!7321737))

(assert (= (and b!7321737 res!2959511) b!7321736))

(assert (= (and b!7321736 res!2959514) b!7321738))

(assert (= (and start!714398 ((_ is Cons!71321) l!3043)) b!7321739))

(declare-fun b_lambda!283077 () Bool)

(assert (=> (not b_lambda!283077) (not b!7321735)))

(declare-fun t!385811 () Bool)

(declare-fun tb!262377 () Bool)

(assert (=> (and start!714398 (= p!1874 p!1874) t!385811) tb!262377))

(declare-fun result!353584 () Bool)

(assert (=> tb!262377 (= result!353584 true)))

(assert (=> b!7321735 t!385811))

(declare-fun b_and!351837 () Bool)

(assert (= b_and!351835 (and (=> t!385811 result!353584) b_and!351837)))

(declare-fun m!7987440 () Bool)

(assert (=> b!7321735 m!7987440))

(declare-fun m!7987442 () Bool)

(assert (=> b!7321736 m!7987442))

(declare-fun m!7987444 () Bool)

(assert (=> start!714398 m!7987444))

(declare-fun m!7987446 () Bool)

(assert (=> b!7321738 m!7987446))

(declare-fun m!7987448 () Bool)

(assert (=> b!7321738 m!7987448))

(check-sat (not b!7321738) (not b_next!135087) (not b!7321736) b_and!351837 (not start!714398) tp_is_empty!48143 (not b!7321739) (not b_lambda!283077))
(check-sat b_and!351837 (not b_next!135087))
(get-model)

(declare-fun b_lambda!283081 () Bool)

(assert (= b_lambda!283077 (or (and start!714398 b_free!134297) b_lambda!283081)))

(check-sat (not b_lambda!283081) (not b!7321738) (not b_next!135087) (not b!7321736) b_and!351837 (not start!714398) tp_is_empty!48143 (not b!7321739))
(check-sat b_and!351837 (not b_next!135087))
(get-model)

(declare-fun d!2273689 () Bool)

(declare-fun lt!2604785 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!14914 (List!71445) (InoxSet B!3829))

(assert (=> d!2273689 (= lt!2604785 (select (content!14914 (t!385812 l!3043)) e!9239))))

(declare-fun e!4383798 () Bool)

(assert (=> d!2273689 (= lt!2604785 e!4383798)))

(declare-fun res!2959527 () Bool)

(assert (=> d!2273689 (=> (not res!2959527) (not e!4383798))))

(assert (=> d!2273689 (= res!2959527 ((_ is Cons!71321) (t!385812 l!3043)))))

(assert (=> d!2273689 (= (contains!20828 (t!385812 l!3043) e!9239) lt!2604785)))

(declare-fun b!7321765 () Bool)

(declare-fun e!4383797 () Bool)

(assert (=> b!7321765 (= e!4383798 e!4383797)))

(declare-fun res!2959528 () Bool)

(assert (=> b!7321765 (=> res!2959528 e!4383797)))

(assert (=> b!7321765 (= res!2959528 (= (h!77769 (t!385812 l!3043)) e!9239))))

(declare-fun b!7321766 () Bool)

(assert (=> b!7321766 (= e!4383797 (contains!20828 (t!385812 (t!385812 l!3043)) e!9239))))

(assert (= (and d!2273689 res!2959527) b!7321765))

(assert (= (and b!7321765 (not res!2959528)) b!7321766))

(declare-fun m!7987462 () Bool)

(assert (=> d!2273689 m!7987462))

(declare-fun m!7987464 () Bool)

(assert (=> d!2273689 m!7987464))

(declare-fun m!7987466 () Bool)

(assert (=> b!7321766 m!7987466))

(assert (=> b!7321736 d!2273689))

(declare-fun d!2273697 () Bool)

(declare-fun lt!2604786 () Bool)

(assert (=> d!2273697 (= lt!2604786 (select (content!14914 l!3043) e!9239))))

(declare-fun e!4383800 () Bool)

(assert (=> d!2273697 (= lt!2604786 e!4383800)))

(declare-fun res!2959529 () Bool)

(assert (=> d!2273697 (=> (not res!2959529) (not e!4383800))))

(assert (=> d!2273697 (= res!2959529 ((_ is Cons!71321) l!3043))))

(assert (=> d!2273697 (= (contains!20828 l!3043 e!9239) lt!2604786)))

(declare-fun b!7321767 () Bool)

(declare-fun e!4383799 () Bool)

(assert (=> b!7321767 (= e!4383800 e!4383799)))

(declare-fun res!2959530 () Bool)

(assert (=> b!7321767 (=> res!2959530 e!4383799)))

(assert (=> b!7321767 (= res!2959530 (= (h!77769 l!3043) e!9239))))

(declare-fun b!7321768 () Bool)

(assert (=> b!7321768 (= e!4383799 (contains!20828 (t!385812 l!3043) e!9239))))

(assert (= (and d!2273697 res!2959529) b!7321767))

(assert (= (and b!7321767 (not res!2959530)) b!7321768))

(declare-fun m!7987468 () Bool)

(assert (=> d!2273697 m!7987468))

(declare-fun m!7987470 () Bool)

(assert (=> d!2273697 m!7987470))

(assert (=> b!7321768 m!7987442))

(assert (=> start!714398 d!2273697))

(declare-fun d!2273699 () Bool)

(declare-fun lt!2604789 () Int)

(assert (=> d!2273699 (>= lt!2604789 0)))

(declare-fun e!4383803 () Int)

(assert (=> d!2273699 (= lt!2604789 e!4383803)))

(declare-fun c!1358789 () Bool)

(assert (=> d!2273699 (= c!1358789 ((_ is Nil!71321) (t!385812 l!3043)))))

(assert (=> d!2273699 (= (ListPrimitiveSize!434 (t!385812 l!3043)) lt!2604789)))

(declare-fun b!7321773 () Bool)

(assert (=> b!7321773 (= e!4383803 0)))

(declare-fun b!7321774 () Bool)

(assert (=> b!7321774 (= e!4383803 (+ 1 (ListPrimitiveSize!434 (t!385812 (t!385812 l!3043)))))))

(assert (= (and d!2273699 c!1358789) b!7321773))

(assert (= (and d!2273699 (not c!1358789)) b!7321774))

(declare-fun m!7987472 () Bool)

(assert (=> b!7321774 m!7987472))

(assert (=> b!7321738 d!2273699))

(declare-fun d!2273701 () Bool)

(declare-fun lt!2604790 () Int)

(assert (=> d!2273701 (>= lt!2604790 0)))

(declare-fun e!4383804 () Int)

(assert (=> d!2273701 (= lt!2604790 e!4383804)))

(declare-fun c!1358790 () Bool)

(assert (=> d!2273701 (= c!1358790 ((_ is Nil!71321) l!3043))))

(assert (=> d!2273701 (= (ListPrimitiveSize!434 l!3043) lt!2604790)))

(declare-fun b!7321775 () Bool)

(assert (=> b!7321775 (= e!4383804 0)))

(declare-fun b!7321776 () Bool)

(assert (=> b!7321776 (= e!4383804 (+ 1 (ListPrimitiveSize!434 (t!385812 l!3043))))))

(assert (= (and d!2273701 c!1358790) b!7321775))

(assert (= (and d!2273701 (not c!1358790)) b!7321776))

(assert (=> b!7321776 m!7987446))

(assert (=> b!7321738 d!2273701))

(declare-fun b!7321781 () Bool)

(declare-fun e!4383807 () Bool)

(declare-fun tp!2079703 () Bool)

(assert (=> b!7321781 (= e!4383807 (and tp_is_empty!48143 tp!2079703))))

(assert (=> b!7321739 (= tp!2079696 e!4383807)))

(assert (= (and b!7321739 ((_ is Cons!71321) (t!385812 l!3043))) b!7321781))

(check-sat (not b_next!135087) (not d!2273689) b_and!351837 tp_is_empty!48143 (not b!7321774) (not b!7321766) (not b!7321776) (not b_lambda!283081) (not d!2273697) (not b!7321781) (not b!7321768))
(check-sat b_and!351837 (not b_next!135087))
