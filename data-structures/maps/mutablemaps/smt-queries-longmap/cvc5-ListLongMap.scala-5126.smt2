; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69658 () Bool)

(assert start!69658)

(declare-fun b!811142 () Bool)

(declare-fun e!448996 () Bool)

(assert (=> b!811142 (= e!448996 (not true))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!363676 () (_ BitVec 32))

(declare-datatypes ((array!44048 0))(
  ( (array!44049 (arr!21090 (Array (_ BitVec 32) (_ BitVec 64))) (size!21511 (_ BitVec 32))) )
))
(declare-fun lt!363671 () array!44048)

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun a!3170 () array!44048)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun lt!363670 () (_ BitVec 64))

(declare-fun j!153 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8688 0))(
  ( (MissingZero!8688 (index!37122 (_ BitVec 32))) (Found!8688 (index!37123 (_ BitVec 32))) (Intermediate!8688 (undefined!9500 Bool) (index!37124 (_ BitVec 32)) (x!67966 (_ BitVec 32))) (Undefined!8688) (MissingVacant!8688 (index!37125 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!44048 (_ BitVec 32)) SeekEntryResult!8688)

(assert (=> b!811142 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363676 vacantAfter!23 lt!363670 lt!363671 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363676 vacantBefore!23 (select (arr!21090 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27638 0))(
  ( (Unit!27639) )
))
(declare-fun lt!363675 () Unit!27638)

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!44048 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27638)

(assert (=> b!811142 (= lt!363675 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!363676 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!811142 (= lt!363676 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!811143 () Bool)

(declare-fun res!554363 () Bool)

(declare-fun e!448994 () Bool)

(assert (=> b!811143 (=> (not res!554363) (not e!448994))))

(declare-datatypes ((List!15106 0))(
  ( (Nil!15103) (Cons!15102 (h!16231 (_ BitVec 64)) (t!21429 List!15106)) )
))
(declare-fun arrayNoDuplicates!0 (array!44048 (_ BitVec 32) List!15106) Bool)

(assert (=> b!811143 (= res!554363 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15103))))

(declare-fun b!811144 () Bool)

(declare-fun res!554361 () Bool)

(assert (=> b!811144 (=> (not res!554361) (not e!448994))))

(assert (=> b!811144 (= res!554361 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21511 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21090 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21511 a!3170)) (= (select (arr!21090 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!811145 () Bool)

(declare-fun res!554356 () Bool)

(declare-fun e!448992 () Bool)

(assert (=> b!811145 (=> (not res!554356) (not e!448992))))

(declare-fun arrayContainsKey!0 (array!44048 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!811145 (= res!554356 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!811146 () Bool)

(declare-fun res!554359 () Bool)

(assert (=> b!811146 (=> (not res!554359) (not e!448992))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!811146 (= res!554359 (validKeyInArray!0 k!2044))))

(declare-fun res!554362 () Bool)

(assert (=> start!69658 (=> (not res!554362) (not e!448992))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69658 (= res!554362 (validMask!0 mask!3266))))

(assert (=> start!69658 e!448992))

(assert (=> start!69658 true))

(declare-fun array_inv!16864 (array!44048) Bool)

(assert (=> start!69658 (array_inv!16864 a!3170)))

(declare-fun b!811147 () Bool)

(declare-fun e!448995 () Bool)

(assert (=> b!811147 (= e!448995 e!448996)))

(declare-fun res!554364 () Bool)

(assert (=> b!811147 (=> (not res!554364) (not e!448996))))

(declare-fun lt!363673 () SeekEntryResult!8688)

(declare-fun lt!363672 () SeekEntryResult!8688)

(assert (=> b!811147 (= res!554364 (and (= lt!363672 lt!363673) (= lt!363673 (Found!8688 j!153)) (not (= (select (arr!21090 a!3170) index!1236) (select (arr!21090 a!3170) j!153)))))))

(assert (=> b!811147 (= lt!363673 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21090 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!44048 (_ BitVec 32)) SeekEntryResult!8688)

(assert (=> b!811147 (= lt!363672 (seekEntryOrOpen!0 (select (arr!21090 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!811148 () Bool)

(declare-fun res!554358 () Bool)

(assert (=> b!811148 (=> (not res!554358) (not e!448992))))

(assert (=> b!811148 (= res!554358 (validKeyInArray!0 (select (arr!21090 a!3170) j!153)))))

(declare-fun b!811149 () Bool)

(declare-fun res!554355 () Bool)

(assert (=> b!811149 (=> (not res!554355) (not e!448992))))

(assert (=> b!811149 (= res!554355 (and (= (size!21511 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21511 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21511 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!811150 () Bool)

(assert (=> b!811150 (= e!448992 e!448994)))

(declare-fun res!554365 () Bool)

(assert (=> b!811150 (=> (not res!554365) (not e!448994))))

(declare-fun lt!363674 () SeekEntryResult!8688)

(assert (=> b!811150 (= res!554365 (or (= lt!363674 (MissingZero!8688 i!1163)) (= lt!363674 (MissingVacant!8688 i!1163))))))

(assert (=> b!811150 (= lt!363674 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!811151 () Bool)

(declare-fun res!554357 () Bool)

(assert (=> b!811151 (=> (not res!554357) (not e!448994))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44048 (_ BitVec 32)) Bool)

(assert (=> b!811151 (= res!554357 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!811152 () Bool)

(assert (=> b!811152 (= e!448994 e!448995)))

(declare-fun res!554360 () Bool)

(assert (=> b!811152 (=> (not res!554360) (not e!448995))))

(assert (=> b!811152 (= res!554360 (= (seekEntryOrOpen!0 lt!363670 lt!363671 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!363670 lt!363671 mask!3266)))))

(assert (=> b!811152 (= lt!363670 (select (store (arr!21090 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!811152 (= lt!363671 (array!44049 (store (arr!21090 a!3170) i!1163 k!2044) (size!21511 a!3170)))))

(assert (= (and start!69658 res!554362) b!811149))

(assert (= (and b!811149 res!554355) b!811148))

(assert (= (and b!811148 res!554358) b!811146))

(assert (= (and b!811146 res!554359) b!811145))

(assert (= (and b!811145 res!554356) b!811150))

(assert (= (and b!811150 res!554365) b!811151))

(assert (= (and b!811151 res!554357) b!811143))

(assert (= (and b!811143 res!554363) b!811144))

(assert (= (and b!811144 res!554361) b!811152))

(assert (= (and b!811152 res!554360) b!811147))

(assert (= (and b!811147 res!554364) b!811142))

(declare-fun m!753541 () Bool)

(assert (=> b!811144 m!753541))

(declare-fun m!753543 () Bool)

(assert (=> b!811144 m!753543))

(declare-fun m!753545 () Bool)

(assert (=> b!811147 m!753545))

(declare-fun m!753547 () Bool)

(assert (=> b!811147 m!753547))

(assert (=> b!811147 m!753547))

(declare-fun m!753549 () Bool)

(assert (=> b!811147 m!753549))

(assert (=> b!811147 m!753547))

(declare-fun m!753551 () Bool)

(assert (=> b!811147 m!753551))

(declare-fun m!753553 () Bool)

(assert (=> b!811145 m!753553))

(declare-fun m!753555 () Bool)

(assert (=> b!811150 m!753555))

(assert (=> b!811148 m!753547))

(assert (=> b!811148 m!753547))

(declare-fun m!753557 () Bool)

(assert (=> b!811148 m!753557))

(declare-fun m!753559 () Bool)

(assert (=> b!811146 m!753559))

(declare-fun m!753561 () Bool)

(assert (=> b!811151 m!753561))

(declare-fun m!753563 () Bool)

(assert (=> start!69658 m!753563))

(declare-fun m!753565 () Bool)

(assert (=> start!69658 m!753565))

(assert (=> b!811142 m!753547))

(declare-fun m!753567 () Bool)

(assert (=> b!811142 m!753567))

(declare-fun m!753569 () Bool)

(assert (=> b!811142 m!753569))

(declare-fun m!753571 () Bool)

(assert (=> b!811142 m!753571))

(assert (=> b!811142 m!753547))

(declare-fun m!753573 () Bool)

(assert (=> b!811142 m!753573))

(declare-fun m!753575 () Bool)

(assert (=> b!811143 m!753575))

(declare-fun m!753577 () Bool)

(assert (=> b!811152 m!753577))

(declare-fun m!753579 () Bool)

(assert (=> b!811152 m!753579))

(declare-fun m!753581 () Bool)

(assert (=> b!811152 m!753581))

(declare-fun m!753583 () Bool)

(assert (=> b!811152 m!753583))

(push 1)

