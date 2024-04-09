; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31000 () Bool)

(assert start!31000)

(declare-fun b!311274 () Bool)

(declare-fun res!167895 () Bool)

(declare-fun e!194226 () Bool)

(assert (=> b!311274 (=> (not res!167895) (not e!194226))))

(declare-datatypes ((array!15900 0))(
  ( (array!15901 (arr!7530 (Array (_ BitVec 32) (_ BitVec 64))) (size!7882 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15900)

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun mask!3709 () (_ BitVec 32))

(assert (=> b!311274 (= res!167895 (and (= (size!7882 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7882 a!3293))))))

(declare-fun b!311275 () Bool)

(declare-fun res!167886 () Bool)

(assert (=> b!311275 (=> (not res!167886) (not e!194226))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15900 (_ BitVec 32)) Bool)

(assert (=> b!311275 (= res!167886 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun lt!152333 () array!15900)

(declare-fun b!311276 () Bool)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun lt!152331 () (_ BitVec 32))

(declare-fun e!194227 () Bool)

(declare-datatypes ((SeekEntryResult!2681 0))(
  ( (MissingZero!2681 (index!12900 (_ BitVec 32))) (Found!2681 (index!12901 (_ BitVec 32))) (Intermediate!2681 (undefined!3493 Bool) (index!12902 (_ BitVec 32)) (x!31081 (_ BitVec 32))) (Undefined!2681) (MissingVacant!2681 (index!12903 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15900 (_ BitVec 32)) SeekEntryResult!2681)

(assert (=> b!311276 (= e!194227 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!152333 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152331 k!2441 lt!152333 mask!3709)))))

(assert (=> b!311276 (= lt!152333 (array!15901 (store (arr!7530 a!3293) i!1240 k!2441) (size!7882 a!3293)))))

(declare-fun b!311277 () Bool)

(declare-fun e!194229 () Bool)

(declare-fun e!194228 () Bool)

(assert (=> b!311277 (= e!194229 e!194228)))

(declare-fun res!167892 () Bool)

(assert (=> b!311277 (=> (not res!167892) (not e!194228))))

(declare-fun lt!152330 () SeekEntryResult!2681)

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun lt!152332 () SeekEntryResult!2681)

(assert (=> b!311277 (= res!167892 (and (= lt!152332 lt!152330) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7530 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!311277 (= lt!152332 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!311279 () Bool)

(assert (=> b!311279 (= e!194226 e!194229)))

(declare-fun res!167889 () Bool)

(assert (=> b!311279 (=> (not res!167889) (not e!194229))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311279 (= res!167889 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!152330))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!311279 (= lt!152330 (Intermediate!2681 false resIndex!52 resX!52))))

(declare-fun b!311280 () Bool)

(declare-fun res!167887 () Bool)

(assert (=> b!311280 (=> (not res!167887) (not e!194226))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!311280 (= res!167887 (validKeyInArray!0 k!2441))))

(declare-fun b!311281 () Bool)

(declare-fun res!167893 () Bool)

(assert (=> b!311281 (=> (not res!167893) (not e!194226))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15900 (_ BitVec 32)) SeekEntryResult!2681)

(assert (=> b!311281 (= res!167893 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2681 i!1240)))))

(declare-fun b!311282 () Bool)

(declare-fun res!167888 () Bool)

(assert (=> b!311282 (=> (not res!167888) (not e!194229))))

(assert (=> b!311282 (= res!167888 (and (= (select (arr!7530 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7882 a!3293))))))

(declare-fun b!311283 () Bool)

(declare-fun res!167894 () Bool)

(assert (=> b!311283 (=> (not res!167894) (not e!194226))))

(declare-fun arrayContainsKey!0 (array!15900 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!311283 (= res!167894 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun res!167891 () Bool)

(assert (=> start!31000 (=> (not res!167891) (not e!194226))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31000 (= res!167891 (validMask!0 mask!3709))))

(assert (=> start!31000 e!194226))

(declare-fun array_inv!5484 (array!15900) Bool)

(assert (=> start!31000 (array_inv!5484 a!3293)))

(assert (=> start!31000 true))

(declare-fun b!311278 () Bool)

(assert (=> b!311278 (= e!194228 (not true))))

(assert (=> b!311278 e!194227))

(declare-fun res!167890 () Bool)

(assert (=> b!311278 (=> (not res!167890) (not e!194227))))

(assert (=> b!311278 (= res!167890 (= lt!152332 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152331 k!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311278 (= lt!152331 (nextIndex!0 index!1781 x!1427 mask!3709))))

(assert (= (and start!31000 res!167891) b!311274))

(assert (= (and b!311274 res!167895) b!311280))

(assert (= (and b!311280 res!167887) b!311283))

(assert (= (and b!311283 res!167894) b!311281))

(assert (= (and b!311281 res!167893) b!311275))

(assert (= (and b!311275 res!167886) b!311279))

(assert (= (and b!311279 res!167889) b!311282))

(assert (= (and b!311282 res!167888) b!311277))

(assert (= (and b!311277 res!167892) b!311278))

(assert (= (and b!311278 res!167890) b!311276))

(declare-fun m!321293 () Bool)

(assert (=> b!311281 m!321293))

(declare-fun m!321295 () Bool)

(assert (=> b!311279 m!321295))

(assert (=> b!311279 m!321295))

(declare-fun m!321297 () Bool)

(assert (=> b!311279 m!321297))

(declare-fun m!321299 () Bool)

(assert (=> b!311280 m!321299))

(declare-fun m!321301 () Bool)

(assert (=> b!311278 m!321301))

(declare-fun m!321303 () Bool)

(assert (=> b!311278 m!321303))

(declare-fun m!321305 () Bool)

(assert (=> b!311276 m!321305))

(declare-fun m!321307 () Bool)

(assert (=> b!311276 m!321307))

(declare-fun m!321309 () Bool)

(assert (=> b!311276 m!321309))

(declare-fun m!321311 () Bool)

(assert (=> b!311275 m!321311))

(declare-fun m!321313 () Bool)

(assert (=> b!311282 m!321313))

(declare-fun m!321315 () Bool)

(assert (=> b!311277 m!321315))

(declare-fun m!321317 () Bool)

(assert (=> b!311277 m!321317))

(declare-fun m!321319 () Bool)

(assert (=> start!31000 m!321319))

(declare-fun m!321321 () Bool)

(assert (=> start!31000 m!321321))

(declare-fun m!321323 () Bool)

(assert (=> b!311283 m!321323))

(push 1)

(assert (not b!311279))

(assert (not start!31000))

