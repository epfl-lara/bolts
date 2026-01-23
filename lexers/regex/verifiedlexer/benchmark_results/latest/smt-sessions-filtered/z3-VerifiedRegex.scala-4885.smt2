; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!250792 () Bool)

(assert start!250792)

(declare-fun b!2589759 () Bool)

(declare-fun e!1633592 () Bool)

(declare-fun e!1633594 () Bool)

(assert (=> b!2589759 (= e!1633592 e!1633594)))

(declare-fun res!1088702 () Bool)

(assert (=> b!2589759 (=> res!1088702 e!1633594)))

(declare-datatypes ((B!1961 0))(
  ( (B!1962 (val!9448 Int)) )
))
(declare-datatypes ((List!29881 0))(
  ( (Nil!29781) (Cons!29781 (h!35201 B!1961) (t!212894 List!29881)) )
))
(declare-fun l!3230 () List!29881)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!910383 () (InoxSet B!1961))

(declare-fun content!4122 (List!29881) (InoxSet B!1961))

(assert (=> b!2589759 (= res!1088702 (not (= (content!4122 l!3230) lt!910383)))))

(declare-fun lt!910384 () (InoxSet B!1961))

(assert (=> b!2589759 (= lt!910383 ((_ map or) lt!910384 (store ((as const (Array B!1961 Bool)) false) (h!35201 l!3230) true)))))

(declare-fun b!2589760 () Bool)

(declare-fun e!1633589 () Bool)

(declare-fun tp_is_empty!13241 () Bool)

(declare-fun tp!822546 () Bool)

(assert (=> b!2589760 (= e!1633589 (and tp_is_empty!13241 tp!822546))))

(declare-fun b!2589761 () Bool)

(declare-fun e!1633590 () Bool)

(declare-fun e!1633591 () Bool)

(assert (=> b!2589761 (= e!1633590 e!1633591)))

(declare-fun res!1088705 () Bool)

(assert (=> b!2589761 (=> res!1088705 e!1633591)))

(declare-fun lt!910385 () List!29881)

(declare-fun noDuplicate!329 (List!29881) Bool)

(assert (=> b!2589761 (= res!1088705 (not (noDuplicate!329 lt!910385)))))

(declare-datatypes ((Unit!43650 0))(
  ( (Unit!43651) )
))
(declare-fun lt!910387 () Unit!43650)

(declare-fun subsetContains!24 (List!29881 List!29881) Unit!43650)

(assert (=> b!2589761 (= lt!910387 (subsetContains!24 lt!910385 l!3230))))

(declare-fun b!2589762 () Bool)

(declare-fun e!1633593 () Bool)

(declare-fun e!1633595 () Bool)

(assert (=> b!2589762 (= e!1633593 (not e!1633595))))

(declare-fun res!1088707 () Bool)

(assert (=> b!2589762 (=> res!1088707 e!1633595)))

(declare-fun lt!910381 () Int)

(declare-fun size!23094 (List!29881) Int)

(assert (=> b!2589762 (= res!1088707 (>= lt!910381 (size!23094 l!3230)))))

(declare-fun lt!910382 () Int)

(assert (=> b!2589762 (= lt!910381 lt!910382)))

(assert (=> b!2589762 (= lt!910382 (size!23094 (t!212894 l!3230)))))

(declare-fun toList!1732 ((InoxSet B!1961)) List!29881)

(assert (=> b!2589762 (= lt!910381 (size!23094 (toList!1732 lt!910384)))))

(assert (=> b!2589762 (= lt!910384 (content!4122 (t!212894 l!3230)))))

(declare-fun lt!910386 () Unit!43650)

(declare-fun lemmaNoDuplicateThenContentToListSameSize!22 (List!29881) Unit!43650)

(assert (=> b!2589762 (= lt!910386 (lemmaNoDuplicateThenContentToListSameSize!22 (t!212894 l!3230)))))

(declare-fun b!2589763 () Bool)

(declare-fun res!1088701 () Bool)

(assert (=> b!2589763 (=> res!1088701 e!1633590)))

(assert (=> b!2589763 (= res!1088701 (not (= lt!910383 (content!4122 l!3230))))))

(declare-fun b!2589765 () Bool)

(declare-fun res!1088709 () Bool)

(assert (=> b!2589765 (=> res!1088709 e!1633595)))

(declare-fun contains!5333 (List!29881 B!1961) Bool)

(assert (=> b!2589765 (= res!1088709 (contains!5333 (t!212894 l!3230) (h!35201 l!3230)))))

(declare-fun b!2589766 () Bool)

(declare-fun res!1088703 () Bool)

(assert (=> b!2589766 (=> (not res!1088703) (not e!1633593))))

(get-info :version)

(assert (=> b!2589766 (= res!1088703 ((_ is Cons!29781) l!3230))))

(declare-fun b!2589767 () Bool)

(assert (=> b!2589767 (= e!1633594 e!1633590)))

(declare-fun res!1088704 () Bool)

(assert (=> b!2589767 (=> res!1088704 e!1633590)))

(declare-fun lt!910380 () Int)

(assert (=> b!2589767 (= res!1088704 (>= (size!23094 lt!910385) lt!910380))))

(assert (=> b!2589767 (= lt!910385 (toList!1732 lt!910383))))

(declare-fun b!2589764 () Bool)

(assert (=> b!2589764 (= e!1633591 true)))

(declare-fun res!1088700 () Bool)

(assert (=> start!250792 (=> (not res!1088700) (not e!1633593))))

(assert (=> start!250792 (= res!1088700 (noDuplicate!329 l!3230))))

(assert (=> start!250792 e!1633593))

(assert (=> start!250792 e!1633589))

(declare-fun b!2589768 () Bool)

(assert (=> b!2589768 (= e!1633595 e!1633592)))

(declare-fun res!1088706 () Bool)

(assert (=> b!2589768 (=> res!1088706 e!1633592)))

(assert (=> b!2589768 (= res!1088706 (not (= (size!23094 l!3230) lt!910380)))))

(assert (=> b!2589768 (= lt!910380 (+ 1 lt!910382))))

(declare-fun b!2589769 () Bool)

(declare-fun res!1088708 () Bool)

(assert (=> b!2589769 (=> res!1088708 e!1633595)))

(assert (=> b!2589769 (= res!1088708 (select lt!910384 (h!35201 l!3230)))))

(assert (= (and start!250792 res!1088700) b!2589766))

(assert (= (and b!2589766 res!1088703) b!2589762))

(assert (= (and b!2589762 (not res!1088707)) b!2589769))

(assert (= (and b!2589769 (not res!1088708)) b!2589765))

(assert (= (and b!2589765 (not res!1088709)) b!2589768))

(assert (= (and b!2589768 (not res!1088706)) b!2589759))

(assert (= (and b!2589759 (not res!1088702)) b!2589767))

(assert (= (and b!2589767 (not res!1088704)) b!2589763))

(assert (= (and b!2589763 (not res!1088701)) b!2589761))

(assert (= (and b!2589761 (not res!1088705)) b!2589764))

(assert (= (and start!250792 ((_ is Cons!29781) l!3230)) b!2589760))

(declare-fun m!2925871 () Bool)

(assert (=> b!2589769 m!2925871))

(declare-fun m!2925873 () Bool)

(assert (=> b!2589763 m!2925873))

(declare-fun m!2925875 () Bool)

(assert (=> b!2589767 m!2925875))

(declare-fun m!2925877 () Bool)

(assert (=> b!2589767 m!2925877))

(declare-fun m!2925879 () Bool)

(assert (=> b!2589761 m!2925879))

(declare-fun m!2925881 () Bool)

(assert (=> b!2589761 m!2925881))

(declare-fun m!2925883 () Bool)

(assert (=> b!2589765 m!2925883))

(declare-fun m!2925885 () Bool)

(assert (=> b!2589768 m!2925885))

(assert (=> b!2589762 m!2925885))

(declare-fun m!2925887 () Bool)

(assert (=> b!2589762 m!2925887))

(declare-fun m!2925889 () Bool)

(assert (=> b!2589762 m!2925889))

(declare-fun m!2925891 () Bool)

(assert (=> b!2589762 m!2925891))

(declare-fun m!2925893 () Bool)

(assert (=> b!2589762 m!2925893))

(assert (=> b!2589762 m!2925893))

(declare-fun m!2925895 () Bool)

(assert (=> b!2589762 m!2925895))

(declare-fun m!2925897 () Bool)

(assert (=> start!250792 m!2925897))

(assert (=> b!2589759 m!2925873))

(declare-fun m!2925899 () Bool)

(assert (=> b!2589759 m!2925899))

(check-sat (not b!2589759) (not b!2589765) (not b!2589762) (not b!2589768) (not b!2589761) (not start!250792) (not b!2589767) (not b!2589760) (not b!2589763) tp_is_empty!13241)
(check-sat)
