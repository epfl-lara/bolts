; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127762 () Bool)

(assert start!127762)

(declare-fun b!1500670 () Bool)

(declare-fun res!1021818 () Bool)

(declare-fun e!839687 () Bool)

(assert (=> b!1500670 (=> (not res!1021818) (not e!839687))))

(declare-datatypes ((array!100056 0))(
  ( (array!100057 (arr!48283 (Array (_ BitVec 32) (_ BitVec 64))) (size!48834 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100056)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1500670 (= res!1021818 (not (= (select (arr!48283 a!2850) index!625) (select (arr!48283 a!2850) j!87))))))

(declare-fun b!1500671 () Bool)

(declare-fun e!839685 () Bool)

(assert (=> b!1500671 (= e!839687 e!839685)))

(declare-fun res!1021827 () Bool)

(assert (=> b!1500671 (=> (not res!1021827) (not e!839685))))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun lt!652954 () (_ BitVec 32))

(assert (=> b!1500671 (= res!1021827 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652954 #b00000000000000000000000000000000) (bvslt lt!652954 (size!48834 a!2850))))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1500671 (= lt!652954 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1500672 () Bool)

(declare-fun res!1021826 () Bool)

(assert (=> b!1500672 (=> (not res!1021826) (not e!839687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100056 (_ BitVec 32)) Bool)

(assert (=> b!1500672 (= res!1021826 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1500673 () Bool)

(declare-fun res!1021823 () Bool)

(assert (=> b!1500673 (=> (not res!1021823) (not e!839687))))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12512 0))(
  ( (MissingZero!12512 (index!52439 (_ BitVec 32))) (Found!12512 (index!52440 (_ BitVec 32))) (Intermediate!12512 (undefined!13324 Bool) (index!52441 (_ BitVec 32)) (x!134127 (_ BitVec 32))) (Undefined!12512) (MissingVacant!12512 (index!52442 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100056 (_ BitVec 32)) SeekEntryResult!12512)

(assert (=> b!1500673 (= res!1021823 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48283 a!2850) j!87) a!2850 mask!2661) (Found!12512 j!87)))))

(declare-fun b!1500674 () Bool)

(declare-fun res!1021824 () Bool)

(assert (=> b!1500674 (=> (not res!1021824) (not e!839687))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1500674 (= res!1021824 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48834 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48834 a!2850)) (= (select (arr!48283 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48283 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48834 a!2850))))))

(declare-fun b!1500675 () Bool)

(declare-fun res!1021825 () Bool)

(assert (=> b!1500675 (=> (not res!1021825) (not e!839687))))

(assert (=> b!1500675 (= res!1021825 (and (= (size!48834 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48834 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48834 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1500676 () Bool)

(declare-fun res!1021820 () Bool)

(assert (=> b!1500676 (=> (not res!1021820) (not e!839687))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1500676 (= res!1021820 (validKeyInArray!0 (select (arr!48283 a!2850) i!996)))))

(declare-fun b!1500677 () Bool)

(declare-fun res!1021822 () Bool)

(assert (=> b!1500677 (=> (not res!1021822) (not e!839687))))

(assert (=> b!1500677 (= res!1021822 (validKeyInArray!0 (select (arr!48283 a!2850) j!87)))))

(declare-fun b!1500678 () Bool)

(assert (=> b!1500678 (= e!839685 false)))

(declare-fun lt!652953 () SeekEntryResult!12512)

(assert (=> b!1500678 (= lt!652953 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652954 vacantBefore!10 (select (arr!48283 a!2850) j!87) a!2850 mask!2661))))

(declare-fun res!1021819 () Bool)

(assert (=> start!127762 (=> (not res!1021819) (not e!839687))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127762 (= res!1021819 (validMask!0 mask!2661))))

(assert (=> start!127762 e!839687))

(assert (=> start!127762 true))

(declare-fun array_inv!37228 (array!100056) Bool)

(assert (=> start!127762 (array_inv!37228 a!2850)))

(declare-fun b!1500679 () Bool)

(declare-fun res!1021821 () Bool)

(assert (=> b!1500679 (=> (not res!1021821) (not e!839687))))

(declare-datatypes ((List!34955 0))(
  ( (Nil!34952) (Cons!34951 (h!36349 (_ BitVec 64)) (t!49656 List!34955)) )
))
(declare-fun arrayNoDuplicates!0 (array!100056 (_ BitVec 32) List!34955) Bool)

(assert (=> b!1500679 (= res!1021821 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34952))))

(assert (= (and start!127762 res!1021819) b!1500675))

(assert (= (and b!1500675 res!1021825) b!1500676))

(assert (= (and b!1500676 res!1021820) b!1500677))

(assert (= (and b!1500677 res!1021822) b!1500672))

(assert (= (and b!1500672 res!1021826) b!1500679))

(assert (= (and b!1500679 res!1021821) b!1500674))

(assert (= (and b!1500674 res!1021824) b!1500673))

(assert (= (and b!1500673 res!1021823) b!1500670))

(assert (= (and b!1500670 res!1021818) b!1500671))

(assert (= (and b!1500671 res!1021827) b!1500678))

(declare-fun m!1383921 () Bool)

(assert (=> b!1500674 m!1383921))

(declare-fun m!1383923 () Bool)

(assert (=> b!1500674 m!1383923))

(declare-fun m!1383925 () Bool)

(assert (=> b!1500674 m!1383925))

(declare-fun m!1383927 () Bool)

(assert (=> b!1500671 m!1383927))

(declare-fun m!1383929 () Bool)

(assert (=> b!1500672 m!1383929))

(declare-fun m!1383931 () Bool)

(assert (=> b!1500670 m!1383931))

(declare-fun m!1383933 () Bool)

(assert (=> b!1500670 m!1383933))

(declare-fun m!1383935 () Bool)

(assert (=> b!1500679 m!1383935))

(declare-fun m!1383937 () Bool)

(assert (=> start!127762 m!1383937))

(declare-fun m!1383939 () Bool)

(assert (=> start!127762 m!1383939))

(declare-fun m!1383941 () Bool)

(assert (=> b!1500676 m!1383941))

(assert (=> b!1500676 m!1383941))

(declare-fun m!1383943 () Bool)

(assert (=> b!1500676 m!1383943))

(assert (=> b!1500677 m!1383933))

(assert (=> b!1500677 m!1383933))

(declare-fun m!1383945 () Bool)

(assert (=> b!1500677 m!1383945))

(assert (=> b!1500673 m!1383933))

(assert (=> b!1500673 m!1383933))

(declare-fun m!1383947 () Bool)

(assert (=> b!1500673 m!1383947))

(assert (=> b!1500678 m!1383933))

(assert (=> b!1500678 m!1383933))

(declare-fun m!1383949 () Bool)

(assert (=> b!1500678 m!1383949))

(push 1)

