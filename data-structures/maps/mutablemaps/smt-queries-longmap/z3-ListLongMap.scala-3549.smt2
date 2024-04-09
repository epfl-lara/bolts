; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48882 () Bool)

(assert start!48882)

(declare-fun res!333538 () Bool)

(declare-fun e!312076 () Bool)

(assert (=> start!48882 (=> (not res!333538) (not e!312076))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48882 (= res!333538 (validMask!0 mask!3216))))

(assert (=> start!48882 e!312076))

(assert (=> start!48882 true))

(declare-datatypes ((array!34050 0))(
  ( (array!34051 (arr!16360 (Array (_ BitVec 32) (_ BitVec 64))) (size!16724 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34050)

(declare-fun array_inv!12134 (array!34050) Bool)

(assert (=> start!48882 (array_inv!12134 a!3154)))

(declare-fun b!538172 () Bool)

(declare-fun res!333534 () Bool)

(assert (=> b!538172 (=> (not res!333534) (not e!312076))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34050 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!538172 (= res!333534 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!538173 () Bool)

(declare-fun res!333529 () Bool)

(assert (=> b!538173 (=> (not res!333529) (not e!312076))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!538173 (= res!333529 (validKeyInArray!0 (select (arr!16360 a!3154) j!147)))))

(declare-fun b!538174 () Bool)

(declare-fun e!312081 () Bool)

(assert (=> b!538174 (= e!312076 e!312081)))

(declare-fun res!333530 () Bool)

(assert (=> b!538174 (=> (not res!333530) (not e!312081))))

(declare-datatypes ((SeekEntryResult!4825 0))(
  ( (MissingZero!4825 (index!21524 (_ BitVec 32))) (Found!4825 (index!21525 (_ BitVec 32))) (Intermediate!4825 (undefined!5637 Bool) (index!21526 (_ BitVec 32)) (x!50475 (_ BitVec 32))) (Undefined!4825) (MissingVacant!4825 (index!21527 (_ BitVec 32))) )
))
(declare-fun lt!246692 () SeekEntryResult!4825)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!538174 (= res!333530 (or (= lt!246692 (MissingZero!4825 i!1153)) (= lt!246692 (MissingVacant!4825 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34050 (_ BitVec 32)) SeekEntryResult!4825)

(assert (=> b!538174 (= lt!246692 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!538175 () Bool)

(declare-fun e!312082 () Bool)

(declare-fun e!312077 () Bool)

(assert (=> b!538175 (= e!312082 e!312077)))

(declare-fun res!333536 () Bool)

(assert (=> b!538175 (=> (not res!333536) (not e!312077))))

(declare-fun lt!246694 () SeekEntryResult!4825)

(declare-fun lt!246695 () SeekEntryResult!4825)

(declare-fun lt!246696 () SeekEntryResult!4825)

(assert (=> b!538175 (= res!333536 (and (= lt!246694 lt!246696) (= lt!246695 lt!246694)))))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun lt!246693 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34050 (_ BitVec 32)) SeekEntryResult!4825)

(assert (=> b!538175 (= lt!246694 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246693 (select (arr!16360 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!538176 () Bool)

(declare-fun e!312080 () Bool)

(assert (=> b!538176 (= e!312080 e!312082)))

(declare-fun res!333532 () Bool)

(assert (=> b!538176 (=> (not res!333532) (not e!312082))))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!538176 (= res!333532 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246693 #b00000000000000000000000000000000) (bvslt lt!246693 (size!16724 a!3154))))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!538176 (= lt!246693 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!538177 () Bool)

(declare-fun res!333539 () Bool)

(assert (=> b!538177 (=> (not res!333539) (not e!312081))))

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!538177 (= res!333539 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16724 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16724 a!3154)) (= (select (arr!16360 a!3154) resIndex!32) (select (arr!16360 a!3154) j!147))))))

(declare-fun b!538178 () Bool)

(declare-fun e!312079 () Bool)

(assert (=> b!538178 (= e!312079 e!312080)))

(declare-fun res!333531 () Bool)

(assert (=> b!538178 (=> (not res!333531) (not e!312080))))

(declare-fun lt!246698 () SeekEntryResult!4825)

(assert (=> b!538178 (= res!333531 (and (= lt!246695 lt!246698) (not (= (select (arr!16360 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16360 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16360 a!3154) index!1177) (select (arr!16360 a!3154) j!147)))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!538178 (= lt!246695 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16360 a!3154) j!147) mask!3216) (select (arr!16360 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!538179 () Bool)

(assert (=> b!538179 (= e!312077 (not (bvsge mask!3216 #b00000000000000000000000000000000)))))

(assert (=> b!538179 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246693 (select (store (arr!16360 a!3154) i!1153 k0!1998) j!147) (array!34051 (store (arr!16360 a!3154) i!1153 k0!1998) (size!16724 a!3154)) mask!3216) lt!246696)))

(declare-datatypes ((Unit!16828 0))(
  ( (Unit!16829) )
))
(declare-fun lt!246697 () Unit!16828)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!34050 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16828)

(assert (=> b!538179 (= lt!246697 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3154 i!1153 k0!1998 j!147 lt!246693 (bvadd #b00000000000000000000000000000001 x!1030) resIndex!32 resX!32 mask!3216))))

(declare-fun b!538180 () Bool)

(declare-fun res!333527 () Bool)

(assert (=> b!538180 (=> (not res!333527) (not e!312081))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34050 (_ BitVec 32)) Bool)

(assert (=> b!538180 (= res!333527 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!538181 () Bool)

(assert (=> b!538181 (= e!312081 e!312079)))

(declare-fun res!333528 () Bool)

(assert (=> b!538181 (=> (not res!333528) (not e!312079))))

(assert (=> b!538181 (= res!333528 (= lt!246698 lt!246696))))

(assert (=> b!538181 (= lt!246696 (Intermediate!4825 false resIndex!32 resX!32))))

(assert (=> b!538181 (= lt!246698 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16360 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!538182 () Bool)

(declare-fun res!333533 () Bool)

(assert (=> b!538182 (=> (not res!333533) (not e!312081))))

(declare-datatypes ((List!10532 0))(
  ( (Nil!10529) (Cons!10528 (h!11471 (_ BitVec 64)) (t!16768 List!10532)) )
))
(declare-fun arrayNoDuplicates!0 (array!34050 (_ BitVec 32) List!10532) Bool)

(assert (=> b!538182 (= res!333533 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10529))))

(declare-fun b!538183 () Bool)

(declare-fun res!333537 () Bool)

(assert (=> b!538183 (=> (not res!333537) (not e!312076))))

(assert (=> b!538183 (= res!333537 (validKeyInArray!0 k0!1998))))

(declare-fun b!538184 () Bool)

(declare-fun res!333535 () Bool)

(assert (=> b!538184 (=> (not res!333535) (not e!312076))))

(assert (=> b!538184 (= res!333535 (and (= (size!16724 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16724 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16724 a!3154)) (not (= i!1153 j!147))))))

(assert (= (and start!48882 res!333538) b!538184))

(assert (= (and b!538184 res!333535) b!538173))

(assert (= (and b!538173 res!333529) b!538183))

(assert (= (and b!538183 res!333537) b!538172))

(assert (= (and b!538172 res!333534) b!538174))

(assert (= (and b!538174 res!333530) b!538180))

(assert (= (and b!538180 res!333527) b!538182))

(assert (= (and b!538182 res!333533) b!538177))

(assert (= (and b!538177 res!333539) b!538181))

(assert (= (and b!538181 res!333528) b!538178))

(assert (= (and b!538178 res!333531) b!538176))

(assert (= (and b!538176 res!333532) b!538175))

(assert (= (and b!538175 res!333536) b!538179))

(declare-fun m!517307 () Bool)

(assert (=> b!538175 m!517307))

(assert (=> b!538175 m!517307))

(declare-fun m!517309 () Bool)

(assert (=> b!538175 m!517309))

(declare-fun m!517311 () Bool)

(assert (=> b!538174 m!517311))

(declare-fun m!517313 () Bool)

(assert (=> b!538179 m!517313))

(declare-fun m!517315 () Bool)

(assert (=> b!538179 m!517315))

(assert (=> b!538179 m!517315))

(declare-fun m!517317 () Bool)

(assert (=> b!538179 m!517317))

(declare-fun m!517319 () Bool)

(assert (=> b!538179 m!517319))

(declare-fun m!517321 () Bool)

(assert (=> b!538177 m!517321))

(assert (=> b!538177 m!517307))

(declare-fun m!517323 () Bool)

(assert (=> start!48882 m!517323))

(declare-fun m!517325 () Bool)

(assert (=> start!48882 m!517325))

(declare-fun m!517327 () Bool)

(assert (=> b!538182 m!517327))

(declare-fun m!517329 () Bool)

(assert (=> b!538172 m!517329))

(declare-fun m!517331 () Bool)

(assert (=> b!538183 m!517331))

(declare-fun m!517333 () Bool)

(assert (=> b!538176 m!517333))

(declare-fun m!517335 () Bool)

(assert (=> b!538178 m!517335))

(assert (=> b!538178 m!517307))

(assert (=> b!538178 m!517307))

(declare-fun m!517337 () Bool)

(assert (=> b!538178 m!517337))

(assert (=> b!538178 m!517337))

(assert (=> b!538178 m!517307))

(declare-fun m!517339 () Bool)

(assert (=> b!538178 m!517339))

(declare-fun m!517341 () Bool)

(assert (=> b!538180 m!517341))

(assert (=> b!538181 m!517307))

(assert (=> b!538181 m!517307))

(declare-fun m!517343 () Bool)

(assert (=> b!538181 m!517343))

(assert (=> b!538173 m!517307))

(assert (=> b!538173 m!517307))

(declare-fun m!517345 () Bool)

(assert (=> b!538173 m!517345))

(check-sat (not start!48882) (not b!538181) (not b!538172) (not b!538174) (not b!538182) (not b!538180) (not b!538176) (not b!538179) (not b!538178) (not b!538175) (not b!538183) (not b!538173))
(check-sat)
