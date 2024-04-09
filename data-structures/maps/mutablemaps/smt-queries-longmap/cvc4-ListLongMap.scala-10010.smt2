; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118142 () Bool)

(assert start!118142)

(declare-fun b!1382621 () Bool)

(declare-fun e!783668 () Bool)

(assert (=> b!1382621 (= e!783668 (not true))))

(declare-datatypes ((array!94422 0))(
  ( (array!94423 (arr!45588 (Array (_ BitVec 32) (_ BitVec 64))) (size!46139 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94422)

(declare-fun i!1094 () (_ BitVec 32))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94422 (_ BitVec 32)) Bool)

(assert (=> b!1382621 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!94423 (store (arr!45588 a!2971) i!1094 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46139 a!2971)) mask!3034)))

(declare-datatypes ((Unit!46009 0))(
  ( (Unit!46010) )
))
(declare-fun lt!608413 () Unit!46009)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 (array!94422 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46009)

(assert (=> b!1382621 (= lt!608413 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 a!2971 i!1094 #b00000000000000000000000000000000 mask!3034))))

(declare-fun b!1382622 () Bool)

(declare-fun res!924322 () Bool)

(assert (=> b!1382622 (=> (not res!924322) (not e!783668))))

(assert (=> b!1382622 (= res!924322 (and (not (= (select (arr!45588 a!2971) i!1094) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45588 a!2971) i!1094) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt #b00000000000000000000000000000000 (size!46139 a!2971))))))

(declare-fun b!1382623 () Bool)

(declare-fun res!924324 () Bool)

(assert (=> b!1382623 (=> (not res!924324) (not e!783668))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382623 (= res!924324 (validKeyInArray!0 (select (arr!45588 a!2971) i!1094)))))

(declare-fun b!1382624 () Bool)

(declare-fun res!924327 () Bool)

(assert (=> b!1382624 (=> (not res!924327) (not e!783668))))

(declare-datatypes ((List!32302 0))(
  ( (Nil!32299) (Cons!32298 (h!33507 (_ BitVec 64)) (t!47003 List!32302)) )
))
(declare-fun arrayNoDuplicates!0 (array!94422 (_ BitVec 32) List!32302) Bool)

(assert (=> b!1382624 (= res!924327 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32299))))

(declare-fun b!1382625 () Bool)

(declare-fun res!924326 () Bool)

(assert (=> b!1382625 (=> (not res!924326) (not e!783668))))

(assert (=> b!1382625 (= res!924326 (and (= (size!46139 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46139 a!2971))))))

(declare-fun b!1382626 () Bool)

(declare-fun res!924323 () Bool)

(assert (=> b!1382626 (=> (not res!924323) (not e!783668))))

(assert (=> b!1382626 (= res!924323 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun res!924325 () Bool)

(assert (=> start!118142 (=> (not res!924325) (not e!783668))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118142 (= res!924325 (validMask!0 mask!3034))))

(assert (=> start!118142 e!783668))

(assert (=> start!118142 true))

(declare-fun array_inv!34533 (array!94422) Bool)

(assert (=> start!118142 (array_inv!34533 a!2971)))

(assert (= (and start!118142 res!924325) b!1382625))

(assert (= (and b!1382625 res!924326) b!1382623))

(assert (= (and b!1382623 res!924324) b!1382624))

(assert (= (and b!1382624 res!924327) b!1382626))

(assert (= (and b!1382626 res!924323) b!1382622))

(assert (= (and b!1382622 res!924322) b!1382621))

(declare-fun m!1267809 () Bool)

(assert (=> b!1382626 m!1267809))

(declare-fun m!1267811 () Bool)

(assert (=> b!1382622 m!1267811))

(assert (=> b!1382623 m!1267811))

(assert (=> b!1382623 m!1267811))

(declare-fun m!1267813 () Bool)

(assert (=> b!1382623 m!1267813))

(declare-fun m!1267815 () Bool)

(assert (=> b!1382621 m!1267815))

(declare-fun m!1267817 () Bool)

(assert (=> b!1382621 m!1267817))

(declare-fun m!1267819 () Bool)

(assert (=> b!1382621 m!1267819))

(declare-fun m!1267821 () Bool)

(assert (=> b!1382624 m!1267821))

(declare-fun m!1267823 () Bool)

(assert (=> start!118142 m!1267823))

(declare-fun m!1267825 () Bool)

(assert (=> start!118142 m!1267825))

(push 1)

(assert (not b!1382621))

(assert (not start!118142))

(assert (not b!1382626))

(assert (not b!1382624))

(assert (not b!1382623))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

