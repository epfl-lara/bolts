; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68322 () Bool)

(assert start!68322)

(declare-fun b!793309 () Bool)

(declare-fun res!538004 () Bool)

(declare-fun e!440708 () Bool)

(assert (=> b!793309 (=> (not res!538004) (not e!440708))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!793309 (= res!538004 (validKeyInArray!0 k0!2044))))

(declare-fun b!793310 () Bool)

(declare-fun res!537998 () Bool)

(declare-fun e!440709 () Bool)

(assert (=> b!793310 (=> (not res!537998) (not e!440709))))

(declare-datatypes ((array!43063 0))(
  ( (array!43064 (arr!20608 (Array (_ BitVec 32) (_ BitVec 64))) (size!21029 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43063)

(declare-datatypes ((List!14624 0))(
  ( (Nil!14621) (Cons!14620 (h!15749 (_ BitVec 64)) (t!20947 List!14624)) )
))
(declare-fun arrayNoDuplicates!0 (array!43063 (_ BitVec 32) List!14624) Bool)

(assert (=> b!793310 (= res!537998 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14621))))

(declare-fun b!793311 () Bool)

(declare-fun res!538001 () Bool)

(assert (=> b!793311 (=> (not res!538001) (not e!440709))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43063 (_ BitVec 32)) Bool)

(assert (=> b!793311 (= res!538001 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!793312 () Bool)

(declare-fun res!538003 () Bool)

(assert (=> b!793312 (=> (not res!538003) (not e!440708))))

(declare-fun arrayContainsKey!0 (array!43063 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!793312 (= res!538003 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!793313 () Bool)

(declare-fun res!537999 () Bool)

(assert (=> b!793313 (=> (not res!537999) (not e!440708))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!793313 (= res!537999 (validKeyInArray!0 (select (arr!20608 a!3170) j!153)))))

(declare-fun b!793314 () Bool)

(declare-fun res!538006 () Bool)

(assert (=> b!793314 (=> (not res!538006) (not e!440709))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!793314 (= res!538006 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21029 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20608 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21029 a!3170)) (= (select (arr!20608 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23)) (bvsge mask!3266 #b00000000000000000000000000000000) (bvslt index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvslt vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266)) (= (select (store (arr!20608 a!3170) i!1163 k0!2044) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!793315 () Bool)

(assert (=> b!793315 (= e!440709 (not (validKeyInArray!0 (select (store (arr!20608 a!3170) i!1163 k0!2044) j!153))))))

(declare-fun b!793316 () Bool)

(assert (=> b!793316 (= e!440708 e!440709)))

(declare-fun res!538000 () Bool)

(assert (=> b!793316 (=> (not res!538000) (not e!440709))))

(declare-datatypes ((SeekEntryResult!8206 0))(
  ( (MissingZero!8206 (index!35191 (_ BitVec 32))) (Found!8206 (index!35192 (_ BitVec 32))) (Intermediate!8206 (undefined!9018 Bool) (index!35193 (_ BitVec 32)) (x!66157 (_ BitVec 32))) (Undefined!8206) (MissingVacant!8206 (index!35194 (_ BitVec 32))) )
))
(declare-fun lt!353653 () SeekEntryResult!8206)

(assert (=> b!793316 (= res!538000 (or (= lt!353653 (MissingZero!8206 i!1163)) (= lt!353653 (MissingVacant!8206 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43063 (_ BitVec 32)) SeekEntryResult!8206)

(assert (=> b!793316 (= lt!353653 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!793317 () Bool)

(declare-fun res!538005 () Bool)

(assert (=> b!793317 (=> (not res!538005) (not e!440708))))

(assert (=> b!793317 (= res!538005 (and (= (size!21029 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21029 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21029 a!3170)) (not (= i!1163 j!153))))))

(declare-fun res!538002 () Bool)

(assert (=> start!68322 (=> (not res!538002) (not e!440708))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68322 (= res!538002 (validMask!0 mask!3266))))

(assert (=> start!68322 e!440708))

(assert (=> start!68322 true))

(declare-fun array_inv!16382 (array!43063) Bool)

(assert (=> start!68322 (array_inv!16382 a!3170)))

(assert (= (and start!68322 res!538002) b!793317))

(assert (= (and b!793317 res!538005) b!793313))

(assert (= (and b!793313 res!537999) b!793309))

(assert (= (and b!793309 res!538004) b!793312))

(assert (= (and b!793312 res!538003) b!793316))

(assert (= (and b!793316 res!538000) b!793311))

(assert (= (and b!793311 res!538001) b!793310))

(assert (= (and b!793310 res!537998) b!793314))

(assert (= (and b!793314 res!538006) b!793315))

(declare-fun m!733873 () Bool)

(assert (=> b!793316 m!733873))

(declare-fun m!733875 () Bool)

(assert (=> b!793313 m!733875))

(assert (=> b!793313 m!733875))

(declare-fun m!733877 () Bool)

(assert (=> b!793313 m!733877))

(declare-fun m!733879 () Bool)

(assert (=> b!793310 m!733879))

(declare-fun m!733881 () Bool)

(assert (=> b!793312 m!733881))

(declare-fun m!733883 () Bool)

(assert (=> b!793309 m!733883))

(declare-fun m!733885 () Bool)

(assert (=> b!793311 m!733885))

(declare-fun m!733887 () Bool)

(assert (=> start!68322 m!733887))

(declare-fun m!733889 () Bool)

(assert (=> start!68322 m!733889))

(declare-fun m!733891 () Bool)

(assert (=> b!793314 m!733891))

(declare-fun m!733893 () Bool)

(assert (=> b!793314 m!733893))

(declare-fun m!733895 () Bool)

(assert (=> b!793314 m!733895))

(declare-fun m!733897 () Bool)

(assert (=> b!793314 m!733897))

(assert (=> b!793315 m!733895))

(declare-fun m!733899 () Bool)

(assert (=> b!793315 m!733899))

(assert (=> b!793315 m!733899))

(declare-fun m!733901 () Bool)

(assert (=> b!793315 m!733901))

(check-sat (not start!68322) (not b!793313) (not b!793311) (not b!793312) (not b!793315) (not b!793316) (not b!793309) (not b!793310))
(check-sat)
