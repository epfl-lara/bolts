; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118018 () Bool)

(assert start!118018)

(declare-fun b!1381892 () Bool)

(declare-fun res!923634 () Bool)

(declare-fun e!783322 () Bool)

(assert (=> b!1381892 (=> (not res!923634) (not e!783322))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-datatypes ((array!94325 0))(
  ( (array!94326 (arr!45541 (Array (_ BitVec 32) (_ BitVec 64))) (size!46092 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94325)

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1381892 (= res!923634 (and (= (size!46092 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46092 a!2971))))))

(declare-fun b!1381893 () Bool)

(declare-fun res!923632 () Bool)

(assert (=> b!1381893 (=> (not res!923632) (not e!783322))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381893 (= res!923632 (validKeyInArray!0 (select (arr!45541 a!2971) i!1094)))))

(declare-fun res!923629 () Bool)

(assert (=> start!118018 (=> (not res!923629) (not e!783322))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118018 (= res!923629 (validMask!0 mask!3034))))

(assert (=> start!118018 e!783322))

(assert (=> start!118018 true))

(declare-fun array_inv!34486 (array!94325) Bool)

(assert (=> start!118018 (array_inv!34486 a!2971)))

(declare-fun b!1381894 () Bool)

(declare-fun res!923631 () Bool)

(assert (=> b!1381894 (=> (not res!923631) (not e!783322))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94325 (_ BitVec 32)) Bool)

(assert (=> b!1381894 (= res!923631 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun b!1381895 () Bool)

(declare-fun res!923630 () Bool)

(assert (=> b!1381895 (=> (not res!923630) (not e!783322))))

(assert (=> b!1381895 (= res!923630 (and (not (= (select (arr!45541 a!2971) i!1094) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45541 a!2971) i!1094) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt #b00000000000000000000000000000000 (size!46092 a!2971))))))

(declare-fun b!1381896 () Bool)

(assert (=> b!1381896 (= e!783322 (not true))))

(assert (=> b!1381896 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!94326 (store (arr!45541 a!2971) i!1094 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46092 a!2971)) mask!3034)))

(declare-datatypes ((Unit!45983 0))(
  ( (Unit!45984) )
))
(declare-fun lt!608263 () Unit!45983)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 (array!94325 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45983)

(assert (=> b!1381896 (= lt!608263 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 a!2971 i!1094 #b00000000000000000000000000000000 mask!3034))))

(declare-fun b!1381897 () Bool)

(declare-fun res!923633 () Bool)

(assert (=> b!1381897 (=> (not res!923633) (not e!783322))))

(declare-datatypes ((List!32255 0))(
  ( (Nil!32252) (Cons!32251 (h!33460 (_ BitVec 64)) (t!46956 List!32255)) )
))
(declare-fun arrayNoDuplicates!0 (array!94325 (_ BitVec 32) List!32255) Bool)

(assert (=> b!1381897 (= res!923633 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32252))))

(assert (= (and start!118018 res!923629) b!1381892))

(assert (= (and b!1381892 res!923634) b!1381893))

(assert (= (and b!1381893 res!923632) b!1381897))

(assert (= (and b!1381897 res!923633) b!1381894))

(assert (= (and b!1381894 res!923631) b!1381895))

(assert (= (and b!1381895 res!923630) b!1381896))

(declare-fun m!1267131 () Bool)

(assert (=> b!1381895 m!1267131))

(declare-fun m!1267133 () Bool)

(assert (=> start!118018 m!1267133))

(declare-fun m!1267135 () Bool)

(assert (=> start!118018 m!1267135))

(declare-fun m!1267137 () Bool)

(assert (=> b!1381894 m!1267137))

(declare-fun m!1267139 () Bool)

(assert (=> b!1381896 m!1267139))

(declare-fun m!1267141 () Bool)

(assert (=> b!1381896 m!1267141))

(declare-fun m!1267143 () Bool)

(assert (=> b!1381896 m!1267143))

(assert (=> b!1381893 m!1267131))

(assert (=> b!1381893 m!1267131))

(declare-fun m!1267145 () Bool)

(assert (=> b!1381893 m!1267145))

(declare-fun m!1267147 () Bool)

(assert (=> b!1381897 m!1267147))

(push 1)

(assert (not b!1381896))

(assert (not b!1381894))

(assert (not b!1381897))

(assert (not start!118018))

(assert (not b!1381893))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

