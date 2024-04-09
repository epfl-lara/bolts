; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48708 () Bool)

(assert start!48708)

(declare-fun b!534895 () Bool)

(declare-fun res!330252 () Bool)

(declare-fun e!310812 () Bool)

(assert (=> b!534895 (=> (not res!330252) (not e!310812))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33876 0))(
  ( (array!33877 (arr!16273 (Array (_ BitVec 32) (_ BitVec 64))) (size!16637 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33876)

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!534895 (= res!330252 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16637 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16637 a!3154)) (= (select (arr!16273 a!3154) resIndex!32) (select (arr!16273 a!3154) j!147))))))

(declare-fun b!534896 () Bool)

(declare-fun res!330257 () Bool)

(declare-fun e!310810 () Bool)

(assert (=> b!534896 (=> (not res!330257) (not e!310810))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!534896 (= res!330257 (validKeyInArray!0 (select (arr!16273 a!3154) j!147)))))

(declare-fun b!534897 () Bool)

(assert (=> b!534897 (= e!310810 e!310812)))

(declare-fun res!330258 () Bool)

(assert (=> b!534897 (=> (not res!330258) (not e!310812))))

(declare-datatypes ((SeekEntryResult!4738 0))(
  ( (MissingZero!4738 (index!21176 (_ BitVec 32))) (Found!4738 (index!21177 (_ BitVec 32))) (Intermediate!4738 (undefined!5550 Bool) (index!21178 (_ BitVec 32)) (x!50156 (_ BitVec 32))) (Undefined!4738) (MissingVacant!4738 (index!21179 (_ BitVec 32))) )
))
(declare-fun lt!245722 () SeekEntryResult!4738)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!534897 (= res!330258 (or (= lt!245722 (MissingZero!4738 i!1153)) (= lt!245722 (MissingVacant!4738 i!1153))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33876 (_ BitVec 32)) SeekEntryResult!4738)

(assert (=> b!534897 (= lt!245722 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun res!330256 () Bool)

(assert (=> start!48708 (=> (not res!330256) (not e!310810))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48708 (= res!330256 (validMask!0 mask!3216))))

(assert (=> start!48708 e!310810))

(assert (=> start!48708 true))

(declare-fun array_inv!12047 (array!33876) Bool)

(assert (=> start!48708 (array_inv!12047 a!3154)))

(declare-fun b!534898 () Bool)

(declare-fun res!330260 () Bool)

(assert (=> b!534898 (=> (not res!330260) (not e!310810))))

(assert (=> b!534898 (= res!330260 (and (= (size!16637 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16637 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16637 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!534899 () Bool)

(declare-fun res!330259 () Bool)

(assert (=> b!534899 (=> (not res!330259) (not e!310812))))

(declare-datatypes ((List!10445 0))(
  ( (Nil!10442) (Cons!10441 (h!11384 (_ BitVec 64)) (t!16681 List!10445)) )
))
(declare-fun arrayNoDuplicates!0 (array!33876 (_ BitVec 32) List!10445) Bool)

(assert (=> b!534899 (= res!330259 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10442))))

(declare-fun b!534900 () Bool)

(declare-fun res!330253 () Bool)

(assert (=> b!534900 (=> (not res!330253) (not e!310812))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33876 (_ BitVec 32)) Bool)

(assert (=> b!534900 (= res!330253 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!534901 () Bool)

(declare-fun res!330251 () Bool)

(assert (=> b!534901 (=> (not res!330251) (not e!310810))))

(assert (=> b!534901 (= res!330251 (validKeyInArray!0 k0!1998))))

(declare-fun b!534902 () Bool)

(declare-fun res!330254 () Bool)

(assert (=> b!534902 (=> (not res!330254) (not e!310810))))

(declare-fun arrayContainsKey!0 (array!33876 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!534902 (= res!330254 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!534903 () Bool)

(declare-fun e!310811 () Bool)

(assert (=> b!534903 (= e!310812 e!310811)))

(declare-fun res!330250 () Bool)

(assert (=> b!534903 (=> (not res!330250) (not e!310811))))

(declare-fun lt!245723 () SeekEntryResult!4738)

(assert (=> b!534903 (= res!330250 (= lt!245723 (Intermediate!4738 false resIndex!32 resX!32)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33876 (_ BitVec 32)) SeekEntryResult!4738)

(assert (=> b!534903 (= lt!245723 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16273 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!534904 () Bool)

(declare-fun res!330255 () Bool)

(assert (=> b!534904 (=> (not res!330255) (not e!310811))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!534904 (= res!330255 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16273 a!3154) j!147) mask!3216) (select (arr!16273 a!3154) j!147) a!3154 mask!3216) lt!245723))))

(declare-fun b!534905 () Bool)

(assert (=> b!534905 (= e!310811 (and (not (= (select (arr!16273 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16273 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16273 a!3154) index!1177) (select (arr!16273 a!3154) j!147)) (= index!1177 resIndex!32) (bvsge mask!3216 #b00000000000000000000000000000000) (bvsge index!1177 (bvadd #b00000000000000000000000000000001 mask!3216))))))

(assert (= (and start!48708 res!330256) b!534898))

(assert (= (and b!534898 res!330260) b!534896))

(assert (= (and b!534896 res!330257) b!534901))

(assert (= (and b!534901 res!330251) b!534902))

(assert (= (and b!534902 res!330254) b!534897))

(assert (= (and b!534897 res!330258) b!534900))

(assert (= (and b!534900 res!330253) b!534899))

(assert (= (and b!534899 res!330259) b!534895))

(assert (= (and b!534895 res!330252) b!534903))

(assert (= (and b!534903 res!330250) b!534904))

(assert (= (and b!534904 res!330255) b!534905))

(declare-fun m!514559 () Bool)

(assert (=> b!534900 m!514559))

(declare-fun m!514561 () Bool)

(assert (=> b!534901 m!514561))

(declare-fun m!514563 () Bool)

(assert (=> b!534905 m!514563))

(declare-fun m!514565 () Bool)

(assert (=> b!534905 m!514565))

(declare-fun m!514567 () Bool)

(assert (=> b!534902 m!514567))

(declare-fun m!514569 () Bool)

(assert (=> b!534899 m!514569))

(assert (=> b!534904 m!514565))

(assert (=> b!534904 m!514565))

(declare-fun m!514571 () Bool)

(assert (=> b!534904 m!514571))

(assert (=> b!534904 m!514571))

(assert (=> b!534904 m!514565))

(declare-fun m!514573 () Bool)

(assert (=> b!534904 m!514573))

(declare-fun m!514575 () Bool)

(assert (=> b!534895 m!514575))

(assert (=> b!534895 m!514565))

(assert (=> b!534903 m!514565))

(assert (=> b!534903 m!514565))

(declare-fun m!514577 () Bool)

(assert (=> b!534903 m!514577))

(assert (=> b!534896 m!514565))

(assert (=> b!534896 m!514565))

(declare-fun m!514579 () Bool)

(assert (=> b!534896 m!514579))

(declare-fun m!514581 () Bool)

(assert (=> b!534897 m!514581))

(declare-fun m!514583 () Bool)

(assert (=> start!48708 m!514583))

(declare-fun m!514585 () Bool)

(assert (=> start!48708 m!514585))

(check-sat (not start!48708) (not b!534900) (not b!534896) (not b!534899) (not b!534901) (not b!534902) (not b!534904) (not b!534897) (not b!534903))
(check-sat)
