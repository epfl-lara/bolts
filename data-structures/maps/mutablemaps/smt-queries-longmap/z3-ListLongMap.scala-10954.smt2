; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128232 () Bool)

(assert start!128232)

(declare-fun b!1505043 () Bool)

(declare-fun res!1025708 () Bool)

(declare-fun e!841241 () Bool)

(assert (=> b!1505043 (=> (not res!1025708) (not e!841241))))

(declare-datatypes ((array!100343 0))(
  ( (array!100344 (arr!48419 (Array (_ BitVec 32) (_ BitVec 64))) (size!48970 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100343)

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1505043 (= res!1025708 (validKeyInArray!0 (select (arr!48419 a!2850) j!87)))))

(declare-fun b!1505044 () Bool)

(declare-fun res!1025711 () Bool)

(declare-fun e!841240 () Bool)

(assert (=> b!1505044 (=> (not res!1025711) (not e!841240))))

(declare-fun index!625 () (_ BitVec 32))

(assert (=> b!1505044 (= res!1025711 (not (= (select (arr!48419 a!2850) index!625) (select (arr!48419 a!2850) j!87))))))

(declare-fun b!1505045 () Bool)

(declare-fun res!1025714 () Bool)

(assert (=> b!1505045 (=> (not res!1025714) (not e!841241))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1505045 (= res!1025714 (and (= (size!48970 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48970 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48970 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1505046 () Bool)

(declare-fun res!1025715 () Bool)

(assert (=> b!1505046 (=> (not res!1025715) (not e!841241))))

(assert (=> b!1505046 (= res!1025715 (validKeyInArray!0 (select (arr!48419 a!2850) i!996)))))

(declare-fun b!1505047 () Bool)

(declare-fun res!1025712 () Bool)

(declare-fun e!841238 () Bool)

(assert (=> b!1505047 (=> (not res!1025712) (not e!841238))))

(declare-datatypes ((SeekEntryResult!12636 0))(
  ( (MissingZero!12636 (index!52935 (_ BitVec 32))) (Found!12636 (index!52936 (_ BitVec 32))) (Intermediate!12636 (undefined!13448 Bool) (index!52937 (_ BitVec 32)) (x!134635 (_ BitVec 32))) (Undefined!12636) (MissingVacant!12636 (index!52938 (_ BitVec 32))) )
))
(declare-fun lt!653849 () SeekEntryResult!12636)

(declare-fun lt!653851 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100343 (_ BitVec 32)) SeekEntryResult!12636)

(assert (=> b!1505047 (= res!1025712 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653851 vacantBefore!10 (select (arr!48419 a!2850) j!87) a!2850 mask!2661) lt!653849))))

(declare-fun b!1505048 () Bool)

(assert (=> b!1505048 (= e!841241 e!841240)))

(declare-fun res!1025713 () Bool)

(assert (=> b!1505048 (=> (not res!1025713) (not e!841240))))

(assert (=> b!1505048 (= res!1025713 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48419 a!2850) j!87) a!2850 mask!2661) lt!653849))))

(assert (=> b!1505048 (= lt!653849 (Found!12636 j!87))))

(declare-fun b!1505049 () Bool)

(declare-fun res!1025706 () Bool)

(assert (=> b!1505049 (=> (not res!1025706) (not e!841241))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100343 (_ BitVec 32)) Bool)

(assert (=> b!1505049 (= res!1025706 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1505050 () Bool)

(declare-fun res!1025710 () Bool)

(assert (=> b!1505050 (=> (not res!1025710) (not e!841241))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1505050 (= res!1025710 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48970 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48970 a!2850)) (= (select (arr!48419 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48419 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48970 a!2850))))))

(declare-fun b!1505051 () Bool)

(declare-fun res!1025705 () Bool)

(assert (=> b!1505051 (=> (not res!1025705) (not e!841241))))

(declare-datatypes ((List!35091 0))(
  ( (Nil!35088) (Cons!35087 (h!36485 (_ BitVec 64)) (t!49792 List!35091)) )
))
(declare-fun arrayNoDuplicates!0 (array!100343 (_ BitVec 32) List!35091) Bool)

(assert (=> b!1505051 (= res!1025705 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35088))))

(declare-fun b!1505053 () Bool)

(assert (=> b!1505053 (= e!841240 e!841238)))

(declare-fun res!1025709 () Bool)

(assert (=> b!1505053 (=> (not res!1025709) (not e!841238))))

(assert (=> b!1505053 (= res!1025709 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!653851 #b00000000000000000000000000000000) (bvslt lt!653851 (size!48970 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1505053 (= lt!653851 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1505052 () Bool)

(assert (=> b!1505052 (= e!841238 (not true))))

(assert (=> b!1505052 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653851 vacantAfter!10 (select (store (arr!48419 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) j!87) (array!100344 (store (arr!48419 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48970 a!2850)) mask!2661) lt!653849)))

(declare-datatypes ((Unit!50234 0))(
  ( (Unit!50235) )
))
(declare-fun lt!653850 () Unit!50234)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!100343 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50234)

(assert (=> b!1505052 (= lt!653850 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2850 i!996 j!87 (bvadd #b00000000000000000000000000000001 x!647) lt!653851 vacantBefore!10 vacantAfter!10 mask!2661))))

(declare-fun res!1025707 () Bool)

(assert (=> start!128232 (=> (not res!1025707) (not e!841241))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128232 (= res!1025707 (validMask!0 mask!2661))))

(assert (=> start!128232 e!841241))

(assert (=> start!128232 true))

(declare-fun array_inv!37364 (array!100343) Bool)

(assert (=> start!128232 (array_inv!37364 a!2850)))

(assert (= (and start!128232 res!1025707) b!1505045))

(assert (= (and b!1505045 res!1025714) b!1505046))

(assert (= (and b!1505046 res!1025715) b!1505043))

(assert (= (and b!1505043 res!1025708) b!1505049))

(assert (= (and b!1505049 res!1025706) b!1505051))

(assert (= (and b!1505051 res!1025705) b!1505050))

(assert (= (and b!1505050 res!1025710) b!1505048))

(assert (= (and b!1505048 res!1025713) b!1505044))

(assert (= (and b!1505044 res!1025711) b!1505053))

(assert (= (and b!1505053 res!1025709) b!1505047))

(assert (= (and b!1505047 res!1025712) b!1505052))

(declare-fun m!1388211 () Bool)

(assert (=> start!128232 m!1388211))

(declare-fun m!1388213 () Bool)

(assert (=> start!128232 m!1388213))

(declare-fun m!1388215 () Bool)

(assert (=> b!1505044 m!1388215))

(declare-fun m!1388217 () Bool)

(assert (=> b!1505044 m!1388217))

(assert (=> b!1505043 m!1388217))

(assert (=> b!1505043 m!1388217))

(declare-fun m!1388219 () Bool)

(assert (=> b!1505043 m!1388219))

(declare-fun m!1388221 () Bool)

(assert (=> b!1505049 m!1388221))

(declare-fun m!1388223 () Bool)

(assert (=> b!1505052 m!1388223))

(declare-fun m!1388225 () Bool)

(assert (=> b!1505052 m!1388225))

(assert (=> b!1505052 m!1388225))

(declare-fun m!1388227 () Bool)

(assert (=> b!1505052 m!1388227))

(declare-fun m!1388229 () Bool)

(assert (=> b!1505052 m!1388229))

(declare-fun m!1388231 () Bool)

(assert (=> b!1505050 m!1388231))

(assert (=> b!1505050 m!1388223))

(declare-fun m!1388233 () Bool)

(assert (=> b!1505050 m!1388233))

(declare-fun m!1388235 () Bool)

(assert (=> b!1505051 m!1388235))

(assert (=> b!1505048 m!1388217))

(assert (=> b!1505048 m!1388217))

(declare-fun m!1388237 () Bool)

(assert (=> b!1505048 m!1388237))

(declare-fun m!1388239 () Bool)

(assert (=> b!1505053 m!1388239))

(declare-fun m!1388241 () Bool)

(assert (=> b!1505046 m!1388241))

(assert (=> b!1505046 m!1388241))

(declare-fun m!1388243 () Bool)

(assert (=> b!1505046 m!1388243))

(assert (=> b!1505047 m!1388217))

(assert (=> b!1505047 m!1388217))

(declare-fun m!1388245 () Bool)

(assert (=> b!1505047 m!1388245))

(check-sat (not b!1505053) (not b!1505048) (not b!1505049) (not b!1505043) (not b!1505051) (not b!1505052) (not b!1505046) (not b!1505047) (not start!128232))
(check-sat)
