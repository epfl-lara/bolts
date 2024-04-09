; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86494 () Bool)

(assert start!86494)

(declare-fun b!1000963 () Bool)

(declare-fun e!564106 () Bool)

(declare-fun e!564109 () Bool)

(assert (=> b!1000963 (= e!564106 e!564109)))

(declare-fun res!670607 () Bool)

(assert (=> b!1000963 (=> (not res!670607) (not e!564109))))

(declare-datatypes ((SeekEntryResult!9377 0))(
  ( (MissingZero!9377 (index!39878 (_ BitVec 32))) (Found!9377 (index!39879 (_ BitVec 32))) (Intermediate!9377 (undefined!10189 Bool) (index!39880 (_ BitVec 32)) (x!87334 (_ BitVec 32))) (Undefined!9377) (MissingVacant!9377 (index!39881 (_ BitVec 32))) )
))
(declare-fun lt!442459 () SeekEntryResult!9377)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1000963 (= res!670607 (or (= lt!442459 (MissingVacant!9377 i!1194)) (= lt!442459 (MissingZero!9377 i!1194))))))

(declare-datatypes ((array!63247 0))(
  ( (array!63248 (arr!30445 (Array (_ BitVec 32) (_ BitVec 64))) (size!30948 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63247)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63247 (_ BitVec 32)) SeekEntryResult!9377)

(assert (=> b!1000963 (= lt!442459 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1000964 () Bool)

(declare-fun e!564110 () Bool)

(declare-fun e!564107 () Bool)

(assert (=> b!1000964 (= e!564110 e!564107)))

(declare-fun res!670609 () Bool)

(assert (=> b!1000964 (=> (not res!670609) (not e!564107))))

(declare-fun lt!442458 () SeekEntryResult!9377)

(declare-fun lt!442461 () SeekEntryResult!9377)

(assert (=> b!1000964 (= res!670609 (= lt!442458 lt!442461))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63247 (_ BitVec 32)) SeekEntryResult!9377)

(assert (=> b!1000964 (= lt!442458 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30445 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1000965 () Bool)

(declare-fun res!670603 () Bool)

(declare-fun e!564105 () Bool)

(assert (=> b!1000965 (=> (not res!670603) (not e!564105))))

(declare-fun lt!442457 () (_ BitVec 64))

(declare-fun lt!442456 () array!63247)

(assert (=> b!1000965 (= res!670603 (not (= lt!442458 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!442457 lt!442456 mask!3464))))))

(declare-fun b!1000966 () Bool)

(declare-fun res!670604 () Bool)

(assert (=> b!1000966 (=> (not res!670604) (not e!564106))))

(declare-fun arrayContainsKey!0 (array!63247 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1000966 (= res!670604 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1000967 () Bool)

(assert (=> b!1000967 (= e!564109 e!564110)))

(declare-fun res!670606 () Bool)

(assert (=> b!1000967 (=> (not res!670606) (not e!564110))))

(declare-fun lt!442460 () SeekEntryResult!9377)

(assert (=> b!1000967 (= res!670606 (= lt!442460 lt!442461))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1000967 (= lt!442461 (Intermediate!9377 false resIndex!38 resX!38))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1000967 (= lt!442460 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30445 a!3219) j!170) mask!3464) (select (arr!30445 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1000968 () Bool)

(declare-fun res!670608 () Bool)

(assert (=> b!1000968 (=> (not res!670608) (not e!564106))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1000968 (= res!670608 (validKeyInArray!0 k!2224))))

(declare-fun b!1000969 () Bool)

(assert (=> b!1000969 (= e!564105 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194)) (bvsge mask!3464 #b00000000000000000000000000000000) (bvsge index!1507 (bvadd #b00000000000000000000000000000001 mask!3464))))))

(declare-fun b!1000970 () Bool)

(assert (=> b!1000970 (= e!564107 e!564105)))

(declare-fun res!670600 () Bool)

(assert (=> b!1000970 (=> (not res!670600) (not e!564105))))

(assert (=> b!1000970 (= res!670600 (not (= lt!442460 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!442457 mask!3464) lt!442457 lt!442456 mask!3464))))))

(assert (=> b!1000970 (= lt!442457 (select (store (arr!30445 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1000970 (= lt!442456 (array!63248 (store (arr!30445 a!3219) i!1194 k!2224) (size!30948 a!3219)))))

(declare-fun b!1000972 () Bool)

(declare-fun res!670605 () Bool)

(assert (=> b!1000972 (=> (not res!670605) (not e!564109))))

(assert (=> b!1000972 (= res!670605 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30948 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30948 a!3219))))))

(declare-fun b!1000973 () Bool)

(declare-fun res!670602 () Bool)

(assert (=> b!1000973 (=> (not res!670602) (not e!564106))))

(assert (=> b!1000973 (= res!670602 (validKeyInArray!0 (select (arr!30445 a!3219) j!170)))))

(declare-fun b!1000974 () Bool)

(declare-fun res!670597 () Bool)

(assert (=> b!1000974 (=> (not res!670597) (not e!564109))))

(declare-datatypes ((List!21247 0))(
  ( (Nil!21244) (Cons!21243 (h!22420 (_ BitVec 64)) (t!30256 List!21247)) )
))
(declare-fun arrayNoDuplicates!0 (array!63247 (_ BitVec 32) List!21247) Bool)

(assert (=> b!1000974 (= res!670597 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21244))))

(declare-fun b!1000975 () Bool)

(declare-fun res!670598 () Bool)

(assert (=> b!1000975 (=> (not res!670598) (not e!564106))))

(assert (=> b!1000975 (= res!670598 (and (= (size!30948 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30948 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30948 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1000971 () Bool)

(declare-fun res!670601 () Bool)

(assert (=> b!1000971 (=> (not res!670601) (not e!564109))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63247 (_ BitVec 32)) Bool)

(assert (=> b!1000971 (= res!670601 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun res!670599 () Bool)

(assert (=> start!86494 (=> (not res!670599) (not e!564106))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86494 (= res!670599 (validMask!0 mask!3464))))

(assert (=> start!86494 e!564106))

(declare-fun array_inv!23435 (array!63247) Bool)

(assert (=> start!86494 (array_inv!23435 a!3219)))

(assert (=> start!86494 true))

(assert (= (and start!86494 res!670599) b!1000975))

(assert (= (and b!1000975 res!670598) b!1000973))

(assert (= (and b!1000973 res!670602) b!1000968))

(assert (= (and b!1000968 res!670608) b!1000966))

(assert (= (and b!1000966 res!670604) b!1000963))

(assert (= (and b!1000963 res!670607) b!1000971))

(assert (= (and b!1000971 res!670601) b!1000974))

(assert (= (and b!1000974 res!670597) b!1000972))

(assert (= (and b!1000972 res!670605) b!1000967))

(assert (= (and b!1000967 res!670606) b!1000964))

(assert (= (and b!1000964 res!670609) b!1000970))

(assert (= (and b!1000970 res!670600) b!1000965))

(assert (= (and b!1000965 res!670603) b!1000969))

(declare-fun m!927177 () Bool)

(assert (=> b!1000966 m!927177))

(declare-fun m!927179 () Bool)

(assert (=> b!1000967 m!927179))

(assert (=> b!1000967 m!927179))

(declare-fun m!927181 () Bool)

(assert (=> b!1000967 m!927181))

(assert (=> b!1000967 m!927181))

(assert (=> b!1000967 m!927179))

(declare-fun m!927183 () Bool)

(assert (=> b!1000967 m!927183))

(declare-fun m!927185 () Bool)

(assert (=> b!1000965 m!927185))

(declare-fun m!927187 () Bool)

(assert (=> b!1000971 m!927187))

(declare-fun m!927189 () Bool)

(assert (=> b!1000974 m!927189))

(declare-fun m!927191 () Bool)

(assert (=> start!86494 m!927191))

(declare-fun m!927193 () Bool)

(assert (=> start!86494 m!927193))

(declare-fun m!927195 () Bool)

(assert (=> b!1000968 m!927195))

(declare-fun m!927197 () Bool)

(assert (=> b!1000963 m!927197))

(assert (=> b!1000973 m!927179))

(assert (=> b!1000973 m!927179))

(declare-fun m!927199 () Bool)

(assert (=> b!1000973 m!927199))

(declare-fun m!927201 () Bool)

(assert (=> b!1000970 m!927201))

(assert (=> b!1000970 m!927201))

(declare-fun m!927203 () Bool)

(assert (=> b!1000970 m!927203))

(declare-fun m!927205 () Bool)

(assert (=> b!1000970 m!927205))

(declare-fun m!927207 () Bool)

(assert (=> b!1000970 m!927207))

(assert (=> b!1000964 m!927179))

(assert (=> b!1000964 m!927179))

(declare-fun m!927209 () Bool)

(assert (=> b!1000964 m!927209))

(push 1)

(assert (not b!1000964))

(assert (not b!1000968))

(assert (not start!86494))

(assert (not b!1000967))

(assert (not b!1000965))

(assert (not b!1000971))

(assert (not b!1000973))

(assert (not b!1000970))

(assert (not b!1000963))

(assert (not b!1000974))

(assert (not b!1000966))

(check-sat)

(pop 1)

(push 1)

(check-sat)

