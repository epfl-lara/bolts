; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115836 () Bool)

(assert start!115836)

(declare-fun b!1369054 () Bool)

(declare-fun res!912658 () Bool)

(declare-fun e!775608 () Bool)

(assert (=> b!1369054 (=> (not res!912658) (not e!775608))))

(declare-fun from!3239 () (_ BitVec 32))

(declare-datatypes ((array!92906 0))(
  ( (array!92907 (arr!44871 (Array (_ BitVec 32) (_ BitVec 64))) (size!45422 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92906)

(assert (=> b!1369054 (= res!912658 (bvslt from!3239 (size!45422 a!3861)))))

(declare-fun b!1369055 () Bool)

(declare-fun res!912656 () Bool)

(declare-fun e!775607 () Bool)

(assert (=> b!1369055 (=> (not res!912656) (not e!775607))))

(declare-datatypes ((List!32119 0))(
  ( (Nil!32116) (Cons!32115 (h!33324 (_ BitVec 64)) (t!46820 List!32119)) )
))
(declare-fun acc!866 () List!32119)

(declare-fun contains!9657 (List!32119 (_ BitVec 64)) Bool)

(assert (=> b!1369055 (= res!912656 (not (contains!9657 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369056 () Bool)

(declare-fun res!912652 () Bool)

(assert (=> b!1369056 (=> (not res!912652) (not e!775608))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1369056 (= res!912652 (not (validKeyInArray!0 (select (arr!44871 a!3861) from!3239))))))

(declare-fun b!1369057 () Bool)

(declare-fun res!912659 () Bool)

(assert (=> b!1369057 (=> (not res!912659) (not e!775607))))

(declare-fun newAcc!98 () List!32119)

(assert (=> b!1369057 (= res!912659 (not (contains!9657 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369058 () Bool)

(declare-fun res!912660 () Bool)

(assert (=> b!1369058 (=> (not res!912660) (not e!775607))))

(assert (=> b!1369058 (= res!912660 (not (contains!9657 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369059 () Bool)

(declare-fun res!912661 () Bool)

(assert (=> b!1369059 (=> (not res!912661) (not e!775608))))

(declare-fun arrayNoDuplicates!0 (array!92906 (_ BitVec 32) List!32119) Bool)

(assert (=> b!1369059 (= res!912661 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) acc!866))))

(declare-fun b!1369060 () Bool)

(declare-fun res!912662 () Bool)

(assert (=> b!1369060 (=> (not res!912662) (not e!775607))))

(assert (=> b!1369060 (= res!912662 (not (contains!9657 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369053 () Bool)

(declare-fun res!912657 () Bool)

(assert (=> b!1369053 (=> (not res!912657) (not e!775607))))

(declare-fun noDuplicate!2536 (List!32119) Bool)

(assert (=> b!1369053 (= res!912657 (noDuplicate!2536 acc!866))))

(declare-fun res!912663 () Bool)

(assert (=> start!115836 (=> (not res!912663) (not e!775607))))

(assert (=> start!115836 (= res!912663 (and (bvslt (size!45422 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45422 a!3861))))))

(assert (=> start!115836 e!775607))

(declare-fun array_inv!33816 (array!92906) Bool)

(assert (=> start!115836 (array_inv!33816 a!3861)))

(assert (=> start!115836 true))

(declare-fun b!1369061 () Bool)

(declare-fun res!912654 () Bool)

(assert (=> b!1369061 (=> (not res!912654) (not e!775607))))

(declare-fun subseq!1048 (List!32119 List!32119) Bool)

(assert (=> b!1369061 (= res!912654 (subseq!1048 newAcc!98 acc!866))))

(declare-fun b!1369062 () Bool)

(assert (=> b!1369062 (= e!775607 e!775608)))

(declare-fun res!912655 () Bool)

(assert (=> b!1369062 (=> (not res!912655) (not e!775608))))

(assert (=> b!1369062 (= res!912655 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45177 0))(
  ( (Unit!45178) )
))
(declare-fun lt!602135 () Unit!45177)

(declare-fun noDuplicateSubseq!235 (List!32119 List!32119) Unit!45177)

(assert (=> b!1369062 (= lt!602135 (noDuplicateSubseq!235 newAcc!98 acc!866))))

(declare-fun b!1369063 () Bool)

(assert (=> b!1369063 (= e!775608 (not true))))

(declare-fun lt!602133 () Bool)

(assert (=> b!1369063 (= lt!602133 (noDuplicate!2536 newAcc!98))))

(assert (=> b!1369063 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) newAcc!98)))

(declare-fun lt!602134 () Unit!45177)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92906 List!32119 List!32119 (_ BitVec 32)) Unit!45177)

(assert (=> b!1369063 (= lt!602134 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3861 acc!866 newAcc!98 (bvadd #b00000000000000000000000000000001 from!3239)))))

(declare-fun b!1369064 () Bool)

(declare-fun res!912653 () Bool)

(assert (=> b!1369064 (=> (not res!912653) (not e!775608))))

(assert (=> b!1369064 (= res!912653 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(assert (= (and start!115836 res!912663) b!1369053))

(assert (= (and b!1369053 res!912657) b!1369055))

(assert (= (and b!1369055 res!912656) b!1369058))

(assert (= (and b!1369058 res!912660) b!1369057))

(assert (= (and b!1369057 res!912659) b!1369060))

(assert (= (and b!1369060 res!912662) b!1369061))

(assert (= (and b!1369061 res!912654) b!1369062))

(assert (= (and b!1369062 res!912655) b!1369054))

(assert (= (and b!1369054 res!912658) b!1369056))

(assert (= (and b!1369056 res!912652) b!1369064))

(assert (= (and b!1369064 res!912653) b!1369059))

(assert (= (and b!1369059 res!912661) b!1369063))

(declare-fun m!1252921 () Bool)

(assert (=> b!1369055 m!1252921))

(declare-fun m!1252923 () Bool)

(assert (=> b!1369059 m!1252923))

(declare-fun m!1252925 () Bool)

(assert (=> b!1369058 m!1252925))

(declare-fun m!1252927 () Bool)

(assert (=> b!1369053 m!1252927))

(declare-fun m!1252929 () Bool)

(assert (=> b!1369056 m!1252929))

(assert (=> b!1369056 m!1252929))

(declare-fun m!1252931 () Bool)

(assert (=> b!1369056 m!1252931))

(declare-fun m!1252933 () Bool)

(assert (=> b!1369063 m!1252933))

(declare-fun m!1252935 () Bool)

(assert (=> b!1369063 m!1252935))

(declare-fun m!1252937 () Bool)

(assert (=> b!1369063 m!1252937))

(declare-fun m!1252939 () Bool)

(assert (=> b!1369061 m!1252939))

(declare-fun m!1252941 () Bool)

(assert (=> start!115836 m!1252941))

(declare-fun m!1252943 () Bool)

(assert (=> b!1369062 m!1252943))

(declare-fun m!1252945 () Bool)

(assert (=> b!1369062 m!1252945))

(declare-fun m!1252947 () Bool)

(assert (=> b!1369060 m!1252947))

(declare-fun m!1252949 () Bool)

(assert (=> b!1369057 m!1252949))

(push 1)

