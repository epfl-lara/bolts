; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118006 () Bool)

(assert start!118006)

(declare-fun b!1381784 () Bool)

(declare-fun res!923524 () Bool)

(declare-fun e!783286 () Bool)

(assert (=> b!1381784 (=> (not res!923524) (not e!783286))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-datatypes ((array!94313 0))(
  ( (array!94314 (arr!45535 (Array (_ BitVec 32) (_ BitVec 64))) (size!46086 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94313)

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1381784 (= res!923524 (and (= (size!46086 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46086 a!2971))))))

(declare-fun b!1381785 () Bool)

(assert (=> b!1381785 (= e!783286 (not true))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94313 (_ BitVec 32)) Bool)

(assert (=> b!1381785 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!94314 (store (arr!45535 a!2971) i!1094 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46086 a!2971)) mask!3034)))

(declare-datatypes ((Unit!45971 0))(
  ( (Unit!45972) )
))
(declare-fun lt!608245 () Unit!45971)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 (array!94313 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45971)

(assert (=> b!1381785 (= lt!608245 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 a!2971 i!1094 #b00000000000000000000000000000000 mask!3034))))

(declare-fun b!1381786 () Bool)

(declare-fun res!923521 () Bool)

(assert (=> b!1381786 (=> (not res!923521) (not e!783286))))

(assert (=> b!1381786 (= res!923521 (and (not (= (select (arr!45535 a!2971) i!1094) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45535 a!2971) i!1094) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt #b00000000000000000000000000000000 (size!46086 a!2971))))))

(declare-fun b!1381787 () Bool)

(declare-fun res!923522 () Bool)

(assert (=> b!1381787 (=> (not res!923522) (not e!783286))))

(assert (=> b!1381787 (= res!923522 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun b!1381788 () Bool)

(declare-fun res!923525 () Bool)

(assert (=> b!1381788 (=> (not res!923525) (not e!783286))))

(declare-datatypes ((List!32249 0))(
  ( (Nil!32246) (Cons!32245 (h!33454 (_ BitVec 64)) (t!46950 List!32249)) )
))
(declare-fun arrayNoDuplicates!0 (array!94313 (_ BitVec 32) List!32249) Bool)

(assert (=> b!1381788 (= res!923525 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32246))))

(declare-fun res!923523 () Bool)

(assert (=> start!118006 (=> (not res!923523) (not e!783286))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118006 (= res!923523 (validMask!0 mask!3034))))

(assert (=> start!118006 e!783286))

(assert (=> start!118006 true))

(declare-fun array_inv!34480 (array!94313) Bool)

(assert (=> start!118006 (array_inv!34480 a!2971)))

(declare-fun b!1381789 () Bool)

(declare-fun res!923526 () Bool)

(assert (=> b!1381789 (=> (not res!923526) (not e!783286))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381789 (= res!923526 (validKeyInArray!0 (select (arr!45535 a!2971) i!1094)))))

(assert (= (and start!118006 res!923523) b!1381784))

(assert (= (and b!1381784 res!923524) b!1381789))

(assert (= (and b!1381789 res!923526) b!1381788))

(assert (= (and b!1381788 res!923525) b!1381787))

(assert (= (and b!1381787 res!923522) b!1381786))

(assert (= (and b!1381786 res!923521) b!1381785))

(declare-fun m!1267023 () Bool)

(assert (=> b!1381786 m!1267023))

(declare-fun m!1267025 () Bool)

(assert (=> b!1381787 m!1267025))

(declare-fun m!1267027 () Bool)

(assert (=> b!1381788 m!1267027))

(declare-fun m!1267029 () Bool)

(assert (=> b!1381785 m!1267029))

(declare-fun m!1267031 () Bool)

(assert (=> b!1381785 m!1267031))

(declare-fun m!1267033 () Bool)

(assert (=> b!1381785 m!1267033))

(declare-fun m!1267035 () Bool)

(assert (=> start!118006 m!1267035))

(declare-fun m!1267037 () Bool)

(assert (=> start!118006 m!1267037))

(assert (=> b!1381789 m!1267023))

(assert (=> b!1381789 m!1267023))

(declare-fun m!1267039 () Bool)

(assert (=> b!1381789 m!1267039))

(push 1)

(assert (not b!1381787))

(assert (not b!1381789))

(assert (not b!1381785))

(assert (not b!1381788))

(assert (not start!118006))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

