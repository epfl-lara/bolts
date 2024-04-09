; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85672 () Bool)

(assert start!85672)

(declare-fun b!994152 () Bool)

(declare-fun res!664834 () Bool)

(declare-fun e!561076 () Bool)

(assert (=> b!994152 (=> (not res!664834) (not e!561076))))

(declare-datatypes ((List!21108 0))(
  ( (Nil!21105) (Cons!21104 (h!22266 (_ BitVec 64)) (t!30117 List!21108)) )
))
(declare-fun acc!919 () List!21108)

(declare-fun noDuplicate!1462 (List!21108) Bool)

(assert (=> b!994152 (= res!664834 (noDuplicate!1462 acc!919))))

(declare-fun res!664836 () Bool)

(assert (=> start!85672 (=> (not res!664836) (not e!561076))))

(declare-datatypes ((array!62861 0))(
  ( (array!62862 (arr!30267 (Array (_ BitVec 32) (_ BitVec 64))) (size!30770 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62861)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85672 (= res!664836 (and (= (size!30770 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62862 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30770 a!4424))))))

(assert (=> start!85672 e!561076))

(declare-fun array_inv!23257 (array!62861) Bool)

(assert (=> start!85672 (array_inv!23257 a!4424)))

(assert (=> start!85672 true))

(declare-fun b!994153 () Bool)

(declare-fun res!664835 () Bool)

(assert (=> b!994153 (=> (not res!664835) (not e!561076))))

(declare-fun contains!5865 (List!21108 (_ BitVec 64)) Bool)

(assert (=> b!994153 (= res!664835 (not (contains!5865 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!994154 () Bool)

(declare-fun res!664837 () Bool)

(assert (=> b!994154 (=> (not res!664837) (not e!561076))))

(assert (=> b!994154 (= res!664837 (not (contains!5865 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!994155 () Bool)

(declare-fun res!664833 () Bool)

(assert (=> b!994155 (=> (not res!664833) (not e!561076))))

(assert (=> b!994155 (= res!664833 (bvsge from!3778 size!36))))

(declare-fun b!994156 () Bool)

(declare-fun arrayNoDuplicates!0 (array!62861 (_ BitVec 32) List!21108) Bool)

(assert (=> b!994156 (= e!561076 (not (arrayNoDuplicates!0 a!4424 from!3778 acc!919)))))

(assert (= (and start!85672 res!664836) b!994153))

(assert (= (and b!994153 res!664835) b!994154))

(assert (= (and b!994154 res!664837) b!994152))

(assert (= (and b!994152 res!664834) b!994155))

(assert (= (and b!994155 res!664833) b!994156))

(declare-fun m!921895 () Bool)

(assert (=> start!85672 m!921895))

(declare-fun m!921897 () Bool)

(assert (=> b!994156 m!921897))

(declare-fun m!921899 () Bool)

(assert (=> b!994154 m!921899))

(declare-fun m!921901 () Bool)

(assert (=> b!994152 m!921901))

(declare-fun m!921903 () Bool)

(assert (=> b!994153 m!921903))

(push 1)

(assert (not b!994154))

(assert (not b!994152))

(assert (not start!85672))

(assert (not b!994156))

(assert (not b!994153))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!994185 () Bool)

(declare-fun e!561105 () Bool)

(declare-fun call!42174 () Bool)

(assert (=> b!994185 (= e!561105 call!42174)))

(declare-fun b!994186 () Bool)

(assert (=> b!994186 (= e!561105 call!42174)))

(declare-fun c!100805 () Bool)

(declare-fun bm!42171 () Bool)

(assert (=> bm!42171 (= call!42174 (arrayNoDuplicates!0 a!4424 (bvadd from!3778 #b00000000000000000000000000000001) (ite c!100805 (Cons!21104 (select (arr!30267 a!4424) from!3778) acc!919) acc!919)))))

(declare-fun b!994187 () Bool)

(declare-fun e!561103 () Bool)

(declare-fun e!561102 () Bool)

(assert (=> b!994187 (= e!561103 e!561102)))

(declare-fun res!664860 () Bool)

(assert (=> b!994187 (=> (not res!664860) (not e!561102))))

(declare-fun e!561104 () Bool)

(assert (=> b!994187 (= res!664860 (not e!561104))))

(declare-fun res!664858 () Bool)

(assert (=> b!994187 (=> (not res!664858) (not e!561104))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!994187 (= res!664858 (validKeyInArray!0 (select (arr!30267 a!4424) from!3778)))))

(declare-fun d!118619 () Bool)

(declare-fun res!664859 () Bool)

(assert (=> d!118619 (=> res!664859 e!561103)))

(assert (=> d!118619 (= res!664859 (bvsge from!3778 (size!30770 a!4424)))))

(assert (=> d!118619 (= (arrayNoDuplicates!0 a!4424 from!3778 acc!919) e!561103)))

(declare-fun b!994188 () Bool)

(assert (=> b!994188 (= e!561104 (contains!5865 acc!919 (select (arr!30267 a!4424) from!3778)))))

(declare-fun b!994189 () Bool)

(assert (=> b!994189 (= e!561102 e!561105)))

(assert (=> b!994189 (= c!100805 (validKeyInArray!0 (select (arr!30267 a!4424) from!3778)))))

(assert (= (and d!118619 (not res!664859)) b!994187))

(assert (= (and b!994187 res!664858) b!994188))

(assert (= (and b!994187 res!664860) b!994189))

(assert (= (and b!994189 c!100805) b!994186))

(assert (= (and b!994189 (not c!100805)) b!994185))

(assert (= (or b!994186 b!994185) bm!42171))

(declare-fun m!921915 () Bool)

(assert (=> bm!42171 m!921915))

(declare-fun m!921917 () Bool)

(assert (=> bm!42171 m!921917))

(assert (=> b!994187 m!921915))

(assert (=> b!994187 m!921915))

(declare-fun m!921919 () Bool)

(assert (=> b!994187 m!921919))

(assert (=> b!994188 m!921915))

(assert (=> b!994188 m!921915))

(declare-fun m!921923 () Bool)

(assert (=> b!994188 m!921923))

(assert (=> b!994189 m!921915))

(assert (=> b!994189 m!921915))

(assert (=> b!994189 m!921919))

(assert (=> b!994156 d!118619))

(declare-fun d!118629 () Bool)

(declare-fun lt!440661 () Bool)

(declare-fun content!482 (List!21108) (Set (_ BitVec 64)))

(assert (=> d!118629 (= lt!440661 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!482 acc!919)))))

(declare-fun e!561131 () Bool)

(assert (=> d!118629 (= lt!440661 e!561131)))

(declare-fun res!664881 () Bool)

(assert (=> d!118629 (=> (not res!664881) (not e!561131))))

(assert (=> d!118629 (= res!664881 (is-Cons!21104 acc!919))))

(assert (=> d!118629 (= (contains!5865 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000) lt!440661)))

(declare-fun b!994218 () Bool)

(declare-fun e!561130 () Bool)

(assert (=> b!994218 (= e!561131 e!561130)))

(declare-fun res!664882 () Bool)

(assert (=> b!994218 (=> res!664882 e!561130)))

(assert (=> b!994218 (= res!664882 (= (h!22266 acc!919) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!994219 () Bool)

(assert (=> b!994219 (= e!561130 (contains!5865 (t!30117 acc!919) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!118629 res!664881) b!994218))

(assert (= (and b!994218 (not res!664882)) b!994219))

(declare-fun m!921931 () Bool)

(assert (=> d!118629 m!921931))

(declare-fun m!921933 () Bool)

(assert (=> d!118629 m!921933))

(declare-fun m!921935 () Bool)

(assert (=> b!994219 m!921935))

(assert (=> b!994154 d!118629))

(declare-fun d!118635 () Bool)

(declare-fun lt!440662 () Bool)

(assert (=> d!118635 (= lt!440662 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!482 acc!919)))))

(declare-fun e!561133 () Bool)

(assert (=> d!118635 (= lt!440662 e!561133)))

(declare-fun res!664883 () Bool)

(assert (=> d!118635 (=> (not res!664883) (not e!561133))))

(assert (=> d!118635 (= res!664883 (is-Cons!21104 acc!919))))

(assert (=> d!118635 (= (contains!5865 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000) lt!440662)))

(declare-fun b!994220 () Bool)

(declare-fun e!561132 () Bool)

(assert (=> b!994220 (= e!561133 e!561132)))

(declare-fun res!664884 () Bool)

(assert (=> b!994220 (=> res!664884 e!561132)))

(assert (=> b!994220 (= res!664884 (= (h!22266 acc!919) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!994221 () Bool)

(assert (=> b!994221 (= e!561132 (contains!5865 (t!30117 acc!919) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!118635 res!664883) b!994220))

(assert (= (and b!994220 (not res!664884)) b!994221))

(assert (=> d!118635 m!921931))

(declare-fun m!921945 () Bool)

(assert (=> d!118635 m!921945))

(declare-fun m!921947 () Bool)

(assert (=> b!994221 m!921947))

(assert (=> b!994153 d!118635))

(declare-fun d!118639 () Bool)

(declare-fun res!664903 () Bool)

(declare-fun e!561152 () Bool)

(assert (=> d!118639 (=> res!664903 e!561152)))

(assert (=> d!118639 (= res!664903 (is-Nil!21105 acc!919))))

(assert (=> d!118639 (= (noDuplicate!1462 acc!919) e!561152)))

(declare-fun b!994240 () Bool)

(declare-fun e!561153 () Bool)

(assert (=> b!994240 (= e!561152 e!561153)))

(declare-fun res!664904 () Bool)

(assert (=> b!994240 (=> (not res!664904) (not e!561153))))

(assert (=> b!994240 (= res!664904 (not (contains!5865 (t!30117 acc!919) (h!22266 acc!919))))))

(declare-fun b!994241 () Bool)

(assert (=> b!994241 (= e!561153 (noDuplicate!1462 (t!30117 acc!919)))))

(assert (= (and d!118639 (not res!664903)) b!994240))

(assert (= (and b!994240 res!664904) b!994241))

(declare-fun m!921963 () Bool)

(assert (=> b!994240 m!921963))

(declare-fun m!921965 () Bool)

(assert (=> b!994241 m!921965))

(assert (=> b!994152 d!118639))

(declare-fun d!118645 () Bool)

(assert (=> d!118645 (= (array_inv!23257 a!4424) (bvsge (size!30770 a!4424) #b00000000000000000000000000000000))))

(assert (=> start!85672 d!118645))

(push 1)

