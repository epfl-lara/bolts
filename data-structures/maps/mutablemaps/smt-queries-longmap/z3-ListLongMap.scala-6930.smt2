; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87234 () Bool)

(assert start!87234)

(declare-fun b!1010861 () Bool)

(declare-fun res!679150 () Bool)

(declare-fun e!568728 () Bool)

(assert (=> b!1010861 (=> (not res!679150) (not e!568728))))

(declare-datatypes ((array!63639 0))(
  ( (array!63640 (arr!30632 (Array (_ BitVec 32) (_ BitVec 64))) (size!31135 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63639)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1010861 (= res!679150 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31135 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31135 a!3219))))))

(declare-fun b!1010862 () Bool)

(declare-fun e!568724 () Bool)

(assert (=> b!1010862 (= e!568724 e!568728)))

(declare-fun res!679149 () Bool)

(assert (=> b!1010862 (=> (not res!679149) (not e!568728))))

(declare-datatypes ((SeekEntryResult!9564 0))(
  ( (MissingZero!9564 (index!40626 (_ BitVec 32))) (Found!9564 (index!40627 (_ BitVec 32))) (Intermediate!9564 (undefined!10376 Bool) (index!40628 (_ BitVec 32)) (x!88068 (_ BitVec 32))) (Undefined!9564) (MissingVacant!9564 (index!40629 (_ BitVec 32))) )
))
(declare-fun lt!446776 () SeekEntryResult!9564)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1010862 (= res!679149 (or (= lt!446776 (MissingVacant!9564 i!1194)) (= lt!446776 (MissingZero!9564 i!1194))))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63639 (_ BitVec 32)) SeekEntryResult!9564)

(assert (=> b!1010862 (= lt!446776 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1010863 () Bool)

(declare-fun res!679156 () Bool)

(assert (=> b!1010863 (=> (not res!679156) (not e!568728))))

(declare-datatypes ((List!21434 0))(
  ( (Nil!21431) (Cons!21430 (h!22625 (_ BitVec 64)) (t!30443 List!21434)) )
))
(declare-fun arrayNoDuplicates!0 (array!63639 (_ BitVec 32) List!21434) Bool)

(assert (=> b!1010863 (= res!679156 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21431))))

(declare-fun b!1010864 () Bool)

(declare-fun e!568726 () Bool)

(declare-fun e!568729 () Bool)

(assert (=> b!1010864 (= e!568726 e!568729)))

(declare-fun res!679154 () Bool)

(assert (=> b!1010864 (=> (not res!679154) (not e!568729))))

(declare-fun lt!446771 () array!63639)

(declare-fun lt!446778 () SeekEntryResult!9564)

(declare-fun lt!446775 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63639 (_ BitVec 32)) SeekEntryResult!9564)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1010864 (= res!679154 (not (= lt!446778 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!446775 mask!3464) lt!446775 lt!446771 mask!3464))))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!1010864 (= lt!446775 (select (store (arr!30632 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1010864 (= lt!446771 (array!63640 (store (arr!30632 a!3219) i!1194 k0!2224) (size!31135 a!3219)))))

(declare-fun b!1010865 () Bool)

(declare-fun e!568725 () Bool)

(assert (=> b!1010865 (= e!568728 e!568725)))

(declare-fun res!679144 () Bool)

(assert (=> b!1010865 (=> (not res!679144) (not e!568725))))

(declare-fun lt!446774 () SeekEntryResult!9564)

(assert (=> b!1010865 (= res!679144 (= lt!446778 lt!446774))))

(assert (=> b!1010865 (= lt!446774 (Intermediate!9564 false resIndex!38 resX!38))))

(assert (=> b!1010865 (= lt!446778 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30632 a!3219) j!170) mask!3464) (select (arr!30632 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1010866 () Bool)

(declare-fun res!679147 () Bool)

(assert (=> b!1010866 (=> (not res!679147) (not e!568724))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1010866 (= res!679147 (validKeyInArray!0 k0!2224))))

(declare-fun b!1010867 () Bool)

(declare-fun e!568727 () Bool)

(assert (=> b!1010867 (= e!568729 e!568727)))

(declare-fun res!679151 () Bool)

(assert (=> b!1010867 (=> (not res!679151) (not e!568727))))

(declare-fun lt!446772 () (_ BitVec 32))

(assert (=> b!1010867 (= res!679151 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!446772 #b00000000000000000000000000000000) (bvslt lt!446772 (size!31135 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1010867 (= lt!446772 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1010868 () Bool)

(declare-fun res!679142 () Bool)

(assert (=> b!1010868 (=> (not res!679142) (not e!568729))))

(assert (=> b!1010868 (= res!679142 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1010869 () Bool)

(assert (=> b!1010869 (= e!568725 e!568726)))

(declare-fun res!679155 () Bool)

(assert (=> b!1010869 (=> (not res!679155) (not e!568726))))

(declare-fun lt!446773 () SeekEntryResult!9564)

(assert (=> b!1010869 (= res!679155 (= lt!446773 lt!446774))))

(assert (=> b!1010869 (= lt!446773 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30632 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1010870 () Bool)

(declare-fun res!679152 () Bool)

(assert (=> b!1010870 (=> (not res!679152) (not e!568724))))

(declare-fun arrayContainsKey!0 (array!63639 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1010870 (= res!679152 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun res!679145 () Bool)

(assert (=> start!87234 (=> (not res!679145) (not e!568724))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!87234 (= res!679145 (validMask!0 mask!3464))))

(assert (=> start!87234 e!568724))

(declare-fun array_inv!23622 (array!63639) Bool)

(assert (=> start!87234 (array_inv!23622 a!3219)))

(assert (=> start!87234 true))

(declare-fun b!1010871 () Bool)

(declare-fun res!679143 () Bool)

(assert (=> b!1010871 (=> (not res!679143) (not e!568724))))

(assert (=> b!1010871 (= res!679143 (validKeyInArray!0 (select (arr!30632 a!3219) j!170)))))

(declare-fun b!1010872 () Bool)

(declare-fun res!679148 () Bool)

(assert (=> b!1010872 (=> (not res!679148) (not e!568728))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63639 (_ BitVec 32)) Bool)

(assert (=> b!1010872 (= res!679148 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1010873 () Bool)

(declare-fun res!679146 () Bool)

(assert (=> b!1010873 (=> (not res!679146) (not e!568724))))

(assert (=> b!1010873 (= res!679146 (and (= (size!31135 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31135 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31135 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1010874 () Bool)

(declare-fun res!679153 () Bool)

(assert (=> b!1010874 (=> (not res!679153) (not e!568729))))

(assert (=> b!1010874 (= res!679153 (not (= lt!446773 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!446775 lt!446771 mask!3464))))))

(declare-fun b!1010875 () Bool)

(assert (=> b!1010875 (= e!568727 false)))

(declare-fun lt!446777 () SeekEntryResult!9564)

(assert (=> b!1010875 (= lt!446777 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!446772 (select (arr!30632 a!3219) j!170) a!3219 mask!3464))))

(assert (= (and start!87234 res!679145) b!1010873))

(assert (= (and b!1010873 res!679146) b!1010871))

(assert (= (and b!1010871 res!679143) b!1010866))

(assert (= (and b!1010866 res!679147) b!1010870))

(assert (= (and b!1010870 res!679152) b!1010862))

(assert (= (and b!1010862 res!679149) b!1010872))

(assert (= (and b!1010872 res!679148) b!1010863))

(assert (= (and b!1010863 res!679156) b!1010861))

(assert (= (and b!1010861 res!679150) b!1010865))

(assert (= (and b!1010865 res!679144) b!1010869))

(assert (= (and b!1010869 res!679155) b!1010864))

(assert (= (and b!1010864 res!679154) b!1010874))

(assert (= (and b!1010874 res!679153) b!1010868))

(assert (= (and b!1010868 res!679142) b!1010867))

(assert (= (and b!1010867 res!679151) b!1010875))

(declare-fun m!935153 () Bool)

(assert (=> b!1010875 m!935153))

(assert (=> b!1010875 m!935153))

(declare-fun m!935155 () Bool)

(assert (=> b!1010875 m!935155))

(declare-fun m!935157 () Bool)

(assert (=> b!1010864 m!935157))

(assert (=> b!1010864 m!935157))

(declare-fun m!935159 () Bool)

(assert (=> b!1010864 m!935159))

(declare-fun m!935161 () Bool)

(assert (=> b!1010864 m!935161))

(declare-fun m!935163 () Bool)

(assert (=> b!1010864 m!935163))

(declare-fun m!935165 () Bool)

(assert (=> b!1010863 m!935165))

(assert (=> b!1010865 m!935153))

(assert (=> b!1010865 m!935153))

(declare-fun m!935167 () Bool)

(assert (=> b!1010865 m!935167))

(assert (=> b!1010865 m!935167))

(assert (=> b!1010865 m!935153))

(declare-fun m!935169 () Bool)

(assert (=> b!1010865 m!935169))

(declare-fun m!935171 () Bool)

(assert (=> b!1010867 m!935171))

(assert (=> b!1010871 m!935153))

(assert (=> b!1010871 m!935153))

(declare-fun m!935173 () Bool)

(assert (=> b!1010871 m!935173))

(declare-fun m!935175 () Bool)

(assert (=> b!1010870 m!935175))

(declare-fun m!935177 () Bool)

(assert (=> b!1010862 m!935177))

(declare-fun m!935179 () Bool)

(assert (=> b!1010874 m!935179))

(declare-fun m!935181 () Bool)

(assert (=> b!1010866 m!935181))

(assert (=> b!1010869 m!935153))

(assert (=> b!1010869 m!935153))

(declare-fun m!935183 () Bool)

(assert (=> b!1010869 m!935183))

(declare-fun m!935185 () Bool)

(assert (=> b!1010872 m!935185))

(declare-fun m!935187 () Bool)

(assert (=> start!87234 m!935187))

(declare-fun m!935189 () Bool)

(assert (=> start!87234 m!935189))

(check-sat (not start!87234) (not b!1010870) (not b!1010866) (not b!1010862) (not b!1010867) (not b!1010863) (not b!1010874) (not b!1010864) (not b!1010871) (not b!1010869) (not b!1010875) (not b!1010872) (not b!1010865))
(check-sat)
