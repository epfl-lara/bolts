; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127706 () Bool)

(assert start!127706)

(declare-fun b!1499830 () Bool)

(declare-fun res!1020978 () Bool)

(declare-fun e!839435 () Bool)

(assert (=> b!1499830 (=> (not res!1020978) (not e!839435))))

(declare-datatypes ((array!100000 0))(
  ( (array!100001 (arr!48255 (Array (_ BitVec 32) (_ BitVec 64))) (size!48806 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100000)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1499830 (= res!1020978 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48806 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48806 a!2850)) (= (select (arr!48255 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48255 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48806 a!2850))))))

(declare-fun b!1499831 () Bool)

(declare-fun res!1020980 () Bool)

(assert (=> b!1499831 (=> (not res!1020980) (not e!839435))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1499831 (= res!1020980 (validKeyInArray!0 (select (arr!48255 a!2850) i!996)))))

(declare-fun b!1499832 () Bool)

(declare-fun res!1020985 () Bool)

(assert (=> b!1499832 (=> (not res!1020985) (not e!839435))))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1499832 (= res!1020985 (validKeyInArray!0 (select (arr!48255 a!2850) j!87)))))

(declare-fun b!1499833 () Bool)

(declare-fun res!1020981 () Bool)

(assert (=> b!1499833 (=> (not res!1020981) (not e!839435))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12484 0))(
  ( (MissingZero!12484 (index!52327 (_ BitVec 32))) (Found!12484 (index!52328 (_ BitVec 32))) (Intermediate!12484 (undefined!13296 Bool) (index!52329 (_ BitVec 32)) (x!134019 (_ BitVec 32))) (Undefined!12484) (MissingVacant!12484 (index!52330 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100000 (_ BitVec 32)) SeekEntryResult!12484)

(assert (=> b!1499833 (= res!1020981 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48255 a!2850) j!87) a!2850 mask!2661) (Found!12484 j!87)))))

(declare-fun b!1499834 () Bool)

(declare-fun res!1020984 () Bool)

(assert (=> b!1499834 (=> (not res!1020984) (not e!839435))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100000 (_ BitVec 32)) Bool)

(assert (=> b!1499834 (= res!1020984 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun res!1020987 () Bool)

(assert (=> start!127706 (=> (not res!1020987) (not e!839435))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127706 (= res!1020987 (validMask!0 mask!2661))))

(assert (=> start!127706 e!839435))

(assert (=> start!127706 true))

(declare-fun array_inv!37200 (array!100000) Bool)

(assert (=> start!127706 (array_inv!37200 a!2850)))

(declare-fun b!1499835 () Bool)

(declare-fun e!839434 () Bool)

(assert (=> b!1499835 (= e!839435 e!839434)))

(declare-fun res!1020982 () Bool)

(assert (=> b!1499835 (=> (not res!1020982) (not e!839434))))

(declare-fun lt!652785 () (_ BitVec 32))

(assert (=> b!1499835 (= res!1020982 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652785 #b00000000000000000000000000000000) (bvslt lt!652785 (size!48806 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1499835 (= lt!652785 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1499836 () Bool)

(declare-fun res!1020979 () Bool)

(assert (=> b!1499836 (=> (not res!1020979) (not e!839435))))

(assert (=> b!1499836 (= res!1020979 (not (= (select (arr!48255 a!2850) index!625) (select (arr!48255 a!2850) j!87))))))

(declare-fun b!1499837 () Bool)

(declare-fun res!1020986 () Bool)

(assert (=> b!1499837 (=> (not res!1020986) (not e!839435))))

(declare-datatypes ((List!34927 0))(
  ( (Nil!34924) (Cons!34923 (h!36321 (_ BitVec 64)) (t!49628 List!34927)) )
))
(declare-fun arrayNoDuplicates!0 (array!100000 (_ BitVec 32) List!34927) Bool)

(assert (=> b!1499837 (= res!1020986 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34924))))

(declare-fun b!1499838 () Bool)

(assert (=> b!1499838 (= e!839434 false)))

(declare-fun lt!652786 () SeekEntryResult!12484)

(assert (=> b!1499838 (= lt!652786 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652785 vacantBefore!10 (select (arr!48255 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1499839 () Bool)

(declare-fun res!1020983 () Bool)

(assert (=> b!1499839 (=> (not res!1020983) (not e!839435))))

(assert (=> b!1499839 (= res!1020983 (and (= (size!48806 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48806 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48806 a!2850)) (not (= i!996 j!87))))))

(assert (= (and start!127706 res!1020987) b!1499839))

(assert (= (and b!1499839 res!1020983) b!1499831))

(assert (= (and b!1499831 res!1020980) b!1499832))

(assert (= (and b!1499832 res!1020985) b!1499834))

(assert (= (and b!1499834 res!1020984) b!1499837))

(assert (= (and b!1499837 res!1020986) b!1499830))

(assert (= (and b!1499830 res!1020978) b!1499833))

(assert (= (and b!1499833 res!1020981) b!1499836))

(assert (= (and b!1499836 res!1020979) b!1499835))

(assert (= (and b!1499835 res!1020982) b!1499838))

(declare-fun m!1383081 () Bool)

(assert (=> b!1499832 m!1383081))

(assert (=> b!1499832 m!1383081))

(declare-fun m!1383083 () Bool)

(assert (=> b!1499832 m!1383083))

(declare-fun m!1383085 () Bool)

(assert (=> b!1499837 m!1383085))

(declare-fun m!1383087 () Bool)

(assert (=> b!1499835 m!1383087))

(declare-fun m!1383089 () Bool)

(assert (=> b!1499831 m!1383089))

(assert (=> b!1499831 m!1383089))

(declare-fun m!1383091 () Bool)

(assert (=> b!1499831 m!1383091))

(assert (=> b!1499838 m!1383081))

(assert (=> b!1499838 m!1383081))

(declare-fun m!1383093 () Bool)

(assert (=> b!1499838 m!1383093))

(declare-fun m!1383095 () Bool)

(assert (=> b!1499830 m!1383095))

(declare-fun m!1383097 () Bool)

(assert (=> b!1499830 m!1383097))

(declare-fun m!1383099 () Bool)

(assert (=> b!1499830 m!1383099))

(declare-fun m!1383101 () Bool)

(assert (=> start!127706 m!1383101))

(declare-fun m!1383103 () Bool)

(assert (=> start!127706 m!1383103))

(assert (=> b!1499833 m!1383081))

(assert (=> b!1499833 m!1383081))

(declare-fun m!1383105 () Bool)

(assert (=> b!1499833 m!1383105))

(declare-fun m!1383107 () Bool)

(assert (=> b!1499836 m!1383107))

(assert (=> b!1499836 m!1383081))

(declare-fun m!1383109 () Bool)

(assert (=> b!1499834 m!1383109))

(push 1)

(assert (not b!1499838))

(assert (not b!1499834))

(assert (not b!1499833))

(assert (not start!127706))

(assert (not b!1499835))

(assert (not b!1499831))

(assert (not b!1499837))

(assert (not b!1499832))

(check-sat)

