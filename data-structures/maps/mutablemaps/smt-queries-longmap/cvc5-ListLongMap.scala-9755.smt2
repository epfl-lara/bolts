; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115646 () Bool)

(assert start!115646)

(declare-fun b!1367050 () Bool)

(declare-fun res!910702 () Bool)

(declare-fun e!774846 () Bool)

(assert (=> b!1367050 (=> (not res!910702) (not e!774846))))

(declare-datatypes ((array!92800 0))(
  ( (array!92801 (arr!44821 (Array (_ BitVec 32) (_ BitVec 64))) (size!45372 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92800)

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1367050 (= res!910702 (validKeyInArray!0 (select (arr!44821 a!3861) from!3239)))))

(declare-fun res!910703 () Bool)

(declare-fun e!774847 () Bool)

(assert (=> start!115646 (=> (not res!910703) (not e!774847))))

(assert (=> start!115646 (= res!910703 (and (bvslt (size!45372 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45372 a!3861))))))

(assert (=> start!115646 e!774847))

(declare-fun array_inv!33766 (array!92800) Bool)

(assert (=> start!115646 (array_inv!33766 a!3861)))

(assert (=> start!115646 true))

(declare-fun b!1367051 () Bool)

(assert (=> b!1367051 (= e!774847 e!774846)))

(declare-fun res!910701 () Bool)

(assert (=> b!1367051 (=> (not res!910701) (not e!774846))))

(declare-datatypes ((List!32069 0))(
  ( (Nil!32066) (Cons!32065 (h!33274 (_ BitVec 64)) (t!46770 List!32069)) )
))
(declare-fun acc!866 () List!32069)

(declare-fun arrayNoDuplicates!0 (array!92800 (_ BitVec 32) List!32069) Bool)

(assert (=> b!1367051 (= res!910701 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45077 0))(
  ( (Unit!45078) )
))
(declare-fun lt!601745 () Unit!45077)

(declare-fun newAcc!98 () List!32069)

(declare-fun noDuplicateSubseq!185 (List!32069 List!32069) Unit!45077)

(assert (=> b!1367051 (= lt!601745 (noDuplicateSubseq!185 newAcc!98 acc!866))))

(declare-fun b!1367052 () Bool)

(declare-fun res!910699 () Bool)

(assert (=> b!1367052 (=> (not res!910699) (not e!774847))))

(declare-fun contains!9607 (List!32069 (_ BitVec 64)) Bool)

(assert (=> b!1367052 (= res!910699 (not (contains!9607 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367053 () Bool)

(declare-fun res!910704 () Bool)

(assert (=> b!1367053 (=> (not res!910704) (not e!774847))))

(assert (=> b!1367053 (= res!910704 (not (contains!9607 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367054 () Bool)

(declare-fun res!910698 () Bool)

(assert (=> b!1367054 (=> (not res!910698) (not e!774846))))

(assert (=> b!1367054 (= res!910698 (bvslt from!3239 (size!45372 a!3861)))))

(declare-fun b!1367055 () Bool)

(assert (=> b!1367055 (= e!774846 (not true))))

(declare-fun lt!601742 () Bool)

(declare-fun noDuplicate!2486 (List!32069) Bool)

(assert (=> b!1367055 (= lt!601742 (noDuplicate!2486 newAcc!98))))

(declare-fun lt!601744 () Unit!45077)

(declare-fun lt!601740 () List!32069)

(declare-fun lt!601741 () List!32069)

(assert (=> b!1367055 (= lt!601744 (noDuplicateSubseq!185 lt!601740 lt!601741))))

(assert (=> b!1367055 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!601740)))

(declare-fun lt!601743 () Unit!45077)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92800 List!32069 List!32069 (_ BitVec 32)) Unit!45077)

(assert (=> b!1367055 (= lt!601743 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3861 lt!601741 lt!601740 (bvadd #b00000000000000000000000000000001 from!3239)))))

(assert (=> b!1367055 (= lt!601740 (Cons!32065 (select (arr!44821 a!3861) from!3239) newAcc!98))))

(assert (=> b!1367055 (= lt!601741 (Cons!32065 (select (arr!44821 a!3861) from!3239) acc!866))))

(declare-fun b!1367056 () Bool)

(declare-fun res!910707 () Bool)

(assert (=> b!1367056 (=> (not res!910707) (not e!774847))))

(assert (=> b!1367056 (= res!910707 (noDuplicate!2486 acc!866))))

(declare-fun b!1367057 () Bool)

(declare-fun res!910706 () Bool)

(assert (=> b!1367057 (=> (not res!910706) (not e!774846))))

(assert (=> b!1367057 (= res!910706 (not (contains!9607 acc!866 (select (arr!44821 a!3861) from!3239))))))

(declare-fun b!1367058 () Bool)

(declare-fun res!910705 () Bool)

(assert (=> b!1367058 (=> (not res!910705) (not e!774847))))

(assert (=> b!1367058 (= res!910705 (not (contains!9607 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367059 () Bool)

(declare-fun res!910697 () Bool)

(assert (=> b!1367059 (=> (not res!910697) (not e!774847))))

(declare-fun subseq!998 (List!32069 List!32069) Bool)

(assert (=> b!1367059 (= res!910697 (subseq!998 newAcc!98 acc!866))))

(declare-fun b!1367060 () Bool)

(declare-fun res!910700 () Bool)

(assert (=> b!1367060 (=> (not res!910700) (not e!774847))))

(assert (=> b!1367060 (= res!910700 (not (contains!9607 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115646 res!910703) b!1367056))

(assert (= (and b!1367056 res!910707) b!1367058))

(assert (= (and b!1367058 res!910705) b!1367052))

(assert (= (and b!1367052 res!910699) b!1367060))

(assert (= (and b!1367060 res!910700) b!1367053))

(assert (= (and b!1367053 res!910704) b!1367059))

(assert (= (and b!1367059 res!910697) b!1367051))

(assert (= (and b!1367051 res!910701) b!1367054))

(assert (= (and b!1367054 res!910698) b!1367050))

(assert (= (and b!1367050 res!910702) b!1367057))

(assert (= (and b!1367057 res!910706) b!1367055))

(declare-fun m!1251355 () Bool)

(assert (=> b!1367059 m!1251355))

(declare-fun m!1251357 () Bool)

(assert (=> b!1367057 m!1251357))

(assert (=> b!1367057 m!1251357))

(declare-fun m!1251359 () Bool)

(assert (=> b!1367057 m!1251359))

(declare-fun m!1251361 () Bool)

(assert (=> b!1367060 m!1251361))

(assert (=> b!1367050 m!1251357))

(assert (=> b!1367050 m!1251357))

(declare-fun m!1251363 () Bool)

(assert (=> b!1367050 m!1251363))

(declare-fun m!1251365 () Bool)

(assert (=> b!1367055 m!1251365))

(declare-fun m!1251367 () Bool)

(assert (=> b!1367055 m!1251367))

(assert (=> b!1367055 m!1251357))

(declare-fun m!1251369 () Bool)

(assert (=> b!1367055 m!1251369))

(declare-fun m!1251371 () Bool)

(assert (=> b!1367055 m!1251371))

(declare-fun m!1251373 () Bool)

(assert (=> b!1367051 m!1251373))

(declare-fun m!1251375 () Bool)

(assert (=> b!1367051 m!1251375))

(declare-fun m!1251377 () Bool)

(assert (=> start!115646 m!1251377))

(declare-fun m!1251379 () Bool)

(assert (=> b!1367056 m!1251379))

(declare-fun m!1251381 () Bool)

(assert (=> b!1367052 m!1251381))

(declare-fun m!1251383 () Bool)

(assert (=> b!1367058 m!1251383))

(declare-fun m!1251385 () Bool)

(assert (=> b!1367053 m!1251385))

(push 1)

