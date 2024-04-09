; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44892 () Bool)

(assert start!44892)

(declare-fun b!492336 () Bool)

(declare-fun res!295242 () Bool)

(declare-fun e!289216 () Bool)

(assert (=> b!492336 (=> (not res!295242) (not e!289216))))

(declare-datatypes ((array!31854 0))(
  ( (array!31855 (arr!15310 (Array (_ BitVec 32) (_ BitVec 64))) (size!15674 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31854)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31854 (_ BitVec 32)) Bool)

(assert (=> b!492336 (= res!295242 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!492337 () Bool)

(declare-fun e!289213 () Bool)

(assert (=> b!492337 (= e!289216 (not e!289213))))

(declare-fun res!295245 () Bool)

(assert (=> b!492337 (=> res!295245 e!289213)))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!222628 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3784 0))(
  ( (MissingZero!3784 (index!17315 (_ BitVec 32))) (Found!3784 (index!17316 (_ BitVec 32))) (Intermediate!3784 (undefined!4596 Bool) (index!17317 (_ BitVec 32)) (x!46427 (_ BitVec 32))) (Undefined!3784) (MissingVacant!3784 (index!17318 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31854 (_ BitVec 32)) SeekEntryResult!3784)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!492337 (= res!295245 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!222628 (select (arr!15310 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!15310 a!3235) i!1204 k0!2280) j!176) mask!3524) (select (store (arr!15310 a!3235) i!1204 k0!2280) j!176) (array!31855 (store (arr!15310 a!3235) i!1204 k0!2280) (size!15674 a!3235)) mask!3524)))))

(assert (=> b!492337 (= lt!222628 (toIndex!0 (select (arr!15310 a!3235) j!176) mask!3524))))

(declare-fun e!289215 () Bool)

(assert (=> b!492337 e!289215))

(declare-fun res!295246 () Bool)

(assert (=> b!492337 (=> (not res!295246) (not e!289215))))

(assert (=> b!492337 (= res!295246 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14506 0))(
  ( (Unit!14507) )
))
(declare-fun lt!222629 () Unit!14506)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31854 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14506)

(assert (=> b!492337 (= lt!222629 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!492338 () Bool)

(declare-fun res!295239 () Bool)

(declare-fun e!289214 () Bool)

(assert (=> b!492338 (=> (not res!295239) (not e!289214))))

(assert (=> b!492338 (= res!295239 (and (= (size!15674 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15674 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15674 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!492339 () Bool)

(declare-fun res!295238 () Bool)

(assert (=> b!492339 (=> (not res!295238) (not e!289214))))

(declare-fun arrayContainsKey!0 (array!31854 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!492339 (= res!295238 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!492340 () Bool)

(declare-fun res!295243 () Bool)

(assert (=> b!492340 (=> (not res!295243) (not e!289214))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!492340 (= res!295243 (validKeyInArray!0 (select (arr!15310 a!3235) j!176)))))

(declare-fun b!492341 () Bool)

(declare-fun res!295247 () Bool)

(assert (=> b!492341 (=> (not res!295247) (not e!289214))))

(assert (=> b!492341 (= res!295247 (validKeyInArray!0 k0!2280))))

(declare-fun b!492342 () Bool)

(assert (=> b!492342 (= e!289213 (or (bvslt mask!3524 #b00000000000000000000000000000000) (and (bvsge lt!222628 #b00000000000000000000000000000000) (bvslt lt!222628 (bvadd #b00000000000000000000000000000001 mask!3524)))))))

(declare-fun b!492343 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31854 (_ BitVec 32)) SeekEntryResult!3784)

(assert (=> b!492343 (= e!289215 (= (seekEntryOrOpen!0 (select (arr!15310 a!3235) j!176) a!3235 mask!3524) (Found!3784 j!176)))))

(declare-fun b!492344 () Bool)

(assert (=> b!492344 (= e!289214 e!289216)))

(declare-fun res!295244 () Bool)

(assert (=> b!492344 (=> (not res!295244) (not e!289216))))

(declare-fun lt!222627 () SeekEntryResult!3784)

(assert (=> b!492344 (= res!295244 (or (= lt!222627 (MissingZero!3784 i!1204)) (= lt!222627 (MissingVacant!3784 i!1204))))))

(assert (=> b!492344 (= lt!222627 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!492335 () Bool)

(declare-fun res!295241 () Bool)

(assert (=> b!492335 (=> (not res!295241) (not e!289216))))

(declare-datatypes ((List!9521 0))(
  ( (Nil!9518) (Cons!9517 (h!10382 (_ BitVec 64)) (t!15757 List!9521)) )
))
(declare-fun arrayNoDuplicates!0 (array!31854 (_ BitVec 32) List!9521) Bool)

(assert (=> b!492335 (= res!295241 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9518))))

(declare-fun res!295240 () Bool)

(assert (=> start!44892 (=> (not res!295240) (not e!289214))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44892 (= res!295240 (validMask!0 mask!3524))))

(assert (=> start!44892 e!289214))

(assert (=> start!44892 true))

(declare-fun array_inv!11084 (array!31854) Bool)

(assert (=> start!44892 (array_inv!11084 a!3235)))

(assert (= (and start!44892 res!295240) b!492338))

(assert (= (and b!492338 res!295239) b!492340))

(assert (= (and b!492340 res!295243) b!492341))

(assert (= (and b!492341 res!295247) b!492339))

(assert (= (and b!492339 res!295238) b!492344))

(assert (= (and b!492344 res!295244) b!492336))

(assert (= (and b!492336 res!295242) b!492335))

(assert (= (and b!492335 res!295241) b!492337))

(assert (= (and b!492337 res!295246) b!492343))

(assert (= (and b!492337 (not res!295245)) b!492342))

(declare-fun m!473125 () Bool)

(assert (=> b!492339 m!473125))

(declare-fun m!473127 () Bool)

(assert (=> b!492344 m!473127))

(declare-fun m!473129 () Bool)

(assert (=> start!44892 m!473129))

(declare-fun m!473131 () Bool)

(assert (=> start!44892 m!473131))

(declare-fun m!473133 () Bool)

(assert (=> b!492337 m!473133))

(declare-fun m!473135 () Bool)

(assert (=> b!492337 m!473135))

(declare-fun m!473137 () Bool)

(assert (=> b!492337 m!473137))

(declare-fun m!473139 () Bool)

(assert (=> b!492337 m!473139))

(declare-fun m!473141 () Bool)

(assert (=> b!492337 m!473141))

(declare-fun m!473143 () Bool)

(assert (=> b!492337 m!473143))

(assert (=> b!492337 m!473137))

(declare-fun m!473145 () Bool)

(assert (=> b!492337 m!473145))

(assert (=> b!492337 m!473139))

(declare-fun m!473147 () Bool)

(assert (=> b!492337 m!473147))

(assert (=> b!492337 m!473139))

(declare-fun m!473149 () Bool)

(assert (=> b!492337 m!473149))

(assert (=> b!492337 m!473137))

(assert (=> b!492337 m!473143))

(declare-fun m!473151 () Bool)

(assert (=> b!492336 m!473151))

(declare-fun m!473153 () Bool)

(assert (=> b!492335 m!473153))

(assert (=> b!492343 m!473139))

(assert (=> b!492343 m!473139))

(declare-fun m!473155 () Bool)

(assert (=> b!492343 m!473155))

(assert (=> b!492340 m!473139))

(assert (=> b!492340 m!473139))

(declare-fun m!473157 () Bool)

(assert (=> b!492340 m!473157))

(declare-fun m!473159 () Bool)

(assert (=> b!492341 m!473159))

(check-sat (not b!492340) (not b!492343) (not b!492344) (not b!492335) (not b!492336) (not b!492341) (not start!44892) (not b!492339) (not b!492337))
(check-sat)
(get-model)

(declare-fun b!492387 () Bool)

(declare-fun e!289239 () SeekEntryResult!3784)

(declare-fun e!289238 () SeekEntryResult!3784)

(assert (=> b!492387 (= e!289239 e!289238)))

(declare-fun lt!222647 () (_ BitVec 64))

(declare-fun lt!222645 () SeekEntryResult!3784)

(assert (=> b!492387 (= lt!222647 (select (arr!15310 a!3235) (index!17317 lt!222645)))))

(declare-fun c!58828 () Bool)

(assert (=> b!492387 (= c!58828 (= lt!222647 (select (arr!15310 a!3235) j!176)))))

(declare-fun b!492388 () Bool)

(declare-fun c!58827 () Bool)

(assert (=> b!492388 (= c!58827 (= lt!222647 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!289240 () SeekEntryResult!3784)

(assert (=> b!492388 (= e!289238 e!289240)))

(declare-fun b!492389 () Bool)

(assert (=> b!492389 (= e!289240 (MissingZero!3784 (index!17317 lt!222645)))))

(declare-fun b!492390 () Bool)

(assert (=> b!492390 (= e!289239 Undefined!3784)))

(declare-fun b!492391 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31854 (_ BitVec 32)) SeekEntryResult!3784)

(assert (=> b!492391 (= e!289240 (seekKeyOrZeroReturnVacant!0 (x!46427 lt!222645) (index!17317 lt!222645) (index!17317 lt!222645) (select (arr!15310 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!492392 () Bool)

(assert (=> b!492392 (= e!289238 (Found!3784 (index!17317 lt!222645)))))

(declare-fun d!77975 () Bool)

(declare-fun lt!222646 () SeekEntryResult!3784)

(get-info :version)

(assert (=> d!77975 (and (or ((_ is Undefined!3784) lt!222646) (not ((_ is Found!3784) lt!222646)) (and (bvsge (index!17316 lt!222646) #b00000000000000000000000000000000) (bvslt (index!17316 lt!222646) (size!15674 a!3235)))) (or ((_ is Undefined!3784) lt!222646) ((_ is Found!3784) lt!222646) (not ((_ is MissingZero!3784) lt!222646)) (and (bvsge (index!17315 lt!222646) #b00000000000000000000000000000000) (bvslt (index!17315 lt!222646) (size!15674 a!3235)))) (or ((_ is Undefined!3784) lt!222646) ((_ is Found!3784) lt!222646) ((_ is MissingZero!3784) lt!222646) (not ((_ is MissingVacant!3784) lt!222646)) (and (bvsge (index!17318 lt!222646) #b00000000000000000000000000000000) (bvslt (index!17318 lt!222646) (size!15674 a!3235)))) (or ((_ is Undefined!3784) lt!222646) (ite ((_ is Found!3784) lt!222646) (= (select (arr!15310 a!3235) (index!17316 lt!222646)) (select (arr!15310 a!3235) j!176)) (ite ((_ is MissingZero!3784) lt!222646) (= (select (arr!15310 a!3235) (index!17315 lt!222646)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3784) lt!222646) (= (select (arr!15310 a!3235) (index!17318 lt!222646)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!77975 (= lt!222646 e!289239)))

(declare-fun c!58829 () Bool)

(assert (=> d!77975 (= c!58829 (and ((_ is Intermediate!3784) lt!222645) (undefined!4596 lt!222645)))))

(assert (=> d!77975 (= lt!222645 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15310 a!3235) j!176) mask!3524) (select (arr!15310 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!77975 (validMask!0 mask!3524)))

(assert (=> d!77975 (= (seekEntryOrOpen!0 (select (arr!15310 a!3235) j!176) a!3235 mask!3524) lt!222646)))

(assert (= (and d!77975 c!58829) b!492390))

(assert (= (and d!77975 (not c!58829)) b!492387))

(assert (= (and b!492387 c!58828) b!492392))

(assert (= (and b!492387 (not c!58828)) b!492388))

(assert (= (and b!492388 c!58827) b!492389))

(assert (= (and b!492388 (not c!58827)) b!492391))

(declare-fun m!473197 () Bool)

(assert (=> b!492387 m!473197))

(assert (=> b!492391 m!473139))

(declare-fun m!473199 () Bool)

(assert (=> b!492391 m!473199))

(declare-fun m!473201 () Bool)

(assert (=> d!77975 m!473201))

(declare-fun m!473203 () Bool)

(assert (=> d!77975 m!473203))

(assert (=> d!77975 m!473139))

(assert (=> d!77975 m!473141))

(assert (=> d!77975 m!473141))

(assert (=> d!77975 m!473139))

(declare-fun m!473205 () Bool)

(assert (=> d!77975 m!473205))

(assert (=> d!77975 m!473129))

(declare-fun m!473207 () Bool)

(assert (=> d!77975 m!473207))

(assert (=> b!492343 d!77975))

(declare-fun bm!31385 () Bool)

(declare-fun call!31388 () Bool)

(assert (=> bm!31385 (= call!31388 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun d!77977 () Bool)

(declare-fun res!295283 () Bool)

(declare-fun e!289249 () Bool)

(assert (=> d!77977 (=> res!295283 e!289249)))

(assert (=> d!77977 (= res!295283 (bvsge #b00000000000000000000000000000000 (size!15674 a!3235)))))

(assert (=> d!77977 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!289249)))

(declare-fun b!492401 () Bool)

(declare-fun e!289248 () Bool)

(assert (=> b!492401 (= e!289249 e!289248)))

(declare-fun c!58832 () Bool)

(assert (=> b!492401 (= c!58832 (validKeyInArray!0 (select (arr!15310 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!492402 () Bool)

(declare-fun e!289247 () Bool)

(assert (=> b!492402 (= e!289248 e!289247)))

(declare-fun lt!222655 () (_ BitVec 64))

(assert (=> b!492402 (= lt!222655 (select (arr!15310 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!222656 () Unit!14506)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!31854 (_ BitVec 64) (_ BitVec 32)) Unit!14506)

(assert (=> b!492402 (= lt!222656 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!222655 #b00000000000000000000000000000000))))

(assert (=> b!492402 (arrayContainsKey!0 a!3235 lt!222655 #b00000000000000000000000000000000)))

(declare-fun lt!222654 () Unit!14506)

(assert (=> b!492402 (= lt!222654 lt!222656)))

(declare-fun res!295282 () Bool)

(assert (=> b!492402 (= res!295282 (= (seekEntryOrOpen!0 (select (arr!15310 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!3784 #b00000000000000000000000000000000)))))

(assert (=> b!492402 (=> (not res!295282) (not e!289247))))

(declare-fun b!492403 () Bool)

(assert (=> b!492403 (= e!289248 call!31388)))

(declare-fun b!492404 () Bool)

(assert (=> b!492404 (= e!289247 call!31388)))

(assert (= (and d!77977 (not res!295283)) b!492401))

(assert (= (and b!492401 c!58832) b!492402))

(assert (= (and b!492401 (not c!58832)) b!492403))

(assert (= (and b!492402 res!295282) b!492404))

(assert (= (or b!492404 b!492403) bm!31385))

(declare-fun m!473209 () Bool)

(assert (=> bm!31385 m!473209))

(declare-fun m!473211 () Bool)

(assert (=> b!492401 m!473211))

(assert (=> b!492401 m!473211))

(declare-fun m!473213 () Bool)

(assert (=> b!492401 m!473213))

(assert (=> b!492402 m!473211))

(declare-fun m!473215 () Bool)

(assert (=> b!492402 m!473215))

(declare-fun m!473217 () Bool)

(assert (=> b!492402 m!473217))

(assert (=> b!492402 m!473211))

(declare-fun m!473219 () Bool)

(assert (=> b!492402 m!473219))

(assert (=> b!492336 d!77977))

(declare-fun d!77985 () Bool)

(declare-fun lt!222662 () (_ BitVec 32))

(declare-fun lt!222661 () (_ BitVec 32))

(assert (=> d!77985 (= lt!222662 (bvmul (bvxor lt!222661 (bvlshr lt!222661 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!77985 (= lt!222661 ((_ extract 31 0) (bvand (bvxor (select (arr!15310 a!3235) j!176) (bvlshr (select (arr!15310 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!77985 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!295284 (let ((h!10384 ((_ extract 31 0) (bvand (bvxor (select (arr!15310 a!3235) j!176) (bvlshr (select (arr!15310 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!46429 (bvmul (bvxor h!10384 (bvlshr h!10384 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!46429 (bvlshr x!46429 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!295284 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!295284 #b00000000000000000000000000000000))))))

(assert (=> d!77985 (= (toIndex!0 (select (arr!15310 a!3235) j!176) mask!3524) (bvand (bvxor lt!222662 (bvlshr lt!222662 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!492337 d!77985))

(declare-fun call!31389 () Bool)

(declare-fun bm!31386 () Bool)

(assert (=> bm!31386 (= call!31389 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun d!77987 () Bool)

(declare-fun res!295286 () Bool)

(declare-fun e!289252 () Bool)

(assert (=> d!77987 (=> res!295286 e!289252)))

(assert (=> d!77987 (= res!295286 (bvsge j!176 (size!15674 a!3235)))))

(assert (=> d!77987 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!289252)))

(declare-fun b!492405 () Bool)

(declare-fun e!289251 () Bool)

(assert (=> b!492405 (= e!289252 e!289251)))

(declare-fun c!58833 () Bool)

(assert (=> b!492405 (= c!58833 (validKeyInArray!0 (select (arr!15310 a!3235) j!176)))))

(declare-fun b!492406 () Bool)

(declare-fun e!289250 () Bool)

(assert (=> b!492406 (= e!289251 e!289250)))

(declare-fun lt!222664 () (_ BitVec 64))

(assert (=> b!492406 (= lt!222664 (select (arr!15310 a!3235) j!176))))

(declare-fun lt!222665 () Unit!14506)

(assert (=> b!492406 (= lt!222665 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!222664 j!176))))

(assert (=> b!492406 (arrayContainsKey!0 a!3235 lt!222664 #b00000000000000000000000000000000)))

(declare-fun lt!222663 () Unit!14506)

(assert (=> b!492406 (= lt!222663 lt!222665)))

(declare-fun res!295285 () Bool)

(assert (=> b!492406 (= res!295285 (= (seekEntryOrOpen!0 (select (arr!15310 a!3235) j!176) a!3235 mask!3524) (Found!3784 j!176)))))

(assert (=> b!492406 (=> (not res!295285) (not e!289250))))

(declare-fun b!492407 () Bool)

(assert (=> b!492407 (= e!289251 call!31389)))

(declare-fun b!492408 () Bool)

(assert (=> b!492408 (= e!289250 call!31389)))

(assert (= (and d!77987 (not res!295286)) b!492405))

(assert (= (and b!492405 c!58833) b!492406))

(assert (= (and b!492405 (not c!58833)) b!492407))

(assert (= (and b!492406 res!295285) b!492408))

(assert (= (or b!492408 b!492407) bm!31386))

(declare-fun m!473221 () Bool)

(assert (=> bm!31386 m!473221))

(assert (=> b!492405 m!473139))

(assert (=> b!492405 m!473139))

(assert (=> b!492405 m!473157))

(assert (=> b!492406 m!473139))

(declare-fun m!473223 () Bool)

(assert (=> b!492406 m!473223))

(declare-fun m!473225 () Bool)

(assert (=> b!492406 m!473225))

(assert (=> b!492406 m!473139))

(assert (=> b!492406 m!473155))

(assert (=> b!492337 d!77987))

(declare-fun b!492469 () Bool)

(declare-fun e!289289 () SeekEntryResult!3784)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!492469 (= e!289289 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!222628 #b00000000000000000000000000000000 mask!3524) (select (arr!15310 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!492470 () Bool)

(declare-fun e!289288 () SeekEntryResult!3784)

(assert (=> b!492470 (= e!289288 (Intermediate!3784 true lt!222628 #b00000000000000000000000000000000))))

(declare-fun b!492471 () Bool)

(declare-fun e!289291 () Bool)

(declare-fun lt!222689 () SeekEntryResult!3784)

(assert (=> b!492471 (= e!289291 (bvsge (x!46427 lt!222689) #b01111111111111111111111111111110))))

(declare-fun b!492472 () Bool)

(declare-fun e!289290 () Bool)

(assert (=> b!492472 (= e!289291 e!289290)))

(declare-fun res!295299 () Bool)

(assert (=> b!492472 (= res!295299 (and ((_ is Intermediate!3784) lt!222689) (not (undefined!4596 lt!222689)) (bvslt (x!46427 lt!222689) #b01111111111111111111111111111110) (bvsge (x!46427 lt!222689) #b00000000000000000000000000000000) (bvsge (x!46427 lt!222689) #b00000000000000000000000000000000)))))

(assert (=> b!492472 (=> (not res!295299) (not e!289290))))

(declare-fun b!492473 () Bool)

(assert (=> b!492473 (= e!289288 e!289289)))

(declare-fun lt!222688 () (_ BitVec 64))

(declare-fun c!58859 () Bool)

(assert (=> b!492473 (= c!58859 (or (= lt!222688 (select (arr!15310 a!3235) j!176)) (= (bvadd lt!222688 lt!222688) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!492474 () Bool)

(assert (=> b!492474 (and (bvsge (index!17317 lt!222689) #b00000000000000000000000000000000) (bvslt (index!17317 lt!222689) (size!15674 a!3235)))))

(declare-fun res!295301 () Bool)

(assert (=> b!492474 (= res!295301 (= (select (arr!15310 a!3235) (index!17317 lt!222689)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!289287 () Bool)

(assert (=> b!492474 (=> res!295301 e!289287)))

(declare-fun b!492475 () Bool)

(assert (=> b!492475 (and (bvsge (index!17317 lt!222689) #b00000000000000000000000000000000) (bvslt (index!17317 lt!222689) (size!15674 a!3235)))))

(assert (=> b!492475 (= e!289287 (= (select (arr!15310 a!3235) (index!17317 lt!222689)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!492476 () Bool)

(assert (=> b!492476 (= e!289289 (Intermediate!3784 false lt!222628 #b00000000000000000000000000000000))))

(declare-fun d!77989 () Bool)

(assert (=> d!77989 e!289291))

(declare-fun c!58860 () Bool)

(assert (=> d!77989 (= c!58860 (and ((_ is Intermediate!3784) lt!222689) (undefined!4596 lt!222689)))))

(assert (=> d!77989 (= lt!222689 e!289288)))

(declare-fun c!58858 () Bool)

(assert (=> d!77989 (= c!58858 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!77989 (= lt!222688 (select (arr!15310 a!3235) lt!222628))))

(assert (=> d!77989 (validMask!0 mask!3524)))

(assert (=> d!77989 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!222628 (select (arr!15310 a!3235) j!176) a!3235 mask!3524) lt!222689)))

(declare-fun b!492477 () Bool)

(assert (=> b!492477 (and (bvsge (index!17317 lt!222689) #b00000000000000000000000000000000) (bvslt (index!17317 lt!222689) (size!15674 a!3235)))))

(declare-fun res!295300 () Bool)

(assert (=> b!492477 (= res!295300 (= (select (arr!15310 a!3235) (index!17317 lt!222689)) (select (arr!15310 a!3235) j!176)))))

(assert (=> b!492477 (=> res!295300 e!289287)))

(assert (=> b!492477 (= e!289290 e!289287)))

(assert (= (and d!77989 c!58858) b!492470))

(assert (= (and d!77989 (not c!58858)) b!492473))

(assert (= (and b!492473 c!58859) b!492476))

(assert (= (and b!492473 (not c!58859)) b!492469))

(assert (= (and d!77989 c!58860) b!492471))

(assert (= (and d!77989 (not c!58860)) b!492472))

(assert (= (and b!492472 res!295299) b!492477))

(assert (= (and b!492477 (not res!295300)) b!492474))

(assert (= (and b!492474 (not res!295301)) b!492475))

(declare-fun m!473255 () Bool)

(assert (=> b!492475 m!473255))

(declare-fun m!473257 () Bool)

(assert (=> b!492469 m!473257))

(assert (=> b!492469 m!473257))

(assert (=> b!492469 m!473139))

(declare-fun m!473259 () Bool)

(assert (=> b!492469 m!473259))

(assert (=> b!492477 m!473255))

(declare-fun m!473261 () Bool)

(assert (=> d!77989 m!473261))

(assert (=> d!77989 m!473129))

(assert (=> b!492474 m!473255))

(assert (=> b!492337 d!77989))

(declare-fun d!77999 () Bool)

(assert (=> d!77999 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!222692 () Unit!14506)

(declare-fun choose!38 (array!31854 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14506)

(assert (=> d!77999 (= lt!222692 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!77999 (validMask!0 mask!3524)))

(assert (=> d!77999 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!222692)))

(declare-fun bs!15699 () Bool)

(assert (= bs!15699 d!77999))

(assert (=> bs!15699 m!473147))

(declare-fun m!473263 () Bool)

(assert (=> bs!15699 m!473263))

(assert (=> bs!15699 m!473129))

(assert (=> b!492337 d!77999))

(declare-fun d!78009 () Bool)

(declare-fun lt!222694 () (_ BitVec 32))

(declare-fun lt!222693 () (_ BitVec 32))

(assert (=> d!78009 (= lt!222694 (bvmul (bvxor lt!222693 (bvlshr lt!222693 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!78009 (= lt!222693 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15310 a!3235) i!1204 k0!2280) j!176) (bvlshr (select (store (arr!15310 a!3235) i!1204 k0!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!78009 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!295284 (let ((h!10384 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15310 a!3235) i!1204 k0!2280) j!176) (bvlshr (select (store (arr!15310 a!3235) i!1204 k0!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!46429 (bvmul (bvxor h!10384 (bvlshr h!10384 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!46429 (bvlshr x!46429 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!295284 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!295284 #b00000000000000000000000000000000))))))

(assert (=> d!78009 (= (toIndex!0 (select (store (arr!15310 a!3235) i!1204 k0!2280) j!176) mask!3524) (bvand (bvxor lt!222694 (bvlshr lt!222694 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!492337 d!78009))

(declare-fun e!289294 () SeekEntryResult!3784)

(declare-fun b!492478 () Bool)

(assert (=> b!492478 (= e!289294 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!15310 a!3235) i!1204 k0!2280) j!176) mask!3524) #b00000000000000000000000000000000 mask!3524) (select (store (arr!15310 a!3235) i!1204 k0!2280) j!176) (array!31855 (store (arr!15310 a!3235) i!1204 k0!2280) (size!15674 a!3235)) mask!3524))))

(declare-fun e!289293 () SeekEntryResult!3784)

(declare-fun b!492479 () Bool)

(assert (=> b!492479 (= e!289293 (Intermediate!3784 true (toIndex!0 (select (store (arr!15310 a!3235) i!1204 k0!2280) j!176) mask!3524) #b00000000000000000000000000000000))))

(declare-fun b!492480 () Bool)

(declare-fun e!289296 () Bool)

(declare-fun lt!222696 () SeekEntryResult!3784)

(assert (=> b!492480 (= e!289296 (bvsge (x!46427 lt!222696) #b01111111111111111111111111111110))))

(declare-fun b!492481 () Bool)

(declare-fun e!289295 () Bool)

(assert (=> b!492481 (= e!289296 e!289295)))

(declare-fun res!295302 () Bool)

(assert (=> b!492481 (= res!295302 (and ((_ is Intermediate!3784) lt!222696) (not (undefined!4596 lt!222696)) (bvslt (x!46427 lt!222696) #b01111111111111111111111111111110) (bvsge (x!46427 lt!222696) #b00000000000000000000000000000000) (bvsge (x!46427 lt!222696) #b00000000000000000000000000000000)))))

(assert (=> b!492481 (=> (not res!295302) (not e!289295))))

(declare-fun b!492482 () Bool)

(assert (=> b!492482 (= e!289293 e!289294)))

(declare-fun lt!222695 () (_ BitVec 64))

(declare-fun c!58862 () Bool)

(assert (=> b!492482 (= c!58862 (or (= lt!222695 (select (store (arr!15310 a!3235) i!1204 k0!2280) j!176)) (= (bvadd lt!222695 lt!222695) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!492483 () Bool)

(assert (=> b!492483 (and (bvsge (index!17317 lt!222696) #b00000000000000000000000000000000) (bvslt (index!17317 lt!222696) (size!15674 (array!31855 (store (arr!15310 a!3235) i!1204 k0!2280) (size!15674 a!3235)))))))

(declare-fun res!295304 () Bool)

(assert (=> b!492483 (= res!295304 (= (select (arr!15310 (array!31855 (store (arr!15310 a!3235) i!1204 k0!2280) (size!15674 a!3235))) (index!17317 lt!222696)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!289292 () Bool)

(assert (=> b!492483 (=> res!295304 e!289292)))

(declare-fun b!492484 () Bool)

(assert (=> b!492484 (and (bvsge (index!17317 lt!222696) #b00000000000000000000000000000000) (bvslt (index!17317 lt!222696) (size!15674 (array!31855 (store (arr!15310 a!3235) i!1204 k0!2280) (size!15674 a!3235)))))))

(assert (=> b!492484 (= e!289292 (= (select (arr!15310 (array!31855 (store (arr!15310 a!3235) i!1204 k0!2280) (size!15674 a!3235))) (index!17317 lt!222696)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!492485 () Bool)

(assert (=> b!492485 (= e!289294 (Intermediate!3784 false (toIndex!0 (select (store (arr!15310 a!3235) i!1204 k0!2280) j!176) mask!3524) #b00000000000000000000000000000000))))

(declare-fun d!78011 () Bool)

(assert (=> d!78011 e!289296))

(declare-fun c!58863 () Bool)

(assert (=> d!78011 (= c!58863 (and ((_ is Intermediate!3784) lt!222696) (undefined!4596 lt!222696)))))

(assert (=> d!78011 (= lt!222696 e!289293)))

(declare-fun c!58861 () Bool)

(assert (=> d!78011 (= c!58861 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!78011 (= lt!222695 (select (arr!15310 (array!31855 (store (arr!15310 a!3235) i!1204 k0!2280) (size!15674 a!3235))) (toIndex!0 (select (store (arr!15310 a!3235) i!1204 k0!2280) j!176) mask!3524)))))

(assert (=> d!78011 (validMask!0 mask!3524)))

(assert (=> d!78011 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!15310 a!3235) i!1204 k0!2280) j!176) mask!3524) (select (store (arr!15310 a!3235) i!1204 k0!2280) j!176) (array!31855 (store (arr!15310 a!3235) i!1204 k0!2280) (size!15674 a!3235)) mask!3524) lt!222696)))

(declare-fun b!492486 () Bool)

(assert (=> b!492486 (and (bvsge (index!17317 lt!222696) #b00000000000000000000000000000000) (bvslt (index!17317 lt!222696) (size!15674 (array!31855 (store (arr!15310 a!3235) i!1204 k0!2280) (size!15674 a!3235)))))))

(declare-fun res!295303 () Bool)

(assert (=> b!492486 (= res!295303 (= (select (arr!15310 (array!31855 (store (arr!15310 a!3235) i!1204 k0!2280) (size!15674 a!3235))) (index!17317 lt!222696)) (select (store (arr!15310 a!3235) i!1204 k0!2280) j!176)))))

(assert (=> b!492486 (=> res!295303 e!289292)))

(assert (=> b!492486 (= e!289295 e!289292)))

(assert (= (and d!78011 c!58861) b!492479))

(assert (= (and d!78011 (not c!58861)) b!492482))

(assert (= (and b!492482 c!58862) b!492485))

(assert (= (and b!492482 (not c!58862)) b!492478))

(assert (= (and d!78011 c!58863) b!492480))

(assert (= (and d!78011 (not c!58863)) b!492481))

(assert (= (and b!492481 res!295302) b!492486))

(assert (= (and b!492486 (not res!295303)) b!492483))

(assert (= (and b!492483 (not res!295304)) b!492484))

(declare-fun m!473265 () Bool)

(assert (=> b!492484 m!473265))

(assert (=> b!492478 m!473143))

(declare-fun m!473267 () Bool)

(assert (=> b!492478 m!473267))

(assert (=> b!492478 m!473267))

(assert (=> b!492478 m!473137))

(declare-fun m!473269 () Bool)

(assert (=> b!492478 m!473269))

(assert (=> b!492486 m!473265))

(assert (=> d!78011 m!473143))

(declare-fun m!473271 () Bool)

(assert (=> d!78011 m!473271))

(assert (=> d!78011 m!473129))

(assert (=> b!492483 m!473265))

(assert (=> b!492337 d!78011))

(declare-fun d!78013 () Bool)

(assert (=> d!78013 (= (validKeyInArray!0 (select (arr!15310 a!3235) j!176)) (and (not (= (select (arr!15310 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15310 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!492340 d!78013))

(declare-fun d!78015 () Bool)

(assert (=> d!78015 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!44892 d!78015))

(declare-fun d!78025 () Bool)

(assert (=> d!78025 (= (array_inv!11084 a!3235) (bvsge (size!15674 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!44892 d!78025))

(declare-fun b!492551 () Bool)

(declare-fun e!289349 () Bool)

(declare-fun call!31401 () Bool)

(assert (=> b!492551 (= e!289349 call!31401)))

(declare-fun b!492552 () Bool)

(assert (=> b!492552 (= e!289349 call!31401)))

(declare-fun bm!31398 () Bool)

(declare-fun c!58878 () Bool)

(assert (=> bm!31398 (= call!31401 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!58878 (Cons!9517 (select (arr!15310 a!3235) #b00000000000000000000000000000000) Nil!9518) Nil!9518)))))

(declare-fun b!492554 () Bool)

(declare-fun e!289350 () Bool)

(declare-fun e!289347 () Bool)

(assert (=> b!492554 (= e!289350 e!289347)))

(declare-fun res!295344 () Bool)

(assert (=> b!492554 (=> (not res!295344) (not e!289347))))

(declare-fun e!289348 () Bool)

(assert (=> b!492554 (= res!295344 (not e!289348))))

(declare-fun res!295342 () Bool)

(assert (=> b!492554 (=> (not res!295342) (not e!289348))))

(assert (=> b!492554 (= res!295342 (validKeyInArray!0 (select (arr!15310 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!492555 () Bool)

(declare-fun contains!2717 (List!9521 (_ BitVec 64)) Bool)

(assert (=> b!492555 (= e!289348 (contains!2717 Nil!9518 (select (arr!15310 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!492553 () Bool)

(assert (=> b!492553 (= e!289347 e!289349)))

(assert (=> b!492553 (= c!58878 (validKeyInArray!0 (select (arr!15310 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!78027 () Bool)

(declare-fun res!295343 () Bool)

(assert (=> d!78027 (=> res!295343 e!289350)))

(assert (=> d!78027 (= res!295343 (bvsge #b00000000000000000000000000000000 (size!15674 a!3235)))))

(assert (=> d!78027 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9518) e!289350)))

(assert (= (and d!78027 (not res!295343)) b!492554))

(assert (= (and b!492554 res!295342) b!492555))

(assert (= (and b!492554 res!295344) b!492553))

(assert (= (and b!492553 c!58878) b!492552))

(assert (= (and b!492553 (not c!58878)) b!492551))

(assert (= (or b!492552 b!492551) bm!31398))

(assert (=> bm!31398 m!473211))

(declare-fun m!473303 () Bool)

(assert (=> bm!31398 m!473303))

(assert (=> b!492554 m!473211))

(assert (=> b!492554 m!473211))

(assert (=> b!492554 m!473213))

(assert (=> b!492555 m!473211))

(assert (=> b!492555 m!473211))

(declare-fun m!473313 () Bool)

(assert (=> b!492555 m!473313))

(assert (=> b!492553 m!473211))

(assert (=> b!492553 m!473211))

(assert (=> b!492553 m!473213))

(assert (=> b!492335 d!78027))

(declare-fun d!78035 () Bool)

(assert (=> d!78035 (= (validKeyInArray!0 k0!2280) (and (not (= k0!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!492341 d!78035))

(declare-fun b!492556 () Bool)

(declare-fun e!289352 () SeekEntryResult!3784)

(declare-fun e!289351 () SeekEntryResult!3784)

(assert (=> b!492556 (= e!289352 e!289351)))

(declare-fun lt!222717 () (_ BitVec 64))

(declare-fun lt!222715 () SeekEntryResult!3784)

(assert (=> b!492556 (= lt!222717 (select (arr!15310 a!3235) (index!17317 lt!222715)))))

(declare-fun c!58880 () Bool)

(assert (=> b!492556 (= c!58880 (= lt!222717 k0!2280))))

(declare-fun b!492557 () Bool)

(declare-fun c!58879 () Bool)

(assert (=> b!492557 (= c!58879 (= lt!222717 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!289353 () SeekEntryResult!3784)

(assert (=> b!492557 (= e!289351 e!289353)))

(declare-fun b!492558 () Bool)

(assert (=> b!492558 (= e!289353 (MissingZero!3784 (index!17317 lt!222715)))))

(declare-fun b!492559 () Bool)

(assert (=> b!492559 (= e!289352 Undefined!3784)))

(declare-fun b!492560 () Bool)

(assert (=> b!492560 (= e!289353 (seekKeyOrZeroReturnVacant!0 (x!46427 lt!222715) (index!17317 lt!222715) (index!17317 lt!222715) k0!2280 a!3235 mask!3524))))

(declare-fun b!492561 () Bool)

(assert (=> b!492561 (= e!289351 (Found!3784 (index!17317 lt!222715)))))

(declare-fun d!78037 () Bool)

(declare-fun lt!222716 () SeekEntryResult!3784)

(assert (=> d!78037 (and (or ((_ is Undefined!3784) lt!222716) (not ((_ is Found!3784) lt!222716)) (and (bvsge (index!17316 lt!222716) #b00000000000000000000000000000000) (bvslt (index!17316 lt!222716) (size!15674 a!3235)))) (or ((_ is Undefined!3784) lt!222716) ((_ is Found!3784) lt!222716) (not ((_ is MissingZero!3784) lt!222716)) (and (bvsge (index!17315 lt!222716) #b00000000000000000000000000000000) (bvslt (index!17315 lt!222716) (size!15674 a!3235)))) (or ((_ is Undefined!3784) lt!222716) ((_ is Found!3784) lt!222716) ((_ is MissingZero!3784) lt!222716) (not ((_ is MissingVacant!3784) lt!222716)) (and (bvsge (index!17318 lt!222716) #b00000000000000000000000000000000) (bvslt (index!17318 lt!222716) (size!15674 a!3235)))) (or ((_ is Undefined!3784) lt!222716) (ite ((_ is Found!3784) lt!222716) (= (select (arr!15310 a!3235) (index!17316 lt!222716)) k0!2280) (ite ((_ is MissingZero!3784) lt!222716) (= (select (arr!15310 a!3235) (index!17315 lt!222716)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3784) lt!222716) (= (select (arr!15310 a!3235) (index!17318 lt!222716)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!78037 (= lt!222716 e!289352)))

(declare-fun c!58881 () Bool)

(assert (=> d!78037 (= c!58881 (and ((_ is Intermediate!3784) lt!222715) (undefined!4596 lt!222715)))))

(assert (=> d!78037 (= lt!222715 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2280 mask!3524) k0!2280 a!3235 mask!3524))))

(assert (=> d!78037 (validMask!0 mask!3524)))

(assert (=> d!78037 (= (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524) lt!222716)))

(assert (= (and d!78037 c!58881) b!492559))

(assert (= (and d!78037 (not c!58881)) b!492556))

(assert (= (and b!492556 c!58880) b!492561))

(assert (= (and b!492556 (not c!58880)) b!492557))

(assert (= (and b!492557 c!58879) b!492558))

(assert (= (and b!492557 (not c!58879)) b!492560))

(declare-fun m!473315 () Bool)

(assert (=> b!492556 m!473315))

(declare-fun m!473317 () Bool)

(assert (=> b!492560 m!473317))

(declare-fun m!473319 () Bool)

(assert (=> d!78037 m!473319))

(declare-fun m!473321 () Bool)

(assert (=> d!78037 m!473321))

(declare-fun m!473323 () Bool)

(assert (=> d!78037 m!473323))

(assert (=> d!78037 m!473323))

(declare-fun m!473325 () Bool)

(assert (=> d!78037 m!473325))

(assert (=> d!78037 m!473129))

(declare-fun m!473327 () Bool)

(assert (=> d!78037 m!473327))

(assert (=> b!492344 d!78037))

(declare-fun d!78039 () Bool)

(declare-fun res!295350 () Bool)

(declare-fun e!289358 () Bool)

(assert (=> d!78039 (=> res!295350 e!289358)))

(assert (=> d!78039 (= res!295350 (= (select (arr!15310 a!3235) #b00000000000000000000000000000000) k0!2280))))

(assert (=> d!78039 (= (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000) e!289358)))

(declare-fun b!492566 () Bool)

(declare-fun e!289359 () Bool)

(assert (=> b!492566 (= e!289358 e!289359)))

(declare-fun res!295351 () Bool)

(assert (=> b!492566 (=> (not res!295351) (not e!289359))))

(assert (=> b!492566 (= res!295351 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!15674 a!3235)))))

(declare-fun b!492567 () Bool)

(assert (=> b!492567 (= e!289359 (arrayContainsKey!0 a!3235 k0!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!78039 (not res!295350)) b!492566))

(assert (= (and b!492566 res!295351) b!492567))

(assert (=> d!78039 m!473211))

(declare-fun m!473329 () Bool)

(assert (=> b!492567 m!473329))

(assert (=> b!492339 d!78039))

(check-sat (not b!492554) (not d!78011) (not b!492401) (not b!492405) (not b!492553) (not d!77999) (not d!77975) (not bm!31386) (not b!492555) (not b!492478) (not b!492406) (not bm!31385) (not d!78037) (not b!492469) (not b!492567) (not b!492560) (not d!77989) (not b!492402) (not bm!31398) (not b!492391))
(check-sat)
