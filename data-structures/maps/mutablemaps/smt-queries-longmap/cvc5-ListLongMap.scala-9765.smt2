; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115748 () Bool)

(assert start!115748)

(declare-fun b!1368178 () Bool)

(declare-fun res!911813 () Bool)

(declare-fun e!775263 () Bool)

(assert (=> b!1368178 (=> (not res!911813) (not e!775263))))

(declare-datatypes ((List!32099 0))(
  ( (Nil!32096) (Cons!32095 (h!33304 (_ BitVec 64)) (t!46800 List!32099)) )
))
(declare-fun acc!866 () List!32099)

(declare-fun contains!9637 (List!32099 (_ BitVec 64)) Bool)

(assert (=> b!1368178 (= res!911813 (not (contains!9637 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368179 () Bool)

(declare-fun res!911815 () Bool)

(assert (=> b!1368179 (=> (not res!911815) (not e!775263))))

(assert (=> b!1368179 (= res!911815 (not (contains!9637 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368180 () Bool)

(declare-fun res!911810 () Bool)

(declare-fun e!775264 () Bool)

(assert (=> b!1368180 (=> (not res!911810) (not e!775264))))

(declare-datatypes ((array!92863 0))(
  ( (array!92864 (arr!44851 (Array (_ BitVec 32) (_ BitVec 64))) (size!45402 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92863)

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1368180 (= res!911810 (not (validKeyInArray!0 (select (arr!44851 a!3861) from!3239))))))

(declare-fun b!1368181 () Bool)

(declare-fun res!911814 () Bool)

(assert (=> b!1368181 (=> (not res!911814) (not e!775263))))

(declare-fun noDuplicate!2516 (List!32099) Bool)

(assert (=> b!1368181 (= res!911814 (noDuplicate!2516 acc!866))))

(declare-fun b!1368182 () Bool)

(declare-fun res!911812 () Bool)

(assert (=> b!1368182 (=> (not res!911812) (not e!775264))))

(assert (=> b!1368182 (= res!911812 (bvslt from!3239 (size!45402 a!3861)))))

(declare-fun b!1368183 () Bool)

(declare-fun res!911817 () Bool)

(assert (=> b!1368183 (=> (not res!911817) (not e!775264))))

(assert (=> b!1368183 (= res!911817 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-fun b!1368185 () Bool)

(assert (=> b!1368185 (= e!775263 e!775264)))

(declare-fun res!911807 () Bool)

(assert (=> b!1368185 (=> (not res!911807) (not e!775264))))

(declare-fun arrayNoDuplicates!0 (array!92863 (_ BitVec 32) List!32099) Bool)

(assert (=> b!1368185 (= res!911807 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45137 0))(
  ( (Unit!45138) )
))
(declare-fun lt!601970 () Unit!45137)

(declare-fun newAcc!98 () List!32099)

(declare-fun noDuplicateSubseq!215 (List!32099 List!32099) Unit!45137)

(assert (=> b!1368185 (= lt!601970 (noDuplicateSubseq!215 newAcc!98 acc!866))))

(declare-fun b!1368186 () Bool)

(declare-fun res!911811 () Bool)

(assert (=> b!1368186 (=> (not res!911811) (not e!775263))))

(assert (=> b!1368186 (= res!911811 (not (contains!9637 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!911809 () Bool)

(assert (=> start!115748 (=> (not res!911809) (not e!775263))))

(assert (=> start!115748 (= res!911809 (and (bvslt (size!45402 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45402 a!3861))))))

(assert (=> start!115748 e!775263))

(declare-fun array_inv!33796 (array!92863) Bool)

(assert (=> start!115748 (array_inv!33796 a!3861)))

(assert (=> start!115748 true))

(declare-fun b!1368184 () Bool)

(declare-fun res!911808 () Bool)

(assert (=> b!1368184 (=> (not res!911808) (not e!775263))))

(declare-fun subseq!1028 (List!32099 List!32099) Bool)

(assert (=> b!1368184 (= res!911808 (subseq!1028 newAcc!98 acc!866))))

(declare-fun b!1368187 () Bool)

(declare-fun res!911816 () Bool)

(assert (=> b!1368187 (=> (not res!911816) (not e!775263))))

(assert (=> b!1368187 (= res!911816 (not (contains!9637 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368188 () Bool)

(assert (=> b!1368188 (= e!775264 false)))

(declare-fun lt!601969 () Bool)

(assert (=> b!1368188 (= lt!601969 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) acc!866))))

(assert (= (and start!115748 res!911809) b!1368181))

(assert (= (and b!1368181 res!911814) b!1368179))

(assert (= (and b!1368179 res!911815) b!1368178))

(assert (= (and b!1368178 res!911813) b!1368186))

(assert (= (and b!1368186 res!911811) b!1368187))

(assert (= (and b!1368187 res!911816) b!1368184))

(assert (= (and b!1368184 res!911808) b!1368185))

(assert (= (and b!1368185 res!911807) b!1368182))

(assert (= (and b!1368182 res!911812) b!1368180))

(assert (= (and b!1368180 res!911810) b!1368183))

(assert (= (and b!1368183 res!911817) b!1368188))

(declare-fun m!1252231 () Bool)

(assert (=> b!1368187 m!1252231))

(declare-fun m!1252233 () Bool)

(assert (=> b!1368178 m!1252233))

(declare-fun m!1252235 () Bool)

(assert (=> b!1368184 m!1252235))

(declare-fun m!1252237 () Bool)

(assert (=> b!1368188 m!1252237))

(declare-fun m!1252239 () Bool)

(assert (=> b!1368180 m!1252239))

(assert (=> b!1368180 m!1252239))

(declare-fun m!1252241 () Bool)

(assert (=> b!1368180 m!1252241))

(declare-fun m!1252243 () Bool)

(assert (=> b!1368185 m!1252243))

(declare-fun m!1252245 () Bool)

(assert (=> b!1368185 m!1252245))

(declare-fun m!1252247 () Bool)

(assert (=> b!1368186 m!1252247))

(declare-fun m!1252249 () Bool)

(assert (=> b!1368179 m!1252249))

(declare-fun m!1252251 () Bool)

(assert (=> start!115748 m!1252251))

(declare-fun m!1252253 () Bool)

(assert (=> b!1368181 m!1252253))

(push 1)

