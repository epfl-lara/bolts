; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31806 () Bool)

(assert start!31806)

(declare-fun b!317469 () Bool)

(declare-fun res!172215 () Bool)

(declare-fun e!197372 () Bool)

(assert (=> b!317469 (=> (not res!172215) (not e!197372))))

(declare-datatypes ((array!16175 0))(
  ( (array!16176 (arr!7651 (Array (_ BitVec 32) (_ BitVec 64))) (size!8003 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16175)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!317469 (= res!172215 (and (= (select (arr!7651 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!8003 a!3293))))))

(declare-fun b!317470 () Bool)

(declare-fun res!172208 () Bool)

(declare-fun e!197373 () Bool)

(assert (=> b!317470 (=> (not res!172208) (not e!197373))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!317470 (= res!172208 (validKeyInArray!0 k!2441))))

(declare-fun b!317471 () Bool)

(declare-fun res!172210 () Bool)

(assert (=> b!317471 (=> (not res!172210) (not e!197373))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16175 (_ BitVec 32)) Bool)

(assert (=> b!317471 (= res!172210 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!317472 () Bool)

(assert (=> b!317472 (= e!197373 e!197372)))

(declare-fun res!172209 () Bool)

(assert (=> b!317472 (=> (not res!172209) (not e!197372))))

(declare-datatypes ((SeekEntryResult!2802 0))(
  ( (MissingZero!2802 (index!13384 (_ BitVec 32))) (Found!2802 (index!13385 (_ BitVec 32))) (Intermediate!2802 (undefined!3614 Bool) (index!13386 (_ BitVec 32)) (x!31614 (_ BitVec 32))) (Undefined!2802) (MissingVacant!2802 (index!13387 (_ BitVec 32))) )
))
(declare-fun lt!155004 () SeekEntryResult!2802)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16175 (_ BitVec 32)) SeekEntryResult!2802)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317472 (= res!172209 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!155004))))

(assert (=> b!317472 (= lt!155004 (Intermediate!2802 false resIndex!52 resX!52))))

(declare-fun b!317473 () Bool)

(declare-fun res!172213 () Bool)

(assert (=> b!317473 (=> (not res!172213) (not e!197373))))

(assert (=> b!317473 (= res!172213 (and (= (size!8003 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!8003 a!3293))))))

(declare-fun b!317474 () Bool)

(declare-fun e!197370 () Bool)

(assert (=> b!317474 (= e!197372 e!197370)))

(declare-fun res!172212 () Bool)

(assert (=> b!317474 (=> (not res!172212) (not e!197370))))

(declare-fun lt!155005 () SeekEntryResult!2802)

(assert (=> b!317474 (= res!172212 (and (= lt!155005 lt!155004) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7651 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!317474 (= lt!155005 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun res!172214 () Bool)

(assert (=> start!31806 (=> (not res!172214) (not e!197373))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31806 (= res!172214 (validMask!0 mask!3709))))

(assert (=> start!31806 e!197373))

(declare-fun array_inv!5605 (array!16175) Bool)

(assert (=> start!31806 (array_inv!5605 a!3293)))

(assert (=> start!31806 true))

(declare-fun b!317475 () Bool)

(declare-fun res!172206 () Bool)

(assert (=> b!317475 (=> (not res!172206) (not e!197373))))

(declare-fun arrayContainsKey!0 (array!16175 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!317475 (= res!172206 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!317476 () Bool)

(assert (=> b!317476 (= e!197370 (not true))))

(declare-fun e!197374 () Bool)

(assert (=> b!317476 e!197374))

(declare-fun res!172207 () Bool)

(assert (=> b!317476 (=> (not res!172207) (not e!197374))))

(declare-fun lt!155003 () (_ BitVec 32))

(assert (=> b!317476 (= res!172207 (= lt!155005 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155003 k!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317476 (= lt!155003 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!317477 () Bool)

(declare-fun res!172211 () Bool)

(assert (=> b!317477 (=> (not res!172211) (not e!197373))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16175 (_ BitVec 32)) SeekEntryResult!2802)

(assert (=> b!317477 (= res!172211 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2802 i!1240)))))

(declare-fun lt!155006 () array!16175)

(declare-fun b!317478 () Bool)

(assert (=> b!317478 (= e!197374 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!155006 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155003 k!2441 lt!155006 mask!3709)))))

(assert (=> b!317478 (= lt!155006 (array!16176 (store (arr!7651 a!3293) i!1240 k!2441) (size!8003 a!3293)))))

(assert (= (and start!31806 res!172214) b!317473))

(assert (= (and b!317473 res!172213) b!317470))

(assert (= (and b!317470 res!172208) b!317475))

(assert (= (and b!317475 res!172206) b!317477))

(assert (= (and b!317477 res!172211) b!317471))

(assert (= (and b!317471 res!172210) b!317472))

(assert (= (and b!317472 res!172209) b!317469))

(assert (= (and b!317469 res!172215) b!317474))

(assert (= (and b!317474 res!172212) b!317476))

(assert (= (and b!317476 res!172207) b!317478))

(declare-fun m!326161 () Bool)

(assert (=> b!317475 m!326161))

(declare-fun m!326163 () Bool)

(assert (=> b!317477 m!326163))

(declare-fun m!326165 () Bool)

(assert (=> b!317469 m!326165))

(declare-fun m!326167 () Bool)

(assert (=> b!317474 m!326167))

(declare-fun m!326169 () Bool)

(assert (=> b!317474 m!326169))

(declare-fun m!326171 () Bool)

(assert (=> b!317470 m!326171))

(declare-fun m!326173 () Bool)

(assert (=> b!317472 m!326173))

(assert (=> b!317472 m!326173))

(declare-fun m!326175 () Bool)

(assert (=> b!317472 m!326175))

(declare-fun m!326177 () Bool)

(assert (=> b!317478 m!326177))

(declare-fun m!326179 () Bool)

(assert (=> b!317478 m!326179))

(declare-fun m!326181 () Bool)

(assert (=> b!317478 m!326181))

(declare-fun m!326183 () Bool)

(assert (=> start!31806 m!326183))

(declare-fun m!326185 () Bool)

(assert (=> start!31806 m!326185))

(declare-fun m!326187 () Bool)

(assert (=> b!317471 m!326187))

(declare-fun m!326189 () Bool)

(assert (=> b!317476 m!326189))

(declare-fun m!326191 () Bool)

(assert (=> b!317476 m!326191))

(push 1)

