; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116310 () Bool)

(assert start!116310)

(declare-fun b!1372610 () Bool)

(declare-fun res!916001 () Bool)

(declare-fun e!777643 () Bool)

(assert (=> b!1372610 (=> (not res!916001) (not e!777643))))

(declare-datatypes ((List!32179 0))(
  ( (Nil!32176) (Cons!32175 (h!33384 (_ BitVec 64)) (t!46880 List!32179)) )
))
(declare-fun newAcc!98 () List!32179)

(declare-fun contains!9717 (List!32179 (_ BitVec 64)) Bool)

(assert (=> b!1372610 (= res!916001 (not (contains!9717 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372611 () Bool)

(declare-fun res!915999 () Bool)

(assert (=> b!1372611 (=> (not res!915999) (not e!777643))))

(assert (=> b!1372611 (= res!915999 (not (contains!9717 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!916004 () Bool)

(assert (=> start!116310 (=> (not res!916004) (not e!777643))))

(declare-datatypes ((array!93050 0))(
  ( (array!93051 (arr!44931 (Array (_ BitVec 32) (_ BitVec 64))) (size!45482 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!93050)

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> start!116310 (= res!916004 (and (bvslt (size!45482 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45482 a!3861))))))

(assert (=> start!116310 e!777643))

(declare-fun array_inv!33876 (array!93050) Bool)

(assert (=> start!116310 (array_inv!33876 a!3861)))

(assert (=> start!116310 true))

(declare-fun b!1372612 () Bool)

(declare-fun res!916000 () Bool)

(assert (=> b!1372612 (=> (not res!916000) (not e!777643))))

(declare-fun acc!866 () List!32179)

(declare-fun noDuplicate!2596 (List!32179) Bool)

(assert (=> b!1372612 (= res!916000 (noDuplicate!2596 acc!866))))

(declare-fun b!1372613 () Bool)

(declare-fun res!916003 () Bool)

(assert (=> b!1372613 (=> (not res!916003) (not e!777643))))

(assert (=> b!1372613 (= res!916003 (not (contains!9717 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372614 () Bool)

(declare-fun res!916005 () Bool)

(assert (=> b!1372614 (=> (not res!916005) (not e!777643))))

(assert (=> b!1372614 (= res!916005 (not (contains!9717 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372615 () Bool)

(declare-fun res!916002 () Bool)

(assert (=> b!1372615 (=> (not res!916002) (not e!777643))))

(declare-fun subseq!1108 (List!32179 List!32179) Bool)

(assert (=> b!1372615 (= res!916002 (subseq!1108 newAcc!98 acc!866))))

(declare-fun b!1372616 () Bool)

(assert (=> b!1372616 (= e!777643 false)))

(declare-fun lt!602849 () Bool)

(declare-fun arrayNoDuplicates!0 (array!93050 (_ BitVec 32) List!32179) Bool)

(assert (=> b!1372616 (= lt!602849 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45297 0))(
  ( (Unit!45298) )
))
(declare-fun lt!602848 () Unit!45297)

(declare-fun noDuplicateSubseq!295 (List!32179 List!32179) Unit!45297)

(assert (=> b!1372616 (= lt!602848 (noDuplicateSubseq!295 newAcc!98 acc!866))))

(assert (= (and start!116310 res!916004) b!1372612))

(assert (= (and b!1372612 res!916000) b!1372613))

(assert (= (and b!1372613 res!916003) b!1372614))

(assert (= (and b!1372614 res!916005) b!1372611))

(assert (= (and b!1372611 res!915999) b!1372610))

(assert (= (and b!1372610 res!916001) b!1372615))

(assert (= (and b!1372615 res!916002) b!1372616))

(declare-fun m!1256047 () Bool)

(assert (=> b!1372614 m!1256047))

(declare-fun m!1256049 () Bool)

(assert (=> b!1372615 m!1256049))

(declare-fun m!1256051 () Bool)

(assert (=> b!1372613 m!1256051))

(declare-fun m!1256053 () Bool)

(assert (=> b!1372610 m!1256053))

(declare-fun m!1256055 () Bool)

(assert (=> b!1372612 m!1256055))

(declare-fun m!1256057 () Bool)

(assert (=> b!1372611 m!1256057))

(declare-fun m!1256059 () Bool)

(assert (=> start!116310 m!1256059))

(declare-fun m!1256061 () Bool)

(assert (=> b!1372616 m!1256061))

(declare-fun m!1256063 () Bool)

(assert (=> b!1372616 m!1256063))

(push 1)

(assert (not start!116310))

(assert (not b!1372610))

(assert (not b!1372611))

(assert (not b!1372613))

(assert (not b!1372612))

(assert (not b!1372615))

(assert (not b!1372616))

(assert (not b!1372614))

(check-sat)

(pop 1)

