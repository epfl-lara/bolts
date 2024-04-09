; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85980 () Bool)

(assert start!85980)

(declare-fun b!995744 () Bool)

(declare-fun res!666101 () Bool)

(declare-fun e!561926 () Bool)

(assert (=> b!995744 (=> (not res!666101) (not e!561926))))

(declare-datatypes ((array!62982 0))(
  ( (array!62983 (arr!30320 (Array (_ BitVec 32) (_ BitVec 64))) (size!30823 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62982)

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!62982 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!995744 (= res!666101 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!995745 () Bool)

(declare-fun res!666105 () Bool)

(assert (=> b!995745 (=> (not res!666105) (not e!561926))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!995745 (= res!666105 (and (= (size!30823 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30823 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30823 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!995746 () Bool)

(declare-fun res!666108 () Bool)

(assert (=> b!995746 (=> (not res!666108) (not e!561926))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!995746 (= res!666108 (validKeyInArray!0 k0!2224))))

(declare-fun b!995747 () Bool)

(declare-fun e!561924 () Bool)

(assert (=> b!995747 (= e!561926 e!561924)))

(declare-fun res!666102 () Bool)

(assert (=> b!995747 (=> (not res!666102) (not e!561924))))

(declare-datatypes ((SeekEntryResult!9252 0))(
  ( (MissingZero!9252 (index!39378 (_ BitVec 32))) (Found!9252 (index!39379 (_ BitVec 32))) (Intermediate!9252 (undefined!10064 Bool) (index!39380 (_ BitVec 32)) (x!86846 (_ BitVec 32))) (Undefined!9252) (MissingVacant!9252 (index!39381 (_ BitVec 32))) )
))
(declare-fun lt!441020 () SeekEntryResult!9252)

(assert (=> b!995747 (= res!666102 (or (= lt!441020 (MissingVacant!9252 i!1194)) (= lt!441020 (MissingZero!9252 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62982 (_ BitVec 32)) SeekEntryResult!9252)

(assert (=> b!995747 (= lt!441020 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!995748 () Bool)

(assert (=> b!995748 (= e!561924 false)))

(declare-fun lt!441021 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!995748 (= lt!441021 (toIndex!0 (select (arr!30320 a!3219) j!170) mask!3464))))

(declare-fun b!995749 () Bool)

(declare-fun res!666109 () Bool)

(assert (=> b!995749 (=> (not res!666109) (not e!561924))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!995749 (= res!666109 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30823 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30823 a!3219))))))

(declare-fun res!666107 () Bool)

(assert (=> start!85980 (=> (not res!666107) (not e!561926))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85980 (= res!666107 (validMask!0 mask!3464))))

(assert (=> start!85980 e!561926))

(declare-fun array_inv!23310 (array!62982) Bool)

(assert (=> start!85980 (array_inv!23310 a!3219)))

(assert (=> start!85980 true))

(declare-fun b!995750 () Bool)

(declare-fun res!666103 () Bool)

(assert (=> b!995750 (=> (not res!666103) (not e!561926))))

(assert (=> b!995750 (= res!666103 (validKeyInArray!0 (select (arr!30320 a!3219) j!170)))))

(declare-fun b!995751 () Bool)

(declare-fun res!666104 () Bool)

(assert (=> b!995751 (=> (not res!666104) (not e!561924))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62982 (_ BitVec 32)) Bool)

(assert (=> b!995751 (= res!666104 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!995752 () Bool)

(declare-fun res!666106 () Bool)

(assert (=> b!995752 (=> (not res!666106) (not e!561924))))

(declare-datatypes ((List!21122 0))(
  ( (Nil!21119) (Cons!21118 (h!22280 (_ BitVec 64)) (t!30131 List!21122)) )
))
(declare-fun arrayNoDuplicates!0 (array!62982 (_ BitVec 32) List!21122) Bool)

(assert (=> b!995752 (= res!666106 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21119))))

(assert (= (and start!85980 res!666107) b!995745))

(assert (= (and b!995745 res!666105) b!995750))

(assert (= (and b!995750 res!666103) b!995746))

(assert (= (and b!995746 res!666108) b!995744))

(assert (= (and b!995744 res!666101) b!995747))

(assert (= (and b!995747 res!666102) b!995751))

(assert (= (and b!995751 res!666104) b!995752))

(assert (= (and b!995752 res!666106) b!995749))

(assert (= (and b!995749 res!666109) b!995748))

(declare-fun m!923141 () Bool)

(assert (=> b!995747 m!923141))

(declare-fun m!923143 () Bool)

(assert (=> b!995744 m!923143))

(declare-fun m!923145 () Bool)

(assert (=> b!995751 m!923145))

(declare-fun m!923147 () Bool)

(assert (=> b!995748 m!923147))

(assert (=> b!995748 m!923147))

(declare-fun m!923149 () Bool)

(assert (=> b!995748 m!923149))

(assert (=> b!995750 m!923147))

(assert (=> b!995750 m!923147))

(declare-fun m!923151 () Bool)

(assert (=> b!995750 m!923151))

(declare-fun m!923153 () Bool)

(assert (=> start!85980 m!923153))

(declare-fun m!923155 () Bool)

(assert (=> start!85980 m!923155))

(declare-fun m!923157 () Bool)

(assert (=> b!995752 m!923157))

(declare-fun m!923159 () Bool)

(assert (=> b!995746 m!923159))

(check-sat (not b!995750) (not b!995752) (not b!995744) (not b!995746) (not start!85980) (not b!995751) (not b!995748) (not b!995747))
(check-sat)
