; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!251576 () Bool)

(assert start!251576)

(declare-fun b!2594678 () Bool)

(assert (=> b!2594678 true))

(declare-fun res!1091750 () Bool)

(declare-fun e!1637118 () Bool)

(assert (=> b!2594678 (=> (not res!1091750) (not e!1637118))))

(declare-datatypes ((B!2153 0))(
  ( (B!2154 (val!9544 Int)) )
))
(declare-datatypes ((List!29977 0))(
  ( (Nil!29877) (Cons!29877 (h!35297 B!2153) (t!212990 List!29977)) )
))
(declare-fun l2!1515 () List!29977)

(declare-fun lambda!96632 () Int)

(declare-fun forall!6114 (List!29977 Int) Bool)

(assert (=> b!2594678 (= res!1091750 (forall!6114 l2!1515 lambda!96632))))

(declare-fun b!2594679 () Bool)

(declare-fun e!1637121 () Bool)

(declare-fun tp_is_empty!13433 () Bool)

(declare-fun tp!823035 () Bool)

(assert (=> b!2594679 (= e!1637121 (and tp_is_empty!13433 tp!823035))))

(declare-fun b!2594680 () Bool)

(declare-fun e!1637119 () Bool)

(declare-fun tp!823036 () Bool)

(assert (=> b!2594680 (= e!1637119 (and tp_is_empty!13433 tp!823036))))

(declare-fun b!2594681 () Bool)

(declare-fun res!1091753 () Bool)

(assert (=> b!2594681 (=> (not res!1091753) (not e!1637118))))

(declare-fun l1!1546 () List!29977)

(declare-fun contains!5425 (List!29977 B!2153) Bool)

(assert (=> b!2594681 (= res!1091753 (contains!5425 l2!1515 (h!35297 l1!1546)))))

(declare-fun b!2594683 () Bool)

(declare-fun lt!913548 () List!29977)

(assert (=> b!2594683 (= e!1637118 (not (forall!6114 lt!913548 lambda!96632)))))

(declare-fun lt!913549 () Int)

(declare-fun size!23182 (List!29977) Int)

(assert (=> b!2594683 (= (size!23182 lt!913548) (- lt!913549 1))))

(declare-datatypes ((Unit!43908 0))(
  ( (Unit!43909) )
))
(declare-fun lt!913552 () Unit!43908)

(declare-fun lemmaRemoveElmtNoDuplicateRemoveOne!16 (List!29977 B!2153) Unit!43908)

(assert (=> b!2594683 (= lt!913552 (lemmaRemoveElmtNoDuplicateRemoveOne!16 l2!1515 (h!35297 l1!1546)))))

(assert (=> b!2594683 (forall!6114 lt!913548 lambda!96632)))

(declare-fun lt!913553 () Unit!43908)

(declare-fun lemmaRemoveElmtMaintainsForall!18 (List!29977 B!2153 Int) Unit!43908)

(assert (=> b!2594683 (= lt!913553 (lemmaRemoveElmtMaintainsForall!18 l2!1515 (h!35297 l1!1546) lambda!96632))))

(declare-fun noDuplicate!425 (List!29977) Bool)

(assert (=> b!2594683 (noDuplicate!425 lt!913548)))

(declare-fun -!154 (List!29977 B!2153) List!29977)

(assert (=> b!2594683 (= lt!913548 (-!154 l2!1515 (h!35297 l1!1546)))))

(declare-fun lt!913550 () Unit!43908)

(declare-fun lemmaRemoveElmtMaintainsNoDuplicate!20 (List!29977 B!2153) Unit!43908)

(assert (=> b!2594683 (= lt!913550 (lemmaRemoveElmtMaintainsNoDuplicate!20 l2!1515 (h!35297 l1!1546)))))

(declare-fun b!2594684 () Bool)

(declare-fun e!1637120 () Bool)

(assert (=> b!2594684 (= e!1637120 e!1637118)))

(declare-fun res!1091751 () Bool)

(assert (=> b!2594684 (=> (not res!1091751) (not e!1637118))))

(declare-fun lt!913551 () Int)

(assert (=> b!2594684 (= res!1091751 (> lt!913551 lt!913549))))

(assert (=> b!2594684 (= lt!913549 (size!23182 l2!1515))))

(assert (=> b!2594684 (= lt!913551 (size!23182 l1!1546))))

(declare-fun b!2594685 () Bool)

(declare-fun res!1091749 () Bool)

(assert (=> b!2594685 (=> (not res!1091749) (not e!1637120))))

(assert (=> b!2594685 (= res!1091749 (noDuplicate!425 l2!1515))))

(declare-fun res!1091752 () Bool)

(assert (=> start!251576 (=> (not res!1091752) (not e!1637120))))

(assert (=> start!251576 (= res!1091752 (noDuplicate!425 l1!1546))))

(assert (=> start!251576 e!1637120))

(assert (=> start!251576 e!1637119))

(assert (=> start!251576 e!1637121))

(declare-fun b!2594682 () Bool)

(declare-fun res!1091748 () Bool)

(assert (=> b!2594682 (=> (not res!1091748) (not e!1637118))))

(get-info :version)

(assert (=> b!2594682 (= res!1091748 ((_ is Cons!29877) l1!1546))))

(assert (= (and start!251576 res!1091752) b!2594685))

(assert (= (and b!2594685 res!1091749) b!2594684))

(assert (= (and b!2594684 res!1091751) b!2594678))

(assert (= (and b!2594678 res!1091750) b!2594682))

(assert (= (and b!2594682 res!1091748) b!2594681))

(assert (= (and b!2594681 res!1091753) b!2594683))

(assert (= (and start!251576 ((_ is Cons!29877) l1!1546)) b!2594680))

(assert (= (and start!251576 ((_ is Cons!29877) l2!1515)) b!2594679))

(declare-fun m!2930711 () Bool)

(assert (=> b!2594684 m!2930711))

(declare-fun m!2930713 () Bool)

(assert (=> b!2594684 m!2930713))

(declare-fun m!2930715 () Bool)

(assert (=> b!2594678 m!2930715))

(declare-fun m!2930717 () Bool)

(assert (=> start!251576 m!2930717))

(declare-fun m!2930719 () Bool)

(assert (=> b!2594681 m!2930719))

(declare-fun m!2930721 () Bool)

(assert (=> b!2594683 m!2930721))

(declare-fun m!2930723 () Bool)

(assert (=> b!2594683 m!2930723))

(declare-fun m!2930725 () Bool)

(assert (=> b!2594683 m!2930725))

(declare-fun m!2930727 () Bool)

(assert (=> b!2594683 m!2930727))

(declare-fun m!2930729 () Bool)

(assert (=> b!2594683 m!2930729))

(declare-fun m!2930731 () Bool)

(assert (=> b!2594683 m!2930731))

(assert (=> b!2594683 m!2930721))

(declare-fun m!2930733 () Bool)

(assert (=> b!2594683 m!2930733))

(declare-fun m!2930735 () Bool)

(assert (=> b!2594685 m!2930735))

(check-sat (not b!2594684) (not start!251576) (not b!2594679) (not b!2594685) (not b!2594683) (not b!2594681) (not b!2594680) (not b!2594678) tp_is_empty!13433)
(check-sat)
