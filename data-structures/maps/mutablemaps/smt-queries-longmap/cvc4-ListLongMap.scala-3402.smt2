; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47018 () Bool)

(assert start!47018)

(declare-fun b!518236 () Bool)

(declare-fun res!317385 () Bool)

(declare-fun e!302377 () Bool)

(assert (=> b!518236 (=> (not res!317385) (not e!302377))))

(declare-datatypes ((array!33119 0))(
  ( (array!33120 (arr!15920 (Array (_ BitVec 32) (_ BitVec 64))) (size!16284 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33119)

(declare-datatypes ((List!10131 0))(
  ( (Nil!10128) (Cons!10127 (h!11034 (_ BitVec 64)) (t!16367 List!10131)) )
))
(declare-fun arrayNoDuplicates!0 (array!33119 (_ BitVec 32) List!10131) Bool)

(assert (=> b!518236 (= res!317385 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10128))))

(declare-fun b!518237 () Bool)

(declare-fun e!302376 () Bool)

(declare-datatypes ((SeekEntryResult!4394 0))(
  ( (MissingZero!4394 (index!19764 (_ BitVec 32))) (Found!4394 (index!19765 (_ BitVec 32))) (Intermediate!4394 (undefined!5206 Bool) (index!19766 (_ BitVec 32)) (x!48754 (_ BitVec 32))) (Undefined!4394) (MissingVacant!4394 (index!19767 (_ BitVec 32))) )
))
(declare-fun lt!237325 () SeekEntryResult!4394)

(assert (=> b!518237 (= e!302376 (and (bvsge (index!19766 lt!237325) #b00000000000000000000000000000000) (bvslt (index!19766 lt!237325) (size!16284 a!3235))))))

(declare-datatypes ((Unit!16042 0))(
  ( (Unit!16043) )
))
(declare-fun lt!237321 () Unit!16042)

(declare-fun e!302371 () Unit!16042)

(assert (=> b!518237 (= lt!237321 e!302371)))

(declare-fun c!60719 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!518237 (= c!60719 (= (select (arr!15920 a!3235) (index!19766 lt!237325)) (select (arr!15920 a!3235) j!176)))))

(assert (=> b!518237 (and (bvslt (x!48754 lt!237325) #b01111111111111111111111111111110) (or (= (select (arr!15920 a!3235) (index!19766 lt!237325)) (select (arr!15920 a!3235) j!176)) (= (select (arr!15920 a!3235) (index!19766 lt!237325)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15920 a!3235) (index!19766 lt!237325)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!518239 () Bool)

(declare-fun res!317386 () Bool)

(declare-fun e!302374 () Bool)

(assert (=> b!518239 (=> (not res!317386) (not e!302374))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33119 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!518239 (= res!317386 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun e!302372 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun b!518240 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33119 (_ BitVec 32)) SeekEntryResult!4394)

(assert (=> b!518240 (= e!302372 (= (seekEntryOrOpen!0 (select (arr!15920 a!3235) j!176) a!3235 mask!3524) (Found!4394 j!176)))))

(declare-fun b!518241 () Bool)

(declare-fun res!317388 () Bool)

(assert (=> b!518241 (=> (not res!317388) (not e!302377))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33119 (_ BitVec 32)) Bool)

(assert (=> b!518241 (= res!317388 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!518242 () Bool)

(declare-fun e!302375 () Bool)

(assert (=> b!518242 (= e!302375 false)))

(declare-fun b!518243 () Bool)

(assert (=> b!518243 (= e!302374 e!302377)))

(declare-fun res!317396 () Bool)

(assert (=> b!518243 (=> (not res!317396) (not e!302377))))

(declare-fun lt!237322 () SeekEntryResult!4394)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!518243 (= res!317396 (or (= lt!237322 (MissingZero!4394 i!1204)) (= lt!237322 (MissingVacant!4394 i!1204))))))

(assert (=> b!518243 (= lt!237322 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!518244 () Bool)

(declare-fun Unit!16044 () Unit!16042)

(assert (=> b!518244 (= e!302371 Unit!16044)))

(declare-fun b!518245 () Bool)

(declare-fun Unit!16045 () Unit!16042)

(assert (=> b!518245 (= e!302371 Unit!16045)))

(declare-fun lt!237324 () Unit!16042)

(declare-fun lt!237320 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33119 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16042)

(assert (=> b!518245 (= lt!237324 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!237320 #b00000000000000000000000000000000 (index!19766 lt!237325) (x!48754 lt!237325) mask!3524))))

(declare-fun res!317392 () Bool)

(declare-fun lt!237318 () array!33119)

(declare-fun lt!237326 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33119 (_ BitVec 32)) SeekEntryResult!4394)

(assert (=> b!518245 (= res!317392 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237320 lt!237326 lt!237318 mask!3524) (Intermediate!4394 false (index!19766 lt!237325) (x!48754 lt!237325))))))

(assert (=> b!518245 (=> (not res!317392) (not e!302375))))

(assert (=> b!518245 e!302375))

(declare-fun res!317395 () Bool)

(assert (=> start!47018 (=> (not res!317395) (not e!302374))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47018 (= res!317395 (validMask!0 mask!3524))))

(assert (=> start!47018 e!302374))

(assert (=> start!47018 true))

(declare-fun array_inv!11694 (array!33119) Bool)

(assert (=> start!47018 (array_inv!11694 a!3235)))

(declare-fun b!518238 () Bool)

(declare-fun res!317387 () Bool)

(assert (=> b!518238 (=> res!317387 e!302376)))

(assert (=> b!518238 (= res!317387 (or (undefined!5206 lt!237325) (not (is-Intermediate!4394 lt!237325))))))

(declare-fun b!518246 () Bool)

(declare-fun res!317391 () Bool)

(assert (=> b!518246 (=> (not res!317391) (not e!302374))))

(assert (=> b!518246 (= res!317391 (and (= (size!16284 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16284 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16284 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!518247 () Bool)

(declare-fun res!317394 () Bool)

(assert (=> b!518247 (=> (not res!317394) (not e!302374))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!518247 (= res!317394 (validKeyInArray!0 (select (arr!15920 a!3235) j!176)))))

(declare-fun b!518248 () Bool)

(assert (=> b!518248 (= e!302377 (not e!302376))))

(declare-fun res!317390 () Bool)

(assert (=> b!518248 (=> res!317390 e!302376)))

(declare-fun lt!237323 () (_ BitVec 32))

(assert (=> b!518248 (= res!317390 (= lt!237325 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237323 lt!237326 lt!237318 mask!3524)))))

(assert (=> b!518248 (= lt!237325 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237320 (select (arr!15920 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!518248 (= lt!237323 (toIndex!0 lt!237326 mask!3524))))

(assert (=> b!518248 (= lt!237326 (select (store (arr!15920 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!518248 (= lt!237320 (toIndex!0 (select (arr!15920 a!3235) j!176) mask!3524))))

(assert (=> b!518248 (= lt!237318 (array!33120 (store (arr!15920 a!3235) i!1204 k!2280) (size!16284 a!3235)))))

(assert (=> b!518248 e!302372))

(declare-fun res!317389 () Bool)

(assert (=> b!518248 (=> (not res!317389) (not e!302372))))

(assert (=> b!518248 (= res!317389 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!237319 () Unit!16042)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33119 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16042)

(assert (=> b!518248 (= lt!237319 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!518249 () Bool)

(declare-fun res!317393 () Bool)

(assert (=> b!518249 (=> (not res!317393) (not e!302374))))

(assert (=> b!518249 (= res!317393 (validKeyInArray!0 k!2280))))

(assert (= (and start!47018 res!317395) b!518246))

(assert (= (and b!518246 res!317391) b!518247))

(assert (= (and b!518247 res!317394) b!518249))

(assert (= (and b!518249 res!317393) b!518239))

(assert (= (and b!518239 res!317386) b!518243))

(assert (= (and b!518243 res!317396) b!518241))

(assert (= (and b!518241 res!317388) b!518236))

(assert (= (and b!518236 res!317385) b!518248))

(assert (= (and b!518248 res!317389) b!518240))

(assert (= (and b!518248 (not res!317390)) b!518238))

(assert (= (and b!518238 (not res!317387)) b!518237))

(assert (= (and b!518237 c!60719) b!518245))

(assert (= (and b!518237 (not c!60719)) b!518244))

(assert (= (and b!518245 res!317392) b!518242))

(declare-fun m!499651 () Bool)

(assert (=> b!518236 m!499651))

(declare-fun m!499653 () Bool)

(assert (=> b!518239 m!499653))

(declare-fun m!499655 () Bool)

(assert (=> b!518245 m!499655))

(declare-fun m!499657 () Bool)

(assert (=> b!518245 m!499657))

(declare-fun m!499659 () Bool)

(assert (=> b!518247 m!499659))

(assert (=> b!518247 m!499659))

(declare-fun m!499661 () Bool)

(assert (=> b!518247 m!499661))

(assert (=> b!518240 m!499659))

(assert (=> b!518240 m!499659))

(declare-fun m!499663 () Bool)

(assert (=> b!518240 m!499663))

(declare-fun m!499665 () Bool)

(assert (=> start!47018 m!499665))

(declare-fun m!499667 () Bool)

(assert (=> start!47018 m!499667))

(declare-fun m!499669 () Bool)

(assert (=> b!518243 m!499669))

(declare-fun m!499671 () Bool)

(assert (=> b!518237 m!499671))

(assert (=> b!518237 m!499659))

(declare-fun m!499673 () Bool)

(assert (=> b!518249 m!499673))

(declare-fun m!499675 () Bool)

(assert (=> b!518241 m!499675))

(declare-fun m!499677 () Bool)

(assert (=> b!518248 m!499677))

(declare-fun m!499679 () Bool)

(assert (=> b!518248 m!499679))

(assert (=> b!518248 m!499659))

(declare-fun m!499681 () Bool)

(assert (=> b!518248 m!499681))

(declare-fun m!499683 () Bool)

(assert (=> b!518248 m!499683))

(declare-fun m!499685 () Bool)

(assert (=> b!518248 m!499685))

(declare-fun m!499687 () Bool)

(assert (=> b!518248 m!499687))

(assert (=> b!518248 m!499659))

(declare-fun m!499689 () Bool)

(assert (=> b!518248 m!499689))

(assert (=> b!518248 m!499659))

(declare-fun m!499691 () Bool)

(assert (=> b!518248 m!499691))

(push 1)

(assert (not b!518248))

(assert (not b!518245))

(assert (not b!518239))

(assert (not b!518241))

(assert (not b!518247))

(assert (not b!518240))

(assert (not b!518236))

(assert (not start!47018))

(assert (not b!518249))

(assert (not b!518243))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!79751 () Bool)

(declare-fun res!317422 () Bool)

(declare-fun e!302412 () Bool)

(assert (=> d!79751 (=> res!317422 e!302412)))

(assert (=> d!79751 (= res!317422 (= (select (arr!15920 a!3235) #b00000000000000000000000000000000) k!2280))))

(assert (=> d!79751 (= (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000) e!302412)))

(declare-fun b!518293 () Bool)

(declare-fun e!302413 () Bool)

(assert (=> b!518293 (= e!302412 e!302413)))

(declare-fun res!317423 () Bool)

(assert (=> b!518293 (=> (not res!317423) (not e!302413))))

(assert (=> b!518293 (= res!317423 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16284 a!3235)))))

(declare-fun b!518294 () Bool)

(assert (=> b!518294 (= e!302413 (arrayContainsKey!0 a!3235 k!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!79751 (not res!317422)) b!518293))

(assert (= (and b!518293 res!317423) b!518294))

(declare-fun m!499715 () Bool)

(assert (=> d!79751 m!499715))

(declare-fun m!499717 () Bool)

(assert (=> b!518294 m!499717))

(assert (=> b!518239 d!79751))

(declare-fun d!79753 () Bool)

(declare-fun e!302425 () Bool)

(assert (=> d!79753 e!302425))

(declare-fun res!317435 () Bool)

(assert (=> d!79753 (=> (not res!317435) (not e!302425))))

(assert (=> d!79753 (= res!317435 (and (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16284 a!3235)) (and (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16284 a!3235)))) (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16284 a!3235)) (and (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16284 a!3235)))) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16284 a!3235))))))

(declare-fun lt!237347 () Unit!16042)

(declare-fun choose!47 (array!33119 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16042)

(assert (=> d!79753 (= lt!237347 (choose!47 a!3235 i!1204 k!2280 j!176 lt!237320 #b00000000000000000000000000000000 (index!19766 lt!237325) (x!48754 lt!237325) mask!3524))))

(assert (=> d!79753 (validMask!0 mask!3524)))

(assert (=> d!79753 (= (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!237320 #b00000000000000000000000000000000 (index!19766 lt!237325) (x!48754 lt!237325) mask!3524) lt!237347)))

(declare-fun b!518312 () Bool)

(assert (=> b!518312 (= e!302425 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237320 (select (store (arr!15920 a!3235) i!1204 k!2280) j!176) (array!33120 (store (arr!15920 a!3235) i!1204 k!2280) (size!16284 a!3235)) mask!3524) (Intermediate!4394 false (index!19766 lt!237325) (x!48754 lt!237325))))))

(assert (= (and d!79753 res!317435) b!518312))

(declare-fun m!499727 () Bool)

(assert (=> d!79753 m!499727))

(assert (=> d!79753 m!499665))

(assert (=> b!518312 m!499683))

(assert (=> b!518312 m!499687))

(assert (=> b!518312 m!499687))

(declare-fun m!499729 () Bool)

(assert (=> b!518312 m!499729))

(assert (=> b!518245 d!79753))

(declare-fun b!518392 () Bool)

(declare-fun e!302476 () Bool)

(declare-fun e!302472 () Bool)

(assert (=> b!518392 (= e!302476 e!302472)))

(declare-fun res!317454 () Bool)

(declare-fun lt!237383 () SeekEntryResult!4394)

(assert (=> b!518392 (= res!317454 (and (is-Intermediate!4394 lt!237383) (not (undefined!5206 lt!237383)) (bvslt (x!48754 lt!237383) #b01111111111111111111111111111110) (bvsge (x!48754 lt!237383) #b00000000000000000000000000000000) (bvsge (x!48754 lt!237383) #b00000000000000000000000000000000)))))

(assert (=> b!518392 (=> (not res!317454) (not e!302472))))

(declare-fun b!518393 () Bool)

(assert (=> b!518393 (= e!302476 (bvsge (x!48754 lt!237383) #b01111111111111111111111111111110))))

(declare-fun b!518394 () Bool)

(assert (=> b!518394 (and (bvsge (index!19766 lt!237383) #b00000000000000000000000000000000) (bvslt (index!19766 lt!237383) (size!16284 lt!237318)))))

(declare-fun res!317456 () Bool)

(assert (=> b!518394 (= res!317456 (= (select (arr!15920 lt!237318) (index!19766 lt!237383)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!302473 () Bool)

(assert (=> b!518394 (=> res!317456 e!302473)))

(declare-fun b!518395 () Bool)

(declare-fun e!302474 () SeekEntryResult!4394)

(assert (=> b!518395 (= e!302474 (Intermediate!4394 false lt!237320 #b00000000000000000000000000000000))))

(declare-fun b!518396 () Bool)

(declare-fun e!302475 () SeekEntryResult!4394)

(assert (=> b!518396 (= e!302475 e!302474)))

(declare-fun c!60764 () Bool)

(declare-fun lt!237382 () (_ BitVec 64))

(assert (=> b!518396 (= c!60764 (or (= lt!237382 lt!237326) (= (bvadd lt!237382 lt!237382) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!518397 () Bool)

(assert (=> b!518397 (and (bvsge (index!19766 lt!237383) #b00000000000000000000000000000000) (bvslt (index!19766 lt!237383) (size!16284 lt!237318)))))

(declare-fun res!317455 () Bool)

(assert (=> b!518397 (= res!317455 (= (select (arr!15920 lt!237318) (index!19766 lt!237383)) lt!237326))))

(assert (=> b!518397 (=> res!317455 e!302473)))

(assert (=> b!518397 (= e!302472 e!302473)))

(declare-fun b!518398 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!518398 (= e!302474 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!237320 #b00000000000000000000000000000000 mask!3524) lt!237326 lt!237318 mask!3524))))

(declare-fun b!518399 () Bool)

(assert (=> b!518399 (and (bvsge (index!19766 lt!237383) #b00000000000000000000000000000000) (bvslt (index!19766 lt!237383) (size!16284 lt!237318)))))

(assert (=> b!518399 (= e!302473 (= (select (arr!15920 lt!237318) (index!19766 lt!237383)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!518400 () Bool)

(assert (=> b!518400 (= e!302475 (Intermediate!4394 true lt!237320 #b00000000000000000000000000000000))))

(declare-fun d!79763 () Bool)

(assert (=> d!79763 e!302476))

(declare-fun c!60763 () Bool)

(assert (=> d!79763 (= c!60763 (and (is-Intermediate!4394 lt!237383) (undefined!5206 lt!237383)))))

(assert (=> d!79763 (= lt!237383 e!302475)))

(declare-fun c!60765 () Bool)

(assert (=> d!79763 (= c!60765 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!79763 (= lt!237382 (select (arr!15920 lt!237318) lt!237320))))

(assert (=> d!79763 (validMask!0 mask!3524)))

(assert (=> d!79763 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237320 lt!237326 lt!237318 mask!3524) lt!237383)))

(assert (= (and d!79763 c!60765) b!518400))

(assert (= (and d!79763 (not c!60765)) b!518396))

(assert (= (and b!518396 c!60764) b!518395))

(assert (= (and b!518396 (not c!60764)) b!518398))

(assert (= (and d!79763 c!60763) b!518393))

(assert (= (and d!79763 (not c!60763)) b!518392))

(assert (= (and b!518392 res!317454) b!518397))

(assert (= (and b!518397 (not res!317455)) b!518394))

(assert (= (and b!518394 (not res!317456)) b!518399))

(declare-fun m!499781 () Bool)

(assert (=> d!79763 m!499781))

(assert (=> d!79763 m!499665))

(declare-fun m!499783 () Bool)

(assert (=> b!518394 m!499783))

(declare-fun m!499785 () Bool)

(assert (=> b!518398 m!499785))

(assert (=> b!518398 m!499785))

(declare-fun m!499787 () Bool)

(assert (=> b!518398 m!499787))

(assert (=> b!518399 m!499783))

(assert (=> b!518397 m!499783))

(assert (=> b!518245 d!79763))

(declare-fun b!518440 () Bool)

(declare-fun e!302500 () SeekEntryResult!4394)

(declare-fun lt!237406 () SeekEntryResult!4394)

(assert (=> b!518440 (= e!302500 (MissingZero!4394 (index!19766 lt!237406)))))

(declare-fun b!518441 () Bool)

(declare-fun e!302501 () SeekEntryResult!4394)

(declare-fun e!302499 () SeekEntryResult!4394)

(assert (=> b!518441 (= e!302501 e!302499)))

(declare-fun lt!237407 () (_ BitVec 64))

(assert (=> b!518441 (= lt!237407 (select (arr!15920 a!3235) (index!19766 lt!237406)))))

(declare-fun c!60783 () Bool)

(assert (=> b!518441 (= c!60783 (= lt!237407 (select (arr!15920 a!3235) j!176)))))

(declare-fun b!518442 () Bool)

(declare-fun c!60781 () Bool)

(assert (=> b!518442 (= c!60781 (= lt!237407 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!518442 (= e!302499 e!302500)))

(declare-fun b!518443 () Bool)

(assert (=> b!518443 (= e!302501 Undefined!4394)))

(declare-fun d!79779 () Bool)

(declare-fun lt!237405 () SeekEntryResult!4394)

(assert (=> d!79779 (and (or (is-Undefined!4394 lt!237405) (not (is-Found!4394 lt!237405)) (and (bvsge (index!19765 lt!237405) #b00000000000000000000000000000000) (bvslt (index!19765 lt!237405) (size!16284 a!3235)))) (or (is-Undefined!4394 lt!237405) (is-Found!4394 lt!237405) (not (is-MissingZero!4394 lt!237405)) (and (bvsge (index!19764 lt!237405) #b00000000000000000000000000000000) (bvslt (index!19764 lt!237405) (size!16284 a!3235)))) (or (is-Undefined!4394 lt!237405) (is-Found!4394 lt!237405) (is-MissingZero!4394 lt!237405) (not (is-MissingVacant!4394 lt!237405)) (and (bvsge (index!19767 lt!237405) #b00000000000000000000000000000000) (bvslt (index!19767 lt!237405) (size!16284 a!3235)))) (or (is-Undefined!4394 lt!237405) (ite (is-Found!4394 lt!237405) (= (select (arr!15920 a!3235) (index!19765 lt!237405)) (select (arr!15920 a!3235) j!176)) (ite (is-MissingZero!4394 lt!237405) (= (select (arr!15920 a!3235) (index!19764 lt!237405)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4394 lt!237405) (= (select (arr!15920 a!3235) (index!19767 lt!237405)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!79779 (= lt!237405 e!302501)))

(declare-fun c!60782 () Bool)

(assert (=> d!79779 (= c!60782 (and (is-Intermediate!4394 lt!237406) (undefined!5206 lt!237406)))))

(assert (=> d!79779 (= lt!237406 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15920 a!3235) j!176) mask!3524) (select (arr!15920 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!79779 (validMask!0 mask!3524)))

(assert (=> d!79779 (= (seekEntryOrOpen!0 (select (arr!15920 a!3235) j!176) a!3235 mask!3524) lt!237405)))

(declare-fun b!518444 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33119 (_ BitVec 32)) SeekEntryResult!4394)

(assert (=> b!518444 (= e!302500 (seekKeyOrZeroReturnVacant!0 (x!48754 lt!237406) (index!19766 lt!237406) (index!19766 lt!237406) (select (arr!15920 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!518445 () Bool)

(assert (=> b!518445 (= e!302499 (Found!4394 (index!19766 lt!237406)))))

(assert (= (and d!79779 c!60782) b!518443))

(assert (= (and d!79779 (not c!60782)) b!518441))

(assert (= (and b!518441 c!60783) b!518445))

(assert (= (and b!518441 (not c!60783)) b!518442))

(assert (= (and b!518442 c!60781) b!518440))

(assert (= (and b!518442 (not c!60781)) b!518444))

(declare-fun m!499823 () Bool)

(assert (=> b!518441 m!499823))

(declare-fun m!499825 () Bool)

(assert (=> d!79779 m!499825))

(declare-fun m!499827 () Bool)

(assert (=> d!79779 m!499827))

(assert (=> d!79779 m!499689))

(assert (=> d!79779 m!499659))

(declare-fun m!499829 () Bool)

(assert (=> d!79779 m!499829))

(assert (=> d!79779 m!499665))

(assert (=> d!79779 m!499659))

(assert (=> d!79779 m!499689))

(declare-fun m!499831 () Bool)

(assert (=> d!79779 m!499831))

(assert (=> b!518444 m!499659))

(declare-fun m!499833 () Bool)

(assert (=> b!518444 m!499833))

(assert (=> b!518240 d!79779))

(declare-fun b!518456 () Bool)

(declare-fun e!302511 () SeekEntryResult!4394)

(declare-fun lt!237409 () SeekEntryResult!4394)

(assert (=> b!518456 (= e!302511 (MissingZero!4394 (index!19766 lt!237409)))))

(declare-fun b!518457 () Bool)

(declare-fun e!302512 () SeekEntryResult!4394)

(declare-fun e!302510 () SeekEntryResult!4394)

(assert (=> b!518457 (= e!302512 e!302510)))

(declare-fun lt!237410 () (_ BitVec 64))

(assert (=> b!518457 (= lt!237410 (select (arr!15920 a!3235) (index!19766 lt!237409)))))

(declare-fun c!60788 () Bool)

(assert (=> b!518457 (= c!60788 (= lt!237410 k!2280))))

(declare-fun b!518458 () Bool)

(declare-fun c!60786 () Bool)

(assert (=> b!518458 (= c!60786 (= lt!237410 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!518458 (= e!302510 e!302511)))

(declare-fun b!518459 () Bool)

(assert (=> b!518459 (= e!302512 Undefined!4394)))

(declare-fun d!79797 () Bool)

(declare-fun lt!237408 () SeekEntryResult!4394)

(assert (=> d!79797 (and (or (is-Undefined!4394 lt!237408) (not (is-Found!4394 lt!237408)) (and (bvsge (index!19765 lt!237408) #b00000000000000000000000000000000) (bvslt (index!19765 lt!237408) (size!16284 a!3235)))) (or (is-Undefined!4394 lt!237408) (is-Found!4394 lt!237408) (not (is-MissingZero!4394 lt!237408)) (and (bvsge (index!19764 lt!237408) #b00000000000000000000000000000000) (bvslt (index!19764 lt!237408) (size!16284 a!3235)))) (or (is-Undefined!4394 lt!237408) (is-Found!4394 lt!237408) (is-MissingZero!4394 lt!237408) (not (is-MissingVacant!4394 lt!237408)) (and (bvsge (index!19767 lt!237408) #b00000000000000000000000000000000) (bvslt (index!19767 lt!237408) (size!16284 a!3235)))) (or (is-Undefined!4394 lt!237408) (ite (is-Found!4394 lt!237408) (= (select (arr!15920 a!3235) (index!19765 lt!237408)) k!2280) (ite (is-MissingZero!4394 lt!237408) (= (select (arr!15920 a!3235) (index!19764 lt!237408)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4394 lt!237408) (= (select (arr!15920 a!3235) (index!19767 lt!237408)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!79797 (= lt!237408 e!302512)))

(declare-fun c!60787 () Bool)

(assert (=> d!79797 (= c!60787 (and (is-Intermediate!4394 lt!237409) (undefined!5206 lt!237409)))))

(assert (=> d!79797 (= lt!237409 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!79797 (validMask!0 mask!3524)))

(assert (=> d!79797 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!237408)))

(declare-fun b!518460 () Bool)

(assert (=> b!518460 (= e!302511 (seekKeyOrZeroReturnVacant!0 (x!48754 lt!237409) (index!19766 lt!237409) (index!19766 lt!237409) k!2280 a!3235 mask!3524))))

(declare-fun b!518461 () Bool)

(assert (=> b!518461 (= e!302510 (Found!4394 (index!19766 lt!237409)))))

(assert (= (and d!79797 c!60787) b!518459))

(assert (= (and d!79797 (not c!60787)) b!518457))

(assert (= (and b!518457 c!60788) b!518461))

(assert (= (and b!518457 (not c!60788)) b!518458))

(assert (= (and b!518458 c!60786) b!518456))

(assert (= (and b!518458 (not c!60786)) b!518460))

(declare-fun m!499835 () Bool)

(assert (=> b!518457 m!499835))

(declare-fun m!499837 () Bool)

(assert (=> d!79797 m!499837))

(declare-fun m!499839 () Bool)

(assert (=> d!79797 m!499839))

(declare-fun m!499841 () Bool)

(assert (=> d!79797 m!499841))

(declare-fun m!499843 () Bool)

(assert (=> d!79797 m!499843))

(assert (=> d!79797 m!499665))

(assert (=> d!79797 m!499841))

(declare-fun m!499845 () Bool)

(assert (=> d!79797 m!499845))

(declare-fun m!499847 () Bool)

(assert (=> b!518460 m!499847))

(assert (=> b!518243 d!79797))

(declare-fun d!79799 () Bool)

(assert (=> d!79799 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!518249 d!79799))

(declare-fun d!79801 () Bool)

(assert (=> d!79801 (= (validKeyInArray!0 (select (arr!15920 a!3235) j!176)) (and (not (= (select (arr!15920 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15920 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!518247 d!79801))

(declare-fun d!79803 () Bool)

(declare-fun lt!237420 () (_ BitVec 32))

(declare-fun lt!237419 () (_ BitVec 32))

(assert (=> d!79803 (= lt!237420 (bvmul (bvxor lt!237419 (bvlshr lt!237419 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79803 (= lt!237419 ((_ extract 31 0) (bvand (bvxor (select (arr!15920 a!3235) j!176) (bvlshr (select (arr!15920 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79803 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!317472 (let ((h!11036 ((_ extract 31 0) (bvand (bvxor (select (arr!15920 a!3235) j!176) (bvlshr (select (arr!15920 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48761 (bvmul (bvxor h!11036 (bvlshr h!11036 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48761 (bvlshr x!48761 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!317472 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!317472 #b00000000000000000000000000000000))))))

(assert (=> d!79803 (= (toIndex!0 (select (arr!15920 a!3235) j!176) mask!3524) (bvand (bvxor lt!237420 (bvlshr lt!237420 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!518248 d!79803))

(declare-fun b!518485 () Bool)

(declare-fun e!302531 () Bool)

(declare-fun e!302527 () Bool)

(assert (=> b!518485 (= e!302531 e!302527)))

(declare-fun res!317482 () Bool)

(declare-fun lt!237422 () SeekEntryResult!4394)

(assert (=> b!518485 (= res!317482 (and (is-Intermediate!4394 lt!237422) (not (undefined!5206 lt!237422)) (bvslt (x!48754 lt!237422) #b01111111111111111111111111111110) (bvsge (x!48754 lt!237422) #b00000000000000000000000000000000) (bvsge (x!48754 lt!237422) #b00000000000000000000000000000000)))))

(assert (=> b!518485 (=> (not res!317482) (not e!302527))))

(declare-fun b!518486 () Bool)

(assert (=> b!518486 (= e!302531 (bvsge (x!48754 lt!237422) #b01111111111111111111111111111110))))

(declare-fun b!518487 () Bool)

(assert (=> b!518487 (and (bvsge (index!19766 lt!237422) #b00000000000000000000000000000000) (bvslt (index!19766 lt!237422) (size!16284 a!3235)))))

(declare-fun res!317484 () Bool)

(assert (=> b!518487 (= res!317484 (= (select (arr!15920 a!3235) (index!19766 lt!237422)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!302528 () Bool)

(assert (=> b!518487 (=> res!317484 e!302528)))

(declare-fun b!518488 () Bool)

(declare-fun e!302529 () SeekEntryResult!4394)

(assert (=> b!518488 (= e!302529 (Intermediate!4394 false lt!237320 #b00000000000000000000000000000000))))

(declare-fun b!518489 () Bool)

(declare-fun e!302530 () SeekEntryResult!4394)

(assert (=> b!518489 (= e!302530 e!302529)))

(declare-fun lt!237421 () (_ BitVec 64))

(declare-fun c!60797 () Bool)

(assert (=> b!518489 (= c!60797 (or (= lt!237421 (select (arr!15920 a!3235) j!176)) (= (bvadd lt!237421 lt!237421) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!518490 () Bool)

(assert (=> b!518490 (and (bvsge (index!19766 lt!237422) #b00000000000000000000000000000000) (bvslt (index!19766 lt!237422) (size!16284 a!3235)))))

(declare-fun res!317483 () Bool)

(assert (=> b!518490 (= res!317483 (= (select (arr!15920 a!3235) (index!19766 lt!237422)) (select (arr!15920 a!3235) j!176)))))

(assert (=> b!518490 (=> res!317483 e!302528)))

(assert (=> b!518490 (= e!302527 e!302528)))

(declare-fun b!518491 () Bool)

(assert (=> b!518491 (= e!302529 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!237320 #b00000000000000000000000000000000 mask!3524) (select (arr!15920 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!518492 () Bool)

(assert (=> b!518492 (and (bvsge (index!19766 lt!237422) #b00000000000000000000000000000000) (bvslt (index!19766 lt!237422) (size!16284 a!3235)))))

(assert (=> b!518492 (= e!302528 (= (select (arr!15920 a!3235) (index!19766 lt!237422)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!518493 () Bool)

(assert (=> b!518493 (= e!302530 (Intermediate!4394 true lt!237320 #b00000000000000000000000000000000))))

(declare-fun d!79805 () Bool)

(assert (=> d!79805 e!302531))

(declare-fun c!60796 () Bool)

(assert (=> d!79805 (= c!60796 (and (is-Intermediate!4394 lt!237422) (undefined!5206 lt!237422)))))

(assert (=> d!79805 (= lt!237422 e!302530)))

(declare-fun c!60798 () Bool)

(assert (=> d!79805 (= c!60798 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!79805 (= lt!237421 (select (arr!15920 a!3235) lt!237320))))

(assert (=> d!79805 (validMask!0 mask!3524)))

(assert (=> d!79805 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237320 (select (arr!15920 a!3235) j!176) a!3235 mask!3524) lt!237422)))

(assert (= (and d!79805 c!60798) b!518493))

(assert (= (and d!79805 (not c!60798)) b!518489))

(assert (= (and b!518489 c!60797) b!518488))

(assert (= (and b!518489 (not c!60797)) b!518491))

(assert (= (and d!79805 c!60796) b!518486))

(assert (= (and d!79805 (not c!60796)) b!518485))

(assert (= (and b!518485 res!317482) b!518490))

(assert (= (and b!518490 (not res!317483)) b!518487))

(assert (= (and b!518487 (not res!317484)) b!518492))

(declare-fun m!499853 () Bool)

(assert (=> d!79805 m!499853))

(assert (=> d!79805 m!499665))

(declare-fun m!499855 () Bool)

(assert (=> b!518487 m!499855))

(assert (=> b!518491 m!499785))

(assert (=> b!518491 m!499785))

(assert (=> b!518491 m!499659))

(declare-fun m!499857 () Bool)

(assert (=> b!518491 m!499857))

(assert (=> b!518492 m!499855))

(assert (=> b!518490 m!499855))

(assert (=> b!518248 d!79805))

(declare-fun b!518520 () Bool)

(declare-fun e!302550 () Bool)

(declare-fun e!302549 () Bool)

(assert (=> b!518520 (= e!302550 e!302549)))

(declare-fun c!60807 () Bool)

(assert (=> b!518520 (= c!60807 (validKeyInArray!0 (select (arr!15920 a!3235) j!176)))))

(declare-fun d!79807 () Bool)

(declare-fun res!317497 () Bool)

(assert (=> d!79807 (=> res!317497 e!302550)))

(assert (=> d!79807 (= res!317497 (bvsge j!176 (size!16284 a!3235)))))

(assert (=> d!79807 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!302550)))

(declare-fun b!518521 () Bool)

(declare-fun e!302548 () Bool)

(assert (=> b!518521 (= e!302549 e!302548)))

(declare-fun lt!237435 () (_ BitVec 64))

(assert (=> b!518521 (= lt!237435 (select (arr!15920 a!3235) j!176))))

(declare-fun lt!237434 () Unit!16042)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!33119 (_ BitVec 64) (_ BitVec 32)) Unit!16042)

(assert (=> b!518521 (= lt!237434 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!237435 j!176))))

(assert (=> b!518521 (arrayContainsKey!0 a!3235 lt!237435 #b00000000000000000000000000000000)))

(declare-fun lt!237433 () Unit!16042)

(assert (=> b!518521 (= lt!237433 lt!237434)))

(declare-fun res!317496 () Bool)

(assert (=> b!518521 (= res!317496 (= (seekEntryOrOpen!0 (select (arr!15920 a!3235) j!176) a!3235 mask!3524) (Found!4394 j!176)))))

(assert (=> b!518521 (=> (not res!317496) (not e!302548))))

(declare-fun b!518522 () Bool)

(declare-fun call!31713 () Bool)

(assert (=> b!518522 (= e!302548 call!31713)))

(declare-fun b!518523 () Bool)

(assert (=> b!518523 (= e!302549 call!31713)))

(declare-fun bm!31710 () Bool)

(assert (=> bm!31710 (= call!31713 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(assert (= (and d!79807 (not res!317497)) b!518520))

(assert (= (and b!518520 c!60807) b!518521))

(assert (= (and b!518520 (not c!60807)) b!518523))

(assert (= (and b!518521 res!317496) b!518522))

(assert (= (or b!518522 b!518523) bm!31710))

(assert (=> b!518520 m!499659))

(assert (=> b!518520 m!499659))

(assert (=> b!518520 m!499661))

(assert (=> b!518521 m!499659))

(declare-fun m!499873 () Bool)

(assert (=> b!518521 m!499873))

(declare-fun m!499875 () Bool)

(assert (=> b!518521 m!499875))

(assert (=> b!518521 m!499659))

(assert (=> b!518521 m!499663))

(declare-fun m!499877 () Bool)

(assert (=> bm!31710 m!499877))

(assert (=> b!518248 d!79807))

(declare-fun d!79815 () Bool)

(assert (=> d!79815 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!237446 () Unit!16042)

(declare-fun choose!38 (array!33119 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16042)

(assert (=> d!79815 (= lt!237446 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!79815 (validMask!0 mask!3524)))

(assert (=> d!79815 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!237446)))

(declare-fun bs!16357 () Bool)

(assert (= bs!16357 d!79815))

(assert (=> bs!16357 m!499691))

(declare-fun m!499879 () Bool)

(assert (=> bs!16357 m!499879))

(assert (=> bs!16357 m!499665))

(assert (=> b!518248 d!79815))

(declare-fun b!518524 () Bool)

(declare-fun e!302555 () Bool)

(declare-fun e!302551 () Bool)

(assert (=> b!518524 (= e!302555 e!302551)))

(declare-fun res!317498 () Bool)

(declare-fun lt!237448 () SeekEntryResult!4394)

(assert (=> b!518524 (= res!317498 (and (is-Intermediate!4394 lt!237448) (not (undefined!5206 lt!237448)) (bvslt (x!48754 lt!237448) #b01111111111111111111111111111110) (bvsge (x!48754 lt!237448) #b00000000000000000000000000000000) (bvsge (x!48754 lt!237448) #b00000000000000000000000000000000)))))

(assert (=> b!518524 (=> (not res!317498) (not e!302551))))

(declare-fun b!518525 () Bool)

(assert (=> b!518525 (= e!302555 (bvsge (x!48754 lt!237448) #b01111111111111111111111111111110))))

(declare-fun b!518526 () Bool)

(assert (=> b!518526 (and (bvsge (index!19766 lt!237448) #b00000000000000000000000000000000) (bvslt (index!19766 lt!237448) (size!16284 lt!237318)))))

(declare-fun res!317500 () Bool)

(assert (=> b!518526 (= res!317500 (= (select (arr!15920 lt!237318) (index!19766 lt!237448)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!302552 () Bool)

(assert (=> b!518526 (=> res!317500 e!302552)))

(declare-fun b!518527 () Bool)

(declare-fun e!302553 () SeekEntryResult!4394)

(assert (=> b!518527 (= e!302553 (Intermediate!4394 false lt!237323 #b00000000000000000000000000000000))))

(declare-fun b!518528 () Bool)

(declare-fun e!302554 () SeekEntryResult!4394)

(assert (=> b!518528 (= e!302554 e!302553)))

(declare-fun c!60809 () Bool)

(declare-fun lt!237447 () (_ BitVec 64))

(assert (=> b!518528 (= c!60809 (or (= lt!237447 lt!237326) (= (bvadd lt!237447 lt!237447) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!518529 () Bool)

(assert (=> b!518529 (and (bvsge (index!19766 lt!237448) #b00000000000000000000000000000000) (bvslt (index!19766 lt!237448) (size!16284 lt!237318)))))

(declare-fun res!317499 () Bool)

(assert (=> b!518529 (= res!317499 (= (select (arr!15920 lt!237318) (index!19766 lt!237448)) lt!237326))))

(assert (=> b!518529 (=> res!317499 e!302552)))

(assert (=> b!518529 (= e!302551 e!302552)))

(declare-fun b!518530 () Bool)

(assert (=> b!518530 (= e!302553 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!237323 #b00000000000000000000000000000000 mask!3524) lt!237326 lt!237318 mask!3524))))

(declare-fun b!518531 () Bool)

(assert (=> b!518531 (and (bvsge (index!19766 lt!237448) #b00000000000000000000000000000000) (bvslt (index!19766 lt!237448) (size!16284 lt!237318)))))

(assert (=> b!518531 (= e!302552 (= (select (arr!15920 lt!237318) (index!19766 lt!237448)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!518532 () Bool)

(assert (=> b!518532 (= e!302554 (Intermediate!4394 true lt!237323 #b00000000000000000000000000000000))))

(declare-fun d!79821 () Bool)

(assert (=> d!79821 e!302555))

(declare-fun c!60808 () Bool)

(assert (=> d!79821 (= c!60808 (and (is-Intermediate!4394 lt!237448) (undefined!5206 lt!237448)))))

(assert (=> d!79821 (= lt!237448 e!302554)))

(declare-fun c!60810 () Bool)

(assert (=> d!79821 (= c!60810 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!79821 (= lt!237447 (select (arr!15920 lt!237318) lt!237323))))

(assert (=> d!79821 (validMask!0 mask!3524)))

(assert (=> d!79821 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237323 lt!237326 lt!237318 mask!3524) lt!237448)))

(assert (= (and d!79821 c!60810) b!518532))

(assert (= (and d!79821 (not c!60810)) b!518528))

(assert (= (and b!518528 c!60809) b!518527))

(assert (= (and b!518528 (not c!60809)) b!518530))

(assert (= (and d!79821 c!60808) b!518525))

(assert (= (and d!79821 (not c!60808)) b!518524))

(assert (= (and b!518524 res!317498) b!518529))

(assert (= (and b!518529 (not res!317499)) b!518526))

(assert (= (and b!518526 (not res!317500)) b!518531))

(declare-fun m!499881 () Bool)

(assert (=> d!79821 m!499881))

(assert (=> d!79821 m!499665))

(declare-fun m!499883 () Bool)

(assert (=> b!518526 m!499883))

(declare-fun m!499885 () Bool)

(assert (=> b!518530 m!499885))

(assert (=> b!518530 m!499885))

(declare-fun m!499887 () Bool)

(assert (=> b!518530 m!499887))

(assert (=> b!518531 m!499883))

(assert (=> b!518529 m!499883))

(assert (=> b!518248 d!79821))

(declare-fun d!79823 () Bool)

(declare-fun lt!237450 () (_ BitVec 32))

(declare-fun lt!237449 () (_ BitVec 32))

(assert (=> d!79823 (= lt!237450 (bvmul (bvxor lt!237449 (bvlshr lt!237449 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79823 (= lt!237449 ((_ extract 31 0) (bvand (bvxor lt!237326 (bvlshr lt!237326 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79823 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!317472 (let ((h!11036 ((_ extract 31 0) (bvand (bvxor lt!237326 (bvlshr lt!237326 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48761 (bvmul (bvxor h!11036 (bvlshr h!11036 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48761 (bvlshr x!48761 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!317472 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!317472 #b00000000000000000000000000000000))))))

(assert (=> d!79823 (= (toIndex!0 lt!237326 mask!3524) (bvand (bvxor lt!237450 (bvlshr lt!237450 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!518248 d!79823))

(declare-fun d!79825 () Bool)

(assert (=> d!79825 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!47018 d!79825))

(declare-fun d!79831 () Bool)

(assert (=> d!79831 (= (array_inv!11694 a!3235) (bvsge (size!16284 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!47018 d!79831))

(declare-fun b!518554 () Bool)

(declare-fun e!302572 () Bool)

(declare-fun e!302571 () Bool)

(assert (=> b!518554 (= e!302572 e!302571)))

(declare-fun c!60817 () Bool)

(assert (=> b!518554 (= c!60817 (validKeyInArray!0 (select (arr!15920 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!79833 () Bool)

(declare-fun res!317511 () Bool)

(assert (=> d!79833 (=> res!317511 e!302572)))

(assert (=> d!79833 (= res!317511 (bvsge #b00000000000000000000000000000000 (size!16284 a!3235)))))

(assert (=> d!79833 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!302572)))

(declare-fun b!518555 () Bool)

(declare-fun e!302570 () Bool)

(assert (=> b!518555 (= e!302571 e!302570)))

(declare-fun lt!237464 () (_ BitVec 64))

(assert (=> b!518555 (= lt!237464 (select (arr!15920 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!237463 () Unit!16042)

(assert (=> b!518555 (= lt!237463 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!237464 #b00000000000000000000000000000000))))

(assert (=> b!518555 (arrayContainsKey!0 a!3235 lt!237464 #b00000000000000000000000000000000)))

(declare-fun lt!237462 () Unit!16042)

(assert (=> b!518555 (= lt!237462 lt!237463)))

(declare-fun res!317510 () Bool)

(assert (=> b!518555 (= res!317510 (= (seekEntryOrOpen!0 (select (arr!15920 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4394 #b00000000000000000000000000000000)))))

(assert (=> b!518555 (=> (not res!317510) (not e!302570))))

(declare-fun b!518556 () Bool)

(declare-fun call!31717 () Bool)

(assert (=> b!518556 (= e!302570 call!31717)))

(declare-fun b!518557 () Bool)

(assert (=> b!518557 (= e!302571 call!31717)))

(declare-fun bm!31714 () Bool)

(assert (=> bm!31714 (= call!31717 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(assert (= (and d!79833 (not res!317511)) b!518554))

(assert (= (and b!518554 c!60817) b!518555))

(assert (= (and b!518554 (not c!60817)) b!518557))

(assert (= (and b!518555 res!317510) b!518556))

(assert (= (or b!518556 b!518557) bm!31714))

