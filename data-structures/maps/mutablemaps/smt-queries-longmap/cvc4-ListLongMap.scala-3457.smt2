; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48026 () Bool)

(assert start!48026)

(declare-fun b!528577 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!243560 () (_ BitVec 32))

(declare-datatypes ((array!33479 0))(
  ( (array!33480 (arr!16085 (Array (_ BitVec 32) (_ BitVec 64))) (size!16449 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33479)

(declare-datatypes ((SeekEntryResult!4559 0))(
  ( (MissingZero!4559 (index!20460 (_ BitVec 32))) (Found!4559 (index!20461 (_ BitVec 32))) (Intermediate!4559 (undefined!5371 Bool) (index!20462 (_ BitVec 32)) (x!49458 (_ BitVec 32))) (Undefined!4559) (MissingVacant!4559 (index!20463 (_ BitVec 32))) )
))
(declare-fun lt!243567 () SeekEntryResult!4559)

(declare-fun e!308037 () Bool)

(declare-fun lt!243564 () SeekEntryResult!4559)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33479 (_ BitVec 32)) SeekEntryResult!4559)

(assert (=> b!528577 (= e!308037 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!243560 (index!20462 lt!243567) (select (arr!16085 a!3235) j!176) a!3235 mask!3524) lt!243564)))))

(declare-fun b!528578 () Bool)

(declare-fun e!308040 () Bool)

(assert (=> b!528578 (= e!308040 true)))

(declare-fun lt!243570 () (_ BitVec 64))

(declare-fun lt!243571 () array!33479)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33479 (_ BitVec 32)) SeekEntryResult!4559)

(assert (=> b!528578 (= (seekEntryOrOpen!0 lt!243570 lt!243571 mask!3524) lt!243564)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-datatypes ((Unit!16702 0))(
  ( (Unit!16703) )
))
(declare-fun lt!243568 () Unit!16702)

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!33479 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16702)

(assert (=> b!528578 (= lt!243568 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3235 i!1204 k!2280 j!176 lt!243560 #b00000000000000000000000000000000 (index!20462 lt!243567) (x!49458 lt!243567) mask!3524))))

(declare-fun b!528579 () Bool)

(declare-fun res!324686 () Bool)

(assert (=> b!528579 (=> res!324686 e!308040)))

(declare-fun lt!243565 () SeekEntryResult!4559)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33479 (_ BitVec 32)) SeekEntryResult!4559)

(assert (=> b!528579 (= res!324686 (not (= lt!243565 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243560 lt!243570 lt!243571 mask!3524))))))

(declare-fun b!528580 () Bool)

(declare-fun res!324677 () Bool)

(declare-fun e!308039 () Bool)

(assert (=> b!528580 (=> (not res!324677) (not e!308039))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!528580 (= res!324677 (validKeyInArray!0 k!2280))))

(declare-fun b!528581 () Bool)

(declare-fun e!308034 () Bool)

(assert (=> b!528581 (= e!308034 e!308040)))

(declare-fun res!324679 () Bool)

(assert (=> b!528581 (=> res!324679 e!308040)))

(assert (=> b!528581 (= res!324679 (or (bvsgt (x!49458 lt!243567) #b01111111111111111111111111111110) (bvslt lt!243560 #b00000000000000000000000000000000) (bvsge lt!243560 (size!16449 a!3235)) (bvslt (index!20462 lt!243567) #b00000000000000000000000000000000) (bvsge (index!20462 lt!243567) (size!16449 a!3235)) (not (= lt!243567 (Intermediate!4559 false (index!20462 lt!243567) (x!49458 lt!243567))))))))

(assert (=> b!528581 (= (index!20462 lt!243567) i!1204)))

(declare-fun lt!243566 () Unit!16702)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33479 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16702)

(assert (=> b!528581 (= lt!243566 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!243560 #b00000000000000000000000000000000 (index!20462 lt!243567) (x!49458 lt!243567) mask!3524))))

(assert (=> b!528581 (and (or (= (select (arr!16085 a!3235) (index!20462 lt!243567)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16085 a!3235) (index!20462 lt!243567)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16085 a!3235) (index!20462 lt!243567)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16085 a!3235) (index!20462 lt!243567)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!243563 () Unit!16702)

(declare-fun e!308036 () Unit!16702)

(assert (=> b!528581 (= lt!243563 e!308036)))

(declare-fun c!62261 () Bool)

(assert (=> b!528581 (= c!62261 (= (select (arr!16085 a!3235) (index!20462 lt!243567)) (select (arr!16085 a!3235) j!176)))))

(assert (=> b!528581 (and (bvslt (x!49458 lt!243567) #b01111111111111111111111111111110) (or (= (select (arr!16085 a!3235) (index!20462 lt!243567)) (select (arr!16085 a!3235) j!176)) (= (select (arr!16085 a!3235) (index!20462 lt!243567)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16085 a!3235) (index!20462 lt!243567)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!528582 () Bool)

(declare-fun res!324675 () Bool)

(assert (=> b!528582 (=> (not res!324675) (not e!308039))))

(declare-fun arrayContainsKey!0 (array!33479 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!528582 (= res!324675 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!528583 () Bool)

(declare-fun e!308038 () Bool)

(assert (=> b!528583 (= e!308038 (= (seekEntryOrOpen!0 (select (arr!16085 a!3235) j!176) a!3235 mask!3524) (Found!4559 j!176)))))

(declare-fun b!528584 () Bool)

(declare-fun res!324676 () Bool)

(assert (=> b!528584 (=> (not res!324676) (not e!308039))))

(assert (=> b!528584 (= res!324676 (and (= (size!16449 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16449 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16449 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!528585 () Bool)

(declare-fun res!324678 () Bool)

(declare-fun e!308035 () Bool)

(assert (=> b!528585 (=> (not res!324678) (not e!308035))))

(declare-datatypes ((List!10296 0))(
  ( (Nil!10293) (Cons!10292 (h!11229 (_ BitVec 64)) (t!16532 List!10296)) )
))
(declare-fun arrayNoDuplicates!0 (array!33479 (_ BitVec 32) List!10296) Bool)

(assert (=> b!528585 (= res!324678 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10293))))

(declare-fun b!528586 () Bool)

(declare-fun e!308033 () Bool)

(assert (=> b!528586 (= e!308033 false)))

(declare-fun res!324684 () Bool)

(assert (=> start!48026 (=> (not res!324684) (not e!308039))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48026 (= res!324684 (validMask!0 mask!3524))))

(assert (=> start!48026 e!308039))

(assert (=> start!48026 true))

(declare-fun array_inv!11859 (array!33479) Bool)

(assert (=> start!48026 (array_inv!11859 a!3235)))

(declare-fun b!528587 () Bool)

(assert (=> b!528587 (= e!308039 e!308035)))

(declare-fun res!324685 () Bool)

(assert (=> b!528587 (=> (not res!324685) (not e!308035))))

(declare-fun lt!243569 () SeekEntryResult!4559)

(assert (=> b!528587 (= res!324685 (or (= lt!243569 (MissingZero!4559 i!1204)) (= lt!243569 (MissingVacant!4559 i!1204))))))

(assert (=> b!528587 (= lt!243569 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!528588 () Bool)

(declare-fun res!324680 () Bool)

(assert (=> b!528588 (=> res!324680 e!308040)))

(assert (=> b!528588 (= res!324680 e!308037)))

(declare-fun res!324673 () Bool)

(assert (=> b!528588 (=> (not res!324673) (not e!308037))))

(assert (=> b!528588 (= res!324673 (bvsgt #b00000000000000000000000000000000 (x!49458 lt!243567)))))

(declare-fun b!528589 () Bool)

(declare-fun res!324672 () Bool)

(assert (=> b!528589 (=> (not res!324672) (not e!308035))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33479 (_ BitVec 32)) Bool)

(assert (=> b!528589 (= res!324672 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!528590 () Bool)

(assert (=> b!528590 (= e!308035 (not e!308034))))

(declare-fun res!324681 () Bool)

(assert (=> b!528590 (=> res!324681 e!308034)))

(assert (=> b!528590 (= res!324681 (or (= lt!243567 lt!243565) (undefined!5371 lt!243567) (not (is-Intermediate!4559 lt!243567))))))

(declare-fun lt!243572 () (_ BitVec 32))

(assert (=> b!528590 (= lt!243565 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243572 lt!243570 lt!243571 mask!3524))))

(assert (=> b!528590 (= lt!243567 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243560 (select (arr!16085 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!528590 (= lt!243572 (toIndex!0 lt!243570 mask!3524))))

(assert (=> b!528590 (= lt!243570 (select (store (arr!16085 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!528590 (= lt!243560 (toIndex!0 (select (arr!16085 a!3235) j!176) mask!3524))))

(assert (=> b!528590 (= lt!243571 (array!33480 (store (arr!16085 a!3235) i!1204 k!2280) (size!16449 a!3235)))))

(assert (=> b!528590 (= lt!243564 (Found!4559 j!176))))

(assert (=> b!528590 e!308038))

(declare-fun res!324674 () Bool)

(assert (=> b!528590 (=> (not res!324674) (not e!308038))))

(assert (=> b!528590 (= res!324674 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!243561 () Unit!16702)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33479 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16702)

(assert (=> b!528590 (= lt!243561 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!528591 () Bool)

(declare-fun Unit!16704 () Unit!16702)

(assert (=> b!528591 (= e!308036 Unit!16704)))

(declare-fun lt!243562 () Unit!16702)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33479 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16702)

(assert (=> b!528591 (= lt!243562 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!243560 #b00000000000000000000000000000000 (index!20462 lt!243567) (x!49458 lt!243567) mask!3524))))

(declare-fun res!324683 () Bool)

(assert (=> b!528591 (= res!324683 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243560 lt!243570 lt!243571 mask!3524) (Intermediate!4559 false (index!20462 lt!243567) (x!49458 lt!243567))))))

(assert (=> b!528591 (=> (not res!324683) (not e!308033))))

(assert (=> b!528591 e!308033))

(declare-fun b!528592 () Bool)

(declare-fun Unit!16705 () Unit!16702)

(assert (=> b!528592 (= e!308036 Unit!16705)))

(declare-fun b!528593 () Bool)

(declare-fun res!324682 () Bool)

(assert (=> b!528593 (=> (not res!324682) (not e!308039))))

(assert (=> b!528593 (= res!324682 (validKeyInArray!0 (select (arr!16085 a!3235) j!176)))))

(assert (= (and start!48026 res!324684) b!528584))

(assert (= (and b!528584 res!324676) b!528593))

(assert (= (and b!528593 res!324682) b!528580))

(assert (= (and b!528580 res!324677) b!528582))

(assert (= (and b!528582 res!324675) b!528587))

(assert (= (and b!528587 res!324685) b!528589))

(assert (= (and b!528589 res!324672) b!528585))

(assert (= (and b!528585 res!324678) b!528590))

(assert (= (and b!528590 res!324674) b!528583))

(assert (= (and b!528590 (not res!324681)) b!528581))

(assert (= (and b!528581 c!62261) b!528591))

(assert (= (and b!528581 (not c!62261)) b!528592))

(assert (= (and b!528591 res!324683) b!528586))

(assert (= (and b!528581 (not res!324679)) b!528588))

(assert (= (and b!528588 res!324673) b!528577))

(assert (= (and b!528588 (not res!324680)) b!528579))

(assert (= (and b!528579 (not res!324686)) b!528578))

(declare-fun m!509147 () Bool)

(assert (=> b!528590 m!509147))

(declare-fun m!509149 () Bool)

(assert (=> b!528590 m!509149))

(declare-fun m!509151 () Bool)

(assert (=> b!528590 m!509151))

(declare-fun m!509153 () Bool)

(assert (=> b!528590 m!509153))

(declare-fun m!509155 () Bool)

(assert (=> b!528590 m!509155))

(declare-fun m!509157 () Bool)

(assert (=> b!528590 m!509157))

(assert (=> b!528590 m!509155))

(declare-fun m!509159 () Bool)

(assert (=> b!528590 m!509159))

(declare-fun m!509161 () Bool)

(assert (=> b!528590 m!509161))

(assert (=> b!528590 m!509155))

(declare-fun m!509163 () Bool)

(assert (=> b!528590 m!509163))

(declare-fun m!509165 () Bool)

(assert (=> b!528580 m!509165))

(declare-fun m!509167 () Bool)

(assert (=> b!528581 m!509167))

(declare-fun m!509169 () Bool)

(assert (=> b!528581 m!509169))

(assert (=> b!528581 m!509155))

(declare-fun m!509171 () Bool)

(assert (=> b!528591 m!509171))

(declare-fun m!509173 () Bool)

(assert (=> b!528591 m!509173))

(declare-fun m!509175 () Bool)

(assert (=> b!528582 m!509175))

(declare-fun m!509177 () Bool)

(assert (=> b!528578 m!509177))

(declare-fun m!509179 () Bool)

(assert (=> b!528578 m!509179))

(declare-fun m!509181 () Bool)

(assert (=> b!528589 m!509181))

(assert (=> b!528593 m!509155))

(assert (=> b!528593 m!509155))

(declare-fun m!509183 () Bool)

(assert (=> b!528593 m!509183))

(assert (=> b!528579 m!509173))

(declare-fun m!509185 () Bool)

(assert (=> b!528587 m!509185))

(assert (=> b!528583 m!509155))

(assert (=> b!528583 m!509155))

(declare-fun m!509187 () Bool)

(assert (=> b!528583 m!509187))

(declare-fun m!509189 () Bool)

(assert (=> start!48026 m!509189))

(declare-fun m!509191 () Bool)

(assert (=> start!48026 m!509191))

(declare-fun m!509193 () Bool)

(assert (=> b!528585 m!509193))

(assert (=> b!528577 m!509155))

(assert (=> b!528577 m!509155))

(declare-fun m!509195 () Bool)

(assert (=> b!528577 m!509195))

(push 1)

