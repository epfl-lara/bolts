; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49124 () Bool)

(assert start!49124)

(declare-fun b!540761 () Bool)

(declare-fun res!335801 () Bool)

(declare-fun e!313213 () Bool)

(assert (=> b!540761 (=> (not res!335801) (not e!313213))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34190 0))(
  ( (array!34191 (arr!16427 (Array (_ BitVec 32) (_ BitVec 64))) (size!16791 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34190)

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!540761 (= res!335801 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16791 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16791 a!3154)) (= (select (arr!16427 a!3154) resIndex!32) (select (arr!16427 a!3154) j!147))))))

(declare-fun b!540762 () Bool)

(declare-fun e!313212 () Bool)

(assert (=> b!540762 (= e!313212 e!313213)))

(declare-fun res!335802 () Bool)

(assert (=> b!540762 (=> (not res!335802) (not e!313213))))

(declare-datatypes ((SeekEntryResult!4892 0))(
  ( (MissingZero!4892 (index!21792 (_ BitVec 32))) (Found!4892 (index!21793 (_ BitVec 32))) (Intermediate!4892 (undefined!5704 Bool) (index!21794 (_ BitVec 32)) (x!50730 (_ BitVec 32))) (Undefined!4892) (MissingVacant!4892 (index!21795 (_ BitVec 32))) )
))
(declare-fun lt!247487 () SeekEntryResult!4892)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!540762 (= res!335802 (or (= lt!247487 (MissingZero!4892 i!1153)) (= lt!247487 (MissingVacant!4892 i!1153))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34190 (_ BitVec 32)) SeekEntryResult!4892)

(assert (=> b!540762 (= lt!247487 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!540763 () Bool)

(declare-fun res!335806 () Bool)

(assert (=> b!540763 (=> (not res!335806) (not e!313213))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34190 (_ BitVec 32)) Bool)

(assert (=> b!540763 (= res!335806 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!540764 () Bool)

(declare-fun res!335807 () Bool)

(assert (=> b!540764 (=> (not res!335807) (not e!313213))))

(declare-datatypes ((List!10599 0))(
  ( (Nil!10596) (Cons!10595 (h!11544 (_ BitVec 64)) (t!16835 List!10599)) )
))
(declare-fun arrayNoDuplicates!0 (array!34190 (_ BitVec 32) List!10599) Bool)

(assert (=> b!540764 (= res!335807 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10596))))

(declare-fun b!540765 () Bool)

(declare-fun res!335798 () Bool)

(assert (=> b!540765 (=> (not res!335798) (not e!313212))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!540765 (= res!335798 (validKeyInArray!0 (select (arr!16427 a!3154) j!147)))))

(declare-fun res!335804 () Bool)

(assert (=> start!49124 (=> (not res!335804) (not e!313212))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49124 (= res!335804 (validMask!0 mask!3216))))

(assert (=> start!49124 e!313212))

(assert (=> start!49124 true))

(declare-fun array_inv!12201 (array!34190) Bool)

(assert (=> start!49124 (array_inv!12201 a!3154)))

(declare-fun b!540766 () Bool)

(declare-fun res!335805 () Bool)

(assert (=> b!540766 (=> (not res!335805) (not e!313212))))

(declare-fun arrayContainsKey!0 (array!34190 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!540766 (= res!335805 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!540767 () Bool)

(declare-fun res!335799 () Bool)

(assert (=> b!540767 (=> (not res!335799) (not e!313213))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34190 (_ BitVec 32)) SeekEntryResult!4892)

(assert (=> b!540767 (= res!335799 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16427 a!3154) j!147) a!3154 mask!3216) (Intermediate!4892 false resIndex!32 resX!32)))))

(declare-fun b!540768 () Bool)

(assert (=> b!540768 (= e!313213 false)))

(declare-fun lt!247486 () SeekEntryResult!4892)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!540768 (= lt!247486 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16427 a!3154) j!147) mask!3216) (select (arr!16427 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!540769 () Bool)

(declare-fun res!335800 () Bool)

(assert (=> b!540769 (=> (not res!335800) (not e!313212))))

(assert (=> b!540769 (= res!335800 (validKeyInArray!0 k!1998))))

(declare-fun b!540770 () Bool)

(declare-fun res!335803 () Bool)

(assert (=> b!540770 (=> (not res!335803) (not e!313212))))

(assert (=> b!540770 (= res!335803 (and (= (size!16791 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16791 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16791 a!3154)) (not (= i!1153 j!147))))))

(assert (= (and start!49124 res!335804) b!540770))

(assert (= (and b!540770 res!335803) b!540765))

(assert (= (and b!540765 res!335798) b!540769))

(assert (= (and b!540769 res!335800) b!540766))

(assert (= (and b!540766 res!335805) b!540762))

(assert (= (and b!540762 res!335802) b!540763))

(assert (= (and b!540763 res!335806) b!540764))

(assert (= (and b!540764 res!335807) b!540761))

(assert (= (and b!540761 res!335801) b!540767))

(assert (= (and b!540767 res!335799) b!540768))

(declare-fun m!519437 () Bool)

(assert (=> b!540768 m!519437))

(assert (=> b!540768 m!519437))

(declare-fun m!519439 () Bool)

(assert (=> b!540768 m!519439))

(assert (=> b!540768 m!519439))

(assert (=> b!540768 m!519437))

(declare-fun m!519441 () Bool)

(assert (=> b!540768 m!519441))

(declare-fun m!519443 () Bool)

(assert (=> b!540761 m!519443))

(assert (=> b!540761 m!519437))

(declare-fun m!519445 () Bool)

(assert (=> b!540769 m!519445))

(declare-fun m!519447 () Bool)

(assert (=> b!540766 m!519447))

(declare-fun m!519449 () Bool)

(assert (=> b!540762 m!519449))

(declare-fun m!519451 () Bool)

(assert (=> start!49124 m!519451))

(declare-fun m!519453 () Bool)

(assert (=> start!49124 m!519453))

(declare-fun m!519455 () Bool)

(assert (=> b!540763 m!519455))

(assert (=> b!540765 m!519437))

(assert (=> b!540765 m!519437))

(declare-fun m!519457 () Bool)

(assert (=> b!540765 m!519457))

(declare-fun m!519459 () Bool)

(assert (=> b!540764 m!519459))

(assert (=> b!540767 m!519437))

(assert (=> b!540767 m!519437))

(declare-fun m!519461 () Bool)

(assert (=> b!540767 m!519461))

(push 1)

(assert (not start!49124))

(assert (not b!540768))

(assert (not b!540765))

(assert (not b!540763))

(assert (not b!540766))

(assert (not b!540762))

(assert (not b!540764))

(assert (not b!540767))

(assert (not b!540769))

(check-sat)

