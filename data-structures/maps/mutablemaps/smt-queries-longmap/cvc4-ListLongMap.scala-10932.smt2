; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127976 () Bool)

(assert start!127976)

(declare-fun b!1502792 () Bool)

(declare-fun e!840488 () Bool)

(assert (=> b!1502792 (= e!840488 false)))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun lt!653422 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1502792 (= lt!653422 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1502793 () Bool)

(declare-fun res!1023748 () Bool)

(assert (=> b!1502793 (=> (not res!1023748) (not e!840488))))

(declare-datatypes ((array!100204 0))(
  ( (array!100205 (arr!48354 (Array (_ BitVec 32) (_ BitVec 64))) (size!48905 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100204)

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12571 0))(
  ( (MissingZero!12571 (index!52675 (_ BitVec 32))) (Found!12571 (index!52676 (_ BitVec 32))) (Intermediate!12571 (undefined!13383 Bool) (index!52677 (_ BitVec 32)) (x!134376 (_ BitVec 32))) (Undefined!12571) (MissingVacant!12571 (index!52678 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100204 (_ BitVec 32)) SeekEntryResult!12571)

(assert (=> b!1502793 (= res!1023748 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48354 a!2850) j!87) a!2850 mask!2661) (Found!12571 j!87)))))

(declare-fun b!1502794 () Bool)

(declare-fun res!1023747 () Bool)

(assert (=> b!1502794 (=> (not res!1023747) (not e!840488))))

(assert (=> b!1502794 (= res!1023747 (not (= (select (arr!48354 a!2850) index!625) (select (arr!48354 a!2850) j!87))))))

(declare-fun b!1502795 () Bool)

(declare-fun res!1023742 () Bool)

(assert (=> b!1502795 (=> (not res!1023742) (not e!840488))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1502795 (= res!1023742 (and (= (size!48905 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48905 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48905 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1502796 () Bool)

(declare-fun res!1023746 () Bool)

(assert (=> b!1502796 (=> (not res!1023746) (not e!840488))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1502796 (= res!1023746 (validKeyInArray!0 (select (arr!48354 a!2850) j!87)))))

(declare-fun b!1502797 () Bool)

(declare-fun res!1023744 () Bool)

(assert (=> b!1502797 (=> (not res!1023744) (not e!840488))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100204 (_ BitVec 32)) Bool)

(assert (=> b!1502797 (= res!1023744 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun res!1023750 () Bool)

(assert (=> start!127976 (=> (not res!1023750) (not e!840488))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127976 (= res!1023750 (validMask!0 mask!2661))))

(assert (=> start!127976 e!840488))

(assert (=> start!127976 true))

(declare-fun array_inv!37299 (array!100204) Bool)

(assert (=> start!127976 (array_inv!37299 a!2850)))

(declare-fun b!1502798 () Bool)

(declare-fun res!1023749 () Bool)

(assert (=> b!1502798 (=> (not res!1023749) (not e!840488))))

(assert (=> b!1502798 (= res!1023749 (validKeyInArray!0 (select (arr!48354 a!2850) i!996)))))

(declare-fun b!1502799 () Bool)

(declare-fun res!1023743 () Bool)

(assert (=> b!1502799 (=> (not res!1023743) (not e!840488))))

(declare-datatypes ((List!35026 0))(
  ( (Nil!35023) (Cons!35022 (h!36420 (_ BitVec 64)) (t!49727 List!35026)) )
))
(declare-fun arrayNoDuplicates!0 (array!100204 (_ BitVec 32) List!35026) Bool)

(assert (=> b!1502799 (= res!1023743 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35023))))

(declare-fun b!1502800 () Bool)

(declare-fun res!1023745 () Bool)

(assert (=> b!1502800 (=> (not res!1023745) (not e!840488))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1502800 (= res!1023745 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48905 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48905 a!2850)) (= (select (arr!48354 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48354 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48905 a!2850))))))

(assert (= (and start!127976 res!1023750) b!1502795))

(assert (= (and b!1502795 res!1023742) b!1502798))

(assert (= (and b!1502798 res!1023749) b!1502796))

(assert (= (and b!1502796 res!1023746) b!1502797))

(assert (= (and b!1502797 res!1023744) b!1502799))

(assert (= (and b!1502799 res!1023743) b!1502800))

(assert (= (and b!1502800 res!1023745) b!1502793))

(assert (= (and b!1502793 res!1023748) b!1502794))

(assert (= (and b!1502794 res!1023747) b!1502792))

(declare-fun m!1386077 () Bool)

(assert (=> b!1502793 m!1386077))

(assert (=> b!1502793 m!1386077))

(declare-fun m!1386079 () Bool)

(assert (=> b!1502793 m!1386079))

(declare-fun m!1386081 () Bool)

(assert (=> b!1502794 m!1386081))

(assert (=> b!1502794 m!1386077))

(declare-fun m!1386083 () Bool)

(assert (=> b!1502792 m!1386083))

(declare-fun m!1386085 () Bool)

(assert (=> start!127976 m!1386085))

(declare-fun m!1386087 () Bool)

(assert (=> start!127976 m!1386087))

(assert (=> b!1502796 m!1386077))

(assert (=> b!1502796 m!1386077))

(declare-fun m!1386089 () Bool)

(assert (=> b!1502796 m!1386089))

(declare-fun m!1386091 () Bool)

(assert (=> b!1502799 m!1386091))

(declare-fun m!1386093 () Bool)

(assert (=> b!1502798 m!1386093))

(assert (=> b!1502798 m!1386093))

(declare-fun m!1386095 () Bool)

(assert (=> b!1502798 m!1386095))

(declare-fun m!1386097 () Bool)

(assert (=> b!1502797 m!1386097))

(declare-fun m!1386099 () Bool)

(assert (=> b!1502800 m!1386099))

(declare-fun m!1386101 () Bool)

(assert (=> b!1502800 m!1386101))

(declare-fun m!1386103 () Bool)

(assert (=> b!1502800 m!1386103))

(push 1)

(assert (not b!1502799))

(assert (not b!1502798))

(assert (not b!1502796))

(assert (not start!127976))

(assert (not b!1502792))

(assert (not b!1502797))

(assert (not b!1502793))

