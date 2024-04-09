; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85616 () Bool)

(assert start!85616)

(declare-fun res!664633 () Bool)

(declare-fun e!560894 () Bool)

(assert (=> start!85616 (=> (not res!664633) (not e!560894))))

(declare-datatypes ((array!62850 0))(
  ( (array!62851 (arr!30263 (Array (_ BitVec 32) (_ BitVec 64))) (size!30760 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62850)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85616 (= res!664633 (and (= (size!30760 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62851 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30760 a!4424))))))

(assert (=> start!85616 e!560894))

(declare-fun array_inv!23253 (array!62850) Bool)

(assert (=> start!85616 (array_inv!23253 a!4424)))

(assert (=> start!85616 true))

(declare-fun b!993906 () Bool)

(declare-fun res!664635 () Bool)

(assert (=> b!993906 (=> (not res!664635) (not e!560894))))

(declare-datatypes ((List!21104 0))(
  ( (Nil!21101) (Cons!21100 (h!22262 (_ BitVec 64)) (t!30113 List!21104)) )
))
(declare-fun acc!919 () List!21104)

(declare-fun noDuplicate!1458 (List!21104) Bool)

(assert (=> b!993906 (= res!664635 (noDuplicate!1458 acc!919))))

(declare-fun b!993907 () Bool)

(declare-fun arrayNoDuplicates!0 (array!62850 (_ BitVec 32) List!21104) Bool)

(assert (=> b!993907 (= e!560894 (not (arrayNoDuplicates!0 a!4424 from!3778 acc!919)))))

(assert (=> b!993907 (arrayNoDuplicates!0 a!4424 (bvadd #b00000000000000000000000000000001 from!3778) acc!919)))

(declare-datatypes ((Unit!32898 0))(
  ( (Unit!32899) )
))
(declare-fun lt!440613 () Unit!32898)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!62850 (_ BitVec 32) (_ BitVec 32) List!21104) Unit!32898)

(assert (=> b!993907 (= lt!440613 (lemmaArrayNoDuplicatesInAll0Array!0 a!4424 (bvadd #b00000000000000000000000000000001 from!3778) size!36 acc!919))))

(declare-fun b!993908 () Bool)

(declare-fun res!664632 () Bool)

(assert (=> b!993908 (=> (not res!664632) (not e!560894))))

(declare-fun contains!5861 (List!21104 (_ BitVec 64)) Bool)

(assert (=> b!993908 (= res!664632 (not (contains!5861 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993909 () Bool)

(declare-fun res!664634 () Bool)

(assert (=> b!993909 (=> (not res!664634) (not e!560894))))

(assert (=> b!993909 (= res!664634 (not (contains!5861 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993910 () Bool)

(declare-fun res!664636 () Bool)

(assert (=> b!993910 (=> (not res!664636) (not e!560894))))

(assert (=> b!993910 (= res!664636 (and (bvslt from!3778 size!36) (bvsge (bvadd #b00000000000000000000000000000001 from!3778) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3778) (size!30760 a!4424))))))

(assert (= (and start!85616 res!664633) b!993908))

(assert (= (and b!993908 res!664632) b!993909))

(assert (= (and b!993909 res!664634) b!993906))

(assert (= (and b!993906 res!664635) b!993910))

(assert (= (and b!993910 res!664636) b!993907))

(declare-fun m!921619 () Bool)

(assert (=> b!993908 m!921619))

(declare-fun m!921621 () Bool)

(assert (=> start!85616 m!921621))

(declare-fun m!921623 () Bool)

(assert (=> b!993909 m!921623))

(declare-fun m!921625 () Bool)

(assert (=> b!993907 m!921625))

(declare-fun m!921627 () Bool)

(assert (=> b!993907 m!921627))

(declare-fun m!921629 () Bool)

(assert (=> b!993907 m!921629))

(declare-fun m!921631 () Bool)

(assert (=> b!993906 m!921631))

(check-sat (not b!993909) (not b!993907) (not b!993906) (not start!85616) (not b!993908))
(check-sat)
(get-model)

(declare-fun d!118501 () Bool)

(declare-fun lt!440619 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!477 (List!21104) (InoxSet (_ BitVec 64)))

(assert (=> d!118501 (= lt!440619 (select (content!477 acc!919) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!560906 () Bool)

(assert (=> d!118501 (= lt!440619 e!560906)))

(declare-fun res!664657 () Bool)

(assert (=> d!118501 (=> (not res!664657) (not e!560906))))

(get-info :version)

(assert (=> d!118501 (= res!664657 ((_ is Cons!21100) acc!919))))

(assert (=> d!118501 (= (contains!5861 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000) lt!440619)))

(declare-fun b!993930 () Bool)

(declare-fun e!560905 () Bool)

(assert (=> b!993930 (= e!560906 e!560905)))

(declare-fun res!664656 () Bool)

(assert (=> b!993930 (=> res!664656 e!560905)))

(assert (=> b!993930 (= res!664656 (= (h!22262 acc!919) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!993931 () Bool)

(assert (=> b!993931 (= e!560905 (contains!5861 (t!30113 acc!919) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!118501 res!664657) b!993930))

(assert (= (and b!993930 (not res!664656)) b!993931))

(declare-fun m!921647 () Bool)

(assert (=> d!118501 m!921647))

(declare-fun m!921649 () Bool)

(assert (=> d!118501 m!921649))

(declare-fun m!921651 () Bool)

(assert (=> b!993931 m!921651))

(assert (=> b!993909 d!118501))

(declare-fun d!118507 () Bool)

(assert (=> d!118507 (= (array_inv!23253 a!4424) (bvsge (size!30760 a!4424) #b00000000000000000000000000000000))))

(assert (=> start!85616 d!118507))

(declare-fun d!118509 () Bool)

(declare-fun lt!440620 () Bool)

(assert (=> d!118509 (= lt!440620 (select (content!477 acc!919) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!560908 () Bool)

(assert (=> d!118509 (= lt!440620 e!560908)))

(declare-fun res!664659 () Bool)

(assert (=> d!118509 (=> (not res!664659) (not e!560908))))

(assert (=> d!118509 (= res!664659 ((_ is Cons!21100) acc!919))))

(assert (=> d!118509 (= (contains!5861 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000) lt!440620)))

(declare-fun b!993932 () Bool)

(declare-fun e!560907 () Bool)

(assert (=> b!993932 (= e!560908 e!560907)))

(declare-fun res!664658 () Bool)

(assert (=> b!993932 (=> res!664658 e!560907)))

(assert (=> b!993932 (= res!664658 (= (h!22262 acc!919) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!993933 () Bool)

(assert (=> b!993933 (= e!560907 (contains!5861 (t!30113 acc!919) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!118509 res!664659) b!993932))

(assert (= (and b!993932 (not res!664658)) b!993933))

(assert (=> d!118509 m!921647))

(declare-fun m!921653 () Bool)

(assert (=> d!118509 m!921653))

(declare-fun m!921655 () Bool)

(assert (=> b!993933 m!921655))

(assert (=> b!993908 d!118509))

(declare-fun d!118511 () Bool)

(declare-fun res!664684 () Bool)

(declare-fun e!560934 () Bool)

(assert (=> d!118511 (=> res!664684 e!560934)))

(assert (=> d!118511 (= res!664684 (bvsge from!3778 (size!30760 a!4424)))))

(assert (=> d!118511 (= (arrayNoDuplicates!0 a!4424 from!3778 acc!919) e!560934)))

(declare-fun call!42154 () Bool)

(declare-fun bm!42151 () Bool)

(declare-fun c!100776 () Bool)

(assert (=> bm!42151 (= call!42154 (arrayNoDuplicates!0 a!4424 (bvadd from!3778 #b00000000000000000000000000000001) (ite c!100776 (Cons!21100 (select (arr!30263 a!4424) from!3778) acc!919) acc!919)))))

(declare-fun b!993960 () Bool)

(declare-fun e!560936 () Bool)

(assert (=> b!993960 (= e!560934 e!560936)))

(declare-fun res!664683 () Bool)

(assert (=> b!993960 (=> (not res!664683) (not e!560936))))

(declare-fun e!560935 () Bool)

(assert (=> b!993960 (= res!664683 (not e!560935))))

(declare-fun res!664682 () Bool)

(assert (=> b!993960 (=> (not res!664682) (not e!560935))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!993960 (= res!664682 (validKeyInArray!0 (select (arr!30263 a!4424) from!3778)))))

(declare-fun b!993961 () Bool)

(declare-fun e!560933 () Bool)

(assert (=> b!993961 (= e!560936 e!560933)))

(assert (=> b!993961 (= c!100776 (validKeyInArray!0 (select (arr!30263 a!4424) from!3778)))))

(declare-fun b!993962 () Bool)

(assert (=> b!993962 (= e!560933 call!42154)))

(declare-fun b!993963 () Bool)

(assert (=> b!993963 (= e!560933 call!42154)))

(declare-fun b!993964 () Bool)

(assert (=> b!993964 (= e!560935 (contains!5861 acc!919 (select (arr!30263 a!4424) from!3778)))))

(assert (= (and d!118511 (not res!664684)) b!993960))

(assert (= (and b!993960 res!664682) b!993964))

(assert (= (and b!993960 res!664683) b!993961))

(assert (= (and b!993961 c!100776) b!993962))

(assert (= (and b!993961 (not c!100776)) b!993963))

(assert (= (or b!993962 b!993963) bm!42151))

(declare-fun m!921671 () Bool)

(assert (=> bm!42151 m!921671))

(declare-fun m!921673 () Bool)

(assert (=> bm!42151 m!921673))

(assert (=> b!993960 m!921671))

(assert (=> b!993960 m!921671))

(declare-fun m!921675 () Bool)

(assert (=> b!993960 m!921675))

(assert (=> b!993961 m!921671))

(assert (=> b!993961 m!921671))

(assert (=> b!993961 m!921675))

(assert (=> b!993964 m!921671))

(assert (=> b!993964 m!921671))

(declare-fun m!921677 () Bool)

(assert (=> b!993964 m!921677))

(assert (=> b!993907 d!118511))

(declare-fun d!118521 () Bool)

(declare-fun res!664697 () Bool)

(declare-fun e!560952 () Bool)

(assert (=> d!118521 (=> res!664697 e!560952)))

(assert (=> d!118521 (= res!664697 (bvsge (bvadd #b00000000000000000000000000000001 from!3778) (size!30760 a!4424)))))

(assert (=> d!118521 (= (arrayNoDuplicates!0 a!4424 (bvadd #b00000000000000000000000000000001 from!3778) acc!919) e!560952)))

(declare-fun call!42157 () Bool)

(declare-fun bm!42154 () Bool)

(declare-fun c!100781 () Bool)

(assert (=> bm!42154 (= call!42157 (arrayNoDuplicates!0 a!4424 (bvadd #b00000000000000000000000000000001 from!3778 #b00000000000000000000000000000001) (ite c!100781 (Cons!21100 (select (arr!30263 a!4424) (bvadd #b00000000000000000000000000000001 from!3778)) acc!919) acc!919)))))

(declare-fun b!993983 () Bool)

(declare-fun e!560954 () Bool)

(assert (=> b!993983 (= e!560952 e!560954)))

(declare-fun res!664696 () Bool)

(assert (=> b!993983 (=> (not res!664696) (not e!560954))))

(declare-fun e!560953 () Bool)

(assert (=> b!993983 (= res!664696 (not e!560953))))

(declare-fun res!664695 () Bool)

(assert (=> b!993983 (=> (not res!664695) (not e!560953))))

(assert (=> b!993983 (= res!664695 (validKeyInArray!0 (select (arr!30263 a!4424) (bvadd #b00000000000000000000000000000001 from!3778))))))

(declare-fun b!993984 () Bool)

(declare-fun e!560951 () Bool)

(assert (=> b!993984 (= e!560954 e!560951)))

(assert (=> b!993984 (= c!100781 (validKeyInArray!0 (select (arr!30263 a!4424) (bvadd #b00000000000000000000000000000001 from!3778))))))

(declare-fun b!993985 () Bool)

(assert (=> b!993985 (= e!560951 call!42157)))

(declare-fun b!993986 () Bool)

(assert (=> b!993986 (= e!560951 call!42157)))

(declare-fun b!993987 () Bool)

(assert (=> b!993987 (= e!560953 (contains!5861 acc!919 (select (arr!30263 a!4424) (bvadd #b00000000000000000000000000000001 from!3778))))))

(assert (= (and d!118521 (not res!664697)) b!993983))

(assert (= (and b!993983 res!664695) b!993987))

(assert (= (and b!993983 res!664696) b!993984))

(assert (= (and b!993984 c!100781) b!993985))

(assert (= (and b!993984 (not c!100781)) b!993986))

(assert (= (or b!993985 b!993986) bm!42154))

(declare-fun m!921679 () Bool)

(assert (=> bm!42154 m!921679))

(declare-fun m!921681 () Bool)

(assert (=> bm!42154 m!921681))

(assert (=> b!993983 m!921679))

(assert (=> b!993983 m!921679))

(declare-fun m!921683 () Bool)

(assert (=> b!993983 m!921683))

(assert (=> b!993984 m!921679))

(assert (=> b!993984 m!921679))

(assert (=> b!993984 m!921683))

(assert (=> b!993987 m!921679))

(assert (=> b!993987 m!921679))

(declare-fun m!921685 () Bool)

(assert (=> b!993987 m!921685))

(assert (=> b!993907 d!118521))

(declare-fun d!118523 () Bool)

(assert (=> d!118523 (arrayNoDuplicates!0 a!4424 (bvadd #b00000000000000000000000000000001 from!3778) acc!919)))

(declare-fun lt!440627 () Unit!32898)

(declare-fun choose!111 (array!62850 (_ BitVec 32) (_ BitVec 32) List!21104) Unit!32898)

(assert (=> d!118523 (= lt!440627 (choose!111 a!4424 (bvadd #b00000000000000000000000000000001 from!3778) size!36 acc!919))))

(assert (=> d!118523 (= (size!30760 a!4424) size!36)))

(assert (=> d!118523 (= (lemmaArrayNoDuplicatesInAll0Array!0 a!4424 (bvadd #b00000000000000000000000000000001 from!3778) size!36 acc!919) lt!440627)))

(declare-fun bs!28334 () Bool)

(assert (= bs!28334 d!118523))

(assert (=> bs!28334 m!921627))

(declare-fun m!921695 () Bool)

(assert (=> bs!28334 m!921695))

(assert (=> b!993907 d!118523))

(declare-fun d!118527 () Bool)

(declare-fun res!664714 () Bool)

(declare-fun e!560975 () Bool)

(assert (=> d!118527 (=> res!664714 e!560975)))

(assert (=> d!118527 (= res!664714 ((_ is Nil!21101) acc!919))))

(assert (=> d!118527 (= (noDuplicate!1458 acc!919) e!560975)))

(declare-fun b!994012 () Bool)

(declare-fun e!560976 () Bool)

(assert (=> b!994012 (= e!560975 e!560976)))

(declare-fun res!664715 () Bool)

(assert (=> b!994012 (=> (not res!664715) (not e!560976))))

(assert (=> b!994012 (= res!664715 (not (contains!5861 (t!30113 acc!919) (h!22262 acc!919))))))

(declare-fun b!994013 () Bool)

(assert (=> b!994013 (= e!560976 (noDuplicate!1458 (t!30113 acc!919)))))

(assert (= (and d!118527 (not res!664714)) b!994012))

(assert (= (and b!994012 res!664715) b!994013))

(declare-fun m!921721 () Bool)

(assert (=> b!994012 m!921721))

(declare-fun m!921723 () Bool)

(assert (=> b!994013 m!921723))

(assert (=> b!993906 d!118527))

(check-sat (not b!994013) (not b!993961) (not d!118523) (not b!993964) (not b!993960) (not b!994012) (not d!118501) (not b!993987) (not bm!42154) (not b!993983) (not b!993984) (not bm!42151) (not d!118509) (not b!993933) (not b!993931))
(check-sat)
(get-model)

(assert (=> d!118523 d!118521))

(declare-fun d!118543 () Bool)

(assert (=> d!118543 (arrayNoDuplicates!0 a!4424 (bvadd #b00000000000000000000000000000001 from!3778) acc!919)))

(assert (=> d!118543 true))

(declare-fun res!664732 () Unit!32898)

(assert (=> d!118543 (= (choose!111 a!4424 (bvadd #b00000000000000000000000000000001 from!3778) size!36 acc!919) res!664732)))

(declare-fun bs!28337 () Bool)

(assert (= bs!28337 d!118543))

(assert (=> bs!28337 m!921627))

(assert (=> d!118523 d!118543))

(declare-fun d!118545 () Bool)

(declare-fun lt!440638 () Bool)

(assert (=> d!118545 (= lt!440638 (select (content!477 (t!30113 acc!919)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!560992 () Bool)

(assert (=> d!118545 (= lt!440638 e!560992)))

(declare-fun res!664734 () Bool)

(assert (=> d!118545 (=> (not res!664734) (not e!560992))))

(assert (=> d!118545 (= res!664734 ((_ is Cons!21100) (t!30113 acc!919)))))

(assert (=> d!118545 (= (contains!5861 (t!30113 acc!919) #b1000000000000000000000000000000000000000000000000000000000000000) lt!440638)))

(declare-fun b!994028 () Bool)

(declare-fun e!560991 () Bool)

(assert (=> b!994028 (= e!560992 e!560991)))

(declare-fun res!664733 () Bool)

(assert (=> b!994028 (=> res!664733 e!560991)))

(assert (=> b!994028 (= res!664733 (= (h!22262 (t!30113 acc!919)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!994029 () Bool)

(assert (=> b!994029 (= e!560991 (contains!5861 (t!30113 (t!30113 acc!919)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!118545 res!664734) b!994028))

(assert (= (and b!994028 (not res!664733)) b!994029))

(declare-fun m!921743 () Bool)

(assert (=> d!118545 m!921743))

(declare-fun m!921745 () Bool)

(assert (=> d!118545 m!921745))

(declare-fun m!921747 () Bool)

(assert (=> b!994029 m!921747))

(assert (=> b!993931 d!118545))

(declare-fun d!118547 () Bool)

(declare-fun c!100788 () Bool)

(assert (=> d!118547 (= c!100788 ((_ is Nil!21101) acc!919))))

(declare-fun e!560995 () (InoxSet (_ BitVec 64)))

(assert (=> d!118547 (= (content!477 acc!919) e!560995)))

(declare-fun b!994034 () Bool)

(assert (=> b!994034 (= e!560995 ((as const (Array (_ BitVec 64) Bool)) false))))

(declare-fun b!994035 () Bool)

(assert (=> b!994035 (= e!560995 ((_ map or) (store ((as const (Array (_ BitVec 64) Bool)) false) (h!22262 acc!919) true) (content!477 (t!30113 acc!919))))))

(assert (= (and d!118547 c!100788) b!994034))

(assert (= (and d!118547 (not c!100788)) b!994035))

(declare-fun m!921749 () Bool)

(assert (=> b!994035 m!921749))

(assert (=> b!994035 m!921743))

(assert (=> d!118501 d!118547))

(declare-fun d!118553 () Bool)

(assert (=> d!118553 (= (validKeyInArray!0 (select (arr!30263 a!4424) from!3778)) (and (not (= (select (arr!30263 a!4424) from!3778) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30263 a!4424) from!3778) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!993961 d!118553))

(declare-fun d!118557 () Bool)

(assert (=> d!118557 (= (validKeyInArray!0 (select (arr!30263 a!4424) (bvadd #b00000000000000000000000000000001 from!3778))) (and (not (= (select (arr!30263 a!4424) (bvadd #b00000000000000000000000000000001 from!3778)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30263 a!4424) (bvadd #b00000000000000000000000000000001 from!3778)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!993983 d!118557))

(declare-fun d!118559 () Bool)

(declare-fun res!664739 () Bool)

(declare-fun e!561001 () Bool)

(assert (=> d!118559 (=> res!664739 e!561001)))

(assert (=> d!118559 (= res!664739 (bvsge (bvadd #b00000000000000000000000000000001 from!3778 #b00000000000000000000000000000001) (size!30760 a!4424)))))

(assert (=> d!118559 (= (arrayNoDuplicates!0 a!4424 (bvadd #b00000000000000000000000000000001 from!3778 #b00000000000000000000000000000001) (ite c!100781 (Cons!21100 (select (arr!30263 a!4424) (bvadd #b00000000000000000000000000000001 from!3778)) acc!919) acc!919)) e!561001)))

(declare-fun c!100791 () Bool)

(declare-fun call!42164 () Bool)

(declare-fun bm!42161 () Bool)

(assert (=> bm!42161 (= call!42164 (arrayNoDuplicates!0 a!4424 (bvadd #b00000000000000000000000000000001 from!3778 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!100791 (Cons!21100 (select (arr!30263 a!4424) (bvadd #b00000000000000000000000000000001 from!3778 #b00000000000000000000000000000001)) (ite c!100781 (Cons!21100 (select (arr!30263 a!4424) (bvadd #b00000000000000000000000000000001 from!3778)) acc!919) acc!919)) (ite c!100781 (Cons!21100 (select (arr!30263 a!4424) (bvadd #b00000000000000000000000000000001 from!3778)) acc!919) acc!919))))))

(declare-fun b!994042 () Bool)

(declare-fun e!561003 () Bool)

(assert (=> b!994042 (= e!561001 e!561003)))

(declare-fun res!664738 () Bool)

(assert (=> b!994042 (=> (not res!664738) (not e!561003))))

(declare-fun e!561002 () Bool)

(assert (=> b!994042 (= res!664738 (not e!561002))))

(declare-fun res!664737 () Bool)

(assert (=> b!994042 (=> (not res!664737) (not e!561002))))

(assert (=> b!994042 (= res!664737 (validKeyInArray!0 (select (arr!30263 a!4424) (bvadd #b00000000000000000000000000000001 from!3778 #b00000000000000000000000000000001))))))

(declare-fun b!994043 () Bool)

(declare-fun e!561000 () Bool)

(assert (=> b!994043 (= e!561003 e!561000)))

(assert (=> b!994043 (= c!100791 (validKeyInArray!0 (select (arr!30263 a!4424) (bvadd #b00000000000000000000000000000001 from!3778 #b00000000000000000000000000000001))))))

(declare-fun b!994044 () Bool)

(assert (=> b!994044 (= e!561000 call!42164)))

(declare-fun b!994045 () Bool)

(assert (=> b!994045 (= e!561000 call!42164)))

(declare-fun b!994046 () Bool)

(assert (=> b!994046 (= e!561002 (contains!5861 (ite c!100781 (Cons!21100 (select (arr!30263 a!4424) (bvadd #b00000000000000000000000000000001 from!3778)) acc!919) acc!919) (select (arr!30263 a!4424) (bvadd #b00000000000000000000000000000001 from!3778 #b00000000000000000000000000000001))))))

(assert (= (and d!118559 (not res!664739)) b!994042))

(assert (= (and b!994042 res!664737) b!994046))

(assert (= (and b!994042 res!664738) b!994043))

(assert (= (and b!994043 c!100791) b!994044))

(assert (= (and b!994043 (not c!100791)) b!994045))

(assert (= (or b!994044 b!994045) bm!42161))

(declare-fun m!921759 () Bool)

(assert (=> bm!42161 m!921759))

(declare-fun m!921765 () Bool)

(assert (=> bm!42161 m!921765))

(assert (=> b!994042 m!921759))

(assert (=> b!994042 m!921759))

(declare-fun m!921767 () Bool)

(assert (=> b!994042 m!921767))

(assert (=> b!994043 m!921759))

(assert (=> b!994043 m!921759))

(assert (=> b!994043 m!921767))

(assert (=> b!994046 m!921759))

(assert (=> b!994046 m!921759))

(declare-fun m!921769 () Bool)

(assert (=> b!994046 m!921769))

(assert (=> bm!42154 d!118559))

(assert (=> d!118509 d!118547))

(declare-fun d!118565 () Bool)

(declare-fun lt!440641 () Bool)

(assert (=> d!118565 (= lt!440641 (select (content!477 acc!919) (select (arr!30263 a!4424) from!3778)))))

(declare-fun e!561012 () Bool)

(assert (=> d!118565 (= lt!440641 e!561012)))

(declare-fun res!664746 () Bool)

(assert (=> d!118565 (=> (not res!664746) (not e!561012))))

(assert (=> d!118565 (= res!664746 ((_ is Cons!21100) acc!919))))

(assert (=> d!118565 (= (contains!5861 acc!919 (select (arr!30263 a!4424) from!3778)) lt!440641)))

(declare-fun b!994056 () Bool)

(declare-fun e!561011 () Bool)

(assert (=> b!994056 (= e!561012 e!561011)))

(declare-fun res!664745 () Bool)

(assert (=> b!994056 (=> res!664745 e!561011)))

(assert (=> b!994056 (= res!664745 (= (h!22262 acc!919) (select (arr!30263 a!4424) from!3778)))))

(declare-fun b!994057 () Bool)

(assert (=> b!994057 (= e!561011 (contains!5861 (t!30113 acc!919) (select (arr!30263 a!4424) from!3778)))))

(assert (= (and d!118565 res!664746) b!994056))

(assert (= (and b!994056 (not res!664745)) b!994057))

(assert (=> d!118565 m!921647))

(assert (=> d!118565 m!921671))

(declare-fun m!921779 () Bool)

(assert (=> d!118565 m!921779))

(assert (=> b!994057 m!921671))

(declare-fun m!921781 () Bool)

(assert (=> b!994057 m!921781))

(assert (=> b!993964 d!118565))

(declare-fun d!118569 () Bool)

(declare-fun lt!440642 () Bool)

(assert (=> d!118569 (= lt!440642 (select (content!477 (t!30113 acc!919)) (h!22262 acc!919)))))

(declare-fun e!561014 () Bool)

(assert (=> d!118569 (= lt!440642 e!561014)))

(declare-fun res!664748 () Bool)

(assert (=> d!118569 (=> (not res!664748) (not e!561014))))

(assert (=> d!118569 (= res!664748 ((_ is Cons!21100) (t!30113 acc!919)))))

(assert (=> d!118569 (= (contains!5861 (t!30113 acc!919) (h!22262 acc!919)) lt!440642)))

(declare-fun b!994058 () Bool)

(declare-fun e!561013 () Bool)

(assert (=> b!994058 (= e!561014 e!561013)))

(declare-fun res!664747 () Bool)

(assert (=> b!994058 (=> res!664747 e!561013)))

(assert (=> b!994058 (= res!664747 (= (h!22262 (t!30113 acc!919)) (h!22262 acc!919)))))

(declare-fun b!994059 () Bool)

(assert (=> b!994059 (= e!561013 (contains!5861 (t!30113 (t!30113 acc!919)) (h!22262 acc!919)))))

(assert (= (and d!118569 res!664748) b!994058))

(assert (= (and b!994058 (not res!664747)) b!994059))

(assert (=> d!118569 m!921743))

(declare-fun m!921783 () Bool)

(assert (=> d!118569 m!921783))

(declare-fun m!921785 () Bool)

(assert (=> b!994059 m!921785))

(assert (=> b!994012 d!118569))

(assert (=> b!993984 d!118557))

(declare-fun d!118573 () Bool)

(declare-fun lt!440643 () Bool)

(assert (=> d!118573 (= lt!440643 (select (content!477 (t!30113 acc!919)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!561020 () Bool)

(assert (=> d!118573 (= lt!440643 e!561020)))

(declare-fun res!664753 () Bool)

(assert (=> d!118573 (=> (not res!664753) (not e!561020))))

(assert (=> d!118573 (= res!664753 ((_ is Cons!21100) (t!30113 acc!919)))))

(assert (=> d!118573 (= (contains!5861 (t!30113 acc!919) #b0000000000000000000000000000000000000000000000000000000000000000) lt!440643)))

(declare-fun b!994065 () Bool)

(declare-fun e!561019 () Bool)

(assert (=> b!994065 (= e!561020 e!561019)))

(declare-fun res!664752 () Bool)

(assert (=> b!994065 (=> res!664752 e!561019)))

(assert (=> b!994065 (= res!664752 (= (h!22262 (t!30113 acc!919)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!994066 () Bool)

(assert (=> b!994066 (= e!561019 (contains!5861 (t!30113 (t!30113 acc!919)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!118573 res!664753) b!994065))

(assert (= (and b!994065 (not res!664752)) b!994066))

(assert (=> d!118573 m!921743))

(declare-fun m!921795 () Bool)

(assert (=> d!118573 m!921795))

(declare-fun m!921797 () Bool)

(assert (=> b!994066 m!921797))

(assert (=> b!993933 d!118573))

(assert (=> b!993960 d!118553))

(declare-fun d!118577 () Bool)

(declare-fun res!664758 () Bool)

(declare-fun e!561024 () Bool)

(assert (=> d!118577 (=> res!664758 e!561024)))

(assert (=> d!118577 (= res!664758 (bvsge (bvadd from!3778 #b00000000000000000000000000000001) (size!30760 a!4424)))))

(assert (=> d!118577 (= (arrayNoDuplicates!0 a!4424 (bvadd from!3778 #b00000000000000000000000000000001) (ite c!100776 (Cons!21100 (select (arr!30263 a!4424) from!3778) acc!919) acc!919)) e!561024)))

(declare-fun call!42167 () Bool)

(declare-fun c!100795 () Bool)

(declare-fun bm!42164 () Bool)

(assert (=> bm!42164 (= call!42167 (arrayNoDuplicates!0 a!4424 (bvadd from!3778 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!100795 (Cons!21100 (select (arr!30263 a!4424) (bvadd from!3778 #b00000000000000000000000000000001)) (ite c!100776 (Cons!21100 (select (arr!30263 a!4424) from!3778) acc!919) acc!919)) (ite c!100776 (Cons!21100 (select (arr!30263 a!4424) from!3778) acc!919) acc!919))))))

(declare-fun b!994069 () Bool)

(declare-fun e!561026 () Bool)

(assert (=> b!994069 (= e!561024 e!561026)))

(declare-fun res!664757 () Bool)

(assert (=> b!994069 (=> (not res!664757) (not e!561026))))

(declare-fun e!561025 () Bool)

(assert (=> b!994069 (= res!664757 (not e!561025))))

(declare-fun res!664756 () Bool)

(assert (=> b!994069 (=> (not res!664756) (not e!561025))))

(assert (=> b!994069 (= res!664756 (validKeyInArray!0 (select (arr!30263 a!4424) (bvadd from!3778 #b00000000000000000000000000000001))))))

(declare-fun b!994070 () Bool)

(declare-fun e!561023 () Bool)

(assert (=> b!994070 (= e!561026 e!561023)))

(assert (=> b!994070 (= c!100795 (validKeyInArray!0 (select (arr!30263 a!4424) (bvadd from!3778 #b00000000000000000000000000000001))))))

(declare-fun b!994071 () Bool)

(assert (=> b!994071 (= e!561023 call!42167)))

(declare-fun b!994072 () Bool)

(assert (=> b!994072 (= e!561023 call!42167)))

(declare-fun b!994073 () Bool)

(assert (=> b!994073 (= e!561025 (contains!5861 (ite c!100776 (Cons!21100 (select (arr!30263 a!4424) from!3778) acc!919) acc!919) (select (arr!30263 a!4424) (bvadd from!3778 #b00000000000000000000000000000001))))))

(assert (= (and d!118577 (not res!664758)) b!994069))

(assert (= (and b!994069 res!664756) b!994073))

(assert (= (and b!994069 res!664757) b!994070))

(assert (= (and b!994070 c!100795) b!994071))

(assert (= (and b!994070 (not c!100795)) b!994072))

(assert (= (or b!994071 b!994072) bm!42164))

(declare-fun m!921807 () Bool)

(assert (=> bm!42164 m!921807))

(declare-fun m!921809 () Bool)

(assert (=> bm!42164 m!921809))

(assert (=> b!994069 m!921807))

(assert (=> b!994069 m!921807))

(declare-fun m!921811 () Bool)

(assert (=> b!994069 m!921811))

(assert (=> b!994070 m!921807))

(assert (=> b!994070 m!921807))

(assert (=> b!994070 m!921811))

(assert (=> b!994073 m!921807))

(assert (=> b!994073 m!921807))

(declare-fun m!921813 () Bool)

(assert (=> b!994073 m!921813))

(assert (=> bm!42151 d!118577))

(declare-fun d!118583 () Bool)

(declare-fun res!664764 () Bool)

(declare-fun e!561029 () Bool)

(assert (=> d!118583 (=> res!664764 e!561029)))

(assert (=> d!118583 (= res!664764 ((_ is Nil!21101) (t!30113 acc!919)))))

(assert (=> d!118583 (= (noDuplicate!1458 (t!30113 acc!919)) e!561029)))

(declare-fun b!994076 () Bool)

(declare-fun e!561030 () Bool)

(assert (=> b!994076 (= e!561029 e!561030)))

(declare-fun res!664765 () Bool)

(assert (=> b!994076 (=> (not res!664765) (not e!561030))))

(assert (=> b!994076 (= res!664765 (not (contains!5861 (t!30113 (t!30113 acc!919)) (h!22262 (t!30113 acc!919)))))))

(declare-fun b!994077 () Bool)

(assert (=> b!994077 (= e!561030 (noDuplicate!1458 (t!30113 (t!30113 acc!919))))))

(assert (= (and d!118583 (not res!664764)) b!994076))

(assert (= (and b!994076 res!664765) b!994077))

(declare-fun m!921819 () Bool)

(assert (=> b!994076 m!921819))

(declare-fun m!921821 () Bool)

(assert (=> b!994077 m!921821))

(assert (=> b!994013 d!118583))

(declare-fun d!118589 () Bool)

(declare-fun lt!440647 () Bool)

(assert (=> d!118589 (= lt!440647 (select (content!477 acc!919) (select (arr!30263 a!4424) (bvadd #b00000000000000000000000000000001 from!3778))))))

(declare-fun e!561036 () Bool)

(assert (=> d!118589 (= lt!440647 e!561036)))

(declare-fun res!664771 () Bool)

(assert (=> d!118589 (=> (not res!664771) (not e!561036))))

(assert (=> d!118589 (= res!664771 ((_ is Cons!21100) acc!919))))

(assert (=> d!118589 (= (contains!5861 acc!919 (select (arr!30263 a!4424) (bvadd #b00000000000000000000000000000001 from!3778))) lt!440647)))

(declare-fun b!994082 () Bool)

(declare-fun e!561035 () Bool)

(assert (=> b!994082 (= e!561036 e!561035)))

(declare-fun res!664770 () Bool)

(assert (=> b!994082 (=> res!664770 e!561035)))

(assert (=> b!994082 (= res!664770 (= (h!22262 acc!919) (select (arr!30263 a!4424) (bvadd #b00000000000000000000000000000001 from!3778))))))

(declare-fun b!994083 () Bool)

(assert (=> b!994083 (= e!561035 (contains!5861 (t!30113 acc!919) (select (arr!30263 a!4424) (bvadd #b00000000000000000000000000000001 from!3778))))))

(assert (= (and d!118589 res!664771) b!994082))

(assert (= (and b!994082 (not res!664770)) b!994083))

(assert (=> d!118589 m!921647))

(assert (=> d!118589 m!921679))

(declare-fun m!921827 () Bool)

(assert (=> d!118589 m!921827))

(assert (=> b!994083 m!921679))

(declare-fun m!921829 () Bool)

(assert (=> b!994083 m!921829))

(assert (=> b!993987 d!118589))

(check-sat (not b!994043) (not b!994083) (not bm!42161) (not b!994066) (not b!994073) (not d!118565) (not d!118543) (not d!118573) (not b!994057) (not b!994070) (not b!994029) (not b!994077) (not b!994042) (not d!118545) (not b!994069) (not bm!42164) (not b!994076) (not d!118569) (not b!994035) (not d!118589) (not b!994046) (not b!994059))
(check-sat)
