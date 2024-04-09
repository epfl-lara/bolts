; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47718 () Bool)

(assert start!47718)

(declare-fun b!524469 () Bool)

(declare-fun e!305868 () Bool)

(declare-fun e!305865 () Bool)

(assert (=> b!524469 (= e!305868 e!305865)))

(declare-fun res!321494 () Bool)

(assert (=> b!524469 (=> res!321494 e!305865)))

(declare-datatypes ((array!33315 0))(
  ( (array!33316 (arr!16006 (Array (_ BitVec 32) (_ BitVec 64))) (size!16370 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33315)

(declare-fun lt!240805 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4480 0))(
  ( (MissingZero!4480 (index!20132 (_ BitVec 32))) (Found!4480 (index!20133 (_ BitVec 32))) (Intermediate!4480 (undefined!5292 Bool) (index!20134 (_ BitVec 32)) (x!49144 (_ BitVec 32))) (Undefined!4480) (MissingVacant!4480 (index!20135 (_ BitVec 32))) )
))
(declare-fun lt!240806 () SeekEntryResult!4480)

(assert (=> b!524469 (= res!321494 (or (bvsgt #b00000000000000000000000000000000 (x!49144 lt!240806)) (bvsgt (x!49144 lt!240806) #b01111111111111111111111111111110) (bvslt lt!240805 #b00000000000000000000000000000000) (bvsge lt!240805 (size!16370 a!3235)) (bvslt (index!20134 lt!240806) #b00000000000000000000000000000000) (bvsge (index!20134 lt!240806) (size!16370 a!3235)) (not (= lt!240806 (Intermediate!4480 false (index!20134 lt!240806) (x!49144 lt!240806))))))))

(declare-fun lt!240804 () Bool)

(declare-fun lt!240803 () (_ BitVec 64))

(assert (=> b!524469 (and (or lt!240804 (= lt!240803 #b1000000000000000000000000000000000000000000000000000000000000000)) (not lt!240804) (= lt!240803 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!524469 (= lt!240804 (= lt!240803 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!16386 0))(
  ( (Unit!16387) )
))
(declare-fun lt!240811 () Unit!16386)

(declare-fun e!305863 () Unit!16386)

(assert (=> b!524469 (= lt!240811 e!305863)))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun c!61793 () Bool)

(assert (=> b!524469 (= c!61793 (= lt!240803 (select (arr!16006 a!3235) j!176)))))

(assert (=> b!524469 (= lt!240803 (select (arr!16006 a!3235) (index!20134 lt!240806)))))

(assert (=> b!524469 (and (bvslt (x!49144 lt!240806) #b01111111111111111111111111111110) (let ((bdg!15568 (select (arr!16006 a!3235) (index!20134 lt!240806)))) (or (= bdg!15568 (select (arr!16006 a!3235) j!176)) (= bdg!15568 #b0000000000000000000000000000000000000000000000000000000000000000) (= bdg!15568 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!524470 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun e!305866 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33315 (_ BitVec 32)) SeekEntryResult!4480)

(assert (=> b!524470 (= e!305866 (= (seekEntryOrOpen!0 (select (arr!16006 a!3235) j!176) a!3235 mask!3524) (Found!4480 j!176)))))

(declare-fun b!524471 () Bool)

(declare-fun e!305862 () Bool)

(assert (=> b!524471 (= e!305862 false)))

(declare-fun b!524472 () Bool)

(declare-fun res!321502 () Bool)

(declare-fun e!305867 () Bool)

(assert (=> b!524472 (=> (not res!321502) (not e!305867))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!524472 (= res!321502 (validKeyInArray!0 k0!2280))))

(declare-fun b!524473 () Bool)

(declare-fun e!305864 () Bool)

(assert (=> b!524473 (= e!305864 (not e!305868))))

(declare-fun res!321500 () Bool)

(assert (=> b!524473 (=> res!321500 e!305868)))

(declare-fun lt!240802 () (_ BitVec 32))

(declare-fun lt!240807 () array!33315)

(declare-fun lt!240810 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33315 (_ BitVec 32)) SeekEntryResult!4480)

(assert (=> b!524473 (= res!321500 (= lt!240806 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240802 lt!240810 lt!240807 mask!3524)))))

(assert (=> b!524473 (= lt!240806 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240805 (select (arr!16006 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!524473 (= lt!240802 (toIndex!0 lt!240810 mask!3524))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!524473 (= lt!240810 (select (store (arr!16006 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!524473 (= lt!240805 (toIndex!0 (select (arr!16006 a!3235) j!176) mask!3524))))

(assert (=> b!524473 (= lt!240807 (array!33316 (store (arr!16006 a!3235) i!1204 k0!2280) (size!16370 a!3235)))))

(assert (=> b!524473 e!305866))

(declare-fun res!321496 () Bool)

(assert (=> b!524473 (=> (not res!321496) (not e!305866))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33315 (_ BitVec 32)) Bool)

(assert (=> b!524473 (= res!321496 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!240812 () Unit!16386)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33315 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16386)

(assert (=> b!524473 (= lt!240812 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!524474 () Bool)

(declare-fun res!321504 () Bool)

(assert (=> b!524474 (=> (not res!321504) (not e!305867))))

(declare-fun arrayContainsKey!0 (array!33315 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!524474 (= res!321504 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!524475 () Bool)

(declare-fun Unit!16388 () Unit!16386)

(assert (=> b!524475 (= e!305863 Unit!16388)))

(declare-fun lt!240809 () Unit!16386)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33315 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16386)

(assert (=> b!524475 (= lt!240809 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!240805 #b00000000000000000000000000000000 (index!20134 lt!240806) (x!49144 lt!240806) mask!3524))))

(declare-fun res!321495 () Bool)

(assert (=> b!524475 (= res!321495 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240805 lt!240810 lt!240807 mask!3524) (Intermediate!4480 false (index!20134 lt!240806) (x!49144 lt!240806))))))

(assert (=> b!524475 (=> (not res!321495) (not e!305862))))

(assert (=> b!524475 e!305862))

(declare-fun b!524476 () Bool)

(declare-fun res!321498 () Bool)

(assert (=> b!524476 (=> (not res!321498) (not e!305867))))

(assert (=> b!524476 (= res!321498 (and (= (size!16370 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16370 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16370 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!524477 () Bool)

(declare-fun res!321503 () Bool)

(assert (=> b!524477 (=> (not res!321503) (not e!305867))))

(assert (=> b!524477 (= res!321503 (validKeyInArray!0 (select (arr!16006 a!3235) j!176)))))

(declare-fun b!524478 () Bool)

(declare-fun Unit!16389 () Unit!16386)

(assert (=> b!524478 (= e!305863 Unit!16389)))

(declare-fun res!321505 () Bool)

(assert (=> start!47718 (=> (not res!321505) (not e!305867))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47718 (= res!321505 (validMask!0 mask!3524))))

(assert (=> start!47718 e!305867))

(assert (=> start!47718 true))

(declare-fun array_inv!11780 (array!33315) Bool)

(assert (=> start!47718 (array_inv!11780 a!3235)))

(declare-fun b!524479 () Bool)

(assert (=> b!524479 (= e!305867 e!305864)))

(declare-fun res!321497 () Bool)

(assert (=> b!524479 (=> (not res!321497) (not e!305864))))

(declare-fun lt!240808 () SeekEntryResult!4480)

(assert (=> b!524479 (= res!321497 (or (= lt!240808 (MissingZero!4480 i!1204)) (= lt!240808 (MissingVacant!4480 i!1204))))))

(assert (=> b!524479 (= lt!240808 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!524480 () Bool)

(declare-fun res!321499 () Bool)

(assert (=> b!524480 (=> (not res!321499) (not e!305864))))

(declare-datatypes ((List!10217 0))(
  ( (Nil!10214) (Cons!10213 (h!11144 (_ BitVec 64)) (t!16453 List!10217)) )
))
(declare-fun arrayNoDuplicates!0 (array!33315 (_ BitVec 32) List!10217) Bool)

(assert (=> b!524480 (= res!321499 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10214))))

(declare-fun b!524481 () Bool)

(declare-fun res!321506 () Bool)

(assert (=> b!524481 (=> res!321506 e!305868)))

(get-info :version)

(assert (=> b!524481 (= res!321506 (or (undefined!5292 lt!240806) (not ((_ is Intermediate!4480) lt!240806))))))

(declare-fun b!524482 () Bool)

(declare-fun res!321501 () Bool)

(assert (=> b!524482 (=> (not res!321501) (not e!305864))))

(assert (=> b!524482 (= res!321501 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!524483 () Bool)

(assert (=> b!524483 (= e!305865 (not (= lt!240806 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240805 lt!240810 lt!240807 mask!3524))))))

(assert (= (and start!47718 res!321505) b!524476))

(assert (= (and b!524476 res!321498) b!524477))

(assert (= (and b!524477 res!321503) b!524472))

(assert (= (and b!524472 res!321502) b!524474))

(assert (= (and b!524474 res!321504) b!524479))

(assert (= (and b!524479 res!321497) b!524482))

(assert (= (and b!524482 res!321501) b!524480))

(assert (= (and b!524480 res!321499) b!524473))

(assert (= (and b!524473 res!321496) b!524470))

(assert (= (and b!524473 (not res!321500)) b!524481))

(assert (= (and b!524481 (not res!321506)) b!524469))

(assert (= (and b!524469 c!61793) b!524475))

(assert (= (and b!524469 (not c!61793)) b!524478))

(assert (= (and b!524475 res!321495) b!524471))

(assert (= (and b!524469 (not res!321494)) b!524483))

(declare-fun m!505135 () Bool)

(assert (=> b!524473 m!505135))

(declare-fun m!505137 () Bool)

(assert (=> b!524473 m!505137))

(declare-fun m!505139 () Bool)

(assert (=> b!524473 m!505139))

(declare-fun m!505141 () Bool)

(assert (=> b!524473 m!505141))

(assert (=> b!524473 m!505139))

(declare-fun m!505143 () Bool)

(assert (=> b!524473 m!505143))

(declare-fun m!505145 () Bool)

(assert (=> b!524473 m!505145))

(assert (=> b!524473 m!505139))

(declare-fun m!505147 () Bool)

(assert (=> b!524473 m!505147))

(declare-fun m!505149 () Bool)

(assert (=> b!524473 m!505149))

(declare-fun m!505151 () Bool)

(assert (=> b!524473 m!505151))

(declare-fun m!505153 () Bool)

(assert (=> b!524479 m!505153))

(declare-fun m!505155 () Bool)

(assert (=> b!524472 m!505155))

(declare-fun m!505157 () Bool)

(assert (=> b!524474 m!505157))

(assert (=> b!524470 m!505139))

(assert (=> b!524470 m!505139))

(declare-fun m!505159 () Bool)

(assert (=> b!524470 m!505159))

(declare-fun m!505161 () Bool)

(assert (=> b!524475 m!505161))

(declare-fun m!505163 () Bool)

(assert (=> b!524475 m!505163))

(declare-fun m!505165 () Bool)

(assert (=> b!524482 m!505165))

(assert (=> b!524477 m!505139))

(assert (=> b!524477 m!505139))

(declare-fun m!505167 () Bool)

(assert (=> b!524477 m!505167))

(declare-fun m!505169 () Bool)

(assert (=> b!524480 m!505169))

(assert (=> b!524469 m!505139))

(declare-fun m!505171 () Bool)

(assert (=> b!524469 m!505171))

(assert (=> b!524483 m!505163))

(declare-fun m!505173 () Bool)

(assert (=> start!47718 m!505173))

(declare-fun m!505175 () Bool)

(assert (=> start!47718 m!505175))

(check-sat (not start!47718) (not b!524482) (not b!524483) (not b!524477) (not b!524473) (not b!524470) (not b!524480) (not b!524474) (not b!524472) (not b!524475) (not b!524479))
(check-sat)
