; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49614 () Bool)

(assert start!49614)

(declare-fun b!545424 () Bool)

(declare-fun e!315265 () Bool)

(declare-fun e!315264 () Bool)

(assert (=> b!545424 (= e!315265 e!315264)))

(declare-fun res!339507 () Bool)

(assert (=> b!545424 (=> (not res!339507) (not e!315264))))

(declare-datatypes ((SeekEntryResult!4981 0))(
  ( (MissingZero!4981 (index!22148 (_ BitVec 32))) (Found!4981 (index!22149 (_ BitVec 32))) (Intermediate!4981 (undefined!5793 Bool) (index!22150 (_ BitVec 32)) (x!51104 (_ BitVec 32))) (Undefined!4981) (MissingVacant!4981 (index!22151 (_ BitVec 32))) )
))
(declare-fun lt!248874 () SeekEntryResult!4981)

(declare-fun lt!248876 () SeekEntryResult!4981)

(assert (=> b!545424 (= res!339507 (= lt!248874 lt!248876))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!545424 (= lt!248876 (Intermediate!4981 false resIndex!32 resX!32))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34383 0))(
  ( (array!34384 (arr!16516 (Array (_ BitVec 32) (_ BitVec 64))) (size!16880 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34383)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34383 (_ BitVec 32)) SeekEntryResult!4981)

(assert (=> b!545424 (= lt!248874 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16516 a!3154) j!147) a!3154 mask!3216))))

(declare-fun res!339508 () Bool)

(declare-fun e!315266 () Bool)

(assert (=> start!49614 (=> (not res!339508) (not e!315266))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49614 (= res!339508 (validMask!0 mask!3216))))

(assert (=> start!49614 e!315266))

(assert (=> start!49614 true))

(declare-fun array_inv!12290 (array!34383) Bool)

(assert (=> start!49614 (array_inv!12290 a!3154)))

(declare-fun b!545425 () Bool)

(declare-fun res!339512 () Bool)

(assert (=> b!545425 (=> (not res!339512) (not e!315266))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!545425 (= res!339512 (validKeyInArray!0 k0!1998))))

(declare-fun b!545426 () Bool)

(declare-fun res!339502 () Bool)

(assert (=> b!545426 (=> (not res!339502) (not e!315265))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34383 (_ BitVec 32)) Bool)

(assert (=> b!545426 (= res!339502 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!545427 () Bool)

(declare-fun e!315267 () Bool)

(assert (=> b!545427 (= e!315264 e!315267)))

(declare-fun res!339509 () Bool)

(assert (=> b!545427 (=> (not res!339509) (not e!315267))))

(declare-fun lt!248875 () SeekEntryResult!4981)

(assert (=> b!545427 (= res!339509 (and (= lt!248875 lt!248874) (not (= (select (arr!16516 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16516 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16516 a!3154) index!1177) (select (arr!16516 a!3154) j!147)))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!545427 (= lt!248875 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16516 a!3154) j!147) mask!3216) (select (arr!16516 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!545428 () Bool)

(declare-fun res!339511 () Bool)

(assert (=> b!545428 (=> (not res!339511) (not e!315265))))

(declare-datatypes ((List!10688 0))(
  ( (Nil!10685) (Cons!10684 (h!11648 (_ BitVec 64)) (t!16924 List!10688)) )
))
(declare-fun arrayNoDuplicates!0 (array!34383 (_ BitVec 32) List!10688) Bool)

(assert (=> b!545428 (= res!339511 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10685))))

(declare-fun lt!248877 () SeekEntryResult!4981)

(declare-fun e!315263 () Bool)

(declare-fun b!545429 () Bool)

(assert (=> b!545429 (= e!315263 (and (= lt!248877 lt!248876) (= lt!248875 lt!248877) (bvsge (bvsub #b01111111111111111111111111111110 (bvadd #b00000000000000000000000000000001 x!1030)) (bvsub #b01111111111111111111111111111110 x!1030))))))

(declare-fun lt!248879 () (_ BitVec 32))

(assert (=> b!545429 (= lt!248877 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!248879 (select (arr!16516 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!545430 () Bool)

(declare-fun res!339503 () Bool)

(assert (=> b!545430 (=> (not res!339503) (not e!315266))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!545430 (= res!339503 (and (= (size!16880 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16880 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16880 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!545431 () Bool)

(declare-fun res!339504 () Bool)

(assert (=> b!545431 (=> (not res!339504) (not e!315266))))

(declare-fun arrayContainsKey!0 (array!34383 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!545431 (= res!339504 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!545432 () Bool)

(assert (=> b!545432 (= e!315266 e!315265)))

(declare-fun res!339505 () Bool)

(assert (=> b!545432 (=> (not res!339505) (not e!315265))))

(declare-fun lt!248878 () SeekEntryResult!4981)

(assert (=> b!545432 (= res!339505 (or (= lt!248878 (MissingZero!4981 i!1153)) (= lt!248878 (MissingVacant!4981 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34383 (_ BitVec 32)) SeekEntryResult!4981)

(assert (=> b!545432 (= lt!248878 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!545433 () Bool)

(assert (=> b!545433 (= e!315267 e!315263)))

(declare-fun res!339506 () Bool)

(assert (=> b!545433 (=> (not res!339506) (not e!315263))))

(assert (=> b!545433 (= res!339506 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!248879 #b00000000000000000000000000000000) (bvslt lt!248879 (size!16880 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!545433 (= lt!248879 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!545434 () Bool)

(declare-fun res!339510 () Bool)

(assert (=> b!545434 (=> (not res!339510) (not e!315265))))

(assert (=> b!545434 (= res!339510 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16880 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16880 a!3154)) (= (select (arr!16516 a!3154) resIndex!32) (select (arr!16516 a!3154) j!147))))))

(declare-fun b!545435 () Bool)

(declare-fun res!339501 () Bool)

(assert (=> b!545435 (=> (not res!339501) (not e!315266))))

(assert (=> b!545435 (= res!339501 (validKeyInArray!0 (select (arr!16516 a!3154) j!147)))))

(assert (= (and start!49614 res!339508) b!545430))

(assert (= (and b!545430 res!339503) b!545435))

(assert (= (and b!545435 res!339501) b!545425))

(assert (= (and b!545425 res!339512) b!545431))

(assert (= (and b!545431 res!339504) b!545432))

(assert (= (and b!545432 res!339505) b!545426))

(assert (= (and b!545426 res!339502) b!545428))

(assert (= (and b!545428 res!339511) b!545434))

(assert (= (and b!545434 res!339510) b!545424))

(assert (= (and b!545424 res!339507) b!545427))

(assert (= (and b!545427 res!339509) b!545433))

(assert (= (and b!545433 res!339506) b!545429))

(declare-fun m!523011 () Bool)

(assert (=> b!545434 m!523011))

(declare-fun m!523013 () Bool)

(assert (=> b!545434 m!523013))

(declare-fun m!523015 () Bool)

(assert (=> b!545431 m!523015))

(declare-fun m!523017 () Bool)

(assert (=> b!545426 m!523017))

(assert (=> b!545424 m!523013))

(assert (=> b!545424 m!523013))

(declare-fun m!523019 () Bool)

(assert (=> b!545424 m!523019))

(declare-fun m!523021 () Bool)

(assert (=> b!545427 m!523021))

(assert (=> b!545427 m!523013))

(assert (=> b!545427 m!523013))

(declare-fun m!523023 () Bool)

(assert (=> b!545427 m!523023))

(assert (=> b!545427 m!523023))

(assert (=> b!545427 m!523013))

(declare-fun m!523025 () Bool)

(assert (=> b!545427 m!523025))

(declare-fun m!523027 () Bool)

(assert (=> start!49614 m!523027))

(declare-fun m!523029 () Bool)

(assert (=> start!49614 m!523029))

(declare-fun m!523031 () Bool)

(assert (=> b!545432 m!523031))

(declare-fun m!523033 () Bool)

(assert (=> b!545433 m!523033))

(declare-fun m!523035 () Bool)

(assert (=> b!545425 m!523035))

(assert (=> b!545435 m!523013))

(assert (=> b!545435 m!523013))

(declare-fun m!523037 () Bool)

(assert (=> b!545435 m!523037))

(assert (=> b!545429 m!523013))

(assert (=> b!545429 m!523013))

(declare-fun m!523039 () Bool)

(assert (=> b!545429 m!523039))

(declare-fun m!523041 () Bool)

(assert (=> b!545428 m!523041))

(check-sat (not b!545426) (not b!545433) (not b!545431) (not b!545435) (not b!545432) (not b!545425) (not b!545424) (not start!49614) (not b!545427) (not b!545429) (not b!545428))
(check-sat)
