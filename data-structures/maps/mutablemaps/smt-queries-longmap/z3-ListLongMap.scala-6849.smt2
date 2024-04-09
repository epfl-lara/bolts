; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86328 () Bool)

(assert start!86328)

(declare-fun b!998742 () Bool)

(declare-fun res!668542 () Bool)

(declare-fun e!563227 () Bool)

(assert (=> b!998742 (=> (not res!668542) (not e!563227))))

(declare-datatypes ((array!63132 0))(
  ( (array!63133 (arr!30389 (Array (_ BitVec 32) (_ BitVec 64))) (size!30892 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63132)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63132 (_ BitVec 32)) Bool)

(assert (=> b!998742 (= res!668542 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!998743 () Bool)

(declare-fun res!668543 () Bool)

(assert (=> b!998743 (=> (not res!668543) (not e!563227))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!998743 (= res!668543 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30892 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30892 a!3219))))))

(declare-fun b!998744 () Bool)

(declare-fun res!668544 () Bool)

(declare-fun e!563228 () Bool)

(assert (=> b!998744 (=> (not res!668544) (not e!563228))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!998744 (= res!668544 (validKeyInArray!0 k0!2224))))

(declare-fun b!998745 () Bool)

(declare-fun res!668535 () Bool)

(assert (=> b!998745 (=> (not res!668535) (not e!563228))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!998745 (= res!668535 (and (= (size!30892 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30892 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30892 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!998746 () Bool)

(declare-fun res!668541 () Bool)

(assert (=> b!998746 (=> (not res!668541) (not e!563228))))

(assert (=> b!998746 (= res!668541 (validKeyInArray!0 (select (arr!30389 a!3219) j!170)))))

(declare-fun b!998747 () Bool)

(declare-fun e!563226 () Bool)

(assert (=> b!998747 (= e!563227 e!563226)))

(declare-fun res!668545 () Bool)

(assert (=> b!998747 (=> (not res!668545) (not e!563226))))

(declare-datatypes ((SeekEntryResult!9321 0))(
  ( (MissingZero!9321 (index!39654 (_ BitVec 32))) (Found!9321 (index!39655 (_ BitVec 32))) (Intermediate!9321 (undefined!10133 Bool) (index!39656 (_ BitVec 32)) (x!87120 (_ BitVec 32))) (Undefined!9321) (MissingVacant!9321 (index!39657 (_ BitVec 32))) )
))
(declare-fun lt!441790 () SeekEntryResult!9321)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63132 (_ BitVec 32)) SeekEntryResult!9321)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!998747 (= res!668545 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30389 a!3219) j!170) mask!3464) (select (arr!30389 a!3219) j!170) a!3219 mask!3464) lt!441790))))

(assert (=> b!998747 (= lt!441790 (Intermediate!9321 false resIndex!38 resX!38))))

(declare-fun res!668537 () Bool)

(assert (=> start!86328 (=> (not res!668537) (not e!563228))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86328 (= res!668537 (validMask!0 mask!3464))))

(assert (=> start!86328 e!563228))

(declare-fun array_inv!23379 (array!63132) Bool)

(assert (=> start!86328 (array_inv!23379 a!3219)))

(assert (=> start!86328 true))

(declare-fun b!998748 () Bool)

(assert (=> b!998748 (= e!563226 (bvslt mask!3464 #b00000000000000000000000000000000))))

(declare-fun lt!441792 () (_ BitVec 32))

(assert (=> b!998748 (= lt!441792 (toIndex!0 (select (store (arr!30389 a!3219) i!1194 k0!2224) j!170) mask!3464))))

(declare-fun b!998749 () Bool)

(assert (=> b!998749 (= e!563228 e!563227)))

(declare-fun res!668539 () Bool)

(assert (=> b!998749 (=> (not res!668539) (not e!563227))))

(declare-fun lt!441791 () SeekEntryResult!9321)

(assert (=> b!998749 (= res!668539 (or (= lt!441791 (MissingVacant!9321 i!1194)) (= lt!441791 (MissingZero!9321 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63132 (_ BitVec 32)) SeekEntryResult!9321)

(assert (=> b!998749 (= lt!441791 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!998750 () Bool)

(declare-fun res!668538 () Bool)

(assert (=> b!998750 (=> (not res!668538) (not e!563226))))

(assert (=> b!998750 (= res!668538 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30389 a!3219) j!170) a!3219 mask!3464) lt!441790))))

(declare-fun b!998751 () Bool)

(declare-fun res!668540 () Bool)

(assert (=> b!998751 (=> (not res!668540) (not e!563228))))

(declare-fun arrayContainsKey!0 (array!63132 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!998751 (= res!668540 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!998752 () Bool)

(declare-fun res!668536 () Bool)

(assert (=> b!998752 (=> (not res!668536) (not e!563227))))

(declare-datatypes ((List!21191 0))(
  ( (Nil!21188) (Cons!21187 (h!22361 (_ BitVec 64)) (t!30200 List!21191)) )
))
(declare-fun arrayNoDuplicates!0 (array!63132 (_ BitVec 32) List!21191) Bool)

(assert (=> b!998752 (= res!668536 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21188))))

(assert (= (and start!86328 res!668537) b!998745))

(assert (= (and b!998745 res!668535) b!998746))

(assert (= (and b!998746 res!668541) b!998744))

(assert (= (and b!998744 res!668544) b!998751))

(assert (= (and b!998751 res!668540) b!998749))

(assert (= (and b!998749 res!668539) b!998742))

(assert (= (and b!998742 res!668542) b!998752))

(assert (= (and b!998752 res!668536) b!998743))

(assert (= (and b!998743 res!668543) b!998747))

(assert (= (and b!998747 res!668545) b!998750))

(assert (= (and b!998750 res!668538) b!998748))

(declare-fun m!925245 () Bool)

(assert (=> b!998742 m!925245))

(declare-fun m!925247 () Bool)

(assert (=> b!998747 m!925247))

(assert (=> b!998747 m!925247))

(declare-fun m!925249 () Bool)

(assert (=> b!998747 m!925249))

(assert (=> b!998747 m!925249))

(assert (=> b!998747 m!925247))

(declare-fun m!925251 () Bool)

(assert (=> b!998747 m!925251))

(assert (=> b!998746 m!925247))

(assert (=> b!998746 m!925247))

(declare-fun m!925253 () Bool)

(assert (=> b!998746 m!925253))

(declare-fun m!925255 () Bool)

(assert (=> b!998748 m!925255))

(declare-fun m!925257 () Bool)

(assert (=> b!998748 m!925257))

(assert (=> b!998748 m!925257))

(declare-fun m!925259 () Bool)

(assert (=> b!998748 m!925259))

(declare-fun m!925261 () Bool)

(assert (=> b!998749 m!925261))

(declare-fun m!925263 () Bool)

(assert (=> b!998744 m!925263))

(declare-fun m!925265 () Bool)

(assert (=> b!998752 m!925265))

(assert (=> b!998750 m!925247))

(assert (=> b!998750 m!925247))

(declare-fun m!925267 () Bool)

(assert (=> b!998750 m!925267))

(declare-fun m!925269 () Bool)

(assert (=> start!86328 m!925269))

(declare-fun m!925271 () Bool)

(assert (=> start!86328 m!925271))

(declare-fun m!925273 () Bool)

(assert (=> b!998751 m!925273))

(check-sat (not b!998744) (not b!998749) (not start!86328) (not b!998751) (not b!998748) (not b!998750) (not b!998742) (not b!998746) (not b!998747) (not b!998752))
(check-sat)
