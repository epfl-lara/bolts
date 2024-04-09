; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48842 () Bool)

(assert start!48842)

(declare-fun res!332750 () Bool)

(declare-fun e!311751 () Bool)

(assert (=> start!48842 (=> (not res!332750) (not e!311751))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48842 (= res!332750 (validMask!0 mask!3216))))

(assert (=> start!48842 e!311751))

(assert (=> start!48842 true))

(declare-datatypes ((array!34010 0))(
  ( (array!34011 (arr!16340 (Array (_ BitVec 32) (_ BitVec 64))) (size!16704 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34010)

(declare-fun array_inv!12114 (array!34010) Bool)

(assert (=> start!48842 (array_inv!12114 a!3154)))

(declare-fun b!537392 () Bool)

(declare-fun res!332757 () Bool)

(assert (=> b!537392 (=> (not res!332757) (not e!311751))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!537392 (= res!332757 (validKeyInArray!0 k!1998))))

(declare-fun b!537393 () Bool)

(declare-fun res!332749 () Bool)

(assert (=> b!537393 (=> (not res!332749) (not e!311751))))

(declare-fun arrayContainsKey!0 (array!34010 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!537393 (= res!332749 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!537394 () Bool)

(declare-fun e!311750 () Bool)

(assert (=> b!537394 (= e!311750 false)))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun lt!246410 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4805 0))(
  ( (MissingZero!4805 (index!21444 (_ BitVec 32))) (Found!4805 (index!21445 (_ BitVec 32))) (Intermediate!4805 (undefined!5617 Bool) (index!21446 (_ BitVec 32)) (x!50399 (_ BitVec 32))) (Undefined!4805) (MissingVacant!4805 (index!21447 (_ BitVec 32))) )
))
(declare-fun lt!246411 () SeekEntryResult!4805)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34010 (_ BitVec 32)) SeekEntryResult!4805)

(assert (=> b!537394 (= lt!246411 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246410 (select (arr!16340 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!537395 () Bool)

(declare-fun res!332758 () Bool)

(declare-fun e!311749 () Bool)

(assert (=> b!537395 (=> (not res!332758) (not e!311749))))

(declare-datatypes ((List!10512 0))(
  ( (Nil!10509) (Cons!10508 (h!11451 (_ BitVec 64)) (t!16748 List!10512)) )
))
(declare-fun arrayNoDuplicates!0 (array!34010 (_ BitVec 32) List!10512) Bool)

(assert (=> b!537395 (= res!332758 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10509))))

(declare-fun b!537396 () Bool)

(declare-fun res!332759 () Bool)

(assert (=> b!537396 (=> (not res!332759) (not e!311749))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34010 (_ BitVec 32)) Bool)

(assert (=> b!537396 (= res!332759 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!537397 () Bool)

(declare-fun res!332751 () Bool)

(assert (=> b!537397 (=> (not res!332751) (not e!311751))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!537397 (= res!332751 (and (= (size!16704 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16704 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16704 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!537398 () Bool)

(declare-fun res!332748 () Bool)

(declare-fun e!311752 () Bool)

(assert (=> b!537398 (=> (not res!332748) (not e!311752))))

(declare-fun lt!246412 () SeekEntryResult!4805)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!537398 (= res!332748 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16340 a!3154) j!147) mask!3216) (select (arr!16340 a!3154) j!147) a!3154 mask!3216) lt!246412))))

(declare-fun b!537399 () Bool)

(assert (=> b!537399 (= e!311749 e!311752)))

(declare-fun res!332755 () Bool)

(assert (=> b!537399 (=> (not res!332755) (not e!311752))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!537399 (= res!332755 (= lt!246412 (Intermediate!4805 false resIndex!32 resX!32)))))

(declare-fun index!1177 () (_ BitVec 32))

(assert (=> b!537399 (= lt!246412 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16340 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!537400 () Bool)

(assert (=> b!537400 (= e!311751 e!311749)))

(declare-fun res!332754 () Bool)

(assert (=> b!537400 (=> (not res!332754) (not e!311749))))

(declare-fun lt!246413 () SeekEntryResult!4805)

(assert (=> b!537400 (= res!332754 (or (= lt!246413 (MissingZero!4805 i!1153)) (= lt!246413 (MissingVacant!4805 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34010 (_ BitVec 32)) SeekEntryResult!4805)

(assert (=> b!537400 (= lt!246413 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!537401 () Bool)

(assert (=> b!537401 (= e!311752 e!311750)))

(declare-fun res!332756 () Bool)

(assert (=> b!537401 (=> (not res!332756) (not e!311750))))

(assert (=> b!537401 (= res!332756 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246410 #b00000000000000000000000000000000) (bvslt lt!246410 (size!16704 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!537401 (= lt!246410 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!537402 () Bool)

(declare-fun res!332752 () Bool)

(assert (=> b!537402 (=> (not res!332752) (not e!311752))))

(assert (=> b!537402 (= res!332752 (and (not (= (select (arr!16340 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16340 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16340 a!3154) index!1177) (select (arr!16340 a!3154) j!147)))))))

(declare-fun b!537403 () Bool)

(declare-fun res!332753 () Bool)

(assert (=> b!537403 (=> (not res!332753) (not e!311751))))

(assert (=> b!537403 (= res!332753 (validKeyInArray!0 (select (arr!16340 a!3154) j!147)))))

(declare-fun b!537404 () Bool)

(declare-fun res!332747 () Bool)

(assert (=> b!537404 (=> (not res!332747) (not e!311749))))

(assert (=> b!537404 (= res!332747 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16704 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16704 a!3154)) (= (select (arr!16340 a!3154) resIndex!32) (select (arr!16340 a!3154) j!147))))))

(assert (= (and start!48842 res!332750) b!537397))

(assert (= (and b!537397 res!332751) b!537403))

(assert (= (and b!537403 res!332753) b!537392))

(assert (= (and b!537392 res!332757) b!537393))

(assert (= (and b!537393 res!332749) b!537400))

(assert (= (and b!537400 res!332754) b!537396))

(assert (= (and b!537396 res!332759) b!537395))

(assert (= (and b!537395 res!332758) b!537404))

(assert (= (and b!537404 res!332747) b!537399))

(assert (= (and b!537399 res!332755) b!537398))

(assert (= (and b!537398 res!332748) b!537402))

(assert (= (and b!537402 res!332752) b!537401))

(assert (= (and b!537401 res!332756) b!537394))

(declare-fun m!516635 () Bool)

(assert (=> b!537395 m!516635))

(declare-fun m!516637 () Bool)

(assert (=> b!537396 m!516637))

(declare-fun m!516639 () Bool)

(assert (=> b!537398 m!516639))

(assert (=> b!537398 m!516639))

(declare-fun m!516641 () Bool)

(assert (=> b!537398 m!516641))

(assert (=> b!537398 m!516641))

(assert (=> b!537398 m!516639))

(declare-fun m!516643 () Bool)

(assert (=> b!537398 m!516643))

(declare-fun m!516645 () Bool)

(assert (=> start!48842 m!516645))

(declare-fun m!516647 () Bool)

(assert (=> start!48842 m!516647))

(assert (=> b!537394 m!516639))

(assert (=> b!537394 m!516639))

(declare-fun m!516649 () Bool)

(assert (=> b!537394 m!516649))

(assert (=> b!537403 m!516639))

(assert (=> b!537403 m!516639))

(declare-fun m!516651 () Bool)

(assert (=> b!537403 m!516651))

(declare-fun m!516653 () Bool)

(assert (=> b!537392 m!516653))

(declare-fun m!516655 () Bool)

(assert (=> b!537400 m!516655))

(declare-fun m!516657 () Bool)

(assert (=> b!537401 m!516657))

(declare-fun m!516659 () Bool)

(assert (=> b!537393 m!516659))

(assert (=> b!537399 m!516639))

(assert (=> b!537399 m!516639))

(declare-fun m!516661 () Bool)

(assert (=> b!537399 m!516661))

(declare-fun m!516663 () Bool)

(assert (=> b!537402 m!516663))

(assert (=> b!537402 m!516639))

(declare-fun m!516665 () Bool)

(assert (=> b!537404 m!516665))

(assert (=> b!537404 m!516639))

(push 1)

(assert (not b!537400))

(assert (not b!537398))

(assert (not b!537392))

(assert (not b!537393))

(assert (not b!537394))

