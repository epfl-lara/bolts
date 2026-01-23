; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!689448 () Bool)

(assert start!689448)

(declare-fun res!2893914 () Bool)

(declare-fun e!4258691 () Bool)

(assert (=> start!689448 (=> (not res!2893914) (not e!4258691))))

(declare-datatypes ((B!3161 0))(
  ( (B!3162 (val!27560 Int)) )
))
(declare-datatypes ((List!68682 0))(
  ( (Nil!68558) (Cons!68558 (h!75006 B!3161) (t!382467 List!68682)) )
))
(declare-fun l1!1499 () List!68682)

(get-info :version)

(assert (=> start!689448 (= res!2893914 (not ((_ is Cons!68558) l1!1499)))))

(assert (=> start!689448 e!4258691))

(declare-fun e!4258692 () Bool)

(assert (=> start!689448 e!4258692))

(declare-fun e!4258690 () Bool)

(assert (=> start!689448 e!4258690))

(declare-fun b!7083638 () Bool)

(declare-fun l2!1468 () List!68682)

(declare-fun subseq!717 (List!68682 List!68682) Bool)

(declare-fun ++!15900 (List!68682 List!68682) List!68682)

(assert (=> b!7083638 (= e!4258691 (not (subseq!717 l1!1499 (++!15900 l1!1499 l2!1468))))))

(declare-fun b!7083639 () Bool)

(declare-fun tp_is_empty!44671 () Bool)

(declare-fun tp!1944195 () Bool)

(assert (=> b!7083639 (= e!4258692 (and tp_is_empty!44671 tp!1944195))))

(declare-fun b!7083640 () Bool)

(declare-fun tp!1944196 () Bool)

(assert (=> b!7083640 (= e!4258690 (and tp_is_empty!44671 tp!1944196))))

(assert (= (and start!689448 res!2893914) b!7083638))

(assert (= (and start!689448 ((_ is Cons!68558) l1!1499)) b!7083639))

(assert (= (and start!689448 ((_ is Cons!68558) l2!1468)) b!7083640))

(declare-fun m!7815816 () Bool)

(assert (=> b!7083638 m!7815816))

(assert (=> b!7083638 m!7815816))

(declare-fun m!7815818 () Bool)

(assert (=> b!7083638 m!7815818))

(check-sat (not b!7083638) (not b!7083639) (not b!7083640) tp_is_empty!44671)
(check-sat)
(get-model)

(declare-fun b!7083664 () Bool)

(declare-fun e!4258714 () Bool)

(assert (=> b!7083664 (= e!4258714 (subseq!717 l1!1499 (t!382467 (++!15900 l1!1499 l2!1468))))))

(declare-fun b!7083663 () Bool)

(declare-fun e!4258716 () Bool)

(assert (=> b!7083663 (= e!4258716 (subseq!717 (t!382467 l1!1499) (t!382467 (++!15900 l1!1499 l2!1468))))))

(declare-fun d!2215691 () Bool)

(declare-fun res!2893937 () Bool)

(declare-fun e!4258715 () Bool)

(assert (=> d!2215691 (=> res!2893937 e!4258715)))

(assert (=> d!2215691 (= res!2893937 ((_ is Nil!68558) l1!1499))))

(assert (=> d!2215691 (= (subseq!717 l1!1499 (++!15900 l1!1499 l2!1468)) e!4258715)))

(declare-fun b!7083661 () Bool)

(declare-fun e!4258713 () Bool)

(assert (=> b!7083661 (= e!4258715 e!4258713)))

(declare-fun res!2893934 () Bool)

(assert (=> b!7083661 (=> (not res!2893934) (not e!4258713))))

(assert (=> b!7083661 (= res!2893934 ((_ is Cons!68558) (++!15900 l1!1499 l2!1468)))))

(declare-fun b!7083662 () Bool)

(assert (=> b!7083662 (= e!4258713 e!4258714)))

(declare-fun res!2893938 () Bool)

(assert (=> b!7083662 (=> res!2893938 e!4258714)))

(assert (=> b!7083662 (= res!2893938 e!4258716)))

(declare-fun res!2893935 () Bool)

(assert (=> b!7083662 (=> (not res!2893935) (not e!4258716))))

(assert (=> b!7083662 (= res!2893935 (= (h!75006 l1!1499) (h!75006 (++!15900 l1!1499 l2!1468))))))

(assert (= (and d!2215691 (not res!2893937)) b!7083661))

(assert (= (and b!7083661 res!2893934) b!7083662))

(assert (= (and b!7083662 res!2893935) b!7083663))

(assert (= (and b!7083662 (not res!2893938)) b!7083664))

(declare-fun m!7815820 () Bool)

(assert (=> b!7083664 m!7815820))

(declare-fun m!7815824 () Bool)

(assert (=> b!7083663 m!7815824))

(assert (=> b!7083638 d!2215691))

(declare-fun b!7083684 () Bool)

(declare-fun res!2893947 () Bool)

(declare-fun e!4258727 () Bool)

(assert (=> b!7083684 (=> (not res!2893947) (not e!4258727))))

(declare-fun lt!2554267 () List!68682)

(declare-fun size!41284 (List!68682) Int)

(assert (=> b!7083684 (= res!2893947 (= (size!41284 lt!2554267) (+ (size!41284 l1!1499) (size!41284 l2!1468))))))

(declare-fun b!7083681 () Bool)

(declare-fun e!4258725 () List!68682)

(assert (=> b!7083681 (= e!4258725 l2!1468)))

(declare-fun d!2215693 () Bool)

(assert (=> d!2215693 e!4258727))

(declare-fun res!2893949 () Bool)

(assert (=> d!2215693 (=> (not res!2893949) (not e!4258727))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!13910 (List!68682) (InoxSet B!3161))

(assert (=> d!2215693 (= res!2893949 (= (content!13910 lt!2554267) ((_ map or) (content!13910 l1!1499) (content!13910 l2!1468))))))

(assert (=> d!2215693 (= lt!2554267 e!4258725)))

(declare-fun c!1322229 () Bool)

(assert (=> d!2215693 (= c!1322229 ((_ is Nil!68558) l1!1499))))

(assert (=> d!2215693 (= (++!15900 l1!1499 l2!1468) lt!2554267)))

(declare-fun b!7083682 () Bool)

(assert (=> b!7083682 (= e!4258725 (Cons!68558 (h!75006 l1!1499) (++!15900 (t!382467 l1!1499) l2!1468)))))

(declare-fun b!7083686 () Bool)

(assert (=> b!7083686 (= e!4258727 (or (not (= l2!1468 Nil!68558)) (= lt!2554267 l1!1499)))))

(assert (= (and d!2215693 c!1322229) b!7083681))

(assert (= (and d!2215693 (not c!1322229)) b!7083682))

(assert (= (and d!2215693 res!2893949) b!7083684))

(assert (= (and b!7083684 res!2893947) b!7083686))

(declare-fun m!7815828 () Bool)

(assert (=> b!7083684 m!7815828))

(declare-fun m!7815832 () Bool)

(assert (=> b!7083684 m!7815832))

(declare-fun m!7815836 () Bool)

(assert (=> b!7083684 m!7815836))

(declare-fun m!7815840 () Bool)

(assert (=> d!2215693 m!7815840))

(declare-fun m!7815842 () Bool)

(assert (=> d!2215693 m!7815842))

(declare-fun m!7815846 () Bool)

(assert (=> d!2215693 m!7815846))

(declare-fun m!7815850 () Bool)

(assert (=> b!7083682 m!7815850))

(assert (=> b!7083638 d!2215693))

(declare-fun b!7083698 () Bool)

(declare-fun e!4258734 () Bool)

(declare-fun tp!1944202 () Bool)

(assert (=> b!7083698 (= e!4258734 (and tp_is_empty!44671 tp!1944202))))

(assert (=> b!7083639 (= tp!1944195 e!4258734)))

(assert (= (and b!7083639 ((_ is Cons!68558) (t!382467 l1!1499))) b!7083698))

(declare-fun b!7083700 () Bool)

(declare-fun e!4258736 () Bool)

(declare-fun tp!1944204 () Bool)

(assert (=> b!7083700 (= e!4258736 (and tp_is_empty!44671 tp!1944204))))

(assert (=> b!7083640 (= tp!1944196 e!4258736)))

(assert (= (and b!7083640 ((_ is Cons!68558) (t!382467 l2!1468))) b!7083700))

(check-sat (not b!7083663) (not b!7083664) tp_is_empty!44671 (not d!2215693) (not b!7083682) (not b!7083700) (not b!7083684) (not b!7083698))
(check-sat)
