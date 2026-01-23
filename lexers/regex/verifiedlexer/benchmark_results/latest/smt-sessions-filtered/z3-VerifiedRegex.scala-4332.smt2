; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!231056 () Bool)

(assert start!231056)

(declare-fun e!1505590 () Bool)

(declare-datatypes ((B!1861 0))(
  ( (B!1862 (val!8142 Int)) )
))
(declare-datatypes ((List!27954 0))(
  ( (Nil!27856) (Cons!27856 (h!33257 B!1861) (t!207813 List!27954)) )
))
(declare-fun l2!1244 () List!27954)

(declare-fun b!2357568 () Bool)

(declare-fun l3!250 () List!27954)

(declare-fun l1!1275 () List!27954)

(declare-fun subseq!441 (List!27954 List!27954) Bool)

(declare-fun ++!6874 (List!27954 List!27954) List!27954)

(assert (=> b!2357568 (= e!1505590 (not (subseq!441 l1!1275 (++!6874 l2!1244 l3!250))))))

(declare-fun b!2357569 () Bool)

(declare-fun e!1505587 () Bool)

(declare-fun tp_is_empty!11117 () Bool)

(declare-fun tp!753633 () Bool)

(assert (=> b!2357569 (= e!1505587 (and tp_is_empty!11117 tp!753633))))

(declare-fun res!1000751 () Bool)

(assert (=> start!231056 (=> (not res!1000751) (not e!1505590))))

(assert (=> start!231056 (= res!1000751 (subseq!441 l1!1275 l3!250))))

(assert (=> start!231056 e!1505590))

(assert (=> start!231056 e!1505587))

(declare-fun e!1505589 () Bool)

(assert (=> start!231056 e!1505589))

(declare-fun e!1505588 () Bool)

(assert (=> start!231056 e!1505588))

(declare-fun b!2357570 () Bool)

(declare-fun tp!753635 () Bool)

(assert (=> b!2357570 (= e!1505588 (and tp_is_empty!11117 tp!753635))))

(declare-fun b!2357571 () Bool)

(declare-fun tp!753634 () Bool)

(assert (=> b!2357571 (= e!1505589 (and tp_is_empty!11117 tp!753634))))

(declare-fun b!2357572 () Bool)

(declare-fun res!1000750 () Bool)

(assert (=> b!2357572 (=> (not res!1000750) (not e!1505590))))

(get-info :version)

(assert (=> b!2357572 (= res!1000750 (not ((_ is Cons!27856) l2!1244)))))

(assert (= (and start!231056 res!1000751) b!2357572))

(assert (= (and b!2357572 res!1000750) b!2357568))

(assert (= (and start!231056 ((_ is Cons!27856) l1!1275)) b!2357569))

(assert (= (and start!231056 ((_ is Cons!27856) l3!250)) b!2357571))

(assert (= (and start!231056 ((_ is Cons!27856) l2!1244)) b!2357570))

(declare-fun m!2770565 () Bool)

(assert (=> b!2357568 m!2770565))

(assert (=> b!2357568 m!2770565))

(declare-fun m!2770567 () Bool)

(assert (=> b!2357568 m!2770567))

(declare-fun m!2770569 () Bool)

(assert (=> start!231056 m!2770569))

(check-sat tp_is_empty!11117 (not b!2357569) (not b!2357570) (not b!2357568) (not start!231056) (not b!2357571))
(check-sat)
(get-model)

(declare-fun b!2357598 () Bool)

(declare-fun e!1505618 () Bool)

(declare-fun e!1505615 () Bool)

(assert (=> b!2357598 (= e!1505618 e!1505615)))

(declare-fun res!1000776 () Bool)

(assert (=> b!2357598 (=> res!1000776 e!1505615)))

(declare-fun e!1505616 () Bool)

(assert (=> b!2357598 (= res!1000776 e!1505616)))

(declare-fun res!1000777 () Bool)

(assert (=> b!2357598 (=> (not res!1000777) (not e!1505616))))

(assert (=> b!2357598 (= res!1000777 (= (h!33257 l1!1275) (h!33257 (++!6874 l2!1244 l3!250))))))

(declare-fun b!2357597 () Bool)

(declare-fun e!1505617 () Bool)

(assert (=> b!2357597 (= e!1505617 e!1505618)))

(declare-fun res!1000779 () Bool)

(assert (=> b!2357597 (=> (not res!1000779) (not e!1505618))))

(assert (=> b!2357597 (= res!1000779 ((_ is Cons!27856) (++!6874 l2!1244 l3!250)))))

(declare-fun d!693249 () Bool)

(declare-fun res!1000778 () Bool)

(assert (=> d!693249 (=> res!1000778 e!1505617)))

(assert (=> d!693249 (= res!1000778 ((_ is Nil!27856) l1!1275))))

(assert (=> d!693249 (= (subseq!441 l1!1275 (++!6874 l2!1244 l3!250)) e!1505617)))

(declare-fun b!2357599 () Bool)

(assert (=> b!2357599 (= e!1505616 (subseq!441 (t!207813 l1!1275) (t!207813 (++!6874 l2!1244 l3!250))))))

(declare-fun b!2357600 () Bool)

(assert (=> b!2357600 (= e!1505615 (subseq!441 l1!1275 (t!207813 (++!6874 l2!1244 l3!250))))))

(assert (= (and d!693249 (not res!1000778)) b!2357597))

(assert (= (and b!2357597 res!1000779) b!2357598))

(assert (= (and b!2357598 res!1000777) b!2357599))

(assert (= (and b!2357598 (not res!1000776)) b!2357600))

(declare-fun m!2770579 () Bool)

(assert (=> b!2357599 m!2770579))

(declare-fun m!2770581 () Bool)

(assert (=> b!2357600 m!2770581))

(assert (=> b!2357568 d!693249))

(declare-fun b!2357617 () Bool)

(declare-fun e!1505628 () List!27954)

(assert (=> b!2357617 (= e!1505628 l3!250)))

(declare-fun b!2357619 () Bool)

(declare-fun res!1000788 () Bool)

(declare-fun e!1505627 () Bool)

(assert (=> b!2357619 (=> (not res!1000788) (not e!1505627))))

(declare-fun lt!863124 () List!27954)

(declare-fun size!22034 (List!27954) Int)

(assert (=> b!2357619 (= res!1000788 (= (size!22034 lt!863124) (+ (size!22034 l2!1244) (size!22034 l3!250))))))

(declare-fun b!2357618 () Bool)

(assert (=> b!2357618 (= e!1505628 (Cons!27856 (h!33257 l2!1244) (++!6874 (t!207813 l2!1244) l3!250)))))

(declare-fun d!693255 () Bool)

(assert (=> d!693255 e!1505627))

(declare-fun res!1000789 () Bool)

(assert (=> d!693255 (=> (not res!1000789) (not e!1505627))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3782 (List!27954) (InoxSet B!1861))

(assert (=> d!693255 (= res!1000789 (= (content!3782 lt!863124) ((_ map or) (content!3782 l2!1244) (content!3782 l3!250))))))

(assert (=> d!693255 (= lt!863124 e!1505628)))

(declare-fun c!374804 () Bool)

(assert (=> d!693255 (= c!374804 ((_ is Nil!27856) l2!1244))))

(assert (=> d!693255 (= (++!6874 l2!1244 l3!250) lt!863124)))

(declare-fun b!2357620 () Bool)

(assert (=> b!2357620 (= e!1505627 (or (not (= l3!250 Nil!27856)) (= lt!863124 l2!1244)))))

(assert (= (and d!693255 c!374804) b!2357617))

(assert (= (and d!693255 (not c!374804)) b!2357618))

(assert (= (and d!693255 res!1000789) b!2357619))

(assert (= (and b!2357619 res!1000788) b!2357620))

(declare-fun m!2770583 () Bool)

(assert (=> b!2357619 m!2770583))

(declare-fun m!2770585 () Bool)

(assert (=> b!2357619 m!2770585))

(declare-fun m!2770587 () Bool)

(assert (=> b!2357619 m!2770587))

(declare-fun m!2770589 () Bool)

(assert (=> b!2357618 m!2770589))

(declare-fun m!2770591 () Bool)

(assert (=> d!693255 m!2770591))

(declare-fun m!2770593 () Bool)

(assert (=> d!693255 m!2770593))

(declare-fun m!2770595 () Bool)

(assert (=> d!693255 m!2770595))

(assert (=> b!2357568 d!693255))

(declare-fun b!2357626 () Bool)

(declare-fun e!1505634 () Bool)

(declare-fun e!1505631 () Bool)

(assert (=> b!2357626 (= e!1505634 e!1505631)))

(declare-fun res!1000792 () Bool)

(assert (=> b!2357626 (=> res!1000792 e!1505631)))

(declare-fun e!1505632 () Bool)

(assert (=> b!2357626 (= res!1000792 e!1505632)))

(declare-fun res!1000793 () Bool)

(assert (=> b!2357626 (=> (not res!1000793) (not e!1505632))))

(assert (=> b!2357626 (= res!1000793 (= (h!33257 l1!1275) (h!33257 l3!250)))))

(declare-fun b!2357625 () Bool)

(declare-fun e!1505633 () Bool)

(assert (=> b!2357625 (= e!1505633 e!1505634)))

(declare-fun res!1000795 () Bool)

(assert (=> b!2357625 (=> (not res!1000795) (not e!1505634))))

(assert (=> b!2357625 (= res!1000795 ((_ is Cons!27856) l3!250))))

(declare-fun d!693257 () Bool)

(declare-fun res!1000794 () Bool)

(assert (=> d!693257 (=> res!1000794 e!1505633)))

(assert (=> d!693257 (= res!1000794 ((_ is Nil!27856) l1!1275))))

(assert (=> d!693257 (= (subseq!441 l1!1275 l3!250) e!1505633)))

(declare-fun b!2357627 () Bool)

(assert (=> b!2357627 (= e!1505632 (subseq!441 (t!207813 l1!1275) (t!207813 l3!250)))))

(declare-fun b!2357628 () Bool)

(assert (=> b!2357628 (= e!1505631 (subseq!441 l1!1275 (t!207813 l3!250)))))

(assert (= (and d!693257 (not res!1000794)) b!2357625))

(assert (= (and b!2357625 res!1000795) b!2357626))

(assert (= (and b!2357626 res!1000793) b!2357627))

(assert (= (and b!2357626 (not res!1000792)) b!2357628))

(declare-fun m!2770597 () Bool)

(assert (=> b!2357627 m!2770597))

(declare-fun m!2770601 () Bool)

(assert (=> b!2357628 m!2770601))

(assert (=> start!231056 d!693257))

(declare-fun b!2357637 () Bool)

(declare-fun e!1505639 () Bool)

(declare-fun tp!753640 () Bool)

(assert (=> b!2357637 (= e!1505639 (and tp_is_empty!11117 tp!753640))))

(assert (=> b!2357569 (= tp!753633 e!1505639)))

(assert (= (and b!2357569 ((_ is Cons!27856) (t!207813 l1!1275))) b!2357637))

(declare-fun b!2357638 () Bool)

(declare-fun e!1505640 () Bool)

(declare-fun tp!753641 () Bool)

(assert (=> b!2357638 (= e!1505640 (and tp_is_empty!11117 tp!753641))))

(assert (=> b!2357571 (= tp!753634 e!1505640)))

(assert (= (and b!2357571 ((_ is Cons!27856) (t!207813 l3!250))) b!2357638))

(declare-fun b!2357639 () Bool)

(declare-fun e!1505641 () Bool)

(declare-fun tp!753642 () Bool)

(assert (=> b!2357639 (= e!1505641 (and tp_is_empty!11117 tp!753642))))

(assert (=> b!2357570 (= tp!753635 e!1505641)))

(assert (= (and b!2357570 ((_ is Cons!27856) (t!207813 l2!1244))) b!2357639))

(check-sat (not b!2357618) (not d!693255) (not b!2357628) tp_is_empty!11117 (not b!2357600) (not b!2357638) (not b!2357599) (not b!2357619) (not b!2357637) (not b!2357639) (not b!2357627))
(check-sat)
