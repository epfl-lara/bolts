; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127826 () Bool)

(assert start!127826)

(declare-fun b!1501709 () Bool)

(declare-fun res!1022858 () Bool)

(declare-fun e!840052 () Bool)

(assert (=> b!1501709 (=> (not res!1022858) (not e!840052))))

(declare-datatypes ((array!100120 0))(
  ( (array!100121 (arr!48315 (Array (_ BitVec 32) (_ BitVec 64))) (size!48866 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100120)

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun lt!653216 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12544 0))(
  ( (MissingZero!12544 (index!52567 (_ BitVec 32))) (Found!12544 (index!52568 (_ BitVec 32))) (Intermediate!12544 (undefined!13356 Bool) (index!52569 (_ BitVec 32)) (x!134239 (_ BitVec 32))) (Undefined!12544) (MissingVacant!12544 (index!52570 (_ BitVec 32))) )
))
(declare-fun lt!653218 () SeekEntryResult!12544)

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100120 (_ BitVec 32)) SeekEntryResult!12544)

(assert (=> b!1501709 (= res!1022858 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653216 vacantBefore!10 (select (arr!48315 a!2850) j!87) a!2850 mask!2661) lt!653218))))

(declare-fun b!1501710 () Bool)

(declare-fun res!1022865 () Bool)

(declare-fun e!840053 () Bool)

(assert (=> b!1501710 (=> (not res!1022865) (not e!840053))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1501710 (= res!1022865 (validKeyInArray!0 (select (arr!48315 a!2850) j!87)))))

(declare-fun b!1501711 () Bool)

(declare-fun res!1022866 () Bool)

(declare-fun e!840054 () Bool)

(assert (=> b!1501711 (=> (not res!1022866) (not e!840054))))

(declare-fun index!625 () (_ BitVec 32))

(assert (=> b!1501711 (= res!1022866 (not (= (select (arr!48315 a!2850) index!625) (select (arr!48315 a!2850) j!87))))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun b!1501712 () Bool)

(declare-fun e!840055 () Bool)

(assert (=> b!1501712 (= e!840055 (validKeyInArray!0 (select (store (arr!48315 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) j!87)))))

(declare-fun b!1501713 () Bool)

(assert (=> b!1501713 (= e!840054 e!840052)))

(declare-fun res!1022863 () Bool)

(assert (=> b!1501713 (=> (not res!1022863) (not e!840052))))

(assert (=> b!1501713 (= res!1022863 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!653216 #b00000000000000000000000000000000) (bvslt lt!653216 (size!48866 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1501713 (= lt!653216 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1501714 () Bool)

(declare-fun res!1022864 () Bool)

(assert (=> b!1501714 (=> (not res!1022864) (not e!840053))))

(assert (=> b!1501714 (= res!1022864 (and (= (size!48866 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48866 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48866 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1501715 () Bool)

(declare-fun res!1022867 () Bool)

(assert (=> b!1501715 (=> (not res!1022867) (not e!840053))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1501715 (= res!1022867 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48866 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48866 a!2850)) (= (select (arr!48315 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48315 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48866 a!2850))))))

(declare-fun b!1501716 () Bool)

(declare-fun res!1022861 () Bool)

(assert (=> b!1501716 (=> (not res!1022861) (not e!840053))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100120 (_ BitVec 32)) Bool)

(assert (=> b!1501716 (= res!1022861 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun res!1022862 () Bool)

(assert (=> start!127826 (=> (not res!1022862) (not e!840053))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127826 (= res!1022862 (validMask!0 mask!2661))))

(assert (=> start!127826 e!840053))

(assert (=> start!127826 true))

(declare-fun array_inv!37260 (array!100120) Bool)

(assert (=> start!127826 (array_inv!37260 a!2850)))

(declare-fun b!1501717 () Bool)

(declare-fun res!1022857 () Bool)

(assert (=> b!1501717 (=> (not res!1022857) (not e!840053))))

(declare-datatypes ((List!34987 0))(
  ( (Nil!34984) (Cons!34983 (h!36381 (_ BitVec 64)) (t!49688 List!34987)) )
))
(declare-fun arrayNoDuplicates!0 (array!100120 (_ BitVec 32) List!34987) Bool)

(assert (=> b!1501717 (= res!1022857 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34984))))

(declare-fun b!1501718 () Bool)

(assert (=> b!1501718 (= e!840052 (not e!840055))))

(declare-fun res!1022860 () Bool)

(assert (=> b!1501718 (=> res!1022860 e!840055)))

(assert (=> b!1501718 (= res!1022860 (or (bvslt mask!2661 #b00000000000000000000000000000000) (bvsge index!625 (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge vacantAfter!10 (bvadd #b00000000000000000000000000000001 mask!2661))))))

(assert (=> b!1501718 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653216 vacantAfter!10 (select (store (arr!48315 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) j!87) (array!100121 (store (arr!48315 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48866 a!2850)) mask!2661) lt!653218)))

(declare-datatypes ((Unit!50196 0))(
  ( (Unit!50197) )
))
(declare-fun lt!653217 () Unit!50196)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!100120 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50196)

(assert (=> b!1501718 (= lt!653217 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2850 i!996 j!87 (bvadd #b00000000000000000000000000000001 x!647) lt!653216 vacantBefore!10 vacantAfter!10 mask!2661))))

(declare-fun b!1501719 () Bool)

(declare-fun res!1022859 () Bool)

(assert (=> b!1501719 (=> (not res!1022859) (not e!840053))))

(assert (=> b!1501719 (= res!1022859 (validKeyInArray!0 (select (arr!48315 a!2850) i!996)))))

(declare-fun b!1501720 () Bool)

(assert (=> b!1501720 (= e!840053 e!840054)))

(declare-fun res!1022868 () Bool)

(assert (=> b!1501720 (=> (not res!1022868) (not e!840054))))

(assert (=> b!1501720 (= res!1022868 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48315 a!2850) j!87) a!2850 mask!2661) lt!653218))))

(assert (=> b!1501720 (= lt!653218 (Found!12544 j!87))))

(assert (= (and start!127826 res!1022862) b!1501714))

(assert (= (and b!1501714 res!1022864) b!1501719))

(assert (= (and b!1501719 res!1022859) b!1501710))

(assert (= (and b!1501710 res!1022865) b!1501716))

(assert (= (and b!1501716 res!1022861) b!1501717))

(assert (= (and b!1501717 res!1022857) b!1501715))

(assert (= (and b!1501715 res!1022867) b!1501720))

(assert (= (and b!1501720 res!1022868) b!1501711))

(assert (= (and b!1501711 res!1022866) b!1501713))

(assert (= (and b!1501713 res!1022863) b!1501709))

(assert (= (and b!1501709 res!1022858) b!1501718))

(assert (= (and b!1501718 (not res!1022860)) b!1501712))

(declare-fun m!1385023 () Bool)

(assert (=> start!127826 m!1385023))

(declare-fun m!1385025 () Bool)

(assert (=> start!127826 m!1385025))

(declare-fun m!1385027 () Bool)

(assert (=> b!1501720 m!1385027))

(assert (=> b!1501720 m!1385027))

(declare-fun m!1385029 () Bool)

(assert (=> b!1501720 m!1385029))

(assert (=> b!1501710 m!1385027))

(assert (=> b!1501710 m!1385027))

(declare-fun m!1385031 () Bool)

(assert (=> b!1501710 m!1385031))

(declare-fun m!1385033 () Bool)

(assert (=> b!1501719 m!1385033))

(assert (=> b!1501719 m!1385033))

(declare-fun m!1385035 () Bool)

(assert (=> b!1501719 m!1385035))

(declare-fun m!1385037 () Bool)

(assert (=> b!1501717 m!1385037))

(assert (=> b!1501709 m!1385027))

(assert (=> b!1501709 m!1385027))

(declare-fun m!1385039 () Bool)

(assert (=> b!1501709 m!1385039))

(declare-fun m!1385041 () Bool)

(assert (=> b!1501718 m!1385041))

(declare-fun m!1385043 () Bool)

(assert (=> b!1501718 m!1385043))

(assert (=> b!1501718 m!1385043))

(declare-fun m!1385045 () Bool)

(assert (=> b!1501718 m!1385045))

(declare-fun m!1385047 () Bool)

(assert (=> b!1501718 m!1385047))

(declare-fun m!1385049 () Bool)

(assert (=> b!1501716 m!1385049))

(declare-fun m!1385051 () Bool)

(assert (=> b!1501713 m!1385051))

(declare-fun m!1385053 () Bool)

(assert (=> b!1501711 m!1385053))

(assert (=> b!1501711 m!1385027))

(assert (=> b!1501712 m!1385041))

(assert (=> b!1501712 m!1385043))

(assert (=> b!1501712 m!1385043))

(declare-fun m!1385055 () Bool)

(assert (=> b!1501712 m!1385055))

(declare-fun m!1385057 () Bool)

(assert (=> b!1501715 m!1385057))

(assert (=> b!1501715 m!1385041))

(declare-fun m!1385059 () Bool)

(assert (=> b!1501715 m!1385059))

(push 1)

(assert (not b!1501718))

(assert (not b!1501710))

(assert (not b!1501719))

(assert (not b!1501712))

(assert (not b!1501717))

(assert (not start!127826))

(assert (not b!1501709))

(assert (not b!1501713))

