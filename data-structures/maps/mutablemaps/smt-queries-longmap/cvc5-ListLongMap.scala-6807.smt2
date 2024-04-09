; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85614 () Bool)

(assert start!85614)

(declare-fun b!993891 () Bool)

(declare-fun res!664619 () Bool)

(declare-fun e!560887 () Bool)

(assert (=> b!993891 (=> (not res!664619) (not e!560887))))

(declare-datatypes ((List!21103 0))(
  ( (Nil!21100) (Cons!21099 (h!22261 (_ BitVec 64)) (t!30112 List!21103)) )
))
(declare-fun acc!919 () List!21103)

(declare-fun noDuplicate!1457 (List!21103) Bool)

(assert (=> b!993891 (= res!664619 (noDuplicate!1457 acc!919))))

(declare-fun b!993892 () Bool)

(declare-fun res!664621 () Bool)

(assert (=> b!993892 (=> (not res!664621) (not e!560887))))

(declare-fun contains!5860 (List!21103 (_ BitVec 64)) Bool)

(assert (=> b!993892 (= res!664621 (not (contains!5860 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993893 () Bool)

(declare-fun res!664617 () Bool)

(assert (=> b!993893 (=> (not res!664617) (not e!560887))))

(declare-datatypes ((array!62848 0))(
  ( (array!62849 (arr!30262 (Array (_ BitVec 32) (_ BitVec 64))) (size!30759 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62848)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> b!993893 (= res!664617 (and (bvslt from!3778 size!36) (bvsge (bvadd #b00000000000000000000000000000001 from!3778) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3778) (size!30759 a!4424))))))

(declare-fun res!664620 () Bool)

(assert (=> start!85614 (=> (not res!664620) (not e!560887))))

(assert (=> start!85614 (= res!664620 (and (= (size!30759 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62849 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30759 a!4424))))))

(assert (=> start!85614 e!560887))

(declare-fun array_inv!23252 (array!62848) Bool)

(assert (=> start!85614 (array_inv!23252 a!4424)))

(assert (=> start!85614 true))

(declare-fun b!993894 () Bool)

(declare-fun arrayNoDuplicates!0 (array!62848 (_ BitVec 32) List!21103) Bool)

(assert (=> b!993894 (= e!560887 (not (arrayNoDuplicates!0 a!4424 from!3778 acc!919)))))

(assert (=> b!993894 (arrayNoDuplicates!0 a!4424 (bvadd #b00000000000000000000000000000001 from!3778) acc!919)))

(declare-datatypes ((Unit!32896 0))(
  ( (Unit!32897) )
))
(declare-fun lt!440610 () Unit!32896)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!62848 (_ BitVec 32) (_ BitVec 32) List!21103) Unit!32896)

(assert (=> b!993894 (= lt!440610 (lemmaArrayNoDuplicatesInAll0Array!0 a!4424 (bvadd #b00000000000000000000000000000001 from!3778) size!36 acc!919))))

(declare-fun b!993895 () Bool)

(declare-fun res!664618 () Bool)

(assert (=> b!993895 (=> (not res!664618) (not e!560887))))

(assert (=> b!993895 (= res!664618 (not (contains!5860 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!85614 res!664620) b!993892))

(assert (= (and b!993892 res!664621) b!993895))

(assert (= (and b!993895 res!664618) b!993891))

(assert (= (and b!993891 res!664619) b!993893))

(assert (= (and b!993893 res!664617) b!993894))

(declare-fun m!921605 () Bool)

(assert (=> b!993894 m!921605))

(declare-fun m!921607 () Bool)

(assert (=> b!993894 m!921607))

(declare-fun m!921609 () Bool)

(assert (=> b!993894 m!921609))

(declare-fun m!921611 () Bool)

(assert (=> b!993892 m!921611))

(declare-fun m!921613 () Bool)

(assert (=> start!85614 m!921613))

(declare-fun m!921615 () Bool)

(assert (=> b!993891 m!921615))

(declare-fun m!921617 () Bool)

(assert (=> b!993895 m!921617))

(push 1)

(assert (not b!993895))

(assert (not b!993892))

(assert (not b!993894))

(assert (not b!993891))

(assert (not start!85614))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!118503 () Bool)

(assert (=> d!118503 (= (array_inv!23252 a!4424) (bvsge (size!30759 a!4424) #b00000000000000000000000000000000))))

(assert (=> start!85614 d!118503))

(declare-fun d!118505 () Bool)

(declare-fun lt!440623 () Bool)

(declare-fun content!478 (List!21103) (Set (_ BitVec 64)))

(assert (=> d!118505 (= lt!440623 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!478 acc!919)))))

(declare-fun e!560913 () Bool)

(assert (=> d!118505 (= lt!440623 e!560913)))

(declare-fun res!664665 () Bool)

(assert (=> d!118505 (=> (not res!664665) (not e!560913))))

(assert (=> d!118505 (= res!664665 (is-Cons!21099 acc!919))))

(assert (=> d!118505 (= (contains!5860 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000) lt!440623)))

(declare-fun b!993938 () Bool)

(declare-fun e!560914 () Bool)

(assert (=> b!993938 (= e!560913 e!560914)))

(declare-fun res!664664 () Bool)

(assert (=> b!993938 (=> res!664664 e!560914)))

(assert (=> b!993938 (= res!664664 (= (h!22261 acc!919) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!993939 () Bool)

(assert (=> b!993939 (= e!560914 (contains!5860 (t!30112 acc!919) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!118505 res!664665) b!993938))

(assert (= (and b!993938 (not res!664664)) b!993939))

(declare-fun m!921657 () Bool)

(assert (=> d!118505 m!921657))

(declare-fun m!921659 () Bool)

(assert (=> d!118505 m!921659))

(declare-fun m!921661 () Bool)

(assert (=> b!993939 m!921661))

(assert (=> b!993892 d!118505))

(declare-fun d!118513 () Bool)

(declare-fun res!664670 () Bool)

(declare-fun e!560919 () Bool)

(assert (=> d!118513 (=> res!664670 e!560919)))

(assert (=> d!118513 (= res!664670 (is-Nil!21100 acc!919))))

(assert (=> d!118513 (= (noDuplicate!1457 acc!919) e!560919)))

(declare-fun b!993944 () Bool)

(declare-fun e!560920 () Bool)

(assert (=> b!993944 (= e!560919 e!560920)))

(declare-fun res!664671 () Bool)

(assert (=> b!993944 (=> (not res!664671) (not e!560920))))

(assert (=> b!993944 (= res!664671 (not (contains!5860 (t!30112 acc!919) (h!22261 acc!919))))))

(declare-fun b!993945 () Bool)

(assert (=> b!993945 (= e!560920 (noDuplicate!1457 (t!30112 acc!919)))))

(assert (= (and d!118513 (not res!664670)) b!993944))

(assert (= (and b!993944 res!664671) b!993945))

(declare-fun m!921663 () Bool)

(assert (=> b!993944 m!921663))

(declare-fun m!921665 () Bool)

(assert (=> b!993945 m!921665))

(assert (=> b!993891 d!118513))

(declare-fun d!118515 () Bool)

(declare-fun lt!440624 () Bool)

(assert (=> d!118515 (= lt!440624 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!478 acc!919)))))

(declare-fun e!560921 () Bool)

(assert (=> d!118515 (= lt!440624 e!560921)))

(declare-fun res!664673 () Bool)

(assert (=> d!118515 (=> (not res!664673) (not e!560921))))

(assert (=> d!118515 (= res!664673 (is-Cons!21099 acc!919))))

(assert (=> d!118515 (= (contains!5860 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000) lt!440624)))

(declare-fun b!993946 () Bool)

(declare-fun e!560922 () Bool)

(assert (=> b!993946 (= e!560921 e!560922)))

(declare-fun res!664672 () Bool)

(assert (=> b!993946 (=> res!664672 e!560922)))

(assert (=> b!993946 (= res!664672 (= (h!22261 acc!919) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!993947 () Bool)

(assert (=> b!993947 (= e!560922 (contains!5860 (t!30112 acc!919) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!118515 res!664673) b!993946))

(assert (= (and b!993946 (not res!664672)) b!993947))

(assert (=> d!118515 m!921657))

(declare-fun m!921667 () Bool)

(assert (=> d!118515 m!921667))

(declare-fun m!921669 () Bool)

(assert (=> b!993947 m!921669))

(assert (=> b!993895 d!118515))

(declare-fun e!560955 () Bool)

(declare-fun b!993988 () Bool)

(assert (=> b!993988 (= e!560955 (contains!5860 acc!919 (select (arr!30262 a!4424) from!3778)))))

(declare-fun b!993989 () Bool)

(declare-fun e!560958 () Bool)

(declare-fun call!42160 () Bool)

(assert (=> b!993989 (= e!560958 call!42160)))

(declare-fun b!993990 () Bool)

(declare-fun e!560956 () Bool)

(declare-fun e!560957 () Bool)

(assert (=> b!993990 (= e!560956 e!560957)))

(declare-fun res!664699 () Bool)

(assert (=> b!993990 (=> (not res!664699) (not e!560957))))

(assert (=> b!993990 (= res!664699 (not e!560955))))

(declare-fun res!664700 () Bool)

(assert (=> b!993990 (=> (not res!664700) (not e!560955))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!993990 (= res!664700 (validKeyInArray!0 (select (arr!30262 a!4424) from!3778)))))

(declare-fun bm!42157 () Bool)

(declare-fun c!100782 () Bool)

(assert (=> bm!42157 (= call!42160 (arrayNoDuplicates!0 a!4424 (bvadd from!3778 #b00000000000000000000000000000001) (ite c!100782 (Cons!21099 (select (arr!30262 a!4424) from!3778) acc!919) acc!919)))))

(declare-fun d!118519 () Bool)

(declare-fun res!664698 () Bool)

(assert (=> d!118519 (=> res!664698 e!560956)))

(assert (=> d!118519 (= res!664698 (bvsge from!3778 (size!30759 a!4424)))))

(assert (=> d!118519 (= (arrayNoDuplicates!0 a!4424 from!3778 acc!919) e!560956)))

(declare-fun b!993991 () Bool)

(assert (=> b!993991 (= e!560957 e!560958)))

(assert (=> b!993991 (= c!100782 (validKeyInArray!0 (select (arr!30262 a!4424) from!3778)))))

(declare-fun b!993992 () Bool)

(assert (=> b!993992 (= e!560958 call!42160)))

(assert (= (and d!118519 (not res!664698)) b!993990))

(assert (= (and b!993990 res!664700) b!993988))

(assert (= (and b!993990 res!664699) b!993991))

(assert (= (and b!993991 c!100782) b!993992))

(assert (= (and b!993991 (not c!100782)) b!993989))

(assert (= (or b!993992 b!993989) bm!42157))

(declare-fun m!921687 () Bool)

(assert (=> b!993988 m!921687))

(assert (=> b!993988 m!921687))

(declare-fun m!921689 () Bool)

(assert (=> b!993988 m!921689))

(assert (=> b!993990 m!921687))

(assert (=> b!993990 m!921687))

(declare-fun m!921691 () Bool)

(assert (=> b!993990 m!921691))

(assert (=> bm!42157 m!921687))

(declare-fun m!921693 () Bool)

(assert (=> bm!42157 m!921693))

(assert (=> b!993991 m!921687))

(assert (=> b!993991 m!921687))

(assert (=> b!993991 m!921691))

(assert (=> b!993894 d!118519))

(declare-fun b!993993 () Bool)

(declare-fun e!560959 () Bool)

(assert (=> b!993993 (= e!560959 (contains!5860 acc!919 (select (arr!30262 a!4424) (bvadd #b00000000000000000000000000000001 from!3778))))))

(declare-fun b!993994 () Bool)

(declare-fun e!560962 () Bool)

(declare-fun call!42161 () Bool)

(assert (=> b!993994 (= e!560962 call!42161)))

(declare-fun b!993995 () Bool)

(declare-fun e!560960 () Bool)

(declare-fun e!560961 () Bool)

(assert (=> b!993995 (= e!560960 e!560961)))

(declare-fun res!664702 () Bool)

(assert (=> b!993995 (=> (not res!664702) (not e!560961))))

(assert (=> b!993995 (= res!664702 (not e!560959))))

(declare-fun res!664703 () Bool)

(assert (=> b!993995 (=> (not res!664703) (not e!560959))))

(assert (=> b!993995 (= res!664703 (validKeyInArray!0 (select (arr!30262 a!4424) (bvadd #b00000000000000000000000000000001 from!3778))))))

(declare-fun bm!42158 () Bool)

(declare-fun c!100783 () Bool)

(assert (=> bm!42158 (= call!42161 (arrayNoDuplicates!0 a!4424 (bvadd #b00000000000000000000000000000001 from!3778 #b00000000000000000000000000000001) (ite c!100783 (Cons!21099 (select (arr!30262 a!4424) (bvadd #b00000000000000000000000000000001 from!3778)) acc!919) acc!919)))))

(declare-fun d!118525 () Bool)

(declare-fun res!664701 () Bool)

(assert (=> d!118525 (=> res!664701 e!560960)))

(assert (=> d!118525 (= res!664701 (bvsge (bvadd #b00000000000000000000000000000001 from!3778) (size!30759 a!4424)))))

(assert (=> d!118525 (= (arrayNoDuplicates!0 a!4424 (bvadd #b00000000000000000000000000000001 from!3778) acc!919) e!560960)))

(declare-fun b!993996 () Bool)

(assert (=> b!993996 (= e!560961 e!560962)))

(assert (=> b!993996 (= c!100783 (validKeyInArray!0 (select (arr!30262 a!4424) (bvadd #b00000000000000000000000000000001 from!3778))))))

(declare-fun b!993997 () Bool)

(assert (=> b!993997 (= e!560962 call!42161)))

(assert (= (and d!118525 (not res!664701)) b!993995))

(assert (= (and b!993995 res!664703) b!993993))

(assert (= (and b!993995 res!664702) b!993996))

(assert (= (and b!993996 c!100783) b!993997))

(assert (= (and b!993996 (not c!100783)) b!993994))

(assert (= (or b!993997 b!993994) bm!42158))

(declare-fun m!921697 () Bool)

(assert (=> b!993993 m!921697))

(assert (=> b!993993 m!921697))

(declare-fun m!921699 () Bool)

(assert (=> b!993993 m!921699))

(assert (=> b!993995 m!921697))

(assert (=> b!993995 m!921697))

(declare-fun m!921701 () Bool)

(assert (=> b!993995 m!921701))

(assert (=> bm!42158 m!921697))

(declare-fun m!921703 () Bool)

(assert (=> bm!42158 m!921703))

(assert (=> b!993996 m!921697))

(assert (=> b!993996 m!921697))

(assert (=> b!993996 m!921701))

(assert (=> b!993894 d!118525))

(declare-fun d!118529 () Bool)

(assert (=> d!118529 (arrayNoDuplicates!0 a!4424 (bvadd #b00000000000000000000000000000001 from!3778) acc!919)))

(declare-fun lt!440630 () Unit!32896)

(declare-fun choose!111 (array!62848 (_ BitVec 32) (_ BitVec 32) List!21103) Unit!32896)

(assert (=> d!118529 (= lt!440630 (choose!111 a!4424 (bvadd #b00000000000000000000000000000001 from!3778) size!36 acc!919))))

(assert (=> d!118529 (= (size!30759 a!4424) size!36)))

(assert (=> d!118529 (= (lemmaArrayNoDuplicatesInAll0Array!0 a!4424 (bvadd #b00000000000000000000000000000001 from!3778) size!36 acc!919) lt!440630)))

(declare-fun bs!28335 () Bool)

(assert (= bs!28335 d!118529))

(assert (=> bs!28335 m!921607))

(declare-fun m!921725 () Bool)

(assert (=> bs!28335 m!921725))

(assert (=> b!993894 d!118529))

(push 1)

(assert (not b!993991))

(assert (not b!993993))

(assert (not b!993995))

(assert (not bm!42157))

(assert (not b!993939))

(assert (not b!993947))

(assert (not b!993996))

(assert (not b!993944))

(assert (not b!993988))

(assert (not d!118505))

(assert (not d!118515))

(assert (not bm!42158))

(assert (not b!993990))

(assert (not b!993945))

(assert (not d!118529))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!118549 () Bool)

(assert (=> d!118549 (= (validKeyInArray!0 (select (arr!30262 a!4424) from!3778)) (and (not (= (select (arr!30262 a!4424) from!3778) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30262 a!4424) from!3778) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!993990 d!118549))

(declare-fun lt!440639 () Bool)

(declare-fun d!118551 () Bool)

(assert (=> d!118551 (= lt!440639 (set.member (select (arr!30262 a!4424) (bvadd #b00000000000000000000000000000001 from!3778)) (content!478 acc!919)))))

(declare-fun e!560996 () Bool)

(assert (=> d!118551 (= lt!440639 e!560996)))

(declare-fun res!664736 () Bool)

(assert (=> d!118551 (=> (not res!664736) (not e!560996))))

(assert (=> d!118551 (= res!664736 (is-Cons!21099 acc!919))))

(assert (=> d!118551 (= (contains!5860 acc!919 (select (arr!30262 a!4424) (bvadd #b00000000000000000000000000000001 from!3778))) lt!440639)))

(declare-fun b!994036 () Bool)

(declare-fun e!560997 () Bool)

(assert (=> b!994036 (= e!560996 e!560997)))

(declare-fun res!664735 () Bool)

(assert (=> b!994036 (=> res!664735 e!560997)))

(assert (=> b!994036 (= res!664735 (= (h!22261 acc!919) (select (arr!30262 a!4424) (bvadd #b00000000000000000000000000000001 from!3778))))))

(declare-fun b!994037 () Bool)

(assert (=> b!994037 (= e!560997 (contains!5860 (t!30112 acc!919) (select (arr!30262 a!4424) (bvadd #b00000000000000000000000000000001 from!3778))))))

(assert (= (and d!118551 res!664736) b!994036))

(assert (= (and b!994036 (not res!664735)) b!994037))

(assert (=> d!118551 m!921657))

(assert (=> d!118551 m!921697))

(declare-fun m!921751 () Bool)

(assert (=> d!118551 m!921751))

(assert (=> b!994037 m!921697))

(declare-fun m!921753 () Bool)

(assert (=> b!994037 m!921753))

(assert (=> b!993993 d!118551))

(declare-fun d!118555 () Bool)

(declare-fun c!100792 () Bool)

(assert (=> d!118555 (= c!100792 (is-Nil!21100 acc!919))))

(declare-fun e!561004 () (Set (_ BitVec 64)))

(assert (=> d!118555 (= (content!478 acc!919) e!561004)))

(declare-fun b!994047 () Bool)

(assert (=> b!994047 (= e!561004 (as set.empty (Set (_ BitVec 64))))))

(declare-fun b!994048 () Bool)

(assert (=> b!994048 (= e!561004 (set.union (set.insert (h!22261 acc!919) (as set.empty (Set (_ BitVec 64)))) (content!478 (t!30112 acc!919))))))

(assert (= (and d!118555 c!100792) b!994047))

(assert (= (and d!118555 (not c!100792)) b!994048))

(declare-fun m!921755 () Bool)

(assert (=> b!994048 m!921755))

(declare-fun m!921757 () Bool)

(assert (=> b!994048 m!921757))

(assert (=> d!118515 d!118555))

(declare-fun lt!440640 () Bool)

(declare-fun d!118561 () Bool)

(assert (=> d!118561 (= lt!440640 (set.member (select (arr!30262 a!4424) from!3778) (content!478 acc!919)))))

(declare-fun e!561005 () Bool)

(assert (=> d!118561 (= lt!440640 e!561005)))

(declare-fun res!664741 () Bool)

(assert (=> d!118561 (=> (not res!664741) (not e!561005))))

(assert (=> d!118561 (= res!664741 (is-Cons!21099 acc!919))))

(assert (=> d!118561 (= (contains!5860 acc!919 (select (arr!30262 a!4424) from!3778)) lt!440640)))

(declare-fun b!994049 () Bool)

(declare-fun e!561006 () Bool)

(assert (=> b!994049 (= e!561005 e!561006)))

(declare-fun res!664740 () Bool)

(assert (=> b!994049 (=> res!664740 e!561006)))

(assert (=> b!994049 (= res!664740 (= (h!22261 acc!919) (select (arr!30262 a!4424) from!3778)))))

(declare-fun b!994050 () Bool)

(assert (=> b!994050 (= e!561006 (contains!5860 (t!30112 acc!919) (select (arr!30262 a!4424) from!3778)))))

(assert (= (and d!118561 res!664741) b!994049))

(assert (= (and b!994049 (not res!664740)) b!994050))

(assert (=> d!118561 m!921657))

(assert (=> d!118561 m!921687))

(declare-fun m!921761 () Bool)

(assert (=> d!118561 m!921761))

(assert (=> b!994050 m!921687))

(declare-fun m!921763 () Bool)

(assert (=> b!994050 m!921763))

(assert (=> b!993988 d!118561))

(assert (=> d!118505 d!118555))

(declare-fun b!994051 () Bool)

(declare-fun e!561007 () Bool)

(assert (=> b!994051 (= e!561007 (contains!5860 (ite c!100783 (Cons!21099 (select (arr!30262 a!4424) (bvadd #b00000000000000000000000000000001 from!3778)) acc!919) acc!919) (select (arr!30262 a!4424) (bvadd #b00000000000000000000000000000001 from!3778 #b00000000000000000000000000000001))))))

(declare-fun b!994052 () Bool)

(declare-fun e!561010 () Bool)

(declare-fun call!42165 () Bool)

(assert (=> b!994052 (= e!561010 call!42165)))

(declare-fun b!994053 () Bool)

(declare-fun e!561008 () Bool)

(declare-fun e!561009 () Bool)

(assert (=> b!994053 (= e!561008 e!561009)))

(declare-fun res!664743 () Bool)

(assert (=> b!994053 (=> (not res!664743) (not e!561009))))

(assert (=> b!994053 (= res!664743 (not e!561007))))

(declare-fun res!664744 () Bool)

(assert (=> b!994053 (=> (not res!664744) (not e!561007))))

(assert (=> b!994053 (= res!664744 (validKeyInArray!0 (select (arr!30262 a!4424) (bvadd #b00000000000000000000000000000001 from!3778 #b00000000000000000000000000000001))))))

(declare-fun c!100793 () Bool)

(declare-fun bm!42162 () Bool)

(assert (=> bm!42162 (= call!42165 (arrayNoDuplicates!0 a!4424 (bvadd #b00000000000000000000000000000001 from!3778 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!100793 (Cons!21099 (select (arr!30262 a!4424) (bvadd #b00000000000000000000000000000001 from!3778 #b00000000000000000000000000000001)) (ite c!100783 (Cons!21099 (select (arr!30262 a!4424) (bvadd #b00000000000000000000000000000001 from!3778)) acc!919) acc!919)) (ite c!100783 (Cons!21099 (select (arr!30262 a!4424) (bvadd #b00000000000000000000000000000001 from!3778)) acc!919) acc!919))))))

(declare-fun d!118563 () Bool)

(declare-fun res!664742 () Bool)

(assert (=> d!118563 (=> res!664742 e!561008)))

(assert (=> d!118563 (= res!664742 (bvsge (bvadd #b00000000000000000000000000000001 from!3778 #b00000000000000000000000000000001) (size!30759 a!4424)))))

(assert (=> d!118563 (= (arrayNoDuplicates!0 a!4424 (bvadd #b00000000000000000000000000000001 from!3778 #b00000000000000000000000000000001) (ite c!100783 (Cons!21099 (select (arr!30262 a!4424) (bvadd #b00000000000000000000000000000001 from!3778)) acc!919) acc!919)) e!561008)))

(declare-fun b!994054 () Bool)

(assert (=> b!994054 (= e!561009 e!561010)))

(assert (=> b!994054 (= c!100793 (validKeyInArray!0 (select (arr!30262 a!4424) (bvadd #b00000000000000000000000000000001 from!3778 #b00000000000000000000000000000001))))))

(declare-fun b!994055 () Bool)

(assert (=> b!994055 (= e!561010 call!42165)))

(assert (= (and d!118563 (not res!664742)) b!994053))

(assert (= (and b!994053 res!664744) b!994051))

(assert (= (and b!994053 res!664743) b!994054))

(assert (= (and b!994054 c!100793) b!994055))

(assert (= (and b!994054 (not c!100793)) b!994052))

(assert (= (or b!994055 b!994052) bm!42162))

(declare-fun m!921771 () Bool)

(assert (=> b!994051 m!921771))

(assert (=> b!994051 m!921771))

(declare-fun m!921773 () Bool)

(assert (=> b!994051 m!921773))

(assert (=> b!994053 m!921771))

(assert (=> b!994053 m!921771))

(declare-fun m!921775 () Bool)

(assert (=> b!994053 m!921775))

(assert (=> bm!42162 m!921771))

(declare-fun m!921777 () Bool)

(assert (=> bm!42162 m!921777))

(assert (=> b!994054 m!921771))

(assert (=> b!994054 m!921771))

(assert (=> b!994054 m!921775))

(assert (=> bm!42158 d!118563))

(assert (=> b!993991 d!118549))

(declare-fun d!118567 () Bool)

(assert (=> d!118567 (= (validKeyInArray!0 (select (arr!30262 a!4424) (bvadd #b00000000000000000000000000000001 from!3778))) (and (not (= (select (arr!30262 a!4424) (bvadd #b00000000000000000000000000000001 from!3778)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30262 a!4424) (bvadd #b00000000000000000000000000000001 from!3778)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!993995 d!118567))

(declare-fun b!994060 () Bool)

(declare-fun e!561015 () Bool)

(assert (=> b!994060 (= e!561015 (contains!5860 (ite c!100782 (Cons!21099 (select (arr!30262 a!4424) from!3778) acc!919) acc!919) (select (arr!30262 a!4424) (bvadd from!3778 #b00000000000000000000000000000001))))))

(declare-fun b!994061 () Bool)

(declare-fun e!561018 () Bool)

(declare-fun call!42166 () Bool)

(assert (=> b!994061 (= e!561018 call!42166)))

(declare-fun b!994062 () Bool)

(declare-fun e!561016 () Bool)

(declare-fun e!561017 () Bool)

(assert (=> b!994062 (= e!561016 e!561017)))

(declare-fun res!664750 () Bool)

(assert (=> b!994062 (=> (not res!664750) (not e!561017))))

(assert (=> b!994062 (= res!664750 (not e!561015))))

(declare-fun res!664751 () Bool)

(assert (=> b!994062 (=> (not res!664751) (not e!561015))))

(assert (=> b!994062 (= res!664751 (validKeyInArray!0 (select (arr!30262 a!4424) (bvadd from!3778 #b00000000000000000000000000000001))))))

(declare-fun c!100794 () Bool)

(declare-fun bm!42163 () Bool)

(assert (=> bm!42163 (= call!42166 (arrayNoDuplicates!0 a!4424 (bvadd from!3778 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!100794 (Cons!21099 (select (arr!30262 a!4424) (bvadd from!3778 #b00000000000000000000000000000001)) (ite c!100782 (Cons!21099 (select (arr!30262 a!4424) from!3778) acc!919) acc!919)) (ite c!100782 (Cons!21099 (select (arr!30262 a!4424) from!3778) acc!919) acc!919))))))

(declare-fun d!118571 () Bool)

(declare-fun res!664749 () Bool)

(assert (=> d!118571 (=> res!664749 e!561016)))

(assert (=> d!118571 (= res!664749 (bvsge (bvadd from!3778 #b00000000000000000000000000000001) (size!30759 a!4424)))))

(assert (=> d!118571 (= (arrayNoDuplicates!0 a!4424 (bvadd from!3778 #b00000000000000000000000000000001) (ite c!100782 (Cons!21099 (select (arr!30262 a!4424) from!3778) acc!919) acc!919)) e!561016)))

(declare-fun b!994063 () Bool)

(assert (=> b!994063 (= e!561017 e!561018)))

(assert (=> b!994063 (= c!100794 (validKeyInArray!0 (select (arr!30262 a!4424) (bvadd from!3778 #b00000000000000000000000000000001))))))

(declare-fun b!994064 () Bool)

(assert (=> b!994064 (= e!561018 call!42166)))

(assert (= (and d!118571 (not res!664749)) b!994062))

(assert (= (and b!994062 res!664751) b!994060))

(assert (= (and b!994062 res!664750) b!994063))

(assert (= (and b!994063 c!100794) b!994064))

(assert (= (and b!994063 (not c!100794)) b!994061))

(assert (= (or b!994064 b!994061) bm!42163))

(declare-fun m!921787 () Bool)

(assert (=> b!994060 m!921787))

(assert (=> b!994060 m!921787))

(declare-fun m!921789 () Bool)

(assert (=> b!994060 m!921789))

(assert (=> b!994062 m!921787))

(assert (=> b!994062 m!921787))

(declare-fun m!921791 () Bool)

(assert (=> b!994062 m!921791))

(assert (=> bm!42163 m!921787))

(declare-fun m!921793 () Bool)

(assert (=> bm!42163 m!921793))

(assert (=> b!994063 m!921787))

(assert (=> b!994063 m!921787))

(assert (=> b!994063 m!921791))

(assert (=> bm!42157 d!118571))

(declare-fun d!118575 () Bool)

(declare-fun res!664754 () Bool)

(declare-fun e!561021 () Bool)

(assert (=> d!118575 (=> res!664754 e!561021)))

(assert (=> d!118575 (= res!664754 (is-Nil!21100 (t!30112 acc!919)))))

(assert (=> d!118575 (= (noDuplicate!1457 (t!30112 acc!919)) e!561021)))

(declare-fun b!994067 () Bool)

(declare-fun e!561022 () Bool)

(assert (=> b!994067 (= e!561021 e!561022)))

(declare-fun res!664755 () Bool)

(assert (=> b!994067 (=> (not res!664755) (not e!561022))))

(assert (=> b!994067 (= res!664755 (not (contains!5860 (t!30112 (t!30112 acc!919)) (h!22261 (t!30112 acc!919)))))))

(declare-fun b!994068 () Bool)

(assert (=> b!994068 (= e!561022 (noDuplicate!1457 (t!30112 (t!30112 acc!919))))))

(assert (= (and d!118575 (not res!664754)) b!994067))

(assert (= (and b!994067 res!664755) b!994068))

(declare-fun m!921799 () Bool)

(assert (=> b!994067 m!921799))

(declare-fun m!921801 () Bool)

(assert (=> b!994068 m!921801))

(assert (=> b!993945 d!118575))

(assert (=> b!993996 d!118567))

(declare-fun d!118579 () Bool)

(declare-fun lt!440644 () Bool)

(assert (=> d!118579 (= lt!440644 (set.member (h!22261 acc!919) (content!478 (t!30112 acc!919))))))

(declare-fun e!561027 () Bool)

(assert (=> d!118579 (= lt!440644 e!561027)))

(declare-fun res!664760 () Bool)

(assert (=> d!118579 (=> (not res!664760) (not e!561027))))

(assert (=> d!118579 (= res!664760 (is-Cons!21099 (t!30112 acc!919)))))

(assert (=> d!118579 (= (contains!5860 (t!30112 acc!919) (h!22261 acc!919)) lt!440644)))

(declare-fun b!994074 () Bool)

(declare-fun e!561028 () Bool)

(assert (=> b!994074 (= e!561027 e!561028)))

(declare-fun res!664759 () Bool)

(assert (=> b!994074 (=> res!664759 e!561028)))

(assert (=> b!994074 (= res!664759 (= (h!22261 (t!30112 acc!919)) (h!22261 acc!919)))))

(declare-fun b!994075 () Bool)

(assert (=> b!994075 (= e!561028 (contains!5860 (t!30112 (t!30112 acc!919)) (h!22261 acc!919)))))

(assert (= (and d!118579 res!664760) b!994074))

(assert (= (and b!994074 (not res!664759)) b!994075))

(assert (=> d!118579 m!921757))

(declare-fun m!921803 () Bool)

(assert (=> d!118579 m!921803))

(declare-fun m!921805 () Bool)

(assert (=> b!994075 m!921805))

(assert (=> b!993944 d!118579))

(assert (=> d!118529 d!118525))

(declare-fun d!118581 () Bool)

(assert (=> d!118581 (arrayNoDuplicates!0 a!4424 (bvadd #b00000000000000000000000000000001 from!3778) acc!919)))

(assert (=> d!118581 true))

(declare-fun res!664763 () Unit!32896)

(assert (=> d!118581 (= (choose!111 a!4424 (bvadd #b00000000000000000000000000000001 from!3778) size!36 acc!919) res!664763)))

(declare-fun bs!28338 () Bool)

(assert (= bs!28338 d!118581))

(assert (=> bs!28338 m!921607))

(assert (=> d!118529 d!118581))

(declare-fun d!118585 () Bool)

(declare-fun lt!440645 () Bool)

(assert (=> d!118585 (= lt!440645 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!478 (t!30112 acc!919))))))

(declare-fun e!561031 () Bool)

(assert (=> d!118585 (= lt!440645 e!561031)))

(declare-fun res!664767 () Bool)

(assert (=> d!118585 (=> (not res!664767) (not e!561031))))

(assert (=> d!118585 (= res!664767 (is-Cons!21099 (t!30112 acc!919)))))

(assert (=> d!118585 (= (contains!5860 (t!30112 acc!919) #b0000000000000000000000000000000000000000000000000000000000000000) lt!440645)))

(declare-fun b!994078 () Bool)

(declare-fun e!561032 () Bool)

(assert (=> b!994078 (= e!561031 e!561032)))

(declare-fun res!664766 () Bool)

(assert (=> b!994078 (=> res!664766 e!561032)))

(assert (=> b!994078 (= res!664766 (= (h!22261 (t!30112 acc!919)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!994079 () Bool)

(assert (=> b!994079 (= e!561032 (contains!5860 (t!30112 (t!30112 acc!919)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!118585 res!664767) b!994078))

(assert (= (and b!994078 (not res!664766)) b!994079))

(assert (=> d!118585 m!921757))

(declare-fun m!921815 () Bool)

(assert (=> d!118585 m!921815))

(declare-fun m!921817 () Bool)

(assert (=> b!994079 m!921817))

(assert (=> b!993939 d!118585))

(declare-fun d!118587 () Bool)

(declare-fun lt!440646 () Bool)

(assert (=> d!118587 (= lt!440646 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!478 (t!30112 acc!919))))))

(declare-fun e!561033 () Bool)

(assert (=> d!118587 (= lt!440646 e!561033)))

(declare-fun res!664769 () Bool)

(assert (=> d!118587 (=> (not res!664769) (not e!561033))))

(assert (=> d!118587 (= res!664769 (is-Cons!21099 (t!30112 acc!919)))))

(assert (=> d!118587 (= (contains!5860 (t!30112 acc!919) #b1000000000000000000000000000000000000000000000000000000000000000) lt!440646)))

(declare-fun b!994080 () Bool)

(declare-fun e!561034 () Bool)

(assert (=> b!994080 (= e!561033 e!561034)))

(declare-fun res!664768 () Bool)

(assert (=> b!994080 (=> res!664768 e!561034)))

(assert (=> b!994080 (= res!664768 (= (h!22261 (t!30112 acc!919)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!994081 () Bool)

(assert (=> b!994081 (= e!561034 (contains!5860 (t!30112 (t!30112 acc!919)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!118587 res!664769) b!994080))

(assert (= (and b!994080 (not res!664768)) b!994081))

(assert (=> d!118587 m!921757))

(declare-fun m!921823 () Bool)

(assert (=> d!118587 m!921823))

(declare-fun m!921825 () Bool)

(assert (=> b!994081 m!921825))

(assert (=> b!993947 d!118587))

(push 1)

