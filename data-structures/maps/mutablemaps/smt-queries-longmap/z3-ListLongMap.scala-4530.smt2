; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62666 () Bool)

(assert start!62666)

(declare-fun b!707147 () Bool)

(declare-fun res!471140 () Bool)

(declare-fun e!397977 () Bool)

(assert (=> b!707147 (=> (not res!471140) (not e!397977))))

(declare-datatypes ((List!13397 0))(
  ( (Nil!13394) (Cons!13393 (h!14438 (_ BitVec 64)) (t!19687 List!13397)) )
))
(declare-fun newAcc!49 () List!13397)

(declare-fun contains!3940 (List!13397 (_ BitVec 64)) Bool)

(assert (=> b!707147 (= res!471140 (not (contains!3940 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!707148 () Bool)

(declare-fun res!471137 () Bool)

(assert (=> b!707148 (=> (not res!471137) (not e!397977))))

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun acc!652 () List!13397)

(declare-datatypes ((array!40301 0))(
  ( (array!40302 (arr!19303 (Array (_ BitVec 32) (_ BitVec 64))) (size!19686 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40301)

(declare-fun arrayNoDuplicates!0 (array!40301 (_ BitVec 32) List!13397) Bool)

(assert (=> b!707148 (= res!471137 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!707149 () Bool)

(declare-fun res!471135 () Bool)

(assert (=> b!707149 (=> (not res!471135) (not e!397977))))

(declare-fun k0!2824 () (_ BitVec 64))

(declare-fun -!349 (List!13397 (_ BitVec 64)) List!13397)

(assert (=> b!707149 (= res!471135 (= (-!349 newAcc!49 k0!2824) acc!652))))

(declare-fun b!707150 () Bool)

(declare-fun res!471142 () Bool)

(assert (=> b!707150 (=> (not res!471142) (not e!397977))))

(declare-fun noDuplicate!1187 (List!13397) Bool)

(assert (=> b!707150 (= res!471142 (noDuplicate!1187 acc!652))))

(declare-fun b!707152 () Bool)

(declare-fun res!471139 () Bool)

(assert (=> b!707152 (=> (not res!471139) (not e!397977))))

(declare-fun arrayContainsKey!0 (array!40301 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!707152 (= res!471139 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!707153 () Bool)

(declare-fun res!471131 () Bool)

(assert (=> b!707153 (=> (not res!471131) (not e!397977))))

(assert (=> b!707153 (= res!471131 (not (contains!3940 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!707154 () Bool)

(assert (=> b!707154 (= e!397977 false)))

(declare-fun lt!317943 () Bool)

(assert (=> b!707154 (= lt!317943 (contains!3940 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!707155 () Bool)

(declare-fun res!471138 () Bool)

(assert (=> b!707155 (=> (not res!471138) (not e!397977))))

(assert (=> b!707155 (= res!471138 (contains!3940 newAcc!49 k0!2824))))

(declare-fun b!707156 () Bool)

(declare-fun res!471133 () Bool)

(assert (=> b!707156 (=> (not res!471133) (not e!397977))))

(assert (=> b!707156 (= res!471133 (not (contains!3940 acc!652 k0!2824)))))

(declare-fun b!707157 () Bool)

(declare-fun res!471141 () Bool)

(assert (=> b!707157 (=> (not res!471141) (not e!397977))))

(declare-fun subseq!384 (List!13397 List!13397) Bool)

(assert (=> b!707157 (= res!471141 (subseq!384 acc!652 newAcc!49))))

(declare-fun res!471136 () Bool)

(assert (=> start!62666 (=> (not res!471136) (not e!397977))))

(assert (=> start!62666 (= res!471136 (and (bvslt (size!19686 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19686 a!3591))))))

(assert (=> start!62666 e!397977))

(assert (=> start!62666 true))

(declare-fun array_inv!15077 (array!40301) Bool)

(assert (=> start!62666 (array_inv!15077 a!3591)))

(declare-fun b!707151 () Bool)

(declare-fun res!471134 () Bool)

(assert (=> b!707151 (=> (not res!471134) (not e!397977))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!707151 (= res!471134 (validKeyInArray!0 k0!2824))))

(declare-fun b!707158 () Bool)

(declare-fun res!471132 () Bool)

(assert (=> b!707158 (=> (not res!471132) (not e!397977))))

(assert (=> b!707158 (= res!471132 (not (contains!3940 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!707159 () Bool)

(declare-fun res!471143 () Bool)

(assert (=> b!707159 (=> (not res!471143) (not e!397977))))

(assert (=> b!707159 (= res!471143 (noDuplicate!1187 newAcc!49))))

(assert (= (and start!62666 res!471136) b!707150))

(assert (= (and b!707150 res!471142) b!707159))

(assert (= (and b!707159 res!471143) b!707158))

(assert (= (and b!707158 res!471132) b!707153))

(assert (= (and b!707153 res!471131) b!707152))

(assert (= (and b!707152 res!471139) b!707156))

(assert (= (and b!707156 res!471133) b!707151))

(assert (= (and b!707151 res!471134) b!707148))

(assert (= (and b!707148 res!471137) b!707157))

(assert (= (and b!707157 res!471141) b!707155))

(assert (= (and b!707155 res!471138) b!707149))

(assert (= (and b!707149 res!471135) b!707147))

(assert (= (and b!707147 res!471140) b!707154))

(declare-fun m!664831 () Bool)

(assert (=> b!707153 m!664831))

(declare-fun m!664833 () Bool)

(assert (=> b!707158 m!664833))

(declare-fun m!664835 () Bool)

(assert (=> b!707150 m!664835))

(declare-fun m!664837 () Bool)

(assert (=> start!62666 m!664837))

(declare-fun m!664839 () Bool)

(assert (=> b!707148 m!664839))

(declare-fun m!664841 () Bool)

(assert (=> b!707155 m!664841))

(declare-fun m!664843 () Bool)

(assert (=> b!707151 m!664843))

(declare-fun m!664845 () Bool)

(assert (=> b!707159 m!664845))

(declare-fun m!664847 () Bool)

(assert (=> b!707156 m!664847))

(declare-fun m!664849 () Bool)

(assert (=> b!707149 m!664849))

(declare-fun m!664851 () Bool)

(assert (=> b!707157 m!664851))

(declare-fun m!664853 () Bool)

(assert (=> b!707152 m!664853))

(declare-fun m!664855 () Bool)

(assert (=> b!707147 m!664855))

(declare-fun m!664857 () Bool)

(assert (=> b!707154 m!664857))

(check-sat (not b!707147) (not b!707155) (not b!707150) (not b!707151) (not b!707148) (not b!707149) (not b!707158) (not b!707157) (not b!707154) (not b!707156) (not b!707153) (not b!707152) (not start!62666) (not b!707159))
(check-sat)
