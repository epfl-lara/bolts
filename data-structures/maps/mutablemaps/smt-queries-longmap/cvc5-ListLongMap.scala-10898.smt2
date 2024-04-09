; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127696 () Bool)

(assert start!127696)

(declare-fun b!1499680 () Bool)

(declare-fun res!1020828 () Bool)

(declare-fun e!839388 () Bool)

(assert (=> b!1499680 (=> (not res!1020828) (not e!839388))))

(declare-datatypes ((array!99990 0))(
  ( (array!99991 (arr!48250 (Array (_ BitVec 32) (_ BitVec 64))) (size!48801 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99990)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1499680 (= res!1020828 (not (= (select (arr!48250 a!2850) index!625) (select (arr!48250 a!2850) j!87))))))

(declare-fun b!1499681 () Bool)

(declare-fun res!1020836 () Bool)

(assert (=> b!1499681 (=> (not res!1020836) (not e!839388))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1499681 (= res!1020836 (validKeyInArray!0 (select (arr!48250 a!2850) i!996)))))

(declare-fun res!1020837 () Bool)

(assert (=> start!127696 (=> (not res!1020837) (not e!839388))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127696 (= res!1020837 (validMask!0 mask!2661))))

(assert (=> start!127696 e!839388))

(assert (=> start!127696 true))

(declare-fun array_inv!37195 (array!99990) Bool)

(assert (=> start!127696 (array_inv!37195 a!2850)))

(declare-fun b!1499682 () Bool)

(declare-fun res!1020835 () Bool)

(assert (=> b!1499682 (=> (not res!1020835) (not e!839388))))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1499682 (= res!1020835 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48801 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48801 a!2850)) (= (select (arr!48250 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48250 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48801 a!2850))))))

(declare-fun b!1499683 () Bool)

(declare-fun res!1020832 () Bool)

(assert (=> b!1499683 (=> (not res!1020832) (not e!839388))))

(assert (=> b!1499683 (= res!1020832 (validKeyInArray!0 (select (arr!48250 a!2850) j!87)))))

(declare-fun b!1499684 () Bool)

(declare-fun e!839389 () Bool)

(assert (=> b!1499684 (= e!839389 false)))

(declare-datatypes ((SeekEntryResult!12479 0))(
  ( (MissingZero!12479 (index!52307 (_ BitVec 32))) (Found!12479 (index!52308 (_ BitVec 32))) (Intermediate!12479 (undefined!13291 Bool) (index!52309 (_ BitVec 32)) (x!134006 (_ BitVec 32))) (Undefined!12479) (MissingVacant!12479 (index!52310 (_ BitVec 32))) )
))
(declare-fun lt!652756 () SeekEntryResult!12479)

(declare-fun lt!652755 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99990 (_ BitVec 32)) SeekEntryResult!12479)

(assert (=> b!1499684 (= lt!652756 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652755 vacantBefore!10 (select (arr!48250 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1499685 () Bool)

(assert (=> b!1499685 (= e!839388 e!839389)))

(declare-fun res!1020831 () Bool)

(assert (=> b!1499685 (=> (not res!1020831) (not e!839389))))

(assert (=> b!1499685 (= res!1020831 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652755 #b00000000000000000000000000000000) (bvslt lt!652755 (size!48801 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1499685 (= lt!652755 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1499686 () Bool)

(declare-fun res!1020834 () Bool)

(assert (=> b!1499686 (=> (not res!1020834) (not e!839388))))

(declare-datatypes ((List!34922 0))(
  ( (Nil!34919) (Cons!34918 (h!36316 (_ BitVec 64)) (t!49623 List!34922)) )
))
(declare-fun arrayNoDuplicates!0 (array!99990 (_ BitVec 32) List!34922) Bool)

(assert (=> b!1499686 (= res!1020834 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34919))))

(declare-fun b!1499687 () Bool)

(declare-fun res!1020830 () Bool)

(assert (=> b!1499687 (=> (not res!1020830) (not e!839388))))

(assert (=> b!1499687 (= res!1020830 (and (= (size!48801 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48801 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48801 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1499688 () Bool)

(declare-fun res!1020829 () Bool)

(assert (=> b!1499688 (=> (not res!1020829) (not e!839388))))

(assert (=> b!1499688 (= res!1020829 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48250 a!2850) j!87) a!2850 mask!2661) (Found!12479 j!87)))))

(declare-fun b!1499689 () Bool)

(declare-fun res!1020833 () Bool)

(assert (=> b!1499689 (=> (not res!1020833) (not e!839388))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99990 (_ BitVec 32)) Bool)

(assert (=> b!1499689 (= res!1020833 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(assert (= (and start!127696 res!1020837) b!1499687))

(assert (= (and b!1499687 res!1020830) b!1499681))

(assert (= (and b!1499681 res!1020836) b!1499683))

(assert (= (and b!1499683 res!1020832) b!1499689))

(assert (= (and b!1499689 res!1020833) b!1499686))

(assert (= (and b!1499686 res!1020834) b!1499682))

(assert (= (and b!1499682 res!1020835) b!1499688))

(assert (= (and b!1499688 res!1020829) b!1499680))

(assert (= (and b!1499680 res!1020828) b!1499685))

(assert (= (and b!1499685 res!1020831) b!1499684))

(declare-fun m!1382931 () Bool)

(assert (=> b!1499682 m!1382931))

(declare-fun m!1382933 () Bool)

(assert (=> b!1499682 m!1382933))

(declare-fun m!1382935 () Bool)

(assert (=> b!1499682 m!1382935))

(declare-fun m!1382937 () Bool)

(assert (=> b!1499685 m!1382937))

(declare-fun m!1382939 () Bool)

(assert (=> b!1499688 m!1382939))

(assert (=> b!1499688 m!1382939))

(declare-fun m!1382941 () Bool)

(assert (=> b!1499688 m!1382941))

(declare-fun m!1382943 () Bool)

(assert (=> b!1499689 m!1382943))

(declare-fun m!1382945 () Bool)

(assert (=> b!1499681 m!1382945))

(assert (=> b!1499681 m!1382945))

(declare-fun m!1382947 () Bool)

(assert (=> b!1499681 m!1382947))

(assert (=> b!1499684 m!1382939))

(assert (=> b!1499684 m!1382939))

(declare-fun m!1382949 () Bool)

(assert (=> b!1499684 m!1382949))

(declare-fun m!1382951 () Bool)

(assert (=> b!1499686 m!1382951))

(declare-fun m!1382953 () Bool)

(assert (=> start!127696 m!1382953))

(declare-fun m!1382955 () Bool)

(assert (=> start!127696 m!1382955))

(declare-fun m!1382957 () Bool)

(assert (=> b!1499680 m!1382957))

(assert (=> b!1499680 m!1382939))

(assert (=> b!1499683 m!1382939))

(assert (=> b!1499683 m!1382939))

(declare-fun m!1382959 () Bool)

(assert (=> b!1499683 m!1382959))

(push 1)

