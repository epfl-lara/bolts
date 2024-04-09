; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86426 () Bool)

(assert start!86426)

(declare-fun b!999747 () Bool)

(declare-fun res!669385 () Bool)

(declare-fun e!563667 () Bool)

(assert (=> b!999747 (=> (not res!669385) (not e!563667))))

(declare-datatypes ((array!63179 0))(
  ( (array!63180 (arr!30411 (Array (_ BitVec 32) (_ BitVec 64))) (size!30914 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63179)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!999747 (= res!669385 (and (= (size!30914 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30914 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30914 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!999748 () Bool)

(declare-fun res!669382 () Bool)

(assert (=> b!999748 (=> (not res!669382) (not e!563667))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!999748 (= res!669382 (validKeyInArray!0 k!2224))))

(declare-fun b!999749 () Bool)

(declare-fun e!563666 () Bool)

(assert (=> b!999749 (= e!563666 false)))

(declare-datatypes ((SeekEntryResult!9343 0))(
  ( (MissingZero!9343 (index!39742 (_ BitVec 32))) (Found!9343 (index!39743 (_ BitVec 32))) (Intermediate!9343 (undefined!10155 Bool) (index!39744 (_ BitVec 32)) (x!87204 (_ BitVec 32))) (Undefined!9343) (MissingVacant!9343 (index!39745 (_ BitVec 32))) )
))
(declare-fun lt!442091 () SeekEntryResult!9343)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63179 (_ BitVec 32)) SeekEntryResult!9343)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!999749 (= lt!442091 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!30411 a!3219) i!1194 k!2224) j!170) mask!3464) (select (store (arr!30411 a!3219) i!1194 k!2224) j!170) (array!63180 (store (arr!30411 a!3219) i!1194 k!2224) (size!30914 a!3219)) mask!3464))))

(declare-fun b!999750 () Bool)

(declare-fun e!563669 () Bool)

(assert (=> b!999750 (= e!563669 e!563666)))

(declare-fun res!669383 () Bool)

(assert (=> b!999750 (=> (not res!669383) (not e!563666))))

(declare-fun lt!442092 () SeekEntryResult!9343)

(assert (=> b!999750 (= res!669383 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30411 a!3219) j!170) mask!3464) (select (arr!30411 a!3219) j!170) a!3219 mask!3464) lt!442092))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!999750 (= lt!442092 (Intermediate!9343 false resIndex!38 resX!38))))

(declare-fun b!999751 () Bool)

(declare-fun res!669390 () Bool)

(assert (=> b!999751 (=> (not res!669390) (not e!563669))))

(declare-datatypes ((List!21213 0))(
  ( (Nil!21210) (Cons!21209 (h!22386 (_ BitVec 64)) (t!30222 List!21213)) )
))
(declare-fun arrayNoDuplicates!0 (array!63179 (_ BitVec 32) List!21213) Bool)

(assert (=> b!999751 (= res!669390 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21210))))

(declare-fun b!999752 () Bool)

(declare-fun res!669386 () Bool)

(assert (=> b!999752 (=> (not res!669386) (not e!563667))))

(assert (=> b!999752 (= res!669386 (validKeyInArray!0 (select (arr!30411 a!3219) j!170)))))

(declare-fun b!999753 () Bool)

(assert (=> b!999753 (= e!563667 e!563669)))

(declare-fun res!669388 () Bool)

(assert (=> b!999753 (=> (not res!669388) (not e!563669))))

(declare-fun lt!442090 () SeekEntryResult!9343)

(assert (=> b!999753 (= res!669388 (or (= lt!442090 (MissingVacant!9343 i!1194)) (= lt!442090 (MissingZero!9343 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63179 (_ BitVec 32)) SeekEntryResult!9343)

(assert (=> b!999753 (= lt!442090 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!999754 () Bool)

(declare-fun res!669387 () Bool)

(assert (=> b!999754 (=> (not res!669387) (not e!563669))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(assert (=> b!999754 (= res!669387 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30914 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30914 a!3219))))))

(declare-fun b!999755 () Bool)

(declare-fun res!669384 () Bool)

(assert (=> b!999755 (=> (not res!669384) (not e!563666))))

(assert (=> b!999755 (= res!669384 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30411 a!3219) j!170) a!3219 mask!3464) lt!442092))))

(declare-fun res!669389 () Bool)

(assert (=> start!86426 (=> (not res!669389) (not e!563667))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86426 (= res!669389 (validMask!0 mask!3464))))

(assert (=> start!86426 e!563667))

(declare-fun array_inv!23401 (array!63179) Bool)

(assert (=> start!86426 (array_inv!23401 a!3219)))

(assert (=> start!86426 true))

(declare-fun b!999756 () Bool)

(declare-fun res!669381 () Bool)

(assert (=> b!999756 (=> (not res!669381) (not e!563669))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63179 (_ BitVec 32)) Bool)

(assert (=> b!999756 (= res!669381 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!999757 () Bool)

(declare-fun res!669391 () Bool)

(assert (=> b!999757 (=> (not res!669391) (not e!563667))))

(declare-fun arrayContainsKey!0 (array!63179 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!999757 (= res!669391 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(assert (= (and start!86426 res!669389) b!999747))

(assert (= (and b!999747 res!669385) b!999752))

(assert (= (and b!999752 res!669386) b!999748))

(assert (= (and b!999748 res!669382) b!999757))

(assert (= (and b!999757 res!669391) b!999753))

(assert (= (and b!999753 res!669388) b!999756))

(assert (= (and b!999756 res!669381) b!999751))

(assert (= (and b!999751 res!669390) b!999754))

(assert (= (and b!999754 res!669387) b!999750))

(assert (= (and b!999750 res!669383) b!999755))

(assert (= (and b!999755 res!669384) b!999749))

(declare-fun m!926071 () Bool)

(assert (=> b!999755 m!926071))

(assert (=> b!999755 m!926071))

(declare-fun m!926073 () Bool)

(assert (=> b!999755 m!926073))

(assert (=> b!999750 m!926071))

(assert (=> b!999750 m!926071))

(declare-fun m!926075 () Bool)

(assert (=> b!999750 m!926075))

(assert (=> b!999750 m!926075))

(assert (=> b!999750 m!926071))

(declare-fun m!926077 () Bool)

(assert (=> b!999750 m!926077))

(declare-fun m!926079 () Bool)

(assert (=> b!999748 m!926079))

(declare-fun m!926081 () Bool)

(assert (=> b!999749 m!926081))

(declare-fun m!926083 () Bool)

(assert (=> b!999749 m!926083))

(assert (=> b!999749 m!926083))

(declare-fun m!926085 () Bool)

(assert (=> b!999749 m!926085))

(assert (=> b!999749 m!926085))

(assert (=> b!999749 m!926083))

(declare-fun m!926087 () Bool)

(assert (=> b!999749 m!926087))

(declare-fun m!926089 () Bool)

(assert (=> start!86426 m!926089))

(declare-fun m!926091 () Bool)

(assert (=> start!86426 m!926091))

(assert (=> b!999752 m!926071))

(assert (=> b!999752 m!926071))

(declare-fun m!926093 () Bool)

(assert (=> b!999752 m!926093))

(declare-fun m!926095 () Bool)

(assert (=> b!999756 m!926095))

(declare-fun m!926097 () Bool)

(assert (=> b!999751 m!926097))

(declare-fun m!926099 () Bool)

(assert (=> b!999757 m!926099))

(declare-fun m!926101 () Bool)

(assert (=> b!999753 m!926101))

(push 1)

(assert (not b!999748))

(assert (not b!999756))

(assert (not b!999752))

(assert (not b!999749))

