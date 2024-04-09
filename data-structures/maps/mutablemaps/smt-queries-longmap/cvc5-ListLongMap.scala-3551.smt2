; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48892 () Bool)

(assert start!48892)

(declare-fun b!538367 () Bool)

(declare-fun res!333724 () Bool)

(declare-fun e!312187 () Bool)

(assert (=> b!538367 (=> (not res!333724) (not e!312187))))

(declare-datatypes ((array!34060 0))(
  ( (array!34061 (arr!16365 (Array (_ BitVec 32) (_ BitVec 64))) (size!16729 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34060)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34060 (_ BitVec 32)) Bool)

(assert (=> b!538367 (= res!333724 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!538368 () Bool)

(declare-fun res!333730 () Bool)

(assert (=> b!538368 (=> (not res!333730) (not e!312187))))

(declare-datatypes ((List!10537 0))(
  ( (Nil!10534) (Cons!10533 (h!11476 (_ BitVec 64)) (t!16773 List!10537)) )
))
(declare-fun arrayNoDuplicates!0 (array!34060 (_ BitVec 32) List!10537) Bool)

(assert (=> b!538368 (= res!333730 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10534))))

(declare-fun b!538369 () Bool)

(declare-fun res!333727 () Bool)

(declare-fun e!312186 () Bool)

(assert (=> b!538369 (=> (not res!333727) (not e!312186))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!538369 (= res!333727 (and (= (size!16729 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16729 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16729 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!538370 () Bool)

(declare-fun res!333722 () Bool)

(assert (=> b!538370 (=> (not res!333722) (not e!312186))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34060 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!538370 (= res!333722 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!538372 () Bool)

(declare-fun e!312181 () Bool)

(assert (=> b!538372 (= e!312187 e!312181)))

(declare-fun res!333734 () Bool)

(assert (=> b!538372 (=> (not res!333734) (not e!312181))))

(declare-datatypes ((SeekEntryResult!4830 0))(
  ( (MissingZero!4830 (index!21544 (_ BitVec 32))) (Found!4830 (index!21545 (_ BitVec 32))) (Intermediate!4830 (undefined!5642 Bool) (index!21546 (_ BitVec 32)) (x!50496 (_ BitVec 32))) (Undefined!4830) (MissingVacant!4830 (index!21547 (_ BitVec 32))) )
))
(declare-fun lt!246803 () SeekEntryResult!4830)

(declare-fun lt!246797 () SeekEntryResult!4830)

(assert (=> b!538372 (= res!333734 (= lt!246803 lt!246797))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!538372 (= lt!246797 (Intermediate!4830 false resIndex!32 resX!32))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34060 (_ BitVec 32)) SeekEntryResult!4830)

(assert (=> b!538372 (= lt!246803 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16365 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!538373 () Bool)

(declare-fun res!333731 () Bool)

(assert (=> b!538373 (=> (not res!333731) (not e!312186))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!538373 (= res!333731 (validKeyInArray!0 (select (arr!16365 a!3154) j!147)))))

(declare-fun res!333723 () Bool)

(assert (=> start!48892 (=> (not res!333723) (not e!312186))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48892 (= res!333723 (validMask!0 mask!3216))))

(assert (=> start!48892 e!312186))

(assert (=> start!48892 true))

(declare-fun array_inv!12139 (array!34060) Bool)

(assert (=> start!48892 (array_inv!12139 a!3154)))

(declare-fun b!538371 () Bool)

(declare-fun e!312185 () Bool)

(declare-fun e!312182 () Bool)

(assert (=> b!538371 (= e!312185 e!312182)))

(declare-fun res!333732 () Bool)

(assert (=> b!538371 (=> (not res!333732) (not e!312182))))

(declare-fun lt!246801 () (_ BitVec 32))

(assert (=> b!538371 (= res!333732 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246801 #b00000000000000000000000000000000) (bvslt lt!246801 (size!16729 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!538371 (= lt!246801 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!538374 () Bool)

(declare-fun res!333726 () Bool)

(assert (=> b!538374 (=> (not res!333726) (not e!312186))))

(assert (=> b!538374 (= res!333726 (validKeyInArray!0 k!1998))))

(declare-fun b!538375 () Bool)

(declare-fun e!312184 () Bool)

(assert (=> b!538375 (= e!312184 (not (or (bvslt mask!3216 #b00000000000000000000000000000000) (bvslt index!1177 (bvadd #b00000000000000000000000000000001 mask!3216)))))))

(assert (=> b!538375 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246801 (select (store (arr!16365 a!3154) i!1153 k!1998) j!147) (array!34061 (store (arr!16365 a!3154) i!1153 k!1998) (size!16729 a!3154)) mask!3216) lt!246797)))

(declare-datatypes ((Unit!16838 0))(
  ( (Unit!16839) )
))
(declare-fun lt!246802 () Unit!16838)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!34060 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16838)

(assert (=> b!538375 (= lt!246802 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3154 i!1153 k!1998 j!147 lt!246801 (bvadd #b00000000000000000000000000000001 x!1030) resIndex!32 resX!32 mask!3216))))

(declare-fun b!538376 () Bool)

(assert (=> b!538376 (= e!312186 e!312187)))

(declare-fun res!333728 () Bool)

(assert (=> b!538376 (=> (not res!333728) (not e!312187))))

(declare-fun lt!246799 () SeekEntryResult!4830)

(assert (=> b!538376 (= res!333728 (or (= lt!246799 (MissingZero!4830 i!1153)) (= lt!246799 (MissingVacant!4830 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34060 (_ BitVec 32)) SeekEntryResult!4830)

(assert (=> b!538376 (= lt!246799 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!538377 () Bool)

(assert (=> b!538377 (= e!312181 e!312185)))

(declare-fun res!333733 () Bool)

(assert (=> b!538377 (=> (not res!333733) (not e!312185))))

(declare-fun lt!246798 () SeekEntryResult!4830)

(assert (=> b!538377 (= res!333733 (and (= lt!246798 lt!246803) (not (= (select (arr!16365 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16365 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16365 a!3154) index!1177) (select (arr!16365 a!3154) j!147)))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!538377 (= lt!246798 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16365 a!3154) j!147) mask!3216) (select (arr!16365 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!538378 () Bool)

(declare-fun res!333729 () Bool)

(assert (=> b!538378 (=> (not res!333729) (not e!312187))))

(assert (=> b!538378 (= res!333729 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16729 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16729 a!3154)) (= (select (arr!16365 a!3154) resIndex!32) (select (arr!16365 a!3154) j!147))))))

(declare-fun b!538379 () Bool)

(assert (=> b!538379 (= e!312182 e!312184)))

(declare-fun res!333725 () Bool)

(assert (=> b!538379 (=> (not res!333725) (not e!312184))))

(declare-fun lt!246800 () SeekEntryResult!4830)

(assert (=> b!538379 (= res!333725 (and (= lt!246800 lt!246797) (= lt!246798 lt!246800)))))

(assert (=> b!538379 (= lt!246800 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246801 (select (arr!16365 a!3154) j!147) a!3154 mask!3216))))

(assert (= (and start!48892 res!333723) b!538369))

(assert (= (and b!538369 res!333727) b!538373))

(assert (= (and b!538373 res!333731) b!538374))

(assert (= (and b!538374 res!333726) b!538370))

(assert (= (and b!538370 res!333722) b!538376))

(assert (= (and b!538376 res!333728) b!538367))

(assert (= (and b!538367 res!333724) b!538368))

(assert (= (and b!538368 res!333730) b!538378))

(assert (= (and b!538378 res!333729) b!538372))

(assert (= (and b!538372 res!333734) b!538377))

(assert (= (and b!538377 res!333733) b!538371))

(assert (= (and b!538371 res!333732) b!538379))

(assert (= (and b!538379 res!333725) b!538375))

(declare-fun m!517507 () Bool)

(assert (=> b!538376 m!517507))

(declare-fun m!517509 () Bool)

(assert (=> b!538371 m!517509))

(declare-fun m!517511 () Bool)

(assert (=> b!538378 m!517511))

(declare-fun m!517513 () Bool)

(assert (=> b!538378 m!517513))

(declare-fun m!517515 () Bool)

(assert (=> b!538374 m!517515))

(declare-fun m!517517 () Bool)

(assert (=> b!538367 m!517517))

(assert (=> b!538372 m!517513))

(assert (=> b!538372 m!517513))

(declare-fun m!517519 () Bool)

(assert (=> b!538372 m!517519))

(declare-fun m!517521 () Bool)

(assert (=> start!48892 m!517521))

(declare-fun m!517523 () Bool)

(assert (=> start!48892 m!517523))

(declare-fun m!517525 () Bool)

(assert (=> b!538368 m!517525))

(declare-fun m!517527 () Bool)

(assert (=> b!538377 m!517527))

(assert (=> b!538377 m!517513))

(assert (=> b!538377 m!517513))

(declare-fun m!517529 () Bool)

(assert (=> b!538377 m!517529))

(assert (=> b!538377 m!517529))

(assert (=> b!538377 m!517513))

(declare-fun m!517531 () Bool)

(assert (=> b!538377 m!517531))

(declare-fun m!517533 () Bool)

(assert (=> b!538375 m!517533))

(declare-fun m!517535 () Bool)

(assert (=> b!538375 m!517535))

(assert (=> b!538375 m!517535))

(declare-fun m!517537 () Bool)

(assert (=> b!538375 m!517537))

(declare-fun m!517539 () Bool)

(assert (=> b!538375 m!517539))

(declare-fun m!517541 () Bool)

(assert (=> b!538370 m!517541))

(assert (=> b!538379 m!517513))

(assert (=> b!538379 m!517513))

(declare-fun m!517543 () Bool)

(assert (=> b!538379 m!517543))

(assert (=> b!538373 m!517513))

(assert (=> b!538373 m!517513))

(declare-fun m!517545 () Bool)

(assert (=> b!538373 m!517545))

(push 1)

(assert (not b!538368))

(assert (not start!48892))

(assert (not b!538371))

(assert (not b!538377))

(assert (not b!538375))

(assert (not b!538379))

(assert (not b!538376))

(assert (not b!538367))

(assert (not b!538373))

(assert (not b!538370))

(assert (not b!538372))

(assert (not b!538374))

(check-sat)

(pop 1)

(push 1)

(check-sat)

