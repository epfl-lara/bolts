; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118022 () Bool)

(assert start!118022)

(declare-fun res!923670 () Bool)

(declare-fun e!783335 () Bool)

(assert (=> start!118022 (=> (not res!923670) (not e!783335))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118022 (= res!923670 (validMask!0 mask!3034))))

(assert (=> start!118022 e!783335))

(assert (=> start!118022 true))

(declare-datatypes ((array!94329 0))(
  ( (array!94330 (arr!45543 (Array (_ BitVec 32) (_ BitVec 64))) (size!46094 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94329)

(declare-fun array_inv!34488 (array!94329) Bool)

(assert (=> start!118022 (array_inv!34488 a!2971)))

(declare-fun b!1381928 () Bool)

(declare-fun res!923665 () Bool)

(assert (=> b!1381928 (=> (not res!923665) (not e!783335))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94329 (_ BitVec 32)) Bool)

(assert (=> b!1381928 (= res!923665 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun b!1381929 () Bool)

(declare-fun res!923667 () Bool)

(assert (=> b!1381929 (=> (not res!923667) (not e!783335))))

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1381929 (= res!923667 (and (not (= (select (arr!45543 a!2971) i!1094) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45543 a!2971) i!1094) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt #b00000000000000000000000000000000 (size!46094 a!2971))))))

(declare-fun b!1381930 () Bool)

(assert (=> b!1381930 (= e!783335 (not true))))

(assert (=> b!1381930 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!94330 (store (arr!45543 a!2971) i!1094 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46094 a!2971)) mask!3034)))

(declare-datatypes ((Unit!45987 0))(
  ( (Unit!45988) )
))
(declare-fun lt!608269 () Unit!45987)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 (array!94329 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45987)

(assert (=> b!1381930 (= lt!608269 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 a!2971 i!1094 #b00000000000000000000000000000000 mask!3034))))

(declare-fun b!1381931 () Bool)

(declare-fun res!923666 () Bool)

(assert (=> b!1381931 (=> (not res!923666) (not e!783335))))

(declare-datatypes ((List!32257 0))(
  ( (Nil!32254) (Cons!32253 (h!33462 (_ BitVec 64)) (t!46958 List!32257)) )
))
(declare-fun arrayNoDuplicates!0 (array!94329 (_ BitVec 32) List!32257) Bool)

(assert (=> b!1381931 (= res!923666 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32254))))

(declare-fun b!1381932 () Bool)

(declare-fun res!923669 () Bool)

(assert (=> b!1381932 (=> (not res!923669) (not e!783335))))

(assert (=> b!1381932 (= res!923669 (and (= (size!46094 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46094 a!2971))))))

(declare-fun b!1381933 () Bool)

(declare-fun res!923668 () Bool)

(assert (=> b!1381933 (=> (not res!923668) (not e!783335))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381933 (= res!923668 (validKeyInArray!0 (select (arr!45543 a!2971) i!1094)))))

(assert (= (and start!118022 res!923670) b!1381932))

(assert (= (and b!1381932 res!923669) b!1381933))

(assert (= (and b!1381933 res!923668) b!1381931))

(assert (= (and b!1381931 res!923666) b!1381928))

(assert (= (and b!1381928 res!923665) b!1381929))

(assert (= (and b!1381929 res!923667) b!1381930))

(declare-fun m!1267167 () Bool)

(assert (=> b!1381933 m!1267167))

(assert (=> b!1381933 m!1267167))

(declare-fun m!1267169 () Bool)

(assert (=> b!1381933 m!1267169))

(declare-fun m!1267171 () Bool)

(assert (=> b!1381930 m!1267171))

(declare-fun m!1267173 () Bool)

(assert (=> b!1381930 m!1267173))

(declare-fun m!1267175 () Bool)

(assert (=> b!1381930 m!1267175))

(assert (=> b!1381929 m!1267167))

(declare-fun m!1267177 () Bool)

(assert (=> b!1381931 m!1267177))

(declare-fun m!1267179 () Bool)

(assert (=> start!118022 m!1267179))

(declare-fun m!1267181 () Bool)

(assert (=> start!118022 m!1267181))

(declare-fun m!1267183 () Bool)

(assert (=> b!1381928 m!1267183))

(push 1)

(assert (not b!1381928))

(assert (not start!118022))

(assert (not b!1381931))

(assert (not b!1381933))

(assert (not b!1381930))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

