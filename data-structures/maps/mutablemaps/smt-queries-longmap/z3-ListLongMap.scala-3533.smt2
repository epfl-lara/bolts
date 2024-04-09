; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48786 () Bool)

(assert start!48786)

(declare-fun b!536300 () Bool)

(declare-fun res!331661 () Bool)

(declare-fun e!311332 () Bool)

(assert (=> b!536300 (=> (not res!331661) (not e!311332))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33954 0))(
  ( (array!33955 (arr!16312 (Array (_ BitVec 32) (_ BitVec 64))) (size!16676 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33954)

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!536300 (= res!331661 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16676 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16676 a!3154)) (= (select (arr!16312 a!3154) resIndex!32) (select (arr!16312 a!3154) j!147))))))

(declare-fun b!536301 () Bool)

(declare-fun res!331657 () Bool)

(declare-fun e!311330 () Bool)

(assert (=> b!536301 (=> (not res!331657) (not e!311330))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!536301 (= res!331657 (validKeyInArray!0 (select (arr!16312 a!3154) j!147)))))

(declare-fun b!536302 () Bool)

(declare-fun res!331658 () Bool)

(assert (=> b!536302 (=> (not res!331658) (not e!311332))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33954 (_ BitVec 32)) Bool)

(assert (=> b!536302 (= res!331658 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!536303 () Bool)

(declare-fun res!331662 () Bool)

(assert (=> b!536303 (=> (not res!331662) (not e!311330))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33954 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!536303 (= res!331662 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!536304 () Bool)

(declare-fun e!311331 () Bool)

(assert (=> b!536304 (= e!311332 e!311331)))

(declare-fun res!331667 () Bool)

(assert (=> b!536304 (=> (not res!331667) (not e!311331))))

(declare-datatypes ((SeekEntryResult!4777 0))(
  ( (MissingZero!4777 (index!21332 (_ BitVec 32))) (Found!4777 (index!21333 (_ BitVec 32))) (Intermediate!4777 (undefined!5589 Bool) (index!21334 (_ BitVec 32)) (x!50299 (_ BitVec 32))) (Undefined!4777) (MissingVacant!4777 (index!21335 (_ BitVec 32))) )
))
(declare-fun lt!246077 () SeekEntryResult!4777)

(assert (=> b!536304 (= res!331667 (= lt!246077 (Intermediate!4777 false resIndex!32 resX!32)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33954 (_ BitVec 32)) SeekEntryResult!4777)

(assert (=> b!536304 (= lt!246077 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16312 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!536305 () Bool)

(declare-fun res!331655 () Bool)

(assert (=> b!536305 (=> (not res!331655) (not e!311331))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!536305 (= res!331655 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16312 a!3154) j!147) mask!3216) (select (arr!16312 a!3154) j!147) a!3154 mask!3216) lt!246077))))

(declare-fun b!536307 () Bool)

(declare-fun res!331664 () Bool)

(assert (=> b!536307 (=> (not res!331664) (not e!311330))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!536307 (= res!331664 (and (= (size!16676 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16676 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16676 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!536308 () Bool)

(declare-fun res!331660 () Bool)

(assert (=> b!536308 (=> (not res!331660) (not e!311331))))

(assert (=> b!536308 (= res!331660 (and (not (= (select (arr!16312 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16312 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16312 a!3154) index!1177) (select (arr!16312 a!3154) j!147)))))))

(declare-fun b!536306 () Bool)

(declare-fun e!311329 () Bool)

(assert (=> b!536306 (= e!311331 e!311329)))

(declare-fun res!331659 () Bool)

(assert (=> b!536306 (=> (not res!331659) (not e!311329))))

(declare-fun lt!246075 () (_ BitVec 32))

(assert (=> b!536306 (= res!331659 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246075 #b00000000000000000000000000000000) (bvslt lt!246075 (size!16676 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!536306 (= lt!246075 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun res!331663 () Bool)

(assert (=> start!48786 (=> (not res!331663) (not e!311330))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48786 (= res!331663 (validMask!0 mask!3216))))

(assert (=> start!48786 e!311330))

(assert (=> start!48786 true))

(declare-fun array_inv!12086 (array!33954) Bool)

(assert (=> start!48786 (array_inv!12086 a!3154)))

(declare-fun b!536309 () Bool)

(declare-fun res!331665 () Bool)

(assert (=> b!536309 (=> (not res!331665) (not e!311332))))

(declare-datatypes ((List!10484 0))(
  ( (Nil!10481) (Cons!10480 (h!11423 (_ BitVec 64)) (t!16720 List!10484)) )
))
(declare-fun arrayNoDuplicates!0 (array!33954 (_ BitVec 32) List!10484) Bool)

(assert (=> b!536309 (= res!331665 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10481))))

(declare-fun b!536310 () Bool)

(assert (=> b!536310 (= e!311329 false)))

(declare-fun lt!246074 () SeekEntryResult!4777)

(assert (=> b!536310 (= lt!246074 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246075 (select (arr!16312 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!536311 () Bool)

(assert (=> b!536311 (= e!311330 e!311332)))

(declare-fun res!331656 () Bool)

(assert (=> b!536311 (=> (not res!331656) (not e!311332))))

(declare-fun lt!246076 () SeekEntryResult!4777)

(assert (=> b!536311 (= res!331656 (or (= lt!246076 (MissingZero!4777 i!1153)) (= lt!246076 (MissingVacant!4777 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33954 (_ BitVec 32)) SeekEntryResult!4777)

(assert (=> b!536311 (= lt!246076 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!536312 () Bool)

(declare-fun res!331666 () Bool)

(assert (=> b!536312 (=> (not res!331666) (not e!311330))))

(assert (=> b!536312 (= res!331666 (validKeyInArray!0 k0!1998))))

(assert (= (and start!48786 res!331663) b!536307))

(assert (= (and b!536307 res!331664) b!536301))

(assert (= (and b!536301 res!331657) b!536312))

(assert (= (and b!536312 res!331666) b!536303))

(assert (= (and b!536303 res!331662) b!536311))

(assert (= (and b!536311 res!331656) b!536302))

(assert (= (and b!536302 res!331658) b!536309))

(assert (= (and b!536309 res!331665) b!536300))

(assert (= (and b!536300 res!331661) b!536304))

(assert (= (and b!536304 res!331667) b!536305))

(assert (= (and b!536305 res!331655) b!536308))

(assert (= (and b!536308 res!331660) b!536306))

(assert (= (and b!536306 res!331659) b!536310))

(declare-fun m!515739 () Bool)

(assert (=> b!536309 m!515739))

(declare-fun m!515741 () Bool)

(assert (=> b!536311 m!515741))

(declare-fun m!515743 () Bool)

(assert (=> b!536306 m!515743))

(declare-fun m!515745 () Bool)

(assert (=> start!48786 m!515745))

(declare-fun m!515747 () Bool)

(assert (=> start!48786 m!515747))

(declare-fun m!515749 () Bool)

(assert (=> b!536305 m!515749))

(assert (=> b!536305 m!515749))

(declare-fun m!515751 () Bool)

(assert (=> b!536305 m!515751))

(assert (=> b!536305 m!515751))

(assert (=> b!536305 m!515749))

(declare-fun m!515753 () Bool)

(assert (=> b!536305 m!515753))

(declare-fun m!515755 () Bool)

(assert (=> b!536308 m!515755))

(assert (=> b!536308 m!515749))

(assert (=> b!536301 m!515749))

(assert (=> b!536301 m!515749))

(declare-fun m!515757 () Bool)

(assert (=> b!536301 m!515757))

(assert (=> b!536310 m!515749))

(assert (=> b!536310 m!515749))

(declare-fun m!515759 () Bool)

(assert (=> b!536310 m!515759))

(declare-fun m!515761 () Bool)

(assert (=> b!536302 m!515761))

(declare-fun m!515763 () Bool)

(assert (=> b!536303 m!515763))

(declare-fun m!515765 () Bool)

(assert (=> b!536300 m!515765))

(assert (=> b!536300 m!515749))

(assert (=> b!536304 m!515749))

(assert (=> b!536304 m!515749))

(declare-fun m!515767 () Bool)

(assert (=> b!536304 m!515767))

(declare-fun m!515769 () Bool)

(assert (=> b!536312 m!515769))

(check-sat (not b!536301) (not b!536303) (not b!536310) (not b!536309) (not b!536302) (not b!536312) (not b!536306) (not b!536305) (not b!536311) (not start!48786) (not b!536304))
(check-sat)
