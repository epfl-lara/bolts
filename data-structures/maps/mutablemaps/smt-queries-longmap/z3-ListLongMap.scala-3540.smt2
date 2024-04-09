; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48828 () Bool)

(assert start!48828)

(declare-fun b!537119 () Bool)

(declare-fun e!311646 () Bool)

(declare-fun e!311644 () Bool)

(assert (=> b!537119 (= e!311646 e!311644)))

(declare-fun res!332483 () Bool)

(assert (=> b!537119 (=> (not res!332483) (not e!311644))))

(declare-datatypes ((SeekEntryResult!4798 0))(
  ( (MissingZero!4798 (index!21416 (_ BitVec 32))) (Found!4798 (index!21417 (_ BitVec 32))) (Intermediate!4798 (undefined!5610 Bool) (index!21418 (_ BitVec 32)) (x!50376 (_ BitVec 32))) (Undefined!4798) (MissingVacant!4798 (index!21419 (_ BitVec 32))) )
))
(declare-fun lt!246326 () SeekEntryResult!4798)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!537119 (= res!332483 (or (= lt!246326 (MissingZero!4798 i!1153)) (= lt!246326 (MissingVacant!4798 i!1153))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-datatypes ((array!33996 0))(
  ( (array!33997 (arr!16333 (Array (_ BitVec 32) (_ BitVec 64))) (size!16697 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33996)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33996 (_ BitVec 32)) SeekEntryResult!4798)

(assert (=> b!537119 (= lt!246326 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!537120 () Bool)

(declare-fun res!332476 () Bool)

(assert (=> b!537120 (=> (not res!332476) (not e!311644))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!537120 (= res!332476 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16697 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16697 a!3154)) (= (select (arr!16333 a!3154) resIndex!32) (select (arr!16333 a!3154) j!147))))))

(declare-fun b!537121 () Bool)

(declare-fun res!332482 () Bool)

(assert (=> b!537121 (=> (not res!332482) (not e!311646))))

(assert (=> b!537121 (= res!332482 (and (= (size!16697 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16697 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16697 a!3154)) (not (= i!1153 j!147))))))

(declare-fun res!332474 () Bool)

(assert (=> start!48828 (=> (not res!332474) (not e!311646))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48828 (= res!332474 (validMask!0 mask!3216))))

(assert (=> start!48828 e!311646))

(assert (=> start!48828 true))

(declare-fun array_inv!12107 (array!33996) Bool)

(assert (=> start!48828 (array_inv!12107 a!3154)))

(declare-fun b!537122 () Bool)

(declare-fun e!311643 () Bool)

(declare-fun e!311645 () Bool)

(assert (=> b!537122 (= e!311643 e!311645)))

(declare-fun res!332485 () Bool)

(assert (=> b!537122 (=> (not res!332485) (not e!311645))))

(declare-fun lt!246328 () (_ BitVec 32))

(assert (=> b!537122 (= res!332485 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246328 #b00000000000000000000000000000000) (bvslt lt!246328 (size!16697 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!537122 (= lt!246328 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!537123 () Bool)

(assert (=> b!537123 (= e!311644 e!311643)))

(declare-fun res!332484 () Bool)

(assert (=> b!537123 (=> (not res!332484) (not e!311643))))

(declare-fun lt!246329 () SeekEntryResult!4798)

(assert (=> b!537123 (= res!332484 (= lt!246329 (Intermediate!4798 false resIndex!32 resX!32)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33996 (_ BitVec 32)) SeekEntryResult!4798)

(assert (=> b!537123 (= lt!246329 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16333 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!537124 () Bool)

(declare-fun res!332480 () Bool)

(assert (=> b!537124 (=> (not res!332480) (not e!311646))))

(declare-fun arrayContainsKey!0 (array!33996 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!537124 (= res!332480 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!537125 () Bool)

(declare-fun res!332477 () Bool)

(assert (=> b!537125 (=> (not res!332477) (not e!311644))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33996 (_ BitVec 32)) Bool)

(assert (=> b!537125 (= res!332477 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!537126 () Bool)

(declare-fun res!332478 () Bool)

(assert (=> b!537126 (=> (not res!332478) (not e!311643))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!537126 (= res!332478 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16333 a!3154) j!147) mask!3216) (select (arr!16333 a!3154) j!147) a!3154 mask!3216) lt!246329))))

(declare-fun b!537127 () Bool)

(declare-fun res!332481 () Bool)

(assert (=> b!537127 (=> (not res!332481) (not e!311646))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!537127 (= res!332481 (validKeyInArray!0 (select (arr!16333 a!3154) j!147)))))

(declare-fun b!537128 () Bool)

(declare-fun res!332479 () Bool)

(assert (=> b!537128 (=> (not res!332479) (not e!311643))))

(assert (=> b!537128 (= res!332479 (and (not (= (select (arr!16333 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16333 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16333 a!3154) index!1177) (select (arr!16333 a!3154) j!147)))))))

(declare-fun b!537129 () Bool)

(assert (=> b!537129 (= e!311645 false)))

(declare-fun lt!246327 () SeekEntryResult!4798)

(assert (=> b!537129 (= lt!246327 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246328 (select (arr!16333 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!537130 () Bool)

(declare-fun res!332486 () Bool)

(assert (=> b!537130 (=> (not res!332486) (not e!311646))))

(assert (=> b!537130 (= res!332486 (validKeyInArray!0 k0!1998))))

(declare-fun b!537131 () Bool)

(declare-fun res!332475 () Bool)

(assert (=> b!537131 (=> (not res!332475) (not e!311644))))

(declare-datatypes ((List!10505 0))(
  ( (Nil!10502) (Cons!10501 (h!11444 (_ BitVec 64)) (t!16741 List!10505)) )
))
(declare-fun arrayNoDuplicates!0 (array!33996 (_ BitVec 32) List!10505) Bool)

(assert (=> b!537131 (= res!332475 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10502))))

(assert (= (and start!48828 res!332474) b!537121))

(assert (= (and b!537121 res!332482) b!537127))

(assert (= (and b!537127 res!332481) b!537130))

(assert (= (and b!537130 res!332486) b!537124))

(assert (= (and b!537124 res!332480) b!537119))

(assert (= (and b!537119 res!332483) b!537125))

(assert (= (and b!537125 res!332477) b!537131))

(assert (= (and b!537131 res!332475) b!537120))

(assert (= (and b!537120 res!332476) b!537123))

(assert (= (and b!537123 res!332484) b!537126))

(assert (= (and b!537126 res!332478) b!537128))

(assert (= (and b!537128 res!332479) b!537122))

(assert (= (and b!537122 res!332485) b!537129))

(declare-fun m!516411 () Bool)

(assert (=> b!537124 m!516411))

(declare-fun m!516413 () Bool)

(assert (=> b!537123 m!516413))

(assert (=> b!537123 m!516413))

(declare-fun m!516415 () Bool)

(assert (=> b!537123 m!516415))

(declare-fun m!516417 () Bool)

(assert (=> b!537125 m!516417))

(declare-fun m!516419 () Bool)

(assert (=> b!537131 m!516419))

(declare-fun m!516421 () Bool)

(assert (=> b!537122 m!516421))

(declare-fun m!516423 () Bool)

(assert (=> start!48828 m!516423))

(declare-fun m!516425 () Bool)

(assert (=> start!48828 m!516425))

(declare-fun m!516427 () Bool)

(assert (=> b!537128 m!516427))

(assert (=> b!537128 m!516413))

(declare-fun m!516429 () Bool)

(assert (=> b!537120 m!516429))

(assert (=> b!537120 m!516413))

(declare-fun m!516431 () Bool)

(assert (=> b!537119 m!516431))

(assert (=> b!537127 m!516413))

(assert (=> b!537127 m!516413))

(declare-fun m!516433 () Bool)

(assert (=> b!537127 m!516433))

(declare-fun m!516435 () Bool)

(assert (=> b!537130 m!516435))

(assert (=> b!537129 m!516413))

(assert (=> b!537129 m!516413))

(declare-fun m!516437 () Bool)

(assert (=> b!537129 m!516437))

(assert (=> b!537126 m!516413))

(assert (=> b!537126 m!516413))

(declare-fun m!516439 () Bool)

(assert (=> b!537126 m!516439))

(assert (=> b!537126 m!516439))

(assert (=> b!537126 m!516413))

(declare-fun m!516441 () Bool)

(assert (=> b!537126 m!516441))

(check-sat (not b!537129) (not b!537125) (not b!537124) (not b!537130) (not b!537119) (not b!537131) (not b!537123) (not b!537127) (not b!537122) (not start!48828) (not b!537126))
(check-sat)
