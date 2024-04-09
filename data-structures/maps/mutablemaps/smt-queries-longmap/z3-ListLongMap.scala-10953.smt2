; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128226 () Bool)

(assert start!128226)

(declare-fun b!1504944 () Bool)

(declare-fun res!1025609 () Bool)

(declare-fun e!841203 () Bool)

(assert (=> b!1504944 (=> (not res!1025609) (not e!841203))))

(declare-datatypes ((array!100337 0))(
  ( (array!100338 (arr!48416 (Array (_ BitVec 32) (_ BitVec 64))) (size!48967 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100337)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1504944 (= res!1025609 (validKeyInArray!0 (select (arr!48416 a!2850) i!996)))))

(declare-fun b!1504945 () Bool)

(declare-fun e!841202 () Bool)

(declare-fun e!841204 () Bool)

(assert (=> b!1504945 (= e!841202 e!841204)))

(declare-fun res!1025606 () Bool)

(assert (=> b!1504945 (=> (not res!1025606) (not e!841204))))

(declare-fun lt!653823 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(assert (=> b!1504945 (= res!1025606 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!653823 #b00000000000000000000000000000000) (bvslt lt!653823 (size!48967 a!2850))))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1504945 (= lt!653823 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1504946 () Bool)

(declare-fun res!1025616 () Bool)

(assert (=> b!1504946 (=> (not res!1025616) (not e!841203))))

(declare-datatypes ((List!35088 0))(
  ( (Nil!35085) (Cons!35084 (h!36482 (_ BitVec 64)) (t!49789 List!35088)) )
))
(declare-fun arrayNoDuplicates!0 (array!100337 (_ BitVec 32) List!35088) Bool)

(assert (=> b!1504946 (= res!1025616 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35085))))

(declare-fun res!1025614 () Bool)

(assert (=> start!128226 (=> (not res!1025614) (not e!841203))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128226 (= res!1025614 (validMask!0 mask!2661))))

(assert (=> start!128226 e!841203))

(assert (=> start!128226 true))

(declare-fun array_inv!37361 (array!100337) Bool)

(assert (=> start!128226 (array_inv!37361 a!2850)))

(declare-fun b!1504947 () Bool)

(declare-fun res!1025607 () Bool)

(assert (=> b!1504947 (=> (not res!1025607) (not e!841202))))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1504947 (= res!1025607 (not (= (select (arr!48416 a!2850) index!625) (select (arr!48416 a!2850) j!87))))))

(declare-fun b!1504948 () Bool)

(declare-fun res!1025615 () Bool)

(assert (=> b!1504948 (=> (not res!1025615) (not e!841203))))

(assert (=> b!1504948 (= res!1025615 (validKeyInArray!0 (select (arr!48416 a!2850) j!87)))))

(declare-fun b!1504949 () Bool)

(declare-fun res!1025611 () Bool)

(assert (=> b!1504949 (=> (not res!1025611) (not e!841203))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100337 (_ BitVec 32)) Bool)

(assert (=> b!1504949 (= res!1025611 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1504950 () Bool)

(assert (=> b!1504950 (= e!841203 e!841202)))

(declare-fun res!1025613 () Bool)

(assert (=> b!1504950 (=> (not res!1025613) (not e!841202))))

(declare-datatypes ((SeekEntryResult!12633 0))(
  ( (MissingZero!12633 (index!52923 (_ BitVec 32))) (Found!12633 (index!52924 (_ BitVec 32))) (Intermediate!12633 (undefined!13445 Bool) (index!52925 (_ BitVec 32)) (x!134624 (_ BitVec 32))) (Undefined!12633) (MissingVacant!12633 (index!52926 (_ BitVec 32))) )
))
(declare-fun lt!653822 () SeekEntryResult!12633)

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100337 (_ BitVec 32)) SeekEntryResult!12633)

(assert (=> b!1504950 (= res!1025613 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48416 a!2850) j!87) a!2850 mask!2661) lt!653822))))

(assert (=> b!1504950 (= lt!653822 (Found!12633 j!87))))

(declare-fun b!1504951 () Bool)

(declare-fun res!1025612 () Bool)

(assert (=> b!1504951 (=> (not res!1025612) (not e!841204))))

(assert (=> b!1504951 (= res!1025612 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653823 vacantBefore!10 (select (arr!48416 a!2850) j!87) a!2850 mask!2661) lt!653822))))

(declare-fun b!1504952 () Bool)

(declare-fun res!1025610 () Bool)

(assert (=> b!1504952 (=> (not res!1025610) (not e!841203))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1504952 (= res!1025610 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48967 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48967 a!2850)) (= (select (arr!48416 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48416 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48967 a!2850))))))

(declare-fun b!1504953 () Bool)

(declare-fun res!1025608 () Bool)

(assert (=> b!1504953 (=> (not res!1025608) (not e!841203))))

(assert (=> b!1504953 (= res!1025608 (and (= (size!48967 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48967 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48967 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1504954 () Bool)

(assert (=> b!1504954 (= e!841204 (not true))))

(assert (=> b!1504954 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653823 vacantAfter!10 (select (store (arr!48416 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) j!87) (array!100338 (store (arr!48416 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48967 a!2850)) mask!2661) lt!653822)))

(declare-datatypes ((Unit!50228 0))(
  ( (Unit!50229) )
))
(declare-fun lt!653824 () Unit!50228)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!100337 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50228)

(assert (=> b!1504954 (= lt!653824 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2850 i!996 j!87 (bvadd #b00000000000000000000000000000001 x!647) lt!653823 vacantBefore!10 vacantAfter!10 mask!2661))))

(assert (= (and start!128226 res!1025614) b!1504953))

(assert (= (and b!1504953 res!1025608) b!1504944))

(assert (= (and b!1504944 res!1025609) b!1504948))

(assert (= (and b!1504948 res!1025615) b!1504949))

(assert (= (and b!1504949 res!1025611) b!1504946))

(assert (= (and b!1504946 res!1025616) b!1504952))

(assert (= (and b!1504952 res!1025610) b!1504950))

(assert (= (and b!1504950 res!1025613) b!1504947))

(assert (= (and b!1504947 res!1025607) b!1504945))

(assert (= (and b!1504945 res!1025606) b!1504951))

(assert (= (and b!1504951 res!1025612) b!1504954))

(declare-fun m!1388103 () Bool)

(assert (=> b!1504954 m!1388103))

(declare-fun m!1388105 () Bool)

(assert (=> b!1504954 m!1388105))

(assert (=> b!1504954 m!1388105))

(declare-fun m!1388107 () Bool)

(assert (=> b!1504954 m!1388107))

(declare-fun m!1388109 () Bool)

(assert (=> b!1504954 m!1388109))

(declare-fun m!1388111 () Bool)

(assert (=> b!1504949 m!1388111))

(declare-fun m!1388113 () Bool)

(assert (=> b!1504946 m!1388113))

(declare-fun m!1388115 () Bool)

(assert (=> b!1504947 m!1388115))

(declare-fun m!1388117 () Bool)

(assert (=> b!1504947 m!1388117))

(declare-fun m!1388119 () Bool)

(assert (=> b!1504952 m!1388119))

(assert (=> b!1504952 m!1388103))

(declare-fun m!1388121 () Bool)

(assert (=> b!1504952 m!1388121))

(assert (=> b!1504951 m!1388117))

(assert (=> b!1504951 m!1388117))

(declare-fun m!1388123 () Bool)

(assert (=> b!1504951 m!1388123))

(assert (=> b!1504948 m!1388117))

(assert (=> b!1504948 m!1388117))

(declare-fun m!1388125 () Bool)

(assert (=> b!1504948 m!1388125))

(assert (=> b!1504950 m!1388117))

(assert (=> b!1504950 m!1388117))

(declare-fun m!1388127 () Bool)

(assert (=> b!1504950 m!1388127))

(declare-fun m!1388129 () Bool)

(assert (=> b!1504945 m!1388129))

(declare-fun m!1388131 () Bool)

(assert (=> b!1504944 m!1388131))

(assert (=> b!1504944 m!1388131))

(declare-fun m!1388133 () Bool)

(assert (=> b!1504944 m!1388133))

(declare-fun m!1388135 () Bool)

(assert (=> start!128226 m!1388135))

(declare-fun m!1388137 () Bool)

(assert (=> start!128226 m!1388137))

(check-sat (not start!128226) (not b!1504951) (not b!1504954) (not b!1504946) (not b!1504945) (not b!1504948) (not b!1504944) (not b!1504950) (not b!1504949))
(check-sat)
