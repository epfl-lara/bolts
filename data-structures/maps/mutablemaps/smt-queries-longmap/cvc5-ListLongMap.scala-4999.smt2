; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68524 () Bool)

(assert start!68524)

(declare-fun b!796346 () Bool)

(declare-fun res!541037 () Bool)

(declare-fun e!441901 () Bool)

(assert (=> b!796346 (=> (not res!541037) (not e!441901))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!796346 (= res!541037 (validKeyInArray!0 k!2044))))

(declare-fun b!796347 () Bool)

(declare-fun res!541040 () Bool)

(declare-fun e!441902 () Bool)

(assert (=> b!796347 (=> (not res!541040) (not e!441902))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43265 0))(
  ( (array!43266 (arr!20709 (Array (_ BitVec 32) (_ BitVec 64))) (size!21130 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43265)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!796347 (= res!541040 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21130 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20709 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21130 a!3170)) (= (select (arr!20709 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun e!441903 () Bool)

(declare-fun b!796349 () Bool)

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!796349 (= e!441903 (not (or (bvslt mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvslt vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266)))))))

(declare-datatypes ((SeekEntryResult!8307 0))(
  ( (MissingZero!8307 (index!35595 (_ BitVec 32))) (Found!8307 (index!35596 (_ BitVec 32))) (Intermediate!8307 (undefined!9119 Bool) (index!35597 (_ BitVec 32)) (x!66530 (_ BitVec 32))) (Undefined!8307) (MissingVacant!8307 (index!35598 (_ BitVec 32))) )
))
(declare-fun lt!355124 () SeekEntryResult!8307)

(assert (=> b!796349 (= lt!355124 (Found!8307 index!1236))))

(declare-fun b!796350 () Bool)

(declare-fun e!441900 () Bool)

(assert (=> b!796350 (= e!441900 e!441903)))

(declare-fun res!541045 () Bool)

(assert (=> b!796350 (=> (not res!541045) (not e!441903))))

(declare-fun lt!355121 () SeekEntryResult!8307)

(declare-fun lt!355120 () SeekEntryResult!8307)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!796350 (= res!541045 (and (= lt!355120 lt!355121) (= lt!355121 (Found!8307 j!153)) (= (select (arr!20709 a!3170) index!1236) (select (arr!20709 a!3170) j!153))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43265 (_ BitVec 32)) SeekEntryResult!8307)

(assert (=> b!796350 (= lt!355121 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20709 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43265 (_ BitVec 32)) SeekEntryResult!8307)

(assert (=> b!796350 (= lt!355120 (seekEntryOrOpen!0 (select (arr!20709 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!796351 () Bool)

(declare-fun res!541044 () Bool)

(assert (=> b!796351 (=> (not res!541044) (not e!441901))))

(declare-fun arrayContainsKey!0 (array!43265 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!796351 (= res!541044 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!796352 () Bool)

(declare-fun res!541042 () Bool)

(assert (=> b!796352 (=> (not res!541042) (not e!441902))))

(declare-datatypes ((List!14725 0))(
  ( (Nil!14722) (Cons!14721 (h!15850 (_ BitVec 64)) (t!21048 List!14725)) )
))
(declare-fun arrayNoDuplicates!0 (array!43265 (_ BitVec 32) List!14725) Bool)

(assert (=> b!796352 (= res!541042 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14722))))

(declare-fun b!796353 () Bool)

(declare-fun res!541039 () Bool)

(assert (=> b!796353 (=> (not res!541039) (not e!441902))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43265 (_ BitVec 32)) Bool)

(assert (=> b!796353 (= res!541039 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!796354 () Bool)

(assert (=> b!796354 (= e!441901 e!441902)))

(declare-fun res!541035 () Bool)

(assert (=> b!796354 (=> (not res!541035) (not e!441902))))

(declare-fun lt!355126 () SeekEntryResult!8307)

(assert (=> b!796354 (= res!541035 (or (= lt!355126 (MissingZero!8307 i!1163)) (= lt!355126 (MissingVacant!8307 i!1163))))))

(assert (=> b!796354 (= lt!355126 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!796355 () Bool)

(assert (=> b!796355 (= e!441902 e!441900)))

(declare-fun res!541041 () Bool)

(assert (=> b!796355 (=> (not res!541041) (not e!441900))))

(declare-fun lt!355123 () SeekEntryResult!8307)

(assert (=> b!796355 (= res!541041 (= lt!355123 lt!355124))))

(declare-fun lt!355122 () (_ BitVec 64))

(declare-fun lt!355125 () array!43265)

(assert (=> b!796355 (= lt!355124 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!355122 lt!355125 mask!3266))))

(assert (=> b!796355 (= lt!355123 (seekEntryOrOpen!0 lt!355122 lt!355125 mask!3266))))

(assert (=> b!796355 (= lt!355122 (select (store (arr!20709 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!796355 (= lt!355125 (array!43266 (store (arr!20709 a!3170) i!1163 k!2044) (size!21130 a!3170)))))

(declare-fun b!796356 () Bool)

(declare-fun res!541036 () Bool)

(assert (=> b!796356 (=> (not res!541036) (not e!441901))))

(assert (=> b!796356 (= res!541036 (validKeyInArray!0 (select (arr!20709 a!3170) j!153)))))

(declare-fun b!796348 () Bool)

(declare-fun res!541043 () Bool)

(assert (=> b!796348 (=> (not res!541043) (not e!441901))))

(assert (=> b!796348 (= res!541043 (and (= (size!21130 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21130 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21130 a!3170)) (not (= i!1163 j!153))))))

(declare-fun res!541038 () Bool)

(assert (=> start!68524 (=> (not res!541038) (not e!441901))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68524 (= res!541038 (validMask!0 mask!3266))))

(assert (=> start!68524 e!441901))

(assert (=> start!68524 true))

(declare-fun array_inv!16483 (array!43265) Bool)

(assert (=> start!68524 (array_inv!16483 a!3170)))

(assert (= (and start!68524 res!541038) b!796348))

(assert (= (and b!796348 res!541043) b!796356))

(assert (= (and b!796356 res!541036) b!796346))

(assert (= (and b!796346 res!541037) b!796351))

(assert (= (and b!796351 res!541044) b!796354))

(assert (= (and b!796354 res!541035) b!796353))

(assert (= (and b!796353 res!541039) b!796352))

(assert (= (and b!796352 res!541042) b!796347))

(assert (= (and b!796347 res!541040) b!796355))

(assert (= (and b!796355 res!541041) b!796350))

(assert (= (and b!796350 res!541045) b!796349))

(declare-fun m!737233 () Bool)

(assert (=> b!796356 m!737233))

(assert (=> b!796356 m!737233))

(declare-fun m!737235 () Bool)

(assert (=> b!796356 m!737235))

(declare-fun m!737237 () Bool)

(assert (=> b!796350 m!737237))

(assert (=> b!796350 m!737233))

(assert (=> b!796350 m!737233))

(declare-fun m!737239 () Bool)

(assert (=> b!796350 m!737239))

(assert (=> b!796350 m!737233))

(declare-fun m!737241 () Bool)

(assert (=> b!796350 m!737241))

(declare-fun m!737243 () Bool)

(assert (=> b!796353 m!737243))

(declare-fun m!737245 () Bool)

(assert (=> b!796354 m!737245))

(declare-fun m!737247 () Bool)

(assert (=> b!796347 m!737247))

(declare-fun m!737249 () Bool)

(assert (=> b!796347 m!737249))

(declare-fun m!737251 () Bool)

(assert (=> b!796351 m!737251))

(declare-fun m!737253 () Bool)

(assert (=> start!68524 m!737253))

(declare-fun m!737255 () Bool)

(assert (=> start!68524 m!737255))

(declare-fun m!737257 () Bool)

(assert (=> b!796346 m!737257))

(declare-fun m!737259 () Bool)

(assert (=> b!796352 m!737259))

(declare-fun m!737261 () Bool)

(assert (=> b!796355 m!737261))

(declare-fun m!737263 () Bool)

(assert (=> b!796355 m!737263))

(declare-fun m!737265 () Bool)

(assert (=> b!796355 m!737265))

(declare-fun m!737267 () Bool)

(assert (=> b!796355 m!737267))

(push 1)

(assert (not b!796352))

(assert (not b!796354))

(assert (not b!796353))

(assert (not b!796346))

(assert (not start!68524))

(assert (not b!796351))

(assert (not b!796355))

(assert (not b!796356))

(assert (not b!796350))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

