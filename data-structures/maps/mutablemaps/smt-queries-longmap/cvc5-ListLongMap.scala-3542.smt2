; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48838 () Bool)

(assert start!48838)

(declare-fun b!537314 () Bool)

(declare-fun res!332677 () Bool)

(declare-fun e!311721 () Bool)

(assert (=> b!537314 (=> (not res!332677) (not e!311721))))

(declare-datatypes ((array!34006 0))(
  ( (array!34007 (arr!16338 (Array (_ BitVec 32) (_ BitVec 64))) (size!16702 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34006)

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!537314 (= res!332677 (validKeyInArray!0 (select (arr!16338 a!3154) j!147)))))

(declare-fun b!537315 () Bool)

(declare-fun res!332679 () Bool)

(declare-fun e!311719 () Bool)

(assert (=> b!537315 (=> (not res!332679) (not e!311719))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!537315 (= res!332679 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16702 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16702 a!3154)) (= (select (arr!16338 a!3154) resIndex!32) (select (arr!16338 a!3154) j!147))))))

(declare-fun b!537316 () Bool)

(declare-fun res!332678 () Bool)

(assert (=> b!537316 (=> (not res!332678) (not e!311721))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!537316 (= res!332678 (and (= (size!16702 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16702 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16702 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!537317 () Bool)

(declare-fun res!332680 () Bool)

(assert (=> b!537317 (=> (not res!332680) (not e!311719))))

(declare-datatypes ((List!10510 0))(
  ( (Nil!10507) (Cons!10506 (h!11449 (_ BitVec 64)) (t!16746 List!10510)) )
))
(declare-fun arrayNoDuplicates!0 (array!34006 (_ BitVec 32) List!10510) Bool)

(assert (=> b!537317 (= res!332680 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10507))))

(declare-fun b!537318 () Bool)

(declare-fun res!332676 () Bool)

(assert (=> b!537318 (=> (not res!332676) (not e!311721))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34006 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!537318 (= res!332676 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!537320 () Bool)

(declare-fun res!332671 () Bool)

(declare-fun e!311722 () Bool)

(assert (=> b!537320 (=> (not res!332671) (not e!311722))))

(declare-datatypes ((SeekEntryResult!4803 0))(
  ( (MissingZero!4803 (index!21436 (_ BitVec 32))) (Found!4803 (index!21437 (_ BitVec 32))) (Intermediate!4803 (undefined!5615 Bool) (index!21438 (_ BitVec 32)) (x!50397 (_ BitVec 32))) (Undefined!4803) (MissingVacant!4803 (index!21439 (_ BitVec 32))) )
))
(declare-fun lt!246386 () SeekEntryResult!4803)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34006 (_ BitVec 32)) SeekEntryResult!4803)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!537320 (= res!332671 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16338 a!3154) j!147) mask!3216) (select (arr!16338 a!3154) j!147) a!3154 mask!3216) lt!246386))))

(declare-fun b!537321 () Bool)

(declare-fun res!332670 () Bool)

(assert (=> b!537321 (=> (not res!332670) (not e!311721))))

(assert (=> b!537321 (= res!332670 (validKeyInArray!0 k!1998))))

(declare-fun b!537322 () Bool)

(declare-fun res!332673 () Bool)

(assert (=> b!537322 (=> (not res!332673) (not e!311719))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34006 (_ BitVec 32)) Bool)

(assert (=> b!537322 (= res!332673 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!537323 () Bool)

(declare-fun e!311718 () Bool)

(assert (=> b!537323 (= e!311722 e!311718)))

(declare-fun res!332674 () Bool)

(assert (=> b!537323 (=> (not res!332674) (not e!311718))))

(declare-fun lt!246387 () (_ BitVec 32))

(assert (=> b!537323 (= res!332674 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246387 #b00000000000000000000000000000000) (bvslt lt!246387 (size!16702 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!537323 (= lt!246387 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!537324 () Bool)

(assert (=> b!537324 (= e!311718 false)))

(declare-fun lt!246388 () SeekEntryResult!4803)

(assert (=> b!537324 (= lt!246388 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246387 (select (arr!16338 a!3154) j!147) a!3154 mask!3216))))

(declare-fun res!332672 () Bool)

(assert (=> start!48838 (=> (not res!332672) (not e!311721))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48838 (= res!332672 (validMask!0 mask!3216))))

(assert (=> start!48838 e!311721))

(assert (=> start!48838 true))

(declare-fun array_inv!12112 (array!34006) Bool)

(assert (=> start!48838 (array_inv!12112 a!3154)))

(declare-fun b!537319 () Bool)

(assert (=> b!537319 (= e!311721 e!311719)))

(declare-fun res!332669 () Bool)

(assert (=> b!537319 (=> (not res!332669) (not e!311719))))

(declare-fun lt!246389 () SeekEntryResult!4803)

(assert (=> b!537319 (= res!332669 (or (= lt!246389 (MissingZero!4803 i!1153)) (= lt!246389 (MissingVacant!4803 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34006 (_ BitVec 32)) SeekEntryResult!4803)

(assert (=> b!537319 (= lt!246389 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!537325 () Bool)

(declare-fun res!332675 () Bool)

(assert (=> b!537325 (=> (not res!332675) (not e!311722))))

(assert (=> b!537325 (= res!332675 (and (not (= (select (arr!16338 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16338 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16338 a!3154) index!1177) (select (arr!16338 a!3154) j!147)))))))

(declare-fun b!537326 () Bool)

(assert (=> b!537326 (= e!311719 e!311722)))

(declare-fun res!332681 () Bool)

(assert (=> b!537326 (=> (not res!332681) (not e!311722))))

(assert (=> b!537326 (= res!332681 (= lt!246386 (Intermediate!4803 false resIndex!32 resX!32)))))

(assert (=> b!537326 (= lt!246386 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16338 a!3154) j!147) a!3154 mask!3216))))

(assert (= (and start!48838 res!332672) b!537316))

(assert (= (and b!537316 res!332678) b!537314))

(assert (= (and b!537314 res!332677) b!537321))

(assert (= (and b!537321 res!332670) b!537318))

(assert (= (and b!537318 res!332676) b!537319))

(assert (= (and b!537319 res!332669) b!537322))

(assert (= (and b!537322 res!332673) b!537317))

(assert (= (and b!537317 res!332680) b!537315))

(assert (= (and b!537315 res!332679) b!537326))

(assert (= (and b!537326 res!332681) b!537320))

(assert (= (and b!537320 res!332671) b!537325))

(assert (= (and b!537325 res!332675) b!537323))

(assert (= (and b!537323 res!332674) b!537324))

(declare-fun m!516571 () Bool)

(assert (=> b!537320 m!516571))

(assert (=> b!537320 m!516571))

(declare-fun m!516573 () Bool)

(assert (=> b!537320 m!516573))

(assert (=> b!537320 m!516573))

(assert (=> b!537320 m!516571))

(declare-fun m!516575 () Bool)

(assert (=> b!537320 m!516575))

(declare-fun m!516577 () Bool)

(assert (=> start!48838 m!516577))

(declare-fun m!516579 () Bool)

(assert (=> start!48838 m!516579))

(assert (=> b!537324 m!516571))

(assert (=> b!537324 m!516571))

(declare-fun m!516581 () Bool)

(assert (=> b!537324 m!516581))

(declare-fun m!516583 () Bool)

(assert (=> b!537323 m!516583))

(declare-fun m!516585 () Bool)

(assert (=> b!537318 m!516585))

(declare-fun m!516587 () Bool)

(assert (=> b!537325 m!516587))

(assert (=> b!537325 m!516571))

(assert (=> b!537314 m!516571))

(assert (=> b!537314 m!516571))

(declare-fun m!516589 () Bool)

(assert (=> b!537314 m!516589))

(declare-fun m!516591 () Bool)

(assert (=> b!537315 m!516591))

(assert (=> b!537315 m!516571))

(assert (=> b!537326 m!516571))

(assert (=> b!537326 m!516571))

(declare-fun m!516593 () Bool)

(assert (=> b!537326 m!516593))

(declare-fun m!516595 () Bool)

(assert (=> b!537319 m!516595))

(declare-fun m!516597 () Bool)

(assert (=> b!537322 m!516597))

(declare-fun m!516599 () Bool)

(assert (=> b!537317 m!516599))

(declare-fun m!516601 () Bool)

(assert (=> b!537321 m!516601))

(push 1)

