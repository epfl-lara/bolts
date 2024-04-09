; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68690 () Bool)

(assert start!68690)

(declare-fun b!799227 () Bool)

(declare-fun res!543916 () Bool)

(declare-fun e!443246 () Bool)

(assert (=> b!799227 (=> (not res!543916) (not e!443246))))

(declare-datatypes ((array!43431 0))(
  ( (array!43432 (arr!20792 (Array (_ BitVec 32) (_ BitVec 64))) (size!21213 (_ BitVec 32))) )
))
(declare-fun lt!356907 () array!43431)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!356914 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!8390 0))(
  ( (MissingZero!8390 (index!35927 (_ BitVec 32))) (Found!8390 (index!35928 (_ BitVec 32))) (Intermediate!8390 (undefined!9202 Bool) (index!35929 (_ BitVec 32)) (x!66829 (_ BitVec 32))) (Undefined!8390) (MissingVacant!8390 (index!35930 (_ BitVec 32))) )
))
(declare-fun lt!356909 () SeekEntryResult!8390)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun lt!356911 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43431 (_ BitVec 32)) SeekEntryResult!8390)

(assert (=> b!799227 (= res!543916 (= lt!356909 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!356911 vacantAfter!23 lt!356914 lt!356907 mask!3266)))))

(declare-fun b!799228 () Bool)

(declare-fun res!543922 () Bool)

(declare-fun e!443244 () Bool)

(assert (=> b!799228 (=> (not res!543922) (not e!443244))))

(declare-fun a!3170 () array!43431)

(declare-datatypes ((List!14808 0))(
  ( (Nil!14805) (Cons!14804 (h!15933 (_ BitVec 64)) (t!21131 List!14808)) )
))
(declare-fun arrayNoDuplicates!0 (array!43431 (_ BitVec 32) List!14808) Bool)

(assert (=> b!799228 (= res!543922 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14805))))

(declare-fun b!799229 () Bool)

(declare-fun res!543924 () Bool)

(declare-fun e!443245 () Bool)

(assert (=> b!799229 (=> (not res!543924) (not e!443245))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!799229 (= res!543924 (validKeyInArray!0 (select (arr!20792 a!3170) j!153)))))

(declare-fun b!799230 () Bool)

(declare-fun res!543927 () Bool)

(assert (=> b!799230 (=> (not res!543927) (not e!443245))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!799230 (= res!543927 (and (= (size!21213 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21213 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21213 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!799231 () Bool)

(declare-fun e!443243 () Bool)

(assert (=> b!799231 (= e!443243 e!443246)))

(declare-fun res!543920 () Bool)

(assert (=> b!799231 (=> (not res!543920) (not e!443246))))

(assert (=> b!799231 (= res!543920 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!356911 #b00000000000000000000000000000000) (bvslt lt!356911 (size!21213 a!3170))))))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!799231 (= lt!356911 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!799232 () Bool)

(declare-fun res!543919 () Bool)

(assert (=> b!799232 (=> (not res!543919) (not e!443244))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!799232 (= res!543919 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21213 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20792 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21213 a!3170)) (= (select (arr!20792 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!799233 () Bool)

(assert (=> b!799233 (= e!443245 e!443244)))

(declare-fun res!543928 () Bool)

(assert (=> b!799233 (=> (not res!543928) (not e!443244))))

(declare-fun lt!356910 () SeekEntryResult!8390)

(assert (=> b!799233 (= res!543928 (or (= lt!356910 (MissingZero!8390 i!1163)) (= lt!356910 (MissingVacant!8390 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43431 (_ BitVec 32)) SeekEntryResult!8390)

(assert (=> b!799233 (= lt!356910 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!799234 () Bool)

(assert (=> b!799234 (= e!443246 false)))

(declare-fun lt!356913 () SeekEntryResult!8390)

(assert (=> b!799234 (= lt!356913 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!356911 vacantBefore!23 (select (arr!20792 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!799235 () Bool)

(declare-fun res!543917 () Bool)

(assert (=> b!799235 (=> (not res!543917) (not e!443245))))

(assert (=> b!799235 (= res!543917 (validKeyInArray!0 k!2044))))

(declare-fun b!799236 () Bool)

(declare-fun e!443247 () Bool)

(assert (=> b!799236 (= e!443244 e!443247)))

(declare-fun res!543925 () Bool)

(assert (=> b!799236 (=> (not res!543925) (not e!443247))))

(assert (=> b!799236 (= res!543925 (= lt!356909 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!356914 lt!356907 mask!3266)))))

(assert (=> b!799236 (= lt!356909 (seekEntryOrOpen!0 lt!356914 lt!356907 mask!3266))))

(assert (=> b!799236 (= lt!356914 (select (store (arr!20792 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!799236 (= lt!356907 (array!43432 (store (arr!20792 a!3170) i!1163 k!2044) (size!21213 a!3170)))))

(declare-fun b!799237 () Bool)

(declare-fun res!543926 () Bool)

(assert (=> b!799237 (=> (not res!543926) (not e!443245))))

(declare-fun arrayContainsKey!0 (array!43431 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!799237 (= res!543926 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!799239 () Bool)

(assert (=> b!799239 (= e!443247 e!443243)))

(declare-fun res!543923 () Bool)

(assert (=> b!799239 (=> (not res!543923) (not e!443243))))

(declare-fun lt!356908 () SeekEntryResult!8390)

(declare-fun lt!356912 () SeekEntryResult!8390)

(assert (=> b!799239 (= res!543923 (and (= lt!356912 lt!356908) (= lt!356908 (Found!8390 j!153)) (not (= (select (arr!20792 a!3170) index!1236) (select (arr!20792 a!3170) j!153)))))))

(assert (=> b!799239 (= lt!356908 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20792 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!799239 (= lt!356912 (seekEntryOrOpen!0 (select (arr!20792 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!799238 () Bool)

(declare-fun res!543921 () Bool)

(assert (=> b!799238 (=> (not res!543921) (not e!443244))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43431 (_ BitVec 32)) Bool)

(assert (=> b!799238 (= res!543921 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun res!543918 () Bool)

(assert (=> start!68690 (=> (not res!543918) (not e!443245))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68690 (= res!543918 (validMask!0 mask!3266))))

(assert (=> start!68690 e!443245))

(assert (=> start!68690 true))

(declare-fun array_inv!16566 (array!43431) Bool)

(assert (=> start!68690 (array_inv!16566 a!3170)))

(assert (= (and start!68690 res!543918) b!799230))

(assert (= (and b!799230 res!543927) b!799229))

(assert (= (and b!799229 res!543924) b!799235))

(assert (= (and b!799235 res!543917) b!799237))

(assert (= (and b!799237 res!543926) b!799233))

(assert (= (and b!799233 res!543928) b!799238))

(assert (= (and b!799238 res!543921) b!799228))

(assert (= (and b!799228 res!543922) b!799232))

(assert (= (and b!799232 res!543919) b!799236))

(assert (= (and b!799236 res!543925) b!799239))

(assert (= (and b!799239 res!543923) b!799231))

(assert (= (and b!799231 res!543920) b!799227))

(assert (= (and b!799227 res!543916) b!799234))

(declare-fun m!740329 () Bool)

(assert (=> b!799234 m!740329))

(assert (=> b!799234 m!740329))

(declare-fun m!740331 () Bool)

(assert (=> b!799234 m!740331))

(assert (=> b!799229 m!740329))

(assert (=> b!799229 m!740329))

(declare-fun m!740333 () Bool)

(assert (=> b!799229 m!740333))

(declare-fun m!740335 () Bool)

(assert (=> start!68690 m!740335))

(declare-fun m!740337 () Bool)

(assert (=> start!68690 m!740337))

(declare-fun m!740339 () Bool)

(assert (=> b!799235 m!740339))

(declare-fun m!740341 () Bool)

(assert (=> b!799236 m!740341))

(declare-fun m!740343 () Bool)

(assert (=> b!799236 m!740343))

(declare-fun m!740345 () Bool)

(assert (=> b!799236 m!740345))

(declare-fun m!740347 () Bool)

(assert (=> b!799236 m!740347))

(declare-fun m!740349 () Bool)

(assert (=> b!799228 m!740349))

(declare-fun m!740351 () Bool)

(assert (=> b!799231 m!740351))

(declare-fun m!740353 () Bool)

(assert (=> b!799238 m!740353))

(declare-fun m!740355 () Bool)

(assert (=> b!799237 m!740355))

(declare-fun m!740357 () Bool)

(assert (=> b!799232 m!740357))

(declare-fun m!740359 () Bool)

(assert (=> b!799232 m!740359))

(declare-fun m!740361 () Bool)

(assert (=> b!799227 m!740361))

(declare-fun m!740363 () Bool)

(assert (=> b!799233 m!740363))

(declare-fun m!740365 () Bool)

(assert (=> b!799239 m!740365))

(assert (=> b!799239 m!740329))

(assert (=> b!799239 m!740329))

(declare-fun m!740367 () Bool)

(assert (=> b!799239 m!740367))

(assert (=> b!799239 m!740329))

(declare-fun m!740369 () Bool)

(assert (=> b!799239 m!740369))

(push 1)

