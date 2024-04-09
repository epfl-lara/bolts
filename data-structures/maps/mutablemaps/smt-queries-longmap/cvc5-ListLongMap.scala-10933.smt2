; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127978 () Bool)

(assert start!127978)

(declare-fun b!1502819 () Bool)

(declare-fun res!1023775 () Bool)

(declare-fun e!840493 () Bool)

(assert (=> b!1502819 (=> (not res!1023775) (not e!840493))))

(declare-datatypes ((array!100206 0))(
  ( (array!100207 (arr!48355 (Array (_ BitVec 32) (_ BitVec 64))) (size!48906 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100206)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(assert (=> b!1502819 (= res!1023775 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48906 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48906 a!2850)) (= (select (arr!48355 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48355 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48906 a!2850))))))

(declare-fun b!1502821 () Bool)

(declare-fun res!1023770 () Bool)

(assert (=> b!1502821 (=> (not res!1023770) (not e!840493))))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1502821 (= res!1023770 (not (= (select (arr!48355 a!2850) index!625) (select (arr!48355 a!2850) j!87))))))

(declare-fun b!1502822 () Bool)

(declare-fun res!1023772 () Bool)

(assert (=> b!1502822 (=> (not res!1023772) (not e!840493))))

(declare-datatypes ((List!35027 0))(
  ( (Nil!35024) (Cons!35023 (h!36421 (_ BitVec 64)) (t!49728 List!35027)) )
))
(declare-fun arrayNoDuplicates!0 (array!100206 (_ BitVec 32) List!35027) Bool)

(assert (=> b!1502822 (= res!1023772 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35024))))

(declare-fun b!1502823 () Bool)

(declare-fun res!1023774 () Bool)

(assert (=> b!1502823 (=> (not res!1023774) (not e!840493))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1502823 (= res!1023774 (validKeyInArray!0 (select (arr!48355 a!2850) j!87)))))

(declare-fun b!1502824 () Bool)

(declare-fun res!1023773 () Bool)

(assert (=> b!1502824 (=> (not res!1023773) (not e!840493))))

(declare-fun mask!2661 () (_ BitVec 32))

(assert (=> b!1502824 (= res!1023773 (and (= (size!48906 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48906 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48906 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1502825 () Bool)

(assert (=> b!1502825 (= e!840493 false)))

(declare-fun lt!653425 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1502825 (= lt!653425 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1502820 () Bool)

(declare-fun res!1023769 () Bool)

(assert (=> b!1502820 (=> (not res!1023769) (not e!840493))))

(declare-datatypes ((SeekEntryResult!12572 0))(
  ( (MissingZero!12572 (index!52679 (_ BitVec 32))) (Found!12572 (index!52680 (_ BitVec 32))) (Intermediate!12572 (undefined!13384 Bool) (index!52681 (_ BitVec 32)) (x!134385 (_ BitVec 32))) (Undefined!12572) (MissingVacant!12572 (index!52682 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100206 (_ BitVec 32)) SeekEntryResult!12572)

(assert (=> b!1502820 (= res!1023769 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48355 a!2850) j!87) a!2850 mask!2661) (Found!12572 j!87)))))

(declare-fun res!1023777 () Bool)

(assert (=> start!127978 (=> (not res!1023777) (not e!840493))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127978 (= res!1023777 (validMask!0 mask!2661))))

(assert (=> start!127978 e!840493))

(assert (=> start!127978 true))

(declare-fun array_inv!37300 (array!100206) Bool)

(assert (=> start!127978 (array_inv!37300 a!2850)))

(declare-fun b!1502826 () Bool)

(declare-fun res!1023771 () Bool)

(assert (=> b!1502826 (=> (not res!1023771) (not e!840493))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100206 (_ BitVec 32)) Bool)

(assert (=> b!1502826 (= res!1023771 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1502827 () Bool)

(declare-fun res!1023776 () Bool)

(assert (=> b!1502827 (=> (not res!1023776) (not e!840493))))

(assert (=> b!1502827 (= res!1023776 (validKeyInArray!0 (select (arr!48355 a!2850) i!996)))))

(assert (= (and start!127978 res!1023777) b!1502824))

(assert (= (and b!1502824 res!1023773) b!1502827))

(assert (= (and b!1502827 res!1023776) b!1502823))

(assert (= (and b!1502823 res!1023774) b!1502826))

(assert (= (and b!1502826 res!1023771) b!1502822))

(assert (= (and b!1502822 res!1023772) b!1502819))

(assert (= (and b!1502819 res!1023775) b!1502820))

(assert (= (and b!1502820 res!1023769) b!1502821))

(assert (= (and b!1502821 res!1023770) b!1502825))

(declare-fun m!1386105 () Bool)

(assert (=> b!1502826 m!1386105))

(declare-fun m!1386107 () Bool)

(assert (=> b!1502819 m!1386107))

(declare-fun m!1386109 () Bool)

(assert (=> b!1502819 m!1386109))

(declare-fun m!1386111 () Bool)

(assert (=> b!1502819 m!1386111))

(declare-fun m!1386113 () Bool)

(assert (=> b!1502825 m!1386113))

(declare-fun m!1386115 () Bool)

(assert (=> b!1502821 m!1386115))

(declare-fun m!1386117 () Bool)

(assert (=> b!1502821 m!1386117))

(declare-fun m!1386119 () Bool)

(assert (=> b!1502827 m!1386119))

(assert (=> b!1502827 m!1386119))

(declare-fun m!1386121 () Bool)

(assert (=> b!1502827 m!1386121))

(declare-fun m!1386123 () Bool)

(assert (=> start!127978 m!1386123))

(declare-fun m!1386125 () Bool)

(assert (=> start!127978 m!1386125))

(declare-fun m!1386127 () Bool)

(assert (=> b!1502822 m!1386127))

(assert (=> b!1502823 m!1386117))

(assert (=> b!1502823 m!1386117))

(declare-fun m!1386129 () Bool)

(assert (=> b!1502823 m!1386129))

(assert (=> b!1502820 m!1386117))

(assert (=> b!1502820 m!1386117))

(declare-fun m!1386131 () Bool)

(assert (=> b!1502820 m!1386131))

(push 1)

(assert (not start!127978))

(assert (not b!1502827))

(assert (not b!1502822))

(assert (not b!1502826))

(assert (not b!1502825))

(assert (not b!1502823))

(assert (not b!1502820))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

