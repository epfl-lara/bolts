; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48888 () Bool)

(assert start!48888)

(declare-fun res!333648 () Bool)

(declare-fun e!312142 () Bool)

(assert (=> start!48888 (=> (not res!333648) (not e!312142))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48888 (= res!333648 (validMask!0 mask!3216))))

(assert (=> start!48888 e!312142))

(assert (=> start!48888 true))

(declare-datatypes ((array!34056 0))(
  ( (array!34057 (arr!16363 (Array (_ BitVec 32) (_ BitVec 64))) (size!16727 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34056)

(declare-fun array_inv!12137 (array!34056) Bool)

(assert (=> start!48888 (array_inv!12137 a!3154)))

(declare-fun b!538289 () Bool)

(declare-fun res!333651 () Bool)

(assert (=> b!538289 (=> (not res!333651) (not e!312142))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!538289 (= res!333651 (validKeyInArray!0 (select (arr!16363 a!3154) j!147)))))

(declare-fun b!538290 () Bool)

(declare-fun res!333653 () Bool)

(assert (=> b!538290 (=> (not res!333653) (not e!312142))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34056 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!538290 (= res!333653 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!538291 () Bool)

(declare-fun res!333655 () Bool)

(assert (=> b!538291 (=> (not res!333655) (not e!312142))))

(assert (=> b!538291 (= res!333655 (validKeyInArray!0 k0!1998))))

(declare-fun b!538292 () Bool)

(declare-fun res!333652 () Bool)

(declare-fun e!312143 () Bool)

(assert (=> b!538292 (=> (not res!333652) (not e!312143))))

(declare-datatypes ((List!10535 0))(
  ( (Nil!10532) (Cons!10531 (h!11474 (_ BitVec 64)) (t!16771 List!10535)) )
))
(declare-fun arrayNoDuplicates!0 (array!34056 (_ BitVec 32) List!10535) Bool)

(assert (=> b!538292 (= res!333652 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10532))))

(declare-fun b!538293 () Bool)

(declare-fun res!333646 () Bool)

(assert (=> b!538293 (=> (not res!333646) (not e!312143))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!538293 (= res!333646 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16727 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16727 a!3154)) (= (select (arr!16363 a!3154) resIndex!32) (select (arr!16363 a!3154) j!147))))))

(declare-fun b!538294 () Bool)

(assert (=> b!538294 (= e!312142 e!312143)))

(declare-fun res!333654 () Bool)

(assert (=> b!538294 (=> (not res!333654) (not e!312143))))

(declare-datatypes ((SeekEntryResult!4828 0))(
  ( (MissingZero!4828 (index!21536 (_ BitVec 32))) (Found!4828 (index!21537 (_ BitVec 32))) (Intermediate!4828 (undefined!5640 Bool) (index!21538 (_ BitVec 32)) (x!50486 (_ BitVec 32))) (Undefined!4828) (MissingVacant!4828 (index!21539 (_ BitVec 32))) )
))
(declare-fun lt!246755 () SeekEntryResult!4828)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!538294 (= res!333654 (or (= lt!246755 (MissingZero!4828 i!1153)) (= lt!246755 (MissingVacant!4828 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34056 (_ BitVec 32)) SeekEntryResult!4828)

(assert (=> b!538294 (= lt!246755 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!538295 () Bool)

(declare-fun e!312145 () Bool)

(declare-fun e!312139 () Bool)

(assert (=> b!538295 (= e!312145 e!312139)))

(declare-fun res!333649 () Bool)

(assert (=> b!538295 (=> (not res!333649) (not e!312139))))

(declare-fun lt!246757 () SeekEntryResult!4828)

(declare-fun lt!246759 () SeekEntryResult!4828)

(assert (=> b!538295 (= res!333649 (and (= lt!246759 lt!246757) (not (= (select (arr!16363 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16363 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16363 a!3154) index!1177) (select (arr!16363 a!3154) j!147)))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34056 (_ BitVec 32)) SeekEntryResult!4828)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!538295 (= lt!246759 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16363 a!3154) j!147) mask!3216) (select (arr!16363 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!538296 () Bool)

(declare-fun res!333650 () Bool)

(assert (=> b!538296 (=> (not res!333650) (not e!312143))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34056 (_ BitVec 32)) Bool)

(assert (=> b!538296 (= res!333650 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!538297 () Bool)

(assert (=> b!538297 (= e!312143 e!312145)))

(declare-fun res!333645 () Bool)

(assert (=> b!538297 (=> (not res!333645) (not e!312145))))

(declare-fun lt!246756 () SeekEntryResult!4828)

(assert (=> b!538297 (= res!333645 (= lt!246757 lt!246756))))

(assert (=> b!538297 (= lt!246756 (Intermediate!4828 false resIndex!32 resX!32))))

(assert (=> b!538297 (= lt!246757 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16363 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!538298 () Bool)

(declare-fun e!312144 () Bool)

(assert (=> b!538298 (= e!312139 e!312144)))

(declare-fun res!333647 () Bool)

(assert (=> b!538298 (=> (not res!333647) (not e!312144))))

(declare-fun lt!246760 () (_ BitVec 32))

(assert (=> b!538298 (= res!333647 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246760 #b00000000000000000000000000000000) (bvslt lt!246760 (size!16727 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!538298 (= lt!246760 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!538299 () Bool)

(declare-fun res!333644 () Bool)

(assert (=> b!538299 (=> (not res!333644) (not e!312142))))

(assert (=> b!538299 (= res!333644 (and (= (size!16727 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16727 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16727 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!538300 () Bool)

(declare-fun e!312141 () Bool)

(assert (=> b!538300 (= e!312141 (not true))))

(assert (=> b!538300 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246760 (select (store (arr!16363 a!3154) i!1153 k0!1998) j!147) (array!34057 (store (arr!16363 a!3154) i!1153 k0!1998) (size!16727 a!3154)) mask!3216) lt!246756)))

(declare-datatypes ((Unit!16834 0))(
  ( (Unit!16835) )
))
(declare-fun lt!246758 () Unit!16834)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!34056 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16834)

(assert (=> b!538300 (= lt!246758 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3154 i!1153 k0!1998 j!147 lt!246760 (bvadd #b00000000000000000000000000000001 x!1030) resIndex!32 resX!32 mask!3216))))

(declare-fun b!538301 () Bool)

(assert (=> b!538301 (= e!312144 e!312141)))

(declare-fun res!333656 () Bool)

(assert (=> b!538301 (=> (not res!333656) (not e!312141))))

(declare-fun lt!246761 () SeekEntryResult!4828)

(assert (=> b!538301 (= res!333656 (and (= lt!246761 lt!246756) (= lt!246759 lt!246761)))))

(assert (=> b!538301 (= lt!246761 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246760 (select (arr!16363 a!3154) j!147) a!3154 mask!3216))))

(assert (= (and start!48888 res!333648) b!538299))

(assert (= (and b!538299 res!333644) b!538289))

(assert (= (and b!538289 res!333651) b!538291))

(assert (= (and b!538291 res!333655) b!538290))

(assert (= (and b!538290 res!333653) b!538294))

(assert (= (and b!538294 res!333654) b!538296))

(assert (= (and b!538296 res!333650) b!538292))

(assert (= (and b!538292 res!333652) b!538293))

(assert (= (and b!538293 res!333646) b!538297))

(assert (= (and b!538297 res!333645) b!538295))

(assert (= (and b!538295 res!333649) b!538298))

(assert (= (and b!538298 res!333647) b!538301))

(assert (= (and b!538301 res!333656) b!538300))

(declare-fun m!517427 () Bool)

(assert (=> b!538301 m!517427))

(assert (=> b!538301 m!517427))

(declare-fun m!517429 () Bool)

(assert (=> b!538301 m!517429))

(declare-fun m!517431 () Bool)

(assert (=> b!538292 m!517431))

(declare-fun m!517433 () Bool)

(assert (=> start!48888 m!517433))

(declare-fun m!517435 () Bool)

(assert (=> start!48888 m!517435))

(declare-fun m!517437 () Bool)

(assert (=> b!538293 m!517437))

(assert (=> b!538293 m!517427))

(assert (=> b!538297 m!517427))

(assert (=> b!538297 m!517427))

(declare-fun m!517439 () Bool)

(assert (=> b!538297 m!517439))

(declare-fun m!517441 () Bool)

(assert (=> b!538291 m!517441))

(declare-fun m!517443 () Bool)

(assert (=> b!538295 m!517443))

(assert (=> b!538295 m!517427))

(assert (=> b!538295 m!517427))

(declare-fun m!517445 () Bool)

(assert (=> b!538295 m!517445))

(assert (=> b!538295 m!517445))

(assert (=> b!538295 m!517427))

(declare-fun m!517447 () Bool)

(assert (=> b!538295 m!517447))

(declare-fun m!517449 () Bool)

(assert (=> b!538298 m!517449))

(declare-fun m!517451 () Bool)

(assert (=> b!538300 m!517451))

(declare-fun m!517453 () Bool)

(assert (=> b!538300 m!517453))

(assert (=> b!538300 m!517453))

(declare-fun m!517455 () Bool)

(assert (=> b!538300 m!517455))

(declare-fun m!517457 () Bool)

(assert (=> b!538300 m!517457))

(declare-fun m!517459 () Bool)

(assert (=> b!538296 m!517459))

(declare-fun m!517461 () Bool)

(assert (=> b!538294 m!517461))

(declare-fun m!517463 () Bool)

(assert (=> b!538290 m!517463))

(assert (=> b!538289 m!517427))

(assert (=> b!538289 m!517427))

(declare-fun m!517465 () Bool)

(assert (=> b!538289 m!517465))

(check-sat (not start!48888) (not b!538300) (not b!538301) (not b!538296) (not b!538289) (not b!538297) (not b!538292) (not b!538295) (not b!538290) (not b!538294) (not b!538291) (not b!538298))
(check-sat)
