; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!248772 () Bool)

(assert start!248772)

(declare-fun res!1083335 () Bool)

(declare-fun e!1625119 () Bool)

(assert (=> start!248772 (=> (not res!1083335) (not e!1625119))))

(declare-datatypes ((B!1917 0))(
  ( (B!1918 (val!9386 Int)) )
))
(declare-datatypes ((List!29720 0))(
  ( (Nil!29620) (Cons!29620 (h!35040 B!1917) (t!211419 List!29720)) )
))
(declare-fun l1!976 () List!29720)

(declare-fun l2!953 () List!29720)

(declare-fun consecutiveSubseq!8 (List!29720 List!29720) Bool)

(assert (=> start!248772 (= res!1083335 (consecutiveSubseq!8 l1!976 l2!953))))

(assert (=> start!248772 e!1625119))

(declare-fun e!1625120 () Bool)

(assert (=> start!248772 e!1625120))

(declare-fun e!1625118 () Bool)

(assert (=> start!248772 e!1625118))

(declare-fun b!2575623 () Bool)

(declare-fun res!1083337 () Bool)

(assert (=> b!2575623 (=> (not res!1083337) (not e!1625119))))

(assert (=> b!2575623 (= res!1083337 (consecutiveSubseq!8 (t!211419 l1!976) (t!211419 l2!953)))))

(declare-fun b!2575624 () Bool)

(declare-fun res!1083338 () Bool)

(assert (=> b!2575624 (=> (not res!1083338) (not e!1625119))))

(get-info :version)

(assert (=> b!2575624 (= res!1083338 (and ((_ is Cons!29620) l1!976) ((_ is Cons!29620) l2!953)))))

(declare-fun b!2575625 () Bool)

(declare-fun subseq!443 (List!29720 List!29720) Bool)

(assert (=> b!2575625 (= e!1625119 (not (subseq!443 l1!976 l2!953)))))

(assert (=> b!2575625 (subseq!443 (t!211419 l1!976) (t!211419 l2!953))))

(declare-datatypes ((Unit!43471 0))(
  ( (Unit!43472) )
))
(declare-fun lt!906576 () Unit!43471)

(declare-fun lemmaConsecutiveSubseqThenSubseq!2 (List!29720 List!29720) Unit!43471)

(assert (=> b!2575625 (= lt!906576 (lemmaConsecutiveSubseqThenSubseq!2 (t!211419 l1!976) (t!211419 l2!953)))))

(declare-fun b!2575626 () Bool)

(declare-fun tp_is_empty!13165 () Bool)

(declare-fun tp!818777 () Bool)

(assert (=> b!2575626 (= e!1625120 (and tp_is_empty!13165 tp!818777))))

(declare-fun b!2575627 () Bool)

(declare-fun res!1083336 () Bool)

(assert (=> b!2575627 (=> (not res!1083336) (not e!1625119))))

(declare-fun consecutiveSubseqAtHead!7 (List!29720 List!29720) Bool)

(assert (=> b!2575627 (= res!1083336 (consecutiveSubseqAtHead!7 l1!976 l2!953))))

(declare-fun b!2575628 () Bool)

(declare-fun tp!818778 () Bool)

(assert (=> b!2575628 (= e!1625118 (and tp_is_empty!13165 tp!818778))))

(assert (= (and start!248772 res!1083335) b!2575624))

(assert (= (and b!2575624 res!1083338) b!2575627))

(assert (= (and b!2575627 res!1083336) b!2575623))

(assert (= (and b!2575623 res!1083337) b!2575625))

(assert (= (and start!248772 ((_ is Cons!29620) l1!976)) b!2575626))

(assert (= (and start!248772 ((_ is Cons!29620) l2!953)) b!2575628))

(declare-fun m!2910579 () Bool)

(assert (=> start!248772 m!2910579))

(declare-fun m!2910581 () Bool)

(assert (=> b!2575623 m!2910581))

(declare-fun m!2910583 () Bool)

(assert (=> b!2575625 m!2910583))

(declare-fun m!2910585 () Bool)

(assert (=> b!2575625 m!2910585))

(declare-fun m!2910587 () Bool)

(assert (=> b!2575625 m!2910587))

(declare-fun m!2910589 () Bool)

(assert (=> b!2575627 m!2910589))

(check-sat (not b!2575627) (not b!2575628) (not b!2575626) tp_is_empty!13165 (not start!248772) (not b!2575625) (not b!2575623))
(check-sat)
(get-model)

(declare-fun b!2575645 () Bool)

(declare-fun e!1625131 () Bool)

(declare-fun call!166629 () Bool)

(assert (=> b!2575645 (= e!1625131 call!166629)))

(declare-fun b!2575646 () Bool)

(declare-fun e!1625132 () Bool)

(assert (=> b!2575646 (= e!1625132 (consecutiveSubseq!8 (t!211419 l1!976) (t!211419 (t!211419 l2!953))))))

(declare-fun d!728481 () Bool)

(declare-fun c!414861 () Bool)

(assert (=> d!728481 (= c!414861 ((_ is Cons!29620) (t!211419 l2!953)))))

(assert (=> d!728481 (= (consecutiveSubseq!8 (t!211419 l1!976) (t!211419 l2!953)) e!1625131)))

(declare-fun b!2575644 () Bool)

(assert (=> b!2575644 (= e!1625131 e!1625132)))

(declare-fun res!1083344 () Bool)

(assert (=> b!2575644 (= res!1083344 call!166629)))

(assert (=> b!2575644 (=> res!1083344 e!1625132)))

(declare-fun bm!166624 () Bool)

(assert (=> bm!166624 (= call!166629 (consecutiveSubseqAtHead!7 (t!211419 l1!976) (t!211419 l2!953)))))

(assert (= (and d!728481 c!414861) b!2575644))

(assert (= (and d!728481 (not c!414861)) b!2575645))

(assert (= (and b!2575644 (not res!1083344)) b!2575646))

(assert (= (or b!2575644 b!2575645) bm!166624))

(declare-fun m!2910593 () Bool)

(assert (=> b!2575646 m!2910593))

(declare-fun m!2910595 () Bool)

(assert (=> bm!166624 m!2910595))

(assert (=> b!2575623 d!728481))

(declare-fun b!2575650 () Bool)

(declare-fun e!1625137 () Bool)

(declare-fun call!166630 () Bool)

(assert (=> b!2575650 (= e!1625137 call!166630)))

(declare-fun b!2575651 () Bool)

(declare-fun e!1625138 () Bool)

(assert (=> b!2575651 (= e!1625138 (consecutiveSubseq!8 l1!976 (t!211419 l2!953)))))

(declare-fun d!728485 () Bool)

(declare-fun c!414862 () Bool)

(assert (=> d!728485 (= c!414862 ((_ is Cons!29620) l2!953))))

(assert (=> d!728485 (= (consecutiveSubseq!8 l1!976 l2!953) e!1625137)))

(declare-fun b!2575649 () Bool)

(assert (=> b!2575649 (= e!1625137 e!1625138)))

(declare-fun res!1083349 () Bool)

(assert (=> b!2575649 (= res!1083349 call!166630)))

(assert (=> b!2575649 (=> res!1083349 e!1625138)))

(declare-fun bm!166625 () Bool)

(assert (=> bm!166625 (= call!166630 (consecutiveSubseqAtHead!7 l1!976 l2!953))))

(assert (= (and d!728485 c!414862) b!2575649))

(assert (= (and d!728485 (not c!414862)) b!2575650))

(assert (= (and b!2575649 (not res!1083349)) b!2575651))

(assert (= (or b!2575649 b!2575650) bm!166625))

(declare-fun m!2910597 () Bool)

(assert (=> b!2575651 m!2910597))

(assert (=> bm!166625 m!2910589))

(assert (=> start!248772 d!728485))

(declare-fun d!728487 () Bool)

(declare-fun res!1083357 () Bool)

(declare-fun e!1625147 () Bool)

(assert (=> d!728487 (=> res!1083357 e!1625147)))

(assert (=> d!728487 (= res!1083357 ((_ is Nil!29620) l1!976))))

(assert (=> d!728487 (= (consecutiveSubseqAtHead!7 l1!976 l2!953) e!1625147)))

(declare-fun b!2575663 () Bool)

(declare-fun e!1625148 () Bool)

(assert (=> b!2575663 (= e!1625147 e!1625148)))

(declare-fun res!1083358 () Bool)

(assert (=> b!2575663 (=> (not res!1083358) (not e!1625148))))

(assert (=> b!2575663 (= res!1083358 (and ((_ is Cons!29620) l2!953) (= (h!35040 l1!976) (h!35040 l2!953))))))

(declare-fun b!2575664 () Bool)

(assert (=> b!2575664 (= e!1625148 (consecutiveSubseqAtHead!7 (t!211419 l1!976) (t!211419 l2!953)))))

(assert (= (and d!728487 (not res!1083357)) b!2575663))

(assert (= (and b!2575663 res!1083358) b!2575664))

(assert (=> b!2575664 m!2910595))

(assert (=> b!2575627 d!728487))

(declare-fun b!2575689 () Bool)

(declare-fun e!1625176 () Bool)

(declare-fun e!1625174 () Bool)

(assert (=> b!2575689 (= e!1625176 e!1625174)))

(declare-fun res!1083385 () Bool)

(assert (=> b!2575689 (=> (not res!1083385) (not e!1625174))))

(assert (=> b!2575689 (= res!1083385 ((_ is Cons!29620) l2!953))))

(declare-fun d!728493 () Bool)

(declare-fun res!1083386 () Bool)

(assert (=> d!728493 (=> res!1083386 e!1625176)))

(assert (=> d!728493 (= res!1083386 ((_ is Nil!29620) l1!976))))

(assert (=> d!728493 (= (subseq!443 l1!976 l2!953) e!1625176)))

(declare-fun b!2575690 () Bool)

(declare-fun e!1625175 () Bool)

(assert (=> b!2575690 (= e!1625174 e!1625175)))

(declare-fun res!1083384 () Bool)

(assert (=> b!2575690 (=> res!1083384 e!1625175)))

(declare-fun e!1625173 () Bool)

(assert (=> b!2575690 (= res!1083384 e!1625173)))

(declare-fun res!1083383 () Bool)

(assert (=> b!2575690 (=> (not res!1083383) (not e!1625173))))

(assert (=> b!2575690 (= res!1083383 (= (h!35040 l1!976) (h!35040 l2!953)))))

(declare-fun b!2575691 () Bool)

(assert (=> b!2575691 (= e!1625173 (subseq!443 (t!211419 l1!976) (t!211419 l2!953)))))

(declare-fun b!2575692 () Bool)

(assert (=> b!2575692 (= e!1625175 (subseq!443 l1!976 (t!211419 l2!953)))))

(assert (= (and d!728493 (not res!1083386)) b!2575689))

(assert (= (and b!2575689 res!1083385) b!2575690))

(assert (= (and b!2575690 res!1083383) b!2575691))

(assert (= (and b!2575690 (not res!1083384)) b!2575692))

(assert (=> b!2575691 m!2910585))

(declare-fun m!2910609 () Bool)

(assert (=> b!2575692 m!2910609))

(assert (=> b!2575625 d!728493))

(declare-fun b!2575693 () Bool)

(declare-fun e!1625180 () Bool)

(declare-fun e!1625178 () Bool)

(assert (=> b!2575693 (= e!1625180 e!1625178)))

(declare-fun res!1083389 () Bool)

(assert (=> b!2575693 (=> (not res!1083389) (not e!1625178))))

(assert (=> b!2575693 (= res!1083389 ((_ is Cons!29620) (t!211419 l2!953)))))

(declare-fun d!728499 () Bool)

(declare-fun res!1083390 () Bool)

(assert (=> d!728499 (=> res!1083390 e!1625180)))

(assert (=> d!728499 (= res!1083390 ((_ is Nil!29620) (t!211419 l1!976)))))

(assert (=> d!728499 (= (subseq!443 (t!211419 l1!976) (t!211419 l2!953)) e!1625180)))

(declare-fun b!2575694 () Bool)

(declare-fun e!1625179 () Bool)

(assert (=> b!2575694 (= e!1625178 e!1625179)))

(declare-fun res!1083388 () Bool)

(assert (=> b!2575694 (=> res!1083388 e!1625179)))

(declare-fun e!1625177 () Bool)

(assert (=> b!2575694 (= res!1083388 e!1625177)))

(declare-fun res!1083387 () Bool)

(assert (=> b!2575694 (=> (not res!1083387) (not e!1625177))))

(assert (=> b!2575694 (= res!1083387 (= (h!35040 (t!211419 l1!976)) (h!35040 (t!211419 l2!953))))))

(declare-fun b!2575695 () Bool)

(assert (=> b!2575695 (= e!1625177 (subseq!443 (t!211419 (t!211419 l1!976)) (t!211419 (t!211419 l2!953))))))

(declare-fun b!2575696 () Bool)

(assert (=> b!2575696 (= e!1625179 (subseq!443 (t!211419 l1!976) (t!211419 (t!211419 l2!953))))))

(assert (= (and d!728499 (not res!1083390)) b!2575693))

(assert (= (and b!2575693 res!1083389) b!2575694))

(assert (= (and b!2575694 res!1083387) b!2575695))

(assert (= (and b!2575694 (not res!1083388)) b!2575696))

(declare-fun m!2910611 () Bool)

(assert (=> b!2575695 m!2910611))

(declare-fun m!2910613 () Bool)

(assert (=> b!2575696 m!2910613))

(assert (=> b!2575625 d!728499))

(declare-fun d!728501 () Bool)

(assert (=> d!728501 (subseq!443 (t!211419 l1!976) (t!211419 l2!953))))

(declare-fun lt!906582 () Unit!43471)

(declare-fun choose!15191 (List!29720 List!29720) Unit!43471)

(assert (=> d!728501 (= lt!906582 (choose!15191 (t!211419 l1!976) (t!211419 l2!953)))))

(assert (=> d!728501 (consecutiveSubseq!8 (t!211419 l1!976) (t!211419 l2!953))))

(assert (=> d!728501 (= (lemmaConsecutiveSubseqThenSubseq!2 (t!211419 l1!976) (t!211419 l2!953)) lt!906582)))

(declare-fun bs!470145 () Bool)

(assert (= bs!470145 d!728501))

(assert (=> bs!470145 m!2910585))

(declare-fun m!2910617 () Bool)

(assert (=> bs!470145 m!2910617))

(assert (=> bs!470145 m!2910581))

(assert (=> b!2575625 d!728501))

(declare-fun b!2575707 () Bool)

(declare-fun e!1625187 () Bool)

(declare-fun tp!818785 () Bool)

(assert (=> b!2575707 (= e!1625187 (and tp_is_empty!13165 tp!818785))))

(assert (=> b!2575628 (= tp!818778 e!1625187)))

(assert (= (and b!2575628 ((_ is Cons!29620) (t!211419 l2!953))) b!2575707))

(declare-fun b!2575708 () Bool)

(declare-fun e!1625188 () Bool)

(declare-fun tp!818786 () Bool)

(assert (=> b!2575708 (= e!1625188 (and tp_is_empty!13165 tp!818786))))

(assert (=> b!2575626 (= tp!818777 e!1625188)))

(assert (= (and b!2575626 ((_ is Cons!29620) (t!211419 l1!976))) b!2575708))

(check-sat (not b!2575695) (not bm!166625) (not b!2575646) (not d!728501) (not b!2575692) tp_is_empty!13165 (not bm!166624) (not b!2575696) (not b!2575664) (not b!2575691) (not b!2575651) (not b!2575707) (not b!2575708))
(check-sat)
