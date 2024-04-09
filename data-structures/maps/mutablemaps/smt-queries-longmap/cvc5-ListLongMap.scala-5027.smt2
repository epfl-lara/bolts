; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68692 () Bool)

(assert start!68692)

(declare-fun b!799267 () Bool)

(declare-fun res!543961 () Bool)

(declare-fun e!443262 () Bool)

(assert (=> b!799267 (=> (not res!543961) (not e!443262))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8391 0))(
  ( (MissingZero!8391 (index!35931 (_ BitVec 32))) (Found!8391 (index!35932 (_ BitVec 32))) (Intermediate!8391 (undefined!9203 Bool) (index!35933 (_ BitVec 32)) (x!66838 (_ BitVec 32))) (Undefined!8391) (MissingVacant!8391 (index!35934 (_ BitVec 32))) )
))
(declare-fun lt!356933 () SeekEntryResult!8391)

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!356937 () (_ BitVec 32))

(declare-datatypes ((array!43433 0))(
  ( (array!43434 (arr!20793 (Array (_ BitVec 32) (_ BitVec 64))) (size!21214 (_ BitVec 32))) )
))
(declare-fun lt!356936 () array!43433)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun lt!356932 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43433 (_ BitVec 32)) SeekEntryResult!8391)

(assert (=> b!799267 (= res!543961 (= lt!356933 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!356937 vacantAfter!23 lt!356932 lt!356936 mask!3266)))))

(declare-fun b!799268 () Bool)

(declare-fun res!543955 () Bool)

(declare-fun e!443261 () Bool)

(assert (=> b!799268 (=> (not res!543955) (not e!443261))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun a!3170 () array!43433)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!799268 (= res!543955 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21214 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20793 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21214 a!3170)) (= (select (arr!20793 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!799269 () Bool)

(declare-fun e!443264 () Bool)

(assert (=> b!799269 (= e!443261 e!443264)))

(declare-fun res!543963 () Bool)

(assert (=> b!799269 (=> (not res!543963) (not e!443264))))

(assert (=> b!799269 (= res!543963 (= lt!356933 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!356932 lt!356936 mask!3266)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43433 (_ BitVec 32)) SeekEntryResult!8391)

(assert (=> b!799269 (= lt!356933 (seekEntryOrOpen!0 lt!356932 lt!356936 mask!3266))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!799269 (= lt!356932 (select (store (arr!20793 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!799269 (= lt!356936 (array!43434 (store (arr!20793 a!3170) i!1163 k!2044) (size!21214 a!3170)))))

(declare-fun b!799270 () Bool)

(declare-fun res!543960 () Bool)

(assert (=> b!799270 (=> (not res!543960) (not e!443261))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43433 (_ BitVec 32)) Bool)

(assert (=> b!799270 (= res!543960 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!799271 () Bool)

(declare-fun e!443266 () Bool)

(assert (=> b!799271 (= e!443264 e!443266)))

(declare-fun res!543964 () Bool)

(assert (=> b!799271 (=> (not res!543964) (not e!443266))))

(declare-fun lt!356935 () SeekEntryResult!8391)

(declare-fun lt!356931 () SeekEntryResult!8391)

(assert (=> b!799271 (= res!543964 (and (= lt!356935 lt!356931) (= lt!356931 (Found!8391 j!153)) (not (= (select (arr!20793 a!3170) index!1236) (select (arr!20793 a!3170) j!153)))))))

(assert (=> b!799271 (= lt!356931 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20793 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!799271 (= lt!356935 (seekEntryOrOpen!0 (select (arr!20793 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!799272 () Bool)

(declare-fun res!543966 () Bool)

(declare-fun e!443265 () Bool)

(assert (=> b!799272 (=> (not res!543966) (not e!443265))))

(assert (=> b!799272 (= res!543966 (and (= (size!21214 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21214 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21214 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!799273 () Bool)

(declare-fun res!543957 () Bool)

(assert (=> b!799273 (=> (not res!543957) (not e!443265))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!799273 (= res!543957 (validKeyInArray!0 (select (arr!20793 a!3170) j!153)))))

(declare-fun b!799274 () Bool)

(assert (=> b!799274 (= e!443262 false)))

(declare-fun lt!356934 () SeekEntryResult!8391)

(assert (=> b!799274 (= lt!356934 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!356937 vacantBefore!23 (select (arr!20793 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!799275 () Bool)

(assert (=> b!799275 (= e!443265 e!443261)))

(declare-fun res!543958 () Bool)

(assert (=> b!799275 (=> (not res!543958) (not e!443261))))

(declare-fun lt!356938 () SeekEntryResult!8391)

(assert (=> b!799275 (= res!543958 (or (= lt!356938 (MissingZero!8391 i!1163)) (= lt!356938 (MissingVacant!8391 i!1163))))))

(assert (=> b!799275 (= lt!356938 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!799276 () Bool)

(declare-fun res!543959 () Bool)

(assert (=> b!799276 (=> (not res!543959) (not e!443265))))

(declare-fun arrayContainsKey!0 (array!43433 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!799276 (= res!543959 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun res!543962 () Bool)

(assert (=> start!68692 (=> (not res!543962) (not e!443265))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68692 (= res!543962 (validMask!0 mask!3266))))

(assert (=> start!68692 e!443265))

(assert (=> start!68692 true))

(declare-fun array_inv!16567 (array!43433) Bool)

(assert (=> start!68692 (array_inv!16567 a!3170)))

(declare-fun b!799266 () Bool)

(declare-fun res!543967 () Bool)

(assert (=> b!799266 (=> (not res!543967) (not e!443265))))

(assert (=> b!799266 (= res!543967 (validKeyInArray!0 k!2044))))

(declare-fun b!799277 () Bool)

(assert (=> b!799277 (= e!443266 e!443262)))

(declare-fun res!543965 () Bool)

(assert (=> b!799277 (=> (not res!543965) (not e!443262))))

(assert (=> b!799277 (= res!543965 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!356937 #b00000000000000000000000000000000) (bvslt lt!356937 (size!21214 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!799277 (= lt!356937 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!799278 () Bool)

(declare-fun res!543956 () Bool)

(assert (=> b!799278 (=> (not res!543956) (not e!443261))))

(declare-datatypes ((List!14809 0))(
  ( (Nil!14806) (Cons!14805 (h!15934 (_ BitVec 64)) (t!21132 List!14809)) )
))
(declare-fun arrayNoDuplicates!0 (array!43433 (_ BitVec 32) List!14809) Bool)

(assert (=> b!799278 (= res!543956 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14806))))

(assert (= (and start!68692 res!543962) b!799272))

(assert (= (and b!799272 res!543966) b!799273))

(assert (= (and b!799273 res!543957) b!799266))

(assert (= (and b!799266 res!543967) b!799276))

(assert (= (and b!799276 res!543959) b!799275))

(assert (= (and b!799275 res!543958) b!799270))

(assert (= (and b!799270 res!543960) b!799278))

(assert (= (and b!799278 res!543956) b!799268))

(assert (= (and b!799268 res!543955) b!799269))

(assert (= (and b!799269 res!543963) b!799271))

(assert (= (and b!799271 res!543964) b!799277))

(assert (= (and b!799277 res!543965) b!799267))

(assert (= (and b!799267 res!543961) b!799274))

(declare-fun m!740371 () Bool)

(assert (=> b!799266 m!740371))

(declare-fun m!740373 () Bool)

(assert (=> b!799270 m!740373))

(declare-fun m!740375 () Bool)

(assert (=> b!799276 m!740375))

(declare-fun m!740377 () Bool)

(assert (=> b!799275 m!740377))

(declare-fun m!740379 () Bool)

(assert (=> b!799271 m!740379))

(declare-fun m!740381 () Bool)

(assert (=> b!799271 m!740381))

(assert (=> b!799271 m!740381))

(declare-fun m!740383 () Bool)

(assert (=> b!799271 m!740383))

(assert (=> b!799271 m!740381))

(declare-fun m!740385 () Bool)

(assert (=> b!799271 m!740385))

(assert (=> b!799274 m!740381))

(assert (=> b!799274 m!740381))

(declare-fun m!740387 () Bool)

(assert (=> b!799274 m!740387))

(declare-fun m!740389 () Bool)

(assert (=> b!799268 m!740389))

(declare-fun m!740391 () Bool)

(assert (=> b!799268 m!740391))

(declare-fun m!740393 () Bool)

(assert (=> b!799277 m!740393))

(declare-fun m!740395 () Bool)

(assert (=> b!799269 m!740395))

(declare-fun m!740397 () Bool)

(assert (=> b!799269 m!740397))

(declare-fun m!740399 () Bool)

(assert (=> b!799269 m!740399))

(declare-fun m!740401 () Bool)

(assert (=> b!799269 m!740401))

(declare-fun m!740403 () Bool)

(assert (=> b!799278 m!740403))

(assert (=> b!799273 m!740381))

(assert (=> b!799273 m!740381))

(declare-fun m!740405 () Bool)

(assert (=> b!799273 m!740405))

(declare-fun m!740407 () Bool)

(assert (=> start!68692 m!740407))

(declare-fun m!740409 () Bool)

(assert (=> start!68692 m!740409))

(declare-fun m!740411 () Bool)

(assert (=> b!799267 m!740411))

(push 1)

