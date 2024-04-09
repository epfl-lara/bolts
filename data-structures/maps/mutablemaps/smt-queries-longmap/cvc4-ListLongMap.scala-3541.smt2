; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48836 () Bool)

(assert start!48836)

(declare-fun b!537275 () Bool)

(declare-fun res!332637 () Bool)

(declare-fun e!311705 () Bool)

(assert (=> b!537275 (=> (not res!332637) (not e!311705))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4802 0))(
  ( (MissingZero!4802 (index!21432 (_ BitVec 32))) (Found!4802 (index!21433 (_ BitVec 32))) (Intermediate!4802 (undefined!5614 Bool) (index!21434 (_ BitVec 32)) (x!50388 (_ BitVec 32))) (Undefined!4802) (MissingVacant!4802 (index!21435 (_ BitVec 32))) )
))
(declare-fun lt!246376 () SeekEntryResult!4802)

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34004 0))(
  ( (array!34005 (arr!16337 (Array (_ BitVec 32) (_ BitVec 64))) (size!16701 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34004)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34004 (_ BitVec 32)) SeekEntryResult!4802)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!537275 (= res!332637 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16337 a!3154) j!147) mask!3216) (select (arr!16337 a!3154) j!147) a!3154 mask!3216) lt!246376))))

(declare-fun b!537276 () Bool)

(declare-fun res!332631 () Bool)

(declare-fun e!311704 () Bool)

(assert (=> b!537276 (=> (not res!332631) (not e!311704))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34004 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!537276 (= res!332631 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!537277 () Bool)

(declare-fun res!332635 () Bool)

(assert (=> b!537277 (=> (not res!332635) (not e!311704))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!537277 (= res!332635 (validKeyInArray!0 k!1998))))

(declare-fun b!537278 () Bool)

(declare-fun res!332633 () Bool)

(assert (=> b!537278 (=> (not res!332633) (not e!311704))))

(assert (=> b!537278 (= res!332633 (validKeyInArray!0 (select (arr!16337 a!3154) j!147)))))

(declare-fun b!537279 () Bool)

(declare-fun res!332641 () Bool)

(declare-fun e!311706 () Bool)

(assert (=> b!537279 (=> (not res!332641) (not e!311706))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34004 (_ BitVec 32)) Bool)

(assert (=> b!537279 (= res!332641 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!537280 () Bool)

(declare-fun e!311703 () Bool)

(assert (=> b!537280 (= e!311703 false)))

(declare-fun lt!246375 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun lt!246374 () SeekEntryResult!4802)

(assert (=> b!537280 (= lt!246374 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246375 (select (arr!16337 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!537282 () Bool)

(declare-fun res!332636 () Bool)

(assert (=> b!537282 (=> (not res!332636) (not e!311706))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!537282 (= res!332636 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16701 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16701 a!3154)) (= (select (arr!16337 a!3154) resIndex!32) (select (arr!16337 a!3154) j!147))))))

(declare-fun b!537283 () Bool)

(declare-fun res!332638 () Bool)

(assert (=> b!537283 (=> (not res!332638) (not e!311705))))

(assert (=> b!537283 (= res!332638 (and (not (= (select (arr!16337 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16337 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16337 a!3154) index!1177) (select (arr!16337 a!3154) j!147)))))))

(declare-fun b!537284 () Bool)

(assert (=> b!537284 (= e!311706 e!311705)))

(declare-fun res!332634 () Bool)

(assert (=> b!537284 (=> (not res!332634) (not e!311705))))

(assert (=> b!537284 (= res!332634 (= lt!246376 (Intermediate!4802 false resIndex!32 resX!32)))))

(assert (=> b!537284 (= lt!246376 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16337 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!537285 () Bool)

(declare-fun res!332639 () Bool)

(assert (=> b!537285 (=> (not res!332639) (not e!311706))))

(declare-datatypes ((List!10509 0))(
  ( (Nil!10506) (Cons!10505 (h!11448 (_ BitVec 64)) (t!16745 List!10509)) )
))
(declare-fun arrayNoDuplicates!0 (array!34004 (_ BitVec 32) List!10509) Bool)

(assert (=> b!537285 (= res!332639 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10506))))

(declare-fun res!332632 () Bool)

(assert (=> start!48836 (=> (not res!332632) (not e!311704))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48836 (= res!332632 (validMask!0 mask!3216))))

(assert (=> start!48836 e!311704))

(assert (=> start!48836 true))

(declare-fun array_inv!12111 (array!34004) Bool)

(assert (=> start!48836 (array_inv!12111 a!3154)))

(declare-fun b!537281 () Bool)

(declare-fun res!332642 () Bool)

(assert (=> b!537281 (=> (not res!332642) (not e!311704))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!537281 (= res!332642 (and (= (size!16701 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16701 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16701 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!537286 () Bool)

(assert (=> b!537286 (= e!311704 e!311706)))

(declare-fun res!332630 () Bool)

(assert (=> b!537286 (=> (not res!332630) (not e!311706))))

(declare-fun lt!246377 () SeekEntryResult!4802)

(assert (=> b!537286 (= res!332630 (or (= lt!246377 (MissingZero!4802 i!1153)) (= lt!246377 (MissingVacant!4802 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34004 (_ BitVec 32)) SeekEntryResult!4802)

(assert (=> b!537286 (= lt!246377 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!537287 () Bool)

(assert (=> b!537287 (= e!311705 e!311703)))

(declare-fun res!332640 () Bool)

(assert (=> b!537287 (=> (not res!332640) (not e!311703))))

(assert (=> b!537287 (= res!332640 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246375 #b00000000000000000000000000000000) (bvslt lt!246375 (size!16701 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!537287 (= lt!246375 (nextIndex!0 index!1177 x!1030 mask!3216))))

(assert (= (and start!48836 res!332632) b!537281))

(assert (= (and b!537281 res!332642) b!537278))

(assert (= (and b!537278 res!332633) b!537277))

(assert (= (and b!537277 res!332635) b!537276))

(assert (= (and b!537276 res!332631) b!537286))

(assert (= (and b!537286 res!332630) b!537279))

(assert (= (and b!537279 res!332641) b!537285))

(assert (= (and b!537285 res!332639) b!537282))

(assert (= (and b!537282 res!332636) b!537284))

(assert (= (and b!537284 res!332634) b!537275))

(assert (= (and b!537275 res!332637) b!537283))

(assert (= (and b!537283 res!332638) b!537287))

(assert (= (and b!537287 res!332640) b!537280))

(declare-fun m!516539 () Bool)

(assert (=> start!48836 m!516539))

(declare-fun m!516541 () Bool)

(assert (=> start!48836 m!516541))

(declare-fun m!516543 () Bool)

(assert (=> b!537278 m!516543))

(assert (=> b!537278 m!516543))

(declare-fun m!516545 () Bool)

(assert (=> b!537278 m!516545))

(declare-fun m!516547 () Bool)

(assert (=> b!537283 m!516547))

(assert (=> b!537283 m!516543))

(declare-fun m!516549 () Bool)

(assert (=> b!537285 m!516549))

(declare-fun m!516551 () Bool)

(assert (=> b!537287 m!516551))

(assert (=> b!537275 m!516543))

(assert (=> b!537275 m!516543))

(declare-fun m!516553 () Bool)

(assert (=> b!537275 m!516553))

(assert (=> b!537275 m!516553))

(assert (=> b!537275 m!516543))

(declare-fun m!516555 () Bool)

(assert (=> b!537275 m!516555))

(assert (=> b!537284 m!516543))

(assert (=> b!537284 m!516543))

(declare-fun m!516557 () Bool)

(assert (=> b!537284 m!516557))

(declare-fun m!516559 () Bool)

(assert (=> b!537286 m!516559))

(assert (=> b!537280 m!516543))

(assert (=> b!537280 m!516543))

(declare-fun m!516561 () Bool)

(assert (=> b!537280 m!516561))

(declare-fun m!516563 () Bool)

(assert (=> b!537276 m!516563))

(declare-fun m!516565 () Bool)

(assert (=> b!537279 m!516565))

(declare-fun m!516567 () Bool)

(assert (=> b!537282 m!516567))

(assert (=> b!537282 m!516543))

(declare-fun m!516569 () Bool)

(assert (=> b!537277 m!516569))

(push 1)

(assert (not start!48836))

(assert (not b!537275))

(assert (not b!537279))

(assert (not b!537277))

(assert (not b!537276))

(assert (not b!537278))

