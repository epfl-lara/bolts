; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60212 () Bool)

(assert start!60212)

(declare-fun b!673057 () Bool)

(declare-fun res!439805 () Bool)

(declare-fun e!384385 () Bool)

(assert (=> b!673057 (=> (not res!439805) (not e!384385))))

(declare-datatypes ((List!12890 0))(
  ( (Nil!12887) (Cons!12886 (h!13931 (_ BitVec 64)) (t!19126 List!12890)) )
))
(declare-fun acc!681 () List!12890)

(declare-fun contains!3433 (List!12890 (_ BitVec 64)) Bool)

(assert (=> b!673057 (= res!439805 (not (contains!3433 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!673058 () Bool)

(declare-fun res!439796 () Bool)

(declare-fun e!384380 () Bool)

(assert (=> b!673058 (=> (not res!439796) (not e!384380))))

(declare-fun lt!312379 () List!12890)

(declare-fun noDuplicate!680 (List!12890) Bool)

(assert (=> b!673058 (= res!439796 (noDuplicate!680 lt!312379))))

(declare-fun b!673060 () Bool)

(declare-datatypes ((Unit!23648 0))(
  ( (Unit!23649) )
))
(declare-fun e!384384 () Unit!23648)

(declare-fun Unit!23650 () Unit!23648)

(assert (=> b!673060 (= e!384384 Unit!23650)))

(declare-datatypes ((array!39215 0))(
  ( (array!39216 (arr!18796 (Array (_ BitVec 32) (_ BitVec 64))) (size!19160 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39215)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!39215 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!673060 (arrayContainsKey!0 a!3626 k0!2843 from!3004)))

(declare-fun lt!312378 () Unit!23648)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39215 (_ BitVec 64) (_ BitVec 32)) Unit!23648)

(assert (=> b!673060 (= lt!312378 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!673060 false))

(declare-fun b!673061 () Bool)

(declare-fun res!439814 () Bool)

(assert (=> b!673061 (=> (not res!439814) (not e!384385))))

(declare-fun e!384376 () Bool)

(assert (=> b!673061 (= res!439814 e!384376)))

(declare-fun res!439813 () Bool)

(assert (=> b!673061 (=> res!439813 e!384376)))

(declare-fun e!384377 () Bool)

(assert (=> b!673061 (= res!439813 e!384377)))

(declare-fun res!439801 () Bool)

(assert (=> b!673061 (=> (not res!439801) (not e!384377))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!673061 (= res!439801 (bvsgt from!3004 i!1382))))

(declare-fun b!673062 () Bool)

(declare-fun e!384381 () Bool)

(declare-fun e!384383 () Bool)

(assert (=> b!673062 (= e!384381 e!384383)))

(declare-fun res!439799 () Bool)

(assert (=> b!673062 (=> (not res!439799) (not e!384383))))

(assert (=> b!673062 (= res!439799 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!673063 () Bool)

(declare-fun res!439798 () Bool)

(assert (=> b!673063 (=> (not res!439798) (not e!384385))))

(declare-fun arrayNoDuplicates!0 (array!39215 (_ BitVec 32) List!12890) Bool)

(assert (=> b!673063 (= res!439798 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!673064 () Bool)

(declare-fun res!439811 () Bool)

(assert (=> b!673064 (=> (not res!439811) (not e!384385))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!673064 (= res!439811 (validKeyInArray!0 k0!2843))))

(declare-fun b!673065 () Bool)

(declare-fun res!439807 () Bool)

(assert (=> b!673065 (=> (not res!439807) (not e!384380))))

(assert (=> b!673065 (= res!439807 (not (contains!3433 lt!312379 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!673066 () Bool)

(declare-fun e!384379 () Bool)

(assert (=> b!673066 (= e!384385 e!384379)))

(declare-fun res!439802 () Bool)

(assert (=> b!673066 (=> (not res!439802) (not e!384379))))

(assert (=> b!673066 (= res!439802 (not (= (select (arr!18796 a!3626) from!3004) k0!2843)))))

(declare-fun lt!312381 () Unit!23648)

(assert (=> b!673066 (= lt!312381 e!384384)))

(declare-fun c!77000 () Bool)

(assert (=> b!673066 (= c!77000 (= (select (arr!18796 a!3626) from!3004) k0!2843))))

(declare-fun b!673067 () Bool)

(declare-fun res!439804 () Bool)

(assert (=> b!673067 (=> (not res!439804) (not e!384385))))

(assert (=> b!673067 (= res!439804 (validKeyInArray!0 (select (arr!18796 a!3626) from!3004)))))

(declare-fun b!673068 () Bool)

(declare-fun res!439792 () Bool)

(assert (=> b!673068 (=> (not res!439792) (not e!384385))))

(assert (=> b!673068 (= res!439792 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19160 a!3626))))))

(declare-fun b!673069 () Bool)

(declare-fun res!439812 () Bool)

(assert (=> b!673069 (=> (not res!439812) (not e!384385))))

(assert (=> b!673069 (= res!439812 (not (contains!3433 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!673070 () Bool)

(declare-fun Unit!23651 () Unit!23648)

(assert (=> b!673070 (= e!384384 Unit!23651)))

(declare-fun b!673071 () Bool)

(declare-fun e!384382 () Bool)

(assert (=> b!673071 (= e!384376 e!384382)))

(declare-fun res!439809 () Bool)

(assert (=> b!673071 (=> (not res!439809) (not e!384382))))

(assert (=> b!673071 (= res!439809 (bvsle from!3004 i!1382))))

(declare-fun b!673072 () Bool)

(declare-fun res!439797 () Bool)

(assert (=> b!673072 (=> (not res!439797) (not e!384385))))

(assert (=> b!673072 (= res!439797 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!673059 () Bool)

(declare-fun res!439806 () Bool)

(assert (=> b!673059 (=> (not res!439806) (not e!384385))))

(assert (=> b!673059 (= res!439806 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12887))))

(declare-fun res!439795 () Bool)

(assert (=> start!60212 (=> (not res!439795) (not e!384385))))

(assert (=> start!60212 (= res!439795 (and (bvslt (size!19160 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19160 a!3626))))))

(assert (=> start!60212 e!384385))

(assert (=> start!60212 true))

(declare-fun array_inv!14570 (array!39215) Bool)

(assert (=> start!60212 (array_inv!14570 a!3626)))

(declare-fun b!673073 () Bool)

(declare-fun res!439791 () Bool)

(assert (=> b!673073 (=> (not res!439791) (not e!384385))))

(assert (=> b!673073 (= res!439791 (noDuplicate!680 acc!681))))

(declare-fun b!673074 () Bool)

(assert (=> b!673074 (= e!384383 (not (contains!3433 lt!312379 k0!2843)))))

(declare-fun b!673075 () Bool)

(declare-fun res!439808 () Bool)

(assert (=> b!673075 (=> (not res!439808) (not e!384385))))

(assert (=> b!673075 (= res!439808 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19160 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!673076 () Bool)

(assert (=> b!673076 (= e!384382 (not (contains!3433 acc!681 k0!2843)))))

(declare-fun b!673077 () Bool)

(assert (=> b!673077 (= e!384380 false)))

(declare-fun lt!312380 () Bool)

(assert (=> b!673077 (= lt!312380 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!312379))))

(declare-fun b!673078 () Bool)

(assert (=> b!673078 (= e!384377 (contains!3433 acc!681 k0!2843))))

(declare-fun b!673079 () Bool)

(declare-fun res!439793 () Bool)

(assert (=> b!673079 (=> (not res!439793) (not e!384380))))

(assert (=> b!673079 (= res!439793 (not (contains!3433 lt!312379 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!673080 () Bool)

(declare-fun res!439803 () Bool)

(assert (=> b!673080 (=> (not res!439803) (not e!384380))))

(assert (=> b!673080 (= res!439803 e!384381)))

(declare-fun res!439810 () Bool)

(assert (=> b!673080 (=> res!439810 e!384381)))

(declare-fun e!384378 () Bool)

(assert (=> b!673080 (= res!439810 e!384378)))

(declare-fun res!439800 () Bool)

(assert (=> b!673080 (=> (not res!439800) (not e!384378))))

(assert (=> b!673080 (= res!439800 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!673081 () Bool)

(assert (=> b!673081 (= e!384379 e!384380)))

(declare-fun res!439794 () Bool)

(assert (=> b!673081 (=> (not res!439794) (not e!384380))))

(assert (=> b!673081 (= res!439794 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!281 (List!12890 (_ BitVec 64)) List!12890)

(assert (=> b!673081 (= lt!312379 ($colon$colon!281 acc!681 (select (arr!18796 a!3626) from!3004)))))

(declare-fun b!673082 () Bool)

(assert (=> b!673082 (= e!384378 (contains!3433 lt!312379 k0!2843))))

(assert (= (and start!60212 res!439795) b!673073))

(assert (= (and b!673073 res!439791) b!673057))

(assert (= (and b!673057 res!439805) b!673069))

(assert (= (and b!673069 res!439812) b!673061))

(assert (= (and b!673061 res!439801) b!673078))

(assert (= (and b!673061 (not res!439813)) b!673071))

(assert (= (and b!673071 res!439809) b!673076))

(assert (= (and b!673061 res!439814) b!673059))

(assert (= (and b!673059 res!439806) b!673063))

(assert (= (and b!673063 res!439798) b!673068))

(assert (= (and b!673068 res!439792) b!673064))

(assert (= (and b!673064 res!439811) b!673072))

(assert (= (and b!673072 res!439797) b!673075))

(assert (= (and b!673075 res!439808) b!673067))

(assert (= (and b!673067 res!439804) b!673066))

(assert (= (and b!673066 c!77000) b!673060))

(assert (= (and b!673066 (not c!77000)) b!673070))

(assert (= (and b!673066 res!439802) b!673081))

(assert (= (and b!673081 res!439794) b!673058))

(assert (= (and b!673058 res!439796) b!673079))

(assert (= (and b!673079 res!439793) b!673065))

(assert (= (and b!673065 res!439807) b!673080))

(assert (= (and b!673080 res!439800) b!673082))

(assert (= (and b!673080 (not res!439810)) b!673062))

(assert (= (and b!673062 res!439799) b!673074))

(assert (= (and b!673080 res!439803) b!673077))

(declare-fun m!641663 () Bool)

(assert (=> b!673074 m!641663))

(declare-fun m!641665 () Bool)

(assert (=> b!673064 m!641665))

(declare-fun m!641667 () Bool)

(assert (=> b!673058 m!641667))

(declare-fun m!641669 () Bool)

(assert (=> start!60212 m!641669))

(declare-fun m!641671 () Bool)

(assert (=> b!673081 m!641671))

(assert (=> b!673081 m!641671))

(declare-fun m!641673 () Bool)

(assert (=> b!673081 m!641673))

(declare-fun m!641675 () Bool)

(assert (=> b!673078 m!641675))

(declare-fun m!641677 () Bool)

(assert (=> b!673057 m!641677))

(declare-fun m!641679 () Bool)

(assert (=> b!673069 m!641679))

(assert (=> b!673067 m!641671))

(assert (=> b!673067 m!641671))

(declare-fun m!641681 () Bool)

(assert (=> b!673067 m!641681))

(declare-fun m!641683 () Bool)

(assert (=> b!673059 m!641683))

(declare-fun m!641685 () Bool)

(assert (=> b!673072 m!641685))

(declare-fun m!641687 () Bool)

(assert (=> b!673073 m!641687))

(declare-fun m!641689 () Bool)

(assert (=> b!673065 m!641689))

(declare-fun m!641691 () Bool)

(assert (=> b!673063 m!641691))

(assert (=> b!673082 m!641663))

(declare-fun m!641693 () Bool)

(assert (=> b!673077 m!641693))

(declare-fun m!641695 () Bool)

(assert (=> b!673079 m!641695))

(assert (=> b!673066 m!641671))

(declare-fun m!641697 () Bool)

(assert (=> b!673060 m!641697))

(declare-fun m!641699 () Bool)

(assert (=> b!673060 m!641699))

(assert (=> b!673076 m!641675))

(check-sat (not b!673059) (not start!60212) (not b!673063) (not b!673067) (not b!673082) (not b!673076) (not b!673072) (not b!673058) (not b!673079) (not b!673057) (not b!673060) (not b!673073) (not b!673081) (not b!673074) (not b!673069) (not b!673064) (not b!673065) (not b!673078) (not b!673077))
(check-sat)
