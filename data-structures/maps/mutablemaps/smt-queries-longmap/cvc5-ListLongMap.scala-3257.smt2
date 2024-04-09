; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45424 () Bool)

(assert start!45424)

(declare-fun b!499083 () Bool)

(declare-fun res!301219 () Bool)

(declare-fun e!292482 () Bool)

(assert (=> b!499083 (=> (not res!301219) (not e!292482))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!499083 (= res!301219 (validKeyInArray!0 k!2280))))

(declare-fun b!499084 () Bool)

(declare-fun res!301221 () Bool)

(assert (=> b!499084 (=> (not res!301221) (not e!292482))))

(declare-datatypes ((array!32209 0))(
  ( (array!32210 (arr!15483 (Array (_ BitVec 32) (_ BitVec 64))) (size!15847 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32209)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!499084 (= res!301221 (validKeyInArray!0 (select (arr!15483 a!3235) j!176)))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun b!499085 () Bool)

(declare-fun e!292479 () Bool)

(declare-datatypes ((SeekEntryResult!3957 0))(
  ( (MissingZero!3957 (index!18010 (_ BitVec 32))) (Found!3957 (index!18011 (_ BitVec 32))) (Intermediate!3957 (undefined!4769 Bool) (index!18012 (_ BitVec 32)) (x!47085 (_ BitVec 32))) (Undefined!3957) (MissingVacant!3957 (index!18013 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32209 (_ BitVec 32)) SeekEntryResult!3957)

(assert (=> b!499085 (= e!292479 (= (seekEntryOrOpen!0 (select (arr!15483 a!3235) j!176) a!3235 mask!3524) (Found!3957 j!176)))))

(declare-fun b!499086 () Bool)

(declare-fun res!301220 () Bool)

(assert (=> b!499086 (=> (not res!301220) (not e!292482))))

(declare-fun arrayContainsKey!0 (array!32209 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!499086 (= res!301220 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!499087 () Bool)

(declare-fun res!301226 () Bool)

(declare-fun e!292478 () Bool)

(assert (=> b!499087 (=> (not res!301226) (not e!292478))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32209 (_ BitVec 32)) Bool)

(assert (=> b!499087 (= res!301226 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!499088 () Bool)

(declare-datatypes ((Unit!14918 0))(
  ( (Unit!14919) )
))
(declare-fun e!292483 () Unit!14918)

(declare-fun Unit!14920 () Unit!14918)

(assert (=> b!499088 (= e!292483 Unit!14920)))

(declare-fun b!499089 () Bool)

(assert (=> b!499089 (= e!292482 e!292478)))

(declare-fun res!301224 () Bool)

(assert (=> b!499089 (=> (not res!301224) (not e!292478))))

(declare-fun lt!226309 () SeekEntryResult!3957)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!499089 (= res!301224 (or (= lt!226309 (MissingZero!3957 i!1204)) (= lt!226309 (MissingVacant!3957 i!1204))))))

(assert (=> b!499089 (= lt!226309 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!499090 () Bool)

(declare-fun res!301217 () Bool)

(declare-fun e!292480 () Bool)

(assert (=> b!499090 (=> res!301217 e!292480)))

(declare-fun lt!226302 () SeekEntryResult!3957)

(assert (=> b!499090 (= res!301217 (or (undefined!4769 lt!226302) (not (is-Intermediate!3957 lt!226302))))))

(declare-fun b!499091 () Bool)

(assert (=> b!499091 (= e!292478 (not e!292480))))

(declare-fun res!301223 () Bool)

(assert (=> b!499091 (=> res!301223 e!292480)))

(declare-fun lt!226308 () array!32209)

(declare-fun lt!226310 () (_ BitVec 32))

(declare-fun lt!226303 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32209 (_ BitVec 32)) SeekEntryResult!3957)

(assert (=> b!499091 (= res!301223 (= lt!226302 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226310 lt!226303 lt!226308 mask!3524)))))

(declare-fun lt!226306 () (_ BitVec 32))

(assert (=> b!499091 (= lt!226302 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226306 (select (arr!15483 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!499091 (= lt!226310 (toIndex!0 lt!226303 mask!3524))))

(assert (=> b!499091 (= lt!226303 (select (store (arr!15483 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!499091 (= lt!226306 (toIndex!0 (select (arr!15483 a!3235) j!176) mask!3524))))

(assert (=> b!499091 (= lt!226308 (array!32210 (store (arr!15483 a!3235) i!1204 k!2280) (size!15847 a!3235)))))

(assert (=> b!499091 e!292479))

(declare-fun res!301227 () Bool)

(assert (=> b!499091 (=> (not res!301227) (not e!292479))))

(assert (=> b!499091 (= res!301227 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!226301 () Unit!14918)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32209 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14918)

(assert (=> b!499091 (= lt!226301 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!499092 () Bool)

(declare-fun e!292477 () Bool)

(assert (=> b!499092 (= e!292477 true)))

(declare-fun lt!226307 () SeekEntryResult!3957)

(assert (=> b!499092 (= lt!226307 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226306 lt!226303 lt!226308 mask!3524))))

(declare-fun b!499093 () Bool)

(assert (=> b!499093 (= e!292480 e!292477)))

(declare-fun res!301225 () Bool)

(assert (=> b!499093 (=> res!301225 e!292477)))

(assert (=> b!499093 (= res!301225 (or (bvsgt #b00000000000000000000000000000000 (x!47085 lt!226302)) (bvsgt (x!47085 lt!226302) #b01111111111111111111111111111110) (bvslt lt!226306 #b00000000000000000000000000000000) (bvsge lt!226306 (size!15847 a!3235)) (bvslt (index!18012 lt!226302) #b00000000000000000000000000000000) (bvsge (index!18012 lt!226302) (size!15847 a!3235)) (not (= lt!226302 (Intermediate!3957 false (index!18012 lt!226302) (x!47085 lt!226302))))))))

(assert (=> b!499093 (and (or (= (select (arr!15483 a!3235) (index!18012 lt!226302)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15483 a!3235) (index!18012 lt!226302)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15483 a!3235) (index!18012 lt!226302)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15483 a!3235) (index!18012 lt!226302)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!226304 () Unit!14918)

(assert (=> b!499093 (= lt!226304 e!292483)))

(declare-fun c!59210 () Bool)

(assert (=> b!499093 (= c!59210 (= (select (arr!15483 a!3235) (index!18012 lt!226302)) (select (arr!15483 a!3235) j!176)))))

(assert (=> b!499093 (and (bvslt (x!47085 lt!226302) #b01111111111111111111111111111110) (or (= (select (arr!15483 a!3235) (index!18012 lt!226302)) (select (arr!15483 a!3235) j!176)) (= (select (arr!15483 a!3235) (index!18012 lt!226302)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15483 a!3235) (index!18012 lt!226302)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!499094 () Bool)

(declare-fun Unit!14921 () Unit!14918)

(assert (=> b!499094 (= e!292483 Unit!14921)))

(declare-fun lt!226305 () Unit!14918)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32209 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14918)

(assert (=> b!499094 (= lt!226305 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!226306 #b00000000000000000000000000000000 (index!18012 lt!226302) (x!47085 lt!226302) mask!3524))))

(declare-fun res!301229 () Bool)

(assert (=> b!499094 (= res!301229 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226306 lt!226303 lt!226308 mask!3524) (Intermediate!3957 false (index!18012 lt!226302) (x!47085 lt!226302))))))

(declare-fun e!292481 () Bool)

(assert (=> b!499094 (=> (not res!301229) (not e!292481))))

(assert (=> b!499094 e!292481))

(declare-fun b!499095 () Bool)

(declare-fun res!301222 () Bool)

(assert (=> b!499095 (=> (not res!301222) (not e!292478))))

(declare-datatypes ((List!9694 0))(
  ( (Nil!9691) (Cons!9690 (h!10564 (_ BitVec 64)) (t!15930 List!9694)) )
))
(declare-fun arrayNoDuplicates!0 (array!32209 (_ BitVec 32) List!9694) Bool)

(assert (=> b!499095 (= res!301222 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9691))))

(declare-fun b!499096 () Bool)

(assert (=> b!499096 (= e!292481 false)))

(declare-fun res!301228 () Bool)

(assert (=> start!45424 (=> (not res!301228) (not e!292482))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45424 (= res!301228 (validMask!0 mask!3524))))

(assert (=> start!45424 e!292482))

(assert (=> start!45424 true))

(declare-fun array_inv!11257 (array!32209) Bool)

(assert (=> start!45424 (array_inv!11257 a!3235)))

(declare-fun b!499097 () Bool)

(declare-fun res!301218 () Bool)

(assert (=> b!499097 (=> (not res!301218) (not e!292482))))

(assert (=> b!499097 (= res!301218 (and (= (size!15847 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15847 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15847 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!45424 res!301228) b!499097))

(assert (= (and b!499097 res!301218) b!499084))

(assert (= (and b!499084 res!301221) b!499083))

(assert (= (and b!499083 res!301219) b!499086))

(assert (= (and b!499086 res!301220) b!499089))

(assert (= (and b!499089 res!301224) b!499087))

(assert (= (and b!499087 res!301226) b!499095))

(assert (= (and b!499095 res!301222) b!499091))

(assert (= (and b!499091 res!301227) b!499085))

(assert (= (and b!499091 (not res!301223)) b!499090))

(assert (= (and b!499090 (not res!301217)) b!499093))

(assert (= (and b!499093 c!59210) b!499094))

(assert (= (and b!499093 (not c!59210)) b!499088))

(assert (= (and b!499094 res!301229) b!499096))

(assert (= (and b!499093 (not res!301225)) b!499092))

(declare-fun m!480331 () Bool)

(assert (=> b!499089 m!480331))

(declare-fun m!480333 () Bool)

(assert (=> b!499085 m!480333))

(assert (=> b!499085 m!480333))

(declare-fun m!480335 () Bool)

(assert (=> b!499085 m!480335))

(declare-fun m!480337 () Bool)

(assert (=> b!499092 m!480337))

(assert (=> b!499084 m!480333))

(assert (=> b!499084 m!480333))

(declare-fun m!480339 () Bool)

(assert (=> b!499084 m!480339))

(declare-fun m!480341 () Bool)

(assert (=> b!499091 m!480341))

(assert (=> b!499091 m!480333))

(declare-fun m!480343 () Bool)

(assert (=> b!499091 m!480343))

(declare-fun m!480345 () Bool)

(assert (=> b!499091 m!480345))

(declare-fun m!480347 () Bool)

(assert (=> b!499091 m!480347))

(declare-fun m!480349 () Bool)

(assert (=> b!499091 m!480349))

(assert (=> b!499091 m!480333))

(declare-fun m!480351 () Bool)

(assert (=> b!499091 m!480351))

(assert (=> b!499091 m!480333))

(declare-fun m!480353 () Bool)

(assert (=> b!499091 m!480353))

(declare-fun m!480355 () Bool)

(assert (=> b!499091 m!480355))

(declare-fun m!480357 () Bool)

(assert (=> start!45424 m!480357))

(declare-fun m!480359 () Bool)

(assert (=> start!45424 m!480359))

(declare-fun m!480361 () Bool)

(assert (=> b!499095 m!480361))

(declare-fun m!480363 () Bool)

(assert (=> b!499087 m!480363))

(declare-fun m!480365 () Bool)

(assert (=> b!499093 m!480365))

(assert (=> b!499093 m!480333))

(declare-fun m!480367 () Bool)

(assert (=> b!499083 m!480367))

(declare-fun m!480369 () Bool)

(assert (=> b!499086 m!480369))

(declare-fun m!480371 () Bool)

(assert (=> b!499094 m!480371))

(assert (=> b!499094 m!480337))

(push 1)

