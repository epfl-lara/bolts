; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85618 () Bool)

(assert start!85618)

(declare-fun res!664650 () Bool)

(declare-fun e!560900 () Bool)

(assert (=> start!85618 (=> (not res!664650) (not e!560900))))

(declare-datatypes ((array!62852 0))(
  ( (array!62853 (arr!30264 (Array (_ BitVec 32) (_ BitVec 64))) (size!30761 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62852)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85618 (= res!664650 (and (= (size!30761 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62853 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30761 a!4424))))))

(assert (=> start!85618 e!560900))

(declare-fun array_inv!23254 (array!62852) Bool)

(assert (=> start!85618 (array_inv!23254 a!4424)))

(assert (=> start!85618 true))

(declare-fun b!993921 () Bool)

(declare-fun res!664651 () Bool)

(assert (=> b!993921 (=> (not res!664651) (not e!560900))))

(assert (=> b!993921 (= res!664651 (and (bvslt from!3778 size!36) (bvsge (bvadd #b00000000000000000000000000000001 from!3778) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3778) (size!30761 a!4424))))))

(declare-fun b!993922 () Bool)

(declare-fun res!664648 () Bool)

(assert (=> b!993922 (=> (not res!664648) (not e!560900))))

(declare-datatypes ((List!21105 0))(
  ( (Nil!21102) (Cons!21101 (h!22263 (_ BitVec 64)) (t!30114 List!21105)) )
))
(declare-fun acc!919 () List!21105)

(declare-fun noDuplicate!1459 (List!21105) Bool)

(assert (=> b!993922 (= res!664648 (noDuplicate!1459 acc!919))))

(declare-fun b!993923 () Bool)

(declare-fun res!664647 () Bool)

(assert (=> b!993923 (=> (not res!664647) (not e!560900))))

(declare-fun contains!5862 (List!21105 (_ BitVec 64)) Bool)

(assert (=> b!993923 (= res!664647 (not (contains!5862 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993924 () Bool)

(declare-fun arrayNoDuplicates!0 (array!62852 (_ BitVec 32) List!21105) Bool)

(assert (=> b!993924 (= e!560900 (not (arrayNoDuplicates!0 a!4424 from!3778 acc!919)))))

(assert (=> b!993924 (arrayNoDuplicates!0 a!4424 (bvadd #b00000000000000000000000000000001 from!3778) acc!919)))

(declare-datatypes ((Unit!32900 0))(
  ( (Unit!32901) )
))
(declare-fun lt!440616 () Unit!32900)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!62852 (_ BitVec 32) (_ BitVec 32) List!21105) Unit!32900)

(assert (=> b!993924 (= lt!440616 (lemmaArrayNoDuplicatesInAll0Array!0 a!4424 (bvadd #b00000000000000000000000000000001 from!3778) size!36 acc!919))))

(declare-fun b!993925 () Bool)

(declare-fun res!664649 () Bool)

(assert (=> b!993925 (=> (not res!664649) (not e!560900))))

(assert (=> b!993925 (= res!664649 (not (contains!5862 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!85618 res!664650) b!993925))

(assert (= (and b!993925 res!664649) b!993923))

(assert (= (and b!993923 res!664647) b!993922))

(assert (= (and b!993922 res!664648) b!993921))

(assert (= (and b!993921 res!664651) b!993924))

(declare-fun m!921633 () Bool)

(assert (=> b!993924 m!921633))

(declare-fun m!921635 () Bool)

(assert (=> b!993924 m!921635))

(declare-fun m!921637 () Bool)

(assert (=> b!993924 m!921637))

(declare-fun m!921639 () Bool)

(assert (=> b!993922 m!921639))

(declare-fun m!921641 () Bool)

(assert (=> b!993925 m!921641))

(declare-fun m!921643 () Bool)

(assert (=> b!993923 m!921643))

(declare-fun m!921645 () Bool)

(assert (=> start!85618 m!921645))

(push 1)

(assert (not b!993922))

(assert (not b!993925))

(assert (not b!993923))

(assert (not b!993924))

(assert (not start!85618))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun e!560963 () Bool)

(declare-fun b!993998 () Bool)

(assert (=> b!993998 (= e!560963 (contains!5862 acc!919 (select (arr!30264 a!4424) from!3778)))))

(declare-fun b!993999 () Bool)

(declare-fun e!560964 () Bool)

(declare-fun e!560966 () Bool)

(assert (=> b!993999 (= e!560964 e!560966)))

(declare-fun res!664704 () Bool)

(assert (=> b!993999 (=> (not res!664704) (not e!560966))))

(assert (=> b!993999 (= res!664704 (not e!560963))))

(declare-fun res!664706 () Bool)

(assert (=> b!993999 (=> (not res!664706) (not e!560963))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!993999 (= res!664706 (validKeyInArray!0 (select (arr!30264 a!4424) from!3778)))))

(declare-fun c!100784 () Bool)

(declare-fun call!42162 () Bool)

(declare-fun bm!42159 () Bool)

(assert (=> bm!42159 (= call!42162 (arrayNoDuplicates!0 a!4424 (bvadd from!3778 #b00000000000000000000000000000001) (ite c!100784 (Cons!21101 (select (arr!30264 a!4424) from!3778) acc!919) acc!919)))))

(declare-fun b!994000 () Bool)

(declare-fun e!560965 () Bool)

(assert (=> b!994000 (= e!560965 call!42162)))

(declare-fun b!994001 () Bool)

(assert (=> b!994001 (= e!560965 call!42162)))

(declare-fun d!118517 () Bool)

(declare-fun res!664705 () Bool)

(assert (=> d!118517 (=> res!664705 e!560964)))

(assert (=> d!118517 (= res!664705 (bvsge from!3778 (size!30761 a!4424)))))

(assert (=> d!118517 (= (arrayNoDuplicates!0 a!4424 from!3778 acc!919) e!560964)))

(declare-fun b!994002 () Bool)

(assert (=> b!994002 (= e!560966 e!560965)))

(assert (=> b!994002 (= c!100784 (validKeyInArray!0 (select (arr!30264 a!4424) from!3778)))))

(assert (= (and d!118517 (not res!664705)) b!993999))

(assert (= (and b!993999 res!664706) b!993998))

(assert (= (and b!993999 res!664704) b!994002))

(assert (= (and b!994002 c!100784) b!994001))

(assert (= (and b!994002 (not c!100784)) b!994000))

(assert (= (or b!994001 b!994000) bm!42159))

(declare-fun m!921705 () Bool)

(assert (=> b!993998 m!921705))

(assert (=> b!993998 m!921705))

(declare-fun m!921707 () Bool)

(assert (=> b!993998 m!921707))

(assert (=> b!993999 m!921705))

(assert (=> b!993999 m!921705))

(declare-fun m!921709 () Bool)

(assert (=> b!993999 m!921709))

(assert (=> bm!42159 m!921705))

(declare-fun m!921711 () Bool)

(assert (=> bm!42159 m!921711))

(assert (=> b!994002 m!921705))

(assert (=> b!994002 m!921705))

(assert (=> b!994002 m!921709))

(assert (=> b!993924 d!118517))

(declare-fun e!560967 () Bool)

(declare-fun b!994003 () Bool)

(assert (=> b!994003 (= e!560967 (contains!5862 acc!919 (select (arr!30264 a!4424) (bvadd #b00000000000000000000000000000001 from!3778))))))

(declare-fun b!994004 () Bool)

(declare-fun e!560968 () Bool)

(declare-fun e!560970 () Bool)

(assert (=> b!994004 (= e!560968 e!560970)))

(declare-fun res!664707 () Bool)

(assert (=> b!994004 (=> (not res!664707) (not e!560970))))

(assert (=> b!994004 (= res!664707 (not e!560967))))

(declare-fun res!664709 () Bool)

(assert (=> b!994004 (=> (not res!664709) (not e!560967))))

(assert (=> b!994004 (= res!664709 (validKeyInArray!0 (select (arr!30264 a!4424) (bvadd #b00000000000000000000000000000001 from!3778))))))

(declare-fun bm!42160 () Bool)

(declare-fun c!100785 () Bool)

(declare-fun call!42163 () Bool)

(assert (=> bm!42160 (= call!42163 (arrayNoDuplicates!0 a!4424 (bvadd #b00000000000000000000000000000001 from!3778 #b00000000000000000000000000000001) (ite c!100785 (Cons!21101 (select (arr!30264 a!4424) (bvadd #b00000000000000000000000000000001 from!3778)) acc!919) acc!919)))))

(declare-fun b!994005 () Bool)

(declare-fun e!560969 () Bool)

(assert (=> b!994005 (= e!560969 call!42163)))

(declare-fun b!994006 () Bool)

(assert (=> b!994006 (= e!560969 call!42163)))

(declare-fun d!118531 () Bool)

(declare-fun res!664708 () Bool)

(assert (=> d!118531 (=> res!664708 e!560968)))

(assert (=> d!118531 (= res!664708 (bvsge (bvadd #b00000000000000000000000000000001 from!3778) (size!30761 a!4424)))))

(assert (=> d!118531 (= (arrayNoDuplicates!0 a!4424 (bvadd #b00000000000000000000000000000001 from!3778) acc!919) e!560968)))

(declare-fun b!994007 () Bool)

(assert (=> b!994007 (= e!560970 e!560969)))

(assert (=> b!994007 (= c!100785 (validKeyInArray!0 (select (arr!30264 a!4424) (bvadd #b00000000000000000000000000000001 from!3778))))))

(assert (= (and d!118531 (not res!664708)) b!994004))

(assert (= (and b!994004 res!664709) b!994003))

(assert (= (and b!994004 res!664707) b!994007))

(assert (= (and b!994007 c!100785) b!994006))

(assert (= (and b!994007 (not c!100785)) b!994005))

(assert (= (or b!994006 b!994005) bm!42160))

(declare-fun m!921713 () Bool)

(assert (=> b!994003 m!921713))

(assert (=> b!994003 m!921713))

(declare-fun m!921715 () Bool)

(assert (=> b!994003 m!921715))

(assert (=> b!994004 m!921713))

(assert (=> b!994004 m!921713))

(declare-fun m!921717 () Bool)

(assert (=> b!994004 m!921717))

(assert (=> bm!42160 m!921713))

(declare-fun m!921719 () Bool)

(assert (=> bm!42160 m!921719))

(assert (=> b!994007 m!921713))

(assert (=> b!994007 m!921713))

(assert (=> b!994007 m!921717))

(assert (=> b!993924 d!118531))

(declare-fun d!118533 () Bool)

(assert (=> d!118533 (arrayNoDuplicates!0 a!4424 (bvadd #b00000000000000000000000000000001 from!3778) acc!919)))

(declare-fun lt!440633 () Unit!32900)

(declare-fun choose!111 (array!62852 (_ BitVec 32) (_ BitVec 32) List!21105) Unit!32900)

(assert (=> d!118533 (= lt!440633 (choose!111 a!4424 (bvadd #b00000000000000000000000000000001 from!3778) size!36 acc!919))))

(assert (=> d!118533 (= (size!30761 a!4424) size!36)))

(assert (=> d!118533 (= (lemmaArrayNoDuplicatesInAll0Array!0 a!4424 (bvadd #b00000000000000000000000000000001 from!3778) size!36 acc!919) lt!440633)))

(declare-fun bs!28336 () Bool)

(assert (= bs!28336 d!118533))

(assert (=> bs!28336 m!921635))

(declare-fun m!921727 () Bool)

(assert (=> bs!28336 m!921727))

(assert (=> b!993924 d!118533))

(declare-fun d!118535 () Bool)

(assert (=> d!118535 (= (array_inv!23254 a!4424) (bvsge (size!30761 a!4424) #b00000000000000000000000000000000))))

(assert (=> start!85618 d!118535))

(declare-fun d!118537 () Bool)

(declare-fun lt!440636 () Bool)

(declare-fun content!479 (List!21105) (Set (_ BitVec 64)))

(assert (=> d!118537 (= lt!440636 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!479 acc!919)))))

(declare-fun e!560982 () Bool)

(assert (=> d!118537 (= lt!440636 e!560982)))

(declare-fun res!664721 () Bool)

(assert (=> d!118537 (=> (not res!664721) (not e!560982))))

(assert (=> d!118537 (= res!664721 (is-Cons!21101 acc!919))))

(assert (=> d!118537 (= (contains!5862 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000) lt!440636)))

(declare-fun b!994018 () Bool)

(declare-fun e!560981 () Bool)

(assert (=> b!994018 (= e!560982 e!560981)))

(declare-fun res!664720 () Bool)

(assert (=> b!994018 (=> res!664720 e!560981)))

(assert (=> b!994018 (= res!664720 (= (h!22263 acc!919) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!994019 () Bool)

(assert (=> b!994019 (= e!560981 (contains!5862 (t!30114 acc!919) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!118537 res!664721) b!994018))

(assert (= (and b!994018 (not res!664720)) b!994019))

(declare-fun m!921729 () Bool)

(assert (=> d!118537 m!921729))

(declare-fun m!921731 () Bool)

(assert (=> d!118537 m!921731))

(declare-fun m!921733 () Bool)

(assert (=> b!994019 m!921733))

(assert (=> b!993923 d!118537))

(declare-fun d!118539 () Bool)

(declare-fun res!664726 () Bool)

(declare-fun e!560987 () Bool)

(assert (=> d!118539 (=> res!664726 e!560987)))

(assert (=> d!118539 (= res!664726 (is-Nil!21102 acc!919))))

(assert (=> d!118539 (= (noDuplicate!1459 acc!919) e!560987)))

(declare-fun b!994024 () Bool)

(declare-fun e!560988 () Bool)

(assert (=> b!994024 (= e!560987 e!560988)))

(declare-fun res!664727 () Bool)

(assert (=> b!994024 (=> (not res!664727) (not e!560988))))

(assert (=> b!994024 (= res!664727 (not (contains!5862 (t!30114 acc!919) (h!22263 acc!919))))))

(declare-fun b!994025 () Bool)

(assert (=> b!994025 (= e!560988 (noDuplicate!1459 (t!30114 acc!919)))))

(assert (= (and d!118539 (not res!664726)) b!994024))

(assert (= (and b!994024 res!664727) b!994025))

(declare-fun m!921735 () Bool)

(assert (=> b!994024 m!921735))

(declare-fun m!921737 () Bool)

(assert (=> b!994025 m!921737))

(assert (=> b!993922 d!118539))

(declare-fun d!118541 () Bool)

(declare-fun lt!440637 () Bool)

(assert (=> d!118541 (= lt!440637 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!479 acc!919)))))

(declare-fun e!560990 () Bool)

(assert (=> d!118541 (= lt!440637 e!560990)))

(declare-fun res!664729 () Bool)

(assert (=> d!118541 (=> (not res!664729) (not e!560990))))

(assert (=> d!118541 (= res!664729 (is-Cons!21101 acc!919))))

(assert (=> d!118541 (= (contains!5862 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000) lt!440637)))

(declare-fun b!994026 () Bool)

(declare-fun e!560989 () Bool)

(assert (=> b!994026 (= e!560990 e!560989)))

(declare-fun res!664728 () Bool)

(assert (=> b!994026 (=> res!664728 e!560989)))

(assert (=> b!994026 (= res!664728 (= (h!22263 acc!919) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!994027 () Bool)

(assert (=> b!994027 (= e!560989 (contains!5862 (t!30114 acc!919) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!118541 res!664729) b!994026))

(assert (= (and b!994026 (not res!664728)) b!994027))

(assert (=> d!118541 m!921729))

(declare-fun m!921739 () Bool)

(assert (=> d!118541 m!921739))

(declare-fun m!921741 () Bool)

(assert (=> b!994027 m!921741))

(assert (=> b!993925 d!118541))

(push 1)

(assert (not b!993999))

(assert (not b!994025))

(assert (not b!994004))

(assert (not bm!42159))

(assert (not b!994003))

(assert (not d!118541))

(assert (not d!118537))

(assert (not d!118533))

(assert (not bm!42160))

(assert (not b!994007))

(assert (not b!994019))

(assert (not b!994027))

(assert (not b!994024))

(assert (not b!993998))

(assert (not b!994002))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!118591 () Bool)

(declare-fun lt!440648 () Bool)

(assert (=> d!118591 (= lt!440648 (member (h!22263 acc!919) (content!479 (t!30114 acc!919))))))

(declare-fun e!561038 () Bool)

(assert (=> d!118591 (= lt!440648 e!561038)))

(declare-fun res!664773 () Bool)

(assert (=> d!118591 (=> (not res!664773) (not e!561038))))

(assert (=> d!118591 (= res!664773 (is-Cons!21101 (t!30114 acc!919)))))

(assert (=> d!118591 (= (contains!5862 (t!30114 acc!919) (h!22263 acc!919)) lt!440648)))

(declare-fun b!994084 () Bool)

(declare-fun e!561037 () Bool)

(assert (=> b!994084 (= e!561038 e!561037)))

(declare-fun res!664772 () Bool)

(assert (=> b!994084 (=> res!664772 e!561037)))

(assert (=> b!994084 (= res!664772 (= (h!22263 (t!30114 acc!919)) (h!22263 acc!919)))))

(declare-fun b!994085 () Bool)

(assert (=> b!994085 (= e!561037 (contains!5862 (t!30114 (t!30114 acc!919)) (h!22263 acc!919)))))

(assert (= (and d!118591 res!664773) b!994084))

(assert (= (and b!994084 (not res!664772)) b!994085))

(declare-fun m!921831 () Bool)

(assert (=> d!118591 m!921831))

(declare-fun m!921833 () Bool)

(assert (=> d!118591 m!921833))

(declare-fun m!921835 () Bool)

(assert (=> b!994085 m!921835))

(assert (=> b!994024 d!118591))

(assert (=> d!118533 d!118531))

(declare-fun d!118593 () Bool)

(assert (=> d!118593 (arrayNoDuplicates!0 a!4424 (bvadd #b00000000000000000000000000000001 from!3778) acc!919)))

(assert (=> d!118593 true))

(declare-fun res!664776 () Unit!32900)

(assert (=> d!118593 (= (choose!111 a!4424 (bvadd #b00000000000000000000000000000001 from!3778) size!36 acc!919) res!664776)))

(declare-fun bs!28339 () Bool)

(assert (= bs!28339 d!118593))

(assert (=> bs!28339 m!921635))

(assert (=> d!118533 d!118593))

(declare-fun d!118595 () Bool)

(declare-fun c!100798 () Bool)

(assert (=> d!118595 (= c!100798 (is-Nil!21102 acc!919))))

(declare-fun e!561041 () (Set (_ BitVec 64)))

(assert (=> d!118595 (= (content!479 acc!919) e!561041)))

(declare-fun b!994090 () Bool)

(assert (=> b!994090 (= e!561041 (as emptyset (Set (_ BitVec 64))))))

(declare-fun b!994091 () Bool)

(assert (=> b!994091 (= e!561041 (union (insert (h!22263 acc!919) (as emptyset (Set (_ BitVec 64)))) (content!479 (t!30114 acc!919))))))

(assert (= (and d!118595 c!100798) b!994090))

(assert (= (and d!118595 (not c!100798)) b!994091))

(declare-fun m!921837 () Bool)

(assert (=> b!994091 m!921837))

(assert (=> b!994091 m!921831))

(assert (=> d!118537 d!118595))

(declare-fun d!118597 () Bool)

(assert (=> d!118597 (= (validKeyInArray!0 (select (arr!30264 a!4424) from!3778)) (and (not (= (select (arr!30264 a!4424) from!3778) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30264 a!4424) from!3778) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!994002 d!118597))

(declare-fun d!118599 () Bool)

(assert (=> d!118599 (= (validKeyInArray!0 (select (arr!30264 a!4424) (bvadd #b00000000000000000000000000000001 from!3778))) (and (not (= (select (arr!30264 a!4424) (bvadd #b00000000000000000000000000000001 from!3778)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30264 a!4424) (bvadd #b00000000000000000000000000000001 from!3778)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!994004 d!118599))

(declare-fun lt!440649 () Bool)

(declare-fun d!118601 () Bool)

(assert (=> d!118601 (= lt!440649 (member (select (arr!30264 a!4424) (bvadd #b00000000000000000000000000000001 from!3778)) (content!479 acc!919)))))

(declare-fun e!561043 () Bool)

(assert (=> d!118601 (= lt!440649 e!561043)))

(declare-fun res!664778 () Bool)

(assert (=> d!118601 (=> (not res!664778) (not e!561043))))

(assert (=> d!118601 (= res!664778 (is-Cons!21101 acc!919))))

(assert (=> d!118601 (= (contains!5862 acc!919 (select (arr!30264 a!4424) (bvadd #b00000000000000000000000000000001 from!3778))) lt!440649)))

(declare-fun b!994092 () Bool)

(declare-fun e!561042 () Bool)

