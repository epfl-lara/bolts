; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69236 () Bool)

(assert start!69236)

(declare-fun b!807239 () Bool)

(declare-fun res!551535 () Bool)

(declare-fun e!446970 () Bool)

(assert (=> b!807239 (=> (not res!551535) (not e!446970))))

(declare-datatypes ((array!43887 0))(
  ( (array!43888 (arr!21017 (Array (_ BitVec 32) (_ BitVec 64))) (size!21438 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43887)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43887 (_ BitVec 32)) Bool)

(assert (=> b!807239 (= res!551535 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!807240 () Bool)

(declare-fun res!551534 () Bool)

(declare-fun e!446972 () Bool)

(assert (=> b!807240 (=> (not res!551534) (not e!446972))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!807240 (= res!551534 (validKeyInArray!0 k!2044))))

(declare-fun b!807241 () Bool)

(declare-fun res!551532 () Bool)

(assert (=> b!807241 (=> (not res!551532) (not e!446972))))

(declare-fun arrayContainsKey!0 (array!43887 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!807241 (= res!551532 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun res!551538 () Bool)

(assert (=> start!69236 (=> (not res!551538) (not e!446972))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69236 (= res!551538 (validMask!0 mask!3266))))

(assert (=> start!69236 e!446972))

(assert (=> start!69236 true))

(declare-fun array_inv!16791 (array!43887) Bool)

(assert (=> start!69236 (array_inv!16791 a!3170)))

(declare-fun b!807242 () Bool)

(declare-fun res!551536 () Bool)

(assert (=> b!807242 (=> (not res!551536) (not e!446972))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!807242 (= res!551536 (validKeyInArray!0 (select (arr!21017 a!3170) j!153)))))

(declare-fun b!807243 () Bool)

(declare-fun e!446974 () Bool)

(assert (=> b!807243 (= e!446970 e!446974)))

(declare-fun res!551537 () Bool)

(assert (=> b!807243 (=> (not res!551537) (not e!446974))))

(declare-fun lt!361656 () (_ BitVec 64))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!361655 () array!43887)

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8615 0))(
  ( (MissingZero!8615 (index!36827 (_ BitVec 32))) (Found!8615 (index!36828 (_ BitVec 32))) (Intermediate!8615 (undefined!9427 Bool) (index!36829 (_ BitVec 32)) (x!67660 (_ BitVec 32))) (Undefined!8615) (MissingVacant!8615 (index!36830 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43887 (_ BitVec 32)) SeekEntryResult!8615)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43887 (_ BitVec 32)) SeekEntryResult!8615)

(assert (=> b!807243 (= res!551537 (= (seekEntryOrOpen!0 lt!361656 lt!361655 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!361656 lt!361655 mask!3266)))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!807243 (= lt!361656 (select (store (arr!21017 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!807243 (= lt!361655 (array!43888 (store (arr!21017 a!3170) i!1163 k!2044) (size!21438 a!3170)))))

(declare-fun b!807244 () Bool)

(declare-fun e!446973 () Bool)

(assert (=> b!807244 (= e!446973 false)))

(declare-fun lt!361658 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!807244 (= lt!361658 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!807245 () Bool)

(assert (=> b!807245 (= e!446974 e!446973)))

(declare-fun res!551542 () Bool)

(assert (=> b!807245 (=> (not res!551542) (not e!446973))))

(declare-fun lt!361657 () SeekEntryResult!8615)

(declare-fun lt!361660 () SeekEntryResult!8615)

(assert (=> b!807245 (= res!551542 (and (= lt!361660 lt!361657) (= lt!361657 (Found!8615 j!153)) (not (= (select (arr!21017 a!3170) index!1236) (select (arr!21017 a!3170) j!153)))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!807245 (= lt!361657 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21017 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!807245 (= lt!361660 (seekEntryOrOpen!0 (select (arr!21017 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!807246 () Bool)

(declare-fun res!551533 () Bool)

(assert (=> b!807246 (=> (not res!551533) (not e!446970))))

(assert (=> b!807246 (= res!551533 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21438 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21017 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21438 a!3170)) (= (select (arr!21017 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!807247 () Bool)

(declare-fun res!551539 () Bool)

(assert (=> b!807247 (=> (not res!551539) (not e!446970))))

(declare-datatypes ((List!15033 0))(
  ( (Nil!15030) (Cons!15029 (h!16158 (_ BitVec 64)) (t!21356 List!15033)) )
))
(declare-fun arrayNoDuplicates!0 (array!43887 (_ BitVec 32) List!15033) Bool)

(assert (=> b!807247 (= res!551539 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15030))))

(declare-fun b!807248 () Bool)

(declare-fun res!551541 () Bool)

(assert (=> b!807248 (=> (not res!551541) (not e!446972))))

(assert (=> b!807248 (= res!551541 (and (= (size!21438 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21438 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21438 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!807249 () Bool)

(assert (=> b!807249 (= e!446972 e!446970)))

(declare-fun res!551540 () Bool)

(assert (=> b!807249 (=> (not res!551540) (not e!446970))))

(declare-fun lt!361659 () SeekEntryResult!8615)

(assert (=> b!807249 (= res!551540 (or (= lt!361659 (MissingZero!8615 i!1163)) (= lt!361659 (MissingVacant!8615 i!1163))))))

(assert (=> b!807249 (= lt!361659 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(assert (= (and start!69236 res!551538) b!807248))

(assert (= (and b!807248 res!551541) b!807242))

(assert (= (and b!807242 res!551536) b!807240))

(assert (= (and b!807240 res!551534) b!807241))

(assert (= (and b!807241 res!551532) b!807249))

(assert (= (and b!807249 res!551540) b!807239))

(assert (= (and b!807239 res!551535) b!807247))

(assert (= (and b!807247 res!551539) b!807246))

(assert (= (and b!807246 res!551533) b!807243))

(assert (= (and b!807243 res!551537) b!807245))

(assert (= (and b!807245 res!551542) b!807244))

(declare-fun m!749363 () Bool)

(assert (=> b!807239 m!749363))

(declare-fun m!749365 () Bool)

(assert (=> b!807245 m!749365))

(declare-fun m!749367 () Bool)

(assert (=> b!807245 m!749367))

(assert (=> b!807245 m!749367))

(declare-fun m!749369 () Bool)

(assert (=> b!807245 m!749369))

(assert (=> b!807245 m!749367))

(declare-fun m!749371 () Bool)

(assert (=> b!807245 m!749371))

(declare-fun m!749373 () Bool)

(assert (=> b!807249 m!749373))

(declare-fun m!749375 () Bool)

(assert (=> b!807247 m!749375))

(assert (=> b!807242 m!749367))

(assert (=> b!807242 m!749367))

(declare-fun m!749377 () Bool)

(assert (=> b!807242 m!749377))

(declare-fun m!749379 () Bool)

(assert (=> b!807243 m!749379))

(declare-fun m!749381 () Bool)

(assert (=> b!807243 m!749381))

(declare-fun m!749383 () Bool)

(assert (=> b!807243 m!749383))

(declare-fun m!749385 () Bool)

(assert (=> b!807243 m!749385))

(declare-fun m!749387 () Bool)

(assert (=> b!807240 m!749387))

(declare-fun m!749389 () Bool)

(assert (=> b!807241 m!749389))

(declare-fun m!749391 () Bool)

(assert (=> b!807244 m!749391))

(declare-fun m!749393 () Bool)

(assert (=> b!807246 m!749393))

(declare-fun m!749395 () Bool)

(assert (=> b!807246 m!749395))

(declare-fun m!749397 () Bool)

(assert (=> start!69236 m!749397))

(declare-fun m!749399 () Bool)

(assert (=> start!69236 m!749399))

(push 1)

