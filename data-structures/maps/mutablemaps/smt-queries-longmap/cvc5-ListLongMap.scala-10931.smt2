; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127930 () Bool)

(assert start!127930)

(declare-fun b!1502504 () Bool)

(declare-fun e!840352 () Bool)

(declare-fun e!840353 () Bool)

(assert (=> b!1502504 (= e!840352 e!840353)))

(declare-fun res!1023566 () Bool)

(assert (=> b!1502504 (=> (not res!1023566) (not e!840353))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((array!100191 0))(
  ( (array!100192 (arr!48349 (Array (_ BitVec 32) (_ BitVec 64))) (size!48900 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100191)

(declare-fun index!625 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12566 0))(
  ( (MissingZero!12566 (index!52655 (_ BitVec 32))) (Found!12566 (index!52656 (_ BitVec 32))) (Intermediate!12566 (undefined!13378 Bool) (index!52657 (_ BitVec 32)) (x!134360 (_ BitVec 32))) (Undefined!12566) (MissingVacant!12566 (index!52658 (_ BitVec 32))) )
))
(declare-fun lt!653356 () SeekEntryResult!12566)

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100191 (_ BitVec 32)) SeekEntryResult!12566)

(assert (=> b!1502504 (= res!1023566 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48349 a!2850) j!87) a!2850 mask!2661) lt!653356))))

(assert (=> b!1502504 (= lt!653356 (Found!12566 j!87))))

(declare-fun b!1502505 () Bool)

(declare-fun res!1023567 () Bool)

(assert (=> b!1502505 (=> (not res!1023567) (not e!840352))))

(declare-datatypes ((List!35021 0))(
  ( (Nil!35018) (Cons!35017 (h!36415 (_ BitVec 64)) (t!49722 List!35021)) )
))
(declare-fun arrayNoDuplicates!0 (array!100191 (_ BitVec 32) List!35021) Bool)

(assert (=> b!1502505 (= res!1023567 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35018))))

(declare-fun b!1502506 () Bool)

(declare-fun res!1023570 () Bool)

(assert (=> b!1502506 (=> (not res!1023570) (not e!840352))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1502506 (= res!1023570 (validKeyInArray!0 (select (arr!48349 a!2850) i!996)))))

(declare-fun b!1502507 () Bool)

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1502507 (= e!840353 (not (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantAfter!10 (select (store (arr!48349 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) j!87) (array!100192 (store (arr!48349 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48900 a!2850)) mask!2661) lt!653356)))))

(declare-fun b!1502509 () Bool)

(declare-fun res!1023569 () Bool)

(assert (=> b!1502509 (=> (not res!1023569) (not e!840352))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100191 (_ BitVec 32)) Bool)

(assert (=> b!1502509 (= res!1023569 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1502510 () Bool)

(declare-fun res!1023562 () Bool)

(assert (=> b!1502510 (=> (not res!1023562) (not e!840352))))

(assert (=> b!1502510 (= res!1023562 (and (= (size!48900 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48900 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48900 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1502511 () Bool)

(declare-fun res!1023563 () Bool)

(assert (=> b!1502511 (=> (not res!1023563) (not e!840353))))

(assert (=> b!1502511 (= res!1023563 (and (= (select (arr!48349 a!2850) index!625) (select (arr!48349 a!2850) j!87)) (= j!87 index!625)))))

(declare-fun b!1502512 () Bool)

(declare-fun res!1023565 () Bool)

(assert (=> b!1502512 (=> (not res!1023565) (not e!840352))))

(assert (=> b!1502512 (= res!1023565 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48900 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48900 a!2850)) (= (select (arr!48349 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48349 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48900 a!2850))))))

(declare-fun res!1023564 () Bool)

(assert (=> start!127930 (=> (not res!1023564) (not e!840352))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127930 (= res!1023564 (validMask!0 mask!2661))))

(assert (=> start!127930 e!840352))

(assert (=> start!127930 true))

(declare-fun array_inv!37294 (array!100191) Bool)

(assert (=> start!127930 (array_inv!37294 a!2850)))

(declare-fun b!1502508 () Bool)

(declare-fun res!1023568 () Bool)

(assert (=> b!1502508 (=> (not res!1023568) (not e!840352))))

(assert (=> b!1502508 (= res!1023568 (validKeyInArray!0 (select (arr!48349 a!2850) j!87)))))

(assert (= (and start!127930 res!1023564) b!1502510))

(assert (= (and b!1502510 res!1023562) b!1502506))

(assert (= (and b!1502506 res!1023570) b!1502508))

(assert (= (and b!1502508 res!1023568) b!1502509))

(assert (= (and b!1502509 res!1023569) b!1502505))

(assert (= (and b!1502505 res!1023567) b!1502512))

(assert (= (and b!1502512 res!1023565) b!1502504))

(assert (= (and b!1502504 res!1023566) b!1502511))

(assert (= (and b!1502511 res!1023563) b!1502507))

(declare-fun m!1385835 () Bool)

(assert (=> start!127930 m!1385835))

(declare-fun m!1385837 () Bool)

(assert (=> start!127930 m!1385837))

(declare-fun m!1385839 () Bool)

(assert (=> b!1502512 m!1385839))

(declare-fun m!1385841 () Bool)

(assert (=> b!1502512 m!1385841))

(declare-fun m!1385843 () Bool)

(assert (=> b!1502512 m!1385843))

(declare-fun m!1385845 () Bool)

(assert (=> b!1502506 m!1385845))

(assert (=> b!1502506 m!1385845))

(declare-fun m!1385847 () Bool)

(assert (=> b!1502506 m!1385847))

(declare-fun m!1385849 () Bool)

(assert (=> b!1502505 m!1385849))

(declare-fun m!1385851 () Bool)

(assert (=> b!1502511 m!1385851))

(declare-fun m!1385853 () Bool)

(assert (=> b!1502511 m!1385853))

(declare-fun m!1385855 () Bool)

(assert (=> b!1502509 m!1385855))

(assert (=> b!1502508 m!1385853))

(assert (=> b!1502508 m!1385853))

(declare-fun m!1385857 () Bool)

(assert (=> b!1502508 m!1385857))

(assert (=> b!1502507 m!1385841))

(declare-fun m!1385859 () Bool)

(assert (=> b!1502507 m!1385859))

(assert (=> b!1502507 m!1385859))

(declare-fun m!1385861 () Bool)

(assert (=> b!1502507 m!1385861))

(assert (=> b!1502504 m!1385853))

(assert (=> b!1502504 m!1385853))

(declare-fun m!1385863 () Bool)

(assert (=> b!1502504 m!1385863))

(push 1)

(assert (not b!1502508))

(assert (not b!1502505))

(assert (not b!1502509))

(assert (not b!1502506))

(assert (not start!127930))

(assert (not b!1502507))

(assert (not b!1502504))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!157681 () Bool)

(assert (=> d!157681 (= (validKeyInArray!0 (select (arr!48349 a!2850) i!996)) (and (not (= (select (arr!48349 a!2850) i!996) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48349 a!2850) i!996) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1502506 d!157681))

(declare-fun d!157683 () Bool)

(assert (=> d!157683 (= (validMask!0 mask!2661) (and (or (= mask!2661 #b00000000000000000000000000000111) (= mask!2661 #b00000000000000000000000000001111) (= mask!2661 #b00000000000000000000000000011111) (= mask!2661 #b00000000000000000000000000111111) (= mask!2661 #b00000000000000000000000001111111) (= mask!2661 #b00000000000000000000000011111111) (= mask!2661 #b00000000000000000000000111111111) (= mask!2661 #b00000000000000000000001111111111) (= mask!2661 #b00000000000000000000011111111111) (= mask!2661 #b00000000000000000000111111111111) (= mask!2661 #b00000000000000000001111111111111) (= mask!2661 #b00000000000000000011111111111111) (= mask!2661 #b00000000000000000111111111111111) (= mask!2661 #b00000000000000001111111111111111) (= mask!2661 #b00000000000000011111111111111111) (= mask!2661 #b00000000000000111111111111111111) (= mask!2661 #b00000000000001111111111111111111) (= mask!2661 #b00000000000011111111111111111111) (= mask!2661 #b00000000000111111111111111111111) (= mask!2661 #b00000000001111111111111111111111) (= mask!2661 #b00000000011111111111111111111111) (= mask!2661 #b00000000111111111111111111111111) (= mask!2661 #b00000001111111111111111111111111) (= mask!2661 #b00000011111111111111111111111111) (= mask!2661 #b00000111111111111111111111111111) (= mask!2661 #b00001111111111111111111111111111) (= mask!2661 #b00011111111111111111111111111111) (= mask!2661 #b00111111111111111111111111111111)) (bvsle mask!2661 #b00111111111111111111111111111111)))))

