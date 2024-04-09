; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47166 () Bool)

(assert start!47166)

(declare-fun res!317925 () Bool)

(declare-fun e!302961 () Bool)

(assert (=> start!47166 (=> (not res!317925) (not e!302961))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47166 (= res!317925 (validMask!0 mask!3524))))

(assert (=> start!47166 e!302961))

(assert (=> start!47166 true))

(declare-datatypes ((array!33141 0))(
  ( (array!33142 (arr!15928 (Array (_ BitVec 32) (_ BitVec 64))) (size!16292 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33141)

(declare-fun array_inv!11702 (array!33141) Bool)

(assert (=> start!47166 (array_inv!11702 a!3235)))

(declare-fun b!519226 () Bool)

(declare-fun res!317931 () Bool)

(declare-fun e!302964 () Bool)

(assert (=> b!519226 (=> (not res!317931) (not e!302964))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33141 (_ BitVec 32)) Bool)

(assert (=> b!519226 (= res!317931 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!519227 () Bool)

(declare-fun res!317936 () Bool)

(assert (=> b!519227 (=> (not res!317936) (not e!302961))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!519227 (= res!317936 (validKeyInArray!0 (select (arr!15928 a!3235) j!176)))))

(declare-fun b!519228 () Bool)

(declare-fun e!302962 () Bool)

(assert (=> b!519228 (= e!302962 false)))

(declare-fun b!519229 () Bool)

(declare-fun e!302959 () Bool)

(declare-datatypes ((SeekEntryResult!4402 0))(
  ( (MissingZero!4402 (index!19802 (_ BitVec 32))) (Found!4402 (index!19803 (_ BitVec 32))) (Intermediate!4402 (undefined!5214 Bool) (index!19804 (_ BitVec 32)) (x!48804 (_ BitVec 32))) (Undefined!4402) (MissingVacant!4402 (index!19805 (_ BitVec 32))) )
))
(declare-fun lt!237829 () SeekEntryResult!4402)

(assert (=> b!519229 (= e!302959 (and (bvsge (index!19804 lt!237829) #b00000000000000000000000000000000) (bvslt (index!19804 lt!237829) (size!16292 a!3235))))))

(assert (=> b!519229 (or (= (select (arr!15928 a!3235) (index!19804 lt!237829)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15928 a!3235) (index!19804 lt!237829)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!16074 0))(
  ( (Unit!16075) )
))
(declare-fun lt!237828 () Unit!16074)

(declare-fun e!302960 () Unit!16074)

(assert (=> b!519229 (= lt!237828 e!302960)))

(declare-fun c!60947 () Bool)

(assert (=> b!519229 (= c!60947 (= (select (arr!15928 a!3235) (index!19804 lt!237829)) (select (arr!15928 a!3235) j!176)))))

(assert (=> b!519229 (and (bvslt (x!48804 lt!237829) #b01111111111111111111111111111110) (or (= (select (arr!15928 a!3235) (index!19804 lt!237829)) (select (arr!15928 a!3235) j!176)) (= (select (arr!15928 a!3235) (index!19804 lt!237829)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15928 a!3235) (index!19804 lt!237829)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!519230 () Bool)

(declare-fun res!317933 () Bool)

(assert (=> b!519230 (=> (not res!317933) (not e!302961))))

(declare-fun k0!2280 () (_ BitVec 64))

(assert (=> b!519230 (= res!317933 (validKeyInArray!0 k0!2280))))

(declare-fun b!519231 () Bool)

(declare-fun res!317935 () Bool)

(assert (=> b!519231 (=> (not res!317935) (not e!302964))))

(declare-datatypes ((List!10139 0))(
  ( (Nil!10136) (Cons!10135 (h!11048 (_ BitVec 64)) (t!16375 List!10139)) )
))
(declare-fun arrayNoDuplicates!0 (array!33141 (_ BitVec 32) List!10139) Bool)

(assert (=> b!519231 (= res!317935 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10136))))

(declare-fun b!519232 () Bool)

(assert (=> b!519232 (= e!302964 (not e!302959))))

(declare-fun res!317926 () Bool)

(assert (=> b!519232 (=> res!317926 e!302959)))

(declare-fun lt!237830 () (_ BitVec 64))

(declare-fun lt!237825 () (_ BitVec 32))

(declare-fun lt!237822 () array!33141)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33141 (_ BitVec 32)) SeekEntryResult!4402)

(assert (=> b!519232 (= res!317926 (= lt!237829 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237825 lt!237830 lt!237822 mask!3524)))))

(declare-fun lt!237827 () (_ BitVec 32))

(assert (=> b!519232 (= lt!237829 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237827 (select (arr!15928 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!519232 (= lt!237825 (toIndex!0 lt!237830 mask!3524))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!519232 (= lt!237830 (select (store (arr!15928 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!519232 (= lt!237827 (toIndex!0 (select (arr!15928 a!3235) j!176) mask!3524))))

(assert (=> b!519232 (= lt!237822 (array!33142 (store (arr!15928 a!3235) i!1204 k0!2280) (size!16292 a!3235)))))

(declare-fun e!302965 () Bool)

(assert (=> b!519232 e!302965))

(declare-fun res!317928 () Bool)

(assert (=> b!519232 (=> (not res!317928) (not e!302965))))

(assert (=> b!519232 (= res!317928 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!237823 () Unit!16074)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33141 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16074)

(assert (=> b!519232 (= lt!237823 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!519233 () Bool)

(declare-fun Unit!16076 () Unit!16074)

(assert (=> b!519233 (= e!302960 Unit!16076)))

(declare-fun lt!237826 () Unit!16074)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33141 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16074)

(assert (=> b!519233 (= lt!237826 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!237827 #b00000000000000000000000000000000 (index!19804 lt!237829) (x!48804 lt!237829) mask!3524))))

(declare-fun res!317932 () Bool)

(assert (=> b!519233 (= res!317932 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237827 lt!237830 lt!237822 mask!3524) (Intermediate!4402 false (index!19804 lt!237829) (x!48804 lt!237829))))))

(assert (=> b!519233 (=> (not res!317932) (not e!302962))))

(assert (=> b!519233 e!302962))

(declare-fun b!519234 () Bool)

(declare-fun res!317934 () Bool)

(assert (=> b!519234 (=> (not res!317934) (not e!302961))))

(declare-fun arrayContainsKey!0 (array!33141 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!519234 (= res!317934 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!519235 () Bool)

(declare-fun Unit!16077 () Unit!16074)

(assert (=> b!519235 (= e!302960 Unit!16077)))

(declare-fun b!519236 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33141 (_ BitVec 32)) SeekEntryResult!4402)

(assert (=> b!519236 (= e!302965 (= (seekEntryOrOpen!0 (select (arr!15928 a!3235) j!176) a!3235 mask!3524) (Found!4402 j!176)))))

(declare-fun b!519237 () Bool)

(declare-fun res!317929 () Bool)

(assert (=> b!519237 (=> (not res!317929) (not e!302961))))

(assert (=> b!519237 (= res!317929 (and (= (size!16292 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16292 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16292 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!519238 () Bool)

(declare-fun res!317930 () Bool)

(assert (=> b!519238 (=> res!317930 e!302959)))

(get-info :version)

(assert (=> b!519238 (= res!317930 (or (undefined!5214 lt!237829) (not ((_ is Intermediate!4402) lt!237829))))))

(declare-fun b!519239 () Bool)

(assert (=> b!519239 (= e!302961 e!302964)))

(declare-fun res!317927 () Bool)

(assert (=> b!519239 (=> (not res!317927) (not e!302964))))

(declare-fun lt!237824 () SeekEntryResult!4402)

(assert (=> b!519239 (= res!317927 (or (= lt!237824 (MissingZero!4402 i!1204)) (= lt!237824 (MissingVacant!4402 i!1204))))))

(assert (=> b!519239 (= lt!237824 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(assert (= (and start!47166 res!317925) b!519237))

(assert (= (and b!519237 res!317929) b!519227))

(assert (= (and b!519227 res!317936) b!519230))

(assert (= (and b!519230 res!317933) b!519234))

(assert (= (and b!519234 res!317934) b!519239))

(assert (= (and b!519239 res!317927) b!519226))

(assert (= (and b!519226 res!317931) b!519231))

(assert (= (and b!519231 res!317935) b!519232))

(assert (= (and b!519232 res!317928) b!519236))

(assert (= (and b!519232 (not res!317926)) b!519238))

(assert (= (and b!519238 (not res!317930)) b!519229))

(assert (= (and b!519229 c!60947) b!519233))

(assert (= (and b!519229 (not c!60947)) b!519235))

(assert (= (and b!519233 res!317932) b!519228))

(declare-fun m!500455 () Bool)

(assert (=> b!519236 m!500455))

(assert (=> b!519236 m!500455))

(declare-fun m!500457 () Bool)

(assert (=> b!519236 m!500457))

(declare-fun m!500459 () Bool)

(assert (=> b!519239 m!500459))

(assert (=> b!519227 m!500455))

(assert (=> b!519227 m!500455))

(declare-fun m!500461 () Bool)

(assert (=> b!519227 m!500461))

(declare-fun m!500463 () Bool)

(assert (=> b!519229 m!500463))

(assert (=> b!519229 m!500455))

(declare-fun m!500465 () Bool)

(assert (=> b!519230 m!500465))

(declare-fun m!500467 () Bool)

(assert (=> start!47166 m!500467))

(declare-fun m!500469 () Bool)

(assert (=> start!47166 m!500469))

(declare-fun m!500471 () Bool)

(assert (=> b!519226 m!500471))

(declare-fun m!500473 () Bool)

(assert (=> b!519231 m!500473))

(declare-fun m!500475 () Bool)

(assert (=> b!519233 m!500475))

(declare-fun m!500477 () Bool)

(assert (=> b!519233 m!500477))

(declare-fun m!500479 () Bool)

(assert (=> b!519232 m!500479))

(declare-fun m!500481 () Bool)

(assert (=> b!519232 m!500481))

(declare-fun m!500483 () Bool)

(assert (=> b!519232 m!500483))

(declare-fun m!500485 () Bool)

(assert (=> b!519232 m!500485))

(assert (=> b!519232 m!500455))

(declare-fun m!500487 () Bool)

(assert (=> b!519232 m!500487))

(assert (=> b!519232 m!500455))

(declare-fun m!500489 () Bool)

(assert (=> b!519232 m!500489))

(declare-fun m!500491 () Bool)

(assert (=> b!519232 m!500491))

(assert (=> b!519232 m!500455))

(declare-fun m!500493 () Bool)

(assert (=> b!519232 m!500493))

(declare-fun m!500495 () Bool)

(assert (=> b!519234 m!500495))

(check-sat (not b!519231) (not b!519232) (not b!519233) (not b!519226) (not b!519239) (not start!47166) (not b!519234) (not b!519230) (not b!519227) (not b!519236))
(check-sat)
(get-model)

(declare-fun b!519294 () Bool)

(declare-fun e!302995 () SeekEntryResult!4402)

(declare-fun lt!237864 () SeekEntryResult!4402)

(assert (=> b!519294 (= e!302995 (MissingZero!4402 (index!19804 lt!237864)))))

(declare-fun b!519295 () Bool)

(declare-fun c!60957 () Bool)

(declare-fun lt!237866 () (_ BitVec 64))

(assert (=> b!519295 (= c!60957 (= lt!237866 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!302994 () SeekEntryResult!4402)

(assert (=> b!519295 (= e!302994 e!302995)))

(declare-fun b!519296 () Bool)

(declare-fun e!302993 () SeekEntryResult!4402)

(assert (=> b!519296 (= e!302993 e!302994)))

(assert (=> b!519296 (= lt!237866 (select (arr!15928 a!3235) (index!19804 lt!237864)))))

(declare-fun c!60959 () Bool)

(assert (=> b!519296 (= c!60959 (= lt!237866 (select (arr!15928 a!3235) j!176)))))

(declare-fun b!519297 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33141 (_ BitVec 32)) SeekEntryResult!4402)

(assert (=> b!519297 (= e!302995 (seekKeyOrZeroReturnVacant!0 (x!48804 lt!237864) (index!19804 lt!237864) (index!19804 lt!237864) (select (arr!15928 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!519298 () Bool)

(assert (=> b!519298 (= e!302994 (Found!4402 (index!19804 lt!237864)))))

(declare-fun b!519299 () Bool)

(assert (=> b!519299 (= e!302993 Undefined!4402)))

(declare-fun d!79947 () Bool)

(declare-fun lt!237865 () SeekEntryResult!4402)

(assert (=> d!79947 (and (or ((_ is Undefined!4402) lt!237865) (not ((_ is Found!4402) lt!237865)) (and (bvsge (index!19803 lt!237865) #b00000000000000000000000000000000) (bvslt (index!19803 lt!237865) (size!16292 a!3235)))) (or ((_ is Undefined!4402) lt!237865) ((_ is Found!4402) lt!237865) (not ((_ is MissingZero!4402) lt!237865)) (and (bvsge (index!19802 lt!237865) #b00000000000000000000000000000000) (bvslt (index!19802 lt!237865) (size!16292 a!3235)))) (or ((_ is Undefined!4402) lt!237865) ((_ is Found!4402) lt!237865) ((_ is MissingZero!4402) lt!237865) (not ((_ is MissingVacant!4402) lt!237865)) (and (bvsge (index!19805 lt!237865) #b00000000000000000000000000000000) (bvslt (index!19805 lt!237865) (size!16292 a!3235)))) (or ((_ is Undefined!4402) lt!237865) (ite ((_ is Found!4402) lt!237865) (= (select (arr!15928 a!3235) (index!19803 lt!237865)) (select (arr!15928 a!3235) j!176)) (ite ((_ is MissingZero!4402) lt!237865) (= (select (arr!15928 a!3235) (index!19802 lt!237865)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4402) lt!237865) (= (select (arr!15928 a!3235) (index!19805 lt!237865)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!79947 (= lt!237865 e!302993)))

(declare-fun c!60958 () Bool)

(assert (=> d!79947 (= c!60958 (and ((_ is Intermediate!4402) lt!237864) (undefined!5214 lt!237864)))))

(assert (=> d!79947 (= lt!237864 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15928 a!3235) j!176) mask!3524) (select (arr!15928 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!79947 (validMask!0 mask!3524)))

(assert (=> d!79947 (= (seekEntryOrOpen!0 (select (arr!15928 a!3235) j!176) a!3235 mask!3524) lt!237865)))

(assert (= (and d!79947 c!60958) b!519299))

(assert (= (and d!79947 (not c!60958)) b!519296))

(assert (= (and b!519296 c!60959) b!519298))

(assert (= (and b!519296 (not c!60959)) b!519295))

(assert (= (and b!519295 c!60957) b!519294))

(assert (= (and b!519295 (not c!60957)) b!519297))

(declare-fun m!500539 () Bool)

(assert (=> b!519296 m!500539))

(assert (=> b!519297 m!500455))

(declare-fun m!500541 () Bool)

(assert (=> b!519297 m!500541))

(declare-fun m!500543 () Bool)

(assert (=> d!79947 m!500543))

(assert (=> d!79947 m!500467))

(declare-fun m!500545 () Bool)

(assert (=> d!79947 m!500545))

(assert (=> d!79947 m!500487))

(assert (=> d!79947 m!500455))

(declare-fun m!500547 () Bool)

(assert (=> d!79947 m!500547))

(assert (=> d!79947 m!500455))

(assert (=> d!79947 m!500487))

(declare-fun m!500549 () Bool)

(assert (=> d!79947 m!500549))

(assert (=> b!519236 d!79947))

(declare-fun bm!31742 () Bool)

(declare-fun call!31745 () Bool)

(declare-fun c!60962 () Bool)

(assert (=> bm!31742 (= call!31745 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!60962 (Cons!10135 (select (arr!15928 a!3235) #b00000000000000000000000000000000) Nil!10136) Nil!10136)))))

(declare-fun b!519310 () Bool)

(declare-fun e!303006 () Bool)

(declare-fun contains!2760 (List!10139 (_ BitVec 64)) Bool)

(assert (=> b!519310 (= e!303006 (contains!2760 Nil!10136 (select (arr!15928 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!519311 () Bool)

(declare-fun e!303004 () Bool)

(assert (=> b!519311 (= e!303004 call!31745)))

(declare-fun d!79949 () Bool)

(declare-fun res!317981 () Bool)

(declare-fun e!303007 () Bool)

(assert (=> d!79949 (=> res!317981 e!303007)))

(assert (=> d!79949 (= res!317981 (bvsge #b00000000000000000000000000000000 (size!16292 a!3235)))))

(assert (=> d!79949 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10136) e!303007)))

(declare-fun b!519312 () Bool)

(assert (=> b!519312 (= e!303004 call!31745)))

(declare-fun b!519313 () Bool)

(declare-fun e!303005 () Bool)

(assert (=> b!519313 (= e!303007 e!303005)))

(declare-fun res!317979 () Bool)

(assert (=> b!519313 (=> (not res!317979) (not e!303005))))

(assert (=> b!519313 (= res!317979 (not e!303006))))

(declare-fun res!317980 () Bool)

(assert (=> b!519313 (=> (not res!317980) (not e!303006))))

(assert (=> b!519313 (= res!317980 (validKeyInArray!0 (select (arr!15928 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!519314 () Bool)

(assert (=> b!519314 (= e!303005 e!303004)))

(assert (=> b!519314 (= c!60962 (validKeyInArray!0 (select (arr!15928 a!3235) #b00000000000000000000000000000000)))))

(assert (= (and d!79949 (not res!317981)) b!519313))

(assert (= (and b!519313 res!317980) b!519310))

(assert (= (and b!519313 res!317979) b!519314))

(assert (= (and b!519314 c!60962) b!519311))

(assert (= (and b!519314 (not c!60962)) b!519312))

(assert (= (or b!519311 b!519312) bm!31742))

(declare-fun m!500551 () Bool)

(assert (=> bm!31742 m!500551))

(declare-fun m!500553 () Bool)

(assert (=> bm!31742 m!500553))

(assert (=> b!519310 m!500551))

(assert (=> b!519310 m!500551))

(declare-fun m!500555 () Bool)

(assert (=> b!519310 m!500555))

(assert (=> b!519313 m!500551))

(assert (=> b!519313 m!500551))

(declare-fun m!500557 () Bool)

(assert (=> b!519313 m!500557))

(assert (=> b!519314 m!500551))

(assert (=> b!519314 m!500551))

(assert (=> b!519314 m!500557))

(assert (=> b!519231 d!79949))

(declare-fun b!519333 () Bool)

(declare-fun e!303022 () Bool)

(declare-fun call!31750 () Bool)

(assert (=> b!519333 (= e!303022 call!31750)))

(declare-fun b!519334 () Bool)

(declare-fun e!303024 () Bool)

(assert (=> b!519334 (= e!303024 call!31750)))

(declare-fun b!519335 () Bool)

(declare-fun e!303023 () Bool)

(assert (=> b!519335 (= e!303023 e!303022)))

(declare-fun c!60967 () Bool)

(assert (=> b!519335 (= c!60967 (validKeyInArray!0 (select (arr!15928 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!519336 () Bool)

(assert (=> b!519336 (= e!303022 e!303024)))

(declare-fun lt!237873 () (_ BitVec 64))

(assert (=> b!519336 (= lt!237873 (select (arr!15928 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!237874 () Unit!16074)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!33141 (_ BitVec 64) (_ BitVec 32)) Unit!16074)

(assert (=> b!519336 (= lt!237874 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!237873 #b00000000000000000000000000000000))))

(assert (=> b!519336 (arrayContainsKey!0 a!3235 lt!237873 #b00000000000000000000000000000000)))

(declare-fun lt!237875 () Unit!16074)

(assert (=> b!519336 (= lt!237875 lt!237874)))

(declare-fun res!317992 () Bool)

(assert (=> b!519336 (= res!317992 (= (seekEntryOrOpen!0 (select (arr!15928 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4402 #b00000000000000000000000000000000)))))

(assert (=> b!519336 (=> (not res!317992) (not e!303024))))

(declare-fun bm!31747 () Bool)

(assert (=> bm!31747 (= call!31750 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun d!79951 () Bool)

(declare-fun res!317993 () Bool)

(assert (=> d!79951 (=> res!317993 e!303023)))

(assert (=> d!79951 (= res!317993 (bvsge #b00000000000000000000000000000000 (size!16292 a!3235)))))

(assert (=> d!79951 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!303023)))

(assert (= (and d!79951 (not res!317993)) b!519335))

(assert (= (and b!519335 c!60967) b!519336))

(assert (= (and b!519335 (not c!60967)) b!519333))

(assert (= (and b!519336 res!317992) b!519334))

(assert (= (or b!519334 b!519333) bm!31747))

(assert (=> b!519335 m!500551))

(assert (=> b!519335 m!500551))

(assert (=> b!519335 m!500557))

(assert (=> b!519336 m!500551))

(declare-fun m!500559 () Bool)

(assert (=> b!519336 m!500559))

(declare-fun m!500561 () Bool)

(assert (=> b!519336 m!500561))

(assert (=> b!519336 m!500551))

(declare-fun m!500563 () Bool)

(assert (=> b!519336 m!500563))

(declare-fun m!500565 () Bool)

(assert (=> bm!31747 m!500565))

(assert (=> b!519226 d!79951))

(declare-fun e!303052 () SeekEntryResult!4402)

(declare-fun b!519375 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!519375 (= e!303052 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!237827 #b00000000000000000000000000000000 mask!3524) (select (arr!15928 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!519376 () Bool)

(declare-fun e!303053 () SeekEntryResult!4402)

(assert (=> b!519376 (= e!303053 e!303052)))

(declare-fun c!60979 () Bool)

(declare-fun lt!237899 () (_ BitVec 64))

(assert (=> b!519376 (= c!60979 (or (= lt!237899 (select (arr!15928 a!3235) j!176)) (= (bvadd lt!237899 lt!237899) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!519377 () Bool)

(declare-fun e!303051 () Bool)

(declare-fun lt!237898 () SeekEntryResult!4402)

(assert (=> b!519377 (= e!303051 (bvsge (x!48804 lt!237898) #b01111111111111111111111111111110))))

(declare-fun b!519378 () Bool)

(assert (=> b!519378 (= e!303053 (Intermediate!4402 true lt!237827 #b00000000000000000000000000000000))))

(declare-fun d!79955 () Bool)

(assert (=> d!79955 e!303051))

(declare-fun c!60978 () Bool)

(assert (=> d!79955 (= c!60978 (and ((_ is Intermediate!4402) lt!237898) (undefined!5214 lt!237898)))))

(assert (=> d!79955 (= lt!237898 e!303053)))

(declare-fun c!60980 () Bool)

(assert (=> d!79955 (= c!60980 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!79955 (= lt!237899 (select (arr!15928 a!3235) lt!237827))))

(assert (=> d!79955 (validMask!0 mask!3524)))

(assert (=> d!79955 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237827 (select (arr!15928 a!3235) j!176) a!3235 mask!3524) lt!237898)))

(declare-fun b!519379 () Bool)

(assert (=> b!519379 (and (bvsge (index!19804 lt!237898) #b00000000000000000000000000000000) (bvslt (index!19804 lt!237898) (size!16292 a!3235)))))

(declare-fun res!318015 () Bool)

(assert (=> b!519379 (= res!318015 (= (select (arr!15928 a!3235) (index!19804 lt!237898)) (select (arr!15928 a!3235) j!176)))))

(declare-fun e!303054 () Bool)

(assert (=> b!519379 (=> res!318015 e!303054)))

(declare-fun e!303055 () Bool)

(assert (=> b!519379 (= e!303055 e!303054)))

(declare-fun b!519380 () Bool)

(assert (=> b!519380 (= e!303052 (Intermediate!4402 false lt!237827 #b00000000000000000000000000000000))))

(declare-fun b!519381 () Bool)

(assert (=> b!519381 (and (bvsge (index!19804 lt!237898) #b00000000000000000000000000000000) (bvslt (index!19804 lt!237898) (size!16292 a!3235)))))

(assert (=> b!519381 (= e!303054 (= (select (arr!15928 a!3235) (index!19804 lt!237898)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!519382 () Bool)

(assert (=> b!519382 (and (bvsge (index!19804 lt!237898) #b00000000000000000000000000000000) (bvslt (index!19804 lt!237898) (size!16292 a!3235)))))

(declare-fun res!318013 () Bool)

(assert (=> b!519382 (= res!318013 (= (select (arr!15928 a!3235) (index!19804 lt!237898)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!519382 (=> res!318013 e!303054)))

(declare-fun b!519383 () Bool)

(assert (=> b!519383 (= e!303051 e!303055)))

(declare-fun res!318014 () Bool)

(assert (=> b!519383 (= res!318014 (and ((_ is Intermediate!4402) lt!237898) (not (undefined!5214 lt!237898)) (bvslt (x!48804 lt!237898) #b01111111111111111111111111111110) (bvsge (x!48804 lt!237898) #b00000000000000000000000000000000) (bvsge (x!48804 lt!237898) #b00000000000000000000000000000000)))))

(assert (=> b!519383 (=> (not res!318014) (not e!303055))))

(assert (= (and d!79955 c!60980) b!519378))

(assert (= (and d!79955 (not c!60980)) b!519376))

(assert (= (and b!519376 c!60979) b!519380))

(assert (= (and b!519376 (not c!60979)) b!519375))

(assert (= (and d!79955 c!60978) b!519377))

(assert (= (and d!79955 (not c!60978)) b!519383))

(assert (= (and b!519383 res!318014) b!519379))

(assert (= (and b!519379 (not res!318015)) b!519382))

(assert (= (and b!519382 (not res!318013)) b!519381))

(declare-fun m!500585 () Bool)

(assert (=> d!79955 m!500585))

(assert (=> d!79955 m!500467))

(declare-fun m!500587 () Bool)

(assert (=> b!519381 m!500587))

(declare-fun m!500589 () Bool)

(assert (=> b!519375 m!500589))

(assert (=> b!519375 m!500589))

(assert (=> b!519375 m!500455))

(declare-fun m!500591 () Bool)

(assert (=> b!519375 m!500591))

(assert (=> b!519382 m!500587))

(assert (=> b!519379 m!500587))

(assert (=> b!519232 d!79955))

(declare-fun d!79969 () Bool)

(declare-fun lt!237905 () (_ BitVec 32))

(declare-fun lt!237904 () (_ BitVec 32))

(assert (=> d!79969 (= lt!237905 (bvmul (bvxor lt!237904 (bvlshr lt!237904 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79969 (= lt!237904 ((_ extract 31 0) (bvand (bvxor (select (arr!15928 a!3235) j!176) (bvlshr (select (arr!15928 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79969 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!318016 (let ((h!11051 ((_ extract 31 0) (bvand (bvxor (select (arr!15928 a!3235) j!176) (bvlshr (select (arr!15928 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48809 (bvmul (bvxor h!11051 (bvlshr h!11051 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48809 (bvlshr x!48809 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!318016 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!318016 #b00000000000000000000000000000000))))))

(assert (=> d!79969 (= (toIndex!0 (select (arr!15928 a!3235) j!176) mask!3524) (bvand (bvxor lt!237905 (bvlshr lt!237905 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!519232 d!79969))

(declare-fun b!519384 () Bool)

(declare-fun e!303056 () Bool)

(declare-fun call!31755 () Bool)

(assert (=> b!519384 (= e!303056 call!31755)))

(declare-fun b!519385 () Bool)

(declare-fun e!303058 () Bool)

(assert (=> b!519385 (= e!303058 call!31755)))

(declare-fun b!519386 () Bool)

(declare-fun e!303057 () Bool)

(assert (=> b!519386 (= e!303057 e!303056)))

(declare-fun c!60981 () Bool)

(assert (=> b!519386 (= c!60981 (validKeyInArray!0 (select (arr!15928 a!3235) j!176)))))

(declare-fun b!519387 () Bool)

(assert (=> b!519387 (= e!303056 e!303058)))

(declare-fun lt!237906 () (_ BitVec 64))

(assert (=> b!519387 (= lt!237906 (select (arr!15928 a!3235) j!176))))

(declare-fun lt!237907 () Unit!16074)

(assert (=> b!519387 (= lt!237907 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!237906 j!176))))

(assert (=> b!519387 (arrayContainsKey!0 a!3235 lt!237906 #b00000000000000000000000000000000)))

(declare-fun lt!237908 () Unit!16074)

(assert (=> b!519387 (= lt!237908 lt!237907)))

(declare-fun res!318017 () Bool)

(assert (=> b!519387 (= res!318017 (= (seekEntryOrOpen!0 (select (arr!15928 a!3235) j!176) a!3235 mask!3524) (Found!4402 j!176)))))

(assert (=> b!519387 (=> (not res!318017) (not e!303058))))

(declare-fun bm!31752 () Bool)

(assert (=> bm!31752 (= call!31755 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun d!79971 () Bool)

(declare-fun res!318018 () Bool)

(assert (=> d!79971 (=> res!318018 e!303057)))

(assert (=> d!79971 (= res!318018 (bvsge j!176 (size!16292 a!3235)))))

(assert (=> d!79971 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!303057)))

(assert (= (and d!79971 (not res!318018)) b!519386))

(assert (= (and b!519386 c!60981) b!519387))

(assert (= (and b!519386 (not c!60981)) b!519384))

(assert (= (and b!519387 res!318017) b!519385))

(assert (= (or b!519385 b!519384) bm!31752))

(assert (=> b!519386 m!500455))

(assert (=> b!519386 m!500455))

(assert (=> b!519386 m!500461))

(assert (=> b!519387 m!500455))

(declare-fun m!500593 () Bool)

(assert (=> b!519387 m!500593))

(declare-fun m!500595 () Bool)

(assert (=> b!519387 m!500595))

(assert (=> b!519387 m!500455))

(assert (=> b!519387 m!500457))

(declare-fun m!500597 () Bool)

(assert (=> bm!31752 m!500597))

(assert (=> b!519232 d!79971))

(declare-fun b!519388 () Bool)

(declare-fun e!303060 () SeekEntryResult!4402)

(assert (=> b!519388 (= e!303060 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!237825 #b00000000000000000000000000000000 mask!3524) lt!237830 lt!237822 mask!3524))))

(declare-fun b!519389 () Bool)

(declare-fun e!303061 () SeekEntryResult!4402)

(assert (=> b!519389 (= e!303061 e!303060)))

(declare-fun c!60983 () Bool)

(declare-fun lt!237910 () (_ BitVec 64))

(assert (=> b!519389 (= c!60983 (or (= lt!237910 lt!237830) (= (bvadd lt!237910 lt!237910) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!519390 () Bool)

(declare-fun e!303059 () Bool)

(declare-fun lt!237909 () SeekEntryResult!4402)

(assert (=> b!519390 (= e!303059 (bvsge (x!48804 lt!237909) #b01111111111111111111111111111110))))

(declare-fun b!519391 () Bool)

(assert (=> b!519391 (= e!303061 (Intermediate!4402 true lt!237825 #b00000000000000000000000000000000))))

(declare-fun d!79973 () Bool)

(assert (=> d!79973 e!303059))

(declare-fun c!60982 () Bool)

(assert (=> d!79973 (= c!60982 (and ((_ is Intermediate!4402) lt!237909) (undefined!5214 lt!237909)))))

(assert (=> d!79973 (= lt!237909 e!303061)))

(declare-fun c!60984 () Bool)

(assert (=> d!79973 (= c!60984 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!79973 (= lt!237910 (select (arr!15928 lt!237822) lt!237825))))

(assert (=> d!79973 (validMask!0 mask!3524)))

(assert (=> d!79973 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237825 lt!237830 lt!237822 mask!3524) lt!237909)))

(declare-fun b!519392 () Bool)

(assert (=> b!519392 (and (bvsge (index!19804 lt!237909) #b00000000000000000000000000000000) (bvslt (index!19804 lt!237909) (size!16292 lt!237822)))))

(declare-fun res!318021 () Bool)

(assert (=> b!519392 (= res!318021 (= (select (arr!15928 lt!237822) (index!19804 lt!237909)) lt!237830))))

(declare-fun e!303062 () Bool)

(assert (=> b!519392 (=> res!318021 e!303062)))

(declare-fun e!303063 () Bool)

(assert (=> b!519392 (= e!303063 e!303062)))

(declare-fun b!519393 () Bool)

(assert (=> b!519393 (= e!303060 (Intermediate!4402 false lt!237825 #b00000000000000000000000000000000))))

(declare-fun b!519394 () Bool)

(assert (=> b!519394 (and (bvsge (index!19804 lt!237909) #b00000000000000000000000000000000) (bvslt (index!19804 lt!237909) (size!16292 lt!237822)))))

(assert (=> b!519394 (= e!303062 (= (select (arr!15928 lt!237822) (index!19804 lt!237909)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!519395 () Bool)

(assert (=> b!519395 (and (bvsge (index!19804 lt!237909) #b00000000000000000000000000000000) (bvslt (index!19804 lt!237909) (size!16292 lt!237822)))))

(declare-fun res!318019 () Bool)

(assert (=> b!519395 (= res!318019 (= (select (arr!15928 lt!237822) (index!19804 lt!237909)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!519395 (=> res!318019 e!303062)))

(declare-fun b!519396 () Bool)

(assert (=> b!519396 (= e!303059 e!303063)))

(declare-fun res!318020 () Bool)

(assert (=> b!519396 (= res!318020 (and ((_ is Intermediate!4402) lt!237909) (not (undefined!5214 lt!237909)) (bvslt (x!48804 lt!237909) #b01111111111111111111111111111110) (bvsge (x!48804 lt!237909) #b00000000000000000000000000000000) (bvsge (x!48804 lt!237909) #b00000000000000000000000000000000)))))

(assert (=> b!519396 (=> (not res!318020) (not e!303063))))

(assert (= (and d!79973 c!60984) b!519391))

(assert (= (and d!79973 (not c!60984)) b!519389))

(assert (= (and b!519389 c!60983) b!519393))

(assert (= (and b!519389 (not c!60983)) b!519388))

(assert (= (and d!79973 c!60982) b!519390))

(assert (= (and d!79973 (not c!60982)) b!519396))

(assert (= (and b!519396 res!318020) b!519392))

(assert (= (and b!519392 (not res!318021)) b!519395))

(assert (= (and b!519395 (not res!318019)) b!519394))

(declare-fun m!500599 () Bool)

(assert (=> d!79973 m!500599))

(assert (=> d!79973 m!500467))

(declare-fun m!500601 () Bool)

(assert (=> b!519394 m!500601))

(declare-fun m!500603 () Bool)

(assert (=> b!519388 m!500603))

(assert (=> b!519388 m!500603))

(declare-fun m!500605 () Bool)

(assert (=> b!519388 m!500605))

(assert (=> b!519395 m!500601))

(assert (=> b!519392 m!500601))

(assert (=> b!519232 d!79973))

(declare-fun d!79975 () Bool)

(assert (=> d!79975 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!237917 () Unit!16074)

(declare-fun choose!38 (array!33141 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16074)

(assert (=> d!79975 (= lt!237917 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!79975 (validMask!0 mask!3524)))

(assert (=> d!79975 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!237917)))

(declare-fun bs!16371 () Bool)

(assert (= bs!16371 d!79975))

(assert (=> bs!16371 m!500489))

(declare-fun m!500607 () Bool)

(assert (=> bs!16371 m!500607))

(assert (=> bs!16371 m!500467))

(assert (=> b!519232 d!79975))

(declare-fun d!79977 () Bool)

(declare-fun lt!237919 () (_ BitVec 32))

(declare-fun lt!237918 () (_ BitVec 32))

(assert (=> d!79977 (= lt!237919 (bvmul (bvxor lt!237918 (bvlshr lt!237918 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79977 (= lt!237918 ((_ extract 31 0) (bvand (bvxor lt!237830 (bvlshr lt!237830 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79977 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!318016 (let ((h!11051 ((_ extract 31 0) (bvand (bvxor lt!237830 (bvlshr lt!237830 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48809 (bvmul (bvxor h!11051 (bvlshr h!11051 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48809 (bvlshr x!48809 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!318016 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!318016 #b00000000000000000000000000000000))))))

(assert (=> d!79977 (= (toIndex!0 lt!237830 mask!3524) (bvand (bvxor lt!237919 (bvlshr lt!237919 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!519232 d!79977))

(declare-fun d!79979 () Bool)

(assert (=> d!79979 (= (validKeyInArray!0 (select (arr!15928 a!3235) j!176)) (and (not (= (select (arr!15928 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15928 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!519227 d!79979))

(declare-fun d!79981 () Bool)

(assert (=> d!79981 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!47166 d!79981))

(declare-fun d!79989 () Bool)

(assert (=> d!79989 (= (array_inv!11702 a!3235) (bvsge (size!16292 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!47166 d!79989))

(declare-fun d!79991 () Bool)

(declare-fun e!303113 () Bool)

(assert (=> d!79991 e!303113))

(declare-fun res!318055 () Bool)

(assert (=> d!79991 (=> (not res!318055) (not e!303113))))

(assert (=> d!79991 (= res!318055 (and (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16292 a!3235)) (and (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16292 a!3235)))) (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16292 a!3235)) (and (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16292 a!3235)))) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16292 a!3235))))))

(declare-fun lt!237943 () Unit!16074)

(declare-fun choose!47 (array!33141 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16074)

(assert (=> d!79991 (= lt!237943 (choose!47 a!3235 i!1204 k0!2280 j!176 lt!237827 #b00000000000000000000000000000000 (index!19804 lt!237829) (x!48804 lt!237829) mask!3524))))

(assert (=> d!79991 (validMask!0 mask!3524)))

(assert (=> d!79991 (= (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!237827 #b00000000000000000000000000000000 (index!19804 lt!237829) (x!48804 lt!237829) mask!3524) lt!237943)))

(declare-fun b!519476 () Bool)

(assert (=> b!519476 (= e!303113 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237827 (select (store (arr!15928 a!3235) i!1204 k0!2280) j!176) (array!33142 (store (arr!15928 a!3235) i!1204 k0!2280) (size!16292 a!3235)) mask!3524) (Intermediate!4402 false (index!19804 lt!237829) (x!48804 lt!237829))))))

(assert (= (and d!79991 res!318055) b!519476))

(declare-fun m!500637 () Bool)

(assert (=> d!79991 m!500637))

(assert (=> d!79991 m!500467))

(assert (=> b!519476 m!500491))

(assert (=> b!519476 m!500483))

(assert (=> b!519476 m!500483))

(declare-fun m!500639 () Bool)

(assert (=> b!519476 m!500639))

(assert (=> b!519233 d!79991))

(declare-fun b!519477 () Bool)

(declare-fun e!303115 () SeekEntryResult!4402)

(assert (=> b!519477 (= e!303115 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!237827 #b00000000000000000000000000000000 mask!3524) lt!237830 lt!237822 mask!3524))))

(declare-fun b!519478 () Bool)

(declare-fun e!303116 () SeekEntryResult!4402)

(assert (=> b!519478 (= e!303116 e!303115)))

(declare-fun c!61009 () Bool)

(declare-fun lt!237945 () (_ BitVec 64))

(assert (=> b!519478 (= c!61009 (or (= lt!237945 lt!237830) (= (bvadd lt!237945 lt!237945) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!519479 () Bool)

(declare-fun e!303114 () Bool)

(declare-fun lt!237944 () SeekEntryResult!4402)

(assert (=> b!519479 (= e!303114 (bvsge (x!48804 lt!237944) #b01111111111111111111111111111110))))

(declare-fun b!519480 () Bool)

(assert (=> b!519480 (= e!303116 (Intermediate!4402 true lt!237827 #b00000000000000000000000000000000))))

(declare-fun d!80007 () Bool)

(assert (=> d!80007 e!303114))

(declare-fun c!61008 () Bool)

(assert (=> d!80007 (= c!61008 (and ((_ is Intermediate!4402) lt!237944) (undefined!5214 lt!237944)))))

(assert (=> d!80007 (= lt!237944 e!303116)))

(declare-fun c!61010 () Bool)

(assert (=> d!80007 (= c!61010 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!80007 (= lt!237945 (select (arr!15928 lt!237822) lt!237827))))

(assert (=> d!80007 (validMask!0 mask!3524)))

(assert (=> d!80007 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237827 lt!237830 lt!237822 mask!3524) lt!237944)))

(declare-fun b!519481 () Bool)

(assert (=> b!519481 (and (bvsge (index!19804 lt!237944) #b00000000000000000000000000000000) (bvslt (index!19804 lt!237944) (size!16292 lt!237822)))))

(declare-fun res!318058 () Bool)

(assert (=> b!519481 (= res!318058 (= (select (arr!15928 lt!237822) (index!19804 lt!237944)) lt!237830))))

(declare-fun e!303117 () Bool)

(assert (=> b!519481 (=> res!318058 e!303117)))

(declare-fun e!303118 () Bool)

(assert (=> b!519481 (= e!303118 e!303117)))

(declare-fun b!519482 () Bool)

(assert (=> b!519482 (= e!303115 (Intermediate!4402 false lt!237827 #b00000000000000000000000000000000))))

(declare-fun b!519483 () Bool)

(assert (=> b!519483 (and (bvsge (index!19804 lt!237944) #b00000000000000000000000000000000) (bvslt (index!19804 lt!237944) (size!16292 lt!237822)))))

(assert (=> b!519483 (= e!303117 (= (select (arr!15928 lt!237822) (index!19804 lt!237944)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!519484 () Bool)

(assert (=> b!519484 (and (bvsge (index!19804 lt!237944) #b00000000000000000000000000000000) (bvslt (index!19804 lt!237944) (size!16292 lt!237822)))))

(declare-fun res!318056 () Bool)

(assert (=> b!519484 (= res!318056 (= (select (arr!15928 lt!237822) (index!19804 lt!237944)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!519484 (=> res!318056 e!303117)))

(declare-fun b!519485 () Bool)

(assert (=> b!519485 (= e!303114 e!303118)))

(declare-fun res!318057 () Bool)

(assert (=> b!519485 (= res!318057 (and ((_ is Intermediate!4402) lt!237944) (not (undefined!5214 lt!237944)) (bvslt (x!48804 lt!237944) #b01111111111111111111111111111110) (bvsge (x!48804 lt!237944) #b00000000000000000000000000000000) (bvsge (x!48804 lt!237944) #b00000000000000000000000000000000)))))

(assert (=> b!519485 (=> (not res!318057) (not e!303118))))

(assert (= (and d!80007 c!61010) b!519480))

(assert (= (and d!80007 (not c!61010)) b!519478))

(assert (= (and b!519478 c!61009) b!519482))

(assert (= (and b!519478 (not c!61009)) b!519477))

(assert (= (and d!80007 c!61008) b!519479))

(assert (= (and d!80007 (not c!61008)) b!519485))

(assert (= (and b!519485 res!318057) b!519481))

(assert (= (and b!519481 (not res!318058)) b!519484))

(assert (= (and b!519484 (not res!318056)) b!519483))

(declare-fun m!500641 () Bool)

(assert (=> d!80007 m!500641))

(assert (=> d!80007 m!500467))

(declare-fun m!500643 () Bool)

(assert (=> b!519483 m!500643))

(assert (=> b!519477 m!500589))

(assert (=> b!519477 m!500589))

(declare-fun m!500645 () Bool)

(assert (=> b!519477 m!500645))

(assert (=> b!519484 m!500643))

(assert (=> b!519481 m!500643))

(assert (=> b!519233 d!80007))

(declare-fun b!519486 () Bool)

(declare-fun e!303121 () SeekEntryResult!4402)

(declare-fun lt!237946 () SeekEntryResult!4402)

(assert (=> b!519486 (= e!303121 (MissingZero!4402 (index!19804 lt!237946)))))

(declare-fun b!519487 () Bool)

(declare-fun c!61011 () Bool)

(declare-fun lt!237948 () (_ BitVec 64))

(assert (=> b!519487 (= c!61011 (= lt!237948 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!303120 () SeekEntryResult!4402)

(assert (=> b!519487 (= e!303120 e!303121)))

(declare-fun b!519488 () Bool)

(declare-fun e!303119 () SeekEntryResult!4402)

(assert (=> b!519488 (= e!303119 e!303120)))

(assert (=> b!519488 (= lt!237948 (select (arr!15928 a!3235) (index!19804 lt!237946)))))

(declare-fun c!61013 () Bool)

(assert (=> b!519488 (= c!61013 (= lt!237948 k0!2280))))

(declare-fun b!519489 () Bool)

(assert (=> b!519489 (= e!303121 (seekKeyOrZeroReturnVacant!0 (x!48804 lt!237946) (index!19804 lt!237946) (index!19804 lt!237946) k0!2280 a!3235 mask!3524))))

(declare-fun b!519490 () Bool)

(assert (=> b!519490 (= e!303120 (Found!4402 (index!19804 lt!237946)))))

(declare-fun b!519491 () Bool)

(assert (=> b!519491 (= e!303119 Undefined!4402)))

(declare-fun d!80009 () Bool)

(declare-fun lt!237947 () SeekEntryResult!4402)

(assert (=> d!80009 (and (or ((_ is Undefined!4402) lt!237947) (not ((_ is Found!4402) lt!237947)) (and (bvsge (index!19803 lt!237947) #b00000000000000000000000000000000) (bvslt (index!19803 lt!237947) (size!16292 a!3235)))) (or ((_ is Undefined!4402) lt!237947) ((_ is Found!4402) lt!237947) (not ((_ is MissingZero!4402) lt!237947)) (and (bvsge (index!19802 lt!237947) #b00000000000000000000000000000000) (bvslt (index!19802 lt!237947) (size!16292 a!3235)))) (or ((_ is Undefined!4402) lt!237947) ((_ is Found!4402) lt!237947) ((_ is MissingZero!4402) lt!237947) (not ((_ is MissingVacant!4402) lt!237947)) (and (bvsge (index!19805 lt!237947) #b00000000000000000000000000000000) (bvslt (index!19805 lt!237947) (size!16292 a!3235)))) (or ((_ is Undefined!4402) lt!237947) (ite ((_ is Found!4402) lt!237947) (= (select (arr!15928 a!3235) (index!19803 lt!237947)) k0!2280) (ite ((_ is MissingZero!4402) lt!237947) (= (select (arr!15928 a!3235) (index!19802 lt!237947)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4402) lt!237947) (= (select (arr!15928 a!3235) (index!19805 lt!237947)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!80009 (= lt!237947 e!303119)))

(declare-fun c!61012 () Bool)

(assert (=> d!80009 (= c!61012 (and ((_ is Intermediate!4402) lt!237946) (undefined!5214 lt!237946)))))

(assert (=> d!80009 (= lt!237946 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2280 mask!3524) k0!2280 a!3235 mask!3524))))

(assert (=> d!80009 (validMask!0 mask!3524)))

(assert (=> d!80009 (= (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524) lt!237947)))

(assert (= (and d!80009 c!61012) b!519491))

(assert (= (and d!80009 (not c!61012)) b!519488))

(assert (= (and b!519488 c!61013) b!519490))

(assert (= (and b!519488 (not c!61013)) b!519487))

(assert (= (and b!519487 c!61011) b!519486))

(assert (= (and b!519487 (not c!61011)) b!519489))

(declare-fun m!500647 () Bool)

(assert (=> b!519488 m!500647))

(declare-fun m!500649 () Bool)

(assert (=> b!519489 m!500649))

(declare-fun m!500651 () Bool)

(assert (=> d!80009 m!500651))

(assert (=> d!80009 m!500467))

(declare-fun m!500653 () Bool)

(assert (=> d!80009 m!500653))

(declare-fun m!500655 () Bool)

(assert (=> d!80009 m!500655))

(declare-fun m!500657 () Bool)

(assert (=> d!80009 m!500657))

(assert (=> d!80009 m!500655))

(declare-fun m!500659 () Bool)

(assert (=> d!80009 m!500659))

(assert (=> b!519239 d!80009))

(declare-fun d!80011 () Bool)

(declare-fun res!318071 () Bool)

(declare-fun e!303137 () Bool)

(assert (=> d!80011 (=> res!318071 e!303137)))

(assert (=> d!80011 (= res!318071 (= (select (arr!15928 a!3235) #b00000000000000000000000000000000) k0!2280))))

(assert (=> d!80011 (= (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000) e!303137)))

(declare-fun b!519510 () Bool)

(declare-fun e!303138 () Bool)

(assert (=> b!519510 (= e!303137 e!303138)))

(declare-fun res!318072 () Bool)

(assert (=> b!519510 (=> (not res!318072) (not e!303138))))

(assert (=> b!519510 (= res!318072 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16292 a!3235)))))

(declare-fun b!519511 () Bool)

(assert (=> b!519511 (= e!303138 (arrayContainsKey!0 a!3235 k0!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!80011 (not res!318071)) b!519510))

(assert (= (and b!519510 res!318072) b!519511))

(assert (=> d!80011 m!500551))

(declare-fun m!500669 () Bool)

(assert (=> b!519511 m!500669))

(assert (=> b!519234 d!80011))

(declare-fun d!80015 () Bool)

(assert (=> d!80015 (= (validKeyInArray!0 k0!2280) (and (not (= k0!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!519230 d!80015))

(check-sat (not b!519489) (not b!519297) (not b!519387) (not d!79947) (not b!519386) (not d!79973) (not d!80009) (not b!519336) (not bm!31747) (not b!519476) (not d!79975) (not d!80007) (not b!519388) (not b!519310) (not b!519314) (not b!519313) (not b!519335) (not d!79991) (not bm!31752) (not d!79955) (not b!519375) (not b!519477) (not bm!31742) (not b!519511))
(check-sat)
