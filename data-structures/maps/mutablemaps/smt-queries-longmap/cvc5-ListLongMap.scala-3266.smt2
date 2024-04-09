; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45478 () Bool)

(assert start!45478)

(declare-fun b!500298 () Bool)

(declare-fun res!302270 () Bool)

(declare-fun e!293129 () Bool)

(assert (=> b!500298 (=> (not res!302270) (not e!293129))))

(declare-datatypes ((array!32263 0))(
  ( (array!32264 (arr!15510 (Array (_ BitVec 32) (_ BitVec 64))) (size!15874 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32263)

(declare-datatypes ((List!9721 0))(
  ( (Nil!9718) (Cons!9717 (h!10591 (_ BitVec 64)) (t!15957 List!9721)) )
))
(declare-fun arrayNoDuplicates!0 (array!32263 (_ BitVec 32) List!9721) Bool)

(assert (=> b!500298 (= res!302270 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9718))))

(declare-fun res!302271 () Bool)

(declare-fun e!293124 () Bool)

(assert (=> start!45478 (=> (not res!302271) (not e!293124))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45478 (= res!302271 (validMask!0 mask!3524))))

(assert (=> start!45478 e!293124))

(assert (=> start!45478 true))

(declare-fun array_inv!11284 (array!32263) Bool)

(assert (=> start!45478 (array_inv!11284 a!3235)))

(declare-fun b!500299 () Bool)

(declare-fun res!302279 () Bool)

(assert (=> b!500299 (=> (not res!302279) (not e!293124))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!500299 (= res!302279 (and (= (size!15874 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15874 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15874 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!500300 () Bool)

(declare-fun res!302277 () Bool)

(declare-fun e!293128 () Bool)

(assert (=> b!500300 (=> res!302277 e!293128)))

(declare-datatypes ((SeekEntryResult!3984 0))(
  ( (MissingZero!3984 (index!18118 (_ BitVec 32))) (Found!3984 (index!18119 (_ BitVec 32))) (Intermediate!3984 (undefined!4796 Bool) (index!18120 (_ BitVec 32)) (x!47184 (_ BitVec 32))) (Undefined!3984) (MissingVacant!3984 (index!18121 (_ BitVec 32))) )
))
(declare-fun lt!227115 () SeekEntryResult!3984)

(assert (=> b!500300 (= res!302277 (or (undefined!4796 lt!227115) (not (is-Intermediate!3984 lt!227115))))))

(declare-fun b!500301 () Bool)

(declare-fun res!302278 () Bool)

(assert (=> b!500301 (=> (not res!302278) (not e!293124))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32263 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!500301 (= res!302278 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!500302 () Bool)

(assert (=> b!500302 (= e!293129 (not e!293128))))

(declare-fun res!302273 () Bool)

(assert (=> b!500302 (=> res!302273 e!293128)))

(declare-fun lt!227120 () array!32263)

(declare-fun lt!227112 () (_ BitVec 32))

(declare-fun lt!227118 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32263 (_ BitVec 32)) SeekEntryResult!3984)

(assert (=> b!500302 (= res!302273 (= lt!227115 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227112 lt!227118 lt!227120 mask!3524)))))

(declare-fun lt!227113 () (_ BitVec 32))

(assert (=> b!500302 (= lt!227115 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227113 (select (arr!15510 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!500302 (= lt!227112 (toIndex!0 lt!227118 mask!3524))))

(assert (=> b!500302 (= lt!227118 (select (store (arr!15510 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!500302 (= lt!227113 (toIndex!0 (select (arr!15510 a!3235) j!176) mask!3524))))

(assert (=> b!500302 (= lt!227120 (array!32264 (store (arr!15510 a!3235) i!1204 k!2280) (size!15874 a!3235)))))

(declare-fun e!293130 () Bool)

(assert (=> b!500302 e!293130))

(declare-fun res!302274 () Bool)

(assert (=> b!500302 (=> (not res!302274) (not e!293130))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32263 (_ BitVec 32)) Bool)

(assert (=> b!500302 (= res!302274 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15026 0))(
  ( (Unit!15027) )
))
(declare-fun lt!227111 () Unit!15026)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32263 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15026)

(assert (=> b!500302 (= lt!227111 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!500303 () Bool)

(declare-fun e!293131 () Bool)

(assert (=> b!500303 (= e!293131 true)))

(declare-fun lt!227117 () SeekEntryResult!3984)

(assert (=> b!500303 (= lt!227117 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227113 lt!227118 lt!227120 mask!3524))))

(declare-fun b!500304 () Bool)

(declare-fun res!302275 () Bool)

(assert (=> b!500304 (=> (not res!302275) (not e!293124))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!500304 (= res!302275 (validKeyInArray!0 (select (arr!15510 a!3235) j!176)))))

(declare-fun b!500305 () Bool)

(assert (=> b!500305 (= e!293128 e!293131)))

(declare-fun res!302282 () Bool)

(assert (=> b!500305 (=> res!302282 e!293131)))

(assert (=> b!500305 (= res!302282 (or (bvsgt #b00000000000000000000000000000000 (x!47184 lt!227115)) (bvsgt (x!47184 lt!227115) #b01111111111111111111111111111110) (bvslt lt!227113 #b00000000000000000000000000000000) (bvsge lt!227113 (size!15874 a!3235)) (bvslt (index!18120 lt!227115) #b00000000000000000000000000000000) (bvsge (index!18120 lt!227115) (size!15874 a!3235)) (not (= lt!227115 (Intermediate!3984 false (index!18120 lt!227115) (x!47184 lt!227115))))))))

(assert (=> b!500305 (and (or (= (select (arr!15510 a!3235) (index!18120 lt!227115)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15510 a!3235) (index!18120 lt!227115)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15510 a!3235) (index!18120 lt!227115)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15510 a!3235) (index!18120 lt!227115)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!227114 () Unit!15026)

(declare-fun e!293126 () Unit!15026)

(assert (=> b!500305 (= lt!227114 e!293126)))

(declare-fun c!59291 () Bool)

(assert (=> b!500305 (= c!59291 (= (select (arr!15510 a!3235) (index!18120 lt!227115)) (select (arr!15510 a!3235) j!176)))))

(assert (=> b!500305 (and (bvslt (x!47184 lt!227115) #b01111111111111111111111111111110) (or (= (select (arr!15510 a!3235) (index!18120 lt!227115)) (select (arr!15510 a!3235) j!176)) (= (select (arr!15510 a!3235) (index!18120 lt!227115)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15510 a!3235) (index!18120 lt!227115)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!500306 () Bool)

(declare-fun Unit!15028 () Unit!15026)

(assert (=> b!500306 (= e!293126 Unit!15028)))

(declare-fun b!500307 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32263 (_ BitVec 32)) SeekEntryResult!3984)

(assert (=> b!500307 (= e!293130 (= (seekEntryOrOpen!0 (select (arr!15510 a!3235) j!176) a!3235 mask!3524) (Found!3984 j!176)))))

(declare-fun b!500308 () Bool)

(declare-fun e!293125 () Bool)

(assert (=> b!500308 (= e!293125 false)))

(declare-fun b!500309 () Bool)

(declare-fun res!302272 () Bool)

(assert (=> b!500309 (=> (not res!302272) (not e!293124))))

(assert (=> b!500309 (= res!302272 (validKeyInArray!0 k!2280))))

(declare-fun b!500310 () Bool)

(declare-fun res!302281 () Bool)

(assert (=> b!500310 (=> (not res!302281) (not e!293129))))

(assert (=> b!500310 (= res!302281 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!500311 () Bool)

(assert (=> b!500311 (= e!293124 e!293129)))

(declare-fun res!302280 () Bool)

(assert (=> b!500311 (=> (not res!302280) (not e!293129))))

(declare-fun lt!227116 () SeekEntryResult!3984)

(assert (=> b!500311 (= res!302280 (or (= lt!227116 (MissingZero!3984 i!1204)) (= lt!227116 (MissingVacant!3984 i!1204))))))

(assert (=> b!500311 (= lt!227116 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!500312 () Bool)

(declare-fun Unit!15029 () Unit!15026)

(assert (=> b!500312 (= e!293126 Unit!15029)))

(declare-fun lt!227119 () Unit!15026)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32263 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15026)

(assert (=> b!500312 (= lt!227119 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!227113 #b00000000000000000000000000000000 (index!18120 lt!227115) (x!47184 lt!227115) mask!3524))))

(declare-fun res!302276 () Bool)

(assert (=> b!500312 (= res!302276 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227113 lt!227118 lt!227120 mask!3524) (Intermediate!3984 false (index!18120 lt!227115) (x!47184 lt!227115))))))

(assert (=> b!500312 (=> (not res!302276) (not e!293125))))

(assert (=> b!500312 e!293125))

(assert (= (and start!45478 res!302271) b!500299))

(assert (= (and b!500299 res!302279) b!500304))

(assert (= (and b!500304 res!302275) b!500309))

(assert (= (and b!500309 res!302272) b!500301))

(assert (= (and b!500301 res!302278) b!500311))

(assert (= (and b!500311 res!302280) b!500310))

(assert (= (and b!500310 res!302281) b!500298))

(assert (= (and b!500298 res!302270) b!500302))

(assert (= (and b!500302 res!302274) b!500307))

(assert (= (and b!500302 (not res!302273)) b!500300))

(assert (= (and b!500300 (not res!302277)) b!500305))

(assert (= (and b!500305 c!59291) b!500312))

(assert (= (and b!500305 (not c!59291)) b!500306))

(assert (= (and b!500312 res!302276) b!500308))

(assert (= (and b!500305 (not res!302282)) b!500303))

(declare-fun m!481465 () Bool)

(assert (=> b!500311 m!481465))

(declare-fun m!481467 () Bool)

(assert (=> b!500310 m!481467))

(declare-fun m!481469 () Bool)

(assert (=> b!500312 m!481469))

(declare-fun m!481471 () Bool)

(assert (=> b!500312 m!481471))

(assert (=> b!500303 m!481471))

(declare-fun m!481473 () Bool)

(assert (=> b!500307 m!481473))

(assert (=> b!500307 m!481473))

(declare-fun m!481475 () Bool)

(assert (=> b!500307 m!481475))

(declare-fun m!481477 () Bool)

(assert (=> b!500298 m!481477))

(declare-fun m!481479 () Bool)

(assert (=> b!500305 m!481479))

(assert (=> b!500305 m!481473))

(declare-fun m!481481 () Bool)

(assert (=> b!500302 m!481481))

(assert (=> b!500302 m!481473))

(declare-fun m!481483 () Bool)

(assert (=> b!500302 m!481483))

(declare-fun m!481485 () Bool)

(assert (=> b!500302 m!481485))

(declare-fun m!481487 () Bool)

(assert (=> b!500302 m!481487))

(assert (=> b!500302 m!481473))

(declare-fun m!481489 () Bool)

(assert (=> b!500302 m!481489))

(assert (=> b!500302 m!481473))

(declare-fun m!481491 () Bool)

(assert (=> b!500302 m!481491))

(declare-fun m!481493 () Bool)

(assert (=> b!500302 m!481493))

(declare-fun m!481495 () Bool)

(assert (=> b!500302 m!481495))

(declare-fun m!481497 () Bool)

(assert (=> b!500309 m!481497))

(declare-fun m!481499 () Bool)

(assert (=> start!45478 m!481499))

(declare-fun m!481501 () Bool)

(assert (=> start!45478 m!481501))

(declare-fun m!481503 () Bool)

(assert (=> b!500301 m!481503))

(assert (=> b!500304 m!481473))

(assert (=> b!500304 m!481473))

(declare-fun m!481505 () Bool)

(assert (=> b!500304 m!481505))

(push 1)

