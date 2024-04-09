; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115186 () Bool)

(assert start!115186)

(declare-fun b!1364089 () Bool)

(declare-fun res!907896 () Bool)

(declare-fun e!773584 () Bool)

(assert (=> b!1364089 (=> (not res!907896) (not e!773584))))

(declare-datatypes ((List!31986 0))(
  ( (Nil!31983) (Cons!31982 (h!33191 (_ BitVec 64)) (t!46687 List!31986)) )
))
(declare-fun acc!759 () List!31986)

(declare-fun contains!9551 (List!31986 (_ BitVec 64)) Bool)

(assert (=> b!1364089 (= res!907896 (not (contains!9551 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1364090 () Bool)

(declare-fun res!907892 () Bool)

(assert (=> b!1364090 (=> (not res!907892) (not e!773584))))

(assert (=> b!1364090 (= res!907892 (not (contains!9551 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1364092 () Bool)

(declare-fun res!907895 () Bool)

(assert (=> b!1364092 (=> (not res!907895) (not e!773584))))

(declare-fun noDuplicate!2430 (List!31986) Bool)

(assert (=> b!1364092 (= res!907895 (noDuplicate!2430 acc!759))))

(declare-fun b!1364093 () Bool)

(assert (=> b!1364093 (= e!773584 false)))

(declare-fun lt!600953 () Bool)

(declare-datatypes ((array!92679 0))(
  ( (array!92680 (arr!44765 (Array (_ BitVec 32) (_ BitVec 64))) (size!45316 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92679)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92679 (_ BitVec 32) List!31986) Bool)

(assert (=> b!1364093 (= lt!600953 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun res!907893 () Bool)

(assert (=> start!115186 (=> (not res!907893) (not e!773584))))

(assert (=> start!115186 (= res!907893 (and (bvslt (size!45316 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45316 a!3742))))))

(assert (=> start!115186 e!773584))

(declare-fun array_inv!33710 (array!92679) Bool)

(assert (=> start!115186 (array_inv!33710 a!3742)))

(assert (=> start!115186 true))

(declare-fun b!1364091 () Bool)

(declare-fun res!907894 () Bool)

(assert (=> b!1364091 (=> (not res!907894) (not e!773584))))

(assert (=> b!1364091 (= res!907894 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31983))))

(assert (= (and start!115186 res!907893) b!1364092))

(assert (= (and b!1364092 res!907895) b!1364089))

(assert (= (and b!1364089 res!907896) b!1364090))

(assert (= (and b!1364090 res!907892) b!1364091))

(assert (= (and b!1364091 res!907894) b!1364093))

(declare-fun m!1248841 () Bool)

(assert (=> start!115186 m!1248841))

(declare-fun m!1248843 () Bool)

(assert (=> b!1364089 m!1248843))

(declare-fun m!1248845 () Bool)

(assert (=> b!1364093 m!1248845))

(declare-fun m!1248847 () Bool)

(assert (=> b!1364091 m!1248847))

(declare-fun m!1248849 () Bool)

(assert (=> b!1364092 m!1248849))

(declare-fun m!1248851 () Bool)

(assert (=> b!1364090 m!1248851))

(check-sat (not start!115186) (not b!1364089) (not b!1364092) (not b!1364090) (not b!1364091) (not b!1364093))
