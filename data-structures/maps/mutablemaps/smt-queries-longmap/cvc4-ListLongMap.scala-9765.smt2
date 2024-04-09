; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115752 () Bool)

(assert start!115752)

(declare-fun b!1368244 () Bool)

(declare-fun res!911882 () Bool)

(declare-fun e!775281 () Bool)

(assert (=> b!1368244 (=> (not res!911882) (not e!775281))))

(declare-datatypes ((List!32101 0))(
  ( (Nil!32098) (Cons!32097 (h!33306 (_ BitVec 64)) (t!46802 List!32101)) )
))
(declare-fun acc!866 () List!32101)

(declare-fun noDuplicate!2518 (List!32101) Bool)

(assert (=> b!1368244 (= res!911882 (noDuplicate!2518 acc!866))))

(declare-fun b!1368245 () Bool)

(declare-fun res!911881 () Bool)

(declare-fun e!775280 () Bool)

(assert (=> b!1368245 (=> (not res!911881) (not e!775280))))

(declare-fun from!3239 () (_ BitVec 32))

(declare-datatypes ((array!92867 0))(
  ( (array!92868 (arr!44853 (Array (_ BitVec 32) (_ BitVec 64))) (size!45404 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92867)

(assert (=> b!1368245 (= res!911881 (bvslt from!3239 (size!45404 a!3861)))))

(declare-fun b!1368246 () Bool)

(declare-fun res!911873 () Bool)

(assert (=> b!1368246 (=> (not res!911873) (not e!775281))))

(declare-fun newAcc!98 () List!32101)

(declare-fun contains!9639 (List!32101 (_ BitVec 64)) Bool)

(assert (=> b!1368246 (= res!911873 (not (contains!9639 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368247 () Bool)

(declare-fun res!911880 () Bool)

(assert (=> b!1368247 (=> (not res!911880) (not e!775280))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1368247 (= res!911880 (not (validKeyInArray!0 (select (arr!44853 a!3861) from!3239))))))

(declare-fun b!1368248 () Bool)

(declare-fun res!911877 () Bool)

(assert (=> b!1368248 (=> (not res!911877) (not e!775281))))

(assert (=> b!1368248 (= res!911877 (not (contains!9639 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!911875 () Bool)

(assert (=> start!115752 (=> (not res!911875) (not e!775281))))

(assert (=> start!115752 (= res!911875 (and (bvslt (size!45404 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45404 a!3861))))))

(assert (=> start!115752 e!775281))

(declare-fun array_inv!33798 (array!92867) Bool)

(assert (=> start!115752 (array_inv!33798 a!3861)))

(assert (=> start!115752 true))

(declare-fun b!1368249 () Bool)

(assert (=> b!1368249 (= e!775281 e!775280)))

(declare-fun res!911883 () Bool)

(assert (=> b!1368249 (=> (not res!911883) (not e!775280))))

(declare-fun arrayNoDuplicates!0 (array!92867 (_ BitVec 32) List!32101) Bool)

(assert (=> b!1368249 (= res!911883 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45141 0))(
  ( (Unit!45142) )
))
(declare-fun lt!601981 () Unit!45141)

(declare-fun noDuplicateSubseq!217 (List!32101 List!32101) Unit!45141)

(assert (=> b!1368249 (= lt!601981 (noDuplicateSubseq!217 newAcc!98 acc!866))))

(declare-fun b!1368250 () Bool)

(declare-fun res!911879 () Bool)

(assert (=> b!1368250 (=> (not res!911879) (not e!775280))))

(assert (=> b!1368250 (= res!911879 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-fun b!1368251 () Bool)

(declare-fun res!911874 () Bool)

(assert (=> b!1368251 (=> (not res!911874) (not e!775281))))

(assert (=> b!1368251 (= res!911874 (not (contains!9639 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368252 () Bool)

(declare-fun res!911878 () Bool)

(assert (=> b!1368252 (=> (not res!911878) (not e!775281))))

(declare-fun subseq!1030 (List!32101 List!32101) Bool)

(assert (=> b!1368252 (= res!911878 (subseq!1030 newAcc!98 acc!866))))

(declare-fun b!1368253 () Bool)

(assert (=> b!1368253 (= e!775280 false)))

(declare-fun lt!601982 () Bool)

(assert (=> b!1368253 (= lt!601982 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) acc!866))))

(declare-fun b!1368254 () Bool)

(declare-fun res!911876 () Bool)

(assert (=> b!1368254 (=> (not res!911876) (not e!775281))))

(assert (=> b!1368254 (= res!911876 (not (contains!9639 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115752 res!911875) b!1368244))

(assert (= (and b!1368244 res!911882) b!1368254))

(assert (= (and b!1368254 res!911876) b!1368251))

(assert (= (and b!1368251 res!911874) b!1368248))

(assert (= (and b!1368248 res!911877) b!1368246))

(assert (= (and b!1368246 res!911873) b!1368252))

(assert (= (and b!1368252 res!911878) b!1368249))

(assert (= (and b!1368249 res!911883) b!1368245))

(assert (= (and b!1368245 res!911881) b!1368247))

(assert (= (and b!1368247 res!911880) b!1368250))

(assert (= (and b!1368250 res!911879) b!1368253))

(declare-fun m!1252279 () Bool)

(assert (=> b!1368249 m!1252279))

(declare-fun m!1252281 () Bool)

(assert (=> b!1368249 m!1252281))

(declare-fun m!1252283 () Bool)

(assert (=> b!1368254 m!1252283))

(declare-fun m!1252285 () Bool)

(assert (=> b!1368244 m!1252285))

(declare-fun m!1252287 () Bool)

(assert (=> b!1368246 m!1252287))

(declare-fun m!1252289 () Bool)

(assert (=> b!1368247 m!1252289))

(assert (=> b!1368247 m!1252289))

(declare-fun m!1252291 () Bool)

(assert (=> b!1368247 m!1252291))

(declare-fun m!1252293 () Bool)

(assert (=> b!1368253 m!1252293))

(declare-fun m!1252295 () Bool)

(assert (=> b!1368248 m!1252295))

(declare-fun m!1252297 () Bool)

(assert (=> b!1368251 m!1252297))

(declare-fun m!1252299 () Bool)

(assert (=> start!115752 m!1252299))

(declare-fun m!1252301 () Bool)

(assert (=> b!1368252 m!1252301))

(push 1)

(assert (not b!1368244))

(assert (not b!1368248))

