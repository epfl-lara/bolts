; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127772 () Bool)

(assert start!127772)

(declare-fun b!1500820 () Bool)

(declare-fun res!1021977 () Bool)

(declare-fun e!839730 () Bool)

(assert (=> b!1500820 (=> (not res!1021977) (not e!839730))))

(declare-datatypes ((array!100066 0))(
  ( (array!100067 (arr!48288 (Array (_ BitVec 32) (_ BitVec 64))) (size!48839 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100066)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12517 0))(
  ( (MissingZero!12517 (index!52459 (_ BitVec 32))) (Found!12517 (index!52460 (_ BitVec 32))) (Intermediate!12517 (undefined!13329 Bool) (index!52461 (_ BitVec 32)) (x!134140 (_ BitVec 32))) (Undefined!12517) (MissingVacant!12517 (index!52462 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100066 (_ BitVec 32)) SeekEntryResult!12517)

(assert (=> b!1500820 (= res!1021977 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48288 a!2850) j!87) a!2850 mask!2661) (Found!12517 j!87)))))

(declare-fun b!1500821 () Bool)

(declare-fun res!1021968 () Bool)

(assert (=> b!1500821 (=> (not res!1021968) (not e!839730))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100066 (_ BitVec 32)) Bool)

(assert (=> b!1500821 (= res!1021968 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1500822 () Bool)

(declare-fun e!839732 () Bool)

(assert (=> b!1500822 (= e!839732 false)))

(declare-fun lt!652983 () SeekEntryResult!12517)

(declare-fun lt!652984 () (_ BitVec 32))

(assert (=> b!1500822 (= lt!652983 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652984 vacantBefore!10 (select (arr!48288 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1500823 () Bool)

(declare-fun res!1021971 () Bool)

(assert (=> b!1500823 (=> (not res!1021971) (not e!839730))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1500823 (= res!1021971 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48839 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48839 a!2850)) (= (select (arr!48288 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48288 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48839 a!2850))))))

(declare-fun b!1500824 () Bool)

(declare-fun res!1021972 () Bool)

(assert (=> b!1500824 (=> (not res!1021972) (not e!839730))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1500824 (= res!1021972 (validKeyInArray!0 (select (arr!48288 a!2850) i!996)))))

(declare-fun b!1500826 () Bool)

(declare-fun res!1021976 () Bool)

(assert (=> b!1500826 (=> (not res!1021976) (not e!839730))))

(declare-datatypes ((List!34960 0))(
  ( (Nil!34957) (Cons!34956 (h!36354 (_ BitVec 64)) (t!49661 List!34960)) )
))
(declare-fun arrayNoDuplicates!0 (array!100066 (_ BitVec 32) List!34960) Bool)

(assert (=> b!1500826 (= res!1021976 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34957))))

(declare-fun b!1500827 () Bool)

(declare-fun res!1021970 () Bool)

(assert (=> b!1500827 (=> (not res!1021970) (not e!839730))))

(assert (=> b!1500827 (= res!1021970 (not (= (select (arr!48288 a!2850) index!625) (select (arr!48288 a!2850) j!87))))))

(declare-fun b!1500828 () Bool)

(assert (=> b!1500828 (= e!839730 e!839732)))

(declare-fun res!1021973 () Bool)

(assert (=> b!1500828 (=> (not res!1021973) (not e!839732))))

(assert (=> b!1500828 (= res!1021973 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652984 #b00000000000000000000000000000000) (bvslt lt!652984 (size!48839 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1500828 (= lt!652984 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1500829 () Bool)

(declare-fun res!1021975 () Bool)

(assert (=> b!1500829 (=> (not res!1021975) (not e!839730))))

(assert (=> b!1500829 (= res!1021975 (validKeyInArray!0 (select (arr!48288 a!2850) j!87)))))

(declare-fun res!1021969 () Bool)

(assert (=> start!127772 (=> (not res!1021969) (not e!839730))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127772 (= res!1021969 (validMask!0 mask!2661))))

(assert (=> start!127772 e!839730))

(assert (=> start!127772 true))

(declare-fun array_inv!37233 (array!100066) Bool)

(assert (=> start!127772 (array_inv!37233 a!2850)))

(declare-fun b!1500825 () Bool)

(declare-fun res!1021974 () Bool)

(assert (=> b!1500825 (=> (not res!1021974) (not e!839730))))

(assert (=> b!1500825 (= res!1021974 (and (= (size!48839 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48839 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48839 a!2850)) (not (= i!996 j!87))))))

(assert (= (and start!127772 res!1021969) b!1500825))

(assert (= (and b!1500825 res!1021974) b!1500824))

(assert (= (and b!1500824 res!1021972) b!1500829))

(assert (= (and b!1500829 res!1021975) b!1500821))

(assert (= (and b!1500821 res!1021968) b!1500826))

(assert (= (and b!1500826 res!1021976) b!1500823))

(assert (= (and b!1500823 res!1021971) b!1500820))

(assert (= (and b!1500820 res!1021977) b!1500827))

(assert (= (and b!1500827 res!1021970) b!1500828))

(assert (= (and b!1500828 res!1021973) b!1500822))

(declare-fun m!1384071 () Bool)

(assert (=> b!1500824 m!1384071))

(assert (=> b!1500824 m!1384071))

(declare-fun m!1384073 () Bool)

(assert (=> b!1500824 m!1384073))

(declare-fun m!1384075 () Bool)

(assert (=> b!1500821 m!1384075))

(declare-fun m!1384077 () Bool)

(assert (=> b!1500823 m!1384077))

(declare-fun m!1384079 () Bool)

(assert (=> b!1500823 m!1384079))

(declare-fun m!1384081 () Bool)

(assert (=> b!1500823 m!1384081))

(declare-fun m!1384083 () Bool)

(assert (=> b!1500829 m!1384083))

(assert (=> b!1500829 m!1384083))

(declare-fun m!1384085 () Bool)

(assert (=> b!1500829 m!1384085))

(assert (=> b!1500822 m!1384083))

(assert (=> b!1500822 m!1384083))

(declare-fun m!1384087 () Bool)

(assert (=> b!1500822 m!1384087))

(declare-fun m!1384089 () Bool)

(assert (=> b!1500828 m!1384089))

(declare-fun m!1384091 () Bool)

(assert (=> b!1500826 m!1384091))

(declare-fun m!1384093 () Bool)

(assert (=> start!127772 m!1384093))

(declare-fun m!1384095 () Bool)

(assert (=> start!127772 m!1384095))

(assert (=> b!1500820 m!1384083))

(assert (=> b!1500820 m!1384083))

(declare-fun m!1384097 () Bool)

(assert (=> b!1500820 m!1384097))

(declare-fun m!1384099 () Bool)

(assert (=> b!1500827 m!1384099))

(assert (=> b!1500827 m!1384083))

(push 1)

(assert (not start!127772))

(assert (not b!1500821))

(assert (not b!1500820))

(assert (not b!1500822))

(assert (not b!1500826))

(assert (not b!1500828))

(assert (not b!1500829))

(assert (not b!1500824))

(check-sat)

(pop 1)

(push 1)

(check-sat)

