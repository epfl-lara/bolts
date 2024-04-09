; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69240 () Bool)

(assert start!69240)

(declare-fun b!807305 () Bool)

(declare-fun res!551602 () Bool)

(declare-fun e!447002 () Bool)

(assert (=> b!807305 (=> (not res!551602) (not e!447002))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43891 0))(
  ( (array!43892 (arr!21019 (Array (_ BitVec 32) (_ BitVec 64))) (size!21440 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43891)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!807305 (= res!551602 (and (= (size!21440 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21440 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21440 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!807306 () Bool)

(declare-fun e!447001 () Bool)

(declare-fun e!447004 () Bool)

(assert (=> b!807306 (= e!447001 e!447004)))

(declare-fun res!551604 () Bool)

(assert (=> b!807306 (=> (not res!551604) (not e!447004))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!361694 () (_ BitVec 64))

(declare-fun lt!361693 () array!43891)

(declare-fun index!1236 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8617 0))(
  ( (MissingZero!8617 (index!36835 (_ BitVec 32))) (Found!8617 (index!36836 (_ BitVec 32))) (Intermediate!8617 (undefined!9429 Bool) (index!36837 (_ BitVec 32)) (x!67670 (_ BitVec 32))) (Undefined!8617) (MissingVacant!8617 (index!36838 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43891 (_ BitVec 32)) SeekEntryResult!8617)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43891 (_ BitVec 32)) SeekEntryResult!8617)

(assert (=> b!807306 (= res!551604 (= (seekEntryOrOpen!0 lt!361694 lt!361693 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!361694 lt!361693 mask!3266)))))

(declare-fun k0!2044 () (_ BitVec 64))

(assert (=> b!807306 (= lt!361694 (select (store (arr!21019 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!807306 (= lt!361693 (array!43892 (store (arr!21019 a!3170) i!1163 k0!2044) (size!21440 a!3170)))))

(declare-fun b!807307 () Bool)

(declare-fun res!551598 () Bool)

(assert (=> b!807307 (=> (not res!551598) (not e!447001))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!807307 (= res!551598 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21440 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21019 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21440 a!3170)) (= (select (arr!21019 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!807308 () Bool)

(declare-fun e!447003 () Bool)

(assert (=> b!807308 (= e!447004 e!447003)))

(declare-fun res!551599 () Bool)

(assert (=> b!807308 (=> (not res!551599) (not e!447003))))

(declare-fun lt!361692 () SeekEntryResult!8617)

(declare-fun lt!361691 () SeekEntryResult!8617)

(assert (=> b!807308 (= res!551599 (and (= lt!361691 lt!361692) (= lt!361692 (Found!8617 j!153)) (not (= (select (arr!21019 a!3170) index!1236) (select (arr!21019 a!3170) j!153)))))))

(assert (=> b!807308 (= lt!361692 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21019 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!807308 (= lt!361691 (seekEntryOrOpen!0 (select (arr!21019 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!807309 () Bool)

(assert (=> b!807309 (= e!447002 e!447001)))

(declare-fun res!551600 () Bool)

(assert (=> b!807309 (=> (not res!551600) (not e!447001))))

(declare-fun lt!361695 () SeekEntryResult!8617)

(assert (=> b!807309 (= res!551600 (or (= lt!361695 (MissingZero!8617 i!1163)) (= lt!361695 (MissingVacant!8617 i!1163))))))

(assert (=> b!807309 (= lt!361695 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!807311 () Bool)

(declare-fun res!551608 () Bool)

(assert (=> b!807311 (=> (not res!551608) (not e!447001))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43891 (_ BitVec 32)) Bool)

(assert (=> b!807311 (= res!551608 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!807312 () Bool)

(declare-fun res!551601 () Bool)

(assert (=> b!807312 (=> (not res!551601) (not e!447001))))

(declare-datatypes ((List!15035 0))(
  ( (Nil!15032) (Cons!15031 (h!16160 (_ BitVec 64)) (t!21358 List!15035)) )
))
(declare-fun arrayNoDuplicates!0 (array!43891 (_ BitVec 32) List!15035) Bool)

(assert (=> b!807312 (= res!551601 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15032))))

(declare-fun b!807313 () Bool)

(declare-fun res!551607 () Bool)

(assert (=> b!807313 (=> (not res!551607) (not e!447002))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!807313 (= res!551607 (validKeyInArray!0 k0!2044))))

(declare-fun b!807310 () Bool)

(declare-fun res!551603 () Bool)

(assert (=> b!807310 (=> (not res!551603) (not e!447002))))

(assert (=> b!807310 (= res!551603 (validKeyInArray!0 (select (arr!21019 a!3170) j!153)))))

(declare-fun res!551606 () Bool)

(assert (=> start!69240 (=> (not res!551606) (not e!447002))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69240 (= res!551606 (validMask!0 mask!3266))))

(assert (=> start!69240 e!447002))

(assert (=> start!69240 true))

(declare-fun array_inv!16793 (array!43891) Bool)

(assert (=> start!69240 (array_inv!16793 a!3170)))

(declare-fun b!807314 () Bool)

(assert (=> b!807314 (= e!447003 false)))

(declare-fun lt!361696 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!807314 (= lt!361696 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!807315 () Bool)

(declare-fun res!551605 () Bool)

(assert (=> b!807315 (=> (not res!551605) (not e!447002))))

(declare-fun arrayContainsKey!0 (array!43891 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!807315 (= res!551605 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!69240 res!551606) b!807305))

(assert (= (and b!807305 res!551602) b!807310))

(assert (= (and b!807310 res!551603) b!807313))

(assert (= (and b!807313 res!551607) b!807315))

(assert (= (and b!807315 res!551605) b!807309))

(assert (= (and b!807309 res!551600) b!807311))

(assert (= (and b!807311 res!551608) b!807312))

(assert (= (and b!807312 res!551601) b!807307))

(assert (= (and b!807307 res!551598) b!807306))

(assert (= (and b!807306 res!551604) b!807308))

(assert (= (and b!807308 res!551599) b!807314))

(declare-fun m!749439 () Bool)

(assert (=> b!807315 m!749439))

(declare-fun m!749441 () Bool)

(assert (=> b!807313 m!749441))

(declare-fun m!749443 () Bool)

(assert (=> b!807308 m!749443))

(declare-fun m!749445 () Bool)

(assert (=> b!807308 m!749445))

(assert (=> b!807308 m!749445))

(declare-fun m!749447 () Bool)

(assert (=> b!807308 m!749447))

(assert (=> b!807308 m!749445))

(declare-fun m!749449 () Bool)

(assert (=> b!807308 m!749449))

(assert (=> b!807310 m!749445))

(assert (=> b!807310 m!749445))

(declare-fun m!749451 () Bool)

(assert (=> b!807310 m!749451))

(declare-fun m!749453 () Bool)

(assert (=> b!807312 m!749453))

(declare-fun m!749455 () Bool)

(assert (=> b!807306 m!749455))

(declare-fun m!749457 () Bool)

(assert (=> b!807306 m!749457))

(declare-fun m!749459 () Bool)

(assert (=> b!807306 m!749459))

(declare-fun m!749461 () Bool)

(assert (=> b!807306 m!749461))

(declare-fun m!749463 () Bool)

(assert (=> b!807309 m!749463))

(declare-fun m!749465 () Bool)

(assert (=> b!807307 m!749465))

(declare-fun m!749467 () Bool)

(assert (=> b!807307 m!749467))

(declare-fun m!749469 () Bool)

(assert (=> start!69240 m!749469))

(declare-fun m!749471 () Bool)

(assert (=> start!69240 m!749471))

(declare-fun m!749473 () Bool)

(assert (=> b!807314 m!749473))

(declare-fun m!749475 () Bool)

(assert (=> b!807311 m!749475))

(check-sat (not b!807315) (not b!807310) (not b!807314) (not b!807306) (not start!69240) (not b!807313) (not b!807312) (not b!807309) (not b!807308) (not b!807311))
(check-sat)
