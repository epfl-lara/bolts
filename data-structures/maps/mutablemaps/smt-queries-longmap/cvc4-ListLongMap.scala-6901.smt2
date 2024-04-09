; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86804 () Bool)

(assert start!86804)

(declare-fun b!1005868 () Bool)

(declare-fun res!675119 () Bool)

(declare-fun e!566304 () Bool)

(assert (=> b!1005868 (=> (not res!675119) (not e!566304))))

(declare-datatypes ((array!63455 0))(
  ( (array!63456 (arr!30546 (Array (_ BitVec 32) (_ BitVec 64))) (size!31049 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63455)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63455 (_ BitVec 32)) Bool)

(assert (=> b!1005868 (= res!675119 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1005869 () Bool)

(declare-fun res!675113 () Bool)

(declare-fun e!566305 () Bool)

(assert (=> b!1005869 (=> (not res!675113) (not e!566305))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63455 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1005869 (= res!675113 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1005870 () Bool)

(declare-fun res!675112 () Bool)

(assert (=> b!1005870 (=> (not res!675112) (not e!566305))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1005870 (= res!675112 (validKeyInArray!0 (select (arr!30546 a!3219) j!170)))))

(declare-fun b!1005871 () Bool)

(declare-fun res!675120 () Bool)

(assert (=> b!1005871 (=> (not res!675120) (not e!566305))))

(assert (=> b!1005871 (= res!675120 (validKeyInArray!0 k!2224))))

(declare-fun b!1005872 () Bool)

(declare-fun res!675114 () Bool)

(assert (=> b!1005872 (=> (not res!675114) (not e!566304))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9478 0))(
  ( (MissingZero!9478 (index!40282 (_ BitVec 32))) (Found!9478 (index!40283 (_ BitVec 32))) (Intermediate!9478 (undefined!10290 Bool) (index!40284 (_ BitVec 32)) (x!87711 (_ BitVec 32))) (Undefined!9478) (MissingVacant!9478 (index!40285 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63455 (_ BitVec 32)) SeekEntryResult!9478)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1005872 (= res!675114 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30546 a!3219) j!170) mask!3464) (select (arr!30546 a!3219) j!170) a!3219 mask!3464) (Intermediate!9478 false resIndex!38 resX!38)))))

(declare-fun res!675118 () Bool)

(assert (=> start!86804 (=> (not res!675118) (not e!566305))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86804 (= res!675118 (validMask!0 mask!3464))))

(assert (=> start!86804 e!566305))

(declare-fun array_inv!23536 (array!63455) Bool)

(assert (=> start!86804 (array_inv!23536 a!3219)))

(assert (=> start!86804 true))

(declare-fun b!1005873 () Bool)

(declare-fun res!675121 () Bool)

(assert (=> b!1005873 (=> (not res!675121) (not e!566304))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(assert (=> b!1005873 (= res!675121 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31049 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31049 a!3219))))))

(declare-fun b!1005874 () Bool)

(declare-fun res!675117 () Bool)

(assert (=> b!1005874 (=> (not res!675117) (not e!566304))))

(declare-datatypes ((List!21348 0))(
  ( (Nil!21345) (Cons!21344 (h!22527 (_ BitVec 64)) (t!30357 List!21348)) )
))
(declare-fun arrayNoDuplicates!0 (array!63455 (_ BitVec 32) List!21348) Bool)

(assert (=> b!1005874 (= res!675117 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21345))))

(declare-fun b!1005875 () Bool)

(assert (=> b!1005875 (= e!566305 e!566304)))

(declare-fun res!675116 () Bool)

(assert (=> b!1005875 (=> (not res!675116) (not e!566304))))

(declare-fun lt!444614 () SeekEntryResult!9478)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1005875 (= res!675116 (or (= lt!444614 (MissingVacant!9478 i!1194)) (= lt!444614 (MissingZero!9478 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63455 (_ BitVec 32)) SeekEntryResult!9478)

(assert (=> b!1005875 (= lt!444614 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1005876 () Bool)

(assert (=> b!1005876 (= e!566304 false)))

(declare-fun lt!444615 () SeekEntryResult!9478)

(assert (=> b!1005876 (= lt!444615 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30546 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1005877 () Bool)

(declare-fun res!675115 () Bool)

(assert (=> b!1005877 (=> (not res!675115) (not e!566305))))

(assert (=> b!1005877 (= res!675115 (and (= (size!31049 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31049 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31049 a!3219)) (not (= i!1194 j!170))))))

(assert (= (and start!86804 res!675118) b!1005877))

(assert (= (and b!1005877 res!675115) b!1005870))

(assert (= (and b!1005870 res!675112) b!1005871))

(assert (= (and b!1005871 res!675120) b!1005869))

(assert (= (and b!1005869 res!675113) b!1005875))

(assert (= (and b!1005875 res!675116) b!1005868))

(assert (= (and b!1005868 res!675119) b!1005874))

(assert (= (and b!1005874 res!675117) b!1005873))

(assert (= (and b!1005873 res!675121) b!1005872))

(assert (= (and b!1005872 res!675114) b!1005876))

(declare-fun m!931113 () Bool)

(assert (=> start!86804 m!931113))

(declare-fun m!931115 () Bool)

(assert (=> start!86804 m!931115))

(declare-fun m!931117 () Bool)

(assert (=> b!1005868 m!931117))

(declare-fun m!931119 () Bool)

(assert (=> b!1005875 m!931119))

(declare-fun m!931121 () Bool)

(assert (=> b!1005870 m!931121))

(assert (=> b!1005870 m!931121))

(declare-fun m!931123 () Bool)

(assert (=> b!1005870 m!931123))

(declare-fun m!931125 () Bool)

(assert (=> b!1005871 m!931125))

(declare-fun m!931127 () Bool)

(assert (=> b!1005874 m!931127))

(assert (=> b!1005872 m!931121))

(assert (=> b!1005872 m!931121))

(declare-fun m!931129 () Bool)

(assert (=> b!1005872 m!931129))

(assert (=> b!1005872 m!931129))

(assert (=> b!1005872 m!931121))

(declare-fun m!931131 () Bool)

(assert (=> b!1005872 m!931131))

(assert (=> b!1005876 m!931121))

(assert (=> b!1005876 m!931121))

(declare-fun m!931133 () Bool)

(assert (=> b!1005876 m!931133))

(declare-fun m!931135 () Bool)

(assert (=> b!1005869 m!931135))

(push 1)

(assert (not b!1005876))

(assert (not b!1005875))

(assert (not b!1005870))

(assert (not b!1005871))

(assert (not b!1005874))

(assert (not b!1005872))

(assert (not b!1005869))

