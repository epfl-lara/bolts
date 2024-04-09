; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87154 () Bool)

(assert start!87154)

(declare-fun b!1010085 () Bool)

(declare-fun res!678584 () Bool)

(declare-fun e!568320 () Bool)

(assert (=> b!1010085 (=> (not res!678584) (not e!568320))))

(declare-datatypes ((array!63616 0))(
  ( (array!63617 (arr!30622 (Array (_ BitVec 32) (_ BitVec 64))) (size!31125 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63616)

(declare-datatypes ((List!21424 0))(
  ( (Nil!21421) (Cons!21420 (h!22612 (_ BitVec 64)) (t!30433 List!21424)) )
))
(declare-fun arrayNoDuplicates!0 (array!63616 (_ BitVec 32) List!21424) Bool)

(assert (=> b!1010085 (= res!678584 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21421))))

(declare-fun b!1010086 () Bool)

(declare-fun e!568322 () Bool)

(assert (=> b!1010086 (= e!568320 e!568322)))

(declare-fun res!678583 () Bool)

(assert (=> b!1010086 (=> (not res!678583) (not e!568322))))

(declare-datatypes ((SeekEntryResult!9554 0))(
  ( (MissingZero!9554 (index!40586 (_ BitVec 32))) (Found!9554 (index!40587 (_ BitVec 32))) (Intermediate!9554 (undefined!10366 Bool) (index!40588 (_ BitVec 32)) (x!88025 (_ BitVec 32))) (Undefined!9554) (MissingVacant!9554 (index!40589 (_ BitVec 32))) )
))
(declare-fun lt!446428 () SeekEntryResult!9554)

(declare-fun lt!446431 () SeekEntryResult!9554)

(assert (=> b!1010086 (= res!678583 (= lt!446428 lt!446431))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1010086 (= lt!446431 (Intermediate!9554 false resIndex!38 resX!38))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63616 (_ BitVec 32)) SeekEntryResult!9554)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1010086 (= lt!446428 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30622 a!3219) j!170) mask!3464) (select (arr!30622 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1010087 () Bool)

(declare-fun res!678592 () Bool)

(declare-fun e!568321 () Bool)

(assert (=> b!1010087 (=> (not res!678592) (not e!568321))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63616 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1010087 (= res!678592 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1010088 () Bool)

(declare-fun e!568319 () Bool)

(declare-fun e!568317 () Bool)

(assert (=> b!1010088 (= e!568319 e!568317)))

(declare-fun res!678580 () Bool)

(assert (=> b!1010088 (=> (not res!678580) (not e!568317))))

(declare-fun lt!446432 () (_ BitVec 64))

(declare-fun lt!446430 () array!63616)

(assert (=> b!1010088 (= res!678580 (not (= lt!446428 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!446432 mask!3464) lt!446432 lt!446430 mask!3464))))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1010088 (= lt!446432 (select (store (arr!30622 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1010088 (= lt!446430 (array!63617 (store (arr!30622 a!3219) i!1194 k!2224) (size!31125 a!3219)))))

(declare-fun b!1010090 () Bool)

(declare-fun res!678586 () Bool)

(assert (=> b!1010090 (=> (not res!678586) (not e!568317))))

(declare-fun lt!446427 () SeekEntryResult!9554)

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!1010090 (= res!678586 (not (= lt!446427 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!446432 lt!446430 mask!3464))))))

(declare-fun b!1010091 () Bool)

(declare-fun res!678587 () Bool)

(assert (=> b!1010091 (=> (not res!678587) (not e!568320))))

(assert (=> b!1010091 (= res!678587 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31125 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31125 a!3219))))))

(declare-fun b!1010092 () Bool)

(assert (=> b!1010092 (= e!568321 e!568320)))

(declare-fun res!678590 () Bool)

(assert (=> b!1010092 (=> (not res!678590) (not e!568320))))

(declare-fun lt!446429 () SeekEntryResult!9554)

(assert (=> b!1010092 (= res!678590 (or (= lt!446429 (MissingVacant!9554 i!1194)) (= lt!446429 (MissingZero!9554 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63616 (_ BitVec 32)) SeekEntryResult!9554)

(assert (=> b!1010092 (= lt!446429 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1010093 () Bool)

(assert (=> b!1010093 (= e!568322 e!568319)))

(declare-fun res!678581 () Bool)

(assert (=> b!1010093 (=> (not res!678581) (not e!568319))))

(assert (=> b!1010093 (= res!678581 (= lt!446427 lt!446431))))

(assert (=> b!1010093 (= lt!446427 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30622 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1010094 () Bool)

(declare-fun res!678591 () Bool)

(assert (=> b!1010094 (=> (not res!678591) (not e!568320))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63616 (_ BitVec 32)) Bool)

(assert (=> b!1010094 (= res!678591 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1010095 () Bool)

(declare-fun res!678588 () Bool)

(assert (=> b!1010095 (=> (not res!678588) (not e!568317))))

(assert (=> b!1010095 (= res!678588 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1010096 () Bool)

(declare-fun res!678585 () Bool)

(assert (=> b!1010096 (=> (not res!678585) (not e!568321))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1010096 (= res!678585 (validKeyInArray!0 k!2224))))

(declare-fun res!678579 () Bool)

(assert (=> start!87154 (=> (not res!678579) (not e!568321))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!87154 (= res!678579 (validMask!0 mask!3464))))

(assert (=> start!87154 e!568321))

(declare-fun array_inv!23612 (array!63616) Bool)

(assert (=> start!87154 (array_inv!23612 a!3219)))

(assert (=> start!87154 true))

(declare-fun b!1010089 () Bool)

(declare-fun res!678589 () Bool)

(assert (=> b!1010089 (=> (not res!678589) (not e!568321))))

(assert (=> b!1010089 (= res!678589 (and (= (size!31125 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31125 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31125 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1010097 () Bool)

(declare-fun res!678582 () Bool)

(assert (=> b!1010097 (=> (not res!678582) (not e!568321))))

(assert (=> b!1010097 (= res!678582 (validKeyInArray!0 (select (arr!30622 a!3219) j!170)))))

(declare-fun b!1010098 () Bool)

(assert (=> b!1010098 (= e!568317 false)))

(declare-fun lt!446433 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1010098 (= lt!446433 (nextIndex!0 index!1507 x!1245 mask!3464))))

(assert (= (and start!87154 res!678579) b!1010089))

(assert (= (and b!1010089 res!678589) b!1010097))

(assert (= (and b!1010097 res!678582) b!1010096))

(assert (= (and b!1010096 res!678585) b!1010087))

(assert (= (and b!1010087 res!678592) b!1010092))

(assert (= (and b!1010092 res!678590) b!1010094))

(assert (= (and b!1010094 res!678591) b!1010085))

(assert (= (and b!1010085 res!678584) b!1010091))

(assert (= (and b!1010091 res!678587) b!1010086))

(assert (= (and b!1010086 res!678583) b!1010093))

(assert (= (and b!1010093 res!678581) b!1010088))

(assert (= (and b!1010088 res!678580) b!1010090))

(assert (= (and b!1010090 res!678586) b!1010095))

(assert (= (and b!1010095 res!678588) b!1010098))

(declare-fun m!934575 () Bool)

(assert (=> b!1010088 m!934575))

(assert (=> b!1010088 m!934575))

(declare-fun m!934577 () Bool)

(assert (=> b!1010088 m!934577))

(declare-fun m!934579 () Bool)

(assert (=> b!1010088 m!934579))

(declare-fun m!934581 () Bool)

(assert (=> b!1010088 m!934581))

(declare-fun m!934583 () Bool)

(assert (=> b!1010085 m!934583))

(declare-fun m!934585 () Bool)

(assert (=> b!1010093 m!934585))

(assert (=> b!1010093 m!934585))

(declare-fun m!934587 () Bool)

(assert (=> b!1010093 m!934587))

(declare-fun m!934589 () Bool)

(assert (=> b!1010087 m!934589))

(assert (=> b!1010086 m!934585))

(assert (=> b!1010086 m!934585))

(declare-fun m!934591 () Bool)

(assert (=> b!1010086 m!934591))

(assert (=> b!1010086 m!934591))

(assert (=> b!1010086 m!934585))

(declare-fun m!934593 () Bool)

(assert (=> b!1010086 m!934593))

(declare-fun m!934595 () Bool)

(assert (=> b!1010094 m!934595))

(declare-fun m!934597 () Bool)

(assert (=> b!1010090 m!934597))

(declare-fun m!934599 () Bool)

(assert (=> b!1010098 m!934599))

(declare-fun m!934601 () Bool)

(assert (=> b!1010092 m!934601))

(declare-fun m!934603 () Bool)

(assert (=> start!87154 m!934603))

(declare-fun m!934605 () Bool)

(assert (=> start!87154 m!934605))

(declare-fun m!934607 () Bool)

(assert (=> b!1010096 m!934607))

(assert (=> b!1010097 m!934585))

(assert (=> b!1010097 m!934585))

(declare-fun m!934609 () Bool)

(assert (=> b!1010097 m!934609))

(push 1)

