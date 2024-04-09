; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49620 () Bool)

(assert start!49620)

(declare-fun b!545537 () Bool)

(declare-fun e!315324 () Bool)

(declare-fun e!315326 () Bool)

(assert (=> b!545537 (= e!315324 e!315326)))

(declare-fun res!339625 () Bool)

(assert (=> b!545537 (=> (not res!339625) (not e!315326))))

(declare-datatypes ((SeekEntryResult!4984 0))(
  ( (MissingZero!4984 (index!22160 (_ BitVec 32))) (Found!4984 (index!22161 (_ BitVec 32))) (Intermediate!4984 (undefined!5796 Bool) (index!22162 (_ BitVec 32)) (x!51115 (_ BitVec 32))) (Undefined!4984) (MissingVacant!4984 (index!22163 (_ BitVec 32))) )
))
(declare-fun lt!248934 () SeekEntryResult!4984)

(declare-fun lt!248933 () SeekEntryResult!4984)

(declare-fun lt!248937 () SeekEntryResult!4984)

(assert (=> b!545537 (= res!339625 (and (= lt!248937 lt!248934) (= lt!248933 lt!248937)))))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34389 0))(
  ( (array!34390 (arr!16519 (Array (_ BitVec 32) (_ BitVec 64))) (size!16883 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34389)

(declare-fun lt!248938 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34389 (_ BitVec 32)) SeekEntryResult!4984)

(assert (=> b!545537 (= lt!248937 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!248938 (select (arr!16519 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!545538 () Bool)

(declare-fun res!339622 () Bool)

(declare-fun e!315323 () Bool)

(assert (=> b!545538 (=> (not res!339622) (not e!315323))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34389 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!545538 (= res!339622 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!545539 () Bool)

(assert (=> b!545539 (= e!315326 (not true))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!545539 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!248938 (select (store (arr!16519 a!3154) i!1153 k0!1998) j!147) (array!34390 (store (arr!16519 a!3154) i!1153 k0!1998) (size!16883 a!3154)) mask!3216) lt!248934)))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-datatypes ((Unit!16900 0))(
  ( (Unit!16901) )
))
(declare-fun lt!248935 () Unit!16900)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!34389 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16900)

(assert (=> b!545539 (= lt!248935 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3154 i!1153 k0!1998 j!147 lt!248938 (bvadd #b00000000000000000000000000000001 x!1030) resIndex!32 resX!32 mask!3216))))

(declare-fun b!545540 () Bool)

(declare-fun e!315328 () Bool)

(declare-fun e!315327 () Bool)

(assert (=> b!545540 (= e!315328 e!315327)))

(declare-fun res!339624 () Bool)

(assert (=> b!545540 (=> (not res!339624) (not e!315327))))

(declare-fun lt!248939 () SeekEntryResult!4984)

(assert (=> b!545540 (= res!339624 (= lt!248939 lt!248934))))

(assert (=> b!545540 (= lt!248934 (Intermediate!4984 false resIndex!32 resX!32))))

(declare-fun index!1177 () (_ BitVec 32))

(assert (=> b!545540 (= lt!248939 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16519 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!545541 () Bool)

(declare-fun res!339618 () Bool)

(assert (=> b!545541 (=> (not res!339618) (not e!315323))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!545541 (= res!339618 (validKeyInArray!0 (select (arr!16519 a!3154) j!147)))))

(declare-fun b!545542 () Bool)

(declare-fun e!315322 () Bool)

(assert (=> b!545542 (= e!315322 e!315324)))

(declare-fun res!339619 () Bool)

(assert (=> b!545542 (=> (not res!339619) (not e!315324))))

(assert (=> b!545542 (= res!339619 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!248938 #b00000000000000000000000000000000) (bvslt lt!248938 (size!16883 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!545542 (= lt!248938 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun res!339617 () Bool)

(assert (=> start!49620 (=> (not res!339617) (not e!315323))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49620 (= res!339617 (validMask!0 mask!3216))))

(assert (=> start!49620 e!315323))

(assert (=> start!49620 true))

(declare-fun array_inv!12293 (array!34389) Bool)

(assert (=> start!49620 (array_inv!12293 a!3154)))

(declare-fun b!545543 () Bool)

(declare-fun res!339621 () Bool)

(assert (=> b!545543 (=> (not res!339621) (not e!315323))))

(assert (=> b!545543 (= res!339621 (and (= (size!16883 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16883 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16883 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!545544 () Bool)

(declare-fun res!339623 () Bool)

(assert (=> b!545544 (=> (not res!339623) (not e!315328))))

(declare-datatypes ((List!10691 0))(
  ( (Nil!10688) (Cons!10687 (h!11651 (_ BitVec 64)) (t!16927 List!10691)) )
))
(declare-fun arrayNoDuplicates!0 (array!34389 (_ BitVec 32) List!10691) Bool)

(assert (=> b!545544 (= res!339623 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10688))))

(declare-fun b!545545 () Bool)

(declare-fun res!339620 () Bool)

(assert (=> b!545545 (=> (not res!339620) (not e!315328))))

(assert (=> b!545545 (= res!339620 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16883 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16883 a!3154)) (= (select (arr!16519 a!3154) resIndex!32) (select (arr!16519 a!3154) j!147))))))

(declare-fun b!545546 () Bool)

(declare-fun res!339616 () Bool)

(assert (=> b!545546 (=> (not res!339616) (not e!315323))))

(assert (=> b!545546 (= res!339616 (validKeyInArray!0 k0!1998))))

(declare-fun b!545547 () Bool)

(assert (=> b!545547 (= e!315327 e!315322)))

(declare-fun res!339626 () Bool)

(assert (=> b!545547 (=> (not res!339626) (not e!315322))))

(assert (=> b!545547 (= res!339626 (and (= lt!248933 lt!248939) (not (= (select (arr!16519 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16519 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16519 a!3154) index!1177) (select (arr!16519 a!3154) j!147)))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!545547 (= lt!248933 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16519 a!3154) j!147) mask!3216) (select (arr!16519 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!545548 () Bool)

(assert (=> b!545548 (= e!315323 e!315328)))

(declare-fun res!339614 () Bool)

(assert (=> b!545548 (=> (not res!339614) (not e!315328))))

(declare-fun lt!248936 () SeekEntryResult!4984)

(assert (=> b!545548 (= res!339614 (or (= lt!248936 (MissingZero!4984 i!1153)) (= lt!248936 (MissingVacant!4984 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34389 (_ BitVec 32)) SeekEntryResult!4984)

(assert (=> b!545548 (= lt!248936 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!545549 () Bool)

(declare-fun res!339615 () Bool)

(assert (=> b!545549 (=> (not res!339615) (not e!315328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34389 (_ BitVec 32)) Bool)

(assert (=> b!545549 (= res!339615 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(assert (= (and start!49620 res!339617) b!545543))

(assert (= (and b!545543 res!339621) b!545541))

(assert (= (and b!545541 res!339618) b!545546))

(assert (= (and b!545546 res!339616) b!545538))

(assert (= (and b!545538 res!339622) b!545548))

(assert (= (and b!545548 res!339614) b!545549))

(assert (= (and b!545549 res!339615) b!545544))

(assert (= (and b!545544 res!339623) b!545545))

(assert (= (and b!545545 res!339620) b!545540))

(assert (= (and b!545540 res!339624) b!545547))

(assert (= (and b!545547 res!339626) b!545542))

(assert (= (and b!545542 res!339619) b!545537))

(assert (= (and b!545537 res!339625) b!545539))

(declare-fun m!523115 () Bool)

(assert (=> b!545549 m!523115))

(declare-fun m!523117 () Bool)

(assert (=> start!49620 m!523117))

(declare-fun m!523119 () Bool)

(assert (=> start!49620 m!523119))

(declare-fun m!523121 () Bool)

(assert (=> b!545541 m!523121))

(assert (=> b!545541 m!523121))

(declare-fun m!523123 () Bool)

(assert (=> b!545541 m!523123))

(declare-fun m!523125 () Bool)

(assert (=> b!545548 m!523125))

(declare-fun m!523127 () Bool)

(assert (=> b!545547 m!523127))

(assert (=> b!545547 m!523121))

(assert (=> b!545547 m!523121))

(declare-fun m!523129 () Bool)

(assert (=> b!545547 m!523129))

(assert (=> b!545547 m!523129))

(assert (=> b!545547 m!523121))

(declare-fun m!523131 () Bool)

(assert (=> b!545547 m!523131))

(declare-fun m!523133 () Bool)

(assert (=> b!545542 m!523133))

(declare-fun m!523135 () Bool)

(assert (=> b!545544 m!523135))

(assert (=> b!545537 m!523121))

(assert (=> b!545537 m!523121))

(declare-fun m!523137 () Bool)

(assert (=> b!545537 m!523137))

(declare-fun m!523139 () Bool)

(assert (=> b!545545 m!523139))

(assert (=> b!545545 m!523121))

(declare-fun m!523141 () Bool)

(assert (=> b!545546 m!523141))

(assert (=> b!545540 m!523121))

(assert (=> b!545540 m!523121))

(declare-fun m!523143 () Bool)

(assert (=> b!545540 m!523143))

(declare-fun m!523145 () Bool)

(assert (=> b!545539 m!523145))

(declare-fun m!523147 () Bool)

(assert (=> b!545539 m!523147))

(assert (=> b!545539 m!523147))

(declare-fun m!523149 () Bool)

(assert (=> b!545539 m!523149))

(declare-fun m!523151 () Bool)

(assert (=> b!545539 m!523151))

(declare-fun m!523153 () Bool)

(assert (=> b!545538 m!523153))

(check-sat (not b!545544) (not b!545538) (not b!545549) (not b!545541) (not b!545546) (not b!545547) (not b!545548) (not b!545537) (not b!545542) (not b!545539) (not start!49620) (not b!545540))
(check-sat)
