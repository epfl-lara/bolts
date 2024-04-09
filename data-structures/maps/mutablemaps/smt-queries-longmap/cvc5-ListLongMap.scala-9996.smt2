; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118024 () Bool)

(assert start!118024)

(declare-fun b!1381946 () Bool)

(declare-fun res!923688 () Bool)

(declare-fun e!783340 () Bool)

(assert (=> b!1381946 (=> (not res!923688) (not e!783340))))

(declare-datatypes ((array!94331 0))(
  ( (array!94332 (arr!45544 (Array (_ BitVec 32) (_ BitVec 64))) (size!46095 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94331)

(declare-datatypes ((List!32258 0))(
  ( (Nil!32255) (Cons!32254 (h!33463 (_ BitVec 64)) (t!46959 List!32258)) )
))
(declare-fun arrayNoDuplicates!0 (array!94331 (_ BitVec 32) List!32258) Bool)

(assert (=> b!1381946 (= res!923688 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32255))))

(declare-fun b!1381947 () Bool)

(assert (=> b!1381947 (= e!783340 (not (bvsle #b00000000000000000000000000000000 (size!46095 a!2971))))))

(declare-fun i!1094 () (_ BitVec 32))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94331 (_ BitVec 32)) Bool)

(assert (=> b!1381947 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!94332 (store (arr!45544 a!2971) i!1094 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46095 a!2971)) mask!3034)))

(declare-datatypes ((Unit!45989 0))(
  ( (Unit!45990) )
))
(declare-fun lt!608272 () Unit!45989)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 (array!94331 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45989)

(assert (=> b!1381947 (= lt!608272 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 a!2971 i!1094 #b00000000000000000000000000000000 mask!3034))))

(declare-fun b!1381948 () Bool)

(declare-fun res!923687 () Bool)

(assert (=> b!1381948 (=> (not res!923687) (not e!783340))))

(assert (=> b!1381948 (= res!923687 (and (= (size!46095 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46095 a!2971))))))

(declare-fun b!1381949 () Bool)

(declare-fun res!923685 () Bool)

(assert (=> b!1381949 (=> (not res!923685) (not e!783340))))

(assert (=> b!1381949 (= res!923685 (and (not (= (select (arr!45544 a!2971) i!1094) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45544 a!2971) i!1094) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt #b00000000000000000000000000000000 (size!46095 a!2971))))))

(declare-fun res!923683 () Bool)

(assert (=> start!118024 (=> (not res!923683) (not e!783340))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118024 (= res!923683 (validMask!0 mask!3034))))

(assert (=> start!118024 e!783340))

(assert (=> start!118024 true))

(declare-fun array_inv!34489 (array!94331) Bool)

(assert (=> start!118024 (array_inv!34489 a!2971)))

(declare-fun b!1381950 () Bool)

(declare-fun res!923686 () Bool)

(assert (=> b!1381950 (=> (not res!923686) (not e!783340))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381950 (= res!923686 (validKeyInArray!0 (select (arr!45544 a!2971) i!1094)))))

(declare-fun b!1381951 () Bool)

(declare-fun res!923684 () Bool)

(assert (=> b!1381951 (=> (not res!923684) (not e!783340))))

(assert (=> b!1381951 (= res!923684 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(assert (= (and start!118024 res!923683) b!1381948))

(assert (= (and b!1381948 res!923687) b!1381950))

(assert (= (and b!1381950 res!923686) b!1381946))

(assert (= (and b!1381946 res!923688) b!1381951))

(assert (= (and b!1381951 res!923684) b!1381949))

(assert (= (and b!1381949 res!923685) b!1381947))

(declare-fun m!1267185 () Bool)

(assert (=> b!1381947 m!1267185))

(declare-fun m!1267187 () Bool)

(assert (=> b!1381947 m!1267187))

(declare-fun m!1267189 () Bool)

(assert (=> b!1381947 m!1267189))

(declare-fun m!1267191 () Bool)

(assert (=> b!1381949 m!1267191))

(declare-fun m!1267193 () Bool)

(assert (=> start!118024 m!1267193))

(declare-fun m!1267195 () Bool)

(assert (=> start!118024 m!1267195))

(assert (=> b!1381950 m!1267191))

(assert (=> b!1381950 m!1267191))

(declare-fun m!1267197 () Bool)

(assert (=> b!1381950 m!1267197))

(declare-fun m!1267199 () Bool)

(assert (=> b!1381946 m!1267199))

(declare-fun m!1267201 () Bool)

(assert (=> b!1381951 m!1267201))

(push 1)

