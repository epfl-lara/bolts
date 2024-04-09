; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69242 () Bool)

(assert start!69242)

(declare-fun b!807338 () Bool)

(declare-fun e!447016 () Bool)

(declare-fun e!447015 () Bool)

(assert (=> b!807338 (= e!447016 e!447015)))

(declare-fun res!551635 () Bool)

(assert (=> b!807338 (=> (not res!551635) (not e!447015))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((array!43893 0))(
  ( (array!43894 (arr!21020 (Array (_ BitVec 32) (_ BitVec 64))) (size!21441 (_ BitVec 32))) )
))
(declare-fun lt!361712 () array!43893)

(declare-fun lt!361710 () (_ BitVec 64))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8618 0))(
  ( (MissingZero!8618 (index!36839 (_ BitVec 32))) (Found!8618 (index!36840 (_ BitVec 32))) (Intermediate!8618 (undefined!9430 Bool) (index!36841 (_ BitVec 32)) (x!67671 (_ BitVec 32))) (Undefined!8618) (MissingVacant!8618 (index!36842 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43893 (_ BitVec 32)) SeekEntryResult!8618)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43893 (_ BitVec 32)) SeekEntryResult!8618)

(assert (=> b!807338 (= res!551635 (= (seekEntryOrOpen!0 lt!361710 lt!361712 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!361710 lt!361712 mask!3266)))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun a!3170 () array!43893)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!807338 (= lt!361710 (select (store (arr!21020 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!807338 (= lt!361712 (array!43894 (store (arr!21020 a!3170) i!1163 k!2044) (size!21441 a!3170)))))

(declare-fun res!551638 () Bool)

(declare-fun e!447019 () Bool)

(assert (=> start!69242 (=> (not res!551638) (not e!447019))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69242 (= res!551638 (validMask!0 mask!3266))))

(assert (=> start!69242 e!447019))

(assert (=> start!69242 true))

(declare-fun array_inv!16794 (array!43893) Bool)

(assert (=> start!69242 (array_inv!16794 a!3170)))

(declare-fun b!807339 () Bool)

(declare-fun res!551636 () Bool)

(assert (=> b!807339 (=> (not res!551636) (not e!447016))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43893 (_ BitVec 32)) Bool)

(assert (=> b!807339 (= res!551636 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!807340 () Bool)

(declare-fun res!551641 () Bool)

(assert (=> b!807340 (=> (not res!551641) (not e!447019))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!807340 (= res!551641 (validKeyInArray!0 (select (arr!21020 a!3170) j!153)))))

(declare-fun b!807341 () Bool)

(declare-fun res!551631 () Bool)

(assert (=> b!807341 (=> (not res!551631) (not e!447016))))

(declare-datatypes ((List!15036 0))(
  ( (Nil!15033) (Cons!15032 (h!16161 (_ BitVec 64)) (t!21359 List!15036)) )
))
(declare-fun arrayNoDuplicates!0 (array!43893 (_ BitVec 32) List!15036) Bool)

(assert (=> b!807341 (= res!551631 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15033))))

(declare-fun b!807342 () Bool)

(declare-fun res!551634 () Bool)

(assert (=> b!807342 (=> (not res!551634) (not e!447016))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!807342 (= res!551634 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21441 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21020 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21441 a!3170)) (= (select (arr!21020 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!807343 () Bool)

(declare-fun e!447018 () Bool)

(assert (=> b!807343 (= e!447015 e!447018)))

(declare-fun res!551639 () Bool)

(assert (=> b!807343 (=> (not res!551639) (not e!447018))))

(declare-fun lt!361709 () SeekEntryResult!8618)

(declare-fun lt!361714 () SeekEntryResult!8618)

(assert (=> b!807343 (= res!551639 (and (= lt!361709 lt!361714) (= lt!361714 (Found!8618 j!153)) (not (= (select (arr!21020 a!3170) index!1236) (select (arr!21020 a!3170) j!153)))))))

(assert (=> b!807343 (= lt!361714 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21020 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!807343 (= lt!361709 (seekEntryOrOpen!0 (select (arr!21020 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!807344 () Bool)

(declare-fun res!551640 () Bool)

(assert (=> b!807344 (=> (not res!551640) (not e!447019))))

(assert (=> b!807344 (= res!551640 (validKeyInArray!0 k!2044))))

(declare-fun b!807345 () Bool)

(assert (=> b!807345 (= e!447019 e!447016)))

(declare-fun res!551637 () Bool)

(assert (=> b!807345 (=> (not res!551637) (not e!447016))))

(declare-fun lt!361711 () SeekEntryResult!8618)

(assert (=> b!807345 (= res!551637 (or (= lt!361711 (MissingZero!8618 i!1163)) (= lt!361711 (MissingVacant!8618 i!1163))))))

(assert (=> b!807345 (= lt!361711 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!807346 () Bool)

(declare-fun res!551633 () Bool)

(assert (=> b!807346 (=> (not res!551633) (not e!447019))))

(assert (=> b!807346 (= res!551633 (and (= (size!21441 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21441 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21441 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!807347 () Bool)

(assert (=> b!807347 (= e!447018 false)))

(declare-fun lt!361713 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!807347 (= lt!361713 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!807348 () Bool)

(declare-fun res!551632 () Bool)

(assert (=> b!807348 (=> (not res!551632) (not e!447019))))

(declare-fun arrayContainsKey!0 (array!43893 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!807348 (= res!551632 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!69242 res!551638) b!807346))

(assert (= (and b!807346 res!551633) b!807340))

(assert (= (and b!807340 res!551641) b!807344))

(assert (= (and b!807344 res!551640) b!807348))

(assert (= (and b!807348 res!551632) b!807345))

(assert (= (and b!807345 res!551637) b!807339))

(assert (= (and b!807339 res!551636) b!807341))

(assert (= (and b!807341 res!551631) b!807342))

(assert (= (and b!807342 res!551634) b!807338))

(assert (= (and b!807338 res!551635) b!807343))

(assert (= (and b!807343 res!551639) b!807347))

(declare-fun m!749477 () Bool)

(assert (=> b!807348 m!749477))

(declare-fun m!749479 () Bool)

(assert (=> b!807339 m!749479))

(declare-fun m!749481 () Bool)

(assert (=> b!807345 m!749481))

(declare-fun m!749483 () Bool)

(assert (=> b!807338 m!749483))

(declare-fun m!749485 () Bool)

(assert (=> b!807338 m!749485))

(declare-fun m!749487 () Bool)

(assert (=> b!807338 m!749487))

(declare-fun m!749489 () Bool)

(assert (=> b!807338 m!749489))

(declare-fun m!749491 () Bool)

(assert (=> start!69242 m!749491))

(declare-fun m!749493 () Bool)

(assert (=> start!69242 m!749493))

(declare-fun m!749495 () Bool)

(assert (=> b!807342 m!749495))

(declare-fun m!749497 () Bool)

(assert (=> b!807342 m!749497))

(declare-fun m!749499 () Bool)

(assert (=> b!807340 m!749499))

(assert (=> b!807340 m!749499))

(declare-fun m!749501 () Bool)

(assert (=> b!807340 m!749501))

(declare-fun m!749503 () Bool)

(assert (=> b!807343 m!749503))

(assert (=> b!807343 m!749499))

(assert (=> b!807343 m!749499))

(declare-fun m!749505 () Bool)

(assert (=> b!807343 m!749505))

(assert (=> b!807343 m!749499))

(declare-fun m!749507 () Bool)

(assert (=> b!807343 m!749507))

(declare-fun m!749509 () Bool)

(assert (=> b!807344 m!749509))

(declare-fun m!749511 () Bool)

(assert (=> b!807341 m!749511))

(declare-fun m!749513 () Bool)

(assert (=> b!807347 m!749513))

(push 1)

