; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48886 () Bool)

(assert start!48886)

(declare-fun b!538250 () Bool)

(declare-fun e!312121 () Bool)

(declare-fun e!312124 () Bool)

(assert (=> b!538250 (= e!312121 e!312124)))

(declare-fun res!333613 () Bool)

(assert (=> b!538250 (=> (not res!333613) (not e!312124))))

(declare-datatypes ((SeekEntryResult!4827 0))(
  ( (MissingZero!4827 (index!21532 (_ BitVec 32))) (Found!4827 (index!21533 (_ BitVec 32))) (Intermediate!4827 (undefined!5639 Bool) (index!21534 (_ BitVec 32)) (x!50485 (_ BitVec 32))) (Undefined!4827) (MissingVacant!4827 (index!21535 (_ BitVec 32))) )
))
(declare-fun lt!246740 () SeekEntryResult!4827)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!538250 (= res!333613 (or (= lt!246740 (MissingZero!4827 i!1153)) (= lt!246740 (MissingVacant!4827 i!1153))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-datatypes ((array!34054 0))(
  ( (array!34055 (arr!16362 (Array (_ BitVec 32) (_ BitVec 64))) (size!16726 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34054)

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34054 (_ BitVec 32)) SeekEntryResult!4827)

(assert (=> b!538250 (= lt!246740 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!538251 () Bool)

(declare-fun res!333606 () Bool)

(assert (=> b!538251 (=> (not res!333606) (not e!312124))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34054 (_ BitVec 32)) Bool)

(assert (=> b!538251 (= res!333606 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!538252 () Bool)

(declare-fun res!333616 () Bool)

(assert (=> b!538252 (=> (not res!333616) (not e!312121))))

(declare-fun arrayContainsKey!0 (array!34054 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!538252 (= res!333616 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!538253 () Bool)

(declare-fun res!333617 () Bool)

(assert (=> b!538253 (=> (not res!333617) (not e!312124))))

(declare-datatypes ((List!10534 0))(
  ( (Nil!10531) (Cons!10530 (h!11473 (_ BitVec 64)) (t!16770 List!10534)) )
))
(declare-fun arrayNoDuplicates!0 (array!34054 (_ BitVec 32) List!10534) Bool)

(assert (=> b!538253 (= res!333617 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10531))))

(declare-fun b!538254 () Bool)

(declare-fun res!333612 () Bool)

(assert (=> b!538254 (=> (not res!333612) (not e!312121))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!538254 (= res!333612 (validKeyInArray!0 k!1998))))

(declare-fun b!538256 () Bool)

(declare-fun e!312118 () Bool)

(declare-fun e!312123 () Bool)

(assert (=> b!538256 (= e!312118 e!312123)))

(declare-fun res!333609 () Bool)

(assert (=> b!538256 (=> (not res!333609) (not e!312123))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun lt!246739 () SeekEntryResult!4827)

(declare-fun j!147 () (_ BitVec 32))

(declare-fun lt!246736 () SeekEntryResult!4827)

(assert (=> b!538256 (= res!333609 (and (= lt!246736 lt!246739) (not (= (select (arr!16362 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16362 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16362 a!3154) index!1177) (select (arr!16362 a!3154) j!147)))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34054 (_ BitVec 32)) SeekEntryResult!4827)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!538256 (= lt!246736 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16362 a!3154) j!147) mask!3216) (select (arr!16362 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!538257 () Bool)

(declare-fun e!312119 () Bool)

(assert (=> b!538257 (= e!312119 (not true))))

(declare-fun lt!246737 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun lt!246735 () SeekEntryResult!4827)

(assert (=> b!538257 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246737 (select (store (arr!16362 a!3154) i!1153 k!1998) j!147) (array!34055 (store (arr!16362 a!3154) i!1153 k!1998) (size!16726 a!3154)) mask!3216) lt!246735)))

(declare-datatypes ((Unit!16832 0))(
  ( (Unit!16833) )
))
(declare-fun lt!246738 () Unit!16832)

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!34054 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16832)

(assert (=> b!538257 (= lt!246738 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3154 i!1153 k!1998 j!147 lt!246737 (bvadd #b00000000000000000000000000000001 x!1030) resIndex!32 resX!32 mask!3216))))

(declare-fun b!538258 () Bool)

(declare-fun res!333611 () Bool)

(assert (=> b!538258 (=> (not res!333611) (not e!312121))))

(assert (=> b!538258 (= res!333611 (validKeyInArray!0 (select (arr!16362 a!3154) j!147)))))

(declare-fun b!538259 () Bool)

(declare-fun e!312120 () Bool)

(assert (=> b!538259 (= e!312123 e!312120)))

(declare-fun res!333607 () Bool)

(assert (=> b!538259 (=> (not res!333607) (not e!312120))))

(assert (=> b!538259 (= res!333607 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246737 #b00000000000000000000000000000000) (bvslt lt!246737 (size!16726 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!538259 (= lt!246737 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun res!333608 () Bool)

(assert (=> start!48886 (=> (not res!333608) (not e!312121))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48886 (= res!333608 (validMask!0 mask!3216))))

(assert (=> start!48886 e!312121))

(assert (=> start!48886 true))

(declare-fun array_inv!12136 (array!34054) Bool)

(assert (=> start!48886 (array_inv!12136 a!3154)))

(declare-fun b!538255 () Bool)

(declare-fun res!333605 () Bool)

(assert (=> b!538255 (=> (not res!333605) (not e!312124))))

(assert (=> b!538255 (= res!333605 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16726 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16726 a!3154)) (= (select (arr!16362 a!3154) resIndex!32) (select (arr!16362 a!3154) j!147))))))

(declare-fun b!538260 () Bool)

(assert (=> b!538260 (= e!312124 e!312118)))

(declare-fun res!333614 () Bool)

(assert (=> b!538260 (=> (not res!333614) (not e!312118))))

(assert (=> b!538260 (= res!333614 (= lt!246739 lt!246735))))

(assert (=> b!538260 (= lt!246735 (Intermediate!4827 false resIndex!32 resX!32))))

(assert (=> b!538260 (= lt!246739 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16362 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!538261 () Bool)

(declare-fun res!333610 () Bool)

(assert (=> b!538261 (=> (not res!333610) (not e!312121))))

(assert (=> b!538261 (= res!333610 (and (= (size!16726 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16726 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16726 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!538262 () Bool)

(assert (=> b!538262 (= e!312120 e!312119)))

(declare-fun res!333615 () Bool)

(assert (=> b!538262 (=> (not res!333615) (not e!312119))))

(declare-fun lt!246734 () SeekEntryResult!4827)

(assert (=> b!538262 (= res!333615 (and (= lt!246734 lt!246735) (= lt!246736 lt!246734)))))

(assert (=> b!538262 (= lt!246734 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246737 (select (arr!16362 a!3154) j!147) a!3154 mask!3216))))

(assert (= (and start!48886 res!333608) b!538261))

(assert (= (and b!538261 res!333610) b!538258))

(assert (= (and b!538258 res!333611) b!538254))

(assert (= (and b!538254 res!333612) b!538252))

(assert (= (and b!538252 res!333616) b!538250))

(assert (= (and b!538250 res!333613) b!538251))

(assert (= (and b!538251 res!333606) b!538253))

(assert (= (and b!538253 res!333617) b!538255))

(assert (= (and b!538255 res!333605) b!538260))

(assert (= (and b!538260 res!333614) b!538256))

(assert (= (and b!538256 res!333609) b!538259))

(assert (= (and b!538259 res!333607) b!538262))

(assert (= (and b!538262 res!333615) b!538257))

(declare-fun m!517387 () Bool)

(assert (=> b!538251 m!517387))

(declare-fun m!517389 () Bool)

(assert (=> b!538254 m!517389))

(declare-fun m!517391 () Bool)

(assert (=> b!538259 m!517391))

(declare-fun m!517393 () Bool)

(assert (=> b!538262 m!517393))

(assert (=> b!538262 m!517393))

(declare-fun m!517395 () Bool)

(assert (=> b!538262 m!517395))

(declare-fun m!517397 () Bool)

(assert (=> b!538253 m!517397))

(declare-fun m!517399 () Bool)

(assert (=> b!538255 m!517399))

(assert (=> b!538255 m!517393))

(declare-fun m!517401 () Bool)

(assert (=> start!48886 m!517401))

(declare-fun m!517403 () Bool)

(assert (=> start!48886 m!517403))

(assert (=> b!538260 m!517393))

(assert (=> b!538260 m!517393))

(declare-fun m!517405 () Bool)

(assert (=> b!538260 m!517405))

(declare-fun m!517407 () Bool)

(assert (=> b!538252 m!517407))

(declare-fun m!517409 () Bool)

(assert (=> b!538250 m!517409))

(declare-fun m!517411 () Bool)

(assert (=> b!538256 m!517411))

(assert (=> b!538256 m!517393))

(assert (=> b!538256 m!517393))

(declare-fun m!517413 () Bool)

(assert (=> b!538256 m!517413))

(assert (=> b!538256 m!517413))

(assert (=> b!538256 m!517393))

(declare-fun m!517415 () Bool)

(assert (=> b!538256 m!517415))

(assert (=> b!538258 m!517393))

(assert (=> b!538258 m!517393))

(declare-fun m!517417 () Bool)

(assert (=> b!538258 m!517417))

(declare-fun m!517419 () Bool)

(assert (=> b!538257 m!517419))

(declare-fun m!517421 () Bool)

(assert (=> b!538257 m!517421))

(assert (=> b!538257 m!517421))

(declare-fun m!517423 () Bool)

(assert (=> b!538257 m!517423))

(declare-fun m!517425 () Bool)

(assert (=> b!538257 m!517425))

(push 1)

