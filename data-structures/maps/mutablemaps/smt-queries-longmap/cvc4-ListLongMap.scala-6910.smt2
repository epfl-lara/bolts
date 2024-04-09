; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86912 () Bool)

(assert start!86912)

(declare-fun res!676193 () Bool)

(declare-fun e!566879 () Bool)

(assert (=> start!86912 (=> (not res!676193) (not e!566879))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86912 (= res!676193 (validMask!0 mask!3464))))

(assert (=> start!86912 e!566879))

(declare-datatypes ((array!63512 0))(
  ( (array!63513 (arr!30573 (Array (_ BitVec 32) (_ BitVec 64))) (size!31076 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63512)

(declare-fun array_inv!23563 (array!63512) Bool)

(assert (=> start!86912 (array_inv!23563 a!3219)))

(assert (=> start!86912 true))

(declare-fun b!1007133 () Bool)

(declare-fun res!676190 () Bool)

(declare-fun e!566880 () Bool)

(assert (=> b!1007133 (=> (not res!676190) (not e!566880))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1007133 (= res!676190 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1007134 () Bool)

(declare-fun res!676182 () Bool)

(declare-fun e!566878 () Bool)

(assert (=> b!1007134 (=> (not res!676182) (not e!566878))))

(declare-datatypes ((List!21375 0))(
  ( (Nil!21372) (Cons!21371 (h!22557 (_ BitVec 64)) (t!30384 List!21375)) )
))
(declare-fun arrayNoDuplicates!0 (array!63512 (_ BitVec 32) List!21375) Bool)

(assert (=> b!1007134 (= res!676182 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21372))))

(declare-fun b!1007135 () Bool)

(declare-fun e!566877 () Bool)

(declare-fun e!566882 () Bool)

(assert (=> b!1007135 (= e!566877 e!566882)))

(declare-fun res!676195 () Bool)

(assert (=> b!1007135 (=> (not res!676195) (not e!566882))))

(declare-datatypes ((SeekEntryResult!9505 0))(
  ( (MissingZero!9505 (index!40390 (_ BitVec 32))) (Found!9505 (index!40391 (_ BitVec 32))) (Intermediate!9505 (undefined!10317 Bool) (index!40392 (_ BitVec 32)) (x!87816 (_ BitVec 32))) (Undefined!9505) (MissingVacant!9505 (index!40393 (_ BitVec 32))) )
))
(declare-fun lt!445058 () SeekEntryResult!9505)

(declare-fun lt!445059 () SeekEntryResult!9505)

(assert (=> b!1007135 (= res!676195 (= lt!445058 lt!445059))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63512 (_ BitVec 32)) SeekEntryResult!9505)

(assert (=> b!1007135 (= lt!445058 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30573 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1007136 () Bool)

(declare-fun res!676187 () Bool)

(assert (=> b!1007136 (=> (not res!676187) (not e!566879))))

(assert (=> b!1007136 (= res!676187 (and (= (size!31076 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31076 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31076 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1007137 () Bool)

(declare-fun res!676191 () Bool)

(assert (=> b!1007137 (=> (not res!676191) (not e!566880))))

(declare-fun lt!445061 () array!63512)

(declare-fun lt!445057 () (_ BitVec 64))

(assert (=> b!1007137 (= res!676191 (not (= lt!445058 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!445057 lt!445061 mask!3464))))))

(declare-fun b!1007138 () Bool)

(assert (=> b!1007138 (= e!566880 false)))

(declare-fun lt!445060 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1007138 (= lt!445060 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1007139 () Bool)

(declare-fun res!676185 () Bool)

(assert (=> b!1007139 (=> (not res!676185) (not e!566879))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1007139 (= res!676185 (validKeyInArray!0 (select (arr!30573 a!3219) j!170)))))

(declare-fun b!1007140 () Bool)

(declare-fun res!676184 () Bool)

(assert (=> b!1007140 (=> (not res!676184) (not e!566879))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63512 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1007140 (= res!676184 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1007141 () Bool)

(assert (=> b!1007141 (= e!566878 e!566877)))

(declare-fun res!676194 () Bool)

(assert (=> b!1007141 (=> (not res!676194) (not e!566877))))

(declare-fun lt!445062 () SeekEntryResult!9505)

(assert (=> b!1007141 (= res!676194 (= lt!445062 lt!445059))))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1007141 (= lt!445059 (Intermediate!9505 false resIndex!38 resX!38))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1007141 (= lt!445062 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30573 a!3219) j!170) mask!3464) (select (arr!30573 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1007142 () Bool)

(declare-fun res!676189 () Bool)

(assert (=> b!1007142 (=> (not res!676189) (not e!566878))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63512 (_ BitVec 32)) Bool)

(assert (=> b!1007142 (= res!676189 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1007143 () Bool)

(assert (=> b!1007143 (= e!566882 e!566880)))

(declare-fun res!676192 () Bool)

(assert (=> b!1007143 (=> (not res!676192) (not e!566880))))

(assert (=> b!1007143 (= res!676192 (not (= lt!445062 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!445057 mask!3464) lt!445057 lt!445061 mask!3464))))))

(assert (=> b!1007143 (= lt!445057 (select (store (arr!30573 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1007143 (= lt!445061 (array!63513 (store (arr!30573 a!3219) i!1194 k!2224) (size!31076 a!3219)))))

(declare-fun b!1007144 () Bool)

(assert (=> b!1007144 (= e!566879 e!566878)))

(declare-fun res!676183 () Bool)

(assert (=> b!1007144 (=> (not res!676183) (not e!566878))))

(declare-fun lt!445056 () SeekEntryResult!9505)

(assert (=> b!1007144 (= res!676183 (or (= lt!445056 (MissingVacant!9505 i!1194)) (= lt!445056 (MissingZero!9505 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63512 (_ BitVec 32)) SeekEntryResult!9505)

(assert (=> b!1007144 (= lt!445056 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1007145 () Bool)

(declare-fun res!676188 () Bool)

(assert (=> b!1007145 (=> (not res!676188) (not e!566879))))

(assert (=> b!1007145 (= res!676188 (validKeyInArray!0 k!2224))))

(declare-fun b!1007146 () Bool)

(declare-fun res!676186 () Bool)

(assert (=> b!1007146 (=> (not res!676186) (not e!566878))))

(assert (=> b!1007146 (= res!676186 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31076 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31076 a!3219))))))

(assert (= (and start!86912 res!676193) b!1007136))

(assert (= (and b!1007136 res!676187) b!1007139))

(assert (= (and b!1007139 res!676185) b!1007145))

(assert (= (and b!1007145 res!676188) b!1007140))

(assert (= (and b!1007140 res!676184) b!1007144))

(assert (= (and b!1007144 res!676183) b!1007142))

(assert (= (and b!1007142 res!676189) b!1007134))

(assert (= (and b!1007134 res!676182) b!1007146))

(assert (= (and b!1007146 res!676186) b!1007141))

(assert (= (and b!1007141 res!676194) b!1007135))

(assert (= (and b!1007135 res!676195) b!1007143))

(assert (= (and b!1007143 res!676192) b!1007137))

(assert (= (and b!1007137 res!676191) b!1007133))

(assert (= (and b!1007133 res!676190) b!1007138))

(declare-fun m!932163 () Bool)

(assert (=> b!1007141 m!932163))

(assert (=> b!1007141 m!932163))

(declare-fun m!932165 () Bool)

(assert (=> b!1007141 m!932165))

(assert (=> b!1007141 m!932165))

(assert (=> b!1007141 m!932163))

(declare-fun m!932167 () Bool)

(assert (=> b!1007141 m!932167))

(assert (=> b!1007135 m!932163))

(assert (=> b!1007135 m!932163))

(declare-fun m!932169 () Bool)

(assert (=> b!1007135 m!932169))

(declare-fun m!932171 () Bool)

(assert (=> b!1007145 m!932171))

(declare-fun m!932173 () Bool)

(assert (=> b!1007143 m!932173))

(assert (=> b!1007143 m!932173))

(declare-fun m!932175 () Bool)

(assert (=> b!1007143 m!932175))

(declare-fun m!932177 () Bool)

(assert (=> b!1007143 m!932177))

(declare-fun m!932179 () Bool)

(assert (=> b!1007143 m!932179))

(declare-fun m!932181 () Bool)

(assert (=> start!86912 m!932181))

(declare-fun m!932183 () Bool)

(assert (=> start!86912 m!932183))

(declare-fun m!932185 () Bool)

(assert (=> b!1007137 m!932185))

(declare-fun m!932187 () Bool)

(assert (=> b!1007138 m!932187))

(declare-fun m!932189 () Bool)

(assert (=> b!1007140 m!932189))

(declare-fun m!932191 () Bool)

(assert (=> b!1007134 m!932191))

(assert (=> b!1007139 m!932163))

(assert (=> b!1007139 m!932163))

(declare-fun m!932193 () Bool)

(assert (=> b!1007139 m!932193))

(declare-fun m!932195 () Bool)

(assert (=> b!1007144 m!932195))

(declare-fun m!932197 () Bool)

(assert (=> b!1007142 m!932197))

(push 1)

