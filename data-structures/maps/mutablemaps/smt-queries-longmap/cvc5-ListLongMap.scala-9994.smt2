; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118012 () Bool)

(assert start!118012)

(declare-fun b!1381838 () Bool)

(declare-fun res!923577 () Bool)

(declare-fun e!783305 () Bool)

(assert (=> b!1381838 (=> (not res!923577) (not e!783305))))

(declare-datatypes ((array!94319 0))(
  ( (array!94320 (arr!45538 (Array (_ BitVec 32) (_ BitVec 64))) (size!46089 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94319)

(declare-datatypes ((List!32252 0))(
  ( (Nil!32249) (Cons!32248 (h!33457 (_ BitVec 64)) (t!46953 List!32252)) )
))
(declare-fun arrayNoDuplicates!0 (array!94319 (_ BitVec 32) List!32252) Bool)

(assert (=> b!1381838 (= res!923577 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32249))))

(declare-fun b!1381839 () Bool)

(assert (=> b!1381839 (= e!783305 (not true))))

(declare-fun i!1094 () (_ BitVec 32))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94319 (_ BitVec 32)) Bool)

(assert (=> b!1381839 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!94320 (store (arr!45538 a!2971) i!1094 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46089 a!2971)) mask!3034)))

(declare-datatypes ((Unit!45977 0))(
  ( (Unit!45978) )
))
(declare-fun lt!608254 () Unit!45977)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 (array!94319 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45977)

(assert (=> b!1381839 (= lt!608254 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 a!2971 i!1094 #b00000000000000000000000000000000 mask!3034))))

(declare-fun res!923579 () Bool)

(assert (=> start!118012 (=> (not res!923579) (not e!783305))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118012 (= res!923579 (validMask!0 mask!3034))))

(assert (=> start!118012 e!783305))

(assert (=> start!118012 true))

(declare-fun array_inv!34483 (array!94319) Bool)

(assert (=> start!118012 (array_inv!34483 a!2971)))

(declare-fun b!1381840 () Bool)

(declare-fun res!923576 () Bool)

(assert (=> b!1381840 (=> (not res!923576) (not e!783305))))

(assert (=> b!1381840 (= res!923576 (and (not (= (select (arr!45538 a!2971) i!1094) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45538 a!2971) i!1094) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt #b00000000000000000000000000000000 (size!46089 a!2971))))))

(declare-fun b!1381841 () Bool)

(declare-fun res!923578 () Bool)

(assert (=> b!1381841 (=> (not res!923578) (not e!783305))))

(assert (=> b!1381841 (= res!923578 (and (= (size!46089 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46089 a!2971))))))

(declare-fun b!1381842 () Bool)

(declare-fun res!923575 () Bool)

(assert (=> b!1381842 (=> (not res!923575) (not e!783305))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381842 (= res!923575 (validKeyInArray!0 (select (arr!45538 a!2971) i!1094)))))

(declare-fun b!1381843 () Bool)

(declare-fun res!923580 () Bool)

(assert (=> b!1381843 (=> (not res!923580) (not e!783305))))

(assert (=> b!1381843 (= res!923580 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(assert (= (and start!118012 res!923579) b!1381841))

(assert (= (and b!1381841 res!923578) b!1381842))

(assert (= (and b!1381842 res!923575) b!1381838))

(assert (= (and b!1381838 res!923577) b!1381843))

(assert (= (and b!1381843 res!923580) b!1381840))

(assert (= (and b!1381840 res!923576) b!1381839))

(declare-fun m!1267077 () Bool)

(assert (=> start!118012 m!1267077))

(declare-fun m!1267079 () Bool)

(assert (=> start!118012 m!1267079))

(declare-fun m!1267081 () Bool)

(assert (=> b!1381838 m!1267081))

(declare-fun m!1267083 () Bool)

(assert (=> b!1381843 m!1267083))

(declare-fun m!1267085 () Bool)

(assert (=> b!1381842 m!1267085))

(assert (=> b!1381842 m!1267085))

(declare-fun m!1267087 () Bool)

(assert (=> b!1381842 m!1267087))

(declare-fun m!1267089 () Bool)

(assert (=> b!1381839 m!1267089))

(declare-fun m!1267091 () Bool)

(assert (=> b!1381839 m!1267091))

(declare-fun m!1267093 () Bool)

(assert (=> b!1381839 m!1267093))

(assert (=> b!1381840 m!1267085))

(push 1)

(assert (not b!1381842))

(assert (not start!118012))

(assert (not b!1381838))

(assert (not b!1381839))

(assert (not b!1381843))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

