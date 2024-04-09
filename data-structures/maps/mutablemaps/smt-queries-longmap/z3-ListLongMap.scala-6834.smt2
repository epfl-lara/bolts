; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86076 () Bool)

(assert start!86076)

(declare-fun b!996554 () Bool)

(declare-fun res!666828 () Bool)

(declare-fun e!562249 () Bool)

(assert (=> b!996554 (=> (not res!666828) (not e!562249))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!996554 (= res!666828 (validKeyInArray!0 k0!2224))))

(declare-fun b!996555 () Bool)

(declare-fun res!666827 () Bool)

(declare-fun e!562250 () Bool)

(assert (=> b!996555 (=> (not res!666827) (not e!562250))))

(declare-datatypes ((array!63033 0))(
  ( (array!63034 (arr!30344 (Array (_ BitVec 32) (_ BitVec 64))) (size!30847 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63033)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!996555 (= res!666827 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30847 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30847 a!3219))))))

(declare-fun b!996556 () Bool)

(declare-fun res!666829 () Bool)

(assert (=> b!996556 (=> (not res!666829) (not e!562249))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!996556 (= res!666829 (validKeyInArray!0 (select (arr!30344 a!3219) j!170)))))

(declare-fun b!996558 () Bool)

(assert (=> b!996558 (= e!562249 e!562250)))

(declare-fun res!666826 () Bool)

(assert (=> b!996558 (=> (not res!666826) (not e!562250))))

(declare-datatypes ((SeekEntryResult!9276 0))(
  ( (MissingZero!9276 (index!39474 (_ BitVec 32))) (Found!9276 (index!39475 (_ BitVec 32))) (Intermediate!9276 (undefined!10088 Bool) (index!39476 (_ BitVec 32)) (x!86937 (_ BitVec 32))) (Undefined!9276) (MissingVacant!9276 (index!39477 (_ BitVec 32))) )
))
(declare-fun lt!441228 () SeekEntryResult!9276)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!996558 (= res!666826 (or (= lt!441228 (MissingVacant!9276 i!1194)) (= lt!441228 (MissingZero!9276 i!1194))))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63033 (_ BitVec 32)) SeekEntryResult!9276)

(assert (=> b!996558 (= lt!441228 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!996559 () Bool)

(declare-fun res!666831 () Bool)

(assert (=> b!996559 (=> (not res!666831) (not e!562250))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63033 (_ BitVec 32)) Bool)

(assert (=> b!996559 (= res!666831 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!996560 () Bool)

(assert (=> b!996560 (= e!562250 false)))

(declare-fun lt!441227 () SeekEntryResult!9276)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63033 (_ BitVec 32)) SeekEntryResult!9276)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!996560 (= lt!441227 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30344 a!3219) j!170) mask!3464) (select (arr!30344 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!996561 () Bool)

(declare-fun res!666825 () Bool)

(assert (=> b!996561 (=> (not res!666825) (not e!562250))))

(declare-datatypes ((List!21146 0))(
  ( (Nil!21143) (Cons!21142 (h!22307 (_ BitVec 64)) (t!30155 List!21146)) )
))
(declare-fun arrayNoDuplicates!0 (array!63033 (_ BitVec 32) List!21146) Bool)

(assert (=> b!996561 (= res!666825 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21143))))

(declare-fun b!996562 () Bool)

(declare-fun res!666832 () Bool)

(assert (=> b!996562 (=> (not res!666832) (not e!562249))))

(assert (=> b!996562 (= res!666832 (and (= (size!30847 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30847 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30847 a!3219)) (not (= i!1194 j!170))))))

(declare-fun res!666830 () Bool)

(assert (=> start!86076 (=> (not res!666830) (not e!562249))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86076 (= res!666830 (validMask!0 mask!3464))))

(assert (=> start!86076 e!562249))

(declare-fun array_inv!23334 (array!63033) Bool)

(assert (=> start!86076 (array_inv!23334 a!3219)))

(assert (=> start!86076 true))

(declare-fun b!996557 () Bool)

(declare-fun res!666824 () Bool)

(assert (=> b!996557 (=> (not res!666824) (not e!562249))))

(declare-fun arrayContainsKey!0 (array!63033 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!996557 (= res!666824 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(assert (= (and start!86076 res!666830) b!996562))

(assert (= (and b!996562 res!666832) b!996556))

(assert (= (and b!996556 res!666829) b!996554))

(assert (= (and b!996554 res!666828) b!996557))

(assert (= (and b!996557 res!666824) b!996558))

(assert (= (and b!996558 res!666826) b!996559))

(assert (= (and b!996559 res!666831) b!996561))

(assert (= (and b!996561 res!666825) b!996555))

(assert (= (and b!996555 res!666827) b!996560))

(declare-fun m!923731 () Bool)

(assert (=> b!996556 m!923731))

(assert (=> b!996556 m!923731))

(declare-fun m!923733 () Bool)

(assert (=> b!996556 m!923733))

(declare-fun m!923735 () Bool)

(assert (=> b!996561 m!923735))

(declare-fun m!923737 () Bool)

(assert (=> b!996554 m!923737))

(declare-fun m!923739 () Bool)

(assert (=> b!996559 m!923739))

(declare-fun m!923741 () Bool)

(assert (=> start!86076 m!923741))

(declare-fun m!923743 () Bool)

(assert (=> start!86076 m!923743))

(declare-fun m!923745 () Bool)

(assert (=> b!996558 m!923745))

(assert (=> b!996560 m!923731))

(assert (=> b!996560 m!923731))

(declare-fun m!923747 () Bool)

(assert (=> b!996560 m!923747))

(assert (=> b!996560 m!923747))

(assert (=> b!996560 m!923731))

(declare-fun m!923749 () Bool)

(assert (=> b!996560 m!923749))

(declare-fun m!923751 () Bool)

(assert (=> b!996557 m!923751))

(check-sat (not b!996560) (not b!996556) (not start!86076) (not b!996557) (not b!996559) (not b!996554) (not b!996558) (not b!996561))
(check-sat)
