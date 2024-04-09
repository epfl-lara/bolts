; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48894 () Bool)

(assert start!48894)

(declare-fun b!538406 () Bool)

(declare-fun e!312207 () Bool)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun index!1177 () (_ BitVec 32))

(assert (=> b!538406 (= e!312207 (not (or (bvslt mask!3216 #b00000000000000000000000000000000) (bvslt index!1177 (bvadd #b00000000000000000000000000000001 mask!3216)))))))

(declare-fun lt!246824 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34062 0))(
  ( (array!34063 (arr!16366 (Array (_ BitVec 32) (_ BitVec 64))) (size!16730 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34062)

(declare-datatypes ((SeekEntryResult!4831 0))(
  ( (MissingZero!4831 (index!21548 (_ BitVec 32))) (Found!4831 (index!21549 (_ BitVec 32))) (Intermediate!4831 (undefined!5643 Bool) (index!21550 (_ BitVec 32)) (x!50497 (_ BitVec 32))) (Undefined!4831) (MissingVacant!4831 (index!21551 (_ BitVec 32))) )
))
(declare-fun lt!246821 () SeekEntryResult!4831)

(declare-fun i!1153 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34062 (_ BitVec 32)) SeekEntryResult!4831)

(assert (=> b!538406 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246824 (select (store (arr!16366 a!3154) i!1153 k0!1998) j!147) (array!34063 (store (arr!16366 a!3154) i!1153 k0!1998) (size!16730 a!3154)) mask!3216) lt!246821)))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-datatypes ((Unit!16840 0))(
  ( (Unit!16841) )
))
(declare-fun lt!246822 () Unit!16840)

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!34062 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16840)

(assert (=> b!538406 (= lt!246822 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3154 i!1153 k0!1998 j!147 lt!246824 (bvadd #b00000000000000000000000000000001 x!1030) resIndex!32 resX!32 mask!3216))))

(declare-fun b!538407 () Bool)

(declare-fun res!333765 () Bool)

(declare-fun e!312205 () Bool)

(assert (=> b!538407 (=> (not res!333765) (not e!312205))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!538407 (= res!333765 (validKeyInArray!0 (select (arr!16366 a!3154) j!147)))))

(declare-fun res!333766 () Bool)

(assert (=> start!48894 (=> (not res!333766) (not e!312205))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48894 (= res!333766 (validMask!0 mask!3216))))

(assert (=> start!48894 e!312205))

(assert (=> start!48894 true))

(declare-fun array_inv!12140 (array!34062) Bool)

(assert (=> start!48894 (array_inv!12140 a!3154)))

(declare-fun b!538408 () Bool)

(declare-fun e!312203 () Bool)

(declare-fun e!312206 () Bool)

(assert (=> b!538408 (= e!312203 e!312206)))

(declare-fun res!333773 () Bool)

(assert (=> b!538408 (=> (not res!333773) (not e!312206))))

(declare-fun lt!246823 () SeekEntryResult!4831)

(declare-fun lt!246819 () SeekEntryResult!4831)

(assert (=> b!538408 (= res!333773 (and (= lt!246819 lt!246823) (not (= (select (arr!16366 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16366 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16366 a!3154) index!1177) (select (arr!16366 a!3154) j!147)))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!538408 (= lt!246819 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16366 a!3154) j!147) mask!3216) (select (arr!16366 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!538409 () Bool)

(declare-fun res!333770 () Bool)

(declare-fun e!312204 () Bool)

(assert (=> b!538409 (=> (not res!333770) (not e!312204))))

(assert (=> b!538409 (= res!333770 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16730 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16730 a!3154)) (= (select (arr!16366 a!3154) resIndex!32) (select (arr!16366 a!3154) j!147))))))

(declare-fun b!538410 () Bool)

(assert (=> b!538410 (= e!312205 e!312204)))

(declare-fun res!333767 () Bool)

(assert (=> b!538410 (=> (not res!333767) (not e!312204))))

(declare-fun lt!246820 () SeekEntryResult!4831)

(assert (=> b!538410 (= res!333767 (or (= lt!246820 (MissingZero!4831 i!1153)) (= lt!246820 (MissingVacant!4831 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34062 (_ BitVec 32)) SeekEntryResult!4831)

(assert (=> b!538410 (= lt!246820 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!538411 () Bool)

(declare-fun res!333763 () Bool)

(assert (=> b!538411 (=> (not res!333763) (not e!312204))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34062 (_ BitVec 32)) Bool)

(assert (=> b!538411 (= res!333763 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!538412 () Bool)

(declare-fun res!333764 () Bool)

(assert (=> b!538412 (=> (not res!333764) (not e!312205))))

(assert (=> b!538412 (= res!333764 (validKeyInArray!0 k0!1998))))

(declare-fun b!538413 () Bool)

(declare-fun e!312208 () Bool)

(assert (=> b!538413 (= e!312206 e!312208)))

(declare-fun res!333771 () Bool)

(assert (=> b!538413 (=> (not res!333771) (not e!312208))))

(assert (=> b!538413 (= res!333771 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246824 #b00000000000000000000000000000000) (bvslt lt!246824 (size!16730 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!538413 (= lt!246824 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!538414 () Bool)

(assert (=> b!538414 (= e!312208 e!312207)))

(declare-fun res!333761 () Bool)

(assert (=> b!538414 (=> (not res!333761) (not e!312207))))

(declare-fun lt!246818 () SeekEntryResult!4831)

(assert (=> b!538414 (= res!333761 (and (= lt!246818 lt!246821) (= lt!246819 lt!246818)))))

(assert (=> b!538414 (= lt!246818 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246824 (select (arr!16366 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!538415 () Bool)

(declare-fun res!333768 () Bool)

(assert (=> b!538415 (=> (not res!333768) (not e!312204))))

(declare-datatypes ((List!10538 0))(
  ( (Nil!10535) (Cons!10534 (h!11477 (_ BitVec 64)) (t!16774 List!10538)) )
))
(declare-fun arrayNoDuplicates!0 (array!34062 (_ BitVec 32) List!10538) Bool)

(assert (=> b!538415 (= res!333768 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10535))))

(declare-fun b!538416 () Bool)

(assert (=> b!538416 (= e!312204 e!312203)))

(declare-fun res!333769 () Bool)

(assert (=> b!538416 (=> (not res!333769) (not e!312203))))

(assert (=> b!538416 (= res!333769 (= lt!246823 lt!246821))))

(assert (=> b!538416 (= lt!246821 (Intermediate!4831 false resIndex!32 resX!32))))

(assert (=> b!538416 (= lt!246823 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16366 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!538417 () Bool)

(declare-fun res!333772 () Bool)

(assert (=> b!538417 (=> (not res!333772) (not e!312205))))

(assert (=> b!538417 (= res!333772 (and (= (size!16730 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16730 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16730 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!538418 () Bool)

(declare-fun res!333762 () Bool)

(assert (=> b!538418 (=> (not res!333762) (not e!312205))))

(declare-fun arrayContainsKey!0 (array!34062 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!538418 (= res!333762 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(assert (= (and start!48894 res!333766) b!538417))

(assert (= (and b!538417 res!333772) b!538407))

(assert (= (and b!538407 res!333765) b!538412))

(assert (= (and b!538412 res!333764) b!538418))

(assert (= (and b!538418 res!333762) b!538410))

(assert (= (and b!538410 res!333767) b!538411))

(assert (= (and b!538411 res!333763) b!538415))

(assert (= (and b!538415 res!333768) b!538409))

(assert (= (and b!538409 res!333770) b!538416))

(assert (= (and b!538416 res!333769) b!538408))

(assert (= (and b!538408 res!333773) b!538413))

(assert (= (and b!538413 res!333771) b!538414))

(assert (= (and b!538414 res!333761) b!538406))

(declare-fun m!517547 () Bool)

(assert (=> b!538412 m!517547))

(declare-fun m!517549 () Bool)

(assert (=> b!538411 m!517549))

(declare-fun m!517551 () Bool)

(assert (=> b!538407 m!517551))

(assert (=> b!538407 m!517551))

(declare-fun m!517553 () Bool)

(assert (=> b!538407 m!517553))

(declare-fun m!517555 () Bool)

(assert (=> b!538410 m!517555))

(assert (=> b!538416 m!517551))

(assert (=> b!538416 m!517551))

(declare-fun m!517557 () Bool)

(assert (=> b!538416 m!517557))

(declare-fun m!517559 () Bool)

(assert (=> b!538409 m!517559))

(assert (=> b!538409 m!517551))

(declare-fun m!517561 () Bool)

(assert (=> b!538413 m!517561))

(declare-fun m!517563 () Bool)

(assert (=> start!48894 m!517563))

(declare-fun m!517565 () Bool)

(assert (=> start!48894 m!517565))

(declare-fun m!517567 () Bool)

(assert (=> b!538415 m!517567))

(declare-fun m!517569 () Bool)

(assert (=> b!538408 m!517569))

(assert (=> b!538408 m!517551))

(assert (=> b!538408 m!517551))

(declare-fun m!517571 () Bool)

(assert (=> b!538408 m!517571))

(assert (=> b!538408 m!517571))

(assert (=> b!538408 m!517551))

(declare-fun m!517573 () Bool)

(assert (=> b!538408 m!517573))

(declare-fun m!517575 () Bool)

(assert (=> b!538418 m!517575))

(declare-fun m!517577 () Bool)

(assert (=> b!538406 m!517577))

(declare-fun m!517579 () Bool)

(assert (=> b!538406 m!517579))

(assert (=> b!538406 m!517579))

(declare-fun m!517581 () Bool)

(assert (=> b!538406 m!517581))

(declare-fun m!517583 () Bool)

(assert (=> b!538406 m!517583))

(assert (=> b!538414 m!517551))

(assert (=> b!538414 m!517551))

(declare-fun m!517585 () Bool)

(assert (=> b!538414 m!517585))

(check-sat (not b!538408) (not start!48894) (not b!538414) (not b!538418) (not b!538416) (not b!538412) (not b!538411) (not b!538413) (not b!538407) (not b!538410) (not b!538406) (not b!538415))
(check-sat)
