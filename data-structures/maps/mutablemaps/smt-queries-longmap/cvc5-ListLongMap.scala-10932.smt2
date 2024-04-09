; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127972 () Bool)

(assert start!127972)

(declare-fun res!1023692 () Bool)

(declare-fun e!840475 () Bool)

(assert (=> start!127972 (=> (not res!1023692) (not e!840475))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127972 (= res!1023692 (validMask!0 mask!2661))))

(assert (=> start!127972 e!840475))

(assert (=> start!127972 true))

(declare-datatypes ((array!100200 0))(
  ( (array!100201 (arr!48352 (Array (_ BitVec 32) (_ BitVec 64))) (size!48903 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100200)

(declare-fun array_inv!37297 (array!100200) Bool)

(assert (=> start!127972 (array_inv!37297 a!2850)))

(declare-fun b!1502738 () Bool)

(assert (=> b!1502738 (= e!840475 false)))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun lt!653416 () (_ BitVec 32))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1502738 (= lt!653416 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1502739 () Bool)

(declare-fun res!1023694 () Bool)

(assert (=> b!1502739 (=> (not res!1023694) (not e!840475))))

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1502739 (= res!1023694 (validKeyInArray!0 (select (arr!48352 a!2850) j!87)))))

(declare-fun b!1502740 () Bool)

(declare-fun res!1023696 () Bool)

(assert (=> b!1502740 (=> (not res!1023696) (not e!840475))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1502740 (= res!1023696 (and (= (size!48903 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48903 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48903 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1502741 () Bool)

(declare-fun res!1023688 () Bool)

(assert (=> b!1502741 (=> (not res!1023688) (not e!840475))))

(assert (=> b!1502741 (= res!1023688 (validKeyInArray!0 (select (arr!48352 a!2850) i!996)))))

(declare-fun b!1502742 () Bool)

(declare-fun res!1023691 () Bool)

(assert (=> b!1502742 (=> (not res!1023691) (not e!840475))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100200 (_ BitVec 32)) Bool)

(assert (=> b!1502742 (= res!1023691 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1502743 () Bool)

(declare-fun res!1023689 () Bool)

(assert (=> b!1502743 (=> (not res!1023689) (not e!840475))))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1502743 (= res!1023689 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48903 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48903 a!2850)) (= (select (arr!48352 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48352 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48903 a!2850))))))

(declare-fun b!1502744 () Bool)

(declare-fun res!1023690 () Bool)

(assert (=> b!1502744 (=> (not res!1023690) (not e!840475))))

(declare-datatypes ((SeekEntryResult!12569 0))(
  ( (MissingZero!12569 (index!52667 (_ BitVec 32))) (Found!12569 (index!52668 (_ BitVec 32))) (Intermediate!12569 (undefined!13381 Bool) (index!52669 (_ BitVec 32)) (x!134374 (_ BitVec 32))) (Undefined!12569) (MissingVacant!12569 (index!52670 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100200 (_ BitVec 32)) SeekEntryResult!12569)

(assert (=> b!1502744 (= res!1023690 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48352 a!2850) j!87) a!2850 mask!2661) (Found!12569 j!87)))))

(declare-fun b!1502745 () Bool)

(declare-fun res!1023695 () Bool)

(assert (=> b!1502745 (=> (not res!1023695) (not e!840475))))

(declare-datatypes ((List!35024 0))(
  ( (Nil!35021) (Cons!35020 (h!36418 (_ BitVec 64)) (t!49725 List!35024)) )
))
(declare-fun arrayNoDuplicates!0 (array!100200 (_ BitVec 32) List!35024) Bool)

(assert (=> b!1502745 (= res!1023695 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35021))))

(declare-fun b!1502746 () Bool)

(declare-fun res!1023693 () Bool)

(assert (=> b!1502746 (=> (not res!1023693) (not e!840475))))

(assert (=> b!1502746 (= res!1023693 (not (= (select (arr!48352 a!2850) index!625) (select (arr!48352 a!2850) j!87))))))

(assert (= (and start!127972 res!1023692) b!1502740))

(assert (= (and b!1502740 res!1023696) b!1502741))

(assert (= (and b!1502741 res!1023688) b!1502739))

(assert (= (and b!1502739 res!1023694) b!1502742))

(assert (= (and b!1502742 res!1023691) b!1502745))

(assert (= (and b!1502745 res!1023695) b!1502743))

(assert (= (and b!1502743 res!1023689) b!1502744))

(assert (= (and b!1502744 res!1023690) b!1502746))

(assert (= (and b!1502746 res!1023693) b!1502738))

(declare-fun m!1386021 () Bool)

(assert (=> b!1502743 m!1386021))

(declare-fun m!1386023 () Bool)

(assert (=> b!1502743 m!1386023))

(declare-fun m!1386025 () Bool)

(assert (=> b!1502743 m!1386025))

(declare-fun m!1386027 () Bool)

(assert (=> b!1502739 m!1386027))

(assert (=> b!1502739 m!1386027))

(declare-fun m!1386029 () Bool)

(assert (=> b!1502739 m!1386029))

(declare-fun m!1386031 () Bool)

(assert (=> b!1502738 m!1386031))

(declare-fun m!1386033 () Bool)

(assert (=> b!1502746 m!1386033))

(assert (=> b!1502746 m!1386027))

(declare-fun m!1386035 () Bool)

(assert (=> b!1502742 m!1386035))

(declare-fun m!1386037 () Bool)

(assert (=> b!1502745 m!1386037))

(declare-fun m!1386039 () Bool)

(assert (=> start!127972 m!1386039))

(declare-fun m!1386041 () Bool)

(assert (=> start!127972 m!1386041))

(declare-fun m!1386043 () Bool)

(assert (=> b!1502741 m!1386043))

(assert (=> b!1502741 m!1386043))

(declare-fun m!1386045 () Bool)

(assert (=> b!1502741 m!1386045))

(assert (=> b!1502744 m!1386027))

(assert (=> b!1502744 m!1386027))

(declare-fun m!1386047 () Bool)

(assert (=> b!1502744 m!1386047))

(push 1)

(assert (not b!1502744))

(assert (not b!1502741))

(assert (not b!1502738))

(assert (not b!1502742))

(assert (not start!127972))

(assert (not b!1502745))

(assert (not b!1502739))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

