; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47412 () Bool)

(assert start!47412)

(declare-fun b!521215 () Bool)

(declare-fun e!304098 () Bool)

(declare-fun e!304097 () Bool)

(assert (=> b!521215 (= e!304098 e!304097)))

(declare-fun res!319176 () Bool)

(assert (=> b!521215 (=> (not res!319176) (not e!304097))))

(declare-datatypes ((SeekEntryResult!4426 0))(
  ( (MissingZero!4426 (index!19907 (_ BitVec 32))) (Found!4426 (index!19908 (_ BitVec 32))) (Intermediate!4426 (undefined!5238 Bool) (index!19909 (_ BitVec 32)) (x!48919 (_ BitVec 32))) (Undefined!4426) (MissingVacant!4426 (index!19910 (_ BitVec 32))) )
))
(declare-fun lt!238903 () SeekEntryResult!4426)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!521215 (= res!319176 (or (= lt!238903 (MissingZero!4426 i!1204)) (= lt!238903 (MissingVacant!4426 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-datatypes ((array!33198 0))(
  ( (array!33199 (arr!15952 (Array (_ BitVec 32) (_ BitVec 64))) (size!16316 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33198)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33198 (_ BitVec 32)) SeekEntryResult!4426)

(assert (=> b!521215 (= lt!238903 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!521216 () Bool)

(declare-datatypes ((Unit!16170 0))(
  ( (Unit!16171) )
))
(declare-fun e!304095 () Unit!16170)

(declare-fun Unit!16172 () Unit!16170)

(assert (=> b!521216 (= e!304095 Unit!16172)))

(declare-fun lt!238904 () SeekEntryResult!4426)

(declare-fun lt!238902 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!238909 () Unit!16170)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33198 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16170)

(assert (=> b!521216 (= lt!238909 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!238902 #b00000000000000000000000000000000 (index!19909 lt!238904) (x!48919 lt!238904) mask!3524))))

(declare-fun res!319171 () Bool)

(declare-fun lt!238908 () (_ BitVec 64))

(declare-fun lt!238905 () array!33198)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33198 (_ BitVec 32)) SeekEntryResult!4426)

(assert (=> b!521216 (= res!319171 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238902 lt!238908 lt!238905 mask!3524) (Intermediate!4426 false (index!19909 lt!238904) (x!48919 lt!238904))))))

(declare-fun e!304099 () Bool)

(assert (=> b!521216 (=> (not res!319171) (not e!304099))))

(assert (=> b!521216 e!304099))

(declare-fun b!521217 () Bool)

(declare-fun res!319177 () Bool)

(assert (=> b!521217 (=> (not res!319177) (not e!304098))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!521217 (= res!319177 (validKeyInArray!0 (select (arr!15952 a!3235) j!176)))))

(declare-fun b!521218 () Bool)

(declare-fun res!319167 () Bool)

(assert (=> b!521218 (=> (not res!319167) (not e!304098))))

(assert (=> b!521218 (= res!319167 (and (= (size!16316 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16316 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16316 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!521219 () Bool)

(declare-fun res!319175 () Bool)

(assert (=> b!521219 (=> (not res!319175) (not e!304097))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33198 (_ BitVec 32)) Bool)

(assert (=> b!521219 (= res!319175 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!521220 () Bool)

(declare-fun res!319174 () Bool)

(declare-fun e!304096 () Bool)

(assert (=> b!521220 (=> res!319174 e!304096)))

(get-info :version)

(assert (=> b!521220 (= res!319174 (or (undefined!5238 lt!238904) (not ((_ is Intermediate!4426) lt!238904))))))

(declare-fun b!521221 () Bool)

(declare-fun e!304093 () Bool)

(assert (=> b!521221 (= e!304093 (= (seekEntryOrOpen!0 (select (arr!15952 a!3235) j!176) a!3235 mask!3524) (Found!4426 j!176)))))

(declare-fun res!319169 () Bool)

(assert (=> start!47412 (=> (not res!319169) (not e!304098))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47412 (= res!319169 (validMask!0 mask!3524))))

(assert (=> start!47412 e!304098))

(assert (=> start!47412 true))

(declare-fun array_inv!11726 (array!33198) Bool)

(assert (=> start!47412 (array_inv!11726 a!3235)))

(declare-fun b!521222 () Bool)

(declare-fun res!319178 () Bool)

(assert (=> b!521222 (=> (not res!319178) (not e!304098))))

(assert (=> b!521222 (= res!319178 (validKeyInArray!0 k0!2280))))

(declare-fun b!521223 () Bool)

(assert (=> b!521223 (= e!304099 false)))

(declare-fun b!521224 () Bool)

(assert (=> b!521224 (= e!304097 (not e!304096))))

(declare-fun res!319172 () Bool)

(assert (=> b!521224 (=> res!319172 e!304096)))

(declare-fun lt!238910 () (_ BitVec 32))

(assert (=> b!521224 (= res!319172 (= lt!238904 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238910 lt!238908 lt!238905 mask!3524)))))

(assert (=> b!521224 (= lt!238904 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238902 (select (arr!15952 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!521224 (= lt!238910 (toIndex!0 lt!238908 mask!3524))))

(assert (=> b!521224 (= lt!238908 (select (store (arr!15952 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!521224 (= lt!238902 (toIndex!0 (select (arr!15952 a!3235) j!176) mask!3524))))

(assert (=> b!521224 (= lt!238905 (array!33199 (store (arr!15952 a!3235) i!1204 k0!2280) (size!16316 a!3235)))))

(assert (=> b!521224 e!304093))

(declare-fun res!319168 () Bool)

(assert (=> b!521224 (=> (not res!319168) (not e!304093))))

(assert (=> b!521224 (= res!319168 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!238907 () Unit!16170)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33198 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16170)

(assert (=> b!521224 (= lt!238907 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!521225 () Bool)

(declare-fun res!319170 () Bool)

(assert (=> b!521225 (=> (not res!319170) (not e!304097))))

(declare-datatypes ((List!10163 0))(
  ( (Nil!10160) (Cons!10159 (h!11081 (_ BitVec 64)) (t!16399 List!10163)) )
))
(declare-fun arrayNoDuplicates!0 (array!33198 (_ BitVec 32) List!10163) Bool)

(assert (=> b!521225 (= res!319170 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10160))))

(declare-fun b!521226 () Bool)

(declare-fun res!319173 () Bool)

(assert (=> b!521226 (=> (not res!319173) (not e!304098))))

(declare-fun arrayContainsKey!0 (array!33198 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!521226 (= res!319173 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!521227 () Bool)

(declare-fun Unit!16173 () Unit!16170)

(assert (=> b!521227 (= e!304095 Unit!16173)))

(declare-fun b!521228 () Bool)

(assert (=> b!521228 (= e!304096 true)))

(assert (=> b!521228 (and (or (= (select (arr!15952 a!3235) (index!19909 lt!238904)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15952 a!3235) (index!19909 lt!238904)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15952 a!3235) (index!19909 lt!238904)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15952 a!3235) (index!19909 lt!238904)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!238906 () Unit!16170)

(assert (=> b!521228 (= lt!238906 e!304095)))

(declare-fun c!61325 () Bool)

(assert (=> b!521228 (= c!61325 (= (select (arr!15952 a!3235) (index!19909 lt!238904)) (select (arr!15952 a!3235) j!176)))))

(assert (=> b!521228 (and (bvslt (x!48919 lt!238904) #b01111111111111111111111111111110) (or (= (select (arr!15952 a!3235) (index!19909 lt!238904)) (select (arr!15952 a!3235) j!176)) (= (select (arr!15952 a!3235) (index!19909 lt!238904)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15952 a!3235) (index!19909 lt!238904)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!47412 res!319169) b!521218))

(assert (= (and b!521218 res!319167) b!521217))

(assert (= (and b!521217 res!319177) b!521222))

(assert (= (and b!521222 res!319178) b!521226))

(assert (= (and b!521226 res!319173) b!521215))

(assert (= (and b!521215 res!319176) b!521219))

(assert (= (and b!521219 res!319175) b!521225))

(assert (= (and b!521225 res!319170) b!521224))

(assert (= (and b!521224 res!319168) b!521221))

(assert (= (and b!521224 (not res!319172)) b!521220))

(assert (= (and b!521220 (not res!319174)) b!521228))

(assert (= (and b!521228 c!61325) b!521216))

(assert (= (and b!521228 (not c!61325)) b!521227))

(assert (= (and b!521216 res!319171) b!521223))

(declare-fun m!502165 () Bool)

(assert (=> b!521219 m!502165))

(declare-fun m!502167 () Bool)

(assert (=> b!521224 m!502167))

(declare-fun m!502169 () Bool)

(assert (=> b!521224 m!502169))

(declare-fun m!502171 () Bool)

(assert (=> b!521224 m!502171))

(declare-fun m!502173 () Bool)

(assert (=> b!521224 m!502173))

(declare-fun m!502175 () Bool)

(assert (=> b!521224 m!502175))

(declare-fun m!502177 () Bool)

(assert (=> b!521224 m!502177))

(assert (=> b!521224 m!502175))

(declare-fun m!502179 () Bool)

(assert (=> b!521224 m!502179))

(assert (=> b!521224 m!502175))

(declare-fun m!502181 () Bool)

(assert (=> b!521224 m!502181))

(declare-fun m!502183 () Bool)

(assert (=> b!521224 m!502183))

(declare-fun m!502185 () Bool)

(assert (=> start!47412 m!502185))

(declare-fun m!502187 () Bool)

(assert (=> start!47412 m!502187))

(declare-fun m!502189 () Bool)

(assert (=> b!521226 m!502189))

(assert (=> b!521221 m!502175))

(assert (=> b!521221 m!502175))

(declare-fun m!502191 () Bool)

(assert (=> b!521221 m!502191))

(declare-fun m!502193 () Bool)

(assert (=> b!521228 m!502193))

(assert (=> b!521228 m!502175))

(declare-fun m!502195 () Bool)

(assert (=> b!521215 m!502195))

(declare-fun m!502197 () Bool)

(assert (=> b!521216 m!502197))

(declare-fun m!502199 () Bool)

(assert (=> b!521216 m!502199))

(assert (=> b!521217 m!502175))

(assert (=> b!521217 m!502175))

(declare-fun m!502201 () Bool)

(assert (=> b!521217 m!502201))

(declare-fun m!502203 () Bool)

(assert (=> b!521222 m!502203))

(declare-fun m!502205 () Bool)

(assert (=> b!521225 m!502205))

(check-sat (not b!521222) (not b!521221) (not b!521219) (not b!521215) (not b!521216) (not start!47412) (not b!521225) (not b!521226) (not b!521217) (not b!521224))
(check-sat)
