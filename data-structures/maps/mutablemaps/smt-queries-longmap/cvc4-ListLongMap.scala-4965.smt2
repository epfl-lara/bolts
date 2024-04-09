; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68324 () Bool)

(assert start!68324)

(declare-fun b!793336 () Bool)

(declare-fun res!538027 () Bool)

(declare-fun e!440717 () Bool)

(assert (=> b!793336 (=> (not res!538027) (not e!440717))))

(declare-datatypes ((array!43065 0))(
  ( (array!43066 (arr!20609 (Array (_ BitVec 32) (_ BitVec 64))) (size!21030 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43065)

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43065 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!793336 (= res!538027 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!793337 () Bool)

(declare-fun res!538033 () Bool)

(assert (=> b!793337 (=> (not res!538033) (not e!440717))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!793337 (= res!538033 (and (= (size!21030 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21030 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21030 a!3170)) (not (= i!1163 j!153))))))

(declare-fun e!440719 () Bool)

(declare-fun b!793338 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!793338 (= e!440719 (not (validKeyInArray!0 (select (store (arr!20609 a!3170) i!1163 k!2044) j!153))))))

(declare-fun b!793339 () Bool)

(declare-fun res!538028 () Bool)

(assert (=> b!793339 (=> (not res!538028) (not e!440717))))

(assert (=> b!793339 (= res!538028 (validKeyInArray!0 (select (arr!20609 a!3170) j!153)))))

(declare-fun b!793340 () Bool)

(declare-fun res!538032 () Bool)

(assert (=> b!793340 (=> (not res!538032) (not e!440719))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!793340 (= res!538032 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21030 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20609 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21030 a!3170)) (= (select (arr!20609 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23)) (bvsge mask!3266 #b00000000000000000000000000000000) (bvslt index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvslt vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266)) (= (select (store (arr!20609 a!3170) i!1163 k!2044) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!538025 () Bool)

(assert (=> start!68324 (=> (not res!538025) (not e!440717))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68324 (= res!538025 (validMask!0 mask!3266))))

(assert (=> start!68324 e!440717))

(assert (=> start!68324 true))

(declare-fun array_inv!16383 (array!43065) Bool)

(assert (=> start!68324 (array_inv!16383 a!3170)))

(declare-fun b!793341 () Bool)

(assert (=> b!793341 (= e!440717 e!440719)))

(declare-fun res!538030 () Bool)

(assert (=> b!793341 (=> (not res!538030) (not e!440719))))

(declare-datatypes ((SeekEntryResult!8207 0))(
  ( (MissingZero!8207 (index!35195 (_ BitVec 32))) (Found!8207 (index!35196 (_ BitVec 32))) (Intermediate!8207 (undefined!9019 Bool) (index!35197 (_ BitVec 32)) (x!66158 (_ BitVec 32))) (Undefined!8207) (MissingVacant!8207 (index!35198 (_ BitVec 32))) )
))
(declare-fun lt!353656 () SeekEntryResult!8207)

(assert (=> b!793341 (= res!538030 (or (= lt!353656 (MissingZero!8207 i!1163)) (= lt!353656 (MissingVacant!8207 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43065 (_ BitVec 32)) SeekEntryResult!8207)

(assert (=> b!793341 (= lt!353656 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!793342 () Bool)

(declare-fun res!538031 () Bool)

(assert (=> b!793342 (=> (not res!538031) (not e!440719))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43065 (_ BitVec 32)) Bool)

(assert (=> b!793342 (= res!538031 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!793343 () Bool)

(declare-fun res!538026 () Bool)

(assert (=> b!793343 (=> (not res!538026) (not e!440719))))

(declare-datatypes ((List!14625 0))(
  ( (Nil!14622) (Cons!14621 (h!15750 (_ BitVec 64)) (t!20948 List!14625)) )
))
(declare-fun arrayNoDuplicates!0 (array!43065 (_ BitVec 32) List!14625) Bool)

(assert (=> b!793343 (= res!538026 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14622))))

(declare-fun b!793344 () Bool)

(declare-fun res!538029 () Bool)

(assert (=> b!793344 (=> (not res!538029) (not e!440717))))

(assert (=> b!793344 (= res!538029 (validKeyInArray!0 k!2044))))

(assert (= (and start!68324 res!538025) b!793337))

(assert (= (and b!793337 res!538033) b!793339))

(assert (= (and b!793339 res!538028) b!793344))

(assert (= (and b!793344 res!538029) b!793336))

(assert (= (and b!793336 res!538027) b!793341))

(assert (= (and b!793341 res!538030) b!793342))

(assert (= (and b!793342 res!538031) b!793343))

(assert (= (and b!793343 res!538026) b!793340))

(assert (= (and b!793340 res!538032) b!793338))

(declare-fun m!733903 () Bool)

(assert (=> start!68324 m!733903))

(declare-fun m!733905 () Bool)

(assert (=> start!68324 m!733905))

(declare-fun m!733907 () Bool)

(assert (=> b!793342 m!733907))

(declare-fun m!733909 () Bool)

(assert (=> b!793339 m!733909))

(assert (=> b!793339 m!733909))

(declare-fun m!733911 () Bool)

(assert (=> b!793339 m!733911))

(declare-fun m!733913 () Bool)

(assert (=> b!793338 m!733913))

(declare-fun m!733915 () Bool)

(assert (=> b!793338 m!733915))

(assert (=> b!793338 m!733915))

(declare-fun m!733917 () Bool)

(assert (=> b!793338 m!733917))

(declare-fun m!733919 () Bool)

(assert (=> b!793344 m!733919))

(declare-fun m!733921 () Bool)

(assert (=> b!793336 m!733921))

(declare-fun m!733923 () Bool)

(assert (=> b!793340 m!733923))

(declare-fun m!733925 () Bool)

(assert (=> b!793340 m!733925))

(assert (=> b!793340 m!733913))

(declare-fun m!733927 () Bool)

(assert (=> b!793340 m!733927))

(declare-fun m!733929 () Bool)

(assert (=> b!793341 m!733929))

(declare-fun m!733931 () Bool)

(assert (=> b!793343 m!733931))

(push 1)

(assert (not b!793339))

(assert (not b!793338))

(assert (not start!68324))

(assert (not b!793343))

(assert (not b!793341))

(assert (not b!793336))

(assert (not b!793342))

(assert (not b!793344))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

