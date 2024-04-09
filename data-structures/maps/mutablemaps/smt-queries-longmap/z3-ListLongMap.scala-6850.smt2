; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86334 () Bool)

(assert start!86334)

(declare-fun b!998841 () Bool)

(declare-fun res!668643 () Bool)

(declare-fun e!563264 () Bool)

(assert (=> b!998841 (=> (not res!668643) (not e!563264))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!998841 (= res!668643 (validKeyInArray!0 k0!2224))))

(declare-fun res!668634 () Bool)

(assert (=> start!86334 (=> (not res!668634) (not e!563264))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86334 (= res!668634 (validMask!0 mask!3464))))

(assert (=> start!86334 e!563264))

(declare-datatypes ((array!63138 0))(
  ( (array!63139 (arr!30392 (Array (_ BitVec 32) (_ BitVec 64))) (size!30895 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63138)

(declare-fun array_inv!23382 (array!63138) Bool)

(assert (=> start!86334 (array_inv!23382 a!3219)))

(assert (=> start!86334 true))

(declare-fun b!998842 () Bool)

(declare-fun res!668637 () Bool)

(assert (=> b!998842 (=> (not res!668637) (not e!563264))))

(declare-fun arrayContainsKey!0 (array!63138 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!998842 (= res!668637 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!998843 () Bool)

(declare-fun res!668635 () Bool)

(declare-fun e!563262 () Bool)

(assert (=> b!998843 (=> (not res!668635) (not e!563262))))

(declare-fun j!170 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9324 0))(
  ( (MissingZero!9324 (index!39666 (_ BitVec 32))) (Found!9324 (index!39667 (_ BitVec 32))) (Intermediate!9324 (undefined!10136 Bool) (index!39668 (_ BitVec 32)) (x!87131 (_ BitVec 32))) (Undefined!9324) (MissingVacant!9324 (index!39669 (_ BitVec 32))) )
))
(declare-fun lt!441819 () SeekEntryResult!9324)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63138 (_ BitVec 32)) SeekEntryResult!9324)

(assert (=> b!998843 (= res!668635 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30392 a!3219) j!170) a!3219 mask!3464) lt!441819))))

(declare-fun b!998844 () Bool)

(declare-fun e!563261 () Bool)

(assert (=> b!998844 (= e!563261 e!563262)))

(declare-fun res!668639 () Bool)

(assert (=> b!998844 (=> (not res!668639) (not e!563262))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!998844 (= res!668639 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30392 a!3219) j!170) mask!3464) (select (arr!30392 a!3219) j!170) a!3219 mask!3464) lt!441819))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!998844 (= lt!441819 (Intermediate!9324 false resIndex!38 resX!38))))

(declare-fun b!998845 () Bool)

(declare-fun res!668638 () Bool)

(assert (=> b!998845 (=> (not res!668638) (not e!563261))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63138 (_ BitVec 32)) Bool)

(assert (=> b!998845 (= res!668638 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!998846 () Bool)

(declare-fun res!668644 () Bool)

(assert (=> b!998846 (=> (not res!668644) (not e!563264))))

(assert (=> b!998846 (= res!668644 (validKeyInArray!0 (select (arr!30392 a!3219) j!170)))))

(declare-fun b!998847 () Bool)

(assert (=> b!998847 (= e!563262 false)))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun lt!441817 () (_ BitVec 32))

(assert (=> b!998847 (= lt!441817 (toIndex!0 (select (store (arr!30392 a!3219) i!1194 k0!2224) j!170) mask!3464))))

(declare-fun b!998848 () Bool)

(assert (=> b!998848 (= e!563264 e!563261)))

(declare-fun res!668636 () Bool)

(assert (=> b!998848 (=> (not res!668636) (not e!563261))))

(declare-fun lt!441818 () SeekEntryResult!9324)

(assert (=> b!998848 (= res!668636 (or (= lt!441818 (MissingVacant!9324 i!1194)) (= lt!441818 (MissingZero!9324 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63138 (_ BitVec 32)) SeekEntryResult!9324)

(assert (=> b!998848 (= lt!441818 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!998849 () Bool)

(declare-fun res!668640 () Bool)

(assert (=> b!998849 (=> (not res!668640) (not e!563261))))

(declare-datatypes ((List!21194 0))(
  ( (Nil!21191) (Cons!21190 (h!22364 (_ BitVec 64)) (t!30203 List!21194)) )
))
(declare-fun arrayNoDuplicates!0 (array!63138 (_ BitVec 32) List!21194) Bool)

(assert (=> b!998849 (= res!668640 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21191))))

(declare-fun b!998850 () Bool)

(declare-fun res!668642 () Bool)

(assert (=> b!998850 (=> (not res!668642) (not e!563264))))

(assert (=> b!998850 (= res!668642 (and (= (size!30895 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30895 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30895 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!998851 () Bool)

(declare-fun res!668641 () Bool)

(assert (=> b!998851 (=> (not res!668641) (not e!563261))))

(assert (=> b!998851 (= res!668641 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30895 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30895 a!3219))))))

(assert (= (and start!86334 res!668634) b!998850))

(assert (= (and b!998850 res!668642) b!998846))

(assert (= (and b!998846 res!668644) b!998841))

(assert (= (and b!998841 res!668643) b!998842))

(assert (= (and b!998842 res!668637) b!998848))

(assert (= (and b!998848 res!668636) b!998845))

(assert (= (and b!998845 res!668638) b!998849))

(assert (= (and b!998849 res!668640) b!998851))

(assert (= (and b!998851 res!668641) b!998844))

(assert (= (and b!998844 res!668639) b!998843))

(assert (= (and b!998843 res!668635) b!998847))

(declare-fun m!925335 () Bool)

(assert (=> start!86334 m!925335))

(declare-fun m!925337 () Bool)

(assert (=> start!86334 m!925337))

(declare-fun m!925339 () Bool)

(assert (=> b!998844 m!925339))

(assert (=> b!998844 m!925339))

(declare-fun m!925341 () Bool)

(assert (=> b!998844 m!925341))

(assert (=> b!998844 m!925341))

(assert (=> b!998844 m!925339))

(declare-fun m!925343 () Bool)

(assert (=> b!998844 m!925343))

(declare-fun m!925345 () Bool)

(assert (=> b!998841 m!925345))

(declare-fun m!925347 () Bool)

(assert (=> b!998847 m!925347))

(declare-fun m!925349 () Bool)

(assert (=> b!998847 m!925349))

(assert (=> b!998847 m!925349))

(declare-fun m!925351 () Bool)

(assert (=> b!998847 m!925351))

(declare-fun m!925353 () Bool)

(assert (=> b!998848 m!925353))

(declare-fun m!925355 () Bool)

(assert (=> b!998845 m!925355))

(declare-fun m!925357 () Bool)

(assert (=> b!998849 m!925357))

(declare-fun m!925359 () Bool)

(assert (=> b!998842 m!925359))

(assert (=> b!998843 m!925339))

(assert (=> b!998843 m!925339))

(declare-fun m!925361 () Bool)

(assert (=> b!998843 m!925361))

(assert (=> b!998846 m!925339))

(assert (=> b!998846 m!925339))

(declare-fun m!925363 () Bool)

(assert (=> b!998846 m!925363))

(check-sat (not b!998846) (not b!998844) (not b!998845) (not b!998848) (not b!998841) (not start!86334) (not b!998842) (not b!998849) (not b!998843) (not b!998847))
(check-sat)
