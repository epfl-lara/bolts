; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86326 () Bool)

(assert start!86326)

(declare-fun b!998709 () Bool)

(declare-fun res!668506 () Bool)

(declare-fun e!563216 () Bool)

(assert (=> b!998709 (=> (not res!668506) (not e!563216))))

(declare-datatypes ((array!63130 0))(
  ( (array!63131 (arr!30388 (Array (_ BitVec 32) (_ BitVec 64))) (size!30891 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63130)

(declare-datatypes ((List!21190 0))(
  ( (Nil!21187) (Cons!21186 (h!22360 (_ BitVec 64)) (t!30199 List!21190)) )
))
(declare-fun arrayNoDuplicates!0 (array!63130 (_ BitVec 32) List!21190) Bool)

(assert (=> b!998709 (= res!668506 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21187))))

(declare-fun b!998710 () Bool)

(declare-fun res!668502 () Bool)

(declare-fun e!563215 () Bool)

(assert (=> b!998710 (=> (not res!668502) (not e!563215))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63130 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!998710 (= res!668502 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!998711 () Bool)

(assert (=> b!998711 (= e!563215 e!563216)))

(declare-fun res!668511 () Bool)

(assert (=> b!998711 (=> (not res!668511) (not e!563216))))

(declare-datatypes ((SeekEntryResult!9320 0))(
  ( (MissingZero!9320 (index!39650 (_ BitVec 32))) (Found!9320 (index!39651 (_ BitVec 32))) (Intermediate!9320 (undefined!10132 Bool) (index!39652 (_ BitVec 32)) (x!87119 (_ BitVec 32))) (Undefined!9320) (MissingVacant!9320 (index!39653 (_ BitVec 32))) )
))
(declare-fun lt!441782 () SeekEntryResult!9320)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!998711 (= res!668511 (or (= lt!441782 (MissingVacant!9320 i!1194)) (= lt!441782 (MissingZero!9320 i!1194))))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63130 (_ BitVec 32)) SeekEntryResult!9320)

(assert (=> b!998711 (= lt!441782 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!998712 () Bool)

(declare-fun res!668507 () Bool)

(assert (=> b!998712 (=> (not res!668507) (not e!563215))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!998712 (= res!668507 (validKeyInArray!0 k!2224))))

(declare-fun b!998713 () Bool)

(declare-fun e!563213 () Bool)

(assert (=> b!998713 (= e!563213 (bvslt mask!3464 #b00000000000000000000000000000000))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun lt!441781 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!998713 (= lt!441781 (toIndex!0 (select (store (arr!30388 a!3219) i!1194 k!2224) j!170) mask!3464))))

(declare-fun b!998714 () Bool)

(declare-fun res!668505 () Bool)

(assert (=> b!998714 (=> (not res!668505) (not e!563213))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun lt!441783 () SeekEntryResult!9320)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63130 (_ BitVec 32)) SeekEntryResult!9320)

(assert (=> b!998714 (= res!668505 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30388 a!3219) j!170) a!3219 mask!3464) lt!441783))))

(declare-fun b!998715 () Bool)

(declare-fun res!668504 () Bool)

(assert (=> b!998715 (=> (not res!668504) (not e!563215))))

(assert (=> b!998715 (= res!668504 (and (= (size!30891 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30891 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30891 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!998716 () Bool)

(declare-fun res!668509 () Bool)

(assert (=> b!998716 (=> (not res!668509) (not e!563216))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63130 (_ BitVec 32)) Bool)

(assert (=> b!998716 (= res!668509 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun res!668503 () Bool)

(assert (=> start!86326 (=> (not res!668503) (not e!563215))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86326 (= res!668503 (validMask!0 mask!3464))))

(assert (=> start!86326 e!563215))

(declare-fun array_inv!23378 (array!63130) Bool)

(assert (=> start!86326 (array_inv!23378 a!3219)))

(assert (=> start!86326 true))

(declare-fun b!998717 () Bool)

(assert (=> b!998717 (= e!563216 e!563213)))

(declare-fun res!668512 () Bool)

(assert (=> b!998717 (=> (not res!668512) (not e!563213))))

(assert (=> b!998717 (= res!668512 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30388 a!3219) j!170) mask!3464) (select (arr!30388 a!3219) j!170) a!3219 mask!3464) lt!441783))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!998717 (= lt!441783 (Intermediate!9320 false resIndex!38 resX!38))))

(declare-fun b!998718 () Bool)

(declare-fun res!668508 () Bool)

(assert (=> b!998718 (=> (not res!668508) (not e!563215))))

(assert (=> b!998718 (= res!668508 (validKeyInArray!0 (select (arr!30388 a!3219) j!170)))))

(declare-fun b!998719 () Bool)

(declare-fun res!668510 () Bool)

(assert (=> b!998719 (=> (not res!668510) (not e!563216))))

(assert (=> b!998719 (= res!668510 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30891 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30891 a!3219))))))

(assert (= (and start!86326 res!668503) b!998715))

(assert (= (and b!998715 res!668504) b!998718))

(assert (= (and b!998718 res!668508) b!998712))

(assert (= (and b!998712 res!668507) b!998710))

(assert (= (and b!998710 res!668502) b!998711))

(assert (= (and b!998711 res!668511) b!998716))

(assert (= (and b!998716 res!668509) b!998709))

(assert (= (and b!998709 res!668506) b!998719))

(assert (= (and b!998719 res!668510) b!998717))

(assert (= (and b!998717 res!668512) b!998714))

(assert (= (and b!998714 res!668505) b!998713))

(declare-fun m!925215 () Bool)

(assert (=> b!998712 m!925215))

(declare-fun m!925217 () Bool)

(assert (=> b!998710 m!925217))

(declare-fun m!925219 () Bool)

(assert (=> b!998713 m!925219))

(declare-fun m!925221 () Bool)

(assert (=> b!998713 m!925221))

(assert (=> b!998713 m!925221))

(declare-fun m!925223 () Bool)

(assert (=> b!998713 m!925223))

(declare-fun m!925225 () Bool)

(assert (=> start!86326 m!925225))

(declare-fun m!925227 () Bool)

(assert (=> start!86326 m!925227))

(declare-fun m!925229 () Bool)

(assert (=> b!998717 m!925229))

(assert (=> b!998717 m!925229))

(declare-fun m!925231 () Bool)

(assert (=> b!998717 m!925231))

(assert (=> b!998717 m!925231))

(assert (=> b!998717 m!925229))

(declare-fun m!925233 () Bool)

(assert (=> b!998717 m!925233))

(assert (=> b!998714 m!925229))

(assert (=> b!998714 m!925229))

(declare-fun m!925235 () Bool)

(assert (=> b!998714 m!925235))

(assert (=> b!998718 m!925229))

(assert (=> b!998718 m!925229))

(declare-fun m!925237 () Bool)

(assert (=> b!998718 m!925237))

(declare-fun m!925239 () Bool)

(assert (=> b!998711 m!925239))

(declare-fun m!925241 () Bool)

(assert (=> b!998716 m!925241))

(declare-fun m!925243 () Bool)

(assert (=> b!998709 m!925243))

(push 1)

