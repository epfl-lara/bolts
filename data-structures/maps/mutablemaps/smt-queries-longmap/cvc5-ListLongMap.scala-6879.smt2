; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86560 () Bool)

(assert start!86560)

(declare-fun b!1002499 () Bool)

(declare-fun res!672140 () Bool)

(declare-fun e!564786 () Bool)

(assert (=> b!1002499 (=> (not res!672140) (not e!564786))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1002499 (= res!672140 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1002500 () Bool)

(declare-fun e!564784 () Bool)

(assert (=> b!1002500 (= e!564784 e!564786)))

(declare-fun res!672134 () Bool)

(assert (=> b!1002500 (=> (not res!672134) (not e!564786))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-datatypes ((array!63313 0))(
  ( (array!63314 (arr!30478 (Array (_ BitVec 32) (_ BitVec 64))) (size!30981 (_ BitVec 32))) )
))
(declare-fun lt!443221 () array!63313)

(declare-fun lt!443219 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!9410 0))(
  ( (MissingZero!9410 (index!40010 (_ BitVec 32))) (Found!9410 (index!40011 (_ BitVec 32))) (Intermediate!9410 (undefined!10222 Bool) (index!40012 (_ BitVec 32)) (x!87455 (_ BitVec 32))) (Undefined!9410) (MissingVacant!9410 (index!40013 (_ BitVec 32))) )
))
(declare-fun lt!443218 () SeekEntryResult!9410)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63313 (_ BitVec 32)) SeekEntryResult!9410)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1002500 (= res!672134 (not (= lt!443218 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!443219 mask!3464) lt!443219 lt!443221 mask!3464))))))

(declare-fun a!3219 () array!63313)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(assert (=> b!1002500 (= lt!443219 (select (store (arr!30478 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1002500 (= lt!443221 (array!63314 (store (arr!30478 a!3219) i!1194 k!2224) (size!30981 a!3219)))))

(declare-fun b!1002502 () Bool)

(declare-fun res!672137 () Bool)

(declare-fun e!564787 () Bool)

(assert (=> b!1002502 (=> (not res!672137) (not e!564787))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1002502 (= res!672137 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30981 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30981 a!3219))))))

(declare-fun b!1002503 () Bool)

(declare-fun e!564783 () Bool)

(assert (=> b!1002503 (= e!564783 false)))

(declare-fun lt!443223 () SeekEntryResult!9410)

(declare-fun lt!443220 () (_ BitVec 32))

(assert (=> b!1002503 (= lt!443223 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443220 lt!443219 lt!443221 mask!3464))))

(declare-fun b!1002504 () Bool)

(declare-fun res!672145 () Bool)

(declare-fun e!564785 () Bool)

(assert (=> b!1002504 (=> (not res!672145) (not e!564785))))

(assert (=> b!1002504 (= res!672145 (and (= (size!30981 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30981 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30981 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1002505 () Bool)

(declare-fun res!672133 () Bool)

(assert (=> b!1002505 (=> (not res!672133) (not e!564787))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63313 (_ BitVec 32)) Bool)

(assert (=> b!1002505 (= res!672133 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1002506 () Bool)

(declare-fun res!672143 () Bool)

(assert (=> b!1002506 (=> (not res!672143) (not e!564785))))

(declare-fun arrayContainsKey!0 (array!63313 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1002506 (= res!672143 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1002507 () Bool)

(assert (=> b!1002507 (= e!564785 e!564787)))

(declare-fun res!672142 () Bool)

(assert (=> b!1002507 (=> (not res!672142) (not e!564787))))

(declare-fun lt!443217 () SeekEntryResult!9410)

(assert (=> b!1002507 (= res!672142 (or (= lt!443217 (MissingVacant!9410 i!1194)) (= lt!443217 (MissingZero!9410 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63313 (_ BitVec 32)) SeekEntryResult!9410)

(assert (=> b!1002507 (= lt!443217 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1002508 () Bool)

(declare-fun e!564788 () Bool)

(assert (=> b!1002508 (= e!564788 e!564784)))

(declare-fun res!672146 () Bool)

(assert (=> b!1002508 (=> (not res!672146) (not e!564784))))

(declare-fun lt!443222 () SeekEntryResult!9410)

(declare-fun lt!443216 () SeekEntryResult!9410)

(assert (=> b!1002508 (= res!672146 (= lt!443222 lt!443216))))

(assert (=> b!1002508 (= lt!443222 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30478 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1002501 () Bool)

(declare-fun res!672148 () Bool)

(assert (=> b!1002501 (=> (not res!672148) (not e!564786))))

(assert (=> b!1002501 (= res!672148 (not (= lt!443222 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!443219 lt!443221 mask!3464))))))

(declare-fun res!672141 () Bool)

(assert (=> start!86560 (=> (not res!672141) (not e!564785))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86560 (= res!672141 (validMask!0 mask!3464))))

(assert (=> start!86560 e!564785))

(declare-fun array_inv!23468 (array!63313) Bool)

(assert (=> start!86560 (array_inv!23468 a!3219)))

(assert (=> start!86560 true))

(declare-fun b!1002509 () Bool)

(assert (=> b!1002509 (= e!564787 e!564788)))

(declare-fun res!672136 () Bool)

(assert (=> b!1002509 (=> (not res!672136) (not e!564788))))

(assert (=> b!1002509 (= res!672136 (= lt!443218 lt!443216))))

(assert (=> b!1002509 (= lt!443216 (Intermediate!9410 false resIndex!38 resX!38))))

(assert (=> b!1002509 (= lt!443218 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30478 a!3219) j!170) mask!3464) (select (arr!30478 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1002510 () Bool)

(declare-fun res!672135 () Bool)

(assert (=> b!1002510 (=> (not res!672135) (not e!564783))))

(assert (=> b!1002510 (= res!672135 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443220 (select (arr!30478 a!3219) j!170) a!3219 mask!3464) lt!443216))))

(declare-fun b!1002511 () Bool)

(declare-fun res!672147 () Bool)

(assert (=> b!1002511 (=> (not res!672147) (not e!564785))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1002511 (= res!672147 (validKeyInArray!0 k!2224))))

(declare-fun b!1002512 () Bool)

(declare-fun res!672139 () Bool)

(assert (=> b!1002512 (=> (not res!672139) (not e!564787))))

(declare-datatypes ((List!21280 0))(
  ( (Nil!21277) (Cons!21276 (h!22453 (_ BitVec 64)) (t!30289 List!21280)) )
))
(declare-fun arrayNoDuplicates!0 (array!63313 (_ BitVec 32) List!21280) Bool)

(assert (=> b!1002512 (= res!672139 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21277))))

(declare-fun b!1002513 () Bool)

(assert (=> b!1002513 (= e!564786 e!564783)))

(declare-fun res!672138 () Bool)

(assert (=> b!1002513 (=> (not res!672138) (not e!564783))))

(assert (=> b!1002513 (= res!672138 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!443220 #b00000000000000000000000000000000) (bvslt lt!443220 (size!30981 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1002513 (= lt!443220 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1002514 () Bool)

(declare-fun res!672144 () Bool)

(assert (=> b!1002514 (=> (not res!672144) (not e!564785))))

(assert (=> b!1002514 (= res!672144 (validKeyInArray!0 (select (arr!30478 a!3219) j!170)))))

(assert (= (and start!86560 res!672141) b!1002504))

(assert (= (and b!1002504 res!672145) b!1002514))

(assert (= (and b!1002514 res!672144) b!1002511))

(assert (= (and b!1002511 res!672147) b!1002506))

(assert (= (and b!1002506 res!672143) b!1002507))

(assert (= (and b!1002507 res!672142) b!1002505))

(assert (= (and b!1002505 res!672133) b!1002512))

(assert (= (and b!1002512 res!672139) b!1002502))

(assert (= (and b!1002502 res!672137) b!1002509))

(assert (= (and b!1002509 res!672136) b!1002508))

(assert (= (and b!1002508 res!672146) b!1002500))

(assert (= (and b!1002500 res!672134) b!1002501))

(assert (= (and b!1002501 res!672148) b!1002499))

(assert (= (and b!1002499 res!672140) b!1002513))

(assert (= (and b!1002513 res!672138) b!1002510))

(assert (= (and b!1002510 res!672135) b!1002503))

(declare-fun m!928461 () Bool)

(assert (=> b!1002514 m!928461))

(assert (=> b!1002514 m!928461))

(declare-fun m!928463 () Bool)

(assert (=> b!1002514 m!928463))

(declare-fun m!928465 () Bool)

(assert (=> b!1002512 m!928465))

(declare-fun m!928467 () Bool)

(assert (=> b!1002506 m!928467))

(declare-fun m!928469 () Bool)

(assert (=> b!1002503 m!928469))

(declare-fun m!928471 () Bool)

(assert (=> b!1002507 m!928471))

(declare-fun m!928473 () Bool)

(assert (=> b!1002511 m!928473))

(declare-fun m!928475 () Bool)

(assert (=> start!86560 m!928475))

(declare-fun m!928477 () Bool)

(assert (=> start!86560 m!928477))

(assert (=> b!1002510 m!928461))

(assert (=> b!1002510 m!928461))

(declare-fun m!928479 () Bool)

(assert (=> b!1002510 m!928479))

(declare-fun m!928481 () Bool)

(assert (=> b!1002505 m!928481))

(declare-fun m!928483 () Bool)

(assert (=> b!1002500 m!928483))

(assert (=> b!1002500 m!928483))

(declare-fun m!928485 () Bool)

(assert (=> b!1002500 m!928485))

(declare-fun m!928487 () Bool)

(assert (=> b!1002500 m!928487))

(declare-fun m!928489 () Bool)

(assert (=> b!1002500 m!928489))

(assert (=> b!1002508 m!928461))

(assert (=> b!1002508 m!928461))

(declare-fun m!928491 () Bool)

(assert (=> b!1002508 m!928491))

(declare-fun m!928493 () Bool)

(assert (=> b!1002501 m!928493))

(assert (=> b!1002509 m!928461))

(assert (=> b!1002509 m!928461))

(declare-fun m!928495 () Bool)

(assert (=> b!1002509 m!928495))

(assert (=> b!1002509 m!928495))

(assert (=> b!1002509 m!928461))

(declare-fun m!928497 () Bool)

(assert (=> b!1002509 m!928497))

(declare-fun m!928499 () Bool)

(assert (=> b!1002513 m!928499))

(push 1)

