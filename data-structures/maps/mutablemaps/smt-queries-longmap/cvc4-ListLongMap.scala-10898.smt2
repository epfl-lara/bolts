; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127700 () Bool)

(assert start!127700)

(declare-fun b!1499740 () Bool)

(declare-fun res!1020894 () Bool)

(declare-fun e!839408 () Bool)

(assert (=> b!1499740 (=> (not res!1020894) (not e!839408))))

(declare-datatypes ((array!99994 0))(
  ( (array!99995 (arr!48252 (Array (_ BitVec 32) (_ BitVec 64))) (size!48803 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99994)

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99994 (_ BitVec 32)) Bool)

(assert (=> b!1499740 (= res!1020894 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1499741 () Bool)

(declare-fun res!1020895 () Bool)

(assert (=> b!1499741 (=> (not res!1020895) (not e!839408))))

(declare-datatypes ((List!34924 0))(
  ( (Nil!34921) (Cons!34920 (h!36318 (_ BitVec 64)) (t!49625 List!34924)) )
))
(declare-fun arrayNoDuplicates!0 (array!99994 (_ BitVec 32) List!34924) Bool)

(assert (=> b!1499741 (= res!1020895 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34921))))

(declare-fun res!1020889 () Bool)

(assert (=> start!127700 (=> (not res!1020889) (not e!839408))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127700 (= res!1020889 (validMask!0 mask!2661))))

(assert (=> start!127700 e!839408))

(assert (=> start!127700 true))

(declare-fun array_inv!37197 (array!99994) Bool)

(assert (=> start!127700 (array_inv!37197 a!2850)))

(declare-fun b!1499742 () Bool)

(declare-fun res!1020896 () Bool)

(assert (=> b!1499742 (=> (not res!1020896) (not e!839408))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12481 0))(
  ( (MissingZero!12481 (index!52315 (_ BitVec 32))) (Found!12481 (index!52316 (_ BitVec 32))) (Intermediate!12481 (undefined!13293 Bool) (index!52317 (_ BitVec 32)) (x!134008 (_ BitVec 32))) (Undefined!12481) (MissingVacant!12481 (index!52318 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99994 (_ BitVec 32)) SeekEntryResult!12481)

(assert (=> b!1499742 (= res!1020896 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48252 a!2850) j!87) a!2850 mask!2661) (Found!12481 j!87)))))

(declare-fun b!1499743 () Bool)

(declare-fun res!1020897 () Bool)

(assert (=> b!1499743 (=> (not res!1020897) (not e!839408))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1499743 (= res!1020897 (validKeyInArray!0 (select (arr!48252 a!2850) i!996)))))

(declare-fun b!1499744 () Bool)

(declare-fun res!1020893 () Bool)

(assert (=> b!1499744 (=> (not res!1020893) (not e!839408))))

(assert (=> b!1499744 (= res!1020893 (validKeyInArray!0 (select (arr!48252 a!2850) j!87)))))

(declare-fun b!1499745 () Bool)

(declare-fun res!1020891 () Bool)

(assert (=> b!1499745 (=> (not res!1020891) (not e!839408))))

(assert (=> b!1499745 (= res!1020891 (and (= (size!48803 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48803 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48803 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1499746 () Bool)

(declare-fun e!839407 () Bool)

(assert (=> b!1499746 (= e!839407 false)))

(declare-fun lt!652768 () SeekEntryResult!12481)

(declare-fun lt!652767 () (_ BitVec 32))

(assert (=> b!1499746 (= lt!652768 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652767 vacantBefore!10 (select (arr!48252 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1499747 () Bool)

(assert (=> b!1499747 (= e!839408 e!839407)))

(declare-fun res!1020890 () Bool)

(assert (=> b!1499747 (=> (not res!1020890) (not e!839407))))

(assert (=> b!1499747 (= res!1020890 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652767 #b00000000000000000000000000000000) (bvslt lt!652767 (size!48803 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1499747 (= lt!652767 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1499748 () Bool)

(declare-fun res!1020892 () Bool)

(assert (=> b!1499748 (=> (not res!1020892) (not e!839408))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1499748 (= res!1020892 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48803 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48803 a!2850)) (= (select (arr!48252 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48252 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48803 a!2850))))))

(declare-fun b!1499749 () Bool)

(declare-fun res!1020888 () Bool)

(assert (=> b!1499749 (=> (not res!1020888) (not e!839408))))

(assert (=> b!1499749 (= res!1020888 (not (= (select (arr!48252 a!2850) index!625) (select (arr!48252 a!2850) j!87))))))

(assert (= (and start!127700 res!1020889) b!1499745))

(assert (= (and b!1499745 res!1020891) b!1499743))

(assert (= (and b!1499743 res!1020897) b!1499744))

(assert (= (and b!1499744 res!1020893) b!1499740))

(assert (= (and b!1499740 res!1020894) b!1499741))

(assert (= (and b!1499741 res!1020895) b!1499748))

(assert (= (and b!1499748 res!1020892) b!1499742))

(assert (= (and b!1499742 res!1020896) b!1499749))

(assert (= (and b!1499749 res!1020888) b!1499747))

(assert (= (and b!1499747 res!1020890) b!1499746))

(declare-fun m!1382991 () Bool)

(assert (=> b!1499740 m!1382991))

(declare-fun m!1382993 () Bool)

(assert (=> b!1499743 m!1382993))

(assert (=> b!1499743 m!1382993))

(declare-fun m!1382995 () Bool)

(assert (=> b!1499743 m!1382995))

(declare-fun m!1382997 () Bool)

(assert (=> b!1499741 m!1382997))

(declare-fun m!1382999 () Bool)

(assert (=> b!1499744 m!1382999))

(assert (=> b!1499744 m!1382999))

(declare-fun m!1383001 () Bool)

(assert (=> b!1499744 m!1383001))

(assert (=> b!1499742 m!1382999))

(assert (=> b!1499742 m!1382999))

(declare-fun m!1383003 () Bool)

(assert (=> b!1499742 m!1383003))

(declare-fun m!1383005 () Bool)

(assert (=> b!1499748 m!1383005))

(declare-fun m!1383007 () Bool)

(assert (=> b!1499748 m!1383007))

(declare-fun m!1383009 () Bool)

(assert (=> b!1499748 m!1383009))

(declare-fun m!1383011 () Bool)

(assert (=> b!1499749 m!1383011))

(assert (=> b!1499749 m!1382999))

(declare-fun m!1383013 () Bool)

(assert (=> start!127700 m!1383013))

(declare-fun m!1383015 () Bool)

(assert (=> start!127700 m!1383015))

(declare-fun m!1383017 () Bool)

(assert (=> b!1499747 m!1383017))

(assert (=> b!1499746 m!1382999))

(assert (=> b!1499746 m!1382999))

(declare-fun m!1383019 () Bool)

(assert (=> b!1499746 m!1383019))

(push 1)

(assert (not b!1499741))

(assert (not start!127700))

(assert (not b!1499743))

(assert (not b!1499744))

(assert (not b!1499747))

(assert (not b!1499746))

(assert (not b!1499740))

(assert (not b!1499742))

(check-sat)

(pop 1)

