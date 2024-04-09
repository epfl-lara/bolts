; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86812 () Bool)

(assert start!86812)

(declare-fun b!1005999 () Bool)

(declare-fun res!675251 () Bool)

(declare-fun e!566353 () Bool)

(assert (=> b!1005999 (=> (not res!675251) (not e!566353))))

(declare-datatypes ((array!63463 0))(
  ( (array!63464 (arr!30550 (Array (_ BitVec 32) (_ BitVec 64))) (size!31053 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63463)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1005999 (= res!675251 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31053 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31053 a!3219))))))

(declare-fun b!1006000 () Bool)

(declare-fun res!675247 () Bool)

(declare-fun e!566354 () Bool)

(assert (=> b!1006000 (=> (not res!675247) (not e!566354))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1006000 (= res!675247 (validKeyInArray!0 (select (arr!30550 a!3219) j!170)))))

(declare-fun b!1006001 () Bool)

(declare-fun e!566352 () Bool)

(assert (=> b!1006001 (= e!566352 false)))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun lt!444651 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1006001 (= lt!444651 (toIndex!0 (select (store (arr!30550 a!3219) i!1194 k!2224) j!170) mask!3464))))

(declare-fun b!1006002 () Bool)

(assert (=> b!1006002 (= e!566354 e!566353)))

(declare-fun res!675243 () Bool)

(assert (=> b!1006002 (=> (not res!675243) (not e!566353))))

(declare-datatypes ((SeekEntryResult!9482 0))(
  ( (MissingZero!9482 (index!40298 (_ BitVec 32))) (Found!9482 (index!40299 (_ BitVec 32))) (Intermediate!9482 (undefined!10294 Bool) (index!40300 (_ BitVec 32)) (x!87731 (_ BitVec 32))) (Undefined!9482) (MissingVacant!9482 (index!40301 (_ BitVec 32))) )
))
(declare-fun lt!444649 () SeekEntryResult!9482)

(assert (=> b!1006002 (= res!675243 (or (= lt!444649 (MissingVacant!9482 i!1194)) (= lt!444649 (MissingZero!9482 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63463 (_ BitVec 32)) SeekEntryResult!9482)

(assert (=> b!1006002 (= lt!444649 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1006003 () Bool)

(declare-fun res!675252 () Bool)

(assert (=> b!1006003 (=> (not res!675252) (not e!566352))))

(declare-fun lt!444650 () SeekEntryResult!9482)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63463 (_ BitVec 32)) SeekEntryResult!9482)

(assert (=> b!1006003 (= res!675252 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30550 a!3219) j!170) a!3219 mask!3464) lt!444650))))

(declare-fun b!1006004 () Bool)

(declare-fun res!675248 () Bool)

(assert (=> b!1006004 (=> (not res!675248) (not e!566353))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63463 (_ BitVec 32)) Bool)

(assert (=> b!1006004 (= res!675248 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1006005 () Bool)

(declare-fun res!675245 () Bool)

(assert (=> b!1006005 (=> (not res!675245) (not e!566354))))

(declare-fun arrayContainsKey!0 (array!63463 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1006005 (= res!675245 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1006006 () Bool)

(declare-fun res!675244 () Bool)

(assert (=> b!1006006 (=> (not res!675244) (not e!566354))))

(assert (=> b!1006006 (= res!675244 (and (= (size!31053 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31053 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31053 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1006007 () Bool)

(declare-fun res!675246 () Bool)

(assert (=> b!1006007 (=> (not res!675246) (not e!566353))))

(declare-datatypes ((List!21352 0))(
  ( (Nil!21349) (Cons!21348 (h!22531 (_ BitVec 64)) (t!30361 List!21352)) )
))
(declare-fun arrayNoDuplicates!0 (array!63463 (_ BitVec 32) List!21352) Bool)

(assert (=> b!1006007 (= res!675246 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21349))))

(declare-fun res!675253 () Bool)

(assert (=> start!86812 (=> (not res!675253) (not e!566354))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86812 (= res!675253 (validMask!0 mask!3464))))

(assert (=> start!86812 e!566354))

(declare-fun array_inv!23540 (array!63463) Bool)

(assert (=> start!86812 (array_inv!23540 a!3219)))

(assert (=> start!86812 true))

(declare-fun b!1006008 () Bool)

(declare-fun res!675250 () Bool)

(assert (=> b!1006008 (=> (not res!675250) (not e!566354))))

(assert (=> b!1006008 (= res!675250 (validKeyInArray!0 k!2224))))

(declare-fun b!1006009 () Bool)

(assert (=> b!1006009 (= e!566353 e!566352)))

(declare-fun res!675249 () Bool)

(assert (=> b!1006009 (=> (not res!675249) (not e!566352))))

(assert (=> b!1006009 (= res!675249 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30550 a!3219) j!170) mask!3464) (select (arr!30550 a!3219) j!170) a!3219 mask!3464) lt!444650))))

(assert (=> b!1006009 (= lt!444650 (Intermediate!9482 false resIndex!38 resX!38))))

(assert (= (and start!86812 res!675253) b!1006006))

(assert (= (and b!1006006 res!675244) b!1006000))

(assert (= (and b!1006000 res!675247) b!1006008))

(assert (= (and b!1006008 res!675250) b!1006005))

(assert (= (and b!1006005 res!675245) b!1006002))

(assert (= (and b!1006002 res!675243) b!1006004))

(assert (= (and b!1006004 res!675248) b!1006007))

(assert (= (and b!1006007 res!675246) b!1005999))

(assert (= (and b!1005999 res!675251) b!1006009))

(assert (= (and b!1006009 res!675249) b!1006003))

(assert (= (and b!1006003 res!675252) b!1006001))

(declare-fun m!931227 () Bool)

(assert (=> b!1006000 m!931227))

(assert (=> b!1006000 m!931227))

(declare-fun m!931229 () Bool)

(assert (=> b!1006000 m!931229))

(declare-fun m!931231 () Bool)

(assert (=> b!1006005 m!931231))

(declare-fun m!931233 () Bool)

(assert (=> start!86812 m!931233))

(declare-fun m!931235 () Bool)

(assert (=> start!86812 m!931235))

(declare-fun m!931237 () Bool)

(assert (=> b!1006008 m!931237))

(declare-fun m!931239 () Bool)

(assert (=> b!1006007 m!931239))

(declare-fun m!931241 () Bool)

(assert (=> b!1006002 m!931241))

(assert (=> b!1006003 m!931227))

(assert (=> b!1006003 m!931227))

(declare-fun m!931243 () Bool)

(assert (=> b!1006003 m!931243))

(declare-fun m!931245 () Bool)

(assert (=> b!1006001 m!931245))

(declare-fun m!931247 () Bool)

(assert (=> b!1006001 m!931247))

(assert (=> b!1006001 m!931247))

(declare-fun m!931249 () Bool)

(assert (=> b!1006001 m!931249))

(declare-fun m!931251 () Bool)

(assert (=> b!1006004 m!931251))

(assert (=> b!1006009 m!931227))

(assert (=> b!1006009 m!931227))

(declare-fun m!931253 () Bool)

(assert (=> b!1006009 m!931253))

(assert (=> b!1006009 m!931253))

(assert (=> b!1006009 m!931227))

(declare-fun m!931255 () Bool)

(assert (=> b!1006009 m!931255))

(push 1)

