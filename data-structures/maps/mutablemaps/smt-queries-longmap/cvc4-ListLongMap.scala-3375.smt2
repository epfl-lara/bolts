; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46496 () Bool)

(assert start!46496)

(declare-fun b!513784 () Bool)

(declare-fun res!314048 () Bool)

(declare-fun e!300019 () Bool)

(assert (=> b!513784 (=> (not res!314048) (not e!300019))))

(declare-datatypes ((array!32939 0))(
  ( (array!32940 (arr!15839 (Array (_ BitVec 32) (_ BitVec 64))) (size!16203 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32939)

(declare-datatypes ((List!10050 0))(
  ( (Nil!10047) (Cons!10046 (h!10935 (_ BitVec 64)) (t!16286 List!10050)) )
))
(declare-fun arrayNoDuplicates!0 (array!32939 (_ BitVec 32) List!10050) Bool)

(assert (=> b!513784 (= res!314048 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10047))))

(declare-fun b!513785 () Bool)

(declare-fun res!314047 () Bool)

(declare-fun e!300016 () Bool)

(assert (=> b!513785 (=> (not res!314047) (not e!300016))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!513785 (= res!314047 (validKeyInArray!0 (select (arr!15839 a!3235) j!176)))))

(declare-fun b!513786 () Bool)

(declare-fun e!300015 () Bool)

(assert (=> b!513786 (= e!300019 (not e!300015))))

(declare-fun res!314057 () Bool)

(assert (=> b!513786 (=> res!314057 e!300015)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4313 0))(
  ( (MissingZero!4313 (index!19440 (_ BitVec 32))) (Found!4313 (index!19441 (_ BitVec 32))) (Intermediate!4313 (undefined!5125 Bool) (index!19442 (_ BitVec 32)) (x!48421 (_ BitVec 32))) (Undefined!4313) (MissingVacant!4313 (index!19443 (_ BitVec 32))) )
))
(declare-fun lt!235273 () SeekEntryResult!4313)

(declare-fun lt!235274 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32939 (_ BitVec 32)) SeekEntryResult!4313)

(assert (=> b!513786 (= res!314057 (= lt!235273 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235274 (select (store (arr!15839 a!3235) i!1204 k!2280) j!176) (array!32940 (store (arr!15839 a!3235) i!1204 k!2280) (size!16203 a!3235)) mask!3524)))))

(declare-fun lt!235270 () (_ BitVec 32))

(assert (=> b!513786 (= lt!235273 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235270 (select (arr!15839 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!513786 (= lt!235274 (toIndex!0 (select (store (arr!15839 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!513786 (= lt!235270 (toIndex!0 (select (arr!15839 a!3235) j!176) mask!3524))))

(declare-fun e!300017 () Bool)

(assert (=> b!513786 e!300017))

(declare-fun res!314055 () Bool)

(assert (=> b!513786 (=> (not res!314055) (not e!300017))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32939 (_ BitVec 32)) Bool)

(assert (=> b!513786 (= res!314055 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15876 0))(
  ( (Unit!15877) )
))
(declare-fun lt!235272 () Unit!15876)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32939 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15876)

(assert (=> b!513786 (= lt!235272 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!513787 () Bool)

(declare-fun res!314053 () Bool)

(assert (=> b!513787 (=> (not res!314053) (not e!300016))))

(declare-fun arrayContainsKey!0 (array!32939 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!513787 (= res!314053 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!513788 () Bool)

(declare-fun res!314051 () Bool)

(assert (=> b!513788 (=> (not res!314051) (not e!300019))))

(assert (=> b!513788 (= res!314051 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!513789 () Bool)

(declare-fun res!314052 () Bool)

(assert (=> b!513789 (=> (not res!314052) (not e!300016))))

(assert (=> b!513789 (= res!314052 (and (= (size!16203 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16203 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16203 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!513790 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32939 (_ BitVec 32)) SeekEntryResult!4313)

(assert (=> b!513790 (= e!300017 (= (seekEntryOrOpen!0 (select (arr!15839 a!3235) j!176) a!3235 mask!3524) (Found!4313 j!176)))))

(declare-fun res!314049 () Bool)

(assert (=> start!46496 (=> (not res!314049) (not e!300016))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46496 (= res!314049 (validMask!0 mask!3524))))

(assert (=> start!46496 e!300016))

(assert (=> start!46496 true))

(declare-fun array_inv!11613 (array!32939) Bool)

(assert (=> start!46496 (array_inv!11613 a!3235)))

(declare-fun b!513791 () Bool)

(assert (=> b!513791 (= e!300015 (or (= (select (arr!15839 a!3235) (index!19442 lt!235273)) (select (arr!15839 a!3235) j!176)) (= (select (arr!15839 a!3235) (index!19442 lt!235273)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (bvsge (index!19442 lt!235273) #b00000000000000000000000000000000) (bvslt (index!19442 lt!235273) (size!16203 a!3235)))))))

(assert (=> b!513791 (bvslt (x!48421 lt!235273) #b01111111111111111111111111111110)))

(declare-fun b!513792 () Bool)

(declare-fun res!314056 () Bool)

(assert (=> b!513792 (=> res!314056 e!300015)))

(assert (=> b!513792 (= res!314056 (or (undefined!5125 lt!235273) (not (is-Intermediate!4313 lt!235273))))))

(declare-fun b!513793 () Bool)

(assert (=> b!513793 (= e!300016 e!300019)))

(declare-fun res!314054 () Bool)

(assert (=> b!513793 (=> (not res!314054) (not e!300019))))

(declare-fun lt!235271 () SeekEntryResult!4313)

(assert (=> b!513793 (= res!314054 (or (= lt!235271 (MissingZero!4313 i!1204)) (= lt!235271 (MissingVacant!4313 i!1204))))))

(assert (=> b!513793 (= lt!235271 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!513794 () Bool)

(declare-fun res!314050 () Bool)

(assert (=> b!513794 (=> (not res!314050) (not e!300016))))

(assert (=> b!513794 (= res!314050 (validKeyInArray!0 k!2280))))

(assert (= (and start!46496 res!314049) b!513789))

(assert (= (and b!513789 res!314052) b!513785))

(assert (= (and b!513785 res!314047) b!513794))

(assert (= (and b!513794 res!314050) b!513787))

(assert (= (and b!513787 res!314053) b!513793))

(assert (= (and b!513793 res!314054) b!513788))

(assert (= (and b!513788 res!314051) b!513784))

(assert (= (and b!513784 res!314048) b!513786))

(assert (= (and b!513786 res!314055) b!513790))

(assert (= (and b!513786 (not res!314057)) b!513792))

(assert (= (and b!513792 (not res!314056)) b!513791))

(declare-fun m!495329 () Bool)

(assert (=> b!513785 m!495329))

(assert (=> b!513785 m!495329))

(declare-fun m!495331 () Bool)

(assert (=> b!513785 m!495331))

(declare-fun m!495333 () Bool)

(assert (=> b!513794 m!495333))

(declare-fun m!495335 () Bool)

(assert (=> b!513788 m!495335))

(declare-fun m!495337 () Bool)

(assert (=> b!513784 m!495337))

(assert (=> b!513790 m!495329))

(assert (=> b!513790 m!495329))

(declare-fun m!495339 () Bool)

(assert (=> b!513790 m!495339))

(declare-fun m!495341 () Bool)

(assert (=> start!46496 m!495341))

(declare-fun m!495343 () Bool)

(assert (=> start!46496 m!495343))

(declare-fun m!495345 () Bool)

(assert (=> b!513791 m!495345))

(assert (=> b!513791 m!495329))

(declare-fun m!495347 () Bool)

(assert (=> b!513787 m!495347))

(declare-fun m!495349 () Bool)

(assert (=> b!513793 m!495349))

(declare-fun m!495351 () Bool)

(assert (=> b!513786 m!495351))

(declare-fun m!495353 () Bool)

(assert (=> b!513786 m!495353))

(declare-fun m!495355 () Bool)

(assert (=> b!513786 m!495355))

(declare-fun m!495357 () Bool)

(assert (=> b!513786 m!495357))

(assert (=> b!513786 m!495351))

(assert (=> b!513786 m!495329))

(declare-fun m!495359 () Bool)

(assert (=> b!513786 m!495359))

(assert (=> b!513786 m!495329))

(declare-fun m!495361 () Bool)

(assert (=> b!513786 m!495361))

(assert (=> b!513786 m!495329))

(declare-fun m!495363 () Bool)

(assert (=> b!513786 m!495363))

(assert (=> b!513786 m!495351))

(declare-fun m!495365 () Bool)

(assert (=> b!513786 m!495365))

(push 1)

(assert (not b!513785))

(assert (not b!513787))

(assert (not b!513784))

(assert (not start!46496))

(assert (not b!513786))

(assert (not b!513788))

(assert (not b!513794))

(assert (not b!513793))

(assert (not b!513790))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!79153 () Bool)

(assert (=> d!79153 (= (validKeyInArray!0 (select (arr!15839 a!3235) j!176)) (and (not (= (select (arr!15839 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15839 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!513785 d!79153))

(declare-fun d!79157 () Bool)

(declare-fun lt!235322 () SeekEntryResult!4313)

(assert (=> d!79157 (and (or (is-Undefined!4313 lt!235322) (not (is-Found!4313 lt!235322)) (and (bvsge (index!19441 lt!235322) #b00000000000000000000000000000000) (bvslt (index!19441 lt!235322) (size!16203 a!3235)))) (or (is-Undefined!4313 lt!235322) (is-Found!4313 lt!235322) (not (is-MissingZero!4313 lt!235322)) (and (bvsge (index!19440 lt!235322) #b00000000000000000000000000000000) (bvslt (index!19440 lt!235322) (size!16203 a!3235)))) (or (is-Undefined!4313 lt!235322) (is-Found!4313 lt!235322) (is-MissingZero!4313 lt!235322) (not (is-MissingVacant!4313 lt!235322)) (and (bvsge (index!19443 lt!235322) #b00000000000000000000000000000000) (bvslt (index!19443 lt!235322) (size!16203 a!3235)))) (or (is-Undefined!4313 lt!235322) (ite (is-Found!4313 lt!235322) (= (select (arr!15839 a!3235) (index!19441 lt!235322)) (select (arr!15839 a!3235) j!176)) (ite (is-MissingZero!4313 lt!235322) (= (select (arr!15839 a!3235) (index!19440 lt!235322)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4313 lt!235322) (= (select (arr!15839 a!3235) (index!19443 lt!235322)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!300060 () SeekEntryResult!4313)

(assert (=> d!79157 (= lt!235322 e!300060)))

(declare-fun c!60183 () Bool)

(declare-fun lt!235320 () SeekEntryResult!4313)

(assert (=> d!79157 (= c!60183 (and (is-Intermediate!4313 lt!235320) (undefined!5125 lt!235320)))))

(assert (=> d!79157 (= lt!235320 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15839 a!3235) j!176) mask!3524) (select (arr!15839 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!79157 (validMask!0 mask!3524)))

(assert (=> d!79157 (= (seekEntryOrOpen!0 (select (arr!15839 a!3235) j!176) a!3235 mask!3524) lt!235322)))

(declare-fun b!513867 () Bool)

(declare-fun c!60185 () Bool)

(declare-fun lt!235321 () (_ BitVec 64))

(assert (=> b!513867 (= c!60185 (= lt!235321 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!300061 () SeekEntryResult!4313)

(declare-fun e!300062 () SeekEntryResult!4313)

(assert (=> b!513867 (= e!300061 e!300062)))

(declare-fun b!513868 () Bool)

(assert (=> b!513868 (= e!300060 e!300061)))

(assert (=> b!513868 (= lt!235321 (select (arr!15839 a!3235) (index!19442 lt!235320)))))

(declare-fun c!60184 () Bool)

(assert (=> b!513868 (= c!60184 (= lt!235321 (select (arr!15839 a!3235) j!176)))))

(declare-fun b!513869 () Bool)

(assert (=> b!513869 (= e!300062 (MissingZero!4313 (index!19442 lt!235320)))))

(declare-fun b!513870 () Bool)

(assert (=> b!513870 (= e!300060 Undefined!4313)))

(declare-fun b!513871 () Bool)

(assert (=> b!513871 (= e!300061 (Found!4313 (index!19442 lt!235320)))))

(declare-fun b!513872 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32939 (_ BitVec 32)) SeekEntryResult!4313)

(assert (=> b!513872 (= e!300062 (seekKeyOrZeroReturnVacant!0 (x!48421 lt!235320) (index!19442 lt!235320) (index!19442 lt!235320) (select (arr!15839 a!3235) j!176) a!3235 mask!3524))))

(assert (= (and d!79157 c!60183) b!513870))

(assert (= (and d!79157 (not c!60183)) b!513868))

(assert (= (and b!513868 c!60184) b!513871))

(assert (= (and b!513868 (not c!60184)) b!513867))

(assert (= (and b!513867 c!60185) b!513869))

(assert (= (and b!513867 (not c!60185)) b!513872))

(declare-fun m!495393 () Bool)

(assert (=> d!79157 m!495393))

(declare-fun m!495395 () Bool)

(assert (=> d!79157 m!495395))

(assert (=> d!79157 m!495329))

(assert (=> d!79157 m!495359))

(declare-fun m!495397 () Bool)

(assert (=> d!79157 m!495397))

(assert (=> d!79157 m!495359))

(assert (=> d!79157 m!495329))

(declare-fun m!495399 () Bool)

(assert (=> d!79157 m!495399))

(assert (=> d!79157 m!495341))

(declare-fun m!495401 () Bool)

(assert (=> b!513868 m!495401))

(assert (=> b!513872 m!495329))

(declare-fun m!495403 () Bool)

(assert (=> b!513872 m!495403))

(assert (=> b!513790 d!79157))

(declare-fun b!513952 () Bool)

(declare-fun lt!235352 () SeekEntryResult!4313)

(assert (=> b!513952 (and (bvsge (index!19442 lt!235352) #b00000000000000000000000000000000) (bvslt (index!19442 lt!235352) (size!16203 a!3235)))))

(declare-fun e!300117 () Bool)

(assert (=> b!513952 (= e!300117 (= (select (arr!15839 a!3235) (index!19442 lt!235352)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!513953 () Bool)

(declare-fun e!300120 () Bool)

(assert (=> b!513953 (= e!300120 (bvsge (x!48421 lt!235352) #b01111111111111111111111111111110))))

(declare-fun b!513954 () Bool)

(declare-fun e!300118 () SeekEntryResult!4313)

(assert (=> b!513954 (= e!300118 (Intermediate!4313 true lt!235270 #b00000000000000000000000000000000))))

(declare-fun b!513955 () Bool)

(declare-fun e!300116 () SeekEntryResult!4313)

(assert (=> b!513955 (= e!300116 (Intermediate!4313 false lt!235270 #b00000000000000000000000000000000))))

(declare-fun b!513957 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!513957 (= e!300116 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!235270 #b00000000000000000000000000000000 mask!3524) (select (arr!15839 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!513958 () Bool)

(assert (=> b!513958 (and (bvsge (index!19442 lt!235352) #b00000000000000000000000000000000) (bvslt (index!19442 lt!235352) (size!16203 a!3235)))))

(declare-fun res!314107 () Bool)

(assert (=> b!513958 (= res!314107 (= (select (arr!15839 a!3235) (index!19442 lt!235352)) (select (arr!15839 a!3235) j!176)))))

(assert (=> b!513958 (=> res!314107 e!300117)))

(declare-fun e!300119 () Bool)

(assert (=> b!513958 (= e!300119 e!300117)))

(declare-fun b!513959 () Bool)

(assert (=> b!513959 (= e!300118 e!300116)))

(declare-fun c!60210 () Bool)

(declare-fun lt!235353 () (_ BitVec 64))

(assert (=> b!513959 (= c!60210 (or (= lt!235353 (select (arr!15839 a!3235) j!176)) (= (bvadd lt!235353 lt!235353) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!513960 () Bool)

(assert (=> b!513960 (and (bvsge (index!19442 lt!235352) #b00000000000000000000000000000000) (bvslt (index!19442 lt!235352) (size!16203 a!3235)))))

(declare-fun res!314109 () Bool)

(assert (=> b!513960 (= res!314109 (= (select (arr!15839 a!3235) (index!19442 lt!235352)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!513960 (=> res!314109 e!300117)))

(declare-fun b!513956 () Bool)

(assert (=> b!513956 (= e!300120 e!300119)))

(declare-fun res!314108 () Bool)

(assert (=> b!513956 (= res!314108 (and (is-Intermediate!4313 lt!235352) (not (undefined!5125 lt!235352)) (bvslt (x!48421 lt!235352) #b01111111111111111111111111111110) (bvsge (x!48421 lt!235352) #b00000000000000000000000000000000) (bvsge (x!48421 lt!235352) #b00000000000000000000000000000000)))))

(assert (=> b!513956 (=> (not res!314108) (not e!300119))))

(declare-fun d!79163 () Bool)

(assert (=> d!79163 e!300120))

(declare-fun c!60209 () Bool)

(assert (=> d!79163 (= c!60209 (and (is-Intermediate!4313 lt!235352) (undefined!5125 lt!235352)))))

(assert (=> d!79163 (= lt!235352 e!300118)))

(declare-fun c!60208 () Bool)

(assert (=> d!79163 (= c!60208 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!79163 (= lt!235353 (select (arr!15839 a!3235) lt!235270))))

(assert (=> d!79163 (validMask!0 mask!3524)))

(assert (=> d!79163 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235270 (select (arr!15839 a!3235) j!176) a!3235 mask!3524) lt!235352)))

(assert (= (and d!79163 c!60208) b!513954))

(assert (= (and d!79163 (not c!60208)) b!513959))

(assert (= (and b!513959 c!60210) b!513955))

(assert (= (and b!513959 (not c!60210)) b!513957))

(assert (= (and d!79163 c!60209) b!513953))

(assert (= (and d!79163 (not c!60209)) b!513956))

(assert (= (and b!513956 res!314108) b!513958))

(assert (= (and b!513958 (not res!314107)) b!513960))

(assert (= (and b!513960 (not res!314109)) b!513952))

(declare-fun m!495457 () Bool)

(assert (=> d!79163 m!495457))

(assert (=> d!79163 m!495341))

(declare-fun m!495459 () Bool)

(assert (=> b!513958 m!495459))

(assert (=> b!513952 m!495459))

(assert (=> b!513960 m!495459))

(declare-fun m!495461 () Bool)

(assert (=> b!513957 m!495461))

(assert (=> b!513957 m!495461))

(assert (=> b!513957 m!495329))

(declare-fun m!495463 () Bool)

(assert (=> b!513957 m!495463))

(assert (=> b!513786 d!79163))

(declare-fun d!79183 () Bool)

(declare-fun lt!235359 () (_ BitVec 32))

(declare-fun lt!235358 () (_ BitVec 32))

(assert (=> d!79183 (= lt!235359 (bvmul (bvxor lt!235358 (bvlshr lt!235358 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79183 (= lt!235358 ((_ extract 31 0) (bvand (bvxor (select (arr!15839 a!3235) j!176) (bvlshr (select (arr!15839 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79183 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!314110 (let ((h!10938 ((_ extract 31 0) (bvand (bvxor (select (arr!15839 a!3235) j!176) (bvlshr (select (arr!15839 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48426 (bvmul (bvxor h!10938 (bvlshr h!10938 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48426 (bvlshr x!48426 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!314110 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!314110 #b00000000000000000000000000000000))))))

(assert (=> d!79183 (= (toIndex!0 (select (arr!15839 a!3235) j!176) mask!3524) (bvand (bvxor lt!235359 (bvlshr lt!235359 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!513786 d!79183))

(declare-fun b!514006 () Bool)

(declare-fun e!300152 () Bool)

(declare-fun e!300153 () Bool)

(assert (=> b!514006 (= e!300152 e!300153)))

(declare-fun lt!235373 () (_ BitVec 64))

(assert (=> b!514006 (= lt!235373 (select (arr!15839 a!3235) j!176))))

(declare-fun lt!235374 () Unit!15876)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!32939 (_ BitVec 64) (_ BitVec 32)) Unit!15876)

(assert (=> b!514006 (= lt!235374 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!235373 j!176))))

(assert (=> b!514006 (arrayContainsKey!0 a!3235 lt!235373 #b00000000000000000000000000000000)))

(declare-fun lt!235375 () Unit!15876)

(assert (=> b!514006 (= lt!235375 lt!235374)))

(declare-fun res!314130 () Bool)

(assert (=> b!514006 (= res!314130 (= (seekEntryOrOpen!0 (select (arr!15839 a!3235) j!176) a!3235 mask!3524) (Found!4313 j!176)))))

(assert (=> b!514006 (=> (not res!314130) (not e!300153))))

(declare-fun call!31590 () Bool)

(declare-fun bm!31587 () Bool)

(assert (=> bm!31587 (= call!31590 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!514007 () Bool)

(assert (=> b!514007 (= e!300153 call!31590)))

(declare-fun d!79191 () Bool)

(declare-fun res!314131 () Bool)

(declare-fun e!300154 () Bool)

(assert (=> d!79191 (=> res!314131 e!300154)))

(assert (=> d!79191 (= res!314131 (bvsge j!176 (size!16203 a!3235)))))

(assert (=> d!79191 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!300154)))

(declare-fun b!514008 () Bool)

(assert (=> b!514008 (= e!300154 e!300152)))

(declare-fun c!60223 () Bool)

(assert (=> b!514008 (= c!60223 (validKeyInArray!0 (select (arr!15839 a!3235) j!176)))))

(declare-fun b!514009 () Bool)

(assert (=> b!514009 (= e!300152 call!31590)))

(assert (= (and d!79191 (not res!314131)) b!514008))

(assert (= (and b!514008 c!60223) b!514006))

(assert (= (and b!514008 (not c!60223)) b!514009))

(assert (= (and b!514006 res!314130) b!514007))

(assert (= (or b!514007 b!514009) bm!31587))

(assert (=> b!514006 m!495329))

(declare-fun m!495485 () Bool)

(assert (=> b!514006 m!495485))

(declare-fun m!495487 () Bool)

(assert (=> b!514006 m!495487))

(assert (=> b!514006 m!495329))

(assert (=> b!514006 m!495339))

(declare-fun m!495489 () Bool)

(assert (=> bm!31587 m!495489))

(assert (=> b!514008 m!495329))

(assert (=> b!514008 m!495329))

(assert (=> b!514008 m!495331))

(assert (=> b!513786 d!79191))

(declare-fun b!514018 () Bool)

(declare-fun lt!235376 () SeekEntryResult!4313)

(assert (=> b!514018 (and (bvsge (index!19442 lt!235376) #b00000000000000000000000000000000) (bvslt (index!19442 lt!235376) (size!16203 (array!32940 (store (arr!15839 a!3235) i!1204 k!2280) (size!16203 a!3235)))))))

(declare-fun e!300162 () Bool)

(assert (=> b!514018 (= e!300162 (= (select (arr!15839 (array!32940 (store (arr!15839 a!3235) i!1204 k!2280) (size!16203 a!3235))) (index!19442 lt!235376)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!514019 () Bool)

(declare-fun e!300165 () Bool)

(assert (=> b!514019 (= e!300165 (bvsge (x!48421 lt!235376) #b01111111111111111111111111111110))))

(declare-fun b!514020 () Bool)

(declare-fun e!300163 () SeekEntryResult!4313)

(assert (=> b!514020 (= e!300163 (Intermediate!4313 true lt!235274 #b00000000000000000000000000000000))))

(declare-fun b!514021 () Bool)

(declare-fun e!300161 () SeekEntryResult!4313)

(assert (=> b!514021 (= e!300161 (Intermediate!4313 false lt!235274 #b00000000000000000000000000000000))))

(declare-fun b!514023 () Bool)

(assert (=> b!514023 (= e!300161 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!235274 #b00000000000000000000000000000000 mask!3524) (select (store (arr!15839 a!3235) i!1204 k!2280) j!176) (array!32940 (store (arr!15839 a!3235) i!1204 k!2280) (size!16203 a!3235)) mask!3524))))

(declare-fun b!514024 () Bool)

(assert (=> b!514024 (and (bvsge (index!19442 lt!235376) #b00000000000000000000000000000000) (bvslt (index!19442 lt!235376) (size!16203 (array!32940 (store (arr!15839 a!3235) i!1204 k!2280) (size!16203 a!3235)))))))

(declare-fun res!314138 () Bool)

(assert (=> b!514024 (= res!314138 (= (select (arr!15839 (array!32940 (store (arr!15839 a!3235) i!1204 k!2280) (size!16203 a!3235))) (index!19442 lt!235376)) (select (store (arr!15839 a!3235) i!1204 k!2280) j!176)))))

(assert (=> b!514024 (=> res!314138 e!300162)))

(declare-fun e!300164 () Bool)

(assert (=> b!514024 (= e!300164 e!300162)))

(declare-fun b!514025 () Bool)

(assert (=> b!514025 (= e!300163 e!300161)))

(declare-fun lt!235377 () (_ BitVec 64))

(declare-fun c!60228 () Bool)

(assert (=> b!514025 (= c!60228 (or (= lt!235377 (select (store (arr!15839 a!3235) i!1204 k!2280) j!176)) (= (bvadd lt!235377 lt!235377) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!514026 () Bool)

(assert (=> b!514026 (and (bvsge (index!19442 lt!235376) #b00000000000000000000000000000000) (bvslt (index!19442 lt!235376) (size!16203 (array!32940 (store (arr!15839 a!3235) i!1204 k!2280) (size!16203 a!3235)))))))

(declare-fun res!314140 () Bool)

(assert (=> b!514026 (= res!314140 (= (select (arr!15839 (array!32940 (store (arr!15839 a!3235) i!1204 k!2280) (size!16203 a!3235))) (index!19442 lt!235376)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!514026 (=> res!314140 e!300162)))

(declare-fun b!514022 () Bool)

(assert (=> b!514022 (= e!300165 e!300164)))

(declare-fun res!314139 () Bool)

(assert (=> b!514022 (= res!314139 (and (is-Intermediate!4313 lt!235376) (not (undefined!5125 lt!235376)) (bvslt (x!48421 lt!235376) #b01111111111111111111111111111110) (bvsge (x!48421 lt!235376) #b00000000000000000000000000000000) (bvsge (x!48421 lt!235376) #b00000000000000000000000000000000)))))

(assert (=> b!514022 (=> (not res!314139) (not e!300164))))

(declare-fun d!79197 () Bool)

(assert (=> d!79197 e!300165))

(declare-fun c!60227 () Bool)

(assert (=> d!79197 (= c!60227 (and (is-Intermediate!4313 lt!235376) (undefined!5125 lt!235376)))))

(assert (=> d!79197 (= lt!235376 e!300163)))

(declare-fun c!60226 () Bool)

(assert (=> d!79197 (= c!60226 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!79197 (= lt!235377 (select (arr!15839 (array!32940 (store (arr!15839 a!3235) i!1204 k!2280) (size!16203 a!3235))) lt!235274))))

(assert (=> d!79197 (validMask!0 mask!3524)))

(assert (=> d!79197 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235274 (select (store (arr!15839 a!3235) i!1204 k!2280) j!176) (array!32940 (store (arr!15839 a!3235) i!1204 k!2280) (size!16203 a!3235)) mask!3524) lt!235376)))

(assert (= (and d!79197 c!60226) b!514020))

(assert (= (and d!79197 (not c!60226)) b!514025))

(assert (= (and b!514025 c!60228) b!514021))

(assert (= (and b!514025 (not c!60228)) b!514023))

(assert (= (and d!79197 c!60227) b!514019))

(assert (= (and d!79197 (not c!60227)) b!514022))

(assert (= (and b!514022 res!314139) b!514024))

(assert (= (and b!514024 (not res!314138)) b!514026))

(assert (= (and b!514026 (not res!314140)) b!514018))

(declare-fun m!495491 () Bool)

(assert (=> d!79197 m!495491))

(assert (=> d!79197 m!495341))

(declare-fun m!495493 () Bool)

(assert (=> b!514024 m!495493))

(assert (=> b!514018 m!495493))

(assert (=> b!514026 m!495493))

(declare-fun m!495495 () Bool)

(assert (=> b!514023 m!495495))

(assert (=> b!514023 m!495495))

(assert (=> b!514023 m!495351))

(declare-fun m!495497 () Bool)

(assert (=> b!514023 m!495497))

(assert (=> b!513786 d!79197))

(declare-fun d!79199 () Bool)

(assert (=> d!79199 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!235385 () Unit!15876)

(declare-fun choose!38 (array!32939 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15876)

(assert (=> d!79199 (= lt!235385 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!79199 (validMask!0 mask!3524)))

(assert (=> d!79199 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!235385)))

(declare-fun bs!16258 () Bool)

(assert (= bs!16258 d!79199))

(assert (=> bs!16258 m!495361))

(declare-fun m!495513 () Bool)

(assert (=> bs!16258 m!495513))

(assert (=> bs!16258 m!495341))

(assert (=> b!513786 d!79199))

(declare-fun d!79205 () Bool)

(declare-fun lt!235389 () (_ BitVec 32))

(declare-fun lt!235388 () (_ BitVec 32))

(assert (=> d!79205 (= lt!235389 (bvmul (bvxor lt!235388 (bvlshr lt!235388 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79205 (= lt!235388 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15839 a!3235) i!1204 k!2280) j!176) (bvlshr (select (store (arr!15839 a!3235) i!1204 k!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79205 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!314110 (let ((h!10938 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15839 a!3235) i!1204 k!2280) j!176) (bvlshr (select (store (arr!15839 a!3235) i!1204 k!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48426 (bvmul (bvxor h!10938 (bvlshr h!10938 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48426 (bvlshr x!48426 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!314110 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!314110 #b00000000000000000000000000000000))))))

(assert (=> d!79205 (= (toIndex!0 (select (store (arr!15839 a!3235) i!1204 k!2280) j!176) mask!3524) (bvand (bvxor lt!235389 (bvlshr lt!235389 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!513786 d!79205))

(declare-fun b!514049 () Bool)

(declare-fun e!300179 () Bool)

(declare-fun e!300180 () Bool)

(assert (=> b!514049 (= e!300179 e!300180)))

(declare-fun lt!235390 () (_ BitVec 64))

(assert (=> b!514049 (= lt!235390 (select (arr!15839 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!235391 () Unit!15876)

(assert (=> b!514049 (= lt!235391 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!235390 #b00000000000000000000000000000000))))

(assert (=> b!514049 (arrayContainsKey!0 a!3235 lt!235390 #b00000000000000000000000000000000)))

(declare-fun lt!235392 () Unit!15876)

(assert (=> b!514049 (= lt!235392 lt!235391)))

(declare-fun res!314149 () Bool)

(assert (=> b!514049 (= res!314149 (= (seekEntryOrOpen!0 (select (arr!15839 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4313 #b00000000000000000000000000000000)))))

(assert (=> b!514049 (=> (not res!314149) (not e!300180))))

(declare-fun bm!31589 () Bool)

(declare-fun call!31592 () Bool)

(assert (=> bm!31589 (= call!31592 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!514050 () Bool)

(assert (=> b!514050 (= e!300180 call!31592)))

(declare-fun d!79207 () Bool)

(declare-fun res!314150 () Bool)

(declare-fun e!300181 () Bool)

(assert (=> d!79207 (=> res!314150 e!300181)))

(assert (=> d!79207 (= res!314150 (bvsge #b00000000000000000000000000000000 (size!16203 a!3235)))))

(assert (=> d!79207 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!300181)))

(declare-fun b!514051 () Bool)

(assert (=> b!514051 (= e!300181 e!300179)))

(declare-fun c!60236 () Bool)

(assert (=> b!514051 (= c!60236 (validKeyInArray!0 (select (arr!15839 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!514052 () Bool)

(assert (=> b!514052 (= e!300179 call!31592)))

(assert (= (and d!79207 (not res!314150)) b!514051))

(assert (= (and b!514051 c!60236) b!514049))

(assert (= (and b!514051 (not c!60236)) b!514052))

(assert (= (and b!514049 res!314149) b!514050))

(assert (= (or b!514050 b!514052) bm!31589))

(declare-fun m!495519 () Bool)

(assert (=> b!514049 m!495519))

(declare-fun m!495523 () Bool)

(assert (=> b!514049 m!495523))

(declare-fun m!495525 () Bool)

(assert (=> b!514049 m!495525))

(assert (=> b!514049 m!495519))

(declare-fun m!495529 () Bool)

(assert (=> b!514049 m!495529))

(declare-fun m!495531 () Bool)

(assert (=> bm!31589 m!495531))

(assert (=> b!514051 m!495519))

(assert (=> b!514051 m!495519))

(declare-fun m!495533 () Bool)

(assert (=> b!514051 m!495533))

(assert (=> b!513788 d!79207))

(declare-fun d!79211 () Bool)

(declare-fun lt!235395 () SeekEntryResult!4313)

(assert (=> d!79211 (and (or (is-Undefined!4313 lt!235395) (not (is-Found!4313 lt!235395)) (and (bvsge (index!19441 lt!235395) #b00000000000000000000000000000000) (bvslt (index!19441 lt!235395) (size!16203 a!3235)))) (or (is-Undefined!4313 lt!235395) (is-Found!4313 lt!235395) (not (is-MissingZero!4313 lt!235395)) (and (bvsge (index!19440 lt!235395) #b00000000000000000000000000000000) (bvslt (index!19440 lt!235395) (size!16203 a!3235)))) (or (is-Undefined!4313 lt!235395) (is-Found!4313 lt!235395) (is-MissingZero!4313 lt!235395) (not (is-MissingVacant!4313 lt!235395)) (and (bvsge (index!19443 lt!235395) #b00000000000000000000000000000000) (bvslt (index!19443 lt!235395) (size!16203 a!3235)))) (or (is-Undefined!4313 lt!235395) (ite (is-Found!4313 lt!235395) (= (select (arr!15839 a!3235) (index!19441 lt!235395)) k!2280) (ite (is-MissingZero!4313 lt!235395) (= (select (arr!15839 a!3235) (index!19440 lt!235395)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4313 lt!235395) (= (select (arr!15839 a!3235) (index!19443 lt!235395)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!300182 () SeekEntryResult!4313)

(assert (=> d!79211 (= lt!235395 e!300182)))

(declare-fun c!60237 () Bool)

(declare-fun lt!235393 () SeekEntryResult!4313)

(assert (=> d!79211 (= c!60237 (and (is-Intermediate!4313 lt!235393) (undefined!5125 lt!235393)))))

(assert (=> d!79211 (= lt!235393 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!79211 (validMask!0 mask!3524)))

(assert (=> d!79211 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!235395)))

(declare-fun b!514053 () Bool)

(declare-fun c!60239 () Bool)

(declare-fun lt!235394 () (_ BitVec 64))

(assert (=> b!514053 (= c!60239 (= lt!235394 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!300183 () SeekEntryResult!4313)

(declare-fun e!300184 () SeekEntryResult!4313)

(assert (=> b!514053 (= e!300183 e!300184)))

(declare-fun b!514054 () Bool)

(assert (=> b!514054 (= e!300182 e!300183)))

(assert (=> b!514054 (= lt!235394 (select (arr!15839 a!3235) (index!19442 lt!235393)))))

(declare-fun c!60238 () Bool)

(assert (=> b!514054 (= c!60238 (= lt!235394 k!2280))))

(declare-fun b!514055 () Bool)

(assert (=> b!514055 (= e!300184 (MissingZero!4313 (index!19442 lt!235393)))))

(declare-fun b!514056 () Bool)

(assert (=> b!514056 (= e!300182 Undefined!4313)))

(declare-fun b!514057 () Bool)

(assert (=> b!514057 (= e!300183 (Found!4313 (index!19442 lt!235393)))))

(declare-fun b!514058 () Bool)

(assert (=> b!514058 (= e!300184 (seekKeyOrZeroReturnVacant!0 (x!48421 lt!235393) (index!19442 lt!235393) (index!19442 lt!235393) k!2280 a!3235 mask!3524))))

(assert (= (and d!79211 c!60237) b!514056))

(assert (= (and d!79211 (not c!60237)) b!514054))

(assert (= (and b!514054 c!60238) b!514057))

(assert (= (and b!514054 (not c!60238)) b!514053))

(assert (= (and b!514053 c!60239) b!514055))

(assert (= (and b!514053 (not c!60239)) b!514058))

(declare-fun m!495535 () Bool)

(assert (=> d!79211 m!495535))

(declare-fun m!495537 () Bool)

(assert (=> d!79211 m!495537))

(declare-fun m!495539 () Bool)

(assert (=> d!79211 m!495539))

(declare-fun m!495541 () Bool)

(assert (=> d!79211 m!495541))

(assert (=> d!79211 m!495539))

(declare-fun m!495543 () Bool)

(assert (=> d!79211 m!495543))

(assert (=> d!79211 m!495341))

(declare-fun m!495545 () Bool)

(assert (=> b!514054 m!495545))

(declare-fun m!495547 () Bool)

(assert (=> b!514058 m!495547))

(assert (=> b!513793 d!79211))

(declare-fun d!79213 () Bool)

(declare-fun res!314155 () Bool)

(declare-fun e!300189 () Bool)

(assert (=> d!79213 (=> res!314155 e!300189)))

(assert (=> d!79213 (= res!314155 (= (select (arr!15839 a!3235) #b00000000000000000000000000000000) k!2280))))

(assert (=> d!79213 (= (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000) e!300189)))

(declare-fun b!514063 () Bool)

(declare-fun e!300190 () Bool)

(assert (=> b!514063 (= e!300189 e!300190)))

(declare-fun res!314156 () Bool)

(assert (=> b!514063 (=> (not res!314156) (not e!300190))))

(assert (=> b!514063 (= res!314156 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16203 a!3235)))))

(declare-fun b!514064 () Bool)

(assert (=> b!514064 (= e!300190 (arrayContainsKey!0 a!3235 k!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!79213 (not res!314155)) b!514063))

(assert (= (and b!514063 res!314156) b!514064))

(assert (=> d!79213 m!495519))

(declare-fun m!495549 () Bool)

(assert (=> b!514064 m!495549))

(assert (=> b!513787 d!79213))

(declare-fun d!79215 () Bool)

(declare-fun res!314165 () Bool)

(declare-fun e!300202 () Bool)

(assert (=> d!79215 (=> res!314165 e!300202)))

(assert (=> d!79215 (= res!314165 (bvsge #b00000000000000000000000000000000 (size!16203 a!3235)))))

(assert (=> d!79215 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10047) e!300202)))

(declare-fun b!514075 () Bool)

(declare-fun e!300200 () Bool)

(declare-fun call!31595 () Bool)

(assert (=> b!514075 (= e!300200 call!31595)))

(declare-fun b!514076 () Bool)

(declare-fun e!300199 () Bool)

(assert (=> b!514076 (= e!300202 e!300199)))

(declare-fun res!314163 () Bool)

(assert (=> b!514076 (=> (not res!314163) (not e!300199))))

(declare-fun e!300201 () Bool)

(assert (=> b!514076 (= res!314163 (not e!300201))))

(declare-fun res!314164 () Bool)

(assert (=> b!514076 (=> (not res!314164) (not e!300201))))

(assert (=> b!514076 (= res!314164 (validKeyInArray!0 (select (arr!15839 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!514077 () Bool)

(assert (=> b!514077 (= e!300200 call!31595)))

(declare-fun bm!31592 () Bool)

(declare-fun c!60242 () Bool)

(assert (=> bm!31592 (= call!31595 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!60242 (Cons!10046 (select (arr!15839 a!3235) #b00000000000000000000000000000000) Nil!10047) Nil!10047)))))

(declare-fun b!514078 () Bool)

(assert (=> b!514078 (= e!300199 e!300200)))

(assert (=> b!514078 (= c!60242 (validKeyInArray!0 (select (arr!15839 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!514079 () Bool)

(declare-fun contains!2741 (List!10050 (_ BitVec 64)) Bool)

(assert (=> b!514079 (= e!300201 (contains!2741 Nil!10047 (select (arr!15839 a!3235) #b00000000000000000000000000000000)))))

(assert (= (and d!79215 (not res!314165)) b!514076))

(assert (= (and b!514076 res!314164) b!514079))

(assert (= (and b!514076 res!314163) b!514078))

(assert (= (and b!514078 c!60242) b!514075))

(assert (= (and b!514078 (not c!60242)) b!514077))

(assert (= (or b!514075 b!514077) bm!31592))

(assert (=> b!514076 m!495519))

(assert (=> b!514076 m!495519))

(assert (=> b!514076 m!495533))

(assert (=> bm!31592 m!495519))

(declare-fun m!495553 () Bool)

(assert (=> bm!31592 m!495553))

(assert (=> b!514078 m!495519))

(assert (=> b!514078 m!495519))

(assert (=> b!514078 m!495533))

(assert (=> b!514079 m!495519))

(assert (=> b!514079 m!495519))

(declare-fun m!495555 () Bool)

(assert (=> b!514079 m!495555))

(assert (=> b!513784 d!79215))

(declare-fun d!79221 () Bool)

(assert (=> d!79221 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!513794 d!79221))

(declare-fun d!79223 () Bool)

(assert (=> d!79223 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!46496 d!79223))

(declare-fun d!79231 () Bool)

(assert (=> d!79231 (= (array_inv!11613 a!3235) (bvsge (size!16203 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!46496 d!79231))

(push 1)

(assert (not d!79157))

(assert (not b!513957))

(assert (not d!79199))

(assert (not b!514008))

(assert (not b!514049))

(assert (not b!514064))

(assert (not b!514058))

(assert (not bm!31589))

(assert (not d!79163))

(assert (not b!514076))

(assert (not b!513872))

(assert (not b!514006))

(assert (not b!514078))

(assert (not bm!31587))

(assert (not b!514051))

(assert (not d!79211))

(assert (not b!514079))

(assert (not b!514023))

(assert (not bm!31592))

(assert (not d!79197))

(check-sat)

(pop 1)

(push 1)

(check-sat)

