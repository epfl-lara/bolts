; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86524 () Bool)

(assert start!86524)

(declare-fun b!1001635 () Bool)

(declare-fun res!671283 () Bool)

(declare-fun e!564404 () Bool)

(assert (=> b!1001635 (=> (not res!671283) (not e!564404))))

(declare-datatypes ((array!63277 0))(
  ( (array!63278 (arr!30460 (Array (_ BitVec 32) (_ BitVec 64))) (size!30963 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63277)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1001635 (= res!671283 (and (= (size!30963 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30963 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30963 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1001636 () Bool)

(declare-fun res!671273 () Bool)

(assert (=> b!1001636 (=> (not res!671273) (not e!564404))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1001636 (= res!671273 (validKeyInArray!0 k!2224))))

(declare-fun b!1001637 () Bool)

(declare-fun res!671274 () Bool)

(declare-fun e!564408 () Bool)

(assert (=> b!1001637 (=> (not res!671274) (not e!564408))))

(declare-datatypes ((List!21262 0))(
  ( (Nil!21259) (Cons!21258 (h!22435 (_ BitVec 64)) (t!30271 List!21262)) )
))
(declare-fun arrayNoDuplicates!0 (array!63277 (_ BitVec 32) List!21262) Bool)

(assert (=> b!1001637 (= res!671274 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21259))))

(declare-fun b!1001638 () Bool)

(declare-fun res!671277 () Bool)

(assert (=> b!1001638 (=> (not res!671277) (not e!564408))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63277 (_ BitVec 32)) Bool)

(assert (=> b!1001638 (= res!671277 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1001639 () Bool)

(declare-fun e!564409 () Bool)

(assert (=> b!1001639 (= e!564408 e!564409)))

(declare-fun res!671269 () Bool)

(assert (=> b!1001639 (=> (not res!671269) (not e!564409))))

(declare-datatypes ((SeekEntryResult!9392 0))(
  ( (MissingZero!9392 (index!39938 (_ BitVec 32))) (Found!9392 (index!39939 (_ BitVec 32))) (Intermediate!9392 (undefined!10204 Bool) (index!39940 (_ BitVec 32)) (x!87389 (_ BitVec 32))) (Undefined!9392) (MissingVacant!9392 (index!39941 (_ BitVec 32))) )
))
(declare-fun lt!442785 () SeekEntryResult!9392)

(declare-fun lt!442791 () SeekEntryResult!9392)

(assert (=> b!1001639 (= res!671269 (= lt!442785 lt!442791))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1001639 (= lt!442791 (Intermediate!9392 false resIndex!38 resX!38))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63277 (_ BitVec 32)) SeekEntryResult!9392)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1001639 (= lt!442785 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30460 a!3219) j!170) mask!3464) (select (arr!30460 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1001640 () Bool)

(assert (=> b!1001640 (= e!564404 e!564408)))

(declare-fun res!671281 () Bool)

(assert (=> b!1001640 (=> (not res!671281) (not e!564408))))

(declare-fun lt!442786 () SeekEntryResult!9392)

(assert (=> b!1001640 (= res!671281 (or (= lt!442786 (MissingVacant!9392 i!1194)) (= lt!442786 (MissingZero!9392 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63277 (_ BitVec 32)) SeekEntryResult!9392)

(assert (=> b!1001640 (= lt!442786 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1001641 () Bool)

(declare-fun e!564406 () Bool)

(assert (=> b!1001641 (= e!564406 false)))

(declare-fun lt!442789 () (_ BitVec 32))

(declare-fun lt!442788 () SeekEntryResult!9392)

(declare-fun lt!442787 () (_ BitVec 64))

(declare-fun lt!442790 () array!63277)

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!1001641 (= lt!442788 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!442789 lt!442787 lt!442790 mask!3464))))

(declare-fun b!1001642 () Bool)

(declare-fun e!564405 () Bool)

(assert (=> b!1001642 (= e!564409 e!564405)))

(declare-fun res!671275 () Bool)

(assert (=> b!1001642 (=> (not res!671275) (not e!564405))))

(declare-fun lt!442784 () SeekEntryResult!9392)

(assert (=> b!1001642 (= res!671275 (= lt!442784 lt!442791))))

(declare-fun index!1507 () (_ BitVec 32))

(assert (=> b!1001642 (= lt!442784 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30460 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1001643 () Bool)

(declare-fun res!671270 () Bool)

(assert (=> b!1001643 (=> (not res!671270) (not e!564404))))

(assert (=> b!1001643 (= res!671270 (validKeyInArray!0 (select (arr!30460 a!3219) j!170)))))

(declare-fun b!1001644 () Bool)

(declare-fun res!671279 () Bool)

(declare-fun e!564407 () Bool)

(assert (=> b!1001644 (=> (not res!671279) (not e!564407))))

(assert (=> b!1001644 (= res!671279 (not (= lt!442784 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!442787 lt!442790 mask!3464))))))

(declare-fun b!1001645 () Bool)

(assert (=> b!1001645 (= e!564405 e!564407)))

(declare-fun res!671278 () Bool)

(assert (=> b!1001645 (=> (not res!671278) (not e!564407))))

(assert (=> b!1001645 (= res!671278 (not (= lt!442785 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!442787 mask!3464) lt!442787 lt!442790 mask!3464))))))

(assert (=> b!1001645 (= lt!442787 (select (store (arr!30460 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1001645 (= lt!442790 (array!63278 (store (arr!30460 a!3219) i!1194 k!2224) (size!30963 a!3219)))))

(declare-fun res!671282 () Bool)

(assert (=> start!86524 (=> (not res!671282) (not e!564404))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86524 (= res!671282 (validMask!0 mask!3464))))

(assert (=> start!86524 e!564404))

(declare-fun array_inv!23450 (array!63277) Bool)

(assert (=> start!86524 (array_inv!23450 a!3219)))

(assert (=> start!86524 true))

(declare-fun b!1001646 () Bool)

(declare-fun res!671284 () Bool)

(assert (=> b!1001646 (=> (not res!671284) (not e!564407))))

(assert (=> b!1001646 (= res!671284 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1001647 () Bool)

(assert (=> b!1001647 (= e!564407 e!564406)))

(declare-fun res!671276 () Bool)

(assert (=> b!1001647 (=> (not res!671276) (not e!564406))))

(assert (=> b!1001647 (= res!671276 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!442789 #b00000000000000000000000000000000) (bvslt lt!442789 (size!30963 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1001647 (= lt!442789 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1001648 () Bool)

(declare-fun res!671271 () Bool)

(assert (=> b!1001648 (=> (not res!671271) (not e!564406))))

(assert (=> b!1001648 (= res!671271 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!442789 (select (arr!30460 a!3219) j!170) a!3219 mask!3464) lt!442791))))

(declare-fun b!1001649 () Bool)

(declare-fun res!671280 () Bool)

(assert (=> b!1001649 (=> (not res!671280) (not e!564408))))

(assert (=> b!1001649 (= res!671280 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30963 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30963 a!3219))))))

(declare-fun b!1001650 () Bool)

(declare-fun res!671272 () Bool)

(assert (=> b!1001650 (=> (not res!671272) (not e!564404))))

(declare-fun arrayContainsKey!0 (array!63277 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1001650 (= res!671272 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(assert (= (and start!86524 res!671282) b!1001635))

(assert (= (and b!1001635 res!671283) b!1001643))

(assert (= (and b!1001643 res!671270) b!1001636))

(assert (= (and b!1001636 res!671273) b!1001650))

(assert (= (and b!1001650 res!671272) b!1001640))

(assert (= (and b!1001640 res!671281) b!1001638))

(assert (= (and b!1001638 res!671277) b!1001637))

(assert (= (and b!1001637 res!671274) b!1001649))

(assert (= (and b!1001649 res!671280) b!1001639))

(assert (= (and b!1001639 res!671269) b!1001642))

(assert (= (and b!1001642 res!671275) b!1001645))

(assert (= (and b!1001645 res!671278) b!1001644))

(assert (= (and b!1001644 res!671279) b!1001646))

(assert (= (and b!1001646 res!671284) b!1001647))

(assert (= (and b!1001647 res!671276) b!1001648))

(assert (= (and b!1001648 res!671271) b!1001641))

(declare-fun m!927741 () Bool)

(assert (=> b!1001641 m!927741))

(declare-fun m!927743 () Bool)

(assert (=> b!1001645 m!927743))

(assert (=> b!1001645 m!927743))

(declare-fun m!927745 () Bool)

(assert (=> b!1001645 m!927745))

(declare-fun m!927747 () Bool)

(assert (=> b!1001645 m!927747))

(declare-fun m!927749 () Bool)

(assert (=> b!1001645 m!927749))

(declare-fun m!927751 () Bool)

(assert (=> b!1001638 m!927751))

(declare-fun m!927753 () Bool)

(assert (=> b!1001648 m!927753))

(assert (=> b!1001648 m!927753))

(declare-fun m!927755 () Bool)

(assert (=> b!1001648 m!927755))

(assert (=> b!1001642 m!927753))

(assert (=> b!1001642 m!927753))

(declare-fun m!927757 () Bool)

(assert (=> b!1001642 m!927757))

(assert (=> b!1001639 m!927753))

(assert (=> b!1001639 m!927753))

(declare-fun m!927759 () Bool)

(assert (=> b!1001639 m!927759))

(assert (=> b!1001639 m!927759))

(assert (=> b!1001639 m!927753))

(declare-fun m!927761 () Bool)

(assert (=> b!1001639 m!927761))

(assert (=> b!1001643 m!927753))

(assert (=> b!1001643 m!927753))

(declare-fun m!927763 () Bool)

(assert (=> b!1001643 m!927763))

(declare-fun m!927765 () Bool)

(assert (=> b!1001640 m!927765))

(declare-fun m!927767 () Bool)

(assert (=> b!1001647 m!927767))

(declare-fun m!927769 () Bool)

(assert (=> b!1001644 m!927769))

(declare-fun m!927771 () Bool)

(assert (=> b!1001637 m!927771))

(declare-fun m!927773 () Bool)

(assert (=> start!86524 m!927773))

(declare-fun m!927775 () Bool)

(assert (=> start!86524 m!927775))

(declare-fun m!927777 () Bool)

(assert (=> b!1001650 m!927777))

(declare-fun m!927779 () Bool)

(assert (=> b!1001636 m!927779))

(push 1)

