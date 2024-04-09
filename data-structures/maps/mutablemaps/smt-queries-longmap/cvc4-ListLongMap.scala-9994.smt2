; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118016 () Bool)

(assert start!118016)

(declare-fun b!1381874 () Bool)

(declare-fun res!923614 () Bool)

(declare-fun e!783316 () Bool)

(assert (=> b!1381874 (=> (not res!923614) (not e!783316))))

(declare-datatypes ((array!94323 0))(
  ( (array!94324 (arr!45540 (Array (_ BitVec 32) (_ BitVec 64))) (size!46091 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94323)

(declare-datatypes ((List!32254 0))(
  ( (Nil!32251) (Cons!32250 (h!33459 (_ BitVec 64)) (t!46955 List!32254)) )
))
(declare-fun arrayNoDuplicates!0 (array!94323 (_ BitVec 32) List!32254) Bool)

(assert (=> b!1381874 (= res!923614 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32251))))

(declare-fun res!923613 () Bool)

(assert (=> start!118016 (=> (not res!923613) (not e!783316))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118016 (= res!923613 (validMask!0 mask!3034))))

(assert (=> start!118016 e!783316))

(assert (=> start!118016 true))

(declare-fun array_inv!34485 (array!94323) Bool)

(assert (=> start!118016 (array_inv!34485 a!2971)))

(declare-fun b!1381875 () Bool)

(declare-fun res!923612 () Bool)

(assert (=> b!1381875 (=> (not res!923612) (not e!783316))))

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1381875 (= res!923612 (and (not (= (select (arr!45540 a!2971) i!1094) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45540 a!2971) i!1094) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt #b00000000000000000000000000000000 (size!46091 a!2971))))))

(declare-fun b!1381876 () Bool)

(declare-fun res!923611 () Bool)

(assert (=> b!1381876 (=> (not res!923611) (not e!783316))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381876 (= res!923611 (validKeyInArray!0 (select (arr!45540 a!2971) i!1094)))))

(declare-fun b!1381877 () Bool)

(assert (=> b!1381877 (= e!783316 (not true))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94323 (_ BitVec 32)) Bool)

(assert (=> b!1381877 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!94324 (store (arr!45540 a!2971) i!1094 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46091 a!2971)) mask!3034)))

(declare-datatypes ((Unit!45981 0))(
  ( (Unit!45982) )
))
(declare-fun lt!608260 () Unit!45981)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 (array!94323 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45981)

(assert (=> b!1381877 (= lt!608260 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 a!2971 i!1094 #b00000000000000000000000000000000 mask!3034))))

(declare-fun b!1381878 () Bool)

(declare-fun res!923616 () Bool)

(assert (=> b!1381878 (=> (not res!923616) (not e!783316))))

(assert (=> b!1381878 (= res!923616 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun b!1381879 () Bool)

(declare-fun res!923615 () Bool)

(assert (=> b!1381879 (=> (not res!923615) (not e!783316))))

(assert (=> b!1381879 (= res!923615 (and (= (size!46091 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46091 a!2971))))))

(assert (= (and start!118016 res!923613) b!1381879))

(assert (= (and b!1381879 res!923615) b!1381876))

(assert (= (and b!1381876 res!923611) b!1381874))

(assert (= (and b!1381874 res!923614) b!1381878))

(assert (= (and b!1381878 res!923616) b!1381875))

(assert (= (and b!1381875 res!923612) b!1381877))

(declare-fun m!1267113 () Bool)

(assert (=> b!1381876 m!1267113))

(assert (=> b!1381876 m!1267113))

(declare-fun m!1267115 () Bool)

(assert (=> b!1381876 m!1267115))

(declare-fun m!1267117 () Bool)

(assert (=> b!1381874 m!1267117))

(declare-fun m!1267119 () Bool)

(assert (=> b!1381878 m!1267119))

(assert (=> b!1381875 m!1267113))

(declare-fun m!1267121 () Bool)

(assert (=> start!118016 m!1267121))

(declare-fun m!1267123 () Bool)

(assert (=> start!118016 m!1267123))

(declare-fun m!1267125 () Bool)

(assert (=> b!1381877 m!1267125))

(declare-fun m!1267127 () Bool)

(assert (=> b!1381877 m!1267127))

(declare-fun m!1267129 () Bool)

(assert (=> b!1381877 m!1267129))

(push 1)

(assert (not b!1381876))

(assert (not b!1381877))

(assert (not start!118016))

(assert (not b!1381878))

(assert (not b!1381874))

