; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127712 () Bool)

(assert start!127712)

(declare-fun res!1021070 () Bool)

(declare-fun e!839462 () Bool)

(assert (=> start!127712 (=> (not res!1021070) (not e!839462))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127712 (= res!1021070 (validMask!0 mask!2661))))

(assert (=> start!127712 e!839462))

(assert (=> start!127712 true))

(declare-datatypes ((array!100006 0))(
  ( (array!100007 (arr!48258 (Array (_ BitVec 32) (_ BitVec 64))) (size!48809 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100006)

(declare-fun array_inv!37203 (array!100006) Bool)

(assert (=> start!127712 (array_inv!37203 a!2850)))

(declare-fun b!1499920 () Bool)

(declare-fun res!1021072 () Bool)

(assert (=> b!1499920 (=> (not res!1021072) (not e!839462))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1499920 (= res!1021072 (and (= (size!48809 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48809 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48809 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1499921 () Bool)

(declare-fun res!1021073 () Bool)

(assert (=> b!1499921 (=> (not res!1021073) (not e!839462))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100006 (_ BitVec 32)) Bool)

(assert (=> b!1499921 (= res!1021073 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1499922 () Bool)

(declare-fun e!839461 () Bool)

(assert (=> b!1499922 (= e!839462 e!839461)))

(declare-fun res!1021074 () Bool)

(assert (=> b!1499922 (=> (not res!1021074) (not e!839461))))

(declare-fun lt!652804 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(assert (=> b!1499922 (= res!1021074 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652804 #b00000000000000000000000000000000) (bvslt lt!652804 (size!48809 a!2850))))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1499922 (= lt!652804 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1499923 () Bool)

(declare-fun res!1021075 () Bool)

(assert (=> b!1499923 (=> (not res!1021075) (not e!839462))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1499923 (= res!1021075 (validKeyInArray!0 (select (arr!48258 a!2850) j!87)))))

(declare-fun b!1499924 () Bool)

(declare-fun res!1021069 () Bool)

(assert (=> b!1499924 (=> (not res!1021069) (not e!839462))))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1499924 (= res!1021069 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48809 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48809 a!2850)) (= (select (arr!48258 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48258 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48809 a!2850))))))

(declare-fun b!1499925 () Bool)

(declare-fun res!1021071 () Bool)

(assert (=> b!1499925 (=> (not res!1021071) (not e!839462))))

(declare-datatypes ((SeekEntryResult!12487 0))(
  ( (MissingZero!12487 (index!52339 (_ BitVec 32))) (Found!12487 (index!52340 (_ BitVec 32))) (Intermediate!12487 (undefined!13299 Bool) (index!52341 (_ BitVec 32)) (x!134030 (_ BitVec 32))) (Undefined!12487) (MissingVacant!12487 (index!52342 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100006 (_ BitVec 32)) SeekEntryResult!12487)

(assert (=> b!1499925 (= res!1021071 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48258 a!2850) j!87) a!2850 mask!2661) (Found!12487 j!87)))))

(declare-fun b!1499926 () Bool)

(declare-fun res!1021068 () Bool)

(assert (=> b!1499926 (=> (not res!1021068) (not e!839462))))

(declare-datatypes ((List!34930 0))(
  ( (Nil!34927) (Cons!34926 (h!36324 (_ BitVec 64)) (t!49631 List!34930)) )
))
(declare-fun arrayNoDuplicates!0 (array!100006 (_ BitVec 32) List!34930) Bool)

(assert (=> b!1499926 (= res!1021068 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34927))))

(declare-fun b!1499927 () Bool)

(declare-fun res!1021076 () Bool)

(assert (=> b!1499927 (=> (not res!1021076) (not e!839462))))

(assert (=> b!1499927 (= res!1021076 (not (= (select (arr!48258 a!2850) index!625) (select (arr!48258 a!2850) j!87))))))

(declare-fun b!1499928 () Bool)

(declare-fun res!1021077 () Bool)

(assert (=> b!1499928 (=> (not res!1021077) (not e!839462))))

(assert (=> b!1499928 (= res!1021077 (validKeyInArray!0 (select (arr!48258 a!2850) i!996)))))

(declare-fun b!1499929 () Bool)

(assert (=> b!1499929 (= e!839461 false)))

(declare-fun lt!652803 () SeekEntryResult!12487)

(assert (=> b!1499929 (= lt!652803 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652804 vacantBefore!10 (select (arr!48258 a!2850) j!87) a!2850 mask!2661))))

(assert (= (and start!127712 res!1021070) b!1499920))

(assert (= (and b!1499920 res!1021072) b!1499928))

(assert (= (and b!1499928 res!1021077) b!1499923))

(assert (= (and b!1499923 res!1021075) b!1499921))

(assert (= (and b!1499921 res!1021073) b!1499926))

(assert (= (and b!1499926 res!1021068) b!1499924))

(assert (= (and b!1499924 res!1021069) b!1499925))

(assert (= (and b!1499925 res!1021071) b!1499927))

(assert (= (and b!1499927 res!1021076) b!1499922))

(assert (= (and b!1499922 res!1021074) b!1499929))

(declare-fun m!1383171 () Bool)

(assert (=> b!1499924 m!1383171))

(declare-fun m!1383173 () Bool)

(assert (=> b!1499924 m!1383173))

(declare-fun m!1383175 () Bool)

(assert (=> b!1499924 m!1383175))

(declare-fun m!1383177 () Bool)

(assert (=> start!127712 m!1383177))

(declare-fun m!1383179 () Bool)

(assert (=> start!127712 m!1383179))

(declare-fun m!1383181 () Bool)

(assert (=> b!1499923 m!1383181))

(assert (=> b!1499923 m!1383181))

(declare-fun m!1383183 () Bool)

(assert (=> b!1499923 m!1383183))

(declare-fun m!1383185 () Bool)

(assert (=> b!1499927 m!1383185))

(assert (=> b!1499927 m!1383181))

(declare-fun m!1383187 () Bool)

(assert (=> b!1499926 m!1383187))

(assert (=> b!1499925 m!1383181))

(assert (=> b!1499925 m!1383181))

(declare-fun m!1383189 () Bool)

(assert (=> b!1499925 m!1383189))

(declare-fun m!1383191 () Bool)

(assert (=> b!1499922 m!1383191))

(declare-fun m!1383193 () Bool)

(assert (=> b!1499928 m!1383193))

(assert (=> b!1499928 m!1383193))

(declare-fun m!1383195 () Bool)

(assert (=> b!1499928 m!1383195))

(assert (=> b!1499929 m!1383181))

(assert (=> b!1499929 m!1383181))

(declare-fun m!1383197 () Bool)

(assert (=> b!1499929 m!1383197))

(declare-fun m!1383199 () Bool)

(assert (=> b!1499921 m!1383199))

(push 1)

(assert (not start!127712))

(assert (not b!1499925))

(assert (not b!1499923))

(assert (not b!1499921))

(assert (not b!1499928))

(assert (not b!1499929))

(assert (not b!1499922))

(assert (not b!1499926))

(check-sat)

