; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68396 () Bool)

(assert start!68396)

(declare-fun b!794344 () Bool)

(declare-fun res!539039 () Bool)

(declare-fun e!441078 () Bool)

(assert (=> b!794344 (=> (not res!539039) (not e!441078))))

(declare-datatypes ((array!43137 0))(
  ( (array!43138 (arr!20645 (Array (_ BitVec 32) (_ BitVec 64))) (size!21066 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43137)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!794344 (= res!539039 (validKeyInArray!0 (select (arr!20645 a!3170) j!153)))))

(declare-fun b!794345 () Bool)

(declare-fun res!539040 () Bool)

(assert (=> b!794345 (=> (not res!539040) (not e!441078))))

(declare-fun k!2044 () (_ BitVec 64))

(assert (=> b!794345 (= res!539040 (validKeyInArray!0 k!2044))))

(declare-fun b!794346 () Bool)

(declare-fun res!539034 () Bool)

(declare-fun e!441077 () Bool)

(assert (=> b!794346 (=> (not res!539034) (not e!441077))))

(declare-datatypes ((List!14661 0))(
  ( (Nil!14658) (Cons!14657 (h!15786 (_ BitVec 64)) (t!20984 List!14661)) )
))
(declare-fun arrayNoDuplicates!0 (array!43137 (_ BitVec 32) List!14661) Bool)

(assert (=> b!794346 (= res!539034 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14658))))

(declare-fun b!794347 () Bool)

(assert (=> b!794347 (= e!441077 false)))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8243 0))(
  ( (MissingZero!8243 (index!35339 (_ BitVec 32))) (Found!8243 (index!35340 (_ BitVec 32))) (Intermediate!8243 (undefined!9055 Bool) (index!35341 (_ BitVec 32)) (x!66290 (_ BitVec 32))) (Undefined!8243) (MissingVacant!8243 (index!35342 (_ BitVec 32))) )
))
(declare-fun lt!354122 () SeekEntryResult!8243)

(declare-fun lt!354124 () array!43137)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun lt!354121 () (_ BitVec 64))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43137 (_ BitVec 32)) SeekEntryResult!8243)

(assert (=> b!794347 (= lt!354122 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354121 lt!354124 mask!3266))))

(declare-fun lt!354120 () SeekEntryResult!8243)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43137 (_ BitVec 32)) SeekEntryResult!8243)

(assert (=> b!794347 (= lt!354120 (seekEntryOrOpen!0 lt!354121 lt!354124 mask!3266))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!794347 (= lt!354121 (select (store (arr!20645 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!794347 (= lt!354124 (array!43138 (store (arr!20645 a!3170) i!1163 k!2044) (size!21066 a!3170)))))

(declare-fun b!794348 () Bool)

(declare-fun res!539041 () Bool)

(assert (=> b!794348 (=> (not res!539041) (not e!441077))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!794348 (= res!539041 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21066 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20645 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21066 a!3170)) (= (select (arr!20645 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun res!539035 () Bool)

(assert (=> start!68396 (=> (not res!539035) (not e!441078))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68396 (= res!539035 (validMask!0 mask!3266))))

(assert (=> start!68396 e!441078))

(assert (=> start!68396 true))

(declare-fun array_inv!16419 (array!43137) Bool)

(assert (=> start!68396 (array_inv!16419 a!3170)))

(declare-fun b!794349 () Bool)

(declare-fun res!539038 () Bool)

(assert (=> b!794349 (=> (not res!539038) (not e!441078))))

(declare-fun arrayContainsKey!0 (array!43137 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!794349 (= res!539038 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!794350 () Bool)

(declare-fun res!539036 () Bool)

(assert (=> b!794350 (=> (not res!539036) (not e!441077))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43137 (_ BitVec 32)) Bool)

(assert (=> b!794350 (= res!539036 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!794351 () Bool)

(declare-fun res!539033 () Bool)

(assert (=> b!794351 (=> (not res!539033) (not e!441078))))

(assert (=> b!794351 (= res!539033 (and (= (size!21066 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21066 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21066 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!794352 () Bool)

(assert (=> b!794352 (= e!441078 e!441077)))

(declare-fun res!539037 () Bool)

(assert (=> b!794352 (=> (not res!539037) (not e!441077))))

(declare-fun lt!354123 () SeekEntryResult!8243)

(assert (=> b!794352 (= res!539037 (or (= lt!354123 (MissingZero!8243 i!1163)) (= lt!354123 (MissingVacant!8243 i!1163))))))

(assert (=> b!794352 (= lt!354123 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(assert (= (and start!68396 res!539035) b!794351))

(assert (= (and b!794351 res!539033) b!794344))

(assert (= (and b!794344 res!539039) b!794345))

(assert (= (and b!794345 res!539040) b!794349))

(assert (= (and b!794349 res!539038) b!794352))

(assert (= (and b!794352 res!539037) b!794350))

(assert (= (and b!794350 res!539036) b!794346))

(assert (= (and b!794346 res!539034) b!794348))

(assert (= (and b!794348 res!539041) b!794347))

(declare-fun m!734983 () Bool)

(assert (=> b!794348 m!734983))

(declare-fun m!734985 () Bool)

(assert (=> b!794348 m!734985))

(declare-fun m!734987 () Bool)

(assert (=> b!794344 m!734987))

(assert (=> b!794344 m!734987))

(declare-fun m!734989 () Bool)

(assert (=> b!794344 m!734989))

(declare-fun m!734991 () Bool)

(assert (=> start!68396 m!734991))

(declare-fun m!734993 () Bool)

(assert (=> start!68396 m!734993))

(declare-fun m!734995 () Bool)

(assert (=> b!794349 m!734995))

(declare-fun m!734997 () Bool)

(assert (=> b!794346 m!734997))

(declare-fun m!734999 () Bool)

(assert (=> b!794347 m!734999))

(declare-fun m!735001 () Bool)

(assert (=> b!794347 m!735001))

(declare-fun m!735003 () Bool)

(assert (=> b!794347 m!735003))

(declare-fun m!735005 () Bool)

(assert (=> b!794347 m!735005))

(declare-fun m!735007 () Bool)

(assert (=> b!794345 m!735007))

(declare-fun m!735009 () Bool)

(assert (=> b!794350 m!735009))

(declare-fun m!735011 () Bool)

(assert (=> b!794352 m!735011))

(push 1)

(assert (not b!794347))

(assert (not start!68396))

(assert (not b!794350))

(assert (not b!794346))

