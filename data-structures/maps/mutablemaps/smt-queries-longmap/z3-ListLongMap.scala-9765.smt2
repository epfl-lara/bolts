; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115750 () Bool)

(assert start!115750)

(declare-fun b!1368211 () Bool)

(declare-fun e!775272 () Bool)

(declare-fun e!775271 () Bool)

(assert (=> b!1368211 (= e!775272 e!775271)))

(declare-fun res!911844 () Bool)

(assert (=> b!1368211 (=> (not res!911844) (not e!775271))))

(declare-datatypes ((array!92865 0))(
  ( (array!92866 (arr!44852 (Array (_ BitVec 32) (_ BitVec 64))) (size!45403 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92865)

(declare-fun from!3239 () (_ BitVec 32))

(declare-datatypes ((List!32100 0))(
  ( (Nil!32097) (Cons!32096 (h!33305 (_ BitVec 64)) (t!46801 List!32100)) )
))
(declare-fun acc!866 () List!32100)

(declare-fun arrayNoDuplicates!0 (array!92865 (_ BitVec 32) List!32100) Bool)

(assert (=> b!1368211 (= res!911844 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45139 0))(
  ( (Unit!45140) )
))
(declare-fun lt!601975 () Unit!45139)

(declare-fun newAcc!98 () List!32100)

(declare-fun noDuplicateSubseq!216 (List!32100 List!32100) Unit!45139)

(assert (=> b!1368211 (= lt!601975 (noDuplicateSubseq!216 newAcc!98 acc!866))))

(declare-fun b!1368212 () Bool)

(declare-fun res!911841 () Bool)

(assert (=> b!1368212 (=> (not res!911841) (not e!775271))))

(assert (=> b!1368212 (= res!911841 (bvslt from!3239 (size!45403 a!3861)))))

(declare-fun res!911847 () Bool)

(assert (=> start!115750 (=> (not res!911847) (not e!775272))))

(assert (=> start!115750 (= res!911847 (and (bvslt (size!45403 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45403 a!3861))))))

(assert (=> start!115750 e!775272))

(declare-fun array_inv!33797 (array!92865) Bool)

(assert (=> start!115750 (array_inv!33797 a!3861)))

(assert (=> start!115750 true))

(declare-fun b!1368213 () Bool)

(declare-fun res!911845 () Bool)

(assert (=> b!1368213 (=> (not res!911845) (not e!775272))))

(declare-fun contains!9638 (List!32100 (_ BitVec 64)) Bool)

(assert (=> b!1368213 (= res!911845 (not (contains!9638 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368214 () Bool)

(assert (=> b!1368214 (= e!775271 false)))

(declare-fun lt!601976 () Bool)

(assert (=> b!1368214 (= lt!601976 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) acc!866))))

(declare-fun b!1368215 () Bool)

(declare-fun res!911850 () Bool)

(assert (=> b!1368215 (=> (not res!911850) (not e!775271))))

(assert (=> b!1368215 (= res!911850 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-fun b!1368216 () Bool)

(declare-fun res!911846 () Bool)

(assert (=> b!1368216 (=> (not res!911846) (not e!775272))))

(declare-fun noDuplicate!2517 (List!32100) Bool)

(assert (=> b!1368216 (= res!911846 (noDuplicate!2517 acc!866))))

(declare-fun b!1368217 () Bool)

(declare-fun res!911848 () Bool)

(assert (=> b!1368217 (=> (not res!911848) (not e!775271))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1368217 (= res!911848 (not (validKeyInArray!0 (select (arr!44852 a!3861) from!3239))))))

(declare-fun b!1368218 () Bool)

(declare-fun res!911842 () Bool)

(assert (=> b!1368218 (=> (not res!911842) (not e!775272))))

(assert (=> b!1368218 (= res!911842 (not (contains!9638 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368219 () Bool)

(declare-fun res!911840 () Bool)

(assert (=> b!1368219 (=> (not res!911840) (not e!775272))))

(declare-fun subseq!1029 (List!32100 List!32100) Bool)

(assert (=> b!1368219 (= res!911840 (subseq!1029 newAcc!98 acc!866))))

(declare-fun b!1368220 () Bool)

(declare-fun res!911843 () Bool)

(assert (=> b!1368220 (=> (not res!911843) (not e!775272))))

(assert (=> b!1368220 (= res!911843 (not (contains!9638 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368221 () Bool)

(declare-fun res!911849 () Bool)

(assert (=> b!1368221 (=> (not res!911849) (not e!775272))))

(assert (=> b!1368221 (= res!911849 (not (contains!9638 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115750 res!911847) b!1368216))

(assert (= (and b!1368216 res!911846) b!1368218))

(assert (= (and b!1368218 res!911842) b!1368221))

(assert (= (and b!1368221 res!911849) b!1368220))

(assert (= (and b!1368220 res!911843) b!1368213))

(assert (= (and b!1368213 res!911845) b!1368219))

(assert (= (and b!1368219 res!911840) b!1368211))

(assert (= (and b!1368211 res!911844) b!1368212))

(assert (= (and b!1368212 res!911841) b!1368217))

(assert (= (and b!1368217 res!911848) b!1368215))

(assert (= (and b!1368215 res!911850) b!1368214))

(declare-fun m!1252255 () Bool)

(assert (=> b!1368214 m!1252255))

(declare-fun m!1252257 () Bool)

(assert (=> b!1368221 m!1252257))

(declare-fun m!1252259 () Bool)

(assert (=> b!1368213 m!1252259))

(declare-fun m!1252261 () Bool)

(assert (=> b!1368220 m!1252261))

(declare-fun m!1252263 () Bool)

(assert (=> start!115750 m!1252263))

(declare-fun m!1252265 () Bool)

(assert (=> b!1368218 m!1252265))

(declare-fun m!1252267 () Bool)

(assert (=> b!1368219 m!1252267))

(declare-fun m!1252269 () Bool)

(assert (=> b!1368217 m!1252269))

(assert (=> b!1368217 m!1252269))

(declare-fun m!1252271 () Bool)

(assert (=> b!1368217 m!1252271))

(declare-fun m!1252273 () Bool)

(assert (=> b!1368216 m!1252273))

(declare-fun m!1252275 () Bool)

(assert (=> b!1368211 m!1252275))

(declare-fun m!1252277 () Bool)

(assert (=> b!1368211 m!1252277))

(check-sat (not b!1368213) (not start!115750) (not b!1368218) (not b!1368214) (not b!1368221) (not b!1368211) (not b!1368217) (not b!1368220) (not b!1368219) (not b!1368216))
(check-sat)
