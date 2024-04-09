; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86910 () Bool)

(assert start!86910)

(declare-fun b!1007091 () Bool)

(declare-fun res!676153 () Bool)

(declare-fun e!566862 () Bool)

(assert (=> b!1007091 (=> (not res!676153) (not e!566862))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1007091 (= res!676153 (validKeyInArray!0 k0!2224))))

(declare-fun b!1007092 () Bool)

(declare-fun res!676144 () Bool)

(assert (=> b!1007092 (=> (not res!676144) (not e!566862))))

(declare-datatypes ((array!63510 0))(
  ( (array!63511 (arr!30572 (Array (_ BitVec 32) (_ BitVec 64))) (size!31075 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63510)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1007092 (= res!676144 (and (= (size!31075 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31075 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31075 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1007093 () Bool)

(declare-fun res!676143 () Bool)

(declare-fun e!566864 () Bool)

(assert (=> b!1007093 (=> (not res!676143) (not e!566864))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(assert (=> b!1007093 (= res!676143 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1007094 () Bool)

(declare-fun res!676150 () Bool)

(assert (=> b!1007094 (=> (not res!676150) (not e!566864))))

(declare-fun lt!445040 () array!63510)

(declare-fun lt!445035 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!9504 0))(
  ( (MissingZero!9504 (index!40386 (_ BitVec 32))) (Found!9504 (index!40387 (_ BitVec 32))) (Intermediate!9504 (undefined!10316 Bool) (index!40388 (_ BitVec 32)) (x!87815 (_ BitVec 32))) (Undefined!9504) (MissingVacant!9504 (index!40389 (_ BitVec 32))) )
))
(declare-fun lt!445039 () SeekEntryResult!9504)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63510 (_ BitVec 32)) SeekEntryResult!9504)

(assert (=> b!1007094 (= res!676150 (not (= lt!445039 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!445035 lt!445040 mask!3464))))))

(declare-fun b!1007095 () Bool)

(declare-fun res!676142 () Bool)

(assert (=> b!1007095 (=> (not res!676142) (not e!566862))))

(declare-fun arrayContainsKey!0 (array!63510 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1007095 (= res!676142 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1007096 () Bool)

(assert (=> b!1007096 (= e!566864 false)))

(declare-fun lt!445041 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1007096 (= lt!445041 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1007097 () Bool)

(declare-fun res!676149 () Bool)

(declare-fun e!566859 () Bool)

(assert (=> b!1007097 (=> (not res!676149) (not e!566859))))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1007097 (= res!676149 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31075 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31075 a!3219))))))

(declare-fun b!1007098 () Bool)

(declare-fun e!566863 () Bool)

(assert (=> b!1007098 (= e!566863 e!566864)))

(declare-fun res!676148 () Bool)

(assert (=> b!1007098 (=> (not res!676148) (not e!566864))))

(declare-fun lt!445037 () SeekEntryResult!9504)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1007098 (= res!676148 (not (= lt!445037 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!445035 mask!3464) lt!445035 lt!445040 mask!3464))))))

(assert (=> b!1007098 (= lt!445035 (select (store (arr!30572 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1007098 (= lt!445040 (array!63511 (store (arr!30572 a!3219) i!1194 k0!2224) (size!31075 a!3219)))))

(declare-fun b!1007099 () Bool)

(declare-fun e!566861 () Bool)

(assert (=> b!1007099 (= e!566859 e!566861)))

(declare-fun res!676147 () Bool)

(assert (=> b!1007099 (=> (not res!676147) (not e!566861))))

(declare-fun lt!445036 () SeekEntryResult!9504)

(assert (=> b!1007099 (= res!676147 (= lt!445037 lt!445036))))

(assert (=> b!1007099 (= lt!445036 (Intermediate!9504 false resIndex!38 resX!38))))

(assert (=> b!1007099 (= lt!445037 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30572 a!3219) j!170) mask!3464) (select (arr!30572 a!3219) j!170) a!3219 mask!3464))))

(declare-fun res!676146 () Bool)

(assert (=> start!86910 (=> (not res!676146) (not e!566862))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86910 (= res!676146 (validMask!0 mask!3464))))

(assert (=> start!86910 e!566862))

(declare-fun array_inv!23562 (array!63510) Bool)

(assert (=> start!86910 (array_inv!23562 a!3219)))

(assert (=> start!86910 true))

(declare-fun b!1007100 () Bool)

(declare-fun res!676145 () Bool)

(assert (=> b!1007100 (=> (not res!676145) (not e!566859))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63510 (_ BitVec 32)) Bool)

(assert (=> b!1007100 (= res!676145 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1007101 () Bool)

(assert (=> b!1007101 (= e!566861 e!566863)))

(declare-fun res!676152 () Bool)

(assert (=> b!1007101 (=> (not res!676152) (not e!566863))))

(assert (=> b!1007101 (= res!676152 (= lt!445039 lt!445036))))

(assert (=> b!1007101 (= lt!445039 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30572 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1007102 () Bool)

(declare-fun res!676151 () Bool)

(assert (=> b!1007102 (=> (not res!676151) (not e!566859))))

(declare-datatypes ((List!21374 0))(
  ( (Nil!21371) (Cons!21370 (h!22556 (_ BitVec 64)) (t!30383 List!21374)) )
))
(declare-fun arrayNoDuplicates!0 (array!63510 (_ BitVec 32) List!21374) Bool)

(assert (=> b!1007102 (= res!676151 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21371))))

(declare-fun b!1007103 () Bool)

(declare-fun res!676140 () Bool)

(assert (=> b!1007103 (=> (not res!676140) (not e!566862))))

(assert (=> b!1007103 (= res!676140 (validKeyInArray!0 (select (arr!30572 a!3219) j!170)))))

(declare-fun b!1007104 () Bool)

(assert (=> b!1007104 (= e!566862 e!566859)))

(declare-fun res!676141 () Bool)

(assert (=> b!1007104 (=> (not res!676141) (not e!566859))))

(declare-fun lt!445038 () SeekEntryResult!9504)

(assert (=> b!1007104 (= res!676141 (or (= lt!445038 (MissingVacant!9504 i!1194)) (= lt!445038 (MissingZero!9504 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63510 (_ BitVec 32)) SeekEntryResult!9504)

(assert (=> b!1007104 (= lt!445038 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(assert (= (and start!86910 res!676146) b!1007092))

(assert (= (and b!1007092 res!676144) b!1007103))

(assert (= (and b!1007103 res!676140) b!1007091))

(assert (= (and b!1007091 res!676153) b!1007095))

(assert (= (and b!1007095 res!676142) b!1007104))

(assert (= (and b!1007104 res!676141) b!1007100))

(assert (= (and b!1007100 res!676145) b!1007102))

(assert (= (and b!1007102 res!676151) b!1007097))

(assert (= (and b!1007097 res!676149) b!1007099))

(assert (= (and b!1007099 res!676147) b!1007101))

(assert (= (and b!1007101 res!676152) b!1007098))

(assert (= (and b!1007098 res!676148) b!1007094))

(assert (= (and b!1007094 res!676150) b!1007093))

(assert (= (and b!1007093 res!676143) b!1007096))

(declare-fun m!932127 () Bool)

(assert (=> b!1007104 m!932127))

(declare-fun m!932129 () Bool)

(assert (=> b!1007102 m!932129))

(declare-fun m!932131 () Bool)

(assert (=> start!86910 m!932131))

(declare-fun m!932133 () Bool)

(assert (=> start!86910 m!932133))

(declare-fun m!932135 () Bool)

(assert (=> b!1007099 m!932135))

(assert (=> b!1007099 m!932135))

(declare-fun m!932137 () Bool)

(assert (=> b!1007099 m!932137))

(assert (=> b!1007099 m!932137))

(assert (=> b!1007099 m!932135))

(declare-fun m!932139 () Bool)

(assert (=> b!1007099 m!932139))

(declare-fun m!932141 () Bool)

(assert (=> b!1007096 m!932141))

(declare-fun m!932143 () Bool)

(assert (=> b!1007091 m!932143))

(declare-fun m!932145 () Bool)

(assert (=> b!1007100 m!932145))

(declare-fun m!932147 () Bool)

(assert (=> b!1007094 m!932147))

(assert (=> b!1007101 m!932135))

(assert (=> b!1007101 m!932135))

(declare-fun m!932149 () Bool)

(assert (=> b!1007101 m!932149))

(assert (=> b!1007103 m!932135))

(assert (=> b!1007103 m!932135))

(declare-fun m!932151 () Bool)

(assert (=> b!1007103 m!932151))

(declare-fun m!932153 () Bool)

(assert (=> b!1007098 m!932153))

(assert (=> b!1007098 m!932153))

(declare-fun m!932155 () Bool)

(assert (=> b!1007098 m!932155))

(declare-fun m!932157 () Bool)

(assert (=> b!1007098 m!932157))

(declare-fun m!932159 () Bool)

(assert (=> b!1007098 m!932159))

(declare-fun m!932161 () Bool)

(assert (=> b!1007095 m!932161))

(check-sat (not b!1007095) (not b!1007094) (not b!1007102) (not start!86910) (not b!1007099) (not b!1007098) (not b!1007101) (not b!1007096) (not b!1007100) (not b!1007091) (not b!1007103) (not b!1007104))
(check-sat)
