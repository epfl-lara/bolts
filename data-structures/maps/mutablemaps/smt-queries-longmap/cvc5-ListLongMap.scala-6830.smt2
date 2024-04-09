; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86050 () Bool)

(assert start!86050)

(declare-fun b!996194 () Bool)

(declare-fun e!562133 () Bool)

(declare-fun e!562132 () Bool)

(assert (=> b!996194 (= e!562133 e!562132)))

(declare-fun res!666467 () Bool)

(assert (=> b!996194 (=> (not res!666467) (not e!562132))))

(declare-datatypes ((SeekEntryResult!9263 0))(
  ( (MissingZero!9263 (index!39422 (_ BitVec 32))) (Found!9263 (index!39423 (_ BitVec 32))) (Intermediate!9263 (undefined!10075 Bool) (index!39424 (_ BitVec 32)) (x!86892 (_ BitVec 32))) (Undefined!9263) (MissingVacant!9263 (index!39425 (_ BitVec 32))) )
))
(declare-fun lt!441159 () SeekEntryResult!9263)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!996194 (= res!666467 (or (= lt!441159 (MissingVacant!9263 i!1194)) (= lt!441159 (MissingZero!9263 i!1194))))))

(declare-datatypes ((array!63007 0))(
  ( (array!63008 (arr!30331 (Array (_ BitVec 32) (_ BitVec 64))) (size!30834 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63007)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63007 (_ BitVec 32)) SeekEntryResult!9263)

(assert (=> b!996194 (= lt!441159 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!996195 () Bool)

(declare-fun res!666465 () Bool)

(assert (=> b!996195 (=> (not res!666465) (not e!562133))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!996195 (= res!666465 (validKeyInArray!0 (select (arr!30331 a!3219) j!170)))))

(declare-fun b!996196 () Bool)

(declare-fun res!666471 () Bool)

(assert (=> b!996196 (=> (not res!666471) (not e!562132))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63007 (_ BitVec 32)) Bool)

(assert (=> b!996196 (= res!666471 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!996197 () Bool)

(assert (=> b!996197 (= e!562132 false)))

(declare-fun lt!441158 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!996197 (= lt!441158 (toIndex!0 (select (arr!30331 a!3219) j!170) mask!3464))))

(declare-fun b!996198 () Bool)

(declare-fun res!666466 () Bool)

(assert (=> b!996198 (=> (not res!666466) (not e!562133))))

(assert (=> b!996198 (= res!666466 (validKeyInArray!0 k!2224))))

(declare-fun b!996199 () Bool)

(declare-fun res!666472 () Bool)

(assert (=> b!996199 (=> (not res!666472) (not e!562133))))

(declare-fun arrayContainsKey!0 (array!63007 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!996199 (= res!666472 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun res!666470 () Bool)

(assert (=> start!86050 (=> (not res!666470) (not e!562133))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86050 (= res!666470 (validMask!0 mask!3464))))

(assert (=> start!86050 e!562133))

(declare-fun array_inv!23321 (array!63007) Bool)

(assert (=> start!86050 (array_inv!23321 a!3219)))

(assert (=> start!86050 true))

(declare-fun b!996200 () Bool)

(declare-fun res!666468 () Bool)

(assert (=> b!996200 (=> (not res!666468) (not e!562132))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!996200 (= res!666468 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30834 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30834 a!3219))))))

(declare-fun b!996201 () Bool)

(declare-fun res!666464 () Bool)

(assert (=> b!996201 (=> (not res!666464) (not e!562133))))

(assert (=> b!996201 (= res!666464 (and (= (size!30834 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30834 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30834 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!996202 () Bool)

(declare-fun res!666469 () Bool)

(assert (=> b!996202 (=> (not res!666469) (not e!562132))))

(declare-datatypes ((List!21133 0))(
  ( (Nil!21130) (Cons!21129 (h!22294 (_ BitVec 64)) (t!30142 List!21133)) )
))
(declare-fun arrayNoDuplicates!0 (array!63007 (_ BitVec 32) List!21133) Bool)

(assert (=> b!996202 (= res!666469 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21130))))

(assert (= (and start!86050 res!666470) b!996201))

(assert (= (and b!996201 res!666464) b!996195))

(assert (= (and b!996195 res!666465) b!996198))

(assert (= (and b!996198 res!666466) b!996199))

(assert (= (and b!996199 res!666472) b!996194))

(assert (= (and b!996194 res!666467) b!996196))

(assert (= (and b!996196 res!666471) b!996202))

(assert (= (and b!996202 res!666469) b!996200))

(assert (= (and b!996200 res!666468) b!996197))

(declare-fun m!923457 () Bool)

(assert (=> b!996195 m!923457))

(assert (=> b!996195 m!923457))

(declare-fun m!923459 () Bool)

(assert (=> b!996195 m!923459))

(assert (=> b!996197 m!923457))

(assert (=> b!996197 m!923457))

(declare-fun m!923461 () Bool)

(assert (=> b!996197 m!923461))

(declare-fun m!923463 () Bool)

(assert (=> start!86050 m!923463))

(declare-fun m!923465 () Bool)

(assert (=> start!86050 m!923465))

(declare-fun m!923467 () Bool)

(assert (=> b!996196 m!923467))

(declare-fun m!923469 () Bool)

(assert (=> b!996202 m!923469))

(declare-fun m!923471 () Bool)

(assert (=> b!996198 m!923471))

(declare-fun m!923473 () Bool)

(assert (=> b!996194 m!923473))

(declare-fun m!923475 () Bool)

(assert (=> b!996199 m!923475))

(push 1)

