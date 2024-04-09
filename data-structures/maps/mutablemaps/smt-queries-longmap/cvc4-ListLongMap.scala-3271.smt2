; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45512 () Bool)

(assert start!45512)

(declare-fun b!501046 () Bool)

(declare-fun res!302922 () Bool)

(declare-fun e!293517 () Bool)

(assert (=> b!501046 (=> (not res!302922) (not e!293517))))

(declare-datatypes ((array!32297 0))(
  ( (array!32298 (arr!15527 (Array (_ BitVec 32) (_ BitVec 64))) (size!15891 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32297)

(declare-datatypes ((List!9738 0))(
  ( (Nil!9735) (Cons!9734 (h!10608 (_ BitVec 64)) (t!15974 List!9738)) )
))
(declare-fun arrayNoDuplicates!0 (array!32297 (_ BitVec 32) List!9738) Bool)

(assert (=> b!501046 (= res!302922 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9735))))

(declare-fun b!501047 () Bool)

(declare-fun res!302927 () Bool)

(declare-fun e!293516 () Bool)

(assert (=> b!501047 (=> res!302927 e!293516)))

(declare-datatypes ((SeekEntryResult!4001 0))(
  ( (MissingZero!4001 (index!18186 (_ BitVec 32))) (Found!4001 (index!18187 (_ BitVec 32))) (Intermediate!4001 (undefined!4813 Bool) (index!18188 (_ BitVec 32)) (x!47241 (_ BitVec 32))) (Undefined!4001) (MissingVacant!4001 (index!18189 (_ BitVec 32))) )
))
(declare-fun lt!227630 () SeekEntryResult!4001)

(assert (=> b!501047 (= res!302927 (or (undefined!4813 lt!227630) (not (is-Intermediate!4001 lt!227630))))))

(declare-fun b!501048 () Bool)

(declare-fun res!302926 () Bool)

(assert (=> b!501048 (=> (not res!302926) (not e!293517))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32297 (_ BitVec 32)) Bool)

(assert (=> b!501048 (= res!302926 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!501050 () Bool)

(declare-fun res!302917 () Bool)

(declare-fun e!293518 () Bool)

(assert (=> b!501050 (=> (not res!302917) (not e!293518))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!501050 (= res!302917 (and (= (size!15891 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15891 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15891 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!501051 () Bool)

(declare-datatypes ((Unit!15094 0))(
  ( (Unit!15095) )
))
(declare-fun e!293521 () Unit!15094)

(declare-fun Unit!15096 () Unit!15094)

(assert (=> b!501051 (= e!293521 Unit!15096)))

(declare-fun lt!227626 () (_ BitVec 32))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun lt!227621 () Unit!15094)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32297 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15094)

(assert (=> b!501051 (= lt!227621 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!227626 #b00000000000000000000000000000000 (index!18188 lt!227630) (x!47241 lt!227630) mask!3524))))

(declare-fun lt!227625 () array!32297)

(declare-fun lt!227627 () (_ BitVec 64))

(declare-fun res!302921 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32297 (_ BitVec 32)) SeekEntryResult!4001)

(assert (=> b!501051 (= res!302921 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227626 lt!227627 lt!227625 mask!3524) (Intermediate!4001 false (index!18188 lt!227630) (x!47241 lt!227630))))))

(declare-fun e!293520 () Bool)

(assert (=> b!501051 (=> (not res!302921) (not e!293520))))

(assert (=> b!501051 e!293520))

(declare-fun b!501052 () Bool)

(declare-fun res!302918 () Bool)

(assert (=> b!501052 (=> (not res!302918) (not e!293518))))

(declare-fun arrayContainsKey!0 (array!32297 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!501052 (= res!302918 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!501053 () Bool)

(assert (=> b!501053 (= e!293518 e!293517)))

(declare-fun res!302925 () Bool)

(assert (=> b!501053 (=> (not res!302925) (not e!293517))))

(declare-fun lt!227629 () SeekEntryResult!4001)

(assert (=> b!501053 (= res!302925 (or (= lt!227629 (MissingZero!4001 i!1204)) (= lt!227629 (MissingVacant!4001 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32297 (_ BitVec 32)) SeekEntryResult!4001)

(assert (=> b!501053 (= lt!227629 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!501054 () Bool)

(assert (=> b!501054 (= e!293520 false)))

(declare-fun b!501055 () Bool)

(declare-fun e!293515 () Bool)

(assert (=> b!501055 (= e!293515 (= (seekEntryOrOpen!0 (select (arr!15527 a!3235) j!176) a!3235 mask!3524) (Found!4001 j!176)))))

(declare-fun res!302924 () Bool)

(assert (=> start!45512 (=> (not res!302924) (not e!293518))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45512 (= res!302924 (validMask!0 mask!3524))))

(assert (=> start!45512 e!293518))

(assert (=> start!45512 true))

(declare-fun array_inv!11301 (array!32297) Bool)

(assert (=> start!45512 (array_inv!11301 a!3235)))

(declare-fun b!501049 () Bool)

(assert (=> b!501049 (= e!293517 (not e!293516))))

(declare-fun res!302919 () Bool)

(assert (=> b!501049 (=> res!302919 e!293516)))

(declare-fun lt!227623 () (_ BitVec 32))

(assert (=> b!501049 (= res!302919 (= lt!227630 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227623 lt!227627 lt!227625 mask!3524)))))

(assert (=> b!501049 (= lt!227630 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227626 (select (arr!15527 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!501049 (= lt!227623 (toIndex!0 lt!227627 mask!3524))))

(assert (=> b!501049 (= lt!227627 (select (store (arr!15527 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!501049 (= lt!227626 (toIndex!0 (select (arr!15527 a!3235) j!176) mask!3524))))

(assert (=> b!501049 (= lt!227625 (array!32298 (store (arr!15527 a!3235) i!1204 k!2280) (size!15891 a!3235)))))

(assert (=> b!501049 e!293515))

(declare-fun res!302916 () Bool)

(assert (=> b!501049 (=> (not res!302916) (not e!293515))))

(assert (=> b!501049 (= res!302916 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!227628 () Unit!15094)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32297 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15094)

(assert (=> b!501049 (= lt!227628 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!501056 () Bool)

(declare-fun Unit!15097 () Unit!15094)

(assert (=> b!501056 (= e!293521 Unit!15097)))

(declare-fun b!501057 () Bool)

(declare-fun res!302920 () Bool)

(assert (=> b!501057 (=> (not res!302920) (not e!293518))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!501057 (= res!302920 (validKeyInArray!0 k!2280))))

(declare-fun b!501058 () Bool)

(assert (=> b!501058 (= e!293516 (or (bvslt mask!3524 #b00000000000000000000000000000000) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> b!501058 (= (index!18188 lt!227630) i!1204)))

(declare-fun lt!227622 () Unit!15094)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32297 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15094)

(assert (=> b!501058 (= lt!227622 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!227626 #b00000000000000000000000000000000 (index!18188 lt!227630) (x!47241 lt!227630) mask!3524))))

(assert (=> b!501058 (and (or (= (select (arr!15527 a!3235) (index!18188 lt!227630)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15527 a!3235) (index!18188 lt!227630)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15527 a!3235) (index!18188 lt!227630)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15527 a!3235) (index!18188 lt!227630)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!227624 () Unit!15094)

(assert (=> b!501058 (= lt!227624 e!293521)))

(declare-fun c!59342 () Bool)

(assert (=> b!501058 (= c!59342 (= (select (arr!15527 a!3235) (index!18188 lt!227630)) (select (arr!15527 a!3235) j!176)))))

(assert (=> b!501058 (and (bvslt (x!47241 lt!227630) #b01111111111111111111111111111110) (or (= (select (arr!15527 a!3235) (index!18188 lt!227630)) (select (arr!15527 a!3235) j!176)) (= (select (arr!15527 a!3235) (index!18188 lt!227630)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15527 a!3235) (index!18188 lt!227630)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!501059 () Bool)

(declare-fun res!302923 () Bool)

(assert (=> b!501059 (=> (not res!302923) (not e!293518))))

(assert (=> b!501059 (= res!302923 (validKeyInArray!0 (select (arr!15527 a!3235) j!176)))))

(assert (= (and start!45512 res!302924) b!501050))

(assert (= (and b!501050 res!302917) b!501059))

(assert (= (and b!501059 res!302923) b!501057))

(assert (= (and b!501057 res!302920) b!501052))

(assert (= (and b!501052 res!302918) b!501053))

(assert (= (and b!501053 res!302925) b!501048))

(assert (= (and b!501048 res!302926) b!501046))

(assert (= (and b!501046 res!302922) b!501049))

(assert (= (and b!501049 res!302916) b!501055))

(assert (= (and b!501049 (not res!302919)) b!501047))

(assert (= (and b!501047 (not res!302927)) b!501058))

(assert (= (and b!501058 c!59342) b!501051))

(assert (= (and b!501058 (not c!59342)) b!501056))

(assert (= (and b!501051 res!302921) b!501054))

(declare-fun m!482189 () Bool)

(assert (=> b!501048 m!482189))

(declare-fun m!482191 () Bool)

(assert (=> b!501059 m!482191))

(assert (=> b!501059 m!482191))

(declare-fun m!482193 () Bool)

(assert (=> b!501059 m!482193))

(declare-fun m!482195 () Bool)

(assert (=> b!501046 m!482195))

(declare-fun m!482197 () Bool)

(assert (=> b!501053 m!482197))

(declare-fun m!482199 () Bool)

(assert (=> b!501057 m!482199))

(assert (=> b!501055 m!482191))

(assert (=> b!501055 m!482191))

(declare-fun m!482201 () Bool)

(assert (=> b!501055 m!482201))

(declare-fun m!482203 () Bool)

(assert (=> b!501052 m!482203))

(declare-fun m!482205 () Bool)

(assert (=> b!501051 m!482205))

(declare-fun m!482207 () Bool)

(assert (=> b!501051 m!482207))

(declare-fun m!482209 () Bool)

(assert (=> start!45512 m!482209))

(declare-fun m!482211 () Bool)

(assert (=> start!45512 m!482211))

(declare-fun m!482213 () Bool)

(assert (=> b!501049 m!482213))

(declare-fun m!482215 () Bool)

(assert (=> b!501049 m!482215))

(declare-fun m!482217 () Bool)

(assert (=> b!501049 m!482217))

(assert (=> b!501049 m!482191))

(declare-fun m!482219 () Bool)

(assert (=> b!501049 m!482219))

(declare-fun m!482221 () Bool)

(assert (=> b!501049 m!482221))

(declare-fun m!482223 () Bool)

(assert (=> b!501049 m!482223))

(assert (=> b!501049 m!482191))

(declare-fun m!482225 () Bool)

(assert (=> b!501049 m!482225))

(declare-fun m!482227 () Bool)

(assert (=> b!501049 m!482227))

(assert (=> b!501049 m!482191))

(declare-fun m!482229 () Bool)

(assert (=> b!501058 m!482229))

(declare-fun m!482231 () Bool)

(assert (=> b!501058 m!482231))

(assert (=> b!501058 m!482191))

(push 1)

(assert (not b!501052))

(assert (not b!501051))

(assert (not b!501057))

(assert (not b!501048))

(assert (not b!501055))

(assert (not b!501058))

(assert (not b!501046))

(assert (not b!501049))

(assert (not b!501059))

(assert (not b!501053))

(assert (not start!45512))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!501103 () Bool)

(declare-fun e!293553 () Bool)

(declare-fun e!293552 () Bool)

(assert (=> b!501103 (= e!293553 e!293552)))

(declare-fun lt!227654 () (_ BitVec 64))

(assert (=> b!501103 (= lt!227654 (select (arr!15527 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!227656 () Unit!15094)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!32297 (_ BitVec 64) (_ BitVec 32)) Unit!15094)

(assert (=> b!501103 (= lt!227656 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!227654 #b00000000000000000000000000000000))))

(assert (=> b!501103 (arrayContainsKey!0 a!3235 lt!227654 #b00000000000000000000000000000000)))

(declare-fun lt!227655 () Unit!15094)

(assert (=> b!501103 (= lt!227655 lt!227656)))

(declare-fun res!302944 () Bool)

(assert (=> b!501103 (= res!302944 (= (seekEntryOrOpen!0 (select (arr!15527 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4001 #b00000000000000000000000000000000)))))

(assert (=> b!501103 (=> (not res!302944) (not e!293552))))

(declare-fun b!501105 () Bool)

(declare-fun call!31454 () Bool)

(assert (=> b!501105 (= e!293553 call!31454)))

(declare-fun b!501104 () Bool)

(declare-fun e!293551 () Bool)

(assert (=> b!501104 (= e!293551 e!293553)))

(declare-fun c!59357 () Bool)

(assert (=> b!501104 (= c!59357 (validKeyInArray!0 (select (arr!15527 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!78419 () Bool)

(declare-fun res!302945 () Bool)

(assert (=> d!78419 (=> res!302945 e!293551)))

(assert (=> d!78419 (= res!302945 (bvsge #b00000000000000000000000000000000 (size!15891 a!3235)))))

(assert (=> d!78419 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!293551)))

(declare-fun bm!31451 () Bool)

(assert (=> bm!31451 (= call!31454 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!501106 () Bool)

(assert (=> b!501106 (= e!293552 call!31454)))

(assert (= (and d!78419 (not res!302945)) b!501104))

(assert (= (and b!501104 c!59357) b!501103))

(assert (= (and b!501104 (not c!59357)) b!501105))

(assert (= (and b!501103 res!302944) b!501106))

(assert (= (or b!501106 b!501105) bm!31451))

(declare-fun m!482259 () Bool)

(assert (=> b!501103 m!482259))

(declare-fun m!482263 () Bool)

(assert (=> b!501103 m!482263))

(declare-fun m!482265 () Bool)

(assert (=> b!501103 m!482265))

(assert (=> b!501103 m!482259))

(declare-fun m!482267 () Bool)

(assert (=> b!501103 m!482267))

(assert (=> b!501104 m!482259))

(assert (=> b!501104 m!482259))

(declare-fun m!482269 () Bool)

(assert (=> b!501104 m!482269))

(declare-fun m!482273 () Bool)

(assert (=> bm!31451 m!482273))

(assert (=> b!501048 d!78419))

(declare-fun d!78431 () Bool)

(assert (=> d!78431 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!45512 d!78431))

(declare-fun d!78437 () Bool)

(assert (=> d!78437 (= (array_inv!11301 a!3235) (bvsge (size!15891 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!45512 d!78437))

(declare-fun b!501183 () Bool)

(declare-fun e!293601 () SeekEntryResult!4001)

(declare-fun e!293603 () SeekEntryResult!4001)

(assert (=> b!501183 (= e!293601 e!293603)))

(declare-fun lt!227700 () (_ BitVec 64))

(declare-fun lt!227701 () SeekEntryResult!4001)

(assert (=> b!501183 (= lt!227700 (select (arr!15527 a!3235) (index!18188 lt!227701)))))

(declare-fun c!59384 () Bool)

(assert (=> b!501183 (= c!59384 (= lt!227700 k!2280))))

(declare-fun b!501184 () Bool)

(declare-fun c!59382 () Bool)

(assert (=> b!501184 (= c!59382 (= lt!227700 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!293602 () SeekEntryResult!4001)

(assert (=> b!501184 (= e!293603 e!293602)))

(declare-fun b!501185 () Bool)

(assert (=> b!501185 (= e!293602 (MissingZero!4001 (index!18188 lt!227701)))))

(declare-fun b!501186 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32297 (_ BitVec 32)) SeekEntryResult!4001)

(assert (=> b!501186 (= e!293602 (seekKeyOrZeroReturnVacant!0 (x!47241 lt!227701) (index!18188 lt!227701) (index!18188 lt!227701) k!2280 a!3235 mask!3524))))

(declare-fun b!501187 () Bool)

(assert (=> b!501187 (= e!293601 Undefined!4001)))

(declare-fun b!501188 () Bool)

(assert (=> b!501188 (= e!293603 (Found!4001 (index!18188 lt!227701)))))

(declare-fun d!78439 () Bool)

(declare-fun lt!227699 () SeekEntryResult!4001)

(assert (=> d!78439 (and (or (is-Undefined!4001 lt!227699) (not (is-Found!4001 lt!227699)) (and (bvsge (index!18187 lt!227699) #b00000000000000000000000000000000) (bvslt (index!18187 lt!227699) (size!15891 a!3235)))) (or (is-Undefined!4001 lt!227699) (is-Found!4001 lt!227699) (not (is-MissingZero!4001 lt!227699)) (and (bvsge (index!18186 lt!227699) #b00000000000000000000000000000000) (bvslt (index!18186 lt!227699) (size!15891 a!3235)))) (or (is-Undefined!4001 lt!227699) (is-Found!4001 lt!227699) (is-MissingZero!4001 lt!227699) (not (is-MissingVacant!4001 lt!227699)) (and (bvsge (index!18189 lt!227699) #b00000000000000000000000000000000) (bvslt (index!18189 lt!227699) (size!15891 a!3235)))) (or (is-Undefined!4001 lt!227699) (ite (is-Found!4001 lt!227699) (= (select (arr!15527 a!3235) (index!18187 lt!227699)) k!2280) (ite (is-MissingZero!4001 lt!227699) (= (select (arr!15527 a!3235) (index!18186 lt!227699)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4001 lt!227699) (= (select (arr!15527 a!3235) (index!18189 lt!227699)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!78439 (= lt!227699 e!293601)))

(declare-fun c!59383 () Bool)

(assert (=> d!78439 (= c!59383 (and (is-Intermediate!4001 lt!227701) (undefined!4813 lt!227701)))))

(assert (=> d!78439 (= lt!227701 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!78439 (validMask!0 mask!3524)))

(assert (=> d!78439 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!227699)))

(assert (= (and d!78439 c!59383) b!501187))

(assert (= (and d!78439 (not c!59383)) b!501183))

(assert (= (and b!501183 c!59384) b!501188))

(assert (= (and b!501183 (not c!59384)) b!501184))

(assert (= (and b!501184 c!59382) b!501185))

(assert (= (and b!501184 (not c!59382)) b!501186))

(declare-fun m!482291 () Bool)

(assert (=> b!501183 m!482291))

(declare-fun m!482293 () Bool)

(assert (=> b!501186 m!482293))

(declare-fun m!482295 () Bool)

(assert (=> d!78439 m!482295))

(assert (=> d!78439 m!482209))

(declare-fun m!482297 () Bool)

(assert (=> d!78439 m!482297))

(declare-fun m!482299 () Bool)

(assert (=> d!78439 m!482299))

(declare-fun m!482301 () Bool)

(assert (=> d!78439 m!482301))

(assert (=> d!78439 m!482301))

(declare-fun m!482303 () Bool)

(assert (=> d!78439 m!482303))

(assert (=> b!501053 d!78439))

(declare-fun d!78451 () Bool)

(assert (=> d!78451 (= (index!18188 lt!227630) i!1204)))

(declare-fun lt!227706 () Unit!15094)

(declare-fun choose!104 (array!32297 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15094)

(assert (=> d!78451 (= lt!227706 (choose!104 a!3235 i!1204 k!2280 j!176 lt!227626 #b00000000000000000000000000000000 (index!18188 lt!227630) (x!47241 lt!227630) mask!3524))))

(assert (=> d!78451 (validMask!0 mask!3524)))

(assert (=> d!78451 (= (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!227626 #b00000000000000000000000000000000 (index!18188 lt!227630) (x!47241 lt!227630) mask!3524) lt!227706)))

(declare-fun bs!15926 () Bool)

(assert (= bs!15926 d!78451))

(declare-fun m!482313 () Bool)

(assert (=> bs!15926 m!482313))

(assert (=> bs!15926 m!482209))

(assert (=> b!501058 d!78451))

(declare-fun b!501277 () Bool)

(declare-fun e!293656 () SeekEntryResult!4001)

(assert (=> b!501277 (= e!293656 (Intermediate!4001 false lt!227623 #b00000000000000000000000000000000))))

(declare-fun b!501278 () Bool)

(declare-fun e!293659 () Bool)

(declare-fun lt!227744 () SeekEntryResult!4001)

(assert (=> b!501278 (= e!293659 (bvsge (x!47241 lt!227744) #b01111111111111111111111111111110))))

(declare-fun b!501279 () Bool)

(assert (=> b!501279 (and (bvsge (index!18188 lt!227744) #b00000000000000000000000000000000) (bvslt (index!18188 lt!227744) (size!15891 lt!227625)))))

(declare-fun res!303002 () Bool)

(assert (=> b!501279 (= res!303002 (= (select (arr!15527 lt!227625) (index!18188 lt!227744)) lt!227627))))

(declare-fun e!293657 () Bool)

(assert (=> b!501279 (=> res!303002 e!293657)))

(declare-fun e!293658 () Bool)

(assert (=> b!501279 (= e!293658 e!293657)))

(declare-fun b!501280 () Bool)

(assert (=> b!501280 (and (bvsge (index!18188 lt!227744) #b00000000000000000000000000000000) (bvslt (index!18188 lt!227744) (size!15891 lt!227625)))))

(declare-fun res!303003 () Bool)

(assert (=> b!501280 (= res!303003 (= (select (arr!15527 lt!227625) (index!18188 lt!227744)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!501280 (=> res!303003 e!293657)))

(declare-fun d!78455 () Bool)

(assert (=> d!78455 e!293659))

(declare-fun c!59417 () Bool)

(assert (=> d!78455 (= c!59417 (and (is-Intermediate!4001 lt!227744) (undefined!4813 lt!227744)))))

(declare-fun e!293655 () SeekEntryResult!4001)

(assert (=> d!78455 (= lt!227744 e!293655)))

(declare-fun c!59418 () Bool)

(assert (=> d!78455 (= c!59418 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!227745 () (_ BitVec 64))

(assert (=> d!78455 (= lt!227745 (select (arr!15527 lt!227625) lt!227623))))

(assert (=> d!78455 (validMask!0 mask!3524)))

(assert (=> d!78455 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227623 lt!227627 lt!227625 mask!3524) lt!227744)))

(declare-fun b!501281 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!501281 (= e!293656 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!227623 #b00000000000000000000000000000000 mask!3524) lt!227627 lt!227625 mask!3524))))

(declare-fun b!501282 () Bool)

(assert (=> b!501282 (= e!293659 e!293658)))

(declare-fun res!303001 () Bool)

(assert (=> b!501282 (= res!303001 (and (is-Intermediate!4001 lt!227744) (not (undefined!4813 lt!227744)) (bvslt (x!47241 lt!227744) #b01111111111111111111111111111110) (bvsge (x!47241 lt!227744) #b00000000000000000000000000000000) (bvsge (x!47241 lt!227744) #b00000000000000000000000000000000)))))

(assert (=> b!501282 (=> (not res!303001) (not e!293658))))

(declare-fun b!501283 () Bool)

(assert (=> b!501283 (= e!293655 e!293656)))

(declare-fun c!59416 () Bool)

(assert (=> b!501283 (= c!59416 (or (= lt!227745 lt!227627) (= (bvadd lt!227745 lt!227745) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!501284 () Bool)

(assert (=> b!501284 (and (bvsge (index!18188 lt!227744) #b00000000000000000000000000000000) (bvslt (index!18188 lt!227744) (size!15891 lt!227625)))))

(assert (=> b!501284 (= e!293657 (= (select (arr!15527 lt!227625) (index!18188 lt!227744)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!501285 () Bool)

(assert (=> b!501285 (= e!293655 (Intermediate!4001 true lt!227623 #b00000000000000000000000000000000))))

(assert (= (and d!78455 c!59418) b!501285))

(assert (= (and d!78455 (not c!59418)) b!501283))

(assert (= (and b!501283 c!59416) b!501277))

(assert (= (and b!501283 (not c!59416)) b!501281))

(assert (= (and d!78455 c!59417) b!501278))

(assert (= (and d!78455 (not c!59417)) b!501282))

(assert (= (and b!501282 res!303001) b!501279))

(assert (= (and b!501279 (not res!303002)) b!501280))

(assert (= (and b!501280 (not res!303003)) b!501284))

(declare-fun m!482367 () Bool)

(assert (=> b!501279 m!482367))

(declare-fun m!482369 () Bool)

(assert (=> b!501281 m!482369))

(assert (=> b!501281 m!482369))

(declare-fun m!482371 () Bool)

(assert (=> b!501281 m!482371))

(assert (=> b!501284 m!482367))

(declare-fun m!482373 () Bool)

(assert (=> d!78455 m!482373))

(assert (=> d!78455 m!482209))

(assert (=> b!501280 m!482367))

(assert (=> b!501049 d!78455))

(declare-fun d!78471 () Bool)

(declare-fun lt!227754 () (_ BitVec 32))

(declare-fun lt!227753 () (_ BitVec 32))

(assert (=> d!78471 (= lt!227754 (bvmul (bvxor lt!227753 (bvlshr lt!227753 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!78471 (= lt!227753 ((_ extract 31 0) (bvand (bvxor (select (arr!15527 a!3235) j!176) (bvlshr (select (arr!15527 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!78471 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!303004 (let ((h!10611 ((_ extract 31 0) (bvand (bvxor (select (arr!15527 a!3235) j!176) (bvlshr (select (arr!15527 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!47251 (bvmul (bvxor h!10611 (bvlshr h!10611 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!47251 (bvlshr x!47251 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!303004 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!303004 #b00000000000000000000000000000000))))))

