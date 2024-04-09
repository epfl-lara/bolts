; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115726 () Bool)

(assert start!115726)

(declare-fun b!1367815 () Bool)

(declare-fun e!775164 () Bool)

(declare-fun e!775163 () Bool)

(assert (=> b!1367815 (= e!775164 e!775163)))

(declare-fun res!911444 () Bool)

(assert (=> b!1367815 (=> (not res!911444) (not e!775163))))

(declare-datatypes ((array!92841 0))(
  ( (array!92842 (arr!44840 (Array (_ BitVec 32) (_ BitVec 64))) (size!45391 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92841)

(declare-fun from!3239 () (_ BitVec 32))

(declare-datatypes ((List!32088 0))(
  ( (Nil!32085) (Cons!32084 (h!33293 (_ BitVec 64)) (t!46789 List!32088)) )
))
(declare-fun acc!866 () List!32088)

(declare-fun arrayNoDuplicates!0 (array!92841 (_ BitVec 32) List!32088) Bool)

(assert (=> b!1367815 (= res!911444 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45115 0))(
  ( (Unit!45116) )
))
(declare-fun lt!601903 () Unit!45115)

(declare-fun newAcc!98 () List!32088)

(declare-fun noDuplicateSubseq!204 (List!32088 List!32088) Unit!45115)

(assert (=> b!1367815 (= lt!601903 (noDuplicateSubseq!204 newAcc!98 acc!866))))

(declare-fun b!1367816 () Bool)

(declare-fun res!911453 () Bool)

(assert (=> b!1367816 (=> (not res!911453) (not e!775164))))

(declare-fun noDuplicate!2505 (List!32088) Bool)

(assert (=> b!1367816 (= res!911453 (noDuplicate!2505 acc!866))))

(declare-fun b!1367817 () Bool)

(declare-fun res!911452 () Bool)

(assert (=> b!1367817 (=> (not res!911452) (not e!775163))))

(assert (=> b!1367817 (= res!911452 (bvslt from!3239 (size!45391 a!3861)))))

(declare-fun res!911446 () Bool)

(assert (=> start!115726 (=> (not res!911446) (not e!775164))))

(assert (=> start!115726 (= res!911446 (and (bvslt (size!45391 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45391 a!3861))))))

(assert (=> start!115726 e!775164))

(declare-fun array_inv!33785 (array!92841) Bool)

(assert (=> start!115726 (array_inv!33785 a!3861)))

(assert (=> start!115726 true))

(declare-fun b!1367818 () Bool)

(declare-fun res!911454 () Bool)

(assert (=> b!1367818 (=> (not res!911454) (not e!775164))))

(declare-fun contains!9626 (List!32088 (_ BitVec 64)) Bool)

(assert (=> b!1367818 (= res!911454 (not (contains!9626 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367819 () Bool)

(declare-fun res!911447 () Bool)

(assert (=> b!1367819 (=> (not res!911447) (not e!775164))))

(assert (=> b!1367819 (= res!911447 (not (contains!9626 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367820 () Bool)

(declare-fun res!911451 () Bool)

(assert (=> b!1367820 (=> (not res!911451) (not e!775164))))

(declare-fun subseq!1017 (List!32088 List!32088) Bool)

(assert (=> b!1367820 (= res!911451 (subseq!1017 newAcc!98 acc!866))))

(declare-fun b!1367821 () Bool)

(declare-fun res!911449 () Bool)

(assert (=> b!1367821 (=> (not res!911449) (not e!775163))))

(assert (=> b!1367821 (= res!911449 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-fun b!1367822 () Bool)

(declare-fun res!911450 () Bool)

(assert (=> b!1367822 (=> (not res!911450) (not e!775164))))

(assert (=> b!1367822 (= res!911450 (not (contains!9626 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367823 () Bool)

(declare-fun res!911448 () Bool)

(assert (=> b!1367823 (=> (not res!911448) (not e!775163))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1367823 (= res!911448 (not (validKeyInArray!0 (select (arr!44840 a!3861) from!3239))))))

(declare-fun b!1367824 () Bool)

(assert (=> b!1367824 (= e!775163 false)))

(declare-fun lt!601904 () Bool)

(assert (=> b!1367824 (= lt!601904 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) acc!866))))

(declare-fun b!1367825 () Bool)

(declare-fun res!911445 () Bool)

(assert (=> b!1367825 (=> (not res!911445) (not e!775164))))

(assert (=> b!1367825 (= res!911445 (not (contains!9626 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115726 res!911446) b!1367816))

(assert (= (and b!1367816 res!911453) b!1367818))

(assert (= (and b!1367818 res!911454) b!1367822))

(assert (= (and b!1367822 res!911450) b!1367825))

(assert (= (and b!1367825 res!911445) b!1367819))

(assert (= (and b!1367819 res!911447) b!1367820))

(assert (= (and b!1367820 res!911451) b!1367815))

(assert (= (and b!1367815 res!911444) b!1367817))

(assert (= (and b!1367817 res!911452) b!1367823))

(assert (= (and b!1367823 res!911448) b!1367821))

(assert (= (and b!1367821 res!911449) b!1367824))

(declare-fun m!1251967 () Bool)

(assert (=> start!115726 m!1251967))

(declare-fun m!1251969 () Bool)

(assert (=> b!1367818 m!1251969))

(declare-fun m!1251971 () Bool)

(assert (=> b!1367824 m!1251971))

(declare-fun m!1251973 () Bool)

(assert (=> b!1367823 m!1251973))

(assert (=> b!1367823 m!1251973))

(declare-fun m!1251975 () Bool)

(assert (=> b!1367823 m!1251975))

(declare-fun m!1251977 () Bool)

(assert (=> b!1367820 m!1251977))

(declare-fun m!1251979 () Bool)

(assert (=> b!1367819 m!1251979))

(declare-fun m!1251981 () Bool)

(assert (=> b!1367815 m!1251981))

(declare-fun m!1251983 () Bool)

(assert (=> b!1367815 m!1251983))

(declare-fun m!1251985 () Bool)

(assert (=> b!1367825 m!1251985))

(declare-fun m!1251987 () Bool)

(assert (=> b!1367822 m!1251987))

(declare-fun m!1251989 () Bool)

(assert (=> b!1367816 m!1251989))

(check-sat (not b!1367819) (not b!1367822) (not b!1367818) (not b!1367820) (not b!1367816) (not b!1367824) (not b!1367815) (not b!1367825) (not b!1367823) (not start!115726))
(check-sat)
