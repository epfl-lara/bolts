; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48890 () Bool)

(assert start!48890)

(declare-fun b!538328 () Bool)

(declare-fun e!312161 () Bool)

(declare-fun e!312160 () Bool)

(assert (=> b!538328 (= e!312161 e!312160)))

(declare-fun res!333684 () Bool)

(assert (=> b!538328 (=> (not res!333684) (not e!312160))))

(declare-datatypes ((SeekEntryResult!4829 0))(
  ( (MissingZero!4829 (index!21540 (_ BitVec 32))) (Found!4829 (index!21541 (_ BitVec 32))) (Intermediate!4829 (undefined!5641 Bool) (index!21542 (_ BitVec 32)) (x!50487 (_ BitVec 32))) (Undefined!4829) (MissingVacant!4829 (index!21543 (_ BitVec 32))) )
))
(declare-fun lt!246776 () SeekEntryResult!4829)

(declare-fun lt!246780 () SeekEntryResult!4829)

(assert (=> b!538328 (= res!333684 (= lt!246776 lt!246780))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!538328 (= lt!246780 (Intermediate!4829 false resIndex!32 resX!32))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34058 0))(
  ( (array!34059 (arr!16364 (Array (_ BitVec 32) (_ BitVec 64))) (size!16728 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34058)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34058 (_ BitVec 32)) SeekEntryResult!4829)

(assert (=> b!538328 (= lt!246776 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16364 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!538329 () Bool)

(declare-fun e!312166 () Bool)

(declare-fun e!312165 () Bool)

(assert (=> b!538329 (= e!312166 e!312165)))

(declare-fun res!333689 () Bool)

(assert (=> b!538329 (=> (not res!333689) (not e!312165))))

(declare-fun lt!246778 () SeekEntryResult!4829)

(declare-fun lt!246777 () SeekEntryResult!4829)

(assert (=> b!538329 (= res!333689 (and (= lt!246777 lt!246780) (= lt!246778 lt!246777)))))

(declare-fun lt!246781 () (_ BitVec 32))

(assert (=> b!538329 (= lt!246777 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246781 (select (arr!16364 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!538330 () Bool)

(declare-fun e!312162 () Bool)

(assert (=> b!538330 (= e!312162 e!312161)))

(declare-fun res!333692 () Bool)

(assert (=> b!538330 (=> (not res!333692) (not e!312161))))

(declare-fun lt!246779 () SeekEntryResult!4829)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!538330 (= res!333692 (or (= lt!246779 (MissingZero!4829 i!1153)) (= lt!246779 (MissingVacant!4829 i!1153))))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34058 (_ BitVec 32)) SeekEntryResult!4829)

(assert (=> b!538330 (= lt!246779 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!538331 () Bool)

(declare-fun res!333687 () Bool)

(assert (=> b!538331 (=> (not res!333687) (not e!312162))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!538331 (= res!333687 (validKeyInArray!0 (select (arr!16364 a!3154) j!147)))))

(declare-fun b!538332 () Bool)

(declare-fun res!333685 () Bool)

(assert (=> b!538332 (=> (not res!333685) (not e!312162))))

(assert (=> b!538332 (= res!333685 (validKeyInArray!0 k!1998))))

(declare-fun res!333693 () Bool)

(assert (=> start!48890 (=> (not res!333693) (not e!312162))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48890 (= res!333693 (validMask!0 mask!3216))))

(assert (=> start!48890 e!312162))

(assert (=> start!48890 true))

(declare-fun array_inv!12138 (array!34058) Bool)

(assert (=> start!48890 (array_inv!12138 a!3154)))

(declare-fun b!538333 () Bool)

(declare-fun res!333695 () Bool)

(assert (=> b!538333 (=> (not res!333695) (not e!312161))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34058 (_ BitVec 32)) Bool)

(assert (=> b!538333 (= res!333695 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!538334 () Bool)

(declare-fun e!312163 () Bool)

(assert (=> b!538334 (= e!312160 e!312163)))

(declare-fun res!333690 () Bool)

(assert (=> b!538334 (=> (not res!333690) (not e!312163))))

(assert (=> b!538334 (= res!333690 (and (= lt!246778 lt!246776) (not (= (select (arr!16364 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16364 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16364 a!3154) index!1177) (select (arr!16364 a!3154) j!147)))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!538334 (= lt!246778 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16364 a!3154) j!147) mask!3216) (select (arr!16364 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!538335 () Bool)

(declare-fun res!333694 () Bool)

(assert (=> b!538335 (=> (not res!333694) (not e!312161))))

(assert (=> b!538335 (= res!333694 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16728 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16728 a!3154)) (= (select (arr!16364 a!3154) resIndex!32) (select (arr!16364 a!3154) j!147))))))

(declare-fun b!538336 () Bool)

(declare-fun res!333691 () Bool)

(assert (=> b!538336 (=> (not res!333691) (not e!312162))))

(assert (=> b!538336 (= res!333691 (and (= (size!16728 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16728 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16728 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!538337 () Bool)

(assert (=> b!538337 (= e!312165 (not true))))

(assert (=> b!538337 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246781 (select (store (arr!16364 a!3154) i!1153 k!1998) j!147) (array!34059 (store (arr!16364 a!3154) i!1153 k!1998) (size!16728 a!3154)) mask!3216) lt!246780)))

(declare-datatypes ((Unit!16836 0))(
  ( (Unit!16837) )
))
(declare-fun lt!246782 () Unit!16836)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!34058 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16836)

(assert (=> b!538337 (= lt!246782 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3154 i!1153 k!1998 j!147 lt!246781 (bvadd #b00000000000000000000000000000001 x!1030) resIndex!32 resX!32 mask!3216))))

(declare-fun b!538338 () Bool)

(declare-fun res!333688 () Bool)

(assert (=> b!538338 (=> (not res!333688) (not e!312162))))

(declare-fun arrayContainsKey!0 (array!34058 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!538338 (= res!333688 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!538339 () Bool)

(assert (=> b!538339 (= e!312163 e!312166)))

(declare-fun res!333686 () Bool)

(assert (=> b!538339 (=> (not res!333686) (not e!312166))))

(assert (=> b!538339 (= res!333686 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246781 #b00000000000000000000000000000000) (bvslt lt!246781 (size!16728 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!538339 (= lt!246781 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!538340 () Bool)

(declare-fun res!333683 () Bool)

(assert (=> b!538340 (=> (not res!333683) (not e!312161))))

(declare-datatypes ((List!10536 0))(
  ( (Nil!10533) (Cons!10532 (h!11475 (_ BitVec 64)) (t!16772 List!10536)) )
))
(declare-fun arrayNoDuplicates!0 (array!34058 (_ BitVec 32) List!10536) Bool)

(assert (=> b!538340 (= res!333683 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10533))))

(assert (= (and start!48890 res!333693) b!538336))

(assert (= (and b!538336 res!333691) b!538331))

(assert (= (and b!538331 res!333687) b!538332))

(assert (= (and b!538332 res!333685) b!538338))

(assert (= (and b!538338 res!333688) b!538330))

(assert (= (and b!538330 res!333692) b!538333))

(assert (= (and b!538333 res!333695) b!538340))

(assert (= (and b!538340 res!333683) b!538335))

(assert (= (and b!538335 res!333694) b!538328))

(assert (= (and b!538328 res!333684) b!538334))

(assert (= (and b!538334 res!333690) b!538339))

(assert (= (and b!538339 res!333686) b!538329))

(assert (= (and b!538329 res!333689) b!538337))

(declare-fun m!517467 () Bool)

(assert (=> start!48890 m!517467))

(declare-fun m!517469 () Bool)

(assert (=> start!48890 m!517469))

(declare-fun m!517471 () Bool)

(assert (=> b!538333 m!517471))

(declare-fun m!517473 () Bool)

(assert (=> b!538335 m!517473))

(declare-fun m!517475 () Bool)

(assert (=> b!538335 m!517475))

(declare-fun m!517477 () Bool)

(assert (=> b!538340 m!517477))

(declare-fun m!517479 () Bool)

(assert (=> b!538330 m!517479))

(declare-fun m!517481 () Bool)

(assert (=> b!538339 m!517481))

(assert (=> b!538329 m!517475))

(assert (=> b!538329 m!517475))

(declare-fun m!517483 () Bool)

(assert (=> b!538329 m!517483))

(declare-fun m!517485 () Bool)

(assert (=> b!538337 m!517485))

(declare-fun m!517487 () Bool)

(assert (=> b!538337 m!517487))

(assert (=> b!538337 m!517487))

(declare-fun m!517489 () Bool)

(assert (=> b!538337 m!517489))

(declare-fun m!517491 () Bool)

(assert (=> b!538337 m!517491))

(assert (=> b!538328 m!517475))

(assert (=> b!538328 m!517475))

(declare-fun m!517493 () Bool)

(assert (=> b!538328 m!517493))

(assert (=> b!538331 m!517475))

(assert (=> b!538331 m!517475))

(declare-fun m!517495 () Bool)

(assert (=> b!538331 m!517495))

(declare-fun m!517497 () Bool)

(assert (=> b!538332 m!517497))

(declare-fun m!517499 () Bool)

(assert (=> b!538334 m!517499))

(assert (=> b!538334 m!517475))

(assert (=> b!538334 m!517475))

(declare-fun m!517501 () Bool)

(assert (=> b!538334 m!517501))

(assert (=> b!538334 m!517501))

(assert (=> b!538334 m!517475))

(declare-fun m!517503 () Bool)

(assert (=> b!538334 m!517503))

(declare-fun m!517505 () Bool)

(assert (=> b!538338 m!517505))

(push 1)

