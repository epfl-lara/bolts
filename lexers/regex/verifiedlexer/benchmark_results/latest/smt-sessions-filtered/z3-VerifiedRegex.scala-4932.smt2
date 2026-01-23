; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!251572 () Bool)

(assert start!251572)

(declare-fun b!2594623 () Bool)

(assert (=> b!2594623 true))

(declare-fun b!2594633 () Bool)

(declare-fun m!2930641 () Bool)

(assert (=> b!2594633 m!2930641))

(declare-fun bs!472624 () Bool)

(assert (= bs!472624 (and b!2594633 b!2594623)))

(declare-datatypes ((B!2149 0))(
  ( (B!2150 (val!9542 Int)) )
))
(declare-datatypes ((List!29975 0))(
  ( (Nil!29875) (Cons!29875 (h!35295 B!2149) (t!212988 List!29975)) )
))
(declare-fun l1!1546 () List!29975)

(declare-fun lambda!96616 () Int)

(declare-fun lambda!96615 () Int)

(declare-fun tail!4143 (List!29975) List!29975)

(assert (=> bs!472624 (= (= (tail!4143 l1!1546) l1!1546) (= lambda!96616 lambda!96615))))

(assert (=> b!2594633 true))

(declare-fun lambda!96617 () Int)

(assert (=> bs!472624 (= (= (t!212988 l1!1546) l1!1546) (= lambda!96617 lambda!96615))))

(assert (=> b!2594633 (= (= (t!212988 l1!1546) (tail!4143 l1!1546)) (= lambda!96617 lambda!96616))))

(assert (=> b!2594633 true))

(declare-fun bs!472625 () Bool)

(declare-fun b!2594631 () Bool)

(assert (= bs!472625 (and b!2594631 b!2594623)))

(declare-fun lambda!96618 () Int)

(assert (=> bs!472625 (not (= lambda!96618 lambda!96615))))

(declare-fun bs!472626 () Bool)

(assert (= bs!472626 (and b!2594631 b!2594633)))

(assert (=> bs!472626 (not (= lambda!96618 lambda!96616))))

(assert (=> bs!472626 (not (= lambda!96618 lambda!96617))))

(assert (=> b!2594631 true))

(declare-fun b!2594621 () Bool)

(declare-fun e!1637081 () Bool)

(declare-fun e!1637085 () Bool)

(assert (=> b!2594621 (= e!1637081 (not e!1637085))))

(declare-fun res!1091717 () Bool)

(assert (=> b!2594621 (=> res!1091717 e!1637085)))

(declare-fun lt!913515 () List!29975)

(declare-fun forall!6112 (List!29975 Int) Bool)

(assert (=> b!2594621 (= res!1091717 (not (forall!6112 lt!913515 lambda!96615)))))

(declare-fun lt!913517 () Int)

(declare-fun size!23180 (List!29975) Int)

(assert (=> b!2594621 (= (size!23180 lt!913515) (- lt!913517 1))))

(declare-datatypes ((Unit!43904 0))(
  ( (Unit!43905) )
))
(declare-fun lt!913513 () Unit!43904)

(declare-fun l2!1515 () List!29975)

(declare-fun lemmaRemoveElmtNoDuplicateRemoveOne!14 (List!29975 B!2149) Unit!43904)

(assert (=> b!2594621 (= lt!913513 (lemmaRemoveElmtNoDuplicateRemoveOne!14 l2!1515 (h!35295 l1!1546)))))

(assert (=> b!2594621 (forall!6112 lt!913515 lambda!96615)))

(declare-fun lt!913510 () Unit!43904)

(declare-fun lemmaRemoveElmtMaintainsForall!16 (List!29975 B!2149 Int) Unit!43904)

(assert (=> b!2594621 (= lt!913510 (lemmaRemoveElmtMaintainsForall!16 l2!1515 (h!35295 l1!1546) lambda!96615))))

(declare-fun noDuplicate!423 (List!29975) Bool)

(assert (=> b!2594621 (noDuplicate!423 lt!913515)))

(declare-fun -!152 (List!29975 B!2149) List!29975)

(assert (=> b!2594621 (= lt!913515 (-!152 l2!1515 (h!35295 l1!1546)))))

(declare-fun lt!913508 () Unit!43904)

(declare-fun lemmaRemoveElmtMaintainsNoDuplicate!18 (List!29975 B!2149) Unit!43904)

(assert (=> b!2594621 (= lt!913508 (lemmaRemoveElmtMaintainsNoDuplicate!18 l2!1515 (h!35295 l1!1546)))))

(declare-fun b!2594622 () Bool)

(declare-fun e!1637083 () Bool)

(declare-fun tp_is_empty!13429 () Bool)

(declare-fun tp!823024 () Bool)

(assert (=> b!2594622 (= e!1637083 (and tp_is_empty!13429 tp!823024))))

(declare-fun res!1091707 () Bool)

(assert (=> b!2594623 (=> (not res!1091707) (not e!1637081))))

(assert (=> b!2594623 (= res!1091707 (forall!6112 l2!1515 lambda!96615))))

(declare-fun b!2594624 () Bool)

(declare-fun res!1091712 () Bool)

(assert (=> b!2594624 (=> (not res!1091712) (not e!1637081))))

(get-info :version)

(assert (=> b!2594624 (= res!1091712 ((_ is Cons!29875) l1!1546))))

(declare-fun b!2594625 () Bool)

(declare-fun res!1091716 () Bool)

(assert (=> b!2594625 (=> (not res!1091716) (not e!1637081))))

(declare-fun contains!5423 (List!29975 B!2149) Bool)

(assert (=> b!2594625 (= res!1091716 (contains!5423 l2!1515 (h!35295 l1!1546)))))

(declare-fun b!2594626 () Bool)

(declare-fun e!1637082 () Bool)

(declare-fun e!1637079 () Bool)

(assert (=> b!2594626 (= e!1637082 e!1637079)))

(declare-fun res!1091709 () Bool)

(assert (=> b!2594626 (=> res!1091709 e!1637079)))

(declare-fun lt!913514 () B!2149)

(assert (=> b!2594626 (= res!1091709 (not (contains!5423 l1!1546 lt!913514)))))

(declare-fun getWitness!552 (List!29975 Int) B!2149)

(assert (=> b!2594626 (= lt!913514 (getWitness!552 (t!212988 l1!1546) lambda!96618))))

(declare-fun b!2594628 () Bool)

(declare-fun res!1091710 () Bool)

(assert (=> b!2594628 (=> res!1091710 e!1637079)))

(assert (=> b!2594628 (= res!1091710 (= lt!913514 (h!35295 l1!1546)))))

(declare-fun b!2594629 () Bool)

(declare-fun res!1091713 () Bool)

(declare-fun e!1637080 () Bool)

(assert (=> b!2594629 (=> (not res!1091713) (not e!1637080))))

(assert (=> b!2594629 (= res!1091713 (noDuplicate!423 l2!1515))))

(declare-fun b!2594630 () Bool)

(assert (=> b!2594630 (= e!1637080 e!1637081)))

(declare-fun res!1091715 () Bool)

(assert (=> b!2594630 (=> (not res!1091715) (not e!1637081))))

(declare-fun lt!913516 () Int)

(assert (=> b!2594630 (= res!1091715 (> lt!913516 lt!913517))))

(assert (=> b!2594630 (= lt!913517 (size!23180 l2!1515))))

(assert (=> b!2594630 (= lt!913516 (size!23180 l1!1546))))

(declare-fun e!1637078 () Bool)

(assert (=> b!2594631 (= e!1637078 e!1637082)))

(declare-fun res!1091708 () Bool)

(assert (=> b!2594631 (=> res!1091708 e!1637082)))

(declare-fun exists!928 (List!29975 Int) Bool)

(assert (=> b!2594631 (= res!1091708 (not (exists!928 (t!212988 l1!1546) lambda!96618)))))

(assert (=> b!2594631 (exists!928 (t!212988 l1!1546) lambda!96618)))

(declare-fun lt!913509 () Unit!43904)

(declare-fun lemmaNoDuplicateSmallerListExistsElmtNotInOther!44 (List!29975 List!29975) Unit!43904)

(assert (=> b!2594631 (= lt!913509 (lemmaNoDuplicateSmallerListExistsElmtNotInOther!44 (t!212988 l1!1546) lt!913515))))

(declare-fun b!2594627 () Bool)

(declare-fun e!1637084 () Bool)

(declare-fun tp!823023 () Bool)

(assert (=> b!2594627 (= e!1637084 (and tp_is_empty!13429 tp!823023))))

(declare-fun res!1091711 () Bool)

(assert (=> start!251572 (=> (not res!1091711) (not e!1637080))))

(assert (=> start!251572 (= res!1091711 (noDuplicate!423 l1!1546))))

(assert (=> start!251572 e!1637080))

(assert (=> start!251572 e!1637083))

(assert (=> start!251572 e!1637084))

(declare-fun b!2594632 () Bool)

(assert (=> b!2594632 (= e!1637079 true)))

(declare-fun lt!913511 () Bool)

(assert (=> b!2594632 (= lt!913511 (contains!5423 l2!1515 lt!913514))))

(assert (=> b!2594633 (= e!1637085 e!1637078)))

(declare-fun res!1091714 () Bool)

(assert (=> b!2594633 (=> res!1091714 e!1637078)))

(assert (=> b!2594633 (= res!1091714 (not (forall!6112 lt!913515 lambda!96617)))))

(assert (=> b!2594633 (forall!6112 lt!913515 lambda!96616)))

(declare-fun lt!913512 () Unit!43904)

(declare-fun lemmaForallContainsThenForTailIfContainsNotHead!8 (List!29975 List!29975 B!2149) Unit!43904)

(assert (=> b!2594633 (= lt!913512 (lemmaForallContainsThenForTailIfContainsNotHead!8 lt!913515 l1!1546 (h!35295 l1!1546)))))

(assert (= (and start!251572 res!1091711) b!2594629))

(assert (= (and b!2594629 res!1091713) b!2594630))

(assert (= (and b!2594630 res!1091715) b!2594623))

(assert (= (and b!2594623 res!1091707) b!2594624))

(assert (= (and b!2594624 res!1091712) b!2594625))

(assert (= (and b!2594625 res!1091716) b!2594621))

(assert (= (and b!2594621 (not res!1091717)) b!2594633))

(assert (= (and b!2594633 (not res!1091714)) b!2594631))

(assert (= (and b!2594631 (not res!1091708)) b!2594626))

(assert (= (and b!2594626 (not res!1091709)) b!2594628))

(assert (= (and b!2594628 (not res!1091710)) b!2594632))

(assert (= (and start!251572 ((_ is Cons!29875) l1!1546)) b!2594622))

(assert (= (and start!251572 ((_ is Cons!29875) l2!1515)) b!2594627))

(declare-fun m!2930643 () Bool)

(assert (=> b!2594625 m!2930643))

(declare-fun m!2930645 () Bool)

(assert (=> b!2594632 m!2930645))

(declare-fun m!2930647 () Bool)

(assert (=> b!2594629 m!2930647))

(declare-fun m!2930649 () Bool)

(assert (=> start!251572 m!2930649))

(declare-fun m!2930651 () Bool)

(assert (=> b!2594623 m!2930651))

(declare-fun m!2930653 () Bool)

(assert (=> b!2594621 m!2930653))

(declare-fun m!2930655 () Bool)

(assert (=> b!2594621 m!2930655))

(declare-fun m!2930657 () Bool)

(assert (=> b!2594621 m!2930657))

(declare-fun m!2930659 () Bool)

(assert (=> b!2594621 m!2930659))

(declare-fun m!2930661 () Bool)

(assert (=> b!2594621 m!2930661))

(declare-fun m!2930663 () Bool)

(assert (=> b!2594621 m!2930663))

(declare-fun m!2930665 () Bool)

(assert (=> b!2594621 m!2930665))

(assert (=> b!2594621 m!2930665))

(declare-fun m!2930667 () Bool)

(assert (=> b!2594626 m!2930667))

(declare-fun m!2930669 () Bool)

(assert (=> b!2594626 m!2930669))

(declare-fun m!2930671 () Bool)

(assert (=> b!2594633 m!2930671))

(declare-fun m!2930673 () Bool)

(assert (=> b!2594633 m!2930673))

(declare-fun m!2930675 () Bool)

(assert (=> b!2594633 m!2930675))

(declare-fun m!2930677 () Bool)

(assert (=> b!2594631 m!2930677))

(assert (=> b!2594631 m!2930677))

(declare-fun m!2930679 () Bool)

(assert (=> b!2594631 m!2930679))

(declare-fun m!2930681 () Bool)

(assert (=> b!2594630 m!2930681))

(declare-fun m!2930683 () Bool)

(assert (=> b!2594630 m!2930683))

(check-sat (not b!2594625) (not b!2594631) (not b!2594632) (not b!2594630) (not b!2594621) (not start!251572) (not b!2594623) (not b!2594622) (not b!2594627) tp_is_empty!13429 (not b!2594633) (not b!2594626) (not b!2594629))
(check-sat)
