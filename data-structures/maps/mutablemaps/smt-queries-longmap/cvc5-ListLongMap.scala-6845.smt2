; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86248 () Bool)

(assert start!86248)

(declare-fun b!998059 () Bool)

(declare-fun res!668013 () Bool)

(declare-fun e!562908 () Bool)

(assert (=> b!998059 (=> (not res!668013) (not e!562908))))

(declare-datatypes ((array!63103 0))(
  ( (array!63104 (arr!30376 (Array (_ BitVec 32) (_ BitVec 64))) (size!30879 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63103)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!998059 (= res!668013 (validKeyInArray!0 (select (arr!30376 a!3219) j!170)))))

(declare-fun b!998060 () Bool)

(declare-fun res!668012 () Bool)

(declare-fun e!562909 () Bool)

(assert (=> b!998060 (=> (not res!668012) (not e!562909))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9308 0))(
  ( (MissingZero!9308 (index!39602 (_ BitVec 32))) (Found!9308 (index!39603 (_ BitVec 32))) (Intermediate!9308 (undefined!10120 Bool) (index!39604 (_ BitVec 32)) (x!87069 (_ BitVec 32))) (Undefined!9308) (MissingVacant!9308 (index!39605 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63103 (_ BitVec 32)) SeekEntryResult!9308)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!998060 (= res!668012 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30376 a!3219) j!170) mask!3464) (select (arr!30376 a!3219) j!170) a!3219 mask!3464) (Intermediate!9308 false resIndex!38 resX!38)))))

(declare-fun res!668018 () Bool)

(assert (=> start!86248 (=> (not res!668018) (not e!562908))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86248 (= res!668018 (validMask!0 mask!3464))))

(assert (=> start!86248 e!562908))

(declare-fun array_inv!23366 (array!63103) Bool)

(assert (=> start!86248 (array_inv!23366 a!3219)))

(assert (=> start!86248 true))

(declare-fun b!998061 () Bool)

(declare-fun res!668019 () Bool)

(assert (=> b!998061 (=> (not res!668019) (not e!562909))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!998061 (= res!668019 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30879 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30879 a!3219))))))

(declare-fun b!998062 () Bool)

(declare-fun res!668020 () Bool)

(assert (=> b!998062 (=> (not res!668020) (not e!562908))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!998062 (= res!668020 (and (= (size!30879 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30879 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30879 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!998063 () Bool)

(declare-fun res!668014 () Bool)

(assert (=> b!998063 (=> (not res!668014) (not e!562909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63103 (_ BitVec 32)) Bool)

(assert (=> b!998063 (= res!668014 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!998064 () Bool)

(assert (=> b!998064 (= e!562908 e!562909)))

(declare-fun res!668016 () Bool)

(assert (=> b!998064 (=> (not res!668016) (not e!562909))))

(declare-fun lt!441602 () SeekEntryResult!9308)

(assert (=> b!998064 (= res!668016 (or (= lt!441602 (MissingVacant!9308 i!1194)) (= lt!441602 (MissingZero!9308 i!1194))))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63103 (_ BitVec 32)) SeekEntryResult!9308)

(assert (=> b!998064 (= lt!441602 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!998065 () Bool)

(assert (=> b!998065 (= e!562909 false)))

(declare-fun lt!441603 () SeekEntryResult!9308)

(assert (=> b!998065 (= lt!441603 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30376 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!998066 () Bool)

(declare-fun res!668017 () Bool)

(assert (=> b!998066 (=> (not res!668017) (not e!562908))))

(declare-fun arrayContainsKey!0 (array!63103 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!998066 (= res!668017 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!998067 () Bool)

(declare-fun res!668011 () Bool)

(assert (=> b!998067 (=> (not res!668011) (not e!562908))))

(assert (=> b!998067 (= res!668011 (validKeyInArray!0 k!2224))))

(declare-fun b!998068 () Bool)

(declare-fun res!668015 () Bool)

(assert (=> b!998068 (=> (not res!668015) (not e!562909))))

(declare-datatypes ((List!21178 0))(
  ( (Nil!21175) (Cons!21174 (h!22345 (_ BitVec 64)) (t!30187 List!21178)) )
))
(declare-fun arrayNoDuplicates!0 (array!63103 (_ BitVec 32) List!21178) Bool)

(assert (=> b!998068 (= res!668015 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21175))))

(assert (= (and start!86248 res!668018) b!998062))

(assert (= (and b!998062 res!668020) b!998059))

(assert (= (and b!998059 res!668013) b!998067))

(assert (= (and b!998067 res!668011) b!998066))

(assert (= (and b!998066 res!668017) b!998064))

(assert (= (and b!998064 res!668016) b!998063))

(assert (= (and b!998063 res!668014) b!998068))

(assert (= (and b!998068 res!668015) b!998061))

(assert (= (and b!998061 res!668019) b!998060))

(assert (= (and b!998060 res!668012) b!998065))

(declare-fun m!924765 () Bool)

(assert (=> b!998059 m!924765))

(assert (=> b!998059 m!924765))

(declare-fun m!924767 () Bool)

(assert (=> b!998059 m!924767))

(assert (=> b!998065 m!924765))

(assert (=> b!998065 m!924765))

(declare-fun m!924769 () Bool)

(assert (=> b!998065 m!924769))

(assert (=> b!998060 m!924765))

(assert (=> b!998060 m!924765))

(declare-fun m!924771 () Bool)

(assert (=> b!998060 m!924771))

(assert (=> b!998060 m!924771))

(assert (=> b!998060 m!924765))

(declare-fun m!924773 () Bool)

(assert (=> b!998060 m!924773))

(declare-fun m!924775 () Bool)

(assert (=> b!998068 m!924775))

(declare-fun m!924777 () Bool)

(assert (=> b!998066 m!924777))

(declare-fun m!924779 () Bool)

(assert (=> b!998064 m!924779))

(declare-fun m!924781 () Bool)

(assert (=> b!998063 m!924781))

(declare-fun m!924783 () Bool)

(assert (=> start!86248 m!924783))

(declare-fun m!924785 () Bool)

(assert (=> start!86248 m!924785))

(declare-fun m!924787 () Bool)

(assert (=> b!998067 m!924787))

(push 1)

