; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69184 () Bool)

(assert start!69184)

(declare-fun res!550674 () Bool)

(declare-fun e!446574 () Bool)

(assert (=> start!69184 (=> (not res!550674) (not e!446574))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69184 (= res!550674 (validMask!0 mask!3266))))

(assert (=> start!69184 e!446574))

(assert (=> start!69184 true))

(declare-datatypes ((array!43835 0))(
  ( (array!43836 (arr!20991 (Array (_ BitVec 32) (_ BitVec 64))) (size!21412 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43835)

(declare-fun array_inv!16765 (array!43835) Bool)

(assert (=> start!69184 (array_inv!16765 a!3170)))

(declare-fun b!806372 () Bool)

(declare-fun res!550672 () Bool)

(declare-fun e!446573 () Bool)

(assert (=> b!806372 (=> (not res!550672) (not e!446573))))

(declare-datatypes ((List!15007 0))(
  ( (Nil!15004) (Cons!15003 (h!16132 (_ BitVec 64)) (t!21330 List!15007)) )
))
(declare-fun arrayNoDuplicates!0 (array!43835 (_ BitVec 32) List!15007) Bool)

(assert (=> b!806372 (= res!550672 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15004))))

(declare-fun b!806373 () Bool)

(declare-fun res!550671 () Bool)

(assert (=> b!806373 (=> (not res!550671) (not e!446573))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!806373 (= res!550671 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21412 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20991 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21412 a!3170)) (= (select (arr!20991 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!806374 () Bool)

(assert (=> b!806374 (= e!446574 e!446573)))

(declare-fun res!550666 () Bool)

(assert (=> b!806374 (=> (not res!550666) (not e!446573))))

(declare-datatypes ((SeekEntryResult!8589 0))(
  ( (MissingZero!8589 (index!36723 (_ BitVec 32))) (Found!8589 (index!36724 (_ BitVec 32))) (Intermediate!8589 (undefined!9401 Bool) (index!36725 (_ BitVec 32)) (x!67570 (_ BitVec 32))) (Undefined!8589) (MissingVacant!8589 (index!36726 (_ BitVec 32))) )
))
(declare-fun lt!361148 () SeekEntryResult!8589)

(assert (=> b!806374 (= res!550666 (or (= lt!361148 (MissingZero!8589 i!1163)) (= lt!361148 (MissingVacant!8589 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43835 (_ BitVec 32)) SeekEntryResult!8589)

(assert (=> b!806374 (= lt!361148 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!806375 () Bool)

(declare-fun res!550667 () Bool)

(assert (=> b!806375 (=> (not res!550667) (not e!446574))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!806375 (= res!550667 (and (= (size!21412 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21412 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21412 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!806376 () Bool)

(declare-fun res!550665 () Bool)

(assert (=> b!806376 (=> (not res!550665) (not e!446573))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43835 (_ BitVec 32)) Bool)

(assert (=> b!806376 (= res!550665 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!806377 () Bool)

(declare-fun e!446575 () Bool)

(declare-fun e!446571 () Bool)

(assert (=> b!806377 (= e!446575 e!446571)))

(declare-fun res!550669 () Bool)

(assert (=> b!806377 (=> (not res!550669) (not e!446571))))

(declare-fun lt!361147 () SeekEntryResult!8589)

(declare-fun lt!361145 () SeekEntryResult!8589)

(assert (=> b!806377 (= res!550669 (and (= lt!361145 lt!361147) (= lt!361147 (Found!8589 j!153)) (= (select (arr!20991 a!3170) index!1236) (select (arr!20991 a!3170) j!153))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43835 (_ BitVec 32)) SeekEntryResult!8589)

(assert (=> b!806377 (= lt!361147 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20991 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!806377 (= lt!361145 (seekEntryOrOpen!0 (select (arr!20991 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!806378 () Bool)

(declare-fun res!550670 () Bool)

(assert (=> b!806378 (=> (not res!550670) (not e!446574))))

(declare-fun arrayContainsKey!0 (array!43835 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!806378 (= res!550670 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!806379 () Bool)

(assert (=> b!806379 (= e!446571 (not true))))

(declare-fun lt!361146 () SeekEntryResult!8589)

(assert (=> b!806379 (= lt!361146 (Found!8589 index!1236))))

(declare-fun b!806380 () Bool)

(declare-fun res!550675 () Bool)

(assert (=> b!806380 (=> (not res!550675) (not e!446574))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!806380 (= res!550675 (validKeyInArray!0 k!2044))))

(declare-fun b!806381 () Bool)

(assert (=> b!806381 (= e!446573 e!446575)))

(declare-fun res!550668 () Bool)

(assert (=> b!806381 (=> (not res!550668) (not e!446575))))

(declare-fun lt!361149 () SeekEntryResult!8589)

(assert (=> b!806381 (= res!550668 (= lt!361149 lt!361146))))

(declare-fun lt!361144 () (_ BitVec 64))

(declare-fun lt!361150 () array!43835)

(assert (=> b!806381 (= lt!361146 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!361144 lt!361150 mask!3266))))

(assert (=> b!806381 (= lt!361149 (seekEntryOrOpen!0 lt!361144 lt!361150 mask!3266))))

(assert (=> b!806381 (= lt!361144 (select (store (arr!20991 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!806381 (= lt!361150 (array!43836 (store (arr!20991 a!3170) i!1163 k!2044) (size!21412 a!3170)))))

(declare-fun b!806382 () Bool)

(declare-fun res!550673 () Bool)

(assert (=> b!806382 (=> (not res!550673) (not e!446574))))

(assert (=> b!806382 (= res!550673 (validKeyInArray!0 (select (arr!20991 a!3170) j!153)))))

(assert (= (and start!69184 res!550674) b!806375))

(assert (= (and b!806375 res!550667) b!806382))

(assert (= (and b!806382 res!550673) b!806380))

(assert (= (and b!806380 res!550675) b!806378))

(assert (= (and b!806378 res!550670) b!806374))

(assert (= (and b!806374 res!550666) b!806376))

(assert (= (and b!806376 res!550665) b!806372))

(assert (= (and b!806372 res!550672) b!806373))

(assert (= (and b!806373 res!550671) b!806381))

(assert (= (and b!806381 res!550668) b!806377))

(assert (= (and b!806377 res!550669) b!806379))

(declare-fun m!748399 () Bool)

(assert (=> b!806372 m!748399))

(declare-fun m!748401 () Bool)

(assert (=> b!806381 m!748401))

(declare-fun m!748403 () Bool)

(assert (=> b!806381 m!748403))

(declare-fun m!748405 () Bool)

(assert (=> b!806381 m!748405))

(declare-fun m!748407 () Bool)

(assert (=> b!806381 m!748407))

(declare-fun m!748409 () Bool)

(assert (=> b!806380 m!748409))

(declare-fun m!748411 () Bool)

(assert (=> b!806378 m!748411))

(declare-fun m!748413 () Bool)

(assert (=> b!806376 m!748413))

(declare-fun m!748415 () Bool)

(assert (=> b!806373 m!748415))

(declare-fun m!748417 () Bool)

(assert (=> b!806373 m!748417))

(declare-fun m!748419 () Bool)

(assert (=> b!806382 m!748419))

(assert (=> b!806382 m!748419))

(declare-fun m!748421 () Bool)

(assert (=> b!806382 m!748421))

(declare-fun m!748423 () Bool)

(assert (=> b!806374 m!748423))

(declare-fun m!748425 () Bool)

(assert (=> start!69184 m!748425))

(declare-fun m!748427 () Bool)

(assert (=> start!69184 m!748427))

(declare-fun m!748429 () Bool)

(assert (=> b!806377 m!748429))

(assert (=> b!806377 m!748419))

(assert (=> b!806377 m!748419))

(declare-fun m!748431 () Bool)

(assert (=> b!806377 m!748431))

(assert (=> b!806377 m!748419))

(declare-fun m!748433 () Bool)

(assert (=> b!806377 m!748433))

(push 1)

