; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86774 () Bool)

(assert start!86774)

(declare-fun b!1005419 () Bool)

(declare-fun e!566169 () Bool)

(declare-fun e!566170 () Bool)

(assert (=> b!1005419 (= e!566169 e!566170)))

(declare-fun res!674670 () Bool)

(assert (=> b!1005419 (=> (not res!674670) (not e!566170))))

(declare-datatypes ((SeekEntryResult!9463 0))(
  ( (MissingZero!9463 (index!40222 (_ BitVec 32))) (Found!9463 (index!40223 (_ BitVec 32))) (Intermediate!9463 (undefined!10275 Bool) (index!40224 (_ BitVec 32)) (x!87656 (_ BitVec 32))) (Undefined!9463) (MissingVacant!9463 (index!40225 (_ BitVec 32))) )
))
(declare-fun lt!444525 () SeekEntryResult!9463)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1005419 (= res!674670 (or (= lt!444525 (MissingVacant!9463 i!1194)) (= lt!444525 (MissingZero!9463 i!1194))))))

(declare-datatypes ((array!63425 0))(
  ( (array!63426 (arr!30531 (Array (_ BitVec 32) (_ BitVec 64))) (size!31034 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63425)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63425 (_ BitVec 32)) SeekEntryResult!9463)

(assert (=> b!1005419 (= lt!444525 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun res!674667 () Bool)

(assert (=> start!86774 (=> (not res!674667) (not e!566169))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86774 (= res!674667 (validMask!0 mask!3464))))

(assert (=> start!86774 e!566169))

(declare-fun array_inv!23521 (array!63425) Bool)

(assert (=> start!86774 (array_inv!23521 a!3219)))

(assert (=> start!86774 true))

(declare-fun b!1005420 () Bool)

(declare-fun res!674663 () Bool)

(assert (=> b!1005420 (=> (not res!674663) (not e!566169))))

(declare-fun arrayContainsKey!0 (array!63425 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1005420 (= res!674663 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1005421 () Bool)

(assert (=> b!1005421 (= e!566170 false)))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun lt!444524 () SeekEntryResult!9463)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63425 (_ BitVec 32)) SeekEntryResult!9463)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1005421 (= lt!444524 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30531 a!3219) j!170) mask!3464) (select (arr!30531 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1005422 () Bool)

(declare-fun res!674664 () Bool)

(assert (=> b!1005422 (=> (not res!674664) (not e!566169))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1005422 (= res!674664 (validKeyInArray!0 (select (arr!30531 a!3219) j!170)))))

(declare-fun b!1005423 () Bool)

(declare-fun res!674671 () Bool)

(assert (=> b!1005423 (=> (not res!674671) (not e!566170))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(assert (=> b!1005423 (= res!674671 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31034 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31034 a!3219))))))

(declare-fun b!1005424 () Bool)

(declare-fun res!674669 () Bool)

(assert (=> b!1005424 (=> (not res!674669) (not e!566170))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63425 (_ BitVec 32)) Bool)

(assert (=> b!1005424 (= res!674669 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1005425 () Bool)

(declare-fun res!674666 () Bool)

(assert (=> b!1005425 (=> (not res!674666) (not e!566169))))

(assert (=> b!1005425 (= res!674666 (validKeyInArray!0 k!2224))))

(declare-fun b!1005426 () Bool)

(declare-fun res!674668 () Bool)

(assert (=> b!1005426 (=> (not res!674668) (not e!566169))))

(assert (=> b!1005426 (= res!674668 (and (= (size!31034 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31034 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31034 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1005427 () Bool)

(declare-fun res!674665 () Bool)

(assert (=> b!1005427 (=> (not res!674665) (not e!566170))))

(declare-datatypes ((List!21333 0))(
  ( (Nil!21330) (Cons!21329 (h!22512 (_ BitVec 64)) (t!30342 List!21333)) )
))
(declare-fun arrayNoDuplicates!0 (array!63425 (_ BitVec 32) List!21333) Bool)

(assert (=> b!1005427 (= res!674665 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21330))))

(assert (= (and start!86774 res!674667) b!1005426))

(assert (= (and b!1005426 res!674668) b!1005422))

(assert (= (and b!1005422 res!674664) b!1005425))

(assert (= (and b!1005425 res!674666) b!1005420))

(assert (= (and b!1005420 res!674663) b!1005419))

(assert (= (and b!1005419 res!674670) b!1005424))

(assert (= (and b!1005424 res!674669) b!1005427))

(assert (= (and b!1005427 res!674665) b!1005423))

(assert (= (and b!1005423 res!674671) b!1005421))

(declare-fun m!930755 () Bool)

(assert (=> b!1005427 m!930755))

(declare-fun m!930757 () Bool)

(assert (=> b!1005421 m!930757))

(assert (=> b!1005421 m!930757))

(declare-fun m!930759 () Bool)

(assert (=> b!1005421 m!930759))

(assert (=> b!1005421 m!930759))

(assert (=> b!1005421 m!930757))

(declare-fun m!930761 () Bool)

(assert (=> b!1005421 m!930761))

(assert (=> b!1005422 m!930757))

(assert (=> b!1005422 m!930757))

(declare-fun m!930763 () Bool)

(assert (=> b!1005422 m!930763))

(declare-fun m!930765 () Bool)

(assert (=> start!86774 m!930765))

(declare-fun m!930767 () Bool)

(assert (=> start!86774 m!930767))

(declare-fun m!930769 () Bool)

(assert (=> b!1005425 m!930769))

(declare-fun m!930771 () Bool)

(assert (=> b!1005419 m!930771))

(declare-fun m!930773 () Bool)

(assert (=> b!1005424 m!930773))

(declare-fun m!930775 () Bool)

(assert (=> b!1005420 m!930775))

(push 1)

(assert (not b!1005422))

(assert (not b!1005427))

(assert (not start!86774))

(assert (not b!1005421))

