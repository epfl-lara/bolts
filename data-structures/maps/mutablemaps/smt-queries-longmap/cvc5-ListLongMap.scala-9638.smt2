; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114002 () Bool)

(assert start!114002)

(declare-fun res!897475 () Bool)

(declare-fun e!768655 () Bool)

(assert (=> start!114002 (=> (not res!897475) (not e!768655))))

(declare-datatypes ((array!92107 0))(
  ( (array!92108 (arr!44497 (Array (_ BitVec 32) (_ BitVec 64))) (size!45048 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92107)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114002 (= res!897475 (and (bvslt (size!45048 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45048 a!3742))))))

(assert (=> start!114002 e!768655))

(assert (=> start!114002 true))

(declare-fun array_inv!33442 (array!92107) Bool)

(assert (=> start!114002 (array_inv!33442 a!3742)))

(declare-fun b!1351953 () Bool)

(declare-fun res!897474 () Bool)

(assert (=> b!1351953 (=> (not res!897474) (not e!768655))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1351953 (= res!897474 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1351954 () Bool)

(declare-fun res!897477 () Bool)

(assert (=> b!1351954 (=> (not res!897477) (not e!768655))))

(declare-datatypes ((List!31718 0))(
  ( (Nil!31715) (Cons!31714 (h!32923 (_ BitVec 64)) (t!46383 List!31718)) )
))
(declare-fun arrayNoDuplicates!0 (array!92107 (_ BitVec 32) List!31718) Bool)

(assert (=> b!1351954 (= res!897477 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31715))))

(declare-fun b!1351955 () Bool)

(declare-fun res!897478 () Bool)

(assert (=> b!1351955 (=> (not res!897478) (not e!768655))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1351955 (= res!897478 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45048 a!3742))))))

(declare-fun b!1351956 () Bool)

(declare-fun res!897479 () Bool)

(assert (=> b!1351956 (=> (not res!897479) (not e!768655))))

(assert (=> b!1351956 (= res!897479 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45048 a!3742)))))

(declare-fun b!1351957 () Bool)

(declare-fun res!897481 () Bool)

(assert (=> b!1351957 (=> (not res!897481) (not e!768655))))

(declare-fun acc!759 () List!31718)

(assert (=> b!1351957 (= res!897481 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1351958 () Bool)

(declare-datatypes ((Unit!44255 0))(
  ( (Unit!44256) )
))
(declare-fun e!768652 () Unit!44255)

(declare-fun Unit!44257 () Unit!44255)

(assert (=> b!1351958 (= e!768652 Unit!44257)))

(declare-fun b!1351959 () Bool)

(declare-fun lt!597347 () Unit!44255)

(assert (=> b!1351959 (= e!768652 lt!597347)))

(declare-fun lt!597348 () Unit!44255)

(declare-fun lemmaListSubSeqRefl!0 (List!31718) Unit!44255)

(assert (=> b!1351959 (= lt!597348 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!692 (List!31718 List!31718) Bool)

(assert (=> b!1351959 (subseq!692 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92107 List!31718 List!31718 (_ BitVec 32)) Unit!44255)

(declare-fun $colon$colon!709 (List!31718 (_ BitVec 64)) List!31718)

(assert (=> b!1351959 (= lt!597347 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!709 acc!759 (select (arr!44497 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1351959 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1351960 () Bool)

(declare-fun e!768653 () Bool)

(assert (=> b!1351960 (= e!768653 false)))

(declare-fun lt!597350 () Bool)

(assert (=> b!1351960 (= lt!597350 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1351961 () Bool)

(assert (=> b!1351961 (= e!768655 e!768653)))

(declare-fun res!897480 () Bool)

(assert (=> b!1351961 (=> (not res!897480) (not e!768653))))

(assert (=> b!1351961 (= res!897480 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!597349 () Unit!44255)

(assert (=> b!1351961 (= lt!597349 e!768652)))

(declare-fun c!126682 () Bool)

(assert (=> b!1351961 (= c!126682 (validKeyInArray!0 (select (arr!44497 a!3742) from!3120)))))

(declare-fun b!1351962 () Bool)

(declare-fun res!897482 () Bool)

(assert (=> b!1351962 (=> (not res!897482) (not e!768655))))

(declare-fun noDuplicate!2162 (List!31718) Bool)

(assert (=> b!1351962 (= res!897482 (noDuplicate!2162 acc!759))))

(declare-fun b!1351963 () Bool)

(declare-fun res!897476 () Bool)

(assert (=> b!1351963 (=> (not res!897476) (not e!768655))))

(declare-fun contains!9283 (List!31718 (_ BitVec 64)) Bool)

(assert (=> b!1351963 (= res!897476 (not (contains!9283 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1351964 () Bool)

(declare-fun res!897483 () Bool)

(assert (=> b!1351964 (=> (not res!897483) (not e!768655))))

(assert (=> b!1351964 (= res!897483 (not (contains!9283 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!114002 res!897475) b!1351962))

(assert (= (and b!1351962 res!897482) b!1351964))

(assert (= (and b!1351964 res!897483) b!1351963))

(assert (= (and b!1351963 res!897476) b!1351954))

(assert (= (and b!1351954 res!897477) b!1351957))

(assert (= (and b!1351957 res!897481) b!1351955))

(assert (= (and b!1351955 res!897478) b!1351953))

(assert (= (and b!1351953 res!897474) b!1351956))

(assert (= (and b!1351956 res!897479) b!1351961))

(assert (= (and b!1351961 c!126682) b!1351959))

(assert (= (and b!1351961 (not c!126682)) b!1351958))

(assert (= (and b!1351961 res!897480) b!1351960))

(declare-fun m!1238893 () Bool)

(assert (=> b!1351964 m!1238893))

(declare-fun m!1238895 () Bool)

(assert (=> b!1351959 m!1238895))

(declare-fun m!1238897 () Bool)

(assert (=> b!1351959 m!1238897))

(declare-fun m!1238899 () Bool)

(assert (=> b!1351959 m!1238899))

(declare-fun m!1238901 () Bool)

(assert (=> b!1351959 m!1238901))

(declare-fun m!1238903 () Bool)

(assert (=> b!1351959 m!1238903))

(assert (=> b!1351959 m!1238897))

(assert (=> b!1351959 m!1238899))

(declare-fun m!1238905 () Bool)

(assert (=> b!1351959 m!1238905))

(declare-fun m!1238907 () Bool)

(assert (=> b!1351957 m!1238907))

(declare-fun m!1238909 () Bool)

(assert (=> b!1351962 m!1238909))

(declare-fun m!1238911 () Bool)

(assert (=> start!114002 m!1238911))

(declare-fun m!1238913 () Bool)

(assert (=> b!1351953 m!1238913))

(assert (=> b!1351960 m!1238903))

(declare-fun m!1238915 () Bool)

(assert (=> b!1351963 m!1238915))

(declare-fun m!1238917 () Bool)

(assert (=> b!1351954 m!1238917))

(assert (=> b!1351961 m!1238897))

(assert (=> b!1351961 m!1238897))

(declare-fun m!1238919 () Bool)

(assert (=> b!1351961 m!1238919))

(push 1)

