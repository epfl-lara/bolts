; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69244 () Bool)

(assert start!69244)

(declare-fun b!807371 () Bool)

(declare-fun res!551672 () Bool)

(declare-fun e!447034 () Bool)

(assert (=> b!807371 (=> (not res!551672) (not e!447034))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!807371 (= res!551672 (validKeyInArray!0 k!2044))))

(declare-fun b!807372 () Bool)

(declare-fun res!551668 () Bool)

(assert (=> b!807372 (=> (not res!551668) (not e!447034))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-datatypes ((array!43895 0))(
  ( (array!43896 (arr!21021 (Array (_ BitVec 32) (_ BitVec 64))) (size!21442 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43895)

(assert (=> b!807372 (= res!551668 (and (= (size!21442 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21442 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21442 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!807373 () Bool)

(declare-fun res!551664 () Bool)

(assert (=> b!807373 (=> (not res!551664) (not e!447034))))

(declare-fun arrayContainsKey!0 (array!43895 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!807373 (= res!551664 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!807374 () Bool)

(declare-fun e!447033 () Bool)

(assert (=> b!807374 (= e!447033 false)))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!361731 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!807374 (= lt!361731 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!807375 () Bool)

(declare-fun e!447031 () Bool)

(assert (=> b!807375 (= e!447034 e!447031)))

(declare-fun res!551674 () Bool)

(assert (=> b!807375 (=> (not res!551674) (not e!447031))))

(declare-datatypes ((SeekEntryResult!8619 0))(
  ( (MissingZero!8619 (index!36843 (_ BitVec 32))) (Found!8619 (index!36844 (_ BitVec 32))) (Intermediate!8619 (undefined!9431 Bool) (index!36845 (_ BitVec 32)) (x!67680 (_ BitVec 32))) (Undefined!8619) (MissingVacant!8619 (index!36846 (_ BitVec 32))) )
))
(declare-fun lt!361728 () SeekEntryResult!8619)

(assert (=> b!807375 (= res!551674 (or (= lt!361728 (MissingZero!8619 i!1163)) (= lt!361728 (MissingVacant!8619 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43895 (_ BitVec 32)) SeekEntryResult!8619)

(assert (=> b!807375 (= lt!361728 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!807376 () Bool)

(declare-fun e!447032 () Bool)

(assert (=> b!807376 (= e!447032 e!447033)))

(declare-fun res!551670 () Bool)

(assert (=> b!807376 (=> (not res!551670) (not e!447033))))

(declare-fun lt!361727 () SeekEntryResult!8619)

(declare-fun lt!361732 () SeekEntryResult!8619)

(assert (=> b!807376 (= res!551670 (and (= lt!361727 lt!361732) (= lt!361732 (Found!8619 j!153)) (not (= (select (arr!21021 a!3170) index!1236) (select (arr!21021 a!3170) j!153)))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43895 (_ BitVec 32)) SeekEntryResult!8619)

(assert (=> b!807376 (= lt!361732 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21021 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!807376 (= lt!361727 (seekEntryOrOpen!0 (select (arr!21021 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!807377 () Bool)

(declare-fun res!551669 () Bool)

(assert (=> b!807377 (=> (not res!551669) (not e!447031))))

(declare-datatypes ((List!15037 0))(
  ( (Nil!15034) (Cons!15033 (h!16162 (_ BitVec 64)) (t!21360 List!15037)) )
))
(declare-fun arrayNoDuplicates!0 (array!43895 (_ BitVec 32) List!15037) Bool)

(assert (=> b!807377 (= res!551669 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15034))))

(declare-fun res!551673 () Bool)

(assert (=> start!69244 (=> (not res!551673) (not e!447034))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69244 (= res!551673 (validMask!0 mask!3266))))

(assert (=> start!69244 e!447034))

(assert (=> start!69244 true))

(declare-fun array_inv!16795 (array!43895) Bool)

(assert (=> start!69244 (array_inv!16795 a!3170)))

(declare-fun b!807378 () Bool)

(assert (=> b!807378 (= e!447031 e!447032)))

(declare-fun res!551671 () Bool)

(assert (=> b!807378 (=> (not res!551671) (not e!447032))))

(declare-fun lt!361729 () array!43895)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!361730 () (_ BitVec 64))

(assert (=> b!807378 (= res!551671 (= (seekEntryOrOpen!0 lt!361730 lt!361729 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!361730 lt!361729 mask!3266)))))

(assert (=> b!807378 (= lt!361730 (select (store (arr!21021 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!807378 (= lt!361729 (array!43896 (store (arr!21021 a!3170) i!1163 k!2044) (size!21442 a!3170)))))

(declare-fun b!807379 () Bool)

(declare-fun res!551665 () Bool)

(assert (=> b!807379 (=> (not res!551665) (not e!447031))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43895 (_ BitVec 32)) Bool)

(assert (=> b!807379 (= res!551665 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!807380 () Bool)

(declare-fun res!551666 () Bool)

(assert (=> b!807380 (=> (not res!551666) (not e!447034))))

(assert (=> b!807380 (= res!551666 (validKeyInArray!0 (select (arr!21021 a!3170) j!153)))))

(declare-fun b!807381 () Bool)

(declare-fun res!551667 () Bool)

(assert (=> b!807381 (=> (not res!551667) (not e!447031))))

(assert (=> b!807381 (= res!551667 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21442 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21021 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21442 a!3170)) (= (select (arr!21021 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(assert (= (and start!69244 res!551673) b!807372))

(assert (= (and b!807372 res!551668) b!807380))

(assert (= (and b!807380 res!551666) b!807371))

(assert (= (and b!807371 res!551672) b!807373))

(assert (= (and b!807373 res!551664) b!807375))

(assert (= (and b!807375 res!551674) b!807379))

(assert (= (and b!807379 res!551665) b!807377))

(assert (= (and b!807377 res!551669) b!807381))

(assert (= (and b!807381 res!551667) b!807378))

(assert (= (and b!807378 res!551671) b!807376))

(assert (= (and b!807376 res!551670) b!807374))

(declare-fun m!749515 () Bool)

(assert (=> start!69244 m!749515))

(declare-fun m!749517 () Bool)

(assert (=> start!69244 m!749517))

(declare-fun m!749519 () Bool)

(assert (=> b!807373 m!749519))

(declare-fun m!749521 () Bool)

(assert (=> b!807371 m!749521))

(declare-fun m!749523 () Bool)

(assert (=> b!807379 m!749523))

(declare-fun m!749525 () Bool)

(assert (=> b!807374 m!749525))

(declare-fun m!749527 () Bool)

(assert (=> b!807376 m!749527))

(declare-fun m!749529 () Bool)

(assert (=> b!807376 m!749529))

(assert (=> b!807376 m!749529))

(declare-fun m!749531 () Bool)

(assert (=> b!807376 m!749531))

(assert (=> b!807376 m!749529))

(declare-fun m!749533 () Bool)

(assert (=> b!807376 m!749533))

(declare-fun m!749535 () Bool)

(assert (=> b!807381 m!749535))

(declare-fun m!749537 () Bool)

(assert (=> b!807381 m!749537))

(declare-fun m!749539 () Bool)

(assert (=> b!807378 m!749539))

(declare-fun m!749541 () Bool)

(assert (=> b!807378 m!749541))

(declare-fun m!749543 () Bool)

(assert (=> b!807378 m!749543))

(declare-fun m!749545 () Bool)

(assert (=> b!807378 m!749545))

(assert (=> b!807380 m!749529))

(assert (=> b!807380 m!749529))

(declare-fun m!749547 () Bool)

(assert (=> b!807380 m!749547))

(declare-fun m!749549 () Bool)

(assert (=> b!807375 m!749549))

(declare-fun m!749551 () Bool)

(assert (=> b!807377 m!749551))

(push 1)

