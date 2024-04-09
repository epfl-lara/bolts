; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114394 () Bool)

(assert start!114394)

(declare-fun b!1357780 () Bool)

(declare-fun e!770618 () Bool)

(declare-fun e!770620 () Bool)

(assert (=> b!1357780 (= e!770618 (not e!770620))))

(declare-fun res!902618 () Bool)

(assert (=> b!1357780 (=> res!902618 e!770620)))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> b!1357780 (= res!902618 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-datatypes ((List!31866 0))(
  ( (Nil!31863) (Cons!31862 (h!33071 (_ BitVec 64)) (t!46537 List!31866)) )
))
(declare-fun acc!759 () List!31866)

(declare-fun lt!599171 () List!31866)

(declare-datatypes ((array!92409 0))(
  ( (array!92410 (arr!44645 (Array (_ BitVec 32) (_ BitVec 64))) (size!45196 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92409)

(declare-fun $colon$colon!827 (List!31866 (_ BitVec 64)) List!31866)

(assert (=> b!1357780 (= lt!599171 ($colon$colon!827 acc!759 (select (arr!44645 a!3742) from!3120)))))

(declare-fun subseq!822 (List!31866 List!31866) Bool)

(assert (=> b!1357780 (subseq!822 acc!759 acc!759)))

(declare-datatypes ((Unit!44623 0))(
  ( (Unit!44624) )
))
(declare-fun lt!599170 () Unit!44623)

(declare-fun lemmaListSubSeqRefl!0 (List!31866) Unit!44623)

(assert (=> b!1357780 (= lt!599170 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun b!1357781 () Bool)

(declare-fun res!902621 () Bool)

(assert (=> b!1357781 (=> (not res!902621) (not e!770618))))

(assert (=> b!1357781 (= res!902621 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45196 a!3742)))))

(declare-fun b!1357782 () Bool)

(declare-fun res!902614 () Bool)

(assert (=> b!1357782 (=> (not res!902614) (not e!770618))))

(declare-fun arrayNoDuplicates!0 (array!92409 (_ BitVec 32) List!31866) Bool)

(assert (=> b!1357782 (= res!902614 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31863))))

(declare-fun b!1357783 () Bool)

(declare-fun res!902611 () Bool)

(assert (=> b!1357783 (=> (not res!902611) (not e!770618))))

(assert (=> b!1357783 (= res!902611 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1357784 () Bool)

(assert (=> b!1357784 (= e!770620 (subseq!822 acc!759 lt!599171))))

(declare-fun b!1357785 () Bool)

(declare-fun res!902615 () Bool)

(assert (=> b!1357785 (=> (not res!902615) (not e!770618))))

(declare-fun noDuplicate!2310 (List!31866) Bool)

(assert (=> b!1357785 (= res!902615 (noDuplicate!2310 acc!759))))

(declare-fun b!1357786 () Bool)

(declare-fun res!902619 () Bool)

(assert (=> b!1357786 (=> res!902619 e!770620)))

(declare-fun contains!9431 (List!31866 (_ BitVec 64)) Bool)

(assert (=> b!1357786 (= res!902619 (contains!9431 lt!599171 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!902617 () Bool)

(assert (=> start!114394 (=> (not res!902617) (not e!770618))))

(assert (=> start!114394 (= res!902617 (and (bvslt (size!45196 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45196 a!3742))))))

(assert (=> start!114394 e!770618))

(assert (=> start!114394 true))

(declare-fun array_inv!33590 (array!92409) Bool)

(assert (=> start!114394 (array_inv!33590 a!3742)))

(declare-fun b!1357787 () Bool)

(declare-fun res!902613 () Bool)

(assert (=> b!1357787 (=> (not res!902613) (not e!770618))))

(assert (=> b!1357787 (= res!902613 (not (contains!9431 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1357788 () Bool)

(declare-fun res!902609 () Bool)

(assert (=> b!1357788 (=> (not res!902609) (not e!770618))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1357788 (= res!902609 (validKeyInArray!0 (select (arr!44645 a!3742) from!3120)))))

(declare-fun b!1357789 () Bool)

(declare-fun res!902620 () Bool)

(assert (=> b!1357789 (=> (not res!902620) (not e!770618))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1357789 (= res!902620 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1357790 () Bool)

(declare-fun res!902610 () Bool)

(assert (=> b!1357790 (=> res!902610 e!770620)))

(assert (=> b!1357790 (= res!902610 (contains!9431 lt!599171 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1357791 () Bool)

(declare-fun res!902622 () Bool)

(assert (=> b!1357791 (=> (not res!902622) (not e!770618))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1357791 (= res!902622 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45196 a!3742))))))

(declare-fun b!1357792 () Bool)

(declare-fun res!902612 () Bool)

(assert (=> b!1357792 (=> res!902612 e!770620)))

(assert (=> b!1357792 (= res!902612 (not (noDuplicate!2310 lt!599171)))))

(declare-fun b!1357793 () Bool)

(declare-fun res!902616 () Bool)

(assert (=> b!1357793 (=> (not res!902616) (not e!770618))))

(assert (=> b!1357793 (= res!902616 (not (contains!9431 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!114394 res!902617) b!1357785))

(assert (= (and b!1357785 res!902615) b!1357787))

(assert (= (and b!1357787 res!902613) b!1357793))

(assert (= (and b!1357793 res!902616) b!1357782))

(assert (= (and b!1357782 res!902614) b!1357783))

(assert (= (and b!1357783 res!902611) b!1357791))

(assert (= (and b!1357791 res!902622) b!1357789))

(assert (= (and b!1357789 res!902620) b!1357781))

(assert (= (and b!1357781 res!902621) b!1357788))

(assert (= (and b!1357788 res!902609) b!1357780))

(assert (= (and b!1357780 (not res!902618)) b!1357792))

(assert (= (and b!1357792 (not res!902612)) b!1357790))

(assert (= (and b!1357790 (not res!902610)) b!1357786))

(assert (= (and b!1357786 (not res!902619)) b!1357784))

(declare-fun m!1243473 () Bool)

(assert (=> b!1357790 m!1243473))

(declare-fun m!1243475 () Bool)

(assert (=> b!1357792 m!1243475))

(declare-fun m!1243477 () Bool)

(assert (=> b!1357787 m!1243477))

(declare-fun m!1243479 () Bool)

(assert (=> b!1357793 m!1243479))

(declare-fun m!1243481 () Bool)

(assert (=> b!1357780 m!1243481))

(assert (=> b!1357780 m!1243481))

(declare-fun m!1243483 () Bool)

(assert (=> b!1357780 m!1243483))

(declare-fun m!1243485 () Bool)

(assert (=> b!1357780 m!1243485))

(declare-fun m!1243487 () Bool)

(assert (=> b!1357780 m!1243487))

(declare-fun m!1243489 () Bool)

(assert (=> b!1357785 m!1243489))

(declare-fun m!1243491 () Bool)

(assert (=> b!1357789 m!1243491))

(declare-fun m!1243493 () Bool)

(assert (=> b!1357783 m!1243493))

(declare-fun m!1243495 () Bool)

(assert (=> start!114394 m!1243495))

(declare-fun m!1243497 () Bool)

(assert (=> b!1357782 m!1243497))

(assert (=> b!1357788 m!1243481))

(assert (=> b!1357788 m!1243481))

(declare-fun m!1243499 () Bool)

(assert (=> b!1357788 m!1243499))

(declare-fun m!1243501 () Bool)

(assert (=> b!1357784 m!1243501))

(declare-fun m!1243503 () Bool)

(assert (=> b!1357786 m!1243503))

(check-sat (not start!114394) (not b!1357782) (not b!1357784) (not b!1357792) (not b!1357786) (not b!1357780) (not b!1357788) (not b!1357783) (not b!1357790) (not b!1357787) (not b!1357793) (not b!1357789) (not b!1357785))
(check-sat)
(get-model)

(declare-fun d!145165 () Bool)

(declare-fun res!902669 () Bool)

(declare-fun e!770634 () Bool)

(assert (=> d!145165 (=> res!902669 e!770634)))

(get-info :version)

(assert (=> d!145165 (= res!902669 ((_ is Nil!31863) acc!759))))

(assert (=> d!145165 (= (noDuplicate!2310 acc!759) e!770634)))

(declare-fun b!1357840 () Bool)

(declare-fun e!770635 () Bool)

(assert (=> b!1357840 (= e!770634 e!770635)))

(declare-fun res!902670 () Bool)

(assert (=> b!1357840 (=> (not res!902670) (not e!770635))))

(assert (=> b!1357840 (= res!902670 (not (contains!9431 (t!46537 acc!759) (h!33071 acc!759))))))

(declare-fun b!1357841 () Bool)

(assert (=> b!1357841 (= e!770635 (noDuplicate!2310 (t!46537 acc!759)))))

(assert (= (and d!145165 (not res!902669)) b!1357840))

(assert (= (and b!1357840 res!902670) b!1357841))

(declare-fun m!1243537 () Bool)

(assert (=> b!1357840 m!1243537))

(declare-fun m!1243539 () Bool)

(assert (=> b!1357841 m!1243539))

(assert (=> b!1357785 d!145165))

(declare-fun d!145167 () Bool)

(declare-fun lt!599180 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!687 (List!31866) (InoxSet (_ BitVec 64)))

(assert (=> d!145167 (= lt!599180 (select (content!687 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!770640 () Bool)

(assert (=> d!145167 (= lt!599180 e!770640)))

(declare-fun res!902675 () Bool)

(assert (=> d!145167 (=> (not res!902675) (not e!770640))))

(assert (=> d!145167 (= res!902675 ((_ is Cons!31862) acc!759))))

(assert (=> d!145167 (= (contains!9431 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000) lt!599180)))

(declare-fun b!1357846 () Bool)

(declare-fun e!770641 () Bool)

(assert (=> b!1357846 (= e!770640 e!770641)))

(declare-fun res!902676 () Bool)

(assert (=> b!1357846 (=> res!902676 e!770641)))

(assert (=> b!1357846 (= res!902676 (= (h!33071 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1357847 () Bool)

(assert (=> b!1357847 (= e!770641 (contains!9431 (t!46537 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145167 res!902675) b!1357846))

(assert (= (and b!1357846 (not res!902676)) b!1357847))

(declare-fun m!1243541 () Bool)

(assert (=> d!145167 m!1243541))

(declare-fun m!1243543 () Bool)

(assert (=> d!145167 m!1243543))

(declare-fun m!1243545 () Bool)

(assert (=> b!1357847 m!1243545))

(assert (=> b!1357787 d!145167))

(declare-fun d!145169 () Bool)

(declare-fun lt!599181 () Bool)

(assert (=> d!145169 (= lt!599181 (select (content!687 lt!599171) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!770642 () Bool)

(assert (=> d!145169 (= lt!599181 e!770642)))

(declare-fun res!902677 () Bool)

(assert (=> d!145169 (=> (not res!902677) (not e!770642))))

(assert (=> d!145169 (= res!902677 ((_ is Cons!31862) lt!599171))))

(assert (=> d!145169 (= (contains!9431 lt!599171 #b1000000000000000000000000000000000000000000000000000000000000000) lt!599181)))

(declare-fun b!1357848 () Bool)

(declare-fun e!770643 () Bool)

(assert (=> b!1357848 (= e!770642 e!770643)))

(declare-fun res!902678 () Bool)

(assert (=> b!1357848 (=> res!902678 e!770643)))

(assert (=> b!1357848 (= res!902678 (= (h!33071 lt!599171) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1357849 () Bool)

(assert (=> b!1357849 (= e!770643 (contains!9431 (t!46537 lt!599171) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145169 res!902677) b!1357848))

(assert (= (and b!1357848 (not res!902678)) b!1357849))

(declare-fun m!1243547 () Bool)

(assert (=> d!145169 m!1243547))

(declare-fun m!1243549 () Bool)

(assert (=> d!145169 m!1243549))

(declare-fun m!1243551 () Bool)

(assert (=> b!1357849 m!1243551))

(assert (=> b!1357786 d!145169))

(declare-fun d!145171 () Bool)

(assert (=> d!145171 (= (validKeyInArray!0 (select (arr!44645 a!3742) from!3120)) (and (not (= (select (arr!44645 a!3742) from!3120) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44645 a!3742) from!3120) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1357788 d!145171))

(declare-fun d!145173 () Bool)

(assert (=> d!145173 (= (validKeyInArray!0 l!3587) (and (not (= l!3587 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= l!3587 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1357789 d!145173))

(declare-fun d!145175 () Bool)

(assert (=> d!145175 (= ($colon$colon!827 acc!759 (select (arr!44645 a!3742) from!3120)) (Cons!31862 (select (arr!44645 a!3742) from!3120) acc!759))))

(assert (=> b!1357780 d!145175))

(declare-fun b!1357859 () Bool)

(declare-fun e!770654 () Bool)

(declare-fun e!770653 () Bool)

(assert (=> b!1357859 (= e!770654 e!770653)))

(declare-fun res!902688 () Bool)

(assert (=> b!1357859 (=> res!902688 e!770653)))

(declare-fun e!770655 () Bool)

(assert (=> b!1357859 (= res!902688 e!770655)))

(declare-fun res!902687 () Bool)

(assert (=> b!1357859 (=> (not res!902687) (not e!770655))))

(assert (=> b!1357859 (= res!902687 (= (h!33071 acc!759) (h!33071 acc!759)))))

(declare-fun d!145177 () Bool)

(declare-fun res!902690 () Bool)

(declare-fun e!770652 () Bool)

(assert (=> d!145177 (=> res!902690 e!770652)))

(assert (=> d!145177 (= res!902690 ((_ is Nil!31863) acc!759))))

(assert (=> d!145177 (= (subseq!822 acc!759 acc!759) e!770652)))

(declare-fun b!1357858 () Bool)

(assert (=> b!1357858 (= e!770652 e!770654)))

(declare-fun res!902689 () Bool)

(assert (=> b!1357858 (=> (not res!902689) (not e!770654))))

(assert (=> b!1357858 (= res!902689 ((_ is Cons!31862) acc!759))))

(declare-fun b!1357861 () Bool)

(assert (=> b!1357861 (= e!770653 (subseq!822 acc!759 (t!46537 acc!759)))))

(declare-fun b!1357860 () Bool)

(assert (=> b!1357860 (= e!770655 (subseq!822 (t!46537 acc!759) (t!46537 acc!759)))))

(assert (= (and d!145177 (not res!902690)) b!1357858))

(assert (= (and b!1357858 res!902689) b!1357859))

(assert (= (and b!1357859 res!902687) b!1357860))

(assert (= (and b!1357859 (not res!902688)) b!1357861))

(declare-fun m!1243553 () Bool)

(assert (=> b!1357861 m!1243553))

(declare-fun m!1243555 () Bool)

(assert (=> b!1357860 m!1243555))

(assert (=> b!1357780 d!145177))

(declare-fun d!145183 () Bool)

(assert (=> d!145183 (subseq!822 acc!759 acc!759)))

(declare-fun lt!599186 () Unit!44623)

(declare-fun choose!36 (List!31866) Unit!44623)

(assert (=> d!145183 (= lt!599186 (choose!36 acc!759))))

(assert (=> d!145183 (= (lemmaListSubSeqRefl!0 acc!759) lt!599186)))

(declare-fun bs!38936 () Bool)

(assert (= bs!38936 d!145183))

(assert (=> bs!38936 m!1243485))

(declare-fun m!1243557 () Bool)

(assert (=> bs!38936 m!1243557))

(assert (=> b!1357780 d!145183))

(declare-fun d!145185 () Bool)

(assert (=> d!145185 (= (array_inv!33590 a!3742) (bvsge (size!45196 a!3742) #b00000000000000000000000000000000))))

(assert (=> start!114394 d!145185))

(declare-fun d!145187 () Bool)

(declare-fun lt!599190 () Bool)

(assert (=> d!145187 (= lt!599190 (select (content!687 lt!599171) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!770666 () Bool)

(assert (=> d!145187 (= lt!599190 e!770666)))

(declare-fun res!902701 () Bool)

(assert (=> d!145187 (=> (not res!902701) (not e!770666))))

(assert (=> d!145187 (= res!902701 ((_ is Cons!31862) lt!599171))))

(assert (=> d!145187 (= (contains!9431 lt!599171 #b0000000000000000000000000000000000000000000000000000000000000000) lt!599190)))

(declare-fun b!1357872 () Bool)

(declare-fun e!770667 () Bool)

(assert (=> b!1357872 (= e!770666 e!770667)))

(declare-fun res!902702 () Bool)

(assert (=> b!1357872 (=> res!902702 e!770667)))

(assert (=> b!1357872 (= res!902702 (= (h!33071 lt!599171) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1357873 () Bool)

(assert (=> b!1357873 (= e!770667 (contains!9431 (t!46537 lt!599171) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145187 res!902701) b!1357872))

(assert (= (and b!1357872 (not res!902702)) b!1357873))

(assert (=> d!145187 m!1243547))

(declare-fun m!1243565 () Bool)

(assert (=> d!145187 m!1243565))

(declare-fun m!1243567 () Bool)

(assert (=> b!1357873 m!1243567))

(assert (=> b!1357790 d!145187))

(declare-fun d!145191 () Bool)

(declare-fun res!902705 () Bool)

(declare-fun e!770670 () Bool)

(assert (=> d!145191 (=> res!902705 e!770670)))

(assert (=> d!145191 (= res!902705 ((_ is Nil!31863) lt!599171))))

(assert (=> d!145191 (= (noDuplicate!2310 lt!599171) e!770670)))

(declare-fun b!1357876 () Bool)

(declare-fun e!770671 () Bool)

(assert (=> b!1357876 (= e!770670 e!770671)))

(declare-fun res!902706 () Bool)

(assert (=> b!1357876 (=> (not res!902706) (not e!770671))))

(assert (=> b!1357876 (= res!902706 (not (contains!9431 (t!46537 lt!599171) (h!33071 lt!599171))))))

(declare-fun b!1357877 () Bool)

(assert (=> b!1357877 (= e!770671 (noDuplicate!2310 (t!46537 lt!599171)))))

(assert (= (and d!145191 (not res!902705)) b!1357876))

(assert (= (and b!1357876 res!902706) b!1357877))

(declare-fun m!1243575 () Bool)

(assert (=> b!1357876 m!1243575))

(declare-fun m!1243577 () Bool)

(assert (=> b!1357877 m!1243577))

(assert (=> b!1357792 d!145191))

(declare-fun e!770702 () Bool)

(declare-fun b!1357910 () Bool)

(assert (=> b!1357910 (= e!770702 (contains!9431 acc!759 (select (arr!44645 a!3742) from!3120)))))

(declare-fun b!1357911 () Bool)

(declare-fun e!770700 () Bool)

(declare-fun call!65265 () Bool)

(assert (=> b!1357911 (= e!770700 call!65265)))

(declare-fun c!127032 () Bool)

(declare-fun bm!65262 () Bool)

(assert (=> bm!65262 (= call!65265 (arrayNoDuplicates!0 a!3742 (bvadd from!3120 #b00000000000000000000000000000001) (ite c!127032 (Cons!31862 (select (arr!44645 a!3742) from!3120) acc!759) acc!759)))))

(declare-fun d!145195 () Bool)

(declare-fun res!902731 () Bool)

(declare-fun e!770703 () Bool)

(assert (=> d!145195 (=> res!902731 e!770703)))

(assert (=> d!145195 (= res!902731 (bvsge from!3120 (size!45196 a!3742)))))

(assert (=> d!145195 (= (arrayNoDuplicates!0 a!3742 from!3120 acc!759) e!770703)))

(declare-fun b!1357912 () Bool)

(declare-fun e!770701 () Bool)

(assert (=> b!1357912 (= e!770701 e!770700)))

(assert (=> b!1357912 (= c!127032 (validKeyInArray!0 (select (arr!44645 a!3742) from!3120)))))

(declare-fun b!1357913 () Bool)

(assert (=> b!1357913 (= e!770703 e!770701)))

(declare-fun res!902732 () Bool)

(assert (=> b!1357913 (=> (not res!902732) (not e!770701))))

(assert (=> b!1357913 (= res!902732 (not e!770702))))

(declare-fun res!902733 () Bool)

(assert (=> b!1357913 (=> (not res!902733) (not e!770702))))

(assert (=> b!1357913 (= res!902733 (validKeyInArray!0 (select (arr!44645 a!3742) from!3120)))))

(declare-fun b!1357914 () Bool)

(assert (=> b!1357914 (= e!770700 call!65265)))

(assert (= (and d!145195 (not res!902731)) b!1357913))

(assert (= (and b!1357913 res!902733) b!1357910))

(assert (= (and b!1357913 res!902732) b!1357912))

(assert (= (and b!1357912 c!127032) b!1357911))

(assert (= (and b!1357912 (not c!127032)) b!1357914))

(assert (= (or b!1357911 b!1357914) bm!65262))

(assert (=> b!1357910 m!1243481))

(assert (=> b!1357910 m!1243481))

(declare-fun m!1243591 () Bool)

(assert (=> b!1357910 m!1243591))

(assert (=> bm!65262 m!1243481))

(declare-fun m!1243593 () Bool)

(assert (=> bm!65262 m!1243593))

(assert (=> b!1357912 m!1243481))

(assert (=> b!1357912 m!1243481))

(assert (=> b!1357912 m!1243499))

(assert (=> b!1357913 m!1243481))

(assert (=> b!1357913 m!1243481))

(assert (=> b!1357913 m!1243499))

(assert (=> b!1357783 d!145195))

(declare-fun d!145209 () Bool)

(declare-fun lt!599194 () Bool)

(assert (=> d!145209 (= lt!599194 (select (content!687 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!770712 () Bool)

(assert (=> d!145209 (= lt!599194 e!770712)))

(declare-fun res!902741 () Bool)

(assert (=> d!145209 (=> (not res!902741) (not e!770712))))

(assert (=> d!145209 (= res!902741 ((_ is Cons!31862) acc!759))))

(assert (=> d!145209 (= (contains!9431 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000) lt!599194)))

(declare-fun b!1357924 () Bool)

(declare-fun e!770713 () Bool)

(assert (=> b!1357924 (= e!770712 e!770713)))

(declare-fun res!902742 () Bool)

(assert (=> b!1357924 (=> res!902742 e!770713)))

(assert (=> b!1357924 (= res!902742 (= (h!33071 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1357925 () Bool)

(assert (=> b!1357925 (= e!770713 (contains!9431 (t!46537 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145209 res!902741) b!1357924))

(assert (= (and b!1357924 (not res!902742)) b!1357925))

(assert (=> d!145209 m!1243541))

(declare-fun m!1243599 () Bool)

(assert (=> d!145209 m!1243599))

(declare-fun m!1243601 () Bool)

(assert (=> b!1357925 m!1243601))

(assert (=> b!1357793 d!145209))

(declare-fun b!1357926 () Bool)

(declare-fun e!770716 () Bool)

(assert (=> b!1357926 (= e!770716 (contains!9431 Nil!31863 (select (arr!44645 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1357927 () Bool)

(declare-fun e!770714 () Bool)

(declare-fun call!65267 () Bool)

(assert (=> b!1357927 (= e!770714 call!65267)))

(declare-fun bm!65264 () Bool)

(declare-fun c!127034 () Bool)

(assert (=> bm!65264 (= call!65267 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!127034 (Cons!31862 (select (arr!44645 a!3742) #b00000000000000000000000000000000) Nil!31863) Nil!31863)))))

(declare-fun d!145213 () Bool)

(declare-fun res!902743 () Bool)

(declare-fun e!770717 () Bool)

(assert (=> d!145213 (=> res!902743 e!770717)))

(assert (=> d!145213 (= res!902743 (bvsge #b00000000000000000000000000000000 (size!45196 a!3742)))))

(assert (=> d!145213 (= (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31863) e!770717)))

(declare-fun b!1357928 () Bool)

(declare-fun e!770715 () Bool)

(assert (=> b!1357928 (= e!770715 e!770714)))

(assert (=> b!1357928 (= c!127034 (validKeyInArray!0 (select (arr!44645 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1357929 () Bool)

(assert (=> b!1357929 (= e!770717 e!770715)))

(declare-fun res!902744 () Bool)

(assert (=> b!1357929 (=> (not res!902744) (not e!770715))))

(assert (=> b!1357929 (= res!902744 (not e!770716))))

(declare-fun res!902745 () Bool)

(assert (=> b!1357929 (=> (not res!902745) (not e!770716))))

(assert (=> b!1357929 (= res!902745 (validKeyInArray!0 (select (arr!44645 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1357930 () Bool)

(assert (=> b!1357930 (= e!770714 call!65267)))

(assert (= (and d!145213 (not res!902743)) b!1357929))

(assert (= (and b!1357929 res!902745) b!1357926))

(assert (= (and b!1357929 res!902744) b!1357928))

(assert (= (and b!1357928 c!127034) b!1357927))

(assert (= (and b!1357928 (not c!127034)) b!1357930))

(assert (= (or b!1357927 b!1357930) bm!65264))

(declare-fun m!1243611 () Bool)

(assert (=> b!1357926 m!1243611))

(assert (=> b!1357926 m!1243611))

(declare-fun m!1243613 () Bool)

(assert (=> b!1357926 m!1243613))

(assert (=> bm!65264 m!1243611))

(declare-fun m!1243615 () Bool)

(assert (=> bm!65264 m!1243615))

(assert (=> b!1357928 m!1243611))

(assert (=> b!1357928 m!1243611))

(declare-fun m!1243617 () Bool)

(assert (=> b!1357928 m!1243617))

(assert (=> b!1357929 m!1243611))

(assert (=> b!1357929 m!1243611))

(assert (=> b!1357929 m!1243617))

(assert (=> b!1357782 d!145213))

(declare-fun b!1357932 () Bool)

(declare-fun e!770720 () Bool)

(declare-fun e!770719 () Bool)

(assert (=> b!1357932 (= e!770720 e!770719)))

(declare-fun res!902747 () Bool)

(assert (=> b!1357932 (=> res!902747 e!770719)))

(declare-fun e!770721 () Bool)

(assert (=> b!1357932 (= res!902747 e!770721)))

(declare-fun res!902746 () Bool)

(assert (=> b!1357932 (=> (not res!902746) (not e!770721))))

(assert (=> b!1357932 (= res!902746 (= (h!33071 acc!759) (h!33071 lt!599171)))))

(declare-fun d!145217 () Bool)

(declare-fun res!902749 () Bool)

(declare-fun e!770718 () Bool)

(assert (=> d!145217 (=> res!902749 e!770718)))

(assert (=> d!145217 (= res!902749 ((_ is Nil!31863) acc!759))))

(assert (=> d!145217 (= (subseq!822 acc!759 lt!599171) e!770718)))

(declare-fun b!1357931 () Bool)

(assert (=> b!1357931 (= e!770718 e!770720)))

(declare-fun res!902748 () Bool)

(assert (=> b!1357931 (=> (not res!902748) (not e!770720))))

(assert (=> b!1357931 (= res!902748 ((_ is Cons!31862) lt!599171))))

(declare-fun b!1357934 () Bool)

(assert (=> b!1357934 (= e!770719 (subseq!822 acc!759 (t!46537 lt!599171)))))

(declare-fun b!1357933 () Bool)

(assert (=> b!1357933 (= e!770721 (subseq!822 (t!46537 acc!759) (t!46537 lt!599171)))))

(assert (= (and d!145217 (not res!902749)) b!1357931))

(assert (= (and b!1357931 res!902748) b!1357932))

(assert (= (and b!1357932 res!902746) b!1357933))

(assert (= (and b!1357932 (not res!902747)) b!1357934))

(declare-fun m!1243621 () Bool)

(assert (=> b!1357934 m!1243621))

(declare-fun m!1243623 () Bool)

(assert (=> b!1357933 m!1243623))

(assert (=> b!1357784 d!145217))

(check-sat (not b!1357873) (not b!1357928) (not b!1357929) (not b!1357926) (not bm!65264) (not b!1357841) (not b!1357933) (not b!1357913) (not b!1357912) (not d!145167) (not b!1357847) (not bm!65262) (not b!1357910) (not b!1357934) (not b!1357925) (not b!1357849) (not d!145183) (not d!145209) (not b!1357876) (not b!1357860) (not d!145187) (not b!1357877) (not b!1357861) (not d!145169) (not b!1357840))
(check-sat)
