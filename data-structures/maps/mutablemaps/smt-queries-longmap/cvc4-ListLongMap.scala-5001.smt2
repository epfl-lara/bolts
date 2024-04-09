; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68540 () Bool)

(assert start!68540)

(declare-fun b!796618 () Bool)

(declare-fun e!442031 () Bool)

(declare-fun lt!355289 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!796618 (= e!442031 (validKeyInArray!0 lt!355289))))

(declare-fun b!796619 () Bool)

(declare-fun res!541312 () Bool)

(declare-fun e!442033 () Bool)

(assert (=> b!796619 (=> (not res!541312) (not e!442033))))

(declare-datatypes ((array!43281 0))(
  ( (array!43282 (arr!20717 (Array (_ BitVec 32) (_ BitVec 64))) (size!21138 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43281)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!796619 (= res!541312 (validKeyInArray!0 (select (arr!20717 a!3170) j!153)))))

(declare-fun b!796620 () Bool)

(declare-fun res!541316 () Bool)

(declare-fun e!442032 () Bool)

(assert (=> b!796620 (=> (not res!541316) (not e!442032))))

(declare-datatypes ((List!14733 0))(
  ( (Nil!14730) (Cons!14729 (h!15858 (_ BitVec 64)) (t!21056 List!14733)) )
))
(declare-fun arrayNoDuplicates!0 (array!43281 (_ BitVec 32) List!14733) Bool)

(assert (=> b!796620 (= res!541316 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14730))))

(declare-fun b!796621 () Bool)

(assert (=> b!796621 (= e!442033 e!442032)))

(declare-fun res!541307 () Bool)

(assert (=> b!796621 (=> (not res!541307) (not e!442032))))

(declare-datatypes ((SeekEntryResult!8315 0))(
  ( (MissingZero!8315 (index!35627 (_ BitVec 32))) (Found!8315 (index!35628 (_ BitVec 32))) (Intermediate!8315 (undefined!9127 Bool) (index!35629 (_ BitVec 32)) (x!66554 (_ BitVec 32))) (Undefined!8315) (MissingVacant!8315 (index!35630 (_ BitVec 32))) )
))
(declare-fun lt!355293 () SeekEntryResult!8315)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!796621 (= res!541307 (or (= lt!355293 (MissingZero!8315 i!1163)) (= lt!355293 (MissingVacant!8315 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43281 (_ BitVec 32)) SeekEntryResult!8315)

(assert (=> b!796621 (= lt!355293 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!796623 () Bool)

(declare-fun res!541317 () Bool)

(assert (=> b!796623 (=> (not res!541317) (not e!442033))))

(assert (=> b!796623 (= res!541317 (and (= (size!21138 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21138 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21138 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!796624 () Bool)

(declare-fun e!442028 () Bool)

(assert (=> b!796624 (= e!442032 e!442028)))

(declare-fun res!541315 () Bool)

(assert (=> b!796624 (=> (not res!541315) (not e!442028))))

(declare-fun lt!355288 () SeekEntryResult!8315)

(declare-fun lt!355294 () SeekEntryResult!8315)

(assert (=> b!796624 (= res!541315 (= lt!355288 lt!355294))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!355290 () array!43281)

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43281 (_ BitVec 32)) SeekEntryResult!8315)

(assert (=> b!796624 (= lt!355294 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!355289 lt!355290 mask!3266))))

(assert (=> b!796624 (= lt!355288 (seekEntryOrOpen!0 lt!355289 lt!355290 mask!3266))))

(assert (=> b!796624 (= lt!355289 (select (store (arr!20717 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!796624 (= lt!355290 (array!43282 (store (arr!20717 a!3170) i!1163 k!2044) (size!21138 a!3170)))))

(declare-fun b!796625 () Bool)

(declare-fun res!541309 () Bool)

(assert (=> b!796625 (=> (not res!541309) (not e!442032))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43281 (_ BitVec 32)) Bool)

(assert (=> b!796625 (= res!541309 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!796626 () Bool)

(declare-fun res!541314 () Bool)

(assert (=> b!796626 (=> (not res!541314) (not e!442032))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!796626 (= res!541314 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21138 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20717 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21138 a!3170)) (= (select (arr!20717 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!796627 () Bool)

(declare-fun e!442030 () Bool)

(assert (=> b!796627 (= e!442030 (not e!442031))))

(declare-fun res!541308 () Bool)

(assert (=> b!796627 (=> res!541308 e!442031)))

(assert (=> b!796627 (= res!541308 (or (bvslt mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266)) (not (= (select (store (arr!20717 a!3170) i!1163 k!2044) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!796627 (= lt!355294 (Found!8315 index!1236))))

(declare-fun res!541318 () Bool)

(assert (=> start!68540 (=> (not res!541318) (not e!442033))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68540 (= res!541318 (validMask!0 mask!3266))))

(assert (=> start!68540 e!442033))

(assert (=> start!68540 true))

(declare-fun array_inv!16491 (array!43281) Bool)

(assert (=> start!68540 (array_inv!16491 a!3170)))

(declare-fun b!796622 () Bool)

(assert (=> b!796622 (= e!442028 e!442030)))

(declare-fun res!541310 () Bool)

(assert (=> b!796622 (=> (not res!541310) (not e!442030))))

(declare-fun lt!355292 () SeekEntryResult!8315)

(declare-fun lt!355291 () SeekEntryResult!8315)

(assert (=> b!796622 (= res!541310 (and (= lt!355291 lt!355292) (= lt!355292 (Found!8315 j!153)) (= (select (arr!20717 a!3170) index!1236) (select (arr!20717 a!3170) j!153))))))

(assert (=> b!796622 (= lt!355292 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20717 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!796622 (= lt!355291 (seekEntryOrOpen!0 (select (arr!20717 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!796628 () Bool)

(declare-fun res!541313 () Bool)

(assert (=> b!796628 (=> (not res!541313) (not e!442033))))

(declare-fun arrayContainsKey!0 (array!43281 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!796628 (= res!541313 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!796629 () Bool)

(declare-fun res!541311 () Bool)

(assert (=> b!796629 (=> (not res!541311) (not e!442033))))

(assert (=> b!796629 (= res!541311 (validKeyInArray!0 k!2044))))

(assert (= (and start!68540 res!541318) b!796623))

(assert (= (and b!796623 res!541317) b!796619))

(assert (= (and b!796619 res!541312) b!796629))

(assert (= (and b!796629 res!541311) b!796628))

(assert (= (and b!796628 res!541313) b!796621))

(assert (= (and b!796621 res!541307) b!796625))

(assert (= (and b!796625 res!541309) b!796620))

(assert (= (and b!796620 res!541316) b!796626))

(assert (= (and b!796626 res!541314) b!796624))

(assert (= (and b!796624 res!541315) b!796622))

(assert (= (and b!796622 res!541310) b!796627))

(assert (= (and b!796627 (not res!541308)) b!796618))

(declare-fun m!737535 () Bool)

(assert (=> b!796621 m!737535))

(declare-fun m!737537 () Bool)

(assert (=> b!796629 m!737537))

(declare-fun m!737539 () Bool)

(assert (=> b!796624 m!737539))

(declare-fun m!737541 () Bool)

(assert (=> b!796624 m!737541))

(declare-fun m!737543 () Bool)

(assert (=> b!796624 m!737543))

(declare-fun m!737545 () Bool)

(assert (=> b!796624 m!737545))

(declare-fun m!737547 () Bool)

(assert (=> b!796620 m!737547))

(declare-fun m!737549 () Bool)

(assert (=> b!796625 m!737549))

(declare-fun m!737551 () Bool)

(assert (=> b!796628 m!737551))

(declare-fun m!737553 () Bool)

(assert (=> b!796619 m!737553))

(assert (=> b!796619 m!737553))

(declare-fun m!737555 () Bool)

(assert (=> b!796619 m!737555))

(declare-fun m!737557 () Bool)

(assert (=> b!796622 m!737557))

(assert (=> b!796622 m!737553))

(assert (=> b!796622 m!737553))

(declare-fun m!737559 () Bool)

(assert (=> b!796622 m!737559))

(assert (=> b!796622 m!737553))

(declare-fun m!737561 () Bool)

(assert (=> b!796622 m!737561))

(declare-fun m!737563 () Bool)

(assert (=> start!68540 m!737563))

(declare-fun m!737565 () Bool)

(assert (=> start!68540 m!737565))

(declare-fun m!737567 () Bool)

(assert (=> b!796626 m!737567))

(declare-fun m!737569 () Bool)

(assert (=> b!796626 m!737569))

(assert (=> b!796627 m!737543))

(declare-fun m!737571 () Bool)

(assert (=> b!796627 m!737571))

(declare-fun m!737573 () Bool)

(assert (=> b!796618 m!737573))

(push 1)

(assert (not b!796629))

(assert (not b!796624))

(assert (not b!796628))

(assert (not b!796622))

(assert (not b!796618))

(assert (not b!796619))

(assert (not b!796625))

(assert (not b!796620))

