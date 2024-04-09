; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86332 () Bool)

(assert start!86332)

(declare-fun b!998808 () Bool)

(declare-fun e!563252 () Bool)

(assert (=> b!998808 (= e!563252 false)))

(declare-datatypes ((array!63136 0))(
  ( (array!63137 (arr!30391 (Array (_ BitVec 32) (_ BitVec 64))) (size!30894 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63136)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun lt!441809 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!998808 (= lt!441809 (toIndex!0 (select (store (arr!30391 a!3219) i!1194 k!2224) j!170) mask!3464))))

(declare-fun b!998810 () Bool)

(declare-fun e!563251 () Bool)

(assert (=> b!998810 (= e!563251 e!563252)))

(declare-fun res!668601 () Bool)

(assert (=> b!998810 (=> (not res!668601) (not e!563252))))

(declare-datatypes ((SeekEntryResult!9323 0))(
  ( (MissingZero!9323 (index!39662 (_ BitVec 32))) (Found!9323 (index!39663 (_ BitVec 32))) (Intermediate!9323 (undefined!10135 Bool) (index!39664 (_ BitVec 32)) (x!87130 (_ BitVec 32))) (Undefined!9323) (MissingVacant!9323 (index!39665 (_ BitVec 32))) )
))
(declare-fun lt!441810 () SeekEntryResult!9323)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63136 (_ BitVec 32)) SeekEntryResult!9323)

(assert (=> b!998810 (= res!668601 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30391 a!3219) j!170) mask!3464) (select (arr!30391 a!3219) j!170) a!3219 mask!3464) lt!441810))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!998810 (= lt!441810 (Intermediate!9323 false resIndex!38 resX!38))))

(declare-fun b!998811 () Bool)

(declare-fun res!668607 () Bool)

(assert (=> b!998811 (=> (not res!668607) (not e!563251))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!998811 (= res!668607 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30894 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30894 a!3219))))))

(declare-fun b!998812 () Bool)

(declare-fun e!563249 () Bool)

(assert (=> b!998812 (= e!563249 e!563251)))

(declare-fun res!668608 () Bool)

(assert (=> b!998812 (=> (not res!668608) (not e!563251))))

(declare-fun lt!441808 () SeekEntryResult!9323)

(assert (=> b!998812 (= res!668608 (or (= lt!441808 (MissingVacant!9323 i!1194)) (= lt!441808 (MissingZero!9323 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63136 (_ BitVec 32)) SeekEntryResult!9323)

(assert (=> b!998812 (= lt!441808 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!998813 () Bool)

(declare-fun res!668610 () Bool)

(assert (=> b!998813 (=> (not res!668610) (not e!563249))))

(declare-fun arrayContainsKey!0 (array!63136 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!998813 (= res!668610 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!998814 () Bool)

(declare-fun res!668602 () Bool)

(assert (=> b!998814 (=> (not res!668602) (not e!563249))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!998814 (= res!668602 (validKeyInArray!0 k!2224))))

(declare-fun b!998815 () Bool)

(declare-fun res!668606 () Bool)

(assert (=> b!998815 (=> (not res!668606) (not e!563249))))

(assert (=> b!998815 (= res!668606 (validKeyInArray!0 (select (arr!30391 a!3219) j!170)))))

(declare-fun b!998816 () Bool)

(declare-fun res!668604 () Bool)

(assert (=> b!998816 (=> (not res!668604) (not e!563251))))

(declare-datatypes ((List!21193 0))(
  ( (Nil!21190) (Cons!21189 (h!22363 (_ BitVec 64)) (t!30202 List!21193)) )
))
(declare-fun arrayNoDuplicates!0 (array!63136 (_ BitVec 32) List!21193) Bool)

(assert (=> b!998816 (= res!668604 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21190))))

(declare-fun res!668611 () Bool)

(assert (=> start!86332 (=> (not res!668611) (not e!563249))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86332 (= res!668611 (validMask!0 mask!3464))))

(assert (=> start!86332 e!563249))

(declare-fun array_inv!23381 (array!63136) Bool)

(assert (=> start!86332 (array_inv!23381 a!3219)))

(assert (=> start!86332 true))

(declare-fun b!998809 () Bool)

(declare-fun res!668603 () Bool)

(assert (=> b!998809 (=> (not res!668603) (not e!563251))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63136 (_ BitVec 32)) Bool)

(assert (=> b!998809 (= res!668603 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!998817 () Bool)

(declare-fun res!668609 () Bool)

(assert (=> b!998817 (=> (not res!668609) (not e!563249))))

(assert (=> b!998817 (= res!668609 (and (= (size!30894 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30894 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30894 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!998818 () Bool)

(declare-fun res!668605 () Bool)

(assert (=> b!998818 (=> (not res!668605) (not e!563252))))

(assert (=> b!998818 (= res!668605 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30391 a!3219) j!170) a!3219 mask!3464) lt!441810))))

(assert (= (and start!86332 res!668611) b!998817))

(assert (= (and b!998817 res!668609) b!998815))

(assert (= (and b!998815 res!668606) b!998814))

(assert (= (and b!998814 res!668602) b!998813))

(assert (= (and b!998813 res!668610) b!998812))

(assert (= (and b!998812 res!668608) b!998809))

(assert (= (and b!998809 res!668603) b!998816))

(assert (= (and b!998816 res!668604) b!998811))

(assert (= (and b!998811 res!668607) b!998810))

(assert (= (and b!998810 res!668601) b!998818))

(assert (= (and b!998818 res!668605) b!998808))

(declare-fun m!925305 () Bool)

(assert (=> b!998809 m!925305))

(declare-fun m!925307 () Bool)

(assert (=> b!998815 m!925307))

(assert (=> b!998815 m!925307))

(declare-fun m!925309 () Bool)

(assert (=> b!998815 m!925309))

(assert (=> b!998818 m!925307))

(assert (=> b!998818 m!925307))

(declare-fun m!925311 () Bool)

(assert (=> b!998818 m!925311))

(declare-fun m!925313 () Bool)

(assert (=> start!86332 m!925313))

(declare-fun m!925315 () Bool)

(assert (=> start!86332 m!925315))

(assert (=> b!998810 m!925307))

(assert (=> b!998810 m!925307))

(declare-fun m!925317 () Bool)

(assert (=> b!998810 m!925317))

(assert (=> b!998810 m!925317))

(assert (=> b!998810 m!925307))

(declare-fun m!925319 () Bool)

(assert (=> b!998810 m!925319))

(declare-fun m!925321 () Bool)

(assert (=> b!998816 m!925321))

(declare-fun m!925323 () Bool)

(assert (=> b!998814 m!925323))

(declare-fun m!925325 () Bool)

(assert (=> b!998812 m!925325))

(declare-fun m!925327 () Bool)

(assert (=> b!998808 m!925327))

(declare-fun m!925329 () Bool)

(assert (=> b!998808 m!925329))

(assert (=> b!998808 m!925329))

(declare-fun m!925331 () Bool)

(assert (=> b!998808 m!925331))

(declare-fun m!925333 () Bool)

(assert (=> b!998813 m!925333))

(push 1)

