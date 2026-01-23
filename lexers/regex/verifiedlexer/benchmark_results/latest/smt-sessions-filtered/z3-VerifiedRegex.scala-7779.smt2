; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!408666 () Bool)

(assert start!408666)

(declare-datatypes ((B!2865 0))(
  ( (B!2866 (val!15262 Int)) )
))
(declare-fun b!25415 () B!2865)

(declare-fun e!2648068 () Bool)

(declare-datatypes ((List!47391 0))(
  ( (Nil!47267) (Cons!47267 (h!52687 B!2865) (t!353458 List!47391)) )
))
(declare-fun l1!1529 () List!47391)

(declare-fun l2!1498 () List!47391)

(declare-fun b!4264712 () Bool)

(declare-fun contains!9788 (List!47391 B!2865) Bool)

(declare-fun ++!12048 (List!47391 List!47391) List!47391)

(assert (=> b!4264712 (= e!2648068 (contains!9788 (++!12048 l1!1529 l2!1498) b!25415))))

(declare-fun b!4264713 () Bool)

(declare-fun res!1752706 () Bool)

(assert (=> b!4264713 (=> (not res!1752706) (not e!2648068))))

(assert (=> b!4264713 (= res!1752706 (not (contains!9788 l2!1498 b!25415)))))

(declare-fun res!1752705 () Bool)

(assert (=> start!408666 (=> (not res!1752705) (not e!2648068))))

(assert (=> start!408666 (= res!1752705 (not (contains!9788 l1!1529 b!25415)))))

(assert (=> start!408666 e!2648068))

(declare-fun e!2648067 () Bool)

(assert (=> start!408666 e!2648067))

(declare-fun tp_is_empty!22933 () Bool)

(assert (=> start!408666 tp_is_empty!22933))

(declare-fun e!2648066 () Bool)

(assert (=> start!408666 e!2648066))

(declare-fun b!4264714 () Bool)

(declare-fun tp!1307433 () Bool)

(assert (=> b!4264714 (= e!2648066 (and tp_is_empty!22933 tp!1307433))))

(declare-fun b!4264715 () Bool)

(declare-fun res!1752707 () Bool)

(assert (=> b!4264715 (=> (not res!1752707) (not e!2648068))))

(get-info :version)

(assert (=> b!4264715 (= res!1752707 (and (or (not ((_ is Cons!47267) l1!1529)) (not (= (h!52687 l1!1529) b!25415))) (not ((_ is Cons!47267) l1!1529))))))

(declare-fun b!4264716 () Bool)

(declare-fun tp!1307434 () Bool)

(assert (=> b!4264716 (= e!2648067 (and tp_is_empty!22933 tp!1307434))))

(assert (= (and start!408666 res!1752705) b!4264713))

(assert (= (and b!4264713 res!1752706) b!4264715))

(assert (= (and b!4264715 res!1752707) b!4264712))

(assert (= (and start!408666 ((_ is Cons!47267) l1!1529)) b!4264716))

(assert (= (and start!408666 ((_ is Cons!47267) l2!1498)) b!4264714))

(declare-fun m!4854983 () Bool)

(assert (=> b!4264712 m!4854983))

(assert (=> b!4264712 m!4854983))

(declare-fun m!4854985 () Bool)

(assert (=> b!4264712 m!4854985))

(declare-fun m!4854987 () Bool)

(assert (=> b!4264713 m!4854987))

(declare-fun m!4854989 () Bool)

(assert (=> start!408666 m!4854989))

(check-sat (not b!4264714) (not start!408666) tp_is_empty!22933 (not b!4264712) (not b!4264716) (not b!4264713))
(check-sat)
(get-model)

(declare-fun d!1256502 () Bool)

(declare-fun lt!1511472 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7468 (List!47391) (InoxSet B!2865))

(assert (=> d!1256502 (= lt!1511472 (select (content!7468 l1!1529) b!25415))))

(declare-fun e!2648079 () Bool)

(assert (=> d!1256502 (= lt!1511472 e!2648079)))

(declare-fun res!1752718 () Bool)

(assert (=> d!1256502 (=> (not res!1752718) (not e!2648079))))

(assert (=> d!1256502 (= res!1752718 ((_ is Cons!47267) l1!1529))))

(assert (=> d!1256502 (= (contains!9788 l1!1529 b!25415) lt!1511472)))

(declare-fun b!4264727 () Bool)

(declare-fun e!2648080 () Bool)

(assert (=> b!4264727 (= e!2648079 e!2648080)))

(declare-fun res!1752719 () Bool)

(assert (=> b!4264727 (=> res!1752719 e!2648080)))

(assert (=> b!4264727 (= res!1752719 (= (h!52687 l1!1529) b!25415))))

(declare-fun b!4264728 () Bool)

(assert (=> b!4264728 (= e!2648080 (contains!9788 (t!353458 l1!1529) b!25415))))

(assert (= (and d!1256502 res!1752718) b!4264727))

(assert (= (and b!4264727 (not res!1752719)) b!4264728))

(declare-fun m!4854997 () Bool)

(assert (=> d!1256502 m!4854997))

(declare-fun m!4854999 () Bool)

(assert (=> d!1256502 m!4854999))

(declare-fun m!4855001 () Bool)

(assert (=> b!4264728 m!4855001))

(assert (=> start!408666 d!1256502))

(declare-fun lt!1511473 () Bool)

(declare-fun d!1256506 () Bool)

(assert (=> d!1256506 (= lt!1511473 (select (content!7468 (++!12048 l1!1529 l2!1498)) b!25415))))

(declare-fun e!2648081 () Bool)

(assert (=> d!1256506 (= lt!1511473 e!2648081)))

(declare-fun res!1752720 () Bool)

(assert (=> d!1256506 (=> (not res!1752720) (not e!2648081))))

(assert (=> d!1256506 (= res!1752720 ((_ is Cons!47267) (++!12048 l1!1529 l2!1498)))))

(assert (=> d!1256506 (= (contains!9788 (++!12048 l1!1529 l2!1498) b!25415) lt!1511473)))

(declare-fun b!4264729 () Bool)

(declare-fun e!2648082 () Bool)

(assert (=> b!4264729 (= e!2648081 e!2648082)))

(declare-fun res!1752721 () Bool)

(assert (=> b!4264729 (=> res!1752721 e!2648082)))

(assert (=> b!4264729 (= res!1752721 (= (h!52687 (++!12048 l1!1529 l2!1498)) b!25415))))

(declare-fun b!4264730 () Bool)

(assert (=> b!4264730 (= e!2648082 (contains!9788 (t!353458 (++!12048 l1!1529 l2!1498)) b!25415))))

(assert (= (and d!1256506 res!1752720) b!4264729))

(assert (= (and b!4264729 (not res!1752721)) b!4264730))

(assert (=> d!1256506 m!4854983))

(declare-fun m!4855003 () Bool)

(assert (=> d!1256506 m!4855003))

(declare-fun m!4855005 () Bool)

(assert (=> d!1256506 m!4855005))

(declare-fun m!4855007 () Bool)

(assert (=> b!4264730 m!4855007))

(assert (=> b!4264712 d!1256506))

(declare-fun b!4264757 () Bool)

(declare-fun res!1752737 () Bool)

(declare-fun e!2648097 () Bool)

(assert (=> b!4264757 (=> (not res!1752737) (not e!2648097))))

(declare-fun lt!1511481 () List!47391)

(declare-fun size!34621 (List!47391) Int)

(assert (=> b!4264757 (= res!1752737 (= (size!34621 lt!1511481) (+ (size!34621 l1!1529) (size!34621 l2!1498))))))

(declare-fun b!4264755 () Bool)

(declare-fun e!2648098 () List!47391)

(assert (=> b!4264755 (= e!2648098 l2!1498)))

(declare-fun b!4264758 () Bool)

(assert (=> b!4264758 (= e!2648097 (or (not (= l2!1498 Nil!47267)) (= lt!1511481 l1!1529)))))

(declare-fun b!4264756 () Bool)

(assert (=> b!4264756 (= e!2648098 (Cons!47267 (h!52687 l1!1529) (++!12048 (t!353458 l1!1529) l2!1498)))))

(declare-fun d!1256508 () Bool)

(assert (=> d!1256508 e!2648097))

(declare-fun res!1752736 () Bool)

(assert (=> d!1256508 (=> (not res!1752736) (not e!2648097))))

(assert (=> d!1256508 (= res!1752736 (= (content!7468 lt!1511481) ((_ map or) (content!7468 l1!1529) (content!7468 l2!1498))))))

(assert (=> d!1256508 (= lt!1511481 e!2648098)))

(declare-fun c!724707 () Bool)

(assert (=> d!1256508 (= c!724707 ((_ is Nil!47267) l1!1529))))

(assert (=> d!1256508 (= (++!12048 l1!1529 l2!1498) lt!1511481)))

(assert (= (and d!1256508 c!724707) b!4264755))

(assert (= (and d!1256508 (not c!724707)) b!4264756))

(assert (= (and d!1256508 res!1752736) b!4264757))

(assert (= (and b!4264757 res!1752737) b!4264758))

(declare-fun m!4855031 () Bool)

(assert (=> b!4264757 m!4855031))

(declare-fun m!4855033 () Bool)

(assert (=> b!4264757 m!4855033))

(declare-fun m!4855035 () Bool)

(assert (=> b!4264757 m!4855035))

(declare-fun m!4855037 () Bool)

(assert (=> b!4264756 m!4855037))

(declare-fun m!4855039 () Bool)

(assert (=> d!1256508 m!4855039))

(assert (=> d!1256508 m!4854997))

(declare-fun m!4855041 () Bool)

(assert (=> d!1256508 m!4855041))

(assert (=> b!4264712 d!1256508))

(declare-fun d!1256514 () Bool)

(declare-fun lt!1511482 () Bool)

(assert (=> d!1256514 (= lt!1511482 (select (content!7468 l2!1498) b!25415))))

(declare-fun e!2648102 () Bool)

(assert (=> d!1256514 (= lt!1511482 e!2648102)))

(declare-fun res!1752738 () Bool)

(assert (=> d!1256514 (=> (not res!1752738) (not e!2648102))))

(assert (=> d!1256514 (= res!1752738 ((_ is Cons!47267) l2!1498))))

(assert (=> d!1256514 (= (contains!9788 l2!1498 b!25415) lt!1511482)))

(declare-fun b!4264764 () Bool)

(declare-fun e!2648103 () Bool)

(assert (=> b!4264764 (= e!2648102 e!2648103)))

(declare-fun res!1752739 () Bool)

(assert (=> b!4264764 (=> res!1752739 e!2648103)))

(assert (=> b!4264764 (= res!1752739 (= (h!52687 l2!1498) b!25415))))

(declare-fun b!4264765 () Bool)

(assert (=> b!4264765 (= e!2648103 (contains!9788 (t!353458 l2!1498) b!25415))))

(assert (= (and d!1256514 res!1752738) b!4264764))

(assert (= (and b!4264764 (not res!1752739)) b!4264765))

(assert (=> d!1256514 m!4855041))

(declare-fun m!4855043 () Bool)

(assert (=> d!1256514 m!4855043))

(declare-fun m!4855045 () Bool)

(assert (=> b!4264765 m!4855045))

(assert (=> b!4264713 d!1256514))

(declare-fun b!4264771 () Bool)

(declare-fun e!2648107 () Bool)

(declare-fun tp!1307441 () Bool)

(assert (=> b!4264771 (= e!2648107 (and tp_is_empty!22933 tp!1307441))))

(assert (=> b!4264714 (= tp!1307433 e!2648107)))

(assert (= (and b!4264714 ((_ is Cons!47267) (t!353458 l2!1498))) b!4264771))

(declare-fun b!4264772 () Bool)

(declare-fun e!2648108 () Bool)

(declare-fun tp!1307442 () Bool)

(assert (=> b!4264772 (= e!2648108 (and tp_is_empty!22933 tp!1307442))))

(assert (=> b!4264716 (= tp!1307434 e!2648108)))

(assert (= (and b!4264716 ((_ is Cons!47267) (t!353458 l1!1529))) b!4264772))

(check-sat (not b!4264757) (not d!1256506) (not d!1256508) (not d!1256502) (not b!4264756) (not b!4264772) (not b!4264765) (not d!1256514) (not b!4264730) tp_is_empty!22933 (not b!4264728) (not b!4264771))
(check-sat)
