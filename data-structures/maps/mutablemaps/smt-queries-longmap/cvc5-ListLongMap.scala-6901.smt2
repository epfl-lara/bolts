; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86800 () Bool)

(assert start!86800)

(declare-fun b!1005808 () Bool)

(declare-fun res!675054 () Bool)

(declare-fun e!566286 () Bool)

(assert (=> b!1005808 (=> (not res!675054) (not e!566286))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1005808 (= res!675054 (validKeyInArray!0 k!2224))))

(declare-fun b!1005809 () Bool)

(declare-fun e!566288 () Bool)

(assert (=> b!1005809 (= e!566288 false)))

(declare-datatypes ((array!63451 0))(
  ( (array!63452 (arr!30544 (Array (_ BitVec 32) (_ BitVec 64))) (size!31047 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63451)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9476 0))(
  ( (MissingZero!9476 (index!40274 (_ BitVec 32))) (Found!9476 (index!40275 (_ BitVec 32))) (Intermediate!9476 (undefined!10288 Bool) (index!40276 (_ BitVec 32)) (x!87709 (_ BitVec 32))) (Undefined!9476) (MissingVacant!9476 (index!40277 (_ BitVec 32))) )
))
(declare-fun lt!444602 () SeekEntryResult!9476)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63451 (_ BitVec 32)) SeekEntryResult!9476)

(assert (=> b!1005809 (= lt!444602 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30544 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1005810 () Bool)

(declare-fun res!675059 () Bool)

(assert (=> b!1005810 (=> (not res!675059) (not e!566288))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1005810 (= res!675059 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31047 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31047 a!3219))))))

(declare-fun b!1005812 () Bool)

(declare-fun res!675052 () Bool)

(assert (=> b!1005812 (=> (not res!675052) (not e!566286))))

(assert (=> b!1005812 (= res!675052 (validKeyInArray!0 (select (arr!30544 a!3219) j!170)))))

(declare-fun b!1005813 () Bool)

(declare-fun res!675057 () Bool)

(assert (=> b!1005813 (=> (not res!675057) (not e!566286))))

(declare-fun arrayContainsKey!0 (array!63451 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1005813 (= res!675057 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1005814 () Bool)

(declare-fun res!675055 () Bool)

(assert (=> b!1005814 (=> (not res!675055) (not e!566286))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1005814 (= res!675055 (and (= (size!31047 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31047 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31047 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1005815 () Bool)

(declare-fun res!675058 () Bool)

(assert (=> b!1005815 (=> (not res!675058) (not e!566288))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63451 (_ BitVec 32)) Bool)

(assert (=> b!1005815 (= res!675058 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1005816 () Bool)

(declare-fun res!675056 () Bool)

(assert (=> b!1005816 (=> (not res!675056) (not e!566288))))

(declare-datatypes ((List!21346 0))(
  ( (Nil!21343) (Cons!21342 (h!22525 (_ BitVec 64)) (t!30355 List!21346)) )
))
(declare-fun arrayNoDuplicates!0 (array!63451 (_ BitVec 32) List!21346) Bool)

(assert (=> b!1005816 (= res!675056 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21343))))

(declare-fun b!1005817 () Bool)

(assert (=> b!1005817 (= e!566286 e!566288)))

(declare-fun res!675053 () Bool)

(assert (=> b!1005817 (=> (not res!675053) (not e!566288))))

(declare-fun lt!444603 () SeekEntryResult!9476)

(assert (=> b!1005817 (= res!675053 (or (= lt!444603 (MissingVacant!9476 i!1194)) (= lt!444603 (MissingZero!9476 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63451 (_ BitVec 32)) SeekEntryResult!9476)

(assert (=> b!1005817 (= lt!444603 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun res!675060 () Bool)

(assert (=> start!86800 (=> (not res!675060) (not e!566286))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86800 (= res!675060 (validMask!0 mask!3464))))

(assert (=> start!86800 e!566286))

(declare-fun array_inv!23534 (array!63451) Bool)

(assert (=> start!86800 (array_inv!23534 a!3219)))

(assert (=> start!86800 true))

(declare-fun b!1005811 () Bool)

(declare-fun res!675061 () Bool)

(assert (=> b!1005811 (=> (not res!675061) (not e!566288))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1005811 (= res!675061 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30544 a!3219) j!170) mask!3464) (select (arr!30544 a!3219) j!170) a!3219 mask!3464) (Intermediate!9476 false resIndex!38 resX!38)))))

(assert (= (and start!86800 res!675060) b!1005814))

(assert (= (and b!1005814 res!675055) b!1005812))

(assert (= (and b!1005812 res!675052) b!1005808))

(assert (= (and b!1005808 res!675054) b!1005813))

(assert (= (and b!1005813 res!675057) b!1005817))

(assert (= (and b!1005817 res!675053) b!1005815))

(assert (= (and b!1005815 res!675058) b!1005816))

(assert (= (and b!1005816 res!675056) b!1005810))

(assert (= (and b!1005810 res!675059) b!1005811))

(assert (= (and b!1005811 res!675061) b!1005809))

(declare-fun m!931065 () Bool)

(assert (=> b!1005817 m!931065))

(declare-fun m!931067 () Bool)

(assert (=> b!1005809 m!931067))

(assert (=> b!1005809 m!931067))

(declare-fun m!931069 () Bool)

(assert (=> b!1005809 m!931069))

(declare-fun m!931071 () Bool)

(assert (=> b!1005808 m!931071))

(assert (=> b!1005812 m!931067))

(assert (=> b!1005812 m!931067))

(declare-fun m!931073 () Bool)

(assert (=> b!1005812 m!931073))

(declare-fun m!931075 () Bool)

(assert (=> b!1005815 m!931075))

(assert (=> b!1005811 m!931067))

(assert (=> b!1005811 m!931067))

(declare-fun m!931077 () Bool)

(assert (=> b!1005811 m!931077))

(assert (=> b!1005811 m!931077))

(assert (=> b!1005811 m!931067))

(declare-fun m!931079 () Bool)

(assert (=> b!1005811 m!931079))

(declare-fun m!931081 () Bool)

(assert (=> b!1005816 m!931081))

(declare-fun m!931083 () Bool)

(assert (=> b!1005813 m!931083))

(declare-fun m!931085 () Bool)

(assert (=> start!86800 m!931085))

(declare-fun m!931087 () Bool)

(assert (=> start!86800 m!931087))

(push 1)

