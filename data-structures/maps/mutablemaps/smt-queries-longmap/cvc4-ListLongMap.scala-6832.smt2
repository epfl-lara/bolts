; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86066 () Bool)

(assert start!86066)

(declare-fun b!996410 () Bool)

(declare-fun res!666681 () Bool)

(declare-fun e!562204 () Bool)

(assert (=> b!996410 (=> (not res!666681) (not e!562204))))

(declare-datatypes ((array!63023 0))(
  ( (array!63024 (arr!30339 (Array (_ BitVec 32) (_ BitVec 64))) (size!30842 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63023)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!996410 (= res!666681 (validKeyInArray!0 (select (arr!30339 a!3219) j!170)))))

(declare-fun b!996411 () Bool)

(declare-fun e!562203 () Bool)

(assert (=> b!996411 (= e!562204 e!562203)))

(declare-fun res!666680 () Bool)

(assert (=> b!996411 (=> (not res!666680) (not e!562203))))

(declare-datatypes ((SeekEntryResult!9271 0))(
  ( (MissingZero!9271 (index!39454 (_ BitVec 32))) (Found!9271 (index!39455 (_ BitVec 32))) (Intermediate!9271 (undefined!10083 Bool) (index!39456 (_ BitVec 32)) (x!86916 (_ BitVec 32))) (Undefined!9271) (MissingVacant!9271 (index!39457 (_ BitVec 32))) )
))
(declare-fun lt!441207 () SeekEntryResult!9271)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!996411 (= res!666680 (or (= lt!441207 (MissingVacant!9271 i!1194)) (= lt!441207 (MissingZero!9271 i!1194))))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63023 (_ BitVec 32)) SeekEntryResult!9271)

(assert (=> b!996411 (= lt!441207 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!996412 () Bool)

(declare-fun res!666688 () Bool)

(assert (=> b!996412 (=> (not res!666688) (not e!562204))))

(assert (=> b!996412 (= res!666688 (and (= (size!30842 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30842 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30842 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!996413 () Bool)

(declare-fun res!666687 () Bool)

(assert (=> b!996413 (=> (not res!666687) (not e!562204))))

(declare-fun arrayContainsKey!0 (array!63023 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!996413 (= res!666687 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!996414 () Bool)

(declare-fun res!666682 () Bool)

(assert (=> b!996414 (=> (not res!666682) (not e!562204))))

(assert (=> b!996414 (= res!666682 (validKeyInArray!0 k!2224))))

(declare-fun b!996415 () Bool)

(assert (=> b!996415 (= e!562203 false)))

(declare-fun lt!441206 () SeekEntryResult!9271)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63023 (_ BitVec 32)) SeekEntryResult!9271)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!996415 (= lt!441206 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30339 a!3219) j!170) mask!3464) (select (arr!30339 a!3219) j!170) a!3219 mask!3464))))

(declare-fun res!666683 () Bool)

(assert (=> start!86066 (=> (not res!666683) (not e!562204))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86066 (= res!666683 (validMask!0 mask!3464))))

(assert (=> start!86066 e!562204))

(declare-fun array_inv!23329 (array!63023) Bool)

(assert (=> start!86066 (array_inv!23329 a!3219)))

(assert (=> start!86066 true))

(declare-fun b!996416 () Bool)

(declare-fun res!666686 () Bool)

(assert (=> b!996416 (=> (not res!666686) (not e!562203))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(assert (=> b!996416 (= res!666686 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30842 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30842 a!3219))))))

(declare-fun b!996417 () Bool)

(declare-fun res!666685 () Bool)

(assert (=> b!996417 (=> (not res!666685) (not e!562203))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63023 (_ BitVec 32)) Bool)

(assert (=> b!996417 (= res!666685 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!996418 () Bool)

(declare-fun res!666684 () Bool)

(assert (=> b!996418 (=> (not res!666684) (not e!562203))))

(declare-datatypes ((List!21141 0))(
  ( (Nil!21138) (Cons!21137 (h!22302 (_ BitVec 64)) (t!30150 List!21141)) )
))
(declare-fun arrayNoDuplicates!0 (array!63023 (_ BitVec 32) List!21141) Bool)

(assert (=> b!996418 (= res!666684 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21138))))

(assert (= (and start!86066 res!666683) b!996412))

(assert (= (and b!996412 res!666688) b!996410))

(assert (= (and b!996410 res!666681) b!996414))

(assert (= (and b!996414 res!666682) b!996413))

(assert (= (and b!996413 res!666687) b!996411))

(assert (= (and b!996411 res!666680) b!996417))

(assert (= (and b!996417 res!666685) b!996418))

(assert (= (and b!996418 res!666684) b!996416))

(assert (= (and b!996416 res!666686) b!996415))

(declare-fun m!923621 () Bool)

(assert (=> b!996410 m!923621))

(assert (=> b!996410 m!923621))

(declare-fun m!923623 () Bool)

(assert (=> b!996410 m!923623))

(declare-fun m!923625 () Bool)

(assert (=> b!996417 m!923625))

(declare-fun m!923627 () Bool)

(assert (=> b!996414 m!923627))

(declare-fun m!923629 () Bool)

(assert (=> start!86066 m!923629))

(declare-fun m!923631 () Bool)

(assert (=> start!86066 m!923631))

(declare-fun m!923633 () Bool)

(assert (=> b!996418 m!923633))

(declare-fun m!923635 () Bool)

(assert (=> b!996413 m!923635))

(declare-fun m!923637 () Bool)

(assert (=> b!996411 m!923637))

(assert (=> b!996415 m!923621))

(assert (=> b!996415 m!923621))

(declare-fun m!923639 () Bool)

(assert (=> b!996415 m!923639))

(assert (=> b!996415 m!923639))

(assert (=> b!996415 m!923621))

(declare-fun m!923641 () Bool)

(assert (=> b!996415 m!923641))

(push 1)

(assert (not b!996418))

(assert (not b!996415))

(assert (not b!996417))

(assert (not b!996413))

(assert (not b!996414))

(assert (not b!996411))

(assert (not start!86066))

(assert (not b!996410))

