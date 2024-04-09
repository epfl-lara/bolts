; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115744 () Bool)

(assert start!115744)

(declare-fun b!1368112 () Bool)

(declare-fun res!911746 () Bool)

(declare-fun e!775246 () Bool)

(assert (=> b!1368112 (=> (not res!911746) (not e!775246))))

(declare-datatypes ((List!32097 0))(
  ( (Nil!32094) (Cons!32093 (h!33302 (_ BitVec 64)) (t!46798 List!32097)) )
))
(declare-fun acc!866 () List!32097)

(declare-fun noDuplicate!2514 (List!32097) Bool)

(assert (=> b!1368112 (= res!911746 (noDuplicate!2514 acc!866))))

(declare-fun b!1368113 () Bool)

(declare-fun res!911743 () Bool)

(declare-fun e!775245 () Bool)

(assert (=> b!1368113 (=> (not res!911743) (not e!775245))))

(declare-fun from!3239 () (_ BitVec 32))

(declare-datatypes ((array!92859 0))(
  ( (array!92860 (arr!44849 (Array (_ BitVec 32) (_ BitVec 64))) (size!45400 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92859)

(assert (=> b!1368113 (= res!911743 (bvslt from!3239 (size!45400 a!3861)))))

(declare-fun b!1368114 () Bool)

(assert (=> b!1368114 (= e!775245 false)))

(declare-fun lt!601958 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92859 (_ BitVec 32) List!32097) Bool)

(assert (=> b!1368114 (= lt!601958 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) acc!866))))

(declare-fun b!1368115 () Bool)

(declare-fun res!911751 () Bool)

(assert (=> b!1368115 (=> (not res!911751) (not e!775246))))

(declare-fun newAcc!98 () List!32097)

(declare-fun contains!9635 (List!32097 (_ BitVec 64)) Bool)

(assert (=> b!1368115 (= res!911751 (not (contains!9635 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!911741 () Bool)

(assert (=> start!115744 (=> (not res!911741) (not e!775246))))

(assert (=> start!115744 (= res!911741 (and (bvslt (size!45400 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45400 a!3861))))))

(assert (=> start!115744 e!775246))

(declare-fun array_inv!33794 (array!92859) Bool)

(assert (=> start!115744 (array_inv!33794 a!3861)))

(assert (=> start!115744 true))

(declare-fun b!1368116 () Bool)

(declare-fun res!911748 () Bool)

(assert (=> b!1368116 (=> (not res!911748) (not e!775246))))

(assert (=> b!1368116 (= res!911748 (not (contains!9635 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368117 () Bool)

(declare-fun res!911749 () Bool)

(assert (=> b!1368117 (=> (not res!911749) (not e!775245))))

(assert (=> b!1368117 (= res!911749 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-fun b!1368118 () Bool)

(declare-fun res!911742 () Bool)

(assert (=> b!1368118 (=> (not res!911742) (not e!775245))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1368118 (= res!911742 (not (validKeyInArray!0 (select (arr!44849 a!3861) from!3239))))))

(declare-fun b!1368119 () Bool)

(declare-fun res!911744 () Bool)

(assert (=> b!1368119 (=> (not res!911744) (not e!775246))))

(assert (=> b!1368119 (= res!911744 (not (contains!9635 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368120 () Bool)

(declare-fun res!911750 () Bool)

(assert (=> b!1368120 (=> (not res!911750) (not e!775246))))

(assert (=> b!1368120 (= res!911750 (not (contains!9635 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368121 () Bool)

(assert (=> b!1368121 (= e!775246 e!775245)))

(declare-fun res!911745 () Bool)

(assert (=> b!1368121 (=> (not res!911745) (not e!775245))))

(assert (=> b!1368121 (= res!911745 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45133 0))(
  ( (Unit!45134) )
))
(declare-fun lt!601957 () Unit!45133)

(declare-fun noDuplicateSubseq!213 (List!32097 List!32097) Unit!45133)

(assert (=> b!1368121 (= lt!601957 (noDuplicateSubseq!213 newAcc!98 acc!866))))

(declare-fun b!1368122 () Bool)

(declare-fun res!911747 () Bool)

(assert (=> b!1368122 (=> (not res!911747) (not e!775246))))

(declare-fun subseq!1026 (List!32097 List!32097) Bool)

(assert (=> b!1368122 (= res!911747 (subseq!1026 newAcc!98 acc!866))))

(assert (= (and start!115744 res!911741) b!1368112))

(assert (= (and b!1368112 res!911746) b!1368119))

(assert (= (and b!1368119 res!911744) b!1368120))

(assert (= (and b!1368120 res!911750) b!1368116))

(assert (= (and b!1368116 res!911748) b!1368115))

(assert (= (and b!1368115 res!911751) b!1368122))

(assert (= (and b!1368122 res!911747) b!1368121))

(assert (= (and b!1368121 res!911745) b!1368113))

(assert (= (and b!1368113 res!911743) b!1368118))

(assert (= (and b!1368118 res!911742) b!1368117))

(assert (= (and b!1368117 res!911749) b!1368114))

(declare-fun m!1252183 () Bool)

(assert (=> start!115744 m!1252183))

(declare-fun m!1252185 () Bool)

(assert (=> b!1368120 m!1252185))

(declare-fun m!1252187 () Bool)

(assert (=> b!1368114 m!1252187))

(declare-fun m!1252189 () Bool)

(assert (=> b!1368122 m!1252189))

(declare-fun m!1252191 () Bool)

(assert (=> b!1368116 m!1252191))

(declare-fun m!1252193 () Bool)

(assert (=> b!1368119 m!1252193))

(declare-fun m!1252195 () Bool)

(assert (=> b!1368121 m!1252195))

(declare-fun m!1252197 () Bool)

(assert (=> b!1368121 m!1252197))

(declare-fun m!1252199 () Bool)

(assert (=> b!1368112 m!1252199))

(declare-fun m!1252201 () Bool)

(assert (=> b!1368118 m!1252201))

(assert (=> b!1368118 m!1252201))

(declare-fun m!1252203 () Bool)

(assert (=> b!1368118 m!1252203))

(declare-fun m!1252205 () Bool)

(assert (=> b!1368115 m!1252205))

(check-sat (not b!1368119) (not b!1368116) (not b!1368118) (not b!1368114) (not b!1368122) (not b!1368112) (not b!1368120) (not b!1368121) (not start!115744) (not b!1368115))
(check-sat)
