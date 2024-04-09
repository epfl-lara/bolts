; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86440 () Bool)

(assert start!86440)

(declare-fun b!999996 () Bool)

(declare-fun res!669639 () Bool)

(declare-fun e!563751 () Bool)

(assert (=> b!999996 (=> (not res!669639) (not e!563751))))

(declare-datatypes ((array!63193 0))(
  ( (array!63194 (arr!30418 (Array (_ BitVec 32) (_ BitVec 64))) (size!30921 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63193)

(declare-datatypes ((List!21220 0))(
  ( (Nil!21217) (Cons!21216 (h!22393 (_ BitVec 64)) (t!30229 List!21220)) )
))
(declare-fun arrayNoDuplicates!0 (array!63193 (_ BitVec 32) List!21220) Bool)

(assert (=> b!999996 (= res!669639 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21217))))

(declare-fun b!999997 () Bool)

(declare-fun res!669638 () Bool)

(declare-fun e!563750 () Bool)

(assert (=> b!999997 (=> (not res!669638) (not e!563750))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!999997 (= res!669638 (validKeyInArray!0 k!2224))))

(declare-fun b!999998 () Bool)

(assert (=> b!999998 (= e!563750 e!563751)))

(declare-fun res!669635 () Bool)

(assert (=> b!999998 (=> (not res!669635) (not e!563751))))

(declare-datatypes ((SeekEntryResult!9350 0))(
  ( (MissingZero!9350 (index!39770 (_ BitVec 32))) (Found!9350 (index!39771 (_ BitVec 32))) (Intermediate!9350 (undefined!10162 Bool) (index!39772 (_ BitVec 32)) (x!87235 (_ BitVec 32))) (Undefined!9350) (MissingVacant!9350 (index!39773 (_ BitVec 32))) )
))
(declare-fun lt!442155 () SeekEntryResult!9350)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!999998 (= res!669635 (or (= lt!442155 (MissingVacant!9350 i!1194)) (= lt!442155 (MissingZero!9350 i!1194))))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63193 (_ BitVec 32)) SeekEntryResult!9350)

(assert (=> b!999998 (= lt!442155 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!999999 () Bool)

(declare-fun e!563752 () Bool)

(assert (=> b!999999 (= e!563752 false)))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun lt!442154 () SeekEntryResult!9350)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63193 (_ BitVec 32)) SeekEntryResult!9350)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!999999 (= lt!442154 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!30418 a!3219) i!1194 k!2224) j!170) mask!3464) (select (store (arr!30418 a!3219) i!1194 k!2224) j!170) (array!63194 (store (arr!30418 a!3219) i!1194 k!2224) (size!30921 a!3219)) mask!3464))))

(declare-fun b!1000000 () Bool)

(declare-fun res!669636 () Bool)

(assert (=> b!1000000 (=> (not res!669636) (not e!563751))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63193 (_ BitVec 32)) Bool)

(assert (=> b!1000000 (= res!669636 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1000001 () Bool)

(declare-fun res!669640 () Bool)

(assert (=> b!1000001 (=> (not res!669640) (not e!563750))))

(declare-fun arrayContainsKey!0 (array!63193 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1000001 (= res!669640 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun res!669633 () Bool)

(assert (=> start!86440 (=> (not res!669633) (not e!563750))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86440 (= res!669633 (validMask!0 mask!3464))))

(assert (=> start!86440 e!563750))

(declare-fun array_inv!23408 (array!63193) Bool)

(assert (=> start!86440 (array_inv!23408 a!3219)))

(assert (=> start!86440 true))

(declare-fun b!1000002 () Bool)

(declare-fun res!669632 () Bool)

(assert (=> b!1000002 (=> (not res!669632) (not e!563750))))

(assert (=> b!1000002 (= res!669632 (validKeyInArray!0 (select (arr!30418 a!3219) j!170)))))

(declare-fun b!1000003 () Bool)

(assert (=> b!1000003 (= e!563751 e!563752)))

(declare-fun res!669634 () Bool)

(assert (=> b!1000003 (=> (not res!669634) (not e!563752))))

(declare-fun lt!442153 () SeekEntryResult!9350)

(assert (=> b!1000003 (= res!669634 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30418 a!3219) j!170) mask!3464) (select (arr!30418 a!3219) j!170) a!3219 mask!3464) lt!442153))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1000003 (= lt!442153 (Intermediate!9350 false resIndex!38 resX!38))))

(declare-fun b!1000004 () Bool)

(declare-fun res!669637 () Bool)

(assert (=> b!1000004 (=> (not res!669637) (not e!563750))))

(assert (=> b!1000004 (= res!669637 (and (= (size!30921 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30921 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30921 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1000005 () Bool)

(declare-fun res!669630 () Bool)

(assert (=> b!1000005 (=> (not res!669630) (not e!563752))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!1000005 (= res!669630 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30418 a!3219) j!170) a!3219 mask!3464) lt!442153))))

(declare-fun b!1000006 () Bool)

(declare-fun res!669631 () Bool)

(assert (=> b!1000006 (=> (not res!669631) (not e!563751))))

(assert (=> b!1000006 (= res!669631 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30921 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30921 a!3219))))))

(assert (= (and start!86440 res!669633) b!1000004))

(assert (= (and b!1000004 res!669637) b!1000002))

(assert (= (and b!1000002 res!669632) b!999997))

(assert (= (and b!999997 res!669638) b!1000001))

(assert (= (and b!1000001 res!669640) b!999998))

(assert (= (and b!999998 res!669635) b!1000000))

(assert (= (and b!1000000 res!669636) b!999996))

(assert (= (and b!999996 res!669639) b!1000006))

(assert (= (and b!1000006 res!669631) b!1000003))

(assert (= (and b!1000003 res!669634) b!1000005))

(assert (= (and b!1000005 res!669630) b!999999))

(declare-fun m!926295 () Bool)

(assert (=> b!1000005 m!926295))

(assert (=> b!1000005 m!926295))

(declare-fun m!926297 () Bool)

(assert (=> b!1000005 m!926297))

(declare-fun m!926299 () Bool)

(assert (=> b!999997 m!926299))

(declare-fun m!926301 () Bool)

(assert (=> b!1000001 m!926301))

(assert (=> b!1000002 m!926295))

(assert (=> b!1000002 m!926295))

(declare-fun m!926303 () Bool)

(assert (=> b!1000002 m!926303))

(assert (=> b!1000003 m!926295))

(assert (=> b!1000003 m!926295))

(declare-fun m!926305 () Bool)

(assert (=> b!1000003 m!926305))

(assert (=> b!1000003 m!926305))

(assert (=> b!1000003 m!926295))

(declare-fun m!926307 () Bool)

(assert (=> b!1000003 m!926307))

(declare-fun m!926309 () Bool)

(assert (=> b!1000000 m!926309))

(declare-fun m!926311 () Bool)

(assert (=> start!86440 m!926311))

(declare-fun m!926313 () Bool)

(assert (=> start!86440 m!926313))

(declare-fun m!926315 () Bool)

(assert (=> b!999996 m!926315))

(declare-fun m!926317 () Bool)

(assert (=> b!999998 m!926317))

(declare-fun m!926319 () Bool)

(assert (=> b!999999 m!926319))

(declare-fun m!926321 () Bool)

(assert (=> b!999999 m!926321))

(assert (=> b!999999 m!926321))

(declare-fun m!926323 () Bool)

(assert (=> b!999999 m!926323))

(assert (=> b!999999 m!926323))

(assert (=> b!999999 m!926321))

(declare-fun m!926325 () Bool)

(assert (=> b!999999 m!926325))

(push 1)

