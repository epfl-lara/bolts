; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68914 () Bool)

(assert start!68914)

(declare-fun b!803339 () Bool)

(declare-fun res!548034 () Bool)

(declare-fun e!445171 () Bool)

(assert (=> b!803339 (=> (not res!548034) (not e!445171))))

(declare-datatypes ((array!43655 0))(
  ( (array!43656 (arr!20904 (Array (_ BitVec 32) (_ BitVec 64))) (size!21325 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43655)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43655 (_ BitVec 32)) Bool)

(assert (=> b!803339 (= res!548034 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!803340 () Bool)

(declare-fun e!445169 () Bool)

(assert (=> b!803340 (= e!445171 e!445169)))

(declare-fun res!548032 () Bool)

(assert (=> b!803340 (=> (not res!548032) (not e!445169))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!359597 () array!43655)

(declare-fun lt!359593 () (_ BitVec 64))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8502 0))(
  ( (MissingZero!8502 (index!36375 (_ BitVec 32))) (Found!8502 (index!36376 (_ BitVec 32))) (Intermediate!8502 (undefined!9314 Bool) (index!36377 (_ BitVec 32)) (x!67245 (_ BitVec 32))) (Undefined!8502) (MissingVacant!8502 (index!36378 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43655 (_ BitVec 32)) SeekEntryResult!8502)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43655 (_ BitVec 32)) SeekEntryResult!8502)

(assert (=> b!803340 (= res!548032 (= (seekEntryOrOpen!0 lt!359593 lt!359597 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!359593 lt!359597 mask!3266)))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun k!2044 () (_ BitVec 64))

(assert (=> b!803340 (= lt!359593 (select (store (arr!20904 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!803340 (= lt!359597 (array!43656 (store (arr!20904 a!3170) i!1163 k!2044) (size!21325 a!3170)))))

(declare-fun b!803341 () Bool)

(declare-fun e!445168 () Bool)

(assert (=> b!803341 (= e!445169 e!445168)))

(declare-fun res!548037 () Bool)

(assert (=> b!803341 (=> (not res!548037) (not e!445168))))

(declare-fun lt!359595 () SeekEntryResult!8502)

(declare-fun lt!359598 () SeekEntryResult!8502)

(assert (=> b!803341 (= res!548037 (and (= lt!359598 lt!359595) (= lt!359595 (Found!8502 j!153)) (not (= (select (arr!20904 a!3170) index!1236) (select (arr!20904 a!3170) j!153)))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!803341 (= lt!359595 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20904 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!803341 (= lt!359598 (seekEntryOrOpen!0 (select (arr!20904 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!803342 () Bool)

(declare-fun e!445167 () Bool)

(assert (=> b!803342 (= e!445167 e!445171)))

(declare-fun res!548029 () Bool)

(assert (=> b!803342 (=> (not res!548029) (not e!445171))))

(declare-fun lt!359596 () SeekEntryResult!8502)

(assert (=> b!803342 (= res!548029 (or (= lt!359596 (MissingZero!8502 i!1163)) (= lt!359596 (MissingVacant!8502 i!1163))))))

(assert (=> b!803342 (= lt!359596 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!803343 () Bool)

(declare-fun res!548030 () Bool)

(assert (=> b!803343 (=> (not res!548030) (not e!445167))))

(assert (=> b!803343 (= res!548030 (and (= (size!21325 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21325 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21325 a!3170)) (not (= i!1163 j!153))))))

(declare-fun res!548028 () Bool)

(assert (=> start!68914 (=> (not res!548028) (not e!445167))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68914 (= res!548028 (validMask!0 mask!3266))))

(assert (=> start!68914 e!445167))

(assert (=> start!68914 true))

(declare-fun array_inv!16678 (array!43655) Bool)

(assert (=> start!68914 (array_inv!16678 a!3170)))

(declare-fun b!803344 () Bool)

(declare-fun res!548033 () Bool)

(assert (=> b!803344 (=> (not res!548033) (not e!445171))))

(declare-datatypes ((List!14920 0))(
  ( (Nil!14917) (Cons!14916 (h!16045 (_ BitVec 64)) (t!21243 List!14920)) )
))
(declare-fun arrayNoDuplicates!0 (array!43655 (_ BitVec 32) List!14920) Bool)

(assert (=> b!803344 (= res!548033 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14917))))

(declare-fun b!803345 () Bool)

(declare-fun res!548031 () Bool)

(assert (=> b!803345 (=> (not res!548031) (not e!445171))))

(assert (=> b!803345 (= res!548031 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21325 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20904 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21325 a!3170)) (= (select (arr!20904 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!803346 () Bool)

(declare-fun res!548038 () Bool)

(assert (=> b!803346 (=> (not res!548038) (not e!445167))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!803346 (= res!548038 (validKeyInArray!0 (select (arr!20904 a!3170) j!153)))))

(declare-fun b!803347 () Bool)

(declare-fun res!548035 () Bool)

(assert (=> b!803347 (=> (not res!548035) (not e!445167))))

(declare-fun arrayContainsKey!0 (array!43655 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!803347 (= res!548035 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!803348 () Bool)

(declare-fun res!548036 () Bool)

(assert (=> b!803348 (=> (not res!548036) (not e!445167))))

(assert (=> b!803348 (= res!548036 (validKeyInArray!0 k!2044))))

(declare-fun b!803349 () Bool)

(assert (=> b!803349 (= e!445168 (not true))))

(declare-fun lt!359599 () (_ BitVec 32))

(assert (=> b!803349 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359599 vacantAfter!23 lt!359593 lt!359597 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359599 vacantBefore!23 (select (arr!20904 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27546 0))(
  ( (Unit!27547) )
))
(declare-fun lt!359594 () Unit!27546)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43655 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27546)

(assert (=> b!803349 (= lt!359594 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!359599 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!803349 (= lt!359599 (nextIndex!0 index!1236 x!1077 mask!3266))))

(assert (= (and start!68914 res!548028) b!803343))

(assert (= (and b!803343 res!548030) b!803346))

(assert (= (and b!803346 res!548038) b!803348))

(assert (= (and b!803348 res!548036) b!803347))

(assert (= (and b!803347 res!548035) b!803342))

(assert (= (and b!803342 res!548029) b!803339))

(assert (= (and b!803339 res!548034) b!803344))

(assert (= (and b!803344 res!548033) b!803345))

(assert (= (and b!803345 res!548031) b!803340))

(assert (= (and b!803340 res!548032) b!803341))

(assert (= (and b!803341 res!548037) b!803349))

(declare-fun m!745177 () Bool)

(assert (=> b!803346 m!745177))

(assert (=> b!803346 m!745177))

(declare-fun m!745179 () Bool)

(assert (=> b!803346 m!745179))

(declare-fun m!745181 () Bool)

(assert (=> b!803348 m!745181))

(declare-fun m!745183 () Bool)

(assert (=> b!803347 m!745183))

(declare-fun m!745185 () Bool)

(assert (=> b!803341 m!745185))

(assert (=> b!803341 m!745177))

(assert (=> b!803341 m!745177))

(declare-fun m!745187 () Bool)

(assert (=> b!803341 m!745187))

(assert (=> b!803341 m!745177))

(declare-fun m!745189 () Bool)

(assert (=> b!803341 m!745189))

(declare-fun m!745191 () Bool)

(assert (=> b!803344 m!745191))

(declare-fun m!745193 () Bool)

(assert (=> b!803339 m!745193))

(declare-fun m!745195 () Bool)

(assert (=> start!68914 m!745195))

(declare-fun m!745197 () Bool)

(assert (=> start!68914 m!745197))

(assert (=> b!803349 m!745177))

(declare-fun m!745199 () Bool)

(assert (=> b!803349 m!745199))

(assert (=> b!803349 m!745177))

(declare-fun m!745201 () Bool)

(assert (=> b!803349 m!745201))

(declare-fun m!745203 () Bool)

(assert (=> b!803349 m!745203))

(declare-fun m!745205 () Bool)

(assert (=> b!803349 m!745205))

(declare-fun m!745207 () Bool)

(assert (=> b!803342 m!745207))

(declare-fun m!745209 () Bool)

(assert (=> b!803340 m!745209))

(declare-fun m!745211 () Bool)

(assert (=> b!803340 m!745211))

(declare-fun m!745213 () Bool)

(assert (=> b!803340 m!745213))

(declare-fun m!745215 () Bool)

(assert (=> b!803340 m!745215))

(declare-fun m!745217 () Bool)

(assert (=> b!803345 m!745217))

(declare-fun m!745219 () Bool)

(assert (=> b!803345 m!745219))

(push 1)

