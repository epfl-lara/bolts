; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49314 () Bool)

(assert start!49314)

(declare-fun b!542667 () Bool)

(declare-fun res!337375 () Bool)

(declare-fun e!314000 () Bool)

(assert (=> b!542667 (=> (not res!337375) (not e!314000))))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34278 0))(
  ( (array!34279 (arr!16468 (Array (_ BitVec 32) (_ BitVec 64))) (size!16832 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34278)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!542667 (= res!337375 (and (= (size!16832 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16832 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16832 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!542668 () Bool)

(declare-fun e!314002 () Bool)

(assert (=> b!542668 (= e!314002 false)))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun lt!247990 () (_ BitVec 32))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!542668 (= lt!247990 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!542669 () Bool)

(declare-fun res!337374 () Bool)

(declare-fun e!314001 () Bool)

(assert (=> b!542669 (=> (not res!337374) (not e!314001))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!542669 (= res!337374 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16832 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16832 a!3154)) (= (select (arr!16468 a!3154) resIndex!32) (select (arr!16468 a!3154) j!147))))))

(declare-fun b!542671 () Bool)

(assert (=> b!542671 (= e!314001 e!314002)))

(declare-fun res!337379 () Bool)

(assert (=> b!542671 (=> (not res!337379) (not e!314002))))

(declare-datatypes ((SeekEntryResult!4933 0))(
  ( (MissingZero!4933 (index!21956 (_ BitVec 32))) (Found!4933 (index!21957 (_ BitVec 32))) (Intermediate!4933 (undefined!5745 Bool) (index!21958 (_ BitVec 32)) (x!50895 (_ BitVec 32))) (Undefined!4933) (MissingVacant!4933 (index!21959 (_ BitVec 32))) )
))
(declare-fun lt!247989 () SeekEntryResult!4933)

(assert (=> b!542671 (= res!337379 (= lt!247989 (Intermediate!4933 false resIndex!32 resX!32)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34278 (_ BitVec 32)) SeekEntryResult!4933)

(assert (=> b!542671 (= lt!247989 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16468 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!542672 () Bool)

(declare-fun res!337377 () Bool)

(assert (=> b!542672 (=> (not res!337377) (not e!314000))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!542672 (= res!337377 (validKeyInArray!0 (select (arr!16468 a!3154) j!147)))))

(declare-fun b!542673 () Bool)

(declare-fun res!337369 () Bool)

(assert (=> b!542673 (=> (not res!337369) (not e!314001))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34278 (_ BitVec 32)) Bool)

(assert (=> b!542673 (= res!337369 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!542674 () Bool)

(declare-fun res!337368 () Bool)

(assert (=> b!542674 (=> (not res!337368) (not e!314002))))

(assert (=> b!542674 (= res!337368 (and (not (= (select (arr!16468 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16468 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16468 a!3154) index!1177) (select (arr!16468 a!3154) j!147)))))))

(declare-fun b!542675 () Bool)

(assert (=> b!542675 (= e!314000 e!314001)))

(declare-fun res!337373 () Bool)

(assert (=> b!542675 (=> (not res!337373) (not e!314001))))

(declare-fun lt!247991 () SeekEntryResult!4933)

(assert (=> b!542675 (= res!337373 (or (= lt!247991 (MissingZero!4933 i!1153)) (= lt!247991 (MissingVacant!4933 i!1153))))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34278 (_ BitVec 32)) SeekEntryResult!4933)

(assert (=> b!542675 (= lt!247991 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!542676 () Bool)

(declare-fun res!337372 () Bool)

(assert (=> b!542676 (=> (not res!337372) (not e!314002))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!542676 (= res!337372 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16468 a!3154) j!147) mask!3216) (select (arr!16468 a!3154) j!147) a!3154 mask!3216) lt!247989))))

(declare-fun b!542677 () Bool)

(declare-fun res!337370 () Bool)

(assert (=> b!542677 (=> (not res!337370) (not e!314000))))

(declare-fun arrayContainsKey!0 (array!34278 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!542677 (= res!337370 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!542678 () Bool)

(declare-fun res!337371 () Bool)

(assert (=> b!542678 (=> (not res!337371) (not e!314000))))

(assert (=> b!542678 (= res!337371 (validKeyInArray!0 k0!1998))))

(declare-fun res!337376 () Bool)

(assert (=> start!49314 (=> (not res!337376) (not e!314000))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49314 (= res!337376 (validMask!0 mask!3216))))

(assert (=> start!49314 e!314000))

(assert (=> start!49314 true))

(declare-fun array_inv!12242 (array!34278) Bool)

(assert (=> start!49314 (array_inv!12242 a!3154)))

(declare-fun b!542670 () Bool)

(declare-fun res!337378 () Bool)

(assert (=> b!542670 (=> (not res!337378) (not e!314001))))

(declare-datatypes ((List!10640 0))(
  ( (Nil!10637) (Cons!10636 (h!11591 (_ BitVec 64)) (t!16876 List!10640)) )
))
(declare-fun arrayNoDuplicates!0 (array!34278 (_ BitVec 32) List!10640) Bool)

(assert (=> b!542670 (= res!337378 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10637))))

(assert (= (and start!49314 res!337376) b!542667))

(assert (= (and b!542667 res!337375) b!542672))

(assert (= (and b!542672 res!337377) b!542678))

(assert (= (and b!542678 res!337371) b!542677))

(assert (= (and b!542677 res!337370) b!542675))

(assert (= (and b!542675 res!337373) b!542673))

(assert (= (and b!542673 res!337369) b!542670))

(assert (= (and b!542670 res!337378) b!542669))

(assert (= (and b!542669 res!337374) b!542671))

(assert (= (and b!542671 res!337379) b!542676))

(assert (= (and b!542676 res!337372) b!542674))

(assert (= (and b!542674 res!337368) b!542668))

(declare-fun m!520891 () Bool)

(assert (=> b!542672 m!520891))

(assert (=> b!542672 m!520891))

(declare-fun m!520893 () Bool)

(assert (=> b!542672 m!520893))

(declare-fun m!520895 () Bool)

(assert (=> b!542674 m!520895))

(assert (=> b!542674 m!520891))

(declare-fun m!520897 () Bool)

(assert (=> start!49314 m!520897))

(declare-fun m!520899 () Bool)

(assert (=> start!49314 m!520899))

(declare-fun m!520901 () Bool)

(assert (=> b!542677 m!520901))

(declare-fun m!520903 () Bool)

(assert (=> b!542673 m!520903))

(declare-fun m!520905 () Bool)

(assert (=> b!542678 m!520905))

(declare-fun m!520907 () Bool)

(assert (=> b!542668 m!520907))

(declare-fun m!520909 () Bool)

(assert (=> b!542670 m!520909))

(assert (=> b!542671 m!520891))

(assert (=> b!542671 m!520891))

(declare-fun m!520911 () Bool)

(assert (=> b!542671 m!520911))

(declare-fun m!520913 () Bool)

(assert (=> b!542675 m!520913))

(declare-fun m!520915 () Bool)

(assert (=> b!542669 m!520915))

(assert (=> b!542669 m!520891))

(assert (=> b!542676 m!520891))

(assert (=> b!542676 m!520891))

(declare-fun m!520917 () Bool)

(assert (=> b!542676 m!520917))

(assert (=> b!542676 m!520917))

(assert (=> b!542676 m!520891))

(declare-fun m!520919 () Bool)

(assert (=> b!542676 m!520919))

(check-sat (not b!542678) (not b!542670) (not b!542673) (not b!542671) (not start!49314) (not b!542677) (not b!542668) (not b!542672) (not b!542676) (not b!542675))
