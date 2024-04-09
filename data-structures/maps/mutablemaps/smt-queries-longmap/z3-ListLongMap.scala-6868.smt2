; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86496 () Bool)

(assert start!86496)

(declare-fun b!1001002 () Bool)

(declare-fun res!670645 () Bool)

(declare-fun e!564126 () Bool)

(assert (=> b!1001002 (=> (not res!670645) (not e!564126))))

(declare-datatypes ((array!63249 0))(
  ( (array!63250 (arr!30446 (Array (_ BitVec 32) (_ BitVec 64))) (size!30949 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63249)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1001002 (= res!670645 (validKeyInArray!0 (select (arr!30446 a!3219) j!170)))))

(declare-fun b!1001003 () Bool)

(declare-fun e!564123 () Bool)

(declare-fun e!564128 () Bool)

(assert (=> b!1001003 (= e!564123 e!564128)))

(declare-fun res!670637 () Bool)

(assert (=> b!1001003 (=> (not res!670637) (not e!564128))))

(declare-datatypes ((SeekEntryResult!9378 0))(
  ( (MissingZero!9378 (index!39882 (_ BitVec 32))) (Found!9378 (index!39883 (_ BitVec 32))) (Intermediate!9378 (undefined!10190 Bool) (index!39884 (_ BitVec 32)) (x!87335 (_ BitVec 32))) (Undefined!9378) (MissingVacant!9378 (index!39885 (_ BitVec 32))) )
))
(declare-fun lt!442478 () SeekEntryResult!9378)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun lt!442476 () (_ BitVec 64))

(declare-fun lt!442474 () array!63249)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63249 (_ BitVec 32)) SeekEntryResult!9378)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1001003 (= res!670637 (not (= lt!442478 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!442476 mask!3464) lt!442476 lt!442474 mask!3464))))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1001003 (= lt!442476 (select (store (arr!30446 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1001003 (= lt!442474 (array!63250 (store (arr!30446 a!3219) i!1194 k0!2224) (size!30949 a!3219)))))

(declare-fun b!1001004 () Bool)

(declare-fun e!564125 () Bool)

(assert (=> b!1001004 (= e!564125 e!564123)))

(declare-fun res!670647 () Bool)

(assert (=> b!1001004 (=> (not res!670647) (not e!564123))))

(declare-fun lt!442475 () SeekEntryResult!9378)

(declare-fun lt!442479 () SeekEntryResult!9378)

(assert (=> b!1001004 (= res!670647 (= lt!442475 lt!442479))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!1001004 (= lt!442475 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30446 a!3219) j!170) a!3219 mask!3464))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun b!1001005 () Bool)

(assert (=> b!1001005 (= e!564128 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194)) (bvsge mask!3464 #b00000000000000000000000000000000) (bvsge index!1507 (bvadd #b00000000000000000000000000000001 mask!3464))))))

(declare-fun res!670643 () Bool)

(assert (=> start!86496 (=> (not res!670643) (not e!564126))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86496 (= res!670643 (validMask!0 mask!3464))))

(assert (=> start!86496 e!564126))

(declare-fun array_inv!23436 (array!63249) Bool)

(assert (=> start!86496 (array_inv!23436 a!3219)))

(assert (=> start!86496 true))

(declare-fun b!1001006 () Bool)

(declare-fun e!564124 () Bool)

(assert (=> b!1001006 (= e!564124 e!564125)))

(declare-fun res!670641 () Bool)

(assert (=> b!1001006 (=> (not res!670641) (not e!564125))))

(assert (=> b!1001006 (= res!670641 (= lt!442478 lt!442479))))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1001006 (= lt!442479 (Intermediate!9378 false resIndex!38 resX!38))))

(assert (=> b!1001006 (= lt!442478 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30446 a!3219) j!170) mask!3464) (select (arr!30446 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1001007 () Bool)

(declare-fun res!670639 () Bool)

(assert (=> b!1001007 (=> (not res!670639) (not e!564128))))

(assert (=> b!1001007 (= res!670639 (not (= lt!442475 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!442476 lt!442474 mask!3464))))))

(declare-fun b!1001008 () Bool)

(declare-fun res!670646 () Bool)

(assert (=> b!1001008 (=> (not res!670646) (not e!564126))))

(assert (=> b!1001008 (= res!670646 (and (= (size!30949 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30949 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30949 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1001009 () Bool)

(declare-fun res!670642 () Bool)

(assert (=> b!1001009 (=> (not res!670642) (not e!564124))))

(declare-datatypes ((List!21248 0))(
  ( (Nil!21245) (Cons!21244 (h!22421 (_ BitVec 64)) (t!30257 List!21248)) )
))
(declare-fun arrayNoDuplicates!0 (array!63249 (_ BitVec 32) List!21248) Bool)

(assert (=> b!1001009 (= res!670642 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21245))))

(declare-fun b!1001010 () Bool)

(declare-fun res!670644 () Bool)

(assert (=> b!1001010 (=> (not res!670644) (not e!564126))))

(declare-fun arrayContainsKey!0 (array!63249 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1001010 (= res!670644 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1001011 () Bool)

(assert (=> b!1001011 (= e!564126 e!564124)))

(declare-fun res!670640 () Bool)

(assert (=> b!1001011 (=> (not res!670640) (not e!564124))))

(declare-fun lt!442477 () SeekEntryResult!9378)

(assert (=> b!1001011 (= res!670640 (or (= lt!442477 (MissingVacant!9378 i!1194)) (= lt!442477 (MissingZero!9378 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63249 (_ BitVec 32)) SeekEntryResult!9378)

(assert (=> b!1001011 (= lt!442477 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1001012 () Bool)

(declare-fun res!670636 () Bool)

(assert (=> b!1001012 (=> (not res!670636) (not e!564124))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63249 (_ BitVec 32)) Bool)

(assert (=> b!1001012 (= res!670636 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1001013 () Bool)

(declare-fun res!670638 () Bool)

(assert (=> b!1001013 (=> (not res!670638) (not e!564126))))

(assert (=> b!1001013 (= res!670638 (validKeyInArray!0 k0!2224))))

(declare-fun b!1001014 () Bool)

(declare-fun res!670648 () Bool)

(assert (=> b!1001014 (=> (not res!670648) (not e!564124))))

(assert (=> b!1001014 (= res!670648 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30949 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30949 a!3219))))))

(assert (= (and start!86496 res!670643) b!1001008))

(assert (= (and b!1001008 res!670646) b!1001002))

(assert (= (and b!1001002 res!670645) b!1001013))

(assert (= (and b!1001013 res!670638) b!1001010))

(assert (= (and b!1001010 res!670644) b!1001011))

(assert (= (and b!1001011 res!670640) b!1001012))

(assert (= (and b!1001012 res!670636) b!1001009))

(assert (= (and b!1001009 res!670642) b!1001014))

(assert (= (and b!1001014 res!670648) b!1001006))

(assert (= (and b!1001006 res!670641) b!1001004))

(assert (= (and b!1001004 res!670647) b!1001003))

(assert (= (and b!1001003 res!670637) b!1001007))

(assert (= (and b!1001007 res!670639) b!1001005))

(declare-fun m!927211 () Bool)

(assert (=> b!1001002 m!927211))

(assert (=> b!1001002 m!927211))

(declare-fun m!927213 () Bool)

(assert (=> b!1001002 m!927213))

(declare-fun m!927215 () Bool)

(assert (=> b!1001003 m!927215))

(assert (=> b!1001003 m!927215))

(declare-fun m!927217 () Bool)

(assert (=> b!1001003 m!927217))

(declare-fun m!927219 () Bool)

(assert (=> b!1001003 m!927219))

(declare-fun m!927221 () Bool)

(assert (=> b!1001003 m!927221))

(declare-fun m!927223 () Bool)

(assert (=> b!1001007 m!927223))

(declare-fun m!927225 () Bool)

(assert (=> start!86496 m!927225))

(declare-fun m!927227 () Bool)

(assert (=> start!86496 m!927227))

(declare-fun m!927229 () Bool)

(assert (=> b!1001012 m!927229))

(declare-fun m!927231 () Bool)

(assert (=> b!1001010 m!927231))

(declare-fun m!927233 () Bool)

(assert (=> b!1001013 m!927233))

(declare-fun m!927235 () Bool)

(assert (=> b!1001009 m!927235))

(assert (=> b!1001004 m!927211))

(assert (=> b!1001004 m!927211))

(declare-fun m!927237 () Bool)

(assert (=> b!1001004 m!927237))

(declare-fun m!927239 () Bool)

(assert (=> b!1001011 m!927239))

(assert (=> b!1001006 m!927211))

(assert (=> b!1001006 m!927211))

(declare-fun m!927241 () Bool)

(assert (=> b!1001006 m!927241))

(assert (=> b!1001006 m!927241))

(assert (=> b!1001006 m!927211))

(declare-fun m!927243 () Bool)

(assert (=> b!1001006 m!927243))

(check-sat (not b!1001004) (not b!1001007) (not b!1001013) (not b!1001002) (not b!1001011) (not b!1001006) (not b!1001012) (not b!1001003) (not start!86496) (not b!1001009) (not b!1001010))
(check-sat)
