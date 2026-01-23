; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46122 () Bool)

(assert start!46122)

(declare-fun res!216712 () Bool)

(declare-fun e!305061 () Bool)

(assert (=> start!46122 (=> (not res!216712) (not e!305061))))

(declare-datatypes ((B!1013 0))(
  ( (B!1014 (val!1648 Int)) )
))
(declare-datatypes ((List!4621 0))(
  ( (Nil!4611) (Cons!4611 (h!10008 B!1013) (t!73139 List!4621)) )
))
(declare-fun l!3306 () List!4621)

(declare-fun isEmpty!3565 (List!4621) Bool)

(assert (=> start!46122 (= res!216712 (not (isEmpty!3565 l!3306)))))

(assert (=> start!46122 e!305061))

(declare-fun e!305062 () Bool)

(assert (=> start!46122 e!305062))

(declare-fun e!305064 () Bool)

(assert (=> start!46122 e!305064))

(declare-fun b!510704 () Bool)

(declare-fun res!216711 () Bool)

(assert (=> b!510704 (=> (not res!216711) (not e!305061))))

(declare-fun p!1985 () List!4621)

(declare-fun isPrefix!543 (List!4621 List!4621) Bool)

(assert (=> b!510704 (= res!216711 (isPrefix!543 p!1985 l!3306))))

(declare-fun b!510705 () Bool)

(declare-fun res!216710 () Bool)

(assert (=> b!510705 (=> (not res!216710) (not e!305061))))

(declare-fun size!3717 (List!4621) Int)

(assert (=> b!510705 (= res!216710 (< (size!3717 p!1985) (size!3717 l!3306)))))

(declare-fun b!510706 () Bool)

(declare-fun e!305063 () Bool)

(declare-fun lt!211805 () List!4621)

(assert (=> b!510706 (= e!305063 (not (isPrefix!543 (t!73139 p!1985) lt!211805)))))

(declare-fun b!510707 () Bool)

(declare-fun tp_is_empty!2399 () Bool)

(declare-fun tp!158863 () Bool)

(assert (=> b!510707 (= e!305062 (and tp_is_empty!2399 tp!158863))))

(declare-fun b!510708 () Bool)

(assert (=> b!510708 (= e!305061 e!305063)))

(declare-fun res!216713 () Bool)

(assert (=> b!510708 (=> (not res!216713) (not e!305063))))

(assert (=> b!510708 (= res!216713 (not (isEmpty!3565 lt!211805)))))

(declare-fun tail!678 (List!4621) List!4621)

(assert (=> b!510708 (= lt!211805 (tail!678 l!3306))))

(declare-fun b!510709 () Bool)

(declare-fun tp!158862 () Bool)

(assert (=> b!510709 (= e!305064 (and tp_is_empty!2399 tp!158862))))

(declare-fun b!510710 () Bool)

(declare-fun res!216709 () Bool)

(assert (=> b!510710 (=> (not res!216709) (not e!305061))))

(get-info :version)

(assert (=> b!510710 (= res!216709 ((_ is Cons!4611) p!1985))))

(assert (= (and start!46122 res!216712) b!510704))

(assert (= (and b!510704 res!216711) b!510705))

(assert (= (and b!510705 res!216710) b!510710))

(assert (= (and b!510710 res!216709) b!510708))

(assert (= (and b!510708 res!216713) b!510706))

(assert (= (and start!46122 ((_ is Cons!4611) l!3306)) b!510707))

(assert (= (and start!46122 ((_ is Cons!4611) p!1985)) b!510709))

(declare-fun m!757481 () Bool)

(assert (=> start!46122 m!757481))

(declare-fun m!757483 () Bool)

(assert (=> b!510706 m!757483))

(declare-fun m!757485 () Bool)

(assert (=> b!510708 m!757485))

(declare-fun m!757487 () Bool)

(assert (=> b!510708 m!757487))

(declare-fun m!757489 () Bool)

(assert (=> b!510705 m!757489))

(declare-fun m!757491 () Bool)

(assert (=> b!510705 m!757491))

(declare-fun m!757493 () Bool)

(assert (=> b!510704 m!757493))

(check-sat (not b!510708) (not b!510705) (not b!510704) tp_is_empty!2399 (not b!510709) (not b!510707) (not b!510706) (not start!46122))
(check-sat)
(get-model)

(declare-fun b!510733 () Bool)

(declare-fun e!305081 () Bool)

(assert (=> b!510733 (= e!305081 (isPrefix!543 (tail!678 (t!73139 p!1985)) (tail!678 lt!211805)))))

(declare-fun b!510731 () Bool)

(declare-fun e!305082 () Bool)

(assert (=> b!510731 (= e!305082 e!305081)))

(declare-fun res!216737 () Bool)

(assert (=> b!510731 (=> (not res!216737) (not e!305081))))

(assert (=> b!510731 (= res!216737 (not ((_ is Nil!4611) lt!211805)))))

(declare-fun b!510734 () Bool)

(declare-fun e!305080 () Bool)

(assert (=> b!510734 (= e!305080 (>= (size!3717 lt!211805) (size!3717 (t!73139 p!1985))))))

(declare-fun d!183549 () Bool)

(assert (=> d!183549 e!305080))

(declare-fun res!216734 () Bool)

(assert (=> d!183549 (=> res!216734 e!305080)))

(declare-fun lt!211811 () Bool)

(assert (=> d!183549 (= res!216734 (not lt!211811))))

(assert (=> d!183549 (= lt!211811 e!305082)))

(declare-fun res!216735 () Bool)

(assert (=> d!183549 (=> res!216735 e!305082)))

(assert (=> d!183549 (= res!216735 ((_ is Nil!4611) (t!73139 p!1985)))))

(assert (=> d!183549 (= (isPrefix!543 (t!73139 p!1985) lt!211805) lt!211811)))

(declare-fun b!510732 () Bool)

(declare-fun res!216736 () Bool)

(assert (=> b!510732 (=> (not res!216736) (not e!305081))))

(declare-fun head!1154 (List!4621) B!1013)

(assert (=> b!510732 (= res!216736 (= (head!1154 (t!73139 p!1985)) (head!1154 lt!211805)))))

(assert (= (and d!183549 (not res!216735)) b!510731))

(assert (= (and b!510731 res!216737) b!510732))

(assert (= (and b!510732 res!216736) b!510733))

(assert (= (and d!183549 (not res!216734)) b!510734))

(declare-fun m!757503 () Bool)

(assert (=> b!510733 m!757503))

(declare-fun m!757505 () Bool)

(assert (=> b!510733 m!757505))

(assert (=> b!510733 m!757503))

(assert (=> b!510733 m!757505))

(declare-fun m!757507 () Bool)

(assert (=> b!510733 m!757507))

(declare-fun m!757513 () Bool)

(assert (=> b!510734 m!757513))

(declare-fun m!757516 () Bool)

(assert (=> b!510734 m!757516))

(declare-fun m!757521 () Bool)

(assert (=> b!510732 m!757521))

(declare-fun m!757523 () Bool)

(assert (=> b!510732 m!757523))

(assert (=> b!510706 d!183549))

(declare-fun d!183555 () Bool)

(declare-fun lt!211817 () Int)

(assert (=> d!183555 (>= lt!211817 0)))

(declare-fun e!305090 () Int)

(assert (=> d!183555 (= lt!211817 e!305090)))

(declare-fun c!99340 () Bool)

(assert (=> d!183555 (= c!99340 ((_ is Nil!4611) p!1985))))

(assert (=> d!183555 (= (size!3717 p!1985) lt!211817)))

(declare-fun b!510747 () Bool)

(assert (=> b!510747 (= e!305090 0)))

(declare-fun b!510748 () Bool)

(assert (=> b!510748 (= e!305090 (+ 1 (size!3717 (t!73139 p!1985))))))

(assert (= (and d!183555 c!99340) b!510747))

(assert (= (and d!183555 (not c!99340)) b!510748))

(assert (=> b!510748 m!757516))

(assert (=> b!510705 d!183555))

(declare-fun d!183563 () Bool)

(declare-fun lt!211818 () Int)

(assert (=> d!183563 (>= lt!211818 0)))

(declare-fun e!305091 () Int)

(assert (=> d!183563 (= lt!211818 e!305091)))

(declare-fun c!99341 () Bool)

(assert (=> d!183563 (= c!99341 ((_ is Nil!4611) l!3306))))

(assert (=> d!183563 (= (size!3717 l!3306) lt!211818)))

(declare-fun b!510749 () Bool)

(assert (=> b!510749 (= e!305091 0)))

(declare-fun b!510750 () Bool)

(assert (=> b!510750 (= e!305091 (+ 1 (size!3717 (t!73139 l!3306))))))

(assert (= (and d!183563 c!99341) b!510749))

(assert (= (and d!183563 (not c!99341)) b!510750))

(declare-fun m!757531 () Bool)

(assert (=> b!510750 m!757531))

(assert (=> b!510705 d!183563))

(declare-fun d!183565 () Bool)

(assert (=> d!183565 (= (isEmpty!3565 l!3306) ((_ is Nil!4611) l!3306))))

(assert (=> start!46122 d!183565))

(declare-fun b!510755 () Bool)

(declare-fun e!305094 () Bool)

(assert (=> b!510755 (= e!305094 (isPrefix!543 (tail!678 p!1985) (tail!678 l!3306)))))

(declare-fun b!510753 () Bool)

(declare-fun e!305095 () Bool)

(assert (=> b!510753 (= e!305095 e!305094)))

(declare-fun res!216745 () Bool)

(assert (=> b!510753 (=> (not res!216745) (not e!305094))))

(assert (=> b!510753 (= res!216745 (not ((_ is Nil!4611) l!3306)))))

(declare-fun b!510756 () Bool)

(declare-fun e!305093 () Bool)

(assert (=> b!510756 (= e!305093 (>= (size!3717 l!3306) (size!3717 p!1985)))))

(declare-fun d!183567 () Bool)

(assert (=> d!183567 e!305093))

(declare-fun res!216742 () Bool)

(assert (=> d!183567 (=> res!216742 e!305093)))

(declare-fun lt!211820 () Bool)

(assert (=> d!183567 (= res!216742 (not lt!211820))))

(assert (=> d!183567 (= lt!211820 e!305095)))

(declare-fun res!216743 () Bool)

(assert (=> d!183567 (=> res!216743 e!305095)))

(assert (=> d!183567 (= res!216743 ((_ is Nil!4611) p!1985))))

(assert (=> d!183567 (= (isPrefix!543 p!1985 l!3306) lt!211820)))

(declare-fun b!510754 () Bool)

(declare-fun res!216744 () Bool)

(assert (=> b!510754 (=> (not res!216744) (not e!305094))))

(assert (=> b!510754 (= res!216744 (= (head!1154 p!1985) (head!1154 l!3306)))))

(assert (= (and d!183567 (not res!216743)) b!510753))

(assert (= (and b!510753 res!216745) b!510754))

(assert (= (and b!510754 res!216744) b!510755))

(assert (= (and d!183567 (not res!216742)) b!510756))

(declare-fun m!757535 () Bool)

(assert (=> b!510755 m!757535))

(assert (=> b!510755 m!757487))

(assert (=> b!510755 m!757535))

(assert (=> b!510755 m!757487))

(declare-fun m!757537 () Bool)

(assert (=> b!510755 m!757537))

(assert (=> b!510756 m!757491))

(assert (=> b!510756 m!757489))

(declare-fun m!757539 () Bool)

(assert (=> b!510754 m!757539))

(declare-fun m!757541 () Bool)

(assert (=> b!510754 m!757541))

(assert (=> b!510704 d!183567))

(declare-fun d!183573 () Bool)

(assert (=> d!183573 (= (isEmpty!3565 lt!211805) ((_ is Nil!4611) lt!211805))))

(assert (=> b!510708 d!183573))

(declare-fun d!183575 () Bool)

(assert (=> d!183575 (= (tail!678 l!3306) (t!73139 l!3306))))

(assert (=> b!510708 d!183575))

(declare-fun b!510769 () Bool)

(declare-fun e!305103 () Bool)

(declare-fun tp!158870 () Bool)

(assert (=> b!510769 (= e!305103 (and tp_is_empty!2399 tp!158870))))

(assert (=> b!510707 (= tp!158863 e!305103)))

(assert (= (and b!510707 ((_ is Cons!4611) (t!73139 l!3306))) b!510769))

(declare-fun b!510770 () Bool)

(declare-fun e!305104 () Bool)

(declare-fun tp!158871 () Bool)

(assert (=> b!510770 (= e!305104 (and tp_is_empty!2399 tp!158871))))

(assert (=> b!510709 (= tp!158862 e!305104)))

(assert (= (and b!510709 ((_ is Cons!4611) (t!73139 p!1985))) b!510770))

(check-sat (not b!510769) (not b!510748) (not b!510755) (not b!510756) (not b!510754) (not b!510750) tp_is_empty!2399 (not b!510732) (not b!510733) (not b!510770) (not b!510734))
(check-sat)
(get-model)

(declare-fun d!183577 () Bool)

(declare-fun lt!211822 () Int)

(assert (=> d!183577 (>= lt!211822 0)))

(declare-fun e!305105 () Int)

(assert (=> d!183577 (= lt!211822 e!305105)))

(declare-fun c!99344 () Bool)

(assert (=> d!183577 (= c!99344 ((_ is Nil!4611) (t!73139 p!1985)))))

(assert (=> d!183577 (= (size!3717 (t!73139 p!1985)) lt!211822)))

(declare-fun b!510771 () Bool)

(assert (=> b!510771 (= e!305105 0)))

(declare-fun b!510772 () Bool)

(assert (=> b!510772 (= e!305105 (+ 1 (size!3717 (t!73139 (t!73139 p!1985)))))))

(assert (= (and d!183577 c!99344) b!510771))

(assert (= (and d!183577 (not c!99344)) b!510772))

(declare-fun m!757543 () Bool)

(assert (=> b!510772 m!757543))

(assert (=> b!510748 d!183577))

(declare-fun b!510775 () Bool)

(declare-fun e!305107 () Bool)

(assert (=> b!510775 (= e!305107 (isPrefix!543 (tail!678 (tail!678 p!1985)) (tail!678 (tail!678 l!3306))))))

(declare-fun b!510773 () Bool)

(declare-fun e!305108 () Bool)

(assert (=> b!510773 (= e!305108 e!305107)))

(declare-fun res!216749 () Bool)

(assert (=> b!510773 (=> (not res!216749) (not e!305107))))

(assert (=> b!510773 (= res!216749 (not ((_ is Nil!4611) (tail!678 l!3306))))))

(declare-fun b!510776 () Bool)

(declare-fun e!305106 () Bool)

(assert (=> b!510776 (= e!305106 (>= (size!3717 (tail!678 l!3306)) (size!3717 (tail!678 p!1985))))))

(declare-fun d!183579 () Bool)

(assert (=> d!183579 e!305106))

(declare-fun res!216746 () Bool)

(assert (=> d!183579 (=> res!216746 e!305106)))

(declare-fun lt!211823 () Bool)

(assert (=> d!183579 (= res!216746 (not lt!211823))))

(assert (=> d!183579 (= lt!211823 e!305108)))

(declare-fun res!216747 () Bool)

(assert (=> d!183579 (=> res!216747 e!305108)))

(assert (=> d!183579 (= res!216747 ((_ is Nil!4611) (tail!678 p!1985)))))

(assert (=> d!183579 (= (isPrefix!543 (tail!678 p!1985) (tail!678 l!3306)) lt!211823)))

(declare-fun b!510774 () Bool)

(declare-fun res!216748 () Bool)

(assert (=> b!510774 (=> (not res!216748) (not e!305107))))

(assert (=> b!510774 (= res!216748 (= (head!1154 (tail!678 p!1985)) (head!1154 (tail!678 l!3306))))))

(assert (= (and d!183579 (not res!216747)) b!510773))

(assert (= (and b!510773 res!216749) b!510774))

(assert (= (and b!510774 res!216748) b!510775))

(assert (= (and d!183579 (not res!216746)) b!510776))

(assert (=> b!510775 m!757535))

(declare-fun m!757545 () Bool)

(assert (=> b!510775 m!757545))

(assert (=> b!510775 m!757487))

(declare-fun m!757547 () Bool)

(assert (=> b!510775 m!757547))

(assert (=> b!510775 m!757545))

(assert (=> b!510775 m!757547))

(declare-fun m!757549 () Bool)

(assert (=> b!510775 m!757549))

(assert (=> b!510776 m!757487))

(declare-fun m!757551 () Bool)

(assert (=> b!510776 m!757551))

(assert (=> b!510776 m!757535))

(declare-fun m!757553 () Bool)

(assert (=> b!510776 m!757553))

(assert (=> b!510774 m!757535))

(declare-fun m!757555 () Bool)

(assert (=> b!510774 m!757555))

(assert (=> b!510774 m!757487))

(declare-fun m!757557 () Bool)

(assert (=> b!510774 m!757557))

(assert (=> b!510755 d!183579))

(declare-fun d!183581 () Bool)

(assert (=> d!183581 (= (tail!678 p!1985) (t!73139 p!1985))))

(assert (=> b!510755 d!183581))

(assert (=> b!510755 d!183575))

(declare-fun d!183583 () Bool)

(assert (=> d!183583 (= (head!1154 p!1985) (h!10008 p!1985))))

(assert (=> b!510754 d!183583))

(declare-fun d!183585 () Bool)

(assert (=> d!183585 (= (head!1154 l!3306) (h!10008 l!3306))))

(assert (=> b!510754 d!183585))

(declare-fun d!183587 () Bool)

(declare-fun lt!211824 () Int)

(assert (=> d!183587 (>= lt!211824 0)))

(declare-fun e!305109 () Int)

(assert (=> d!183587 (= lt!211824 e!305109)))

(declare-fun c!99345 () Bool)

(assert (=> d!183587 (= c!99345 ((_ is Nil!4611) lt!211805))))

(assert (=> d!183587 (= (size!3717 lt!211805) lt!211824)))

(declare-fun b!510777 () Bool)

(assert (=> b!510777 (= e!305109 0)))

(declare-fun b!510778 () Bool)

(assert (=> b!510778 (= e!305109 (+ 1 (size!3717 (t!73139 lt!211805))))))

(assert (= (and d!183587 c!99345) b!510777))

(assert (= (and d!183587 (not c!99345)) b!510778))

(declare-fun m!757559 () Bool)

(assert (=> b!510778 m!757559))

(assert (=> b!510734 d!183587))

(assert (=> b!510734 d!183577))

(declare-fun b!510781 () Bool)

(declare-fun e!305111 () Bool)

(assert (=> b!510781 (= e!305111 (isPrefix!543 (tail!678 (tail!678 (t!73139 p!1985))) (tail!678 (tail!678 lt!211805))))))

(declare-fun b!510779 () Bool)

(declare-fun e!305112 () Bool)

(assert (=> b!510779 (= e!305112 e!305111)))

(declare-fun res!216753 () Bool)

(assert (=> b!510779 (=> (not res!216753) (not e!305111))))

(assert (=> b!510779 (= res!216753 (not ((_ is Nil!4611) (tail!678 lt!211805))))))

(declare-fun b!510782 () Bool)

(declare-fun e!305110 () Bool)

(assert (=> b!510782 (= e!305110 (>= (size!3717 (tail!678 lt!211805)) (size!3717 (tail!678 (t!73139 p!1985)))))))

(declare-fun d!183589 () Bool)

(assert (=> d!183589 e!305110))

(declare-fun res!216750 () Bool)

(assert (=> d!183589 (=> res!216750 e!305110)))

(declare-fun lt!211825 () Bool)

(assert (=> d!183589 (= res!216750 (not lt!211825))))

(assert (=> d!183589 (= lt!211825 e!305112)))

(declare-fun res!216751 () Bool)

(assert (=> d!183589 (=> res!216751 e!305112)))

(assert (=> d!183589 (= res!216751 ((_ is Nil!4611) (tail!678 (t!73139 p!1985))))))

(assert (=> d!183589 (= (isPrefix!543 (tail!678 (t!73139 p!1985)) (tail!678 lt!211805)) lt!211825)))

(declare-fun b!510780 () Bool)

(declare-fun res!216752 () Bool)

(assert (=> b!510780 (=> (not res!216752) (not e!305111))))

(assert (=> b!510780 (= res!216752 (= (head!1154 (tail!678 (t!73139 p!1985))) (head!1154 (tail!678 lt!211805))))))

(assert (= (and d!183589 (not res!216751)) b!510779))

(assert (= (and b!510779 res!216753) b!510780))

(assert (= (and b!510780 res!216752) b!510781))

(assert (= (and d!183589 (not res!216750)) b!510782))

(assert (=> b!510781 m!757503))

(declare-fun m!757561 () Bool)

(assert (=> b!510781 m!757561))

(assert (=> b!510781 m!757505))

(declare-fun m!757563 () Bool)

(assert (=> b!510781 m!757563))

(assert (=> b!510781 m!757561))

(assert (=> b!510781 m!757563))

(declare-fun m!757565 () Bool)

(assert (=> b!510781 m!757565))

(assert (=> b!510782 m!757505))

(declare-fun m!757567 () Bool)

(assert (=> b!510782 m!757567))

(assert (=> b!510782 m!757503))

(declare-fun m!757569 () Bool)

(assert (=> b!510782 m!757569))

(assert (=> b!510780 m!757503))

(declare-fun m!757571 () Bool)

(assert (=> b!510780 m!757571))

(assert (=> b!510780 m!757505))

(declare-fun m!757573 () Bool)

(assert (=> b!510780 m!757573))

(assert (=> b!510733 d!183589))

(declare-fun d!183591 () Bool)

(assert (=> d!183591 (= (tail!678 (t!73139 p!1985)) (t!73139 (t!73139 p!1985)))))

(assert (=> b!510733 d!183591))

(declare-fun d!183593 () Bool)

(assert (=> d!183593 (= (tail!678 lt!211805) (t!73139 lt!211805))))

(assert (=> b!510733 d!183593))

(declare-fun d!183595 () Bool)

(declare-fun lt!211826 () Int)

(assert (=> d!183595 (>= lt!211826 0)))

(declare-fun e!305113 () Int)

(assert (=> d!183595 (= lt!211826 e!305113)))

(declare-fun c!99346 () Bool)

(assert (=> d!183595 (= c!99346 ((_ is Nil!4611) (t!73139 l!3306)))))

(assert (=> d!183595 (= (size!3717 (t!73139 l!3306)) lt!211826)))

(declare-fun b!510783 () Bool)

(assert (=> b!510783 (= e!305113 0)))

(declare-fun b!510784 () Bool)

(assert (=> b!510784 (= e!305113 (+ 1 (size!3717 (t!73139 (t!73139 l!3306)))))))

(assert (= (and d!183595 c!99346) b!510783))

(assert (= (and d!183595 (not c!99346)) b!510784))

(declare-fun m!757575 () Bool)

(assert (=> b!510784 m!757575))

(assert (=> b!510750 d!183595))

(assert (=> b!510756 d!183563))

(assert (=> b!510756 d!183555))

(declare-fun d!183597 () Bool)

(assert (=> d!183597 (= (head!1154 (t!73139 p!1985)) (h!10008 (t!73139 p!1985)))))

(assert (=> b!510732 d!183597))

(declare-fun d!183599 () Bool)

(assert (=> d!183599 (= (head!1154 lt!211805) (h!10008 lt!211805))))

(assert (=> b!510732 d!183599))

(declare-fun b!510785 () Bool)

(declare-fun e!305114 () Bool)

(declare-fun tp!158872 () Bool)

(assert (=> b!510785 (= e!305114 (and tp_is_empty!2399 tp!158872))))

(assert (=> b!510770 (= tp!158871 e!305114)))

(assert (= (and b!510770 ((_ is Cons!4611) (t!73139 (t!73139 p!1985)))) b!510785))

(declare-fun b!510786 () Bool)

(declare-fun e!305115 () Bool)

(declare-fun tp!158873 () Bool)

(assert (=> b!510786 (= e!305115 (and tp_is_empty!2399 tp!158873))))

(assert (=> b!510769 (= tp!158870 e!305115)))

(assert (= (and b!510769 ((_ is Cons!4611) (t!73139 (t!73139 l!3306)))) b!510786))

(check-sat (not b!510776) (not b!510775) (not b!510786) (not b!510785) (not b!510772) (not b!510774) (not b!510780) (not b!510784) (not b!510778) (not b!510781) tp_is_empty!2399 (not b!510782))
(check-sat)
