; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128088 () Bool)

(assert start!128088)

(declare-fun b!1503872 () Bool)

(declare-fun res!1024733 () Bool)

(declare-fun e!840788 () Bool)

(assert (=> b!1503872 (=> (not res!1024733) (not e!840788))))

(declare-datatypes ((array!100277 0))(
  ( (array!100278 (arr!48389 (Array (_ BitVec 32) (_ BitVec 64))) (size!48940 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100277)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1503872 (= res!1024733 (validKeyInArray!0 (select (arr!48389 a!2850) i!996)))))

(declare-fun b!1503873 () Bool)

(declare-fun res!1024734 () Bool)

(assert (=> b!1503873 (=> (not res!1024734) (not e!840788))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1503873 (= res!1024734 (and (= (size!48940 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48940 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48940 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1503874 () Bool)

(declare-fun res!1024736 () Bool)

(assert (=> b!1503874 (=> (not res!1024736) (not e!840788))))

(assert (=> b!1503874 (= res!1024736 (validKeyInArray!0 (select (arr!48389 a!2850) j!87)))))

(declare-fun b!1503875 () Bool)

(declare-fun res!1024732 () Bool)

(assert (=> b!1503875 (=> (not res!1024732) (not e!840788))))

(declare-datatypes ((List!35061 0))(
  ( (Nil!35058) (Cons!35057 (h!36455 (_ BitVec 64)) (t!49762 List!35061)) )
))
(declare-fun arrayNoDuplicates!0 (array!100277 (_ BitVec 32) List!35061) Bool)

(assert (=> b!1503875 (= res!1024732 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35058))))

(declare-fun b!1503876 () Bool)

(assert (=> b!1503876 (= e!840788 false)))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun lt!653581 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1503876 (= lt!653581 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun res!1024739 () Bool)

(assert (=> start!128088 (=> (not res!1024739) (not e!840788))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128088 (= res!1024739 (validMask!0 mask!2661))))

(assert (=> start!128088 e!840788))

(assert (=> start!128088 true))

(declare-fun array_inv!37334 (array!100277) Bool)

(assert (=> start!128088 (array_inv!37334 a!2850)))

(declare-fun b!1503877 () Bool)

(declare-fun res!1024738 () Bool)

(assert (=> b!1503877 (=> (not res!1024738) (not e!840788))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100277 (_ BitVec 32)) Bool)

(assert (=> b!1503877 (= res!1024738 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1503878 () Bool)

(declare-fun res!1024737 () Bool)

(assert (=> b!1503878 (=> (not res!1024737) (not e!840788))))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12606 0))(
  ( (MissingZero!12606 (index!52815 (_ BitVec 32))) (Found!12606 (index!52816 (_ BitVec 32))) (Intermediate!12606 (undefined!13418 Bool) (index!52817 (_ BitVec 32)) (x!134513 (_ BitVec 32))) (Undefined!12606) (MissingVacant!12606 (index!52818 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100277 (_ BitVec 32)) SeekEntryResult!12606)

(assert (=> b!1503878 (= res!1024737 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48389 a!2850) j!87) a!2850 mask!2661) (Found!12606 j!87)))))

(declare-fun b!1503879 () Bool)

(declare-fun res!1024735 () Bool)

(assert (=> b!1503879 (=> (not res!1024735) (not e!840788))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1503879 (= res!1024735 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48940 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48940 a!2850)) (= (select (arr!48389 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48389 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48940 a!2850))))))

(declare-fun b!1503880 () Bool)

(declare-fun res!1024740 () Bool)

(assert (=> b!1503880 (=> (not res!1024740) (not e!840788))))

(assert (=> b!1503880 (= res!1024740 (not (= (select (arr!48389 a!2850) index!625) (select (arr!48389 a!2850) j!87))))))

(assert (= (and start!128088 res!1024739) b!1503873))

(assert (= (and b!1503873 res!1024734) b!1503872))

(assert (= (and b!1503872 res!1024733) b!1503874))

(assert (= (and b!1503874 res!1024736) b!1503877))

(assert (= (and b!1503877 res!1024738) b!1503875))

(assert (= (and b!1503875 res!1024732) b!1503879))

(assert (= (and b!1503879 res!1024735) b!1503878))

(assert (= (and b!1503878 res!1024737) b!1503880))

(assert (= (and b!1503880 res!1024740) b!1503876))

(declare-fun m!1387129 () Bool)

(assert (=> b!1503879 m!1387129))

(declare-fun m!1387131 () Bool)

(assert (=> b!1503879 m!1387131))

(declare-fun m!1387133 () Bool)

(assert (=> b!1503879 m!1387133))

(declare-fun m!1387135 () Bool)

(assert (=> b!1503877 m!1387135))

(declare-fun m!1387137 () Bool)

(assert (=> b!1503880 m!1387137))

(declare-fun m!1387139 () Bool)

(assert (=> b!1503880 m!1387139))

(declare-fun m!1387141 () Bool)

(assert (=> start!128088 m!1387141))

(declare-fun m!1387143 () Bool)

(assert (=> start!128088 m!1387143))

(assert (=> b!1503874 m!1387139))

(assert (=> b!1503874 m!1387139))

(declare-fun m!1387145 () Bool)

(assert (=> b!1503874 m!1387145))

(declare-fun m!1387147 () Bool)

(assert (=> b!1503872 m!1387147))

(assert (=> b!1503872 m!1387147))

(declare-fun m!1387149 () Bool)

(assert (=> b!1503872 m!1387149))

(assert (=> b!1503878 m!1387139))

(assert (=> b!1503878 m!1387139))

(declare-fun m!1387151 () Bool)

(assert (=> b!1503878 m!1387151))

(declare-fun m!1387153 () Bool)

(assert (=> b!1503875 m!1387153))

(declare-fun m!1387155 () Bool)

(assert (=> b!1503876 m!1387155))

(check-sat (not b!1503874) (not start!128088) (not b!1503875) (not b!1503872) (not b!1503876) (not b!1503878) (not b!1503877))
