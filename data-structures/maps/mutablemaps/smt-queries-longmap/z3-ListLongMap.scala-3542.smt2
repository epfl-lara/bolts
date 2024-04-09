; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48840 () Bool)

(assert start!48840)

(declare-fun b!537353 () Bool)

(declare-fun res!332708 () Bool)

(declare-fun e!311736 () Bool)

(assert (=> b!537353 (=> (not res!332708) (not e!311736))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34008 0))(
  ( (array!34009 (arr!16339 (Array (_ BitVec 32) (_ BitVec 64))) (size!16703 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34008)

(assert (=> b!537353 (= res!332708 (and (not (= (select (arr!16339 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16339 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16339 a!3154) index!1177) (select (arr!16339 a!3154) j!147)))))))

(declare-fun b!537354 () Bool)

(declare-fun res!332716 () Bool)

(assert (=> b!537354 (=> (not res!332716) (not e!311736))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4804 0))(
  ( (MissingZero!4804 (index!21440 (_ BitVec 32))) (Found!4804 (index!21441 (_ BitVec 32))) (Intermediate!4804 (undefined!5616 Bool) (index!21442 (_ BitVec 32)) (x!50398 (_ BitVec 32))) (Undefined!4804) (MissingVacant!4804 (index!21443 (_ BitVec 32))) )
))
(declare-fun lt!246398 () SeekEntryResult!4804)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34008 (_ BitVec 32)) SeekEntryResult!4804)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!537354 (= res!332716 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16339 a!3154) j!147) mask!3216) (select (arr!16339 a!3154) j!147) a!3154 mask!3216) lt!246398))))

(declare-fun b!537355 () Bool)

(declare-fun e!311735 () Bool)

(assert (=> b!537355 (= e!311735 e!311736)))

(declare-fun res!332714 () Bool)

(assert (=> b!537355 (=> (not res!332714) (not e!311736))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!537355 (= res!332714 (= lt!246398 (Intermediate!4804 false resIndex!32 resX!32)))))

(declare-fun x!1030 () (_ BitVec 32))

(assert (=> b!537355 (= lt!246398 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16339 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!537356 () Bool)

(declare-fun e!311737 () Bool)

(assert (=> b!537356 (= e!311737 e!311735)))

(declare-fun res!332719 () Bool)

(assert (=> b!537356 (=> (not res!332719) (not e!311735))))

(declare-fun lt!246401 () SeekEntryResult!4804)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!537356 (= res!332719 (or (= lt!246401 (MissingZero!4804 i!1153)) (= lt!246401 (MissingVacant!4804 i!1153))))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34008 (_ BitVec 32)) SeekEntryResult!4804)

(assert (=> b!537356 (= lt!246401 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!537357 () Bool)

(declare-fun res!332715 () Bool)

(assert (=> b!537357 (=> (not res!332715) (not e!311737))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!537357 (= res!332715 (validKeyInArray!0 k0!1998))))

(declare-fun b!537358 () Bool)

(declare-fun res!332709 () Bool)

(assert (=> b!537358 (=> (not res!332709) (not e!311735))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34008 (_ BitVec 32)) Bool)

(assert (=> b!537358 (= res!332709 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!537359 () Bool)

(declare-fun res!332712 () Bool)

(assert (=> b!537359 (=> (not res!332712) (not e!311735))))

(declare-datatypes ((List!10511 0))(
  ( (Nil!10508) (Cons!10507 (h!11450 (_ BitVec 64)) (t!16747 List!10511)) )
))
(declare-fun arrayNoDuplicates!0 (array!34008 (_ BitVec 32) List!10511) Bool)

(assert (=> b!537359 (= res!332712 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10508))))

(declare-fun res!332711 () Bool)

(assert (=> start!48840 (=> (not res!332711) (not e!311737))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48840 (= res!332711 (validMask!0 mask!3216))))

(assert (=> start!48840 e!311737))

(assert (=> start!48840 true))

(declare-fun array_inv!12113 (array!34008) Bool)

(assert (=> start!48840 (array_inv!12113 a!3154)))

(declare-fun b!537360 () Bool)

(declare-fun res!332718 () Bool)

(assert (=> b!537360 (=> (not res!332718) (not e!311737))))

(assert (=> b!537360 (= res!332718 (and (= (size!16703 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16703 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16703 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!537361 () Bool)

(declare-fun res!332720 () Bool)

(assert (=> b!537361 (=> (not res!332720) (not e!311737))))

(declare-fun arrayContainsKey!0 (array!34008 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!537361 (= res!332720 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!537362 () Bool)

(declare-fun e!311733 () Bool)

(assert (=> b!537362 (= e!311736 e!311733)))

(declare-fun res!332713 () Bool)

(assert (=> b!537362 (=> (not res!332713) (not e!311733))))

(declare-fun lt!246400 () (_ BitVec 32))

(assert (=> b!537362 (= res!332713 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246400 #b00000000000000000000000000000000) (bvslt lt!246400 (size!16703 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!537362 (= lt!246400 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!537363 () Bool)

(declare-fun res!332717 () Bool)

(assert (=> b!537363 (=> (not res!332717) (not e!311735))))

(assert (=> b!537363 (= res!332717 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16703 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16703 a!3154)) (= (select (arr!16339 a!3154) resIndex!32) (select (arr!16339 a!3154) j!147))))))

(declare-fun b!537364 () Bool)

(assert (=> b!537364 (= e!311733 false)))

(declare-fun lt!246399 () SeekEntryResult!4804)

(assert (=> b!537364 (= lt!246399 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246400 (select (arr!16339 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!537365 () Bool)

(declare-fun res!332710 () Bool)

(assert (=> b!537365 (=> (not res!332710) (not e!311737))))

(assert (=> b!537365 (= res!332710 (validKeyInArray!0 (select (arr!16339 a!3154) j!147)))))

(assert (= (and start!48840 res!332711) b!537360))

(assert (= (and b!537360 res!332718) b!537365))

(assert (= (and b!537365 res!332710) b!537357))

(assert (= (and b!537357 res!332715) b!537361))

(assert (= (and b!537361 res!332720) b!537356))

(assert (= (and b!537356 res!332719) b!537358))

(assert (= (and b!537358 res!332709) b!537359))

(assert (= (and b!537359 res!332712) b!537363))

(assert (= (and b!537363 res!332717) b!537355))

(assert (= (and b!537355 res!332714) b!537354))

(assert (= (and b!537354 res!332716) b!537353))

(assert (= (and b!537353 res!332708) b!537362))

(assert (= (and b!537362 res!332713) b!537364))

(declare-fun m!516603 () Bool)

(assert (=> b!537361 m!516603))

(declare-fun m!516605 () Bool)

(assert (=> b!537353 m!516605))

(declare-fun m!516607 () Bool)

(assert (=> b!537353 m!516607))

(declare-fun m!516609 () Bool)

(assert (=> b!537359 m!516609))

(assert (=> b!537354 m!516607))

(assert (=> b!537354 m!516607))

(declare-fun m!516611 () Bool)

(assert (=> b!537354 m!516611))

(assert (=> b!537354 m!516611))

(assert (=> b!537354 m!516607))

(declare-fun m!516613 () Bool)

(assert (=> b!537354 m!516613))

(declare-fun m!516615 () Bool)

(assert (=> b!537358 m!516615))

(declare-fun m!516617 () Bool)

(assert (=> b!537356 m!516617))

(declare-fun m!516619 () Bool)

(assert (=> b!537363 m!516619))

(assert (=> b!537363 m!516607))

(declare-fun m!516621 () Bool)

(assert (=> b!537357 m!516621))

(assert (=> b!537355 m!516607))

(assert (=> b!537355 m!516607))

(declare-fun m!516623 () Bool)

(assert (=> b!537355 m!516623))

(assert (=> b!537365 m!516607))

(assert (=> b!537365 m!516607))

(declare-fun m!516625 () Bool)

(assert (=> b!537365 m!516625))

(declare-fun m!516627 () Bool)

(assert (=> start!48840 m!516627))

(declare-fun m!516629 () Bool)

(assert (=> start!48840 m!516629))

(assert (=> b!537364 m!516607))

(assert (=> b!537364 m!516607))

(declare-fun m!516631 () Bool)

(assert (=> b!537364 m!516631))

(declare-fun m!516633 () Bool)

(assert (=> b!537362 m!516633))

(check-sat (not b!537359) (not start!48840) (not b!537355) (not b!537354) (not b!537357) (not b!537358) (not b!537356) (not b!537365) (not b!537364) (not b!537361) (not b!537362))
(check-sat)
