; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86102 () Bool)

(assert start!86102)

(declare-fun b!996939 () Bool)

(declare-fun res!667215 () Bool)

(declare-fun e!562376 () Bool)

(assert (=> b!996939 (=> (not res!667215) (not e!562376))))

(declare-datatypes ((array!63059 0))(
  ( (array!63060 (arr!30357 (Array (_ BitVec 32) (_ BitVec 64))) (size!30860 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63059)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!996939 (= res!667215 (and (= (size!30860 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30860 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30860 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!996940 () Bool)

(declare-fun e!562374 () Bool)

(declare-fun e!562375 () Bool)

(assert (=> b!996940 (= e!562374 e!562375)))

(declare-fun res!667209 () Bool)

(assert (=> b!996940 (=> (not res!667209) (not e!562375))))

(declare-datatypes ((SeekEntryResult!9289 0))(
  ( (MissingZero!9289 (index!39526 (_ BitVec 32))) (Found!9289 (index!39527 (_ BitVec 32))) (Intermediate!9289 (undefined!10101 Bool) (index!39528 (_ BitVec 32)) (x!86982 (_ BitVec 32))) (Undefined!9289) (MissingVacant!9289 (index!39529 (_ BitVec 32))) )
))
(declare-fun lt!441288 () SeekEntryResult!9289)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63059 (_ BitVec 32)) SeekEntryResult!9289)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!996940 (= res!667209 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30357 a!3219) j!170) mask!3464) (select (arr!30357 a!3219) j!170) a!3219 mask!3464) lt!441288))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!996940 (= lt!441288 (Intermediate!9289 false resIndex!38 resX!38))))

(declare-fun b!996941 () Bool)

(declare-fun res!667218 () Bool)

(assert (=> b!996941 (=> (not res!667218) (not e!562374))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63059 (_ BitVec 32)) Bool)

(assert (=> b!996941 (= res!667218 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!996942 () Bool)

(assert (=> b!996942 (= e!562376 e!562374)))

(declare-fun res!667211 () Bool)

(assert (=> b!996942 (=> (not res!667211) (not e!562374))))

(declare-fun lt!441287 () SeekEntryResult!9289)

(assert (=> b!996942 (= res!667211 (or (= lt!441287 (MissingVacant!9289 i!1194)) (= lt!441287 (MissingZero!9289 i!1194))))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63059 (_ BitVec 32)) SeekEntryResult!9289)

(assert (=> b!996942 (= lt!441287 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!996943 () Bool)

(declare-fun res!667217 () Bool)

(assert (=> b!996943 (=> (not res!667217) (not e!562376))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!996943 (= res!667217 (validKeyInArray!0 (select (arr!30357 a!3219) j!170)))))

(declare-fun res!667212 () Bool)

(assert (=> start!86102 (=> (not res!667212) (not e!562376))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86102 (= res!667212 (validMask!0 mask!3464))))

(assert (=> start!86102 e!562376))

(declare-fun array_inv!23347 (array!63059) Bool)

(assert (=> start!86102 (array_inv!23347 a!3219)))

(assert (=> start!86102 true))

(declare-fun b!996944 () Bool)

(declare-fun res!667210 () Bool)

(assert (=> b!996944 (=> (not res!667210) (not e!562376))))

(assert (=> b!996944 (= res!667210 (validKeyInArray!0 k!2224))))

(declare-fun b!996945 () Bool)

(declare-fun res!667216 () Bool)

(assert (=> b!996945 (=> (not res!667216) (not e!562376))))

(declare-fun arrayContainsKey!0 (array!63059 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!996945 (= res!667216 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!996946 () Bool)

(assert (=> b!996946 (= e!562375 (bvslt mask!3464 #b00000000000000000000000000000000))))

(declare-fun b!996947 () Bool)

(declare-fun res!667214 () Bool)

(assert (=> b!996947 (=> (not res!667214) (not e!562374))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(assert (=> b!996947 (= res!667214 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30860 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30860 a!3219))))))

(declare-fun b!996948 () Bool)

(declare-fun res!667213 () Bool)

(assert (=> b!996948 (=> (not res!667213) (not e!562374))))

(declare-datatypes ((List!21159 0))(
  ( (Nil!21156) (Cons!21155 (h!22320 (_ BitVec 64)) (t!30168 List!21159)) )
))
(declare-fun arrayNoDuplicates!0 (array!63059 (_ BitVec 32) List!21159) Bool)

(assert (=> b!996948 (= res!667213 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21156))))

(declare-fun b!996949 () Bool)

(declare-fun res!667219 () Bool)

(assert (=> b!996949 (=> (not res!667219) (not e!562375))))

(assert (=> b!996949 (= res!667219 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30357 a!3219) j!170) a!3219 mask!3464) lt!441288))))

(assert (= (and start!86102 res!667212) b!996939))

(assert (= (and b!996939 res!667215) b!996943))

(assert (= (and b!996943 res!667217) b!996944))

(assert (= (and b!996944 res!667210) b!996945))

(assert (= (and b!996945 res!667216) b!996942))

(assert (= (and b!996942 res!667211) b!996941))

(assert (= (and b!996941 res!667218) b!996948))

(assert (= (and b!996948 res!667213) b!996947))

(assert (= (and b!996947 res!667214) b!996940))

(assert (= (and b!996940 res!667209) b!996949))

(assert (= (and b!996949 res!667219) b!996946))

(declare-fun m!924021 () Bool)

(assert (=> b!996944 m!924021))

(declare-fun m!924023 () Bool)

(assert (=> b!996945 m!924023))

(declare-fun m!924025 () Bool)

(assert (=> b!996949 m!924025))

(assert (=> b!996949 m!924025))

(declare-fun m!924027 () Bool)

(assert (=> b!996949 m!924027))

(declare-fun m!924029 () Bool)

(assert (=> b!996948 m!924029))

(assert (=> b!996943 m!924025))

(assert (=> b!996943 m!924025))

(declare-fun m!924031 () Bool)

(assert (=> b!996943 m!924031))

(declare-fun m!924033 () Bool)

(assert (=> start!86102 m!924033))

(declare-fun m!924035 () Bool)

(assert (=> start!86102 m!924035))

(assert (=> b!996940 m!924025))

(assert (=> b!996940 m!924025))

(declare-fun m!924037 () Bool)

(assert (=> b!996940 m!924037))

(assert (=> b!996940 m!924037))

(assert (=> b!996940 m!924025))

(declare-fun m!924039 () Bool)

(assert (=> b!996940 m!924039))

(declare-fun m!924041 () Bool)

(assert (=> b!996941 m!924041))

(declare-fun m!924043 () Bool)

(assert (=> b!996942 m!924043))

(push 1)

(assert (not b!996945))

(assert (not b!996940))

(assert (not b!996948))

(assert (not b!996944))

(assert (not b!996941))

(assert (not start!86102))

(assert (not b!996942))

(assert (not b!996949))

(assert (not b!996943))

(check-sat)

