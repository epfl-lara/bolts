; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!689432 () Bool)

(assert start!689432)

(declare-fun res!2893860 () Bool)

(declare-fun e!4258617 () Bool)

(assert (=> start!689432 (=> (not res!2893860) (not e!4258617))))

(declare-datatypes ((B!3157 0))(
  ( (B!3158 (val!27558 Int)) )
))
(declare-datatypes ((List!68680 0))(
  ( (Nil!68556) (Cons!68556 (h!75004 B!3157) (t!382465 List!68680)) )
))
(declare-fun l1!1499 () List!68680)

(get-info :version)

(assert (=> start!689432 (= res!2893860 ((_ is Cons!68556) l1!1499))))

(assert (=> start!689432 e!4258617))

(declare-fun e!4258616 () Bool)

(assert (=> start!689432 e!4258616))

(declare-fun e!4258618 () Bool)

(assert (=> start!689432 e!4258618))

(declare-fun b!7083544 () Bool)

(declare-fun l2!1468 () List!68680)

(declare-fun subseq!715 (List!68680 List!68680) Bool)

(declare-fun ++!15898 (List!68680 List!68680) List!68680)

(assert (=> b!7083544 (= e!4258617 (not (subseq!715 l1!1499 (++!15898 l1!1499 l2!1468))))))

(assert (=> b!7083544 (subseq!715 (t!382465 l1!1499) (++!15898 (t!382465 l1!1499) l2!1468))))

(declare-datatypes ((Unit!162153 0))(
  ( (Unit!162154) )
))
(declare-fun lt!2554248 () Unit!162153)

(declare-fun lemmaConcatThenFirstSubseqOfTot!36 (List!68680 List!68680) Unit!162153)

(assert (=> b!7083544 (= lt!2554248 (lemmaConcatThenFirstSubseqOfTot!36 (t!382465 l1!1499) l2!1468))))

(declare-fun b!7083545 () Bool)

(declare-fun tp_is_empty!44667 () Bool)

(declare-fun tp!1944176 () Bool)

(assert (=> b!7083545 (= e!4258616 (and tp_is_empty!44667 tp!1944176))))

(declare-fun b!7083546 () Bool)

(declare-fun tp!1944175 () Bool)

(assert (=> b!7083546 (= e!4258618 (and tp_is_empty!44667 tp!1944175))))

(assert (= (and start!689432 res!2893860) b!7083544))

(assert (= (and start!689432 ((_ is Cons!68556) l1!1499)) b!7083545))

(assert (= (and start!689432 ((_ is Cons!68556) l2!1468)) b!7083546))

(declare-fun m!7815738 () Bool)

(assert (=> b!7083544 m!7815738))

(declare-fun m!7815740 () Bool)

(assert (=> b!7083544 m!7815740))

(declare-fun m!7815742 () Bool)

(assert (=> b!7083544 m!7815742))

(declare-fun m!7815744 () Bool)

(assert (=> b!7083544 m!7815744))

(assert (=> b!7083544 m!7815738))

(assert (=> b!7083544 m!7815742))

(declare-fun m!7815746 () Bool)

(assert (=> b!7083544 m!7815746))

(check-sat (not b!7083544) (not b!7083545) (not b!7083546) tp_is_empty!44667)
(check-sat)
(get-model)

(declare-fun b!7083556 () Bool)

(declare-fun e!4258630 () Bool)

(declare-fun e!4258628 () Bool)

(assert (=> b!7083556 (= e!4258630 e!4258628)))

(declare-fun res!2893872 () Bool)

(assert (=> b!7083556 (=> res!2893872 e!4258628)))

(declare-fun e!4258627 () Bool)

(assert (=> b!7083556 (= res!2893872 e!4258627)))

(declare-fun res!2893871 () Bool)

(assert (=> b!7083556 (=> (not res!2893871) (not e!4258627))))

(assert (=> b!7083556 (= res!2893871 (= (h!75004 (t!382465 l1!1499)) (h!75004 (++!15898 (t!382465 l1!1499) l2!1468))))))

(declare-fun b!7083555 () Bool)

(declare-fun e!4258629 () Bool)

(assert (=> b!7083555 (= e!4258629 e!4258630)))

(declare-fun res!2893870 () Bool)

(assert (=> b!7083555 (=> (not res!2893870) (not e!4258630))))

(assert (=> b!7083555 (= res!2893870 ((_ is Cons!68556) (++!15898 (t!382465 l1!1499) l2!1468)))))

(declare-fun b!7083558 () Bool)

(assert (=> b!7083558 (= e!4258628 (subseq!715 (t!382465 l1!1499) (t!382465 (++!15898 (t!382465 l1!1499) l2!1468))))))

(declare-fun b!7083557 () Bool)

(assert (=> b!7083557 (= e!4258627 (subseq!715 (t!382465 (t!382465 l1!1499)) (t!382465 (++!15898 (t!382465 l1!1499) l2!1468))))))

(declare-fun d!2215668 () Bool)

(declare-fun res!2893869 () Bool)

(assert (=> d!2215668 (=> res!2893869 e!4258629)))

(assert (=> d!2215668 (= res!2893869 ((_ is Nil!68556) (t!382465 l1!1499)))))

(assert (=> d!2215668 (= (subseq!715 (t!382465 l1!1499) (++!15898 (t!382465 l1!1499) l2!1468)) e!4258629)))

(assert (= (and d!2215668 (not res!2893869)) b!7083555))

(assert (= (and b!7083555 res!2893870) b!7083556))

(assert (= (and b!7083556 res!2893871) b!7083557))

(assert (= (and b!7083556 (not res!2893872)) b!7083558))

(declare-fun m!7815748 () Bool)

(assert (=> b!7083558 m!7815748))

(declare-fun m!7815750 () Bool)

(assert (=> b!7083557 m!7815750))

(assert (=> b!7083544 d!2215668))

(declare-fun b!7083560 () Bool)

(declare-fun e!4258634 () Bool)

(declare-fun e!4258632 () Bool)

(assert (=> b!7083560 (= e!4258634 e!4258632)))

(declare-fun res!2893876 () Bool)

(assert (=> b!7083560 (=> res!2893876 e!4258632)))

(declare-fun e!4258631 () Bool)

(assert (=> b!7083560 (= res!2893876 e!4258631)))

(declare-fun res!2893875 () Bool)

(assert (=> b!7083560 (=> (not res!2893875) (not e!4258631))))

(assert (=> b!7083560 (= res!2893875 (= (h!75004 l1!1499) (h!75004 (++!15898 l1!1499 l2!1468))))))

(declare-fun b!7083559 () Bool)

(declare-fun e!4258633 () Bool)

(assert (=> b!7083559 (= e!4258633 e!4258634)))

(declare-fun res!2893874 () Bool)

(assert (=> b!7083559 (=> (not res!2893874) (not e!4258634))))

(assert (=> b!7083559 (= res!2893874 ((_ is Cons!68556) (++!15898 l1!1499 l2!1468)))))

(declare-fun b!7083562 () Bool)

(assert (=> b!7083562 (= e!4258632 (subseq!715 l1!1499 (t!382465 (++!15898 l1!1499 l2!1468))))))

(declare-fun b!7083561 () Bool)

(assert (=> b!7083561 (= e!4258631 (subseq!715 (t!382465 l1!1499) (t!382465 (++!15898 l1!1499 l2!1468))))))

(declare-fun d!2215672 () Bool)

(declare-fun res!2893873 () Bool)

(assert (=> d!2215672 (=> res!2893873 e!4258633)))

(assert (=> d!2215672 (= res!2893873 ((_ is Nil!68556) l1!1499))))

(assert (=> d!2215672 (= (subseq!715 l1!1499 (++!15898 l1!1499 l2!1468)) e!4258633)))

(assert (= (and d!2215672 (not res!2893873)) b!7083559))

(assert (= (and b!7083559 res!2893874) b!7083560))

(assert (= (and b!7083560 res!2893875) b!7083561))

(assert (= (and b!7083560 (not res!2893876)) b!7083562))

(declare-fun m!7815752 () Bool)

(assert (=> b!7083562 m!7815752))

(declare-fun m!7815754 () Bool)

(assert (=> b!7083561 m!7815754))

(assert (=> b!7083544 d!2215672))

(declare-fun d!2215674 () Bool)

(assert (=> d!2215674 (subseq!715 (t!382465 l1!1499) (++!15898 (t!382465 l1!1499) l2!1468))))

(declare-fun lt!2554251 () Unit!162153)

(declare-fun choose!54580 (List!68680 List!68680) Unit!162153)

(assert (=> d!2215674 (= lt!2554251 (choose!54580 (t!382465 l1!1499) l2!1468))))

(assert (=> d!2215674 (= (lemmaConcatThenFirstSubseqOfTot!36 (t!382465 l1!1499) l2!1468) lt!2554251)))

(declare-fun bs!1882739 () Bool)

(assert (= bs!1882739 d!2215674))

(assert (=> bs!1882739 m!7815738))

(assert (=> bs!1882739 m!7815738))

(assert (=> bs!1882739 m!7815740))

(declare-fun m!7815756 () Bool)

(assert (=> bs!1882739 m!7815756))

(assert (=> b!7083544 d!2215674))

(declare-fun b!7083587 () Bool)

(declare-fun e!4258655 () List!68680)

(assert (=> b!7083587 (= e!4258655 l2!1468)))

(declare-fun b!7083588 () Bool)

(assert (=> b!7083588 (= e!4258655 (Cons!68556 (h!75004 l1!1499) (++!15898 (t!382465 l1!1499) l2!1468)))))

(declare-fun b!7083590 () Bool)

(declare-fun e!4258656 () Bool)

(declare-fun lt!2554254 () List!68680)

(assert (=> b!7083590 (= e!4258656 (or (not (= l2!1468 Nil!68556)) (= lt!2554254 l1!1499)))))

(declare-fun b!7083589 () Bool)

(declare-fun res!2893898 () Bool)

(assert (=> b!7083589 (=> (not res!2893898) (not e!4258656))))

(declare-fun size!41282 (List!68680) Int)

(assert (=> b!7083589 (= res!2893898 (= (size!41282 lt!2554254) (+ (size!41282 l1!1499) (size!41282 l2!1468))))))

(declare-fun d!2215676 () Bool)

(assert (=> d!2215676 e!4258656))

(declare-fun res!2893897 () Bool)

(assert (=> d!2215676 (=> (not res!2893897) (not e!4258656))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!13907 (List!68680) (InoxSet B!3157))

(assert (=> d!2215676 (= res!2893897 (= (content!13907 lt!2554254) ((_ map or) (content!13907 l1!1499) (content!13907 l2!1468))))))

(assert (=> d!2215676 (= lt!2554254 e!4258655)))

(declare-fun c!1322219 () Bool)

(assert (=> d!2215676 (= c!1322219 ((_ is Nil!68556) l1!1499))))

(assert (=> d!2215676 (= (++!15898 l1!1499 l2!1468) lt!2554254)))

(assert (= (and d!2215676 c!1322219) b!7083587))

(assert (= (and d!2215676 (not c!1322219)) b!7083588))

(assert (= (and d!2215676 res!2893897) b!7083589))

(assert (= (and b!7083589 res!2893898) b!7083590))

(assert (=> b!7083588 m!7815738))

(declare-fun m!7815766 () Bool)

(assert (=> b!7083589 m!7815766))

(declare-fun m!7815768 () Bool)

(assert (=> b!7083589 m!7815768))

(declare-fun m!7815770 () Bool)

(assert (=> b!7083589 m!7815770))

(declare-fun m!7815772 () Bool)

(assert (=> d!2215676 m!7815772))

(declare-fun m!7815774 () Bool)

(assert (=> d!2215676 m!7815774))

(declare-fun m!7815776 () Bool)

(assert (=> d!2215676 m!7815776))

(assert (=> b!7083544 d!2215676))

(declare-fun b!7083591 () Bool)

(declare-fun e!4258657 () List!68680)

(assert (=> b!7083591 (= e!4258657 l2!1468)))

(declare-fun b!7083592 () Bool)

(assert (=> b!7083592 (= e!4258657 (Cons!68556 (h!75004 (t!382465 l1!1499)) (++!15898 (t!382465 (t!382465 l1!1499)) l2!1468)))))

(declare-fun e!4258658 () Bool)

(declare-fun lt!2554255 () List!68680)

(declare-fun b!7083594 () Bool)

(assert (=> b!7083594 (= e!4258658 (or (not (= l2!1468 Nil!68556)) (= lt!2554255 (t!382465 l1!1499))))))

(declare-fun b!7083593 () Bool)

(declare-fun res!2893900 () Bool)

(assert (=> b!7083593 (=> (not res!2893900) (not e!4258658))))

(assert (=> b!7083593 (= res!2893900 (= (size!41282 lt!2554255) (+ (size!41282 (t!382465 l1!1499)) (size!41282 l2!1468))))))

(declare-fun d!2215682 () Bool)

(assert (=> d!2215682 e!4258658))

(declare-fun res!2893899 () Bool)

(assert (=> d!2215682 (=> (not res!2893899) (not e!4258658))))

(assert (=> d!2215682 (= res!2893899 (= (content!13907 lt!2554255) ((_ map or) (content!13907 (t!382465 l1!1499)) (content!13907 l2!1468))))))

(assert (=> d!2215682 (= lt!2554255 e!4258657)))

(declare-fun c!1322220 () Bool)

(assert (=> d!2215682 (= c!1322220 ((_ is Nil!68556) (t!382465 l1!1499)))))

(assert (=> d!2215682 (= (++!15898 (t!382465 l1!1499) l2!1468) lt!2554255)))

(assert (= (and d!2215682 c!1322220) b!7083591))

(assert (= (and d!2215682 (not c!1322220)) b!7083592))

(assert (= (and d!2215682 res!2893899) b!7083593))

(assert (= (and b!7083593 res!2893900) b!7083594))

(declare-fun m!7815778 () Bool)

(assert (=> b!7083592 m!7815778))

(declare-fun m!7815780 () Bool)

(assert (=> b!7083593 m!7815780))

(declare-fun m!7815782 () Bool)

(assert (=> b!7083593 m!7815782))

(assert (=> b!7083593 m!7815770))

(declare-fun m!7815784 () Bool)

(assert (=> d!2215682 m!7815784))

(declare-fun m!7815786 () Bool)

(assert (=> d!2215682 m!7815786))

(assert (=> d!2215682 m!7815776))

(assert (=> b!7083544 d!2215682))

(declare-fun b!7083599 () Bool)

(declare-fun e!4258661 () Bool)

(declare-fun tp!1944179 () Bool)

(assert (=> b!7083599 (= e!4258661 (and tp_is_empty!44667 tp!1944179))))

(assert (=> b!7083545 (= tp!1944176 e!4258661)))

(assert (= (and b!7083545 ((_ is Cons!68556) (t!382465 l1!1499))) b!7083599))

(declare-fun b!7083600 () Bool)

(declare-fun e!4258662 () Bool)

(declare-fun tp!1944180 () Bool)

(assert (=> b!7083600 (= e!4258662 (and tp_is_empty!44667 tp!1944180))))

(assert (=> b!7083546 (= tp!1944175 e!4258662)))

(assert (= (and b!7083546 ((_ is Cons!68556) (t!382465 l2!1468))) b!7083600))

(check-sat (not b!7083557) (not d!2215682) (not b!7083588) (not d!2215674) (not b!7083593) tp_is_empty!44667 (not b!7083562) (not b!7083599) (not b!7083561) (not b!7083600) (not b!7083589) (not b!7083558) (not b!7083592) (not d!2215676))
(check-sat)
