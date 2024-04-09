; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48846 () Bool)

(assert start!48846)

(declare-fun b!537470 () Bool)

(declare-fun e!311782 () Bool)

(assert (=> b!537470 (= e!311782 false)))

(declare-fun lt!246435 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34014 0))(
  ( (array!34015 (arr!16342 (Array (_ BitVec 32) (_ BitVec 64))) (size!16706 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34014)

(declare-datatypes ((SeekEntryResult!4807 0))(
  ( (MissingZero!4807 (index!21452 (_ BitVec 32))) (Found!4807 (index!21453 (_ BitVec 32))) (Intermediate!4807 (undefined!5619 Bool) (index!21454 (_ BitVec 32)) (x!50409 (_ BitVec 32))) (Undefined!4807) (MissingVacant!4807 (index!21455 (_ BitVec 32))) )
))
(declare-fun lt!246436 () SeekEntryResult!4807)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34014 (_ BitVec 32)) SeekEntryResult!4807)

(assert (=> b!537470 (= lt!246436 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246435 (select (arr!16342 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!537471 () Bool)

(declare-fun e!311780 () Bool)

(assert (=> b!537471 (= e!311780 e!311782)))

(declare-fun res!332831 () Bool)

(assert (=> b!537471 (=> (not res!332831) (not e!311782))))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!537471 (= res!332831 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246435 #b00000000000000000000000000000000) (bvslt lt!246435 (size!16706 a!3154))))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!537471 (= lt!246435 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!537472 () Bool)

(declare-fun res!332837 () Bool)

(declare-fun e!311779 () Bool)

(assert (=> b!537472 (=> (not res!332837) (not e!311779))))

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!537472 (= res!332837 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16706 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16706 a!3154)) (= (select (arr!16342 a!3154) resIndex!32) (select (arr!16342 a!3154) j!147))))))

(declare-fun b!537473 () Bool)

(declare-fun res!332834 () Bool)

(declare-fun e!311781 () Bool)

(assert (=> b!537473 (=> (not res!332834) (not e!311781))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!537473 (= res!332834 (validKeyInArray!0 (select (arr!16342 a!3154) j!147)))))

(declare-fun b!537474 () Bool)

(assert (=> b!537474 (= e!311779 e!311780)))

(declare-fun res!332836 () Bool)

(assert (=> b!537474 (=> (not res!332836) (not e!311780))))

(declare-fun lt!246434 () SeekEntryResult!4807)

(assert (=> b!537474 (= res!332836 (= lt!246434 (Intermediate!4807 false resIndex!32 resX!32)))))

(assert (=> b!537474 (= lt!246434 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16342 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!537475 () Bool)

(declare-fun res!332835 () Bool)

(assert (=> b!537475 (=> (not res!332835) (not e!311781))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!537475 (= res!332835 (and (= (size!16706 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16706 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16706 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!537477 () Bool)

(assert (=> b!537477 (= e!311781 e!311779)))

(declare-fun res!332826 () Bool)

(assert (=> b!537477 (=> (not res!332826) (not e!311779))))

(declare-fun lt!246437 () SeekEntryResult!4807)

(assert (=> b!537477 (= res!332826 (or (= lt!246437 (MissingZero!4807 i!1153)) (= lt!246437 (MissingVacant!4807 i!1153))))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34014 (_ BitVec 32)) SeekEntryResult!4807)

(assert (=> b!537477 (= lt!246437 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!537478 () Bool)

(declare-fun res!332830 () Bool)

(assert (=> b!537478 (=> (not res!332830) (not e!311780))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!537478 (= res!332830 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16342 a!3154) j!147) mask!3216) (select (arr!16342 a!3154) j!147) a!3154 mask!3216) lt!246434))))

(declare-fun b!537479 () Bool)

(declare-fun res!332825 () Bool)

(assert (=> b!537479 (=> (not res!332825) (not e!311779))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34014 (_ BitVec 32)) Bool)

(assert (=> b!537479 (= res!332825 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!537480 () Bool)

(declare-fun res!332827 () Bool)

(assert (=> b!537480 (=> (not res!332827) (not e!311781))))

(declare-fun arrayContainsKey!0 (array!34014 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!537480 (= res!332827 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!537481 () Bool)

(declare-fun res!332832 () Bool)

(assert (=> b!537481 (=> (not res!332832) (not e!311779))))

(declare-datatypes ((List!10514 0))(
  ( (Nil!10511) (Cons!10510 (h!11453 (_ BitVec 64)) (t!16750 List!10514)) )
))
(declare-fun arrayNoDuplicates!0 (array!34014 (_ BitVec 32) List!10514) Bool)

(assert (=> b!537481 (= res!332832 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10511))))

(declare-fun b!537482 () Bool)

(declare-fun res!332828 () Bool)

(assert (=> b!537482 (=> (not res!332828) (not e!311781))))

(assert (=> b!537482 (= res!332828 (validKeyInArray!0 k0!1998))))

(declare-fun b!537476 () Bool)

(declare-fun res!332833 () Bool)

(assert (=> b!537476 (=> (not res!332833) (not e!311780))))

(assert (=> b!537476 (= res!332833 (and (not (= (select (arr!16342 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16342 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16342 a!3154) index!1177) (select (arr!16342 a!3154) j!147)))))))

(declare-fun res!332829 () Bool)

(assert (=> start!48846 (=> (not res!332829) (not e!311781))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48846 (= res!332829 (validMask!0 mask!3216))))

(assert (=> start!48846 e!311781))

(assert (=> start!48846 true))

(declare-fun array_inv!12116 (array!34014) Bool)

(assert (=> start!48846 (array_inv!12116 a!3154)))

(assert (= (and start!48846 res!332829) b!537475))

(assert (= (and b!537475 res!332835) b!537473))

(assert (= (and b!537473 res!332834) b!537482))

(assert (= (and b!537482 res!332828) b!537480))

(assert (= (and b!537480 res!332827) b!537477))

(assert (= (and b!537477 res!332826) b!537479))

(assert (= (and b!537479 res!332825) b!537481))

(assert (= (and b!537481 res!332832) b!537472))

(assert (= (and b!537472 res!332837) b!537474))

(assert (= (and b!537474 res!332836) b!537478))

(assert (= (and b!537478 res!332830) b!537476))

(assert (= (and b!537476 res!332833) b!537471))

(assert (= (and b!537471 res!332831) b!537470))

(declare-fun m!516699 () Bool)

(assert (=> b!537471 m!516699))

(declare-fun m!516701 () Bool)

(assert (=> b!537482 m!516701))

(declare-fun m!516703 () Bool)

(assert (=> b!537478 m!516703))

(assert (=> b!537478 m!516703))

(declare-fun m!516705 () Bool)

(assert (=> b!537478 m!516705))

(assert (=> b!537478 m!516705))

(assert (=> b!537478 m!516703))

(declare-fun m!516707 () Bool)

(assert (=> b!537478 m!516707))

(declare-fun m!516709 () Bool)

(assert (=> b!537480 m!516709))

(assert (=> b!537474 m!516703))

(assert (=> b!537474 m!516703))

(declare-fun m!516711 () Bool)

(assert (=> b!537474 m!516711))

(declare-fun m!516713 () Bool)

(assert (=> start!48846 m!516713))

(declare-fun m!516715 () Bool)

(assert (=> start!48846 m!516715))

(declare-fun m!516717 () Bool)

(assert (=> b!537472 m!516717))

(assert (=> b!537472 m!516703))

(assert (=> b!537473 m!516703))

(assert (=> b!537473 m!516703))

(declare-fun m!516719 () Bool)

(assert (=> b!537473 m!516719))

(declare-fun m!516721 () Bool)

(assert (=> b!537477 m!516721))

(declare-fun m!516723 () Bool)

(assert (=> b!537476 m!516723))

(assert (=> b!537476 m!516703))

(declare-fun m!516725 () Bool)

(assert (=> b!537479 m!516725))

(assert (=> b!537470 m!516703))

(assert (=> b!537470 m!516703))

(declare-fun m!516727 () Bool)

(assert (=> b!537470 m!516727))

(declare-fun m!516729 () Bool)

(assert (=> b!537481 m!516729))

(check-sat (not b!537479) (not b!537481) (not b!537482) (not b!537480) (not b!537477) (not b!537470) (not start!48846) (not b!537473) (not b!537478) (not b!537471) (not b!537474))
(check-sat)
