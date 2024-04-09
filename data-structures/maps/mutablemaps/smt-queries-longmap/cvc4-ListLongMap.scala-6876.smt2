; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86546 () Bool)

(assert start!86546)

(declare-fun b!1002163 () Bool)

(declare-fun e!564638 () Bool)

(declare-fun e!564639 () Bool)

(assert (=> b!1002163 (= e!564638 e!564639)))

(declare-fun res!671801 () Bool)

(assert (=> b!1002163 (=> (not res!671801) (not e!564639))))

(declare-datatypes ((array!63299 0))(
  ( (array!63300 (arr!30471 (Array (_ BitVec 32) (_ BitVec 64))) (size!30974 (_ BitVec 32))) )
))
(declare-fun lt!443050 () array!63299)

(declare-datatypes ((SeekEntryResult!9403 0))(
  ( (MissingZero!9403 (index!39982 (_ BitVec 32))) (Found!9403 (index!39983 (_ BitVec 32))) (Intermediate!9403 (undefined!10215 Bool) (index!39984 (_ BitVec 32)) (x!87424 (_ BitVec 32))) (Undefined!9403) (MissingVacant!9403 (index!39985 (_ BitVec 32))) )
))
(declare-fun lt!443054 () SeekEntryResult!9403)

(declare-fun lt!443053 () (_ BitVec 64))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63299 (_ BitVec 32)) SeekEntryResult!9403)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1002163 (= res!671801 (not (= lt!443054 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!443053 mask!3464) lt!443053 lt!443050 mask!3464))))))

(declare-fun a!3219 () array!63299)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(assert (=> b!1002163 (= lt!443053 (select (store (arr!30471 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1002163 (= lt!443050 (array!63300 (store (arr!30471 a!3219) i!1194 k!2224) (size!30974 a!3219)))))

(declare-fun b!1002164 () Bool)

(declare-fun e!564641 () Bool)

(declare-fun e!564640 () Bool)

(assert (=> b!1002164 (= e!564641 e!564640)))

(declare-fun res!671798 () Bool)

(assert (=> b!1002164 (=> (not res!671798) (not e!564640))))

(declare-fun lt!443055 () SeekEntryResult!9403)

(assert (=> b!1002164 (= res!671798 (or (= lt!443055 (MissingVacant!9403 i!1194)) (= lt!443055 (MissingZero!9403 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63299 (_ BitVec 32)) SeekEntryResult!9403)

(assert (=> b!1002164 (= lt!443055 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1002165 () Bool)

(declare-fun e!564637 () Bool)

(assert (=> b!1002165 (= e!564637 e!564638)))

(declare-fun res!671809 () Bool)

(assert (=> b!1002165 (=> (not res!671809) (not e!564638))))

(declare-fun lt!443048 () SeekEntryResult!9403)

(declare-fun lt!443049 () SeekEntryResult!9403)

(assert (=> b!1002165 (= res!671809 (= lt!443048 lt!443049))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!1002165 (= lt!443048 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30471 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1002166 () Bool)

(declare-fun res!671802 () Bool)

(assert (=> b!1002166 (=> (not res!671802) (not e!564641))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1002166 (= res!671802 (validKeyInArray!0 k!2224))))

(declare-fun b!1002167 () Bool)

(declare-fun res!671808 () Bool)

(assert (=> b!1002167 (=> (not res!671808) (not e!564640))))

(declare-datatypes ((List!21273 0))(
  ( (Nil!21270) (Cons!21269 (h!22446 (_ BitVec 64)) (t!30282 List!21273)) )
))
(declare-fun arrayNoDuplicates!0 (array!63299 (_ BitVec 32) List!21273) Bool)

(assert (=> b!1002167 (= res!671808 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21270))))

(declare-fun res!671806 () Bool)

(assert (=> start!86546 (=> (not res!671806) (not e!564641))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86546 (= res!671806 (validMask!0 mask!3464))))

(assert (=> start!86546 e!564641))

(declare-fun array_inv!23461 (array!63299) Bool)

(assert (=> start!86546 (array_inv!23461 a!3219)))

(assert (=> start!86546 true))

(declare-fun b!1002168 () Bool)

(declare-fun e!564636 () Bool)

(assert (=> b!1002168 (= e!564639 e!564636)))

(declare-fun res!671804 () Bool)

(assert (=> b!1002168 (=> (not res!671804) (not e!564636))))

(declare-fun lt!443051 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1002168 (= res!671804 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!443051 #b00000000000000000000000000000000) (bvslt lt!443051 (size!30974 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1002168 (= lt!443051 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1002169 () Bool)

(declare-fun res!671797 () Bool)

(assert (=> b!1002169 (=> (not res!671797) (not e!564639))))

(assert (=> b!1002169 (= res!671797 (not (= lt!443048 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!443053 lt!443050 mask!3464))))))

(declare-fun b!1002170 () Bool)

(declare-fun res!671803 () Bool)

(assert (=> b!1002170 (=> (not res!671803) (not e!564640))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63299 (_ BitVec 32)) Bool)

(assert (=> b!1002170 (= res!671803 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1002171 () Bool)

(declare-fun res!671800 () Bool)

(assert (=> b!1002171 (=> (not res!671800) (not e!564641))))

(assert (=> b!1002171 (= res!671800 (validKeyInArray!0 (select (arr!30471 a!3219) j!170)))))

(declare-fun b!1002172 () Bool)

(assert (=> b!1002172 (= e!564636 false)))

(declare-fun lt!443052 () SeekEntryResult!9403)

(assert (=> b!1002172 (= lt!443052 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443051 lt!443053 lt!443050 mask!3464))))

(declare-fun b!1002173 () Bool)

(declare-fun res!671812 () Bool)

(assert (=> b!1002173 (=> (not res!671812) (not e!564636))))

(assert (=> b!1002173 (= res!671812 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443051 (select (arr!30471 a!3219) j!170) a!3219 mask!3464) lt!443049))))

(declare-fun b!1002174 () Bool)

(assert (=> b!1002174 (= e!564640 e!564637)))

(declare-fun res!671807 () Bool)

(assert (=> b!1002174 (=> (not res!671807) (not e!564637))))

(assert (=> b!1002174 (= res!671807 (= lt!443054 lt!443049))))

(declare-fun resIndex!38 () (_ BitVec 32))

(assert (=> b!1002174 (= lt!443049 (Intermediate!9403 false resIndex!38 resX!38))))

(assert (=> b!1002174 (= lt!443054 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30471 a!3219) j!170) mask!3464) (select (arr!30471 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1002175 () Bool)

(declare-fun res!671805 () Bool)

(assert (=> b!1002175 (=> (not res!671805) (not e!564639))))

(assert (=> b!1002175 (= res!671805 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1002176 () Bool)

(declare-fun res!671799 () Bool)

(assert (=> b!1002176 (=> (not res!671799) (not e!564641))))

(assert (=> b!1002176 (= res!671799 (and (= (size!30974 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30974 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30974 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1002177 () Bool)

(declare-fun res!671811 () Bool)

(assert (=> b!1002177 (=> (not res!671811) (not e!564641))))

(declare-fun arrayContainsKey!0 (array!63299 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1002177 (= res!671811 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1002178 () Bool)

(declare-fun res!671810 () Bool)

(assert (=> b!1002178 (=> (not res!671810) (not e!564640))))

(assert (=> b!1002178 (= res!671810 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30974 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30974 a!3219))))))

(assert (= (and start!86546 res!671806) b!1002176))

(assert (= (and b!1002176 res!671799) b!1002171))

(assert (= (and b!1002171 res!671800) b!1002166))

(assert (= (and b!1002166 res!671802) b!1002177))

(assert (= (and b!1002177 res!671811) b!1002164))

(assert (= (and b!1002164 res!671798) b!1002170))

(assert (= (and b!1002170 res!671803) b!1002167))

(assert (= (and b!1002167 res!671808) b!1002178))

(assert (= (and b!1002178 res!671810) b!1002174))

(assert (= (and b!1002174 res!671807) b!1002165))

(assert (= (and b!1002165 res!671809) b!1002163))

(assert (= (and b!1002163 res!671801) b!1002169))

(assert (= (and b!1002169 res!671797) b!1002175))

(assert (= (and b!1002175 res!671805) b!1002168))

(assert (= (and b!1002168 res!671804) b!1002173))

(assert (= (and b!1002173 res!671812) b!1002172))

(declare-fun m!928181 () Bool)

(assert (=> b!1002174 m!928181))

(assert (=> b!1002174 m!928181))

(declare-fun m!928183 () Bool)

(assert (=> b!1002174 m!928183))

(assert (=> b!1002174 m!928183))

(assert (=> b!1002174 m!928181))

(declare-fun m!928185 () Bool)

(assert (=> b!1002174 m!928185))

(declare-fun m!928187 () Bool)

(assert (=> b!1002177 m!928187))

(declare-fun m!928189 () Bool)

(assert (=> b!1002167 m!928189))

(declare-fun m!928191 () Bool)

(assert (=> b!1002170 m!928191))

(declare-fun m!928193 () Bool)

(assert (=> b!1002164 m!928193))

(declare-fun m!928195 () Bool)

(assert (=> b!1002169 m!928195))

(declare-fun m!928197 () Bool)

(assert (=> start!86546 m!928197))

(declare-fun m!928199 () Bool)

(assert (=> start!86546 m!928199))

(declare-fun m!928201 () Bool)

(assert (=> b!1002163 m!928201))

(assert (=> b!1002163 m!928201))

(declare-fun m!928203 () Bool)

(assert (=> b!1002163 m!928203))

(declare-fun m!928205 () Bool)

(assert (=> b!1002163 m!928205))

(declare-fun m!928207 () Bool)

(assert (=> b!1002163 m!928207))

(declare-fun m!928209 () Bool)

(assert (=> b!1002166 m!928209))

(assert (=> b!1002165 m!928181))

(assert (=> b!1002165 m!928181))

(declare-fun m!928211 () Bool)

(assert (=> b!1002165 m!928211))

(declare-fun m!928213 () Bool)

(assert (=> b!1002168 m!928213))

(assert (=> b!1002173 m!928181))

(assert (=> b!1002173 m!928181))

(declare-fun m!928215 () Bool)

(assert (=> b!1002173 m!928215))

(declare-fun m!928217 () Bool)

(assert (=> b!1002172 m!928217))

(assert (=> b!1002171 m!928181))

(assert (=> b!1002171 m!928181))

(declare-fun m!928219 () Bool)

(assert (=> b!1002171 m!928219))

(push 1)

(assert (not start!86546))

