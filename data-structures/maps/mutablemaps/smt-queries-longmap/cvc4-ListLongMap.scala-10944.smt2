; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128090 () Bool)

(assert start!128090)

(declare-fun b!1503899 () Bool)

(declare-fun res!1024763 () Bool)

(declare-fun e!840793 () Bool)

(assert (=> b!1503899 (=> (not res!1024763) (not e!840793))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((array!100279 0))(
  ( (array!100280 (arr!48390 (Array (_ BitVec 32) (_ BitVec 64))) (size!48941 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100279)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1503899 (= res!1024763 (and (= (size!48941 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48941 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48941 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1503900 () Bool)

(declare-fun res!1024765 () Bool)

(assert (=> b!1503900 (=> (not res!1024765) (not e!840793))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100279 (_ BitVec 32)) Bool)

(assert (=> b!1503900 (= res!1024765 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1503901 () Bool)

(declare-fun res!1024767 () Bool)

(assert (=> b!1503901 (=> (not res!1024767) (not e!840793))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1503901 (= res!1024767 (validKeyInArray!0 (select (arr!48390 a!2850) i!996)))))

(declare-fun res!1024759 () Bool)

(assert (=> start!128090 (=> (not res!1024759) (not e!840793))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128090 (= res!1024759 (validMask!0 mask!2661))))

(assert (=> start!128090 e!840793))

(assert (=> start!128090 true))

(declare-fun array_inv!37335 (array!100279) Bool)

(assert (=> start!128090 (array_inv!37335 a!2850)))

(declare-fun b!1503902 () Bool)

(assert (=> b!1503902 (= e!840793 false)))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun lt!653584 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1503902 (= lt!653584 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1503903 () Bool)

(declare-fun res!1024762 () Bool)

(assert (=> b!1503903 (=> (not res!1024762) (not e!840793))))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12607 0))(
  ( (MissingZero!12607 (index!52819 (_ BitVec 32))) (Found!12607 (index!52820 (_ BitVec 32))) (Intermediate!12607 (undefined!13419 Bool) (index!52821 (_ BitVec 32)) (x!134514 (_ BitVec 32))) (Undefined!12607) (MissingVacant!12607 (index!52822 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100279 (_ BitVec 32)) SeekEntryResult!12607)

(assert (=> b!1503903 (= res!1024762 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48390 a!2850) j!87) a!2850 mask!2661) (Found!12607 j!87)))))

(declare-fun b!1503904 () Bool)

(declare-fun res!1024766 () Bool)

(assert (=> b!1503904 (=> (not res!1024766) (not e!840793))))

(declare-datatypes ((List!35062 0))(
  ( (Nil!35059) (Cons!35058 (h!36456 (_ BitVec 64)) (t!49763 List!35062)) )
))
(declare-fun arrayNoDuplicates!0 (array!100279 (_ BitVec 32) List!35062) Bool)

(assert (=> b!1503904 (= res!1024766 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35059))))

(declare-fun b!1503905 () Bool)

(declare-fun res!1024761 () Bool)

(assert (=> b!1503905 (=> (not res!1024761) (not e!840793))))

(assert (=> b!1503905 (= res!1024761 (validKeyInArray!0 (select (arr!48390 a!2850) j!87)))))

(declare-fun b!1503906 () Bool)

(declare-fun res!1024764 () Bool)

(assert (=> b!1503906 (=> (not res!1024764) (not e!840793))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1503906 (= res!1024764 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48941 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48941 a!2850)) (= (select (arr!48390 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48390 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48941 a!2850))))))

(declare-fun b!1503907 () Bool)

(declare-fun res!1024760 () Bool)

(assert (=> b!1503907 (=> (not res!1024760) (not e!840793))))

(assert (=> b!1503907 (= res!1024760 (not (= (select (arr!48390 a!2850) index!625) (select (arr!48390 a!2850) j!87))))))

(assert (= (and start!128090 res!1024759) b!1503899))

(assert (= (and b!1503899 res!1024763) b!1503901))

(assert (= (and b!1503901 res!1024767) b!1503905))

(assert (= (and b!1503905 res!1024761) b!1503900))

(assert (= (and b!1503900 res!1024765) b!1503904))

(assert (= (and b!1503904 res!1024766) b!1503906))

(assert (= (and b!1503906 res!1024764) b!1503903))

(assert (= (and b!1503903 res!1024762) b!1503907))

(assert (= (and b!1503907 res!1024760) b!1503902))

(declare-fun m!1387157 () Bool)

(assert (=> b!1503902 m!1387157))

(declare-fun m!1387159 () Bool)

(assert (=> b!1503907 m!1387159))

(declare-fun m!1387161 () Bool)

(assert (=> b!1503907 m!1387161))

(declare-fun m!1387163 () Bool)

(assert (=> start!128090 m!1387163))

(declare-fun m!1387165 () Bool)

(assert (=> start!128090 m!1387165))

(declare-fun m!1387167 () Bool)

(assert (=> b!1503901 m!1387167))

(assert (=> b!1503901 m!1387167))

(declare-fun m!1387169 () Bool)

(assert (=> b!1503901 m!1387169))

(declare-fun m!1387171 () Bool)

(assert (=> b!1503906 m!1387171))

(declare-fun m!1387173 () Bool)

(assert (=> b!1503906 m!1387173))

(declare-fun m!1387175 () Bool)

(assert (=> b!1503906 m!1387175))

(declare-fun m!1387177 () Bool)

(assert (=> b!1503904 m!1387177))

(declare-fun m!1387179 () Bool)

(assert (=> b!1503900 m!1387179))

(assert (=> b!1503905 m!1387161))

(assert (=> b!1503905 m!1387161))

(declare-fun m!1387181 () Bool)

(assert (=> b!1503905 m!1387181))

(assert (=> b!1503903 m!1387161))

(assert (=> b!1503903 m!1387161))

(declare-fun m!1387183 () Bool)

(assert (=> b!1503903 m!1387183))

(push 1)

(assert (not b!1503905))

(assert (not start!128090))

(assert (not b!1503900))

(assert (not b!1503903))

(assert (not b!1503904))

(assert (not b!1503901))

(assert (not b!1503902))

(check-sat)

(pop 1)

(push 1)

