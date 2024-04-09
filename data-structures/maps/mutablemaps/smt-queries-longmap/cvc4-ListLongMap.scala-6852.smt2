; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86402 () Bool)

(assert start!86402)

(declare-fun b!999333 () Bool)

(declare-fun res!668977 () Bool)

(declare-fun e!563515 () Bool)

(assert (=> b!999333 (=> (not res!668977) (not e!563515))))

(declare-datatypes ((array!63155 0))(
  ( (array!63156 (arr!30399 (Array (_ BitVec 32) (_ BitVec 64))) (size!30902 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63155)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!999333 (= res!668977 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30902 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30902 a!3219))))))

(declare-fun b!999334 () Bool)

(declare-fun e!563516 () Bool)

(assert (=> b!999334 (= e!563516 false)))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun lt!441983 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!999334 (= lt!441983 (toIndex!0 (select (store (arr!30399 a!3219) i!1194 k!2224) j!170) mask!3464))))

(declare-fun b!999335 () Bool)

(declare-fun res!668970 () Bool)

(declare-fun e!563513 () Bool)

(assert (=> b!999335 (=> (not res!668970) (not e!563513))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!999335 (= res!668970 (validKeyInArray!0 k!2224))))

(declare-fun b!999336 () Bool)

(assert (=> b!999336 (= e!563513 e!563515)))

(declare-fun res!668969 () Bool)

(assert (=> b!999336 (=> (not res!668969) (not e!563515))))

(declare-datatypes ((SeekEntryResult!9331 0))(
  ( (MissingZero!9331 (index!39694 (_ BitVec 32))) (Found!9331 (index!39695 (_ BitVec 32))) (Intermediate!9331 (undefined!10143 Bool) (index!39696 (_ BitVec 32)) (x!87160 (_ BitVec 32))) (Undefined!9331) (MissingVacant!9331 (index!39697 (_ BitVec 32))) )
))
(declare-fun lt!441984 () SeekEntryResult!9331)

(assert (=> b!999336 (= res!668969 (or (= lt!441984 (MissingVacant!9331 i!1194)) (= lt!441984 (MissingZero!9331 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63155 (_ BitVec 32)) SeekEntryResult!9331)

(assert (=> b!999336 (= lt!441984 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!999337 () Bool)

(declare-fun res!668974 () Bool)

(assert (=> b!999337 (=> (not res!668974) (not e!563513))))

(assert (=> b!999337 (= res!668974 (validKeyInArray!0 (select (arr!30399 a!3219) j!170)))))

(declare-fun res!668975 () Bool)

(assert (=> start!86402 (=> (not res!668975) (not e!563513))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86402 (= res!668975 (validMask!0 mask!3464))))

(assert (=> start!86402 e!563513))

(declare-fun array_inv!23389 (array!63155) Bool)

(assert (=> start!86402 (array_inv!23389 a!3219)))

(assert (=> start!86402 true))

(declare-fun b!999338 () Bool)

(assert (=> b!999338 (= e!563515 e!563516)))

(declare-fun res!668971 () Bool)

(assert (=> b!999338 (=> (not res!668971) (not e!563516))))

(declare-fun lt!441982 () SeekEntryResult!9331)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63155 (_ BitVec 32)) SeekEntryResult!9331)

(assert (=> b!999338 (= res!668971 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30399 a!3219) j!170) mask!3464) (select (arr!30399 a!3219) j!170) a!3219 mask!3464) lt!441982))))

(assert (=> b!999338 (= lt!441982 (Intermediate!9331 false resIndex!38 resX!38))))

(declare-fun b!999339 () Bool)

(declare-fun res!668976 () Bool)

(assert (=> b!999339 (=> (not res!668976) (not e!563513))))

(declare-fun arrayContainsKey!0 (array!63155 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!999339 (= res!668976 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!999340 () Bool)

(declare-fun res!668968 () Bool)

(assert (=> b!999340 (=> (not res!668968) (not e!563516))))

(assert (=> b!999340 (= res!668968 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30399 a!3219) j!170) a!3219 mask!3464) lt!441982))))

(declare-fun b!999341 () Bool)

(declare-fun res!668967 () Bool)

(assert (=> b!999341 (=> (not res!668967) (not e!563513))))

(assert (=> b!999341 (= res!668967 (and (= (size!30902 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30902 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30902 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!999342 () Bool)

(declare-fun res!668973 () Bool)

(assert (=> b!999342 (=> (not res!668973) (not e!563515))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63155 (_ BitVec 32)) Bool)

(assert (=> b!999342 (= res!668973 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!999343 () Bool)

(declare-fun res!668972 () Bool)

(assert (=> b!999343 (=> (not res!668972) (not e!563515))))

(declare-datatypes ((List!21201 0))(
  ( (Nil!21198) (Cons!21197 (h!22374 (_ BitVec 64)) (t!30210 List!21201)) )
))
(declare-fun arrayNoDuplicates!0 (array!63155 (_ BitVec 32) List!21201) Bool)

(assert (=> b!999343 (= res!668972 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21198))))

(assert (= (and start!86402 res!668975) b!999341))

(assert (= (and b!999341 res!668967) b!999337))

(assert (= (and b!999337 res!668974) b!999335))

(assert (= (and b!999335 res!668970) b!999339))

(assert (= (and b!999339 res!668976) b!999336))

(assert (= (and b!999336 res!668969) b!999342))

(assert (= (and b!999342 res!668973) b!999343))

(assert (= (and b!999343 res!668972) b!999333))

(assert (= (and b!999333 res!668977) b!999338))

(assert (= (and b!999338 res!668971) b!999340))

(assert (= (and b!999340 res!668968) b!999334))

(declare-fun m!925689 () Bool)

(assert (=> b!999340 m!925689))

(assert (=> b!999340 m!925689))

(declare-fun m!925691 () Bool)

(assert (=> b!999340 m!925691))

(declare-fun m!925693 () Bool)

(assert (=> b!999335 m!925693))

(declare-fun m!925695 () Bool)

(assert (=> b!999336 m!925695))

(declare-fun m!925697 () Bool)

(assert (=> b!999339 m!925697))

(assert (=> b!999338 m!925689))

(assert (=> b!999338 m!925689))

(declare-fun m!925699 () Bool)

(assert (=> b!999338 m!925699))

(assert (=> b!999338 m!925699))

(assert (=> b!999338 m!925689))

(declare-fun m!925701 () Bool)

(assert (=> b!999338 m!925701))

(declare-fun m!925703 () Bool)

(assert (=> start!86402 m!925703))

(declare-fun m!925705 () Bool)

(assert (=> start!86402 m!925705))

(declare-fun m!925707 () Bool)

(assert (=> b!999343 m!925707))

(declare-fun m!925709 () Bool)

(assert (=> b!999334 m!925709))

(declare-fun m!925711 () Bool)

(assert (=> b!999334 m!925711))

(assert (=> b!999334 m!925711))

(declare-fun m!925713 () Bool)

(assert (=> b!999334 m!925713))

(declare-fun m!925715 () Bool)

(assert (=> b!999342 m!925715))

(assert (=> b!999337 m!925689))

(assert (=> b!999337 m!925689))

(declare-fun m!925717 () Bool)

(assert (=> b!999337 m!925717))

(push 1)

(assert (not b!999335))

(assert (not b!999343))

(assert (not b!999337))

(assert (not b!999340))

